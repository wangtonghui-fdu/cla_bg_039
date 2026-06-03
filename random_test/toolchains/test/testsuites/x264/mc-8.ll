; ModuleID = 'common/mc.c'
source_filename = "common/mc.c"
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

%struct.x264_weight_t = type { [8 x i16], [8 x i16], i32, i32, i32, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** }
%struct.x264_t = type { %struct.x264_param_t, i8*, [129 x %struct.x264_t*], [16 x %struct.x264_t*], i32, i32, i32, i32, i32, i32, %struct.x264_threadpool_t*, %struct.x264_threadpool_t*, i32, i32, %struct.anon.5, i8*, i32, %struct.x264_t*, i32, i32, i32, i32, i32, i32, i64, i32, i64, i64, i64, i64, i64, i64, i64, i32, i64, i32, [4 x [16 x i32]*], [4 x [64 x i32]*], [4 x [16 x i32]*], [4 x [64 x i32]*], [4 x [16 x i16]*], [4 x [64 x i16]*], [4 x [16 x i16]*], [4 x [64 x i16]*], [4 x [16 x i16]*], [4 x [64 x i16]*], [4 x [64 x i16]]*, [70 x i16*], [70 x [4 x i16*]], %struct.anon.6*, i8*, %struct.x264_slice_header_t, [1 x %struct.x264_sps_t], [1 x %struct.x264_pps_t], i32, [4 x i8], %struct.x264_slice_header_t, [48 x i8], %struct.x264_cabac_t, %struct.anon.12, %struct.x264_frame*, %struct.x264_frame*, [2 x i32], [2 x [19 x %struct.x264_frame*]], [2 x %struct.x264_frame*], [2 x i32], i32, i32, i64, %struct.anon.13, %struct.anon.14, %struct.x264_ratecontrol_t*, %struct.anon.17, [64 x i16]*, [64 x i32]*, i32*, [28 x i8], [4 x [64 x i16]], [2 x [4 x [64 x i32]]], [2 x [4 x i32]], [7 x i8], i8*, i8*, [5 x [3 x i8*]], [2 x [2 x [8 x [4 x i8]]]*], [7 x void (i8*)*], [12 x void (i8*, i8*)*], [12 x void (i8*)*], [7 x void (i8*)*], [7 x void (i8*)*], [7 x void (i8*)*], void (i8*, i8*, i32, i32)*, %struct.x264_pixel_function_t, %struct.x264_mc_functions_t, %struct.x264_dct_function_t, %struct.x264_zigzag_function_t, %struct.x264_zigzag_function_t, %struct.x264_zigzag_function_t, %struct.x264_quant_function_t, %struct.x264_deblock_function_t, %struct.x264_bitstream_function_t, %struct.x264_lookahead_t* }
%struct.x264_param_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, [16 x i8], [16 x i8], [16 x i8], [16 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], void (i8*, i32, i8*, i8*)*, i8*, i32, i32, i8*, %struct.anon.0, %struct.anon.1, %struct.anon.2, i32, %struct.anon.3, %struct.anon.4, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, void (i8*)*, void (%struct.x264_t*, %struct.x264_nal_t*, i8*)*, i8* }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.0 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, i32, i32, i32, [2 x i32], i32, i32 }
%struct.anon.1 = type { i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, float, float, float, i32, i32, float, i32, i32, i32, i8*, i32, i8*, float, float, float, %struct.x264_zone_t*, i32, i8* }
%struct.x264_zone_t = type { i32, i32, i32, i32, float, %struct.x264_param_t* }
%struct.anon.2 = type { i32, i32, i32, i32 }
%struct.anon.3 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.anon.4 = type { i32, i32, i32 }
%struct.x264_nal_t = type { i32, i32, i32, i32, i32, i32, i8*, i32 }
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
%struct.anon.11 = type { i32, i32 }
%struct.x264_cabac_t = type { i32, i32, i32, i32, i8*, i8*, i8*, [36 x i8], i32, [1024 x i8], [12 x i8], [48 x i8] }
%struct.anon.12 = type { %struct.x264_frame**, [2 x %struct.x264_frame**], %struct.x264_frame**, [18 x %struct.x264_frame*], i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], i64, i64, i32, i32 }
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
%struct.x264_frame = type { i8*, i32, [2 x i32], i32, i32, i32, i64, i64, i64, i64, float, i64, i64, i64, %struct.x264_param_t*, i32, i32, i64, i32, i32, i32, i32, i8, i8, i8, float, float, float, i32, i32, i32, [3 x i32], [3 x i32], [3 x i32], i32, i32, i32, [3 x i8*], [3 x i8*], [3 x [4 x i8*]], [3 x [4 x i8*]], [4 x i8*], i16*, [4 x i8*], [4 x i8*], i8*, [12 x i8], [16 x [3 x %struct.x264_weight_t]], [16 x i8*], i32, %struct.x264_frame*, i8*, i8*, [2 x [2 x i16]*], [2 x i16]*, [2 x [17 x [2 x i16]*]], i8*, i8*, [18 x [18 x i16*]], [2 x [17 x i32*]], [2 x i8*], [2 x i32], [2 x [16 x i32]], [2 x i16], [18 x [18 x i32]], [18 x [18 x i32]], i32, [18 x i32], [18 x [18 x i32*]], i32*, i32*, float*, float*, float*, float*, i32, i16*, i16*, i16*, i32, [18 x float], [3 x i32], [3 x i64], %struct.x264_hrd_t, [251 x i8], [251 x i32], [251 x double], i64, i64, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, %struct.x264_sei_t, i8*, i8*, void (i8*)*, [12 x i8] }
%struct.x264_hrd_t = type { double, double, double, double }
%struct.x264_sei_t = type { i32, %struct.x264_sei_payload_t*, void (i8*)* }
%struct.x264_sei_payload_t = type { i32, i32, i8* }

@mc_weight_wtab = internal global [6 x void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*] [void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)* @mc_weight_w2, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)* @mc_weight_w4, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)* @mc_weight_w8, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)* @mc_weight_w12, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)* @mc_weight_w16, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)* @mc_weight_w20], align 4
@x264_hpel_ref0 = external dso_local local_unnamed_addr constant [16 x i8], align 1
@x264_hpel_ref1 = external dso_local local_unnamed_addr constant [16 x i8], align 1

; Function Attrs: nounwind
define hidden void @x264_8_plane_copy_c(i8* nocapture %dst, i32 %i_dst, i8* nocapture readonly %src, i32 %i_src, i32 %w, i32 %h) #0 {
entry:
  %tobool4 = icmp eq i32 %h, 0
  br i1 %tobool4, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %h.addr.07 = phi i32 [ %dec, %while.body ], [ %h, %entry ]
  %dst.addr.06 = phi i8* [ %add.ptr, %while.body ], [ %dst, %entry ]
  %src.addr.05 = phi i8* [ %add.ptr1, %while.body ], [ %src, %entry ]
  %dec = add nsw i32 %h.addr.07, -1
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %dst.addr.06, i8* align 1 %src.addr.05, i32 %w, i1 false)
  %add.ptr = getelementptr inbounds i8, i8* %dst.addr.06, i32 %i_dst
  %add.ptr1 = getelementptr inbounds i8, i8* %src.addr.05, i32 %i_src
  %tobool = icmp eq i32 %dec, 0
  br i1 %tobool, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #1

; Function Attrs: nofree norecurse nounwind
define hidden void @x264_8_plane_copy_swap_c(i8* nocapture %dst, i32 %i_dst, i8* nocapture readonly %src, i32 %i_src, i32 %w, i32 %h) #2 {
entry:
  %cmp27 = icmp sgt i32 %h, 0
  br i1 %cmp27, label %for.cond1.preheader.lr.ph, label %for.cond.cleanup

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %mul = shl nsw i32 %w, 1
  %cmp225 = icmp sgt i32 %w, 0
  br i1 %cmp225, label %for.cond1.preheader.us, label %for.cond.cleanup

for.cond1.preheader.us:                           ; preds = %for.cond1.preheader.lr.ph, %for.cond1.for.cond.cleanup3_crit_edge.us
  %y.030.us = phi i32 [ %inc.us, %for.cond1.for.cond.cleanup3_crit_edge.us ], [ 0, %for.cond1.preheader.lr.ph ]
  %dst.addr.029.us = phi i8* [ %add.ptr.us, %for.cond1.for.cond.cleanup3_crit_edge.us ], [ %dst, %for.cond1.preheader.lr.ph ]
  %src.addr.028.us = phi i8* [ %add.ptr11.us, %for.cond1.for.cond.cleanup3_crit_edge.us ], [ %src, %for.cond1.preheader.lr.ph ]
  br label %for.body4.us

for.body4.us:                                     ; preds = %for.cond1.preheader.us, %for.body4.us
  %x.026.us = phi i32 [ 0, %for.cond1.preheader.us ], [ %add9.us, %for.body4.us ]
  %add.us = or i32 %x.026.us, 1
  %arrayidx.us = getelementptr inbounds i8, i8* %src.addr.028.us, i32 %add.us
  %0 = load i8, i8* %arrayidx.us, align 1, !tbaa !2
  %arrayidx5.us = getelementptr inbounds i8, i8* %dst.addr.029.us, i32 %x.026.us
  store i8 %0, i8* %arrayidx5.us, align 1, !tbaa !2
  %arrayidx6.us = getelementptr inbounds i8, i8* %src.addr.028.us, i32 %x.026.us
  %1 = load i8, i8* %arrayidx6.us, align 1, !tbaa !2
  %arrayidx8.us = getelementptr inbounds i8, i8* %dst.addr.029.us, i32 %add.us
  store i8 %1, i8* %arrayidx8.us, align 1, !tbaa !2
  %add9.us = add nuw nsw i32 %x.026.us, 2
  %cmp2.us = icmp slt i32 %add9.us, %mul
  br i1 %cmp2.us, label %for.body4.us, label %for.cond1.for.cond.cleanup3_crit_edge.us

for.cond1.for.cond.cleanup3_crit_edge.us:         ; preds = %for.body4.us
  %inc.us = add nuw nsw i32 %y.030.us, 1
  %add.ptr.us = getelementptr inbounds i8, i8* %dst.addr.029.us, i32 %i_dst
  %add.ptr11.us = getelementptr inbounds i8, i8* %src.addr.028.us, i32 %i_src
  %exitcond = icmp eq i32 %inc.us, %h
  br i1 %exitcond, label %for.cond.cleanup, label %for.cond1.preheader.us

for.cond.cleanup:                                 ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us, %for.cond1.preheader.lr.ph, %entry
  ret void
}

; Function Attrs: nofree norecurse nounwind
define hidden void @x264_8_plane_copy_interleave_c(i8* nocapture %dst, i32 %i_dst, i8* nocapture readonly %srcu, i32 %i_srcu, i8* nocapture readonly %srcv, i32 %i_srcv, i32 %w, i32 %h) #2 {
entry:
  %cmp28 = icmp sgt i32 %h, 0
  %cmp226 = icmp sgt i32 %w, 0
  %or.cond = and i1 %cmp28, %cmp226
  br i1 %or.cond, label %for.cond1.preheader.us, label %for.cond.cleanup

for.cond1.preheader.us:                           ; preds = %entry, %for.cond1.for.cond.cleanup3_crit_edge.us
  %y.032.us = phi i32 [ %inc10.us, %for.cond1.for.cond.cleanup3_crit_edge.us ], [ 0, %entry ]
  %dst.addr.031.us = phi i8* [ %add.ptr.us, %for.cond1.for.cond.cleanup3_crit_edge.us ], [ %dst, %entry ]
  %srcu.addr.030.us = phi i8* [ %add.ptr11.us, %for.cond1.for.cond.cleanup3_crit_edge.us ], [ %srcu, %entry ]
  %srcv.addr.029.us = phi i8* [ %add.ptr12.us, %for.cond1.for.cond.cleanup3_crit_edge.us ], [ %srcv, %entry ]
  br label %for.body4.us

for.body4.us:                                     ; preds = %for.body4.us, %for.cond1.preheader.us
  %x.027.us = phi i32 [ 0, %for.cond1.preheader.us ], [ %inc.us, %for.body4.us ]
  %arrayidx.us = getelementptr inbounds i8, i8* %srcu.addr.030.us, i32 %x.027.us
  %0 = load i8, i8* %arrayidx.us, align 1, !tbaa !2
  %mul.us = shl nuw nsw i32 %x.027.us, 1
  %arrayidx5.us = getelementptr inbounds i8, i8* %dst.addr.031.us, i32 %mul.us
  store i8 %0, i8* %arrayidx5.us, align 1, !tbaa !2
  %arrayidx6.us = getelementptr inbounds i8, i8* %srcv.addr.029.us, i32 %x.027.us
  %1 = load i8, i8* %arrayidx6.us, align 1, !tbaa !2
  %add.us = or i32 %mul.us, 1
  %arrayidx8.us = getelementptr inbounds i8, i8* %dst.addr.031.us, i32 %add.us
  store i8 %1, i8* %arrayidx8.us, align 1, !tbaa !2
  %inc.us = add nuw nsw i32 %x.027.us, 1
  %exitcond = icmp eq i32 %inc.us, %w
  br i1 %exitcond, label %for.cond1.for.cond.cleanup3_crit_edge.us, label %for.body4.us

for.cond1.for.cond.cleanup3_crit_edge.us:         ; preds = %for.body4.us
  %inc10.us = add nuw nsw i32 %y.032.us, 1
  %add.ptr.us = getelementptr inbounds i8, i8* %dst.addr.031.us, i32 %i_dst
  %add.ptr11.us = getelementptr inbounds i8, i8* %srcu.addr.030.us, i32 %i_srcu
  %add.ptr12.us = getelementptr inbounds i8, i8* %srcv.addr.029.us, i32 %i_srcv
  %exitcond34 = icmp eq i32 %inc10.us, %h
  br i1 %exitcond34, label %for.cond.cleanup, label %for.cond1.preheader.us

for.cond.cleanup:                                 ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us, %entry
  ret void
}

; Function Attrs: nofree norecurse nounwind
define hidden void @x264_8_plane_copy_deinterleave_c(i8* nocapture %dsta, i32 %i_dsta, i8* nocapture %dstb, i32 %i_dstb, i8* nocapture readonly %src, i32 %i_src, i32 %w, i32 %h) #2 {
entry:
  %cmp28 = icmp sgt i32 %h, 0
  %cmp226 = icmp sgt i32 %w, 0
  %or.cond = and i1 %cmp28, %cmp226
  br i1 %or.cond, label %for.cond1.preheader.us, label %for.cond.cleanup

for.cond1.preheader.us:                           ; preds = %entry, %for.cond1.for.cond.cleanup3_crit_edge.us
  %y.032.us = phi i32 [ %inc10.us, %for.cond1.for.cond.cleanup3_crit_edge.us ], [ 0, %entry ]
  %dsta.addr.031.us = phi i8* [ %add.ptr.us, %for.cond1.for.cond.cleanup3_crit_edge.us ], [ %dsta, %entry ]
  %dstb.addr.030.us = phi i8* [ %add.ptr11.us, %for.cond1.for.cond.cleanup3_crit_edge.us ], [ %dstb, %entry ]
  %src.addr.029.us = phi i8* [ %add.ptr12.us, %for.cond1.for.cond.cleanup3_crit_edge.us ], [ %src, %entry ]
  br label %for.body4.us

for.body4.us:                                     ; preds = %for.body4.us, %for.cond1.preheader.us
  %x.027.us = phi i32 [ 0, %for.cond1.preheader.us ], [ %inc.us, %for.body4.us ]
  %mul.us = shl nuw nsw i32 %x.027.us, 1
  %arrayidx.us = getelementptr inbounds i8, i8* %src.addr.029.us, i32 %mul.us
  %0 = load i8, i8* %arrayidx.us, align 1, !tbaa !2
  %arrayidx5.us = getelementptr inbounds i8, i8* %dsta.addr.031.us, i32 %x.027.us
  store i8 %0, i8* %arrayidx5.us, align 1, !tbaa !2
  %add.us = or i32 %mul.us, 1
  %arrayidx7.us = getelementptr inbounds i8, i8* %src.addr.029.us, i32 %add.us
  %1 = load i8, i8* %arrayidx7.us, align 1, !tbaa !2
  %arrayidx8.us = getelementptr inbounds i8, i8* %dstb.addr.030.us, i32 %x.027.us
  store i8 %1, i8* %arrayidx8.us, align 1, !tbaa !2
  %inc.us = add nuw nsw i32 %x.027.us, 1
  %exitcond = icmp eq i32 %inc.us, %w
  br i1 %exitcond, label %for.cond1.for.cond.cleanup3_crit_edge.us, label %for.body4.us

for.cond1.for.cond.cleanup3_crit_edge.us:         ; preds = %for.body4.us
  %inc10.us = add nuw nsw i32 %y.032.us, 1
  %add.ptr.us = getelementptr inbounds i8, i8* %dsta.addr.031.us, i32 %i_dsta
  %add.ptr11.us = getelementptr inbounds i8, i8* %dstb.addr.030.us, i32 %i_dstb
  %add.ptr12.us = getelementptr inbounds i8, i8* %src.addr.029.us, i32 %i_src
  %exitcond34 = icmp eq i32 %inc10.us, %h
  br i1 %exitcond34, label %for.cond.cleanup, label %for.cond1.preheader.us

for.cond.cleanup:                                 ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us, %entry
  ret void
}

; Function Attrs: nounwind
define hidden void @x264_8_frame_init_lowres(%struct.x264_t* nocapture readonly %h, %struct.x264_frame* %frame) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 37, i32 0
  %0 = load i8*, i8** %arrayidx, align 4, !tbaa !5
  %arrayidx2 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 31, i32 0
  %1 = load i32, i32* %arrayidx2, align 4, !tbaa !7
  %arrayidx3 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 33, i32 0
  %2 = load i32, i32* %arrayidx3, align 4, !tbaa !7
  %arrayidx5 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 32, i32 0
  %3 = load i32, i32* %arrayidx5, align 16, !tbaa !7
  %cmp131 = icmp sgt i32 %2, 0
  br i1 %cmp131, label %for.body.lver.check, label %for.cond.cleanup

for.body.lver.check:                              ; preds = %entry
  %ident.check = icmp eq i32 %1, 1
  br i1 %ident.check, label %for.body.ph, label %for.body.lver.orig

for.body.lver.orig:                               ; preds = %for.body.lver.check, %for.body.lver.orig
  %y.0132.lver.orig = phi i32 [ %inc.lver.orig, %for.body.lver.orig ], [ 0, %for.body.lver.check ]
  %mul.lver.orig = mul nsw i32 %y.0132.lver.orig, %1
  %sub.lver.orig = add i32 %mul.lver.orig, %3
  %add.lver.orig = add i32 %sub.lver.orig, -1
  %arrayidx6.lver.orig = getelementptr inbounds i8, i8* %0, i32 %add.lver.orig
  %4 = load i8, i8* %arrayidx6.lver.orig, align 1, !tbaa !2
  %arrayidx9.lver.orig = getelementptr inbounds i8, i8* %0, i32 %sub.lver.orig
  store i8 %4, i8* %arrayidx9.lver.orig, align 1, !tbaa !2
  %inc.lver.orig = add nuw nsw i32 %y.0132.lver.orig, 1
  %exitcond136.lver.orig = icmp eq i32 %inc.lver.orig, %2
  br i1 %exitcond136.lver.orig, label %for.cond.cleanup, label %for.body.lver.orig

for.body.ph:                                      ; preds = %for.body.lver.check
  %5 = add i32 %3, -1
  %scevgep = getelementptr i8, i8* %0, i32 %5
  %load_initial = load i8, i8* %scevgep, align 1
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body.lver.orig, %for.body, %entry
  %mul10 = mul nsw i32 %2, %1
  %add.ptr = getelementptr inbounds i8, i8* %0, i32 %mul10
  %sub11 = add nsw i32 %2, -1
  %mul12 = mul nsw i32 %sub11, %1
  %add.ptr13 = getelementptr inbounds i8, i8* %0, i32 %mul12
  %add14 = add nsw i32 %3, 1
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %add.ptr, i8* align 1 %add.ptr13, i32 %add14, i1 false)
  %frame_init_lowres_core = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 93, i32 28
  %6 = load void (i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32)*, void (i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32)** %frame_init_lowres_core, align 4, !tbaa !9
  %arrayidx16 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 41, i32 0
  %7 = load i8*, i8** %arrayidx16, align 4, !tbaa !5
  %arrayidx18 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 41, i32 1
  %8 = load i8*, i8** %arrayidx18, align 4, !tbaa !5
  %arrayidx20 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 41, i32 2
  %9 = load i8*, i8** %arrayidx20, align 4, !tbaa !5
  %arrayidx22 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 41, i32 3
  %10 = load i8*, i8** %arrayidx22, align 4, !tbaa !5
  %i_stride_lowres = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 34
  %11 = load i32, i32* %i_stride_lowres, align 8, !tbaa !39
  %i_width_lowres = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 35
  %12 = load i32, i32* %i_width_lowres, align 4, !tbaa !43
  %i_lines_lowres = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 36
  %13 = load i32, i32* %i_lines_lowres, align 16, !tbaa !44
  tail call void %6(i8* %0, i8* %7, i8* %8, i8* %9, i8* %10, i32 %1, i32 %11, i32 %12, i32 %13) #9
  tail call void @x264_8_frame_expand_border_lowres(%struct.x264_frame* %frame) #9
  %arraydecay = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 64, i32 0
  %14 = bitcast [18 x i32]* %arraydecay to i8*
  tail call void @llvm.memset.p0i8.i32(i8* nonnull align 8 dereferenceable(1296) %14, i8 -1, i32 1296, i1 false)
  %i_bframe = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 21
  %15 = load i32, i32* %i_bframe, align 4, !tbaa !45
  %cmp26128 = icmp sgt i32 %15, -2
  br i1 %cmp26128, label %for.cond29.preheader, label %for.cond.cleanup51

for.body:                                         ; preds = %for.body.ph, %for.body
  %y.0132 = phi i32 [ %inc, %for.body ], [ 0, %for.body.ph ]
  %mul = mul nsw i32 %y.0132, %1
  %sub = add i32 %mul, %3
  %arrayidx9 = getelementptr inbounds i8, i8* %0, i32 %sub
  store i8 %load_initial, i8* %arrayidx9, align 1, !tbaa !2
  %inc = add nuw nsw i32 %y.0132, 1
  %exitcond136 = icmp eq i32 %inc, %2
  br i1 %exitcond136, label %for.cond.cleanup, label %for.body

for.cond29.preheader:                             ; preds = %for.cond.cleanup, %for.cond.cleanup34
  %16 = phi i32 [ %18, %for.cond.cleanup34 ], [ %15, %for.cond.cleanup ]
  %y23.0129 = phi i32 [ %inc43, %for.cond.cleanup34 ], [ 0, %for.cond.cleanup ]
  %cmp33125 = icmp sgt i32 %16, -2
  br i1 %cmp33125, label %for.body35, label %for.cond.cleanup34

for.cond46.preheader:                             ; preds = %for.cond.cleanup34
  %cmp57120 = icmp slt i32 %18, 0
  br i1 %cmp57120, label %for.cond.cleanup51, label %for.cond54.preheader.preheader

for.cond54.preheader.preheader:                   ; preds = %for.cond46.preheader
  %tobool = icmp eq i32 %18, 0
  %17 = select i1 %tobool, i32 1, i32 2
  br label %for.cond54.preheader

for.cond.cleanup34:                               ; preds = %for.body35, %for.cond29.preheader
  %18 = phi i32 [ %16, %for.cond29.preheader ], [ %20, %for.body35 ]
  %inc43 = add nuw nsw i32 %y23.0129, 1
  %cmp26 = icmp sgt i32 %y23.0129, %18
  br i1 %cmp26, label %for.cond46.preheader, label %for.cond29.preheader

for.body35:                                       ; preds = %for.cond29.preheader, %for.body35
  %x.0126 = phi i32 [ %inc40, %for.body35 ], [ 0, %for.cond29.preheader ]
  %arrayidx37 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 68, i32 %y23.0129, i32 %x.0126
  %19 = load i32*, i32** %arrayidx37, align 4, !tbaa !5
  store i32 -1, i32* %19, align 4, !tbaa !7
  %inc40 = add nuw nsw i32 %x.0126, 1
  %20 = load i32, i32* %i_bframe, align 4, !tbaa !45
  %cmp33 = icmp sgt i32 %x.0126, %20
  br i1 %cmp33, label %for.cond.cleanup34, label %for.body35

for.cond54.preheader:                             ; preds = %for.cond.cleanup58, %for.cond54.preheader.preheader
  %y45.0122 = phi i32 [ %inc68, %for.cond.cleanup58 ], [ 0, %for.cond54.preheader.preheader ]
  br label %for.body59

for.cond.cleanup51:                               ; preds = %for.cond.cleanup58, %for.cond.cleanup, %for.cond46.preheader
  ret void

for.cond.cleanup58:                               ; preds = %for.body59
  %inc68 = add nuw nsw i32 %y45.0122, 1
  %exitcond135 = icmp eq i32 %inc68, %17
  br i1 %exitcond135, label %for.cond.cleanup51, label %for.cond54.preheader

for.body59:                                       ; preds = %for.body59, %for.cond54.preheader
  %x53.0121 = phi i32 [ 0, %for.cond54.preheader ], [ %inc65, %for.body59 ]
  %arrayidx61 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 55, i32 %y45.0122, i32 %x53.0121
  %21 = load [2 x i16]*, [2 x i16]** %arrayidx61, align 4, !tbaa !5
  %arrayidx63 = getelementptr inbounds [2 x i16], [2 x i16]* %21, i32 0, i32 0
  store i16 32767, i16* %arrayidx63, align 2, !tbaa !46
  %inc65 = add nuw i32 %x53.0121, 1
  %exitcond = icmp eq i32 %x53.0121, %18
  br i1 %exitcond, label %for.cond.cleanup58, label %for.body59
}

declare dso_local void @x264_8_frame_expand_border_lowres(%struct.x264_frame*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #1

; Function Attrs: nofree norecurse nounwind writeonly
define hidden void @x264_8_mc_init(i32 %cpu, %struct.x264_mc_functions_t* %pf, i32 %cpu_independent) local_unnamed_addr #4 {
entry:
  %mc_luma = getelementptr inbounds %struct.x264_mc_functions_t, %struct.x264_mc_functions_t* %pf, i32 0, i32 0
  store void (i8*, i32, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)* @mc_luma, void (i8*, i32, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)** %mc_luma, align 4, !tbaa !48
  %get_ref = getelementptr inbounds %struct.x264_mc_functions_t, %struct.x264_mc_functions_t* %pf, i32 0, i32 1
  store i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)* @get_ref, i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)** %get_ref, align 4, !tbaa !49
  %mc_chroma = getelementptr inbounds %struct.x264_mc_functions_t, %struct.x264_mc_functions_t* %pf, i32 0, i32 2
  store void (i8*, i8*, i32, i8*, i32, i32, i32, i32, i32)* @mc_chroma, void (i8*, i8*, i32, i8*, i32, i32, i32, i32, i32)** %mc_chroma, align 4, !tbaa !50
  %arrayidx = getelementptr inbounds %struct.x264_mc_functions_t, %struct.x264_mc_functions_t* %pf, i32 0, i32 3, i32 0
  store void (i8*, i32, i8*, i32, i8*, i32, i32)* @pixel_avg_16x16, void (i8*, i32, i8*, i32, i8*, i32, i32)** %arrayidx, align 4, !tbaa !5
  %arrayidx2 = getelementptr inbounds %struct.x264_mc_functions_t, %struct.x264_mc_functions_t* %pf, i32 0, i32 3, i32 1
  store void (i8*, i32, i8*, i32, i8*, i32, i32)* @pixel_avg_16x8, void (i8*, i32, i8*, i32, i8*, i32, i32)** %arrayidx2, align 4, !tbaa !5
  %arrayidx4 = getelementptr inbounds %struct.x264_mc_functions_t, %struct.x264_mc_functions_t* %pf, i32 0, i32 3, i32 2
  store void (i8*, i32, i8*, i32, i8*, i32, i32)* @pixel_avg_8x16, void (i8*, i32, i8*, i32, i8*, i32, i32)** %arrayidx4, align 4, !tbaa !5
  %arrayidx6 = getelementptr inbounds %struct.x264_mc_functions_t, %struct.x264_mc_functions_t* %pf, i32 0, i32 3, i32 3
  store void (i8*, i32, i8*, i32, i8*, i32, i32)* @pixel_avg_8x8, void (i8*, i32, i8*, i32, i8*, i32, i32)** %arrayidx6, align 4, !tbaa !5
  %arrayidx8 = getelementptr inbounds %struct.x264_mc_functions_t, %struct.x264_mc_functions_t* %pf, i32 0, i32 3, i32 4
  store void (i8*, i32, i8*, i32, i8*, i32, i32)* @pixel_avg_8x4, void (i8*, i32, i8*, i32, i8*, i32, i32)** %arrayidx8, align 4, !tbaa !5
  %arrayidx10 = getelementptr inbounds %struct.x264_mc_functions_t, %struct.x264_mc_functions_t* %pf, i32 0, i32 3, i32 7
  store void (i8*, i32, i8*, i32, i8*, i32, i32)* @pixel_avg_4x16, void (i8*, i32, i8*, i32, i8*, i32, i32)** %arrayidx10, align 4, !tbaa !5
  %arrayidx12 = getelementptr inbounds %struct.x264_mc_functions_t, %struct.x264_mc_functions_t* %pf, i32 0, i32 3, i32 5
  store void (i8*, i32, i8*, i32, i8*, i32, i32)* @pixel_avg_4x8, void (i8*, i32, i8*, i32, i8*, i32, i32)** %arrayidx12, align 4, !tbaa !5
  %arrayidx14 = getelementptr inbounds %struct.x264_mc_functions_t, %struct.x264_mc_functions_t* %pf, i32 0, i32 3, i32 6
  store void (i8*, i32, i8*, i32, i8*, i32, i32)* @pixel_avg_4x4, void (i8*, i32, i8*, i32, i8*, i32, i32)** %arrayidx14, align 4, !tbaa !5
  %arrayidx16 = getelementptr inbounds %struct.x264_mc_functions_t, %struct.x264_mc_functions_t* %pf, i32 0, i32 3, i32 8
  store void (i8*, i32, i8*, i32, i8*, i32, i32)* @pixel_avg_4x2, void (i8*, i32, i8*, i32, i8*, i32, i32)** %arrayidx16, align 4, !tbaa !5
  %arrayidx18 = getelementptr inbounds %struct.x264_mc_functions_t, %struct.x264_mc_functions_t* %pf, i32 0, i32 3, i32 9
  store void (i8*, i32, i8*, i32, i8*, i32, i32)* @pixel_avg_2x8, void (i8*, i32, i8*, i32, i8*, i32, i32)** %arrayidx18, align 4, !tbaa !5
  %arrayidx20 = getelementptr inbounds %struct.x264_mc_functions_t, %struct.x264_mc_functions_t* %pf, i32 0, i32 3, i32 10
  store void (i8*, i32, i8*, i32, i8*, i32, i32)* @pixel_avg_2x4, void (i8*, i32, i8*, i32, i8*, i32, i32)** %arrayidx20, align 4, !tbaa !5
  %arrayidx22 = getelementptr inbounds %struct.x264_mc_functions_t, %struct.x264_mc_functions_t* %pf, i32 0, i32 3, i32 11
  store void (i8*, i32, i8*, i32, i8*, i32, i32)* @pixel_avg_2x2, void (i8*, i32, i8*, i32, i8*, i32, i32)** %arrayidx22, align 4, !tbaa !5
  %weight = getelementptr inbounds %struct.x264_mc_functions_t, %struct.x264_mc_functions_t* %pf, i32 0, i32 29
  store void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** getelementptr inbounds ([6 x void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*], [6 x void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*]* @mc_weight_wtab, i32 0, i32 0), void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*** %weight, align 4, !tbaa !51
  %offsetadd = getelementptr inbounds %struct.x264_mc_functions_t, %struct.x264_mc_functions_t* %pf, i32 0, i32 30
  store void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** getelementptr inbounds ([6 x void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*], [6 x void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*]* @mc_weight_wtab, i32 0, i32 0), void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*** %offsetadd, align 4, !tbaa !52
  %offsetsub = getelementptr inbounds %struct.x264_mc_functions_t, %struct.x264_mc_functions_t* %pf, i32 0, i32 31
  store void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** getelementptr inbounds ([6 x void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*], [6 x void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*]* @mc_weight_wtab, i32 0, i32 0), void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*** %offsetsub, align 4, !tbaa !53
  %weight_cache = getelementptr inbounds %struct.x264_mc_functions_t, %struct.x264_mc_functions_t* %pf, i32 0, i32 32
  store void (%struct.x264_t*, %struct.x264_weight_t*)* @weight_cache, void (%struct.x264_t*, %struct.x264_weight_t*)** %weight_cache, align 4, !tbaa !54
  %copy_16x16_unaligned = getelementptr inbounds %struct.x264_mc_functions_t, %struct.x264_mc_functions_t* %pf, i32 0, i32 5
  store void (i8*, i32, i8*, i32, i32)* @mc_copy_w16, void (i8*, i32, i8*, i32, i32)** %copy_16x16_unaligned, align 4, !tbaa !55
  %arrayidx23 = getelementptr inbounds %struct.x264_mc_functions_t, %struct.x264_mc_functions_t* %pf, i32 0, i32 4, i32 0
  store void (i8*, i32, i8*, i32, i32)* @mc_copy_w16, void (i8*, i32, i8*, i32, i32)** %arrayidx23, align 4, !tbaa !5
  %arrayidx25 = getelementptr inbounds %struct.x264_mc_functions_t, %struct.x264_mc_functions_t* %pf, i32 0, i32 4, i32 3
  store void (i8*, i32, i8*, i32, i32)* @mc_copy_w8, void (i8*, i32, i8*, i32, i32)** %arrayidx25, align 4, !tbaa !5
  %arrayidx27 = getelementptr inbounds %struct.x264_mc_functions_t, %struct.x264_mc_functions_t* %pf, i32 0, i32 4, i32 6
  store void (i8*, i32, i8*, i32, i32)* @mc_copy_w4, void (i8*, i32, i8*, i32, i32)** %arrayidx27, align 4, !tbaa !5
  %store_interleave_chroma = getelementptr inbounds %struct.x264_mc_functions_t, %struct.x264_mc_functions_t* %pf, i32 0, i32 6
  store void (i8*, i32, i8*, i8*, i32)* @store_interleave_chroma, void (i8*, i32, i8*, i8*, i32)** %store_interleave_chroma, align 4, !tbaa !56
  %load_deinterleave_chroma_fenc = getelementptr inbounds %struct.x264_mc_functions_t, %struct.x264_mc_functions_t* %pf, i32 0, i32 7
  store void (i8*, i8*, i32, i32)* @load_deinterleave_chroma_fenc, void (i8*, i8*, i32, i32)** %load_deinterleave_chroma_fenc, align 4, !tbaa !57
  %load_deinterleave_chroma_fdec = getelementptr inbounds %struct.x264_mc_functions_t, %struct.x264_mc_functions_t* %pf, i32 0, i32 8
  store void (i8*, i8*, i32, i32)* @load_deinterleave_chroma_fdec, void (i8*, i8*, i32, i32)** %load_deinterleave_chroma_fdec, align 4, !tbaa !58
  %plane_copy = getelementptr inbounds %struct.x264_mc_functions_t, %struct.x264_mc_functions_t* %pf, i32 0, i32 9
  store void (i8*, i32, i8*, i32, i32, i32)* @x264_8_plane_copy_c, void (i8*, i32, i8*, i32, i32, i32)** %plane_copy, align 4, !tbaa !59
  %plane_copy_swap = getelementptr inbounds %struct.x264_mc_functions_t, %struct.x264_mc_functions_t* %pf, i32 0, i32 10
  store void (i8*, i32, i8*, i32, i32, i32)* @x264_8_plane_copy_swap_c, void (i8*, i32, i8*, i32, i32, i32)** %plane_copy_swap, align 4, !tbaa !60
  %plane_copy_interleave = getelementptr inbounds %struct.x264_mc_functions_t, %struct.x264_mc_functions_t* %pf, i32 0, i32 11
  store void (i8*, i32, i8*, i32, i8*, i32, i32, i32)* @x264_8_plane_copy_interleave_c, void (i8*, i32, i8*, i32, i8*, i32, i32, i32)** %plane_copy_interleave, align 4, !tbaa !61
  %plane_copy_deinterleave = getelementptr inbounds %struct.x264_mc_functions_t, %struct.x264_mc_functions_t* %pf, i32 0, i32 12
  store void (i8*, i32, i8*, i32, i8*, i32, i32, i32)* @x264_8_plane_copy_deinterleave_c, void (i8*, i32, i8*, i32, i8*, i32, i32, i32)** %plane_copy_deinterleave, align 4, !tbaa !62
  %plane_copy_deinterleave_yuyv = getelementptr inbounds %struct.x264_mc_functions_t, %struct.x264_mc_functions_t* %pf, i32 0, i32 13
  store void (i8*, i32, i8*, i32, i8*, i32, i32, i32)* @x264_8_plane_copy_deinterleave_c, void (i8*, i32, i8*, i32, i8*, i32, i32, i32)** %plane_copy_deinterleave_yuyv, align 4, !tbaa !63
  %plane_copy_deinterleave_rgb = getelementptr inbounds %struct.x264_mc_functions_t, %struct.x264_mc_functions_t* %pf, i32 0, i32 14
  store void (i8*, i32, i8*, i32, i8*, i32, i8*, i32, i32, i32, i32)* @plane_copy_deinterleave_rgb_c, void (i8*, i32, i8*, i32, i8*, i32, i8*, i32, i32, i32, i32)** %plane_copy_deinterleave_rgb, align 4, !tbaa !64
  %plane_copy_deinterleave_v210 = getelementptr inbounds %struct.x264_mc_functions_t, %struct.x264_mc_functions_t* %pf, i32 0, i32 15
  store void (i8*, i32, i8*, i32, i32*, i32, i32, i32)* @plane_copy_deinterleave_v210_c, void (i8*, i32, i8*, i32, i32*, i32, i32, i32)** %plane_copy_deinterleave_v210, align 4, !tbaa !65
  %hpel_filter = getelementptr inbounds %struct.x264_mc_functions_t, %struct.x264_mc_functions_t* %pf, i32 0, i32 16
  store void (i8*, i8*, i8*, i8*, i32, i32, i32, i16*)* @hpel_filter, void (i8*, i8*, i8*, i8*, i32, i32, i32, i16*)** %hpel_filter, align 4, !tbaa !66
  %prefetch_fenc_400 = getelementptr inbounds %struct.x264_mc_functions_t, %struct.x264_mc_functions_t* %pf, i32 0, i32 18
  store void (i8*, i32, i8*, i32, i32)* @prefetch_fenc_null, void (i8*, i32, i8*, i32, i32)** %prefetch_fenc_400, align 4, !tbaa !67
  %prefetch_fenc_420 = getelementptr inbounds %struct.x264_mc_functions_t, %struct.x264_mc_functions_t* %pf, i32 0, i32 19
  store void (i8*, i32, i8*, i32, i32)* @prefetch_fenc_null, void (i8*, i32, i8*, i32, i32)** %prefetch_fenc_420, align 4, !tbaa !68
  %prefetch_fenc_422 = getelementptr inbounds %struct.x264_mc_functions_t, %struct.x264_mc_functions_t* %pf, i32 0, i32 20
  store void (i8*, i32, i8*, i32, i32)* @prefetch_fenc_null, void (i8*, i32, i8*, i32, i32)** %prefetch_fenc_422, align 4, !tbaa !69
  %prefetch_ref = getelementptr inbounds %struct.x264_mc_functions_t, %struct.x264_mc_functions_t* %pf, i32 0, i32 21
  store void (i8*, i32, i32)* @prefetch_ref_null, void (i8*, i32, i32)** %prefetch_ref, align 4, !tbaa !70
  %memcpy_aligned = getelementptr inbounds %struct.x264_mc_functions_t, %struct.x264_mc_functions_t* %pf, i32 0, i32 22
  store i8* (i8*, i8*, i32)* @memcpy, i8* (i8*, i8*, i32)** %memcpy_aligned, align 4, !tbaa !71
  %memzero_aligned = getelementptr inbounds %struct.x264_mc_functions_t, %struct.x264_mc_functions_t* %pf, i32 0, i32 23
  store void (i8*, i32)* @memzero_aligned, void (i8*, i32)** %memzero_aligned, align 4, !tbaa !72
  %frame_init_lowres_core = getelementptr inbounds %struct.x264_mc_functions_t, %struct.x264_mc_functions_t* %pf, i32 0, i32 28
  store void (i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32)* @frame_init_lowres_core, void (i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32)** %frame_init_lowres_core, align 4, !tbaa !73
  %integral_init4h = getelementptr inbounds %struct.x264_mc_functions_t, %struct.x264_mc_functions_t* %pf, i32 0, i32 24
  store void (i16*, i8*, i32)* @integral_init4h, void (i16*, i8*, i32)** %integral_init4h, align 4, !tbaa !74
  %integral_init8h = getelementptr inbounds %struct.x264_mc_functions_t, %struct.x264_mc_functions_t* %pf, i32 0, i32 25
  store void (i16*, i8*, i32)* @integral_init8h, void (i16*, i8*, i32)** %integral_init8h, align 4, !tbaa !75
  %integral_init4v = getelementptr inbounds %struct.x264_mc_functions_t, %struct.x264_mc_functions_t* %pf, i32 0, i32 26
  store void (i16*, i16*, i32)* @integral_init4v, void (i16*, i16*, i32)** %integral_init4v, align 4, !tbaa !76
  %integral_init8v = getelementptr inbounds %struct.x264_mc_functions_t, %struct.x264_mc_functions_t* %pf, i32 0, i32 27
  store void (i16*, i32)* @integral_init8v, void (i16*, i32)** %integral_init8v, align 4, !tbaa !77
  %mbtree_propagate_cost = getelementptr inbounds %struct.x264_mc_functions_t, %struct.x264_mc_functions_t* %pf, i32 0, i32 33
  store void (i16*, i16*, i16*, i16*, i16*, float*, i32)* @mbtree_propagate_cost, void (i16*, i16*, i16*, i16*, i16*, float*, i32)** %mbtree_propagate_cost, align 4, !tbaa !78
  %mbtree_propagate_list = getelementptr inbounds %struct.x264_mc_functions_t, %struct.x264_mc_functions_t* %pf, i32 0, i32 34
  store void (%struct.x264_t*, i16*, [2 x i16]*, i16*, i16*, i32, i32, i32, i32)* @mbtree_propagate_list, void (%struct.x264_t*, i16*, [2 x i16]*, i16*, i16*, i32, i32, i32, i32)** %mbtree_propagate_list, align 4, !tbaa !79
  %mbtree_fix8_pack = getelementptr inbounds %struct.x264_mc_functions_t, %struct.x264_mc_functions_t* %pf, i32 0, i32 35
  store void (i16*, float*, i32)* @mbtree_fix8_pack, void (i16*, float*, i32)** %mbtree_fix8_pack, align 4, !tbaa !80
  %mbtree_fix8_unpack = getelementptr inbounds %struct.x264_mc_functions_t, %struct.x264_mc_functions_t* %pf, i32 0, i32 36
  store void (float*, i16*, i32)* @mbtree_fix8_unpack, void (float*, i16*, i32)** %mbtree_fix8_unpack, align 4, !tbaa !81
  %tobool = icmp eq i32 %cpu_independent, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store void (i16*, i16*, i16*, i16*, i16*, float*, i32)* @mbtree_propagate_cost, void (i16*, i16*, i16*, i16*, i16*, float*, i32)** %mbtree_propagate_cost, align 4, !tbaa !78
  store void (%struct.x264_t*, i16*, [2 x i16]*, i16*, i16*, i32, i32, i32, i32)* @mbtree_propagate_list, void (%struct.x264_t*, i16*, [2 x i16]*, i16*, i16*, i32, i32, i32, i32)** %mbtree_propagate_list, align 4, !tbaa !79
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret void
}

; Function Attrs: nounwind
define internal void @mc_luma(i8* nocapture %dst, i32 %i_dst_stride, i8** nocapture readonly %src, i32 %i_src_stride, i32 %mvx, i32 %mvy, i32 %i_width, i32 %i_height, %struct.x264_weight_t* nocapture readonly %weight) #0 {
entry:
  %and = and i32 %mvy, 3
  %shl = shl nuw nsw i32 %and, 2
  %and1 = and i32 %mvx, 3
  %add = or i32 %shl, %and1
  %shr = ashr i32 %mvy, 2
  %mul = mul nsw i32 %shr, %i_src_stride
  %shr2 = ashr i32 %mvx, 2
  %add3 = add nsw i32 %mul, %shr2
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* @x264_hpel_ref0, i32 0, i32 %add
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !2
  %idxprom = zext i8 %0 to i32
  %arrayidx4 = getelementptr inbounds i8*, i8** %src, i32 %idxprom
  %1 = load i8*, i8** %arrayidx4, align 4, !tbaa !5
  %add.ptr = getelementptr inbounds i8, i8* %1, i32 %add3
  %cmp = icmp eq i32 %and, 3
  %mul6 = select i1 %cmp, i32 %i_src_stride, i32 0
  %add.ptr7 = getelementptr inbounds i8, i8* %add.ptr, i32 %mul6
  %and8 = and i32 %add, 5
  %tobool = icmp eq i32 %and8, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %cmp27.i = icmp sgt i32 %i_height, 0
  %cmp225.i = icmp sgt i32 %i_width, 0
  %or.cond.i = and i1 %cmp225.i, %cmp27.i
  br i1 %or.cond.i, label %for.cond1.preheader.us.i.preheader, label %pixel_avg.exit

for.cond1.preheader.us.i.preheader:               ; preds = %if.then
  %arrayidx9 = getelementptr inbounds [16 x i8], [16 x i8]* @x264_hpel_ref1, i32 0, i32 %add
  %2 = load i8, i8* %arrayidx9, align 1, !tbaa !2
  %idxprom10 = zext i8 %2 to i32
  %arrayidx11 = getelementptr inbounds i8*, i8** %src, i32 %idxprom10
  %3 = load i8*, i8** %arrayidx11, align 4, !tbaa !5
  %add.ptr12 = getelementptr inbounds i8, i8* %3, i32 %add3
  %cmp14 = icmp eq i32 %and1, 3
  %conv15 = zext i1 %cmp14 to i32
  %add.ptr16 = getelementptr inbounds i8, i8* %add.ptr12, i32 %conv15
  br label %for.cond1.preheader.us.i

for.cond1.preheader.us.i:                         ; preds = %for.cond1.preheader.us.i.preheader, %for.cond1.for.cond.cleanup3_crit_edge.us.i
  %y.031.us.i = phi i32 [ %inc13.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ 0, %for.cond1.preheader.us.i.preheader ]
  %dst.addr.030.us.i = phi i8* [ %add.ptr.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ %dst, %for.cond1.preheader.us.i.preheader ]
  %src1.addr.029.us.i = phi i8* [ %add.ptr10.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ %add.ptr7, %for.cond1.preheader.us.i.preheader ]
  %src2.addr.028.us.i = phi i8* [ %add.ptr11.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ %add.ptr16, %for.cond1.preheader.us.i.preheader ]
  br label %for.body4.us.i

for.body4.us.i:                                   ; preds = %for.body4.us.i, %for.cond1.preheader.us.i
  %x.026.us.i = phi i32 [ 0, %for.cond1.preheader.us.i ], [ %inc.us.i, %for.body4.us.i ]
  %arrayidx.us.i = getelementptr inbounds i8, i8* %src1.addr.029.us.i, i32 %x.026.us.i
  %4 = load i8, i8* %arrayidx.us.i, align 1, !tbaa !2
  %conv.us.i = zext i8 %4 to i32
  %arrayidx5.us.i = getelementptr inbounds i8, i8* %src2.addr.028.us.i, i32 %x.026.us.i
  %5 = load i8, i8* %arrayidx5.us.i, align 1, !tbaa !2
  %conv6.us.i = zext i8 %5 to i32
  %add.us.i = add nuw nsw i32 %conv.us.i, 1
  %add7.us.i = add nuw nsw i32 %add.us.i, %conv6.us.i
  %6 = lshr i32 %add7.us.i, 1
  %conv8.us.i = trunc i32 %6 to i8
  %arrayidx9.us.i = getelementptr inbounds i8, i8* %dst.addr.030.us.i, i32 %x.026.us.i
  store i8 %conv8.us.i, i8* %arrayidx9.us.i, align 1, !tbaa !2
  %inc.us.i = add nuw nsw i32 %x.026.us.i, 1
  %exitcond.i = icmp eq i32 %inc.us.i, %i_width
  br i1 %exitcond.i, label %for.cond1.for.cond.cleanup3_crit_edge.us.i, label %for.body4.us.i

for.cond1.for.cond.cleanup3_crit_edge.us.i:       ; preds = %for.body4.us.i
  %add.ptr.us.i = getelementptr inbounds i8, i8* %dst.addr.030.us.i, i32 %i_dst_stride
  %add.ptr10.us.i = getelementptr inbounds i8, i8* %src1.addr.029.us.i, i32 %i_src_stride
  %add.ptr11.us.i = getelementptr inbounds i8, i8* %src2.addr.028.us.i, i32 %i_src_stride
  %inc13.us.i = add nuw nsw i32 %y.031.us.i, 1
  %exitcond33.i = icmp eq i32 %inc13.us.i, %i_height
  br i1 %exitcond33.i, label %pixel_avg.exit, label %for.cond1.preheader.us.i

pixel_avg.exit:                                   ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us.i, %if.then
  %weightfn = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %weight, i32 0, i32 5
  %7 = load void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)**, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*** %weightfn, align 4, !tbaa !82
  %tobool17 = icmp eq void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %7, null
  br i1 %tobool17, label %if.end24, label %if.then18

if.then18:                                        ; preds = %pixel_avg.exit
  %weight.idx63 = getelementptr %struct.x264_weight_t, %struct.x264_weight_t* %weight, i32 0, i32 2
  %weight.idx63.val = load i32, i32* %weight.idx63, align 16, !tbaa !84
  %weight.idx64 = getelementptr %struct.x264_weight_t, %struct.x264_weight_t* %weight, i32 0, i32 3
  %weight.idx64.val = load i32, i32* %weight.idx64, align 4, !tbaa !85
  %weight.idx65 = getelementptr %struct.x264_weight_t, %struct.x264_weight_t* %weight, i32 0, i32 4
  %weight.idx65.val = load i32, i32* %weight.idx65, align 8, !tbaa !86
  %cmp.i76 = icmp sgt i32 %weight.idx63.val, 0
  br i1 %cmp.i76, label %for.cond.preheader.i104, label %for.cond14.preheader.i80

for.cond14.preheader.i80:                         ; preds = %if.then18
  br i1 %or.cond.i, label %for.cond20.preheader.us.i84, label %if.end24

for.cond20.preheader.us.i84:                      ; preds = %for.cond14.preheader.i80, %for.cond20.for.cond.cleanup23_crit_edge.us.i103
  %y13.013.us.i81 = phi i32 [ %inc35.us.i99, %for.cond20.for.cond.cleanup23_crit_edge.us.i103 ], [ 0, %for.cond14.preheader.i80 ]
  %dst.addr.112.us.i82 = phi i8* [ %add.ptr36.us.i100, %for.cond20.for.cond.cleanup23_crit_edge.us.i103 ], [ %dst, %for.cond14.preheader.i80 ]
  br label %for.body24.us.i98

for.body24.us.i98:                                ; preds = %for.body24.us.i98, %for.cond20.preheader.us.i84
  %x19.09.us.i85 = phi i32 [ 0, %for.cond20.preheader.us.i84 ], [ %inc32.us.i96, %for.body24.us.i98 ]
  %arrayidx25.us.i86 = getelementptr inbounds i8, i8* %dst.addr.112.us.i82, i32 %x19.09.us.i85
  %8 = load i8, i8* %arrayidx25.us.i86, align 1, !tbaa !2
  %conv26.us.i87 = zext i8 %8 to i32
  %mul27.us.i88 = mul nsw i32 %weight.idx64.val, %conv26.us.i87
  %add28.us.i89 = add nsw i32 %mul27.us.i88, %weight.idx65.val
  %tobool.i70.us.i90 = icmp ugt i32 %add28.us.i89, 255
  %sub.i71.us.i91 = sub nsw i32 0, %add28.us.i89
  %shr.i72.us.i92 = ashr i32 %sub.i71.us.i91, 31
  %cond.i73.us.i93 = select i1 %tobool.i70.us.i90, i32 %shr.i72.us.i92, i32 %add28.us.i89
  %conv.i74.us.i94 = trunc i32 %cond.i73.us.i93 to i8
  store i8 %conv.i74.us.i94, i8* %arrayidx25.us.i86, align 1, !tbaa !2
  %inc32.us.i96 = add nuw nsw i32 %x19.09.us.i85, 1
  %exitcond18.i97 = icmp eq i32 %inc32.us.i96, %i_width
  br i1 %exitcond18.i97, label %for.cond20.for.cond.cleanup23_crit_edge.us.i103, label %for.body24.us.i98

for.cond20.for.cond.cleanup23_crit_edge.us.i103:  ; preds = %for.body24.us.i98
  %inc35.us.i99 = add nuw nsw i32 %y13.013.us.i81, 1
  %add.ptr36.us.i100 = getelementptr inbounds i8, i8* %dst.addr.112.us.i82, i32 %i_dst_stride
  %exitcond19.i102 = icmp eq i32 %inc35.us.i99, %i_height
  br i1 %exitcond19.i102, label %if.end24, label %for.cond20.preheader.us.i84

for.cond.preheader.i104:                          ; preds = %if.then18
  br i1 %cmp27.i, label %for.cond2.preheader.lr.ph.i108, label %if.end24

for.cond2.preheader.lr.ph.i108:                   ; preds = %for.cond.preheader.i104
  %sub.i106 = add nsw i32 %weight.idx63.val, -1
  %shl.i107 = shl nuw i32 1, %sub.i106
  br i1 %cmp225.i, label %for.cond2.preheader.us.i112, label %if.end24

for.cond2.preheader.us.i112:                      ; preds = %for.cond2.preheader.lr.ph.i108, %for.cond2.for.cond.cleanup4_crit_edge.us.i133
  %y.07.us.i109 = phi i32 [ %inc10.us.i129, %for.cond2.for.cond.cleanup4_crit_edge.us.i133 ], [ 0, %for.cond2.preheader.lr.ph.i108 ]
  %dst.addr.06.us.i110 = phi i8* [ %add.ptr.us.i130, %for.cond2.for.cond.cleanup4_crit_edge.us.i133 ], [ %dst, %for.cond2.preheader.lr.ph.i108 ]
  br label %for.body5.us.i128

for.body5.us.i128:                                ; preds = %for.body5.us.i128, %for.cond2.preheader.us.i112
  %x.03.us.i113 = phi i32 [ 0, %for.cond2.preheader.us.i112 ], [ %inc.us.i126, %for.body5.us.i128 ]
  %arrayidx.us.i114 = getelementptr inbounds i8, i8* %dst.addr.06.us.i110, i32 %x.03.us.i113
  %9 = load i8, i8* %arrayidx.us.i114, align 1, !tbaa !2
  %conv.us.i115 = zext i8 %9 to i32
  %mul6.us.i116 = mul nsw i32 %weight.idx64.val, %conv.us.i115
  %add.us.i117 = add nsw i32 %mul6.us.i116, %shl.i107
  %shr.us.i118 = ashr i32 %add.us.i117, %weight.idx63.val
  %add7.us.i119 = add nsw i32 %shr.us.i118, %weight.idx65.val
  %tobool.i.us.i120 = icmp ugt i32 %add7.us.i119, 255
  %sub.i.us.i121 = sub nsw i32 0, %add7.us.i119
  %shr.i.us.i122 = ashr i32 %sub.i.us.i121, 31
  %cond.i.us.i123 = select i1 %tobool.i.us.i120, i32 %shr.i.us.i122, i32 %add7.us.i119
  %conv.i.us.i124 = trunc i32 %cond.i.us.i123 to i8
  store i8 %conv.i.us.i124, i8* %arrayidx.us.i114, align 1, !tbaa !2
  %inc.us.i126 = add nuw nsw i32 %x.03.us.i113, 1
  %exitcond.i127 = icmp eq i32 %inc.us.i126, %i_width
  br i1 %exitcond.i127, label %for.cond2.for.cond.cleanup4_crit_edge.us.i133, label %for.body5.us.i128

for.cond2.for.cond.cleanup4_crit_edge.us.i133:    ; preds = %for.body5.us.i128
  %inc10.us.i129 = add nuw nsw i32 %y.07.us.i109, 1
  %add.ptr.us.i130 = getelementptr inbounds i8, i8* %dst.addr.06.us.i110, i32 %i_dst_stride
  %exitcond17.i132 = icmp eq i32 %inc10.us.i129, %i_height
  br i1 %exitcond17.i132, label %if.end24, label %for.cond2.preheader.us.i112

if.else:                                          ; preds = %entry
  %weightfn19 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %weight, i32 0, i32 5
  %10 = load void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)**, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*** %weightfn19, align 4, !tbaa !82
  %tobool20 = icmp eq void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %10, null
  br i1 %tobool20, label %if.else22, label %if.then21

if.then21:                                        ; preds = %if.else
  %weight.idx = getelementptr %struct.x264_weight_t, %struct.x264_weight_t* %weight, i32 0, i32 2
  %weight.idx.val = load i32, i32* %weight.idx, align 16, !tbaa !84
  %weight.idx61 = getelementptr %struct.x264_weight_t, %struct.x264_weight_t* %weight, i32 0, i32 3
  %weight.idx61.val = load i32, i32* %weight.idx61, align 4, !tbaa !85
  %weight.idx62 = getelementptr %struct.x264_weight_t, %struct.x264_weight_t* %weight, i32 0, i32 4
  %weight.idx62.val = load i32, i32* %weight.idx62, align 8, !tbaa !86
  %cmp.i = icmp sgt i32 %weight.idx.val, 0
  %cmp14.i = icmp sgt i32 %i_height, 0
  br i1 %cmp.i, label %for.cond.preheader.i, label %for.cond14.preheader.i

for.cond14.preheader.i:                           ; preds = %if.then21
  %cmp218.i = icmp sgt i32 %i_width, 0
  %or.cond.i67 = and i1 %cmp218.i, %cmp14.i
  br i1 %or.cond.i67, label %for.cond20.preheader.us.i, label %if.end24

for.cond20.preheader.us.i:                        ; preds = %for.cond14.preheader.i, %for.cond20.for.cond.cleanup23_crit_edge.us.i
  %y13.013.us.i = phi i32 [ %inc35.us.i, %for.cond20.for.cond.cleanup23_crit_edge.us.i ], [ 0, %for.cond14.preheader.i ]
  %dst.addr.112.us.i = phi i8* [ %add.ptr36.us.i, %for.cond20.for.cond.cleanup23_crit_edge.us.i ], [ %dst, %for.cond14.preheader.i ]
  %src.addr.111.us.i = phi i8* [ %add.ptr37.us.i, %for.cond20.for.cond.cleanup23_crit_edge.us.i ], [ %add.ptr7, %for.cond14.preheader.i ]
  br label %for.body24.us.i

for.body24.us.i:                                  ; preds = %for.body24.us.i, %for.cond20.preheader.us.i
  %x19.09.us.i = phi i32 [ 0, %for.cond20.preheader.us.i ], [ %inc32.us.i, %for.body24.us.i ]
  %arrayidx25.us.i = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 %x19.09.us.i
  %11 = load i8, i8* %arrayidx25.us.i, align 1, !tbaa !2
  %conv26.us.i = zext i8 %11 to i32
  %mul27.us.i = mul nsw i32 %weight.idx61.val, %conv26.us.i
  %add28.us.i = add nsw i32 %mul27.us.i, %weight.idx62.val
  %tobool.i70.us.i = icmp ugt i32 %add28.us.i, 255
  %sub.i71.us.i = sub nsw i32 0, %add28.us.i
  %shr.i72.us.i = ashr i32 %sub.i71.us.i, 31
  %cond.i73.us.i = select i1 %tobool.i70.us.i, i32 %shr.i72.us.i, i32 %add28.us.i
  %conv.i74.us.i = trunc i32 %cond.i73.us.i to i8
  %arrayidx30.us.i = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 %x19.09.us.i
  store i8 %conv.i74.us.i, i8* %arrayidx30.us.i, align 1, !tbaa !2
  %inc32.us.i = add nuw nsw i32 %x19.09.us.i, 1
  %exitcond18.i = icmp eq i32 %inc32.us.i, %i_width
  br i1 %exitcond18.i, label %for.cond20.for.cond.cleanup23_crit_edge.us.i, label %for.body24.us.i

for.cond20.for.cond.cleanup23_crit_edge.us.i:     ; preds = %for.body24.us.i
  %inc35.us.i = add nuw nsw i32 %y13.013.us.i, 1
  %add.ptr36.us.i = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 %i_dst_stride
  %add.ptr37.us.i = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 %i_src_stride
  %exitcond19.i = icmp eq i32 %inc35.us.i, %i_height
  br i1 %exitcond19.i, label %if.end24, label %for.cond20.preheader.us.i

for.cond.preheader.i:                             ; preds = %if.then21
  br i1 %cmp14.i, label %for.cond2.preheader.lr.ph.i, label %if.end24

for.cond2.preheader.lr.ph.i:                      ; preds = %for.cond.preheader.i
  %cmp32.i = icmp sgt i32 %i_width, 0
  %sub.i = add nsw i32 %weight.idx.val, -1
  %shl.i = shl nuw i32 1, %sub.i
  br i1 %cmp32.i, label %for.cond2.preheader.us.i, label %if.end24

for.cond2.preheader.us.i:                         ; preds = %for.cond2.preheader.lr.ph.i, %for.cond2.for.cond.cleanup4_crit_edge.us.i
  %y.07.us.i = phi i32 [ %inc10.us.i, %for.cond2.for.cond.cleanup4_crit_edge.us.i ], [ 0, %for.cond2.preheader.lr.ph.i ]
  %dst.addr.06.us.i = phi i8* [ %add.ptr.us.i74, %for.cond2.for.cond.cleanup4_crit_edge.us.i ], [ %dst, %for.cond2.preheader.lr.ph.i ]
  %src.addr.05.us.i = phi i8* [ %add.ptr11.us.i75, %for.cond2.for.cond.cleanup4_crit_edge.us.i ], [ %add.ptr7, %for.cond2.preheader.lr.ph.i ]
  br label %for.body5.us.i

for.body5.us.i:                                   ; preds = %for.body5.us.i, %for.cond2.preheader.us.i
  %x.03.us.i = phi i32 [ 0, %for.cond2.preheader.us.i ], [ %inc.us.i72, %for.body5.us.i ]
  %arrayidx.us.i68 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 %x.03.us.i
  %12 = load i8, i8* %arrayidx.us.i68, align 1, !tbaa !2
  %conv.us.i69 = zext i8 %12 to i32
  %mul6.us.i = mul nsw i32 %weight.idx61.val, %conv.us.i69
  %add.us.i70 = add nsw i32 %mul6.us.i, %shl.i
  %shr.us.i = ashr i32 %add.us.i70, %weight.idx.val
  %add7.us.i71 = add nsw i32 %shr.us.i, %weight.idx62.val
  %tobool.i.us.i = icmp ugt i32 %add7.us.i71, 255
  %sub.i.us.i = sub nsw i32 0, %add7.us.i71
  %shr.i.us.i = ashr i32 %sub.i.us.i, 31
  %cond.i.us.i = select i1 %tobool.i.us.i, i32 %shr.i.us.i, i32 %add7.us.i71
  %conv.i.us.i = trunc i32 %cond.i.us.i to i8
  %arrayidx8.us.i = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 %x.03.us.i
  store i8 %conv.i.us.i, i8* %arrayidx8.us.i, align 1, !tbaa !2
  %inc.us.i72 = add nuw nsw i32 %x.03.us.i, 1
  %exitcond.i73 = icmp eq i32 %inc.us.i72, %i_width
  br i1 %exitcond.i73, label %for.cond2.for.cond.cleanup4_crit_edge.us.i, label %for.body5.us.i

for.cond2.for.cond.cleanup4_crit_edge.us.i:       ; preds = %for.body5.us.i
  %inc10.us.i = add nuw nsw i32 %y.07.us.i, 1
  %add.ptr.us.i74 = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 %i_dst_stride
  %add.ptr11.us.i75 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 %i_src_stride
  %exitcond17.i = icmp eq i32 %inc10.us.i, %i_height
  br i1 %exitcond17.i, label %if.end24, label %for.cond2.preheader.us.i

if.else22:                                        ; preds = %if.else
  %cmp6.i = icmp sgt i32 %i_height, 0
  br i1 %cmp6.i, label %for.body.i, label %if.end24

for.body.i:                                       ; preds = %if.else22, %for.body.i
  %y.09.i = phi i32 [ %inc.i, %for.body.i ], [ 0, %if.else22 ]
  %src.addr.08.i = phi i8* [ %add.ptr.i, %for.body.i ], [ %add.ptr7, %if.else22 ]
  %dst.addr.07.i = phi i8* [ %add.ptr1.i, %for.body.i ], [ %dst, %if.else22 ]
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %dst.addr.07.i, i8* align 1 %src.addr.08.i, i32 %i_width, i1 false) #9
  %add.ptr.i = getelementptr inbounds i8, i8* %src.addr.08.i, i32 %i_src_stride
  %add.ptr1.i = getelementptr inbounds i8, i8* %dst.addr.07.i, i32 %i_dst_stride
  %inc.i = add nuw nsw i32 %y.09.i, 1
  %exitcond.i66 = icmp eq i32 %inc.i, %i_height
  br i1 %exitcond.i66, label %if.end24, label %for.body.i

if.end24:                                         ; preds = %for.cond20.for.cond.cleanup23_crit_edge.us.i103, %for.cond2.for.cond.cleanup4_crit_edge.us.i133, %for.cond20.for.cond.cleanup23_crit_edge.us.i, %for.cond2.for.cond.cleanup4_crit_edge.us.i, %for.body.i, %if.else22, %for.cond2.preheader.lr.ph.i, %for.cond.preheader.i, %for.cond14.preheader.i, %for.cond2.preheader.lr.ph.i108, %for.cond.preheader.i104, %for.cond14.preheader.i80, %pixel_avg.exit
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal i8* @get_ref(i8* %dst, i32* nocapture %i_dst_stride, i8** nocapture readonly %src, i32 %i_src_stride, i32 %mvx, i32 %mvy, i32 %i_width, i32 %i_height, %struct.x264_weight_t* nocapture readonly %weight) #2 {
entry:
  %and = and i32 %mvy, 3
  %shl = shl nuw nsw i32 %and, 2
  %and1 = and i32 %mvx, 3
  %add = or i32 %shl, %and1
  %shr = ashr i32 %mvy, 2
  %mul = mul nsw i32 %shr, %i_src_stride
  %shr2 = ashr i32 %mvx, 2
  %add3 = add nsw i32 %mul, %shr2
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* @x264_hpel_ref0, i32 0, i32 %add
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !2
  %idxprom = zext i8 %0 to i32
  %arrayidx4 = getelementptr inbounds i8*, i8** %src, i32 %idxprom
  %1 = load i8*, i8** %arrayidx4, align 4, !tbaa !5
  %add.ptr = getelementptr inbounds i8, i8* %1, i32 %add3
  %cmp = icmp eq i32 %and, 3
  %mul6 = select i1 %cmp, i32 %i_src_stride, i32 0
  %add.ptr7 = getelementptr inbounds i8, i8* %add.ptr, i32 %mul6
  %and8 = and i32 %add, 5
  %tobool = icmp eq i32 %and8, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %i_dst_stride, align 4, !tbaa !7
  %cmp27.i = icmp sgt i32 %i_height, 0
  %cmp225.i = icmp sgt i32 %i_width, 0
  %or.cond.i = and i1 %cmp225.i, %cmp27.i
  br i1 %or.cond.i, label %for.cond1.preheader.us.i.preheader, label %pixel_avg.exit

for.cond1.preheader.us.i.preheader:               ; preds = %if.then
  %arrayidx9 = getelementptr inbounds [16 x i8], [16 x i8]* @x264_hpel_ref1, i32 0, i32 %add
  %3 = load i8, i8* %arrayidx9, align 1, !tbaa !2
  %idxprom10 = zext i8 %3 to i32
  %arrayidx11 = getelementptr inbounds i8*, i8** %src, i32 %idxprom10
  %4 = load i8*, i8** %arrayidx11, align 4, !tbaa !5
  %add.ptr12 = getelementptr inbounds i8, i8* %4, i32 %add3
  %cmp14 = icmp eq i32 %and1, 3
  %conv15 = zext i1 %cmp14 to i32
  %add.ptr16 = getelementptr inbounds i8, i8* %add.ptr12, i32 %conv15
  br label %for.cond1.preheader.us.i

for.cond1.preheader.us.i:                         ; preds = %for.cond1.preheader.us.i.preheader, %for.cond1.for.cond.cleanup3_crit_edge.us.i
  %y.031.us.i = phi i32 [ %inc13.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ 0, %for.cond1.preheader.us.i.preheader ]
  %dst.addr.030.us.i = phi i8* [ %add.ptr.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ %dst, %for.cond1.preheader.us.i.preheader ]
  %src1.addr.029.us.i = phi i8* [ %add.ptr10.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ %add.ptr7, %for.cond1.preheader.us.i.preheader ]
  %src2.addr.028.us.i = phi i8* [ %add.ptr11.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ %add.ptr16, %for.cond1.preheader.us.i.preheader ]
  br label %for.body4.us.i

for.body4.us.i:                                   ; preds = %for.body4.us.i, %for.cond1.preheader.us.i
  %x.026.us.i = phi i32 [ 0, %for.cond1.preheader.us.i ], [ %inc.us.i, %for.body4.us.i ]
  %arrayidx.us.i = getelementptr inbounds i8, i8* %src1.addr.029.us.i, i32 %x.026.us.i
  %5 = load i8, i8* %arrayidx.us.i, align 1, !tbaa !2
  %conv.us.i = zext i8 %5 to i32
  %arrayidx5.us.i = getelementptr inbounds i8, i8* %src2.addr.028.us.i, i32 %x.026.us.i
  %6 = load i8, i8* %arrayidx5.us.i, align 1, !tbaa !2
  %conv6.us.i = zext i8 %6 to i32
  %add.us.i = add nuw nsw i32 %conv.us.i, 1
  %add7.us.i = add nuw nsw i32 %add.us.i, %conv6.us.i
  %7 = lshr i32 %add7.us.i, 1
  %conv8.us.i = trunc i32 %7 to i8
  %arrayidx9.us.i = getelementptr inbounds i8, i8* %dst.addr.030.us.i, i32 %x.026.us.i
  store i8 %conv8.us.i, i8* %arrayidx9.us.i, align 1, !tbaa !2
  %inc.us.i = add nuw nsw i32 %x.026.us.i, 1
  %exitcond.i = icmp eq i32 %inc.us.i, %i_width
  br i1 %exitcond.i, label %for.cond1.for.cond.cleanup3_crit_edge.us.i, label %for.body4.us.i

for.cond1.for.cond.cleanup3_crit_edge.us.i:       ; preds = %for.body4.us.i
  %add.ptr.us.i = getelementptr inbounds i8, i8* %dst.addr.030.us.i, i32 %2
  %add.ptr10.us.i = getelementptr inbounds i8, i8* %src1.addr.029.us.i, i32 %i_src_stride
  %add.ptr11.us.i = getelementptr inbounds i8, i8* %src2.addr.028.us.i, i32 %i_src_stride
  %inc13.us.i = add nuw nsw i32 %y.031.us.i, 1
  %exitcond33.i = icmp eq i32 %inc13.us.i, %i_height
  br i1 %exitcond33.i, label %pixel_avg.exit, label %for.cond1.preheader.us.i

pixel_avg.exit:                                   ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us.i, %if.then
  %weightfn = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %weight, i32 0, i32 5
  %8 = load void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)**, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*** %weightfn, align 4, !tbaa !82
  %tobool17 = icmp eq void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %8, null
  br i1 %tobool17, label %cleanup, label %if.then18

if.then18:                                        ; preds = %pixel_avg.exit
  %9 = load i32, i32* %i_dst_stride, align 4, !tbaa !7
  %weight.idx62 = getelementptr %struct.x264_weight_t, %struct.x264_weight_t* %weight, i32 0, i32 2
  %weight.idx62.val = load i32, i32* %weight.idx62, align 16, !tbaa !84
  %weight.idx63 = getelementptr %struct.x264_weight_t, %struct.x264_weight_t* %weight, i32 0, i32 3
  %weight.idx63.val = load i32, i32* %weight.idx63, align 4, !tbaa !85
  %weight.idx64 = getelementptr %struct.x264_weight_t, %struct.x264_weight_t* %weight, i32 0, i32 4
  %weight.idx64.val = load i32, i32* %weight.idx64, align 8, !tbaa !86
  %cmp.i74 = icmp sgt i32 %weight.idx62.val, 0
  br i1 %cmp.i74, label %for.cond.preheader.i102, label %for.cond14.preheader.i78

for.cond14.preheader.i78:                         ; preds = %if.then18
  br i1 %or.cond.i, label %for.cond20.preheader.us.i82, label %cleanup

for.cond20.preheader.us.i82:                      ; preds = %for.cond14.preheader.i78, %for.cond20.for.cond.cleanup23_crit_edge.us.i101
  %y13.013.us.i79 = phi i32 [ %inc35.us.i97, %for.cond20.for.cond.cleanup23_crit_edge.us.i101 ], [ 0, %for.cond14.preheader.i78 ]
  %dst.addr.112.us.i80 = phi i8* [ %add.ptr36.us.i98, %for.cond20.for.cond.cleanup23_crit_edge.us.i101 ], [ %dst, %for.cond14.preheader.i78 ]
  br label %for.body24.us.i96

for.body24.us.i96:                                ; preds = %for.body24.us.i96, %for.cond20.preheader.us.i82
  %x19.09.us.i83 = phi i32 [ 0, %for.cond20.preheader.us.i82 ], [ %inc32.us.i94, %for.body24.us.i96 ]
  %arrayidx25.us.i84 = getelementptr inbounds i8, i8* %dst.addr.112.us.i80, i32 %x19.09.us.i83
  %10 = load i8, i8* %arrayidx25.us.i84, align 1, !tbaa !2
  %conv26.us.i85 = zext i8 %10 to i32
  %mul27.us.i86 = mul nsw i32 %weight.idx63.val, %conv26.us.i85
  %add28.us.i87 = add nsw i32 %mul27.us.i86, %weight.idx64.val
  %tobool.i70.us.i88 = icmp ugt i32 %add28.us.i87, 255
  %sub.i71.us.i89 = sub nsw i32 0, %add28.us.i87
  %shr.i72.us.i90 = ashr i32 %sub.i71.us.i89, 31
  %cond.i73.us.i91 = select i1 %tobool.i70.us.i88, i32 %shr.i72.us.i90, i32 %add28.us.i87
  %conv.i74.us.i92 = trunc i32 %cond.i73.us.i91 to i8
  store i8 %conv.i74.us.i92, i8* %arrayidx25.us.i84, align 1, !tbaa !2
  %inc32.us.i94 = add nuw nsw i32 %x19.09.us.i83, 1
  %exitcond18.i95 = icmp eq i32 %inc32.us.i94, %i_width
  br i1 %exitcond18.i95, label %for.cond20.for.cond.cleanup23_crit_edge.us.i101, label %for.body24.us.i96

for.cond20.for.cond.cleanup23_crit_edge.us.i101:  ; preds = %for.body24.us.i96
  %inc35.us.i97 = add nuw nsw i32 %y13.013.us.i79, 1
  %add.ptr36.us.i98 = getelementptr inbounds i8, i8* %dst.addr.112.us.i80, i32 %9
  %exitcond19.i100 = icmp eq i32 %inc35.us.i97, %i_height
  br i1 %exitcond19.i100, label %cleanup, label %for.cond20.preheader.us.i82

for.cond.preheader.i102:                          ; preds = %if.then18
  br i1 %cmp27.i, label %for.cond2.preheader.lr.ph.i106, label %cleanup

for.cond2.preheader.lr.ph.i106:                   ; preds = %for.cond.preheader.i102
  %sub.i104 = add nsw i32 %weight.idx62.val, -1
  %shl.i105 = shl nuw i32 1, %sub.i104
  br i1 %cmp225.i, label %for.cond2.preheader.us.i110, label %cleanup

for.cond2.preheader.us.i110:                      ; preds = %for.cond2.preheader.lr.ph.i106, %for.cond2.for.cond.cleanup4_crit_edge.us.i131
  %y.07.us.i107 = phi i32 [ %inc10.us.i127, %for.cond2.for.cond.cleanup4_crit_edge.us.i131 ], [ 0, %for.cond2.preheader.lr.ph.i106 ]
  %dst.addr.06.us.i108 = phi i8* [ %add.ptr.us.i128, %for.cond2.for.cond.cleanup4_crit_edge.us.i131 ], [ %dst, %for.cond2.preheader.lr.ph.i106 ]
  br label %for.body5.us.i126

for.body5.us.i126:                                ; preds = %for.body5.us.i126, %for.cond2.preheader.us.i110
  %x.03.us.i111 = phi i32 [ 0, %for.cond2.preheader.us.i110 ], [ %inc.us.i124, %for.body5.us.i126 ]
  %arrayidx.us.i112 = getelementptr inbounds i8, i8* %dst.addr.06.us.i108, i32 %x.03.us.i111
  %11 = load i8, i8* %arrayidx.us.i112, align 1, !tbaa !2
  %conv.us.i113 = zext i8 %11 to i32
  %mul6.us.i114 = mul nsw i32 %weight.idx63.val, %conv.us.i113
  %add.us.i115 = add nsw i32 %mul6.us.i114, %shl.i105
  %shr.us.i116 = ashr i32 %add.us.i115, %weight.idx62.val
  %add7.us.i117 = add nsw i32 %shr.us.i116, %weight.idx64.val
  %tobool.i.us.i118 = icmp ugt i32 %add7.us.i117, 255
  %sub.i.us.i119 = sub nsw i32 0, %add7.us.i117
  %shr.i.us.i120 = ashr i32 %sub.i.us.i119, 31
  %cond.i.us.i121 = select i1 %tobool.i.us.i118, i32 %shr.i.us.i120, i32 %add7.us.i117
  %conv.i.us.i122 = trunc i32 %cond.i.us.i121 to i8
  store i8 %conv.i.us.i122, i8* %arrayidx.us.i112, align 1, !tbaa !2
  %inc.us.i124 = add nuw nsw i32 %x.03.us.i111, 1
  %exitcond.i125 = icmp eq i32 %inc.us.i124, %i_width
  br i1 %exitcond.i125, label %for.cond2.for.cond.cleanup4_crit_edge.us.i131, label %for.body5.us.i126

for.cond2.for.cond.cleanup4_crit_edge.us.i131:    ; preds = %for.body5.us.i126
  %inc10.us.i127 = add nuw nsw i32 %y.07.us.i107, 1
  %add.ptr.us.i128 = getelementptr inbounds i8, i8* %dst.addr.06.us.i108, i32 %9
  %exitcond17.i130 = icmp eq i32 %inc10.us.i127, %i_height
  br i1 %exitcond17.i130, label %cleanup, label %for.cond2.preheader.us.i110

if.else:                                          ; preds = %entry
  %weightfn19 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %weight, i32 0, i32 5
  %12 = load void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)**, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*** %weightfn19, align 4, !tbaa !82
  %tobool20 = icmp eq void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %12, null
  br i1 %tobool20, label %if.else22, label %if.then21

if.then21:                                        ; preds = %if.else
  %13 = load i32, i32* %i_dst_stride, align 4, !tbaa !7
  %weight.idx = getelementptr %struct.x264_weight_t, %struct.x264_weight_t* %weight, i32 0, i32 2
  %weight.idx.val = load i32, i32* %weight.idx, align 16, !tbaa !84
  %weight.idx60 = getelementptr %struct.x264_weight_t, %struct.x264_weight_t* %weight, i32 0, i32 3
  %weight.idx60.val = load i32, i32* %weight.idx60, align 4, !tbaa !85
  %weight.idx61 = getelementptr %struct.x264_weight_t, %struct.x264_weight_t* %weight, i32 0, i32 4
  %weight.idx61.val = load i32, i32* %weight.idx61, align 8, !tbaa !86
  %cmp.i = icmp sgt i32 %weight.idx.val, 0
  %cmp14.i = icmp sgt i32 %i_height, 0
  br i1 %cmp.i, label %for.cond.preheader.i, label %for.cond14.preheader.i

for.cond14.preheader.i:                           ; preds = %if.then21
  %cmp218.i = icmp sgt i32 %i_width, 0
  %or.cond.i65 = and i1 %cmp218.i, %cmp14.i
  br i1 %or.cond.i65, label %for.cond20.preheader.us.i, label %cleanup

for.cond20.preheader.us.i:                        ; preds = %for.cond14.preheader.i, %for.cond20.for.cond.cleanup23_crit_edge.us.i
  %y13.013.us.i = phi i32 [ %inc35.us.i, %for.cond20.for.cond.cleanup23_crit_edge.us.i ], [ 0, %for.cond14.preheader.i ]
  %dst.addr.112.us.i = phi i8* [ %add.ptr36.us.i, %for.cond20.for.cond.cleanup23_crit_edge.us.i ], [ %dst, %for.cond14.preheader.i ]
  %src.addr.111.us.i = phi i8* [ %add.ptr37.us.i, %for.cond20.for.cond.cleanup23_crit_edge.us.i ], [ %add.ptr7, %for.cond14.preheader.i ]
  br label %for.body24.us.i

for.body24.us.i:                                  ; preds = %for.body24.us.i, %for.cond20.preheader.us.i
  %x19.09.us.i = phi i32 [ 0, %for.cond20.preheader.us.i ], [ %inc32.us.i, %for.body24.us.i ]
  %arrayidx25.us.i = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 %x19.09.us.i
  %14 = load i8, i8* %arrayidx25.us.i, align 1, !tbaa !2
  %conv26.us.i = zext i8 %14 to i32
  %mul27.us.i = mul nsw i32 %weight.idx60.val, %conv26.us.i
  %add28.us.i = add nsw i32 %mul27.us.i, %weight.idx61.val
  %tobool.i70.us.i = icmp ugt i32 %add28.us.i, 255
  %sub.i71.us.i = sub nsw i32 0, %add28.us.i
  %shr.i72.us.i = ashr i32 %sub.i71.us.i, 31
  %cond.i73.us.i = select i1 %tobool.i70.us.i, i32 %shr.i72.us.i, i32 %add28.us.i
  %conv.i74.us.i = trunc i32 %cond.i73.us.i to i8
  %arrayidx30.us.i = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 %x19.09.us.i
  store i8 %conv.i74.us.i, i8* %arrayidx30.us.i, align 1, !tbaa !2
  %inc32.us.i = add nuw nsw i32 %x19.09.us.i, 1
  %exitcond18.i = icmp eq i32 %inc32.us.i, %i_width
  br i1 %exitcond18.i, label %for.cond20.for.cond.cleanup23_crit_edge.us.i, label %for.body24.us.i

for.cond20.for.cond.cleanup23_crit_edge.us.i:     ; preds = %for.body24.us.i
  %inc35.us.i = add nuw nsw i32 %y13.013.us.i, 1
  %add.ptr36.us.i = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 %13
  %add.ptr37.us.i = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 %i_src_stride
  %exitcond19.i = icmp eq i32 %inc35.us.i, %i_height
  br i1 %exitcond19.i, label %cleanup, label %for.cond20.preheader.us.i

for.cond.preheader.i:                             ; preds = %if.then21
  br i1 %cmp14.i, label %for.cond2.preheader.lr.ph.i, label %cleanup

for.cond2.preheader.lr.ph.i:                      ; preds = %for.cond.preheader.i
  %cmp32.i = icmp sgt i32 %i_width, 0
  %sub.i = add nsw i32 %weight.idx.val, -1
  %shl.i = shl nuw i32 1, %sub.i
  br i1 %cmp32.i, label %for.cond2.preheader.us.i, label %cleanup

for.cond2.preheader.us.i:                         ; preds = %for.cond2.preheader.lr.ph.i, %for.cond2.for.cond.cleanup4_crit_edge.us.i
  %y.07.us.i = phi i32 [ %inc10.us.i, %for.cond2.for.cond.cleanup4_crit_edge.us.i ], [ 0, %for.cond2.preheader.lr.ph.i ]
  %dst.addr.06.us.i = phi i8* [ %add.ptr.us.i72, %for.cond2.for.cond.cleanup4_crit_edge.us.i ], [ %dst, %for.cond2.preheader.lr.ph.i ]
  %src.addr.05.us.i = phi i8* [ %add.ptr11.us.i73, %for.cond2.for.cond.cleanup4_crit_edge.us.i ], [ %add.ptr7, %for.cond2.preheader.lr.ph.i ]
  br label %for.body5.us.i

for.body5.us.i:                                   ; preds = %for.body5.us.i, %for.cond2.preheader.us.i
  %x.03.us.i = phi i32 [ 0, %for.cond2.preheader.us.i ], [ %inc.us.i70, %for.body5.us.i ]
  %arrayidx.us.i66 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 %x.03.us.i
  %15 = load i8, i8* %arrayidx.us.i66, align 1, !tbaa !2
  %conv.us.i67 = zext i8 %15 to i32
  %mul6.us.i = mul nsw i32 %weight.idx60.val, %conv.us.i67
  %add.us.i68 = add nsw i32 %mul6.us.i, %shl.i
  %shr.us.i = ashr i32 %add.us.i68, %weight.idx.val
  %add7.us.i69 = add nsw i32 %shr.us.i, %weight.idx61.val
  %tobool.i.us.i = icmp ugt i32 %add7.us.i69, 255
  %sub.i.us.i = sub nsw i32 0, %add7.us.i69
  %shr.i.us.i = ashr i32 %sub.i.us.i, 31
  %cond.i.us.i = select i1 %tobool.i.us.i, i32 %shr.i.us.i, i32 %add7.us.i69
  %conv.i.us.i = trunc i32 %cond.i.us.i to i8
  %arrayidx8.us.i = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 %x.03.us.i
  store i8 %conv.i.us.i, i8* %arrayidx8.us.i, align 1, !tbaa !2
  %inc.us.i70 = add nuw nsw i32 %x.03.us.i, 1
  %exitcond.i71 = icmp eq i32 %inc.us.i70, %i_width
  br i1 %exitcond.i71, label %for.cond2.for.cond.cleanup4_crit_edge.us.i, label %for.body5.us.i

for.cond2.for.cond.cleanup4_crit_edge.us.i:       ; preds = %for.body5.us.i
  %inc10.us.i = add nuw nsw i32 %y.07.us.i, 1
  %add.ptr.us.i72 = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 %13
  %add.ptr11.us.i73 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 %i_src_stride
  %exitcond17.i = icmp eq i32 %inc10.us.i, %i_height
  br i1 %exitcond17.i, label %cleanup, label %for.cond2.preheader.us.i

if.else22:                                        ; preds = %if.else
  store i32 %i_src_stride, i32* %i_dst_stride, align 4, !tbaa !7
  br label %cleanup

cleanup:                                          ; preds = %for.cond20.for.cond.cleanup23_crit_edge.us.i101, %for.cond2.for.cond.cleanup4_crit_edge.us.i131, %for.cond20.for.cond.cleanup23_crit_edge.us.i, %for.cond2.for.cond.cleanup4_crit_edge.us.i, %for.cond2.preheader.lr.ph.i, %for.cond.preheader.i, %for.cond14.preheader.i, %for.cond2.preheader.lr.ph.i106, %for.cond.preheader.i102, %for.cond14.preheader.i78, %pixel_avg.exit, %if.else22
  %retval.0 = phi i8* [ %add.ptr7, %if.else22 ], [ %dst, %pixel_avg.exit ], [ %dst, %for.cond14.preheader.i78 ], [ %dst, %for.cond.preheader.i102 ], [ %dst, %for.cond2.preheader.lr.ph.i106 ], [ %dst, %for.cond14.preheader.i ], [ %dst, %for.cond.preheader.i ], [ %dst, %for.cond2.preheader.lr.ph.i ], [ %dst, %for.cond2.for.cond.cleanup4_crit_edge.us.i ], [ %dst, %for.cond20.for.cond.cleanup23_crit_edge.us.i ], [ %dst, %for.cond2.for.cond.cleanup4_crit_edge.us.i131 ], [ %dst, %for.cond20.for.cond.cleanup23_crit_edge.us.i101 ]
  ret i8* %retval.0
}

; Function Attrs: nofree norecurse nounwind
define internal void @mc_chroma(i8* nocapture %dstu, i8* nocapture %dstv, i32 %i_dst_stride, i8* nocapture readonly %src, i32 %i_src_stride, i32 %mvx, i32 %mvy, i32 %i_width, i32 %i_height) #2 {
entry:
  %and = and i32 %mvx, 7
  %and1 = and i32 %mvy, 7
  %sub = sub nuw nsw i32 8, %and
  %sub2 = sub nuw nsw i32 8, %and1
  %mul = mul nuw nsw i32 %sub2, %sub
  %mul4 = mul nuw nsw i32 %sub2, %and
  %mul6 = mul nuw nsw i32 %sub, %and1
  %mul7 = mul nuw nsw i32 %and1, %and
  %cmp123 = icmp sgt i32 %i_height, 0
  %cmp12120 = icmp sgt i32 %i_width, 0
  %or.cond = and i1 %cmp123, %cmp12120
  br i1 %or.cond, label %for.cond11.preheader.us.preheader, label %for.cond.cleanup

for.cond11.preheader.us.preheader:                ; preds = %entry
  %shr = ashr i32 %mvy, 3
  %mul8 = mul nsw i32 %shr, %i_src_stride
  %shr9 = ashr i32 %mvx, 3
  %mul10 = shl nsw i32 %shr9, 1
  %add = add nsw i32 %mul8, %mul10
  %add.ptr = getelementptr inbounds i8, i8* %src, i32 %add
  br label %for.cond11.preheader.us

for.cond11.preheader.us:                          ; preds = %for.cond11.preheader.us.preheader, %for.cond11.for.cond.cleanup13_crit_edge.us
  %srcp.0128.us.pn = phi i8* [ %srcp.0128.us, %for.cond11.for.cond.cleanup13_crit_edge.us ], [ %add.ptr, %for.cond11.preheader.us.preheader ]
  %y.0127.us = phi i32 [ %inc70.us, %for.cond11.for.cond.cleanup13_crit_edge.us ], [ 0, %for.cond11.preheader.us.preheader ]
  %dstu.addr.0126.us = phi i8* [ %add.ptr66.us, %for.cond11.for.cond.cleanup13_crit_edge.us ], [ %dstu, %for.cond11.preheader.us.preheader ]
  %dstv.addr.0125.us = phi i8* [ %add.ptr67.us, %for.cond11.for.cond.cleanup13_crit_edge.us ], [ %dstv, %for.cond11.preheader.us.preheader ]
  %srcp.0128.us = getelementptr inbounds i8, i8* %srcp.0128.us.pn, i32 %i_src_stride
  br label %for.body14.us

for.body14.us:                                    ; preds = %for.body14.us, %for.cond11.preheader.us
  %x.0121.us = phi i32 [ 0, %for.cond11.preheader.us ], [ %inc.us, %for.body14.us ]
  %mul15.us = shl nuw nsw i32 %x.0121.us, 1
  %arrayidx16.us = getelementptr inbounds i8, i8* %srcp.0128.us.pn, i32 %mul15.us
  %0 = load i8, i8* %arrayidx16.us, align 1, !tbaa !2
  %conv.us = zext i8 %0 to i32
  %mul17.us = mul nuw nsw i32 %mul, %conv.us
  %add19.us = add nuw nsw i32 %mul15.us, 2
  %arrayidx20.us = getelementptr inbounds i8, i8* %srcp.0128.us.pn, i32 %add19.us
  %1 = load i8, i8* %arrayidx20.us, align 1, !tbaa !2
  %conv21.us = zext i8 %1 to i32
  %mul22.us = mul nuw nsw i32 %mul4, %conv21.us
  %arrayidx25.us = getelementptr inbounds i8, i8* %srcp.0128.us, i32 %mul15.us
  %2 = load i8, i8* %arrayidx25.us, align 1, !tbaa !2
  %conv26.us = zext i8 %2 to i32
  %mul27.us = mul nuw nsw i32 %mul6, %conv26.us
  %arrayidx31.us = getelementptr inbounds i8, i8* %srcp.0128.us, i32 %add19.us
  %3 = load i8, i8* %arrayidx31.us, align 1, !tbaa !2
  %conv32.us = zext i8 %3 to i32
  %mul33.us = mul nuw nsw i32 %mul7, %conv32.us
  %add23.us = add nuw nsw i32 %mul17.us, 32
  %add28.us = add nuw nsw i32 %add23.us, %mul22.us
  %add34.us = add nuw nsw i32 %add28.us, %mul27.us
  %add35.us = add i32 %add34.us, %mul33.us
  %4 = lshr i32 %add35.us, 6
  %conv37.us = trunc i32 %4 to i8
  %arrayidx38.us = getelementptr inbounds i8, i8* %dstu.addr.0126.us, i32 %x.0121.us
  store i8 %conv37.us, i8* %arrayidx38.us, align 1, !tbaa !2
  %add40.us = or i32 %mul15.us, 1
  %arrayidx41.us = getelementptr inbounds i8, i8* %srcp.0128.us.pn, i32 %add40.us
  %5 = load i8, i8* %arrayidx41.us, align 1, !tbaa !2
  %conv42.us = zext i8 %5 to i32
  %mul43.us = mul nuw nsw i32 %mul, %conv42.us
  %add45.us = add nuw nsw i32 %mul15.us, 3
  %arrayidx46.us = getelementptr inbounds i8, i8* %srcp.0128.us.pn, i32 %add45.us
  %6 = load i8, i8* %arrayidx46.us, align 1, !tbaa !2
  %conv47.us = zext i8 %6 to i32
  %mul48.us = mul nuw nsw i32 %mul4, %conv47.us
  %arrayidx52.us = getelementptr inbounds i8, i8* %srcp.0128.us, i32 %add40.us
  %7 = load i8, i8* %arrayidx52.us, align 1, !tbaa !2
  %conv53.us = zext i8 %7 to i32
  %mul54.us = mul nuw nsw i32 %mul6, %conv53.us
  %arrayidx58.us = getelementptr inbounds i8, i8* %srcp.0128.us, i32 %add45.us
  %8 = load i8, i8* %arrayidx58.us, align 1, !tbaa !2
  %conv59.us = zext i8 %8 to i32
  %mul60.us = mul nuw nsw i32 %mul7, %conv59.us
  %add49.us = add nuw nsw i32 %mul43.us, 32
  %add55.us = add nuw nsw i32 %add49.us, %mul48.us
  %add61.us = add nuw nsw i32 %add55.us, %mul54.us
  %add62.us = add i32 %add61.us, %mul60.us
  %9 = lshr i32 %add62.us, 6
  %conv64.us = trunc i32 %9 to i8
  %arrayidx65.us = getelementptr inbounds i8, i8* %dstv.addr.0125.us, i32 %x.0121.us
  store i8 %conv64.us, i8* %arrayidx65.us, align 1, !tbaa !2
  %inc.us = add nuw nsw i32 %x.0121.us, 1
  %exitcond = icmp eq i32 %inc.us, %i_width
  br i1 %exitcond, label %for.cond11.for.cond.cleanup13_crit_edge.us, label %for.body14.us

for.cond11.for.cond.cleanup13_crit_edge.us:       ; preds = %for.body14.us
  %add.ptr66.us = getelementptr inbounds i8, i8* %dstu.addr.0126.us, i32 %i_dst_stride
  %add.ptr67.us = getelementptr inbounds i8, i8* %dstv.addr.0125.us, i32 %i_dst_stride
  %inc70.us = add nuw nsw i32 %y.0127.us, 1
  %exitcond130 = icmp eq i32 %inc70.us, %i_height
  br i1 %exitcond130, label %for.cond.cleanup, label %for.cond11.preheader.us

for.cond.cleanup:                                 ; preds = %for.cond11.for.cond.cleanup13_crit_edge.us, %entry
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @pixel_avg_16x16(i8* nocapture %pix1, i32 %i_stride_pix1, i8* nocapture readonly %pix2, i32 %i_stride_pix2, i8* nocapture readonly %pix3, i32 %i_stride_pix3, i32 %weight) #2 {
entry:
  %cmp = icmp eq i32 %weight, 32
  br i1 %cmp, label %for.cond1.preheader.us.i, label %if.else

for.cond1.preheader.us.i:                         ; preds = %entry, %for.cond1.preheader.us.i
  %y.031.us.i = phi i32 [ %inc13.us.i, %for.cond1.preheader.us.i ], [ 0, %entry ]
  %dst.addr.030.us.i = phi i8* [ %add.ptr11.us.i, %for.cond1.preheader.us.i ], [ %pix1, %entry ]
  %src1.addr.029.us.i = phi i8* [ %add.ptr.us.i, %for.cond1.preheader.us.i ], [ %pix2, %entry ]
  %src2.addr.028.us.i = phi i8* [ %add.ptr10.us.i, %for.cond1.preheader.us.i ], [ %pix3, %entry ]
  %0 = load i8, i8* %src1.addr.029.us.i, align 1, !tbaa !2
  %conv.us.i = zext i8 %0 to i32
  %1 = load i8, i8* %src2.addr.028.us.i, align 1, !tbaa !2
  %conv6.us.i = zext i8 %1 to i32
  %add.us.i = add nuw nsw i32 %conv.us.i, 1
  %add7.us.i = add nuw nsw i32 %add.us.i, %conv6.us.i
  %2 = lshr i32 %add7.us.i, 1
  %conv8.us.i = trunc i32 %2 to i8
  store i8 %conv8.us.i, i8* %dst.addr.030.us.i, align 1, !tbaa !2
  %arrayidx.us.i.1 = getelementptr inbounds i8, i8* %src1.addr.029.us.i, i32 1
  %3 = load i8, i8* %arrayidx.us.i.1, align 1, !tbaa !2
  %conv.us.i.1 = zext i8 %3 to i32
  %arrayidx5.us.i.1 = getelementptr inbounds i8, i8* %src2.addr.028.us.i, i32 1
  %4 = load i8, i8* %arrayidx5.us.i.1, align 1, !tbaa !2
  %conv6.us.i.1 = zext i8 %4 to i32
  %add.us.i.1 = add nuw nsw i32 %conv.us.i.1, 1
  %add7.us.i.1 = add nuw nsw i32 %add.us.i.1, %conv6.us.i.1
  %5 = lshr i32 %add7.us.i.1, 1
  %conv8.us.i.1 = trunc i32 %5 to i8
  %arrayidx9.us.i.1 = getelementptr inbounds i8, i8* %dst.addr.030.us.i, i32 1
  store i8 %conv8.us.i.1, i8* %arrayidx9.us.i.1, align 1, !tbaa !2
  %arrayidx.us.i.2 = getelementptr inbounds i8, i8* %src1.addr.029.us.i, i32 2
  %6 = load i8, i8* %arrayidx.us.i.2, align 1, !tbaa !2
  %conv.us.i.2 = zext i8 %6 to i32
  %arrayidx5.us.i.2 = getelementptr inbounds i8, i8* %src2.addr.028.us.i, i32 2
  %7 = load i8, i8* %arrayidx5.us.i.2, align 1, !tbaa !2
  %conv6.us.i.2 = zext i8 %7 to i32
  %add.us.i.2 = add nuw nsw i32 %conv.us.i.2, 1
  %add7.us.i.2 = add nuw nsw i32 %add.us.i.2, %conv6.us.i.2
  %8 = lshr i32 %add7.us.i.2, 1
  %conv8.us.i.2 = trunc i32 %8 to i8
  %arrayidx9.us.i.2 = getelementptr inbounds i8, i8* %dst.addr.030.us.i, i32 2
  store i8 %conv8.us.i.2, i8* %arrayidx9.us.i.2, align 1, !tbaa !2
  %arrayidx.us.i.3 = getelementptr inbounds i8, i8* %src1.addr.029.us.i, i32 3
  %9 = load i8, i8* %arrayidx.us.i.3, align 1, !tbaa !2
  %conv.us.i.3 = zext i8 %9 to i32
  %arrayidx5.us.i.3 = getelementptr inbounds i8, i8* %src2.addr.028.us.i, i32 3
  %10 = load i8, i8* %arrayidx5.us.i.3, align 1, !tbaa !2
  %conv6.us.i.3 = zext i8 %10 to i32
  %add.us.i.3 = add nuw nsw i32 %conv.us.i.3, 1
  %add7.us.i.3 = add nuw nsw i32 %add.us.i.3, %conv6.us.i.3
  %11 = lshr i32 %add7.us.i.3, 1
  %conv8.us.i.3 = trunc i32 %11 to i8
  %arrayidx9.us.i.3 = getelementptr inbounds i8, i8* %dst.addr.030.us.i, i32 3
  store i8 %conv8.us.i.3, i8* %arrayidx9.us.i.3, align 1, !tbaa !2
  %arrayidx.us.i.4 = getelementptr inbounds i8, i8* %src1.addr.029.us.i, i32 4
  %12 = load i8, i8* %arrayidx.us.i.4, align 1, !tbaa !2
  %conv.us.i.4 = zext i8 %12 to i32
  %arrayidx5.us.i.4 = getelementptr inbounds i8, i8* %src2.addr.028.us.i, i32 4
  %13 = load i8, i8* %arrayidx5.us.i.4, align 1, !tbaa !2
  %conv6.us.i.4 = zext i8 %13 to i32
  %add.us.i.4 = add nuw nsw i32 %conv.us.i.4, 1
  %add7.us.i.4 = add nuw nsw i32 %add.us.i.4, %conv6.us.i.4
  %14 = lshr i32 %add7.us.i.4, 1
  %conv8.us.i.4 = trunc i32 %14 to i8
  %arrayidx9.us.i.4 = getelementptr inbounds i8, i8* %dst.addr.030.us.i, i32 4
  store i8 %conv8.us.i.4, i8* %arrayidx9.us.i.4, align 1, !tbaa !2
  %arrayidx.us.i.5 = getelementptr inbounds i8, i8* %src1.addr.029.us.i, i32 5
  %15 = load i8, i8* %arrayidx.us.i.5, align 1, !tbaa !2
  %conv.us.i.5 = zext i8 %15 to i32
  %arrayidx5.us.i.5 = getelementptr inbounds i8, i8* %src2.addr.028.us.i, i32 5
  %16 = load i8, i8* %arrayidx5.us.i.5, align 1, !tbaa !2
  %conv6.us.i.5 = zext i8 %16 to i32
  %add.us.i.5 = add nuw nsw i32 %conv.us.i.5, 1
  %add7.us.i.5 = add nuw nsw i32 %add.us.i.5, %conv6.us.i.5
  %17 = lshr i32 %add7.us.i.5, 1
  %conv8.us.i.5 = trunc i32 %17 to i8
  %arrayidx9.us.i.5 = getelementptr inbounds i8, i8* %dst.addr.030.us.i, i32 5
  store i8 %conv8.us.i.5, i8* %arrayidx9.us.i.5, align 1, !tbaa !2
  %arrayidx.us.i.6 = getelementptr inbounds i8, i8* %src1.addr.029.us.i, i32 6
  %18 = load i8, i8* %arrayidx.us.i.6, align 1, !tbaa !2
  %conv.us.i.6 = zext i8 %18 to i32
  %arrayidx5.us.i.6 = getelementptr inbounds i8, i8* %src2.addr.028.us.i, i32 6
  %19 = load i8, i8* %arrayidx5.us.i.6, align 1, !tbaa !2
  %conv6.us.i.6 = zext i8 %19 to i32
  %add.us.i.6 = add nuw nsw i32 %conv.us.i.6, 1
  %add7.us.i.6 = add nuw nsw i32 %add.us.i.6, %conv6.us.i.6
  %20 = lshr i32 %add7.us.i.6, 1
  %conv8.us.i.6 = trunc i32 %20 to i8
  %arrayidx9.us.i.6 = getelementptr inbounds i8, i8* %dst.addr.030.us.i, i32 6
  store i8 %conv8.us.i.6, i8* %arrayidx9.us.i.6, align 1, !tbaa !2
  %arrayidx.us.i.7 = getelementptr inbounds i8, i8* %src1.addr.029.us.i, i32 7
  %21 = load i8, i8* %arrayidx.us.i.7, align 1, !tbaa !2
  %conv.us.i.7 = zext i8 %21 to i32
  %arrayidx5.us.i.7 = getelementptr inbounds i8, i8* %src2.addr.028.us.i, i32 7
  %22 = load i8, i8* %arrayidx5.us.i.7, align 1, !tbaa !2
  %conv6.us.i.7 = zext i8 %22 to i32
  %add.us.i.7 = add nuw nsw i32 %conv.us.i.7, 1
  %add7.us.i.7 = add nuw nsw i32 %add.us.i.7, %conv6.us.i.7
  %23 = lshr i32 %add7.us.i.7, 1
  %conv8.us.i.7 = trunc i32 %23 to i8
  %arrayidx9.us.i.7 = getelementptr inbounds i8, i8* %dst.addr.030.us.i, i32 7
  store i8 %conv8.us.i.7, i8* %arrayidx9.us.i.7, align 1, !tbaa !2
  %arrayidx.us.i.8 = getelementptr inbounds i8, i8* %src1.addr.029.us.i, i32 8
  %24 = load i8, i8* %arrayidx.us.i.8, align 1, !tbaa !2
  %conv.us.i.8 = zext i8 %24 to i32
  %arrayidx5.us.i.8 = getelementptr inbounds i8, i8* %src2.addr.028.us.i, i32 8
  %25 = load i8, i8* %arrayidx5.us.i.8, align 1, !tbaa !2
  %conv6.us.i.8 = zext i8 %25 to i32
  %add.us.i.8 = add nuw nsw i32 %conv.us.i.8, 1
  %add7.us.i.8 = add nuw nsw i32 %add.us.i.8, %conv6.us.i.8
  %26 = lshr i32 %add7.us.i.8, 1
  %conv8.us.i.8 = trunc i32 %26 to i8
  %arrayidx9.us.i.8 = getelementptr inbounds i8, i8* %dst.addr.030.us.i, i32 8
  store i8 %conv8.us.i.8, i8* %arrayidx9.us.i.8, align 1, !tbaa !2
  %arrayidx.us.i.9 = getelementptr inbounds i8, i8* %src1.addr.029.us.i, i32 9
  %27 = load i8, i8* %arrayidx.us.i.9, align 1, !tbaa !2
  %conv.us.i.9 = zext i8 %27 to i32
  %arrayidx5.us.i.9 = getelementptr inbounds i8, i8* %src2.addr.028.us.i, i32 9
  %28 = load i8, i8* %arrayidx5.us.i.9, align 1, !tbaa !2
  %conv6.us.i.9 = zext i8 %28 to i32
  %add.us.i.9 = add nuw nsw i32 %conv.us.i.9, 1
  %add7.us.i.9 = add nuw nsw i32 %add.us.i.9, %conv6.us.i.9
  %29 = lshr i32 %add7.us.i.9, 1
  %conv8.us.i.9 = trunc i32 %29 to i8
  %arrayidx9.us.i.9 = getelementptr inbounds i8, i8* %dst.addr.030.us.i, i32 9
  store i8 %conv8.us.i.9, i8* %arrayidx9.us.i.9, align 1, !tbaa !2
  %arrayidx.us.i.10 = getelementptr inbounds i8, i8* %src1.addr.029.us.i, i32 10
  %30 = load i8, i8* %arrayidx.us.i.10, align 1, !tbaa !2
  %conv.us.i.10 = zext i8 %30 to i32
  %arrayidx5.us.i.10 = getelementptr inbounds i8, i8* %src2.addr.028.us.i, i32 10
  %31 = load i8, i8* %arrayidx5.us.i.10, align 1, !tbaa !2
  %conv6.us.i.10 = zext i8 %31 to i32
  %add.us.i.10 = add nuw nsw i32 %conv.us.i.10, 1
  %add7.us.i.10 = add nuw nsw i32 %add.us.i.10, %conv6.us.i.10
  %32 = lshr i32 %add7.us.i.10, 1
  %conv8.us.i.10 = trunc i32 %32 to i8
  %arrayidx9.us.i.10 = getelementptr inbounds i8, i8* %dst.addr.030.us.i, i32 10
  store i8 %conv8.us.i.10, i8* %arrayidx9.us.i.10, align 1, !tbaa !2
  %arrayidx.us.i.11 = getelementptr inbounds i8, i8* %src1.addr.029.us.i, i32 11
  %33 = load i8, i8* %arrayidx.us.i.11, align 1, !tbaa !2
  %conv.us.i.11 = zext i8 %33 to i32
  %arrayidx5.us.i.11 = getelementptr inbounds i8, i8* %src2.addr.028.us.i, i32 11
  %34 = load i8, i8* %arrayidx5.us.i.11, align 1, !tbaa !2
  %conv6.us.i.11 = zext i8 %34 to i32
  %add.us.i.11 = add nuw nsw i32 %conv.us.i.11, 1
  %add7.us.i.11 = add nuw nsw i32 %add.us.i.11, %conv6.us.i.11
  %35 = lshr i32 %add7.us.i.11, 1
  %conv8.us.i.11 = trunc i32 %35 to i8
  %arrayidx9.us.i.11 = getelementptr inbounds i8, i8* %dst.addr.030.us.i, i32 11
  store i8 %conv8.us.i.11, i8* %arrayidx9.us.i.11, align 1, !tbaa !2
  %arrayidx.us.i.12 = getelementptr inbounds i8, i8* %src1.addr.029.us.i, i32 12
  %36 = load i8, i8* %arrayidx.us.i.12, align 1, !tbaa !2
  %conv.us.i.12 = zext i8 %36 to i32
  %arrayidx5.us.i.12 = getelementptr inbounds i8, i8* %src2.addr.028.us.i, i32 12
  %37 = load i8, i8* %arrayidx5.us.i.12, align 1, !tbaa !2
  %conv6.us.i.12 = zext i8 %37 to i32
  %add.us.i.12 = add nuw nsw i32 %conv.us.i.12, 1
  %add7.us.i.12 = add nuw nsw i32 %add.us.i.12, %conv6.us.i.12
  %38 = lshr i32 %add7.us.i.12, 1
  %conv8.us.i.12 = trunc i32 %38 to i8
  %arrayidx9.us.i.12 = getelementptr inbounds i8, i8* %dst.addr.030.us.i, i32 12
  store i8 %conv8.us.i.12, i8* %arrayidx9.us.i.12, align 1, !tbaa !2
  %arrayidx.us.i.13 = getelementptr inbounds i8, i8* %src1.addr.029.us.i, i32 13
  %39 = load i8, i8* %arrayidx.us.i.13, align 1, !tbaa !2
  %conv.us.i.13 = zext i8 %39 to i32
  %arrayidx5.us.i.13 = getelementptr inbounds i8, i8* %src2.addr.028.us.i, i32 13
  %40 = load i8, i8* %arrayidx5.us.i.13, align 1, !tbaa !2
  %conv6.us.i.13 = zext i8 %40 to i32
  %add.us.i.13 = add nuw nsw i32 %conv.us.i.13, 1
  %add7.us.i.13 = add nuw nsw i32 %add.us.i.13, %conv6.us.i.13
  %41 = lshr i32 %add7.us.i.13, 1
  %conv8.us.i.13 = trunc i32 %41 to i8
  %arrayidx9.us.i.13 = getelementptr inbounds i8, i8* %dst.addr.030.us.i, i32 13
  store i8 %conv8.us.i.13, i8* %arrayidx9.us.i.13, align 1, !tbaa !2
  %arrayidx.us.i.14 = getelementptr inbounds i8, i8* %src1.addr.029.us.i, i32 14
  %42 = load i8, i8* %arrayidx.us.i.14, align 1, !tbaa !2
  %conv.us.i.14 = zext i8 %42 to i32
  %arrayidx5.us.i.14 = getelementptr inbounds i8, i8* %src2.addr.028.us.i, i32 14
  %43 = load i8, i8* %arrayidx5.us.i.14, align 1, !tbaa !2
  %conv6.us.i.14 = zext i8 %43 to i32
  %add.us.i.14 = add nuw nsw i32 %conv.us.i.14, 1
  %add7.us.i.14 = add nuw nsw i32 %add.us.i.14, %conv6.us.i.14
  %44 = lshr i32 %add7.us.i.14, 1
  %conv8.us.i.14 = trunc i32 %44 to i8
  %arrayidx9.us.i.14 = getelementptr inbounds i8, i8* %dst.addr.030.us.i, i32 14
  store i8 %conv8.us.i.14, i8* %arrayidx9.us.i.14, align 1, !tbaa !2
  %arrayidx.us.i.15 = getelementptr inbounds i8, i8* %src1.addr.029.us.i, i32 15
  %45 = load i8, i8* %arrayidx.us.i.15, align 1, !tbaa !2
  %conv.us.i.15 = zext i8 %45 to i32
  %arrayidx5.us.i.15 = getelementptr inbounds i8, i8* %src2.addr.028.us.i, i32 15
  %46 = load i8, i8* %arrayidx5.us.i.15, align 1, !tbaa !2
  %conv6.us.i.15 = zext i8 %46 to i32
  %add.us.i.15 = add nuw nsw i32 %conv.us.i.15, 1
  %add7.us.i.15 = add nuw nsw i32 %add.us.i.15, %conv6.us.i.15
  %47 = lshr i32 %add7.us.i.15, 1
  %conv8.us.i.15 = trunc i32 %47 to i8
  %arrayidx9.us.i.15 = getelementptr inbounds i8, i8* %dst.addr.030.us.i, i32 15
  store i8 %conv8.us.i.15, i8* %arrayidx9.us.i.15, align 1, !tbaa !2
  %add.ptr.us.i = getelementptr inbounds i8, i8* %src1.addr.029.us.i, i32 %i_stride_pix2
  %add.ptr10.us.i = getelementptr inbounds i8, i8* %src2.addr.028.us.i, i32 %i_stride_pix3
  %add.ptr11.us.i = getelementptr inbounds i8, i8* %dst.addr.030.us.i, i32 %i_stride_pix1
  %inc13.us.i = add nuw nsw i32 %y.031.us.i, 1
  %exitcond33.i = icmp eq i32 %inc13.us.i, 16
  br i1 %exitcond33.i, label %if.end, label %for.cond1.preheader.us.i

if.else:                                          ; preds = %entry
  %sub.i = sub nsw i32 64, %weight
  br label %for.cond1.preheader.us.i2

for.cond1.preheader.us.i2:                        ; preds = %for.cond1.preheader.us.i2, %if.else
  %y.033.us.i = phi i32 [ %inc11.us.i, %for.cond1.preheader.us.i2 ], [ 0, %if.else ]
  %dst.addr.032.us.i = phi i8* [ %add.ptr.us.i12, %for.cond1.preheader.us.i2 ], [ %pix1, %if.else ]
  %src1.addr.031.us.i = phi i8* [ %add.ptr12.us.i, %for.cond1.preheader.us.i2 ], [ %pix2, %if.else ]
  %src2.addr.030.us.i = phi i8* [ %add.ptr13.us.i, %for.cond1.preheader.us.i2 ], [ %pix3, %if.else ]
  %48 = load i8, i8* %src1.addr.031.us.i, align 1, !tbaa !2
  %conv.us.i4 = zext i8 %48 to i32
  %mul.us.i = mul nsw i32 %conv.us.i4, %weight
  %49 = load i8, i8* %src2.addr.030.us.i, align 1, !tbaa !2
  %conv6.us.i6 = zext i8 %49 to i32
  %mul7.us.i = mul nsw i32 %sub.i, %conv6.us.i6
  %add.us.i7 = add i32 %mul.us.i, 32
  %add8.us.i = add i32 %add.us.i7, %mul7.us.i
  %shr.us.i = ashr i32 %add8.us.i, 6
  %tobool.i.us.i = icmp ugt i32 %shr.us.i, 255
  %sub.i.us.i = sub nsw i32 0, %shr.us.i
  %shr.i.us.i = ashr i32 %sub.i.us.i, 31
  %cond.i.us.i = select i1 %tobool.i.us.i, i32 %shr.i.us.i, i32 %shr.us.i
  %conv.i.us.i = trunc i32 %cond.i.us.i to i8
  store i8 %conv.i.us.i, i8* %dst.addr.032.us.i, align 1, !tbaa !2
  %arrayidx.us.i3.1 = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 1
  %50 = load i8, i8* %arrayidx.us.i3.1, align 1, !tbaa !2
  %conv.us.i4.1 = zext i8 %50 to i32
  %mul.us.i.1 = mul nsw i32 %conv.us.i4.1, %weight
  %arrayidx5.us.i5.1 = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 1
  %51 = load i8, i8* %arrayidx5.us.i5.1, align 1, !tbaa !2
  %conv6.us.i6.1 = zext i8 %51 to i32
  %mul7.us.i.1 = mul nsw i32 %sub.i, %conv6.us.i6.1
  %add.us.i7.1 = add i32 %mul.us.i.1, 32
  %add8.us.i.1 = add i32 %add.us.i7.1, %mul7.us.i.1
  %shr.us.i.1 = ashr i32 %add8.us.i.1, 6
  %tobool.i.us.i.1 = icmp ugt i32 %shr.us.i.1, 255
  %sub.i.us.i.1 = sub nsw i32 0, %shr.us.i.1
  %shr.i.us.i.1 = ashr i32 %sub.i.us.i.1, 31
  %cond.i.us.i.1 = select i1 %tobool.i.us.i.1, i32 %shr.i.us.i.1, i32 %shr.us.i.1
  %conv.i.us.i.1 = trunc i32 %cond.i.us.i.1 to i8
  %arrayidx9.us.i8.1 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 1
  store i8 %conv.i.us.i.1, i8* %arrayidx9.us.i8.1, align 1, !tbaa !2
  %arrayidx.us.i3.2 = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 2
  %52 = load i8, i8* %arrayidx.us.i3.2, align 1, !tbaa !2
  %conv.us.i4.2 = zext i8 %52 to i32
  %mul.us.i.2 = mul nsw i32 %conv.us.i4.2, %weight
  %arrayidx5.us.i5.2 = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 2
  %53 = load i8, i8* %arrayidx5.us.i5.2, align 1, !tbaa !2
  %conv6.us.i6.2 = zext i8 %53 to i32
  %mul7.us.i.2 = mul nsw i32 %sub.i, %conv6.us.i6.2
  %add.us.i7.2 = add i32 %mul.us.i.2, 32
  %add8.us.i.2 = add i32 %add.us.i7.2, %mul7.us.i.2
  %shr.us.i.2 = ashr i32 %add8.us.i.2, 6
  %tobool.i.us.i.2 = icmp ugt i32 %shr.us.i.2, 255
  %sub.i.us.i.2 = sub nsw i32 0, %shr.us.i.2
  %shr.i.us.i.2 = ashr i32 %sub.i.us.i.2, 31
  %cond.i.us.i.2 = select i1 %tobool.i.us.i.2, i32 %shr.i.us.i.2, i32 %shr.us.i.2
  %conv.i.us.i.2 = trunc i32 %cond.i.us.i.2 to i8
  %arrayidx9.us.i8.2 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 2
  store i8 %conv.i.us.i.2, i8* %arrayidx9.us.i8.2, align 1, !tbaa !2
  %arrayidx.us.i3.3 = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 3
  %54 = load i8, i8* %arrayidx.us.i3.3, align 1, !tbaa !2
  %conv.us.i4.3 = zext i8 %54 to i32
  %mul.us.i.3 = mul nsw i32 %conv.us.i4.3, %weight
  %arrayidx5.us.i5.3 = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 3
  %55 = load i8, i8* %arrayidx5.us.i5.3, align 1, !tbaa !2
  %conv6.us.i6.3 = zext i8 %55 to i32
  %mul7.us.i.3 = mul nsw i32 %sub.i, %conv6.us.i6.3
  %add.us.i7.3 = add i32 %mul.us.i.3, 32
  %add8.us.i.3 = add i32 %add.us.i7.3, %mul7.us.i.3
  %shr.us.i.3 = ashr i32 %add8.us.i.3, 6
  %tobool.i.us.i.3 = icmp ugt i32 %shr.us.i.3, 255
  %sub.i.us.i.3 = sub nsw i32 0, %shr.us.i.3
  %shr.i.us.i.3 = ashr i32 %sub.i.us.i.3, 31
  %cond.i.us.i.3 = select i1 %tobool.i.us.i.3, i32 %shr.i.us.i.3, i32 %shr.us.i.3
  %conv.i.us.i.3 = trunc i32 %cond.i.us.i.3 to i8
  %arrayidx9.us.i8.3 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 3
  store i8 %conv.i.us.i.3, i8* %arrayidx9.us.i8.3, align 1, !tbaa !2
  %arrayidx.us.i3.4 = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 4
  %56 = load i8, i8* %arrayidx.us.i3.4, align 1, !tbaa !2
  %conv.us.i4.4 = zext i8 %56 to i32
  %mul.us.i.4 = mul nsw i32 %conv.us.i4.4, %weight
  %arrayidx5.us.i5.4 = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 4
  %57 = load i8, i8* %arrayidx5.us.i5.4, align 1, !tbaa !2
  %conv6.us.i6.4 = zext i8 %57 to i32
  %mul7.us.i.4 = mul nsw i32 %sub.i, %conv6.us.i6.4
  %add.us.i7.4 = add i32 %mul.us.i.4, 32
  %add8.us.i.4 = add i32 %add.us.i7.4, %mul7.us.i.4
  %shr.us.i.4 = ashr i32 %add8.us.i.4, 6
  %tobool.i.us.i.4 = icmp ugt i32 %shr.us.i.4, 255
  %sub.i.us.i.4 = sub nsw i32 0, %shr.us.i.4
  %shr.i.us.i.4 = ashr i32 %sub.i.us.i.4, 31
  %cond.i.us.i.4 = select i1 %tobool.i.us.i.4, i32 %shr.i.us.i.4, i32 %shr.us.i.4
  %conv.i.us.i.4 = trunc i32 %cond.i.us.i.4 to i8
  %arrayidx9.us.i8.4 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 4
  store i8 %conv.i.us.i.4, i8* %arrayidx9.us.i8.4, align 1, !tbaa !2
  %arrayidx.us.i3.5 = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 5
  %58 = load i8, i8* %arrayidx.us.i3.5, align 1, !tbaa !2
  %conv.us.i4.5 = zext i8 %58 to i32
  %mul.us.i.5 = mul nsw i32 %conv.us.i4.5, %weight
  %arrayidx5.us.i5.5 = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 5
  %59 = load i8, i8* %arrayidx5.us.i5.5, align 1, !tbaa !2
  %conv6.us.i6.5 = zext i8 %59 to i32
  %mul7.us.i.5 = mul nsw i32 %sub.i, %conv6.us.i6.5
  %add.us.i7.5 = add i32 %mul.us.i.5, 32
  %add8.us.i.5 = add i32 %add.us.i7.5, %mul7.us.i.5
  %shr.us.i.5 = ashr i32 %add8.us.i.5, 6
  %tobool.i.us.i.5 = icmp ugt i32 %shr.us.i.5, 255
  %sub.i.us.i.5 = sub nsw i32 0, %shr.us.i.5
  %shr.i.us.i.5 = ashr i32 %sub.i.us.i.5, 31
  %cond.i.us.i.5 = select i1 %tobool.i.us.i.5, i32 %shr.i.us.i.5, i32 %shr.us.i.5
  %conv.i.us.i.5 = trunc i32 %cond.i.us.i.5 to i8
  %arrayidx9.us.i8.5 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 5
  store i8 %conv.i.us.i.5, i8* %arrayidx9.us.i8.5, align 1, !tbaa !2
  %arrayidx.us.i3.6 = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 6
  %60 = load i8, i8* %arrayidx.us.i3.6, align 1, !tbaa !2
  %conv.us.i4.6 = zext i8 %60 to i32
  %mul.us.i.6 = mul nsw i32 %conv.us.i4.6, %weight
  %arrayidx5.us.i5.6 = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 6
  %61 = load i8, i8* %arrayidx5.us.i5.6, align 1, !tbaa !2
  %conv6.us.i6.6 = zext i8 %61 to i32
  %mul7.us.i.6 = mul nsw i32 %sub.i, %conv6.us.i6.6
  %add.us.i7.6 = add i32 %mul.us.i.6, 32
  %add8.us.i.6 = add i32 %add.us.i7.6, %mul7.us.i.6
  %shr.us.i.6 = ashr i32 %add8.us.i.6, 6
  %tobool.i.us.i.6 = icmp ugt i32 %shr.us.i.6, 255
  %sub.i.us.i.6 = sub nsw i32 0, %shr.us.i.6
  %shr.i.us.i.6 = ashr i32 %sub.i.us.i.6, 31
  %cond.i.us.i.6 = select i1 %tobool.i.us.i.6, i32 %shr.i.us.i.6, i32 %shr.us.i.6
  %conv.i.us.i.6 = trunc i32 %cond.i.us.i.6 to i8
  %arrayidx9.us.i8.6 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 6
  store i8 %conv.i.us.i.6, i8* %arrayidx9.us.i8.6, align 1, !tbaa !2
  %arrayidx.us.i3.7 = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 7
  %62 = load i8, i8* %arrayidx.us.i3.7, align 1, !tbaa !2
  %conv.us.i4.7 = zext i8 %62 to i32
  %mul.us.i.7 = mul nsw i32 %conv.us.i4.7, %weight
  %arrayidx5.us.i5.7 = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 7
  %63 = load i8, i8* %arrayidx5.us.i5.7, align 1, !tbaa !2
  %conv6.us.i6.7 = zext i8 %63 to i32
  %mul7.us.i.7 = mul nsw i32 %sub.i, %conv6.us.i6.7
  %add.us.i7.7 = add i32 %mul.us.i.7, 32
  %add8.us.i.7 = add i32 %add.us.i7.7, %mul7.us.i.7
  %shr.us.i.7 = ashr i32 %add8.us.i.7, 6
  %tobool.i.us.i.7 = icmp ugt i32 %shr.us.i.7, 255
  %sub.i.us.i.7 = sub nsw i32 0, %shr.us.i.7
  %shr.i.us.i.7 = ashr i32 %sub.i.us.i.7, 31
  %cond.i.us.i.7 = select i1 %tobool.i.us.i.7, i32 %shr.i.us.i.7, i32 %shr.us.i.7
  %conv.i.us.i.7 = trunc i32 %cond.i.us.i.7 to i8
  %arrayidx9.us.i8.7 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 7
  store i8 %conv.i.us.i.7, i8* %arrayidx9.us.i8.7, align 1, !tbaa !2
  %arrayidx.us.i3.8 = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 8
  %64 = load i8, i8* %arrayidx.us.i3.8, align 1, !tbaa !2
  %conv.us.i4.8 = zext i8 %64 to i32
  %mul.us.i.8 = mul nsw i32 %conv.us.i4.8, %weight
  %arrayidx5.us.i5.8 = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 8
  %65 = load i8, i8* %arrayidx5.us.i5.8, align 1, !tbaa !2
  %conv6.us.i6.8 = zext i8 %65 to i32
  %mul7.us.i.8 = mul nsw i32 %sub.i, %conv6.us.i6.8
  %add.us.i7.8 = add i32 %mul.us.i.8, 32
  %add8.us.i.8 = add i32 %add.us.i7.8, %mul7.us.i.8
  %shr.us.i.8 = ashr i32 %add8.us.i.8, 6
  %tobool.i.us.i.8 = icmp ugt i32 %shr.us.i.8, 255
  %sub.i.us.i.8 = sub nsw i32 0, %shr.us.i.8
  %shr.i.us.i.8 = ashr i32 %sub.i.us.i.8, 31
  %cond.i.us.i.8 = select i1 %tobool.i.us.i.8, i32 %shr.i.us.i.8, i32 %shr.us.i.8
  %conv.i.us.i.8 = trunc i32 %cond.i.us.i.8 to i8
  %arrayidx9.us.i8.8 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 8
  store i8 %conv.i.us.i.8, i8* %arrayidx9.us.i8.8, align 1, !tbaa !2
  %arrayidx.us.i3.9 = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 9
  %66 = load i8, i8* %arrayidx.us.i3.9, align 1, !tbaa !2
  %conv.us.i4.9 = zext i8 %66 to i32
  %mul.us.i.9 = mul nsw i32 %conv.us.i4.9, %weight
  %arrayidx5.us.i5.9 = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 9
  %67 = load i8, i8* %arrayidx5.us.i5.9, align 1, !tbaa !2
  %conv6.us.i6.9 = zext i8 %67 to i32
  %mul7.us.i.9 = mul nsw i32 %sub.i, %conv6.us.i6.9
  %add.us.i7.9 = add i32 %mul.us.i.9, 32
  %add8.us.i.9 = add i32 %add.us.i7.9, %mul7.us.i.9
  %shr.us.i.9 = ashr i32 %add8.us.i.9, 6
  %tobool.i.us.i.9 = icmp ugt i32 %shr.us.i.9, 255
  %sub.i.us.i.9 = sub nsw i32 0, %shr.us.i.9
  %shr.i.us.i.9 = ashr i32 %sub.i.us.i.9, 31
  %cond.i.us.i.9 = select i1 %tobool.i.us.i.9, i32 %shr.i.us.i.9, i32 %shr.us.i.9
  %conv.i.us.i.9 = trunc i32 %cond.i.us.i.9 to i8
  %arrayidx9.us.i8.9 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 9
  store i8 %conv.i.us.i.9, i8* %arrayidx9.us.i8.9, align 1, !tbaa !2
  %arrayidx.us.i3.10 = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 10
  %68 = load i8, i8* %arrayidx.us.i3.10, align 1, !tbaa !2
  %conv.us.i4.10 = zext i8 %68 to i32
  %mul.us.i.10 = mul nsw i32 %conv.us.i4.10, %weight
  %arrayidx5.us.i5.10 = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 10
  %69 = load i8, i8* %arrayidx5.us.i5.10, align 1, !tbaa !2
  %conv6.us.i6.10 = zext i8 %69 to i32
  %mul7.us.i.10 = mul nsw i32 %sub.i, %conv6.us.i6.10
  %add.us.i7.10 = add i32 %mul.us.i.10, 32
  %add8.us.i.10 = add i32 %add.us.i7.10, %mul7.us.i.10
  %shr.us.i.10 = ashr i32 %add8.us.i.10, 6
  %tobool.i.us.i.10 = icmp ugt i32 %shr.us.i.10, 255
  %sub.i.us.i.10 = sub nsw i32 0, %shr.us.i.10
  %shr.i.us.i.10 = ashr i32 %sub.i.us.i.10, 31
  %cond.i.us.i.10 = select i1 %tobool.i.us.i.10, i32 %shr.i.us.i.10, i32 %shr.us.i.10
  %conv.i.us.i.10 = trunc i32 %cond.i.us.i.10 to i8
  %arrayidx9.us.i8.10 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 10
  store i8 %conv.i.us.i.10, i8* %arrayidx9.us.i8.10, align 1, !tbaa !2
  %arrayidx.us.i3.11 = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 11
  %70 = load i8, i8* %arrayidx.us.i3.11, align 1, !tbaa !2
  %conv.us.i4.11 = zext i8 %70 to i32
  %mul.us.i.11 = mul nsw i32 %conv.us.i4.11, %weight
  %arrayidx5.us.i5.11 = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 11
  %71 = load i8, i8* %arrayidx5.us.i5.11, align 1, !tbaa !2
  %conv6.us.i6.11 = zext i8 %71 to i32
  %mul7.us.i.11 = mul nsw i32 %sub.i, %conv6.us.i6.11
  %add.us.i7.11 = add i32 %mul.us.i.11, 32
  %add8.us.i.11 = add i32 %add.us.i7.11, %mul7.us.i.11
  %shr.us.i.11 = ashr i32 %add8.us.i.11, 6
  %tobool.i.us.i.11 = icmp ugt i32 %shr.us.i.11, 255
  %sub.i.us.i.11 = sub nsw i32 0, %shr.us.i.11
  %shr.i.us.i.11 = ashr i32 %sub.i.us.i.11, 31
  %cond.i.us.i.11 = select i1 %tobool.i.us.i.11, i32 %shr.i.us.i.11, i32 %shr.us.i.11
  %conv.i.us.i.11 = trunc i32 %cond.i.us.i.11 to i8
  %arrayidx9.us.i8.11 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 11
  store i8 %conv.i.us.i.11, i8* %arrayidx9.us.i8.11, align 1, !tbaa !2
  %arrayidx.us.i3.12 = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 12
  %72 = load i8, i8* %arrayidx.us.i3.12, align 1, !tbaa !2
  %conv.us.i4.12 = zext i8 %72 to i32
  %mul.us.i.12 = mul nsw i32 %conv.us.i4.12, %weight
  %arrayidx5.us.i5.12 = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 12
  %73 = load i8, i8* %arrayidx5.us.i5.12, align 1, !tbaa !2
  %conv6.us.i6.12 = zext i8 %73 to i32
  %mul7.us.i.12 = mul nsw i32 %sub.i, %conv6.us.i6.12
  %add.us.i7.12 = add i32 %mul.us.i.12, 32
  %add8.us.i.12 = add i32 %add.us.i7.12, %mul7.us.i.12
  %shr.us.i.12 = ashr i32 %add8.us.i.12, 6
  %tobool.i.us.i.12 = icmp ugt i32 %shr.us.i.12, 255
  %sub.i.us.i.12 = sub nsw i32 0, %shr.us.i.12
  %shr.i.us.i.12 = ashr i32 %sub.i.us.i.12, 31
  %cond.i.us.i.12 = select i1 %tobool.i.us.i.12, i32 %shr.i.us.i.12, i32 %shr.us.i.12
  %conv.i.us.i.12 = trunc i32 %cond.i.us.i.12 to i8
  %arrayidx9.us.i8.12 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 12
  store i8 %conv.i.us.i.12, i8* %arrayidx9.us.i8.12, align 1, !tbaa !2
  %arrayidx.us.i3.13 = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 13
  %74 = load i8, i8* %arrayidx.us.i3.13, align 1, !tbaa !2
  %conv.us.i4.13 = zext i8 %74 to i32
  %mul.us.i.13 = mul nsw i32 %conv.us.i4.13, %weight
  %arrayidx5.us.i5.13 = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 13
  %75 = load i8, i8* %arrayidx5.us.i5.13, align 1, !tbaa !2
  %conv6.us.i6.13 = zext i8 %75 to i32
  %mul7.us.i.13 = mul nsw i32 %sub.i, %conv6.us.i6.13
  %add.us.i7.13 = add i32 %mul.us.i.13, 32
  %add8.us.i.13 = add i32 %add.us.i7.13, %mul7.us.i.13
  %shr.us.i.13 = ashr i32 %add8.us.i.13, 6
  %tobool.i.us.i.13 = icmp ugt i32 %shr.us.i.13, 255
  %sub.i.us.i.13 = sub nsw i32 0, %shr.us.i.13
  %shr.i.us.i.13 = ashr i32 %sub.i.us.i.13, 31
  %cond.i.us.i.13 = select i1 %tobool.i.us.i.13, i32 %shr.i.us.i.13, i32 %shr.us.i.13
  %conv.i.us.i.13 = trunc i32 %cond.i.us.i.13 to i8
  %arrayidx9.us.i8.13 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 13
  store i8 %conv.i.us.i.13, i8* %arrayidx9.us.i8.13, align 1, !tbaa !2
  %arrayidx.us.i3.14 = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 14
  %76 = load i8, i8* %arrayidx.us.i3.14, align 1, !tbaa !2
  %conv.us.i4.14 = zext i8 %76 to i32
  %mul.us.i.14 = mul nsw i32 %conv.us.i4.14, %weight
  %arrayidx5.us.i5.14 = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 14
  %77 = load i8, i8* %arrayidx5.us.i5.14, align 1, !tbaa !2
  %conv6.us.i6.14 = zext i8 %77 to i32
  %mul7.us.i.14 = mul nsw i32 %sub.i, %conv6.us.i6.14
  %add.us.i7.14 = add i32 %mul.us.i.14, 32
  %add8.us.i.14 = add i32 %add.us.i7.14, %mul7.us.i.14
  %shr.us.i.14 = ashr i32 %add8.us.i.14, 6
  %tobool.i.us.i.14 = icmp ugt i32 %shr.us.i.14, 255
  %sub.i.us.i.14 = sub nsw i32 0, %shr.us.i.14
  %shr.i.us.i.14 = ashr i32 %sub.i.us.i.14, 31
  %cond.i.us.i.14 = select i1 %tobool.i.us.i.14, i32 %shr.i.us.i.14, i32 %shr.us.i.14
  %conv.i.us.i.14 = trunc i32 %cond.i.us.i.14 to i8
  %arrayidx9.us.i8.14 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 14
  store i8 %conv.i.us.i.14, i8* %arrayidx9.us.i8.14, align 1, !tbaa !2
  %arrayidx.us.i3.15 = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 15
  %78 = load i8, i8* %arrayidx.us.i3.15, align 1, !tbaa !2
  %conv.us.i4.15 = zext i8 %78 to i32
  %mul.us.i.15 = mul nsw i32 %conv.us.i4.15, %weight
  %arrayidx5.us.i5.15 = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 15
  %79 = load i8, i8* %arrayidx5.us.i5.15, align 1, !tbaa !2
  %conv6.us.i6.15 = zext i8 %79 to i32
  %mul7.us.i.15 = mul nsw i32 %sub.i, %conv6.us.i6.15
  %add.us.i7.15 = add i32 %mul.us.i.15, 32
  %add8.us.i.15 = add i32 %add.us.i7.15, %mul7.us.i.15
  %shr.us.i.15 = ashr i32 %add8.us.i.15, 6
  %tobool.i.us.i.15 = icmp ugt i32 %shr.us.i.15, 255
  %sub.i.us.i.15 = sub nsw i32 0, %shr.us.i.15
  %shr.i.us.i.15 = ashr i32 %sub.i.us.i.15, 31
  %cond.i.us.i.15 = select i1 %tobool.i.us.i.15, i32 %shr.i.us.i.15, i32 %shr.us.i.15
  %conv.i.us.i.15 = trunc i32 %cond.i.us.i.15 to i8
  %arrayidx9.us.i8.15 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 15
  store i8 %conv.i.us.i.15, i8* %arrayidx9.us.i8.15, align 1, !tbaa !2
  %inc11.us.i = add nuw nsw i32 %y.033.us.i, 1
  %add.ptr.us.i12 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 %i_stride_pix1
  %add.ptr12.us.i = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 %i_stride_pix2
  %add.ptr13.us.i = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 %i_stride_pix3
  %exitcond35.i = icmp eq i32 %inc11.us.i, 16
  br i1 %exitcond35.i, label %if.end, label %for.cond1.preheader.us.i2

if.end:                                           ; preds = %for.cond1.preheader.us.i2, %for.cond1.preheader.us.i
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @pixel_avg_16x8(i8* nocapture %pix1, i32 %i_stride_pix1, i8* nocapture readonly %pix2, i32 %i_stride_pix2, i8* nocapture readonly %pix3, i32 %i_stride_pix3, i32 %weight) #2 {
entry:
  %cmp = icmp eq i32 %weight, 32
  br i1 %cmp, label %for.cond1.preheader.us.i, label %if.else

for.cond1.preheader.us.i:                         ; preds = %entry, %for.cond1.preheader.us.i
  %y.031.us.i = phi i32 [ %inc13.us.i, %for.cond1.preheader.us.i ], [ 0, %entry ]
  %dst.addr.030.us.i = phi i8* [ %add.ptr11.us.i, %for.cond1.preheader.us.i ], [ %pix1, %entry ]
  %src1.addr.029.us.i = phi i8* [ %add.ptr.us.i, %for.cond1.preheader.us.i ], [ %pix2, %entry ]
  %src2.addr.028.us.i = phi i8* [ %add.ptr10.us.i, %for.cond1.preheader.us.i ], [ %pix3, %entry ]
  %0 = load i8, i8* %src1.addr.029.us.i, align 1, !tbaa !2
  %conv.us.i = zext i8 %0 to i32
  %1 = load i8, i8* %src2.addr.028.us.i, align 1, !tbaa !2
  %conv6.us.i = zext i8 %1 to i32
  %add.us.i = add nuw nsw i32 %conv.us.i, 1
  %add7.us.i = add nuw nsw i32 %add.us.i, %conv6.us.i
  %2 = lshr i32 %add7.us.i, 1
  %conv8.us.i = trunc i32 %2 to i8
  store i8 %conv8.us.i, i8* %dst.addr.030.us.i, align 1, !tbaa !2
  %arrayidx.us.i.1 = getelementptr inbounds i8, i8* %src1.addr.029.us.i, i32 1
  %3 = load i8, i8* %arrayidx.us.i.1, align 1, !tbaa !2
  %conv.us.i.1 = zext i8 %3 to i32
  %arrayidx5.us.i.1 = getelementptr inbounds i8, i8* %src2.addr.028.us.i, i32 1
  %4 = load i8, i8* %arrayidx5.us.i.1, align 1, !tbaa !2
  %conv6.us.i.1 = zext i8 %4 to i32
  %add.us.i.1 = add nuw nsw i32 %conv.us.i.1, 1
  %add7.us.i.1 = add nuw nsw i32 %add.us.i.1, %conv6.us.i.1
  %5 = lshr i32 %add7.us.i.1, 1
  %conv8.us.i.1 = trunc i32 %5 to i8
  %arrayidx9.us.i.1 = getelementptr inbounds i8, i8* %dst.addr.030.us.i, i32 1
  store i8 %conv8.us.i.1, i8* %arrayidx9.us.i.1, align 1, !tbaa !2
  %arrayidx.us.i.2 = getelementptr inbounds i8, i8* %src1.addr.029.us.i, i32 2
  %6 = load i8, i8* %arrayidx.us.i.2, align 1, !tbaa !2
  %conv.us.i.2 = zext i8 %6 to i32
  %arrayidx5.us.i.2 = getelementptr inbounds i8, i8* %src2.addr.028.us.i, i32 2
  %7 = load i8, i8* %arrayidx5.us.i.2, align 1, !tbaa !2
  %conv6.us.i.2 = zext i8 %7 to i32
  %add.us.i.2 = add nuw nsw i32 %conv.us.i.2, 1
  %add7.us.i.2 = add nuw nsw i32 %add.us.i.2, %conv6.us.i.2
  %8 = lshr i32 %add7.us.i.2, 1
  %conv8.us.i.2 = trunc i32 %8 to i8
  %arrayidx9.us.i.2 = getelementptr inbounds i8, i8* %dst.addr.030.us.i, i32 2
  store i8 %conv8.us.i.2, i8* %arrayidx9.us.i.2, align 1, !tbaa !2
  %arrayidx.us.i.3 = getelementptr inbounds i8, i8* %src1.addr.029.us.i, i32 3
  %9 = load i8, i8* %arrayidx.us.i.3, align 1, !tbaa !2
  %conv.us.i.3 = zext i8 %9 to i32
  %arrayidx5.us.i.3 = getelementptr inbounds i8, i8* %src2.addr.028.us.i, i32 3
  %10 = load i8, i8* %arrayidx5.us.i.3, align 1, !tbaa !2
  %conv6.us.i.3 = zext i8 %10 to i32
  %add.us.i.3 = add nuw nsw i32 %conv.us.i.3, 1
  %add7.us.i.3 = add nuw nsw i32 %add.us.i.3, %conv6.us.i.3
  %11 = lshr i32 %add7.us.i.3, 1
  %conv8.us.i.3 = trunc i32 %11 to i8
  %arrayidx9.us.i.3 = getelementptr inbounds i8, i8* %dst.addr.030.us.i, i32 3
  store i8 %conv8.us.i.3, i8* %arrayidx9.us.i.3, align 1, !tbaa !2
  %arrayidx.us.i.4 = getelementptr inbounds i8, i8* %src1.addr.029.us.i, i32 4
  %12 = load i8, i8* %arrayidx.us.i.4, align 1, !tbaa !2
  %conv.us.i.4 = zext i8 %12 to i32
  %arrayidx5.us.i.4 = getelementptr inbounds i8, i8* %src2.addr.028.us.i, i32 4
  %13 = load i8, i8* %arrayidx5.us.i.4, align 1, !tbaa !2
  %conv6.us.i.4 = zext i8 %13 to i32
  %add.us.i.4 = add nuw nsw i32 %conv.us.i.4, 1
  %add7.us.i.4 = add nuw nsw i32 %add.us.i.4, %conv6.us.i.4
  %14 = lshr i32 %add7.us.i.4, 1
  %conv8.us.i.4 = trunc i32 %14 to i8
  %arrayidx9.us.i.4 = getelementptr inbounds i8, i8* %dst.addr.030.us.i, i32 4
  store i8 %conv8.us.i.4, i8* %arrayidx9.us.i.4, align 1, !tbaa !2
  %arrayidx.us.i.5 = getelementptr inbounds i8, i8* %src1.addr.029.us.i, i32 5
  %15 = load i8, i8* %arrayidx.us.i.5, align 1, !tbaa !2
  %conv.us.i.5 = zext i8 %15 to i32
  %arrayidx5.us.i.5 = getelementptr inbounds i8, i8* %src2.addr.028.us.i, i32 5
  %16 = load i8, i8* %arrayidx5.us.i.5, align 1, !tbaa !2
  %conv6.us.i.5 = zext i8 %16 to i32
  %add.us.i.5 = add nuw nsw i32 %conv.us.i.5, 1
  %add7.us.i.5 = add nuw nsw i32 %add.us.i.5, %conv6.us.i.5
  %17 = lshr i32 %add7.us.i.5, 1
  %conv8.us.i.5 = trunc i32 %17 to i8
  %arrayidx9.us.i.5 = getelementptr inbounds i8, i8* %dst.addr.030.us.i, i32 5
  store i8 %conv8.us.i.5, i8* %arrayidx9.us.i.5, align 1, !tbaa !2
  %arrayidx.us.i.6 = getelementptr inbounds i8, i8* %src1.addr.029.us.i, i32 6
  %18 = load i8, i8* %arrayidx.us.i.6, align 1, !tbaa !2
  %conv.us.i.6 = zext i8 %18 to i32
  %arrayidx5.us.i.6 = getelementptr inbounds i8, i8* %src2.addr.028.us.i, i32 6
  %19 = load i8, i8* %arrayidx5.us.i.6, align 1, !tbaa !2
  %conv6.us.i.6 = zext i8 %19 to i32
  %add.us.i.6 = add nuw nsw i32 %conv.us.i.6, 1
  %add7.us.i.6 = add nuw nsw i32 %add.us.i.6, %conv6.us.i.6
  %20 = lshr i32 %add7.us.i.6, 1
  %conv8.us.i.6 = trunc i32 %20 to i8
  %arrayidx9.us.i.6 = getelementptr inbounds i8, i8* %dst.addr.030.us.i, i32 6
  store i8 %conv8.us.i.6, i8* %arrayidx9.us.i.6, align 1, !tbaa !2
  %arrayidx.us.i.7 = getelementptr inbounds i8, i8* %src1.addr.029.us.i, i32 7
  %21 = load i8, i8* %arrayidx.us.i.7, align 1, !tbaa !2
  %conv.us.i.7 = zext i8 %21 to i32
  %arrayidx5.us.i.7 = getelementptr inbounds i8, i8* %src2.addr.028.us.i, i32 7
  %22 = load i8, i8* %arrayidx5.us.i.7, align 1, !tbaa !2
  %conv6.us.i.7 = zext i8 %22 to i32
  %add.us.i.7 = add nuw nsw i32 %conv.us.i.7, 1
  %add7.us.i.7 = add nuw nsw i32 %add.us.i.7, %conv6.us.i.7
  %23 = lshr i32 %add7.us.i.7, 1
  %conv8.us.i.7 = trunc i32 %23 to i8
  %arrayidx9.us.i.7 = getelementptr inbounds i8, i8* %dst.addr.030.us.i, i32 7
  store i8 %conv8.us.i.7, i8* %arrayidx9.us.i.7, align 1, !tbaa !2
  %arrayidx.us.i.8 = getelementptr inbounds i8, i8* %src1.addr.029.us.i, i32 8
  %24 = load i8, i8* %arrayidx.us.i.8, align 1, !tbaa !2
  %conv.us.i.8 = zext i8 %24 to i32
  %arrayidx5.us.i.8 = getelementptr inbounds i8, i8* %src2.addr.028.us.i, i32 8
  %25 = load i8, i8* %arrayidx5.us.i.8, align 1, !tbaa !2
  %conv6.us.i.8 = zext i8 %25 to i32
  %add.us.i.8 = add nuw nsw i32 %conv.us.i.8, 1
  %add7.us.i.8 = add nuw nsw i32 %add.us.i.8, %conv6.us.i.8
  %26 = lshr i32 %add7.us.i.8, 1
  %conv8.us.i.8 = trunc i32 %26 to i8
  %arrayidx9.us.i.8 = getelementptr inbounds i8, i8* %dst.addr.030.us.i, i32 8
  store i8 %conv8.us.i.8, i8* %arrayidx9.us.i.8, align 1, !tbaa !2
  %arrayidx.us.i.9 = getelementptr inbounds i8, i8* %src1.addr.029.us.i, i32 9
  %27 = load i8, i8* %arrayidx.us.i.9, align 1, !tbaa !2
  %conv.us.i.9 = zext i8 %27 to i32
  %arrayidx5.us.i.9 = getelementptr inbounds i8, i8* %src2.addr.028.us.i, i32 9
  %28 = load i8, i8* %arrayidx5.us.i.9, align 1, !tbaa !2
  %conv6.us.i.9 = zext i8 %28 to i32
  %add.us.i.9 = add nuw nsw i32 %conv.us.i.9, 1
  %add7.us.i.9 = add nuw nsw i32 %add.us.i.9, %conv6.us.i.9
  %29 = lshr i32 %add7.us.i.9, 1
  %conv8.us.i.9 = trunc i32 %29 to i8
  %arrayidx9.us.i.9 = getelementptr inbounds i8, i8* %dst.addr.030.us.i, i32 9
  store i8 %conv8.us.i.9, i8* %arrayidx9.us.i.9, align 1, !tbaa !2
  %arrayidx.us.i.10 = getelementptr inbounds i8, i8* %src1.addr.029.us.i, i32 10
  %30 = load i8, i8* %arrayidx.us.i.10, align 1, !tbaa !2
  %conv.us.i.10 = zext i8 %30 to i32
  %arrayidx5.us.i.10 = getelementptr inbounds i8, i8* %src2.addr.028.us.i, i32 10
  %31 = load i8, i8* %arrayidx5.us.i.10, align 1, !tbaa !2
  %conv6.us.i.10 = zext i8 %31 to i32
  %add.us.i.10 = add nuw nsw i32 %conv.us.i.10, 1
  %add7.us.i.10 = add nuw nsw i32 %add.us.i.10, %conv6.us.i.10
  %32 = lshr i32 %add7.us.i.10, 1
  %conv8.us.i.10 = trunc i32 %32 to i8
  %arrayidx9.us.i.10 = getelementptr inbounds i8, i8* %dst.addr.030.us.i, i32 10
  store i8 %conv8.us.i.10, i8* %arrayidx9.us.i.10, align 1, !tbaa !2
  %arrayidx.us.i.11 = getelementptr inbounds i8, i8* %src1.addr.029.us.i, i32 11
  %33 = load i8, i8* %arrayidx.us.i.11, align 1, !tbaa !2
  %conv.us.i.11 = zext i8 %33 to i32
  %arrayidx5.us.i.11 = getelementptr inbounds i8, i8* %src2.addr.028.us.i, i32 11
  %34 = load i8, i8* %arrayidx5.us.i.11, align 1, !tbaa !2
  %conv6.us.i.11 = zext i8 %34 to i32
  %add.us.i.11 = add nuw nsw i32 %conv.us.i.11, 1
  %add7.us.i.11 = add nuw nsw i32 %add.us.i.11, %conv6.us.i.11
  %35 = lshr i32 %add7.us.i.11, 1
  %conv8.us.i.11 = trunc i32 %35 to i8
  %arrayidx9.us.i.11 = getelementptr inbounds i8, i8* %dst.addr.030.us.i, i32 11
  store i8 %conv8.us.i.11, i8* %arrayidx9.us.i.11, align 1, !tbaa !2
  %arrayidx.us.i.12 = getelementptr inbounds i8, i8* %src1.addr.029.us.i, i32 12
  %36 = load i8, i8* %arrayidx.us.i.12, align 1, !tbaa !2
  %conv.us.i.12 = zext i8 %36 to i32
  %arrayidx5.us.i.12 = getelementptr inbounds i8, i8* %src2.addr.028.us.i, i32 12
  %37 = load i8, i8* %arrayidx5.us.i.12, align 1, !tbaa !2
  %conv6.us.i.12 = zext i8 %37 to i32
  %add.us.i.12 = add nuw nsw i32 %conv.us.i.12, 1
  %add7.us.i.12 = add nuw nsw i32 %add.us.i.12, %conv6.us.i.12
  %38 = lshr i32 %add7.us.i.12, 1
  %conv8.us.i.12 = trunc i32 %38 to i8
  %arrayidx9.us.i.12 = getelementptr inbounds i8, i8* %dst.addr.030.us.i, i32 12
  store i8 %conv8.us.i.12, i8* %arrayidx9.us.i.12, align 1, !tbaa !2
  %arrayidx.us.i.13 = getelementptr inbounds i8, i8* %src1.addr.029.us.i, i32 13
  %39 = load i8, i8* %arrayidx.us.i.13, align 1, !tbaa !2
  %conv.us.i.13 = zext i8 %39 to i32
  %arrayidx5.us.i.13 = getelementptr inbounds i8, i8* %src2.addr.028.us.i, i32 13
  %40 = load i8, i8* %arrayidx5.us.i.13, align 1, !tbaa !2
  %conv6.us.i.13 = zext i8 %40 to i32
  %add.us.i.13 = add nuw nsw i32 %conv.us.i.13, 1
  %add7.us.i.13 = add nuw nsw i32 %add.us.i.13, %conv6.us.i.13
  %41 = lshr i32 %add7.us.i.13, 1
  %conv8.us.i.13 = trunc i32 %41 to i8
  %arrayidx9.us.i.13 = getelementptr inbounds i8, i8* %dst.addr.030.us.i, i32 13
  store i8 %conv8.us.i.13, i8* %arrayidx9.us.i.13, align 1, !tbaa !2
  %arrayidx.us.i.14 = getelementptr inbounds i8, i8* %src1.addr.029.us.i, i32 14
  %42 = load i8, i8* %arrayidx.us.i.14, align 1, !tbaa !2
  %conv.us.i.14 = zext i8 %42 to i32
  %arrayidx5.us.i.14 = getelementptr inbounds i8, i8* %src2.addr.028.us.i, i32 14
  %43 = load i8, i8* %arrayidx5.us.i.14, align 1, !tbaa !2
  %conv6.us.i.14 = zext i8 %43 to i32
  %add.us.i.14 = add nuw nsw i32 %conv.us.i.14, 1
  %add7.us.i.14 = add nuw nsw i32 %add.us.i.14, %conv6.us.i.14
  %44 = lshr i32 %add7.us.i.14, 1
  %conv8.us.i.14 = trunc i32 %44 to i8
  %arrayidx9.us.i.14 = getelementptr inbounds i8, i8* %dst.addr.030.us.i, i32 14
  store i8 %conv8.us.i.14, i8* %arrayidx9.us.i.14, align 1, !tbaa !2
  %arrayidx.us.i.15 = getelementptr inbounds i8, i8* %src1.addr.029.us.i, i32 15
  %45 = load i8, i8* %arrayidx.us.i.15, align 1, !tbaa !2
  %conv.us.i.15 = zext i8 %45 to i32
  %arrayidx5.us.i.15 = getelementptr inbounds i8, i8* %src2.addr.028.us.i, i32 15
  %46 = load i8, i8* %arrayidx5.us.i.15, align 1, !tbaa !2
  %conv6.us.i.15 = zext i8 %46 to i32
  %add.us.i.15 = add nuw nsw i32 %conv.us.i.15, 1
  %add7.us.i.15 = add nuw nsw i32 %add.us.i.15, %conv6.us.i.15
  %47 = lshr i32 %add7.us.i.15, 1
  %conv8.us.i.15 = trunc i32 %47 to i8
  %arrayidx9.us.i.15 = getelementptr inbounds i8, i8* %dst.addr.030.us.i, i32 15
  store i8 %conv8.us.i.15, i8* %arrayidx9.us.i.15, align 1, !tbaa !2
  %add.ptr.us.i = getelementptr inbounds i8, i8* %src1.addr.029.us.i, i32 %i_stride_pix2
  %add.ptr10.us.i = getelementptr inbounds i8, i8* %src2.addr.028.us.i, i32 %i_stride_pix3
  %add.ptr11.us.i = getelementptr inbounds i8, i8* %dst.addr.030.us.i, i32 %i_stride_pix1
  %inc13.us.i = add nuw nsw i32 %y.031.us.i, 1
  %exitcond33.i = icmp eq i32 %inc13.us.i, 8
  br i1 %exitcond33.i, label %if.end, label %for.cond1.preheader.us.i

if.else:                                          ; preds = %entry
  %sub.i = sub nsw i32 64, %weight
  br label %for.cond1.preheader.us.i2

for.cond1.preheader.us.i2:                        ; preds = %for.cond1.preheader.us.i2, %if.else
  %y.033.us.i = phi i32 [ %inc11.us.i, %for.cond1.preheader.us.i2 ], [ 0, %if.else ]
  %dst.addr.032.us.i = phi i8* [ %add.ptr.us.i12, %for.cond1.preheader.us.i2 ], [ %pix1, %if.else ]
  %src1.addr.031.us.i = phi i8* [ %add.ptr12.us.i, %for.cond1.preheader.us.i2 ], [ %pix2, %if.else ]
  %src2.addr.030.us.i = phi i8* [ %add.ptr13.us.i, %for.cond1.preheader.us.i2 ], [ %pix3, %if.else ]
  %48 = load i8, i8* %src1.addr.031.us.i, align 1, !tbaa !2
  %conv.us.i4 = zext i8 %48 to i32
  %mul.us.i = mul nsw i32 %conv.us.i4, %weight
  %49 = load i8, i8* %src2.addr.030.us.i, align 1, !tbaa !2
  %conv6.us.i6 = zext i8 %49 to i32
  %mul7.us.i = mul nsw i32 %sub.i, %conv6.us.i6
  %add.us.i7 = add i32 %mul.us.i, 32
  %add8.us.i = add i32 %add.us.i7, %mul7.us.i
  %shr.us.i = ashr i32 %add8.us.i, 6
  %tobool.i.us.i = icmp ugt i32 %shr.us.i, 255
  %sub.i.us.i = sub nsw i32 0, %shr.us.i
  %shr.i.us.i = ashr i32 %sub.i.us.i, 31
  %cond.i.us.i = select i1 %tobool.i.us.i, i32 %shr.i.us.i, i32 %shr.us.i
  %conv.i.us.i = trunc i32 %cond.i.us.i to i8
  store i8 %conv.i.us.i, i8* %dst.addr.032.us.i, align 1, !tbaa !2
  %arrayidx.us.i3.1 = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 1
  %50 = load i8, i8* %arrayidx.us.i3.1, align 1, !tbaa !2
  %conv.us.i4.1 = zext i8 %50 to i32
  %mul.us.i.1 = mul nsw i32 %conv.us.i4.1, %weight
  %arrayidx5.us.i5.1 = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 1
  %51 = load i8, i8* %arrayidx5.us.i5.1, align 1, !tbaa !2
  %conv6.us.i6.1 = zext i8 %51 to i32
  %mul7.us.i.1 = mul nsw i32 %sub.i, %conv6.us.i6.1
  %add.us.i7.1 = add i32 %mul.us.i.1, 32
  %add8.us.i.1 = add i32 %add.us.i7.1, %mul7.us.i.1
  %shr.us.i.1 = ashr i32 %add8.us.i.1, 6
  %tobool.i.us.i.1 = icmp ugt i32 %shr.us.i.1, 255
  %sub.i.us.i.1 = sub nsw i32 0, %shr.us.i.1
  %shr.i.us.i.1 = ashr i32 %sub.i.us.i.1, 31
  %cond.i.us.i.1 = select i1 %tobool.i.us.i.1, i32 %shr.i.us.i.1, i32 %shr.us.i.1
  %conv.i.us.i.1 = trunc i32 %cond.i.us.i.1 to i8
  %arrayidx9.us.i8.1 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 1
  store i8 %conv.i.us.i.1, i8* %arrayidx9.us.i8.1, align 1, !tbaa !2
  %arrayidx.us.i3.2 = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 2
  %52 = load i8, i8* %arrayidx.us.i3.2, align 1, !tbaa !2
  %conv.us.i4.2 = zext i8 %52 to i32
  %mul.us.i.2 = mul nsw i32 %conv.us.i4.2, %weight
  %arrayidx5.us.i5.2 = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 2
  %53 = load i8, i8* %arrayidx5.us.i5.2, align 1, !tbaa !2
  %conv6.us.i6.2 = zext i8 %53 to i32
  %mul7.us.i.2 = mul nsw i32 %sub.i, %conv6.us.i6.2
  %add.us.i7.2 = add i32 %mul.us.i.2, 32
  %add8.us.i.2 = add i32 %add.us.i7.2, %mul7.us.i.2
  %shr.us.i.2 = ashr i32 %add8.us.i.2, 6
  %tobool.i.us.i.2 = icmp ugt i32 %shr.us.i.2, 255
  %sub.i.us.i.2 = sub nsw i32 0, %shr.us.i.2
  %shr.i.us.i.2 = ashr i32 %sub.i.us.i.2, 31
  %cond.i.us.i.2 = select i1 %tobool.i.us.i.2, i32 %shr.i.us.i.2, i32 %shr.us.i.2
  %conv.i.us.i.2 = trunc i32 %cond.i.us.i.2 to i8
  %arrayidx9.us.i8.2 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 2
  store i8 %conv.i.us.i.2, i8* %arrayidx9.us.i8.2, align 1, !tbaa !2
  %arrayidx.us.i3.3 = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 3
  %54 = load i8, i8* %arrayidx.us.i3.3, align 1, !tbaa !2
  %conv.us.i4.3 = zext i8 %54 to i32
  %mul.us.i.3 = mul nsw i32 %conv.us.i4.3, %weight
  %arrayidx5.us.i5.3 = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 3
  %55 = load i8, i8* %arrayidx5.us.i5.3, align 1, !tbaa !2
  %conv6.us.i6.3 = zext i8 %55 to i32
  %mul7.us.i.3 = mul nsw i32 %sub.i, %conv6.us.i6.3
  %add.us.i7.3 = add i32 %mul.us.i.3, 32
  %add8.us.i.3 = add i32 %add.us.i7.3, %mul7.us.i.3
  %shr.us.i.3 = ashr i32 %add8.us.i.3, 6
  %tobool.i.us.i.3 = icmp ugt i32 %shr.us.i.3, 255
  %sub.i.us.i.3 = sub nsw i32 0, %shr.us.i.3
  %shr.i.us.i.3 = ashr i32 %sub.i.us.i.3, 31
  %cond.i.us.i.3 = select i1 %tobool.i.us.i.3, i32 %shr.i.us.i.3, i32 %shr.us.i.3
  %conv.i.us.i.3 = trunc i32 %cond.i.us.i.3 to i8
  %arrayidx9.us.i8.3 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 3
  store i8 %conv.i.us.i.3, i8* %arrayidx9.us.i8.3, align 1, !tbaa !2
  %arrayidx.us.i3.4 = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 4
  %56 = load i8, i8* %arrayidx.us.i3.4, align 1, !tbaa !2
  %conv.us.i4.4 = zext i8 %56 to i32
  %mul.us.i.4 = mul nsw i32 %conv.us.i4.4, %weight
  %arrayidx5.us.i5.4 = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 4
  %57 = load i8, i8* %arrayidx5.us.i5.4, align 1, !tbaa !2
  %conv6.us.i6.4 = zext i8 %57 to i32
  %mul7.us.i.4 = mul nsw i32 %sub.i, %conv6.us.i6.4
  %add.us.i7.4 = add i32 %mul.us.i.4, 32
  %add8.us.i.4 = add i32 %add.us.i7.4, %mul7.us.i.4
  %shr.us.i.4 = ashr i32 %add8.us.i.4, 6
  %tobool.i.us.i.4 = icmp ugt i32 %shr.us.i.4, 255
  %sub.i.us.i.4 = sub nsw i32 0, %shr.us.i.4
  %shr.i.us.i.4 = ashr i32 %sub.i.us.i.4, 31
  %cond.i.us.i.4 = select i1 %tobool.i.us.i.4, i32 %shr.i.us.i.4, i32 %shr.us.i.4
  %conv.i.us.i.4 = trunc i32 %cond.i.us.i.4 to i8
  %arrayidx9.us.i8.4 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 4
  store i8 %conv.i.us.i.4, i8* %arrayidx9.us.i8.4, align 1, !tbaa !2
  %arrayidx.us.i3.5 = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 5
  %58 = load i8, i8* %arrayidx.us.i3.5, align 1, !tbaa !2
  %conv.us.i4.5 = zext i8 %58 to i32
  %mul.us.i.5 = mul nsw i32 %conv.us.i4.5, %weight
  %arrayidx5.us.i5.5 = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 5
  %59 = load i8, i8* %arrayidx5.us.i5.5, align 1, !tbaa !2
  %conv6.us.i6.5 = zext i8 %59 to i32
  %mul7.us.i.5 = mul nsw i32 %sub.i, %conv6.us.i6.5
  %add.us.i7.5 = add i32 %mul.us.i.5, 32
  %add8.us.i.5 = add i32 %add.us.i7.5, %mul7.us.i.5
  %shr.us.i.5 = ashr i32 %add8.us.i.5, 6
  %tobool.i.us.i.5 = icmp ugt i32 %shr.us.i.5, 255
  %sub.i.us.i.5 = sub nsw i32 0, %shr.us.i.5
  %shr.i.us.i.5 = ashr i32 %sub.i.us.i.5, 31
  %cond.i.us.i.5 = select i1 %tobool.i.us.i.5, i32 %shr.i.us.i.5, i32 %shr.us.i.5
  %conv.i.us.i.5 = trunc i32 %cond.i.us.i.5 to i8
  %arrayidx9.us.i8.5 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 5
  store i8 %conv.i.us.i.5, i8* %arrayidx9.us.i8.5, align 1, !tbaa !2
  %arrayidx.us.i3.6 = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 6
  %60 = load i8, i8* %arrayidx.us.i3.6, align 1, !tbaa !2
  %conv.us.i4.6 = zext i8 %60 to i32
  %mul.us.i.6 = mul nsw i32 %conv.us.i4.6, %weight
  %arrayidx5.us.i5.6 = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 6
  %61 = load i8, i8* %arrayidx5.us.i5.6, align 1, !tbaa !2
  %conv6.us.i6.6 = zext i8 %61 to i32
  %mul7.us.i.6 = mul nsw i32 %sub.i, %conv6.us.i6.6
  %add.us.i7.6 = add i32 %mul.us.i.6, 32
  %add8.us.i.6 = add i32 %add.us.i7.6, %mul7.us.i.6
  %shr.us.i.6 = ashr i32 %add8.us.i.6, 6
  %tobool.i.us.i.6 = icmp ugt i32 %shr.us.i.6, 255
  %sub.i.us.i.6 = sub nsw i32 0, %shr.us.i.6
  %shr.i.us.i.6 = ashr i32 %sub.i.us.i.6, 31
  %cond.i.us.i.6 = select i1 %tobool.i.us.i.6, i32 %shr.i.us.i.6, i32 %shr.us.i.6
  %conv.i.us.i.6 = trunc i32 %cond.i.us.i.6 to i8
  %arrayidx9.us.i8.6 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 6
  store i8 %conv.i.us.i.6, i8* %arrayidx9.us.i8.6, align 1, !tbaa !2
  %arrayidx.us.i3.7 = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 7
  %62 = load i8, i8* %arrayidx.us.i3.7, align 1, !tbaa !2
  %conv.us.i4.7 = zext i8 %62 to i32
  %mul.us.i.7 = mul nsw i32 %conv.us.i4.7, %weight
  %arrayidx5.us.i5.7 = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 7
  %63 = load i8, i8* %arrayidx5.us.i5.7, align 1, !tbaa !2
  %conv6.us.i6.7 = zext i8 %63 to i32
  %mul7.us.i.7 = mul nsw i32 %sub.i, %conv6.us.i6.7
  %add.us.i7.7 = add i32 %mul.us.i.7, 32
  %add8.us.i.7 = add i32 %add.us.i7.7, %mul7.us.i.7
  %shr.us.i.7 = ashr i32 %add8.us.i.7, 6
  %tobool.i.us.i.7 = icmp ugt i32 %shr.us.i.7, 255
  %sub.i.us.i.7 = sub nsw i32 0, %shr.us.i.7
  %shr.i.us.i.7 = ashr i32 %sub.i.us.i.7, 31
  %cond.i.us.i.7 = select i1 %tobool.i.us.i.7, i32 %shr.i.us.i.7, i32 %shr.us.i.7
  %conv.i.us.i.7 = trunc i32 %cond.i.us.i.7 to i8
  %arrayidx9.us.i8.7 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 7
  store i8 %conv.i.us.i.7, i8* %arrayidx9.us.i8.7, align 1, !tbaa !2
  %arrayidx.us.i3.8 = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 8
  %64 = load i8, i8* %arrayidx.us.i3.8, align 1, !tbaa !2
  %conv.us.i4.8 = zext i8 %64 to i32
  %mul.us.i.8 = mul nsw i32 %conv.us.i4.8, %weight
  %arrayidx5.us.i5.8 = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 8
  %65 = load i8, i8* %arrayidx5.us.i5.8, align 1, !tbaa !2
  %conv6.us.i6.8 = zext i8 %65 to i32
  %mul7.us.i.8 = mul nsw i32 %sub.i, %conv6.us.i6.8
  %add.us.i7.8 = add i32 %mul.us.i.8, 32
  %add8.us.i.8 = add i32 %add.us.i7.8, %mul7.us.i.8
  %shr.us.i.8 = ashr i32 %add8.us.i.8, 6
  %tobool.i.us.i.8 = icmp ugt i32 %shr.us.i.8, 255
  %sub.i.us.i.8 = sub nsw i32 0, %shr.us.i.8
  %shr.i.us.i.8 = ashr i32 %sub.i.us.i.8, 31
  %cond.i.us.i.8 = select i1 %tobool.i.us.i.8, i32 %shr.i.us.i.8, i32 %shr.us.i.8
  %conv.i.us.i.8 = trunc i32 %cond.i.us.i.8 to i8
  %arrayidx9.us.i8.8 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 8
  store i8 %conv.i.us.i.8, i8* %arrayidx9.us.i8.8, align 1, !tbaa !2
  %arrayidx.us.i3.9 = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 9
  %66 = load i8, i8* %arrayidx.us.i3.9, align 1, !tbaa !2
  %conv.us.i4.9 = zext i8 %66 to i32
  %mul.us.i.9 = mul nsw i32 %conv.us.i4.9, %weight
  %arrayidx5.us.i5.9 = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 9
  %67 = load i8, i8* %arrayidx5.us.i5.9, align 1, !tbaa !2
  %conv6.us.i6.9 = zext i8 %67 to i32
  %mul7.us.i.9 = mul nsw i32 %sub.i, %conv6.us.i6.9
  %add.us.i7.9 = add i32 %mul.us.i.9, 32
  %add8.us.i.9 = add i32 %add.us.i7.9, %mul7.us.i.9
  %shr.us.i.9 = ashr i32 %add8.us.i.9, 6
  %tobool.i.us.i.9 = icmp ugt i32 %shr.us.i.9, 255
  %sub.i.us.i.9 = sub nsw i32 0, %shr.us.i.9
  %shr.i.us.i.9 = ashr i32 %sub.i.us.i.9, 31
  %cond.i.us.i.9 = select i1 %tobool.i.us.i.9, i32 %shr.i.us.i.9, i32 %shr.us.i.9
  %conv.i.us.i.9 = trunc i32 %cond.i.us.i.9 to i8
  %arrayidx9.us.i8.9 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 9
  store i8 %conv.i.us.i.9, i8* %arrayidx9.us.i8.9, align 1, !tbaa !2
  %arrayidx.us.i3.10 = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 10
  %68 = load i8, i8* %arrayidx.us.i3.10, align 1, !tbaa !2
  %conv.us.i4.10 = zext i8 %68 to i32
  %mul.us.i.10 = mul nsw i32 %conv.us.i4.10, %weight
  %arrayidx5.us.i5.10 = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 10
  %69 = load i8, i8* %arrayidx5.us.i5.10, align 1, !tbaa !2
  %conv6.us.i6.10 = zext i8 %69 to i32
  %mul7.us.i.10 = mul nsw i32 %sub.i, %conv6.us.i6.10
  %add.us.i7.10 = add i32 %mul.us.i.10, 32
  %add8.us.i.10 = add i32 %add.us.i7.10, %mul7.us.i.10
  %shr.us.i.10 = ashr i32 %add8.us.i.10, 6
  %tobool.i.us.i.10 = icmp ugt i32 %shr.us.i.10, 255
  %sub.i.us.i.10 = sub nsw i32 0, %shr.us.i.10
  %shr.i.us.i.10 = ashr i32 %sub.i.us.i.10, 31
  %cond.i.us.i.10 = select i1 %tobool.i.us.i.10, i32 %shr.i.us.i.10, i32 %shr.us.i.10
  %conv.i.us.i.10 = trunc i32 %cond.i.us.i.10 to i8
  %arrayidx9.us.i8.10 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 10
  store i8 %conv.i.us.i.10, i8* %arrayidx9.us.i8.10, align 1, !tbaa !2
  %arrayidx.us.i3.11 = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 11
  %70 = load i8, i8* %arrayidx.us.i3.11, align 1, !tbaa !2
  %conv.us.i4.11 = zext i8 %70 to i32
  %mul.us.i.11 = mul nsw i32 %conv.us.i4.11, %weight
  %arrayidx5.us.i5.11 = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 11
  %71 = load i8, i8* %arrayidx5.us.i5.11, align 1, !tbaa !2
  %conv6.us.i6.11 = zext i8 %71 to i32
  %mul7.us.i.11 = mul nsw i32 %sub.i, %conv6.us.i6.11
  %add.us.i7.11 = add i32 %mul.us.i.11, 32
  %add8.us.i.11 = add i32 %add.us.i7.11, %mul7.us.i.11
  %shr.us.i.11 = ashr i32 %add8.us.i.11, 6
  %tobool.i.us.i.11 = icmp ugt i32 %shr.us.i.11, 255
  %sub.i.us.i.11 = sub nsw i32 0, %shr.us.i.11
  %shr.i.us.i.11 = ashr i32 %sub.i.us.i.11, 31
  %cond.i.us.i.11 = select i1 %tobool.i.us.i.11, i32 %shr.i.us.i.11, i32 %shr.us.i.11
  %conv.i.us.i.11 = trunc i32 %cond.i.us.i.11 to i8
  %arrayidx9.us.i8.11 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 11
  store i8 %conv.i.us.i.11, i8* %arrayidx9.us.i8.11, align 1, !tbaa !2
  %arrayidx.us.i3.12 = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 12
  %72 = load i8, i8* %arrayidx.us.i3.12, align 1, !tbaa !2
  %conv.us.i4.12 = zext i8 %72 to i32
  %mul.us.i.12 = mul nsw i32 %conv.us.i4.12, %weight
  %arrayidx5.us.i5.12 = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 12
  %73 = load i8, i8* %arrayidx5.us.i5.12, align 1, !tbaa !2
  %conv6.us.i6.12 = zext i8 %73 to i32
  %mul7.us.i.12 = mul nsw i32 %sub.i, %conv6.us.i6.12
  %add.us.i7.12 = add i32 %mul.us.i.12, 32
  %add8.us.i.12 = add i32 %add.us.i7.12, %mul7.us.i.12
  %shr.us.i.12 = ashr i32 %add8.us.i.12, 6
  %tobool.i.us.i.12 = icmp ugt i32 %shr.us.i.12, 255
  %sub.i.us.i.12 = sub nsw i32 0, %shr.us.i.12
  %shr.i.us.i.12 = ashr i32 %sub.i.us.i.12, 31
  %cond.i.us.i.12 = select i1 %tobool.i.us.i.12, i32 %shr.i.us.i.12, i32 %shr.us.i.12
  %conv.i.us.i.12 = trunc i32 %cond.i.us.i.12 to i8
  %arrayidx9.us.i8.12 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 12
  store i8 %conv.i.us.i.12, i8* %arrayidx9.us.i8.12, align 1, !tbaa !2
  %arrayidx.us.i3.13 = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 13
  %74 = load i8, i8* %arrayidx.us.i3.13, align 1, !tbaa !2
  %conv.us.i4.13 = zext i8 %74 to i32
  %mul.us.i.13 = mul nsw i32 %conv.us.i4.13, %weight
  %arrayidx5.us.i5.13 = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 13
  %75 = load i8, i8* %arrayidx5.us.i5.13, align 1, !tbaa !2
  %conv6.us.i6.13 = zext i8 %75 to i32
  %mul7.us.i.13 = mul nsw i32 %sub.i, %conv6.us.i6.13
  %add.us.i7.13 = add i32 %mul.us.i.13, 32
  %add8.us.i.13 = add i32 %add.us.i7.13, %mul7.us.i.13
  %shr.us.i.13 = ashr i32 %add8.us.i.13, 6
  %tobool.i.us.i.13 = icmp ugt i32 %shr.us.i.13, 255
  %sub.i.us.i.13 = sub nsw i32 0, %shr.us.i.13
  %shr.i.us.i.13 = ashr i32 %sub.i.us.i.13, 31
  %cond.i.us.i.13 = select i1 %tobool.i.us.i.13, i32 %shr.i.us.i.13, i32 %shr.us.i.13
  %conv.i.us.i.13 = trunc i32 %cond.i.us.i.13 to i8
  %arrayidx9.us.i8.13 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 13
  store i8 %conv.i.us.i.13, i8* %arrayidx9.us.i8.13, align 1, !tbaa !2
  %arrayidx.us.i3.14 = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 14
  %76 = load i8, i8* %arrayidx.us.i3.14, align 1, !tbaa !2
  %conv.us.i4.14 = zext i8 %76 to i32
  %mul.us.i.14 = mul nsw i32 %conv.us.i4.14, %weight
  %arrayidx5.us.i5.14 = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 14
  %77 = load i8, i8* %arrayidx5.us.i5.14, align 1, !tbaa !2
  %conv6.us.i6.14 = zext i8 %77 to i32
  %mul7.us.i.14 = mul nsw i32 %sub.i, %conv6.us.i6.14
  %add.us.i7.14 = add i32 %mul.us.i.14, 32
  %add8.us.i.14 = add i32 %add.us.i7.14, %mul7.us.i.14
  %shr.us.i.14 = ashr i32 %add8.us.i.14, 6
  %tobool.i.us.i.14 = icmp ugt i32 %shr.us.i.14, 255
  %sub.i.us.i.14 = sub nsw i32 0, %shr.us.i.14
  %shr.i.us.i.14 = ashr i32 %sub.i.us.i.14, 31
  %cond.i.us.i.14 = select i1 %tobool.i.us.i.14, i32 %shr.i.us.i.14, i32 %shr.us.i.14
  %conv.i.us.i.14 = trunc i32 %cond.i.us.i.14 to i8
  %arrayidx9.us.i8.14 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 14
  store i8 %conv.i.us.i.14, i8* %arrayidx9.us.i8.14, align 1, !tbaa !2
  %arrayidx.us.i3.15 = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 15
  %78 = load i8, i8* %arrayidx.us.i3.15, align 1, !tbaa !2
  %conv.us.i4.15 = zext i8 %78 to i32
  %mul.us.i.15 = mul nsw i32 %conv.us.i4.15, %weight
  %arrayidx5.us.i5.15 = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 15
  %79 = load i8, i8* %arrayidx5.us.i5.15, align 1, !tbaa !2
  %conv6.us.i6.15 = zext i8 %79 to i32
  %mul7.us.i.15 = mul nsw i32 %sub.i, %conv6.us.i6.15
  %add.us.i7.15 = add i32 %mul.us.i.15, 32
  %add8.us.i.15 = add i32 %add.us.i7.15, %mul7.us.i.15
  %shr.us.i.15 = ashr i32 %add8.us.i.15, 6
  %tobool.i.us.i.15 = icmp ugt i32 %shr.us.i.15, 255
  %sub.i.us.i.15 = sub nsw i32 0, %shr.us.i.15
  %shr.i.us.i.15 = ashr i32 %sub.i.us.i.15, 31
  %cond.i.us.i.15 = select i1 %tobool.i.us.i.15, i32 %shr.i.us.i.15, i32 %shr.us.i.15
  %conv.i.us.i.15 = trunc i32 %cond.i.us.i.15 to i8
  %arrayidx9.us.i8.15 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 15
  store i8 %conv.i.us.i.15, i8* %arrayidx9.us.i8.15, align 1, !tbaa !2
  %inc11.us.i = add nuw nsw i32 %y.033.us.i, 1
  %add.ptr.us.i12 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 %i_stride_pix1
  %add.ptr12.us.i = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 %i_stride_pix2
  %add.ptr13.us.i = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 %i_stride_pix3
  %exitcond35.i = icmp eq i32 %inc11.us.i, 8
  br i1 %exitcond35.i, label %if.end, label %for.cond1.preheader.us.i2

if.end:                                           ; preds = %for.cond1.preheader.us.i2, %for.cond1.preheader.us.i
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @pixel_avg_8x16(i8* nocapture %pix1, i32 %i_stride_pix1, i8* nocapture readonly %pix2, i32 %i_stride_pix2, i8* nocapture readonly %pix3, i32 %i_stride_pix3, i32 %weight) #2 {
entry:
  %cmp = icmp eq i32 %weight, 32
  br i1 %cmp, label %for.cond1.preheader.us.i, label %if.else

for.cond1.preheader.us.i:                         ; preds = %entry, %for.cond1.preheader.us.i
  %y.031.us.i = phi i32 [ %inc13.us.i, %for.cond1.preheader.us.i ], [ 0, %entry ]
  %dst.addr.030.us.i = phi i8* [ %add.ptr11.us.i, %for.cond1.preheader.us.i ], [ %pix1, %entry ]
  %src1.addr.029.us.i = phi i8* [ %add.ptr.us.i, %for.cond1.preheader.us.i ], [ %pix2, %entry ]
  %src2.addr.028.us.i = phi i8* [ %add.ptr10.us.i, %for.cond1.preheader.us.i ], [ %pix3, %entry ]
  %0 = load i8, i8* %src1.addr.029.us.i, align 1, !tbaa !2
  %conv.us.i = zext i8 %0 to i32
  %1 = load i8, i8* %src2.addr.028.us.i, align 1, !tbaa !2
  %conv6.us.i = zext i8 %1 to i32
  %add.us.i = add nuw nsw i32 %conv.us.i, 1
  %add7.us.i = add nuw nsw i32 %add.us.i, %conv6.us.i
  %2 = lshr i32 %add7.us.i, 1
  %conv8.us.i = trunc i32 %2 to i8
  store i8 %conv8.us.i, i8* %dst.addr.030.us.i, align 1, !tbaa !2
  %arrayidx.us.i.1 = getelementptr inbounds i8, i8* %src1.addr.029.us.i, i32 1
  %3 = load i8, i8* %arrayidx.us.i.1, align 1, !tbaa !2
  %conv.us.i.1 = zext i8 %3 to i32
  %arrayidx5.us.i.1 = getelementptr inbounds i8, i8* %src2.addr.028.us.i, i32 1
  %4 = load i8, i8* %arrayidx5.us.i.1, align 1, !tbaa !2
  %conv6.us.i.1 = zext i8 %4 to i32
  %add.us.i.1 = add nuw nsw i32 %conv.us.i.1, 1
  %add7.us.i.1 = add nuw nsw i32 %add.us.i.1, %conv6.us.i.1
  %5 = lshr i32 %add7.us.i.1, 1
  %conv8.us.i.1 = trunc i32 %5 to i8
  %arrayidx9.us.i.1 = getelementptr inbounds i8, i8* %dst.addr.030.us.i, i32 1
  store i8 %conv8.us.i.1, i8* %arrayidx9.us.i.1, align 1, !tbaa !2
  %arrayidx.us.i.2 = getelementptr inbounds i8, i8* %src1.addr.029.us.i, i32 2
  %6 = load i8, i8* %arrayidx.us.i.2, align 1, !tbaa !2
  %conv.us.i.2 = zext i8 %6 to i32
  %arrayidx5.us.i.2 = getelementptr inbounds i8, i8* %src2.addr.028.us.i, i32 2
  %7 = load i8, i8* %arrayidx5.us.i.2, align 1, !tbaa !2
  %conv6.us.i.2 = zext i8 %7 to i32
  %add.us.i.2 = add nuw nsw i32 %conv.us.i.2, 1
  %add7.us.i.2 = add nuw nsw i32 %add.us.i.2, %conv6.us.i.2
  %8 = lshr i32 %add7.us.i.2, 1
  %conv8.us.i.2 = trunc i32 %8 to i8
  %arrayidx9.us.i.2 = getelementptr inbounds i8, i8* %dst.addr.030.us.i, i32 2
  store i8 %conv8.us.i.2, i8* %arrayidx9.us.i.2, align 1, !tbaa !2
  %arrayidx.us.i.3 = getelementptr inbounds i8, i8* %src1.addr.029.us.i, i32 3
  %9 = load i8, i8* %arrayidx.us.i.3, align 1, !tbaa !2
  %conv.us.i.3 = zext i8 %9 to i32
  %arrayidx5.us.i.3 = getelementptr inbounds i8, i8* %src2.addr.028.us.i, i32 3
  %10 = load i8, i8* %arrayidx5.us.i.3, align 1, !tbaa !2
  %conv6.us.i.3 = zext i8 %10 to i32
  %add.us.i.3 = add nuw nsw i32 %conv.us.i.3, 1
  %add7.us.i.3 = add nuw nsw i32 %add.us.i.3, %conv6.us.i.3
  %11 = lshr i32 %add7.us.i.3, 1
  %conv8.us.i.3 = trunc i32 %11 to i8
  %arrayidx9.us.i.3 = getelementptr inbounds i8, i8* %dst.addr.030.us.i, i32 3
  store i8 %conv8.us.i.3, i8* %arrayidx9.us.i.3, align 1, !tbaa !2
  %arrayidx.us.i.4 = getelementptr inbounds i8, i8* %src1.addr.029.us.i, i32 4
  %12 = load i8, i8* %arrayidx.us.i.4, align 1, !tbaa !2
  %conv.us.i.4 = zext i8 %12 to i32
  %arrayidx5.us.i.4 = getelementptr inbounds i8, i8* %src2.addr.028.us.i, i32 4
  %13 = load i8, i8* %arrayidx5.us.i.4, align 1, !tbaa !2
  %conv6.us.i.4 = zext i8 %13 to i32
  %add.us.i.4 = add nuw nsw i32 %conv.us.i.4, 1
  %add7.us.i.4 = add nuw nsw i32 %add.us.i.4, %conv6.us.i.4
  %14 = lshr i32 %add7.us.i.4, 1
  %conv8.us.i.4 = trunc i32 %14 to i8
  %arrayidx9.us.i.4 = getelementptr inbounds i8, i8* %dst.addr.030.us.i, i32 4
  store i8 %conv8.us.i.4, i8* %arrayidx9.us.i.4, align 1, !tbaa !2
  %arrayidx.us.i.5 = getelementptr inbounds i8, i8* %src1.addr.029.us.i, i32 5
  %15 = load i8, i8* %arrayidx.us.i.5, align 1, !tbaa !2
  %conv.us.i.5 = zext i8 %15 to i32
  %arrayidx5.us.i.5 = getelementptr inbounds i8, i8* %src2.addr.028.us.i, i32 5
  %16 = load i8, i8* %arrayidx5.us.i.5, align 1, !tbaa !2
  %conv6.us.i.5 = zext i8 %16 to i32
  %add.us.i.5 = add nuw nsw i32 %conv.us.i.5, 1
  %add7.us.i.5 = add nuw nsw i32 %add.us.i.5, %conv6.us.i.5
  %17 = lshr i32 %add7.us.i.5, 1
  %conv8.us.i.5 = trunc i32 %17 to i8
  %arrayidx9.us.i.5 = getelementptr inbounds i8, i8* %dst.addr.030.us.i, i32 5
  store i8 %conv8.us.i.5, i8* %arrayidx9.us.i.5, align 1, !tbaa !2
  %arrayidx.us.i.6 = getelementptr inbounds i8, i8* %src1.addr.029.us.i, i32 6
  %18 = load i8, i8* %arrayidx.us.i.6, align 1, !tbaa !2
  %conv.us.i.6 = zext i8 %18 to i32
  %arrayidx5.us.i.6 = getelementptr inbounds i8, i8* %src2.addr.028.us.i, i32 6
  %19 = load i8, i8* %arrayidx5.us.i.6, align 1, !tbaa !2
  %conv6.us.i.6 = zext i8 %19 to i32
  %add.us.i.6 = add nuw nsw i32 %conv.us.i.6, 1
  %add7.us.i.6 = add nuw nsw i32 %add.us.i.6, %conv6.us.i.6
  %20 = lshr i32 %add7.us.i.6, 1
  %conv8.us.i.6 = trunc i32 %20 to i8
  %arrayidx9.us.i.6 = getelementptr inbounds i8, i8* %dst.addr.030.us.i, i32 6
  store i8 %conv8.us.i.6, i8* %arrayidx9.us.i.6, align 1, !tbaa !2
  %arrayidx.us.i.7 = getelementptr inbounds i8, i8* %src1.addr.029.us.i, i32 7
  %21 = load i8, i8* %arrayidx.us.i.7, align 1, !tbaa !2
  %conv.us.i.7 = zext i8 %21 to i32
  %arrayidx5.us.i.7 = getelementptr inbounds i8, i8* %src2.addr.028.us.i, i32 7
  %22 = load i8, i8* %arrayidx5.us.i.7, align 1, !tbaa !2
  %conv6.us.i.7 = zext i8 %22 to i32
  %add.us.i.7 = add nuw nsw i32 %conv.us.i.7, 1
  %add7.us.i.7 = add nuw nsw i32 %add.us.i.7, %conv6.us.i.7
  %23 = lshr i32 %add7.us.i.7, 1
  %conv8.us.i.7 = trunc i32 %23 to i8
  %arrayidx9.us.i.7 = getelementptr inbounds i8, i8* %dst.addr.030.us.i, i32 7
  store i8 %conv8.us.i.7, i8* %arrayidx9.us.i.7, align 1, !tbaa !2
  %add.ptr.us.i = getelementptr inbounds i8, i8* %src1.addr.029.us.i, i32 %i_stride_pix2
  %add.ptr10.us.i = getelementptr inbounds i8, i8* %src2.addr.028.us.i, i32 %i_stride_pix3
  %add.ptr11.us.i = getelementptr inbounds i8, i8* %dst.addr.030.us.i, i32 %i_stride_pix1
  %inc13.us.i = add nuw nsw i32 %y.031.us.i, 1
  %exitcond33.i = icmp eq i32 %inc13.us.i, 16
  br i1 %exitcond33.i, label %if.end, label %for.cond1.preheader.us.i

if.else:                                          ; preds = %entry
  %sub.i = sub nsw i32 64, %weight
  br label %for.cond1.preheader.us.i2

for.cond1.preheader.us.i2:                        ; preds = %for.cond1.preheader.us.i2, %if.else
  %y.033.us.i = phi i32 [ %inc11.us.i, %for.cond1.preheader.us.i2 ], [ 0, %if.else ]
  %dst.addr.032.us.i = phi i8* [ %add.ptr.us.i12, %for.cond1.preheader.us.i2 ], [ %pix1, %if.else ]
  %src1.addr.031.us.i = phi i8* [ %add.ptr12.us.i, %for.cond1.preheader.us.i2 ], [ %pix2, %if.else ]
  %src2.addr.030.us.i = phi i8* [ %add.ptr13.us.i, %for.cond1.preheader.us.i2 ], [ %pix3, %if.else ]
  %24 = load i8, i8* %src1.addr.031.us.i, align 1, !tbaa !2
  %conv.us.i4 = zext i8 %24 to i32
  %mul.us.i = mul nsw i32 %conv.us.i4, %weight
  %25 = load i8, i8* %src2.addr.030.us.i, align 1, !tbaa !2
  %conv6.us.i6 = zext i8 %25 to i32
  %mul7.us.i = mul nsw i32 %sub.i, %conv6.us.i6
  %add.us.i7 = add i32 %mul.us.i, 32
  %add8.us.i = add i32 %add.us.i7, %mul7.us.i
  %shr.us.i = ashr i32 %add8.us.i, 6
  %tobool.i.us.i = icmp ugt i32 %shr.us.i, 255
  %sub.i.us.i = sub nsw i32 0, %shr.us.i
  %shr.i.us.i = ashr i32 %sub.i.us.i, 31
  %cond.i.us.i = select i1 %tobool.i.us.i, i32 %shr.i.us.i, i32 %shr.us.i
  %conv.i.us.i = trunc i32 %cond.i.us.i to i8
  store i8 %conv.i.us.i, i8* %dst.addr.032.us.i, align 1, !tbaa !2
  %arrayidx.us.i3.1 = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 1
  %26 = load i8, i8* %arrayidx.us.i3.1, align 1, !tbaa !2
  %conv.us.i4.1 = zext i8 %26 to i32
  %mul.us.i.1 = mul nsw i32 %conv.us.i4.1, %weight
  %arrayidx5.us.i5.1 = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 1
  %27 = load i8, i8* %arrayidx5.us.i5.1, align 1, !tbaa !2
  %conv6.us.i6.1 = zext i8 %27 to i32
  %mul7.us.i.1 = mul nsw i32 %sub.i, %conv6.us.i6.1
  %add.us.i7.1 = add i32 %mul.us.i.1, 32
  %add8.us.i.1 = add i32 %add.us.i7.1, %mul7.us.i.1
  %shr.us.i.1 = ashr i32 %add8.us.i.1, 6
  %tobool.i.us.i.1 = icmp ugt i32 %shr.us.i.1, 255
  %sub.i.us.i.1 = sub nsw i32 0, %shr.us.i.1
  %shr.i.us.i.1 = ashr i32 %sub.i.us.i.1, 31
  %cond.i.us.i.1 = select i1 %tobool.i.us.i.1, i32 %shr.i.us.i.1, i32 %shr.us.i.1
  %conv.i.us.i.1 = trunc i32 %cond.i.us.i.1 to i8
  %arrayidx9.us.i8.1 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 1
  store i8 %conv.i.us.i.1, i8* %arrayidx9.us.i8.1, align 1, !tbaa !2
  %arrayidx.us.i3.2 = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 2
  %28 = load i8, i8* %arrayidx.us.i3.2, align 1, !tbaa !2
  %conv.us.i4.2 = zext i8 %28 to i32
  %mul.us.i.2 = mul nsw i32 %conv.us.i4.2, %weight
  %arrayidx5.us.i5.2 = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 2
  %29 = load i8, i8* %arrayidx5.us.i5.2, align 1, !tbaa !2
  %conv6.us.i6.2 = zext i8 %29 to i32
  %mul7.us.i.2 = mul nsw i32 %sub.i, %conv6.us.i6.2
  %add.us.i7.2 = add i32 %mul.us.i.2, 32
  %add8.us.i.2 = add i32 %add.us.i7.2, %mul7.us.i.2
  %shr.us.i.2 = ashr i32 %add8.us.i.2, 6
  %tobool.i.us.i.2 = icmp ugt i32 %shr.us.i.2, 255
  %sub.i.us.i.2 = sub nsw i32 0, %shr.us.i.2
  %shr.i.us.i.2 = ashr i32 %sub.i.us.i.2, 31
  %cond.i.us.i.2 = select i1 %tobool.i.us.i.2, i32 %shr.i.us.i.2, i32 %shr.us.i.2
  %conv.i.us.i.2 = trunc i32 %cond.i.us.i.2 to i8
  %arrayidx9.us.i8.2 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 2
  store i8 %conv.i.us.i.2, i8* %arrayidx9.us.i8.2, align 1, !tbaa !2
  %arrayidx.us.i3.3 = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 3
  %30 = load i8, i8* %arrayidx.us.i3.3, align 1, !tbaa !2
  %conv.us.i4.3 = zext i8 %30 to i32
  %mul.us.i.3 = mul nsw i32 %conv.us.i4.3, %weight
  %arrayidx5.us.i5.3 = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 3
  %31 = load i8, i8* %arrayidx5.us.i5.3, align 1, !tbaa !2
  %conv6.us.i6.3 = zext i8 %31 to i32
  %mul7.us.i.3 = mul nsw i32 %sub.i, %conv6.us.i6.3
  %add.us.i7.3 = add i32 %mul.us.i.3, 32
  %add8.us.i.3 = add i32 %add.us.i7.3, %mul7.us.i.3
  %shr.us.i.3 = ashr i32 %add8.us.i.3, 6
  %tobool.i.us.i.3 = icmp ugt i32 %shr.us.i.3, 255
  %sub.i.us.i.3 = sub nsw i32 0, %shr.us.i.3
  %shr.i.us.i.3 = ashr i32 %sub.i.us.i.3, 31
  %cond.i.us.i.3 = select i1 %tobool.i.us.i.3, i32 %shr.i.us.i.3, i32 %shr.us.i.3
  %conv.i.us.i.3 = trunc i32 %cond.i.us.i.3 to i8
  %arrayidx9.us.i8.3 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 3
  store i8 %conv.i.us.i.3, i8* %arrayidx9.us.i8.3, align 1, !tbaa !2
  %arrayidx.us.i3.4 = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 4
  %32 = load i8, i8* %arrayidx.us.i3.4, align 1, !tbaa !2
  %conv.us.i4.4 = zext i8 %32 to i32
  %mul.us.i.4 = mul nsw i32 %conv.us.i4.4, %weight
  %arrayidx5.us.i5.4 = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 4
  %33 = load i8, i8* %arrayidx5.us.i5.4, align 1, !tbaa !2
  %conv6.us.i6.4 = zext i8 %33 to i32
  %mul7.us.i.4 = mul nsw i32 %sub.i, %conv6.us.i6.4
  %add.us.i7.4 = add i32 %mul.us.i.4, 32
  %add8.us.i.4 = add i32 %add.us.i7.4, %mul7.us.i.4
  %shr.us.i.4 = ashr i32 %add8.us.i.4, 6
  %tobool.i.us.i.4 = icmp ugt i32 %shr.us.i.4, 255
  %sub.i.us.i.4 = sub nsw i32 0, %shr.us.i.4
  %shr.i.us.i.4 = ashr i32 %sub.i.us.i.4, 31
  %cond.i.us.i.4 = select i1 %tobool.i.us.i.4, i32 %shr.i.us.i.4, i32 %shr.us.i.4
  %conv.i.us.i.4 = trunc i32 %cond.i.us.i.4 to i8
  %arrayidx9.us.i8.4 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 4
  store i8 %conv.i.us.i.4, i8* %arrayidx9.us.i8.4, align 1, !tbaa !2
  %arrayidx.us.i3.5 = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 5
  %34 = load i8, i8* %arrayidx.us.i3.5, align 1, !tbaa !2
  %conv.us.i4.5 = zext i8 %34 to i32
  %mul.us.i.5 = mul nsw i32 %conv.us.i4.5, %weight
  %arrayidx5.us.i5.5 = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 5
  %35 = load i8, i8* %arrayidx5.us.i5.5, align 1, !tbaa !2
  %conv6.us.i6.5 = zext i8 %35 to i32
  %mul7.us.i.5 = mul nsw i32 %sub.i, %conv6.us.i6.5
  %add.us.i7.5 = add i32 %mul.us.i.5, 32
  %add8.us.i.5 = add i32 %add.us.i7.5, %mul7.us.i.5
  %shr.us.i.5 = ashr i32 %add8.us.i.5, 6
  %tobool.i.us.i.5 = icmp ugt i32 %shr.us.i.5, 255
  %sub.i.us.i.5 = sub nsw i32 0, %shr.us.i.5
  %shr.i.us.i.5 = ashr i32 %sub.i.us.i.5, 31
  %cond.i.us.i.5 = select i1 %tobool.i.us.i.5, i32 %shr.i.us.i.5, i32 %shr.us.i.5
  %conv.i.us.i.5 = trunc i32 %cond.i.us.i.5 to i8
  %arrayidx9.us.i8.5 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 5
  store i8 %conv.i.us.i.5, i8* %arrayidx9.us.i8.5, align 1, !tbaa !2
  %arrayidx.us.i3.6 = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 6
  %36 = load i8, i8* %arrayidx.us.i3.6, align 1, !tbaa !2
  %conv.us.i4.6 = zext i8 %36 to i32
  %mul.us.i.6 = mul nsw i32 %conv.us.i4.6, %weight
  %arrayidx5.us.i5.6 = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 6
  %37 = load i8, i8* %arrayidx5.us.i5.6, align 1, !tbaa !2
  %conv6.us.i6.6 = zext i8 %37 to i32
  %mul7.us.i.6 = mul nsw i32 %sub.i, %conv6.us.i6.6
  %add.us.i7.6 = add i32 %mul.us.i.6, 32
  %add8.us.i.6 = add i32 %add.us.i7.6, %mul7.us.i.6
  %shr.us.i.6 = ashr i32 %add8.us.i.6, 6
  %tobool.i.us.i.6 = icmp ugt i32 %shr.us.i.6, 255
  %sub.i.us.i.6 = sub nsw i32 0, %shr.us.i.6
  %shr.i.us.i.6 = ashr i32 %sub.i.us.i.6, 31
  %cond.i.us.i.6 = select i1 %tobool.i.us.i.6, i32 %shr.i.us.i.6, i32 %shr.us.i.6
  %conv.i.us.i.6 = trunc i32 %cond.i.us.i.6 to i8
  %arrayidx9.us.i8.6 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 6
  store i8 %conv.i.us.i.6, i8* %arrayidx9.us.i8.6, align 1, !tbaa !2
  %arrayidx.us.i3.7 = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 7
  %38 = load i8, i8* %arrayidx.us.i3.7, align 1, !tbaa !2
  %conv.us.i4.7 = zext i8 %38 to i32
  %mul.us.i.7 = mul nsw i32 %conv.us.i4.7, %weight
  %arrayidx5.us.i5.7 = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 7
  %39 = load i8, i8* %arrayidx5.us.i5.7, align 1, !tbaa !2
  %conv6.us.i6.7 = zext i8 %39 to i32
  %mul7.us.i.7 = mul nsw i32 %sub.i, %conv6.us.i6.7
  %add.us.i7.7 = add i32 %mul.us.i.7, 32
  %add8.us.i.7 = add i32 %add.us.i7.7, %mul7.us.i.7
  %shr.us.i.7 = ashr i32 %add8.us.i.7, 6
  %tobool.i.us.i.7 = icmp ugt i32 %shr.us.i.7, 255
  %sub.i.us.i.7 = sub nsw i32 0, %shr.us.i.7
  %shr.i.us.i.7 = ashr i32 %sub.i.us.i.7, 31
  %cond.i.us.i.7 = select i1 %tobool.i.us.i.7, i32 %shr.i.us.i.7, i32 %shr.us.i.7
  %conv.i.us.i.7 = trunc i32 %cond.i.us.i.7 to i8
  %arrayidx9.us.i8.7 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 7
  store i8 %conv.i.us.i.7, i8* %arrayidx9.us.i8.7, align 1, !tbaa !2
  %inc11.us.i = add nuw nsw i32 %y.033.us.i, 1
  %add.ptr.us.i12 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 %i_stride_pix1
  %add.ptr12.us.i = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 %i_stride_pix2
  %add.ptr13.us.i = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 %i_stride_pix3
  %exitcond35.i = icmp eq i32 %inc11.us.i, 16
  br i1 %exitcond35.i, label %if.end, label %for.cond1.preheader.us.i2

if.end:                                           ; preds = %for.cond1.preheader.us.i2, %for.cond1.preheader.us.i
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @pixel_avg_8x8(i8* nocapture %pix1, i32 %i_stride_pix1, i8* nocapture readonly %pix2, i32 %i_stride_pix2, i8* nocapture readonly %pix3, i32 %i_stride_pix3, i32 %weight) #2 {
entry:
  %cmp = icmp eq i32 %weight, 32
  br i1 %cmp, label %for.cond1.preheader.us.i, label %if.else

for.cond1.preheader.us.i:                         ; preds = %entry, %for.cond1.preheader.us.i
  %y.031.us.i = phi i32 [ %inc13.us.i, %for.cond1.preheader.us.i ], [ 0, %entry ]
  %dst.addr.030.us.i = phi i8* [ %add.ptr11.us.i, %for.cond1.preheader.us.i ], [ %pix1, %entry ]
  %src1.addr.029.us.i = phi i8* [ %add.ptr.us.i, %for.cond1.preheader.us.i ], [ %pix2, %entry ]
  %src2.addr.028.us.i = phi i8* [ %add.ptr10.us.i, %for.cond1.preheader.us.i ], [ %pix3, %entry ]
  %0 = load i8, i8* %src1.addr.029.us.i, align 1, !tbaa !2
  %conv.us.i = zext i8 %0 to i32
  %1 = load i8, i8* %src2.addr.028.us.i, align 1, !tbaa !2
  %conv6.us.i = zext i8 %1 to i32
  %add.us.i = add nuw nsw i32 %conv.us.i, 1
  %add7.us.i = add nuw nsw i32 %add.us.i, %conv6.us.i
  %2 = lshr i32 %add7.us.i, 1
  %conv8.us.i = trunc i32 %2 to i8
  store i8 %conv8.us.i, i8* %dst.addr.030.us.i, align 1, !tbaa !2
  %arrayidx.us.i.1 = getelementptr inbounds i8, i8* %src1.addr.029.us.i, i32 1
  %3 = load i8, i8* %arrayidx.us.i.1, align 1, !tbaa !2
  %conv.us.i.1 = zext i8 %3 to i32
  %arrayidx5.us.i.1 = getelementptr inbounds i8, i8* %src2.addr.028.us.i, i32 1
  %4 = load i8, i8* %arrayidx5.us.i.1, align 1, !tbaa !2
  %conv6.us.i.1 = zext i8 %4 to i32
  %add.us.i.1 = add nuw nsw i32 %conv.us.i.1, 1
  %add7.us.i.1 = add nuw nsw i32 %add.us.i.1, %conv6.us.i.1
  %5 = lshr i32 %add7.us.i.1, 1
  %conv8.us.i.1 = trunc i32 %5 to i8
  %arrayidx9.us.i.1 = getelementptr inbounds i8, i8* %dst.addr.030.us.i, i32 1
  store i8 %conv8.us.i.1, i8* %arrayidx9.us.i.1, align 1, !tbaa !2
  %arrayidx.us.i.2 = getelementptr inbounds i8, i8* %src1.addr.029.us.i, i32 2
  %6 = load i8, i8* %arrayidx.us.i.2, align 1, !tbaa !2
  %conv.us.i.2 = zext i8 %6 to i32
  %arrayidx5.us.i.2 = getelementptr inbounds i8, i8* %src2.addr.028.us.i, i32 2
  %7 = load i8, i8* %arrayidx5.us.i.2, align 1, !tbaa !2
  %conv6.us.i.2 = zext i8 %7 to i32
  %add.us.i.2 = add nuw nsw i32 %conv.us.i.2, 1
  %add7.us.i.2 = add nuw nsw i32 %add.us.i.2, %conv6.us.i.2
  %8 = lshr i32 %add7.us.i.2, 1
  %conv8.us.i.2 = trunc i32 %8 to i8
  %arrayidx9.us.i.2 = getelementptr inbounds i8, i8* %dst.addr.030.us.i, i32 2
  store i8 %conv8.us.i.2, i8* %arrayidx9.us.i.2, align 1, !tbaa !2
  %arrayidx.us.i.3 = getelementptr inbounds i8, i8* %src1.addr.029.us.i, i32 3
  %9 = load i8, i8* %arrayidx.us.i.3, align 1, !tbaa !2
  %conv.us.i.3 = zext i8 %9 to i32
  %arrayidx5.us.i.3 = getelementptr inbounds i8, i8* %src2.addr.028.us.i, i32 3
  %10 = load i8, i8* %arrayidx5.us.i.3, align 1, !tbaa !2
  %conv6.us.i.3 = zext i8 %10 to i32
  %add.us.i.3 = add nuw nsw i32 %conv.us.i.3, 1
  %add7.us.i.3 = add nuw nsw i32 %add.us.i.3, %conv6.us.i.3
  %11 = lshr i32 %add7.us.i.3, 1
  %conv8.us.i.3 = trunc i32 %11 to i8
  %arrayidx9.us.i.3 = getelementptr inbounds i8, i8* %dst.addr.030.us.i, i32 3
  store i8 %conv8.us.i.3, i8* %arrayidx9.us.i.3, align 1, !tbaa !2
  %arrayidx.us.i.4 = getelementptr inbounds i8, i8* %src1.addr.029.us.i, i32 4
  %12 = load i8, i8* %arrayidx.us.i.4, align 1, !tbaa !2
  %conv.us.i.4 = zext i8 %12 to i32
  %arrayidx5.us.i.4 = getelementptr inbounds i8, i8* %src2.addr.028.us.i, i32 4
  %13 = load i8, i8* %arrayidx5.us.i.4, align 1, !tbaa !2
  %conv6.us.i.4 = zext i8 %13 to i32
  %add.us.i.4 = add nuw nsw i32 %conv.us.i.4, 1
  %add7.us.i.4 = add nuw nsw i32 %add.us.i.4, %conv6.us.i.4
  %14 = lshr i32 %add7.us.i.4, 1
  %conv8.us.i.4 = trunc i32 %14 to i8
  %arrayidx9.us.i.4 = getelementptr inbounds i8, i8* %dst.addr.030.us.i, i32 4
  store i8 %conv8.us.i.4, i8* %arrayidx9.us.i.4, align 1, !tbaa !2
  %arrayidx.us.i.5 = getelementptr inbounds i8, i8* %src1.addr.029.us.i, i32 5
  %15 = load i8, i8* %arrayidx.us.i.5, align 1, !tbaa !2
  %conv.us.i.5 = zext i8 %15 to i32
  %arrayidx5.us.i.5 = getelementptr inbounds i8, i8* %src2.addr.028.us.i, i32 5
  %16 = load i8, i8* %arrayidx5.us.i.5, align 1, !tbaa !2
  %conv6.us.i.5 = zext i8 %16 to i32
  %add.us.i.5 = add nuw nsw i32 %conv.us.i.5, 1
  %add7.us.i.5 = add nuw nsw i32 %add.us.i.5, %conv6.us.i.5
  %17 = lshr i32 %add7.us.i.5, 1
  %conv8.us.i.5 = trunc i32 %17 to i8
  %arrayidx9.us.i.5 = getelementptr inbounds i8, i8* %dst.addr.030.us.i, i32 5
  store i8 %conv8.us.i.5, i8* %arrayidx9.us.i.5, align 1, !tbaa !2
  %arrayidx.us.i.6 = getelementptr inbounds i8, i8* %src1.addr.029.us.i, i32 6
  %18 = load i8, i8* %arrayidx.us.i.6, align 1, !tbaa !2
  %conv.us.i.6 = zext i8 %18 to i32
  %arrayidx5.us.i.6 = getelementptr inbounds i8, i8* %src2.addr.028.us.i, i32 6
  %19 = load i8, i8* %arrayidx5.us.i.6, align 1, !tbaa !2
  %conv6.us.i.6 = zext i8 %19 to i32
  %add.us.i.6 = add nuw nsw i32 %conv.us.i.6, 1
  %add7.us.i.6 = add nuw nsw i32 %add.us.i.6, %conv6.us.i.6
  %20 = lshr i32 %add7.us.i.6, 1
  %conv8.us.i.6 = trunc i32 %20 to i8
  %arrayidx9.us.i.6 = getelementptr inbounds i8, i8* %dst.addr.030.us.i, i32 6
  store i8 %conv8.us.i.6, i8* %arrayidx9.us.i.6, align 1, !tbaa !2
  %arrayidx.us.i.7 = getelementptr inbounds i8, i8* %src1.addr.029.us.i, i32 7
  %21 = load i8, i8* %arrayidx.us.i.7, align 1, !tbaa !2
  %conv.us.i.7 = zext i8 %21 to i32
  %arrayidx5.us.i.7 = getelementptr inbounds i8, i8* %src2.addr.028.us.i, i32 7
  %22 = load i8, i8* %arrayidx5.us.i.7, align 1, !tbaa !2
  %conv6.us.i.7 = zext i8 %22 to i32
  %add.us.i.7 = add nuw nsw i32 %conv.us.i.7, 1
  %add7.us.i.7 = add nuw nsw i32 %add.us.i.7, %conv6.us.i.7
  %23 = lshr i32 %add7.us.i.7, 1
  %conv8.us.i.7 = trunc i32 %23 to i8
  %arrayidx9.us.i.7 = getelementptr inbounds i8, i8* %dst.addr.030.us.i, i32 7
  store i8 %conv8.us.i.7, i8* %arrayidx9.us.i.7, align 1, !tbaa !2
  %add.ptr.us.i = getelementptr inbounds i8, i8* %src1.addr.029.us.i, i32 %i_stride_pix2
  %add.ptr10.us.i = getelementptr inbounds i8, i8* %src2.addr.028.us.i, i32 %i_stride_pix3
  %add.ptr11.us.i = getelementptr inbounds i8, i8* %dst.addr.030.us.i, i32 %i_stride_pix1
  %inc13.us.i = add nuw nsw i32 %y.031.us.i, 1
  %exitcond33.i = icmp eq i32 %inc13.us.i, 8
  br i1 %exitcond33.i, label %if.end, label %for.cond1.preheader.us.i

if.else:                                          ; preds = %entry
  %sub.i = sub nsw i32 64, %weight
  br label %for.cond1.preheader.us.i2

for.cond1.preheader.us.i2:                        ; preds = %for.cond1.preheader.us.i2, %if.else
  %y.033.us.i = phi i32 [ %inc11.us.i, %for.cond1.preheader.us.i2 ], [ 0, %if.else ]
  %dst.addr.032.us.i = phi i8* [ %add.ptr.us.i12, %for.cond1.preheader.us.i2 ], [ %pix1, %if.else ]
  %src1.addr.031.us.i = phi i8* [ %add.ptr12.us.i, %for.cond1.preheader.us.i2 ], [ %pix2, %if.else ]
  %src2.addr.030.us.i = phi i8* [ %add.ptr13.us.i, %for.cond1.preheader.us.i2 ], [ %pix3, %if.else ]
  %24 = load i8, i8* %src1.addr.031.us.i, align 1, !tbaa !2
  %conv.us.i4 = zext i8 %24 to i32
  %mul.us.i = mul nsw i32 %conv.us.i4, %weight
  %25 = load i8, i8* %src2.addr.030.us.i, align 1, !tbaa !2
  %conv6.us.i6 = zext i8 %25 to i32
  %mul7.us.i = mul nsw i32 %sub.i, %conv6.us.i6
  %add.us.i7 = add i32 %mul.us.i, 32
  %add8.us.i = add i32 %add.us.i7, %mul7.us.i
  %shr.us.i = ashr i32 %add8.us.i, 6
  %tobool.i.us.i = icmp ugt i32 %shr.us.i, 255
  %sub.i.us.i = sub nsw i32 0, %shr.us.i
  %shr.i.us.i = ashr i32 %sub.i.us.i, 31
  %cond.i.us.i = select i1 %tobool.i.us.i, i32 %shr.i.us.i, i32 %shr.us.i
  %conv.i.us.i = trunc i32 %cond.i.us.i to i8
  store i8 %conv.i.us.i, i8* %dst.addr.032.us.i, align 1, !tbaa !2
  %arrayidx.us.i3.1 = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 1
  %26 = load i8, i8* %arrayidx.us.i3.1, align 1, !tbaa !2
  %conv.us.i4.1 = zext i8 %26 to i32
  %mul.us.i.1 = mul nsw i32 %conv.us.i4.1, %weight
  %arrayidx5.us.i5.1 = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 1
  %27 = load i8, i8* %arrayidx5.us.i5.1, align 1, !tbaa !2
  %conv6.us.i6.1 = zext i8 %27 to i32
  %mul7.us.i.1 = mul nsw i32 %sub.i, %conv6.us.i6.1
  %add.us.i7.1 = add i32 %mul.us.i.1, 32
  %add8.us.i.1 = add i32 %add.us.i7.1, %mul7.us.i.1
  %shr.us.i.1 = ashr i32 %add8.us.i.1, 6
  %tobool.i.us.i.1 = icmp ugt i32 %shr.us.i.1, 255
  %sub.i.us.i.1 = sub nsw i32 0, %shr.us.i.1
  %shr.i.us.i.1 = ashr i32 %sub.i.us.i.1, 31
  %cond.i.us.i.1 = select i1 %tobool.i.us.i.1, i32 %shr.i.us.i.1, i32 %shr.us.i.1
  %conv.i.us.i.1 = trunc i32 %cond.i.us.i.1 to i8
  %arrayidx9.us.i8.1 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 1
  store i8 %conv.i.us.i.1, i8* %arrayidx9.us.i8.1, align 1, !tbaa !2
  %arrayidx.us.i3.2 = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 2
  %28 = load i8, i8* %arrayidx.us.i3.2, align 1, !tbaa !2
  %conv.us.i4.2 = zext i8 %28 to i32
  %mul.us.i.2 = mul nsw i32 %conv.us.i4.2, %weight
  %arrayidx5.us.i5.2 = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 2
  %29 = load i8, i8* %arrayidx5.us.i5.2, align 1, !tbaa !2
  %conv6.us.i6.2 = zext i8 %29 to i32
  %mul7.us.i.2 = mul nsw i32 %sub.i, %conv6.us.i6.2
  %add.us.i7.2 = add i32 %mul.us.i.2, 32
  %add8.us.i.2 = add i32 %add.us.i7.2, %mul7.us.i.2
  %shr.us.i.2 = ashr i32 %add8.us.i.2, 6
  %tobool.i.us.i.2 = icmp ugt i32 %shr.us.i.2, 255
  %sub.i.us.i.2 = sub nsw i32 0, %shr.us.i.2
  %shr.i.us.i.2 = ashr i32 %sub.i.us.i.2, 31
  %cond.i.us.i.2 = select i1 %tobool.i.us.i.2, i32 %shr.i.us.i.2, i32 %shr.us.i.2
  %conv.i.us.i.2 = trunc i32 %cond.i.us.i.2 to i8
  %arrayidx9.us.i8.2 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 2
  store i8 %conv.i.us.i.2, i8* %arrayidx9.us.i8.2, align 1, !tbaa !2
  %arrayidx.us.i3.3 = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 3
  %30 = load i8, i8* %arrayidx.us.i3.3, align 1, !tbaa !2
  %conv.us.i4.3 = zext i8 %30 to i32
  %mul.us.i.3 = mul nsw i32 %conv.us.i4.3, %weight
  %arrayidx5.us.i5.3 = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 3
  %31 = load i8, i8* %arrayidx5.us.i5.3, align 1, !tbaa !2
  %conv6.us.i6.3 = zext i8 %31 to i32
  %mul7.us.i.3 = mul nsw i32 %sub.i, %conv6.us.i6.3
  %add.us.i7.3 = add i32 %mul.us.i.3, 32
  %add8.us.i.3 = add i32 %add.us.i7.3, %mul7.us.i.3
  %shr.us.i.3 = ashr i32 %add8.us.i.3, 6
  %tobool.i.us.i.3 = icmp ugt i32 %shr.us.i.3, 255
  %sub.i.us.i.3 = sub nsw i32 0, %shr.us.i.3
  %shr.i.us.i.3 = ashr i32 %sub.i.us.i.3, 31
  %cond.i.us.i.3 = select i1 %tobool.i.us.i.3, i32 %shr.i.us.i.3, i32 %shr.us.i.3
  %conv.i.us.i.3 = trunc i32 %cond.i.us.i.3 to i8
  %arrayidx9.us.i8.3 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 3
  store i8 %conv.i.us.i.3, i8* %arrayidx9.us.i8.3, align 1, !tbaa !2
  %arrayidx.us.i3.4 = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 4
  %32 = load i8, i8* %arrayidx.us.i3.4, align 1, !tbaa !2
  %conv.us.i4.4 = zext i8 %32 to i32
  %mul.us.i.4 = mul nsw i32 %conv.us.i4.4, %weight
  %arrayidx5.us.i5.4 = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 4
  %33 = load i8, i8* %arrayidx5.us.i5.4, align 1, !tbaa !2
  %conv6.us.i6.4 = zext i8 %33 to i32
  %mul7.us.i.4 = mul nsw i32 %sub.i, %conv6.us.i6.4
  %add.us.i7.4 = add i32 %mul.us.i.4, 32
  %add8.us.i.4 = add i32 %add.us.i7.4, %mul7.us.i.4
  %shr.us.i.4 = ashr i32 %add8.us.i.4, 6
  %tobool.i.us.i.4 = icmp ugt i32 %shr.us.i.4, 255
  %sub.i.us.i.4 = sub nsw i32 0, %shr.us.i.4
  %shr.i.us.i.4 = ashr i32 %sub.i.us.i.4, 31
  %cond.i.us.i.4 = select i1 %tobool.i.us.i.4, i32 %shr.i.us.i.4, i32 %shr.us.i.4
  %conv.i.us.i.4 = trunc i32 %cond.i.us.i.4 to i8
  %arrayidx9.us.i8.4 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 4
  store i8 %conv.i.us.i.4, i8* %arrayidx9.us.i8.4, align 1, !tbaa !2
  %arrayidx.us.i3.5 = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 5
  %34 = load i8, i8* %arrayidx.us.i3.5, align 1, !tbaa !2
  %conv.us.i4.5 = zext i8 %34 to i32
  %mul.us.i.5 = mul nsw i32 %conv.us.i4.5, %weight
  %arrayidx5.us.i5.5 = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 5
  %35 = load i8, i8* %arrayidx5.us.i5.5, align 1, !tbaa !2
  %conv6.us.i6.5 = zext i8 %35 to i32
  %mul7.us.i.5 = mul nsw i32 %sub.i, %conv6.us.i6.5
  %add.us.i7.5 = add i32 %mul.us.i.5, 32
  %add8.us.i.5 = add i32 %add.us.i7.5, %mul7.us.i.5
  %shr.us.i.5 = ashr i32 %add8.us.i.5, 6
  %tobool.i.us.i.5 = icmp ugt i32 %shr.us.i.5, 255
  %sub.i.us.i.5 = sub nsw i32 0, %shr.us.i.5
  %shr.i.us.i.5 = ashr i32 %sub.i.us.i.5, 31
  %cond.i.us.i.5 = select i1 %tobool.i.us.i.5, i32 %shr.i.us.i.5, i32 %shr.us.i.5
  %conv.i.us.i.5 = trunc i32 %cond.i.us.i.5 to i8
  %arrayidx9.us.i8.5 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 5
  store i8 %conv.i.us.i.5, i8* %arrayidx9.us.i8.5, align 1, !tbaa !2
  %arrayidx.us.i3.6 = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 6
  %36 = load i8, i8* %arrayidx.us.i3.6, align 1, !tbaa !2
  %conv.us.i4.6 = zext i8 %36 to i32
  %mul.us.i.6 = mul nsw i32 %conv.us.i4.6, %weight
  %arrayidx5.us.i5.6 = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 6
  %37 = load i8, i8* %arrayidx5.us.i5.6, align 1, !tbaa !2
  %conv6.us.i6.6 = zext i8 %37 to i32
  %mul7.us.i.6 = mul nsw i32 %sub.i, %conv6.us.i6.6
  %add.us.i7.6 = add i32 %mul.us.i.6, 32
  %add8.us.i.6 = add i32 %add.us.i7.6, %mul7.us.i.6
  %shr.us.i.6 = ashr i32 %add8.us.i.6, 6
  %tobool.i.us.i.6 = icmp ugt i32 %shr.us.i.6, 255
  %sub.i.us.i.6 = sub nsw i32 0, %shr.us.i.6
  %shr.i.us.i.6 = ashr i32 %sub.i.us.i.6, 31
  %cond.i.us.i.6 = select i1 %tobool.i.us.i.6, i32 %shr.i.us.i.6, i32 %shr.us.i.6
  %conv.i.us.i.6 = trunc i32 %cond.i.us.i.6 to i8
  %arrayidx9.us.i8.6 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 6
  store i8 %conv.i.us.i.6, i8* %arrayidx9.us.i8.6, align 1, !tbaa !2
  %arrayidx.us.i3.7 = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 7
  %38 = load i8, i8* %arrayidx.us.i3.7, align 1, !tbaa !2
  %conv.us.i4.7 = zext i8 %38 to i32
  %mul.us.i.7 = mul nsw i32 %conv.us.i4.7, %weight
  %arrayidx5.us.i5.7 = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 7
  %39 = load i8, i8* %arrayidx5.us.i5.7, align 1, !tbaa !2
  %conv6.us.i6.7 = zext i8 %39 to i32
  %mul7.us.i.7 = mul nsw i32 %sub.i, %conv6.us.i6.7
  %add.us.i7.7 = add i32 %mul.us.i.7, 32
  %add8.us.i.7 = add i32 %add.us.i7.7, %mul7.us.i.7
  %shr.us.i.7 = ashr i32 %add8.us.i.7, 6
  %tobool.i.us.i.7 = icmp ugt i32 %shr.us.i.7, 255
  %sub.i.us.i.7 = sub nsw i32 0, %shr.us.i.7
  %shr.i.us.i.7 = ashr i32 %sub.i.us.i.7, 31
  %cond.i.us.i.7 = select i1 %tobool.i.us.i.7, i32 %shr.i.us.i.7, i32 %shr.us.i.7
  %conv.i.us.i.7 = trunc i32 %cond.i.us.i.7 to i8
  %arrayidx9.us.i8.7 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 7
  store i8 %conv.i.us.i.7, i8* %arrayidx9.us.i8.7, align 1, !tbaa !2
  %inc11.us.i = add nuw nsw i32 %y.033.us.i, 1
  %add.ptr.us.i12 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 %i_stride_pix1
  %add.ptr12.us.i = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 %i_stride_pix2
  %add.ptr13.us.i = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 %i_stride_pix3
  %exitcond35.i = icmp eq i32 %inc11.us.i, 8
  br i1 %exitcond35.i, label %if.end, label %for.cond1.preheader.us.i2

if.end:                                           ; preds = %for.cond1.preheader.us.i2, %for.cond1.preheader.us.i
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @pixel_avg_8x4(i8* nocapture %pix1, i32 %i_stride_pix1, i8* nocapture readonly %pix2, i32 %i_stride_pix2, i8* nocapture readonly %pix3, i32 %i_stride_pix3, i32 %weight) #2 {
entry:
  %cmp = icmp eq i32 %weight, 32
  br i1 %cmp, label %for.cond1.preheader.us.i.preheader, label %if.else

for.cond1.preheader.us.i.preheader:               ; preds = %entry
  %0 = load i8, i8* %pix2, align 1, !tbaa !2
  %conv.us.i = zext i8 %0 to i32
  %1 = load i8, i8* %pix3, align 1, !tbaa !2
  %conv6.us.i = zext i8 %1 to i32
  %add.us.i = add nuw nsw i32 %conv.us.i, 1
  %add7.us.i = add nuw nsw i32 %add.us.i, %conv6.us.i
  %2 = lshr i32 %add7.us.i, 1
  %conv8.us.i = trunc i32 %2 to i8
  store i8 %conv8.us.i, i8* %pix1, align 1, !tbaa !2
  %arrayidx.us.i.1 = getelementptr inbounds i8, i8* %pix2, i32 1
  %3 = load i8, i8* %arrayidx.us.i.1, align 1, !tbaa !2
  %conv.us.i.1 = zext i8 %3 to i32
  %arrayidx5.us.i.1 = getelementptr inbounds i8, i8* %pix3, i32 1
  %4 = load i8, i8* %arrayidx5.us.i.1, align 1, !tbaa !2
  %conv6.us.i.1 = zext i8 %4 to i32
  %add.us.i.1 = add nuw nsw i32 %conv.us.i.1, 1
  %add7.us.i.1 = add nuw nsw i32 %add.us.i.1, %conv6.us.i.1
  %5 = lshr i32 %add7.us.i.1, 1
  %conv8.us.i.1 = trunc i32 %5 to i8
  %arrayidx9.us.i.1 = getelementptr inbounds i8, i8* %pix1, i32 1
  store i8 %conv8.us.i.1, i8* %arrayidx9.us.i.1, align 1, !tbaa !2
  %arrayidx.us.i.2 = getelementptr inbounds i8, i8* %pix2, i32 2
  %6 = load i8, i8* %arrayidx.us.i.2, align 1, !tbaa !2
  %conv.us.i.2 = zext i8 %6 to i32
  %arrayidx5.us.i.2 = getelementptr inbounds i8, i8* %pix3, i32 2
  %7 = load i8, i8* %arrayidx5.us.i.2, align 1, !tbaa !2
  %conv6.us.i.2 = zext i8 %7 to i32
  %add.us.i.2 = add nuw nsw i32 %conv.us.i.2, 1
  %add7.us.i.2 = add nuw nsw i32 %add.us.i.2, %conv6.us.i.2
  %8 = lshr i32 %add7.us.i.2, 1
  %conv8.us.i.2 = trunc i32 %8 to i8
  %arrayidx9.us.i.2 = getelementptr inbounds i8, i8* %pix1, i32 2
  store i8 %conv8.us.i.2, i8* %arrayidx9.us.i.2, align 1, !tbaa !2
  %arrayidx.us.i.3 = getelementptr inbounds i8, i8* %pix2, i32 3
  %9 = load i8, i8* %arrayidx.us.i.3, align 1, !tbaa !2
  %conv.us.i.3 = zext i8 %9 to i32
  %arrayidx5.us.i.3 = getelementptr inbounds i8, i8* %pix3, i32 3
  %10 = load i8, i8* %arrayidx5.us.i.3, align 1, !tbaa !2
  %conv6.us.i.3 = zext i8 %10 to i32
  %add.us.i.3 = add nuw nsw i32 %conv.us.i.3, 1
  %add7.us.i.3 = add nuw nsw i32 %add.us.i.3, %conv6.us.i.3
  %11 = lshr i32 %add7.us.i.3, 1
  %conv8.us.i.3 = trunc i32 %11 to i8
  %arrayidx9.us.i.3 = getelementptr inbounds i8, i8* %pix1, i32 3
  store i8 %conv8.us.i.3, i8* %arrayidx9.us.i.3, align 1, !tbaa !2
  %arrayidx.us.i.4 = getelementptr inbounds i8, i8* %pix2, i32 4
  %12 = load i8, i8* %arrayidx.us.i.4, align 1, !tbaa !2
  %conv.us.i.4 = zext i8 %12 to i32
  %arrayidx5.us.i.4 = getelementptr inbounds i8, i8* %pix3, i32 4
  %13 = load i8, i8* %arrayidx5.us.i.4, align 1, !tbaa !2
  %conv6.us.i.4 = zext i8 %13 to i32
  %add.us.i.4 = add nuw nsw i32 %conv.us.i.4, 1
  %add7.us.i.4 = add nuw nsw i32 %add.us.i.4, %conv6.us.i.4
  %14 = lshr i32 %add7.us.i.4, 1
  %conv8.us.i.4 = trunc i32 %14 to i8
  %arrayidx9.us.i.4 = getelementptr inbounds i8, i8* %pix1, i32 4
  store i8 %conv8.us.i.4, i8* %arrayidx9.us.i.4, align 1, !tbaa !2
  %arrayidx.us.i.5 = getelementptr inbounds i8, i8* %pix2, i32 5
  %15 = load i8, i8* %arrayidx.us.i.5, align 1, !tbaa !2
  %conv.us.i.5 = zext i8 %15 to i32
  %arrayidx5.us.i.5 = getelementptr inbounds i8, i8* %pix3, i32 5
  %16 = load i8, i8* %arrayidx5.us.i.5, align 1, !tbaa !2
  %conv6.us.i.5 = zext i8 %16 to i32
  %add.us.i.5 = add nuw nsw i32 %conv.us.i.5, 1
  %add7.us.i.5 = add nuw nsw i32 %add.us.i.5, %conv6.us.i.5
  %17 = lshr i32 %add7.us.i.5, 1
  %conv8.us.i.5 = trunc i32 %17 to i8
  %arrayidx9.us.i.5 = getelementptr inbounds i8, i8* %pix1, i32 5
  store i8 %conv8.us.i.5, i8* %arrayidx9.us.i.5, align 1, !tbaa !2
  %arrayidx.us.i.6 = getelementptr inbounds i8, i8* %pix2, i32 6
  %18 = load i8, i8* %arrayidx.us.i.6, align 1, !tbaa !2
  %conv.us.i.6 = zext i8 %18 to i32
  %arrayidx5.us.i.6 = getelementptr inbounds i8, i8* %pix3, i32 6
  %19 = load i8, i8* %arrayidx5.us.i.6, align 1, !tbaa !2
  %conv6.us.i.6 = zext i8 %19 to i32
  %add.us.i.6 = add nuw nsw i32 %conv.us.i.6, 1
  %add7.us.i.6 = add nuw nsw i32 %add.us.i.6, %conv6.us.i.6
  %20 = lshr i32 %add7.us.i.6, 1
  %conv8.us.i.6 = trunc i32 %20 to i8
  %arrayidx9.us.i.6 = getelementptr inbounds i8, i8* %pix1, i32 6
  store i8 %conv8.us.i.6, i8* %arrayidx9.us.i.6, align 1, !tbaa !2
  %arrayidx.us.i.7 = getelementptr inbounds i8, i8* %pix2, i32 7
  %21 = load i8, i8* %arrayidx.us.i.7, align 1, !tbaa !2
  %conv.us.i.7 = zext i8 %21 to i32
  %arrayidx5.us.i.7 = getelementptr inbounds i8, i8* %pix3, i32 7
  %22 = load i8, i8* %arrayidx5.us.i.7, align 1, !tbaa !2
  %conv6.us.i.7 = zext i8 %22 to i32
  %add.us.i.7 = add nuw nsw i32 %conv.us.i.7, 1
  %add7.us.i.7 = add nuw nsw i32 %add.us.i.7, %conv6.us.i.7
  %23 = lshr i32 %add7.us.i.7, 1
  %conv8.us.i.7 = trunc i32 %23 to i8
  %arrayidx9.us.i.7 = getelementptr inbounds i8, i8* %pix1, i32 7
  store i8 %conv8.us.i.7, i8* %arrayidx9.us.i.7, align 1, !tbaa !2
  %add.ptr.us.i = getelementptr inbounds i8, i8* %pix2, i32 %i_stride_pix2
  %add.ptr10.us.i = getelementptr inbounds i8, i8* %pix3, i32 %i_stride_pix3
  %add.ptr11.us.i = getelementptr inbounds i8, i8* %pix1, i32 %i_stride_pix1
  %24 = load i8, i8* %add.ptr.us.i, align 1, !tbaa !2
  %conv.us.i.116 = zext i8 %24 to i32
  %25 = load i8, i8* %add.ptr10.us.i, align 1, !tbaa !2
  %conv6.us.i.117 = zext i8 %25 to i32
  %add.us.i.118 = add nuw nsw i32 %conv.us.i.116, 1
  %add7.us.i.119 = add nuw nsw i32 %add.us.i.118, %conv6.us.i.117
  %26 = lshr i32 %add7.us.i.119, 1
  %conv8.us.i.120 = trunc i32 %26 to i8
  store i8 %conv8.us.i.120, i8* %add.ptr11.us.i, align 1, !tbaa !2
  %arrayidx.us.i.1.1 = getelementptr inbounds i8, i8* %add.ptr.us.i, i32 1
  %27 = load i8, i8* %arrayidx.us.i.1.1, align 1, !tbaa !2
  %conv.us.i.1.1 = zext i8 %27 to i32
  %arrayidx5.us.i.1.1 = getelementptr inbounds i8, i8* %add.ptr10.us.i, i32 1
  %28 = load i8, i8* %arrayidx5.us.i.1.1, align 1, !tbaa !2
  %conv6.us.i.1.1 = zext i8 %28 to i32
  %add.us.i.1.1 = add nuw nsw i32 %conv.us.i.1.1, 1
  %add7.us.i.1.1 = add nuw nsw i32 %add.us.i.1.1, %conv6.us.i.1.1
  %29 = lshr i32 %add7.us.i.1.1, 1
  %conv8.us.i.1.1 = trunc i32 %29 to i8
  %arrayidx9.us.i.1.1 = getelementptr inbounds i8, i8* %add.ptr11.us.i, i32 1
  store i8 %conv8.us.i.1.1, i8* %arrayidx9.us.i.1.1, align 1, !tbaa !2
  %arrayidx.us.i.2.1 = getelementptr inbounds i8, i8* %add.ptr.us.i, i32 2
  %30 = load i8, i8* %arrayidx.us.i.2.1, align 1, !tbaa !2
  %conv.us.i.2.1 = zext i8 %30 to i32
  %arrayidx5.us.i.2.1 = getelementptr inbounds i8, i8* %add.ptr10.us.i, i32 2
  %31 = load i8, i8* %arrayidx5.us.i.2.1, align 1, !tbaa !2
  %conv6.us.i.2.1 = zext i8 %31 to i32
  %add.us.i.2.1 = add nuw nsw i32 %conv.us.i.2.1, 1
  %add7.us.i.2.1 = add nuw nsw i32 %add.us.i.2.1, %conv6.us.i.2.1
  %32 = lshr i32 %add7.us.i.2.1, 1
  %conv8.us.i.2.1 = trunc i32 %32 to i8
  %arrayidx9.us.i.2.1 = getelementptr inbounds i8, i8* %add.ptr11.us.i, i32 2
  store i8 %conv8.us.i.2.1, i8* %arrayidx9.us.i.2.1, align 1, !tbaa !2
  %arrayidx.us.i.3.1 = getelementptr inbounds i8, i8* %add.ptr.us.i, i32 3
  %33 = load i8, i8* %arrayidx.us.i.3.1, align 1, !tbaa !2
  %conv.us.i.3.1 = zext i8 %33 to i32
  %arrayidx5.us.i.3.1 = getelementptr inbounds i8, i8* %add.ptr10.us.i, i32 3
  %34 = load i8, i8* %arrayidx5.us.i.3.1, align 1, !tbaa !2
  %conv6.us.i.3.1 = zext i8 %34 to i32
  %add.us.i.3.1 = add nuw nsw i32 %conv.us.i.3.1, 1
  %add7.us.i.3.1 = add nuw nsw i32 %add.us.i.3.1, %conv6.us.i.3.1
  %35 = lshr i32 %add7.us.i.3.1, 1
  %conv8.us.i.3.1 = trunc i32 %35 to i8
  %arrayidx9.us.i.3.1 = getelementptr inbounds i8, i8* %add.ptr11.us.i, i32 3
  store i8 %conv8.us.i.3.1, i8* %arrayidx9.us.i.3.1, align 1, !tbaa !2
  %arrayidx.us.i.4.1 = getelementptr inbounds i8, i8* %add.ptr.us.i, i32 4
  %36 = load i8, i8* %arrayidx.us.i.4.1, align 1, !tbaa !2
  %conv.us.i.4.1 = zext i8 %36 to i32
  %arrayidx5.us.i.4.1 = getelementptr inbounds i8, i8* %add.ptr10.us.i, i32 4
  %37 = load i8, i8* %arrayidx5.us.i.4.1, align 1, !tbaa !2
  %conv6.us.i.4.1 = zext i8 %37 to i32
  %add.us.i.4.1 = add nuw nsw i32 %conv.us.i.4.1, 1
  %add7.us.i.4.1 = add nuw nsw i32 %add.us.i.4.1, %conv6.us.i.4.1
  %38 = lshr i32 %add7.us.i.4.1, 1
  %conv8.us.i.4.1 = trunc i32 %38 to i8
  %arrayidx9.us.i.4.1 = getelementptr inbounds i8, i8* %add.ptr11.us.i, i32 4
  store i8 %conv8.us.i.4.1, i8* %arrayidx9.us.i.4.1, align 1, !tbaa !2
  %arrayidx.us.i.5.1 = getelementptr inbounds i8, i8* %add.ptr.us.i, i32 5
  %39 = load i8, i8* %arrayidx.us.i.5.1, align 1, !tbaa !2
  %conv.us.i.5.1 = zext i8 %39 to i32
  %arrayidx5.us.i.5.1 = getelementptr inbounds i8, i8* %add.ptr10.us.i, i32 5
  %40 = load i8, i8* %arrayidx5.us.i.5.1, align 1, !tbaa !2
  %conv6.us.i.5.1 = zext i8 %40 to i32
  %add.us.i.5.1 = add nuw nsw i32 %conv.us.i.5.1, 1
  %add7.us.i.5.1 = add nuw nsw i32 %add.us.i.5.1, %conv6.us.i.5.1
  %41 = lshr i32 %add7.us.i.5.1, 1
  %conv8.us.i.5.1 = trunc i32 %41 to i8
  %arrayidx9.us.i.5.1 = getelementptr inbounds i8, i8* %add.ptr11.us.i, i32 5
  store i8 %conv8.us.i.5.1, i8* %arrayidx9.us.i.5.1, align 1, !tbaa !2
  %arrayidx.us.i.6.1 = getelementptr inbounds i8, i8* %add.ptr.us.i, i32 6
  %42 = load i8, i8* %arrayidx.us.i.6.1, align 1, !tbaa !2
  %conv.us.i.6.1 = zext i8 %42 to i32
  %arrayidx5.us.i.6.1 = getelementptr inbounds i8, i8* %add.ptr10.us.i, i32 6
  %43 = load i8, i8* %arrayidx5.us.i.6.1, align 1, !tbaa !2
  %conv6.us.i.6.1 = zext i8 %43 to i32
  %add.us.i.6.1 = add nuw nsw i32 %conv.us.i.6.1, 1
  %add7.us.i.6.1 = add nuw nsw i32 %add.us.i.6.1, %conv6.us.i.6.1
  %44 = lshr i32 %add7.us.i.6.1, 1
  %conv8.us.i.6.1 = trunc i32 %44 to i8
  %arrayidx9.us.i.6.1 = getelementptr inbounds i8, i8* %add.ptr11.us.i, i32 6
  store i8 %conv8.us.i.6.1, i8* %arrayidx9.us.i.6.1, align 1, !tbaa !2
  %arrayidx.us.i.7.1 = getelementptr inbounds i8, i8* %add.ptr.us.i, i32 7
  %45 = load i8, i8* %arrayidx.us.i.7.1, align 1, !tbaa !2
  %conv.us.i.7.1 = zext i8 %45 to i32
  %arrayidx5.us.i.7.1 = getelementptr inbounds i8, i8* %add.ptr10.us.i, i32 7
  %46 = load i8, i8* %arrayidx5.us.i.7.1, align 1, !tbaa !2
  %conv6.us.i.7.1 = zext i8 %46 to i32
  %add.us.i.7.1 = add nuw nsw i32 %conv.us.i.7.1, 1
  %add7.us.i.7.1 = add nuw nsw i32 %add.us.i.7.1, %conv6.us.i.7.1
  %47 = lshr i32 %add7.us.i.7.1, 1
  %conv8.us.i.7.1 = trunc i32 %47 to i8
  %arrayidx9.us.i.7.1 = getelementptr inbounds i8, i8* %add.ptr11.us.i, i32 7
  store i8 %conv8.us.i.7.1, i8* %arrayidx9.us.i.7.1, align 1, !tbaa !2
  %add.ptr.us.i.1 = getelementptr inbounds i8, i8* %add.ptr.us.i, i32 %i_stride_pix2
  %add.ptr10.us.i.1 = getelementptr inbounds i8, i8* %add.ptr10.us.i, i32 %i_stride_pix3
  %add.ptr11.us.i.1 = getelementptr inbounds i8, i8* %add.ptr11.us.i, i32 %i_stride_pix1
  %48 = load i8, i8* %add.ptr.us.i.1, align 1, !tbaa !2
  %conv.us.i.221 = zext i8 %48 to i32
  %49 = load i8, i8* %add.ptr10.us.i.1, align 1, !tbaa !2
  %conv6.us.i.222 = zext i8 %49 to i32
  %add.us.i.223 = add nuw nsw i32 %conv.us.i.221, 1
  %add7.us.i.224 = add nuw nsw i32 %add.us.i.223, %conv6.us.i.222
  %50 = lshr i32 %add7.us.i.224, 1
  %conv8.us.i.225 = trunc i32 %50 to i8
  store i8 %conv8.us.i.225, i8* %add.ptr11.us.i.1, align 1, !tbaa !2
  %arrayidx.us.i.1.2 = getelementptr inbounds i8, i8* %add.ptr.us.i.1, i32 1
  %51 = load i8, i8* %arrayidx.us.i.1.2, align 1, !tbaa !2
  %conv.us.i.1.2 = zext i8 %51 to i32
  %arrayidx5.us.i.1.2 = getelementptr inbounds i8, i8* %add.ptr10.us.i.1, i32 1
  %52 = load i8, i8* %arrayidx5.us.i.1.2, align 1, !tbaa !2
  %conv6.us.i.1.2 = zext i8 %52 to i32
  %add.us.i.1.2 = add nuw nsw i32 %conv.us.i.1.2, 1
  %add7.us.i.1.2 = add nuw nsw i32 %add.us.i.1.2, %conv6.us.i.1.2
  %53 = lshr i32 %add7.us.i.1.2, 1
  %conv8.us.i.1.2 = trunc i32 %53 to i8
  %arrayidx9.us.i.1.2 = getelementptr inbounds i8, i8* %add.ptr11.us.i.1, i32 1
  store i8 %conv8.us.i.1.2, i8* %arrayidx9.us.i.1.2, align 1, !tbaa !2
  %arrayidx.us.i.2.2 = getelementptr inbounds i8, i8* %add.ptr.us.i.1, i32 2
  %54 = load i8, i8* %arrayidx.us.i.2.2, align 1, !tbaa !2
  %conv.us.i.2.2 = zext i8 %54 to i32
  %arrayidx5.us.i.2.2 = getelementptr inbounds i8, i8* %add.ptr10.us.i.1, i32 2
  %55 = load i8, i8* %arrayidx5.us.i.2.2, align 1, !tbaa !2
  %conv6.us.i.2.2 = zext i8 %55 to i32
  %add.us.i.2.2 = add nuw nsw i32 %conv.us.i.2.2, 1
  %add7.us.i.2.2 = add nuw nsw i32 %add.us.i.2.2, %conv6.us.i.2.2
  %56 = lshr i32 %add7.us.i.2.2, 1
  %conv8.us.i.2.2 = trunc i32 %56 to i8
  %arrayidx9.us.i.2.2 = getelementptr inbounds i8, i8* %add.ptr11.us.i.1, i32 2
  store i8 %conv8.us.i.2.2, i8* %arrayidx9.us.i.2.2, align 1, !tbaa !2
  %arrayidx.us.i.3.2 = getelementptr inbounds i8, i8* %add.ptr.us.i.1, i32 3
  %57 = load i8, i8* %arrayidx.us.i.3.2, align 1, !tbaa !2
  %conv.us.i.3.2 = zext i8 %57 to i32
  %arrayidx5.us.i.3.2 = getelementptr inbounds i8, i8* %add.ptr10.us.i.1, i32 3
  %58 = load i8, i8* %arrayidx5.us.i.3.2, align 1, !tbaa !2
  %conv6.us.i.3.2 = zext i8 %58 to i32
  %add.us.i.3.2 = add nuw nsw i32 %conv.us.i.3.2, 1
  %add7.us.i.3.2 = add nuw nsw i32 %add.us.i.3.2, %conv6.us.i.3.2
  %59 = lshr i32 %add7.us.i.3.2, 1
  %conv8.us.i.3.2 = trunc i32 %59 to i8
  %arrayidx9.us.i.3.2 = getelementptr inbounds i8, i8* %add.ptr11.us.i.1, i32 3
  store i8 %conv8.us.i.3.2, i8* %arrayidx9.us.i.3.2, align 1, !tbaa !2
  %arrayidx.us.i.4.2 = getelementptr inbounds i8, i8* %add.ptr.us.i.1, i32 4
  %60 = load i8, i8* %arrayidx.us.i.4.2, align 1, !tbaa !2
  %conv.us.i.4.2 = zext i8 %60 to i32
  %arrayidx5.us.i.4.2 = getelementptr inbounds i8, i8* %add.ptr10.us.i.1, i32 4
  %61 = load i8, i8* %arrayidx5.us.i.4.2, align 1, !tbaa !2
  %conv6.us.i.4.2 = zext i8 %61 to i32
  %add.us.i.4.2 = add nuw nsw i32 %conv.us.i.4.2, 1
  %add7.us.i.4.2 = add nuw nsw i32 %add.us.i.4.2, %conv6.us.i.4.2
  %62 = lshr i32 %add7.us.i.4.2, 1
  %conv8.us.i.4.2 = trunc i32 %62 to i8
  %arrayidx9.us.i.4.2 = getelementptr inbounds i8, i8* %add.ptr11.us.i.1, i32 4
  store i8 %conv8.us.i.4.2, i8* %arrayidx9.us.i.4.2, align 1, !tbaa !2
  %arrayidx.us.i.5.2 = getelementptr inbounds i8, i8* %add.ptr.us.i.1, i32 5
  %63 = load i8, i8* %arrayidx.us.i.5.2, align 1, !tbaa !2
  %conv.us.i.5.2 = zext i8 %63 to i32
  %arrayidx5.us.i.5.2 = getelementptr inbounds i8, i8* %add.ptr10.us.i.1, i32 5
  %64 = load i8, i8* %arrayidx5.us.i.5.2, align 1, !tbaa !2
  %conv6.us.i.5.2 = zext i8 %64 to i32
  %add.us.i.5.2 = add nuw nsw i32 %conv.us.i.5.2, 1
  %add7.us.i.5.2 = add nuw nsw i32 %add.us.i.5.2, %conv6.us.i.5.2
  %65 = lshr i32 %add7.us.i.5.2, 1
  %conv8.us.i.5.2 = trunc i32 %65 to i8
  %arrayidx9.us.i.5.2 = getelementptr inbounds i8, i8* %add.ptr11.us.i.1, i32 5
  store i8 %conv8.us.i.5.2, i8* %arrayidx9.us.i.5.2, align 1, !tbaa !2
  %arrayidx.us.i.6.2 = getelementptr inbounds i8, i8* %add.ptr.us.i.1, i32 6
  %66 = load i8, i8* %arrayidx.us.i.6.2, align 1, !tbaa !2
  %conv.us.i.6.2 = zext i8 %66 to i32
  %arrayidx5.us.i.6.2 = getelementptr inbounds i8, i8* %add.ptr10.us.i.1, i32 6
  %67 = load i8, i8* %arrayidx5.us.i.6.2, align 1, !tbaa !2
  %conv6.us.i.6.2 = zext i8 %67 to i32
  %add.us.i.6.2 = add nuw nsw i32 %conv.us.i.6.2, 1
  %add7.us.i.6.2 = add nuw nsw i32 %add.us.i.6.2, %conv6.us.i.6.2
  %68 = lshr i32 %add7.us.i.6.2, 1
  %conv8.us.i.6.2 = trunc i32 %68 to i8
  %arrayidx9.us.i.6.2 = getelementptr inbounds i8, i8* %add.ptr11.us.i.1, i32 6
  store i8 %conv8.us.i.6.2, i8* %arrayidx9.us.i.6.2, align 1, !tbaa !2
  %arrayidx.us.i.7.2 = getelementptr inbounds i8, i8* %add.ptr.us.i.1, i32 7
  %69 = load i8, i8* %arrayidx.us.i.7.2, align 1, !tbaa !2
  %conv.us.i.7.2 = zext i8 %69 to i32
  %arrayidx5.us.i.7.2 = getelementptr inbounds i8, i8* %add.ptr10.us.i.1, i32 7
  %70 = load i8, i8* %arrayidx5.us.i.7.2, align 1, !tbaa !2
  %conv6.us.i.7.2 = zext i8 %70 to i32
  %add.us.i.7.2 = add nuw nsw i32 %conv.us.i.7.2, 1
  %add7.us.i.7.2 = add nuw nsw i32 %add.us.i.7.2, %conv6.us.i.7.2
  %71 = lshr i32 %add7.us.i.7.2, 1
  %conv8.us.i.7.2 = trunc i32 %71 to i8
  %arrayidx9.us.i.7.2 = getelementptr inbounds i8, i8* %add.ptr11.us.i.1, i32 7
  store i8 %conv8.us.i.7.2, i8* %arrayidx9.us.i.7.2, align 1, !tbaa !2
  %add.ptr.us.i.2 = getelementptr inbounds i8, i8* %add.ptr.us.i.1, i32 %i_stride_pix2
  %add.ptr10.us.i.2 = getelementptr inbounds i8, i8* %add.ptr10.us.i.1, i32 %i_stride_pix3
  %add.ptr11.us.i.2 = getelementptr inbounds i8, i8* %add.ptr11.us.i.1, i32 %i_stride_pix1
  %72 = load i8, i8* %add.ptr.us.i.2, align 1, !tbaa !2
  %conv.us.i.326 = zext i8 %72 to i32
  %73 = load i8, i8* %add.ptr10.us.i.2, align 1, !tbaa !2
  %conv6.us.i.327 = zext i8 %73 to i32
  %add.us.i.328 = add nuw nsw i32 %conv.us.i.326, 1
  %add7.us.i.329 = add nuw nsw i32 %add.us.i.328, %conv6.us.i.327
  %74 = lshr i32 %add7.us.i.329, 1
  %conv8.us.i.330 = trunc i32 %74 to i8
  store i8 %conv8.us.i.330, i8* %add.ptr11.us.i.2, align 1, !tbaa !2
  %arrayidx.us.i.1.3 = getelementptr inbounds i8, i8* %add.ptr.us.i.2, i32 1
  %75 = load i8, i8* %arrayidx.us.i.1.3, align 1, !tbaa !2
  %conv.us.i.1.3 = zext i8 %75 to i32
  %arrayidx5.us.i.1.3 = getelementptr inbounds i8, i8* %add.ptr10.us.i.2, i32 1
  %76 = load i8, i8* %arrayidx5.us.i.1.3, align 1, !tbaa !2
  %conv6.us.i.1.3 = zext i8 %76 to i32
  %add.us.i.1.3 = add nuw nsw i32 %conv.us.i.1.3, 1
  %add7.us.i.1.3 = add nuw nsw i32 %add.us.i.1.3, %conv6.us.i.1.3
  %77 = lshr i32 %add7.us.i.1.3, 1
  %conv8.us.i.1.3 = trunc i32 %77 to i8
  %arrayidx9.us.i.1.3 = getelementptr inbounds i8, i8* %add.ptr11.us.i.2, i32 1
  store i8 %conv8.us.i.1.3, i8* %arrayidx9.us.i.1.3, align 1, !tbaa !2
  %arrayidx.us.i.2.3 = getelementptr inbounds i8, i8* %add.ptr.us.i.2, i32 2
  %78 = load i8, i8* %arrayidx.us.i.2.3, align 1, !tbaa !2
  %conv.us.i.2.3 = zext i8 %78 to i32
  %arrayidx5.us.i.2.3 = getelementptr inbounds i8, i8* %add.ptr10.us.i.2, i32 2
  %79 = load i8, i8* %arrayidx5.us.i.2.3, align 1, !tbaa !2
  %conv6.us.i.2.3 = zext i8 %79 to i32
  %add.us.i.2.3 = add nuw nsw i32 %conv.us.i.2.3, 1
  %add7.us.i.2.3 = add nuw nsw i32 %add.us.i.2.3, %conv6.us.i.2.3
  %80 = lshr i32 %add7.us.i.2.3, 1
  %conv8.us.i.2.3 = trunc i32 %80 to i8
  %arrayidx9.us.i.2.3 = getelementptr inbounds i8, i8* %add.ptr11.us.i.2, i32 2
  store i8 %conv8.us.i.2.3, i8* %arrayidx9.us.i.2.3, align 1, !tbaa !2
  %arrayidx.us.i.3.3 = getelementptr inbounds i8, i8* %add.ptr.us.i.2, i32 3
  %81 = load i8, i8* %arrayidx.us.i.3.3, align 1, !tbaa !2
  %conv.us.i.3.3 = zext i8 %81 to i32
  %arrayidx5.us.i.3.3 = getelementptr inbounds i8, i8* %add.ptr10.us.i.2, i32 3
  %82 = load i8, i8* %arrayidx5.us.i.3.3, align 1, !tbaa !2
  %conv6.us.i.3.3 = zext i8 %82 to i32
  %add.us.i.3.3 = add nuw nsw i32 %conv.us.i.3.3, 1
  %add7.us.i.3.3 = add nuw nsw i32 %add.us.i.3.3, %conv6.us.i.3.3
  %83 = lshr i32 %add7.us.i.3.3, 1
  %conv8.us.i.3.3 = trunc i32 %83 to i8
  %arrayidx9.us.i.3.3 = getelementptr inbounds i8, i8* %add.ptr11.us.i.2, i32 3
  store i8 %conv8.us.i.3.3, i8* %arrayidx9.us.i.3.3, align 1, !tbaa !2
  %arrayidx.us.i.4.3 = getelementptr inbounds i8, i8* %add.ptr.us.i.2, i32 4
  %84 = load i8, i8* %arrayidx.us.i.4.3, align 1, !tbaa !2
  %conv.us.i.4.3 = zext i8 %84 to i32
  %arrayidx5.us.i.4.3 = getelementptr inbounds i8, i8* %add.ptr10.us.i.2, i32 4
  %85 = load i8, i8* %arrayidx5.us.i.4.3, align 1, !tbaa !2
  %conv6.us.i.4.3 = zext i8 %85 to i32
  %add.us.i.4.3 = add nuw nsw i32 %conv.us.i.4.3, 1
  %add7.us.i.4.3 = add nuw nsw i32 %add.us.i.4.3, %conv6.us.i.4.3
  %86 = lshr i32 %add7.us.i.4.3, 1
  %conv8.us.i.4.3 = trunc i32 %86 to i8
  %arrayidx9.us.i.4.3 = getelementptr inbounds i8, i8* %add.ptr11.us.i.2, i32 4
  store i8 %conv8.us.i.4.3, i8* %arrayidx9.us.i.4.3, align 1, !tbaa !2
  %arrayidx.us.i.5.3 = getelementptr inbounds i8, i8* %add.ptr.us.i.2, i32 5
  %87 = load i8, i8* %arrayidx.us.i.5.3, align 1, !tbaa !2
  %conv.us.i.5.3 = zext i8 %87 to i32
  %arrayidx5.us.i.5.3 = getelementptr inbounds i8, i8* %add.ptr10.us.i.2, i32 5
  %88 = load i8, i8* %arrayidx5.us.i.5.3, align 1, !tbaa !2
  %conv6.us.i.5.3 = zext i8 %88 to i32
  %add.us.i.5.3 = add nuw nsw i32 %conv.us.i.5.3, 1
  %add7.us.i.5.3 = add nuw nsw i32 %add.us.i.5.3, %conv6.us.i.5.3
  %89 = lshr i32 %add7.us.i.5.3, 1
  %conv8.us.i.5.3 = trunc i32 %89 to i8
  %arrayidx9.us.i.5.3 = getelementptr inbounds i8, i8* %add.ptr11.us.i.2, i32 5
  store i8 %conv8.us.i.5.3, i8* %arrayidx9.us.i.5.3, align 1, !tbaa !2
  %arrayidx.us.i.6.3 = getelementptr inbounds i8, i8* %add.ptr.us.i.2, i32 6
  %90 = load i8, i8* %arrayidx.us.i.6.3, align 1, !tbaa !2
  %conv.us.i.6.3 = zext i8 %90 to i32
  %arrayidx5.us.i.6.3 = getelementptr inbounds i8, i8* %add.ptr10.us.i.2, i32 6
  %91 = load i8, i8* %arrayidx5.us.i.6.3, align 1, !tbaa !2
  %conv6.us.i.6.3 = zext i8 %91 to i32
  %add.us.i.6.3 = add nuw nsw i32 %conv.us.i.6.3, 1
  %add7.us.i.6.3 = add nuw nsw i32 %add.us.i.6.3, %conv6.us.i.6.3
  %92 = lshr i32 %add7.us.i.6.3, 1
  %conv8.us.i.6.3 = trunc i32 %92 to i8
  %arrayidx9.us.i.6.3 = getelementptr inbounds i8, i8* %add.ptr11.us.i.2, i32 6
  store i8 %conv8.us.i.6.3, i8* %arrayidx9.us.i.6.3, align 1, !tbaa !2
  %arrayidx.us.i.7.3 = getelementptr inbounds i8, i8* %add.ptr.us.i.2, i32 7
  %93 = load i8, i8* %arrayidx.us.i.7.3, align 1, !tbaa !2
  %conv.us.i.7.3 = zext i8 %93 to i32
  %arrayidx5.us.i.7.3 = getelementptr inbounds i8, i8* %add.ptr10.us.i.2, i32 7
  %94 = load i8, i8* %arrayidx5.us.i.7.3, align 1, !tbaa !2
  %conv6.us.i.7.3 = zext i8 %94 to i32
  %add.us.i.7.3 = add nuw nsw i32 %conv.us.i.7.3, 1
  %add7.us.i.7.3 = add nuw nsw i32 %add.us.i.7.3, %conv6.us.i.7.3
  %95 = lshr i32 %add7.us.i.7.3, 1
  %conv8.us.i.7.3 = trunc i32 %95 to i8
  %arrayidx9.us.i.7.3 = getelementptr inbounds i8, i8* %add.ptr11.us.i.2, i32 7
  store i8 %conv8.us.i.7.3, i8* %arrayidx9.us.i.7.3, align 1, !tbaa !2
  br label %if.end

if.else:                                          ; preds = %entry
  %sub.i = sub nsw i32 64, %weight
  br label %for.cond1.preheader.us.i2

for.cond1.preheader.us.i2:                        ; preds = %for.cond1.preheader.us.i2, %if.else
  %y.033.us.i = phi i32 [ %inc11.us.i, %for.cond1.preheader.us.i2 ], [ 0, %if.else ]
  %dst.addr.032.us.i = phi i8* [ %add.ptr.us.i12, %for.cond1.preheader.us.i2 ], [ %pix1, %if.else ]
  %src1.addr.031.us.i = phi i8* [ %add.ptr12.us.i, %for.cond1.preheader.us.i2 ], [ %pix2, %if.else ]
  %src2.addr.030.us.i = phi i8* [ %add.ptr13.us.i, %for.cond1.preheader.us.i2 ], [ %pix3, %if.else ]
  %96 = load i8, i8* %src1.addr.031.us.i, align 1, !tbaa !2
  %conv.us.i4 = zext i8 %96 to i32
  %mul.us.i = mul nsw i32 %conv.us.i4, %weight
  %97 = load i8, i8* %src2.addr.030.us.i, align 1, !tbaa !2
  %conv6.us.i6 = zext i8 %97 to i32
  %mul7.us.i = mul nsw i32 %sub.i, %conv6.us.i6
  %add.us.i7 = add i32 %mul.us.i, 32
  %add8.us.i = add i32 %add.us.i7, %mul7.us.i
  %shr.us.i = ashr i32 %add8.us.i, 6
  %tobool.i.us.i = icmp ugt i32 %shr.us.i, 255
  %sub.i.us.i = sub nsw i32 0, %shr.us.i
  %shr.i.us.i = ashr i32 %sub.i.us.i, 31
  %cond.i.us.i = select i1 %tobool.i.us.i, i32 %shr.i.us.i, i32 %shr.us.i
  %conv.i.us.i = trunc i32 %cond.i.us.i to i8
  store i8 %conv.i.us.i, i8* %dst.addr.032.us.i, align 1, !tbaa !2
  %arrayidx.us.i3.1 = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 1
  %98 = load i8, i8* %arrayidx.us.i3.1, align 1, !tbaa !2
  %conv.us.i4.1 = zext i8 %98 to i32
  %mul.us.i.1 = mul nsw i32 %conv.us.i4.1, %weight
  %arrayidx5.us.i5.1 = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 1
  %99 = load i8, i8* %arrayidx5.us.i5.1, align 1, !tbaa !2
  %conv6.us.i6.1 = zext i8 %99 to i32
  %mul7.us.i.1 = mul nsw i32 %sub.i, %conv6.us.i6.1
  %add.us.i7.1 = add i32 %mul.us.i.1, 32
  %add8.us.i.1 = add i32 %add.us.i7.1, %mul7.us.i.1
  %shr.us.i.1 = ashr i32 %add8.us.i.1, 6
  %tobool.i.us.i.1 = icmp ugt i32 %shr.us.i.1, 255
  %sub.i.us.i.1 = sub nsw i32 0, %shr.us.i.1
  %shr.i.us.i.1 = ashr i32 %sub.i.us.i.1, 31
  %cond.i.us.i.1 = select i1 %tobool.i.us.i.1, i32 %shr.i.us.i.1, i32 %shr.us.i.1
  %conv.i.us.i.1 = trunc i32 %cond.i.us.i.1 to i8
  %arrayidx9.us.i8.1 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 1
  store i8 %conv.i.us.i.1, i8* %arrayidx9.us.i8.1, align 1, !tbaa !2
  %arrayidx.us.i3.2 = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 2
  %100 = load i8, i8* %arrayidx.us.i3.2, align 1, !tbaa !2
  %conv.us.i4.2 = zext i8 %100 to i32
  %mul.us.i.2 = mul nsw i32 %conv.us.i4.2, %weight
  %arrayidx5.us.i5.2 = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 2
  %101 = load i8, i8* %arrayidx5.us.i5.2, align 1, !tbaa !2
  %conv6.us.i6.2 = zext i8 %101 to i32
  %mul7.us.i.2 = mul nsw i32 %sub.i, %conv6.us.i6.2
  %add.us.i7.2 = add i32 %mul.us.i.2, 32
  %add8.us.i.2 = add i32 %add.us.i7.2, %mul7.us.i.2
  %shr.us.i.2 = ashr i32 %add8.us.i.2, 6
  %tobool.i.us.i.2 = icmp ugt i32 %shr.us.i.2, 255
  %sub.i.us.i.2 = sub nsw i32 0, %shr.us.i.2
  %shr.i.us.i.2 = ashr i32 %sub.i.us.i.2, 31
  %cond.i.us.i.2 = select i1 %tobool.i.us.i.2, i32 %shr.i.us.i.2, i32 %shr.us.i.2
  %conv.i.us.i.2 = trunc i32 %cond.i.us.i.2 to i8
  %arrayidx9.us.i8.2 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 2
  store i8 %conv.i.us.i.2, i8* %arrayidx9.us.i8.2, align 1, !tbaa !2
  %arrayidx.us.i3.3 = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 3
  %102 = load i8, i8* %arrayidx.us.i3.3, align 1, !tbaa !2
  %conv.us.i4.3 = zext i8 %102 to i32
  %mul.us.i.3 = mul nsw i32 %conv.us.i4.3, %weight
  %arrayidx5.us.i5.3 = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 3
  %103 = load i8, i8* %arrayidx5.us.i5.3, align 1, !tbaa !2
  %conv6.us.i6.3 = zext i8 %103 to i32
  %mul7.us.i.3 = mul nsw i32 %sub.i, %conv6.us.i6.3
  %add.us.i7.3 = add i32 %mul.us.i.3, 32
  %add8.us.i.3 = add i32 %add.us.i7.3, %mul7.us.i.3
  %shr.us.i.3 = ashr i32 %add8.us.i.3, 6
  %tobool.i.us.i.3 = icmp ugt i32 %shr.us.i.3, 255
  %sub.i.us.i.3 = sub nsw i32 0, %shr.us.i.3
  %shr.i.us.i.3 = ashr i32 %sub.i.us.i.3, 31
  %cond.i.us.i.3 = select i1 %tobool.i.us.i.3, i32 %shr.i.us.i.3, i32 %shr.us.i.3
  %conv.i.us.i.3 = trunc i32 %cond.i.us.i.3 to i8
  %arrayidx9.us.i8.3 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 3
  store i8 %conv.i.us.i.3, i8* %arrayidx9.us.i8.3, align 1, !tbaa !2
  %arrayidx.us.i3.4 = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 4
  %104 = load i8, i8* %arrayidx.us.i3.4, align 1, !tbaa !2
  %conv.us.i4.4 = zext i8 %104 to i32
  %mul.us.i.4 = mul nsw i32 %conv.us.i4.4, %weight
  %arrayidx5.us.i5.4 = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 4
  %105 = load i8, i8* %arrayidx5.us.i5.4, align 1, !tbaa !2
  %conv6.us.i6.4 = zext i8 %105 to i32
  %mul7.us.i.4 = mul nsw i32 %sub.i, %conv6.us.i6.4
  %add.us.i7.4 = add i32 %mul.us.i.4, 32
  %add8.us.i.4 = add i32 %add.us.i7.4, %mul7.us.i.4
  %shr.us.i.4 = ashr i32 %add8.us.i.4, 6
  %tobool.i.us.i.4 = icmp ugt i32 %shr.us.i.4, 255
  %sub.i.us.i.4 = sub nsw i32 0, %shr.us.i.4
  %shr.i.us.i.4 = ashr i32 %sub.i.us.i.4, 31
  %cond.i.us.i.4 = select i1 %tobool.i.us.i.4, i32 %shr.i.us.i.4, i32 %shr.us.i.4
  %conv.i.us.i.4 = trunc i32 %cond.i.us.i.4 to i8
  %arrayidx9.us.i8.4 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 4
  store i8 %conv.i.us.i.4, i8* %arrayidx9.us.i8.4, align 1, !tbaa !2
  %arrayidx.us.i3.5 = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 5
  %106 = load i8, i8* %arrayidx.us.i3.5, align 1, !tbaa !2
  %conv.us.i4.5 = zext i8 %106 to i32
  %mul.us.i.5 = mul nsw i32 %conv.us.i4.5, %weight
  %arrayidx5.us.i5.5 = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 5
  %107 = load i8, i8* %arrayidx5.us.i5.5, align 1, !tbaa !2
  %conv6.us.i6.5 = zext i8 %107 to i32
  %mul7.us.i.5 = mul nsw i32 %sub.i, %conv6.us.i6.5
  %add.us.i7.5 = add i32 %mul.us.i.5, 32
  %add8.us.i.5 = add i32 %add.us.i7.5, %mul7.us.i.5
  %shr.us.i.5 = ashr i32 %add8.us.i.5, 6
  %tobool.i.us.i.5 = icmp ugt i32 %shr.us.i.5, 255
  %sub.i.us.i.5 = sub nsw i32 0, %shr.us.i.5
  %shr.i.us.i.5 = ashr i32 %sub.i.us.i.5, 31
  %cond.i.us.i.5 = select i1 %tobool.i.us.i.5, i32 %shr.i.us.i.5, i32 %shr.us.i.5
  %conv.i.us.i.5 = trunc i32 %cond.i.us.i.5 to i8
  %arrayidx9.us.i8.5 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 5
  store i8 %conv.i.us.i.5, i8* %arrayidx9.us.i8.5, align 1, !tbaa !2
  %arrayidx.us.i3.6 = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 6
  %108 = load i8, i8* %arrayidx.us.i3.6, align 1, !tbaa !2
  %conv.us.i4.6 = zext i8 %108 to i32
  %mul.us.i.6 = mul nsw i32 %conv.us.i4.6, %weight
  %arrayidx5.us.i5.6 = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 6
  %109 = load i8, i8* %arrayidx5.us.i5.6, align 1, !tbaa !2
  %conv6.us.i6.6 = zext i8 %109 to i32
  %mul7.us.i.6 = mul nsw i32 %sub.i, %conv6.us.i6.6
  %add.us.i7.6 = add i32 %mul.us.i.6, 32
  %add8.us.i.6 = add i32 %add.us.i7.6, %mul7.us.i.6
  %shr.us.i.6 = ashr i32 %add8.us.i.6, 6
  %tobool.i.us.i.6 = icmp ugt i32 %shr.us.i.6, 255
  %sub.i.us.i.6 = sub nsw i32 0, %shr.us.i.6
  %shr.i.us.i.6 = ashr i32 %sub.i.us.i.6, 31
  %cond.i.us.i.6 = select i1 %tobool.i.us.i.6, i32 %shr.i.us.i.6, i32 %shr.us.i.6
  %conv.i.us.i.6 = trunc i32 %cond.i.us.i.6 to i8
  %arrayidx9.us.i8.6 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 6
  store i8 %conv.i.us.i.6, i8* %arrayidx9.us.i8.6, align 1, !tbaa !2
  %arrayidx.us.i3.7 = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 7
  %110 = load i8, i8* %arrayidx.us.i3.7, align 1, !tbaa !2
  %conv.us.i4.7 = zext i8 %110 to i32
  %mul.us.i.7 = mul nsw i32 %conv.us.i4.7, %weight
  %arrayidx5.us.i5.7 = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 7
  %111 = load i8, i8* %arrayidx5.us.i5.7, align 1, !tbaa !2
  %conv6.us.i6.7 = zext i8 %111 to i32
  %mul7.us.i.7 = mul nsw i32 %sub.i, %conv6.us.i6.7
  %add.us.i7.7 = add i32 %mul.us.i.7, 32
  %add8.us.i.7 = add i32 %add.us.i7.7, %mul7.us.i.7
  %shr.us.i.7 = ashr i32 %add8.us.i.7, 6
  %tobool.i.us.i.7 = icmp ugt i32 %shr.us.i.7, 255
  %sub.i.us.i.7 = sub nsw i32 0, %shr.us.i.7
  %shr.i.us.i.7 = ashr i32 %sub.i.us.i.7, 31
  %cond.i.us.i.7 = select i1 %tobool.i.us.i.7, i32 %shr.i.us.i.7, i32 %shr.us.i.7
  %conv.i.us.i.7 = trunc i32 %cond.i.us.i.7 to i8
  %arrayidx9.us.i8.7 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 7
  store i8 %conv.i.us.i.7, i8* %arrayidx9.us.i8.7, align 1, !tbaa !2
  %inc11.us.i = add nuw nsw i32 %y.033.us.i, 1
  %add.ptr.us.i12 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 %i_stride_pix1
  %add.ptr12.us.i = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 %i_stride_pix2
  %add.ptr13.us.i = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 %i_stride_pix3
  %exitcond35.i = icmp eq i32 %inc11.us.i, 4
  br i1 %exitcond35.i, label %if.end, label %for.cond1.preheader.us.i2

if.end:                                           ; preds = %for.cond1.preheader.us.i2, %for.cond1.preheader.us.i.preheader
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @pixel_avg_4x16(i8* nocapture %pix1, i32 %i_stride_pix1, i8* nocapture readonly %pix2, i32 %i_stride_pix2, i8* nocapture readonly %pix3, i32 %i_stride_pix3, i32 %weight) #2 {
entry:
  %cmp = icmp eq i32 %weight, 32
  br i1 %cmp, label %for.cond1.preheader.us.i, label %if.else

for.cond1.preheader.us.i:                         ; preds = %entry, %for.cond1.preheader.us.i
  %y.031.us.i = phi i32 [ %inc13.us.i, %for.cond1.preheader.us.i ], [ 0, %entry ]
  %dst.addr.030.us.i = phi i8* [ %add.ptr11.us.i, %for.cond1.preheader.us.i ], [ %pix1, %entry ]
  %src1.addr.029.us.i = phi i8* [ %add.ptr.us.i, %for.cond1.preheader.us.i ], [ %pix2, %entry ]
  %src2.addr.028.us.i = phi i8* [ %add.ptr10.us.i, %for.cond1.preheader.us.i ], [ %pix3, %entry ]
  %0 = load i8, i8* %src1.addr.029.us.i, align 1, !tbaa !2
  %conv.us.i = zext i8 %0 to i32
  %1 = load i8, i8* %src2.addr.028.us.i, align 1, !tbaa !2
  %conv6.us.i = zext i8 %1 to i32
  %add.us.i = add nuw nsw i32 %conv.us.i, 1
  %add7.us.i = add nuw nsw i32 %add.us.i, %conv6.us.i
  %2 = lshr i32 %add7.us.i, 1
  %conv8.us.i = trunc i32 %2 to i8
  store i8 %conv8.us.i, i8* %dst.addr.030.us.i, align 1, !tbaa !2
  %arrayidx.us.i.1 = getelementptr inbounds i8, i8* %src1.addr.029.us.i, i32 1
  %3 = load i8, i8* %arrayidx.us.i.1, align 1, !tbaa !2
  %conv.us.i.1 = zext i8 %3 to i32
  %arrayidx5.us.i.1 = getelementptr inbounds i8, i8* %src2.addr.028.us.i, i32 1
  %4 = load i8, i8* %arrayidx5.us.i.1, align 1, !tbaa !2
  %conv6.us.i.1 = zext i8 %4 to i32
  %add.us.i.1 = add nuw nsw i32 %conv.us.i.1, 1
  %add7.us.i.1 = add nuw nsw i32 %add.us.i.1, %conv6.us.i.1
  %5 = lshr i32 %add7.us.i.1, 1
  %conv8.us.i.1 = trunc i32 %5 to i8
  %arrayidx9.us.i.1 = getelementptr inbounds i8, i8* %dst.addr.030.us.i, i32 1
  store i8 %conv8.us.i.1, i8* %arrayidx9.us.i.1, align 1, !tbaa !2
  %arrayidx.us.i.2 = getelementptr inbounds i8, i8* %src1.addr.029.us.i, i32 2
  %6 = load i8, i8* %arrayidx.us.i.2, align 1, !tbaa !2
  %conv.us.i.2 = zext i8 %6 to i32
  %arrayidx5.us.i.2 = getelementptr inbounds i8, i8* %src2.addr.028.us.i, i32 2
  %7 = load i8, i8* %arrayidx5.us.i.2, align 1, !tbaa !2
  %conv6.us.i.2 = zext i8 %7 to i32
  %add.us.i.2 = add nuw nsw i32 %conv.us.i.2, 1
  %add7.us.i.2 = add nuw nsw i32 %add.us.i.2, %conv6.us.i.2
  %8 = lshr i32 %add7.us.i.2, 1
  %conv8.us.i.2 = trunc i32 %8 to i8
  %arrayidx9.us.i.2 = getelementptr inbounds i8, i8* %dst.addr.030.us.i, i32 2
  store i8 %conv8.us.i.2, i8* %arrayidx9.us.i.2, align 1, !tbaa !2
  %arrayidx.us.i.3 = getelementptr inbounds i8, i8* %src1.addr.029.us.i, i32 3
  %9 = load i8, i8* %arrayidx.us.i.3, align 1, !tbaa !2
  %conv.us.i.3 = zext i8 %9 to i32
  %arrayidx5.us.i.3 = getelementptr inbounds i8, i8* %src2.addr.028.us.i, i32 3
  %10 = load i8, i8* %arrayidx5.us.i.3, align 1, !tbaa !2
  %conv6.us.i.3 = zext i8 %10 to i32
  %add.us.i.3 = add nuw nsw i32 %conv.us.i.3, 1
  %add7.us.i.3 = add nuw nsw i32 %add.us.i.3, %conv6.us.i.3
  %11 = lshr i32 %add7.us.i.3, 1
  %conv8.us.i.3 = trunc i32 %11 to i8
  %arrayidx9.us.i.3 = getelementptr inbounds i8, i8* %dst.addr.030.us.i, i32 3
  store i8 %conv8.us.i.3, i8* %arrayidx9.us.i.3, align 1, !tbaa !2
  %add.ptr.us.i = getelementptr inbounds i8, i8* %src1.addr.029.us.i, i32 %i_stride_pix2
  %add.ptr10.us.i = getelementptr inbounds i8, i8* %src2.addr.028.us.i, i32 %i_stride_pix3
  %add.ptr11.us.i = getelementptr inbounds i8, i8* %dst.addr.030.us.i, i32 %i_stride_pix1
  %inc13.us.i = add nuw nsw i32 %y.031.us.i, 1
  %exitcond33.i = icmp eq i32 %inc13.us.i, 16
  br i1 %exitcond33.i, label %if.end, label %for.cond1.preheader.us.i

if.else:                                          ; preds = %entry
  %sub.i = sub nsw i32 64, %weight
  br label %for.cond1.preheader.us.i2

for.cond1.preheader.us.i2:                        ; preds = %for.cond1.preheader.us.i2, %if.else
  %y.033.us.i = phi i32 [ %inc11.us.i, %for.cond1.preheader.us.i2 ], [ 0, %if.else ]
  %dst.addr.032.us.i = phi i8* [ %add.ptr.us.i12, %for.cond1.preheader.us.i2 ], [ %pix1, %if.else ]
  %src1.addr.031.us.i = phi i8* [ %add.ptr12.us.i, %for.cond1.preheader.us.i2 ], [ %pix2, %if.else ]
  %src2.addr.030.us.i = phi i8* [ %add.ptr13.us.i, %for.cond1.preheader.us.i2 ], [ %pix3, %if.else ]
  %12 = load i8, i8* %src1.addr.031.us.i, align 1, !tbaa !2
  %conv.us.i4 = zext i8 %12 to i32
  %mul.us.i = mul nsw i32 %conv.us.i4, %weight
  %13 = load i8, i8* %src2.addr.030.us.i, align 1, !tbaa !2
  %conv6.us.i6 = zext i8 %13 to i32
  %mul7.us.i = mul nsw i32 %sub.i, %conv6.us.i6
  %add.us.i7 = add i32 %mul.us.i, 32
  %add8.us.i = add i32 %add.us.i7, %mul7.us.i
  %shr.us.i = ashr i32 %add8.us.i, 6
  %tobool.i.us.i = icmp ugt i32 %shr.us.i, 255
  %sub.i.us.i = sub nsw i32 0, %shr.us.i
  %shr.i.us.i = ashr i32 %sub.i.us.i, 31
  %cond.i.us.i = select i1 %tobool.i.us.i, i32 %shr.i.us.i, i32 %shr.us.i
  %conv.i.us.i = trunc i32 %cond.i.us.i to i8
  store i8 %conv.i.us.i, i8* %dst.addr.032.us.i, align 1, !tbaa !2
  %arrayidx.us.i3.1 = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 1
  %14 = load i8, i8* %arrayidx.us.i3.1, align 1, !tbaa !2
  %conv.us.i4.1 = zext i8 %14 to i32
  %mul.us.i.1 = mul nsw i32 %conv.us.i4.1, %weight
  %arrayidx5.us.i5.1 = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 1
  %15 = load i8, i8* %arrayidx5.us.i5.1, align 1, !tbaa !2
  %conv6.us.i6.1 = zext i8 %15 to i32
  %mul7.us.i.1 = mul nsw i32 %sub.i, %conv6.us.i6.1
  %add.us.i7.1 = add i32 %mul.us.i.1, 32
  %add8.us.i.1 = add i32 %add.us.i7.1, %mul7.us.i.1
  %shr.us.i.1 = ashr i32 %add8.us.i.1, 6
  %tobool.i.us.i.1 = icmp ugt i32 %shr.us.i.1, 255
  %sub.i.us.i.1 = sub nsw i32 0, %shr.us.i.1
  %shr.i.us.i.1 = ashr i32 %sub.i.us.i.1, 31
  %cond.i.us.i.1 = select i1 %tobool.i.us.i.1, i32 %shr.i.us.i.1, i32 %shr.us.i.1
  %conv.i.us.i.1 = trunc i32 %cond.i.us.i.1 to i8
  %arrayidx9.us.i8.1 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 1
  store i8 %conv.i.us.i.1, i8* %arrayidx9.us.i8.1, align 1, !tbaa !2
  %arrayidx.us.i3.2 = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 2
  %16 = load i8, i8* %arrayidx.us.i3.2, align 1, !tbaa !2
  %conv.us.i4.2 = zext i8 %16 to i32
  %mul.us.i.2 = mul nsw i32 %conv.us.i4.2, %weight
  %arrayidx5.us.i5.2 = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 2
  %17 = load i8, i8* %arrayidx5.us.i5.2, align 1, !tbaa !2
  %conv6.us.i6.2 = zext i8 %17 to i32
  %mul7.us.i.2 = mul nsw i32 %sub.i, %conv6.us.i6.2
  %add.us.i7.2 = add i32 %mul.us.i.2, 32
  %add8.us.i.2 = add i32 %add.us.i7.2, %mul7.us.i.2
  %shr.us.i.2 = ashr i32 %add8.us.i.2, 6
  %tobool.i.us.i.2 = icmp ugt i32 %shr.us.i.2, 255
  %sub.i.us.i.2 = sub nsw i32 0, %shr.us.i.2
  %shr.i.us.i.2 = ashr i32 %sub.i.us.i.2, 31
  %cond.i.us.i.2 = select i1 %tobool.i.us.i.2, i32 %shr.i.us.i.2, i32 %shr.us.i.2
  %conv.i.us.i.2 = trunc i32 %cond.i.us.i.2 to i8
  %arrayidx9.us.i8.2 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 2
  store i8 %conv.i.us.i.2, i8* %arrayidx9.us.i8.2, align 1, !tbaa !2
  %arrayidx.us.i3.3 = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 3
  %18 = load i8, i8* %arrayidx.us.i3.3, align 1, !tbaa !2
  %conv.us.i4.3 = zext i8 %18 to i32
  %mul.us.i.3 = mul nsw i32 %conv.us.i4.3, %weight
  %arrayidx5.us.i5.3 = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 3
  %19 = load i8, i8* %arrayidx5.us.i5.3, align 1, !tbaa !2
  %conv6.us.i6.3 = zext i8 %19 to i32
  %mul7.us.i.3 = mul nsw i32 %sub.i, %conv6.us.i6.3
  %add.us.i7.3 = add i32 %mul.us.i.3, 32
  %add8.us.i.3 = add i32 %add.us.i7.3, %mul7.us.i.3
  %shr.us.i.3 = ashr i32 %add8.us.i.3, 6
  %tobool.i.us.i.3 = icmp ugt i32 %shr.us.i.3, 255
  %sub.i.us.i.3 = sub nsw i32 0, %shr.us.i.3
  %shr.i.us.i.3 = ashr i32 %sub.i.us.i.3, 31
  %cond.i.us.i.3 = select i1 %tobool.i.us.i.3, i32 %shr.i.us.i.3, i32 %shr.us.i.3
  %conv.i.us.i.3 = trunc i32 %cond.i.us.i.3 to i8
  %arrayidx9.us.i8.3 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 3
  store i8 %conv.i.us.i.3, i8* %arrayidx9.us.i8.3, align 1, !tbaa !2
  %inc11.us.i = add nuw nsw i32 %y.033.us.i, 1
  %add.ptr.us.i12 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 %i_stride_pix1
  %add.ptr12.us.i = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 %i_stride_pix2
  %add.ptr13.us.i = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 %i_stride_pix3
  %exitcond35.i = icmp eq i32 %inc11.us.i, 16
  br i1 %exitcond35.i, label %if.end, label %for.cond1.preheader.us.i2

if.end:                                           ; preds = %for.cond1.preheader.us.i2, %for.cond1.preheader.us.i
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @pixel_avg_4x8(i8* nocapture %pix1, i32 %i_stride_pix1, i8* nocapture readonly %pix2, i32 %i_stride_pix2, i8* nocapture readonly %pix3, i32 %i_stride_pix3, i32 %weight) #2 {
entry:
  %cmp = icmp eq i32 %weight, 32
  br i1 %cmp, label %for.cond1.preheader.us.i.preheader, label %if.else

for.cond1.preheader.us.i.preheader:               ; preds = %entry
  %0 = load i8, i8* %pix2, align 1, !tbaa !2
  %conv.us.i = zext i8 %0 to i32
  %1 = load i8, i8* %pix3, align 1, !tbaa !2
  %conv6.us.i = zext i8 %1 to i32
  %add.us.i = add nuw nsw i32 %conv.us.i, 1
  %add7.us.i = add nuw nsw i32 %add.us.i, %conv6.us.i
  %2 = lshr i32 %add7.us.i, 1
  %conv8.us.i = trunc i32 %2 to i8
  store i8 %conv8.us.i, i8* %pix1, align 1, !tbaa !2
  %arrayidx.us.i.1 = getelementptr inbounds i8, i8* %pix2, i32 1
  %3 = load i8, i8* %arrayidx.us.i.1, align 1, !tbaa !2
  %conv.us.i.1 = zext i8 %3 to i32
  %arrayidx5.us.i.1 = getelementptr inbounds i8, i8* %pix3, i32 1
  %4 = load i8, i8* %arrayidx5.us.i.1, align 1, !tbaa !2
  %conv6.us.i.1 = zext i8 %4 to i32
  %add.us.i.1 = add nuw nsw i32 %conv.us.i.1, 1
  %add7.us.i.1 = add nuw nsw i32 %add.us.i.1, %conv6.us.i.1
  %5 = lshr i32 %add7.us.i.1, 1
  %conv8.us.i.1 = trunc i32 %5 to i8
  %arrayidx9.us.i.1 = getelementptr inbounds i8, i8* %pix1, i32 1
  store i8 %conv8.us.i.1, i8* %arrayidx9.us.i.1, align 1, !tbaa !2
  %arrayidx.us.i.2 = getelementptr inbounds i8, i8* %pix2, i32 2
  %6 = load i8, i8* %arrayidx.us.i.2, align 1, !tbaa !2
  %conv.us.i.2 = zext i8 %6 to i32
  %arrayidx5.us.i.2 = getelementptr inbounds i8, i8* %pix3, i32 2
  %7 = load i8, i8* %arrayidx5.us.i.2, align 1, !tbaa !2
  %conv6.us.i.2 = zext i8 %7 to i32
  %add.us.i.2 = add nuw nsw i32 %conv.us.i.2, 1
  %add7.us.i.2 = add nuw nsw i32 %add.us.i.2, %conv6.us.i.2
  %8 = lshr i32 %add7.us.i.2, 1
  %conv8.us.i.2 = trunc i32 %8 to i8
  %arrayidx9.us.i.2 = getelementptr inbounds i8, i8* %pix1, i32 2
  store i8 %conv8.us.i.2, i8* %arrayidx9.us.i.2, align 1, !tbaa !2
  %arrayidx.us.i.3 = getelementptr inbounds i8, i8* %pix2, i32 3
  %9 = load i8, i8* %arrayidx.us.i.3, align 1, !tbaa !2
  %conv.us.i.3 = zext i8 %9 to i32
  %arrayidx5.us.i.3 = getelementptr inbounds i8, i8* %pix3, i32 3
  %10 = load i8, i8* %arrayidx5.us.i.3, align 1, !tbaa !2
  %conv6.us.i.3 = zext i8 %10 to i32
  %add.us.i.3 = add nuw nsw i32 %conv.us.i.3, 1
  %add7.us.i.3 = add nuw nsw i32 %add.us.i.3, %conv6.us.i.3
  %11 = lshr i32 %add7.us.i.3, 1
  %conv8.us.i.3 = trunc i32 %11 to i8
  %arrayidx9.us.i.3 = getelementptr inbounds i8, i8* %pix1, i32 3
  store i8 %conv8.us.i.3, i8* %arrayidx9.us.i.3, align 1, !tbaa !2
  %add.ptr.us.i = getelementptr inbounds i8, i8* %pix2, i32 %i_stride_pix2
  %add.ptr10.us.i = getelementptr inbounds i8, i8* %pix3, i32 %i_stride_pix3
  %add.ptr11.us.i = getelementptr inbounds i8, i8* %pix1, i32 %i_stride_pix1
  %12 = load i8, i8* %add.ptr.us.i, align 1, !tbaa !2
  %conv.us.i.116 = zext i8 %12 to i32
  %13 = load i8, i8* %add.ptr10.us.i, align 1, !tbaa !2
  %conv6.us.i.117 = zext i8 %13 to i32
  %add.us.i.118 = add nuw nsw i32 %conv.us.i.116, 1
  %add7.us.i.119 = add nuw nsw i32 %add.us.i.118, %conv6.us.i.117
  %14 = lshr i32 %add7.us.i.119, 1
  %conv8.us.i.120 = trunc i32 %14 to i8
  store i8 %conv8.us.i.120, i8* %add.ptr11.us.i, align 1, !tbaa !2
  %arrayidx.us.i.1.1 = getelementptr inbounds i8, i8* %add.ptr.us.i, i32 1
  %15 = load i8, i8* %arrayidx.us.i.1.1, align 1, !tbaa !2
  %conv.us.i.1.1 = zext i8 %15 to i32
  %arrayidx5.us.i.1.1 = getelementptr inbounds i8, i8* %add.ptr10.us.i, i32 1
  %16 = load i8, i8* %arrayidx5.us.i.1.1, align 1, !tbaa !2
  %conv6.us.i.1.1 = zext i8 %16 to i32
  %add.us.i.1.1 = add nuw nsw i32 %conv.us.i.1.1, 1
  %add7.us.i.1.1 = add nuw nsw i32 %add.us.i.1.1, %conv6.us.i.1.1
  %17 = lshr i32 %add7.us.i.1.1, 1
  %conv8.us.i.1.1 = trunc i32 %17 to i8
  %arrayidx9.us.i.1.1 = getelementptr inbounds i8, i8* %add.ptr11.us.i, i32 1
  store i8 %conv8.us.i.1.1, i8* %arrayidx9.us.i.1.1, align 1, !tbaa !2
  %arrayidx.us.i.2.1 = getelementptr inbounds i8, i8* %add.ptr.us.i, i32 2
  %18 = load i8, i8* %arrayidx.us.i.2.1, align 1, !tbaa !2
  %conv.us.i.2.1 = zext i8 %18 to i32
  %arrayidx5.us.i.2.1 = getelementptr inbounds i8, i8* %add.ptr10.us.i, i32 2
  %19 = load i8, i8* %arrayidx5.us.i.2.1, align 1, !tbaa !2
  %conv6.us.i.2.1 = zext i8 %19 to i32
  %add.us.i.2.1 = add nuw nsw i32 %conv.us.i.2.1, 1
  %add7.us.i.2.1 = add nuw nsw i32 %add.us.i.2.1, %conv6.us.i.2.1
  %20 = lshr i32 %add7.us.i.2.1, 1
  %conv8.us.i.2.1 = trunc i32 %20 to i8
  %arrayidx9.us.i.2.1 = getelementptr inbounds i8, i8* %add.ptr11.us.i, i32 2
  store i8 %conv8.us.i.2.1, i8* %arrayidx9.us.i.2.1, align 1, !tbaa !2
  %arrayidx.us.i.3.1 = getelementptr inbounds i8, i8* %add.ptr.us.i, i32 3
  %21 = load i8, i8* %arrayidx.us.i.3.1, align 1, !tbaa !2
  %conv.us.i.3.1 = zext i8 %21 to i32
  %arrayidx5.us.i.3.1 = getelementptr inbounds i8, i8* %add.ptr10.us.i, i32 3
  %22 = load i8, i8* %arrayidx5.us.i.3.1, align 1, !tbaa !2
  %conv6.us.i.3.1 = zext i8 %22 to i32
  %add.us.i.3.1 = add nuw nsw i32 %conv.us.i.3.1, 1
  %add7.us.i.3.1 = add nuw nsw i32 %add.us.i.3.1, %conv6.us.i.3.1
  %23 = lshr i32 %add7.us.i.3.1, 1
  %conv8.us.i.3.1 = trunc i32 %23 to i8
  %arrayidx9.us.i.3.1 = getelementptr inbounds i8, i8* %add.ptr11.us.i, i32 3
  store i8 %conv8.us.i.3.1, i8* %arrayidx9.us.i.3.1, align 1, !tbaa !2
  %add.ptr.us.i.1 = getelementptr inbounds i8, i8* %add.ptr.us.i, i32 %i_stride_pix2
  %add.ptr10.us.i.1 = getelementptr inbounds i8, i8* %add.ptr10.us.i, i32 %i_stride_pix3
  %add.ptr11.us.i.1 = getelementptr inbounds i8, i8* %add.ptr11.us.i, i32 %i_stride_pix1
  %24 = load i8, i8* %add.ptr.us.i.1, align 1, !tbaa !2
  %conv.us.i.221 = zext i8 %24 to i32
  %25 = load i8, i8* %add.ptr10.us.i.1, align 1, !tbaa !2
  %conv6.us.i.222 = zext i8 %25 to i32
  %add.us.i.223 = add nuw nsw i32 %conv.us.i.221, 1
  %add7.us.i.224 = add nuw nsw i32 %add.us.i.223, %conv6.us.i.222
  %26 = lshr i32 %add7.us.i.224, 1
  %conv8.us.i.225 = trunc i32 %26 to i8
  store i8 %conv8.us.i.225, i8* %add.ptr11.us.i.1, align 1, !tbaa !2
  %arrayidx.us.i.1.2 = getelementptr inbounds i8, i8* %add.ptr.us.i.1, i32 1
  %27 = load i8, i8* %arrayidx.us.i.1.2, align 1, !tbaa !2
  %conv.us.i.1.2 = zext i8 %27 to i32
  %arrayidx5.us.i.1.2 = getelementptr inbounds i8, i8* %add.ptr10.us.i.1, i32 1
  %28 = load i8, i8* %arrayidx5.us.i.1.2, align 1, !tbaa !2
  %conv6.us.i.1.2 = zext i8 %28 to i32
  %add.us.i.1.2 = add nuw nsw i32 %conv.us.i.1.2, 1
  %add7.us.i.1.2 = add nuw nsw i32 %add.us.i.1.2, %conv6.us.i.1.2
  %29 = lshr i32 %add7.us.i.1.2, 1
  %conv8.us.i.1.2 = trunc i32 %29 to i8
  %arrayidx9.us.i.1.2 = getelementptr inbounds i8, i8* %add.ptr11.us.i.1, i32 1
  store i8 %conv8.us.i.1.2, i8* %arrayidx9.us.i.1.2, align 1, !tbaa !2
  %arrayidx.us.i.2.2 = getelementptr inbounds i8, i8* %add.ptr.us.i.1, i32 2
  %30 = load i8, i8* %arrayidx.us.i.2.2, align 1, !tbaa !2
  %conv.us.i.2.2 = zext i8 %30 to i32
  %arrayidx5.us.i.2.2 = getelementptr inbounds i8, i8* %add.ptr10.us.i.1, i32 2
  %31 = load i8, i8* %arrayidx5.us.i.2.2, align 1, !tbaa !2
  %conv6.us.i.2.2 = zext i8 %31 to i32
  %add.us.i.2.2 = add nuw nsw i32 %conv.us.i.2.2, 1
  %add7.us.i.2.2 = add nuw nsw i32 %add.us.i.2.2, %conv6.us.i.2.2
  %32 = lshr i32 %add7.us.i.2.2, 1
  %conv8.us.i.2.2 = trunc i32 %32 to i8
  %arrayidx9.us.i.2.2 = getelementptr inbounds i8, i8* %add.ptr11.us.i.1, i32 2
  store i8 %conv8.us.i.2.2, i8* %arrayidx9.us.i.2.2, align 1, !tbaa !2
  %arrayidx.us.i.3.2 = getelementptr inbounds i8, i8* %add.ptr.us.i.1, i32 3
  %33 = load i8, i8* %arrayidx.us.i.3.2, align 1, !tbaa !2
  %conv.us.i.3.2 = zext i8 %33 to i32
  %arrayidx5.us.i.3.2 = getelementptr inbounds i8, i8* %add.ptr10.us.i.1, i32 3
  %34 = load i8, i8* %arrayidx5.us.i.3.2, align 1, !tbaa !2
  %conv6.us.i.3.2 = zext i8 %34 to i32
  %add.us.i.3.2 = add nuw nsw i32 %conv.us.i.3.2, 1
  %add7.us.i.3.2 = add nuw nsw i32 %add.us.i.3.2, %conv6.us.i.3.2
  %35 = lshr i32 %add7.us.i.3.2, 1
  %conv8.us.i.3.2 = trunc i32 %35 to i8
  %arrayidx9.us.i.3.2 = getelementptr inbounds i8, i8* %add.ptr11.us.i.1, i32 3
  store i8 %conv8.us.i.3.2, i8* %arrayidx9.us.i.3.2, align 1, !tbaa !2
  %add.ptr.us.i.2 = getelementptr inbounds i8, i8* %add.ptr.us.i.1, i32 %i_stride_pix2
  %add.ptr10.us.i.2 = getelementptr inbounds i8, i8* %add.ptr10.us.i.1, i32 %i_stride_pix3
  %add.ptr11.us.i.2 = getelementptr inbounds i8, i8* %add.ptr11.us.i.1, i32 %i_stride_pix1
  %36 = load i8, i8* %add.ptr.us.i.2, align 1, !tbaa !2
  %conv.us.i.326 = zext i8 %36 to i32
  %37 = load i8, i8* %add.ptr10.us.i.2, align 1, !tbaa !2
  %conv6.us.i.327 = zext i8 %37 to i32
  %add.us.i.328 = add nuw nsw i32 %conv.us.i.326, 1
  %add7.us.i.329 = add nuw nsw i32 %add.us.i.328, %conv6.us.i.327
  %38 = lshr i32 %add7.us.i.329, 1
  %conv8.us.i.330 = trunc i32 %38 to i8
  store i8 %conv8.us.i.330, i8* %add.ptr11.us.i.2, align 1, !tbaa !2
  %arrayidx.us.i.1.3 = getelementptr inbounds i8, i8* %add.ptr.us.i.2, i32 1
  %39 = load i8, i8* %arrayidx.us.i.1.3, align 1, !tbaa !2
  %conv.us.i.1.3 = zext i8 %39 to i32
  %arrayidx5.us.i.1.3 = getelementptr inbounds i8, i8* %add.ptr10.us.i.2, i32 1
  %40 = load i8, i8* %arrayidx5.us.i.1.3, align 1, !tbaa !2
  %conv6.us.i.1.3 = zext i8 %40 to i32
  %add.us.i.1.3 = add nuw nsw i32 %conv.us.i.1.3, 1
  %add7.us.i.1.3 = add nuw nsw i32 %add.us.i.1.3, %conv6.us.i.1.3
  %41 = lshr i32 %add7.us.i.1.3, 1
  %conv8.us.i.1.3 = trunc i32 %41 to i8
  %arrayidx9.us.i.1.3 = getelementptr inbounds i8, i8* %add.ptr11.us.i.2, i32 1
  store i8 %conv8.us.i.1.3, i8* %arrayidx9.us.i.1.3, align 1, !tbaa !2
  %arrayidx.us.i.2.3 = getelementptr inbounds i8, i8* %add.ptr.us.i.2, i32 2
  %42 = load i8, i8* %arrayidx.us.i.2.3, align 1, !tbaa !2
  %conv.us.i.2.3 = zext i8 %42 to i32
  %arrayidx5.us.i.2.3 = getelementptr inbounds i8, i8* %add.ptr10.us.i.2, i32 2
  %43 = load i8, i8* %arrayidx5.us.i.2.3, align 1, !tbaa !2
  %conv6.us.i.2.3 = zext i8 %43 to i32
  %add.us.i.2.3 = add nuw nsw i32 %conv.us.i.2.3, 1
  %add7.us.i.2.3 = add nuw nsw i32 %add.us.i.2.3, %conv6.us.i.2.3
  %44 = lshr i32 %add7.us.i.2.3, 1
  %conv8.us.i.2.3 = trunc i32 %44 to i8
  %arrayidx9.us.i.2.3 = getelementptr inbounds i8, i8* %add.ptr11.us.i.2, i32 2
  store i8 %conv8.us.i.2.3, i8* %arrayidx9.us.i.2.3, align 1, !tbaa !2
  %arrayidx.us.i.3.3 = getelementptr inbounds i8, i8* %add.ptr.us.i.2, i32 3
  %45 = load i8, i8* %arrayidx.us.i.3.3, align 1, !tbaa !2
  %conv.us.i.3.3 = zext i8 %45 to i32
  %arrayidx5.us.i.3.3 = getelementptr inbounds i8, i8* %add.ptr10.us.i.2, i32 3
  %46 = load i8, i8* %arrayidx5.us.i.3.3, align 1, !tbaa !2
  %conv6.us.i.3.3 = zext i8 %46 to i32
  %add.us.i.3.3 = add nuw nsw i32 %conv.us.i.3.3, 1
  %add7.us.i.3.3 = add nuw nsw i32 %add.us.i.3.3, %conv6.us.i.3.3
  %47 = lshr i32 %add7.us.i.3.3, 1
  %conv8.us.i.3.3 = trunc i32 %47 to i8
  %arrayidx9.us.i.3.3 = getelementptr inbounds i8, i8* %add.ptr11.us.i.2, i32 3
  store i8 %conv8.us.i.3.3, i8* %arrayidx9.us.i.3.3, align 1, !tbaa !2
  %add.ptr.us.i.3 = getelementptr inbounds i8, i8* %add.ptr.us.i.2, i32 %i_stride_pix2
  %add.ptr10.us.i.3 = getelementptr inbounds i8, i8* %add.ptr10.us.i.2, i32 %i_stride_pix3
  %add.ptr11.us.i.3 = getelementptr inbounds i8, i8* %add.ptr11.us.i.2, i32 %i_stride_pix1
  %48 = load i8, i8* %add.ptr.us.i.3, align 1, !tbaa !2
  %conv.us.i.4 = zext i8 %48 to i32
  %49 = load i8, i8* %add.ptr10.us.i.3, align 1, !tbaa !2
  %conv6.us.i.4 = zext i8 %49 to i32
  %add.us.i.4 = add nuw nsw i32 %conv.us.i.4, 1
  %add7.us.i.4 = add nuw nsw i32 %add.us.i.4, %conv6.us.i.4
  %50 = lshr i32 %add7.us.i.4, 1
  %conv8.us.i.4 = trunc i32 %50 to i8
  store i8 %conv8.us.i.4, i8* %add.ptr11.us.i.3, align 1, !tbaa !2
  %arrayidx.us.i.1.4 = getelementptr inbounds i8, i8* %add.ptr.us.i.3, i32 1
  %51 = load i8, i8* %arrayidx.us.i.1.4, align 1, !tbaa !2
  %conv.us.i.1.4 = zext i8 %51 to i32
  %arrayidx5.us.i.1.4 = getelementptr inbounds i8, i8* %add.ptr10.us.i.3, i32 1
  %52 = load i8, i8* %arrayidx5.us.i.1.4, align 1, !tbaa !2
  %conv6.us.i.1.4 = zext i8 %52 to i32
  %add.us.i.1.4 = add nuw nsw i32 %conv.us.i.1.4, 1
  %add7.us.i.1.4 = add nuw nsw i32 %add.us.i.1.4, %conv6.us.i.1.4
  %53 = lshr i32 %add7.us.i.1.4, 1
  %conv8.us.i.1.4 = trunc i32 %53 to i8
  %arrayidx9.us.i.1.4 = getelementptr inbounds i8, i8* %add.ptr11.us.i.3, i32 1
  store i8 %conv8.us.i.1.4, i8* %arrayidx9.us.i.1.4, align 1, !tbaa !2
  %arrayidx.us.i.2.4 = getelementptr inbounds i8, i8* %add.ptr.us.i.3, i32 2
  %54 = load i8, i8* %arrayidx.us.i.2.4, align 1, !tbaa !2
  %conv.us.i.2.4 = zext i8 %54 to i32
  %arrayidx5.us.i.2.4 = getelementptr inbounds i8, i8* %add.ptr10.us.i.3, i32 2
  %55 = load i8, i8* %arrayidx5.us.i.2.4, align 1, !tbaa !2
  %conv6.us.i.2.4 = zext i8 %55 to i32
  %add.us.i.2.4 = add nuw nsw i32 %conv.us.i.2.4, 1
  %add7.us.i.2.4 = add nuw nsw i32 %add.us.i.2.4, %conv6.us.i.2.4
  %56 = lshr i32 %add7.us.i.2.4, 1
  %conv8.us.i.2.4 = trunc i32 %56 to i8
  %arrayidx9.us.i.2.4 = getelementptr inbounds i8, i8* %add.ptr11.us.i.3, i32 2
  store i8 %conv8.us.i.2.4, i8* %arrayidx9.us.i.2.4, align 1, !tbaa !2
  %arrayidx.us.i.3.4 = getelementptr inbounds i8, i8* %add.ptr.us.i.3, i32 3
  %57 = load i8, i8* %arrayidx.us.i.3.4, align 1, !tbaa !2
  %conv.us.i.3.4 = zext i8 %57 to i32
  %arrayidx5.us.i.3.4 = getelementptr inbounds i8, i8* %add.ptr10.us.i.3, i32 3
  %58 = load i8, i8* %arrayidx5.us.i.3.4, align 1, !tbaa !2
  %conv6.us.i.3.4 = zext i8 %58 to i32
  %add.us.i.3.4 = add nuw nsw i32 %conv.us.i.3.4, 1
  %add7.us.i.3.4 = add nuw nsw i32 %add.us.i.3.4, %conv6.us.i.3.4
  %59 = lshr i32 %add7.us.i.3.4, 1
  %conv8.us.i.3.4 = trunc i32 %59 to i8
  %arrayidx9.us.i.3.4 = getelementptr inbounds i8, i8* %add.ptr11.us.i.3, i32 3
  store i8 %conv8.us.i.3.4, i8* %arrayidx9.us.i.3.4, align 1, !tbaa !2
  %add.ptr.us.i.4 = getelementptr inbounds i8, i8* %add.ptr.us.i.3, i32 %i_stride_pix2
  %add.ptr10.us.i.4 = getelementptr inbounds i8, i8* %add.ptr10.us.i.3, i32 %i_stride_pix3
  %add.ptr11.us.i.4 = getelementptr inbounds i8, i8* %add.ptr11.us.i.3, i32 %i_stride_pix1
  %60 = load i8, i8* %add.ptr.us.i.4, align 1, !tbaa !2
  %conv.us.i.5 = zext i8 %60 to i32
  %61 = load i8, i8* %add.ptr10.us.i.4, align 1, !tbaa !2
  %conv6.us.i.5 = zext i8 %61 to i32
  %add.us.i.5 = add nuw nsw i32 %conv.us.i.5, 1
  %add7.us.i.5 = add nuw nsw i32 %add.us.i.5, %conv6.us.i.5
  %62 = lshr i32 %add7.us.i.5, 1
  %conv8.us.i.5 = trunc i32 %62 to i8
  store i8 %conv8.us.i.5, i8* %add.ptr11.us.i.4, align 1, !tbaa !2
  %arrayidx.us.i.1.5 = getelementptr inbounds i8, i8* %add.ptr.us.i.4, i32 1
  %63 = load i8, i8* %arrayidx.us.i.1.5, align 1, !tbaa !2
  %conv.us.i.1.5 = zext i8 %63 to i32
  %arrayidx5.us.i.1.5 = getelementptr inbounds i8, i8* %add.ptr10.us.i.4, i32 1
  %64 = load i8, i8* %arrayidx5.us.i.1.5, align 1, !tbaa !2
  %conv6.us.i.1.5 = zext i8 %64 to i32
  %add.us.i.1.5 = add nuw nsw i32 %conv.us.i.1.5, 1
  %add7.us.i.1.5 = add nuw nsw i32 %add.us.i.1.5, %conv6.us.i.1.5
  %65 = lshr i32 %add7.us.i.1.5, 1
  %conv8.us.i.1.5 = trunc i32 %65 to i8
  %arrayidx9.us.i.1.5 = getelementptr inbounds i8, i8* %add.ptr11.us.i.4, i32 1
  store i8 %conv8.us.i.1.5, i8* %arrayidx9.us.i.1.5, align 1, !tbaa !2
  %arrayidx.us.i.2.5 = getelementptr inbounds i8, i8* %add.ptr.us.i.4, i32 2
  %66 = load i8, i8* %arrayidx.us.i.2.5, align 1, !tbaa !2
  %conv.us.i.2.5 = zext i8 %66 to i32
  %arrayidx5.us.i.2.5 = getelementptr inbounds i8, i8* %add.ptr10.us.i.4, i32 2
  %67 = load i8, i8* %arrayidx5.us.i.2.5, align 1, !tbaa !2
  %conv6.us.i.2.5 = zext i8 %67 to i32
  %add.us.i.2.5 = add nuw nsw i32 %conv.us.i.2.5, 1
  %add7.us.i.2.5 = add nuw nsw i32 %add.us.i.2.5, %conv6.us.i.2.5
  %68 = lshr i32 %add7.us.i.2.5, 1
  %conv8.us.i.2.5 = trunc i32 %68 to i8
  %arrayidx9.us.i.2.5 = getelementptr inbounds i8, i8* %add.ptr11.us.i.4, i32 2
  store i8 %conv8.us.i.2.5, i8* %arrayidx9.us.i.2.5, align 1, !tbaa !2
  %arrayidx.us.i.3.5 = getelementptr inbounds i8, i8* %add.ptr.us.i.4, i32 3
  %69 = load i8, i8* %arrayidx.us.i.3.5, align 1, !tbaa !2
  %conv.us.i.3.5 = zext i8 %69 to i32
  %arrayidx5.us.i.3.5 = getelementptr inbounds i8, i8* %add.ptr10.us.i.4, i32 3
  %70 = load i8, i8* %arrayidx5.us.i.3.5, align 1, !tbaa !2
  %conv6.us.i.3.5 = zext i8 %70 to i32
  %add.us.i.3.5 = add nuw nsw i32 %conv.us.i.3.5, 1
  %add7.us.i.3.5 = add nuw nsw i32 %add.us.i.3.5, %conv6.us.i.3.5
  %71 = lshr i32 %add7.us.i.3.5, 1
  %conv8.us.i.3.5 = trunc i32 %71 to i8
  %arrayidx9.us.i.3.5 = getelementptr inbounds i8, i8* %add.ptr11.us.i.4, i32 3
  store i8 %conv8.us.i.3.5, i8* %arrayidx9.us.i.3.5, align 1, !tbaa !2
  %add.ptr.us.i.5 = getelementptr inbounds i8, i8* %add.ptr.us.i.4, i32 %i_stride_pix2
  %add.ptr10.us.i.5 = getelementptr inbounds i8, i8* %add.ptr10.us.i.4, i32 %i_stride_pix3
  %add.ptr11.us.i.5 = getelementptr inbounds i8, i8* %add.ptr11.us.i.4, i32 %i_stride_pix1
  %72 = load i8, i8* %add.ptr.us.i.5, align 1, !tbaa !2
  %conv.us.i.6 = zext i8 %72 to i32
  %73 = load i8, i8* %add.ptr10.us.i.5, align 1, !tbaa !2
  %conv6.us.i.6 = zext i8 %73 to i32
  %add.us.i.6 = add nuw nsw i32 %conv.us.i.6, 1
  %add7.us.i.6 = add nuw nsw i32 %add.us.i.6, %conv6.us.i.6
  %74 = lshr i32 %add7.us.i.6, 1
  %conv8.us.i.6 = trunc i32 %74 to i8
  store i8 %conv8.us.i.6, i8* %add.ptr11.us.i.5, align 1, !tbaa !2
  %arrayidx.us.i.1.6 = getelementptr inbounds i8, i8* %add.ptr.us.i.5, i32 1
  %75 = load i8, i8* %arrayidx.us.i.1.6, align 1, !tbaa !2
  %conv.us.i.1.6 = zext i8 %75 to i32
  %arrayidx5.us.i.1.6 = getelementptr inbounds i8, i8* %add.ptr10.us.i.5, i32 1
  %76 = load i8, i8* %arrayidx5.us.i.1.6, align 1, !tbaa !2
  %conv6.us.i.1.6 = zext i8 %76 to i32
  %add.us.i.1.6 = add nuw nsw i32 %conv.us.i.1.6, 1
  %add7.us.i.1.6 = add nuw nsw i32 %add.us.i.1.6, %conv6.us.i.1.6
  %77 = lshr i32 %add7.us.i.1.6, 1
  %conv8.us.i.1.6 = trunc i32 %77 to i8
  %arrayidx9.us.i.1.6 = getelementptr inbounds i8, i8* %add.ptr11.us.i.5, i32 1
  store i8 %conv8.us.i.1.6, i8* %arrayidx9.us.i.1.6, align 1, !tbaa !2
  %arrayidx.us.i.2.6 = getelementptr inbounds i8, i8* %add.ptr.us.i.5, i32 2
  %78 = load i8, i8* %arrayidx.us.i.2.6, align 1, !tbaa !2
  %conv.us.i.2.6 = zext i8 %78 to i32
  %arrayidx5.us.i.2.6 = getelementptr inbounds i8, i8* %add.ptr10.us.i.5, i32 2
  %79 = load i8, i8* %arrayidx5.us.i.2.6, align 1, !tbaa !2
  %conv6.us.i.2.6 = zext i8 %79 to i32
  %add.us.i.2.6 = add nuw nsw i32 %conv.us.i.2.6, 1
  %add7.us.i.2.6 = add nuw nsw i32 %add.us.i.2.6, %conv6.us.i.2.6
  %80 = lshr i32 %add7.us.i.2.6, 1
  %conv8.us.i.2.6 = trunc i32 %80 to i8
  %arrayidx9.us.i.2.6 = getelementptr inbounds i8, i8* %add.ptr11.us.i.5, i32 2
  store i8 %conv8.us.i.2.6, i8* %arrayidx9.us.i.2.6, align 1, !tbaa !2
  %arrayidx.us.i.3.6 = getelementptr inbounds i8, i8* %add.ptr.us.i.5, i32 3
  %81 = load i8, i8* %arrayidx.us.i.3.6, align 1, !tbaa !2
  %conv.us.i.3.6 = zext i8 %81 to i32
  %arrayidx5.us.i.3.6 = getelementptr inbounds i8, i8* %add.ptr10.us.i.5, i32 3
  %82 = load i8, i8* %arrayidx5.us.i.3.6, align 1, !tbaa !2
  %conv6.us.i.3.6 = zext i8 %82 to i32
  %add.us.i.3.6 = add nuw nsw i32 %conv.us.i.3.6, 1
  %add7.us.i.3.6 = add nuw nsw i32 %add.us.i.3.6, %conv6.us.i.3.6
  %83 = lshr i32 %add7.us.i.3.6, 1
  %conv8.us.i.3.6 = trunc i32 %83 to i8
  %arrayidx9.us.i.3.6 = getelementptr inbounds i8, i8* %add.ptr11.us.i.5, i32 3
  store i8 %conv8.us.i.3.6, i8* %arrayidx9.us.i.3.6, align 1, !tbaa !2
  %add.ptr.us.i.6 = getelementptr inbounds i8, i8* %add.ptr.us.i.5, i32 %i_stride_pix2
  %add.ptr10.us.i.6 = getelementptr inbounds i8, i8* %add.ptr10.us.i.5, i32 %i_stride_pix3
  %add.ptr11.us.i.6 = getelementptr inbounds i8, i8* %add.ptr11.us.i.5, i32 %i_stride_pix1
  %84 = load i8, i8* %add.ptr.us.i.6, align 1, !tbaa !2
  %conv.us.i.7 = zext i8 %84 to i32
  %85 = load i8, i8* %add.ptr10.us.i.6, align 1, !tbaa !2
  %conv6.us.i.7 = zext i8 %85 to i32
  %add.us.i.7 = add nuw nsw i32 %conv.us.i.7, 1
  %add7.us.i.7 = add nuw nsw i32 %add.us.i.7, %conv6.us.i.7
  %86 = lshr i32 %add7.us.i.7, 1
  %conv8.us.i.7 = trunc i32 %86 to i8
  store i8 %conv8.us.i.7, i8* %add.ptr11.us.i.6, align 1, !tbaa !2
  %arrayidx.us.i.1.7 = getelementptr inbounds i8, i8* %add.ptr.us.i.6, i32 1
  %87 = load i8, i8* %arrayidx.us.i.1.7, align 1, !tbaa !2
  %conv.us.i.1.7 = zext i8 %87 to i32
  %arrayidx5.us.i.1.7 = getelementptr inbounds i8, i8* %add.ptr10.us.i.6, i32 1
  %88 = load i8, i8* %arrayidx5.us.i.1.7, align 1, !tbaa !2
  %conv6.us.i.1.7 = zext i8 %88 to i32
  %add.us.i.1.7 = add nuw nsw i32 %conv.us.i.1.7, 1
  %add7.us.i.1.7 = add nuw nsw i32 %add.us.i.1.7, %conv6.us.i.1.7
  %89 = lshr i32 %add7.us.i.1.7, 1
  %conv8.us.i.1.7 = trunc i32 %89 to i8
  %arrayidx9.us.i.1.7 = getelementptr inbounds i8, i8* %add.ptr11.us.i.6, i32 1
  store i8 %conv8.us.i.1.7, i8* %arrayidx9.us.i.1.7, align 1, !tbaa !2
  %arrayidx.us.i.2.7 = getelementptr inbounds i8, i8* %add.ptr.us.i.6, i32 2
  %90 = load i8, i8* %arrayidx.us.i.2.7, align 1, !tbaa !2
  %conv.us.i.2.7 = zext i8 %90 to i32
  %arrayidx5.us.i.2.7 = getelementptr inbounds i8, i8* %add.ptr10.us.i.6, i32 2
  %91 = load i8, i8* %arrayidx5.us.i.2.7, align 1, !tbaa !2
  %conv6.us.i.2.7 = zext i8 %91 to i32
  %add.us.i.2.7 = add nuw nsw i32 %conv.us.i.2.7, 1
  %add7.us.i.2.7 = add nuw nsw i32 %add.us.i.2.7, %conv6.us.i.2.7
  %92 = lshr i32 %add7.us.i.2.7, 1
  %conv8.us.i.2.7 = trunc i32 %92 to i8
  %arrayidx9.us.i.2.7 = getelementptr inbounds i8, i8* %add.ptr11.us.i.6, i32 2
  store i8 %conv8.us.i.2.7, i8* %arrayidx9.us.i.2.7, align 1, !tbaa !2
  %arrayidx.us.i.3.7 = getelementptr inbounds i8, i8* %add.ptr.us.i.6, i32 3
  %93 = load i8, i8* %arrayidx.us.i.3.7, align 1, !tbaa !2
  %conv.us.i.3.7 = zext i8 %93 to i32
  %arrayidx5.us.i.3.7 = getelementptr inbounds i8, i8* %add.ptr10.us.i.6, i32 3
  %94 = load i8, i8* %arrayidx5.us.i.3.7, align 1, !tbaa !2
  %conv6.us.i.3.7 = zext i8 %94 to i32
  %add.us.i.3.7 = add nuw nsw i32 %conv.us.i.3.7, 1
  %add7.us.i.3.7 = add nuw nsw i32 %add.us.i.3.7, %conv6.us.i.3.7
  %95 = lshr i32 %add7.us.i.3.7, 1
  %conv8.us.i.3.7 = trunc i32 %95 to i8
  %arrayidx9.us.i.3.7 = getelementptr inbounds i8, i8* %add.ptr11.us.i.6, i32 3
  store i8 %conv8.us.i.3.7, i8* %arrayidx9.us.i.3.7, align 1, !tbaa !2
  br label %if.end

if.else:                                          ; preds = %entry
  %sub.i = sub nsw i32 64, %weight
  br label %for.cond1.preheader.us.i2

for.cond1.preheader.us.i2:                        ; preds = %for.cond1.preheader.us.i2, %if.else
  %y.033.us.i = phi i32 [ %inc11.us.i, %for.cond1.preheader.us.i2 ], [ 0, %if.else ]
  %dst.addr.032.us.i = phi i8* [ %add.ptr.us.i12, %for.cond1.preheader.us.i2 ], [ %pix1, %if.else ]
  %src1.addr.031.us.i = phi i8* [ %add.ptr12.us.i, %for.cond1.preheader.us.i2 ], [ %pix2, %if.else ]
  %src2.addr.030.us.i = phi i8* [ %add.ptr13.us.i, %for.cond1.preheader.us.i2 ], [ %pix3, %if.else ]
  %96 = load i8, i8* %src1.addr.031.us.i, align 1, !tbaa !2
  %conv.us.i4 = zext i8 %96 to i32
  %mul.us.i = mul nsw i32 %conv.us.i4, %weight
  %97 = load i8, i8* %src2.addr.030.us.i, align 1, !tbaa !2
  %conv6.us.i6 = zext i8 %97 to i32
  %mul7.us.i = mul nsw i32 %sub.i, %conv6.us.i6
  %add.us.i7 = add i32 %mul.us.i, 32
  %add8.us.i = add i32 %add.us.i7, %mul7.us.i
  %shr.us.i = ashr i32 %add8.us.i, 6
  %tobool.i.us.i = icmp ugt i32 %shr.us.i, 255
  %sub.i.us.i = sub nsw i32 0, %shr.us.i
  %shr.i.us.i = ashr i32 %sub.i.us.i, 31
  %cond.i.us.i = select i1 %tobool.i.us.i, i32 %shr.i.us.i, i32 %shr.us.i
  %conv.i.us.i = trunc i32 %cond.i.us.i to i8
  store i8 %conv.i.us.i, i8* %dst.addr.032.us.i, align 1, !tbaa !2
  %arrayidx.us.i3.1 = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 1
  %98 = load i8, i8* %arrayidx.us.i3.1, align 1, !tbaa !2
  %conv.us.i4.1 = zext i8 %98 to i32
  %mul.us.i.1 = mul nsw i32 %conv.us.i4.1, %weight
  %arrayidx5.us.i5.1 = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 1
  %99 = load i8, i8* %arrayidx5.us.i5.1, align 1, !tbaa !2
  %conv6.us.i6.1 = zext i8 %99 to i32
  %mul7.us.i.1 = mul nsw i32 %sub.i, %conv6.us.i6.1
  %add.us.i7.1 = add i32 %mul.us.i.1, 32
  %add8.us.i.1 = add i32 %add.us.i7.1, %mul7.us.i.1
  %shr.us.i.1 = ashr i32 %add8.us.i.1, 6
  %tobool.i.us.i.1 = icmp ugt i32 %shr.us.i.1, 255
  %sub.i.us.i.1 = sub nsw i32 0, %shr.us.i.1
  %shr.i.us.i.1 = ashr i32 %sub.i.us.i.1, 31
  %cond.i.us.i.1 = select i1 %tobool.i.us.i.1, i32 %shr.i.us.i.1, i32 %shr.us.i.1
  %conv.i.us.i.1 = trunc i32 %cond.i.us.i.1 to i8
  %arrayidx9.us.i8.1 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 1
  store i8 %conv.i.us.i.1, i8* %arrayidx9.us.i8.1, align 1, !tbaa !2
  %arrayidx.us.i3.2 = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 2
  %100 = load i8, i8* %arrayidx.us.i3.2, align 1, !tbaa !2
  %conv.us.i4.2 = zext i8 %100 to i32
  %mul.us.i.2 = mul nsw i32 %conv.us.i4.2, %weight
  %arrayidx5.us.i5.2 = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 2
  %101 = load i8, i8* %arrayidx5.us.i5.2, align 1, !tbaa !2
  %conv6.us.i6.2 = zext i8 %101 to i32
  %mul7.us.i.2 = mul nsw i32 %sub.i, %conv6.us.i6.2
  %add.us.i7.2 = add i32 %mul.us.i.2, 32
  %add8.us.i.2 = add i32 %add.us.i7.2, %mul7.us.i.2
  %shr.us.i.2 = ashr i32 %add8.us.i.2, 6
  %tobool.i.us.i.2 = icmp ugt i32 %shr.us.i.2, 255
  %sub.i.us.i.2 = sub nsw i32 0, %shr.us.i.2
  %shr.i.us.i.2 = ashr i32 %sub.i.us.i.2, 31
  %cond.i.us.i.2 = select i1 %tobool.i.us.i.2, i32 %shr.i.us.i.2, i32 %shr.us.i.2
  %conv.i.us.i.2 = trunc i32 %cond.i.us.i.2 to i8
  %arrayidx9.us.i8.2 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 2
  store i8 %conv.i.us.i.2, i8* %arrayidx9.us.i8.2, align 1, !tbaa !2
  %arrayidx.us.i3.3 = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 3
  %102 = load i8, i8* %arrayidx.us.i3.3, align 1, !tbaa !2
  %conv.us.i4.3 = zext i8 %102 to i32
  %mul.us.i.3 = mul nsw i32 %conv.us.i4.3, %weight
  %arrayidx5.us.i5.3 = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 3
  %103 = load i8, i8* %arrayidx5.us.i5.3, align 1, !tbaa !2
  %conv6.us.i6.3 = zext i8 %103 to i32
  %mul7.us.i.3 = mul nsw i32 %sub.i, %conv6.us.i6.3
  %add.us.i7.3 = add i32 %mul.us.i.3, 32
  %add8.us.i.3 = add i32 %add.us.i7.3, %mul7.us.i.3
  %shr.us.i.3 = ashr i32 %add8.us.i.3, 6
  %tobool.i.us.i.3 = icmp ugt i32 %shr.us.i.3, 255
  %sub.i.us.i.3 = sub nsw i32 0, %shr.us.i.3
  %shr.i.us.i.3 = ashr i32 %sub.i.us.i.3, 31
  %cond.i.us.i.3 = select i1 %tobool.i.us.i.3, i32 %shr.i.us.i.3, i32 %shr.us.i.3
  %conv.i.us.i.3 = trunc i32 %cond.i.us.i.3 to i8
  %arrayidx9.us.i8.3 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 3
  store i8 %conv.i.us.i.3, i8* %arrayidx9.us.i8.3, align 1, !tbaa !2
  %inc11.us.i = add nuw nsw i32 %y.033.us.i, 1
  %add.ptr.us.i12 = getelementptr inbounds i8, i8* %dst.addr.032.us.i, i32 %i_stride_pix1
  %add.ptr12.us.i = getelementptr inbounds i8, i8* %src1.addr.031.us.i, i32 %i_stride_pix2
  %add.ptr13.us.i = getelementptr inbounds i8, i8* %src2.addr.030.us.i, i32 %i_stride_pix3
  %exitcond35.i = icmp eq i32 %inc11.us.i, 8
  br i1 %exitcond35.i, label %if.end, label %for.cond1.preheader.us.i2

if.end:                                           ; preds = %for.cond1.preheader.us.i2, %for.cond1.preheader.us.i.preheader
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @pixel_avg_4x4(i8* nocapture %pix1, i32 %i_stride_pix1, i8* nocapture readonly %pix2, i32 %i_stride_pix2, i8* nocapture readonly %pix3, i32 %i_stride_pix3, i32 %weight) #2 {
entry:
  %cmp = icmp eq i32 %weight, 32
  br i1 %cmp, label %for.cond1.preheader.us.i.preheader, label %if.else

for.cond1.preheader.us.i.preheader:               ; preds = %entry
  %0 = load i8, i8* %pix2, align 1, !tbaa !2
  %conv.us.i = zext i8 %0 to i32
  %1 = load i8, i8* %pix3, align 1, !tbaa !2
  %conv6.us.i = zext i8 %1 to i32
  %add.us.i = add nuw nsw i32 %conv.us.i, 1
  %add7.us.i = add nuw nsw i32 %add.us.i, %conv6.us.i
  %2 = lshr i32 %add7.us.i, 1
  %conv8.us.i = trunc i32 %2 to i8
  store i8 %conv8.us.i, i8* %pix1, align 1, !tbaa !2
  %arrayidx.us.i.1 = getelementptr inbounds i8, i8* %pix2, i32 1
  %3 = load i8, i8* %arrayidx.us.i.1, align 1, !tbaa !2
  %conv.us.i.1 = zext i8 %3 to i32
  %arrayidx5.us.i.1 = getelementptr inbounds i8, i8* %pix3, i32 1
  %4 = load i8, i8* %arrayidx5.us.i.1, align 1, !tbaa !2
  %conv6.us.i.1 = zext i8 %4 to i32
  %add.us.i.1 = add nuw nsw i32 %conv.us.i.1, 1
  %add7.us.i.1 = add nuw nsw i32 %add.us.i.1, %conv6.us.i.1
  %5 = lshr i32 %add7.us.i.1, 1
  %conv8.us.i.1 = trunc i32 %5 to i8
  %arrayidx9.us.i.1 = getelementptr inbounds i8, i8* %pix1, i32 1
  store i8 %conv8.us.i.1, i8* %arrayidx9.us.i.1, align 1, !tbaa !2
  %arrayidx.us.i.2 = getelementptr inbounds i8, i8* %pix2, i32 2
  %6 = load i8, i8* %arrayidx.us.i.2, align 1, !tbaa !2
  %conv.us.i.2 = zext i8 %6 to i32
  %arrayidx5.us.i.2 = getelementptr inbounds i8, i8* %pix3, i32 2
  %7 = load i8, i8* %arrayidx5.us.i.2, align 1, !tbaa !2
  %conv6.us.i.2 = zext i8 %7 to i32
  %add.us.i.2 = add nuw nsw i32 %conv.us.i.2, 1
  %add7.us.i.2 = add nuw nsw i32 %add.us.i.2, %conv6.us.i.2
  %8 = lshr i32 %add7.us.i.2, 1
  %conv8.us.i.2 = trunc i32 %8 to i8
  %arrayidx9.us.i.2 = getelementptr inbounds i8, i8* %pix1, i32 2
  store i8 %conv8.us.i.2, i8* %arrayidx9.us.i.2, align 1, !tbaa !2
  %arrayidx.us.i.3 = getelementptr inbounds i8, i8* %pix2, i32 3
  %9 = load i8, i8* %arrayidx.us.i.3, align 1, !tbaa !2
  %conv.us.i.3 = zext i8 %9 to i32
  %arrayidx5.us.i.3 = getelementptr inbounds i8, i8* %pix3, i32 3
  %10 = load i8, i8* %arrayidx5.us.i.3, align 1, !tbaa !2
  %conv6.us.i.3 = zext i8 %10 to i32
  %add.us.i.3 = add nuw nsw i32 %conv.us.i.3, 1
  %add7.us.i.3 = add nuw nsw i32 %add.us.i.3, %conv6.us.i.3
  %11 = lshr i32 %add7.us.i.3, 1
  %conv8.us.i.3 = trunc i32 %11 to i8
  %arrayidx9.us.i.3 = getelementptr inbounds i8, i8* %pix1, i32 3
  store i8 %conv8.us.i.3, i8* %arrayidx9.us.i.3, align 1, !tbaa !2
  %add.ptr.us.i = getelementptr inbounds i8, i8* %pix2, i32 %i_stride_pix2
  %add.ptr10.us.i = getelementptr inbounds i8, i8* %pix3, i32 %i_stride_pix3
  %add.ptr11.us.i = getelementptr inbounds i8, i8* %pix1, i32 %i_stride_pix1
  %12 = load i8, i8* %add.ptr.us.i, align 1, !tbaa !2
  %conv.us.i.116 = zext i8 %12 to i32
  %13 = load i8, i8* %add.ptr10.us.i, align 1, !tbaa !2
  %conv6.us.i.117 = zext i8 %13 to i32
  %add.us.i.118 = add nuw nsw i32 %conv.us.i.116, 1
  %add7.us.i.119 = add nuw nsw i32 %add.us.i.118, %conv6.us.i.117
  %14 = lshr i32 %add7.us.i.119, 1
  %conv8.us.i.120 = trunc i32 %14 to i8
  store i8 %conv8.us.i.120, i8* %add.ptr11.us.i, align 1, !tbaa !2
  %arrayidx.us.i.1.1 = getelementptr inbounds i8, i8* %add.ptr.us.i, i32 1
  %15 = load i8, i8* %arrayidx.us.i.1.1, align 1, !tbaa !2
  %conv.us.i.1.1 = zext i8 %15 to i32
  %arrayidx5.us.i.1.1 = getelementptr inbounds i8, i8* %add.ptr10.us.i, i32 1
  %16 = load i8, i8* %arrayidx5.us.i.1.1, align 1, !tbaa !2
  %conv6.us.i.1.1 = zext i8 %16 to i32
  %add.us.i.1.1 = add nuw nsw i32 %conv.us.i.1.1, 1
  %add7.us.i.1.1 = add nuw nsw i32 %add.us.i.1.1, %conv6.us.i.1.1
  %17 = lshr i32 %add7.us.i.1.1, 1
  %conv8.us.i.1.1 = trunc i32 %17 to i8
  %arrayidx9.us.i.1.1 = getelementptr inbounds i8, i8* %add.ptr11.us.i, i32 1
  store i8 %conv8.us.i.1.1, i8* %arrayidx9.us.i.1.1, align 1, !tbaa !2
  %arrayidx.us.i.2.1 = getelementptr inbounds i8, i8* %add.ptr.us.i, i32 2
  %18 = load i8, i8* %arrayidx.us.i.2.1, align 1, !tbaa !2
  %conv.us.i.2.1 = zext i8 %18 to i32
  %arrayidx5.us.i.2.1 = getelementptr inbounds i8, i8* %add.ptr10.us.i, i32 2
  %19 = load i8, i8* %arrayidx5.us.i.2.1, align 1, !tbaa !2
  %conv6.us.i.2.1 = zext i8 %19 to i32
  %add.us.i.2.1 = add nuw nsw i32 %conv.us.i.2.1, 1
  %add7.us.i.2.1 = add nuw nsw i32 %add.us.i.2.1, %conv6.us.i.2.1
  %20 = lshr i32 %add7.us.i.2.1, 1
  %conv8.us.i.2.1 = trunc i32 %20 to i8
  %arrayidx9.us.i.2.1 = getelementptr inbounds i8, i8* %add.ptr11.us.i, i32 2
  store i8 %conv8.us.i.2.1, i8* %arrayidx9.us.i.2.1, align 1, !tbaa !2
  %arrayidx.us.i.3.1 = getelementptr inbounds i8, i8* %add.ptr.us.i, i32 3
  %21 = load i8, i8* %arrayidx.us.i.3.1, align 1, !tbaa !2
  %conv.us.i.3.1 = zext i8 %21 to i32
  %arrayidx5.us.i.3.1 = getelementptr inbounds i8, i8* %add.ptr10.us.i, i32 3
  %22 = load i8, i8* %arrayidx5.us.i.3.1, align 1, !tbaa !2
  %conv6.us.i.3.1 = zext i8 %22 to i32
  %add.us.i.3.1 = add nuw nsw i32 %conv.us.i.3.1, 1
  %add7.us.i.3.1 = add nuw nsw i32 %add.us.i.3.1, %conv6.us.i.3.1
  %23 = lshr i32 %add7.us.i.3.1, 1
  %conv8.us.i.3.1 = trunc i32 %23 to i8
  %arrayidx9.us.i.3.1 = getelementptr inbounds i8, i8* %add.ptr11.us.i, i32 3
  store i8 %conv8.us.i.3.1, i8* %arrayidx9.us.i.3.1, align 1, !tbaa !2
  %add.ptr.us.i.1 = getelementptr inbounds i8, i8* %add.ptr.us.i, i32 %i_stride_pix2
  %add.ptr10.us.i.1 = getelementptr inbounds i8, i8* %add.ptr10.us.i, i32 %i_stride_pix3
  %add.ptr11.us.i.1 = getelementptr inbounds i8, i8* %add.ptr11.us.i, i32 %i_stride_pix1
  %24 = load i8, i8* %add.ptr.us.i.1, align 1, !tbaa !2
  %conv.us.i.221 = zext i8 %24 to i32
  %25 = load i8, i8* %add.ptr10.us.i.1, align 1, !tbaa !2
  %conv6.us.i.222 = zext i8 %25 to i32
  %add.us.i.223 = add nuw nsw i32 %conv.us.i.221, 1
  %add7.us.i.224 = add nuw nsw i32 %add.us.i.223, %conv6.us.i.222
  %26 = lshr i32 %add7.us.i.224, 1
  %conv8.us.i.225 = trunc i32 %26 to i8
  store i8 %conv8.us.i.225, i8* %add.ptr11.us.i.1, align 1, !tbaa !2
  %arrayidx.us.i.1.2 = getelementptr inbounds i8, i8* %add.ptr.us.i.1, i32 1
  %27 = load i8, i8* %arrayidx.us.i.1.2, align 1, !tbaa !2
  %conv.us.i.1.2 = zext i8 %27 to i32
  %arrayidx5.us.i.1.2 = getelementptr inbounds i8, i8* %add.ptr10.us.i.1, i32 1
  %28 = load i8, i8* %arrayidx5.us.i.1.2, align 1, !tbaa !2
  %conv6.us.i.1.2 = zext i8 %28 to i32
  %add.us.i.1.2 = add nuw nsw i32 %conv.us.i.1.2, 1
  %add7.us.i.1.2 = add nuw nsw i32 %add.us.i.1.2, %conv6.us.i.1.2
  %29 = lshr i32 %add7.us.i.1.2, 1
  %conv8.us.i.1.2 = trunc i32 %29 to i8
  %arrayidx9.us.i.1.2 = getelementptr inbounds i8, i8* %add.ptr11.us.i.1, i32 1
  store i8 %conv8.us.i.1.2, i8* %arrayidx9.us.i.1.2, align 1, !tbaa !2
  %arrayidx.us.i.2.2 = getelementptr inbounds i8, i8* %add.ptr.us.i.1, i32 2
  %30 = load i8, i8* %arrayidx.us.i.2.2, align 1, !tbaa !2
  %conv.us.i.2.2 = zext i8 %30 to i32
  %arrayidx5.us.i.2.2 = getelementptr inbounds i8, i8* %add.ptr10.us.i.1, i32 2
  %31 = load i8, i8* %arrayidx5.us.i.2.2, align 1, !tbaa !2
  %conv6.us.i.2.2 = zext i8 %31 to i32
  %add.us.i.2.2 = add nuw nsw i32 %conv.us.i.2.2, 1
  %add7.us.i.2.2 = add nuw nsw i32 %add.us.i.2.2, %conv6.us.i.2.2
  %32 = lshr i32 %add7.us.i.2.2, 1
  %conv8.us.i.2.2 = trunc i32 %32 to i8
  %arrayidx9.us.i.2.2 = getelementptr inbounds i8, i8* %add.ptr11.us.i.1, i32 2
  store i8 %conv8.us.i.2.2, i8* %arrayidx9.us.i.2.2, align 1, !tbaa !2
  %arrayidx.us.i.3.2 = getelementptr inbounds i8, i8* %add.ptr.us.i.1, i32 3
  %33 = load i8, i8* %arrayidx.us.i.3.2, align 1, !tbaa !2
  %conv.us.i.3.2 = zext i8 %33 to i32
  %arrayidx5.us.i.3.2 = getelementptr inbounds i8, i8* %add.ptr10.us.i.1, i32 3
  %34 = load i8, i8* %arrayidx5.us.i.3.2, align 1, !tbaa !2
  %conv6.us.i.3.2 = zext i8 %34 to i32
  %add.us.i.3.2 = add nuw nsw i32 %conv.us.i.3.2, 1
  %add7.us.i.3.2 = add nuw nsw i32 %add.us.i.3.2, %conv6.us.i.3.2
  %35 = lshr i32 %add7.us.i.3.2, 1
  %conv8.us.i.3.2 = trunc i32 %35 to i8
  %arrayidx9.us.i.3.2 = getelementptr inbounds i8, i8* %add.ptr11.us.i.1, i32 3
  store i8 %conv8.us.i.3.2, i8* %arrayidx9.us.i.3.2, align 1, !tbaa !2
  %add.ptr.us.i.2 = getelementptr inbounds i8, i8* %add.ptr.us.i.1, i32 %i_stride_pix2
  %add.ptr10.us.i.2 = getelementptr inbounds i8, i8* %add.ptr10.us.i.1, i32 %i_stride_pix3
  %add.ptr11.us.i.2 = getelementptr inbounds i8, i8* %add.ptr11.us.i.1, i32 %i_stride_pix1
  %36 = load i8, i8* %add.ptr.us.i.2, align 1, !tbaa !2
  %conv.us.i.326 = zext i8 %36 to i32
  %37 = load i8, i8* %add.ptr10.us.i.2, align 1, !tbaa !2
  %conv6.us.i.327 = zext i8 %37 to i32
  %add.us.i.328 = add nuw nsw i32 %conv.us.i.326, 1
  %add7.us.i.329 = add nuw nsw i32 %add.us.i.328, %conv6.us.i.327
  %38 = lshr i32 %add7.us.i.329, 1
  %conv8.us.i.330 = trunc i32 %38 to i8
  store i8 %conv8.us.i.330, i8* %add.ptr11.us.i.2, align 1, !tbaa !2
  %arrayidx.us.i.1.3 = getelementptr inbounds i8, i8* %add.ptr.us.i.2, i32 1
  %39 = load i8, i8* %arrayidx.us.i.1.3, align 1, !tbaa !2
  %conv.us.i.1.3 = zext i8 %39 to i32
  %arrayidx5.us.i.1.3 = getelementptr inbounds i8, i8* %add.ptr10.us.i.2, i32 1
  %40 = load i8, i8* %arrayidx5.us.i.1.3, align 1, !tbaa !2
  %conv6.us.i.1.3 = zext i8 %40 to i32
  %add.us.i.1.3 = add nuw nsw i32 %conv.us.i.1.3, 1
  %add7.us.i.1.3 = add nuw nsw i32 %add.us.i.1.3, %conv6.us.i.1.3
  %41 = lshr i32 %add7.us.i.1.3, 1
  %conv8.us.i.1.3 = trunc i32 %41 to i8
  %arrayidx9.us.i.1.3 = getelementptr inbounds i8, i8* %add.ptr11.us.i.2, i32 1
  store i8 %conv8.us.i.1.3, i8* %arrayidx9.us.i.1.3, align 1, !tbaa !2
  %arrayidx.us.i.2.3 = getelementptr inbounds i8, i8* %add.ptr.us.i.2, i32 2
  %42 = load i8, i8* %arrayidx.us.i.2.3, align 1, !tbaa !2
  %conv.us.i.2.3 = zext i8 %42 to i32
  %arrayidx5.us.i.2.3 = getelementptr inbounds i8, i8* %add.ptr10.us.i.2, i32 2
  %43 = load i8, i8* %arrayidx5.us.i.2.3, align 1, !tbaa !2
  %conv6.us.i.2.3 = zext i8 %43 to i32
  %add.us.i.2.3 = add nuw nsw i32 %conv.us.i.2.3, 1
  %add7.us.i.2.3 = add nuw nsw i32 %add.us.i.2.3, %conv6.us.i.2.3
  %44 = lshr i32 %add7.us.i.2.3, 1
  %conv8.us.i.2.3 = trunc i32 %44 to i8
  %arrayidx9.us.i.2.3 = getelementptr inbounds i8, i8* %add.ptr11.us.i.2, i32 2
  store i8 %conv8.us.i.2.3, i8* %arrayidx9.us.i.2.3, align 1, !tbaa !2
  %arrayidx.us.i.3.3 = getelementptr inbounds i8, i8* %add.ptr.us.i.2, i32 3
  %45 = load i8, i8* %arrayidx.us.i.3.3, align 1, !tbaa !2
  %conv.us.i.3.3 = zext i8 %45 to i32
  %arrayidx5.us.i.3.3 = getelementptr inbounds i8, i8* %add.ptr10.us.i.2, i32 3
  %46 = load i8, i8* %arrayidx5.us.i.3.3, align 1, !tbaa !2
  %conv6.us.i.3.3 = zext i8 %46 to i32
  %add.us.i.3.3 = add nuw nsw i32 %conv.us.i.3.3, 1
  %add7.us.i.3.3 = add nuw nsw i32 %add.us.i.3.3, %conv6.us.i.3.3
  %47 = lshr i32 %add7.us.i.3.3, 1
  br label %if.end

if.else:                                          ; preds = %entry
  %sub.i = sub nsw i32 64, %weight
  %48 = load i8, i8* %pix2, align 1, !tbaa !2
  %conv.us.i4 = zext i8 %48 to i32
  %mul.us.i = mul nsw i32 %conv.us.i4, %weight
  %49 = load i8, i8* %pix3, align 1, !tbaa !2
  %conv6.us.i6 = zext i8 %49 to i32
  %mul7.us.i = mul nsw i32 %sub.i, %conv6.us.i6
  %add.us.i7 = add i32 %mul.us.i, 32
  %add8.us.i = add i32 %add.us.i7, %mul7.us.i
  %shr.us.i = ashr i32 %add8.us.i, 6
  %tobool.i.us.i = icmp ugt i32 %shr.us.i, 255
  %sub.i.us.i = sub nsw i32 0, %shr.us.i
  %shr.i.us.i = ashr i32 %sub.i.us.i, 31
  %cond.i.us.i = select i1 %tobool.i.us.i, i32 %shr.i.us.i, i32 %shr.us.i
  %conv.i.us.i = trunc i32 %cond.i.us.i to i8
  store i8 %conv.i.us.i, i8* %pix1, align 1, !tbaa !2
  %arrayidx.us.i3.1 = getelementptr inbounds i8, i8* %pix2, i32 1
  %50 = load i8, i8* %arrayidx.us.i3.1, align 1, !tbaa !2
  %conv.us.i4.1 = zext i8 %50 to i32
  %mul.us.i.1 = mul nsw i32 %conv.us.i4.1, %weight
  %arrayidx5.us.i5.1 = getelementptr inbounds i8, i8* %pix3, i32 1
  %51 = load i8, i8* %arrayidx5.us.i5.1, align 1, !tbaa !2
  %conv6.us.i6.1 = zext i8 %51 to i32
  %mul7.us.i.1 = mul nsw i32 %sub.i, %conv6.us.i6.1
  %add.us.i7.1 = add i32 %mul.us.i.1, 32
  %add8.us.i.1 = add i32 %add.us.i7.1, %mul7.us.i.1
  %shr.us.i.1 = ashr i32 %add8.us.i.1, 6
  %tobool.i.us.i.1 = icmp ugt i32 %shr.us.i.1, 255
  %sub.i.us.i.1 = sub nsw i32 0, %shr.us.i.1
  %shr.i.us.i.1 = ashr i32 %sub.i.us.i.1, 31
  %cond.i.us.i.1 = select i1 %tobool.i.us.i.1, i32 %shr.i.us.i.1, i32 %shr.us.i.1
  %conv.i.us.i.1 = trunc i32 %cond.i.us.i.1 to i8
  %arrayidx9.us.i8.1 = getelementptr inbounds i8, i8* %pix1, i32 1
  store i8 %conv.i.us.i.1, i8* %arrayidx9.us.i8.1, align 1, !tbaa !2
  %arrayidx.us.i3.2 = getelementptr inbounds i8, i8* %pix2, i32 2
  %52 = load i8, i8* %arrayidx.us.i3.2, align 1, !tbaa !2
  %conv.us.i4.2 = zext i8 %52 to i32
  %mul.us.i.2 = mul nsw i32 %conv.us.i4.2, %weight
  %arrayidx5.us.i5.2 = getelementptr inbounds i8, i8* %pix3, i32 2
  %53 = load i8, i8* %arrayidx5.us.i5.2, align 1, !tbaa !2
  %conv6.us.i6.2 = zext i8 %53 to i32
  %mul7.us.i.2 = mul nsw i32 %sub.i, %conv6.us.i6.2
  %add.us.i7.2 = add i32 %mul.us.i.2, 32
  %add8.us.i.2 = add i32 %add.us.i7.2, %mul7.us.i.2
  %shr.us.i.2 = ashr i32 %add8.us.i.2, 6
  %tobool.i.us.i.2 = icmp ugt i32 %shr.us.i.2, 255
  %sub.i.us.i.2 = sub nsw i32 0, %shr.us.i.2
  %shr.i.us.i.2 = ashr i32 %sub.i.us.i.2, 31
  %cond.i.us.i.2 = select i1 %tobool.i.us.i.2, i32 %shr.i.us.i.2, i32 %shr.us.i.2
  %conv.i.us.i.2 = trunc i32 %cond.i.us.i.2 to i8
  %arrayidx9.us.i8.2 = getelementptr inbounds i8, i8* %pix1, i32 2
  store i8 %conv.i.us.i.2, i8* %arrayidx9.us.i8.2, align 1, !tbaa !2
  %arrayidx.us.i3.3 = getelementptr inbounds i8, i8* %pix2, i32 3
  %54 = load i8, i8* %arrayidx.us.i3.3, align 1, !tbaa !2
  %conv.us.i4.3 = zext i8 %54 to i32
  %mul.us.i.3 = mul nsw i32 %conv.us.i4.3, %weight
  %arrayidx5.us.i5.3 = getelementptr inbounds i8, i8* %pix3, i32 3
  %55 = load i8, i8* %arrayidx5.us.i5.3, align 1, !tbaa !2
  %conv6.us.i6.3 = zext i8 %55 to i32
  %mul7.us.i.3 = mul nsw i32 %sub.i, %conv6.us.i6.3
  %add.us.i7.3 = add i32 %mul.us.i.3, 32
  %add8.us.i.3 = add i32 %add.us.i7.3, %mul7.us.i.3
  %shr.us.i.3 = ashr i32 %add8.us.i.3, 6
  %tobool.i.us.i.3 = icmp ugt i32 %shr.us.i.3, 255
  %sub.i.us.i.3 = sub nsw i32 0, %shr.us.i.3
  %shr.i.us.i.3 = ashr i32 %sub.i.us.i.3, 31
  %cond.i.us.i.3 = select i1 %tobool.i.us.i.3, i32 %shr.i.us.i.3, i32 %shr.us.i.3
  %conv.i.us.i.3 = trunc i32 %cond.i.us.i.3 to i8
  %arrayidx9.us.i8.3 = getelementptr inbounds i8, i8* %pix1, i32 3
  store i8 %conv.i.us.i.3, i8* %arrayidx9.us.i8.3, align 1, !tbaa !2
  %add.ptr.us.i12 = getelementptr inbounds i8, i8* %pix1, i32 %i_stride_pix1
  %add.ptr12.us.i = getelementptr inbounds i8, i8* %pix2, i32 %i_stride_pix2
  %add.ptr13.us.i = getelementptr inbounds i8, i8* %pix3, i32 %i_stride_pix3
  %56 = load i8, i8* %add.ptr12.us.i, align 1, !tbaa !2
  %conv.us.i4.131 = zext i8 %56 to i32
  %mul.us.i.132 = mul nsw i32 %conv.us.i4.131, %weight
  %57 = load i8, i8* %add.ptr13.us.i, align 1, !tbaa !2
  %conv6.us.i6.133 = zext i8 %57 to i32
  %mul7.us.i.134 = mul nsw i32 %sub.i, %conv6.us.i6.133
  %add.us.i7.135 = add i32 %mul.us.i.132, 32
  %add8.us.i.136 = add i32 %add.us.i7.135, %mul7.us.i.134
  %shr.us.i.137 = ashr i32 %add8.us.i.136, 6
  %tobool.i.us.i.138 = icmp ugt i32 %shr.us.i.137, 255
  %sub.i.us.i.139 = sub nsw i32 0, %shr.us.i.137
  %shr.i.us.i.140 = ashr i32 %sub.i.us.i.139, 31
  %cond.i.us.i.141 = select i1 %tobool.i.us.i.138, i32 %shr.i.us.i.140, i32 %shr.us.i.137
  %conv.i.us.i.142 = trunc i32 %cond.i.us.i.141 to i8
  store i8 %conv.i.us.i.142, i8* %add.ptr.us.i12, align 1, !tbaa !2
  %arrayidx.us.i3.1.1 = getelementptr inbounds i8, i8* %add.ptr12.us.i, i32 1
  %58 = load i8, i8* %arrayidx.us.i3.1.1, align 1, !tbaa !2
  %conv.us.i4.1.1 = zext i8 %58 to i32
  %mul.us.i.1.1 = mul nsw i32 %conv.us.i4.1.1, %weight
  %arrayidx5.us.i5.1.1 = getelementptr inbounds i8, i8* %add.ptr13.us.i, i32 1
  %59 = load i8, i8* %arrayidx5.us.i5.1.1, align 1, !tbaa !2
  %conv6.us.i6.1.1 = zext i8 %59 to i32
  %mul7.us.i.1.1 = mul nsw i32 %sub.i, %conv6.us.i6.1.1
  %add.us.i7.1.1 = add i32 %mul.us.i.1.1, 32
  %add8.us.i.1.1 = add i32 %add.us.i7.1.1, %mul7.us.i.1.1
  %shr.us.i.1.1 = ashr i32 %add8.us.i.1.1, 6
  %tobool.i.us.i.1.1 = icmp ugt i32 %shr.us.i.1.1, 255
  %sub.i.us.i.1.1 = sub nsw i32 0, %shr.us.i.1.1
  %shr.i.us.i.1.1 = ashr i32 %sub.i.us.i.1.1, 31
  %cond.i.us.i.1.1 = select i1 %tobool.i.us.i.1.1, i32 %shr.i.us.i.1.1, i32 %shr.us.i.1.1
  %conv.i.us.i.1.1 = trunc i32 %cond.i.us.i.1.1 to i8
  %arrayidx9.us.i8.1.1 = getelementptr inbounds i8, i8* %add.ptr.us.i12, i32 1
  store i8 %conv.i.us.i.1.1, i8* %arrayidx9.us.i8.1.1, align 1, !tbaa !2
  %arrayidx.us.i3.2.1 = getelementptr inbounds i8, i8* %add.ptr12.us.i, i32 2
  %60 = load i8, i8* %arrayidx.us.i3.2.1, align 1, !tbaa !2
  %conv.us.i4.2.1 = zext i8 %60 to i32
  %mul.us.i.2.1 = mul nsw i32 %conv.us.i4.2.1, %weight
  %arrayidx5.us.i5.2.1 = getelementptr inbounds i8, i8* %add.ptr13.us.i, i32 2
  %61 = load i8, i8* %arrayidx5.us.i5.2.1, align 1, !tbaa !2
  %conv6.us.i6.2.1 = zext i8 %61 to i32
  %mul7.us.i.2.1 = mul nsw i32 %sub.i, %conv6.us.i6.2.1
  %add.us.i7.2.1 = add i32 %mul.us.i.2.1, 32
  %add8.us.i.2.1 = add i32 %add.us.i7.2.1, %mul7.us.i.2.1
  %shr.us.i.2.1 = ashr i32 %add8.us.i.2.1, 6
  %tobool.i.us.i.2.1 = icmp ugt i32 %shr.us.i.2.1, 255
  %sub.i.us.i.2.1 = sub nsw i32 0, %shr.us.i.2.1
  %shr.i.us.i.2.1 = ashr i32 %sub.i.us.i.2.1, 31
  %cond.i.us.i.2.1 = select i1 %tobool.i.us.i.2.1, i32 %shr.i.us.i.2.1, i32 %shr.us.i.2.1
  %conv.i.us.i.2.1 = trunc i32 %cond.i.us.i.2.1 to i8
  %arrayidx9.us.i8.2.1 = getelementptr inbounds i8, i8* %add.ptr.us.i12, i32 2
  store i8 %conv.i.us.i.2.1, i8* %arrayidx9.us.i8.2.1, align 1, !tbaa !2
  %arrayidx.us.i3.3.1 = getelementptr inbounds i8, i8* %add.ptr12.us.i, i32 3
  %62 = load i8, i8* %arrayidx.us.i3.3.1, align 1, !tbaa !2
  %conv.us.i4.3.1 = zext i8 %62 to i32
  %mul.us.i.3.1 = mul nsw i32 %conv.us.i4.3.1, %weight
  %arrayidx5.us.i5.3.1 = getelementptr inbounds i8, i8* %add.ptr13.us.i, i32 3
  %63 = load i8, i8* %arrayidx5.us.i5.3.1, align 1, !tbaa !2
  %conv6.us.i6.3.1 = zext i8 %63 to i32
  %mul7.us.i.3.1 = mul nsw i32 %sub.i, %conv6.us.i6.3.1
  %add.us.i7.3.1 = add i32 %mul.us.i.3.1, 32
  %add8.us.i.3.1 = add i32 %add.us.i7.3.1, %mul7.us.i.3.1
  %shr.us.i.3.1 = ashr i32 %add8.us.i.3.1, 6
  %tobool.i.us.i.3.1 = icmp ugt i32 %shr.us.i.3.1, 255
  %sub.i.us.i.3.1 = sub nsw i32 0, %shr.us.i.3.1
  %shr.i.us.i.3.1 = ashr i32 %sub.i.us.i.3.1, 31
  %cond.i.us.i.3.1 = select i1 %tobool.i.us.i.3.1, i32 %shr.i.us.i.3.1, i32 %shr.us.i.3.1
  %conv.i.us.i.3.1 = trunc i32 %cond.i.us.i.3.1 to i8
  %arrayidx9.us.i8.3.1 = getelementptr inbounds i8, i8* %add.ptr.us.i12, i32 3
  store i8 %conv.i.us.i.3.1, i8* %arrayidx9.us.i8.3.1, align 1, !tbaa !2
  %add.ptr.us.i12.1 = getelementptr inbounds i8, i8* %add.ptr.us.i12, i32 %i_stride_pix1
  %add.ptr12.us.i.1 = getelementptr inbounds i8, i8* %add.ptr12.us.i, i32 %i_stride_pix2
  %add.ptr13.us.i.1 = getelementptr inbounds i8, i8* %add.ptr13.us.i, i32 %i_stride_pix3
  %64 = load i8, i8* %add.ptr12.us.i.1, align 1, !tbaa !2
  %conv.us.i4.243 = zext i8 %64 to i32
  %mul.us.i.244 = mul nsw i32 %conv.us.i4.243, %weight
  %65 = load i8, i8* %add.ptr13.us.i.1, align 1, !tbaa !2
  %conv6.us.i6.245 = zext i8 %65 to i32
  %mul7.us.i.246 = mul nsw i32 %sub.i, %conv6.us.i6.245
  %add.us.i7.247 = add i32 %mul.us.i.244, 32
  %add8.us.i.248 = add i32 %add.us.i7.247, %mul7.us.i.246
  %shr.us.i.249 = ashr i32 %add8.us.i.248, 6
  %tobool.i.us.i.250 = icmp ugt i32 %shr.us.i.249, 255
  %sub.i.us.i.251 = sub nsw i32 0, %shr.us.i.249
  %shr.i.us.i.252 = ashr i32 %sub.i.us.i.251, 31
  %cond.i.us.i.253 = select i1 %tobool.i.us.i.250, i32 %shr.i.us.i.252, i32 %shr.us.i.249
  %conv.i.us.i.254 = trunc i32 %cond.i.us.i.253 to i8
  store i8 %conv.i.us.i.254, i8* %add.ptr.us.i12.1, align 1, !tbaa !2
  %arrayidx.us.i3.1.2 = getelementptr inbounds i8, i8* %add.ptr12.us.i.1, i32 1
  %66 = load i8, i8* %arrayidx.us.i3.1.2, align 1, !tbaa !2
  %conv.us.i4.1.2 = zext i8 %66 to i32
  %mul.us.i.1.2 = mul nsw i32 %conv.us.i4.1.2, %weight
  %arrayidx5.us.i5.1.2 = getelementptr inbounds i8, i8* %add.ptr13.us.i.1, i32 1
  %67 = load i8, i8* %arrayidx5.us.i5.1.2, align 1, !tbaa !2
  %conv6.us.i6.1.2 = zext i8 %67 to i32
  %mul7.us.i.1.2 = mul nsw i32 %sub.i, %conv6.us.i6.1.2
  %add.us.i7.1.2 = add i32 %mul.us.i.1.2, 32
  %add8.us.i.1.2 = add i32 %add.us.i7.1.2, %mul7.us.i.1.2
  %shr.us.i.1.2 = ashr i32 %add8.us.i.1.2, 6
  %tobool.i.us.i.1.2 = icmp ugt i32 %shr.us.i.1.2, 255
  %sub.i.us.i.1.2 = sub nsw i32 0, %shr.us.i.1.2
  %shr.i.us.i.1.2 = ashr i32 %sub.i.us.i.1.2, 31
  %cond.i.us.i.1.2 = select i1 %tobool.i.us.i.1.2, i32 %shr.i.us.i.1.2, i32 %shr.us.i.1.2
  %conv.i.us.i.1.2 = trunc i32 %cond.i.us.i.1.2 to i8
  %arrayidx9.us.i8.1.2 = getelementptr inbounds i8, i8* %add.ptr.us.i12.1, i32 1
  store i8 %conv.i.us.i.1.2, i8* %arrayidx9.us.i8.1.2, align 1, !tbaa !2
  %arrayidx.us.i3.2.2 = getelementptr inbounds i8, i8* %add.ptr12.us.i.1, i32 2
  %68 = load i8, i8* %arrayidx.us.i3.2.2, align 1, !tbaa !2
  %conv.us.i4.2.2 = zext i8 %68 to i32
  %mul.us.i.2.2 = mul nsw i32 %conv.us.i4.2.2, %weight
  %arrayidx5.us.i5.2.2 = getelementptr inbounds i8, i8* %add.ptr13.us.i.1, i32 2
  %69 = load i8, i8* %arrayidx5.us.i5.2.2, align 1, !tbaa !2
  %conv6.us.i6.2.2 = zext i8 %69 to i32
  %mul7.us.i.2.2 = mul nsw i32 %sub.i, %conv6.us.i6.2.2
  %add.us.i7.2.2 = add i32 %mul.us.i.2.2, 32
  %add8.us.i.2.2 = add i32 %add.us.i7.2.2, %mul7.us.i.2.2
  %shr.us.i.2.2 = ashr i32 %add8.us.i.2.2, 6
  %tobool.i.us.i.2.2 = icmp ugt i32 %shr.us.i.2.2, 255
  %sub.i.us.i.2.2 = sub nsw i32 0, %shr.us.i.2.2
  %shr.i.us.i.2.2 = ashr i32 %sub.i.us.i.2.2, 31
  %cond.i.us.i.2.2 = select i1 %tobool.i.us.i.2.2, i32 %shr.i.us.i.2.2, i32 %shr.us.i.2.2
  %conv.i.us.i.2.2 = trunc i32 %cond.i.us.i.2.2 to i8
  %arrayidx9.us.i8.2.2 = getelementptr inbounds i8, i8* %add.ptr.us.i12.1, i32 2
  store i8 %conv.i.us.i.2.2, i8* %arrayidx9.us.i8.2.2, align 1, !tbaa !2
  %arrayidx.us.i3.3.2 = getelementptr inbounds i8, i8* %add.ptr12.us.i.1, i32 3
  %70 = load i8, i8* %arrayidx.us.i3.3.2, align 1, !tbaa !2
  %conv.us.i4.3.2 = zext i8 %70 to i32
  %mul.us.i.3.2 = mul nsw i32 %conv.us.i4.3.2, %weight
  %arrayidx5.us.i5.3.2 = getelementptr inbounds i8, i8* %add.ptr13.us.i.1, i32 3
  %71 = load i8, i8* %arrayidx5.us.i5.3.2, align 1, !tbaa !2
  %conv6.us.i6.3.2 = zext i8 %71 to i32
  %mul7.us.i.3.2 = mul nsw i32 %sub.i, %conv6.us.i6.3.2
  %add.us.i7.3.2 = add i32 %mul.us.i.3.2, 32
  %add8.us.i.3.2 = add i32 %add.us.i7.3.2, %mul7.us.i.3.2
  %shr.us.i.3.2 = ashr i32 %add8.us.i.3.2, 6
  %tobool.i.us.i.3.2 = icmp ugt i32 %shr.us.i.3.2, 255
  %sub.i.us.i.3.2 = sub nsw i32 0, %shr.us.i.3.2
  %shr.i.us.i.3.2 = ashr i32 %sub.i.us.i.3.2, 31
  %cond.i.us.i.3.2 = select i1 %tobool.i.us.i.3.2, i32 %shr.i.us.i.3.2, i32 %shr.us.i.3.2
  %conv.i.us.i.3.2 = trunc i32 %cond.i.us.i.3.2 to i8
  %arrayidx9.us.i8.3.2 = getelementptr inbounds i8, i8* %add.ptr.us.i12.1, i32 3
  store i8 %conv.i.us.i.3.2, i8* %arrayidx9.us.i8.3.2, align 1, !tbaa !2
  %add.ptr.us.i12.2 = getelementptr inbounds i8, i8* %add.ptr.us.i12.1, i32 %i_stride_pix1
  %add.ptr12.us.i.2 = getelementptr inbounds i8, i8* %add.ptr12.us.i.1, i32 %i_stride_pix2
  %add.ptr13.us.i.2 = getelementptr inbounds i8, i8* %add.ptr13.us.i.1, i32 %i_stride_pix3
  %72 = load i8, i8* %add.ptr12.us.i.2, align 1, !tbaa !2
  %conv.us.i4.355 = zext i8 %72 to i32
  %mul.us.i.356 = mul nsw i32 %conv.us.i4.355, %weight
  %73 = load i8, i8* %add.ptr13.us.i.2, align 1, !tbaa !2
  %conv6.us.i6.357 = zext i8 %73 to i32
  %mul7.us.i.358 = mul nsw i32 %sub.i, %conv6.us.i6.357
  %add.us.i7.359 = add i32 %mul.us.i.356, 32
  %add8.us.i.360 = add i32 %add.us.i7.359, %mul7.us.i.358
  %shr.us.i.361 = ashr i32 %add8.us.i.360, 6
  %tobool.i.us.i.362 = icmp ugt i32 %shr.us.i.361, 255
  %sub.i.us.i.363 = sub nsw i32 0, %shr.us.i.361
  %shr.i.us.i.364 = ashr i32 %sub.i.us.i.363, 31
  %cond.i.us.i.365 = select i1 %tobool.i.us.i.362, i32 %shr.i.us.i.364, i32 %shr.us.i.361
  %conv.i.us.i.366 = trunc i32 %cond.i.us.i.365 to i8
  store i8 %conv.i.us.i.366, i8* %add.ptr.us.i12.2, align 1, !tbaa !2
  %arrayidx.us.i3.1.3 = getelementptr inbounds i8, i8* %add.ptr12.us.i.2, i32 1
  %74 = load i8, i8* %arrayidx.us.i3.1.3, align 1, !tbaa !2
  %conv.us.i4.1.3 = zext i8 %74 to i32
  %mul.us.i.1.3 = mul nsw i32 %conv.us.i4.1.3, %weight
  %arrayidx5.us.i5.1.3 = getelementptr inbounds i8, i8* %add.ptr13.us.i.2, i32 1
  %75 = load i8, i8* %arrayidx5.us.i5.1.3, align 1, !tbaa !2
  %conv6.us.i6.1.3 = zext i8 %75 to i32
  %mul7.us.i.1.3 = mul nsw i32 %sub.i, %conv6.us.i6.1.3
  %add.us.i7.1.3 = add i32 %mul.us.i.1.3, 32
  %add8.us.i.1.3 = add i32 %add.us.i7.1.3, %mul7.us.i.1.3
  %shr.us.i.1.3 = ashr i32 %add8.us.i.1.3, 6
  %tobool.i.us.i.1.3 = icmp ugt i32 %shr.us.i.1.3, 255
  %sub.i.us.i.1.3 = sub nsw i32 0, %shr.us.i.1.3
  %shr.i.us.i.1.3 = ashr i32 %sub.i.us.i.1.3, 31
  %cond.i.us.i.1.3 = select i1 %tobool.i.us.i.1.3, i32 %shr.i.us.i.1.3, i32 %shr.us.i.1.3
  %conv.i.us.i.1.3 = trunc i32 %cond.i.us.i.1.3 to i8
  %arrayidx9.us.i8.1.3 = getelementptr inbounds i8, i8* %add.ptr.us.i12.2, i32 1
  store i8 %conv.i.us.i.1.3, i8* %arrayidx9.us.i8.1.3, align 1, !tbaa !2
  %arrayidx.us.i3.2.3 = getelementptr inbounds i8, i8* %add.ptr12.us.i.2, i32 2
  %76 = load i8, i8* %arrayidx.us.i3.2.3, align 1, !tbaa !2
  %conv.us.i4.2.3 = zext i8 %76 to i32
  %mul.us.i.2.3 = mul nsw i32 %conv.us.i4.2.3, %weight
  %arrayidx5.us.i5.2.3 = getelementptr inbounds i8, i8* %add.ptr13.us.i.2, i32 2
  %77 = load i8, i8* %arrayidx5.us.i5.2.3, align 1, !tbaa !2
  %conv6.us.i6.2.3 = zext i8 %77 to i32
  %mul7.us.i.2.3 = mul nsw i32 %sub.i, %conv6.us.i6.2.3
  %add.us.i7.2.3 = add i32 %mul.us.i.2.3, 32
  %add8.us.i.2.3 = add i32 %add.us.i7.2.3, %mul7.us.i.2.3
  %shr.us.i.2.3 = ashr i32 %add8.us.i.2.3, 6
  %tobool.i.us.i.2.3 = icmp ugt i32 %shr.us.i.2.3, 255
  %sub.i.us.i.2.3 = sub nsw i32 0, %shr.us.i.2.3
  %shr.i.us.i.2.3 = ashr i32 %sub.i.us.i.2.3, 31
  %cond.i.us.i.2.3 = select i1 %tobool.i.us.i.2.3, i32 %shr.i.us.i.2.3, i32 %shr.us.i.2.3
  %conv.i.us.i.2.3 = trunc i32 %cond.i.us.i.2.3 to i8
  %arrayidx9.us.i8.2.3 = getelementptr inbounds i8, i8* %add.ptr.us.i12.2, i32 2
  store i8 %conv.i.us.i.2.3, i8* %arrayidx9.us.i8.2.3, align 1, !tbaa !2
  %arrayidx.us.i3.3.3 = getelementptr inbounds i8, i8* %add.ptr12.us.i.2, i32 3
  %78 = load i8, i8* %arrayidx.us.i3.3.3, align 1, !tbaa !2
  %conv.us.i4.3.3 = zext i8 %78 to i32
  %mul.us.i.3.3 = mul nsw i32 %conv.us.i4.3.3, %weight
  %arrayidx5.us.i5.3.3 = getelementptr inbounds i8, i8* %add.ptr13.us.i.2, i32 3
  %79 = load i8, i8* %arrayidx5.us.i5.3.3, align 1, !tbaa !2
  %conv6.us.i6.3.3 = zext i8 %79 to i32
  %mul7.us.i.3.3 = mul nsw i32 %sub.i, %conv6.us.i6.3.3
  %add.us.i7.3.3 = add i32 %mul.us.i.3.3, 32
  %add8.us.i.3.3 = add i32 %add.us.i7.3.3, %mul7.us.i.3.3
  %shr.us.i.3.3 = ashr i32 %add8.us.i.3.3, 6
  %tobool.i.us.i.3.3 = icmp ugt i32 %shr.us.i.3.3, 255
  %sub.i.us.i.3.3 = sub nsw i32 0, %shr.us.i.3.3
  %shr.i.us.i.3.3 = ashr i32 %sub.i.us.i.3.3, 31
  %cond.i.us.i.3.3 = select i1 %tobool.i.us.i.3.3, i32 %shr.i.us.i.3.3, i32 %shr.us.i.3.3
  br label %if.end

if.end:                                           ; preds = %if.else, %for.cond1.preheader.us.i.preheader
  %cond.i.us.i.3.3.sink = phi i32 [ %cond.i.us.i.3.3, %if.else ], [ %47, %for.cond1.preheader.us.i.preheader ]
  %80 = phi i8* [ %add.ptr.us.i12, %if.else ], [ %add.ptr11.us.i, %for.cond1.preheader.us.i.preheader ]
  %81 = getelementptr inbounds i8, i8* %80, i32 %i_stride_pix1
  %82 = getelementptr inbounds i8, i8* %81, i32 %i_stride_pix1
  %conv.i.us.i.3.3 = trunc i32 %cond.i.us.i.3.3.sink to i8
  %arrayidx9.us.i8.3.3 = getelementptr inbounds i8, i8* %82, i32 3
  store i8 %conv.i.us.i.3.3, i8* %arrayidx9.us.i8.3.3, align 1, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @pixel_avg_4x2(i8* nocapture %pix1, i32 %i_stride_pix1, i8* nocapture readonly %pix2, i32 %i_stride_pix2, i8* nocapture readonly %pix3, i32 %i_stride_pix3, i32 %weight) #2 {
entry:
  %cmp = icmp eq i32 %weight, 32
  br i1 %cmp, label %for.cond1.preheader.us.i.preheader, label %if.else

for.cond1.preheader.us.i.preheader:               ; preds = %entry
  %0 = load i8, i8* %pix2, align 1, !tbaa !2
  %conv.us.i = zext i8 %0 to i32
  %1 = load i8, i8* %pix3, align 1, !tbaa !2
  %conv6.us.i = zext i8 %1 to i32
  %add.us.i = add nuw nsw i32 %conv.us.i, 1
  %add7.us.i = add nuw nsw i32 %add.us.i, %conv6.us.i
  %2 = lshr i32 %add7.us.i, 1
  %conv8.us.i = trunc i32 %2 to i8
  store i8 %conv8.us.i, i8* %pix1, align 1, !tbaa !2
  %arrayidx.us.i.1 = getelementptr inbounds i8, i8* %pix2, i32 1
  %3 = load i8, i8* %arrayidx.us.i.1, align 1, !tbaa !2
  %conv.us.i.1 = zext i8 %3 to i32
  %arrayidx5.us.i.1 = getelementptr inbounds i8, i8* %pix3, i32 1
  %4 = load i8, i8* %arrayidx5.us.i.1, align 1, !tbaa !2
  %conv6.us.i.1 = zext i8 %4 to i32
  %add.us.i.1 = add nuw nsw i32 %conv.us.i.1, 1
  %add7.us.i.1 = add nuw nsw i32 %add.us.i.1, %conv6.us.i.1
  %5 = lshr i32 %add7.us.i.1, 1
  %conv8.us.i.1 = trunc i32 %5 to i8
  %arrayidx9.us.i.1 = getelementptr inbounds i8, i8* %pix1, i32 1
  store i8 %conv8.us.i.1, i8* %arrayidx9.us.i.1, align 1, !tbaa !2
  %arrayidx.us.i.2 = getelementptr inbounds i8, i8* %pix2, i32 2
  %6 = load i8, i8* %arrayidx.us.i.2, align 1, !tbaa !2
  %conv.us.i.2 = zext i8 %6 to i32
  %arrayidx5.us.i.2 = getelementptr inbounds i8, i8* %pix3, i32 2
  %7 = load i8, i8* %arrayidx5.us.i.2, align 1, !tbaa !2
  %conv6.us.i.2 = zext i8 %7 to i32
  %add.us.i.2 = add nuw nsw i32 %conv.us.i.2, 1
  %add7.us.i.2 = add nuw nsw i32 %add.us.i.2, %conv6.us.i.2
  %8 = lshr i32 %add7.us.i.2, 1
  %conv8.us.i.2 = trunc i32 %8 to i8
  %arrayidx9.us.i.2 = getelementptr inbounds i8, i8* %pix1, i32 2
  store i8 %conv8.us.i.2, i8* %arrayidx9.us.i.2, align 1, !tbaa !2
  %arrayidx.us.i.3 = getelementptr inbounds i8, i8* %pix2, i32 3
  %9 = load i8, i8* %arrayidx.us.i.3, align 1, !tbaa !2
  %conv.us.i.3 = zext i8 %9 to i32
  %arrayidx5.us.i.3 = getelementptr inbounds i8, i8* %pix3, i32 3
  %10 = load i8, i8* %arrayidx5.us.i.3, align 1, !tbaa !2
  %conv6.us.i.3 = zext i8 %10 to i32
  %add.us.i.3 = add nuw nsw i32 %conv.us.i.3, 1
  %add7.us.i.3 = add nuw nsw i32 %add.us.i.3, %conv6.us.i.3
  %11 = lshr i32 %add7.us.i.3, 1
  %conv8.us.i.3 = trunc i32 %11 to i8
  %arrayidx9.us.i.3 = getelementptr inbounds i8, i8* %pix1, i32 3
  store i8 %conv8.us.i.3, i8* %arrayidx9.us.i.3, align 1, !tbaa !2
  %add.ptr.us.i = getelementptr inbounds i8, i8* %pix2, i32 %i_stride_pix2
  %add.ptr10.us.i = getelementptr inbounds i8, i8* %pix3, i32 %i_stride_pix3
  %add.ptr11.us.i = getelementptr inbounds i8, i8* %pix1, i32 %i_stride_pix1
  %12 = load i8, i8* %add.ptr.us.i, align 1, !tbaa !2
  %conv.us.i.116 = zext i8 %12 to i32
  %13 = load i8, i8* %add.ptr10.us.i, align 1, !tbaa !2
  %conv6.us.i.117 = zext i8 %13 to i32
  %add.us.i.118 = add nuw nsw i32 %conv.us.i.116, 1
  %add7.us.i.119 = add nuw nsw i32 %add.us.i.118, %conv6.us.i.117
  %14 = lshr i32 %add7.us.i.119, 1
  %conv8.us.i.120 = trunc i32 %14 to i8
  store i8 %conv8.us.i.120, i8* %add.ptr11.us.i, align 1, !tbaa !2
  %arrayidx.us.i.1.1 = getelementptr inbounds i8, i8* %add.ptr.us.i, i32 1
  %15 = load i8, i8* %arrayidx.us.i.1.1, align 1, !tbaa !2
  %conv.us.i.1.1 = zext i8 %15 to i32
  %arrayidx5.us.i.1.1 = getelementptr inbounds i8, i8* %add.ptr10.us.i, i32 1
  %16 = load i8, i8* %arrayidx5.us.i.1.1, align 1, !tbaa !2
  %conv6.us.i.1.1 = zext i8 %16 to i32
  %add.us.i.1.1 = add nuw nsw i32 %conv.us.i.1.1, 1
  %add7.us.i.1.1 = add nuw nsw i32 %add.us.i.1.1, %conv6.us.i.1.1
  %17 = lshr i32 %add7.us.i.1.1, 1
  %conv8.us.i.1.1 = trunc i32 %17 to i8
  %arrayidx9.us.i.1.1 = getelementptr inbounds i8, i8* %add.ptr11.us.i, i32 1
  store i8 %conv8.us.i.1.1, i8* %arrayidx9.us.i.1.1, align 1, !tbaa !2
  %arrayidx.us.i.2.1 = getelementptr inbounds i8, i8* %add.ptr.us.i, i32 2
  %18 = load i8, i8* %arrayidx.us.i.2.1, align 1, !tbaa !2
  %conv.us.i.2.1 = zext i8 %18 to i32
  %arrayidx5.us.i.2.1 = getelementptr inbounds i8, i8* %add.ptr10.us.i, i32 2
  %19 = load i8, i8* %arrayidx5.us.i.2.1, align 1, !tbaa !2
  %conv6.us.i.2.1 = zext i8 %19 to i32
  %add.us.i.2.1 = add nuw nsw i32 %conv.us.i.2.1, 1
  %add7.us.i.2.1 = add nuw nsw i32 %add.us.i.2.1, %conv6.us.i.2.1
  %20 = lshr i32 %add7.us.i.2.1, 1
  %conv8.us.i.2.1 = trunc i32 %20 to i8
  %arrayidx9.us.i.2.1 = getelementptr inbounds i8, i8* %add.ptr11.us.i, i32 2
  store i8 %conv8.us.i.2.1, i8* %arrayidx9.us.i.2.1, align 1, !tbaa !2
  %arrayidx.us.i.3.1 = getelementptr inbounds i8, i8* %add.ptr.us.i, i32 3
  %21 = load i8, i8* %arrayidx.us.i.3.1, align 1, !tbaa !2
  %conv.us.i.3.1 = zext i8 %21 to i32
  %arrayidx5.us.i.3.1 = getelementptr inbounds i8, i8* %add.ptr10.us.i, i32 3
  %22 = load i8, i8* %arrayidx5.us.i.3.1, align 1, !tbaa !2
  %conv6.us.i.3.1 = zext i8 %22 to i32
  %add.us.i.3.1 = add nuw nsw i32 %conv.us.i.3.1, 1
  %add7.us.i.3.1 = add nuw nsw i32 %add.us.i.3.1, %conv6.us.i.3.1
  %23 = lshr i32 %add7.us.i.3.1, 1
  br label %if.end

if.else:                                          ; preds = %entry
  %sub.i = sub nsw i32 64, %weight
  %24 = load i8, i8* %pix2, align 1, !tbaa !2
  %conv.us.i4 = zext i8 %24 to i32
  %mul.us.i = mul nsw i32 %conv.us.i4, %weight
  %25 = load i8, i8* %pix3, align 1, !tbaa !2
  %conv6.us.i6 = zext i8 %25 to i32
  %mul7.us.i = mul nsw i32 %sub.i, %conv6.us.i6
  %add.us.i7 = add i32 %mul.us.i, 32
  %add8.us.i = add i32 %add.us.i7, %mul7.us.i
  %shr.us.i = ashr i32 %add8.us.i, 6
  %tobool.i.us.i = icmp ugt i32 %shr.us.i, 255
  %sub.i.us.i = sub nsw i32 0, %shr.us.i
  %shr.i.us.i = ashr i32 %sub.i.us.i, 31
  %cond.i.us.i = select i1 %tobool.i.us.i, i32 %shr.i.us.i, i32 %shr.us.i
  %conv.i.us.i = trunc i32 %cond.i.us.i to i8
  store i8 %conv.i.us.i, i8* %pix1, align 1, !tbaa !2
  %arrayidx.us.i3.1 = getelementptr inbounds i8, i8* %pix2, i32 1
  %26 = load i8, i8* %arrayidx.us.i3.1, align 1, !tbaa !2
  %conv.us.i4.1 = zext i8 %26 to i32
  %mul.us.i.1 = mul nsw i32 %conv.us.i4.1, %weight
  %arrayidx5.us.i5.1 = getelementptr inbounds i8, i8* %pix3, i32 1
  %27 = load i8, i8* %arrayidx5.us.i5.1, align 1, !tbaa !2
  %conv6.us.i6.1 = zext i8 %27 to i32
  %mul7.us.i.1 = mul nsw i32 %sub.i, %conv6.us.i6.1
  %add.us.i7.1 = add i32 %mul.us.i.1, 32
  %add8.us.i.1 = add i32 %add.us.i7.1, %mul7.us.i.1
  %shr.us.i.1 = ashr i32 %add8.us.i.1, 6
  %tobool.i.us.i.1 = icmp ugt i32 %shr.us.i.1, 255
  %sub.i.us.i.1 = sub nsw i32 0, %shr.us.i.1
  %shr.i.us.i.1 = ashr i32 %sub.i.us.i.1, 31
  %cond.i.us.i.1 = select i1 %tobool.i.us.i.1, i32 %shr.i.us.i.1, i32 %shr.us.i.1
  %conv.i.us.i.1 = trunc i32 %cond.i.us.i.1 to i8
  %arrayidx9.us.i8.1 = getelementptr inbounds i8, i8* %pix1, i32 1
  store i8 %conv.i.us.i.1, i8* %arrayidx9.us.i8.1, align 1, !tbaa !2
  %arrayidx.us.i3.2 = getelementptr inbounds i8, i8* %pix2, i32 2
  %28 = load i8, i8* %arrayidx.us.i3.2, align 1, !tbaa !2
  %conv.us.i4.2 = zext i8 %28 to i32
  %mul.us.i.2 = mul nsw i32 %conv.us.i4.2, %weight
  %arrayidx5.us.i5.2 = getelementptr inbounds i8, i8* %pix3, i32 2
  %29 = load i8, i8* %arrayidx5.us.i5.2, align 1, !tbaa !2
  %conv6.us.i6.2 = zext i8 %29 to i32
  %mul7.us.i.2 = mul nsw i32 %sub.i, %conv6.us.i6.2
  %add.us.i7.2 = add i32 %mul.us.i.2, 32
  %add8.us.i.2 = add i32 %add.us.i7.2, %mul7.us.i.2
  %shr.us.i.2 = ashr i32 %add8.us.i.2, 6
  %tobool.i.us.i.2 = icmp ugt i32 %shr.us.i.2, 255
  %sub.i.us.i.2 = sub nsw i32 0, %shr.us.i.2
  %shr.i.us.i.2 = ashr i32 %sub.i.us.i.2, 31
  %cond.i.us.i.2 = select i1 %tobool.i.us.i.2, i32 %shr.i.us.i.2, i32 %shr.us.i.2
  %conv.i.us.i.2 = trunc i32 %cond.i.us.i.2 to i8
  %arrayidx9.us.i8.2 = getelementptr inbounds i8, i8* %pix1, i32 2
  store i8 %conv.i.us.i.2, i8* %arrayidx9.us.i8.2, align 1, !tbaa !2
  %arrayidx.us.i3.3 = getelementptr inbounds i8, i8* %pix2, i32 3
  %30 = load i8, i8* %arrayidx.us.i3.3, align 1, !tbaa !2
  %conv.us.i4.3 = zext i8 %30 to i32
  %mul.us.i.3 = mul nsw i32 %conv.us.i4.3, %weight
  %arrayidx5.us.i5.3 = getelementptr inbounds i8, i8* %pix3, i32 3
  %31 = load i8, i8* %arrayidx5.us.i5.3, align 1, !tbaa !2
  %conv6.us.i6.3 = zext i8 %31 to i32
  %mul7.us.i.3 = mul nsw i32 %sub.i, %conv6.us.i6.3
  %add.us.i7.3 = add i32 %mul.us.i.3, 32
  %add8.us.i.3 = add i32 %add.us.i7.3, %mul7.us.i.3
  %shr.us.i.3 = ashr i32 %add8.us.i.3, 6
  %tobool.i.us.i.3 = icmp ugt i32 %shr.us.i.3, 255
  %sub.i.us.i.3 = sub nsw i32 0, %shr.us.i.3
  %shr.i.us.i.3 = ashr i32 %sub.i.us.i.3, 31
  %cond.i.us.i.3 = select i1 %tobool.i.us.i.3, i32 %shr.i.us.i.3, i32 %shr.us.i.3
  %conv.i.us.i.3 = trunc i32 %cond.i.us.i.3 to i8
  %arrayidx9.us.i8.3 = getelementptr inbounds i8, i8* %pix1, i32 3
  store i8 %conv.i.us.i.3, i8* %arrayidx9.us.i8.3, align 1, !tbaa !2
  %add.ptr.us.i12 = getelementptr inbounds i8, i8* %pix1, i32 %i_stride_pix1
  %add.ptr12.us.i = getelementptr inbounds i8, i8* %pix2, i32 %i_stride_pix2
  %add.ptr13.us.i = getelementptr inbounds i8, i8* %pix3, i32 %i_stride_pix3
  %32 = load i8, i8* %add.ptr12.us.i, align 1, !tbaa !2
  %conv.us.i4.121 = zext i8 %32 to i32
  %mul.us.i.122 = mul nsw i32 %conv.us.i4.121, %weight
  %33 = load i8, i8* %add.ptr13.us.i, align 1, !tbaa !2
  %conv6.us.i6.123 = zext i8 %33 to i32
  %mul7.us.i.124 = mul nsw i32 %sub.i, %conv6.us.i6.123
  %add.us.i7.125 = add i32 %mul.us.i.122, 32
  %add8.us.i.126 = add i32 %add.us.i7.125, %mul7.us.i.124
  %shr.us.i.127 = ashr i32 %add8.us.i.126, 6
  %tobool.i.us.i.128 = icmp ugt i32 %shr.us.i.127, 255
  %sub.i.us.i.129 = sub nsw i32 0, %shr.us.i.127
  %shr.i.us.i.130 = ashr i32 %sub.i.us.i.129, 31
  %cond.i.us.i.131 = select i1 %tobool.i.us.i.128, i32 %shr.i.us.i.130, i32 %shr.us.i.127
  %conv.i.us.i.132 = trunc i32 %cond.i.us.i.131 to i8
  store i8 %conv.i.us.i.132, i8* %add.ptr.us.i12, align 1, !tbaa !2
  %arrayidx.us.i3.1.1 = getelementptr inbounds i8, i8* %add.ptr12.us.i, i32 1
  %34 = load i8, i8* %arrayidx.us.i3.1.1, align 1, !tbaa !2
  %conv.us.i4.1.1 = zext i8 %34 to i32
  %mul.us.i.1.1 = mul nsw i32 %conv.us.i4.1.1, %weight
  %arrayidx5.us.i5.1.1 = getelementptr inbounds i8, i8* %add.ptr13.us.i, i32 1
  %35 = load i8, i8* %arrayidx5.us.i5.1.1, align 1, !tbaa !2
  %conv6.us.i6.1.1 = zext i8 %35 to i32
  %mul7.us.i.1.1 = mul nsw i32 %sub.i, %conv6.us.i6.1.1
  %add.us.i7.1.1 = add i32 %mul.us.i.1.1, 32
  %add8.us.i.1.1 = add i32 %add.us.i7.1.1, %mul7.us.i.1.1
  %shr.us.i.1.1 = ashr i32 %add8.us.i.1.1, 6
  %tobool.i.us.i.1.1 = icmp ugt i32 %shr.us.i.1.1, 255
  %sub.i.us.i.1.1 = sub nsw i32 0, %shr.us.i.1.1
  %shr.i.us.i.1.1 = ashr i32 %sub.i.us.i.1.1, 31
  %cond.i.us.i.1.1 = select i1 %tobool.i.us.i.1.1, i32 %shr.i.us.i.1.1, i32 %shr.us.i.1.1
  %conv.i.us.i.1.1 = trunc i32 %cond.i.us.i.1.1 to i8
  %arrayidx9.us.i8.1.1 = getelementptr inbounds i8, i8* %add.ptr.us.i12, i32 1
  store i8 %conv.i.us.i.1.1, i8* %arrayidx9.us.i8.1.1, align 1, !tbaa !2
  %arrayidx.us.i3.2.1 = getelementptr inbounds i8, i8* %add.ptr12.us.i, i32 2
  %36 = load i8, i8* %arrayidx.us.i3.2.1, align 1, !tbaa !2
  %conv.us.i4.2.1 = zext i8 %36 to i32
  %mul.us.i.2.1 = mul nsw i32 %conv.us.i4.2.1, %weight
  %arrayidx5.us.i5.2.1 = getelementptr inbounds i8, i8* %add.ptr13.us.i, i32 2
  %37 = load i8, i8* %arrayidx5.us.i5.2.1, align 1, !tbaa !2
  %conv6.us.i6.2.1 = zext i8 %37 to i32
  %mul7.us.i.2.1 = mul nsw i32 %sub.i, %conv6.us.i6.2.1
  %add.us.i7.2.1 = add i32 %mul.us.i.2.1, 32
  %add8.us.i.2.1 = add i32 %add.us.i7.2.1, %mul7.us.i.2.1
  %shr.us.i.2.1 = ashr i32 %add8.us.i.2.1, 6
  %tobool.i.us.i.2.1 = icmp ugt i32 %shr.us.i.2.1, 255
  %sub.i.us.i.2.1 = sub nsw i32 0, %shr.us.i.2.1
  %shr.i.us.i.2.1 = ashr i32 %sub.i.us.i.2.1, 31
  %cond.i.us.i.2.1 = select i1 %tobool.i.us.i.2.1, i32 %shr.i.us.i.2.1, i32 %shr.us.i.2.1
  %conv.i.us.i.2.1 = trunc i32 %cond.i.us.i.2.1 to i8
  %arrayidx9.us.i8.2.1 = getelementptr inbounds i8, i8* %add.ptr.us.i12, i32 2
  store i8 %conv.i.us.i.2.1, i8* %arrayidx9.us.i8.2.1, align 1, !tbaa !2
  %arrayidx.us.i3.3.1 = getelementptr inbounds i8, i8* %add.ptr12.us.i, i32 3
  %38 = load i8, i8* %arrayidx.us.i3.3.1, align 1, !tbaa !2
  %conv.us.i4.3.1 = zext i8 %38 to i32
  %mul.us.i.3.1 = mul nsw i32 %conv.us.i4.3.1, %weight
  %arrayidx5.us.i5.3.1 = getelementptr inbounds i8, i8* %add.ptr13.us.i, i32 3
  %39 = load i8, i8* %arrayidx5.us.i5.3.1, align 1, !tbaa !2
  %conv6.us.i6.3.1 = zext i8 %39 to i32
  %mul7.us.i.3.1 = mul nsw i32 %sub.i, %conv6.us.i6.3.1
  %add.us.i7.3.1 = add i32 %mul.us.i.3.1, 32
  %add8.us.i.3.1 = add i32 %add.us.i7.3.1, %mul7.us.i.3.1
  %shr.us.i.3.1 = ashr i32 %add8.us.i.3.1, 6
  %tobool.i.us.i.3.1 = icmp ugt i32 %shr.us.i.3.1, 255
  %sub.i.us.i.3.1 = sub nsw i32 0, %shr.us.i.3.1
  %shr.i.us.i.3.1 = ashr i32 %sub.i.us.i.3.1, 31
  %cond.i.us.i.3.1 = select i1 %tobool.i.us.i.3.1, i32 %shr.i.us.i.3.1, i32 %shr.us.i.3.1
  br label %if.end

if.end:                                           ; preds = %if.else, %for.cond1.preheader.us.i.preheader
  %cond.i.us.i.3.1.sink = phi i32 [ %cond.i.us.i.3.1, %if.else ], [ %23, %for.cond1.preheader.us.i.preheader ]
  %40 = getelementptr inbounds i8, i8* %pix1, i32 %i_stride_pix1
  %conv.i.us.i.3.1 = trunc i32 %cond.i.us.i.3.1.sink to i8
  %arrayidx9.us.i8.3.1 = getelementptr inbounds i8, i8* %40, i32 3
  store i8 %conv.i.us.i.3.1, i8* %arrayidx9.us.i8.3.1, align 1, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @pixel_avg_2x8(i8* nocapture %pix1, i32 %i_stride_pix1, i8* nocapture readonly %pix2, i32 %i_stride_pix2, i8* nocapture readonly %pix3, i32 %i_stride_pix3, i32 %weight) #2 {
entry:
  %cmp = icmp eq i32 %weight, 32
  br i1 %cmp, label %for.cond1.preheader.us.i.preheader, label %if.else

for.cond1.preheader.us.i.preheader:               ; preds = %entry
  %0 = load i8, i8* %pix2, align 1, !tbaa !2
  %conv.us.i = zext i8 %0 to i32
  %1 = load i8, i8* %pix3, align 1, !tbaa !2
  %conv6.us.i = zext i8 %1 to i32
  %add.us.i = add nuw nsw i32 %conv.us.i, 1
  %add7.us.i = add nuw nsw i32 %add.us.i, %conv6.us.i
  %2 = lshr i32 %add7.us.i, 1
  %conv8.us.i = trunc i32 %2 to i8
  store i8 %conv8.us.i, i8* %pix1, align 1, !tbaa !2
  %arrayidx.us.i.1 = getelementptr inbounds i8, i8* %pix2, i32 1
  %3 = load i8, i8* %arrayidx.us.i.1, align 1, !tbaa !2
  %conv.us.i.1 = zext i8 %3 to i32
  %arrayidx5.us.i.1 = getelementptr inbounds i8, i8* %pix3, i32 1
  %4 = load i8, i8* %arrayidx5.us.i.1, align 1, !tbaa !2
  %conv6.us.i.1 = zext i8 %4 to i32
  %add.us.i.1 = add nuw nsw i32 %conv.us.i.1, 1
  %add7.us.i.1 = add nuw nsw i32 %add.us.i.1, %conv6.us.i.1
  %5 = lshr i32 %add7.us.i.1, 1
  %conv8.us.i.1 = trunc i32 %5 to i8
  %arrayidx9.us.i.1 = getelementptr inbounds i8, i8* %pix1, i32 1
  store i8 %conv8.us.i.1, i8* %arrayidx9.us.i.1, align 1, !tbaa !2
  %add.ptr.us.i = getelementptr inbounds i8, i8* %pix2, i32 %i_stride_pix2
  %add.ptr10.us.i = getelementptr inbounds i8, i8* %pix3, i32 %i_stride_pix3
  %add.ptr11.us.i = getelementptr inbounds i8, i8* %pix1, i32 %i_stride_pix1
  %6 = load i8, i8* %add.ptr.us.i, align 1, !tbaa !2
  %conv.us.i.116 = zext i8 %6 to i32
  %7 = load i8, i8* %add.ptr10.us.i, align 1, !tbaa !2
  %conv6.us.i.117 = zext i8 %7 to i32
  %add.us.i.118 = add nuw nsw i32 %conv.us.i.116, 1
  %add7.us.i.119 = add nuw nsw i32 %add.us.i.118, %conv6.us.i.117
  %8 = lshr i32 %add7.us.i.119, 1
  %conv8.us.i.120 = trunc i32 %8 to i8
  store i8 %conv8.us.i.120, i8* %add.ptr11.us.i, align 1, !tbaa !2
  %arrayidx.us.i.1.1 = getelementptr inbounds i8, i8* %add.ptr.us.i, i32 1
  %9 = load i8, i8* %arrayidx.us.i.1.1, align 1, !tbaa !2
  %conv.us.i.1.1 = zext i8 %9 to i32
  %arrayidx5.us.i.1.1 = getelementptr inbounds i8, i8* %add.ptr10.us.i, i32 1
  %10 = load i8, i8* %arrayidx5.us.i.1.1, align 1, !tbaa !2
  %conv6.us.i.1.1 = zext i8 %10 to i32
  %add.us.i.1.1 = add nuw nsw i32 %conv.us.i.1.1, 1
  %add7.us.i.1.1 = add nuw nsw i32 %add.us.i.1.1, %conv6.us.i.1.1
  %11 = lshr i32 %add7.us.i.1.1, 1
  %conv8.us.i.1.1 = trunc i32 %11 to i8
  %arrayidx9.us.i.1.1 = getelementptr inbounds i8, i8* %add.ptr11.us.i, i32 1
  store i8 %conv8.us.i.1.1, i8* %arrayidx9.us.i.1.1, align 1, !tbaa !2
  %add.ptr.us.i.1 = getelementptr inbounds i8, i8* %add.ptr.us.i, i32 %i_stride_pix2
  %add.ptr10.us.i.1 = getelementptr inbounds i8, i8* %add.ptr10.us.i, i32 %i_stride_pix3
  %add.ptr11.us.i.1 = getelementptr inbounds i8, i8* %add.ptr11.us.i, i32 %i_stride_pix1
  %12 = load i8, i8* %add.ptr.us.i.1, align 1, !tbaa !2
  %conv.us.i.2 = zext i8 %12 to i32
  %13 = load i8, i8* %add.ptr10.us.i.1, align 1, !tbaa !2
  %conv6.us.i.2 = zext i8 %13 to i32
  %add.us.i.2 = add nuw nsw i32 %conv.us.i.2, 1
  %add7.us.i.2 = add nuw nsw i32 %add.us.i.2, %conv6.us.i.2
  %14 = lshr i32 %add7.us.i.2, 1
  %conv8.us.i.2 = trunc i32 %14 to i8
  store i8 %conv8.us.i.2, i8* %add.ptr11.us.i.1, align 1, !tbaa !2
  %arrayidx.us.i.1.2 = getelementptr inbounds i8, i8* %add.ptr.us.i.1, i32 1
  %15 = load i8, i8* %arrayidx.us.i.1.2, align 1, !tbaa !2
  %conv.us.i.1.2 = zext i8 %15 to i32
  %arrayidx5.us.i.1.2 = getelementptr inbounds i8, i8* %add.ptr10.us.i.1, i32 1
  %16 = load i8, i8* %arrayidx5.us.i.1.2, align 1, !tbaa !2
  %conv6.us.i.1.2 = zext i8 %16 to i32
  %add.us.i.1.2 = add nuw nsw i32 %conv.us.i.1.2, 1
  %add7.us.i.1.2 = add nuw nsw i32 %add.us.i.1.2, %conv6.us.i.1.2
  %17 = lshr i32 %add7.us.i.1.2, 1
  %conv8.us.i.1.2 = trunc i32 %17 to i8
  %arrayidx9.us.i.1.2 = getelementptr inbounds i8, i8* %add.ptr11.us.i.1, i32 1
  store i8 %conv8.us.i.1.2, i8* %arrayidx9.us.i.1.2, align 1, !tbaa !2
  %add.ptr.us.i.2 = getelementptr inbounds i8, i8* %add.ptr.us.i.1, i32 %i_stride_pix2
  %add.ptr10.us.i.2 = getelementptr inbounds i8, i8* %add.ptr10.us.i.1, i32 %i_stride_pix3
  %add.ptr11.us.i.2 = getelementptr inbounds i8, i8* %add.ptr11.us.i.1, i32 %i_stride_pix1
  %18 = load i8, i8* %add.ptr.us.i.2, align 1, !tbaa !2
  %conv.us.i.3 = zext i8 %18 to i32
  %19 = load i8, i8* %add.ptr10.us.i.2, align 1, !tbaa !2
  %conv6.us.i.3 = zext i8 %19 to i32
  %add.us.i.3 = add nuw nsw i32 %conv.us.i.3, 1
  %add7.us.i.3 = add nuw nsw i32 %add.us.i.3, %conv6.us.i.3
  %20 = lshr i32 %add7.us.i.3, 1
  %conv8.us.i.3 = trunc i32 %20 to i8
  store i8 %conv8.us.i.3, i8* %add.ptr11.us.i.2, align 1, !tbaa !2
  %arrayidx.us.i.1.3 = getelementptr inbounds i8, i8* %add.ptr.us.i.2, i32 1
  %21 = load i8, i8* %arrayidx.us.i.1.3, align 1, !tbaa !2
  %conv.us.i.1.3 = zext i8 %21 to i32
  %arrayidx5.us.i.1.3 = getelementptr inbounds i8, i8* %add.ptr10.us.i.2, i32 1
  %22 = load i8, i8* %arrayidx5.us.i.1.3, align 1, !tbaa !2
  %conv6.us.i.1.3 = zext i8 %22 to i32
  %add.us.i.1.3 = add nuw nsw i32 %conv.us.i.1.3, 1
  %add7.us.i.1.3 = add nuw nsw i32 %add.us.i.1.3, %conv6.us.i.1.3
  %23 = lshr i32 %add7.us.i.1.3, 1
  %conv8.us.i.1.3 = trunc i32 %23 to i8
  %arrayidx9.us.i.1.3 = getelementptr inbounds i8, i8* %add.ptr11.us.i.2, i32 1
  store i8 %conv8.us.i.1.3, i8* %arrayidx9.us.i.1.3, align 1, !tbaa !2
  %add.ptr.us.i.3 = getelementptr inbounds i8, i8* %add.ptr.us.i.2, i32 %i_stride_pix2
  %add.ptr10.us.i.3 = getelementptr inbounds i8, i8* %add.ptr10.us.i.2, i32 %i_stride_pix3
  %add.ptr11.us.i.3 = getelementptr inbounds i8, i8* %add.ptr11.us.i.2, i32 %i_stride_pix1
  %24 = load i8, i8* %add.ptr.us.i.3, align 1, !tbaa !2
  %conv.us.i.4 = zext i8 %24 to i32
  %25 = load i8, i8* %add.ptr10.us.i.3, align 1, !tbaa !2
  %conv6.us.i.4 = zext i8 %25 to i32
  %add.us.i.4 = add nuw nsw i32 %conv.us.i.4, 1
  %add7.us.i.4 = add nuw nsw i32 %add.us.i.4, %conv6.us.i.4
  %26 = lshr i32 %add7.us.i.4, 1
  %conv8.us.i.4 = trunc i32 %26 to i8
  store i8 %conv8.us.i.4, i8* %add.ptr11.us.i.3, align 1, !tbaa !2
  %arrayidx.us.i.1.4 = getelementptr inbounds i8, i8* %add.ptr.us.i.3, i32 1
  %27 = load i8, i8* %arrayidx.us.i.1.4, align 1, !tbaa !2
  %conv.us.i.1.4 = zext i8 %27 to i32
  %arrayidx5.us.i.1.4 = getelementptr inbounds i8, i8* %add.ptr10.us.i.3, i32 1
  %28 = load i8, i8* %arrayidx5.us.i.1.4, align 1, !tbaa !2
  %conv6.us.i.1.4 = zext i8 %28 to i32
  %add.us.i.1.4 = add nuw nsw i32 %conv.us.i.1.4, 1
  %add7.us.i.1.4 = add nuw nsw i32 %add.us.i.1.4, %conv6.us.i.1.4
  %29 = lshr i32 %add7.us.i.1.4, 1
  %conv8.us.i.1.4 = trunc i32 %29 to i8
  %arrayidx9.us.i.1.4 = getelementptr inbounds i8, i8* %add.ptr11.us.i.3, i32 1
  store i8 %conv8.us.i.1.4, i8* %arrayidx9.us.i.1.4, align 1, !tbaa !2
  %add.ptr.us.i.4 = getelementptr inbounds i8, i8* %add.ptr.us.i.3, i32 %i_stride_pix2
  %add.ptr10.us.i.4 = getelementptr inbounds i8, i8* %add.ptr10.us.i.3, i32 %i_stride_pix3
  %add.ptr11.us.i.4 = getelementptr inbounds i8, i8* %add.ptr11.us.i.3, i32 %i_stride_pix1
  %30 = load i8, i8* %add.ptr.us.i.4, align 1, !tbaa !2
  %conv.us.i.5 = zext i8 %30 to i32
  %31 = load i8, i8* %add.ptr10.us.i.4, align 1, !tbaa !2
  %conv6.us.i.5 = zext i8 %31 to i32
  %add.us.i.5 = add nuw nsw i32 %conv.us.i.5, 1
  %add7.us.i.5 = add nuw nsw i32 %add.us.i.5, %conv6.us.i.5
  %32 = lshr i32 %add7.us.i.5, 1
  %conv8.us.i.5 = trunc i32 %32 to i8
  store i8 %conv8.us.i.5, i8* %add.ptr11.us.i.4, align 1, !tbaa !2
  %arrayidx.us.i.1.5 = getelementptr inbounds i8, i8* %add.ptr.us.i.4, i32 1
  %33 = load i8, i8* %arrayidx.us.i.1.5, align 1, !tbaa !2
  %conv.us.i.1.5 = zext i8 %33 to i32
  %arrayidx5.us.i.1.5 = getelementptr inbounds i8, i8* %add.ptr10.us.i.4, i32 1
  %34 = load i8, i8* %arrayidx5.us.i.1.5, align 1, !tbaa !2
  %conv6.us.i.1.5 = zext i8 %34 to i32
  %add.us.i.1.5 = add nuw nsw i32 %conv.us.i.1.5, 1
  %add7.us.i.1.5 = add nuw nsw i32 %add.us.i.1.5, %conv6.us.i.1.5
  %35 = lshr i32 %add7.us.i.1.5, 1
  %conv8.us.i.1.5 = trunc i32 %35 to i8
  %arrayidx9.us.i.1.5 = getelementptr inbounds i8, i8* %add.ptr11.us.i.4, i32 1
  store i8 %conv8.us.i.1.5, i8* %arrayidx9.us.i.1.5, align 1, !tbaa !2
  %add.ptr.us.i.5 = getelementptr inbounds i8, i8* %add.ptr.us.i.4, i32 %i_stride_pix2
  %add.ptr10.us.i.5 = getelementptr inbounds i8, i8* %add.ptr10.us.i.4, i32 %i_stride_pix3
  %add.ptr11.us.i.5 = getelementptr inbounds i8, i8* %add.ptr11.us.i.4, i32 %i_stride_pix1
  %36 = load i8, i8* %add.ptr.us.i.5, align 1, !tbaa !2
  %conv.us.i.6 = zext i8 %36 to i32
  %37 = load i8, i8* %add.ptr10.us.i.5, align 1, !tbaa !2
  %conv6.us.i.6 = zext i8 %37 to i32
  %add.us.i.6 = add nuw nsw i32 %conv.us.i.6, 1
  %add7.us.i.6 = add nuw nsw i32 %add.us.i.6, %conv6.us.i.6
  %38 = lshr i32 %add7.us.i.6, 1
  %conv8.us.i.6 = trunc i32 %38 to i8
  store i8 %conv8.us.i.6, i8* %add.ptr11.us.i.5, align 1, !tbaa !2
  %arrayidx.us.i.1.6 = getelementptr inbounds i8, i8* %add.ptr.us.i.5, i32 1
  %39 = load i8, i8* %arrayidx.us.i.1.6, align 1, !tbaa !2
  %conv.us.i.1.6 = zext i8 %39 to i32
  %arrayidx5.us.i.1.6 = getelementptr inbounds i8, i8* %add.ptr10.us.i.5, i32 1
  %40 = load i8, i8* %arrayidx5.us.i.1.6, align 1, !tbaa !2
  %conv6.us.i.1.6 = zext i8 %40 to i32
  %add.us.i.1.6 = add nuw nsw i32 %conv.us.i.1.6, 1
  %add7.us.i.1.6 = add nuw nsw i32 %add.us.i.1.6, %conv6.us.i.1.6
  %41 = lshr i32 %add7.us.i.1.6, 1
  %conv8.us.i.1.6 = trunc i32 %41 to i8
  %arrayidx9.us.i.1.6 = getelementptr inbounds i8, i8* %add.ptr11.us.i.5, i32 1
  store i8 %conv8.us.i.1.6, i8* %arrayidx9.us.i.1.6, align 1, !tbaa !2
  %add.ptr.us.i.6 = getelementptr inbounds i8, i8* %add.ptr.us.i.5, i32 %i_stride_pix2
  %add.ptr10.us.i.6 = getelementptr inbounds i8, i8* %add.ptr10.us.i.5, i32 %i_stride_pix3
  %add.ptr11.us.i.6 = getelementptr inbounds i8, i8* %add.ptr11.us.i.5, i32 %i_stride_pix1
  %42 = load i8, i8* %add.ptr.us.i.6, align 1, !tbaa !2
  %conv.us.i.7 = zext i8 %42 to i32
  %43 = load i8, i8* %add.ptr10.us.i.6, align 1, !tbaa !2
  %conv6.us.i.7 = zext i8 %43 to i32
  %add.us.i.7 = add nuw nsw i32 %conv.us.i.7, 1
  %add7.us.i.7 = add nuw nsw i32 %add.us.i.7, %conv6.us.i.7
  %44 = lshr i32 %add7.us.i.7, 1
  %conv8.us.i.7 = trunc i32 %44 to i8
  store i8 %conv8.us.i.7, i8* %add.ptr11.us.i.6, align 1, !tbaa !2
  %arrayidx.us.i.1.7 = getelementptr inbounds i8, i8* %add.ptr.us.i.6, i32 1
  %45 = load i8, i8* %arrayidx.us.i.1.7, align 1, !tbaa !2
  %conv.us.i.1.7 = zext i8 %45 to i32
  %arrayidx5.us.i.1.7 = getelementptr inbounds i8, i8* %add.ptr10.us.i.6, i32 1
  %46 = load i8, i8* %arrayidx5.us.i.1.7, align 1, !tbaa !2
  %conv6.us.i.1.7 = zext i8 %46 to i32
  %add.us.i.1.7 = add nuw nsw i32 %conv.us.i.1.7, 1
  %add7.us.i.1.7 = add nuw nsw i32 %add.us.i.1.7, %conv6.us.i.1.7
  %47 = lshr i32 %add7.us.i.1.7, 1
  br label %if.end

if.else:                                          ; preds = %entry
  %sub.i = sub nsw i32 64, %weight
  %48 = load i8, i8* %pix2, align 1, !tbaa !2
  %conv.us.i4 = zext i8 %48 to i32
  %mul.us.i = mul nsw i32 %conv.us.i4, %weight
  %49 = load i8, i8* %pix3, align 1, !tbaa !2
  %conv6.us.i6 = zext i8 %49 to i32
  %mul7.us.i = mul nsw i32 %sub.i, %conv6.us.i6
  %add.us.i7 = add i32 %mul.us.i, 32
  %add8.us.i = add i32 %add.us.i7, %mul7.us.i
  %shr.us.i = ashr i32 %add8.us.i, 6
  %tobool.i.us.i = icmp ugt i32 %shr.us.i, 255
  %sub.i.us.i = sub nsw i32 0, %shr.us.i
  %shr.i.us.i = ashr i32 %sub.i.us.i, 31
  %cond.i.us.i = select i1 %tobool.i.us.i, i32 %shr.i.us.i, i32 %shr.us.i
  %conv.i.us.i = trunc i32 %cond.i.us.i to i8
  store i8 %conv.i.us.i, i8* %pix1, align 1, !tbaa !2
  %arrayidx.us.i3.1 = getelementptr inbounds i8, i8* %pix2, i32 1
  %50 = load i8, i8* %arrayidx.us.i3.1, align 1, !tbaa !2
  %conv.us.i4.1 = zext i8 %50 to i32
  %mul.us.i.1 = mul nsw i32 %conv.us.i4.1, %weight
  %arrayidx5.us.i5.1 = getelementptr inbounds i8, i8* %pix3, i32 1
  %51 = load i8, i8* %arrayidx5.us.i5.1, align 1, !tbaa !2
  %conv6.us.i6.1 = zext i8 %51 to i32
  %mul7.us.i.1 = mul nsw i32 %sub.i, %conv6.us.i6.1
  %add.us.i7.1 = add i32 %mul.us.i.1, 32
  %add8.us.i.1 = add i32 %add.us.i7.1, %mul7.us.i.1
  %shr.us.i.1 = ashr i32 %add8.us.i.1, 6
  %tobool.i.us.i.1 = icmp ugt i32 %shr.us.i.1, 255
  %sub.i.us.i.1 = sub nsw i32 0, %shr.us.i.1
  %shr.i.us.i.1 = ashr i32 %sub.i.us.i.1, 31
  %cond.i.us.i.1 = select i1 %tobool.i.us.i.1, i32 %shr.i.us.i.1, i32 %shr.us.i.1
  %conv.i.us.i.1 = trunc i32 %cond.i.us.i.1 to i8
  %arrayidx9.us.i8.1 = getelementptr inbounds i8, i8* %pix1, i32 1
  store i8 %conv.i.us.i.1, i8* %arrayidx9.us.i8.1, align 1, !tbaa !2
  %add.ptr.us.i12 = getelementptr inbounds i8, i8* %pix1, i32 %i_stride_pix1
  %add.ptr12.us.i = getelementptr inbounds i8, i8* %pix2, i32 %i_stride_pix2
  %add.ptr13.us.i = getelementptr inbounds i8, i8* %pix3, i32 %i_stride_pix3
  %52 = load i8, i8* %add.ptr12.us.i, align 1, !tbaa !2
  %conv.us.i4.121 = zext i8 %52 to i32
  %mul.us.i.122 = mul nsw i32 %conv.us.i4.121, %weight
  %53 = load i8, i8* %add.ptr13.us.i, align 1, !tbaa !2
  %conv6.us.i6.123 = zext i8 %53 to i32
  %mul7.us.i.124 = mul nsw i32 %sub.i, %conv6.us.i6.123
  %add.us.i7.125 = add i32 %mul.us.i.122, 32
  %add8.us.i.126 = add i32 %add.us.i7.125, %mul7.us.i.124
  %shr.us.i.127 = ashr i32 %add8.us.i.126, 6
  %tobool.i.us.i.128 = icmp ugt i32 %shr.us.i.127, 255
  %sub.i.us.i.129 = sub nsw i32 0, %shr.us.i.127
  %shr.i.us.i.130 = ashr i32 %sub.i.us.i.129, 31
  %cond.i.us.i.131 = select i1 %tobool.i.us.i.128, i32 %shr.i.us.i.130, i32 %shr.us.i.127
  %conv.i.us.i.132 = trunc i32 %cond.i.us.i.131 to i8
  store i8 %conv.i.us.i.132, i8* %add.ptr.us.i12, align 1, !tbaa !2
  %arrayidx.us.i3.1.1 = getelementptr inbounds i8, i8* %add.ptr12.us.i, i32 1
  %54 = load i8, i8* %arrayidx.us.i3.1.1, align 1, !tbaa !2
  %conv.us.i4.1.1 = zext i8 %54 to i32
  %mul.us.i.1.1 = mul nsw i32 %conv.us.i4.1.1, %weight
  %arrayidx5.us.i5.1.1 = getelementptr inbounds i8, i8* %add.ptr13.us.i, i32 1
  %55 = load i8, i8* %arrayidx5.us.i5.1.1, align 1, !tbaa !2
  %conv6.us.i6.1.1 = zext i8 %55 to i32
  %mul7.us.i.1.1 = mul nsw i32 %sub.i, %conv6.us.i6.1.1
  %add.us.i7.1.1 = add i32 %mul.us.i.1.1, 32
  %add8.us.i.1.1 = add i32 %add.us.i7.1.1, %mul7.us.i.1.1
  %shr.us.i.1.1 = ashr i32 %add8.us.i.1.1, 6
  %tobool.i.us.i.1.1 = icmp ugt i32 %shr.us.i.1.1, 255
  %sub.i.us.i.1.1 = sub nsw i32 0, %shr.us.i.1.1
  %shr.i.us.i.1.1 = ashr i32 %sub.i.us.i.1.1, 31
  %cond.i.us.i.1.1 = select i1 %tobool.i.us.i.1.1, i32 %shr.i.us.i.1.1, i32 %shr.us.i.1.1
  %conv.i.us.i.1.1 = trunc i32 %cond.i.us.i.1.1 to i8
  %arrayidx9.us.i8.1.1 = getelementptr inbounds i8, i8* %add.ptr.us.i12, i32 1
  store i8 %conv.i.us.i.1.1, i8* %arrayidx9.us.i8.1.1, align 1, !tbaa !2
  %add.ptr.us.i12.1 = getelementptr inbounds i8, i8* %add.ptr.us.i12, i32 %i_stride_pix1
  %add.ptr12.us.i.1 = getelementptr inbounds i8, i8* %add.ptr12.us.i, i32 %i_stride_pix2
  %add.ptr13.us.i.1 = getelementptr inbounds i8, i8* %add.ptr13.us.i, i32 %i_stride_pix3
  %56 = load i8, i8* %add.ptr12.us.i.1, align 1, !tbaa !2
  %conv.us.i4.2 = zext i8 %56 to i32
  %mul.us.i.2 = mul nsw i32 %conv.us.i4.2, %weight
  %57 = load i8, i8* %add.ptr13.us.i.1, align 1, !tbaa !2
  %conv6.us.i6.2 = zext i8 %57 to i32
  %mul7.us.i.2 = mul nsw i32 %sub.i, %conv6.us.i6.2
  %add.us.i7.2 = add i32 %mul.us.i.2, 32
  %add8.us.i.2 = add i32 %add.us.i7.2, %mul7.us.i.2
  %shr.us.i.2 = ashr i32 %add8.us.i.2, 6
  %tobool.i.us.i.2 = icmp ugt i32 %shr.us.i.2, 255
  %sub.i.us.i.2 = sub nsw i32 0, %shr.us.i.2
  %shr.i.us.i.2 = ashr i32 %sub.i.us.i.2, 31
  %cond.i.us.i.2 = select i1 %tobool.i.us.i.2, i32 %shr.i.us.i.2, i32 %shr.us.i.2
  %conv.i.us.i.2 = trunc i32 %cond.i.us.i.2 to i8
  store i8 %conv.i.us.i.2, i8* %add.ptr.us.i12.1, align 1, !tbaa !2
  %arrayidx.us.i3.1.2 = getelementptr inbounds i8, i8* %add.ptr12.us.i.1, i32 1
  %58 = load i8, i8* %arrayidx.us.i3.1.2, align 1, !tbaa !2
  %conv.us.i4.1.2 = zext i8 %58 to i32
  %mul.us.i.1.2 = mul nsw i32 %conv.us.i4.1.2, %weight
  %arrayidx5.us.i5.1.2 = getelementptr inbounds i8, i8* %add.ptr13.us.i.1, i32 1
  %59 = load i8, i8* %arrayidx5.us.i5.1.2, align 1, !tbaa !2
  %conv6.us.i6.1.2 = zext i8 %59 to i32
  %mul7.us.i.1.2 = mul nsw i32 %sub.i, %conv6.us.i6.1.2
  %add.us.i7.1.2 = add i32 %mul.us.i.1.2, 32
  %add8.us.i.1.2 = add i32 %add.us.i7.1.2, %mul7.us.i.1.2
  %shr.us.i.1.2 = ashr i32 %add8.us.i.1.2, 6
  %tobool.i.us.i.1.2 = icmp ugt i32 %shr.us.i.1.2, 255
  %sub.i.us.i.1.2 = sub nsw i32 0, %shr.us.i.1.2
  %shr.i.us.i.1.2 = ashr i32 %sub.i.us.i.1.2, 31
  %cond.i.us.i.1.2 = select i1 %tobool.i.us.i.1.2, i32 %shr.i.us.i.1.2, i32 %shr.us.i.1.2
  %conv.i.us.i.1.2 = trunc i32 %cond.i.us.i.1.2 to i8
  %arrayidx9.us.i8.1.2 = getelementptr inbounds i8, i8* %add.ptr.us.i12.1, i32 1
  store i8 %conv.i.us.i.1.2, i8* %arrayidx9.us.i8.1.2, align 1, !tbaa !2
  %add.ptr.us.i12.2 = getelementptr inbounds i8, i8* %add.ptr.us.i12.1, i32 %i_stride_pix1
  %add.ptr12.us.i.2 = getelementptr inbounds i8, i8* %add.ptr12.us.i.1, i32 %i_stride_pix2
  %add.ptr13.us.i.2 = getelementptr inbounds i8, i8* %add.ptr13.us.i.1, i32 %i_stride_pix3
  %60 = load i8, i8* %add.ptr12.us.i.2, align 1, !tbaa !2
  %conv.us.i4.3 = zext i8 %60 to i32
  %mul.us.i.3 = mul nsw i32 %conv.us.i4.3, %weight
  %61 = load i8, i8* %add.ptr13.us.i.2, align 1, !tbaa !2
  %conv6.us.i6.3 = zext i8 %61 to i32
  %mul7.us.i.3 = mul nsw i32 %sub.i, %conv6.us.i6.3
  %add.us.i7.3 = add i32 %mul.us.i.3, 32
  %add8.us.i.3 = add i32 %add.us.i7.3, %mul7.us.i.3
  %shr.us.i.3 = ashr i32 %add8.us.i.3, 6
  %tobool.i.us.i.3 = icmp ugt i32 %shr.us.i.3, 255
  %sub.i.us.i.3 = sub nsw i32 0, %shr.us.i.3
  %shr.i.us.i.3 = ashr i32 %sub.i.us.i.3, 31
  %cond.i.us.i.3 = select i1 %tobool.i.us.i.3, i32 %shr.i.us.i.3, i32 %shr.us.i.3
  %conv.i.us.i.3 = trunc i32 %cond.i.us.i.3 to i8
  store i8 %conv.i.us.i.3, i8* %add.ptr.us.i12.2, align 1, !tbaa !2
  %arrayidx.us.i3.1.3 = getelementptr inbounds i8, i8* %add.ptr12.us.i.2, i32 1
  %62 = load i8, i8* %arrayidx.us.i3.1.3, align 1, !tbaa !2
  %conv.us.i4.1.3 = zext i8 %62 to i32
  %mul.us.i.1.3 = mul nsw i32 %conv.us.i4.1.3, %weight
  %arrayidx5.us.i5.1.3 = getelementptr inbounds i8, i8* %add.ptr13.us.i.2, i32 1
  %63 = load i8, i8* %arrayidx5.us.i5.1.3, align 1, !tbaa !2
  %conv6.us.i6.1.3 = zext i8 %63 to i32
  %mul7.us.i.1.3 = mul nsw i32 %sub.i, %conv6.us.i6.1.3
  %add.us.i7.1.3 = add i32 %mul.us.i.1.3, 32
  %add8.us.i.1.3 = add i32 %add.us.i7.1.3, %mul7.us.i.1.3
  %shr.us.i.1.3 = ashr i32 %add8.us.i.1.3, 6
  %tobool.i.us.i.1.3 = icmp ugt i32 %shr.us.i.1.3, 255
  %sub.i.us.i.1.3 = sub nsw i32 0, %shr.us.i.1.3
  %shr.i.us.i.1.3 = ashr i32 %sub.i.us.i.1.3, 31
  %cond.i.us.i.1.3 = select i1 %tobool.i.us.i.1.3, i32 %shr.i.us.i.1.3, i32 %shr.us.i.1.3
  %conv.i.us.i.1.3 = trunc i32 %cond.i.us.i.1.3 to i8
  %arrayidx9.us.i8.1.3 = getelementptr inbounds i8, i8* %add.ptr.us.i12.2, i32 1
  store i8 %conv.i.us.i.1.3, i8* %arrayidx9.us.i8.1.3, align 1, !tbaa !2
  %add.ptr.us.i12.3 = getelementptr inbounds i8, i8* %add.ptr.us.i12.2, i32 %i_stride_pix1
  %add.ptr12.us.i.3 = getelementptr inbounds i8, i8* %add.ptr12.us.i.2, i32 %i_stride_pix2
  %add.ptr13.us.i.3 = getelementptr inbounds i8, i8* %add.ptr13.us.i.2, i32 %i_stride_pix3
  %64 = load i8, i8* %add.ptr12.us.i.3, align 1, !tbaa !2
  %conv.us.i4.4 = zext i8 %64 to i32
  %mul.us.i.4 = mul nsw i32 %conv.us.i4.4, %weight
  %65 = load i8, i8* %add.ptr13.us.i.3, align 1, !tbaa !2
  %conv6.us.i6.4 = zext i8 %65 to i32
  %mul7.us.i.4 = mul nsw i32 %sub.i, %conv6.us.i6.4
  %add.us.i7.4 = add i32 %mul.us.i.4, 32
  %add8.us.i.4 = add i32 %add.us.i7.4, %mul7.us.i.4
  %shr.us.i.4 = ashr i32 %add8.us.i.4, 6
  %tobool.i.us.i.4 = icmp ugt i32 %shr.us.i.4, 255
  %sub.i.us.i.4 = sub nsw i32 0, %shr.us.i.4
  %shr.i.us.i.4 = ashr i32 %sub.i.us.i.4, 31
  %cond.i.us.i.4 = select i1 %tobool.i.us.i.4, i32 %shr.i.us.i.4, i32 %shr.us.i.4
  %conv.i.us.i.4 = trunc i32 %cond.i.us.i.4 to i8
  store i8 %conv.i.us.i.4, i8* %add.ptr.us.i12.3, align 1, !tbaa !2
  %arrayidx.us.i3.1.4 = getelementptr inbounds i8, i8* %add.ptr12.us.i.3, i32 1
  %66 = load i8, i8* %arrayidx.us.i3.1.4, align 1, !tbaa !2
  %conv.us.i4.1.4 = zext i8 %66 to i32
  %mul.us.i.1.4 = mul nsw i32 %conv.us.i4.1.4, %weight
  %arrayidx5.us.i5.1.4 = getelementptr inbounds i8, i8* %add.ptr13.us.i.3, i32 1
  %67 = load i8, i8* %arrayidx5.us.i5.1.4, align 1, !tbaa !2
  %conv6.us.i6.1.4 = zext i8 %67 to i32
  %mul7.us.i.1.4 = mul nsw i32 %sub.i, %conv6.us.i6.1.4
  %add.us.i7.1.4 = add i32 %mul.us.i.1.4, 32
  %add8.us.i.1.4 = add i32 %add.us.i7.1.4, %mul7.us.i.1.4
  %shr.us.i.1.4 = ashr i32 %add8.us.i.1.4, 6
  %tobool.i.us.i.1.4 = icmp ugt i32 %shr.us.i.1.4, 255
  %sub.i.us.i.1.4 = sub nsw i32 0, %shr.us.i.1.4
  %shr.i.us.i.1.4 = ashr i32 %sub.i.us.i.1.4, 31
  %cond.i.us.i.1.4 = select i1 %tobool.i.us.i.1.4, i32 %shr.i.us.i.1.4, i32 %shr.us.i.1.4
  %conv.i.us.i.1.4 = trunc i32 %cond.i.us.i.1.4 to i8
  %arrayidx9.us.i8.1.4 = getelementptr inbounds i8, i8* %add.ptr.us.i12.3, i32 1
  store i8 %conv.i.us.i.1.4, i8* %arrayidx9.us.i8.1.4, align 1, !tbaa !2
  %add.ptr.us.i12.4 = getelementptr inbounds i8, i8* %add.ptr.us.i12.3, i32 %i_stride_pix1
  %add.ptr12.us.i.4 = getelementptr inbounds i8, i8* %add.ptr12.us.i.3, i32 %i_stride_pix2
  %add.ptr13.us.i.4 = getelementptr inbounds i8, i8* %add.ptr13.us.i.3, i32 %i_stride_pix3
  %68 = load i8, i8* %add.ptr12.us.i.4, align 1, !tbaa !2
  %conv.us.i4.5 = zext i8 %68 to i32
  %mul.us.i.5 = mul nsw i32 %conv.us.i4.5, %weight
  %69 = load i8, i8* %add.ptr13.us.i.4, align 1, !tbaa !2
  %conv6.us.i6.5 = zext i8 %69 to i32
  %mul7.us.i.5 = mul nsw i32 %sub.i, %conv6.us.i6.5
  %add.us.i7.5 = add i32 %mul.us.i.5, 32
  %add8.us.i.5 = add i32 %add.us.i7.5, %mul7.us.i.5
  %shr.us.i.5 = ashr i32 %add8.us.i.5, 6
  %tobool.i.us.i.5 = icmp ugt i32 %shr.us.i.5, 255
  %sub.i.us.i.5 = sub nsw i32 0, %shr.us.i.5
  %shr.i.us.i.5 = ashr i32 %sub.i.us.i.5, 31
  %cond.i.us.i.5 = select i1 %tobool.i.us.i.5, i32 %shr.i.us.i.5, i32 %shr.us.i.5
  %conv.i.us.i.5 = trunc i32 %cond.i.us.i.5 to i8
  store i8 %conv.i.us.i.5, i8* %add.ptr.us.i12.4, align 1, !tbaa !2
  %arrayidx.us.i3.1.5 = getelementptr inbounds i8, i8* %add.ptr12.us.i.4, i32 1
  %70 = load i8, i8* %arrayidx.us.i3.1.5, align 1, !tbaa !2
  %conv.us.i4.1.5 = zext i8 %70 to i32
  %mul.us.i.1.5 = mul nsw i32 %conv.us.i4.1.5, %weight
  %arrayidx5.us.i5.1.5 = getelementptr inbounds i8, i8* %add.ptr13.us.i.4, i32 1
  %71 = load i8, i8* %arrayidx5.us.i5.1.5, align 1, !tbaa !2
  %conv6.us.i6.1.5 = zext i8 %71 to i32
  %mul7.us.i.1.5 = mul nsw i32 %sub.i, %conv6.us.i6.1.5
  %add.us.i7.1.5 = add i32 %mul.us.i.1.5, 32
  %add8.us.i.1.5 = add i32 %add.us.i7.1.5, %mul7.us.i.1.5
  %shr.us.i.1.5 = ashr i32 %add8.us.i.1.5, 6
  %tobool.i.us.i.1.5 = icmp ugt i32 %shr.us.i.1.5, 255
  %sub.i.us.i.1.5 = sub nsw i32 0, %shr.us.i.1.5
  %shr.i.us.i.1.5 = ashr i32 %sub.i.us.i.1.5, 31
  %cond.i.us.i.1.5 = select i1 %tobool.i.us.i.1.5, i32 %shr.i.us.i.1.5, i32 %shr.us.i.1.5
  %conv.i.us.i.1.5 = trunc i32 %cond.i.us.i.1.5 to i8
  %arrayidx9.us.i8.1.5 = getelementptr inbounds i8, i8* %add.ptr.us.i12.4, i32 1
  store i8 %conv.i.us.i.1.5, i8* %arrayidx9.us.i8.1.5, align 1, !tbaa !2
  %add.ptr.us.i12.5 = getelementptr inbounds i8, i8* %add.ptr.us.i12.4, i32 %i_stride_pix1
  %add.ptr12.us.i.5 = getelementptr inbounds i8, i8* %add.ptr12.us.i.4, i32 %i_stride_pix2
  %add.ptr13.us.i.5 = getelementptr inbounds i8, i8* %add.ptr13.us.i.4, i32 %i_stride_pix3
  %72 = load i8, i8* %add.ptr12.us.i.5, align 1, !tbaa !2
  %conv.us.i4.6 = zext i8 %72 to i32
  %mul.us.i.6 = mul nsw i32 %conv.us.i4.6, %weight
  %73 = load i8, i8* %add.ptr13.us.i.5, align 1, !tbaa !2
  %conv6.us.i6.6 = zext i8 %73 to i32
  %mul7.us.i.6 = mul nsw i32 %sub.i, %conv6.us.i6.6
  %add.us.i7.6 = add i32 %mul.us.i.6, 32
  %add8.us.i.6 = add i32 %add.us.i7.6, %mul7.us.i.6
  %shr.us.i.6 = ashr i32 %add8.us.i.6, 6
  %tobool.i.us.i.6 = icmp ugt i32 %shr.us.i.6, 255
  %sub.i.us.i.6 = sub nsw i32 0, %shr.us.i.6
  %shr.i.us.i.6 = ashr i32 %sub.i.us.i.6, 31
  %cond.i.us.i.6 = select i1 %tobool.i.us.i.6, i32 %shr.i.us.i.6, i32 %shr.us.i.6
  %conv.i.us.i.6 = trunc i32 %cond.i.us.i.6 to i8
  store i8 %conv.i.us.i.6, i8* %add.ptr.us.i12.5, align 1, !tbaa !2
  %arrayidx.us.i3.1.6 = getelementptr inbounds i8, i8* %add.ptr12.us.i.5, i32 1
  %74 = load i8, i8* %arrayidx.us.i3.1.6, align 1, !tbaa !2
  %conv.us.i4.1.6 = zext i8 %74 to i32
  %mul.us.i.1.6 = mul nsw i32 %conv.us.i4.1.6, %weight
  %arrayidx5.us.i5.1.6 = getelementptr inbounds i8, i8* %add.ptr13.us.i.5, i32 1
  %75 = load i8, i8* %arrayidx5.us.i5.1.6, align 1, !tbaa !2
  %conv6.us.i6.1.6 = zext i8 %75 to i32
  %mul7.us.i.1.6 = mul nsw i32 %sub.i, %conv6.us.i6.1.6
  %add.us.i7.1.6 = add i32 %mul.us.i.1.6, 32
  %add8.us.i.1.6 = add i32 %add.us.i7.1.6, %mul7.us.i.1.6
  %shr.us.i.1.6 = ashr i32 %add8.us.i.1.6, 6
  %tobool.i.us.i.1.6 = icmp ugt i32 %shr.us.i.1.6, 255
  %sub.i.us.i.1.6 = sub nsw i32 0, %shr.us.i.1.6
  %shr.i.us.i.1.6 = ashr i32 %sub.i.us.i.1.6, 31
  %cond.i.us.i.1.6 = select i1 %tobool.i.us.i.1.6, i32 %shr.i.us.i.1.6, i32 %shr.us.i.1.6
  %conv.i.us.i.1.6 = trunc i32 %cond.i.us.i.1.6 to i8
  %arrayidx9.us.i8.1.6 = getelementptr inbounds i8, i8* %add.ptr.us.i12.5, i32 1
  store i8 %conv.i.us.i.1.6, i8* %arrayidx9.us.i8.1.6, align 1, !tbaa !2
  %add.ptr.us.i12.6 = getelementptr inbounds i8, i8* %add.ptr.us.i12.5, i32 %i_stride_pix1
  %add.ptr12.us.i.6 = getelementptr inbounds i8, i8* %add.ptr12.us.i.5, i32 %i_stride_pix2
  %add.ptr13.us.i.6 = getelementptr inbounds i8, i8* %add.ptr13.us.i.5, i32 %i_stride_pix3
  %76 = load i8, i8* %add.ptr12.us.i.6, align 1, !tbaa !2
  %conv.us.i4.7 = zext i8 %76 to i32
  %mul.us.i.7 = mul nsw i32 %conv.us.i4.7, %weight
  %77 = load i8, i8* %add.ptr13.us.i.6, align 1, !tbaa !2
  %conv6.us.i6.7 = zext i8 %77 to i32
  %mul7.us.i.7 = mul nsw i32 %sub.i, %conv6.us.i6.7
  %add.us.i7.7 = add i32 %mul.us.i.7, 32
  %add8.us.i.7 = add i32 %add.us.i7.7, %mul7.us.i.7
  %shr.us.i.7 = ashr i32 %add8.us.i.7, 6
  %tobool.i.us.i.7 = icmp ugt i32 %shr.us.i.7, 255
  %sub.i.us.i.7 = sub nsw i32 0, %shr.us.i.7
  %shr.i.us.i.7 = ashr i32 %sub.i.us.i.7, 31
  %cond.i.us.i.7 = select i1 %tobool.i.us.i.7, i32 %shr.i.us.i.7, i32 %shr.us.i.7
  %conv.i.us.i.7 = trunc i32 %cond.i.us.i.7 to i8
  store i8 %conv.i.us.i.7, i8* %add.ptr.us.i12.6, align 1, !tbaa !2
  %arrayidx.us.i3.1.7 = getelementptr inbounds i8, i8* %add.ptr12.us.i.6, i32 1
  %78 = load i8, i8* %arrayidx.us.i3.1.7, align 1, !tbaa !2
  %conv.us.i4.1.7 = zext i8 %78 to i32
  %mul.us.i.1.7 = mul nsw i32 %conv.us.i4.1.7, %weight
  %arrayidx5.us.i5.1.7 = getelementptr inbounds i8, i8* %add.ptr13.us.i.6, i32 1
  %79 = load i8, i8* %arrayidx5.us.i5.1.7, align 1, !tbaa !2
  %conv6.us.i6.1.7 = zext i8 %79 to i32
  %mul7.us.i.1.7 = mul nsw i32 %sub.i, %conv6.us.i6.1.7
  %add.us.i7.1.7 = add i32 %mul.us.i.1.7, 32
  %add8.us.i.1.7 = add i32 %add.us.i7.1.7, %mul7.us.i.1.7
  %shr.us.i.1.7 = ashr i32 %add8.us.i.1.7, 6
  %tobool.i.us.i.1.7 = icmp ugt i32 %shr.us.i.1.7, 255
  %sub.i.us.i.1.7 = sub nsw i32 0, %shr.us.i.1.7
  %shr.i.us.i.1.7 = ashr i32 %sub.i.us.i.1.7, 31
  %cond.i.us.i.1.7 = select i1 %tobool.i.us.i.1.7, i32 %shr.i.us.i.1.7, i32 %shr.us.i.1.7
  br label %if.end

if.end:                                           ; preds = %if.else, %for.cond1.preheader.us.i.preheader
  %cond.i.us.i.1.7.sink = phi i32 [ %cond.i.us.i.1.7, %if.else ], [ %47, %for.cond1.preheader.us.i.preheader ]
  %80 = phi i8* [ %add.ptr.us.i12.4, %if.else ], [ %add.ptr11.us.i.4, %for.cond1.preheader.us.i.preheader ]
  %81 = getelementptr inbounds i8, i8* %80, i32 %i_stride_pix1
  %82 = getelementptr inbounds i8, i8* %81, i32 %i_stride_pix1
  %conv.i.us.i.1.7 = trunc i32 %cond.i.us.i.1.7.sink to i8
  %arrayidx9.us.i8.1.7 = getelementptr inbounds i8, i8* %82, i32 1
  store i8 %conv.i.us.i.1.7, i8* %arrayidx9.us.i8.1.7, align 1, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @pixel_avg_2x4(i8* nocapture %pix1, i32 %i_stride_pix1, i8* nocapture readonly %pix2, i32 %i_stride_pix2, i8* nocapture readonly %pix3, i32 %i_stride_pix3, i32 %weight) #2 {
entry:
  %cmp = icmp eq i32 %weight, 32
  br i1 %cmp, label %for.cond1.preheader.us.i.preheader, label %if.else

for.cond1.preheader.us.i.preheader:               ; preds = %entry
  %0 = load i8, i8* %pix2, align 1, !tbaa !2
  %conv.us.i = zext i8 %0 to i32
  %1 = load i8, i8* %pix3, align 1, !tbaa !2
  %conv6.us.i = zext i8 %1 to i32
  %add.us.i = add nuw nsw i32 %conv.us.i, 1
  %add7.us.i = add nuw nsw i32 %add.us.i, %conv6.us.i
  %2 = lshr i32 %add7.us.i, 1
  %conv8.us.i = trunc i32 %2 to i8
  store i8 %conv8.us.i, i8* %pix1, align 1, !tbaa !2
  %arrayidx.us.i.1 = getelementptr inbounds i8, i8* %pix2, i32 1
  %3 = load i8, i8* %arrayidx.us.i.1, align 1, !tbaa !2
  %conv.us.i.1 = zext i8 %3 to i32
  %arrayidx5.us.i.1 = getelementptr inbounds i8, i8* %pix3, i32 1
  %4 = load i8, i8* %arrayidx5.us.i.1, align 1, !tbaa !2
  %conv6.us.i.1 = zext i8 %4 to i32
  %add.us.i.1 = add nuw nsw i32 %conv.us.i.1, 1
  %add7.us.i.1 = add nuw nsw i32 %add.us.i.1, %conv6.us.i.1
  %5 = lshr i32 %add7.us.i.1, 1
  %conv8.us.i.1 = trunc i32 %5 to i8
  %arrayidx9.us.i.1 = getelementptr inbounds i8, i8* %pix1, i32 1
  store i8 %conv8.us.i.1, i8* %arrayidx9.us.i.1, align 1, !tbaa !2
  %add.ptr.us.i = getelementptr inbounds i8, i8* %pix2, i32 %i_stride_pix2
  %add.ptr10.us.i = getelementptr inbounds i8, i8* %pix3, i32 %i_stride_pix3
  %add.ptr11.us.i = getelementptr inbounds i8, i8* %pix1, i32 %i_stride_pix1
  %6 = load i8, i8* %add.ptr.us.i, align 1, !tbaa !2
  %conv.us.i.116 = zext i8 %6 to i32
  %7 = load i8, i8* %add.ptr10.us.i, align 1, !tbaa !2
  %conv6.us.i.117 = zext i8 %7 to i32
  %add.us.i.118 = add nuw nsw i32 %conv.us.i.116, 1
  %add7.us.i.119 = add nuw nsw i32 %add.us.i.118, %conv6.us.i.117
  %8 = lshr i32 %add7.us.i.119, 1
  %conv8.us.i.120 = trunc i32 %8 to i8
  store i8 %conv8.us.i.120, i8* %add.ptr11.us.i, align 1, !tbaa !2
  %arrayidx.us.i.1.1 = getelementptr inbounds i8, i8* %add.ptr.us.i, i32 1
  %9 = load i8, i8* %arrayidx.us.i.1.1, align 1, !tbaa !2
  %conv.us.i.1.1 = zext i8 %9 to i32
  %arrayidx5.us.i.1.1 = getelementptr inbounds i8, i8* %add.ptr10.us.i, i32 1
  %10 = load i8, i8* %arrayidx5.us.i.1.1, align 1, !tbaa !2
  %conv6.us.i.1.1 = zext i8 %10 to i32
  %add.us.i.1.1 = add nuw nsw i32 %conv.us.i.1.1, 1
  %add7.us.i.1.1 = add nuw nsw i32 %add.us.i.1.1, %conv6.us.i.1.1
  %11 = lshr i32 %add7.us.i.1.1, 1
  %conv8.us.i.1.1 = trunc i32 %11 to i8
  %arrayidx9.us.i.1.1 = getelementptr inbounds i8, i8* %add.ptr11.us.i, i32 1
  store i8 %conv8.us.i.1.1, i8* %arrayidx9.us.i.1.1, align 1, !tbaa !2
  %add.ptr.us.i.1 = getelementptr inbounds i8, i8* %add.ptr.us.i, i32 %i_stride_pix2
  %add.ptr10.us.i.1 = getelementptr inbounds i8, i8* %add.ptr10.us.i, i32 %i_stride_pix3
  %add.ptr11.us.i.1 = getelementptr inbounds i8, i8* %add.ptr11.us.i, i32 %i_stride_pix1
  %12 = load i8, i8* %add.ptr.us.i.1, align 1, !tbaa !2
  %conv.us.i.2 = zext i8 %12 to i32
  %13 = load i8, i8* %add.ptr10.us.i.1, align 1, !tbaa !2
  %conv6.us.i.2 = zext i8 %13 to i32
  %add.us.i.2 = add nuw nsw i32 %conv.us.i.2, 1
  %add7.us.i.2 = add nuw nsw i32 %add.us.i.2, %conv6.us.i.2
  %14 = lshr i32 %add7.us.i.2, 1
  %conv8.us.i.2 = trunc i32 %14 to i8
  store i8 %conv8.us.i.2, i8* %add.ptr11.us.i.1, align 1, !tbaa !2
  %arrayidx.us.i.1.2 = getelementptr inbounds i8, i8* %add.ptr.us.i.1, i32 1
  %15 = load i8, i8* %arrayidx.us.i.1.2, align 1, !tbaa !2
  %conv.us.i.1.2 = zext i8 %15 to i32
  %arrayidx5.us.i.1.2 = getelementptr inbounds i8, i8* %add.ptr10.us.i.1, i32 1
  %16 = load i8, i8* %arrayidx5.us.i.1.2, align 1, !tbaa !2
  %conv6.us.i.1.2 = zext i8 %16 to i32
  %add.us.i.1.2 = add nuw nsw i32 %conv.us.i.1.2, 1
  %add7.us.i.1.2 = add nuw nsw i32 %add.us.i.1.2, %conv6.us.i.1.2
  %17 = lshr i32 %add7.us.i.1.2, 1
  %conv8.us.i.1.2 = trunc i32 %17 to i8
  %arrayidx9.us.i.1.2 = getelementptr inbounds i8, i8* %add.ptr11.us.i.1, i32 1
  store i8 %conv8.us.i.1.2, i8* %arrayidx9.us.i.1.2, align 1, !tbaa !2
  %add.ptr.us.i.2 = getelementptr inbounds i8, i8* %add.ptr.us.i.1, i32 %i_stride_pix2
  %add.ptr10.us.i.2 = getelementptr inbounds i8, i8* %add.ptr10.us.i.1, i32 %i_stride_pix3
  %add.ptr11.us.i.2 = getelementptr inbounds i8, i8* %add.ptr11.us.i.1, i32 %i_stride_pix1
  %18 = load i8, i8* %add.ptr.us.i.2, align 1, !tbaa !2
  %conv.us.i.3 = zext i8 %18 to i32
  %19 = load i8, i8* %add.ptr10.us.i.2, align 1, !tbaa !2
  %conv6.us.i.3 = zext i8 %19 to i32
  %add.us.i.3 = add nuw nsw i32 %conv.us.i.3, 1
  %add7.us.i.3 = add nuw nsw i32 %add.us.i.3, %conv6.us.i.3
  %20 = lshr i32 %add7.us.i.3, 1
  %conv8.us.i.3 = trunc i32 %20 to i8
  store i8 %conv8.us.i.3, i8* %add.ptr11.us.i.2, align 1, !tbaa !2
  %arrayidx.us.i.1.3 = getelementptr inbounds i8, i8* %add.ptr.us.i.2, i32 1
  %21 = load i8, i8* %arrayidx.us.i.1.3, align 1, !tbaa !2
  %conv.us.i.1.3 = zext i8 %21 to i32
  %arrayidx5.us.i.1.3 = getelementptr inbounds i8, i8* %add.ptr10.us.i.2, i32 1
  %22 = load i8, i8* %arrayidx5.us.i.1.3, align 1, !tbaa !2
  %conv6.us.i.1.3 = zext i8 %22 to i32
  %add.us.i.1.3 = add nuw nsw i32 %conv.us.i.1.3, 1
  %add7.us.i.1.3 = add nuw nsw i32 %add.us.i.1.3, %conv6.us.i.1.3
  %23 = lshr i32 %add7.us.i.1.3, 1
  br label %if.end

if.else:                                          ; preds = %entry
  %sub.i = sub nsw i32 64, %weight
  %24 = load i8, i8* %pix2, align 1, !tbaa !2
  %conv.us.i4 = zext i8 %24 to i32
  %mul.us.i = mul nsw i32 %conv.us.i4, %weight
  %25 = load i8, i8* %pix3, align 1, !tbaa !2
  %conv6.us.i6 = zext i8 %25 to i32
  %mul7.us.i = mul nsw i32 %sub.i, %conv6.us.i6
  %add.us.i7 = add i32 %mul.us.i, 32
  %add8.us.i = add i32 %add.us.i7, %mul7.us.i
  %shr.us.i = ashr i32 %add8.us.i, 6
  %tobool.i.us.i = icmp ugt i32 %shr.us.i, 255
  %sub.i.us.i = sub nsw i32 0, %shr.us.i
  %shr.i.us.i = ashr i32 %sub.i.us.i, 31
  %cond.i.us.i = select i1 %tobool.i.us.i, i32 %shr.i.us.i, i32 %shr.us.i
  %conv.i.us.i = trunc i32 %cond.i.us.i to i8
  store i8 %conv.i.us.i, i8* %pix1, align 1, !tbaa !2
  %arrayidx.us.i3.1 = getelementptr inbounds i8, i8* %pix2, i32 1
  %26 = load i8, i8* %arrayidx.us.i3.1, align 1, !tbaa !2
  %conv.us.i4.1 = zext i8 %26 to i32
  %mul.us.i.1 = mul nsw i32 %conv.us.i4.1, %weight
  %arrayidx5.us.i5.1 = getelementptr inbounds i8, i8* %pix3, i32 1
  %27 = load i8, i8* %arrayidx5.us.i5.1, align 1, !tbaa !2
  %conv6.us.i6.1 = zext i8 %27 to i32
  %mul7.us.i.1 = mul nsw i32 %sub.i, %conv6.us.i6.1
  %add.us.i7.1 = add i32 %mul.us.i.1, 32
  %add8.us.i.1 = add i32 %add.us.i7.1, %mul7.us.i.1
  %shr.us.i.1 = ashr i32 %add8.us.i.1, 6
  %tobool.i.us.i.1 = icmp ugt i32 %shr.us.i.1, 255
  %sub.i.us.i.1 = sub nsw i32 0, %shr.us.i.1
  %shr.i.us.i.1 = ashr i32 %sub.i.us.i.1, 31
  %cond.i.us.i.1 = select i1 %tobool.i.us.i.1, i32 %shr.i.us.i.1, i32 %shr.us.i.1
  %conv.i.us.i.1 = trunc i32 %cond.i.us.i.1 to i8
  %arrayidx9.us.i8.1 = getelementptr inbounds i8, i8* %pix1, i32 1
  store i8 %conv.i.us.i.1, i8* %arrayidx9.us.i8.1, align 1, !tbaa !2
  %add.ptr.us.i12 = getelementptr inbounds i8, i8* %pix1, i32 %i_stride_pix1
  %add.ptr12.us.i = getelementptr inbounds i8, i8* %pix2, i32 %i_stride_pix2
  %add.ptr13.us.i = getelementptr inbounds i8, i8* %pix3, i32 %i_stride_pix3
  %28 = load i8, i8* %add.ptr12.us.i, align 1, !tbaa !2
  %conv.us.i4.121 = zext i8 %28 to i32
  %mul.us.i.122 = mul nsw i32 %conv.us.i4.121, %weight
  %29 = load i8, i8* %add.ptr13.us.i, align 1, !tbaa !2
  %conv6.us.i6.123 = zext i8 %29 to i32
  %mul7.us.i.124 = mul nsw i32 %sub.i, %conv6.us.i6.123
  %add.us.i7.125 = add i32 %mul.us.i.122, 32
  %add8.us.i.126 = add i32 %add.us.i7.125, %mul7.us.i.124
  %shr.us.i.127 = ashr i32 %add8.us.i.126, 6
  %tobool.i.us.i.128 = icmp ugt i32 %shr.us.i.127, 255
  %sub.i.us.i.129 = sub nsw i32 0, %shr.us.i.127
  %shr.i.us.i.130 = ashr i32 %sub.i.us.i.129, 31
  %cond.i.us.i.131 = select i1 %tobool.i.us.i.128, i32 %shr.i.us.i.130, i32 %shr.us.i.127
  %conv.i.us.i.132 = trunc i32 %cond.i.us.i.131 to i8
  store i8 %conv.i.us.i.132, i8* %add.ptr.us.i12, align 1, !tbaa !2
  %arrayidx.us.i3.1.1 = getelementptr inbounds i8, i8* %add.ptr12.us.i, i32 1
  %30 = load i8, i8* %arrayidx.us.i3.1.1, align 1, !tbaa !2
  %conv.us.i4.1.1 = zext i8 %30 to i32
  %mul.us.i.1.1 = mul nsw i32 %conv.us.i4.1.1, %weight
  %arrayidx5.us.i5.1.1 = getelementptr inbounds i8, i8* %add.ptr13.us.i, i32 1
  %31 = load i8, i8* %arrayidx5.us.i5.1.1, align 1, !tbaa !2
  %conv6.us.i6.1.1 = zext i8 %31 to i32
  %mul7.us.i.1.1 = mul nsw i32 %sub.i, %conv6.us.i6.1.1
  %add.us.i7.1.1 = add i32 %mul.us.i.1.1, 32
  %add8.us.i.1.1 = add i32 %add.us.i7.1.1, %mul7.us.i.1.1
  %shr.us.i.1.1 = ashr i32 %add8.us.i.1.1, 6
  %tobool.i.us.i.1.1 = icmp ugt i32 %shr.us.i.1.1, 255
  %sub.i.us.i.1.1 = sub nsw i32 0, %shr.us.i.1.1
  %shr.i.us.i.1.1 = ashr i32 %sub.i.us.i.1.1, 31
  %cond.i.us.i.1.1 = select i1 %tobool.i.us.i.1.1, i32 %shr.i.us.i.1.1, i32 %shr.us.i.1.1
  %conv.i.us.i.1.1 = trunc i32 %cond.i.us.i.1.1 to i8
  %arrayidx9.us.i8.1.1 = getelementptr inbounds i8, i8* %add.ptr.us.i12, i32 1
  store i8 %conv.i.us.i.1.1, i8* %arrayidx9.us.i8.1.1, align 1, !tbaa !2
  %add.ptr.us.i12.1 = getelementptr inbounds i8, i8* %add.ptr.us.i12, i32 %i_stride_pix1
  %add.ptr12.us.i.1 = getelementptr inbounds i8, i8* %add.ptr12.us.i, i32 %i_stride_pix2
  %add.ptr13.us.i.1 = getelementptr inbounds i8, i8* %add.ptr13.us.i, i32 %i_stride_pix3
  %32 = load i8, i8* %add.ptr12.us.i.1, align 1, !tbaa !2
  %conv.us.i4.2 = zext i8 %32 to i32
  %mul.us.i.2 = mul nsw i32 %conv.us.i4.2, %weight
  %33 = load i8, i8* %add.ptr13.us.i.1, align 1, !tbaa !2
  %conv6.us.i6.2 = zext i8 %33 to i32
  %mul7.us.i.2 = mul nsw i32 %sub.i, %conv6.us.i6.2
  %add.us.i7.2 = add i32 %mul.us.i.2, 32
  %add8.us.i.2 = add i32 %add.us.i7.2, %mul7.us.i.2
  %shr.us.i.2 = ashr i32 %add8.us.i.2, 6
  %tobool.i.us.i.2 = icmp ugt i32 %shr.us.i.2, 255
  %sub.i.us.i.2 = sub nsw i32 0, %shr.us.i.2
  %shr.i.us.i.2 = ashr i32 %sub.i.us.i.2, 31
  %cond.i.us.i.2 = select i1 %tobool.i.us.i.2, i32 %shr.i.us.i.2, i32 %shr.us.i.2
  %conv.i.us.i.2 = trunc i32 %cond.i.us.i.2 to i8
  store i8 %conv.i.us.i.2, i8* %add.ptr.us.i12.1, align 1, !tbaa !2
  %arrayidx.us.i3.1.2 = getelementptr inbounds i8, i8* %add.ptr12.us.i.1, i32 1
  %34 = load i8, i8* %arrayidx.us.i3.1.2, align 1, !tbaa !2
  %conv.us.i4.1.2 = zext i8 %34 to i32
  %mul.us.i.1.2 = mul nsw i32 %conv.us.i4.1.2, %weight
  %arrayidx5.us.i5.1.2 = getelementptr inbounds i8, i8* %add.ptr13.us.i.1, i32 1
  %35 = load i8, i8* %arrayidx5.us.i5.1.2, align 1, !tbaa !2
  %conv6.us.i6.1.2 = zext i8 %35 to i32
  %mul7.us.i.1.2 = mul nsw i32 %sub.i, %conv6.us.i6.1.2
  %add.us.i7.1.2 = add i32 %mul.us.i.1.2, 32
  %add8.us.i.1.2 = add i32 %add.us.i7.1.2, %mul7.us.i.1.2
  %shr.us.i.1.2 = ashr i32 %add8.us.i.1.2, 6
  %tobool.i.us.i.1.2 = icmp ugt i32 %shr.us.i.1.2, 255
  %sub.i.us.i.1.2 = sub nsw i32 0, %shr.us.i.1.2
  %shr.i.us.i.1.2 = ashr i32 %sub.i.us.i.1.2, 31
  %cond.i.us.i.1.2 = select i1 %tobool.i.us.i.1.2, i32 %shr.i.us.i.1.2, i32 %shr.us.i.1.2
  %conv.i.us.i.1.2 = trunc i32 %cond.i.us.i.1.2 to i8
  %arrayidx9.us.i8.1.2 = getelementptr inbounds i8, i8* %add.ptr.us.i12.1, i32 1
  store i8 %conv.i.us.i.1.2, i8* %arrayidx9.us.i8.1.2, align 1, !tbaa !2
  %add.ptr.us.i12.2 = getelementptr inbounds i8, i8* %add.ptr.us.i12.1, i32 %i_stride_pix1
  %add.ptr12.us.i.2 = getelementptr inbounds i8, i8* %add.ptr12.us.i.1, i32 %i_stride_pix2
  %add.ptr13.us.i.2 = getelementptr inbounds i8, i8* %add.ptr13.us.i.1, i32 %i_stride_pix3
  %36 = load i8, i8* %add.ptr12.us.i.2, align 1, !tbaa !2
  %conv.us.i4.3 = zext i8 %36 to i32
  %mul.us.i.3 = mul nsw i32 %conv.us.i4.3, %weight
  %37 = load i8, i8* %add.ptr13.us.i.2, align 1, !tbaa !2
  %conv6.us.i6.3 = zext i8 %37 to i32
  %mul7.us.i.3 = mul nsw i32 %sub.i, %conv6.us.i6.3
  %add.us.i7.3 = add i32 %mul.us.i.3, 32
  %add8.us.i.3 = add i32 %add.us.i7.3, %mul7.us.i.3
  %shr.us.i.3 = ashr i32 %add8.us.i.3, 6
  %tobool.i.us.i.3 = icmp ugt i32 %shr.us.i.3, 255
  %sub.i.us.i.3 = sub nsw i32 0, %shr.us.i.3
  %shr.i.us.i.3 = ashr i32 %sub.i.us.i.3, 31
  %cond.i.us.i.3 = select i1 %tobool.i.us.i.3, i32 %shr.i.us.i.3, i32 %shr.us.i.3
  %conv.i.us.i.3 = trunc i32 %cond.i.us.i.3 to i8
  store i8 %conv.i.us.i.3, i8* %add.ptr.us.i12.2, align 1, !tbaa !2
  %arrayidx.us.i3.1.3 = getelementptr inbounds i8, i8* %add.ptr12.us.i.2, i32 1
  %38 = load i8, i8* %arrayidx.us.i3.1.3, align 1, !tbaa !2
  %conv.us.i4.1.3 = zext i8 %38 to i32
  %mul.us.i.1.3 = mul nsw i32 %conv.us.i4.1.3, %weight
  %arrayidx5.us.i5.1.3 = getelementptr inbounds i8, i8* %add.ptr13.us.i.2, i32 1
  %39 = load i8, i8* %arrayidx5.us.i5.1.3, align 1, !tbaa !2
  %conv6.us.i6.1.3 = zext i8 %39 to i32
  %mul7.us.i.1.3 = mul nsw i32 %sub.i, %conv6.us.i6.1.3
  %add.us.i7.1.3 = add i32 %mul.us.i.1.3, 32
  %add8.us.i.1.3 = add i32 %add.us.i7.1.3, %mul7.us.i.1.3
  %shr.us.i.1.3 = ashr i32 %add8.us.i.1.3, 6
  %tobool.i.us.i.1.3 = icmp ugt i32 %shr.us.i.1.3, 255
  %sub.i.us.i.1.3 = sub nsw i32 0, %shr.us.i.1.3
  %shr.i.us.i.1.3 = ashr i32 %sub.i.us.i.1.3, 31
  %cond.i.us.i.1.3 = select i1 %tobool.i.us.i.1.3, i32 %shr.i.us.i.1.3, i32 %shr.us.i.1.3
  br label %if.end

if.end:                                           ; preds = %if.else, %for.cond1.preheader.us.i.preheader
  %cond.i.us.i.1.3.sink = phi i32 [ %cond.i.us.i.1.3, %if.else ], [ %23, %for.cond1.preheader.us.i.preheader ]
  %40 = phi i8* [ %add.ptr.us.i12, %if.else ], [ %add.ptr11.us.i, %for.cond1.preheader.us.i.preheader ]
  %41 = getelementptr inbounds i8, i8* %40, i32 %i_stride_pix1
  %42 = getelementptr inbounds i8, i8* %41, i32 %i_stride_pix1
  %conv.i.us.i.1.3 = trunc i32 %cond.i.us.i.1.3.sink to i8
  %arrayidx9.us.i8.1.3 = getelementptr inbounds i8, i8* %42, i32 1
  store i8 %conv.i.us.i.1.3, i8* %arrayidx9.us.i8.1.3, align 1, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @pixel_avg_2x2(i8* nocapture %pix1, i32 %i_stride_pix1, i8* nocapture readonly %pix2, i32 %i_stride_pix2, i8* nocapture readonly %pix3, i32 %i_stride_pix3, i32 %weight) #2 {
entry:
  %cmp = icmp eq i32 %weight, 32
  br i1 %cmp, label %for.cond1.preheader.us.i.preheader, label %if.else

for.cond1.preheader.us.i.preheader:               ; preds = %entry
  %0 = load i8, i8* %pix2, align 1, !tbaa !2
  %conv.us.i = zext i8 %0 to i32
  %1 = load i8, i8* %pix3, align 1, !tbaa !2
  %conv6.us.i = zext i8 %1 to i32
  %add.us.i = add nuw nsw i32 %conv.us.i, 1
  %add7.us.i = add nuw nsw i32 %add.us.i, %conv6.us.i
  %2 = lshr i32 %add7.us.i, 1
  %conv8.us.i = trunc i32 %2 to i8
  store i8 %conv8.us.i, i8* %pix1, align 1, !tbaa !2
  %arrayidx.us.i.1 = getelementptr inbounds i8, i8* %pix2, i32 1
  %3 = load i8, i8* %arrayidx.us.i.1, align 1, !tbaa !2
  %conv.us.i.1 = zext i8 %3 to i32
  %arrayidx5.us.i.1 = getelementptr inbounds i8, i8* %pix3, i32 1
  %4 = load i8, i8* %arrayidx5.us.i.1, align 1, !tbaa !2
  %conv6.us.i.1 = zext i8 %4 to i32
  %add.us.i.1 = add nuw nsw i32 %conv.us.i.1, 1
  %add7.us.i.1 = add nuw nsw i32 %add.us.i.1, %conv6.us.i.1
  %5 = lshr i32 %add7.us.i.1, 1
  %conv8.us.i.1 = trunc i32 %5 to i8
  %arrayidx9.us.i.1 = getelementptr inbounds i8, i8* %pix1, i32 1
  store i8 %conv8.us.i.1, i8* %arrayidx9.us.i.1, align 1, !tbaa !2
  %add.ptr.us.i = getelementptr inbounds i8, i8* %pix2, i32 %i_stride_pix2
  %add.ptr10.us.i = getelementptr inbounds i8, i8* %pix3, i32 %i_stride_pix3
  %add.ptr11.us.i = getelementptr inbounds i8, i8* %pix1, i32 %i_stride_pix1
  %6 = load i8, i8* %add.ptr.us.i, align 1, !tbaa !2
  %conv.us.i.116 = zext i8 %6 to i32
  %7 = load i8, i8* %add.ptr10.us.i, align 1, !tbaa !2
  %conv6.us.i.117 = zext i8 %7 to i32
  %add.us.i.118 = add nuw nsw i32 %conv.us.i.116, 1
  %add7.us.i.119 = add nuw nsw i32 %add.us.i.118, %conv6.us.i.117
  %8 = lshr i32 %add7.us.i.119, 1
  %conv8.us.i.120 = trunc i32 %8 to i8
  store i8 %conv8.us.i.120, i8* %add.ptr11.us.i, align 1, !tbaa !2
  %arrayidx.us.i.1.1 = getelementptr inbounds i8, i8* %add.ptr.us.i, i32 1
  %9 = load i8, i8* %arrayidx.us.i.1.1, align 1, !tbaa !2
  %conv.us.i.1.1 = zext i8 %9 to i32
  %arrayidx5.us.i.1.1 = getelementptr inbounds i8, i8* %add.ptr10.us.i, i32 1
  %10 = load i8, i8* %arrayidx5.us.i.1.1, align 1, !tbaa !2
  %conv6.us.i.1.1 = zext i8 %10 to i32
  %add.us.i.1.1 = add nuw nsw i32 %conv.us.i.1.1, 1
  %add7.us.i.1.1 = add nuw nsw i32 %add.us.i.1.1, %conv6.us.i.1.1
  %11 = lshr i32 %add7.us.i.1.1, 1
  br label %if.end

if.else:                                          ; preds = %entry
  %sub.i = sub nsw i32 64, %weight
  %12 = load i8, i8* %pix2, align 1, !tbaa !2
  %conv.us.i4 = zext i8 %12 to i32
  %mul.us.i = mul nsw i32 %conv.us.i4, %weight
  %13 = load i8, i8* %pix3, align 1, !tbaa !2
  %conv6.us.i6 = zext i8 %13 to i32
  %mul7.us.i = mul nsw i32 %sub.i, %conv6.us.i6
  %add.us.i7 = add i32 %mul.us.i, 32
  %add8.us.i = add i32 %add.us.i7, %mul7.us.i
  %shr.us.i = ashr i32 %add8.us.i, 6
  %tobool.i.us.i = icmp ugt i32 %shr.us.i, 255
  %sub.i.us.i = sub nsw i32 0, %shr.us.i
  %shr.i.us.i = ashr i32 %sub.i.us.i, 31
  %cond.i.us.i = select i1 %tobool.i.us.i, i32 %shr.i.us.i, i32 %shr.us.i
  %conv.i.us.i = trunc i32 %cond.i.us.i to i8
  store i8 %conv.i.us.i, i8* %pix1, align 1, !tbaa !2
  %arrayidx.us.i3.1 = getelementptr inbounds i8, i8* %pix2, i32 1
  %14 = load i8, i8* %arrayidx.us.i3.1, align 1, !tbaa !2
  %conv.us.i4.1 = zext i8 %14 to i32
  %mul.us.i.1 = mul nsw i32 %conv.us.i4.1, %weight
  %arrayidx5.us.i5.1 = getelementptr inbounds i8, i8* %pix3, i32 1
  %15 = load i8, i8* %arrayidx5.us.i5.1, align 1, !tbaa !2
  %conv6.us.i6.1 = zext i8 %15 to i32
  %mul7.us.i.1 = mul nsw i32 %sub.i, %conv6.us.i6.1
  %add.us.i7.1 = add i32 %mul.us.i.1, 32
  %add8.us.i.1 = add i32 %add.us.i7.1, %mul7.us.i.1
  %shr.us.i.1 = ashr i32 %add8.us.i.1, 6
  %tobool.i.us.i.1 = icmp ugt i32 %shr.us.i.1, 255
  %sub.i.us.i.1 = sub nsw i32 0, %shr.us.i.1
  %shr.i.us.i.1 = ashr i32 %sub.i.us.i.1, 31
  %cond.i.us.i.1 = select i1 %tobool.i.us.i.1, i32 %shr.i.us.i.1, i32 %shr.us.i.1
  %conv.i.us.i.1 = trunc i32 %cond.i.us.i.1 to i8
  %arrayidx9.us.i8.1 = getelementptr inbounds i8, i8* %pix1, i32 1
  store i8 %conv.i.us.i.1, i8* %arrayidx9.us.i8.1, align 1, !tbaa !2
  %add.ptr.us.i12 = getelementptr inbounds i8, i8* %pix1, i32 %i_stride_pix1
  %add.ptr12.us.i = getelementptr inbounds i8, i8* %pix2, i32 %i_stride_pix2
  %add.ptr13.us.i = getelementptr inbounds i8, i8* %pix3, i32 %i_stride_pix3
  %16 = load i8, i8* %add.ptr12.us.i, align 1, !tbaa !2
  %conv.us.i4.121 = zext i8 %16 to i32
  %mul.us.i.122 = mul nsw i32 %conv.us.i4.121, %weight
  %17 = load i8, i8* %add.ptr13.us.i, align 1, !tbaa !2
  %conv6.us.i6.123 = zext i8 %17 to i32
  %mul7.us.i.124 = mul nsw i32 %sub.i, %conv6.us.i6.123
  %add.us.i7.125 = add i32 %mul.us.i.122, 32
  %add8.us.i.126 = add i32 %add.us.i7.125, %mul7.us.i.124
  %shr.us.i.127 = ashr i32 %add8.us.i.126, 6
  %tobool.i.us.i.128 = icmp ugt i32 %shr.us.i.127, 255
  %sub.i.us.i.129 = sub nsw i32 0, %shr.us.i.127
  %shr.i.us.i.130 = ashr i32 %sub.i.us.i.129, 31
  %cond.i.us.i.131 = select i1 %tobool.i.us.i.128, i32 %shr.i.us.i.130, i32 %shr.us.i.127
  %conv.i.us.i.132 = trunc i32 %cond.i.us.i.131 to i8
  store i8 %conv.i.us.i.132, i8* %add.ptr.us.i12, align 1, !tbaa !2
  %arrayidx.us.i3.1.1 = getelementptr inbounds i8, i8* %add.ptr12.us.i, i32 1
  %18 = load i8, i8* %arrayidx.us.i3.1.1, align 1, !tbaa !2
  %conv.us.i4.1.1 = zext i8 %18 to i32
  %mul.us.i.1.1 = mul nsw i32 %conv.us.i4.1.1, %weight
  %arrayidx5.us.i5.1.1 = getelementptr inbounds i8, i8* %add.ptr13.us.i, i32 1
  %19 = load i8, i8* %arrayidx5.us.i5.1.1, align 1, !tbaa !2
  %conv6.us.i6.1.1 = zext i8 %19 to i32
  %mul7.us.i.1.1 = mul nsw i32 %sub.i, %conv6.us.i6.1.1
  %add.us.i7.1.1 = add i32 %mul.us.i.1.1, 32
  %add8.us.i.1.1 = add i32 %add.us.i7.1.1, %mul7.us.i.1.1
  %shr.us.i.1.1 = ashr i32 %add8.us.i.1.1, 6
  %tobool.i.us.i.1.1 = icmp ugt i32 %shr.us.i.1.1, 255
  %sub.i.us.i.1.1 = sub nsw i32 0, %shr.us.i.1.1
  %shr.i.us.i.1.1 = ashr i32 %sub.i.us.i.1.1, 31
  %cond.i.us.i.1.1 = select i1 %tobool.i.us.i.1.1, i32 %shr.i.us.i.1.1, i32 %shr.us.i.1.1
  br label %if.end

if.end:                                           ; preds = %if.else, %for.cond1.preheader.us.i.preheader
  %cond.i.us.i.1.1.sink = phi i32 [ %cond.i.us.i.1.1, %if.else ], [ %11, %for.cond1.preheader.us.i.preheader ]
  %20 = getelementptr inbounds i8, i8* %pix1, i32 %i_stride_pix1
  %conv.i.us.i.1.1 = trunc i32 %cond.i.us.i.1.1.sink to i8
  %arrayidx9.us.i8.1.1 = getelementptr inbounds i8, i8* %20, i32 1
  store i8 %conv.i.us.i.1.1, i8* %arrayidx9.us.i8.1.1, align 1, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @weight_cache(%struct.x264_t* nocapture readonly %h, %struct.x264_weight_t* nocapture %w) #2 {
entry:
  %weight = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 93, i32 29
  %0 = bitcast void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*** %weight to i32*
  %1 = load i32, i32* %0, align 8, !tbaa !87
  %weightfn = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %w, i32 0, i32 5
  %2 = bitcast void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*** %weightfn to i32*
  store i32 %1, i32* %2, align 4, !tbaa !82
  ret void
}

; Function Attrs: nounwind
define internal void @mc_copy_w16(i8* nocapture %dst, i32 %i_dst, i8* nocapture readonly %src, i32 %i_src, i32 %i_height) #0 {
entry:
  %cmp6.i = icmp sgt i32 %i_height, 0
  br i1 %cmp6.i, label %for.body.i, label %mc_copy.exit

for.body.i:                                       ; preds = %entry, %for.body.i
  %y.09.i = phi i32 [ %inc.i, %for.body.i ], [ 0, %entry ]
  %src.addr.08.i = phi i8* [ %add.ptr.i, %for.body.i ], [ %src, %entry ]
  %dst.addr.07.i = phi i8* [ %add.ptr1.i, %for.body.i ], [ %dst, %entry ]
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 dereferenceable(16) %dst.addr.07.i, i8* nonnull align 1 dereferenceable(16) %src.addr.08.i, i32 16, i1 false) #9
  %add.ptr.i = getelementptr inbounds i8, i8* %src.addr.08.i, i32 %i_src
  %add.ptr1.i = getelementptr inbounds i8, i8* %dst.addr.07.i, i32 %i_dst
  %inc.i = add nuw nsw i32 %y.09.i, 1
  %exitcond.i = icmp eq i32 %inc.i, %i_height
  br i1 %exitcond.i, label %mc_copy.exit, label %for.body.i

mc_copy.exit:                                     ; preds = %for.body.i, %entry
  ret void
}

; Function Attrs: nounwind
define internal void @mc_copy_w8(i8* nocapture %dst, i32 %i_dst, i8* nocapture readonly %src, i32 %i_src, i32 %i_height) #0 {
entry:
  %cmp6.i = icmp sgt i32 %i_height, 0
  br i1 %cmp6.i, label %for.body.i, label %mc_copy.exit

for.body.i:                                       ; preds = %entry, %for.body.i
  %y.09.i = phi i32 [ %inc.i, %for.body.i ], [ 0, %entry ]
  %src.addr.08.i = phi i8* [ %add.ptr.i, %for.body.i ], [ %src, %entry ]
  %dst.addr.07.i = phi i8* [ %add.ptr1.i, %for.body.i ], [ %dst, %entry ]
  %0 = bitcast i8* %src.addr.08.i to i64*
  %1 = bitcast i8* %dst.addr.07.i to i64*
  %2 = load i64, i64* %0, align 1
  store i64 %2, i64* %1, align 1
  %add.ptr.i = getelementptr inbounds i8, i8* %src.addr.08.i, i32 %i_src
  %add.ptr1.i = getelementptr inbounds i8, i8* %dst.addr.07.i, i32 %i_dst
  %inc.i = add nuw nsw i32 %y.09.i, 1
  %exitcond.i = icmp eq i32 %inc.i, %i_height
  br i1 %exitcond.i, label %mc_copy.exit, label %for.body.i

mc_copy.exit:                                     ; preds = %for.body.i, %entry
  ret void
}

; Function Attrs: nounwind
define internal void @mc_copy_w4(i8* nocapture %dst, i32 %i_dst, i8* nocapture readonly %src, i32 %i_src, i32 %i_height) #0 {
entry:
  %cmp6.i = icmp sgt i32 %i_height, 0
  br i1 %cmp6.i, label %for.body.i, label %mc_copy.exit

for.body.i:                                       ; preds = %entry, %for.body.i
  %y.09.i = phi i32 [ %inc.i, %for.body.i ], [ 0, %entry ]
  %src.addr.08.i = phi i8* [ %add.ptr.i, %for.body.i ], [ %src, %entry ]
  %dst.addr.07.i = phi i8* [ %add.ptr1.i, %for.body.i ], [ %dst, %entry ]
  %0 = bitcast i8* %src.addr.08.i to i32*
  %1 = bitcast i8* %dst.addr.07.i to i32*
  %2 = load i32, i32* %0, align 1
  store i32 %2, i32* %1, align 1
  %add.ptr.i = getelementptr inbounds i8, i8* %src.addr.08.i, i32 %i_src
  %add.ptr1.i = getelementptr inbounds i8, i8* %dst.addr.07.i, i32 %i_dst
  %inc.i = add nuw nsw i32 %y.09.i, 1
  %exitcond.i = icmp eq i32 %inc.i, %i_height
  br i1 %exitcond.i, label %mc_copy.exit, label %for.body.i

mc_copy.exit:                                     ; preds = %for.body.i, %entry
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @store_interleave_chroma(i8* nocapture %dst, i32 %i_dst, i8* nocapture readonly %srcu, i8* nocapture readonly %srcv, i32 %height) #2 {
entry:
  %cmp27 = icmp sgt i32 %height, 0
  br i1 %cmp27, label %for.cond1.preheader, label %for.cond.cleanup

for.cond1.preheader:                              ; preds = %entry, %for.cond1.preheader
  %y.031 = phi i32 [ %inc10, %for.cond1.preheader ], [ 0, %entry ]
  %dst.addr.030 = phi i8* [ %add.ptr, %for.cond1.preheader ], [ %dst, %entry ]
  %srcv.addr.029 = phi i8* [ %add.ptr12, %for.cond1.preheader ], [ %srcv, %entry ]
  %srcu.addr.028 = phi i8* [ %add.ptr11, %for.cond1.preheader ], [ %srcu, %entry ]
  %0 = load i8, i8* %srcu.addr.028, align 1, !tbaa !2
  store i8 %0, i8* %dst.addr.030, align 1, !tbaa !2
  %1 = load i8, i8* %srcv.addr.029, align 1, !tbaa !2
  %arrayidx8 = getelementptr inbounds i8, i8* %dst.addr.030, i32 1
  store i8 %1, i8* %arrayidx8, align 1, !tbaa !2
  %arrayidx.1 = getelementptr inbounds i8, i8* %srcu.addr.028, i32 1
  %2 = load i8, i8* %arrayidx.1, align 1, !tbaa !2
  %arrayidx5.1 = getelementptr inbounds i8, i8* %dst.addr.030, i32 2
  store i8 %2, i8* %arrayidx5.1, align 1, !tbaa !2
  %arrayidx6.1 = getelementptr inbounds i8, i8* %srcv.addr.029, i32 1
  %3 = load i8, i8* %arrayidx6.1, align 1, !tbaa !2
  %arrayidx8.1 = getelementptr inbounds i8, i8* %dst.addr.030, i32 3
  store i8 %3, i8* %arrayidx8.1, align 1, !tbaa !2
  %arrayidx.2 = getelementptr inbounds i8, i8* %srcu.addr.028, i32 2
  %4 = load i8, i8* %arrayidx.2, align 1, !tbaa !2
  %arrayidx5.2 = getelementptr inbounds i8, i8* %dst.addr.030, i32 4
  store i8 %4, i8* %arrayidx5.2, align 1, !tbaa !2
  %arrayidx6.2 = getelementptr inbounds i8, i8* %srcv.addr.029, i32 2
  %5 = load i8, i8* %arrayidx6.2, align 1, !tbaa !2
  %arrayidx8.2 = getelementptr inbounds i8, i8* %dst.addr.030, i32 5
  store i8 %5, i8* %arrayidx8.2, align 1, !tbaa !2
  %arrayidx.3 = getelementptr inbounds i8, i8* %srcu.addr.028, i32 3
  %6 = load i8, i8* %arrayidx.3, align 1, !tbaa !2
  %arrayidx5.3 = getelementptr inbounds i8, i8* %dst.addr.030, i32 6
  store i8 %6, i8* %arrayidx5.3, align 1, !tbaa !2
  %arrayidx6.3 = getelementptr inbounds i8, i8* %srcv.addr.029, i32 3
  %7 = load i8, i8* %arrayidx6.3, align 1, !tbaa !2
  %arrayidx8.3 = getelementptr inbounds i8, i8* %dst.addr.030, i32 7
  store i8 %7, i8* %arrayidx8.3, align 1, !tbaa !2
  %arrayidx.4 = getelementptr inbounds i8, i8* %srcu.addr.028, i32 4
  %8 = load i8, i8* %arrayidx.4, align 1, !tbaa !2
  %arrayidx5.4 = getelementptr inbounds i8, i8* %dst.addr.030, i32 8
  store i8 %8, i8* %arrayidx5.4, align 1, !tbaa !2
  %arrayidx6.4 = getelementptr inbounds i8, i8* %srcv.addr.029, i32 4
  %9 = load i8, i8* %arrayidx6.4, align 1, !tbaa !2
  %arrayidx8.4 = getelementptr inbounds i8, i8* %dst.addr.030, i32 9
  store i8 %9, i8* %arrayidx8.4, align 1, !tbaa !2
  %arrayidx.5 = getelementptr inbounds i8, i8* %srcu.addr.028, i32 5
  %10 = load i8, i8* %arrayidx.5, align 1, !tbaa !2
  %arrayidx5.5 = getelementptr inbounds i8, i8* %dst.addr.030, i32 10
  store i8 %10, i8* %arrayidx5.5, align 1, !tbaa !2
  %arrayidx6.5 = getelementptr inbounds i8, i8* %srcv.addr.029, i32 5
  %11 = load i8, i8* %arrayidx6.5, align 1, !tbaa !2
  %arrayidx8.5 = getelementptr inbounds i8, i8* %dst.addr.030, i32 11
  store i8 %11, i8* %arrayidx8.5, align 1, !tbaa !2
  %arrayidx.6 = getelementptr inbounds i8, i8* %srcu.addr.028, i32 6
  %12 = load i8, i8* %arrayidx.6, align 1, !tbaa !2
  %arrayidx5.6 = getelementptr inbounds i8, i8* %dst.addr.030, i32 12
  store i8 %12, i8* %arrayidx5.6, align 1, !tbaa !2
  %arrayidx6.6 = getelementptr inbounds i8, i8* %srcv.addr.029, i32 6
  %13 = load i8, i8* %arrayidx6.6, align 1, !tbaa !2
  %arrayidx8.6 = getelementptr inbounds i8, i8* %dst.addr.030, i32 13
  store i8 %13, i8* %arrayidx8.6, align 1, !tbaa !2
  %arrayidx.7 = getelementptr inbounds i8, i8* %srcu.addr.028, i32 7
  %14 = load i8, i8* %arrayidx.7, align 1, !tbaa !2
  %arrayidx5.7 = getelementptr inbounds i8, i8* %dst.addr.030, i32 14
  store i8 %14, i8* %arrayidx5.7, align 1, !tbaa !2
  %arrayidx6.7 = getelementptr inbounds i8, i8* %srcv.addr.029, i32 7
  %15 = load i8, i8* %arrayidx6.7, align 1, !tbaa !2
  %arrayidx8.7 = getelementptr inbounds i8, i8* %dst.addr.030, i32 15
  store i8 %15, i8* %arrayidx8.7, align 1, !tbaa !2
  %inc10 = add nuw nsw i32 %y.031, 1
  %add.ptr = getelementptr inbounds i8, i8* %dst.addr.030, i32 %i_dst
  %add.ptr11 = getelementptr inbounds i8, i8* %srcu.addr.028, i32 32
  %add.ptr12 = getelementptr inbounds i8, i8* %srcv.addr.029, i32 32
  %exitcond = icmp eq i32 %inc10, %height
  br i1 %exitcond, label %for.cond.cleanup, label %for.cond1.preheader

for.cond.cleanup:                                 ; preds = %for.cond1.preheader, %entry
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @load_deinterleave_chroma_fenc(i8* nocapture %dst, i8* nocapture readonly %src, i32 %i_src, i32 %height) #2 {
entry:
  %cmp28.i = icmp sgt i32 %height, 0
  br i1 %cmp28.i, label %for.cond1.preheader.us.i.preheader, label %x264_8_plane_copy_deinterleave_c.exit

for.cond1.preheader.us.i.preheader:               ; preds = %entry
  %add.ptr = getelementptr inbounds i8, i8* %dst, i32 8
  br label %for.cond1.preheader.us.i

for.cond1.preheader.us.i:                         ; preds = %for.cond1.preheader.us.i.preheader, %for.cond1.preheader.us.i
  %y.032.us.i = phi i32 [ %inc10.us.i, %for.cond1.preheader.us.i ], [ 0, %for.cond1.preheader.us.i.preheader ]
  %dsta.addr.031.us.i = phi i8* [ %add.ptr.us.i, %for.cond1.preheader.us.i ], [ %dst, %for.cond1.preheader.us.i.preheader ]
  %dstb.addr.030.us.i = phi i8* [ %add.ptr11.us.i, %for.cond1.preheader.us.i ], [ %add.ptr, %for.cond1.preheader.us.i.preheader ]
  %src.addr.029.us.i = phi i8* [ %add.ptr12.us.i, %for.cond1.preheader.us.i ], [ %src, %for.cond1.preheader.us.i.preheader ]
  %0 = load i8, i8* %src.addr.029.us.i, align 1, !tbaa !2
  store i8 %0, i8* %dsta.addr.031.us.i, align 1, !tbaa !2
  %arrayidx7.us.i = getelementptr inbounds i8, i8* %src.addr.029.us.i, i32 1
  %1 = load i8, i8* %arrayidx7.us.i, align 1, !tbaa !2
  store i8 %1, i8* %dstb.addr.030.us.i, align 1, !tbaa !2
  %arrayidx.us.i.1 = getelementptr inbounds i8, i8* %src.addr.029.us.i, i32 2
  %2 = load i8, i8* %arrayidx.us.i.1, align 1, !tbaa !2
  %arrayidx5.us.i.1 = getelementptr inbounds i8, i8* %dsta.addr.031.us.i, i32 1
  store i8 %2, i8* %arrayidx5.us.i.1, align 1, !tbaa !2
  %arrayidx7.us.i.1 = getelementptr inbounds i8, i8* %src.addr.029.us.i, i32 3
  %3 = load i8, i8* %arrayidx7.us.i.1, align 1, !tbaa !2
  %arrayidx8.us.i.1 = getelementptr inbounds i8, i8* %dstb.addr.030.us.i, i32 1
  store i8 %3, i8* %arrayidx8.us.i.1, align 1, !tbaa !2
  %arrayidx.us.i.2 = getelementptr inbounds i8, i8* %src.addr.029.us.i, i32 4
  %4 = load i8, i8* %arrayidx.us.i.2, align 1, !tbaa !2
  %arrayidx5.us.i.2 = getelementptr inbounds i8, i8* %dsta.addr.031.us.i, i32 2
  store i8 %4, i8* %arrayidx5.us.i.2, align 1, !tbaa !2
  %arrayidx7.us.i.2 = getelementptr inbounds i8, i8* %src.addr.029.us.i, i32 5
  %5 = load i8, i8* %arrayidx7.us.i.2, align 1, !tbaa !2
  %arrayidx8.us.i.2 = getelementptr inbounds i8, i8* %dstb.addr.030.us.i, i32 2
  store i8 %5, i8* %arrayidx8.us.i.2, align 1, !tbaa !2
  %arrayidx.us.i.3 = getelementptr inbounds i8, i8* %src.addr.029.us.i, i32 6
  %6 = load i8, i8* %arrayidx.us.i.3, align 1, !tbaa !2
  %arrayidx5.us.i.3 = getelementptr inbounds i8, i8* %dsta.addr.031.us.i, i32 3
  store i8 %6, i8* %arrayidx5.us.i.3, align 1, !tbaa !2
  %arrayidx7.us.i.3 = getelementptr inbounds i8, i8* %src.addr.029.us.i, i32 7
  %7 = load i8, i8* %arrayidx7.us.i.3, align 1, !tbaa !2
  %arrayidx8.us.i.3 = getelementptr inbounds i8, i8* %dstb.addr.030.us.i, i32 3
  store i8 %7, i8* %arrayidx8.us.i.3, align 1, !tbaa !2
  %arrayidx.us.i.4 = getelementptr inbounds i8, i8* %src.addr.029.us.i, i32 8
  %8 = load i8, i8* %arrayidx.us.i.4, align 1, !tbaa !2
  %arrayidx5.us.i.4 = getelementptr inbounds i8, i8* %dsta.addr.031.us.i, i32 4
  store i8 %8, i8* %arrayidx5.us.i.4, align 1, !tbaa !2
  %arrayidx7.us.i.4 = getelementptr inbounds i8, i8* %src.addr.029.us.i, i32 9
  %9 = load i8, i8* %arrayidx7.us.i.4, align 1, !tbaa !2
  %arrayidx8.us.i.4 = getelementptr inbounds i8, i8* %dstb.addr.030.us.i, i32 4
  store i8 %9, i8* %arrayidx8.us.i.4, align 1, !tbaa !2
  %arrayidx.us.i.5 = getelementptr inbounds i8, i8* %src.addr.029.us.i, i32 10
  %10 = load i8, i8* %arrayidx.us.i.5, align 1, !tbaa !2
  %arrayidx5.us.i.5 = getelementptr inbounds i8, i8* %dsta.addr.031.us.i, i32 5
  store i8 %10, i8* %arrayidx5.us.i.5, align 1, !tbaa !2
  %arrayidx7.us.i.5 = getelementptr inbounds i8, i8* %src.addr.029.us.i, i32 11
  %11 = load i8, i8* %arrayidx7.us.i.5, align 1, !tbaa !2
  %arrayidx8.us.i.5 = getelementptr inbounds i8, i8* %dstb.addr.030.us.i, i32 5
  store i8 %11, i8* %arrayidx8.us.i.5, align 1, !tbaa !2
  %arrayidx.us.i.6 = getelementptr inbounds i8, i8* %src.addr.029.us.i, i32 12
  %12 = load i8, i8* %arrayidx.us.i.6, align 1, !tbaa !2
  %arrayidx5.us.i.6 = getelementptr inbounds i8, i8* %dsta.addr.031.us.i, i32 6
  store i8 %12, i8* %arrayidx5.us.i.6, align 1, !tbaa !2
  %arrayidx7.us.i.6 = getelementptr inbounds i8, i8* %src.addr.029.us.i, i32 13
  %13 = load i8, i8* %arrayidx7.us.i.6, align 1, !tbaa !2
  %arrayidx8.us.i.6 = getelementptr inbounds i8, i8* %dstb.addr.030.us.i, i32 6
  store i8 %13, i8* %arrayidx8.us.i.6, align 1, !tbaa !2
  %arrayidx.us.i.7 = getelementptr inbounds i8, i8* %src.addr.029.us.i, i32 14
  %14 = load i8, i8* %arrayidx.us.i.7, align 1, !tbaa !2
  %arrayidx5.us.i.7 = getelementptr inbounds i8, i8* %dsta.addr.031.us.i, i32 7
  store i8 %14, i8* %arrayidx5.us.i.7, align 1, !tbaa !2
  %arrayidx7.us.i.7 = getelementptr inbounds i8, i8* %src.addr.029.us.i, i32 15
  %15 = load i8, i8* %arrayidx7.us.i.7, align 1, !tbaa !2
  %arrayidx8.us.i.7 = getelementptr inbounds i8, i8* %dstb.addr.030.us.i, i32 7
  store i8 %15, i8* %arrayidx8.us.i.7, align 1, !tbaa !2
  %inc10.us.i = add nuw nsw i32 %y.032.us.i, 1
  %add.ptr.us.i = getelementptr inbounds i8, i8* %dsta.addr.031.us.i, i32 16
  %add.ptr11.us.i = getelementptr inbounds i8, i8* %dstb.addr.030.us.i, i32 16
  %add.ptr12.us.i = getelementptr inbounds i8, i8* %src.addr.029.us.i, i32 %i_src
  %exitcond34.i = icmp eq i32 %inc10.us.i, %height
  br i1 %exitcond34.i, label %x264_8_plane_copy_deinterleave_c.exit, label %for.cond1.preheader.us.i

x264_8_plane_copy_deinterleave_c.exit:            ; preds = %for.cond1.preheader.us.i, %entry
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @load_deinterleave_chroma_fdec(i8* nocapture %dst, i8* nocapture readonly %src, i32 %i_src, i32 %height) #2 {
entry:
  %cmp28.i = icmp sgt i32 %height, 0
  br i1 %cmp28.i, label %for.cond1.preheader.us.i.preheader, label %x264_8_plane_copy_deinterleave_c.exit

for.cond1.preheader.us.i.preheader:               ; preds = %entry
  %add.ptr = getelementptr inbounds i8, i8* %dst, i32 16
  br label %for.cond1.preheader.us.i

for.cond1.preheader.us.i:                         ; preds = %for.cond1.preheader.us.i.preheader, %for.cond1.preheader.us.i
  %y.032.us.i = phi i32 [ %inc10.us.i, %for.cond1.preheader.us.i ], [ 0, %for.cond1.preheader.us.i.preheader ]
  %dsta.addr.031.us.i = phi i8* [ %add.ptr.us.i, %for.cond1.preheader.us.i ], [ %dst, %for.cond1.preheader.us.i.preheader ]
  %dstb.addr.030.us.i = phi i8* [ %add.ptr11.us.i, %for.cond1.preheader.us.i ], [ %add.ptr, %for.cond1.preheader.us.i.preheader ]
  %src.addr.029.us.i = phi i8* [ %add.ptr12.us.i, %for.cond1.preheader.us.i ], [ %src, %for.cond1.preheader.us.i.preheader ]
  %0 = load i8, i8* %src.addr.029.us.i, align 1, !tbaa !2
  store i8 %0, i8* %dsta.addr.031.us.i, align 1, !tbaa !2
  %arrayidx7.us.i = getelementptr inbounds i8, i8* %src.addr.029.us.i, i32 1
  %1 = load i8, i8* %arrayidx7.us.i, align 1, !tbaa !2
  store i8 %1, i8* %dstb.addr.030.us.i, align 1, !tbaa !2
  %arrayidx.us.i.1 = getelementptr inbounds i8, i8* %src.addr.029.us.i, i32 2
  %2 = load i8, i8* %arrayidx.us.i.1, align 1, !tbaa !2
  %arrayidx5.us.i.1 = getelementptr inbounds i8, i8* %dsta.addr.031.us.i, i32 1
  store i8 %2, i8* %arrayidx5.us.i.1, align 1, !tbaa !2
  %arrayidx7.us.i.1 = getelementptr inbounds i8, i8* %src.addr.029.us.i, i32 3
  %3 = load i8, i8* %arrayidx7.us.i.1, align 1, !tbaa !2
  %arrayidx8.us.i.1 = getelementptr inbounds i8, i8* %dstb.addr.030.us.i, i32 1
  store i8 %3, i8* %arrayidx8.us.i.1, align 1, !tbaa !2
  %arrayidx.us.i.2 = getelementptr inbounds i8, i8* %src.addr.029.us.i, i32 4
  %4 = load i8, i8* %arrayidx.us.i.2, align 1, !tbaa !2
  %arrayidx5.us.i.2 = getelementptr inbounds i8, i8* %dsta.addr.031.us.i, i32 2
  store i8 %4, i8* %arrayidx5.us.i.2, align 1, !tbaa !2
  %arrayidx7.us.i.2 = getelementptr inbounds i8, i8* %src.addr.029.us.i, i32 5
  %5 = load i8, i8* %arrayidx7.us.i.2, align 1, !tbaa !2
  %arrayidx8.us.i.2 = getelementptr inbounds i8, i8* %dstb.addr.030.us.i, i32 2
  store i8 %5, i8* %arrayidx8.us.i.2, align 1, !tbaa !2
  %arrayidx.us.i.3 = getelementptr inbounds i8, i8* %src.addr.029.us.i, i32 6
  %6 = load i8, i8* %arrayidx.us.i.3, align 1, !tbaa !2
  %arrayidx5.us.i.3 = getelementptr inbounds i8, i8* %dsta.addr.031.us.i, i32 3
  store i8 %6, i8* %arrayidx5.us.i.3, align 1, !tbaa !2
  %arrayidx7.us.i.3 = getelementptr inbounds i8, i8* %src.addr.029.us.i, i32 7
  %7 = load i8, i8* %arrayidx7.us.i.3, align 1, !tbaa !2
  %arrayidx8.us.i.3 = getelementptr inbounds i8, i8* %dstb.addr.030.us.i, i32 3
  store i8 %7, i8* %arrayidx8.us.i.3, align 1, !tbaa !2
  %arrayidx.us.i.4 = getelementptr inbounds i8, i8* %src.addr.029.us.i, i32 8
  %8 = load i8, i8* %arrayidx.us.i.4, align 1, !tbaa !2
  %arrayidx5.us.i.4 = getelementptr inbounds i8, i8* %dsta.addr.031.us.i, i32 4
  store i8 %8, i8* %arrayidx5.us.i.4, align 1, !tbaa !2
  %arrayidx7.us.i.4 = getelementptr inbounds i8, i8* %src.addr.029.us.i, i32 9
  %9 = load i8, i8* %arrayidx7.us.i.4, align 1, !tbaa !2
  %arrayidx8.us.i.4 = getelementptr inbounds i8, i8* %dstb.addr.030.us.i, i32 4
  store i8 %9, i8* %arrayidx8.us.i.4, align 1, !tbaa !2
  %arrayidx.us.i.5 = getelementptr inbounds i8, i8* %src.addr.029.us.i, i32 10
  %10 = load i8, i8* %arrayidx.us.i.5, align 1, !tbaa !2
  %arrayidx5.us.i.5 = getelementptr inbounds i8, i8* %dsta.addr.031.us.i, i32 5
  store i8 %10, i8* %arrayidx5.us.i.5, align 1, !tbaa !2
  %arrayidx7.us.i.5 = getelementptr inbounds i8, i8* %src.addr.029.us.i, i32 11
  %11 = load i8, i8* %arrayidx7.us.i.5, align 1, !tbaa !2
  %arrayidx8.us.i.5 = getelementptr inbounds i8, i8* %dstb.addr.030.us.i, i32 5
  store i8 %11, i8* %arrayidx8.us.i.5, align 1, !tbaa !2
  %arrayidx.us.i.6 = getelementptr inbounds i8, i8* %src.addr.029.us.i, i32 12
  %12 = load i8, i8* %arrayidx.us.i.6, align 1, !tbaa !2
  %arrayidx5.us.i.6 = getelementptr inbounds i8, i8* %dsta.addr.031.us.i, i32 6
  store i8 %12, i8* %arrayidx5.us.i.6, align 1, !tbaa !2
  %arrayidx7.us.i.6 = getelementptr inbounds i8, i8* %src.addr.029.us.i, i32 13
  %13 = load i8, i8* %arrayidx7.us.i.6, align 1, !tbaa !2
  %arrayidx8.us.i.6 = getelementptr inbounds i8, i8* %dstb.addr.030.us.i, i32 6
  store i8 %13, i8* %arrayidx8.us.i.6, align 1, !tbaa !2
  %arrayidx.us.i.7 = getelementptr inbounds i8, i8* %src.addr.029.us.i, i32 14
  %14 = load i8, i8* %arrayidx.us.i.7, align 1, !tbaa !2
  %arrayidx5.us.i.7 = getelementptr inbounds i8, i8* %dsta.addr.031.us.i, i32 7
  store i8 %14, i8* %arrayidx5.us.i.7, align 1, !tbaa !2
  %arrayidx7.us.i.7 = getelementptr inbounds i8, i8* %src.addr.029.us.i, i32 15
  %15 = load i8, i8* %arrayidx7.us.i.7, align 1, !tbaa !2
  %arrayidx8.us.i.7 = getelementptr inbounds i8, i8* %dstb.addr.030.us.i, i32 7
  store i8 %15, i8* %arrayidx8.us.i.7, align 1, !tbaa !2
  %inc10.us.i = add nuw nsw i32 %y.032.us.i, 1
  %add.ptr.us.i = getelementptr inbounds i8, i8* %dsta.addr.031.us.i, i32 32
  %add.ptr11.us.i = getelementptr inbounds i8, i8* %dstb.addr.030.us.i, i32 32
  %add.ptr12.us.i = getelementptr inbounds i8, i8* %src.addr.029.us.i, i32 %i_src
  %exitcond34.i = icmp eq i32 %inc10.us.i, %height
  br i1 %exitcond34.i, label %x264_8_plane_copy_deinterleave_c.exit, label %for.cond1.preheader.us.i

x264_8_plane_copy_deinterleave_c.exit:            ; preds = %for.cond1.preheader.us.i, %entry
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @plane_copy_deinterleave_rgb_c(i8* nocapture %dsta, i32 %i_dsta, i8* nocapture %dstb, i32 %i_dstb, i8* nocapture %dstc, i32 %i_dstc, i8* nocapture readonly %src, i32 %i_src, i32 %pw, i32 %w, i32 %h) #2 {
entry:
  %cmp39 = icmp sgt i32 %h, 0
  %cmp237 = icmp sgt i32 %w, 0
  %or.cond = and i1 %cmp39, %cmp237
  br i1 %or.cond, label %for.cond1.preheader.us, label %for.cond.cleanup

for.cond1.preheader.us:                           ; preds = %entry, %for.cond1.for.cond.cleanup3_crit_edge.us
  %y.044.us = phi i32 [ %inc14.us, %for.cond1.for.cond.cleanup3_crit_edge.us ], [ 0, %entry ]
  %dsta.addr.043.us = phi i8* [ %add.ptr.us, %for.cond1.for.cond.cleanup3_crit_edge.us ], [ %dsta, %entry ]
  %dstb.addr.042.us = phi i8* [ %add.ptr15.us, %for.cond1.for.cond.cleanup3_crit_edge.us ], [ %dstb, %entry ]
  %dstc.addr.041.us = phi i8* [ %add.ptr16.us, %for.cond1.for.cond.cleanup3_crit_edge.us ], [ %dstc, %entry ]
  %src.addr.040.us = phi i8* [ %add.ptr17.us, %for.cond1.for.cond.cleanup3_crit_edge.us ], [ %src, %entry ]
  br label %for.body4.us

for.body4.us:                                     ; preds = %for.body4.us, %for.cond1.preheader.us
  %x.038.us = phi i32 [ 0, %for.cond1.preheader.us ], [ %inc.us, %for.body4.us ]
  %mul.us = mul nsw i32 %x.038.us, %pw
  %arrayidx.us = getelementptr inbounds i8, i8* %src.addr.040.us, i32 %mul.us
  %0 = load i8, i8* %arrayidx.us, align 1, !tbaa !2
  %arrayidx5.us = getelementptr inbounds i8, i8* %dsta.addr.043.us, i32 %x.038.us
  store i8 %0, i8* %arrayidx5.us, align 1, !tbaa !2
  %add.us = add nsw i32 %mul.us, 1
  %arrayidx7.us = getelementptr inbounds i8, i8* %src.addr.040.us, i32 %add.us
  %1 = load i8, i8* %arrayidx7.us, align 1, !tbaa !2
  %arrayidx8.us = getelementptr inbounds i8, i8* %dstb.addr.042.us, i32 %x.038.us
  store i8 %1, i8* %arrayidx8.us, align 1, !tbaa !2
  %add10.us = add nsw i32 %mul.us, 2
  %arrayidx11.us = getelementptr inbounds i8, i8* %src.addr.040.us, i32 %add10.us
  %2 = load i8, i8* %arrayidx11.us, align 1, !tbaa !2
  %arrayidx12.us = getelementptr inbounds i8, i8* %dstc.addr.041.us, i32 %x.038.us
  store i8 %2, i8* %arrayidx12.us, align 1, !tbaa !2
  %inc.us = add nuw nsw i32 %x.038.us, 1
  %exitcond = icmp eq i32 %inc.us, %w
  br i1 %exitcond, label %for.cond1.for.cond.cleanup3_crit_edge.us, label %for.body4.us

for.cond1.for.cond.cleanup3_crit_edge.us:         ; preds = %for.body4.us
  %inc14.us = add nuw nsw i32 %y.044.us, 1
  %add.ptr.us = getelementptr inbounds i8, i8* %dsta.addr.043.us, i32 %i_dsta
  %add.ptr15.us = getelementptr inbounds i8, i8* %dstb.addr.042.us, i32 %i_dstb
  %add.ptr16.us = getelementptr inbounds i8, i8* %dstc.addr.041.us, i32 %i_dstc
  %add.ptr17.us = getelementptr inbounds i8, i8* %src.addr.040.us, i32 %i_src
  %exitcond46 = icmp eq i32 %inc14.us, %h
  br i1 %exitcond46, label %for.cond.cleanup, label %for.cond1.preheader.us

for.cond.cleanup:                                 ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us, %entry
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @plane_copy_deinterleave_v210_c(i8* nocapture %dsty, i32 %i_dsty, i8* nocapture %dstc, i32 %i_dstc, i32* nocapture readonly %src, i32 %i_src, i32 %w, i32 %h) #2 {
entry:
  %cmp55 = icmp sgt i32 %h, 0
  %cmp250 = icmp sgt i32 %w, 0
  %or.cond = and i1 %cmp55, %cmp250
  br i1 %or.cond, label %for.cond1.preheader.us, label %for.cond.cleanup

for.cond1.preheader.us:                           ; preds = %entry, %for.cond1.for.cond.cleanup3_crit_edge.us
  %dsty.addr.061.us = phi i8* [ %add.ptr.us, %for.cond1.for.cond.cleanup3_crit_edge.us ], [ %dsty, %entry ]
  %l.060.us = phi i32 [ %inc.us, %for.cond1.for.cond.cleanup3_crit_edge.us ], [ 0, %entry ]
  %dstc.addr.058.us = phi i8* [ %add.ptr25.us, %for.cond1.for.cond.cleanup3_crit_edge.us ], [ %dstc, %entry ]
  %src.addr.056.us = phi i32* [ %add.ptr26.us, %for.cond1.for.cond.cleanup3_crit_edge.us ], [ %src, %entry ]
  br label %for.body4.us

for.body4.us:                                     ; preds = %for.cond1.preheader.us, %for.body4.us
  %n.054.us = phi i32 [ 0, %for.cond1.preheader.us ], [ %add.us, %for.body4.us ]
  %src0.053.us = phi i32* [ %src.addr.056.us, %for.cond1.preheader.us ], [ %incdec.ptr13.us, %for.body4.us ]
  %dstc0.052.us = phi i8* [ %dstc.addr.058.us, %for.cond1.preheader.us ], [ %incdec.ptr20.us, %for.body4.us ]
  %dsty0.051.us = phi i8* [ %dsty.addr.061.us, %for.cond1.preheader.us ], [ %incdec.ptr24.us, %for.body4.us ]
  %incdec.ptr.us = getelementptr inbounds i32, i32* %src0.053.us, i32 1
  %0 = load i32, i32* %src0.053.us, align 4, !tbaa !7
  %conv.us = trunc i32 %0 to i8
  %incdec.ptr5.us = getelementptr inbounds i8, i8* %dstc0.052.us, i32 1
  store i8 %conv.us, i8* %dstc0.052.us, align 1, !tbaa !2
  %shr.us = lshr i32 %0, 10
  %conv7.us = trunc i32 %shr.us to i8
  %incdec.ptr8.us = getelementptr inbounds i8, i8* %dsty0.051.us, i32 1
  store i8 %conv7.us, i8* %dsty0.051.us, align 1, !tbaa !2
  %shr9.us = lshr i32 %0, 20
  %conv11.us = trunc i32 %shr9.us to i8
  %incdec.ptr12.us = getelementptr inbounds i8, i8* %dstc0.052.us, i32 2
  store i8 %conv11.us, i8* %incdec.ptr5.us, align 1, !tbaa !2
  %incdec.ptr13.us = getelementptr inbounds i32, i32* %src0.053.us, i32 2
  %1 = load i32, i32* %incdec.ptr.us, align 4, !tbaa !7
  %conv15.us = trunc i32 %1 to i8
  %incdec.ptr16.us = getelementptr inbounds i8, i8* %dsty0.051.us, i32 2
  store i8 %conv15.us, i8* %incdec.ptr8.us, align 1, !tbaa !2
  %shr17.us = lshr i32 %1, 10
  %conv19.us = trunc i32 %shr17.us to i8
  %incdec.ptr20.us = getelementptr inbounds i8, i8* %dstc0.052.us, i32 3
  store i8 %conv19.us, i8* %incdec.ptr12.us, align 1, !tbaa !2
  %shr21.us = lshr i32 %1, 20
  %conv23.us = trunc i32 %shr21.us to i8
  %incdec.ptr24.us = getelementptr inbounds i8, i8* %dsty0.051.us, i32 3
  store i8 %conv23.us, i8* %incdec.ptr16.us, align 1, !tbaa !2
  %add.us = add nuw nsw i32 %n.054.us, 3
  %cmp2.us = icmp slt i32 %add.us, %w
  br i1 %cmp2.us, label %for.body4.us, label %for.cond1.for.cond.cleanup3_crit_edge.us

for.cond1.for.cond.cleanup3_crit_edge.us:         ; preds = %for.body4.us
  %add.ptr.us = getelementptr inbounds i8, i8* %dsty.addr.061.us, i32 %i_dsty
  %add.ptr25.us = getelementptr inbounds i8, i8* %dstc.addr.058.us, i32 %i_dstc
  %add.ptr26.us = getelementptr inbounds i32, i32* %src.addr.056.us, i32 %i_src
  %inc.us = add nuw nsw i32 %l.060.us, 1
  %exitcond = icmp eq i32 %inc.us, %h
  br i1 %exitcond, label %for.cond.cleanup, label %for.cond1.preheader.us

for.cond.cleanup:                                 ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us, %entry
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @hpel_filter(i8* nocapture %dsth, i8* nocapture %dstv, i8* nocapture %dstc, i8* nocapture readonly %src, i32 %stride, i32 %width, i32 %height, i16* nocapture %buf) #2 {
entry:
  %cmp201 = icmp sgt i32 %height, 0
  br i1 %cmp201, label %for.cond1.preheader.lr.ph, label %for.cond.cleanup

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %cmp2195 = icmp sgt i32 %width, -5
  %mul = shl nsw i32 %stride, 1
  %mul5 = mul nsw i32 %stride, 3
  %cmp36197 = icmp sgt i32 %width, 0
  %add.ptr = getelementptr inbounds i16, i16* %buf, i32 2
  %0 = add nsw i32 %width, 2
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond.cleanup81, %for.cond1.preheader.lr.ph
  %dsth.addr.0206 = phi i8* [ %dsth, %for.cond1.preheader.lr.ph ], [ %add.ptr114, %for.cond.cleanup81 ]
  %y.0205 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %inc119, %for.cond.cleanup81 ]
  %dstv.addr.0204 = phi i8* [ %dstv, %for.cond1.preheader.lr.ph ], [ %add.ptr115, %for.cond.cleanup81 ]
  %dstc.addr.0203 = phi i8* [ %dstc, %for.cond1.preheader.lr.ph ], [ %add.ptr116, %for.cond.cleanup81 ]
  %src.addr.0202 = phi i8* [ %src, %for.cond1.preheader.lr.ph ], [ %add.ptr117, %for.cond.cleanup81 ]
  br i1 %cmp2195, label %for.body4, label %for.cond35.preheader

for.cond.cleanup:                                 ; preds = %for.cond.cleanup81, %entry
  ret void

for.cond35.preheader:                             ; preds = %for.body4, %for.cond1.preheader
  br i1 %cmp36197, label %for.body39, label %for.cond.cleanup81

for.body4:                                        ; preds = %for.cond1.preheader, %for.body4
  %x.0196 = phi i32 [ %inc, %for.body4 ], [ -2, %for.cond1.preheader ]
  %sub = sub nsw i32 %x.0196, %mul
  %arrayidx = getelementptr inbounds i8, i8* %src.addr.0202, i32 %sub
  %1 = load i8, i8* %arrayidx, align 1, !tbaa !2
  %conv = zext i8 %1 to i32
  %add6 = add nsw i32 %x.0196, %mul5
  %arrayidx7 = getelementptr inbounds i8, i8* %src.addr.0202, i32 %add6
  %2 = load i8, i8* %arrayidx7, align 1, !tbaa !2
  %conv8 = zext i8 %2 to i32
  %add9 = add nuw nsw i32 %conv8, %conv
  %sub10 = sub nsw i32 %x.0196, %stride
  %arrayidx11 = getelementptr inbounds i8, i8* %src.addr.0202, i32 %sub10
  %3 = load i8, i8* %arrayidx11, align 1, !tbaa !2
  %conv12 = zext i8 %3 to i32
  %add14 = add nsw i32 %x.0196, %mul
  %arrayidx15 = getelementptr inbounds i8, i8* %src.addr.0202, i32 %add14
  %4 = load i8, i8* %arrayidx15, align 1, !tbaa !2
  %conv16 = zext i8 %4 to i32
  %add17 = add nuw nsw i32 %conv16, %conv12
  %5 = mul nsw i32 %add17, -5
  %sub19 = add nsw i32 %add9, %5
  %arrayidx20 = getelementptr inbounds i8, i8* %src.addr.0202, i32 %x.0196
  %6 = load i8, i8* %arrayidx20, align 1, !tbaa !2
  %conv21 = zext i8 %6 to i32
  %add22 = add nsw i32 %x.0196, %stride
  %arrayidx23 = getelementptr inbounds i8, i8* %src.addr.0202, i32 %add22
  %7 = load i8, i8* %arrayidx23, align 1, !tbaa !2
  %conv24 = zext i8 %7 to i32
  %add25 = add nuw nsw i32 %conv24, %conv21
  %mul26 = mul nuw nsw i32 %add25, 20
  %add27 = add nsw i32 %sub19, %mul26
  %add28 = add nsw i32 %add27, 16
  %shr = ashr i32 %add28, 5
  %tobool.i = icmp ugt i32 %shr, 255
  %sub.i = sub nsw i32 0, %shr
  %shr.i = ashr i32 %sub.i, 31
  %cond.i = select i1 %tobool.i, i32 %shr.i, i32 %shr
  %conv.i = trunc i32 %cond.i to i8
  %arrayidx29 = getelementptr inbounds i8, i8* %dstv.addr.0204, i32 %x.0196
  store i8 %conv.i, i8* %arrayidx29, align 1, !tbaa !2
  %conv31 = trunc i32 %add27 to i16
  %add32 = add nsw i32 %x.0196, 2
  %arrayidx33 = getelementptr inbounds i16, i16* %buf, i32 %add32
  store i16 %conv31, i16* %arrayidx33, align 2, !tbaa !46
  %inc = add nsw i32 %x.0196, 1
  %cmp2 = icmp slt i32 %x.0196, %0
  br i1 %cmp2, label %for.body4, label %for.cond35.preheader

for.cond78.preheader:                             ; preds = %for.body39
  br i1 %cmp36197, label %for.body82, label %for.cond.cleanup81

for.body39:                                       ; preds = %for.cond35.preheader, %for.body39
  %x34.0198 = phi i32 [ %add63, %for.body39 ], [ 0, %for.cond35.preheader ]
  %arrayidx41 = getelementptr inbounds i16, i16* %buf, i32 %x34.0198
  %8 = load i16, i16* %arrayidx41, align 2, !tbaa !46
  %conv42 = sext i16 %8 to i32
  %add44 = add nuw nsw i32 %x34.0198, 3
  %arrayidx45 = getelementptr inbounds i16, i16* %add.ptr, i32 %add44
  %9 = load i16, i16* %arrayidx45, align 2, !tbaa !46
  %conv46 = sext i16 %9 to i32
  %sub49 = add nsw i32 %x34.0198, -1
  %arrayidx50 = getelementptr inbounds i16, i16* %add.ptr, i32 %sub49
  %10 = load i16, i16* %arrayidx50, align 2, !tbaa !46
  %conv51 = sext i16 %10 to i32
  %add53 = add nuw nsw i32 %x34.0198, 2
  %arrayidx54 = getelementptr inbounds i16, i16* %add.ptr, i32 %add53
  %11 = load i16, i16* %arrayidx54, align 2, !tbaa !46
  %conv55 = sext i16 %11 to i32
  %add56 = add nsw i32 %conv55, %conv51
  %12 = mul nsw i32 %add56, -5
  %arrayidx60 = getelementptr inbounds i16, i16* %add.ptr, i32 %x34.0198
  %13 = load i16, i16* %arrayidx60, align 2, !tbaa !46
  %conv61 = sext i16 %13 to i32
  %add63 = add nuw nsw i32 %x34.0198, 1
  %arrayidx64 = getelementptr inbounds i16, i16* %add.ptr, i32 %add63
  %14 = load i16, i16* %arrayidx64, align 2, !tbaa !46
  %conv65 = sext i16 %14 to i32
  %add66 = add nsw i32 %conv65, %conv61
  %mul67 = mul nsw i32 %add66, 20
  %add47 = add nsw i32 %conv42, 512
  %sub58 = add nsw i32 %add47, %conv46
  %add68 = add nsw i32 %sub58, %12
  %add70 = add nsw i32 %add68, %mul67
  %shr71 = ashr i32 %add70, 10
  %tobool.i190 = icmp ugt i32 %shr71, 255
  %sub.i191 = sub nsw i32 0, %shr71
  %shr.i192 = ashr i32 %sub.i191, 31
  %cond.i193 = select i1 %tobool.i190, i32 %shr.i192, i32 %shr71
  %conv.i194 = trunc i32 %cond.i193 to i8
  %arrayidx73 = getelementptr inbounds i8, i8* %dstc.addr.0203, i32 %x34.0198
  store i8 %conv.i194, i8* %arrayidx73, align 1, !tbaa !2
  %exitcond = icmp eq i32 %add63, %width
  br i1 %exitcond, label %for.cond78.preheader, label %for.body39

for.cond.cleanup81:                               ; preds = %for.body82, %for.cond35.preheader, %for.cond78.preheader
  %add.ptr114 = getelementptr inbounds i8, i8* %dsth.addr.0206, i32 %stride
  %add.ptr115 = getelementptr inbounds i8, i8* %dstv.addr.0204, i32 %stride
  %add.ptr116 = getelementptr inbounds i8, i8* %dstc.addr.0203, i32 %stride
  %add.ptr117 = getelementptr inbounds i8, i8* %src.addr.0202, i32 %stride
  %inc119 = add nuw nsw i32 %y.0205, 1
  %exitcond208 = icmp eq i32 %inc119, %height
  br i1 %exitcond208, label %for.cond.cleanup, label %for.cond1.preheader

for.body82:                                       ; preds = %for.cond78.preheader, %for.body82
  %x77.0200 = phi i32 [ %add101, %for.body82 ], [ 0, %for.cond78.preheader ]
  %sub83 = add nsw i32 %x77.0200, -2
  %arrayidx84 = getelementptr inbounds i8, i8* %src.addr.0202, i32 %sub83
  %15 = load i8, i8* %arrayidx84, align 1, !tbaa !2
  %conv85 = zext i8 %15 to i32
  %add86 = add nuw nsw i32 %x77.0200, 3
  %arrayidx87 = getelementptr inbounds i8, i8* %src.addr.0202, i32 %add86
  %16 = load i8, i8* %arrayidx87, align 1, !tbaa !2
  %conv88 = zext i8 %16 to i32
  %sub90 = add nsw i32 %x77.0200, -1
  %arrayidx91 = getelementptr inbounds i8, i8* %src.addr.0202, i32 %sub90
  %17 = load i8, i8* %arrayidx91, align 1, !tbaa !2
  %conv92 = zext i8 %17 to i32
  %add93 = add nuw nsw i32 %x77.0200, 2
  %arrayidx94 = getelementptr inbounds i8, i8* %src.addr.0202, i32 %add93
  %18 = load i8, i8* %arrayidx94, align 1, !tbaa !2
  %conv95 = zext i8 %18 to i32
  %add96 = add nuw nsw i32 %conv95, %conv92
  %19 = mul nsw i32 %add96, -5
  %arrayidx99 = getelementptr inbounds i8, i8* %src.addr.0202, i32 %x77.0200
  %20 = load i8, i8* %arrayidx99, align 1, !tbaa !2
  %conv100 = zext i8 %20 to i32
  %add101 = add nuw nsw i32 %x77.0200, 1
  %arrayidx102 = getelementptr inbounds i8, i8* %src.addr.0202, i32 %add101
  %21 = load i8, i8* %arrayidx102, align 1, !tbaa !2
  %conv103 = zext i8 %21 to i32
  %add104 = add nuw nsw i32 %conv103, %conv100
  %mul105 = mul nuw nsw i32 %add104, 20
  %add89 = add nuw nsw i32 %conv85, 16
  %sub98 = add nuw nsw i32 %add89, %conv88
  %add106 = add nsw i32 %sub98, %19
  %add107 = add nsw i32 %add106, %mul105
  %shr108 = ashr i32 %add107, 5
  %tobool.i185 = icmp ugt i32 %shr108, 255
  %sub.i186 = sub nsw i32 0, %shr108
  %shr.i187 = ashr i32 %sub.i186, 31
  %cond.i188 = select i1 %tobool.i185, i32 %shr.i187, i32 %shr108
  %conv.i189 = trunc i32 %cond.i188 to i8
  %arrayidx110 = getelementptr inbounds i8, i8* %dsth.addr.0206, i32 %x77.0200
  store i8 %conv.i189, i8* %arrayidx110, align 1, !tbaa !2
  %exitcond207 = icmp eq i32 %add101, %width
  br i1 %exitcond207, label %for.cond.cleanup81, label %for.body82
}

; Function Attrs: norecurse nounwind readnone
define internal void @prefetch_fenc_null(i8* nocapture %pix_y, i32 %stride_y, i8* nocapture %pix_uv, i32 %stride_uv, i32 %mb_x) #5 {
entry:
  ret void
}

; Function Attrs: norecurse nounwind readnone
define internal void @prefetch_ref_null(i8* nocapture %pix, i32 %stride, i32 %parity) #5 {
entry:
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local i8* @memcpy(i8* noalias returned, i8* noalias nocapture readonly, i32) #6

; Function Attrs: nounwind
define internal void @memzero_aligned(i8* nocapture %dst, i32 %n) #0 {
entry:
  tail call void @llvm.memset.p0i8.i32(i8* align 1 %dst, i8 0, i32 %n, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @frame_init_lowres_core(i8* nocapture readonly %src0, i8* nocapture %dst0, i8* nocapture %dsth, i8* nocapture %dstv, i8* nocapture %dstc, i32 %src_stride, i32 %dst_stride, i32 %width, i32 %height) #2 {
entry:
  %cmp167 = icmp sgt i32 %height, 0
  br i1 %cmp167, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %entry
  %cmp3165 = icmp sgt i32 %width, 0
  %mul105 = shl nsw i32 %src_stride, 1
  br i1 %cmp3165, label %for.body.us, label %for.cond.cleanup

for.body.us:                                      ; preds = %for.body.lr.ph, %for.cond2.for.cond.cleanup4_crit_edge.us
  %src0.addr.0173.us = phi i8* [ %add.ptr106.us, %for.cond2.for.cond.cleanup4_crit_edge.us ], [ %src0, %for.body.lr.ph ]
  %dst0.addr.0172.us = phi i8* [ %add.ptr107.us, %for.cond2.for.cond.cleanup4_crit_edge.us ], [ %dst0, %for.body.lr.ph ]
  %y.0171.us = phi i32 [ %inc112.us, %for.cond2.for.cond.cleanup4_crit_edge.us ], [ 0, %for.body.lr.ph ]
  %dsth.addr.0170.us = phi i8* [ %add.ptr108.us, %for.cond2.for.cond.cleanup4_crit_edge.us ], [ %dsth, %for.body.lr.ph ]
  %dstv.addr.0169.us = phi i8* [ %add.ptr109.us, %for.cond2.for.cond.cleanup4_crit_edge.us ], [ %dstv, %for.body.lr.ph ]
  %dstc.addr.0168.us = phi i8* [ %add.ptr110.us, %for.cond2.for.cond.cleanup4_crit_edge.us ], [ %dstc, %for.body.lr.ph ]
  %add.ptr.us = getelementptr inbounds i8, i8* %src0.addr.0173.us, i32 %src_stride
  %add.ptr1.us = getelementptr inbounds i8, i8* %add.ptr.us, i32 %src_stride
  br label %for.body5.us

for.body5.us:                                     ; preds = %for.body5.us, %for.body.us
  %x.0166.us = phi i32 [ 0, %for.body.us ], [ %inc.us, %for.body5.us ]
  %mul.us = shl nuw nsw i32 %x.0166.us, 1
  %arrayidx.us = getelementptr inbounds i8, i8* %src0.addr.0173.us, i32 %mul.us
  %0 = load i8, i8* %arrayidx.us, align 1, !tbaa !2
  %conv.us = zext i8 %0 to i32
  %arrayidx7.us = getelementptr inbounds i8, i8* %add.ptr.us, i32 %mul.us
  %1 = load i8, i8* %arrayidx7.us, align 1, !tbaa !2
  %conv8.us = zext i8 %1 to i32
  %add.us = add nuw nsw i32 %conv.us, 1
  %add9.us = add nuw nsw i32 %add.us, %conv8.us
  %2 = lshr i32 %add9.us, 1
  %add11.us = or i32 %mul.us, 1
  %arrayidx12.us = getelementptr inbounds i8, i8* %src0.addr.0173.us, i32 %add11.us
  %3 = load i8, i8* %arrayidx12.us, align 1, !tbaa !2
  %conv13.us = zext i8 %3 to i32
  %arrayidx16.us = getelementptr inbounds i8, i8* %add.ptr.us, i32 %add11.us
  %4 = load i8, i8* %arrayidx16.us, align 1, !tbaa !2
  %conv17.us = zext i8 %4 to i32
  %add18.us = add nuw nsw i32 %conv13.us, 1
  %add19.us = add nuw nsw i32 %add18.us, %conv17.us
  %5 = lshr i32 %add19.us, 1
  %add21.us = add nuw nsw i32 %2, 1
  %add22.us = add nuw nsw i32 %add21.us, %5
  %6 = lshr i32 %add22.us, 1
  %conv24.us = trunc i32 %6 to i8
  %arrayidx25.us = getelementptr inbounds i8, i8* %dst0.addr.0172.us, i32 %x.0166.us
  store i8 %conv24.us, i8* %arrayidx25.us, align 1, !tbaa !2
  %7 = load i8, i8* %arrayidx12.us, align 1, !tbaa !2
  %conv29.us = zext i8 %7 to i32
  %8 = load i8, i8* %arrayidx16.us, align 1, !tbaa !2
  %conv33.us = zext i8 %8 to i32
  %add34.us = add nuw nsw i32 %conv29.us, 1
  %add35.us = add nuw nsw i32 %add34.us, %conv33.us
  %9 = lshr i32 %add35.us, 1
  %add38.us = add nuw nsw i32 %mul.us, 2
  %arrayidx39.us = getelementptr inbounds i8, i8* %src0.addr.0173.us, i32 %add38.us
  %10 = load i8, i8* %arrayidx39.us, align 1, !tbaa !2
  %conv40.us = zext i8 %10 to i32
  %arrayidx43.us = getelementptr inbounds i8, i8* %add.ptr.us, i32 %add38.us
  %11 = load i8, i8* %arrayidx43.us, align 1, !tbaa !2
  %conv44.us = zext i8 %11 to i32
  %add45.us = add nuw nsw i32 %conv40.us, 1
  %add46.us = add nuw nsw i32 %add45.us, %conv44.us
  %12 = lshr i32 %add46.us, 1
  %add48.us = add nuw nsw i32 %9, 1
  %add49.us = add nuw nsw i32 %add48.us, %12
  %13 = lshr i32 %add49.us, 1
  %conv51.us = trunc i32 %13 to i8
  %arrayidx52.us = getelementptr inbounds i8, i8* %dsth.addr.0170.us, i32 %x.0166.us
  store i8 %conv51.us, i8* %arrayidx52.us, align 1, !tbaa !2
  %14 = load i8, i8* %arrayidx7.us, align 1, !tbaa !2
  %conv55.us = zext i8 %14 to i32
  %arrayidx57.us = getelementptr inbounds i8, i8* %add.ptr1.us, i32 %mul.us
  %15 = load i8, i8* %arrayidx57.us, align 1, !tbaa !2
  %conv58.us = zext i8 %15 to i32
  %add59.us = add nuw nsw i32 %conv55.us, 1
  %add60.us = add nuw nsw i32 %add59.us, %conv58.us
  %16 = lshr i32 %add60.us, 1
  %17 = load i8, i8* %arrayidx16.us, align 1, !tbaa !2
  %conv65.us = zext i8 %17 to i32
  %arrayidx68.us = getelementptr inbounds i8, i8* %add.ptr1.us, i32 %add11.us
  %18 = load i8, i8* %arrayidx68.us, align 1, !tbaa !2
  %conv69.us = zext i8 %18 to i32
  %add70.us = add nuw nsw i32 %conv65.us, 1
  %add71.us = add nuw nsw i32 %add70.us, %conv69.us
  %19 = lshr i32 %add71.us, 1
  %add73.us = add nuw nsw i32 %16, 1
  %add74.us = add nuw nsw i32 %add73.us, %19
  %20 = lshr i32 %add74.us, 1
  %conv76.us = trunc i32 %20 to i8
  %arrayidx77.us = getelementptr inbounds i8, i8* %dstv.addr.0169.us, i32 %x.0166.us
  store i8 %conv76.us, i8* %arrayidx77.us, align 1, !tbaa !2
  %21 = load i8, i8* %arrayidx16.us, align 1, !tbaa !2
  %conv81.us = zext i8 %21 to i32
  %22 = load i8, i8* %arrayidx68.us, align 1, !tbaa !2
  %conv85.us = zext i8 %22 to i32
  %add86.us = add nuw nsw i32 %conv81.us, 1
  %add87.us = add nuw nsw i32 %add86.us, %conv85.us
  %23 = lshr i32 %add87.us, 1
  %24 = load i8, i8* %arrayidx43.us, align 1, !tbaa !2
  %conv92.us = zext i8 %24 to i32
  %arrayidx95.us = getelementptr inbounds i8, i8* %add.ptr1.us, i32 %add38.us
  %25 = load i8, i8* %arrayidx95.us, align 1, !tbaa !2
  %conv96.us = zext i8 %25 to i32
  %add97.us = add nuw nsw i32 %conv92.us, 1
  %add98.us = add nuw nsw i32 %add97.us, %conv96.us
  %26 = lshr i32 %add98.us, 1
  %add100.us = add nuw nsw i32 %23, 1
  %add101.us = add nuw nsw i32 %add100.us, %26
  %27 = lshr i32 %add101.us, 1
  %conv103.us = trunc i32 %27 to i8
  %arrayidx104.us = getelementptr inbounds i8, i8* %dstc.addr.0168.us, i32 %x.0166.us
  store i8 %conv103.us, i8* %arrayidx104.us, align 1, !tbaa !2
  %inc.us = add nuw nsw i32 %x.0166.us, 1
  %exitcond = icmp eq i32 %inc.us, %width
  br i1 %exitcond, label %for.cond2.for.cond.cleanup4_crit_edge.us, label %for.body5.us

for.cond2.for.cond.cleanup4_crit_edge.us:         ; preds = %for.body5.us
  %add.ptr106.us = getelementptr inbounds i8, i8* %src0.addr.0173.us, i32 %mul105
  %add.ptr107.us = getelementptr inbounds i8, i8* %dst0.addr.0172.us, i32 %dst_stride
  %add.ptr108.us = getelementptr inbounds i8, i8* %dsth.addr.0170.us, i32 %dst_stride
  %add.ptr109.us = getelementptr inbounds i8, i8* %dstv.addr.0169.us, i32 %dst_stride
  %add.ptr110.us = getelementptr inbounds i8, i8* %dstc.addr.0168.us, i32 %dst_stride
  %inc112.us = add nuw nsw i32 %y.0171.us, 1
  %exitcond175 = icmp eq i32 %inc112.us, %height
  br i1 %exitcond175, label %for.cond.cleanup, label %for.body.us

for.cond.cleanup:                                 ; preds = %for.cond2.for.cond.cleanup4_crit_edge.us, %for.body.lr.ph, %entry
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @integral_init4h(i16* nocapture %sum, i8* nocapture readonly %pix, i32 %stride) #2 {
entry:
  %cmp38 = icmp sgt i32 %stride, 4
  br i1 %cmp38, label %for.body.preheader, label %for.cond.cleanup

for.body.preheader:                               ; preds = %entry
  %arrayidx1 = getelementptr inbounds i8, i8* %pix, i32 1
  %0 = load i8, i8* %arrayidx1, align 1, !tbaa !2
  %conv2 = zext i8 %0 to i32
  %1 = load i8, i8* %pix, align 1, !tbaa !2
  %conv = zext i8 %1 to i32
  %add = add nuw nsw i32 %conv2, %conv
  %arrayidx3 = getelementptr inbounds i8, i8* %pix, i32 2
  %2 = load i8, i8* %arrayidx3, align 1, !tbaa !2
  %conv4 = zext i8 %2 to i32
  %add5 = add nuw nsw i32 %add, %conv4
  %arrayidx6 = getelementptr inbounds i8, i8* %pix, i32 3
  %3 = load i8, i8* %arrayidx6, align 1, !tbaa !2
  %conv7 = zext i8 %3 to i32
  %add8 = add nuw nsw i32 %add5, %conv7
  %4 = add nsw i32 %stride, -4
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body, %entry
  ret void

for.body:                                         ; preds = %for.body, %for.body.preheader
  %x.040 = phi i32 [ %inc, %for.body ], [ 0, %for.body.preheader ]
  %v.039 = phi i32 [ %add22, %for.body ], [ %add8, %for.body.preheader ]
  %sub10 = sub nsw i32 %x.040, %stride
  %arrayidx11 = getelementptr inbounds i16, i16* %sum, i32 %sub10
  %5 = load i16, i16* %arrayidx11, align 2, !tbaa !46
  %6 = trunc i32 %v.039 to i16
  %conv14 = add i16 %5, %6
  %arrayidx15 = getelementptr inbounds i16, i16* %sum, i32 %x.040
  store i16 %conv14, i16* %arrayidx15, align 2, !tbaa !46
  %add16 = add nuw nsw i32 %x.040, 4
  %arrayidx17 = getelementptr inbounds i8, i8* %pix, i32 %add16
  %7 = load i8, i8* %arrayidx17, align 1, !tbaa !2
  %conv18 = zext i8 %7 to i32
  %arrayidx19 = getelementptr inbounds i8, i8* %pix, i32 %x.040
  %8 = load i8, i8* %arrayidx19, align 1, !tbaa !2
  %conv20 = zext i8 %8 to i32
  %sub21 = add i32 %v.039, %conv18
  %add22 = sub i32 %sub21, %conv20
  %inc = add nuw nsw i32 %x.040, 1
  %exitcond = icmp eq i32 %inc, %4
  br i1 %exitcond, label %for.cond.cleanup, label %for.body
}

; Function Attrs: nofree norecurse nounwind
define internal void @integral_init8h(i16* nocapture %sum, i8* nocapture readonly %pix, i32 %stride) #2 {
entry:
  %cmp54 = icmp sgt i32 %stride, 8
  br i1 %cmp54, label %for.body.preheader, label %for.cond.cleanup

for.body.preheader:                               ; preds = %entry
  %arrayidx1 = getelementptr inbounds i8, i8* %pix, i32 1
  %0 = load i8, i8* %arrayidx1, align 1, !tbaa !2
  %conv2 = zext i8 %0 to i32
  %1 = load i8, i8* %pix, align 1, !tbaa !2
  %conv = zext i8 %1 to i32
  %add = add nuw nsw i32 %conv2, %conv
  %arrayidx3 = getelementptr inbounds i8, i8* %pix, i32 2
  %2 = load i8, i8* %arrayidx3, align 1, !tbaa !2
  %conv4 = zext i8 %2 to i32
  %add5 = add nuw nsw i32 %add, %conv4
  %arrayidx6 = getelementptr inbounds i8, i8* %pix, i32 3
  %3 = load i8, i8* %arrayidx6, align 1, !tbaa !2
  %conv7 = zext i8 %3 to i32
  %add8 = add nuw nsw i32 %add5, %conv7
  %arrayidx9 = getelementptr inbounds i8, i8* %pix, i32 4
  %4 = load i8, i8* %arrayidx9, align 1, !tbaa !2
  %conv10 = zext i8 %4 to i32
  %add11 = add nuw nsw i32 %add8, %conv10
  %arrayidx12 = getelementptr inbounds i8, i8* %pix, i32 5
  %5 = load i8, i8* %arrayidx12, align 1, !tbaa !2
  %conv13 = zext i8 %5 to i32
  %add14 = add nuw nsw i32 %add11, %conv13
  %arrayidx15 = getelementptr inbounds i8, i8* %pix, i32 6
  %6 = load i8, i8* %arrayidx15, align 1, !tbaa !2
  %conv16 = zext i8 %6 to i32
  %add17 = add nuw nsw i32 %add14, %conv16
  %arrayidx18 = getelementptr inbounds i8, i8* %pix, i32 7
  %7 = load i8, i8* %arrayidx18, align 1, !tbaa !2
  %conv19 = zext i8 %7 to i32
  %add20 = add nuw nsw i32 %add17, %conv19
  %8 = add nsw i32 %stride, -8
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body, %entry
  ret void

for.body:                                         ; preds = %for.body, %for.body.preheader
  %x.056 = phi i32 [ %inc, %for.body ], [ 0, %for.body.preheader ]
  %v.055 = phi i32 [ %add34, %for.body ], [ %add20, %for.body.preheader ]
  %sub22 = sub nsw i32 %x.056, %stride
  %arrayidx23 = getelementptr inbounds i16, i16* %sum, i32 %sub22
  %9 = load i16, i16* %arrayidx23, align 2, !tbaa !46
  %10 = trunc i32 %v.055 to i16
  %conv26 = add i16 %9, %10
  %arrayidx27 = getelementptr inbounds i16, i16* %sum, i32 %x.056
  store i16 %conv26, i16* %arrayidx27, align 2, !tbaa !46
  %add28 = add nuw nsw i32 %x.056, 8
  %arrayidx29 = getelementptr inbounds i8, i8* %pix, i32 %add28
  %11 = load i8, i8* %arrayidx29, align 1, !tbaa !2
  %conv30 = zext i8 %11 to i32
  %arrayidx31 = getelementptr inbounds i8, i8* %pix, i32 %x.056
  %12 = load i8, i8* %arrayidx31, align 1, !tbaa !2
  %conv32 = zext i8 %12 to i32
  %sub33 = add i32 %v.055, %conv30
  %add34 = sub i32 %sub33, %conv32
  %inc = add nuw nsw i32 %x.056, 1
  %exitcond = icmp eq i32 %inc, %8
  br i1 %exitcond, label %for.cond.cleanup, label %for.body
}

; Function Attrs: nofree norecurse nounwind
define internal void @integral_init4v(i16* nocapture %sum8, i16* nocapture %sum4, i32 %stride) #2 {
entry:
  %cmp60 = icmp sgt i32 %stride, 8
  br i1 %cmp60, label %for.body.lr.ph, label %for.cond.cleanup11

for.body.lr.ph:                                   ; preds = %entry
  %mul = shl i32 %stride, 2
  %0 = add nsw i32 %stride, -8
  br label %for.body

for.cond7.preheader:                              ; preds = %for.body
  br i1 %cmp60, label %for.body12.lr.ph, label %for.cond.cleanup11

for.body12.lr.ph:                                 ; preds = %for.cond7.preheader
  %mul13 = shl nsw i32 %stride, 3
  %1 = add nsw i32 %stride, -8
  br label %for.body12

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %x.061 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %add = add nsw i32 %x.061, %mul
  %arrayidx = getelementptr inbounds i16, i16* %sum8, i32 %add
  %2 = load i16, i16* %arrayidx, align 2, !tbaa !46
  %arrayidx1 = getelementptr inbounds i16, i16* %sum8, i32 %x.061
  %3 = load i16, i16* %arrayidx1, align 2, !tbaa !46
  %sub3 = sub i16 %2, %3
  %arrayidx5 = getelementptr inbounds i16, i16* %sum4, i32 %x.061
  store i16 %sub3, i16* %arrayidx5, align 2, !tbaa !46
  %inc = add nuw nsw i32 %x.061, 1
  %exitcond62 = icmp eq i32 %inc, %0
  br i1 %exitcond62, label %for.cond7.preheader, label %for.body

for.cond.cleanup11:                               ; preds = %for.body12, %entry, %for.cond7.preheader
  ret void

for.body12:                                       ; preds = %for.body12, %for.body12.lr.ph
  %x6.059 = phi i32 [ 0, %for.body12.lr.ph ], [ %inc33, %for.body12 ]
  %add14 = add nsw i32 %x6.059, %mul13
  %arrayidx15 = getelementptr inbounds i16, i16* %sum8, i32 %add14
  %4 = load i16, i16* %arrayidx15, align 2, !tbaa !46
  %add19 = add nsw i32 %add14, 4
  %arrayidx20 = getelementptr inbounds i16, i16* %sum8, i32 %add19
  %5 = load i16, i16* %arrayidx20, align 2, !tbaa !46
  %add22 = add i16 %5, %4
  %arrayidx23 = getelementptr inbounds i16, i16* %sum8, i32 %x6.059
  %6 = load i16, i16* %arrayidx23, align 2, !tbaa !46
  %sub25 = sub i16 %add22, %6
  %add26 = add nuw nsw i32 %x6.059, 4
  %arrayidx27 = getelementptr inbounds i16, i16* %sum8, i32 %add26
  %7 = load i16, i16* %arrayidx27, align 2, !tbaa !46
  %sub29 = sub i16 %sub25, %7
  store i16 %sub29, i16* %arrayidx23, align 2, !tbaa !46
  %inc33 = add nuw nsw i32 %x6.059, 1
  %exitcond = icmp eq i32 %inc33, %1
  br i1 %exitcond, label %for.cond.cleanup11, label %for.body12
}

; Function Attrs: nofree norecurse nounwind
define internal void @integral_init8v(i16* nocapture %sum8, i32 %stride) #2 {
entry:
  %cmp14 = icmp sgt i32 %stride, 8
  br i1 %cmp14, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %entry
  %mul = shl i32 %stride, 3
  %0 = add nsw i32 %stride, -8
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body, %entry
  ret void

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %x.015 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %add = add nsw i32 %x.015, %mul
  %arrayidx = getelementptr inbounds i16, i16* %sum8, i32 %add
  %1 = load i16, i16* %arrayidx, align 2, !tbaa !46
  %arrayidx1 = getelementptr inbounds i16, i16* %sum8, i32 %x.015
  %2 = load i16, i16* %arrayidx1, align 2, !tbaa !46
  %sub3 = sub i16 %1, %2
  store i16 %sub3, i16* %arrayidx1, align 2, !tbaa !46
  %inc = add nuw nsw i32 %x.015, 1
  %exitcond = icmp eq i32 %inc, %0
  br i1 %exitcond, label %for.cond.cleanup, label %for.body
}

; Function Attrs: nofree norecurse nounwind
define internal void @mbtree_propagate_cost(i16* nocapture %dst, i16* nocapture readonly %propagate_in, i16* nocapture readonly %intra_costs, i16* nocapture readonly %inter_costs, i16* nocapture readonly %inv_qscales, float* nocapture readonly %fps_factor, i32 %len) #2 {
entry:
  %0 = load float, float* %fps_factor, align 4, !tbaa !88
  %cmp62 = icmp sgt i32 %len, 0
  br i1 %cmp62, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.body, %entry
  ret void

for.body:                                         ; preds = %entry, %for.body
  %i.063 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i16, i16* %intra_costs, i32 %i.063
  %1 = load i16, i16* %arrayidx, align 2, !tbaa !46
  %conv = zext i16 %1 to i32
  %arrayidx3 = getelementptr inbounds i16, i16* %inter_costs, i32 %i.063
  %2 = load i16, i16* %arrayidx3, align 2, !tbaa !46
  %3 = and i16 %2, 16383
  %4 = icmp ult i16 %1, %3
  %cond61 = select i1 %4, i16 %1, i16 %3
  %5 = zext i16 %cond61 to i32
  %arrayidx12 = getelementptr inbounds i16, i16* %inv_qscales, i32 %i.063
  %6 = load i16, i16* %arrayidx12, align 2, !tbaa !46
  %conv13 = zext i16 %6 to i32
  %mul = mul nuw nsw i32 %conv13, %conv
  %conv14 = sitofp i32 %mul to float
  %arrayidx15 = getelementptr inbounds i16, i16* %propagate_in, i32 %i.063
  %7 = load i16, i16* %arrayidx15, align 2, !tbaa !46
  %conv17 = uitofp i16 %7 to float
  %mul18 = fmul fast float %0, %conv14
  %add = fadd fast float %mul18, %conv17
  %sub = sub nsw i32 %conv, %5
  %conv19 = sitofp i32 %sub to float
  %conv20 = uitofp i16 %1 to float
  %mul21 = fmul fast float %add, %conv19
  %div = fdiv fast float %mul21, %conv20
  %add22 = fadd fast float %div, 5.000000e-01
  %conv23 = fptosi float %add22 to i32
  %cmp24 = icmp slt i32 %conv23, 32767
  %spec.select = select i1 %cmp24, i32 %conv23, i32 32767
  %conv34 = trunc i32 %spec.select to i16
  %arrayidx35 = getelementptr inbounds i16, i16* %dst, i32 %i.063
  store i16 %conv34, i16* %arrayidx35, align 2, !tbaa !46
  %inc = add nuw nsw i32 %i.063, 1
  %exitcond = icmp eq i32 %inc, %len
  br i1 %exitcond, label %for.cond.cleanup, label %for.body
}

; Function Attrs: nofree norecurse nounwind
define internal void @mbtree_propagate_list(%struct.x264_t* nocapture readonly %h, i16* nocapture %ref_costs, [2 x i16]* nocapture readonly %mvs, i16* nocapture readonly %propagate_amount, i16* nocapture readonly %lowres_costs, i32 %bipred_weight, i32 %mb_y, i32 %len, i32 %list) #2 {
entry:
  %i_mb_stride = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 5
  %0 = load i32, i32* %i_mb_stride, align 4, !tbaa !89
  %i_mb_width = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 0
  %1 = load i32, i32* %i_mb_width, align 64, !tbaa !90
  %i_mb_height = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 1
  %2 = load i32, i32* %i_mb_height, align 4, !tbaa !91
  %cmp378 = icmp sgt i32 %len, 0
  br i1 %cmp378, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %entry
  %shl = shl nuw i32 1, %list
  %sub65 = add i32 %1, -1
  %sub68 = add i32 %2, -1
  %mul14 = mul i32 %0, %mb_y
  br label %for.body

for.cond.cleanup:                                 ; preds = %cleanup236, %entry
  ret void

for.body:                                         ; preds = %cleanup236, %for.body.lr.ph
  %i.0379 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup236 ]
  %arrayidx = getelementptr inbounds i16, i16* %lowres_costs, i32 %i.0379
  %3 = load i16, i16* %arrayidx, align 2, !tbaa !46
  %4 = lshr i16 %3, 14
  %5 = zext i16 %4 to i32
  %and = and i32 %shl, %5
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %cleanup236, label %if.end

if.end:                                           ; preds = %for.body
  %arrayidx3 = getelementptr inbounds i16, i16* %propagate_amount, i32 %i.0379
  %6 = load i16, i16* %arrayidx3, align 2, !tbaa !46
  %conv4 = sext i16 %6 to i32
  %cmp5 = icmp eq i16 %4, 3
  %mul = mul nsw i32 %conv4, %bipred_weight
  %add = add nsw i32 %mul, 32
  %shr8 = ashr i32 %add, 6
  %listamount.0 = select i1 %cmp5, i32 %shr8, i32 %conv4
  %arrayidx10 = getelementptr inbounds [2 x i16], [2 x i16]* %mvs, i32 %i.0379
  %i11 = bitcast [2 x i16]* %arrayidx10 to i32*
  %7 = load i32, i32* %i11, align 4, !tbaa !2
  %tobool12 = icmp eq i32 %7, 0
  br i1 %tobool12, label %if.then13, label %if.end30

if.then13:                                        ; preds = %if.end
  %add15 = add i32 %i.0379, %mul14
  %arrayidx16 = getelementptr inbounds i16, i16* %ref_costs, i32 %add15
  %8 = load i16, i16* %arrayidx16, align 2, !tbaa !46
  %conv17 = zext i16 %8 to i32
  %add18 = add nsw i32 %listamount.0, %conv17
  %cmp19 = icmp slt i32 %add18, 32767
  %spec.select = select i1 %cmp19, i32 %add18, i32 32767
  %conv26 = trunc i32 %spec.select to i16
  store i16 %conv26, i16* %arrayidx16, align 2, !tbaa !46
  br label %cleanup236

if.end30:                                         ; preds = %if.end
  %sext = shl i32 %7, 16
  %arrayidx35 = getelementptr inbounds [2 x i16], [2 x i16]* %mvs, i32 %i.0379, i32 1
  %9 = load i16, i16* %arrayidx35, align 2, !tbaa !46
  %conv36 = sext i16 %9 to i32
  %shr37 = ashr i32 %sext, 21
  %add38 = add nsw i32 %shr37, %i.0379
  %shr39 = ashr i32 %conv36, 5
  %add40 = add nsw i32 %shr39, %mb_y
  %mul41 = mul i32 %add40, %0
  %add42 = add i32 %mul41, %add38
  %add43 = add i32 %add42, %0
  %and44 = and i32 %7, 31
  %and45 = and i32 %conv36, 31
  %sub = sub nuw nsw i32 32, %and45
  %sub46 = sub nuw nsw i32 32, %and44
  %mul47 = mul nsw i32 %sub46, %listamount.0
  %mul53 = mul i32 %mul47, %sub
  %add54 = add nsw i32 %mul53, 512
  %shr55 = ashr i32 %add54, 10
  %mul49 = mul nsw i32 %and44, %listamount.0
  %mul56 = mul i32 %mul49, %sub
  %add57 = add nsw i32 %mul56, 512
  %shr58 = ashr i32 %add57, 10
  %mul59 = mul i32 %mul47, %and45
  %add60 = add nsw i32 %mul59, 512
  %shr61 = ashr i32 %add60, 10
  %mul62 = mul i32 %mul49, %and45
  %add63 = add nsw i32 %mul62, 512
  %shr64 = ashr i32 %add63, 10
  %cmp66 = icmp ult i32 %add38, %sub65
  %cmp69 = icmp ult i32 %add40, %sub68
  %or.cond = and i1 %cmp66, %cmp69
  br i1 %or.cond, label %if.then71, label %if.else

if.then71:                                        ; preds = %if.end30
  %arrayidx73 = getelementptr inbounds i16, i16* %ref_costs, i32 %add42
  %10 = load i16, i16* %arrayidx73, align 2, !tbaa !46
  %conv74 = zext i16 %10 to i32
  %add75 = add nsw i32 %shr55, %conv74
  %cmp76 = icmp slt i32 %add75, 32767
  %spec.select372 = select i1 %cmp76, i32 %add75, i32 32767
  %conv86 = trunc i32 %spec.select372 to i16
  store i16 %conv86, i16* %arrayidx73, align 2, !tbaa !46
  %add89 = add i32 %add42, 1
  %arrayidx90 = getelementptr inbounds i16, i16* %ref_costs, i32 %add89
  %11 = load i16, i16* %arrayidx90, align 2, !tbaa !46
  %conv91 = zext i16 %11 to i32
  %add92 = add nsw i32 %shr58, %conv91
  %cmp93 = icmp slt i32 %add92, 32767
  %cond102 = select i1 %cmp93, i32 %add92, i32 32767
  %conv103 = trunc i32 %cond102 to i16
  store i16 %conv103, i16* %arrayidx90, align 2, !tbaa !46
  %arrayidx107 = getelementptr inbounds i16, i16* %ref_costs, i32 %add43
  %12 = load i16, i16* %arrayidx107, align 2, !tbaa !46
  %conv108 = zext i16 %12 to i32
  %add109 = add nsw i32 %shr61, %conv108
  %cmp110 = icmp slt i32 %add109, 32767
  %spec.select373 = select i1 %cmp110, i32 %add109, i32 32767
  %conv120 = trunc i32 %spec.select373 to i16
  store i16 %conv120, i16* %arrayidx107, align 2, !tbaa !46
  %add123 = add i32 %add43, 1
  %arrayidx124 = getelementptr inbounds i16, i16* %ref_costs, i32 %add123
  %13 = load i16, i16* %arrayidx124, align 2, !tbaa !46
  %conv125 = zext i16 %13 to i32
  %add126 = add nsw i32 %shr64, %conv125
  %cmp127 = icmp slt i32 %add126, 32767
  %cond136 = select i1 %cmp127, i32 %add126, i32 32767
  %conv137 = trunc i32 %cond136 to i16
  store i16 %conv137, i16* %arrayidx124, align 2, !tbaa !46
  br label %cleanup236

if.else:                                          ; preds = %if.end30
  %cmp140 = icmp ult i32 %add40, %2
  br i1 %cmp140, label %if.then142, label %if.end186

if.then142:                                       ; preds = %if.else
  %cmp143 = icmp ult i32 %add38, %1
  br i1 %cmp143, label %if.then145, label %if.end163

if.then145:                                       ; preds = %if.then142
  %arrayidx147 = getelementptr inbounds i16, i16* %ref_costs, i32 %add42
  %14 = load i16, i16* %arrayidx147, align 2, !tbaa !46
  %conv148 = zext i16 %14 to i32
  %add149 = add nsw i32 %shr55, %conv148
  %cmp150 = icmp slt i32 %add149, 32767
  %spec.select374 = select i1 %cmp150, i32 %add149, i32 32767
  %conv160 = trunc i32 %spec.select374 to i16
  store i16 %conv160, i16* %arrayidx147, align 2, !tbaa !46
  br label %if.end163

if.end163:                                        ; preds = %if.then145, %if.then142
  %add164 = add i32 %add38, 1
  %cmp165 = icmp ult i32 %add164, %1
  br i1 %cmp165, label %if.then167, label %if.end186

if.then167:                                       ; preds = %if.end163
  %add168 = add i32 %add42, 1
  %arrayidx169 = getelementptr inbounds i16, i16* %ref_costs, i32 %add168
  %15 = load i16, i16* %arrayidx169, align 2, !tbaa !46
  %conv170 = zext i16 %15 to i32
  %add171 = add nsw i32 %shr58, %conv170
  %cmp172 = icmp slt i32 %add171, 32767
  %spec.select375 = select i1 %cmp172, i32 %add171, i32 32767
  %conv182 = trunc i32 %spec.select375 to i16
  store i16 %conv182, i16* %arrayidx169, align 2, !tbaa !46
  br label %if.end186

if.end186:                                        ; preds = %if.end163, %if.then167, %if.else
  %add187 = add i32 %add40, 1
  %cmp188 = icmp ult i32 %add187, %2
  br i1 %cmp188, label %if.then190, label %cleanup236

if.then190:                                       ; preds = %if.end186
  %cmp191 = icmp ult i32 %add38, %1
  br i1 %cmp191, label %if.then193, label %if.end211

if.then193:                                       ; preds = %if.then190
  %arrayidx195 = getelementptr inbounds i16, i16* %ref_costs, i32 %add43
  %16 = load i16, i16* %arrayidx195, align 2, !tbaa !46
  %conv196 = zext i16 %16 to i32
  %add197 = add nsw i32 %shr61, %conv196
  %cmp198 = icmp slt i32 %add197, 32767
  %spec.select376 = select i1 %cmp198, i32 %add197, i32 32767
  %conv208 = trunc i32 %spec.select376 to i16
  store i16 %conv208, i16* %arrayidx195, align 2, !tbaa !46
  br label %if.end211

if.end211:                                        ; preds = %if.then193, %if.then190
  %add212 = add i32 %add38, 1
  %cmp213 = icmp ult i32 %add212, %1
  br i1 %cmp213, label %if.then215, label %cleanup236

if.then215:                                       ; preds = %if.end211
  %add216 = add i32 %add43, 1
  %arrayidx217 = getelementptr inbounds i16, i16* %ref_costs, i32 %add216
  %17 = load i16, i16* %arrayidx217, align 2, !tbaa !46
  %conv218 = zext i16 %17 to i32
  %add219 = add nsw i32 %shr64, %conv218
  %cmp220 = icmp slt i32 %add219, 32767
  %spec.select377 = select i1 %cmp220, i32 %add219, i32 32767
  %conv230 = trunc i32 %spec.select377 to i16
  store i16 %conv230, i16* %arrayidx217, align 2, !tbaa !46
  br label %cleanup236

cleanup236:                                       ; preds = %if.then13, %if.end186, %if.then215, %if.end211, %if.then71, %for.body
  %inc = add nuw nsw i32 %i.0379, 1
  %exitcond = icmp eq i32 %inc, %len
  br i1 %exitcond, label %for.cond.cleanup, label %for.body
}

; Function Attrs: nofree nounwind
define internal void @mbtree_fix8_pack(i16* nocapture %dst, float* nocapture readonly %src, i32 %count) #7 {
entry:
  %cmp6 = icmp sgt i32 %count, 0
  br i1 %cmp6, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.body, %entry
  ret void

for.body:                                         ; preds = %entry, %for.body
  %i.07 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float, float* %src, i32 %i.07
  %0 = load float, float* %arrayidx, align 4, !tbaa !88
  %mul = fmul fast float %0, 2.560000e+02
  %conv = fptosi float %mul to i16
  %rev.i = tail call i16 @llvm.bswap.i16(i16 %conv) #9
  %arrayidx1 = getelementptr inbounds i16, i16* %dst, i32 %i.07
  store i16 %rev.i, i16* %arrayidx1, align 2, !tbaa !46
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond = icmp eq i32 %inc, %count
  br i1 %exitcond, label %for.cond.cleanup, label %for.body
}

; Function Attrs: nofree nounwind
define internal void @mbtree_fix8_unpack(float* nocapture %dst, i16* nocapture readonly %src, i32 %count) #7 {
entry:
  %cmp7 = icmp sgt i32 %count, 0
  br i1 %cmp7, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.body, %entry
  ret void

for.body:                                         ; preds = %entry, %for.body
  %i.08 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i16, i16* %src, i32 %i.08
  %0 = load i16, i16* %arrayidx, align 2, !tbaa !46
  %rev.i = tail call i16 @llvm.bswap.i16(i16 %0) #9
  %conv1 = sitofp i16 %rev.i to float
  %mul = fmul fast float %conv1, 3.906250e-03
  %arrayidx2 = getelementptr inbounds float, float* %dst, i32 %i.08
  store float %mul, float* %arrayidx2, align 4, !tbaa !88
  %inc = add nuw nsw i32 %i.08, 1
  %exitcond = icmp eq i32 %inc, %count
  br i1 %exitcond, label %for.cond.cleanup, label %for.body
}

; Function Attrs: nounwind
define hidden void @x264_8_frame_filter(%struct.x264_t* nocapture readonly %h, %struct.x264_frame* nocapture readonly %frame, i32 %mb_y, i32 %b_end) local_unnamed_addr #0 {
entry:
  %mul = shl nsw i32 %mb_y, 4
  %sub = add nsw i32 %mul, -8
  %tobool = icmp ne i32 %b_end, 0
  br i1 %tobool, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 33, i32 0
  %0 = load i32, i32* %arrayidx, align 4, !tbaa !7
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ %mul, %entry ]
  %add3 = add nsw i32 %cond, 8
  %i_chroma_format_idc = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 22
  %hpel_filter = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 93, i32 16
  %sub24 = sub nsw i32 %add3, %sub
  %scratch_buffer = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 81
  %1 = bitcast i8** %scratch_buffer to i16**
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body
  %integral = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 42
  %2 = load i16*, i16** %integral, align 4, !tbaa !92
  %tobool25 = icmp eq i16* %2, null
  br i1 %tobool25, label %cleanup, label %if.then26

for.body:                                         ; preds = %cond.end, %for.body
  %p.0160 = phi i32 [ 0, %cond.end ], [ %inc, %for.body ]
  %arrayidx7 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 31, i32 %p.0160
  %3 = load i32, i32* %arrayidx7, align 4, !tbaa !7
  %arrayidx8 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 32, i32 %p.0160
  %4 = load i32, i32* %arrayidx8, align 4, !tbaa !7
  %mul9 = mul nsw i32 %3, %sub
  %sub10 = add nsw i32 %mul9, -8
  %5 = load void (i8*, i8*, i8*, i8*, i32, i32, i32, i16*)*, void (i8*, i8*, i8*, i8*, i32, i32, i32, i16*)** %hpel_filter, align 4, !tbaa !93
  %arrayidx12 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 39, i32 %p.0160, i32 1
  %6 = load i8*, i8** %arrayidx12, align 4, !tbaa !5
  %add.ptr = getelementptr inbounds i8, i8* %6, i32 %sub10
  %arrayidx15 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 39, i32 %p.0160, i32 2
  %7 = load i8*, i8** %arrayidx15, align 4, !tbaa !5
  %add.ptr16 = getelementptr inbounds i8, i8* %7, i32 %sub10
  %arrayidx19 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 39, i32 %p.0160, i32 3
  %8 = load i8*, i8** %arrayidx19, align 4, !tbaa !5
  %add.ptr20 = getelementptr inbounds i8, i8* %8, i32 %sub10
  %arrayidx21 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 37, i32 %p.0160
  %9 = load i8*, i8** %arrayidx21, align 4, !tbaa !5
  %add.ptr22 = getelementptr inbounds i8, i8* %9, i32 %sub10
  %add23 = add nsw i32 %4, 16
  %10 = load i16*, i16** %1, align 8, !tbaa !94
  tail call void %5(i8* %add.ptr, i8* %add.ptr16, i8* %add.ptr20, i8* %add.ptr22, i32 %3, i32 %add23, i32 %sub24, i16* %10) #9
  %inc = add nuw nsw i32 %p.0160, 1
  %11 = load i32, i32* %i_chroma_format_idc, align 8, !tbaa !95
  %cmp = icmp eq i32 %11, 3
  %cond5 = select i1 %cmp, i32 3, i32 1
  %cmp6 = icmp ult i32 %inc, %cond5
  br i1 %cmp6, label %for.body, label %for.cond.cleanup

if.then26:                                        ; preds = %for.cond.cleanup
  %arrayidx29 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 31, i32 0
  %12 = load i32, i32* %arrayidx29, align 4, !tbaa !7
  %cmp30 = icmp slt i32 %mb_y, 1
  br i1 %cmp30, label %if.then31, label %if.end37

if.then31:                                        ; preds = %if.then26
  %mul33 = shl nsw i32 %12, 5
  %idx.neg = sub i32 0, %mul33
  %add.ptr34 = getelementptr inbounds i16, i16* %2, i32 %idx.neg
  %add.ptr35 = getelementptr inbounds i16, i16* %add.ptr34, i32 -64
  %13 = bitcast i16* %add.ptr35 to i8*
  %mul36 = shl i32 %12, 1
  tail call void @llvm.memset.p0i8.i32(i8* nonnull align 2 %13, i8 0, i32 %mul36, i1 false)
  br label %if.end37

if.end37:                                         ; preds = %if.then31, %if.then26
  %start.0 = phi i32 [ -32, %if.then31 ], [ %sub, %if.then26 ]
  %add40 = add nsw i32 %cond, 31
  %spec.select = select i1 %tobool, i32 %add40, i32 %add3
  %cmp43156 = icmp slt i32 %start.0, %spec.select
  br i1 %cmp43156, label %for.body45.lr.ph, label %cleanup

for.body45.lr.ph:                                 ; preds = %if.end37
  %arrayidx47 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 37, i32 0
  %b_have_sub8x8_esa = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 59, i32 19
  %integral_init4h = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 93, i32 24
  %mul59 = shl nsw i32 %12, 3
  %idx.neg60 = sub i32 0, %mul59
  %arrayidx63 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 33, i32 0
  %integral_init4v = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 93, i32 26
  %integral_init8h = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 93, i32 25
  %integral_init8v = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 93, i32 27
  br label %for.body45

for.body45:                                       ; preds = %if.end79, %for.body45.lr.ph
  %y.0157 = phi i32 [ %start.0, %for.body45.lr.ph ], [ %add52, %if.end79 ]
  %14 = load i8*, i8** %arrayidx47, align 4, !tbaa !5
  %mul48 = mul nsw i32 %y.0157, %12
  %add.ptr49 = getelementptr inbounds i8, i8* %14, i32 -64
  %add.ptr50 = getelementptr inbounds i8, i8* %add.ptr49, i32 %mul48
  %15 = load i16*, i16** %integral, align 4, !tbaa !92
  %add52 = add i32 %y.0157, 1
  %mul53 = mul nsw i32 %add52, %12
  %add.ptr54 = getelementptr inbounds i16, i16* %15, i32 -64
  %add.ptr55 = getelementptr inbounds i16, i16* %add.ptr54, i32 %mul53
  %16 = load i32, i32* %b_have_sub8x8_esa, align 4, !tbaa !99
  %tobool56 = icmp eq i32 %16, 0
  br i1 %tobool56, label %if.else, label %if.then57

if.then57:                                        ; preds = %for.body45
  %17 = load void (i16*, i8*, i32)*, void (i16*, i8*, i32)** %integral_init4h, align 4, !tbaa !100
  tail call void %17(i16* nonnull %add.ptr55, i8* nonnull %add.ptr50, i32 %12) #9
  %add.ptr61 = getelementptr inbounds i16, i16* %add.ptr55, i32 %idx.neg60
  %cmp67 = icmp sgt i32 %y.0157, -25
  br i1 %cmp67, label %if.then68, label %if.end79

if.then68:                                        ; preds = %if.then57
  %18 = load i32, i32* %arrayidx63, align 4, !tbaa !7
  %add64 = add nsw i32 %18, 64
  %mul65 = mul nsw i32 %add64, %12
  %add.ptr66 = getelementptr inbounds i16, i16* %add.ptr61, i32 %mul65
  %19 = load void (i16*, i16*, i32)*, void (i16*, i16*, i32)** %integral_init4v, align 4, !tbaa !101
  tail call void %19(i16* nonnull %add.ptr61, i16* nonnull %add.ptr66, i32 %12) #9
  br label %if.end79

if.else:                                          ; preds = %for.body45
  %20 = load void (i16*, i8*, i32)*, void (i16*, i8*, i32)** %integral_init8h, align 8, !tbaa !102
  tail call void %20(i16* nonnull %add.ptr55, i8* nonnull %add.ptr50, i32 %12) #9
  %cmp72 = icmp sgt i32 %y.0157, -25
  br i1 %cmp72, label %if.then73, label %if.end79

if.then73:                                        ; preds = %if.else
  %21 = load void (i16*, i32)*, void (i16*, i32)** %integral_init8v, align 16, !tbaa !103
  %add.ptr77 = getelementptr inbounds i16, i16* %add.ptr55, i32 %idx.neg60
  tail call void %21(i16* nonnull %add.ptr77, i32 %12) #9
  br label %if.end79

if.end79:                                         ; preds = %if.else, %if.then73, %if.then57, %if.then68
  %exitcond = icmp eq i32 %add52, %spec.select
  br i1 %exitcond, label %cleanup, label %for.body45

cleanup:                                          ; preds = %if.end79, %if.end37, %for.cond.cleanup
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @mc_weight_w2(i8* nocapture %dst, i32 %i_dst_stride, i8* nocapture readonly %src, i32 %i_src_stride, %struct.x264_weight_t* nocapture readonly %weight, i32 %height) #2 {
entry:
  %weight.idx = getelementptr %struct.x264_weight_t, %struct.x264_weight_t* %weight, i32 0, i32 2
  %weight.idx.val = load i32, i32* %weight.idx, align 16, !tbaa !84
  %weight.idx1 = getelementptr %struct.x264_weight_t, %struct.x264_weight_t* %weight, i32 0, i32 3
  %weight.idx1.val = load i32, i32* %weight.idx1, align 4, !tbaa !85
  %weight.idx2 = getelementptr %struct.x264_weight_t, %struct.x264_weight_t* %weight, i32 0, i32 4
  %weight.idx2.val = load i32, i32* %weight.idx2, align 8, !tbaa !86
  %cmp.i = icmp sgt i32 %weight.idx.val, 0
  %cmp14.i = icmp sgt i32 %height, 0
  br i1 %cmp.i, label %for.cond.preheader.i, label %for.cond14.preheader.i

for.cond14.preheader.i:                           ; preds = %entry
  br i1 %cmp14.i, label %for.cond20.preheader.us.i, label %mc_weight.exit

for.cond20.preheader.us.i:                        ; preds = %for.cond14.preheader.i, %for.cond20.preheader.us.i
  %y13.013.us.i = phi i32 [ %inc35.us.i, %for.cond20.preheader.us.i ], [ 0, %for.cond14.preheader.i ]
  %dst.addr.112.us.i = phi i8* [ %add.ptr36.us.i, %for.cond20.preheader.us.i ], [ %dst, %for.cond14.preheader.i ]
  %src.addr.111.us.i = phi i8* [ %add.ptr37.us.i, %for.cond20.preheader.us.i ], [ %src, %for.cond14.preheader.i ]
  %0 = load i8, i8* %src.addr.111.us.i, align 1, !tbaa !2
  %conv26.us.i = zext i8 %0 to i32
  %mul27.us.i = mul nsw i32 %weight.idx1.val, %conv26.us.i
  %add28.us.i = add nsw i32 %mul27.us.i, %weight.idx2.val
  %tobool.i70.us.i = icmp ugt i32 %add28.us.i, 255
  %sub.i71.us.i = sub nsw i32 0, %add28.us.i
  %shr.i72.us.i = ashr i32 %sub.i71.us.i, 31
  %cond.i73.us.i = select i1 %tobool.i70.us.i, i32 %shr.i72.us.i, i32 %add28.us.i
  %conv.i74.us.i = trunc i32 %cond.i73.us.i to i8
  store i8 %conv.i74.us.i, i8* %dst.addr.112.us.i, align 1, !tbaa !2
  %arrayidx25.us.i.1 = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 1
  %1 = load i8, i8* %arrayidx25.us.i.1, align 1, !tbaa !2
  %conv26.us.i.1 = zext i8 %1 to i32
  %mul27.us.i.1 = mul nsw i32 %weight.idx1.val, %conv26.us.i.1
  %add28.us.i.1 = add nsw i32 %mul27.us.i.1, %weight.idx2.val
  %tobool.i70.us.i.1 = icmp ugt i32 %add28.us.i.1, 255
  %sub.i71.us.i.1 = sub nsw i32 0, %add28.us.i.1
  %shr.i72.us.i.1 = ashr i32 %sub.i71.us.i.1, 31
  %cond.i73.us.i.1 = select i1 %tobool.i70.us.i.1, i32 %shr.i72.us.i.1, i32 %add28.us.i.1
  %conv.i74.us.i.1 = trunc i32 %cond.i73.us.i.1 to i8
  %arrayidx30.us.i.1 = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 1
  store i8 %conv.i74.us.i.1, i8* %arrayidx30.us.i.1, align 1, !tbaa !2
  %inc35.us.i = add nuw nsw i32 %y13.013.us.i, 1
  %add.ptr36.us.i = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 %i_dst_stride
  %add.ptr37.us.i = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 %i_src_stride
  %exitcond19.i = icmp eq i32 %inc35.us.i, %height
  br i1 %exitcond19.i, label %mc_weight.exit, label %for.cond20.preheader.us.i

for.cond.preheader.i:                             ; preds = %entry
  br i1 %cmp14.i, label %for.cond2.preheader.lr.ph.i, label %mc_weight.exit

for.cond2.preheader.lr.ph.i:                      ; preds = %for.cond.preheader.i
  %sub.i = add nsw i32 %weight.idx.val, -1
  %shl.i = shl nuw i32 1, %sub.i
  br label %for.cond2.preheader.us.i

for.cond2.preheader.us.i:                         ; preds = %for.cond2.preheader.us.i, %for.cond2.preheader.lr.ph.i
  %y.07.us.i = phi i32 [ %inc10.us.i, %for.cond2.preheader.us.i ], [ 0, %for.cond2.preheader.lr.ph.i ]
  %dst.addr.06.us.i = phi i8* [ %add.ptr.us.i, %for.cond2.preheader.us.i ], [ %dst, %for.cond2.preheader.lr.ph.i ]
  %src.addr.05.us.i = phi i8* [ %add.ptr11.us.i, %for.cond2.preheader.us.i ], [ %src, %for.cond2.preheader.lr.ph.i ]
  %2 = load i8, i8* %src.addr.05.us.i, align 1, !tbaa !2
  %conv.us.i = zext i8 %2 to i32
  %mul6.us.i = mul nsw i32 %weight.idx1.val, %conv.us.i
  %add.us.i = add nsw i32 %mul6.us.i, %shl.i
  %shr.us.i = ashr i32 %add.us.i, %weight.idx.val
  %add7.us.i = add nsw i32 %shr.us.i, %weight.idx2.val
  %tobool.i.us.i = icmp ugt i32 %add7.us.i, 255
  %sub.i.us.i = sub nsw i32 0, %add7.us.i
  %shr.i.us.i = ashr i32 %sub.i.us.i, 31
  %cond.i.us.i = select i1 %tobool.i.us.i, i32 %shr.i.us.i, i32 %add7.us.i
  %conv.i.us.i = trunc i32 %cond.i.us.i to i8
  store i8 %conv.i.us.i, i8* %dst.addr.06.us.i, align 1, !tbaa !2
  %arrayidx.us.i.1 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 1
  %3 = load i8, i8* %arrayidx.us.i.1, align 1, !tbaa !2
  %conv.us.i.1 = zext i8 %3 to i32
  %mul6.us.i.1 = mul nsw i32 %weight.idx1.val, %conv.us.i.1
  %add.us.i.1 = add nsw i32 %mul6.us.i.1, %shl.i
  %shr.us.i.1 = ashr i32 %add.us.i.1, %weight.idx.val
  %add7.us.i.1 = add nsw i32 %shr.us.i.1, %weight.idx2.val
  %tobool.i.us.i.1 = icmp ugt i32 %add7.us.i.1, 255
  %sub.i.us.i.1 = sub nsw i32 0, %add7.us.i.1
  %shr.i.us.i.1 = ashr i32 %sub.i.us.i.1, 31
  %cond.i.us.i.1 = select i1 %tobool.i.us.i.1, i32 %shr.i.us.i.1, i32 %add7.us.i.1
  %conv.i.us.i.1 = trunc i32 %cond.i.us.i.1 to i8
  %arrayidx8.us.i.1 = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 1
  store i8 %conv.i.us.i.1, i8* %arrayidx8.us.i.1, align 1, !tbaa !2
  %inc10.us.i = add nuw nsw i32 %y.07.us.i, 1
  %add.ptr.us.i = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 %i_dst_stride
  %add.ptr11.us.i = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 %i_src_stride
  %exitcond17.i = icmp eq i32 %inc10.us.i, %height
  br i1 %exitcond17.i, label %mc_weight.exit, label %for.cond2.preheader.us.i

mc_weight.exit:                                   ; preds = %for.cond20.preheader.us.i, %for.cond2.preheader.us.i, %for.cond14.preheader.i, %for.cond.preheader.i
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @mc_weight_w4(i8* nocapture %dst, i32 %i_dst_stride, i8* nocapture readonly %src, i32 %i_src_stride, %struct.x264_weight_t* nocapture readonly %weight, i32 %height) #2 {
entry:
  %weight.idx = getelementptr %struct.x264_weight_t, %struct.x264_weight_t* %weight, i32 0, i32 2
  %weight.idx.val = load i32, i32* %weight.idx, align 16, !tbaa !84
  %weight.idx1 = getelementptr %struct.x264_weight_t, %struct.x264_weight_t* %weight, i32 0, i32 3
  %weight.idx1.val = load i32, i32* %weight.idx1, align 4, !tbaa !85
  %weight.idx2 = getelementptr %struct.x264_weight_t, %struct.x264_weight_t* %weight, i32 0, i32 4
  %weight.idx2.val = load i32, i32* %weight.idx2, align 8, !tbaa !86
  %cmp.i = icmp sgt i32 %weight.idx.val, 0
  %cmp14.i = icmp sgt i32 %height, 0
  br i1 %cmp.i, label %for.cond.preheader.i, label %for.cond14.preheader.i

for.cond14.preheader.i:                           ; preds = %entry
  br i1 %cmp14.i, label %for.cond20.preheader.us.i, label %mc_weight.exit

for.cond20.preheader.us.i:                        ; preds = %for.cond14.preheader.i, %for.cond20.preheader.us.i
  %y13.013.us.i = phi i32 [ %inc35.us.i, %for.cond20.preheader.us.i ], [ 0, %for.cond14.preheader.i ]
  %dst.addr.112.us.i = phi i8* [ %add.ptr36.us.i, %for.cond20.preheader.us.i ], [ %dst, %for.cond14.preheader.i ]
  %src.addr.111.us.i = phi i8* [ %add.ptr37.us.i, %for.cond20.preheader.us.i ], [ %src, %for.cond14.preheader.i ]
  %0 = load i8, i8* %src.addr.111.us.i, align 1, !tbaa !2
  %conv26.us.i = zext i8 %0 to i32
  %mul27.us.i = mul nsw i32 %weight.idx1.val, %conv26.us.i
  %add28.us.i = add nsw i32 %mul27.us.i, %weight.idx2.val
  %tobool.i70.us.i = icmp ugt i32 %add28.us.i, 255
  %sub.i71.us.i = sub nsw i32 0, %add28.us.i
  %shr.i72.us.i = ashr i32 %sub.i71.us.i, 31
  %cond.i73.us.i = select i1 %tobool.i70.us.i, i32 %shr.i72.us.i, i32 %add28.us.i
  %conv.i74.us.i = trunc i32 %cond.i73.us.i to i8
  store i8 %conv.i74.us.i, i8* %dst.addr.112.us.i, align 1, !tbaa !2
  %arrayidx25.us.i.1 = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 1
  %1 = load i8, i8* %arrayidx25.us.i.1, align 1, !tbaa !2
  %conv26.us.i.1 = zext i8 %1 to i32
  %mul27.us.i.1 = mul nsw i32 %weight.idx1.val, %conv26.us.i.1
  %add28.us.i.1 = add nsw i32 %mul27.us.i.1, %weight.idx2.val
  %tobool.i70.us.i.1 = icmp ugt i32 %add28.us.i.1, 255
  %sub.i71.us.i.1 = sub nsw i32 0, %add28.us.i.1
  %shr.i72.us.i.1 = ashr i32 %sub.i71.us.i.1, 31
  %cond.i73.us.i.1 = select i1 %tobool.i70.us.i.1, i32 %shr.i72.us.i.1, i32 %add28.us.i.1
  %conv.i74.us.i.1 = trunc i32 %cond.i73.us.i.1 to i8
  %arrayidx30.us.i.1 = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 1
  store i8 %conv.i74.us.i.1, i8* %arrayidx30.us.i.1, align 1, !tbaa !2
  %arrayidx25.us.i.2 = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 2
  %2 = load i8, i8* %arrayidx25.us.i.2, align 1, !tbaa !2
  %conv26.us.i.2 = zext i8 %2 to i32
  %mul27.us.i.2 = mul nsw i32 %weight.idx1.val, %conv26.us.i.2
  %add28.us.i.2 = add nsw i32 %mul27.us.i.2, %weight.idx2.val
  %tobool.i70.us.i.2 = icmp ugt i32 %add28.us.i.2, 255
  %sub.i71.us.i.2 = sub nsw i32 0, %add28.us.i.2
  %shr.i72.us.i.2 = ashr i32 %sub.i71.us.i.2, 31
  %cond.i73.us.i.2 = select i1 %tobool.i70.us.i.2, i32 %shr.i72.us.i.2, i32 %add28.us.i.2
  %conv.i74.us.i.2 = trunc i32 %cond.i73.us.i.2 to i8
  %arrayidx30.us.i.2 = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 2
  store i8 %conv.i74.us.i.2, i8* %arrayidx30.us.i.2, align 1, !tbaa !2
  %arrayidx25.us.i.3 = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 3
  %3 = load i8, i8* %arrayidx25.us.i.3, align 1, !tbaa !2
  %conv26.us.i.3 = zext i8 %3 to i32
  %mul27.us.i.3 = mul nsw i32 %weight.idx1.val, %conv26.us.i.3
  %add28.us.i.3 = add nsw i32 %mul27.us.i.3, %weight.idx2.val
  %tobool.i70.us.i.3 = icmp ugt i32 %add28.us.i.3, 255
  %sub.i71.us.i.3 = sub nsw i32 0, %add28.us.i.3
  %shr.i72.us.i.3 = ashr i32 %sub.i71.us.i.3, 31
  %cond.i73.us.i.3 = select i1 %tobool.i70.us.i.3, i32 %shr.i72.us.i.3, i32 %add28.us.i.3
  %conv.i74.us.i.3 = trunc i32 %cond.i73.us.i.3 to i8
  %arrayidx30.us.i.3 = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 3
  store i8 %conv.i74.us.i.3, i8* %arrayidx30.us.i.3, align 1, !tbaa !2
  %inc35.us.i = add nuw nsw i32 %y13.013.us.i, 1
  %add.ptr36.us.i = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 %i_dst_stride
  %add.ptr37.us.i = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 %i_src_stride
  %exitcond19.i = icmp eq i32 %inc35.us.i, %height
  br i1 %exitcond19.i, label %mc_weight.exit, label %for.cond20.preheader.us.i

for.cond.preheader.i:                             ; preds = %entry
  br i1 %cmp14.i, label %for.cond2.preheader.lr.ph.i, label %mc_weight.exit

for.cond2.preheader.lr.ph.i:                      ; preds = %for.cond.preheader.i
  %sub.i = add nsw i32 %weight.idx.val, -1
  %shl.i = shl nuw i32 1, %sub.i
  br label %for.cond2.preheader.us.i

for.cond2.preheader.us.i:                         ; preds = %for.cond2.preheader.us.i, %for.cond2.preheader.lr.ph.i
  %y.07.us.i = phi i32 [ %inc10.us.i, %for.cond2.preheader.us.i ], [ 0, %for.cond2.preheader.lr.ph.i ]
  %dst.addr.06.us.i = phi i8* [ %add.ptr.us.i, %for.cond2.preheader.us.i ], [ %dst, %for.cond2.preheader.lr.ph.i ]
  %src.addr.05.us.i = phi i8* [ %add.ptr11.us.i, %for.cond2.preheader.us.i ], [ %src, %for.cond2.preheader.lr.ph.i ]
  %4 = load i8, i8* %src.addr.05.us.i, align 1, !tbaa !2
  %conv.us.i = zext i8 %4 to i32
  %mul6.us.i = mul nsw i32 %weight.idx1.val, %conv.us.i
  %add.us.i = add nsw i32 %mul6.us.i, %shl.i
  %shr.us.i = ashr i32 %add.us.i, %weight.idx.val
  %add7.us.i = add nsw i32 %shr.us.i, %weight.idx2.val
  %tobool.i.us.i = icmp ugt i32 %add7.us.i, 255
  %sub.i.us.i = sub nsw i32 0, %add7.us.i
  %shr.i.us.i = ashr i32 %sub.i.us.i, 31
  %cond.i.us.i = select i1 %tobool.i.us.i, i32 %shr.i.us.i, i32 %add7.us.i
  %conv.i.us.i = trunc i32 %cond.i.us.i to i8
  store i8 %conv.i.us.i, i8* %dst.addr.06.us.i, align 1, !tbaa !2
  %arrayidx.us.i.1 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 1
  %5 = load i8, i8* %arrayidx.us.i.1, align 1, !tbaa !2
  %conv.us.i.1 = zext i8 %5 to i32
  %mul6.us.i.1 = mul nsw i32 %weight.idx1.val, %conv.us.i.1
  %add.us.i.1 = add nsw i32 %mul6.us.i.1, %shl.i
  %shr.us.i.1 = ashr i32 %add.us.i.1, %weight.idx.val
  %add7.us.i.1 = add nsw i32 %shr.us.i.1, %weight.idx2.val
  %tobool.i.us.i.1 = icmp ugt i32 %add7.us.i.1, 255
  %sub.i.us.i.1 = sub nsw i32 0, %add7.us.i.1
  %shr.i.us.i.1 = ashr i32 %sub.i.us.i.1, 31
  %cond.i.us.i.1 = select i1 %tobool.i.us.i.1, i32 %shr.i.us.i.1, i32 %add7.us.i.1
  %conv.i.us.i.1 = trunc i32 %cond.i.us.i.1 to i8
  %arrayidx8.us.i.1 = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 1
  store i8 %conv.i.us.i.1, i8* %arrayidx8.us.i.1, align 1, !tbaa !2
  %arrayidx.us.i.2 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 2
  %6 = load i8, i8* %arrayidx.us.i.2, align 1, !tbaa !2
  %conv.us.i.2 = zext i8 %6 to i32
  %mul6.us.i.2 = mul nsw i32 %weight.idx1.val, %conv.us.i.2
  %add.us.i.2 = add nsw i32 %mul6.us.i.2, %shl.i
  %shr.us.i.2 = ashr i32 %add.us.i.2, %weight.idx.val
  %add7.us.i.2 = add nsw i32 %shr.us.i.2, %weight.idx2.val
  %tobool.i.us.i.2 = icmp ugt i32 %add7.us.i.2, 255
  %sub.i.us.i.2 = sub nsw i32 0, %add7.us.i.2
  %shr.i.us.i.2 = ashr i32 %sub.i.us.i.2, 31
  %cond.i.us.i.2 = select i1 %tobool.i.us.i.2, i32 %shr.i.us.i.2, i32 %add7.us.i.2
  %conv.i.us.i.2 = trunc i32 %cond.i.us.i.2 to i8
  %arrayidx8.us.i.2 = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 2
  store i8 %conv.i.us.i.2, i8* %arrayidx8.us.i.2, align 1, !tbaa !2
  %arrayidx.us.i.3 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 3
  %7 = load i8, i8* %arrayidx.us.i.3, align 1, !tbaa !2
  %conv.us.i.3 = zext i8 %7 to i32
  %mul6.us.i.3 = mul nsw i32 %weight.idx1.val, %conv.us.i.3
  %add.us.i.3 = add nsw i32 %mul6.us.i.3, %shl.i
  %shr.us.i.3 = ashr i32 %add.us.i.3, %weight.idx.val
  %add7.us.i.3 = add nsw i32 %shr.us.i.3, %weight.idx2.val
  %tobool.i.us.i.3 = icmp ugt i32 %add7.us.i.3, 255
  %sub.i.us.i.3 = sub nsw i32 0, %add7.us.i.3
  %shr.i.us.i.3 = ashr i32 %sub.i.us.i.3, 31
  %cond.i.us.i.3 = select i1 %tobool.i.us.i.3, i32 %shr.i.us.i.3, i32 %add7.us.i.3
  %conv.i.us.i.3 = trunc i32 %cond.i.us.i.3 to i8
  %arrayidx8.us.i.3 = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 3
  store i8 %conv.i.us.i.3, i8* %arrayidx8.us.i.3, align 1, !tbaa !2
  %inc10.us.i = add nuw nsw i32 %y.07.us.i, 1
  %add.ptr.us.i = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 %i_dst_stride
  %add.ptr11.us.i = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 %i_src_stride
  %exitcond17.i = icmp eq i32 %inc10.us.i, %height
  br i1 %exitcond17.i, label %mc_weight.exit, label %for.cond2.preheader.us.i

mc_weight.exit:                                   ; preds = %for.cond20.preheader.us.i, %for.cond2.preheader.us.i, %for.cond14.preheader.i, %for.cond.preheader.i
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @mc_weight_w8(i8* nocapture %dst, i32 %i_dst_stride, i8* nocapture readonly %src, i32 %i_src_stride, %struct.x264_weight_t* nocapture readonly %weight, i32 %height) #2 {
entry:
  %weight.idx = getelementptr %struct.x264_weight_t, %struct.x264_weight_t* %weight, i32 0, i32 2
  %weight.idx.val = load i32, i32* %weight.idx, align 16, !tbaa !84
  %weight.idx1 = getelementptr %struct.x264_weight_t, %struct.x264_weight_t* %weight, i32 0, i32 3
  %weight.idx1.val = load i32, i32* %weight.idx1, align 4, !tbaa !85
  %weight.idx2 = getelementptr %struct.x264_weight_t, %struct.x264_weight_t* %weight, i32 0, i32 4
  %weight.idx2.val = load i32, i32* %weight.idx2, align 8, !tbaa !86
  %cmp.i = icmp sgt i32 %weight.idx.val, 0
  %cmp14.i = icmp sgt i32 %height, 0
  br i1 %cmp.i, label %for.cond.preheader.i, label %for.cond14.preheader.i

for.cond14.preheader.i:                           ; preds = %entry
  br i1 %cmp14.i, label %for.cond20.preheader.us.i, label %mc_weight.exit

for.cond20.preheader.us.i:                        ; preds = %for.cond14.preheader.i, %for.cond20.preheader.us.i
  %y13.013.us.i = phi i32 [ %inc35.us.i, %for.cond20.preheader.us.i ], [ 0, %for.cond14.preheader.i ]
  %dst.addr.112.us.i = phi i8* [ %add.ptr36.us.i, %for.cond20.preheader.us.i ], [ %dst, %for.cond14.preheader.i ]
  %src.addr.111.us.i = phi i8* [ %add.ptr37.us.i, %for.cond20.preheader.us.i ], [ %src, %for.cond14.preheader.i ]
  %0 = load i8, i8* %src.addr.111.us.i, align 1, !tbaa !2
  %conv26.us.i = zext i8 %0 to i32
  %mul27.us.i = mul nsw i32 %weight.idx1.val, %conv26.us.i
  %add28.us.i = add nsw i32 %mul27.us.i, %weight.idx2.val
  %tobool.i70.us.i = icmp ugt i32 %add28.us.i, 255
  %sub.i71.us.i = sub nsw i32 0, %add28.us.i
  %shr.i72.us.i = ashr i32 %sub.i71.us.i, 31
  %cond.i73.us.i = select i1 %tobool.i70.us.i, i32 %shr.i72.us.i, i32 %add28.us.i
  %conv.i74.us.i = trunc i32 %cond.i73.us.i to i8
  store i8 %conv.i74.us.i, i8* %dst.addr.112.us.i, align 1, !tbaa !2
  %arrayidx25.us.i.1 = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 1
  %1 = load i8, i8* %arrayidx25.us.i.1, align 1, !tbaa !2
  %conv26.us.i.1 = zext i8 %1 to i32
  %mul27.us.i.1 = mul nsw i32 %weight.idx1.val, %conv26.us.i.1
  %add28.us.i.1 = add nsw i32 %mul27.us.i.1, %weight.idx2.val
  %tobool.i70.us.i.1 = icmp ugt i32 %add28.us.i.1, 255
  %sub.i71.us.i.1 = sub nsw i32 0, %add28.us.i.1
  %shr.i72.us.i.1 = ashr i32 %sub.i71.us.i.1, 31
  %cond.i73.us.i.1 = select i1 %tobool.i70.us.i.1, i32 %shr.i72.us.i.1, i32 %add28.us.i.1
  %conv.i74.us.i.1 = trunc i32 %cond.i73.us.i.1 to i8
  %arrayidx30.us.i.1 = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 1
  store i8 %conv.i74.us.i.1, i8* %arrayidx30.us.i.1, align 1, !tbaa !2
  %arrayidx25.us.i.2 = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 2
  %2 = load i8, i8* %arrayidx25.us.i.2, align 1, !tbaa !2
  %conv26.us.i.2 = zext i8 %2 to i32
  %mul27.us.i.2 = mul nsw i32 %weight.idx1.val, %conv26.us.i.2
  %add28.us.i.2 = add nsw i32 %mul27.us.i.2, %weight.idx2.val
  %tobool.i70.us.i.2 = icmp ugt i32 %add28.us.i.2, 255
  %sub.i71.us.i.2 = sub nsw i32 0, %add28.us.i.2
  %shr.i72.us.i.2 = ashr i32 %sub.i71.us.i.2, 31
  %cond.i73.us.i.2 = select i1 %tobool.i70.us.i.2, i32 %shr.i72.us.i.2, i32 %add28.us.i.2
  %conv.i74.us.i.2 = trunc i32 %cond.i73.us.i.2 to i8
  %arrayidx30.us.i.2 = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 2
  store i8 %conv.i74.us.i.2, i8* %arrayidx30.us.i.2, align 1, !tbaa !2
  %arrayidx25.us.i.3 = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 3
  %3 = load i8, i8* %arrayidx25.us.i.3, align 1, !tbaa !2
  %conv26.us.i.3 = zext i8 %3 to i32
  %mul27.us.i.3 = mul nsw i32 %weight.idx1.val, %conv26.us.i.3
  %add28.us.i.3 = add nsw i32 %mul27.us.i.3, %weight.idx2.val
  %tobool.i70.us.i.3 = icmp ugt i32 %add28.us.i.3, 255
  %sub.i71.us.i.3 = sub nsw i32 0, %add28.us.i.3
  %shr.i72.us.i.3 = ashr i32 %sub.i71.us.i.3, 31
  %cond.i73.us.i.3 = select i1 %tobool.i70.us.i.3, i32 %shr.i72.us.i.3, i32 %add28.us.i.3
  %conv.i74.us.i.3 = trunc i32 %cond.i73.us.i.3 to i8
  %arrayidx30.us.i.3 = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 3
  store i8 %conv.i74.us.i.3, i8* %arrayidx30.us.i.3, align 1, !tbaa !2
  %arrayidx25.us.i.4 = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 4
  %4 = load i8, i8* %arrayidx25.us.i.4, align 1, !tbaa !2
  %conv26.us.i.4 = zext i8 %4 to i32
  %mul27.us.i.4 = mul nsw i32 %weight.idx1.val, %conv26.us.i.4
  %add28.us.i.4 = add nsw i32 %mul27.us.i.4, %weight.idx2.val
  %tobool.i70.us.i.4 = icmp ugt i32 %add28.us.i.4, 255
  %sub.i71.us.i.4 = sub nsw i32 0, %add28.us.i.4
  %shr.i72.us.i.4 = ashr i32 %sub.i71.us.i.4, 31
  %cond.i73.us.i.4 = select i1 %tobool.i70.us.i.4, i32 %shr.i72.us.i.4, i32 %add28.us.i.4
  %conv.i74.us.i.4 = trunc i32 %cond.i73.us.i.4 to i8
  %arrayidx30.us.i.4 = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 4
  store i8 %conv.i74.us.i.4, i8* %arrayidx30.us.i.4, align 1, !tbaa !2
  %arrayidx25.us.i.5 = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 5
  %5 = load i8, i8* %arrayidx25.us.i.5, align 1, !tbaa !2
  %conv26.us.i.5 = zext i8 %5 to i32
  %mul27.us.i.5 = mul nsw i32 %weight.idx1.val, %conv26.us.i.5
  %add28.us.i.5 = add nsw i32 %mul27.us.i.5, %weight.idx2.val
  %tobool.i70.us.i.5 = icmp ugt i32 %add28.us.i.5, 255
  %sub.i71.us.i.5 = sub nsw i32 0, %add28.us.i.5
  %shr.i72.us.i.5 = ashr i32 %sub.i71.us.i.5, 31
  %cond.i73.us.i.5 = select i1 %tobool.i70.us.i.5, i32 %shr.i72.us.i.5, i32 %add28.us.i.5
  %conv.i74.us.i.5 = trunc i32 %cond.i73.us.i.5 to i8
  %arrayidx30.us.i.5 = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 5
  store i8 %conv.i74.us.i.5, i8* %arrayidx30.us.i.5, align 1, !tbaa !2
  %arrayidx25.us.i.6 = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 6
  %6 = load i8, i8* %arrayidx25.us.i.6, align 1, !tbaa !2
  %conv26.us.i.6 = zext i8 %6 to i32
  %mul27.us.i.6 = mul nsw i32 %weight.idx1.val, %conv26.us.i.6
  %add28.us.i.6 = add nsw i32 %mul27.us.i.6, %weight.idx2.val
  %tobool.i70.us.i.6 = icmp ugt i32 %add28.us.i.6, 255
  %sub.i71.us.i.6 = sub nsw i32 0, %add28.us.i.6
  %shr.i72.us.i.6 = ashr i32 %sub.i71.us.i.6, 31
  %cond.i73.us.i.6 = select i1 %tobool.i70.us.i.6, i32 %shr.i72.us.i.6, i32 %add28.us.i.6
  %conv.i74.us.i.6 = trunc i32 %cond.i73.us.i.6 to i8
  %arrayidx30.us.i.6 = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 6
  store i8 %conv.i74.us.i.6, i8* %arrayidx30.us.i.6, align 1, !tbaa !2
  %arrayidx25.us.i.7 = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 7
  %7 = load i8, i8* %arrayidx25.us.i.7, align 1, !tbaa !2
  %conv26.us.i.7 = zext i8 %7 to i32
  %mul27.us.i.7 = mul nsw i32 %weight.idx1.val, %conv26.us.i.7
  %add28.us.i.7 = add nsw i32 %mul27.us.i.7, %weight.idx2.val
  %tobool.i70.us.i.7 = icmp ugt i32 %add28.us.i.7, 255
  %sub.i71.us.i.7 = sub nsw i32 0, %add28.us.i.7
  %shr.i72.us.i.7 = ashr i32 %sub.i71.us.i.7, 31
  %cond.i73.us.i.7 = select i1 %tobool.i70.us.i.7, i32 %shr.i72.us.i.7, i32 %add28.us.i.7
  %conv.i74.us.i.7 = trunc i32 %cond.i73.us.i.7 to i8
  %arrayidx30.us.i.7 = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 7
  store i8 %conv.i74.us.i.7, i8* %arrayidx30.us.i.7, align 1, !tbaa !2
  %inc35.us.i = add nuw nsw i32 %y13.013.us.i, 1
  %add.ptr36.us.i = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 %i_dst_stride
  %add.ptr37.us.i = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 %i_src_stride
  %exitcond19.i = icmp eq i32 %inc35.us.i, %height
  br i1 %exitcond19.i, label %mc_weight.exit, label %for.cond20.preheader.us.i

for.cond.preheader.i:                             ; preds = %entry
  br i1 %cmp14.i, label %for.cond2.preheader.lr.ph.i, label %mc_weight.exit

for.cond2.preheader.lr.ph.i:                      ; preds = %for.cond.preheader.i
  %sub.i = add nsw i32 %weight.idx.val, -1
  %shl.i = shl nuw i32 1, %sub.i
  br label %for.cond2.preheader.us.i

for.cond2.preheader.us.i:                         ; preds = %for.cond2.preheader.us.i, %for.cond2.preheader.lr.ph.i
  %y.07.us.i = phi i32 [ %inc10.us.i, %for.cond2.preheader.us.i ], [ 0, %for.cond2.preheader.lr.ph.i ]
  %dst.addr.06.us.i = phi i8* [ %add.ptr.us.i, %for.cond2.preheader.us.i ], [ %dst, %for.cond2.preheader.lr.ph.i ]
  %src.addr.05.us.i = phi i8* [ %add.ptr11.us.i, %for.cond2.preheader.us.i ], [ %src, %for.cond2.preheader.lr.ph.i ]
  %8 = load i8, i8* %src.addr.05.us.i, align 1, !tbaa !2
  %conv.us.i = zext i8 %8 to i32
  %mul6.us.i = mul nsw i32 %weight.idx1.val, %conv.us.i
  %add.us.i = add nsw i32 %mul6.us.i, %shl.i
  %shr.us.i = ashr i32 %add.us.i, %weight.idx.val
  %add7.us.i = add nsw i32 %shr.us.i, %weight.idx2.val
  %tobool.i.us.i = icmp ugt i32 %add7.us.i, 255
  %sub.i.us.i = sub nsw i32 0, %add7.us.i
  %shr.i.us.i = ashr i32 %sub.i.us.i, 31
  %cond.i.us.i = select i1 %tobool.i.us.i, i32 %shr.i.us.i, i32 %add7.us.i
  %conv.i.us.i = trunc i32 %cond.i.us.i to i8
  store i8 %conv.i.us.i, i8* %dst.addr.06.us.i, align 1, !tbaa !2
  %arrayidx.us.i.1 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 1
  %9 = load i8, i8* %arrayidx.us.i.1, align 1, !tbaa !2
  %conv.us.i.1 = zext i8 %9 to i32
  %mul6.us.i.1 = mul nsw i32 %weight.idx1.val, %conv.us.i.1
  %add.us.i.1 = add nsw i32 %mul6.us.i.1, %shl.i
  %shr.us.i.1 = ashr i32 %add.us.i.1, %weight.idx.val
  %add7.us.i.1 = add nsw i32 %shr.us.i.1, %weight.idx2.val
  %tobool.i.us.i.1 = icmp ugt i32 %add7.us.i.1, 255
  %sub.i.us.i.1 = sub nsw i32 0, %add7.us.i.1
  %shr.i.us.i.1 = ashr i32 %sub.i.us.i.1, 31
  %cond.i.us.i.1 = select i1 %tobool.i.us.i.1, i32 %shr.i.us.i.1, i32 %add7.us.i.1
  %conv.i.us.i.1 = trunc i32 %cond.i.us.i.1 to i8
  %arrayidx8.us.i.1 = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 1
  store i8 %conv.i.us.i.1, i8* %arrayidx8.us.i.1, align 1, !tbaa !2
  %arrayidx.us.i.2 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 2
  %10 = load i8, i8* %arrayidx.us.i.2, align 1, !tbaa !2
  %conv.us.i.2 = zext i8 %10 to i32
  %mul6.us.i.2 = mul nsw i32 %weight.idx1.val, %conv.us.i.2
  %add.us.i.2 = add nsw i32 %mul6.us.i.2, %shl.i
  %shr.us.i.2 = ashr i32 %add.us.i.2, %weight.idx.val
  %add7.us.i.2 = add nsw i32 %shr.us.i.2, %weight.idx2.val
  %tobool.i.us.i.2 = icmp ugt i32 %add7.us.i.2, 255
  %sub.i.us.i.2 = sub nsw i32 0, %add7.us.i.2
  %shr.i.us.i.2 = ashr i32 %sub.i.us.i.2, 31
  %cond.i.us.i.2 = select i1 %tobool.i.us.i.2, i32 %shr.i.us.i.2, i32 %add7.us.i.2
  %conv.i.us.i.2 = trunc i32 %cond.i.us.i.2 to i8
  %arrayidx8.us.i.2 = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 2
  store i8 %conv.i.us.i.2, i8* %arrayidx8.us.i.2, align 1, !tbaa !2
  %arrayidx.us.i.3 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 3
  %11 = load i8, i8* %arrayidx.us.i.3, align 1, !tbaa !2
  %conv.us.i.3 = zext i8 %11 to i32
  %mul6.us.i.3 = mul nsw i32 %weight.idx1.val, %conv.us.i.3
  %add.us.i.3 = add nsw i32 %mul6.us.i.3, %shl.i
  %shr.us.i.3 = ashr i32 %add.us.i.3, %weight.idx.val
  %add7.us.i.3 = add nsw i32 %shr.us.i.3, %weight.idx2.val
  %tobool.i.us.i.3 = icmp ugt i32 %add7.us.i.3, 255
  %sub.i.us.i.3 = sub nsw i32 0, %add7.us.i.3
  %shr.i.us.i.3 = ashr i32 %sub.i.us.i.3, 31
  %cond.i.us.i.3 = select i1 %tobool.i.us.i.3, i32 %shr.i.us.i.3, i32 %add7.us.i.3
  %conv.i.us.i.3 = trunc i32 %cond.i.us.i.3 to i8
  %arrayidx8.us.i.3 = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 3
  store i8 %conv.i.us.i.3, i8* %arrayidx8.us.i.3, align 1, !tbaa !2
  %arrayidx.us.i.4 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 4
  %12 = load i8, i8* %arrayidx.us.i.4, align 1, !tbaa !2
  %conv.us.i.4 = zext i8 %12 to i32
  %mul6.us.i.4 = mul nsw i32 %weight.idx1.val, %conv.us.i.4
  %add.us.i.4 = add nsw i32 %mul6.us.i.4, %shl.i
  %shr.us.i.4 = ashr i32 %add.us.i.4, %weight.idx.val
  %add7.us.i.4 = add nsw i32 %shr.us.i.4, %weight.idx2.val
  %tobool.i.us.i.4 = icmp ugt i32 %add7.us.i.4, 255
  %sub.i.us.i.4 = sub nsw i32 0, %add7.us.i.4
  %shr.i.us.i.4 = ashr i32 %sub.i.us.i.4, 31
  %cond.i.us.i.4 = select i1 %tobool.i.us.i.4, i32 %shr.i.us.i.4, i32 %add7.us.i.4
  %conv.i.us.i.4 = trunc i32 %cond.i.us.i.4 to i8
  %arrayidx8.us.i.4 = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 4
  store i8 %conv.i.us.i.4, i8* %arrayidx8.us.i.4, align 1, !tbaa !2
  %arrayidx.us.i.5 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 5
  %13 = load i8, i8* %arrayidx.us.i.5, align 1, !tbaa !2
  %conv.us.i.5 = zext i8 %13 to i32
  %mul6.us.i.5 = mul nsw i32 %weight.idx1.val, %conv.us.i.5
  %add.us.i.5 = add nsw i32 %mul6.us.i.5, %shl.i
  %shr.us.i.5 = ashr i32 %add.us.i.5, %weight.idx.val
  %add7.us.i.5 = add nsw i32 %shr.us.i.5, %weight.idx2.val
  %tobool.i.us.i.5 = icmp ugt i32 %add7.us.i.5, 255
  %sub.i.us.i.5 = sub nsw i32 0, %add7.us.i.5
  %shr.i.us.i.5 = ashr i32 %sub.i.us.i.5, 31
  %cond.i.us.i.5 = select i1 %tobool.i.us.i.5, i32 %shr.i.us.i.5, i32 %add7.us.i.5
  %conv.i.us.i.5 = trunc i32 %cond.i.us.i.5 to i8
  %arrayidx8.us.i.5 = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 5
  store i8 %conv.i.us.i.5, i8* %arrayidx8.us.i.5, align 1, !tbaa !2
  %arrayidx.us.i.6 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 6
  %14 = load i8, i8* %arrayidx.us.i.6, align 1, !tbaa !2
  %conv.us.i.6 = zext i8 %14 to i32
  %mul6.us.i.6 = mul nsw i32 %weight.idx1.val, %conv.us.i.6
  %add.us.i.6 = add nsw i32 %mul6.us.i.6, %shl.i
  %shr.us.i.6 = ashr i32 %add.us.i.6, %weight.idx.val
  %add7.us.i.6 = add nsw i32 %shr.us.i.6, %weight.idx2.val
  %tobool.i.us.i.6 = icmp ugt i32 %add7.us.i.6, 255
  %sub.i.us.i.6 = sub nsw i32 0, %add7.us.i.6
  %shr.i.us.i.6 = ashr i32 %sub.i.us.i.6, 31
  %cond.i.us.i.6 = select i1 %tobool.i.us.i.6, i32 %shr.i.us.i.6, i32 %add7.us.i.6
  %conv.i.us.i.6 = trunc i32 %cond.i.us.i.6 to i8
  %arrayidx8.us.i.6 = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 6
  store i8 %conv.i.us.i.6, i8* %arrayidx8.us.i.6, align 1, !tbaa !2
  %arrayidx.us.i.7 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 7
  %15 = load i8, i8* %arrayidx.us.i.7, align 1, !tbaa !2
  %conv.us.i.7 = zext i8 %15 to i32
  %mul6.us.i.7 = mul nsw i32 %weight.idx1.val, %conv.us.i.7
  %add.us.i.7 = add nsw i32 %mul6.us.i.7, %shl.i
  %shr.us.i.7 = ashr i32 %add.us.i.7, %weight.idx.val
  %add7.us.i.7 = add nsw i32 %shr.us.i.7, %weight.idx2.val
  %tobool.i.us.i.7 = icmp ugt i32 %add7.us.i.7, 255
  %sub.i.us.i.7 = sub nsw i32 0, %add7.us.i.7
  %shr.i.us.i.7 = ashr i32 %sub.i.us.i.7, 31
  %cond.i.us.i.7 = select i1 %tobool.i.us.i.7, i32 %shr.i.us.i.7, i32 %add7.us.i.7
  %conv.i.us.i.7 = trunc i32 %cond.i.us.i.7 to i8
  %arrayidx8.us.i.7 = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 7
  store i8 %conv.i.us.i.7, i8* %arrayidx8.us.i.7, align 1, !tbaa !2
  %inc10.us.i = add nuw nsw i32 %y.07.us.i, 1
  %add.ptr.us.i = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 %i_dst_stride
  %add.ptr11.us.i = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 %i_src_stride
  %exitcond17.i = icmp eq i32 %inc10.us.i, %height
  br i1 %exitcond17.i, label %mc_weight.exit, label %for.cond2.preheader.us.i

mc_weight.exit:                                   ; preds = %for.cond20.preheader.us.i, %for.cond2.preheader.us.i, %for.cond14.preheader.i, %for.cond.preheader.i
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @mc_weight_w12(i8* nocapture %dst, i32 %i_dst_stride, i8* nocapture readonly %src, i32 %i_src_stride, %struct.x264_weight_t* nocapture readonly %weight, i32 %height) #2 {
entry:
  %weight.idx = getelementptr %struct.x264_weight_t, %struct.x264_weight_t* %weight, i32 0, i32 2
  %weight.idx.val = load i32, i32* %weight.idx, align 16, !tbaa !84
  %weight.idx1 = getelementptr %struct.x264_weight_t, %struct.x264_weight_t* %weight, i32 0, i32 3
  %weight.idx1.val = load i32, i32* %weight.idx1, align 4, !tbaa !85
  %weight.idx2 = getelementptr %struct.x264_weight_t, %struct.x264_weight_t* %weight, i32 0, i32 4
  %weight.idx2.val = load i32, i32* %weight.idx2, align 8, !tbaa !86
  %cmp.i = icmp sgt i32 %weight.idx.val, 0
  %cmp14.i = icmp sgt i32 %height, 0
  br i1 %cmp.i, label %for.cond.preheader.i, label %for.cond14.preheader.i

for.cond14.preheader.i:                           ; preds = %entry
  br i1 %cmp14.i, label %for.cond20.preheader.us.i, label %mc_weight.exit

for.cond20.preheader.us.i:                        ; preds = %for.cond14.preheader.i, %for.cond20.preheader.us.i
  %y13.013.us.i = phi i32 [ %inc35.us.i, %for.cond20.preheader.us.i ], [ 0, %for.cond14.preheader.i ]
  %dst.addr.112.us.i = phi i8* [ %add.ptr36.us.i, %for.cond20.preheader.us.i ], [ %dst, %for.cond14.preheader.i ]
  %src.addr.111.us.i = phi i8* [ %add.ptr37.us.i, %for.cond20.preheader.us.i ], [ %src, %for.cond14.preheader.i ]
  %0 = load i8, i8* %src.addr.111.us.i, align 1, !tbaa !2
  %conv26.us.i = zext i8 %0 to i32
  %mul27.us.i = mul nsw i32 %weight.idx1.val, %conv26.us.i
  %add28.us.i = add nsw i32 %mul27.us.i, %weight.idx2.val
  %tobool.i70.us.i = icmp ugt i32 %add28.us.i, 255
  %sub.i71.us.i = sub nsw i32 0, %add28.us.i
  %shr.i72.us.i = ashr i32 %sub.i71.us.i, 31
  %cond.i73.us.i = select i1 %tobool.i70.us.i, i32 %shr.i72.us.i, i32 %add28.us.i
  %conv.i74.us.i = trunc i32 %cond.i73.us.i to i8
  store i8 %conv.i74.us.i, i8* %dst.addr.112.us.i, align 1, !tbaa !2
  %arrayidx25.us.i.1 = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 1
  %1 = load i8, i8* %arrayidx25.us.i.1, align 1, !tbaa !2
  %conv26.us.i.1 = zext i8 %1 to i32
  %mul27.us.i.1 = mul nsw i32 %weight.idx1.val, %conv26.us.i.1
  %add28.us.i.1 = add nsw i32 %mul27.us.i.1, %weight.idx2.val
  %tobool.i70.us.i.1 = icmp ugt i32 %add28.us.i.1, 255
  %sub.i71.us.i.1 = sub nsw i32 0, %add28.us.i.1
  %shr.i72.us.i.1 = ashr i32 %sub.i71.us.i.1, 31
  %cond.i73.us.i.1 = select i1 %tobool.i70.us.i.1, i32 %shr.i72.us.i.1, i32 %add28.us.i.1
  %conv.i74.us.i.1 = trunc i32 %cond.i73.us.i.1 to i8
  %arrayidx30.us.i.1 = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 1
  store i8 %conv.i74.us.i.1, i8* %arrayidx30.us.i.1, align 1, !tbaa !2
  %arrayidx25.us.i.2 = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 2
  %2 = load i8, i8* %arrayidx25.us.i.2, align 1, !tbaa !2
  %conv26.us.i.2 = zext i8 %2 to i32
  %mul27.us.i.2 = mul nsw i32 %weight.idx1.val, %conv26.us.i.2
  %add28.us.i.2 = add nsw i32 %mul27.us.i.2, %weight.idx2.val
  %tobool.i70.us.i.2 = icmp ugt i32 %add28.us.i.2, 255
  %sub.i71.us.i.2 = sub nsw i32 0, %add28.us.i.2
  %shr.i72.us.i.2 = ashr i32 %sub.i71.us.i.2, 31
  %cond.i73.us.i.2 = select i1 %tobool.i70.us.i.2, i32 %shr.i72.us.i.2, i32 %add28.us.i.2
  %conv.i74.us.i.2 = trunc i32 %cond.i73.us.i.2 to i8
  %arrayidx30.us.i.2 = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 2
  store i8 %conv.i74.us.i.2, i8* %arrayidx30.us.i.2, align 1, !tbaa !2
  %arrayidx25.us.i.3 = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 3
  %3 = load i8, i8* %arrayidx25.us.i.3, align 1, !tbaa !2
  %conv26.us.i.3 = zext i8 %3 to i32
  %mul27.us.i.3 = mul nsw i32 %weight.idx1.val, %conv26.us.i.3
  %add28.us.i.3 = add nsw i32 %mul27.us.i.3, %weight.idx2.val
  %tobool.i70.us.i.3 = icmp ugt i32 %add28.us.i.3, 255
  %sub.i71.us.i.3 = sub nsw i32 0, %add28.us.i.3
  %shr.i72.us.i.3 = ashr i32 %sub.i71.us.i.3, 31
  %cond.i73.us.i.3 = select i1 %tobool.i70.us.i.3, i32 %shr.i72.us.i.3, i32 %add28.us.i.3
  %conv.i74.us.i.3 = trunc i32 %cond.i73.us.i.3 to i8
  %arrayidx30.us.i.3 = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 3
  store i8 %conv.i74.us.i.3, i8* %arrayidx30.us.i.3, align 1, !tbaa !2
  %arrayidx25.us.i.4 = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 4
  %4 = load i8, i8* %arrayidx25.us.i.4, align 1, !tbaa !2
  %conv26.us.i.4 = zext i8 %4 to i32
  %mul27.us.i.4 = mul nsw i32 %weight.idx1.val, %conv26.us.i.4
  %add28.us.i.4 = add nsw i32 %mul27.us.i.4, %weight.idx2.val
  %tobool.i70.us.i.4 = icmp ugt i32 %add28.us.i.4, 255
  %sub.i71.us.i.4 = sub nsw i32 0, %add28.us.i.4
  %shr.i72.us.i.4 = ashr i32 %sub.i71.us.i.4, 31
  %cond.i73.us.i.4 = select i1 %tobool.i70.us.i.4, i32 %shr.i72.us.i.4, i32 %add28.us.i.4
  %conv.i74.us.i.4 = trunc i32 %cond.i73.us.i.4 to i8
  %arrayidx30.us.i.4 = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 4
  store i8 %conv.i74.us.i.4, i8* %arrayidx30.us.i.4, align 1, !tbaa !2
  %arrayidx25.us.i.5 = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 5
  %5 = load i8, i8* %arrayidx25.us.i.5, align 1, !tbaa !2
  %conv26.us.i.5 = zext i8 %5 to i32
  %mul27.us.i.5 = mul nsw i32 %weight.idx1.val, %conv26.us.i.5
  %add28.us.i.5 = add nsw i32 %mul27.us.i.5, %weight.idx2.val
  %tobool.i70.us.i.5 = icmp ugt i32 %add28.us.i.5, 255
  %sub.i71.us.i.5 = sub nsw i32 0, %add28.us.i.5
  %shr.i72.us.i.5 = ashr i32 %sub.i71.us.i.5, 31
  %cond.i73.us.i.5 = select i1 %tobool.i70.us.i.5, i32 %shr.i72.us.i.5, i32 %add28.us.i.5
  %conv.i74.us.i.5 = trunc i32 %cond.i73.us.i.5 to i8
  %arrayidx30.us.i.5 = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 5
  store i8 %conv.i74.us.i.5, i8* %arrayidx30.us.i.5, align 1, !tbaa !2
  %arrayidx25.us.i.6 = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 6
  %6 = load i8, i8* %arrayidx25.us.i.6, align 1, !tbaa !2
  %conv26.us.i.6 = zext i8 %6 to i32
  %mul27.us.i.6 = mul nsw i32 %weight.idx1.val, %conv26.us.i.6
  %add28.us.i.6 = add nsw i32 %mul27.us.i.6, %weight.idx2.val
  %tobool.i70.us.i.6 = icmp ugt i32 %add28.us.i.6, 255
  %sub.i71.us.i.6 = sub nsw i32 0, %add28.us.i.6
  %shr.i72.us.i.6 = ashr i32 %sub.i71.us.i.6, 31
  %cond.i73.us.i.6 = select i1 %tobool.i70.us.i.6, i32 %shr.i72.us.i.6, i32 %add28.us.i.6
  %conv.i74.us.i.6 = trunc i32 %cond.i73.us.i.6 to i8
  %arrayidx30.us.i.6 = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 6
  store i8 %conv.i74.us.i.6, i8* %arrayidx30.us.i.6, align 1, !tbaa !2
  %arrayidx25.us.i.7 = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 7
  %7 = load i8, i8* %arrayidx25.us.i.7, align 1, !tbaa !2
  %conv26.us.i.7 = zext i8 %7 to i32
  %mul27.us.i.7 = mul nsw i32 %weight.idx1.val, %conv26.us.i.7
  %add28.us.i.7 = add nsw i32 %mul27.us.i.7, %weight.idx2.val
  %tobool.i70.us.i.7 = icmp ugt i32 %add28.us.i.7, 255
  %sub.i71.us.i.7 = sub nsw i32 0, %add28.us.i.7
  %shr.i72.us.i.7 = ashr i32 %sub.i71.us.i.7, 31
  %cond.i73.us.i.7 = select i1 %tobool.i70.us.i.7, i32 %shr.i72.us.i.7, i32 %add28.us.i.7
  %conv.i74.us.i.7 = trunc i32 %cond.i73.us.i.7 to i8
  %arrayidx30.us.i.7 = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 7
  store i8 %conv.i74.us.i.7, i8* %arrayidx30.us.i.7, align 1, !tbaa !2
  %arrayidx25.us.i.8 = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 8
  %8 = load i8, i8* %arrayidx25.us.i.8, align 1, !tbaa !2
  %conv26.us.i.8 = zext i8 %8 to i32
  %mul27.us.i.8 = mul nsw i32 %weight.idx1.val, %conv26.us.i.8
  %add28.us.i.8 = add nsw i32 %mul27.us.i.8, %weight.idx2.val
  %tobool.i70.us.i.8 = icmp ugt i32 %add28.us.i.8, 255
  %sub.i71.us.i.8 = sub nsw i32 0, %add28.us.i.8
  %shr.i72.us.i.8 = ashr i32 %sub.i71.us.i.8, 31
  %cond.i73.us.i.8 = select i1 %tobool.i70.us.i.8, i32 %shr.i72.us.i.8, i32 %add28.us.i.8
  %conv.i74.us.i.8 = trunc i32 %cond.i73.us.i.8 to i8
  %arrayidx30.us.i.8 = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 8
  store i8 %conv.i74.us.i.8, i8* %arrayidx30.us.i.8, align 1, !tbaa !2
  %arrayidx25.us.i.9 = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 9
  %9 = load i8, i8* %arrayidx25.us.i.9, align 1, !tbaa !2
  %conv26.us.i.9 = zext i8 %9 to i32
  %mul27.us.i.9 = mul nsw i32 %weight.idx1.val, %conv26.us.i.9
  %add28.us.i.9 = add nsw i32 %mul27.us.i.9, %weight.idx2.val
  %tobool.i70.us.i.9 = icmp ugt i32 %add28.us.i.9, 255
  %sub.i71.us.i.9 = sub nsw i32 0, %add28.us.i.9
  %shr.i72.us.i.9 = ashr i32 %sub.i71.us.i.9, 31
  %cond.i73.us.i.9 = select i1 %tobool.i70.us.i.9, i32 %shr.i72.us.i.9, i32 %add28.us.i.9
  %conv.i74.us.i.9 = trunc i32 %cond.i73.us.i.9 to i8
  %arrayidx30.us.i.9 = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 9
  store i8 %conv.i74.us.i.9, i8* %arrayidx30.us.i.9, align 1, !tbaa !2
  %arrayidx25.us.i.10 = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 10
  %10 = load i8, i8* %arrayidx25.us.i.10, align 1, !tbaa !2
  %conv26.us.i.10 = zext i8 %10 to i32
  %mul27.us.i.10 = mul nsw i32 %weight.idx1.val, %conv26.us.i.10
  %add28.us.i.10 = add nsw i32 %mul27.us.i.10, %weight.idx2.val
  %tobool.i70.us.i.10 = icmp ugt i32 %add28.us.i.10, 255
  %sub.i71.us.i.10 = sub nsw i32 0, %add28.us.i.10
  %shr.i72.us.i.10 = ashr i32 %sub.i71.us.i.10, 31
  %cond.i73.us.i.10 = select i1 %tobool.i70.us.i.10, i32 %shr.i72.us.i.10, i32 %add28.us.i.10
  %conv.i74.us.i.10 = trunc i32 %cond.i73.us.i.10 to i8
  %arrayidx30.us.i.10 = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 10
  store i8 %conv.i74.us.i.10, i8* %arrayidx30.us.i.10, align 1, !tbaa !2
  %arrayidx25.us.i.11 = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 11
  %11 = load i8, i8* %arrayidx25.us.i.11, align 1, !tbaa !2
  %conv26.us.i.11 = zext i8 %11 to i32
  %mul27.us.i.11 = mul nsw i32 %weight.idx1.val, %conv26.us.i.11
  %add28.us.i.11 = add nsw i32 %mul27.us.i.11, %weight.idx2.val
  %tobool.i70.us.i.11 = icmp ugt i32 %add28.us.i.11, 255
  %sub.i71.us.i.11 = sub nsw i32 0, %add28.us.i.11
  %shr.i72.us.i.11 = ashr i32 %sub.i71.us.i.11, 31
  %cond.i73.us.i.11 = select i1 %tobool.i70.us.i.11, i32 %shr.i72.us.i.11, i32 %add28.us.i.11
  %conv.i74.us.i.11 = trunc i32 %cond.i73.us.i.11 to i8
  %arrayidx30.us.i.11 = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 11
  store i8 %conv.i74.us.i.11, i8* %arrayidx30.us.i.11, align 1, !tbaa !2
  %inc35.us.i = add nuw nsw i32 %y13.013.us.i, 1
  %add.ptr36.us.i = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 %i_dst_stride
  %add.ptr37.us.i = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 %i_src_stride
  %exitcond19.i = icmp eq i32 %inc35.us.i, %height
  br i1 %exitcond19.i, label %mc_weight.exit, label %for.cond20.preheader.us.i

for.cond.preheader.i:                             ; preds = %entry
  br i1 %cmp14.i, label %for.cond2.preheader.lr.ph.i, label %mc_weight.exit

for.cond2.preheader.lr.ph.i:                      ; preds = %for.cond.preheader.i
  %sub.i = add nsw i32 %weight.idx.val, -1
  %shl.i = shl nuw i32 1, %sub.i
  br label %for.cond2.preheader.us.i

for.cond2.preheader.us.i:                         ; preds = %for.cond2.preheader.us.i, %for.cond2.preheader.lr.ph.i
  %y.07.us.i = phi i32 [ %inc10.us.i, %for.cond2.preheader.us.i ], [ 0, %for.cond2.preheader.lr.ph.i ]
  %dst.addr.06.us.i = phi i8* [ %add.ptr.us.i, %for.cond2.preheader.us.i ], [ %dst, %for.cond2.preheader.lr.ph.i ]
  %src.addr.05.us.i = phi i8* [ %add.ptr11.us.i, %for.cond2.preheader.us.i ], [ %src, %for.cond2.preheader.lr.ph.i ]
  %12 = load i8, i8* %src.addr.05.us.i, align 1, !tbaa !2
  %conv.us.i = zext i8 %12 to i32
  %mul6.us.i = mul nsw i32 %weight.idx1.val, %conv.us.i
  %add.us.i = add nsw i32 %mul6.us.i, %shl.i
  %shr.us.i = ashr i32 %add.us.i, %weight.idx.val
  %add7.us.i = add nsw i32 %shr.us.i, %weight.idx2.val
  %tobool.i.us.i = icmp ugt i32 %add7.us.i, 255
  %sub.i.us.i = sub nsw i32 0, %add7.us.i
  %shr.i.us.i = ashr i32 %sub.i.us.i, 31
  %cond.i.us.i = select i1 %tobool.i.us.i, i32 %shr.i.us.i, i32 %add7.us.i
  %conv.i.us.i = trunc i32 %cond.i.us.i to i8
  store i8 %conv.i.us.i, i8* %dst.addr.06.us.i, align 1, !tbaa !2
  %arrayidx.us.i.1 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 1
  %13 = load i8, i8* %arrayidx.us.i.1, align 1, !tbaa !2
  %conv.us.i.1 = zext i8 %13 to i32
  %mul6.us.i.1 = mul nsw i32 %weight.idx1.val, %conv.us.i.1
  %add.us.i.1 = add nsw i32 %mul6.us.i.1, %shl.i
  %shr.us.i.1 = ashr i32 %add.us.i.1, %weight.idx.val
  %add7.us.i.1 = add nsw i32 %shr.us.i.1, %weight.idx2.val
  %tobool.i.us.i.1 = icmp ugt i32 %add7.us.i.1, 255
  %sub.i.us.i.1 = sub nsw i32 0, %add7.us.i.1
  %shr.i.us.i.1 = ashr i32 %sub.i.us.i.1, 31
  %cond.i.us.i.1 = select i1 %tobool.i.us.i.1, i32 %shr.i.us.i.1, i32 %add7.us.i.1
  %conv.i.us.i.1 = trunc i32 %cond.i.us.i.1 to i8
  %arrayidx8.us.i.1 = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 1
  store i8 %conv.i.us.i.1, i8* %arrayidx8.us.i.1, align 1, !tbaa !2
  %arrayidx.us.i.2 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 2
  %14 = load i8, i8* %arrayidx.us.i.2, align 1, !tbaa !2
  %conv.us.i.2 = zext i8 %14 to i32
  %mul6.us.i.2 = mul nsw i32 %weight.idx1.val, %conv.us.i.2
  %add.us.i.2 = add nsw i32 %mul6.us.i.2, %shl.i
  %shr.us.i.2 = ashr i32 %add.us.i.2, %weight.idx.val
  %add7.us.i.2 = add nsw i32 %shr.us.i.2, %weight.idx2.val
  %tobool.i.us.i.2 = icmp ugt i32 %add7.us.i.2, 255
  %sub.i.us.i.2 = sub nsw i32 0, %add7.us.i.2
  %shr.i.us.i.2 = ashr i32 %sub.i.us.i.2, 31
  %cond.i.us.i.2 = select i1 %tobool.i.us.i.2, i32 %shr.i.us.i.2, i32 %add7.us.i.2
  %conv.i.us.i.2 = trunc i32 %cond.i.us.i.2 to i8
  %arrayidx8.us.i.2 = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 2
  store i8 %conv.i.us.i.2, i8* %arrayidx8.us.i.2, align 1, !tbaa !2
  %arrayidx.us.i.3 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 3
  %15 = load i8, i8* %arrayidx.us.i.3, align 1, !tbaa !2
  %conv.us.i.3 = zext i8 %15 to i32
  %mul6.us.i.3 = mul nsw i32 %weight.idx1.val, %conv.us.i.3
  %add.us.i.3 = add nsw i32 %mul6.us.i.3, %shl.i
  %shr.us.i.3 = ashr i32 %add.us.i.3, %weight.idx.val
  %add7.us.i.3 = add nsw i32 %shr.us.i.3, %weight.idx2.val
  %tobool.i.us.i.3 = icmp ugt i32 %add7.us.i.3, 255
  %sub.i.us.i.3 = sub nsw i32 0, %add7.us.i.3
  %shr.i.us.i.3 = ashr i32 %sub.i.us.i.3, 31
  %cond.i.us.i.3 = select i1 %tobool.i.us.i.3, i32 %shr.i.us.i.3, i32 %add7.us.i.3
  %conv.i.us.i.3 = trunc i32 %cond.i.us.i.3 to i8
  %arrayidx8.us.i.3 = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 3
  store i8 %conv.i.us.i.3, i8* %arrayidx8.us.i.3, align 1, !tbaa !2
  %arrayidx.us.i.4 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 4
  %16 = load i8, i8* %arrayidx.us.i.4, align 1, !tbaa !2
  %conv.us.i.4 = zext i8 %16 to i32
  %mul6.us.i.4 = mul nsw i32 %weight.idx1.val, %conv.us.i.4
  %add.us.i.4 = add nsw i32 %mul6.us.i.4, %shl.i
  %shr.us.i.4 = ashr i32 %add.us.i.4, %weight.idx.val
  %add7.us.i.4 = add nsw i32 %shr.us.i.4, %weight.idx2.val
  %tobool.i.us.i.4 = icmp ugt i32 %add7.us.i.4, 255
  %sub.i.us.i.4 = sub nsw i32 0, %add7.us.i.4
  %shr.i.us.i.4 = ashr i32 %sub.i.us.i.4, 31
  %cond.i.us.i.4 = select i1 %tobool.i.us.i.4, i32 %shr.i.us.i.4, i32 %add7.us.i.4
  %conv.i.us.i.4 = trunc i32 %cond.i.us.i.4 to i8
  %arrayidx8.us.i.4 = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 4
  store i8 %conv.i.us.i.4, i8* %arrayidx8.us.i.4, align 1, !tbaa !2
  %arrayidx.us.i.5 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 5
  %17 = load i8, i8* %arrayidx.us.i.5, align 1, !tbaa !2
  %conv.us.i.5 = zext i8 %17 to i32
  %mul6.us.i.5 = mul nsw i32 %weight.idx1.val, %conv.us.i.5
  %add.us.i.5 = add nsw i32 %mul6.us.i.5, %shl.i
  %shr.us.i.5 = ashr i32 %add.us.i.5, %weight.idx.val
  %add7.us.i.5 = add nsw i32 %shr.us.i.5, %weight.idx2.val
  %tobool.i.us.i.5 = icmp ugt i32 %add7.us.i.5, 255
  %sub.i.us.i.5 = sub nsw i32 0, %add7.us.i.5
  %shr.i.us.i.5 = ashr i32 %sub.i.us.i.5, 31
  %cond.i.us.i.5 = select i1 %tobool.i.us.i.5, i32 %shr.i.us.i.5, i32 %add7.us.i.5
  %conv.i.us.i.5 = trunc i32 %cond.i.us.i.5 to i8
  %arrayidx8.us.i.5 = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 5
  store i8 %conv.i.us.i.5, i8* %arrayidx8.us.i.5, align 1, !tbaa !2
  %arrayidx.us.i.6 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 6
  %18 = load i8, i8* %arrayidx.us.i.6, align 1, !tbaa !2
  %conv.us.i.6 = zext i8 %18 to i32
  %mul6.us.i.6 = mul nsw i32 %weight.idx1.val, %conv.us.i.6
  %add.us.i.6 = add nsw i32 %mul6.us.i.6, %shl.i
  %shr.us.i.6 = ashr i32 %add.us.i.6, %weight.idx.val
  %add7.us.i.6 = add nsw i32 %shr.us.i.6, %weight.idx2.val
  %tobool.i.us.i.6 = icmp ugt i32 %add7.us.i.6, 255
  %sub.i.us.i.6 = sub nsw i32 0, %add7.us.i.6
  %shr.i.us.i.6 = ashr i32 %sub.i.us.i.6, 31
  %cond.i.us.i.6 = select i1 %tobool.i.us.i.6, i32 %shr.i.us.i.6, i32 %add7.us.i.6
  %conv.i.us.i.6 = trunc i32 %cond.i.us.i.6 to i8
  %arrayidx8.us.i.6 = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 6
  store i8 %conv.i.us.i.6, i8* %arrayidx8.us.i.6, align 1, !tbaa !2
  %arrayidx.us.i.7 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 7
  %19 = load i8, i8* %arrayidx.us.i.7, align 1, !tbaa !2
  %conv.us.i.7 = zext i8 %19 to i32
  %mul6.us.i.7 = mul nsw i32 %weight.idx1.val, %conv.us.i.7
  %add.us.i.7 = add nsw i32 %mul6.us.i.7, %shl.i
  %shr.us.i.7 = ashr i32 %add.us.i.7, %weight.idx.val
  %add7.us.i.7 = add nsw i32 %shr.us.i.7, %weight.idx2.val
  %tobool.i.us.i.7 = icmp ugt i32 %add7.us.i.7, 255
  %sub.i.us.i.7 = sub nsw i32 0, %add7.us.i.7
  %shr.i.us.i.7 = ashr i32 %sub.i.us.i.7, 31
  %cond.i.us.i.7 = select i1 %tobool.i.us.i.7, i32 %shr.i.us.i.7, i32 %add7.us.i.7
  %conv.i.us.i.7 = trunc i32 %cond.i.us.i.7 to i8
  %arrayidx8.us.i.7 = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 7
  store i8 %conv.i.us.i.7, i8* %arrayidx8.us.i.7, align 1, !tbaa !2
  %arrayidx.us.i.8 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 8
  %20 = load i8, i8* %arrayidx.us.i.8, align 1, !tbaa !2
  %conv.us.i.8 = zext i8 %20 to i32
  %mul6.us.i.8 = mul nsw i32 %weight.idx1.val, %conv.us.i.8
  %add.us.i.8 = add nsw i32 %mul6.us.i.8, %shl.i
  %shr.us.i.8 = ashr i32 %add.us.i.8, %weight.idx.val
  %add7.us.i.8 = add nsw i32 %shr.us.i.8, %weight.idx2.val
  %tobool.i.us.i.8 = icmp ugt i32 %add7.us.i.8, 255
  %sub.i.us.i.8 = sub nsw i32 0, %add7.us.i.8
  %shr.i.us.i.8 = ashr i32 %sub.i.us.i.8, 31
  %cond.i.us.i.8 = select i1 %tobool.i.us.i.8, i32 %shr.i.us.i.8, i32 %add7.us.i.8
  %conv.i.us.i.8 = trunc i32 %cond.i.us.i.8 to i8
  %arrayidx8.us.i.8 = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 8
  store i8 %conv.i.us.i.8, i8* %arrayidx8.us.i.8, align 1, !tbaa !2
  %arrayidx.us.i.9 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 9
  %21 = load i8, i8* %arrayidx.us.i.9, align 1, !tbaa !2
  %conv.us.i.9 = zext i8 %21 to i32
  %mul6.us.i.9 = mul nsw i32 %weight.idx1.val, %conv.us.i.9
  %add.us.i.9 = add nsw i32 %mul6.us.i.9, %shl.i
  %shr.us.i.9 = ashr i32 %add.us.i.9, %weight.idx.val
  %add7.us.i.9 = add nsw i32 %shr.us.i.9, %weight.idx2.val
  %tobool.i.us.i.9 = icmp ugt i32 %add7.us.i.9, 255
  %sub.i.us.i.9 = sub nsw i32 0, %add7.us.i.9
  %shr.i.us.i.9 = ashr i32 %sub.i.us.i.9, 31
  %cond.i.us.i.9 = select i1 %tobool.i.us.i.9, i32 %shr.i.us.i.9, i32 %add7.us.i.9
  %conv.i.us.i.9 = trunc i32 %cond.i.us.i.9 to i8
  %arrayidx8.us.i.9 = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 9
  store i8 %conv.i.us.i.9, i8* %arrayidx8.us.i.9, align 1, !tbaa !2
  %arrayidx.us.i.10 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 10
  %22 = load i8, i8* %arrayidx.us.i.10, align 1, !tbaa !2
  %conv.us.i.10 = zext i8 %22 to i32
  %mul6.us.i.10 = mul nsw i32 %weight.idx1.val, %conv.us.i.10
  %add.us.i.10 = add nsw i32 %mul6.us.i.10, %shl.i
  %shr.us.i.10 = ashr i32 %add.us.i.10, %weight.idx.val
  %add7.us.i.10 = add nsw i32 %shr.us.i.10, %weight.idx2.val
  %tobool.i.us.i.10 = icmp ugt i32 %add7.us.i.10, 255
  %sub.i.us.i.10 = sub nsw i32 0, %add7.us.i.10
  %shr.i.us.i.10 = ashr i32 %sub.i.us.i.10, 31
  %cond.i.us.i.10 = select i1 %tobool.i.us.i.10, i32 %shr.i.us.i.10, i32 %add7.us.i.10
  %conv.i.us.i.10 = trunc i32 %cond.i.us.i.10 to i8
  %arrayidx8.us.i.10 = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 10
  store i8 %conv.i.us.i.10, i8* %arrayidx8.us.i.10, align 1, !tbaa !2
  %arrayidx.us.i.11 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 11
  %23 = load i8, i8* %arrayidx.us.i.11, align 1, !tbaa !2
  %conv.us.i.11 = zext i8 %23 to i32
  %mul6.us.i.11 = mul nsw i32 %weight.idx1.val, %conv.us.i.11
  %add.us.i.11 = add nsw i32 %mul6.us.i.11, %shl.i
  %shr.us.i.11 = ashr i32 %add.us.i.11, %weight.idx.val
  %add7.us.i.11 = add nsw i32 %shr.us.i.11, %weight.idx2.val
  %tobool.i.us.i.11 = icmp ugt i32 %add7.us.i.11, 255
  %sub.i.us.i.11 = sub nsw i32 0, %add7.us.i.11
  %shr.i.us.i.11 = ashr i32 %sub.i.us.i.11, 31
  %cond.i.us.i.11 = select i1 %tobool.i.us.i.11, i32 %shr.i.us.i.11, i32 %add7.us.i.11
  %conv.i.us.i.11 = trunc i32 %cond.i.us.i.11 to i8
  %arrayidx8.us.i.11 = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 11
  store i8 %conv.i.us.i.11, i8* %arrayidx8.us.i.11, align 1, !tbaa !2
  %inc10.us.i = add nuw nsw i32 %y.07.us.i, 1
  %add.ptr.us.i = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 %i_dst_stride
  %add.ptr11.us.i = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 %i_src_stride
  %exitcond17.i = icmp eq i32 %inc10.us.i, %height
  br i1 %exitcond17.i, label %mc_weight.exit, label %for.cond2.preheader.us.i

mc_weight.exit:                                   ; preds = %for.cond20.preheader.us.i, %for.cond2.preheader.us.i, %for.cond14.preheader.i, %for.cond.preheader.i
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @mc_weight_w16(i8* nocapture %dst, i32 %i_dst_stride, i8* nocapture readonly %src, i32 %i_src_stride, %struct.x264_weight_t* nocapture readonly %weight, i32 %height) #2 {
entry:
  %weight.idx = getelementptr %struct.x264_weight_t, %struct.x264_weight_t* %weight, i32 0, i32 2
  %weight.idx.val = load i32, i32* %weight.idx, align 16, !tbaa !84
  %weight.idx1 = getelementptr %struct.x264_weight_t, %struct.x264_weight_t* %weight, i32 0, i32 3
  %weight.idx1.val = load i32, i32* %weight.idx1, align 4, !tbaa !85
  %weight.idx2 = getelementptr %struct.x264_weight_t, %struct.x264_weight_t* %weight, i32 0, i32 4
  %weight.idx2.val = load i32, i32* %weight.idx2, align 8, !tbaa !86
  %cmp.i = icmp sgt i32 %weight.idx.val, 0
  %cmp14.i = icmp sgt i32 %height, 0
  br i1 %cmp.i, label %for.cond.preheader.i, label %for.cond14.preheader.i

for.cond14.preheader.i:                           ; preds = %entry
  br i1 %cmp14.i, label %for.cond20.preheader.us.i, label %mc_weight.exit

for.cond20.preheader.us.i:                        ; preds = %for.cond14.preheader.i, %for.cond20.preheader.us.i
  %y13.013.us.i = phi i32 [ %inc35.us.i, %for.cond20.preheader.us.i ], [ 0, %for.cond14.preheader.i ]
  %dst.addr.112.us.i = phi i8* [ %add.ptr36.us.i, %for.cond20.preheader.us.i ], [ %dst, %for.cond14.preheader.i ]
  %src.addr.111.us.i = phi i8* [ %add.ptr37.us.i, %for.cond20.preheader.us.i ], [ %src, %for.cond14.preheader.i ]
  %0 = load i8, i8* %src.addr.111.us.i, align 1, !tbaa !2
  %conv26.us.i = zext i8 %0 to i32
  %mul27.us.i = mul nsw i32 %weight.idx1.val, %conv26.us.i
  %add28.us.i = add nsw i32 %mul27.us.i, %weight.idx2.val
  %tobool.i70.us.i = icmp ugt i32 %add28.us.i, 255
  %sub.i71.us.i = sub nsw i32 0, %add28.us.i
  %shr.i72.us.i = ashr i32 %sub.i71.us.i, 31
  %cond.i73.us.i = select i1 %tobool.i70.us.i, i32 %shr.i72.us.i, i32 %add28.us.i
  %conv.i74.us.i = trunc i32 %cond.i73.us.i to i8
  store i8 %conv.i74.us.i, i8* %dst.addr.112.us.i, align 1, !tbaa !2
  %arrayidx25.us.i.1 = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 1
  %1 = load i8, i8* %arrayidx25.us.i.1, align 1, !tbaa !2
  %conv26.us.i.1 = zext i8 %1 to i32
  %mul27.us.i.1 = mul nsw i32 %weight.idx1.val, %conv26.us.i.1
  %add28.us.i.1 = add nsw i32 %mul27.us.i.1, %weight.idx2.val
  %tobool.i70.us.i.1 = icmp ugt i32 %add28.us.i.1, 255
  %sub.i71.us.i.1 = sub nsw i32 0, %add28.us.i.1
  %shr.i72.us.i.1 = ashr i32 %sub.i71.us.i.1, 31
  %cond.i73.us.i.1 = select i1 %tobool.i70.us.i.1, i32 %shr.i72.us.i.1, i32 %add28.us.i.1
  %conv.i74.us.i.1 = trunc i32 %cond.i73.us.i.1 to i8
  %arrayidx30.us.i.1 = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 1
  store i8 %conv.i74.us.i.1, i8* %arrayidx30.us.i.1, align 1, !tbaa !2
  %arrayidx25.us.i.2 = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 2
  %2 = load i8, i8* %arrayidx25.us.i.2, align 1, !tbaa !2
  %conv26.us.i.2 = zext i8 %2 to i32
  %mul27.us.i.2 = mul nsw i32 %weight.idx1.val, %conv26.us.i.2
  %add28.us.i.2 = add nsw i32 %mul27.us.i.2, %weight.idx2.val
  %tobool.i70.us.i.2 = icmp ugt i32 %add28.us.i.2, 255
  %sub.i71.us.i.2 = sub nsw i32 0, %add28.us.i.2
  %shr.i72.us.i.2 = ashr i32 %sub.i71.us.i.2, 31
  %cond.i73.us.i.2 = select i1 %tobool.i70.us.i.2, i32 %shr.i72.us.i.2, i32 %add28.us.i.2
  %conv.i74.us.i.2 = trunc i32 %cond.i73.us.i.2 to i8
  %arrayidx30.us.i.2 = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 2
  store i8 %conv.i74.us.i.2, i8* %arrayidx30.us.i.2, align 1, !tbaa !2
  %arrayidx25.us.i.3 = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 3
  %3 = load i8, i8* %arrayidx25.us.i.3, align 1, !tbaa !2
  %conv26.us.i.3 = zext i8 %3 to i32
  %mul27.us.i.3 = mul nsw i32 %weight.idx1.val, %conv26.us.i.3
  %add28.us.i.3 = add nsw i32 %mul27.us.i.3, %weight.idx2.val
  %tobool.i70.us.i.3 = icmp ugt i32 %add28.us.i.3, 255
  %sub.i71.us.i.3 = sub nsw i32 0, %add28.us.i.3
  %shr.i72.us.i.3 = ashr i32 %sub.i71.us.i.3, 31
  %cond.i73.us.i.3 = select i1 %tobool.i70.us.i.3, i32 %shr.i72.us.i.3, i32 %add28.us.i.3
  %conv.i74.us.i.3 = trunc i32 %cond.i73.us.i.3 to i8
  %arrayidx30.us.i.3 = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 3
  store i8 %conv.i74.us.i.3, i8* %arrayidx30.us.i.3, align 1, !tbaa !2
  %arrayidx25.us.i.4 = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 4
  %4 = load i8, i8* %arrayidx25.us.i.4, align 1, !tbaa !2
  %conv26.us.i.4 = zext i8 %4 to i32
  %mul27.us.i.4 = mul nsw i32 %weight.idx1.val, %conv26.us.i.4
  %add28.us.i.4 = add nsw i32 %mul27.us.i.4, %weight.idx2.val
  %tobool.i70.us.i.4 = icmp ugt i32 %add28.us.i.4, 255
  %sub.i71.us.i.4 = sub nsw i32 0, %add28.us.i.4
  %shr.i72.us.i.4 = ashr i32 %sub.i71.us.i.4, 31
  %cond.i73.us.i.4 = select i1 %tobool.i70.us.i.4, i32 %shr.i72.us.i.4, i32 %add28.us.i.4
  %conv.i74.us.i.4 = trunc i32 %cond.i73.us.i.4 to i8
  %arrayidx30.us.i.4 = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 4
  store i8 %conv.i74.us.i.4, i8* %arrayidx30.us.i.4, align 1, !tbaa !2
  %arrayidx25.us.i.5 = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 5
  %5 = load i8, i8* %arrayidx25.us.i.5, align 1, !tbaa !2
  %conv26.us.i.5 = zext i8 %5 to i32
  %mul27.us.i.5 = mul nsw i32 %weight.idx1.val, %conv26.us.i.5
  %add28.us.i.5 = add nsw i32 %mul27.us.i.5, %weight.idx2.val
  %tobool.i70.us.i.5 = icmp ugt i32 %add28.us.i.5, 255
  %sub.i71.us.i.5 = sub nsw i32 0, %add28.us.i.5
  %shr.i72.us.i.5 = ashr i32 %sub.i71.us.i.5, 31
  %cond.i73.us.i.5 = select i1 %tobool.i70.us.i.5, i32 %shr.i72.us.i.5, i32 %add28.us.i.5
  %conv.i74.us.i.5 = trunc i32 %cond.i73.us.i.5 to i8
  %arrayidx30.us.i.5 = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 5
  store i8 %conv.i74.us.i.5, i8* %arrayidx30.us.i.5, align 1, !tbaa !2
  %arrayidx25.us.i.6 = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 6
  %6 = load i8, i8* %arrayidx25.us.i.6, align 1, !tbaa !2
  %conv26.us.i.6 = zext i8 %6 to i32
  %mul27.us.i.6 = mul nsw i32 %weight.idx1.val, %conv26.us.i.6
  %add28.us.i.6 = add nsw i32 %mul27.us.i.6, %weight.idx2.val
  %tobool.i70.us.i.6 = icmp ugt i32 %add28.us.i.6, 255
  %sub.i71.us.i.6 = sub nsw i32 0, %add28.us.i.6
  %shr.i72.us.i.6 = ashr i32 %sub.i71.us.i.6, 31
  %cond.i73.us.i.6 = select i1 %tobool.i70.us.i.6, i32 %shr.i72.us.i.6, i32 %add28.us.i.6
  %conv.i74.us.i.6 = trunc i32 %cond.i73.us.i.6 to i8
  %arrayidx30.us.i.6 = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 6
  store i8 %conv.i74.us.i.6, i8* %arrayidx30.us.i.6, align 1, !tbaa !2
  %arrayidx25.us.i.7 = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 7
  %7 = load i8, i8* %arrayidx25.us.i.7, align 1, !tbaa !2
  %conv26.us.i.7 = zext i8 %7 to i32
  %mul27.us.i.7 = mul nsw i32 %weight.idx1.val, %conv26.us.i.7
  %add28.us.i.7 = add nsw i32 %mul27.us.i.7, %weight.idx2.val
  %tobool.i70.us.i.7 = icmp ugt i32 %add28.us.i.7, 255
  %sub.i71.us.i.7 = sub nsw i32 0, %add28.us.i.7
  %shr.i72.us.i.7 = ashr i32 %sub.i71.us.i.7, 31
  %cond.i73.us.i.7 = select i1 %tobool.i70.us.i.7, i32 %shr.i72.us.i.7, i32 %add28.us.i.7
  %conv.i74.us.i.7 = trunc i32 %cond.i73.us.i.7 to i8
  %arrayidx30.us.i.7 = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 7
  store i8 %conv.i74.us.i.7, i8* %arrayidx30.us.i.7, align 1, !tbaa !2
  %arrayidx25.us.i.8 = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 8
  %8 = load i8, i8* %arrayidx25.us.i.8, align 1, !tbaa !2
  %conv26.us.i.8 = zext i8 %8 to i32
  %mul27.us.i.8 = mul nsw i32 %weight.idx1.val, %conv26.us.i.8
  %add28.us.i.8 = add nsw i32 %mul27.us.i.8, %weight.idx2.val
  %tobool.i70.us.i.8 = icmp ugt i32 %add28.us.i.8, 255
  %sub.i71.us.i.8 = sub nsw i32 0, %add28.us.i.8
  %shr.i72.us.i.8 = ashr i32 %sub.i71.us.i.8, 31
  %cond.i73.us.i.8 = select i1 %tobool.i70.us.i.8, i32 %shr.i72.us.i.8, i32 %add28.us.i.8
  %conv.i74.us.i.8 = trunc i32 %cond.i73.us.i.8 to i8
  %arrayidx30.us.i.8 = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 8
  store i8 %conv.i74.us.i.8, i8* %arrayidx30.us.i.8, align 1, !tbaa !2
  %arrayidx25.us.i.9 = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 9
  %9 = load i8, i8* %arrayidx25.us.i.9, align 1, !tbaa !2
  %conv26.us.i.9 = zext i8 %9 to i32
  %mul27.us.i.9 = mul nsw i32 %weight.idx1.val, %conv26.us.i.9
  %add28.us.i.9 = add nsw i32 %mul27.us.i.9, %weight.idx2.val
  %tobool.i70.us.i.9 = icmp ugt i32 %add28.us.i.9, 255
  %sub.i71.us.i.9 = sub nsw i32 0, %add28.us.i.9
  %shr.i72.us.i.9 = ashr i32 %sub.i71.us.i.9, 31
  %cond.i73.us.i.9 = select i1 %tobool.i70.us.i.9, i32 %shr.i72.us.i.9, i32 %add28.us.i.9
  %conv.i74.us.i.9 = trunc i32 %cond.i73.us.i.9 to i8
  %arrayidx30.us.i.9 = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 9
  store i8 %conv.i74.us.i.9, i8* %arrayidx30.us.i.9, align 1, !tbaa !2
  %arrayidx25.us.i.10 = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 10
  %10 = load i8, i8* %arrayidx25.us.i.10, align 1, !tbaa !2
  %conv26.us.i.10 = zext i8 %10 to i32
  %mul27.us.i.10 = mul nsw i32 %weight.idx1.val, %conv26.us.i.10
  %add28.us.i.10 = add nsw i32 %mul27.us.i.10, %weight.idx2.val
  %tobool.i70.us.i.10 = icmp ugt i32 %add28.us.i.10, 255
  %sub.i71.us.i.10 = sub nsw i32 0, %add28.us.i.10
  %shr.i72.us.i.10 = ashr i32 %sub.i71.us.i.10, 31
  %cond.i73.us.i.10 = select i1 %tobool.i70.us.i.10, i32 %shr.i72.us.i.10, i32 %add28.us.i.10
  %conv.i74.us.i.10 = trunc i32 %cond.i73.us.i.10 to i8
  %arrayidx30.us.i.10 = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 10
  store i8 %conv.i74.us.i.10, i8* %arrayidx30.us.i.10, align 1, !tbaa !2
  %arrayidx25.us.i.11 = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 11
  %11 = load i8, i8* %arrayidx25.us.i.11, align 1, !tbaa !2
  %conv26.us.i.11 = zext i8 %11 to i32
  %mul27.us.i.11 = mul nsw i32 %weight.idx1.val, %conv26.us.i.11
  %add28.us.i.11 = add nsw i32 %mul27.us.i.11, %weight.idx2.val
  %tobool.i70.us.i.11 = icmp ugt i32 %add28.us.i.11, 255
  %sub.i71.us.i.11 = sub nsw i32 0, %add28.us.i.11
  %shr.i72.us.i.11 = ashr i32 %sub.i71.us.i.11, 31
  %cond.i73.us.i.11 = select i1 %tobool.i70.us.i.11, i32 %shr.i72.us.i.11, i32 %add28.us.i.11
  %conv.i74.us.i.11 = trunc i32 %cond.i73.us.i.11 to i8
  %arrayidx30.us.i.11 = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 11
  store i8 %conv.i74.us.i.11, i8* %arrayidx30.us.i.11, align 1, !tbaa !2
  %arrayidx25.us.i.12 = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 12
  %12 = load i8, i8* %arrayidx25.us.i.12, align 1, !tbaa !2
  %conv26.us.i.12 = zext i8 %12 to i32
  %mul27.us.i.12 = mul nsw i32 %weight.idx1.val, %conv26.us.i.12
  %add28.us.i.12 = add nsw i32 %mul27.us.i.12, %weight.idx2.val
  %tobool.i70.us.i.12 = icmp ugt i32 %add28.us.i.12, 255
  %sub.i71.us.i.12 = sub nsw i32 0, %add28.us.i.12
  %shr.i72.us.i.12 = ashr i32 %sub.i71.us.i.12, 31
  %cond.i73.us.i.12 = select i1 %tobool.i70.us.i.12, i32 %shr.i72.us.i.12, i32 %add28.us.i.12
  %conv.i74.us.i.12 = trunc i32 %cond.i73.us.i.12 to i8
  %arrayidx30.us.i.12 = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 12
  store i8 %conv.i74.us.i.12, i8* %arrayidx30.us.i.12, align 1, !tbaa !2
  %arrayidx25.us.i.13 = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 13
  %13 = load i8, i8* %arrayidx25.us.i.13, align 1, !tbaa !2
  %conv26.us.i.13 = zext i8 %13 to i32
  %mul27.us.i.13 = mul nsw i32 %weight.idx1.val, %conv26.us.i.13
  %add28.us.i.13 = add nsw i32 %mul27.us.i.13, %weight.idx2.val
  %tobool.i70.us.i.13 = icmp ugt i32 %add28.us.i.13, 255
  %sub.i71.us.i.13 = sub nsw i32 0, %add28.us.i.13
  %shr.i72.us.i.13 = ashr i32 %sub.i71.us.i.13, 31
  %cond.i73.us.i.13 = select i1 %tobool.i70.us.i.13, i32 %shr.i72.us.i.13, i32 %add28.us.i.13
  %conv.i74.us.i.13 = trunc i32 %cond.i73.us.i.13 to i8
  %arrayidx30.us.i.13 = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 13
  store i8 %conv.i74.us.i.13, i8* %arrayidx30.us.i.13, align 1, !tbaa !2
  %arrayidx25.us.i.14 = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 14
  %14 = load i8, i8* %arrayidx25.us.i.14, align 1, !tbaa !2
  %conv26.us.i.14 = zext i8 %14 to i32
  %mul27.us.i.14 = mul nsw i32 %weight.idx1.val, %conv26.us.i.14
  %add28.us.i.14 = add nsw i32 %mul27.us.i.14, %weight.idx2.val
  %tobool.i70.us.i.14 = icmp ugt i32 %add28.us.i.14, 255
  %sub.i71.us.i.14 = sub nsw i32 0, %add28.us.i.14
  %shr.i72.us.i.14 = ashr i32 %sub.i71.us.i.14, 31
  %cond.i73.us.i.14 = select i1 %tobool.i70.us.i.14, i32 %shr.i72.us.i.14, i32 %add28.us.i.14
  %conv.i74.us.i.14 = trunc i32 %cond.i73.us.i.14 to i8
  %arrayidx30.us.i.14 = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 14
  store i8 %conv.i74.us.i.14, i8* %arrayidx30.us.i.14, align 1, !tbaa !2
  %arrayidx25.us.i.15 = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 15
  %15 = load i8, i8* %arrayidx25.us.i.15, align 1, !tbaa !2
  %conv26.us.i.15 = zext i8 %15 to i32
  %mul27.us.i.15 = mul nsw i32 %weight.idx1.val, %conv26.us.i.15
  %add28.us.i.15 = add nsw i32 %mul27.us.i.15, %weight.idx2.val
  %tobool.i70.us.i.15 = icmp ugt i32 %add28.us.i.15, 255
  %sub.i71.us.i.15 = sub nsw i32 0, %add28.us.i.15
  %shr.i72.us.i.15 = ashr i32 %sub.i71.us.i.15, 31
  %cond.i73.us.i.15 = select i1 %tobool.i70.us.i.15, i32 %shr.i72.us.i.15, i32 %add28.us.i.15
  %conv.i74.us.i.15 = trunc i32 %cond.i73.us.i.15 to i8
  %arrayidx30.us.i.15 = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 15
  store i8 %conv.i74.us.i.15, i8* %arrayidx30.us.i.15, align 1, !tbaa !2
  %inc35.us.i = add nuw nsw i32 %y13.013.us.i, 1
  %add.ptr36.us.i = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 %i_dst_stride
  %add.ptr37.us.i = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 %i_src_stride
  %exitcond19.i = icmp eq i32 %inc35.us.i, %height
  br i1 %exitcond19.i, label %mc_weight.exit, label %for.cond20.preheader.us.i

for.cond.preheader.i:                             ; preds = %entry
  br i1 %cmp14.i, label %for.cond2.preheader.lr.ph.i, label %mc_weight.exit

for.cond2.preheader.lr.ph.i:                      ; preds = %for.cond.preheader.i
  %sub.i = add nsw i32 %weight.idx.val, -1
  %shl.i = shl nuw i32 1, %sub.i
  br label %for.cond2.preheader.us.i

for.cond2.preheader.us.i:                         ; preds = %for.cond2.preheader.us.i, %for.cond2.preheader.lr.ph.i
  %y.07.us.i = phi i32 [ %inc10.us.i, %for.cond2.preheader.us.i ], [ 0, %for.cond2.preheader.lr.ph.i ]
  %dst.addr.06.us.i = phi i8* [ %add.ptr.us.i, %for.cond2.preheader.us.i ], [ %dst, %for.cond2.preheader.lr.ph.i ]
  %src.addr.05.us.i = phi i8* [ %add.ptr11.us.i, %for.cond2.preheader.us.i ], [ %src, %for.cond2.preheader.lr.ph.i ]
  %16 = load i8, i8* %src.addr.05.us.i, align 1, !tbaa !2
  %conv.us.i = zext i8 %16 to i32
  %mul6.us.i = mul nsw i32 %weight.idx1.val, %conv.us.i
  %add.us.i = add nsw i32 %mul6.us.i, %shl.i
  %shr.us.i = ashr i32 %add.us.i, %weight.idx.val
  %add7.us.i = add nsw i32 %shr.us.i, %weight.idx2.val
  %tobool.i.us.i = icmp ugt i32 %add7.us.i, 255
  %sub.i.us.i = sub nsw i32 0, %add7.us.i
  %shr.i.us.i = ashr i32 %sub.i.us.i, 31
  %cond.i.us.i = select i1 %tobool.i.us.i, i32 %shr.i.us.i, i32 %add7.us.i
  %conv.i.us.i = trunc i32 %cond.i.us.i to i8
  store i8 %conv.i.us.i, i8* %dst.addr.06.us.i, align 1, !tbaa !2
  %arrayidx.us.i.1 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 1
  %17 = load i8, i8* %arrayidx.us.i.1, align 1, !tbaa !2
  %conv.us.i.1 = zext i8 %17 to i32
  %mul6.us.i.1 = mul nsw i32 %weight.idx1.val, %conv.us.i.1
  %add.us.i.1 = add nsw i32 %mul6.us.i.1, %shl.i
  %shr.us.i.1 = ashr i32 %add.us.i.1, %weight.idx.val
  %add7.us.i.1 = add nsw i32 %shr.us.i.1, %weight.idx2.val
  %tobool.i.us.i.1 = icmp ugt i32 %add7.us.i.1, 255
  %sub.i.us.i.1 = sub nsw i32 0, %add7.us.i.1
  %shr.i.us.i.1 = ashr i32 %sub.i.us.i.1, 31
  %cond.i.us.i.1 = select i1 %tobool.i.us.i.1, i32 %shr.i.us.i.1, i32 %add7.us.i.1
  %conv.i.us.i.1 = trunc i32 %cond.i.us.i.1 to i8
  %arrayidx8.us.i.1 = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 1
  store i8 %conv.i.us.i.1, i8* %arrayidx8.us.i.1, align 1, !tbaa !2
  %arrayidx.us.i.2 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 2
  %18 = load i8, i8* %arrayidx.us.i.2, align 1, !tbaa !2
  %conv.us.i.2 = zext i8 %18 to i32
  %mul6.us.i.2 = mul nsw i32 %weight.idx1.val, %conv.us.i.2
  %add.us.i.2 = add nsw i32 %mul6.us.i.2, %shl.i
  %shr.us.i.2 = ashr i32 %add.us.i.2, %weight.idx.val
  %add7.us.i.2 = add nsw i32 %shr.us.i.2, %weight.idx2.val
  %tobool.i.us.i.2 = icmp ugt i32 %add7.us.i.2, 255
  %sub.i.us.i.2 = sub nsw i32 0, %add7.us.i.2
  %shr.i.us.i.2 = ashr i32 %sub.i.us.i.2, 31
  %cond.i.us.i.2 = select i1 %tobool.i.us.i.2, i32 %shr.i.us.i.2, i32 %add7.us.i.2
  %conv.i.us.i.2 = trunc i32 %cond.i.us.i.2 to i8
  %arrayidx8.us.i.2 = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 2
  store i8 %conv.i.us.i.2, i8* %arrayidx8.us.i.2, align 1, !tbaa !2
  %arrayidx.us.i.3 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 3
  %19 = load i8, i8* %arrayidx.us.i.3, align 1, !tbaa !2
  %conv.us.i.3 = zext i8 %19 to i32
  %mul6.us.i.3 = mul nsw i32 %weight.idx1.val, %conv.us.i.3
  %add.us.i.3 = add nsw i32 %mul6.us.i.3, %shl.i
  %shr.us.i.3 = ashr i32 %add.us.i.3, %weight.idx.val
  %add7.us.i.3 = add nsw i32 %shr.us.i.3, %weight.idx2.val
  %tobool.i.us.i.3 = icmp ugt i32 %add7.us.i.3, 255
  %sub.i.us.i.3 = sub nsw i32 0, %add7.us.i.3
  %shr.i.us.i.3 = ashr i32 %sub.i.us.i.3, 31
  %cond.i.us.i.3 = select i1 %tobool.i.us.i.3, i32 %shr.i.us.i.3, i32 %add7.us.i.3
  %conv.i.us.i.3 = trunc i32 %cond.i.us.i.3 to i8
  %arrayidx8.us.i.3 = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 3
  store i8 %conv.i.us.i.3, i8* %arrayidx8.us.i.3, align 1, !tbaa !2
  %arrayidx.us.i.4 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 4
  %20 = load i8, i8* %arrayidx.us.i.4, align 1, !tbaa !2
  %conv.us.i.4 = zext i8 %20 to i32
  %mul6.us.i.4 = mul nsw i32 %weight.idx1.val, %conv.us.i.4
  %add.us.i.4 = add nsw i32 %mul6.us.i.4, %shl.i
  %shr.us.i.4 = ashr i32 %add.us.i.4, %weight.idx.val
  %add7.us.i.4 = add nsw i32 %shr.us.i.4, %weight.idx2.val
  %tobool.i.us.i.4 = icmp ugt i32 %add7.us.i.4, 255
  %sub.i.us.i.4 = sub nsw i32 0, %add7.us.i.4
  %shr.i.us.i.4 = ashr i32 %sub.i.us.i.4, 31
  %cond.i.us.i.4 = select i1 %tobool.i.us.i.4, i32 %shr.i.us.i.4, i32 %add7.us.i.4
  %conv.i.us.i.4 = trunc i32 %cond.i.us.i.4 to i8
  %arrayidx8.us.i.4 = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 4
  store i8 %conv.i.us.i.4, i8* %arrayidx8.us.i.4, align 1, !tbaa !2
  %arrayidx.us.i.5 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 5
  %21 = load i8, i8* %arrayidx.us.i.5, align 1, !tbaa !2
  %conv.us.i.5 = zext i8 %21 to i32
  %mul6.us.i.5 = mul nsw i32 %weight.idx1.val, %conv.us.i.5
  %add.us.i.5 = add nsw i32 %mul6.us.i.5, %shl.i
  %shr.us.i.5 = ashr i32 %add.us.i.5, %weight.idx.val
  %add7.us.i.5 = add nsw i32 %shr.us.i.5, %weight.idx2.val
  %tobool.i.us.i.5 = icmp ugt i32 %add7.us.i.5, 255
  %sub.i.us.i.5 = sub nsw i32 0, %add7.us.i.5
  %shr.i.us.i.5 = ashr i32 %sub.i.us.i.5, 31
  %cond.i.us.i.5 = select i1 %tobool.i.us.i.5, i32 %shr.i.us.i.5, i32 %add7.us.i.5
  %conv.i.us.i.5 = trunc i32 %cond.i.us.i.5 to i8
  %arrayidx8.us.i.5 = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 5
  store i8 %conv.i.us.i.5, i8* %arrayidx8.us.i.5, align 1, !tbaa !2
  %arrayidx.us.i.6 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 6
  %22 = load i8, i8* %arrayidx.us.i.6, align 1, !tbaa !2
  %conv.us.i.6 = zext i8 %22 to i32
  %mul6.us.i.6 = mul nsw i32 %weight.idx1.val, %conv.us.i.6
  %add.us.i.6 = add nsw i32 %mul6.us.i.6, %shl.i
  %shr.us.i.6 = ashr i32 %add.us.i.6, %weight.idx.val
  %add7.us.i.6 = add nsw i32 %shr.us.i.6, %weight.idx2.val
  %tobool.i.us.i.6 = icmp ugt i32 %add7.us.i.6, 255
  %sub.i.us.i.6 = sub nsw i32 0, %add7.us.i.6
  %shr.i.us.i.6 = ashr i32 %sub.i.us.i.6, 31
  %cond.i.us.i.6 = select i1 %tobool.i.us.i.6, i32 %shr.i.us.i.6, i32 %add7.us.i.6
  %conv.i.us.i.6 = trunc i32 %cond.i.us.i.6 to i8
  %arrayidx8.us.i.6 = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 6
  store i8 %conv.i.us.i.6, i8* %arrayidx8.us.i.6, align 1, !tbaa !2
  %arrayidx.us.i.7 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 7
  %23 = load i8, i8* %arrayidx.us.i.7, align 1, !tbaa !2
  %conv.us.i.7 = zext i8 %23 to i32
  %mul6.us.i.7 = mul nsw i32 %weight.idx1.val, %conv.us.i.7
  %add.us.i.7 = add nsw i32 %mul6.us.i.7, %shl.i
  %shr.us.i.7 = ashr i32 %add.us.i.7, %weight.idx.val
  %add7.us.i.7 = add nsw i32 %shr.us.i.7, %weight.idx2.val
  %tobool.i.us.i.7 = icmp ugt i32 %add7.us.i.7, 255
  %sub.i.us.i.7 = sub nsw i32 0, %add7.us.i.7
  %shr.i.us.i.7 = ashr i32 %sub.i.us.i.7, 31
  %cond.i.us.i.7 = select i1 %tobool.i.us.i.7, i32 %shr.i.us.i.7, i32 %add7.us.i.7
  %conv.i.us.i.7 = trunc i32 %cond.i.us.i.7 to i8
  %arrayidx8.us.i.7 = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 7
  store i8 %conv.i.us.i.7, i8* %arrayidx8.us.i.7, align 1, !tbaa !2
  %arrayidx.us.i.8 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 8
  %24 = load i8, i8* %arrayidx.us.i.8, align 1, !tbaa !2
  %conv.us.i.8 = zext i8 %24 to i32
  %mul6.us.i.8 = mul nsw i32 %weight.idx1.val, %conv.us.i.8
  %add.us.i.8 = add nsw i32 %mul6.us.i.8, %shl.i
  %shr.us.i.8 = ashr i32 %add.us.i.8, %weight.idx.val
  %add7.us.i.8 = add nsw i32 %shr.us.i.8, %weight.idx2.val
  %tobool.i.us.i.8 = icmp ugt i32 %add7.us.i.8, 255
  %sub.i.us.i.8 = sub nsw i32 0, %add7.us.i.8
  %shr.i.us.i.8 = ashr i32 %sub.i.us.i.8, 31
  %cond.i.us.i.8 = select i1 %tobool.i.us.i.8, i32 %shr.i.us.i.8, i32 %add7.us.i.8
  %conv.i.us.i.8 = trunc i32 %cond.i.us.i.8 to i8
  %arrayidx8.us.i.8 = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 8
  store i8 %conv.i.us.i.8, i8* %arrayidx8.us.i.8, align 1, !tbaa !2
  %arrayidx.us.i.9 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 9
  %25 = load i8, i8* %arrayidx.us.i.9, align 1, !tbaa !2
  %conv.us.i.9 = zext i8 %25 to i32
  %mul6.us.i.9 = mul nsw i32 %weight.idx1.val, %conv.us.i.9
  %add.us.i.9 = add nsw i32 %mul6.us.i.9, %shl.i
  %shr.us.i.9 = ashr i32 %add.us.i.9, %weight.idx.val
  %add7.us.i.9 = add nsw i32 %shr.us.i.9, %weight.idx2.val
  %tobool.i.us.i.9 = icmp ugt i32 %add7.us.i.9, 255
  %sub.i.us.i.9 = sub nsw i32 0, %add7.us.i.9
  %shr.i.us.i.9 = ashr i32 %sub.i.us.i.9, 31
  %cond.i.us.i.9 = select i1 %tobool.i.us.i.9, i32 %shr.i.us.i.9, i32 %add7.us.i.9
  %conv.i.us.i.9 = trunc i32 %cond.i.us.i.9 to i8
  %arrayidx8.us.i.9 = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 9
  store i8 %conv.i.us.i.9, i8* %arrayidx8.us.i.9, align 1, !tbaa !2
  %arrayidx.us.i.10 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 10
  %26 = load i8, i8* %arrayidx.us.i.10, align 1, !tbaa !2
  %conv.us.i.10 = zext i8 %26 to i32
  %mul6.us.i.10 = mul nsw i32 %weight.idx1.val, %conv.us.i.10
  %add.us.i.10 = add nsw i32 %mul6.us.i.10, %shl.i
  %shr.us.i.10 = ashr i32 %add.us.i.10, %weight.idx.val
  %add7.us.i.10 = add nsw i32 %shr.us.i.10, %weight.idx2.val
  %tobool.i.us.i.10 = icmp ugt i32 %add7.us.i.10, 255
  %sub.i.us.i.10 = sub nsw i32 0, %add7.us.i.10
  %shr.i.us.i.10 = ashr i32 %sub.i.us.i.10, 31
  %cond.i.us.i.10 = select i1 %tobool.i.us.i.10, i32 %shr.i.us.i.10, i32 %add7.us.i.10
  %conv.i.us.i.10 = trunc i32 %cond.i.us.i.10 to i8
  %arrayidx8.us.i.10 = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 10
  store i8 %conv.i.us.i.10, i8* %arrayidx8.us.i.10, align 1, !tbaa !2
  %arrayidx.us.i.11 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 11
  %27 = load i8, i8* %arrayidx.us.i.11, align 1, !tbaa !2
  %conv.us.i.11 = zext i8 %27 to i32
  %mul6.us.i.11 = mul nsw i32 %weight.idx1.val, %conv.us.i.11
  %add.us.i.11 = add nsw i32 %mul6.us.i.11, %shl.i
  %shr.us.i.11 = ashr i32 %add.us.i.11, %weight.idx.val
  %add7.us.i.11 = add nsw i32 %shr.us.i.11, %weight.idx2.val
  %tobool.i.us.i.11 = icmp ugt i32 %add7.us.i.11, 255
  %sub.i.us.i.11 = sub nsw i32 0, %add7.us.i.11
  %shr.i.us.i.11 = ashr i32 %sub.i.us.i.11, 31
  %cond.i.us.i.11 = select i1 %tobool.i.us.i.11, i32 %shr.i.us.i.11, i32 %add7.us.i.11
  %conv.i.us.i.11 = trunc i32 %cond.i.us.i.11 to i8
  %arrayidx8.us.i.11 = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 11
  store i8 %conv.i.us.i.11, i8* %arrayidx8.us.i.11, align 1, !tbaa !2
  %arrayidx.us.i.12 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 12
  %28 = load i8, i8* %arrayidx.us.i.12, align 1, !tbaa !2
  %conv.us.i.12 = zext i8 %28 to i32
  %mul6.us.i.12 = mul nsw i32 %weight.idx1.val, %conv.us.i.12
  %add.us.i.12 = add nsw i32 %mul6.us.i.12, %shl.i
  %shr.us.i.12 = ashr i32 %add.us.i.12, %weight.idx.val
  %add7.us.i.12 = add nsw i32 %shr.us.i.12, %weight.idx2.val
  %tobool.i.us.i.12 = icmp ugt i32 %add7.us.i.12, 255
  %sub.i.us.i.12 = sub nsw i32 0, %add7.us.i.12
  %shr.i.us.i.12 = ashr i32 %sub.i.us.i.12, 31
  %cond.i.us.i.12 = select i1 %tobool.i.us.i.12, i32 %shr.i.us.i.12, i32 %add7.us.i.12
  %conv.i.us.i.12 = trunc i32 %cond.i.us.i.12 to i8
  %arrayidx8.us.i.12 = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 12
  store i8 %conv.i.us.i.12, i8* %arrayidx8.us.i.12, align 1, !tbaa !2
  %arrayidx.us.i.13 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 13
  %29 = load i8, i8* %arrayidx.us.i.13, align 1, !tbaa !2
  %conv.us.i.13 = zext i8 %29 to i32
  %mul6.us.i.13 = mul nsw i32 %weight.idx1.val, %conv.us.i.13
  %add.us.i.13 = add nsw i32 %mul6.us.i.13, %shl.i
  %shr.us.i.13 = ashr i32 %add.us.i.13, %weight.idx.val
  %add7.us.i.13 = add nsw i32 %shr.us.i.13, %weight.idx2.val
  %tobool.i.us.i.13 = icmp ugt i32 %add7.us.i.13, 255
  %sub.i.us.i.13 = sub nsw i32 0, %add7.us.i.13
  %shr.i.us.i.13 = ashr i32 %sub.i.us.i.13, 31
  %cond.i.us.i.13 = select i1 %tobool.i.us.i.13, i32 %shr.i.us.i.13, i32 %add7.us.i.13
  %conv.i.us.i.13 = trunc i32 %cond.i.us.i.13 to i8
  %arrayidx8.us.i.13 = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 13
  store i8 %conv.i.us.i.13, i8* %arrayidx8.us.i.13, align 1, !tbaa !2
  %arrayidx.us.i.14 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 14
  %30 = load i8, i8* %arrayidx.us.i.14, align 1, !tbaa !2
  %conv.us.i.14 = zext i8 %30 to i32
  %mul6.us.i.14 = mul nsw i32 %weight.idx1.val, %conv.us.i.14
  %add.us.i.14 = add nsw i32 %mul6.us.i.14, %shl.i
  %shr.us.i.14 = ashr i32 %add.us.i.14, %weight.idx.val
  %add7.us.i.14 = add nsw i32 %shr.us.i.14, %weight.idx2.val
  %tobool.i.us.i.14 = icmp ugt i32 %add7.us.i.14, 255
  %sub.i.us.i.14 = sub nsw i32 0, %add7.us.i.14
  %shr.i.us.i.14 = ashr i32 %sub.i.us.i.14, 31
  %cond.i.us.i.14 = select i1 %tobool.i.us.i.14, i32 %shr.i.us.i.14, i32 %add7.us.i.14
  %conv.i.us.i.14 = trunc i32 %cond.i.us.i.14 to i8
  %arrayidx8.us.i.14 = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 14
  store i8 %conv.i.us.i.14, i8* %arrayidx8.us.i.14, align 1, !tbaa !2
  %arrayidx.us.i.15 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 15
  %31 = load i8, i8* %arrayidx.us.i.15, align 1, !tbaa !2
  %conv.us.i.15 = zext i8 %31 to i32
  %mul6.us.i.15 = mul nsw i32 %weight.idx1.val, %conv.us.i.15
  %add.us.i.15 = add nsw i32 %mul6.us.i.15, %shl.i
  %shr.us.i.15 = ashr i32 %add.us.i.15, %weight.idx.val
  %add7.us.i.15 = add nsw i32 %shr.us.i.15, %weight.idx2.val
  %tobool.i.us.i.15 = icmp ugt i32 %add7.us.i.15, 255
  %sub.i.us.i.15 = sub nsw i32 0, %add7.us.i.15
  %shr.i.us.i.15 = ashr i32 %sub.i.us.i.15, 31
  %cond.i.us.i.15 = select i1 %tobool.i.us.i.15, i32 %shr.i.us.i.15, i32 %add7.us.i.15
  %conv.i.us.i.15 = trunc i32 %cond.i.us.i.15 to i8
  %arrayidx8.us.i.15 = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 15
  store i8 %conv.i.us.i.15, i8* %arrayidx8.us.i.15, align 1, !tbaa !2
  %inc10.us.i = add nuw nsw i32 %y.07.us.i, 1
  %add.ptr.us.i = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 %i_dst_stride
  %add.ptr11.us.i = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 %i_src_stride
  %exitcond17.i = icmp eq i32 %inc10.us.i, %height
  br i1 %exitcond17.i, label %mc_weight.exit, label %for.cond2.preheader.us.i

mc_weight.exit:                                   ; preds = %for.cond20.preheader.us.i, %for.cond2.preheader.us.i, %for.cond14.preheader.i, %for.cond.preheader.i
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @mc_weight_w20(i8* nocapture %dst, i32 %i_dst_stride, i8* nocapture readonly %src, i32 %i_src_stride, %struct.x264_weight_t* nocapture readonly %weight, i32 %height) #2 {
entry:
  %weight.idx = getelementptr %struct.x264_weight_t, %struct.x264_weight_t* %weight, i32 0, i32 2
  %weight.idx.val = load i32, i32* %weight.idx, align 16, !tbaa !84
  %weight.idx1 = getelementptr %struct.x264_weight_t, %struct.x264_weight_t* %weight, i32 0, i32 3
  %weight.idx1.val = load i32, i32* %weight.idx1, align 4, !tbaa !85
  %weight.idx2 = getelementptr %struct.x264_weight_t, %struct.x264_weight_t* %weight, i32 0, i32 4
  %weight.idx2.val = load i32, i32* %weight.idx2, align 8, !tbaa !86
  %cmp.i = icmp sgt i32 %weight.idx.val, 0
  %cmp14.i = icmp sgt i32 %height, 0
  br i1 %cmp.i, label %for.cond.preheader.i, label %for.cond14.preheader.i

for.cond14.preheader.i:                           ; preds = %entry
  br i1 %cmp14.i, label %for.cond20.preheader.us.i, label %mc_weight.exit

for.cond20.preheader.us.i:                        ; preds = %for.cond14.preheader.i, %for.cond20.preheader.us.i
  %y13.013.us.i = phi i32 [ %inc35.us.i, %for.cond20.preheader.us.i ], [ 0, %for.cond14.preheader.i ]
  %dst.addr.112.us.i = phi i8* [ %add.ptr36.us.i, %for.cond20.preheader.us.i ], [ %dst, %for.cond14.preheader.i ]
  %src.addr.111.us.i = phi i8* [ %add.ptr37.us.i, %for.cond20.preheader.us.i ], [ %src, %for.cond14.preheader.i ]
  %0 = load i8, i8* %src.addr.111.us.i, align 1, !tbaa !2
  %conv26.us.i = zext i8 %0 to i32
  %mul27.us.i = mul nsw i32 %weight.idx1.val, %conv26.us.i
  %add28.us.i = add nsw i32 %mul27.us.i, %weight.idx2.val
  %tobool.i70.us.i = icmp ugt i32 %add28.us.i, 255
  %sub.i71.us.i = sub nsw i32 0, %add28.us.i
  %shr.i72.us.i = ashr i32 %sub.i71.us.i, 31
  %cond.i73.us.i = select i1 %tobool.i70.us.i, i32 %shr.i72.us.i, i32 %add28.us.i
  %conv.i74.us.i = trunc i32 %cond.i73.us.i to i8
  store i8 %conv.i74.us.i, i8* %dst.addr.112.us.i, align 1, !tbaa !2
  %arrayidx25.us.i.1 = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 1
  %1 = load i8, i8* %arrayidx25.us.i.1, align 1, !tbaa !2
  %conv26.us.i.1 = zext i8 %1 to i32
  %mul27.us.i.1 = mul nsw i32 %weight.idx1.val, %conv26.us.i.1
  %add28.us.i.1 = add nsw i32 %mul27.us.i.1, %weight.idx2.val
  %tobool.i70.us.i.1 = icmp ugt i32 %add28.us.i.1, 255
  %sub.i71.us.i.1 = sub nsw i32 0, %add28.us.i.1
  %shr.i72.us.i.1 = ashr i32 %sub.i71.us.i.1, 31
  %cond.i73.us.i.1 = select i1 %tobool.i70.us.i.1, i32 %shr.i72.us.i.1, i32 %add28.us.i.1
  %conv.i74.us.i.1 = trunc i32 %cond.i73.us.i.1 to i8
  %arrayidx30.us.i.1 = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 1
  store i8 %conv.i74.us.i.1, i8* %arrayidx30.us.i.1, align 1, !tbaa !2
  %arrayidx25.us.i.2 = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 2
  %2 = load i8, i8* %arrayidx25.us.i.2, align 1, !tbaa !2
  %conv26.us.i.2 = zext i8 %2 to i32
  %mul27.us.i.2 = mul nsw i32 %weight.idx1.val, %conv26.us.i.2
  %add28.us.i.2 = add nsw i32 %mul27.us.i.2, %weight.idx2.val
  %tobool.i70.us.i.2 = icmp ugt i32 %add28.us.i.2, 255
  %sub.i71.us.i.2 = sub nsw i32 0, %add28.us.i.2
  %shr.i72.us.i.2 = ashr i32 %sub.i71.us.i.2, 31
  %cond.i73.us.i.2 = select i1 %tobool.i70.us.i.2, i32 %shr.i72.us.i.2, i32 %add28.us.i.2
  %conv.i74.us.i.2 = trunc i32 %cond.i73.us.i.2 to i8
  %arrayidx30.us.i.2 = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 2
  store i8 %conv.i74.us.i.2, i8* %arrayidx30.us.i.2, align 1, !tbaa !2
  %arrayidx25.us.i.3 = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 3
  %3 = load i8, i8* %arrayidx25.us.i.3, align 1, !tbaa !2
  %conv26.us.i.3 = zext i8 %3 to i32
  %mul27.us.i.3 = mul nsw i32 %weight.idx1.val, %conv26.us.i.3
  %add28.us.i.3 = add nsw i32 %mul27.us.i.3, %weight.idx2.val
  %tobool.i70.us.i.3 = icmp ugt i32 %add28.us.i.3, 255
  %sub.i71.us.i.3 = sub nsw i32 0, %add28.us.i.3
  %shr.i72.us.i.3 = ashr i32 %sub.i71.us.i.3, 31
  %cond.i73.us.i.3 = select i1 %tobool.i70.us.i.3, i32 %shr.i72.us.i.3, i32 %add28.us.i.3
  %conv.i74.us.i.3 = trunc i32 %cond.i73.us.i.3 to i8
  %arrayidx30.us.i.3 = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 3
  store i8 %conv.i74.us.i.3, i8* %arrayidx30.us.i.3, align 1, !tbaa !2
  %arrayidx25.us.i.4 = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 4
  %4 = load i8, i8* %arrayidx25.us.i.4, align 1, !tbaa !2
  %conv26.us.i.4 = zext i8 %4 to i32
  %mul27.us.i.4 = mul nsw i32 %weight.idx1.val, %conv26.us.i.4
  %add28.us.i.4 = add nsw i32 %mul27.us.i.4, %weight.idx2.val
  %tobool.i70.us.i.4 = icmp ugt i32 %add28.us.i.4, 255
  %sub.i71.us.i.4 = sub nsw i32 0, %add28.us.i.4
  %shr.i72.us.i.4 = ashr i32 %sub.i71.us.i.4, 31
  %cond.i73.us.i.4 = select i1 %tobool.i70.us.i.4, i32 %shr.i72.us.i.4, i32 %add28.us.i.4
  %conv.i74.us.i.4 = trunc i32 %cond.i73.us.i.4 to i8
  %arrayidx30.us.i.4 = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 4
  store i8 %conv.i74.us.i.4, i8* %arrayidx30.us.i.4, align 1, !tbaa !2
  %arrayidx25.us.i.5 = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 5
  %5 = load i8, i8* %arrayidx25.us.i.5, align 1, !tbaa !2
  %conv26.us.i.5 = zext i8 %5 to i32
  %mul27.us.i.5 = mul nsw i32 %weight.idx1.val, %conv26.us.i.5
  %add28.us.i.5 = add nsw i32 %mul27.us.i.5, %weight.idx2.val
  %tobool.i70.us.i.5 = icmp ugt i32 %add28.us.i.5, 255
  %sub.i71.us.i.5 = sub nsw i32 0, %add28.us.i.5
  %shr.i72.us.i.5 = ashr i32 %sub.i71.us.i.5, 31
  %cond.i73.us.i.5 = select i1 %tobool.i70.us.i.5, i32 %shr.i72.us.i.5, i32 %add28.us.i.5
  %conv.i74.us.i.5 = trunc i32 %cond.i73.us.i.5 to i8
  %arrayidx30.us.i.5 = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 5
  store i8 %conv.i74.us.i.5, i8* %arrayidx30.us.i.5, align 1, !tbaa !2
  %arrayidx25.us.i.6 = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 6
  %6 = load i8, i8* %arrayidx25.us.i.6, align 1, !tbaa !2
  %conv26.us.i.6 = zext i8 %6 to i32
  %mul27.us.i.6 = mul nsw i32 %weight.idx1.val, %conv26.us.i.6
  %add28.us.i.6 = add nsw i32 %mul27.us.i.6, %weight.idx2.val
  %tobool.i70.us.i.6 = icmp ugt i32 %add28.us.i.6, 255
  %sub.i71.us.i.6 = sub nsw i32 0, %add28.us.i.6
  %shr.i72.us.i.6 = ashr i32 %sub.i71.us.i.6, 31
  %cond.i73.us.i.6 = select i1 %tobool.i70.us.i.6, i32 %shr.i72.us.i.6, i32 %add28.us.i.6
  %conv.i74.us.i.6 = trunc i32 %cond.i73.us.i.6 to i8
  %arrayidx30.us.i.6 = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 6
  store i8 %conv.i74.us.i.6, i8* %arrayidx30.us.i.6, align 1, !tbaa !2
  %arrayidx25.us.i.7 = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 7
  %7 = load i8, i8* %arrayidx25.us.i.7, align 1, !tbaa !2
  %conv26.us.i.7 = zext i8 %7 to i32
  %mul27.us.i.7 = mul nsw i32 %weight.idx1.val, %conv26.us.i.7
  %add28.us.i.7 = add nsw i32 %mul27.us.i.7, %weight.idx2.val
  %tobool.i70.us.i.7 = icmp ugt i32 %add28.us.i.7, 255
  %sub.i71.us.i.7 = sub nsw i32 0, %add28.us.i.7
  %shr.i72.us.i.7 = ashr i32 %sub.i71.us.i.7, 31
  %cond.i73.us.i.7 = select i1 %tobool.i70.us.i.7, i32 %shr.i72.us.i.7, i32 %add28.us.i.7
  %conv.i74.us.i.7 = trunc i32 %cond.i73.us.i.7 to i8
  %arrayidx30.us.i.7 = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 7
  store i8 %conv.i74.us.i.7, i8* %arrayidx30.us.i.7, align 1, !tbaa !2
  %arrayidx25.us.i.8 = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 8
  %8 = load i8, i8* %arrayidx25.us.i.8, align 1, !tbaa !2
  %conv26.us.i.8 = zext i8 %8 to i32
  %mul27.us.i.8 = mul nsw i32 %weight.idx1.val, %conv26.us.i.8
  %add28.us.i.8 = add nsw i32 %mul27.us.i.8, %weight.idx2.val
  %tobool.i70.us.i.8 = icmp ugt i32 %add28.us.i.8, 255
  %sub.i71.us.i.8 = sub nsw i32 0, %add28.us.i.8
  %shr.i72.us.i.8 = ashr i32 %sub.i71.us.i.8, 31
  %cond.i73.us.i.8 = select i1 %tobool.i70.us.i.8, i32 %shr.i72.us.i.8, i32 %add28.us.i.8
  %conv.i74.us.i.8 = trunc i32 %cond.i73.us.i.8 to i8
  %arrayidx30.us.i.8 = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 8
  store i8 %conv.i74.us.i.8, i8* %arrayidx30.us.i.8, align 1, !tbaa !2
  %arrayidx25.us.i.9 = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 9
  %9 = load i8, i8* %arrayidx25.us.i.9, align 1, !tbaa !2
  %conv26.us.i.9 = zext i8 %9 to i32
  %mul27.us.i.9 = mul nsw i32 %weight.idx1.val, %conv26.us.i.9
  %add28.us.i.9 = add nsw i32 %mul27.us.i.9, %weight.idx2.val
  %tobool.i70.us.i.9 = icmp ugt i32 %add28.us.i.9, 255
  %sub.i71.us.i.9 = sub nsw i32 0, %add28.us.i.9
  %shr.i72.us.i.9 = ashr i32 %sub.i71.us.i.9, 31
  %cond.i73.us.i.9 = select i1 %tobool.i70.us.i.9, i32 %shr.i72.us.i.9, i32 %add28.us.i.9
  %conv.i74.us.i.9 = trunc i32 %cond.i73.us.i.9 to i8
  %arrayidx30.us.i.9 = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 9
  store i8 %conv.i74.us.i.9, i8* %arrayidx30.us.i.9, align 1, !tbaa !2
  %arrayidx25.us.i.10 = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 10
  %10 = load i8, i8* %arrayidx25.us.i.10, align 1, !tbaa !2
  %conv26.us.i.10 = zext i8 %10 to i32
  %mul27.us.i.10 = mul nsw i32 %weight.idx1.val, %conv26.us.i.10
  %add28.us.i.10 = add nsw i32 %mul27.us.i.10, %weight.idx2.val
  %tobool.i70.us.i.10 = icmp ugt i32 %add28.us.i.10, 255
  %sub.i71.us.i.10 = sub nsw i32 0, %add28.us.i.10
  %shr.i72.us.i.10 = ashr i32 %sub.i71.us.i.10, 31
  %cond.i73.us.i.10 = select i1 %tobool.i70.us.i.10, i32 %shr.i72.us.i.10, i32 %add28.us.i.10
  %conv.i74.us.i.10 = trunc i32 %cond.i73.us.i.10 to i8
  %arrayidx30.us.i.10 = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 10
  store i8 %conv.i74.us.i.10, i8* %arrayidx30.us.i.10, align 1, !tbaa !2
  %arrayidx25.us.i.11 = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 11
  %11 = load i8, i8* %arrayidx25.us.i.11, align 1, !tbaa !2
  %conv26.us.i.11 = zext i8 %11 to i32
  %mul27.us.i.11 = mul nsw i32 %weight.idx1.val, %conv26.us.i.11
  %add28.us.i.11 = add nsw i32 %mul27.us.i.11, %weight.idx2.val
  %tobool.i70.us.i.11 = icmp ugt i32 %add28.us.i.11, 255
  %sub.i71.us.i.11 = sub nsw i32 0, %add28.us.i.11
  %shr.i72.us.i.11 = ashr i32 %sub.i71.us.i.11, 31
  %cond.i73.us.i.11 = select i1 %tobool.i70.us.i.11, i32 %shr.i72.us.i.11, i32 %add28.us.i.11
  %conv.i74.us.i.11 = trunc i32 %cond.i73.us.i.11 to i8
  %arrayidx30.us.i.11 = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 11
  store i8 %conv.i74.us.i.11, i8* %arrayidx30.us.i.11, align 1, !tbaa !2
  %arrayidx25.us.i.12 = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 12
  %12 = load i8, i8* %arrayidx25.us.i.12, align 1, !tbaa !2
  %conv26.us.i.12 = zext i8 %12 to i32
  %mul27.us.i.12 = mul nsw i32 %weight.idx1.val, %conv26.us.i.12
  %add28.us.i.12 = add nsw i32 %mul27.us.i.12, %weight.idx2.val
  %tobool.i70.us.i.12 = icmp ugt i32 %add28.us.i.12, 255
  %sub.i71.us.i.12 = sub nsw i32 0, %add28.us.i.12
  %shr.i72.us.i.12 = ashr i32 %sub.i71.us.i.12, 31
  %cond.i73.us.i.12 = select i1 %tobool.i70.us.i.12, i32 %shr.i72.us.i.12, i32 %add28.us.i.12
  %conv.i74.us.i.12 = trunc i32 %cond.i73.us.i.12 to i8
  %arrayidx30.us.i.12 = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 12
  store i8 %conv.i74.us.i.12, i8* %arrayidx30.us.i.12, align 1, !tbaa !2
  %arrayidx25.us.i.13 = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 13
  %13 = load i8, i8* %arrayidx25.us.i.13, align 1, !tbaa !2
  %conv26.us.i.13 = zext i8 %13 to i32
  %mul27.us.i.13 = mul nsw i32 %weight.idx1.val, %conv26.us.i.13
  %add28.us.i.13 = add nsw i32 %mul27.us.i.13, %weight.idx2.val
  %tobool.i70.us.i.13 = icmp ugt i32 %add28.us.i.13, 255
  %sub.i71.us.i.13 = sub nsw i32 0, %add28.us.i.13
  %shr.i72.us.i.13 = ashr i32 %sub.i71.us.i.13, 31
  %cond.i73.us.i.13 = select i1 %tobool.i70.us.i.13, i32 %shr.i72.us.i.13, i32 %add28.us.i.13
  %conv.i74.us.i.13 = trunc i32 %cond.i73.us.i.13 to i8
  %arrayidx30.us.i.13 = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 13
  store i8 %conv.i74.us.i.13, i8* %arrayidx30.us.i.13, align 1, !tbaa !2
  %arrayidx25.us.i.14 = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 14
  %14 = load i8, i8* %arrayidx25.us.i.14, align 1, !tbaa !2
  %conv26.us.i.14 = zext i8 %14 to i32
  %mul27.us.i.14 = mul nsw i32 %weight.idx1.val, %conv26.us.i.14
  %add28.us.i.14 = add nsw i32 %mul27.us.i.14, %weight.idx2.val
  %tobool.i70.us.i.14 = icmp ugt i32 %add28.us.i.14, 255
  %sub.i71.us.i.14 = sub nsw i32 0, %add28.us.i.14
  %shr.i72.us.i.14 = ashr i32 %sub.i71.us.i.14, 31
  %cond.i73.us.i.14 = select i1 %tobool.i70.us.i.14, i32 %shr.i72.us.i.14, i32 %add28.us.i.14
  %conv.i74.us.i.14 = trunc i32 %cond.i73.us.i.14 to i8
  %arrayidx30.us.i.14 = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 14
  store i8 %conv.i74.us.i.14, i8* %arrayidx30.us.i.14, align 1, !tbaa !2
  %arrayidx25.us.i.15 = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 15
  %15 = load i8, i8* %arrayidx25.us.i.15, align 1, !tbaa !2
  %conv26.us.i.15 = zext i8 %15 to i32
  %mul27.us.i.15 = mul nsw i32 %weight.idx1.val, %conv26.us.i.15
  %add28.us.i.15 = add nsw i32 %mul27.us.i.15, %weight.idx2.val
  %tobool.i70.us.i.15 = icmp ugt i32 %add28.us.i.15, 255
  %sub.i71.us.i.15 = sub nsw i32 0, %add28.us.i.15
  %shr.i72.us.i.15 = ashr i32 %sub.i71.us.i.15, 31
  %cond.i73.us.i.15 = select i1 %tobool.i70.us.i.15, i32 %shr.i72.us.i.15, i32 %add28.us.i.15
  %conv.i74.us.i.15 = trunc i32 %cond.i73.us.i.15 to i8
  %arrayidx30.us.i.15 = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 15
  store i8 %conv.i74.us.i.15, i8* %arrayidx30.us.i.15, align 1, !tbaa !2
  %arrayidx25.us.i.16 = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 16
  %16 = load i8, i8* %arrayidx25.us.i.16, align 1, !tbaa !2
  %conv26.us.i.16 = zext i8 %16 to i32
  %mul27.us.i.16 = mul nsw i32 %weight.idx1.val, %conv26.us.i.16
  %add28.us.i.16 = add nsw i32 %mul27.us.i.16, %weight.idx2.val
  %tobool.i70.us.i.16 = icmp ugt i32 %add28.us.i.16, 255
  %sub.i71.us.i.16 = sub nsw i32 0, %add28.us.i.16
  %shr.i72.us.i.16 = ashr i32 %sub.i71.us.i.16, 31
  %cond.i73.us.i.16 = select i1 %tobool.i70.us.i.16, i32 %shr.i72.us.i.16, i32 %add28.us.i.16
  %conv.i74.us.i.16 = trunc i32 %cond.i73.us.i.16 to i8
  %arrayidx30.us.i.16 = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 16
  store i8 %conv.i74.us.i.16, i8* %arrayidx30.us.i.16, align 1, !tbaa !2
  %arrayidx25.us.i.17 = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 17
  %17 = load i8, i8* %arrayidx25.us.i.17, align 1, !tbaa !2
  %conv26.us.i.17 = zext i8 %17 to i32
  %mul27.us.i.17 = mul nsw i32 %weight.idx1.val, %conv26.us.i.17
  %add28.us.i.17 = add nsw i32 %mul27.us.i.17, %weight.idx2.val
  %tobool.i70.us.i.17 = icmp ugt i32 %add28.us.i.17, 255
  %sub.i71.us.i.17 = sub nsw i32 0, %add28.us.i.17
  %shr.i72.us.i.17 = ashr i32 %sub.i71.us.i.17, 31
  %cond.i73.us.i.17 = select i1 %tobool.i70.us.i.17, i32 %shr.i72.us.i.17, i32 %add28.us.i.17
  %conv.i74.us.i.17 = trunc i32 %cond.i73.us.i.17 to i8
  %arrayidx30.us.i.17 = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 17
  store i8 %conv.i74.us.i.17, i8* %arrayidx30.us.i.17, align 1, !tbaa !2
  %arrayidx25.us.i.18 = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 18
  %18 = load i8, i8* %arrayidx25.us.i.18, align 1, !tbaa !2
  %conv26.us.i.18 = zext i8 %18 to i32
  %mul27.us.i.18 = mul nsw i32 %weight.idx1.val, %conv26.us.i.18
  %add28.us.i.18 = add nsw i32 %mul27.us.i.18, %weight.idx2.val
  %tobool.i70.us.i.18 = icmp ugt i32 %add28.us.i.18, 255
  %sub.i71.us.i.18 = sub nsw i32 0, %add28.us.i.18
  %shr.i72.us.i.18 = ashr i32 %sub.i71.us.i.18, 31
  %cond.i73.us.i.18 = select i1 %tobool.i70.us.i.18, i32 %shr.i72.us.i.18, i32 %add28.us.i.18
  %conv.i74.us.i.18 = trunc i32 %cond.i73.us.i.18 to i8
  %arrayidx30.us.i.18 = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 18
  store i8 %conv.i74.us.i.18, i8* %arrayidx30.us.i.18, align 1, !tbaa !2
  %arrayidx25.us.i.19 = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 19
  %19 = load i8, i8* %arrayidx25.us.i.19, align 1, !tbaa !2
  %conv26.us.i.19 = zext i8 %19 to i32
  %mul27.us.i.19 = mul nsw i32 %weight.idx1.val, %conv26.us.i.19
  %add28.us.i.19 = add nsw i32 %mul27.us.i.19, %weight.idx2.val
  %tobool.i70.us.i.19 = icmp ugt i32 %add28.us.i.19, 255
  %sub.i71.us.i.19 = sub nsw i32 0, %add28.us.i.19
  %shr.i72.us.i.19 = ashr i32 %sub.i71.us.i.19, 31
  %cond.i73.us.i.19 = select i1 %tobool.i70.us.i.19, i32 %shr.i72.us.i.19, i32 %add28.us.i.19
  %conv.i74.us.i.19 = trunc i32 %cond.i73.us.i.19 to i8
  %arrayidx30.us.i.19 = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 19
  store i8 %conv.i74.us.i.19, i8* %arrayidx30.us.i.19, align 1, !tbaa !2
  %inc35.us.i = add nuw nsw i32 %y13.013.us.i, 1
  %add.ptr36.us.i = getelementptr inbounds i8, i8* %dst.addr.112.us.i, i32 %i_dst_stride
  %add.ptr37.us.i = getelementptr inbounds i8, i8* %src.addr.111.us.i, i32 %i_src_stride
  %exitcond19.i = icmp eq i32 %inc35.us.i, %height
  br i1 %exitcond19.i, label %mc_weight.exit, label %for.cond20.preheader.us.i

for.cond.preheader.i:                             ; preds = %entry
  br i1 %cmp14.i, label %for.cond2.preheader.lr.ph.i, label %mc_weight.exit

for.cond2.preheader.lr.ph.i:                      ; preds = %for.cond.preheader.i
  %sub.i = add nsw i32 %weight.idx.val, -1
  %shl.i = shl nuw i32 1, %sub.i
  br label %for.cond2.preheader.us.i

for.cond2.preheader.us.i:                         ; preds = %for.cond2.preheader.us.i, %for.cond2.preheader.lr.ph.i
  %y.07.us.i = phi i32 [ %inc10.us.i, %for.cond2.preheader.us.i ], [ 0, %for.cond2.preheader.lr.ph.i ]
  %dst.addr.06.us.i = phi i8* [ %add.ptr.us.i, %for.cond2.preheader.us.i ], [ %dst, %for.cond2.preheader.lr.ph.i ]
  %src.addr.05.us.i = phi i8* [ %add.ptr11.us.i, %for.cond2.preheader.us.i ], [ %src, %for.cond2.preheader.lr.ph.i ]
  %20 = load i8, i8* %src.addr.05.us.i, align 1, !tbaa !2
  %conv.us.i = zext i8 %20 to i32
  %mul6.us.i = mul nsw i32 %weight.idx1.val, %conv.us.i
  %add.us.i = add nsw i32 %mul6.us.i, %shl.i
  %shr.us.i = ashr i32 %add.us.i, %weight.idx.val
  %add7.us.i = add nsw i32 %shr.us.i, %weight.idx2.val
  %tobool.i.us.i = icmp ugt i32 %add7.us.i, 255
  %sub.i.us.i = sub nsw i32 0, %add7.us.i
  %shr.i.us.i = ashr i32 %sub.i.us.i, 31
  %cond.i.us.i = select i1 %tobool.i.us.i, i32 %shr.i.us.i, i32 %add7.us.i
  %conv.i.us.i = trunc i32 %cond.i.us.i to i8
  store i8 %conv.i.us.i, i8* %dst.addr.06.us.i, align 1, !tbaa !2
  %arrayidx.us.i.1 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 1
  %21 = load i8, i8* %arrayidx.us.i.1, align 1, !tbaa !2
  %conv.us.i.1 = zext i8 %21 to i32
  %mul6.us.i.1 = mul nsw i32 %weight.idx1.val, %conv.us.i.1
  %add.us.i.1 = add nsw i32 %mul6.us.i.1, %shl.i
  %shr.us.i.1 = ashr i32 %add.us.i.1, %weight.idx.val
  %add7.us.i.1 = add nsw i32 %shr.us.i.1, %weight.idx2.val
  %tobool.i.us.i.1 = icmp ugt i32 %add7.us.i.1, 255
  %sub.i.us.i.1 = sub nsw i32 0, %add7.us.i.1
  %shr.i.us.i.1 = ashr i32 %sub.i.us.i.1, 31
  %cond.i.us.i.1 = select i1 %tobool.i.us.i.1, i32 %shr.i.us.i.1, i32 %add7.us.i.1
  %conv.i.us.i.1 = trunc i32 %cond.i.us.i.1 to i8
  %arrayidx8.us.i.1 = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 1
  store i8 %conv.i.us.i.1, i8* %arrayidx8.us.i.1, align 1, !tbaa !2
  %arrayidx.us.i.2 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 2
  %22 = load i8, i8* %arrayidx.us.i.2, align 1, !tbaa !2
  %conv.us.i.2 = zext i8 %22 to i32
  %mul6.us.i.2 = mul nsw i32 %weight.idx1.val, %conv.us.i.2
  %add.us.i.2 = add nsw i32 %mul6.us.i.2, %shl.i
  %shr.us.i.2 = ashr i32 %add.us.i.2, %weight.idx.val
  %add7.us.i.2 = add nsw i32 %shr.us.i.2, %weight.idx2.val
  %tobool.i.us.i.2 = icmp ugt i32 %add7.us.i.2, 255
  %sub.i.us.i.2 = sub nsw i32 0, %add7.us.i.2
  %shr.i.us.i.2 = ashr i32 %sub.i.us.i.2, 31
  %cond.i.us.i.2 = select i1 %tobool.i.us.i.2, i32 %shr.i.us.i.2, i32 %add7.us.i.2
  %conv.i.us.i.2 = trunc i32 %cond.i.us.i.2 to i8
  %arrayidx8.us.i.2 = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 2
  store i8 %conv.i.us.i.2, i8* %arrayidx8.us.i.2, align 1, !tbaa !2
  %arrayidx.us.i.3 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 3
  %23 = load i8, i8* %arrayidx.us.i.3, align 1, !tbaa !2
  %conv.us.i.3 = zext i8 %23 to i32
  %mul6.us.i.3 = mul nsw i32 %weight.idx1.val, %conv.us.i.3
  %add.us.i.3 = add nsw i32 %mul6.us.i.3, %shl.i
  %shr.us.i.3 = ashr i32 %add.us.i.3, %weight.idx.val
  %add7.us.i.3 = add nsw i32 %shr.us.i.3, %weight.idx2.val
  %tobool.i.us.i.3 = icmp ugt i32 %add7.us.i.3, 255
  %sub.i.us.i.3 = sub nsw i32 0, %add7.us.i.3
  %shr.i.us.i.3 = ashr i32 %sub.i.us.i.3, 31
  %cond.i.us.i.3 = select i1 %tobool.i.us.i.3, i32 %shr.i.us.i.3, i32 %add7.us.i.3
  %conv.i.us.i.3 = trunc i32 %cond.i.us.i.3 to i8
  %arrayidx8.us.i.3 = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 3
  store i8 %conv.i.us.i.3, i8* %arrayidx8.us.i.3, align 1, !tbaa !2
  %arrayidx.us.i.4 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 4
  %24 = load i8, i8* %arrayidx.us.i.4, align 1, !tbaa !2
  %conv.us.i.4 = zext i8 %24 to i32
  %mul6.us.i.4 = mul nsw i32 %weight.idx1.val, %conv.us.i.4
  %add.us.i.4 = add nsw i32 %mul6.us.i.4, %shl.i
  %shr.us.i.4 = ashr i32 %add.us.i.4, %weight.idx.val
  %add7.us.i.4 = add nsw i32 %shr.us.i.4, %weight.idx2.val
  %tobool.i.us.i.4 = icmp ugt i32 %add7.us.i.4, 255
  %sub.i.us.i.4 = sub nsw i32 0, %add7.us.i.4
  %shr.i.us.i.4 = ashr i32 %sub.i.us.i.4, 31
  %cond.i.us.i.4 = select i1 %tobool.i.us.i.4, i32 %shr.i.us.i.4, i32 %add7.us.i.4
  %conv.i.us.i.4 = trunc i32 %cond.i.us.i.4 to i8
  %arrayidx8.us.i.4 = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 4
  store i8 %conv.i.us.i.4, i8* %arrayidx8.us.i.4, align 1, !tbaa !2
  %arrayidx.us.i.5 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 5
  %25 = load i8, i8* %arrayidx.us.i.5, align 1, !tbaa !2
  %conv.us.i.5 = zext i8 %25 to i32
  %mul6.us.i.5 = mul nsw i32 %weight.idx1.val, %conv.us.i.5
  %add.us.i.5 = add nsw i32 %mul6.us.i.5, %shl.i
  %shr.us.i.5 = ashr i32 %add.us.i.5, %weight.idx.val
  %add7.us.i.5 = add nsw i32 %shr.us.i.5, %weight.idx2.val
  %tobool.i.us.i.5 = icmp ugt i32 %add7.us.i.5, 255
  %sub.i.us.i.5 = sub nsw i32 0, %add7.us.i.5
  %shr.i.us.i.5 = ashr i32 %sub.i.us.i.5, 31
  %cond.i.us.i.5 = select i1 %tobool.i.us.i.5, i32 %shr.i.us.i.5, i32 %add7.us.i.5
  %conv.i.us.i.5 = trunc i32 %cond.i.us.i.5 to i8
  %arrayidx8.us.i.5 = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 5
  store i8 %conv.i.us.i.5, i8* %arrayidx8.us.i.5, align 1, !tbaa !2
  %arrayidx.us.i.6 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 6
  %26 = load i8, i8* %arrayidx.us.i.6, align 1, !tbaa !2
  %conv.us.i.6 = zext i8 %26 to i32
  %mul6.us.i.6 = mul nsw i32 %weight.idx1.val, %conv.us.i.6
  %add.us.i.6 = add nsw i32 %mul6.us.i.6, %shl.i
  %shr.us.i.6 = ashr i32 %add.us.i.6, %weight.idx.val
  %add7.us.i.6 = add nsw i32 %shr.us.i.6, %weight.idx2.val
  %tobool.i.us.i.6 = icmp ugt i32 %add7.us.i.6, 255
  %sub.i.us.i.6 = sub nsw i32 0, %add7.us.i.6
  %shr.i.us.i.6 = ashr i32 %sub.i.us.i.6, 31
  %cond.i.us.i.6 = select i1 %tobool.i.us.i.6, i32 %shr.i.us.i.6, i32 %add7.us.i.6
  %conv.i.us.i.6 = trunc i32 %cond.i.us.i.6 to i8
  %arrayidx8.us.i.6 = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 6
  store i8 %conv.i.us.i.6, i8* %arrayidx8.us.i.6, align 1, !tbaa !2
  %arrayidx.us.i.7 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 7
  %27 = load i8, i8* %arrayidx.us.i.7, align 1, !tbaa !2
  %conv.us.i.7 = zext i8 %27 to i32
  %mul6.us.i.7 = mul nsw i32 %weight.idx1.val, %conv.us.i.7
  %add.us.i.7 = add nsw i32 %mul6.us.i.7, %shl.i
  %shr.us.i.7 = ashr i32 %add.us.i.7, %weight.idx.val
  %add7.us.i.7 = add nsw i32 %shr.us.i.7, %weight.idx2.val
  %tobool.i.us.i.7 = icmp ugt i32 %add7.us.i.7, 255
  %sub.i.us.i.7 = sub nsw i32 0, %add7.us.i.7
  %shr.i.us.i.7 = ashr i32 %sub.i.us.i.7, 31
  %cond.i.us.i.7 = select i1 %tobool.i.us.i.7, i32 %shr.i.us.i.7, i32 %add7.us.i.7
  %conv.i.us.i.7 = trunc i32 %cond.i.us.i.7 to i8
  %arrayidx8.us.i.7 = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 7
  store i8 %conv.i.us.i.7, i8* %arrayidx8.us.i.7, align 1, !tbaa !2
  %arrayidx.us.i.8 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 8
  %28 = load i8, i8* %arrayidx.us.i.8, align 1, !tbaa !2
  %conv.us.i.8 = zext i8 %28 to i32
  %mul6.us.i.8 = mul nsw i32 %weight.idx1.val, %conv.us.i.8
  %add.us.i.8 = add nsw i32 %mul6.us.i.8, %shl.i
  %shr.us.i.8 = ashr i32 %add.us.i.8, %weight.idx.val
  %add7.us.i.8 = add nsw i32 %shr.us.i.8, %weight.idx2.val
  %tobool.i.us.i.8 = icmp ugt i32 %add7.us.i.8, 255
  %sub.i.us.i.8 = sub nsw i32 0, %add7.us.i.8
  %shr.i.us.i.8 = ashr i32 %sub.i.us.i.8, 31
  %cond.i.us.i.8 = select i1 %tobool.i.us.i.8, i32 %shr.i.us.i.8, i32 %add7.us.i.8
  %conv.i.us.i.8 = trunc i32 %cond.i.us.i.8 to i8
  %arrayidx8.us.i.8 = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 8
  store i8 %conv.i.us.i.8, i8* %arrayidx8.us.i.8, align 1, !tbaa !2
  %arrayidx.us.i.9 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 9
  %29 = load i8, i8* %arrayidx.us.i.9, align 1, !tbaa !2
  %conv.us.i.9 = zext i8 %29 to i32
  %mul6.us.i.9 = mul nsw i32 %weight.idx1.val, %conv.us.i.9
  %add.us.i.9 = add nsw i32 %mul6.us.i.9, %shl.i
  %shr.us.i.9 = ashr i32 %add.us.i.9, %weight.idx.val
  %add7.us.i.9 = add nsw i32 %shr.us.i.9, %weight.idx2.val
  %tobool.i.us.i.9 = icmp ugt i32 %add7.us.i.9, 255
  %sub.i.us.i.9 = sub nsw i32 0, %add7.us.i.9
  %shr.i.us.i.9 = ashr i32 %sub.i.us.i.9, 31
  %cond.i.us.i.9 = select i1 %tobool.i.us.i.9, i32 %shr.i.us.i.9, i32 %add7.us.i.9
  %conv.i.us.i.9 = trunc i32 %cond.i.us.i.9 to i8
  %arrayidx8.us.i.9 = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 9
  store i8 %conv.i.us.i.9, i8* %arrayidx8.us.i.9, align 1, !tbaa !2
  %arrayidx.us.i.10 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 10
  %30 = load i8, i8* %arrayidx.us.i.10, align 1, !tbaa !2
  %conv.us.i.10 = zext i8 %30 to i32
  %mul6.us.i.10 = mul nsw i32 %weight.idx1.val, %conv.us.i.10
  %add.us.i.10 = add nsw i32 %mul6.us.i.10, %shl.i
  %shr.us.i.10 = ashr i32 %add.us.i.10, %weight.idx.val
  %add7.us.i.10 = add nsw i32 %shr.us.i.10, %weight.idx2.val
  %tobool.i.us.i.10 = icmp ugt i32 %add7.us.i.10, 255
  %sub.i.us.i.10 = sub nsw i32 0, %add7.us.i.10
  %shr.i.us.i.10 = ashr i32 %sub.i.us.i.10, 31
  %cond.i.us.i.10 = select i1 %tobool.i.us.i.10, i32 %shr.i.us.i.10, i32 %add7.us.i.10
  %conv.i.us.i.10 = trunc i32 %cond.i.us.i.10 to i8
  %arrayidx8.us.i.10 = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 10
  store i8 %conv.i.us.i.10, i8* %arrayidx8.us.i.10, align 1, !tbaa !2
  %arrayidx.us.i.11 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 11
  %31 = load i8, i8* %arrayidx.us.i.11, align 1, !tbaa !2
  %conv.us.i.11 = zext i8 %31 to i32
  %mul6.us.i.11 = mul nsw i32 %weight.idx1.val, %conv.us.i.11
  %add.us.i.11 = add nsw i32 %mul6.us.i.11, %shl.i
  %shr.us.i.11 = ashr i32 %add.us.i.11, %weight.idx.val
  %add7.us.i.11 = add nsw i32 %shr.us.i.11, %weight.idx2.val
  %tobool.i.us.i.11 = icmp ugt i32 %add7.us.i.11, 255
  %sub.i.us.i.11 = sub nsw i32 0, %add7.us.i.11
  %shr.i.us.i.11 = ashr i32 %sub.i.us.i.11, 31
  %cond.i.us.i.11 = select i1 %tobool.i.us.i.11, i32 %shr.i.us.i.11, i32 %add7.us.i.11
  %conv.i.us.i.11 = trunc i32 %cond.i.us.i.11 to i8
  %arrayidx8.us.i.11 = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 11
  store i8 %conv.i.us.i.11, i8* %arrayidx8.us.i.11, align 1, !tbaa !2
  %arrayidx.us.i.12 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 12
  %32 = load i8, i8* %arrayidx.us.i.12, align 1, !tbaa !2
  %conv.us.i.12 = zext i8 %32 to i32
  %mul6.us.i.12 = mul nsw i32 %weight.idx1.val, %conv.us.i.12
  %add.us.i.12 = add nsw i32 %mul6.us.i.12, %shl.i
  %shr.us.i.12 = ashr i32 %add.us.i.12, %weight.idx.val
  %add7.us.i.12 = add nsw i32 %shr.us.i.12, %weight.idx2.val
  %tobool.i.us.i.12 = icmp ugt i32 %add7.us.i.12, 255
  %sub.i.us.i.12 = sub nsw i32 0, %add7.us.i.12
  %shr.i.us.i.12 = ashr i32 %sub.i.us.i.12, 31
  %cond.i.us.i.12 = select i1 %tobool.i.us.i.12, i32 %shr.i.us.i.12, i32 %add7.us.i.12
  %conv.i.us.i.12 = trunc i32 %cond.i.us.i.12 to i8
  %arrayidx8.us.i.12 = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 12
  store i8 %conv.i.us.i.12, i8* %arrayidx8.us.i.12, align 1, !tbaa !2
  %arrayidx.us.i.13 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 13
  %33 = load i8, i8* %arrayidx.us.i.13, align 1, !tbaa !2
  %conv.us.i.13 = zext i8 %33 to i32
  %mul6.us.i.13 = mul nsw i32 %weight.idx1.val, %conv.us.i.13
  %add.us.i.13 = add nsw i32 %mul6.us.i.13, %shl.i
  %shr.us.i.13 = ashr i32 %add.us.i.13, %weight.idx.val
  %add7.us.i.13 = add nsw i32 %shr.us.i.13, %weight.idx2.val
  %tobool.i.us.i.13 = icmp ugt i32 %add7.us.i.13, 255
  %sub.i.us.i.13 = sub nsw i32 0, %add7.us.i.13
  %shr.i.us.i.13 = ashr i32 %sub.i.us.i.13, 31
  %cond.i.us.i.13 = select i1 %tobool.i.us.i.13, i32 %shr.i.us.i.13, i32 %add7.us.i.13
  %conv.i.us.i.13 = trunc i32 %cond.i.us.i.13 to i8
  %arrayidx8.us.i.13 = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 13
  store i8 %conv.i.us.i.13, i8* %arrayidx8.us.i.13, align 1, !tbaa !2
  %arrayidx.us.i.14 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 14
  %34 = load i8, i8* %arrayidx.us.i.14, align 1, !tbaa !2
  %conv.us.i.14 = zext i8 %34 to i32
  %mul6.us.i.14 = mul nsw i32 %weight.idx1.val, %conv.us.i.14
  %add.us.i.14 = add nsw i32 %mul6.us.i.14, %shl.i
  %shr.us.i.14 = ashr i32 %add.us.i.14, %weight.idx.val
  %add7.us.i.14 = add nsw i32 %shr.us.i.14, %weight.idx2.val
  %tobool.i.us.i.14 = icmp ugt i32 %add7.us.i.14, 255
  %sub.i.us.i.14 = sub nsw i32 0, %add7.us.i.14
  %shr.i.us.i.14 = ashr i32 %sub.i.us.i.14, 31
  %cond.i.us.i.14 = select i1 %tobool.i.us.i.14, i32 %shr.i.us.i.14, i32 %add7.us.i.14
  %conv.i.us.i.14 = trunc i32 %cond.i.us.i.14 to i8
  %arrayidx8.us.i.14 = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 14
  store i8 %conv.i.us.i.14, i8* %arrayidx8.us.i.14, align 1, !tbaa !2
  %arrayidx.us.i.15 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 15
  %35 = load i8, i8* %arrayidx.us.i.15, align 1, !tbaa !2
  %conv.us.i.15 = zext i8 %35 to i32
  %mul6.us.i.15 = mul nsw i32 %weight.idx1.val, %conv.us.i.15
  %add.us.i.15 = add nsw i32 %mul6.us.i.15, %shl.i
  %shr.us.i.15 = ashr i32 %add.us.i.15, %weight.idx.val
  %add7.us.i.15 = add nsw i32 %shr.us.i.15, %weight.idx2.val
  %tobool.i.us.i.15 = icmp ugt i32 %add7.us.i.15, 255
  %sub.i.us.i.15 = sub nsw i32 0, %add7.us.i.15
  %shr.i.us.i.15 = ashr i32 %sub.i.us.i.15, 31
  %cond.i.us.i.15 = select i1 %tobool.i.us.i.15, i32 %shr.i.us.i.15, i32 %add7.us.i.15
  %conv.i.us.i.15 = trunc i32 %cond.i.us.i.15 to i8
  %arrayidx8.us.i.15 = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 15
  store i8 %conv.i.us.i.15, i8* %arrayidx8.us.i.15, align 1, !tbaa !2
  %arrayidx.us.i.16 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 16
  %36 = load i8, i8* %arrayidx.us.i.16, align 1, !tbaa !2
  %conv.us.i.16 = zext i8 %36 to i32
  %mul6.us.i.16 = mul nsw i32 %weight.idx1.val, %conv.us.i.16
  %add.us.i.16 = add nsw i32 %mul6.us.i.16, %shl.i
  %shr.us.i.16 = ashr i32 %add.us.i.16, %weight.idx.val
  %add7.us.i.16 = add nsw i32 %shr.us.i.16, %weight.idx2.val
  %tobool.i.us.i.16 = icmp ugt i32 %add7.us.i.16, 255
  %sub.i.us.i.16 = sub nsw i32 0, %add7.us.i.16
  %shr.i.us.i.16 = ashr i32 %sub.i.us.i.16, 31
  %cond.i.us.i.16 = select i1 %tobool.i.us.i.16, i32 %shr.i.us.i.16, i32 %add7.us.i.16
  %conv.i.us.i.16 = trunc i32 %cond.i.us.i.16 to i8
  %arrayidx8.us.i.16 = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 16
  store i8 %conv.i.us.i.16, i8* %arrayidx8.us.i.16, align 1, !tbaa !2
  %arrayidx.us.i.17 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 17
  %37 = load i8, i8* %arrayidx.us.i.17, align 1, !tbaa !2
  %conv.us.i.17 = zext i8 %37 to i32
  %mul6.us.i.17 = mul nsw i32 %weight.idx1.val, %conv.us.i.17
  %add.us.i.17 = add nsw i32 %mul6.us.i.17, %shl.i
  %shr.us.i.17 = ashr i32 %add.us.i.17, %weight.idx.val
  %add7.us.i.17 = add nsw i32 %shr.us.i.17, %weight.idx2.val
  %tobool.i.us.i.17 = icmp ugt i32 %add7.us.i.17, 255
  %sub.i.us.i.17 = sub nsw i32 0, %add7.us.i.17
  %shr.i.us.i.17 = ashr i32 %sub.i.us.i.17, 31
  %cond.i.us.i.17 = select i1 %tobool.i.us.i.17, i32 %shr.i.us.i.17, i32 %add7.us.i.17
  %conv.i.us.i.17 = trunc i32 %cond.i.us.i.17 to i8
  %arrayidx8.us.i.17 = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 17
  store i8 %conv.i.us.i.17, i8* %arrayidx8.us.i.17, align 1, !tbaa !2
  %arrayidx.us.i.18 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 18
  %38 = load i8, i8* %arrayidx.us.i.18, align 1, !tbaa !2
  %conv.us.i.18 = zext i8 %38 to i32
  %mul6.us.i.18 = mul nsw i32 %weight.idx1.val, %conv.us.i.18
  %add.us.i.18 = add nsw i32 %mul6.us.i.18, %shl.i
  %shr.us.i.18 = ashr i32 %add.us.i.18, %weight.idx.val
  %add7.us.i.18 = add nsw i32 %shr.us.i.18, %weight.idx2.val
  %tobool.i.us.i.18 = icmp ugt i32 %add7.us.i.18, 255
  %sub.i.us.i.18 = sub nsw i32 0, %add7.us.i.18
  %shr.i.us.i.18 = ashr i32 %sub.i.us.i.18, 31
  %cond.i.us.i.18 = select i1 %tobool.i.us.i.18, i32 %shr.i.us.i.18, i32 %add7.us.i.18
  %conv.i.us.i.18 = trunc i32 %cond.i.us.i.18 to i8
  %arrayidx8.us.i.18 = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 18
  store i8 %conv.i.us.i.18, i8* %arrayidx8.us.i.18, align 1, !tbaa !2
  %arrayidx.us.i.19 = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 19
  %39 = load i8, i8* %arrayidx.us.i.19, align 1, !tbaa !2
  %conv.us.i.19 = zext i8 %39 to i32
  %mul6.us.i.19 = mul nsw i32 %weight.idx1.val, %conv.us.i.19
  %add.us.i.19 = add nsw i32 %mul6.us.i.19, %shl.i
  %shr.us.i.19 = ashr i32 %add.us.i.19, %weight.idx.val
  %add7.us.i.19 = add nsw i32 %shr.us.i.19, %weight.idx2.val
  %tobool.i.us.i.19 = icmp ugt i32 %add7.us.i.19, 255
  %sub.i.us.i.19 = sub nsw i32 0, %add7.us.i.19
  %shr.i.us.i.19 = ashr i32 %sub.i.us.i.19, 31
  %cond.i.us.i.19 = select i1 %tobool.i.us.i.19, i32 %shr.i.us.i.19, i32 %add7.us.i.19
  %conv.i.us.i.19 = trunc i32 %cond.i.us.i.19 to i8
  %arrayidx8.us.i.19 = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 19
  store i8 %conv.i.us.i.19, i8* %arrayidx8.us.i.19, align 1, !tbaa !2
  %inc10.us.i = add nuw nsw i32 %y.07.us.i, 1
  %add.ptr.us.i = getelementptr inbounds i8, i8* %dst.addr.06.us.i, i32 %i_dst_stride
  %add.ptr11.us.i = getelementptr inbounds i8, i8* %src.addr.05.us.i, i32 %i_src_stride
  %exitcond17.i = icmp eq i32 %inc10.us.i, %height
  br i1 %exitcond17.i, label %mc_weight.exit, label %for.cond2.preheader.us.i

mc_weight.exit:                                   ; preds = %for.cond20.preheader.us.i, %for.cond2.preheader.us.i, %for.cond14.preheader.i, %for.cond.preheader.i
  ret void
}

; Function Attrs: nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nofree norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #4 = { nofree norecurse nounwind writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #5 = { norecurse nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #6 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #7 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #8 = { nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 (http://10.18.30.194:8888/compiler/compiler10.git 713ef477716300a9b04a1522e3fce445623444dc)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !3, i64 0}
!9 = !{!10, !6, i64 37844}
!10 = !{!"x264_t", !11, i64 0, !6, i64 944, !3, i64 948, !3, i64 1464, !8, i64 1528, !8, i64 1532, !8, i64 1536, !8, i64 1540, !8, i64 1544, !8, i64 1548, !6, i64 1552, !6, i64 1556, !8, i64 1560, !8, i64 1564, !20, i64 1568, !6, i64 1612, !8, i64 1616, !6, i64 1620, !8, i64 1624, !8, i64 1628, !8, i64 1632, !8, i64 1636, !8, i64 1640, !8, i64 1644, !18, i64 1648, !8, i64 1656, !18, i64 1664, !18, i64 1672, !18, i64 1680, !18, i64 1688, !18, i64 1696, !18, i64 1704, !18, i64 1712, !8, i64 1720, !18, i64 1728, !8, i64 1736, !3, i64 1740, !3, i64 1756, !3, i64 1772, !3, i64 1788, !3, i64 1804, !3, i64 1820, !3, i64 1836, !3, i64 1852, !3, i64 1868, !3, i64 1884, !6, i64 1900, !3, i64 1904, !3, i64 2184, !6, i64 3304, !6, i64 3308, !22, i64 3312, !3, i64 8448, !3, i64 8760, !8, i64 8824, !22, i64 8832, !23, i64 14016, !24, i64 15168, !6, i64 15352, !6, i64 15356, !3, i64 15360, !3, i64 15368, !3, i64 15520, !3, i64 15528, !8, i64 15536, !8, i64 15540, !18, i64 15544, !25, i64 15552, !26, i64 18752, !6, i64 30784, !29, i64 30792, !6, i64 34104, !6, i64 34108, !6, i64 34112, !3, i64 34144, !3, i64 34656, !3, i64 36704, !3, i64 36736, !6, i64 36744, !6, i64 36748, !3, i64 36752, !3, i64 36812, !3, i64 36820, !3, i64 36848, !3, i64 36896, !3, i64 36944, !3, i64 36972, !3, i64 37000, !6, i64 37028, !32, i64 37032, !33, i64 37664, !34, i64 37880, !35, i64 37948, !35, i64 37972, !35, i64 37996, !36, i64 38020, !37, i64 38232, !38, i64 38316, !6, i64 38332}
!11 = !{!"x264_param_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !12, i64 56, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !6, i64 180, !3, i64 184, !3, i64 200, !3, i64 216, !3, i64 232, !3, i64 248, !3, i64 312, !3, i64 376, !3, i64 440, !6, i64 504, !6, i64 508, !8, i64 512, !8, i64 516, !6, i64 520, !13, i64 524, !15, i64 632, !16, i64 748, !8, i64 764, !17, i64 768, !19, i64 824, !8, i64 836, !8, i64 840, !8, i64 844, !8, i64 848, !8, i64 852, !8, i64 856, !8, i64 860, !8, i64 864, !8, i64 868, !8, i64 872, !8, i64 876, !8, i64 880, !8, i64 884, !8, i64 888, !8, i64 892, !8, i64 896, !8, i64 900, !6, i64 904, !6, i64 908, !8, i64 912, !8, i64 916, !8, i64 920, !8, i64 924, !8, i64 928, !6, i64 932, !6, i64 936, !6, i64 940}
!12 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32}
!13 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !14, i64 72, !14, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !3, i64 92, !8, i64 100, !8, i64 104}
!14 = !{!"float", !3, i64 0}
!15 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !14, i64 24, !14, i64 28, !14, i64 32, !8, i64 36, !8, i64 40, !14, i64 44, !14, i64 48, !14, i64 52, !8, i64 56, !8, i64 60, !14, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !6, i64 80, !8, i64 84, !6, i64 88, !14, i64 92, !14, i64 96, !14, i64 100, !6, i64 104, !8, i64 108, !6, i64 112}
!16 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12}
!17 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !18, i64 40, !18, i64 48}
!18 = !{!"long long", !3, i64 0}
!19 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8}
!20 = !{!"", !8, i64 0, !8, i64 4, !6, i64 8, !8, i64 12, !6, i64 16, !21, i64 20}
!21 = !{!"bs_s", !6, i64 0, !6, i64 4, !6, i64 8, !8, i64 12, !8, i64 16, !8, i64 20}
!22 = !{!"", !6, i64 0, !6, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !3, i64 52, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !3, i64 80, !3, i64 88, !8, i64 344, !3, i64 352, !8, i64 4960, !8, i64 4964, !3, i64 4968, !8, i64 5096, !8, i64 5100, !8, i64 5104, !8, i64 5108, !8, i64 5112, !8, i64 5116, !8, i64 5120, !8, i64 5124}
!23 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !8, i64 64, !3, i64 68, !3, i64 1092}
!24 = !{!"", !6, i64 0, !3, i64 4, !6, i64 12, !3, i64 16, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !18, i64 128, !18, i64 136, !3, i64 144, !18, i64 160, !18, i64 168, !8, i64 176, !8, i64 180}
!25 = !{!"", !3, i64 0, !3, i64 96, !3, i64 128, !3, i64 1664}
!26 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !3, i64 32, !3, i64 40, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !3, i64 108, !3, i64 116, !3, i64 124, !3, i64 136, !3, i64 148, !3, i64 156, !3, i64 164, !3, i64 176, !3, i64 192, !3, i64 200, !3, i64 212, !8, i64 224, !3, i64 228, !3, i64 244, !8, i64 308, !8, i64 312, !8, i64 316, !3, i64 320, !8, i64 328, !8, i64 332, !8, i64 336, !3, i64 340, !8, i64 348, !8, i64 352, !8, i64 356, !8, i64 360, !8, i64 364, !8, i64 368, !6, i64 372, !8, i64 376, !8, i64 380, !8, i64 384, !8, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !6, i64 408, !6, i64 412, !6, i64 416, !6, i64 420, !3, i64 424, !3, i64 432, !3, i64 440, !3, i64 448, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !3, i64 720, !8, i64 784, !8, i64 788, !3, i64 792, !8, i64 796, !8, i64 800, !8, i64 804, !8, i64 808, !8, i64 812, !8, i64 816, !8, i64 820, !8, i64 824, !8, i64 828, !8, i64 832, !8, i64 836, !27, i64 896, !28, i64 9472, !8, i64 10336, !8, i64 10340, !8, i64 10344, !8, i64 10348, !8, i64 10352, !8, i64 10356, !8, i64 10360, !8, i64 10364, !3, i64 10368, !8, i64 10384, !8, i64 10388, !3, i64 10392, !6, i64 11416, !3, i64 11420, !6, i64 11932, !3, i64 11936, !8, i64 11956, !3, i64 11960}
!27 = !{!"", !3, i64 0, !3, i64 768, !3, i64 2496, !3, i64 2752, !3, i64 3008, !3, i64 3392, !3, i64 3872, !3, i64 3888, !3, i64 3904, !3, i64 4416, !3, i64 4928, !3, i64 5056, !8, i64 5128, !8, i64 5132, !3, i64 5136, !3, i64 5148, !3, i64 5160, !3, i64 5172, !3, i64 5180, !3, i64 8252, !3, i64 8380, !3, i64 8508}
!28 = !{!"", !3, i64 0, !3, i64 40, !3, i64 160, !3, i64 240, !3, i64 560, !3, i64 720, !3, i64 760, !3, i64 792, !8, i64 800, !3, i64 804, !8, i64 808, !8, i64 812, !8, i64 816, !8, i64 820, !3, i64 824, !3, i64 848, !6, i64 856}
!29 = !{!"", !3, i64 0, !3, i64 16, !3, i64 40, !3, i64 64, !3, i64 136, !3, i64 160, !3, i64 184, !3, i64 208, !3, i64 232, !3, i64 256, !3, i64 280, !3, i64 304, !3, i64 760, !3, i64 1032, !3, i64 1048, !3, i64 2072, !3, i64 2120, !3, i64 2536, !3, i64 2560, !3, i64 2568, !3, i64 2576, !30, i64 2584}
!30 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !3, i64 12, !8, i64 88, !8, i64 92, !8, i64 96, !3, i64 100, !3, i64 108, !3, i64 364, !3, i64 432, !3, i64 456, !3, i64 664, !3, i64 676, !3, i64 688, !31, i64 712, !8, i64 720}
!31 = !{!"double", !3, i64 0}
!32 = !{!"", !3, i64 0, !3, i64 32, !3, i64 64, !3, i64 96, !3, i64 124, !3, i64 140, !3, i64 172, !3, i64 204, !3, i64 236, !3, i64 264, !3, i64 292, !6, i64 324, !6, i64 328, !3, i64 332, !3, i64 336, !3, i64 352, !3, i64 368, !6, i64 384, !6, i64 388, !6, i64 392, !3, i64 396, !3, i64 424, !3, i64 452, !3, i64 480, !3, i64 508, !6, i64 536, !6, i64 540, !6, i64 544, !6, i64 548, !6, i64 552, !6, i64 556, !6, i64 560, !6, i64 564, !6, i64 568, !6, i64 572, !6, i64 576, !6, i64 580, !6, i64 584, !6, i64 588, !6, i64 592, !6, i64 596, !6, i64 600, !6, i64 604, !6, i64 608, !6, i64 612, !6, i64 616, !6, i64 620, !6, i64 624, !6, i64 628}
!33 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !3, i64 12, !3, i64 60, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128, !6, i64 132, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !6, i64 180, !6, i64 184, !6, i64 188, !6, i64 192, !6, i64 196, !6, i64 200, !6, i64 204, !6, i64 208, !6, i64 212}
!34 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64}
!35 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20}
!36 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !3, i64 64, !6, i64 120, !6, i64 124, !3, i64 128, !6, i64 180, !6, i64 184, !6, i64 188, !6, i64 192, !6, i64 196, !6, i64 200, !6, i64 204, !6, i64 208}
!37 = !{!"", !3, i64 0, !3, i64 8, !6, i64 16, !6, i64 20, !3, i64 24, !3, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80}
!38 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!39 = !{!40, !8, i64 200}
!40 = !{!"x264_frame", !6, i64 0, !8, i64 4, !3, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !14, i64 64, !18, i64 72, !18, i64 80, !18, i64 88, !6, i64 96, !8, i64 100, !8, i64 104, !18, i64 112, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !3, i64 136, !3, i64 137, !3, i64 138, !14, i64 140, !14, i64 144, !14, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !3, i64 164, !3, i64 176, !3, i64 188, !8, i64 200, !8, i64 204, !8, i64 208, !3, i64 212, !3, i64 224, !3, i64 236, !3, i64 284, !3, i64 332, !6, i64 348, !3, i64 352, !3, i64 368, !6, i64 384, !3, i64 400, !3, i64 2704, !8, i64 2768, !6, i64 2772, !6, i64 2776, !6, i64 2780, !3, i64 2784, !6, i64 2792, !3, i64 2796, !6, i64 2932, !6, i64 2936, !3, i64 2940, !3, i64 4236, !3, i64 4372, !3, i64 4380, !3, i64 4388, !3, i64 4516, !3, i64 4520, !3, i64 5816, !8, i64 7112, !3, i64 7116, !3, i64 7188, !6, i64 8484, !6, i64 8488, !6, i64 8492, !6, i64 8496, !6, i64 8500, !6, i64 8504, !8, i64 8508, !6, i64 8512, !6, i64 8516, !6, i64 8520, !8, i64 8524, !3, i64 8528, !3, i64 8600, !3, i64 8616, !41, i64 8640, !3, i64 8672, !3, i64 8924, !3, i64 9928, !18, i64 11936, !18, i64 11944, !8, i64 11952, !8, i64 11956, !8, i64 11960, !8, i64 11964, !8, i64 11968, !8, i64 11972, !14, i64 11976, !8, i64 11980, !8, i64 11984, !8, i64 11988, !8, i64 11992, !42, i64 11996, !6, i64 12008, !6, i64 12012, !6, i64 12016}
!41 = !{!"x264_hrd_t", !31, i64 0, !31, i64 8, !31, i64 16, !31, i64 24}
!42 = !{!"x264_sei_t", !8, i64 0, !6, i64 4, !6, i64 8}
!43 = !{!40, !8, i64 204}
!44 = !{!40, !8, i64 208}
!45 = !{!10, !8, i64 116}
!46 = !{!47, !47, i64 0}
!47 = !{!"short", !3, i64 0}
!48 = !{!33, !6, i64 0}
!49 = !{!33, !6, i64 4}
!50 = !{!33, !6, i64 8}
!51 = !{!33, !6, i64 184}
!52 = !{!33, !6, i64 188}
!53 = !{!33, !6, i64 192}
!54 = !{!33, !6, i64 196}
!55 = !{!33, !6, i64 88}
!56 = !{!33, !6, i64 92}
!57 = !{!33, !6, i64 96}
!58 = !{!33, !6, i64 100}
!59 = !{!33, !6, i64 104}
!60 = !{!33, !6, i64 108}
!61 = !{!33, !6, i64 112}
!62 = !{!33, !6, i64 116}
!63 = !{!33, !6, i64 120}
!64 = !{!33, !6, i64 124}
!65 = !{!33, !6, i64 128}
!66 = !{!33, !6, i64 132}
!67 = !{!33, !6, i64 140}
!68 = !{!33, !6, i64 144}
!69 = !{!33, !6, i64 148}
!70 = !{!33, !6, i64 152}
!71 = !{!33, !6, i64 156}
!72 = !{!33, !6, i64 160}
!73 = !{!33, !6, i64 180}
!74 = !{!33, !6, i64 164}
!75 = !{!33, !6, i64 168}
!76 = !{!33, !6, i64 172}
!77 = !{!33, !6, i64 176}
!78 = !{!33, !6, i64 200}
!79 = !{!33, !6, i64 204}
!80 = !{!33, !6, i64 208}
!81 = !{!33, !6, i64 212}
!82 = !{!83, !6, i64 44}
!83 = !{!"x264_weight_t", !3, i64 0, !3, i64 16, !8, i64 32, !8, i64 36, !8, i64 40, !6, i64 44}
!84 = !{!83, !8, i64 32}
!85 = !{!83, !8, i64 36}
!86 = !{!83, !8, i64 40}
!87 = !{!10, !6, i64 37848}
!88 = !{!14, !14, i64 0}
!89 = !{!10, !8, i64 18772}
!90 = !{!10, !8, i64 18752}
!91 = !{!10, !8, i64 18756}
!92 = !{!40, !6, i64 348}
!93 = !{!10, !6, i64 37796}
!94 = !{!10, !6, i64 36744}
!95 = !{!96, !8, i64 264}
!96 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !16, i64 72, !8, i64 88, !97, i64 92, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !3, i64 280}
!97 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !98, i64 84, !8, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164}
!98 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44}
!99 = !{!10, !8, i64 15348}
!100 = !{!10, !6, i64 37828}
!101 = !{!10, !6, i64 37836}
!102 = !{!10, !6, i64 37832}
!103 = !{!10, !6, i64 37840}
