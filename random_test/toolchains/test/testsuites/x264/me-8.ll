; ModuleID = 'encoder/me.c'
source_filename = "encoder/me.c"
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

%struct.anon.18 = type { i8, i8 }
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
%struct.x264_me_t = type { i32, i16*, i32, i32, %struct.x264_weight_t*, [12 x i8*], i8*, [3 x i8*], i16*, [3 x i32], [2 x i16], i32, i32, [2 x i16], [12 x i8] }
%struct.mvsad_t = type { i32, [2 x i16] }

@x264_pixel_size = internal unnamed_addr constant [12 x %struct.anon.18] [%struct.anon.18 { i8 16, i8 16 }, %struct.anon.18 { i8 16, i8 8 }, %struct.anon.18 { i8 8, i8 16 }, %struct.anon.18 { i8 8, i8 8 }, %struct.anon.18 { i8 8, i8 4 }, %struct.anon.18 { i8 4, i8 8 }, %struct.anon.18 { i8 4, i8 4 }, %struct.anon.18 { i8 4, i8 16 }, %struct.anon.18 { i8 4, i8 2 }, %struct.anon.18 { i8 2, i8 8 }, %struct.anon.18 { i8 2, i8 4 }, %struct.anon.18 { i8 2, i8 2 }], align 1
@hex2 = internal unnamed_addr constant [8 x [2 x i8]] [[2 x i8] c"\FF\FE", [2 x i8] c"\FE\00", [2 x i8] c"\FF\02", [2 x i8] c"\01\02", [2 x i8] c"\02\00", [2 x i8] c"\01\FE", [2 x i8] c"\FF\FE", [2 x i8] c"\FE\00"], align 1
@mod6m1 = internal unnamed_addr constant [8 x i8] c"\05\00\01\02\03\04\05\00", align 1
@square1 = internal unnamed_addr constant [9 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] c"\00\FF", [2 x i8] c"\00\01", [2 x i8] c"\FF\00", [2 x i8] c"\01\00", [2 x i8] c"\FF\FF", [2 x i8] c"\FF\01", [2 x i8] c"\01\FF", [2 x i8] c"\01\01"], align 1
@x264_8_me_search_ref.pixel_size_shift = internal unnamed_addr constant [7 x i8] c"\00\01\01\02\03\03\04", align 1
@x264_8_me_search_ref.range_mul = internal unnamed_addr constant [4 x [4 x i8]] [[4 x i8] c"\03\03\04\04", [4 x i8] c"\03\04\04\04", [4 x i8] c"\04\04\04\05", [4 x i8] c"\04\04\05\06"], align 1
@x264_8_me_search_ref.hex4 = internal unnamed_addr constant [16 x [2 x i8]] [[2 x i8] c"\00\FC", [2 x i8] c"\00\04", [2 x i8] c"\FE\FD", [2 x i8] c"\02\FD", [2 x i8] c"\FC\FE", [2 x i8] c"\04\FE", [2 x i8] c"\FC\FF", [2 x i8] c"\04\FF", [2 x i8] c"\FC\00", [2 x i8] c"\04\00", [2 x i8] c"\FC\01", [2 x i8] c"\04\01", [2 x i8] c"\FC\02", [2 x i8] c"\04\02", [2 x i8] c"\FE\03", [2 x i8] c"\02\03"], align 1
@x264_zero = external dso_local global [1024 x i8], align 1
@subpel_iterations = internal unnamed_addr constant [12 x [4 x i8]] [[4 x i8] zeroinitializer, [4 x i8] c"\01\01\00\00", [4 x i8] c"\00\01\01\00", [4 x i8] c"\00\02\01\00", [4 x i8] c"\00\02\01\01", [4 x i8] c"\00\02\01\02", [4 x i8] c"\00\00\02\02", [4 x i8] c"\00\00\02\02", [4 x i8] c"\00\00\04\0A", [4 x i8] c"\00\00\04\0A", [4 x i8] c"\00\00\04\0A", [4 x i8] c"\00\00\04\0A"], align 1
@x264_8_iter_kludge = hidden local_unnamed_addr global i32 0, align 4
@x264_scan8 = internal unnamed_addr constant [51 x i8] c"\0C\0D\14\15\0E\0F\16\17\1C\1D$%\1E\1F&'45<=67>?DELMFGNO\\]de^_fglmtunovw\00(P", align 1
@block_idx_xy_fdec = internal unnamed_addr constant [16 x i16] [i16 0, i16 4, i16 128, i16 132, i16 8, i16 12, i16 136, i16 140, i16 256, i16 260, i16 384, i16 388, i16 264, i16 268, i16 392, i16 396], align 2
@block_idx_x = internal unnamed_addr constant [16 x i8] c"\00\01\00\01\02\03\02\03\00\01\00\01\02\03\02\03", align 1
@block_idx_y = internal unnamed_addr constant [16 x i8] c"\00\00\01\01\00\00\01\01\02\02\03\03\02\02\03\03", align 1
@me_refine_bidir.dia4d = internal unnamed_addr constant [33 x [4 x i8]] [[4 x i8] zeroinitializer, [4 x i8] c"\00\00\00\01", [4 x i8] c"\00\00\00\FF", [4 x i8] c"\00\00\01\00", [4 x i8] c"\00\00\FF\00", [4 x i8] c"\00\01\00\00", [4 x i8] c"\00\FF\00\00", [4 x i8] c"\01\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\00\00\01\01", [4 x i8] c"\00\00\FF\FF", [4 x i8] c"\00\01\01\00", [4 x i8] c"\00\FF\FF\00", [4 x i8] c"\01\01\00\00", [4 x i8] c"\FF\FF\00\00", [4 x i8] c"\01\00\00\01", [4 x i8] c"\FF\00\00\FF", [4 x i8] c"\00\01\00\01", [4 x i8] c"\00\FF\00\FF", [4 x i8] c"\01\00\01\00", [4 x i8] c"\FF\00\FF\00", [4 x i8] c"\00\00\FF\01", [4 x i8] c"\00\00\01\FF", [4 x i8] c"\00\FF\01\00", [4 x i8] c"\00\01\FF\00", [4 x i8] c"\FF\01\00\00", [4 x i8] c"\01\FF\00\00", [4 x i8] c"\01\00\00\FF", [4 x i8] c"\FF\00\00\01", [4 x i8] c"\00\FF\00\01", [4 x i8] c"\00\01\00\FF", [4 x i8] c"\FF\00\01\00", [4 x i8] c"\01\00\FF\00"], align 4
@x264_8_cache_mv_func_table = external dso_local local_unnamed_addr global [10 x void (i8*, i32)*], align 4
@x264_8_cache_mvd_func_table = external dso_local local_unnamed_addr global [10 x void (i8*, i32)*], align 4

; Function Attrs: nounwind
define hidden void @x264_8_me_search_ref(%struct.x264_t* readonly %h, %struct.x264_me_t* %m, [2 x i16]* nocapture readonly %mvc, i32 %i_mvc, i32* %p_halfpel_thresh) local_unnamed_addr #0 {
entry:
  %pix = alloca [256 x i8], align 32
  %mvc_temp = alloca [16 x [2 x i16]], align 8
  %costs = alloca [16 x i32], align 16
  %stride2 = alloca i32, align 4
  %stride295 = alloca i32, align 4
  %enc_dc = alloca [4 x i32], align 16
  %sads = alloca [4 x i32], align 16
  %i_pixel = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 0
  %0 = load i32, i32* %i_pixel, align 64, !tbaa !2
  %w = getelementptr inbounds [12 x %struct.anon.18], [12 x %struct.anon.18]* @x264_pixel_size, i32 0, i32 %0, i32 0
  %1 = load i8, i8* %w, align 1, !tbaa !8
  %conv = zext i8 %1 to i32
  %h3 = getelementptr inbounds [12 x %struct.anon.18], [12 x %struct.anon.18]* @x264_pixel_size, i32 0, i32 %0, i32 1
  %2 = load i8, i8* %h3, align 1, !tbaa !10
  %conv4 = zext i8 %2 to i32
  %arrayidx7 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 9, i32 0
  %3 = load i32, i32* %arrayidx7, align 8, !tbaa !11
  %i_me_range8 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 51, i32 8
  %4 = load i32, i32* %i_me_range8, align 4, !tbaa !12
  %arrayidx10 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 7, i32 0
  %5 = load i8*, i8** %arrayidx10, align 8, !tbaa !42
  %p_fref_w11 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 6
  %6 = load i8*, i8** %p_fref_w11, align 4, !tbaa !43
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %pix, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %7) #3
  %8 = bitcast [16 x [2 x i16]]* %mvc_temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %8) #3
  %9 = bitcast [16 x i32]* %costs to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %9) #3
  %arrayidx13 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 34, i32 0, i32 0
  %10 = load i16, i16* %arrayidx13, align 64, !tbaa !44
  %conv14 = sext i16 %10 to i32
  %arrayidx18 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 34, i32 0, i32 1
  %11 = load i16, i16* %arrayidx18, align 2, !tbaa !44
  %conv19 = sext i16 %11 to i32
  %arrayidx23 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 34, i32 1, i32 0
  %12 = load i16, i16* %arrayidx23, align 4, !tbaa !44
  %conv24 = sext i16 %12 to i32
  %arrayidx28 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 34, i32 1, i32 1
  %13 = load i16, i16* %arrayidx28, align 2, !tbaa !44
  %conv29 = sext i16 %13 to i32
  %sub = shl nsw i32 %conv14, 16
  %shl = sub i32 0, %sub
  %sub30 = sub nsw i32 0, %conv19
  %and = and i32 %sub30, 32767
  %or = or i32 %and, %shl
  %shl31 = shl nsw i32 %conv24, 16
  %and32 = and i32 %conv29, 32767
  %or33 = or i32 %shl31, %and32
  %or34 = or i32 %or33, 32768
  %p_cost_mv = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 1
  %14 = load i16*, i16** %p_cost_mv, align 4, !tbaa !46
  %arrayidx35 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 10, i32 0
  %15 = load i16, i16* %arrayidx35, align 4, !tbaa !44
  %conv36 = sext i16 %15 to i32
  %idx.neg = sub nsw i32 0, %conv36
  %add.ptr = getelementptr inbounds i16, i16* %14, i32 %idx.neg
  %arrayidx39 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 10, i32 1
  %16 = load i16, i16* %arrayidx39, align 2, !tbaa !44
  %conv40 = sext i16 %16 to i32
  %idx.neg41 = sub nsw i32 0, %conv40
  %add.ptr42 = getelementptr inbounds i16, i16* %14, i32 %idx.neg41
  %i_subpel_refine = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 16
  %17 = load i32, i32* %i_subpel_refine, align 8, !tbaa !47
  %cmp = icmp sgt i32 %17, 2
  br i1 %cmp, label %if.then, label %if.else205

if.then:                                          ; preds = %entry
  %mul = shl nsw i32 %conv14, 2
  %mul48 = shl nsw i32 %conv24, 2
  %cmp.i = icmp sgt i32 %mul, %conv36
  %cmp1.i = icmp slt i32 %mul48, %conv36
  %cond.i = select i1 %cmp1.i, i32 %mul48, i32 %conv36
  %cond5.i = select i1 %cmp.i, i32 %mul, i32 %cond.i
  %mul52 = shl nsw i32 %conv19, 2
  %mul53 = shl nsw i32 %conv29, 2
  %cmp.i6093 = icmp sgt i32 %mul52, %conv40
  %cmp1.i6094 = icmp slt i32 %mul53, %conv40
  %cond.i6095 = select i1 %cmp1.i6094, i32 %mul53, i32 %conv40
  %cond5.i6096 = select i1 %cmp.i6093, i32 %mul52, i32 %cond.i6095
  %and.i6097 = and i32 %cond5.i, 65535
  %shl.i6098 = shl i32 %cond5.i6096, 16
  %add.i6099 = or i32 %shl.i6098, %and.i6097
  %add = add nsw i32 %cond5.i, 2
  %shr = ashr i32 %add, 2
  %add56 = add nsw i32 %cond5.i6096, 2
  %shr57 = ashr i32 %add56, 2
  %18 = bitcast i32* %stride2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #3
  store i32 16, i32* %stride2, align 4, !tbaa !11
  %get_ref = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 93, i32 1
  %19 = load i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)*, i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)** %get_ref, align 4, !tbaa !48
  %arraydecay58 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 5, i32 0
  %weight = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 4
  %20 = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight, align 16, !tbaa !49
  %call60 = call i8* %19(i8* nonnull %7, i32* nonnull %stride2, i8** nonnull %arraydecay58, i32 %3, i32 %cond5.i, i32 %cond5.i6096, i32 %conv, i32 %conv4, %struct.x264_weight_t* %20) #3
  %arrayidx61 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 92, i32 7, i32 %0
  %21 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx61, align 4, !tbaa !42
  %22 = load i32, i32* %stride2, align 4, !tbaa !11
  %call62 = call i32 %21(i8* %5, i32 16, i8* %call60, i32 %22) #3
  %arrayidx63 = getelementptr inbounds i16, i16* %add.ptr, i32 %cond5.i
  %23 = load i16, i16* %arrayidx63, align 2, !tbaa !44
  %conv64 = zext i16 %23 to i32
  %add65 = add nsw i32 %call62, %conv64
  %arrayidx66 = getelementptr inbounds i16, i16* %add.ptr42, i32 %cond5.i6096
  %24 = load i16, i16* %arrayidx66, align 2, !tbaa !44
  %conv67 = zext i16 %24 to i32
  %add68 = add nsw i32 %add65, %conv67
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #3
  %cmp69 = icmp sgt i32 %i_mvc, 0
  br i1 %cmp69, label %if.then71, label %if.end140

if.then71:                                        ; preds = %if.then
  %add.ptr73 = getelementptr inbounds [16 x [2 x i16]], [16 x [2 x i16]]* %mvc_temp, i32 0, i32 2
  %25 = load i16, i16* %arrayidx13, align 2, !tbaa !44
  %conv.i = sext i16 %25 to i32
  %shl.i6100 = shl nsw i32 %conv.i, 2
  %26 = load i16, i16* %arrayidx18, align 2, !tbaa !44
  %conv4.i = sext i16 %26 to i32
  %shl5.i = shl nsw i32 %conv4.i, 2
  %27 = load i16, i16* %arrayidx23, align 2, !tbaa !44
  %conv9.i = sext i16 %27 to i32
  %shl10.i = shl nsw i32 %conv9.i, 2
  %28 = load i16, i16* %arrayidx28, align 2, !tbaa !44
  %conv14.i = sext i16 %28 to i32
  %shl15.i = shl nsw i32 %conv14.i, 2
  br label %for.body.i

for.body.i:                                       ; preds = %if.then71, %cleanup.i
  %cnt.074.i = phi i32 [ %cnt.1.i, %cleanup.i ], [ 0, %if.then71 ]
  %i.073.i = phi i32 [ %inc40.i, %cleanup.i ], [ 0, %if.then71 ]
  %arrayidx17.i = getelementptr inbounds [2 x i16], [2 x i16]* %mvc, i32 %i.073.i
  %i18.i = bitcast [2 x i16]* %arrayidx17.i to i32*
  %29 = load i32, i32* %i18.i, align 4, !tbaa !50
  %sext.i = shl i32 %29, 16
  %conv21.i = ashr exact i32 %sext.i, 16
  %arrayidx23.i = getelementptr inbounds [2 x i16], [2 x i16]* %mvc, i32 %i.073.i, i32 1
  %30 = load i16, i16* %arrayidx23.i, align 2, !tbaa !44
  %conv24.i = sext i16 %30 to i32
  %tobool.i = icmp eq i32 %29, 0
  %cmp25.i = icmp eq i32 %29, %add.i6099
  %or.cond.i = or i1 %tobool.i, %cmp25.i
  br i1 %or.cond.i, label %cleanup.i, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  %cmp.i.i = icmp sgt i32 %shl.i6100, %conv21.i
  %cmp1.i.i = icmp slt i32 %shl10.i, %conv21.i
  %cond.i.i = select i1 %cmp1.i.i, i32 %shl10.i, i32 %conv21.i
  %cond5.i.i = select i1 %cmp.i.i, i32 %shl.i6100, i32 %cond.i.i
  %conv29.i = trunc i32 %cond5.i.i to i16
  %arrayidx31.i = getelementptr inbounds [2 x i16], [2 x i16]* %add.ptr73, i32 %cnt.074.i, i32 0
  store i16 %conv29.i, i16* %arrayidx31.i, align 4, !tbaa !44
  %cmp.i68.i = icmp sgt i32 %shl5.i, %conv24.i
  %cmp1.i69.i = icmp slt i32 %shl15.i, %conv24.i
  %cond.i70.i = select i1 %cmp1.i69.i, i32 %shl15.i, i32 %conv24.i
  %cond5.i71.i = select i1 %cmp.i68.i, i32 %shl5.i, i32 %cond.i70.i
  %conv35.i = trunc i32 %cond5.i71.i to i16
  %arrayidx37.i = getelementptr inbounds [2 x i16], [2 x i16]* %add.ptr73, i32 %cnt.074.i, i32 1
  store i16 %conv35.i, i16* %arrayidx37.i, align 2, !tbaa !44
  %inc.i = add nsw i32 %cnt.074.i, 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %for.body.i
  %cnt.1.i = phi i32 [ %inc.i, %if.end.i ], [ %cnt.074.i, %for.body.i ]
  %inc40.i = add nuw nsw i32 %i.073.i, 1
  %exitcond.i = icmp eq i32 %inc40.i, %i_mvc
  br i1 %exitcond.i, label %x264_predictor_clip.exit, label %for.body.i

x264_predictor_clip.exit:                         ; preds = %cleanup.i
  %cmp78 = icmp sgt i32 %cnt.1.i, 0
  br i1 %cmp78, label %if.then80, label %if.end140

if.then80:                                        ; preds = %x264_predictor_clip.exit
  %arraydecay82 = getelementptr inbounds [16 x [2 x i16]], [16 x [2 x i16]]* %mvc_temp, i32 0, i32 1, i32 0
  %i83 = bitcast i16* %arraydecay82 to i32*
  store i32 %add.i6099, i32* %i83, align 4, !tbaa !50
  %shl84 = shl i32 %add68, 4
  %31 = bitcast i32* %stride295 to i8*
  br label %do.body85

do.body85:                                        ; preds = %do.body85, %if.then80
  %i.0 = phi i32 [ 1, %if.then80 ], [ %add86, %do.body85 ]
  %bpred_cost.0 = phi i32 [ %shl84, %if.then80 ], [ %spec.select, %do.body85 ]
  %add86 = add nuw nsw i32 %i.0, 1
  %arrayidx88 = getelementptr inbounds [16 x [2 x i16]], [16 x [2 x i16]]* %mvc_temp, i32 0, i32 %add86, i32 0
  %32 = load i16, i16* %arrayidx88, align 4, !tbaa !44
  %conv89 = sext i16 %32 to i32
  %arrayidx92 = getelementptr inbounds [16 x [2 x i16]], [16 x [2 x i16]]* %mvc_temp, i32 0, i32 %add86, i32 1
  %33 = load i16, i16* %arrayidx92, align 2, !tbaa !44
  %conv93 = sext i16 %33 to i32
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %31) #3
  store i32 16, i32* %stride295, align 4, !tbaa !11
  %34 = load i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)*, i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)** %get_ref, align 4, !tbaa !48
  %35 = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight, align 16, !tbaa !49
  %call104 = call i8* %34(i8* nonnull %7, i32* nonnull %stride295, i8** nonnull %arraydecay58, i32 %3, i32 %conv89, i32 %conv93, i32 %conv, i32 %conv4, %struct.x264_weight_t* %35) #3
  %36 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx61, align 4, !tbaa !42
  %37 = load i32, i32* %stride295, align 4, !tbaa !11
  %call108 = call i32 %36(i8* %5, i32 16, i8* %call104, i32 %37) #3
  %arrayidx109 = getelementptr inbounds i16, i16* %add.ptr, i32 %conv89
  %38 = load i16, i16* %arrayidx109, align 2, !tbaa !44
  %conv110 = zext i16 %38 to i32
  %add111 = add nsw i32 %call108, %conv110
  %arrayidx112 = getelementptr inbounds i16, i16* %add.ptr42, i32 %conv93
  %39 = load i16, i16* %arrayidx112, align 2, !tbaa !44
  %conv113 = zext i16 %39 to i32
  %add114 = add nsw i32 %add111, %conv113
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %31) #3
  %shl117 = shl i32 %add114, 4
  %add118 = add nsw i32 %shl117, %i.0
  %cmp119 = icmp slt i32 %add118, %bpred_cost.0
  %spec.select = select i1 %cmp119, i32 %add118, i32 %bpred_cost.0
  %exitcond6350 = icmp eq i32 %i.0, %cnt.1.i
  br i1 %exitcond6350, label %do.end127, label %do.body85

do.end127:                                        ; preds = %do.body85
  %and128 = and i32 %spec.select, 15
  %add129 = add nuw nsw i32 %and128, 1
  %arrayidx131 = getelementptr inbounds [16 x [2 x i16]], [16 x [2 x i16]]* %mvc_temp, i32 0, i32 %add129, i32 0
  %40 = load i16, i16* %arrayidx131, align 4, !tbaa !44
  %conv132 = sext i16 %40 to i32
  %arrayidx136 = getelementptr inbounds [16 x [2 x i16]], [16 x [2 x i16]]* %mvc_temp, i32 0, i32 %add129, i32 1
  %41 = load i16, i16* %arrayidx136, align 2, !tbaa !44
  %conv137 = sext i16 %41 to i32
  %shr138 = ashr i32 %spec.select, 4
  %.pre = add nsw i32 %conv132, 2
  %.pre6352 = ashr i32 %.pre, 2
  %.pre6353 = add nsw i32 %conv137, 2
  %.pre6354 = ashr i32 %.pre6353, 2
  %.pre6355 = and i32 %conv132, 65535
  %.pre6356 = shl nsw i32 %conv137, 16
  %.pre6357 = or i32 %.pre6355, %.pre6356
  br label %if.end140

if.end140:                                        ; preds = %x264_predictor_clip.exit, %do.end127, %if.then
  %add.i6103.pre-phi = phi i32 [ %add.i6099, %x264_predictor_clip.exit ], [ %.pre6357, %do.end127 ], [ %add.i6099, %if.then ]
  %shr144.pre-phi = phi i32 [ %shr57, %x264_predictor_clip.exit ], [ %.pre6354, %do.end127 ], [ %shr57, %if.then ]
  %add143.pre-phi = phi i32 [ %add56, %x264_predictor_clip.exit ], [ %.pre6353, %do.end127 ], [ %add56, %if.then ]
  %shr142.pre-phi = phi i32 [ %shr, %x264_predictor_clip.exit ], [ %.pre6352, %do.end127 ], [ %shr, %if.then ]
  %add141.pre-phi = phi i32 [ %add, %x264_predictor_clip.exit ], [ %.pre, %do.end127 ], [ %add, %if.then ]
  %bpred_cost.3 = phi i32 [ %add68, %x264_predictor_clip.exit ], [ %shr138, %do.end127 ], [ %add68, %if.then ]
  %and146 = and i32 %add.i6103.pre-phi, 196611
  %tobool = icmp eq i32 %and146, 0
  br i1 %tobool, label %if.end171, label %do.body148

do.body148:                                       ; preds = %if.end140
  %42 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx61, align 4, !tbaa !42
  %mul153 = mul nsw i32 %shr144.pre-phi, %3
  %add154 = add nsw i32 %mul153, %shr142.pre-phi
  %arrayidx155 = getelementptr inbounds i8, i8* %6, i32 %add154
  %call156 = call i32 %42(i8* %5, i32 16, i8* %arrayidx155, i32 %3) #3
  %mul157 = and i32 %add141.pre-phi, -4
  %arrayidx158 = getelementptr inbounds i16, i16* %add.ptr, i32 %mul157
  %43 = load i16, i16* %arrayidx158, align 2, !tbaa !44
  %conv159 = zext i16 %43 to i32
  %mul160 = and i32 %add143.pre-phi, -4
  %arrayidx161 = getelementptr inbounds i16, i16* %add.ptr42, i32 %mul160
  %44 = load i16, i16* %arrayidx161, align 2, !tbaa !44
  %conv162 = zext i16 %44 to i32
  %add163 = add i32 %call156, %conv159
  %add164 = add i32 %add163, %conv162
  %cmp165 = icmp slt i32 %add164, 268435456
  %spec.select5942 = select i1 %cmp165, i32 %add164, i32 268435456
  br label %if.end171

if.end171:                                        ; preds = %if.end140, %do.body148
  %bcost.1 = phi i32 [ %spec.select5942, %do.body148 ], [ %bpred_cost.3, %if.end140 ]
  %tobool172 = icmp eq i32 %add.i6099, 0
  br i1 %tobool172, label %if.else199, label %if.then173

if.then173:                                       ; preds = %if.end171
  %or174 = or i32 %shr142.pre-phi, %shr144.pre-phi
  %tobool175 = icmp eq i32 %or174, 0
  br i1 %tobool175, label %if.end321, label %do.body177

do.body177:                                       ; preds = %if.then173
  %45 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx61, align 4, !tbaa !42
  %call185 = call i32 %45(i8* %5, i32 16, i8* %6, i32 %3) #3
  %46 = load i16, i16* %add.ptr, align 2, !tbaa !44
  %conv187 = zext i16 %46 to i32
  %47 = load i16, i16* %add.ptr42, align 2, !tbaa !44
  %conv189 = zext i16 %47 to i32
  %add190 = add i32 %call185, %conv187
  %add191 = add i32 %add190, %conv189
  %cmp192 = icmp slt i32 %add191, %bcost.1
  %spec.select5943 = select i1 %cmp192, i32 %add191, i32 %bcost.1
  %spec.select5944 = select i1 %cmp192, i32 0, i32 %shr144.pre-phi
  %spec.select5945 = select i1 %cmp192, i32 0, i32 %shr142.pre-phi
  br label %if.end321

if.else199:                                       ; preds = %if.end171
  %cmp200 = icmp slt i32 %add68, %bcost.1
  %spec.select5946 = select i1 %cmp200, i32 %add68, i32 %bcost.1
  %spec.select5947 = select i1 %cmp200, i32 0, i32 %shr144.pre-phi
  %spec.select5948 = select i1 %cmp200, i32 0, i32 %shr142.pre-phi
  br label %if.end321

if.else205:                                       ; preds = %entry
  %add209 = add nsw i32 %conv36, 2
  %shr210 = ashr i32 %add209, 2
  %cmp.i6104 = icmp slt i32 %shr210, %conv14
  %cmp1.i6105 = icmp sgt i32 %shr210, %conv24
  %cond.i6106 = select i1 %cmp1.i6105, i32 %conv24, i32 %shr210
  %cond5.i6107 = select i1 %cmp.i6104, i32 %conv14, i32 %cond.i6106
  %add215 = add nsw i32 %conv40, 2
  %shr216 = ashr i32 %add215, 2
  %cmp.i6108 = icmp slt i32 %shr216, %conv19
  %cmp1.i6109 = icmp sgt i32 %shr216, %conv29
  %cond.i6110 = select i1 %cmp1.i6109, i32 %conv29, i32 %shr216
  %cond5.i6111 = select i1 %cmp.i6108, i32 %conv19, i32 %cond.i6110
  %and.i6112 = and i32 %cond5.i6107, 65535
  %shl.i6113 = shl nsw i32 %cond5.i6111, 16
  %add.i6114 = or i32 %shl.i6113, %and.i6112
  %arrayidx221 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 92, i32 7, i32 %0
  %48 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx221, align 4, !tbaa !42
  %mul222 = mul nsw i32 %cond5.i6111, %3
  %add223 = add nsw i32 %mul222, %cond5.i6107
  %arrayidx224 = getelementptr inbounds i8, i8* %6, i32 %add223
  %call225 = tail call i32 %48(i8* %5, i32 16, i8* %arrayidx224, i32 %3) #3
  %cmp226 = icmp sgt i32 %i_mvc, 0
  br i1 %cmp226, label %for.body.lr.ph.i, label %if.end296

for.body.lr.ph.i:                                 ; preds = %if.else205
  %add.ptr231 = getelementptr inbounds [16 x [2 x i16]], [16 x [2 x i16]]* %mvc_temp, i32 0, i32 2
  br label %for.body.i6125

for.body.i6125:                                   ; preds = %cleanup.i6137, %for.body.lr.ph.i
  %cnt.060.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %cnt.1.i6135, %cleanup.i6137 ]
  %i.059.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc31.i, %cleanup.i6137 ]
  %arrayidx1.i6118 = getelementptr inbounds [2 x i16], [2 x i16]* %mvc, i32 %i.059.i, i32 0
  %49 = load i16, i16* %arrayidx1.i6118, align 2, !tbaa !44
  %conv.i6119 = sext i16 %49 to i32
  %add.i6120 = add nsw i32 %conv.i6119, 2
  %shr.i = ashr i32 %add.i6120, 2
  %arrayidx3.i6121 = getelementptr inbounds [2 x i16], [2 x i16]* %mvc, i32 %i.059.i, i32 1
  %50 = load i16, i16* %arrayidx3.i6121, align 2, !tbaa !44
  %conv4.i6122 = sext i16 %50 to i32
  %add5.i = add nsw i32 %conv4.i6122, 2
  %shr6.i = ashr i32 %add5.i, 2
  %and.i.i = and i32 %shr.i, 65535
  %shl.i.i = shl nsw i32 %shr6.i, 16
  %add.i.i = or i32 %shl.i.i, %and.i.i
  %tobool.i6123 = icmp eq i32 %add.i.i, 0
  %cmp7.i = icmp eq i32 %add.i.i, %add.i6114
  %or.cond.i6124 = or i1 %tobool.i6123, %cmp7.i
  br i1 %or.cond.i6124, label %cleanup.i6137, label %if.end.i6134

if.end.i6134:                                     ; preds = %for.body.i6125
  %51 = load i16, i16* %arrayidx13, align 2, !tbaa !44
  %conv11.i = sext i16 %51 to i32
  %52 = load i16, i16* %arrayidx23, align 2, !tbaa !44
  %conv14.i6126 = sext i16 %52 to i32
  %cmp.i54.i = icmp slt i32 %shr.i, %conv11.i
  %cmp1.i55.i = icmp sgt i32 %shr.i, %conv14.i6126
  %cond.i56.i = select i1 %cmp1.i55.i, i32 %conv14.i6126, i32 %shr.i
  %cond5.i57.i = select i1 %cmp.i54.i, i32 %conv11.i, i32 %cond.i56.i
  %conv16.i = trunc i32 %cond5.i57.i to i16
  %arrayidx18.i = getelementptr inbounds [2 x i16], [2 x i16]* %add.ptr231, i32 %cnt.060.i, i32 0
  store i16 %conv16.i, i16* %arrayidx18.i, align 4, !tbaa !44
  %53 = load i16, i16* %arrayidx18, align 2, !tbaa !44
  %conv21.i6127 = sext i16 %53 to i32
  %54 = load i16, i16* %arrayidx28, align 2, !tbaa !44
  %conv24.i6128 = sext i16 %54 to i32
  %cmp.i.i6129 = icmp slt i32 %shr6.i, %conv21.i6127
  %cmp1.i.i6130 = icmp sgt i32 %shr6.i, %conv24.i6128
  %cond.i.i6131 = select i1 %cmp1.i.i6130, i32 %conv24.i6128, i32 %shr6.i
  %cond5.i.i6132 = select i1 %cmp.i.i6129, i32 %conv21.i6127, i32 %cond.i.i6131
  %conv26.i = trunc i32 %cond5.i.i6132 to i16
  %arrayidx28.i = getelementptr inbounds [2 x i16], [2 x i16]* %add.ptr231, i32 %cnt.060.i, i32 1
  store i16 %conv26.i, i16* %arrayidx28.i, align 2, !tbaa !44
  %inc.i6133 = add nsw i32 %cnt.060.i, 1
  br label %cleanup.i6137

cleanup.i6137:                                    ; preds = %if.end.i6134, %for.body.i6125
  %cnt.1.i6135 = phi i32 [ %inc.i6133, %if.end.i6134 ], [ %cnt.060.i, %for.body.i6125 ]
  %inc31.i = add nuw nsw i32 %i.059.i, 1
  %exitcond.i6136 = icmp eq i32 %inc31.i, %i_mvc
  br i1 %exitcond.i6136, label %x264_predictor_roundclip.exit, label %for.body.i6125

x264_predictor_roundclip.exit:                    ; preds = %cleanup.i6137
  %cmp236 = icmp sgt i32 %cnt.1.i6135, 0
  br i1 %cmp236, label %if.then238, label %if.end296

if.then238:                                       ; preds = %x264_predictor_roundclip.exit
  %arraydecay242 = getelementptr inbounds [16 x [2 x i16]], [16 x [2 x i16]]* %mvc_temp, i32 0, i32 1, i32 0
  %i243 = bitcast i16* %arraydecay242 to i32*
  store i32 %add.i6114, i32* %i243, align 4, !tbaa !50
  %shl244 = shl i32 %call225, 4
  br label %do.body245

do.body245:                                       ; preds = %do.body245, %if.then238
  %i239.0 = phi i32 [ 1, %if.then238 ], [ %add247, %do.body245 ]
  %bcost.4 = phi i32 [ %shl244, %if.then238 ], [ %spec.select5949, %do.body245 ]
  %add247 = add nuw nsw i32 %i239.0, 1
  %arrayidx249 = getelementptr inbounds [16 x [2 x i16]], [16 x [2 x i16]]* %mvc_temp, i32 0, i32 %add247, i32 0
  %55 = load i16, i16* %arrayidx249, align 4, !tbaa !44
  %conv250 = sext i16 %55 to i32
  %arrayidx254 = getelementptr inbounds [16 x [2 x i16]], [16 x [2 x i16]]* %mvc_temp, i32 0, i32 %add247, i32 1
  %56 = load i16, i16* %arrayidx254, align 2, !tbaa !44
  %conv255 = sext i16 %56 to i32
  %57 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx221, align 4, !tbaa !42
  %mul259 = mul nsw i32 %3, %conv255
  %add260 = add nsw i32 %mul259, %conv250
  %arrayidx261 = getelementptr inbounds i8, i8* %6, i32 %add260
  %call262 = tail call i32 %57(i8* %5, i32 16, i8* %arrayidx261, i32 %3) #3
  %mul263 = shl nsw i32 %conv250, 2
  %arrayidx264 = getelementptr inbounds i16, i16* %add.ptr, i32 %mul263
  %58 = load i16, i16* %arrayidx264, align 2, !tbaa !44
  %conv265 = zext i16 %58 to i32
  %mul266 = shl nsw i32 %conv255, 2
  %arrayidx267 = getelementptr inbounds i16, i16* %add.ptr42, i32 %mul266
  %59 = load i16, i16* %arrayidx267, align 2, !tbaa !44
  %conv268 = zext i16 %59 to i32
  %add269 = add i32 %call262, %conv265
  %add270 = add i32 %add269, %conv268
  %shl271 = shl i32 %add270, 4
  %add272 = add nsw i32 %shl271, %i239.0
  %cmp273 = icmp slt i32 %add272, %bcost.4
  %spec.select5949 = select i1 %cmp273, i32 %add272, i32 %bcost.4
  %exitcond6351 = icmp eq i32 %i239.0, %cnt.1.i6135
  br i1 %exitcond6351, label %do.end283, label %do.body245

do.end283:                                        ; preds = %do.body245
  %and284 = and i32 %spec.select5949, 15
  %add285 = add nuw nsw i32 %and284, 1
  %arrayidx287 = getelementptr inbounds [16 x [2 x i16]], [16 x [2 x i16]]* %mvc_temp, i32 0, i32 %add285, i32 0
  %60 = load i16, i16* %arrayidx287, align 4, !tbaa !44
  %conv288 = sext i16 %60 to i32
  %arrayidx292 = getelementptr inbounds [16 x [2 x i16]], [16 x [2 x i16]]* %mvc_temp, i32 0, i32 %add285, i32 1
  %61 = load i16, i16* %arrayidx292, align 2, !tbaa !44
  %conv293 = sext i16 %61 to i32
  %shr294 = ashr i32 %spec.select5949, 4
  br label %if.end296

if.end296:                                        ; preds = %x264_predictor_roundclip.exit, %do.end283, %if.else205
  %bcost.7 = phi i32 [ %call225, %if.else205 ], [ %shr294, %do.end283 ], [ %call225, %x264_predictor_roundclip.exit ]
  %bmy.5 = phi i32 [ %cond5.i6111, %if.else205 ], [ %conv293, %do.end283 ], [ %cond5.i6111, %x264_predictor_roundclip.exit ]
  %bmx.5 = phi i32 [ %cond5.i6107, %if.else205 ], [ %conv288, %do.end283 ], [ %cond5.i6107, %x264_predictor_roundclip.exit ]
  %tobool297 = icmp eq i32 %add.i6114, 0
  br i1 %tobool297, label %if.end321, label %do.body299

do.body299:                                       ; preds = %if.end296
  %62 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx221, align 4, !tbaa !42
  %call307 = tail call i32 %62(i8* %5, i32 16, i8* %6, i32 %3) #3
  %63 = load i16, i16* %add.ptr, align 2, !tbaa !44
  %conv309 = zext i16 %63 to i32
  %64 = load i16, i16* %add.ptr42, align 2, !tbaa !44
  %conv311 = zext i16 %64 to i32
  %add312 = add i32 %call307, %conv309
  %add313 = add i32 %add312, %conv311
  %cmp314 = icmp slt i32 %add313, %bcost.7
  %spec.select5950 = select i1 %cmp314, i32 %add313, i32 %bcost.7
  %spec.select5951 = select i1 %cmp314, i32 0, i32 %bmy.5
  %spec.select5952 = select i1 %cmp314, i32 0, i32 %bmx.5
  br label %if.end321

if.end321:                                        ; preds = %if.else199, %do.body177, %if.then173, %if.end296, %do.body299
  %bpred_mv.0 = phi i32 [ 0, %do.body299 ], [ 0, %if.end296 ], [ %add.i6103.pre-phi, %if.then173 ], [ %add.i6103.pre-phi, %if.else199 ], [ %add.i6103.pre-phi, %do.body177 ]
  %pmv.0 = phi i32 [ %add.i6114, %do.body299 ], [ 0, %if.end296 ], [ %add.i6099, %if.then173 ], [ 0, %if.else199 ], [ %add.i6099, %do.body177 ]
  %pmy.0 = phi i32 [ %cond5.i6111, %do.body299 ], [ %cond5.i6111, %if.end296 ], [ %shr57, %if.then173 ], [ %shr57, %if.else199 ], [ %shr57, %do.body177 ]
  %pmx.0 = phi i32 [ %cond5.i6107, %do.body299 ], [ %cond5.i6107, %if.end296 ], [ %shr, %if.then173 ], [ %shr, %if.else199 ], [ %shr, %do.body177 ]
  %bpred_cost.4 = phi i32 [ 268435456, %do.body299 ], [ 268435456, %if.end296 ], [ %bpred_cost.3, %if.then173 ], [ %bpred_cost.3, %if.else199 ], [ %bpred_cost.3, %do.body177 ]
  %bcost.9 = phi i32 [ %spec.select5950, %do.body299 ], [ %bcost.7, %if.end296 ], [ %bcost.1, %if.then173 ], [ %spec.select5946, %if.else199 ], [ %spec.select5943, %do.body177 ]
  %bmy.7 = phi i32 [ %spec.select5951, %do.body299 ], [ %bmy.5, %if.end296 ], [ %shr144.pre-phi, %if.then173 ], [ %spec.select5947, %if.else199 ], [ %spec.select5944, %do.body177 ]
  %bmx.7 = phi i32 [ %spec.select5952, %do.body299 ], [ %bmx.5, %if.end296 ], [ %shr142.pre-phi, %if.then173 ], [ %spec.select5948, %if.else199 ], [ %spec.select5945, %do.body177 ]
  %i_me_method = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 15
  %65 = load i32, i32* %i_me_method, align 4, !tbaa !51
  switch i32 %65, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %me_hex2
    i32 2, label %sw.bb1028
    i32 3, label %sw.bb3264
    i32 4, label %sw.bb3264
  ]

sw.bb:                                            ; preds = %if.end321
  %shl323 = shl i32 %bcost.9, 4
  %arrayidx330 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 92, i32 9, i32 %0
  %mul332 = sub nsw i32 0, %3
  %arraydecay343 = getelementptr inbounds [16 x i32], [16 x i32]* %costs, i32 0, i32 0
  %arrayidx364 = getelementptr inbounds [16 x i32], [16 x i32]* %costs, i32 0, i32 1
  %arrayidx375 = getelementptr inbounds [16 x i32], [16 x i32]* %costs, i32 0, i32 2
  %arrayidx386 = getelementptr inbounds [16 x i32], [16 x i32]* %costs, i32 0, i32 3
  br label %do.body325

do.body325:                                       ; preds = %land.rhs, %sw.bb
  %i324.0 = phi i32 [ %4, %sw.bb ], [ %dec, %land.rhs ]
  %bcost.10 = phi i32 [ %shl323, %sw.bb ], [ %and438, %land.rhs ]
  %bmy.8 = phi i32 [ %bmy.7, %sw.bb ], [ %sub437, %land.rhs ]
  %bmx.8 = phi i32 [ %bmx.7, %sw.bb ], [ %sub434, %land.rhs ]
  %add.ptr326 = getelementptr inbounds i8, i8* %6, i32 %bmx.8
  %mul327 = mul nsw i32 %bmy.8, %3
  %add.ptr328 = getelementptr inbounds i8, i8* %add.ptr326, i32 %mul327
  %66 = load void (i8*, i8*, i8*, i8*, i8*, i32, i32*)*, void (i8*, i8*, i8*, i8*, i8*, i32, i32*)** %arrayidx330, align 4, !tbaa !42
  %add.ptr333 = getelementptr inbounds i8, i8* %add.ptr328, i32 %mul332
  %add.ptr336 = getelementptr inbounds i8, i8* %add.ptr328, i32 %3
  %add.ptr337 = getelementptr inbounds i8, i8* %add.ptr328, i32 -1
  %add.ptr340 = getelementptr inbounds i8, i8* %add.ptr328, i32 1
  call void %66(i8* %5, i8* %add.ptr333, i8* %add.ptr336, i8* nonnull %add.ptr337, i8* nonnull %add.ptr340, i32 %3, i32* nonnull %arraydecay343) #3
  %mul345 = shl i32 %bmx.8, 2
  %arrayidx346 = getelementptr inbounds i16, i16* %add.ptr, i32 %mul345
  %67 = load i16, i16* %arrayidx346, align 2, !tbaa !44
  %conv347 = zext i16 %67 to i32
  %add348 = shl i32 %bmy.8, 2
  %mul349 = add i32 %add348, -4
  %arrayidx350 = getelementptr inbounds i16, i16* %add.ptr42, i32 %mul349
  %68 = load i16, i16* %arrayidx350, align 2, !tbaa !44
  %conv351 = zext i16 %68 to i32
  %add352 = add nuw nsw i32 %conv351, %conv347
  %69 = load i32, i32* %arraydecay343, align 16, !tbaa !11
  %add354 = add nsw i32 %add352, %69
  store i32 %add354, i32* %arraydecay343, align 16, !tbaa !11
  %mul360 = add i32 %add348, 4
  %arrayidx361 = getelementptr inbounds i16, i16* %add.ptr42, i32 %mul360
  %70 = load i16, i16* %arrayidx361, align 2, !tbaa !44
  %conv362 = zext i16 %70 to i32
  %add363 = add nuw nsw i32 %conv362, %conv347
  %71 = load i32, i32* %arrayidx364, align 4, !tbaa !11
  %add365 = add nsw i32 %add363, %71
  store i32 %add365, i32* %arrayidx364, align 4, !tbaa !11
  %mul367 = add i32 %mul345, -4
  %arrayidx368 = getelementptr inbounds i16, i16* %add.ptr, i32 %mul367
  %72 = load i16, i16* %arrayidx368, align 2, !tbaa !44
  %conv369 = zext i16 %72 to i32
  %arrayidx372 = getelementptr inbounds i16, i16* %add.ptr42, i32 %add348
  %73 = load i16, i16* %arrayidx372, align 2, !tbaa !44
  %conv373 = zext i16 %73 to i32
  %add374 = add nuw nsw i32 %conv373, %conv369
  %74 = load i32, i32* %arrayidx375, align 8, !tbaa !11
  %add376 = add nsw i32 %add374, %74
  store i32 %add376, i32* %arrayidx375, align 8, !tbaa !11
  %mul378 = add i32 %mul345, 4
  %arrayidx379 = getelementptr inbounds i16, i16* %add.ptr, i32 %mul378
  %75 = load i16, i16* %arrayidx379, align 2, !tbaa !44
  %conv380 = zext i16 %75 to i32
  %add385 = add nuw nsw i32 %conv380, %conv373
  %76 = load i32, i32* %arrayidx386, align 4, !tbaa !11
  %add387 = add nsw i32 %add385, %76
  store i32 %add387, i32* %arrayidx386, align 4, !tbaa !11
  %shl389 = shl i32 %add354, 4
  %add390 = or i32 %shl389, 1
  %cmp391 = icmp slt i32 %add390, %bcost.10
  %spec.select5953 = select i1 %cmp391, i32 %add390, i32 %bcost.10
  %shl399 = shl i32 %add365, 4
  %add400 = or i32 %shl399, 3
  %cmp401 = icmp slt i32 %add400, %spec.select5953
  %bcost.12 = select i1 %cmp401, i32 %add400, i32 %spec.select5953
  %shl409 = shl i32 %add376, 4
  %add410 = or i32 %shl409, 4
  %cmp411 = icmp slt i32 %add410, %bcost.12
  %spec.select5954 = select i1 %cmp411, i32 %add410, i32 %bcost.12
  %shl419 = shl i32 %add387, 4
  %add420 = or i32 %shl419, 12
  %cmp421 = icmp slt i32 %add420, %spec.select5954
  %bcost.14 = select i1 %cmp421, i32 %add420, i32 %spec.select5954
  %and428 = and i32 %bcost.14, 15
  %tobool429 = icmp eq i32 %and428, 0
  br i1 %tobool429, label %do.end452, label %if.end431

if.end431:                                        ; preds = %do.body325
  %shl432 = shl i32 %bcost.14, 28
  %shr433 = ashr i32 %shl432, 30
  %sub434 = sub nsw i32 %bmx.8, %shr433
  %shl435 = shl i32 %bcost.14, 30
  %shr436 = ashr exact i32 %shl435, 30
  %sub437 = sub nsw i32 %bmy.8, %shr436
  %and438 = and i32 %bcost.14, -16
  %dec = add nsw i32 %i324.0, -1
  %tobool440 = icmp eq i32 %dec, 0
  br i1 %tobool440, label %do.end452, label %land.rhs

land.rhs:                                         ; preds = %if.end431
  %shl441 = shl i32 %sub434, 16
  %and442 = and i32 %sub437, 32767
  %or443 = or i32 %shl441, %and442
  %add444 = add i32 %or443, %or
  %sub448 = sub i32 %or34, %or443
  %or449 = or i32 %add444, %sub448
  %and450 = and i32 %or449, -2147467264
  %tobool451 = icmp eq i32 %and450, 0
  br i1 %tobool451, label %do.body325, label %do.end452

do.end452:                                        ; preds = %if.end431, %do.body325, %land.rhs
  %bcost.15 = phi i32 [ %and438, %land.rhs ], [ %and438, %if.end431 ], [ %bcost.14, %do.body325 ]
  %bmy.9 = phi i32 [ %sub437, %land.rhs ], [ %sub437, %if.end431 ], [ %bmy.8, %do.body325 ]
  %bmx.9 = phi i32 [ %sub434, %land.rhs ], [ %sub434, %if.end431 ], [ %bmx.8, %do.body325 ]
  %shr453 = ashr i32 %bcost.15, 4
  br label %sw.epilog

me_hex2:                                          ; preds = %if.end1224, %do.end3243, %if.end321
  %bcost.16 = phi i32 [ %bcost.9, %if.end321 ], [ %bcost.45, %if.end1224 ], [ %bcost.136, %do.end3243 ]
  %bmy.10 = phi i32 [ %bmy.7, %if.end321 ], [ %bmy.21, %if.end1224 ], [ %bmy.97, %do.end3243 ]
  %bmx.10 = phi i32 [ %bmx.7, %if.end321 ], [ %bmx.21, %if.end1224 ], [ %bmx.97, %do.end3243 ]
  %i_me_range.0 = phi i32 [ %4, %if.end321 ], [ %4, %if.end1224 ], [ %i_me_range.1, %do.end3243 ]
  %add.ptr456 = getelementptr inbounds i8, i8* %6, i32 %bmx.10
  %mul457 = mul nsw i32 %bmy.10, %3
  %add.ptr458 = getelementptr inbounds i8, i8* %add.ptr456, i32 %mul457
  %arrayidx460 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 92, i32 8, i32 %0
  %77 = load void (i8*, i8*, i8*, i8*, i32, i32*)*, void (i8*, i8*, i8*, i8*, i32, i32*)** %arrayidx460, align 4, !tbaa !42
  %add.ptr461 = getelementptr inbounds i8, i8* %add.ptr458, i32 -2
  %add.ptr464 = getelementptr inbounds i8, i8* %add.ptr458, i32 -1
  %mul465 = shl nsw i32 %3, 1
  %add.ptr466 = getelementptr inbounds i8, i8* %add.ptr464, i32 %mul465
  %add.ptr467 = getelementptr inbounds i8, i8* %add.ptr458, i32 1
  %add.ptr469 = getelementptr inbounds i8, i8* %add.ptr467, i32 %mul465
  %arraydecay470 = getelementptr inbounds [16 x i32], [16 x i32]* %costs, i32 0, i32 0
  call void %77(i8* %5, i8* nonnull %add.ptr461, i8* nonnull %add.ptr466, i8* nonnull %add.ptr469, i32 %3, i32* nonnull %arraydecay470) #3
  %add471 = shl i32 %bmx.10, 2
  %mul472 = add i32 %add471, -8
  %arrayidx473 = getelementptr inbounds i16, i16* %add.ptr, i32 %mul472
  %78 = load i16, i16* %arrayidx473, align 2, !tbaa !44
  %conv474 = zext i16 %78 to i32
  %mul476 = shl i32 %bmy.10, 2
  %arrayidx477 = getelementptr inbounds i16, i16* %add.ptr42, i32 %mul476
  %79 = load i16, i16* %arrayidx477, align 2, !tbaa !44
  %conv478 = zext i16 %79 to i32
  %add479 = add nuw nsw i32 %conv478, %conv474
  %80 = load i32, i32* %arraydecay470, align 16, !tbaa !11
  %add481 = add nsw i32 %add479, %80
  store i32 %add481, i32* %arraydecay470, align 16, !tbaa !11
  %mul483 = add i32 %add471, -4
  %arrayidx484 = getelementptr inbounds i16, i16* %add.ptr, i32 %mul483
  %81 = load i16, i16* %arrayidx484, align 2, !tbaa !44
  %conv485 = zext i16 %81 to i32
  %mul487 = add i32 %mul476, 8
  %arrayidx488 = getelementptr inbounds i16, i16* %add.ptr42, i32 %mul487
  %82 = load i16, i16* %arrayidx488, align 2, !tbaa !44
  %conv489 = zext i16 %82 to i32
  %add490 = add nuw nsw i32 %conv489, %conv485
  %arrayidx491 = getelementptr inbounds [16 x i32], [16 x i32]* %costs, i32 0, i32 1
  %83 = load i32, i32* %arrayidx491, align 4, !tbaa !11
  %add492 = add nsw i32 %add490, %83
  store i32 %add492, i32* %arrayidx491, align 4, !tbaa !11
  %mul494 = add i32 %add471, 4
  %arrayidx495 = getelementptr inbounds i16, i16* %add.ptr, i32 %mul494
  %84 = load i16, i16* %arrayidx495, align 2, !tbaa !44
  %conv496 = zext i16 %84 to i32
  %add501 = add nuw nsw i32 %conv496, %conv489
  %arrayidx502 = getelementptr inbounds [16 x i32], [16 x i32]* %costs, i32 0, i32 2
  %85 = load i32, i32* %arrayidx502, align 8, !tbaa !11
  %add503 = add nsw i32 %add501, %85
  store i32 %add503, i32* %arrayidx502, align 8, !tbaa !11
  %86 = load void (i8*, i8*, i8*, i8*, i32, i32*)*, void (i8*, i8*, i8*, i8*, i32, i32*)** %arrayidx460, align 4, !tbaa !42
  %add.ptr511 = getelementptr inbounds i8, i8* %add.ptr458, i32 2
  %mul515 = mul nsw i32 %3, -2
  %add.ptr516 = getelementptr inbounds i8, i8* %add.ptr467, i32 %mul515
  %add.ptr519 = getelementptr inbounds i8, i8* %add.ptr464, i32 %mul515
  %add.ptr521 = getelementptr inbounds [16 x i32], [16 x i32]* %costs, i32 0, i32 4
  call void %86(i8* %5, i8* nonnull %add.ptr511, i8* nonnull %add.ptr516, i8* nonnull %add.ptr519, i32 %3, i32* nonnull %add.ptr521) #3
  %mul523 = add i32 %add471, 8
  %arrayidx524 = getelementptr inbounds i16, i16* %add.ptr, i32 %mul523
  %87 = load i16, i16* %arrayidx524, align 2, !tbaa !44
  %conv525 = zext i16 %87 to i32
  %88 = load i16, i16* %arrayidx477, align 2, !tbaa !44
  %conv529 = zext i16 %88 to i32
  %add530 = add nuw nsw i32 %conv529, %conv525
  %89 = load i32, i32* %add.ptr521, align 16, !tbaa !11
  %add534 = add nsw i32 %add530, %89
  store i32 %add534, i32* %add.ptr521, align 16, !tbaa !11
  %90 = load i16, i16* %arrayidx495, align 2, !tbaa !44
  %conv538 = zext i16 %90 to i32
  %mul540 = add i32 %mul476, -8
  %arrayidx541 = getelementptr inbounds i16, i16* %add.ptr42, i32 %mul540
  %91 = load i16, i16* %arrayidx541, align 2, !tbaa !44
  %conv542 = zext i16 %91 to i32
  %add543 = add nuw nsw i32 %conv542, %conv538
  %arrayidx546 = getelementptr inbounds [16 x i32], [16 x i32]* %costs, i32 0, i32 5
  %92 = load i32, i32* %arrayidx546, align 4, !tbaa !11
  %add547 = add nsw i32 %add543, %92
  store i32 %add547, i32* %arrayidx546, align 4, !tbaa !11
  %93 = load i16, i16* %arrayidx484, align 2, !tbaa !44
  %conv551 = zext i16 %93 to i32
  %add556 = add nuw nsw i32 %conv551, %conv542
  %arrayidx559 = getelementptr inbounds [16 x i32], [16 x i32]* %costs, i32 0, i32 6
  %94 = load i32, i32* %arrayidx559, align 8, !tbaa !11
  %add560 = add nsw i32 %add556, %94
  store i32 %add560, i32* %arrayidx559, align 8, !tbaa !11
  %shl561 = shl i32 %bcost.16, 3
  %95 = load i32, i32* %arraydecay470, align 16, !tbaa !11
  %shl563 = shl i32 %95, 3
  %add564 = or i32 %shl563, 2
  %cmp565 = icmp slt i32 %add564, %shl561
  %spec.select5955 = select i1 %cmp565, i32 %add564, i32 %shl561
  %96 = load i32, i32* %arrayidx491, align 4, !tbaa !11
  %shl573 = shl i32 %96, 3
  %add574 = or i32 %shl573, 3
  %cmp575 = icmp slt i32 %add574, %spec.select5955
  %bcost.18 = select i1 %cmp575, i32 %add574, i32 %spec.select5955
  %97 = load i32, i32* %arrayidx502, align 8, !tbaa !11
  %shl583 = shl i32 %97, 3
  %add584 = or i32 %shl583, 4
  %cmp585 = icmp slt i32 %add584, %bcost.18
  %spec.select5956 = select i1 %cmp585, i32 %add584, i32 %bcost.18
  %shl593 = shl i32 %add534, 3
  %add594 = or i32 %shl593, 5
  %cmp595 = icmp slt i32 %add594, %spec.select5956
  %bcost.20 = select i1 %cmp595, i32 %add594, i32 %spec.select5956
  %shl603 = shl i32 %add547, 3
  %add604 = or i32 %shl603, 6
  %cmp605 = icmp slt i32 %add604, %bcost.20
  %spec.select5957 = select i1 %cmp605, i32 %add604, i32 %bcost.20
  %shl613 = shl i32 %add560, 3
  %add614 = or i32 %shl613, 7
  %cmp615 = icmp slt i32 %add614, %spec.select5957
  %bcost.22 = select i1 %cmp615, i32 %add614, i32 %spec.select5957
  %and622 = and i32 %bcost.22, 7
  %tobool623 = icmp eq i32 %and622, 0
  br i1 %tobool623, label %if.end806, label %if.then624

if.then624:                                       ; preds = %me_hex2
  %add627 = add nsw i32 %and622, -1
  %arrayidx629 = getelementptr inbounds [8 x [2 x i8]], [8 x [2 x i8]]* @hex2, i32 0, i32 %add627, i32 0
  %98 = load i8, i8* %arrayidx629, align 1, !tbaa !50
  %conv630 = sext i8 %98 to i32
  %add631 = add nsw i32 %bmx.10, %conv630
  %arrayidx634 = getelementptr inbounds [8 x [2 x i8]], [8 x [2 x i8]]* @hex2, i32 0, i32 %add627, i32 1
  %99 = load i8, i8* %arrayidx634, align 1, !tbaa !50
  %conv635 = sext i8 %99 to i32
  %add636 = add nsw i32 %bmy.10, %conv635
  %cmp6406177 = icmp sgt i32 %i_me_range.0, 3
  br i1 %cmp6406177, label %land.rhs642.preheader, label %if.end806

land.rhs642.preheader:                            ; preds = %if.then624
  %shr6386364 = lshr i32 %i_me_range.0, 1
  %sub626 = add nsw i32 %and622, -2
  br label %land.rhs642

land.rhs642:                                      ; preds = %land.rhs642.preheader, %if.end788
  %100 = phi i8 [ %118, %if.end788 ], [ %99, %land.rhs642.preheader ]
  %101 = phi i8 [ %117, %if.end788 ], [ %98, %land.rhs642.preheader ]
  %i637.06182.in = phi i32 [ %i637.06182, %if.end788 ], [ %shr6386364, %land.rhs642.preheader ]
  %bmx.116181 = phi i32 [ %add799, %if.end788 ], [ %add631, %land.rhs642.preheader ]
  %bmy.116180 = phi i32 [ %add804, %if.end788 ], [ %add636, %land.rhs642.preheader ]
  %bcost.236179 = phi i32 [ %spec.select5959, %if.end788 ], [ %bcost.22, %land.rhs642.preheader ]
  %dir.06178 = phi i32 [ %conv794, %if.end788 ], [ %sub626, %land.rhs642.preheader ]
  %i637.06182 = add nsw i32 %i637.06182.in, -1
  %shl643 = shl i32 %bmx.116181, 16
  %and644 = and i32 %bmy.116180, 32767
  %or645 = or i32 %shl643, %and644
  %add646 = add i32 %or645, %or
  %sub650 = sub i32 %or34, %or645
  %or651 = or i32 %add646, %sub650
  %and652 = and i32 %or651, -2147467264
  %tobool653 = icmp eq i32 %and652, 0
  br i1 %tobool653, label %for.body, label %if.end806

for.body:                                         ; preds = %land.rhs642
  %add.ptr657 = getelementptr inbounds i8, i8* %6, i32 %bmx.116181
  %mul658 = mul nsw i32 %bmy.116180, %3
  %add.ptr659 = getelementptr inbounds i8, i8* %add.ptr657, i32 %mul658
  %102 = load void (i8*, i8*, i8*, i8*, i32, i32*)*, void (i8*, i8*, i8*, i8*, i32, i32*)** %arrayidx460, align 4, !tbaa !42
  %arrayidx665 = getelementptr inbounds [8 x [2 x i8]], [8 x [2 x i8]]* @hex2, i32 0, i32 %dir.06178, i32 0
  %103 = load i8, i8* %arrayidx665, align 1, !tbaa !50
  %conv666 = sext i8 %103 to i32
  %add.ptr667 = getelementptr inbounds i8, i8* %add.ptr659, i32 %conv666
  %arrayidx670 = getelementptr inbounds [8 x [2 x i8]], [8 x [2 x i8]]* @hex2, i32 0, i32 %dir.06178, i32 1
  %104 = load i8, i8* %arrayidx670, align 1, !tbaa !50
  %conv671 = sext i8 %104 to i32
  %mul672 = mul nsw i32 %3, %conv671
  %add.ptr673 = getelementptr inbounds i8, i8* %add.ptr667, i32 %mul672
  %conv677 = sext i8 %101 to i32
  %add.ptr678 = getelementptr inbounds i8, i8* %add.ptr659, i32 %conv677
  %conv682 = sext i8 %100 to i32
  %mul683 = mul nsw i32 %3, %conv682
  %add.ptr684 = getelementptr inbounds i8, i8* %add.ptr678, i32 %mul683
  %add685 = add nsw i32 %dir.06178, 2
  %arrayidx687 = getelementptr inbounds [8 x [2 x i8]], [8 x [2 x i8]]* @hex2, i32 0, i32 %add685, i32 0
  %105 = load i8, i8* %arrayidx687, align 1, !tbaa !50
  %conv688 = sext i8 %105 to i32
  %add.ptr689 = getelementptr inbounds i8, i8* %add.ptr659, i32 %conv688
  %arrayidx692 = getelementptr inbounds [8 x [2 x i8]], [8 x [2 x i8]]* @hex2, i32 0, i32 %add685, i32 1
  %106 = load i8, i8* %arrayidx692, align 1, !tbaa !50
  %conv693 = sext i8 %106 to i32
  %mul694 = mul nsw i32 %3, %conv693
  %add.ptr695 = getelementptr inbounds i8, i8* %add.ptr689, i32 %mul694
  call void %102(i8* %5, i8* %add.ptr673, i8* %add.ptr684, i8* %add.ptr695, i32 %3, i32* nonnull %arraydecay470) #3
  %add701 = add nsw i32 %bmx.116181, %conv666
  %mul702 = shl nsw i32 %add701, 2
  %arrayidx703 = getelementptr inbounds i16, i16* %add.ptr, i32 %mul702
  %107 = load i16, i16* %arrayidx703, align 2, !tbaa !44
  %conv704 = zext i16 %107 to i32
  %add709 = add nsw i32 %bmy.116180, %conv671
  %mul710 = shl nsw i32 %add709, 2
  %arrayidx711 = getelementptr inbounds i16, i16* %add.ptr42, i32 %mul710
  %108 = load i16, i16* %arrayidx711, align 2, !tbaa !44
  %conv712 = zext i16 %108 to i32
  %add713 = add nuw nsw i32 %conv712, %conv704
  %109 = load i32, i32* %arraydecay470, align 16, !tbaa !11
  %add715 = add nsw i32 %add713, %109
  store i32 %add715, i32* %arraydecay470, align 16, !tbaa !11
  %add720 = add nsw i32 %bmx.116181, %conv677
  %mul721 = shl nsw i32 %add720, 2
  %arrayidx722 = getelementptr inbounds i16, i16* %add.ptr, i32 %mul721
  %110 = load i16, i16* %arrayidx722, align 2, !tbaa !44
  %conv723 = zext i16 %110 to i32
  %add728 = add nsw i32 %bmy.116180, %conv682
  %mul729 = shl nsw i32 %add728, 2
  %arrayidx730 = getelementptr inbounds i16, i16* %add.ptr42, i32 %mul729
  %111 = load i16, i16* %arrayidx730, align 2, !tbaa !44
  %conv731 = zext i16 %111 to i32
  %add732 = add nuw nsw i32 %conv731, %conv723
  %112 = load i32, i32* %arrayidx491, align 4, !tbaa !11
  %add734 = add nsw i32 %add732, %112
  store i32 %add734, i32* %arrayidx491, align 4, !tbaa !11
  %add739 = add nsw i32 %bmx.116181, %conv688
  %mul740 = shl nsw i32 %add739, 2
  %arrayidx741 = getelementptr inbounds i16, i16* %add.ptr, i32 %mul740
  %113 = load i16, i16* %arrayidx741, align 2, !tbaa !44
  %conv742 = zext i16 %113 to i32
  %add747 = add nsw i32 %bmy.116180, %conv693
  %mul748 = shl nsw i32 %add747, 2
  %arrayidx749 = getelementptr inbounds i16, i16* %add.ptr42, i32 %mul748
  %114 = load i16, i16* %arrayidx749, align 2, !tbaa !44
  %conv750 = zext i16 %114 to i32
  %add751 = add nuw nsw i32 %conv750, %conv742
  %115 = load i32, i32* %arrayidx502, align 8, !tbaa !11
  %add753 = add nsw i32 %add751, %115
  store i32 %add753, i32* %arrayidx502, align 8, !tbaa !11
  %and754 = and i32 %bcost.236179, -8
  %shl756 = shl i32 %add715, 3
  %add757 = or i32 %shl756, 1
  %cmp758 = icmp slt i32 %add757, %and754
  %spec.select5958 = select i1 %cmp758, i32 %add757, i32 %and754
  %shl766 = shl i32 %add734, 3
  %add767 = or i32 %shl766, 2
  %cmp768 = icmp slt i32 %add767, %spec.select5958
  %bcost.25 = select i1 %cmp768, i32 %add767, i32 %spec.select5958
  %shl776 = shl i32 %add753, 3
  %add777 = or i32 %shl776, 3
  %cmp778 = icmp slt i32 %add777, %bcost.25
  %spec.select5959 = select i1 %cmp778, i32 %add777, i32 %bcost.25
  %and785 = and i32 %spec.select5959, 3
  %tobool786 = icmp eq i32 %and785, 0
  br i1 %tobool786, label %if.end806, label %if.end788

if.end788:                                        ; preds = %for.body
  %add791 = add nsw i32 %dir.06178, -1
  %add792 = add nsw i32 %add791, %and785
  %arrayidx793 = getelementptr inbounds [8 x i8], [8 x i8]* @mod6m1, i32 0, i32 %add792
  %116 = load i8, i8* %arrayidx793, align 1, !tbaa !50
  %conv794 = zext i8 %116 to i32
  %add795 = add nuw nsw i32 %conv794, 1
  %arrayidx797 = getelementptr inbounds [8 x [2 x i8]], [8 x [2 x i8]]* @hex2, i32 0, i32 %add795, i32 0
  %117 = load i8, i8* %arrayidx797, align 1, !tbaa !50
  %conv798 = sext i8 %117 to i32
  %add799 = add nsw i32 %bmx.116181, %conv798
  %arrayidx802 = getelementptr inbounds [8 x [2 x i8]], [8 x [2 x i8]]* @hex2, i32 0, i32 %add795, i32 1
  %118 = load i8, i8* %arrayidx802, align 1, !tbaa !50
  %conv803 = sext i8 %118 to i32
  %add804 = add nsw i32 %bmy.116180, %conv803
  %cmp640 = icmp sgt i32 %i637.06182.in, 2
  br i1 %cmp640, label %land.rhs642, label %if.end806

if.end806:                                        ; preds = %for.body, %land.rhs642, %if.end788, %if.then624, %me_hex2
  %bcost.28 = phi i32 [ %bcost.22, %me_hex2 ], [ %bcost.22, %if.then624 ], [ %spec.select5959, %for.body ], [ %bcost.236179, %land.rhs642 ], [ %spec.select5959, %if.end788 ]
  %bmy.12 = phi i32 [ %bmy.10, %me_hex2 ], [ %add636, %if.then624 ], [ %bmy.116180, %for.body ], [ %bmy.116180, %land.rhs642 ], [ %add804, %if.end788 ]
  %bmx.12 = phi i32 [ %bmx.10, %me_hex2 ], [ %add631, %if.then624 ], [ %bmx.116181, %for.body ], [ %bmx.116181, %land.rhs642 ], [ %add799, %if.end788 ]
  %119 = lshr i32 %bcost.28, 3
  %shl808 = shl i32 %119, 4
  %add.ptr810 = getelementptr inbounds i8, i8* %6, i32 %bmx.12
  %mul811 = mul nsw i32 %bmy.12, %3
  %add.ptr812 = getelementptr inbounds i8, i8* %add.ptr810, i32 %mul811
  %arrayidx815 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 92, i32 9, i32 %0
  %120 = load void (i8*, i8*, i8*, i8*, i8*, i32, i32*)*, void (i8*, i8*, i8*, i8*, i8*, i32, i32*)** %arrayidx815, align 4, !tbaa !42
  %mul817 = sub nsw i32 0, %3
  %add.ptr818 = getelementptr inbounds i8, i8* %add.ptr812, i32 %mul817
  %add.ptr821 = getelementptr inbounds i8, i8* %add.ptr812, i32 %3
  %add.ptr822 = getelementptr inbounds i8, i8* %add.ptr812, i32 -1
  %add.ptr825 = getelementptr inbounds i8, i8* %add.ptr812, i32 1
  call void %120(i8* %5, i8* %add.ptr818, i8* %add.ptr821, i8* nonnull %add.ptr822, i8* nonnull %add.ptr825, i32 %3, i32* nonnull %arraydecay470) #3
  %mul830 = shl i32 %bmx.12, 2
  %arrayidx831 = getelementptr inbounds i16, i16* %add.ptr, i32 %mul830
  %121 = load i16, i16* %arrayidx831, align 2, !tbaa !44
  %conv832 = zext i16 %121 to i32
  %add833 = shl i32 %bmy.12, 2
  %mul834 = add i32 %add833, -4
  %arrayidx835 = getelementptr inbounds i16, i16* %add.ptr42, i32 %mul834
  %122 = load i16, i16* %arrayidx835, align 2, !tbaa !44
  %conv836 = zext i16 %122 to i32
  %add837 = add nuw nsw i32 %conv836, %conv832
  %123 = load i32, i32* %arraydecay470, align 16, !tbaa !11
  %add839 = add nsw i32 %add837, %123
  store i32 %add839, i32* %arraydecay470, align 16, !tbaa !11
  %mul845 = add i32 %add833, 4
  %arrayidx846 = getelementptr inbounds i16, i16* %add.ptr42, i32 %mul845
  %124 = load i16, i16* %arrayidx846, align 2, !tbaa !44
  %conv847 = zext i16 %124 to i32
  %add848 = add nuw nsw i32 %conv847, %conv832
  %125 = load i32, i32* %arrayidx491, align 4, !tbaa !11
  %add850 = add nsw i32 %add848, %125
  store i32 %add850, i32* %arrayidx491, align 4, !tbaa !11
  %mul852 = add i32 %mul830, -4
  %arrayidx853 = getelementptr inbounds i16, i16* %add.ptr, i32 %mul852
  %126 = load i16, i16* %arrayidx853, align 2, !tbaa !44
  %conv854 = zext i16 %126 to i32
  %arrayidx857 = getelementptr inbounds i16, i16* %add.ptr42, i32 %add833
  %127 = load i16, i16* %arrayidx857, align 2, !tbaa !44
  %conv858 = zext i16 %127 to i32
  %add859 = add nuw nsw i32 %conv858, %conv854
  %128 = load i32, i32* %arrayidx502, align 8, !tbaa !11
  %add861 = add nsw i32 %add859, %128
  store i32 %add861, i32* %arrayidx502, align 8, !tbaa !11
  %mul863 = add i32 %mul830, 4
  %arrayidx864 = getelementptr inbounds i16, i16* %add.ptr, i32 %mul863
  %129 = load i16, i16* %arrayidx864, align 2, !tbaa !44
  %conv865 = zext i16 %129 to i32
  %add870 = add nuw nsw i32 %conv865, %conv858
  %arrayidx871 = getelementptr inbounds [16 x i32], [16 x i32]* %costs, i32 0, i32 3
  %130 = load i32, i32* %arrayidx871, align 4, !tbaa !11
  %add872 = add nsw i32 %add870, %130
  store i32 %add872, i32* %arrayidx871, align 4, !tbaa !11
  %shl874 = shl i32 %add839, 4
  %add875 = or i32 %shl874, 1
  %cmp876 = icmp slt i32 %add875, %shl808
  %spec.select5960 = select i1 %cmp876, i32 %add875, i32 %shl808
  %shl884 = shl i32 %add850, 4
  %add885 = or i32 %shl884, 2
  %cmp886 = icmp slt i32 %add885, %spec.select5960
  %bcost.30 = select i1 %cmp886, i32 %add885, i32 %spec.select5960
  %shl894 = shl i32 %add861, 4
  %add895 = or i32 %shl894, 3
  %cmp896 = icmp slt i32 %add895, %bcost.30
  %spec.select5961 = select i1 %cmp896, i32 %add895, i32 %bcost.30
  %shl904 = shl i32 %add872, 4
  %add905 = or i32 %shl904, 4
  %cmp906 = icmp slt i32 %add905, %spec.select5961
  %bcost.32 = select i1 %cmp906, i32 %add905, i32 %spec.select5961
  %131 = load void (i8*, i8*, i8*, i8*, i8*, i32, i32*)*, void (i8*, i8*, i8*, i8*, i8*, i32, i32*)** %arrayidx815, align 4, !tbaa !42
  %add.ptr922 = getelementptr inbounds i8, i8* %add.ptr822, i32 %mul817
  %add.ptr925 = getelementptr inbounds i8, i8* %add.ptr822, i32 %3
  %add.ptr928 = getelementptr inbounds i8, i8* %add.ptr825, i32 %mul817
  %add.ptr931 = getelementptr inbounds i8, i8* %add.ptr825, i32 %3
  call void %131(i8* %5, i8* nonnull %add.ptr922, i8* nonnull %add.ptr925, i8* nonnull %add.ptr928, i8* nonnull %add.ptr931, i32 %3, i32* nonnull %arraydecay470) #3
  %132 = load i16, i16* %arrayidx853, align 2, !tbaa !44
  %conv936 = zext i16 %132 to i32
  %133 = load i16, i16* %arrayidx835, align 2, !tbaa !44
  %conv940 = zext i16 %133 to i32
  %add941 = add nuw nsw i32 %conv940, %conv936
  %134 = load i32, i32* %arraydecay470, align 16, !tbaa !11
  %add943 = add nsw i32 %add941, %134
  store i32 %add943, i32* %arraydecay470, align 16, !tbaa !11
  %135 = load i16, i16* %arrayidx846, align 2, !tbaa !44
  %conv951 = zext i16 %135 to i32
  %add952 = add nuw nsw i32 %conv951, %conv936
  %136 = load i32, i32* %arrayidx491, align 4, !tbaa !11
  %add954 = add nsw i32 %add952, %136
  store i32 %add954, i32* %arrayidx491, align 4, !tbaa !11
  %137 = load i16, i16* %arrayidx864, align 2, !tbaa !44
  %conv958 = zext i16 %137 to i32
  %add963 = add nuw nsw i32 %conv958, %conv940
  %138 = load i32, i32* %arrayidx502, align 8, !tbaa !11
  %add965 = add nsw i32 %add963, %138
  store i32 %add965, i32* %arrayidx502, align 8, !tbaa !11
  %add974 = add nuw nsw i32 %conv958, %conv951
  %139 = load i32, i32* %arrayidx871, align 4, !tbaa !11
  %add976 = add nsw i32 %add974, %139
  store i32 %add976, i32* %arrayidx871, align 4, !tbaa !11
  %shl978 = shl i32 %add943, 4
  %add979 = or i32 %shl978, 5
  %cmp980 = icmp slt i32 %add979, %bcost.32
  %spec.select5962 = select i1 %cmp980, i32 %add979, i32 %bcost.32
  %shl988 = shl i32 %add954, 4
  %add989 = or i32 %shl988, 6
  %cmp990 = icmp slt i32 %add989, %spec.select5962
  %bcost.34 = select i1 %cmp990, i32 %add989, i32 %spec.select5962
  %shl998 = shl i32 %add965, 4
  %add999 = or i32 %shl998, 7
  %cmp1000 = icmp slt i32 %add999, %bcost.34
  %spec.select5963 = select i1 %cmp1000, i32 %add999, i32 %bcost.34
  %shl1008 = shl i32 %add976, 4
  %add1009 = or i32 %shl1008, 8
  %cmp1010 = icmp slt i32 %add1009, %spec.select5963
  %bcost.36 = select i1 %cmp1010, i32 %add1009, i32 %spec.select5963
  %and1017 = and i32 %bcost.36, 15
  %arrayidx1019 = getelementptr inbounds [9 x [2 x i8]], [9 x [2 x i8]]* @square1, i32 0, i32 %and1017, i32 0
  %140 = load i8, i8* %arrayidx1019, align 1, !tbaa !50
  %conv1020 = sext i8 %140 to i32
  %add1021 = add nsw i32 %bmx.12, %conv1020
  %arrayidx1024 = getelementptr inbounds [9 x [2 x i8]], [9 x [2 x i8]]* @square1, i32 0, i32 %and1017, i32 1
  %141 = load i8, i8* %arrayidx1024, align 1, !tbaa !50
  %conv1025 = sext i8 %141 to i32
  %add1026 = add nsw i32 %bmy.12, %conv1025
  %shr1027 = ashr i32 %bcost.36, 4
  br label %sw.epilog

sw.bb1028:                                        ; preds = %if.end321
  %add.ptr1030 = getelementptr inbounds i8, i8* %6, i32 %pmx.0
  %mul1031 = mul nsw i32 %pmy.0, %3
  %add.ptr1032 = getelementptr inbounds i8, i8* %add.ptr1030, i32 %mul1031
  %arrayidx1035 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 92, i32 9, i32 %0
  %142 = load void (i8*, i8*, i8*, i8*, i8*, i32, i32*)*, void (i8*, i8*, i8*, i8*, i8*, i32, i32*)** %arrayidx1035, align 4, !tbaa !42
  %mul1037 = sub nsw i32 0, %3
  %add.ptr1038 = getelementptr inbounds i8, i8* %add.ptr1032, i32 %mul1037
  %add.ptr1041 = getelementptr inbounds i8, i8* %add.ptr1032, i32 %3
  %add.ptr1042 = getelementptr inbounds i8, i8* %add.ptr1032, i32 -1
  %add.ptr1045 = getelementptr inbounds i8, i8* %add.ptr1032, i32 1
  %arraydecay1048 = getelementptr inbounds [16 x i32], [16 x i32]* %costs, i32 0, i32 0
  call void %142(i8* %5, i8* %add.ptr1038, i8* %add.ptr1041, i8* nonnull %add.ptr1042, i8* nonnull %add.ptr1045, i32 %3, i32* nonnull %arraydecay1048) #3
  %mul1050 = shl nsw i32 %pmx.0, 2
  %arrayidx1051 = getelementptr inbounds i16, i16* %add.ptr, i32 %mul1050
  %143 = load i16, i16* %arrayidx1051, align 2, !tbaa !44
  %conv1052 = zext i16 %143 to i32
  %add1053 = add nsw i32 %pmy.0, -1
  %mul1054 = shl nsw i32 %add1053, 2
  %arrayidx1055 = getelementptr inbounds i16, i16* %add.ptr42, i32 %mul1054
  %144 = load i16, i16* %arrayidx1055, align 2, !tbaa !44
  %conv1056 = zext i16 %144 to i32
  %add1057 = add nuw nsw i32 %conv1056, %conv1052
  %145 = load i32, i32* %arraydecay1048, align 16, !tbaa !11
  %add1059 = add nsw i32 %add1057, %145
  store i32 %add1059, i32* %arraydecay1048, align 16, !tbaa !11
  %add1064 = add nsw i32 %pmy.0, 1
  %mul1065 = shl nsw i32 %add1064, 2
  %arrayidx1066 = getelementptr inbounds i16, i16* %add.ptr42, i32 %mul1065
  %146 = load i16, i16* %arrayidx1066, align 2, !tbaa !44
  %conv1067 = zext i16 %146 to i32
  %add1068 = add nuw nsw i32 %conv1067, %conv1052
  %arrayidx1069 = getelementptr inbounds [16 x i32], [16 x i32]* %costs, i32 0, i32 1
  %147 = load i32, i32* %arrayidx1069, align 4, !tbaa !11
  %add1070 = add nsw i32 %add1068, %147
  store i32 %add1070, i32* %arrayidx1069, align 4, !tbaa !11
  %add1071 = add nsw i32 %pmx.0, -1
  %mul1072 = shl nsw i32 %add1071, 2
  %arrayidx1073 = getelementptr inbounds i16, i16* %add.ptr, i32 %mul1072
  %148 = load i16, i16* %arrayidx1073, align 2, !tbaa !44
  %conv1074 = zext i16 %148 to i32
  %mul1076 = shl nsw i32 %pmy.0, 2
  %arrayidx1077 = getelementptr inbounds i16, i16* %add.ptr42, i32 %mul1076
  %149 = load i16, i16* %arrayidx1077, align 2, !tbaa !44
  %conv1078 = zext i16 %149 to i32
  %add1079 = add nuw nsw i32 %conv1078, %conv1074
  %arrayidx1080 = getelementptr inbounds [16 x i32], [16 x i32]* %costs, i32 0, i32 2
  %150 = load i32, i32* %arrayidx1080, align 8, !tbaa !11
  %add1081 = add nsw i32 %add1079, %150
  store i32 %add1081, i32* %arrayidx1080, align 8, !tbaa !11
  %add1082 = add nsw i32 %pmx.0, 1
  %mul1083 = shl nsw i32 %add1082, 2
  %arrayidx1084 = getelementptr inbounds i16, i16* %add.ptr, i32 %mul1083
  %151 = load i16, i16* %arrayidx1084, align 2, !tbaa !44
  %conv1085 = zext i16 %151 to i32
  %add1090 = add nuw nsw i32 %conv1085, %conv1078
  %arrayidx1091 = getelementptr inbounds [16 x i32], [16 x i32]* %costs, i32 0, i32 3
  %152 = load i32, i32* %arrayidx1091, align 4, !tbaa !11
  %add1092 = add nsw i32 %add1090, %152
  store i32 %add1092, i32* %arrayidx1091, align 4, !tbaa !11
  %cmp1094 = icmp slt i32 %add1059, %bcost.9
  %spec.select5964 = select i1 %cmp1094, i32 %add1059, i32 %bcost.9
  %spec.select5965 = select i1 %cmp1094, i32 %add1053, i32 %bmy.7
  %cmp1102 = icmp slt i32 %add1070, %spec.select5964
  %bcost.38 = select i1 %cmp1102, i32 %add1070, i32 %spec.select5964
  %bmy.14 = select i1 %cmp1102, i32 %add1064, i32 %spec.select5965
  %153 = or i1 %cmp1094, %cmp1102
  %bmx.14 = select i1 %153, i32 %pmx.0, i32 %bmx.7
  %cmp1110 = icmp slt i32 %add1081, %bcost.38
  %spec.select5967 = select i1 %cmp1110, i32 %add1081, i32 %bcost.38
  %spec.select5969 = select i1 %cmp1110, i32 %add1071, i32 %bmx.14
  %cmp1118 = icmp slt i32 %add1092, %spec.select5967
  %bcost.40 = select i1 %cmp1118, i32 %add1092, i32 %spec.select5967
  %154 = or i1 %cmp1110, %cmp1118
  %bmy.16 = select i1 %154, i32 %pmy.0, i32 %bmy.14
  %bmx.16 = select i1 %cmp1118, i32 %add1082, i32 %spec.select5969
  %or1125 = or i32 %pmx.0, %pmy.0
  %tobool1126 = icmp eq i32 %or1125, 0
  br i1 %tobool1126, label %if.end1224, label %if.then1127

if.then1127:                                      ; preds = %sw.bb1028
  %155 = load void (i8*, i8*, i8*, i8*, i8*, i32, i32*)*, void (i8*, i8*, i8*, i8*, i8*, i32, i32*)** %arrayidx1035, align 4, !tbaa !42
  %add.ptr1137 = getelementptr inbounds i8, i8* %6, i32 %mul1037
  %add.ptr1140 = getelementptr inbounds i8, i8* %6, i32 %3
  %add.ptr1141 = getelementptr inbounds i8, i8* %6, i32 -1
  %add.ptr1144 = getelementptr inbounds i8, i8* %6, i32 1
  call void %155(i8* %5, i8* %add.ptr1137, i8* %add.ptr1140, i8* nonnull %add.ptr1141, i8* nonnull %add.ptr1144, i32 %3, i32* nonnull %arraydecay1048) #3
  %156 = load i16, i16* %add.ptr, align 2, !tbaa !44
  %conv1151 = zext i16 %156 to i32
  %arrayidx1154 = getelementptr inbounds i16, i16* %add.ptr42, i32 -4
  %157 = load i16, i16* %arrayidx1154, align 2, !tbaa !44
  %conv1155 = zext i16 %157 to i32
  %add1156 = add nuw nsw i32 %conv1155, %conv1151
  %158 = load i32, i32* %arraydecay1048, align 16, !tbaa !11
  %add1158 = add nsw i32 %add1156, %158
  store i32 %add1158, i32* %arraydecay1048, align 16, !tbaa !11
  %arrayidx1165 = getelementptr inbounds i16, i16* %add.ptr42, i32 4
  %159 = load i16, i16* %arrayidx1165, align 2, !tbaa !44
  %conv1166 = zext i16 %159 to i32
  %add1167 = add nuw nsw i32 %conv1166, %conv1151
  %160 = load i32, i32* %arrayidx1069, align 4, !tbaa !11
  %add1169 = add nsw i32 %add1167, %160
  store i32 %add1169, i32* %arrayidx1069, align 4, !tbaa !11
  %arrayidx1172 = getelementptr inbounds i16, i16* %add.ptr, i32 -4
  %161 = load i16, i16* %arrayidx1172, align 2, !tbaa !44
  %conv1173 = zext i16 %161 to i32
  %162 = load i16, i16* %add.ptr42, align 2, !tbaa !44
  %conv1177 = zext i16 %162 to i32
  %add1178 = add nuw nsw i32 %conv1177, %conv1173
  %163 = load i32, i32* %arrayidx1080, align 8, !tbaa !11
  %add1180 = add nsw i32 %add1178, %163
  store i32 %add1180, i32* %arrayidx1080, align 8, !tbaa !11
  %arrayidx1183 = getelementptr inbounds i16, i16* %add.ptr, i32 4
  %164 = load i16, i16* %arrayidx1183, align 2, !tbaa !44
  %conv1184 = zext i16 %164 to i32
  %add1189 = add nuw nsw i32 %conv1184, %conv1177
  %165 = load i32, i32* %arrayidx1091, align 4, !tbaa !11
  %add1191 = add nsw i32 %add1189, %165
  store i32 %add1191, i32* %arrayidx1091, align 4, !tbaa !11
  %cmp1193 = icmp slt i32 %add1158, %bcost.40
  %spec.select5970 = select i1 %cmp1193, i32 %add1158, i32 %bcost.40
  %spec.select5971 = select i1 %cmp1193, i32 -1, i32 %bmy.16
  %cmp1201 = icmp slt i32 %add1169, %spec.select5970
  %bcost.42 = select i1 %cmp1201, i32 %add1169, i32 %spec.select5970
  %bmy.18 = select i1 %cmp1201, i32 1, i32 %spec.select5971
  %166 = or i1 %cmp1193, %cmp1201
  %bmx.18 = select i1 %166, i32 0, i32 %bmx.16
  %cmp1209 = icmp slt i32 %add1180, %bcost.42
  %spec.select5973 = select i1 %cmp1209, i32 %add1180, i32 %bcost.42
  %spec.select5975 = select i1 %cmp1209, i32 -1, i32 %bmx.18
  %cmp1217 = icmp slt i32 %add1191, %spec.select5973
  %bcost.44 = select i1 %cmp1217, i32 %add1191, i32 %spec.select5973
  %167 = or i1 %cmp1209, %cmp1217
  %bmy.20 = select i1 %167, i32 0, i32 %bmy.18
  %bmx.20 = select i1 %cmp1217, i32 1, i32 %spec.select5975
  br label %if.end1224

if.end1224:                                       ; preds = %if.then1127, %sw.bb1028
  %bcost.45 = phi i32 [ %bcost.40, %sw.bb1028 ], [ %bcost.44, %if.then1127 ]
  %bmy.21 = phi i32 [ %bmy.16, %sw.bb1028 ], [ %bmy.20, %if.then1127 ]
  %bmx.21 = phi i32 [ %bmx.16, %sw.bb1028 ], [ %bmx.20, %if.then1127 ]
  %cmp1225 = icmp eq i32 %0, 6
  br i1 %cmp1225, label %me_hex2, label %if.end1228

if.end1228:                                       ; preds = %if.end1224
  %or1229 = or i32 %bmx.21, %bmy.21
  %tobool1230 = icmp eq i32 %or1229, 0
  br i1 %tobool1230, label %land.lhs.true1339, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end1228
  %sub1231 = sub nsw i32 %bmx.21, %pmx.0
  %sub1232 = sub nsw i32 %bmy.21, %pmy.0
  %or1233 = or i32 %sub1231, %sub1232
  %tobool1234 = icmp eq i32 %or1233, 0
  br i1 %tobool1234, label %land.lhs.true1339, label %if.end1332

if.end1332:                                       ; preds = %land.lhs.true
  %add.ptr1237 = getelementptr inbounds i8, i8* %6, i32 %bmx.21
  %mul1238 = mul nsw i32 %bmy.21, %3
  %add.ptr1239 = getelementptr inbounds i8, i8* %add.ptr1237, i32 %mul1238
  %168 = load void (i8*, i8*, i8*, i8*, i8*, i32, i32*)*, void (i8*, i8*, i8*, i8*, i8*, i32, i32*)** %arrayidx1035, align 4, !tbaa !42
  %add.ptr1245 = getelementptr inbounds i8, i8* %add.ptr1239, i32 %mul1037
  %add.ptr1248 = getelementptr inbounds i8, i8* %add.ptr1239, i32 %3
  %add.ptr1249 = getelementptr inbounds i8, i8* %add.ptr1239, i32 -1
  %add.ptr1252 = getelementptr inbounds i8, i8* %add.ptr1239, i32 1
  call void %168(i8* %5, i8* %add.ptr1245, i8* %add.ptr1248, i8* nonnull %add.ptr1249, i8* nonnull %add.ptr1252, i32 %3, i32* nonnull %arraydecay1048) #3
  %mul1257 = shl nsw i32 %bmx.21, 2
  %arrayidx1258 = getelementptr inbounds i16, i16* %add.ptr, i32 %mul1257
  %169 = load i16, i16* %arrayidx1258, align 2, !tbaa !44
  %conv1259 = zext i16 %169 to i32
  %add1260 = add nsw i32 %bmy.21, -1
  %mul1261 = shl nsw i32 %add1260, 2
  %arrayidx1262 = getelementptr inbounds i16, i16* %add.ptr42, i32 %mul1261
  %170 = load i16, i16* %arrayidx1262, align 2, !tbaa !44
  %conv1263 = zext i16 %170 to i32
  %add1264 = add nuw nsw i32 %conv1263, %conv1259
  %171 = load i32, i32* %arraydecay1048, align 16, !tbaa !11
  %add1266 = add nsw i32 %add1264, %171
  store i32 %add1266, i32* %arraydecay1048, align 16, !tbaa !11
  %add1271 = add nsw i32 %bmy.21, 1
  %mul1272 = shl nsw i32 %add1271, 2
  %arrayidx1273 = getelementptr inbounds i16, i16* %add.ptr42, i32 %mul1272
  %172 = load i16, i16* %arrayidx1273, align 2, !tbaa !44
  %conv1274 = zext i16 %172 to i32
  %add1275 = add nuw nsw i32 %conv1274, %conv1259
  %173 = load i32, i32* %arrayidx1069, align 4, !tbaa !11
  %add1277 = add nsw i32 %add1275, %173
  store i32 %add1277, i32* %arrayidx1069, align 4, !tbaa !11
  %add1278 = add nsw i32 %bmx.21, -1
  %mul1279 = shl nsw i32 %add1278, 2
  %arrayidx1280 = getelementptr inbounds i16, i16* %add.ptr, i32 %mul1279
  %174 = load i16, i16* %arrayidx1280, align 2, !tbaa !44
  %conv1281 = zext i16 %174 to i32
  %mul1283 = shl nsw i32 %bmy.21, 2
  %arrayidx1284 = getelementptr inbounds i16, i16* %add.ptr42, i32 %mul1283
  %175 = load i16, i16* %arrayidx1284, align 2, !tbaa !44
  %conv1285 = zext i16 %175 to i32
  %add1286 = add nuw nsw i32 %conv1285, %conv1281
  %176 = load i32, i32* %arrayidx1080, align 8, !tbaa !11
  %add1288 = add nsw i32 %add1286, %176
  store i32 %add1288, i32* %arrayidx1080, align 8, !tbaa !11
  %add1289 = add nsw i32 %bmx.21, 1
  %mul1290 = shl nsw i32 %add1289, 2
  %arrayidx1291 = getelementptr inbounds i16, i16* %add.ptr, i32 %mul1290
  %177 = load i16, i16* %arrayidx1291, align 2, !tbaa !44
  %conv1292 = zext i16 %177 to i32
  %add1297 = add nuw nsw i32 %conv1292, %conv1285
  %178 = load i32, i32* %arrayidx1091, align 4, !tbaa !11
  %add1299 = add nsw i32 %add1297, %178
  store i32 %add1299, i32* %arrayidx1091, align 4, !tbaa !11
  %cmp1301 = icmp slt i32 %add1266, %bcost.45
  %spec.select5976 = select i1 %cmp1301, i32 %add1266, i32 %bcost.45
  %spec.select5977 = select i1 %cmp1301, i32 %add1260, i32 %bmy.21
  %cmp1309 = icmp slt i32 %add1277, %spec.select5976
  %bcost.47 = select i1 %cmp1309, i32 %add1277, i32 %spec.select5976
  %bmy.23 = select i1 %cmp1309, i32 %add1271, i32 %spec.select5977
  %cmp1317 = icmp slt i32 %add1288, %bcost.47
  %spec.select5978 = select i1 %cmp1317, i32 %add1288, i32 %bcost.47
  %spec.select5980 = select i1 %cmp1317, i32 %add1278, i32 %bmx.21
  %cmp1325 = icmp slt i32 %add1299, %spec.select5978
  %bcost.49 = select i1 %cmp1325, i32 %add1299, i32 %spec.select5978
  %179 = or i1 %cmp1317, %cmp1325
  %bmy.25 = select i1 %179, i32 %bmy.21, i32 %bmy.23
  %bmx.25 = select i1 %cmp1325, i32 %add1289, i32 %spec.select5980
  %cmp1333 = icmp eq i32 %bcost.49, %bcost.45
  br i1 %cmp1333, label %land.lhs.true1339, label %if.end2147

land.lhs.true1339:                                ; preds = %if.end1228, %land.lhs.true, %if.end1332
  %bmx.266155 = phi i32 [ %bmx.25, %if.end1332 ], [ %bmx.21, %land.lhs.true ], [ %bmx.21, %if.end1228 ]
  %bmy.266150 = phi i32 [ %bmy.25, %if.end1332 ], [ %bmy.21, %land.lhs.true ], [ %bmy.21, %if.end1228 ]
  %arrayidx1340 = getelementptr inbounds [7 x i8], [7 x i8]* @x264_8_me_search_ref.pixel_size_shift, i32 0, i32 %0
  %180 = load i8, i8* %arrayidx1340, align 1, !tbaa !50
  %conv1341 = zext i8 %180 to i32
  %shr1342 = lshr i32 2000, %conv1341
  %cmp1343 = icmp slt i32 %bcost.45, %shr1342
  br i1 %cmp1343, label %if.then1345, label %if.end2147

if.then1345:                                      ; preds = %land.lhs.true1339
  %add.ptr1347 = getelementptr inbounds i8, i8* %6, i32 %bmx.266155
  %mul1348 = mul nsw i32 %bmy.266150, %3
  %add.ptr1349 = getelementptr inbounds i8, i8* %add.ptr1347, i32 %mul1348
  %181 = load void (i8*, i8*, i8*, i8*, i8*, i32, i32*)*, void (i8*, i8*, i8*, i8*, i8*, i32, i32*)** %arrayidx1035, align 4, !tbaa !42
  %mul1354 = mul nsw i32 %3, -2
  %add.ptr1355 = getelementptr inbounds i8, i8* %add.ptr1349, i32 %mul1354
  %add.ptr1356 = getelementptr inbounds i8, i8* %add.ptr1349, i32 -1
  %add.ptr1358 = getelementptr inbounds i8, i8* %add.ptr1356, i32 %mul1037
  %add.ptr1359 = getelementptr inbounds i8, i8* %add.ptr1349, i32 1
  %add.ptr1361 = getelementptr inbounds i8, i8* %add.ptr1359, i32 %mul1037
  %add.ptr1362 = getelementptr inbounds i8, i8* %add.ptr1349, i32 -2
  call void %181(i8* %5, i8* %add.ptr1355, i8* nonnull %add.ptr1358, i8* nonnull %add.ptr1361, i8* nonnull %add.ptr1362, i32 %3, i32* nonnull %arraydecay1048) #3
  %mul1367 = shl nsw i32 %bmx.266155, 2
  %arrayidx1368 = getelementptr inbounds i16, i16* %add.ptr, i32 %mul1367
  %182 = load i16, i16* %arrayidx1368, align 2, !tbaa !44
  %conv1369 = zext i16 %182 to i32
  %add1370 = add nsw i32 %bmy.266150, -2
  %mul1371 = shl nsw i32 %add1370, 2
  %arrayidx1372 = getelementptr inbounds i16, i16* %add.ptr42, i32 %mul1371
  %183 = load i16, i16* %arrayidx1372, align 2, !tbaa !44
  %conv1373 = zext i16 %183 to i32
  %add1374 = add nuw nsw i32 %conv1373, %conv1369
  %184 = load i32, i32* %arraydecay1048, align 16, !tbaa !11
  %add1376 = add nsw i32 %add1374, %184
  store i32 %add1376, i32* %arraydecay1048, align 16, !tbaa !11
  %add1377 = add nsw i32 %bmx.266155, -1
  %mul1378 = shl nsw i32 %add1377, 2
  %arrayidx1379 = getelementptr inbounds i16, i16* %add.ptr, i32 %mul1378
  %185 = load i16, i16* %arrayidx1379, align 2, !tbaa !44
  %conv1380 = zext i16 %185 to i32
  %add1381 = add nsw i32 %bmy.266150, -1
  %mul1382 = shl nsw i32 %add1381, 2
  %arrayidx1383 = getelementptr inbounds i16, i16* %add.ptr42, i32 %mul1382
  %186 = load i16, i16* %arrayidx1383, align 2, !tbaa !44
  %conv1384 = zext i16 %186 to i32
  %add1385 = add nuw nsw i32 %conv1384, %conv1380
  %187 = load i32, i32* %arrayidx1069, align 4, !tbaa !11
  %add1387 = add nsw i32 %add1385, %187
  store i32 %add1387, i32* %arrayidx1069, align 4, !tbaa !11
  %add1388 = add nsw i32 %bmx.266155, 1
  %mul1389 = shl nsw i32 %add1388, 2
  %arrayidx1390 = getelementptr inbounds i16, i16* %add.ptr, i32 %mul1389
  %188 = load i16, i16* %arrayidx1390, align 2, !tbaa !44
  %conv1391 = zext i16 %188 to i32
  %add1396 = add nuw nsw i32 %conv1391, %conv1384
  %189 = load i32, i32* %arrayidx1080, align 8, !tbaa !11
  %add1398 = add nsw i32 %add1396, %189
  store i32 %add1398, i32* %arrayidx1080, align 8, !tbaa !11
  %add1399 = add nsw i32 %bmx.266155, -2
  %mul1400 = shl nsw i32 %add1399, 2
  %arrayidx1401 = getelementptr inbounds i16, i16* %add.ptr, i32 %mul1400
  %190 = load i16, i16* %arrayidx1401, align 2, !tbaa !44
  %conv1402 = zext i16 %190 to i32
  %mul1404 = shl nsw i32 %bmy.266150, 2
  %arrayidx1405 = getelementptr inbounds i16, i16* %add.ptr42, i32 %mul1404
  %191 = load i16, i16* %arrayidx1405, align 2, !tbaa !44
  %conv1406 = zext i16 %191 to i32
  %add1407 = add nuw nsw i32 %conv1406, %conv1402
  %192 = load i32, i32* %arrayidx1091, align 4, !tbaa !11
  %add1409 = add nsw i32 %add1407, %192
  store i32 %add1409, i32* %arrayidx1091, align 4, !tbaa !11
  %cmp1411 = icmp slt i32 %add1376, %bcost.45
  %spec.select5982 = select i1 %cmp1411, i32 %add1376, i32 %bcost.45
  %spec.select5983 = select i1 %cmp1411, i32 %add1370, i32 %bmy.266150
  %cmp1419 = icmp slt i32 %add1387, %spec.select5982
  %bcost.52 = select i1 %cmp1419, i32 %add1387, i32 %spec.select5982
  %bmx.28 = select i1 %cmp1419, i32 %add1377, i32 %bmx.266155
  %cmp1427 = icmp slt i32 %add1398, %bcost.52
  %spec.select5984 = select i1 %cmp1427, i32 %add1398, i32 %bcost.52
  %193 = or i1 %cmp1419, %cmp1427
  %spec.select5985 = select i1 %193, i32 %add1381, i32 %spec.select5983
  %spec.select5986 = select i1 %cmp1427, i32 %add1388, i32 %bmx.28
  %cmp1435 = icmp slt i32 %add1409, %spec.select5984
  %bcost.54 = select i1 %cmp1435, i32 %add1409, i32 %spec.select5984
  %bmx.30 = select i1 %cmp1435, i32 %add1399, i32 %spec.select5986
  %194 = load void (i8*, i8*, i8*, i8*, i8*, i32, i32*)*, void (i8*, i8*, i8*, i8*, i8*, i32, i32*)** %arrayidx1035, align 4, !tbaa !42
  %add.ptr1449 = getelementptr inbounds i8, i8* %add.ptr1349, i32 2
  %add.ptr1454 = getelementptr inbounds i8, i8* %add.ptr1356, i32 %3
  %add.ptr1457 = getelementptr inbounds i8, i8* %add.ptr1359, i32 %3
  %mul1459 = shl nsw i32 %3, 1
  %add.ptr1460 = getelementptr inbounds i8, i8* %add.ptr1349, i32 %mul1459
  call void %194(i8* %5, i8* nonnull %add.ptr1449, i8* nonnull %add.ptr1454, i8* nonnull %add.ptr1457, i8* %add.ptr1460, i32 %3, i32* nonnull %arraydecay1048) #3
  %add1462 = add nsw i32 %bmx.266155, 2
  %mul1463 = shl nsw i32 %add1462, 2
  %arrayidx1464 = getelementptr inbounds i16, i16* %add.ptr, i32 %mul1463
  %195 = load i16, i16* %arrayidx1464, align 2, !tbaa !44
  %conv1465 = zext i16 %195 to i32
  %196 = load i16, i16* %arrayidx1405, align 2, !tbaa !44
  %conv1469 = zext i16 %196 to i32
  %add1470 = add nuw nsw i32 %conv1469, %conv1465
  %197 = load i32, i32* %arraydecay1048, align 16, !tbaa !11
  %add1472 = add nsw i32 %add1470, %197
  store i32 %add1472, i32* %arraydecay1048, align 16, !tbaa !11
  %198 = load i16, i16* %arrayidx1379, align 2, !tbaa !44
  %conv1476 = zext i16 %198 to i32
  %add1477 = add nsw i32 %bmy.266150, 1
  %mul1478 = shl nsw i32 %add1477, 2
  %arrayidx1479 = getelementptr inbounds i16, i16* %add.ptr42, i32 %mul1478
  %199 = load i16, i16* %arrayidx1479, align 2, !tbaa !44
  %conv1480 = zext i16 %199 to i32
  %add1481 = add nuw nsw i32 %conv1480, %conv1476
  %200 = load i32, i32* %arrayidx1069, align 4, !tbaa !11
  %add1483 = add nsw i32 %add1481, %200
  store i32 %add1483, i32* %arrayidx1069, align 4, !tbaa !11
  %201 = load i16, i16* %arrayidx1390, align 2, !tbaa !44
  %conv1487 = zext i16 %201 to i32
  %add1492 = add nuw nsw i32 %conv1487, %conv1480
  %202 = load i32, i32* %arrayidx1080, align 8, !tbaa !11
  %add1494 = add nsw i32 %add1492, %202
  store i32 %add1494, i32* %arrayidx1080, align 8, !tbaa !11
  %203 = load i16, i16* %arrayidx1368, align 2, !tbaa !44
  %conv1498 = zext i16 %203 to i32
  %add1499 = add nsw i32 %bmy.266150, 2
  %mul1500 = shl nsw i32 %add1499, 2
  %arrayidx1501 = getelementptr inbounds i16, i16* %add.ptr42, i32 %mul1500
  %204 = load i16, i16* %arrayidx1501, align 2, !tbaa !44
  %conv1502 = zext i16 %204 to i32
  %add1503 = add nuw nsw i32 %conv1502, %conv1498
  %205 = load i32, i32* %arrayidx1091, align 4, !tbaa !11
  %add1505 = add nsw i32 %add1503, %205
  store i32 %add1505, i32* %arrayidx1091, align 4, !tbaa !11
  %cmp1507 = icmp slt i32 %add1472, %bcost.54
  %spec.select5987 = select i1 %cmp1507, i32 %add1472, i32 %bcost.54
  %206 = or i1 %cmp1435, %cmp1507
  %spec.select5988 = select i1 %206, i32 %bmy.266150, i32 %spec.select5985
  %spec.select5989 = select i1 %cmp1507, i32 %add1462, i32 %bmx.30
  %cmp1515 = icmp slt i32 %add1483, %spec.select5987
  %bcost.56 = select i1 %cmp1515, i32 %add1483, i32 %spec.select5987
  %bmx.32 = select i1 %cmp1515, i32 %add1377, i32 %spec.select5989
  %cmp1523 = icmp slt i32 %add1494, %bcost.56
  %spec.select5990 = select i1 %cmp1523, i32 %add1494, i32 %bcost.56
  %207 = or i1 %cmp1515, %cmp1523
  %spec.select5991 = select i1 %207, i32 %add1477, i32 %spec.select5988
  %spec.select5992 = select i1 %cmp1523, i32 %add1388, i32 %bmx.32
  %cmp1531 = icmp slt i32 %add1505, %spec.select5990
  %bcost.58 = select i1 %cmp1531, i32 %add1505, i32 %spec.select5990
  %bmy.34 = select i1 %cmp1531, i32 %add1499, i32 %spec.select5991
  %bmx.34 = select i1 %cmp1531, i32 %bmx.266155, i32 %spec.select5992
  %cmp1538 = icmp eq i32 %bcost.58, %bcost.9
  %shr1543 = lshr i32 500, %conv1341
  %cmp1544 = icmp slt i32 %bcost.58, %shr1543
  %or.cond6167 = and i1 %cmp1538, %cmp1544
  br i1 %or.cond6167, label %sw.epilog, label %if.end1547

if.end1547:                                       ; preds = %if.then1345
  %cmp1548 = icmp eq i32 %bcost.58, %bcost.45
  br i1 %cmp1548, label %if.then1550, label %if.end2147

if.then1550:                                      ; preds = %if.end1547
  %shr1551 = ashr i32 %4, 1
  %or1552 = or i32 %shr1551, 1
  %sub1554 = sub nsw i32 %conv24, %bmx.266155
  %sub1555 = sub nsw i32 %bmx.266155, %conv14
  %cmp1556 = icmp slt i32 %sub1554, %sub1555
  %sub1554.sub1555 = select i1 %cmp1556, i32 %sub1554, i32 %sub1555
  %cmp1560 = icmp sgt i32 %or1552, %sub1554.sub1555
  br i1 %cmp1560, label %if.end1679, label %for.cond1563.preheader

for.cond1563.preheader:                           ; preds = %if.then1550
  %sub1564 = add nsw i32 %or1552, -2
  %cmp15656254 = icmp sgt i32 %or1552, 5
  br i1 %cmp15656254, label %for.body1567, label %if.end1679

for.body1567:                                     ; preds = %for.cond1563.preheader, %for.body1567
  %bmx.356258 = phi i32 [ %bmx.39, %for.body1567 ], [ %bmx.34, %for.cond1563.preheader ]
  %bmy.356257 = phi i32 [ %bmy.39, %for.body1567 ], [ %bmy.34, %for.cond1563.preheader ]
  %bcost.596256 = phi i32 [ %bcost.63, %for.body1567 ], [ %bcost.45, %for.cond1563.preheader ]
  %i1553.06255 = phi i32 [ %add1677, %for.body1567 ], [ 3, %for.cond1563.preheader ]
  %208 = load void (i8*, i8*, i8*, i8*, i8*, i32, i32*)*, void (i8*, i8*, i8*, i8*, i8*, i32, i32*)** %arrayidx1035, align 4, !tbaa !42
  %add.ptr1575 = getelementptr inbounds i8, i8* %add.ptr1349, i32 %i1553.06255
  %sub1578 = sub nsw i32 0, %i1553.06255
  %add.ptr1579 = getelementptr inbounds i8, i8* %add.ptr1349, i32 %sub1578
  %add1582 = add nuw nsw i32 %i1553.06255, 2
  %add.ptr1583 = getelementptr inbounds i8, i8* %add.ptr1349, i32 %add1582
  %sub1587 = sub nuw nsw i32 -2, %i1553.06255
  %add.ptr1588 = getelementptr inbounds i8, i8* %add.ptr1349, i32 %sub1587
  call void %208(i8* %5, i8* nonnull %add.ptr1575, i8* %add.ptr1579, i8* nonnull %add.ptr1583, i8* nonnull %add.ptr1588, i32 %3, i32* nonnull %arraydecay1048) #3
  %add1592 = add nsw i32 %i1553.06255, %bmx.266155
  %mul1593 = shl nsw i32 %add1592, 2
  %arrayidx1594 = getelementptr inbounds i16, i16* %add.ptr, i32 %mul1593
  %209 = load i16, i16* %arrayidx1594, align 2, !tbaa !44
  %conv1595 = zext i16 %209 to i32
  %210 = load i16, i16* %arrayidx1405, align 2, !tbaa !44
  %conv1599 = zext i16 %210 to i32
  %add1600 = add nuw nsw i32 %conv1599, %conv1595
  %211 = load i32, i32* %arraydecay1048, align 16, !tbaa !11
  %add1602 = add nsw i32 %add1600, %211
  store i32 %add1602, i32* %arraydecay1048, align 16, !tbaa !11
  %add1604 = sub i32 %bmx.266155, %i1553.06255
  %mul1605 = shl nsw i32 %add1604, 2
  %arrayidx1606 = getelementptr inbounds i16, i16* %add.ptr, i32 %mul1605
  %212 = load i16, i16* %arrayidx1606, align 2, !tbaa !44
  %conv1607 = zext i16 %212 to i32
  %add1612 = add nuw nsw i32 %conv1607, %conv1599
  %213 = load i32, i32* %arrayidx1069, align 4, !tbaa !11
  %add1614 = add nsw i32 %add1612, %213
  store i32 %add1614, i32* %arrayidx1069, align 4, !tbaa !11
  %add1616 = add nsw i32 %add1582, %bmx.266155
  %mul1617 = shl nsw i32 %add1616, 2
  %arrayidx1618 = getelementptr inbounds i16, i16* %add.ptr, i32 %mul1617
  %214 = load i16, i16* %arrayidx1618, align 2, !tbaa !44
  %conv1619 = zext i16 %214 to i32
  %add1624 = add nuw nsw i32 %conv1619, %conv1599
  %215 = load i32, i32* %arrayidx1080, align 8, !tbaa !11
  %add1626 = add nsw i32 %add1624, %215
  store i32 %add1626, i32* %arrayidx1080, align 8, !tbaa !11
  %add1629 = add nsw i32 %sub1587, %bmx.266155
  %mul1630 = shl nsw i32 %add1629, 2
  %arrayidx1631 = getelementptr inbounds i16, i16* %add.ptr, i32 %mul1630
  %216 = load i16, i16* %arrayidx1631, align 2, !tbaa !44
  %conv1632 = zext i16 %216 to i32
  %add1637 = add nuw nsw i32 %conv1632, %conv1599
  %217 = load i32, i32* %arrayidx1091, align 4, !tbaa !11
  %add1639 = add nsw i32 %add1637, %217
  store i32 %add1639, i32* %arrayidx1091, align 4, !tbaa !11
  %cmp1641 = icmp slt i32 %add1602, %bcost.596256
  %spec.select5993 = select i1 %cmp1641, i32 %add1602, i32 %bcost.596256
  %spec.select5995 = select i1 %cmp1641, i32 %add1592, i32 %bmx.356258
  %cmp1649 = icmp slt i32 %add1614, %spec.select5993
  %bcost.61 = select i1 %cmp1649, i32 %add1614, i32 %spec.select5993
  %218 = or i1 %cmp1641, %cmp1649
  %bmx.37 = select i1 %cmp1649, i32 %add1604, i32 %spec.select5995
  %cmp1658 = icmp slt i32 %add1626, %bcost.61
  %spec.select5996 = select i1 %cmp1658, i32 %add1626, i32 %bcost.61
  %219 = or i1 %218, %cmp1658
  %spec.select5998 = select i1 %cmp1658, i32 %add1616, i32 %bmx.37
  %cmp1667 = icmp slt i32 %add1639, %spec.select5996
  %bcost.63 = select i1 %cmp1667, i32 %add1639, i32 %spec.select5996
  %220 = or i1 %219, %cmp1667
  %bmy.39 = select i1 %220, i32 %bmy.266150, i32 %bmy.356257
  %bmx.39 = select i1 %cmp1667, i32 %add1629, i32 %spec.select5998
  %add1677 = add nuw nsw i32 %i1553.06255, 4
  %cmp1565 = icmp slt i32 %add1677, %sub1564
  br i1 %cmp1565, label %for.body1567, label %if.end1679

if.end1679:                                       ; preds = %for.body1567, %for.cond1563.preheader, %if.then1550
  %i1553.1 = phi i32 [ 3, %if.then1550 ], [ 3, %for.cond1563.preheader ], [ %add1677, %for.body1567 ]
  %bcost.64 = phi i32 [ %bcost.45, %if.then1550 ], [ %bcost.45, %for.cond1563.preheader ], [ %bcost.63, %for.body1567 ]
  %bmy.40 = phi i32 [ %bmy.34, %if.then1550 ], [ %bmy.34, %for.cond1563.preheader ], [ %bmy.39, %for.body1567 ]
  %bmx.40 = phi i32 [ %bmx.34, %if.then1550 ], [ %bmx.34, %for.cond1563.preheader ], [ %bmx.39, %for.body1567 ]
  %cmp16816246 = icmp slt i32 %i1553.1, %or1552
  br i1 %cmp16816246, label %for.body1683.lr.ph, label %for.end1748

for.body1683.lr.ph:                               ; preds = %if.end1679
  %arrayidx1692 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 92, i32 7, i32 %0
  br label %for.body1683

for.body1683:                                     ; preds = %for.body1683.lr.ph, %for.inc1746
  %bmx.416250 = phi i32 [ %bmx.40, %for.body1683.lr.ph ], [ %bmx.45, %for.inc1746 ]
  %bmy.416249 = phi i32 [ %bmy.40, %for.body1683.lr.ph ], [ %bmy.45, %for.inc1746 ]
  %bcost.656248 = phi i32 [ %bcost.64, %for.body1683.lr.ph ], [ %bcost.69, %for.inc1746 ]
  %i1553.26247 = phi i32 [ %i1553.1, %for.body1683.lr.ph ], [ %add1747, %for.inc1746 ]
  %add1684 = add nsw i32 %i1553.26247, %bmx.266155
  %cmp1685 = icmp sgt i32 %add1684, %conv24
  br i1 %cmp1685, label %if.end1714, label %do.body1688

do.body1688:                                      ; preds = %for.body1683
  %221 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx1692, align 4, !tbaa !42
  %add1695 = add nsw i32 %add1684, %mul1348
  %arrayidx1696 = getelementptr inbounds i8, i8* %6, i32 %add1695
  %call1697 = call i32 %221(i8* %5, i32 16, i8* %arrayidx1696, i32 %3) #3
  %mul1699 = shl nsw i32 %add1684, 2
  %arrayidx1700 = getelementptr inbounds i16, i16* %add.ptr, i32 %mul1699
  %222 = load i16, i16* %arrayidx1700, align 2, !tbaa !44
  %conv1701 = zext i16 %222 to i32
  %223 = load i16, i16* %arrayidx1405, align 2, !tbaa !44
  %conv1704 = zext i16 %223 to i32
  %add1705 = add i32 %call1697, %conv1701
  %add1706 = add i32 %add1705, %conv1704
  %cmp1707 = icmp slt i32 %add1706, %bcost.656248
  %spec.select5999 = select i1 %cmp1707, i32 %add1706, i32 %bcost.656248
  %spec.select6000 = select i1 %cmp1707, i32 %bmy.266150, i32 %bmy.416249
  %spec.select6001 = select i1 %cmp1707, i32 %add1684, i32 %bmx.416250
  br label %if.end1714

if.end1714:                                       ; preds = %for.body1683, %do.body1688
  %bcost.67 = phi i32 [ %spec.select5999, %do.body1688 ], [ %bcost.656248, %for.body1683 ]
  %bmy.43 = phi i32 [ %spec.select6000, %do.body1688 ], [ %bmy.416249, %for.body1683 ]
  %bmx.43 = phi i32 [ %spec.select6001, %do.body1688 ], [ %bmx.416250, %for.body1683 ]
  %sub1715 = sub nsw i32 %bmx.266155, %i1553.26247
  %cmp1716 = icmp slt i32 %sub1715, %conv14
  br i1 %cmp1716, label %for.inc1746, label %do.body1719

do.body1719:                                      ; preds = %if.end1714
  %224 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx1692, align 4, !tbaa !42
  %add1726 = add nsw i32 %sub1715, %mul1348
  %arrayidx1727 = getelementptr inbounds i8, i8* %6, i32 %add1726
  %call1728 = call i32 %224(i8* %5, i32 16, i8* %arrayidx1727, i32 %3) #3
  %mul1730 = shl nsw i32 %sub1715, 2
  %arrayidx1731 = getelementptr inbounds i16, i16* %add.ptr, i32 %mul1730
  %225 = load i16, i16* %arrayidx1731, align 2, !tbaa !44
  %conv1732 = zext i16 %225 to i32
  %226 = load i16, i16* %arrayidx1405, align 2, !tbaa !44
  %conv1735 = zext i16 %226 to i32
  %add1736 = add i32 %call1728, %conv1732
  %add1737 = add i32 %add1736, %conv1735
  %cmp1738 = icmp slt i32 %add1737, %bcost.67
  %spec.select6002 = select i1 %cmp1738, i32 %add1737, i32 %bcost.67
  %spec.select6003 = select i1 %cmp1738, i32 %bmy.266150, i32 %bmy.43
  %spec.select6004 = select i1 %cmp1738, i32 %sub1715, i32 %bmx.43
  br label %for.inc1746

for.inc1746:                                      ; preds = %if.end1714, %do.body1719
  %bcost.69 = phi i32 [ %spec.select6002, %do.body1719 ], [ %bcost.67, %if.end1714 ]
  %bmy.45 = phi i32 [ %spec.select6003, %do.body1719 ], [ %bmy.43, %if.end1714 ]
  %bmx.45 = phi i32 [ %spec.select6004, %do.body1719 ], [ %bmx.43, %if.end1714 ]
  %add1747 = add nuw nsw i32 %i1553.26247, 2
  %cmp1681 = icmp slt i32 %add1747, %or1552
  br i1 %cmp1681, label %for.body1683, label %for.end1748

for.end1748:                                      ; preds = %for.inc1746, %if.end1679
  %bcost.65.lcssa = phi i32 [ %bcost.64, %if.end1679 ], [ %bcost.69, %for.inc1746 ]
  %bmy.41.lcssa = phi i32 [ %bmy.40, %if.end1679 ], [ %bmy.45, %for.inc1746 ]
  %bmx.41.lcssa = phi i32 [ %bmx.40, %if.end1679 ], [ %bmx.45, %for.inc1746 ]
  %sub1749 = sub nsw i32 %conv29, %bmy.266150
  %sub1750 = sub nsw i32 %bmy.266150, %conv19
  %cmp1751 = icmp slt i32 %sub1749, %sub1750
  %sub1749.sub1750 = select i1 %cmp1751, i32 %sub1749, i32 %sub1750
  %cmp1759 = icmp sgt i32 %or1552, %sub1749.sub1750
  br i1 %cmp1759, label %if.end1878, label %for.cond1762.preheader

for.cond1762.preheader:                           ; preds = %for.end1748
  %sub1763 = add nsw i32 %or1552, -2
  %cmp17646237 = icmp sgt i32 %or1552, 5
  br i1 %cmp17646237, label %for.body1766, label %if.end1878

for.body1766:                                     ; preds = %for.cond1762.preheader, %for.body1766
  %bmx.466241 = phi i32 [ %bmx.50, %for.body1766 ], [ %bmx.41.lcssa, %for.cond1762.preheader ]
  %bmy.466240 = phi i32 [ %bmy.50, %for.body1766 ], [ %bmy.41.lcssa, %for.cond1762.preheader ]
  %bcost.706239 = phi i32 [ %bcost.74, %for.body1766 ], [ %bcost.65.lcssa, %for.cond1762.preheader ]
  %i1553.36238 = phi i32 [ %add1876, %for.body1766 ], [ 3, %for.cond1762.preheader ]
  %227 = load void (i8*, i8*, i8*, i8*, i8*, i32, i32*)*, void (i8*, i8*, i8*, i8*, i8*, i32, i32*)** %arrayidx1035, align 4, !tbaa !42
  %mul1775 = mul i32 %i1553.36238, %3
  %add.ptr1776 = getelementptr inbounds i8, i8* %add.ptr1349, i32 %mul1775
  %mul1779 = sub i32 0, %mul1775
  %add.ptr1780 = getelementptr inbounds i8, i8* %add.ptr1349, i32 %mul1779
  %add1782 = add nuw nsw i32 %i1553.36238, 2
  %mul1783 = mul nsw i32 %add1782, %3
  %add.ptr1784 = getelementptr inbounds i8, i8* %add.ptr1349, i32 %mul1783
  %sub1787 = sub nuw nsw i32 -2, %i1553.36238
  %mul1788 = mul nsw i32 %sub1787, %3
  %add.ptr1789 = getelementptr inbounds i8, i8* %add.ptr1349, i32 %mul1788
  call void %227(i8* %5, i8* %add.ptr1776, i8* %add.ptr1780, i8* %add.ptr1784, i8* %add.ptr1789, i32 %3, i32* nonnull %arraydecay1048) #3
  %228 = load i16, i16* %arrayidx1368, align 2, !tbaa !44
  %conv1794 = zext i16 %228 to i32
  %add1795 = add nsw i32 %i1553.36238, %bmy.266150
  %mul1796 = shl nsw i32 %add1795, 2
  %arrayidx1797 = getelementptr inbounds i16, i16* %add.ptr42, i32 %mul1796
  %229 = load i16, i16* %arrayidx1797, align 2, !tbaa !44
  %conv1798 = zext i16 %229 to i32
  %add1799 = add nuw nsw i32 %conv1798, %conv1794
  %230 = load i32, i32* %arraydecay1048, align 16, !tbaa !11
  %add1801 = add nsw i32 %add1799, %230
  store i32 %add1801, i32* %arraydecay1048, align 16, !tbaa !11
  %add1807 = sub i32 %bmy.266150, %i1553.36238
  %mul1808 = shl nsw i32 %add1807, 2
  %arrayidx1809 = getelementptr inbounds i16, i16* %add.ptr42, i32 %mul1808
  %231 = load i16, i16* %arrayidx1809, align 2, !tbaa !44
  %conv1810 = zext i16 %231 to i32
  %add1811 = add nuw nsw i32 %conv1810, %conv1794
  %232 = load i32, i32* %arrayidx1069, align 4, !tbaa !11
  %add1813 = add nsw i32 %add1811, %232
  store i32 %add1813, i32* %arrayidx1069, align 4, !tbaa !11
  %add1819 = add nsw i32 %add1782, %bmy.266150
  %mul1820 = shl nsw i32 %add1819, 2
  %arrayidx1821 = getelementptr inbounds i16, i16* %add.ptr42, i32 %mul1820
  %233 = load i16, i16* %arrayidx1821, align 2, !tbaa !44
  %conv1822 = zext i16 %233 to i32
  %add1823 = add nuw nsw i32 %conv1822, %conv1794
  %234 = load i32, i32* %arrayidx1080, align 8, !tbaa !11
  %add1825 = add nsw i32 %add1823, %234
  store i32 %add1825, i32* %arrayidx1080, align 8, !tbaa !11
  %add1832 = add nsw i32 %sub1787, %bmy.266150
  %mul1833 = shl nsw i32 %add1832, 2
  %arrayidx1834 = getelementptr inbounds i16, i16* %add.ptr42, i32 %mul1833
  %235 = load i16, i16* %arrayidx1834, align 2, !tbaa !44
  %conv1835 = zext i16 %235 to i32
  %add1836 = add nuw nsw i32 %conv1835, %conv1794
  %236 = load i32, i32* %arrayidx1091, align 4, !tbaa !11
  %add1838 = add nsw i32 %add1836, %236
  store i32 %add1838, i32* %arrayidx1091, align 4, !tbaa !11
  %cmp1840 = icmp slt i32 %add1801, %bcost.706239
  %spec.select6005 = select i1 %cmp1840, i32 %add1801, i32 %bcost.706239
  %spec.select6006 = select i1 %cmp1840, i32 %add1795, i32 %bmy.466240
  %cmp1848 = icmp slt i32 %add1813, %spec.select6005
  %bcost.72 = select i1 %cmp1848, i32 %add1813, i32 %spec.select6005
  %bmy.48 = select i1 %cmp1848, i32 %add1807, i32 %spec.select6006
  %237 = or i1 %cmp1840, %cmp1848
  %cmp1857 = icmp slt i32 %add1825, %bcost.72
  %spec.select6008 = select i1 %cmp1857, i32 %add1825, i32 %bcost.72
  %spec.select6009 = select i1 %cmp1857, i32 %add1819, i32 %bmy.48
  %238 = or i1 %237, %cmp1857
  %cmp1866 = icmp slt i32 %add1838, %spec.select6008
  %bcost.74 = select i1 %cmp1866, i32 %add1838, i32 %spec.select6008
  %bmy.50 = select i1 %cmp1866, i32 %add1832, i32 %spec.select6009
  %239 = or i1 %238, %cmp1866
  %bmx.50 = select i1 %239, i32 %bmx.266155, i32 %bmx.466241
  %add1876 = add nuw nsw i32 %i1553.36238, 4
  %cmp1764 = icmp slt i32 %add1876, %sub1763
  br i1 %cmp1764, label %for.body1766, label %if.end1878

if.end1878:                                       ; preds = %for.body1766, %for.cond1762.preheader, %for.end1748
  %i1553.4 = phi i32 [ 3, %for.end1748 ], [ 3, %for.cond1762.preheader ], [ %add1876, %for.body1766 ]
  %bcost.75 = phi i32 [ %bcost.65.lcssa, %for.end1748 ], [ %bcost.65.lcssa, %for.cond1762.preheader ], [ %bcost.74, %for.body1766 ]
  %bmy.51 = phi i32 [ %bmy.41.lcssa, %for.end1748 ], [ %bmy.41.lcssa, %for.cond1762.preheader ], [ %bmy.50, %for.body1766 ]
  %bmx.51 = phi i32 [ %bmx.41.lcssa, %for.end1748 ], [ %bmx.41.lcssa, %for.cond1762.preheader ], [ %bmx.50, %for.body1766 ]
  %cmp18806229 = icmp slt i32 %i1553.4, %or1552
  br i1 %cmp18806229, label %for.body1882.lr.ph, label %for.end1947

for.body1882.lr.ph:                               ; preds = %if.end1878
  %arrayidx1891 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 92, i32 7, i32 %0
  br label %for.body1882

for.body1882:                                     ; preds = %for.body1882.lr.ph, %for.inc1945
  %bmx.526233 = phi i32 [ %bmx.51, %for.body1882.lr.ph ], [ %bmx.56, %for.inc1945 ]
  %bmy.526232 = phi i32 [ %bmy.51, %for.body1882.lr.ph ], [ %bmy.56, %for.inc1945 ]
  %bcost.766231 = phi i32 [ %bcost.75, %for.body1882.lr.ph ], [ %bcost.80, %for.inc1945 ]
  %i1553.56230 = phi i32 [ %i1553.4, %for.body1882.lr.ph ], [ %add1946, %for.inc1945 ]
  %add1883 = add nsw i32 %i1553.56230, %bmy.266150
  %cmp1884 = icmp sgt i32 %add1883, %conv29
  br i1 %cmp1884, label %if.end1913, label %do.body1887

do.body1887:                                      ; preds = %for.body1882
  %240 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx1891, align 4, !tbaa !42
  %mul1893 = mul nsw i32 %add1883, %3
  %add1894 = add nsw i32 %mul1893, %bmx.266155
  %arrayidx1895 = getelementptr inbounds i8, i8* %6, i32 %add1894
  %call1896 = call i32 %240(i8* %5, i32 16, i8* %arrayidx1895, i32 %3) #3
  %241 = load i16, i16* %arrayidx1368, align 2, !tbaa !44
  %conv1899 = zext i16 %241 to i32
  %mul1901 = shl nsw i32 %add1883, 2
  %arrayidx1902 = getelementptr inbounds i16, i16* %add.ptr42, i32 %mul1901
  %242 = load i16, i16* %arrayidx1902, align 2, !tbaa !44
  %conv1903 = zext i16 %242 to i32
  %add1904 = add i32 %call1896, %conv1899
  %add1905 = add i32 %add1904, %conv1903
  %cmp1906 = icmp slt i32 %add1905, %bcost.766231
  %spec.select6011 = select i1 %cmp1906, i32 %add1905, i32 %bcost.766231
  %spec.select6012 = select i1 %cmp1906, i32 %add1883, i32 %bmy.526232
  %spec.select6013 = select i1 %cmp1906, i32 %bmx.266155, i32 %bmx.526233
  br label %if.end1913

if.end1913:                                       ; preds = %for.body1882, %do.body1887
  %bcost.78 = phi i32 [ %spec.select6011, %do.body1887 ], [ %bcost.766231, %for.body1882 ]
  %bmy.54 = phi i32 [ %spec.select6012, %do.body1887 ], [ %bmy.526232, %for.body1882 ]
  %bmx.54 = phi i32 [ %spec.select6013, %do.body1887 ], [ %bmx.526233, %for.body1882 ]
  %sub1914 = sub nsw i32 %bmy.266150, %i1553.56230
  %cmp1915 = icmp slt i32 %sub1914, %conv19
  br i1 %cmp1915, label %for.inc1945, label %do.body1918

do.body1918:                                      ; preds = %if.end1913
  %243 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx1891, align 4, !tbaa !42
  %mul1924 = mul nsw i32 %sub1914, %3
  %add1925 = add nsw i32 %mul1924, %bmx.266155
  %arrayidx1926 = getelementptr inbounds i8, i8* %6, i32 %add1925
  %call1927 = call i32 %243(i8* %5, i32 16, i8* %arrayidx1926, i32 %3) #3
  %244 = load i16, i16* %arrayidx1368, align 2, !tbaa !44
  %conv1930 = zext i16 %244 to i32
  %mul1932 = shl nsw i32 %sub1914, 2
  %arrayidx1933 = getelementptr inbounds i16, i16* %add.ptr42, i32 %mul1932
  %245 = load i16, i16* %arrayidx1933, align 2, !tbaa !44
  %conv1934 = zext i16 %245 to i32
  %add1935 = add i32 %call1927, %conv1930
  %add1936 = add i32 %add1935, %conv1934
  %cmp1937 = icmp slt i32 %add1936, %bcost.78
  %spec.select6014 = select i1 %cmp1937, i32 %add1936, i32 %bcost.78
  %spec.select6015 = select i1 %cmp1937, i32 %sub1914, i32 %bmy.54
  %spec.select6016 = select i1 %cmp1937, i32 %bmx.266155, i32 %bmx.54
  br label %for.inc1945

for.inc1945:                                      ; preds = %if.end1913, %do.body1918
  %bcost.80 = phi i32 [ %spec.select6014, %do.body1918 ], [ %bcost.78, %if.end1913 ]
  %bmy.56 = phi i32 [ %spec.select6015, %do.body1918 ], [ %bmy.54, %if.end1913 ]
  %bmx.56 = phi i32 [ %spec.select6016, %do.body1918 ], [ %bmx.54, %if.end1913 ]
  %add1946 = add nuw nsw i32 %i1553.56230, 2
  %cmp1880 = icmp slt i32 %add1946, %or1552
  br i1 %cmp1880, label %for.body1882, label %for.end1947

for.end1947:                                      ; preds = %for.inc1945, %if.end1878
  %bcost.76.lcssa = phi i32 [ %bcost.75, %if.end1878 ], [ %bcost.80, %for.inc1945 ]
  %bmy.52.lcssa = phi i32 [ %bmy.51, %if.end1878 ], [ %bmy.56, %for.inc1945 ]
  %bmx.52.lcssa = phi i32 [ %bmx.51, %if.end1878 ], [ %bmx.56, %for.inc1945 ]
  %246 = load void (i8*, i8*, i8*, i8*, i8*, i32, i32*)*, void (i8*, i8*, i8*, i8*, i8*, i32, i32*)** %arrayidx1035, align 4, !tbaa !42
  %add.ptr1957 = getelementptr inbounds i8, i8* %add.ptr1356, i32 %mul1354
  %add.ptr1960 = getelementptr inbounds i8, i8* %add.ptr1359, i32 %mul1354
  %add.ptr1963 = getelementptr inbounds i8, i8* %add.ptr1362, i32 %mul1037
  %add.ptr1966 = getelementptr inbounds i8, i8* %add.ptr1449, i32 %mul1037
  call void %246(i8* %5, i8* nonnull %add.ptr1957, i8* nonnull %add.ptr1960, i8* nonnull %add.ptr1963, i8* nonnull %add.ptr1966, i32 %3, i32* nonnull %arraydecay1048) #3
  %247 = load i16, i16* %arrayidx1379, align 2, !tbaa !44
  %conv1971 = zext i16 %247 to i32
  %248 = load i16, i16* %arrayidx1372, align 2, !tbaa !44
  %conv1975 = zext i16 %248 to i32
  %add1976 = add nuw nsw i32 %conv1975, %conv1971
  %249 = load i32, i32* %arraydecay1048, align 16, !tbaa !11
  %add1978 = add nsw i32 %add1976, %249
  store i32 %add1978, i32* %arraydecay1048, align 16, !tbaa !11
  %250 = load i16, i16* %arrayidx1390, align 2, !tbaa !44
  %conv1982 = zext i16 %250 to i32
  %add1987 = add nuw nsw i32 %conv1982, %conv1975
  %251 = load i32, i32* %arrayidx1069, align 4, !tbaa !11
  %add1989 = add nsw i32 %add1987, %251
  store i32 %add1989, i32* %arrayidx1069, align 4, !tbaa !11
  %252 = load i16, i16* %arrayidx1401, align 2, !tbaa !44
  %conv1993 = zext i16 %252 to i32
  %253 = load i16, i16* %arrayidx1383, align 2, !tbaa !44
  %conv1997 = zext i16 %253 to i32
  %add1998 = add nuw nsw i32 %conv1997, %conv1993
  %254 = load i32, i32* %arrayidx1080, align 8, !tbaa !11
  %add2000 = add nsw i32 %add1998, %254
  store i32 %add2000, i32* %arrayidx1080, align 8, !tbaa !11
  %255 = load i16, i16* %arrayidx1464, align 2, !tbaa !44
  %conv2004 = zext i16 %255 to i32
  %add2009 = add nuw nsw i32 %conv2004, %conv1997
  %256 = load i32, i32* %arrayidx1091, align 4, !tbaa !11
  %add2011 = add nsw i32 %add2009, %256
  store i32 %add2011, i32* %arrayidx1091, align 4, !tbaa !11
  %cmp2013 = icmp slt i32 %add1978, %bcost.76.lcssa
  %spec.select6017 = select i1 %cmp2013, i32 %add1978, i32 %bcost.76.lcssa
  %spec.select6019 = select i1 %cmp2013, i32 %add1377, i32 %bmx.52.lcssa
  %cmp2021 = icmp slt i32 %add1989, %spec.select6017
  %bcost.82 = select i1 %cmp2021, i32 %add1989, i32 %spec.select6017
  %257 = or i1 %cmp2013, %cmp2021
  %bmy.58 = select i1 %257, i32 %add1370, i32 %bmy.52.lcssa
  %bmx.58 = select i1 %cmp2021, i32 %add1388, i32 %spec.select6019
  %cmp2029 = icmp slt i32 %add2000, %bcost.82
  %spec.select6020 = select i1 %cmp2029, i32 %add2000, i32 %bcost.82
  %spec.select6022 = select i1 %cmp2029, i32 %add1399, i32 %bmx.58
  %cmp2037 = icmp slt i32 %add2011, %spec.select6020
  %bcost.84 = select i1 %cmp2037, i32 %add2011, i32 %spec.select6020
  %258 = or i1 %cmp2029, %cmp2037
  %bmy.60 = select i1 %258, i32 %add1381, i32 %bmy.58
  %bmx.60 = select i1 %cmp2037, i32 %add1462, i32 %spec.select6022
  %259 = load void (i8*, i8*, i8*, i8*, i8*, i32, i32*)*, void (i8*, i8*, i8*, i8*, i8*, i32, i32*)** %arrayidx1035, align 4, !tbaa !42
  %add.ptr2053 = getelementptr inbounds i8, i8* %add.ptr1362, i32 %3
  %add.ptr2056 = getelementptr inbounds i8, i8* %add.ptr1449, i32 %3
  %add.ptr2059 = getelementptr inbounds i8, i8* %add.ptr1356, i32 %mul1459
  %add.ptr2062 = getelementptr inbounds i8, i8* %add.ptr1359, i32 %mul1459
  call void %259(i8* %5, i8* nonnull %add.ptr2053, i8* nonnull %add.ptr2056, i8* nonnull %add.ptr2059, i8* nonnull %add.ptr2062, i32 %3, i32* nonnull %arraydecay1048) #3
  %260 = load i16, i16* %arrayidx1401, align 2, !tbaa !44
  %conv2067 = zext i16 %260 to i32
  %261 = load i16, i16* %arrayidx1479, align 2, !tbaa !44
  %conv2071 = zext i16 %261 to i32
  %add2072 = add nuw nsw i32 %conv2071, %conv2067
  %262 = load i32, i32* %arraydecay1048, align 16, !tbaa !11
  %add2074 = add nsw i32 %add2072, %262
  store i32 %add2074, i32* %arraydecay1048, align 16, !tbaa !11
  %263 = load i16, i16* %arrayidx1464, align 2, !tbaa !44
  %conv2078 = zext i16 %263 to i32
  %add2083 = add nuw nsw i32 %conv2078, %conv2071
  %264 = load i32, i32* %arrayidx1069, align 4, !tbaa !11
  %add2085 = add nsw i32 %add2083, %264
  store i32 %add2085, i32* %arrayidx1069, align 4, !tbaa !11
  %265 = load i16, i16* %arrayidx1379, align 2, !tbaa !44
  %conv2089 = zext i16 %265 to i32
  %266 = load i16, i16* %arrayidx1501, align 2, !tbaa !44
  %conv2093 = zext i16 %266 to i32
  %add2094 = add nuw nsw i32 %conv2093, %conv2089
  %267 = load i32, i32* %arrayidx1080, align 8, !tbaa !11
  %add2096 = add nsw i32 %add2094, %267
  store i32 %add2096, i32* %arrayidx1080, align 8, !tbaa !11
  %268 = load i16, i16* %arrayidx1390, align 2, !tbaa !44
  %conv2100 = zext i16 %268 to i32
  %add2105 = add nuw nsw i32 %conv2100, %conv2093
  %269 = load i32, i32* %arrayidx1091, align 4, !tbaa !11
  %add2107 = add nsw i32 %add2105, %269
  store i32 %add2107, i32* %arrayidx1091, align 4, !tbaa !11
  %cmp2109 = icmp slt i32 %add2074, %bcost.84
  %spec.select6023 = select i1 %cmp2109, i32 %add2074, i32 %bcost.84
  %spec.select6025 = select i1 %cmp2109, i32 %add1399, i32 %bmx.60
  %cmp2117 = icmp slt i32 %add2085, %spec.select6023
  %bcost.86 = select i1 %cmp2117, i32 %add2085, i32 %spec.select6023
  %270 = or i1 %cmp2109, %cmp2117
  %bmy.62 = select i1 %270, i32 %add1477, i32 %bmy.60
  %bmx.62 = select i1 %cmp2117, i32 %add1462, i32 %spec.select6025
  %cmp2125 = icmp slt i32 %add2096, %bcost.86
  %spec.select6026 = select i1 %cmp2125, i32 %add2096, i32 %bcost.86
  %spec.select6028 = select i1 %cmp2125, i32 %add1377, i32 %bmx.62
  %cmp2133 = icmp slt i32 %add2107, %spec.select6026
  %bcost.88 = select i1 %cmp2133, i32 %add2107, i32 %spec.select6026
  %271 = or i1 %cmp2125, %cmp2133
  %bmy.64 = select i1 %271, i32 %add1499, i32 %bmy.62
  %bmx.64 = select i1 %cmp2133, i32 %add1388, i32 %spec.select6028
  %cmp2140 = icmp eq i32 %bcost.88, %bcost.45
  %add2144 = add nsw i32 %or1552, 2
  br i1 %cmp2140, label %sw.epilog, label %if.end2147

if.end2147:                                       ; preds = %for.end1947, %if.end1547, %land.lhs.true1339, %if.end1332
  %bmx.266157 = phi i32 [ %bmx.266155, %for.end1947 ], [ %bmx.266155, %if.end1547 ], [ %bmx.266155, %land.lhs.true1339 ], [ %bmx.25, %if.end1332 ]
  %bmy.266152 = phi i32 [ %bmy.266150, %for.end1947 ], [ %bmy.266150, %if.end1547 ], [ %bmy.266150, %land.lhs.true1339 ], [ %bmy.25, %if.end1332 ]
  %cross_start.2 = phi i32 [ %add2144, %for.end1947 ], [ 3, %if.end1547 ], [ 3, %land.lhs.true1339 ], [ 1, %if.end1332 ]
  %bcost.89 = phi i32 [ %bcost.88, %for.end1947 ], [ %bcost.58, %if.end1547 ], [ %bcost.45, %land.lhs.true1339 ], [ %bcost.49, %if.end1332 ]
  %bmy.65 = phi i32 [ %bmy.64, %for.end1947 ], [ %bmy.34, %if.end1547 ], [ %bmy.266150, %land.lhs.true1339 ], [ %bmy.25, %if.end1332 ]
  %bmx.65 = phi i32 [ %bmx.64, %for.end1947 ], [ %bmx.34, %if.end1547 ], [ %bmx.266155, %land.lhs.true1339 ], [ %bmx.25, %if.end1332 ]
  switch i32 %i_mvc, label %if.else2175 [
    i32 0, label %if.end2249
    i32 1, label %if.then2152
  ]

if.then2152:                                      ; preds = %if.end2147
  %cmp2153 = icmp eq i32 %0, 0
  br i1 %cmp2153, label %if.end2201, label %if.else2156

if.else2156:                                      ; preds = %if.then2152
  %272 = load i16, i16* %arrayidx35, align 4, !tbaa !44
  %conv2159 = sext i16 %272 to i32
  %arrayidx2161 = getelementptr inbounds [2 x i16], [2 x i16]* %mvc, i32 0, i32 0
  %273 = load i16, i16* %arrayidx2161, align 2, !tbaa !44
  %conv2162 = sext i16 %273 to i32
  %sub2163 = sub nsw i32 %conv2159, %conv2162
  %274 = icmp slt i32 %sub2163, 0
  %neg5940 = sub nsw i32 0, %sub2163
  %275 = select i1 %274, i32 %neg5940, i32 %sub2163
  %276 = load i16, i16* %arrayidx39, align 2, !tbaa !44
  %conv2167 = sext i16 %276 to i32
  %arrayidx2169 = getelementptr inbounds [2 x i16], [2 x i16]* %mvc, i32 0, i32 1
  %277 = load i16, i16* %arrayidx2169, align 2, !tbaa !44
  %conv2170 = sext i16 %277 to i32
  %sub2171 = sub nsw i32 %conv2167, %conv2170
  %278 = icmp slt i32 %sub2171, 0
  %neg5941 = sub nsw i32 0, %sub2171
  %279 = select i1 %278, i32 %neg5941, i32 %sub2171
  %add2173 = add nuw nsw i32 %279, %275
  br label %if.end2201

if.else2175:                                      ; preds = %if.end2147
  %sub2176 = add nsw i32 %i_mvc, -1
  %cmp2177 = icmp eq i32 %0, 0
  br i1 %cmp2177, label %if.end2198, label %if.then2179

if.then2179:                                      ; preds = %if.else2175
  %280 = load i16, i16* %arrayidx35, align 4, !tbaa !44
  %conv2182 = sext i16 %280 to i32
  %arrayidx2184 = getelementptr inbounds [2 x i16], [2 x i16]* %mvc, i32 0, i32 0
  %281 = load i16, i16* %arrayidx2184, align 2, !tbaa !44
  %conv2185 = sext i16 %281 to i32
  %sub2186 = sub nsw i32 %conv2182, %conv2185
  %282 = icmp slt i32 %sub2186, 0
  %neg = sub nsw i32 0, %sub2186
  %283 = select i1 %282, i32 %neg, i32 %sub2186
  %284 = load i16, i16* %arrayidx39, align 2, !tbaa !44
  %conv2190 = sext i16 %284 to i32
  %arrayidx2192 = getelementptr inbounds [2 x i16], [2 x i16]* %mvc, i32 0, i32 1
  %285 = load i16, i16* %arrayidx2192, align 2, !tbaa !44
  %conv2193 = sext i16 %285 to i32
  %sub2194 = sub nsw i32 %conv2190, %conv2193
  %286 = icmp slt i32 %sub2194, 0
  %neg5939 = sub nsw i32 0, %sub2194
  %287 = select i1 %286, i32 %neg5939, i32 %sub2194
  %add2196 = add nuw nsw i32 %287, %283
  br label %if.end2198

if.end2198:                                       ; preds = %if.else2175, %if.then2179
  %denom.0 = phi i32 [ %i_mvc, %if.then2179 ], [ %sub2176, %if.else2175 ]
  %mvd.0 = phi i32 [ %add2196, %if.then2179 ], [ 0, %if.else2175 ]
  %cmp29.i = icmp sgt i32 %i_mvc, 1
  br i1 %cmp29.i, label %for.body.preheader.i, label %x264_predictor_difference.exit

for.body.preheader.i:                             ; preds = %if.end2198
  %arrayidx1.phi.trans.insert.i = getelementptr inbounds [2 x i16], [2 x i16]* %mvc, i32 0, i32 0
  %.pre.i = load i16, i16* %arrayidx1.phi.trans.insert.i, align 2, !tbaa !44
  %arrayidx7.phi.trans.insert.i = getelementptr inbounds [2 x i16], [2 x i16]* %mvc, i32 0, i32 1
  %.pre32.i = load i16, i16* %arrayidx7.phi.trans.insert.i, align 2, !tbaa !44
  br label %for.body.i6143

for.body.i6143:                                   ; preds = %for.body.i6143, %for.body.preheader.i
  %288 = phi i16 [ %293, %for.body.i6143 ], [ %.pre32.i, %for.body.preheader.i ]
  %289 = phi i16 [ %290, %for.body.i6143 ], [ %.pre.i, %for.body.preheader.i ]
  %i.031.i = phi i32 [ %add.i6139, %for.body.i6143 ], [ 0, %for.body.preheader.i ]
  %sum.030.i = phi i32 [ %add16.i, %for.body.i6143 ], [ 0, %for.body.preheader.i ]
  %conv.i6138 = sext i16 %289 to i32
  %add.i6139 = add nuw nsw i32 %i.031.i, 1
  %arrayidx3.i6140 = getelementptr inbounds [2 x i16], [2 x i16]* %mvc, i32 %add.i6139, i32 0
  %290 = load i16, i16* %arrayidx3.i6140, align 2, !tbaa !44
  %conv4.i6141 = sext i16 %290 to i32
  %sub5.i = sub nsw i32 %conv.i6138, %conv4.i6141
  %291 = icmp slt i32 %sub5.i, 0
  %neg.i = sub nsw i32 0, %sub5.i
  %292 = select i1 %291, i32 %neg.i, i32 %sub5.i
  %conv8.i = sext i16 %288 to i32
  %arrayidx11.i = getelementptr inbounds [2 x i16], [2 x i16]* %mvc, i32 %add.i6139, i32 1
  %293 = load i16, i16* %arrayidx11.i, align 2, !tbaa !44
  %conv12.i = sext i16 %293 to i32
  %sub13.i = sub nsw i32 %conv8.i, %conv12.i
  %294 = icmp slt i32 %sub13.i, 0
  %neg28.i = sub nsw i32 0, %sub13.i
  %295 = select i1 %294, i32 %neg28.i, i32 %sub13.i
  %add15.i = add i32 %292, %sum.030.i
  %add16.i = add i32 %add15.i, %295
  %exitcond.i6142 = icmp eq i32 %add.i6139, %sub2176
  br i1 %exitcond.i6142, label %x264_predictor_difference.exit, label %for.body.i6143

x264_predictor_difference.exit:                   ; preds = %for.body.i6143, %if.end2198
  %sum.0.lcssa.i = phi i32 [ 0, %if.end2198 ], [ %add16.i, %for.body.i6143 ]
  %add2200 = add nsw i32 %sum.0.lcssa.i, %mvd.0
  br label %if.end2201

if.end2201:                                       ; preds = %if.then2152, %if.else2156, %x264_predictor_difference.exit
  %denom.1 = phi i32 [ 1, %if.else2156 ], [ %denom.0, %x264_predictor_difference.exit ], [ 1, %if.then2152 ]
  %mvd.1 = phi i32 [ %add2173, %if.else2156 ], [ %add2200, %x264_predictor_difference.exit ], [ 25, %if.then2152 ]
  %arrayidx2202 = getelementptr inbounds [7 x i8], [7 x i8]* @x264_8_me_search_ref.pixel_size_shift, i32 0, i32 %0
  %296 = load i8, i8* %arrayidx2202, align 1, !tbaa !50
  %conv2203 = zext i8 %296 to i32
  %shr2204 = lshr i32 1000, %conv2203
  %cmp2205 = icmp slt i32 %bcost.89, %shr2204
  br i1 %cmp2205, label %cond.end2224, label %cond.false2208

cond.false2208:                                   ; preds = %if.end2201
  %shr2211 = lshr i32 2000, %conv2203
  %cmp2212 = icmp slt i32 %bcost.89, %shr2211
  br i1 %cmp2212, label %cond.end2224, label %cond.false2215

cond.false2215:                                   ; preds = %cond.false2208
  %shr2218 = lshr i32 4000, %conv2203
  %cmp2219 = icmp slt i32 %bcost.89, %shr2218
  %cond2221 = select i1 %cmp2219, i32 2, i32 3
  br label %cond.end2224

cond.end2224:                                     ; preds = %cond.false2215, %cond.false2208, %if.end2201
  %cond2225 = phi i32 [ 0, %if.end2201 ], [ %cond2221, %cond.false2215 ], [ 1, %cond.false2208 ]
  %mul2226 = mul nsw i32 %denom.1, 10
  %cmp2227 = icmp slt i32 %mvd.1, %mul2226
  br i1 %cmp2227, label %cond.end2242, label %cond.false2230

cond.false2230:                                   ; preds = %cond.end2224
  %mul2231 = mul nsw i32 %denom.1, 20
  %cmp2232 = icmp slt i32 %mvd.1, %mul2231
  br i1 %cmp2232, label %cond.end2242, label %cond.false2235

cond.false2235:                                   ; preds = %cond.false2230
  %mul2236 = mul nsw i32 %denom.1, 40
  %cmp2237 = icmp slt i32 %mvd.1, %mul2236
  %cond2239 = select i1 %cmp2237, i32 2, i32 3
  br label %cond.end2242

cond.end2242:                                     ; preds = %cond.false2235, %cond.false2230, %cond.end2224
  %cond2243 = phi i32 [ 0, %cond.end2224 ], [ %cond2239, %cond.false2235 ], [ 1, %cond.false2230 ]
  %arrayidx2245 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* @x264_8_me_search_ref.range_mul, i32 0, i32 %cond2243, i32 %cond2225
  %297 = load i8, i8* %arrayidx2245, align 1, !tbaa !50
  %conv2246 = zext i8 %297 to i32
  %mul2247 = mul nsw i32 %4, %conv2246
  %shr2248 = ashr i32 %mul2247, 2
  br label %if.end2249

if.end2249:                                       ; preds = %if.end2147, %cond.end2242
  %i_me_range.1 = phi i32 [ %shr2248, %cond.end2242 ], [ %4, %if.end2147 ]
  %sub2251 = sub nsw i32 %conv24, %bmx.266157
  %sub2252 = sub nsw i32 %bmx.266157, %conv14
  %cmp2253 = icmp slt i32 %sub2251, %sub2252
  %sub2251.sub2252 = select i1 %cmp2253, i32 %sub2251, i32 %sub2252
  %cmp2261 = icmp sgt i32 %i_me_range.1, %sub2251.sub2252
  br i1 %cmp2261, label %if.end2380, label %for.cond2264.preheader

for.cond2264.preheader:                           ; preds = %if.end2249
  %sub2265 = add nsw i32 %i_me_range.1, -2
  %cmp22666220 = icmp slt i32 %cross_start.2, %sub2265
  br i1 %cmp22666220, label %for.body2268.lr.ph, label %if.end2380

for.body2268.lr.ph:                               ; preds = %for.cond2264.preheader
  %add.ptr2270 = getelementptr inbounds i8, i8* %6, i32 %bmx.266157
  %mul2271 = mul nsw i32 %bmy.266152, %3
  %add.ptr2272 = getelementptr inbounds i8, i8* %add.ptr2270, i32 %mul2271
  %mul2298 = shl nsw i32 %bmy.266152, 2
  %arrayidx2299 = getelementptr inbounds i16, i16* %add.ptr42, i32 %mul2298
  br label %for.body2268

for.body2268:                                     ; preds = %for.body2268.lr.ph, %for.body2268
  %bmx.666224 = phi i32 [ %bmx.65, %for.body2268.lr.ph ], [ %bmx.70, %for.body2268 ]
  %bmy.666223 = phi i32 [ %bmy.65, %for.body2268.lr.ph ], [ %bmy.70, %for.body2268 ]
  %bcost.906222 = phi i32 [ %bcost.89, %for.body2268.lr.ph ], [ %bcost.94, %for.body2268 ]
  %i2250.06221 = phi i32 [ %cross_start.2, %for.body2268.lr.ph ], [ %add2378, %for.body2268 ]
  %298 = load void (i8*, i8*, i8*, i8*, i8*, i32, i32*)*, void (i8*, i8*, i8*, i8*, i8*, i32, i32*)** %arrayidx1035, align 4, !tbaa !42
  %add.ptr2276 = getelementptr inbounds i8, i8* %add.ptr2272, i32 %i2250.06221
  %sub2279 = sub nsw i32 0, %i2250.06221
  %add.ptr2280 = getelementptr inbounds i8, i8* %add.ptr2272, i32 %sub2279
  %add2283 = add nsw i32 %i2250.06221, 2
  %add.ptr2284 = getelementptr inbounds i8, i8* %add.ptr2272, i32 %add2283
  %sub2288 = sub nsw i32 -2, %i2250.06221
  %add.ptr2289 = getelementptr inbounds i8, i8* %add.ptr2272, i32 %sub2288
  call void %298(i8* %5, i8* %add.ptr2276, i8* %add.ptr2280, i8* %add.ptr2284, i8* %add.ptr2289, i32 %3, i32* nonnull %arraydecay1048) #3
  %add2293 = add nsw i32 %i2250.06221, %bmx.266157
  %mul2294 = shl nsw i32 %add2293, 2
  %arrayidx2295 = getelementptr inbounds i16, i16* %add.ptr, i32 %mul2294
  %299 = load i16, i16* %arrayidx2295, align 2, !tbaa !44
  %conv2296 = zext i16 %299 to i32
  %300 = load i16, i16* %arrayidx2299, align 2, !tbaa !44
  %conv2300 = zext i16 %300 to i32
  %add2301 = add nuw nsw i32 %conv2300, %conv2296
  %301 = load i32, i32* %arraydecay1048, align 16, !tbaa !11
  %add2303 = add nsw i32 %add2301, %301
  store i32 %add2303, i32* %arraydecay1048, align 16, !tbaa !11
  %add2305 = sub i32 %bmx.266157, %i2250.06221
  %mul2306 = shl nsw i32 %add2305, 2
  %arrayidx2307 = getelementptr inbounds i16, i16* %add.ptr, i32 %mul2306
  %302 = load i16, i16* %arrayidx2307, align 2, !tbaa !44
  %conv2308 = zext i16 %302 to i32
  %add2313 = add nuw nsw i32 %conv2308, %conv2300
  %303 = load i32, i32* %arrayidx1069, align 4, !tbaa !11
  %add2315 = add nsw i32 %add2313, %303
  store i32 %add2315, i32* %arrayidx1069, align 4, !tbaa !11
  %add2317 = add nsw i32 %add2283, %bmx.266157
  %mul2318 = shl nsw i32 %add2317, 2
  %arrayidx2319 = getelementptr inbounds i16, i16* %add.ptr, i32 %mul2318
  %304 = load i16, i16* %arrayidx2319, align 2, !tbaa !44
  %conv2320 = zext i16 %304 to i32
  %add2325 = add nuw nsw i32 %conv2320, %conv2300
  %305 = load i32, i32* %arrayidx1080, align 8, !tbaa !11
  %add2327 = add nsw i32 %add2325, %305
  store i32 %add2327, i32* %arrayidx1080, align 8, !tbaa !11
  %add2330 = add nsw i32 %sub2288, %bmx.266157
  %mul2331 = shl nsw i32 %add2330, 2
  %arrayidx2332 = getelementptr inbounds i16, i16* %add.ptr, i32 %mul2331
  %306 = load i16, i16* %arrayidx2332, align 2, !tbaa !44
  %conv2333 = zext i16 %306 to i32
  %add2338 = add nuw nsw i32 %conv2333, %conv2300
  %307 = load i32, i32* %arrayidx1091, align 4, !tbaa !11
  %add2340 = add nsw i32 %add2338, %307
  store i32 %add2340, i32* %arrayidx1091, align 4, !tbaa !11
  %cmp2342 = icmp slt i32 %add2303, %bcost.906222
  %spec.select6029 = select i1 %cmp2342, i32 %add2303, i32 %bcost.906222
  %spec.select6031 = select i1 %cmp2342, i32 %add2293, i32 %bmx.666224
  %cmp2350 = icmp slt i32 %add2315, %spec.select6029
  %bcost.92 = select i1 %cmp2350, i32 %add2315, i32 %spec.select6029
  %308 = or i1 %cmp2342, %cmp2350
  %bmx.68 = select i1 %cmp2350, i32 %add2305, i32 %spec.select6031
  %cmp2359 = icmp slt i32 %add2327, %bcost.92
  %spec.select6032 = select i1 %cmp2359, i32 %add2327, i32 %bcost.92
  %309 = or i1 %308, %cmp2359
  %spec.select6034 = select i1 %cmp2359, i32 %add2317, i32 %bmx.68
  %cmp2368 = icmp slt i32 %add2340, %spec.select6032
  %bcost.94 = select i1 %cmp2368, i32 %add2340, i32 %spec.select6032
  %310 = or i1 %309, %cmp2368
  %bmy.70 = select i1 %310, i32 %bmy.266152, i32 %bmy.666223
  %bmx.70 = select i1 %cmp2368, i32 %add2330, i32 %spec.select6034
  %add2378 = add nsw i32 %i2250.06221, 4
  %cmp2266 = icmp slt i32 %add2378, %sub2265
  br i1 %cmp2266, label %for.body2268, label %if.end2380

if.end2380:                                       ; preds = %for.body2268, %for.cond2264.preheader, %if.end2249
  %i2250.1 = phi i32 [ %cross_start.2, %if.end2249 ], [ %cross_start.2, %for.cond2264.preheader ], [ %add2378, %for.body2268 ]
  %bcost.95 = phi i32 [ %bcost.89, %if.end2249 ], [ %bcost.89, %for.cond2264.preheader ], [ %bcost.94, %for.body2268 ]
  %bmy.71 = phi i32 [ %bmy.65, %if.end2249 ], [ %bmy.65, %for.cond2264.preheader ], [ %bmy.70, %for.body2268 ]
  %bmx.71 = phi i32 [ %bmx.65, %if.end2249 ], [ %bmx.65, %for.cond2264.preheader ], [ %bmx.70, %for.body2268 ]
  %cmp23826212 = icmp slt i32 %i2250.1, %i_me_range.1
  br i1 %cmp23826212, label %for.body2384.lr.ph, label %for.end2449

for.body2384.lr.ph:                               ; preds = %if.end2380
  %arrayidx2393 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 92, i32 7, i32 %0
  %mul2394 = mul nsw i32 %bmy.266152, %3
  %mul2403 = shl nsw i32 %bmy.266152, 2
  %arrayidx2404 = getelementptr inbounds i16, i16* %add.ptr42, i32 %mul2403
  br label %for.body2384

for.body2384:                                     ; preds = %for.body2384.lr.ph, %for.inc2447
  %bmx.726216 = phi i32 [ %bmx.71, %for.body2384.lr.ph ], [ %bmx.76, %for.inc2447 ]
  %bmy.726215 = phi i32 [ %bmy.71, %for.body2384.lr.ph ], [ %bmy.76, %for.inc2447 ]
  %bcost.966214 = phi i32 [ %bcost.95, %for.body2384.lr.ph ], [ %bcost.100, %for.inc2447 ]
  %i2250.26213 = phi i32 [ %i2250.1, %for.body2384.lr.ph ], [ %add2448, %for.inc2447 ]
  %add2385 = add nsw i32 %i2250.26213, %bmx.266157
  %cmp2386 = icmp sgt i32 %add2385, %conv24
  br i1 %cmp2386, label %if.end2415, label %do.body2389

do.body2389:                                      ; preds = %for.body2384
  %311 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx2393, align 4, !tbaa !42
  %add2396 = add nsw i32 %add2385, %mul2394
  %arrayidx2397 = getelementptr inbounds i8, i8* %6, i32 %add2396
  %call2398 = call i32 %311(i8* %5, i32 16, i8* %arrayidx2397, i32 %3) #3
  %mul2400 = shl nsw i32 %add2385, 2
  %arrayidx2401 = getelementptr inbounds i16, i16* %add.ptr, i32 %mul2400
  %312 = load i16, i16* %arrayidx2401, align 2, !tbaa !44
  %conv2402 = zext i16 %312 to i32
  %313 = load i16, i16* %arrayidx2404, align 2, !tbaa !44
  %conv2405 = zext i16 %313 to i32
  %add2406 = add i32 %call2398, %conv2402
  %add2407 = add i32 %add2406, %conv2405
  %cmp2408 = icmp slt i32 %add2407, %bcost.966214
  %spec.select6035 = select i1 %cmp2408, i32 %add2407, i32 %bcost.966214
  %spec.select6036 = select i1 %cmp2408, i32 %bmy.266152, i32 %bmy.726215
  %spec.select6037 = select i1 %cmp2408, i32 %add2385, i32 %bmx.726216
  br label %if.end2415

if.end2415:                                       ; preds = %for.body2384, %do.body2389
  %bcost.98 = phi i32 [ %spec.select6035, %do.body2389 ], [ %bcost.966214, %for.body2384 ]
  %bmy.74 = phi i32 [ %spec.select6036, %do.body2389 ], [ %bmy.726215, %for.body2384 ]
  %bmx.74 = phi i32 [ %spec.select6037, %do.body2389 ], [ %bmx.726216, %for.body2384 ]
  %sub2416 = sub nsw i32 %bmx.266157, %i2250.26213
  %cmp2417 = icmp slt i32 %sub2416, %conv14
  br i1 %cmp2417, label %for.inc2447, label %do.body2420

do.body2420:                                      ; preds = %if.end2415
  %314 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx2393, align 4, !tbaa !42
  %add2427 = add nsw i32 %sub2416, %mul2394
  %arrayidx2428 = getelementptr inbounds i8, i8* %6, i32 %add2427
  %call2429 = call i32 %314(i8* %5, i32 16, i8* %arrayidx2428, i32 %3) #3
  %mul2431 = shl nsw i32 %sub2416, 2
  %arrayidx2432 = getelementptr inbounds i16, i16* %add.ptr, i32 %mul2431
  %315 = load i16, i16* %arrayidx2432, align 2, !tbaa !44
  %conv2433 = zext i16 %315 to i32
  %316 = load i16, i16* %arrayidx2404, align 2, !tbaa !44
  %conv2436 = zext i16 %316 to i32
  %add2437 = add i32 %call2429, %conv2433
  %add2438 = add i32 %add2437, %conv2436
  %cmp2439 = icmp slt i32 %add2438, %bcost.98
  %spec.select6038 = select i1 %cmp2439, i32 %add2438, i32 %bcost.98
  %spec.select6039 = select i1 %cmp2439, i32 %bmy.266152, i32 %bmy.74
  %spec.select6040 = select i1 %cmp2439, i32 %sub2416, i32 %bmx.74
  br label %for.inc2447

for.inc2447:                                      ; preds = %if.end2415, %do.body2420
  %bcost.100 = phi i32 [ %spec.select6038, %do.body2420 ], [ %bcost.98, %if.end2415 ]
  %bmy.76 = phi i32 [ %spec.select6039, %do.body2420 ], [ %bmy.74, %if.end2415 ]
  %bmx.76 = phi i32 [ %spec.select6040, %do.body2420 ], [ %bmx.74, %if.end2415 ]
  %add2448 = add nsw i32 %i2250.26213, 2
  %cmp2382 = icmp slt i32 %add2448, %i_me_range.1
  br i1 %cmp2382, label %for.body2384, label %for.end2449

for.end2449:                                      ; preds = %for.inc2447, %if.end2380
  %bcost.96.lcssa = phi i32 [ %bcost.95, %if.end2380 ], [ %bcost.100, %for.inc2447 ]
  %bmy.72.lcssa = phi i32 [ %bmy.71, %if.end2380 ], [ %bmy.76, %for.inc2447 ]
  %bmx.72.lcssa = phi i32 [ %bmx.71, %if.end2380 ], [ %bmx.76, %for.inc2447 ]
  %shr2450 = ashr i32 %i_me_range.1, 1
  %sub2451 = sub nsw i32 %conv29, %bmy.266152
  %sub2452 = sub nsw i32 %bmy.266152, %conv19
  %cmp2453 = icmp slt i32 %sub2451, %sub2452
  %sub2451.sub2452 = select i1 %cmp2453, i32 %sub2451, i32 %sub2452
  %cmp2461 = icmp sgt i32 %shr2450, %sub2451.sub2452
  br i1 %cmp2461, label %if.end2581, label %for.cond2464.preheader

for.cond2464.preheader:                           ; preds = %for.end2449
  %sub2466 = add nsw i32 %shr2450, -2
  %cmp24676203 = icmp slt i32 %cross_start.2, %sub2466
  br i1 %cmp24676203, label %for.body2469.lr.ph, label %if.end2581

for.body2469.lr.ph:                               ; preds = %for.cond2464.preheader
  %add.ptr2471 = getelementptr inbounds i8, i8* %6, i32 %bmx.266157
  %mul2472 = mul nsw i32 %bmy.266152, %3
  %add.ptr2473 = getelementptr inbounds i8, i8* %add.ptr2471, i32 %mul2472
  %mul2495 = shl nsw i32 %bmx.266157, 2
  %arrayidx2496 = getelementptr inbounds i16, i16* %add.ptr, i32 %mul2495
  br label %for.body2469

for.body2469:                                     ; preds = %for.body2469.lr.ph, %for.body2469
  %bmx.776207 = phi i32 [ %bmx.72.lcssa, %for.body2469.lr.ph ], [ %bmx.81, %for.body2469 ]
  %bmy.776206 = phi i32 [ %bmy.72.lcssa, %for.body2469.lr.ph ], [ %bmy.81, %for.body2469 ]
  %bcost.1016205 = phi i32 [ %bcost.96.lcssa, %for.body2469.lr.ph ], [ %bcost.105, %for.body2469 ]
  %i2250.36204 = phi i32 [ %cross_start.2, %for.body2469.lr.ph ], [ %add2579, %for.body2469 ]
  %317 = load void (i8*, i8*, i8*, i8*, i8*, i32, i32*)*, void (i8*, i8*, i8*, i8*, i8*, i32, i32*)** %arrayidx1035, align 4, !tbaa !42
  %mul2478 = mul i32 %i2250.36204, %3
  %add.ptr2479 = getelementptr inbounds i8, i8* %add.ptr2473, i32 %mul2478
  %mul2482 = sub i32 0, %mul2478
  %add.ptr2483 = getelementptr inbounds i8, i8* %add.ptr2473, i32 %mul2482
  %add2485 = add nsw i32 %i2250.36204, 2
  %mul2486 = mul nsw i32 %add2485, %3
  %add.ptr2487 = getelementptr inbounds i8, i8* %add.ptr2473, i32 %mul2486
  %sub2490 = sub nsw i32 -2, %i2250.36204
  %mul2491 = mul nsw i32 %sub2490, %3
  %add.ptr2492 = getelementptr inbounds i8, i8* %add.ptr2473, i32 %mul2491
  call void %317(i8* %5, i8* %add.ptr2479, i8* %add.ptr2483, i8* %add.ptr2487, i8* %add.ptr2492, i32 %3, i32* nonnull %arraydecay1048) #3
  %318 = load i16, i16* %arrayidx2496, align 2, !tbaa !44
  %conv2497 = zext i16 %318 to i32
  %add2498 = add nsw i32 %i2250.36204, %bmy.266152
  %mul2499 = shl nsw i32 %add2498, 2
  %arrayidx2500 = getelementptr inbounds i16, i16* %add.ptr42, i32 %mul2499
  %319 = load i16, i16* %arrayidx2500, align 2, !tbaa !44
  %conv2501 = zext i16 %319 to i32
  %add2502 = add nuw nsw i32 %conv2501, %conv2497
  %320 = load i32, i32* %arraydecay1048, align 16, !tbaa !11
  %add2504 = add nsw i32 %add2502, %320
  store i32 %add2504, i32* %arraydecay1048, align 16, !tbaa !11
  %add2510 = sub i32 %bmy.266152, %i2250.36204
  %mul2511 = shl nsw i32 %add2510, 2
  %arrayidx2512 = getelementptr inbounds i16, i16* %add.ptr42, i32 %mul2511
  %321 = load i16, i16* %arrayidx2512, align 2, !tbaa !44
  %conv2513 = zext i16 %321 to i32
  %add2514 = add nuw nsw i32 %conv2513, %conv2497
  %322 = load i32, i32* %arrayidx1069, align 4, !tbaa !11
  %add2516 = add nsw i32 %add2514, %322
  store i32 %add2516, i32* %arrayidx1069, align 4, !tbaa !11
  %add2522 = add nsw i32 %add2485, %bmy.266152
  %mul2523 = shl nsw i32 %add2522, 2
  %arrayidx2524 = getelementptr inbounds i16, i16* %add.ptr42, i32 %mul2523
  %323 = load i16, i16* %arrayidx2524, align 2, !tbaa !44
  %conv2525 = zext i16 %323 to i32
  %add2526 = add nuw nsw i32 %conv2525, %conv2497
  %324 = load i32, i32* %arrayidx1080, align 8, !tbaa !11
  %add2528 = add nsw i32 %add2526, %324
  store i32 %add2528, i32* %arrayidx1080, align 8, !tbaa !11
  %add2535 = add nsw i32 %sub2490, %bmy.266152
  %mul2536 = shl nsw i32 %add2535, 2
  %arrayidx2537 = getelementptr inbounds i16, i16* %add.ptr42, i32 %mul2536
  %325 = load i16, i16* %arrayidx2537, align 2, !tbaa !44
  %conv2538 = zext i16 %325 to i32
  %add2539 = add nuw nsw i32 %conv2538, %conv2497
  %326 = load i32, i32* %arrayidx1091, align 4, !tbaa !11
  %add2541 = add nsw i32 %add2539, %326
  store i32 %add2541, i32* %arrayidx1091, align 4, !tbaa !11
  %cmp2543 = icmp slt i32 %add2504, %bcost.1016205
  %spec.select6041 = select i1 %cmp2543, i32 %add2504, i32 %bcost.1016205
  %spec.select6042 = select i1 %cmp2543, i32 %add2498, i32 %bmy.776206
  %cmp2551 = icmp slt i32 %add2516, %spec.select6041
  %bcost.103 = select i1 %cmp2551, i32 %add2516, i32 %spec.select6041
  %bmy.79 = select i1 %cmp2551, i32 %add2510, i32 %spec.select6042
  %327 = or i1 %cmp2543, %cmp2551
  %cmp2560 = icmp slt i32 %add2528, %bcost.103
  %spec.select6044 = select i1 %cmp2560, i32 %add2528, i32 %bcost.103
  %spec.select6045 = select i1 %cmp2560, i32 %add2522, i32 %bmy.79
  %328 = or i1 %327, %cmp2560
  %cmp2569 = icmp slt i32 %add2541, %spec.select6044
  %bcost.105 = select i1 %cmp2569, i32 %add2541, i32 %spec.select6044
  %bmy.81 = select i1 %cmp2569, i32 %add2535, i32 %spec.select6045
  %329 = or i1 %328, %cmp2569
  %bmx.81 = select i1 %329, i32 %bmx.266157, i32 %bmx.776207
  %add2579 = add nsw i32 %i2250.36204, 4
  %cmp2467 = icmp slt i32 %add2579, %sub2466
  br i1 %cmp2467, label %for.body2469, label %if.end2581

if.end2581:                                       ; preds = %for.body2469, %for.cond2464.preheader, %for.end2449
  %i2250.4 = phi i32 [ %cross_start.2, %for.end2449 ], [ %cross_start.2, %for.cond2464.preheader ], [ %add2579, %for.body2469 ]
  %bcost.106 = phi i32 [ %bcost.96.lcssa, %for.end2449 ], [ %bcost.96.lcssa, %for.cond2464.preheader ], [ %bcost.105, %for.body2469 ]
  %bmy.82 = phi i32 [ %bmy.72.lcssa, %for.end2449 ], [ %bmy.72.lcssa, %for.cond2464.preheader ], [ %bmy.81, %for.body2469 ]
  %bmx.82 = phi i32 [ %bmx.72.lcssa, %for.end2449 ], [ %bmx.72.lcssa, %for.cond2464.preheader ], [ %bmx.81, %for.body2469 ]
  %cmp25846195 = icmp slt i32 %i2250.4, %shr2450
  br i1 %cmp25846195, label %for.body2586.lr.ph, label %for.end2651

for.body2586.lr.ph:                               ; preds = %if.end2581
  %arrayidx2595 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 92, i32 7, i32 %0
  %mul2601 = shl nsw i32 %bmx.266157, 2
  %arrayidx2602 = getelementptr inbounds i16, i16* %add.ptr, i32 %mul2601
  br label %for.body2586

for.body2586:                                     ; preds = %for.body2586.lr.ph, %for.inc2649
  %bmx.836199 = phi i32 [ %bmx.82, %for.body2586.lr.ph ], [ %bmx.87, %for.inc2649 ]
  %bmy.836198 = phi i32 [ %bmy.82, %for.body2586.lr.ph ], [ %bmy.87, %for.inc2649 ]
  %bcost.1076197 = phi i32 [ %bcost.106, %for.body2586.lr.ph ], [ %bcost.111, %for.inc2649 ]
  %i2250.56196 = phi i32 [ %i2250.4, %for.body2586.lr.ph ], [ %add2650, %for.inc2649 ]
  %add2587 = add nsw i32 %i2250.56196, %bmy.266152
  %cmp2588 = icmp sgt i32 %add2587, %conv29
  br i1 %cmp2588, label %if.end2617, label %do.body2591

do.body2591:                                      ; preds = %for.body2586
  %330 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx2595, align 4, !tbaa !42
  %mul2597 = mul nsw i32 %add2587, %3
  %add2598 = add nsw i32 %mul2597, %bmx.266157
  %arrayidx2599 = getelementptr inbounds i8, i8* %6, i32 %add2598
  %call2600 = call i32 %330(i8* %5, i32 16, i8* %arrayidx2599, i32 %3) #3
  %331 = load i16, i16* %arrayidx2602, align 2, !tbaa !44
  %conv2603 = zext i16 %331 to i32
  %mul2605 = shl nsw i32 %add2587, 2
  %arrayidx2606 = getelementptr inbounds i16, i16* %add.ptr42, i32 %mul2605
  %332 = load i16, i16* %arrayidx2606, align 2, !tbaa !44
  %conv2607 = zext i16 %332 to i32
  %add2608 = add i32 %call2600, %conv2603
  %add2609 = add i32 %add2608, %conv2607
  %cmp2610 = icmp slt i32 %add2609, %bcost.1076197
  %spec.select6047 = select i1 %cmp2610, i32 %add2609, i32 %bcost.1076197
  %spec.select6048 = select i1 %cmp2610, i32 %add2587, i32 %bmy.836198
  %spec.select6049 = select i1 %cmp2610, i32 %bmx.266157, i32 %bmx.836199
  br label %if.end2617

if.end2617:                                       ; preds = %for.body2586, %do.body2591
  %bcost.109 = phi i32 [ %spec.select6047, %do.body2591 ], [ %bcost.1076197, %for.body2586 ]
  %bmy.85 = phi i32 [ %spec.select6048, %do.body2591 ], [ %bmy.836198, %for.body2586 ]
  %bmx.85 = phi i32 [ %spec.select6049, %do.body2591 ], [ %bmx.836199, %for.body2586 ]
  %sub2618 = sub nsw i32 %bmy.266152, %i2250.56196
  %cmp2619 = icmp slt i32 %sub2618, %conv19
  br i1 %cmp2619, label %for.inc2649, label %do.body2622

do.body2622:                                      ; preds = %if.end2617
  %333 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx2595, align 4, !tbaa !42
  %mul2628 = mul nsw i32 %sub2618, %3
  %add2629 = add nsw i32 %mul2628, %bmx.266157
  %arrayidx2630 = getelementptr inbounds i8, i8* %6, i32 %add2629
  %call2631 = call i32 %333(i8* %5, i32 16, i8* %arrayidx2630, i32 %3) #3
  %334 = load i16, i16* %arrayidx2602, align 2, !tbaa !44
  %conv2634 = zext i16 %334 to i32
  %mul2636 = shl nsw i32 %sub2618, 2
  %arrayidx2637 = getelementptr inbounds i16, i16* %add.ptr42, i32 %mul2636
  %335 = load i16, i16* %arrayidx2637, align 2, !tbaa !44
  %conv2638 = zext i16 %335 to i32
  %add2639 = add i32 %call2631, %conv2634
  %add2640 = add i32 %add2639, %conv2638
  %cmp2641 = icmp slt i32 %add2640, %bcost.109
  %spec.select6050 = select i1 %cmp2641, i32 %add2640, i32 %bcost.109
  %spec.select6051 = select i1 %cmp2641, i32 %sub2618, i32 %bmy.85
  %spec.select6052 = select i1 %cmp2641, i32 %bmx.266157, i32 %bmx.85
  br label %for.inc2649

for.inc2649:                                      ; preds = %if.end2617, %do.body2622
  %bcost.111 = phi i32 [ %spec.select6050, %do.body2622 ], [ %bcost.109, %if.end2617 ]
  %bmy.87 = phi i32 [ %spec.select6051, %do.body2622 ], [ %bmy.85, %if.end2617 ]
  %bmx.87 = phi i32 [ %spec.select6052, %do.body2622 ], [ %bmx.85, %if.end2617 ]
  %add2650 = add nsw i32 %i2250.56196, 2
  %cmp2584 = icmp slt i32 %add2650, %shr2450
  br i1 %cmp2584, label %for.body2586, label %for.end2651

for.end2651:                                      ; preds = %for.inc2649, %if.end2581
  %bcost.107.lcssa = phi i32 [ %bcost.106, %if.end2581 ], [ %bcost.111, %for.inc2649 ]
  %bmy.83.lcssa = phi i32 [ %bmy.82, %if.end2581 ], [ %bmy.87, %for.inc2649 ]
  %bmx.83.lcssa = phi i32 [ %bmx.82, %if.end2581 ], [ %bmx.87, %for.inc2649 ]
  %add.ptr2653 = getelementptr inbounds i8, i8* %6, i32 %bmx.266157
  %mul2654 = mul nsw i32 %bmy.266152, %3
  %add.ptr2655 = getelementptr inbounds i8, i8* %add.ptr2653, i32 %mul2654
  %336 = load void (i8*, i8*, i8*, i8*, i8*, i32, i32*)*, void (i8*, i8*, i8*, i8*, i8*, i32, i32*)** %arrayidx1035, align 4, !tbaa !42
  %add.ptr2659 = getelementptr inbounds i8, i8* %add.ptr2655, i32 -2
  %mul2660 = mul nsw i32 %3, -2
  %add.ptr2661 = getelementptr inbounds i8, i8* %add.ptr2659, i32 %mul2660
  %mul2663 = shl nsw i32 %3, 1
  %add.ptr2664 = getelementptr inbounds i8, i8* %add.ptr2659, i32 %mul2663
  %add.ptr2665 = getelementptr inbounds i8, i8* %add.ptr2655, i32 2
  %add.ptr2667 = getelementptr inbounds i8, i8* %add.ptr2665, i32 %mul2660
  %add.ptr2670 = getelementptr inbounds i8, i8* %add.ptr2665, i32 %mul2663
  call void %336(i8* %5, i8* nonnull %add.ptr2661, i8* nonnull %add.ptr2664, i8* nonnull %add.ptr2667, i8* nonnull %add.ptr2670, i32 %3, i32* nonnull %arraydecay1048) #3
  %add2672 = add nsw i32 %bmx.266157, -2
  %mul2673 = shl nsw i32 %add2672, 2
  %arrayidx2674 = getelementptr inbounds i16, i16* %add.ptr, i32 %mul2673
  %337 = load i16, i16* %arrayidx2674, align 2, !tbaa !44
  %conv2675 = zext i16 %337 to i32
  %add2676 = add nsw i32 %bmy.266152, -2
  %mul2677 = shl nsw i32 %add2676, 2
  %arrayidx2678 = getelementptr inbounds i16, i16* %add.ptr42, i32 %mul2677
  %338 = load i16, i16* %arrayidx2678, align 2, !tbaa !44
  %conv2679 = zext i16 %338 to i32
  %add2680 = add nuw nsw i32 %conv2679, %conv2675
  %339 = load i32, i32* %arraydecay1048, align 16, !tbaa !11
  %add2682 = add nsw i32 %add2680, %339
  store i32 %add2682, i32* %arraydecay1048, align 16, !tbaa !11
  %add2687 = add nsw i32 %bmy.266152, 2
  %mul2688 = shl nsw i32 %add2687, 2
  %arrayidx2689 = getelementptr inbounds i16, i16* %add.ptr42, i32 %mul2688
  %340 = load i16, i16* %arrayidx2689, align 2, !tbaa !44
  %conv2690 = zext i16 %340 to i32
  %add2691 = add nuw nsw i32 %conv2690, %conv2675
  %341 = load i32, i32* %arrayidx1069, align 4, !tbaa !11
  %add2693 = add nsw i32 %add2691, %341
  store i32 %add2693, i32* %arrayidx1069, align 4, !tbaa !11
  %add2694 = add nsw i32 %bmx.266157, 2
  %mul2695 = shl nsw i32 %add2694, 2
  %arrayidx2696 = getelementptr inbounds i16, i16* %add.ptr, i32 %mul2695
  %342 = load i16, i16* %arrayidx2696, align 2, !tbaa !44
  %conv2697 = zext i16 %342 to i32
  %add2702 = add nuw nsw i32 %conv2697, %conv2679
  %343 = load i32, i32* %arrayidx1080, align 8, !tbaa !11
  %add2704 = add nsw i32 %add2702, %343
  store i32 %add2704, i32* %arrayidx1080, align 8, !tbaa !11
  %add2713 = add nuw nsw i32 %conv2697, %conv2690
  %344 = load i32, i32* %arrayidx1091, align 4, !tbaa !11
  %add2715 = add nsw i32 %add2713, %344
  store i32 %add2715, i32* %arrayidx1091, align 4, !tbaa !11
  %cmp2717 = icmp slt i32 %add2682, %bcost.107.lcssa
  %spec.select6053 = select i1 %cmp2717, i32 %add2682, i32 %bcost.107.lcssa
  %spec.select6054 = select i1 %cmp2717, i32 %add2676, i32 %bmy.83.lcssa
  %cmp2725 = icmp slt i32 %add2693, %spec.select6053
  %bcost.113 = select i1 %cmp2725, i32 %add2693, i32 %spec.select6053
  %bmy.89 = select i1 %cmp2725, i32 %add2687, i32 %spec.select6054
  %345 = or i1 %cmp2717, %cmp2725
  %bmx.89 = select i1 %345, i32 %add2672, i32 %bmx.83.lcssa
  %cmp2733 = icmp slt i32 %add2704, %bcost.113
  %spec.select6056 = select i1 %cmp2733, i32 %add2704, i32 %bcost.113
  %spec.select6057 = select i1 %cmp2733, i32 %add2676, i32 %bmy.89
  %cmp2741 = icmp slt i32 %add2715, %spec.select6056
  %bcost.115 = select i1 %cmp2741, i32 %add2715, i32 %spec.select6056
  %bmy.91 = select i1 %cmp2741, i32 %add2687, i32 %spec.select6057
  %346 = or i1 %cmp2733, %cmp2741
  %bmx.91 = select i1 %346, i32 %add2694, i32 %bmx.89
  %mul2748 = shl nsw i32 %bmx.91, 2
  %add.ptr2749 = getelementptr inbounds i16, i16* %add.ptr, i32 %mul2748
  %mul2750 = shl nsw i32 %bmy.91, 2
  %add.ptr2751 = getelementptr inbounds i16, i16* %add.ptr42, i32 %mul2750
  %sub2755 = sub nsw i32 %conv24, %bmx.91
  %sub2756 = sub nsw i32 %bmx.91, %conv14
  %sub2757 = sub nsw i32 %conv29, %bmy.91
  %sub2758 = sub nsw i32 %bmy.91, %conv19
  %cmp2759 = icmp slt i32 %sub2757, %sub2758
  %sub2757.sub2758 = select i1 %cmp2759, i32 %sub2757, i32 %sub2758
  %cmp2767 = icmp slt i32 %sub2756, %sub2757.sub2758
  %cond2783 = select i1 %cmp2767, i32 %sub2756, i32 %sub2757.sub2758
  %cmp2784 = icmp slt i32 %sub2755, %cond2783
  %cond2818 = select i1 %cmp2784, i32 %sub2755, i32 %cond2783
  %add.ptr2882 = getelementptr inbounds i8, i8* %6, i32 %bmx.91
  %add.ptr2934 = getelementptr inbounds [16 x i32], [16 x i32]* %costs, i32 0, i32 4
  %add.ptr2959 = getelementptr inbounds [16 x i32], [16 x i32]* %costs, i32 0, i32 8
  %add.ptr2984 = getelementptr inbounds [16 x i32], [16 x i32]* %costs, i32 0, i32 12
  %arrayidx3039 = getelementptr inbounds [16 x i32], [16 x i32]* %costs, i32 0, i32 5
  %arrayidx3048 = getelementptr inbounds [16 x i32], [16 x i32]* %costs, i32 0, i32 6
  %arrayidx3057 = getelementptr inbounds [16 x i32], [16 x i32]* %costs, i32 0, i32 7
  %arrayidx3075 = getelementptr inbounds [16 x i32], [16 x i32]* %costs, i32 0, i32 9
  %arrayidx3084 = getelementptr inbounds [16 x i32], [16 x i32]* %costs, i32 0, i32 10
  %arrayidx3093 = getelementptr inbounds [16 x i32], [16 x i32]* %costs, i32 0, i32 11
  %arrayidx3111 = getelementptr inbounds [16 x i32], [16 x i32]* %costs, i32 0, i32 13
  %arrayidx3120 = getelementptr inbounds [16 x i32], [16 x i32]* %costs, i32 0, i32 14
  %arrayidx3129 = getelementptr inbounds [16 x i32], [16 x i32]* %costs, i32 0, i32 15
  %arrayidx2855 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 92, i32 7, i32 %0
  %shr3240 = ashr i32 %i_me_range.1, 2
  %347 = mul i32 %bmy.91, %3
  %348 = add i32 %bmx.91, %347
  %scevgep = getelementptr i8, i8* %6, i32 %348
  br label %do.body2753

do.body2753:                                      ; preds = %do.cond3238, %for.end2651
  %i2752.0 = phi i32 [ 1, %for.end2651 ], [ %inc3239, %do.cond3238 ]
  %bcost.116 = phi i32 [ %bcost.115, %for.end2651 ], [ %bcost.136, %do.cond3238 ]
  %bmy.92 = phi i32 [ %bmy.91, %for.end2651 ], [ %bmy.97, %do.cond3238 ]
  %bmx.92 = phi i32 [ %bmx.91, %for.end2651 ], [ %bmx.97, %do.cond3238 ]
  %mul2754 = shl nsw i32 %i2752.0, 2
  %cmp2819 = icmp sgt i32 %mul2754, %cond2818
  br i1 %cmp2819, label %for.body2826, label %if.else2879

for.body2826:                                     ; preds = %do.body2753, %if.end2874
  %bmx.936194 = phi i32 [ %bmx.95, %if.end2874 ], [ %bmx.92, %do.body2753 ]
  %bmy.936193 = phi i32 [ %bmy.95, %if.end2874 ], [ %bmy.92, %do.body2753 ]
  %bcost.1176192 = phi i32 [ %bcost.119, %if.end2874 ], [ %bcost.116, %do.body2753 ]
  %j.06191 = phi i32 [ %inc2876, %if.end2874 ], [ 0, %do.body2753 ]
  %arrayidx2829 = getelementptr inbounds [16 x [2 x i8]], [16 x [2 x i8]]* @x264_8_me_search_ref.hex4, i32 0, i32 %j.06191, i32 0
  %349 = load i8, i8* %arrayidx2829, align 1, !tbaa !50
  %conv2830 = sext i8 %349 to i32
  %mul2831 = mul nsw i32 %i2752.0, %conv2830
  %add2832 = add nsw i32 %mul2831, %bmx.91
  %arrayidx2835 = getelementptr inbounds [16 x [2 x i8]], [16 x [2 x i8]]* @x264_8_me_search_ref.hex4, i32 0, i32 %j.06191, i32 1
  %350 = load i8, i8* %arrayidx2835, align 1, !tbaa !50
  %conv2836 = sext i8 %350 to i32
  %mul2837 = mul nsw i32 %i2752.0, %conv2836
  %add2838 = add nsw i32 %mul2837, %bmy.91
  %shl2839 = shl i32 %add2832, 16
  %and2840 = and i32 %add2838, 32767
  %or2841 = or i32 %and2840, %shl2839
  %add2842 = add i32 %or2841, %or
  %sub2846 = sub i32 %or34, %or2841
  %or2847 = or i32 %add2842, %sub2846
  %and2848 = and i32 %or2847, -2147467264
  %tobool2849 = icmp eq i32 %and2848, 0
  br i1 %tobool2849, label %do.body2851, label %if.end2874

do.body2851:                                      ; preds = %for.body2826
  %351 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx2855, align 4, !tbaa !42
  %mul2856 = mul nsw i32 %add2838, %3
  %add2857 = add nsw i32 %mul2856, %add2832
  %arrayidx2858 = getelementptr inbounds i8, i8* %6, i32 %add2857
  %call2859 = call i32 %351(i8* %5, i32 16, i8* %arrayidx2858, i32 %3) #3
  %mul2860 = shl nsw i32 %add2832, 2
  %arrayidx2861 = getelementptr inbounds i16, i16* %add.ptr, i32 %mul2860
  %352 = load i16, i16* %arrayidx2861, align 2, !tbaa !44
  %conv2862 = zext i16 %352 to i32
  %mul2863 = shl nsw i32 %add2838, 2
  %arrayidx2864 = getelementptr inbounds i16, i16* %add.ptr42, i32 %mul2863
  %353 = load i16, i16* %arrayidx2864, align 2, !tbaa !44
  %conv2865 = zext i16 %353 to i32
  %add2866 = add i32 %call2859, %conv2862
  %add2867 = add i32 %add2866, %conv2865
  %cmp2868 = icmp slt i32 %add2867, %bcost.1176192
  %spec.select6062 = select i1 %cmp2868, i32 %add2867, i32 %bcost.1176192
  %spec.select6063 = select i1 %cmp2868, i32 %add2838, i32 %bmy.936193
  %spec.select6064 = select i1 %cmp2868, i32 %add2832, i32 %bmx.936194
  br label %if.end2874

if.end2874:                                       ; preds = %for.body2826, %do.body2851
  %bcost.119 = phi i32 [ %bcost.1176192, %for.body2826 ], [ %spec.select6062, %do.body2851 ]
  %bmy.95 = phi i32 [ %bmy.936193, %for.body2826 ], [ %spec.select6063, %do.body2851 ]
  %bmx.95 = phi i32 [ %bmx.936194, %for.body2826 ], [ %spec.select6064, %do.body2851 ]
  %inc2876 = add nuw nsw i32 %j.06191, 1
  %exitcond = icmp eq i32 %inc2876, 16
  br i1 %exitcond, label %do.cond3238, label %for.body2826

if.else2879:                                      ; preds = %do.body2753
  %sub2884 = sub nsw i32 %bmy.91, %mul2754
  %mul2885 = mul nsw i32 %sub2884, %3
  %add.ptr2886 = getelementptr inbounds i8, i8* %add.ptr2882, i32 %mul2885
  %mul2887 = mul nsw i32 %i2752.0, %3
  %354 = load void (i8*, i8*, i8*, i8*, i8*, i32, i32*)*, void (i8*, i8*, i8*, i8*, i8*, i32, i32*)** %arrayidx1035, align 4, !tbaa !42
  %mul2897 = shl nsw i32 %mul2887, 3
  %add.ptr2898 = getelementptr inbounds i8, i8* %add.ptr2886, i32 %mul2897
  %mul2899 = shl nuw nsw i32 %i2752.0, 1
  %idx.neg2900 = sub nsw i32 0, %mul2899
  %add.ptr2901 = getelementptr inbounds i8, i8* %add.ptr2886, i32 %idx.neg2900
  %add.ptr2903 = getelementptr inbounds i8, i8* %add.ptr2901, i32 %mul2887
  %add.ptr2905 = getelementptr inbounds i8, i8* %add.ptr2886, i32 %mul2899
  %add.ptr2907 = getelementptr inbounds i8, i8* %add.ptr2905, i32 %mul2887
  call void %354(i8* %5, i8* %add.ptr2886, i8* %add.ptr2898, i8* %add.ptr2903, i8* nonnull %add.ptr2907, i32 %3, i32* nonnull %arraydecay1048) #3
  %mul2910 = shl nsw i32 %mul2887, 1
  %add.ptr2911 = getelementptr inbounds i8, i8* %add.ptr2886, i32 %mul2910
  %355 = load void (i8*, i8*, i8*, i8*, i8*, i32, i32*)*, void (i8*, i8*, i8*, i8*, i8*, i32, i32*)** %arrayidx1035, align 4, !tbaa !42
  %idx.neg2916 = sub nsw i32 0, %mul2754
  %add.ptr2917 = getelementptr inbounds i8, i8* %add.ptr2911, i32 %idx.neg2916
  %add.ptr2921 = getelementptr inbounds i8, i8* %add.ptr2911, i32 %mul2754
  %add.ptr2928 = getelementptr inbounds i8, i8* %add.ptr2917, i32 %mul2887
  %add.ptr2932 = getelementptr inbounds i8, i8* %add.ptr2921, i32 %mul2887
  call void %355(i8* %5, i8* %add.ptr2917, i8* %add.ptr2921, i8* %add.ptr2928, i8* %add.ptr2932, i32 %3, i32* nonnull %add.ptr2934) #3
  %356 = load void (i8*, i8*, i8*, i8*, i8*, i32, i32*)*, void (i8*, i8*, i8*, i8*, i8*, i32, i32*)** %arrayidx1035, align 4, !tbaa !42
  %add.ptr2942 = getelementptr inbounds i8, i8* %scevgep, i32 %idx.neg2916
  %add.ptr2946 = getelementptr inbounds i8, i8* %scevgep, i32 %mul2754
  %add.ptr2953 = getelementptr inbounds i8, i8* %add.ptr2942, i32 %mul2887
  %add.ptr2957 = getelementptr inbounds i8, i8* %add.ptr2946, i32 %mul2887
  call void %356(i8* %5, i8* %add.ptr2942, i8* %add.ptr2946, i8* %add.ptr2953, i8* %add.ptr2957, i32 %3, i32* nonnull %add.ptr2959) #3
  %add.ptr2961 = getelementptr inbounds i8, i8* %scevgep, i32 %mul2910
  %357 = load void (i8*, i8*, i8*, i8*, i8*, i32, i32*)*, void (i8*, i8*, i8*, i8*, i8*, i32, i32*)** %arrayidx1035, align 4, !tbaa !42
  %add.ptr2967 = getelementptr inbounds i8, i8* %add.ptr2961, i32 %idx.neg2916
  %add.ptr2971 = getelementptr inbounds i8, i8* %add.ptr2961, i32 %mul2754
  %add.ptr2976 = getelementptr inbounds i8, i8* %add.ptr2961, i32 %idx.neg2900
  %add.ptr2978 = getelementptr inbounds i8, i8* %add.ptr2976, i32 %mul2887
  %add.ptr2980 = getelementptr inbounds i8, i8* %add.ptr2961, i32 %mul2899
  %add.ptr2982 = getelementptr inbounds i8, i8* %add.ptr2980, i32 %mul2887
  call void %357(i8* %5, i8* %add.ptr2967, i8* %add.ptr2971, i8* %add.ptr2978, i8* nonnull %add.ptr2982, i32 %3, i32* nonnull %add.ptr2984) #3
  %358 = load i16, i16* %add.ptr2749, align 2, !tbaa !44
  %conv2989 = zext i16 %358 to i32
  %mul2990 = mul nsw i32 %i2752.0, -16
  %arrayidx2991 = getelementptr inbounds i16, i16* %add.ptr2751, i32 %mul2990
  %359 = load i16, i16* %arrayidx2991, align 2, !tbaa !44
  %conv2992 = zext i16 %359 to i32
  %add2993 = add nuw nsw i32 %conv2992, %conv2989
  %360 = load i32, i32* %arraydecay1048, align 16, !tbaa !11
  %add2995 = add nsw i32 %add2993, %360
  store i32 %add2995, i32* %arraydecay1048, align 16, !tbaa !11
  %mul2999 = shl nsw i32 %i2752.0, 4
  %arrayidx3000 = getelementptr inbounds i16, i16* %add.ptr2751, i32 %mul2999
  %361 = load i16, i16* %arrayidx3000, align 2, !tbaa !44
  %conv3001 = zext i16 %361 to i32
  %add3002 = add nuw nsw i32 %conv3001, %conv2989
  %362 = load i32, i32* %arrayidx1069, align 4, !tbaa !11
  %add3004 = add nsw i32 %add3002, %362
  store i32 %add3004, i32* %arrayidx1069, align 4, !tbaa !11
  %mul3005 = mul nsw i32 %i2752.0, -8
  %arrayidx3006 = getelementptr inbounds i16, i16* %add.ptr2749, i32 %mul3005
  %363 = load i16, i16* %arrayidx3006, align 2, !tbaa !44
  %conv3007 = zext i16 %363 to i32
  %mul3008 = mul nsw i32 %i2752.0, -12
  %arrayidx3009 = getelementptr inbounds i16, i16* %add.ptr2751, i32 %mul3008
  %364 = load i16, i16* %arrayidx3009, align 2, !tbaa !44
  %conv3010 = zext i16 %364 to i32
  %add3011 = add nuw nsw i32 %conv3010, %conv3007
  %365 = load i32, i32* %arrayidx1080, align 8, !tbaa !11
  %add3013 = add nsw i32 %add3011, %365
  store i32 %add3013, i32* %arrayidx1080, align 8, !tbaa !11
  %mul3014 = shl nsw i32 %i2752.0, 3
  %arrayidx3015 = getelementptr inbounds i16, i16* %add.ptr2749, i32 %mul3014
  %366 = load i16, i16* %arrayidx3015, align 2, !tbaa !44
  %conv3016 = zext i16 %366 to i32
  %add3020 = add nuw nsw i32 %conv3016, %conv3010
  %367 = load i32, i32* %arrayidx1091, align 4, !tbaa !11
  %add3022 = add nsw i32 %add3020, %367
  store i32 %add3022, i32* %arrayidx1091, align 4, !tbaa !11
  %arrayidx3024 = getelementptr inbounds i16, i16* %add.ptr2749, i32 %mul2990
  %368 = load i16, i16* %arrayidx3024, align 2, !tbaa !44
  %conv3025 = zext i16 %368 to i32
  %arrayidx3027 = getelementptr inbounds i16, i16* %add.ptr2751, i32 %mul3005
  %369 = load i16, i16* %arrayidx3027, align 2, !tbaa !44
  %conv3028 = zext i16 %369 to i32
  %add3029 = add nuw nsw i32 %conv3028, %conv3025
  %370 = load i32, i32* %add.ptr2934, align 16, !tbaa !11
  %add3031 = add nsw i32 %add3029, %370
  store i32 %add3031, i32* %add.ptr2934, align 16, !tbaa !11
  %arrayidx3033 = getelementptr inbounds i16, i16* %add.ptr2749, i32 %mul2999
  %371 = load i16, i16* %arrayidx3033, align 2, !tbaa !44
  %conv3034 = zext i16 %371 to i32
  %add3038 = add nuw nsw i32 %conv3034, %conv3028
  %372 = load i32, i32* %arrayidx3039, align 4, !tbaa !11
  %add3040 = add nsw i32 %add3038, %372
  store i32 %add3040, i32* %arrayidx3039, align 4, !tbaa !11
  %mul3044 = mul nsw i32 %i2752.0, -4
  %arrayidx3045 = getelementptr inbounds i16, i16* %add.ptr2751, i32 %mul3044
  %373 = load i16, i16* %arrayidx3045, align 2, !tbaa !44
  %conv3046 = zext i16 %373 to i32
  %add3047 = add nuw nsw i32 %conv3046, %conv3025
  %374 = load i32, i32* %arrayidx3048, align 8, !tbaa !11
  %add3049 = add nsw i32 %add3047, %374
  store i32 %add3049, i32* %arrayidx3048, align 8, !tbaa !11
  %add3056 = add nuw nsw i32 %conv3046, %conv3034
  %375 = load i32, i32* %arrayidx3057, align 4, !tbaa !11
  %add3058 = add nsw i32 %add3056, %375
  store i32 %add3058, i32* %arrayidx3057, align 4, !tbaa !11
  %376 = load i16, i16* %add.ptr2751, align 2, !tbaa !44
  %conv3064 = zext i16 %376 to i32
  %add3065 = add nuw nsw i32 %conv3064, %conv3025
  %377 = load i32, i32* %add.ptr2959, align 16, !tbaa !11
  %add3067 = add nsw i32 %add3065, %377
  store i32 %add3067, i32* %add.ptr2959, align 16, !tbaa !11
  %add3074 = add nuw nsw i32 %conv3064, %conv3034
  %378 = load i32, i32* %arrayidx3075, align 4, !tbaa !11
  %add3076 = add nsw i32 %add3074, %378
  store i32 %add3076, i32* %arrayidx3075, align 4, !tbaa !11
  %arrayidx3081 = getelementptr inbounds i16, i16* %add.ptr2751, i32 %mul2754
  %379 = load i16, i16* %arrayidx3081, align 2, !tbaa !44
  %conv3082 = zext i16 %379 to i32
  %add3083 = add nuw nsw i32 %conv3082, %conv3025
  %380 = load i32, i32* %arrayidx3084, align 8, !tbaa !11
  %add3085 = add nsw i32 %add3083, %380
  store i32 %add3085, i32* %arrayidx3084, align 8, !tbaa !11
  %add3092 = add nuw nsw i32 %conv3082, %conv3034
  %381 = load i32, i32* %arrayidx3093, align 4, !tbaa !11
  %add3094 = add nsw i32 %add3092, %381
  store i32 %add3094, i32* %arrayidx3093, align 4, !tbaa !11
  %arrayidx3099 = getelementptr inbounds i16, i16* %add.ptr2751, i32 %mul3014
  %382 = load i16, i16* %arrayidx3099, align 2, !tbaa !44
  %conv3100 = zext i16 %382 to i32
  %add3101 = add nuw nsw i32 %conv3100, %conv3025
  %383 = load i32, i32* %add.ptr2984, align 16, !tbaa !11
  %add3103 = add nsw i32 %add3101, %383
  store i32 %add3103, i32* %add.ptr2984, align 16, !tbaa !11
  %add3110 = add nuw nsw i32 %conv3100, %conv3034
  %384 = load i32, i32* %arrayidx3111, align 4, !tbaa !11
  %add3112 = add nsw i32 %add3110, %384
  store i32 %add3112, i32* %arrayidx3111, align 4, !tbaa !11
  %mul3116 = mul nsw i32 %i2752.0, 12
  %arrayidx3117 = getelementptr inbounds i16, i16* %add.ptr2751, i32 %mul3116
  %385 = load i16, i16* %arrayidx3117, align 2, !tbaa !44
  %conv3118 = zext i16 %385 to i32
  %add3119 = add nuw nsw i32 %conv3118, %conv3007
  %386 = load i32, i32* %arrayidx3120, align 8, !tbaa !11
  %add3121 = add nsw i32 %add3119, %386
  store i32 %add3121, i32* %arrayidx3120, align 8, !tbaa !11
  %add3128 = add nuw nsw i32 %conv3118, %conv3016
  %387 = load i32, i32* %arrayidx3129, align 4, !tbaa !11
  %add3130 = add nsw i32 %add3128, %387
  store i32 %add3130, i32* %arrayidx3129, align 4, !tbaa !11
  %cmp3132 = icmp slt i32 %add2995, %bcost.116
  %spec.select6065 = select i1 %cmp3132, i32 12, i32 0
  %spec.select6066 = select i1 %cmp3132, i32 %add2995, i32 %bcost.116
  %cmp3138 = icmp slt i32 %add3004, %spec.select6066
  %dir2880.1 = select i1 %cmp3138, i32 4, i32 %spec.select6065
  %bcost.121 = select i1 %cmp3138, i32 %add3004, i32 %spec.select6066
  %cmp3144 = icmp slt i32 %add3013, %bcost.121
  %spec.select6067 = select i1 %cmp3144, i32 -19, i32 %dir2880.1
  %spec.select6068 = select i1 %cmp3144, i32 %add3013, i32 %bcost.121
  %cmp3150 = icmp slt i32 %add3022, %spec.select6068
  %dir2880.3 = select i1 %cmp3150, i32 45, i32 %spec.select6067
  %bcost.123 = select i1 %cmp3150, i32 %add3022, i32 %spec.select6068
  %cmp3156 = icmp slt i32 %add3031, %bcost.123
  %spec.select6069 = select i1 %cmp3156, i32 -50, i32 %dir2880.3
  %spec.select6070 = select i1 %cmp3156, i32 %add3031, i32 %bcost.123
  %cmp3162 = icmp slt i32 %add3040, %spec.select6070
  %dir2880.5 = select i1 %cmp3162, i32 78, i32 %spec.select6069
  %bcost.125 = select i1 %cmp3162, i32 %add3040, i32 %spec.select6070
  %cmp3168 = icmp slt i32 %add3049, %bcost.125
  %spec.select6071 = select i1 %cmp3168, i32 -49, i32 %dir2880.5
  %spec.select6072 = select i1 %cmp3168, i32 %add3049, i32 %bcost.125
  %cmp3174 = icmp slt i32 %add3058, %spec.select6072
  %dir2880.7 = select i1 %cmp3174, i32 79, i32 %spec.select6071
  %bcost.127 = select i1 %cmp3174, i32 %add3058, i32 %spec.select6072
  %cmp3180 = icmp slt i32 %add3067, %bcost.127
  %spec.select6073 = select i1 %cmp3180, i32 -64, i32 %dir2880.7
  %spec.select6074 = select i1 %cmp3180, i32 %add3067, i32 %bcost.127
  %cmp3186 = icmp slt i32 %add3076, %spec.select6074
  %dir2880.9 = select i1 %cmp3186, i32 64, i32 %spec.select6073
  %bcost.129 = select i1 %cmp3186, i32 %add3076, i32 %spec.select6074
  %cmp3192 = icmp slt i32 %add3085, %bcost.129
  %spec.select6075 = select i1 %cmp3192, i32 -63, i32 %dir2880.9
  %spec.select6076 = select i1 %cmp3192, i32 %add3085, i32 %bcost.129
  %cmp3198 = icmp slt i32 %add3094, %spec.select6076
  %dir2880.11 = select i1 %cmp3198, i32 65, i32 %spec.select6075
  %bcost.131 = select i1 %cmp3198, i32 %add3094, i32 %spec.select6076
  %cmp3204 = icmp slt i32 %add3103, %bcost.131
  %spec.select6077 = select i1 %cmp3204, i32 -62, i32 %dir2880.11
  %spec.select6078 = select i1 %cmp3204, i32 %add3103, i32 %bcost.131
  %cmp3210 = icmp slt i32 %add3112, %spec.select6078
  %dir2880.13 = select i1 %cmp3210, i32 66, i32 %spec.select6077
  %bcost.133 = select i1 %cmp3210, i32 %add3112, i32 %spec.select6078
  %cmp3216 = icmp slt i32 %add3121, %bcost.133
  %spec.select6079 = select i1 %cmp3216, i32 -29, i32 %dir2880.13
  %spec.select6080 = select i1 %cmp3216, i32 %add3121, i32 %bcost.133
  %cmp3222 = icmp slt i32 %add3130, %spec.select6080
  %dir2880.15 = select i1 %cmp3222, i32 35, i32 %spec.select6079
  %bcost.135 = select i1 %cmp3222, i32 %add3130, i32 %spec.select6080
  %tobool3227 = icmp eq i32 %dir2880.15, 0
  br i1 %tobool3227, label %do.cond3238, label %if.then3228

if.then3228:                                      ; preds = %if.else2879
  %shr3229 = ashr i32 %dir2880.15, 4
  %mul3230 = mul nsw i32 %shr3229, %i2752.0
  %add3231 = add nsw i32 %mul3230, %bmx.91
  %shl3232 = shl i32 %dir2880.15, 28
  %shr3233 = ashr exact i32 %shl3232, 28
  %mul3234 = mul nsw i32 %shr3233, %i2752.0
  %add3235 = add nsw i32 %mul3234, %bmy.91
  br label %do.cond3238

do.cond3238:                                      ; preds = %if.end2874, %if.then3228, %if.else2879
  %bcost.136 = phi i32 [ %bcost.135, %if.else2879 ], [ %bcost.135, %if.then3228 ], [ %bcost.119, %if.end2874 ]
  %bmy.97 = phi i32 [ %bmy.92, %if.else2879 ], [ %add3235, %if.then3228 ], [ %bmy.95, %if.end2874 ]
  %bmx.97 = phi i32 [ %bmx.92, %if.else2879 ], [ %add3231, %if.then3228 ], [ %bmx.95, %if.end2874 ]
  %inc3239 = add nuw nsw i32 %i2752.0, 1
  %cmp3241 = icmp slt i32 %i2752.0, %shr3240
  br i1 %cmp3241, label %do.body2753, label %do.end3243

do.end3243:                                       ; preds = %do.cond3238
  %cmp3244 = icmp sgt i32 %bmy.97, %conv29
  %cmp3247 = icmp slt i32 %bmy.97, %conv19
  %or.cond = or i1 %cmp3244, %cmp3247
  %cmp3250 = icmp sgt i32 %bmx.97, %conv24
  %or.cond6081 = or i1 %or.cond, %cmp3250
  %cmp3253 = icmp slt i32 %bmx.97, %conv14
  %or.cond6082 = or i1 %cmp3253, %or.cond6081
  br i1 %or.cond6082, label %sw.epilog, label %me_hex2

sw.bb3264:                                        ; preds = %if.end321, %if.end321
  %sub3265 = sub nsw i32 %bmx.7, %4
  %cmp3266 = icmp sgt i32 %sub3265, %conv14
  %cond3272 = select i1 %cmp3266, i32 %sub3265, i32 %conv14
  %sub3273 = sub nsw i32 %bmy.7, %4
  %cmp3274 = icmp sgt i32 %sub3273, %conv19
  %cond3280 = select i1 %cmp3274, i32 %sub3273, i32 %conv19
  %add3281 = add nsw i32 %bmx.7, %4
  %cmp3282 = icmp slt i32 %add3281, %conv24
  %cond3288 = select i1 %cmp3282, i32 %add3281, i32 %conv24
  %add3289 = add nsw i32 %bmy.7, %4
  %cmp3290 = icmp slt i32 %add3289, %conv29
  %cond3296 = select i1 %cmp3290, i32 %add3289, i32 %conv29
  %sub3297 = sub i32 3, %cond3272
  %add3298 = add i32 %sub3297, %cond3288
  %and3299 = and i32 %add3298, -4
  %integral = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 8
  %388 = load i16*, i16** %integral, align 4, !tbaa !52
  %389 = bitcast [4 x i32]* %enc_dc to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %389) #3
  %cmp3300.inv = icmp sgt i32 %0, 3
  %cond3302 = select i1 %cmp3300.inv, i32 6, i32 3
  %w3304 = getelementptr inbounds [12 x %struct.anon.18], [12 x %struct.anon.18]* @x264_pixel_size, i32 0, i32 %cond3302, i32 0
  %390 = load i8, i8* %w3304, align 1, !tbaa !8
  %conv3305 = zext i8 %390 to i32
  %scratch_buffer = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 81
  %391 = bitcast i8** %scratch_buffer to i16**
  %392 = load i16*, i16** %391, align 8, !tbaa !53
  %i_qp = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 93
  %393 = load i32, i32* %i_qp, align 32, !tbaa !54
  %394 = load i16, i16* %arrayidx35, align 4, !tbaa !44
  %conv3310 = sext i16 %394 to i32
  %sub3311 = sub nsw i32 0, %conv3310
  %and3312 = and i32 %sub3311, 3
  %arrayidx3313 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 48, i32 %393, i32 %and3312
  %395 = load i16*, i16** %arrayidx3313, align 4, !tbaa !42
  %shr3318 = ashr i32 %sub3311, 2
  %add.ptr3319 = getelementptr inbounds i16, i16* %395, i32 %shr3318
  %arrayidx3321 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 92, i32 21, i32 %cond3302
  %396 = load void (i8*, i8*, i8*, i8*, i8*, i32, i32*)*, void (i8*, i8*, i8*, i8*, i8*, i32, i32*)** %arrayidx3321, align 4, !tbaa !42
  %add.ptr3322 = getelementptr inbounds i8, i8* %5, i32 %conv3305
  %mul3323 = shl nuw nsw i32 %conv3305, 4
  %add.ptr3324 = getelementptr inbounds i8, i8* %5, i32 %mul3323
  %add.ptr3327 = getelementptr inbounds i8, i8* %add.ptr3322, i32 %mul3323
  %arraydecay3328 = getelementptr inbounds [4 x i32], [4 x i32]* %enc_dc, i32 0, i32 0
  call void %396(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @x264_zero, i32 0, i32 0), i8* %5, i8* %add.ptr3322, i8* %add.ptr3324, i8* %add.ptr3327, i32 16, i32* nonnull %arraydecay3328) #3
  %397 = add nsw i32 %cond3302, -5
  %cmp3329 = icmp ult i32 %397, 4
  br i1 %cmp3329, label %if.then3331, label %if.end3336

if.then3331:                                      ; preds = %sw.bb3264
  %fenc = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 60
  %398 = load %struct.x264_frame*, %struct.x264_frame** %fenc, align 8, !tbaa !55
  %arrayidx3332 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %398, i32 0, i32 33, i32 0
  %399 = load i32, i32* %arrayidx3332, align 4, !tbaa !11
  %add3333 = add nsw i32 %399, 64
  %mul3334 = mul nsw i32 %add3333, %3
  %add.ptr3335 = getelementptr inbounds i16, i16* %388, i32 %mul3334
  br label %if.end3336

if.end3336:                                       ; preds = %if.then3331, %sw.bb3264
  %sums_base.0 = phi i16* [ %add.ptr3335, %if.then3331 ], [ %388, %sw.bb3264 ]
  switch i32 %0, label %if.end3346 [
    i32 5, label %if.then3344
    i32 2, label %if.then3344
    i32 0, label %if.then3344
  ]

if.then3344:                                      ; preds = %if.end3336, %if.end3336, %if.end3336
  %mul3345 = mul nsw i32 %3, %conv3305
  br label %if.end3346

if.end3346:                                       ; preds = %if.end3336, %if.then3344
  %delta.0 = phi i32 [ %mul3345, %if.then3344 ], [ %conv3305, %if.end3336 ]
  switch i32 %0, label %if.end3355 [
    i32 5, label %if.then3352
    i32 2, label %if.then3352
  ]

if.then3352:                                      ; preds = %if.end3346, %if.end3346
  %arrayidx3353 = getelementptr inbounds [4 x i32], [4 x i32]* %enc_dc, i32 0, i32 2
  %400 = load i32, i32* %arrayidx3353, align 8, !tbaa !11
  %arrayidx3354 = getelementptr inbounds [4 x i32], [4 x i32]* %enc_dc, i32 0, i32 1
  store i32 %400, i32* %arrayidx3354, align 4, !tbaa !11
  br label %if.end3355

if.end3355:                                       ; preds = %if.end3346, %if.then3352
  %401 = load i32, i32* %i_me_method, align 4, !tbaa !51
  %cmp3358 = icmp eq i32 %401, 4
  br i1 %cmp3358, label %if.then3360, label %for.cond3674.preheader

for.cond3674.preheader:                           ; preds = %if.end3355
  %cmp36756331 = icmp sgt i32 %cond3280, %cond3296
  br i1 %cmp36756331, label %if.end3833, label %for.body3678.lr.ph

for.body3678.lr.ph:                               ; preds = %for.cond3674.preheader
  %arrayidx3691 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 92, i32 24, i32 %0
  %add.ptr3693 = getelementptr inbounds i16, i16* %sums_base.0, i32 %cond3272
  %add.ptr3696 = getelementptr inbounds i16, i16* %add.ptr3319, i32 %cond3272
  %arrayidx3705 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 92, i32 8, i32 %0
  %arraydecay3726 = getelementptr inbounds [16 x i32], [16 x i32]* %costs, i32 0, i32 0
  %arrayidx3742 = getelementptr inbounds [16 x i32], [16 x i32]* %costs, i32 0, i32 1
  %arrayidx3751 = getelementptr inbounds [16 x i32], [16 x i32]* %costs, i32 0, i32 2
  %arrayidx3794 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 92, i32 7, i32 %0
  br label %for.body3678

if.then3360:                                      ; preds = %if.end3355
  %add3361 = add nsw i32 %and3299, 31
  %and3362 = and i32 %add3361, -32
  %add.ptr3363 = getelementptr inbounds i16, i16* %392, i32 %and3362
  %add.ptr3364 = getelementptr inbounds i16, i16* %add.ptr3363, i32 4
  %402 = bitcast i16* %add.ptr3364 to %struct.mvsad_t*
  %cmp3365 = icmp slt i32 %4, 17
  %cmp3369 = icmp slt i32 %4, 25
  %cond3371 = select i1 %cmp3369, i32 11, i32 12
  %cond3373 = select i1 %cmp3365, i32 10, i32 %cond3371
  %arrayidx3375 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 92, i32 0, i32 %0
  %403 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx3375, align 4, !tbaa !42
  %mul3376 = mul nsw i32 %bmy.7, %3
  %add.ptr3377 = getelementptr inbounds i8, i8* %6, i32 %mul3376
  %add.ptr3378 = getelementptr inbounds i8, i8* %add.ptr3377, i32 %bmx.7
  %call3379 = call i32 %403(i8* %5, i32 16, i8* %add.ptr3378, i32 %3) #3
  %mul3380 = shl nsw i32 %bmx.7, 2
  %arrayidx3381 = getelementptr inbounds i16, i16* %add.ptr, i32 %mul3380
  %404 = load i16, i16* %arrayidx3381, align 2, !tbaa !44
  %conv3382 = zext i16 %404 to i32
  %mul3383 = shl nsw i32 %bmy.7, 2
  %arrayidx3384 = getelementptr inbounds i16, i16* %add.ptr42, i32 %mul3383
  %405 = load i16, i16* %arrayidx3384, align 2, !tbaa !44
  %conv3385 = zext i16 %405 to i32
  %add3386 = add i32 %call3379, %conv3382
  %add3387 = add i32 %add3386, %conv3385
  %cmp33906307 = icmp sgt i32 %cond3280, %cond3296
  br i1 %cmp33906307, label %for.cond.cleanup3392, label %for.body3393.lr.ph

for.body3393.lr.ph:                               ; preds = %if.then3360
  %arrayidx3404 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 92, i32 24, i32 %0
  %add.ptr3406 = getelementptr inbounds i16, i16* %sums_base.0, i32 %cond3272
  %add.ptr3409 = getelementptr inbounds i16, i16* %add.ptr3319, i32 %cond3272
  %add.ptr3418 = getelementptr inbounds i8, i8* %6, i32 %cond3272
  %406 = bitcast [4 x i32]* %sads to i8*
  %arrayidx3422 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 92, i32 20, i32 %0
  %arraydecay3434 = getelementptr inbounds [4 x i32], [4 x i32]* %sads, i32 0, i32 0
  %407 = trunc i32 %cond3272 to i16
  %arrayidx3442.1 = getelementptr inbounds [4 x i32], [4 x i32]* %sads, i32 0, i32 1
  %arrayidx3442.2 = getelementptr inbounds [4 x i32], [4 x i32]* %sads, i32 0, i32 2
  br label %for.body3393

for.cond.cleanup3392:                             ; preds = %cleanup3527, %if.then3360
  %nmvsad.0.lcssa = phi i32 [ 0, %if.then3360 ], [ %nmvsad.6, %cleanup3527 ]
  %bsad.0.lcssa = phi i32 [ %add3387, %if.then3360 ], [ %bsad.8, %cleanup3527 ]
  %shr3535 = ashr i32 %4, 1
  %mul3536 = mul nsw i32 %bsad.0.lcssa, %cond3373
  %shr3537 = ashr i32 %mul3536, 3
  %mul3538 = and i32 %4, -2
  %cmp35396286 = icmp sgt i32 %nmvsad.0.lcssa, %mul3538
  %cmp35426287 = icmp sgt i32 %shr3537, %bsad.0.lcssa
  %408 = and i1 %cmp35396286, %cmp35426287
  br i1 %408, label %while.body, label %while.cond3587.preheader

for.body3393:                                     ; preds = %cleanup3527, %for.body3393.lr.ph
  %my3388.06310 = phi i32 [ %cond3280, %for.body3393.lr.ph ], [ %inc3532, %cleanup3527 ]
  %bsad.06309 = phi i32 [ %add3387, %for.body3393.lr.ph ], [ %bsad.8, %cleanup3527 ]
  %nmvsad.06308 = phi i32 [ 0, %for.body3393.lr.ph ], [ %nmvsad.6, %cleanup3527 ]
  %mul3395 = shl nsw i32 %my3388.06310, 2
  %arrayidx3396 = getelementptr inbounds i16, i16* %add.ptr42, i32 %mul3395
  %409 = load i16, i16* %arrayidx3396, align 2, !tbaa !44
  %conv3397 = zext i16 %409 to i32
  %cmp3398 = icmp sgt i32 %bsad.06309, %conv3397
  br i1 %cmp3398, label %if.end3401, label %cleanup3527

if.end3401:                                       ; preds = %for.body3393
  %sub3402 = sub nsw i32 %bsad.06309, %conv3397
  %410 = load i32 (i32*, i16*, i32, i16*, i16*, i32, i32)*, i32 (i32*, i16*, i32, i16*, i16*, i32, i32)** %arrayidx3404, align 4, !tbaa !42
  %mul3407 = mul nsw i32 %my3388.06310, %3
  %add.ptr3408 = getelementptr inbounds i16, i16* %add.ptr3406, i32 %mul3407
  %mul3410 = mul nsw i32 %sub3402, 17
  %shr3411 = ashr i32 %mul3410, 4
  %call3412 = call i32 %410(i32* nonnull %arraydecay3328, i16* %add.ptr3408, i32 %delta.0, i16* %add.ptr3409, i16* %392, i32 %and3299, i32 %shr3411) #3
  %sub3414 = add nsw i32 %call3412, -2
  %cmp34156294 = icmp sgt i32 %call3412, 2
  br i1 %cmp34156294, label %for.body3417.lr.ph, label %for.cond3480.preheader

for.body3417.lr.ph:                               ; preds = %if.end3401
  %add.ptr3420 = getelementptr inbounds i8, i8* %add.ptr3418, i32 %mul3407
  %conv3467 = trunc i32 %my3388.06310 to i16
  br label %for.body3417

for.cond3480.preheader:                           ; preds = %if.end3472.2, %if.end3401
  %nmvsad.1.lcssa = phi i32 [ %nmvsad.06308, %if.end3401 ], [ %nmvsad.3.2, %if.end3472.2 ]
  %bsad.1.lcssa = phi i32 [ %sub3402, %if.end3401 ], [ %bsad.4.2, %if.end3472.2 ]
  %i3394.0.lcssa = phi i32 [ 0, %if.end3401 ], [ %add3478, %if.end3472.2 ]
  %cmp34816301 = icmp slt i32 %i3394.0.lcssa, %call3412
  br i1 %cmp34816301, label %for.body3483.lr.ph, label %for.end3525

for.body3483.lr.ph:                               ; preds = %for.cond3480.preheader
  %add.ptr3492 = getelementptr inbounds i8, i8* %6, i32 %mul3407
  %conv3517 = trunc i32 %my3388.06310 to i16
  br label %for.body3483

for.body3417:                                     ; preds = %for.body3417.lr.ph, %if.end3472.2
  %i3394.06297 = phi i32 [ 0, %for.body3417.lr.ph ], [ %add3478, %if.end3472.2 ]
  %bsad.16296 = phi i32 [ %sub3402, %for.body3417.lr.ph ], [ %bsad.4.2, %if.end3472.2 ]
  %nmvsad.16295 = phi i32 [ %nmvsad.06308, %for.body3417.lr.ph ], [ %nmvsad.3.2, %if.end3472.2 ]
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %406) #3
  %411 = load void (i8*, i8*, i8*, i8*, i32, i32*)*, void (i8*, i8*, i8*, i8*, i32, i32*)** %arrayidx3422, align 4, !tbaa !42
  %arrayidx3423 = getelementptr inbounds i16, i16* %392, i32 %i3394.06297
  %412 = load i16, i16* %arrayidx3423, align 2, !tbaa !44
  %conv3424 = sext i16 %412 to i32
  %add.ptr3425 = getelementptr inbounds i8, i8* %add.ptr3420, i32 %conv3424
  %add3426 = add nuw nsw i32 %i3394.06297, 1
  %arrayidx3427 = getelementptr inbounds i16, i16* %392, i32 %add3426
  %413 = load i16, i16* %arrayidx3427, align 2, !tbaa !44
  %conv3428 = sext i16 %413 to i32
  %add.ptr3429 = getelementptr inbounds i8, i8* %add.ptr3420, i32 %conv3428
  %add3430 = add nuw nsw i32 %i3394.06297, 2
  %arrayidx3431 = getelementptr inbounds i16, i16* %392, i32 %add3430
  %414 = load i16, i16* %arrayidx3431, align 2, !tbaa !44
  %conv3432 = sext i16 %414 to i32
  %add.ptr3433 = getelementptr inbounds i8, i8* %add.ptr3420, i32 %conv3432
  call void %411(i8* %5, i8* %add.ptr3425, i8* %add.ptr3429, i8* %add.ptr3433, i32 %3, i32* nonnull %arraydecay3434) #3
  %415 = load i32, i32* %arraydecay3434, align 16, !tbaa !11
  %416 = load i16, i16* %arrayidx3423, align 2, !tbaa !44
  %idxprom = sext i16 %416 to i32
  %arrayidx3445 = getelementptr inbounds i16, i16* %add.ptr3319, i32 %idxprom
  %417 = load i16, i16* %arrayidx3445, align 2, !tbaa !44
  %conv3446 = zext i16 %417 to i32
  %add3447 = add nsw i32 %415, %conv3446
  %mul3448 = mul nsw i32 %bsad.16296, %cond3373
  %shr3449 = ashr i32 %mul3448, 3
  %cmp3450 = icmp slt i32 %add3447, %shr3449
  br i1 %cmp3450, label %if.then3452, label %if.end3472

if.then3452:                                      ; preds = %for.body3417
  %cmp3453 = icmp slt i32 %add3447, %bsad.16296
  %spec.select6083 = select i1 %cmp3453, i32 %add3447, i32 %bsad.16296
  %add3457 = add nsw i32 %add3447, %conv3397
  %sad3459 = getelementptr inbounds %struct.mvsad_t, %struct.mvsad_t* %402, i32 %nmvsad.16295, i32 0
  store i32 %add3457, i32* %sad3459, align 4, !tbaa !56
  %conv3464 = add i16 %416, %407
  %arrayidx3466 = getelementptr inbounds %struct.mvsad_t, %struct.mvsad_t* %402, i32 %nmvsad.16295, i32 1, i32 0
  store i16 %conv3464, i16* %arrayidx3466, align 4, !tbaa !44
  %arrayidx3470 = getelementptr inbounds %struct.mvsad_t, %struct.mvsad_t* %402, i32 %nmvsad.16295, i32 1, i32 1
  store i16 %conv3467, i16* %arrayidx3470, align 2, !tbaa !44
  %inc3471 = add nsw i32 %nmvsad.16295, 1
  %.pre6358 = mul nsw i32 %spec.select6083, %cond3373
  %.pre6359 = ashr i32 %.pre6358, 3
  br label %if.end3472

if.end3472:                                       ; preds = %if.then3452, %for.body3417
  %shr3449.1.pre-phi = phi i32 [ %.pre6359, %if.then3452 ], [ %shr3449, %for.body3417 ]
  %nmvsad.3 = phi i32 [ %inc3471, %if.then3452 ], [ %nmvsad.16295, %for.body3417 ]
  %bsad.4 = phi i32 [ %spec.select6083, %if.then3452 ], [ %bsad.16296, %for.body3417 ]
  %418 = load i32, i32* %arrayidx3442.1, align 4, !tbaa !11
  %419 = load i16, i16* %arrayidx3427, align 2, !tbaa !44
  %idxprom.1 = sext i16 %419 to i32
  %arrayidx3445.1 = getelementptr inbounds i16, i16* %add.ptr3319, i32 %idxprom.1
  %420 = load i16, i16* %arrayidx3445.1, align 2, !tbaa !44
  %conv3446.1 = zext i16 %420 to i32
  %add3447.1 = add nsw i32 %418, %conv3446.1
  %cmp3450.1 = icmp slt i32 %add3447.1, %shr3449.1.pre-phi
  br i1 %cmp3450.1, label %if.then3452.1, label %if.end3472.1

for.body3483:                                     ; preds = %if.end3522, %for.body3483.lr.ph
  %i3394.16304 = phi i32 [ %i3394.0.lcssa, %for.body3483.lr.ph ], [ %inc3524, %if.end3522 ]
  %bsad.56303 = phi i32 [ %bsad.1.lcssa, %for.body3483.lr.ph ], [ %bsad.7, %if.end3522 ]
  %nmvsad.46302 = phi i32 [ %nmvsad.1.lcssa, %for.body3483.lr.ph ], [ %nmvsad.5, %if.end3522 ]
  %arrayidx3485 = getelementptr inbounds i16, i16* %392, i32 %i3394.16304
  %421 = load i16, i16* %arrayidx3485, align 2, !tbaa !44
  %conv3486 = sext i16 %421 to i32
  %add3487 = add nsw i32 %cond3272, %conv3486
  %422 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx3375, align 4, !tbaa !42
  %add.ptr3494 = getelementptr inbounds i8, i8* %add.ptr3492, i32 %add3487
  %call3495 = call i32 %422(i8* %5, i32 16, i8* %add.ptr3494, i32 %3) #3
  %423 = load i16, i16* %arrayidx3485, align 2, !tbaa !44
  %idxprom3497 = sext i16 %423 to i32
  %arrayidx3498 = getelementptr inbounds i16, i16* %add.ptr3319, i32 %idxprom3497
  %424 = load i16, i16* %arrayidx3498, align 2, !tbaa !44
  %conv3499 = zext i16 %424 to i32
  %add3500 = add nsw i32 %call3495, %conv3499
  %mul3501 = mul nsw i32 %bsad.56303, %cond3373
  %shr3502 = ashr i32 %mul3501, 3
  %cmp3503 = icmp slt i32 %add3500, %shr3502
  br i1 %cmp3503, label %if.then3505, label %if.end3522

if.then3505:                                      ; preds = %for.body3483
  %cmp3506 = icmp slt i32 %add3500, %bsad.56303
  %spec.select6084 = select i1 %cmp3506, i32 %add3500, i32 %bsad.56303
  %add3510 = add nsw i32 %add3500, %conv3397
  %sad3512 = getelementptr inbounds %struct.mvsad_t, %struct.mvsad_t* %402, i32 %nmvsad.46302, i32 0
  store i32 %add3510, i32* %sad3512, align 4, !tbaa !56
  %conv3513 = trunc i32 %add3487 to i16
  %arrayidx3516 = getelementptr inbounds %struct.mvsad_t, %struct.mvsad_t* %402, i32 %nmvsad.46302, i32 1, i32 0
  store i16 %conv3513, i16* %arrayidx3516, align 4, !tbaa !44
  %arrayidx3520 = getelementptr inbounds %struct.mvsad_t, %struct.mvsad_t* %402, i32 %nmvsad.46302, i32 1, i32 1
  store i16 %conv3517, i16* %arrayidx3520, align 2, !tbaa !44
  %inc3521 = add nsw i32 %nmvsad.46302, 1
  br label %if.end3522

if.end3522:                                       ; preds = %if.then3505, %for.body3483
  %nmvsad.5 = phi i32 [ %inc3521, %if.then3505 ], [ %nmvsad.46302, %for.body3483 ]
  %bsad.7 = phi i32 [ %spec.select6084, %if.then3505 ], [ %bsad.56303, %for.body3483 ]
  %inc3524 = add i32 %i3394.16304, 1
  %exitcond6348 = icmp eq i32 %inc3524, %call3412
  br i1 %exitcond6348, label %for.end3525, label %for.body3483

for.end3525:                                      ; preds = %if.end3522, %for.cond3480.preheader
  %nmvsad.4.lcssa = phi i32 [ %nmvsad.1.lcssa, %for.cond3480.preheader ], [ %nmvsad.5, %if.end3522 ]
  %bsad.5.lcssa = phi i32 [ %bsad.1.lcssa, %for.cond3480.preheader ], [ %bsad.7, %if.end3522 ]
  %add3526 = add nsw i32 %bsad.5.lcssa, %conv3397
  br label %cleanup3527

cleanup3527:                                      ; preds = %for.body3393, %for.end3525
  %nmvsad.6 = phi i32 [ %nmvsad.4.lcssa, %for.end3525 ], [ %nmvsad.06308, %for.body3393 ]
  %bsad.8 = phi i32 [ %add3526, %for.end3525 ], [ %bsad.06309, %for.body3393 ]
  %inc3532 = add nsw i32 %my3388.06310, 1
  %cmp3390 = icmp slt i32 %my3388.06310, %cond3296
  br i1 %cmp3390, label %for.body3393, label %for.cond.cleanup3392

while.cond.loopexit:                              ; preds = %while.body3557, %for.body3564, %while.end
  %i3545.1.lcssa = phi i32 [ %i3545.0.lcssa, %while.end ], [ %add3581, %for.body3564 ], [ %nmvsad.76288, %while.body3557 ]
  %cmp3539 = icmp sgt i32 %i3545.1.lcssa, %mul3538
  %cmp3542 = icmp sgt i32 %shr3547, %bsad.0.lcssa
  %425 = and i1 %cmp3539, %cmp3542
  br i1 %425, label %while.body, label %while.cond3587.preheader

while.cond3587.preheader:                         ; preds = %while.cond.loopexit, %for.cond.cleanup3392
  %nmvsad.7.lcssa = phi i32 [ %nmvsad.0.lcssa, %for.cond.cleanup3392 ], [ %i3545.1.lcssa, %while.cond.loopexit ]
  %cmp35886275 = icmp sgt i32 %nmvsad.7.lcssa, %shr3535
  br i1 %cmp35886275, label %for.cond3592.preheader, label %for.cond3616.preheader

while.body:                                       ; preds = %for.cond.cleanup3392, %while.cond.loopexit
  %sad_thresh.06289 = phi i32 [ %shr3547, %while.cond.loopexit ], [ %shr3537, %for.cond.cleanup3392 ]
  %nmvsad.76288 = phi i32 [ %i3545.1.lcssa, %while.cond.loopexit ], [ %nmvsad.0.lcssa, %for.cond.cleanup3392 ]
  %add3546 = add nsw i32 %sad_thresh.06289, %bsad.0.lcssa
  %shr3547 = ashr i32 %add3546, 1
  %cmp35496278 = icmp sgt i32 %nmvsad.76288, 0
  br i1 %cmp35496278, label %land.rhs3551, label %while.end

land.rhs3551:                                     ; preds = %while.body, %while.body3557
  %i3545.06279 = phi i32 [ %inc3558, %while.body3557 ], [ 0, %while.body ]
  %sad3553 = getelementptr inbounds %struct.mvsad_t, %struct.mvsad_t* %402, i32 %i3545.06279, i32 0
  %426 = load i32, i32* %sad3553, align 4, !tbaa !56
  %cmp3554 = icmp sgt i32 %426, %shr3547
  br i1 %cmp3554, label %while.end, label %while.body3557

while.body3557:                                   ; preds = %land.rhs3551
  %inc3558 = add nuw nsw i32 %i3545.06279, 1
  %exitcond6345 = icmp eq i32 %inc3558, %nmvsad.76288
  br i1 %exitcond6345, label %while.cond.loopexit, label %land.rhs3551

while.end:                                        ; preds = %land.rhs3551, %while.body
  %i3545.0.lcssa = phi i32 [ 0, %while.body ], [ %i3545.06279, %land.rhs3551 ]
  %cmp35616282 = icmp slt i32 %i3545.0.lcssa, %nmvsad.76288
  br i1 %cmp35616282, label %for.body3564.lr.ph, label %while.cond.loopexit

for.body3564.lr.ph:                               ; preds = %while.end
  %427 = xor i32 %shr3547, -1
  br label %for.body3564

for.body3564:                                     ; preds = %for.body3564, %for.body3564.lr.ph
  %j3559.06284 = phi i32 [ %i3545.0.lcssa, %for.body3564.lr.ph ], [ %inc3583, %for.body3564 ]
  %i3545.16283 = phi i32 [ %i3545.0.lcssa, %for.body3564.lr.ph ], [ %add3581, %for.body3564 ]
  %sad3567 = getelementptr inbounds %struct.mvsad_t, %struct.mvsad_t* %402, i32 %j3559.06284, i32 0
  %428 = load i32, i32* %sad3567, align 4, !tbaa !56
  %arraydecay3570 = getelementptr inbounds %struct.mvsad_t, %struct.mvsad_t* %402, i32 %j3559.06284, i32 1, i32 0
  %i3571 = bitcast i16* %arraydecay3570 to i32*
  %429 = load i32, i32* %i3571, align 4, !tbaa !50
  %arraydecay3574 = getelementptr inbounds %struct.mvsad_t, %struct.mvsad_t* %402, i32 %i3545.16283, i32 1, i32 0
  %i3575 = bitcast i16* %arraydecay3574 to i32*
  store i32 %429, i32* %i3575, align 4, !tbaa !50
  %sad3577 = getelementptr inbounds %struct.mvsad_t, %struct.mvsad_t* %402, i32 %i3545.16283, i32 0
  store i32 %428, i32* %sad3577, align 4, !tbaa !56
  %sub3579 = add i32 %428, %427
  %shr3580 = lshr i32 %sub3579, 31
  %add3581 = add i32 %shr3580, %i3545.16283
  %inc3583 = add nuw nsw i32 %j3559.06284, 1
  %exitcond6346 = icmp eq i32 %inc3583, %nmvsad.76288
  br i1 %exitcond6346, label %while.cond.loopexit, label %for.body3564

for.cond3592.preheader:                           ; preds = %while.cond3587.preheader, %for.cond.cleanup3595
  %nmvsad.86276 = phi i32 [ %dec3609, %for.cond.cleanup3595 ], [ %nmvsad.7.lcssa, %while.cond3587.preheader ]
  %cmp35936271 = icmp sgt i32 %nmvsad.86276, 1
  br i1 %cmp35936271, label %for.body3596, label %for.cond.cleanup3595

for.cond3616.preheader:                           ; preds = %for.cond.cleanup3595, %while.cond3587.preheader
  %nmvsad.8.lcssa = phi i32 [ %nmvsad.7.lcssa, %while.cond3587.preheader ], [ %shr3535, %for.cond.cleanup3595 ]
  %cmp36176263 = icmp sgt i32 %nmvsad.8.lcssa, 0
  br i1 %cmp36176263, label %do.body3621.lr.ph, label %if.end3833

do.body3621.lr.ph:                                ; preds = %for.cond3616.preheader
  %arrayidx3625 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 92, i32 7, i32 %0
  br label %do.body3621

for.cond.cleanup3595:                             ; preds = %for.body3596, %for.cond3592.preheader
  %bi.0.lcssa = phi i32 [ 0, %for.cond3592.preheader ], [ %spec.select6085, %for.body3596 ]
  %dec3609 = add nsw i32 %nmvsad.86276, -1
  %arrayidx3610 = getelementptr inbounds %struct.mvsad_t, %struct.mvsad_t* %402, i32 %dec3609
  %i3611 = bitcast %struct.mvsad_t* %arrayidx3610 to i64*
  %430 = load i64, i64* %i3611, align 8, !tbaa !50
  %arrayidx3612 = getelementptr inbounds %struct.mvsad_t, %struct.mvsad_t* %402, i32 %bi.0.lcssa
  %i3613 = bitcast %struct.mvsad_t* %arrayidx3612 to i64*
  store i64 %430, i64* %i3613, align 8, !tbaa !50
  %cmp3588 = icmp sgt i32 %dec3609, %shr3535
  br i1 %cmp3588, label %for.cond3592.preheader, label %for.cond3616.preheader

for.body3596:                                     ; preds = %for.cond3592.preheader, %for.body3596
  %i3591.06273 = phi i32 [ %inc3606, %for.body3596 ], [ 1, %for.cond3592.preheader ]
  %bi.06272 = phi i32 [ %spec.select6085, %for.body3596 ], [ 0, %for.cond3592.preheader ]
  %sad3598 = getelementptr inbounds %struct.mvsad_t, %struct.mvsad_t* %402, i32 %i3591.06273, i32 0
  %431 = load i32, i32* %sad3598, align 4, !tbaa !56
  %sad3600 = getelementptr inbounds %struct.mvsad_t, %struct.mvsad_t* %402, i32 %bi.06272, i32 0
  %432 = load i32, i32* %sad3600, align 4, !tbaa !56
  %cmp3601 = icmp sgt i32 %431, %432
  %spec.select6085 = select i1 %cmp3601, i32 %i3591.06273, i32 %bi.06272
  %inc3606 = add nuw nsw i32 %i3591.06273, 1
  %exitcond6344 = icmp eq i32 %inc3606, %nmvsad.86276
  br i1 %exitcond6344, label %for.cond.cleanup3595, label %for.body3596

do.body3621:                                      ; preds = %do.body3621, %do.body3621.lr.ph
  %bmx.996267 = phi i32 [ %bmx.7, %do.body3621.lr.ph ], [ %spec.select6088, %do.body3621 ]
  %bmy.996266 = phi i32 [ %bmy.7, %do.body3621.lr.ph ], [ %spec.select6087, %do.body3621 ]
  %bcost.1386265 = phi i32 [ %bcost.9, %do.body3621.lr.ph ], [ %spec.select6086, %do.body3621 ]
  %i3615.06264 = phi i32 [ 0, %do.body3621.lr.ph ], [ %inc3669, %do.body3621 ]
  %433 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx3625, align 4, !tbaa !42
  %arrayidx3628 = getelementptr inbounds %struct.mvsad_t, %struct.mvsad_t* %402, i32 %i3615.06264, i32 1, i32 1
  %434 = load i16, i16* %arrayidx3628, align 2, !tbaa !44
  %conv3629 = sext i16 %434 to i32
  %mul3630 = mul nsw i32 %3, %conv3629
  %arrayidx3633 = getelementptr inbounds %struct.mvsad_t, %struct.mvsad_t* %402, i32 %i3615.06264, i32 1, i32 0
  %435 = load i16, i16* %arrayidx3633, align 4, !tbaa !44
  %conv3634 = sext i16 %435 to i32
  %add3635 = add nsw i32 %mul3630, %conv3634
  %arrayidx3636 = getelementptr inbounds i8, i8* %6, i32 %add3635
  %call3637 = call i32 %433(i8* %5, i32 16, i8* %arrayidx3636, i32 %3) #3
  %436 = load i16, i16* %arrayidx3633, align 4, !tbaa !44
  %conv3641 = sext i16 %436 to i32
  %mul3642 = shl nsw i32 %conv3641, 2
  %arrayidx3643 = getelementptr inbounds i16, i16* %add.ptr, i32 %mul3642
  %437 = load i16, i16* %arrayidx3643, align 2, !tbaa !44
  %conv3644 = zext i16 %437 to i32
  %438 = load i16, i16* %arrayidx3628, align 2, !tbaa !44
  %conv3648 = sext i16 %438 to i32
  %mul3649 = shl nsw i32 %conv3648, 2
  %arrayidx3650 = getelementptr inbounds i16, i16* %add.ptr42, i32 %mul3649
  %439 = load i16, i16* %arrayidx3650, align 2, !tbaa !44
  %conv3651 = zext i16 %439 to i32
  %add3652 = add i32 %call3637, %conv3644
  %add3653 = add i32 %add3652, %conv3651
  %cmp3654 = icmp slt i32 %add3653, %bcost.1386265
  %spec.select6086 = select i1 %cmp3654, i32 %add3653, i32 %bcost.1386265
  %spec.select6087 = select i1 %cmp3654, i32 %conv3648, i32 %bmy.996266
  %spec.select6088 = select i1 %cmp3654, i32 %conv3641, i32 %bmx.996267
  %inc3669 = add nuw nsw i32 %i3615.06264, 1
  %exitcond6343 = icmp eq i32 %inc3669, %nmvsad.8.lcssa
  br i1 %exitcond6343, label %if.end3833, label %do.body3621

for.body3678:                                     ; preds = %cleanup3825, %for.body3678.lr.ph
  %bmx.1016338 = phi i32 [ %bmx.7, %for.body3678.lr.ph ], [ %bmx.108, %cleanup3825 ]
  %bmy.1016337 = phi i32 [ %bmy.7, %for.body3678.lr.ph ], [ %bmy.108, %cleanup3825 ]
  %bcost.1406336 = phi i32 [ %bcost.9, %for.body3678.lr.ph ], [ %bcost.147, %cleanup3825 ]
  %my3673.06332 = phi i32 [ %cond3280, %for.body3678.lr.ph ], [ %inc3830, %cleanup3825 ]
  %mul3681 = shl nsw i32 %my3673.06332, 2
  %arrayidx3682 = getelementptr inbounds i16, i16* %add.ptr42, i32 %mul3681
  %440 = load i16, i16* %arrayidx3682, align 2, !tbaa !44
  %conv3683 = zext i16 %440 to i32
  %cmp3684 = icmp sgt i32 %bcost.1406336, %conv3683
  br i1 %cmp3684, label %if.end3687, label %cleanup3825

if.end3687:                                       ; preds = %for.body3678
  %sub3688 = sub nsw i32 %bcost.1406336, %conv3683
  %441 = load i32 (i32*, i16*, i32, i16*, i16*, i32, i32)*, i32 (i32*, i16*, i32, i16*, i16*, i32, i32)** %arrayidx3691, align 4, !tbaa !42
  %mul3694 = mul nsw i32 %my3673.06332, %3
  %add.ptr3695 = getelementptr inbounds i16, i16* %add.ptr3693, i32 %mul3694
  %call3697 = call i32 %441(i32* nonnull %arraydecay3328, i16* %add.ptr3695, i32 %delta.0, i16* %add.ptr3696, i16* %392, i32 %and3299, i32 %sub3688) #3
  %sub3699 = add nsw i32 %call3697, -2
  %cmp37006314 = icmp sgt i32 %call3697, 2
  br i1 %cmp37006314, label %for.body3702.lr.ph, label %for.end3784

for.body3702.lr.ph:                               ; preds = %if.end3687
  %add.ptr3709 = getelementptr inbounds i8, i8* %6, i32 %mul3694
  br label %for.body3702

for.body3702:                                     ; preds = %for.body3702.lr.ph, %for.body3702
  %bmx.1026318 = phi i32 [ %bmx.1016338, %for.body3702.lr.ph ], [ %spec.select6173, %for.body3702 ]
  %bmy.1026317 = phi i32 [ %bmy.1016337, %for.body3702.lr.ph ], [ %spec.select6172, %for.body3702 ]
  %bcost.1416316 = phi i32 [ %sub3688, %for.body3702.lr.ph ], [ %spec.select6171, %for.body3702 ]
  %i3679.06315 = phi i32 [ 0, %for.body3702.lr.ph ], [ %add3783, %for.body3702 ]
  %442 = load void (i8*, i8*, i8*, i8*, i32, i32*)*, void (i8*, i8*, i8*, i8*, i32, i32*)** %arrayidx3705, align 4, !tbaa !42
  %arrayidx3706 = getelementptr inbounds i16, i16* %392, i32 %i3679.06315
  %443 = load i16, i16* %arrayidx3706, align 2, !tbaa !44
  %conv3707 = sext i16 %443 to i32
  %add3708 = add nsw i32 %cond3272, %conv3707
  %add.ptr3711 = getelementptr inbounds i8, i8* %add.ptr3709, i32 %add3708
  %add3712 = add nuw nsw i32 %i3679.06315, 1
  %arrayidx3713 = getelementptr inbounds i16, i16* %392, i32 %add3712
  %444 = load i16, i16* %arrayidx3713, align 2, !tbaa !44
  %conv3714 = sext i16 %444 to i32
  %add3715 = add nsw i32 %cond3272, %conv3714
  %add.ptr3718 = getelementptr inbounds i8, i8* %add.ptr3709, i32 %add3715
  %add3719 = add nuw nsw i32 %i3679.06315, 2
  %arrayidx3720 = getelementptr inbounds i16, i16* %392, i32 %add3719
  %445 = load i16, i16* %arrayidx3720, align 2, !tbaa !44
  %conv3721 = sext i16 %445 to i32
  %add3722 = add nsw i32 %cond3272, %conv3721
  %add.ptr3725 = getelementptr inbounds i8, i8* %add.ptr3709, i32 %add3722
  call void %442(i8* %5, i8* %add.ptr3711, i8* %add.ptr3718, i8* %add.ptr3725, i32 %3, i32* nonnull %arraydecay3726) #3
  %446 = load i16, i16* %arrayidx3706, align 2, !tbaa !44
  %conv3728 = sext i16 %446 to i32
  %add3729 = add nsw i32 %cond3272, %conv3728
  %mul3730 = shl nsw i32 %add3729, 2
  %arrayidx3731 = getelementptr inbounds i16, i16* %add.ptr, i32 %mul3730
  %447 = load i16, i16* %arrayidx3731, align 2, !tbaa !44
  %conv3732 = zext i16 %447 to i32
  %448 = load i32, i32* %arraydecay3726, align 16, !tbaa !11
  %add3734 = add nsw i32 %448, %conv3732
  store i32 %add3734, i32* %arraydecay3726, align 16, !tbaa !11
  %449 = load i16, i16* %arrayidx3713, align 2, !tbaa !44
  %conv3737 = sext i16 %449 to i32
  %add3738 = add nsw i32 %cond3272, %conv3737
  %mul3739 = shl nsw i32 %add3738, 2
  %arrayidx3740 = getelementptr inbounds i16, i16* %add.ptr, i32 %mul3739
  %450 = load i16, i16* %arrayidx3740, align 2, !tbaa !44
  %conv3741 = zext i16 %450 to i32
  %451 = load i32, i32* %arrayidx3742, align 4, !tbaa !11
  %add3743 = add nsw i32 %451, %conv3741
  store i32 %add3743, i32* %arrayidx3742, align 4, !tbaa !11
  %452 = load i16, i16* %arrayidx3720, align 2, !tbaa !44
  %conv3746 = sext i16 %452 to i32
  %add3747 = add nsw i32 %cond3272, %conv3746
  %mul3748 = shl nsw i32 %add3747, 2
  %arrayidx3749 = getelementptr inbounds i16, i16* %add.ptr, i32 %mul3748
  %453 = load i16, i16* %arrayidx3749, align 2, !tbaa !44
  %conv3750 = zext i16 %453 to i32
  %454 = load i32, i32* %arrayidx3751, align 8, !tbaa !11
  %add3752 = add nsw i32 %454, %conv3750
  store i32 %add3752, i32* %arrayidx3751, align 8, !tbaa !11
  %cmp3754 = icmp slt i32 %add3734, %bcost.1416316
  %spec.select6168 = select i1 %cmp3754, i32 %add3734, i32 %bcost.1416316
  %spec.select6170 = select i1 %cmp3754, i32 %add3729, i32 %bmx.1026318
  %cmp3763 = icmp slt i32 %add3743, %spec.select6168
  %bcost.143 = select i1 %cmp3763, i32 %add3743, i32 %spec.select6168
  %455 = or i1 %cmp3754, %cmp3763
  %bmx.104 = select i1 %cmp3763, i32 %add3738, i32 %spec.select6170
  %cmp3773 = icmp slt i32 %add3752, %bcost.143
  %spec.select6171 = select i1 %cmp3773, i32 %add3752, i32 %bcost.143
  %456 = or i1 %455, %cmp3773
  %spec.select6172 = select i1 %456, i32 %my3673.06332, i32 %bmy.1026317
  %spec.select6173 = select i1 %cmp3773, i32 %add3747, i32 %bmx.104
  %add3783 = add nuw nsw i32 %i3679.06315, 3
  %cmp3700 = icmp slt i32 %add3783, %sub3699
  br i1 %cmp3700, label %for.body3702, label %for.end3784

for.end3784:                                      ; preds = %for.body3702, %if.end3687
  %i3679.0.lcssa = phi i32 [ 0, %if.end3687 ], [ %add3783, %for.body3702 ]
  %bcost.141.lcssa = phi i32 [ %sub3688, %if.end3687 ], [ %spec.select6171, %for.body3702 ]
  %bmy.102.lcssa = phi i32 [ %bmy.1016337, %if.end3687 ], [ %spec.select6172, %for.body3702 ]
  %bmx.102.lcssa = phi i32 [ %bmx.1016338, %if.end3687 ], [ %spec.select6173, %for.body3702 ]
  %add3785 = add nsw i32 %bcost.141.lcssa, %conv3683
  %cmp37876323 = icmp slt i32 %i3679.0.lcssa, %call3697
  br i1 %cmp37876323, label %do.body3790.lr.ph, label %cleanup3825

do.body3790.lr.ph:                                ; preds = %for.end3784
  %add3798 = add i32 %mul3694, %cond3272
  br label %do.body3790

do.body3790:                                      ; preds = %do.body3790, %do.body3790.lr.ph
  %bmx.1066327 = phi i32 [ %bmx.102.lcssa, %do.body3790.lr.ph ], [ %spec.select6091, %do.body3790 ]
  %bmy.1066326 = phi i32 [ %bmy.102.lcssa, %do.body3790.lr.ph ], [ %spec.select6090, %do.body3790 ]
  %bcost.1456325 = phi i32 [ %add3785, %do.body3790.lr.ph ], [ %spec.select6089, %do.body3790 ]
  %i3679.16324 = phi i32 [ %i3679.0.lcssa, %do.body3790.lr.ph ], [ %inc3823, %do.body3790 ]
  %457 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx3794, align 4, !tbaa !42
  %arrayidx3796 = getelementptr inbounds i16, i16* %392, i32 %i3679.16324
  %458 = load i16, i16* %arrayidx3796, align 2, !tbaa !44
  %conv3797 = sext i16 %458 to i32
  %add3799 = add i32 %add3798, %conv3797
  %arrayidx3800 = getelementptr inbounds i8, i8* %6, i32 %add3799
  %call3801 = call i32 %457(i8* %5, i32 16, i8* %arrayidx3800, i32 %3) #3
  %459 = load i16, i16* %arrayidx3796, align 2, !tbaa !44
  %conv3803 = sext i16 %459 to i32
  %add3804 = add nsw i32 %cond3272, %conv3803
  %mul3805 = shl nsw i32 %add3804, 2
  %arrayidx3806 = getelementptr inbounds i16, i16* %add.ptr, i32 %mul3805
  %460 = load i16, i16* %arrayidx3806, align 2, !tbaa !44
  %conv3807 = zext i16 %460 to i32
  %461 = load i16, i16* %arrayidx3682, align 2, !tbaa !44
  %conv3810 = zext i16 %461 to i32
  %add3811 = add i32 %call3801, %conv3807
  %add3812 = add i32 %add3811, %conv3810
  %cmp3813 = icmp slt i32 %add3812, %bcost.1456325
  %spec.select6089 = select i1 %cmp3813, i32 %add3812, i32 %bcost.1456325
  %spec.select6090 = select i1 %cmp3813, i32 %my3673.06332, i32 %bmy.1066326
  %spec.select6091 = select i1 %cmp3813, i32 %add3804, i32 %bmx.1066327
  %inc3823 = add i32 %i3679.16324, 1
  %exitcond6349 = icmp eq i32 %inc3823, %call3697
  br i1 %exitcond6349, label %cleanup3825, label %do.body3790

cleanup3825:                                      ; preds = %do.body3790, %for.end3784, %for.body3678
  %bcost.147 = phi i32 [ %bcost.1406336, %for.body3678 ], [ %add3785, %for.end3784 ], [ %spec.select6089, %do.body3790 ]
  %bmy.108 = phi i32 [ %bmy.1016337, %for.body3678 ], [ %bmy.102.lcssa, %for.end3784 ], [ %spec.select6090, %do.body3790 ]
  %bmx.108 = phi i32 [ %bmx.1016338, %for.body3678 ], [ %bmx.102.lcssa, %for.end3784 ], [ %spec.select6091, %do.body3790 ]
  %inc3830 = add nsw i32 %my3673.06332, 1
  %cmp3675 = icmp slt i32 %my3673.06332, %cond3296
  br i1 %cmp3675, label %for.body3678, label %if.end3833

if.end3833:                                       ; preds = %cleanup3825, %do.body3621, %for.cond3674.preheader, %for.cond3616.preheader
  %bcost.148 = phi i32 [ %bcost.9, %for.cond3616.preheader ], [ %bcost.9, %for.cond3674.preheader ], [ %spec.select6086, %do.body3621 ], [ %bcost.147, %cleanup3825 ]
  %bmy.109 = phi i32 [ %bmy.7, %for.cond3616.preheader ], [ %bmy.7, %for.cond3674.preheader ], [ %spec.select6087, %do.body3621 ], [ %bmy.108, %cleanup3825 ]
  %bmx.109 = phi i32 [ %bmx.7, %for.cond3616.preheader ], [ %bmx.7, %for.cond3674.preheader ], [ %spec.select6088, %do.body3621 ], [ %bmx.108, %cleanup3825 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %389) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end1947, %if.then1345, %do.end3243, %if.end321, %if.end3833, %if.end806, %do.end452
  %bcost.149 = phi i32 [ %bcost.9, %if.end321 ], [ %bcost.148, %if.end3833 ], [ %shr1027, %if.end806 ], [ %shr453, %do.end452 ], [ %bcost.45, %for.end1947 ], [ %bcost.136, %do.end3243 ], [ %bcost.9, %if.then1345 ]
  %bmy.110 = phi i32 [ %bmy.7, %if.end321 ], [ %bmy.109, %if.end3833 ], [ %add1026, %if.end806 ], [ %bmy.9, %do.end452 ], [ %bmy.64, %for.end1947 ], [ %bmy.97, %do.end3243 ], [ %bmy.34, %if.then1345 ]
  %bmx.110 = phi i32 [ %bmx.7, %if.end321 ], [ %bmx.109, %if.end3833 ], [ %add1021, %if.end806 ], [ %bmx.9, %do.end452 ], [ %bmx.64, %for.end1947 ], [ %bmx.97, %do.end3243 ], [ %bmx.34, %if.then1345 ]
  %and.i = and i32 %bmx.110, 65535
  %shl.i = shl i32 %bmy.110, 16
  %add.i = or i32 %and.i, %shl.i
  %mul3835 = shl i32 %add.i, 2
  %and3836 = and i32 %mul3835, -196612
  %462 = load i32, i32* %i_subpel_refine, align 8, !tbaa !47
  %cmp3839 = icmp slt i32 %462, 3
  br i1 %cmp3839, label %if.then3841, label %if.else3860

if.then3841:                                      ; preds = %sw.epilog
  %mul3842 = shl nsw i32 %bmx.110, 2
  %arrayidx3843 = getelementptr inbounds i16, i16* %add.ptr, i32 %mul3842
  %463 = load i16, i16* %arrayidx3843, align 2, !tbaa !44
  %conv3844 = zext i16 %463 to i32
  %mul3845 = shl nsw i32 %bmy.110, 2
  %arrayidx3846 = getelementptr inbounds i16, i16* %add.ptr42, i32 %mul3845
  %464 = load i16, i16* %arrayidx3846, align 2, !tbaa !44
  %conv3847 = zext i16 %464 to i32
  %add3848 = add nuw nsw i32 %conv3847, %conv3844
  %cost_mv = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 11
  store i32 %add3848, i32* %cost_mv, align 8, !tbaa !58
  %cost3849 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 12
  %cmp3850 = icmp eq i32 %add.i, %pmv.0
  %add3855 = select i1 %cmp3850, i32 %add3848, i32 0
  %spec.select6174 = add nsw i32 %bcost.149, %add3855
  store i32 %spec.select6174, i32* %cost3849, align 4, !tbaa !59
  %arraydecay3858 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 13, i32 0
  %i3859 = bitcast i16* %arraydecay3858 to i32*
  store i32 %and3836, i32* %i3859, align 16, !tbaa !50
  br label %if.end3877

if.else3860:                                      ; preds = %sw.epilog
  %cmp3861 = icmp slt i32 %bpred_cost.4, %bcost.149
  %cond3866 = select i1 %cmp3861, i32 %bpred_mv.0, i32 %and3836
  %arraydecay3868 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 13, i32 0
  %i3869 = bitcast i16* %arraydecay3868 to i32*
  store i32 %cond3866, i32* %i3869, align 16, !tbaa !50
  %cond3875 = select i1 %cmp3861, i32 %bpred_cost.4, i32 %bcost.149
  %cost3876 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 12
  store i32 %cond3875, i32* %cost3876, align 4, !tbaa !59
  br label %if.end3877

if.end3877:                                       ; preds = %if.else3860, %if.then3841
  %465 = load i32, i32* %i_subpel_refine, align 8, !tbaa !47
  %cmp3880 = icmp sgt i32 %465, 1
  br i1 %cmp3880, label %if.then3882, label %if.end3893

if.then3882:                                      ; preds = %if.end3877
  %arrayidx3886 = getelementptr inbounds [12 x [4 x i8]], [12 x [4 x i8]]* @subpel_iterations, i32 0, i32 %465, i32 2
  %466 = load i8, i8* %arrayidx3886, align 1, !tbaa !50
  %conv3887 = zext i8 %466 to i32
  %arrayidx3891 = getelementptr inbounds [12 x [4 x i8]], [12 x [4 x i8]]* @subpel_iterations, i32 0, i32 %465, i32 3
  %467 = load i8, i8* %arrayidx3891, align 1, !tbaa !50
  %conv3892 = zext i8 %467 to i32
  call fastcc void @refine_subpel(%struct.x264_t* nonnull %h, %struct.x264_me_t* nonnull %m, i32 %conv3887, i32 %conv3892, i32* %p_halfpel_thresh, i32 0)
  br label %if.end3893

if.end3893:                                       ; preds = %if.then3882, %if.end3877
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %9) #3
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %8) #3
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %7) #3
  ret void

if.then3452.1:                                    ; preds = %if.end3472
  %cmp3453.1 = icmp slt i32 %add3447.1, %bsad.4
  %spec.select6083.1 = select i1 %cmp3453.1, i32 %add3447.1, i32 %bsad.4
  %add3457.1 = add nsw i32 %add3447.1, %conv3397
  %sad3459.1 = getelementptr inbounds %struct.mvsad_t, %struct.mvsad_t* %402, i32 %nmvsad.3, i32 0
  store i32 %add3457.1, i32* %sad3459.1, align 4, !tbaa !56
  %conv3464.1 = add i16 %419, %407
  %arrayidx3466.1 = getelementptr inbounds %struct.mvsad_t, %struct.mvsad_t* %402, i32 %nmvsad.3, i32 1, i32 0
  store i16 %conv3464.1, i16* %arrayidx3466.1, align 4, !tbaa !44
  %arrayidx3470.1 = getelementptr inbounds %struct.mvsad_t, %struct.mvsad_t* %402, i32 %nmvsad.3, i32 1, i32 1
  store i16 %conv3467, i16* %arrayidx3470.1, align 2, !tbaa !44
  %inc3471.1 = add nsw i32 %nmvsad.3, 1
  %.pre6360 = mul nsw i32 %spec.select6083.1, %cond3373
  %.pre6361 = ashr i32 %.pre6360, 3
  br label %if.end3472.1

if.end3472.1:                                     ; preds = %if.then3452.1, %if.end3472
  %shr3449.2.pre-phi = phi i32 [ %.pre6361, %if.then3452.1 ], [ %shr3449.1.pre-phi, %if.end3472 ]
  %nmvsad.3.1 = phi i32 [ %inc3471.1, %if.then3452.1 ], [ %nmvsad.3, %if.end3472 ]
  %bsad.4.1 = phi i32 [ %spec.select6083.1, %if.then3452.1 ], [ %bsad.4, %if.end3472 ]
  %468 = load i32, i32* %arrayidx3442.2, align 8, !tbaa !11
  %469 = load i16, i16* %arrayidx3431, align 2, !tbaa !44
  %idxprom.2 = sext i16 %469 to i32
  %arrayidx3445.2 = getelementptr inbounds i16, i16* %add.ptr3319, i32 %idxprom.2
  %470 = load i16, i16* %arrayidx3445.2, align 2, !tbaa !44
  %conv3446.2 = zext i16 %470 to i32
  %add3447.2 = add nsw i32 %468, %conv3446.2
  %cmp3450.2 = icmp slt i32 %add3447.2, %shr3449.2.pre-phi
  br i1 %cmp3450.2, label %if.then3452.2, label %if.end3472.2

if.then3452.2:                                    ; preds = %if.end3472.1
  %cmp3453.2 = icmp slt i32 %add3447.2, %bsad.4.1
  %spec.select6083.2 = select i1 %cmp3453.2, i32 %add3447.2, i32 %bsad.4.1
  %add3457.2 = add nsw i32 %add3447.2, %conv3397
  %sad3459.2 = getelementptr inbounds %struct.mvsad_t, %struct.mvsad_t* %402, i32 %nmvsad.3.1, i32 0
  store i32 %add3457.2, i32* %sad3459.2, align 4, !tbaa !56
  %conv3464.2 = add i16 %469, %407
  %arrayidx3466.2 = getelementptr inbounds %struct.mvsad_t, %struct.mvsad_t* %402, i32 %nmvsad.3.1, i32 1, i32 0
  store i16 %conv3464.2, i16* %arrayidx3466.2, align 4, !tbaa !44
  %arrayidx3470.2 = getelementptr inbounds %struct.mvsad_t, %struct.mvsad_t* %402, i32 %nmvsad.3.1, i32 1, i32 1
  store i16 %conv3467, i16* %arrayidx3470.2, align 2, !tbaa !44
  %inc3471.2 = add nsw i32 %nmvsad.3.1, 1
  br label %if.end3472.2

if.end3472.2:                                     ; preds = %if.then3452.2, %if.end3472.1
  %nmvsad.3.2 = phi i32 [ %inc3471.2, %if.then3452.2 ], [ %nmvsad.3.1, %if.end3472.1 ]
  %bsad.4.2 = phi i32 [ %spec.select6083.2, %if.then3452.2 ], [ %bsad.4.1, %if.end3472.1 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %406) #3
  %add3478 = add nuw nsw i32 %i3394.06297, 3
  %cmp3415 = icmp slt i32 %add3478, %sub3414
  br i1 %cmp3415, label %for.body3417, label %for.cond3480.preheader
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
define internal fastcc void @refine_subpel(%struct.x264_t* readonly %h, %struct.x264_me_t* %m, i32 %hpel_iters, i32 %qpel_iters, i32* %p_halfpel_thresh, i32 %b_refine_qpel) unnamed_addr #0 {
entry:
  %pix = alloca [1152 x i8], align 32
  %costs = alloca [4 x i32], align 16
  %stride = alloca i32, align 4
  %stride83 = alloca i32, align 4
  %stride222 = alloca i32, align 4
  %stride434 = alloca i32, align 4
  %stride596 = alloca i32, align 4
  %stride758 = alloca i32, align 4
  %stride920 = alloca i32, align 4
  %i_pixel = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 0
  %0 = load i32, i32* %i_pixel, align 64, !tbaa !2
  %w = getelementptr inbounds [12 x %struct.anon.18], [12 x %struct.anon.18]* @x264_pixel_size, i32 0, i32 %0, i32 0
  %1 = load i8, i8* %w, align 1, !tbaa !8
  %conv = zext i8 %1 to i32
  %h3 = getelementptr inbounds [12 x %struct.anon.18], [12 x %struct.anon.18]* @x264_pixel_size, i32 0, i32 %0, i32 1
  %2 = load i8, i8* %h3, align 1, !tbaa !10
  %conv4 = zext i8 %2 to i32
  %p_cost_mv = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 1
  %3 = load i16*, i16** %p_cost_mv, align 4, !tbaa !46
  %arrayidx5 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 10, i32 0
  %4 = load i16, i16* %arrayidx5, align 4, !tbaa !44
  %conv6 = sext i16 %4 to i32
  %idx.neg = sub nsw i32 0, %conv6
  %add.ptr = getelementptr inbounds i16, i16* %3, i32 %idx.neg
  %arrayidx9 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 10, i32 1
  %5 = load i16, i16* %arrayidx9, align 2, !tbaa !44
  %conv10 = sext i16 %5 to i32
  %idx.neg11 = sub nsw i32 0, %conv10
  %add.ptr12 = getelementptr inbounds i16, i16* %3, i32 %idx.neg11
  %b_chroma_me15 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 17
  %6 = load i32, i32* %b_chroma_me15, align 4, !tbaa !60
  %tobool = icmp eq i32 %6, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %land.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %i_chroma_format_idc = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 22
  %7 = load i32, i32* %i_chroma_format_idc, align 8, !tbaa !61
  %cmp17 = icmp eq i32 %7, 3
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs, %lor.rhs
  %8 = phi i1 [ false, %entry ], [ true, %land.rhs ], [ %cmp17, %lor.rhs ]
  %arrayidx19 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 80, i32 %0
  %9 = load i8, i8* %arrayidx19, align 1, !tbaa !50
  %conv20 = zext i8 %9 to i32
  %chroma_v_shift22 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 4
  %10 = load i32, i32* %chroma_v_shift22, align 16, !tbaa !65
  %11 = getelementptr inbounds [1152 x i8], [1152 x i8]* %pix, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1152, i8* nonnull %11) #3
  %12 = bitcast [4 x i32]* %costs to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %12) #3
  %arrayidx27 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 13, i32 0
  %13 = load i16, i16* %arrayidx27, align 16, !tbaa !44
  %conv28 = sext i16 %13 to i32
  %arrayidx30 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 13, i32 1
  %14 = load i16, i16* %arrayidx30, align 2, !tbaa !44
  %conv31 = sext i16 %14 to i32
  %cost = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 12
  %15 = load i32, i32* %cost, align 4, !tbaa !59
  %tobool32 = icmp eq i32 %hpel_iters, 0
  br i1 %tobool32, label %if.end206, label %if.then

if.then:                                          ; preds = %land.end
  %i_subpel_refine = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 16
  %16 = load i32, i32* %i_subpel_refine, align 8, !tbaa !47
  %cmp34 = icmp slt i32 %16, 3
  br i1 %cmp34, label %if.then36, label %if.end80

if.then36:                                        ; preds = %if.then
  %arrayidx41 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 29, i32 0
  %17 = load i32, i32* %arrayidx41, align 4, !tbaa !11
  %add = add nsw i32 %17, 2
  %arrayidx43 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 30, i32 0
  %18 = load i32, i32* %arrayidx43, align 4, !tbaa !11
  %sub44 = add nsw i32 %18, -2
  %cmp.i = icmp sgt i32 %add, %conv6
  %cmp1.i = icmp slt i32 %sub44, %conv6
  %cond.i = select i1 %cmp1.i, i32 %sub44, i32 %conv6
  %cond5.i = select i1 %cmp.i, i32 %add, i32 %cond.i
  %arrayidx50 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 29, i32 1
  %19 = load i32, i32* %arrayidx50, align 4, !tbaa !11
  %add51 = add nsw i32 %19, 2
  %arrayidx54 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 30, i32 1
  %20 = load i32, i32* %arrayidx54, align 4, !tbaa !11
  %sub55 = add nsw i32 %20, -2
  %cmp.i1989 = icmp sgt i32 %add51, %conv10
  %cmp1.i1990 = icmp slt i32 %sub55, %conv10
  %cond.i1991 = select i1 %cmp1.i1990, i32 %sub55, i32 %conv10
  %cond5.i1992 = select i1 %cmp.i1989, i32 %add51, i32 %cond.i1991
  %sub57 = sub nsw i32 %cond5.i, %conv28
  %sub58 = sub nsw i32 %cond5.i1992, %conv31
  %or = or i32 %sub58, %sub57
  %tobool59 = icmp eq i32 %or, 0
  br i1 %tobool59, label %if.end80, label %if.then60

if.then60:                                        ; preds = %if.then36
  %21 = bitcast i32* %stride to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %21) #3
  store i32 16, i32* %stride, align 4, !tbaa !11
  %get_ref = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 93, i32 1
  %22 = load i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)*, i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)** %get_ref, align 4, !tbaa !48
  %arraydecay62 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 5, i32 0
  %arrayidx63 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 9, i32 0
  %23 = load i32, i32* %arrayidx63, align 8, !tbaa !11
  %weight = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 4
  %24 = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight, align 16, !tbaa !49
  %call65 = call i8* %22(i8* nonnull %11, i32* nonnull %stride, i8** nonnull %arraydecay62, i32 %23, i32 %cond5.i, i32 %cond5.i1992, i32 %conv, i32 %conv4, %struct.x264_weight_t* %24) #3
  %arrayidx67 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 92, i32 7, i32 %0
  %25 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx67, align 4, !tbaa !42
  %arrayidx68 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 7, i32 0
  %26 = load i8*, i8** %arrayidx68, align 8, !tbaa !42
  %27 = load i32, i32* %stride, align 4, !tbaa !11
  %call69 = call i32 %25(i8* %26, i32 16, i8* %call65, i32 %27) #3
  %arrayidx70 = getelementptr inbounds i16, i16* %add.ptr, i32 %cond5.i
  %28 = load i16, i16* %arrayidx70, align 2, !tbaa !44
  %conv71 = zext i16 %28 to i32
  %add72 = add nsw i32 %call69, %conv71
  %arrayidx73 = getelementptr inbounds i16, i16* %add.ptr12, i32 %cond5.i1992
  %29 = load i16, i16* %arrayidx73, align 2, !tbaa !44
  %conv74 = zext i16 %29 to i32
  %add75 = add nsw i32 %add72, %conv74
  %cmp76 = icmp slt i32 %add75, %15
  %spec.select = select i1 %cmp76, i32 %add75, i32 %15
  %spec.select1963 = select i1 %cmp76, i32 %cond5.i1992, i32 %conv31
  %spec.select1964 = select i1 %cmp76, i32 %cond5.i, i32 %conv28
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %21) #3
  br label %if.end80

if.end80:                                         ; preds = %if.then60, %if.then36, %if.then
  %bcost.2 = phi i32 [ %15, %if.then ], [ %spec.select, %if.then60 ], [ %15, %if.then36 ]
  %bmy.2 = phi i32 [ %conv31, %if.then ], [ %spec.select1963, %if.then60 ], [ %conv31, %if.then36 ]
  %bmx.2 = phi i32 [ %conv28, %if.then ], [ %spec.select1964, %if.then60 ], [ %conv28, %if.then36 ]
  %shl = shl i32 %bcost.2, 6
  %cmp812041 = icmp sgt i32 %hpel_iters, 0
  br i1 %cmp812041, label %for.body.lr.ph, label %cleanup204

for.body.lr.ph:                                   ; preds = %if.end80
  %30 = bitcast i32* %stride83 to i8*
  %get_ref85 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 93, i32 1
  %arraydecay88 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 5, i32 0
  %arrayidx90 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 9, i32 0
  %add92 = add nuw nsw i32 %conv4, 1
  %weight93 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 4
  %add.ptr99 = getelementptr inbounds [1152 x i8], [1152 x i8]* %pix, i32 0, i32 32
  %add105 = add nuw nsw i32 %conv, 4
  %arrayidx112 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 92, i32 9, i32 %0
  %arrayidx114 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 7, i32 0
  %arraydecay115 = getelementptr inbounds [4 x i32], [4 x i32]* %costs, i32 0, i32 0
  %arrayidx130 = getelementptr inbounds [4 x i32], [4 x i32]* %costs, i32 0, i32 1
  %arrayidx138 = getelementptr inbounds [4 x i32], [4 x i32]* %costs, i32 0, i32 2
  %arrayidx146 = getelementptr inbounds [4 x i32], [4 x i32]* %costs, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %bmx.32045 = phi i32 [ %bmx.2, %for.body.lr.ph ], [ %sub193, %for.inc ]
  %bmy.32044 = phi i32 [ %bmy.2, %for.body.lr.ph ], [ %sub196, %for.inc ]
  %bcost.32043 = phi i32 [ %shl, %for.body.lr.ph ], [ %and197, %for.inc ]
  %i.02042 = phi i32 [ %hpel_iters, %for.body.lr.ph ], [ %dec, %for.inc ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %30) #3
  store i32 64, i32* %stride83, align 4, !tbaa !11
  %31 = load i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)*, i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)** %get_ref85, align 4, !tbaa !48
  %32 = load i32, i32* %arrayidx90, align 8, !tbaa !11
  %sub91 = add nsw i32 %bmy.32044, -2
  %33 = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight93, align 16, !tbaa !49
  %call95 = call i8* %31(i8* nonnull %11, i32* nonnull %stride83, i8** nonnull %arraydecay88, i32 %32, i32 %bmx.32045, i32 %sub91, i32 %conv, i32 %add92, %struct.x264_weight_t* %33) #3
  %34 = load i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)*, i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)** %get_ref85, align 4, !tbaa !48
  %35 = load i32, i32* %arrayidx90, align 8, !tbaa !11
  %sub104 = add nsw i32 %bmx.32045, -2
  %36 = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight93, align 16, !tbaa !49
  %call108 = call i8* %34(i8* nonnull %add.ptr99, i32* nonnull %stride83, i8** nonnull %arraydecay88, i32 %35, i32 %sub104, i32 %bmy.32044, i32 %add105, i32 %conv4, %struct.x264_weight_t* %36) #3
  %37 = load i32, i32* %stride83, align 4, !tbaa !11
  %add.ptr109 = getelementptr inbounds i8, i8* %call95, i32 %37
  %add.ptr110 = getelementptr inbounds i8, i8* %call108, i32 1
  %38 = load void (i8*, i8*, i8*, i8*, i8*, i32, i32*)*, void (i8*, i8*, i8*, i8*, i8*, i32, i32*)** %arrayidx112, align 4, !tbaa !42
  %39 = load i8*, i8** %arrayidx114, align 8, !tbaa !42
  call void %38(i8* %39, i8* %call95, i8* %add.ptr109, i8* %call108, i8* nonnull %add.ptr110, i32 %37, i32* nonnull %arraydecay115) #3
  %arrayidx116 = getelementptr inbounds i16, i16* %add.ptr, i32 %bmx.32045
  %40 = load i16, i16* %arrayidx116, align 2, !tbaa !44
  %conv117 = zext i16 %40 to i32
  %arrayidx119 = getelementptr inbounds i16, i16* %add.ptr12, i32 %sub91
  %41 = load i16, i16* %arrayidx119, align 2, !tbaa !44
  %conv120 = zext i16 %41 to i32
  %add121 = add nuw nsw i32 %conv120, %conv117
  %42 = load i32, i32* %arraydecay115, align 16, !tbaa !11
  %add123 = add nsw i32 %add121, %42
  store i32 %add123, i32* %arraydecay115, align 16, !tbaa !11
  %add126 = add nsw i32 %bmy.32044, 2
  %arrayidx127 = getelementptr inbounds i16, i16* %add.ptr12, i32 %add126
  %43 = load i16, i16* %arrayidx127, align 2, !tbaa !44
  %conv128 = zext i16 %43 to i32
  %add129 = add nuw nsw i32 %conv128, %conv117
  %44 = load i32, i32* %arrayidx130, align 4, !tbaa !11
  %add131 = add nsw i32 %add129, %44
  store i32 %add131, i32* %arrayidx130, align 4, !tbaa !11
  %arrayidx133 = getelementptr inbounds i16, i16* %add.ptr, i32 %sub104
  %45 = load i16, i16* %arrayidx133, align 2, !tbaa !44
  %conv134 = zext i16 %45 to i32
  %arrayidx135 = getelementptr inbounds i16, i16* %add.ptr12, i32 %bmy.32044
  %46 = load i16, i16* %arrayidx135, align 2, !tbaa !44
  %conv136 = zext i16 %46 to i32
  %add137 = add nuw nsw i32 %conv136, %conv134
  %47 = load i32, i32* %arrayidx138, align 8, !tbaa !11
  %add139 = add nsw i32 %add137, %47
  store i32 %add139, i32* %arrayidx138, align 8, !tbaa !11
  %add140 = add nsw i32 %bmx.32045, 2
  %arrayidx141 = getelementptr inbounds i16, i16* %add.ptr, i32 %add140
  %48 = load i16, i16* %arrayidx141, align 2, !tbaa !44
  %conv142 = zext i16 %48 to i32
  %add145 = add nuw nsw i32 %conv142, %conv136
  %49 = load i32, i32* %arrayidx146, align 4, !tbaa !11
  %add147 = add nsw i32 %add145, %49
  store i32 %add147, i32* %arrayidx146, align 4, !tbaa !11
  %shl149 = shl i32 %add123, 6
  %add150 = or i32 %shl149, 2
  %cmp151 = icmp slt i32 %add150, %bcost.32043
  %spec.select1965 = select i1 %cmp151, i32 %add150, i32 %bcost.32043
  %shl159 = shl i32 %add131, 6
  %add160 = or i32 %shl159, 6
  %cmp161 = icmp slt i32 %add160, %spec.select1965
  %bcost.5 = select i1 %cmp161, i32 %add160, i32 %spec.select1965
  %shl169 = shl i32 %add139, 6
  %add170 = or i32 %shl169, 16
  %cmp171 = icmp slt i32 %add170, %bcost.5
  %spec.select1966 = select i1 %cmp171, i32 %add170, i32 %bcost.5
  %shl179 = shl i32 %add147, 6
  %add180 = or i32 %shl179, 48
  %cmp181 = icmp slt i32 %add180, %spec.select1966
  %bcost.7 = select i1 %cmp181, i32 %add180, i32 %spec.select1966
  %and188 = and i32 %bcost.7, 63
  %tobool189 = icmp eq i32 %and188, 0
  br i1 %tobool189, label %cleanup, label %for.inc

cleanup:                                          ; preds = %for.body
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %30) #3
  br label %cleanup204

for.inc:                                          ; preds = %for.body
  %shl192 = shl i32 %bcost.7, 26
  %shr = ashr i32 %shl192, 29
  %sub193 = sub nsw i32 %bmx.32045, %shr
  %shl194 = shl i32 %bcost.7, 29
  %shr195 = ashr exact i32 %shl194, 29
  %sub196 = sub nsw i32 %bmy.32044, %shr195
  %and197 = and i32 %bcost.7, -64
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %30) #3
  %dec = add nsw i32 %i.02042, -1
  %cmp81 = icmp sgt i32 %i.02042, 1
  br i1 %cmp81, label %for.body, label %cleanup204

cleanup204:                                       ; preds = %for.inc, %if.end80, %cleanup
  %bmy.32013 = phi i32 [ %bmy.32044, %cleanup ], [ %bmy.2, %if.end80 ], [ %sub196, %for.inc ]
  %bmx.32011 = phi i32 [ %bmx.32045, %cleanup ], [ %bmx.2, %if.end80 ], [ %sub193, %for.inc ]
  %bcost.9 = phi i32 [ %bcost.7, %cleanup ], [ %shl, %if.end80 ], [ %and197, %for.inc ]
  %shr205 = ashr i32 %bcost.9, 6
  br label %if.end206

if.end206:                                        ; preds = %land.end, %cleanup204
  %bcost.10 = phi i32 [ %shr205, %cleanup204 ], [ %15, %land.end ]
  %bmy.6 = phi i32 [ %bmy.32013, %cleanup204 ], [ %conv31, %land.end ]
  %bmx.6 = phi i32 [ %bmx.32011, %cleanup204 ], [ %conv28, %land.end ]
  %tobool207 = icmp ne i32 %b_refine_qpel, 0
  br i1 %tobool207, label %if.end369, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end206
  %arrayidx209 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 92, i32 6, i32 0
  %50 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx209, align 4, !tbaa !42
  %arrayidx212 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 92, i32 7, i32 0
  %51 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx212, align 4, !tbaa !42
  %cmp213 = icmp ne i32 (i8*, i32, i8*, i32)* %50, %51
  %or.cond = or i1 %8, %cmp213
  br i1 %or.cond, label %if.then221, label %if.end369

if.then221:                                       ; preds = %land.lhs.true
  %52 = bitcast i32* %stride222 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %52) #3
  store i32 16, i32* %stride222, align 4, !tbaa !11
  %get_ref225 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 93, i32 1
  %53 = load i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)*, i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)** %get_ref225, align 4, !tbaa !48
  %arrayidx228 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 5, i32 0
  %arrayidx230 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 9, i32 0
  %54 = load i32, i32* %arrayidx230, align 8, !tbaa !11
  %weight231 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 4
  %55 = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight231, align 16, !tbaa !49
  %call233 = call i8* %53(i8* nonnull %11, i32* nonnull %stride222, i8** nonnull %arrayidx228, i32 %54, i32 %bmx.6, i32 %bmy.6, i32 %conv, i32 %conv4, %struct.x264_weight_t* %55) #3
  %arrayidx237 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 92, i32 6, i32 %0
  %56 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx237, align 4, !tbaa !42
  %arrayidx239 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 7, i32 0
  %57 = load i8*, i8** %arrayidx239, align 8, !tbaa !42
  %58 = load i32, i32* %stride222, align 4, !tbaa !11
  %call240 = call i32 %56(i8* %57, i32 16, i8* %call233, i32 %58) #3
  %arrayidx241 = getelementptr inbounds i16, i16* %add.ptr, i32 %bmx.6
  %59 = load i16, i16* %arrayidx241, align 2, !tbaa !44
  %conv242 = zext i16 %59 to i32
  %add243 = add nsw i32 %call240, %conv242
  %arrayidx244 = getelementptr inbounds i16, i16* %add.ptr12, i32 %bmy.6
  %60 = load i16, i16* %arrayidx244, align 2, !tbaa !44
  %conv245 = zext i16 %60 to i32
  %add246 = add nsw i32 %add243, %conv245
  %cmp249 = icmp slt i32 %add246, 268435456
  %or.cond1967 = and i1 %8, %cmp249
  br i1 %or.cond1967, label %if.then251, label %if.end363

if.then251:                                       ; preds = %if.then221
  %i_chroma_format_idc254 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 22
  %61 = load i32, i32* %i_chroma_format_idc254, align 8, !tbaa !61
  %cmp255 = icmp eq i32 %61, 3
  br i1 %cmp255, label %if.then257, label %if.else

if.then257:                                       ; preds = %if.then251
  store i32 16, i32* %stride222, align 4, !tbaa !11
  %62 = load i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)*, i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)** %get_ref225, align 4, !tbaa !48
  %arrayidx262 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 5, i32 4
  %arrayidx264 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 9, i32 1
  %63 = load i32, i32* %arrayidx264, align 4, !tbaa !11
  %64 = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight231, align 16, !tbaa !49
  %arrayidx266 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %64, i32 1
  %call267 = call i8* %62(i8* nonnull %11, i32* nonnull %stride222, i8** nonnull %arrayidx262, i32 %63, i32 %bmx.6, i32 %bmy.6, i32 %conv, i32 %conv4, %struct.x264_weight_t* nonnull %arrayidx266) #3
  %65 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx237, align 4, !tbaa !42
  %arrayidx272 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 7, i32 1
  %66 = load i8*, i8** %arrayidx272, align 4, !tbaa !42
  %67 = load i32, i32* %stride222, align 4, !tbaa !11
  %call273 = call i32 %65(i8* %66, i32 16, i8* %call267, i32 %67) #3
  %add274 = add nsw i32 %call273, %add246
  %cmp275 = icmp slt i32 %add274, 268435456
  br i1 %cmp275, label %if.then277, label %if.end363

if.then277:                                       ; preds = %if.then257
  store i32 16, i32* %stride222, align 4, !tbaa !11
  %68 = load i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)*, i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)** %get_ref225, align 4, !tbaa !48
  %arrayidx282 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 5, i32 8
  %arrayidx284 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 9, i32 2
  %69 = load i32, i32* %arrayidx284, align 8, !tbaa !11
  %70 = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight231, align 16, !tbaa !49
  %arrayidx286 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %70, i32 2
  %call287 = call i8* %68(i8* nonnull %11, i32* nonnull %stride222, i8** nonnull %arrayidx282, i32 %69, i32 %bmx.6, i32 %bmy.6, i32 %conv, i32 %conv4, %struct.x264_weight_t* nonnull %arrayidx286) #3
  %71 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx237, align 4, !tbaa !42
  %arrayidx292 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 7, i32 2
  %72 = load i8*, i8** %arrayidx292, align 8, !tbaa !42
  %73 = load i32, i32* %stride222, align 4, !tbaa !11
  %call293 = call i32 %71(i8* %72, i32 16, i8* %call287, i32 %73) #3
  %add294 = add nsw i32 %call293, %add274
  br label %if.end363

if.else:                                          ; preds = %if.then251
  %mc_chroma = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 93, i32 2
  %74 = load void (i8*, i8*, i32, i8*, i32, i32, i32, i32, i32)*, void (i8*, i8*, i32, i8*, i32, i32, i32, i32, i32)** %mc_chroma, align 8, !tbaa !66
  %add.ptr299 = getelementptr inbounds [1152 x i8], [1152 x i8]* %pix, i32 0, i32 8
  %arrayidx301 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 5, i32 4
  %75 = load i8*, i8** %arrayidx301, align 4, !tbaa !42
  %arrayidx303 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 9, i32 1
  %76 = load i32, i32* %arrayidx303, align 4, !tbaa !11
  %mul305 = shl nsw i32 %bmy.6, 1
  %shr306 = ashr i32 %mul305, %10
  %77 = lshr i32 %conv, 1
  %shr308 = lshr i32 %conv4, %10
  call void %74(i8* nonnull %11, i8* nonnull %add.ptr299, i32 16, i8* %75, i32 %76, i32 %bmx.6, i32 %shr306, i32 %77, i32 %shr308) #3
  %78 = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight231, align 16, !tbaa !49
  %weightfn = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %78, i32 1, i32 5
  %79 = load void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)**, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*** %weightfn, align 4, !tbaa !67
  %tobool311 = icmp eq void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %79, null
  br i1 %tobool311, label %if.end323, label %if.then312

if.then312:                                       ; preds = %if.else
  %arrayidx310 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %78, i32 1
  %80 = lshr i32 %conv, 3
  %arrayidx317 = getelementptr inbounds void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %79, i32 %80
  %81 = load void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %arrayidx317, align 4, !tbaa !42
  call void %81(i8* nonnull %11, i32 16, i8* nonnull %11, i32 16, %struct.x264_weight_t* nonnull %arrayidx310, i32 %shr308) #3
  br label %if.end323

if.end323:                                        ; preds = %if.else, %if.then312
  %arrayidx325 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 92, i32 5, i32 %conv20
  %82 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx325, align 4, !tbaa !42
  %arrayidx327 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 7, i32 1
  %83 = load i8*, i8** %arrayidx327, align 4, !tbaa !42
  %call329 = call i32 %82(i8* %83, i32 16, i8* nonnull %11, i32 16) #3
  %add330 = add nsw i32 %call329, %add246
  %cmp331 = icmp slt i32 %add330, 268435456
  br i1 %cmp331, label %if.then333, label %if.end363

if.then333:                                       ; preds = %if.end323
  %84 = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight231, align 16, !tbaa !49
  %weightfn336 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %84, i32 2, i32 5
  %85 = load void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)**, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*** %weightfn336, align 4, !tbaa !67
  %tobool337 = icmp eq void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %85, null
  br i1 %tobool337, label %if.end351, label %if.then338

if.then338:                                       ; preds = %if.then333
  %arrayidx335 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %84, i32 2
  %86 = lshr i32 %conv, 3
  %arrayidx343 = getelementptr inbounds void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %85, i32 %86
  %87 = load void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %arrayidx343, align 4, !tbaa !42
  call void %87(i8* nonnull %add.ptr299, i32 16, i8* nonnull %add.ptr299, i32 16, %struct.x264_weight_t* nonnull %arrayidx335, i32 %shr308) #3
  br label %if.end351

if.end351:                                        ; preds = %if.then333, %if.then338
  %88 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx325, align 4, !tbaa !42
  %arrayidx356 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 7, i32 2
  %89 = load i8*, i8** %arrayidx356, align 8, !tbaa !42
  %call359 = call i32 %88(i8* %89, i32 16, i8* nonnull %add.ptr299, i32 16) #3
  %add360 = add nsw i32 %call359, %add330
  br label %if.end363

if.end363:                                        ; preds = %if.then277, %if.then257, %if.end351, %if.end323, %if.then221
  %cost234.0 = phi i32 [ %add294, %if.then277 ], [ %add274, %if.then257 ], [ %add360, %if.end351 ], [ %add330, %if.end323 ], [ %add246, %if.then221 ]
  %cmp364 = icmp slt i32 %cost234.0, 268435456
  %spec.select1968 = select i1 %cmp364, i32 %cost234.0, i32 268435456
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %52) #3
  br label %if.end369

if.end369:                                        ; preds = %if.end363, %land.lhs.true, %if.end206
  %bcost.12 = phi i32 [ %bcost.10, %if.end206 ], [ %spec.select1968, %if.end363 ], [ %bcost.10, %land.lhs.true ]
  %tobool370 = icmp eq i32* %p_halfpel_thresh, null
  br i1 %tobool370, label %if.end390, label %if.then371

if.then371:                                       ; preds = %if.end369
  %mul372 = mul nsw i32 %bcost.12, 7
  %shr373 = ashr i32 %mul372, 3
  %90 = load i32, i32* %p_halfpel_thresh, align 4, !tbaa !11
  %cmp374 = icmp sgt i32 %shr373, %90
  br i1 %cmp374, label %if.then376, label %if.else384

if.then376:                                       ; preds = %if.then371
  store i32 %bcost.12, i32* %cost, align 4, !tbaa !59
  %conv378 = trunc i32 %bmx.6 to i16
  store i16 %conv378, i16* %arrayidx27, align 16, !tbaa !44
  %conv381 = trunc i32 %bmy.6 to i16
  store i16 %conv381, i16* %arrayidx30, align 2, !tbaa !44
  br label %cleanup1269

if.else384:                                       ; preds = %if.then371
  %cmp385 = icmp slt i32 %bcost.12, %90
  br i1 %cmp385, label %if.then387, label %if.end390

if.then387:                                       ; preds = %if.else384
  store i32 %bcost.12, i32* %p_halfpel_thresh, align 4, !tbaa !11
  br label %if.end390

if.end390:                                        ; preds = %if.end369, %if.then387, %if.else384
  %i_subpel_refine392 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 16
  %91 = load i32, i32* %i_subpel_refine392, align 8, !tbaa !47
  %cmp393 = icmp eq i32 %91, 1
  %arrayidx1096 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 29, i32 1
  br i1 %cmp393, label %if.else1093, label %for.cond397.preheader

for.cond397.preheader:                            ; preds = %if.end390
  %arrayidx410 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 30, i32 1
  %arrayidx416 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 29, i32 0
  %arrayidx422 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 30, i32 0
  %cmp3982015 = icmp sgt i32 %qpel_iters, 0
  br i1 %cmp3982015, label %for.body401.lr.ph, label %if.end1256

for.body401.lr.ph:                                ; preds = %for.cond397.preheader
  %92 = bitcast i32* %stride434 to i8*
  %get_ref437 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 93, i32 1
  %arrayidx440 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 5, i32 0
  %arrayidx442 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 9, i32 0
  %weight444 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 4
  %arrayidx450 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 92, i32 6, i32 %0
  %arrayidx452 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 7, i32 0
  %i_chroma_format_idc468 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 22
  %mc_chroma514 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 93, i32 2
  %add.ptr517 = getelementptr inbounds [1152 x i8], [1152 x i8]* %pix, i32 0, i32 8
  %arrayidx519 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 5, i32 4
  %arrayidx521 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 9, i32 1
  %93 = lshr i32 %conv, 1
  %shr527 = lshr i32 %conv4, %10
  %94 = lshr i32 %conv, 3
  %arrayidx546 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 92, i32 5, i32 %conv20
  %arrayidx548 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 7, i32 1
  %arrayidx577 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 7, i32 2
  %arrayidx497 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 5, i32 8
  %arrayidx499 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 9, i32 2
  %95 = bitcast i32* %stride596 to i8*
  %96 = bitcast i32* %stride758 to i8*
  %97 = bitcast i32* %stride920 to i8*
  br label %for.body401

for.cond397:                                      ; preds = %if.end1076
  %dec1090 = add nsw i32 %i396.02017, -1
  %cmp398 = icmp sgt i32 %i396.02017, 1
  br i1 %cmp398, label %for.body401, label %if.end1256

for.body401:                                      ; preds = %for.body401.lr.ph, %for.cond397
  %bmx.92021 = phi i32 [ %bmx.6, %for.body401.lr.ph ], [ %bmx.17, %for.cond397 ]
  %bmy.92019 = phi i32 [ %bmy.6, %for.body401.lr.ph ], [ %bmy.17, %for.cond397 ]
  %bcost.132018 = phi i32 [ %bcost.12, %for.body401.lr.ph ], [ %bcost.21, %for.cond397 ]
  %i396.02017 = phi i32 [ %qpel_iters, %for.body401.lr.ph ], [ %dec1090, %for.cond397 ]
  %bdir.02016 = phi i32 [ -1, %for.body401.lr.ph ], [ %bdir.8, %for.cond397 ]
  %98 = load i32, i32* %arrayidx1096, align 4, !tbaa !11
  %cmp405 = icmp sgt i32 %bmy.92019, %98
  br i1 %cmp405, label %lor.lhs.false407, label %if.end1256

lor.lhs.false407:                                 ; preds = %for.body401
  %99 = load i32, i32* %arrayidx410, align 4, !tbaa !11
  %cmp411 = icmp slt i32 %bmy.92019, %99
  br i1 %cmp411, label %lor.lhs.false413, label %if.end1256

lor.lhs.false413:                                 ; preds = %lor.lhs.false407
  %100 = load i32, i32* %arrayidx416, align 4, !tbaa !11
  %cmp417 = icmp sgt i32 %bmx.92021, %100
  br i1 %cmp417, label %lor.lhs.false419, label %if.end1256

lor.lhs.false419:                                 ; preds = %lor.lhs.false413
  %101 = load i32, i32* %arrayidx422, align 4, !tbaa !11
  %cmp423 = icmp slt i32 %bmx.92021, %101
  br i1 %cmp423, label %if.end426, label %if.end1256

if.end426:                                        ; preds = %lor.lhs.false419
  %cmp431 = icmp ne i32 %bdir.02016, 1
  %or.cond1290 = or i1 %tobool207, %cmp431
  br i1 %or.cond1290, label %if.then433, label %if.end590

if.then433:                                       ; preds = %if.end426
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %92) #3
  store i32 16, i32* %stride434, align 4, !tbaa !11
  %102 = load i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)*, i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)** %get_ref437, align 4, !tbaa !48
  %103 = load i32, i32* %arrayidx442, align 8, !tbaa !11
  %sub443 = add nsw i32 %bmy.92019, -1
  %104 = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight444, align 16, !tbaa !49
  %call446 = call i8* %102(i8* nonnull %11, i32* nonnull %stride434, i8** nonnull %arrayidx440, i32 %103, i32 %bmx.92021, i32 %sub443, i32 %conv, i32 %conv4, %struct.x264_weight_t* %104) #3
  %105 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx450, align 4, !tbaa !42
  %106 = load i8*, i8** %arrayidx452, align 8, !tbaa !42
  %107 = load i32, i32* %stride434, align 4, !tbaa !11
  %call453 = call i32 %105(i8* %106, i32 16, i8* %call446, i32 %107) #3
  %arrayidx454 = getelementptr inbounds i16, i16* %add.ptr, i32 %bmx.92021
  %108 = load i16, i16* %arrayidx454, align 2, !tbaa !44
  %conv455 = zext i16 %108 to i32
  %add456 = add nsw i32 %call453, %conv455
  %arrayidx458 = getelementptr inbounds i16, i16* %add.ptr12, i32 %sub443
  %109 = load i16, i16* %arrayidx458, align 2, !tbaa !44
  %conv459 = zext i16 %109 to i32
  %add460 = add nsw i32 %add456, %conv459
  %cmp463 = icmp slt i32 %add460, %bcost.132018
  %or.cond1969 = and i1 %8, %cmp463
  br i1 %or.cond1969, label %if.then465, label %if.end584

if.then465:                                       ; preds = %if.then433
  %110 = load i32, i32* %i_chroma_format_idc468, align 8, !tbaa !61
  %cmp469 = icmp eq i32 %110, 3
  br i1 %cmp469, label %if.then471, label %if.else512

if.then471:                                       ; preds = %if.then465
  store i32 16, i32* %stride434, align 4, !tbaa !11
  %111 = load i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)*, i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)** %get_ref437, align 4, !tbaa !48
  %112 = load i32, i32* %arrayidx521, align 4, !tbaa !11
  %113 = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight444, align 16, !tbaa !49
  %arrayidx481 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %113, i32 1
  %call482 = call i8* %111(i8* nonnull %11, i32* nonnull %stride434, i8** nonnull %arrayidx519, i32 %112, i32 %bmx.92021, i32 %sub443, i32 %conv, i32 %conv4, %struct.x264_weight_t* nonnull %arrayidx481) #3
  %114 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx450, align 4, !tbaa !42
  %115 = load i8*, i8** %arrayidx548, align 4, !tbaa !42
  %116 = load i32, i32* %stride434, align 4, !tbaa !11
  %call488 = call i32 %114(i8* %115, i32 16, i8* %call482, i32 %116) #3
  %add489 = add nsw i32 %call488, %add460
  %cmp490 = icmp slt i32 %add489, %bcost.132018
  br i1 %cmp490, label %if.then492, label %if.end584

if.then492:                                       ; preds = %if.then471
  store i32 16, i32* %stride434, align 4, !tbaa !11
  %117 = load i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)*, i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)** %get_ref437, align 4, !tbaa !48
  %118 = load i32, i32* %arrayidx499, align 8, !tbaa !11
  %119 = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight444, align 16, !tbaa !49
  %arrayidx502 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %119, i32 2
  %call503 = call i8* %117(i8* nonnull %11, i32* nonnull %stride434, i8** nonnull %arrayidx497, i32 %118, i32 %bmx.92021, i32 %sub443, i32 %conv, i32 %conv4, %struct.x264_weight_t* nonnull %arrayidx502) #3
  %120 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx450, align 4, !tbaa !42
  %121 = load i8*, i8** %arrayidx577, align 8, !tbaa !42
  %122 = load i32, i32* %stride434, align 4, !tbaa !11
  %call509 = call i32 %120(i8* %121, i32 16, i8* %call503, i32 %122) #3
  %add510 = add nsw i32 %call509, %add489
  br label %if.end584

if.else512:                                       ; preds = %if.then465
  %123 = load void (i8*, i8*, i32, i8*, i32, i32, i32, i32, i32)*, void (i8*, i8*, i32, i8*, i32, i32, i32, i32, i32)** %mc_chroma514, align 8, !tbaa !66
  %124 = load i8*, i8** %arrayidx519, align 4, !tbaa !42
  %125 = load i32, i32* %arrayidx521, align 4, !tbaa !11
  %mul524 = shl nsw i32 %sub443, 1
  %shr525 = ashr i32 %mul524, %10
  call void %123(i8* nonnull %11, i8* nonnull %add.ptr517, i32 16, i8* %124, i32 %125, i32 %bmx.92021, i32 %shr525, i32 %93, i32 %shr527) #3
  %126 = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight444, align 16, !tbaa !49
  %weightfn530 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %126, i32 1, i32 5
  %127 = load void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)**, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*** %weightfn530, align 4, !tbaa !67
  %tobool531 = icmp eq void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %127, null
  br i1 %tobool531, label %if.end543, label %if.then532

if.then532:                                       ; preds = %if.else512
  %arrayidx529 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %126, i32 1
  %arrayidx537 = getelementptr inbounds void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %127, i32 %94
  %128 = load void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %arrayidx537, align 4, !tbaa !42
  call void %128(i8* nonnull %11, i32 16, i8* nonnull %11, i32 16, %struct.x264_weight_t* nonnull %arrayidx529, i32 %shr527) #3
  br label %if.end543

if.end543:                                        ; preds = %if.else512, %if.then532
  %129 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx546, align 4, !tbaa !42
  %130 = load i8*, i8** %arrayidx548, align 4, !tbaa !42
  %call550 = call i32 %129(i8* %130, i32 16, i8* nonnull %11, i32 16) #3
  %add551 = add nsw i32 %call550, %add460
  %cmp552 = icmp slt i32 %add551, %bcost.132018
  br i1 %cmp552, label %if.then554, label %if.end584

if.then554:                                       ; preds = %if.end543
  %131 = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight444, align 16, !tbaa !49
  %weightfn557 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %131, i32 2, i32 5
  %132 = load void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)**, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*** %weightfn557, align 4, !tbaa !67
  %tobool558 = icmp eq void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %132, null
  br i1 %tobool558, label %if.end572, label %if.then559

if.then559:                                       ; preds = %if.then554
  %arrayidx556 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %131, i32 2
  %arrayidx564 = getelementptr inbounds void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %132, i32 %94
  %133 = load void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %arrayidx564, align 4, !tbaa !42
  call void %133(i8* nonnull %add.ptr517, i32 16, i8* nonnull %add.ptr517, i32 16, %struct.x264_weight_t* nonnull %arrayidx556, i32 %shr527) #3
  br label %if.end572

if.end572:                                        ; preds = %if.then554, %if.then559
  %134 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx546, align 4, !tbaa !42
  %135 = load i8*, i8** %arrayidx577, align 8, !tbaa !42
  %call580 = call i32 %134(i8* %135, i32 16, i8* nonnull %add.ptr517, i32 16) #3
  %add581 = add nsw i32 %call580, %add551
  br label %if.end584

if.end584:                                        ; preds = %if.then492, %if.then471, %if.end572, %if.end543, %if.then433
  %cost447.0 = phi i32 [ %add510, %if.then492 ], [ %add489, %if.then471 ], [ %add581, %if.end572 ], [ %add551, %if.end543 ], [ %add460, %if.then433 ]
  %cmp585 = icmp slt i32 %cost447.0, %bcost.132018
  %spec.select1970 = select i1 %cmp585, i32 0, i32 %bdir.02016
  %spec.select1971 = select i1 %cmp585, i32 %cost447.0, i32 %bcost.132018
  %spec.select1972 = select i1 %cmp585, i32 %sub443, i32 %bmy.92019
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %92) #3
  br label %if.end590

if.end590:                                        ; preds = %if.end426, %if.end584
  %bdir.2 = phi i32 [ %spec.select1970, %if.end584 ], [ 1, %if.end426 ]
  %bcost.15 = phi i32 [ %spec.select1971, %if.end584 ], [ %bcost.132018, %if.end426 ]
  %bmy.11 = phi i32 [ %spec.select1972, %if.end584 ], [ %bmy.92019, %if.end426 ]
  %136 = or i32 %bdir.02016, %b_refine_qpel
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %if.end752, label %if.then595

if.then595:                                       ; preds = %if.end590
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %95) #3
  store i32 16, i32* %stride596, align 4, !tbaa !11
  %138 = load i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)*, i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)** %get_ref437, align 4, !tbaa !48
  %139 = load i32, i32* %arrayidx442, align 8, !tbaa !11
  %add605 = add nsw i32 %bmy.92019, 1
  %140 = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight444, align 16, !tbaa !49
  %call608 = call i8* %138(i8* nonnull %11, i32* nonnull %stride596, i8** nonnull %arrayidx440, i32 %139, i32 %bmx.92021, i32 %add605, i32 %conv, i32 %conv4, %struct.x264_weight_t* %140) #3
  %141 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx450, align 4, !tbaa !42
  %142 = load i8*, i8** %arrayidx452, align 8, !tbaa !42
  %143 = load i32, i32* %stride596, align 4, !tbaa !11
  %call615 = call i32 %141(i8* %142, i32 16, i8* %call608, i32 %143) #3
  %arrayidx616 = getelementptr inbounds i16, i16* %add.ptr, i32 %bmx.92021
  %144 = load i16, i16* %arrayidx616, align 2, !tbaa !44
  %conv617 = zext i16 %144 to i32
  %add618 = add nsw i32 %call615, %conv617
  %arrayidx620 = getelementptr inbounds i16, i16* %add.ptr12, i32 %add605
  %145 = load i16, i16* %arrayidx620, align 2, !tbaa !44
  %conv621 = zext i16 %145 to i32
  %add622 = add nsw i32 %add618, %conv621
  %cmp625 = icmp slt i32 %add622, %bcost.15
  %or.cond1973 = and i1 %8, %cmp625
  br i1 %or.cond1973, label %if.then627, label %if.end746

if.then627:                                       ; preds = %if.then595
  %146 = load i32, i32* %i_chroma_format_idc468, align 8, !tbaa !61
  %cmp631 = icmp eq i32 %146, 3
  br i1 %cmp631, label %if.then633, label %if.else674

if.then633:                                       ; preds = %if.then627
  store i32 16, i32* %stride596, align 4, !tbaa !11
  %147 = load i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)*, i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)** %get_ref437, align 4, !tbaa !48
  %148 = load i32, i32* %arrayidx521, align 4, !tbaa !11
  %149 = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight444, align 16, !tbaa !49
  %arrayidx643 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %149, i32 1
  %call644 = call i8* %147(i8* nonnull %11, i32* nonnull %stride596, i8** nonnull %arrayidx519, i32 %148, i32 %bmx.92021, i32 %add605, i32 %conv, i32 %conv4, %struct.x264_weight_t* nonnull %arrayidx643) #3
  %150 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx450, align 4, !tbaa !42
  %151 = load i8*, i8** %arrayidx548, align 4, !tbaa !42
  %152 = load i32, i32* %stride596, align 4, !tbaa !11
  %call650 = call i32 %150(i8* %151, i32 16, i8* %call644, i32 %152) #3
  %add651 = add nsw i32 %call650, %add622
  %cmp652 = icmp slt i32 %add651, %bcost.15
  br i1 %cmp652, label %if.then654, label %if.end746

if.then654:                                       ; preds = %if.then633
  store i32 16, i32* %stride596, align 4, !tbaa !11
  %153 = load i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)*, i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)** %get_ref437, align 4, !tbaa !48
  %154 = load i32, i32* %arrayidx499, align 8, !tbaa !11
  %155 = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight444, align 16, !tbaa !49
  %arrayidx664 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %155, i32 2
  %call665 = call i8* %153(i8* nonnull %11, i32* nonnull %stride596, i8** nonnull %arrayidx497, i32 %154, i32 %bmx.92021, i32 %add605, i32 %conv, i32 %conv4, %struct.x264_weight_t* nonnull %arrayidx664) #3
  %156 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx450, align 4, !tbaa !42
  %157 = load i8*, i8** %arrayidx577, align 8, !tbaa !42
  %158 = load i32, i32* %stride596, align 4, !tbaa !11
  %call671 = call i32 %156(i8* %157, i32 16, i8* %call665, i32 %158) #3
  %add672 = add nsw i32 %call671, %add651
  br label %if.end746

if.else674:                                       ; preds = %if.then627
  %159 = load void (i8*, i8*, i32, i8*, i32, i32, i32, i32, i32)*, void (i8*, i8*, i32, i8*, i32, i32, i32, i32, i32)** %mc_chroma514, align 8, !tbaa !66
  %160 = load i8*, i8** %arrayidx519, align 4, !tbaa !42
  %161 = load i32, i32* %arrayidx521, align 4, !tbaa !11
  %mul686 = shl nsw i32 %add605, 1
  %shr687 = ashr i32 %mul686, %10
  call void %159(i8* nonnull %11, i8* nonnull %add.ptr517, i32 16, i8* %160, i32 %161, i32 %bmx.92021, i32 %shr687, i32 %93, i32 %shr527) #3
  %162 = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight444, align 16, !tbaa !49
  %weightfn692 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %162, i32 1, i32 5
  %163 = load void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)**, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*** %weightfn692, align 4, !tbaa !67
  %tobool693 = icmp eq void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %163, null
  br i1 %tobool693, label %if.end705, label %if.then694

if.then694:                                       ; preds = %if.else674
  %arrayidx691 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %162, i32 1
  %arrayidx699 = getelementptr inbounds void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %163, i32 %94
  %164 = load void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %arrayidx699, align 4, !tbaa !42
  call void %164(i8* nonnull %11, i32 16, i8* nonnull %11, i32 16, %struct.x264_weight_t* nonnull %arrayidx691, i32 %shr527) #3
  br label %if.end705

if.end705:                                        ; preds = %if.else674, %if.then694
  %165 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx546, align 4, !tbaa !42
  %166 = load i8*, i8** %arrayidx548, align 4, !tbaa !42
  %call712 = call i32 %165(i8* %166, i32 16, i8* nonnull %11, i32 16) #3
  %add713 = add nsw i32 %call712, %add622
  %cmp714 = icmp slt i32 %add713, %bcost.15
  br i1 %cmp714, label %if.then716, label %if.end746

if.then716:                                       ; preds = %if.end705
  %167 = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight444, align 16, !tbaa !49
  %weightfn719 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %167, i32 2, i32 5
  %168 = load void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)**, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*** %weightfn719, align 4, !tbaa !67
  %tobool720 = icmp eq void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %168, null
  br i1 %tobool720, label %if.end734, label %if.then721

if.then721:                                       ; preds = %if.then716
  %arrayidx718 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %167, i32 2
  %arrayidx726 = getelementptr inbounds void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %168, i32 %94
  %169 = load void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %arrayidx726, align 4, !tbaa !42
  call void %169(i8* nonnull %add.ptr517, i32 16, i8* nonnull %add.ptr517, i32 16, %struct.x264_weight_t* nonnull %arrayidx718, i32 %shr527) #3
  br label %if.end734

if.end734:                                        ; preds = %if.then716, %if.then721
  %170 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx546, align 4, !tbaa !42
  %171 = load i8*, i8** %arrayidx577, align 8, !tbaa !42
  %call742 = call i32 %170(i8* %171, i32 16, i8* nonnull %add.ptr517, i32 16) #3
  %add743 = add nsw i32 %call742, %add713
  br label %if.end746

if.end746:                                        ; preds = %if.then654, %if.then633, %if.end734, %if.end705, %if.then595
  %cost609.0 = phi i32 [ %add672, %if.then654 ], [ %add651, %if.then633 ], [ %add743, %if.end734 ], [ %add713, %if.end705 ], [ %add622, %if.then595 ]
  %cmp747 = icmp slt i32 %cost609.0, %bcost.15
  %spec.select1974 = select i1 %cmp747, i32 1, i32 %bdir.2
  %spec.select1975 = select i1 %cmp747, i32 %cost609.0, i32 %bcost.15
  %spec.select1976 = select i1 %cmp747, i32 %add605, i32 %bmy.11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %95) #3
  br label %if.end752

if.end752:                                        ; preds = %if.end590, %if.end746
  %bdir.4 = phi i32 [ %spec.select1974, %if.end746 ], [ %bdir.2, %if.end590 ]
  %bcost.17 = phi i32 [ %spec.select1975, %if.end746 ], [ %bcost.15, %if.end590 ]
  %bmy.13 = phi i32 [ %spec.select1976, %if.end746 ], [ %bmy.11, %if.end590 ]
  %cmp755 = icmp ne i32 %bdir.02016, 3
  %or.cond1292 = or i1 %tobool207, %cmp755
  br i1 %or.cond1292, label %if.then757, label %if.then919

if.then757:                                       ; preds = %if.end752
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %96) #3
  store i32 16, i32* %stride758, align 4, !tbaa !11
  %172 = load i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)*, i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)** %get_ref437, align 4, !tbaa !48
  %173 = load i32, i32* %arrayidx442, align 8, !tbaa !11
  %sub767 = add nsw i32 %bmx.92021, -1
  %174 = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight444, align 16, !tbaa !49
  %call770 = call i8* %172(i8* nonnull %11, i32* nonnull %stride758, i8** nonnull %arrayidx440, i32 %173, i32 %sub767, i32 %bmy.92019, i32 %conv, i32 %conv4, %struct.x264_weight_t* %174) #3
  %175 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx450, align 4, !tbaa !42
  %176 = load i8*, i8** %arrayidx452, align 8, !tbaa !42
  %177 = load i32, i32* %stride758, align 4, !tbaa !11
  %call777 = call i32 %175(i8* %176, i32 16, i8* %call770, i32 %177) #3
  %arrayidx779 = getelementptr inbounds i16, i16* %add.ptr, i32 %sub767
  %178 = load i16, i16* %arrayidx779, align 2, !tbaa !44
  %conv780 = zext i16 %178 to i32
  %add781 = add nsw i32 %call777, %conv780
  %arrayidx782 = getelementptr inbounds i16, i16* %add.ptr12, i32 %bmy.92019
  %179 = load i16, i16* %arrayidx782, align 2, !tbaa !44
  %conv783 = zext i16 %179 to i32
  %add784 = add nsw i32 %add781, %conv783
  %cmp787 = icmp slt i32 %add784, %bcost.17
  %or.cond1977 = and i1 %8, %cmp787
  br i1 %or.cond1977, label %if.then789, label %if.end914

if.then789:                                       ; preds = %if.then757
  %180 = load i32, i32* %i_chroma_format_idc468, align 8, !tbaa !61
  %cmp793 = icmp eq i32 %180, 3
  br i1 %cmp793, label %if.then795, label %if.else836

if.then795:                                       ; preds = %if.then789
  store i32 16, i32* %stride758, align 4, !tbaa !11
  %181 = load i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)*, i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)** %get_ref437, align 4, !tbaa !48
  %182 = load i32, i32* %arrayidx521, align 4, !tbaa !11
  %183 = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight444, align 16, !tbaa !49
  %arrayidx805 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %183, i32 1
  %call806 = call i8* %181(i8* nonnull %11, i32* nonnull %stride758, i8** nonnull %arrayidx519, i32 %182, i32 %sub767, i32 %bmy.92019, i32 %conv, i32 %conv4, %struct.x264_weight_t* nonnull %arrayidx805) #3
  %184 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx450, align 4, !tbaa !42
  %185 = load i8*, i8** %arrayidx548, align 4, !tbaa !42
  %186 = load i32, i32* %stride758, align 4, !tbaa !11
  %call812 = call i32 %184(i8* %185, i32 16, i8* %call806, i32 %186) #3
  %add813 = add nsw i32 %call812, %add784
  %cmp814 = icmp slt i32 %add813, %bcost.17
  br i1 %cmp814, label %if.then816, label %if.end914

if.then816:                                       ; preds = %if.then795
  store i32 16, i32* %stride758, align 4, !tbaa !11
  %187 = load i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)*, i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)** %get_ref437, align 4, !tbaa !48
  %188 = load i32, i32* %arrayidx499, align 8, !tbaa !11
  %189 = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight444, align 16, !tbaa !49
  %arrayidx826 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %189, i32 2
  %call827 = call i8* %187(i8* nonnull %11, i32* nonnull %stride758, i8** nonnull %arrayidx497, i32 %188, i32 %sub767, i32 %bmy.92019, i32 %conv, i32 %conv4, %struct.x264_weight_t* nonnull %arrayidx826) #3
  %190 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx450, align 4, !tbaa !42
  %191 = load i8*, i8** %arrayidx577, align 8, !tbaa !42
  %192 = load i32, i32* %stride758, align 4, !tbaa !11
  %call833 = call i32 %190(i8* %191, i32 16, i8* %call827, i32 %192) #3
  %add834 = add nsw i32 %call833, %add813
  br label %if.end914

if.else836:                                       ; preds = %if.then789
  %193 = load void (i8*, i8*, i32, i8*, i32, i32, i32, i32, i32)*, void (i8*, i8*, i32, i8*, i32, i32, i32, i32, i32)** %mc_chroma514, align 8, !tbaa !66
  %194 = load i8*, i8** %arrayidx519, align 4, !tbaa !42
  %195 = load i32, i32* %arrayidx521, align 4, !tbaa !11
  %mul848 = shl nsw i32 %bmy.92019, 1
  %shr849 = ashr i32 %mul848, %10
  call void %193(i8* nonnull %11, i8* nonnull %add.ptr517, i32 16, i8* %194, i32 %195, i32 %sub767, i32 %shr849, i32 %93, i32 %shr527) #3
  %196 = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight444, align 16, !tbaa !49
  %weightfn854 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %196, i32 1, i32 5
  %197 = load void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)**, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*** %weightfn854, align 4, !tbaa !67
  %tobool855 = icmp eq void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %197, null
  br i1 %tobool855, label %if.end867, label %if.then856

if.then856:                                       ; preds = %if.else836
  %arrayidx853 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %196, i32 1
  %arrayidx861 = getelementptr inbounds void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %197, i32 %94
  %198 = load void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %arrayidx861, align 4, !tbaa !42
  call void %198(i8* nonnull %11, i32 16, i8* nonnull %11, i32 16, %struct.x264_weight_t* nonnull %arrayidx853, i32 %shr527) #3
  br label %if.end867

if.end867:                                        ; preds = %if.else836, %if.then856
  %199 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx546, align 4, !tbaa !42
  %200 = load i8*, i8** %arrayidx548, align 4, !tbaa !42
  %call874 = call i32 %199(i8* %200, i32 16, i8* nonnull %11, i32 16) #3
  %add875 = add nsw i32 %call874, %add784
  %cmp876 = icmp slt i32 %add875, %bcost.17
  br i1 %cmp876, label %if.then878, label %if.end914

if.then878:                                       ; preds = %if.end867
  %201 = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight444, align 16, !tbaa !49
  %weightfn881 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %201, i32 2, i32 5
  %202 = load void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)**, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*** %weightfn881, align 4, !tbaa !67
  %tobool882 = icmp eq void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %202, null
  br i1 %tobool882, label %if.end896, label %if.then883

if.then883:                                       ; preds = %if.then878
  %arrayidx880 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %201, i32 2
  %arrayidx888 = getelementptr inbounds void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %202, i32 %94
  %203 = load void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %arrayidx888, align 4, !tbaa !42
  call void %203(i8* nonnull %add.ptr517, i32 16, i8* nonnull %add.ptr517, i32 16, %struct.x264_weight_t* nonnull %arrayidx880, i32 %shr527) #3
  br label %if.end896

if.end896:                                        ; preds = %if.then878, %if.then883
  %204 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx546, align 4, !tbaa !42
  %205 = load i8*, i8** %arrayidx577, align 8, !tbaa !42
  %call904 = call i32 %204(i8* %205, i32 16, i8* nonnull %add.ptr517, i32 16) #3
  %add905 = add nsw i32 %call904, %add875
  br label %if.end914

if.end914:                                        ; preds = %if.then757, %if.end867, %if.end896, %if.then795, %if.then816
  %cost771.0 = phi i32 [ %add834, %if.then816 ], [ %add813, %if.then795 ], [ %add905, %if.end896 ], [ %add875, %if.end867 ], [ %add784, %if.then757 ]
  %cmp909 = icmp slt i32 %cost771.0, %bcost.17
  %spec.select1978 = select i1 %cmp909, i32 2, i32 %bdir.4
  %spec.select1979 = select i1 %cmp909, i32 %cost771.0, i32 %bcost.17
  %spec.select1980 = select i1 %cmp909, i32 %bmy.92019, i32 %bmy.13
  %spec.select1981 = select i1 %cmp909, i32 %sub767, i32 %bmx.92021
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %96) #3
  %cmp917 = icmp ne i32 %bdir.02016, 2
  %or.cond1293 = or i1 %tobool207, %cmp917
  br i1 %or.cond1293, label %if.then919, label %if.end1076

if.then919:                                       ; preds = %if.end752, %if.end914
  %bmx.152009 = phi i32 [ %spec.select1981, %if.end914 ], [ %bmx.92021, %if.end752 ]
  %bmy.152008 = phi i32 [ %spec.select1980, %if.end914 ], [ %bmy.13, %if.end752 ]
  %bcost.192007 = phi i32 [ %spec.select1979, %if.end914 ], [ %bcost.17, %if.end752 ]
  %bdir.62006 = phi i32 [ %spec.select1978, %if.end914 ], [ %bdir.4, %if.end752 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %97) #3
  store i32 16, i32* %stride920, align 4, !tbaa !11
  %206 = load i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)*, i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)** %get_ref437, align 4, !tbaa !48
  %207 = load i32, i32* %arrayidx442, align 8, !tbaa !11
  %add929 = add nsw i32 %bmx.92021, 1
  %208 = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight444, align 16, !tbaa !49
  %call932 = call i8* %206(i8* nonnull %11, i32* nonnull %stride920, i8** nonnull %arrayidx440, i32 %207, i32 %add929, i32 %bmy.92019, i32 %conv, i32 %conv4, %struct.x264_weight_t* %208) #3
  %209 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx450, align 4, !tbaa !42
  %210 = load i8*, i8** %arrayidx452, align 8, !tbaa !42
  %211 = load i32, i32* %stride920, align 4, !tbaa !11
  %call939 = call i32 %209(i8* %210, i32 16, i8* %call932, i32 %211) #3
  %arrayidx941 = getelementptr inbounds i16, i16* %add.ptr, i32 %add929
  %212 = load i16, i16* %arrayidx941, align 2, !tbaa !44
  %conv942 = zext i16 %212 to i32
  %add943 = add nsw i32 %call939, %conv942
  %arrayidx944 = getelementptr inbounds i16, i16* %add.ptr12, i32 %bmy.92019
  %213 = load i16, i16* %arrayidx944, align 2, !tbaa !44
  %conv945 = zext i16 %213 to i32
  %add946 = add nsw i32 %add943, %conv945
  %cmp949 = icmp slt i32 %add946, %bcost.192007
  %or.cond1982 = and i1 %8, %cmp949
  br i1 %or.cond1982, label %if.then951, label %if.end1070

if.then951:                                       ; preds = %if.then919
  %214 = load i32, i32* %i_chroma_format_idc468, align 8, !tbaa !61
  %cmp955 = icmp eq i32 %214, 3
  br i1 %cmp955, label %if.then957, label %if.else998

if.then957:                                       ; preds = %if.then951
  store i32 16, i32* %stride920, align 4, !tbaa !11
  %215 = load i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)*, i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)** %get_ref437, align 4, !tbaa !48
  %216 = load i32, i32* %arrayidx521, align 4, !tbaa !11
  %217 = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight444, align 16, !tbaa !49
  %arrayidx967 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %217, i32 1
  %call968 = call i8* %215(i8* nonnull %11, i32* nonnull %stride920, i8** nonnull %arrayidx519, i32 %216, i32 %add929, i32 %bmy.92019, i32 %conv, i32 %conv4, %struct.x264_weight_t* nonnull %arrayidx967) #3
  %218 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx450, align 4, !tbaa !42
  %219 = load i8*, i8** %arrayidx548, align 4, !tbaa !42
  %220 = load i32, i32* %stride920, align 4, !tbaa !11
  %call974 = call i32 %218(i8* %219, i32 16, i8* %call968, i32 %220) #3
  %add975 = add nsw i32 %call974, %add946
  %cmp976 = icmp slt i32 %add975, %bcost.192007
  br i1 %cmp976, label %if.then978, label %if.end1070

if.then978:                                       ; preds = %if.then957
  store i32 16, i32* %stride920, align 4, !tbaa !11
  %221 = load i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)*, i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)** %get_ref437, align 4, !tbaa !48
  %222 = load i32, i32* %arrayidx499, align 8, !tbaa !11
  %223 = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight444, align 16, !tbaa !49
  %arrayidx988 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %223, i32 2
  %call989 = call i8* %221(i8* nonnull %11, i32* nonnull %stride920, i8** nonnull %arrayidx497, i32 %222, i32 %add929, i32 %bmy.92019, i32 %conv, i32 %conv4, %struct.x264_weight_t* nonnull %arrayidx988) #3
  %224 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx450, align 4, !tbaa !42
  %225 = load i8*, i8** %arrayidx577, align 8, !tbaa !42
  %226 = load i32, i32* %stride920, align 4, !tbaa !11
  %call995 = call i32 %224(i8* %225, i32 16, i8* %call989, i32 %226) #3
  %add996 = add nsw i32 %call995, %add975
  br label %if.end1070

if.else998:                                       ; preds = %if.then951
  %227 = load void (i8*, i8*, i32, i8*, i32, i32, i32, i32, i32)*, void (i8*, i8*, i32, i8*, i32, i32, i32, i32, i32)** %mc_chroma514, align 8, !tbaa !66
  %228 = load i8*, i8** %arrayidx519, align 4, !tbaa !42
  %229 = load i32, i32* %arrayidx521, align 4, !tbaa !11
  %mul1010 = shl nsw i32 %bmy.92019, 1
  %shr1011 = ashr i32 %mul1010, %10
  call void %227(i8* nonnull %11, i8* nonnull %add.ptr517, i32 16, i8* %228, i32 %229, i32 %add929, i32 %shr1011, i32 %93, i32 %shr527) #3
  %230 = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight444, align 16, !tbaa !49
  %weightfn1016 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %230, i32 1, i32 5
  %231 = load void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)**, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*** %weightfn1016, align 4, !tbaa !67
  %tobool1017 = icmp eq void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %231, null
  br i1 %tobool1017, label %if.end1029, label %if.then1018

if.then1018:                                      ; preds = %if.else998
  %arrayidx1015 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %230, i32 1
  %arrayidx1023 = getelementptr inbounds void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %231, i32 %94
  %232 = load void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %arrayidx1023, align 4, !tbaa !42
  call void %232(i8* nonnull %11, i32 16, i8* nonnull %11, i32 16, %struct.x264_weight_t* nonnull %arrayidx1015, i32 %shr527) #3
  br label %if.end1029

if.end1029:                                       ; preds = %if.else998, %if.then1018
  %233 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx546, align 4, !tbaa !42
  %234 = load i8*, i8** %arrayidx548, align 4, !tbaa !42
  %call1036 = call i32 %233(i8* %234, i32 16, i8* nonnull %11, i32 16) #3
  %add1037 = add nsw i32 %call1036, %add946
  %cmp1038 = icmp slt i32 %add1037, %bcost.192007
  br i1 %cmp1038, label %if.then1040, label %if.end1070

if.then1040:                                      ; preds = %if.end1029
  %235 = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight444, align 16, !tbaa !49
  %weightfn1043 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %235, i32 2, i32 5
  %236 = load void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)**, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*** %weightfn1043, align 4, !tbaa !67
  %tobool1044 = icmp eq void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %236, null
  br i1 %tobool1044, label %if.end1058, label %if.then1045

if.then1045:                                      ; preds = %if.then1040
  %arrayidx1042 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %235, i32 2
  %arrayidx1050 = getelementptr inbounds void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %236, i32 %94
  %237 = load void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %arrayidx1050, align 4, !tbaa !42
  call void %237(i8* nonnull %add.ptr517, i32 16, i8* nonnull %add.ptr517, i32 16, %struct.x264_weight_t* nonnull %arrayidx1042, i32 %shr527) #3
  br label %if.end1058

if.end1058:                                       ; preds = %if.then1040, %if.then1045
  %238 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx546, align 4, !tbaa !42
  %239 = load i8*, i8** %arrayidx577, align 8, !tbaa !42
  %call1066 = call i32 %238(i8* %239, i32 16, i8* nonnull %add.ptr517, i32 16) #3
  %add1067 = add nsw i32 %call1066, %add1037
  br label %if.end1070

if.end1070:                                       ; preds = %if.then978, %if.then957, %if.end1058, %if.end1029, %if.then919
  %cost933.0 = phi i32 [ %add996, %if.then978 ], [ %add975, %if.then957 ], [ %add1067, %if.end1058 ], [ %add1037, %if.end1029 ], [ %add946, %if.then919 ]
  %cmp1071 = icmp slt i32 %cost933.0, %bcost.192007
  %spec.select1983 = select i1 %cmp1071, i32 3, i32 %bdir.62006
  %spec.select1984 = select i1 %cmp1071, i32 %cost933.0, i32 %bcost.192007
  %spec.select1985 = select i1 %cmp1071, i32 %bmy.92019, i32 %bmy.152008
  %spec.select1986 = select i1 %cmp1071, i32 %add929, i32 %bmx.152009
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %97) #3
  br label %if.end1076

if.end1076:                                       ; preds = %if.end914, %if.end1070
  %bdir.8 = phi i32 [ %spec.select1983, %if.end1070 ], [ %spec.select1978, %if.end914 ]
  %bcost.21 = phi i32 [ %spec.select1984, %if.end1070 ], [ %spec.select1979, %if.end914 ]
  %bmy.17 = phi i32 [ %spec.select1985, %if.end1070 ], [ %spec.select1980, %if.end914 ]
  %bmx.17 = phi i32 [ %spec.select1986, %if.end1070 ], [ %spec.select1981, %if.end914 ]
  %cmp1077 = icmp ne i32 %bmx.17, %bmx.92021
  %cmp1079 = icmp ne i32 %bmy.17, %bmy.92019
  %not.and10811962 = or i1 %cmp1079, %cmp1077
  br i1 %not.and10811962, label %for.cond397, label %if.end1256

if.else1093:                                      ; preds = %if.end390
  %240 = load i32, i32* %arrayidx1096, align 4, !tbaa !11
  %cmp1097 = icmp sgt i32 %bmy.6, %240
  br i1 %cmp1097, label %land.lhs.true1099, label %if.end1256

land.lhs.true1099:                                ; preds = %if.else1093
  %arrayidx1102 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 30, i32 1
  %241 = load i32, i32* %arrayidx1102, align 4, !tbaa !11
  %cmp1103 = icmp slt i32 %bmy.6, %241
  br i1 %cmp1103, label %land.lhs.true1105, label %if.end1256

land.lhs.true1105:                                ; preds = %land.lhs.true1099
  %arrayidx1108 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 29, i32 0
  %242 = load i32, i32* %arrayidx1108, align 4, !tbaa !11
  %cmp1109 = icmp sgt i32 %bmx.6, %242
  br i1 %cmp1109, label %land.lhs.true1111, label %if.end1256

land.lhs.true1111:                                ; preds = %land.lhs.true1105
  %arrayidx1114 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 30, i32 0
  %243 = load i32, i32* %arrayidx1114, align 4, !tbaa !11
  %cmp1115 = icmp slt i32 %bmx.6, %243
  br i1 %cmp1115, label %if.then1117, label %if.end1256

if.then1117:                                      ; preds = %land.lhs.true1111
  %mc_luma = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 93, i32 0
  %244 = load void (i8*, i32, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)*, void (i8*, i32, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)** %mc_luma, align 32, !tbaa !69
  %arraydecay1123 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 5, i32 0
  %arrayidx1125 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 9, i32 0
  %245 = load i32, i32* %arrayidx1125, align 8, !tbaa !11
  %sub1126 = add nsw i32 %bmy.6, -1
  %weight1127 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 4
  %246 = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight1127, align 16, !tbaa !49
  call void %244(i8* nonnull %11, i32 64, i8** nonnull %arraydecay1123, i32 %245, i32 %bmx.6, i32 %sub1126, i32 %conv, i32 %conv4, %struct.x264_weight_t* %246) #3
  %247 = load void (i8*, i32, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)*, void (i8*, i32, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)** %mc_luma, align 32, !tbaa !69
  %add.ptr1132 = getelementptr inbounds [1152 x i8], [1152 x i8]* %pix, i32 0, i32 16
  %248 = load i32, i32* %arrayidx1125, align 8, !tbaa !11
  %add1137 = add nsw i32 %bmy.6, 1
  %249 = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight1127, align 16, !tbaa !49
  call void %247(i8* nonnull %add.ptr1132, i32 64, i8** nonnull %arraydecay1123, i32 %248, i32 %bmx.6, i32 %add1137, i32 %conv, i32 %conv4, %struct.x264_weight_t* %249) #3
  %250 = load void (i8*, i32, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)*, void (i8*, i32, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)** %mc_luma, align 32, !tbaa !69
  %add.ptr1143 = getelementptr inbounds [1152 x i8], [1152 x i8]* %pix, i32 0, i32 32
  %251 = load i32, i32* %arrayidx1125, align 8, !tbaa !11
  %sub1148 = add nsw i32 %bmx.6, -1
  %252 = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight1127, align 16, !tbaa !49
  call void %250(i8* nonnull %add.ptr1143, i32 64, i8** nonnull %arraydecay1123, i32 %251, i32 %sub1148, i32 %bmy.6, i32 %conv, i32 %conv4, %struct.x264_weight_t* %252) #3
  %253 = load void (i8*, i32, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)*, void (i8*, i32, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)** %mc_luma, align 32, !tbaa !69
  %add.ptr1154 = getelementptr inbounds [1152 x i8], [1152 x i8]* %pix, i32 0, i32 48
  %254 = load i32, i32* %arrayidx1125, align 8, !tbaa !11
  %add1159 = add nsw i32 %bmx.6, 1
  %255 = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight1127, align 16, !tbaa !49
  call void %253(i8* nonnull %add.ptr1154, i32 64, i8** nonnull %arraydecay1123, i32 %254, i32 %add1159, i32 %bmy.6, i32 %conv, i32 %conv4, %struct.x264_weight_t* %255) #3
  %arrayidx1164 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 92, i32 9, i32 %0
  %256 = load void (i8*, i8*, i8*, i8*, i8*, i32, i32*)*, void (i8*, i8*, i8*, i8*, i8*, i32, i32*)** %arrayidx1164, align 4, !tbaa !42
  %arrayidx1166 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 7, i32 0
  %257 = load i8*, i8** %arrayidx1166, align 8, !tbaa !42
  %arraydecay1174 = getelementptr inbounds [4 x i32], [4 x i32]* %costs, i32 0, i32 0
  call void %256(i8* %257, i8* nonnull %11, i8* nonnull %add.ptr1132, i8* nonnull %add.ptr1143, i8* nonnull %add.ptr1154, i32 64, i32* nonnull %arraydecay1174) #3
  %arrayidx1175 = getelementptr inbounds i16, i16* %add.ptr, i32 %bmx.6
  %258 = load i16, i16* %arrayidx1175, align 2, !tbaa !44
  %conv1176 = zext i16 %258 to i32
  %arrayidx1178 = getelementptr inbounds i16, i16* %add.ptr12, i32 %sub1126
  %259 = load i16, i16* %arrayidx1178, align 2, !tbaa !44
  %conv1179 = zext i16 %259 to i32
  %add1180 = add nuw nsw i32 %conv1179, %conv1176
  %260 = load i32, i32* %arraydecay1174, align 16, !tbaa !11
  %add1182 = add nsw i32 %add1180, %260
  store i32 %add1182, i32* %arraydecay1174, align 16, !tbaa !11
  %arrayidx1186 = getelementptr inbounds i16, i16* %add.ptr12, i32 %add1137
  %261 = load i16, i16* %arrayidx1186, align 2, !tbaa !44
  %conv1187 = zext i16 %261 to i32
  %add1188 = add nuw nsw i32 %conv1187, %conv1176
  %arrayidx1189 = getelementptr inbounds [4 x i32], [4 x i32]* %costs, i32 0, i32 1
  %262 = load i32, i32* %arrayidx1189, align 4, !tbaa !11
  %add1190 = add nsw i32 %add1188, %262
  store i32 %add1190, i32* %arrayidx1189, align 4, !tbaa !11
  %arrayidx1192 = getelementptr inbounds i16, i16* %add.ptr, i32 %sub1148
  %263 = load i16, i16* %arrayidx1192, align 2, !tbaa !44
  %conv1193 = zext i16 %263 to i32
  %arrayidx1194 = getelementptr inbounds i16, i16* %add.ptr12, i32 %bmy.6
  %264 = load i16, i16* %arrayidx1194, align 2, !tbaa !44
  %conv1195 = zext i16 %264 to i32
  %add1196 = add nuw nsw i32 %conv1195, %conv1193
  %arrayidx1197 = getelementptr inbounds [4 x i32], [4 x i32]* %costs, i32 0, i32 2
  %265 = load i32, i32* %arrayidx1197, align 8, !tbaa !11
  %add1198 = add nsw i32 %add1196, %265
  store i32 %add1198, i32* %arrayidx1197, align 8, !tbaa !11
  %arrayidx1200 = getelementptr inbounds i16, i16* %add.ptr, i32 %add1159
  %266 = load i16, i16* %arrayidx1200, align 2, !tbaa !44
  %conv1201 = zext i16 %266 to i32
  %add1204 = add nuw nsw i32 %conv1201, %conv1195
  %arrayidx1205 = getelementptr inbounds [4 x i32], [4 x i32]* %costs, i32 0, i32 3
  %267 = load i32, i32* %arrayidx1205, align 4, !tbaa !11
  %add1206 = add nsw i32 %add1204, %267
  store i32 %add1206, i32* %arrayidx1205, align 4, !tbaa !11
  %shl1207 = shl i32 %bcost.12, 4
  %shl1209 = shl i32 %add1182, 4
  %add1210 = or i32 %shl1209, 1
  %cmp1211 = icmp slt i32 %add1210, %shl1207
  %spec.select1987 = select i1 %cmp1211, i32 %add1210, i32 %shl1207
  %shl1219 = shl i32 %add1190, 4
  %add1220 = or i32 %shl1219, 3
  %cmp1221 = icmp slt i32 %add1220, %spec.select1987
  %bcost.24 = select i1 %cmp1221, i32 %add1220, i32 %spec.select1987
  %shl1229 = shl i32 %add1198, 4
  %add1230 = or i32 %shl1229, 4
  %cmp1231 = icmp slt i32 %add1230, %bcost.24
  %spec.select1988 = select i1 %cmp1231, i32 %add1230, i32 %bcost.24
  %shl1239 = shl i32 %add1206, 4
  %add1240 = or i32 %shl1239, 12
  %cmp1241 = icmp slt i32 %add1240, %spec.select1988
  %bcost.26 = select i1 %cmp1241, i32 %add1240, i32 %spec.select1988
  %shl1248 = shl i32 %bcost.26, 28
  %shr1249 = ashr i32 %shl1248, 30
  %sub1250 = sub nsw i32 %bmx.6, %shr1249
  %shl1251 = shl i32 %bcost.26, 30
  %shr1252 = ashr exact i32 %shl1251, 30
  %sub1253 = sub nsw i32 %bmy.6, %shr1252
  %shr1254 = ashr i32 %bcost.26, 4
  br label %if.end1256

if.end1256:                                       ; preds = %for.body401, %lor.lhs.false407, %lor.lhs.false413, %lor.lhs.false419, %for.cond397, %if.end1076, %for.cond397.preheader, %if.else1093, %land.lhs.true1099, %land.lhs.true1105, %land.lhs.true1111, %if.then1117
  %bcost.27 = phi i32 [ %shr1254, %if.then1117 ], [ %bcost.12, %land.lhs.true1111 ], [ %bcost.12, %land.lhs.true1105 ], [ %bcost.12, %land.lhs.true1099 ], [ %bcost.12, %if.else1093 ], [ %bcost.12, %for.cond397.preheader ], [ %bcost.132018, %for.body401 ], [ %bcost.132018, %lor.lhs.false407 ], [ %bcost.132018, %lor.lhs.false413 ], [ %bcost.132018, %lor.lhs.false419 ], [ %bcost.21, %for.cond397 ], [ %bcost.21, %if.end1076 ]
  %bmy.19 = phi i32 [ %sub1253, %if.then1117 ], [ %bmy.6, %land.lhs.true1111 ], [ %bmy.6, %land.lhs.true1105 ], [ %bmy.6, %land.lhs.true1099 ], [ %bmy.6, %if.else1093 ], [ %bmy.6, %for.cond397.preheader ], [ %bmy.92019, %for.body401 ], [ %bmy.92019, %lor.lhs.false407 ], [ %bmy.92019, %lor.lhs.false413 ], [ %bmy.92019, %lor.lhs.false419 ], [ %bmy.17, %for.cond397 ], [ %bmy.92019, %if.end1076 ]
  %bmx.19 = phi i32 [ %sub1250, %if.then1117 ], [ %bmx.6, %land.lhs.true1111 ], [ %bmx.6, %land.lhs.true1105 ], [ %bmx.6, %land.lhs.true1099 ], [ %bmx.6, %if.else1093 ], [ %bmx.6, %for.cond397.preheader ], [ %bmx.92021, %for.body401 ], [ %bmx.92021, %lor.lhs.false407 ], [ %bmx.92021, %lor.lhs.false413 ], [ %bmx.92021, %lor.lhs.false419 ], [ %bmx.17, %for.cond397 ], [ %bmx.92021, %if.end1076 ]
  store i32 %bcost.27, i32* %cost, align 4, !tbaa !59
  %conv1258 = trunc i32 %bmx.19 to i16
  store i16 %conv1258, i16* %arrayidx27, align 16, !tbaa !44
  %conv1261 = trunc i32 %bmy.19 to i16
  store i16 %conv1261, i16* %arrayidx30, align 2, !tbaa !44
  %arrayidx1264 = getelementptr inbounds i16, i16* %add.ptr, i32 %bmx.19
  %268 = load i16, i16* %arrayidx1264, align 2, !tbaa !44
  %conv1265 = zext i16 %268 to i32
  %arrayidx1266 = getelementptr inbounds i16, i16* %add.ptr12, i32 %bmy.19
  %269 = load i16, i16* %arrayidx1266, align 2, !tbaa !44
  %conv1267 = zext i16 %269 to i32
  %add1268 = add nuw nsw i32 %conv1267, %conv1265
  %cost_mv = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 11
  store i32 %add1268, i32* %cost_mv, align 8, !tbaa !58
  br label %cleanup1269

cleanup1269:                                      ; preds = %if.end1256, %if.then376
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %12) #3
  call void @llvm.lifetime.end.p0i8(i64 1152, i8* nonnull %11) #3
  ret void
}

; Function Attrs: nounwind
define hidden void @x264_8_me_refine_qpel(%struct.x264_t* readonly %h, %struct.x264_me_t* %m) local_unnamed_addr #0 {
entry:
  %i_subpel_refine = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 16
  %0 = load i32, i32* %i_subpel_refine, align 8, !tbaa !47
  %arrayidx1 = getelementptr inbounds [12 x [4 x i8]], [12 x [4 x i8]]* @subpel_iterations, i32 0, i32 %0, i32 0
  %1 = load i8, i8* %arrayidx1, align 1, !tbaa !50
  %conv = zext i8 %1 to i32
  %arrayidx5 = getelementptr inbounds [12 x [4 x i8]], [12 x [4 x i8]]* @subpel_iterations, i32 0, i32 %0, i32 1
  %2 = load i8, i8* %arrayidx5, align 1, !tbaa !50
  %conv6 = zext i8 %2 to i32
  %i_pixel = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 0
  %3 = load i32, i32* %i_pixel, align 64, !tbaa !2
  %cmp = icmp slt i32 %3, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %i_ref_cost = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 2
  %4 = load i32, i32* %i_ref_cost, align 8, !tbaa !70
  %cost = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 12
  %5 = load i32, i32* %cost, align 4, !tbaa !59
  %sub = sub nsw i32 %5, %4
  store i32 %sub, i32* %cost, align 4, !tbaa !59
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  tail call fastcc void @refine_subpel(%struct.x264_t* nonnull %h, %struct.x264_me_t* nonnull %m, i32 %conv, i32 %conv6, i32* null, i32 1)
  ret void
}

; Function Attrs: nounwind
define hidden void @x264_8_me_refine_qpel_refdupe(%struct.x264_t* readonly %h, %struct.x264_me_t* %m, i32* %p_halfpel_thresh) local_unnamed_addr #0 {
entry:
  %i_subpel_refine = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 16
  %0 = load i32, i32* %i_subpel_refine, align 8, !tbaa !47
  %1 = and i32 %0, -4
  %cmp = icmp eq i32 %1, 8
  br i1 %cmp, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry
  %arrayidx1 = getelementptr inbounds [12 x [4 x i8]], [12 x [4 x i8]]* @subpel_iterations, i32 0, i32 %0, i32 3
  %2 = load i8, i8* %arrayidx1, align 1, !tbaa !50
  %conv = zext i8 %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi i32 [ %conv, %cond.false ], [ 2, %entry ]
  tail call fastcc void @refine_subpel(%struct.x264_t* nonnull %h, %struct.x264_me_t* %m, i32 0, i32 %cond, i32* %p_halfpel_thresh, i32 0)
  ret void
}

; Function Attrs: nounwind
define hidden void @x264_8_me_refine_bidir_satd(%struct.x264_t* nocapture readonly %h, %struct.x264_me_t* %m0, %struct.x264_me_t* %m1, i32 %i_weight) local_unnamed_addr #0 {
entry:
  %pixy_buf.i = alloca [2 x [9 x [256 x i8]]], align 32
  %src.i = alloca [3 x [2 x [9 x i8*]]], align 4
  %stride.i = alloca [3 x [2 x [9 x i32]]], align 4
  %visited.i = alloca [8 x [8 x [8 x i8]]], align 64
  %i_pixel10.i = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m0, i32 0, i32 0
  %0 = load i32, i32* %i_pixel10.i, align 64, !tbaa !2
  %w.i = getelementptr inbounds [12 x %struct.anon.18], [12 x %struct.anon.18]* @x264_pixel_size, i32 0, i32 %0, i32 0
  %1 = load i8, i8* %w.i, align 1, !tbaa !8
  %conv.i = zext i8 %1 to i32
  %h13.i = getelementptr inbounds [12 x %struct.anon.18], [12 x %struct.anon.18]* @x264_pixel_size, i32 0, i32 %0, i32 1
  %2 = load i8, i8* %h13.i, align 1, !tbaa !10
  %conv14.i = zext i8 %2 to i32
  %3 = getelementptr inbounds [2 x [9 x [256 x i8]]], [2 x [9 x [256 x i8]]]* %pixy_buf.i, i32 0, i32 0, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 4608, i8* nonnull %3) #3
  %4 = bitcast [3 x [2 x [9 x i8*]]]* %src.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 216, i8* nonnull %4) #3
  %arrayidx25.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 16, i32 0
  %5 = load i8*, i8** %arrayidx25.i, align 8, !tbaa !42
  %6 = bitcast [3 x [2 x [9 x i32]]]* %stride.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 216, i8* nonnull %6) #3
  %arrayidx88.i = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m0, i32 0, i32 13, i32 0
  %7 = load i16, i16* %arrayidx88.i, align 16, !tbaa !44
  %conv89.i = sext i16 %7 to i32
  %arrayidx91.i = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m0, i32 0, i32 13, i32 1
  %8 = load i16, i16* %arrayidx91.i, align 2, !tbaa !44
  %conv92.i = sext i16 %8 to i32
  %arrayidx94.i = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m1, i32 0, i32 13, i32 0
  %9 = load i16, i16* %arrayidx94.i, align 16, !tbaa !44
  %conv95.i = sext i16 %9 to i32
  %arrayidx97.i = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m1, i32 0, i32 13, i32 1
  %10 = load i16, i16* %arrayidx97.i, align 2, !tbaa !44
  %conv98.i = sext i16 %10 to i32
  %11 = getelementptr inbounds [8 x [8 x [8 x i8]]], [8 x [8 x [8 x i8]]]* %visited.i, i32 0, i32 0, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 512, i8* nonnull %11) #3
  %arrayidx100.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 29, i32 1
  %12 = load i32, i32* %arrayidx100.i, align 4, !tbaa !11
  %add101.i = add nsw i32 %12, 8
  %cmp.i = icmp sgt i32 %add101.i, %conv92.i
  %cmp107.i = icmp sgt i32 %add101.i, %conv98.i
  %or.cond1144.i = or i1 %cmp.i, %cmp107.i
  br i1 %or.cond1144.i, label %me_refine_bidir.exit, label %lor.lhs.false109.i

lor.lhs.false109.i:                               ; preds = %entry
  %arrayidx111.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 30, i32 1
  %13 = load i32, i32* %arrayidx111.i, align 4, !tbaa !11
  %sub112.i = add nsw i32 %13, -8
  %cmp113.i = icmp slt i32 %sub112.i, %conv92.i
  %cmp120.i = icmp slt i32 %sub112.i, %conv98.i
  %or.cond1145.i = or i1 %cmp113.i, %cmp120.i
  br i1 %or.cond1145.i, label %me_refine_bidir.exit, label %lor.lhs.false122.i

lor.lhs.false122.i:                               ; preds = %lor.lhs.false109.i
  %arrayidx125.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 29, i32 0
  %14 = load i32, i32* %arrayidx125.i, align 4, !tbaa !11
  %add126.i = add nsw i32 %14, 8
  %cmp127.i = icmp sgt i32 %add126.i, %conv89.i
  %cmp134.i = icmp sgt i32 %add126.i, %conv95.i
  %or.cond1146.i = or i1 %cmp127.i, %cmp134.i
  br i1 %or.cond1146.i, label %me_refine_bidir.exit, label %lor.lhs.false136.i

lor.lhs.false136.i:                               ; preds = %lor.lhs.false122.i
  %arrayidx139.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 30, i32 0
  %15 = load i32, i32* %arrayidx139.i, align 4, !tbaa !11
  %sub140.i = add nsw i32 %15, -8
  %cmp141.i = icmp slt i32 %sub140.i, %conv89.i
  %cmp148.i = icmp slt i32 %sub140.i, %conv95.i
  %or.cond1147.i = or i1 %cmp141.i, %cmp148.i
  br i1 %or.cond1147.i, label %me_refine_bidir.exit, label %if.end.i

if.end.i:                                         ; preds = %lor.lhs.false136.i
  %p_cost_mv.i = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m0, i32 0, i32 1
  %16 = load i16*, i16** %p_cost_mv.i, align 4, !tbaa !46
  %arrayidx166.i = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m0, i32 0, i32 10, i32 0
  %17 = load i16, i16* %arrayidx166.i, align 4, !tbaa !44
  %conv167.i = sext i16 %17 to i32
  %idx.neg.i = sub nsw i32 0, %conv167.i
  %add.ptr.i = getelementptr inbounds i16, i16* %16, i32 %idx.neg.i
  %arrayidx170.i = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m0, i32 0, i32 10, i32 1
  %18 = load i16, i16* %arrayidx170.i, align 2, !tbaa !44
  %conv171.i = sext i16 %18 to i32
  %idx.neg172.i = sub nsw i32 0, %conv171.i
  %add.ptr173.i = getelementptr inbounds i16, i16* %16, i32 %idx.neg172.i
  %p_cost_mv174.i = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m1, i32 0, i32 1
  %19 = load i16*, i16** %p_cost_mv174.i, align 4, !tbaa !46
  %arrayidx176.i = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m1, i32 0, i32 10, i32 0
  %20 = load i16, i16* %arrayidx176.i, align 4, !tbaa !44
  %conv177.i = sext i16 %20 to i32
  %idx.neg178.i = sub nsw i32 0, %conv177.i
  %add.ptr179.i = getelementptr inbounds i16, i16* %19, i32 %idx.neg178.i
  %arrayidx182.i = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m1, i32 0, i32 10, i32 1
  %21 = load i16, i16* %arrayidx182.i, align 2, !tbaa !44
  %conv183.i = sext i16 %21 to i32
  %idx.neg184.i = sub nsw i32 0, %conv183.i
  %add.ptr185.i = getelementptr inbounds i16, i16* %19, i32 %idx.neg184.i
  %memzero_aligned.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 93, i32 23
  %22 = load void (i8*, i32)*, void (i8*, i32)** %memzero_aligned.i, align 32, !tbaa !71
  call void %22(i8* nonnull %11, i32 512) #3
  %get_ref.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 93, i32 1
  %arrayidx223.i = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m0, i32 0, i32 5, i32 0
  %arrayidx224.i = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m0, i32 0, i32 9, i32 0
  %arrayidx340.i = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m1, i32 0, i32 5, i32 0
  %arrayidx342.i = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m1, i32 0, i32 9, i32 0
  %arrayidx490.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 93, i32 3, i32 %0
  %arrayidx503.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 92, i32 5, i32 %0
  %arrayidx504.i = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m0, i32 0, i32 7, i32 0
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc642.i, %if.end.i
  %bm0x.01395.i = phi i32 [ %conv89.i, %if.end.i ], [ %add621.i, %for.inc642.i ]
  %bm0y.01394.i = phi i32 [ %conv92.i, %if.end.i ], [ %add625.i, %for.inc642.i ]
  %bm1x.01393.i = phi i32 [ %conv95.i, %if.end.i ], [ %add629.i, %for.inc642.i ]
  %bm1y.01392.i = phi i32 [ %conv98.i, %if.end.i ], [ %add633.i, %for.inc642.i ]
  %bcost.01391.i = phi i32 [ 268435456, %if.end.i ], [ %bcost.3.i.lcssa, %for.inc642.i ]
  %mc_list0.01390.i = phi i32 [ 1, %if.end.i ], [ %conv637.i, %for.inc642.i ]
  %mc_list1.01389.i = phi i32 [ 1, %if.end.i ], [ %conv641.i, %for.inc642.i ]
  %pass.01387.i = phi i32 [ 0, %if.end.i ], [ %inc643.i, %for.inc642.i ]
  %tobool189.i = icmp eq i32 %mc_list0.01390.i, 0
  br i1 %tobool189.i, label %if.end298.i, label %if.then190.i

if.then190.i:                                     ; preds = %for.body.i
  %23 = load i32, i32* @x264_8_iter_kludge, align 4, !tbaa !11
  %cmp1921378.i = icmp slt i32 %23, 9
  br i1 %cmp1921378.i, label %for.body195.i, label %if.end298.i

for.body195.i:                                    ; preds = %if.then190.i, %for.body195.i
  %j.01379.i = phi i32 [ %inc.i, %for.body195.i ], [ %23, %if.then190.i ]
  %arrayidx197.i = getelementptr inbounds [9 x [2 x i8]], [9 x [2 x i8]]* @square1, i32 0, i32 %j.01379.i, i32 0
  %24 = load i8, i8* %arrayidx197.i, align 1, !tbaa !50
  %conv198.i = sext i8 %24 to i32
  %mul199.i = mul nsw i32 %conv198.i, 3
  %add200.i = add nsw i32 %mul199.i, 4
  %arrayidx202.i = getelementptr inbounds [9 x [2 x i8]], [9 x [2 x i8]]* @square1, i32 0, i32 %j.01379.i, i32 1
  %25 = load i8, i8* %arrayidx202.i, align 1, !tbaa !50
  %conv203.i = sext i8 %25 to i32
  %add204.i = add nsw i32 %add200.i, %conv203.i
  %add208.i = add nsw i32 %bm0x.01395.i, %conv198.i
  %add212.i = add nsw i32 %bm0y.01394.i, %conv203.i
  %arrayidx215.i = getelementptr inbounds [3 x [2 x [9 x i32]]], [3 x [2 x [9 x i32]]]* %stride.i, i32 0, i32 0, i32 0, i32 %add204.i
  store i32 %conv.i, i32* %arrayidx215.i, align 4, !tbaa !11
  %26 = load i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)*, i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)** %get_ref.i, align 4, !tbaa !48
  %arraydecay219.i = getelementptr inbounds [2 x [9 x [256 x i8]]], [2 x [9 x [256 x i8]]]* %pixy_buf.i, i32 0, i32 0, i32 %add204.i, i32 0
  %27 = load i32, i32* %arrayidx224.i, align 8, !tbaa !11
  %call.i = call i8* %26(i8* nonnull %arraydecay219.i, i32* nonnull %arrayidx215.i, i8** nonnull %arrayidx223.i, i32 %27, i32 %add208.i, i32 %add212.i, i32 %conv.i, i32 %conv14.i, %struct.x264_weight_t* bitcast ([1024 x i8]* @x264_zero to %struct.x264_weight_t*)) #3
  %arrayidx227.i = getelementptr inbounds [3 x [2 x [9 x i8*]]], [3 x [2 x [9 x i8*]]]* %src.i, i32 0, i32 0, i32 0, i32 %add204.i
  store i8* %call.i, i8** %arrayidx227.i, align 4, !tbaa !42
  %inc.i = add nsw i32 %j.01379.i, 1
  %cmp192.i = icmp slt i32 %j.01379.i, 8
  br i1 %cmp192.i, label %for.body195.i, label %if.end298.i

if.end298.i:                                      ; preds = %for.body195.i, %if.then190.i, %for.body.i
  %tobool299.i = icmp eq i32 %mc_list1.01389.i, 0
  br i1 %tobool299.i, label %if.end422.i, label %if.then300.i

if.then300.i:                                     ; preds = %if.end298.i
  %28 = load i32, i32* @x264_8_iter_kludge, align 4, !tbaa !11
  %cmp3031380.i = icmp slt i32 %28, 9
  br i1 %cmp3031380.i, label %for.body306.i, label %if.end422.i

for.body306.i:                                    ; preds = %if.then300.i, %for.body306.i
  %j301.01381.i = phi i32 [ %inc420.i, %for.body306.i ], [ %28, %if.then300.i ]
  %arrayidx310.i = getelementptr inbounds [9 x [2 x i8]], [9 x [2 x i8]]* @square1, i32 0, i32 %j301.01381.i, i32 0
  %29 = load i8, i8* %arrayidx310.i, align 1, !tbaa !50
  %conv311.i = sext i8 %29 to i32
  %mul312.i = mul nsw i32 %conv311.i, 3
  %add313.i = add nsw i32 %mul312.i, 4
  %arrayidx315.i = getelementptr inbounds [9 x [2 x i8]], [9 x [2 x i8]]* @square1, i32 0, i32 %j301.01381.i, i32 1
  %30 = load i8, i8* %arrayidx315.i, align 1, !tbaa !50
  %conv316.i = sext i8 %30 to i32
  %add317.i = add nsw i32 %add313.i, %conv316.i
  %add322.i = add nsw i32 %bm1x.01393.i, %conv311.i
  %add327.i = add nsw i32 %bm1y.01392.i, %conv316.i
  %arrayidx330.i = getelementptr inbounds [3 x [2 x [9 x i32]]], [3 x [2 x [9 x i32]]]* %stride.i, i32 0, i32 0, i32 1, i32 %add317.i
  store i32 %conv.i, i32* %arrayidx330.i, align 4, !tbaa !11
  %31 = load i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)*, i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)** %get_ref.i, align 4, !tbaa !48
  %arraydecay335.i = getelementptr inbounds [2 x [9 x [256 x i8]]], [2 x [9 x [256 x i8]]]* %pixy_buf.i, i32 0, i32 1, i32 %add317.i, i32 0
  %32 = load i32, i32* %arrayidx342.i, align 8, !tbaa !11
  %call343.i = call i8* %31(i8* nonnull %arraydecay335.i, i32* nonnull %arrayidx330.i, i8** nonnull %arrayidx340.i, i32 %32, i32 %add322.i, i32 %add327.i, i32 %conv.i, i32 %conv14.i, %struct.x264_weight_t* bitcast ([1024 x i8]* @x264_zero to %struct.x264_weight_t*)) #3
  %arrayidx346.i = getelementptr inbounds [3 x [2 x [9 x i8*]]], [3 x [2 x [9 x i8*]]]* %src.i, i32 0, i32 0, i32 1, i32 %add317.i
  store i8* %call343.i, i8** %arrayidx346.i, align 4, !tbaa !42
  %inc420.i = add nsw i32 %j301.01381.i, 1
  %cmp303.i = icmp slt i32 %j301.01381.i, 8
  br i1 %cmp303.i, label %for.body306.i, label %if.end422.i

if.end422.i:                                      ; preds = %for.body306.i, %if.then300.i, %if.end298.i
  %tobool424.i = icmp eq i32 %pass.01387.i, 0
  br i1 %tobool424.i, label %for.body430.i, label %for.body430.i.us

for.body430.i.us:                                 ; preds = %if.end422.i, %if.end611.i.us
  %bcost.11386.i.us = phi i32 [ %bcost.3.i.us, %if.end611.i.us ], [ %bcost.01391.i, %if.end422.i ]
  %j423.01383.i.us = phi i32 [ %inc613.i.us, %if.end611.i.us ], [ 1, %if.end422.i ]
  %bestj.01382.i.us = phi i32 [ %bestj.3.i.us, %if.end611.i.us ], [ 0, %if.end422.i ]
  %arrayidx432.i.us = getelementptr inbounds [33 x [4 x i8]], [33 x [4 x i8]]* @me_refine_bidir.dia4d, i32 0, i32 %j423.01383.i.us, i32 0
  %33 = load i8, i8* %arrayidx432.i.us, align 4, !tbaa !50
  %conv433.i.us = sext i8 %33 to i32
  %add434.i.us = add nsw i32 %bm0x.01395.i, %conv433.i.us
  %arrayidx436.i.us = getelementptr inbounds [33 x [4 x i8]], [33 x [4 x i8]]* @me_refine_bidir.dia4d, i32 0, i32 %j423.01383.i.us, i32 1
  %34 = load i8, i8* %arrayidx436.i.us, align 1, !tbaa !50
  %conv437.i.us = sext i8 %34 to i32
  %add438.i.us = add nsw i32 %bm0y.01394.i, %conv437.i.us
  %arrayidx440.i.us = getelementptr inbounds [33 x [4 x i8]], [33 x [4 x i8]]* @me_refine_bidir.dia4d, i32 0, i32 %j423.01383.i.us, i32 2
  %35 = load i8, i8* %arrayidx440.i.us, align 2, !tbaa !50
  %conv441.i.us = sext i8 %35 to i32
  %add442.i.us = add nsw i32 %bm1x.01393.i, %conv441.i.us
  %arrayidx444.i.us = getelementptr inbounds [33 x [4 x i8]], [33 x [4 x i8]]* @me_refine_bidir.dia4d, i32 0, i32 %j423.01383.i.us, i32 3
  %36 = load i8, i8* %arrayidx444.i.us, align 1, !tbaa !50
  %conv445.i.us = sext i8 %36 to i32
  %add446.i.us = add nsw i32 %bm1y.01392.i, %conv445.i.us
  %and449.i.us = and i32 %add434.i.us, 7
  %and451.i.us = and i32 %add438.i.us, 7
  %and453.i.us = and i32 %add442.i.us, 7
  %arrayidx454.i.us = getelementptr inbounds [8 x [8 x [8 x i8]]], [8 x [8 x [8 x i8]]]* %visited.i, i32 0, i32 %and449.i.us, i32 %and451.i.us, i32 %and453.i.us
  %37 = load i8, i8* %arrayidx454.i.us, align 1, !tbaa !50
  %conv455.i.us = zext i8 %37 to i32
  %and456.i.us = and i32 %add446.i.us, 7
  %shl457.i.us = shl nuw nsw i32 1, %and456.i.us
  %and458.i.us = and i32 %shl457.i.us, %conv455.i.us
  %tobool459.i.us = icmp eq i32 %and458.i.us, 0
  br i1 %tobool459.i.us, label %if.then460.i.us, label %if.end611.i.us

if.then460.i.us:                                  ; preds = %for.body430.i.us
  %mul464.i.us = mul nsw i32 %conv433.i.us, 3
  %add465.i.us = add nsw i32 %mul464.i.us, 4
  %add469.i.us = add nsw i32 %add465.i.us, %conv437.i.us
  %mul473.i.us = mul nsw i32 %conv441.i.us, 3
  %add474.i.us = add nsw i32 %mul473.i.us, 4
  %add478.i.us = add nsw i32 %add474.i.us, %conv445.i.us
  %38 = trunc i32 %shl457.i.us to i8
  %conv488.i.us = or i8 %37, %38
  store i8 %conv488.i.us, i8* %arrayidx454.i.us, align 1, !tbaa !50
  %39 = load void (i8*, i32, i8*, i32, i8*, i32, i32)*, void (i8*, i32, i8*, i32, i8*, i32, i32)** %arrayidx490.i, align 4, !tbaa !42
  %arrayidx493.i.us = getelementptr inbounds [3 x [2 x [9 x i8*]]], [3 x [2 x [9 x i8*]]]* %src.i, i32 0, i32 0, i32 0, i32 %add469.i.us
  %40 = load i8*, i8** %arrayidx493.i.us, align 4, !tbaa !42
  %arrayidx496.i.us = getelementptr inbounds [3 x [2 x [9 x i32]]], [3 x [2 x [9 x i32]]]* %stride.i, i32 0, i32 0, i32 0, i32 %add469.i.us
  %41 = load i32, i32* %arrayidx496.i.us, align 4, !tbaa !11
  %arrayidx499.i.us = getelementptr inbounds [3 x [2 x [9 x i8*]]], [3 x [2 x [9 x i8*]]]* %src.i, i32 0, i32 0, i32 1, i32 %add478.i.us
  %42 = load i8*, i8** %arrayidx499.i.us, align 4, !tbaa !42
  %arrayidx502.i.us = getelementptr inbounds [3 x [2 x [9 x i32]]], [3 x [2 x [9 x i32]]]* %stride.i, i32 0, i32 0, i32 1, i32 %add478.i.us
  %43 = load i32, i32* %arrayidx502.i.us, align 4, !tbaa !11
  call void %39(i8* %5, i32 32, i8* %40, i32 %41, i8* %42, i32 %43, i32 %i_weight) #3
  %44 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx503.i, align 4, !tbaa !42
  %45 = load i8*, i8** %arrayidx504.i, align 8, !tbaa !42
  %call505.i.us = call i32 %44(i8* %45, i32 16, i8* %5, i32 32) #3
  %arrayidx506.i.us = getelementptr inbounds i16, i16* %add.ptr.i, i32 %add434.i.us
  %46 = load i16, i16* %arrayidx506.i.us, align 2, !tbaa !44
  %conv507.i.us = zext i16 %46 to i32
  %add508.i.us = add nsw i32 %call505.i.us, %conv507.i.us
  %arrayidx509.i.us = getelementptr inbounds i16, i16* %add.ptr173.i, i32 %add438.i.us
  %47 = load i16, i16* %arrayidx509.i.us, align 2, !tbaa !44
  %conv510.i.us = zext i16 %47 to i32
  %add511.i.us = add nsw i32 %add508.i.us, %conv510.i.us
  %arrayidx512.i.us = getelementptr inbounds i16, i16* %add.ptr179.i, i32 %add442.i.us
  %48 = load i16, i16* %arrayidx512.i.us, align 2, !tbaa !44
  %conv513.i.us = zext i16 %48 to i32
  %add514.i.us = add nsw i32 %add511.i.us, %conv513.i.us
  %arrayidx515.i.us = getelementptr inbounds i16, i16* %add.ptr185.i, i32 %add446.i.us
  %49 = load i16, i16* %arrayidx515.i.us, align 2, !tbaa !44
  %conv516.i.us = zext i16 %49 to i32
  %add517.i.us = add nsw i32 %add514.i.us, %conv516.i.us
  %cmp606.i.us = icmp slt i32 %add517.i.us, %bcost.11386.i.us
  %spec.select1149.i.us = select i1 %cmp606.i.us, i32 %j423.01383.i.us, i32 %bestj.01382.i.us
  %spec.select1150.i.us = select i1 %cmp606.i.us, i32 %add517.i.us, i32 %bcost.11386.i.us
  br label %if.end611.i.us

if.end611.i.us:                                   ; preds = %if.then460.i.us, %for.body430.i.us
  %bestj.3.i.us = phi i32 [ %bestj.01382.i.us, %for.body430.i.us ], [ %spec.select1149.i.us, %if.then460.i.us ]
  %bcost.3.i.us = phi i32 [ %bcost.11386.i.us, %for.body430.i.us ], [ %spec.select1150.i.us, %if.then460.i.us ]
  %inc613.i.us = add nuw nsw i32 %j423.01383.i.us, 1
  %exitcond.i.us = icmp eq i32 %inc613.i.us, 33
  br i1 %exitcond.i.us, label %for.cond.cleanup429.i, label %for.body430.i.us

for.cond.cleanup429.i:                            ; preds = %if.end611.i.us, %for.body430.i
  %bestj.3.i.lcssa = phi i32 [ %spec.select1149.i, %for.body430.i ], [ %bestj.3.i.us, %if.end611.i.us ]
  %bcost.3.i.lcssa = phi i32 [ %spec.select1150.i, %for.body430.i ], [ %bcost.3.i.us, %if.end611.i.us ]
  %tobool615.i = icmp eq i32 %bestj.3.i.lcssa, 0
  br i1 %tobool615.i, label %cleanup644.i, label %for.inc642.i

for.body430.i:                                    ; preds = %if.end422.i, %for.body430.i
  %bcost.11386.i = phi i32 [ %spec.select1150.i, %for.body430.i ], [ %bcost.01391.i, %if.end422.i ]
  %j423.01383.i = phi i32 [ %inc613.i, %for.body430.i ], [ 0, %if.end422.i ]
  %bestj.01382.i = phi i32 [ %spec.select1149.i, %for.body430.i ], [ 0, %if.end422.i ]
  %arrayidx432.i = getelementptr inbounds [33 x [4 x i8]], [33 x [4 x i8]]* @me_refine_bidir.dia4d, i32 0, i32 %j423.01383.i, i32 0
  %50 = load i8, i8* %arrayidx432.i, align 4, !tbaa !50
  %conv433.i = sext i8 %50 to i32
  %add434.i = add nsw i32 %bm0x.01395.i, %conv433.i
  %arrayidx436.i = getelementptr inbounds [33 x [4 x i8]], [33 x [4 x i8]]* @me_refine_bidir.dia4d, i32 0, i32 %j423.01383.i, i32 1
  %51 = load i8, i8* %arrayidx436.i, align 1, !tbaa !50
  %conv437.i = sext i8 %51 to i32
  %add438.i = add nsw i32 %bm0y.01394.i, %conv437.i
  %arrayidx440.i = getelementptr inbounds [33 x [4 x i8]], [33 x [4 x i8]]* @me_refine_bidir.dia4d, i32 0, i32 %j423.01383.i, i32 2
  %52 = load i8, i8* %arrayidx440.i, align 2, !tbaa !50
  %conv441.i = sext i8 %52 to i32
  %add442.i = add nsw i32 %bm1x.01393.i, %conv441.i
  %arrayidx444.i = getelementptr inbounds [33 x [4 x i8]], [33 x [4 x i8]]* @me_refine_bidir.dia4d, i32 0, i32 %j423.01383.i, i32 3
  %53 = load i8, i8* %arrayidx444.i, align 1, !tbaa !50
  %conv445.i = sext i8 %53 to i32
  %add446.i = add nsw i32 %bm1y.01392.i, %conv445.i
  %.pre.i = and i32 %add446.i, 7
  %.pre1399.i = shl nuw nsw i32 1, %.pre.i
  %.pre1400.i = and i32 %add434.i, 7
  %.pre1401.i = and i32 %add438.i, 7
  %.pre1402.i = and i32 %add442.i, 7
  %mul464.i = mul nsw i32 %conv433.i, 3
  %add465.i = add nsw i32 %mul464.i, 4
  %add469.i = add nsw i32 %add465.i, %conv437.i
  %mul473.i = mul nsw i32 %conv441.i, 3
  %add474.i = add nsw i32 %mul473.i, 4
  %add478.i = add nsw i32 %add474.i, %conv445.i
  %arrayidx486.i = getelementptr inbounds [8 x [8 x [8 x i8]]], [8 x [8 x [8 x i8]]]* %visited.i, i32 0, i32 %.pre1400.i, i32 %.pre1401.i, i32 %.pre1402.i
  %54 = load i8, i8* %arrayidx486.i, align 1, !tbaa !50
  %55 = trunc i32 %.pre1399.i to i8
  %conv488.i = or i8 %54, %55
  store i8 %conv488.i, i8* %arrayidx486.i, align 1, !tbaa !50
  %56 = load void (i8*, i32, i8*, i32, i8*, i32, i32)*, void (i8*, i32, i8*, i32, i8*, i32, i32)** %arrayidx490.i, align 4, !tbaa !42
  %arrayidx493.i = getelementptr inbounds [3 x [2 x [9 x i8*]]], [3 x [2 x [9 x i8*]]]* %src.i, i32 0, i32 0, i32 0, i32 %add469.i
  %57 = load i8*, i8** %arrayidx493.i, align 4, !tbaa !42
  %arrayidx496.i = getelementptr inbounds [3 x [2 x [9 x i32]]], [3 x [2 x [9 x i32]]]* %stride.i, i32 0, i32 0, i32 0, i32 %add469.i
  %58 = load i32, i32* %arrayidx496.i, align 4, !tbaa !11
  %arrayidx499.i = getelementptr inbounds [3 x [2 x [9 x i8*]]], [3 x [2 x [9 x i8*]]]* %src.i, i32 0, i32 0, i32 1, i32 %add478.i
  %59 = load i8*, i8** %arrayidx499.i, align 4, !tbaa !42
  %arrayidx502.i = getelementptr inbounds [3 x [2 x [9 x i32]]], [3 x [2 x [9 x i32]]]* %stride.i, i32 0, i32 0, i32 1, i32 %add478.i
  %60 = load i32, i32* %arrayidx502.i, align 4, !tbaa !11
  call void %56(i8* %5, i32 32, i8* %57, i32 %58, i8* %59, i32 %60, i32 %i_weight) #3
  %61 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx503.i, align 4, !tbaa !42
  %62 = load i8*, i8** %arrayidx504.i, align 8, !tbaa !42
  %call505.i = call i32 %61(i8* %62, i32 16, i8* %5, i32 32) #3
  %arrayidx506.i = getelementptr inbounds i16, i16* %add.ptr.i, i32 %add434.i
  %63 = load i16, i16* %arrayidx506.i, align 2, !tbaa !44
  %conv507.i = zext i16 %63 to i32
  %add508.i = add nsw i32 %call505.i, %conv507.i
  %arrayidx509.i = getelementptr inbounds i16, i16* %add.ptr173.i, i32 %add438.i
  %64 = load i16, i16* %arrayidx509.i, align 2, !tbaa !44
  %conv510.i = zext i16 %64 to i32
  %add511.i = add nsw i32 %add508.i, %conv510.i
  %arrayidx512.i = getelementptr inbounds i16, i16* %add.ptr179.i, i32 %add442.i
  %65 = load i16, i16* %arrayidx512.i, align 2, !tbaa !44
  %conv513.i = zext i16 %65 to i32
  %add514.i = add nsw i32 %add511.i, %conv513.i
  %arrayidx515.i = getelementptr inbounds i16, i16* %add.ptr185.i, i32 %add446.i
  %66 = load i16, i16* %arrayidx515.i, align 2, !tbaa !44
  %conv516.i = zext i16 %66 to i32
  %add517.i = add nsw i32 %add514.i, %conv516.i
  %cmp606.i = icmp slt i32 %add517.i, %bcost.11386.i
  %spec.select1149.i = select i1 %cmp606.i, i32 %j423.01383.i, i32 %bestj.01382.i
  %spec.select1150.i = select i1 %cmp606.i, i32 %add517.i, i32 %bcost.11386.i
  %inc613.i = add nuw nsw i32 %j423.01383.i, 1
  %exitcond.i = icmp eq i32 %inc613.i, 33
  br i1 %exitcond.i, label %for.cond.cleanup429.i, label %for.body430.i

for.inc642.i:                                     ; preds = %for.cond.cleanup429.i
  %arrayidx618.i = getelementptr inbounds [33 x [4 x i8]], [33 x [4 x i8]]* @me_refine_bidir.dia4d, i32 0, i32 %bestj.3.i.lcssa
  %arrayidx619.i = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx618.i, i32 0, i32 0
  %67 = load i8, i8* %arrayidx619.i, align 4, !tbaa !50
  %conv620.i = sext i8 %67 to i32
  %add621.i = add nsw i32 %bm0x.01395.i, %conv620.i
  %arrayidx623.i = getelementptr inbounds [33 x [4 x i8]], [33 x [4 x i8]]* @me_refine_bidir.dia4d, i32 0, i32 %bestj.3.i.lcssa, i32 1
  %68 = load i8, i8* %arrayidx623.i, align 1, !tbaa !50
  %conv624.i = sext i8 %68 to i32
  %add625.i = add nsw i32 %bm0y.01394.i, %conv624.i
  %arrayidx627.i = getelementptr inbounds [33 x [4 x i8]], [33 x [4 x i8]]* @me_refine_bidir.dia4d, i32 0, i32 %bestj.3.i.lcssa, i32 2
  %69 = load i8, i8* %arrayidx627.i, align 2, !tbaa !50
  %conv628.i = sext i8 %69 to i32
  %add629.i = add nsw i32 %bm1x.01393.i, %conv628.i
  %arrayidx631.i = getelementptr inbounds [33 x [4 x i8]], [33 x [4 x i8]]* @me_refine_bidir.dia4d, i32 0, i32 %bestj.3.i.lcssa, i32 3
  %70 = load i8, i8* %arrayidx631.i, align 1, !tbaa !50
  %conv632.i = sext i8 %70 to i32
  %add633.i = add nsw i32 %bm1y.01392.i, %conv632.i
  %i636.i = bitcast [4 x i8]* %arrayidx618.i to i16*
  %71 = load i16, i16* %i636.i, align 4, !tbaa !50
  %conv637.i = zext i16 %71 to i32
  %i640.i = bitcast i8* %arrayidx627.i to i16*
  %72 = load i16, i16* %i640.i, align 2, !tbaa !50
  %conv641.i = zext i16 %72 to i32
  %inc643.i = add nuw nsw i32 %pass.01387.i, 1
  %exitcond1398.i = icmp eq i32 %inc643.i, 8
  br i1 %exitcond1398.i, label %cleanup644.i, label %for.body.i

cleanup644.i:                                     ; preds = %for.inc642.i, %for.cond.cleanup429.i
  %bm1y.0.lcssa.i = phi i32 [ %bm1y.01392.i, %for.cond.cleanup429.i ], [ %add633.i, %for.inc642.i ]
  %bm1x.0.lcssa.i = phi i32 [ %bm1x.01393.i, %for.cond.cleanup429.i ], [ %add629.i, %for.inc642.i ]
  %bm0y.0.lcssa.i = phi i32 [ %bm0y.01394.i, %for.cond.cleanup429.i ], [ %add625.i, %for.inc642.i ]
  %bm0x.0.lcssa.i = phi i32 [ %bm0x.01395.i, %for.cond.cleanup429.i ], [ %add621.i, %for.inc642.i ]
  %conv735.i = trunc i32 %bm0x.0.lcssa.i to i16
  store i16 %conv735.i, i16* %arrayidx88.i, align 16, !tbaa !44
  %conv738.i = trunc i32 %bm0y.0.lcssa.i to i16
  store i16 %conv738.i, i16* %arrayidx91.i, align 2, !tbaa !44
  %conv741.i = trunc i32 %bm1x.0.lcssa.i to i16
  store i16 %conv741.i, i16* %arrayidx94.i, align 16, !tbaa !44
  %conv744.i = trunc i32 %bm1y.0.lcssa.i to i16
  store i16 %conv744.i, i16* %arrayidx97.i, align 2, !tbaa !44
  br label %me_refine_bidir.exit

me_refine_bidir.exit:                             ; preds = %entry, %lor.lhs.false109.i, %lor.lhs.false122.i, %lor.lhs.false136.i, %cleanup644.i
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %11) #3
  call void @llvm.lifetime.end.p0i8(i64 216, i8* nonnull %6) #3
  call void @llvm.lifetime.end.p0i8(i64 216, i8* nonnull %4) #3
  call void @llvm.lifetime.end.p0i8(i64 4608, i8* nonnull %3) #3
  ret void
}

; Function Attrs: nounwind
define hidden void @x264_8_me_refine_bidir_rd(%struct.x264_t* %h, %struct.x264_me_t* %m0, %struct.x264_me_t* %m1, i32 %i_weight, i32 %i8, i32 %i_lambda2) local_unnamed_addr #0 {
entry:
  %pixy_buf.i = alloca [2 x [9 x [256 x i8]]], align 32
  %pixu_buf.i = alloca [2 x [9 x [256 x i8]]], align 32
  %pixv_buf.i = alloca [2 x [9 x [256 x i8]]], align 32
  %src.i = alloca [3 x [2 x [9 x i8*]]], align 4
  %stride.i = alloca [3 x [2 x [9 x i32]]], align 4
  %visited.i = alloca [8 x [8 x [8 x i8]]], align 64
  %b_skip_mc = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 85
  store i32 1, i32* %b_skip_mc, align 4, !tbaa !72
  %and.i = and i32 %i8, 1
  %shr.i = ashr i32 %i8, 1
  %mul.i = shl nuw nsw i32 %and.i, 1
  %mul1.i = shl nsw i32 %shr.i, 4
  %add.i = or i32 %mul.i, %mul1.i
  %add2.i = or i32 %add.i, 12
  %arraydecay.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 0, i32 %add2.i, i32 0
  %arraydecay9.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 1, i32 %add2.i, i32 0
  %i_pixel10.i = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m0, i32 0, i32 0
  %0 = load i32, i32* %i_pixel10.i, align 64, !tbaa !2
  %w.i = getelementptr inbounds [12 x %struct.anon.18], [12 x %struct.anon.18]* @x264_pixel_size, i32 0, i32 %0, i32 0
  %1 = load i8, i8* %w.i, align 1, !tbaa !8
  %conv.i = zext i8 %1 to i32
  %h13.i = getelementptr inbounds [12 x %struct.anon.18], [12 x %struct.anon.18]* @x264_pixel_size, i32 0, i32 %0, i32 1
  %2 = load i8, i8* %h13.i, align 1, !tbaa !10
  %conv14.i = zext i8 %2 to i32
  %3 = getelementptr inbounds [2 x [9 x [256 x i8]]], [2 x [9 x [256 x i8]]]* %pixy_buf.i, i32 0, i32 0, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 4608, i8* nonnull %3) #3
  %4 = getelementptr inbounds [2 x [9 x [256 x i8]]], [2 x [9 x [256 x i8]]]* %pixu_buf.i, i32 0, i32 0, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 4608, i8* nonnull %4) #3
  %5 = getelementptr inbounds [2 x [9 x [256 x i8]]], [2 x [9 x [256 x i8]]]* %pixv_buf.i, i32 0, i32 0, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 4608, i8* nonnull %5) #3
  %6 = bitcast [3 x [2 x [9 x i8*]]]* %src.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 216, i8* nonnull %6) #3
  %arrayidx15.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 80, i32 %0
  %7 = load i8, i8* %arrayidx15.i, align 1, !tbaa !50
  %conv16.i = zext i8 %7 to i32
  %chroma_v_shift18.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 4
  %8 = load i32, i32* %chroma_v_shift18.i, align 16, !tbaa !65
  %arrayidx25.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 16, i32 0
  %9 = load i8*, i8** %arrayidx25.i, align 8, !tbaa !42
  %mul26.i = shl nuw nsw i32 %and.i, 3
  %mul28.i = shl nsw i32 %shr.i, 8
  %add29.i = or i32 %mul26.i, %mul28.i
  %arrayidx30.i = getelementptr inbounds i8, i8* %9, i32 %add29.i
  %i_chroma_format_idc.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 22
  %10 = load i32, i32* %i_chroma_format_idc.i, align 8, !tbaa !61
  %tobool.i = icmp eq i32 %10, 0
  br i1 %tobool.i, label %cond.end85.i, label %cond.true43.i

cond.true43.i:                                    ; preds = %entry
  %shr22.i = lshr i32 8, %8
  %chroma_h_shift.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 3
  %11 = load i32, i32* %chroma_h_shift.i, align 4, !tbaa !73
  %shr20.i = lshr i32 8, %11
  %mul21.i = mul nuw nsw i32 %shr20.i, %and.i
  %arrayidx35.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 16, i32 1
  %12 = load i8*, i8** %arrayidx35.i, align 4, !tbaa !42
  %mul23.i = shl i32 %shr.i, 5
  %mul36.i = mul i32 %mul23.i, %shr22.i
  %add37.i = add nsw i32 %mul21.i, %mul36.i
  %arrayidx38.i = getelementptr inbounds i8, i8* %12, i32 %add37.i
  %arrayidx47.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 16, i32 2
  %13 = load i8*, i8** %arrayidx47.i, align 8, !tbaa !42
  %arrayidx50.i = getelementptr inbounds i8, i8* %13, i32 %add37.i
  br label %cond.end85.i

cond.end85.i:                                     ; preds = %cond.true43.i, %entry
  %cond1357.i = phi i8* [ %arrayidx38.i, %cond.true43.i ], [ null, %entry ]
  %cond53.i = phi i8* [ %arrayidx50.i, %cond.true43.i ], [ null, %entry ]
  %14 = bitcast [3 x [2 x [9 x i32]]]* %stride.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 216, i8* nonnull %14) #3
  %arrayidx88.i = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m0, i32 0, i32 13, i32 0
  %15 = load i16, i16* %arrayidx88.i, align 16, !tbaa !44
  %conv89.i = sext i16 %15 to i32
  %arrayidx91.i = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m0, i32 0, i32 13, i32 1
  %16 = load i16, i16* %arrayidx91.i, align 2, !tbaa !44
  %conv92.i = sext i16 %16 to i32
  %arrayidx94.i = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m1, i32 0, i32 13, i32 0
  %17 = load i16, i16* %arrayidx94.i, align 16, !tbaa !44
  %conv95.i = sext i16 %17 to i32
  %arrayidx97.i = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m1, i32 0, i32 13, i32 1
  %18 = load i16, i16* %arrayidx97.i, align 2, !tbaa !44
  %conv98.i = sext i16 %18 to i32
  %19 = getelementptr inbounds [8 x [8 x [8 x i8]]], [8 x [8 x [8 x i8]]]* %visited.i, i32 0, i32 0, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 512, i8* nonnull %19) #3
  %arrayidx100.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 29, i32 1
  %20 = load i32, i32* %arrayidx100.i, align 4, !tbaa !11
  %add101.i = add nsw i32 %20, 8
  %cmp.i = icmp sgt i32 %add101.i, %conv92.i
  %cmp107.i = icmp sgt i32 %add101.i, %conv98.i
  %or.cond1144.i = or i1 %cmp.i, %cmp107.i
  br i1 %or.cond1144.i, label %me_refine_bidir.exit, label %lor.lhs.false109.i

lor.lhs.false109.i:                               ; preds = %cond.end85.i
  %arrayidx111.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 30, i32 1
  %21 = load i32, i32* %arrayidx111.i, align 4, !tbaa !11
  %sub112.i = add nsw i32 %21, -8
  %cmp113.i = icmp slt i32 %sub112.i, %conv92.i
  %cmp120.i = icmp slt i32 %sub112.i, %conv98.i
  %or.cond1145.i = or i1 %cmp113.i, %cmp120.i
  br i1 %or.cond1145.i, label %me_refine_bidir.exit, label %lor.lhs.false122.i

lor.lhs.false122.i:                               ; preds = %lor.lhs.false109.i
  %arrayidx125.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 29, i32 0
  %22 = load i32, i32* %arrayidx125.i, align 4, !tbaa !11
  %add126.i = add nsw i32 %22, 8
  %cmp127.i = icmp sgt i32 %add126.i, %conv89.i
  %cmp134.i = icmp sgt i32 %add126.i, %conv95.i
  %or.cond1146.i = or i1 %cmp127.i, %cmp134.i
  br i1 %or.cond1146.i, label %me_refine_bidir.exit, label %lor.lhs.false136.i

lor.lhs.false136.i:                               ; preds = %lor.lhs.false122.i
  %arrayidx139.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 30, i32 0
  %23 = load i32, i32* %arrayidx139.i, align 4, !tbaa !11
  %sub140.i = add nsw i32 %23, -8
  %cmp141.i = icmp slt i32 %sub140.i, %conv89.i
  %cmp148.i = icmp slt i32 %sub140.i, %conv95.i
  %or.cond1147.i = or i1 %cmp141.i, %cmp148.i
  br i1 %or.cond1147.i, label %me_refine_bidir.exit, label %if.end.i

if.end.i:                                         ; preds = %lor.lhs.false136.i
  %cmp152.i = icmp ne i32 %0, 0
  %cmp155.i = icmp ne i32 %i8, 0
  %or.cond.i = and i1 %cmp155.i, %cmp152.i
  %shl.i = shl i32 %i8, 2
  br i1 %or.cond.i, label %if.then157.i, label %if.end164.i

if.then157.i:                                     ; preds = %if.end.i
  %24 = lshr i32 %conv.i, 2
  %arraydecay159.i = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m0, i32 0, i32 10, i32 0
  tail call void @x264_8_mb_predict_mv(%struct.x264_t* nonnull %h, i32 0, i32 %shl.i, i32 %24, i16* nonnull %arraydecay159.i) #3
  %arraydecay163.i = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m1, i32 0, i32 10, i32 0
  tail call void @x264_8_mb_predict_mv(%struct.x264_t* nonnull %h, i32 1, i32 %shl.i, i32 %24, i16* nonnull %arraydecay163.i) #3
  br label %if.end164.i

if.end164.i:                                      ; preds = %if.end.i, %if.then157.i
  %p_cost_mv.i = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m0, i32 0, i32 1
  %25 = load i16*, i16** %p_cost_mv.i, align 4, !tbaa !46
  %arrayidx166.i = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m0, i32 0, i32 10, i32 0
  %26 = load i16, i16* %arrayidx166.i, align 4, !tbaa !44
  %conv167.i = sext i16 %26 to i32
  %idx.neg.i = sub nsw i32 0, %conv167.i
  %add.ptr.i = getelementptr inbounds i16, i16* %25, i32 %idx.neg.i
  %arrayidx170.i = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m0, i32 0, i32 10, i32 1
  %27 = load i16, i16* %arrayidx170.i, align 2, !tbaa !44
  %conv171.i = sext i16 %27 to i32
  %idx.neg172.i = sub nsw i32 0, %conv171.i
  %add.ptr173.i = getelementptr inbounds i16, i16* %25, i32 %idx.neg172.i
  %p_cost_mv174.i = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m1, i32 0, i32 1
  %28 = load i16*, i16** %p_cost_mv174.i, align 4, !tbaa !46
  %arrayidx176.i = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m1, i32 0, i32 10, i32 0
  %29 = load i16, i16* %arrayidx176.i, align 4, !tbaa !44
  %conv177.i = sext i16 %29 to i32
  %idx.neg178.i = sub nsw i32 0, %conv177.i
  %add.ptr179.i = getelementptr inbounds i16, i16* %28, i32 %idx.neg178.i
  %arrayidx182.i = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m1, i32 0, i32 10, i32 1
  %30 = load i16, i16* %arrayidx182.i, align 2, !tbaa !44
  %conv183.i = sext i16 %30 to i32
  %idx.neg184.i = sub nsw i32 0, %conv183.i
  %add.ptr185.i = getelementptr inbounds i16, i16* %28, i32 %idx.neg184.i
  %memzero_aligned.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 93, i32 23
  %31 = load void (i8*, i32)*, void (i8*, i32)** %memzero_aligned.i, align 32, !tbaa !71
  call void %31(i8* nonnull %19, i32 512) #3
  %get_ref.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 93, i32 1
  %arrayidx223.i = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m0, i32 0, i32 5, i32 0
  %arrayidx224.i = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m0, i32 0, i32 9, i32 0
  %arrayidx248.i = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m0, i32 0, i32 5, i32 4
  %arrayidx250.i = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m0, i32 0, i32 9, i32 1
  %arrayidx267.i = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m0, i32 0, i32 5, i32 8
  %arrayidx269.i = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m0, i32 0, i32 9, i32 2
  %mc_chroma.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 93, i32 2
  %32 = lshr i32 %conv.i, 1
  %shr294.i = lshr i32 %conv14.i, %8
  %arrayidx340.i = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m1, i32 0, i32 5, i32 0
  %arrayidx342.i = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m1, i32 0, i32 9, i32 0
  %arrayidx367.i = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m1, i32 0, i32 5, i32 4
  %arrayidx369.i = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m1, i32 0, i32 9, i32 1
  %arrayidx386.i = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m1, i32 0, i32 5, i32 8
  %arrayidx388.i = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m1, i32 0, i32 9, i32 2
  %arrayidx490.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 93, i32 3, i32 %0
  %arrayidx503.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 92, i32 5, i32 %0
  %arrayidx504.i = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m0, i32 0, i32 7, i32 0
  %i532.i = bitcast i16* %arraydecay.i to i32*
  %i534.i = bitcast i16* %arraydecay9.i to i32*
  %arrayidx579.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 93, i32 3, i32 %conv16.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc642.i, %if.end164.i
  %bm0x.01395.i = phi i32 [ %conv89.i, %if.end164.i ], [ %add621.i, %for.inc642.i ]
  %bm0y.01394.i = phi i32 [ %conv92.i, %if.end164.i ], [ %add625.i, %for.inc642.i ]
  %bm1x.01393.i = phi i32 [ %conv95.i, %if.end164.i ], [ %add629.i, %for.inc642.i ]
  %bm1y.01392.i = phi i32 [ %conv98.i, %if.end164.i ], [ %add633.i, %for.inc642.i ]
  %bcost.01391.i = phi i32 [ 268435456, %if.end164.i ], [ %bcost.3.i, %for.inc642.i ]
  %mc_list0.01390.i = phi i32 [ 1, %if.end164.i ], [ %conv637.i, %for.inc642.i ]
  %mc_list1.01389.i = phi i32 [ 1, %if.end164.i ], [ %conv641.i, %for.inc642.i ]
  %bcostrd.01388.i = phi i64 [ 1152921504606846976, %if.end164.i ], [ %bcostrd.4.i, %for.inc642.i ]
  %pass.01387.i = phi i32 [ 0, %if.end164.i ], [ %inc643.i, %for.inc642.i ]
  %tobool189.i = icmp eq i32 %mc_list0.01390.i, 0
  br i1 %tobool189.i, label %if.end298.i, label %if.then190.i

if.then190.i:                                     ; preds = %for.body.i
  %33 = load i32, i32* @x264_8_iter_kludge, align 4, !tbaa !11
  %cmp1921378.i = icmp slt i32 %33, 9
  br i1 %cmp1921378.i, label %for.body195.us.i, label %if.end298.i

for.body195.us.i:                                 ; preds = %if.then190.i, %if.end297.us.i
  %j.01379.us.i = phi i32 [ %inc.us.i, %if.end297.us.i ], [ %33, %if.then190.i ]
  %arrayidx197.us.i = getelementptr inbounds [9 x [2 x i8]], [9 x [2 x i8]]* @square1, i32 0, i32 %j.01379.us.i, i32 0
  %34 = load i8, i8* %arrayidx197.us.i, align 1, !tbaa !50
  %conv198.us.i = sext i8 %34 to i32
  %mul199.us.i = mul nsw i32 %conv198.us.i, 3
  %add200.us.i = add nsw i32 %mul199.us.i, 4
  %arrayidx202.us.i = getelementptr inbounds [9 x [2 x i8]], [9 x [2 x i8]]* @square1, i32 0, i32 %j.01379.us.i, i32 1
  %35 = load i8, i8* %arrayidx202.us.i, align 1, !tbaa !50
  %conv203.us.i = sext i8 %35 to i32
  %add204.us.i = add nsw i32 %add200.us.i, %conv203.us.i
  %add208.us.i = add nsw i32 %bm0x.01395.i, %conv198.us.i
  %add212.us.i = add nsw i32 %bm0y.01394.i, %conv203.us.i
  %arrayidx215.us.i = getelementptr inbounds [3 x [2 x [9 x i32]]], [3 x [2 x [9 x i32]]]* %stride.i, i32 0, i32 0, i32 0, i32 %add204.us.i
  store i32 %conv.i, i32* %arrayidx215.us.i, align 4, !tbaa !11
  %36 = load i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)*, i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)** %get_ref.i, align 4, !tbaa !48
  %arraydecay219.us.i = getelementptr inbounds [2 x [9 x [256 x i8]]], [2 x [9 x [256 x i8]]]* %pixy_buf.i, i32 0, i32 0, i32 %add204.us.i, i32 0
  %37 = load i32, i32* %arrayidx224.i, align 8, !tbaa !11
  %call.us.i = call i8* %36(i8* nonnull %arraydecay219.us.i, i32* nonnull %arrayidx215.us.i, i8** nonnull %arrayidx223.i, i32 %37, i32 %add208.us.i, i32 %add212.us.i, i32 %conv.i, i32 %conv14.i, %struct.x264_weight_t* bitcast ([1024 x i8]* @x264_zero to %struct.x264_weight_t*)) #3
  %arrayidx227.us.i = getelementptr inbounds [3 x [2 x [9 x i8*]]], [3 x [2 x [9 x i8*]]]* %src.i, i32 0, i32 0, i32 0, i32 %add204.us.i
  store i8* %call.us.i, i8** %arrayidx227.us.i, align 4, !tbaa !42
  %38 = load i32, i32* %i_chroma_format_idc.i, align 8, !tbaa !61
  switch i32 %38, label %if.then278.us.i [
    i32 3, label %if.then235.us.i
    i32 0, label %if.end297.us.i
  ]

if.then235.us.i:                                  ; preds = %for.body195.us.i
  %arrayidx238.us.i = getelementptr inbounds [3 x [2 x [9 x i32]]], [3 x [2 x [9 x i32]]]* %stride.i, i32 0, i32 1, i32 0, i32 %add204.us.i
  store i32 %conv.i, i32* %arrayidx238.us.i, align 4, !tbaa !11
  %39 = load i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)*, i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)** %get_ref.i, align 4, !tbaa !48
  %arraydecay243.us.i = getelementptr inbounds [2 x [9 x [256 x i8]]], [2 x [9 x [256 x i8]]]* %pixu_buf.i, i32 0, i32 0, i32 %add204.us.i, i32 0
  %40 = load i32, i32* %arrayidx250.i, align 4, !tbaa !11
  %call251.us.i = call i8* %39(i8* nonnull %arraydecay243.us.i, i32* nonnull %arrayidx238.us.i, i8** nonnull %arrayidx248.i, i32 %40, i32 %add208.us.i, i32 %add212.us.i, i32 %conv.i, i32 %conv14.i, %struct.x264_weight_t* bitcast ([1024 x i8]* @x264_zero to %struct.x264_weight_t*)) #3
  %arrayidx254.us.i = getelementptr inbounds [3 x [2 x [9 x i8*]]], [3 x [2 x [9 x i8*]]]* %src.i, i32 0, i32 1, i32 0, i32 %add204.us.i
  store i8* %call251.us.i, i8** %arrayidx254.us.i, align 4, !tbaa !42
  %arrayidx257.us.i = getelementptr inbounds [3 x [2 x [9 x i32]]], [3 x [2 x [9 x i32]]]* %stride.i, i32 0, i32 2, i32 0, i32 %add204.us.i
  store i32 %conv.i, i32* %arrayidx257.us.i, align 4, !tbaa !11
  %41 = load i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)*, i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)** %get_ref.i, align 4, !tbaa !48
  %arraydecay262.us.i = getelementptr inbounds [2 x [9 x [256 x i8]]], [2 x [9 x [256 x i8]]]* %pixv_buf.i, i32 0, i32 0, i32 %add204.us.i, i32 0
  %42 = load i32, i32* %arrayidx269.i, align 8, !tbaa !11
  %call270.us.i = call i8* %41(i8* nonnull %arraydecay262.us.i, i32* nonnull %arrayidx257.us.i, i8** nonnull %arrayidx267.i, i32 %42, i32 %add208.us.i, i32 %add212.us.i, i32 %conv.i, i32 %conv14.i, %struct.x264_weight_t* bitcast ([1024 x i8]* @x264_zero to %struct.x264_weight_t*)) #3
  %arrayidx273.us.i = getelementptr inbounds [3 x [2 x [9 x i8*]]], [3 x [2 x [9 x i8*]]]* %src.i, i32 0, i32 2, i32 0, i32 %add204.us.i
  store i8* %call270.us.i, i8** %arrayidx273.us.i, align 4, !tbaa !42
  br label %if.end297.us.i

if.then278.us.i:                                  ; preds = %for.body195.us.i
  %43 = load void (i8*, i8*, i32, i8*, i32, i32, i32, i32, i32)*, void (i8*, i8*, i32, i8*, i32, i32, i32, i32, i32)** %mc_chroma.i, align 8, !tbaa !66
  %arraydecay282.us.i = getelementptr inbounds [2 x [9 x [256 x i8]]], [2 x [9 x [256 x i8]]]* %pixu_buf.i, i32 0, i32 0, i32 %add204.us.i, i32 0
  %arraydecay285.us.i = getelementptr inbounds [2 x [9 x [256 x i8]]], [2 x [9 x [256 x i8]]]* %pixv_buf.i, i32 0, i32 0, i32 %add204.us.i, i32 0
  %44 = load i8*, i8** %arrayidx248.i, align 4, !tbaa !42
  %45 = load i32, i32* %arrayidx250.i, align 4, !tbaa !11
  %mul291.us.i = shl nsw i32 %add212.us.i, 1
  %shr292.us.i = ashr i32 %mul291.us.i, %8
  call void %43(i8* nonnull %arraydecay282.us.i, i8* nonnull %arraydecay285.us.i, i32 8, i8* %44, i32 %45, i32 %add208.us.i, i32 %shr292.us.i, i32 %32, i32 %shr294.i) #3
  br label %if.end297.us.i

if.end297.us.i:                                   ; preds = %if.then278.us.i, %if.then235.us.i, %for.body195.us.i
  %inc.us.i = add nsw i32 %j.01379.us.i, 1
  %cmp192.us.i = icmp slt i32 %j.01379.us.i, 8
  br i1 %cmp192.us.i, label %for.body195.us.i, label %if.end298.i

if.end298.i:                                      ; preds = %if.end297.us.i, %if.then190.i, %for.body.i
  %tobool299.i = icmp eq i32 %mc_list1.01389.i, 0
  br i1 %tobool299.i, label %if.end422.i, label %if.then300.i

if.then300.i:                                     ; preds = %if.end298.i
  %46 = load i32, i32* @x264_8_iter_kludge, align 4, !tbaa !11
  %cmp3031380.i = icmp slt i32 %46, 9
  br i1 %cmp3031380.i, label %for.body306.us.i, label %if.end422.i

for.body306.us.i:                                 ; preds = %if.then300.i, %if.end418.us.i
  %j301.01381.us.i = phi i32 [ %inc420.us.i, %if.end418.us.i ], [ %46, %if.then300.i ]
  %arrayidx310.us.i = getelementptr inbounds [9 x [2 x i8]], [9 x [2 x i8]]* @square1, i32 0, i32 %j301.01381.us.i, i32 0
  %47 = load i8, i8* %arrayidx310.us.i, align 1, !tbaa !50
  %conv311.us.i = sext i8 %47 to i32
  %mul312.us.i = mul nsw i32 %conv311.us.i, 3
  %add313.us.i = add nsw i32 %mul312.us.i, 4
  %arrayidx315.us.i = getelementptr inbounds [9 x [2 x i8]], [9 x [2 x i8]]* @square1, i32 0, i32 %j301.01381.us.i, i32 1
  %48 = load i8, i8* %arrayidx315.us.i, align 1, !tbaa !50
  %conv316.us.i = sext i8 %48 to i32
  %add317.us.i = add nsw i32 %add313.us.i, %conv316.us.i
  %add322.us.i = add nsw i32 %bm1x.01393.i, %conv311.us.i
  %add327.us.i = add nsw i32 %bm1y.01392.i, %conv316.us.i
  %arrayidx330.us.i = getelementptr inbounds [3 x [2 x [9 x i32]]], [3 x [2 x [9 x i32]]]* %stride.i, i32 0, i32 0, i32 1, i32 %add317.us.i
  store i32 %conv.i, i32* %arrayidx330.us.i, align 4, !tbaa !11
  %49 = load i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)*, i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)** %get_ref.i, align 4, !tbaa !48
  %arraydecay335.us.i = getelementptr inbounds [2 x [9 x [256 x i8]]], [2 x [9 x [256 x i8]]]* %pixy_buf.i, i32 0, i32 1, i32 %add317.us.i, i32 0
  %50 = load i32, i32* %arrayidx342.i, align 8, !tbaa !11
  %call343.us.i = call i8* %49(i8* nonnull %arraydecay335.us.i, i32* nonnull %arrayidx330.us.i, i8** nonnull %arrayidx340.i, i32 %50, i32 %add322.us.i, i32 %add327.us.i, i32 %conv.i, i32 %conv14.i, %struct.x264_weight_t* bitcast ([1024 x i8]* @x264_zero to %struct.x264_weight_t*)) #3
  %arrayidx346.us.i = getelementptr inbounds [3 x [2 x [9 x i8*]]], [3 x [2 x [9 x i8*]]]* %src.i, i32 0, i32 0, i32 1, i32 %add317.us.i
  store i8* %call343.us.i, i8** %arrayidx346.us.i, align 4, !tbaa !42
  %51 = load i32, i32* %i_chroma_format_idc.i, align 8, !tbaa !61
  switch i32 %51, label %if.then398.us.i [
    i32 3, label %if.then354.us.i
    i32 0, label %if.end418.us.i
  ]

if.then354.us.i:                                  ; preds = %for.body306.us.i
  %arrayidx357.us.i = getelementptr inbounds [3 x [2 x [9 x i32]]], [3 x [2 x [9 x i32]]]* %stride.i, i32 0, i32 1, i32 1, i32 %add317.us.i
  store i32 %conv.i, i32* %arrayidx357.us.i, align 4, !tbaa !11
  %52 = load i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)*, i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)** %get_ref.i, align 4, !tbaa !48
  %arraydecay362.us.i = getelementptr inbounds [2 x [9 x [256 x i8]]], [2 x [9 x [256 x i8]]]* %pixu_buf.i, i32 0, i32 1, i32 %add317.us.i, i32 0
  %53 = load i32, i32* %arrayidx369.i, align 4, !tbaa !11
  %call370.us.i = call i8* %52(i8* nonnull %arraydecay362.us.i, i32* nonnull %arrayidx357.us.i, i8** nonnull %arrayidx367.i, i32 %53, i32 %add322.us.i, i32 %add327.us.i, i32 %conv.i, i32 %conv14.i, %struct.x264_weight_t* bitcast ([1024 x i8]* @x264_zero to %struct.x264_weight_t*)) #3
  %arrayidx373.us.i = getelementptr inbounds [3 x [2 x [9 x i8*]]], [3 x [2 x [9 x i8*]]]* %src.i, i32 0, i32 1, i32 1, i32 %add317.us.i
  store i8* %call370.us.i, i8** %arrayidx373.us.i, align 4, !tbaa !42
  %arrayidx376.us.i = getelementptr inbounds [3 x [2 x [9 x i32]]], [3 x [2 x [9 x i32]]]* %stride.i, i32 0, i32 2, i32 1, i32 %add317.us.i
  store i32 %conv.i, i32* %arrayidx376.us.i, align 4, !tbaa !11
  %54 = load i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)*, i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)** %get_ref.i, align 4, !tbaa !48
  %arraydecay381.us.i = getelementptr inbounds [2 x [9 x [256 x i8]]], [2 x [9 x [256 x i8]]]* %pixv_buf.i, i32 0, i32 1, i32 %add317.us.i, i32 0
  %55 = load i32, i32* %arrayidx388.i, align 8, !tbaa !11
  %call389.us.i = call i8* %54(i8* nonnull %arraydecay381.us.i, i32* nonnull %arrayidx376.us.i, i8** nonnull %arrayidx386.i, i32 %55, i32 %add322.us.i, i32 %add327.us.i, i32 %conv.i, i32 %conv14.i, %struct.x264_weight_t* bitcast ([1024 x i8]* @x264_zero to %struct.x264_weight_t*)) #3
  %arrayidx392.us.i = getelementptr inbounds [3 x [2 x [9 x i8*]]], [3 x [2 x [9 x i8*]]]* %src.i, i32 0, i32 2, i32 1, i32 %add317.us.i
  store i8* %call389.us.i, i8** %arrayidx392.us.i, align 4, !tbaa !42
  br label %if.end418.us.i

if.then398.us.i:                                  ; preds = %for.body306.us.i
  %56 = load void (i8*, i8*, i32, i8*, i32, i32, i32, i32, i32)*, void (i8*, i8*, i32, i8*, i32, i32, i32, i32, i32)** %mc_chroma.i, align 8, !tbaa !66
  %arraydecay403.us.i = getelementptr inbounds [2 x [9 x [256 x i8]]], [2 x [9 x [256 x i8]]]* %pixu_buf.i, i32 0, i32 1, i32 %add317.us.i, i32 0
  %arraydecay406.us.i = getelementptr inbounds [2 x [9 x [256 x i8]]], [2 x [9 x [256 x i8]]]* %pixv_buf.i, i32 0, i32 1, i32 %add317.us.i, i32 0
  %57 = load i8*, i8** %arrayidx367.i, align 4, !tbaa !42
  %58 = load i32, i32* %arrayidx369.i, align 4, !tbaa !11
  %mul412.us.i = shl nsw i32 %add327.us.i, 1
  %shr413.us.i = ashr i32 %mul412.us.i, %8
  call void %56(i8* nonnull %arraydecay403.us.i, i8* nonnull %arraydecay406.us.i, i32 8, i8* %57, i32 %58, i32 %add322.us.i, i32 %shr413.us.i, i32 %32, i32 %shr294.i) #3
  br label %if.end418.us.i

if.end418.us.i:                                   ; preds = %if.then398.us.i, %if.then354.us.i, %for.body306.us.i
  %inc420.us.i = add nsw i32 %j301.01381.us.i, 1
  %cmp303.us.i = icmp slt i32 %j301.01381.us.i, 8
  br i1 %cmp303.us.i, label %for.body306.us.i, label %if.end422.i

if.end422.i:                                      ; preds = %if.end418.us.i, %if.then300.i, %if.end298.i
  %tobool424.i = icmp ne i32 %pass.01387.i, 0
  %lnot.ext.i = zext i1 %tobool424.i to i32
  br label %for.body430.i

for.cond.cleanup429.i:                            ; preds = %if.end611.i
  %tobool615.i = icmp eq i32 %bestj.3.i, 0
  br i1 %tobool615.i, label %cleanup644.i, label %for.inc642.i

for.body430.i:                                    ; preds = %if.end611.i, %if.end422.i
  %bcost.11386.i = phi i32 [ %bcost.01391.i, %if.end422.i ], [ %bcost.3.i, %if.end611.i ]
  %bcostrd.11385.i = phi i64 [ %bcostrd.01388.i, %if.end422.i ], [ %bcostrd.4.i, %if.end611.i ]
  %j423.01383.i = phi i32 [ %lnot.ext.i, %if.end422.i ], [ %inc613.i, %if.end611.i ]
  %bestj.01382.i = phi i32 [ 0, %if.end422.i ], [ %bestj.3.i, %if.end611.i ]
  %arrayidx432.i = getelementptr inbounds [33 x [4 x i8]], [33 x [4 x i8]]* @me_refine_bidir.dia4d, i32 0, i32 %j423.01383.i, i32 0
  %59 = load i8, i8* %arrayidx432.i, align 4, !tbaa !50
  %conv433.i = sext i8 %59 to i32
  %add434.i = add nsw i32 %bm0x.01395.i, %conv433.i
  %arrayidx436.i = getelementptr inbounds [33 x [4 x i8]], [33 x [4 x i8]]* @me_refine_bidir.dia4d, i32 0, i32 %j423.01383.i, i32 1
  %60 = load i8, i8* %arrayidx436.i, align 1, !tbaa !50
  %conv437.i = sext i8 %60 to i32
  %add438.i = add nsw i32 %bm0y.01394.i, %conv437.i
  %arrayidx440.i = getelementptr inbounds [33 x [4 x i8]], [33 x [4 x i8]]* @me_refine_bidir.dia4d, i32 0, i32 %j423.01383.i, i32 2
  %61 = load i8, i8* %arrayidx440.i, align 2, !tbaa !50
  %conv441.i = sext i8 %61 to i32
  %add442.i = add nsw i32 %bm1x.01393.i, %conv441.i
  %arrayidx444.i = getelementptr inbounds [33 x [4 x i8]], [33 x [4 x i8]]* @me_refine_bidir.dia4d, i32 0, i32 %j423.01383.i, i32 3
  %62 = load i8, i8* %arrayidx444.i, align 1, !tbaa !50
  %conv445.i = sext i8 %62 to i32
  %add446.i = add nsw i32 %bm1y.01392.i, %conv445.i
  br i1 %tobool424.i, label %lor.lhs.false448.i, label %for.body430.if.then460_crit_edge.i

for.body430.if.then460_crit_edge.i:               ; preds = %for.body430.i
  %.pre.i = and i32 %add446.i, 7
  %.pre1399.i = shl nuw nsw i32 1, %.pre.i
  %.pre1400.i = and i32 %add434.i, 7
  %.pre1401.i = and i32 %add438.i, 7
  %.pre1402.i = and i32 %add442.i, 7
  %arrayidx486.i.phi.trans.insert = getelementptr inbounds [8 x [8 x [8 x i8]]], [8 x [8 x [8 x i8]]]* %visited.i, i32 0, i32 %.pre1400.i, i32 %.pre1401.i, i32 %.pre1402.i
  %.pre = load i8, i8* %arrayidx486.i.phi.trans.insert, align 1, !tbaa !50
  br label %if.then460.i

lor.lhs.false448.i:                               ; preds = %for.body430.i
  %and449.i = and i32 %add434.i, 7
  %and451.i = and i32 %add438.i, 7
  %and453.i = and i32 %add442.i, 7
  %arrayidx454.i = getelementptr inbounds [8 x [8 x [8 x i8]]], [8 x [8 x [8 x i8]]]* %visited.i, i32 0, i32 %and449.i, i32 %and451.i, i32 %and453.i
  %63 = load i8, i8* %arrayidx454.i, align 1, !tbaa !50
  %conv455.i = zext i8 %63 to i32
  %and456.i = and i32 %add446.i, 7
  %shl457.i = shl nuw nsw i32 1, %and456.i
  %and458.i = and i32 %shl457.i, %conv455.i
  %tobool459.i = icmp eq i32 %and458.i, 0
  br i1 %tobool459.i, label %if.then460.i, label %if.end611.i

if.then460.i:                                     ; preds = %lor.lhs.false448.i, %for.body430.if.then460_crit_edge.i
  %64 = phi i8 [ %.pre, %for.body430.if.then460_crit_edge.i ], [ %63, %lor.lhs.false448.i ]
  %and485.pre-phi.i = phi i32 [ %.pre1402.i, %for.body430.if.then460_crit_edge.i ], [ %and453.i, %lor.lhs.false448.i ]
  %and483.pre-phi.i = phi i32 [ %.pre1401.i, %for.body430.if.then460_crit_edge.i ], [ %and451.i, %lor.lhs.false448.i ]
  %and481.pre-phi.i = phi i32 [ %.pre1400.i, %for.body430.if.then460_crit_edge.i ], [ %and449.i, %lor.lhs.false448.i ]
  %shl480.pre-phi.i = phi i32 [ %.pre1399.i, %for.body430.if.then460_crit_edge.i ], [ %shl457.i, %lor.lhs.false448.i ]
  %mul464.i = mul nsw i32 %conv433.i, 3
  %add465.i = add nsw i32 %mul464.i, 4
  %add469.i = add nsw i32 %add465.i, %conv437.i
  %mul473.i = mul nsw i32 %conv441.i, 3
  %add474.i = add nsw i32 %mul473.i, 4
  %add478.i = add nsw i32 %add474.i, %conv445.i
  %arrayidx486.i = getelementptr inbounds [8 x [8 x [8 x i8]]], [8 x [8 x [8 x i8]]]* %visited.i, i32 0, i32 %and481.pre-phi.i, i32 %and483.pre-phi.i, i32 %and485.pre-phi.i
  %65 = trunc i32 %shl480.pre-phi.i to i8
  %conv488.i = or i8 %64, %65
  store i8 %conv488.i, i8* %arrayidx486.i, align 1, !tbaa !50
  %66 = load void (i8*, i32, i8*, i32, i8*, i32, i32)*, void (i8*, i32, i8*, i32, i8*, i32, i32)** %arrayidx490.i, align 4, !tbaa !42
  %arrayidx493.i = getelementptr inbounds [3 x [2 x [9 x i8*]]], [3 x [2 x [9 x i8*]]]* %src.i, i32 0, i32 0, i32 0, i32 %add469.i
  %67 = load i8*, i8** %arrayidx493.i, align 4, !tbaa !42
  %arrayidx496.i = getelementptr inbounds [3 x [2 x [9 x i32]]], [3 x [2 x [9 x i32]]]* %stride.i, i32 0, i32 0, i32 0, i32 %add469.i
  %68 = load i32, i32* %arrayidx496.i, align 4, !tbaa !11
  %arrayidx499.i = getelementptr inbounds [3 x [2 x [9 x i8*]]], [3 x [2 x [9 x i8*]]]* %src.i, i32 0, i32 0, i32 1, i32 %add478.i
  %69 = load i8*, i8** %arrayidx499.i, align 4, !tbaa !42
  %arrayidx502.i = getelementptr inbounds [3 x [2 x [9 x i32]]], [3 x [2 x [9 x i32]]]* %stride.i, i32 0, i32 0, i32 1, i32 %add478.i
  %70 = load i32, i32* %arrayidx502.i, align 4, !tbaa !11
  call void %66(i8* %arrayidx30.i, i32 32, i8* %67, i32 %68, i8* %69, i32 %70, i32 %i_weight) #3
  %71 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx503.i, align 4, !tbaa !42
  %72 = load i8*, i8** %arrayidx504.i, align 8, !tbaa !42
  %call505.i = call i32 %71(i8* %72, i32 16, i8* %arrayidx30.i, i32 32) #3
  %arrayidx506.i = getelementptr inbounds i16, i16* %add.ptr.i, i32 %add434.i
  %73 = load i16, i16* %arrayidx506.i, align 2, !tbaa !44
  %conv507.i = zext i16 %73 to i32
  %add508.i = add nsw i32 %call505.i, %conv507.i
  %arrayidx509.i = getelementptr inbounds i16, i16* %add.ptr173.i, i32 %add438.i
  %74 = load i16, i16* %arrayidx509.i, align 2, !tbaa !44
  %conv510.i = zext i16 %74 to i32
  %add511.i = add nsw i32 %add508.i, %conv510.i
  %arrayidx512.i = getelementptr inbounds i16, i16* %add.ptr179.i, i32 %add442.i
  %75 = load i16, i16* %arrayidx512.i, align 2, !tbaa !44
  %conv513.i = zext i16 %75 to i32
  %add514.i = add nsw i32 %add511.i, %conv513.i
  %arrayidx515.i = getelementptr inbounds i16, i16* %add.ptr185.i, i32 %add446.i
  %76 = load i16, i16* %arrayidx515.i, align 2, !tbaa !44
  %conv516.i = zext i16 %76 to i32
  %add517.i = add nsw i32 %add514.i, %conv516.i
  %shr520.i = ashr i32 %bcost.11386.i, 4
  %add521.i = add nsw i32 %shr520.i, %bcost.11386.i
  %cmp522.i = icmp slt i32 %add517.i, %add521.i
  br i1 %cmp522.i, label %if.then524.i, label %if.end611.i

if.then524.i:                                     ; preds = %if.then460.i
  %cmp525.i = icmp slt i32 %add517.i, %bcost.11386.i
  %cond530.i = select i1 %cmp525.i, i32 %add517.i, i32 %bcost.11386.i
  %and.i.i = and i32 %add434.i, 65535
  %shl.i.i = shl i32 %add438.i, 16
  %add.i.i = or i32 %shl.i.i, %and.i.i
  store i32 %add.i.i, i32* %i532.i, align 4, !tbaa !50
  %and.i1155.i = and i32 %add442.i, 65535
  %shl.i1156.i = shl i32 %add446.i, 16
  %add.i1157.i = or i32 %shl.i1156.i, %and.i1155.i
  store i32 %add.i1157.i, i32* %i534.i, align 4, !tbaa !50
  %77 = load i32, i32* %i_chroma_format_idc.i, align 8, !tbaa !61
  switch i32 %77, label %if.then576.i [
    i32 3, label %if.then540.i
    i32 0, label %if.end596.i
  ]

if.then540.i:                                     ; preds = %if.then524.i
  %78 = load void (i8*, i32, i8*, i32, i8*, i32, i32)*, void (i8*, i32, i8*, i32, i8*, i32, i32)** %arrayidx490.i, align 4, !tbaa !42
  %arrayidx546.i = getelementptr inbounds [3 x [2 x [9 x i8*]]], [3 x [2 x [9 x i8*]]]* %src.i, i32 0, i32 1, i32 0, i32 %add469.i
  %79 = load i8*, i8** %arrayidx546.i, align 4, !tbaa !42
  %arrayidx549.i = getelementptr inbounds [3 x [2 x [9 x i32]]], [3 x [2 x [9 x i32]]]* %stride.i, i32 0, i32 1, i32 0, i32 %add469.i
  %80 = load i32, i32* %arrayidx549.i, align 4, !tbaa !11
  %arrayidx552.i = getelementptr inbounds [3 x [2 x [9 x i8*]]], [3 x [2 x [9 x i8*]]]* %src.i, i32 0, i32 1, i32 1, i32 %add478.i
  %81 = load i8*, i8** %arrayidx552.i, align 4, !tbaa !42
  %arrayidx555.i = getelementptr inbounds [3 x [2 x [9 x i32]]], [3 x [2 x [9 x i32]]]* %stride.i, i32 0, i32 1, i32 1, i32 %add478.i
  %82 = load i32, i32* %arrayidx555.i, align 4, !tbaa !11
  call void %78(i8* %cond1357.i, i32 32, i8* %79, i32 %80, i8* %81, i32 %82, i32 %i_weight) #3
  %83 = load void (i8*, i32, i8*, i32, i8*, i32, i32)*, void (i8*, i32, i8*, i32, i8*, i32, i32)** %arrayidx490.i, align 4, !tbaa !42
  %arrayidx561.i = getelementptr inbounds [3 x [2 x [9 x i8*]]], [3 x [2 x [9 x i8*]]]* %src.i, i32 0, i32 2, i32 0, i32 %add469.i
  %84 = load i8*, i8** %arrayidx561.i, align 4, !tbaa !42
  %arrayidx564.i = getelementptr inbounds [3 x [2 x [9 x i32]]], [3 x [2 x [9 x i32]]]* %stride.i, i32 0, i32 2, i32 0, i32 %add469.i
  %85 = load i32, i32* %arrayidx564.i, align 4, !tbaa !11
  %arrayidx567.i = getelementptr inbounds [3 x [2 x [9 x i8*]]], [3 x [2 x [9 x i8*]]]* %src.i, i32 0, i32 2, i32 1, i32 %add478.i
  %86 = load i8*, i8** %arrayidx567.i, align 4, !tbaa !42
  %arrayidx570.i = getelementptr inbounds [3 x [2 x [9 x i32]]], [3 x [2 x [9 x i32]]]* %stride.i, i32 0, i32 2, i32 1, i32 %add478.i
  %87 = load i32, i32* %arrayidx570.i, align 4, !tbaa !11
  call void %83(i8* %cond53.i, i32 32, i8* %84, i32 %85, i8* %86, i32 %87, i32 %i_weight) #3
  br label %if.end596.i

if.then576.i:                                     ; preds = %if.then524.i
  %88 = load void (i8*, i32, i8*, i32, i8*, i32, i32)*, void (i8*, i32, i8*, i32, i8*, i32, i32)** %arrayidx579.i, align 4, !tbaa !42
  %arraydecay582.i = getelementptr inbounds [2 x [9 x [256 x i8]]], [2 x [9 x [256 x i8]]]* %pixu_buf.i, i32 0, i32 0, i32 %add469.i, i32 0
  %arraydecay585.i = getelementptr inbounds [2 x [9 x [256 x i8]]], [2 x [9 x [256 x i8]]]* %pixu_buf.i, i32 0, i32 1, i32 %add478.i, i32 0
  call void %88(i8* %cond1357.i, i32 32, i8* nonnull %arraydecay582.i, i32 8, i8* nonnull %arraydecay585.i, i32 8, i32 %i_weight) #3
  %89 = load void (i8*, i32, i8*, i32, i8*, i32, i32)*, void (i8*, i32, i8*, i32, i8*, i32, i32)** %arrayidx579.i, align 4, !tbaa !42
  %arraydecay591.i = getelementptr inbounds [2 x [9 x [256 x i8]]], [2 x [9 x [256 x i8]]]* %pixv_buf.i, i32 0, i32 0, i32 %add469.i, i32 0
  %arraydecay594.i = getelementptr inbounds [2 x [9 x [256 x i8]]], [2 x [9 x [256 x i8]]]* %pixv_buf.i, i32 0, i32 1, i32 %add478.i, i32 0
  call void %89(i8* %cond53.i, i32 32, i8* nonnull %arraydecay591.i, i32 8, i8* nonnull %arraydecay594.i, i32 8, i32 %i_weight) #3
  br label %if.end596.i

if.end596.i:                                      ; preds = %if.then576.i, %if.then540.i, %if.then524.i
  %90 = load i32, i32* %i_pixel10.i, align 64, !tbaa !2
  %call599.i = call i64 @x264_8_rd_cost_part(%struct.x264_t* nonnull %h, i32 %i_lambda2, i32 %shl.i, i32 %90) #3
  %cmp600.i = icmp ult i64 %call599.i, %bcostrd.11385.i
  %spec.select.i = select i1 %cmp600.i, i32 %j423.01383.i, i32 %bestj.01382.i
  %spec.select1148.i = select i1 %cmp600.i, i64 %call599.i, i64 %bcostrd.11385.i
  br label %if.end611.i

if.end611.i:                                      ; preds = %if.end596.i, %if.then460.i, %lor.lhs.false448.i
  %bestj.3.i = phi i32 [ %bestj.01382.i, %lor.lhs.false448.i ], [ %spec.select.i, %if.end596.i ], [ %bestj.01382.i, %if.then460.i ]
  %bcostrd.4.i = phi i64 [ %bcostrd.11385.i, %lor.lhs.false448.i ], [ %spec.select1148.i, %if.end596.i ], [ %bcostrd.11385.i, %if.then460.i ]
  %bcost.3.i = phi i32 [ %bcost.11386.i, %lor.lhs.false448.i ], [ %cond530.i, %if.end596.i ], [ %bcost.11386.i, %if.then460.i ]
  %inc613.i = add nuw nsw i32 %j423.01383.i, 1
  %exitcond.i = icmp eq i32 %inc613.i, 33
  br i1 %exitcond.i, label %for.cond.cleanup429.i, label %for.body430.i

for.inc642.i:                                     ; preds = %for.cond.cleanup429.i
  %arrayidx618.i = getelementptr inbounds [33 x [4 x i8]], [33 x [4 x i8]]* @me_refine_bidir.dia4d, i32 0, i32 %bestj.3.i
  %arrayidx619.i = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx618.i, i32 0, i32 0
  %91 = load i8, i8* %arrayidx619.i, align 4, !tbaa !50
  %conv620.i = sext i8 %91 to i32
  %add621.i = add nsw i32 %bm0x.01395.i, %conv620.i
  %arrayidx623.i = getelementptr inbounds [33 x [4 x i8]], [33 x [4 x i8]]* @me_refine_bidir.dia4d, i32 0, i32 %bestj.3.i, i32 1
  %92 = load i8, i8* %arrayidx623.i, align 1, !tbaa !50
  %conv624.i = sext i8 %92 to i32
  %add625.i = add nsw i32 %bm0y.01394.i, %conv624.i
  %arrayidx627.i = getelementptr inbounds [33 x [4 x i8]], [33 x [4 x i8]]* @me_refine_bidir.dia4d, i32 0, i32 %bestj.3.i, i32 2
  %93 = load i8, i8* %arrayidx627.i, align 2, !tbaa !50
  %conv628.i = sext i8 %93 to i32
  %add629.i = add nsw i32 %bm1x.01393.i, %conv628.i
  %arrayidx631.i = getelementptr inbounds [33 x [4 x i8]], [33 x [4 x i8]]* @me_refine_bidir.dia4d, i32 0, i32 %bestj.3.i, i32 3
  %94 = load i8, i8* %arrayidx631.i, align 1, !tbaa !50
  %conv632.i = sext i8 %94 to i32
  %add633.i = add nsw i32 %bm1y.01392.i, %conv632.i
  %i636.i = bitcast [4 x i8]* %arrayidx618.i to i16*
  %95 = load i16, i16* %i636.i, align 4, !tbaa !50
  %conv637.i = zext i16 %95 to i32
  %i640.i = bitcast i8* %arrayidx627.i to i16*
  %96 = load i16, i16* %i640.i, align 2, !tbaa !50
  %conv641.i = zext i16 %96 to i32
  %inc643.i = add nuw nsw i32 %pass.01387.i, 1
  %exitcond1398.i = icmp eq i32 %inc643.i, 8
  br i1 %exitcond1398.i, label %cleanup644.i, label %for.body.i

cleanup644.i:                                     ; preds = %for.inc642.i, %for.cond.cleanup429.i
  %bm1y.0.lcssa.i = phi i32 [ %bm1y.01392.i, %for.cond.cleanup429.i ], [ %add633.i, %for.inc642.i ]
  %bm1x.0.lcssa.i = phi i32 [ %bm1x.01393.i, %for.cond.cleanup429.i ], [ %add629.i, %for.inc642.i ]
  %bm0y.0.lcssa.i = phi i32 [ %bm0y.01394.i, %for.cond.cleanup429.i ], [ %add625.i, %for.inc642.i ]
  %bm0x.0.lcssa.i = phi i32 [ %bm0x.01395.i, %for.cond.cleanup429.i ], [ %add621.i, %for.inc642.i ]
  %97 = lshr i32 %conv.i, 2
  %98 = lshr i32 %conv14.i, 2
  %mul649.i = shl i32 %i8, 3
  %add.i1161.i = or i32 %mul.i, %mul649.i
  %add2.i1163.i = or i32 %add.i1161.i, 12
  %arrayidx3.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 0, i32 %add2.i1163.i
  %99 = bitcast [2 x i16]* %arrayidx3.i.i to i8*
  %and.i1158.i = and i32 %bm0x.0.lcssa.i, 65535
  %shl.i1159.i = shl i32 %bm0y.0.lcssa.i, 16
  %add.i1160.i = or i32 %and.i1158.i, %shl.i1159.i
  %shl.i1165.i = shl nuw nsw i32 %98, 1
  %add4.i1166.i = add nsw i32 %97, -3
  %sub.i1167.i = add nsw i32 %add4.i1166.i, %shl.i1165.i
  %arrayidx5.i1168.i = getelementptr inbounds [10 x void (i8*, i32)*], [10 x void (i8*, i32)*]* @x264_8_cache_mv_func_table, i32 0, i32 %sub.i1167.i
  %100 = load void (i8*, i32)*, void (i8*, i32)** %arrayidx5.i1168.i, align 4, !tbaa !42
  call void %100(i8* nonnull %99, i32 %add.i1160.i) #3
  %101 = load i16, i16* %arrayidx166.i, align 4, !tbaa !44
  %conv655.i = sext i16 %101 to i32
  %sub656.i = sub nsw i32 %bm0x.0.lcssa.i, %conv655.i
  %102 = icmp slt i32 %sub656.i, 0
  %neg.i = sub nsw i32 0, %sub656.i
  %103 = select i1 %102, i32 %neg.i, i32 %sub656.i
  %104 = load i16, i16* %arrayidx170.i, align 2, !tbaa !44
  %conv671.i = sext i16 %104 to i32
  %sub672.i = sub nsw i32 %bm0y.0.lcssa.i, %conv671.i
  %105 = icmp slt i32 %sub672.i, 0
  %neg1141.i = sub nsw i32 0, %sub672.i
  %106 = select i1 %105, i32 %neg1141.i, i32 %sub672.i
  %107 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 %add2.i1163.i, i32 0
  %cmp674.i = icmp slt i32 %106, 33
  %cond684.i = select i1 %cmp674.i, i32 %106, i32 33
  %shl.i1211.i = shl nuw nsw i32 %cond684.i, 8
  %cmp658.i = icmp slt i32 %103, 33
  %spec.select1151.i = select i1 %cmp658.i, i32 %103, i32 33
  %add.i1212.i = or i32 %shl.i1211.i, %spec.select1151.i
  %shl.i1217.i = shl nuw nsw i32 %98, 1
  %add4.i1218.i = add nsw i32 %97, -3
  %sub.i1219.i = add nsw i32 %add4.i1218.i, %shl.i1217.i
  %arrayidx5.i1220.i = getelementptr inbounds [10 x void (i8*, i32)*], [10 x void (i8*, i32)*]* @x264_8_cache_mvd_func_table, i32 0, i32 %sub.i1219.i
  %108 = load void (i8*, i32)*, void (i8*, i32)** %arrayidx5.i1220.i, align 4, !tbaa !42
  call void %108(i8* nonnull %107, i32 %add.i1212.i) #3
  %arrayidx3.i1295.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 1, i32 %add2.i1163.i
  %109 = bitcast [2 x i16]* %arrayidx3.i1295.i to i8*
  %and.i1289.i = and i32 %bm1x.0.lcssa.i, 65535
  %shl.i1290.i = shl i32 %bm1y.0.lcssa.i, 16
  %add.i1291.i = or i32 %and.i1289.i, %shl.i1290.i
  %shl.i1297.i = shl nuw nsw i32 %98, 1
  %add4.i1298.i = add nsw i32 %97, -3
  %sub.i1299.i = add nsw i32 %add4.i1298.i, %shl.i1297.i
  %arrayidx5.i1300.i = getelementptr inbounds [10 x void (i8*, i32)*], [10 x void (i8*, i32)*]* @x264_8_cache_mv_func_table, i32 0, i32 %sub.i1299.i
  %110 = load void (i8*, i32)*, void (i8*, i32)** %arrayidx5.i1300.i, align 4, !tbaa !42
  call void %110(i8* nonnull %109, i32 %add.i1291.i) #3
  %111 = load i16, i16* %arrayidx176.i, align 4, !tbaa !44
  %conv698.i = sext i16 %111 to i32
  %sub699.i = sub nsw i32 %bm1x.0.lcssa.i, %conv698.i
  %112 = icmp slt i32 %sub699.i, 0
  %neg1142.i = sub nsw i32 0, %sub699.i
  %113 = select i1 %112, i32 %neg1142.i, i32 %sub699.i
  %114 = load i16, i16* %arrayidx182.i, align 2, !tbaa !44
  %conv714.i = sext i16 %114 to i32
  %sub715.i = sub nsw i32 %bm1y.0.lcssa.i, %conv714.i
  %115 = icmp slt i32 %sub715.i, 0
  %neg1143.i = sub nsw i32 0, %sub715.i
  %116 = select i1 %115, i32 %neg1143.i, i32 %sub715.i
  %117 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 %add2.i1163.i, i32 0
  %cmp717.i = icmp slt i32 %116, 33
  %cond727.i = select i1 %cmp717.i, i32 %116, i32 33
  %shl.i1354.i = shl nuw nsw i32 %cond727.i, 8
  %cmp701.i = icmp slt i32 %113, 33
  %spec.select1152.i = select i1 %cmp701.i, i32 %113, i32 33
  %add.i1355.i = or i32 %shl.i1354.i, %spec.select1152.i
  %shl.i1154.i = shl nuw nsw i32 %98, 1
  %add4.i.i = add nsw i32 %97, -3
  %sub.i.i = add nsw i32 %add4.i.i, %shl.i1154.i
  %arrayidx5.i.i = getelementptr inbounds [10 x void (i8*, i32)*], [10 x void (i8*, i32)*]* @x264_8_cache_mvd_func_table, i32 0, i32 %sub.i.i
  %118 = load void (i8*, i32)*, void (i8*, i32)** %arrayidx5.i.i, align 4, !tbaa !42
  call void %118(i8* nonnull %117, i32 %add.i1355.i) #3
  %conv735.i = trunc i32 %bm0x.0.lcssa.i to i16
  store i16 %conv735.i, i16* %arrayidx88.i, align 16, !tbaa !44
  %conv738.i = trunc i32 %bm0y.0.lcssa.i to i16
  store i16 %conv738.i, i16* %arrayidx91.i, align 2, !tbaa !44
  %conv741.i = trunc i32 %bm1x.0.lcssa.i to i16
  store i16 %conv741.i, i16* %arrayidx94.i, align 16, !tbaa !44
  %conv744.i = trunc i32 %bm1y.0.lcssa.i to i16
  store i16 %conv744.i, i16* %arrayidx97.i, align 2, !tbaa !44
  br label %me_refine_bidir.exit

me_refine_bidir.exit:                             ; preds = %cond.end85.i, %lor.lhs.false109.i, %lor.lhs.false122.i, %lor.lhs.false136.i, %cleanup644.i
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %19) #3
  call void @llvm.lifetime.end.p0i8(i64 216, i8* nonnull %14) #3
  call void @llvm.lifetime.end.p0i8(i64 216, i8* nonnull %6) #3
  call void @llvm.lifetime.end.p0i8(i64 4608, i8* nonnull %5) #3
  call void @llvm.lifetime.end.p0i8(i64 4608, i8* nonnull %4) #3
  call void @llvm.lifetime.end.p0i8(i64 4608, i8* nonnull %3) #3
  store i32 0, i32* %b_skip_mc, align 4, !tbaa !72
  ret void
}

; Function Attrs: nounwind
define hidden void @x264_8_me_refine_qpel_rd(%struct.x264_t* %h, %struct.x264_me_t* %m, i32 %i_lambda2, i32 %i4, i32 %i_list) local_unnamed_addr #0 {
entry:
  %arrayidx1 = getelementptr inbounds [51 x i8], [51 x i8]* @x264_scan8, i32 0, i32 %i4
  %0 = load i8, i8* %arrayidx1, align 1, !tbaa !50
  %idxprom = zext i8 %0 to i32
  %arraydecay = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 %i_list, i32 %idxprom, i32 0
  %i_pixel = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 0
  %1 = load i32, i32* %i_pixel, align 64, !tbaa !2
  %w = getelementptr inbounds [12 x %struct.anon.18], [12 x %struct.anon.18]* @x264_pixel_size, i32 0, i32 %1, i32 0
  %2 = load i8, i8* %w, align 1, !tbaa !8
  %conv = zext i8 %2 to i32
  %h6 = getelementptr inbounds [12 x %struct.anon.18], [12 x %struct.anon.18]* @x264_pixel_size, i32 0, i32 %1, i32 1
  %3 = load i8, i8* %h6, align 1, !tbaa !10
  %conv7 = zext i8 %3 to i32
  %chroma_v_shift11 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 4
  %4 = load i32, i32* %chroma_v_shift11, align 16, !tbaa !65
  %arrayidx16 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 13, i32 0
  %5 = load i16, i16* %arrayidx16, align 16, !tbaa !44
  %conv17 = sext i16 %5 to i32
  %arrayidx19 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 13, i32 1
  %6 = load i16, i16* %arrayidx19, align 2, !tbaa !44
  %conv20 = sext i16 %6 to i32
  %arrayidx22 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 16, i32 0
  %7 = load i8*, i8** %arrayidx22, align 8, !tbaa !42
  %arrayidx23 = getelementptr inbounds [16 x i16], [16 x i16]* @block_idx_xy_fdec, i32 0, i32 %i4
  %8 = load i16, i16* %arrayidx23, align 2, !tbaa !44
  %idxprom24 = zext i16 %8 to i32
  %arrayidx25 = getelementptr inbounds i8, i8* %7, i32 %idxprom24
  %i_chroma_format_idc = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 22
  %9 = load i32, i32* %i_chroma_format_idc, align 8, !tbaa !61
  switch i32 %9, label %if.then46 [
    i32 3, label %if.then
    i32 0, label %if.end69
  ]

if.then:                                          ; preds = %entry
  %arrayidx31 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 16, i32 1
  %10 = load i8*, i8** %arrayidx31, align 4, !tbaa !42
  %arrayidx34 = getelementptr inbounds i8, i8* %10, i32 %idxprom24
  br label %if.end69.sink.split

if.then46:                                        ; preds = %entry
  %arrayidx50 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 16, i32 1
  %11 = load i8*, i8** %arrayidx50, align 4, !tbaa !42
  %shr51 = ashr i32 %i4, 3
  %shr52 = lshr i32 256, %4
  %mul53 = mul nsw i32 %shr52, %shr51
  %and54 = and i32 %i4, 4
  %add = add nsw i32 %mul53, %and54
  %arrayidx56 = getelementptr inbounds i8, i8* %11, i32 %add
  br label %if.end69.sink.split

if.end69.sink.split:                              ; preds = %if.then, %if.then46
  %add.sink = phi i32 [ %add, %if.then46 ], [ %idxprom24, %if.then ]
  %pixu.0.ph = phi i8* [ %arrayidx56, %if.then46 ], [ %arrayidx34, %if.then ]
  %arrayidx60 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 16, i32 2
  %12 = load i8*, i8** %arrayidx60, align 8, !tbaa !42
  %arrayidx67 = getelementptr inbounds i8, i8* %12, i32 %add.sink
  br label %if.end69

if.end69:                                         ; preds = %if.end69.sink.split, %entry
  %pixu.0 = phi i8* [ null, %entry ], [ %pixu.0.ph, %if.end69.sink.split ]
  %pixv.0 = phi i8* [ null, %entry ], [ %arrayidx67, %if.end69.sink.split ]
  %b_skip_mc = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 85
  store i32 1, i32* %b_skip_mc, align 4, !tbaa !72
  %cmp72 = icmp ne i32 %1, 0
  %cmp74 = icmp ne i32 %i4, 0
  %or.cond = and i1 %cmp74, %cmp72
  br i1 %or.cond, label %if.then76, label %if.end79

if.then76:                                        ; preds = %if.end69
  %13 = lshr i32 %conv, 2
  %arraydecay78 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 10, i32 0
  tail call void @x264_8_mb_predict_mv(%struct.x264_t* nonnull %h, i32 %i_list, i32 %i4, i32 %13, i16* nonnull %arraydecay78) #3
  br label %if.end79

if.end79:                                         ; preds = %if.then76, %if.end69
  %arrayidx81 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 10, i32 0
  %14 = load i16, i16* %arrayidx81, align 4, !tbaa !44
  %conv82 = sext i16 %14 to i32
  %arrayidx84 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 10, i32 1
  %15 = load i16, i16* %arrayidx84, align 2, !tbaa !44
  %conv85 = sext i16 %15 to i32
  %p_cost_mv = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 1
  %16 = load i16*, i16** %p_cost_mv, align 4, !tbaa !46
  %idx.neg = sub nsw i32 0, %conv82
  %add.ptr = getelementptr inbounds i16, i16* %16, i32 %idx.neg
  %idx.neg87 = sub nsw i32 0, %conv85
  %add.ptr88 = getelementptr inbounds i16, i16* %16, i32 %idx.neg87
  %mc_luma = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 93, i32 0
  %17 = load void (i8*, i32, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)*, void (i8*, i32, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)** %mc_luma, align 32, !tbaa !69
  %arraydecay89 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 5, i32 0
  %arrayidx90 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 9, i32 0
  %18 = load i32, i32* %arrayidx90, align 8, !tbaa !11
  %weight = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 4
  %19 = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight, align 16, !tbaa !49
  tail call void %17(i8* %arrayidx25, i32 32, i8** nonnull %arraydecay89, i32 %18, i32 %conv17, i32 %conv20, i32 %conv, i32 %conv7, %struct.x264_weight_t* %19) #3
  %arrayidx92 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 92, i32 5, i32 %1
  %20 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx92, align 4, !tbaa !42
  %arrayidx93 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 7, i32 0
  %21 = load i8*, i8** %arrayidx93, align 8, !tbaa !42
  %call = tail call i32 %20(i8* %21, i32 16, i8* %arrayidx25, i32 32) #3
  %arrayidx94 = getelementptr inbounds i16, i16* %add.ptr, i32 %conv17
  %22 = load i16, i16* %arrayidx94, align 2, !tbaa !44
  %conv95 = zext i16 %22 to i32
  %add96 = add nsw i32 %call, %conv95
  %arrayidx97 = getelementptr inbounds i16, i16* %add.ptr88, i32 %conv20
  %23 = load i16, i16* %arrayidx97, align 2, !tbaa !44
  %conv98 = zext i16 %23 to i32
  %add99 = add nsw i32 %add96, %conv98
  %24 = load i32, i32* %i_pixel, align 64, !tbaa !2
  %cmp105 = icmp eq i32 %24, 0
  br i1 %cmp105, label %if.else192, label %if.then107

if.then107:                                       ; preds = %if.end79
  %shr108 = ashr i32 %add99, 4
  %add109 = add nsw i32 %shr108, %add99
  %cmp110 = icmp sgt i32 %add109, -1
  br i1 %cmp110, label %if.then112, label %if.end195

if.then112:                                       ; preds = %if.then107
  %and.i = and i32 %conv17, 65535
  %shl.i = shl nsw i32 %conv20, 16
  %add.i = or i32 %shl.i, %and.i
  %i = bitcast i16* %arraydecay to i32*
  store i32 %add.i, i32* %i, align 4, !tbaa !50
  %25 = load i32, i32* %i_chroma_format_idc, align 8, !tbaa !61
  switch i32 %25, label %land.lhs.true141 [
    i32 3, label %if.then119
    i32 0, label %if.end184
  ]

if.then119:                                       ; preds = %if.then112
  %26 = load void (i8*, i32, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)*, void (i8*, i32, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)** %mc_luma, align 32, !tbaa !69
  %arrayidx123 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 5, i32 4
  %arrayidx125 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 9, i32 1
  %27 = load i32, i32* %arrayidx125, align 4, !tbaa !11
  %28 = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight, align 16, !tbaa !49
  %arrayidx127 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %28, i32 1
  tail call void %26(i8* %pixu.0, i32 32, i8** nonnull %arrayidx123, i32 %27, i32 %conv17, i32 %conv20, i32 %conv, i32 %conv7, %struct.x264_weight_t* nonnull %arrayidx127) #3
  %29 = load void (i8*, i32, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)*, void (i8*, i32, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)** %mc_luma, align 32, !tbaa !69
  %arrayidx131 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 5, i32 8
  %arrayidx133 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 9, i32 2
  %30 = load i32, i32* %arrayidx133, align 8, !tbaa !11
  %31 = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight, align 16, !tbaa !49
  %arrayidx135 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %31, i32 2
  tail call void %29(i8* %pixv.0, i32 32, i8** nonnull %arrayidx131, i32 %30, i32 %conv17, i32 %conv20, i32 %conv, i32 %conv7, %struct.x264_weight_t* nonnull %arrayidx135) #3
  br label %if.end184

land.lhs.true141:                                 ; preds = %if.then112
  %32 = load i32, i32* %i_pixel, align 64, !tbaa !2
  %cmp143 = icmp slt i32 %32, 4
  br i1 %cmp143, label %if.then145, label %if.end184

if.then145:                                       ; preds = %land.lhs.true141
  %mc_chroma = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 93, i32 2
  %33 = load void (i8*, i8*, i32, i8*, i32, i32, i32, i32, i32)*, void (i8*, i8*, i32, i8*, i32, i32, i32, i32, i32)** %mc_chroma, align 8, !tbaa !66
  %arrayidx148 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 5, i32 4
  %34 = load i8*, i8** %arrayidx148, align 4, !tbaa !42
  %arrayidx150 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 9, i32 1
  %35 = load i32, i32* %arrayidx150, align 4, !tbaa !11
  %mul152 = shl nsw i32 %conv20, 1
  %shr153 = ashr i32 %mul152, %4
  %36 = lshr i32 %conv, 1
  %shr155 = lshr i32 %conv7, %4
  tail call void %33(i8* %pixu.0, i8* %pixv.0, i32 32, i8* %34, i32 %35, i32 %conv17, i32 %shr153, i32 %36, i32 %shr155) #3
  %37 = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight, align 16, !tbaa !49
  %weightfn = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %37, i32 1, i32 5
  %38 = load void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)**, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*** %weightfn, align 4, !tbaa !67
  %tobool158 = icmp eq void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %38, null
  br i1 %tobool158, label %if.end168, label %if.then159

if.then159:                                       ; preds = %if.then145
  %arrayidx157 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %37, i32 1
  %39 = lshr i32 %conv, 3
  %arrayidx164 = getelementptr inbounds void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %38, i32 %39
  %40 = load void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %arrayidx164, align 4, !tbaa !42
  tail call void %40(i8* %pixu.0, i32 32, i8* %pixu.0, i32 32, %struct.x264_weight_t* nonnull %arrayidx157, i32 %shr155) #3
  %.pre = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight, align 16, !tbaa !49
  br label %if.end168

if.end168:                                        ; preds = %if.then145, %if.then159
  %41 = phi %struct.x264_weight_t* [ %37, %if.then145 ], [ %.pre, %if.then159 ]
  %weightfn171 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %41, i32 2, i32 5
  %42 = load void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)**, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*** %weightfn171, align 4, !tbaa !67
  %tobool172 = icmp eq void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %42, null
  br i1 %tobool172, label %if.end184, label %if.then173

if.then173:                                       ; preds = %if.end168
  %arrayidx170 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %41, i32 2
  %43 = lshr i32 %conv, 3
  %arrayidx178 = getelementptr inbounds void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %42, i32 %43
  %44 = load void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %arrayidx178, align 4, !tbaa !42
  tail call void %44(i8* %pixv.0, i32 32, i8* %pixv.0, i32 32, %struct.x264_weight_t* nonnull %arrayidx170, i32 %shr155) #3
  br label %if.end184

if.end184:                                        ; preds = %if.then112, %if.end168, %land.lhs.true141, %if.then173, %if.then119
  %45 = load i32, i32* %i_pixel, align 64, !tbaa !2
  %call186 = tail call i64 @x264_8_rd_cost_part(%struct.x264_t* nonnull %h, i32 %i_lambda2, i32 %i4, i32 %45) #3
  %cmp187 = icmp ult i64 %call186, 1152921504606846976
  %spec.select = select i1 %cmp187, i64 %call186, i64 1152921504606846976
  br label %if.end195

if.else192:                                       ; preds = %if.end79
  %cost193 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 12
  %46 = load i32, i32* %cost193, align 4, !tbaa !59
  %conv194 = sext i32 %46 to i64
  br label %if.end195

if.end195:                                        ; preds = %if.then107, %if.end184, %if.else192
  %bcost.1 = phi i64 [ %spec.select, %if.end184 ], [ 1152921504606846976, %if.then107 ], [ %conv194, %if.else192 ]
  %cmp196 = icmp eq i16 %5, %14
  %cmp198 = icmp eq i16 %6, %15
  %or.cond1752 = and i1 %cmp196, %cmp198
  br i1 %or.cond1752, label %if.end348, label %land.lhs.true200

land.lhs.true200:                                 ; preds = %if.end195
  %arrayidx202 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 29, i32 0
  %47 = load i32, i32* %arrayidx202, align 4, !tbaa !11
  %cmp203 = icmp sgt i32 %47, %conv82
  br i1 %cmp203, label %if.end348, label %land.lhs.true205

land.lhs.true205:                                 ; preds = %land.lhs.true200
  %arrayidx207 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 30, i32 0
  %48 = load i32, i32* %arrayidx207, align 4, !tbaa !11
  %cmp208 = icmp slt i32 %48, %conv82
  br i1 %cmp208, label %if.end348, label %land.lhs.true210

land.lhs.true210:                                 ; preds = %land.lhs.true205
  %arrayidx213 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 29, i32 1
  %49 = load i32, i32* %arrayidx213, align 4, !tbaa !11
  %cmp214 = icmp sgt i32 %49, %conv85
  br i1 %cmp214, label %if.end348, label %land.lhs.true216

land.lhs.true216:                                 ; preds = %land.lhs.true210
  %arrayidx219 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 30, i32 1
  %50 = load i32, i32* %arrayidx219, align 4, !tbaa !11
  %cmp220 = icmp slt i32 %50, %conv85
  br i1 %cmp220, label %if.end348, label %if.then222

if.then222:                                       ; preds = %land.lhs.true216
  %51 = load void (i8*, i32, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)*, void (i8*, i32, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)** %mc_luma, align 32, !tbaa !69
  %52 = load i32, i32* %arrayidx90, align 8, !tbaa !11
  %53 = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight, align 16, !tbaa !49
  tail call void %51(i8* %arrayidx25, i32 32, i8** nonnull %arraydecay89, i32 %52, i32 %conv82, i32 %conv85, i32 %conv, i32 %conv7, %struct.x264_weight_t* %53) #3
  %54 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx92, align 4, !tbaa !42
  %55 = load i8*, i8** %arrayidx93, align 8, !tbaa !42
  %call236 = tail call i32 %54(i8* %55, i32 16, i8* %arrayidx25, i32 32) #3
  %56 = load i16, i16* %16, align 2, !tbaa !44
  %conv238 = zext i16 %56 to i32
  %factor = shl nuw nsw i32 %conv238, 1
  %add242 = add i32 %factor, %call236
  %cmp243 = icmp slt i32 %add242, %add99
  %spec.select1753 = select i1 %cmp243, i32 %add242, i32 %add99
  %shr247 = ashr i32 %spec.select1753, 4
  %add248 = add nsw i32 %shr247, %spec.select1753
  %cmp249 = icmp sgt i32 %add242, %add248
  br i1 %cmp249, label %if.end334, label %if.then251

if.then251:                                       ; preds = %if.then222
  %and.i1762 = and i32 %conv82, 65535
  %shl.i1763 = shl nsw i32 %conv85, 16
  %add.i1764 = or i32 %shl.i1763, %and.i1762
  %i254 = bitcast i16* %arraydecay to i32*
  store i32 %add.i1764, i32* %i254, align 4, !tbaa !50
  %57 = load i32, i32* %i_chroma_format_idc, align 8, !tbaa !61
  switch i32 %57, label %land.lhs.true282 [
    i32 3, label %if.then260
    i32 0, label %if.end327
  ]

if.then260:                                       ; preds = %if.then251
  %58 = load void (i8*, i32, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)*, void (i8*, i32, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)** %mc_luma, align 32, !tbaa !69
  %arrayidx264 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 5, i32 4
  %arrayidx266 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 9, i32 1
  %59 = load i32, i32* %arrayidx266, align 4, !tbaa !11
  %60 = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight, align 16, !tbaa !49
  %arrayidx268 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %60, i32 1
  tail call void %58(i8* %pixu.0, i32 32, i8** nonnull %arrayidx264, i32 %59, i32 %conv82, i32 %conv85, i32 %conv, i32 %conv7, %struct.x264_weight_t* nonnull %arrayidx268) #3
  %61 = load void (i8*, i32, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)*, void (i8*, i32, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)** %mc_luma, align 32, !tbaa !69
  %arrayidx272 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 5, i32 8
  %arrayidx274 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 9, i32 2
  %62 = load i32, i32* %arrayidx274, align 8, !tbaa !11
  %63 = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight, align 16, !tbaa !49
  %arrayidx276 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %63, i32 2
  tail call void %61(i8* %pixv.0, i32 32, i8** nonnull %arrayidx272, i32 %62, i32 %conv82, i32 %conv85, i32 %conv, i32 %conv7, %struct.x264_weight_t* nonnull %arrayidx276) #3
  br label %if.end327

land.lhs.true282:                                 ; preds = %if.then251
  %64 = load i32, i32* %i_pixel, align 64, !tbaa !2
  %cmp284 = icmp slt i32 %64, 4
  br i1 %cmp284, label %if.then286, label %if.end327

if.then286:                                       ; preds = %land.lhs.true282
  %mc_chroma288 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 93, i32 2
  %65 = load void (i8*, i8*, i32, i8*, i32, i32, i32, i32, i32)*, void (i8*, i8*, i32, i8*, i32, i32, i32, i32, i32)** %mc_chroma288, align 8, !tbaa !66
  %arrayidx290 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 5, i32 4
  %66 = load i8*, i8** %arrayidx290, align 4, !tbaa !42
  %arrayidx292 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 9, i32 1
  %67 = load i32, i32* %arrayidx292, align 4, !tbaa !11
  %mul294 = shl nsw i32 %conv85, 1
  %shr295 = ashr i32 %mul294, %4
  %68 = lshr i32 %conv, 1
  %shr297 = lshr i32 %conv7, %4
  tail call void %65(i8* %pixu.0, i8* %pixv.0, i32 32, i8* %66, i32 %67, i32 %conv82, i32 %shr295, i32 %68, i32 %shr297) #3
  %69 = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight, align 16, !tbaa !49
  %weightfn300 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %69, i32 1, i32 5
  %70 = load void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)**, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*** %weightfn300, align 4, !tbaa !67
  %tobool301 = icmp eq void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %70, null
  br i1 %tobool301, label %if.end311, label %if.then302

if.then302:                                       ; preds = %if.then286
  %arrayidx299 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %69, i32 1
  %71 = lshr i32 %conv, 3
  %arrayidx307 = getelementptr inbounds void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %70, i32 %71
  %72 = load void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %arrayidx307, align 4, !tbaa !42
  tail call void %72(i8* %pixu.0, i32 32, i8* %pixu.0, i32 32, %struct.x264_weight_t* nonnull %arrayidx299, i32 %shr297) #3
  %.pre1874 = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight, align 16, !tbaa !49
  br label %if.end311

if.end311:                                        ; preds = %if.then286, %if.then302
  %73 = phi %struct.x264_weight_t* [ %69, %if.then286 ], [ %.pre1874, %if.then302 ]
  %weightfn314 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %73, i32 2, i32 5
  %74 = load void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)**, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*** %weightfn314, align 4, !tbaa !67
  %tobool315 = icmp eq void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %74, null
  br i1 %tobool315, label %if.end327, label %if.then316

if.then316:                                       ; preds = %if.end311
  %arrayidx313 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %73, i32 2
  %75 = lshr i32 %conv, 3
  %arrayidx321 = getelementptr inbounds void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %74, i32 %75
  %76 = load void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %arrayidx321, align 4, !tbaa !42
  tail call void %76(i8* %pixv.0, i32 32, i8* %pixv.0, i32 32, %struct.x264_weight_t* nonnull %arrayidx313, i32 %shr297) #3
  br label %if.end327

if.end327:                                        ; preds = %if.then251, %if.end311, %land.lhs.true282, %if.then316, %if.then260
  %77 = load i32, i32* %i_pixel, align 64, !tbaa !2
  %call329 = tail call i64 @x264_8_rd_cost_part(%struct.x264_t* nonnull %h, i32 %i_lambda2, i32 %i4, i32 %77) #3
  %cmp330 = icmp ult i64 %call329, %bcost.1
  %spec.select1754 = select i1 %cmp330, i32 %conv85, i32 %conv20
  %spec.select1755 = select i1 %cmp330, i32 %conv82, i32 %conv17
  %spec.select1756 = select i1 %cmp330, i64 %call329, i64 %bcost.1
  br label %if.end334

if.end334:                                        ; preds = %if.then222, %if.end327
  %bmy.3 = phi i32 [ %spec.select1754, %if.end327 ], [ %conv20, %if.then222 ]
  %bmx.3 = phi i32 [ %spec.select1755, %if.end327 ], [ %conv17, %if.then222 ]
  %bcost.3 = phi i64 [ %spec.select1756, %if.end327 ], [ %bcost.1, %if.then222 ]
  %cmp335 = icmp eq i32 %bmx.3, %conv82
  %cmp338 = icmp eq i32 %bmy.3, %conv85
  %or.cond1757 = and i1 %cmp338, %cmp335
  br i1 %or.cond1757, label %if.then340, label %if.end348

if.then340:                                       ; preds = %if.end334
  %78 = load i16, i16* %arrayidx16, align 16, !tbaa !44
  %conv343 = sext i16 %78 to i32
  %79 = load i16, i16* %arrayidx19, align 2, !tbaa !44
  %conv346 = sext i16 %79 to i32
  br label %if.end348

if.end348:                                        ; preds = %if.end195, %land.lhs.true216, %land.lhs.true210, %land.lhs.true205, %land.lhs.true200, %if.end334, %if.then340
  %bsatd.2 = phi i32 [ %spec.select1753, %if.then340 ], [ %spec.select1753, %if.end334 ], [ %add99, %land.lhs.true216 ], [ %add99, %land.lhs.true210 ], [ %add99, %land.lhs.true205 ], [ %add99, %land.lhs.true200 ], [ %add99, %if.end195 ]
  %pmy.0 = phi i32 [ %conv346, %if.then340 ], [ %conv85, %if.end334 ], [ %conv85, %land.lhs.true216 ], [ %conv85, %land.lhs.true210 ], [ %conv85, %land.lhs.true205 ], [ %conv85, %land.lhs.true200 ], [ %conv85, %if.end195 ]
  %pmx.0 = phi i32 [ %conv343, %if.then340 ], [ %conv82, %if.end334 ], [ %conv82, %land.lhs.true216 ], [ %conv82, %land.lhs.true210 ], [ %conv82, %land.lhs.true205 ], [ %conv82, %land.lhs.true200 ], [ %conv82, %if.end195 ]
  %bmy.4 = phi i32 [ %conv85, %if.then340 ], [ %bmy.3, %if.end334 ], [ %conv20, %land.lhs.true216 ], [ %conv20, %land.lhs.true210 ], [ %conv20, %land.lhs.true205 ], [ %conv20, %land.lhs.true200 ], [ %conv20, %if.end195 ]
  %bmx.4 = phi i32 [ %conv82, %if.then340 ], [ %bmx.3, %if.end334 ], [ %conv17, %land.lhs.true216 ], [ %conv17, %land.lhs.true210 ], [ %conv17, %land.lhs.true205 ], [ %conv17, %land.lhs.true200 ], [ %conv17, %if.end195 ]
  %bcost.4 = phi i64 [ %bcost.3, %if.then340 ], [ %bcost.3, %if.end334 ], [ %bcost.1, %land.lhs.true216 ], [ %bcost.1, %land.lhs.true210 ], [ %bcost.1, %land.lhs.true205 ], [ %bcost.1, %land.lhs.true200 ], [ %bcost.1, %if.end195 ]
  %arrayidx351 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 29, i32 1
  %80 = load i32, i32* %arrayidx351, align 4, !tbaa !11
  %add352 = add nsw i32 %80, 3
  %cmp353 = icmp slt i32 %bmy.4, %add352
  br i1 %cmp353, label %cleanup1096, label %lor.lhs.false355

lor.lhs.false355:                                 ; preds = %if.end348
  %arrayidx358 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 30, i32 1
  %81 = load i32, i32* %arrayidx358, align 4, !tbaa !11
  %sub359 = add nsw i32 %81, -3
  %cmp360 = icmp sgt i32 %bmy.4, %sub359
  br i1 %cmp360, label %cleanup1096, label %lor.lhs.false362

lor.lhs.false362:                                 ; preds = %lor.lhs.false355
  %arrayidx365 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 29, i32 0
  %82 = load i32, i32* %arrayidx365, align 4, !tbaa !11
  %add366 = add nsw i32 %82, 3
  %cmp367 = icmp slt i32 %bmx.4, %add366
  br i1 %cmp367, label %cleanup1096, label %lor.lhs.false369

lor.lhs.false369:                                 ; preds = %lor.lhs.false362
  %arrayidx372 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 30, i32 0
  %83 = load i32, i32* %arrayidx372, align 4, !tbaa !11
  %sub373 = add nsw i32 %83, -3
  %cmp374 = icmp sgt i32 %bmx.4, %sub373
  br i1 %cmp374, label %cleanup1096, label %for.cond.preheader

for.cond.preheader:                               ; preds = %lor.lhs.false369
  %i461 = bitcast i16* %arraydecay to i32*
  %arrayidx471 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 5, i32 4
  %arrayidx473 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 9, i32 1
  %arrayidx489 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 5, i32 8
  %arrayidx491 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 9, i32 2
  %mc_chroma515 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 93, i32 2
  %84 = lshr i32 %conv, 1
  %shr534 = lshr i32 %conv7, %4
  %85 = lshr i32 %conv, 3
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.inc
  %cmp582 = icmp eq i32 %dir.4, -2
  br i1 %cmp582, label %if.end828, label %for.body590

for.body:                                         ; preds = %for.inc, %for.cond.preheader
  %bcost.51870 = phi i64 [ %bcost.4, %for.cond.preheader ], [ %bcost.7, %for.inc ]
  %bmx.51869 = phi i32 [ %bmx.4, %for.cond.preheader ], [ %bmx.7, %for.inc ]
  %bmy.51868 = phi i32 [ %bmy.4, %for.cond.preheader ], [ %bmy.7, %for.inc ]
  %j.01867 = phi i32 [ 0, %for.cond.preheader ], [ %add382, %for.inc ]
  %bsatd.31865 = phi i32 [ %bsatd.2, %for.cond.preheader ], [ %bsatd.4, %for.inc ]
  %dir.21864 = phi i32 [ -2, %for.cond.preheader ], [ %dir.4, %for.inc ]
  %add382 = add nuw nsw i32 %j.01867, 1
  %arrayidx384 = getelementptr inbounds [8 x [2 x i8]], [8 x [2 x i8]]* @hex2, i32 0, i32 %add382, i32 0
  %86 = load i8, i8* %arrayidx384, align 1, !tbaa !50
  %conv385 = sext i8 %86 to i32
  %add386 = add nsw i32 %bmx.4, %conv385
  %cmp387 = icmp eq i32 %add386, %pmx.0
  %arrayidx392 = getelementptr inbounds [8 x [2 x i8]], [8 x [2 x i8]]* @hex2, i32 0, i32 %add382, i32 1
  %87 = load i8, i8* %arrayidx392, align 1, !tbaa !50
  %conv393 = sext i8 %87 to i32
  %add394 = add nsw i32 %bmy.4, %conv393
  %cmp395 = icmp eq i32 %add394, %pmy.0
  %or.cond1887 = and i1 %cmp387, %cmp395
  br i1 %or.cond1887, label %if.end443, label %if.then397

if.then397:                                       ; preds = %for.body
  %88 = load void (i8*, i32, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)*, void (i8*, i32, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)** %mc_luma, align 32, !tbaa !69
  %89 = load i32, i32* %arrayidx90, align 8, !tbaa !11
  %90 = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight, align 16, !tbaa !49
  tail call void %88(i8* %arrayidx25, i32 32, i8** nonnull %arraydecay89, i32 %89, i32 %add386, i32 %add394, i32 %conv, i32 %conv7, %struct.x264_weight_t* %90) #3
  %91 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx92, align 4, !tbaa !42
  %92 = load i8*, i8** %arrayidx93, align 8, !tbaa !42
  %call421 = tail call i32 %91(i8* %92, i32 16, i8* %arrayidx25, i32 32) #3
  %arrayidx427 = getelementptr inbounds i16, i16* %add.ptr, i32 %add386
  %93 = load i16, i16* %arrayidx427, align 2, !tbaa !44
  %conv428 = zext i16 %93 to i32
  %add429 = add nsw i32 %call421, %conv428
  %arrayidx435 = getelementptr inbounds i16, i16* %add.ptr88, i32 %add394
  %94 = load i16, i16* %arrayidx435, align 2, !tbaa !44
  %conv436 = zext i16 %94 to i32
  %add437 = add nsw i32 %add429, %conv436
  %cmp438 = icmp slt i32 %add437, %bsatd.31865
  %spec.select1758 = select i1 %cmp438, i32 %add437, i32 %bsatd.31865
  br label %if.end443

if.end443:                                        ; preds = %for.body, %if.then397
  %bsatd.4 = phi i32 [ %spec.select1758, %if.then397 ], [ %bsatd.31865, %for.body ]
  %satd.0 = phi i32 [ %add437, %if.then397 ], [ 268435456, %for.body ]
  %shr444 = ashr i32 %bsatd.4, 4
  %add445 = add nsw i32 %shr444, %bsatd.4
  %cmp446 = icmp sgt i32 %satd.0, %add445
  br i1 %cmp446, label %for.inc, label %if.then448

if.then448:                                       ; preds = %if.end443
  %conv458 = sext i8 %87 to i32
  %add459 = add nsw i32 %bmy.4, %conv458
  %and.i1765 = and i32 %add386, 65535
  %shl.i1766 = shl i32 %add459, 16
  %add.i1767 = or i32 %shl.i1766, %and.i1765
  store i32 %add.i1767, i32* %i461, align 4, !tbaa !50
  %95 = load i32, i32* %i_chroma_format_idc, align 8, !tbaa !61
  switch i32 %95, label %land.lhs.true509 [
    i32 3, label %if.then467
    i32 0, label %if.end564
  ]

if.then467:                                       ; preds = %if.then448
  %96 = load void (i8*, i32, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)*, void (i8*, i32, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)** %mc_luma, align 32, !tbaa !69
  %97 = load i32, i32* %arrayidx473, align 4, !tbaa !11
  %98 = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight, align 16, !tbaa !49
  %arrayidx485 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %98, i32 1
  tail call void %96(i8* %pixu.0, i32 32, i8** nonnull %arrayidx471, i32 %97, i32 %add386, i32 %add459, i32 %conv, i32 %conv7, %struct.x264_weight_t* nonnull %arrayidx485) #3
  %99 = load void (i8*, i32, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)*, void (i8*, i32, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)** %mc_luma, align 32, !tbaa !69
  %100 = load i32, i32* %arrayidx491, align 8, !tbaa !11
  %101 = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight, align 16, !tbaa !49
  %arrayidx503 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %101, i32 2
  tail call void %99(i8* %pixv.0, i32 32, i8** nonnull %arrayidx489, i32 %100, i32 %add386, i32 %add459, i32 %conv, i32 %conv7, %struct.x264_weight_t* nonnull %arrayidx503) #3
  br label %if.end564

land.lhs.true509:                                 ; preds = %if.then448
  %102 = load i32, i32* %i_pixel, align 64, !tbaa !2
  %cmp511 = icmp slt i32 %102, 4
  br i1 %cmp511, label %if.then513, label %if.end564

if.then513:                                       ; preds = %land.lhs.true509
  %103 = load void (i8*, i8*, i32, i8*, i32, i32, i32, i32, i32)*, void (i8*, i8*, i32, i8*, i32, i32, i32, i32, i32)** %mc_chroma515, align 8, !tbaa !66
  %104 = load i8*, i8** %arrayidx471, align 4, !tbaa !42
  %105 = load i32, i32* %arrayidx473, align 4, !tbaa !11
  %mul531 = shl nsw i32 %add459, 1
  %shr532 = ashr i32 %mul531, %4
  tail call void %103(i8* %pixu.0, i8* %pixv.0, i32 32, i8* %104, i32 %105, i32 %add386, i32 %shr532, i32 %84, i32 %shr534) #3
  %106 = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight, align 16, !tbaa !49
  %weightfn537 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %106, i32 1, i32 5
  %107 = load void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)**, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*** %weightfn537, align 4, !tbaa !67
  %tobool538 = icmp eq void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %107, null
  br i1 %tobool538, label %if.end548, label %if.then539

if.then539:                                       ; preds = %if.then513
  %arrayidx536 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %106, i32 1
  %arrayidx544 = getelementptr inbounds void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %107, i32 %85
  %108 = load void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %arrayidx544, align 4, !tbaa !42
  tail call void %108(i8* %pixu.0, i32 32, i8* %pixu.0, i32 32, %struct.x264_weight_t* nonnull %arrayidx536, i32 %shr534) #3
  %.pre1876 = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight, align 16, !tbaa !49
  br label %if.end548

if.end548:                                        ; preds = %if.then513, %if.then539
  %109 = phi %struct.x264_weight_t* [ %106, %if.then513 ], [ %.pre1876, %if.then539 ]
  %weightfn551 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %109, i32 2, i32 5
  %110 = load void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)**, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*** %weightfn551, align 4, !tbaa !67
  %tobool552 = icmp eq void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %110, null
  br i1 %tobool552, label %if.end564, label %if.then553

if.then553:                                       ; preds = %if.end548
  %arrayidx550 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %109, i32 2
  %arrayidx558 = getelementptr inbounds void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %110, i32 %85
  %111 = load void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %arrayidx558, align 4, !tbaa !42
  tail call void %111(i8* %pixv.0, i32 32, i8* %pixv.0, i32 32, %struct.x264_weight_t* nonnull %arrayidx550, i32 %shr534) #3
  br label %if.end564

if.end564:                                        ; preds = %if.then448, %if.end548, %land.lhs.true509, %if.then553, %if.then467
  %112 = load i32, i32* %i_pixel, align 64, !tbaa !2
  %call566 = tail call i64 @x264_8_rd_cost_part(%struct.x264_t* nonnull %h, i32 %i_lambda2, i32 %i4, i32 %112) #3
  %cmp567 = icmp ult i64 %call566, %bcost.51870
  %spec.select1837 = select i1 %cmp567, i32 %j.01867, i32 %dir.21864
  %spec.select1838 = select i1 %cmp567, i32 %add459, i32 %bmy.51868
  %spec.select1839 = select i1 %cmp567, i32 %add386, i32 %bmx.51869
  %spec.select1840 = select i1 %cmp567, i64 %call566, i64 %bcost.51870
  br label %for.inc

for.inc:                                          ; preds = %if.end564, %if.end443
  %dir.4 = phi i32 [ %dir.21864, %if.end443 ], [ %spec.select1837, %if.end564 ]
  %bmy.7 = phi i32 [ %bmy.51868, %if.end443 ], [ %spec.select1838, %if.end564 ]
  %bmx.7 = phi i32 [ %bmx.51869, %if.end443 ], [ %spec.select1839, %if.end564 ]
  %bcost.7 = phi i64 [ %bcost.51870, %if.end443 ], [ %spec.select1840, %if.end564 ]
  %exitcond1873 = icmp eq i32 %add382, 6
  br i1 %exitcond1873, label %for.cond.cleanup, label %for.body

for.cond586:                                      ; preds = %cleanup
  %inc825 = add nuw nsw i32 %i585.01860, 1
  %exitcond1872 = icmp eq i32 %inc825, 10
  br i1 %exitcond1872, label %if.end828, label %for.body590

for.body590:                                      ; preds = %for.cond.cleanup, %for.cond586
  %bcost.81863 = phi i64 [ %bcost.11, %for.cond586 ], [ %bcost.7, %for.cond.cleanup ]
  %bmx.81862 = phi i32 [ %bmx.11, %for.cond586 ], [ %bmx.7, %for.cond.cleanup ]
  %bmy.81861 = phi i32 [ %bmy.11, %for.cond586 ], [ %bmy.7, %for.cond.cleanup ]
  %i585.01860 = phi i32 [ %inc825, %for.cond586 ], [ 1, %for.cond.cleanup ]
  %bsatd.51859 = phi i32 [ %bsatd.7, %for.cond586 ], [ %bsatd.4, %for.cond.cleanup ]
  %dir.51858 = phi i32 [ %dir.8, %for.cond586 ], [ %dir.4, %for.cond.cleanup ]
  %add591 = add nsw i32 %dir.51858, 1
  %arrayidx592 = getelementptr inbounds [8 x i8], [8 x i8]* @mod6m1, i32 0, i32 %add591
  %113 = load i8, i8* %arrayidx592, align 1, !tbaa !50
  %conv593 = zext i8 %113 to i32
  %114 = load i32, i32* %arrayidx351, align 4, !tbaa !11
  %add597 = add nsw i32 %114, 3
  %cmp598 = icmp slt i32 %bmy.81861, %add597
  br i1 %cmp598, label %if.end828, label %lor.lhs.false600

lor.lhs.false600:                                 ; preds = %for.body590
  %115 = load i32, i32* %arrayidx358, align 4, !tbaa !11
  %sub604 = add nsw i32 %115, -3
  %cmp605 = icmp sgt i32 %bmy.81861, %sub604
  br i1 %cmp605, label %if.end828, label %for.body614

for.body614:                                      ; preds = %lor.lhs.false600, %for.inc817
  %bcost.91857 = phi i64 [ %bcost.11, %for.inc817 ], [ %bcost.81863, %lor.lhs.false600 ]
  %bmx.91856 = phi i32 [ %bmx.11, %for.inc817 ], [ %bmx.81862, %lor.lhs.false600 ]
  %j609.01854 = phi i32 [ %inc818, %for.inc817 ], [ 0, %lor.lhs.false600 ]
  %bmy.91853 = phi i32 [ %bmy.11, %for.inc817 ], [ %bmy.81861, %lor.lhs.false600 ]
  %bsatd.61851 = phi i32 [ %bsatd.7, %for.inc817 ], [ %bsatd.51859, %lor.lhs.false600 ]
  %dir.61850 = phi i32 [ %dir.8, %for.inc817 ], [ -2, %lor.lhs.false600 ]
  %add615 = add nuw nsw i32 %j609.01854, %conv593
  %arrayidx617 = getelementptr inbounds [8 x [2 x i8]], [8 x [2 x i8]]* @hex2, i32 0, i32 %add615, i32 0
  %116 = load i8, i8* %arrayidx617, align 1, !tbaa !50
  %conv618 = sext i8 %116 to i32
  %add619 = add nsw i32 %bmx.81862, %conv618
  %cmp620 = icmp eq i32 %add619, %pmx.0
  %arrayidx625 = getelementptr inbounds [8 x [2 x i8]], [8 x [2 x i8]]* @hex2, i32 0, i32 %add615, i32 1
  %117 = load i8, i8* %arrayidx625, align 1, !tbaa !50
  %conv626 = sext i8 %117 to i32
  %add627 = add nsw i32 %bmy.81861, %conv626
  %cmp628 = icmp eq i32 %add627, %pmy.0
  %or.cond1888 = and i1 %cmp620, %cmp628
  br i1 %or.cond1888, label %if.end676, label %if.then630

if.then630:                                       ; preds = %for.body614
  %118 = load void (i8*, i32, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)*, void (i8*, i32, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)** %mc_luma, align 32, !tbaa !69
  %119 = load i32, i32* %arrayidx90, align 8, !tbaa !11
  %120 = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight, align 16, !tbaa !49
  tail call void %118(i8* %arrayidx25, i32 32, i8** nonnull %arraydecay89, i32 %119, i32 %add619, i32 %add627, i32 %conv, i32 %conv7, %struct.x264_weight_t* %120) #3
  %121 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx92, align 4, !tbaa !42
  %122 = load i8*, i8** %arrayidx93, align 8, !tbaa !42
  %call654 = tail call i32 %121(i8* %122, i32 16, i8* %arrayidx25, i32 32) #3
  %arrayidx660 = getelementptr inbounds i16, i16* %add.ptr, i32 %add619
  %123 = load i16, i16* %arrayidx660, align 2, !tbaa !44
  %conv661 = zext i16 %123 to i32
  %add662 = add nsw i32 %call654, %conv661
  %arrayidx668 = getelementptr inbounds i16, i16* %add.ptr88, i32 %add627
  %124 = load i16, i16* %arrayidx668, align 2, !tbaa !44
  %conv669 = zext i16 %124 to i32
  %add670 = add nsw i32 %add662, %conv669
  %cmp671 = icmp slt i32 %add670, %bsatd.61851
  %spec.select1759 = select i1 %cmp671, i32 %add670, i32 %bsatd.61851
  br label %if.end676

if.end676:                                        ; preds = %for.body614, %if.then630
  %bsatd.7 = phi i32 [ %spec.select1759, %if.then630 ], [ %bsatd.61851, %for.body614 ]
  %satd.1 = phi i32 [ %add670, %if.then630 ], [ 268435456, %for.body614 ]
  %shr677 = ashr i32 %bsatd.7, 4
  %add678 = add nsw i32 %shr677, %bsatd.7
  %cmp679 = icmp sgt i32 %satd.1, %add678
  br i1 %cmp679, label %for.inc817, label %if.then681

if.then681:                                       ; preds = %if.end676
  %conv691 = sext i8 %117 to i32
  %add692 = add nsw i32 %bmy.81861, %conv691
  %and.i1768 = and i32 %add619, 65535
  %shl.i1769 = shl i32 %add692, 16
  %add.i1770 = or i32 %shl.i1769, %and.i1768
  store i32 %add.i1770, i32* %i461, align 4, !tbaa !50
  %125 = load i32, i32* %i_chroma_format_idc, align 8, !tbaa !61
  switch i32 %125, label %land.lhs.true742 [
    i32 3, label %if.then700
    i32 0, label %if.end797
  ]

if.then700:                                       ; preds = %if.then681
  %126 = load void (i8*, i32, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)*, void (i8*, i32, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)** %mc_luma, align 32, !tbaa !69
  %127 = load i32, i32* %arrayidx473, align 4, !tbaa !11
  %128 = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight, align 16, !tbaa !49
  %arrayidx718 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %128, i32 1
  tail call void %126(i8* %pixu.0, i32 32, i8** nonnull %arrayidx471, i32 %127, i32 %add619, i32 %add692, i32 %conv, i32 %conv7, %struct.x264_weight_t* nonnull %arrayidx718) #3
  %129 = load void (i8*, i32, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)*, void (i8*, i32, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)** %mc_luma, align 32, !tbaa !69
  %130 = load i32, i32* %arrayidx491, align 8, !tbaa !11
  %131 = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight, align 16, !tbaa !49
  %arrayidx736 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %131, i32 2
  tail call void %129(i8* %pixv.0, i32 32, i8** nonnull %arrayidx489, i32 %130, i32 %add619, i32 %add692, i32 %conv, i32 %conv7, %struct.x264_weight_t* nonnull %arrayidx736) #3
  br label %if.end797

land.lhs.true742:                                 ; preds = %if.then681
  %132 = load i32, i32* %i_pixel, align 64, !tbaa !2
  %cmp744 = icmp slt i32 %132, 4
  br i1 %cmp744, label %if.then746, label %if.end797

if.then746:                                       ; preds = %land.lhs.true742
  %133 = load void (i8*, i8*, i32, i8*, i32, i32, i32, i32, i32)*, void (i8*, i8*, i32, i8*, i32, i32, i32, i32, i32)** %mc_chroma515, align 8, !tbaa !66
  %134 = load i8*, i8** %arrayidx471, align 4, !tbaa !42
  %135 = load i32, i32* %arrayidx473, align 4, !tbaa !11
  %mul764 = shl nsw i32 %add692, 1
  %shr765 = ashr i32 %mul764, %4
  tail call void %133(i8* %pixu.0, i8* %pixv.0, i32 32, i8* %134, i32 %135, i32 %add619, i32 %shr765, i32 %84, i32 %shr534) #3
  %136 = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight, align 16, !tbaa !49
  %weightfn770 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %136, i32 1, i32 5
  %137 = load void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)**, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*** %weightfn770, align 4, !tbaa !67
  %tobool771 = icmp eq void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %137, null
  br i1 %tobool771, label %if.end781, label %if.then772

if.then772:                                       ; preds = %if.then746
  %arrayidx769 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %136, i32 1
  %arrayidx777 = getelementptr inbounds void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %137, i32 %85
  %138 = load void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %arrayidx777, align 4, !tbaa !42
  tail call void %138(i8* %pixu.0, i32 32, i8* %pixu.0, i32 32, %struct.x264_weight_t* nonnull %arrayidx769, i32 %shr534) #3
  %.pre1878 = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight, align 16, !tbaa !49
  br label %if.end781

if.end781:                                        ; preds = %if.then746, %if.then772
  %139 = phi %struct.x264_weight_t* [ %136, %if.then746 ], [ %.pre1878, %if.then772 ]
  %weightfn784 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %139, i32 2, i32 5
  %140 = load void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)**, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*** %weightfn784, align 4, !tbaa !67
  %tobool785 = icmp eq void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %140, null
  br i1 %tobool785, label %if.end797, label %if.then786

if.then786:                                       ; preds = %if.end781
  %arrayidx783 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %139, i32 2
  %arrayidx791 = getelementptr inbounds void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %140, i32 %85
  %141 = load void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %arrayidx791, align 4, !tbaa !42
  tail call void %141(i8* %pixv.0, i32 32, i8* %pixv.0, i32 32, %struct.x264_weight_t* nonnull %arrayidx783, i32 %shr534) #3
  br label %if.end797

if.end797:                                        ; preds = %if.then681, %if.end781, %land.lhs.true742, %if.then786, %if.then700
  %142 = load i32, i32* %i_pixel, align 64, !tbaa !2
  %call799 = tail call i64 @x264_8_rd_cost_part(%struct.x264_t* nonnull %h, i32 %i_lambda2, i32 %i4, i32 %142) #3
  %cmp800 = icmp ult i64 %call799, %bcost.91857
  %add814 = add nsw i32 %add615, -1
  %spec.select1889 = select i1 %cmp800, i32 %add814, i32 %dir.61850
  %spec.select1890 = select i1 %cmp800, i32 %add692, i32 %bmy.91853
  %spec.select1891 = select i1 %cmp800, i32 %add619, i32 %bmx.91856
  %spec.select1892 = select i1 %cmp800, i64 %call799, i64 %bcost.91857
  br label %for.inc817

for.inc817:                                       ; preds = %if.end797, %if.end676
  %dir.8 = phi i32 [ %dir.61850, %if.end676 ], [ %spec.select1889, %if.end797 ]
  %bmy.11 = phi i32 [ %bmy.91853, %if.end676 ], [ %spec.select1890, %if.end797 ]
  %bmx.11 = phi i32 [ %bmx.91856, %if.end676 ], [ %spec.select1891, %if.end797 ]
  %bcost.11 = phi i64 [ %bcost.91857, %if.end676 ], [ %spec.select1892, %if.end797 ]
  %inc818 = add nuw nsw i32 %j609.01854, 1
  %exitcond1871 = icmp eq i32 %inc818, 3
  br i1 %exitcond1871, label %cleanup, label %for.body614

cleanup:                                          ; preds = %for.inc817
  %cmp820 = icmp eq i32 %dir.8, -2
  br i1 %cmp820, label %if.end828, label %for.cond586

if.end828:                                        ; preds = %cleanup, %for.body590, %lor.lhs.false600, %for.cond586, %for.cond.cleanup
  %bsatd.10 = phi i32 [ %bsatd.4, %for.cond.cleanup ], [ %bsatd.51859, %for.body590 ], [ %bsatd.51859, %lor.lhs.false600 ], [ %bsatd.7, %for.cond586 ], [ %bsatd.7, %cleanup ]
  %bmy.14 = phi i32 [ %bmy.7, %for.cond.cleanup ], [ %bmy.81861, %for.body590 ], [ %bmy.81861, %lor.lhs.false600 ], [ %bmy.11, %for.cond586 ], [ %bmy.11, %cleanup ]
  %bmx.14 = phi i32 [ %bmx.7, %for.cond.cleanup ], [ %bmx.81862, %for.body590 ], [ %bmx.81862, %lor.lhs.false600 ], [ %bmx.11, %for.cond586 ], [ %bmx.11, %cleanup ]
  %bcost.14 = phi i64 [ %bcost.7, %for.cond.cleanup ], [ %bcost.81863, %for.body590 ], [ %bcost.81863, %lor.lhs.false600 ], [ %bcost.11, %for.cond586 ], [ %bcost.11, %cleanup ]
  br label %for.body834

for.cond.cleanup833:                              ; preds = %for.inc1035
  %conv1039 = trunc i64 %bcost.17 to i32
  %cost1040 = getelementptr inbounds %struct.x264_me_t, %struct.x264_me_t* %m, i32 0, i32 12
  store i32 %conv1039, i32* %cost1040, align 4, !tbaa !59
  %conv1041 = trunc i32 %bmx.17 to i16
  store i16 %conv1041, i16* %arrayidx16, align 16, !tbaa !44
  %conv1044 = trunc i32 %bmy.17 to i16
  store i16 %conv1044, i16* %arrayidx19, align 2, !tbaa !44
  %arrayidx1047 = getelementptr inbounds [16 x i8], [16 x i8]* @block_idx_x, i32 0, i32 %i4
  %143 = load i8, i8* %arrayidx1047, align 1, !tbaa !50
  %conv1048 = zext i8 %143 to i32
  %arrayidx1049 = getelementptr inbounds [16 x i8], [16 x i8]* @block_idx_y, i32 0, i32 %i4
  %144 = load i8, i8* %arrayidx1049, align 1, !tbaa !50
  %conv1050 = zext i8 %144 to i32
  %145 = lshr i32 %conv, 2
  %146 = lshr i32 %conv7, 2
  %add.i1774 = add nuw nsw i32 %conv1048, 12
  %mul.i = shl nuw nsw i32 %conv1050, 3
  %add2.i = add nuw nsw i32 %add.i1774, %mul.i
  %arrayidx3.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 %i_list, i32 %add2.i
  %147 = bitcast [2 x i16]* %arrayidx3.i to i8*
  %and.i1771 = and i32 %bmx.17, 65535
  %shl.i1772 = shl i32 %bmy.17, 16
  %add.i1773 = or i32 %and.i1771, %shl.i1772
  %shl.i1775 = shl nuw nsw i32 %146, 1
  %add4.i = add nsw i32 %145, -3
  %sub.i = add nsw i32 %add4.i, %shl.i1775
  %arrayidx5.i = getelementptr inbounds [10 x void (i8*, i32)*], [10 x void (i8*, i32)*]* @x264_8_cache_mv_func_table, i32 0, i32 %sub.i
  %148 = load void (i8*, i32)*, void (i8*, i32)** %arrayidx5.i, align 4, !tbaa !42
  tail call void %148(i8* nonnull %147, i32 %add.i1773) #3
  %149 = load i16, i16* %arrayidx81, align 4, !tbaa !44
  %conv1056 = sext i16 %149 to i32
  %sub1057 = sub nsw i32 %bmx.17, %conv1056
  %150 = icmp slt i32 %sub1057, 0
  %neg = sub nsw i32 0, %sub1057
  %151 = select i1 %150, i32 %neg, i32 %sub1057
  %152 = load i16, i16* %arrayidx84, align 2, !tbaa !44
  %conv1072 = sext i16 %152 to i32
  %sub1073 = sub nsw i32 %bmy.17, %conv1072
  %153 = icmp slt i32 %sub1073, 0
  %neg1750 = sub nsw i32 0, %sub1073
  %154 = select i1 %153, i32 %neg1750, i32 %sub1073
  %155 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 %i_list, i32 %add2.i, i32 0
  %cmp1075 = icmp slt i32 %154, 66
  %cond1085 = select i1 %cmp1075, i32 %154, i32 66
  %shl.i1776 = shl nuw nsw i32 %cond1085, 8
  %cmp1059 = icmp slt i32 %151, 66
  %spec.select1760 = select i1 %cmp1059, i32 %151, i32 66
  %add.i1777 = or i32 %shl.i1776, %spec.select1760
  %shl.i1782 = shl nuw nsw i32 %146, 1
  %add4.i1783 = add nsw i32 %145, -3
  %sub.i1784 = add nsw i32 %add4.i1783, %shl.i1782
  %arrayidx5.i1785 = getelementptr inbounds [10 x void (i8*, i32)*], [10 x void (i8*, i32)*]* @x264_8_cache_mvd_func_table, i32 0, i32 %sub.i1784
  %156 = load void (i8*, i32)*, void (i8*, i32)** %arrayidx5.i1785, align 4, !tbaa !42
  tail call void %156(i8* nonnull %155, i32 %add.i1777) #3
  br label %cleanup1096

for.body834:                                      ; preds = %for.inc1035, %if.end828
  %bcost.151849 = phi i64 [ %bcost.14, %if.end828 ], [ %bcost.17, %for.inc1035 ]
  %i829.01848 = phi i32 [ 0, %if.end828 ], [ %add835, %for.inc1035 ]
  %bmx.151847 = phi i32 [ %bmx.14, %if.end828 ], [ %bmx.17, %for.inc1035 ]
  %bmy.151846 = phi i32 [ %bmy.14, %if.end828 ], [ %bmy.17, %for.inc1035 ]
  %bsatd.111844 = phi i32 [ %bsatd.10, %if.end828 ], [ %bsatd.12, %for.inc1035 ]
  %add835 = add nuw nsw i32 %i829.01848, 1
  %arrayidx837 = getelementptr inbounds [9 x [2 x i8]], [9 x [2 x i8]]* @square1, i32 0, i32 %add835, i32 0
  %157 = load i8, i8* %arrayidx837, align 1, !tbaa !50
  %conv838 = sext i8 %157 to i32
  %add839 = add nsw i32 %bmx.14, %conv838
  %cmp840 = icmp eq i32 %add839, %pmx.0
  %arrayidx845 = getelementptr inbounds [9 x [2 x i8]], [9 x [2 x i8]]* @square1, i32 0, i32 %add835, i32 1
  %158 = load i8, i8* %arrayidx845, align 1, !tbaa !50
  %conv846 = sext i8 %158 to i32
  %add847 = add nsw i32 %bmy.14, %conv846
  %cmp848 = icmp eq i32 %add847, %pmy.0
  %or.cond1893 = and i1 %cmp840, %cmp848
  br i1 %or.cond1893, label %if.end896, label %if.then850

if.then850:                                       ; preds = %for.body834
  %159 = load void (i8*, i32, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)*, void (i8*, i32, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)** %mc_luma, align 32, !tbaa !69
  %160 = load i32, i32* %arrayidx90, align 8, !tbaa !11
  %161 = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight, align 16, !tbaa !49
  tail call void %159(i8* %arrayidx25, i32 32, i8** nonnull %arraydecay89, i32 %160, i32 %add839, i32 %add847, i32 %conv, i32 %conv7, %struct.x264_weight_t* %161) #3
  %162 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx92, align 4, !tbaa !42
  %163 = load i8*, i8** %arrayidx93, align 8, !tbaa !42
  %call874 = tail call i32 %162(i8* %163, i32 16, i8* %arrayidx25, i32 32) #3
  %arrayidx880 = getelementptr inbounds i16, i16* %add.ptr, i32 %add839
  %164 = load i16, i16* %arrayidx880, align 2, !tbaa !44
  %conv881 = zext i16 %164 to i32
  %add882 = add nsw i32 %call874, %conv881
  %arrayidx888 = getelementptr inbounds i16, i16* %add.ptr88, i32 %add847
  %165 = load i16, i16* %arrayidx888, align 2, !tbaa !44
  %conv889 = zext i16 %165 to i32
  %add890 = add nsw i32 %add882, %conv889
  %cmp891 = icmp slt i32 %add890, %bsatd.111844
  %spec.select1761 = select i1 %cmp891, i32 %add890, i32 %bsatd.111844
  br label %if.end896

if.end896:                                        ; preds = %for.body834, %if.then850
  %bsatd.12 = phi i32 [ %spec.select1761, %if.then850 ], [ %bsatd.111844, %for.body834 ]
  %satd.2 = phi i32 [ %add890, %if.then850 ], [ 268435456, %for.body834 ]
  %shr897 = ashr i32 %bsatd.12, 4
  %add898 = add nsw i32 %shr897, %bsatd.12
  %cmp899 = icmp sgt i32 %satd.2, %add898
  br i1 %cmp899, label %for.inc1035, label %if.then901

if.then901:                                       ; preds = %if.end896
  %conv911 = sext i8 %158 to i32
  %add912 = add nsw i32 %bmy.14, %conv911
  %and.i1828 = and i32 %add839, 65535
  %shl.i1829 = shl i32 %add912, 16
  %add.i1830 = or i32 %shl.i1829, %and.i1828
  store i32 %add.i1830, i32* %i461, align 4, !tbaa !50
  %166 = load i32, i32* %i_chroma_format_idc, align 8, !tbaa !61
  switch i32 %166, label %land.lhs.true962 [
    i32 3, label %if.then920
    i32 0, label %if.end1017
  ]

if.then920:                                       ; preds = %if.then901
  %167 = load void (i8*, i32, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)*, void (i8*, i32, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)** %mc_luma, align 32, !tbaa !69
  %168 = load i32, i32* %arrayidx473, align 4, !tbaa !11
  %169 = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight, align 16, !tbaa !49
  %arrayidx938 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %169, i32 1
  tail call void %167(i8* %pixu.0, i32 32, i8** nonnull %arrayidx471, i32 %168, i32 %add839, i32 %add912, i32 %conv, i32 %conv7, %struct.x264_weight_t* nonnull %arrayidx938) #3
  %170 = load void (i8*, i32, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)*, void (i8*, i32, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)** %mc_luma, align 32, !tbaa !69
  %171 = load i32, i32* %arrayidx491, align 8, !tbaa !11
  %172 = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight, align 16, !tbaa !49
  %arrayidx956 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %172, i32 2
  tail call void %170(i8* %pixv.0, i32 32, i8** nonnull %arrayidx489, i32 %171, i32 %add839, i32 %add912, i32 %conv, i32 %conv7, %struct.x264_weight_t* nonnull %arrayidx956) #3
  br label %if.end1017

land.lhs.true962:                                 ; preds = %if.then901
  %173 = load i32, i32* %i_pixel, align 64, !tbaa !2
  %cmp964 = icmp slt i32 %173, 4
  br i1 %cmp964, label %if.then966, label %if.end1017

if.then966:                                       ; preds = %land.lhs.true962
  %174 = load void (i8*, i8*, i32, i8*, i32, i32, i32, i32, i32)*, void (i8*, i8*, i32, i8*, i32, i32, i32, i32, i32)** %mc_chroma515, align 8, !tbaa !66
  %175 = load i8*, i8** %arrayidx471, align 4, !tbaa !42
  %176 = load i32, i32* %arrayidx473, align 4, !tbaa !11
  %mul984 = shl nsw i32 %add912, 1
  %shr985 = ashr i32 %mul984, %4
  tail call void %174(i8* %pixu.0, i8* %pixv.0, i32 32, i8* %175, i32 %176, i32 %add839, i32 %shr985, i32 %84, i32 %shr534) #3
  %177 = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight, align 16, !tbaa !49
  %weightfn990 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %177, i32 1, i32 5
  %178 = load void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)**, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*** %weightfn990, align 4, !tbaa !67
  %tobool991 = icmp eq void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %178, null
  br i1 %tobool991, label %if.end1001, label %if.then992

if.then992:                                       ; preds = %if.then966
  %arrayidx989 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %177, i32 1
  %arrayidx997 = getelementptr inbounds void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %178, i32 %85
  %179 = load void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %arrayidx997, align 4, !tbaa !42
  tail call void %179(i8* %pixu.0, i32 32, i8* %pixu.0, i32 32, %struct.x264_weight_t* nonnull %arrayidx989, i32 %shr534) #3
  %.pre1880 = load %struct.x264_weight_t*, %struct.x264_weight_t** %weight, align 16, !tbaa !49
  br label %if.end1001

if.end1001:                                       ; preds = %if.then966, %if.then992
  %180 = phi %struct.x264_weight_t* [ %177, %if.then966 ], [ %.pre1880, %if.then992 ]
  %weightfn1004 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %180, i32 2, i32 5
  %181 = load void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)**, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*** %weightfn1004, align 4, !tbaa !67
  %tobool1005 = icmp eq void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %181, null
  br i1 %tobool1005, label %if.end1017, label %if.then1006

if.then1006:                                      ; preds = %if.end1001
  %arrayidx1003 = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %180, i32 2
  %arrayidx1011 = getelementptr inbounds void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %181, i32 %85
  %182 = load void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %arrayidx1011, align 4, !tbaa !42
  tail call void %182(i8* %pixv.0, i32 32, i8* %pixv.0, i32 32, %struct.x264_weight_t* nonnull %arrayidx1003, i32 %shr534) #3
  br label %if.end1017

if.end1017:                                       ; preds = %if.then901, %if.end1001, %land.lhs.true962, %if.then1006, %if.then920
  %183 = load i32, i32* %i_pixel, align 64, !tbaa !2
  %call1019 = tail call i64 @x264_8_rd_cost_part(%struct.x264_t* nonnull %h, i32 %i_lambda2, i32 %i4, i32 %183) #3
  %cmp1020 = icmp ult i64 %call1019, %bcost.151849
  %spec.select1841 = select i1 %cmp1020, i32 %add912, i32 %bmy.151846
  %spec.select1842 = select i1 %cmp1020, i32 %add839, i32 %bmx.151847
  %spec.select1843 = select i1 %cmp1020, i64 %call1019, i64 %bcost.151849
  br label %for.inc1035

for.inc1035:                                      ; preds = %if.end1017, %if.end896
  %bmy.17 = phi i32 [ %bmy.151846, %if.end896 ], [ %spec.select1841, %if.end1017 ]
  %bmx.17 = phi i32 [ %bmx.151847, %if.end896 ], [ %spec.select1842, %if.end1017 ]
  %bcost.17 = phi i64 [ %bcost.151849, %if.end896 ], [ %spec.select1843, %if.end1017 ]
  %exitcond = icmp eq i32 %add835, 8
  br i1 %exitcond, label %for.cond.cleanup833, label %for.body834

cleanup1096:                                      ; preds = %for.cond.cleanup833, %if.end348, %lor.lhs.false355, %lor.lhs.false362, %lor.lhs.false369
  store i32 0, i32* %b_skip_mc, align 4, !tbaa !72
  ret void
}

declare dso_local void @x264_8_mb_predict_mv(%struct.x264_t*, i32, i32, i32, i16*) local_unnamed_addr #2

declare dso_local i64 @x264_8_rd_cost_part(%struct.x264_t*, i32, i32, i32) local_unnamed_addr #2

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 (http://10.18.30.194:8888/compiler/compiler10.git 713ef477716300a9b04a1522e3fce445623444dc)"}
!2 = !{!3, !4, i64 0}
!3 = !{!"", !4, i64 0, !7, i64 4, !4, i64 8, !4, i64 12, !7, i64 16, !5, i64 20, !7, i64 68, !5, i64 72, !7, i64 84, !5, i64 88, !5, i64 100, !4, i64 104, !4, i64 108, !5, i64 112}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"any pointer", !5, i64 0}
!8 = !{!9, !5, i64 0}
!9 = !{!"", !5, i64 0, !5, i64 1}
!10 = !{!9, !5, i64 1}
!11 = !{!4, !4, i64 0}
!12 = !{!13, !4, i64 556}
!13 = !{!"x264_t", !14, i64 0, !7, i64 944, !5, i64 948, !5, i64 1464, !4, i64 1528, !4, i64 1532, !4, i64 1536, !4, i64 1540, !4, i64 1544, !4, i64 1548, !7, i64 1552, !7, i64 1556, !4, i64 1560, !4, i64 1564, !23, i64 1568, !7, i64 1612, !4, i64 1616, !7, i64 1620, !4, i64 1624, !4, i64 1628, !4, i64 1632, !4, i64 1636, !4, i64 1640, !4, i64 1644, !21, i64 1648, !4, i64 1656, !21, i64 1664, !21, i64 1672, !21, i64 1680, !21, i64 1688, !21, i64 1696, !21, i64 1704, !21, i64 1712, !4, i64 1720, !21, i64 1728, !4, i64 1736, !5, i64 1740, !5, i64 1756, !5, i64 1772, !5, i64 1788, !5, i64 1804, !5, i64 1820, !5, i64 1836, !5, i64 1852, !5, i64 1868, !5, i64 1884, !7, i64 1900, !5, i64 1904, !5, i64 2184, !7, i64 3304, !7, i64 3308, !25, i64 3312, !5, i64 8448, !5, i64 8760, !4, i64 8824, !25, i64 8832, !26, i64 14016, !27, i64 15168, !7, i64 15352, !7, i64 15356, !5, i64 15360, !5, i64 15368, !5, i64 15520, !5, i64 15528, !4, i64 15536, !4, i64 15540, !21, i64 15544, !28, i64 15552, !29, i64 18752, !7, i64 30784, !32, i64 30792, !7, i64 34104, !7, i64 34108, !7, i64 34112, !5, i64 34144, !5, i64 34656, !5, i64 36704, !5, i64 36736, !7, i64 36744, !7, i64 36748, !5, i64 36752, !5, i64 36812, !5, i64 36820, !5, i64 36848, !5, i64 36896, !5, i64 36944, !5, i64 36972, !5, i64 37000, !7, i64 37028, !35, i64 37032, !36, i64 37664, !37, i64 37880, !38, i64 37948, !38, i64 37972, !38, i64 37996, !39, i64 38020, !40, i64 38232, !41, i64 38316, !7, i64 38332}
!14 = !{!"x264_param_t", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !15, i64 56, !4, i64 92, !4, i64 96, !4, i64 100, !4, i64 104, !4, i64 108, !4, i64 112, !4, i64 116, !4, i64 120, !4, i64 124, !4, i64 128, !4, i64 132, !4, i64 136, !4, i64 140, !4, i64 144, !4, i64 148, !4, i64 152, !4, i64 156, !4, i64 160, !4, i64 164, !4, i64 168, !4, i64 172, !4, i64 176, !7, i64 180, !5, i64 184, !5, i64 200, !5, i64 216, !5, i64 232, !5, i64 248, !5, i64 312, !5, i64 376, !5, i64 440, !7, i64 504, !7, i64 508, !4, i64 512, !4, i64 516, !7, i64 520, !16, i64 524, !18, i64 632, !19, i64 748, !4, i64 764, !20, i64 768, !22, i64 824, !4, i64 836, !4, i64 840, !4, i64 844, !4, i64 848, !4, i64 852, !4, i64 856, !4, i64 860, !4, i64 864, !4, i64 868, !4, i64 872, !4, i64 876, !4, i64 880, !4, i64 884, !4, i64 888, !4, i64 892, !4, i64 896, !4, i64 900, !7, i64 904, !7, i64 908, !4, i64 912, !4, i64 916, !4, i64 920, !4, i64 924, !4, i64 928, !7, i64 932, !7, i64 936, !7, i64 940}
!15 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32}
!16 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !17, i64 72, !17, i64 76, !4, i64 80, !4, i64 84, !4, i64 88, !5, i64 92, !4, i64 100, !4, i64 104}
!17 = !{!"float", !5, i64 0}
!18 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !17, i64 24, !17, i64 28, !17, i64 32, !4, i64 36, !4, i64 40, !17, i64 44, !17, i64 48, !17, i64 52, !4, i64 56, !4, i64 60, !17, i64 64, !4, i64 68, !4, i64 72, !4, i64 76, !7, i64 80, !4, i64 84, !7, i64 88, !17, i64 92, !17, i64 96, !17, i64 100, !7, i64 104, !4, i64 108, !7, i64 112}
!19 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12}
!20 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !21, i64 40, !21, i64 48}
!21 = !{!"long long", !5, i64 0}
!22 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8}
!23 = !{!"", !4, i64 0, !4, i64 4, !7, i64 8, !4, i64 12, !7, i64 16, !24, i64 20}
!24 = !{!"bs_s", !7, i64 0, !7, i64 4, !7, i64 8, !4, i64 12, !4, i64 16, !4, i64 20}
!25 = !{!"", !7, i64 0, !7, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !5, i64 52, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !4, i64 76, !5, i64 80, !5, i64 88, !4, i64 344, !5, i64 352, !4, i64 4960, !4, i64 4964, !5, i64 4968, !4, i64 5096, !4, i64 5100, !4, i64 5104, !4, i64 5108, !4, i64 5112, !4, i64 5116, !4, i64 5120, !4, i64 5124}
!26 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !4, i64 64, !5, i64 68, !5, i64 1092}
!27 = !{!"", !7, i64 0, !5, i64 4, !7, i64 12, !5, i64 16, !4, i64 88, !4, i64 92, !4, i64 96, !4, i64 100, !4, i64 104, !4, i64 108, !4, i64 112, !4, i64 116, !4, i64 120, !21, i64 128, !21, i64 136, !5, i64 144, !21, i64 160, !21, i64 168, !4, i64 176, !4, i64 180}
!28 = !{!"", !5, i64 0, !5, i64 96, !5, i64 128, !5, i64 1664}
!29 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !5, i64 32, !5, i64 40, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !4, i64 76, !4, i64 80, !4, i64 84, !4, i64 88, !4, i64 92, !4, i64 96, !4, i64 100, !4, i64 104, !5, i64 108, !5, i64 116, !5, i64 124, !5, i64 136, !5, i64 148, !5, i64 156, !5, i64 164, !5, i64 176, !5, i64 192, !5, i64 200, !5, i64 212, !4, i64 224, !5, i64 228, !5, i64 244, !4, i64 308, !4, i64 312, !4, i64 316, !5, i64 320, !4, i64 328, !4, i64 332, !4, i64 336, !5, i64 340, !4, i64 348, !4, i64 352, !4, i64 356, !4, i64 360, !4, i64 364, !4, i64 368, !7, i64 372, !4, i64 376, !4, i64 380, !4, i64 384, !4, i64 388, !7, i64 392, !7, i64 396, !7, i64 400, !7, i64 404, !7, i64 408, !7, i64 412, !7, i64 416, !7, i64 420, !5, i64 424, !5, i64 432, !5, i64 440, !5, i64 448, !7, i64 704, !7, i64 708, !7, i64 712, !7, i64 716, !5, i64 720, !4, i64 784, !4, i64 788, !5, i64 792, !4, i64 796, !4, i64 800, !4, i64 804, !4, i64 808, !4, i64 812, !4, i64 816, !4, i64 820, !4, i64 824, !4, i64 828, !4, i64 832, !4, i64 836, !30, i64 896, !31, i64 9472, !4, i64 10336, !4, i64 10340, !4, i64 10344, !4, i64 10348, !4, i64 10352, !4, i64 10356, !4, i64 10360, !4, i64 10364, !5, i64 10368, !4, i64 10384, !4, i64 10388, !5, i64 10392, !7, i64 11416, !5, i64 11420, !7, i64 11932, !5, i64 11936, !4, i64 11956, !5, i64 11960}
!30 = !{!"", !5, i64 0, !5, i64 768, !5, i64 2496, !5, i64 2752, !5, i64 3008, !5, i64 3392, !5, i64 3872, !5, i64 3888, !5, i64 3904, !5, i64 4416, !5, i64 4928, !5, i64 5056, !4, i64 5128, !4, i64 5132, !5, i64 5136, !5, i64 5148, !5, i64 5160, !5, i64 5172, !5, i64 5180, !5, i64 8252, !5, i64 8380, !5, i64 8508}
!31 = !{!"", !5, i64 0, !5, i64 40, !5, i64 160, !5, i64 240, !5, i64 560, !5, i64 720, !5, i64 760, !5, i64 792, !4, i64 800, !5, i64 804, !4, i64 808, !4, i64 812, !4, i64 816, !4, i64 820, !5, i64 824, !5, i64 848, !7, i64 856}
!32 = !{!"", !5, i64 0, !5, i64 16, !5, i64 40, !5, i64 64, !5, i64 136, !5, i64 160, !5, i64 184, !5, i64 208, !5, i64 232, !5, i64 256, !5, i64 280, !5, i64 304, !5, i64 760, !5, i64 1032, !5, i64 1048, !5, i64 2072, !5, i64 2120, !5, i64 2536, !5, i64 2560, !5, i64 2568, !5, i64 2576, !33, i64 2584}
!33 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !5, i64 12, !4, i64 88, !4, i64 92, !4, i64 96, !5, i64 100, !5, i64 108, !5, i64 364, !5, i64 432, !5, i64 456, !5, i64 664, !5, i64 676, !5, i64 688, !34, i64 712, !4, i64 720}
!34 = !{!"double", !5, i64 0}
!35 = !{!"", !5, i64 0, !5, i64 32, !5, i64 64, !5, i64 96, !5, i64 124, !5, i64 140, !5, i64 172, !5, i64 204, !5, i64 236, !5, i64 264, !5, i64 292, !7, i64 324, !7, i64 328, !5, i64 332, !5, i64 336, !5, i64 352, !5, i64 368, !7, i64 384, !7, i64 388, !7, i64 392, !5, i64 396, !5, i64 424, !5, i64 452, !5, i64 480, !5, i64 508, !7, i64 536, !7, i64 540, !7, i64 544, !7, i64 548, !7, i64 552, !7, i64 556, !7, i64 560, !7, i64 564, !7, i64 568, !7, i64 572, !7, i64 576, !7, i64 580, !7, i64 584, !7, i64 588, !7, i64 592, !7, i64 596, !7, i64 600, !7, i64 604, !7, i64 608, !7, i64 612, !7, i64 616, !7, i64 620, !7, i64 624, !7, i64 628}
!36 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !5, i64 12, !5, i64 60, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !7, i64 128, !7, i64 132, !7, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !7, i64 176, !7, i64 180, !7, i64 184, !7, i64 188, !7, i64 192, !7, i64 196, !7, i64 200, !7, i64 204, !7, i64 208, !7, i64 212}
!37 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64}
!38 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!39 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !5, i64 64, !7, i64 120, !7, i64 124, !5, i64 128, !7, i64 180, !7, i64 184, !7, i64 188, !7, i64 192, !7, i64 196, !7, i64 200, !7, i64 204, !7, i64 208}
!40 = !{!"", !5, i64 0, !5, i64 8, !7, i64 16, !7, i64 20, !5, i64 24, !5, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80}
!41 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12}
!42 = !{!7, !7, i64 0}
!43 = !{!3, !7, i64 68}
!44 = !{!45, !45, i64 0}
!45 = !{!"short", !5, i64 0}
!46 = !{!3, !7, i64 4}
!47 = !{!13, !4, i64 18824}
!48 = !{!13, !7, i64 37668}
!49 = !{!3, !7, i64 16}
!50 = !{!5, !5, i64 0}
!51 = !{!13, !4, i64 18820}
!52 = !{!3, !7, i64 84}
!53 = !{!13, !7, i64 36744}
!54 = !{!13, !4, i64 29088}
!55 = !{!13, !7, i64 15352}
!56 = !{!57, !4, i64 0}
!57 = !{!"", !4, i64 0, !5, i64 4}
!58 = !{!3, !4, i64 104}
!59 = !{!3, !4, i64 108}
!60 = !{!13, !4, i64 18828}
!61 = !{!62, !4, i64 264}
!62 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !19, i64 72, !4, i64 88, !63, i64 92, !4, i64 260, !4, i64 264, !4, i64 268, !4, i64 272, !4, i64 276, !5, i64 280}
!63 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !4, i64 76, !4, i64 80, !64, i64 84, !4, i64 132, !4, i64 136, !4, i64 140, !4, i64 144, !4, i64 148, !4, i64 152, !4, i64 156, !4, i64 160, !4, i64 164}
!64 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44}
!65 = !{!13, !4, i64 18768}
!66 = !{!13, !7, i64 37672}
!67 = !{!68, !7, i64 44}
!68 = !{!"x264_weight_t", !5, i64 0, !5, i64 16, !4, i64 32, !4, i64 36, !4, i64 40, !7, i64 44}
!69 = !{!13, !7, i64 37664}
!70 = !{!3, !4, i64 8}
!71 = !{!13, !7, i64 37824}
!72 = !{!13, !4, i64 19572}
!73 = !{!13, !4, i64 18764}
