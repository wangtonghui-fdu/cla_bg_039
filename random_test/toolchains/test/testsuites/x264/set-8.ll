; ModuleID = 'encoder/set.c'
source_filename = "encoder/set.c"
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

%struct.anon.18 = type { i8, i8, i8 }
%struct.x264_level_t = type { i8, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8 }
%struct.bs_s = type { i8*, i8*, i8*, i32, i32, i32 }
%struct.x264_sps_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon, i32, %struct.anon.0, i32, i32, i32, i32, i32, [8 x i8*] }
%struct.anon = type { i32, i32, i32, i32 }
%struct.anon.0 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.1, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.1 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.x264_param_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.2, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, [16 x i8], [16 x i8], [16 x i8], [16 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], void (i8*, i32, i8*, i8*)*, i8*, i32, i32, i8*, %struct.anon.3, %struct.anon.4, %struct.anon.5, i32, %struct.anon.6, %struct.anon.7, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, void (i8*)*, void (%struct.x264_t*, %struct.x264_nal_t*, i8*)*, i8* }
%struct.anon.2 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.3 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, i32, i32, i32, [2 x i32], i32, i32 }
%struct.anon.4 = type { i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, float, float, float, i32, i32, float, i32, i32, i32, i8*, i32, i8*, float, float, float, %struct.x264_zone_t*, i32, i8* }
%struct.x264_zone_t = type { i32, i32, i32, i32, float, %struct.x264_param_t* }
%struct.anon.5 = type { i32, i32, i32, i32 }
%struct.anon.6 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.anon.7 = type { i32, i32, i32 }
%struct.x264_t = type { %struct.x264_param_t, i8*, [129 x %struct.x264_t*], [16 x %struct.x264_t*], i32, i32, i32, i32, i32, i32, %struct.x264_threadpool_t*, %struct.x264_threadpool_t*, i32, i32, %struct.anon.8, i8*, i32, %struct.x264_t*, i32, i32, i32, i32, i32, i32, i64, i32, i64, i64, i64, i64, i64, i64, i64, i32, i64, i32, [4 x [16 x i32]*], [4 x [64 x i32]*], [4 x [16 x i32]*], [4 x [64 x i32]*], [4 x [16 x i16]*], [4 x [64 x i16]*], [4 x [16 x i16]*], [4 x [64 x i16]*], [4 x [16 x i16]*], [4 x [64 x i16]*], [4 x [64 x i16]]*, [70 x i16*], [70 x [4 x i16*]], %struct.anon.9*, i8*, %struct.x264_slice_header_t, [1 x %struct.x264_sps_t], [1 x %struct.x264_pps_t], i32, [4 x i8], %struct.x264_slice_header_t, [48 x i8], %struct.x264_cabac_t, %struct.anon.12, %struct.x264_frame*, %struct.x264_frame*, [2 x i32], [2 x [19 x %struct.x264_frame*]], [2 x %struct.x264_frame*], [2 x i32], i32, i32, i64, %struct.anon.13, %struct.anon.14, %struct.x264_ratecontrol_t*, %struct.anon.17, [64 x i16]*, [64 x i32]*, i32*, [28 x i8], [4 x [64 x i16]], [2 x [4 x [64 x i32]]], [2 x [4 x i32]], [7 x i8], i8*, i8*, [5 x [3 x i8*]], [2 x [2 x [8 x [4 x i8]]]*], [7 x void (i8*)*], [12 x void (i8*, i8*)*], [12 x void (i8*)*], [7 x void (i8*)*], [7 x void (i8*)*], [7 x void (i8*)*], void (i8*, i8*, i32, i32)*, %struct.x264_pixel_function_t, %struct.x264_mc_functions_t, %struct.x264_dct_function_t, %struct.x264_zigzag_function_t, %struct.x264_zigzag_function_t, %struct.x264_zigzag_function_t, %struct.x264_quant_function_t, %struct.x264_deblock_function_t, %struct.x264_bitstream_function_t, %struct.x264_lookahead_t* }
%struct.x264_threadpool_t = type opaque
%struct.anon.8 = type { i32, i32, %struct.x264_nal_t*, i32, i8*, %struct.bs_s }
%struct.anon.9 = type { [70 x [3 x [33 x i16]]], [70 x [17 x i16]] }
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

@x264_cqm_flat16 = external dso_local constant [64 x i8], align 1
@x264_cqm_jvt = external dso_local local_unnamed_addr constant [8 x i8*], align 4
@x264_8_sps_write.sar = internal unnamed_addr constant [17 x %struct.anon.18] [%struct.anon.18 { i8 1, i8 1, i8 1 }, %struct.anon.18 { i8 12, i8 11, i8 2 }, %struct.anon.18 { i8 10, i8 11, i8 3 }, %struct.anon.18 { i8 16, i8 11, i8 4 }, %struct.anon.18 { i8 40, i8 33, i8 5 }, %struct.anon.18 { i8 24, i8 11, i8 6 }, %struct.anon.18 { i8 20, i8 11, i8 7 }, %struct.anon.18 { i8 32, i8 11, i8 8 }, %struct.anon.18 { i8 80, i8 33, i8 9 }, %struct.anon.18 { i8 18, i8 11, i8 10 }, %struct.anon.18 { i8 15, i8 11, i8 11 }, %struct.anon.18 { i8 64, i8 33, i8 12 }, %struct.anon.18 { i8 -96, i8 99, i8 13 }, %struct.anon.18 { i8 4, i8 3, i8 14 }, %struct.anon.18 { i8 3, i8 2, i8 15 }, %struct.anon.18 { i8 2, i8 1, i8 16 }, %struct.anon.18 { i8 0, i8 0, i8 -1 }], align 1
@x264_8_sei_version_write.uuid = internal unnamed_addr constant [16 x i8] c"\DCE\E9\BD\E6\D9H\B7\96,\D8 \D9#\EE\EF", align 1
@.str = private unnamed_addr constant [111 x i8] c"x264 - core %d%s - H.264/MPEG-4 AVC codec - Copy%s 2003-2021 - http://www.videolan.org/x264.html - options: %s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@num_clock_ts = internal unnamed_addr constant [10 x i8] c"\00\01\01\01\02\02\03\03\02\03", align 1
@avcintra_uuid = internal unnamed_addr constant [16 x i8] c"\F7I>\B3\D4\00G\96\86\86\C9p{d7*", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"AVC-Intra SEI is too large (%d)\0A\00", align 1
@x264_levels = external dso_local local_unnamed_addr constant [0 x %struct.x264_level_t], align 4
@.str.6 = private unnamed_addr constant [42 x i8] c"frame MB size (%dx%d) > level limit (%d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [64 x i8] c"DPB size (%d frames, %d mbs) > level limit (%d frames, %d mbs)\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"VBV bitrate (%lld) > level limit (%d)\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"VBV buffer (%lld) > level limit (%d)\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"MV range (%lld) > level limit (%d)\0A\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"interlaced (%lld) > level limit (%d)\0A\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"fake interlaced (%lld) > level limit (%d)\0A\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"MB rate (%lld) > level limit (%d)\0A\00", align 1
@x264_ue_size_tab = internal unnamed_addr constant [256 x i8] c"\01\01\03\03\05\05\05\05\07\07\07\07\07\07\07\07\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F", align 1
@x264_zigzag_scan4 = internal unnamed_addr constant [2 x [16 x i8]] [[16 x i8] c"\00\04\01\02\05\08\0C\09\06\03\07\0A\0D\0E\0B\0F", [16 x i8] c"\00\01\04\02\03\05\06\07\08\09\0A\0B\0C\0D\0E\0F"], align 1
@x264_zigzag_scan8 = internal unnamed_addr constant [2 x [64 x i8]] [[64 x i8] c"\00\08\01\02\09\10\18\11\0A\03\04\0B\12\19 (!\1A\13\0C\05\06\0D\14\1B\22)081*#\1C\15\0E\07\0F\16\1D$+29:3,%\1E\17\1F&-4;<5.'/6=>7?", [64 x i8] c"\00\01\02\08\09\03\04\0A\10\0B\05\06\07\0C\11\18\12\0D\0E\0F\13\19 \1A\14\15\16\17\1B!(\22\1C\1D\1E\1F#)0*$%&'+12,-./3894567:;<=>?"], align 1

; Function Attrs: nofree nounwind
define hidden void @x264_8_sei_write(%struct.bs_s* %s, i8* nocapture readonly %payload, i32 %payload_size, i32 %payload_type) local_unnamed_addr #0 {
entry:
  %p.i = getelementptr inbounds %struct.bs_s, %struct.bs_s* %s, i32 0, i32 1
  %0 = load i8*, i8** %p.i, align 4, !tbaa !2
  %1 = ptrtoint i8* %0 to i32
  %and.i = and i32 %1, 3
  %tobool.i = icmp eq i32 %and.i, 0
  %2 = bitcast i8* %0 to i32*
  br i1 %tobool.i, label %bs_realign.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %idx.neg.i = sub nsw i32 0, %and.i
  %add.ptr.i = getelementptr inbounds i8, i8* %0, i32 %idx.neg.i
  store i8* %add.ptr.i, i8** %p.i, align 4, !tbaa !2
  %sub.i = shl nuw nsw i32 %and.i, 3
  %mul.i = sub nuw nsw i32 32, %sub.i
  %i_left.i = getelementptr inbounds %struct.bs_s, %struct.bs_s* %s, i32 0, i32 4
  store i32 %mul.i, i32* %i_left.i, align 4, !tbaa !8
  %.cast.i = bitcast i8* %add.ptr.i to i32*
  %3 = load i32, i32* %.cast.i, align 4, !tbaa !9
  %add5.i.i = tail call i32 @llvm.bswap.i32(i32 %3) #9
  %cur_bits.i = getelementptr inbounds %struct.bs_s, %struct.bs_s* %s, i32 0, i32 3
  %shr.i = lshr i32 %add5.i.i, %mul.i
  store i32 %shr.i, i32* %cur_bits.i, align 4, !tbaa !10
  br label %bs_realign.exit

bs_realign.exit:                                  ; preds = %entry, %if.then.i
  %4 = phi i32* [ %2, %entry ], [ %.cast.i, %if.then.i ]
  %sub = add nsw i32 %payload_type, -255
  %cmp129 = icmp slt i32 %payload_type, 255
  %i_left.i87.phi.trans.insert = getelementptr inbounds %struct.bs_s, %struct.bs_s* %s, i32 0, i32 4
  br i1 %cmp129, label %bs_realign.exit.for.end_crit_edge, label %for.body.lr.ph

bs_realign.exit.for.end_crit_edge:                ; preds = %bs_realign.exit
  %.pre132 = load i32, i32* %i_left.i87.phi.trans.insert, align 4, !tbaa !8
  br label %for.end

for.body.lr.ph:                                   ; preds = %bs_realign.exit
  %cur_bits5.i114 = getelementptr inbounds %struct.bs_s, %struct.bs_s* %s, i32 0, i32 3
  %.pre = load i32, i32* %i_left.i87.phi.trans.insert, align 4, !tbaa !8
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %bs_write.exit124
  %5 = phi i32* [ %4, %for.body.lr.ph ], [ %18, %bs_write.exit124 ]
  %6 = phi i32* [ %4, %for.body.lr.ph ], [ %19, %bs_write.exit124 ]
  %7 = phi i32* [ %4, %for.body.lr.ph ], [ %20, %bs_write.exit124 ]
  %8 = phi i32* [ %4, %for.body.lr.ph ], [ %21, %bs_write.exit124 ]
  %9 = phi i32* [ %4, %for.body.lr.ph ], [ %22, %bs_write.exit124 ]
  %10 = phi i32* [ %4, %for.body.lr.ph ], [ %23, %bs_write.exit124 ]
  %11 = phi i32* [ %4, %for.body.lr.ph ], [ %24, %bs_write.exit124 ]
  %12 = phi i32* [ %4, %for.body.lr.ph ], [ %25, %bs_write.exit124 ]
  %13 = phi i32 [ %.pre, %for.body.lr.ph ], [ %storemerge.i123, %bs_write.exit124 ]
  %i.0130 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %bs_write.exit124 ]
  %cmp.i107 = icmp sgt i32 %13, 8
  br i1 %cmp.i107, label %if.then.i112, label %if.else.i122

if.then.i112:                                     ; preds = %for.body
  %14 = load i32, i32* %cur_bits5.i114, align 4, !tbaa !10
  %shl.i109 = shl i32 %14, 8
  %or.i110 = or i32 %shl.i109, 255
  store i32 %or.i110, i32* %cur_bits5.i114, align 4, !tbaa !10
  %sub.i111 = add nsw i32 %13, -8
  br label %bs_write.exit124

if.else.i122:                                     ; preds = %for.body
  %sub4.i113 = sub nsw i32 8, %13
  %15 = load i32, i32* %cur_bits5.i114, align 4, !tbaa !10
  %shl7.i115 = shl i32 %15, %13
  %shr.i116 = lshr i32 255, %sub4.i113
  %or8.i117 = or i32 %shl7.i115, %shr.i116
  %add5.i.i.i118 = tail call i32 @llvm.bswap.i32(i32 %or8.i117) #9
  store i32 %add5.i.i.i118, i32* %12, align 4, !tbaa !9
  %16 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i120 = getelementptr inbounds i8, i8* %16, i32 4
  store i8* %add.ptr.i120, i8** %p.i, align 4, !tbaa !2
  store i32 255, i32* %cur_bits5.i114, align 4, !tbaa !10
  %sub13.i121 = add nsw i32 %13, 24
  %17 = bitcast i8* %add.ptr.i120 to i32*
  br label %bs_write.exit124

bs_write.exit124:                                 ; preds = %if.then.i112, %if.else.i122
  %18 = phi i32* [ %17, %if.else.i122 ], [ %5, %if.then.i112 ]
  %19 = phi i32* [ %17, %if.else.i122 ], [ %6, %if.then.i112 ]
  %20 = phi i32* [ %17, %if.else.i122 ], [ %7, %if.then.i112 ]
  %21 = phi i32* [ %17, %if.else.i122 ], [ %8, %if.then.i112 ]
  %22 = phi i32* [ %17, %if.else.i122 ], [ %9, %if.then.i112 ]
  %23 = phi i32* [ %17, %if.else.i122 ], [ %10, %if.then.i112 ]
  %24 = phi i32* [ %17, %if.else.i122 ], [ %11, %if.then.i112 ]
  %25 = phi i32* [ %17, %if.else.i122 ], [ %12, %if.then.i112 ]
  %storemerge.i123 = phi i32 [ %sub13.i121, %if.else.i122 ], [ %sub.i111, %if.then.i112 ]
  store i32 %storemerge.i123, i32* %i_left.i87.phi.trans.insert, align 4, !tbaa !8
  %add = add nuw nsw i32 %i.0130, 255
  %cmp = icmp sgt i32 %add, %sub
  br i1 %cmp, label %for.end, label %for.body

for.end:                                          ; preds = %bs_write.exit124, %bs_realign.exit.for.end_crit_edge
  %26 = phi i32* [ %4, %bs_realign.exit.for.end_crit_edge ], [ %18, %bs_write.exit124 ]
  %27 = phi i32* [ %4, %bs_realign.exit.for.end_crit_edge ], [ %19, %bs_write.exit124 ]
  %28 = phi i32* [ %4, %bs_realign.exit.for.end_crit_edge ], [ %20, %bs_write.exit124 ]
  %29 = phi i32* [ %4, %bs_realign.exit.for.end_crit_edge ], [ %21, %bs_write.exit124 ]
  %30 = phi i32* [ %4, %bs_realign.exit.for.end_crit_edge ], [ %22, %bs_write.exit124 ]
  %31 = phi i32* [ %4, %bs_realign.exit.for.end_crit_edge ], [ %23, %bs_write.exit124 ]
  %32 = phi i32* [ %4, %bs_realign.exit.for.end_crit_edge ], [ %24, %bs_write.exit124 ]
  %33 = phi i32 [ %.pre132, %bs_realign.exit.for.end_crit_edge ], [ %storemerge.i123, %bs_write.exit124 ]
  %i.0.lcssa = phi i32 [ 0, %bs_realign.exit.for.end_crit_edge ], [ %add, %bs_write.exit124 ]
  %sub1 = sub nsw i32 %payload_type, %i.0.lcssa
  %i_left.i87 = getelementptr inbounds %struct.bs_s, %struct.bs_s* %s, i32 0, i32 4
  %cmp.i88 = icmp sgt i32 %33, 8
  br i1 %cmp.i88, label %if.then.i93, label %if.else.i103

if.then.i93:                                      ; preds = %for.end
  %cur_bits.i89 = getelementptr inbounds %struct.bs_s, %struct.bs_s* %s, i32 0, i32 3
  %34 = load i32, i32* %cur_bits.i89, align 4, !tbaa !10
  %shl.i90 = shl i32 %34, 8
  %or.i91 = or i32 %shl.i90, %sub1
  store i32 %or.i91, i32* %cur_bits.i89, align 4, !tbaa !10
  %sub.i92 = add nsw i32 %33, -8
  br label %bs_write.exit105

if.else.i103:                                     ; preds = %for.end
  %sub4.i94 = sub nsw i32 8, %33
  %cur_bits5.i95 = getelementptr inbounds %struct.bs_s, %struct.bs_s* %s, i32 0, i32 3
  %35 = load i32, i32* %cur_bits5.i95, align 4, !tbaa !10
  %shl7.i96 = shl i32 %35, %33
  %shr.i97 = lshr i32 %sub1, %sub4.i94
  %or8.i98 = or i32 %shl7.i96, %shr.i97
  %add5.i.i.i99 = tail call i32 @llvm.bswap.i32(i32 %or8.i98) #9
  store i32 %add5.i.i.i99, i32* %32, align 4, !tbaa !9
  %36 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i101 = getelementptr inbounds i8, i8* %36, i32 4
  store i8* %add.ptr.i101, i8** %p.i, align 4, !tbaa !2
  store i32 %sub1, i32* %cur_bits5.i95, align 4, !tbaa !10
  %sub13.i102 = add nsw i32 %33, 24
  %37 = bitcast i8* %add.ptr.i101 to i32*
  br label %bs_write.exit105

bs_write.exit105:                                 ; preds = %if.then.i93, %if.else.i103
  %38 = phi i32* [ %37, %if.else.i103 ], [ %26, %if.then.i93 ]
  %39 = phi i32* [ %37, %if.else.i103 ], [ %27, %if.then.i93 ]
  %40 = phi i32* [ %37, %if.else.i103 ], [ %28, %if.then.i93 ]
  %41 = phi i32* [ %37, %if.else.i103 ], [ %29, %if.then.i93 ]
  %42 = phi i32* [ %37, %if.else.i103 ], [ %30, %if.then.i93 ]
  %43 = phi i32* [ %37, %if.else.i103 ], [ %31, %if.then.i93 ]
  %44 = phi i32 [ %sub1, %if.else.i103 ], [ %or.i91, %if.then.i93 ]
  %storemerge.i104 = phi i32 [ %sub13.i102, %if.else.i103 ], [ %sub.i92, %if.then.i93 ]
  store i32 %storemerge.i104, i32* %i_left.i87, align 4, !tbaa !8
  %sub3 = add nsw i32 %payload_size, -255
  %cmp4127 = icmp slt i32 %payload_size, 255
  br i1 %cmp4127, label %for.end8, label %for.body5.lr.ph

for.body5.lr.ph:                                  ; preds = %bs_write.exit105
  %cur_bits5.i76 = getelementptr inbounds %struct.bs_s, %struct.bs_s* %s, i32 0, i32 3
  br label %for.body5

for.body5:                                        ; preds = %for.body5.lr.ph, %bs_write.exit86
  %45 = phi i32* [ %38, %for.body5.lr.ph ], [ %55, %bs_write.exit86 ]
  %46 = phi i32* [ %39, %for.body5.lr.ph ], [ %56, %bs_write.exit86 ]
  %47 = phi i32* [ %40, %for.body5.lr.ph ], [ %57, %bs_write.exit86 ]
  %48 = phi i32* [ %41, %for.body5.lr.ph ], [ %58, %bs_write.exit86 ]
  %49 = phi i32* [ %42, %for.body5.lr.ph ], [ %59, %bs_write.exit86 ]
  %50 = phi i32* [ %43, %for.body5.lr.ph ], [ %60, %bs_write.exit86 ]
  %51 = phi i32 [ %44, %for.body5.lr.ph ], [ %61, %bs_write.exit86 ]
  %52 = phi i32 [ %storemerge.i104, %for.body5.lr.ph ], [ %storemerge.i85, %bs_write.exit86 ]
  %i.1128 = phi i32 [ 0, %for.body5.lr.ph ], [ %add7, %bs_write.exit86 ]
  %cmp.i69 = icmp sgt i32 %52, 8
  br i1 %cmp.i69, label %if.then.i74, label %if.else.i84

if.then.i74:                                      ; preds = %for.body5
  %shl.i71 = shl i32 %51, 8
  %or.i72 = or i32 %shl.i71, 255
  store i32 %or.i72, i32* %cur_bits5.i76, align 4, !tbaa !10
  %sub.i73 = add nsw i32 %52, -8
  br label %bs_write.exit86

if.else.i84:                                      ; preds = %for.body5
  %sub4.i75 = sub nsw i32 8, %52
  %shl7.i77 = shl i32 %51, %52
  %shr.i78 = lshr i32 255, %sub4.i75
  %or8.i79 = or i32 %shl7.i77, %shr.i78
  %add5.i.i.i80 = tail call i32 @llvm.bswap.i32(i32 %or8.i79) #9
  store i32 %add5.i.i.i80, i32* %50, align 4, !tbaa !9
  %53 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i82 = getelementptr inbounds i8, i8* %53, i32 4
  store i8* %add.ptr.i82, i8** %p.i, align 4, !tbaa !2
  store i32 255, i32* %cur_bits5.i76, align 4, !tbaa !10
  %sub13.i83 = add nsw i32 %52, 24
  %54 = bitcast i8* %add.ptr.i82 to i32*
  br label %bs_write.exit86

bs_write.exit86:                                  ; preds = %if.then.i74, %if.else.i84
  %55 = phi i32* [ %54, %if.else.i84 ], [ %45, %if.then.i74 ]
  %56 = phi i32* [ %54, %if.else.i84 ], [ %46, %if.then.i74 ]
  %57 = phi i32* [ %54, %if.else.i84 ], [ %47, %if.then.i74 ]
  %58 = phi i32* [ %54, %if.else.i84 ], [ %48, %if.then.i74 ]
  %59 = phi i32* [ %54, %if.else.i84 ], [ %49, %if.then.i74 ]
  %60 = phi i32* [ %54, %if.else.i84 ], [ %50, %if.then.i74 ]
  %61 = phi i32 [ 255, %if.else.i84 ], [ %or.i72, %if.then.i74 ]
  %storemerge.i85 = phi i32 [ %sub13.i83, %if.else.i84 ], [ %sub.i73, %if.then.i74 ]
  store i32 %storemerge.i85, i32* %i_left.i87, align 4, !tbaa !8
  %add7 = add nuw nsw i32 %i.1128, 255
  %cmp4 = icmp sgt i32 %add7, %sub3
  br i1 %cmp4, label %for.end8, label %for.body5

for.end8:                                         ; preds = %bs_write.exit86, %bs_write.exit105
  %62 = phi i32* [ %38, %bs_write.exit105 ], [ %55, %bs_write.exit86 ]
  %63 = phi i32* [ %39, %bs_write.exit105 ], [ %56, %bs_write.exit86 ]
  %64 = phi i32* [ %40, %bs_write.exit105 ], [ %57, %bs_write.exit86 ]
  %65 = phi i32* [ %41, %bs_write.exit105 ], [ %58, %bs_write.exit86 ]
  %66 = phi i32* [ %42, %bs_write.exit105 ], [ %59, %bs_write.exit86 ]
  %67 = phi i32 [ %44, %bs_write.exit105 ], [ %61, %bs_write.exit86 ]
  %68 = phi i32 [ %storemerge.i104, %bs_write.exit105 ], [ %storemerge.i85, %bs_write.exit86 ]
  %i.1.lcssa = phi i32 [ 0, %bs_write.exit105 ], [ %add7, %bs_write.exit86 ]
  %sub9 = sub nsw i32 %payload_size, %i.1.lcssa
  %cmp.i50 = icmp sgt i32 %68, 8
  br i1 %cmp.i50, label %if.then.i55, label %if.else.i65

if.then.i55:                                      ; preds = %for.end8
  %cur_bits.i51 = getelementptr inbounds %struct.bs_s, %struct.bs_s* %s, i32 0, i32 3
  %shl.i52 = shl i32 %67, 8
  %or.i53 = or i32 %shl.i52, %sub9
  store i32 %or.i53, i32* %cur_bits.i51, align 4, !tbaa !10
  %sub.i54 = add nsw i32 %68, -8
  br label %bs_write.exit67

if.else.i65:                                      ; preds = %for.end8
  %sub4.i56 = sub nsw i32 8, %68
  %cur_bits5.i57 = getelementptr inbounds %struct.bs_s, %struct.bs_s* %s, i32 0, i32 3
  %shl7.i58 = shl i32 %67, %68
  %shr.i59 = lshr i32 %sub9, %sub4.i56
  %or8.i60 = or i32 %shl7.i58, %shr.i59
  %add5.i.i.i61 = tail call i32 @llvm.bswap.i32(i32 %or8.i60) #9
  store i32 %add5.i.i.i61, i32* %66, align 4, !tbaa !9
  %69 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i63 = getelementptr inbounds i8, i8* %69, i32 4
  store i8* %add.ptr.i63, i8** %p.i, align 4, !tbaa !2
  store i32 %sub9, i32* %cur_bits5.i57, align 4, !tbaa !10
  %sub13.i64 = add nsw i32 %68, 24
  %70 = bitcast i8* %add.ptr.i63 to i32*
  br label %bs_write.exit67

bs_write.exit67:                                  ; preds = %if.then.i55, %if.else.i65
  %71 = phi i32* [ %70, %if.else.i65 ], [ %62, %if.then.i55 ]
  %72 = phi i32* [ %70, %if.else.i65 ], [ %63, %if.then.i55 ]
  %73 = phi i32* [ %70, %if.else.i65 ], [ %64, %if.then.i55 ]
  %74 = phi i32* [ %70, %if.else.i65 ], [ %65, %if.then.i55 ]
  %75 = phi i32 [ %sub9, %if.else.i65 ], [ %or.i53, %if.then.i55 ]
  %storemerge.i66 = phi i32 [ %sub13.i64, %if.else.i65 ], [ %sub.i54, %if.then.i55 ]
  store i32 %storemerge.i66, i32* %i_left.i87, align 4, !tbaa !8
  %cmp11125 = icmp sgt i32 %payload_size, 0
  br i1 %cmp11125, label %for.body12.lr.ph, label %for.end14

for.body12.lr.ph:                                 ; preds = %bs_write.exit67
  %cur_bits5.i = getelementptr inbounds %struct.bs_s, %struct.bs_s* %s, i32 0, i32 3
  br label %for.body12

for.body12:                                       ; preds = %bs_write.exit, %for.body12.lr.ph
  %76 = phi i32* [ %71, %for.body12.lr.ph ], [ %85, %bs_write.exit ]
  %77 = phi i32* [ %72, %for.body12.lr.ph ], [ %86, %bs_write.exit ]
  %78 = phi i32* [ %73, %for.body12.lr.ph ], [ %87, %bs_write.exit ]
  %79 = phi i32* [ %74, %for.body12.lr.ph ], [ %88, %bs_write.exit ]
  %80 = phi i32 [ %75, %for.body12.lr.ph ], [ %89, %bs_write.exit ]
  %81 = phi i32 [ %storemerge.i66, %for.body12.lr.ph ], [ %storemerge.i, %bs_write.exit ]
  %i.2126 = phi i32 [ 0, %for.body12.lr.ph ], [ %inc, %bs_write.exit ]
  %arrayidx = getelementptr inbounds i8, i8* %payload, i32 %i.2126
  %82 = load i8, i8* %arrayidx, align 1, !tbaa !9
  %conv = zext i8 %82 to i32
  %cmp.i = icmp sgt i32 %81, 8
  br i1 %cmp.i, label %if.then.i44, label %if.else.i

if.then.i44:                                      ; preds = %for.body12
  %shl.i42 = shl i32 %80, 8
  %or.i = or i32 %shl.i42, %conv
  store i32 %or.i, i32* %cur_bits5.i, align 4, !tbaa !10
  %sub.i43 = add nsw i32 %81, -8
  br label %bs_write.exit

if.else.i:                                        ; preds = %for.body12
  %sub4.i = sub nsw i32 8, %81
  %shl7.i = shl i32 %80, %81
  %shr.i45 = lshr i32 %conv, %sub4.i
  %or8.i = or i32 %shl7.i, %shr.i45
  %add5.i.i.i46 = tail call i32 @llvm.bswap.i32(i32 %or8.i) #9
  store i32 %add5.i.i.i46, i32* %79, align 4, !tbaa !9
  %83 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i48 = getelementptr inbounds i8, i8* %83, i32 4
  store i8* %add.ptr.i48, i8** %p.i, align 4, !tbaa !2
  store i32 %conv, i32* %cur_bits5.i, align 4, !tbaa !10
  %sub13.i = add nsw i32 %81, 24
  %84 = bitcast i8* %add.ptr.i48 to i32*
  br label %bs_write.exit

bs_write.exit:                                    ; preds = %if.then.i44, %if.else.i
  %85 = phi i32* [ %84, %if.else.i ], [ %76, %if.then.i44 ]
  %86 = phi i32* [ %84, %if.else.i ], [ %77, %if.then.i44 ]
  %87 = phi i32* [ %84, %if.else.i ], [ %78, %if.then.i44 ]
  %88 = phi i32* [ %84, %if.else.i ], [ %79, %if.then.i44 ]
  %89 = phi i32 [ %conv, %if.else.i ], [ %or.i, %if.then.i44 ]
  %storemerge.i = phi i32 [ %sub13.i, %if.else.i ], [ %sub.i43, %if.then.i44 ]
  store i32 %storemerge.i, i32* %i_left.i87, align 4, !tbaa !8
  %inc = add nuw nsw i32 %i.2126, 1
  %exitcond = icmp eq i32 %inc, %payload_size
  br i1 %exitcond, label %for.end14, label %for.body12

for.end14:                                        ; preds = %bs_write.exit, %bs_write.exit67
  %90 = phi i32* [ %71, %bs_write.exit67 ], [ %85, %bs_write.exit ]
  %91 = phi i32* [ %72, %bs_write.exit67 ], [ %86, %bs_write.exit ]
  %92 = phi i32* [ %73, %bs_write.exit67 ], [ %87, %bs_write.exit ]
  %93 = phi i32 [ %storemerge.i66, %bs_write.exit67 ], [ %storemerge.i, %bs_write.exit ]
  %94 = phi i32 [ %75, %bs_write.exit67 ], [ %89, %bs_write.exit ]
  %cur_bits.i.i = getelementptr inbounds %struct.bs_s, %struct.bs_s* %s, i32 0, i32 3
  %shl.i.i = shl i32 %94, 1
  %or.i.i = or i32 %shl.i.i, 1
  store i32 %or.i.i, i32* %cur_bits.i.i, align 4, !tbaa !10
  %dec.i.i = add nsw i32 %93, -1
  store i32 %dec.i.i, i32* %i_left.i87, align 4, !tbaa !8
  %cmp.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.i.i, label %bs_write1.exit.thread.i, label %bs_write1.exit.i

bs_write1.exit.thread.i:                          ; preds = %for.end14
  %add5.i.i.i = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #9
  store i32 %add5.i.i.i, i32* %91, align 4, !tbaa !9
  %95 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i.i = getelementptr inbounds i8, i8* %95, i32 4
  store i8* %add.ptr.i.i, i8** %p.i, align 4, !tbaa !2
  store i32 32, i32* %i_left.i87, align 4, !tbaa !8
  %.pre.i = load i32, i32* %cur_bits.i.i, align 4, !tbaa !10
  %96 = bitcast i8* %add.ptr.i.i to i32*
  br label %if.then.i7.i

bs_write1.exit.i:                                 ; preds = %for.end14
  %and.i39 = and i32 %dec.i.i, 7
  %97 = icmp sgt i32 %93, 8
  br i1 %97, label %if.then.i7.i, label %if.else.i.i

if.then.i7.i:                                     ; preds = %bs_write1.exit.i, %bs_write1.exit.thread.i
  %98 = phi i32* [ %96, %bs_write1.exit.thread.i ], [ %90, %bs_write1.exit.i ]
  %and12.i = phi i32 [ 0, %bs_write1.exit.thread.i ], [ %and.i39, %bs_write1.exit.i ]
  %99 = phi i32 [ 32, %bs_write1.exit.thread.i ], [ %dec.i.i, %bs_write1.exit.i ]
  %100 = phi i32 [ %.pre.i, %bs_write1.exit.thread.i ], [ %or.i.i, %bs_write1.exit.i ]
  %shl.i6.i = shl i32 %100, %and12.i
  store i32 %shl.i6.i, i32* %cur_bits.i.i, align 4, !tbaa !10
  br label %bs_rbsp_trailing.exit

if.else.i.i:                                      ; preds = %bs_write1.exit.i
  %shl7.i.i = shl i32 %or.i.i, %dec.i.i
  %add5.i.i.i.i = tail call i32 @llvm.bswap.i32(i32 %shl7.i.i) #9
  store i32 %add5.i.i.i.i, i32* %92, align 4, !tbaa !9
  %101 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i9.i = getelementptr inbounds i8, i8* %101, i32 4
  store i8* %add.ptr.i9.i, i8** %p.i, align 4, !tbaa !2
  store i32 0, i32* %cur_bits.i.i, align 4, !tbaa !10
  %sub4.i10.i = add nsw i32 %93, 31
  %102 = bitcast i8* %add.ptr.i9.i to i32*
  br label %bs_rbsp_trailing.exit

bs_rbsp_trailing.exit:                            ; preds = %if.then.i7.i, %if.else.i.i
  %103 = phi i32* [ %102, %if.else.i.i ], [ %98, %if.then.i7.i ]
  %104 = phi i32 [ 0, %if.else.i.i ], [ %shl.i6.i, %if.then.i7.i ]
  %and13.i = phi i32 [ %and.i39, %if.else.i.i ], [ %and12.i, %if.then.i7.i ]
  %sub4.i10.pn.i = phi i32 [ %sub4.i10.i, %if.else.i.i ], [ %99, %if.then.i7.i ]
  %storemerge.i.i = sub nsw i32 %sub4.i10.pn.i, %and13.i
  store i32 %storemerge.i.i, i32* %i_left.i87, align 4, !tbaa !8
  %and.i33 = and i32 %storemerge.i.i, 31
  %shl.i = shl i32 %104, %and.i33
  %add5.i.i34 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #9
  store i32 %add5.i.i34, i32* %103, align 4, !tbaa !9
  %105 = load i32, i32* %i_left.i87, align 4, !tbaa !8
  %shr.i36 = ashr i32 %105, 3
  %sub.i37 = sub nsw i32 4, %shr.i36
  %106 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i38 = getelementptr inbounds i8, i8* %106, i32 %sub.i37
  store i8* %add.ptr.i38, i8** %p.i, align 4, !tbaa !2
  store i32 32, i32* %i_left.i87, align 4, !tbaa !8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nounwind
define hidden void @x264_8_sps_init(%struct.x264_sps_t* %sps, i32 %i_id, %struct.x264_param_t* readonly %param) local_unnamed_addr #0 {
entry:
  %i_csp = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 9
  %0 = load i32, i32* %i_csp, align 4, !tbaa !11
  %and = and i32 %0, 255
  %i_id1 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 0
  store i32 %i_id, i32* %i_id1, align 4, !tbaa !21
  %i_width = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 7
  %1 = load i32, i32* %i_width, align 4, !tbaa !25
  %add = add nsw i32 %1, 15
  %div = sdiv i32 %add, 16
  %i_mb_width = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 12
  store i32 %div, i32* %i_mb_width, align 4, !tbaa !26
  %i_height = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 8
  %2 = load i32, i32* %i_height, align 8, !tbaa !27
  %add2 = add nsw i32 %2, 15
  %div3 = sdiv i32 %add2, 16
  %i_mb_height = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 13
  store i32 %div3, i32* %i_mb_height, align 4, !tbaa !28
  %b_interlaced = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 34
  %3 = load i32, i32* %b_interlaced, align 8, !tbaa !29
  %tobool = icmp eq i32 %3, 0
  br i1 %tobool, label %lor.end, label %lor.end.thread

lor.end.thread:                                   ; preds = %entry
  %b_frame_mbs_only854 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 14
  store i32 0, i32* %b_frame_mbs_only854, align 4, !tbaa !30
  br label %if.then

lor.end:                                          ; preds = %entry
  %b_fake_interlaced = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 70
  %4 = load i32, i32* %b_fake_interlaced, align 8, !tbaa !31
  %tobool4 = icmp ne i32 %4, 0
  %lnot = xor i1 %tobool4, true
  %lnot.ext = zext i1 %lnot to i32
  %b_frame_mbs_only = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 14
  store i32 %lnot.ext, i32* %b_frame_mbs_only, align 4, !tbaa !30
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.end.thread, %lor.end
  %add8 = add nsw i32 %div3, 1
  %and9 = and i32 %add8, -2
  store i32 %and9, i32* %i_mb_height, align 4, !tbaa !28
  br label %if.end

if.end:                                           ; preds = %lor.end, %if.then
  %5 = phi i32 [ %div3, %lor.end ], [ %and9, %if.then ]
  %cmp = icmp ugt i32 %and, 11
  br i1 %cmp, label %cond.end16, label %cond.false

cond.false:                                       ; preds = %if.end
  %cmp11 = icmp ugt i32 %and, 5
  br i1 %cmp11, label %cond.end16, label %cond.false13

cond.false13:                                     ; preds = %cond.false
  %cmp14 = icmp ugt i32 %and, 1
  %cond = zext i1 %cmp14 to i32
  br label %cond.end16

cond.end16:                                       ; preds = %cond.false13, %cond.false, %if.end
  %cond17 = phi i32 [ 3, %if.end ], [ %cond, %cond.false13 ], [ 2, %cond.false ]
  %i_chroma_format_idc = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 22
  store i32 %cond17, i32* %i_chroma_format_idc, align 4, !tbaa !32
  %i_rc_method = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 52, i32 0
  %6 = load i32, i32* %i_rc_method, align 8, !tbaa !33
  %cmp18 = icmp eq i32 %6, 0
  br i1 %cmp18, label %land.end, label %land.end.thread

land.end.thread:                                  ; preds = %cond.end16
  %b_qpprime_y_zero_transform_bypass856 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 21
  store i32 0, i32* %b_qpprime_y_zero_transform_bypass856, align 4, !tbaa !34
  br label %lor.lhs.false

land.end:                                         ; preds = %cond.end16
  %i_qp_constant = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 52, i32 1
  %7 = load i32, i32* %i_qp_constant, align 4, !tbaa !35
  %cmp20 = icmp eq i32 %7, 0
  %land.ext = zext i1 %cmp20 to i32
  %b_qpprime_y_zero_transform_bypass = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 21
  store i32 %land.ext, i32* %b_qpprime_y_zero_transform_bypass, align 4, !tbaa !34
  br i1 %cmp20, label %if.end59, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.end.thread, %land.end
  switch i32 %cond17, label %if.else30 [
    i32 3, label %if.end59
    i32 2, label %if.then28
  ]

if.then28:                                        ; preds = %lor.lhs.false
  br label %if.end59

if.else30:                                        ; preds = %lor.lhs.false
  %b_transform_8x8 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 2
  %8 = load i32, i32* %b_transform_8x8, align 4, !tbaa !36
  %tobool31 = icmp eq i32 %8, 0
  br i1 %tobool31, label %lor.lhs.false32, label %if.end59

lor.lhs.false32:                                  ; preds = %if.else30
  %i_cqm_preset = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 36
  %9 = load i32, i32* %i_cqm_preset, align 8, !tbaa !37
  %cmp33 = icmp ne i32 %9, 0
  %cmp36 = icmp eq i32 %cond17, 0
  %or.cond = or i1 %cmp36, %cmp33
  br i1 %or.cond, label %if.end59, label %if.else39

if.else39:                                        ; preds = %lor.lhs.false32
  %b_cabac = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 32
  %10 = load i32, i32* %b_cabac, align 8, !tbaa !38
  %tobool40 = icmp eq i32 %10, 0
  br i1 %tobool40, label %lor.lhs.false41, label %if.end59

lor.lhs.false41:                                  ; preds = %if.else39
  %i_bframe = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 21
  %11 = load i32, i32* %i_bframe, align 4, !tbaa !39
  %cmp42 = icmp sgt i32 %11, 0
  %tobool.not = xor i1 %tobool, true
  %brmerge = or i1 %cmp42, %tobool.not
  br i1 %brmerge, label %if.end59, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %lor.lhs.false41
  %b_fake_interlaced47 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 70
  %12 = load i32, i32* %b_fake_interlaced47, align 8, !tbaa !31
  %tobool48 = icmp eq i32 %12, 0
  br i1 %tobool48, label %lor.lhs.false49, label %if.end59

lor.lhs.false49:                                  ; preds = %lor.lhs.false46
  %i_weighted_pred = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 3
  %13 = load i32, i32* %i_weighted_pred, align 4, !tbaa !40
  %cmp51 = icmp sgt i32 %13, 0
  %spec.select876 = select i1 %cmp51, i32 77, i32 66
  br label %if.end59

if.end59:                                         ; preds = %lor.lhs.false49, %if.else39, %lor.lhs.false46, %lor.lhs.false41, %if.else30, %lor.lhs.false32, %land.end, %lor.lhs.false, %if.then28
  %.sink = phi i32 [ 122, %if.then28 ], [ 244, %lor.lhs.false ], [ 244, %land.end ], [ 100, %lor.lhs.false32 ], [ 100, %if.else30 ], [ 77, %lor.lhs.false41 ], [ 77, %lor.lhs.false46 ], [ 77, %if.else39 ], [ %spec.select876, %lor.lhs.false49 ]
  %i_profile_idc29 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 1
  store i32 %.sink, i32* %i_profile_idc29, align 4, !tbaa !41
  %cmp61 = icmp eq i32 %.sink, 66
  %conv = zext i1 %cmp61 to i32
  %b_constraint_set0 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 3
  store i32 %conv, i32* %b_constraint_set0, align 4, !tbaa !42
  %cmp63 = icmp ult i32 %.sink, 78
  %conv64 = zext i1 %cmp63 to i32
  %b_constraint_set1 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 4
  store i32 %conv64, i32* %b_constraint_set1, align 4, !tbaa !43
  %b_constraint_set2 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 5
  store i32 0, i32* %b_constraint_set2, align 4, !tbaa !44
  %b_constraint_set3 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 6
  store i32 0, i32* %b_constraint_set3, align 4, !tbaa !45
  %i_level_idc = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 11
  %14 = load i32, i32* %i_level_idc, align 4, !tbaa !46
  %i_level_idc65 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 2
  store i32 %14, i32* %i_level_idc65, align 4, !tbaa !47
  %cmp67 = icmp eq i32 %14, 9
  br i1 %cmp67, label %land.lhs.true, label %if.end79

land.lhs.true:                                    ; preds = %if.end59
  %trunc = trunc i32 %.sink to i8
  switch i8 %trunc, label %if.end79 [
    i8 66, label %if.then76
    i8 77, label %if.then76
  ]

if.then76:                                        ; preds = %land.lhs.true, %land.lhs.true
  store i32 1, i32* %b_constraint_set3, align 4, !tbaa !45
  store i32 11, i32* %i_level_idc65, align 4, !tbaa !47
  br label %if.end79

if.end79:                                         ; preds = %land.lhs.true, %if.then76, %if.end59
  %15 = phi i32 [ 0, %land.lhs.true ], [ 1, %if.then76 ], [ 0, %if.end59 ]
  %i_keyint_max = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 17
  %16 = load i32, i32* %i_keyint_max, align 4, !tbaa !48
  %cmp80 = icmp eq i32 %16, 1
  %cmp84 = icmp ugt i32 %.sink, 99
  %or.cond866 = and i1 %cmp84, %cmp80
  br i1 %or.cond866, label %if.then86, label %if.end88

if.then86:                                        ; preds = %if.end79
  store i32 1, i32* %b_constraint_set3, align 4, !tbaa !45
  br label %if.end88

if.end88:                                         ; preds = %if.then86, %if.end79
  %17 = phi i32 [ 1, %if.then86 ], [ %15, %if.end79 ]
  %i_bframe_pyramid = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 24
  %18 = load i32, i32* %i_bframe_pyramid, align 8, !tbaa !49
  %tobool89 = icmp eq i32 %18, 0
  br i1 %tobool89, label %cond.false91, label %cond.end95

cond.false91:                                     ; preds = %if.end88
  %i_bframe92 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 21
  %19 = load i32, i32* %i_bframe92, align 4, !tbaa !39
  %tobool93 = icmp ne i32 %19, 0
  %cond94 = zext i1 %tobool93 to i32
  br label %cond.end95

cond.end95:                                       ; preds = %if.end88, %cond.false91
  %cond96 = phi i32 [ %cond94, %cond.false91 ], [ 2, %if.end88 ]
  %i_num_reorder_frames = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 29
  store i32 %cond96, i32* %i_num_reorder_frames, align 4, !tbaa !50
  %i_frame_reference = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 15
  %20 = load i32, i32* %i_frame_reference, align 4, !tbaa !51
  %cond102 = select i1 %tobool89, i32 1, i32 4
  %i_dpb_size = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 16
  %21 = load i32, i32* %i_dpb_size, align 8, !tbaa !52
  %cmp103 = icmp sgt i32 %cond102, %21
  %cond102. = select i1 %cmp103, i32 %cond102, i32 %21
  %cmp113 = icmp slt i32 %cond96, %cond102.
  %add118 = add nuw nsw i32 %cond96, 1
  %spec.select867 = select i1 %cmp113, i32 %cond102., i32 %add118
  %cmp136 = icmp sgt i32 %20, %spec.select867
  %brmerge868 = or i1 %cmp113, %cmp136
  br i1 %brmerge868, label %cond.end181, label %cond.true207

cond.end181:                                      ; preds = %cond.end95
  %.mux = select i1 %cmp136, i32 %20, i32 %cond102.
  %cmp183 = icmp sgt i32 %.mux, 16
  br i1 %cmp183, label %cond.end275, label %cond.false186

cond.false186:                                    ; preds = %cond.end181
  br i1 %cmp113, label %cond.end226, label %cond.true207

cond.true207:                                     ; preds = %cond.end95, %cond.false186
  br label %cond.end226

cond.end226:                                      ; preds = %cond.false186, %cond.true207
  %cond227 = phi i32 [ %add118, %cond.true207 ], [ %cond102., %cond.false186 ]
  %cmp228 = icmp sgt i32 %20, %cond227
  %spec.select = select i1 %cmp228, i32 %20, i32 %spec.select867
  br label %cond.end275

cond.end275:                                      ; preds = %cond.end226, %cond.end181
  %cond276 = phi i32 [ 16, %cond.end181 ], [ %spec.select, %cond.end226 ]
  %i_num_ref_frames = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 10
  %i_max_dec_frame_buffering = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 30
  store i32 %cond276, i32* %i_max_dec_frame_buffering, align 4, !tbaa !53
  %cmp279 = icmp eq i32 %18, 1
  %22 = sext i1 %cmp279 to i32
  %sub = add nsw i32 %cond276, %22
  store i32 %sub, i32* %i_num_ref_frames, align 4, !tbaa !54
  br i1 %cmp80, label %if.then285, label %if.end289

if.then285:                                       ; preds = %cond.end275
  store i32 0, i32* %i_num_ref_frames, align 4, !tbaa !54
  store i32 0, i32* %i_max_dec_frame_buffering, align 4, !tbaa !53
  br label %if.end289

if.end289:                                        ; preds = %if.then285, %cond.end275
  %23 = phi i32 [ 0, %if.then285 ], [ %cond276, %cond.end275 ]
  %add298 = select i1 %tobool89, i32 1, i32 2
  %mul = mul nsw i32 %23, %add298
  %add299 = add nsw i32 %mul, 1
  %b_intra_refresh = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 20
  %24 = load i32, i32* %b_intra_refresh, align 8, !tbaa !55
  %tobool300 = icmp eq i32 %24, 0
  br i1 %tobool300, label %if.end325, label %if.then301

if.then301:                                       ; preds = %if.end289
  %cmp305 = icmp sgt i32 %div, %16
  %sub303 = add nsw i32 %div, -1
  %cond313 = select i1 %cmp305, i32 %16, i32 %sub303
  %i_bframe314 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 21
  %25 = load i32, i32* %i_bframe314, align 4, !tbaa !39
  %add315 = add nsw i32 %25, %cond313
  %cmp318 = icmp slt i32 %mul, %add315
  %cond324 = select i1 %cmp318, i32 %add315, i32 %add299
  br label %if.end325

if.end325:                                        ; preds = %if.end289, %if.then301
  %max_frame_num.0 = phi i32 [ %cond324, %if.then301 ], [ %add299, %if.end289 ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %if.end325
  %storemerge = phi i32 [ 4, %if.end325 ], [ %inc, %while.cond ]
  %shl = shl nuw i32 1, %storemerge
  %cmp327 = icmp sgt i32 %shl, %max_frame_num.0
  %inc = add nuw nsw i32 %storemerge, 1
  br i1 %cmp327, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond
  %i_log2_max_frame_num = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 7
  store i32 %storemerge, i32* %i_log2_max_frame_num, align 4, !tbaa !56
  %i_bframe330 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 21
  %26 = load i32, i32* %i_bframe330, align 4, !tbaa !39
  %tobool331 = icmp ne i32 %26, 0
  %tobool.not870 = xor i1 %tobool, true
  %brmerge871 = or i1 %tobool331, %tobool.not870
  br i1 %brmerge871, label %if.then342, label %lor.end337

lor.end337:                                       ; preds = %while.end
  %i_avcintra_class = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 27
  %27 = load i32, i32* %i_avcintra_class, align 4, !tbaa !57
  %tobool336 = icmp eq i32 %27, 0
  br i1 %tobool336, label %28, label %if.then342

28:                                               ; preds = %lor.end337
  %i_poc_type = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 8
  store i32 2, i32* %i_poc_type, align 4, !tbaa !58
  br label %if.end364

if.then342:                                       ; preds = %lor.end337, %while.end
  %i_poc_type859 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 8
  store i32 0, i32* %i_poc_type859, align 4, !tbaa !58
  %add344 = add nsw i32 %26, 2
  %mul352 = shl nuw nsw i32 %add298, 2
  %mul357 = mul i32 %mul352, %add344
  br label %while.cond354

while.cond354:                                    ; preds = %while.cond354, %if.then342
  %storemerge844 = phi i32 [ 4, %if.then342 ], [ %inc362, %while.cond354 ]
  %shl356 = shl nuw i32 1, %storemerge844
  %cmp358 = icmp sgt i32 %shl356, %mul357
  %inc362 = add nuw nsw i32 %storemerge844, 1
  br i1 %cmp358, label %if.end364.loopexit, label %while.cond354

if.end364.loopexit:                               ; preds = %while.cond354
  %i_log2_max_poc_lsb = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 9
  store i32 %storemerge844, i32* %i_log2_max_poc_lsb, align 4, !tbaa !59
  br label %if.end364

if.end364:                                        ; preds = %if.end364.loopexit, %28
  %b_vui = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 19
  store i32 1, i32* %b_vui, align 4, !tbaa !60
  %b_gaps_in_frame_num_value_allowed = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 11
  store i32 0, i32* %b_gaps_in_frame_num_value_allowed, align 4, !tbaa !61
  %b_mb_adaptive_frame_field = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 15
  store i32 %3, i32* %b_mb_adaptive_frame_field, align 4, !tbaa !62
  %b_direct8x8_inference = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 16
  store i32 1, i32* %b_direct8x8_inference, align 4, !tbaa !63
  %i_left.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 53, i32 0
  %29 = load i32, i32* %i_left.i, align 4, !tbaa !64
  %i_left1.i = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 18, i32 0
  store i32 %29, i32* %i_left1.i, align 4, !tbaa !65
  %i_top.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 53, i32 1
  %30 = load i32, i32* %i_top.i, align 4, !tbaa !66
  %i_top4.i = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 18, i32 2
  store i32 %30, i32* %i_top4.i, align 4, !tbaa !67
  %i_right.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 53, i32 2
  %31 = load i32, i32* %i_right.i, align 4, !tbaa !68
  %mul.i = shl nsw i32 %div, 4
  %add.i = sub i32 %mul.i, %1
  %sub.i = add i32 %add.i, %31
  %i_right7.i = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 18, i32 1
  store i32 %sub.i, i32* %i_right7.i, align 4, !tbaa !69
  %i_bottom.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 53, i32 3
  %32 = load i32, i32* %i_bottom.i, align 4, !tbaa !70
  %mul9.i = shl i32 %5, 4
  %add10.i = sub i32 %32, %2
  %sub11.i = add i32 %add10.i, %mul9.i
  %i_bottom13.i = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 18, i32 3
  store i32 %sub11.i, i32* %i_bottom13.i, align 4, !tbaa !71
  %33 = or i32 %30, %29
  %34 = or i32 %33, %sub.i
  %35 = or i32 %34, %sub11.i
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i32
  %b_crop.i = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 17
  store i32 %37, i32* %b_crop.i, align 4, !tbaa !72
  %b_aspect_ratio_info_present.i = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 0
  store i32 0, i32* %b_aspect_ratio_info_present.i, align 4, !tbaa !73
  %i_sar_width.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 14, i32 1
  %38 = load i32, i32* %i_sar_width.i, align 4, !tbaa !74
  %cmp.i = icmp sgt i32 %38, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %x264_8_sps_init_reconfigurable.exit

land.lhs.true.i:                                  ; preds = %if.end364
  %i_sar_height.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 14, i32 0
  %39 = load i32, i32* %i_sar_height.i, align 8, !tbaa !75
  %cmp28.i = icmp sgt i32 %39, 0
  br i1 %cmp28.i, label %if.then.i, label %x264_8_sps_init_reconfigurable.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  store i32 1, i32* %b_aspect_ratio_info_present.i, align 4, !tbaa !73
  %i_sar_width34.i = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 1
  store i32 %38, i32* %i_sar_width34.i, align 4, !tbaa !76
  %i_sar_height38.i = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 2
  store i32 %39, i32* %i_sar_height38.i, align 4, !tbaa !77
  br label %x264_8_sps_init_reconfigurable.exit

x264_8_sps_init_reconfigurable.exit:              ; preds = %if.end364, %land.lhs.true.i, %if.then.i
  %i_overscan = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 14, i32 2
  %40 = load i32, i32* %i_overscan, align 8, !tbaa !78
  %.off = add i32 %40, -1
  %41 = icmp ult i32 %.off, 2
  %land.ext375 = zext i1 %41 to i32
  %b_overscan_info_present = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 3
  store i32 %land.ext375, i32* %b_overscan_info_present, align 4, !tbaa !79
  br i1 %41, label %if.then380, label %if.end387

if.then380:                                       ; preds = %x264_8_sps_init_reconfigurable.exit
  %cmp383 = icmp eq i32 %40, 2
  %cond385 = zext i1 %cmp383 to i32
  %b_overscan_info = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 4
  store i32 %cond385, i32* %b_overscan_info, align 4, !tbaa !80
  br label %if.end387

if.end387:                                        ; preds = %if.then380, %x264_8_sps_init_reconfigurable.exit
  %b_signal_type_present = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 5
  store i32 0, i32* %b_signal_type_present, align 4, !tbaa !81
  %i_vidformat = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 14, i32 3
  %42 = load i32, i32* %i_vidformat, align 4, !tbaa !82
  %43 = icmp ult i32 %42, 5
  %cond402 = select i1 %43, i32 %42, i32 5
  %i_vidformat404 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 6
  store i32 %cond402, i32* %i_vidformat404, align 4, !tbaa !83
  %b_fullrange = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 14, i32 4
  %44 = load i32, i32* %b_fullrange, align 8, !tbaa !84
  %45 = icmp ult i32 %44, 2
  %cmp417 = icmp ugt i32 %and, 13
  %cond419 = zext i1 %cmp417 to i32
  %cond421 = select i1 %45, i32 %44, i32 %cond419
  %b_fullrange423 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 7
  store i32 %cond421, i32* %b_fullrange423, align 4, !tbaa !85
  %b_color_description_present = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 8
  store i32 0, i32* %b_color_description_present, align 4, !tbaa !86
  %i_colorprim = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 14, i32 5
  %46 = load i32, i32* %i_colorprim, align 4, !tbaa !87
  %47 = icmp ult i32 %46, 13
  %cond438 = select i1 %47, i32 %46, i32 2
  %i_colorprim440 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 9
  store i32 %cond438, i32* %i_colorprim440, align 4, !tbaa !88
  %i_transfer = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 14, i32 6
  %48 = load i32, i32* %i_transfer, align 8, !tbaa !89
  %49 = icmp ult i32 %48, 19
  %cond454 = select i1 %49, i32 %48, i32 2
  %i_transfer456 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 10
  store i32 %cond454, i32* %i_transfer456, align 4, !tbaa !90
  %i_colmatrix = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 14, i32 7
  %50 = load i32, i32* %i_colmatrix, align 4, !tbaa !91
  %51 = icmp ult i32 %50, 15
  %cond471 = select i1 %cmp417, i32 0, i32 2
  %cond473 = select i1 %51, i32 %50, i32 %cond471
  %i_colmatrix475 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 11
  store i32 %cond473, i32* %i_colmatrix475, align 4, !tbaa !92
  %cmp478 = icmp eq i32 %cond438, 2
  br i1 %cmp478, label %lor.lhs.false480, label %if.then490

lor.lhs.false480:                                 ; preds = %if.end387
  %cmp483 = icmp eq i32 %cond454, 2
  %cmp488 = icmp eq i32 %cond473, 2
  %or.cond850 = and i1 %cmp483, %cmp488
  br i1 %or.cond850, label %if.end493, label %if.then490

if.then490:                                       ; preds = %lor.lhs.false480, %if.end387
  store i32 1, i32* %b_color_description_present, align 4, !tbaa !86
  br label %if.end493

if.end493:                                        ; preds = %lor.lhs.false480, %if.then490
  %52 = phi i1 [ true, %lor.lhs.false480 ], [ false, %if.then490 ]
  %cmp496 = icmp ugt i32 %42, 4
  %tobool501 = icmp eq i32 %cond421, 0
  %or.cond872 = and i1 %cmp496, %tobool501
  %or.cond875 = and i1 %or.cond872, %52
  br i1 %or.cond875, label %if.end509, label %if.then506

if.then506:                                       ; preds = %if.end493
  store i32 1, i32* %b_signal_type_present, align 4, !tbaa !81
  br label %if.end509

if.end509:                                        ; preds = %if.end493, %if.then506
  %i_chroma_loc = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 14, i32 8
  %53 = load i32, i32* %i_chroma_loc, align 8, !tbaa !93
  %.off873 = add i32 %53, -1
  %54 = icmp ult i32 %.off873, 5
  br i1 %54, label %land.end522, label %land.end522.thread

land.end522.thread:                               ; preds = %if.end509
  %b_chroma_loc_info_present861 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 12
  store i32 0, i32* %b_chroma_loc_info_present861, align 4, !tbaa !94
  br label %if.end535

land.end522:                                      ; preds = %if.end509
  %cmp520 = icmp eq i32 %cond17, 1
  %land.ext523 = zext i1 %cmp520 to i32
  %b_chroma_loc_info_present = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 12
  store i32 %land.ext523, i32* %b_chroma_loc_info_present, align 4, !tbaa !94
  br i1 %cmp520, label %if.then528, label %if.end535

if.then528:                                       ; preds = %land.end522
  %i_chroma_loc_top = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 13
  store i32 %53, i32* %i_chroma_loc_top, align 4, !tbaa !95
  %i_chroma_loc_bottom = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 14
  store i32 %53, i32* %i_chroma_loc_bottom, align 4, !tbaa !96
  br label %if.end535

if.end535:                                        ; preds = %land.end522.thread, %if.then528, %land.end522
  %i_timebase_num = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 66
  %55 = load i32, i32* %i_timebase_num, align 8, !tbaa !97
  %cmp536 = icmp eq i32 %55, 0
  br i1 %cmp536, label %land.end541.thread, label %land.end541

land.end541.thread:                               ; preds = %if.end535
  %b_timing_info_present863 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 15
  store i32 0, i32* %b_timing_info_present863, align 4, !tbaa !98
  br label %if.end557

land.end541:                                      ; preds = %if.end535
  %i_timebase_den = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 67
  %56 = load i32, i32* %i_timebase_den, align 4, !tbaa !99
  %cmp539 = icmp ne i32 %56, 0
  %land.ext542 = zext i1 %cmp539 to i32
  %b_timing_info_present = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 15
  store i32 %land.ext542, i32* %b_timing_info_present, align 4, !tbaa !98
  br i1 %cmp539, label %if.then547, label %if.end557

if.then547:                                       ; preds = %land.end541
  %i_num_units_in_tick = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 16
  store i32 %55, i32* %i_num_units_in_tick, align 4, !tbaa !100
  %mul551 = shl i32 %56, 1
  %i_time_scale = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 17
  store i32 %mul551, i32* %i_time_scale, align 4, !tbaa !101
  %b_vfr_input = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 62
  %57 = load i32, i32* %b_vfr_input, align 8, !tbaa !102
  %tobool553 = icmp eq i32 %57, 0
  %lnot.ext555 = zext i1 %tobool553 to i32
  %b_fixed_frame_rate = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 18
  store i32 %lnot.ext555, i32* %b_fixed_frame_rate, align 4, !tbaa !103
  br label %if.end557

if.end557:                                        ; preds = %land.end541.thread, %if.then547, %land.end541
  %b_vcl_hrd_parameters_present = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 20
  store i32 0, i32* %b_vcl_hrd_parameters_present, align 4, !tbaa !104
  %i_nal_hrd = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 13
  %58 = load i32, i32* %i_nal_hrd, align 4, !tbaa !105
  %tobool559 = icmp ne i32 %58, 0
  %lnot.ext563 = zext i1 %tobool559 to i32
  %b_nal_hrd_parameters_present = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 19
  store i32 %lnot.ext563, i32* %b_nal_hrd_parameters_present, align 4, !tbaa !106
  %b_pic_struct = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 69
  %59 = load i32, i32* %b_pic_struct, align 4, !tbaa !107
  %b_pic_struct_present = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 22
  store i32 %59, i32* %b_pic_struct_present, align 4, !tbaa !108
  %tobool567 = icmp eq i32 %17, 0
  br i1 %tobool567, label %land.end572.thread, label %land.end572

land.end572.thread:                               ; preds = %if.end557
  %b_bitstream_restriction865 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 23
  store i32 1, i32* %b_bitstream_restriction865, align 4, !tbaa !109
  br label %if.then580

land.end572:                                      ; preds = %if.end557
  %cmp570 = icmp ult i32 %.sink, 100
  %lnot.ext575 = zext i1 %cmp570 to i32
  %b_bitstream_restriction = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 23
  store i32 %lnot.ext575, i32* %b_bitstream_restriction, align 4, !tbaa !109
  br i1 %cmp570, label %if.then580, label %if.end602

if.then580:                                       ; preds = %land.end572.thread, %land.end572
  %b_motion_vectors_over_pic_boundaries = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 24
  store i32 1, i32* %b_motion_vectors_over_pic_boundaries, align 4, !tbaa !110
  %i_max_bytes_per_pic_denom = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 25
  store i32 0, i32* %i_max_bytes_per_pic_denom, align 4, !tbaa !111
  %i_max_bits_per_mb_denom = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 26
  store i32 0, i32* %i_max_bits_per_mb_denom, align 4, !tbaa !112
  %i_mv_range = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 9
  %60 = load i32, i32* %i_mv_range, align 4, !tbaa !113
  %cmp587 = icmp slt i32 %60, 1
  %mul585 = shl i32 %60, 2
  %sub586 = add nsw i32 %mul585, -1
  %phitmp843 = sitofp i32 %sub586 to float
  %cond596 = select i1 %cmp587, float 1.000000e+00, float %phitmp843
  %61 = tail call fast float @llvm.log2.f32(float %cond596)
  %conv598 = fptosi float %61 to i32
  %add599 = add nsw i32 %conv598, 1
  %i_log2_max_mv_length_vertical = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 28
  store i32 %add599, i32* %i_log2_max_mv_length_vertical, align 4, !tbaa !114
  %i_log2_max_mv_length_horizontal = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 27
  store i32 %add599, i32* %i_log2_max_mv_length_horizontal, align 4, !tbaa !115
  br label %if.end602

if.end602:                                        ; preds = %if.then580, %land.end572
  %i_avcintra_class603 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 27
  %62 = load i32, i32* %i_avcintra_class603, align 4, !tbaa !57
  %tobool604 = icmp ne i32 %62, 0
  %cmp607 = icmp slt i32 %62, 201
  %63 = and i1 %tobool604, %cmp607
  %64 = zext i1 %63 to i32
  %b_avcintra_hd = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 23
  store i32 %64, i32* %b_avcintra_hd, align 4, !tbaa !116
  %cmp612 = icmp sgt i32 %62, 200
  %conv613 = zext i1 %cmp612 to i32
  %b_avcintra_4k = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 24
  store i32 %conv613, i32* %b_avcintra_4k, align 4, !tbaa !117
  %i_cqm_preset614 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 36
  %65 = load i32, i32* %i_cqm_preset614, align 8, !tbaa !37
  %i_cqm_preset615 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 25
  store i32 %65, i32* %i_cqm_preset615, align 4, !tbaa !118
  ret void
}

; Function Attrs: nofree norecurse nounwind
define hidden void @x264_8_sps_init_reconfigurable(%struct.x264_sps_t* nocapture %sps, %struct.x264_param_t* nocapture readonly %param) local_unnamed_addr #2 {
entry:
  %i_left = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 53, i32 0
  %0 = load i32, i32* %i_left, align 4, !tbaa !64
  %i_left1 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 18, i32 0
  store i32 %0, i32* %i_left1, align 4, !tbaa !65
  %i_top = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 53, i32 1
  %1 = load i32, i32* %i_top, align 4, !tbaa !66
  %i_top4 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 18, i32 2
  store i32 %1, i32* %i_top4, align 4, !tbaa !67
  %i_right = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 53, i32 2
  %2 = load i32, i32* %i_right, align 4, !tbaa !68
  %i_mb_width = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 12
  %3 = load i32, i32* %i_mb_width, align 4, !tbaa !26
  %mul = shl i32 %3, 4
  %add = add nsw i32 %mul, %2
  %i_width = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 7
  %4 = load i32, i32* %i_width, align 4, !tbaa !25
  %sub = sub i32 %add, %4
  %i_right7 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 18, i32 1
  store i32 %sub, i32* %i_right7, align 4, !tbaa !69
  %i_bottom = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 53, i32 3
  %5 = load i32, i32* %i_bottom, align 4, !tbaa !70
  %i_mb_height = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 13
  %6 = load i32, i32* %i_mb_height, align 4, !tbaa !28
  %mul9 = shl i32 %6, 4
  %add10 = add nsw i32 %mul9, %5
  %i_height = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 8
  %7 = load i32, i32* %i_height, align 8, !tbaa !27
  %sub11 = sub i32 %add10, %7
  %i_bottom13 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 18, i32 3
  store i32 %sub11, i32* %i_bottom13, align 4, !tbaa !71
  %8 = or i32 %1, %0
  %9 = or i32 %8, %sub
  %10 = or i32 %9, %sub11
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i32
  %b_crop = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 17
  store i32 %12, i32* %b_crop, align 4, !tbaa !72
  %b_aspect_ratio_info_present = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 0
  store i32 0, i32* %b_aspect_ratio_info_present, align 4, !tbaa !73
  %i_sar_width = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 14, i32 1
  %13 = load i32, i32* %i_sar_width, align 4, !tbaa !74
  %cmp = icmp sgt i32 %13, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %i_sar_height = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 14, i32 0
  %14 = load i32, i32* %i_sar_height, align 8, !tbaa !75
  %cmp28 = icmp sgt i32 %14, 0
  br i1 %cmp28, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %b_aspect_ratio_info_present, align 4, !tbaa !73
  %i_sar_width34 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 1
  store i32 %13, i32* %i_sar_width34, align 4, !tbaa !76
  %i_sar_height38 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 2
  store i32 %14, i32* %i_sar_height38, align 4, !tbaa !77
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.log2.f32(float) #3

; Function Attrs: nofree norecurse nounwind
define hidden void @x264_8_sps_init_scaling_list(%struct.x264_sps_t* nocapture %sps, %struct.x264_param_t* %param) local_unnamed_addr #2 {
entry:
  %i_cqm_preset = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 25
  %0 = load i32, i32* %i_cqm_preset, align 4, !tbaa !118
  switch i32 %0, label %sw.epilog [
    i32 0, label %for.body.preheader
    i32 1, label %for.body6.preheader
    i32 2, label %do.body.lr.ph.i.2
  ]

for.body6.preheader:                              ; preds = %entry
  %1 = load i32, i32* bitcast ([8 x i8*]* @x264_cqm_jvt to i32*), align 4, !tbaa !119
  %arrayidx9 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 26, i32 0
  %2 = bitcast i8** %arrayidx9 to i32*
  store i32 %1, i32* %2, align 4, !tbaa !119
  %3 = load i32, i32* bitcast (i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @x264_cqm_jvt, i32 0, i32 1) to i32*), align 4, !tbaa !119
  %arrayidx9.1 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 26, i32 1
  %4 = bitcast i8** %arrayidx9.1 to i32*
  store i32 %3, i32* %4, align 4, !tbaa !119
  %5 = load i32, i32* bitcast (i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @x264_cqm_jvt, i32 0, i32 2) to i32*), align 4, !tbaa !119
  %arrayidx9.2 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 26, i32 2
  %6 = bitcast i8** %arrayidx9.2 to i32*
  store i32 %5, i32* %6, align 4, !tbaa !119
  %7 = load i32, i32* bitcast (i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @x264_cqm_jvt, i32 0, i32 3) to i32*), align 4, !tbaa !119
  %arrayidx9.3 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 26, i32 3
  %8 = bitcast i8** %arrayidx9.3 to i32*
  store i32 %7, i32* %8, align 4, !tbaa !119
  %9 = load i32, i32* bitcast (i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @x264_cqm_jvt, i32 0, i32 4) to i32*), align 4, !tbaa !119
  %arrayidx9.4 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 26, i32 4
  %10 = bitcast i8** %arrayidx9.4 to i32*
  store i32 %9, i32* %10, align 4, !tbaa !119
  %11 = load i32, i32* bitcast (i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @x264_cqm_jvt, i32 0, i32 5) to i32*), align 4, !tbaa !119
  %arrayidx9.5 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 26, i32 5
  %12 = bitcast i8** %arrayidx9.5 to i32*
  store i32 %11, i32* %12, align 4, !tbaa !119
  %13 = load i32, i32* bitcast (i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @x264_cqm_jvt, i32 0, i32 6) to i32*), align 4, !tbaa !119
  %arrayidx9.6 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 26, i32 6
  %14 = bitcast i8** %arrayidx9.6 to i32*
  store i32 %13, i32* %14, align 4, !tbaa !119
  %15 = load i32, i32* bitcast (i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @x264_cqm_jvt, i32 0, i32 7) to i32*), align 4, !tbaa !119
  %arrayidx9.7 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 26, i32 7
  %16 = bitcast i8** %arrayidx9.7 to i32*
  store i32 %15, i32* %16, align 4, !tbaa !119
  br label %sw.epilog

for.body.preheader:                               ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 26, i32 0
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @x264_cqm_flat16, i32 0, i32 0), i8** %arrayidx, align 4, !tbaa !119
  %arrayidx.1 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 26, i32 1
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @x264_cqm_flat16, i32 0, i32 0), i8** %arrayidx.1, align 4, !tbaa !119
  %arrayidx.2 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 26, i32 2
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @x264_cqm_flat16, i32 0, i32 0), i8** %arrayidx.2, align 4, !tbaa !119
  %arrayidx.3 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 26, i32 3
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @x264_cqm_flat16, i32 0, i32 0), i8** %arrayidx.3, align 4, !tbaa !119
  %arrayidx.4 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 26, i32 4
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @x264_cqm_flat16, i32 0, i32 0), i8** %arrayidx.4, align 4, !tbaa !119
  %arrayidx.5 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 26, i32 5
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @x264_cqm_flat16, i32 0, i32 0), i8** %arrayidx.5, align 4, !tbaa !119
  %arrayidx.6 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 26, i32 6
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @x264_cqm_flat16, i32 0, i32 0), i8** %arrayidx.6, align 4, !tbaa !119
  %arrayidx.7 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 26, i32 7
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @x264_cqm_flat16, i32 0, i32 0), i8** %arrayidx.7, align 4, !tbaa !119
  br label %sw.epilog

if.then:                                          ; preds = %do.body.lr.ph.i.2
  store i32 %319, i32* %318, align 4, !tbaa !119
  br label %for.inc71

for.inc71:                                        ; preds = %do.body.lr.ph.i.2, %if.then
  %17 = phi i8* [ %arraydecay, %do.body.lr.ph.i.2 ], [ %320, %if.then ]
  %arrayidx65.1 = getelementptr inbounds i8, i8* %17, i32 1
  %18 = load i8, i8* %arrayidx65.1, align 1, !tbaa !9
  %cmp66.1255 = icmp eq i8 %18, 0
  br i1 %cmp66.1255, label %if.then.1257, label %for.inc71.1258

sw.epilog:                                        ; preds = %for.inc71.7, %for.body6.preheader, %for.body.preheader, %entry
  ret void

if.then.1:                                        ; preds = %for.inc71.15
  store i32 %446, i32* %445, align 4, !tbaa !119
  br label %for.inc71.1

for.inc71.1:                                      ; preds = %if.then.1, %for.inc71.15
  %19 = phi i8* [ %447, %if.then.1 ], [ %arraydecay14, %for.inc71.15 ]
  %arrayidx65.1.1 = getelementptr inbounds i8, i8* %19, i32 1
  %20 = load i8, i8* %arrayidx65.1.1, align 1, !tbaa !9
  %cmp66.1.1 = icmp eq i8 %20, 0
  br i1 %cmp66.1.1, label %if.then.1.1, label %for.inc71.1.1

if.then.2:                                        ; preds = %for.inc71.1.15
  store i32 %414, i32* %413, align 4, !tbaa !119
  br label %for.inc71.2

for.inc71.2:                                      ; preds = %if.then.2, %for.inc71.1.15
  %21 = phi i8* [ %415, %if.then.2 ], [ %arraydecay15, %for.inc71.1.15 ]
  %arrayidx65.2.1 = getelementptr inbounds i8, i8* %21, i32 1
  %22 = load i8, i8* %arrayidx65.2.1, align 1, !tbaa !9
  %cmp66.2.1 = icmp eq i8 %22, 0
  br i1 %cmp66.2.1, label %if.then.2.1, label %for.inc71.2.1

if.then.3:                                        ; preds = %for.inc71.2.15
  store i32 %382, i32* %381, align 4, !tbaa !119
  br label %for.inc71.3

for.inc71.3:                                      ; preds = %if.then.3, %for.inc71.2.15
  %23 = phi i8* [ %383, %if.then.3 ], [ %arraydecay16, %for.inc71.2.15 ]
  %arrayidx65.3.1 = getelementptr inbounds i8, i8* %23, i32 1
  %24 = load i8, i8* %arrayidx65.3.1, align 1, !tbaa !9
  %cmp66.3.1 = icmp eq i8 %24, 0
  br i1 %cmp66.3.1, label %if.then.3.1, label %for.inc71.3.1

for.body62.4:                                     ; preds = %for.inc71.4, %for.inc71.3.15
  %25 = phi i8* [ %arraydecay17, %for.inc71.3.15 ], [ %27, %for.inc71.4 ]
  %j.0250.4 = phi i32 [ 0, %for.inc71.3.15 ], [ %inc72.4, %for.inc71.4 ]
  %arrayidx65.4 = getelementptr inbounds i8, i8* %25, i32 %j.0250.4
  %26 = load i8, i8* %arrayidx65.4, align 1, !tbaa !9
  %cmp66.4 = icmp eq i8 %26, 0
  br i1 %cmp66.4, label %if.then.4, label %for.inc71.4

if.then.4:                                        ; preds = %for.body62.4
  store i32 %351, i32* %350, align 4, !tbaa !119
  br label %for.inc71.4

for.inc71.4:                                      ; preds = %if.then.4, %for.body62.4
  %27 = phi i8* [ %352, %if.then.4 ], [ %25, %for.body62.4 ]
  %inc72.4 = add nuw nsw i32 %j.0250.4, 1
  %cmp60.4 = icmp ult i32 %j.0250.4, 63
  br i1 %cmp60.4, label %for.body62.4, label %for.cond.cleanup61.4

for.cond.cleanup61.4:                             ; preds = %for.inc71.4
  %28 = bitcast i8** %arrayidx44 to i32*
  %29 = load i32, i32* bitcast (i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @x264_cqm_jvt, i32 0, i32 5) to i32*), align 4
  %30 = inttoptr i32 %29 to i8*
  br label %for.body62.5

for.body62.5:                                     ; preds = %for.inc71.5, %for.cond.cleanup61.4
  %31 = phi i8* [ %arraydecay18, %for.cond.cleanup61.4 ], [ %33, %for.inc71.5 ]
  %j.0250.5 = phi i32 [ 0, %for.cond.cleanup61.4 ], [ %inc72.5, %for.inc71.5 ]
  %arrayidx65.5 = getelementptr inbounds i8, i8* %31, i32 %j.0250.5
  %32 = load i8, i8* %arrayidx65.5, align 1, !tbaa !9
  %cmp66.5 = icmp eq i8 %32, 0
  br i1 %cmp66.5, label %if.then.5, label %for.inc71.5

if.then.5:                                        ; preds = %for.body62.5
  store i32 %29, i32* %28, align 4, !tbaa !119
  br label %for.inc71.5

for.inc71.5:                                      ; preds = %if.then.5, %for.body62.5
  %33 = phi i8* [ %30, %if.then.5 ], [ %31, %for.body62.5 ]
  %inc72.5 = add nuw nsw i32 %j.0250.5, 1
  %cmp60.5 = icmp ult i32 %j.0250.5, 63
  br i1 %cmp60.5, label %for.body62.5, label %for.cond.cleanup61.5

for.cond.cleanup61.5:                             ; preds = %for.inc71.5
  %34 = bitcast i8** %arrayidx48 to i32*
  %35 = load i32, i32* bitcast (i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @x264_cqm_jvt, i32 0, i32 6) to i32*), align 4
  %36 = inttoptr i32 %35 to i8*
  br label %for.body62.6

for.body62.6:                                     ; preds = %for.inc71.6, %for.cond.cleanup61.5
  %37 = phi i8* [ %arraydecay19, %for.cond.cleanup61.5 ], [ %39, %for.inc71.6 ]
  %j.0250.6 = phi i32 [ 0, %for.cond.cleanup61.5 ], [ %inc72.6, %for.inc71.6 ]
  %arrayidx65.6 = getelementptr inbounds i8, i8* %37, i32 %j.0250.6
  %38 = load i8, i8* %arrayidx65.6, align 1, !tbaa !9
  %cmp66.6 = icmp eq i8 %38, 0
  br i1 %cmp66.6, label %if.then.6, label %for.inc71.6

if.then.6:                                        ; preds = %for.body62.6
  store i32 %35, i32* %34, align 4, !tbaa !119
  br label %for.inc71.6

for.inc71.6:                                      ; preds = %if.then.6, %for.body62.6
  %39 = phi i8* [ %36, %if.then.6 ], [ %37, %for.body62.6 ]
  %inc72.6 = add nuw nsw i32 %j.0250.6, 1
  %cmp60.6 = icmp ult i32 %j.0250.6, 63
  br i1 %cmp60.6, label %for.body62.6, label %for.cond.cleanup61.6

for.cond.cleanup61.6:                             ; preds = %for.inc71.6
  %40 = bitcast i8** %arrayidx52 to i32*
  %41 = load i32, i32* bitcast (i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @x264_cqm_jvt, i32 0, i32 7) to i32*), align 4
  %42 = inttoptr i32 %41 to i8*
  br label %for.body62.7

for.body62.7:                                     ; preds = %for.inc71.7, %for.cond.cleanup61.6
  %43 = phi i8* [ %arraydecay20, %for.cond.cleanup61.6 ], [ %45, %for.inc71.7 ]
  %j.0250.7 = phi i32 [ 0, %for.cond.cleanup61.6 ], [ %inc72.7, %for.inc71.7 ]
  %arrayidx65.7 = getelementptr inbounds i8, i8* %43, i32 %j.0250.7
  %44 = load i8, i8* %arrayidx65.7, align 1, !tbaa !9
  %cmp66.7 = icmp eq i8 %44, 0
  br i1 %cmp66.7, label %if.then.7, label %for.inc71.7

if.then.7:                                        ; preds = %for.body62.7
  store i32 %41, i32* %40, align 4, !tbaa !119
  br label %for.inc71.7

for.inc71.7:                                      ; preds = %if.then.7, %for.body62.7
  %45 = phi i8* [ %42, %if.then.7 ], [ %43, %for.body62.7 ]
  %inc72.7 = add nuw nsw i32 %j.0250.7, 1
  %cmp60.7 = icmp ult i32 %j.0250.7, 63
  br i1 %cmp60.7, label %for.body62.7, label %sw.epilog

do.body.lr.ph.i.2:                                ; preds = %entry
  %arrayidx.i.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 38, i32 4
  %46 = load i8, i8* %arrayidx.i.1, align 1, !tbaa !9
  %arrayidx7.i.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 38, i32 1
  %47 = load i8, i8* %arrayidx7.i.1, align 1, !tbaa !9
  store i8 %47, i8* %arrayidx.i.1, align 1, !tbaa !9
  store i8 %46, i8* %arrayidx7.i.1, align 1, !tbaa !9
  %arrayidx.i.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 38, i32 8
  %48 = load i8, i8* %arrayidx.i.2, align 1, !tbaa !9
  %arrayidx7.i.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 38, i32 2
  %49 = load i8, i8* %arrayidx7.i.2, align 1, !tbaa !9
  store i8 %49, i8* %arrayidx.i.2, align 1, !tbaa !9
  store i8 %48, i8* %arrayidx7.i.2, align 1, !tbaa !9
  %arrayidx.i.2.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 38, i32 9
  %50 = load i8, i8* %arrayidx.i.2.1, align 1, !tbaa !9
  %arrayidx7.i.2.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 38, i32 6
  %51 = load i8, i8* %arrayidx7.i.2.1, align 1, !tbaa !9
  store i8 %51, i8* %arrayidx.i.2.1, align 1, !tbaa !9
  store i8 %50, i8* %arrayidx7.i.2.1, align 1, !tbaa !9
  %arrayidx.i.3 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 38, i32 12
  %52 = load i8, i8* %arrayidx.i.3, align 1, !tbaa !9
  %arrayidx7.i.3 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 38, i32 3
  %53 = load i8, i8* %arrayidx7.i.3, align 1, !tbaa !9
  store i8 %53, i8* %arrayidx.i.3, align 1, !tbaa !9
  store i8 %52, i8* %arrayidx7.i.3, align 1, !tbaa !9
  %arrayidx.i.3.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 38, i32 13
  %54 = load i8, i8* %arrayidx.i.3.1, align 1, !tbaa !9
  %arrayidx7.i.3.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 38, i32 7
  %55 = load i8, i8* %arrayidx7.i.3.1, align 1, !tbaa !9
  store i8 %55, i8* %arrayidx.i.3.1, align 1, !tbaa !9
  store i8 %54, i8* %arrayidx7.i.3.1, align 1, !tbaa !9
  %arrayidx.i.3.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 38, i32 14
  %56 = load i8, i8* %arrayidx.i.3.2, align 1, !tbaa !9
  %arrayidx7.i.3.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 38, i32 11
  %57 = load i8, i8* %arrayidx7.i.3.2, align 1, !tbaa !9
  store i8 %57, i8* %arrayidx.i.3.2, align 1, !tbaa !9
  store i8 %56, i8* %arrayidx7.i.3.2, align 1, !tbaa !9
  %arraydecay = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 38, i32 0
  %arrayidx.i238.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 39, i32 4
  %58 = load i8, i8* %arrayidx.i238.1, align 1, !tbaa !9
  %arrayidx7.i241.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 39, i32 1
  %59 = load i8, i8* %arrayidx7.i241.1, align 1, !tbaa !9
  store i8 %59, i8* %arrayidx.i238.1, align 1, !tbaa !9
  store i8 %58, i8* %arrayidx7.i241.1, align 1, !tbaa !9
  %arrayidx.i238.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 39, i32 8
  %60 = load i8, i8* %arrayidx.i238.2, align 1, !tbaa !9
  %arrayidx7.i241.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 39, i32 2
  %61 = load i8, i8* %arrayidx7.i241.2, align 1, !tbaa !9
  store i8 %61, i8* %arrayidx.i238.2, align 1, !tbaa !9
  store i8 %60, i8* %arrayidx7.i241.2, align 1, !tbaa !9
  %arrayidx.i238.2.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 39, i32 9
  %62 = load i8, i8* %arrayidx.i238.2.1, align 1, !tbaa !9
  %arrayidx7.i241.2.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 39, i32 6
  %63 = load i8, i8* %arrayidx7.i241.2.1, align 1, !tbaa !9
  store i8 %63, i8* %arrayidx.i238.2.1, align 1, !tbaa !9
  store i8 %62, i8* %arrayidx7.i241.2.1, align 1, !tbaa !9
  %arrayidx.i238.3 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 39, i32 12
  %64 = load i8, i8* %arrayidx.i238.3, align 1, !tbaa !9
  %arrayidx7.i241.3 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 39, i32 3
  %65 = load i8, i8* %arrayidx7.i241.3, align 1, !tbaa !9
  store i8 %65, i8* %arrayidx.i238.3, align 1, !tbaa !9
  store i8 %64, i8* %arrayidx7.i241.3, align 1, !tbaa !9
  %arrayidx.i238.3.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 39, i32 13
  %66 = load i8, i8* %arrayidx.i238.3.1, align 1, !tbaa !9
  %arrayidx7.i241.3.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 39, i32 7
  %67 = load i8, i8* %arrayidx7.i241.3.1, align 1, !tbaa !9
  store i8 %67, i8* %arrayidx.i238.3.1, align 1, !tbaa !9
  store i8 %66, i8* %arrayidx7.i241.3.1, align 1, !tbaa !9
  %arrayidx.i238.3.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 39, i32 14
  %68 = load i8, i8* %arrayidx.i238.3.2, align 1, !tbaa !9
  %arrayidx7.i241.3.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 39, i32 11
  %69 = load i8, i8* %arrayidx7.i241.3.2, align 1, !tbaa !9
  store i8 %69, i8* %arrayidx.i238.3.2, align 1, !tbaa !9
  store i8 %68, i8* %arrayidx7.i241.3.2, align 1, !tbaa !9
  %arraydecay14 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 39, i32 0
  %arrayidx.i220.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 40, i32 4
  %70 = load i8, i8* %arrayidx.i220.1, align 1, !tbaa !9
  %arrayidx7.i223.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 40, i32 1
  %71 = load i8, i8* %arrayidx7.i223.1, align 1, !tbaa !9
  store i8 %71, i8* %arrayidx.i220.1, align 1, !tbaa !9
  store i8 %70, i8* %arrayidx7.i223.1, align 1, !tbaa !9
  %arrayidx.i220.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 40, i32 8
  %72 = load i8, i8* %arrayidx.i220.2, align 1, !tbaa !9
  %arrayidx7.i223.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 40, i32 2
  %73 = load i8, i8* %arrayidx7.i223.2, align 1, !tbaa !9
  store i8 %73, i8* %arrayidx.i220.2, align 1, !tbaa !9
  store i8 %72, i8* %arrayidx7.i223.2, align 1, !tbaa !9
  %arrayidx.i220.2.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 40, i32 9
  %74 = load i8, i8* %arrayidx.i220.2.1, align 1, !tbaa !9
  %arrayidx7.i223.2.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 40, i32 6
  %75 = load i8, i8* %arrayidx7.i223.2.1, align 1, !tbaa !9
  store i8 %75, i8* %arrayidx.i220.2.1, align 1, !tbaa !9
  store i8 %74, i8* %arrayidx7.i223.2.1, align 1, !tbaa !9
  %arrayidx.i220.3 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 40, i32 12
  %76 = load i8, i8* %arrayidx.i220.3, align 1, !tbaa !9
  %arrayidx7.i223.3 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 40, i32 3
  %77 = load i8, i8* %arrayidx7.i223.3, align 1, !tbaa !9
  store i8 %77, i8* %arrayidx.i220.3, align 1, !tbaa !9
  store i8 %76, i8* %arrayidx7.i223.3, align 1, !tbaa !9
  %arrayidx.i220.3.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 40, i32 13
  %78 = load i8, i8* %arrayidx.i220.3.1, align 1, !tbaa !9
  %arrayidx7.i223.3.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 40, i32 7
  %79 = load i8, i8* %arrayidx7.i223.3.1, align 1, !tbaa !9
  store i8 %79, i8* %arrayidx.i220.3.1, align 1, !tbaa !9
  store i8 %78, i8* %arrayidx7.i223.3.1, align 1, !tbaa !9
  %arrayidx.i220.3.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 40, i32 14
  %80 = load i8, i8* %arrayidx.i220.3.2, align 1, !tbaa !9
  %arrayidx7.i223.3.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 40, i32 11
  %81 = load i8, i8* %arrayidx7.i223.3.2, align 1, !tbaa !9
  store i8 %81, i8* %arrayidx.i220.3.2, align 1, !tbaa !9
  store i8 %80, i8* %arrayidx7.i223.3.2, align 1, !tbaa !9
  %arraydecay15 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 40, i32 0
  %arrayidx.i202.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 41, i32 4
  %82 = load i8, i8* %arrayidx.i202.1, align 1, !tbaa !9
  %arrayidx7.i205.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 41, i32 1
  %83 = load i8, i8* %arrayidx7.i205.1, align 1, !tbaa !9
  store i8 %83, i8* %arrayidx.i202.1, align 1, !tbaa !9
  store i8 %82, i8* %arrayidx7.i205.1, align 1, !tbaa !9
  %arrayidx.i202.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 41, i32 8
  %84 = load i8, i8* %arrayidx.i202.2, align 1, !tbaa !9
  %arrayidx7.i205.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 41, i32 2
  %85 = load i8, i8* %arrayidx7.i205.2, align 1, !tbaa !9
  store i8 %85, i8* %arrayidx.i202.2, align 1, !tbaa !9
  store i8 %84, i8* %arrayidx7.i205.2, align 1, !tbaa !9
  %arrayidx.i202.2.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 41, i32 9
  %86 = load i8, i8* %arrayidx.i202.2.1, align 1, !tbaa !9
  %arrayidx7.i205.2.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 41, i32 6
  %87 = load i8, i8* %arrayidx7.i205.2.1, align 1, !tbaa !9
  store i8 %87, i8* %arrayidx.i202.2.1, align 1, !tbaa !9
  store i8 %86, i8* %arrayidx7.i205.2.1, align 1, !tbaa !9
  %arrayidx.i202.3 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 41, i32 12
  %88 = load i8, i8* %arrayidx.i202.3, align 1, !tbaa !9
  %arrayidx7.i205.3 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 41, i32 3
  %89 = load i8, i8* %arrayidx7.i205.3, align 1, !tbaa !9
  store i8 %89, i8* %arrayidx.i202.3, align 1, !tbaa !9
  store i8 %88, i8* %arrayidx7.i205.3, align 1, !tbaa !9
  %arrayidx.i202.3.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 41, i32 13
  %90 = load i8, i8* %arrayidx.i202.3.1, align 1, !tbaa !9
  %arrayidx7.i205.3.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 41, i32 7
  %91 = load i8, i8* %arrayidx7.i205.3.1, align 1, !tbaa !9
  store i8 %91, i8* %arrayidx.i202.3.1, align 1, !tbaa !9
  store i8 %90, i8* %arrayidx7.i205.3.1, align 1, !tbaa !9
  %arrayidx.i202.3.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 41, i32 14
  %92 = load i8, i8* %arrayidx.i202.3.2, align 1, !tbaa !9
  %arrayidx7.i205.3.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 41, i32 11
  %93 = load i8, i8* %arrayidx7.i205.3.2, align 1, !tbaa !9
  store i8 %93, i8* %arrayidx.i202.3.2, align 1, !tbaa !9
  store i8 %92, i8* %arrayidx7.i205.3.2, align 1, !tbaa !9
  %arraydecay16 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 41, i32 0
  %arrayidx.i184.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 42, i32 8
  %94 = load i8, i8* %arrayidx.i184.1, align 1, !tbaa !9
  %arrayidx7.i187.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 42, i32 1
  %95 = load i8, i8* %arrayidx7.i187.1, align 1, !tbaa !9
  store i8 %95, i8* %arrayidx.i184.1, align 1, !tbaa !9
  store i8 %94, i8* %arrayidx7.i187.1, align 1, !tbaa !9
  %arrayidx.i184.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 42, i32 16
  %96 = load i8, i8* %arrayidx.i184.2, align 1, !tbaa !9
  %arrayidx7.i187.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 42, i32 2
  %97 = load i8, i8* %arrayidx7.i187.2, align 1, !tbaa !9
  store i8 %97, i8* %arrayidx.i184.2, align 1, !tbaa !9
  store i8 %96, i8* %arrayidx7.i187.2, align 1, !tbaa !9
  %arrayidx.i184.2.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 42, i32 17
  %98 = load i8, i8* %arrayidx.i184.2.1, align 1, !tbaa !9
  %arrayidx7.i187.2.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 42, i32 10
  %99 = load i8, i8* %arrayidx7.i187.2.1, align 1, !tbaa !9
  store i8 %99, i8* %arrayidx.i184.2.1, align 1, !tbaa !9
  store i8 %98, i8* %arrayidx7.i187.2.1, align 1, !tbaa !9
  %arrayidx.i184.3 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 42, i32 24
  %100 = load i8, i8* %arrayidx.i184.3, align 1, !tbaa !9
  %arrayidx7.i187.3 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 42, i32 3
  %101 = load i8, i8* %arrayidx7.i187.3, align 1, !tbaa !9
  store i8 %101, i8* %arrayidx.i184.3, align 1, !tbaa !9
  store i8 %100, i8* %arrayidx7.i187.3, align 1, !tbaa !9
  %arrayidx.i184.3.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 42, i32 25
  %102 = load i8, i8* %arrayidx.i184.3.1, align 1, !tbaa !9
  %arrayidx7.i187.3.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 42, i32 11
  %103 = load i8, i8* %arrayidx7.i187.3.1, align 1, !tbaa !9
  store i8 %103, i8* %arrayidx.i184.3.1, align 1, !tbaa !9
  store i8 %102, i8* %arrayidx7.i187.3.1, align 1, !tbaa !9
  %arrayidx.i184.3.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 42, i32 26
  %104 = load i8, i8* %arrayidx.i184.3.2, align 1, !tbaa !9
  %arrayidx7.i187.3.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 42, i32 19
  %105 = load i8, i8* %arrayidx7.i187.3.2, align 1, !tbaa !9
  store i8 %105, i8* %arrayidx.i184.3.2, align 1, !tbaa !9
  store i8 %104, i8* %arrayidx7.i187.3.2, align 1, !tbaa !9
  %arrayidx.i184.4 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 42, i32 32
  %106 = load i8, i8* %arrayidx.i184.4, align 1, !tbaa !9
  %arrayidx7.i187.4 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 42, i32 4
  %107 = load i8, i8* %arrayidx7.i187.4, align 1, !tbaa !9
  store i8 %107, i8* %arrayidx.i184.4, align 1, !tbaa !9
  store i8 %106, i8* %arrayidx7.i187.4, align 1, !tbaa !9
  %arrayidx.i184.4.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 42, i32 33
  %108 = load i8, i8* %arrayidx.i184.4.1, align 1, !tbaa !9
  %arrayidx7.i187.4.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 42, i32 12
  %109 = load i8, i8* %arrayidx7.i187.4.1, align 1, !tbaa !9
  store i8 %109, i8* %arrayidx.i184.4.1, align 1, !tbaa !9
  store i8 %108, i8* %arrayidx7.i187.4.1, align 1, !tbaa !9
  %arrayidx.i184.4.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 42, i32 34
  %110 = load i8, i8* %arrayidx.i184.4.2, align 1, !tbaa !9
  %arrayidx7.i187.4.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 42, i32 20
  %111 = load i8, i8* %arrayidx7.i187.4.2, align 1, !tbaa !9
  store i8 %111, i8* %arrayidx.i184.4.2, align 1, !tbaa !9
  store i8 %110, i8* %arrayidx7.i187.4.2, align 1, !tbaa !9
  %arrayidx.i184.4.3 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 42, i32 35
  %112 = load i8, i8* %arrayidx.i184.4.3, align 1, !tbaa !9
  %arrayidx7.i187.4.3 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 42, i32 28
  %113 = load i8, i8* %arrayidx7.i187.4.3, align 1, !tbaa !9
  store i8 %113, i8* %arrayidx.i184.4.3, align 1, !tbaa !9
  store i8 %112, i8* %arrayidx7.i187.4.3, align 1, !tbaa !9
  %arrayidx.i184.5 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 42, i32 40
  %114 = load i8, i8* %arrayidx.i184.5, align 1, !tbaa !9
  %arrayidx7.i187.5 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 42, i32 5
  %115 = load i8, i8* %arrayidx7.i187.5, align 1, !tbaa !9
  store i8 %115, i8* %arrayidx.i184.5, align 1, !tbaa !9
  store i8 %114, i8* %arrayidx7.i187.5, align 1, !tbaa !9
  %arrayidx.i184.5.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 42, i32 41
  %116 = load i8, i8* %arrayidx.i184.5.1, align 1, !tbaa !9
  %arrayidx7.i187.5.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 42, i32 13
  %117 = load i8, i8* %arrayidx7.i187.5.1, align 1, !tbaa !9
  store i8 %117, i8* %arrayidx.i184.5.1, align 1, !tbaa !9
  store i8 %116, i8* %arrayidx7.i187.5.1, align 1, !tbaa !9
  %arrayidx.i184.5.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 42, i32 42
  %118 = load i8, i8* %arrayidx.i184.5.2, align 1, !tbaa !9
  %arrayidx7.i187.5.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 42, i32 21
  %119 = load i8, i8* %arrayidx7.i187.5.2, align 1, !tbaa !9
  store i8 %119, i8* %arrayidx.i184.5.2, align 1, !tbaa !9
  store i8 %118, i8* %arrayidx7.i187.5.2, align 1, !tbaa !9
  %arrayidx.i184.5.3 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 42, i32 43
  %120 = load i8, i8* %arrayidx.i184.5.3, align 1, !tbaa !9
  %arrayidx7.i187.5.3 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 42, i32 29
  %121 = load i8, i8* %arrayidx7.i187.5.3, align 1, !tbaa !9
  store i8 %121, i8* %arrayidx.i184.5.3, align 1, !tbaa !9
  store i8 %120, i8* %arrayidx7.i187.5.3, align 1, !tbaa !9
  %arrayidx.i184.5.4 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 42, i32 44
  %122 = load i8, i8* %arrayidx.i184.5.4, align 1, !tbaa !9
  %arrayidx7.i187.5.4 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 42, i32 37
  %123 = load i8, i8* %arrayidx7.i187.5.4, align 1, !tbaa !9
  store i8 %123, i8* %arrayidx.i184.5.4, align 1, !tbaa !9
  store i8 %122, i8* %arrayidx7.i187.5.4, align 1, !tbaa !9
  %arrayidx.i184.6 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 42, i32 48
  %124 = load i8, i8* %arrayidx.i184.6, align 1, !tbaa !9
  %arrayidx7.i187.6 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 42, i32 6
  %125 = load i8, i8* %arrayidx7.i187.6, align 1, !tbaa !9
  store i8 %125, i8* %arrayidx.i184.6, align 1, !tbaa !9
  store i8 %124, i8* %arrayidx7.i187.6, align 1, !tbaa !9
  %arrayidx.i184.6.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 42, i32 49
  %126 = load i8, i8* %arrayidx.i184.6.1, align 1, !tbaa !9
  %arrayidx7.i187.6.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 42, i32 14
  %127 = load i8, i8* %arrayidx7.i187.6.1, align 1, !tbaa !9
  store i8 %127, i8* %arrayidx.i184.6.1, align 1, !tbaa !9
  store i8 %126, i8* %arrayidx7.i187.6.1, align 1, !tbaa !9
  %arrayidx.i184.6.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 42, i32 50
  %128 = load i8, i8* %arrayidx.i184.6.2, align 1, !tbaa !9
  %arrayidx7.i187.6.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 42, i32 22
  %129 = load i8, i8* %arrayidx7.i187.6.2, align 1, !tbaa !9
  store i8 %129, i8* %arrayidx.i184.6.2, align 1, !tbaa !9
  store i8 %128, i8* %arrayidx7.i187.6.2, align 1, !tbaa !9
  %arrayidx.i184.6.3 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 42, i32 51
  %130 = load i8, i8* %arrayidx.i184.6.3, align 1, !tbaa !9
  %arrayidx7.i187.6.3 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 42, i32 30
  %131 = load i8, i8* %arrayidx7.i187.6.3, align 1, !tbaa !9
  store i8 %131, i8* %arrayidx.i184.6.3, align 1, !tbaa !9
  store i8 %130, i8* %arrayidx7.i187.6.3, align 1, !tbaa !9
  %arrayidx.i184.6.4 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 42, i32 52
  %132 = load i8, i8* %arrayidx.i184.6.4, align 1, !tbaa !9
  %arrayidx7.i187.6.4 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 42, i32 38
  %133 = load i8, i8* %arrayidx7.i187.6.4, align 1, !tbaa !9
  store i8 %133, i8* %arrayidx.i184.6.4, align 1, !tbaa !9
  store i8 %132, i8* %arrayidx7.i187.6.4, align 1, !tbaa !9
  %arrayidx.i184.6.5 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 42, i32 53
  %134 = load i8, i8* %arrayidx.i184.6.5, align 1, !tbaa !9
  %arrayidx7.i187.6.5 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 42, i32 46
  %135 = load i8, i8* %arrayidx7.i187.6.5, align 1, !tbaa !9
  store i8 %135, i8* %arrayidx.i184.6.5, align 1, !tbaa !9
  store i8 %134, i8* %arrayidx7.i187.6.5, align 1, !tbaa !9
  %arrayidx.i184.7 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 42, i32 56
  %136 = load i8, i8* %arrayidx.i184.7, align 1, !tbaa !9
  %arrayidx7.i187.7 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 42, i32 7
  %137 = load i8, i8* %arrayidx7.i187.7, align 1, !tbaa !9
  store i8 %137, i8* %arrayidx.i184.7, align 1, !tbaa !9
  store i8 %136, i8* %arrayidx7.i187.7, align 1, !tbaa !9
  %arrayidx.i184.7.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 42, i32 57
  %138 = load i8, i8* %arrayidx.i184.7.1, align 1, !tbaa !9
  %arrayidx7.i187.7.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 42, i32 15
  %139 = load i8, i8* %arrayidx7.i187.7.1, align 1, !tbaa !9
  store i8 %139, i8* %arrayidx.i184.7.1, align 1, !tbaa !9
  store i8 %138, i8* %arrayidx7.i187.7.1, align 1, !tbaa !9
  %arrayidx.i184.7.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 42, i32 58
  %140 = load i8, i8* %arrayidx.i184.7.2, align 1, !tbaa !9
  %arrayidx7.i187.7.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 42, i32 23
  %141 = load i8, i8* %arrayidx7.i187.7.2, align 1, !tbaa !9
  store i8 %141, i8* %arrayidx.i184.7.2, align 1, !tbaa !9
  store i8 %140, i8* %arrayidx7.i187.7.2, align 1, !tbaa !9
  %arrayidx.i184.7.3 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 42, i32 59
  %142 = load i8, i8* %arrayidx.i184.7.3, align 1, !tbaa !9
  %arrayidx7.i187.7.3 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 42, i32 31
  %143 = load i8, i8* %arrayidx7.i187.7.3, align 1, !tbaa !9
  store i8 %143, i8* %arrayidx.i184.7.3, align 1, !tbaa !9
  store i8 %142, i8* %arrayidx7.i187.7.3, align 1, !tbaa !9
  %arrayidx.i184.7.4 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 42, i32 60
  %144 = load i8, i8* %arrayidx.i184.7.4, align 1, !tbaa !9
  %arrayidx7.i187.7.4 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 42, i32 39
  %145 = load i8, i8* %arrayidx7.i187.7.4, align 1, !tbaa !9
  store i8 %145, i8* %arrayidx.i184.7.4, align 1, !tbaa !9
  store i8 %144, i8* %arrayidx7.i187.7.4, align 1, !tbaa !9
  %arrayidx.i184.7.5 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 42, i32 61
  %146 = load i8, i8* %arrayidx.i184.7.5, align 1, !tbaa !9
  %arrayidx7.i187.7.5 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 42, i32 47
  %147 = load i8, i8* %arrayidx7.i187.7.5, align 1, !tbaa !9
  store i8 %147, i8* %arrayidx.i184.7.5, align 1, !tbaa !9
  store i8 %146, i8* %arrayidx7.i187.7.5, align 1, !tbaa !9
  %arrayidx.i184.7.6 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 42, i32 62
  %148 = load i8, i8* %arrayidx.i184.7.6, align 1, !tbaa !9
  %arrayidx7.i187.7.6 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 42, i32 55
  %149 = load i8, i8* %arrayidx7.i187.7.6, align 1, !tbaa !9
  store i8 %149, i8* %arrayidx.i184.7.6, align 1, !tbaa !9
  store i8 %148, i8* %arrayidx7.i187.7.6, align 1, !tbaa !9
  %arraydecay17 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 42, i32 0
  %arrayidx.i166.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 43, i32 8
  %150 = load i8, i8* %arrayidx.i166.1, align 1, !tbaa !9
  %arrayidx7.i169.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 43, i32 1
  %151 = load i8, i8* %arrayidx7.i169.1, align 1, !tbaa !9
  store i8 %151, i8* %arrayidx.i166.1, align 1, !tbaa !9
  store i8 %150, i8* %arrayidx7.i169.1, align 1, !tbaa !9
  %arrayidx.i166.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 43, i32 16
  %152 = load i8, i8* %arrayidx.i166.2, align 1, !tbaa !9
  %arrayidx7.i169.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 43, i32 2
  %153 = load i8, i8* %arrayidx7.i169.2, align 1, !tbaa !9
  store i8 %153, i8* %arrayidx.i166.2, align 1, !tbaa !9
  store i8 %152, i8* %arrayidx7.i169.2, align 1, !tbaa !9
  %arrayidx.i166.2.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 43, i32 17
  %154 = load i8, i8* %arrayidx.i166.2.1, align 1, !tbaa !9
  %arrayidx7.i169.2.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 43, i32 10
  %155 = load i8, i8* %arrayidx7.i169.2.1, align 1, !tbaa !9
  store i8 %155, i8* %arrayidx.i166.2.1, align 1, !tbaa !9
  store i8 %154, i8* %arrayidx7.i169.2.1, align 1, !tbaa !9
  %arrayidx.i166.3 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 43, i32 24
  %156 = load i8, i8* %arrayidx.i166.3, align 1, !tbaa !9
  %arrayidx7.i169.3 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 43, i32 3
  %157 = load i8, i8* %arrayidx7.i169.3, align 1, !tbaa !9
  store i8 %157, i8* %arrayidx.i166.3, align 1, !tbaa !9
  store i8 %156, i8* %arrayidx7.i169.3, align 1, !tbaa !9
  %arrayidx.i166.3.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 43, i32 25
  %158 = load i8, i8* %arrayidx.i166.3.1, align 1, !tbaa !9
  %arrayidx7.i169.3.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 43, i32 11
  %159 = load i8, i8* %arrayidx7.i169.3.1, align 1, !tbaa !9
  store i8 %159, i8* %arrayidx.i166.3.1, align 1, !tbaa !9
  store i8 %158, i8* %arrayidx7.i169.3.1, align 1, !tbaa !9
  %arrayidx.i166.3.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 43, i32 26
  %160 = load i8, i8* %arrayidx.i166.3.2, align 1, !tbaa !9
  %arrayidx7.i169.3.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 43, i32 19
  %161 = load i8, i8* %arrayidx7.i169.3.2, align 1, !tbaa !9
  store i8 %161, i8* %arrayidx.i166.3.2, align 1, !tbaa !9
  store i8 %160, i8* %arrayidx7.i169.3.2, align 1, !tbaa !9
  %arrayidx.i166.4 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 43, i32 32
  %162 = load i8, i8* %arrayidx.i166.4, align 1, !tbaa !9
  %arrayidx7.i169.4 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 43, i32 4
  %163 = load i8, i8* %arrayidx7.i169.4, align 1, !tbaa !9
  store i8 %163, i8* %arrayidx.i166.4, align 1, !tbaa !9
  store i8 %162, i8* %arrayidx7.i169.4, align 1, !tbaa !9
  %arrayidx.i166.4.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 43, i32 33
  %164 = load i8, i8* %arrayidx.i166.4.1, align 1, !tbaa !9
  %arrayidx7.i169.4.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 43, i32 12
  %165 = load i8, i8* %arrayidx7.i169.4.1, align 1, !tbaa !9
  store i8 %165, i8* %arrayidx.i166.4.1, align 1, !tbaa !9
  store i8 %164, i8* %arrayidx7.i169.4.1, align 1, !tbaa !9
  %arrayidx.i166.4.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 43, i32 34
  %166 = load i8, i8* %arrayidx.i166.4.2, align 1, !tbaa !9
  %arrayidx7.i169.4.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 43, i32 20
  %167 = load i8, i8* %arrayidx7.i169.4.2, align 1, !tbaa !9
  store i8 %167, i8* %arrayidx.i166.4.2, align 1, !tbaa !9
  store i8 %166, i8* %arrayidx7.i169.4.2, align 1, !tbaa !9
  %arrayidx.i166.4.3 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 43, i32 35
  %168 = load i8, i8* %arrayidx.i166.4.3, align 1, !tbaa !9
  %arrayidx7.i169.4.3 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 43, i32 28
  %169 = load i8, i8* %arrayidx7.i169.4.3, align 1, !tbaa !9
  store i8 %169, i8* %arrayidx.i166.4.3, align 1, !tbaa !9
  store i8 %168, i8* %arrayidx7.i169.4.3, align 1, !tbaa !9
  %arrayidx.i166.5 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 43, i32 40
  %170 = load i8, i8* %arrayidx.i166.5, align 1, !tbaa !9
  %arrayidx7.i169.5 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 43, i32 5
  %171 = load i8, i8* %arrayidx7.i169.5, align 1, !tbaa !9
  store i8 %171, i8* %arrayidx.i166.5, align 1, !tbaa !9
  store i8 %170, i8* %arrayidx7.i169.5, align 1, !tbaa !9
  %arrayidx.i166.5.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 43, i32 41
  %172 = load i8, i8* %arrayidx.i166.5.1, align 1, !tbaa !9
  %arrayidx7.i169.5.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 43, i32 13
  %173 = load i8, i8* %arrayidx7.i169.5.1, align 1, !tbaa !9
  store i8 %173, i8* %arrayidx.i166.5.1, align 1, !tbaa !9
  store i8 %172, i8* %arrayidx7.i169.5.1, align 1, !tbaa !9
  %arrayidx.i166.5.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 43, i32 42
  %174 = load i8, i8* %arrayidx.i166.5.2, align 1, !tbaa !9
  %arrayidx7.i169.5.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 43, i32 21
  %175 = load i8, i8* %arrayidx7.i169.5.2, align 1, !tbaa !9
  store i8 %175, i8* %arrayidx.i166.5.2, align 1, !tbaa !9
  store i8 %174, i8* %arrayidx7.i169.5.2, align 1, !tbaa !9
  %arrayidx.i166.5.3 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 43, i32 43
  %176 = load i8, i8* %arrayidx.i166.5.3, align 1, !tbaa !9
  %arrayidx7.i169.5.3 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 43, i32 29
  %177 = load i8, i8* %arrayidx7.i169.5.3, align 1, !tbaa !9
  store i8 %177, i8* %arrayidx.i166.5.3, align 1, !tbaa !9
  store i8 %176, i8* %arrayidx7.i169.5.3, align 1, !tbaa !9
  %arrayidx.i166.5.4 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 43, i32 44
  %178 = load i8, i8* %arrayidx.i166.5.4, align 1, !tbaa !9
  %arrayidx7.i169.5.4 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 43, i32 37
  %179 = load i8, i8* %arrayidx7.i169.5.4, align 1, !tbaa !9
  store i8 %179, i8* %arrayidx.i166.5.4, align 1, !tbaa !9
  store i8 %178, i8* %arrayidx7.i169.5.4, align 1, !tbaa !9
  %arrayidx.i166.6 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 43, i32 48
  %180 = load i8, i8* %arrayidx.i166.6, align 1, !tbaa !9
  %arrayidx7.i169.6 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 43, i32 6
  %181 = load i8, i8* %arrayidx7.i169.6, align 1, !tbaa !9
  store i8 %181, i8* %arrayidx.i166.6, align 1, !tbaa !9
  store i8 %180, i8* %arrayidx7.i169.6, align 1, !tbaa !9
  %arrayidx.i166.6.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 43, i32 49
  %182 = load i8, i8* %arrayidx.i166.6.1, align 1, !tbaa !9
  %arrayidx7.i169.6.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 43, i32 14
  %183 = load i8, i8* %arrayidx7.i169.6.1, align 1, !tbaa !9
  store i8 %183, i8* %arrayidx.i166.6.1, align 1, !tbaa !9
  store i8 %182, i8* %arrayidx7.i169.6.1, align 1, !tbaa !9
  %arrayidx.i166.6.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 43, i32 50
  %184 = load i8, i8* %arrayidx.i166.6.2, align 1, !tbaa !9
  %arrayidx7.i169.6.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 43, i32 22
  %185 = load i8, i8* %arrayidx7.i169.6.2, align 1, !tbaa !9
  store i8 %185, i8* %arrayidx.i166.6.2, align 1, !tbaa !9
  store i8 %184, i8* %arrayidx7.i169.6.2, align 1, !tbaa !9
  %arrayidx.i166.6.3 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 43, i32 51
  %186 = load i8, i8* %arrayidx.i166.6.3, align 1, !tbaa !9
  %arrayidx7.i169.6.3 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 43, i32 30
  %187 = load i8, i8* %arrayidx7.i169.6.3, align 1, !tbaa !9
  store i8 %187, i8* %arrayidx.i166.6.3, align 1, !tbaa !9
  store i8 %186, i8* %arrayidx7.i169.6.3, align 1, !tbaa !9
  %arrayidx.i166.6.4 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 43, i32 52
  %188 = load i8, i8* %arrayidx.i166.6.4, align 1, !tbaa !9
  %arrayidx7.i169.6.4 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 43, i32 38
  %189 = load i8, i8* %arrayidx7.i169.6.4, align 1, !tbaa !9
  store i8 %189, i8* %arrayidx.i166.6.4, align 1, !tbaa !9
  store i8 %188, i8* %arrayidx7.i169.6.4, align 1, !tbaa !9
  %arrayidx.i166.6.5 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 43, i32 53
  %190 = load i8, i8* %arrayidx.i166.6.5, align 1, !tbaa !9
  %arrayidx7.i169.6.5 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 43, i32 46
  %191 = load i8, i8* %arrayidx7.i169.6.5, align 1, !tbaa !9
  store i8 %191, i8* %arrayidx.i166.6.5, align 1, !tbaa !9
  store i8 %190, i8* %arrayidx7.i169.6.5, align 1, !tbaa !9
  %arrayidx.i166.7 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 43, i32 56
  %192 = load i8, i8* %arrayidx.i166.7, align 1, !tbaa !9
  %arrayidx7.i169.7 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 43, i32 7
  %193 = load i8, i8* %arrayidx7.i169.7, align 1, !tbaa !9
  store i8 %193, i8* %arrayidx.i166.7, align 1, !tbaa !9
  store i8 %192, i8* %arrayidx7.i169.7, align 1, !tbaa !9
  %arrayidx.i166.7.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 43, i32 57
  %194 = load i8, i8* %arrayidx.i166.7.1, align 1, !tbaa !9
  %arrayidx7.i169.7.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 43, i32 15
  %195 = load i8, i8* %arrayidx7.i169.7.1, align 1, !tbaa !9
  store i8 %195, i8* %arrayidx.i166.7.1, align 1, !tbaa !9
  store i8 %194, i8* %arrayidx7.i169.7.1, align 1, !tbaa !9
  %arrayidx.i166.7.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 43, i32 58
  %196 = load i8, i8* %arrayidx.i166.7.2, align 1, !tbaa !9
  %arrayidx7.i169.7.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 43, i32 23
  %197 = load i8, i8* %arrayidx7.i169.7.2, align 1, !tbaa !9
  store i8 %197, i8* %arrayidx.i166.7.2, align 1, !tbaa !9
  store i8 %196, i8* %arrayidx7.i169.7.2, align 1, !tbaa !9
  %arrayidx.i166.7.3 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 43, i32 59
  %198 = load i8, i8* %arrayidx.i166.7.3, align 1, !tbaa !9
  %arrayidx7.i169.7.3 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 43, i32 31
  %199 = load i8, i8* %arrayidx7.i169.7.3, align 1, !tbaa !9
  store i8 %199, i8* %arrayidx.i166.7.3, align 1, !tbaa !9
  store i8 %198, i8* %arrayidx7.i169.7.3, align 1, !tbaa !9
  %arrayidx.i166.7.4 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 43, i32 60
  %200 = load i8, i8* %arrayidx.i166.7.4, align 1, !tbaa !9
  %arrayidx7.i169.7.4 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 43, i32 39
  %201 = load i8, i8* %arrayidx7.i169.7.4, align 1, !tbaa !9
  store i8 %201, i8* %arrayidx.i166.7.4, align 1, !tbaa !9
  store i8 %200, i8* %arrayidx7.i169.7.4, align 1, !tbaa !9
  %arrayidx.i166.7.5 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 43, i32 61
  %202 = load i8, i8* %arrayidx.i166.7.5, align 1, !tbaa !9
  %arrayidx7.i169.7.5 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 43, i32 47
  %203 = load i8, i8* %arrayidx7.i169.7.5, align 1, !tbaa !9
  store i8 %203, i8* %arrayidx.i166.7.5, align 1, !tbaa !9
  store i8 %202, i8* %arrayidx7.i169.7.5, align 1, !tbaa !9
  %arrayidx.i166.7.6 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 43, i32 62
  %204 = load i8, i8* %arrayidx.i166.7.6, align 1, !tbaa !9
  %arrayidx7.i169.7.6 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 43, i32 55
  %205 = load i8, i8* %arrayidx7.i169.7.6, align 1, !tbaa !9
  store i8 %205, i8* %arrayidx.i166.7.6, align 1, !tbaa !9
  store i8 %204, i8* %arrayidx7.i169.7.6, align 1, !tbaa !9
  %arraydecay18 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 43, i32 0
  %arrayidx.i148.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 44, i32 8
  %206 = load i8, i8* %arrayidx.i148.1, align 1, !tbaa !9
  %arrayidx7.i151.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 44, i32 1
  %207 = load i8, i8* %arrayidx7.i151.1, align 1, !tbaa !9
  store i8 %207, i8* %arrayidx.i148.1, align 1, !tbaa !9
  store i8 %206, i8* %arrayidx7.i151.1, align 1, !tbaa !9
  %arrayidx.i148.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 44, i32 16
  %208 = load i8, i8* %arrayidx.i148.2, align 1, !tbaa !9
  %arrayidx7.i151.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 44, i32 2
  %209 = load i8, i8* %arrayidx7.i151.2, align 1, !tbaa !9
  store i8 %209, i8* %arrayidx.i148.2, align 1, !tbaa !9
  store i8 %208, i8* %arrayidx7.i151.2, align 1, !tbaa !9
  %arrayidx.i148.2.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 44, i32 17
  %210 = load i8, i8* %arrayidx.i148.2.1, align 1, !tbaa !9
  %arrayidx7.i151.2.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 44, i32 10
  %211 = load i8, i8* %arrayidx7.i151.2.1, align 1, !tbaa !9
  store i8 %211, i8* %arrayidx.i148.2.1, align 1, !tbaa !9
  store i8 %210, i8* %arrayidx7.i151.2.1, align 1, !tbaa !9
  %arrayidx.i148.3 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 44, i32 24
  %212 = load i8, i8* %arrayidx.i148.3, align 1, !tbaa !9
  %arrayidx7.i151.3 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 44, i32 3
  %213 = load i8, i8* %arrayidx7.i151.3, align 1, !tbaa !9
  store i8 %213, i8* %arrayidx.i148.3, align 1, !tbaa !9
  store i8 %212, i8* %arrayidx7.i151.3, align 1, !tbaa !9
  %arrayidx.i148.3.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 44, i32 25
  %214 = load i8, i8* %arrayidx.i148.3.1, align 1, !tbaa !9
  %arrayidx7.i151.3.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 44, i32 11
  %215 = load i8, i8* %arrayidx7.i151.3.1, align 1, !tbaa !9
  store i8 %215, i8* %arrayidx.i148.3.1, align 1, !tbaa !9
  store i8 %214, i8* %arrayidx7.i151.3.1, align 1, !tbaa !9
  %arrayidx.i148.3.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 44, i32 26
  %216 = load i8, i8* %arrayidx.i148.3.2, align 1, !tbaa !9
  %arrayidx7.i151.3.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 44, i32 19
  %217 = load i8, i8* %arrayidx7.i151.3.2, align 1, !tbaa !9
  store i8 %217, i8* %arrayidx.i148.3.2, align 1, !tbaa !9
  store i8 %216, i8* %arrayidx7.i151.3.2, align 1, !tbaa !9
  %arrayidx.i148.4 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 44, i32 32
  %218 = load i8, i8* %arrayidx.i148.4, align 1, !tbaa !9
  %arrayidx7.i151.4 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 44, i32 4
  %219 = load i8, i8* %arrayidx7.i151.4, align 1, !tbaa !9
  store i8 %219, i8* %arrayidx.i148.4, align 1, !tbaa !9
  store i8 %218, i8* %arrayidx7.i151.4, align 1, !tbaa !9
  %arrayidx.i148.4.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 44, i32 33
  %220 = load i8, i8* %arrayidx.i148.4.1, align 1, !tbaa !9
  %arrayidx7.i151.4.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 44, i32 12
  %221 = load i8, i8* %arrayidx7.i151.4.1, align 1, !tbaa !9
  store i8 %221, i8* %arrayidx.i148.4.1, align 1, !tbaa !9
  store i8 %220, i8* %arrayidx7.i151.4.1, align 1, !tbaa !9
  %arrayidx.i148.4.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 44, i32 34
  %222 = load i8, i8* %arrayidx.i148.4.2, align 1, !tbaa !9
  %arrayidx7.i151.4.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 44, i32 20
  %223 = load i8, i8* %arrayidx7.i151.4.2, align 1, !tbaa !9
  store i8 %223, i8* %arrayidx.i148.4.2, align 1, !tbaa !9
  store i8 %222, i8* %arrayidx7.i151.4.2, align 1, !tbaa !9
  %arrayidx.i148.4.3 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 44, i32 35
  %224 = load i8, i8* %arrayidx.i148.4.3, align 1, !tbaa !9
  %arrayidx7.i151.4.3 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 44, i32 28
  %225 = load i8, i8* %arrayidx7.i151.4.3, align 1, !tbaa !9
  store i8 %225, i8* %arrayidx.i148.4.3, align 1, !tbaa !9
  store i8 %224, i8* %arrayidx7.i151.4.3, align 1, !tbaa !9
  %arrayidx.i148.5 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 44, i32 40
  %226 = load i8, i8* %arrayidx.i148.5, align 1, !tbaa !9
  %arrayidx7.i151.5 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 44, i32 5
  %227 = load i8, i8* %arrayidx7.i151.5, align 1, !tbaa !9
  store i8 %227, i8* %arrayidx.i148.5, align 1, !tbaa !9
  store i8 %226, i8* %arrayidx7.i151.5, align 1, !tbaa !9
  %arrayidx.i148.5.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 44, i32 41
  %228 = load i8, i8* %arrayidx.i148.5.1, align 1, !tbaa !9
  %arrayidx7.i151.5.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 44, i32 13
  %229 = load i8, i8* %arrayidx7.i151.5.1, align 1, !tbaa !9
  store i8 %229, i8* %arrayidx.i148.5.1, align 1, !tbaa !9
  store i8 %228, i8* %arrayidx7.i151.5.1, align 1, !tbaa !9
  %arrayidx.i148.5.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 44, i32 42
  %230 = load i8, i8* %arrayidx.i148.5.2, align 1, !tbaa !9
  %arrayidx7.i151.5.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 44, i32 21
  %231 = load i8, i8* %arrayidx7.i151.5.2, align 1, !tbaa !9
  store i8 %231, i8* %arrayidx.i148.5.2, align 1, !tbaa !9
  store i8 %230, i8* %arrayidx7.i151.5.2, align 1, !tbaa !9
  %arrayidx.i148.5.3 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 44, i32 43
  %232 = load i8, i8* %arrayidx.i148.5.3, align 1, !tbaa !9
  %arrayidx7.i151.5.3 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 44, i32 29
  %233 = load i8, i8* %arrayidx7.i151.5.3, align 1, !tbaa !9
  store i8 %233, i8* %arrayidx.i148.5.3, align 1, !tbaa !9
  store i8 %232, i8* %arrayidx7.i151.5.3, align 1, !tbaa !9
  %arrayidx.i148.5.4 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 44, i32 44
  %234 = load i8, i8* %arrayidx.i148.5.4, align 1, !tbaa !9
  %arrayidx7.i151.5.4 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 44, i32 37
  %235 = load i8, i8* %arrayidx7.i151.5.4, align 1, !tbaa !9
  store i8 %235, i8* %arrayidx.i148.5.4, align 1, !tbaa !9
  store i8 %234, i8* %arrayidx7.i151.5.4, align 1, !tbaa !9
  %arrayidx.i148.6 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 44, i32 48
  %236 = load i8, i8* %arrayidx.i148.6, align 1, !tbaa !9
  %arrayidx7.i151.6 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 44, i32 6
  %237 = load i8, i8* %arrayidx7.i151.6, align 1, !tbaa !9
  store i8 %237, i8* %arrayidx.i148.6, align 1, !tbaa !9
  store i8 %236, i8* %arrayidx7.i151.6, align 1, !tbaa !9
  %arrayidx.i148.6.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 44, i32 49
  %238 = load i8, i8* %arrayidx.i148.6.1, align 1, !tbaa !9
  %arrayidx7.i151.6.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 44, i32 14
  %239 = load i8, i8* %arrayidx7.i151.6.1, align 1, !tbaa !9
  store i8 %239, i8* %arrayidx.i148.6.1, align 1, !tbaa !9
  store i8 %238, i8* %arrayidx7.i151.6.1, align 1, !tbaa !9
  %arrayidx.i148.6.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 44, i32 50
  %240 = load i8, i8* %arrayidx.i148.6.2, align 1, !tbaa !9
  %arrayidx7.i151.6.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 44, i32 22
  %241 = load i8, i8* %arrayidx7.i151.6.2, align 1, !tbaa !9
  store i8 %241, i8* %arrayidx.i148.6.2, align 1, !tbaa !9
  store i8 %240, i8* %arrayidx7.i151.6.2, align 1, !tbaa !9
  %arrayidx.i148.6.3 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 44, i32 51
  %242 = load i8, i8* %arrayidx.i148.6.3, align 1, !tbaa !9
  %arrayidx7.i151.6.3 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 44, i32 30
  %243 = load i8, i8* %arrayidx7.i151.6.3, align 1, !tbaa !9
  store i8 %243, i8* %arrayidx.i148.6.3, align 1, !tbaa !9
  store i8 %242, i8* %arrayidx7.i151.6.3, align 1, !tbaa !9
  %arrayidx.i148.6.4 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 44, i32 52
  %244 = load i8, i8* %arrayidx.i148.6.4, align 1, !tbaa !9
  %arrayidx7.i151.6.4 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 44, i32 38
  %245 = load i8, i8* %arrayidx7.i151.6.4, align 1, !tbaa !9
  store i8 %245, i8* %arrayidx.i148.6.4, align 1, !tbaa !9
  store i8 %244, i8* %arrayidx7.i151.6.4, align 1, !tbaa !9
  %arrayidx.i148.6.5 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 44, i32 53
  %246 = load i8, i8* %arrayidx.i148.6.5, align 1, !tbaa !9
  %arrayidx7.i151.6.5 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 44, i32 46
  %247 = load i8, i8* %arrayidx7.i151.6.5, align 1, !tbaa !9
  store i8 %247, i8* %arrayidx.i148.6.5, align 1, !tbaa !9
  store i8 %246, i8* %arrayidx7.i151.6.5, align 1, !tbaa !9
  %arrayidx.i148.7 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 44, i32 56
  %248 = load i8, i8* %arrayidx.i148.7, align 1, !tbaa !9
  %arrayidx7.i151.7 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 44, i32 7
  %249 = load i8, i8* %arrayidx7.i151.7, align 1, !tbaa !9
  store i8 %249, i8* %arrayidx.i148.7, align 1, !tbaa !9
  store i8 %248, i8* %arrayidx7.i151.7, align 1, !tbaa !9
  %arrayidx.i148.7.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 44, i32 57
  %250 = load i8, i8* %arrayidx.i148.7.1, align 1, !tbaa !9
  %arrayidx7.i151.7.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 44, i32 15
  %251 = load i8, i8* %arrayidx7.i151.7.1, align 1, !tbaa !9
  store i8 %251, i8* %arrayidx.i148.7.1, align 1, !tbaa !9
  store i8 %250, i8* %arrayidx7.i151.7.1, align 1, !tbaa !9
  %arrayidx.i148.7.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 44, i32 58
  %252 = load i8, i8* %arrayidx.i148.7.2, align 1, !tbaa !9
  %arrayidx7.i151.7.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 44, i32 23
  %253 = load i8, i8* %arrayidx7.i151.7.2, align 1, !tbaa !9
  store i8 %253, i8* %arrayidx.i148.7.2, align 1, !tbaa !9
  store i8 %252, i8* %arrayidx7.i151.7.2, align 1, !tbaa !9
  %arrayidx.i148.7.3 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 44, i32 59
  %254 = load i8, i8* %arrayidx.i148.7.3, align 1, !tbaa !9
  %arrayidx7.i151.7.3 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 44, i32 31
  %255 = load i8, i8* %arrayidx7.i151.7.3, align 1, !tbaa !9
  store i8 %255, i8* %arrayidx.i148.7.3, align 1, !tbaa !9
  store i8 %254, i8* %arrayidx7.i151.7.3, align 1, !tbaa !9
  %arrayidx.i148.7.4 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 44, i32 60
  %256 = load i8, i8* %arrayidx.i148.7.4, align 1, !tbaa !9
  %arrayidx7.i151.7.4 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 44, i32 39
  %257 = load i8, i8* %arrayidx7.i151.7.4, align 1, !tbaa !9
  store i8 %257, i8* %arrayidx.i148.7.4, align 1, !tbaa !9
  store i8 %256, i8* %arrayidx7.i151.7.4, align 1, !tbaa !9
  %arrayidx.i148.7.5 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 44, i32 61
  %258 = load i8, i8* %arrayidx.i148.7.5, align 1, !tbaa !9
  %arrayidx7.i151.7.5 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 44, i32 47
  %259 = load i8, i8* %arrayidx7.i151.7.5, align 1, !tbaa !9
  store i8 %259, i8* %arrayidx.i148.7.5, align 1, !tbaa !9
  store i8 %258, i8* %arrayidx7.i151.7.5, align 1, !tbaa !9
  %arrayidx.i148.7.6 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 44, i32 62
  %260 = load i8, i8* %arrayidx.i148.7.6, align 1, !tbaa !9
  %arrayidx7.i151.7.6 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 44, i32 55
  %261 = load i8, i8* %arrayidx7.i151.7.6, align 1, !tbaa !9
  store i8 %261, i8* %arrayidx.i148.7.6, align 1, !tbaa !9
  store i8 %260, i8* %arrayidx7.i151.7.6, align 1, !tbaa !9
  %arraydecay19 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 44, i32 0
  %arrayidx.i130.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 45, i32 8
  %262 = load i8, i8* %arrayidx.i130.1, align 1, !tbaa !9
  %arrayidx7.i133.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 45, i32 1
  %263 = load i8, i8* %arrayidx7.i133.1, align 1, !tbaa !9
  store i8 %263, i8* %arrayidx.i130.1, align 1, !tbaa !9
  store i8 %262, i8* %arrayidx7.i133.1, align 1, !tbaa !9
  %arrayidx.i130.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 45, i32 16
  %264 = load i8, i8* %arrayidx.i130.2, align 1, !tbaa !9
  %arrayidx7.i133.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 45, i32 2
  %265 = load i8, i8* %arrayidx7.i133.2, align 1, !tbaa !9
  store i8 %265, i8* %arrayidx.i130.2, align 1, !tbaa !9
  store i8 %264, i8* %arrayidx7.i133.2, align 1, !tbaa !9
  %arrayidx.i130.2.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 45, i32 17
  %266 = load i8, i8* %arrayidx.i130.2.1, align 1, !tbaa !9
  %arrayidx7.i133.2.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 45, i32 10
  %267 = load i8, i8* %arrayidx7.i133.2.1, align 1, !tbaa !9
  store i8 %267, i8* %arrayidx.i130.2.1, align 1, !tbaa !9
  store i8 %266, i8* %arrayidx7.i133.2.1, align 1, !tbaa !9
  %arrayidx.i130.3 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 45, i32 24
  %268 = load i8, i8* %arrayidx.i130.3, align 1, !tbaa !9
  %arrayidx7.i133.3 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 45, i32 3
  %269 = load i8, i8* %arrayidx7.i133.3, align 1, !tbaa !9
  store i8 %269, i8* %arrayidx.i130.3, align 1, !tbaa !9
  store i8 %268, i8* %arrayidx7.i133.3, align 1, !tbaa !9
  %arrayidx.i130.3.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 45, i32 25
  %270 = load i8, i8* %arrayidx.i130.3.1, align 1, !tbaa !9
  %arrayidx7.i133.3.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 45, i32 11
  %271 = load i8, i8* %arrayidx7.i133.3.1, align 1, !tbaa !9
  store i8 %271, i8* %arrayidx.i130.3.1, align 1, !tbaa !9
  store i8 %270, i8* %arrayidx7.i133.3.1, align 1, !tbaa !9
  %arrayidx.i130.3.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 45, i32 26
  %272 = load i8, i8* %arrayidx.i130.3.2, align 1, !tbaa !9
  %arrayidx7.i133.3.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 45, i32 19
  %273 = load i8, i8* %arrayidx7.i133.3.2, align 1, !tbaa !9
  store i8 %273, i8* %arrayidx.i130.3.2, align 1, !tbaa !9
  store i8 %272, i8* %arrayidx7.i133.3.2, align 1, !tbaa !9
  %arrayidx.i130.4 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 45, i32 32
  %274 = load i8, i8* %arrayidx.i130.4, align 1, !tbaa !9
  %arrayidx7.i133.4 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 45, i32 4
  %275 = load i8, i8* %arrayidx7.i133.4, align 1, !tbaa !9
  store i8 %275, i8* %arrayidx.i130.4, align 1, !tbaa !9
  store i8 %274, i8* %arrayidx7.i133.4, align 1, !tbaa !9
  %arrayidx.i130.4.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 45, i32 33
  %276 = load i8, i8* %arrayidx.i130.4.1, align 1, !tbaa !9
  %arrayidx7.i133.4.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 45, i32 12
  %277 = load i8, i8* %arrayidx7.i133.4.1, align 1, !tbaa !9
  store i8 %277, i8* %arrayidx.i130.4.1, align 1, !tbaa !9
  store i8 %276, i8* %arrayidx7.i133.4.1, align 1, !tbaa !9
  %arrayidx.i130.4.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 45, i32 34
  %278 = load i8, i8* %arrayidx.i130.4.2, align 1, !tbaa !9
  %arrayidx7.i133.4.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 45, i32 20
  %279 = load i8, i8* %arrayidx7.i133.4.2, align 1, !tbaa !9
  store i8 %279, i8* %arrayidx.i130.4.2, align 1, !tbaa !9
  store i8 %278, i8* %arrayidx7.i133.4.2, align 1, !tbaa !9
  %arrayidx.i130.4.3 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 45, i32 35
  %280 = load i8, i8* %arrayidx.i130.4.3, align 1, !tbaa !9
  %arrayidx7.i133.4.3 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 45, i32 28
  %281 = load i8, i8* %arrayidx7.i133.4.3, align 1, !tbaa !9
  store i8 %281, i8* %arrayidx.i130.4.3, align 1, !tbaa !9
  store i8 %280, i8* %arrayidx7.i133.4.3, align 1, !tbaa !9
  %arrayidx.i130.5 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 45, i32 40
  %282 = load i8, i8* %arrayidx.i130.5, align 1, !tbaa !9
  %arrayidx7.i133.5 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 45, i32 5
  %283 = load i8, i8* %arrayidx7.i133.5, align 1, !tbaa !9
  store i8 %283, i8* %arrayidx.i130.5, align 1, !tbaa !9
  store i8 %282, i8* %arrayidx7.i133.5, align 1, !tbaa !9
  %arrayidx.i130.5.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 45, i32 41
  %284 = load i8, i8* %arrayidx.i130.5.1, align 1, !tbaa !9
  %arrayidx7.i133.5.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 45, i32 13
  %285 = load i8, i8* %arrayidx7.i133.5.1, align 1, !tbaa !9
  store i8 %285, i8* %arrayidx.i130.5.1, align 1, !tbaa !9
  store i8 %284, i8* %arrayidx7.i133.5.1, align 1, !tbaa !9
  %arrayidx.i130.5.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 45, i32 42
  %286 = load i8, i8* %arrayidx.i130.5.2, align 1, !tbaa !9
  %arrayidx7.i133.5.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 45, i32 21
  %287 = load i8, i8* %arrayidx7.i133.5.2, align 1, !tbaa !9
  store i8 %287, i8* %arrayidx.i130.5.2, align 1, !tbaa !9
  store i8 %286, i8* %arrayidx7.i133.5.2, align 1, !tbaa !9
  %arrayidx.i130.5.3 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 45, i32 43
  %288 = load i8, i8* %arrayidx.i130.5.3, align 1, !tbaa !9
  %arrayidx7.i133.5.3 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 45, i32 29
  %289 = load i8, i8* %arrayidx7.i133.5.3, align 1, !tbaa !9
  store i8 %289, i8* %arrayidx.i130.5.3, align 1, !tbaa !9
  store i8 %288, i8* %arrayidx7.i133.5.3, align 1, !tbaa !9
  %arrayidx.i130.5.4 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 45, i32 44
  %290 = load i8, i8* %arrayidx.i130.5.4, align 1, !tbaa !9
  %arrayidx7.i133.5.4 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 45, i32 37
  %291 = load i8, i8* %arrayidx7.i133.5.4, align 1, !tbaa !9
  store i8 %291, i8* %arrayidx.i130.5.4, align 1, !tbaa !9
  store i8 %290, i8* %arrayidx7.i133.5.4, align 1, !tbaa !9
  %arrayidx.i130.6 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 45, i32 48
  %292 = load i8, i8* %arrayidx.i130.6, align 1, !tbaa !9
  %arrayidx7.i133.6 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 45, i32 6
  %293 = load i8, i8* %arrayidx7.i133.6, align 1, !tbaa !9
  store i8 %293, i8* %arrayidx.i130.6, align 1, !tbaa !9
  store i8 %292, i8* %arrayidx7.i133.6, align 1, !tbaa !9
  %arrayidx.i130.6.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 45, i32 49
  %294 = load i8, i8* %arrayidx.i130.6.1, align 1, !tbaa !9
  %arrayidx7.i133.6.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 45, i32 14
  %295 = load i8, i8* %arrayidx7.i133.6.1, align 1, !tbaa !9
  store i8 %295, i8* %arrayidx.i130.6.1, align 1, !tbaa !9
  store i8 %294, i8* %arrayidx7.i133.6.1, align 1, !tbaa !9
  %arrayidx.i130.6.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 45, i32 50
  %296 = load i8, i8* %arrayidx.i130.6.2, align 1, !tbaa !9
  %arrayidx7.i133.6.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 45, i32 22
  %297 = load i8, i8* %arrayidx7.i133.6.2, align 1, !tbaa !9
  store i8 %297, i8* %arrayidx.i130.6.2, align 1, !tbaa !9
  store i8 %296, i8* %arrayidx7.i133.6.2, align 1, !tbaa !9
  %arrayidx.i130.6.3 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 45, i32 51
  %298 = load i8, i8* %arrayidx.i130.6.3, align 1, !tbaa !9
  %arrayidx7.i133.6.3 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 45, i32 30
  %299 = load i8, i8* %arrayidx7.i133.6.3, align 1, !tbaa !9
  store i8 %299, i8* %arrayidx.i130.6.3, align 1, !tbaa !9
  store i8 %298, i8* %arrayidx7.i133.6.3, align 1, !tbaa !9
  %arrayidx.i130.6.4 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 45, i32 52
  %300 = load i8, i8* %arrayidx.i130.6.4, align 1, !tbaa !9
  %arrayidx7.i133.6.4 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 45, i32 38
  %301 = load i8, i8* %arrayidx7.i133.6.4, align 1, !tbaa !9
  store i8 %301, i8* %arrayidx.i130.6.4, align 1, !tbaa !9
  store i8 %300, i8* %arrayidx7.i133.6.4, align 1, !tbaa !9
  %arrayidx.i130.6.5 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 45, i32 53
  %302 = load i8, i8* %arrayidx.i130.6.5, align 1, !tbaa !9
  %arrayidx7.i133.6.5 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 45, i32 46
  %303 = load i8, i8* %arrayidx7.i133.6.5, align 1, !tbaa !9
  store i8 %303, i8* %arrayidx.i130.6.5, align 1, !tbaa !9
  store i8 %302, i8* %arrayidx7.i133.6.5, align 1, !tbaa !9
  %arrayidx.i130.7 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 45, i32 56
  %304 = load i8, i8* %arrayidx.i130.7, align 1, !tbaa !9
  %arrayidx7.i133.7 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 45, i32 7
  %305 = load i8, i8* %arrayidx7.i133.7, align 1, !tbaa !9
  store i8 %305, i8* %arrayidx.i130.7, align 1, !tbaa !9
  store i8 %304, i8* %arrayidx7.i133.7, align 1, !tbaa !9
  %arrayidx.i130.7.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 45, i32 57
  %306 = load i8, i8* %arrayidx.i130.7.1, align 1, !tbaa !9
  %arrayidx7.i133.7.1 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 45, i32 15
  %307 = load i8, i8* %arrayidx7.i133.7.1, align 1, !tbaa !9
  store i8 %307, i8* %arrayidx.i130.7.1, align 1, !tbaa !9
  store i8 %306, i8* %arrayidx7.i133.7.1, align 1, !tbaa !9
  %arrayidx.i130.7.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 45, i32 58
  %308 = load i8, i8* %arrayidx.i130.7.2, align 1, !tbaa !9
  %arrayidx7.i133.7.2 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 45, i32 23
  %309 = load i8, i8* %arrayidx7.i133.7.2, align 1, !tbaa !9
  store i8 %309, i8* %arrayidx.i130.7.2, align 1, !tbaa !9
  store i8 %308, i8* %arrayidx7.i133.7.2, align 1, !tbaa !9
  %arrayidx.i130.7.3 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 45, i32 59
  %310 = load i8, i8* %arrayidx.i130.7.3, align 1, !tbaa !9
  %arrayidx7.i133.7.3 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 45, i32 31
  %311 = load i8, i8* %arrayidx7.i133.7.3, align 1, !tbaa !9
  store i8 %311, i8* %arrayidx.i130.7.3, align 1, !tbaa !9
  store i8 %310, i8* %arrayidx7.i133.7.3, align 1, !tbaa !9
  %arrayidx.i130.7.4 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 45, i32 60
  %312 = load i8, i8* %arrayidx.i130.7.4, align 1, !tbaa !9
  %arrayidx7.i133.7.4 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 45, i32 39
  %313 = load i8, i8* %arrayidx7.i133.7.4, align 1, !tbaa !9
  store i8 %313, i8* %arrayidx.i130.7.4, align 1, !tbaa !9
  store i8 %312, i8* %arrayidx7.i133.7.4, align 1, !tbaa !9
  %arrayidx.i130.7.5 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 45, i32 61
  %314 = load i8, i8* %arrayidx.i130.7.5, align 1, !tbaa !9
  %arrayidx7.i133.7.5 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 45, i32 47
  %315 = load i8, i8* %arrayidx7.i133.7.5, align 1, !tbaa !9
  store i8 %315, i8* %arrayidx.i130.7.5, align 1, !tbaa !9
  store i8 %314, i8* %arrayidx7.i133.7.5, align 1, !tbaa !9
  %arrayidx.i130.7.6 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 45, i32 62
  %316 = load i8, i8* %arrayidx.i130.7.6, align 1, !tbaa !9
  %arrayidx7.i133.7.6 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 45, i32 55
  %317 = load i8, i8* %arrayidx7.i133.7.6, align 1, !tbaa !9
  store i8 %317, i8* %arrayidx.i130.7.6, align 1, !tbaa !9
  store i8 %316, i8* %arrayidx7.i133.7.6, align 1, !tbaa !9
  %arraydecay20 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 45, i32 0
  %arrayidx24 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 26, i32 0
  store i8* %arraydecay, i8** %arrayidx24, align 4, !tbaa !119
  %arrayidx28 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 26, i32 1
  store i8* %arraydecay14, i8** %arrayidx28, align 4, !tbaa !119
  %arrayidx32 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 26, i32 2
  store i8* %arraydecay15, i8** %arrayidx32, align 4, !tbaa !119
  %arrayidx36 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 26, i32 3
  store i8* %arraydecay16, i8** %arrayidx36, align 4, !tbaa !119
  %arrayidx40 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 26, i32 4
  store i8* %arraydecay17, i8** %arrayidx40, align 4, !tbaa !119
  %arrayidx44 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 26, i32 5
  store i8* %arraydecay18, i8** %arrayidx44, align 4, !tbaa !119
  %arrayidx48 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 26, i32 6
  store i8* %arraydecay19, i8** %arrayidx48, align 4, !tbaa !119
  %arrayidx52 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 26, i32 7
  store i8* %arraydecay20, i8** %arrayidx52, align 4, !tbaa !119
  %318 = bitcast i8** %arrayidx24 to i32*
  %319 = load i32, i32* bitcast ([8 x i8*]* @x264_cqm_jvt to i32*), align 4
  %320 = inttoptr i32 %319 to i8*
  %321 = load i8, i8* %arraydecay, align 1, !tbaa !9
  %cmp66 = icmp eq i8 %321, 0
  br i1 %cmp66, label %if.then, label %for.inc71

if.then.3.1:                                      ; preds = %for.inc71.3
  store i32 %382, i32* %381, align 4, !tbaa !119
  br label %for.inc71.3.1

for.inc71.3.1:                                    ; preds = %if.then.3.1, %for.inc71.3
  %322 = phi i8* [ %383, %if.then.3.1 ], [ %23, %for.inc71.3 ]
  %arrayidx65.3.2 = getelementptr inbounds i8, i8* %322, i32 2
  %323 = load i8, i8* %arrayidx65.3.2, align 1, !tbaa !9
  %cmp66.3.2 = icmp eq i8 %323, 0
  br i1 %cmp66.3.2, label %if.then.3.2, label %for.inc71.3.2

if.then.3.2:                                      ; preds = %for.inc71.3.1
  store i32 %382, i32* %381, align 4, !tbaa !119
  br label %for.inc71.3.2

for.inc71.3.2:                                    ; preds = %if.then.3.2, %for.inc71.3.1
  %324 = phi i8* [ %383, %if.then.3.2 ], [ %322, %for.inc71.3.1 ]
  %arrayidx65.3.3 = getelementptr inbounds i8, i8* %324, i32 3
  %325 = load i8, i8* %arrayidx65.3.3, align 1, !tbaa !9
  %cmp66.3.3 = icmp eq i8 %325, 0
  br i1 %cmp66.3.3, label %if.then.3.3, label %for.inc71.3.3

if.then.3.3:                                      ; preds = %for.inc71.3.2
  store i32 %382, i32* %381, align 4, !tbaa !119
  br label %for.inc71.3.3

for.inc71.3.3:                                    ; preds = %if.then.3.3, %for.inc71.3.2
  %326 = phi i8* [ %383, %if.then.3.3 ], [ %324, %for.inc71.3.2 ]
  %arrayidx65.3.4 = getelementptr inbounds i8, i8* %326, i32 4
  %327 = load i8, i8* %arrayidx65.3.4, align 1, !tbaa !9
  %cmp66.3.4 = icmp eq i8 %327, 0
  br i1 %cmp66.3.4, label %if.then.3.4, label %for.inc71.3.4

if.then.3.4:                                      ; preds = %for.inc71.3.3
  store i32 %382, i32* %381, align 4, !tbaa !119
  br label %for.inc71.3.4

for.inc71.3.4:                                    ; preds = %if.then.3.4, %for.inc71.3.3
  %328 = phi i8* [ %383, %if.then.3.4 ], [ %326, %for.inc71.3.3 ]
  %arrayidx65.3.5 = getelementptr inbounds i8, i8* %328, i32 5
  %329 = load i8, i8* %arrayidx65.3.5, align 1, !tbaa !9
  %cmp66.3.5 = icmp eq i8 %329, 0
  br i1 %cmp66.3.5, label %if.then.3.5, label %for.inc71.3.5

if.then.3.5:                                      ; preds = %for.inc71.3.4
  store i32 %382, i32* %381, align 4, !tbaa !119
  br label %for.inc71.3.5

for.inc71.3.5:                                    ; preds = %if.then.3.5, %for.inc71.3.4
  %330 = phi i8* [ %383, %if.then.3.5 ], [ %328, %for.inc71.3.4 ]
  %arrayidx65.3.6 = getelementptr inbounds i8, i8* %330, i32 6
  %331 = load i8, i8* %arrayidx65.3.6, align 1, !tbaa !9
  %cmp66.3.6 = icmp eq i8 %331, 0
  br i1 %cmp66.3.6, label %if.then.3.6, label %for.inc71.3.6

if.then.3.6:                                      ; preds = %for.inc71.3.5
  store i32 %382, i32* %381, align 4, !tbaa !119
  br label %for.inc71.3.6

for.inc71.3.6:                                    ; preds = %if.then.3.6, %for.inc71.3.5
  %332 = phi i8* [ %383, %if.then.3.6 ], [ %330, %for.inc71.3.5 ]
  %arrayidx65.3.7 = getelementptr inbounds i8, i8* %332, i32 7
  %333 = load i8, i8* %arrayidx65.3.7, align 1, !tbaa !9
  %cmp66.3.7 = icmp eq i8 %333, 0
  br i1 %cmp66.3.7, label %if.then.3.7, label %for.inc71.3.7

if.then.3.7:                                      ; preds = %for.inc71.3.6
  store i32 %382, i32* %381, align 4, !tbaa !119
  br label %for.inc71.3.7

for.inc71.3.7:                                    ; preds = %if.then.3.7, %for.inc71.3.6
  %334 = phi i8* [ %383, %if.then.3.7 ], [ %332, %for.inc71.3.6 ]
  %arrayidx65.3.8 = getelementptr inbounds i8, i8* %334, i32 8
  %335 = load i8, i8* %arrayidx65.3.8, align 1, !tbaa !9
  %cmp66.3.8 = icmp eq i8 %335, 0
  br i1 %cmp66.3.8, label %if.then.3.8, label %for.inc71.3.8

if.then.3.8:                                      ; preds = %for.inc71.3.7
  store i32 %382, i32* %381, align 4, !tbaa !119
  br label %for.inc71.3.8

for.inc71.3.8:                                    ; preds = %if.then.3.8, %for.inc71.3.7
  %336 = phi i8* [ %383, %if.then.3.8 ], [ %334, %for.inc71.3.7 ]
  %arrayidx65.3.9 = getelementptr inbounds i8, i8* %336, i32 9
  %337 = load i8, i8* %arrayidx65.3.9, align 1, !tbaa !9
  %cmp66.3.9 = icmp eq i8 %337, 0
  br i1 %cmp66.3.9, label %if.then.3.9, label %for.inc71.3.9

if.then.3.9:                                      ; preds = %for.inc71.3.8
  store i32 %382, i32* %381, align 4, !tbaa !119
  br label %for.inc71.3.9

for.inc71.3.9:                                    ; preds = %if.then.3.9, %for.inc71.3.8
  %338 = phi i8* [ %383, %if.then.3.9 ], [ %336, %for.inc71.3.8 ]
  %arrayidx65.3.10 = getelementptr inbounds i8, i8* %338, i32 10
  %339 = load i8, i8* %arrayidx65.3.10, align 1, !tbaa !9
  %cmp66.3.10 = icmp eq i8 %339, 0
  br i1 %cmp66.3.10, label %if.then.3.10, label %for.inc71.3.10

if.then.3.10:                                     ; preds = %for.inc71.3.9
  store i32 %382, i32* %381, align 4, !tbaa !119
  br label %for.inc71.3.10

for.inc71.3.10:                                   ; preds = %if.then.3.10, %for.inc71.3.9
  %340 = phi i8* [ %383, %if.then.3.10 ], [ %338, %for.inc71.3.9 ]
  %arrayidx65.3.11 = getelementptr inbounds i8, i8* %340, i32 11
  %341 = load i8, i8* %arrayidx65.3.11, align 1, !tbaa !9
  %cmp66.3.11 = icmp eq i8 %341, 0
  br i1 %cmp66.3.11, label %if.then.3.11, label %for.inc71.3.11

if.then.3.11:                                     ; preds = %for.inc71.3.10
  store i32 %382, i32* %381, align 4, !tbaa !119
  br label %for.inc71.3.11

for.inc71.3.11:                                   ; preds = %if.then.3.11, %for.inc71.3.10
  %342 = phi i8* [ %383, %if.then.3.11 ], [ %340, %for.inc71.3.10 ]
  %arrayidx65.3.12 = getelementptr inbounds i8, i8* %342, i32 12
  %343 = load i8, i8* %arrayidx65.3.12, align 1, !tbaa !9
  %cmp66.3.12 = icmp eq i8 %343, 0
  br i1 %cmp66.3.12, label %if.then.3.12, label %for.inc71.3.12

if.then.3.12:                                     ; preds = %for.inc71.3.11
  store i32 %382, i32* %381, align 4, !tbaa !119
  br label %for.inc71.3.12

for.inc71.3.12:                                   ; preds = %if.then.3.12, %for.inc71.3.11
  %344 = phi i8* [ %383, %if.then.3.12 ], [ %342, %for.inc71.3.11 ]
  %arrayidx65.3.13 = getelementptr inbounds i8, i8* %344, i32 13
  %345 = load i8, i8* %arrayidx65.3.13, align 1, !tbaa !9
  %cmp66.3.13 = icmp eq i8 %345, 0
  br i1 %cmp66.3.13, label %if.then.3.13, label %for.inc71.3.13

if.then.3.13:                                     ; preds = %for.inc71.3.12
  store i32 %382, i32* %381, align 4, !tbaa !119
  br label %for.inc71.3.13

for.inc71.3.13:                                   ; preds = %if.then.3.13, %for.inc71.3.12
  %346 = phi i8* [ %383, %if.then.3.13 ], [ %344, %for.inc71.3.12 ]
  %arrayidx65.3.14 = getelementptr inbounds i8, i8* %346, i32 14
  %347 = load i8, i8* %arrayidx65.3.14, align 1, !tbaa !9
  %cmp66.3.14 = icmp eq i8 %347, 0
  br i1 %cmp66.3.14, label %if.then.3.14, label %for.inc71.3.14

if.then.3.14:                                     ; preds = %for.inc71.3.13
  store i32 %382, i32* %381, align 4, !tbaa !119
  br label %for.inc71.3.14

for.inc71.3.14:                                   ; preds = %if.then.3.14, %for.inc71.3.13
  %348 = phi i8* [ %383, %if.then.3.14 ], [ %346, %for.inc71.3.13 ]
  %arrayidx65.3.15 = getelementptr inbounds i8, i8* %348, i32 15
  %349 = load i8, i8* %arrayidx65.3.15, align 1, !tbaa !9
  %cmp66.3.15 = icmp eq i8 %349, 0
  br i1 %cmp66.3.15, label %if.then.3.15, label %for.inc71.3.15

if.then.3.15:                                     ; preds = %for.inc71.3.14
  store i32 %382, i32* %381, align 4, !tbaa !119
  br label %for.inc71.3.15

for.inc71.3.15:                                   ; preds = %if.then.3.15, %for.inc71.3.14
  %350 = bitcast i8** %arrayidx40 to i32*
  %351 = load i32, i32* bitcast (i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @x264_cqm_jvt, i32 0, i32 4) to i32*), align 4
  %352 = inttoptr i32 %351 to i8*
  br label %for.body62.4

if.then.2.1:                                      ; preds = %for.inc71.2
  store i32 %414, i32* %413, align 4, !tbaa !119
  br label %for.inc71.2.1

for.inc71.2.1:                                    ; preds = %if.then.2.1, %for.inc71.2
  %353 = phi i8* [ %415, %if.then.2.1 ], [ %21, %for.inc71.2 ]
  %arrayidx65.2.2 = getelementptr inbounds i8, i8* %353, i32 2
  %354 = load i8, i8* %arrayidx65.2.2, align 1, !tbaa !9
  %cmp66.2.2 = icmp eq i8 %354, 0
  br i1 %cmp66.2.2, label %if.then.2.2, label %for.inc71.2.2

if.then.2.2:                                      ; preds = %for.inc71.2.1
  store i32 %414, i32* %413, align 4, !tbaa !119
  br label %for.inc71.2.2

for.inc71.2.2:                                    ; preds = %if.then.2.2, %for.inc71.2.1
  %355 = phi i8* [ %415, %if.then.2.2 ], [ %353, %for.inc71.2.1 ]
  %arrayidx65.2.3 = getelementptr inbounds i8, i8* %355, i32 3
  %356 = load i8, i8* %arrayidx65.2.3, align 1, !tbaa !9
  %cmp66.2.3 = icmp eq i8 %356, 0
  br i1 %cmp66.2.3, label %if.then.2.3, label %for.inc71.2.3

if.then.2.3:                                      ; preds = %for.inc71.2.2
  store i32 %414, i32* %413, align 4, !tbaa !119
  br label %for.inc71.2.3

for.inc71.2.3:                                    ; preds = %if.then.2.3, %for.inc71.2.2
  %357 = phi i8* [ %415, %if.then.2.3 ], [ %355, %for.inc71.2.2 ]
  %arrayidx65.2.4 = getelementptr inbounds i8, i8* %357, i32 4
  %358 = load i8, i8* %arrayidx65.2.4, align 1, !tbaa !9
  %cmp66.2.4 = icmp eq i8 %358, 0
  br i1 %cmp66.2.4, label %if.then.2.4, label %for.inc71.2.4

if.then.2.4:                                      ; preds = %for.inc71.2.3
  store i32 %414, i32* %413, align 4, !tbaa !119
  br label %for.inc71.2.4

for.inc71.2.4:                                    ; preds = %if.then.2.4, %for.inc71.2.3
  %359 = phi i8* [ %415, %if.then.2.4 ], [ %357, %for.inc71.2.3 ]
  %arrayidx65.2.5 = getelementptr inbounds i8, i8* %359, i32 5
  %360 = load i8, i8* %arrayidx65.2.5, align 1, !tbaa !9
  %cmp66.2.5 = icmp eq i8 %360, 0
  br i1 %cmp66.2.5, label %if.then.2.5, label %for.inc71.2.5

if.then.2.5:                                      ; preds = %for.inc71.2.4
  store i32 %414, i32* %413, align 4, !tbaa !119
  br label %for.inc71.2.5

for.inc71.2.5:                                    ; preds = %if.then.2.5, %for.inc71.2.4
  %361 = phi i8* [ %415, %if.then.2.5 ], [ %359, %for.inc71.2.4 ]
  %arrayidx65.2.6 = getelementptr inbounds i8, i8* %361, i32 6
  %362 = load i8, i8* %arrayidx65.2.6, align 1, !tbaa !9
  %cmp66.2.6 = icmp eq i8 %362, 0
  br i1 %cmp66.2.6, label %if.then.2.6, label %for.inc71.2.6

if.then.2.6:                                      ; preds = %for.inc71.2.5
  store i32 %414, i32* %413, align 4, !tbaa !119
  br label %for.inc71.2.6

for.inc71.2.6:                                    ; preds = %if.then.2.6, %for.inc71.2.5
  %363 = phi i8* [ %415, %if.then.2.6 ], [ %361, %for.inc71.2.5 ]
  %arrayidx65.2.7 = getelementptr inbounds i8, i8* %363, i32 7
  %364 = load i8, i8* %arrayidx65.2.7, align 1, !tbaa !9
  %cmp66.2.7 = icmp eq i8 %364, 0
  br i1 %cmp66.2.7, label %if.then.2.7, label %for.inc71.2.7

if.then.2.7:                                      ; preds = %for.inc71.2.6
  store i32 %414, i32* %413, align 4, !tbaa !119
  br label %for.inc71.2.7

for.inc71.2.7:                                    ; preds = %if.then.2.7, %for.inc71.2.6
  %365 = phi i8* [ %415, %if.then.2.7 ], [ %363, %for.inc71.2.6 ]
  %arrayidx65.2.8 = getelementptr inbounds i8, i8* %365, i32 8
  %366 = load i8, i8* %arrayidx65.2.8, align 1, !tbaa !9
  %cmp66.2.8 = icmp eq i8 %366, 0
  br i1 %cmp66.2.8, label %if.then.2.8, label %for.inc71.2.8

if.then.2.8:                                      ; preds = %for.inc71.2.7
  store i32 %414, i32* %413, align 4, !tbaa !119
  br label %for.inc71.2.8

for.inc71.2.8:                                    ; preds = %if.then.2.8, %for.inc71.2.7
  %367 = phi i8* [ %415, %if.then.2.8 ], [ %365, %for.inc71.2.7 ]
  %arrayidx65.2.9 = getelementptr inbounds i8, i8* %367, i32 9
  %368 = load i8, i8* %arrayidx65.2.9, align 1, !tbaa !9
  %cmp66.2.9 = icmp eq i8 %368, 0
  br i1 %cmp66.2.9, label %if.then.2.9, label %for.inc71.2.9

if.then.2.9:                                      ; preds = %for.inc71.2.8
  store i32 %414, i32* %413, align 4, !tbaa !119
  br label %for.inc71.2.9

for.inc71.2.9:                                    ; preds = %if.then.2.9, %for.inc71.2.8
  %369 = phi i8* [ %415, %if.then.2.9 ], [ %367, %for.inc71.2.8 ]
  %arrayidx65.2.10 = getelementptr inbounds i8, i8* %369, i32 10
  %370 = load i8, i8* %arrayidx65.2.10, align 1, !tbaa !9
  %cmp66.2.10 = icmp eq i8 %370, 0
  br i1 %cmp66.2.10, label %if.then.2.10, label %for.inc71.2.10

if.then.2.10:                                     ; preds = %for.inc71.2.9
  store i32 %414, i32* %413, align 4, !tbaa !119
  br label %for.inc71.2.10

for.inc71.2.10:                                   ; preds = %if.then.2.10, %for.inc71.2.9
  %371 = phi i8* [ %415, %if.then.2.10 ], [ %369, %for.inc71.2.9 ]
  %arrayidx65.2.11 = getelementptr inbounds i8, i8* %371, i32 11
  %372 = load i8, i8* %arrayidx65.2.11, align 1, !tbaa !9
  %cmp66.2.11 = icmp eq i8 %372, 0
  br i1 %cmp66.2.11, label %if.then.2.11, label %for.inc71.2.11

if.then.2.11:                                     ; preds = %for.inc71.2.10
  store i32 %414, i32* %413, align 4, !tbaa !119
  br label %for.inc71.2.11

for.inc71.2.11:                                   ; preds = %if.then.2.11, %for.inc71.2.10
  %373 = phi i8* [ %415, %if.then.2.11 ], [ %371, %for.inc71.2.10 ]
  %arrayidx65.2.12 = getelementptr inbounds i8, i8* %373, i32 12
  %374 = load i8, i8* %arrayidx65.2.12, align 1, !tbaa !9
  %cmp66.2.12 = icmp eq i8 %374, 0
  br i1 %cmp66.2.12, label %if.then.2.12, label %for.inc71.2.12

if.then.2.12:                                     ; preds = %for.inc71.2.11
  store i32 %414, i32* %413, align 4, !tbaa !119
  br label %for.inc71.2.12

for.inc71.2.12:                                   ; preds = %if.then.2.12, %for.inc71.2.11
  %375 = phi i8* [ %415, %if.then.2.12 ], [ %373, %for.inc71.2.11 ]
  %arrayidx65.2.13 = getelementptr inbounds i8, i8* %375, i32 13
  %376 = load i8, i8* %arrayidx65.2.13, align 1, !tbaa !9
  %cmp66.2.13 = icmp eq i8 %376, 0
  br i1 %cmp66.2.13, label %if.then.2.13, label %for.inc71.2.13

if.then.2.13:                                     ; preds = %for.inc71.2.12
  store i32 %414, i32* %413, align 4, !tbaa !119
  br label %for.inc71.2.13

for.inc71.2.13:                                   ; preds = %if.then.2.13, %for.inc71.2.12
  %377 = phi i8* [ %415, %if.then.2.13 ], [ %375, %for.inc71.2.12 ]
  %arrayidx65.2.14 = getelementptr inbounds i8, i8* %377, i32 14
  %378 = load i8, i8* %arrayidx65.2.14, align 1, !tbaa !9
  %cmp66.2.14 = icmp eq i8 %378, 0
  br i1 %cmp66.2.14, label %if.then.2.14, label %for.inc71.2.14

if.then.2.14:                                     ; preds = %for.inc71.2.13
  store i32 %414, i32* %413, align 4, !tbaa !119
  br label %for.inc71.2.14

for.inc71.2.14:                                   ; preds = %if.then.2.14, %for.inc71.2.13
  %379 = phi i8* [ %415, %if.then.2.14 ], [ %377, %for.inc71.2.13 ]
  %arrayidx65.2.15 = getelementptr inbounds i8, i8* %379, i32 15
  %380 = load i8, i8* %arrayidx65.2.15, align 1, !tbaa !9
  %cmp66.2.15 = icmp eq i8 %380, 0
  br i1 %cmp66.2.15, label %if.then.2.15, label %for.inc71.2.15

if.then.2.15:                                     ; preds = %for.inc71.2.14
  store i32 %414, i32* %413, align 4, !tbaa !119
  br label %for.inc71.2.15

for.inc71.2.15:                                   ; preds = %if.then.2.15, %for.inc71.2.14
  %381 = bitcast i8** %arrayidx36 to i32*
  %382 = load i32, i32* bitcast (i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @x264_cqm_jvt, i32 0, i32 3) to i32*), align 4
  %383 = inttoptr i32 %382 to i8*
  %384 = load i8, i8* %arraydecay16, align 1, !tbaa !9
  %cmp66.3 = icmp eq i8 %384, 0
  br i1 %cmp66.3, label %if.then.3, label %for.inc71.3

if.then.1.1:                                      ; preds = %for.inc71.1
  store i32 %446, i32* %445, align 4, !tbaa !119
  br label %for.inc71.1.1

for.inc71.1.1:                                    ; preds = %if.then.1.1, %for.inc71.1
  %385 = phi i8* [ %447, %if.then.1.1 ], [ %19, %for.inc71.1 ]
  %arrayidx65.1.2 = getelementptr inbounds i8, i8* %385, i32 2
  %386 = load i8, i8* %arrayidx65.1.2, align 1, !tbaa !9
  %cmp66.1.2 = icmp eq i8 %386, 0
  br i1 %cmp66.1.2, label %if.then.1.2, label %for.inc71.1.2

if.then.1.2:                                      ; preds = %for.inc71.1.1
  store i32 %446, i32* %445, align 4, !tbaa !119
  br label %for.inc71.1.2

for.inc71.1.2:                                    ; preds = %if.then.1.2, %for.inc71.1.1
  %387 = phi i8* [ %447, %if.then.1.2 ], [ %385, %for.inc71.1.1 ]
  %arrayidx65.1.3 = getelementptr inbounds i8, i8* %387, i32 3
  %388 = load i8, i8* %arrayidx65.1.3, align 1, !tbaa !9
  %cmp66.1.3 = icmp eq i8 %388, 0
  br i1 %cmp66.1.3, label %if.then.1.3, label %for.inc71.1.3

if.then.1.3:                                      ; preds = %for.inc71.1.2
  store i32 %446, i32* %445, align 4, !tbaa !119
  br label %for.inc71.1.3

for.inc71.1.3:                                    ; preds = %if.then.1.3, %for.inc71.1.2
  %389 = phi i8* [ %447, %if.then.1.3 ], [ %387, %for.inc71.1.2 ]
  %arrayidx65.1.4 = getelementptr inbounds i8, i8* %389, i32 4
  %390 = load i8, i8* %arrayidx65.1.4, align 1, !tbaa !9
  %cmp66.1.4 = icmp eq i8 %390, 0
  br i1 %cmp66.1.4, label %if.then.1.4, label %for.inc71.1.4

if.then.1.4:                                      ; preds = %for.inc71.1.3
  store i32 %446, i32* %445, align 4, !tbaa !119
  br label %for.inc71.1.4

for.inc71.1.4:                                    ; preds = %if.then.1.4, %for.inc71.1.3
  %391 = phi i8* [ %447, %if.then.1.4 ], [ %389, %for.inc71.1.3 ]
  %arrayidx65.1.5 = getelementptr inbounds i8, i8* %391, i32 5
  %392 = load i8, i8* %arrayidx65.1.5, align 1, !tbaa !9
  %cmp66.1.5 = icmp eq i8 %392, 0
  br i1 %cmp66.1.5, label %if.then.1.5, label %for.inc71.1.5

if.then.1.5:                                      ; preds = %for.inc71.1.4
  store i32 %446, i32* %445, align 4, !tbaa !119
  br label %for.inc71.1.5

for.inc71.1.5:                                    ; preds = %if.then.1.5, %for.inc71.1.4
  %393 = phi i8* [ %447, %if.then.1.5 ], [ %391, %for.inc71.1.4 ]
  %arrayidx65.1.6 = getelementptr inbounds i8, i8* %393, i32 6
  %394 = load i8, i8* %arrayidx65.1.6, align 1, !tbaa !9
  %cmp66.1.6 = icmp eq i8 %394, 0
  br i1 %cmp66.1.6, label %if.then.1.6, label %for.inc71.1.6

if.then.1.6:                                      ; preds = %for.inc71.1.5
  store i32 %446, i32* %445, align 4, !tbaa !119
  br label %for.inc71.1.6

for.inc71.1.6:                                    ; preds = %if.then.1.6, %for.inc71.1.5
  %395 = phi i8* [ %447, %if.then.1.6 ], [ %393, %for.inc71.1.5 ]
  %arrayidx65.1.7 = getelementptr inbounds i8, i8* %395, i32 7
  %396 = load i8, i8* %arrayidx65.1.7, align 1, !tbaa !9
  %cmp66.1.7 = icmp eq i8 %396, 0
  br i1 %cmp66.1.7, label %if.then.1.7, label %for.inc71.1.7

if.then.1.7:                                      ; preds = %for.inc71.1.6
  store i32 %446, i32* %445, align 4, !tbaa !119
  br label %for.inc71.1.7

for.inc71.1.7:                                    ; preds = %if.then.1.7, %for.inc71.1.6
  %397 = phi i8* [ %447, %if.then.1.7 ], [ %395, %for.inc71.1.6 ]
  %arrayidx65.1.8 = getelementptr inbounds i8, i8* %397, i32 8
  %398 = load i8, i8* %arrayidx65.1.8, align 1, !tbaa !9
  %cmp66.1.8 = icmp eq i8 %398, 0
  br i1 %cmp66.1.8, label %if.then.1.8, label %for.inc71.1.8

if.then.1.8:                                      ; preds = %for.inc71.1.7
  store i32 %446, i32* %445, align 4, !tbaa !119
  br label %for.inc71.1.8

for.inc71.1.8:                                    ; preds = %if.then.1.8, %for.inc71.1.7
  %399 = phi i8* [ %447, %if.then.1.8 ], [ %397, %for.inc71.1.7 ]
  %arrayidx65.1.9 = getelementptr inbounds i8, i8* %399, i32 9
  %400 = load i8, i8* %arrayidx65.1.9, align 1, !tbaa !9
  %cmp66.1.9 = icmp eq i8 %400, 0
  br i1 %cmp66.1.9, label %if.then.1.9, label %for.inc71.1.9

if.then.1.9:                                      ; preds = %for.inc71.1.8
  store i32 %446, i32* %445, align 4, !tbaa !119
  br label %for.inc71.1.9

for.inc71.1.9:                                    ; preds = %if.then.1.9, %for.inc71.1.8
  %401 = phi i8* [ %447, %if.then.1.9 ], [ %399, %for.inc71.1.8 ]
  %arrayidx65.1.10 = getelementptr inbounds i8, i8* %401, i32 10
  %402 = load i8, i8* %arrayidx65.1.10, align 1, !tbaa !9
  %cmp66.1.10 = icmp eq i8 %402, 0
  br i1 %cmp66.1.10, label %if.then.1.10, label %for.inc71.1.10

if.then.1.10:                                     ; preds = %for.inc71.1.9
  store i32 %446, i32* %445, align 4, !tbaa !119
  br label %for.inc71.1.10

for.inc71.1.10:                                   ; preds = %if.then.1.10, %for.inc71.1.9
  %403 = phi i8* [ %447, %if.then.1.10 ], [ %401, %for.inc71.1.9 ]
  %arrayidx65.1.11 = getelementptr inbounds i8, i8* %403, i32 11
  %404 = load i8, i8* %arrayidx65.1.11, align 1, !tbaa !9
  %cmp66.1.11 = icmp eq i8 %404, 0
  br i1 %cmp66.1.11, label %if.then.1.11, label %for.inc71.1.11

if.then.1.11:                                     ; preds = %for.inc71.1.10
  store i32 %446, i32* %445, align 4, !tbaa !119
  br label %for.inc71.1.11

for.inc71.1.11:                                   ; preds = %if.then.1.11, %for.inc71.1.10
  %405 = phi i8* [ %447, %if.then.1.11 ], [ %403, %for.inc71.1.10 ]
  %arrayidx65.1.12 = getelementptr inbounds i8, i8* %405, i32 12
  %406 = load i8, i8* %arrayidx65.1.12, align 1, !tbaa !9
  %cmp66.1.12 = icmp eq i8 %406, 0
  br i1 %cmp66.1.12, label %if.then.1.12, label %for.inc71.1.12

if.then.1.12:                                     ; preds = %for.inc71.1.11
  store i32 %446, i32* %445, align 4, !tbaa !119
  br label %for.inc71.1.12

for.inc71.1.12:                                   ; preds = %if.then.1.12, %for.inc71.1.11
  %407 = phi i8* [ %447, %if.then.1.12 ], [ %405, %for.inc71.1.11 ]
  %arrayidx65.1.13 = getelementptr inbounds i8, i8* %407, i32 13
  %408 = load i8, i8* %arrayidx65.1.13, align 1, !tbaa !9
  %cmp66.1.13 = icmp eq i8 %408, 0
  br i1 %cmp66.1.13, label %if.then.1.13, label %for.inc71.1.13

if.then.1.13:                                     ; preds = %for.inc71.1.12
  store i32 %446, i32* %445, align 4, !tbaa !119
  br label %for.inc71.1.13

for.inc71.1.13:                                   ; preds = %if.then.1.13, %for.inc71.1.12
  %409 = phi i8* [ %447, %if.then.1.13 ], [ %407, %for.inc71.1.12 ]
  %arrayidx65.1.14 = getelementptr inbounds i8, i8* %409, i32 14
  %410 = load i8, i8* %arrayidx65.1.14, align 1, !tbaa !9
  %cmp66.1.14 = icmp eq i8 %410, 0
  br i1 %cmp66.1.14, label %if.then.1.14, label %for.inc71.1.14

if.then.1.14:                                     ; preds = %for.inc71.1.13
  store i32 %446, i32* %445, align 4, !tbaa !119
  br label %for.inc71.1.14

for.inc71.1.14:                                   ; preds = %if.then.1.14, %for.inc71.1.13
  %411 = phi i8* [ %447, %if.then.1.14 ], [ %409, %for.inc71.1.13 ]
  %arrayidx65.1.15 = getelementptr inbounds i8, i8* %411, i32 15
  %412 = load i8, i8* %arrayidx65.1.15, align 1, !tbaa !9
  %cmp66.1.15 = icmp eq i8 %412, 0
  br i1 %cmp66.1.15, label %if.then.1.15, label %for.inc71.1.15

if.then.1.15:                                     ; preds = %for.inc71.1.14
  store i32 %446, i32* %445, align 4, !tbaa !119
  br label %for.inc71.1.15

for.inc71.1.15:                                   ; preds = %if.then.1.15, %for.inc71.1.14
  %413 = bitcast i8** %arrayidx32 to i32*
  %414 = load i32, i32* bitcast (i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @x264_cqm_jvt, i32 0, i32 2) to i32*), align 4
  %415 = inttoptr i32 %414 to i8*
  %416 = load i8, i8* %arraydecay15, align 1, !tbaa !9
  %cmp66.2 = icmp eq i8 %416, 0
  br i1 %cmp66.2, label %if.then.2, label %for.inc71.2

if.then.1257:                                     ; preds = %for.inc71
  store i32 %319, i32* %318, align 4, !tbaa !119
  br label %for.inc71.1258

for.inc71.1258:                                   ; preds = %if.then.1257, %for.inc71
  %417 = phi i8* [ %17, %for.inc71 ], [ %320, %if.then.1257 ]
  %arrayidx65.2 = getelementptr inbounds i8, i8* %417, i32 2
  %418 = load i8, i8* %arrayidx65.2, align 1, !tbaa !9
  %cmp66.2259 = icmp eq i8 %418, 0
  br i1 %cmp66.2259, label %if.then.2261, label %for.inc71.2262

if.then.2261:                                     ; preds = %for.inc71.1258
  store i32 %319, i32* %318, align 4, !tbaa !119
  br label %for.inc71.2262

for.inc71.2262:                                   ; preds = %if.then.2261, %for.inc71.1258
  %419 = phi i8* [ %417, %for.inc71.1258 ], [ %320, %if.then.2261 ]
  %arrayidx65.3 = getelementptr inbounds i8, i8* %419, i32 3
  %420 = load i8, i8* %arrayidx65.3, align 1, !tbaa !9
  %cmp66.3263 = icmp eq i8 %420, 0
  br i1 %cmp66.3263, label %if.then.3265, label %for.inc71.3266

if.then.3265:                                     ; preds = %for.inc71.2262
  store i32 %319, i32* %318, align 4, !tbaa !119
  br label %for.inc71.3266

for.inc71.3266:                                   ; preds = %if.then.3265, %for.inc71.2262
  %421 = phi i8* [ %419, %for.inc71.2262 ], [ %320, %if.then.3265 ]
  %arrayidx65.4268 = getelementptr inbounds i8, i8* %421, i32 4
  %422 = load i8, i8* %arrayidx65.4268, align 1, !tbaa !9
  %cmp66.4269 = icmp eq i8 %422, 0
  br i1 %cmp66.4269, label %if.then.4271, label %for.inc71.4274

if.then.4271:                                     ; preds = %for.inc71.3266
  store i32 %319, i32* %318, align 4, !tbaa !119
  br label %for.inc71.4274

for.inc71.4274:                                   ; preds = %if.then.4271, %for.inc71.3266
  %423 = phi i8* [ %421, %for.inc71.3266 ], [ %320, %if.then.4271 ]
  %arrayidx65.5276 = getelementptr inbounds i8, i8* %423, i32 5
  %424 = load i8, i8* %arrayidx65.5276, align 1, !tbaa !9
  %cmp66.5277 = icmp eq i8 %424, 0
  br i1 %cmp66.5277, label %if.then.5279, label %for.inc71.5282

if.then.5279:                                     ; preds = %for.inc71.4274
  store i32 %319, i32* %318, align 4, !tbaa !119
  br label %for.inc71.5282

for.inc71.5282:                                   ; preds = %if.then.5279, %for.inc71.4274
  %425 = phi i8* [ %423, %for.inc71.4274 ], [ %320, %if.then.5279 ]
  %arrayidx65.6284 = getelementptr inbounds i8, i8* %425, i32 6
  %426 = load i8, i8* %arrayidx65.6284, align 1, !tbaa !9
  %cmp66.6285 = icmp eq i8 %426, 0
  br i1 %cmp66.6285, label %if.then.6287, label %for.inc71.6290

if.then.6287:                                     ; preds = %for.inc71.5282
  store i32 %319, i32* %318, align 4, !tbaa !119
  br label %for.inc71.6290

for.inc71.6290:                                   ; preds = %if.then.6287, %for.inc71.5282
  %427 = phi i8* [ %425, %for.inc71.5282 ], [ %320, %if.then.6287 ]
  %arrayidx65.7292 = getelementptr inbounds i8, i8* %427, i32 7
  %428 = load i8, i8* %arrayidx65.7292, align 1, !tbaa !9
  %cmp66.7293 = icmp eq i8 %428, 0
  br i1 %cmp66.7293, label %if.then.7295, label %for.inc71.7298

if.then.7295:                                     ; preds = %for.inc71.6290
  store i32 %319, i32* %318, align 4, !tbaa !119
  br label %for.inc71.7298

for.inc71.7298:                                   ; preds = %if.then.7295, %for.inc71.6290
  %429 = phi i8* [ %427, %for.inc71.6290 ], [ %320, %if.then.7295 ]
  %arrayidx65.8 = getelementptr inbounds i8, i8* %429, i32 8
  %430 = load i8, i8* %arrayidx65.8, align 1, !tbaa !9
  %cmp66.8 = icmp eq i8 %430, 0
  br i1 %cmp66.8, label %if.then.8, label %for.inc71.8

if.then.8:                                        ; preds = %for.inc71.7298
  store i32 %319, i32* %318, align 4, !tbaa !119
  br label %for.inc71.8

for.inc71.8:                                      ; preds = %if.then.8, %for.inc71.7298
  %431 = phi i8* [ %429, %for.inc71.7298 ], [ %320, %if.then.8 ]
  %arrayidx65.9 = getelementptr inbounds i8, i8* %431, i32 9
  %432 = load i8, i8* %arrayidx65.9, align 1, !tbaa !9
  %cmp66.9 = icmp eq i8 %432, 0
  br i1 %cmp66.9, label %if.then.9, label %for.inc71.9

if.then.9:                                        ; preds = %for.inc71.8
  store i32 %319, i32* %318, align 4, !tbaa !119
  br label %for.inc71.9

for.inc71.9:                                      ; preds = %if.then.9, %for.inc71.8
  %433 = phi i8* [ %431, %for.inc71.8 ], [ %320, %if.then.9 ]
  %arrayidx65.10 = getelementptr inbounds i8, i8* %433, i32 10
  %434 = load i8, i8* %arrayidx65.10, align 1, !tbaa !9
  %cmp66.10 = icmp eq i8 %434, 0
  br i1 %cmp66.10, label %if.then.10, label %for.inc71.10

if.then.10:                                       ; preds = %for.inc71.9
  store i32 %319, i32* %318, align 4, !tbaa !119
  br label %for.inc71.10

for.inc71.10:                                     ; preds = %if.then.10, %for.inc71.9
  %435 = phi i8* [ %433, %for.inc71.9 ], [ %320, %if.then.10 ]
  %arrayidx65.11 = getelementptr inbounds i8, i8* %435, i32 11
  %436 = load i8, i8* %arrayidx65.11, align 1, !tbaa !9
  %cmp66.11 = icmp eq i8 %436, 0
  br i1 %cmp66.11, label %if.then.11, label %for.inc71.11

if.then.11:                                       ; preds = %for.inc71.10
  store i32 %319, i32* %318, align 4, !tbaa !119
  br label %for.inc71.11

for.inc71.11:                                     ; preds = %if.then.11, %for.inc71.10
  %437 = phi i8* [ %435, %for.inc71.10 ], [ %320, %if.then.11 ]
  %arrayidx65.12 = getelementptr inbounds i8, i8* %437, i32 12
  %438 = load i8, i8* %arrayidx65.12, align 1, !tbaa !9
  %cmp66.12 = icmp eq i8 %438, 0
  br i1 %cmp66.12, label %if.then.12, label %for.inc71.12

if.then.12:                                       ; preds = %for.inc71.11
  store i32 %319, i32* %318, align 4, !tbaa !119
  br label %for.inc71.12

for.inc71.12:                                     ; preds = %if.then.12, %for.inc71.11
  %439 = phi i8* [ %437, %for.inc71.11 ], [ %320, %if.then.12 ]
  %arrayidx65.13 = getelementptr inbounds i8, i8* %439, i32 13
  %440 = load i8, i8* %arrayidx65.13, align 1, !tbaa !9
  %cmp66.13 = icmp eq i8 %440, 0
  br i1 %cmp66.13, label %if.then.13, label %for.inc71.13

if.then.13:                                       ; preds = %for.inc71.12
  store i32 %319, i32* %318, align 4, !tbaa !119
  br label %for.inc71.13

for.inc71.13:                                     ; preds = %if.then.13, %for.inc71.12
  %441 = phi i8* [ %439, %for.inc71.12 ], [ %320, %if.then.13 ]
  %arrayidx65.14 = getelementptr inbounds i8, i8* %441, i32 14
  %442 = load i8, i8* %arrayidx65.14, align 1, !tbaa !9
  %cmp66.14 = icmp eq i8 %442, 0
  br i1 %cmp66.14, label %if.then.14, label %for.inc71.14

if.then.14:                                       ; preds = %for.inc71.13
  store i32 %319, i32* %318, align 4, !tbaa !119
  br label %for.inc71.14

for.inc71.14:                                     ; preds = %if.then.14, %for.inc71.13
  %443 = phi i8* [ %441, %for.inc71.13 ], [ %320, %if.then.14 ]
  %arrayidx65.15 = getelementptr inbounds i8, i8* %443, i32 15
  %444 = load i8, i8* %arrayidx65.15, align 1, !tbaa !9
  %cmp66.15 = icmp eq i8 %444, 0
  br i1 %cmp66.15, label %if.then.15, label %for.inc71.15

if.then.15:                                       ; preds = %for.inc71.14
  store i32 %319, i32* %318, align 4, !tbaa !119
  br label %for.inc71.15

for.inc71.15:                                     ; preds = %if.then.15, %for.inc71.14
  %445 = bitcast i8** %arrayidx28 to i32*
  %446 = load i32, i32* bitcast (i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @x264_cqm_jvt, i32 0, i32 1) to i32*), align 4
  %447 = inttoptr i32 %446 to i8*
  %448 = load i8, i8* %arraydecay14, align 1, !tbaa !9
  %cmp66.1 = icmp eq i8 %448, 0
  br i1 %cmp66.1, label %if.then.1, label %for.inc71.1
}

; Function Attrs: nofree nounwind
define hidden void @x264_8_sps_write(%struct.bs_s* %s, %struct.x264_sps_t* readonly %sps) local_unnamed_addr #0 {
entry:
  %p.i = getelementptr inbounds %struct.bs_s, %struct.bs_s* %s, i32 0, i32 1
  %0 = load i8*, i8** %p.i, align 4, !tbaa !2
  %1 = ptrtoint i8* %0 to i32
  %and.i = and i32 %1, 3
  %tobool.i = icmp eq i32 %and.i, 0
  br i1 %tobool.i, label %entry.bs_realign.exit_crit_edge, label %if.then.i

entry.bs_realign.exit_crit_edge:                  ; preds = %entry
  %2 = bitcast i8* %0 to i32*
  %i_left.i1811.phi.trans.insert = getelementptr inbounds %struct.bs_s, %struct.bs_s* %s, i32 0, i32 4
  %.pre = load i32, i32* %i_left.i1811.phi.trans.insert, align 4, !tbaa !8
  br label %bs_realign.exit

if.then.i:                                        ; preds = %entry
  %idx.neg.i = sub nsw i32 0, %and.i
  %add.ptr.i = getelementptr inbounds i8, i8* %0, i32 %idx.neg.i
  store i8* %add.ptr.i, i8** %p.i, align 4, !tbaa !2
  %sub.i = shl nuw nsw i32 %and.i, 3
  %mul.i = sub nuw nsw i32 32, %sub.i
  %i_left.i = getelementptr inbounds %struct.bs_s, %struct.bs_s* %s, i32 0, i32 4
  store i32 %mul.i, i32* %i_left.i, align 4, !tbaa !8
  %.cast.i = bitcast i8* %add.ptr.i to i32*
  %3 = load i32, i32* %.cast.i, align 4, !tbaa !9
  %add5.i.i = tail call i32 @llvm.bswap.i32(i32 %3) #9
  %cur_bits.i = getelementptr inbounds %struct.bs_s, %struct.bs_s* %s, i32 0, i32 3
  %shr.i = lshr i32 %add5.i.i, %mul.i
  store i32 %shr.i, i32* %cur_bits.i, align 4, !tbaa !10
  br label %bs_realign.exit

bs_realign.exit:                                  ; preds = %entry.bs_realign.exit_crit_edge, %if.then.i
  %4 = phi i32* [ %2, %entry.bs_realign.exit_crit_edge ], [ %.cast.i, %if.then.i ]
  %5 = phi i32 [ %.pre, %entry.bs_realign.exit_crit_edge ], [ %mul.i, %if.then.i ]
  %i_profile_idc = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 1
  %6 = load i32, i32* %i_profile_idc, align 4, !tbaa !41
  %i_left.i1811 = getelementptr inbounds %struct.bs_s, %struct.bs_s* %s, i32 0, i32 4
  %cmp.i1812 = icmp sgt i32 %5, 8
  br i1 %cmp.i1812, label %if.then.i1817, label %if.else.i1827

if.then.i1817:                                    ; preds = %bs_realign.exit
  %cur_bits.i1813 = getelementptr inbounds %struct.bs_s, %struct.bs_s* %s, i32 0, i32 3
  %7 = load i32, i32* %cur_bits.i1813, align 4, !tbaa !10
  %shl.i1814 = shl i32 %7, 8
  %or.i1815 = or i32 %shl.i1814, %6
  store i32 %or.i1815, i32* %cur_bits.i1813, align 4, !tbaa !10
  %sub.i1816 = add nsw i32 %5, -8
  br label %bs_write.exit1829

if.else.i1827:                                    ; preds = %bs_realign.exit
  %sub4.i1818 = sub nsw i32 8, %5
  %cur_bits5.i1819 = getelementptr inbounds %struct.bs_s, %struct.bs_s* %s, i32 0, i32 3
  %8 = load i32, i32* %cur_bits5.i1819, align 4, !tbaa !10
  %shl7.i1820 = shl i32 %8, %5
  %shr.i1821 = lshr i32 %6, %sub4.i1818
  %or8.i1822 = or i32 %shl7.i1820, %shr.i1821
  %add5.i.i.i1823 = tail call i32 @llvm.bswap.i32(i32 %or8.i1822) #9
  store i32 %add5.i.i.i1823, i32* %4, align 4, !tbaa !9
  %9 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i1825 = getelementptr inbounds i8, i8* %9, i32 4
  store i8* %add.ptr.i1825, i8** %p.i, align 4, !tbaa !2
  store i32 %6, i32* %cur_bits5.i1819, align 4, !tbaa !10
  %sub13.i1826 = add nsw i32 %5, 24
  %10 = bitcast i8* %add.ptr.i1825 to i32*
  br label %bs_write.exit1829

bs_write.exit1829:                                ; preds = %if.then.i1817, %if.else.i1827
  %11 = phi i32* [ %10, %if.else.i1827 ], [ %4, %if.then.i1817 ]
  %12 = phi i32 [ %6, %if.else.i1827 ], [ %or.i1815, %if.then.i1817 ]
  %storemerge.i1828 = phi i32 [ %sub13.i1826, %if.else.i1827 ], [ %sub.i1816, %if.then.i1817 ]
  %b_constraint_set0 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 3
  %13 = load i32, i32* %b_constraint_set0, align 4, !tbaa !42
  %cur_bits.i1840 = getelementptr inbounds %struct.bs_s, %struct.bs_s* %s, i32 0, i32 3
  %shl.i1841 = shl i32 %12, 1
  %or.i1842 = or i32 %shl.i1841, %13
  store i32 %or.i1842, i32* %cur_bits.i1840, align 4, !tbaa !10
  %dec.i1844 = add nsw i32 %storemerge.i1828, -1
  store i32 %dec.i1844, i32* %i_left.i1811, align 4, !tbaa !8
  %cmp.i1845 = icmp eq i32 %dec.i1844, 0
  br i1 %cmp.i1845, label %if.then.i1849, label %bs_write1.exit1850

if.then.i1849:                                    ; preds = %bs_write.exit1829
  %add5.i.i1846 = tail call i32 @llvm.bswap.i32(i32 %or.i1842) #9
  store i32 %add5.i.i1846, i32* %11, align 4, !tbaa !9
  %14 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i1848 = getelementptr inbounds i8, i8* %14, i32 4
  store i8* %add.ptr.i1848, i8** %p.i, align 4, !tbaa !2
  store i32 32, i32* %i_left.i1811, align 4, !tbaa !8
  %.pre2151 = load i32, i32* %cur_bits.i1840, align 4, !tbaa !10
  %15 = bitcast i8* %add.ptr.i1848 to i32*
  br label %bs_write1.exit1850

bs_write1.exit1850:                               ; preds = %bs_write.exit1829, %if.then.i1849
  %16 = phi i32* [ %11, %bs_write.exit1829 ], [ %15, %if.then.i1849 ]
  %17 = phi i32 [ %dec.i1844, %bs_write.exit1829 ], [ 32, %if.then.i1849 ]
  %18 = phi i32 [ %or.i1842, %bs_write.exit1829 ], [ %.pre2151, %if.then.i1849 ]
  %b_constraint_set1 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 4
  %19 = load i32, i32* %b_constraint_set1, align 4, !tbaa !43
  %shl.i1862 = shl i32 %18, 1
  %or.i1863 = or i32 %shl.i1862, %19
  store i32 %or.i1863, i32* %cur_bits.i1840, align 4, !tbaa !10
  %dec.i1865 = add nsw i32 %17, -1
  store i32 %dec.i1865, i32* %i_left.i1811, align 4, !tbaa !8
  %cmp.i1866 = icmp eq i32 %dec.i1865, 0
  br i1 %cmp.i1866, label %if.then.i1870, label %bs_write1.exit1871

if.then.i1870:                                    ; preds = %bs_write1.exit1850
  %add5.i.i1867 = tail call i32 @llvm.bswap.i32(i32 %or.i1863) #9
  store i32 %add5.i.i1867, i32* %16, align 4, !tbaa !9
  %20 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i1869 = getelementptr inbounds i8, i8* %20, i32 4
  store i8* %add.ptr.i1869, i8** %p.i, align 4, !tbaa !2
  store i32 32, i32* %i_left.i1811, align 4, !tbaa !8
  %.pre2152 = load i32, i32* %cur_bits.i1840, align 4, !tbaa !10
  %21 = bitcast i8* %add.ptr.i1869 to i32*
  br label %bs_write1.exit1871

bs_write1.exit1871:                               ; preds = %bs_write1.exit1850, %if.then.i1870
  %22 = phi i32* [ %16, %bs_write1.exit1850 ], [ %21, %if.then.i1870 ]
  %23 = phi i32 [ %dec.i1865, %bs_write1.exit1850 ], [ 32, %if.then.i1870 ]
  %24 = phi i32 [ %or.i1863, %bs_write1.exit1850 ], [ %.pre2152, %if.then.i1870 ]
  %b_constraint_set2 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 5
  %25 = load i32, i32* %b_constraint_set2, align 4, !tbaa !44
  %shl.i1903 = shl i32 %24, 1
  %or.i1904 = or i32 %shl.i1903, %25
  store i32 %or.i1904, i32* %cur_bits.i1840, align 4, !tbaa !10
  %dec.i1906 = add nsw i32 %23, -1
  store i32 %dec.i1906, i32* %i_left.i1811, align 4, !tbaa !8
  %cmp.i1907 = icmp eq i32 %dec.i1906, 0
  br i1 %cmp.i1907, label %if.then.i1911, label %bs_write1.exit1912

if.then.i1911:                                    ; preds = %bs_write1.exit1871
  %add5.i.i1908 = tail call i32 @llvm.bswap.i32(i32 %or.i1904) #9
  store i32 %add5.i.i1908, i32* %22, align 4, !tbaa !9
  %26 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i1910 = getelementptr inbounds i8, i8* %26, i32 4
  store i8* %add.ptr.i1910, i8** %p.i, align 4, !tbaa !2
  store i32 32, i32* %i_left.i1811, align 4, !tbaa !8
  %.pre2153 = load i32, i32* %cur_bits.i1840, align 4, !tbaa !10
  %27 = bitcast i8* %add.ptr.i1910 to i32*
  br label %bs_write1.exit1912

bs_write1.exit1912:                               ; preds = %bs_write1.exit1871, %if.then.i1911
  %28 = phi i32* [ %22, %bs_write1.exit1871 ], [ %27, %if.then.i1911 ]
  %29 = phi i32 [ %dec.i1906, %bs_write1.exit1871 ], [ 32, %if.then.i1911 ]
  %30 = phi i32 [ %or.i1904, %bs_write1.exit1871 ], [ %.pre2153, %if.then.i1911 ]
  %b_constraint_set3 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 6
  %31 = load i32, i32* %b_constraint_set3, align 4, !tbaa !45
  %shl.i1914 = shl i32 %30, 1
  %or.i1915 = or i32 %shl.i1914, %31
  store i32 %or.i1915, i32* %cur_bits.i1840, align 4, !tbaa !10
  %dec.i1917 = add nsw i32 %29, -1
  store i32 %dec.i1917, i32* %i_left.i1811, align 4, !tbaa !8
  %cmp.i1918 = icmp eq i32 %dec.i1917, 0
  br i1 %cmp.i1918, label %bs_write1.exit1923.thread, label %bs_write1.exit1923

bs_write1.exit1923.thread:                        ; preds = %bs_write1.exit1912
  %add5.i.i1919 = tail call i32 @llvm.bswap.i32(i32 %or.i1915) #9
  store i32 %add5.i.i1919, i32* %28, align 4, !tbaa !9
  %32 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i1921 = getelementptr inbounds i8, i8* %32, i32 4
  store i8* %add.ptr.i1921, i8** %p.i, align 4, !tbaa !2
  store i32 32, i32* %i_left.i1811, align 4, !tbaa !8
  %.pre2154 = load i32, i32* %cur_bits.i1840, align 4, !tbaa !10
  %33 = bitcast i8* %add.ptr.i1921 to i32*
  br label %if.then.i1929

bs_write1.exit1923:                               ; preds = %bs_write1.exit1912
  %cmp.i1925 = icmp sgt i32 %29, 5
  br i1 %cmp.i1925, label %if.then.i1929, label %if.else.i1937

if.then.i1929:                                    ; preds = %bs_write1.exit1923.thread, %bs_write1.exit1923
  %34 = phi i32* [ %33, %bs_write1.exit1923.thread ], [ %28, %bs_write1.exit1923 ]
  %35 = phi i32 [ %.pre2154, %bs_write1.exit1923.thread ], [ %or.i1915, %bs_write1.exit1923 ]
  %36 = phi i32 [ 32, %bs_write1.exit1923.thread ], [ %dec.i1917, %bs_write1.exit1923 ]
  %shl.i1927 = shl i32 %35, 4
  store i32 %shl.i1927, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub.i1928 = add nsw i32 %36, -4
  br label %bs_write.exit1939

if.else.i1937:                                    ; preds = %bs_write1.exit1923
  %shl7.i1932 = shl i32 %or.i1915, %dec.i1917
  %add5.i.i.i1933 = tail call i32 @llvm.bswap.i32(i32 %shl7.i1932) #9
  store i32 %add5.i.i.i1933, i32* %28, align 4, !tbaa !9
  %37 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i1935 = getelementptr inbounds i8, i8* %37, i32 4
  store i8* %add.ptr.i1935, i8** %p.i, align 4, !tbaa !2
  store i32 0, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub13.i1936 = add nsw i32 %29, 27
  %38 = bitcast i8* %add.ptr.i1935 to i32*
  br label %bs_write.exit1939

bs_write.exit1939:                                ; preds = %if.then.i1929, %if.else.i1937
  %39 = phi i32* [ %38, %if.else.i1937 ], [ %34, %if.then.i1929 ]
  %40 = phi i32 [ 0, %if.else.i1937 ], [ %shl.i1927, %if.then.i1929 ]
  %storemerge.i1938 = phi i32 [ %sub13.i1936, %if.else.i1937 ], [ %sub.i1928, %if.then.i1929 ]
  store i32 %storemerge.i1938, i32* %i_left.i1811, align 4, !tbaa !8
  %i_level_idc = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 2
  %41 = load i32, i32* %i_level_idc, align 4, !tbaa !47
  %cmp.i2117 = icmp sgt i32 %storemerge.i1938, 8
  br i1 %cmp.i2117, label %if.then.i2122, label %if.else.i2132

if.then.i2122:                                    ; preds = %bs_write.exit1939
  %shl.i2119 = shl i32 %40, 8
  %or.i2120 = or i32 %shl.i2119, %41
  store i32 %or.i2120, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub.i2121 = add nsw i32 %storemerge.i1938, -8
  br label %bs_write.exit2134

if.else.i2132:                                    ; preds = %bs_write.exit1939
  %sub4.i2123 = sub nsw i32 8, %storemerge.i1938
  %shl7.i2125 = shl i32 %40, %storemerge.i1938
  %shr.i2126 = lshr i32 %41, %sub4.i2123
  %or8.i2127 = or i32 %shl7.i2125, %shr.i2126
  %add5.i.i.i2128 = tail call i32 @llvm.bswap.i32(i32 %or8.i2127) #9
  store i32 %add5.i.i.i2128, i32* %39, align 4, !tbaa !9
  %42 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i2130 = getelementptr inbounds i8, i8* %42, i32 4
  store i8* %add.ptr.i2130, i8** %p.i, align 4, !tbaa !2
  store i32 %41, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub13.i2131 = add nsw i32 %storemerge.i1938, 24
  %43 = bitcast i8* %add.ptr.i2130 to i32*
  br label %bs_write.exit2134

bs_write.exit2134:                                ; preds = %if.then.i2122, %if.else.i2132
  %44 = phi i32* [ %43, %if.else.i2132 ], [ %39, %if.then.i2122 ]
  %45 = phi i32 [ %41, %if.else.i2132 ], [ %or.i2120, %if.then.i2122 ]
  %storemerge.i2133 = phi i32 [ %sub13.i2131, %if.else.i2132 ], [ %sub.i2121, %if.then.i2122 ]
  store i32 %storemerge.i2133, i32* %i_left.i1811, align 4, !tbaa !8
  %i_id = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 0
  %46 = load i32, i32* %i_id, align 4, !tbaa !21
  %inc.i2072 = add i32 %46, 1
  %cmp.i2073 = icmp sgt i32 %inc.i2072, 65535
  %shr.i2074 = ashr i32 %inc.i2072, 16
  %spec.select.i2075 = select i1 %cmp.i2073, i32 32, i32 0
  %spec.select20.i2076 = select i1 %cmp.i2073, i32 %shr.i2074, i32 %inc.i2072
  %cmp1.i2077 = icmp sgt i32 %spec.select20.i2076, 255
  %add.i2078 = or i32 %spec.select.i2075, 16
  %shr3.i2079 = ashr i32 %spec.select20.i2076, 8
  %size.1.i2080 = select i1 %cmp1.i2077, i32 %add.i2078, i32 %spec.select.i2075
  %tmp.1.i2081 = select i1 %cmp1.i2077, i32 %shr3.i2079, i32 %spec.select20.i2076
  %arrayidx.i2082 = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %tmp.1.i2081
  %47 = load i8, i8* %arrayidx.i2082, align 1, !tbaa !9
  %conv.i2083 = zext i8 %47 to i32
  %add5.i2084 = add nuw nsw i32 %size.1.i2080, %conv.i2083
  %48 = lshr i32 %add5.i2084, 1
  %cmp.i.i2086 = icmp sgt i32 %storemerge.i2133, %48
  br i1 %cmp.i.i2086, label %if.then.i.i2089, label %if.else.i.i2095

if.then.i.i2089:                                  ; preds = %bs_write.exit2134
  %shl.i.i2088 = shl i32 %45, %48
  store i32 %shl.i.i2088, i32* %cur_bits.i1840, align 4, !tbaa !10
  br label %bs_write.exit.i2100

if.else.i.i2095:                                  ; preds = %bs_write.exit2134
  %shl7.i.i2090 = shl i32 %45, %storemerge.i2133
  %add5.i.i.i.i2091 = tail call i32 @llvm.bswap.i32(i32 %shl7.i.i2090) #9
  store i32 %add5.i.i.i.i2091, i32* %44, align 4, !tbaa !9
  %49 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i.i2093 = getelementptr inbounds i8, i8* %49, i32 4
  store i8* %add.ptr.i.i2093, i8** %p.i, align 4, !tbaa !2
  store i32 0, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub4.i37.i2094 = add i32 %storemerge.i2133, 32
  %50 = bitcast i8* %add.ptr.i.i2093 to i32*
  br label %bs_write.exit.i2100

bs_write.exit.i2100:                              ; preds = %if.else.i.i2095, %if.then.i.i2089
  %51 = phi i32* [ %50, %if.else.i.i2095 ], [ %44, %if.then.i.i2089 ]
  %52 = phi i32 [ 0, %if.else.i.i2095 ], [ %shl.i.i2088, %if.then.i.i2089 ]
  %sub4.i37.pn.i2096 = phi i32 [ %sub4.i37.i2094, %if.else.i.i2095 ], [ %storemerge.i2133, %if.then.i.i2089 ]
  %storemerge.i.i2097 = sub i32 %sub4.i37.pn.i2096, %48
  store i32 %storemerge.i.i2097, i32* %i_left.i1811, align 4, !tbaa !8
  %add8.i2098 = add nuw nsw i32 %48, 1
  %cmp.i22.i2099 = icmp sgt i32 %storemerge.i.i2097, %add8.i2098
  br i1 %cmp.i22.i2099, label %if.then.i26.i2104, label %if.else.i34.i2113

if.then.i26.i2104:                                ; preds = %bs_write.exit.i2100
  %shl.i24.i2101 = shl i32 %52, %add8.i2098
  %or.i.i2102 = or i32 %shl.i24.i2101, %inc.i2072
  store i32 %or.i.i2102, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub.i25.i2103 = sub nsw i32 %storemerge.i.i2097, %add8.i2098
  br label %bs_write_ue_big.exit2115

if.else.i34.i2113:                                ; preds = %bs_write.exit.i2100
  %sub4.i27.i2105 = sub nsw i32 %add8.i2098, %storemerge.i.i2097
  %shl7.i29.i2106 = shl i32 %52, %storemerge.i.i2097
  %shr.i.i2107 = lshr i32 %inc.i2072, %sub4.i27.i2105
  %or8.i.i2108 = or i32 %shr.i.i2107, %shl7.i29.i2106
  %add5.i.i.i30.i2109 = tail call i32 @llvm.bswap.i32(i32 %or8.i.i2108) #9
  store i32 %add5.i.i.i30.i2109, i32* %51, align 4, !tbaa !9
  %53 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i32.i2111 = getelementptr inbounds i8, i8* %53, i32 4
  store i8* %add.ptr.i32.i2111, i8** %p.i, align 4, !tbaa !2
  store i32 %inc.i2072, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub13.i33.i2112 = sub nsw i32 32, %sub4.i27.i2105
  %54 = bitcast i8* %add.ptr.i32.i2111 to i32*
  br label %bs_write_ue_big.exit2115

bs_write_ue_big.exit2115:                         ; preds = %if.then.i26.i2104, %if.else.i34.i2113
  %55 = phi i32* [ %54, %if.else.i34.i2113 ], [ %51, %if.then.i26.i2104 ]
  %56 = phi i32 [ %inc.i2072, %if.else.i34.i2113 ], [ %or.i.i2102, %if.then.i26.i2104 ]
  %storemerge.i35.i2114 = phi i32 [ %sub13.i33.i2112, %if.else.i34.i2113 ], [ %sub.i25.i2103, %if.then.i26.i2104 ]
  store i32 %storemerge.i35.i2114, i32* %i_left.i1811, align 4, !tbaa !8
  %57 = load i32, i32* %i_profile_idc, align 4, !tbaa !41
  %cmp = icmp sgt i32 %57, 99
  br i1 %cmp, label %if.then, label %if.end12

if.then:                                          ; preds = %bs_write_ue_big.exit2115
  %i_chroma_format_idc = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 22
  %58 = load i32, i32* %i_chroma_format_idc, align 4, !tbaa !32
  %inc.i2028 = add i32 %58, 1
  %cmp.i2029 = icmp sgt i32 %inc.i2028, 65535
  %shr.i2030 = ashr i32 %inc.i2028, 16
  %spec.select.i2031 = select i1 %cmp.i2029, i32 32, i32 0
  %spec.select20.i2032 = select i1 %cmp.i2029, i32 %shr.i2030, i32 %inc.i2028
  %cmp1.i2033 = icmp sgt i32 %spec.select20.i2032, 255
  %add.i2034 = or i32 %spec.select.i2031, 16
  %shr3.i2035 = ashr i32 %spec.select20.i2032, 8
  %size.1.i2036 = select i1 %cmp1.i2033, i32 %add.i2034, i32 %spec.select.i2031
  %tmp.1.i2037 = select i1 %cmp1.i2033, i32 %shr3.i2035, i32 %spec.select20.i2032
  %arrayidx.i2038 = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %tmp.1.i2037
  %59 = load i8, i8* %arrayidx.i2038, align 1, !tbaa !9
  %conv.i2039 = zext i8 %59 to i32
  %add5.i2040 = add nuw nsw i32 %size.1.i2036, %conv.i2039
  %60 = lshr i32 %add5.i2040, 1
  %cmp.i.i2042 = icmp sgt i32 %storemerge.i35.i2114, %60
  br i1 %cmp.i.i2042, label %if.then.i.i2045, label %if.else.i.i2051

if.then.i.i2045:                                  ; preds = %if.then
  %shl.i.i2044 = shl i32 %56, %60
  store i32 %shl.i.i2044, i32* %cur_bits.i1840, align 4, !tbaa !10
  br label %bs_write.exit.i2056

if.else.i.i2051:                                  ; preds = %if.then
  %shl7.i.i2046 = shl i32 %56, %storemerge.i35.i2114
  %add5.i.i.i.i2047 = tail call i32 @llvm.bswap.i32(i32 %shl7.i.i2046) #9
  store i32 %add5.i.i.i.i2047, i32* %55, align 4, !tbaa !9
  %61 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i.i2049 = getelementptr inbounds i8, i8* %61, i32 4
  store i8* %add.ptr.i.i2049, i8** %p.i, align 4, !tbaa !2
  store i32 0, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub4.i37.i2050 = add i32 %storemerge.i35.i2114, 32
  %62 = bitcast i8* %add.ptr.i.i2049 to i32*
  br label %bs_write.exit.i2056

bs_write.exit.i2056:                              ; preds = %if.else.i.i2051, %if.then.i.i2045
  %63 = phi i32* [ %62, %if.else.i.i2051 ], [ %55, %if.then.i.i2045 ]
  %64 = phi i32 [ 0, %if.else.i.i2051 ], [ %shl.i.i2044, %if.then.i.i2045 ]
  %sub4.i37.pn.i2052 = phi i32 [ %sub4.i37.i2050, %if.else.i.i2051 ], [ %storemerge.i35.i2114, %if.then.i.i2045 ]
  %storemerge.i.i2053 = sub i32 %sub4.i37.pn.i2052, %60
  store i32 %storemerge.i.i2053, i32* %i_left.i1811, align 4, !tbaa !8
  %add8.i2054 = add nuw nsw i32 %60, 1
  %cmp.i22.i2055 = icmp sgt i32 %storemerge.i.i2053, %add8.i2054
  br i1 %cmp.i22.i2055, label %if.then.i26.i2060, label %if.else.i34.i2069

if.then.i26.i2060:                                ; preds = %bs_write.exit.i2056
  %shl.i24.i2057 = shl i32 %64, %add8.i2054
  %or.i.i2058 = or i32 %shl.i24.i2057, %inc.i2028
  store i32 %or.i.i2058, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub.i25.i2059 = sub nsw i32 %storemerge.i.i2053, %add8.i2054
  br label %bs_write_ue_big.exit2071

if.else.i34.i2069:                                ; preds = %bs_write.exit.i2056
  %sub4.i27.i2061 = sub nsw i32 %add8.i2054, %storemerge.i.i2053
  %shl7.i29.i2062 = shl i32 %64, %storemerge.i.i2053
  %shr.i.i2063 = lshr i32 %inc.i2028, %sub4.i27.i2061
  %or8.i.i2064 = or i32 %shr.i.i2063, %shl7.i29.i2062
  %add5.i.i.i30.i2065 = tail call i32 @llvm.bswap.i32(i32 %or8.i.i2064) #9
  store i32 %add5.i.i.i30.i2065, i32* %63, align 4, !tbaa !9
  %65 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i32.i2067 = getelementptr inbounds i8, i8* %65, i32 4
  store i8* %add.ptr.i32.i2067, i8** %p.i, align 4, !tbaa !2
  store i32 %inc.i2028, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub13.i33.i2068 = sub nsw i32 32, %sub4.i27.i2061
  %66 = bitcast i8* %add.ptr.i32.i2067 to i32*
  br label %bs_write_ue_big.exit2071

bs_write_ue_big.exit2071:                         ; preds = %if.then.i26.i2060, %if.else.i34.i2069
  %67 = phi i32* [ %66, %if.else.i34.i2069 ], [ %63, %if.then.i26.i2060 ]
  %68 = phi i32 [ %inc.i2028, %if.else.i34.i2069 ], [ %or.i.i2058, %if.then.i26.i2060 ]
  %storemerge.i35.i2070 = phi i32 [ %sub13.i33.i2068, %if.else.i34.i2069 ], [ %sub.i25.i2059, %if.then.i26.i2060 ]
  store i32 %storemerge.i35.i2070, i32* %i_left.i1811, align 4, !tbaa !8
  %69 = load i32, i32* %i_chroma_format_idc, align 4, !tbaa !32
  %cmp3 = icmp eq i32 %69, 3
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %bs_write_ue_big.exit2071
  %shl.i2019 = shl i32 %68, 1
  store i32 %shl.i2019, i32* %cur_bits.i1840, align 4, !tbaa !10
  %dec.i2021 = add nsw i32 %storemerge.i35.i2070, -1
  store i32 %dec.i2021, i32* %i_left.i1811, align 4, !tbaa !8
  %cmp.i2022 = icmp eq i32 %dec.i2021, 0
  br i1 %cmp.i2022, label %bs_write.exit.i2002.thread, label %if.end

bs_write.exit.i2002.thread:                       ; preds = %if.then4
  %add5.i.i2023 = tail call i32 @llvm.bswap.i32(i32 %shl.i2019) #9
  store i32 %add5.i.i2023, i32* %67, align 4, !tbaa !9
  %70 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i2025 = getelementptr inbounds i8, i8* %70, i32 4
  store i8* %add.ptr.i2025, i8** %p.i, align 4, !tbaa !2
  %71 = load i32, i32* %cur_bits.i1840, align 4, !tbaa !10
  store i32 32, i32* %i_left.i1811, align 4, !tbaa !8
  %72 = bitcast i8* %add.ptr.i2025 to i32*
  br label %bs_write_ue_big.exit2017.thread

if.end:                                           ; preds = %if.then4, %bs_write_ue_big.exit2071
  %73 = phi i32 [ %shl.i2019, %if.then4 ], [ %68, %bs_write_ue_big.exit2071 ]
  %74 = phi i32 [ %dec.i2021, %if.then4 ], [ %storemerge.i35.i2070, %bs_write_ue_big.exit2071 ]
  %cmp.i.i1991 = icmp sgt i32 %74, 0
  br i1 %cmp.i.i1991, label %bs_write.exit.i2002, label %if.else.i.i1999

if.else.i.i1999:                                  ; preds = %if.end
  %shl7.i.i1994 = shl nuw nsw i32 %73, %74
  %add5.i.i.i.i1995 = tail call i32 @llvm.bswap.i32(i32 %shl7.i.i1994) #9
  store i32 %add5.i.i.i.i1995, i32* %67, align 4, !tbaa !9
  %75 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i.i1997 = getelementptr inbounds i8, i8* %75, i32 4
  store i8* %add.ptr.i.i1997, i8** %p.i, align 4, !tbaa !2
  store i32 0, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub4.i37.i1998 = add nsw i32 %74, 32
  %76 = bitcast i8* %add.ptr.i.i1997 to i32*
  br label %bs_write.exit.i2002

bs_write.exit.i2002:                              ; preds = %if.end, %if.else.i.i1999
  %77 = phi i32* [ %76, %if.else.i.i1999 ], [ %67, %if.end ]
  %78 = phi i32 [ 0, %if.else.i.i1999 ], [ %73, %if.end ]
  %sub4.i37.pn.i2000 = phi i32 [ %sub4.i37.i1998, %if.else.i.i1999 ], [ %74, %if.end ]
  store i32 %sub4.i37.pn.i2000, i32* %i_left.i1811, align 4, !tbaa !8
  %cmp.i22.i2001 = icmp sgt i32 %sub4.i37.pn.i2000, 1
  br i1 %cmp.i22.i2001, label %bs_write_ue_big.exit2017.thread, label %bs_write_ue_big.exit2017

bs_write_ue_big.exit2017.thread:                  ; preds = %bs_write.exit.i2002, %bs_write.exit.i2002.thread
  %79 = phi i32* [ %72, %bs_write.exit.i2002.thread ], [ %77, %bs_write.exit.i2002 ]
  %sub4.i37.pn.i20002139 = phi i32 [ 32, %bs_write.exit.i2002.thread ], [ %sub4.i37.pn.i2000, %bs_write.exit.i2002 ]
  %80 = phi i32 [ %71, %bs_write.exit.i2002.thread ], [ %78, %bs_write.exit.i2002 ]
  %shl.i24.i2003 = shl i32 %80, 1
  %or.i.i2004 = or i32 %shl.i24.i2003, 1
  store i32 %or.i.i2004, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub.i25.i2005 = add nsw i32 %sub4.i37.pn.i20002139, -1
  store i32 %sub.i25.i2005, i32* %i_left.i1811, align 4, !tbaa !8
  br label %bs_write.exit.i1974

bs_write_ue_big.exit2017:                         ; preds = %bs_write.exit.i2002
  %sub4.i27.i2007 = sub nsw i32 1, %sub4.i37.pn.i2000
  %shl7.i29.i2008 = shl i32 %78, %sub4.i37.pn.i2000
  %shr.i.i2009 = lshr i32 1, %sub4.i27.i2007
  %or8.i.i2010 = or i32 %shr.i.i2009, %shl7.i29.i2008
  %add5.i.i.i30.i2011 = tail call i32 @llvm.bswap.i32(i32 %or8.i.i2010) #9
  store i32 %add5.i.i.i30.i2011, i32* %77, align 4, !tbaa !9
  %81 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i32.i2013 = getelementptr inbounds i8, i8* %81, i32 4
  store i8* %add.ptr.i32.i2013, i8** %p.i, align 4, !tbaa !2
  store i32 1, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub13.i33.i2014 = add nsw i32 %sub4.i37.pn.i2000, 31
  store i32 %sub13.i33.i2014, i32* %i_left.i1811, align 4, !tbaa !8
  %cmp.i.i1963 = icmp sgt i32 %sub4.i37.pn.i2000, -31
  %82 = bitcast i8* %add.ptr.i32.i2013 to i32*
  br i1 %cmp.i.i1963, label %bs_write.exit.i1974, label %if.else.i.i1971

if.else.i.i1971:                                  ; preds = %bs_write_ue_big.exit2017
  %shl7.i.i1966 = shl nuw nsw i32 1, %sub13.i33.i2014
  %add5.i.i.i.i1967 = tail call i32 @llvm.bswap.i32(i32 %shl7.i.i1966) #9
  store i32 %add5.i.i.i.i1967, i32* %82, align 4, !tbaa !9
  %83 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i.i1969 = getelementptr inbounds i8, i8* %83, i32 4
  store i8* %add.ptr.i.i1969, i8** %p.i, align 4, !tbaa !2
  store i32 0, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub4.i37.i1970 = add nsw i32 %sub4.i37.pn.i2000, 63
  %84 = bitcast i8* %add.ptr.i.i1969 to i32*
  br label %bs_write.exit.i1974

bs_write.exit.i1974:                              ; preds = %bs_write_ue_big.exit2017, %bs_write_ue_big.exit2017.thread, %if.else.i.i1971
  %85 = phi i32* [ %84, %if.else.i.i1971 ], [ %79, %bs_write_ue_big.exit2017.thread ], [ %82, %bs_write_ue_big.exit2017 ]
  %86 = phi i32 [ 0, %if.else.i.i1971 ], [ %or.i.i2004, %bs_write_ue_big.exit2017.thread ], [ 1, %bs_write_ue_big.exit2017 ]
  %sub4.i37.pn.i1972 = phi i32 [ %sub4.i37.i1970, %if.else.i.i1971 ], [ %sub.i25.i2005, %bs_write_ue_big.exit2017.thread ], [ %sub13.i33.i2014, %bs_write_ue_big.exit2017 ]
  store i32 %sub4.i37.pn.i1972, i32* %i_left.i1811, align 4, !tbaa !8
  %cmp.i22.i1973 = icmp sgt i32 %sub4.i37.pn.i1972, 1
  br i1 %cmp.i22.i1973, label %if.then.i26.i1978, label %if.else.i34.i1987

if.then.i26.i1978:                                ; preds = %bs_write.exit.i1974
  %shl.i24.i1975 = shl i32 %86, 1
  %or.i.i1976 = or i32 %shl.i24.i1975, 1
  store i32 %or.i.i1976, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub.i25.i1977 = add nsw i32 %sub4.i37.pn.i1972, -1
  br label %bs_write_ue_big.exit1989

if.else.i34.i1987:                                ; preds = %bs_write.exit.i1974
  %sub4.i27.i1979 = sub nsw i32 1, %sub4.i37.pn.i1972
  %shl7.i29.i1980 = shl i32 %86, %sub4.i37.pn.i1972
  %shr.i.i1981 = lshr i32 1, %sub4.i27.i1979
  %or8.i.i1982 = or i32 %shr.i.i1981, %shl7.i29.i1980
  %add5.i.i.i30.i1983 = tail call i32 @llvm.bswap.i32(i32 %or8.i.i1982) #9
  store i32 %add5.i.i.i30.i1983, i32* %85, align 4, !tbaa !9
  %87 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i32.i1985 = getelementptr inbounds i8, i8* %87, i32 4
  store i8* %add.ptr.i32.i1985, i8** %p.i, align 4, !tbaa !2
  store i32 1, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub13.i33.i1986 = add nsw i32 %sub4.i37.pn.i1972, 31
  %88 = bitcast i8* %add.ptr.i32.i1985 to i32*
  br label %bs_write_ue_big.exit1989

bs_write_ue_big.exit1989:                         ; preds = %if.then.i26.i1978, %if.else.i34.i1987
  %89 = phi i32* [ %88, %if.else.i34.i1987 ], [ %85, %if.then.i26.i1978 ]
  %90 = phi i32 [ 1, %if.else.i34.i1987 ], [ %or.i.i1976, %if.then.i26.i1978 ]
  %storemerge.i35.i1988 = phi i32 [ %sub13.i33.i1986, %if.else.i34.i1987 ], [ %sub.i25.i1977, %if.then.i26.i1978 ]
  %b_qpprime_y_zero_transform_bypass = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 21
  %91 = load i32, i32* %b_qpprime_y_zero_transform_bypass, align 4, !tbaa !34
  %shl.i1952 = shl i32 %90, 1
  %or.i1953 = or i32 %shl.i1952, %91
  store i32 %or.i1953, i32* %cur_bits.i1840, align 4, !tbaa !10
  %dec.i1955 = add nsw i32 %storemerge.i35.i1988, -1
  store i32 %dec.i1955, i32* %i_left.i1811, align 4, !tbaa !8
  %cmp.i1956 = icmp eq i32 %dec.i1955, 0
  br i1 %cmp.i1956, label %if.then.i1960, label %bs_write1.exit1961

if.then.i1960:                                    ; preds = %bs_write_ue_big.exit1989
  %add5.i.i1957 = tail call i32 @llvm.bswap.i32(i32 %or.i1953) #9
  store i32 %add5.i.i1957, i32* %89, align 4, !tbaa !9
  %92 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i1959 = getelementptr inbounds i8, i8* %92, i32 4
  store i8* %add.ptr.i1959, i8** %p.i, align 4, !tbaa !2
  store i32 32, i32* %i_left.i1811, align 4, !tbaa !8
  %.pre2155 = load i32, i32* %cur_bits.i1840, align 4, !tbaa !10
  %93 = bitcast i8* %add.ptr.i1959 to i32*
  br label %bs_write1.exit1961

bs_write1.exit1961:                               ; preds = %bs_write_ue_big.exit1989, %if.then.i1960
  %94 = phi i32* [ %89, %bs_write_ue_big.exit1989 ], [ %93, %if.then.i1960 ]
  %95 = phi i32 [ %dec.i1955, %bs_write_ue_big.exit1989 ], [ 32, %if.then.i1960 ]
  %96 = phi i32 [ %or.i1953, %bs_write_ue_big.exit1989 ], [ %.pre2155, %if.then.i1960 ]
  %b_avcintra_hd = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 23
  %97 = load i32, i32* %b_avcintra_hd, align 4, !tbaa !116
  %shl.i1941 = shl i32 %96, 1
  %or.i1942 = or i32 %shl.i1941, %97
  store i32 %or.i1942, i32* %cur_bits.i1840, align 4, !tbaa !10
  %dec.i1944 = add nsw i32 %95, -1
  store i32 %dec.i1944, i32* %i_left.i1811, align 4, !tbaa !8
  %cmp.i1945 = icmp eq i32 %dec.i1944, 0
  br i1 %cmp.i1945, label %if.then.i1949, label %bs_write1.exit1950

if.then.i1949:                                    ; preds = %bs_write1.exit1961
  %add5.i.i1946 = tail call i32 @llvm.bswap.i32(i32 %or.i1942) #9
  store i32 %add5.i.i1946, i32* %94, align 4, !tbaa !9
  %98 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i1948 = getelementptr inbounds i8, i8* %98, i32 4
  store i8* %add.ptr.i1948, i8** %p.i, align 4, !tbaa !2
  store i32 32, i32* %i_left.i1811, align 4, !tbaa !8
  %.pre2156 = load i32, i32* %b_avcintra_hd, align 4, !tbaa !116
  br label %bs_write1.exit1950

bs_write1.exit1950:                               ; preds = %bs_write1.exit1961, %if.then.i1949
  %99 = phi i32 [ %dec.i1944, %bs_write1.exit1961 ], [ 32, %if.then.i1949 ]
  %100 = phi i32 [ %97, %bs_write1.exit1961 ], [ %.pre2156, %if.then.i1949 ]
  %tobool = icmp eq i32 %100, 0
  br i1 %tobool, label %if.end12, label %if.then6

if.then6:                                         ; preds = %bs_write1.exit1950
  tail call fastcc void @scaling_list_write(%struct.bs_s* nonnull %s, %struct.x264_sps_t* nonnull %sps, i32 0)
  tail call fastcc void @scaling_list_write(%struct.bs_s* nonnull %s, %struct.x264_sps_t* nonnull %sps, i32 2)
  tail call fastcc void @scaling_list_write(%struct.bs_s* nonnull %s, %struct.x264_sps_t* nonnull %sps, i32 2)
  %101 = load i32, i32* %cur_bits.i1840, align 4, !tbaa !10
  %shl.i1893 = shl i32 %101, 1
  store i32 %shl.i1893, i32* %cur_bits.i1840, align 4, !tbaa !10
  %102 = load i32, i32* %i_left.i1811, align 4, !tbaa !8
  %dec.i1895 = add nsw i32 %102, -1
  store i32 %dec.i1895, i32* %i_left.i1811, align 4, !tbaa !8
  %cmp.i1896 = icmp eq i32 %dec.i1895, 0
  br i1 %cmp.i1896, label %bs_write1.exit1901.thread, label %bs_write1.exit1901

bs_write1.exit1901.thread:                        ; preds = %if.then6
  %add5.i.i1897 = tail call i32 @llvm.bswap.i32(i32 %shl.i1893) #9
  %103 = bitcast i8** %p.i to i32**
  %104 = load i32*, i32** %103, align 4, !tbaa !2
  store i32 %add5.i.i1897, i32* %104, align 4, !tbaa !9
  %105 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i1899 = getelementptr inbounds i8, i8* %105, i32 4
  store i8* %add.ptr.i1899, i8** %p.i, align 4, !tbaa !2
  %.pre2157 = load i32, i32* %cur_bits.i1840, align 4, !tbaa !10
  %shl.i18832184 = shl i32 %.pre2157, 1
  store i32 %shl.i18832184, i32* %cur_bits.i1840, align 4, !tbaa !10
  store i32 31, i32* %i_left.i1811, align 4, !tbaa !8
  br label %bs_write1.exit1891.thread

bs_write1.exit1901:                               ; preds = %if.then6
  %shl.i1883 = shl i32 %101, 2
  store i32 %shl.i1883, i32* %cur_bits.i1840, align 4, !tbaa !10
  %dec.i1885 = add nsw i32 %102, -2
  store i32 %dec.i1885, i32* %i_left.i1811, align 4, !tbaa !8
  %cmp.i1886 = icmp eq i32 %dec.i1885, 0
  br i1 %cmp.i1886, label %if.then.i1890, label %bs_write1.exit1891

if.then.i1890:                                    ; preds = %bs_write1.exit1901
  %add5.i.i1887 = tail call i32 @llvm.bswap.i32(i32 %shl.i1883) #9
  %106 = bitcast i8** %p.i to i32**
  %107 = load i32*, i32** %106, align 4, !tbaa !2
  store i32 %add5.i.i1887, i32* %107, align 4, !tbaa !9
  %108 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i1889 = getelementptr inbounds i8, i8* %108, i32 4
  store i8* %add.ptr.i1889, i8** %p.i, align 4, !tbaa !2
  store i32 32, i32* %i_left.i1811, align 4, !tbaa !8
  %.pre2158 = load i32, i32* %cur_bits.i1840, align 4, !tbaa !10
  br label %bs_write1.exit1891.thread

bs_write1.exit1891.thread:                        ; preds = %if.then.i1890, %bs_write1.exit1901.thread
  %.ph = phi i32 [ 30, %bs_write1.exit1901.thread ], [ 31, %if.then.i1890 ]
  %.ph2187 = phi i32 [ %shl.i18832184, %bs_write1.exit1901.thread ], [ %.pre2158, %if.then.i1890 ]
  %shl.i18732188 = shl i32 %.ph2187, 1
  store i32 %shl.i18732188, i32* %cur_bits.i1840, align 4, !tbaa !10
  br label %bs_write1.exit1881.sink.split

bs_write1.exit1891:                               ; preds = %bs_write1.exit1901
  %shl.i1873 = shl i32 %101, 3
  store i32 %shl.i1873, i32* %cur_bits.i1840, align 4, !tbaa !10
  %dec.i1875 = add nsw i32 %102, -3
  store i32 %dec.i1875, i32* %i_left.i1811, align 4, !tbaa !8
  %cmp.i1876 = icmp eq i32 %dec.i1875, 0
  br i1 %cmp.i1876, label %if.then.i1880, label %bs_write1.exit1881

if.then.i1880:                                    ; preds = %bs_write1.exit1891
  %add5.i.i1877 = tail call i32 @llvm.bswap.i32(i32 %shl.i1873) #9
  %109 = bitcast i8** %p.i to i32**
  %110 = load i32*, i32** %109, align 4, !tbaa !2
  store i32 %add5.i.i1877, i32* %110, align 4, !tbaa !9
  %111 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i1879 = getelementptr inbounds i8, i8* %111, i32 4
  store i8* %add.ptr.i1879, i8** %p.i, align 4, !tbaa !2
  br label %bs_write1.exit1881.sink.split

bs_write1.exit1881.sink.split:                    ; preds = %if.then.i1880, %bs_write1.exit1891.thread
  %.ph.sink = phi i32 [ %.ph, %bs_write1.exit1891.thread ], [ 32, %if.then.i1880 ]
  store i32 %.ph.sink, i32* %i_left.i1811, align 4, !tbaa !8
  br label %bs_write1.exit1881

bs_write1.exit1881:                               ; preds = %bs_write1.exit1881.sink.split, %bs_write1.exit1891
  tail call fastcc void @scaling_list_write(%struct.bs_s* nonnull %s, %struct.x264_sps_t* nonnull %sps, i32 4)
  %112 = load i32, i32* %cur_bits.i1840, align 4, !tbaa !10
  %shl.i1852 = shl i32 %112, 1
  store i32 %shl.i1852, i32* %cur_bits.i1840, align 4, !tbaa !10
  %113 = load i32, i32* %i_left.i1811, align 4, !tbaa !8
  %dec.i1854 = add nsw i32 %113, -1
  store i32 %dec.i1854, i32* %i_left.i1811, align 4, !tbaa !8
  %cmp.i1855 = icmp eq i32 %dec.i1854, 0
  br i1 %cmp.i1855, label %if.then.i1859, label %bs_write1.exit1860

if.then.i1859:                                    ; preds = %bs_write1.exit1881
  %add5.i.i1856 = tail call i32 @llvm.bswap.i32(i32 %shl.i1852) #9
  %114 = bitcast i8** %p.i to i32**
  %115 = load i32*, i32** %114, align 4, !tbaa !2
  store i32 %add5.i.i1856, i32* %115, align 4, !tbaa !9
  %116 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i1858 = getelementptr inbounds i8, i8* %116, i32 4
  store i8* %add.ptr.i1858, i8** %p.i, align 4, !tbaa !2
  store i32 32, i32* %i_left.i1811, align 4, !tbaa !8
  br label %bs_write1.exit1860

bs_write1.exit1860:                               ; preds = %bs_write1.exit1881, %if.then.i1859
  %117 = phi i32 [ %dec.i1854, %bs_write1.exit1881 ], [ 32, %if.then.i1859 ]
  %118 = load i32, i32* %i_chroma_format_idc, align 4, !tbaa !32
  %cmp8 = icmp eq i32 %118, 3
  br i1 %cmp8, label %if.then9, label %if.end12

if.then9:                                         ; preds = %bs_write1.exit1860
  tail call fastcc void @scaling_list_write(%struct.bs_s* nonnull %s, %struct.x264_sps_t* nonnull %sps, i32 6)
  %119 = load i32, i32* %cur_bits.i1840, align 4, !tbaa !10
  %shl.i1831 = shl i32 %119, 1
  store i32 %shl.i1831, i32* %cur_bits.i1840, align 4, !tbaa !10
  %120 = load i32, i32* %i_left.i1811, align 4, !tbaa !8
  %dec.i1833 = add nsw i32 %120, -1
  store i32 %dec.i1833, i32* %i_left.i1811, align 4, !tbaa !8
  %cmp.i1834 = icmp eq i32 %dec.i1833, 0
  br i1 %cmp.i1834, label %if.then.i1838, label %bs_write1.exit1839

if.then.i1838:                                    ; preds = %if.then9
  %add5.i.i1835 = tail call i32 @llvm.bswap.i32(i32 %shl.i1831) #9
  %121 = bitcast i8** %p.i to i32**
  %122 = load i32*, i32** %121, align 4, !tbaa !2
  store i32 %add5.i.i1835, i32* %122, align 4, !tbaa !9
  %123 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i1837 = getelementptr inbounds i8, i8* %123, i32 4
  store i8* %add.ptr.i1837, i8** %p.i, align 4, !tbaa !2
  store i32 32, i32* %i_left.i1811, align 4, !tbaa !8
  br label %bs_write1.exit1839

bs_write1.exit1839:                               ; preds = %if.then9, %if.then.i1838
  tail call fastcc void @scaling_list_write(%struct.bs_s* nonnull %s, %struct.x264_sps_t* nonnull %sps, i32 6)
  %124 = load i32, i32* %cur_bits.i1840, align 4, !tbaa !10
  %shl.i1802 = shl i32 %124, 1
  store i32 %shl.i1802, i32* %cur_bits.i1840, align 4, !tbaa !10
  %125 = load i32, i32* %i_left.i1811, align 4, !tbaa !8
  %dec.i1804 = add nsw i32 %125, -1
  store i32 %dec.i1804, i32* %i_left.i1811, align 4, !tbaa !8
  %cmp.i1805 = icmp eq i32 %dec.i1804, 0
  br i1 %cmp.i1805, label %if.then.i1809, label %if.end12

if.then.i1809:                                    ; preds = %bs_write1.exit1839
  %add5.i.i1806 = tail call i32 @llvm.bswap.i32(i32 %shl.i1802) #9
  %126 = bitcast i8** %p.i to i32**
  %127 = load i32*, i32** %126, align 4, !tbaa !2
  store i32 %add5.i.i1806, i32* %127, align 4, !tbaa !9
  %128 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i1808 = getelementptr inbounds i8, i8* %128, i32 4
  store i8* %add.ptr.i1808, i8** %p.i, align 4, !tbaa !2
  store i32 32, i32* %i_left.i1811, align 4, !tbaa !8
  br label %if.end12

if.end12:                                         ; preds = %if.then.i1809, %bs_write1.exit1839, %bs_write1.exit1950, %bs_write1.exit1860, %bs_write_ue_big.exit2115
  %129 = phi i32 [ 32, %if.then.i1809 ], [ %dec.i1804, %bs_write1.exit1839 ], [ %99, %bs_write1.exit1950 ], [ %117, %bs_write1.exit1860 ], [ %storemerge.i35.i2114, %bs_write_ue_big.exit2115 ]
  %i_log2_max_frame_num = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 7
  %130 = load i32, i32* %i_log2_max_frame_num, align 4, !tbaa !56
  %inc.i1757 = add nsw i32 %130, -3
  %cmp.i1758 = icmp sgt i32 %130, 65538
  %shr.i1759 = ashr i32 %inc.i1757, 16
  %spec.select.i1760 = select i1 %cmp.i1758, i32 32, i32 0
  %spec.select20.i1761 = select i1 %cmp.i1758, i32 %shr.i1759, i32 %inc.i1757
  %cmp1.i1762 = icmp sgt i32 %spec.select20.i1761, 255
  %add.i1763 = or i32 %spec.select.i1760, 16
  %shr3.i1764 = ashr i32 %spec.select20.i1761, 8
  %size.1.i1765 = select i1 %cmp1.i1762, i32 %add.i1763, i32 %spec.select.i1760
  %tmp.1.i1766 = select i1 %cmp1.i1762, i32 %shr3.i1764, i32 %spec.select20.i1761
  %arrayidx.i1767 = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %tmp.1.i1766
  %131 = load i8, i8* %arrayidx.i1767, align 1, !tbaa !9
  %conv.i1768 = zext i8 %131 to i32
  %add5.i1769 = add nuw nsw i32 %size.1.i1765, %conv.i1768
  %132 = lshr i32 %add5.i1769, 1
  %cmp.i.i1771 = icmp sgt i32 %129, %132
  %133 = load i32, i32* %cur_bits.i1840, align 4, !tbaa !10
  br i1 %cmp.i.i1771, label %if.then.i.i1774, label %if.else.i.i1780

if.then.i.i1774:                                  ; preds = %if.end12
  %shl.i.i1773 = shl i32 %133, %132
  store i32 %shl.i.i1773, i32* %cur_bits.i1840, align 4, !tbaa !10
  br label %bs_write.exit.i1785

if.else.i.i1780:                                  ; preds = %if.end12
  %shl7.i.i1775 = shl i32 %133, %129
  %add5.i.i.i.i1776 = tail call i32 @llvm.bswap.i32(i32 %shl7.i.i1775) #9
  %134 = bitcast i8** %p.i to i32**
  %135 = load i32*, i32** %134, align 4, !tbaa !2
  store i32 %add5.i.i.i.i1776, i32* %135, align 4, !tbaa !9
  %136 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i.i1778 = getelementptr inbounds i8, i8* %136, i32 4
  store i8* %add.ptr.i.i1778, i8** %p.i, align 4, !tbaa !2
  store i32 0, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub4.i37.i1779 = add i32 %129, 32
  br label %bs_write.exit.i1785

bs_write.exit.i1785:                              ; preds = %if.else.i.i1780, %if.then.i.i1774
  %137 = phi i32 [ 0, %if.else.i.i1780 ], [ %shl.i.i1773, %if.then.i.i1774 ]
  %sub4.i37.pn.i1781 = phi i32 [ %sub4.i37.i1779, %if.else.i.i1780 ], [ %129, %if.then.i.i1774 ]
  %storemerge.i.i1782 = sub i32 %sub4.i37.pn.i1781, %132
  store i32 %storemerge.i.i1782, i32* %i_left.i1811, align 4, !tbaa !8
  %add8.i1783 = add nuw nsw i32 %132, 1
  %cmp.i22.i1784 = icmp sgt i32 %storemerge.i.i1782, %add8.i1783
  br i1 %cmp.i22.i1784, label %if.then.i26.i1789, label %if.else.i34.i1798

if.then.i26.i1789:                                ; preds = %bs_write.exit.i1785
  %shl.i24.i1786 = shl i32 %137, %add8.i1783
  %or.i.i1787 = or i32 %shl.i24.i1786, %inc.i1757
  store i32 %or.i.i1787, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub.i25.i1788 = sub nsw i32 %storemerge.i.i1782, %add8.i1783
  br label %bs_write_ue_big.exit1800

if.else.i34.i1798:                                ; preds = %bs_write.exit.i1785
  %sub4.i27.i1790 = sub nsw i32 %add8.i1783, %storemerge.i.i1782
  %shl7.i29.i1791 = shl i32 %137, %storemerge.i.i1782
  %shr.i.i1792 = lshr i32 %inc.i1757, %sub4.i27.i1790
  %or8.i.i1793 = or i32 %shr.i.i1792, %shl7.i29.i1791
  %add5.i.i.i30.i1794 = tail call i32 @llvm.bswap.i32(i32 %or8.i.i1793) #9
  %138 = bitcast i8** %p.i to i32**
  %139 = load i32*, i32** %138, align 4, !tbaa !2
  store i32 %add5.i.i.i30.i1794, i32* %139, align 4, !tbaa !9
  %140 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i32.i1796 = getelementptr inbounds i8, i8* %140, i32 4
  store i8* %add.ptr.i32.i1796, i8** %p.i, align 4, !tbaa !2
  store i32 %inc.i1757, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub13.i33.i1797 = sub nsw i32 32, %sub4.i27.i1790
  br label %bs_write_ue_big.exit1800

bs_write_ue_big.exit1800:                         ; preds = %if.then.i26.i1789, %if.else.i34.i1798
  %141 = phi i32 [ %inc.i1757, %if.else.i34.i1798 ], [ %or.i.i1787, %if.then.i26.i1789 ]
  %storemerge.i35.i1799 = phi i32 [ %sub13.i33.i1797, %if.else.i34.i1798 ], [ %sub.i25.i1788, %if.then.i26.i1789 ]
  store i32 %storemerge.i35.i1799, i32* %i_left.i1811, align 4, !tbaa !8
  %i_poc_type = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 8
  %142 = load i32, i32* %i_poc_type, align 4, !tbaa !58
  %inc.i1713 = add i32 %142, 1
  %cmp.i1714 = icmp sgt i32 %inc.i1713, 65535
  %shr.i1715 = ashr i32 %inc.i1713, 16
  %spec.select.i1716 = select i1 %cmp.i1714, i32 32, i32 0
  %spec.select20.i1717 = select i1 %cmp.i1714, i32 %shr.i1715, i32 %inc.i1713
  %cmp1.i1718 = icmp sgt i32 %spec.select20.i1717, 255
  %add.i1719 = or i32 %spec.select.i1716, 16
  %shr3.i1720 = ashr i32 %spec.select20.i1717, 8
  %size.1.i1721 = select i1 %cmp1.i1718, i32 %add.i1719, i32 %spec.select.i1716
  %tmp.1.i1722 = select i1 %cmp1.i1718, i32 %shr3.i1720, i32 %spec.select20.i1717
  %arrayidx.i1723 = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %tmp.1.i1722
  %143 = load i8, i8* %arrayidx.i1723, align 1, !tbaa !9
  %conv.i1724 = zext i8 %143 to i32
  %add5.i1725 = add nuw nsw i32 %size.1.i1721, %conv.i1724
  %144 = lshr i32 %add5.i1725, 1
  %cmp.i.i1727 = icmp sgt i32 %storemerge.i35.i1799, %144
  br i1 %cmp.i.i1727, label %if.then.i.i1730, label %if.else.i.i1736

if.then.i.i1730:                                  ; preds = %bs_write_ue_big.exit1800
  %shl.i.i1729 = shl i32 %141, %144
  store i32 %shl.i.i1729, i32* %cur_bits.i1840, align 4, !tbaa !10
  br label %bs_write.exit.i1741

if.else.i.i1736:                                  ; preds = %bs_write_ue_big.exit1800
  %shl7.i.i1731 = shl i32 %141, %storemerge.i35.i1799
  %add5.i.i.i.i1732 = tail call i32 @llvm.bswap.i32(i32 %shl7.i.i1731) #9
  %145 = bitcast i8** %p.i to i32**
  %146 = load i32*, i32** %145, align 4, !tbaa !2
  store i32 %add5.i.i.i.i1732, i32* %146, align 4, !tbaa !9
  %147 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i.i1734 = getelementptr inbounds i8, i8* %147, i32 4
  store i8* %add.ptr.i.i1734, i8** %p.i, align 4, !tbaa !2
  store i32 0, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub4.i37.i1735 = add i32 %storemerge.i35.i1799, 32
  br label %bs_write.exit.i1741

bs_write.exit.i1741:                              ; preds = %if.else.i.i1736, %if.then.i.i1730
  %148 = phi i32 [ 0, %if.else.i.i1736 ], [ %shl.i.i1729, %if.then.i.i1730 ]
  %sub4.i37.pn.i1737 = phi i32 [ %sub4.i37.i1735, %if.else.i.i1736 ], [ %storemerge.i35.i1799, %if.then.i.i1730 ]
  %storemerge.i.i1738 = sub i32 %sub4.i37.pn.i1737, %144
  store i32 %storemerge.i.i1738, i32* %i_left.i1811, align 4, !tbaa !8
  %add8.i1739 = add nuw nsw i32 %144, 1
  %cmp.i22.i1740 = icmp sgt i32 %storemerge.i.i1738, %add8.i1739
  br i1 %cmp.i22.i1740, label %if.then.i26.i1745, label %if.else.i34.i1754

if.then.i26.i1745:                                ; preds = %bs_write.exit.i1741
  %shl.i24.i1742 = shl i32 %148, %add8.i1739
  %or.i.i1743 = or i32 %shl.i24.i1742, %inc.i1713
  store i32 %or.i.i1743, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub.i25.i1744 = sub nsw i32 %storemerge.i.i1738, %add8.i1739
  br label %bs_write_ue_big.exit1756

if.else.i34.i1754:                                ; preds = %bs_write.exit.i1741
  %sub4.i27.i1746 = sub nsw i32 %add8.i1739, %storemerge.i.i1738
  %shl7.i29.i1747 = shl i32 %148, %storemerge.i.i1738
  %shr.i.i1748 = lshr i32 %inc.i1713, %sub4.i27.i1746
  %or8.i.i1749 = or i32 %shr.i.i1748, %shl7.i29.i1747
  %add5.i.i.i30.i1750 = tail call i32 @llvm.bswap.i32(i32 %or8.i.i1749) #9
  %149 = bitcast i8** %p.i to i32**
  %150 = load i32*, i32** %149, align 4, !tbaa !2
  store i32 %add5.i.i.i30.i1750, i32* %150, align 4, !tbaa !9
  %151 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i32.i1752 = getelementptr inbounds i8, i8* %151, i32 4
  store i8* %add.ptr.i32.i1752, i8** %p.i, align 4, !tbaa !2
  store i32 %inc.i1713, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub13.i33.i1753 = sub nsw i32 32, %sub4.i27.i1746
  br label %bs_write_ue_big.exit1756

bs_write_ue_big.exit1756:                         ; preds = %if.then.i26.i1745, %if.else.i34.i1754
  %152 = phi i32 [ %inc.i1713, %if.else.i34.i1754 ], [ %or.i.i1743, %if.then.i26.i1745 ]
  %storemerge.i35.i1755 = phi i32 [ %sub13.i33.i1753, %if.else.i34.i1754 ], [ %sub.i25.i1744, %if.then.i26.i1745 ]
  store i32 %storemerge.i35.i1755, i32* %i_left.i1811, align 4, !tbaa !8
  %153 = load i32, i32* %i_poc_type, align 4, !tbaa !58
  %cmp14 = icmp eq i32 %153, 0
  br i1 %cmp14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %bs_write_ue_big.exit1756
  %i_log2_max_poc_lsb = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 9
  %154 = load i32, i32* %i_log2_max_poc_lsb, align 4, !tbaa !59
  %inc.i1669 = add nsw i32 %154, -3
  %cmp.i1670 = icmp sgt i32 %154, 65538
  %shr.i1671 = ashr i32 %inc.i1669, 16
  %spec.select.i1672 = select i1 %cmp.i1670, i32 32, i32 0
  %spec.select20.i1673 = select i1 %cmp.i1670, i32 %shr.i1671, i32 %inc.i1669
  %cmp1.i1674 = icmp sgt i32 %spec.select20.i1673, 255
  %add.i1675 = or i32 %spec.select.i1672, 16
  %shr3.i1676 = ashr i32 %spec.select20.i1673, 8
  %size.1.i1677 = select i1 %cmp1.i1674, i32 %add.i1675, i32 %spec.select.i1672
  %tmp.1.i1678 = select i1 %cmp1.i1674, i32 %shr3.i1676, i32 %spec.select20.i1673
  %arrayidx.i1679 = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %tmp.1.i1678
  %155 = load i8, i8* %arrayidx.i1679, align 1, !tbaa !9
  %conv.i1680 = zext i8 %155 to i32
  %add5.i1681 = add nuw nsw i32 %size.1.i1677, %conv.i1680
  %156 = lshr i32 %add5.i1681, 1
  %cmp.i.i1683 = icmp sgt i32 %storemerge.i35.i1755, %156
  br i1 %cmp.i.i1683, label %if.then.i.i1686, label %if.else.i.i1692

if.then.i.i1686:                                  ; preds = %if.then15
  %shl.i.i1685 = shl i32 %152, %156
  store i32 %shl.i.i1685, i32* %cur_bits.i1840, align 4, !tbaa !10
  br label %bs_write.exit.i1697

if.else.i.i1692:                                  ; preds = %if.then15
  %shl7.i.i1687 = shl i32 %152, %storemerge.i35.i1755
  %add5.i.i.i.i1688 = tail call i32 @llvm.bswap.i32(i32 %shl7.i.i1687) #9
  %157 = bitcast i8** %p.i to i32**
  %158 = load i32*, i32** %157, align 4, !tbaa !2
  store i32 %add5.i.i.i.i1688, i32* %158, align 4, !tbaa !9
  %159 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i.i1690 = getelementptr inbounds i8, i8* %159, i32 4
  store i8* %add.ptr.i.i1690, i8** %p.i, align 4, !tbaa !2
  store i32 0, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub4.i37.i1691 = add i32 %storemerge.i35.i1755, 32
  br label %bs_write.exit.i1697

bs_write.exit.i1697:                              ; preds = %if.else.i.i1692, %if.then.i.i1686
  %160 = phi i32 [ 0, %if.else.i.i1692 ], [ %shl.i.i1685, %if.then.i.i1686 ]
  %sub4.i37.pn.i1693 = phi i32 [ %sub4.i37.i1691, %if.else.i.i1692 ], [ %storemerge.i35.i1755, %if.then.i.i1686 ]
  %storemerge.i.i1694 = sub i32 %sub4.i37.pn.i1693, %156
  store i32 %storemerge.i.i1694, i32* %i_left.i1811, align 4, !tbaa !8
  %add8.i1695 = add nuw nsw i32 %156, 1
  %cmp.i22.i1696 = icmp sgt i32 %storemerge.i.i1694, %add8.i1695
  br i1 %cmp.i22.i1696, label %if.then.i26.i1701, label %if.else.i34.i1710

if.then.i26.i1701:                                ; preds = %bs_write.exit.i1697
  %shl.i24.i1698 = shl i32 %160, %add8.i1695
  %or.i.i1699 = or i32 %shl.i24.i1698, %inc.i1669
  store i32 %or.i.i1699, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub.i25.i1700 = sub nsw i32 %storemerge.i.i1694, %add8.i1695
  br label %bs_write_ue_big.exit1712

if.else.i34.i1710:                                ; preds = %bs_write.exit.i1697
  %sub4.i27.i1702 = sub nsw i32 %add8.i1695, %storemerge.i.i1694
  %shl7.i29.i1703 = shl i32 %160, %storemerge.i.i1694
  %shr.i.i1704 = lshr i32 %inc.i1669, %sub4.i27.i1702
  %or8.i.i1705 = or i32 %shr.i.i1704, %shl7.i29.i1703
  %add5.i.i.i30.i1706 = tail call i32 @llvm.bswap.i32(i32 %or8.i.i1705) #9
  %161 = bitcast i8** %p.i to i32**
  %162 = load i32*, i32** %161, align 4, !tbaa !2
  store i32 %add5.i.i.i30.i1706, i32* %162, align 4, !tbaa !9
  %163 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i32.i1708 = getelementptr inbounds i8, i8* %163, i32 4
  store i8* %add.ptr.i32.i1708, i8** %p.i, align 4, !tbaa !2
  store i32 %inc.i1669, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub13.i33.i1709 = sub nsw i32 32, %sub4.i27.i1702
  br label %bs_write_ue_big.exit1712

bs_write_ue_big.exit1712:                         ; preds = %if.then.i26.i1701, %if.else.i34.i1710
  %164 = phi i32 [ %inc.i1669, %if.else.i34.i1710 ], [ %or.i.i1699, %if.then.i26.i1701 ]
  %storemerge.i35.i1711 = phi i32 [ %sub13.i33.i1709, %if.else.i34.i1710 ], [ %sub.i25.i1700, %if.then.i26.i1701 ]
  store i32 %storemerge.i35.i1711, i32* %i_left.i1811, align 4, !tbaa !8
  br label %if.end17

if.end17:                                         ; preds = %bs_write_ue_big.exit1712, %bs_write_ue_big.exit1756
  %165 = phi i32 [ %164, %bs_write_ue_big.exit1712 ], [ %152, %bs_write_ue_big.exit1756 ]
  %166 = phi i32 [ %storemerge.i35.i1711, %bs_write_ue_big.exit1712 ], [ %storemerge.i35.i1755, %bs_write_ue_big.exit1756 ]
  %i_num_ref_frames = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 10
  %167 = load i32, i32* %i_num_ref_frames, align 4, !tbaa !54
  %inc.i1625 = add i32 %167, 1
  %cmp.i1626 = icmp sgt i32 %inc.i1625, 65535
  %shr.i1627 = ashr i32 %inc.i1625, 16
  %spec.select.i1628 = select i1 %cmp.i1626, i32 32, i32 0
  %spec.select20.i1629 = select i1 %cmp.i1626, i32 %shr.i1627, i32 %inc.i1625
  %cmp1.i1630 = icmp sgt i32 %spec.select20.i1629, 255
  %add.i1631 = or i32 %spec.select.i1628, 16
  %shr3.i1632 = ashr i32 %spec.select20.i1629, 8
  %size.1.i1633 = select i1 %cmp1.i1630, i32 %add.i1631, i32 %spec.select.i1628
  %tmp.1.i1634 = select i1 %cmp1.i1630, i32 %shr3.i1632, i32 %spec.select20.i1629
  %arrayidx.i1635 = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %tmp.1.i1634
  %168 = load i8, i8* %arrayidx.i1635, align 1, !tbaa !9
  %conv.i1636 = zext i8 %168 to i32
  %add5.i1637 = add nuw nsw i32 %size.1.i1633, %conv.i1636
  %169 = lshr i32 %add5.i1637, 1
  %cmp.i.i1639 = icmp sgt i32 %166, %169
  br i1 %cmp.i.i1639, label %if.then.i.i1642, label %if.else.i.i1648

if.then.i.i1642:                                  ; preds = %if.end17
  %shl.i.i1641 = shl i32 %165, %169
  store i32 %shl.i.i1641, i32* %cur_bits.i1840, align 4, !tbaa !10
  br label %bs_write.exit.i1653

if.else.i.i1648:                                  ; preds = %if.end17
  %shl7.i.i1643 = shl i32 %165, %166
  %add5.i.i.i.i1644 = tail call i32 @llvm.bswap.i32(i32 %shl7.i.i1643) #9
  %170 = bitcast i8** %p.i to i32**
  %171 = load i32*, i32** %170, align 4, !tbaa !2
  store i32 %add5.i.i.i.i1644, i32* %171, align 4, !tbaa !9
  %172 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i.i1646 = getelementptr inbounds i8, i8* %172, i32 4
  store i8* %add.ptr.i.i1646, i8** %p.i, align 4, !tbaa !2
  store i32 0, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub4.i37.i1647 = add i32 %166, 32
  br label %bs_write.exit.i1653

bs_write.exit.i1653:                              ; preds = %if.else.i.i1648, %if.then.i.i1642
  %173 = phi i32 [ 0, %if.else.i.i1648 ], [ %shl.i.i1641, %if.then.i.i1642 ]
  %sub4.i37.pn.i1649 = phi i32 [ %sub4.i37.i1647, %if.else.i.i1648 ], [ %166, %if.then.i.i1642 ]
  %storemerge.i.i1650 = sub i32 %sub4.i37.pn.i1649, %169
  store i32 %storemerge.i.i1650, i32* %i_left.i1811, align 4, !tbaa !8
  %add8.i1651 = add nuw nsw i32 %169, 1
  %cmp.i22.i1652 = icmp sgt i32 %storemerge.i.i1650, %add8.i1651
  br i1 %cmp.i22.i1652, label %if.then.i26.i1657, label %if.else.i34.i1666

if.then.i26.i1657:                                ; preds = %bs_write.exit.i1653
  %shl.i24.i1654 = shl i32 %173, %add8.i1651
  %or.i.i1655 = or i32 %shl.i24.i1654, %inc.i1625
  store i32 %or.i.i1655, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub.i25.i1656 = sub nsw i32 %storemerge.i.i1650, %add8.i1651
  br label %bs_write_ue_big.exit1668

if.else.i34.i1666:                                ; preds = %bs_write.exit.i1653
  %sub4.i27.i1658 = sub nsw i32 %add8.i1651, %storemerge.i.i1650
  %shl7.i29.i1659 = shl i32 %173, %storemerge.i.i1650
  %shr.i.i1660 = lshr i32 %inc.i1625, %sub4.i27.i1658
  %or8.i.i1661 = or i32 %shr.i.i1660, %shl7.i29.i1659
  %add5.i.i.i30.i1662 = tail call i32 @llvm.bswap.i32(i32 %or8.i.i1661) #9
  %174 = bitcast i8** %p.i to i32**
  %175 = load i32*, i32** %174, align 4, !tbaa !2
  store i32 %add5.i.i.i30.i1662, i32* %175, align 4, !tbaa !9
  %176 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i32.i1664 = getelementptr inbounds i8, i8* %176, i32 4
  store i8* %add.ptr.i32.i1664, i8** %p.i, align 4, !tbaa !2
  store i32 %inc.i1625, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub13.i33.i1665 = sub nsw i32 32, %sub4.i27.i1658
  br label %bs_write_ue_big.exit1668

bs_write_ue_big.exit1668:                         ; preds = %if.then.i26.i1657, %if.else.i34.i1666
  %177 = phi i32 [ %inc.i1625, %if.else.i34.i1666 ], [ %or.i.i1655, %if.then.i26.i1657 ]
  %storemerge.i35.i1667 = phi i32 [ %sub13.i33.i1665, %if.else.i34.i1666 ], [ %sub.i25.i1656, %if.then.i26.i1657 ]
  %b_gaps_in_frame_num_value_allowed = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 11
  %178 = load i32, i32* %b_gaps_in_frame_num_value_allowed, align 4, !tbaa !61
  %shl.i1615 = shl i32 %177, 1
  %or.i1616 = or i32 %shl.i1615, %178
  store i32 %or.i1616, i32* %cur_bits.i1840, align 4, !tbaa !10
  %dec.i1618 = add nsw i32 %storemerge.i35.i1667, -1
  store i32 %dec.i1618, i32* %i_left.i1811, align 4, !tbaa !8
  %cmp.i1619 = icmp eq i32 %dec.i1618, 0
  br i1 %cmp.i1619, label %if.then.i1623, label %bs_write1.exit1624

if.then.i1623:                                    ; preds = %bs_write_ue_big.exit1668
  %add5.i.i1620 = tail call i32 @llvm.bswap.i32(i32 %or.i1616) #9
  %179 = bitcast i8** %p.i to i32**
  %180 = load i32*, i32** %179, align 4, !tbaa !2
  store i32 %add5.i.i1620, i32* %180, align 4, !tbaa !9
  %181 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i1622 = getelementptr inbounds i8, i8* %181, i32 4
  store i8* %add.ptr.i1622, i8** %p.i, align 4, !tbaa !2
  store i32 32, i32* %i_left.i1811, align 4, !tbaa !8
  %.pre2159 = load i32, i32* %cur_bits.i1840, align 4, !tbaa !10
  br label %bs_write1.exit1624

bs_write1.exit1624:                               ; preds = %bs_write_ue_big.exit1668, %if.then.i1623
  %182 = phi i32 [ %or.i1616, %bs_write_ue_big.exit1668 ], [ %.pre2159, %if.then.i1623 ]
  %183 = phi i32 [ %dec.i1618, %bs_write_ue_big.exit1668 ], [ 32, %if.then.i1623 ]
  %i_mb_width = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 12
  %184 = load i32, i32* %i_mb_width, align 4, !tbaa !26
  %cmp.i1571 = icmp sgt i32 %184, 65535
  %shr.i1572 = ashr i32 %184, 16
  %spec.select.i1573 = select i1 %cmp.i1571, i32 32, i32 0
  %spec.select20.i1574 = select i1 %cmp.i1571, i32 %shr.i1572, i32 %184
  %cmp1.i1575 = icmp sgt i32 %spec.select20.i1574, 255
  %add.i1576 = or i32 %spec.select.i1573, 16
  %shr3.i1577 = ashr i32 %spec.select20.i1574, 8
  %size.1.i1578 = select i1 %cmp1.i1575, i32 %add.i1576, i32 %spec.select.i1573
  %tmp.1.i1579 = select i1 %cmp1.i1575, i32 %shr3.i1577, i32 %spec.select20.i1574
  %arrayidx.i1580 = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %tmp.1.i1579
  %185 = load i8, i8* %arrayidx.i1580, align 1, !tbaa !9
  %conv.i1581 = zext i8 %185 to i32
  %add5.i1582 = add nuw nsw i32 %size.1.i1578, %conv.i1581
  %186 = lshr i32 %add5.i1582, 1
  %cmp.i.i1584 = icmp sgt i32 %183, %186
  br i1 %cmp.i.i1584, label %if.then.i.i1587, label %if.else.i.i1593

if.then.i.i1587:                                  ; preds = %bs_write1.exit1624
  %shl.i.i1586 = shl i32 %182, %186
  store i32 %shl.i.i1586, i32* %cur_bits.i1840, align 4, !tbaa !10
  br label %bs_write.exit.i1598

if.else.i.i1593:                                  ; preds = %bs_write1.exit1624
  %shl7.i.i1588 = shl i32 %182, %183
  %add5.i.i.i.i1589 = tail call i32 @llvm.bswap.i32(i32 %shl7.i.i1588) #9
  %187 = bitcast i8** %p.i to i32**
  %188 = load i32*, i32** %187, align 4, !tbaa !2
  store i32 %add5.i.i.i.i1589, i32* %188, align 4, !tbaa !9
  %189 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i.i1591 = getelementptr inbounds i8, i8* %189, i32 4
  store i8* %add.ptr.i.i1591, i8** %p.i, align 4, !tbaa !2
  store i32 0, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub4.i37.i1592 = add i32 %183, 32
  br label %bs_write.exit.i1598

bs_write.exit.i1598:                              ; preds = %if.else.i.i1593, %if.then.i.i1587
  %190 = phi i32 [ 0, %if.else.i.i1593 ], [ %shl.i.i1586, %if.then.i.i1587 ]
  %sub4.i37.pn.i1594 = phi i32 [ %sub4.i37.i1592, %if.else.i.i1593 ], [ %183, %if.then.i.i1587 ]
  %storemerge.i.i1595 = sub i32 %sub4.i37.pn.i1594, %186
  store i32 %storemerge.i.i1595, i32* %i_left.i1811, align 4, !tbaa !8
  %add8.i1596 = add nuw nsw i32 %186, 1
  %cmp.i22.i1597 = icmp sgt i32 %storemerge.i.i1595, %add8.i1596
  br i1 %cmp.i22.i1597, label %if.then.i26.i1602, label %if.else.i34.i1611

if.then.i26.i1602:                                ; preds = %bs_write.exit.i1598
  %shl.i24.i1599 = shl i32 %190, %add8.i1596
  %or.i.i1600 = or i32 %shl.i24.i1599, %184
  store i32 %or.i.i1600, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub.i25.i1601 = sub nsw i32 %storemerge.i.i1595, %add8.i1596
  br label %bs_write_ue_big.exit1613

if.else.i34.i1611:                                ; preds = %bs_write.exit.i1598
  %sub4.i27.i1603 = sub nsw i32 %add8.i1596, %storemerge.i.i1595
  %shl7.i29.i1604 = shl i32 %190, %storemerge.i.i1595
  %shr.i.i1605 = lshr i32 %184, %sub4.i27.i1603
  %or8.i.i1606 = or i32 %shr.i.i1605, %shl7.i29.i1604
  %add5.i.i.i30.i1607 = tail call i32 @llvm.bswap.i32(i32 %or8.i.i1606) #9
  %191 = bitcast i8** %p.i to i32**
  %192 = load i32*, i32** %191, align 4, !tbaa !2
  store i32 %add5.i.i.i30.i1607, i32* %192, align 4, !tbaa !9
  %193 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i32.i1609 = getelementptr inbounds i8, i8* %193, i32 4
  store i8* %add.ptr.i32.i1609, i8** %p.i, align 4, !tbaa !2
  store i32 %184, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub13.i33.i1610 = sub nsw i32 32, %sub4.i27.i1603
  br label %bs_write_ue_big.exit1613

bs_write_ue_big.exit1613:                         ; preds = %if.then.i26.i1602, %if.else.i34.i1611
  %194 = phi i32 [ %184, %if.else.i34.i1611 ], [ %or.i.i1600, %if.then.i26.i1602 ]
  %storemerge.i35.i1612 = phi i32 [ %sub13.i33.i1610, %if.else.i34.i1611 ], [ %sub.i25.i1601, %if.then.i26.i1602 ]
  store i32 %storemerge.i35.i1612, i32* %i_left.i1811, align 4, !tbaa !8
  %i_mb_height = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 13
  %195 = load i32, i32* %i_mb_height, align 4, !tbaa !28
  %b_frame_mbs_only = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 14
  %196 = load i32, i32* %b_frame_mbs_only, align 4, !tbaa !30
  %tobool19 = icmp eq i32 %196, 0
  %lnot.ext = zext i1 %tobool19 to i32
  %shr = ashr i32 %195, %lnot.ext
  %cmp.i1528 = icmp sgt i32 %shr, 65535
  %shr.i1529 = ashr i32 %shr, 16
  %spec.select.i1530 = select i1 %cmp.i1528, i32 32, i32 0
  %spec.select20.i1531 = select i1 %cmp.i1528, i32 %shr.i1529, i32 %shr
  %cmp1.i1532 = icmp sgt i32 %spec.select20.i1531, 255
  %add.i1533 = or i32 %spec.select.i1530, 16
  %shr3.i1534 = ashr i32 %spec.select20.i1531, 8
  %size.1.i1535 = select i1 %cmp1.i1532, i32 %add.i1533, i32 %spec.select.i1530
  %tmp.1.i1536 = select i1 %cmp1.i1532, i32 %shr3.i1534, i32 %spec.select20.i1531
  %arrayidx.i1537 = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %tmp.1.i1536
  %197 = load i8, i8* %arrayidx.i1537, align 1, !tbaa !9
  %conv.i1538 = zext i8 %197 to i32
  %add5.i1539 = add nuw nsw i32 %size.1.i1535, %conv.i1538
  %198 = lshr i32 %add5.i1539, 1
  %cmp.i.i1541 = icmp sgt i32 %storemerge.i35.i1612, %198
  br i1 %cmp.i.i1541, label %if.then.i.i1544, label %if.else.i.i1550

if.then.i.i1544:                                  ; preds = %bs_write_ue_big.exit1613
  %shl.i.i1543 = shl i32 %194, %198
  store i32 %shl.i.i1543, i32* %cur_bits.i1840, align 4, !tbaa !10
  br label %bs_write.exit.i1555

if.else.i.i1550:                                  ; preds = %bs_write_ue_big.exit1613
  %shl7.i.i1545 = shl i32 %194, %storemerge.i35.i1612
  %add5.i.i.i.i1546 = tail call i32 @llvm.bswap.i32(i32 %shl7.i.i1545) #9
  %199 = bitcast i8** %p.i to i32**
  %200 = load i32*, i32** %199, align 4, !tbaa !2
  store i32 %add5.i.i.i.i1546, i32* %200, align 4, !tbaa !9
  %201 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i.i1548 = getelementptr inbounds i8, i8* %201, i32 4
  store i8* %add.ptr.i.i1548, i8** %p.i, align 4, !tbaa !2
  store i32 0, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub4.i37.i1549 = add i32 %storemerge.i35.i1612, 32
  br label %bs_write.exit.i1555

bs_write.exit.i1555:                              ; preds = %if.else.i.i1550, %if.then.i.i1544
  %202 = phi i32 [ 0, %if.else.i.i1550 ], [ %shl.i.i1543, %if.then.i.i1544 ]
  %sub4.i37.pn.i1551 = phi i32 [ %sub4.i37.i1549, %if.else.i.i1550 ], [ %storemerge.i35.i1612, %if.then.i.i1544 ]
  %storemerge.i.i1552 = sub i32 %sub4.i37.pn.i1551, %198
  store i32 %storemerge.i.i1552, i32* %i_left.i1811, align 4, !tbaa !8
  %add8.i1553 = add nuw nsw i32 %198, 1
  %cmp.i22.i1554 = icmp sgt i32 %storemerge.i.i1552, %add8.i1553
  br i1 %cmp.i22.i1554, label %if.then.i26.i1559, label %if.else.i34.i1568

if.then.i26.i1559:                                ; preds = %bs_write.exit.i1555
  %shl.i24.i1556 = shl i32 %202, %add8.i1553
  %or.i.i1557 = or i32 %shl.i24.i1556, %shr
  store i32 %or.i.i1557, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub.i25.i1558 = sub nsw i32 %storemerge.i.i1552, %add8.i1553
  br label %bs_write_ue_big.exit1570

if.else.i34.i1568:                                ; preds = %bs_write.exit.i1555
  %sub4.i27.i1560 = sub nsw i32 %add8.i1553, %storemerge.i.i1552
  %shl7.i29.i1561 = shl i32 %202, %storemerge.i.i1552
  %shr.i.i1562 = lshr i32 %shr, %sub4.i27.i1560
  %or8.i.i1563 = or i32 %shr.i.i1562, %shl7.i29.i1561
  %add5.i.i.i30.i1564 = tail call i32 @llvm.bswap.i32(i32 %or8.i.i1563) #9
  %203 = bitcast i8** %p.i to i32**
  %204 = load i32*, i32** %203, align 4, !tbaa !2
  store i32 %add5.i.i.i30.i1564, i32* %204, align 4, !tbaa !9
  %205 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i32.i1566 = getelementptr inbounds i8, i8* %205, i32 4
  store i8* %add.ptr.i32.i1566, i8** %p.i, align 4, !tbaa !2
  store i32 %shr, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub13.i33.i1567 = sub nsw i32 32, %sub4.i27.i1560
  br label %bs_write_ue_big.exit1570

bs_write_ue_big.exit1570:                         ; preds = %if.then.i26.i1559, %if.else.i34.i1568
  %206 = phi i32 [ %shr, %if.else.i34.i1568 ], [ %or.i.i1557, %if.then.i26.i1559 ]
  %storemerge.i35.i1569 = phi i32 [ %sub13.i33.i1567, %if.else.i34.i1568 ], [ %sub.i25.i1558, %if.then.i26.i1559 ]
  %207 = load i32, i32* %b_frame_mbs_only, align 4, !tbaa !30
  %shl.i1518 = shl i32 %206, 1
  %or.i1519 = or i32 %shl.i1518, %207
  store i32 %or.i1519, i32* %cur_bits.i1840, align 4, !tbaa !10
  %dec.i1521 = add nsw i32 %storemerge.i35.i1569, -1
  store i32 %dec.i1521, i32* %i_left.i1811, align 4, !tbaa !8
  %cmp.i1522 = icmp eq i32 %dec.i1521, 0
  br i1 %cmp.i1522, label %if.then.i1526, label %bs_write1.exit1527

if.then.i1526:                                    ; preds = %bs_write_ue_big.exit1570
  %add5.i.i1523 = tail call i32 @llvm.bswap.i32(i32 %or.i1519) #9
  %208 = bitcast i8** %p.i to i32**
  %209 = load i32*, i32** %208, align 4, !tbaa !2
  store i32 %add5.i.i1523, i32* %209, align 4, !tbaa !9
  %210 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i1525 = getelementptr inbounds i8, i8* %210, i32 4
  store i8* %add.ptr.i1525, i8** %p.i, align 4, !tbaa !2
  store i32 32, i32* %i_left.i1811, align 4, !tbaa !8
  %.pre2160 = load i32, i32* %b_frame_mbs_only, align 4, !tbaa !30
  br label %bs_write1.exit1527

bs_write1.exit1527:                               ; preds = %bs_write_ue_big.exit1570, %if.then.i1526
  %211 = phi i32 [ %dec.i1521, %bs_write_ue_big.exit1570 ], [ 32, %if.then.i1526 ]
  %212 = phi i32 [ %207, %bs_write_ue_big.exit1570 ], [ %.pre2160, %if.then.i1526 ]
  %tobool23 = icmp eq i32 %212, 0
  br i1 %tobool23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %bs_write1.exit1527
  %b_mb_adaptive_frame_field = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 15
  %213 = load i32, i32* %b_mb_adaptive_frame_field, align 4, !tbaa !62
  %214 = load i32, i32* %cur_bits.i1840, align 4, !tbaa !10
  %shl.i1507 = shl i32 %214, 1
  %or.i1508 = or i32 %shl.i1507, %213
  store i32 %or.i1508, i32* %cur_bits.i1840, align 4, !tbaa !10
  %dec.i1510 = add nsw i32 %211, -1
  store i32 %dec.i1510, i32* %i_left.i1811, align 4, !tbaa !8
  %cmp.i1511 = icmp eq i32 %dec.i1510, 0
  br i1 %cmp.i1511, label %if.then.i1515, label %if.end25

if.then.i1515:                                    ; preds = %if.then24
  %add5.i.i1512 = tail call i32 @llvm.bswap.i32(i32 %or.i1508) #9
  %215 = bitcast i8** %p.i to i32**
  %216 = load i32*, i32** %215, align 4, !tbaa !2
  store i32 %add5.i.i1512, i32* %216, align 4, !tbaa !9
  %217 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i1514 = getelementptr inbounds i8, i8* %217, i32 4
  store i8* %add.ptr.i1514, i8** %p.i, align 4, !tbaa !2
  store i32 32, i32* %i_left.i1811, align 4, !tbaa !8
  br label %if.end25

if.end25:                                         ; preds = %if.then.i1515, %if.then24, %bs_write1.exit1527
  %218 = phi i32 [ 32, %if.then.i1515 ], [ %dec.i1510, %if.then24 ], [ %211, %bs_write1.exit1527 ]
  %b_direct8x8_inference = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 16
  %219 = load i32, i32* %b_direct8x8_inference, align 4, !tbaa !63
  %220 = load i32, i32* %cur_bits.i1840, align 4, !tbaa !10
  %shl.i1496 = shl i32 %220, 1
  %or.i1497 = or i32 %shl.i1496, %219
  store i32 %or.i1497, i32* %cur_bits.i1840, align 4, !tbaa !10
  %dec.i1499 = add nsw i32 %218, -1
  store i32 %dec.i1499, i32* %i_left.i1811, align 4, !tbaa !8
  %cmp.i1500 = icmp eq i32 %dec.i1499, 0
  br i1 %cmp.i1500, label %if.then.i1504, label %bs_write1.exit1505

if.then.i1504:                                    ; preds = %if.end25
  %add5.i.i1501 = tail call i32 @llvm.bswap.i32(i32 %or.i1497) #9
  %221 = bitcast i8** %p.i to i32**
  %222 = load i32*, i32** %221, align 4, !tbaa !2
  store i32 %add5.i.i1501, i32* %222, align 4, !tbaa !9
  %223 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i1503 = getelementptr inbounds i8, i8* %223, i32 4
  store i8* %add.ptr.i1503, i8** %p.i, align 4, !tbaa !2
  store i32 32, i32* %i_left.i1811, align 4, !tbaa !8
  %.pre2161 = load i32, i32* %cur_bits.i1840, align 4, !tbaa !10
  br label %bs_write1.exit1505

bs_write1.exit1505:                               ; preds = %if.end25, %if.then.i1504
  %224 = phi i32 [ %dec.i1499, %if.end25 ], [ 32, %if.then.i1504 ]
  %225 = phi i32 [ %or.i1497, %if.end25 ], [ %.pre2161, %if.then.i1504 ]
  %b_crop = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 17
  %226 = load i32, i32* %b_crop, align 4, !tbaa !72
  %shl.i1485 = shl i32 %225, 1
  %or.i1486 = or i32 %shl.i1485, %226
  store i32 %or.i1486, i32* %cur_bits.i1840, align 4, !tbaa !10
  %dec.i1488 = add nsw i32 %224, -1
  store i32 %dec.i1488, i32* %i_left.i1811, align 4, !tbaa !8
  %cmp.i1489 = icmp eq i32 %dec.i1488, 0
  br i1 %cmp.i1489, label %if.then.i1493, label %bs_write1.exit1494

if.then.i1493:                                    ; preds = %bs_write1.exit1505
  %add5.i.i1490 = tail call i32 @llvm.bswap.i32(i32 %or.i1486) #9
  %227 = bitcast i8** %p.i to i32**
  %228 = load i32*, i32** %227, align 4, !tbaa !2
  store i32 %add5.i.i1490, i32* %228, align 4, !tbaa !9
  %229 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i1492 = getelementptr inbounds i8, i8* %229, i32 4
  store i8* %add.ptr.i1492, i8** %p.i, align 4, !tbaa !2
  store i32 32, i32* %i_left.i1811, align 4, !tbaa !8
  %.pre2162 = load i32, i32* %b_crop, align 4, !tbaa !72
  br label %bs_write1.exit1494

bs_write1.exit1494:                               ; preds = %bs_write1.exit1505, %if.then.i1493
  %230 = phi i32 [ %dec.i1488, %bs_write1.exit1505 ], [ 32, %if.then.i1493 ]
  %231 = phi i32 [ %226, %bs_write1.exit1505 ], [ %.pre2162, %if.then.i1493 ]
  %tobool27 = icmp eq i32 %231, 0
  br i1 %tobool27, label %bs_write1.exit1494.if.end46_crit_edge, label %if.then28

bs_write1.exit1494.if.end46_crit_edge:            ; preds = %bs_write1.exit1494
  %.pre2163 = load i32, i32* %cur_bits.i1840, align 4, !tbaa !10
  br label %if.end46

if.then28:                                        ; preds = %bs_write1.exit1494
  %i_chroma_format_idc29 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 22
  %232 = load i32, i32* %i_chroma_format_idc29, align 4, !tbaa !32
  %cmp30 = icmp eq i32 %232, 1
  %233 = add i32 %232, -1
  %234 = icmp ult i32 %233, 2
  %235 = zext i1 %234 to i32
  %conv = zext i1 %cmp30 to i32
  %236 = load i32, i32* %b_frame_mbs_only, align 4, !tbaa !30
  %tobool36 = icmp eq i32 %236, 0
  %lnot.ext38 = zext i1 %tobool36 to i32
  %add = add nuw nsw i32 %lnot.ext38, %conv
  %i_left = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 18, i32 0
  %237 = load i32, i32* %i_left, align 4, !tbaa !65
  %shr39 = ashr i32 %237, %235
  %inc.i1440 = add i32 %shr39, 1
  %cmp.i1441 = icmp sgt i32 %inc.i1440, 65535
  %shr.i1442 = ashr i32 %inc.i1440, 16
  %spec.select.i1443 = select i1 %cmp.i1441, i32 32, i32 0
  %spec.select20.i1444 = select i1 %cmp.i1441, i32 %shr.i1442, i32 %inc.i1440
  %cmp1.i1445 = icmp sgt i32 %spec.select20.i1444, 255
  %add.i1446 = or i32 %spec.select.i1443, 16
  %shr3.i1447 = ashr i32 %spec.select20.i1444, 8
  %size.1.i1448 = select i1 %cmp1.i1445, i32 %add.i1446, i32 %spec.select.i1443
  %tmp.1.i1449 = select i1 %cmp1.i1445, i32 %shr3.i1447, i32 %spec.select20.i1444
  %arrayidx.i1450 = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %tmp.1.i1449
  %238 = load i8, i8* %arrayidx.i1450, align 1, !tbaa !9
  %conv.i1451 = zext i8 %238 to i32
  %add5.i1452 = add nuw nsw i32 %size.1.i1448, %conv.i1451
  %239 = lshr i32 %add5.i1452, 1
  %cmp.i.i1454 = icmp sgt i32 %230, %239
  %240 = load i32, i32* %cur_bits.i1840, align 4, !tbaa !10
  br i1 %cmp.i.i1454, label %if.then.i.i1457, label %if.else.i.i1463

if.then.i.i1457:                                  ; preds = %if.then28
  %shl.i.i1456 = shl i32 %240, %239
  store i32 %shl.i.i1456, i32* %cur_bits.i1840, align 4, !tbaa !10
  br label %bs_write.exit.i1468

if.else.i.i1463:                                  ; preds = %if.then28
  %shl7.i.i1458 = shl i32 %240, %230
  %add5.i.i.i.i1459 = tail call i32 @llvm.bswap.i32(i32 %shl7.i.i1458) #9
  %241 = bitcast i8** %p.i to i32**
  %242 = load i32*, i32** %241, align 4, !tbaa !2
  store i32 %add5.i.i.i.i1459, i32* %242, align 4, !tbaa !9
  %243 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i.i1461 = getelementptr inbounds i8, i8* %243, i32 4
  store i8* %add.ptr.i.i1461, i8** %p.i, align 4, !tbaa !2
  store i32 0, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub4.i37.i1462 = add i32 %230, 32
  br label %bs_write.exit.i1468

bs_write.exit.i1468:                              ; preds = %if.else.i.i1463, %if.then.i.i1457
  %244 = phi i32 [ 0, %if.else.i.i1463 ], [ %shl.i.i1456, %if.then.i.i1457 ]
  %sub4.i37.pn.i1464 = phi i32 [ %sub4.i37.i1462, %if.else.i.i1463 ], [ %230, %if.then.i.i1457 ]
  %storemerge.i.i1465 = sub i32 %sub4.i37.pn.i1464, %239
  store i32 %storemerge.i.i1465, i32* %i_left.i1811, align 4, !tbaa !8
  %add8.i1466 = add nuw nsw i32 %239, 1
  %cmp.i22.i1467 = icmp sgt i32 %storemerge.i.i1465, %add8.i1466
  br i1 %cmp.i22.i1467, label %if.then.i26.i1472, label %if.else.i34.i1481

if.then.i26.i1472:                                ; preds = %bs_write.exit.i1468
  %shl.i24.i1469 = shl i32 %244, %add8.i1466
  %or.i.i1470 = or i32 %shl.i24.i1469, %inc.i1440
  store i32 %or.i.i1470, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub.i25.i1471 = sub nsw i32 %storemerge.i.i1465, %add8.i1466
  br label %bs_write_ue_big.exit1483

if.else.i34.i1481:                                ; preds = %bs_write.exit.i1468
  %sub4.i27.i1473 = sub nsw i32 %add8.i1466, %storemerge.i.i1465
  %shl7.i29.i1474 = shl i32 %244, %storemerge.i.i1465
  %shr.i.i1475 = lshr i32 %inc.i1440, %sub4.i27.i1473
  %or8.i.i1476 = or i32 %shr.i.i1475, %shl7.i29.i1474
  %add5.i.i.i30.i1477 = tail call i32 @llvm.bswap.i32(i32 %or8.i.i1476) #9
  %245 = bitcast i8** %p.i to i32**
  %246 = load i32*, i32** %245, align 4, !tbaa !2
  store i32 %add5.i.i.i30.i1477, i32* %246, align 4, !tbaa !9
  %247 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i32.i1479 = getelementptr inbounds i8, i8* %247, i32 4
  store i8* %add.ptr.i32.i1479, i8** %p.i, align 4, !tbaa !2
  store i32 %inc.i1440, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub13.i33.i1480 = sub nsw i32 32, %sub4.i27.i1473
  br label %bs_write_ue_big.exit1483

bs_write_ue_big.exit1483:                         ; preds = %if.then.i26.i1472, %if.else.i34.i1481
  %248 = phi i32 [ %inc.i1440, %if.else.i34.i1481 ], [ %or.i.i1470, %if.then.i26.i1472 ]
  %storemerge.i35.i1482 = phi i32 [ %sub13.i33.i1480, %if.else.i34.i1481 ], [ %sub.i25.i1471, %if.then.i26.i1472 ]
  store i32 %storemerge.i35.i1482, i32* %i_left.i1811, align 4, !tbaa !8
  %i_right = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 18, i32 1
  %249 = load i32, i32* %i_right, align 4, !tbaa !69
  %shr41 = ashr i32 %249, %235
  %inc.i1396 = add i32 %shr41, 1
  %cmp.i1397 = icmp sgt i32 %inc.i1396, 65535
  %shr.i1398 = ashr i32 %inc.i1396, 16
  %spec.select.i1399 = select i1 %cmp.i1397, i32 32, i32 0
  %spec.select20.i1400 = select i1 %cmp.i1397, i32 %shr.i1398, i32 %inc.i1396
  %cmp1.i1401 = icmp sgt i32 %spec.select20.i1400, 255
  %add.i1402 = or i32 %spec.select.i1399, 16
  %shr3.i1403 = ashr i32 %spec.select20.i1400, 8
  %size.1.i1404 = select i1 %cmp1.i1401, i32 %add.i1402, i32 %spec.select.i1399
  %tmp.1.i1405 = select i1 %cmp1.i1401, i32 %shr3.i1403, i32 %spec.select20.i1400
  %arrayidx.i1406 = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %tmp.1.i1405
  %250 = load i8, i8* %arrayidx.i1406, align 1, !tbaa !9
  %conv.i1407 = zext i8 %250 to i32
  %add5.i1408 = add nuw nsw i32 %size.1.i1404, %conv.i1407
  %251 = lshr i32 %add5.i1408, 1
  %cmp.i.i1410 = icmp sgt i32 %storemerge.i35.i1482, %251
  br i1 %cmp.i.i1410, label %if.then.i.i1413, label %if.else.i.i1419

if.then.i.i1413:                                  ; preds = %bs_write_ue_big.exit1483
  %shl.i.i1412 = shl i32 %248, %251
  store i32 %shl.i.i1412, i32* %cur_bits.i1840, align 4, !tbaa !10
  br label %bs_write.exit.i1424

if.else.i.i1419:                                  ; preds = %bs_write_ue_big.exit1483
  %shl7.i.i1414 = shl i32 %248, %storemerge.i35.i1482
  %add5.i.i.i.i1415 = tail call i32 @llvm.bswap.i32(i32 %shl7.i.i1414) #9
  %252 = bitcast i8** %p.i to i32**
  %253 = load i32*, i32** %252, align 4, !tbaa !2
  store i32 %add5.i.i.i.i1415, i32* %253, align 4, !tbaa !9
  %254 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i.i1417 = getelementptr inbounds i8, i8* %254, i32 4
  store i8* %add.ptr.i.i1417, i8** %p.i, align 4, !tbaa !2
  store i32 0, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub4.i37.i1418 = add i32 %storemerge.i35.i1482, 32
  br label %bs_write.exit.i1424

bs_write.exit.i1424:                              ; preds = %if.else.i.i1419, %if.then.i.i1413
  %255 = phi i32 [ 0, %if.else.i.i1419 ], [ %shl.i.i1412, %if.then.i.i1413 ]
  %sub4.i37.pn.i1420 = phi i32 [ %sub4.i37.i1418, %if.else.i.i1419 ], [ %storemerge.i35.i1482, %if.then.i.i1413 ]
  %storemerge.i.i1421 = sub i32 %sub4.i37.pn.i1420, %251
  store i32 %storemerge.i.i1421, i32* %i_left.i1811, align 4, !tbaa !8
  %add8.i1422 = add nuw nsw i32 %251, 1
  %cmp.i22.i1423 = icmp sgt i32 %storemerge.i.i1421, %add8.i1422
  br i1 %cmp.i22.i1423, label %if.then.i26.i1428, label %if.else.i34.i1437

if.then.i26.i1428:                                ; preds = %bs_write.exit.i1424
  %shl.i24.i1425 = shl i32 %255, %add8.i1422
  %or.i.i1426 = or i32 %shl.i24.i1425, %inc.i1396
  store i32 %or.i.i1426, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub.i25.i1427 = sub nsw i32 %storemerge.i.i1421, %add8.i1422
  br label %bs_write_ue_big.exit1439

if.else.i34.i1437:                                ; preds = %bs_write.exit.i1424
  %sub4.i27.i1429 = sub nsw i32 %add8.i1422, %storemerge.i.i1421
  %shl7.i29.i1430 = shl i32 %255, %storemerge.i.i1421
  %shr.i.i1431 = lshr i32 %inc.i1396, %sub4.i27.i1429
  %or8.i.i1432 = or i32 %shr.i.i1431, %shl7.i29.i1430
  %add5.i.i.i30.i1433 = tail call i32 @llvm.bswap.i32(i32 %or8.i.i1432) #9
  %256 = bitcast i8** %p.i to i32**
  %257 = load i32*, i32** %256, align 4, !tbaa !2
  store i32 %add5.i.i.i30.i1433, i32* %257, align 4, !tbaa !9
  %258 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i32.i1435 = getelementptr inbounds i8, i8* %258, i32 4
  store i8* %add.ptr.i32.i1435, i8** %p.i, align 4, !tbaa !2
  store i32 %inc.i1396, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub13.i33.i1436 = sub nsw i32 32, %sub4.i27.i1429
  br label %bs_write_ue_big.exit1439

bs_write_ue_big.exit1439:                         ; preds = %if.then.i26.i1428, %if.else.i34.i1437
  %259 = phi i32 [ %inc.i1396, %if.else.i34.i1437 ], [ %or.i.i1426, %if.then.i26.i1428 ]
  %storemerge.i35.i1438 = phi i32 [ %sub13.i33.i1436, %if.else.i34.i1437 ], [ %sub.i25.i1427, %if.then.i26.i1428 ]
  store i32 %storemerge.i35.i1438, i32* %i_left.i1811, align 4, !tbaa !8
  %i_top = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 18, i32 2
  %260 = load i32, i32* %i_top, align 4, !tbaa !67
  %shr43 = ashr i32 %260, %add
  %inc.i1352 = add i32 %shr43, 1
  %cmp.i1353 = icmp sgt i32 %inc.i1352, 65535
  %shr.i1354 = ashr i32 %inc.i1352, 16
  %spec.select.i1355 = select i1 %cmp.i1353, i32 32, i32 0
  %spec.select20.i1356 = select i1 %cmp.i1353, i32 %shr.i1354, i32 %inc.i1352
  %cmp1.i1357 = icmp sgt i32 %spec.select20.i1356, 255
  %add.i1358 = or i32 %spec.select.i1355, 16
  %shr3.i1359 = ashr i32 %spec.select20.i1356, 8
  %size.1.i1360 = select i1 %cmp1.i1357, i32 %add.i1358, i32 %spec.select.i1355
  %tmp.1.i1361 = select i1 %cmp1.i1357, i32 %shr3.i1359, i32 %spec.select20.i1356
  %arrayidx.i1362 = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %tmp.1.i1361
  %261 = load i8, i8* %arrayidx.i1362, align 1, !tbaa !9
  %conv.i1363 = zext i8 %261 to i32
  %add5.i1364 = add nuw nsw i32 %size.1.i1360, %conv.i1363
  %262 = lshr i32 %add5.i1364, 1
  %cmp.i.i1366 = icmp sgt i32 %storemerge.i35.i1438, %262
  br i1 %cmp.i.i1366, label %if.then.i.i1369, label %if.else.i.i1375

if.then.i.i1369:                                  ; preds = %bs_write_ue_big.exit1439
  %shl.i.i1368 = shl i32 %259, %262
  store i32 %shl.i.i1368, i32* %cur_bits.i1840, align 4, !tbaa !10
  br label %bs_write.exit.i1380

if.else.i.i1375:                                  ; preds = %bs_write_ue_big.exit1439
  %shl7.i.i1370 = shl i32 %259, %storemerge.i35.i1438
  %add5.i.i.i.i1371 = tail call i32 @llvm.bswap.i32(i32 %shl7.i.i1370) #9
  %263 = bitcast i8** %p.i to i32**
  %264 = load i32*, i32** %263, align 4, !tbaa !2
  store i32 %add5.i.i.i.i1371, i32* %264, align 4, !tbaa !9
  %265 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i.i1373 = getelementptr inbounds i8, i8* %265, i32 4
  store i8* %add.ptr.i.i1373, i8** %p.i, align 4, !tbaa !2
  store i32 0, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub4.i37.i1374 = add i32 %storemerge.i35.i1438, 32
  br label %bs_write.exit.i1380

bs_write.exit.i1380:                              ; preds = %if.else.i.i1375, %if.then.i.i1369
  %266 = phi i32 [ 0, %if.else.i.i1375 ], [ %shl.i.i1368, %if.then.i.i1369 ]
  %sub4.i37.pn.i1376 = phi i32 [ %sub4.i37.i1374, %if.else.i.i1375 ], [ %storemerge.i35.i1438, %if.then.i.i1369 ]
  %storemerge.i.i1377 = sub i32 %sub4.i37.pn.i1376, %262
  store i32 %storemerge.i.i1377, i32* %i_left.i1811, align 4, !tbaa !8
  %add8.i1378 = add nuw nsw i32 %262, 1
  %cmp.i22.i1379 = icmp sgt i32 %storemerge.i.i1377, %add8.i1378
  br i1 %cmp.i22.i1379, label %if.then.i26.i1384, label %if.else.i34.i1393

if.then.i26.i1384:                                ; preds = %bs_write.exit.i1380
  %shl.i24.i1381 = shl i32 %266, %add8.i1378
  %or.i.i1382 = or i32 %shl.i24.i1381, %inc.i1352
  store i32 %or.i.i1382, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub.i25.i1383 = sub nsw i32 %storemerge.i.i1377, %add8.i1378
  br label %bs_write_ue_big.exit1395

if.else.i34.i1393:                                ; preds = %bs_write.exit.i1380
  %sub4.i27.i1385 = sub nsw i32 %add8.i1378, %storemerge.i.i1377
  %shl7.i29.i1386 = shl i32 %266, %storemerge.i.i1377
  %shr.i.i1387 = lshr i32 %inc.i1352, %sub4.i27.i1385
  %or8.i.i1388 = or i32 %shr.i.i1387, %shl7.i29.i1386
  %add5.i.i.i30.i1389 = tail call i32 @llvm.bswap.i32(i32 %or8.i.i1388) #9
  %267 = bitcast i8** %p.i to i32**
  %268 = load i32*, i32** %267, align 4, !tbaa !2
  store i32 %add5.i.i.i30.i1389, i32* %268, align 4, !tbaa !9
  %269 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i32.i1391 = getelementptr inbounds i8, i8* %269, i32 4
  store i8* %add.ptr.i32.i1391, i8** %p.i, align 4, !tbaa !2
  store i32 %inc.i1352, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub13.i33.i1392 = sub nsw i32 32, %sub4.i27.i1385
  br label %bs_write_ue_big.exit1395

bs_write_ue_big.exit1395:                         ; preds = %if.then.i26.i1384, %if.else.i34.i1393
  %270 = phi i32 [ %inc.i1352, %if.else.i34.i1393 ], [ %or.i.i1382, %if.then.i26.i1384 ]
  %storemerge.i35.i1394 = phi i32 [ %sub13.i33.i1392, %if.else.i34.i1393 ], [ %sub.i25.i1383, %if.then.i26.i1384 ]
  store i32 %storemerge.i35.i1394, i32* %i_left.i1811, align 4, !tbaa !8
  %i_bottom = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 18, i32 3
  %271 = load i32, i32* %i_bottom, align 4, !tbaa !71
  %shr45 = ashr i32 %271, %add
  %inc.i1308 = add i32 %shr45, 1
  %cmp.i1309 = icmp sgt i32 %inc.i1308, 65535
  %shr.i1310 = ashr i32 %inc.i1308, 16
  %spec.select.i1311 = select i1 %cmp.i1309, i32 32, i32 0
  %spec.select20.i1312 = select i1 %cmp.i1309, i32 %shr.i1310, i32 %inc.i1308
  %cmp1.i1313 = icmp sgt i32 %spec.select20.i1312, 255
  %add.i1314 = or i32 %spec.select.i1311, 16
  %shr3.i1315 = ashr i32 %spec.select20.i1312, 8
  %size.1.i1316 = select i1 %cmp1.i1313, i32 %add.i1314, i32 %spec.select.i1311
  %tmp.1.i1317 = select i1 %cmp1.i1313, i32 %shr3.i1315, i32 %spec.select20.i1312
  %arrayidx.i1318 = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %tmp.1.i1317
  %272 = load i8, i8* %arrayidx.i1318, align 1, !tbaa !9
  %conv.i1319 = zext i8 %272 to i32
  %add5.i1320 = add nuw nsw i32 %size.1.i1316, %conv.i1319
  %273 = lshr i32 %add5.i1320, 1
  %cmp.i.i1322 = icmp sgt i32 %storemerge.i35.i1394, %273
  br i1 %cmp.i.i1322, label %if.then.i.i1325, label %if.else.i.i1331

if.then.i.i1325:                                  ; preds = %bs_write_ue_big.exit1395
  %shl.i.i1324 = shl i32 %270, %273
  store i32 %shl.i.i1324, i32* %cur_bits.i1840, align 4, !tbaa !10
  br label %bs_write.exit.i1336

if.else.i.i1331:                                  ; preds = %bs_write_ue_big.exit1395
  %shl7.i.i1326 = shl i32 %270, %storemerge.i35.i1394
  %add5.i.i.i.i1327 = tail call i32 @llvm.bswap.i32(i32 %shl7.i.i1326) #9
  %274 = bitcast i8** %p.i to i32**
  %275 = load i32*, i32** %274, align 4, !tbaa !2
  store i32 %add5.i.i.i.i1327, i32* %275, align 4, !tbaa !9
  %276 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i.i1329 = getelementptr inbounds i8, i8* %276, i32 4
  store i8* %add.ptr.i.i1329, i8** %p.i, align 4, !tbaa !2
  store i32 0, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub4.i37.i1330 = add i32 %storemerge.i35.i1394, 32
  br label %bs_write.exit.i1336

bs_write.exit.i1336:                              ; preds = %if.else.i.i1331, %if.then.i.i1325
  %277 = phi i32 [ 0, %if.else.i.i1331 ], [ %shl.i.i1324, %if.then.i.i1325 ]
  %sub4.i37.pn.i1332 = phi i32 [ %sub4.i37.i1330, %if.else.i.i1331 ], [ %storemerge.i35.i1394, %if.then.i.i1325 ]
  %storemerge.i.i1333 = sub i32 %sub4.i37.pn.i1332, %273
  store i32 %storemerge.i.i1333, i32* %i_left.i1811, align 4, !tbaa !8
  %add8.i1334 = add nuw nsw i32 %273, 1
  %cmp.i22.i1335 = icmp sgt i32 %storemerge.i.i1333, %add8.i1334
  br i1 %cmp.i22.i1335, label %if.then.i26.i1340, label %if.else.i34.i1349

if.then.i26.i1340:                                ; preds = %bs_write.exit.i1336
  %shl.i24.i1337 = shl i32 %277, %add8.i1334
  %or.i.i1338 = or i32 %shl.i24.i1337, %inc.i1308
  store i32 %or.i.i1338, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub.i25.i1339 = sub nsw i32 %storemerge.i.i1333, %add8.i1334
  br label %bs_write_ue_big.exit1351

if.else.i34.i1349:                                ; preds = %bs_write.exit.i1336
  %sub4.i27.i1341 = sub nsw i32 %add8.i1334, %storemerge.i.i1333
  %shl7.i29.i1342 = shl i32 %277, %storemerge.i.i1333
  %shr.i.i1343 = lshr i32 %inc.i1308, %sub4.i27.i1341
  %or8.i.i1344 = or i32 %shr.i.i1343, %shl7.i29.i1342
  %add5.i.i.i30.i1345 = tail call i32 @llvm.bswap.i32(i32 %or8.i.i1344) #9
  %278 = bitcast i8** %p.i to i32**
  %279 = load i32*, i32** %278, align 4, !tbaa !2
  store i32 %add5.i.i.i30.i1345, i32* %279, align 4, !tbaa !9
  %280 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i32.i1347 = getelementptr inbounds i8, i8* %280, i32 4
  store i8* %add.ptr.i32.i1347, i8** %p.i, align 4, !tbaa !2
  store i32 %inc.i1308, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub13.i33.i1348 = sub nsw i32 32, %sub4.i27.i1341
  br label %bs_write_ue_big.exit1351

bs_write_ue_big.exit1351:                         ; preds = %if.then.i26.i1340, %if.else.i34.i1349
  %281 = phi i32 [ %inc.i1308, %if.else.i34.i1349 ], [ %or.i.i1338, %if.then.i26.i1340 ]
  %storemerge.i35.i1350 = phi i32 [ %sub13.i33.i1348, %if.else.i34.i1349 ], [ %sub.i25.i1339, %if.then.i26.i1340 ]
  store i32 %storemerge.i35.i1350, i32* %i_left.i1811, align 4, !tbaa !8
  br label %if.end46

if.end46:                                         ; preds = %bs_write1.exit1494.if.end46_crit_edge, %bs_write_ue_big.exit1351
  %282 = phi i32 [ %230, %bs_write1.exit1494.if.end46_crit_edge ], [ %storemerge.i35.i1350, %bs_write_ue_big.exit1351 ]
  %283 = phi i32 [ %.pre2163, %bs_write1.exit1494.if.end46_crit_edge ], [ %281, %bs_write_ue_big.exit1351 ]
  %b_vui = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 19
  %284 = load i32, i32* %b_vui, align 4, !tbaa !60
  %shl.i1298 = shl i32 %283, 1
  %or.i1299 = or i32 %shl.i1298, %284
  store i32 %or.i1299, i32* %cur_bits.i1840, align 4, !tbaa !10
  %dec.i1301 = add nsw i32 %282, -1
  store i32 %dec.i1301, i32* %i_left.i1811, align 4, !tbaa !8
  %cmp.i1302 = icmp eq i32 %dec.i1301, 0
  br i1 %cmp.i1302, label %if.then.i1306, label %bs_write1.exit1307

if.then.i1306:                                    ; preds = %if.end46
  %add5.i.i1303 = tail call i32 @llvm.bswap.i32(i32 %or.i1299) #9
  %285 = bitcast i8** %p.i to i32**
  %286 = load i32*, i32** %285, align 4, !tbaa !2
  store i32 %add5.i.i1303, i32* %286, align 4, !tbaa !9
  %287 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i1305 = getelementptr inbounds i8, i8* %287, i32 4
  store i8* %add.ptr.i1305, i8** %p.i, align 4, !tbaa !2
  store i32 32, i32* %i_left.i1811, align 4, !tbaa !8
  %.pre2164 = load i32, i32* %b_vui, align 4, !tbaa !60
  br label %bs_write1.exit1307

bs_write1.exit1307:                               ; preds = %if.end46, %if.then.i1306
  %288 = phi i32 [ %dec.i1301, %if.end46 ], [ 32, %if.then.i1306 ]
  %289 = phi i32 [ %284, %if.end46 ], [ %.pre2164, %if.then.i1306 ]
  %tobool48 = icmp eq i32 %289, 0
  br i1 %tobool48, label %if.end179thread-pre-split, label %if.then49

if.then49:                                        ; preds = %bs_write1.exit1307
  %b_aspect_ratio_info_present = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 0
  %290 = load i32, i32* %b_aspect_ratio_info_present, align 4, !tbaa !73
  %291 = load i32, i32* %cur_bits.i1840, align 4, !tbaa !10
  %shl.i1287 = shl i32 %291, 1
  %or.i1288 = or i32 %shl.i1287, %290
  store i32 %or.i1288, i32* %cur_bits.i1840, align 4, !tbaa !10
  %dec.i1290 = add nsw i32 %288, -1
  store i32 %dec.i1290, i32* %i_left.i1811, align 4, !tbaa !8
  %cmp.i1291 = icmp eq i32 %dec.i1290, 0
  br i1 %cmp.i1291, label %if.then.i1295, label %bs_write1.exit1296

if.then.i1295:                                    ; preds = %if.then49
  %add5.i.i1292 = tail call i32 @llvm.bswap.i32(i32 %or.i1288) #9
  %292 = bitcast i8** %p.i to i32**
  %293 = load i32*, i32** %292, align 4, !tbaa !2
  store i32 %add5.i.i1292, i32* %293, align 4, !tbaa !9
  %294 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i1294 = getelementptr inbounds i8, i8* %294, i32 4
  store i8* %add.ptr.i1294, i8** %p.i, align 4, !tbaa !2
  store i32 32, i32* %i_left.i1811, align 4, !tbaa !8
  %.pre2165 = load i32, i32* %b_aspect_ratio_info_present, align 4, !tbaa !73
  br label %bs_write1.exit1296

bs_write1.exit1296:                               ; preds = %if.then49, %if.then.i1295
  %295 = phi i32 [ %dec.i1290, %if.then49 ], [ 32, %if.then.i1295 ]
  %296 = phi i32 [ %290, %if.then49 ], [ %.pre2165, %if.then.i1295 ]
  %tobool52 = icmp eq i32 %296, 0
  br i1 %tobool52, label %bs_write1.exit1296.if.end83_crit_edge, label %for.cond.preheader

bs_write1.exit1296.if.end83_crit_edge:            ; preds = %bs_write1.exit1296
  %.pre2166 = load i32, i32* %cur_bits.i1840, align 4, !tbaa !10
  br label %if.end83

for.cond.preheader:                               ; preds = %bs_write1.exit1296
  %i_sar_width = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 1
  %297 = load i32, i32* %i_sar_width, align 4, !tbaa !76
  %i_sar_height = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 2
  switch i32 %297, label %for.inc.15 [
    i32 1, label %land.lhs.true
    i32 12, label %land.lhs.true.1
    i32 10, label %land.lhs.true.2
    i32 16, label %land.lhs.true.3
    i32 40, label %land.lhs.true.4
    i32 24, label %land.lhs.true.5
    i32 20, label %land.lhs.true.6
    i32 32, label %land.lhs.true.7
    i32 80, label %land.lhs.true.8
    i32 18, label %land.lhs.true.9
    i32 15, label %land.lhs.true.10
    i32 64, label %land.lhs.true.11
    i32 160, label %land.lhs.true.12
    i32 4, label %land.lhs.true.13
    i32 3, label %land.lhs.true.14
    i32 2, label %land.lhs.true.15
  ]

land.lhs.true:                                    ; preds = %for.cond.preheader
  %298 = load i32, i32* %i_sar_height, align 4, !tbaa !77
  %cmp65 = icmp eq i32 %298, 1
  br i1 %cmp65, label %for.end, label %for.inc.15

for.end:                                          ; preds = %for.inc.15, %land.lhs.true.15, %land.lhs.true.14, %land.lhs.true.13, %land.lhs.true.12, %land.lhs.true.11, %land.lhs.true.10, %land.lhs.true.9, %land.lhs.true.8, %land.lhs.true.7, %land.lhs.true.6, %land.lhs.true.5, %land.lhs.true.4, %land.lhs.true.3, %land.lhs.true.2, %land.lhs.true.1, %land.lhs.true
  %sar.lcssa = phi i8* [ getelementptr inbounds ([17 x %struct.anon.18], [17 x %struct.anon.18]* @x264_8_sps_write.sar, i32 0, i32 0, i32 2), %land.lhs.true ], [ getelementptr inbounds ([17 x %struct.anon.18], [17 x %struct.anon.18]* @x264_8_sps_write.sar, i32 0, i32 1, i32 2), %land.lhs.true.1 ], [ getelementptr inbounds ([17 x %struct.anon.18], [17 x %struct.anon.18]* @x264_8_sps_write.sar, i32 0, i32 2, i32 2), %land.lhs.true.2 ], [ getelementptr inbounds ([17 x %struct.anon.18], [17 x %struct.anon.18]* @x264_8_sps_write.sar, i32 0, i32 3, i32 2), %land.lhs.true.3 ], [ getelementptr inbounds ([17 x %struct.anon.18], [17 x %struct.anon.18]* @x264_8_sps_write.sar, i32 0, i32 4, i32 2), %land.lhs.true.4 ], [ getelementptr inbounds ([17 x %struct.anon.18], [17 x %struct.anon.18]* @x264_8_sps_write.sar, i32 0, i32 5, i32 2), %land.lhs.true.5 ], [ getelementptr inbounds ([17 x %struct.anon.18], [17 x %struct.anon.18]* @x264_8_sps_write.sar, i32 0, i32 6, i32 2), %land.lhs.true.6 ], [ getelementptr inbounds ([17 x %struct.anon.18], [17 x %struct.anon.18]* @x264_8_sps_write.sar, i32 0, i32 7, i32 2), %land.lhs.true.7 ], [ getelementptr inbounds ([17 x %struct.anon.18], [17 x %struct.anon.18]* @x264_8_sps_write.sar, i32 0, i32 8, i32 2), %land.lhs.true.8 ], [ getelementptr inbounds ([17 x %struct.anon.18], [17 x %struct.anon.18]* @x264_8_sps_write.sar, i32 0, i32 9, i32 2), %land.lhs.true.9 ], [ getelementptr inbounds ([17 x %struct.anon.18], [17 x %struct.anon.18]* @x264_8_sps_write.sar, i32 0, i32 10, i32 2), %land.lhs.true.10 ], [ getelementptr inbounds ([17 x %struct.anon.18], [17 x %struct.anon.18]* @x264_8_sps_write.sar, i32 0, i32 11, i32 2), %land.lhs.true.11 ], [ getelementptr inbounds ([17 x %struct.anon.18], [17 x %struct.anon.18]* @x264_8_sps_write.sar, i32 0, i32 12, i32 2), %land.lhs.true.12 ], [ getelementptr inbounds ([17 x %struct.anon.18], [17 x %struct.anon.18]* @x264_8_sps_write.sar, i32 0, i32 13, i32 2), %land.lhs.true.13 ], [ getelementptr inbounds ([17 x %struct.anon.18], [17 x %struct.anon.18]* @x264_8_sps_write.sar, i32 0, i32 14, i32 2), %land.lhs.true.14 ], [ getelementptr inbounds ([17 x %struct.anon.18], [17 x %struct.anon.18]* @x264_8_sps_write.sar, i32 0, i32 15, i32 2), %land.lhs.true.15 ], [ getelementptr inbounds ([17 x %struct.anon.18], [17 x %struct.anon.18]* @x264_8_sps_write.sar, i32 0, i32 16, i32 2), %for.inc.15 ]
  %cmp55.lcssa = phi i1 [ false, %land.lhs.true ], [ false, %land.lhs.true.1 ], [ false, %land.lhs.true.2 ], [ false, %land.lhs.true.3 ], [ false, %land.lhs.true.4 ], [ false, %land.lhs.true.5 ], [ false, %land.lhs.true.6 ], [ false, %land.lhs.true.7 ], [ false, %land.lhs.true.8 ], [ false, %land.lhs.true.9 ], [ false, %land.lhs.true.10 ], [ false, %land.lhs.true.11 ], [ false, %land.lhs.true.12 ], [ false, %land.lhs.true.13 ], [ false, %land.lhs.true.14 ], [ false, %land.lhs.true.15 ], [ true, %for.inc.15 ]
  %299 = load i8, i8* %sar.lcssa, align 1, !tbaa !120
  %conv71 = zext i8 %299 to i32
  %cmp.i1268 = icmp sgt i32 %295, 8
  br i1 %cmp.i1268, label %if.then.i1273, label %if.else.i1283

if.then.i1273:                                    ; preds = %for.end
  %300 = load i32, i32* %cur_bits.i1840, align 4, !tbaa !10
  %shl.i1270 = shl i32 %300, 8
  %or.i1271 = or i32 %shl.i1270, %conv71
  br label %bs_write.exit1285

if.else.i1283:                                    ; preds = %for.end
  %sub4.i1274 = sub nsw i32 8, %295
  %301 = load i32, i32* %cur_bits.i1840, align 4, !tbaa !10
  %shl7.i1276 = shl i32 %301, %295
  %shr.i1277 = lshr i32 %conv71, %sub4.i1274
  %or8.i1278 = or i32 %shl7.i1276, %shr.i1277
  %add5.i.i.i1279 = tail call i32 @llvm.bswap.i32(i32 %or8.i1278) #9
  %302 = bitcast i8** %p.i to i32**
  %303 = load i32*, i32** %302, align 4, !tbaa !2
  store i32 %add5.i.i.i1279, i32* %303, align 4, !tbaa !9
  %304 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i1281 = getelementptr inbounds i8, i8* %304, i32 4
  store i8* %add.ptr.i1281, i8** %p.i, align 4, !tbaa !2
  br label %bs_write.exit1285

bs_write.exit1285:                                ; preds = %if.then.i1273, %if.else.i1283
  %or.i1271.sink = phi i32 [ %or.i1271, %if.then.i1273 ], [ %conv71, %if.else.i1283 ]
  %.sink = phi i32 [ -8, %if.then.i1273 ], [ 24, %if.else.i1283 ]
  store i32 %or.i1271.sink, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub.i1272 = add nsw i32 %295, %.sink
  store i32 %sub.i1272, i32* %i_left.i1811, align 4, !tbaa !8
  br i1 %cmp55.lcssa, label %if.then77, label %if.end83

if.then77:                                        ; preds = %bs_write.exit1285
  %305 = load i32, i32* %i_sar_width, align 4, !tbaa !76
  %cmp.i1249 = icmp sgt i32 %sub.i1272, 16
  br i1 %cmp.i1249, label %if.then.i1254, label %if.else.i1264

if.then.i1254:                                    ; preds = %if.then77
  %shl.i1251 = shl i32 %or.i1271.sink, 16
  %or.i1252 = or i32 %shl.i1251, %305
  br label %bs_write.exit1266

if.else.i1264:                                    ; preds = %if.then77
  %sub4.i1255 = sub nsw i32 16, %sub.i1272
  %shl7.i1257 = shl i32 %or.i1271.sink, %sub.i1272
  %shr.i1258 = lshr i32 %305, %sub4.i1255
  %or8.i1259 = or i32 %shl7.i1257, %shr.i1258
  %add5.i.i.i1260 = tail call i32 @llvm.bswap.i32(i32 %or8.i1259) #9
  %306 = bitcast i8** %p.i to i32**
  %307 = load i32*, i32** %306, align 4, !tbaa !2
  store i32 %add5.i.i.i1260, i32* %307, align 4, !tbaa !9
  %308 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i1262 = getelementptr inbounds i8, i8* %308, i32 4
  store i8* %add.ptr.i1262, i8** %p.i, align 4, !tbaa !2
  br label %bs_write.exit1266

bs_write.exit1266:                                ; preds = %if.then.i1254, %if.else.i1264
  %or.i1252.sink = phi i32 [ %or.i1252, %if.then.i1254 ], [ %305, %if.else.i1264 ]
  %.sink2242 = phi i32 [ -16, %if.then.i1254 ], [ 16, %if.else.i1264 ]
  store i32 %or.i1252.sink, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub.i1253 = add nsw i32 %sub.i1272, %.sink2242
  store i32 %sub.i1253, i32* %i_left.i1811, align 4, !tbaa !8
  %309 = load i32, i32* %i_sar_height, align 4, !tbaa !77
  %cmp.i1230 = icmp sgt i32 %sub.i1253, 16
  br i1 %cmp.i1230, label %if.then.i1235, label %if.else.i1245

if.then.i1235:                                    ; preds = %bs_write.exit1266
  %shl.i1232 = shl i32 %or.i1252.sink, 16
  %or.i1233 = or i32 %shl.i1232, %309
  br label %bs_write.exit1247

if.else.i1245:                                    ; preds = %bs_write.exit1266
  %sub4.i1236 = sub nsw i32 16, %sub.i1253
  %shl7.i1238 = shl i32 %or.i1252.sink, %sub.i1253
  %shr.i1239 = lshr i32 %309, %sub4.i1236
  %or8.i1240 = or i32 %shl7.i1238, %shr.i1239
  %add5.i.i.i1241 = tail call i32 @llvm.bswap.i32(i32 %or8.i1240) #9
  %310 = bitcast i8** %p.i to i32**
  %311 = load i32*, i32** %310, align 4, !tbaa !2
  store i32 %add5.i.i.i1241, i32* %311, align 4, !tbaa !9
  %312 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i1243 = getelementptr inbounds i8, i8* %312, i32 4
  store i8* %add.ptr.i1243, i8** %p.i, align 4, !tbaa !2
  br label %bs_write.exit1247

bs_write.exit1247:                                ; preds = %if.then.i1235, %if.else.i1245
  %or.i1233.sink = phi i32 [ %or.i1233, %if.then.i1235 ], [ %309, %if.else.i1245 ]
  %.sink2243 = phi i32 [ -16, %if.then.i1235 ], [ 16, %if.else.i1245 ]
  store i32 %or.i1233.sink, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub.i1234 = add nsw i32 %sub.i1253, %.sink2243
  store i32 %sub.i1234, i32* %i_left.i1811, align 4, !tbaa !8
  br label %if.end83

if.end83:                                         ; preds = %bs_write1.exit1296.if.end83_crit_edge, %bs_write.exit1285, %bs_write.exit1247
  %313 = phi i32 [ %295, %bs_write1.exit1296.if.end83_crit_edge ], [ %sub.i1272, %bs_write.exit1285 ], [ %sub.i1234, %bs_write.exit1247 ]
  %314 = phi i32 [ %.pre2166, %bs_write1.exit1296.if.end83_crit_edge ], [ %or.i1271.sink, %bs_write.exit1285 ], [ %or.i1233.sink, %bs_write.exit1247 ]
  %b_overscan_info_present = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 3
  %315 = load i32, i32* %b_overscan_info_present, align 4, !tbaa !79
  %shl.i1219 = shl i32 %314, 1
  %or.i1220 = or i32 %shl.i1219, %315
  store i32 %or.i1220, i32* %cur_bits.i1840, align 4, !tbaa !10
  %dec.i1222 = add nsw i32 %313, -1
  store i32 %dec.i1222, i32* %i_left.i1811, align 4, !tbaa !8
  %cmp.i1223 = icmp eq i32 %dec.i1222, 0
  br i1 %cmp.i1223, label %if.then.i1227, label %bs_write1.exit1228

if.then.i1227:                                    ; preds = %if.end83
  %add5.i.i1224 = tail call i32 @llvm.bswap.i32(i32 %or.i1220) #9
  %316 = bitcast i8** %p.i to i32**
  %317 = load i32*, i32** %316, align 4, !tbaa !2
  store i32 %add5.i.i1224, i32* %317, align 4, !tbaa !9
  %318 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i1226 = getelementptr inbounds i8, i8* %318, i32 4
  store i8* %add.ptr.i1226, i8** %p.i, align 4, !tbaa !2
  store i32 32, i32* %i_left.i1811, align 4, !tbaa !8
  %.pre2167 = load i32, i32* %b_overscan_info_present, align 4, !tbaa !79
  br label %bs_write1.exit1228

bs_write1.exit1228:                               ; preds = %if.end83, %if.then.i1227
  %319 = phi i32 [ %dec.i1222, %if.end83 ], [ 32, %if.then.i1227 ]
  %320 = phi i32 [ %315, %if.end83 ], [ %.pre2167, %if.then.i1227 ]
  %tobool87 = icmp eq i32 %320, 0
  br i1 %tobool87, label %if.end90, label %if.then88

if.then88:                                        ; preds = %bs_write1.exit1228
  %b_overscan_info = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 4
  %321 = load i32, i32* %b_overscan_info, align 4, !tbaa !80
  %322 = load i32, i32* %cur_bits.i1840, align 4, !tbaa !10
  %shl.i1208 = shl i32 %322, 1
  %or.i1209 = or i32 %shl.i1208, %321
  store i32 %or.i1209, i32* %cur_bits.i1840, align 4, !tbaa !10
  %dec.i1211 = add nsw i32 %319, -1
  store i32 %dec.i1211, i32* %i_left.i1811, align 4, !tbaa !8
  %cmp.i1212 = icmp eq i32 %dec.i1211, 0
  br i1 %cmp.i1212, label %if.then.i1216, label %if.end90

if.then.i1216:                                    ; preds = %if.then88
  %add5.i.i1213 = tail call i32 @llvm.bswap.i32(i32 %or.i1209) #9
  %323 = bitcast i8** %p.i to i32**
  %324 = load i32*, i32** %323, align 4, !tbaa !2
  store i32 %add5.i.i1213, i32* %324, align 4, !tbaa !9
  %325 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i1215 = getelementptr inbounds i8, i8* %325, i32 4
  store i8* %add.ptr.i1215, i8** %p.i, align 4, !tbaa !2
  store i32 32, i32* %i_left.i1811, align 4, !tbaa !8
  br label %if.end90

if.end90:                                         ; preds = %if.then.i1216, %if.then88, %bs_write1.exit1228
  %326 = phi i32 [ 32, %if.then.i1216 ], [ %dec.i1211, %if.then88 ], [ %319, %bs_write1.exit1228 ]
  %b_signal_type_present = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 5
  %327 = load i32, i32* %b_signal_type_present, align 4, !tbaa !81
  %328 = load i32, i32* %cur_bits.i1840, align 4, !tbaa !10
  %shl.i1197 = shl i32 %328, 1
  %or.i1198 = or i32 %shl.i1197, %327
  store i32 %or.i1198, i32* %cur_bits.i1840, align 4, !tbaa !10
  %dec.i1200 = add nsw i32 %326, -1
  store i32 %dec.i1200, i32* %i_left.i1811, align 4, !tbaa !8
  %cmp.i1201 = icmp eq i32 %dec.i1200, 0
  br i1 %cmp.i1201, label %if.then.i1205, label %bs_write1.exit1206

if.then.i1205:                                    ; preds = %if.end90
  %add5.i.i1202 = tail call i32 @llvm.bswap.i32(i32 %or.i1198) #9
  %329 = bitcast i8** %p.i to i32**
  %330 = load i32*, i32** %329, align 4, !tbaa !2
  store i32 %add5.i.i1202, i32* %330, align 4, !tbaa !9
  %331 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i1204 = getelementptr inbounds i8, i8* %331, i32 4
  store i8* %add.ptr.i1204, i8** %p.i, align 4, !tbaa !2
  store i32 32, i32* %i_left.i1811, align 4, !tbaa !8
  %.pre2168 = load i32, i32* %b_signal_type_present, align 4, !tbaa !81
  br label %bs_write1.exit1206

bs_write1.exit1206:                               ; preds = %if.end90, %if.then.i1205
  %332 = phi i32 [ %dec.i1200, %if.end90 ], [ 32, %if.then.i1205 ]
  %333 = phi i32 [ %327, %if.end90 ], [ %.pre2168, %if.then.i1205 ]
  %tobool94 = icmp eq i32 %333, 0
  br i1 %tobool94, label %if.end107, label %if.then95

if.then95:                                        ; preds = %bs_write1.exit1206
  %i_vidformat = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 6
  %334 = load i32, i32* %i_vidformat, align 4, !tbaa !83
  %cmp.i1178 = icmp sgt i32 %332, 3
  br i1 %cmp.i1178, label %if.then.i1183, label %if.else.i1193

if.then.i1183:                                    ; preds = %if.then95
  %335 = load i32, i32* %cur_bits.i1840, align 4, !tbaa !10
  %shl.i1180 = shl i32 %335, 3
  %or.i1181 = or i32 %shl.i1180, %334
  br label %bs_write.exit1195

if.else.i1193:                                    ; preds = %if.then95
  %sub4.i1184 = sub nsw i32 3, %332
  %336 = load i32, i32* %cur_bits.i1840, align 4, !tbaa !10
  %shl7.i1186 = shl i32 %336, %332
  %shr.i1187 = lshr i32 %334, %sub4.i1184
  %or8.i1188 = or i32 %shl7.i1186, %shr.i1187
  %add5.i.i.i1189 = tail call i32 @llvm.bswap.i32(i32 %or8.i1188) #9
  %337 = bitcast i8** %p.i to i32**
  %338 = load i32*, i32** %337, align 4, !tbaa !2
  store i32 %add5.i.i.i1189, i32* %338, align 4, !tbaa !9
  %339 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i1191 = getelementptr inbounds i8, i8* %339, i32 4
  store i8* %add.ptr.i1191, i8** %p.i, align 4, !tbaa !2
  br label %bs_write.exit1195

bs_write.exit1195:                                ; preds = %if.then.i1183, %if.else.i1193
  %or.i1181.sink = phi i32 [ %or.i1181, %if.then.i1183 ], [ %334, %if.else.i1193 ]
  %.sink2244 = phi i32 [ -3, %if.then.i1183 ], [ 29, %if.else.i1193 ]
  store i32 %or.i1181.sink, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub.i1182 = add nsw i32 %332, %.sink2244
  %b_fullrange = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 7
  %340 = load i32, i32* %b_fullrange, align 4, !tbaa !85
  %shl.i1167 = shl i32 %or.i1181.sink, 1
  %or.i1168 = or i32 %shl.i1167, %340
  store i32 %or.i1168, i32* %cur_bits.i1840, align 4, !tbaa !10
  %dec.i1170 = add nsw i32 %sub.i1182, -1
  store i32 %dec.i1170, i32* %i_left.i1811, align 4, !tbaa !8
  %cmp.i1171 = icmp eq i32 %dec.i1170, 0
  br i1 %cmp.i1171, label %if.then.i1175, label %bs_write1.exit1176

if.then.i1175:                                    ; preds = %bs_write.exit1195
  %add5.i.i1172 = tail call i32 @llvm.bswap.i32(i32 %or.i1168) #9
  %341 = bitcast i8** %p.i to i32**
  %342 = load i32*, i32** %341, align 4, !tbaa !2
  store i32 %add5.i.i1172, i32* %342, align 4, !tbaa !9
  %343 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i1174 = getelementptr inbounds i8, i8* %343, i32 4
  store i8* %add.ptr.i1174, i8** %p.i, align 4, !tbaa !2
  store i32 32, i32* %i_left.i1811, align 4, !tbaa !8
  %.pre2169 = load i32, i32* %cur_bits.i1840, align 4, !tbaa !10
  br label %bs_write1.exit1176

bs_write1.exit1176:                               ; preds = %bs_write.exit1195, %if.then.i1175
  %344 = phi i32 [ %dec.i1170, %bs_write.exit1195 ], [ 32, %if.then.i1175 ]
  %345 = phi i32 [ %or.i1168, %bs_write.exit1195 ], [ %.pre2169, %if.then.i1175 ]
  %b_color_description_present = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 8
  %346 = load i32, i32* %b_color_description_present, align 4, !tbaa !86
  %shl.i1156 = shl i32 %345, 1
  %or.i1157 = or i32 %shl.i1156, %346
  store i32 %or.i1157, i32* %cur_bits.i1840, align 4, !tbaa !10
  %dec.i1159 = add nsw i32 %344, -1
  store i32 %dec.i1159, i32* %i_left.i1811, align 4, !tbaa !8
  %cmp.i1160 = icmp eq i32 %dec.i1159, 0
  br i1 %cmp.i1160, label %if.then.i1164, label %bs_write1.exit1165

if.then.i1164:                                    ; preds = %bs_write1.exit1176
  %add5.i.i1161 = tail call i32 @llvm.bswap.i32(i32 %or.i1157) #9
  %347 = bitcast i8** %p.i to i32**
  %348 = load i32*, i32** %347, align 4, !tbaa !2
  store i32 %add5.i.i1161, i32* %348, align 4, !tbaa !9
  %349 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i1163 = getelementptr inbounds i8, i8* %349, i32 4
  store i8* %add.ptr.i1163, i8** %p.i, align 4, !tbaa !2
  store i32 32, i32* %i_left.i1811, align 4, !tbaa !8
  %.pre2170 = load i32, i32* %b_color_description_present, align 4, !tbaa !86
  br label %bs_write1.exit1165

bs_write1.exit1165:                               ; preds = %bs_write1.exit1176, %if.then.i1164
  %350 = phi i32 [ %dec.i1159, %bs_write1.exit1176 ], [ 32, %if.then.i1164 ]
  %351 = phi i32 [ %346, %bs_write1.exit1176 ], [ %.pre2170, %if.then.i1164 ]
  %tobool101 = icmp eq i32 %351, 0
  br i1 %tobool101, label %if.end107, label %if.then102

if.then102:                                       ; preds = %bs_write1.exit1165
  %i_colorprim = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 9
  %352 = load i32, i32* %i_colorprim, align 4, !tbaa !88
  %cmp.i1137 = icmp sgt i32 %350, 8
  br i1 %cmp.i1137, label %if.then.i1142, label %if.else.i1152

if.then.i1142:                                    ; preds = %if.then102
  %353 = load i32, i32* %cur_bits.i1840, align 4, !tbaa !10
  %shl.i1139 = shl i32 %353, 8
  %or.i1140 = or i32 %shl.i1139, %352
  br label %bs_write.exit1154

if.else.i1152:                                    ; preds = %if.then102
  %sub4.i1143 = sub nsw i32 8, %350
  %354 = load i32, i32* %cur_bits.i1840, align 4, !tbaa !10
  %shl7.i1145 = shl i32 %354, %350
  %shr.i1146 = lshr i32 %352, %sub4.i1143
  %or8.i1147 = or i32 %shl7.i1145, %shr.i1146
  %add5.i.i.i1148 = tail call i32 @llvm.bswap.i32(i32 %or8.i1147) #9
  %355 = bitcast i8** %p.i to i32**
  %356 = load i32*, i32** %355, align 4, !tbaa !2
  store i32 %add5.i.i.i1148, i32* %356, align 4, !tbaa !9
  %357 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i1150 = getelementptr inbounds i8, i8* %357, i32 4
  store i8* %add.ptr.i1150, i8** %p.i, align 4, !tbaa !2
  br label %bs_write.exit1154

bs_write.exit1154:                                ; preds = %if.then.i1142, %if.else.i1152
  %or.i1140.sink = phi i32 [ %or.i1140, %if.then.i1142 ], [ %352, %if.else.i1152 ]
  %.sink2245 = phi i32 [ -8, %if.then.i1142 ], [ 24, %if.else.i1152 ]
  store i32 %or.i1140.sink, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub.i1141 = add nsw i32 %350, %.sink2245
  store i32 %sub.i1141, i32* %i_left.i1811, align 4, !tbaa !8
  %i_transfer = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 10
  %358 = load i32, i32* %i_transfer, align 4, !tbaa !90
  %cmp.i1118 = icmp sgt i32 %sub.i1141, 8
  br i1 %cmp.i1118, label %if.then.i1123, label %if.else.i1133

if.then.i1123:                                    ; preds = %bs_write.exit1154
  %shl.i1120 = shl i32 %or.i1140.sink, 8
  %or.i1121 = or i32 %shl.i1120, %358
  br label %bs_write.exit1135

if.else.i1133:                                    ; preds = %bs_write.exit1154
  %sub4.i1124 = sub nsw i32 8, %sub.i1141
  %shl7.i1126 = shl i32 %or.i1140.sink, %sub.i1141
  %shr.i1127 = lshr i32 %358, %sub4.i1124
  %or8.i1128 = or i32 %shl7.i1126, %shr.i1127
  %add5.i.i.i1129 = tail call i32 @llvm.bswap.i32(i32 %or8.i1128) #9
  %359 = bitcast i8** %p.i to i32**
  %360 = load i32*, i32** %359, align 4, !tbaa !2
  store i32 %add5.i.i.i1129, i32* %360, align 4, !tbaa !9
  %361 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i1131 = getelementptr inbounds i8, i8* %361, i32 4
  store i8* %add.ptr.i1131, i8** %p.i, align 4, !tbaa !2
  br label %bs_write.exit1135

bs_write.exit1135:                                ; preds = %if.then.i1123, %if.else.i1133
  %or.i1121.sink = phi i32 [ %or.i1121, %if.then.i1123 ], [ %358, %if.else.i1133 ]
  %.sink2246 = phi i32 [ -8, %if.then.i1123 ], [ 24, %if.else.i1133 ]
  store i32 %or.i1121.sink, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub.i1122 = add nsw i32 %sub.i1141, %.sink2246
  store i32 %sub.i1122, i32* %i_left.i1811, align 4, !tbaa !8
  %i_colmatrix = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 11
  %362 = load i32, i32* %i_colmatrix, align 4, !tbaa !92
  %cmp.i1099 = icmp sgt i32 %sub.i1122, 8
  br i1 %cmp.i1099, label %if.then.i1104, label %if.else.i1114

if.then.i1104:                                    ; preds = %bs_write.exit1135
  %shl.i1101 = shl i32 %or.i1121.sink, 8
  %or.i1102 = or i32 %shl.i1101, %362
  br label %bs_write.exit1116

if.else.i1114:                                    ; preds = %bs_write.exit1135
  %sub4.i1105 = sub nsw i32 8, %sub.i1122
  %shl7.i1107 = shl i32 %or.i1121.sink, %sub.i1122
  %shr.i1108 = lshr i32 %362, %sub4.i1105
  %or8.i1109 = or i32 %shl7.i1107, %shr.i1108
  %add5.i.i.i1110 = tail call i32 @llvm.bswap.i32(i32 %or8.i1109) #9
  %363 = bitcast i8** %p.i to i32**
  %364 = load i32*, i32** %363, align 4, !tbaa !2
  store i32 %add5.i.i.i1110, i32* %364, align 4, !tbaa !9
  %365 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i1112 = getelementptr inbounds i8, i8* %365, i32 4
  store i8* %add.ptr.i1112, i8** %p.i, align 4, !tbaa !2
  br label %bs_write.exit1116

bs_write.exit1116:                                ; preds = %if.then.i1104, %if.else.i1114
  %or.i1102.sink = phi i32 [ %or.i1102, %if.then.i1104 ], [ %362, %if.else.i1114 ]
  %.sink2247 = phi i32 [ -8, %if.then.i1104 ], [ 24, %if.else.i1114 ]
  store i32 %or.i1102.sink, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub.i1103 = add nsw i32 %sub.i1122, %.sink2247
  store i32 %sub.i1103, i32* %i_left.i1811, align 4, !tbaa !8
  br label %if.end107

if.end107:                                        ; preds = %bs_write1.exit1165, %bs_write1.exit1206, %bs_write.exit1116
  %366 = phi i32 [ %350, %bs_write1.exit1165 ], [ %332, %bs_write1.exit1206 ], [ %sub.i1103, %bs_write.exit1116 ]
  %b_chroma_loc_info_present = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 12
  %367 = load i32, i32* %b_chroma_loc_info_present, align 4, !tbaa !94
  %368 = load i32, i32* %cur_bits.i1840, align 4, !tbaa !10
  %shl.i1088 = shl i32 %368, 1
  %or.i1089 = or i32 %shl.i1088, %367
  store i32 %or.i1089, i32* %cur_bits.i1840, align 4, !tbaa !10
  %dec.i1091 = add nsw i32 %366, -1
  store i32 %dec.i1091, i32* %i_left.i1811, align 4, !tbaa !8
  %cmp.i1092 = icmp eq i32 %dec.i1091, 0
  br i1 %cmp.i1092, label %if.then.i1096, label %bs_write1.exit1097

if.then.i1096:                                    ; preds = %if.end107
  %add5.i.i1093 = tail call i32 @llvm.bswap.i32(i32 %or.i1089) #9
  %369 = bitcast i8** %p.i to i32**
  %370 = load i32*, i32** %369, align 4, !tbaa !2
  store i32 %add5.i.i1093, i32* %370, align 4, !tbaa !9
  %371 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i1095 = getelementptr inbounds i8, i8* %371, i32 4
  store i8* %add.ptr.i1095, i8** %p.i, align 4, !tbaa !2
  store i32 32, i32* %i_left.i1811, align 4, !tbaa !8
  %.pre2171 = load i32, i32* %b_chroma_loc_info_present, align 4, !tbaa !94
  br label %bs_write1.exit1097

bs_write1.exit1097:                               ; preds = %if.end107, %if.then.i1096
  %372 = phi i32 [ %dec.i1091, %if.end107 ], [ 32, %if.then.i1096 ]
  %373 = phi i32 [ %367, %if.end107 ], [ %.pre2171, %if.then.i1096 ]
  %tobool111 = icmp eq i32 %373, 0
  br i1 %tobool111, label %bs_write1.exit1097.if.end115_crit_edge, label %if.then112

bs_write1.exit1097.if.end115_crit_edge:           ; preds = %bs_write1.exit1097
  %.pre2172 = load i32, i32* %cur_bits.i1840, align 4, !tbaa !10
  br label %if.end115

if.then112:                                       ; preds = %bs_write1.exit1097
  %i_chroma_loc_top = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 13
  %374 = load i32, i32* %i_chroma_loc_top, align 4, !tbaa !95
  %inc.i1043 = add i32 %374, 1
  %cmp.i1044 = icmp sgt i32 %inc.i1043, 65535
  %shr.i1045 = ashr i32 %inc.i1043, 16
  %spec.select.i1046 = select i1 %cmp.i1044, i32 32, i32 0
  %spec.select20.i1047 = select i1 %cmp.i1044, i32 %shr.i1045, i32 %inc.i1043
  %cmp1.i1048 = icmp sgt i32 %spec.select20.i1047, 255
  %add.i1049 = or i32 %spec.select.i1046, 16
  %shr3.i1050 = ashr i32 %spec.select20.i1047, 8
  %size.1.i1051 = select i1 %cmp1.i1048, i32 %add.i1049, i32 %spec.select.i1046
  %tmp.1.i1052 = select i1 %cmp1.i1048, i32 %shr3.i1050, i32 %spec.select20.i1047
  %arrayidx.i1053 = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %tmp.1.i1052
  %375 = load i8, i8* %arrayidx.i1053, align 1, !tbaa !9
  %conv.i1054 = zext i8 %375 to i32
  %add5.i1055 = add nuw nsw i32 %size.1.i1051, %conv.i1054
  %376 = lshr i32 %add5.i1055, 1
  %cmp.i.i1057 = icmp sgt i32 %372, %376
  %377 = load i32, i32* %cur_bits.i1840, align 4, !tbaa !10
  br i1 %cmp.i.i1057, label %if.then.i.i1060, label %if.else.i.i1066

if.then.i.i1060:                                  ; preds = %if.then112
  %shl.i.i1059 = shl i32 %377, %376
  store i32 %shl.i.i1059, i32* %cur_bits.i1840, align 4, !tbaa !10
  br label %bs_write.exit.i1071

if.else.i.i1066:                                  ; preds = %if.then112
  %shl7.i.i1061 = shl i32 %377, %372
  %add5.i.i.i.i1062 = tail call i32 @llvm.bswap.i32(i32 %shl7.i.i1061) #9
  %378 = bitcast i8** %p.i to i32**
  %379 = load i32*, i32** %378, align 4, !tbaa !2
  store i32 %add5.i.i.i.i1062, i32* %379, align 4, !tbaa !9
  %380 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i.i1064 = getelementptr inbounds i8, i8* %380, i32 4
  store i8* %add.ptr.i.i1064, i8** %p.i, align 4, !tbaa !2
  store i32 0, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub4.i37.i1065 = add i32 %372, 32
  br label %bs_write.exit.i1071

bs_write.exit.i1071:                              ; preds = %if.else.i.i1066, %if.then.i.i1060
  %381 = phi i32 [ 0, %if.else.i.i1066 ], [ %shl.i.i1059, %if.then.i.i1060 ]
  %sub4.i37.pn.i1067 = phi i32 [ %sub4.i37.i1065, %if.else.i.i1066 ], [ %372, %if.then.i.i1060 ]
  %storemerge.i.i1068 = sub i32 %sub4.i37.pn.i1067, %376
  store i32 %storemerge.i.i1068, i32* %i_left.i1811, align 4, !tbaa !8
  %add8.i1069 = add nuw nsw i32 %376, 1
  %cmp.i22.i1070 = icmp sgt i32 %storemerge.i.i1068, %add8.i1069
  br i1 %cmp.i22.i1070, label %if.then.i26.i1075, label %if.else.i34.i1084

if.then.i26.i1075:                                ; preds = %bs_write.exit.i1071
  %shl.i24.i1072 = shl i32 %381, %add8.i1069
  %or.i.i1073 = or i32 %shl.i24.i1072, %inc.i1043
  store i32 %or.i.i1073, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub.i25.i1074 = sub nsw i32 %storemerge.i.i1068, %add8.i1069
  br label %bs_write_ue_big.exit1086

if.else.i34.i1084:                                ; preds = %bs_write.exit.i1071
  %sub4.i27.i1076 = sub nsw i32 %add8.i1069, %storemerge.i.i1068
  %shl7.i29.i1077 = shl i32 %381, %storemerge.i.i1068
  %shr.i.i1078 = lshr i32 %inc.i1043, %sub4.i27.i1076
  %or8.i.i1079 = or i32 %shr.i.i1078, %shl7.i29.i1077
  %add5.i.i.i30.i1080 = tail call i32 @llvm.bswap.i32(i32 %or8.i.i1079) #9
  %382 = bitcast i8** %p.i to i32**
  %383 = load i32*, i32** %382, align 4, !tbaa !2
  store i32 %add5.i.i.i30.i1080, i32* %383, align 4, !tbaa !9
  %384 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i32.i1082 = getelementptr inbounds i8, i8* %384, i32 4
  store i8* %add.ptr.i32.i1082, i8** %p.i, align 4, !tbaa !2
  store i32 %inc.i1043, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub13.i33.i1083 = sub nsw i32 32, %sub4.i27.i1076
  br label %bs_write_ue_big.exit1086

bs_write_ue_big.exit1086:                         ; preds = %if.then.i26.i1075, %if.else.i34.i1084
  %385 = phi i32 [ %inc.i1043, %if.else.i34.i1084 ], [ %or.i.i1073, %if.then.i26.i1075 ]
  %storemerge.i35.i1085 = phi i32 [ %sub13.i33.i1083, %if.else.i34.i1084 ], [ %sub.i25.i1074, %if.then.i26.i1075 ]
  store i32 %storemerge.i35.i1085, i32* %i_left.i1811, align 4, !tbaa !8
  %i_chroma_loc_bottom = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 14
  %386 = load i32, i32* %i_chroma_loc_bottom, align 4, !tbaa !96
  %inc.i999 = add i32 %386, 1
  %cmp.i1000 = icmp sgt i32 %inc.i999, 65535
  %shr.i1001 = ashr i32 %inc.i999, 16
  %spec.select.i1002 = select i1 %cmp.i1000, i32 32, i32 0
  %spec.select20.i1003 = select i1 %cmp.i1000, i32 %shr.i1001, i32 %inc.i999
  %cmp1.i1004 = icmp sgt i32 %spec.select20.i1003, 255
  %add.i1005 = or i32 %spec.select.i1002, 16
  %shr3.i1006 = ashr i32 %spec.select20.i1003, 8
  %size.1.i1007 = select i1 %cmp1.i1004, i32 %add.i1005, i32 %spec.select.i1002
  %tmp.1.i1008 = select i1 %cmp1.i1004, i32 %shr3.i1006, i32 %spec.select20.i1003
  %arrayidx.i1009 = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %tmp.1.i1008
  %387 = load i8, i8* %arrayidx.i1009, align 1, !tbaa !9
  %conv.i1010 = zext i8 %387 to i32
  %add5.i1011 = add nuw nsw i32 %size.1.i1007, %conv.i1010
  %388 = lshr i32 %add5.i1011, 1
  %cmp.i.i1013 = icmp sgt i32 %storemerge.i35.i1085, %388
  br i1 %cmp.i.i1013, label %if.then.i.i1016, label %if.else.i.i1022

if.then.i.i1016:                                  ; preds = %bs_write_ue_big.exit1086
  %shl.i.i1015 = shl i32 %385, %388
  store i32 %shl.i.i1015, i32* %cur_bits.i1840, align 4, !tbaa !10
  br label %bs_write.exit.i1027

if.else.i.i1022:                                  ; preds = %bs_write_ue_big.exit1086
  %shl7.i.i1017 = shl i32 %385, %storemerge.i35.i1085
  %add5.i.i.i.i1018 = tail call i32 @llvm.bswap.i32(i32 %shl7.i.i1017) #9
  %389 = bitcast i8** %p.i to i32**
  %390 = load i32*, i32** %389, align 4, !tbaa !2
  store i32 %add5.i.i.i.i1018, i32* %390, align 4, !tbaa !9
  %391 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i.i1020 = getelementptr inbounds i8, i8* %391, i32 4
  store i8* %add.ptr.i.i1020, i8** %p.i, align 4, !tbaa !2
  store i32 0, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub4.i37.i1021 = add i32 %storemerge.i35.i1085, 32
  br label %bs_write.exit.i1027

bs_write.exit.i1027:                              ; preds = %if.else.i.i1022, %if.then.i.i1016
  %392 = phi i32 [ 0, %if.else.i.i1022 ], [ %shl.i.i1015, %if.then.i.i1016 ]
  %sub4.i37.pn.i1023 = phi i32 [ %sub4.i37.i1021, %if.else.i.i1022 ], [ %storemerge.i35.i1085, %if.then.i.i1016 ]
  %storemerge.i.i1024 = sub i32 %sub4.i37.pn.i1023, %388
  store i32 %storemerge.i.i1024, i32* %i_left.i1811, align 4, !tbaa !8
  %add8.i1025 = add nuw nsw i32 %388, 1
  %cmp.i22.i1026 = icmp sgt i32 %storemerge.i.i1024, %add8.i1025
  br i1 %cmp.i22.i1026, label %if.then.i26.i1031, label %if.else.i34.i1040

if.then.i26.i1031:                                ; preds = %bs_write.exit.i1027
  %shl.i24.i1028 = shl i32 %392, %add8.i1025
  %or.i.i1029 = or i32 %shl.i24.i1028, %inc.i999
  store i32 %or.i.i1029, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub.i25.i1030 = sub nsw i32 %storemerge.i.i1024, %add8.i1025
  br label %bs_write_ue_big.exit1042

if.else.i34.i1040:                                ; preds = %bs_write.exit.i1027
  %sub4.i27.i1032 = sub nsw i32 %add8.i1025, %storemerge.i.i1024
  %shl7.i29.i1033 = shl i32 %392, %storemerge.i.i1024
  %shr.i.i1034 = lshr i32 %inc.i999, %sub4.i27.i1032
  %or8.i.i1035 = or i32 %shr.i.i1034, %shl7.i29.i1033
  %add5.i.i.i30.i1036 = tail call i32 @llvm.bswap.i32(i32 %or8.i.i1035) #9
  %393 = bitcast i8** %p.i to i32**
  %394 = load i32*, i32** %393, align 4, !tbaa !2
  store i32 %add5.i.i.i30.i1036, i32* %394, align 4, !tbaa !9
  %395 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i32.i1038 = getelementptr inbounds i8, i8* %395, i32 4
  store i8* %add.ptr.i32.i1038, i8** %p.i, align 4, !tbaa !2
  store i32 %inc.i999, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub13.i33.i1039 = sub nsw i32 32, %sub4.i27.i1032
  br label %bs_write_ue_big.exit1042

bs_write_ue_big.exit1042:                         ; preds = %if.then.i26.i1031, %if.else.i34.i1040
  %396 = phi i32 [ %inc.i999, %if.else.i34.i1040 ], [ %or.i.i1029, %if.then.i26.i1031 ]
  %storemerge.i35.i1041 = phi i32 [ %sub13.i33.i1039, %if.else.i34.i1040 ], [ %sub.i25.i1030, %if.then.i26.i1031 ]
  store i32 %storemerge.i35.i1041, i32* %i_left.i1811, align 4, !tbaa !8
  br label %if.end115

if.end115:                                        ; preds = %bs_write1.exit1097.if.end115_crit_edge, %bs_write_ue_big.exit1042
  %397 = phi i32 [ %372, %bs_write1.exit1097.if.end115_crit_edge ], [ %storemerge.i35.i1041, %bs_write_ue_big.exit1042 ]
  %398 = phi i32 [ %.pre2172, %bs_write1.exit1097.if.end115_crit_edge ], [ %396, %bs_write_ue_big.exit1042 ]
  %b_timing_info_present = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 15
  %399 = load i32, i32* %b_timing_info_present, align 4, !tbaa !98
  %shl.i989 = shl i32 %398, 1
  %or.i990 = or i32 %shl.i989, %399
  store i32 %or.i990, i32* %cur_bits.i1840, align 4, !tbaa !10
  %dec.i992 = add nsw i32 %397, -1
  store i32 %dec.i992, i32* %i_left.i1811, align 4, !tbaa !8
  %cmp.i993 = icmp eq i32 %dec.i992, 0
  br i1 %cmp.i993, label %if.then.i997, label %bs_write1.exit998

if.then.i997:                                     ; preds = %if.end115
  %add5.i.i994 = tail call i32 @llvm.bswap.i32(i32 %or.i990) #9
  %400 = bitcast i8** %p.i to i32**
  %401 = load i32*, i32** %400, align 4, !tbaa !2
  store i32 %add5.i.i994, i32* %401, align 4, !tbaa !9
  %402 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i996 = getelementptr inbounds i8, i8* %402, i32 4
  store i8* %add.ptr.i996, i8** %p.i, align 4, !tbaa !2
  store i32 32, i32* %i_left.i1811, align 4, !tbaa !8
  %.pre2173 = load i32, i32* %b_timing_info_present, align 4, !tbaa !98
  br label %bs_write1.exit998

bs_write1.exit998:                                ; preds = %if.end115, %if.then.i997
  %403 = phi i32 [ %dec.i992, %if.end115 ], [ 32, %if.then.i997 ]
  %404 = phi i32 [ %399, %if.end115 ], [ %.pre2173, %if.then.i997 ]
  %tobool119 = icmp eq i32 %404, 0
  br i1 %tobool119, label %if.end124, label %if.then120

if.then120:                                       ; preds = %bs_write1.exit998
  %i_num_units_in_tick = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 16
  %405 = load i32, i32* %i_num_units_in_tick, align 4, !tbaa !100
  %shr.i950 = lshr i32 %405, 16
  %cmp.i.i952 = icmp sgt i32 %403, 16
  br i1 %cmp.i.i952, label %if.then.i.i957, label %if.else.i.i967

if.then.i.i957:                                   ; preds = %if.then120
  %406 = load i32, i32* %cur_bits.i1840, align 4, !tbaa !10
  %shl.i.i954 = shl i32 %406, 16
  %or.i.i955 = or i32 %shl.i.i954, %shr.i950
  br label %bs_write.exit.i970

if.else.i.i967:                                   ; preds = %if.then120
  %sub4.i.i958 = sub nsw i32 16, %403
  %407 = load i32, i32* %cur_bits.i1840, align 4, !tbaa !10
  %shl7.i.i960 = shl i32 %407, %403
  %shr.i.i961 = lshr i32 %shr.i950, %sub4.i.i958
  %or8.i.i962 = or i32 %shl7.i.i960, %shr.i.i961
  %add5.i.i.i.i963 = tail call i32 @llvm.bswap.i32(i32 %or8.i.i962) #9
  %408 = bitcast i8** %p.i to i32**
  %409 = load i32*, i32** %408, align 4, !tbaa !2
  store i32 %add5.i.i.i.i963, i32* %409, align 4, !tbaa !9
  %410 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i.i965 = getelementptr inbounds i8, i8* %410, i32 4
  store i8* %add.ptr.i.i965, i8** %p.i, align 4, !tbaa !2
  br label %bs_write.exit.i970

bs_write.exit.i970:                               ; preds = %if.else.i.i967, %if.then.i.i957
  %shr.i950.sink = phi i32 [ %shr.i950, %if.else.i.i967 ], [ %or.i.i955, %if.then.i.i957 ]
  %.sink2248 = phi i32 [ 16, %if.else.i.i967 ], [ -16, %if.then.i.i957 ]
  store i32 %shr.i950.sink, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub13.i.i966 = add nsw i32 %403, %.sink2248
  store i32 %sub13.i.i966, i32* %i_left.i1811, align 4, !tbaa !8
  %cmp.i4.i969 = icmp sgt i32 %sub13.i.i966, 16
  br i1 %cmp.i4.i969, label %if.then.i9.i975, label %if.else.i19.i985

if.then.i9.i975:                                  ; preds = %bs_write.exit.i970
  %shl.i6.i972 = shl i32 %shr.i950.sink, 16
  %or.i7.i973 = or i32 %shl.i6.i972, %405
  br label %bs_write32.exit987

if.else.i19.i985:                                 ; preds = %bs_write.exit.i970
  %sub4.i10.i976 = sub nsw i32 16, %sub13.i.i966
  %shl7.i12.i978 = shl i32 %shr.i950.sink, %sub13.i.i966
  %shr.i13.i979 = lshr i32 %405, %sub4.i10.i976
  %or8.i14.i980 = or i32 %shr.i13.i979, %shl7.i12.i978
  %add5.i.i.i15.i981 = tail call i32 @llvm.bswap.i32(i32 %or8.i14.i980) #9
  %411 = bitcast i8** %p.i to i32**
  %412 = load i32*, i32** %411, align 4, !tbaa !2
  store i32 %add5.i.i.i15.i981, i32* %412, align 4, !tbaa !9
  %413 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i17.i983 = getelementptr inbounds i8, i8* %413, i32 4
  store i8* %add.ptr.i17.i983, i8** %p.i, align 4, !tbaa !2
  br label %bs_write32.exit987

bs_write32.exit987:                               ; preds = %if.then.i9.i975, %if.else.i19.i985
  %or.i7.i973.sink = phi i32 [ %or.i7.i973, %if.then.i9.i975 ], [ %405, %if.else.i19.i985 ]
  %.sink2249 = phi i32 [ -16, %if.then.i9.i975 ], [ 16, %if.else.i19.i985 ]
  store i32 %or.i7.i973.sink, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub.i8.i974 = add nsw i32 %sub13.i.i966, %.sink2249
  store i32 %sub.i8.i974, i32* %i_left.i1811, align 4, !tbaa !8
  %i_time_scale = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 17
  %414 = load i32, i32* %i_time_scale, align 4, !tbaa !101
  %shr.i932 = lshr i32 %414, 16
  %cmp.i.i934 = icmp sgt i32 %sub.i8.i974, 16
  br i1 %cmp.i.i934, label %if.then.i.i938, label %if.else.i.i945

if.then.i.i938:                                   ; preds = %bs_write32.exit987
  %shl.i.i936 = shl i32 %or.i7.i973.sink, 16
  %or.i.i937 = or i32 %shl.i.i936, %shr.i932
  br label %bs_write.exit.i947

if.else.i.i945:                                   ; preds = %bs_write32.exit987
  %sub4.i.i = sub nsw i32 16, %sub.i8.i974
  %shl7.i.i939 = shl i32 %or.i7.i973.sink, %sub.i8.i974
  %shr.i.i940 = lshr i32 %shr.i932, %sub4.i.i
  %or8.i.i941 = or i32 %shl7.i.i939, %shr.i.i940
  %add5.i.i.i.i942 = tail call i32 @llvm.bswap.i32(i32 %or8.i.i941) #9
  %415 = bitcast i8** %p.i to i32**
  %416 = load i32*, i32** %415, align 4, !tbaa !2
  store i32 %add5.i.i.i.i942, i32* %416, align 4, !tbaa !9
  %417 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i.i944 = getelementptr inbounds i8, i8* %417, i32 4
  store i8* %add.ptr.i.i944, i8** %p.i, align 4, !tbaa !2
  br label %bs_write.exit.i947

bs_write.exit.i947:                               ; preds = %if.else.i.i945, %if.then.i.i938
  %shr.i932.sink = phi i32 [ %shr.i932, %if.else.i.i945 ], [ %or.i.i937, %if.then.i.i938 ]
  %.sink2250 = phi i32 [ 16, %if.else.i.i945 ], [ -16, %if.then.i.i938 ]
  store i32 %shr.i932.sink, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub13.i.i = add nsw i32 %sub.i8.i974, %.sink2250
  store i32 %sub13.i.i, i32* %i_left.i1811, align 4, !tbaa !8
  %cmp.i4.i = icmp sgt i32 %sub13.i.i, 16
  br i1 %cmp.i4.i, label %if.then.i9.i, label %if.else.i19.i

if.then.i9.i:                                     ; preds = %bs_write.exit.i947
  %shl.i6.i948 = shl i32 %shr.i932.sink, 16
  %or.i7.i = or i32 %shl.i6.i948, %414
  br label %bs_write32.exit

if.else.i19.i:                                    ; preds = %bs_write.exit.i947
  %sub4.i10.i949 = sub nsw i32 16, %sub13.i.i
  %shl7.i12.i = shl i32 %shr.i932.sink, %sub13.i.i
  %shr.i13.i = lshr i32 %414, %sub4.i10.i949
  %or8.i14.i = or i32 %shr.i13.i, %shl7.i12.i
  %add5.i.i.i15.i = tail call i32 @llvm.bswap.i32(i32 %or8.i14.i) #9
  %418 = bitcast i8** %p.i to i32**
  %419 = load i32*, i32** %418, align 4, !tbaa !2
  store i32 %add5.i.i.i15.i, i32* %419, align 4, !tbaa !9
  %420 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i17.i = getelementptr inbounds i8, i8* %420, i32 4
  store i8* %add.ptr.i17.i, i8** %p.i, align 4, !tbaa !2
  br label %bs_write32.exit

bs_write32.exit:                                  ; preds = %if.then.i9.i, %if.else.i19.i
  %or.i7.i.sink = phi i32 [ %or.i7.i, %if.then.i9.i ], [ %414, %if.else.i19.i ]
  %.sink2251 = phi i32 [ -16, %if.then.i9.i ], [ 16, %if.else.i19.i ]
  store i32 %or.i7.i.sink, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub.i8.i = add nsw i32 %sub13.i.i, %.sink2251
  %b_fixed_frame_rate = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 18
  %421 = load i32, i32* %b_fixed_frame_rate, align 4, !tbaa !103
  %shl.i922 = shl i32 %or.i7.i.sink, 1
  %or.i923 = or i32 %shl.i922, %421
  store i32 %or.i923, i32* %cur_bits.i1840, align 4, !tbaa !10
  %dec.i925 = add nsw i32 %sub.i8.i, -1
  store i32 %dec.i925, i32* %i_left.i1811, align 4, !tbaa !8
  %cmp.i926 = icmp eq i32 %dec.i925, 0
  br i1 %cmp.i926, label %if.then.i930, label %if.end124

if.then.i930:                                     ; preds = %bs_write32.exit
  %add5.i.i927 = tail call i32 @llvm.bswap.i32(i32 %or.i923) #9
  %422 = bitcast i8** %p.i to i32**
  %423 = load i32*, i32** %422, align 4, !tbaa !2
  store i32 %add5.i.i927, i32* %423, align 4, !tbaa !9
  %424 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i929 = getelementptr inbounds i8, i8* %424, i32 4
  store i8* %add.ptr.i929, i8** %p.i, align 4, !tbaa !2
  store i32 32, i32* %i_left.i1811, align 4, !tbaa !8
  br label %if.end124

if.end124:                                        ; preds = %if.then.i930, %bs_write32.exit, %bs_write1.exit998
  %425 = phi i32 [ 32, %if.then.i930 ], [ %dec.i925, %bs_write32.exit ], [ %403, %bs_write1.exit998 ]
  %b_nal_hrd_parameters_present = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 19
  %426 = load i32, i32* %b_nal_hrd_parameters_present, align 4, !tbaa !106
  %427 = load i32, i32* %cur_bits.i1840, align 4, !tbaa !10
  %shl.i911 = shl i32 %427, 1
  %or.i912 = or i32 %shl.i911, %426
  store i32 %or.i912, i32* %cur_bits.i1840, align 4, !tbaa !10
  %dec.i914 = add nsw i32 %425, -1
  store i32 %dec.i914, i32* %i_left.i1811, align 4, !tbaa !8
  %cmp.i915 = icmp eq i32 %dec.i914, 0
  br i1 %cmp.i915, label %if.then.i919, label %bs_write1.exit920

if.then.i919:                                     ; preds = %if.end124
  %add5.i.i916 = tail call i32 @llvm.bswap.i32(i32 %or.i912) #9
  %428 = bitcast i8** %p.i to i32**
  %429 = load i32*, i32** %428, align 4, !tbaa !2
  store i32 %add5.i.i916, i32* %429, align 4, !tbaa !9
  %430 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i918 = getelementptr inbounds i8, i8* %430, i32 4
  store i8* %add.ptr.i918, i8** %p.i, align 4, !tbaa !2
  store i32 32, i32* %i_left.i1811, align 4, !tbaa !8
  %.pre2174 = load i32, i32* %b_nal_hrd_parameters_present, align 4, !tbaa !106
  br label %bs_write1.exit920

bs_write1.exit920:                                ; preds = %if.end124, %if.then.i919
  %431 = phi i32 [ %dec.i914, %if.end124 ], [ 32, %if.then.i919 ]
  %432 = phi i32 [ %426, %if.end124 ], [ %.pre2174, %if.then.i919 ]
  %tobool128 = icmp eq i32 %432, 0
  br i1 %tobool128, label %bs_write1.exit920.if.end155_crit_edge, label %if.then129

bs_write1.exit920.if.end155_crit_edge:            ; preds = %bs_write1.exit920
  %.pre2176 = load i32, i32* %cur_bits.i1840, align 4, !tbaa !10
  br label %if.end155

if.then129:                                       ; preds = %bs_write1.exit920
  %i_cpb_cnt = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 21, i32 0
  %433 = load i32, i32* %i_cpb_cnt, align 4, !tbaa !122
  %cmp.i867 = icmp sgt i32 %433, 65535
  %shr.i868 = ashr i32 %433, 16
  %spec.select.i869 = select i1 %cmp.i867, i32 32, i32 0
  %spec.select20.i870 = select i1 %cmp.i867, i32 %shr.i868, i32 %433
  %cmp1.i871 = icmp sgt i32 %spec.select20.i870, 255
  %add.i872 = or i32 %spec.select.i869, 16
  %shr3.i873 = ashr i32 %spec.select20.i870, 8
  %size.1.i874 = select i1 %cmp1.i871, i32 %add.i872, i32 %spec.select.i869
  %tmp.1.i875 = select i1 %cmp1.i871, i32 %shr3.i873, i32 %spec.select20.i870
  %arrayidx.i876 = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %tmp.1.i875
  %434 = load i8, i8* %arrayidx.i876, align 1, !tbaa !9
  %conv.i877 = zext i8 %434 to i32
  %add5.i878 = add nuw nsw i32 %size.1.i874, %conv.i877
  %435 = lshr i32 %add5.i878, 1
  %cmp.i.i880 = icmp sgt i32 %431, %435
  %436 = load i32, i32* %cur_bits.i1840, align 4, !tbaa !10
  br i1 %cmp.i.i880, label %if.then.i.i883, label %if.else.i.i889

if.then.i.i883:                                   ; preds = %if.then129
  %shl.i.i882 = shl i32 %436, %435
  store i32 %shl.i.i882, i32* %cur_bits.i1840, align 4, !tbaa !10
  br label %bs_write.exit.i894

if.else.i.i889:                                   ; preds = %if.then129
  %shl7.i.i884 = shl i32 %436, %431
  %add5.i.i.i.i885 = tail call i32 @llvm.bswap.i32(i32 %shl7.i.i884) #9
  %437 = bitcast i8** %p.i to i32**
  %438 = load i32*, i32** %437, align 4, !tbaa !2
  store i32 %add5.i.i.i.i885, i32* %438, align 4, !tbaa !9
  %439 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i.i887 = getelementptr inbounds i8, i8* %439, i32 4
  store i8* %add.ptr.i.i887, i8** %p.i, align 4, !tbaa !2
  store i32 0, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub4.i37.i888 = add i32 %431, 32
  br label %bs_write.exit.i894

bs_write.exit.i894:                               ; preds = %if.else.i.i889, %if.then.i.i883
  %440 = phi i32 [ 0, %if.else.i.i889 ], [ %shl.i.i882, %if.then.i.i883 ]
  %sub4.i37.pn.i890 = phi i32 [ %sub4.i37.i888, %if.else.i.i889 ], [ %431, %if.then.i.i883 ]
  %storemerge.i.i891 = sub i32 %sub4.i37.pn.i890, %435
  store i32 %storemerge.i.i891, i32* %i_left.i1811, align 4, !tbaa !8
  %add8.i892 = add nuw nsw i32 %435, 1
  %cmp.i22.i893 = icmp sgt i32 %storemerge.i.i891, %add8.i892
  br i1 %cmp.i22.i893, label %if.then.i26.i898, label %if.else.i34.i907

if.then.i26.i898:                                 ; preds = %bs_write.exit.i894
  %shl.i24.i895 = shl i32 %440, %add8.i892
  %or.i.i896 = or i32 %shl.i24.i895, %433
  store i32 %or.i.i896, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub.i25.i897 = sub nsw i32 %storemerge.i.i891, %add8.i892
  br label %bs_write_ue_big.exit909

if.else.i34.i907:                                 ; preds = %bs_write.exit.i894
  %sub4.i27.i899 = sub nsw i32 %add8.i892, %storemerge.i.i891
  %shl7.i29.i900 = shl i32 %440, %storemerge.i.i891
  %shr.i.i901 = lshr i32 %433, %sub4.i27.i899
  %or8.i.i902 = or i32 %shr.i.i901, %shl7.i29.i900
  %add5.i.i.i30.i903 = tail call i32 @llvm.bswap.i32(i32 %or8.i.i902) #9
  %441 = bitcast i8** %p.i to i32**
  %442 = load i32*, i32** %441, align 4, !tbaa !2
  store i32 %add5.i.i.i30.i903, i32* %442, align 4, !tbaa !9
  %443 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i32.i905 = getelementptr inbounds i8, i8* %443, i32 4
  store i8* %add.ptr.i32.i905, i8** %p.i, align 4, !tbaa !2
  store i32 %433, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub13.i33.i906 = sub nsw i32 32, %sub4.i27.i899
  br label %bs_write_ue_big.exit909

bs_write_ue_big.exit909:                          ; preds = %if.then.i26.i898, %if.else.i34.i907
  %444 = phi i32 [ %433, %if.else.i34.i907 ], [ %or.i.i896, %if.then.i26.i898 ]
  %storemerge.i35.i908 = phi i32 [ %sub13.i33.i906, %if.else.i34.i907 ], [ %sub.i25.i897, %if.then.i26.i898 ]
  store i32 %storemerge.i35.i908, i32* %i_left.i1811, align 4, !tbaa !8
  %i_bit_rate_scale = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 21, i32 1
  %445 = load i32, i32* %i_bit_rate_scale, align 4, !tbaa !123
  %cmp.i849 = icmp sgt i32 %storemerge.i35.i908, 4
  br i1 %cmp.i849, label %if.then.i854, label %if.else.i864

if.then.i854:                                     ; preds = %bs_write_ue_big.exit909
  %shl.i851 = shl i32 %444, 4
  %or.i852 = or i32 %shl.i851, %445
  br label %bs_write.exit866

if.else.i864:                                     ; preds = %bs_write_ue_big.exit909
  %sub4.i855 = sub nsw i32 4, %storemerge.i35.i908
  %shl7.i857 = shl i32 %444, %storemerge.i35.i908
  %shr.i858 = lshr i32 %445, %sub4.i855
  %or8.i859 = or i32 %shl7.i857, %shr.i858
  %add5.i.i.i860 = tail call i32 @llvm.bswap.i32(i32 %or8.i859) #9
  %446 = bitcast i8** %p.i to i32**
  %447 = load i32*, i32** %446, align 4, !tbaa !2
  store i32 %add5.i.i.i860, i32* %447, align 4, !tbaa !9
  %448 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i862 = getelementptr inbounds i8, i8* %448, i32 4
  store i8* %add.ptr.i862, i8** %p.i, align 4, !tbaa !2
  br label %bs_write.exit866

bs_write.exit866:                                 ; preds = %if.then.i854, %if.else.i864
  %or.i852.sink = phi i32 [ %or.i852, %if.then.i854 ], [ %445, %if.else.i864 ]
  %.sink2252 = phi i32 [ -4, %if.then.i854 ], [ 28, %if.else.i864 ]
  store i32 %or.i852.sink, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub.i853 = add nsw i32 %storemerge.i35.i908, %.sink2252
  store i32 %sub.i853, i32* %i_left.i1811, align 4, !tbaa !8
  %i_cpb_size_scale = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 21, i32 2
  %449 = load i32, i32* %i_cpb_size_scale, align 4, !tbaa !124
  %cmp.i830 = icmp sgt i32 %sub.i853, 4
  br i1 %cmp.i830, label %if.then.i835, label %if.else.i845

if.then.i835:                                     ; preds = %bs_write.exit866
  %shl.i832 = shl i32 %or.i852.sink, 4
  %or.i833 = or i32 %shl.i832, %449
  br label %bs_write.exit847

if.else.i845:                                     ; preds = %bs_write.exit866
  %sub4.i836 = sub nsw i32 4, %sub.i853
  %shl7.i838 = shl i32 %or.i852.sink, %sub.i853
  %shr.i839 = lshr i32 %449, %sub4.i836
  %or8.i840 = or i32 %shl7.i838, %shr.i839
  %add5.i.i.i841 = tail call i32 @llvm.bswap.i32(i32 %or8.i840) #9
  %450 = bitcast i8** %p.i to i32**
  %451 = load i32*, i32** %450, align 4, !tbaa !2
  store i32 %add5.i.i.i841, i32* %451, align 4, !tbaa !9
  %452 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i843 = getelementptr inbounds i8, i8* %452, i32 4
  store i8* %add.ptr.i843, i8** %p.i, align 4, !tbaa !2
  br label %bs_write.exit847

bs_write.exit847:                                 ; preds = %if.then.i835, %if.else.i845
  %or.i833.sink = phi i32 [ %or.i833, %if.then.i835 ], [ %449, %if.else.i845 ]
  %.sink2253 = phi i32 [ -4, %if.then.i835 ], [ 28, %if.else.i845 ]
  store i32 %or.i833.sink, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub.i834 = add nsw i32 %sub.i853, %.sink2253
  store i32 %sub.i834, i32* %i_left.i1811, align 4, !tbaa !8
  %i_bit_rate_value = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 21, i32 3
  %453 = load i32, i32* %i_bit_rate_value, align 4, !tbaa !125
  %cmp.i786 = icmp sgt i32 %453, 65535
  %shr.i787 = ashr i32 %453, 16
  %spec.select.i788 = select i1 %cmp.i786, i32 32, i32 0
  %spec.select20.i789 = select i1 %cmp.i786, i32 %shr.i787, i32 %453
  %cmp1.i790 = icmp sgt i32 %spec.select20.i789, 255
  %add.i791 = or i32 %spec.select.i788, 16
  %shr3.i792 = ashr i32 %spec.select20.i789, 8
  %size.1.i793 = select i1 %cmp1.i790, i32 %add.i791, i32 %spec.select.i788
  %tmp.1.i794 = select i1 %cmp1.i790, i32 %shr3.i792, i32 %spec.select20.i789
  %arrayidx.i795 = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %tmp.1.i794
  %454 = load i8, i8* %arrayidx.i795, align 1, !tbaa !9
  %conv.i796 = zext i8 %454 to i32
  %add5.i797 = add nuw nsw i32 %size.1.i793, %conv.i796
  %455 = lshr i32 %add5.i797, 1
  %cmp.i.i799 = icmp sgt i32 %sub.i834, %455
  br i1 %cmp.i.i799, label %if.then.i.i802, label %if.else.i.i808

if.then.i.i802:                                   ; preds = %bs_write.exit847
  %shl.i.i801 = shl i32 %or.i833.sink, %455
  store i32 %shl.i.i801, i32* %cur_bits.i1840, align 4, !tbaa !10
  br label %bs_write.exit.i813

if.else.i.i808:                                   ; preds = %bs_write.exit847
  %shl7.i.i803 = shl i32 %or.i833.sink, %sub.i834
  %add5.i.i.i.i804 = tail call i32 @llvm.bswap.i32(i32 %shl7.i.i803) #9
  %456 = bitcast i8** %p.i to i32**
  %457 = load i32*, i32** %456, align 4, !tbaa !2
  store i32 %add5.i.i.i.i804, i32* %457, align 4, !tbaa !9
  %458 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i.i806 = getelementptr inbounds i8, i8* %458, i32 4
  store i8* %add.ptr.i.i806, i8** %p.i, align 4, !tbaa !2
  store i32 0, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub4.i37.i807 = add i32 %sub.i834, 32
  br label %bs_write.exit.i813

bs_write.exit.i813:                               ; preds = %if.else.i.i808, %if.then.i.i802
  %459 = phi i32 [ 0, %if.else.i.i808 ], [ %shl.i.i801, %if.then.i.i802 ]
  %sub4.i37.pn.i809 = phi i32 [ %sub4.i37.i807, %if.else.i.i808 ], [ %sub.i834, %if.then.i.i802 ]
  %storemerge.i.i810 = sub i32 %sub4.i37.pn.i809, %455
  store i32 %storemerge.i.i810, i32* %i_left.i1811, align 4, !tbaa !8
  %add8.i811 = add nuw nsw i32 %455, 1
  %cmp.i22.i812 = icmp sgt i32 %storemerge.i.i810, %add8.i811
  br i1 %cmp.i22.i812, label %if.then.i26.i817, label %if.else.i34.i826

if.then.i26.i817:                                 ; preds = %bs_write.exit.i813
  %shl.i24.i814 = shl i32 %459, %add8.i811
  %or.i.i815 = or i32 %shl.i24.i814, %453
  store i32 %or.i.i815, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub.i25.i816 = sub nsw i32 %storemerge.i.i810, %add8.i811
  br label %bs_write_ue_big.exit828

if.else.i34.i826:                                 ; preds = %bs_write.exit.i813
  %sub4.i27.i818 = sub nsw i32 %add8.i811, %storemerge.i.i810
  %shl7.i29.i819 = shl i32 %459, %storemerge.i.i810
  %shr.i.i820 = lshr i32 %453, %sub4.i27.i818
  %or8.i.i821 = or i32 %shr.i.i820, %shl7.i29.i819
  %add5.i.i.i30.i822 = tail call i32 @llvm.bswap.i32(i32 %or8.i.i821) #9
  %460 = bitcast i8** %p.i to i32**
  %461 = load i32*, i32** %460, align 4, !tbaa !2
  store i32 %add5.i.i.i30.i822, i32* %461, align 4, !tbaa !9
  %462 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i32.i824 = getelementptr inbounds i8, i8* %462, i32 4
  store i8* %add.ptr.i32.i824, i8** %p.i, align 4, !tbaa !2
  store i32 %453, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub13.i33.i825 = sub nsw i32 32, %sub4.i27.i818
  br label %bs_write_ue_big.exit828

bs_write_ue_big.exit828:                          ; preds = %if.then.i26.i817, %if.else.i34.i826
  %463 = phi i32 [ %453, %if.else.i34.i826 ], [ %or.i.i815, %if.then.i26.i817 ]
  %storemerge.i35.i827 = phi i32 [ %sub13.i33.i825, %if.else.i34.i826 ], [ %sub.i25.i816, %if.then.i26.i817 ]
  store i32 %storemerge.i35.i827, i32* %i_left.i1811, align 4, !tbaa !8
  %i_cpb_size_value = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 21, i32 4
  %464 = load i32, i32* %i_cpb_size_value, align 4, !tbaa !126
  %cmp.i743 = icmp sgt i32 %464, 65535
  %shr.i744 = ashr i32 %464, 16
  %spec.select.i745 = select i1 %cmp.i743, i32 32, i32 0
  %spec.select20.i746 = select i1 %cmp.i743, i32 %shr.i744, i32 %464
  %cmp1.i747 = icmp sgt i32 %spec.select20.i746, 255
  %add.i748 = or i32 %spec.select.i745, 16
  %shr3.i749 = ashr i32 %spec.select20.i746, 8
  %size.1.i750 = select i1 %cmp1.i747, i32 %add.i748, i32 %spec.select.i745
  %tmp.1.i751 = select i1 %cmp1.i747, i32 %shr3.i749, i32 %spec.select20.i746
  %arrayidx.i752 = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %tmp.1.i751
  %465 = load i8, i8* %arrayidx.i752, align 1, !tbaa !9
  %conv.i753 = zext i8 %465 to i32
  %add5.i754 = add nuw nsw i32 %size.1.i750, %conv.i753
  %466 = lshr i32 %add5.i754, 1
  %cmp.i.i756 = icmp sgt i32 %storemerge.i35.i827, %466
  br i1 %cmp.i.i756, label %if.then.i.i759, label %if.else.i.i765

if.then.i.i759:                                   ; preds = %bs_write_ue_big.exit828
  %shl.i.i758 = shl i32 %463, %466
  store i32 %shl.i.i758, i32* %cur_bits.i1840, align 4, !tbaa !10
  br label %bs_write.exit.i770

if.else.i.i765:                                   ; preds = %bs_write_ue_big.exit828
  %shl7.i.i760 = shl i32 %463, %storemerge.i35.i827
  %add5.i.i.i.i761 = tail call i32 @llvm.bswap.i32(i32 %shl7.i.i760) #9
  %467 = bitcast i8** %p.i to i32**
  %468 = load i32*, i32** %467, align 4, !tbaa !2
  store i32 %add5.i.i.i.i761, i32* %468, align 4, !tbaa !9
  %469 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i.i763 = getelementptr inbounds i8, i8* %469, i32 4
  store i8* %add.ptr.i.i763, i8** %p.i, align 4, !tbaa !2
  store i32 0, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub4.i37.i764 = add i32 %storemerge.i35.i827, 32
  br label %bs_write.exit.i770

bs_write.exit.i770:                               ; preds = %if.else.i.i765, %if.then.i.i759
  %470 = phi i32 [ 0, %if.else.i.i765 ], [ %shl.i.i758, %if.then.i.i759 ]
  %sub4.i37.pn.i766 = phi i32 [ %sub4.i37.i764, %if.else.i.i765 ], [ %storemerge.i35.i827, %if.then.i.i759 ]
  %storemerge.i.i767 = sub i32 %sub4.i37.pn.i766, %466
  store i32 %storemerge.i.i767, i32* %i_left.i1811, align 4, !tbaa !8
  %add8.i768 = add nuw nsw i32 %466, 1
  %cmp.i22.i769 = icmp sgt i32 %storemerge.i.i767, %add8.i768
  br i1 %cmp.i22.i769, label %if.then.i26.i774, label %if.else.i34.i783

if.then.i26.i774:                                 ; preds = %bs_write.exit.i770
  %shl.i24.i771 = shl i32 %470, %add8.i768
  %or.i.i772 = or i32 %shl.i24.i771, %464
  store i32 %or.i.i772, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub.i25.i773 = sub nsw i32 %storemerge.i.i767, %add8.i768
  br label %bs_write_ue_big.exit785

if.else.i34.i783:                                 ; preds = %bs_write.exit.i770
  %sub4.i27.i775 = sub nsw i32 %add8.i768, %storemerge.i.i767
  %shl7.i29.i776 = shl i32 %470, %storemerge.i.i767
  %shr.i.i777 = lshr i32 %464, %sub4.i27.i775
  %or8.i.i778 = or i32 %shr.i.i777, %shl7.i29.i776
  %add5.i.i.i30.i779 = tail call i32 @llvm.bswap.i32(i32 %or8.i.i778) #9
  %471 = bitcast i8** %p.i to i32**
  %472 = load i32*, i32** %471, align 4, !tbaa !2
  store i32 %add5.i.i.i30.i779, i32* %472, align 4, !tbaa !9
  %473 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i32.i781 = getelementptr inbounds i8, i8* %473, i32 4
  store i8* %add.ptr.i32.i781, i8** %p.i, align 4, !tbaa !2
  store i32 %464, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub13.i33.i782 = sub nsw i32 32, %sub4.i27.i775
  br label %bs_write_ue_big.exit785

bs_write_ue_big.exit785:                          ; preds = %if.then.i26.i774, %if.else.i34.i783
  %474 = phi i32 [ %464, %if.else.i34.i783 ], [ %or.i.i772, %if.then.i26.i774 ]
  %storemerge.i35.i784 = phi i32 [ %sub13.i33.i782, %if.else.i34.i783 ], [ %sub.i25.i773, %if.then.i26.i774 ]
  %b_cbr_hrd = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 21, i32 7
  %475 = load i32, i32* %b_cbr_hrd, align 4, !tbaa !127
  %shl.i733 = shl i32 %474, 1
  %or.i734 = or i32 %shl.i733, %475
  store i32 %or.i734, i32* %cur_bits.i1840, align 4, !tbaa !10
  %dec.i736 = add nsw i32 %storemerge.i35.i784, -1
  store i32 %dec.i736, i32* %i_left.i1811, align 4, !tbaa !8
  %cmp.i737 = icmp eq i32 %dec.i736, 0
  br i1 %cmp.i737, label %bs_write1.exit742.thread, label %bs_write1.exit742

bs_write1.exit742.thread:                         ; preds = %bs_write_ue_big.exit785
  %add5.i.i738 = tail call i32 @llvm.bswap.i32(i32 %or.i734) #9
  %476 = bitcast i8** %p.i to i32**
  %477 = load i32*, i32** %476, align 4, !tbaa !2
  store i32 %add5.i.i738, i32* %477, align 4, !tbaa !9
  %478 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i740 = getelementptr inbounds i8, i8* %478, i32 4
  store i8* %add.ptr.i740, i8** %p.i, align 4, !tbaa !2
  store i32 32, i32* %i_left.i1811, align 4, !tbaa !8
  %i_initial_cpb_removal_delay_length2143 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 21, i32 8
  %479 = load i32, i32* %i_initial_cpb_removal_delay_length2143, align 4, !tbaa !128
  %sub1462144 = add nsw i32 %479, -1
  %.pre2175 = load i32, i32* %cur_bits.i1840, align 4, !tbaa !10
  br label %if.then.i719

bs_write1.exit742:                                ; preds = %bs_write_ue_big.exit785
  %i_initial_cpb_removal_delay_length = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 21, i32 8
  %480 = load i32, i32* %i_initial_cpb_removal_delay_length, align 4, !tbaa !128
  %sub146 = add nsw i32 %480, -1
  %cmp.i714 = icmp sgt i32 %storemerge.i35.i784, 6
  br i1 %cmp.i714, label %if.then.i719, label %if.else.i729

if.then.i719:                                     ; preds = %bs_write1.exit742.thread, %bs_write1.exit742
  %481 = phi i32 [ %.pre2175, %bs_write1.exit742.thread ], [ %or.i734, %bs_write1.exit742 ]
  %sub1462146 = phi i32 [ %sub1462144, %bs_write1.exit742.thread ], [ %sub146, %bs_write1.exit742 ]
  %482 = phi i32 [ 32, %bs_write1.exit742.thread ], [ %dec.i736, %bs_write1.exit742 ]
  %shl.i716 = shl i32 %481, 5
  %or.i717 = or i32 %shl.i716, %sub1462146
  store i32 %or.i717, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub.i718 = add nsw i32 %482, -5
  br label %bs_write.exit731

if.else.i729:                                     ; preds = %bs_write1.exit742
  %sub4.i720 = sub i32 6, %storemerge.i35.i784
  %shl7.i722 = shl i32 %or.i734, %dec.i736
  %shr.i723 = lshr i32 %sub146, %sub4.i720
  %or8.i724 = or i32 %shl7.i722, %shr.i723
  %add5.i.i.i725 = tail call i32 @llvm.bswap.i32(i32 %or8.i724) #9
  %483 = bitcast i8** %p.i to i32**
  %484 = load i32*, i32** %483, align 4, !tbaa !2
  store i32 %add5.i.i.i725, i32* %484, align 4, !tbaa !9
  %485 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i727 = getelementptr inbounds i8, i8* %485, i32 4
  store i8* %add.ptr.i727, i8** %p.i, align 4, !tbaa !2
  store i32 %sub146, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub13.i728 = add nsw i32 %storemerge.i35.i784, 26
  br label %bs_write.exit731

bs_write.exit731:                                 ; preds = %if.then.i719, %if.else.i729
  %486 = phi i32 [ %sub146, %if.else.i729 ], [ %or.i717, %if.then.i719 ]
  %storemerge.i730 = phi i32 [ %sub13.i728, %if.else.i729 ], [ %sub.i718, %if.then.i719 ]
  store i32 %storemerge.i730, i32* %i_left.i1811, align 4, !tbaa !8
  %i_cpb_removal_delay_length = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 21, i32 9
  %487 = load i32, i32* %i_cpb_removal_delay_length, align 4, !tbaa !129
  %sub149 = add nsw i32 %487, -1
  %cmp.i695 = icmp sgt i32 %storemerge.i730, 5
  br i1 %cmp.i695, label %if.then.i700, label %if.else.i710

if.then.i700:                                     ; preds = %bs_write.exit731
  %shl.i697 = shl i32 %486, 5
  %or.i698 = or i32 %shl.i697, %sub149
  br label %bs_write.exit712

if.else.i710:                                     ; preds = %bs_write.exit731
  %sub4.i701 = sub nsw i32 5, %storemerge.i730
  %shl7.i703 = shl i32 %486, %storemerge.i730
  %shr.i704 = lshr i32 %sub149, %sub4.i701
  %or8.i705 = or i32 %shl7.i703, %shr.i704
  %add5.i.i.i706 = tail call i32 @llvm.bswap.i32(i32 %or8.i705) #9
  %488 = bitcast i8** %p.i to i32**
  %489 = load i32*, i32** %488, align 4, !tbaa !2
  store i32 %add5.i.i.i706, i32* %489, align 4, !tbaa !9
  %490 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i708 = getelementptr inbounds i8, i8* %490, i32 4
  store i8* %add.ptr.i708, i8** %p.i, align 4, !tbaa !2
  br label %bs_write.exit712

bs_write.exit712:                                 ; preds = %if.then.i700, %if.else.i710
  %or.i698.sink = phi i32 [ %or.i698, %if.then.i700 ], [ %sub149, %if.else.i710 ]
  %.sink2254 = phi i32 [ -5, %if.then.i700 ], [ 27, %if.else.i710 ]
  store i32 %or.i698.sink, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub.i699 = add nsw i32 %storemerge.i730, %.sink2254
  store i32 %sub.i699, i32* %i_left.i1811, align 4, !tbaa !8
  %i_dpb_output_delay_length = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 21, i32 10
  %491 = load i32, i32* %i_dpb_output_delay_length, align 4, !tbaa !130
  %sub152 = add nsw i32 %491, -1
  %cmp.i676 = icmp sgt i32 %sub.i699, 5
  br i1 %cmp.i676, label %if.then.i681, label %if.else.i691

if.then.i681:                                     ; preds = %bs_write.exit712
  %shl.i678 = shl i32 %or.i698.sink, 5
  %or.i679 = or i32 %shl.i678, %sub152
  br label %bs_write.exit693

if.else.i691:                                     ; preds = %bs_write.exit712
  %sub4.i682 = sub nsw i32 5, %sub.i699
  %shl7.i684 = shl i32 %or.i698.sink, %sub.i699
  %shr.i685 = lshr i32 %sub152, %sub4.i682
  %or8.i686 = or i32 %shl7.i684, %shr.i685
  %add5.i.i.i687 = tail call i32 @llvm.bswap.i32(i32 %or8.i686) #9
  %492 = bitcast i8** %p.i to i32**
  %493 = load i32*, i32** %492, align 4, !tbaa !2
  store i32 %add5.i.i.i687, i32* %493, align 4, !tbaa !9
  %494 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i689 = getelementptr inbounds i8, i8* %494, i32 4
  store i8* %add.ptr.i689, i8** %p.i, align 4, !tbaa !2
  br label %bs_write.exit693

bs_write.exit693:                                 ; preds = %if.then.i681, %if.else.i691
  %or.i679.sink = phi i32 [ %or.i679, %if.then.i681 ], [ %sub152, %if.else.i691 ]
  %.sink2255 = phi i32 [ -5, %if.then.i681 ], [ 27, %if.else.i691 ]
  store i32 %or.i679.sink, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub.i680 = add nsw i32 %sub.i699, %.sink2255
  store i32 %sub.i680, i32* %i_left.i1811, align 4, !tbaa !8
  %i_time_offset_length = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 21, i32 11
  %495 = load i32, i32* %i_time_offset_length, align 4, !tbaa !131
  %cmp.i665 = icmp sgt i32 %sub.i680, 5
  br i1 %cmp.i665, label %if.then.i670, label %if.else.i

if.then.i670:                                     ; preds = %bs_write.exit693
  %shl.i667 = shl i32 %or.i679.sink, 5
  %or.i668 = or i32 %shl.i667, %495
  br label %bs_write.exit

if.else.i:                                        ; preds = %bs_write.exit693
  %sub4.i = sub nsw i32 5, %sub.i680
  %shl7.i = shl i32 %or.i679.sink, %sub.i680
  %shr.i671 = lshr i32 %495, %sub4.i
  %or8.i = or i32 %shl7.i, %shr.i671
  %add5.i.i.i672 = tail call i32 @llvm.bswap.i32(i32 %or8.i) #9
  %496 = bitcast i8** %p.i to i32**
  %497 = load i32*, i32** %496, align 4, !tbaa !2
  store i32 %add5.i.i.i672, i32* %497, align 4, !tbaa !9
  %498 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i674 = getelementptr inbounds i8, i8* %498, i32 4
  store i8* %add.ptr.i674, i8** %p.i, align 4, !tbaa !2
  br label %bs_write.exit

bs_write.exit:                                    ; preds = %if.then.i670, %if.else.i
  %or.i668.sink = phi i32 [ %or.i668, %if.then.i670 ], [ %495, %if.else.i ]
  %.sink2256 = phi i32 [ -5, %if.then.i670 ], [ 27, %if.else.i ]
  store i32 %or.i668.sink, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub.i669 = add nsw i32 %sub.i680, %.sink2256
  store i32 %sub.i669, i32* %i_left.i1811, align 4, !tbaa !8
  br label %if.end155

if.end155:                                        ; preds = %bs_write1.exit920.if.end155_crit_edge, %bs_write.exit
  %499 = phi i32 [ %431, %bs_write1.exit920.if.end155_crit_edge ], [ %sub.i669, %bs_write.exit ]
  %500 = phi i32 [ %.pre2176, %bs_write1.exit920.if.end155_crit_edge ], [ %or.i668.sink, %bs_write.exit ]
  %b_vcl_hrd_parameters_present = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 20
  %501 = load i32, i32* %b_vcl_hrd_parameters_present, align 4, !tbaa !104
  %shl.i654 = shl i32 %500, 1
  %or.i655 = or i32 %shl.i654, %501
  store i32 %or.i655, i32* %cur_bits.i1840, align 4, !tbaa !10
  %dec.i657 = add nsw i32 %499, -1
  store i32 %dec.i657, i32* %i_left.i1811, align 4, !tbaa !8
  %cmp.i658 = icmp eq i32 %dec.i657, 0
  br i1 %cmp.i658, label %if.then.i662, label %bs_write1.exit663

if.then.i662:                                     ; preds = %if.end155
  %add5.i.i659 = tail call i32 @llvm.bswap.i32(i32 %or.i655) #9
  %502 = bitcast i8** %p.i to i32**
  %503 = load i32*, i32** %502, align 4, !tbaa !2
  store i32 %add5.i.i659, i32* %503, align 4, !tbaa !9
  %504 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i661 = getelementptr inbounds i8, i8* %504, i32 4
  store i8* %add.ptr.i661, i8** %p.i, align 4, !tbaa !2
  store i32 32, i32* %i_left.i1811, align 4, !tbaa !8
  br label %bs_write1.exit663

bs_write1.exit663:                                ; preds = %if.end155, %if.then.i662
  %505 = phi i32 [ %dec.i657, %if.end155 ], [ 32, %if.then.i662 ]
  %506 = load i32, i32* %b_nal_hrd_parameters_present, align 4, !tbaa !106
  %tobool159 = icmp eq i32 %506, 0
  br i1 %tobool159, label %lor.lhs.false, label %if.then163

lor.lhs.false:                                    ; preds = %bs_write1.exit663
  %507 = load i32, i32* %b_vcl_hrd_parameters_present, align 4, !tbaa !104
  %tobool162 = icmp eq i32 %507, 0
  br i1 %tobool162, label %if.end164, label %if.then163

if.then163:                                       ; preds = %lor.lhs.false, %bs_write1.exit663
  %508 = load i32, i32* %cur_bits.i1840, align 4, !tbaa !10
  %shl.i644 = shl i32 %508, 1
  store i32 %shl.i644, i32* %cur_bits.i1840, align 4, !tbaa !10
  %dec.i646 = add nsw i32 %505, -1
  store i32 %dec.i646, i32* %i_left.i1811, align 4, !tbaa !8
  %cmp.i647 = icmp eq i32 %dec.i646, 0
  br i1 %cmp.i647, label %if.then.i651, label %if.end164

if.then.i651:                                     ; preds = %if.then163
  %add5.i.i648 = tail call i32 @llvm.bswap.i32(i32 %shl.i644) #9
  %509 = bitcast i8** %p.i to i32**
  %510 = load i32*, i32** %509, align 4, !tbaa !2
  store i32 %add5.i.i648, i32* %510, align 4, !tbaa !9
  %511 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i650 = getelementptr inbounds i8, i8* %511, i32 4
  store i8* %add.ptr.i650, i8** %p.i, align 4, !tbaa !2
  store i32 32, i32* %i_left.i1811, align 4, !tbaa !8
  br label %if.end164

if.end164:                                        ; preds = %if.then.i651, %if.then163, %lor.lhs.false
  %512 = phi i32 [ 32, %if.then.i651 ], [ %dec.i646, %if.then163 ], [ %505, %lor.lhs.false ]
  %b_pic_struct_present = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 22
  %513 = load i32, i32* %b_pic_struct_present, align 4, !tbaa !108
  %514 = load i32, i32* %cur_bits.i1840, align 4, !tbaa !10
  %shl.i633 = shl i32 %514, 1
  %or.i634 = or i32 %shl.i633, %513
  store i32 %or.i634, i32* %cur_bits.i1840, align 4, !tbaa !10
  %dec.i636 = add nsw i32 %512, -1
  store i32 %dec.i636, i32* %i_left.i1811, align 4, !tbaa !8
  %cmp.i637 = icmp eq i32 %dec.i636, 0
  br i1 %cmp.i637, label %if.then.i641, label %bs_write1.exit642

if.then.i641:                                     ; preds = %if.end164
  %add5.i.i638 = tail call i32 @llvm.bswap.i32(i32 %or.i634) #9
  %515 = bitcast i8** %p.i to i32**
  %516 = load i32*, i32** %515, align 4, !tbaa !2
  store i32 %add5.i.i638, i32* %516, align 4, !tbaa !9
  %517 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i640 = getelementptr inbounds i8, i8* %517, i32 4
  store i8* %add.ptr.i640, i8** %p.i, align 4, !tbaa !2
  store i32 32, i32* %i_left.i1811, align 4, !tbaa !8
  %.pre2177 = load i32, i32* %cur_bits.i1840, align 4, !tbaa !10
  br label %bs_write1.exit642

bs_write1.exit642:                                ; preds = %if.end164, %if.then.i641
  %518 = phi i32 [ %dec.i636, %if.end164 ], [ 32, %if.then.i641 ]
  %519 = phi i32 [ %or.i634, %if.end164 ], [ %.pre2177, %if.then.i641 ]
  %b_bitstream_restriction = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 23
  %520 = load i32, i32* %b_bitstream_restriction, align 4, !tbaa !109
  %shl.i622 = shl i32 %519, 1
  %or.i623 = or i32 %shl.i622, %520
  store i32 %or.i623, i32* %cur_bits.i1840, align 4, !tbaa !10
  %dec.i625 = add nsw i32 %518, -1
  store i32 %dec.i625, i32* %i_left.i1811, align 4, !tbaa !8
  %cmp.i626 = icmp eq i32 %dec.i625, 0
  br i1 %cmp.i626, label %if.then.i630, label %bs_write1.exit631

if.then.i630:                                     ; preds = %bs_write1.exit642
  %add5.i.i627 = tail call i32 @llvm.bswap.i32(i32 %or.i623) #9
  %521 = bitcast i8** %p.i to i32**
  %522 = load i32*, i32** %521, align 4, !tbaa !2
  store i32 %add5.i.i627, i32* %522, align 4, !tbaa !9
  %523 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i629 = getelementptr inbounds i8, i8* %523, i32 4
  store i8* %add.ptr.i629, i8** %p.i, align 4, !tbaa !2
  store i32 32, i32* %i_left.i1811, align 4, !tbaa !8
  %.pre2178 = load i32, i32* %b_bitstream_restriction, align 4, !tbaa !109
  br label %bs_write1.exit631

bs_write1.exit631:                                ; preds = %bs_write1.exit642, %if.then.i630
  %524 = phi i32 [ %dec.i625, %bs_write1.exit642 ], [ 32, %if.then.i630 ]
  %525 = phi i32 [ %520, %bs_write1.exit642 ], [ %.pre2178, %if.then.i630 ]
  %tobool169 = icmp eq i32 %525, 0
  br i1 %tobool169, label %if.end179thread-pre-split, label %if.then170

if.then170:                                       ; preds = %bs_write1.exit631
  %b_motion_vectors_over_pic_boundaries = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 24
  %526 = load i32, i32* %b_motion_vectors_over_pic_boundaries, align 4, !tbaa !110
  %527 = load i32, i32* %cur_bits.i1840, align 4, !tbaa !10
  %shl.i614 = shl i32 %527, 1
  %or.i = or i32 %shl.i614, %526
  store i32 %or.i, i32* %cur_bits.i1840, align 4, !tbaa !10
  %dec.i = add nsw i32 %524, -1
  store i32 %dec.i, i32* %i_left.i1811, align 4, !tbaa !8
  %cmp.i616 = icmp eq i32 %dec.i, 0
  br i1 %cmp.i616, label %if.then.i620, label %bs_write1.exit

if.then.i620:                                     ; preds = %if.then170
  %add5.i.i617 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %528 = bitcast i8** %p.i to i32**
  %529 = load i32*, i32** %528, align 4, !tbaa !2
  store i32 %add5.i.i617, i32* %529, align 4, !tbaa !9
  %530 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i619 = getelementptr inbounds i8, i8* %530, i32 4
  store i8* %add.ptr.i619, i8** %p.i, align 4, !tbaa !2
  store i32 32, i32* %i_left.i1811, align 4, !tbaa !8
  %.pre2179 = load i32, i32* %cur_bits.i1840, align 4, !tbaa !10
  br label %bs_write1.exit

bs_write1.exit:                                   ; preds = %if.then170, %if.then.i620
  %531 = phi i32 [ %or.i, %if.then170 ], [ %.pre2179, %if.then.i620 ]
  %532 = phi i32 [ %dec.i, %if.then170 ], [ 32, %if.then.i620 ]
  %i_max_bytes_per_pic_denom = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 25
  %533 = load i32, i32* %i_max_bytes_per_pic_denom, align 4, !tbaa !111
  %inc.i569 = add i32 %533, 1
  %cmp.i570 = icmp sgt i32 %inc.i569, 65535
  %shr.i571 = ashr i32 %inc.i569, 16
  %spec.select.i572 = select i1 %cmp.i570, i32 32, i32 0
  %spec.select20.i573 = select i1 %cmp.i570, i32 %shr.i571, i32 %inc.i569
  %cmp1.i574 = icmp sgt i32 %spec.select20.i573, 255
  %add.i575 = or i32 %spec.select.i572, 16
  %shr3.i576 = ashr i32 %spec.select20.i573, 8
  %size.1.i577 = select i1 %cmp1.i574, i32 %add.i575, i32 %spec.select.i572
  %tmp.1.i578 = select i1 %cmp1.i574, i32 %shr3.i576, i32 %spec.select20.i573
  %arrayidx.i579 = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %tmp.1.i578
  %534 = load i8, i8* %arrayidx.i579, align 1, !tbaa !9
  %conv.i580 = zext i8 %534 to i32
  %add5.i581 = add nuw nsw i32 %size.1.i577, %conv.i580
  %535 = lshr i32 %add5.i581, 1
  %cmp.i.i583 = icmp sgt i32 %532, %535
  br i1 %cmp.i.i583, label %if.then.i.i586, label %if.else.i.i592

if.then.i.i586:                                   ; preds = %bs_write1.exit
  %shl.i.i585 = shl i32 %531, %535
  store i32 %shl.i.i585, i32* %cur_bits.i1840, align 4, !tbaa !10
  br label %bs_write.exit.i597

if.else.i.i592:                                   ; preds = %bs_write1.exit
  %shl7.i.i587 = shl i32 %531, %532
  %add5.i.i.i.i588 = tail call i32 @llvm.bswap.i32(i32 %shl7.i.i587) #9
  %536 = bitcast i8** %p.i to i32**
  %537 = load i32*, i32** %536, align 4, !tbaa !2
  store i32 %add5.i.i.i.i588, i32* %537, align 4, !tbaa !9
  %538 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i.i590 = getelementptr inbounds i8, i8* %538, i32 4
  store i8* %add.ptr.i.i590, i8** %p.i, align 4, !tbaa !2
  store i32 0, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub4.i37.i591 = add i32 %532, 32
  br label %bs_write.exit.i597

bs_write.exit.i597:                               ; preds = %if.else.i.i592, %if.then.i.i586
  %539 = phi i32 [ 0, %if.else.i.i592 ], [ %shl.i.i585, %if.then.i.i586 ]
  %sub4.i37.pn.i593 = phi i32 [ %sub4.i37.i591, %if.else.i.i592 ], [ %532, %if.then.i.i586 ]
  %storemerge.i.i594 = sub i32 %sub4.i37.pn.i593, %535
  store i32 %storemerge.i.i594, i32* %i_left.i1811, align 4, !tbaa !8
  %add8.i595 = add nuw nsw i32 %535, 1
  %cmp.i22.i596 = icmp sgt i32 %storemerge.i.i594, %add8.i595
  br i1 %cmp.i22.i596, label %if.then.i26.i601, label %if.else.i34.i610

if.then.i26.i601:                                 ; preds = %bs_write.exit.i597
  %shl.i24.i598 = shl i32 %539, %add8.i595
  %or.i.i599 = or i32 %shl.i24.i598, %inc.i569
  store i32 %or.i.i599, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub.i25.i600 = sub nsw i32 %storemerge.i.i594, %add8.i595
  br label %bs_write_ue_big.exit612

if.else.i34.i610:                                 ; preds = %bs_write.exit.i597
  %sub4.i27.i602 = sub nsw i32 %add8.i595, %storemerge.i.i594
  %shl7.i29.i603 = shl i32 %539, %storemerge.i.i594
  %shr.i.i604 = lshr i32 %inc.i569, %sub4.i27.i602
  %or8.i.i605 = or i32 %shr.i.i604, %shl7.i29.i603
  %add5.i.i.i30.i606 = tail call i32 @llvm.bswap.i32(i32 %or8.i.i605) #9
  %540 = bitcast i8** %p.i to i32**
  %541 = load i32*, i32** %540, align 4, !tbaa !2
  store i32 %add5.i.i.i30.i606, i32* %541, align 4, !tbaa !9
  %542 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i32.i608 = getelementptr inbounds i8, i8* %542, i32 4
  store i8* %add.ptr.i32.i608, i8** %p.i, align 4, !tbaa !2
  store i32 %inc.i569, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub13.i33.i609 = sub nsw i32 32, %sub4.i27.i602
  br label %bs_write_ue_big.exit612

bs_write_ue_big.exit612:                          ; preds = %if.then.i26.i601, %if.else.i34.i610
  %543 = phi i32 [ %inc.i569, %if.else.i34.i610 ], [ %or.i.i599, %if.then.i26.i601 ]
  %storemerge.i35.i611 = phi i32 [ %sub13.i33.i609, %if.else.i34.i610 ], [ %sub.i25.i600, %if.then.i26.i601 ]
  store i32 %storemerge.i35.i611, i32* %i_left.i1811, align 4, !tbaa !8
  %i_max_bits_per_mb_denom = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 26
  %544 = load i32, i32* %i_max_bits_per_mb_denom, align 4, !tbaa !112
  %inc.i525 = add i32 %544, 1
  %cmp.i526 = icmp sgt i32 %inc.i525, 65535
  %shr.i527 = ashr i32 %inc.i525, 16
  %spec.select.i528 = select i1 %cmp.i526, i32 32, i32 0
  %spec.select20.i529 = select i1 %cmp.i526, i32 %shr.i527, i32 %inc.i525
  %cmp1.i530 = icmp sgt i32 %spec.select20.i529, 255
  %add.i531 = or i32 %spec.select.i528, 16
  %shr3.i532 = ashr i32 %spec.select20.i529, 8
  %size.1.i533 = select i1 %cmp1.i530, i32 %add.i531, i32 %spec.select.i528
  %tmp.1.i534 = select i1 %cmp1.i530, i32 %shr3.i532, i32 %spec.select20.i529
  %arrayidx.i535 = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %tmp.1.i534
  %545 = load i8, i8* %arrayidx.i535, align 1, !tbaa !9
  %conv.i536 = zext i8 %545 to i32
  %add5.i537 = add nuw nsw i32 %size.1.i533, %conv.i536
  %546 = lshr i32 %add5.i537, 1
  %cmp.i.i539 = icmp sgt i32 %storemerge.i35.i611, %546
  br i1 %cmp.i.i539, label %if.then.i.i542, label %if.else.i.i548

if.then.i.i542:                                   ; preds = %bs_write_ue_big.exit612
  %shl.i.i541 = shl i32 %543, %546
  store i32 %shl.i.i541, i32* %cur_bits.i1840, align 4, !tbaa !10
  br label %bs_write.exit.i553

if.else.i.i548:                                   ; preds = %bs_write_ue_big.exit612
  %shl7.i.i543 = shl i32 %543, %storemerge.i35.i611
  %add5.i.i.i.i544 = tail call i32 @llvm.bswap.i32(i32 %shl7.i.i543) #9
  %547 = bitcast i8** %p.i to i32**
  %548 = load i32*, i32** %547, align 4, !tbaa !2
  store i32 %add5.i.i.i.i544, i32* %548, align 4, !tbaa !9
  %549 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i.i546 = getelementptr inbounds i8, i8* %549, i32 4
  store i8* %add.ptr.i.i546, i8** %p.i, align 4, !tbaa !2
  store i32 0, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub4.i37.i547 = add i32 %storemerge.i35.i611, 32
  br label %bs_write.exit.i553

bs_write.exit.i553:                               ; preds = %if.else.i.i548, %if.then.i.i542
  %550 = phi i32 [ 0, %if.else.i.i548 ], [ %shl.i.i541, %if.then.i.i542 ]
  %sub4.i37.pn.i549 = phi i32 [ %sub4.i37.i547, %if.else.i.i548 ], [ %storemerge.i35.i611, %if.then.i.i542 ]
  %storemerge.i.i550 = sub i32 %sub4.i37.pn.i549, %546
  store i32 %storemerge.i.i550, i32* %i_left.i1811, align 4, !tbaa !8
  %add8.i551 = add nuw nsw i32 %546, 1
  %cmp.i22.i552 = icmp sgt i32 %storemerge.i.i550, %add8.i551
  br i1 %cmp.i22.i552, label %if.then.i26.i557, label %if.else.i34.i566

if.then.i26.i557:                                 ; preds = %bs_write.exit.i553
  %shl.i24.i554 = shl i32 %550, %add8.i551
  %or.i.i555 = or i32 %shl.i24.i554, %inc.i525
  store i32 %or.i.i555, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub.i25.i556 = sub nsw i32 %storemerge.i.i550, %add8.i551
  br label %bs_write_ue_big.exit568

if.else.i34.i566:                                 ; preds = %bs_write.exit.i553
  %sub4.i27.i558 = sub nsw i32 %add8.i551, %storemerge.i.i550
  %shl7.i29.i559 = shl i32 %550, %storemerge.i.i550
  %shr.i.i560 = lshr i32 %inc.i525, %sub4.i27.i558
  %or8.i.i561 = or i32 %shr.i.i560, %shl7.i29.i559
  %add5.i.i.i30.i562 = tail call i32 @llvm.bswap.i32(i32 %or8.i.i561) #9
  %551 = bitcast i8** %p.i to i32**
  %552 = load i32*, i32** %551, align 4, !tbaa !2
  store i32 %add5.i.i.i30.i562, i32* %552, align 4, !tbaa !9
  %553 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i32.i564 = getelementptr inbounds i8, i8* %553, i32 4
  store i8* %add.ptr.i32.i564, i8** %p.i, align 4, !tbaa !2
  store i32 %inc.i525, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub13.i33.i565 = sub nsw i32 32, %sub4.i27.i558
  br label %bs_write_ue_big.exit568

bs_write_ue_big.exit568:                          ; preds = %if.then.i26.i557, %if.else.i34.i566
  %554 = phi i32 [ %inc.i525, %if.else.i34.i566 ], [ %or.i.i555, %if.then.i26.i557 ]
  %storemerge.i35.i567 = phi i32 [ %sub13.i33.i565, %if.else.i34.i566 ], [ %sub.i25.i556, %if.then.i26.i557 ]
  store i32 %storemerge.i35.i567, i32* %i_left.i1811, align 4, !tbaa !8
  %i_log2_max_mv_length_horizontal = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 27
  %555 = load i32, i32* %i_log2_max_mv_length_horizontal, align 4, !tbaa !115
  %inc.i481 = add i32 %555, 1
  %cmp.i482 = icmp sgt i32 %inc.i481, 65535
  %shr.i483 = ashr i32 %inc.i481, 16
  %spec.select.i484 = select i1 %cmp.i482, i32 32, i32 0
  %spec.select20.i485 = select i1 %cmp.i482, i32 %shr.i483, i32 %inc.i481
  %cmp1.i486 = icmp sgt i32 %spec.select20.i485, 255
  %add.i487 = or i32 %spec.select.i484, 16
  %shr3.i488 = ashr i32 %spec.select20.i485, 8
  %size.1.i489 = select i1 %cmp1.i486, i32 %add.i487, i32 %spec.select.i484
  %tmp.1.i490 = select i1 %cmp1.i486, i32 %shr3.i488, i32 %spec.select20.i485
  %arrayidx.i491 = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %tmp.1.i490
  %556 = load i8, i8* %arrayidx.i491, align 1, !tbaa !9
  %conv.i492 = zext i8 %556 to i32
  %add5.i493 = add nuw nsw i32 %size.1.i489, %conv.i492
  %557 = lshr i32 %add5.i493, 1
  %cmp.i.i495 = icmp sgt i32 %storemerge.i35.i567, %557
  br i1 %cmp.i.i495, label %if.then.i.i498, label %if.else.i.i504

if.then.i.i498:                                   ; preds = %bs_write_ue_big.exit568
  %shl.i.i497 = shl i32 %554, %557
  store i32 %shl.i.i497, i32* %cur_bits.i1840, align 4, !tbaa !10
  br label %bs_write.exit.i509

if.else.i.i504:                                   ; preds = %bs_write_ue_big.exit568
  %shl7.i.i499 = shl i32 %554, %storemerge.i35.i567
  %add5.i.i.i.i500 = tail call i32 @llvm.bswap.i32(i32 %shl7.i.i499) #9
  %558 = bitcast i8** %p.i to i32**
  %559 = load i32*, i32** %558, align 4, !tbaa !2
  store i32 %add5.i.i.i.i500, i32* %559, align 4, !tbaa !9
  %560 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i.i502 = getelementptr inbounds i8, i8* %560, i32 4
  store i8* %add.ptr.i.i502, i8** %p.i, align 4, !tbaa !2
  store i32 0, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub4.i37.i503 = add i32 %storemerge.i35.i567, 32
  br label %bs_write.exit.i509

bs_write.exit.i509:                               ; preds = %if.else.i.i504, %if.then.i.i498
  %561 = phi i32 [ 0, %if.else.i.i504 ], [ %shl.i.i497, %if.then.i.i498 ]
  %sub4.i37.pn.i505 = phi i32 [ %sub4.i37.i503, %if.else.i.i504 ], [ %storemerge.i35.i567, %if.then.i.i498 ]
  %storemerge.i.i506 = sub i32 %sub4.i37.pn.i505, %557
  store i32 %storemerge.i.i506, i32* %i_left.i1811, align 4, !tbaa !8
  %add8.i507 = add nuw nsw i32 %557, 1
  %cmp.i22.i508 = icmp sgt i32 %storemerge.i.i506, %add8.i507
  br i1 %cmp.i22.i508, label %if.then.i26.i513, label %if.else.i34.i522

if.then.i26.i513:                                 ; preds = %bs_write.exit.i509
  %shl.i24.i510 = shl i32 %561, %add8.i507
  %or.i.i511 = or i32 %shl.i24.i510, %inc.i481
  store i32 %or.i.i511, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub.i25.i512 = sub nsw i32 %storemerge.i.i506, %add8.i507
  br label %bs_write_ue_big.exit524

if.else.i34.i522:                                 ; preds = %bs_write.exit.i509
  %sub4.i27.i514 = sub nsw i32 %add8.i507, %storemerge.i.i506
  %shl7.i29.i515 = shl i32 %561, %storemerge.i.i506
  %shr.i.i516 = lshr i32 %inc.i481, %sub4.i27.i514
  %or8.i.i517 = or i32 %shr.i.i516, %shl7.i29.i515
  %add5.i.i.i30.i518 = tail call i32 @llvm.bswap.i32(i32 %or8.i.i517) #9
  %562 = bitcast i8** %p.i to i32**
  %563 = load i32*, i32** %562, align 4, !tbaa !2
  store i32 %add5.i.i.i30.i518, i32* %563, align 4, !tbaa !9
  %564 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i32.i520 = getelementptr inbounds i8, i8* %564, i32 4
  store i8* %add.ptr.i32.i520, i8** %p.i, align 4, !tbaa !2
  store i32 %inc.i481, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub13.i33.i521 = sub nsw i32 32, %sub4.i27.i514
  br label %bs_write_ue_big.exit524

bs_write_ue_big.exit524:                          ; preds = %if.then.i26.i513, %if.else.i34.i522
  %565 = phi i32 [ %inc.i481, %if.else.i34.i522 ], [ %or.i.i511, %if.then.i26.i513 ]
  %storemerge.i35.i523 = phi i32 [ %sub13.i33.i521, %if.else.i34.i522 ], [ %sub.i25.i512, %if.then.i26.i513 ]
  store i32 %storemerge.i35.i523, i32* %i_left.i1811, align 4, !tbaa !8
  %i_log2_max_mv_length_vertical = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 28
  %566 = load i32, i32* %i_log2_max_mv_length_vertical, align 4, !tbaa !114
  %inc.i437 = add i32 %566, 1
  %cmp.i438 = icmp sgt i32 %inc.i437, 65535
  %shr.i439 = ashr i32 %inc.i437, 16
  %spec.select.i440 = select i1 %cmp.i438, i32 32, i32 0
  %spec.select20.i441 = select i1 %cmp.i438, i32 %shr.i439, i32 %inc.i437
  %cmp1.i442 = icmp sgt i32 %spec.select20.i441, 255
  %add.i443 = or i32 %spec.select.i440, 16
  %shr3.i444 = ashr i32 %spec.select20.i441, 8
  %size.1.i445 = select i1 %cmp1.i442, i32 %add.i443, i32 %spec.select.i440
  %tmp.1.i446 = select i1 %cmp1.i442, i32 %shr3.i444, i32 %spec.select20.i441
  %arrayidx.i447 = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %tmp.1.i446
  %567 = load i8, i8* %arrayidx.i447, align 1, !tbaa !9
  %conv.i448 = zext i8 %567 to i32
  %add5.i449 = add nuw nsw i32 %size.1.i445, %conv.i448
  %568 = lshr i32 %add5.i449, 1
  %cmp.i.i451 = icmp sgt i32 %storemerge.i35.i523, %568
  br i1 %cmp.i.i451, label %if.then.i.i454, label %if.else.i.i460

if.then.i.i454:                                   ; preds = %bs_write_ue_big.exit524
  %shl.i.i453 = shl i32 %565, %568
  store i32 %shl.i.i453, i32* %cur_bits.i1840, align 4, !tbaa !10
  br label %bs_write.exit.i465

if.else.i.i460:                                   ; preds = %bs_write_ue_big.exit524
  %shl7.i.i455 = shl i32 %565, %storemerge.i35.i523
  %add5.i.i.i.i456 = tail call i32 @llvm.bswap.i32(i32 %shl7.i.i455) #9
  %569 = bitcast i8** %p.i to i32**
  %570 = load i32*, i32** %569, align 4, !tbaa !2
  store i32 %add5.i.i.i.i456, i32* %570, align 4, !tbaa !9
  %571 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i.i458 = getelementptr inbounds i8, i8* %571, i32 4
  store i8* %add.ptr.i.i458, i8** %p.i, align 4, !tbaa !2
  store i32 0, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub4.i37.i459 = add i32 %storemerge.i35.i523, 32
  br label %bs_write.exit.i465

bs_write.exit.i465:                               ; preds = %if.else.i.i460, %if.then.i.i454
  %572 = phi i32 [ 0, %if.else.i.i460 ], [ %shl.i.i453, %if.then.i.i454 ]
  %sub4.i37.pn.i461 = phi i32 [ %sub4.i37.i459, %if.else.i.i460 ], [ %storemerge.i35.i523, %if.then.i.i454 ]
  %storemerge.i.i462 = sub i32 %sub4.i37.pn.i461, %568
  store i32 %storemerge.i.i462, i32* %i_left.i1811, align 4, !tbaa !8
  %add8.i463 = add nuw nsw i32 %568, 1
  %cmp.i22.i464 = icmp sgt i32 %storemerge.i.i462, %add8.i463
  br i1 %cmp.i22.i464, label %if.then.i26.i469, label %if.else.i34.i478

if.then.i26.i469:                                 ; preds = %bs_write.exit.i465
  %shl.i24.i466 = shl i32 %572, %add8.i463
  %or.i.i467 = or i32 %shl.i24.i466, %inc.i437
  store i32 %or.i.i467, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub.i25.i468 = sub nsw i32 %storemerge.i.i462, %add8.i463
  br label %bs_write_ue_big.exit480

if.else.i34.i478:                                 ; preds = %bs_write.exit.i465
  %sub4.i27.i470 = sub nsw i32 %add8.i463, %storemerge.i.i462
  %shl7.i29.i471 = shl i32 %572, %storemerge.i.i462
  %shr.i.i472 = lshr i32 %inc.i437, %sub4.i27.i470
  %or8.i.i473 = or i32 %shr.i.i472, %shl7.i29.i471
  %add5.i.i.i30.i474 = tail call i32 @llvm.bswap.i32(i32 %or8.i.i473) #9
  %573 = bitcast i8** %p.i to i32**
  %574 = load i32*, i32** %573, align 4, !tbaa !2
  store i32 %add5.i.i.i30.i474, i32* %574, align 4, !tbaa !9
  %575 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i32.i476 = getelementptr inbounds i8, i8* %575, i32 4
  store i8* %add.ptr.i32.i476, i8** %p.i, align 4, !tbaa !2
  store i32 %inc.i437, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub13.i33.i477 = sub nsw i32 32, %sub4.i27.i470
  br label %bs_write_ue_big.exit480

bs_write_ue_big.exit480:                          ; preds = %if.then.i26.i469, %if.else.i34.i478
  %576 = phi i32 [ %inc.i437, %if.else.i34.i478 ], [ %or.i.i467, %if.then.i26.i469 ]
  %storemerge.i35.i479 = phi i32 [ %sub13.i33.i477, %if.else.i34.i478 ], [ %sub.i25.i468, %if.then.i26.i469 ]
  store i32 %storemerge.i35.i479, i32* %i_left.i1811, align 4, !tbaa !8
  %i_num_reorder_frames = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 29
  %577 = load i32, i32* %i_num_reorder_frames, align 4, !tbaa !50
  %inc.i393 = add i32 %577, 1
  %cmp.i394 = icmp sgt i32 %inc.i393, 65535
  %shr.i395 = ashr i32 %inc.i393, 16
  %spec.select.i396 = select i1 %cmp.i394, i32 32, i32 0
  %spec.select20.i397 = select i1 %cmp.i394, i32 %shr.i395, i32 %inc.i393
  %cmp1.i398 = icmp sgt i32 %spec.select20.i397, 255
  %add.i399 = or i32 %spec.select.i396, 16
  %shr3.i400 = ashr i32 %spec.select20.i397, 8
  %size.1.i401 = select i1 %cmp1.i398, i32 %add.i399, i32 %spec.select.i396
  %tmp.1.i402 = select i1 %cmp1.i398, i32 %shr3.i400, i32 %spec.select20.i397
  %arrayidx.i403 = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %tmp.1.i402
  %578 = load i8, i8* %arrayidx.i403, align 1, !tbaa !9
  %conv.i404 = zext i8 %578 to i32
  %add5.i405 = add nuw nsw i32 %size.1.i401, %conv.i404
  %579 = lshr i32 %add5.i405, 1
  %cmp.i.i407 = icmp sgt i32 %storemerge.i35.i479, %579
  br i1 %cmp.i.i407, label %if.then.i.i410, label %if.else.i.i416

if.then.i.i410:                                   ; preds = %bs_write_ue_big.exit480
  %shl.i.i409 = shl i32 %576, %579
  store i32 %shl.i.i409, i32* %cur_bits.i1840, align 4, !tbaa !10
  br label %bs_write.exit.i421

if.else.i.i416:                                   ; preds = %bs_write_ue_big.exit480
  %shl7.i.i411 = shl i32 %576, %storemerge.i35.i479
  %add5.i.i.i.i412 = tail call i32 @llvm.bswap.i32(i32 %shl7.i.i411) #9
  %580 = bitcast i8** %p.i to i32**
  %581 = load i32*, i32** %580, align 4, !tbaa !2
  store i32 %add5.i.i.i.i412, i32* %581, align 4, !tbaa !9
  %582 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i.i414 = getelementptr inbounds i8, i8* %582, i32 4
  store i8* %add.ptr.i.i414, i8** %p.i, align 4, !tbaa !2
  store i32 0, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub4.i37.i415 = add i32 %storemerge.i35.i479, 32
  br label %bs_write.exit.i421

bs_write.exit.i421:                               ; preds = %if.else.i.i416, %if.then.i.i410
  %583 = phi i32 [ 0, %if.else.i.i416 ], [ %shl.i.i409, %if.then.i.i410 ]
  %sub4.i37.pn.i417 = phi i32 [ %sub4.i37.i415, %if.else.i.i416 ], [ %storemerge.i35.i479, %if.then.i.i410 ]
  %storemerge.i.i418 = sub i32 %sub4.i37.pn.i417, %579
  store i32 %storemerge.i.i418, i32* %i_left.i1811, align 4, !tbaa !8
  %add8.i419 = add nuw nsw i32 %579, 1
  %cmp.i22.i420 = icmp sgt i32 %storemerge.i.i418, %add8.i419
  br i1 %cmp.i22.i420, label %if.then.i26.i425, label %if.else.i34.i434

if.then.i26.i425:                                 ; preds = %bs_write.exit.i421
  %shl.i24.i422 = shl i32 %583, %add8.i419
  %or.i.i423 = or i32 %shl.i24.i422, %inc.i393
  store i32 %or.i.i423, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub.i25.i424 = sub nsw i32 %storemerge.i.i418, %add8.i419
  br label %bs_write_ue_big.exit436

if.else.i34.i434:                                 ; preds = %bs_write.exit.i421
  %sub4.i27.i426 = sub nsw i32 %add8.i419, %storemerge.i.i418
  %shl7.i29.i427 = shl i32 %583, %storemerge.i.i418
  %shr.i.i428 = lshr i32 %inc.i393, %sub4.i27.i426
  %or8.i.i429 = or i32 %shr.i.i428, %shl7.i29.i427
  %add5.i.i.i30.i430 = tail call i32 @llvm.bswap.i32(i32 %or8.i.i429) #9
  %584 = bitcast i8** %p.i to i32**
  %585 = load i32*, i32** %584, align 4, !tbaa !2
  store i32 %add5.i.i.i30.i430, i32* %585, align 4, !tbaa !9
  %586 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i32.i432 = getelementptr inbounds i8, i8* %586, i32 4
  store i8* %add.ptr.i32.i432, i8** %p.i, align 4, !tbaa !2
  store i32 %inc.i393, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub13.i33.i433 = sub nsw i32 32, %sub4.i27.i426
  br label %bs_write_ue_big.exit436

bs_write_ue_big.exit436:                          ; preds = %if.then.i26.i425, %if.else.i34.i434
  %587 = phi i32 [ %inc.i393, %if.else.i34.i434 ], [ %or.i.i423, %if.then.i26.i425 ]
  %storemerge.i35.i435 = phi i32 [ %sub13.i33.i433, %if.else.i34.i434 ], [ %sub.i25.i424, %if.then.i26.i425 ]
  store i32 %storemerge.i35.i435, i32* %i_left.i1811, align 4, !tbaa !8
  %i_max_dec_frame_buffering = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 20, i32 30
  %588 = load i32, i32* %i_max_dec_frame_buffering, align 4, !tbaa !53
  %inc.i = add i32 %588, 1
  %cmp.i = icmp sgt i32 %inc.i, 65535
  %shr.i381 = ashr i32 %inc.i, 16
  %spec.select.i = select i1 %cmp.i, i32 32, i32 0
  %spec.select20.i = select i1 %cmp.i, i32 %shr.i381, i32 %inc.i
  %cmp1.i = icmp sgt i32 %spec.select20.i, 255
  %add.i = or i32 %spec.select.i, 16
  %shr3.i = ashr i32 %spec.select20.i, 8
  %size.1.i = select i1 %cmp1.i, i32 %add.i, i32 %spec.select.i
  %tmp.1.i = select i1 %cmp1.i, i32 %shr3.i, i32 %spec.select20.i
  %arrayidx.i = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %tmp.1.i
  %589 = load i8, i8* %arrayidx.i, align 1, !tbaa !9
  %conv.i = zext i8 %589 to i32
  %add5.i = add nuw nsw i32 %size.1.i, %conv.i
  %590 = lshr i32 %add5.i, 1
  %cmp.i.i383 = icmp sgt i32 %storemerge.i35.i435, %590
  br i1 %cmp.i.i383, label %if.then.i.i, label %if.else.i.i390

if.then.i.i:                                      ; preds = %bs_write_ue_big.exit436
  %shl.i.i385 = shl i32 %587, %590
  store i32 %shl.i.i385, i32* %cur_bits.i1840, align 4, !tbaa !10
  br label %bs_write.exit.i

if.else.i.i390:                                   ; preds = %bs_write_ue_big.exit436
  %shl7.i.i386 = shl i32 %587, %storemerge.i35.i435
  %add5.i.i.i.i387 = tail call i32 @llvm.bswap.i32(i32 %shl7.i.i386) #9
  %591 = bitcast i8** %p.i to i32**
  %592 = load i32*, i32** %591, align 4, !tbaa !2
  store i32 %add5.i.i.i.i387, i32* %592, align 4, !tbaa !9
  %593 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i.i389 = getelementptr inbounds i8, i8* %593, i32 4
  store i8* %add.ptr.i.i389, i8** %p.i, align 4, !tbaa !2
  store i32 0, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub4.i37.i = add i32 %storemerge.i35.i435, 32
  br label %bs_write.exit.i

bs_write.exit.i:                                  ; preds = %if.else.i.i390, %if.then.i.i
  %594 = phi i32 [ 0, %if.else.i.i390 ], [ %shl.i.i385, %if.then.i.i ]
  %sub4.i37.pn.i = phi i32 [ %sub4.i37.i, %if.else.i.i390 ], [ %storemerge.i35.i435, %if.then.i.i ]
  %storemerge.i.i391 = sub i32 %sub4.i37.pn.i, %590
  store i32 %storemerge.i.i391, i32* %i_left.i1811, align 4, !tbaa !8
  %add8.i = add nuw nsw i32 %590, 1
  %cmp.i22.i = icmp sgt i32 %storemerge.i.i391, %add8.i
  br i1 %cmp.i22.i, label %if.then.i26.i, label %if.else.i34.i

if.then.i26.i:                                    ; preds = %bs_write.exit.i
  %shl.i24.i = shl i32 %594, %add8.i
  %or.i.i392 = or i32 %shl.i24.i, %inc.i
  store i32 %or.i.i392, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub.i25.i = sub nsw i32 %storemerge.i.i391, %add8.i
  br label %bs_write_ue_big.exit

if.else.i34.i:                                    ; preds = %bs_write.exit.i
  %sub4.i27.i = sub nsw i32 %add8.i, %storemerge.i.i391
  %shl7.i29.i = shl i32 %594, %storemerge.i.i391
  %shr.i.i = lshr i32 %inc.i, %sub4.i27.i
  %or8.i.i = or i32 %shr.i.i, %shl7.i29.i
  %add5.i.i.i30.i = tail call i32 @llvm.bswap.i32(i32 %or8.i.i) #9
  %595 = bitcast i8** %p.i to i32**
  %596 = load i32*, i32** %595, align 4, !tbaa !2
  store i32 %add5.i.i.i30.i, i32* %596, align 4, !tbaa !9
  %597 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i32.i = getelementptr inbounds i8, i8* %597, i32 4
  store i8* %add.ptr.i32.i, i8** %p.i, align 4, !tbaa !2
  store i32 %inc.i, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub13.i33.i = sub nsw i32 32, %sub4.i27.i
  br label %bs_write_ue_big.exit

bs_write_ue_big.exit:                             ; preds = %if.then.i26.i, %if.else.i34.i
  %598 = phi i32 [ %inc.i, %if.else.i34.i ], [ %or.i.i392, %if.then.i26.i ]
  %storemerge.i35.i = phi i32 [ %sub13.i33.i, %if.else.i34.i ], [ %sub.i25.i, %if.then.i26.i ]
  store i32 %storemerge.i35.i, i32* %i_left.i1811, align 4, !tbaa !8
  br label %if.end179

if.end179thread-pre-split:                        ; preds = %bs_write1.exit1307, %bs_write1.exit631
  %.pr = phi i32 [ %288, %bs_write1.exit1307 ], [ %524, %bs_write1.exit631 ]
  %.pre2181 = load i32, i32* %cur_bits.i1840, align 4, !tbaa !10
  br label %if.end179

if.end179:                                        ; preds = %if.end179thread-pre-split, %bs_write_ue_big.exit
  %599 = phi i32 [ %.pre2181, %if.end179thread-pre-split ], [ %598, %bs_write_ue_big.exit ]
  %600 = phi i32 [ %.pr, %if.end179thread-pre-split ], [ %storemerge.i35.i, %bs_write_ue_big.exit ]
  %shl.i.i = shl i32 %599, 1
  %or.i.i = or i32 %shl.i.i, 1
  store i32 %or.i.i, i32* %cur_bits.i1840, align 4, !tbaa !10
  %dec.i.i = add nsw i32 %600, -1
  store i32 %dec.i.i, i32* %i_left.i1811, align 4, !tbaa !8
  %cmp.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.i.i, label %bs_write1.exit.thread.i, label %bs_write1.exit.i

bs_write1.exit.thread.i:                          ; preds = %if.end179
  %add5.i.i.i = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #9
  %601 = bitcast i8** %p.i to i32**
  %602 = load i32*, i32** %601, align 4, !tbaa !2
  store i32 %add5.i.i.i, i32* %602, align 4, !tbaa !9
  %603 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i.i = getelementptr inbounds i8, i8* %603, i32 4
  store i8* %add.ptr.i.i, i8** %p.i, align 4, !tbaa !2
  store i32 32, i32* %i_left.i1811, align 4, !tbaa !8
  %.pre.i = load i32, i32* %cur_bits.i1840, align 4, !tbaa !10
  br label %if.then.i7.i

bs_write1.exit.i:                                 ; preds = %if.end179
  %and.i380 = and i32 %dec.i.i, 7
  %604 = icmp sgt i32 %600, 8
  br i1 %604, label %bs_write1.exit.i.if.then.i7.i_crit_edge, label %if.else.i.i

bs_write1.exit.i.if.then.i7.i_crit_edge:          ; preds = %bs_write1.exit.i
  %.pre2183 = bitcast i8** %p.i to i32**
  br label %if.then.i7.i

if.then.i7.i:                                     ; preds = %bs_write1.exit.i.if.then.i7.i_crit_edge, %bs_write1.exit.thread.i
  %.pre2182.pre-phi = phi i32** [ %.pre2183, %bs_write1.exit.i.if.then.i7.i_crit_edge ], [ %601, %bs_write1.exit.thread.i ]
  %and12.i = phi i32 [ %and.i380, %bs_write1.exit.i.if.then.i7.i_crit_edge ], [ 0, %bs_write1.exit.thread.i ]
  %605 = phi i32 [ %dec.i.i, %bs_write1.exit.i.if.then.i7.i_crit_edge ], [ 32, %bs_write1.exit.thread.i ]
  %606 = phi i32 [ %or.i.i, %bs_write1.exit.i.if.then.i7.i_crit_edge ], [ %.pre.i, %bs_write1.exit.thread.i ]
  %shl.i6.i = shl i32 %606, %and12.i
  store i32 %shl.i6.i, i32* %cur_bits.i1840, align 4, !tbaa !10
  br label %bs_rbsp_trailing.exit

if.else.i.i:                                      ; preds = %bs_write1.exit.i
  %shl7.i.i = shl i32 %or.i.i, %dec.i.i
  %add5.i.i.i.i = tail call i32 @llvm.bswap.i32(i32 %shl7.i.i) #9
  %607 = bitcast i8** %p.i to i32**
  %608 = load i32*, i32** %607, align 4, !tbaa !2
  store i32 %add5.i.i.i.i, i32* %608, align 4, !tbaa !9
  %609 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i9.i = getelementptr inbounds i8, i8* %609, i32 4
  store i8* %add.ptr.i9.i, i8** %p.i, align 4, !tbaa !2
  store i32 0, i32* %cur_bits.i1840, align 4, !tbaa !10
  %sub4.i10.i = add nsw i32 %600, 31
  br label %bs_rbsp_trailing.exit

bs_rbsp_trailing.exit:                            ; preds = %if.then.i7.i, %if.else.i.i
  %.pre-phi = phi i32** [ %.pre2182.pre-phi, %if.then.i7.i ], [ %607, %if.else.i.i ]
  %610 = phi i32 [ %shl.i6.i, %if.then.i7.i ], [ 0, %if.else.i.i ]
  %and13.i = phi i32 [ %and12.i, %if.then.i7.i ], [ %and.i380, %if.else.i.i ]
  %sub4.i10.pn.i = phi i32 [ %605, %if.then.i7.i ], [ %sub4.i10.i, %if.else.i.i ]
  %storemerge.i.i = sub nsw i32 %sub4.i10.pn.i, %and13.i
  store i32 %storemerge.i.i, i32* %i_left.i1811, align 4, !tbaa !8
  %and.i374 = and i32 %storemerge.i.i, 31
  %shl.i = shl i32 %610, %and.i374
  %add5.i.i375 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #9
  %611 = load i32*, i32** %.pre-phi, align 4, !tbaa !2
  store i32 %add5.i.i375, i32* %611, align 4, !tbaa !9
  %612 = load i32, i32* %i_left.i1811, align 4, !tbaa !8
  %shr.i377 = ashr i32 %612, 3
  %sub.i378 = sub nsw i32 4, %shr.i377
  %613 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i379 = getelementptr inbounds i8, i8* %613, i32 %sub.i378
  store i8* %add.ptr.i379, i8** %p.i, align 4, !tbaa !2
  store i32 32, i32* %i_left.i1811, align 4, !tbaa !8
  ret void

land.lhs.true.1:                                  ; preds = %for.cond.preheader
  %614 = load i32, i32* %i_sar_height, align 4, !tbaa !77
  %cmp65.1 = icmp eq i32 %614, 11
  br i1 %cmp65.1, label %for.end, label %for.inc.15

land.lhs.true.2:                                  ; preds = %for.cond.preheader
  %615 = load i32, i32* %i_sar_height, align 4, !tbaa !77
  %cmp65.2 = icmp eq i32 %615, 11
  br i1 %cmp65.2, label %for.end, label %for.inc.15

land.lhs.true.3:                                  ; preds = %for.cond.preheader
  %616 = load i32, i32* %i_sar_height, align 4, !tbaa !77
  %cmp65.3 = icmp eq i32 %616, 11
  br i1 %cmp65.3, label %for.end, label %for.inc.15

land.lhs.true.4:                                  ; preds = %for.cond.preheader
  %617 = load i32, i32* %i_sar_height, align 4, !tbaa !77
  %cmp65.4 = icmp eq i32 %617, 33
  br i1 %cmp65.4, label %for.end, label %for.inc.15

land.lhs.true.5:                                  ; preds = %for.cond.preheader
  %618 = load i32, i32* %i_sar_height, align 4, !tbaa !77
  %cmp65.5 = icmp eq i32 %618, 11
  br i1 %cmp65.5, label %for.end, label %for.inc.15

land.lhs.true.6:                                  ; preds = %for.cond.preheader
  %619 = load i32, i32* %i_sar_height, align 4, !tbaa !77
  %cmp65.6 = icmp eq i32 %619, 11
  br i1 %cmp65.6, label %for.end, label %for.inc.15

land.lhs.true.7:                                  ; preds = %for.cond.preheader
  %620 = load i32, i32* %i_sar_height, align 4, !tbaa !77
  %cmp65.7 = icmp eq i32 %620, 11
  br i1 %cmp65.7, label %for.end, label %for.inc.15

land.lhs.true.8:                                  ; preds = %for.cond.preheader
  %621 = load i32, i32* %i_sar_height, align 4, !tbaa !77
  %cmp65.8 = icmp eq i32 %621, 33
  br i1 %cmp65.8, label %for.end, label %for.inc.15

land.lhs.true.9:                                  ; preds = %for.cond.preheader
  %622 = load i32, i32* %i_sar_height, align 4, !tbaa !77
  %cmp65.9 = icmp eq i32 %622, 11
  br i1 %cmp65.9, label %for.end, label %for.inc.15

land.lhs.true.10:                                 ; preds = %for.cond.preheader
  %623 = load i32, i32* %i_sar_height, align 4, !tbaa !77
  %cmp65.10 = icmp eq i32 %623, 11
  br i1 %cmp65.10, label %for.end, label %for.inc.15

land.lhs.true.11:                                 ; preds = %for.cond.preheader
  %624 = load i32, i32* %i_sar_height, align 4, !tbaa !77
  %cmp65.11 = icmp eq i32 %624, 33
  br i1 %cmp65.11, label %for.end, label %for.inc.15

land.lhs.true.12:                                 ; preds = %for.cond.preheader
  %625 = load i32, i32* %i_sar_height, align 4, !tbaa !77
  %cmp65.12 = icmp eq i32 %625, 99
  br i1 %cmp65.12, label %for.end, label %for.inc.15

land.lhs.true.13:                                 ; preds = %for.cond.preheader
  %626 = load i32, i32* %i_sar_height, align 4, !tbaa !77
  %cmp65.13 = icmp eq i32 %626, 3
  br i1 %cmp65.13, label %for.end, label %for.inc.15

land.lhs.true.14:                                 ; preds = %for.cond.preheader
  %627 = load i32, i32* %i_sar_height, align 4, !tbaa !77
  %cmp65.14 = icmp eq i32 %627, 2
  br i1 %cmp65.14, label %for.end, label %for.inc.15

land.lhs.true.15:                                 ; preds = %for.cond.preheader
  %628 = load i32, i32* %i_sar_height, align 4, !tbaa !77
  %cmp65.15 = icmp eq i32 %628, 1
  br i1 %cmp65.15, label %for.end, label %for.inc.15

for.inc.15:                                       ; preds = %for.cond.preheader, %land.lhs.true, %land.lhs.true.1, %land.lhs.true.2, %land.lhs.true.3, %land.lhs.true.4, %land.lhs.true.9, %land.lhs.true.8, %land.lhs.true.7, %land.lhs.true.6, %land.lhs.true.5, %land.lhs.true.10, %land.lhs.true.11, %land.lhs.true.12, %land.lhs.true.13, %land.lhs.true.14, %land.lhs.true.15
  br label %for.end
}

; Function Attrs: nofree nounwind
define internal fastcc void @scaling_list_write(%struct.bs_s* nocapture %s, %struct.x264_sps_t* nocapture readonly %sps, i32 %idx) unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %idx, 4
  %cond = select i1 %cmp, i32 16, i32 64
  %cond2 = select i1 %cmp, i8* getelementptr inbounds ([2 x [16 x i8]], [2 x [16 x i8]]* @x264_zigzag_scan4, i32 0, i32 0, i32 0), i8* getelementptr inbounds ([2 x [64 x i8]], [2 x [64 x i8]]* @x264_zigzag_scan8, i32 0, i32 0, i32 0)
  %arrayidx = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 26, i32 %idx
  %0 = load i8*, i8** %arrayidx, align 4, !tbaa !119
  switch i32 %idx, label %cond.false20 [
    i32 2, label %cond.true
    i32 3, label %cond.true7
    i32 6, label %cond.true12
    i32 7, label %cond.true17
  ]

cond.true:                                        ; preds = %entry
  %arrayidx5 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 26, i32 0
  br label %cond.end27

cond.true7:                                       ; preds = %entry
  %arrayidx9 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 26, i32 1
  br label %cond.end27

cond.true12:                                      ; preds = %entry
  %arrayidx14 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 26, i32 4
  br label %cond.end27

cond.true17:                                      ; preds = %entry
  %arrayidx19 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 26, i32 5
  br label %cond.end27

cond.false20:                                     ; preds = %entry
  %arrayidx21 = getelementptr inbounds [8 x i8*], [8 x i8*]* @x264_cqm_jvt, i32 0, i32 %idx
  br label %cond.end27

cond.end27:                                       ; preds = %cond.true7, %cond.true17, %cond.false20, %cond.true12, %cond.true
  %cond28.in = phi i8** [ %arrayidx5, %cond.true ], [ %arrayidx9, %cond.true7 ], [ %arrayidx14, %cond.true12 ], [ %arrayidx19, %cond.true17 ], [ %arrayidx21, %cond.false20 ]
  %cond28 = load i8*, i8** %cond28.in, align 4, !tbaa !119
  %call = tail call i32 @memcmp(i8* nonnull dereferenceable(16) %0, i8* nonnull dereferenceable(16) %cond28, i32 %cond) #10
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end27
  %cur_bits.i = getelementptr inbounds %struct.bs_s, %struct.bs_s* %s, i32 0, i32 3
  %1 = load i32, i32* %cur_bits.i, align 4, !tbaa !10
  %shl.i = shl i32 %1, 1
  store i32 %shl.i, i32* %cur_bits.i, align 4, !tbaa !10
  %i_left.i = getelementptr inbounds %struct.bs_s, %struct.bs_s* %s, i32 0, i32 4
  %2 = load i32, i32* %i_left.i, align 4, !tbaa !8
  %dec.i = add nsw i32 %2, -1
  store i32 %dec.i, i32* %i_left.i, align 4, !tbaa !8
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end96

if.then.i:                                        ; preds = %if.then
  %add5.i.i = tail call i32 @llvm.bswap.i32(i32 %shl.i) #9
  %p.i = getelementptr inbounds %struct.bs_s, %struct.bs_s* %s, i32 0, i32 1
  %3 = bitcast i8** %p.i to i32**
  %4 = load i32*, i32** %3, align 4, !tbaa !2
  store i32 %add5.i.i, i32* %4, align 4, !tbaa !9
  %5 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i = getelementptr inbounds i8, i8* %5, i32 4
  store i8* %add.ptr.i, i8** %p.i, align 4, !tbaa !2
  store i32 32, i32* %i_left.i, align 4, !tbaa !8
  br label %if.end96

if.else:                                          ; preds = %cond.end27
  %arrayidx29 = getelementptr inbounds [8 x i8*], [8 x i8*]* @x264_cqm_jvt, i32 0, i32 %idx
  %6 = load i8*, i8** %arrayidx29, align 4, !tbaa !119
  %call30 = tail call i32 @memcmp(i8* nonnull dereferenceable(16) %0, i8* nonnull dereferenceable(16) %6, i32 %cond) #10
  %tobool31 = icmp eq i32 %call30, 0
  %cur_bits.i209 = getelementptr inbounds %struct.bs_s, %struct.bs_s* %s, i32 0, i32 3
  %7 = load i32, i32* %cur_bits.i209, align 4, !tbaa !10
  %shl.i210 = shl i32 %7, 1
  %or.i = or i32 %shl.i210, 1
  store i32 %or.i, i32* %cur_bits.i209, align 4, !tbaa !10
  %i_left.i211 = getelementptr inbounds %struct.bs_s, %struct.bs_s* %s, i32 0, i32 4
  %8 = load i32, i32* %i_left.i211, align 4, !tbaa !8
  %dec.i212 = add nsw i32 %8, -1
  store i32 %dec.i212, i32* %i_left.i211, align 4, !tbaa !8
  %cmp.i213 = icmp eq i32 %dec.i212, 0
  br i1 %cmp.i213, label %if.then.i217, label %bs_write1.exit218

if.then.i217:                                     ; preds = %if.else
  %add5.i.i214 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %p.i215 = getelementptr inbounds %struct.bs_s, %struct.bs_s* %s, i32 0, i32 1
  %9 = bitcast i8** %p.i215 to i32**
  %10 = load i32*, i32** %9, align 4, !tbaa !2
  store i32 %add5.i.i214, i32* %10, align 4, !tbaa !9
  %11 = load i8*, i8** %p.i215, align 4, !tbaa !2
  %add.ptr.i216 = getelementptr inbounds i8, i8* %11, i32 4
  store i8* %add.ptr.i216, i8** %p.i215, align 4, !tbaa !2
  store i32 32, i32* %i_left.i211, align 4, !tbaa !8
  br label %bs_write1.exit218

bs_write1.exit218:                                ; preds = %if.else, %if.then.i217
  %12 = phi i32 [ %dec.i212, %if.else ], [ 32, %if.then.i217 ]
  br i1 %tobool31, label %if.then32, label %for.cond

if.then32:                                        ; preds = %bs_write1.exit218
  %cmp.i.i191 = icmp sgt i32 %12, 9
  br i1 %cmp.i.i191, label %if.then.i.i196, label %if.else.i.i206

if.then.i.i196:                                   ; preds = %if.then32
  %13 = load i32, i32* %cur_bits.i209, align 4, !tbaa !10
  %shl.i.i193 = shl i32 %13, 9
  %or.i.i194 = or i32 %shl.i.i193, 17
  br label %bs_write_se.exit208

if.else.i.i206:                                   ; preds = %if.then32
  %sub4.i.i197 = sub nsw i32 9, %12
  %14 = load i32, i32* %cur_bits.i209, align 4, !tbaa !10
  %shl7.i.i199 = shl i32 %14, %12
  %shr.i.i200 = lshr i32 17, %sub4.i.i197
  %or8.i.i201 = or i32 %shl7.i.i199, %shr.i.i200
  %add5.i.i.i.i202 = tail call i32 @llvm.bswap.i32(i32 %or8.i.i201) #9
  %p.i.i203 = getelementptr inbounds %struct.bs_s, %struct.bs_s* %s, i32 0, i32 1
  %15 = bitcast i8** %p.i.i203 to i32**
  %16 = load i32*, i32** %15, align 4, !tbaa !2
  store i32 %add5.i.i.i.i202, i32* %16, align 4, !tbaa !9
  %17 = load i8*, i8** %p.i.i203, align 4, !tbaa !2
  %add.ptr.i.i204 = getelementptr inbounds i8, i8* %17, i32 4
  store i8* %add.ptr.i.i204, i8** %p.i.i203, align 4, !tbaa !2
  br label %bs_write_se.exit208

bs_write_se.exit208:                              ; preds = %if.then.i.i196, %if.else.i.i206
  %or.i.i194.sink = phi i32 [ %or.i.i194, %if.then.i.i196 ], [ 17, %if.else.i.i206 ]
  %.sink = phi i32 [ -9, %if.then.i.i196 ], [ 23, %if.else.i.i206 ]
  store i32 %or.i.i194.sink, i32* %cur_bits.i209, align 4, !tbaa !10
  %sub.i.i195 = add nsw i32 %12, %.sink
  store i32 %sub.i.i195, i32* %i_left.i211, align 4, !tbaa !8
  br label %if.end96

for.cond:                                         ; preds = %bs_write1.exit218, %for.body
  %run.0 = phi i32 [ %sub, %for.body ], [ %cond, %bs_write1.exit218 ]
  %cmp34 = icmp sgt i32 %run.0, 1
  br i1 %cmp34, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %sub = add nsw i32 %run.0, -1
  %arrayidx35 = getelementptr inbounds i8, i8* %cond2, i32 %sub
  %18 = load i8, i8* %arrayidx35, align 1, !tbaa !9
  %idxprom = zext i8 %18 to i32
  %arrayidx36 = getelementptr inbounds i8, i8* %0, i32 %idxprom
  %19 = load i8, i8* %arrayidx36, align 1, !tbaa !9
  %sub37 = add nsw i32 %run.0, -2
  %arrayidx38 = getelementptr inbounds i8, i8* %cond2, i32 %sub37
  %20 = load i8, i8* %arrayidx38, align 1, !tbaa !9
  %idxprom39 = zext i8 %20 to i32
  %arrayidx40 = getelementptr inbounds i8, i8* %0, i32 %idxprom39
  %21 = load i8, i8* %arrayidx40, align 1, !tbaa !9
  %cmp42 = icmp eq i8 %19, %21
  br i1 %cmp42, label %for.cond, label %for.end

for.end:                                          ; preds = %for.body, %for.cond
  %cmp45 = icmp sgt i32 %cond, %run.0
  br i1 %cmp45, label %land.lhs.true, label %if.end59

land.lhs.true:                                    ; preds = %for.end
  %sub47 = sub nsw i32 %cond, %run.0
  %arrayidx48 = getelementptr inbounds i8, i8* %cond2, i32 %run.0
  %22 = load i8, i8* %arrayidx48, align 1, !tbaa !9
  %idxprom49 = zext i8 %22 to i32
  %arrayidx50 = getelementptr inbounds i8, i8* %0, i32 %idxprom49
  %23 = load i8, i8* %arrayidx50, align 1, !tbaa !9
  %sub52 = sub i8 0, %23
  %conv54 = sext i8 %sub52 to i32
  %mul.i182 = shl nsw i32 %conv54, 1
  %sub.i183 = sub nsw i32 1, %mul.i182
  %cmp.i184 = icmp sgt i8 %sub52, 0
  %spec.select.i185 = select i1 %cmp.i184, i32 %mul.i182, i32 %sub.i183
  %cmp2.i186 = icmp slt i32 %spec.select.i185, 256
  br i1 %cmp2.i186, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %land.lhs.true
  %arrayidx.i187 = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %spec.select.i185
  %24 = load i8, i8* %arrayidx.i187, align 1, !tbaa !9
  %conv.i188 = zext i8 %24 to i32
  br label %bs_size_se.exit

if.else.i:                                        ; preds = %land.lhs.true
  %shr10.i = lshr i32 %spec.select.i185, 8
  %arrayidx4.i = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %shr10.i
  %25 = load i8, i8* %arrayidx4.i, align 1, !tbaa !9
  %conv5.i = zext i8 %25 to i32
  %add.i189 = add nuw nsw i32 %conv5.i, 16
  br label %bs_size_se.exit

bs_size_se.exit:                                  ; preds = %if.then3.i, %if.else.i
  %retval.0.i = phi i32 [ %conv.i188, %if.then3.i ], [ %add.i189, %if.else.i ]
  %cmp56 = icmp slt i32 %sub47, %retval.0.i
  %spec.select = select i1 %cmp56, i32 %cond, i32 %run.0
  br label %if.end59

if.end59:                                         ; preds = %bs_size_se.exit, %for.end
  %run.1 = phi i32 [ %run.0, %for.end ], [ %spec.select, %bs_size_se.exit ]
  %cmp61219 = icmp sgt i32 %run.1, 0
  br i1 %cmp61219, label %for.body63.lr.ph, label %for.cond.cleanup

for.body63.lr.ph:                                 ; preds = %if.end59
  %p.i.i176 = getelementptr inbounds %struct.bs_s, %struct.bs_s* %s, i32 0, i32 1
  %26 = bitcast i8** %p.i.i176 to i32**
  %27 = load i8, i8* %cond2, align 1, !tbaa !9
  %idxprom65.peel = zext i8 %27 to i32
  %arrayidx66.peel = getelementptr inbounds i8, i8* %0, i32 %idxprom65.peel
  %28 = load i8, i8* %arrayidx66.peel, align 1, !tbaa !9
  %sub79.peel = add i8 %28, -8
  %conv81.peel = sext i8 %sub79.peel to i32
  %mul.i152.peel = shl nsw i32 %conv81.peel, 1
  %sub.i153.peel = sub nsw i32 1, %mul.i152.peel
  %cmp.i154.peel = icmp sgt i8 %sub79.peel, 0
  %spec.select.i155.peel = select i1 %cmp.i154.peel, i32 %mul.i152.peel, i32 %sub.i153.peel
  %cmp2.i156.peel = icmp sgt i32 %spec.select.i155.peel, 255
  %shr.i157.peel = ashr i32 %spec.select.i155.peel, 8
  %size.0.i158.peel = select i1 %cmp2.i156.peel, i32 16, i32 0
  %tmp.1.i159.peel = select i1 %cmp2.i156.peel, i32 %shr.i157.peel, i32 %spec.select.i155.peel
  %arrayidx.i160.peel = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %tmp.1.i159.peel
  %29 = load i8, i8* %arrayidx.i160.peel, align 1, !tbaa !9
  %conv.i161.peel = zext i8 %29 to i32
  %add.i162.peel = add nuw nsw i32 %size.0.i158.peel, %conv.i161.peel
  %cmp.i.i164.peel = icmp sgt i32 %12, %add.i162.peel
  br i1 %cmp.i.i164.peel, label %if.then.i.i169.peel, label %if.else.i.i179.peel

if.else.i.i179.peel:                              ; preds = %for.body63.lr.ph
  %sub4.i.i170.peel = sub nsw i32 %add.i162.peel, %12
  %30 = load i32, i32* %cur_bits.i209, align 4, !tbaa !10
  %shl7.i.i172.peel = shl i32 %30, %12
  %shr.i.i173.peel = lshr i32 %spec.select.i155.peel, %sub4.i.i170.peel
  %or8.i.i174.peel = or i32 %shl7.i.i172.peel, %shr.i.i173.peel
  %add5.i.i.i.i175.peel = tail call i32 @llvm.bswap.i32(i32 %or8.i.i174.peel) #9
  %31 = load i32*, i32** %26, align 4, !tbaa !2
  store i32 %add5.i.i.i.i175.peel, i32* %31, align 4, !tbaa !9
  %32 = load i8*, i8** %p.i.i176, align 4, !tbaa !2
  %add.ptr.i.i177.peel = getelementptr inbounds i8, i8* %32, i32 4
  store i8* %add.ptr.i.i177.peel, i8** %p.i.i176, align 4, !tbaa !2
  store i32 %spec.select.i155.peel, i32* %cur_bits.i209, align 4, !tbaa !10
  %sub13.i.i178.peel = sub nsw i32 32, %sub4.i.i170.peel
  br label %bs_write_se.exit181.peel

if.then.i.i169.peel:                              ; preds = %for.body63.lr.ph
  %33 = load i32, i32* %cur_bits.i209, align 4, !tbaa !10
  %shl.i.i166.peel = shl i32 %33, %add.i162.peel
  %or.i.i167.peel = or i32 %shl.i.i166.peel, %spec.select.i155.peel
  store i32 %or.i.i167.peel, i32* %cur_bits.i209, align 4, !tbaa !10
  %sub.i.i168.peel = sub nsw i32 %12, %add.i162.peel
  br label %bs_write_se.exit181.peel

bs_write_se.exit181.peel:                         ; preds = %if.then.i.i169.peel, %if.else.i.i179.peel
  %storemerge.i.i180.peel = phi i32 [ %sub13.i.i178.peel, %if.else.i.i179.peel ], [ %sub.i.i168.peel, %if.then.i.i169.peel ]
  store i32 %storemerge.i.i180.peel, i32* %i_left.i211, align 4, !tbaa !8
  %exitcond.peel = icmp eq i32 %run.1, 1
  br i1 %exitcond.peel, label %for.cond.cleanup, label %for.body63

for.cond.cleanup:                                 ; preds = %bs_write_se.exit181.peel, %bs_write_se.exit181, %if.end59
  %34 = phi i32 [ %12, %if.end59 ], [ %storemerge.i.i180.peel, %bs_write_se.exit181.peel ], [ %storemerge.i.i180, %bs_write_se.exit181 ]
  %cmp84 = icmp slt i32 %run.1, %cond
  br i1 %cmp84, label %if.then86, label %if.end96

for.body63:                                       ; preds = %bs_write_se.exit181.peel, %bs_write_se.exit181
  %35 = phi i32 [ %storemerge.i.i180, %bs_write_se.exit181 ], [ %storemerge.i.i180.peel, %bs_write_se.exit181.peel ]
  %j.0220 = phi i32 [ %inc, %bs_write_se.exit181 ], [ 1, %bs_write_se.exit181.peel ]
  %arrayidx64 = getelementptr inbounds i8, i8* %cond2, i32 %j.0220
  %36 = load i8, i8* %arrayidx64, align 1, !tbaa !9
  %idxprom65 = zext i8 %36 to i32
  %arrayidx66 = getelementptr inbounds i8, i8* %0, i32 %idxprom65
  %37 = load i8, i8* %arrayidx66, align 1, !tbaa !9
  %sub71 = add nsw i32 %j.0220, -1
  %arrayidx72 = getelementptr inbounds i8, i8* %cond2, i32 %sub71
  %38 = load i8, i8* %arrayidx72, align 1, !tbaa !9
  %idxprom73 = zext i8 %38 to i32
  %arrayidx74 = getelementptr inbounds i8, i8* %0, i32 %idxprom73
  %39 = load i8, i8* %arrayidx74, align 1, !tbaa !9
  %sub79 = sub i8 %37, %39
  %conv81 = sext i8 %sub79 to i32
  %mul.i152 = shl nsw i32 %conv81, 1
  %sub.i153 = sub nsw i32 1, %mul.i152
  %cmp.i154 = icmp sgt i8 %sub79, 0
  %spec.select.i155 = select i1 %cmp.i154, i32 %mul.i152, i32 %sub.i153
  %cmp2.i156 = icmp sgt i32 %spec.select.i155, 255
  %shr.i157 = ashr i32 %spec.select.i155, 8
  %size.0.i158 = select i1 %cmp2.i156, i32 16, i32 0
  %tmp.1.i159 = select i1 %cmp2.i156, i32 %shr.i157, i32 %spec.select.i155
  %arrayidx.i160 = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %tmp.1.i159
  %40 = load i8, i8* %arrayidx.i160, align 1, !tbaa !9
  %conv.i161 = zext i8 %40 to i32
  %add.i162 = add nuw nsw i32 %size.0.i158, %conv.i161
  %cmp.i.i164 = icmp sgt i32 %35, %add.i162
  br i1 %cmp.i.i164, label %if.then.i.i169, label %if.else.i.i179

if.then.i.i169:                                   ; preds = %for.body63
  %41 = load i32, i32* %cur_bits.i209, align 4, !tbaa !10
  %shl.i.i166 = shl i32 %41, %add.i162
  %or.i.i167 = or i32 %shl.i.i166, %spec.select.i155
  store i32 %or.i.i167, i32* %cur_bits.i209, align 4, !tbaa !10
  %sub.i.i168 = sub nsw i32 %35, %add.i162
  br label %bs_write_se.exit181

if.else.i.i179:                                   ; preds = %for.body63
  %sub4.i.i170 = sub nsw i32 %add.i162, %35
  %42 = load i32, i32* %cur_bits.i209, align 4, !tbaa !10
  %shl7.i.i172 = shl i32 %42, %35
  %shr.i.i173 = lshr i32 %spec.select.i155, %sub4.i.i170
  %or8.i.i174 = or i32 %shl7.i.i172, %shr.i.i173
  %add5.i.i.i.i175 = tail call i32 @llvm.bswap.i32(i32 %or8.i.i174) #9
  %43 = load i32*, i32** %26, align 4, !tbaa !2
  store i32 %add5.i.i.i.i175, i32* %43, align 4, !tbaa !9
  %44 = load i8*, i8** %p.i.i176, align 4, !tbaa !2
  %add.ptr.i.i177 = getelementptr inbounds i8, i8* %44, i32 4
  store i8* %add.ptr.i.i177, i8** %p.i.i176, align 4, !tbaa !2
  store i32 %spec.select.i155, i32* %cur_bits.i209, align 4, !tbaa !10
  %sub13.i.i178 = sub nsw i32 32, %sub4.i.i170
  br label %bs_write_se.exit181

bs_write_se.exit181:                              ; preds = %if.then.i.i169, %if.else.i.i179
  %storemerge.i.i180 = phi i32 [ %sub13.i.i178, %if.else.i.i179 ], [ %sub.i.i168, %if.then.i.i169 ]
  store i32 %storemerge.i.i180, i32* %i_left.i211, align 4, !tbaa !8
  %inc = add nuw nsw i32 %j.0220, 1
  %exitcond = icmp eq i32 %inc, %run.1
  br i1 %exitcond, label %for.cond.cleanup, label %for.body63, !llvm.loop !132

if.then86:                                        ; preds = %for.cond.cleanup
  %arrayidx87 = getelementptr inbounds i8, i8* %cond2, i32 %run.1
  %45 = load i8, i8* %arrayidx87, align 1, !tbaa !9
  %idxprom88 = zext i8 %45 to i32
  %arrayidx89 = getelementptr inbounds i8, i8* %0, i32 %idxprom88
  %46 = load i8, i8* %arrayidx89, align 1, !tbaa !9
  %sub91 = sub i8 0, %46
  %conv93 = sext i8 %sub91 to i32
  %mul.i = shl nsw i32 %conv93, 1
  %sub.i = sub nsw i32 1, %mul.i
  %cmp.i151 = icmp sgt i8 %sub91, 0
  %spec.select.i = select i1 %cmp.i151, i32 %mul.i, i32 %sub.i
  %cmp2.i = icmp sgt i32 %spec.select.i, 255
  %shr.i = ashr i32 %spec.select.i, 8
  %size.0.i = select i1 %cmp2.i, i32 16, i32 0
  %tmp.1.i = select i1 %cmp2.i, i32 %shr.i, i32 %spec.select.i
  %arrayidx.i = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %tmp.1.i
  %47 = load i8, i8* %arrayidx.i, align 1, !tbaa !9
  %conv.i = zext i8 %47 to i32
  %add.i = add nuw nsw i32 %size.0.i, %conv.i
  %cmp.i.i = icmp sgt i32 %34, %add.i
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then86
  %48 = load i32, i32* %cur_bits.i209, align 4, !tbaa !10
  %shl.i.i = shl i32 %48, %add.i
  %or.i.i = or i32 %shl.i.i, %spec.select.i
  store i32 %or.i.i, i32* %cur_bits.i209, align 4, !tbaa !10
  %sub.i.i = sub nsw i32 %34, %add.i
  br label %bs_write_se.exit

if.else.i.i:                                      ; preds = %if.then86
  %sub4.i.i = sub nsw i32 %add.i, %34
  %49 = load i32, i32* %cur_bits.i209, align 4, !tbaa !10
  %shl7.i.i = shl i32 %49, %34
  %shr.i.i = lshr i32 %spec.select.i, %sub4.i.i
  %or8.i.i = or i32 %shl7.i.i, %shr.i.i
  %add5.i.i.i.i = tail call i32 @llvm.bswap.i32(i32 %or8.i.i) #9
  %p.i.i = getelementptr inbounds %struct.bs_s, %struct.bs_s* %s, i32 0, i32 1
  %50 = bitcast i8** %p.i.i to i32**
  %51 = load i32*, i32** %50, align 4, !tbaa !2
  store i32 %add5.i.i.i.i, i32* %51, align 4, !tbaa !9
  %52 = load i8*, i8** %p.i.i, align 4, !tbaa !2
  %add.ptr.i.i = getelementptr inbounds i8, i8* %52, i32 4
  store i8* %add.ptr.i.i, i8** %p.i.i, align 4, !tbaa !2
  store i32 %spec.select.i, i32* %cur_bits.i209, align 4, !tbaa !10
  %sub13.i.i = sub nsw i32 32, %sub4.i.i
  br label %bs_write_se.exit

bs_write_se.exit:                                 ; preds = %if.then.i.i, %if.else.i.i
  %storemerge.i.i = phi i32 [ %sub13.i.i, %if.else.i.i ], [ %sub.i.i, %if.then.i.i ]
  store i32 %storemerge.i.i, i32* %i_left.i211, align 4, !tbaa !8
  br label %if.end96

if.end96:                                         ; preds = %if.then.i, %if.then, %for.cond.cleanup, %bs_write_se.exit, %bs_write_se.exit208
  ret void
}

; Function Attrs: nofree norecurse nounwind
define hidden void @x264_8_pps_init(%struct.x264_pps_t* nocapture %pps, i32 %i_id, %struct.x264_param_t* nocapture readonly %param, %struct.x264_sps_t* nocapture readonly %sps) local_unnamed_addr #2 {
entry:
  %i_id1 = getelementptr inbounds %struct.x264_pps_t, %struct.x264_pps_t* %pps, i32 0, i32 0
  store i32 %i_id, i32* %i_id1, align 4, !tbaa !134
  %i_id2 = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 0
  %0 = load i32, i32* %i_id2, align 4, !tbaa !21
  %i_sps_id = getelementptr inbounds %struct.x264_pps_t, %struct.x264_pps_t* %pps, i32 0, i32 1
  store i32 %0, i32* %i_sps_id, align 4, !tbaa !136
  %b_cabac = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 32
  %1 = load i32, i32* %b_cabac, align 8, !tbaa !38
  %b_cabac3 = getelementptr inbounds %struct.x264_pps_t, %struct.x264_pps_t* %pps, i32 0, i32 2
  store i32 %1, i32* %b_cabac3, align 4, !tbaa !137
  %i_avcintra_class = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 27
  %2 = load i32, i32* %i_avcintra_class, align 4, !tbaa !57
  %tobool = icmp eq i32 %2, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %b_interlaced = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 34
  %3 = load i32, i32* %b_interlaced, align 8, !tbaa !29
  %tobool4 = icmp ne i32 %3, 0
  %phitmp = zext i1 %tobool4 to i32
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %4 = phi i32 [ 0, %entry ], [ %phitmp, %land.rhs ]
  %b_pic_order = getelementptr inbounds %struct.x264_pps_t, %struct.x264_pps_t* %pps, i32 0, i32 3
  store i32 %4, i32* %b_pic_order, align 4, !tbaa !138
  %i_num_slice_groups = getelementptr inbounds %struct.x264_pps_t, %struct.x264_pps_t* %pps, i32 0, i32 4
  store i32 1, i32* %i_num_slice_groups, align 4, !tbaa !139
  %i_frame_reference = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 15
  %5 = load i32, i32* %i_frame_reference, align 4, !tbaa !51
  %i_num_ref_idx_l0_default_active = getelementptr inbounds %struct.x264_pps_t, %struct.x264_pps_t* %pps, i32 0, i32 5
  store i32 %5, i32* %i_num_ref_idx_l0_default_active, align 4, !tbaa !140
  %i_num_ref_idx_l1_default_active = getelementptr inbounds %struct.x264_pps_t, %struct.x264_pps_t* %pps, i32 0, i32 6
  store i32 1, i32* %i_num_ref_idx_l1_default_active, align 4, !tbaa !141
  %i_weighted_pred = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 3
  %6 = load i32, i32* %i_weighted_pred, align 4, !tbaa !40
  %cmp = icmp sgt i32 %6, 0
  %conv = zext i1 %cmp to i32
  %b_weighted_pred = getelementptr inbounds %struct.x264_pps_t, %struct.x264_pps_t* %pps, i32 0, i32 7
  store i32 %conv, i32* %b_weighted_pred, align 4, !tbaa !142
  %b_weighted_bipred = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 4
  %7 = load i32, i32* %b_weighted_bipred, align 4, !tbaa !143
  %tobool6 = icmp eq i32 %7, 0
  %cond = select i1 %tobool6, i32 0, i32 2
  %b_weighted_bipred7 = getelementptr inbounds %struct.x264_pps_t, %struct.x264_pps_t* %pps, i32 0, i32 8
  store i32 %cond, i32* %b_weighted_bipred7, align 4, !tbaa !144
  %i_rc_method = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 52, i32 0
  %8 = load i32, i32* %i_rc_method, align 8, !tbaa !33
  %cmp8 = icmp eq i32 %8, 2
  br i1 %cmp8, label %cond.end19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.end
  %b_stitchable = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 71
  %9 = load i32, i32* %b_stitchable, align 4, !tbaa !145
  %tobool10 = icmp eq i32 %9, 0
  br i1 %tobool10, label %cond.false, label %cond.end19

cond.false:                                       ; preds = %lor.lhs.false
  %i_qp_constant = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 52, i32 1
  %10 = load i32, i32* %i_qp_constant, align 4, !tbaa !35
  %cmp12 = icmp slt i32 %10, 51
  %spec.select = select i1 %cmp12, i32 %10, i32 51
  br label %cond.end19

cond.end19:                                       ; preds = %cond.false, %lor.lhs.false, %land.end
  %cond20 = phi i32 [ 26, %lor.lhs.false ], [ 26, %land.end ], [ %spec.select, %cond.false ]
  %i_pic_init_qp = getelementptr inbounds %struct.x264_pps_t, %struct.x264_pps_t* %pps, i32 0, i32 9
  store i32 %cond20, i32* %i_pic_init_qp, align 4, !tbaa !146
  %i_pic_init_qs = getelementptr inbounds %struct.x264_pps_t, %struct.x264_pps_t* %pps, i32 0, i32 10
  store i32 26, i32* %i_pic_init_qs, align 4, !tbaa !147
  %i_chroma_qp_offset = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 6
  %11 = load i32, i32* %i_chroma_qp_offset, align 4, !tbaa !148
  %i_chroma_qp_index_offset = getelementptr inbounds %struct.x264_pps_t, %struct.x264_pps_t* %pps, i32 0, i32 11
  store i32 %11, i32* %i_chroma_qp_index_offset, align 4, !tbaa !149
  %b_deblocking_filter_control = getelementptr inbounds %struct.x264_pps_t, %struct.x264_pps_t* %pps, i32 0, i32 12
  store i32 1, i32* %b_deblocking_filter_control, align 4, !tbaa !150
  %b_constrained_intra = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 35
  %12 = load i32, i32* %b_constrained_intra, align 4, !tbaa !151
  %b_constrained_intra_pred = getelementptr inbounds %struct.x264_pps_t, %struct.x264_pps_t* %pps, i32 0, i32 13
  store i32 %12, i32* %b_constrained_intra_pred, align 4, !tbaa !152
  %b_redundant_pic_cnt = getelementptr inbounds %struct.x264_pps_t, %struct.x264_pps_t* %pps, i32 0, i32 14
  store i32 0, i32* %b_redundant_pic_cnt, align 4, !tbaa !153
  %b_transform_8x8 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 2
  %13 = load i32, i32* %b_transform_8x8, align 4, !tbaa !36
  %tobool23 = icmp ne i32 %13, 0
  %cond24 = zext i1 %tobool23 to i32
  %b_transform_8x8_mode = getelementptr inbounds %struct.x264_pps_t, %struct.x264_pps_t* %pps, i32 0, i32 15
  store i32 %cond24, i32* %b_transform_8x8_mode, align 4, !tbaa !154
  ret void
}

; Function Attrs: nofree nounwind
define hidden void @x264_8_pps_write(%struct.bs_s* %s, %struct.x264_sps_t* nocapture readonly %sps, %struct.x264_pps_t* nocapture readonly %pps) local_unnamed_addr #0 {
entry:
  %p.i = getelementptr inbounds %struct.bs_s, %struct.bs_s* %s, i32 0, i32 1
  %0 = load i8*, i8** %p.i, align 4, !tbaa !2
  %1 = ptrtoint i8* %0 to i32
  %and.i = and i32 %1, 3
  %tobool.i = icmp eq i32 %and.i, 0
  br i1 %tobool.i, label %entry.bs_realign.exit_crit_edge, label %if.then.i

entry.bs_realign.exit_crit_edge:                  ; preds = %entry
  %2 = bitcast i8* %0 to i32*
  %i_left.i.i146.phi.trans.insert = getelementptr inbounds %struct.bs_s, %struct.bs_s* %s, i32 0, i32 4
  %.pre = load i32, i32* %i_left.i.i146.phi.trans.insert, align 4, !tbaa !8
  %cur_bits.i.i148.phi.trans.insert = getelementptr inbounds %struct.bs_s, %struct.bs_s* %s, i32 0, i32 3
  %.pre586 = load i32, i32* %cur_bits.i.i148.phi.trans.insert, align 4, !tbaa !10
  br label %bs_realign.exit

if.then.i:                                        ; preds = %entry
  %idx.neg.i = sub nsw i32 0, %and.i
  %add.ptr.i = getelementptr inbounds i8, i8* %0, i32 %idx.neg.i
  store i8* %add.ptr.i, i8** %p.i, align 4, !tbaa !2
  %sub.i = shl nuw nsw i32 %and.i, 3
  %mul.i = sub nuw nsw i32 32, %sub.i
  %i_left.i = getelementptr inbounds %struct.bs_s, %struct.bs_s* %s, i32 0, i32 4
  store i32 %mul.i, i32* %i_left.i, align 4, !tbaa !8
  %.cast.i = bitcast i8* %add.ptr.i to i32*
  %3 = load i32, i32* %.cast.i, align 4, !tbaa !9
  %add5.i.i = tail call i32 @llvm.bswap.i32(i32 %3) #9
  %cur_bits.i = getelementptr inbounds %struct.bs_s, %struct.bs_s* %s, i32 0, i32 3
  %shr.i = lshr i32 %add5.i.i, %mul.i
  store i32 %shr.i, i32* %cur_bits.i, align 4, !tbaa !10
  br label %bs_realign.exit

bs_realign.exit:                                  ; preds = %entry.bs_realign.exit_crit_edge, %if.then.i
  %4 = phi i32* [ %2, %entry.bs_realign.exit_crit_edge ], [ %.cast.i, %if.then.i ]
  %5 = phi i32 [ %.pre586, %entry.bs_realign.exit_crit_edge ], [ %shr.i, %if.then.i ]
  %6 = phi i32 [ %.pre, %entry.bs_realign.exit_crit_edge ], [ %mul.i, %if.then.i ]
  %i_id = getelementptr inbounds %struct.x264_pps_t, %struct.x264_pps_t* %pps, i32 0, i32 0
  %7 = load i32, i32* %i_id, align 4, !tbaa !134
  %inc.i = add i32 %7, 1
  %cmp.i139 = icmp sgt i32 %inc.i, 65535
  %shr.i140 = ashr i32 %inc.i, 16
  %spec.select.i141 = select i1 %cmp.i139, i32 32, i32 0
  %spec.select20.i = select i1 %cmp.i139, i32 %shr.i140, i32 %inc.i
  %cmp1.i = icmp sgt i32 %spec.select20.i, 255
  %add.i142 = or i32 %spec.select.i141, 16
  %shr3.i = ashr i32 %spec.select20.i, 8
  %size.1.i = select i1 %cmp1.i, i32 %add.i142, i32 %spec.select.i141
  %tmp.1.i143 = select i1 %cmp1.i, i32 %shr3.i, i32 %spec.select20.i
  %arrayidx.i144 = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %tmp.1.i143
  %8 = load i8, i8* %arrayidx.i144, align 1, !tbaa !9
  %conv.i145 = zext i8 %8 to i32
  %add5.i = add nuw nsw i32 %size.1.i, %conv.i145
  %9 = lshr i32 %add5.i, 1
  %i_left.i.i146 = getelementptr inbounds %struct.bs_s, %struct.bs_s* %s, i32 0, i32 4
  %cmp.i.i147 = icmp sgt i32 %6, %9
  %cur_bits.i.i148 = getelementptr inbounds %struct.bs_s, %struct.bs_s* %s, i32 0, i32 3
  br i1 %cmp.i.i147, label %if.then.i.i150, label %if.else.i.i155

if.then.i.i150:                                   ; preds = %bs_realign.exit
  %shl.i.i149 = shl i32 %5, %9
  store i32 %shl.i.i149, i32* %cur_bits.i.i148, align 4, !tbaa !10
  br label %bs_write.exit.i

if.else.i.i155:                                   ; preds = %bs_realign.exit
  %shl7.i.i151 = shl i32 %5, %6
  %add5.i.i.i.i152 = tail call i32 @llvm.bswap.i32(i32 %shl7.i.i151) #9
  store i32 %add5.i.i.i.i152, i32* %4, align 4, !tbaa !9
  %10 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i.i154 = getelementptr inbounds i8, i8* %10, i32 4
  store i8* %add.ptr.i.i154, i8** %p.i, align 4, !tbaa !2
  store i32 0, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %sub4.i37.i = add i32 %6, 32
  %11 = bitcast i8* %add.ptr.i.i154 to i32*
  br label %bs_write.exit.i

bs_write.exit.i:                                  ; preds = %if.else.i.i155, %if.then.i.i150
  %12 = phi i32* [ %11, %if.else.i.i155 ], [ %4, %if.then.i.i150 ]
  %13 = phi i32 [ 0, %if.else.i.i155 ], [ %shl.i.i149, %if.then.i.i150 ]
  %sub4.i37.pn.i = phi i32 [ %sub4.i37.i, %if.else.i.i155 ], [ %6, %if.then.i.i150 ]
  %storemerge.i.i156 = sub i32 %sub4.i37.pn.i, %9
  store i32 %storemerge.i.i156, i32* %i_left.i.i146, align 4, !tbaa !8
  %add8.i = add nuw nsw i32 %9, 1
  %cmp.i22.i = icmp sgt i32 %storemerge.i.i156, %add8.i
  br i1 %cmp.i22.i, label %if.then.i26.i, label %if.else.i34.i

if.then.i26.i:                                    ; preds = %bs_write.exit.i
  %shl.i24.i = shl i32 %13, %add8.i
  %or.i.i157 = or i32 %shl.i24.i, %inc.i
  store i32 %or.i.i157, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %sub.i25.i = sub nsw i32 %storemerge.i.i156, %add8.i
  br label %bs_write_ue_big.exit

if.else.i34.i:                                    ; preds = %bs_write.exit.i
  %sub4.i27.i = sub nsw i32 %add8.i, %storemerge.i.i156
  %shl7.i29.i = shl i32 %13, %storemerge.i.i156
  %shr.i.i158 = lshr i32 %inc.i, %sub4.i27.i
  %or8.i.i159 = or i32 %shr.i.i158, %shl7.i29.i
  %add5.i.i.i30.i = tail call i32 @llvm.bswap.i32(i32 %or8.i.i159) #9
  store i32 %add5.i.i.i30.i, i32* %12, align 4, !tbaa !9
  %14 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i32.i = getelementptr inbounds i8, i8* %14, i32 4
  store i8* %add.ptr.i32.i, i8** %p.i, align 4, !tbaa !2
  store i32 %inc.i, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %sub13.i33.i = sub nsw i32 32, %sub4.i27.i
  %15 = bitcast i8* %add.ptr.i32.i to i32*
  br label %bs_write_ue_big.exit

bs_write_ue_big.exit:                             ; preds = %if.then.i26.i, %if.else.i34.i
  %16 = phi i32* [ %15, %if.else.i34.i ], [ %12, %if.then.i26.i ]
  %17 = phi i32 [ %inc.i, %if.else.i34.i ], [ %or.i.i157, %if.then.i26.i ]
  %storemerge.i35.i = phi i32 [ %sub13.i33.i, %if.else.i34.i ], [ %sub.i25.i, %if.then.i26.i ]
  store i32 %storemerge.i35.i, i32* %i_left.i.i146, align 4, !tbaa !8
  %i_sps_id = getelementptr inbounds %struct.x264_pps_t, %struct.x264_pps_t* %pps, i32 0, i32 1
  %18 = load i32, i32* %i_sps_id, align 4, !tbaa !136
  %inc.i160 = add i32 %18, 1
  %cmp.i161 = icmp sgt i32 %inc.i160, 65535
  %shr.i162 = ashr i32 %inc.i160, 16
  %spec.select.i163 = select i1 %cmp.i161, i32 32, i32 0
  %spec.select20.i164 = select i1 %cmp.i161, i32 %shr.i162, i32 %inc.i160
  %cmp1.i165 = icmp sgt i32 %spec.select20.i164, 255
  %add.i166 = or i32 %spec.select.i163, 16
  %shr3.i167 = ashr i32 %spec.select20.i164, 8
  %size.1.i168 = select i1 %cmp1.i165, i32 %add.i166, i32 %spec.select.i163
  %tmp.1.i169 = select i1 %cmp1.i165, i32 %shr3.i167, i32 %spec.select20.i164
  %arrayidx.i170 = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %tmp.1.i169
  %19 = load i8, i8* %arrayidx.i170, align 1, !tbaa !9
  %conv.i171 = zext i8 %19 to i32
  %add5.i172 = add nuw nsw i32 %size.1.i168, %conv.i171
  %20 = lshr i32 %add5.i172, 1
  %cmp.i.i174 = icmp sgt i32 %storemerge.i35.i, %20
  br i1 %cmp.i.i174, label %if.then.i.i177, label %if.else.i.i183

if.then.i.i177:                                   ; preds = %bs_write_ue_big.exit
  %shl.i.i176 = shl i32 %17, %20
  store i32 %shl.i.i176, i32* %cur_bits.i.i148, align 4, !tbaa !10
  br label %bs_write.exit.i188

if.else.i.i183:                                   ; preds = %bs_write_ue_big.exit
  %shl7.i.i178 = shl i32 %17, %storemerge.i35.i
  %add5.i.i.i.i179 = tail call i32 @llvm.bswap.i32(i32 %shl7.i.i178) #9
  store i32 %add5.i.i.i.i179, i32* %16, align 4, !tbaa !9
  %21 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i.i181 = getelementptr inbounds i8, i8* %21, i32 4
  store i8* %add.ptr.i.i181, i8** %p.i, align 4, !tbaa !2
  store i32 0, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %sub4.i37.i182 = add i32 %storemerge.i35.i, 32
  %22 = bitcast i8* %add.ptr.i.i181 to i32*
  br label %bs_write.exit.i188

bs_write.exit.i188:                               ; preds = %if.else.i.i183, %if.then.i.i177
  %23 = phi i32* [ %22, %if.else.i.i183 ], [ %16, %if.then.i.i177 ]
  %24 = phi i32 [ 0, %if.else.i.i183 ], [ %shl.i.i176, %if.then.i.i177 ]
  %sub4.i37.pn.i184 = phi i32 [ %sub4.i37.i182, %if.else.i.i183 ], [ %storemerge.i35.i, %if.then.i.i177 ]
  %storemerge.i.i185 = sub i32 %sub4.i37.pn.i184, %20
  store i32 %storemerge.i.i185, i32* %i_left.i.i146, align 4, !tbaa !8
  %add8.i186 = add nuw nsw i32 %20, 1
  %cmp.i22.i187 = icmp sgt i32 %storemerge.i.i185, %add8.i186
  br i1 %cmp.i22.i187, label %if.then.i26.i192, label %if.else.i34.i201

if.then.i26.i192:                                 ; preds = %bs_write.exit.i188
  %shl.i24.i189 = shl i32 %24, %add8.i186
  %or.i.i190 = or i32 %shl.i24.i189, %inc.i160
  store i32 %or.i.i190, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %sub.i25.i191 = sub nsw i32 %storemerge.i.i185, %add8.i186
  br label %bs_write_ue_big.exit203

if.else.i34.i201:                                 ; preds = %bs_write.exit.i188
  %sub4.i27.i193 = sub nsw i32 %add8.i186, %storemerge.i.i185
  %shl7.i29.i194 = shl i32 %24, %storemerge.i.i185
  %shr.i.i195 = lshr i32 %inc.i160, %sub4.i27.i193
  %or8.i.i196 = or i32 %shr.i.i195, %shl7.i29.i194
  %add5.i.i.i30.i197 = tail call i32 @llvm.bswap.i32(i32 %or8.i.i196) #9
  store i32 %add5.i.i.i30.i197, i32* %23, align 4, !tbaa !9
  %25 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i32.i199 = getelementptr inbounds i8, i8* %25, i32 4
  store i8* %add.ptr.i32.i199, i8** %p.i, align 4, !tbaa !2
  store i32 %inc.i160, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %sub13.i33.i200 = sub nsw i32 32, %sub4.i27.i193
  %26 = bitcast i8* %add.ptr.i32.i199 to i32*
  br label %bs_write_ue_big.exit203

bs_write_ue_big.exit203:                          ; preds = %if.then.i26.i192, %if.else.i34.i201
  %27 = phi i32* [ %26, %if.else.i34.i201 ], [ %23, %if.then.i26.i192 ]
  %28 = phi i32 [ %inc.i160, %if.else.i34.i201 ], [ %or.i.i190, %if.then.i26.i192 ]
  %storemerge.i35.i202 = phi i32 [ %sub13.i33.i200, %if.else.i34.i201 ], [ %sub.i25.i191, %if.then.i26.i192 ]
  %b_cabac = getelementptr inbounds %struct.x264_pps_t, %struct.x264_pps_t* %pps, i32 0, i32 2
  %29 = load i32, i32* %b_cabac, align 4, !tbaa !137
  %shl.i205 = shl i32 %28, 1
  %or.i = or i32 %shl.i205, %29
  store i32 %or.i, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %dec.i207 = add nsw i32 %storemerge.i35.i202, -1
  store i32 %dec.i207, i32* %i_left.i.i146, align 4, !tbaa !8
  %cmp.i208 = icmp eq i32 %dec.i207, 0
  br i1 %cmp.i208, label %if.then.i212, label %bs_write1.exit213

if.then.i212:                                     ; preds = %bs_write_ue_big.exit203
  %add5.i.i209 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  store i32 %add5.i.i209, i32* %27, align 4, !tbaa !9
  %30 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i211 = getelementptr inbounds i8, i8* %30, i32 4
  store i8* %add.ptr.i211, i8** %p.i, align 4, !tbaa !2
  store i32 32, i32* %i_left.i.i146, align 4, !tbaa !8
  %.pre587 = load i32, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %31 = bitcast i8* %add.ptr.i211 to i32*
  br label %bs_write1.exit213

bs_write1.exit213:                                ; preds = %bs_write_ue_big.exit203, %if.then.i212
  %32 = phi i32* [ %27, %bs_write_ue_big.exit203 ], [ %31, %if.then.i212 ]
  %33 = phi i32 [ %dec.i207, %bs_write_ue_big.exit203 ], [ 32, %if.then.i212 ]
  %34 = phi i32 [ %or.i, %bs_write_ue_big.exit203 ], [ %.pre587, %if.then.i212 ]
  %b_pic_order = getelementptr inbounds %struct.x264_pps_t, %struct.x264_pps_t* %pps, i32 0, i32 3
  %35 = load i32, i32* %b_pic_order, align 4, !tbaa !138
  %shl.i225 = shl i32 %34, 1
  %or.i226 = or i32 %shl.i225, %35
  store i32 %or.i226, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %dec.i228 = add nsw i32 %33, -1
  store i32 %dec.i228, i32* %i_left.i.i146, align 4, !tbaa !8
  %cmp.i229 = icmp eq i32 %dec.i228, 0
  br i1 %cmp.i229, label %if.then.i233, label %bs_write1.exit234

if.then.i233:                                     ; preds = %bs_write1.exit213
  %add5.i.i230 = tail call i32 @llvm.bswap.i32(i32 %or.i226) #9
  store i32 %add5.i.i230, i32* %32, align 4, !tbaa !9
  %36 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i232 = getelementptr inbounds i8, i8* %36, i32 4
  store i8* %add.ptr.i232, i8** %p.i, align 4, !tbaa !2
  store i32 32, i32* %i_left.i.i146, align 4, !tbaa !8
  %.pre588 = load i32, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %37 = bitcast i8* %add.ptr.i232 to i32*
  br label %bs_write1.exit234

bs_write1.exit234:                                ; preds = %bs_write1.exit213, %if.then.i233
  %38 = phi i32* [ %32, %bs_write1.exit213 ], [ %37, %if.then.i233 ]
  %39 = phi i32 [ %or.i226, %bs_write1.exit213 ], [ %.pre588, %if.then.i233 ]
  %40 = phi i32 [ %dec.i228, %bs_write1.exit213 ], [ 32, %if.then.i233 ]
  %i_num_slice_groups = getelementptr inbounds %struct.x264_pps_t, %struct.x264_pps_t* %pps, i32 0, i32 4
  %41 = load i32, i32* %i_num_slice_groups, align 4, !tbaa !139
  %cmp.i245 = icmp sgt i32 %41, 65535
  %shr.i246 = ashr i32 %41, 16
  %spec.select.i247 = select i1 %cmp.i245, i32 32, i32 0
  %spec.select20.i248 = select i1 %cmp.i245, i32 %shr.i246, i32 %41
  %cmp1.i249 = icmp sgt i32 %spec.select20.i248, 255
  %add.i250 = or i32 %spec.select.i247, 16
  %shr3.i251 = ashr i32 %spec.select20.i248, 8
  %size.1.i252 = select i1 %cmp1.i249, i32 %add.i250, i32 %spec.select.i247
  %tmp.1.i253 = select i1 %cmp1.i249, i32 %shr3.i251, i32 %spec.select20.i248
  %arrayidx.i254 = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %tmp.1.i253
  %42 = load i8, i8* %arrayidx.i254, align 1, !tbaa !9
  %conv.i255 = zext i8 %42 to i32
  %add5.i256 = add nuw nsw i32 %size.1.i252, %conv.i255
  %43 = lshr i32 %add5.i256, 1
  %cmp.i.i258 = icmp sgt i32 %40, %43
  br i1 %cmp.i.i258, label %if.then.i.i261, label %if.else.i.i267

if.then.i.i261:                                   ; preds = %bs_write1.exit234
  %shl.i.i260 = shl i32 %39, %43
  store i32 %shl.i.i260, i32* %cur_bits.i.i148, align 4, !tbaa !10
  br label %bs_write.exit.i272

if.else.i.i267:                                   ; preds = %bs_write1.exit234
  %shl7.i.i262 = shl i32 %39, %40
  %add5.i.i.i.i263 = tail call i32 @llvm.bswap.i32(i32 %shl7.i.i262) #9
  store i32 %add5.i.i.i.i263, i32* %38, align 4, !tbaa !9
  %44 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i.i265 = getelementptr inbounds i8, i8* %44, i32 4
  store i8* %add.ptr.i.i265, i8** %p.i, align 4, !tbaa !2
  store i32 0, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %sub4.i37.i266 = add i32 %40, 32
  %45 = bitcast i8* %add.ptr.i.i265 to i32*
  br label %bs_write.exit.i272

bs_write.exit.i272:                               ; preds = %if.else.i.i267, %if.then.i.i261
  %46 = phi i32* [ %45, %if.else.i.i267 ], [ %38, %if.then.i.i261 ]
  %47 = phi i32 [ 0, %if.else.i.i267 ], [ %shl.i.i260, %if.then.i.i261 ]
  %sub4.i37.pn.i268 = phi i32 [ %sub4.i37.i266, %if.else.i.i267 ], [ %40, %if.then.i.i261 ]
  %storemerge.i.i269 = sub i32 %sub4.i37.pn.i268, %43
  store i32 %storemerge.i.i269, i32* %i_left.i.i146, align 4, !tbaa !8
  %add8.i270 = add nuw nsw i32 %43, 1
  %cmp.i22.i271 = icmp sgt i32 %storemerge.i.i269, %add8.i270
  br i1 %cmp.i22.i271, label %if.then.i26.i276, label %if.else.i34.i285

if.then.i26.i276:                                 ; preds = %bs_write.exit.i272
  %shl.i24.i273 = shl i32 %47, %add8.i270
  %or.i.i274 = or i32 %shl.i24.i273, %41
  store i32 %or.i.i274, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %sub.i25.i275 = sub nsw i32 %storemerge.i.i269, %add8.i270
  br label %bs_write_ue_big.exit287

if.else.i34.i285:                                 ; preds = %bs_write.exit.i272
  %sub4.i27.i277 = sub nsw i32 %add8.i270, %storemerge.i.i269
  %shl7.i29.i278 = shl i32 %47, %storemerge.i.i269
  %shr.i.i279 = lshr i32 %41, %sub4.i27.i277
  %or8.i.i280 = or i32 %shr.i.i279, %shl7.i29.i278
  %add5.i.i.i30.i281 = tail call i32 @llvm.bswap.i32(i32 %or8.i.i280) #9
  store i32 %add5.i.i.i30.i281, i32* %46, align 4, !tbaa !9
  %48 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i32.i283 = getelementptr inbounds i8, i8* %48, i32 4
  store i8* %add.ptr.i32.i283, i8** %p.i, align 4, !tbaa !2
  store i32 %41, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %sub13.i33.i284 = sub nsw i32 32, %sub4.i27.i277
  %49 = bitcast i8* %add.ptr.i32.i283 to i32*
  br label %bs_write_ue_big.exit287

bs_write_ue_big.exit287:                          ; preds = %if.then.i26.i276, %if.else.i34.i285
  %50 = phi i32* [ %49, %if.else.i34.i285 ], [ %46, %if.then.i26.i276 ]
  %51 = phi i32 [ %41, %if.else.i34.i285 ], [ %or.i.i274, %if.then.i26.i276 ]
  %storemerge.i35.i286 = phi i32 [ %sub13.i33.i284, %if.else.i34.i285 ], [ %sub.i25.i275, %if.then.i26.i276 ]
  store i32 %storemerge.i35.i286, i32* %i_left.i.i146, align 4, !tbaa !8
  %i_num_ref_idx_l0_default_active = getelementptr inbounds %struct.x264_pps_t, %struct.x264_pps_t* %pps, i32 0, i32 5
  %52 = load i32, i32* %i_num_ref_idx_l0_default_active, align 4, !tbaa !140
  %cmp.i288 = icmp sgt i32 %52, 65535
  %shr.i289 = ashr i32 %52, 16
  %spec.select.i290 = select i1 %cmp.i288, i32 32, i32 0
  %spec.select20.i291 = select i1 %cmp.i288, i32 %shr.i289, i32 %52
  %cmp1.i292 = icmp sgt i32 %spec.select20.i291, 255
  %add.i293 = or i32 %spec.select.i290, 16
  %shr3.i294 = ashr i32 %spec.select20.i291, 8
  %size.1.i295 = select i1 %cmp1.i292, i32 %add.i293, i32 %spec.select.i290
  %tmp.1.i296 = select i1 %cmp1.i292, i32 %shr3.i294, i32 %spec.select20.i291
  %arrayidx.i297 = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %tmp.1.i296
  %53 = load i8, i8* %arrayidx.i297, align 1, !tbaa !9
  %conv.i298 = zext i8 %53 to i32
  %add5.i299 = add nuw nsw i32 %size.1.i295, %conv.i298
  %54 = lshr i32 %add5.i299, 1
  %cmp.i.i301 = icmp sgt i32 %storemerge.i35.i286, %54
  br i1 %cmp.i.i301, label %if.then.i.i304, label %if.else.i.i310

if.then.i.i304:                                   ; preds = %bs_write_ue_big.exit287
  %shl.i.i303 = shl i32 %51, %54
  store i32 %shl.i.i303, i32* %cur_bits.i.i148, align 4, !tbaa !10
  br label %bs_write.exit.i315

if.else.i.i310:                                   ; preds = %bs_write_ue_big.exit287
  %shl7.i.i305 = shl i32 %51, %storemerge.i35.i286
  %add5.i.i.i.i306 = tail call i32 @llvm.bswap.i32(i32 %shl7.i.i305) #9
  store i32 %add5.i.i.i.i306, i32* %50, align 4, !tbaa !9
  %55 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i.i308 = getelementptr inbounds i8, i8* %55, i32 4
  store i8* %add.ptr.i.i308, i8** %p.i, align 4, !tbaa !2
  store i32 0, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %sub4.i37.i309 = add i32 %storemerge.i35.i286, 32
  %56 = bitcast i8* %add.ptr.i.i308 to i32*
  br label %bs_write.exit.i315

bs_write.exit.i315:                               ; preds = %if.else.i.i310, %if.then.i.i304
  %57 = phi i32* [ %56, %if.else.i.i310 ], [ %50, %if.then.i.i304 ]
  %58 = phi i32 [ 0, %if.else.i.i310 ], [ %shl.i.i303, %if.then.i.i304 ]
  %sub4.i37.pn.i311 = phi i32 [ %sub4.i37.i309, %if.else.i.i310 ], [ %storemerge.i35.i286, %if.then.i.i304 ]
  %storemerge.i.i312 = sub i32 %sub4.i37.pn.i311, %54
  store i32 %storemerge.i.i312, i32* %i_left.i.i146, align 4, !tbaa !8
  %add8.i313 = add nuw nsw i32 %54, 1
  %cmp.i22.i314 = icmp sgt i32 %storemerge.i.i312, %add8.i313
  br i1 %cmp.i22.i314, label %if.then.i26.i319, label %if.else.i34.i328

if.then.i26.i319:                                 ; preds = %bs_write.exit.i315
  %shl.i24.i316 = shl i32 %58, %add8.i313
  %or.i.i317 = or i32 %shl.i24.i316, %52
  store i32 %or.i.i317, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %sub.i25.i318 = sub nsw i32 %storemerge.i.i312, %add8.i313
  br label %bs_write_ue_big.exit330

if.else.i34.i328:                                 ; preds = %bs_write.exit.i315
  %sub4.i27.i320 = sub nsw i32 %add8.i313, %storemerge.i.i312
  %shl7.i29.i321 = shl i32 %58, %storemerge.i.i312
  %shr.i.i322 = lshr i32 %52, %sub4.i27.i320
  %or8.i.i323 = or i32 %shr.i.i322, %shl7.i29.i321
  %add5.i.i.i30.i324 = tail call i32 @llvm.bswap.i32(i32 %or8.i.i323) #9
  store i32 %add5.i.i.i30.i324, i32* %57, align 4, !tbaa !9
  %59 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i32.i326 = getelementptr inbounds i8, i8* %59, i32 4
  store i8* %add.ptr.i32.i326, i8** %p.i, align 4, !tbaa !2
  store i32 %52, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %sub13.i33.i327 = sub nsw i32 32, %sub4.i27.i320
  %60 = bitcast i8* %add.ptr.i32.i326 to i32*
  br label %bs_write_ue_big.exit330

bs_write_ue_big.exit330:                          ; preds = %if.then.i26.i319, %if.else.i34.i328
  %61 = phi i32* [ %60, %if.else.i34.i328 ], [ %57, %if.then.i26.i319 ]
  %62 = phi i32 [ %52, %if.else.i34.i328 ], [ %or.i.i317, %if.then.i26.i319 ]
  %storemerge.i35.i329 = phi i32 [ %sub13.i33.i327, %if.else.i34.i328 ], [ %sub.i25.i318, %if.then.i26.i319 ]
  store i32 %storemerge.i35.i329, i32* %i_left.i.i146, align 4, !tbaa !8
  %i_num_ref_idx_l1_default_active = getelementptr inbounds %struct.x264_pps_t, %struct.x264_pps_t* %pps, i32 0, i32 6
  %63 = load i32, i32* %i_num_ref_idx_l1_default_active, align 4, !tbaa !141
  %cmp.i371 = icmp sgt i32 %63, 65535
  %shr.i372 = ashr i32 %63, 16
  %spec.select.i373 = select i1 %cmp.i371, i32 32, i32 0
  %spec.select20.i374 = select i1 %cmp.i371, i32 %shr.i372, i32 %63
  %cmp1.i375 = icmp sgt i32 %spec.select20.i374, 255
  %add.i376 = or i32 %spec.select.i373, 16
  %shr3.i377 = ashr i32 %spec.select20.i374, 8
  %size.1.i378 = select i1 %cmp1.i375, i32 %add.i376, i32 %spec.select.i373
  %tmp.1.i379 = select i1 %cmp1.i375, i32 %shr3.i377, i32 %spec.select20.i374
  %arrayidx.i380 = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %tmp.1.i379
  %64 = load i8, i8* %arrayidx.i380, align 1, !tbaa !9
  %conv.i381 = zext i8 %64 to i32
  %add5.i382 = add nuw nsw i32 %size.1.i378, %conv.i381
  %65 = lshr i32 %add5.i382, 1
  %cmp.i.i384 = icmp sgt i32 %storemerge.i35.i329, %65
  br i1 %cmp.i.i384, label %if.then.i.i387, label %if.else.i.i393

if.then.i.i387:                                   ; preds = %bs_write_ue_big.exit330
  %shl.i.i386 = shl i32 %62, %65
  store i32 %shl.i.i386, i32* %cur_bits.i.i148, align 4, !tbaa !10
  br label %bs_write.exit.i398

if.else.i.i393:                                   ; preds = %bs_write_ue_big.exit330
  %shl7.i.i388 = shl i32 %62, %storemerge.i35.i329
  %add5.i.i.i.i389 = tail call i32 @llvm.bswap.i32(i32 %shl7.i.i388) #9
  store i32 %add5.i.i.i.i389, i32* %61, align 4, !tbaa !9
  %66 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i.i391 = getelementptr inbounds i8, i8* %66, i32 4
  store i8* %add.ptr.i.i391, i8** %p.i, align 4, !tbaa !2
  store i32 0, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %sub4.i37.i392 = add i32 %storemerge.i35.i329, 32
  %67 = bitcast i8* %add.ptr.i.i391 to i32*
  br label %bs_write.exit.i398

bs_write.exit.i398:                               ; preds = %if.else.i.i393, %if.then.i.i387
  %68 = phi i32* [ %67, %if.else.i.i393 ], [ %61, %if.then.i.i387 ]
  %69 = phi i32 [ 0, %if.else.i.i393 ], [ %shl.i.i386, %if.then.i.i387 ]
  %sub4.i37.pn.i394 = phi i32 [ %sub4.i37.i392, %if.else.i.i393 ], [ %storemerge.i35.i329, %if.then.i.i387 ]
  %storemerge.i.i395 = sub i32 %sub4.i37.pn.i394, %65
  store i32 %storemerge.i.i395, i32* %i_left.i.i146, align 4, !tbaa !8
  %add8.i396 = add nuw nsw i32 %65, 1
  %cmp.i22.i397 = icmp sgt i32 %storemerge.i.i395, %add8.i396
  br i1 %cmp.i22.i397, label %if.then.i26.i402, label %if.else.i34.i411

if.then.i26.i402:                                 ; preds = %bs_write.exit.i398
  %shl.i24.i399 = shl i32 %69, %add8.i396
  %or.i.i400 = or i32 %shl.i24.i399, %63
  store i32 %or.i.i400, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %sub.i25.i401 = sub nsw i32 %storemerge.i.i395, %add8.i396
  br label %bs_write_ue_big.exit413

if.else.i34.i411:                                 ; preds = %bs_write.exit.i398
  %sub4.i27.i403 = sub nsw i32 %add8.i396, %storemerge.i.i395
  %shl7.i29.i404 = shl i32 %69, %storemerge.i.i395
  %shr.i.i405 = lshr i32 %63, %sub4.i27.i403
  %or8.i.i406 = or i32 %shr.i.i405, %shl7.i29.i404
  %add5.i.i.i30.i407 = tail call i32 @llvm.bswap.i32(i32 %or8.i.i406) #9
  store i32 %add5.i.i.i30.i407, i32* %68, align 4, !tbaa !9
  %70 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i32.i409 = getelementptr inbounds i8, i8* %70, i32 4
  store i8* %add.ptr.i32.i409, i8** %p.i, align 4, !tbaa !2
  store i32 %63, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %sub13.i33.i410 = sub nsw i32 32, %sub4.i27.i403
  %71 = bitcast i8* %add.ptr.i32.i409 to i32*
  br label %bs_write_ue_big.exit413

bs_write_ue_big.exit413:                          ; preds = %if.then.i26.i402, %if.else.i34.i411
  %72 = phi i32* [ %71, %if.else.i34.i411 ], [ %68, %if.then.i26.i402 ]
  %73 = phi i32 [ %63, %if.else.i34.i411 ], [ %or.i.i400, %if.then.i26.i402 ]
  %storemerge.i35.i412 = phi i32 [ %sub13.i33.i410, %if.else.i34.i411 ], [ %sub.i25.i401, %if.then.i26.i402 ]
  %b_weighted_pred = getelementptr inbounds %struct.x264_pps_t, %struct.x264_pps_t* %pps, i32 0, i32 7
  %74 = load i32, i32* %b_weighted_pred, align 4, !tbaa !142
  %shl.i415 = shl i32 %73, 1
  %or.i416 = or i32 %shl.i415, %74
  store i32 %or.i416, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %dec.i418 = add nsw i32 %storemerge.i35.i412, -1
  store i32 %dec.i418, i32* %i_left.i.i146, align 4, !tbaa !8
  %cmp.i419 = icmp eq i32 %dec.i418, 0
  br i1 %cmp.i419, label %bs_write1.exit424.thread, label %bs_write1.exit424

bs_write1.exit424.thread:                         ; preds = %bs_write_ue_big.exit413
  %add5.i.i420 = tail call i32 @llvm.bswap.i32(i32 %or.i416) #9
  store i32 %add5.i.i420, i32* %72, align 4, !tbaa !9
  %75 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i422 = getelementptr inbounds i8, i8* %75, i32 4
  store i8* %add.ptr.i422, i8** %p.i, align 4, !tbaa !2
  store i32 32, i32* %i_left.i.i146, align 4, !tbaa !8
  %b_weighted_bipred584 = getelementptr inbounds %struct.x264_pps_t, %struct.x264_pps_t* %pps, i32 0, i32 8
  %76 = load i32, i32* %b_weighted_bipred584, align 4, !tbaa !144
  %.pre589 = load i32, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %77 = bitcast i8* %add.ptr.i422 to i32*
  br label %if.then.i431

bs_write1.exit424:                                ; preds = %bs_write_ue_big.exit413
  %b_weighted_bipred = getelementptr inbounds %struct.x264_pps_t, %struct.x264_pps_t* %pps, i32 0, i32 8
  %78 = load i32, i32* %b_weighted_bipred, align 4, !tbaa !144
  %cmp.i426 = icmp sgt i32 %storemerge.i35.i412, 3
  br i1 %cmp.i426, label %if.then.i431, label %if.else.i

if.then.i431:                                     ; preds = %bs_write1.exit424.thread, %bs_write1.exit424
  %79 = phi i32* [ %77, %bs_write1.exit424.thread ], [ %72, %bs_write1.exit424 ]
  %80 = phi i32 [ %.pre589, %bs_write1.exit424.thread ], [ %or.i416, %bs_write1.exit424 ]
  %81 = phi i32 [ %76, %bs_write1.exit424.thread ], [ %78, %bs_write1.exit424 ]
  %82 = phi i32 [ 32, %bs_write1.exit424.thread ], [ %dec.i418, %bs_write1.exit424 ]
  %shl.i428 = shl i32 %80, 2
  %or.i429 = or i32 %shl.i428, %81
  store i32 %or.i429, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %sub.i430 = add nsw i32 %82, -2
  br label %bs_write.exit

if.else.i:                                        ; preds = %bs_write1.exit424
  %sub4.i = sub i32 3, %storemerge.i35.i412
  %shl7.i = shl i32 %or.i416, %dec.i418
  %shr.i432 = lshr i32 %78, %sub4.i
  %or8.i = or i32 %shl7.i, %shr.i432
  %add5.i.i.i433 = tail call i32 @llvm.bswap.i32(i32 %or8.i) #9
  store i32 %add5.i.i.i433, i32* %72, align 4, !tbaa !9
  %83 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i435 = getelementptr inbounds i8, i8* %83, i32 4
  store i8* %add.ptr.i435, i8** %p.i, align 4, !tbaa !2
  store i32 %78, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %sub13.i = add nsw i32 %storemerge.i35.i412, 29
  %84 = bitcast i8* %add.ptr.i435 to i32*
  br label %bs_write.exit

bs_write.exit:                                    ; preds = %if.then.i431, %if.else.i
  %85 = phi i32* [ %84, %if.else.i ], [ %79, %if.then.i431 ]
  %86 = phi i32 [ %78, %if.else.i ], [ %or.i429, %if.then.i431 ]
  %storemerge.i = phi i32 [ %sub13.i, %if.else.i ], [ %sub.i430, %if.then.i431 ]
  store i32 %storemerge.i, i32* %i_left.i.i146, align 4, !tbaa !8
  %i_pic_init_qp = getelementptr inbounds %struct.x264_pps_t, %struct.x264_pps_t* %pps, i32 0, i32 9
  %87 = load i32, i32* %i_pic_init_qp, align 4, !tbaa !146
  %sub3 = shl i32 %87, 1
  %mul.i553 = add i32 %sub3, -52
  %sub.i554 = sub i32 53, %sub3
  %cmp.i555 = icmp sgt i32 %87, 26
  %spec.select.i556 = select i1 %cmp.i555, i32 %mul.i553, i32 %sub.i554
  %cmp2.i557 = icmp sgt i32 %spec.select.i556, 255
  %shr.i558 = ashr i32 %spec.select.i556, 8
  %size.0.i559 = select i1 %cmp2.i557, i32 16, i32 0
  %tmp.1.i560 = select i1 %cmp2.i557, i32 %shr.i558, i32 %spec.select.i556
  %arrayidx.i561 = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %tmp.1.i560
  %88 = load i8, i8* %arrayidx.i561, align 1, !tbaa !9
  %conv.i562 = zext i8 %88 to i32
  %add.i563 = add nuw nsw i32 %size.0.i559, %conv.i562
  %cmp.i.i565 = icmp sgt i32 %storemerge.i, %add.i563
  br i1 %cmp.i.i565, label %if.then.i.i570, label %if.else.i.i580

if.then.i.i570:                                   ; preds = %bs_write.exit
  %shl.i.i567 = shl i32 %86, %add.i563
  %or.i.i568 = or i32 %shl.i.i567, %spec.select.i556
  store i32 %or.i.i568, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %sub.i.i569 = sub nsw i32 %storemerge.i, %add.i563
  br label %bs_write_se.exit583

if.else.i.i580:                                   ; preds = %bs_write.exit
  %sub4.i.i571 = sub nsw i32 %add.i563, %storemerge.i
  %shl7.i.i573 = shl i32 %86, %storemerge.i
  %shr.i.i574 = lshr i32 %spec.select.i556, %sub4.i.i571
  %or8.i.i575 = or i32 %shl7.i.i573, %shr.i.i574
  %add5.i.i.i.i576 = tail call i32 @llvm.bswap.i32(i32 %or8.i.i575) #9
  store i32 %add5.i.i.i.i576, i32* %85, align 4, !tbaa !9
  %89 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i.i578 = getelementptr inbounds i8, i8* %89, i32 4
  store i8* %add.ptr.i.i578, i8** %p.i, align 4, !tbaa !2
  store i32 %spec.select.i556, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %sub13.i.i579 = sub nsw i32 32, %sub4.i.i571
  %90 = bitcast i8* %add.ptr.i.i578 to i32*
  br label %bs_write_se.exit583

bs_write_se.exit583:                              ; preds = %if.then.i.i570, %if.else.i.i580
  %91 = phi i32* [ %90, %if.else.i.i580 ], [ %85, %if.then.i.i570 ]
  %92 = phi i32 [ %spec.select.i556, %if.else.i.i580 ], [ %or.i.i568, %if.then.i.i570 ]
  %storemerge.i.i581 = phi i32 [ %sub13.i.i579, %if.else.i.i580 ], [ %sub.i.i569, %if.then.i.i570 ]
  store i32 %storemerge.i.i581, i32* %i_left.i.i146, align 4, !tbaa !8
  %i_pic_init_qs = getelementptr inbounds %struct.x264_pps_t, %struct.x264_pps_t* %pps, i32 0, i32 10
  %93 = load i32, i32* %i_pic_init_qs, align 4, !tbaa !147
  %sub5 = shl i32 %93, 1
  %mul.i522 = add i32 %sub5, -52
  %sub.i523 = sub i32 53, %sub5
  %cmp.i524 = icmp sgt i32 %93, 26
  %spec.select.i525 = select i1 %cmp.i524, i32 %mul.i522, i32 %sub.i523
  %cmp2.i526 = icmp sgt i32 %spec.select.i525, 255
  %shr.i527 = ashr i32 %spec.select.i525, 8
  %size.0.i528 = select i1 %cmp2.i526, i32 16, i32 0
  %tmp.1.i529 = select i1 %cmp2.i526, i32 %shr.i527, i32 %spec.select.i525
  %arrayidx.i530 = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %tmp.1.i529
  %94 = load i8, i8* %arrayidx.i530, align 1, !tbaa !9
  %conv.i531 = zext i8 %94 to i32
  %add.i532 = add nuw nsw i32 %size.0.i528, %conv.i531
  %cmp.i.i534 = icmp sgt i32 %storemerge.i.i581, %add.i532
  br i1 %cmp.i.i534, label %if.then.i.i539, label %if.else.i.i549

if.then.i.i539:                                   ; preds = %bs_write_se.exit583
  %shl.i.i536 = shl i32 %92, %add.i532
  %or.i.i537 = or i32 %shl.i.i536, %spec.select.i525
  store i32 %or.i.i537, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %sub.i.i538 = sub nsw i32 %storemerge.i.i581, %add.i532
  br label %bs_write_se.exit552

if.else.i.i549:                                   ; preds = %bs_write_se.exit583
  %sub4.i.i540 = sub nsw i32 %add.i532, %storemerge.i.i581
  %shl7.i.i542 = shl i32 %92, %storemerge.i.i581
  %shr.i.i543 = lshr i32 %spec.select.i525, %sub4.i.i540
  %or8.i.i544 = or i32 %shl7.i.i542, %shr.i.i543
  %add5.i.i.i.i545 = tail call i32 @llvm.bswap.i32(i32 %or8.i.i544) #9
  store i32 %add5.i.i.i.i545, i32* %91, align 4, !tbaa !9
  %95 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i.i547 = getelementptr inbounds i8, i8* %95, i32 4
  store i8* %add.ptr.i.i547, i8** %p.i, align 4, !tbaa !2
  store i32 %spec.select.i525, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %sub13.i.i548 = sub nsw i32 32, %sub4.i.i540
  %96 = bitcast i8* %add.ptr.i.i547 to i32*
  br label %bs_write_se.exit552

bs_write_se.exit552:                              ; preds = %if.then.i.i539, %if.else.i.i549
  %97 = phi i32* [ %96, %if.else.i.i549 ], [ %91, %if.then.i.i539 ]
  %98 = phi i32 [ %spec.select.i525, %if.else.i.i549 ], [ %or.i.i537, %if.then.i.i539 ]
  %storemerge.i.i550 = phi i32 [ %sub13.i.i548, %if.else.i.i549 ], [ %sub.i.i538, %if.then.i.i539 ]
  store i32 %storemerge.i.i550, i32* %i_left.i.i146, align 4, !tbaa !8
  %i_chroma_qp_index_offset = getelementptr inbounds %struct.x264_pps_t, %struct.x264_pps_t* %pps, i32 0, i32 11
  %99 = load i32, i32* %i_chroma_qp_index_offset, align 4, !tbaa !149
  %mul.i491 = shl nsw i32 %99, 1
  %sub.i492 = sub nsw i32 1, %mul.i491
  %cmp.i493 = icmp sgt i32 %99, 0
  %spec.select.i494 = select i1 %cmp.i493, i32 %mul.i491, i32 %sub.i492
  %cmp2.i495 = icmp sgt i32 %spec.select.i494, 255
  %shr.i496 = ashr i32 %spec.select.i494, 8
  %size.0.i497 = select i1 %cmp2.i495, i32 16, i32 0
  %tmp.1.i498 = select i1 %cmp2.i495, i32 %shr.i496, i32 %spec.select.i494
  %arrayidx.i499 = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %tmp.1.i498
  %100 = load i8, i8* %arrayidx.i499, align 1, !tbaa !9
  %conv.i500 = zext i8 %100 to i32
  %add.i501 = add nuw nsw i32 %size.0.i497, %conv.i500
  %cmp.i.i503 = icmp sgt i32 %storemerge.i.i550, %add.i501
  br i1 %cmp.i.i503, label %if.then.i.i508, label %if.else.i.i518

if.then.i.i508:                                   ; preds = %bs_write_se.exit552
  %shl.i.i505 = shl i32 %98, %add.i501
  %or.i.i506 = or i32 %shl.i.i505, %spec.select.i494
  store i32 %or.i.i506, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %sub.i.i507 = sub nsw i32 %storemerge.i.i550, %add.i501
  br label %bs_write_se.exit521

if.else.i.i518:                                   ; preds = %bs_write_se.exit552
  %sub4.i.i509 = sub nsw i32 %add.i501, %storemerge.i.i550
  %shl7.i.i511 = shl i32 %98, %storemerge.i.i550
  %shr.i.i512 = lshr i32 %spec.select.i494, %sub4.i.i509
  %or8.i.i513 = or i32 %shl7.i.i511, %shr.i.i512
  %add5.i.i.i.i514 = tail call i32 @llvm.bswap.i32(i32 %or8.i.i513) #9
  store i32 %add5.i.i.i.i514, i32* %97, align 4, !tbaa !9
  %101 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i.i516 = getelementptr inbounds i8, i8* %101, i32 4
  store i8* %add.ptr.i.i516, i8** %p.i, align 4, !tbaa !2
  store i32 %spec.select.i494, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %sub13.i.i517 = sub nsw i32 32, %sub4.i.i509
  %102 = bitcast i8* %add.ptr.i.i516 to i32*
  br label %bs_write_se.exit521

bs_write_se.exit521:                              ; preds = %if.then.i.i508, %if.else.i.i518
  %103 = phi i32* [ %102, %if.else.i.i518 ], [ %97, %if.then.i.i508 ]
  %104 = phi i32 [ %spec.select.i494, %if.else.i.i518 ], [ %or.i.i506, %if.then.i.i508 ]
  %storemerge.i.i519 = phi i32 [ %sub13.i.i517, %if.else.i.i518 ], [ %sub.i.i507, %if.then.i.i508 ]
  %b_deblocking_filter_control = getelementptr inbounds %struct.x264_pps_t, %struct.x264_pps_t* %pps, i32 0, i32 12
  %105 = load i32, i32* %b_deblocking_filter_control, align 4, !tbaa !150
  %shl.i481 = shl i32 %104, 1
  %or.i482 = or i32 %shl.i481, %105
  store i32 %or.i482, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %dec.i484 = add nsw i32 %storemerge.i.i519, -1
  store i32 %dec.i484, i32* %i_left.i.i146, align 4, !tbaa !8
  %cmp.i485 = icmp eq i32 %dec.i484, 0
  br i1 %cmp.i485, label %if.then.i489, label %bs_write1.exit490

if.then.i489:                                     ; preds = %bs_write_se.exit521
  %add5.i.i486 = tail call i32 @llvm.bswap.i32(i32 %or.i482) #9
  store i32 %add5.i.i486, i32* %103, align 4, !tbaa !9
  %106 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i488 = getelementptr inbounds i8, i8* %106, i32 4
  store i8* %add.ptr.i488, i8** %p.i, align 4, !tbaa !2
  store i32 32, i32* %i_left.i.i146, align 4, !tbaa !8
  %.pre590 = load i32, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %107 = bitcast i8* %add.ptr.i488 to i32*
  br label %bs_write1.exit490

bs_write1.exit490:                                ; preds = %bs_write_se.exit521, %if.then.i489
  %108 = phi i32* [ %103, %bs_write_se.exit521 ], [ %107, %if.then.i489 ]
  %109 = phi i32 [ %dec.i484, %bs_write_se.exit521 ], [ 32, %if.then.i489 ]
  %110 = phi i32 [ %or.i482, %bs_write_se.exit521 ], [ %.pre590, %if.then.i489 ]
  %b_constrained_intra_pred = getelementptr inbounds %struct.x264_pps_t, %struct.x264_pps_t* %pps, i32 0, i32 13
  %111 = load i32, i32* %b_constrained_intra_pred, align 4, !tbaa !152
  %shl.i470 = shl i32 %110, 1
  %or.i471 = or i32 %shl.i470, %111
  store i32 %or.i471, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %dec.i473 = add nsw i32 %109, -1
  store i32 %dec.i473, i32* %i_left.i.i146, align 4, !tbaa !8
  %cmp.i474 = icmp eq i32 %dec.i473, 0
  br i1 %cmp.i474, label %if.then.i478, label %bs_write1.exit479

if.then.i478:                                     ; preds = %bs_write1.exit490
  %add5.i.i475 = tail call i32 @llvm.bswap.i32(i32 %or.i471) #9
  store i32 %add5.i.i475, i32* %108, align 4, !tbaa !9
  %112 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i477 = getelementptr inbounds i8, i8* %112, i32 4
  store i8* %add.ptr.i477, i8** %p.i, align 4, !tbaa !2
  store i32 32, i32* %i_left.i.i146, align 4, !tbaa !8
  %.pre591 = load i32, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %113 = bitcast i8* %add.ptr.i477 to i32*
  br label %bs_write1.exit479

bs_write1.exit479:                                ; preds = %bs_write1.exit490, %if.then.i478
  %114 = phi i32* [ %108, %bs_write1.exit490 ], [ %113, %if.then.i478 ]
  %115 = phi i32 [ %dec.i473, %bs_write1.exit490 ], [ 32, %if.then.i478 ]
  %116 = phi i32 [ %or.i471, %bs_write1.exit490 ], [ %.pre591, %if.then.i478 ]
  %b_redundant_pic_cnt = getelementptr inbounds %struct.x264_pps_t, %struct.x264_pps_t* %pps, i32 0, i32 14
  %117 = load i32, i32* %b_redundant_pic_cnt, align 4, !tbaa !153
  %shl.i459 = shl i32 %116, 1
  %or.i460 = or i32 %shl.i459, %117
  store i32 %or.i460, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %dec.i462 = add nsw i32 %115, -1
  store i32 %dec.i462, i32* %i_left.i.i146, align 4, !tbaa !8
  %cmp.i463 = icmp eq i32 %dec.i462, 0
  br i1 %cmp.i463, label %if.then.i467, label %bs_write1.exit468

if.then.i467:                                     ; preds = %bs_write1.exit479
  %add5.i.i464 = tail call i32 @llvm.bswap.i32(i32 %or.i460) #9
  store i32 %add5.i.i464, i32* %114, align 4, !tbaa !9
  %118 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i466 = getelementptr inbounds i8, i8* %118, i32 4
  store i8* %add.ptr.i466, i8** %p.i, align 4, !tbaa !2
  store i32 32, i32* %i_left.i.i146, align 4, !tbaa !8
  %119 = bitcast i8* %add.ptr.i466 to i32*
  br label %bs_write1.exit468

bs_write1.exit468:                                ; preds = %bs_write1.exit479, %if.then.i467
  %120 = phi i32* [ %114, %bs_write1.exit479 ], [ %119, %if.then.i467 ]
  %121 = phi i32 [ %dec.i462, %bs_write1.exit479 ], [ 32, %if.then.i467 ]
  %b_avcintra_hd = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 23
  %122 = load i32, i32* %b_avcintra_hd, align 4, !tbaa !116
  %tobool = icmp eq i32 %122, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %bs_write1.exit468
  %i_cqm_preset = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 25
  %123 = load i32, i32* %i_cqm_preset, align 4, !tbaa !118
  %cmp = icmp ne i32 %123, 0
  br label %land.end

land.end:                                         ; preds = %bs_write1.exit468, %land.rhs
  %124 = phi i1 [ false, %bs_write1.exit468 ], [ %cmp, %land.rhs ]
  %b_transform_8x8_mode = getelementptr inbounds %struct.x264_pps_t, %struct.x264_pps_t* %pps, i32 0, i32 15
  %125 = load i32, i32* %b_transform_8x8_mode, align 4, !tbaa !154
  %tobool7 = icmp ne i32 %125, 0
  %or.cond = or i1 %124, %tobool7
  br i1 %or.cond, label %if.then, label %if.end28thread-pre-split

if.then:                                          ; preds = %land.end
  %land.ext = zext i1 %124 to i32
  %126 = load i32, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %shl.i448 = shl i32 %126, 1
  %or.i449 = or i32 %shl.i448, %125
  store i32 %or.i449, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %dec.i451 = add nsw i32 %121, -1
  store i32 %dec.i451, i32* %i_left.i.i146, align 4, !tbaa !8
  %cmp.i452 = icmp eq i32 %dec.i451, 0
  br i1 %cmp.i452, label %bs_write1.exit457.thread, label %bs_write1.exit457

bs_write1.exit457.thread:                         ; preds = %if.then
  %add5.i.i453 = tail call i32 @llvm.bswap.i32(i32 %or.i449) #9
  store i32 %add5.i.i453, i32* %120, align 4, !tbaa !9
  %127 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i455 = getelementptr inbounds i8, i8* %127, i32 4
  store i8* %add.ptr.i455, i8** %p.i, align 4, !tbaa !2
  %.pre593 = load i32, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %shl.i437601 = shl i32 %.pre593, 1
  %or.i438602 = or i32 %shl.i437601, %land.ext
  store i32 %or.i438602, i32* %cur_bits.i.i148, align 4, !tbaa !10
  br label %bs_write1.exit446.sink.split

bs_write1.exit457:                                ; preds = %if.then
  %shl.i437 = shl i32 %or.i449, 1
  %or.i438 = or i32 %shl.i437, %land.ext
  store i32 %or.i438, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %dec.i440 = add nsw i32 %121, -2
  store i32 %dec.i440, i32* %i_left.i.i146, align 4, !tbaa !8
  %cmp.i441 = icmp eq i32 %dec.i440, 0
  br i1 %cmp.i441, label %if.then.i445, label %bs_write1.exit446

if.then.i445:                                     ; preds = %bs_write1.exit457
  %add5.i.i442 = tail call i32 @llvm.bswap.i32(i32 %or.i438) #9
  store i32 %add5.i.i442, i32* %120, align 4, !tbaa !9
  %128 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i444 = getelementptr inbounds i8, i8* %128, i32 4
  store i8* %add.ptr.i444, i8** %p.i, align 4, !tbaa !2
  br label %bs_write1.exit446.sink.split

bs_write1.exit446.sink.split:                     ; preds = %if.then.i445, %bs_write1.exit457.thread
  %.sink = phi i32 [ 31, %bs_write1.exit457.thread ], [ 32, %if.then.i445 ]
  store i32 %.sink, i32* %i_left.i.i146, align 4, !tbaa !8
  br label %bs_write1.exit446

bs_write1.exit446:                                ; preds = %bs_write1.exit446.sink.split, %bs_write1.exit457
  %129 = phi i32 [ %dec.i440, %bs_write1.exit457 ], [ %.sink, %bs_write1.exit446.sink.split ]
  br i1 %124, label %if.then11, label %if.end26

if.then11:                                        ; preds = %bs_write1.exit446
  tail call fastcc void @scaling_list_write(%struct.bs_s* nonnull %s, %struct.x264_sps_t* nonnull %sps, i32 0)
  tail call fastcc void @scaling_list_write(%struct.bs_s* nonnull %s, %struct.x264_sps_t* nonnull %sps, i32 2)
  %b_avcintra_4k = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 24
  %130 = load i32, i32* %b_avcintra_4k, align 4, !tbaa !117
  %tobool12 = icmp eq i32 %130, 0
  br i1 %tobool12, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.then11
  tail call fastcc void @scaling_list_write(%struct.bs_s* nonnull %s, %struct.x264_sps_t* nonnull %sps, i32 2)
  %131 = load i32, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %shl.i362 = shl i32 %131, 1
  store i32 %shl.i362, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %132 = load i32, i32* %i_left.i.i146, align 4, !tbaa !8
  %dec.i364 = add nsw i32 %132, -1
  store i32 %dec.i364, i32* %i_left.i.i146, align 4, !tbaa !8
  %cmp.i365 = icmp eq i32 %dec.i364, 0
  br i1 %cmp.i365, label %bs_write1.exit370.thread, label %bs_write1.exit370

bs_write1.exit370.thread:                         ; preds = %if.then13
  %add5.i.i366 = tail call i32 @llvm.bswap.i32(i32 %shl.i362) #9
  %133 = bitcast i8** %p.i to i32**
  %134 = load i32*, i32** %133, align 4, !tbaa !2
  store i32 %add5.i.i366, i32* %134, align 4, !tbaa !9
  %135 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i368 = getelementptr inbounds i8, i8* %135, i32 4
  store i8* %add.ptr.i368, i8** %p.i, align 4, !tbaa !2
  %.pre594 = load i32, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %shl.i352605 = shl i32 %.pre594, 1
  store i32 %shl.i352605, i32* %cur_bits.i.i148, align 4, !tbaa !10
  store i32 31, i32* %i_left.i.i146, align 4, !tbaa !8
  br label %bs_write1.exit360.thread

bs_write1.exit370:                                ; preds = %if.then13
  %shl.i352 = shl i32 %131, 2
  store i32 %shl.i352, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %dec.i354 = add nsw i32 %132, -2
  store i32 %dec.i354, i32* %i_left.i.i146, align 4, !tbaa !8
  %cmp.i355 = icmp eq i32 %dec.i354, 0
  br i1 %cmp.i355, label %if.then.i359, label %bs_write1.exit360

if.then.i359:                                     ; preds = %bs_write1.exit370
  %add5.i.i356 = tail call i32 @llvm.bswap.i32(i32 %shl.i352) #9
  %136 = bitcast i8** %p.i to i32**
  %137 = load i32*, i32** %136, align 4, !tbaa !2
  store i32 %add5.i.i356, i32* %137, align 4, !tbaa !9
  %138 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i358 = getelementptr inbounds i8, i8* %138, i32 4
  store i8* %add.ptr.i358, i8** %p.i, align 4, !tbaa !2
  store i32 32, i32* %i_left.i.i146, align 4, !tbaa !8
  %.pre595 = load i32, i32* %cur_bits.i.i148, align 4, !tbaa !10
  br label %bs_write1.exit360.thread

bs_write1.exit360.thread:                         ; preds = %if.then.i359, %bs_write1.exit370.thread
  %.ph = phi i32 [ 30, %bs_write1.exit370.thread ], [ 31, %if.then.i359 ]
  %.ph608 = phi i32 [ %shl.i352605, %bs_write1.exit370.thread ], [ %.pre595, %if.then.i359 ]
  %shl.i342609 = shl i32 %.ph608, 1
  store i32 %shl.i342609, i32* %cur_bits.i.i148, align 4, !tbaa !10
  store i32 %.ph, i32* %i_left.i.i146, align 4, !tbaa !8
  br label %if.end

bs_write1.exit360:                                ; preds = %bs_write1.exit370
  %shl.i342 = shl i32 %131, 3
  store i32 %shl.i342, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %dec.i344 = add nsw i32 %132, -3
  store i32 %dec.i344, i32* %i_left.i.i146, align 4, !tbaa !8
  %cmp.i345 = icmp eq i32 %dec.i344, 0
  br i1 %cmp.i345, label %if.then.i349, label %if.end

if.then.i349:                                     ; preds = %bs_write1.exit360
  %add5.i.i346 = tail call i32 @llvm.bswap.i32(i32 %shl.i342) #9
  %139 = bitcast i8** %p.i to i32**
  %140 = load i32*, i32** %139, align 4, !tbaa !2
  store i32 %add5.i.i346, i32* %140, align 4, !tbaa !9
  %141 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i348 = getelementptr inbounds i8, i8* %141, i32 4
  store i8* %add.ptr.i348, i8** %p.i, align 4, !tbaa !2
  store i32 32, i32* %i_left.i.i146, align 4, !tbaa !8
  br label %if.end

if.else:                                          ; preds = %if.then11
  %142 = load i32, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %shl.i332 = shl i32 %142, 1
  store i32 %shl.i332, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %143 = load i32, i32* %i_left.i.i146, align 4, !tbaa !8
  %dec.i334 = add nsw i32 %143, -1
  store i32 %dec.i334, i32* %i_left.i.i146, align 4, !tbaa !8
  %cmp.i335 = icmp eq i32 %dec.i334, 0
  br i1 %cmp.i335, label %if.then.i339, label %bs_write1.exit340

if.then.i339:                                     ; preds = %if.else
  %add5.i.i336 = tail call i32 @llvm.bswap.i32(i32 %shl.i332) #9
  %144 = bitcast i8** %p.i to i32**
  %145 = load i32*, i32** %144, align 4, !tbaa !2
  store i32 %add5.i.i336, i32* %145, align 4, !tbaa !9
  %146 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i338 = getelementptr inbounds i8, i8* %146, i32 4
  store i8* %add.ptr.i338, i8** %p.i, align 4, !tbaa !2
  store i32 32, i32* %i_left.i.i146, align 4, !tbaa !8
  br label %bs_write1.exit340

bs_write1.exit340:                                ; preds = %if.else, %if.then.i339
  tail call fastcc void @scaling_list_write(%struct.bs_s* nonnull %s, %struct.x264_sps_t* nonnull %sps, i32 1)
  tail call fastcc void @scaling_list_write(%struct.bs_s* nonnull %s, %struct.x264_sps_t* nonnull %sps, i32 3)
  %147 = load i32, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %shl.i236 = shl i32 %147, 1
  store i32 %shl.i236, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %148 = load i32, i32* %i_left.i.i146, align 4, !tbaa !8
  %dec.i238 = add nsw i32 %148, -1
  store i32 %dec.i238, i32* %i_left.i.i146, align 4, !tbaa !8
  %cmp.i239 = icmp eq i32 %dec.i238, 0
  br i1 %cmp.i239, label %if.then.i243, label %if.end

if.then.i243:                                     ; preds = %bs_write1.exit340
  %add5.i.i240 = tail call i32 @llvm.bswap.i32(i32 %shl.i236) #9
  %149 = bitcast i8** %p.i to i32**
  %150 = load i32*, i32** %149, align 4, !tbaa !2
  store i32 %add5.i.i240, i32* %150, align 4, !tbaa !9
  %151 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i242 = getelementptr inbounds i8, i8* %151, i32 4
  store i8* %add.ptr.i242, i8** %p.i, align 4, !tbaa !2
  store i32 32, i32* %i_left.i.i146, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %bs_write1.exit360.thread, %if.then.i243, %bs_write1.exit340, %if.then.i349, %bs_write1.exit360
  %152 = phi i32 [ 32, %if.then.i243 ], [ %dec.i238, %bs_write1.exit340 ], [ 32, %if.then.i349 ], [ %dec.i344, %bs_write1.exit360 ], [ %.ph, %bs_write1.exit360.thread ]
  %153 = load i32, i32* %b_transform_8x8_mode, align 4, !tbaa !154
  %tobool15 = icmp eq i32 %153, 0
  br i1 %tobool15, label %if.end26, label %if.then16

if.then16:                                        ; preds = %if.end
  tail call fastcc void @scaling_list_write(%struct.bs_s* nonnull %s, %struct.x264_sps_t* nonnull %sps, i32 4)
  %154 = load i32, i32* %b_avcintra_4k, align 4, !tbaa !117
  %tobool18 = icmp eq i32 %154, 0
  br i1 %tobool18, label %if.else20, label %if.then19

if.then19:                                        ; preds = %if.then16
  %155 = load i32, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %shl.i215 = shl i32 %155, 1
  store i32 %shl.i215, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %156 = load i32, i32* %i_left.i.i146, align 4, !tbaa !8
  %dec.i217 = add nsw i32 %156, -1
  store i32 %dec.i217, i32* %i_left.i.i146, align 4, !tbaa !8
  %cmp.i218 = icmp eq i32 %dec.i217, 0
  br i1 %cmp.i218, label %if.then.i222, label %if.end21

if.then.i222:                                     ; preds = %if.then19
  %add5.i.i219 = tail call i32 @llvm.bswap.i32(i32 %shl.i215) #9
  %157 = bitcast i8** %p.i to i32**
  %158 = load i32*, i32** %157, align 4, !tbaa !2
  store i32 %add5.i.i219, i32* %158, align 4, !tbaa !9
  %159 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i221 = getelementptr inbounds i8, i8* %159, i32 4
  store i8* %add.ptr.i221, i8** %p.i, align 4, !tbaa !2
  store i32 32, i32* %i_left.i.i146, align 4, !tbaa !8
  br label %if.end21

if.else20:                                        ; preds = %if.then16
  tail call fastcc void @scaling_list_write(%struct.bs_s* nonnull %s, %struct.x264_sps_t* nonnull %sps, i32 5)
  br label %if.end21

if.end21:                                         ; preds = %if.then.i222, %if.then19, %if.else20
  %i_chroma_format_idc = getelementptr inbounds %struct.x264_sps_t, %struct.x264_sps_t* %sps, i32 0, i32 22
  %160 = load i32, i32* %i_chroma_format_idc, align 4, !tbaa !32
  %cmp22 = icmp eq i32 %160, 3
  br i1 %cmp22, label %if.then23, label %if.end21.if.end26_crit_edge

if.end21.if.end26_crit_edge:                      ; preds = %if.end21
  %.pre597 = load i32, i32* %i_left.i.i146, align 4, !tbaa !8
  br label %if.end26

if.then23:                                        ; preds = %if.end21
  tail call fastcc void @scaling_list_write(%struct.bs_s* nonnull %s, %struct.x264_sps_t* nonnull %sps, i32 6)
  tail call fastcc void @scaling_list_write(%struct.bs_s* nonnull %s, %struct.x264_sps_t* nonnull %sps, i32 7)
  %161 = load i32, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %shl.i130 = shl i32 %161, 1
  store i32 %shl.i130, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %162 = load i32, i32* %i_left.i.i146, align 4, !tbaa !8
  %dec.i132 = add nsw i32 %162, -1
  store i32 %dec.i132, i32* %i_left.i.i146, align 4, !tbaa !8
  %cmp.i133 = icmp eq i32 %dec.i132, 0
  br i1 %cmp.i133, label %bs_write1.exit138.thread, label %bs_write1.exit138

bs_write1.exit138.thread:                         ; preds = %if.then23
  %add5.i.i134 = tail call i32 @llvm.bswap.i32(i32 %shl.i130) #9
  %163 = bitcast i8** %p.i to i32**
  %164 = load i32*, i32** %163, align 4, !tbaa !2
  store i32 %add5.i.i134, i32* %164, align 4, !tbaa !9
  %165 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i136 = getelementptr inbounds i8, i8* %165, i32 4
  store i8* %add.ptr.i136, i8** %p.i, align 4, !tbaa !2
  %.pre596 = load i32, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %shl.i122612 = shl i32 %.pre596, 1
  store i32 %shl.i122612, i32* %cur_bits.i.i148, align 4, !tbaa !10
  store i32 31, i32* %i_left.i.i146, align 4, !tbaa !8
  br label %if.end26

bs_write1.exit138:                                ; preds = %if.then23
  %shl.i122 = shl i32 %161, 2
  store i32 %shl.i122, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %dec.i = add nsw i32 %162, -2
  store i32 %dec.i, i32* %i_left.i.i146, align 4, !tbaa !8
  %cmp.i124 = icmp eq i32 %dec.i, 0
  br i1 %cmp.i124, label %if.then.i128, label %if.end26

if.then.i128:                                     ; preds = %bs_write1.exit138
  %add5.i.i125 = tail call i32 @llvm.bswap.i32(i32 %shl.i122) #9
  %166 = bitcast i8** %p.i to i32**
  %167 = load i32*, i32** %166, align 4, !tbaa !2
  store i32 %add5.i.i125, i32* %167, align 4, !tbaa !9
  %168 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i127 = getelementptr inbounds i8, i8* %168, i32 4
  store i8* %add.ptr.i127, i8** %p.i, align 4, !tbaa !2
  store i32 32, i32* %i_left.i.i146, align 4, !tbaa !8
  br label %if.end26

if.end26:                                         ; preds = %bs_write1.exit138.thread, %if.end21.if.end26_crit_edge, %if.then.i128, %bs_write1.exit138, %if.end, %bs_write1.exit446
  %169 = phi i32 [ %.pre597, %if.end21.if.end26_crit_edge ], [ 32, %if.then.i128 ], [ %dec.i, %bs_write1.exit138 ], [ %152, %if.end ], [ %129, %bs_write1.exit446 ], [ 31, %bs_write1.exit138.thread ]
  %170 = load i32, i32* %i_chroma_qp_index_offset, align 4, !tbaa !149
  %mul.i107 = shl nsw i32 %170, 1
  %sub.i108 = sub nsw i32 1, %mul.i107
  %cmp.i = icmp sgt i32 %170, 0
  %spec.select.i = select i1 %cmp.i, i32 %mul.i107, i32 %sub.i108
  %cmp2.i = icmp sgt i32 %spec.select.i, 255
  %shr.i109 = ashr i32 %spec.select.i, 8
  %size.0.i = select i1 %cmp2.i, i32 16, i32 0
  %tmp.1.i = select i1 %cmp2.i, i32 %shr.i109, i32 %spec.select.i
  %arrayidx.i = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %tmp.1.i
  %171 = load i8, i8* %arrayidx.i, align 1, !tbaa !9
  %conv.i = zext i8 %171 to i32
  %add.i = add nuw nsw i32 %size.0.i, %conv.i
  %cmp.i.i111 = icmp sgt i32 %169, %add.i
  br i1 %cmp.i.i111, label %if.then.i.i, label %if.else.i.i119

if.then.i.i:                                      ; preds = %if.end26
  %172 = load i32, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %shl.i.i113 = shl i32 %172, %add.i
  %or.i.i114 = or i32 %shl.i.i113, %spec.select.i
  store i32 %or.i.i114, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %sub.i.i = sub nsw i32 %169, %add.i
  br label %bs_write_se.exit

if.else.i.i119:                                   ; preds = %if.end26
  %sub4.i.i = sub nsw i32 %add.i, %169
  %173 = load i32, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %shl7.i.i115 = shl i32 %173, %169
  %shr.i.i = lshr i32 %spec.select.i, %sub4.i.i
  %or8.i.i = or i32 %shl7.i.i115, %shr.i.i
  %add5.i.i.i.i116 = tail call i32 @llvm.bswap.i32(i32 %or8.i.i) #9
  %174 = bitcast i8** %p.i to i32**
  %175 = load i32*, i32** %174, align 4, !tbaa !2
  store i32 %add5.i.i.i.i116, i32* %175, align 4, !tbaa !9
  %176 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i.i118 = getelementptr inbounds i8, i8* %176, i32 4
  store i8* %add.ptr.i.i118, i8** %p.i, align 4, !tbaa !2
  store i32 %spec.select.i, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %sub13.i.i = sub nsw i32 32, %sub4.i.i
  br label %bs_write_se.exit

bs_write_se.exit:                                 ; preds = %if.then.i.i, %if.else.i.i119
  %177 = phi i32 [ %spec.select.i, %if.else.i.i119 ], [ %or.i.i114, %if.then.i.i ]
  %storemerge.i.i120 = phi i32 [ %sub13.i.i, %if.else.i.i119 ], [ %sub.i.i, %if.then.i.i ]
  store i32 %storemerge.i.i120, i32* %i_left.i.i146, align 4, !tbaa !8
  br label %if.end28

if.end28thread-pre-split:                         ; preds = %land.end
  %.pre598 = load i32, i32* %cur_bits.i.i148, align 4, !tbaa !10
  br label %if.end28

if.end28:                                         ; preds = %if.end28thread-pre-split, %bs_write_se.exit
  %178 = phi i32 [ %.pre598, %if.end28thread-pre-split ], [ %177, %bs_write_se.exit ]
  %179 = phi i32 [ %121, %if.end28thread-pre-split ], [ %storemerge.i.i120, %bs_write_se.exit ]
  %shl.i.i = shl i32 %178, 1
  %or.i.i = or i32 %shl.i.i, 1
  store i32 %or.i.i, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %dec.i.i = add nsw i32 %179, -1
  store i32 %dec.i.i, i32* %i_left.i.i146, align 4, !tbaa !8
  %cmp.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.i.i, label %bs_write1.exit.thread.i, label %bs_write1.exit.i

bs_write1.exit.thread.i:                          ; preds = %if.end28
  %add5.i.i.i = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #9
  %180 = bitcast i8** %p.i to i32**
  %181 = load i32*, i32** %180, align 4, !tbaa !2
  store i32 %add5.i.i.i, i32* %181, align 4, !tbaa !9
  %182 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i.i = getelementptr inbounds i8, i8* %182, i32 4
  store i8* %add.ptr.i.i, i8** %p.i, align 4, !tbaa !2
  store i32 32, i32* %i_left.i.i146, align 4, !tbaa !8
  %.pre.i = load i32, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %183 = bitcast i8* %add.ptr.i.i to i32*
  br label %if.then.i7.i

bs_write1.exit.i:                                 ; preds = %if.end28
  %and.i106 = and i32 %dec.i.i, 7
  %184 = icmp sgt i32 %179, 8
  br i1 %184, label %bs_write1.exit.i.if.then.i7.i_crit_edge, label %if.else.i.i

bs_write1.exit.i.if.then.i7.i_crit_edge:          ; preds = %bs_write1.exit.i
  %.phi.trans.insert.phi.trans.insert = bitcast i8** %p.i to i32**
  %.pre599.pre = load i32*, i32** %.phi.trans.insert.phi.trans.insert, align 4, !tbaa !2
  br label %if.then.i7.i

if.then.i7.i:                                     ; preds = %bs_write1.exit.i.if.then.i7.i_crit_edge, %bs_write1.exit.thread.i
  %.pre599 = phi i32* [ %183, %bs_write1.exit.thread.i ], [ %.pre599.pre, %bs_write1.exit.i.if.then.i7.i_crit_edge ]
  %and12.i = phi i32 [ 0, %bs_write1.exit.thread.i ], [ %and.i106, %bs_write1.exit.i.if.then.i7.i_crit_edge ]
  %185 = phi i32 [ 32, %bs_write1.exit.thread.i ], [ %dec.i.i, %bs_write1.exit.i.if.then.i7.i_crit_edge ]
  %186 = phi i32 [ %.pre.i, %bs_write1.exit.thread.i ], [ %or.i.i, %bs_write1.exit.i.if.then.i7.i_crit_edge ]
  %shl.i6.i = shl i32 %186, %and12.i
  store i32 %shl.i6.i, i32* %cur_bits.i.i148, align 4, !tbaa !10
  br label %bs_rbsp_trailing.exit

if.else.i.i:                                      ; preds = %bs_write1.exit.i
  %shl7.i.i = shl i32 %or.i.i, %dec.i.i
  %add5.i.i.i.i = tail call i32 @llvm.bswap.i32(i32 %shl7.i.i) #9
  %187 = bitcast i8** %p.i to i32**
  %188 = load i32*, i32** %187, align 4, !tbaa !2
  store i32 %add5.i.i.i.i, i32* %188, align 4, !tbaa !9
  %189 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i9.i = getelementptr inbounds i8, i8* %189, i32 4
  store i8* %add.ptr.i9.i, i8** %p.i, align 4, !tbaa !2
  store i32 0, i32* %cur_bits.i.i148, align 4, !tbaa !10
  %sub4.i10.i = add nsw i32 %179, 31
  %190 = bitcast i8* %add.ptr.i9.i to i32*
  br label %bs_rbsp_trailing.exit

bs_rbsp_trailing.exit:                            ; preds = %if.then.i7.i, %if.else.i.i
  %191 = phi i32* [ %190, %if.else.i.i ], [ %.pre599, %if.then.i7.i ]
  %192 = phi i32 [ 0, %if.else.i.i ], [ %shl.i6.i, %if.then.i7.i ]
  %and13.i = phi i32 [ %and.i106, %if.else.i.i ], [ %and12.i, %if.then.i7.i ]
  %sub4.i10.pn.i = phi i32 [ %sub4.i10.i, %if.else.i.i ], [ %185, %if.then.i7.i ]
  %storemerge.i.i = sub nsw i32 %sub4.i10.pn.i, %and13.i
  store i32 %storemerge.i.i, i32* %i_left.i.i146, align 4, !tbaa !8
  %and.i100 = and i32 %storemerge.i.i, 31
  %shl.i = shl i32 %192, %and.i100
  %add5.i.i101 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #9
  store i32 %add5.i.i101, i32* %191, align 4, !tbaa !9
  %193 = load i32, i32* %i_left.i.i146, align 4, !tbaa !8
  %shr.i103 = ashr i32 %193, 3
  %sub.i104 = sub nsw i32 4, %shr.i103
  %194 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i105 = getelementptr inbounds i8, i8* %194, i32 %sub.i104
  store i8* %add.ptr.i105, i8** %p.i, align 4, !tbaa !2
  store i32 32, i32* %i_left.i.i146, align 4, !tbaa !8
  ret void
}

; Function Attrs: nounwind
define hidden void @x264_8_sei_recovery_point_write(%struct.x264_t* nocapture readnone %h, %struct.bs_s* %s, i32 %recovery_frame_cnt) local_unnamed_addr #4 {
bs_realign.exit:
  %tmp_buf = alloca [100 x i8], align 4
  %0 = getelementptr inbounds [100 x i8], [100 x i8]* %tmp_buf, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %0) #9
  %i = bitcast [100 x i8]* %tmp_buf to i32*
  store i32 0, i32* %i, align 4, !tbaa !9
  %1 = ptrtoint [100 x i8]* %tmp_buf to i32
  %inc.i = add i32 %recovery_frame_cnt, 1
  %cmp.i40 = icmp sgt i32 %inc.i, 65535
  %shr.i41 = ashr i32 %inc.i, 16
  %spec.select.i = select i1 %cmp.i40, i32 32, i32 0
  %spec.select20.i = select i1 %cmp.i40, i32 %shr.i41, i32 %inc.i
  %cmp1.i = icmp sgt i32 %spec.select20.i, 255
  %add.i42 = or i32 %spec.select.i, 16
  %shr3.i = ashr i32 %spec.select20.i, 8
  %size.1.i = select i1 %cmp1.i, i32 %add.i42, i32 %spec.select.i
  %tmp.1.i = select i1 %cmp1.i, i32 %shr3.i, i32 %spec.select20.i
  %arrayidx.i = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %tmp.1.i
  %2 = load i8, i8* %arrayidx.i, align 1, !tbaa !9
  %conv.i = zext i8 %2 to i32
  %add5.i = add nuw nsw i32 %size.1.i, %conv.i
  %3 = lshr i32 %add5.i, 1
  %cmp.i.i = icmp ult i32 %add5.i, 64
  %add.ptr.i.i49 = getelementptr inbounds [100 x i8], [100 x i8]* %tmp_buf, i32 0, i32 4
  %4 = ptrtoint i8* %add.ptr.i.i49 to i32
  %q.sroa.4.1 = select i1 %cmp.i.i, i32 %1, i32 %4
  %sub4.i37.pn.i = select i1 %cmp.i.i, i32 32, i32 64
  %storemerge.i.i51 = sub nsw i32 %sub4.i37.pn.i, %3
  %add8.i = add nuw nsw i32 %3, 1
  %cmp.i22.i = icmp sgt i32 %storemerge.i.i51, %add8.i
  br i1 %cmp.i22.i, label %if.then.i26.i, label %if.else.i34.i

if.then.i26.i:                                    ; preds = %bs_realign.exit
  %sub.i25.i = sub nsw i32 %storemerge.i.i51, %add8.i
  br label %bs_write_ue_big.exit

if.else.i34.i:                                    ; preds = %bs_realign.exit
  %sub4.i27.i = sub nsw i32 %add8.i, %storemerge.i.i51
  %shr.i.i54 = lshr i32 %inc.i, %sub4.i27.i
  %add5.i.i.i30.i = call i32 @llvm.bswap.i32(i32 %shr.i.i54) #9
  %5 = inttoptr i32 %q.sroa.4.1 to i32*
  store i32 %add5.i.i.i30.i, i32* %5, align 4, !tbaa !9
  %6 = inttoptr i32 %q.sroa.4.1 to i8*
  %add.ptr.i32.i = getelementptr inbounds i8, i8* %6, i32 4
  %7 = ptrtoint i8* %add.ptr.i32.i to i32
  %sub13.i33.i = sub nsw i32 32, %sub4.i27.i
  br label %bs_write_ue_big.exit

bs_write_ue_big.exit:                             ; preds = %if.then.i26.i, %if.else.i34.i
  %q.sroa.4.2 = phi i32 [ %q.sroa.4.1, %if.then.i26.i ], [ %7, %if.else.i34.i ]
  %storemerge.i35.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %sub13.i33.i, %if.else.i34.i ]
  %shl.i31 = shl i32 %inc.i, 1
  %or.i = or i32 %shl.i31, 1
  %cmp.i34 = icmp eq i32 %storemerge.i35.i, 1
  br i1 %cmp.i34, label %bs_write1.exit39.thread, label %bs_write1.exit39

bs_write1.exit39.thread:                          ; preds = %bs_write_ue_big.exit
  %add5.i.i35 = call i32 @llvm.bswap.i32(i32 %or.i) #9
  %8 = inttoptr i32 %q.sroa.4.2 to i32*
  store i32 %add5.i.i35, i32* %8, align 4, !tbaa !9
  %9 = inttoptr i32 %q.sroa.4.2 to i8*
  %add.ptr.i37 = getelementptr inbounds i8, i8* %9, i32 4
  %10 = ptrtoint i8* %add.ptr.i37 to i32
  %shl.i2391 = shl i32 %or.i, 1
  br label %if.then.i18

bs_write1.exit39:                                 ; preds = %bs_write_ue_big.exit
  %shl.i23 = shl i32 %or.i, 1
  %dec.i = add nsw i32 %storemerge.i35.i, -2
  %cmp.i25 = icmp eq i32 %dec.i, 0
  br i1 %cmp.i25, label %if.then.i29, label %bs_write1.exit

if.then.i29:                                      ; preds = %bs_write1.exit39
  %add5.i.i26 = call i32 @llvm.bswap.i32(i32 %shl.i23) #9
  %11 = inttoptr i32 %q.sroa.4.2 to i32*
  store i32 %add5.i.i26, i32* %11, align 4, !tbaa !9
  %12 = inttoptr i32 %q.sroa.4.2 to i8*
  %add.ptr.i28 = getelementptr inbounds i8, i8* %12, i32 4
  %13 = ptrtoint i8* %add.ptr.i28 to i32
  br label %if.then.i18

bs_write1.exit:                                   ; preds = %bs_write1.exit39
  %cmp.i = icmp sgt i32 %storemerge.i35.i, 4
  br i1 %cmp.i, label %if.then.i18, label %if.else.i

if.then.i18:                                      ; preds = %bs_write1.exit39.thread, %if.then.i29, %bs_write1.exit
  %q.sroa.50.2101 = phi i32 [ %dec.i, %bs_write1.exit ], [ 31, %bs_write1.exit39.thread ], [ 32, %if.then.i29 ]
  %q.sroa.4.4100 = phi i32 [ %q.sroa.4.2, %bs_write1.exit ], [ %10, %bs_write1.exit39.thread ], [ %13, %if.then.i29 ]
  %shl.i239499 = phi i32 [ %shl.i23, %bs_write1.exit ], [ %shl.i2391, %bs_write1.exit39.thread ], [ %shl.i23, %if.then.i29 ]
  %shl.i16 = shl i32 %shl.i239499, 2
  %sub.i17 = add nsw i32 %q.sroa.50.2101, -2
  br label %bs_write.exit

if.else.i:                                        ; preds = %bs_write1.exit
  %shl7.i = shl i32 %shl.i23, %dec.i
  %add5.i.i.i19 = call i32 @llvm.bswap.i32(i32 %shl7.i) #9
  %14 = inttoptr i32 %q.sroa.4.2 to i32*
  store i32 %add5.i.i.i19, i32* %14, align 4, !tbaa !9
  %15 = inttoptr i32 %q.sroa.4.2 to i8*
  %add.ptr.i21 = getelementptr inbounds i8, i8* %15, i32 4
  %16 = ptrtoint i8* %add.ptr.i21 to i32
  %sub13.i = add nsw i32 %storemerge.i35.i, 28
  br label %bs_write.exit

bs_write.exit:                                    ; preds = %if.then.i18, %if.else.i
  %q.sroa.30.2 = phi i32 [ %shl.i16, %if.then.i18 ], [ 0, %if.else.i ]
  %q.sroa.4.5 = phi i32 [ %q.sroa.4.4100, %if.then.i18 ], [ %16, %if.else.i ]
  %storemerge.i = phi i32 [ %sub.i17, %if.then.i18 ], [ %sub13.i, %if.else.i ]
  %and.i10 = and i32 %storemerge.i, 7
  %tobool.i11 = icmp eq i32 %and.i10, 0
  br i1 %tobool.i11, label %bs_align_10.exit, label %if.then.i13

if.then.i13:                                      ; preds = %bs_write.exit
  %sub.i12 = add nsw i32 %and.i10, -1
  %shl.i = shl nuw nsw i32 1, %sub.i12
  %17 = icmp sgt i32 %storemerge.i, 7
  br i1 %17, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then.i13
  %shl.i.i = shl i32 %q.sroa.30.2, %and.i10
  %or.i.i = or i32 %shl.i, %shl.i.i
  %sub.i.i = sub nuw nsw i32 %storemerge.i, %and.i10
  br label %bs_align_10.exit

if.else.i.i:                                      ; preds = %if.then.i13
  %sub4.i.i = sub nsw i32 %and.i10, %storemerge.i
  %shl7.i.i = shl i32 %q.sroa.30.2, %storemerge.i
  %shr.i.i = lshr i32 %shl.i, %sub4.i.i
  %or8.i.i = or i32 %shr.i.i, %shl7.i.i
  %add5.i.i.i.i = call i32 @llvm.bswap.i32(i32 %or8.i.i) #9
  %18 = inttoptr i32 %q.sroa.4.5 to i32*
  store i32 %add5.i.i.i.i, i32* %18, align 4, !tbaa !9
  %19 = inttoptr i32 %q.sroa.4.5 to i8*
  %add.ptr.i.i = getelementptr inbounds i8, i8* %19, i32 4
  %20 = ptrtoint i8* %add.ptr.i.i to i32
  %sub13.i.i = sub nsw i32 32, %sub4.i.i
  br label %bs_align_10.exit

bs_align_10.exit:                                 ; preds = %if.then.i.i, %if.else.i.i, %bs_write.exit
  %q.sroa.4.7 = phi i32 [ %q.sroa.4.5, %bs_write.exit ], [ %q.sroa.4.5, %if.then.i.i ], [ %20, %if.else.i.i ]
  %q.sroa.50.3 = phi i32 [ %storemerge.i, %bs_write.exit ], [ %sub.i.i, %if.then.i.i ], [ %sub13.i.i, %if.else.i.i ]
  %21 = phi i32 [ %q.sroa.30.2, %bs_write.exit ], [ %or.i.i, %if.then.i.i ], [ %shl.i, %if.else.i.i ]
  %and.i.i = and i32 %q.sroa.50.3, 31
  %shl.i11.i = shl i32 %21, %and.i.i
  %add5.i.i.i = call i32 @llvm.bswap.i32(i32 %shl.i11.i) #9
  %22 = inttoptr i32 %q.sroa.4.7 to i32*
  store i32 %add5.i.i.i, i32* %22, align 4, !tbaa !9
  %shr.i13.i = ashr i32 %q.sroa.50.3, 3
  %sub.i14.i = sub nsw i32 4, %shr.i13.i
  %23 = inttoptr i32 %q.sroa.4.7 to i8*
  %add.ptr.i15.i = getelementptr inbounds i8, i8* %23, i32 %sub.i14.i
  %24 = ptrtoint i8* %add.ptr.i15.i to i32
  %sub.ptr.sub.i = sub i32 %24, %1
  %mul.i6 = shl i32 %sub.ptr.sub.i, 3
  %div = sdiv i32 %mul.i6, 8
  call void @x264_8_sei_write(%struct.bs_s* %s, i8* nonnull %0, i32 %div, i32 6)
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %0) #9
  ret void
}

; Function Attrs: nounwind
define hidden i32 @x264_8_sei_version_write(%struct.x264_t* %h, %struct.bs_s* %s) local_unnamed_addr #4 {
entry:
  %param = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0
  %call = tail call i8* @x264_param2string(%struct.x264_param_t* %param, i32 0) #9
  %tobool = icmp eq i8* %call, null
  br i1 %tobool, label %cleanup, label %do.body

do.body:                                          ; preds = %entry
  %call1 = tail call i32 @strlen(i8* nonnull %call) #10
  %add = add i32 %call1, 200
  %conv = zext i32 %add to i64
  %call2 = tail call i8* @x264_malloc(i64 %conv) #9
  %tobool3 = icmp eq i8* %call2, null
  br i1 %tobool3, label %cleanup.sink.split, label %do.end

do.end:                                           ; preds = %do.body
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 dereferenceable(16) %call2, i8* nonnull align 1 dereferenceable(16) getelementptr inbounds ([16 x i8], [16 x i8]* @x264_8_sei_version_write.uuid, i32 0, i32 0), i32 16, i1 false)
  %add.ptr = getelementptr inbounds i8, i8* %call2, i32 16
  %call6 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %add.ptr, i8* nonnull dereferenceable(1) getelementptr inbounds ([111 x i8], [111 x i8]* @.str, i32 0, i32 0), i32 164, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* nonnull %call) #9
  %call7 = tail call i32 @strlen(i8* nonnull %call2) #10
  %add8 = add i32 %call7, 1
  tail call void @x264_8_sei_write(%struct.bs_s* %s, i8* nonnull %call2, i32 %add8, i32 5)
  tail call void @x264_free(i8* nonnull %call) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.body, %do.end
  %call.sink = phi i8* [ %call2, %do.end ], [ %call, %do.body ]
  %retval.0.ph = phi i32 [ 0, %do.end ], [ -1, %do.body ]
  tail call void @x264_free(i8* nonnull %call.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

declare dso_local i8* @x264_param2string(%struct.x264_param_t*, i32) local_unnamed_addr #5

declare dso_local i8* @x264_malloc(i64) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind readonly
declare dso_local i32 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #1

; Function Attrs: nofree nounwind
declare dso_local i32 @sprintf(i8* noalias nocapture, i8* nocapture readonly, ...) local_unnamed_addr #7

declare dso_local void @x264_free(i8*) local_unnamed_addr #5

; Function Attrs: nounwind
define hidden void @x264_8_sei_buffering_period_write(%struct.x264_t* nocapture readonly %h, %struct.bs_s* %s) local_unnamed_addr #4 {
bs_realign.exit:
  %tmp_buf = alloca [100 x i8], align 4
  %0 = getelementptr inbounds [100 x i8], [100 x i8]* %tmp_buf, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %0) #9
  %i = bitcast [100 x i8]* %tmp_buf to i32*
  store i32 0, i32* %i, align 4, !tbaa !9
  %1 = ptrtoint [100 x i8]* %tmp_buf to i32
  %i_id = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 0
  %2 = load i32, i32* %i_id, align 4, !tbaa !21
  %inc.i = add i32 %2, 1
  %cmp.i54 = icmp sgt i32 %inc.i, 65535
  %shr.i55 = ashr i32 %inc.i, 16
  %spec.select.i = select i1 %cmp.i54, i32 32, i32 0
  %spec.select20.i = select i1 %cmp.i54, i32 %shr.i55, i32 %inc.i
  %cmp1.i = icmp sgt i32 %spec.select20.i, 255
  %add.i56 = or i32 %spec.select.i, 16
  %shr3.i = ashr i32 %spec.select20.i, 8
  %size.1.i = select i1 %cmp1.i, i32 %add.i56, i32 %spec.select.i
  %tmp.1.i = select i1 %cmp1.i, i32 %shr3.i, i32 %spec.select20.i
  %arrayidx.i = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %tmp.1.i
  %3 = load i8, i8* %arrayidx.i, align 1, !tbaa !9
  %conv.i = zext i8 %3 to i32
  %add5.i = add nuw nsw i32 %size.1.i, %conv.i
  %4 = lshr i32 %add5.i, 1
  %cmp.i.i = icmp ult i32 %add5.i, 64
  %add.ptr.i.i63 = getelementptr inbounds [100 x i8], [100 x i8]* %tmp_buf, i32 0, i32 4
  %5 = ptrtoint i8* %add.ptr.i.i63 to i32
  %q.sroa.4.1 = select i1 %cmp.i.i, i32 %1, i32 %5
  %sub4.i37.pn.i = select i1 %cmp.i.i, i32 32, i32 64
  %storemerge.i.i65 = sub nsw i32 %sub4.i37.pn.i, %4
  %add8.i = add nuw nsw i32 %4, 1
  %cmp.i22.i = icmp sgt i32 %storemerge.i.i65, %add8.i
  br i1 %cmp.i22.i, label %if.then.i26.i, label %if.else.i34.i

if.then.i26.i:                                    ; preds = %bs_realign.exit
  %sub.i25.i = sub nsw i32 %storemerge.i.i65, %add8.i
  br label %bs_write_ue_big.exit

if.else.i34.i:                                    ; preds = %bs_realign.exit
  %sub4.i27.i = sub nsw i32 %add8.i, %storemerge.i.i65
  %shr.i.i68 = lshr i32 %inc.i, %sub4.i27.i
  %add5.i.i.i30.i = call i32 @llvm.bswap.i32(i32 %shr.i.i68) #9
  %6 = inttoptr i32 %q.sroa.4.1 to i32*
  store i32 %add5.i.i.i30.i, i32* %6, align 4, !tbaa !9
  %7 = inttoptr i32 %q.sroa.4.1 to i8*
  %add.ptr.i32.i = getelementptr inbounds i8, i8* %7, i32 4
  %8 = ptrtoint i8* %add.ptr.i32.i to i32
  %sub13.i33.i = sub nsw i32 32, %sub4.i27.i
  br label %bs_write_ue_big.exit

bs_write_ue_big.exit:                             ; preds = %if.then.i26.i, %if.else.i34.i
  %q.sroa.4.2 = phi i32 [ %q.sroa.4.1, %if.then.i26.i ], [ %8, %if.else.i34.i ]
  %storemerge.i35.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %sub13.i33.i, %if.else.i34.i ]
  %b_nal_hrd_parameters_present = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 20, i32 19
  %9 = load i32, i32* %b_nal_hrd_parameters_present, align 4, !tbaa !106
  %tobool = icmp eq i32 %9, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %bs_write_ue_big.exit
  %i_initial_cpb_removal_delay_length = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 20, i32 21, i32 8
  %10 = load i32, i32* %i_initial_cpb_removal_delay_length, align 4, !tbaa !128
  %initial_cpb_removal_delay = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 66
  %11 = load i32, i32* %initial_cpb_removal_delay, align 16, !tbaa !155
  %cmp.i36 = icmp sgt i32 %storemerge.i35.i, %10
  br i1 %cmp.i36, label %if.then.i41, label %if.else.i51

if.then.i41:                                      ; preds = %if.then
  %shl.i38 = shl i32 %inc.i, %10
  %or.i39 = or i32 %shl.i38, %11
  %sub.i40 = sub nsw i32 %storemerge.i35.i, %10
  br label %bs_write.exit53

if.else.i51:                                      ; preds = %if.then
  %sub4.i42 = sub nsw i32 %10, %storemerge.i35.i
  %shl7.i44 = shl i32 %inc.i, %storemerge.i35.i
  %shr.i45 = lshr i32 %11, %sub4.i42
  %or8.i46 = or i32 %shr.i45, %shl7.i44
  %add5.i.i.i47 = call i32 @llvm.bswap.i32(i32 %or8.i46) #9
  %12 = inttoptr i32 %q.sroa.4.2 to i32*
  store i32 %add5.i.i.i47, i32* %12, align 4, !tbaa !9
  %13 = inttoptr i32 %q.sroa.4.2 to i8*
  %add.ptr.i49 = getelementptr inbounds i8, i8* %13, i32 4
  %14 = ptrtoint i8* %add.ptr.i49 to i32
  %sub13.i50 = sub nsw i32 32, %sub4.i42
  %.pre = load i32, i32* %i_initial_cpb_removal_delay_length, align 4, !tbaa !128
  br label %bs_write.exit53

bs_write.exit53:                                  ; preds = %if.then.i41, %if.else.i51
  %15 = phi i32 [ %10, %if.then.i41 ], [ %.pre, %if.else.i51 ]
  %q.sroa.27.2 = phi i32 [ %or.i39, %if.then.i41 ], [ %11, %if.else.i51 ]
  %q.sroa.4.3 = phi i32 [ %q.sroa.4.2, %if.then.i41 ], [ %14, %if.else.i51 ]
  %storemerge.i52 = phi i32 [ %sub.i40, %if.then.i41 ], [ %sub13.i50, %if.else.i51 ]
  %initial_cpb_removal_delay_offset = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 67
  %16 = load i32, i32* %initial_cpb_removal_delay_offset, align 4, !tbaa !175
  %cmp.i = icmp sgt i32 %storemerge.i52, %15
  br i1 %cmp.i, label %if.then.i30, label %if.else.i

if.then.i30:                                      ; preds = %bs_write.exit53
  %shl.i28 = shl i32 %q.sroa.27.2, %15
  %or.i = or i32 %shl.i28, %16
  %sub.i29 = sub nsw i32 %storemerge.i52, %15
  br label %if.end

if.else.i:                                        ; preds = %bs_write.exit53
  %sub4.i = sub nsw i32 %15, %storemerge.i52
  %shl7.i = shl i32 %q.sroa.27.2, %storemerge.i52
  %shr.i31 = lshr i32 %16, %sub4.i
  %or8.i = or i32 %shr.i31, %shl7.i
  %add5.i.i.i32 = call i32 @llvm.bswap.i32(i32 %or8.i) #9
  %17 = inttoptr i32 %q.sroa.4.3 to i32*
  store i32 %add5.i.i.i32, i32* %17, align 4, !tbaa !9
  %18 = inttoptr i32 %q.sroa.4.3 to i8*
  %add.ptr.i34 = getelementptr inbounds i8, i8* %18, i32 4
  %19 = ptrtoint i8* %add.ptr.i34 to i32
  %sub13.i = sub nsw i32 32, %sub4.i
  br label %if.end

if.end:                                           ; preds = %if.else.i, %if.then.i30, %bs_write_ue_big.exit
  %q.sroa.27.4 = phi i32 [ %inc.i, %bs_write_ue_big.exit ], [ %or.i, %if.then.i30 ], [ %16, %if.else.i ]
  %q.sroa.4.5 = phi i32 [ %q.sroa.4.2, %bs_write_ue_big.exit ], [ %q.sroa.4.3, %if.then.i30 ], [ %19, %if.else.i ]
  %q.sroa.47.1 = phi i32 [ %storemerge.i35.i, %bs_write_ue_big.exit ], [ %sub.i29, %if.then.i30 ], [ %sub13.i, %if.else.i ]
  %and.i22 = and i32 %q.sroa.47.1, 7
  %tobool.i23 = icmp eq i32 %and.i22, 0
  br i1 %tobool.i23, label %bs_align_10.exit, label %if.then.i25

if.then.i25:                                      ; preds = %if.end
  %sub.i24 = add nsw i32 %and.i22, -1
  %shl.i = shl nuw nsw i32 1, %sub.i24
  %20 = icmp sgt i32 %q.sroa.47.1, 7
  br i1 %20, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then.i25
  %shl.i.i = shl i32 %q.sroa.27.4, %and.i22
  %or.i.i = or i32 %shl.i, %shl.i.i
  %sub.i.i = sub nuw nsw i32 %q.sroa.47.1, %and.i22
  br label %bs_align_10.exit

if.else.i.i:                                      ; preds = %if.then.i25
  %sub4.i.i = sub nsw i32 %and.i22, %q.sroa.47.1
  %shl7.i.i = shl i32 %q.sroa.27.4, %q.sroa.47.1
  %shr.i.i = lshr i32 %shl.i, %sub4.i.i
  %or8.i.i = or i32 %shr.i.i, %shl7.i.i
  %add5.i.i.i.i = call i32 @llvm.bswap.i32(i32 %or8.i.i) #9
  %21 = inttoptr i32 %q.sroa.4.5 to i32*
  store i32 %add5.i.i.i.i, i32* %21, align 4, !tbaa !9
  %22 = inttoptr i32 %q.sroa.4.5 to i8*
  %add.ptr.i.i = getelementptr inbounds i8, i8* %22, i32 4
  %23 = ptrtoint i8* %add.ptr.i.i to i32
  %sub13.i.i = sub nsw i32 32, %sub4.i.i
  br label %bs_align_10.exit

bs_align_10.exit:                                 ; preds = %if.then.i.i, %if.else.i.i, %if.end
  %q.sroa.4.7 = phi i32 [ %q.sroa.4.5, %if.end ], [ %q.sroa.4.5, %if.then.i.i ], [ %23, %if.else.i.i ]
  %q.sroa.47.2 = phi i32 [ %q.sroa.47.1, %if.end ], [ %sub.i.i, %if.then.i.i ], [ %sub13.i.i, %if.else.i.i ]
  %24 = phi i32 [ %q.sroa.27.4, %if.end ], [ %or.i.i, %if.then.i.i ], [ %shl.i, %if.else.i.i ]
  %and.i.i = and i32 %q.sroa.47.2, 31
  %shl.i11.i = shl i32 %24, %and.i.i
  %add5.i.i.i = call i32 @llvm.bswap.i32(i32 %shl.i11.i) #9
  %25 = inttoptr i32 %q.sroa.4.7 to i32*
  store i32 %add5.i.i.i, i32* %25, align 4, !tbaa !9
  %shr.i13.i = ashr i32 %q.sroa.47.2, 3
  %sub.i14.i = sub nsw i32 4, %shr.i13.i
  %26 = inttoptr i32 %q.sroa.4.7 to i8*
  %add.ptr.i15.i = getelementptr inbounds i8, i8* %26, i32 %sub.i14.i
  %27 = ptrtoint i8* %add.ptr.i15.i to i32
  %sub.ptr.sub.i = sub i32 %27, %1
  %mul.i18 = shl i32 %sub.ptr.sub.i, 3
  %div = sdiv i32 %mul.i18, 8
  call void @x264_8_sei_write(%struct.bs_s* %s, i8* nonnull %0, i32 %div, i32 0)
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %0) #9
  ret void
}

; Function Attrs: nounwind
define hidden void @x264_8_sei_pic_timing_write(%struct.x264_t* nocapture readonly %h, %struct.bs_s* %s) local_unnamed_addr #4 {
bs_realign.exit:
  %tmp_buf = alloca [100 x i8], align 4
  %0 = getelementptr inbounds [100 x i8], [100 x i8]* %tmp_buf, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %0) #9
  %i = bitcast [100 x i8]* %tmp_buf to i32*
  store i32 0, i32* %i, align 4, !tbaa !9
  %1 = ptrtoint [100 x i8]* %tmp_buf to i32
  %b_nal_hrd_parameters_present = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 20, i32 19
  %2 = load i32, i32* %b_nal_hrd_parameters_present, align 4, !tbaa !106
  %tobool = icmp eq i32 %2, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %bs_realign.exit
  %b_vcl_hrd_parameters_present = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 20, i32 20
  %3 = load i32, i32* %b_vcl_hrd_parameters_present, align 4, !tbaa !104
  %tobool5 = icmp eq i32 %3, 0
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %bs_realign.exit
  %i_cpb_removal_delay_length = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 20, i32 21, i32 9
  %4 = load i32, i32* %i_cpb_removal_delay_length, align 4, !tbaa !129
  %fenc = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 60
  %5 = load %struct.x264_frame*, %struct.x264_frame** %fenc, align 8, !tbaa !176
  %i_cpb_delay = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %5, i32 0, i32 12
  %6 = load i64, i64* %i_cpb_delay, align 16, !tbaa !177
  %i_cpb_delay_pir_offset = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 31
  %7 = load i64, i64* %i_cpb_delay_pir_offset, align 8, !tbaa !181
  %sub = sub nsw i64 %6, %7
  %conv = trunc i64 %sub to i32
  %cmp.i83 = icmp slt i32 %4, 32
  br i1 %cmp.i83, label %bs_write.exit100, label %if.else.i98

if.else.i98:                                      ; preds = %if.then
  store i32 -1, i32* %i, align 4, !tbaa !9
  %add.ptr.i96 = getelementptr inbounds [100 x i8], [100 x i8]* %tmp_buf, i32 0, i32 4
  %8 = ptrtoint i8* %add.ptr.i96 to i32
  br label %bs_write.exit100

bs_write.exit100:                                 ; preds = %if.then, %if.else.i98
  %q.sroa.4.1 = phi i32 [ %8, %if.else.i98 ], [ %1, %if.then ]
  %.pn = phi i32 [ 64, %if.else.i98 ], [ 32, %if.then ]
  %storemerge.i99 = sub i32 %.pn, %4
  %i_dpb_output_delay_length = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 20, i32 21, i32 10
  %9 = load i32, i32* %i_dpb_output_delay_length, align 4, !tbaa !130
  %i_dpb_output_delay = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %5, i32 0, i32 13
  %10 = load i64, i64* %i_dpb_output_delay, align 8, !tbaa !182
  %conv10 = trunc i64 %10 to i32
  %cmp.i64 = icmp sgt i32 %storemerge.i99, %9
  br i1 %cmp.i64, label %if.then.i69, label %if.else.i79

if.then.i69:                                      ; preds = %bs_write.exit100
  %shl.i66 = shl i32 %conv, %9
  %or.i67 = or i32 %shl.i66, %conv10
  %sub.i68 = sub nsw i32 %storemerge.i99, %9
  br label %if.end

if.else.i79:                                      ; preds = %bs_write.exit100
  %sub4.i70 = sub nsw i32 %9, %storemerge.i99
  %shl7.i72 = shl i32 %conv, %storemerge.i99
  %shr.i73 = lshr i32 %conv10, %sub4.i70
  %or8.i74 = or i32 %shr.i73, %shl7.i72
  %add5.i.i.i75 = call i32 @llvm.bswap.i32(i32 %or8.i74) #9
  %11 = inttoptr i32 %q.sroa.4.1 to i32*
  store i32 %add5.i.i.i75, i32* %11, align 4, !tbaa !9
  %12 = inttoptr i32 %q.sroa.4.1 to i8*
  %add.ptr.i77 = getelementptr inbounds i8, i8* %12, i32 4
  %13 = ptrtoint i8* %add.ptr.i77 to i32
  %sub13.i78 = sub nsw i32 32, %sub4.i70
  br label %if.end

if.end:                                           ; preds = %if.else.i79, %if.then.i69, %lor.lhs.false
  %q.sroa.27.3 = phi i32 [ 0, %lor.lhs.false ], [ %or.i67, %if.then.i69 ], [ %conv10, %if.else.i79 ]
  %q.sroa.4.3 = phi i32 [ %1, %lor.lhs.false ], [ %q.sroa.4.1, %if.then.i69 ], [ %13, %if.else.i79 ]
  %q.sroa.48.1 = phi i32 [ 32, %lor.lhs.false ], [ %sub.i68, %if.then.i69 ], [ %sub13.i78, %if.else.i79 ]
  %b_pic_struct_present = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 20, i32 22
  %14 = load i32, i32* %b_pic_struct_present, align 4, !tbaa !108
  %tobool12 = icmp eq i32 %14, 0
  br i1 %tobool12, label %if.end21, label %if.then13

if.then13:                                        ; preds = %if.end
  %fenc14 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 60
  %15 = load %struct.x264_frame*, %struct.x264_frame** %fenc14, align 8, !tbaa !176
  %i_pic_struct = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %15, i32 0, i32 20
  %16 = load i32, i32* %i_pic_struct, align 16, !tbaa !183
  %sub15 = add nsw i32 %16, -1
  %cmp.i54 = icmp sgt i32 %q.sroa.48.1, 4
  br i1 %cmp.i54, label %if.then.i58, label %if.else.i

if.then.i58:                                      ; preds = %if.then13
  %shl.i56 = shl i32 %q.sroa.27.3, 4
  %or.i = or i32 %sub15, %shl.i56
  %sub.i57 = add nsw i32 %q.sroa.48.1, -4
  br label %bs_write.exit

if.else.i:                                        ; preds = %if.then13
  %sub4.i = sub nsw i32 4, %q.sroa.48.1
  %shl7.i = shl i32 %q.sroa.27.3, %q.sroa.48.1
  %shr.i59 = lshr i32 %sub15, %sub4.i
  %or8.i = or i32 %shr.i59, %shl7.i
  %add5.i.i.i60 = call i32 @llvm.bswap.i32(i32 %or8.i) #9
  %17 = inttoptr i32 %q.sroa.4.3 to i32*
  store i32 %add5.i.i.i60, i32* %17, align 4, !tbaa !9
  %18 = inttoptr i32 %q.sroa.4.3 to i8*
  %add.ptr.i62 = getelementptr inbounds i8, i8* %18, i32 4
  %19 = ptrtoint i8* %add.ptr.i62 to i32
  %sub13.i = add nsw i32 %q.sroa.48.1, 28
  %.pre = load %struct.x264_frame*, %struct.x264_frame** %fenc14, align 8, !tbaa !176
  %i_pic_struct18134.phi.trans.insert = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %.pre, i32 0, i32 20
  %.pre144 = load i32, i32* %i_pic_struct18134.phi.trans.insert, align 16, !tbaa !183
  br label %bs_write.exit

bs_write.exit:                                    ; preds = %if.then.i58, %if.else.i
  %20 = phi i32 [ %16, %if.then.i58 ], [ %.pre144, %if.else.i ]
  %21 = phi %struct.x264_frame* [ %15, %if.then.i58 ], [ %.pre, %if.else.i ]
  %q.sroa.27.4 = phi i32 [ %or.i, %if.then.i58 ], [ %sub15, %if.else.i ]
  %q.sroa.4.4 = phi i32 [ %q.sroa.4.3, %if.then.i58 ], [ %19, %if.else.i ]
  %storemerge.i = phi i32 [ %sub.i57, %if.then.i58 ], [ %sub13.i, %if.else.i ]
  %cmp137 = icmp eq i32 %20, 0
  br i1 %cmp137, label %if.end21, label %for.body

for.body:                                         ; preds = %bs_write.exit, %bs_write1.exit
  %22 = phi %struct.x264_frame* [ %26, %bs_write1.exit ], [ %21, %bs_write.exit ]
  %i16.0141 = phi i32 [ %inc, %bs_write1.exit ], [ 0, %bs_write.exit ]
  %q.sroa.48.2140 = phi i32 [ %q.sroa.48.3, %bs_write1.exit ], [ %storemerge.i, %bs_write.exit ]
  %q.sroa.4.5139 = phi i32 [ %q.sroa.4.6, %bs_write1.exit ], [ %q.sroa.4.4, %bs_write.exit ]
  %q.sroa.27.5138 = phi i32 [ %shl.i47, %bs_write1.exit ], [ %q.sroa.27.4, %bs_write.exit ]
  %shl.i47 = shl i32 %q.sroa.27.5138, 1
  %dec.i = add nsw i32 %q.sroa.48.2140, -1
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %if.then.i52, label %bs_write1.exit

if.then.i52:                                      ; preds = %for.body
  %add5.i.i49 = call i32 @llvm.bswap.i32(i32 %shl.i47) #9
  %23 = inttoptr i32 %q.sroa.4.5139 to i32*
  store i32 %add5.i.i49, i32* %23, align 4, !tbaa !9
  %24 = inttoptr i32 %q.sroa.4.5139 to i8*
  %add.ptr.i51 = getelementptr inbounds i8, i8* %24, i32 4
  %25 = ptrtoint i8* %add.ptr.i51 to i32
  %.pre145 = load %struct.x264_frame*, %struct.x264_frame** %fenc14, align 8, !tbaa !176
  br label %bs_write1.exit

bs_write1.exit:                                   ; preds = %for.body, %if.then.i52
  %26 = phi %struct.x264_frame* [ %.pre145, %if.then.i52 ], [ %22, %for.body ]
  %q.sroa.4.6 = phi i32 [ %25, %if.then.i52 ], [ %q.sroa.4.5139, %for.body ]
  %q.sroa.48.3 = phi i32 [ 32, %if.then.i52 ], [ %dec.i, %for.body ]
  %inc = add nuw nsw i32 %i16.0141, 1
  %i_pic_struct18 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %26, i32 0, i32 20
  %27 = load i32, i32* %i_pic_struct18, align 16, !tbaa !183
  %arrayidx = getelementptr inbounds [10 x i8], [10 x i8]* @num_clock_ts, i32 0, i32 %27
  %28 = load i8, i8* %arrayidx, align 1, !tbaa !9
  %conv19 = zext i8 %28 to i32
  %cmp = icmp ult i32 %inc, %conv19
  br i1 %cmp, label %for.body, label %if.end21

if.end21:                                         ; preds = %bs_write1.exit, %bs_write.exit, %if.end
  %q.sroa.27.6 = phi i32 [ %q.sroa.27.3, %if.end ], [ %q.sroa.27.4, %bs_write.exit ], [ %shl.i47, %bs_write1.exit ]
  %q.sroa.4.7 = phi i32 [ %q.sroa.4.3, %if.end ], [ %q.sroa.4.4, %bs_write.exit ], [ %q.sroa.4.6, %bs_write1.exit ]
  %q.sroa.48.4 = phi i32 [ %q.sroa.48.1, %if.end ], [ %storemerge.i, %bs_write.exit ], [ %q.sroa.48.3, %bs_write1.exit ]
  %and.i42 = and i32 %q.sroa.48.4, 7
  %tobool.i43 = icmp eq i32 %and.i42, 0
  br i1 %tobool.i43, label %bs_align_10.exit, label %if.then.i45

if.then.i45:                                      ; preds = %if.end21
  %sub.i44 = add nsw i32 %and.i42, -1
  %shl.i = shl nuw nsw i32 1, %sub.i44
  %29 = icmp sgt i32 %q.sroa.48.4, 7
  br i1 %29, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then.i45
  %shl.i.i = shl i32 %q.sroa.27.6, %and.i42
  %or.i.i = or i32 %shl.i, %shl.i.i
  %sub.i.i = sub nuw nsw i32 %q.sroa.48.4, %and.i42
  br label %bs_align_10.exit

if.else.i.i:                                      ; preds = %if.then.i45
  %sub4.i.i = sub nsw i32 %and.i42, %q.sroa.48.4
  %shl7.i.i = shl i32 %q.sroa.27.6, %q.sroa.48.4
  %shr.i.i = lshr i32 %shl.i, %sub4.i.i
  %or8.i.i = or i32 %shr.i.i, %shl7.i.i
  %add5.i.i.i.i = call i32 @llvm.bswap.i32(i32 %or8.i.i) #9
  %30 = inttoptr i32 %q.sroa.4.7 to i32*
  store i32 %add5.i.i.i.i, i32* %30, align 4, !tbaa !9
  %31 = inttoptr i32 %q.sroa.4.7 to i8*
  %add.ptr.i.i = getelementptr inbounds i8, i8* %31, i32 4
  %32 = ptrtoint i8* %add.ptr.i.i to i32
  %sub13.i.i = sub nsw i32 32, %sub4.i.i
  br label %bs_align_10.exit

bs_align_10.exit:                                 ; preds = %if.then.i.i, %if.else.i.i, %if.end21
  %q.sroa.4.9 = phi i32 [ %q.sroa.4.7, %if.end21 ], [ %q.sroa.4.7, %if.then.i.i ], [ %32, %if.else.i.i ]
  %q.sroa.48.5 = phi i32 [ %q.sroa.48.4, %if.end21 ], [ %sub.i.i, %if.then.i.i ], [ %sub13.i.i, %if.else.i.i ]
  %33 = phi i32 [ %q.sroa.27.6, %if.end21 ], [ %or.i.i, %if.then.i.i ], [ %shl.i, %if.else.i.i ]
  %and.i.i = and i32 %q.sroa.48.5, 31
  %shl.i11.i = shl i32 %33, %and.i.i
  %add5.i.i.i = call i32 @llvm.bswap.i32(i32 %shl.i11.i) #9
  %34 = inttoptr i32 %q.sroa.4.9 to i32*
  store i32 %add5.i.i.i, i32* %34, align 4, !tbaa !9
  %shr.i13.i = ashr i32 %q.sroa.48.5, 3
  %sub.i14.i = sub nsw i32 4, %shr.i13.i
  %35 = inttoptr i32 %q.sroa.4.9 to i8*
  %add.ptr.i15.i = getelementptr inbounds i8, i8* %35, i32 %sub.i14.i
  %36 = ptrtoint i8* %add.ptr.i15.i to i32
  %sub.ptr.sub.i = sub i32 %36, %1
  %mul.i38 = shl i32 %sub.ptr.sub.i, 3
  %div = sdiv i32 %mul.i38, 8
  call void @x264_8_sei_write(%struct.bs_s* %s, i8* nonnull %0, i32 %div, i32 1)
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %0) #9
  ret void
}

; Function Attrs: nounwind
define hidden void @x264_8_sei_frame_packing_write(%struct.x264_t* nocapture readonly %h, %struct.bs_s* %s) local_unnamed_addr #4 {
bs_write_ue_big.exit282:
  %tmp_buf = alloca [100 x i8], align 4
  %i_frame_packing = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 54
  %0 = load i32, i32* %i_frame_packing, align 4, !tbaa !184
  %cmp = icmp eq i32 %0, 0
  %1 = getelementptr inbounds [100 x i8], [100 x i8]* %tmp_buf, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %1) #9
  %i = bitcast [100 x i8]* %tmp_buf to i32*
  store i32 0, i32* %i, align 4, !tbaa !9
  %2 = ptrtoint [100 x i8]* %tmp_buf to i32
  %cmp6 = icmp ne i32 %0, 6
  %conv7 = zext i1 %cmp6 to i32
  %3 = shl i32 %0, 7
  %4 = select i1 %cmp, i32 64, i32 0
  %or.i217 = or i32 %3, %4
  %shl.i200 = or i32 %or.i217, %conv7
  %cmp10 = icmp eq i32 %0, 5
  br i1 %cmp10, label %land.rhs, label %bs_write1.exit156

land.rhs:                                         ; preds = %bs_write_ue_big.exit282
  %fenc = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 60
  %5 = load %struct.x264_frame*, %struct.x264_frame** %fenc, align 8, !tbaa !176
  %i_frame = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %5, i32 0, i32 15
  %6 = load i32, i32* %i_frame, align 4, !tbaa !185
  %and = shl i32 %6, 2
  %7 = and i32 %and, 4
  %phitmp = xor i32 %7, 4
  br label %bs_write1.exit156

bs_write1.exit156:                                ; preds = %land.rhs, %bs_write_ue_big.exit282
  %8 = phi i32 [ 0, %bs_write_ue_big.exit282 ], [ %phitmp, %land.rhs ]
  %9 = shl i32 %shl.i200, 6
  %or.i = or i32 %9, %8
  %shl.i148 = or i32 %or.i, 2097152
  br i1 %cmp, label %bs_write.exit.thread410, label %land.lhs.true

bs_write.exit.thread410:                          ; preds = %bs_write1.exit156
  %shl.i67414 = shl i32 %shl.i148, 8
  br label %12

land.lhs.true:                                    ; preds = %bs_write1.exit156
  br i1 %cmp10, label %11, label %bs_write.exit

bs_write.exit:                                    ; preds = %land.lhs.true
  %shl.i108 = shl i32 %shl.i148, 10
  %add5.i.i.i98 = call i32 @llvm.bswap.i32(i32 %shl.i108) #9
  store i32 %add5.i.i.i98, i32* %i, align 4, !tbaa !9
  %add.ptr.i100 = getelementptr inbounds [100 x i8], [100 x i8]* %tmp_buf, i32 0, i32 4
  %10 = ptrtoint i8* %add.ptr.i100 to i32
  br label %12

11:                                               ; preds = %land.lhs.true
  %shl.i67402 = shl i32 %shl.i148, 8
  br label %12

12:                                               ; preds = %bs_write.exit, %bs_write.exit.thread410, %11
  %shl.i67408 = phi i32 [ %shl.i67402, %11 ], [ 0, %bs_write.exit ], [ %shl.i67414, %bs_write.exit.thread410 ]
  %q.sroa.4.17391406 = phi i32 [ %2, %11 ], [ %10, %bs_write.exit ], [ %2, %bs_write.exit.thread410 ]
  %q.sroa.138.9392404 = phi i32 [ 2, %11 ], [ 18, %bs_write.exit ], [ 2, %bs_write.exit.thread410 ]
  %13 = phi i32 [ 1, %11 ], [ 2, %bs_write.exit ], [ 2, %bs_write.exit.thread410 ]
  %arrayidx.i = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %13
  %14 = load i8, i8* %arrayidx.i, align 1, !tbaa !9
  %15 = lshr i8 %14, 1
  %16 = zext i8 %15 to i32
  %cmp.i.i = icmp ugt i32 %q.sroa.138.9392404, %16
  br i1 %cmp.i.i, label %if.then.i.i53, label %if.else.i.i58

if.then.i.i53:                                    ; preds = %12
  %shl.i.i52 = shl i32 %shl.i67408, %16
  br label %bs_write.exit.i60

if.else.i.i58:                                    ; preds = %12
  %shl7.i.i54 = shl i32 %shl.i67408, %q.sroa.138.9392404
  %add5.i.i.i.i55 = call i32 @llvm.bswap.i32(i32 %shl7.i.i54) #9
  %17 = inttoptr i32 %q.sroa.4.17391406 to i32*
  store i32 %add5.i.i.i.i55, i32* %17, align 4, !tbaa !9
  %18 = inttoptr i32 %q.sroa.4.17391406 to i8*
  %add.ptr.i.i57 = getelementptr inbounds i8, i8* %18, i32 4
  %19 = ptrtoint i8* %add.ptr.i.i57 to i32
  %sub4.i37.i = or i32 %q.sroa.138.9392404, 32
  br label %bs_write.exit.i60

bs_write.exit.i60:                                ; preds = %if.else.i.i58, %if.then.i.i53
  %q.sroa.4.19 = phi i32 [ %q.sroa.4.17391406, %if.then.i.i53 ], [ %19, %if.else.i.i58 ]
  %20 = phi i32 [ %shl.i.i52, %if.then.i.i53 ], [ 0, %if.else.i.i58 ]
  %sub4.i37.pn.i = phi i32 [ %q.sroa.138.9392404, %if.then.i.i53 ], [ %sub4.i37.i, %if.else.i.i58 ]
  %storemerge.i.i59 = sub nsw i32 %sub4.i37.pn.i, %16
  %add8.i = add nuw nsw i32 %16, 1
  %cmp.i22.i = icmp sgt i32 %storemerge.i.i59, %add8.i
  br i1 %cmp.i22.i, label %if.then.i26.i, label %if.else.i34.i

if.then.i26.i:                                    ; preds = %bs_write.exit.i60
  %shl.i24.i = shl i32 %20, %add8.i
  %or.i.i61 = or i32 %shl.i24.i, %13
  %sub.i25.i = sub nsw i32 %storemerge.i.i59, %add8.i
  br label %bs_write_ue_big.exit

if.else.i34.i:                                    ; preds = %bs_write.exit.i60
  %sub4.i27.i = sub nsw i32 %add8.i, %storemerge.i.i59
  %shl7.i29.i = shl i32 %20, %storemerge.i.i59
  %shr.i.i62 = lshr i32 %13, %sub4.i27.i
  %or8.i.i63 = or i32 %shr.i.i62, %shl7.i29.i
  %add5.i.i.i30.i = call i32 @llvm.bswap.i32(i32 %or8.i.i63) #9
  %21 = inttoptr i32 %q.sroa.4.19 to i32*
  store i32 %add5.i.i.i30.i, i32* %21, align 4, !tbaa !9
  %22 = inttoptr i32 %q.sroa.4.19 to i8*
  %add.ptr.i32.i = getelementptr inbounds i8, i8* %22, i32 4
  %23 = ptrtoint i8* %add.ptr.i32.i to i32
  %sub13.i33.i = sub nsw i32 32, %sub4.i27.i
  br label %bs_write_ue_big.exit

bs_write_ue_big.exit:                             ; preds = %if.then.i26.i, %if.else.i34.i
  %q.sroa.75.10 = phi i32 [ %or.i.i61, %if.then.i26.i ], [ %13, %if.else.i34.i ]
  %q.sroa.4.20 = phi i32 [ %q.sroa.4.19, %if.then.i26.i ], [ %23, %if.else.i34.i ]
  %storemerge.i35.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %sub13.i33.i, %if.else.i34.i ]
  %shl.i43 = shl i32 %q.sroa.75.10, 1
  %dec.i = add nsw i32 %storemerge.i35.i, -1
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %bs_write1.exit.thread, label %bs_write1.exit

bs_write1.exit.thread:                            ; preds = %bs_write_ue_big.exit
  %add5.i.i45 = call i32 @llvm.bswap.i32(i32 %shl.i43) #9
  %24 = inttoptr i32 %q.sroa.4.20 to i32*
  store i32 %add5.i.i45, i32* %24, align 4, !tbaa !9
  %25 = inttoptr i32 %q.sroa.4.20 to i8*
  %add.ptr.i47 = getelementptr inbounds i8, i8* %25, i32 4
  %26 = ptrtoint i8* %add.ptr.i47 to i32
  br label %bs_align_10.exit

bs_write1.exit:                                   ; preds = %bs_write_ue_big.exit
  %and.i38 = and i32 %dec.i, 7
  %tobool.i39 = icmp eq i32 %and.i38, 0
  br i1 %tobool.i39, label %bs_align_10.exit, label %if.then.i41

if.then.i41:                                      ; preds = %bs_write1.exit
  %sub.i40 = add nsw i32 %and.i38, -1
  %shl.i = shl nuw nsw i32 1, %sub.i40
  %27 = icmp sgt i32 %storemerge.i35.i, 8
  br i1 %27, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then.i41
  %shl.i.i = shl i32 %shl.i43, %and.i38
  %or.i.i = or i32 %shl.i, %shl.i.i
  %sub.i.i = sub nuw nsw i32 %dec.i, %and.i38
  br label %bs_align_10.exit

if.else.i.i:                                      ; preds = %if.then.i41
  %sub4.i.i = sub nsw i32 %and.i38, %dec.i
  %shl7.i.i = shl i32 %shl.i43, %dec.i
  %shr.i.i = lshr i32 %shl.i, %sub4.i.i
  %or8.i.i = or i32 %shr.i.i, %shl7.i.i
  %add5.i.i.i.i = call i32 @llvm.bswap.i32(i32 %or8.i.i) #9
  %28 = inttoptr i32 %q.sroa.4.20 to i32*
  store i32 %add5.i.i.i.i, i32* %28, align 4, !tbaa !9
  %29 = inttoptr i32 %q.sroa.4.20 to i8*
  %add.ptr.i.i = getelementptr inbounds i8, i8* %29, i32 4
  %30 = ptrtoint i8* %add.ptr.i.i to i32
  %sub13.i.i = sub nsw i32 32, %sub4.i.i
  br label %bs_align_10.exit

bs_align_10.exit:                                 ; preds = %if.then.i.i, %if.else.i.i, %bs_write1.exit, %bs_write1.exit.thread
  %q.sroa.4.23 = phi i32 [ %26, %bs_write1.exit.thread ], [ %q.sroa.4.20, %bs_write1.exit ], [ %q.sroa.4.20, %if.then.i.i ], [ %30, %if.else.i.i ]
  %q.sroa.138.11 = phi i32 [ 32, %bs_write1.exit.thread ], [ %dec.i, %bs_write1.exit ], [ %sub.i.i, %if.then.i.i ], [ %sub13.i.i, %if.else.i.i ]
  %31 = phi i32 [ %shl.i43, %bs_write1.exit.thread ], [ %shl.i43, %bs_write1.exit ], [ %or.i.i, %if.then.i.i ], [ %shl.i, %if.else.i.i ]
  %and.i.i = and i32 %q.sroa.138.11, 31
  %shl.i11.i = shl i32 %31, %and.i.i
  %add5.i.i.i = call i32 @llvm.bswap.i32(i32 %shl.i11.i) #9
  %32 = inttoptr i32 %q.sroa.4.23 to i32*
  store i32 %add5.i.i.i, i32* %32, align 4, !tbaa !9
  %shr.i13.i = ashr i32 %q.sroa.138.11, 3
  %sub.i14.i = sub nsw i32 4, %shr.i13.i
  %33 = inttoptr i32 %q.sroa.4.23 to i8*
  %add.ptr.i15.i = getelementptr inbounds i8, i8* %33, i32 %sub.i14.i
  %34 = ptrtoint i8* %add.ptr.i15.i to i32
  %sub.ptr.sub.i = sub i32 %34, %2
  %mul.i34 = shl i32 %sub.ptr.sub.i, 3
  %div = sdiv i32 %mul.i34, 8
  call void @x264_8_sei_write(%struct.bs_s* %s, i8* nonnull %1, i32 %div, i32 45)
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %1) #9
  ret void
}

; Function Attrs: nounwind
define hidden void @x264_8_sei_mastering_display_write(%struct.x264_t* nocapture readonly %h, %struct.bs_s* %s) local_unnamed_addr #4 {
bs_write.exit240:
  %tmp_buf = alloca [100 x i8], align 4
  %0 = getelementptr inbounds [100 x i8], [100 x i8]* %tmp_buf, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %0) #9
  %i = bitcast [100 x i8]* %tmp_buf to i32*
  %i_green_y = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 55, i32 2
  %1 = load i32, i32* %i_green_y, align 8, !tbaa !186
  %i_green_x = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 55, i32 1
  %2 = load i32, i32* %i_green_x, align 4, !tbaa !187
  %shl7.i212 = shl i32 %2, 16
  %or8.i214 = or i32 %shl7.i212, %1
  %add5.i.i.i215 = call i32 @llvm.bswap.i32(i32 %or8.i214) #9
  store i32 %add5.i.i.i215, i32* %i, align 4, !tbaa !9
  %add.ptr.i217 = getelementptr inbounds [100 x i8], [100 x i8]* %tmp_buf, i32 0, i32 4
  %i_blue_x312 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 55, i32 3
  %3 = load i32, i32* %i_blue_x312, align 4, !tbaa !188
  %phitmp = shl i32 %3, 16
  %i_blue_y = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 55, i32 4
  %4 = load i32, i32* %i_blue_y, align 16, !tbaa !189
  %or8.i176 = or i32 %phitmp, %4
  %add5.i.i.i177 = call i32 @llvm.bswap.i32(i32 %or8.i176) #9
  %5 = bitcast i8* %add.ptr.i217 to i32*
  store i32 %add5.i.i.i177, i32* %5, align 4, !tbaa !9
  %add.ptr.i179 = getelementptr inbounds [100 x i8], [100 x i8]* %tmp_buf, i32 0, i32 8
  %i_red_x = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 55, i32 5
  %6 = load i32, i32* %i_red_x, align 4, !tbaa !190
  %i_red_y = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 55, i32 6
  %7 = load i32, i32* %i_red_y, align 8, !tbaa !191
  %shl7.i136 = shl i32 %6, 16
  %or8.i138 = or i32 %shl7.i136, %7
  %add5.i.i.i139 = call i32 @llvm.bswap.i32(i32 %or8.i138) #9
  %8 = bitcast i8* %add.ptr.i179 to i32*
  store i32 %add5.i.i.i139, i32* %8, align 4, !tbaa !9
  %add.ptr.i141 = getelementptr inbounds [100 x i8], [100 x i8]* %tmp_buf, i32 0, i32 12
  %i_white_x = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 55, i32 7
  %9 = load i32, i32* %i_white_x, align 4, !tbaa !192
  %i_white_y = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 55, i32 8
  %10 = load i32, i32* %i_white_y, align 32, !tbaa !193
  %shl7.i = shl i32 %9, 16
  %or8.i = or i32 %shl7.i, %10
  %add5.i.i.i105 = call i32 @llvm.bswap.i32(i32 %or8.i) #9
  %11 = bitcast i8* %add.ptr.i141 to i32*
  store i32 %add5.i.i.i105, i32* %11, align 4, !tbaa !9
  %i_display_max = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 55, i32 9
  %12 = load i64, i64* %i_display_max, align 8, !tbaa !194
  %conv = trunc i64 %12 to i32
  %add.ptr.i107 = getelementptr inbounds [100 x i8], [100 x i8]* %tmp_buf, i32 0, i32 16
  %add5.i.i.i15.i92 = call i32 @llvm.bswap.i32(i32 %conv) #9
  %13 = bitcast i8* %add.ptr.i107 to i32*
  store i32 %add5.i.i.i15.i92, i32* %13, align 4, !tbaa !9
  %add.ptr.i17.i94 = getelementptr inbounds [100 x i8], [100 x i8]* %tmp_buf, i32 0, i32 20
  %i_display_min = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 55, i32 10
  %14 = load i64, i64* %i_display_min, align 16, !tbaa !195
  %conv20 = trunc i64 %14 to i32
  %add5.i.i.i15.i = call i32 @llvm.bswap.i32(i32 %conv20) #9
  %15 = bitcast i8* %add.ptr.i17.i94 to i32*
  store i32 %add5.i.i.i15.i, i32* %15, align 4, !tbaa !9
  %add.ptr.i17.i = getelementptr inbounds [100 x i8], [100 x i8]* %tmp_buf, i32 0, i32 24
  %16 = bitcast i8* %add.ptr.i17.i to i32*
  store i32 %add5.i.i.i15.i, i32* %16, align 4, !tbaa !9
  call void @x264_8_sei_write(%struct.bs_s* %s, i8* nonnull %0, i32 24, i32 137)
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %0) #9
  ret void
}

; Function Attrs: nounwind
define hidden void @x264_8_sei_content_light_level_write(%struct.x264_t* nocapture readonly %h, %struct.bs_s* %s) local_unnamed_addr #4 {
bs_write.exit44:
  %tmp_buf = alloca [100 x i8], align 4
  %0 = getelementptr inbounds [100 x i8], [100 x i8]* %tmp_buf, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %0) #9
  %i = bitcast [100 x i8]* %tmp_buf to i32*
  %i_max_fall = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 56, i32 2
  %1 = load i32, i32* %i_max_fall, align 8, !tbaa !196
  %i_max_cll = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 56, i32 1
  %2 = load i32, i32* %i_max_cll, align 4, !tbaa !197
  %shl7.i = shl i32 %2, 16
  %or8.i = or i32 %shl7.i, %1
  %add5.i.i.i23 = call i32 @llvm.bswap.i32(i32 %or8.i) #9
  store i32 %add5.i.i.i23, i32* %i, align 4, !tbaa !9
  %add.ptr.i25 = getelementptr inbounds [100 x i8], [100 x i8]* %tmp_buf, i32 0, i32 4
  %add5.i.i.i = call i32 @llvm.bswap.i32(i32 %1) #9
  %3 = bitcast i8* %add.ptr.i25 to i32*
  store i32 %add5.i.i.i, i32* %3, align 4, !tbaa !9
  call void @x264_8_sei_write(%struct.bs_s* %s, i8* nonnull %0, i32 4, i32 144)
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %0) #9
  ret void
}

; Function Attrs: nounwind
define hidden void @x264_8_sei_alternative_transfer_write(%struct.x264_t* nocapture readonly %h, %struct.bs_s* %s) local_unnamed_addr #4 {
bs_write.exit:
  %tmp_buf = alloca [100 x i8], align 4
  %0 = getelementptr inbounds [100 x i8], [100 x i8]* %tmp_buf, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %0) #9
  %i = bitcast [100 x i8]* %tmp_buf to i32*
  %i_alternative_transfer = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 57
  %1 = load i32, i32* %i_alternative_transfer, align 4, !tbaa !198
  %shl.i11.i = shl i32 %1, 24
  %add5.i.i.i = tail call i32 @llvm.bswap.i32(i32 %shl.i11.i) #9
  store i32 %add5.i.i.i, i32* %i, align 4, !tbaa !9
  call void @x264_8_sei_write(%struct.bs_s* %s, i8* nonnull %0, i32 1, i32 147)
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %0) #9
  ret void
}

; Function Attrs: nofree nounwind
define hidden void @x264_8_filler_write(%struct.x264_t* nocapture readnone %h, %struct.bs_s* nocapture %s, i32 %filler) local_unnamed_addr #0 {
entry:
  %p.i = getelementptr inbounds %struct.bs_s, %struct.bs_s* %s, i32 0, i32 1
  %0 = load i8*, i8** %p.i, align 4, !tbaa !2
  %1 = ptrtoint i8* %0 to i32
  %and.i = and i32 %1, 3
  %tobool.i = icmp eq i32 %and.i, 0
  %2 = bitcast i8* %0 to i32*
  br i1 %tobool.i, label %bs_realign.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %idx.neg.i = sub nsw i32 0, %and.i
  %add.ptr.i = getelementptr inbounds i8, i8* %0, i32 %idx.neg.i
  store i8* %add.ptr.i, i8** %p.i, align 4, !tbaa !2
  %sub.i = shl nuw nsw i32 %and.i, 3
  %mul.i = sub nuw nsw i32 32, %sub.i
  %i_left.i = getelementptr inbounds %struct.bs_s, %struct.bs_s* %s, i32 0, i32 4
  store i32 %mul.i, i32* %i_left.i, align 4, !tbaa !8
  %.cast.i = bitcast i8* %add.ptr.i to i32*
  %3 = load i32, i32* %.cast.i, align 4, !tbaa !9
  %add5.i.i = tail call i32 @llvm.bswap.i32(i32 %3) #9
  %cur_bits.i = getelementptr inbounds %struct.bs_s, %struct.bs_s* %s, i32 0, i32 3
  %shr.i = lshr i32 %add5.i.i, %mul.i
  store i32 %shr.i, i32* %cur_bits.i, align 4, !tbaa !10
  br label %bs_realign.exit

bs_realign.exit:                                  ; preds = %entry, %if.then.i
  %4 = phi i32* [ %2, %entry ], [ %.cast.i, %if.then.i ]
  %cmp24 = icmp sgt i32 %filler, 0
  br i1 %cmp24, label %for.body.lr.ph, label %bs_realign.exit.for.cond.cleanup_crit_edge

bs_realign.exit.for.cond.cleanup_crit_edge:       ; preds = %bs_realign.exit
  %cur_bits.i.i.phi.trans.insert = getelementptr inbounds %struct.bs_s, %struct.bs_s* %s, i32 0, i32 3
  %.pre26 = load i32, i32* %cur_bits.i.i.phi.trans.insert, align 4, !tbaa !10
  %i_left.i.i.phi.trans.insert = getelementptr inbounds %struct.bs_s, %struct.bs_s* %s, i32 0, i32 4
  %.pre27 = load i32, i32* %i_left.i.i.phi.trans.insert, align 4, !tbaa !8
  br label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %bs_realign.exit
  %i_left.i6 = getelementptr inbounds %struct.bs_s, %struct.bs_s* %s, i32 0, i32 4
  %cur_bits5.i = getelementptr inbounds %struct.bs_s, %struct.bs_s* %s, i32 0, i32 3
  %.pre = load i32, i32* %i_left.i6, align 4, !tbaa !8
  br label %for.body

for.cond.cleanup:                                 ; preds = %bs_write.exit, %bs_realign.exit.for.cond.cleanup_crit_edge
  %5 = phi i32* [ %4, %bs_realign.exit.for.cond.cleanup_crit_edge ], [ %31, %bs_write.exit ]
  %6 = phi i32* [ %4, %bs_realign.exit.for.cond.cleanup_crit_edge ], [ %32, %bs_write.exit ]
  %7 = phi i32* [ %4, %bs_realign.exit.for.cond.cleanup_crit_edge ], [ %33, %bs_write.exit ]
  %8 = phi i32 [ %.pre27, %bs_realign.exit.for.cond.cleanup_crit_edge ], [ %storemerge.i, %bs_write.exit ]
  %9 = phi i32 [ %.pre26, %bs_realign.exit.for.cond.cleanup_crit_edge ], [ %34, %bs_write.exit ]
  %cur_bits.i.i = getelementptr inbounds %struct.bs_s, %struct.bs_s* %s, i32 0, i32 3
  %shl.i.i = shl i32 %9, 1
  %or.i.i = or i32 %shl.i.i, 1
  store i32 %or.i.i, i32* %cur_bits.i.i, align 4, !tbaa !10
  %i_left.i.i = getelementptr inbounds %struct.bs_s, %struct.bs_s* %s, i32 0, i32 4
  %dec.i.i = add nsw i32 %8, -1
  store i32 %dec.i.i, i32* %i_left.i.i, align 4, !tbaa !8
  %cmp.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.i.i, label %bs_write1.exit.thread.i, label %bs_write1.exit.i

bs_write1.exit.thread.i:                          ; preds = %for.cond.cleanup
  %add5.i.i.i22 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #9
  store i32 %add5.i.i.i22, i32* %6, align 4, !tbaa !9
  %10 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i.i = getelementptr inbounds i8, i8* %10, i32 4
  store i8* %add.ptr.i.i, i8** %p.i, align 4, !tbaa !2
  store i32 32, i32* %i_left.i.i, align 4, !tbaa !8
  %.pre.i = load i32, i32* %cur_bits.i.i, align 4, !tbaa !10
  %11 = bitcast i8* %add.ptr.i.i to i32*
  br label %if.then.i7.i

bs_write1.exit.i:                                 ; preds = %for.cond.cleanup
  %and.i23 = and i32 %dec.i.i, 7
  %12 = icmp sgt i32 %8, 8
  br i1 %12, label %if.then.i7.i, label %if.else.i.i

if.then.i7.i:                                     ; preds = %bs_write1.exit.i, %bs_write1.exit.thread.i
  %13 = phi i32* [ %11, %bs_write1.exit.thread.i ], [ %5, %bs_write1.exit.i ]
  %and12.i = phi i32 [ 0, %bs_write1.exit.thread.i ], [ %and.i23, %bs_write1.exit.i ]
  %14 = phi i32 [ 32, %bs_write1.exit.thread.i ], [ %dec.i.i, %bs_write1.exit.i ]
  %15 = phi i32 [ %.pre.i, %bs_write1.exit.thread.i ], [ %or.i.i, %bs_write1.exit.i ]
  %shl.i6.i = shl i32 %15, %and12.i
  store i32 %shl.i6.i, i32* %cur_bits.i.i, align 4, !tbaa !10
  br label %bs_rbsp_trailing.exit

if.else.i.i:                                      ; preds = %bs_write1.exit.i
  %shl7.i.i = shl i32 %or.i.i, %dec.i.i
  %add5.i.i.i.i = tail call i32 @llvm.bswap.i32(i32 %shl7.i.i) #9
  store i32 %add5.i.i.i.i, i32* %7, align 4, !tbaa !9
  %16 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i9.i = getelementptr inbounds i8, i8* %16, i32 4
  store i8* %add.ptr.i9.i, i8** %p.i, align 4, !tbaa !2
  store i32 0, i32* %cur_bits.i.i, align 4, !tbaa !10
  %sub4.i10.i = add nsw i32 %8, 31
  %17 = bitcast i8* %add.ptr.i9.i to i32*
  br label %bs_rbsp_trailing.exit

bs_rbsp_trailing.exit:                            ; preds = %if.then.i7.i, %if.else.i.i
  %18 = phi i32* [ %17, %if.else.i.i ], [ %13, %if.then.i7.i ]
  %19 = phi i32 [ 0, %if.else.i.i ], [ %shl.i6.i, %if.then.i7.i ]
  %and13.i = phi i32 [ %and.i23, %if.else.i.i ], [ %and12.i, %if.then.i7.i ]
  %sub4.i10.pn.i = phi i32 [ %sub4.i10.i, %if.else.i.i ], [ %14, %if.then.i7.i ]
  %storemerge.i.i = sub nsw i32 %sub4.i10.pn.i, %and13.i
  store i32 %storemerge.i.i, i32* %i_left.i.i, align 4, !tbaa !8
  %and.i15 = and i32 %storemerge.i.i, 31
  %shl.i16 = shl i32 %19, %and.i15
  %add5.i.i17 = tail call i32 @llvm.bswap.i32(i32 %shl.i16) #9
  store i32 %add5.i.i17, i32* %18, align 4, !tbaa !9
  %20 = load i32, i32* %i_left.i.i, align 4, !tbaa !8
  %shr.i19 = ashr i32 %20, 3
  %sub.i20 = sub nsw i32 4, %shr.i19
  %21 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i21 = getelementptr inbounds i8, i8* %21, i32 %sub.i20
  store i8* %add.ptr.i21, i8** %p.i, align 4, !tbaa !2
  store i32 32, i32* %i_left.i.i, align 4, !tbaa !8
  ret void

for.body:                                         ; preds = %bs_write.exit, %for.body.lr.ph
  %22 = phi i32* [ %4, %for.body.lr.ph ], [ %31, %bs_write.exit ]
  %23 = phi i32* [ %4, %for.body.lr.ph ], [ %32, %bs_write.exit ]
  %24 = phi i32* [ %4, %for.body.lr.ph ], [ %33, %bs_write.exit ]
  %25 = phi i32* [ %4, %for.body.lr.ph ], [ %35, %bs_write.exit ]
  %26 = phi i32 [ %.pre, %for.body.lr.ph ], [ %storemerge.i, %bs_write.exit ]
  %i.025 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %bs_write.exit ]
  %cmp.i = icmp sgt i32 %26, 8
  br i1 %cmp.i, label %if.then.i9, label %if.else.i

if.then.i9:                                       ; preds = %for.body
  %27 = load i32, i32* %cur_bits5.i, align 4, !tbaa !10
  %shl.i = shl i32 %27, 8
  %or.i = or i32 %shl.i, 255
  store i32 %or.i, i32* %cur_bits5.i, align 4, !tbaa !10
  %sub.i8 = add nsw i32 %26, -8
  br label %bs_write.exit

if.else.i:                                        ; preds = %for.body
  %sub4.i = sub nsw i32 8, %26
  %28 = load i32, i32* %cur_bits5.i, align 4, !tbaa !10
  %shl7.i = shl i32 %28, %26
  %shr.i10 = lshr i32 255, %sub4.i
  %or8.i = or i32 %shl7.i, %shr.i10
  %add5.i.i.i = tail call i32 @llvm.bswap.i32(i32 %or8.i) #9
  store i32 %add5.i.i.i, i32* %25, align 4, !tbaa !9
  %29 = load i8*, i8** %p.i, align 4, !tbaa !2
  %add.ptr.i12 = getelementptr inbounds i8, i8* %29, i32 4
  store i8* %add.ptr.i12, i8** %p.i, align 4, !tbaa !2
  store i32 255, i32* %cur_bits5.i, align 4, !tbaa !10
  %sub13.i = add nsw i32 %26, 24
  %30 = bitcast i8* %add.ptr.i12 to i32*
  br label %bs_write.exit

bs_write.exit:                                    ; preds = %if.then.i9, %if.else.i
  %31 = phi i32* [ %30, %if.else.i ], [ %22, %if.then.i9 ]
  %32 = phi i32* [ %30, %if.else.i ], [ %23, %if.then.i9 ]
  %33 = phi i32* [ %30, %if.else.i ], [ %24, %if.then.i9 ]
  %34 = phi i32 [ 255, %if.else.i ], [ %or.i, %if.then.i9 ]
  %35 = phi i32* [ %30, %if.else.i ], [ %25, %if.then.i9 ]
  %storemerge.i = phi i32 [ %sub13.i, %if.else.i ], [ %sub.i8, %if.then.i9 ]
  store i32 %storemerge.i, i32* %i_left.i6, align 4, !tbaa !8
  %inc = add nuw nsw i32 %i.025, 1
  %exitcond = icmp eq i32 %inc, %filler
  br i1 %exitcond, label %for.cond.cleanup, label %for.body
}

; Function Attrs: nounwind
define hidden void @x264_8_sei_dec_ref_pic_marking_write(%struct.x264_t* nocapture readonly %h, %struct.bs_s* %s) local_unnamed_addr #4 {
bs_realign.exit:
  %tmp_buf = alloca [100 x i8], align 4
  %0 = getelementptr inbounds [100 x i8], [100 x i8]* %tmp_buf, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %0) #9
  %i = bitcast [100 x i8]* %tmp_buf to i32*
  store i32 0, i32* %i, align 4, !tbaa !9
  %1 = ptrtoint [100 x i8]* %tmp_buf to i32
  %i_frame_num = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 56, i32 6
  %2 = load i32, i32* %i_frame_num, align 8, !tbaa !199
  %inc.i = add i32 %2, 1
  %cmp.i124 = icmp sgt i32 %inc.i, 65535
  %shr.i125 = ashr i32 %inc.i, 16
  %spec.select.i126 = select i1 %cmp.i124, i32 32, i32 0
  %spec.select20.i127 = select i1 %cmp.i124, i32 %shr.i125, i32 %inc.i
  %cmp1.i128 = icmp sgt i32 %spec.select20.i127, 255
  %add.i129 = or i32 %spec.select.i126, 16
  %shr3.i130 = ashr i32 %spec.select20.i127, 8
  %size.1.i131 = select i1 %cmp1.i128, i32 %add.i129, i32 %spec.select.i126
  %tmp.1.i132 = select i1 %cmp1.i128, i32 %shr3.i130, i32 %spec.select20.i127
  %arrayidx.i133 = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %tmp.1.i132
  %3 = load i8, i8* %arrayidx.i133, align 1, !tbaa !9
  %conv.i134 = zext i8 %3 to i32
  %add5.i135 = add nuw nsw i32 %size.1.i131, %conv.i134
  %4 = lshr i32 %add5.i135, 1
  %cmp.i.i137 = icmp ult i32 %add5.i135, 62
  br i1 %cmp.i.i137, label %bs_write.exit.i151, label %if.else.i.i146

if.else.i.i146:                                   ; preds = %bs_realign.exit
  store i32 0, i32* %i, align 4, !tbaa !9
  %add.ptr.i.i144 = getelementptr inbounds [100 x i8], [100 x i8]* %tmp_buf, i32 0, i32 4
  %5 = ptrtoint i8* %add.ptr.i.i144 to i32
  br label %bs_write.exit.i151

bs_write.exit.i151:                               ; preds = %bs_realign.exit, %if.else.i.i146
  %q.sroa.4.2 = phi i32 [ %5, %if.else.i.i146 ], [ %1, %bs_realign.exit ]
  %sub4.i37.pn.i147 = phi i32 [ 63, %if.else.i.i146 ], [ 31, %bs_realign.exit ]
  %storemerge.i.i148 = sub nsw i32 %sub4.i37.pn.i147, %4
  %add8.i149 = add nuw nsw i32 %4, 1
  %cmp.i22.i150 = icmp sgt i32 %storemerge.i.i148, %add8.i149
  br i1 %cmp.i22.i150, label %if.then.i26.i155, label %if.else.i34.i164

if.then.i26.i155:                                 ; preds = %bs_write.exit.i151
  %sub.i25.i154 = sub nsw i32 %storemerge.i.i148, %add8.i149
  br label %bs_write_ue_big.exit166

if.else.i34.i164:                                 ; preds = %bs_write.exit.i151
  %sub4.i27.i156 = sub nsw i32 %add8.i149, %storemerge.i.i148
  %shr.i.i158 = lshr i32 %inc.i, %sub4.i27.i156
  %add5.i.i.i30.i160 = call i32 @llvm.bswap.i32(i32 %shr.i.i158) #9
  %6 = inttoptr i32 %q.sroa.4.2 to i32*
  store i32 %add5.i.i.i30.i160, i32* %6, align 4, !tbaa !9
  %7 = inttoptr i32 %q.sroa.4.2 to i8*
  %add.ptr.i32.i162 = getelementptr inbounds i8, i8* %7, i32 4
  %8 = ptrtoint i8* %add.ptr.i32.i162 to i32
  %sub13.i33.i163 = sub nsw i32 32, %sub4.i27.i156
  br label %bs_write_ue_big.exit166

bs_write_ue_big.exit166:                          ; preds = %if.then.i26.i155, %if.else.i34.i164
  %q.sroa.4.3 = phi i32 [ %q.sroa.4.2, %if.then.i26.i155 ], [ %8, %if.else.i34.i164 ]
  %storemerge.i35.i165 = phi i32 [ %sub.i25.i154, %if.then.i26.i155 ], [ %sub13.i33.i163, %if.else.i34.i164 ]
  %b_frame_mbs_only = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 14
  %9 = load i32, i32* %b_frame_mbs_only, align 8, !tbaa !30
  %tobool = icmp eq i32 %9, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %bs_write_ue_big.exit166
  %shl.i115 = shl i32 %inc.i, 1
  %dec.i117 = add nsw i32 %storemerge.i35.i165, -1
  %cmp.i118 = icmp eq i32 %dec.i117, 0
  br i1 %cmp.i118, label %if.then.i122, label %if.end

if.then.i122:                                     ; preds = %if.then
  %add5.i.i119 = call i32 @llvm.bswap.i32(i32 %shl.i115) #9
  %10 = inttoptr i32 %q.sroa.4.3 to i32*
  store i32 %add5.i.i119, i32* %10, align 4, !tbaa !9
  %11 = inttoptr i32 %q.sroa.4.3 to i8*
  %add.ptr.i121 = getelementptr inbounds i8, i8* %11, i32 4
  %12 = ptrtoint i8* %add.ptr.i121 to i32
  br label %if.end

if.end:                                           ; preds = %if.then.i122, %if.then, %bs_write_ue_big.exit166
  %q.sroa.48.2 = phi i32 [ %inc.i, %bs_write_ue_big.exit166 ], [ %shl.i115, %if.then ], [ %shl.i115, %if.then.i122 ]
  %q.sroa.4.5 = phi i32 [ %q.sroa.4.3, %bs_write_ue_big.exit166 ], [ %q.sroa.4.3, %if.then ], [ %12, %if.then.i122 ]
  %q.sroa.81.3 = phi i32 [ %storemerge.i35.i165, %bs_write_ue_big.exit166 ], [ %dec.i117, %if.then ], [ 32, %if.then.i122 ]
  %i_mmco_command_count = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 56, i32 25
  %13 = load i32, i32* %i_mmco_command_count, align 4, !tbaa !200
  %cmp = icmp sgt i32 %13, 0
  %conv = zext i1 %cmp to i32
  %shl.i107 = shl i32 %q.sroa.48.2, 1
  %or.i = or i32 %shl.i107, %conv
  %dec.i = add nsw i32 %q.sroa.81.3, -1
  %cmp.i109 = icmp eq i32 %dec.i, 0
  br i1 %cmp.i109, label %if.then.i113, label %bs_write1.exit

if.then.i113:                                     ; preds = %if.end
  %add5.i.i110 = call i32 @llvm.bswap.i32(i32 %or.i) #9
  %14 = inttoptr i32 %q.sroa.4.5 to i32*
  store i32 %add5.i.i110, i32* %14, align 4, !tbaa !9
  %15 = inttoptr i32 %q.sroa.4.5 to i8*
  %add.ptr.i112 = getelementptr inbounds i8, i8* %15, i32 4
  %16 = ptrtoint i8* %add.ptr.i112 to i32
  %.pre = load i32, i32* %i_mmco_command_count, align 4, !tbaa !200
  br label %bs_write1.exit

bs_write1.exit:                                   ; preds = %if.end, %if.then.i113
  %17 = phi i32 [ %.pre, %if.then.i113 ], [ %13, %if.end ]
  %q.sroa.4.6 = phi i32 [ %16, %if.then.i113 ], [ %q.sroa.4.5, %if.end ]
  %q.sroa.81.4 = phi i32 [ 32, %if.then.i113 ], [ %dec.i, %if.end ]
  %cmp4 = icmp sgt i32 %17, 0
  br i1 %cmp4, label %for.body, label %if.end11

for.cond.cleanup:                                 ; preds = %bs_write_ue_big.exit
  %cmp.i.i79 = icmp sgt i32 %storemerge.i35.i, 0
  br i1 %cmp.i.i79, label %bs_write.exit.i90, label %if.else.i.i87

if.else.i.i87:                                    ; preds = %for.cond.cleanup
  %shl7.i.i82 = shl nuw nsw i32 %q.sroa.48.6, %storemerge.i35.i
  %add5.i.i.i.i83 = call i32 @llvm.bswap.i32(i32 %shl7.i.i82) #9
  %18 = inttoptr i32 %q.sroa.4.13 to i32*
  store i32 %add5.i.i.i.i83, i32* %18, align 4, !tbaa !9
  %19 = inttoptr i32 %q.sroa.4.13 to i8*
  %add.ptr.i.i85 = getelementptr inbounds i8, i8* %19, i32 4
  %20 = ptrtoint i8* %add.ptr.i.i85 to i32
  %sub4.i37.i86 = add nsw i32 %storemerge.i35.i, 32
  br label %bs_write.exit.i90

bs_write.exit.i90:                                ; preds = %for.cond.cleanup, %if.else.i.i87
  %q.sroa.4.8 = phi i32 [ %20, %if.else.i.i87 ], [ %q.sroa.4.13, %for.cond.cleanup ]
  %21 = phi i32 [ 0, %if.else.i.i87 ], [ %q.sroa.48.6, %for.cond.cleanup ]
  %sub4.i37.pn.i88 = phi i32 [ %sub4.i37.i86, %if.else.i.i87 ], [ %storemerge.i35.i, %for.cond.cleanup ]
  %cmp.i22.i89 = icmp sgt i32 %sub4.i37.pn.i88, 1
  br i1 %cmp.i22.i89, label %if.then.i26.i94, label %if.else.i34.i103

if.then.i26.i94:                                  ; preds = %bs_write.exit.i90
  %shl.i24.i91 = shl i32 %21, 1
  %or.i.i92 = or i32 %shl.i24.i91, 1
  %sub.i25.i93 = add nsw i32 %sub4.i37.pn.i88, -1
  br label %if.end11

if.else.i34.i103:                                 ; preds = %bs_write.exit.i90
  %sub4.i27.i95 = sub nsw i32 1, %sub4.i37.pn.i88
  %shl7.i29.i96 = shl i32 %21, %sub4.i37.pn.i88
  %shr.i.i97 = lshr i32 1, %sub4.i27.i95
  %or8.i.i98 = or i32 %shr.i.i97, %shl7.i29.i96
  %add5.i.i.i30.i99 = call i32 @llvm.bswap.i32(i32 %or8.i.i98) #9
  %22 = inttoptr i32 %q.sroa.4.8 to i32*
  store i32 %add5.i.i.i30.i99, i32* %22, align 4, !tbaa !9
  %23 = inttoptr i32 %q.sroa.4.8 to i8*
  %add.ptr.i32.i101 = getelementptr inbounds i8, i8* %23, i32 4
  %24 = ptrtoint i8* %add.ptr.i32.i101 to i32
  %sub13.i33.i102 = add nsw i32 %sub4.i37.pn.i88, 31
  br label %if.end11

for.body:                                         ; preds = %bs_write1.exit, %bs_write_ue_big.exit
  %i7.0231 = phi i32 [ %inc, %bs_write_ue_big.exit ], [ 0, %bs_write1.exit ]
  %q.sroa.81.5230 = phi i32 [ %storemerge.i35.i, %bs_write_ue_big.exit ], [ %q.sroa.81.4, %bs_write1.exit ]
  %q.sroa.4.7229 = phi i32 [ %q.sroa.4.13, %bs_write_ue_big.exit ], [ %q.sroa.4.6, %bs_write1.exit ]
  %q.sroa.48.3228 = phi i32 [ %q.sroa.48.6, %bs_write_ue_big.exit ], [ %or.i, %bs_write1.exit ]
  %cmp.i.i49 = icmp sgt i32 %q.sroa.81.5230, 1
  br i1 %cmp.i.i49, label %if.then.i.i52, label %if.else.i.i58

if.then.i.i52:                                    ; preds = %for.body
  %shl.i.i51 = shl i32 %q.sroa.48.3228, 1
  br label %bs_write.exit.i62

if.else.i.i58:                                    ; preds = %for.body
  %shl7.i.i53 = shl i32 %q.sroa.48.3228, %q.sroa.81.5230
  %add5.i.i.i.i54 = call i32 @llvm.bswap.i32(i32 %shl7.i.i53) #9
  %25 = inttoptr i32 %q.sroa.4.7229 to i32*
  store i32 %add5.i.i.i.i54, i32* %25, align 4, !tbaa !9
  %26 = inttoptr i32 %q.sroa.4.7229 to i8*
  %add.ptr.i.i56 = getelementptr inbounds i8, i8* %26, i32 4
  %27 = ptrtoint i8* %add.ptr.i.i56 to i32
  %sub4.i37.i57 = add nsw i32 %q.sroa.81.5230, 32
  br label %bs_write.exit.i62

bs_write.exit.i62:                                ; preds = %if.else.i.i58, %if.then.i.i52
  %q.sroa.4.10 = phi i32 [ %q.sroa.4.7229, %if.then.i.i52 ], [ %27, %if.else.i.i58 ]
  %28 = phi i32 [ %shl.i.i51, %if.then.i.i52 ], [ 0, %if.else.i.i58 ]
  %sub4.i37.pn.i59 = phi i32 [ %q.sroa.81.5230, %if.then.i.i52 ], [ %sub4.i37.i57, %if.else.i.i58 ]
  %cmp.i22.i61 = icmp sgt i32 %sub4.i37.pn.i59, 3
  br i1 %cmp.i22.i61, label %if.then.i26.i66, label %if.else.i34.i75

if.then.i26.i66:                                  ; preds = %bs_write.exit.i62
  %shl.i24.i63 = shl i32 %28, 2
  %or.i.i64 = or i32 %shl.i24.i63, 2
  br label %bs_write_ue_big.exit77

if.else.i34.i75:                                  ; preds = %bs_write.exit.i62
  %storemerge.i.i60 = add nsw i32 %sub4.i37.pn.i59, -1
  %sub4.i27.i67 = sub nsw i32 3, %sub4.i37.pn.i59
  %shl7.i29.i68 = shl i32 %28, %storemerge.i.i60
  %shr.i.i69 = lshr i32 2, %sub4.i27.i67
  %or8.i.i70 = or i32 %shl7.i29.i68, %shr.i.i69
  %add5.i.i.i30.i71 = call i32 @llvm.bswap.i32(i32 %or8.i.i70) #9
  %29 = inttoptr i32 %q.sroa.4.10 to i32*
  store i32 %add5.i.i.i30.i71, i32* %29, align 4, !tbaa !9
  %30 = inttoptr i32 %q.sroa.4.10 to i8*
  %add.ptr.i32.i73 = getelementptr inbounds i8, i8* %30, i32 4
  %31 = ptrtoint i8* %add.ptr.i32.i73 to i32
  br label %bs_write_ue_big.exit77

bs_write_ue_big.exit77:                           ; preds = %if.then.i26.i66, %if.else.i34.i75
  %.sink = phi i32 [ -3, %if.then.i26.i66 ], [ 29, %if.else.i34.i75 ]
  %q.sroa.48.5 = phi i32 [ %or.i.i64, %if.then.i26.i66 ], [ 2, %if.else.i34.i75 ]
  %q.sroa.4.11 = phi i32 [ %q.sroa.4.10, %if.then.i26.i66 ], [ %31, %if.else.i34.i75 ]
  %sub.i25.i65 = add nsw i32 %sub4.i37.pn.i59, %.sink
  %i_difference_of_pic_nums = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 56, i32 26, i32 %i7.0231, i32 0
  %32 = load i32, i32* %i_difference_of_pic_nums, align 8, !tbaa !201
  %cmp.i = icmp sgt i32 %32, 65535
  %shr.i33 = ashr i32 %32, 16
  %spec.select.i = select i1 %cmp.i, i32 32, i32 0
  %spec.select20.i = select i1 %cmp.i, i32 %shr.i33, i32 %32
  %cmp1.i = icmp sgt i32 %spec.select20.i, 255
  %add.i34 = or i32 %spec.select.i, 16
  %shr3.i = ashr i32 %spec.select20.i, 8
  %size.1.i = select i1 %cmp1.i, i32 %add.i34, i32 %spec.select.i
  %tmp.1.i = select i1 %cmp1.i, i32 %shr3.i, i32 %spec.select20.i
  %arrayidx.i = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %tmp.1.i
  %33 = load i8, i8* %arrayidx.i, align 1, !tbaa !9
  %conv.i = zext i8 %33 to i32
  %add5.i = add nuw nsw i32 %size.1.i, %conv.i
  %34 = lshr i32 %add5.i, 1
  %cmp.i.i = icmp sgt i32 %sub.i25.i65, %34
  br i1 %cmp.i.i, label %if.then.i.i37, label %if.else.i.i42

if.then.i.i37:                                    ; preds = %bs_write_ue_big.exit77
  %shl.i.i36 = shl i32 %q.sroa.48.5, %34
  br label %bs_write.exit.i44

if.else.i.i42:                                    ; preds = %bs_write_ue_big.exit77
  %shl7.i.i38 = shl i32 %q.sroa.48.5, %sub.i25.i65
  %add5.i.i.i.i39 = call i32 @llvm.bswap.i32(i32 %shl7.i.i38) #9
  %35 = inttoptr i32 %q.sroa.4.11 to i32*
  store i32 %add5.i.i.i.i39, i32* %35, align 4, !tbaa !9
  %36 = inttoptr i32 %q.sroa.4.11 to i8*
  %add.ptr.i.i41 = getelementptr inbounds i8, i8* %36, i32 4
  %37 = ptrtoint i8* %add.ptr.i.i41 to i32
  %sub4.i37.i = add i32 %sub.i25.i65, 32
  br label %bs_write.exit.i44

bs_write.exit.i44:                                ; preds = %if.else.i.i42, %if.then.i.i37
  %q.sroa.4.12 = phi i32 [ %q.sroa.4.11, %if.then.i.i37 ], [ %37, %if.else.i.i42 ]
  %38 = phi i32 [ %shl.i.i36, %if.then.i.i37 ], [ 0, %if.else.i.i42 ]
  %sub4.i37.pn.i = phi i32 [ %sub.i25.i65, %if.then.i.i37 ], [ %sub4.i37.i, %if.else.i.i42 ]
  %storemerge.i.i43 = sub i32 %sub4.i37.pn.i, %34
  %add8.i = add nuw nsw i32 %34, 1
  %cmp.i22.i = icmp sgt i32 %storemerge.i.i43, %add8.i
  br i1 %cmp.i22.i, label %if.then.i26.i, label %if.else.i34.i

if.then.i26.i:                                    ; preds = %bs_write.exit.i44
  %shl.i24.i = shl i32 %38, %add8.i
  %or.i.i45 = or i32 %shl.i24.i, %32
  %sub.i25.i = sub nsw i32 %storemerge.i.i43, %add8.i
  br label %bs_write_ue_big.exit

if.else.i34.i:                                    ; preds = %bs_write.exit.i44
  %sub4.i27.i = sub nsw i32 %add8.i, %storemerge.i.i43
  %shl7.i29.i = shl i32 %38, %storemerge.i.i43
  %shr.i.i46 = lshr i32 %32, %sub4.i27.i
  %or8.i.i47 = or i32 %shr.i.i46, %shl7.i29.i
  %add5.i.i.i30.i = call i32 @llvm.bswap.i32(i32 %or8.i.i47) #9
  %39 = inttoptr i32 %q.sroa.4.12 to i32*
  store i32 %add5.i.i.i30.i, i32* %39, align 4, !tbaa !9
  %40 = inttoptr i32 %q.sroa.4.12 to i8*
  %add.ptr.i32.i = getelementptr inbounds i8, i8* %40, i32 4
  %41 = ptrtoint i8* %add.ptr.i32.i to i32
  %sub13.i33.i = sub nsw i32 32, %sub4.i27.i
  br label %bs_write_ue_big.exit

bs_write_ue_big.exit:                             ; preds = %if.then.i26.i, %if.else.i34.i
  %q.sroa.48.6 = phi i32 [ %or.i.i45, %if.then.i26.i ], [ %32, %if.else.i34.i ]
  %q.sroa.4.13 = phi i32 [ %q.sroa.4.12, %if.then.i26.i ], [ %41, %if.else.i34.i ]
  %storemerge.i35.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %sub13.i33.i, %if.else.i34.i ]
  %inc = add nuw nsw i32 %i7.0231, 1
  %42 = load i32, i32* %i_mmco_command_count, align 4, !tbaa !200
  %cmp9 = icmp slt i32 %inc, %42
  br i1 %cmp9, label %for.body, label %for.cond.cleanup

if.end11:                                         ; preds = %if.else.i34.i103, %if.then.i26.i94, %bs_write1.exit
  %q.sroa.48.7 = phi i32 [ %or.i, %bs_write1.exit ], [ %or.i.i92, %if.then.i26.i94 ], [ 1, %if.else.i34.i103 ]
  %q.sroa.4.14 = phi i32 [ %q.sroa.4.6, %bs_write1.exit ], [ %q.sroa.4.8, %if.then.i26.i94 ], [ %24, %if.else.i34.i103 ]
  %q.sroa.81.6 = phi i32 [ %q.sroa.81.4, %bs_write1.exit ], [ %sub.i25.i93, %if.then.i26.i94 ], [ %sub13.i33.i102, %if.else.i34.i103 ]
  %and.i29 = and i32 %q.sroa.81.6, 7
  %tobool.i30 = icmp eq i32 %and.i29, 0
  br i1 %tobool.i30, label %bs_align_10.exit, label %if.then.i32

if.then.i32:                                      ; preds = %if.end11
  %sub.i31 = add nsw i32 %and.i29, -1
  %shl.i = shl nuw nsw i32 1, %sub.i31
  %43 = icmp sgt i32 %q.sroa.81.6, 7
  br i1 %43, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then.i32
  %shl.i.i = shl i32 %q.sroa.48.7, %and.i29
  %or.i.i = or i32 %shl.i, %shl.i.i
  %sub.i.i = sub nuw nsw i32 %q.sroa.81.6, %and.i29
  br label %bs_align_10.exit

if.else.i.i:                                      ; preds = %if.then.i32
  %sub4.i.i = sub nsw i32 %and.i29, %q.sroa.81.6
  %shl7.i.i = shl i32 %q.sroa.48.7, %q.sroa.81.6
  %shr.i.i = lshr i32 %shl.i, %sub4.i.i
  %or8.i.i = or i32 %shr.i.i, %shl7.i.i
  %add5.i.i.i.i = call i32 @llvm.bswap.i32(i32 %or8.i.i) #9
  %44 = inttoptr i32 %q.sroa.4.14 to i32*
  store i32 %add5.i.i.i.i, i32* %44, align 4, !tbaa !9
  %45 = inttoptr i32 %q.sroa.4.14 to i8*
  %add.ptr.i.i = getelementptr inbounds i8, i8* %45, i32 4
  %46 = ptrtoint i8* %add.ptr.i.i to i32
  %sub13.i.i = sub nsw i32 32, %sub4.i.i
  br label %bs_align_10.exit

bs_align_10.exit:                                 ; preds = %if.then.i.i, %if.else.i.i, %if.end11
  %q.sroa.4.16 = phi i32 [ %q.sroa.4.14, %if.end11 ], [ %q.sroa.4.14, %if.then.i.i ], [ %46, %if.else.i.i ]
  %q.sroa.81.7 = phi i32 [ %q.sroa.81.6, %if.end11 ], [ %sub.i.i, %if.then.i.i ], [ %sub13.i.i, %if.else.i.i ]
  %47 = phi i32 [ %q.sroa.48.7, %if.end11 ], [ %or.i.i, %if.then.i.i ], [ %shl.i, %if.else.i.i ]
  %and.i.i = and i32 %q.sroa.81.7, 31
  %shl.i11.i = shl i32 %47, %and.i.i
  %add5.i.i.i = call i32 @llvm.bswap.i32(i32 %shl.i11.i) #9
  %48 = inttoptr i32 %q.sroa.4.16 to i32*
  store i32 %add5.i.i.i, i32* %48, align 4, !tbaa !9
  %shr.i13.i = ashr i32 %q.sroa.81.7, 3
  %sub.i14.i = sub nsw i32 4, %shr.i13.i
  %49 = inttoptr i32 %q.sroa.4.16 to i8*
  %add.ptr.i15.i = getelementptr inbounds i8, i8* %49, i32 %sub.i14.i
  %50 = ptrtoint i8* %add.ptr.i15.i to i32
  %sub.ptr.sub.i = sub i32 %50, %1
  %mul.i25 = shl i32 %sub.ptr.sub.i, 3
  %div = sdiv i32 %mul.i25, 8
  call void @x264_8_sei_write(%struct.bs_s* %s, i8* nonnull %0, i32 %div, i32 7)
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %0) #9
  ret void
}

; Function Attrs: nounwind
define hidden i32 @x264_8_sei_avcintra_umid_write(%struct.x264_t* %h, %struct.bs_s* nocapture readnone %s) local_unnamed_addr #4 {
entry:
  %data = alloca [512 x i8], align 1
  %0 = getelementptr inbounds [512 x i8], [512 x i8]* %data, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 512, i8* nonnull %0) #9
  %1 = getelementptr inbounds [512 x i8], [512 x i8]* %data, i32 0, i32 21
  call void @llvm.memset.p0i8.i32(i8* nonnull align 1 dereferenceable(481) %1, i8 -1, i32 476, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 dereferenceable(16) %0, i8* nonnull align 1 dereferenceable(16) getelementptr inbounds ([16 x i8], [16 x i8]* @avcintra_uuid, i32 0, i32 0), i32 16, i1 false)
  %add.ptr = getelementptr inbounds [512 x i8], [512 x i8]* %data, i32 0, i32 16
  %2 = bitcast i8* %add.ptr to i32*
  store i32 1145654613, i32* %2, align 1
  %arrayidx = getelementptr inbounds [512 x i8], [512 x i8]* %data, i32 0, i32 20
  store i8 19, i8* %arrayidx, align 1, !tbaa !9
  %arrayidx3 = getelementptr inbounds [512 x i8], [512 x i8]* %data, i32 0, i32 26
  store i8 0, i8* %arrayidx3, align 1, !tbaa !9
  %arrayidx4 = getelementptr inbounds [512 x i8], [512 x i8]* %data, i32 0, i32 25
  store i8 0, i8* %arrayidx4, align 1, !tbaa !9
  %arrayidx5 = getelementptr inbounds [512 x i8], [512 x i8]* %data, i32 0, i32 23
  store i8 0, i8* %arrayidx5, align 1, !tbaa !9
  %arrayidx6 = getelementptr inbounds [512 x i8], [512 x i8]* %data, i32 0, i32 22
  store i8 0, i8* %arrayidx6, align 1, !tbaa !9
  %arrayidx7 = getelementptr inbounds [512 x i8], [512 x i8]* %data, i32 0, i32 28
  store i8 20, i8* %arrayidx7, align 1, !tbaa !9
  %arrayidx8 = getelementptr inbounds [512 x i8], [512 x i8]* %data, i32 0, i32 34
  store i8 0, i8* %arrayidx8, align 1, !tbaa !9
  %arrayidx9 = getelementptr inbounds [512 x i8], [512 x i8]* %data, i32 0, i32 33
  store i8 0, i8* %arrayidx9, align 1, !tbaa !9
  %arrayidx10 = getelementptr inbounds [512 x i8], [512 x i8]* %data, i32 0, i32 31
  store i8 0, i8* %arrayidx10, align 1, !tbaa !9
  %arrayidx11 = getelementptr inbounds [512 x i8], [512 x i8]* %data, i32 0, i32 30
  store i8 0, i8* %arrayidx11, align 1, !tbaa !9
  %arrayidx12 = getelementptr inbounds [512 x i8], [512 x i8]* %data, i32 0, i32 36
  store i8 96, i8* %arrayidx12, align 1, !tbaa !9
  %arrayidx13 = getelementptr inbounds [512 x i8], [512 x i8]* %data, i32 0, i32 41
  store i8 34, i8* %arrayidx13, align 1, !tbaa !9
  %arrayidx14 = getelementptr inbounds [512 x i8], [512 x i8]* %data, i32 0, i32 60
  store i8 98, i8* %arrayidx14, align 1, !tbaa !9
  %arrayidx15 = getelementptr inbounds [512 x i8], [512 x i8]* %data, i32 0, i32 66
  store i8 0, i8* %arrayidx15, align 1, !tbaa !9
  %arrayidx16 = getelementptr inbounds [512 x i8], [512 x i8]* %data, i32 0, i32 65
  store i8 0, i8* %arrayidx16, align 1, !tbaa !9
  %arrayidx17 = getelementptr inbounds [512 x i8], [512 x i8]* %data, i32 0, i32 63
  store i8 0, i8* %arrayidx17, align 1, !tbaa !9
  %arrayidx18 = getelementptr inbounds [512 x i8], [512 x i8]* %data, i32 0, i32 62
  store i8 0, i8* %arrayidx18, align 1, !tbaa !9
  %arrayidx19 = getelementptr inbounds [512 x i8], [512 x i8]* %data, i32 0, i32 68
  store i8 99, i8* %arrayidx19, align 1, !tbaa !9
  %arrayidx20 = getelementptr inbounds [512 x i8], [512 x i8]* %data, i32 0, i32 74
  store i8 0, i8* %arrayidx20, align 1, !tbaa !9
  %arrayidx21 = getelementptr inbounds [512 x i8], [512 x i8]* %data, i32 0, i32 73
  store i8 0, i8* %arrayidx21, align 1, !tbaa !9
  %arrayidx22 = getelementptr inbounds [512 x i8], [512 x i8]* %data, i32 0, i32 71
  store i8 0, i8* %arrayidx22, align 1, !tbaa !9
  %arrayidx23 = getelementptr inbounds [512 x i8], [512 x i8]* %data, i32 0, i32 70
  store i8 0, i8* %arrayidx23, align 1, !tbaa !9
  %bs = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5
  call void @x264_8_sei_write(%struct.bs_s* nonnull %bs, i8* nonnull %0, i32 497, i32 5)
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %0) #9
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #1

; Function Attrs: nounwind
define hidden i32 @x264_8_sei_avcintra_vanc_write(%struct.x264_t* %h, %struct.bs_s* nocapture readnone %s, i32 %len) local_unnamed_addr #4 {
entry:
  %data = alloca [6000 x i8], align 1
  %0 = getelementptr inbounds [6000 x i8], [6000 x i8]* %data, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 6000, i8* nonnull %0) #9
  %cmp1 = icmp ugt i32 %len, 6000
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* %h, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i32 0, i32 0), i32 %len) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = icmp ult i32 %len, 17
  %2 = add nsw i32 %len, -16
  %3 = select i1 %1, i32 0, i32 %2
  %4 = getelementptr inbounds [6000 x i8], [6000 x i8]* %data, i32 0, i32 16
  call void @llvm.memset.p0i8.i32(i8* nonnull align 1 %4, i8 -1, i32 %3, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 dereferenceable(16) %0, i8* nonnull align 1 dereferenceable(16) getelementptr inbounds ([16 x i8], [16 x i8]* @avcintra_uuid, i32 0, i32 0), i32 16, i1 false)
  %add.ptr = getelementptr inbounds [6000 x i8], [6000 x i8]* %data, i32 0, i32 16
  %5 = bitcast i8* %add.ptr to i32*
  store i32 1129202006, i32* %5, align 1
  %bs = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5
  call void @x264_8_sei_write(%struct.bs_s* nonnull %bs, i8* nonnull %0, i32 %len, i32 5)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 6000, i8* nonnull %0) #9
  ret i32 %retval.0
}

declare dso_local void @x264_8_log(%struct.x264_t*, i32, i8*, ...) local_unnamed_addr #5

; Function Attrs: nounwind
define hidden i32 @x264_8_validate_levels(%struct.x264_t* %h, i32 %verbose) local_unnamed_addr #4 {
entry:
  %i_mb_width = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 12
  %0 = load i32, i32* %i_mb_width, align 16, !tbaa !26
  %i_mb_height = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 13
  %1 = load i32, i32* %i_mb_height, align 4, !tbaa !28
  %mul = mul nsw i32 %1, %0
  %i_max_dec_frame_buffering = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 20, i32 30
  %2 = load i32, i32* %i_max_dec_frame_buffering, align 4, !tbaa !53
  %mul5 = mul nsw i32 %mul, %2
  %i_profile_idc = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 1
  %3 = load i32, i32* %i_profile_idc, align 4, !tbaa !41
  %cmp = icmp sgt i32 %3, 121
  br i1 %cmp, label %cond.end19, label %cond.false

cond.false:                                       ; preds = %entry
  %cmp11 = icmp eq i32 %3, 110
  br i1 %cmp11, label %cond.end19, label %cond.false13

cond.false13:                                     ; preds = %cond.false
  %cmp17 = icmp eq i32 %3, 100
  %cond = select i1 %cmp17, i32 5, i32 4
  br label %cond.end19

cond.end19:                                       ; preds = %cond.false13, %cond.false, %entry
  %cond20 = phi i32 [ 16, %entry ], [ %cond, %cond.false13 ], [ 12, %cond.false ]
  %4 = load i8, i8* getelementptr inbounds ([0 x %struct.x264_level_t], [0 x %struct.x264_level_t]* @x264_levels, i32 0, i32 0, i32 0), align 4, !tbaa !203
  %cmp21275 = icmp eq i8 %4, 0
  br i1 %cmp21275, label %while.end, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %cond.end19
  %i_level_idc = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 11
  %5 = load i32, i32* %i_level_idc, align 4, !tbaa !206
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %while.body
  %6 = phi i8 [ %4, %land.rhs.lr.ph ], [ %7, %while.body ]
  %l.0276 = phi %struct.x264_level_t* [ getelementptr inbounds ([0 x %struct.x264_level_t], [0 x %struct.x264_level_t]* @x264_levels, i32 0, i32 0), %land.rhs.lr.ph ], [ %incdec.ptr, %while.body ]
  %conv = zext i8 %6 to i32
  %cmp25 = icmp eq i32 %5, %conv
  br i1 %cmp25, label %while.end, label %while.body

while.body:                                       ; preds = %land.rhs
  %incdec.ptr = getelementptr inbounds %struct.x264_level_t, %struct.x264_level_t* %l.0276, i32 1
  %level_idc = getelementptr inbounds %struct.x264_level_t, %struct.x264_level_t* %incdec.ptr, i32 0, i32 0
  %7 = load i8, i8* %level_idc, align 4, !tbaa !203
  %cmp21 = icmp eq i8 %7, 0
  br i1 %cmp21, label %while.end, label %land.rhs

while.end:                                        ; preds = %while.body, %land.rhs, %cond.end19
  %l.0.lcssa = phi %struct.x264_level_t* [ getelementptr inbounds ([0 x %struct.x264_level_t], [0 x %struct.x264_level_t]* @x264_levels, i32 0, i32 0), %cond.end19 ], [ %l.0276, %land.rhs ], [ %incdec.ptr, %while.body ]
  %frame_size = getelementptr inbounds %struct.x264_level_t, %struct.x264_level_t* %l.0.lcssa, i32 0, i32 2
  %8 = load i32, i32* %frame_size, align 4, !tbaa !207
  %cmp27 = icmp slt i32 %8, %mul
  br i1 %cmp27, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %mul30 = shl nsw i32 %8, 3
  %mul37 = mul nsw i32 %0, %0
  %cmp38 = icmp slt i32 %mul30, %mul37
  %mul49 = mul nsw i32 %1, %1
  %cmp50 = icmp slt i32 %mul30, %mul49
  %or.cond = or i1 %cmp38, %cmp50
  br i1 %or.cond, label %if.then, label %if.end60

if.then:                                          ; preds = %lor.lhs.false, %while.end
  %tobool = icmp eq i32 %verbose, 0
  br i1 %tobool, label %if.end60, label %if.then52

if.then52:                                        ; preds = %if.then
  tail call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i32 0, i32 0), i32 %0, i32 %1, i32 %8) #9
  br label %if.end60

if.end60:                                         ; preds = %lor.lhs.false, %if.then52, %if.then
  %ret.0 = phi i32 [ 1, %if.then ], [ 1, %if.then52 ], [ 0, %lor.lhs.false ]
  %dpb61 = getelementptr inbounds %struct.x264_level_t, %struct.x264_level_t* %l.0.lcssa, i32 0, i32 3
  %9 = load i32, i32* %dpb61, align 4, !tbaa !208
  %cmp62 = icmp sgt i32 %mul5, %9
  br i1 %cmp62, label %if.then64, label %if.end74

if.then64:                                        ; preds = %if.end60
  %tobool65 = icmp eq i32 %verbose, 0
  br i1 %tobool65, label %if.end74, label %if.then66

if.then66:                                        ; preds = %if.then64
  %10 = load i32, i32* %i_max_dec_frame_buffering, align 4, !tbaa !53
  %div = sdiv i32 %9, %mul
  tail call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 1, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.7, i32 0, i32 0), i32 %10, i32 %mul5, i32 %div, i32 %9) #9
  br label %if.end74

if.end74:                                         ; preds = %if.then66, %if.then64, %if.end60
  %ret.1 = phi i32 [ %ret.0, %if.end60 ], [ 1, %if.then64 ], [ 1, %if.then66 ]
  %i_vbv_max_bitrate = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 9
  %11 = load i32, i32* %i_vbv_max_bitrate, align 4, !tbaa !209
  %bitrate = getelementptr inbounds %struct.x264_level_t, %struct.x264_level_t* %l.0.lcssa, i32 0, i32 4
  %12 = load i32, i32* %bitrate, align 4, !tbaa !210
  %mul76 = mul nsw i32 %12, %cond20
  %div77 = sdiv i32 %mul76, 4
  %cmp78 = icmp sgt i32 %11, %div77
  br i1 %cmp78, label %if.then80, label %if.end91

if.then80:                                        ; preds = %if.end74
  %tobool81 = icmp eq i32 %verbose, 0
  br i1 %tobool81, label %if.end91, label %if.then82

if.then82:                                        ; preds = %if.then80
  %conv86 = sext i32 %11 to i64
  tail call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i32 0, i32 0), i64 %conv86, i32 %div77) #9
  br label %if.end91

if.end91:                                         ; preds = %if.then82, %if.then80, %if.end74
  %ret.2 = phi i32 [ %ret.1, %if.end74 ], [ 1, %if.then80 ], [ 1, %if.then82 ]
  %i_vbv_buffer_size = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 10
  %13 = load i32, i32* %i_vbv_buffer_size, align 8, !tbaa !211
  %cpb = getelementptr inbounds %struct.x264_level_t, %struct.x264_level_t* %l.0.lcssa, i32 0, i32 5
  %14 = load i32, i32* %cpb, align 4, !tbaa !212
  %mul94 = mul nsw i32 %14, %cond20
  %div95 = sdiv i32 %mul94, 4
  %cmp96 = icmp sgt i32 %13, %div95
  br i1 %cmp96, label %if.then98, label %if.end109

if.then98:                                        ; preds = %if.end91
  %tobool99 = icmp eq i32 %verbose, 0
  br i1 %tobool99, label %if.end109, label %if.then100

if.then100:                                       ; preds = %if.then98
  %conv104 = sext i32 %13 to i64
  tail call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i32 0, i32 0), i64 %conv104, i32 %div95) #9
  br label %if.end109

if.end109:                                        ; preds = %if.then100, %if.then98, %if.end91
  %ret.3 = phi i32 [ %ret.2, %if.end91 ], [ 1, %if.then98 ], [ 1, %if.then100 ]
  %i_mv_range = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 51, i32 9
  %15 = load i32, i32* %i_mv_range, align 4, !tbaa !213
  %mv_range = getelementptr inbounds %struct.x264_level_t, %struct.x264_level_t* %l.0.lcssa, i32 0, i32 6
  %16 = load i16, i16* %mv_range, align 4, !tbaa !214
  %conv111 = zext i16 %16 to i32
  %cmp112 = icmp sgt i32 %15, %conv111
  br i1 %cmp112, label %if.then114, label %if.end124

if.then114:                                       ; preds = %if.end109
  %tobool115 = icmp eq i32 %verbose, 0
  br i1 %tobool115, label %if.end124, label %if.then116

if.then116:                                       ; preds = %if.then114
  %conv120 = sext i32 %15 to i64
  tail call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i32 0, i32 0), i64 %conv120, i32 %conv111) #9
  br label %if.end124

if.end124:                                        ; preds = %if.then116, %if.then114, %if.end109
  %ret.4 = phi i32 [ %ret.3, %if.end109 ], [ 1, %if.then114 ], [ 1, %if.then116 ]
  %b_interlaced = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 34
  %17 = load i32, i32* %b_interlaced, align 8, !tbaa !215
  %frame_only = getelementptr inbounds %struct.x264_level_t, %struct.x264_level_t* %l.0.lcssa, i32 0, i32 12
  %18 = load i8, i8* %frame_only, align 1, !tbaa !216
  %tobool126 = icmp eq i8 %18, 0
  %lnot.ext = zext i1 %tobool126 to i32
  %cmp127 = icmp sgt i32 %17, %lnot.ext
  br i1 %cmp127, label %if.then129, label %if.end140

if.then129:                                       ; preds = %if.end124
  %tobool130 = icmp eq i32 %verbose, 0
  br i1 %tobool130, label %if.end140, label %if.then131

if.then131:                                       ; preds = %if.then129
  %conv134 = sext i32 %17 to i64
  tail call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i32 0, i32 0), i64 %conv134, i32 %lnot.ext) #9
  %.pre = load i8, i8* %frame_only, align 1, !tbaa !216
  br label %if.end140

if.end140:                                        ; preds = %if.then131, %if.then129, %if.end124
  %19 = phi i8 [ %18, %if.end124 ], [ %18, %if.then129 ], [ %.pre, %if.then131 ]
  %ret.5 = phi i32 [ %ret.4, %if.end124 ], [ 1, %if.then129 ], [ 1, %if.then131 ]
  %b_fake_interlaced = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 70
  %20 = load i32, i32* %b_fake_interlaced, align 8, !tbaa !217
  %tobool143 = icmp eq i8 %19, 0
  %lnot.ext145 = zext i1 %tobool143 to i32
  %cmp146 = icmp sgt i32 %20, %lnot.ext145
  br i1 %cmp146, label %if.then148, label %if.end159

if.then148:                                       ; preds = %if.end140
  %tobool149 = icmp eq i32 %verbose, 0
  br i1 %tobool149, label %if.end159, label %if.then150

if.then150:                                       ; preds = %if.then148
  %conv153 = sext i32 %20 to i64
  tail call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i32 0, i32 0), i64 %conv153, i32 %lnot.ext145) #9
  br label %if.end159

if.end159:                                        ; preds = %if.then150, %if.then148, %if.end140
  %ret.6 = phi i32 [ %ret.5, %if.end140 ], [ 1, %if.then148 ], [ 1, %if.then150 ]
  %i_fps_den = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 65
  %21 = load i32, i32* %i_fps_den, align 4, !tbaa !218
  %cmp161 = icmp eq i32 %21, 0
  br i1 %cmp161, label %if.end190, label %if.then163

if.then163:                                       ; preds = %if.end159
  %conv164 = sext i32 %mul to i64
  %i_fps_num = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 64
  %22 = load i32, i32* %i_fps_num, align 32, !tbaa !219
  %conv166 = zext i32 %22 to i64
  %mul167 = mul nsw i64 %conv166, %conv164
  %conv170 = zext i32 %21 to i64
  %div171 = sdiv i64 %mul167, %conv170
  %mbps = getelementptr inbounds %struct.x264_level_t, %struct.x264_level_t* %l.0.lcssa, i32 0, i32 1
  %23 = load i32, i32* %mbps, align 4, !tbaa !220
  %conv172 = sext i32 %23 to i64
  %cmp173 = icmp sgt i64 %div171, %conv172
  br i1 %cmp173, label %if.then175, label %if.end190

if.then175:                                       ; preds = %if.then163
  %tobool176 = icmp eq i32 %verbose, 0
  br i1 %tobool176, label %if.end190, label %if.then177

if.then177:                                       ; preds = %if.then175
  tail call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0), i64 %div171, i32 %23) #9
  br label %if.end190

if.end190:                                        ; preds = %if.then177, %if.then175, %if.end159, %if.then163
  %ret.7 = phi i32 [ %ret.6, %if.then163 ], [ %ret.6, %if.end159 ], [ 1, %if.then175 ], [ 1, %if.then177 ]
  ret i32 %ret.7
}

; Function Attrs: nofree nounwind readonly
declare dso_local i32 @memcmp(i8* nocapture, i8* nocapture, i32) local_unnamed_addr #8

; Function Attrs: nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

attributes #0 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nofree norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #6 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #7 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #8 = { nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 (http://10.18.30.194:8888/compiler/compiler10.git 713ef477716300a9b04a1522e3fce445623444dc)"}
!2 = !{!3, !4, i64 4}
!3 = !{!"bs_s", !4, i64 0, !4, i64 4, !4, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"int", !5, i64 0}
!8 = !{!3, !7, i64 16}
!9 = !{!5, !5, i64 0}
!10 = !{!3, !7, i64 12}
!11 = !{!12, !7, i64 36}
!12 = !{!"x264_param_t", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !13, i64 56, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !7, i64 128, !7, i64 132, !7, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !7, i64 176, !4, i64 180, !5, i64 184, !5, i64 200, !5, i64 216, !5, i64 232, !5, i64 248, !5, i64 312, !5, i64 376, !5, i64 440, !4, i64 504, !4, i64 508, !7, i64 512, !7, i64 516, !4, i64 520, !14, i64 524, !16, i64 632, !17, i64 748, !7, i64 764, !18, i64 768, !20, i64 824, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !7, i64 856, !7, i64 860, !7, i64 864, !7, i64 868, !7, i64 872, !7, i64 876, !7, i64 880, !7, i64 884, !7, i64 888, !7, i64 892, !7, i64 896, !7, i64 900, !4, i64 904, !4, i64 908, !7, i64 912, !7, i64 916, !7, i64 920, !7, i64 924, !7, i64 928, !4, i64 932, !4, i64 936, !4, i64 940}
!13 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32}
!14 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !15, i64 72, !15, i64 76, !7, i64 80, !7, i64 84, !7, i64 88, !5, i64 92, !7, i64 100, !7, i64 104}
!15 = !{!"float", !5, i64 0}
!16 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !15, i64 24, !15, i64 28, !15, i64 32, !7, i64 36, !7, i64 40, !15, i64 44, !15, i64 48, !15, i64 52, !7, i64 56, !7, i64 60, !15, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !4, i64 80, !7, i64 84, !4, i64 88, !15, i64 92, !15, i64 96, !15, i64 100, !4, i64 104, !7, i64 108, !4, i64 112}
!17 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12}
!18 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !19, i64 40, !19, i64 48}
!19 = !{!"long long", !5, i64 0}
!20 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8}
!21 = !{!22, !7, i64 0}
!22 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !17, i64 72, !7, i64 88, !23, i64 92, !7, i64 260, !7, i64 264, !7, i64 268, !7, i64 272, !7, i64 276, !5, i64 280}
!23 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !24, i64 84, !7, i64 132, !7, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164}
!24 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44}
!25 = !{!12, !7, i64 28}
!26 = !{!22, !7, i64 48}
!27 = !{!12, !7, i64 32}
!28 = !{!22, !7, i64 52}
!29 = !{!12, !7, i64 168}
!30 = !{!22, !7, i64 56}
!31 = !{!12, !7, i64 888}
!32 = !{!22, !7, i64 264}
!33 = !{!12, !7, i64 632}
!34 = !{!22, !7, i64 260}
!35 = !{!12, !7, i64 636}
!36 = !{!12, !7, i64 532}
!37 = !{!12, !7, i64 176}
!38 = !{!12, !7, i64 160}
!39 = !{!12, !7, i64 116}
!40 = !{!12, !7, i64 536}
!41 = !{!22, !7, i64 4}
!42 = !{!22, !7, i64 12}
!43 = !{!22, !7, i64 16}
!44 = !{!22, !7, i64 20}
!45 = !{!22, !7, i64 24}
!46 = !{!12, !7, i64 44}
!47 = !{!22, !7, i64 8}
!48 = !{!12, !7, i64 100}
!49 = !{!12, !7, i64 128}
!50 = !{!22, !7, i64 252}
!51 = !{!12, !7, i64 92}
!52 = !{!12, !7, i64 96}
!53 = !{!22, !7, i64 256}
!54 = !{!22, !7, i64 40}
!55 = !{!12, !7, i64 112}
!56 = !{!22, !7, i64 28}
!57 = !{!12, !7, i64 140}
!58 = !{!22, !7, i64 32}
!59 = !{!22, !7, i64 36}
!60 = !{!22, !7, i64 88}
!61 = !{!22, !7, i64 44}
!62 = !{!22, !7, i64 60}
!63 = !{!22, !7, i64 64}
!64 = !{!12, !7, i64 748}
!65 = !{!22, !7, i64 72}
!66 = !{!12, !7, i64 752}
!67 = !{!22, !7, i64 80}
!68 = !{!12, !7, i64 756}
!69 = !{!22, !7, i64 76}
!70 = !{!12, !7, i64 760}
!71 = !{!22, !7, i64 84}
!72 = !{!22, !7, i64 68}
!73 = !{!22, !7, i64 92}
!74 = !{!12, !7, i64 60}
!75 = !{!12, !7, i64 56}
!76 = !{!22, !7, i64 96}
!77 = !{!22, !7, i64 100}
!78 = !{!12, !7, i64 64}
!79 = !{!22, !7, i64 104}
!80 = !{!22, !7, i64 108}
!81 = !{!22, !7, i64 112}
!82 = !{!12, !7, i64 68}
!83 = !{!22, !7, i64 116}
!84 = !{!12, !7, i64 72}
!85 = !{!22, !7, i64 120}
!86 = !{!22, !7, i64 124}
!87 = !{!12, !7, i64 76}
!88 = !{!22, !7, i64 128}
!89 = !{!12, !7, i64 80}
!90 = !{!22, !7, i64 132}
!91 = !{!12, !7, i64 84}
!92 = !{!22, !7, i64 136}
!93 = !{!12, !7, i64 88}
!94 = !{!22, !7, i64 140}
!95 = !{!22, !7, i64 144}
!96 = !{!22, !7, i64 148}
!97 = !{!12, !7, i64 872}
!98 = !{!22, !7, i64 152}
!99 = !{!12, !7, i64 876}
!100 = !{!22, !7, i64 156}
!101 = !{!22, !7, i64 160}
!102 = !{!12, !7, i64 856}
!103 = !{!22, !7, i64 164}
!104 = !{!22, !7, i64 172}
!105 = !{!12, !7, i64 52}
!106 = !{!22, !7, i64 168}
!107 = !{!12, !7, i64 884}
!108 = !{!22, !7, i64 224}
!109 = !{!22, !7, i64 228}
!110 = !{!22, !7, i64 232}
!111 = !{!22, !7, i64 236}
!112 = !{!22, !7, i64 240}
!113 = !{!12, !7, i64 560}
!114 = !{!22, !7, i64 248}
!115 = !{!22, !7, i64 244}
!116 = !{!22, !7, i64 268}
!117 = !{!22, !7, i64 272}
!118 = !{!22, !7, i64 276}
!119 = !{!4, !4, i64 0}
!120 = !{!121, !5, i64 2}
!121 = !{!"", !5, i64 0, !5, i64 1, !5, i64 2}
!122 = !{!22, !7, i64 176}
!123 = !{!22, !7, i64 180}
!124 = !{!22, !7, i64 184}
!125 = !{!22, !7, i64 188}
!126 = !{!22, !7, i64 192}
!127 = !{!22, !7, i64 204}
!128 = !{!22, !7, i64 208}
!129 = !{!22, !7, i64 212}
!130 = !{!22, !7, i64 216}
!131 = !{!22, !7, i64 220}
!132 = distinct !{!132, !133}
!133 = !{!"llvm.loop.peeled.count", i32 1}
!134 = !{!135, !7, i64 0}
!135 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60}
!136 = !{!135, !7, i64 4}
!137 = !{!135, !7, i64 8}
!138 = !{!135, !7, i64 12}
!139 = !{!135, !7, i64 16}
!140 = !{!135, !7, i64 20}
!141 = !{!135, !7, i64 24}
!142 = !{!135, !7, i64 28}
!143 = !{!12, !7, i64 540}
!144 = !{!135, !7, i64 32}
!145 = !{!12, !7, i64 892}
!146 = !{!135, !7, i64 36}
!147 = !{!135, !7, i64 40}
!148 = !{!12, !7, i64 548}
!149 = !{!135, !7, i64 44}
!150 = !{!135, !7, i64 48}
!151 = !{!12, !7, i64 172}
!152 = !{!135, !7, i64 52}
!153 = !{!135, !7, i64 56}
!154 = !{!135, !7, i64 60}
!155 = !{!156, !7, i64 15536}
!156 = !{!"x264_t", !12, i64 0, !4, i64 944, !5, i64 948, !5, i64 1464, !7, i64 1528, !7, i64 1532, !7, i64 1536, !7, i64 1540, !7, i64 1544, !7, i64 1548, !4, i64 1552, !4, i64 1556, !7, i64 1560, !7, i64 1564, !157, i64 1568, !4, i64 1612, !7, i64 1616, !4, i64 1620, !7, i64 1624, !7, i64 1628, !7, i64 1632, !7, i64 1636, !7, i64 1640, !7, i64 1644, !19, i64 1648, !7, i64 1656, !19, i64 1664, !19, i64 1672, !19, i64 1680, !19, i64 1688, !19, i64 1696, !19, i64 1704, !19, i64 1712, !7, i64 1720, !19, i64 1728, !7, i64 1736, !5, i64 1740, !5, i64 1756, !5, i64 1772, !5, i64 1788, !5, i64 1804, !5, i64 1820, !5, i64 1836, !5, i64 1852, !5, i64 1868, !5, i64 1884, !4, i64 1900, !5, i64 1904, !5, i64 2184, !4, i64 3304, !4, i64 3308, !158, i64 3312, !5, i64 8448, !5, i64 8760, !7, i64 8824, !158, i64 8832, !159, i64 14016, !160, i64 15168, !4, i64 15352, !4, i64 15356, !5, i64 15360, !5, i64 15368, !5, i64 15520, !5, i64 15528, !7, i64 15536, !7, i64 15540, !19, i64 15544, !161, i64 15552, !162, i64 18752, !4, i64 30784, !165, i64 30792, !4, i64 34104, !4, i64 34108, !4, i64 34112, !5, i64 34144, !5, i64 34656, !5, i64 36704, !5, i64 36736, !4, i64 36744, !4, i64 36748, !5, i64 36752, !5, i64 36812, !5, i64 36820, !5, i64 36848, !5, i64 36896, !5, i64 36944, !5, i64 36972, !5, i64 37000, !4, i64 37028, !168, i64 37032, !169, i64 37664, !170, i64 37880, !171, i64 37948, !171, i64 37972, !171, i64 37996, !172, i64 38020, !173, i64 38232, !174, i64 38316, !4, i64 38332}
!157 = !{!"", !7, i64 0, !7, i64 4, !4, i64 8, !7, i64 12, !4, i64 16, !3, i64 20}
!158 = !{!"", !4, i64 0, !4, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !5, i64 52, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !5, i64 80, !5, i64 88, !7, i64 344, !5, i64 352, !7, i64 4960, !7, i64 4964, !5, i64 4968, !7, i64 5096, !7, i64 5100, !7, i64 5104, !7, i64 5108, !7, i64 5112, !7, i64 5116, !7, i64 5120, !7, i64 5124}
!159 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !7, i64 64, !5, i64 68, !5, i64 1092}
!160 = !{!"", !4, i64 0, !5, i64 4, !4, i64 12, !5, i64 16, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !19, i64 128, !19, i64 136, !5, i64 144, !19, i64 160, !19, i64 168, !7, i64 176, !7, i64 180}
!161 = !{!"", !5, i64 0, !5, i64 96, !5, i64 128, !5, i64 1664}
!162 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !5, i64 32, !5, i64 40, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !5, i64 108, !5, i64 116, !5, i64 124, !5, i64 136, !5, i64 148, !5, i64 156, !5, i64 164, !5, i64 176, !5, i64 192, !5, i64 200, !5, i64 212, !7, i64 224, !5, i64 228, !5, i64 244, !7, i64 308, !7, i64 312, !7, i64 316, !5, i64 320, !7, i64 328, !7, i64 332, !7, i64 336, !5, i64 340, !7, i64 348, !7, i64 352, !7, i64 356, !7, i64 360, !7, i64 364, !7, i64 368, !4, i64 372, !7, i64 376, !7, i64 380, !7, i64 384, !7, i64 388, !4, i64 392, !4, i64 396, !4, i64 400, !4, i64 404, !4, i64 408, !4, i64 412, !4, i64 416, !4, i64 420, !5, i64 424, !5, i64 432, !5, i64 440, !5, i64 448, !4, i64 704, !4, i64 708, !4, i64 712, !4, i64 716, !5, i64 720, !7, i64 784, !7, i64 788, !5, i64 792, !7, i64 796, !7, i64 800, !7, i64 804, !7, i64 808, !7, i64 812, !7, i64 816, !7, i64 820, !7, i64 824, !7, i64 828, !7, i64 832, !7, i64 836, !163, i64 896, !164, i64 9472, !7, i64 10336, !7, i64 10340, !7, i64 10344, !7, i64 10348, !7, i64 10352, !7, i64 10356, !7, i64 10360, !7, i64 10364, !5, i64 10368, !7, i64 10384, !7, i64 10388, !5, i64 10392, !4, i64 11416, !5, i64 11420, !4, i64 11932, !5, i64 11936, !7, i64 11956, !5, i64 11960}
!163 = !{!"", !5, i64 0, !5, i64 768, !5, i64 2496, !5, i64 2752, !5, i64 3008, !5, i64 3392, !5, i64 3872, !5, i64 3888, !5, i64 3904, !5, i64 4416, !5, i64 4928, !5, i64 5056, !7, i64 5128, !7, i64 5132, !5, i64 5136, !5, i64 5148, !5, i64 5160, !5, i64 5172, !5, i64 5180, !5, i64 8252, !5, i64 8380, !5, i64 8508}
!164 = !{!"", !5, i64 0, !5, i64 40, !5, i64 160, !5, i64 240, !5, i64 560, !5, i64 720, !5, i64 760, !5, i64 792, !7, i64 800, !5, i64 804, !7, i64 808, !7, i64 812, !7, i64 816, !7, i64 820, !5, i64 824, !5, i64 848, !4, i64 856}
!165 = !{!"", !5, i64 0, !5, i64 16, !5, i64 40, !5, i64 64, !5, i64 136, !5, i64 160, !5, i64 184, !5, i64 208, !5, i64 232, !5, i64 256, !5, i64 280, !5, i64 304, !5, i64 760, !5, i64 1032, !5, i64 1048, !5, i64 2072, !5, i64 2120, !5, i64 2536, !5, i64 2560, !5, i64 2568, !5, i64 2576, !166, i64 2584}
!166 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !5, i64 12, !7, i64 88, !7, i64 92, !7, i64 96, !5, i64 100, !5, i64 108, !5, i64 364, !5, i64 432, !5, i64 456, !5, i64 664, !5, i64 676, !5, i64 688, !167, i64 712, !7, i64 720}
!167 = !{!"double", !5, i64 0}
!168 = !{!"", !5, i64 0, !5, i64 32, !5, i64 64, !5, i64 96, !5, i64 124, !5, i64 140, !5, i64 172, !5, i64 204, !5, i64 236, !5, i64 264, !5, i64 292, !4, i64 324, !4, i64 328, !5, i64 332, !5, i64 336, !5, i64 352, !5, i64 368, !4, i64 384, !4, i64 388, !4, i64 392, !5, i64 396, !5, i64 424, !5, i64 452, !5, i64 480, !5, i64 508, !4, i64 536, !4, i64 540, !4, i64 544, !4, i64 548, !4, i64 552, !4, i64 556, !4, i64 560, !4, i64 564, !4, i64 568, !4, i64 572, !4, i64 576, !4, i64 580, !4, i64 584, !4, i64 588, !4, i64 592, !4, i64 596, !4, i64 600, !4, i64 604, !4, i64 608, !4, i64 612, !4, i64 616, !4, i64 620, !4, i64 624, !4, i64 628}
!169 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !5, i64 12, !5, i64 60, !4, i64 88, !4, i64 92, !4, i64 96, !4, i64 100, !4, i64 104, !4, i64 108, !4, i64 112, !4, i64 116, !4, i64 120, !4, i64 124, !4, i64 128, !4, i64 132, !4, i64 136, !4, i64 140, !4, i64 144, !4, i64 148, !4, i64 152, !4, i64 156, !4, i64 160, !4, i64 164, !4, i64 168, !4, i64 172, !4, i64 176, !4, i64 180, !4, i64 184, !4, i64 188, !4, i64 192, !4, i64 196, !4, i64 200, !4, i64 204, !4, i64 208, !4, i64 212}
!170 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64}
!171 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20}
!172 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !5, i64 64, !4, i64 120, !4, i64 124, !5, i64 128, !4, i64 180, !4, i64 184, !4, i64 188, !4, i64 192, !4, i64 196, !4, i64 200, !4, i64 204, !4, i64 208}
!173 = !{!"", !5, i64 0, !5, i64 8, !4, i64 16, !4, i64 20, !5, i64 24, !5, i64 32, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !4, i64 76, !4, i64 80}
!174 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12}
!175 = !{!156, !7, i64 15540}
!176 = !{!156, !4, i64 15352}
!177 = !{!178, !19, i64 80}
!178 = !{!"x264_frame", !4, i64 0, !7, i64 4, !5, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !19, i64 32, !19, i64 40, !19, i64 48, !19, i64 56, !15, i64 64, !19, i64 72, !19, i64 80, !19, i64 88, !4, i64 96, !7, i64 100, !7, i64 104, !19, i64 112, !7, i64 120, !7, i64 124, !7, i64 128, !7, i64 132, !5, i64 136, !5, i64 137, !5, i64 138, !15, i64 140, !15, i64 144, !15, i64 148, !7, i64 152, !7, i64 156, !7, i64 160, !5, i64 164, !5, i64 176, !5, i64 188, !7, i64 200, !7, i64 204, !7, i64 208, !5, i64 212, !5, i64 224, !5, i64 236, !5, i64 284, !5, i64 332, !4, i64 348, !5, i64 352, !5, i64 368, !4, i64 384, !5, i64 400, !5, i64 2704, !7, i64 2768, !4, i64 2772, !4, i64 2776, !4, i64 2780, !5, i64 2784, !4, i64 2792, !5, i64 2796, !4, i64 2932, !4, i64 2936, !5, i64 2940, !5, i64 4236, !5, i64 4372, !5, i64 4380, !5, i64 4388, !5, i64 4516, !5, i64 4520, !5, i64 5816, !7, i64 7112, !5, i64 7116, !5, i64 7188, !4, i64 8484, !4, i64 8488, !4, i64 8492, !4, i64 8496, !4, i64 8500, !4, i64 8504, !7, i64 8508, !4, i64 8512, !4, i64 8516, !4, i64 8520, !7, i64 8524, !5, i64 8528, !5, i64 8600, !5, i64 8616, !179, i64 8640, !5, i64 8672, !5, i64 8924, !5, i64 9928, !19, i64 11936, !19, i64 11944, !7, i64 11952, !7, i64 11956, !7, i64 11960, !7, i64 11964, !7, i64 11968, !7, i64 11972, !15, i64 11976, !7, i64 11980, !7, i64 11984, !7, i64 11988, !7, i64 11992, !180, i64 11996, !4, i64 12008, !4, i64 12012, !4, i64 12016}
!179 = !{!"x264_hrd_t", !167, i64 0, !167, i64 8, !167, i64 16, !167, i64 24}
!180 = !{!"x264_sei_t", !7, i64 0, !4, i64 4, !4, i64 8}
!181 = !{!156, !19, i64 1704}
!182 = !{!178, !19, i64 88}
!183 = !{!178, !7, i64 128}
!184 = !{!156, !7, i64 764}
!185 = !{!178, !7, i64 100}
!186 = !{!156, !7, i64 776}
!187 = !{!156, !7, i64 772}
!188 = !{!156, !7, i64 780}
!189 = !{!156, !7, i64 784}
!190 = !{!156, !7, i64 788}
!191 = !{!156, !7, i64 792}
!192 = !{!156, !7, i64 796}
!193 = !{!156, !7, i64 800}
!194 = !{!156, !19, i64 808}
!195 = !{!156, !19, i64 816}
!196 = !{!156, !7, i64 832}
!197 = !{!156, !7, i64 828}
!198 = !{!156, !7, i64 836}
!199 = !{!158, !7, i64 24}
!200 = !{!158, !7, i64 4964}
!201 = !{!202, !7, i64 0}
!202 = !{!"", !7, i64 0, !7, i64 4}
!203 = !{!204, !5, i64 0}
!204 = !{!"x264_level_t", !5, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !205, i64 24, !5, i64 26, !5, i64 27, !5, i64 28, !5, i64 29, !5, i64 30, !5, i64 31}
!205 = !{!"short", !5, i64 0}
!206 = !{!156, !7, i64 44}
!207 = !{!204, !7, i64 8}
!208 = !{!204, !7, i64 12}
!209 = !{!156, !7, i64 668}
!210 = !{!204, !7, i64 16}
!211 = !{!156, !7, i64 672}
!212 = !{!204, !7, i64 20}
!213 = !{!156, !7, i64 560}
!214 = !{!204, !205, i64 24}
!215 = !{!156, !7, i64 168}
!216 = !{!204, !5, i64 31}
!217 = !{!156, !7, i64 888}
!218 = !{!156, !7, i64 868}
!219 = !{!156, !7, i64 864}
!220 = !{!204, !7, i64 4}
