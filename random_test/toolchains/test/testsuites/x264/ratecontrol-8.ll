; ModuleID = 'encoder/ratecontrol.c'
source_filename = "encoder/ratecontrol.c"
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

%struct.x264_level_t = type { i8, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8 }
%struct.x264_t = type { %struct.x264_param_t, i8*, [129 x %struct.x264_t*], [16 x %struct.x264_t*], i32, i32, i32, i32, i32, i32, %struct.x264_threadpool_t*, %struct.x264_threadpool_t*, i32, i32, %struct.anon.5, i8*, i32, %struct.x264_t*, i32, i32, i32, i32, i32, i32, i64, i32, i64, i64, i64, i64, i64, i64, i64, i32, i64, i32, [4 x [16 x i32]*], [4 x [64 x i32]*], [4 x [16 x i32]*], [4 x [64 x i32]*], [4 x [16 x i16]*], [4 x [64 x i16]*], [4 x [16 x i16]*], [4 x [64 x i16]*], [4 x [16 x i16]*], [4 x [64 x i16]*], [4 x [64 x i16]]*, [70 x i16*], [70 x [4 x i16*]], %struct.anon.6*, i8*, %struct.x264_slice_header_t, [1 x %struct.x264_sps_t], [1 x %struct.x264_pps_t], i32, [4 x i8], %struct.x264_slice_header_t, [48 x i8], %struct.x264_cabac_t, %struct.anon.12, %struct.x264_frame*, %struct.x264_frame*, [2 x i32], [2 x [19 x %struct.x264_frame*]], [2 x %struct.x264_frame*], [2 x i32], i32, i32, i64, %struct.anon.13, %struct.anon.14, %struct.x264_ratecontrol_t*, %struct.anon.18, [64 x i16]*, [64 x i32]*, i32*, [28 x i8], [4 x [64 x i16]], [2 x [4 x [64 x i32]]], [2 x [4 x i32]], [7 x i8], i8*, i8*, [5 x [3 x i8*]], [2 x [2 x [8 x [4 x i8]]]*], [7 x void (i8*)*], [12 x void (i8*, i8*)*], [12 x void (i8*)*], [7 x void (i8*)*], [7 x void (i8*)*], [7 x void (i8*)*], void (i8*, i8*, i32, i32)*, %struct.x264_pixel_function_t, %struct.x264_mc_functions_t, %struct.x264_dct_function_t, %struct.x264_zigzag_function_t, %struct.x264_zigzag_function_t, %struct.x264_zigzag_function_t, %struct.x264_quant_function_t, %struct.x264_deblock_function_t, %struct.x264_bitstream_function_t, %struct.x264_lookahead_t* }
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
%struct.anon.13 = type { [3 x [16 x i16]], [2 x [8 x i16]], [12 x [64 x i16]], [48 x [16 x i16]] }
%struct.anon.14 = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], [3 x i32], [3 x i32], [2 x i32], [2 x i32], [3 x i32], [3 x i32], [4 x i8], [2 x [2 x i16]], [3 x i32], [3 x i32], i32, [4 x i32], [16 x i32], i32, i32, i32, [2 x i32], i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, %struct.x264_left_table_t*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i16*, [8 x i8]*, [48 x i8]*, i8*, [2 x [2 x i16]*], [2 x [8 x [2 x i8]]*], [2 x i8*], [2 x [32 x [2 x i16]*]], i8*, i8*, i32*, i8*, [16 x i8*], i32, i32, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.anon.15, %struct.anon.16, i32, i32, i32, i32, i32, i32, i32, i32, [2 x [2 x i32]], i32, i32, [2 x [2 x [32 x [4 x i16]]]], [4 x i16]*, [2 x [2 x [32 x [4 x i8]]]], [4 x i8]*, [18 x i8], i32, [34 x i8], [38 x i8] }
%struct.x264_left_table_t = type { [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8] }
%struct.anon.15 = type { [768 x i8], [1728 x i8], [256 x i8], [256 x i8], [3 x [64 x i16]], [15 x [16 x i16]], [4 x i32], [4 x i32], [4 x [64 x i16]], [16 x [16 x i16]], [32 x i32], [9 x i64], i32, i32, [3 x i8*], [3 x i8*], [3 x i8*], [2 x i32], [2 x [32 x [12 x i8*]]], [32 x i8*], [2 x [16 x i16*]], [3 x i32], [56 x i8] }
%struct.anon.16 = type { [40 x i8], [120 x i8], [2 x [40 x i8]], [2 x [40 x [2 x i16]]], [2 x [40 x [2 x i8]]], [40 x i8], [2 x [4 x [2 x i16]]], [2 x [4 x i8]], i32, [2 x i16], i32, i32, i32, i32, [2 x [3 x [2 x i16]]], [2 x [3 x i8]], [8 x [4 x i8]]*, [4 x i8] }
%struct.x264_ratecontrol_t = type { i32, i32, i32, i32, double, double, double, double, i32, [3 x i32], %struct.ratecontrol_entry_t*, float, float, float, i32, i32, float, double, i64, i64, double, double, double, %struct.predictor_t*, i32, float, i32, double, double, double, i64, double, double, double, double, double, double, double, %struct._IO_FILE*, i8*, %struct._IO_FILE*, i8*, i8*, %struct._IO_FILE*, i32, %struct.ratecontrol_entry_t*, %struct.ratecontrol_entry_t**, double, [3 x double], i32, double, double, double, [3 x double], [3 x double], double, %struct.anon.17, float, double, double, double, %struct.predictor_t*, [3 x [2 x %struct.predictor_t]], %struct.predictor_t*, i32, i32, i32, %struct.x264_zone_t*, %struct.x264_zone_t*, i32, i32, double, double, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.ratecontrol_entry_t = type { i32, i32, i32, double, i32, i32, i32, double, double, double, float, i32, i32, i32, float, i8, [3 x [2 x i16]], [2 x i16], [16 x i32], i32, i64, i64, i32 }
%struct.anon.17 = type { [2 x i16*], i32, i32, i32, [2 x float*], [2 x i32], [2 x float*], [2 x i32*], [2 x i32] }
%struct.predictor_t = type { float, float, float, float, float }
%struct.anon.18 = type { [3 x i32], [3 x i64], [3 x double], [17 x i32], [3 x double], [3 x double], [3 x double], [3 x double], [3 x double], [3 x double], [3 x double], [3 x [19 x i64]], [2 x [17 x i64]], [2 x i64], [2 x [2 x [32 x i64]]], [6 x i64], [4 x [13 x i64]], [3 x i64], [2 x i32], [2 x i32], [2 x i32], %struct.x264_frame_stat_t }
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
%struct.stat = type { i64, i16, i32, i32, i32, i32, i32, i64, i16, i64, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, i64 }
%struct.timespec = type { i32, i32 }
%struct.stat64 = type { i64, i32, i32, i32, i32, i32, i32, i64, i32, i64, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, i64 }

@.str = private unnamed_addr constant [57 x i8] c"MB-tree frametype %d doesn't match actual frametype %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Incomplete MB-tree stats file.\0A\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"VBV buffer size cannot be smaller than one frame, using %d kbit\0A\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"VBV parameters cannot be changed when NAL HRD is in use\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"CRF max must be greater than CRF\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"CRF/CQP is incompatible with 2pass.\0A\00", align 1
@.str.6 = private unnamed_addr constant [57 x i8] c"HRD with very large timescale and bufsize not supported\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"bitrate tolerance too small, using .01\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"failed to parse zones\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"h->param.rc.psz_stat_in\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"encoder/ratecontrol.c\00", align 1
@__PRETTY_FUNCTION__.x264_8_ratecontrol_new = private unnamed_addr constant [37 x i8] c"int x264_8_ratecontrol_new(x264_t *)\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"ratecontrol_init: can't open stats file\0A\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.14 = private unnamed_addr constant [48 x i8] c"ratecontrol_init: can't open mbtree stats file\0A\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"#options:\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"options list in stats file not valid\0A\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"#options: %dx%d\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"resolution specified in stats file not valid\0A\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"timebase=\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"timebase=%u/%u\00", align 1
@.str.21 = private unnamed_addr constant [44 x i8] c"timebase specified in stats file not valid\0A\00", align 1
@.str.22 = private unnamed_addr constant [50 x i8] c"timebase mismatch with 1st pass (%u/%u vs %u/%u)\0A\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"bitdepth=\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"bitdepth=%d\00", align 1
@.str.25 = private unnamed_addr constant [55 x i8] c"different bitdepth setting than first pass (%d vs %d)\0A\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"weightp=\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"weightp=%d\00", align 1
@.str.28 = private unnamed_addr constant [54 x i8] c"different weightp setting than first pass (%d vs %d)\0A\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"bframes=\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"bframes=%d\00", align 1
@.str.31 = private unnamed_addr constant [54 x i8] c"different bframes setting than first pass (%d vs %d)\0A\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"b_pyramid=\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"b_pyramid=%d\00", align 1
@.str.34 = private unnamed_addr constant [56 x i8] c"different b_pyramid setting than first pass (%d vs %d)\0A\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"intra_refresh=\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"intra_refresh=%d\00", align 1
@.str.37 = private unnamed_addr constant [60 x i8] c"different intra_refresh setting than first pass (%d vs %d)\0A\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"open_gop=\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"open_gop=%d\00", align 1
@.str.40 = private unnamed_addr constant [55 x i8] c"different open_gop setting than first pass (%d vs %d)\0A\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"bluray_compat=\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"bluray_compat=%d\00", align 1
@.str.43 = private unnamed_addr constant [60 x i8] c"different bluray_compat setting than first pass (%d vs %d)\0A\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"mbtree=\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"mbtree=%d\00", align 1
@.str.46 = private unnamed_addr constant [53 x i8] c"different mbtree setting than first pass (%d vs %d)\0A\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"interlaced=\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"tff\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"bff\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"fake\00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"interlaced=%4s\00", align 1
@.str.53 = private unnamed_addr constant [57 x i8] c"different interlaced setting than first pass (%s vs %s)\0A\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"keyint=\00", align 1
@__const.x264_8_ratecontrol_new.buf = private unnamed_addr constant [13 x i8] c"infinite \00\00\00\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.56 = private unnamed_addr constant [57 x i8] c"different keyint setting than first pass (%.*s vs %.*s)\0A\00", align 1
@.str.57 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"qp=0\00", align 1
@.str.59 = private unnamed_addr constant [62 x i8] c"1st pass was lossless, bitrate prediction will be inaccurate\0A\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"direct=3\00", align 1
@.str.61 = private unnamed_addr constant [40 x i8] c"direct=auto not used on the first pass\0A\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"b_adapt=\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"b_adapt=%d\00", align 1
@.str.64 = private unnamed_addr constant [50 x i8] c"b_adapt method specified in stats file not valid\0A\00", align 1
@.str.65 = private unnamed_addr constant [14 x i8] c"rc_lookahead=\00", align 1
@.str.66 = private unnamed_addr constant [16 x i8] c"rc_lookahead=%d\00", align 1
@.str.67 = private unnamed_addr constant [18 x i8] c"empty stats file\0A\00", align 1
@.str.68 = private unnamed_addr constant [52 x i8] c"2nd pass has fewer frames than 1st pass (%d vs %d)\0A\00", align 1
@.str.69 = private unnamed_addr constant [51 x i8] c"2nd pass has more frames than 1st pass (%d vs %d)\0A\00", align 1
@.str.70 = private unnamed_addr constant [15 x i8] c" in:%d out:%d \00", align 1
@.str.71 = private unnamed_addr constant [40 x i8] c"bad frame number (%d) at stats line %d\0A\00", align 1
@.str.72 = private unnamed_addr constant [47 x i8] c"bad frame output number (%d) at stats line %d\0A\00", align 1
@.str.73 = private unnamed_addr constant [103 x i8] c" in:%*d out:%*d type:%c dur:%lld cpbdur:%lld q:%f aq:%f tex:%d mv:%d misc:%d imb:%d pmb:%d smb:%d d:%c\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"ref:\00", align 1
@.str.75 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.76 = private unnamed_addr constant [34 x i8] c"w:%hd,%hd,%hd,%hd,%hd,%hd,%hd,%hd\00", align 1
@.str.77 = private unnamed_addr constant [50 x i8] c"statistics are damaged at line %d, parser out=%d\0A\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c".temp\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.80 = private unnamed_addr constant [14 x i8] c"#options: %s\0A\00", align 1
@.str.81 = private unnamed_addr constant [13 x i8] c".mbtree.temp\00", align 1
@.str.82 = private unnamed_addr constant [24 x i8] c"final ratefactor: %.2f\0A\00", align 1
@.str.83 = private unnamed_addr constant [31 x i8] c"failed to rename \22%s\22 to \22%s\22\0A\00", align 1
@.str.84 = private unnamed_addr constant [38 x i8] c"frame >= 0 && frame < rc->num_entries\00", align 1
@__PRETTY_FUNCTION__.x264_8_ratecontrol_start = private unnamed_addr constant [50 x i8] c"void x264_8_ratecontrol_start(x264_t *, int, int)\00", align 1
@x264_levels = external dso_local local_unnamed_addr constant [0 x %struct.x264_level_t], align 4
@.str.85 = private unnamed_addr constant [45 x i8] c"2nd pass has more frames than 1st pass (%d)\0A\00", align 1
@.str.86 = private unnamed_addr constant [38 x i8] c"continuing anyway, at constant QP=%d\0A\00", align 1
@.str.87 = private unnamed_addr constant [29 x i8] c"disabling adaptive B-frames\0A\00", align 1
@.str.88 = private unnamed_addr constant [109 x i8] c"in:%d out:%d type:%c dur:%lld cpbdur:%lld q:%.2f aq:%.2f tex:%d mv:%d misc:%d imb:%d pmb:%d smb:%d d:%c ref:\00", align 1
@.str.89 = private unnamed_addr constant [11 x i8] c"w:%d,%d,%d\00", align 1
@.str.90 = private unnamed_addr constant [17 x i8] c",%d,%d,%d,%d,%d \00", align 1
@.str.91 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@.str.92 = private unnamed_addr constant [53 x i8] c"ratecontrol_end: stats file could not be written to\0A\00", align 1
@.str.93 = private unnamed_addr constant [40 x i8] c"CPB %s: %.0f bits in a %.0f-bit buffer\0A\00", align 1
@.str.94 = private unnamed_addr constant [10 x i8] c"underflow\00", align 1
@.str.95 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@x264_exp2_lut = external dso_local local_unnamed_addr constant [64 x i8], align 1
@x264_log2_lut = external dso_local local_unnamed_addr constant [128 x float], align 4
@x264_log2_lz_lut = external dso_local local_unnamed_addr constant [32 x float], align 4
@.str.96 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.97 = private unnamed_addr constant [31 x i8] c"invalid zone: start=%d end=%d\0A\00", align 1
@.str.98 = private unnamed_addr constant [33 x i8] c"invalid zone: bitrate_factor=%f\0A\00", align 1
@.str.99 = private unnamed_addr constant [13 x i8] c"%d,%d,q=%d%n\00", align 1
@.str.100 = private unnamed_addr constant [13 x i8] c"%d,%d,b=%f%n\00", align 1
@.str.101 = private unnamed_addr constant [8 x i8] c"%d,%d%n\00", align 1
@.str.102 = private unnamed_addr constant [20 x i8] c"invalid zone: \22%s\22\0A\00", align 1
@.str.103 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.104 = private unnamed_addr constant [29 x i8] c"invalid zone param: %s = %s\0A\00", align 1
@.str.105 = private unnamed_addr constant [52 x i8] c"VBV underflow due to CRF-max (frame %d, %.0f bits)\0A\00", align 1
@.str.106 = private unnamed_addr constant [37 x i8] c"VBV underflow (frame %d, %.0f bits)\0A\00", align 1
@.str.107 = private unnamed_addr constant [33 x i8] c"slice=%c but 2pass stats say %c\0A\00", align 1
@slice_type_to_char = internal unnamed_addr constant [3 x i8] c"PBI", align 1
@.str.108 = private unnamed_addr constant [60 x i8] c"requested bitrate is too low. estimated minimum is %d kbps\0A\00", align 1
@.str.109 = private unnamed_addr constant [15 x i8] c"qscale[i] >= 0\00", align 1
@__PRETTY_FUNCTION__.init_pass2 = private unnamed_addr constant [25 x i8] c"int init_pass2(x264_t *)\00", align 1
@.str.111 = private unnamed_addr constant [21 x i8] c"rce->new_qscale >= 0\00", align 1
@.str.112 = private unnamed_addr constant [39 x i8] c"Error: 2pass curve failed to converge\0A\00", align 1
@.str.113 = private unnamed_addr constant [58 x i8] c"target: %.2f kbit/s, expected: %.2f kbit/s, avg QP: %.4f\0A\00", align 1
@.str.114 = private unnamed_addr constant [63 x i8] c"try reducing target bitrate or reducing qp_min (currently %d)\0A\00", align 1
@.str.115 = private unnamed_addr constant [29 x i8] c"try reducing target bitrate\0A\00", align 1
@.str.116 = private unnamed_addr constant [67 x i8] c"try increasing target bitrate or increasing qp_max (currently %d)\0A\00", align 1
@.str.117 = private unnamed_addr constant [31 x i8] c"try increasing target bitrate\0A\00", align 1
@.str.118 = private unnamed_addr constant [16 x i8] c"internal error\0A\00", align 1
@.str.119 = private unnamed_addr constant [49 x i8] c"vbv-maxrate issue, qpmax or vbv-maxrate too low\0A\00", align 1

; Function Attrs: nounwind
define hidden void @x264_8_adaptive_quant_frame(%struct.x264_t* %h, %struct.x264_frame* %frame, float* readonly %quant_offsets) local_unnamed_addr #0 {
entry:
  %scevgep = getelementptr %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 81, i32 0
  %scevgep496 = bitcast i32* %scevgep to i8*
  call void @llvm.memset.p0i8.i32(i8* nonnull align 4 dereferenceable(12) %scevgep496, i8 0, i32 12, i1 false)
  %scevgep497 = getelementptr %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 82, i32 0
  %scevgep497498 = bitcast i64* %scevgep497 to i8*
  call void @llvm.memset.p0i8.i32(i8* nonnull align 8 dereferenceable(24) %scevgep497498, i8 0, i32 24, i1 false)
  %i_aq_mode = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 15
  %0 = load i32, i32* %i_aq_mode, align 4, !tbaa !2
  %cmp2 = icmp eq i32 %0, 0
  br i1 %cmp2, label %if.end67, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %f_aq_strength = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 16
  %1 = load float, float* %f_aq_strength, align 8, !tbaa !36
  %cmp5 = fcmp fast oeq float %1, 0.000000e+00
  br i1 %cmp5, label %if.then13, label %if.else92

if.then13:                                        ; preds = %lor.lhs.false
  %tobool14 = icmp eq float* %quant_offsets, null
  br i1 %tobool14, label %if.else, label %for.cond16.preheader

for.cond16.preheader:                             ; preds = %if.then13
  %i_mb_count = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 2
  %2 = load i32, i32* %i_mb_count, align 8, !tbaa !37
  %cmp17471 = icmp sgt i32 %2, 0
  br i1 %cmp17471, label %for.body19.lr.ph, label %if.end67

for.body19.lr.ph:                                 ; preds = %for.cond16.preheader
  %f_qp_offset_aq = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 74
  %3 = load float*, float** %f_qp_offset_aq, align 8, !tbaa !38
  %f_qp_offset = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 73
  %4 = load float*, float** %f_qp_offset, align 4, !tbaa !42
  br label %for.body19

for.cond.cleanup18:                               ; preds = %for.body19
  %b_have_lowres = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 59, i32 18
  %5 = load i32, i32* %b_have_lowres, align 16, !tbaa !43
  %tobool26 = icmp ne i32 %5, 0
  %or.cond = and i1 %tobool26, %cmp17471
  br i1 %or.cond, label %for.body34.lr.ph, label %if.end67

for.body34.lr.ph:                                 ; preds = %for.cond.cleanup18
  %f_qp_offset35 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 73
  %6 = load float*, float** %f_qp_offset35, align 4, !tbaa !42
  %i_inv_qscale_factor = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 78
  %7 = load i16*, i16** %i_inv_qscale_factor, align 8, !tbaa !44
  br label %for.body34

for.body19:                                       ; preds = %for.body19.lr.ph, %for.body19
  %mb_xy.0472 = phi i32 [ 0, %for.body19.lr.ph ], [ %inc24, %for.body19 ]
  %arrayidx20 = getelementptr inbounds float, float* %quant_offsets, i32 %mb_xy.0472
  %8 = bitcast float* %arrayidx20 to i32*
  %9 = load i32, i32* %8, align 4, !tbaa !45
  %arrayidx21 = getelementptr inbounds float, float* %3, i32 %mb_xy.0472
  %10 = bitcast float* %arrayidx21 to i32*
  store i32 %9, i32* %10, align 4, !tbaa !45
  %arrayidx22 = getelementptr inbounds float, float* %4, i32 %mb_xy.0472
  %11 = bitcast float* %arrayidx22 to i32*
  store i32 %9, i32* %11, align 4, !tbaa !45
  %inc24 = add nuw nsw i32 %mb_xy.0472, 1
  %cmp17 = icmp slt i32 %inc24, %2
  br i1 %cmp17, label %for.body19, label %for.cond.cleanup18

for.body34:                                       ; preds = %x264_exp2fix8.exit, %for.body34.lr.ph
  %mb_xy28.0470 = phi i32 [ 0, %for.body34.lr.ph ], [ %inc39, %x264_exp2fix8.exit ]
  %arrayidx36 = getelementptr inbounds float, float* %6, i32 %mb_xy28.0470
  %12 = load float, float* %arrayidx36, align 4, !tbaa !45
  %mul.i = fmul fast float %12, 0x4025555560000000
  %13 = fsub fast float 5.125000e+02, %mul.i
  %conv.i = fptosi float %13 to i32
  %cmp.i = icmp slt i32 %conv.i, 0
  br i1 %cmp.i, label %x264_exp2fix8.exit, label %if.end.i

if.end.i:                                         ; preds = %for.body34
  %cmp2.i = icmp sgt i32 %conv.i, 1023
  br i1 %cmp2.i, label %x264_exp2fix8.exit, label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i
  %and.i = and i32 %conv.i, 63
  %arrayidx.i = getelementptr inbounds [64 x i8], [64 x i8]* @x264_exp2_lut, i32 0, i32 %and.i
  %14 = load i8, i8* %arrayidx.i, align 1, !tbaa !46
  %conv6.i = zext i8 %14 to i32
  %add7.i = or i32 %conv6.i, 256
  %shr13.i = lshr i32 %conv.i, 6
  %shl.i = shl i32 %add7.i, %shr13.i
  %shr8.i = ashr i32 %shl.i, 8
  br label %x264_exp2fix8.exit

x264_exp2fix8.exit:                               ; preds = %for.body34, %if.end.i, %if.end5.i
  %retval.0.i = phi i32 [ %shr8.i, %if.end5.i ], [ 0, %for.body34 ], [ 65535, %if.end.i ]
  %conv = trunc i32 %retval.0.i to i16
  %arrayidx37 = getelementptr inbounds i16, i16* %7, i32 %mb_xy28.0470
  store i16 %conv, i16* %arrayidx37, align 2, !tbaa !47
  %inc39 = add nuw nsw i32 %mb_xy28.0470, 1
  %exitcond = icmp eq i32 %inc39, %2
  br i1 %exitcond, label %if.end67, label %for.body34

if.else:                                          ; preds = %if.then13
  %f_qp_offset41 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 73
  %15 = bitcast float** %f_qp_offset41 to i8**
  %16 = load i8*, i8** %15, align 4, !tbaa !42
  %i_mb_count43 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 2
  %17 = load i32, i32* %i_mb_count43, align 8, !tbaa !37
  %mul = shl i32 %17, 2
  tail call void @llvm.memset.p0i8.i32(i8* align 4 %16, i8 0, i32 %mul, i1 false)
  %f_qp_offset_aq44 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 74
  %18 = bitcast float** %f_qp_offset_aq44 to i8**
  %19 = load i8*, i8** %18, align 8, !tbaa !38
  %20 = load i32, i32* %i_mb_count43, align 8, !tbaa !37
  %mul47 = shl i32 %20, 2
  tail call void @llvm.memset.p0i8.i32(i8* align 4 %19, i8 0, i32 %mul47, i1 false)
  %b_have_lowres49 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 59, i32 18
  %21 = load i32, i32* %b_have_lowres49, align 16, !tbaa !43
  %tobool50 = icmp eq i32 %21, 0
  br i1 %tobool50, label %if.end67, label %for.cond53.preheader

for.cond53.preheader:                             ; preds = %if.else
  %22 = load i32, i32* %i_mb_count43, align 8, !tbaa !37
  %cmp56467 = icmp sgt i32 %22, 0
  br i1 %cmp56467, label %for.body59.lr.ph, label %if.end67

for.body59.lr.ph:                                 ; preds = %for.cond53.preheader
  %i_inv_qscale_factor60 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 78
  %23 = load i16*, i16** %i_inv_qscale_factor60, align 8, !tbaa !44
  br label %for.body59

for.body59:                                       ; preds = %for.body59.lr.ph, %for.body59
  %mb_xy52.0468 = phi i32 [ 0, %for.body59.lr.ph ], [ %inc63, %for.body59 ]
  %arrayidx61 = getelementptr inbounds i16, i16* %23, i32 %mb_xy52.0468
  store i16 256, i16* %arrayidx61, align 2, !tbaa !47
  %inc63 = add nuw nsw i32 %mb_xy52.0468, 1
  %cmp56 = icmp slt i32 %inc63, %22
  br i1 %cmp56, label %for.body59, label %if.end67

if.end67:                                         ; preds = %x264_exp2fix8.exit, %for.body59, %for.cond16.preheader, %for.cond.cleanup18, %for.cond53.preheader, %entry, %if.else
  %i_weighted_pred = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 51, i32 3
  %24 = load i32, i32* %i_weighted_pred, align 4, !tbaa !49
  %tobool69 = icmp eq i32 %24, 0
  br i1 %tobool69, label %for.end284, label %for.cond71.preheader

for.cond71.preheader:                             ; preds = %if.end67
  %i_mb_height = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 1
  %25 = load i32, i32* %i_mb_height, align 4, !tbaa !50
  %cmp73464 = icmp sgt i32 %25, 0
  br i1 %cmp73464, label %for.cond77.preheader.lr.ph, label %land.end268.2

for.cond77.preheader.lr.ph:                       ; preds = %for.cond71.preheader
  %i_mb_width = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 0
  %.pre505 = load i32, i32* %i_mb_width, align 64, !tbaa !51
  br label %for.cond77.preheader

for.cond77.preheader:                             ; preds = %for.cond77.preheader.lr.ph, %for.cond.cleanup81
  %26 = phi i32 [ %25, %for.cond77.preheader.lr.ph ], [ %28, %for.cond.cleanup81 ]
  %27 = phi i32 [ %.pre505, %for.cond77.preheader.lr.ph ], [ %29, %for.cond.cleanup81 ]
  %mb_y.0465 = phi i32 [ 0, %for.cond77.preheader.lr.ph ], [ %inc88, %for.cond.cleanup81 ]
  %cmp79462 = icmp sgt i32 %27, 0
  br i1 %cmp79462, label %for.body82, label %for.cond.cleanup81

for.cond.cleanup81.loopexit:                      ; preds = %for.body82
  %.pre506 = load i32, i32* %i_mb_height, align 4, !tbaa !50
  br label %for.cond.cleanup81

for.cond.cleanup81:                               ; preds = %for.cond.cleanup81.loopexit, %for.cond77.preheader
  %28 = phi i32 [ %.pre506, %for.cond.cleanup81.loopexit ], [ %26, %for.cond77.preheader ]
  %29 = phi i32 [ %30, %for.cond.cleanup81.loopexit ], [ %27, %for.cond77.preheader ]
  %inc88 = add nuw nsw i32 %mb_y.0465, 1
  %cmp73 = icmp slt i32 %inc88, %28
  br i1 %cmp73, label %for.cond77.preheader, label %land.end268.2

for.body82:                                       ; preds = %for.cond77.preheader, %for.body82
  %mb_x.0463 = phi i32 [ %inc85, %for.body82 ], [ 0, %for.cond77.preheader ]
  %call83 = tail call fastcc i32 @ac_energy_mb(%struct.x264_t* nonnull %h, i32 %mb_x.0463, i32 %mb_y.0465, %struct.x264_frame* %frame)
  %inc85 = add nuw nsw i32 %mb_x.0463, 1
  %30 = load i32, i32* %i_mb_width, align 64, !tbaa !51
  %cmp79 = icmp slt i32 %inc85, %30
  br i1 %cmp79, label %for.body82, label %for.cond.cleanup81.loopexit

if.else92:                                        ; preds = %lor.lhs.false
  %31 = and i32 %0, -2
  %switch = icmp eq i32 %31, 2
  br i1 %switch, label %for.cond106.preheader, label %if.else155

for.cond106.preheader:                            ; preds = %if.else92
  %i_mb_height108 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 1
  %32 = load i32, i32* %i_mb_height108, align 4, !tbaa !50
  %cmp109484 = icmp sgt i32 %32, 0
  br i1 %cmp109484, label %for.cond114.preheader.lr.ph, label %for.cond.cleanup111

for.cond114.preheader.lr.ph:                      ; preds = %for.cond106.preheader
  %i_mb_width116 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 0
  %f_qp_offset124 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 73
  %i_mb_stride = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 5
  %.pre = load i32, i32* %i_mb_width116, align 64, !tbaa !51
  br label %for.cond114.preheader

for.cond114.preheader:                            ; preds = %for.cond114.preheader.lr.ph, %for.cond.cleanup119
  %33 = phi i32 [ %32, %for.cond114.preheader.lr.ph ], [ %40, %for.cond.cleanup119 ]
  %34 = phi i32 [ %.pre, %for.cond114.preheader.lr.ph ], [ %41, %for.cond.cleanup119 ]
  %mb_y105.0487 = phi i32 [ 0, %for.cond114.preheader.lr.ph ], [ %inc136, %for.cond.cleanup119 ]
  %avg_adj_pow2.0486 = phi float [ 0.000000e+00, %for.cond114.preheader.lr.ph ], [ %avg_adj_pow2.1.lcssa, %for.cond.cleanup119 ]
  %avg_adj.0485 = phi float [ 0.000000e+00, %for.cond114.preheader.lr.ph ], [ %avg_adj.1.lcssa, %for.cond.cleanup119 ]
  %cmp117478 = icmp sgt i32 %34, 0
  br i1 %cmp117478, label %for.body120, label %for.cond.cleanup119

for.cond.cleanup111.loopexit:                     ; preds = %for.cond.cleanup119
  %.pre500 = load float, float* %f_aq_strength, align 8, !tbaa !36
  br label %for.cond.cleanup111

for.cond.cleanup111:                              ; preds = %for.cond.cleanup111.loopexit, %for.cond106.preheader
  %35 = phi i32 [ %32, %for.cond106.preheader ], [ %40, %for.cond.cleanup111.loopexit ]
  %36 = phi float [ %1, %for.cond106.preheader ], [ %.pre500, %for.cond.cleanup111.loopexit ]
  %avg_adj.0.lcssa = phi float [ 0.000000e+00, %for.cond106.preheader ], [ %avg_adj.1.lcssa, %for.cond.cleanup111.loopexit ]
  %avg_adj_pow2.0.lcssa = phi float [ 0.000000e+00, %for.cond106.preheader ], [ %avg_adj_pow2.1.lcssa, %for.cond.cleanup111.loopexit ]
  %i_mb_count139 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 2
  %37 = load i32, i32* %i_mb_count139, align 8, !tbaa !37
  %conv140 = sitofp i32 %37 to float
  %div = fdiv fast float %avg_adj.0.lcssa, %conv140
  %mul148 = fmul fast float %div, %36
  %38 = fmul fast float %avg_adj_pow2.0.lcssa, 5.000000e-01
  %39 = fdiv fast float %38, %conv140
  %mul149 = fadd fast float %39, -7.000000e+00
  %div150 = fdiv fast float %mul149, %div
  %sub151 = fsub fast float %div, %div150
  br label %if.end160

for.cond.cleanup119.loopexit:                     ; preds = %for.body120
  %.pre499 = load i32, i32* %i_mb_height108, align 4, !tbaa !50
  br label %for.cond.cleanup119

for.cond.cleanup119:                              ; preds = %for.cond.cleanup119.loopexit, %for.cond114.preheader
  %40 = phi i32 [ %33, %for.cond114.preheader ], [ %.pre499, %for.cond.cleanup119.loopexit ]
  %41 = phi i32 [ %34, %for.cond114.preheader ], [ %45, %for.cond.cleanup119.loopexit ]
  %avg_adj.1.lcssa = phi float [ %avg_adj.0485, %for.cond114.preheader ], [ %add129, %for.cond.cleanup119.loopexit ]
  %avg_adj_pow2.1.lcssa = phi float [ %avg_adj_pow2.0486, %for.cond114.preheader ], [ %add131, %for.cond.cleanup119.loopexit ]
  %inc136 = add nuw nsw i32 %mb_y105.0487, 1
  %cmp109 = icmp slt i32 %inc136, %40
  br i1 %cmp109, label %for.cond114.preheader, label %for.cond.cleanup111.loopexit

for.body120:                                      ; preds = %for.cond114.preheader, %for.body120
  %mb_x113.0481 = phi i32 [ %inc133, %for.body120 ], [ 0, %for.cond114.preheader ]
  %avg_adj_pow2.1480 = phi float [ %add131, %for.body120 ], [ %avg_adj_pow2.0486, %for.cond114.preheader ]
  %avg_adj.1479 = phi float [ %add129, %for.body120 ], [ %avg_adj.0485, %for.cond114.preheader ]
  %call121 = tail call fastcc i32 @ac_energy_mb(%struct.x264_t* nonnull %h, i32 %mb_x113.0481, i32 %mb_y105.0487, %struct.x264_frame* %frame)
  %conv122 = uitofp i32 %call121 to float
  %add = fadd fast float %conv122, 1.000000e+00
  %42 = tail call fast float @llvm.pow.f32(float %add, float 1.250000e-01)
  %43 = load float*, float** %f_qp_offset124, align 4, !tbaa !42
  %44 = load i32, i32* %i_mb_stride, align 4, !tbaa !52
  %mul126 = mul nsw i32 %44, %mb_y105.0487
  %add127 = add nsw i32 %mul126, %mb_x113.0481
  %arrayidx128 = getelementptr inbounds float, float* %43, i32 %add127
  store float %42, float* %arrayidx128, align 4, !tbaa !45
  %add129 = fadd fast float %42, %avg_adj.1479
  %mul130 = fmul fast float %42, %42
  %add131 = fadd fast float %mul130, %avg_adj_pow2.1480
  %inc133 = add nuw nsw i32 %mb_x113.0481, 1
  %45 = load i32, i32* %i_mb_width116, align 64, !tbaa !51
  %cmp117 = icmp slt i32 %inc133, %45
  br i1 %cmp117, label %for.body120, label %for.cond.cleanup119.loopexit

if.else155:                                       ; preds = %if.else92
  %mul159 = fmul fast float %1, 0x3FF0A29C80000000
  %i_mb_height164.phi.trans.insert = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 1
  %.pre501 = load i32, i32* %i_mb_height164.phi.trans.insert, align 4, !tbaa !50
  br label %if.end160

if.end160:                                        ; preds = %if.else155, %for.cond.cleanup111
  %46 = phi i32 [ %35, %for.cond.cleanup111 ], [ %.pre501, %if.else155 ]
  %bias_strength.0 = phi float [ %36, %for.cond.cleanup111 ], [ 0.000000e+00, %if.else155 ]
  %avg_adj.2 = phi float [ %sub151, %for.cond.cleanup111 ], [ 0.000000e+00, %if.else155 ]
  %strength.0 = phi float [ %mul148, %for.cond.cleanup111 ], [ %mul159, %if.else155 ]
  %i_mb_height164 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 1
  %cmp165475 = icmp sgt i32 %46, 0
  br i1 %cmp165475, label %for.cond170.preheader.lr.ph, label %land.end268.2

for.cond170.preheader.lr.ph:                      ; preds = %if.end160
  %i_mb_width172 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 0
  %i_mb_stride180 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 5
  %f_qp_offset205 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 73
  %tobool219 = icmp eq float* %quant_offsets, null
  %f_qp_offset_aq224 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 74
  %b_have_lowres229 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 59, i32 18
  %i_inv_qscale_factor234 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 78
  %.pre502 = load i32, i32* %i_mb_width172, align 64, !tbaa !51
  br label %for.cond170.preheader

for.cond170.preheader:                            ; preds = %for.cond170.preheader.lr.ph, %for.cond.cleanup175
  %47 = phi i32 [ %.pre502, %for.cond170.preheader.lr.ph ], [ %64, %for.cond.cleanup175 ]
  %mb_y161.0476 = phi i32 [ 0, %for.cond170.preheader.lr.ph ], [ %inc241, %for.cond.cleanup175 ]
  %cmp173473 = icmp sgt i32 %47, 0
  br i1 %cmp173473, label %for.body176.lr.ph, label %for.cond.cleanup175

for.body176.lr.ph:                                ; preds = %for.cond170.preheader
  br i1 %tobool219, label %for.body176.us, label %for.body176

for.body176.us:                                   ; preds = %for.body176.lr.ph, %if.end236.us
  %mb_x169.0474.us = phi i32 [ %inc238.us, %if.end236.us ], [ 0, %for.body176.lr.ph ]
  %48 = load i32, i32* %i_mb_stride180, align 4, !tbaa !52
  %mul181.us = mul nsw i32 %48, %mb_y161.0476
  %add182.us = add nsw i32 %mul181.us, %mb_x169.0474.us
  %49 = load i32, i32* %i_aq_mode, align 4, !tbaa !2
  switch i32 %49, label %if.else209.us [
    i32 3, label %if.then188.us
    i32 2, label %if.then204.us
  ]

if.then204.us:                                    ; preds = %for.body176.us
  %50 = load float*, float** %f_qp_offset205, align 4, !tbaa !42
  %arrayidx206.us = getelementptr inbounds float, float* %50, i32 %add182.us
  %51 = load float, float* %arrayidx206.us, align 4, !tbaa !45
  %sub207.us = fsub fast float %51, %avg_adj.2
  %mul208.us = fmul fast float %sub207.us, %strength.0
  br label %if.end223.us

if.then188.us:                                    ; preds = %for.body176.us
  %52 = load float*, float** %f_qp_offset205, align 4, !tbaa !42
  %arrayidx190.us = getelementptr inbounds float, float* %52, i32 %add182.us
  %53 = load float, float* %arrayidx190.us, align 4, !tbaa !45
  %sub191.us = fsub fast float %53, %avg_adj.2
  %mul192.us = fmul fast float %sub191.us, %strength.0
  %mul193.us = fmul fast float %53, %53
  %div194.us = fdiv fast float 1.400000e+01, %mul193.us
  %sub195.us = fsub fast float 1.000000e+00, %div194.us
  %mul196.us = fmul fast float %sub195.us, %bias_strength.0
  %add197.us = fadd fast float %mul196.us, %mul192.us
  br label %if.end223.us

if.else209.us:                                    ; preds = %for.body176.us
  %call211.us = tail call fastcc i32 @ac_energy_mb(%struct.x264_t* nonnull %h, i32 %mb_x169.0474.us, i32 %mb_y161.0476, %struct.x264_frame* %frame)
  %cmp212.us = icmp ugt i32 %call211.us, 1
  %cond.us = select i1 %cmp212.us, i32 %call211.us, i32 1
  %54 = tail call i32 @llvm.ctlz.i32(i32 %cond.us, i1 true) #13, !range !53
  %shl.i448.us = shl i32 %cond.us, %54
  %shr.i.us = lshr i32 %shl.i448.us, 24
  %and.i449.us = and i32 %shr.i.us, 127
  %arrayidx.i450.us = getelementptr inbounds [128 x float], [128 x float]* @x264_log2_lut, i32 0, i32 %and.i449.us
  %55 = load float, float* %arrayidx.i450.us, align 4, !tbaa !45
  %arrayidx1.i.us = getelementptr inbounds [32 x float], [32 x float]* @x264_log2_lz_lut, i32 0, i32 %54
  %56 = load float, float* %arrayidx1.i.us, align 4, !tbaa !45
  %add.i.us = fadd fast float %55, 0xC02CDA9FC0000000
  %sub215.us = fadd fast float %add.i.us, %56
  %mul216.us = fmul fast float %sub215.us, %strength.0
  %.pre504 = load float*, float** %f_qp_offset205, align 4, !tbaa !42
  br label %if.end223.us

if.end223.us:                                     ; preds = %if.then204.us, %if.then188.us, %if.else209.us
  %57 = phi float* [ %52, %if.then188.us ], [ %50, %if.then204.us ], [ %.pre504, %if.else209.us ]
  %qp_adj177.0.us = phi float [ %add197.us, %if.then188.us ], [ %mul208.us, %if.then204.us ], [ %mul216.us, %if.else209.us ]
  %58 = load float*, float** %f_qp_offset_aq224, align 8, !tbaa !38
  %arrayidx225.us = getelementptr inbounds float, float* %58, i32 %add182.us
  store float %qp_adj177.0.us, float* %arrayidx225.us, align 4, !tbaa !45
  %arrayidx227.us = getelementptr inbounds float, float* %57, i32 %add182.us
  store float %qp_adj177.0.us, float* %arrayidx227.us, align 4, !tbaa !45
  %59 = load i32, i32* %b_have_lowres229, align 16, !tbaa !43
  %tobool230.us = icmp eq i32 %59, 0
  br i1 %tobool230.us, label %if.end236.us, label %if.then231.us

if.then231.us:                                    ; preds = %if.end223.us
  %mul.i433.us = fmul fast float %qp_adj177.0.us, 0x4025555560000000
  %60 = fsub fast float 5.125000e+02, %mul.i433.us
  %conv.i434.us = fptosi float %60 to i32
  %cmp.i435.us = icmp slt i32 %conv.i434.us, 0
  br i1 %cmp.i435.us, label %x264_exp2fix8.exit447.us, label %if.end.i437.us

if.end.i437.us:                                   ; preds = %if.then231.us
  %cmp2.i436.us = icmp sgt i32 %conv.i434.us, 1023
  br i1 %cmp2.i436.us, label %x264_exp2fix8.exit447.us, label %if.end5.i445.us

if.end5.i445.us:                                  ; preds = %if.end.i437.us
  %and.i438.us = and i32 %conv.i434.us, 63
  %arrayidx.i439.us = getelementptr inbounds [64 x i8], [64 x i8]* @x264_exp2_lut, i32 0, i32 %and.i438.us
  %61 = load i8, i8* %arrayidx.i439.us, align 1, !tbaa !46
  %conv6.i440.us = zext i8 %61 to i32
  %add7.i441.us = or i32 %conv6.i440.us, 256
  %shr13.i442.us = lshr i32 %conv.i434.us, 6
  %shl.i443.us = shl i32 %add7.i441.us, %shr13.i442.us
  %shr8.i444.us = ashr i32 %shl.i443.us, 8
  br label %x264_exp2fix8.exit447.us

x264_exp2fix8.exit447.us:                         ; preds = %if.end5.i445.us, %if.end.i437.us, %if.then231.us
  %retval.0.i446.us = phi i32 [ %shr8.i444.us, %if.end5.i445.us ], [ 0, %if.then231.us ], [ 65535, %if.end.i437.us ]
  %conv233.us = trunc i32 %retval.0.i446.us to i16
  %62 = load i16*, i16** %i_inv_qscale_factor234, align 8, !tbaa !44
  %arrayidx235.us = getelementptr inbounds i16, i16* %62, i32 %add182.us
  store i16 %conv233.us, i16* %arrayidx235.us, align 2, !tbaa !47
  br label %if.end236.us

if.end236.us:                                     ; preds = %x264_exp2fix8.exit447.us, %if.end223.us
  %inc238.us = add nuw nsw i32 %mb_x169.0474.us, 1
  %63 = load i32, i32* %i_mb_width172, align 64, !tbaa !51
  %cmp173.us = icmp slt i32 %inc238.us, %63
  br i1 %cmp173.us, label %for.body176.us, label %for.cond.cleanup175

for.cond.cleanup175:                              ; preds = %if.end236, %if.end236.us, %for.cond170.preheader
  %64 = phi i32 [ %47, %for.cond170.preheader ], [ %63, %if.end236.us ], [ %82, %if.end236 ]
  %inc241 = add nuw nsw i32 %mb_y161.0476, 1
  %65 = load i32, i32* %i_mb_height164, align 4, !tbaa !50
  %cmp165 = icmp slt i32 %inc241, %65
  br i1 %cmp165, label %for.cond170.preheader, label %land.end268.2

for.body176:                                      ; preds = %for.body176.lr.ph, %if.end236
  %mb_x169.0474 = phi i32 [ %inc238, %if.end236 ], [ 0, %for.body176.lr.ph ]
  %66 = load i32, i32* %i_mb_stride180, align 4, !tbaa !52
  %mul181 = mul nsw i32 %66, %mb_y161.0476
  %add182 = add nsw i32 %mul181, %mb_x169.0474
  %67 = load i32, i32* %i_aq_mode, align 4, !tbaa !2
  switch i32 %67, label %if.else209 [
    i32 3, label %if.then188
    i32 2, label %if.then204
  ]

if.then188:                                       ; preds = %for.body176
  %68 = load float*, float** %f_qp_offset205, align 4, !tbaa !42
  %arrayidx190 = getelementptr inbounds float, float* %68, i32 %add182
  %69 = load float, float* %arrayidx190, align 4, !tbaa !45
  %sub191 = fsub fast float %69, %avg_adj.2
  %mul192 = fmul fast float %sub191, %strength.0
  %mul193 = fmul fast float %69, %69
  %div194 = fdiv fast float 1.400000e+01, %mul193
  %sub195 = fsub fast float 1.000000e+00, %div194
  %mul196 = fmul fast float %sub195, %bias_strength.0
  %add197 = fadd fast float %mul196, %mul192
  br label %if.then220

if.then204:                                       ; preds = %for.body176
  %70 = load float*, float** %f_qp_offset205, align 4, !tbaa !42
  %arrayidx206 = getelementptr inbounds float, float* %70, i32 %add182
  %71 = load float, float* %arrayidx206, align 4, !tbaa !45
  %sub207 = fsub fast float %71, %avg_adj.2
  %mul208 = fmul fast float %sub207, %strength.0
  br label %if.then220

if.else209:                                       ; preds = %for.body176
  %call211 = tail call fastcc i32 @ac_energy_mb(%struct.x264_t* nonnull %h, i32 %mb_x169.0474, i32 %mb_y161.0476, %struct.x264_frame* %frame)
  %cmp212 = icmp ugt i32 %call211, 1
  %cond = select i1 %cmp212, i32 %call211, i32 1
  %72 = tail call i32 @llvm.ctlz.i32(i32 %cond, i1 true) #13, !range !53
  %shl.i448 = shl i32 %cond, %72
  %shr.i = lshr i32 %shl.i448, 24
  %and.i449 = and i32 %shr.i, 127
  %arrayidx.i450 = getelementptr inbounds [128 x float], [128 x float]* @x264_log2_lut, i32 0, i32 %and.i449
  %73 = load float, float* %arrayidx.i450, align 4, !tbaa !45
  %arrayidx1.i = getelementptr inbounds [32 x float], [32 x float]* @x264_log2_lz_lut, i32 0, i32 %72
  %74 = load float, float* %arrayidx1.i, align 4, !tbaa !45
  %add.i = fadd fast float %73, 0xC02CDA9FC0000000
  %sub215 = fadd fast float %add.i, %74
  %mul216 = fmul fast float %sub215, %strength.0
  %.pre503 = load float*, float** %f_qp_offset205, align 4, !tbaa !42
  br label %if.then220

if.then220:                                       ; preds = %if.then188, %if.else209, %if.then204
  %75 = phi float* [ %68, %if.then188 ], [ %70, %if.then204 ], [ %.pre503, %if.else209 ]
  %qp_adj177.0 = phi float [ %add197, %if.then188 ], [ %mul208, %if.then204 ], [ %mul216, %if.else209 ]
  %arrayidx221 = getelementptr inbounds float, float* %quant_offsets, i32 %add182
  %76 = load float, float* %arrayidx221, align 4, !tbaa !45
  %add222 = fadd fast float %76, %qp_adj177.0
  %77 = load float*, float** %f_qp_offset_aq224, align 8, !tbaa !38
  %arrayidx225 = getelementptr inbounds float, float* %77, i32 %add182
  store float %add222, float* %arrayidx225, align 4, !tbaa !45
  %arrayidx227 = getelementptr inbounds float, float* %75, i32 %add182
  store float %add222, float* %arrayidx227, align 4, !tbaa !45
  %78 = load i32, i32* %b_have_lowres229, align 16, !tbaa !43
  %tobool230 = icmp eq i32 %78, 0
  br i1 %tobool230, label %if.end236, label %if.then231

if.then231:                                       ; preds = %if.then220
  %mul.i433 = fmul fast float %add222, 0x4025555560000000
  %79 = fsub fast float 5.125000e+02, %mul.i433
  %conv.i434 = fptosi float %79 to i32
  %cmp.i435 = icmp slt i32 %conv.i434, 0
  br i1 %cmp.i435, label %x264_exp2fix8.exit447, label %if.end.i437

if.end.i437:                                      ; preds = %if.then231
  %cmp2.i436 = icmp sgt i32 %conv.i434, 1023
  br i1 %cmp2.i436, label %x264_exp2fix8.exit447, label %if.end5.i445

if.end5.i445:                                     ; preds = %if.end.i437
  %and.i438 = and i32 %conv.i434, 63
  %arrayidx.i439 = getelementptr inbounds [64 x i8], [64 x i8]* @x264_exp2_lut, i32 0, i32 %and.i438
  %80 = load i8, i8* %arrayidx.i439, align 1, !tbaa !46
  %conv6.i440 = zext i8 %80 to i32
  %add7.i441 = or i32 %conv6.i440, 256
  %shr13.i442 = lshr i32 %conv.i434, 6
  %shl.i443 = shl i32 %add7.i441, %shr13.i442
  %shr8.i444 = ashr i32 %shl.i443, 8
  br label %x264_exp2fix8.exit447

x264_exp2fix8.exit447:                            ; preds = %if.then231, %if.end.i437, %if.end5.i445
  %retval.0.i446 = phi i32 [ %shr8.i444, %if.end5.i445 ], [ 0, %if.then231 ], [ 65535, %if.end.i437 ]
  %conv233 = trunc i32 %retval.0.i446 to i16
  %81 = load i16*, i16** %i_inv_qscale_factor234, align 8, !tbaa !44
  %arrayidx235 = getelementptr inbounds i16, i16* %81, i32 %add182
  store i16 %conv233, i16* %arrayidx235, align 2, !tbaa !47
  br label %if.end236

if.end236:                                        ; preds = %if.then220, %x264_exp2fix8.exit447
  %inc238 = add nuw nsw i32 %mb_x169.0474, 1
  %82 = load i32, i32* %i_mb_width172, align 64, !tbaa !51
  %cmp173 = icmp slt i32 %inc238, %82
  br i1 %cmp173, label %for.body176, label %for.cond.cleanup175

for.end284:                                       ; preds = %land.end268.2, %if.end67
  ret void

land.end268.2:                                    ; preds = %for.cond.cleanup175, %for.cond.cleanup81, %for.cond71.preheader, %if.end160
  %mul263457.in = phi i32 [ %46, %if.end160 ], [ %25, %for.cond71.preheader ], [ %28, %for.cond.cleanup81 ], [ %65, %for.cond.cleanup175 ]
  %i_mb_width256 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 0
  %83 = load i32, i32* %i_mb_width256, align 64, !tbaa !51
  %mul257 = shl nsw i32 %83, 4
  %chroma_h_shift = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 3
  %chroma_v_shift = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 4
  %mul263457 = shl nsw i32 %mul263457.in, 4
  %84 = load i64, i64* %scevgep497, align 8, !tbaa !54
  %85 = load i32, i32* %scevgep, align 4, !tbaa !55
  %conv254 = zext i32 %85 to i64
  %mul271 = mul nuw i64 %conv254, %conv254
  %mul272 = mul nsw i32 %mul263457, %mul257
  %div273 = sdiv i32 %mul272, 2
  %conv274 = sext i32 %div273 to i64
  %add275 = add i64 %mul271, %conv274
  %conv277 = sext i32 %mul272 to i64
  %div278 = udiv i64 %add275, %conv277
  %sub279 = sub i64 %84, %div278
  store i64 %sub279, i64* %scevgep497, align 8, !tbaa !54
  %arrayidx251.1 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 82, i32 1
  %86 = load i64, i64* %arrayidx251.1, align 8, !tbaa !54
  %arrayidx253.1 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 81, i32 1
  %87 = load i32, i32* %arrayidx253.1, align 4, !tbaa !55
  %conv254.1 = zext i32 %87 to i64
  %88 = load i32, i32* %chroma_h_shift, align 4, !tbaa !56
  %tobool260.1 = icmp ne i32 %88, 0
  %land.ext451.1 = zext i1 %tobool260.1 to i32
  %shr452.1 = ashr i32 %mul257, %land.ext451.1
  %89 = load i32, i32* %chroma_v_shift, align 16, !tbaa !57
  %tobool267.1 = icmp ne i32 %89, 0
  %phitmp = zext i1 %tobool267.1 to i32
  %shr270.1 = ashr i32 %mul263457, %phitmp
  %mul271.1 = mul nuw i64 %conv254.1, %conv254.1
  %mul272.1 = mul nsw i32 %shr270.1, %shr452.1
  %div273.1 = sdiv i32 %mul272.1, 2
  %conv274.1 = sext i32 %div273.1 to i64
  %add275.1 = add i64 %mul271.1, %conv274.1
  %conv277.1 = sext i32 %mul272.1 to i64
  %div278.1 = udiv i64 %add275.1, %conv277.1
  %sub279.1 = sub i64 %86, %div278.1
  store i64 %sub279.1, i64* %arrayidx251.1, align 8, !tbaa !54
  %arrayidx251.2 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 82, i32 2
  %90 = load i64, i64* %arrayidx251.2, align 8, !tbaa !54
  %arrayidx253.2 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 81, i32 2
  %91 = load i32, i32* %arrayidx253.2, align 4, !tbaa !55
  %conv254.2 = zext i32 %91 to i64
  %92 = load i32, i32* %chroma_h_shift, align 4, !tbaa !56
  %tobool260.2 = icmp ne i32 %92, 0
  %land.ext451.2 = zext i1 %tobool260.2 to i32
  %shr452.2 = ashr i32 %mul257, %land.ext451.2
  %93 = load i32, i32* %chroma_v_shift, align 16, !tbaa !57
  %tobool267.2 = icmp ne i32 %93, 0
  %phitmp508 = zext i1 %tobool267.2 to i32
  %shr270.2 = ashr i32 %mul263457, %phitmp508
  %mul271.2 = mul nuw i64 %conv254.2, %conv254.2
  %mul272.2 = mul nsw i32 %shr270.2, %shr452.2
  %div273.2 = sdiv i32 %mul272.2, 2
  %conv274.2 = sext i32 %div273.2 to i64
  %add275.2 = add i64 %mul271.2, %conv274.2
  %conv277.2 = sext i32 %mul272.2 to i64
  %div278.2 = udiv i64 %add275.2, %conv277.2
  %sub279.2 = sub i64 %90, %div278.2
  store i64 %sub279.2, i64* %arrayidx251.2, align 8, !tbaa !54
  br label %for.end284
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #1

; Function Attrs: noinline nounwind
define internal fastcc i32 @ac_energy_mb(%struct.x264_t* %h, i32 %mb_x, i32 %mb_y, %struct.x264_frame* %frame) unnamed_addr #2 {
entry:
  %pix.i = alloca [256 x i8], align 64
  tail call void @x264_8_prefetch_fenc(%struct.x264_t* %h, %struct.x264_frame* %frame, i32 %mb_x, i32 %mb_y) #13
  %b_adaptive_mbaff = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 24
  %0 = load i32, i32* %b_adaptive_mbaff, align 8, !tbaa !58
  %tobool = icmp eq i32 %0, 0
  %arrayidx.i243 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 31, i32 0
  %1 = load i32, i32* %arrayidx.i243, align 4, !tbaa !55
  %mul.i244 = shl nsw i32 %mb_x, 4
  br i1 %tobool, label %if.else21, label %if.then

if.then:                                          ; preds = %entry
  %and.i = and i32 %mb_y, -2
  %mul4.i = shl i32 %and.i, 4
  %and5.i = and i32 %mb_y, 1
  %reass.add.i = or i32 %mul4.i, %and5.i
  %reass.mul.i = mul i32 %1, %reass.add.i
  %cond14.i = add i32 %reass.mul.i, %mul.i244
  %shl.i = shl i32 %1, 1
  %arrayidx33.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 92, i32 14, i32 0
  %2 = load i64 (i8*, i32)*, i64 (i8*, i32)** %arrayidx33.i, align 8, !tbaa !59
  %arrayidx35.i = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 37, i32 0
  %3 = load i8*, i8** %arrayidx35.i, align 4, !tbaa !59
  %add.ptr36.i = getelementptr inbounds i8, i8* %3, i32 %cond14.i
  %call37.i = tail call i64 %2(i8* %add.ptr36.i, i32 %shl.i) #13
  %shr.i73.i = lshr i64 %call37.i, 32
  %conv.i75.i = trunc i64 %call37.i to i32
  %arrayidx.i76.i = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 81, i32 0
  %4 = load i32, i32* %arrayidx.i76.i, align 4, !tbaa !55
  %add.i77.i = add i32 %4, %conv.i75.i
  store i32 %add.i77.i, i32* %arrayidx.i76.i, align 4, !tbaa !55
  %arrayidx3.i78.i = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 82, i32 0
  %5 = load i64, i64* %arrayidx3.i78.i, align 8, !tbaa !54
  %add4.i79.i = add i64 %5, %shr.i73.i
  store i64 %add4.i79.i, i64* %arrayidx3.i78.i, align 8, !tbaa !54
  %conv6.i81.i = and i64 %call37.i, 4294967295
  %mul.i82.i = mul nuw i64 %conv6.i81.i, %conv6.i81.i
  %shr8.i83.i = lshr i64 %mul.i82.i, 8
  %sub.i84.i = sub nsw i64 %shr.i73.i, %shr8.i83.i
  %conv9.i85.i = trunc i64 %sub.i84.i to i32
  %6 = load i32, i32* %arrayidx.i243, align 4, !tbaa !55
  %mul10.i = shl i32 %mb_y, 4
  %mul11.i = mul i32 %mul10.i, %6
  %cond14.i111 = add i32 %mul11.i, %mul.i244
  %7 = load i64 (i8*, i32)*, i64 (i8*, i32)** %arrayidx33.i, align 8, !tbaa !59
  %8 = load i8*, i8** %arrayidx35.i, align 4, !tbaa !59
  %add.ptr36.i114 = getelementptr inbounds i8, i8* %8, i32 %cond14.i111
  %call37.i115 = tail call i64 %7(i8* %add.ptr36.i114, i32 %6) #13
  %shr.i73.i116 = lshr i64 %call37.i115, 32
  %conv6.i81.i117 = and i64 %call37.i115, 4294967295
  %mul.i82.i118 = mul nuw i64 %conv6.i81.i117, %conv6.i81.i117
  %shr8.i83.i119 = lshr i64 %mul.i82.i118, 8
  %sub.i84.i120 = sub nsw i64 %shr.i73.i116, %shr8.i83.i119
  %conv9.i85.i121 = trunc i64 %sub.i84.i120 to i32
  %i_chroma_format_idc = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 22
  %9 = load i32, i32* %i_chroma_format_idc, align 8, !tbaa !60
  switch i32 %9, label %if.then14 [
    i32 3, label %if.then2
    i32 0, label %if.end19
  ]

if.then2:                                         ; preds = %if.then
  %arrayidx.i122 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 31, i32 1
  %10 = load i32, i32* %arrayidx.i122, align 4, !tbaa !55
  %reass.mul.i128 = mul i32 %10, %reass.add.i
  %cond14.i129 = add i32 %reass.mul.i128, %mul.i244
  %shl.i130 = shl i32 %10, 1
  %11 = load i64 (i8*, i32)*, i64 (i8*, i32)** %arrayidx33.i, align 8, !tbaa !59
  %arrayidx35.i132 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 37, i32 1
  %12 = load i8*, i8** %arrayidx35.i132, align 4, !tbaa !59
  %add.ptr36.i133 = getelementptr inbounds i8, i8* %12, i32 %cond14.i129
  %call37.i134 = tail call i64 %11(i8* %add.ptr36.i133, i32 %shl.i130) #13
  %shr.i73.i135 = lshr i64 %call37.i134, 32
  %conv.i75.i136 = trunc i64 %call37.i134 to i32
  %arrayidx.i76.i137 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 81, i32 1
  %13 = load i32, i32* %arrayidx.i76.i137, align 4, !tbaa !55
  %add.i77.i138 = add i32 %13, %conv.i75.i136
  store i32 %add.i77.i138, i32* %arrayidx.i76.i137, align 4, !tbaa !55
  %arrayidx3.i78.i139 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 82, i32 1
  %14 = load i64, i64* %arrayidx3.i78.i139, align 8, !tbaa !54
  %add4.i79.i140 = add i64 %14, %shr.i73.i135
  store i64 %add4.i79.i140, i64* %arrayidx3.i78.i139, align 8, !tbaa !54
  %conv6.i81.i141 = and i64 %call37.i134, 4294967295
  %mul.i82.i142 = mul nuw i64 %conv6.i81.i141, %conv6.i81.i141
  %shr8.i83.i143 = lshr i64 %mul.i82.i142, 8
  %sub.i84.i144 = sub nsw i64 %shr.i73.i135, %shr8.i83.i143
  %conv9.i85.i145 = trunc i64 %sub.i84.i144 to i32
  %add = add i32 %conv9.i85.i145, %conv9.i85.i
  %15 = load i32, i32* %arrayidx.i122, align 4, !tbaa !55
  %mul11.i149 = mul i32 %mul10.i, %15
  %cond14.i150 = add i32 %mul11.i149, %mul.i244
  %16 = load i64 (i8*, i32)*, i64 (i8*, i32)** %arrayidx33.i, align 8, !tbaa !59
  %17 = load i8*, i8** %arrayidx35.i132, align 4, !tbaa !59
  %add.ptr36.i153 = getelementptr inbounds i8, i8* %17, i32 %cond14.i150
  %call37.i154 = tail call i64 %16(i8* %add.ptr36.i153, i32 %15) #13
  %shr.i73.i155 = lshr i64 %call37.i154, 32
  %conv6.i81.i156 = and i64 %call37.i154, 4294967295
  %mul.i82.i157 = mul nuw i64 %conv6.i81.i156, %conv6.i81.i156
  %shr8.i83.i158 = lshr i64 %mul.i82.i157, 8
  %sub.i84.i159 = sub nsw i64 %shr.i73.i155, %shr8.i83.i158
  %conv9.i85.i160 = trunc i64 %sub.i84.i159 to i32
  %add5 = add i32 %conv9.i85.i160, %conv9.i85.i121
  %arrayidx.i161 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 31, i32 2
  %18 = load i32, i32* %arrayidx.i161, align 4, !tbaa !55
  %reass.mul.i167 = mul i32 %18, %reass.add.i
  %cond14.i168 = add i32 %reass.mul.i167, %mul.i244
  %shl.i169 = shl i32 %18, 1
  %19 = load i64 (i8*, i32)*, i64 (i8*, i32)** %arrayidx33.i, align 8, !tbaa !59
  %arrayidx35.i171 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 37, i32 2
  %20 = load i8*, i8** %arrayidx35.i171, align 4, !tbaa !59
  %add.ptr36.i172 = getelementptr inbounds i8, i8* %20, i32 %cond14.i168
  %call37.i173 = tail call i64 %19(i8* %add.ptr36.i172, i32 %shl.i169) #13
  %shr.i73.i174 = lshr i64 %call37.i173, 32
  %conv.i75.i175 = trunc i64 %call37.i173 to i32
  %arrayidx.i76.i176 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 81, i32 2
  %21 = load i32, i32* %arrayidx.i76.i176, align 4, !tbaa !55
  %add.i77.i177 = add i32 %21, %conv.i75.i175
  store i32 %add.i77.i177, i32* %arrayidx.i76.i176, align 4, !tbaa !55
  %arrayidx3.i78.i178 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 82, i32 2
  %22 = load i64, i64* %arrayidx3.i78.i178, align 8, !tbaa !54
  %add4.i79.i179 = add i64 %22, %shr.i73.i174
  store i64 %add4.i79.i179, i64* %arrayidx3.i78.i178, align 8, !tbaa !54
  %conv6.i81.i180 = and i64 %call37.i173, 4294967295
  %mul.i82.i181 = mul nuw i64 %conv6.i81.i180, %conv6.i81.i180
  %shr8.i83.i182 = lshr i64 %mul.i82.i181, 8
  %sub.i84.i183 = sub nsw i64 %shr.i73.i174, %shr8.i83.i182
  %conv9.i85.i184 = trunc i64 %sub.i84.i183 to i32
  %add7 = add i32 %add, %conv9.i85.i184
  %23 = load i32, i32* %arrayidx.i161, align 4, !tbaa !55
  %mul11.i188 = mul i32 %mul10.i, %23
  %cond14.i189 = add i32 %mul11.i188, %mul.i244
  %24 = load i64 (i8*, i32)*, i64 (i8*, i32)** %arrayidx33.i, align 8, !tbaa !59
  %25 = load i8*, i8** %arrayidx35.i171, align 4, !tbaa !59
  %add.ptr36.i192 = getelementptr inbounds i8, i8* %25, i32 %cond14.i189
  %call37.i193 = tail call i64 %24(i8* %add.ptr36.i192, i32 %23) #13
  %shr.i73.i194 = lshr i64 %call37.i193, 32
  %conv6.i81.i195 = and i64 %call37.i193, 4294967295
  %mul.i82.i196 = mul nuw i64 %conv6.i81.i195, %conv6.i81.i195
  %shr8.i83.i197 = lshr i64 %mul.i82.i196, 8
  %sub.i84.i198 = sub nsw i64 %shr.i73.i194, %shr8.i83.i197
  %conv9.i85.i199 = trunc i64 %sub.i84.i198 to i32
  %add9 = add i32 %add5, %conv9.i85.i199
  br label %if.end19

if.then14:                                        ; preds = %if.then
  %chroma_v_shift.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 4
  %26 = load i32, i32* %chroma_v_shift.i, align 16, !tbaa !57
  %shr.i = lshr i32 16, %26
  %arrayidx.i200 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 31, i32 1
  %27 = load i32, i32* %arrayidx.i200, align 4, !tbaa !55
  %mul4.i203 = mul i32 %shr.i, %and.i
  %reass.add.i205 = or i32 %mul4.i203, %and5.i
  %reass.mul.i206 = mul i32 %reass.add.i205, %27
  %cond14.i207 = add i32 %reass.mul.i206, %mul.i244
  %shl.i208 = shl i32 %27, 1
  %28 = getelementptr inbounds [256 x i8], [256 x i8]* %pix.i, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %28) #13
  %arrayidx16.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 80, i32 0
  %29 = load i8, i8* %arrayidx16.i, align 64, !tbaa !46
  %conv.i = zext i8 %29 to i32
  %sub.i = sub nsw i32 7, %26
  %load_deinterleave_chroma_fenc.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 93, i32 7
  %30 = load void (i8*, i8*, i32, i32)*, void (i8*, i8*, i32, i32)** %load_deinterleave_chroma_fenc.i, align 32, !tbaa !64
  %arrayidx19.i = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 37, i32 1
  %31 = load i8*, i8** %arrayidx19.i, align 4, !tbaa !59
  %add.ptr.i = getelementptr inbounds i8, i8* %31, i32 %cond14.i207
  call void %30(i8* nonnull %28, i8* %add.ptr.i, i32 %shl.i208, i32 %shr.i) #13
  %arrayidx20.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 92, i32 14, i32 %conv.i
  %32 = load i64 (i8*, i32)*, i64 (i8*, i32)** %arrayidx20.i, align 4, !tbaa !59
  %call.i = call i64 %32(i8* nonnull %28, i32 16) #13
  %shr.i.i = lshr i64 %call.i, 32
  %conv.i.i = trunc i64 %call.i to i32
  %arrayidx.i.i = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 81, i32 1
  %33 = load i32, i32* %arrayidx.i.i, align 4, !tbaa !55
  %add.i.i = add i32 %33, %conv.i.i
  store i32 %add.i.i, i32* %arrayidx.i.i, align 4, !tbaa !55
  %arrayidx3.i.i = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 82, i32 1
  %34 = load i64, i64* %arrayidx3.i.i, align 8, !tbaa !54
  %add4.i.i = add i64 %34, %shr.i.i
  store i64 %add4.i.i, i64* %arrayidx3.i.i, align 8, !tbaa !54
  %conv6.i.i = and i64 %call.i, 4294967295
  %mul.i.i = mul nuw i64 %conv6.i.i, %conv6.i.i
  %sh_prom.i.i = zext i32 %sub.i to i64
  %shr8.i.i = lshr i64 %mul.i.i, %sh_prom.i.i
  %sub.i.i = sub i64 %shr.i.i, %shr8.i.i
  %conv9.i.i = trunc i64 %sub.i.i to i32
  %35 = load i64 (i8*, i32)*, i64 (i8*, i32)** %arrayidx20.i, align 4, !tbaa !59
  %add.ptr27.i = getelementptr inbounds [256 x i8], [256 x i8]* %pix.i, i32 0, i32 8
  %call28.i = call i64 %35(i8* nonnull %add.ptr27.i, i32 16) #13
  %shr.i87.i = lshr i64 %call28.i, 32
  %conv.i89.i = trunc i64 %call28.i to i32
  %arrayidx.i90.i = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 81, i32 2
  %36 = load i32, i32* %arrayidx.i90.i, align 4, !tbaa !55
  %add.i91.i = add i32 %36, %conv.i89.i
  store i32 %add.i91.i, i32* %arrayidx.i90.i, align 4, !tbaa !55
  %arrayidx3.i92.i = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 82, i32 2
  %37 = load i64, i64* %arrayidx3.i92.i, align 8, !tbaa !54
  %add4.i93.i = add i64 %37, %shr.i87.i
  store i64 %add4.i93.i, i64* %arrayidx3.i92.i, align 8, !tbaa !54
  %conv6.i95.i = and i64 %call28.i, 4294967295
  %mul.i96.i = mul nuw i64 %conv6.i95.i, %conv6.i95.i
  %shr8.i98.i = lshr i64 %mul.i96.i, %sh_prom.i.i
  %sub.i99.i = sub i64 %shr.i87.i, %shr8.i98.i
  %conv9.i100.i = trunc i64 %sub.i99.i to i32
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %28) #13
  %add30.i = add i32 %conv9.i.i, %conv9.i85.i
  %add16 = add i32 %add30.i, %conv9.i100.i
  %38 = load i32, i32* %chroma_v_shift.i, align 16, !tbaa !57
  %shr.i211 = lshr i32 16, %38
  %39 = load i32, i32* %arrayidx.i200, align 4, !tbaa !55
  %mul10.i214 = mul i32 %shr.i211, %mb_y
  %mul11.i215 = mul i32 %mul10.i214, %39
  %cond14.i216 = add i32 %mul11.i215, %mul.i244
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %28) #13
  %40 = load i8, i8* %arrayidx16.i, align 64, !tbaa !46
  %conv.i218 = zext i8 %40 to i32
  %sub.i220 = sub nsw i32 7, %38
  %41 = load void (i8*, i8*, i32, i32)*, void (i8*, i8*, i32, i32)** %load_deinterleave_chroma_fenc.i, align 32, !tbaa !64
  %42 = load i8*, i8** %arrayidx19.i, align 4, !tbaa !59
  %add.ptr.i223 = getelementptr inbounds i8, i8* %42, i32 %cond14.i216
  call void %41(i8* nonnull %28, i8* %add.ptr.i223, i32 %39, i32 %shr.i211) #13
  %arrayidx20.i224 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 92, i32 14, i32 %conv.i218
  %43 = load i64 (i8*, i32)*, i64 (i8*, i32)** %arrayidx20.i224, align 4, !tbaa !59
  %call.i225 = call i64 %43(i8* nonnull %28, i32 16) #13
  %shr.i.i226 = lshr i64 %call.i225, 32
  %conv6.i.i227 = and i64 %call.i225, 4294967295
  %mul.i.i228 = mul nuw i64 %conv6.i.i227, %conv6.i.i227
  %sh_prom.i.i229 = zext i32 %sub.i220 to i64
  %shr8.i.i230 = lshr i64 %mul.i.i228, %sh_prom.i.i229
  %sub.i.i231 = sub i64 %shr.i.i226, %shr8.i.i230
  %conv9.i.i232 = trunc i64 %sub.i.i231 to i32
  %44 = load i64 (i8*, i32)*, i64 (i8*, i32)** %arrayidx20.i224, align 4, !tbaa !59
  %call28.i234 = call i64 %44(i8* nonnull %add.ptr27.i, i32 16) #13
  %shr.i87.i235 = lshr i64 %call28.i234, 32
  %conv6.i95.i236 = and i64 %call28.i234, 4294967295
  %mul.i96.i237 = mul nuw i64 %conv6.i95.i236, %conv6.i95.i236
  %shr8.i98.i238 = lshr i64 %mul.i96.i237, %sh_prom.i.i229
  %sub.i99.i239 = sub i64 %shr.i87.i235, %shr8.i98.i238
  %conv9.i100.i240 = trunc i64 %sub.i99.i239 to i32
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %28) #13
  %add30.i241 = add i32 %conv9.i.i232, %conv9.i85.i121
  %add18 = add i32 %add30.i241, %conv9.i100.i240
  br label %if.end19

if.end19:                                         ; preds = %if.then, %if.then14, %if.then2
  %var_interlaced.0 = phi i32 [ %add7, %if.then2 ], [ %add16, %if.then14 ], [ %conv9.i85.i, %if.then ]
  %var_progressive.0 = phi i32 [ %add9, %if.then2 ], [ %add18, %if.then14 ], [ %conv9.i85.i121, %if.then ]
  %cmp20 = icmp ult i32 %var_interlaced.0, %var_progressive.0
  %cond = select i1 %cmp20, i32 %var_interlaced.0, i32 %var_progressive.0
  br label %if.end42

if.else21:                                        ; preds = %entry
  %mul10.i245 = shl i32 %mb_y, 4
  %mul11.i246 = mul i32 %mul10.i245, %1
  %cond14.i247 = add i32 %mul11.i246, %mul.i244
  %arrayidx33.i248 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 92, i32 14, i32 0
  %45 = load i64 (i8*, i32)*, i64 (i8*, i32)** %arrayidx33.i248, align 8, !tbaa !59
  %arrayidx35.i249 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 37, i32 0
  %46 = load i8*, i8** %arrayidx35.i249, align 4, !tbaa !59
  %add.ptr36.i250 = getelementptr inbounds i8, i8* %46, i32 %cond14.i247
  %call37.i251 = tail call i64 %45(i8* %add.ptr36.i250, i32 %1) #13
  %shr.i73.i252 = lshr i64 %call37.i251, 32
  %conv.i75.i253 = trunc i64 %call37.i251 to i32
  %arrayidx.i76.i254 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 81, i32 0
  %47 = load i32, i32* %arrayidx.i76.i254, align 4, !tbaa !55
  %add.i77.i255 = add i32 %47, %conv.i75.i253
  store i32 %add.i77.i255, i32* %arrayidx.i76.i254, align 4, !tbaa !55
  %arrayidx3.i78.i256 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 82, i32 0
  %48 = load i64, i64* %arrayidx3.i78.i256, align 8, !tbaa !54
  %add4.i79.i257 = add i64 %48, %shr.i73.i252
  store i64 %add4.i79.i257, i64* %arrayidx3.i78.i256, align 8, !tbaa !54
  %conv6.i81.i258 = and i64 %call37.i251, 4294967295
  %mul.i82.i259 = mul nuw i64 %conv6.i81.i258, %conv6.i81.i258
  %shr8.i83.i260 = lshr i64 %mul.i82.i259, 8
  %sub.i84.i261 = sub nsw i64 %shr.i73.i252, %shr8.i83.i260
  %conv9.i85.i262 = trunc i64 %sub.i84.i261 to i32
  %i_chroma_format_idc25 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 22
  %49 = load i32, i32* %i_chroma_format_idc25, align 8, !tbaa !60
  switch i32 %49, label %if.then37 [
    i32 3, label %if.then27
    i32 0, label %if.end42
  ]

if.then27:                                        ; preds = %if.else21
  %arrayidx.i264 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 31, i32 1
  %50 = load i32, i32* %arrayidx.i264, align 4, !tbaa !55
  %mul11.i267 = mul i32 %mul10.i245, %50
  %cond14.i268 = add i32 %mul11.i267, %mul.i244
  %51 = load i64 (i8*, i32)*, i64 (i8*, i32)** %arrayidx33.i248, align 8, !tbaa !59
  %arrayidx35.i270 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 37, i32 1
  %52 = load i8*, i8** %arrayidx35.i270, align 4, !tbaa !59
  %add.ptr36.i271 = getelementptr inbounds i8, i8* %52, i32 %cond14.i268
  %call37.i272 = tail call i64 %51(i8* %add.ptr36.i271, i32 %50) #13
  %shr.i73.i273 = lshr i64 %call37.i272, 32
  %conv.i75.i274 = trunc i64 %call37.i272 to i32
  %arrayidx.i76.i275 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 81, i32 1
  %53 = load i32, i32* %arrayidx.i76.i275, align 4, !tbaa !55
  %add.i77.i276 = add i32 %53, %conv.i75.i274
  store i32 %add.i77.i276, i32* %arrayidx.i76.i275, align 4, !tbaa !55
  %arrayidx3.i78.i277 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 82, i32 1
  %54 = load i64, i64* %arrayidx3.i78.i277, align 8, !tbaa !54
  %add4.i79.i278 = add i64 %54, %shr.i73.i273
  store i64 %add4.i79.i278, i64* %arrayidx3.i78.i277, align 8, !tbaa !54
  %conv6.i81.i279 = and i64 %call37.i272, 4294967295
  %mul.i82.i280 = mul nuw i64 %conv6.i81.i279, %conv6.i81.i279
  %shr8.i83.i281 = lshr i64 %mul.i82.i280, 8
  %sub.i84.i282 = sub nsw i64 %shr.i73.i273, %shr8.i83.i281
  %conv9.i85.i283 = trunc i64 %sub.i84.i282 to i32
  %add29 = add i32 %conv9.i85.i283, %conv9.i85.i262
  %arrayidx.i285 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 31, i32 2
  %55 = load i32, i32* %arrayidx.i285, align 4, !tbaa !55
  %mul11.i288 = mul i32 %mul10.i245, %55
  %cond14.i289 = add i32 %mul11.i288, %mul.i244
  %56 = load i64 (i8*, i32)*, i64 (i8*, i32)** %arrayidx33.i248, align 8, !tbaa !59
  %arrayidx35.i291 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 37, i32 2
  %57 = load i8*, i8** %arrayidx35.i291, align 4, !tbaa !59
  %add.ptr36.i292 = getelementptr inbounds i8, i8* %57, i32 %cond14.i289
  %call37.i293 = tail call i64 %56(i8* %add.ptr36.i292, i32 %55) #13
  %shr.i73.i294 = lshr i64 %call37.i293, 32
  %conv.i75.i295 = trunc i64 %call37.i293 to i32
  %arrayidx.i76.i296 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 81, i32 2
  %58 = load i32, i32* %arrayidx.i76.i296, align 4, !tbaa !55
  %add.i77.i297 = add i32 %58, %conv.i75.i295
  store i32 %add.i77.i297, i32* %arrayidx.i76.i296, align 4, !tbaa !55
  %arrayidx3.i78.i298 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 82, i32 2
  %59 = load i64, i64* %arrayidx3.i78.i298, align 8, !tbaa !54
  %add4.i79.i299 = add i64 %59, %shr.i73.i294
  store i64 %add4.i79.i299, i64* %arrayidx3.i78.i298, align 8, !tbaa !54
  %conv6.i81.i300 = and i64 %call37.i293, 4294967295
  %mul.i82.i301 = mul nuw i64 %conv6.i81.i300, %conv6.i81.i300
  %shr8.i83.i302 = lshr i64 %mul.i82.i301, 8
  %sub.i84.i303 = sub nsw i64 %shr.i73.i294, %shr8.i83.i302
  %conv9.i85.i304 = trunc i64 %sub.i84.i303 to i32
  %add31 = add i32 %add29, %conv9.i85.i304
  br label %if.end42

if.then37:                                        ; preds = %if.else21
  %chroma_v_shift.i306 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 4
  %60 = load i32, i32* %chroma_v_shift.i306, align 16, !tbaa !57
  %shr.i307 = lshr i32 16, %60
  %arrayidx.i308 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 31, i32 1
  %61 = load i32, i32* %arrayidx.i308, align 4, !tbaa !55
  %mul10.i310 = mul i32 %shr.i307, %mb_y
  %mul11.i311 = mul i32 %mul10.i310, %61
  %cond14.i312 = add i32 %mul11.i311, %mul.i244
  %62 = getelementptr inbounds [256 x i8], [256 x i8]* %pix.i, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %62) #13
  %arrayidx16.i313 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 80, i32 0
  %63 = load i8, i8* %arrayidx16.i313, align 64, !tbaa !46
  %conv.i314 = zext i8 %63 to i32
  %sub.i316 = sub nsw i32 7, %60
  %load_deinterleave_chroma_fenc.i317 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 93, i32 7
  %64 = load void (i8*, i8*, i32, i32)*, void (i8*, i8*, i32, i32)** %load_deinterleave_chroma_fenc.i317, align 32, !tbaa !64
  %arrayidx19.i318 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 37, i32 1
  %65 = load i8*, i8** %arrayidx19.i318, align 4, !tbaa !59
  %add.ptr.i319 = getelementptr inbounds i8, i8* %65, i32 %cond14.i312
  call void %64(i8* nonnull %62, i8* %add.ptr.i319, i32 %61, i32 %shr.i307) #13
  %arrayidx20.i320 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 92, i32 14, i32 %conv.i314
  %66 = load i64 (i8*, i32)*, i64 (i8*, i32)** %arrayidx20.i320, align 4, !tbaa !59
  %call.i321 = call i64 %66(i8* nonnull %62, i32 16) #13
  %shr.i.i322 = lshr i64 %call.i321, 32
  %conv.i.i323 = trunc i64 %call.i321 to i32
  %arrayidx.i.i324 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 81, i32 1
  %67 = load i32, i32* %arrayidx.i.i324, align 4, !tbaa !55
  %add.i.i325 = add i32 %67, %conv.i.i323
  store i32 %add.i.i325, i32* %arrayidx.i.i324, align 4, !tbaa !55
  %arrayidx3.i.i326 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 82, i32 1
  %68 = load i64, i64* %arrayidx3.i.i326, align 8, !tbaa !54
  %add4.i.i327 = add i64 %68, %shr.i.i322
  store i64 %add4.i.i327, i64* %arrayidx3.i.i326, align 8, !tbaa !54
  %conv6.i.i328 = and i64 %call.i321, 4294967295
  %mul.i.i329 = mul nuw i64 %conv6.i.i328, %conv6.i.i328
  %sh_prom.i.i330 = zext i32 %sub.i316 to i64
  %shr8.i.i331 = lshr i64 %mul.i.i329, %sh_prom.i.i330
  %sub.i.i332 = sub i64 %shr.i.i322, %shr8.i.i331
  %conv9.i.i333 = trunc i64 %sub.i.i332 to i32
  %69 = load i64 (i8*, i32)*, i64 (i8*, i32)** %arrayidx20.i320, align 4, !tbaa !59
  %add.ptr27.i334 = getelementptr inbounds [256 x i8], [256 x i8]* %pix.i, i32 0, i32 8
  %call28.i335 = call i64 %69(i8* nonnull %add.ptr27.i334, i32 16) #13
  %shr.i87.i336 = lshr i64 %call28.i335, 32
  %conv.i89.i337 = trunc i64 %call28.i335 to i32
  %arrayidx.i90.i338 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 81, i32 2
  %70 = load i32, i32* %arrayidx.i90.i338, align 4, !tbaa !55
  %add.i91.i339 = add i32 %70, %conv.i89.i337
  store i32 %add.i91.i339, i32* %arrayidx.i90.i338, align 4, !tbaa !55
  %arrayidx3.i92.i340 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 82, i32 2
  %71 = load i64, i64* %arrayidx3.i92.i340, align 8, !tbaa !54
  %add4.i93.i341 = add i64 %71, %shr.i87.i336
  store i64 %add4.i93.i341, i64* %arrayidx3.i92.i340, align 8, !tbaa !54
  %conv6.i95.i342 = and i64 %call28.i335, 4294967295
  %mul.i96.i343 = mul nuw i64 %conv6.i95.i342, %conv6.i95.i342
  %shr8.i98.i344 = lshr i64 %mul.i96.i343, %sh_prom.i.i330
  %sub.i99.i345 = sub i64 %shr.i87.i336, %shr8.i98.i344
  %conv9.i100.i346 = trunc i64 %sub.i99.i345 to i32
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %62) #13
  %add30.i347 = add i32 %conv9.i.i333, %conv9.i85.i262
  %add39 = add i32 %add30.i347, %conv9.i100.i346
  br label %if.end42

if.end42:                                         ; preds = %if.else21, %if.then27, %if.then37, %if.end19
  %var.0 = phi i32 [ %cond, %if.end19 ], [ %add31, %if.then27 ], [ %add39, %if.then37 ], [ %conv9.i85.i262, %if.else21 ]
  ret i32 %var.0
}

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.pow.f32(float, float) #3

; Function Attrs: nounwind
define hidden i32 @x264_8_macroblock_tree_read(%struct.x264_t* %h, %struct.x264_frame* %frame, float* readonly %quant_offsets) local_unnamed_addr #0 {
entry:
  %i_type = alloca i8, align 4
  %rc1 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 71
  %0 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc1, align 64, !tbaa !65
  %entry2 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 45
  %1 = load %struct.ratecontrol_entry_t*, %struct.ratecontrol_entry_t** %entry2, align 4, !tbaa !66
  %i_frame = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 15
  %2 = load i32, i32* %i_frame, align 4, !tbaa !69
  %pict_type = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %1, i32 %2, i32 0
  %3 = load i32, i32* %pict_type, align 8, !tbaa !70
  %kept_as_ref = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %1, i32 %2, i32 2
  %4 = load i32, i32* %kept_as_ref, align 8, !tbaa !72
  %tobool = icmp eq i32 %4, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %i_type) #13
  %qpbuf_pos = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 56, i32 1
  %5 = load i32, i32* %qpbuf_pos, align 8, !tbaa !73
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %do.body.preheader, label %if.then.if.end41_crit_edge

if.then.if.end41_crit_edge:                       ; preds = %if.then
  %src_mb_count52.phi.trans.insert = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 56, i32 2
  %.pre129 = load i32, i32* %src_mb_count52.phi.trans.insert, align 4, !tbaa !74
  br label %if.end41

do.body.preheader:                                ; preds = %if.then
  %p_mbtree_stat_file_in = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 43
  %src_mb_count = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 56, i32 2
  %conv26 = and i32 %3, 255
  %6 = trunc i32 %3 to i8
  %inc144 = add nsw i32 %5, 1
  store i32 %inc144, i32* %qpbuf_pos, align 8, !tbaa !73
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %p_mbtree_stat_file_in, align 4, !tbaa !75
  %call145 = call i32 @fread(i8* nonnull %i_type, i32 1, i32 1, %struct._IO_FILE* %7)
  %tobool10146 = icmp eq i32 %call145, 0
  br i1 %tobool10146, label %fail, label %if.end

if.end:                                           ; preds = %do.body.preheader, %do.cond.do.body_crit_edge
  %8 = load i32, i32* %qpbuf_pos, align 8, !tbaa !73
  %arrayidx15 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 56, i32 0, i32 %8
  %9 = bitcast i16** %arrayidx15 to i8**
  %10 = load i8*, i8** %9, align 4, !tbaa !59
  %11 = load i32, i32* %src_mb_count, align 4, !tbaa !74
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %p_mbtree_stat_file_in, align 4, !tbaa !75
  %call18 = tail call i32 @fread(i8* %10, i32 2, i32 %11, %struct._IO_FILE* %12)
  %13 = load i32, i32* %src_mb_count, align 4, !tbaa !74
  %cmp21 = icmp eq i32 %call18, %13
  br i1 %cmp21, label %if.end24, label %fail

if.end24:                                         ; preds = %if.end
  %14 = load i8, i8* %i_type, align 4, !tbaa !46
  %cmp27 = icmp eq i8 %14, %6
  %.pre128 = load i32, i32* %qpbuf_pos, align 8, !tbaa !73
  br i1 %cmp27, label %if.end41, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end24
  %cmp31 = icmp eq i32 %.pre128, 1
  br i1 %cmp31, label %cleanup.thread116, label %do.cond.do.body_crit_edge

cleanup.thread116:                                ; preds = %land.lhs.true
  %conv25.le = zext i8 %14 to i32
  tail call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* %h, i32 0, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i32 0, i32 0), i32 %conv25.le, i32 %conv26) #13
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %i_type) #13
  br label %cleanup73

do.cond.do.body_crit_edge:                        ; preds = %land.lhs.true
  %.pre = load i32, i32* %qpbuf_pos, align 8, !tbaa !73
  %inc = add nsw i32 %.pre, 1
  store i32 %inc, i32* %qpbuf_pos, align 8, !tbaa !73
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %p_mbtree_stat_file_in, align 4, !tbaa !75
  %call = call i32 @fread(i8* nonnull %i_type, i32 1, i32 1, %struct._IO_FILE* %15)
  %tobool10 = icmp eq i32 %call, 0
  br i1 %tobool10, label %fail, label %if.end

if.end41:                                         ; preds = %if.end24, %if.then.if.end41_crit_edge
  %16 = phi i32 [ %.pre129, %if.then.if.end41_crit_edge ], [ %call18, %if.end24 ]
  %17 = phi i32 [ %5, %if.then.if.end41_crit_edge ], [ %.pre128, %if.end24 ]
  %rescale_enabled = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 56, i32 3
  %18 = load i32, i32* %rescale_enabled, align 8, !tbaa !76
  %tobool43 = icmp eq i32 %18, 0
  %arrayidx45 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 56, i32 4, i32 0
  %f_qp_offset = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 73
  %cond.in = select i1 %tobool43, float** %f_qp_offset, float** %arrayidx45
  %cond = load float*, float** %cond.in, align 4, !tbaa !59
  %mbtree_fix8_unpack = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 93, i32 36
  %19 = load void (float*, i16*, i32)*, void (float*, i16*, i32)** %mbtree_fix8_unpack, align 4, !tbaa !77
  %arrayidx50 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 56, i32 0, i32 %17
  %20 = load i16*, i16** %arrayidx50, align 4, !tbaa !59
  tail call void %19(float* %cond, i16* %20, i32 %16) #13
  %21 = load i32, i32* %rescale_enabled, align 8, !tbaa !76
  %tobool55 = icmp eq i32 %21, 0
  br i1 %tobool55, label %if.end58, label %if.then56

if.then56:                                        ; preds = %if.end41
  %22 = load float*, float** %f_qp_offset, align 4, !tbaa !42
  %arrayidx3.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 56, i32 4, i32 1
  %23 = load float*, float** %arrayidx3.i, align 4, !tbaa !59
  %arrayidx6.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 56, i32 5, i32 0
  %24 = load i32, i32* %arrayidx6.i, align 4, !tbaa !55
  %arrayidx8.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 56, i32 8, i32 0
  %25 = load i32, i32* %arrayidx8.i, align 4, !tbaa !55
  %arrayidx11.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 56, i32 8, i32 1
  %26 = load i32, i32* %arrayidx11.i, align 4, !tbaa !55
  %cmp154.i = icmp sgt i32 %26, 0
  br i1 %cmp154.i, label %for.body.lr.ph.i, label %for.cond.cleanup.i

for.body.lr.ph.i:                                 ; preds = %if.then56
  %arrayidx13.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 56, i32 6, i32 0
  %27 = load float*, float** %arrayidx13.i, align 4, !tbaa !59
  %i_mb_width.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 0
  %28 = load i32, i32* %i_mb_width.i, align 64, !tbaa !51
  %cmp15149.i = icmp sgt i32 %28, 0
  %arrayidx19.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 56, i32 7, i32 0
  %sub.i.i = add nsw i32 %25, -1
  br i1 %cmp15149.i, label %for.body.us.preheader.i, label %for.cond.cleanup.i

for.body.us.preheader.i:                          ; preds = %for.body.lr.ph.i
  %cmp10.i.i = icmp sgt i32 %24, 0
  br i1 %cmp10.i.i, label %for.body.us.i.us.preheader, label %for.body.us.i.preheader

for.body.us.i.preheader:                          ; preds = %for.body.us.preheader.i
  %output.0157.us229.i139 = bitcast float* %23 to i8*
  %29 = icmp sgt i32 %28, 1
  %smax.i140 = select i1 %29, i32 %28, i32 1
  %30 = shl nuw i32 %smax.i140, 2
  tail call void @llvm.memset.p0i8.i32(i8* align 4 %output.0157.us229.i139, i8 0, i32 %30, i1 false) #13
  %exitcond230.i141 = icmp eq i32 %26, 1
  br i1 %exitcond230.i141, label %for.cond.cleanup.i, label %for.cond14.for.cond.cleanup16_crit_edge.us.for.body.us_crit_edge.i

for.body.us.i.us.preheader:                       ; preds = %for.body.us.preheader.i
  %31 = load float*, float** %arrayidx45, align 4, !tbaa !59
  %.pre231.i.us.pre = load i32*, i32** %arrayidx19.i, align 4, !tbaa !59
  br label %for.body.us.i.us

for.body.us.i.us:                                 ; preds = %for.body.us.i.us.preheader, %for.cond14.for.cond.cleanup16_crit_edge.us.for.body.us_crit_edge.i.us
  %y.0158.us.i.us = phi i32 [ %inc23.us.i.us, %for.cond14.for.cond.cleanup16_crit_edge.us.for.body.us_crit_edge.i.us ], [ 0, %for.body.us.i.us.preheader ]
  %output.0157.us.i.us = phi float* [ %add.ptr27.us.i.us, %for.cond14.for.cond.cleanup16_crit_edge.us.for.body.us_crit_edge.i.us ], [ %23, %for.body.us.i.us.preheader ]
  %input.0155.us.i.us = phi float* [ %add.ptr24.us.i.us, %for.cond14.for.cond.cleanup16_crit_edge.us.for.body.us_crit_edge.i.us ], [ %31, %for.body.us.i.us.preheader ]
  br label %for.body17.us.us.i.us

for.body17.us.us.i.us:                            ; preds = %tapfilter.exit.loopexit.us.us.i.us, %for.body.us.i.us
  %x.0152.us.us.i.us = phi i32 [ %inc.us.us.i.us, %tapfilter.exit.loopexit.us.us.i.us ], [ 0, %for.body.us.i.us ]
  %coeff.0150.us.us.i.us = phi float* [ %add.ptr.us.us.i.us, %tapfilter.exit.loopexit.us.us.i.us ], [ %27, %for.body.us.i.us ]
  %arrayidx20.us.us.i.us = getelementptr inbounds i32, i32* %.pre231.i.us.pre, i32 %x.0152.us.us.i.us
  %32 = load i32, i32* %arrayidx20.us.us.i.us, align 4, !tbaa !55
  br label %for.body.i.us.us.i.us

for.body.i.us.us.i.us:                            ; preds = %for.body.i.us.us.i.us, %for.body17.us.us.i.us
  %i.013.i.us.us.i.us = phi i32 [ 0, %for.body17.us.us.i.us ], [ %inc.i.us.us.i.us, %for.body.i.us.us.i.us ]
  %sum.012.i.us.us.i.us = phi float [ 0.000000e+00, %for.body17.us.us.i.us ], [ %add.i.us.us.i.us, %for.body.i.us.us.i.us ]
  %pos.addr.011.i.us.us.i.us = phi i32 [ %32, %for.body17.us.us.i.us ], [ %inc3.i.us.us.i.us, %for.body.i.us.us.i.us ]
  %cmp.i.i.us.us.i.us = icmp slt i32 %pos.addr.011.i.us.us.i.us, 0
  %cmp1.i.i.us.us.i.us = icmp slt i32 %pos.addr.011.i.us.us.i.us, %25
  %cond.i.i.us.us.i.us = select i1 %cmp1.i.i.us.us.i.us, i32 %pos.addr.011.i.us.us.i.us, i32 %sub.i.i
  %cond5.i.i.us.us.i.us = select i1 %cmp.i.i.us.us.i.us, i32 0, i32 %cond.i.i.us.us.i.us
  %arrayidx.i.us.us.i.us = getelementptr inbounds float, float* %input.0155.us.i.us, i32 %cond5.i.i.us.us.i.us
  %33 = load float, float* %arrayidx.i.us.us.i.us, align 4, !tbaa !45
  %arrayidx1.i.us.us.i.us = getelementptr inbounds float, float* %coeff.0150.us.us.i.us, i32 %i.013.i.us.us.i.us
  %34 = load float, float* %arrayidx1.i.us.us.i.us, align 4, !tbaa !45
  %mul2.i.us.us.i.us = fmul fast float %34, %33
  %add.i.us.us.i.us = fadd fast float %mul2.i.us.us.i.us, %sum.012.i.us.us.i.us
  %inc.i.us.us.i.us = add nuw nsw i32 %i.013.i.us.us.i.us, 1
  %inc3.i.us.us.i.us = add nsw i32 %pos.addr.011.i.us.us.i.us, 1
  %exitcond.i.us.us.i.us = icmp eq i32 %inc.i.us.us.i.us, %24
  br i1 %exitcond.i.us.us.i.us, label %tapfilter.exit.loopexit.us.us.i.us, label %for.body.i.us.us.i.us

tapfilter.exit.loopexit.us.us.i.us:               ; preds = %for.body.i.us.us.i.us
  %arrayidx21.us.us.i.us = getelementptr inbounds float, float* %output.0157.us.i.us, i32 %x.0152.us.us.i.us
  store float %add.i.us.us.i.us, float* %arrayidx21.us.us.i.us, align 4, !tbaa !45
  %inc.us.us.i.us = add nuw nsw i32 %x.0152.us.us.i.us, 1
  %add.ptr.us.us.i.us = getelementptr inbounds float, float* %coeff.0150.us.us.i.us, i32 %24
  %cmp15.us.us.i.us = icmp slt i32 %inc.us.us.i.us, %28
  br i1 %cmp15.us.us.i.us, label %for.body17.us.us.i.us, label %for.cond14.for.cond.cleanup16_crit_edge.us.i.loopexit.us

for.cond14.for.cond.cleanup16_crit_edge.us.for.body.us_crit_edge.i.us: ; preds = %for.cond14.for.cond.cleanup16_crit_edge.us.i.loopexit.us
  %add.ptr27.us.i.us = getelementptr inbounds float, float* %output.0157.us.i.us, i32 %28
  %add.ptr24.us.i.us = getelementptr inbounds float, float* %input.0155.us.i.us, i32 %25
  br label %for.body.us.i.us

for.cond14.for.cond.cleanup16_crit_edge.us.i.loopexit.us: ; preds = %tapfilter.exit.loopexit.us.us.i.us
  %inc23.us.i.us = add nuw nsw i32 %y.0158.us.i.us, 1
  %exitcond230.i.us = icmp eq i32 %inc23.us.i.us, %26
  br i1 %exitcond230.i.us, label %for.cond.cleanup.i, label %for.cond14.for.cond.cleanup16_crit_edge.us.for.body.us_crit_edge.i.us

for.cond14.for.cond.cleanup16_crit_edge.us.for.body.us_crit_edge.i: ; preds = %for.body.us.i.preheader, %for.cond14.for.cond.cleanup16_crit_edge.us.for.body.us_crit_edge.i
  %inc23.us.i143 = phi i32 [ %inc23.us.i, %for.cond14.for.cond.cleanup16_crit_edge.us.for.body.us_crit_edge.i ], [ 1, %for.body.us.i.preheader ]
  %output.0157.us.i142 = phi float* [ %add.ptr27.us.i, %for.cond14.for.cond.cleanup16_crit_edge.us.for.body.us_crit_edge.i ], [ %23, %for.body.us.i.preheader ]
  %35 = phi i32 [ %.pre.i, %for.cond14.for.cond.cleanup16_crit_edge.us.for.body.us_crit_edge.i ], [ %28, %for.body.us.i.preheader ]
  %add.ptr27.us.i = getelementptr inbounds float, float* %output.0157.us.i142, i32 %35
  %.pre.i = load i32, i32* %i_mb_width.i, align 64, !tbaa !51
  %output.0157.us229.i = bitcast float* %add.ptr27.us.i to i8*
  %36 = icmp sgt i32 %.pre.i, 1
  %smax.i = select i1 %36, i32 %.pre.i, i32 1
  %37 = shl nuw i32 %smax.i, 2
  tail call void @llvm.memset.p0i8.i32(i8* align 4 %output.0157.us229.i, i8 0, i32 %37, i1 false) #13
  %inc23.us.i = add nuw nsw i32 %inc23.us.i143, 1
  %exitcond230.i = icmp eq i32 %inc23.us.i, %26
  br i1 %exitcond230.i, label %for.cond.cleanup.i, label %for.cond14.for.cond.cleanup16_crit_edge.us.for.body.us_crit_edge.i

for.cond.cleanup.i:                               ; preds = %for.cond14.for.cond.cleanup16_crit_edge.us.for.body.us_crit_edge.i, %for.cond14.for.cond.cleanup16_crit_edge.us.i.loopexit.us, %for.body.us.i.preheader, %for.body.lr.ph.i, %if.then56
  %arrayidx34.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 56, i32 5, i32 1
  %38 = load i32, i32* %arrayidx34.i, align 4, !tbaa !55
  %i_mb_width36.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 0
  %39 = load i32, i32* %i_mb_width36.i, align 64, !tbaa !51
  %cmp44144.i = icmp sgt i32 %39, 0
  br i1 %cmp44144.i, label %for.body46.lr.ph.i, label %if.end58

for.body46.lr.ph.i:                               ; preds = %for.cond.cleanup.i
  %arrayidx50.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 56, i32 6, i32 1
  %40 = load float*, float** %arrayidx50.i, align 4, !tbaa !59
  %i_mb_height.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 1
  %41 = load i32, i32* %i_mb_height.i, align 4, !tbaa !50
  %cmp54140.i = icmp sgt i32 %41, 0
  %arrayidx59.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 56, i32 7, i32 1
  %sub.i121.i = add nsw i32 %26, -1
  br i1 %cmp54140.i, label %for.body46.us.i.preheader, label %if.end58

for.body46.us.i.preheader:                        ; preds = %for.body46.lr.ph.i
  %cmp10.i120.i = icmp sgt i32 %38, 0
  br i1 %cmp10.i120.i, label %for.body46.us.i.us.preheader, label %for.body46.us.i

for.body46.us.i.us.preheader:                     ; preds = %for.body46.us.i.preheader
  %.pre232.i.us.pre = load i32*, i32** %arrayidx59.i, align 4, !tbaa !59
  br label %for.body46.us.i.us

for.body46.us.i.us:                               ; preds = %for.body46.us.i.us.preheader, %for.cond52.for.cond.cleanup55_crit_edge.us.i.loopexit.us
  %x40.0148.us.i.us = phi i32 [ %inc68.us.i.us, %for.cond52.for.cond.cleanup55_crit_edge.us.i.loopexit.us ], [ 0, %for.body46.us.i.us.preheader ]
  %output.1147.us.i.us = phi float* [ %incdec.ptr69.us.i.us, %for.cond52.for.cond.cleanup55_crit_edge.us.i.loopexit.us ], [ %22, %for.body46.us.i.us.preheader ]
  %input.1145.us.i.us = phi float* [ %incdec.ptr.us.i.us, %for.cond52.for.cond.cleanup55_crit_edge.us.i.loopexit.us ], [ %23, %for.body46.us.i.us.preheader ]
  br label %for.body56.us.us.i.us

for.body56.us.us.i.us:                            ; preds = %tapfilter.exit139.loopexit.us.us.i.us, %for.body46.us.i.us
  %y51.0143.us.us.i.us = phi i32 [ %inc64.us.us.i.us, %tapfilter.exit139.loopexit.us.us.i.us ], [ 0, %for.body46.us.i.us ]
  %coeff47.0141.us.us.i.us = phi float* [ %add.ptr65.us.us.i.us, %tapfilter.exit139.loopexit.us.us.i.us ], [ %40, %for.body46.us.i.us ]
  %arrayidx60.us.us.i.us = getelementptr inbounds i32, i32* %.pre232.i.us.pre, i32 %y51.0143.us.us.i.us
  %42 = load i32, i32* %arrayidx60.us.us.i.us, align 4, !tbaa !55
  br label %for.body.i138.us.us.i.us

for.body.i138.us.us.i.us:                         ; preds = %for.body.i138.us.us.i.us, %for.body56.us.us.i.us
  %i.013.i124.us.us.i.us = phi i32 [ 0, %for.body56.us.us.i.us ], [ %inc.i135.us.us.i.us, %for.body.i138.us.us.i.us ]
  %sum.012.i125.us.us.i.us = phi float [ 0.000000e+00, %for.body56.us.us.i.us ], [ %add.i134.us.us.i.us, %for.body.i138.us.us.i.us ]
  %pos.addr.011.i126.us.us.i.us = phi i32 [ %42, %for.body56.us.us.i.us ], [ %inc3.i136.us.us.i.us, %for.body.i138.us.us.i.us ]
  %cmp.i.i127.us.us.i.us = icmp slt i32 %pos.addr.011.i126.us.us.i.us, 0
  %cmp1.i.i128.us.us.i.us = icmp slt i32 %pos.addr.011.i126.us.us.i.us, %26
  %cond.i.i129.us.us.i.us = select i1 %cmp1.i.i128.us.us.i.us, i32 %pos.addr.011.i126.us.us.i.us, i32 %sub.i121.i
  %cond5.i.i130.us.us.i.us = select i1 %cmp.i.i127.us.us.i.us, i32 0, i32 %cond.i.i129.us.us.i.us
  %mul.i.us.us.i.us = mul nsw i32 %cond5.i.i130.us.us.i.us, %39
  %arrayidx.i131.us.us.i.us = getelementptr inbounds float, float* %input.1145.us.i.us, i32 %mul.i.us.us.i.us
  %43 = load float, float* %arrayidx.i131.us.us.i.us, align 4, !tbaa !45
  %arrayidx1.i132.us.us.i.us = getelementptr inbounds float, float* %coeff47.0141.us.us.i.us, i32 %i.013.i124.us.us.i.us
  %44 = load float, float* %arrayidx1.i132.us.us.i.us, align 4, !tbaa !45
  %mul2.i133.us.us.i.us = fmul fast float %44, %43
  %add.i134.us.us.i.us = fadd fast float %mul2.i133.us.us.i.us, %sum.012.i125.us.us.i.us
  %inc.i135.us.us.i.us = add nuw nsw i32 %i.013.i124.us.us.i.us, 1
  %inc3.i136.us.us.i.us = add nsw i32 %pos.addr.011.i126.us.us.i.us, 1
  %exitcond.i137.us.us.i.us = icmp eq i32 %inc.i135.us.us.i.us, %38
  br i1 %exitcond.i137.us.us.i.us, label %tapfilter.exit139.loopexit.us.us.i.us, label %for.body.i138.us.us.i.us

tapfilter.exit139.loopexit.us.us.i.us:            ; preds = %for.body.i138.us.us.i.us
  %mul.us.us.i.us = mul nsw i32 %y51.0143.us.us.i.us, %39
  %arrayidx62.us.us.i.us = getelementptr inbounds float, float* %output.1147.us.i.us, i32 %mul.us.us.i.us
  store float %add.i134.us.us.i.us, float* %arrayidx62.us.us.i.us, align 4, !tbaa !45
  %inc64.us.us.i.us = add nuw nsw i32 %y51.0143.us.us.i.us, 1
  %add.ptr65.us.us.i.us = getelementptr inbounds float, float* %coeff47.0141.us.us.i.us, i32 %38
  %exitcond = icmp eq i32 %inc64.us.us.i.us, %41
  br i1 %exitcond, label %for.cond52.for.cond.cleanup55_crit_edge.us.i.loopexit.us, label %for.body56.us.us.i.us

for.cond52.for.cond.cleanup55_crit_edge.us.i.loopexit.us: ; preds = %tapfilter.exit139.loopexit.us.us.i.us
  %inc68.us.i.us = add nuw nsw i32 %x40.0148.us.i.us, 1
  %incdec.ptr.us.i.us = getelementptr inbounds float, float* %input.1145.us.i.us, i32 1
  %incdec.ptr69.us.i.us = getelementptr inbounds float, float* %output.1147.us.i.us, i32 1
  %exitcond.i.us = icmp eq i32 %inc68.us.i.us, %39
  br i1 %exitcond.i.us, label %if.end58, label %for.body46.us.i.us

for.body46.us.i:                                  ; preds = %for.body46.us.i.preheader, %for.cond52.for.cond.cleanup55_crit_edge.us.i
  %x40.0148.us.i = phi i32 [ %inc68.us.i, %for.cond52.for.cond.cleanup55_crit_edge.us.i ], [ 0, %for.body46.us.i.preheader ]
  %output.1147.us.i = phi float* [ %incdec.ptr69.us.i, %for.cond52.for.cond.cleanup55_crit_edge.us.i ], [ %22, %for.body46.us.i.preheader ]
  br label %for.body56.us159.i

for.body56.us159.i:                               ; preds = %for.body56.us159.i, %for.body46.us.i
  %y51.0143.us160.i = phi i32 [ %inc64.us185.i, %for.body56.us159.i ], [ 0, %for.body46.us.i ]
  %mul.us183.i = mul nsw i32 %y51.0143.us160.i, %39
  %arrayidx62.us184.i = getelementptr inbounds float, float* %output.1147.us.i, i32 %mul.us183.i
  store float 0.000000e+00, float* %arrayidx62.us184.i, align 4, !tbaa !45
  %inc64.us185.i = add nuw nsw i32 %y51.0143.us160.i, 1
  %exitcond127 = icmp eq i32 %inc64.us185.i, %41
  br i1 %exitcond127, label %for.cond52.for.cond.cleanup55_crit_edge.us.i, label %for.body56.us159.i

for.cond52.for.cond.cleanup55_crit_edge.us.i:     ; preds = %for.body56.us159.i
  %inc68.us.i = add nuw nsw i32 %x40.0148.us.i, 1
  %incdec.ptr69.us.i = getelementptr inbounds float, float* %output.1147.us.i, i32 1
  %exitcond.i = icmp eq i32 %inc68.us.i, %39
  br i1 %exitcond.i, label %if.end58, label %for.body46.us.i

if.end58:                                         ; preds = %for.cond52.for.cond.cleanup55_crit_edge.us.i, %for.cond52.for.cond.cleanup55_crit_edge.us.i.loopexit.us, %for.body46.lr.ph.i, %for.cond.cleanup.i, %if.end41
  %b_have_lowres = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 59, i32 18
  %45 = load i32, i32* %b_have_lowres, align 16, !tbaa !43
  %tobool59 = icmp eq i32 %45, 0
  br i1 %tobool59, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end58
  %i_mb_count = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 2
  %46 = load i32, i32* %i_mb_count, align 8, !tbaa !37
  %cmp61121 = icmp sgt i32 %46, 0
  br i1 %cmp61121, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %47 = load float*, float** %f_qp_offset, align 4, !tbaa !42
  %i_inv_qscale_factor = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 78
  %48 = load i16*, i16** %i_inv_qscale_factor, align 8, !tbaa !44
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %x264_exp2fix8.exit
  %i.0122 = phi i32 [ 0, %for.body.lr.ph ], [ %inc68, %x264_exp2fix8.exit ]
  %arrayidx64 = getelementptr inbounds float, float* %47, i32 %i.0122
  %49 = load float, float* %arrayidx64, align 4, !tbaa !45
  %mul.i = fmul fast float %49, 0x4025555560000000
  %50 = fsub fast float 5.125000e+02, %mul.i
  %conv.i = fptosi float %50 to i32
  %cmp.i = icmp slt i32 %conv.i, 0
  br i1 %cmp.i, label %x264_exp2fix8.exit, label %if.end.i

if.end.i:                                         ; preds = %for.body
  %cmp2.i = icmp sgt i32 %conv.i, 1023
  br i1 %cmp2.i, label %x264_exp2fix8.exit, label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i
  %and.i = and i32 %conv.i, 63
  %arrayidx.i114 = getelementptr inbounds [64 x i8], [64 x i8]* @x264_exp2_lut, i32 0, i32 %and.i
  %51 = load i8, i8* %arrayidx.i114, align 1, !tbaa !46
  %conv6.i = zext i8 %51 to i32
  %add7.i = or i32 %conv6.i, 256
  %shr13.i = lshr i32 %conv.i, 6
  %shl.i = shl i32 %add7.i, %shr13.i
  %shr8.i = ashr i32 %shl.i, 8
  br label %x264_exp2fix8.exit

x264_exp2fix8.exit:                               ; preds = %for.body, %if.end.i, %if.end5.i
  %retval.0.i = phi i32 [ %shr8.i, %if.end5.i ], [ 0, %for.body ], [ 65535, %if.end.i ]
  %conv66 = trunc i32 %retval.0.i to i16
  %arrayidx67 = getelementptr inbounds i16, i16* %48, i32 %i.0122
  store i16 %conv66, i16* %arrayidx67, align 2, !tbaa !47
  %inc68 = add nuw nsw i32 %i.0122, 1
  %cmp61 = icmp slt i32 %inc68, %46
  br i1 %cmp61, label %for.body, label %cleanup

cleanup:                                          ; preds = %x264_exp2fix8.exit, %for.cond.preheader, %if.end58
  %52 = load i32, i32* %qpbuf_pos, align 8, !tbaa !73
  %dec = add nsw i32 %52, -1
  store i32 %dec, i32* %qpbuf_pos, align 8, !tbaa !73
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %i_type) #13
  br label %cleanup73

if.else:                                          ; preds = %entry
  tail call void @x264_8_adaptive_quant_frame(%struct.x264_t* nonnull %h, %struct.x264_frame* nonnull %frame, float* %quant_offsets)
  br label %cleanup73

fail:                                             ; preds = %if.end, %do.cond.do.body_crit_edge, %do.body.preheader
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %i_type) #13
  tail call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* %h, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0)) #13
  br label %cleanup73

cleanup73:                                        ; preds = %if.else, %cleanup, %cleanup.thread116, %fail
  %retval.1 = phi i32 [ -1, %fail ], [ -1, %cleanup.thread116 ], [ 0, %cleanup ], [ 0, %if.else ]
  ret i32 %retval.1
}

; Function Attrs: nofree nounwind
declare dso_local i32 @fread(i8* nocapture, i32, i32, %struct._IO_FILE* nocapture) local_unnamed_addr #4

declare dso_local void @x264_8_log(%struct.x264_t*, i32, i8*, ...) local_unnamed_addr #5

; Function Attrs: nounwind
define hidden i32 @x264_8_reference_build_list_optimal(%struct.x264_t* nocapture %h) local_unnamed_addr #0 {
entry:
  %frames = alloca [16 x %struct.x264_frame*], align 4
  %weights = alloca [16 x [3 x %struct.x264_weight_t]], align 16
  %refcount = alloca [16 x i32], align 4
  %rc = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 71
  %0 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc, align 64, !tbaa !65
  %rce1 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 10
  %1 = load %struct.ratecontrol_entry_t*, %struct.ratecontrol_entry_t** %rce1, align 8, !tbaa !78
  %2 = bitcast [16 x %struct.x264_frame*]* %frames to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %2) #13
  %3 = bitcast [16 x [3 x %struct.x264_weight_t]]* %weights to i8*
  call void @llvm.lifetime.start.p0i8(i64 2304, i8* nonnull %3) #13
  %4 = bitcast [16 x i32]* %refcount to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %4) #13
  %refs = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %1, i32 0, i32 19
  %5 = load i32, i32* %refs, align 8, !tbaa !79
  %arrayidx = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 62, i32 0
  %6 = load i32, i32* %arrayidx, align 64, !tbaa !55
  %cmp = icmp eq i32 %5, %6
  br i1 %cmp, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx2 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 63, i32 0
  %7 = bitcast [19 x %struct.x264_frame*]* %arrayidx2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(64) %2, i8* nonnull align 8 dereferenceable(64) %7, i32 64, i1 false)
  %arraydecay6 = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %1, i32 0, i32 18, i32 0
  %8 = bitcast i32* %arraydecay6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(64) %4, i8* nonnull align 8 dereferenceable(64) %8, i32 64, i1 false)
  %fenc = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 60
  %9 = load %struct.x264_frame*, %struct.x264_frame** %fenc, align 8, !tbaa !80
  %arraydecay8 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %9, i32 0, i32 47, i32 0
  %10 = bitcast [3 x %struct.x264_weight_t]* %arraydecay8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 16 dereferenceable(2304) %3, i8* nonnull align 16 dereferenceable(2304) %10, i32 2304, i1 false)
  %arrayidx12 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %9, i32 0, i32 47, i32 1, i32 0
  %11 = bitcast %struct.x264_weight_t* %arrayidx12 to i8*
  tail call void @llvm.memset.p0i8.i32(i8* nonnull align 16 dereferenceable(2160) %11, i8 0, i32 2160, i1 false)
  %12 = load i32, i32* %arrayidx, align 64, !tbaa !55
  %cmp1572 = icmp sgt i32 %12, 1
  br i1 %cmp1572, label %for.cond16.preheader, label %cleanup

for.cond16.preheader:                             ; preds = %if.end, %for.cond.cleanup20
  %13 = phi i32 [ %20, %for.cond.cleanup20 ], [ %12, %if.end ]
  %ref.073 = phi i32 [ %inc39, %for.cond.cleanup20 ], [ 1, %if.end ]
  %cmp1968 = icmp sgt i32 %13, 1
  br i1 %cmp1968, label %for.body21, label %for.cond.cleanup20

for.cond.cleanup20:                               ; preds = %for.body21, %for.cond16.preheader
  %bestref.0.lcssa = phi i32 [ 1, %for.cond16.preheader ], [ %spec.select67, %for.body21 ]
  %arrayidx27 = getelementptr inbounds [16 x i32], [16 x i32]* %refcount, i32 0, i32 %bestref.0.lcssa
  store i32 -1, i32* %arrayidx27, align 4, !tbaa !55
  %arrayidx28 = getelementptr inbounds [16 x %struct.x264_frame*], [16 x %struct.x264_frame*]* %frames, i32 0, i32 %bestref.0.lcssa
  %14 = bitcast %struct.x264_frame** %arrayidx28 to i32*
  %15 = load i32, i32* %14, align 4, !tbaa !59
  %arrayidx31 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 63, i32 0, i32 %ref.073
  %16 = bitcast %struct.x264_frame** %arrayidx31 to i32*
  store i32 %15, i32* %16, align 4, !tbaa !59
  %17 = load %struct.x264_frame*, %struct.x264_frame** %fenc, align 8, !tbaa !80
  %arraydecay35 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %17, i32 0, i32 47, i32 %ref.073, i32 0
  %18 = bitcast %struct.x264_weight_t* %arraydecay35 to i8*
  %arraydecay37 = getelementptr inbounds [16 x [3 x %struct.x264_weight_t]], [16 x [3 x %struct.x264_weight_t]]* %weights, i32 0, i32 %bestref.0.lcssa, i32 0
  %19 = bitcast %struct.x264_weight_t* %arraydecay37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 16 dereferenceable(144) %18, i8* nonnull align 16 dereferenceable(144) %19, i32 144, i1 false)
  %inc39 = add nuw nsw i32 %ref.073, 1
  %20 = load i32, i32* %arrayidx, align 64, !tbaa !55
  %cmp15 = icmp slt i32 %inc39, %20
  br i1 %cmp15, label %for.cond16.preheader, label %cleanup

for.body21:                                       ; preds = %for.cond16.preheader, %for.body21
  %i.071 = phi i32 [ %inc, %for.body21 ], [ 1, %for.cond16.preheader ]
  %bestref.070 = phi i32 [ %spec.select67, %for.body21 ], [ 1, %for.cond16.preheader ]
  %max.069 = phi i32 [ %spec.select, %for.body21 ], [ -1, %for.cond16.preheader ]
  %arrayidx22 = getelementptr inbounds [16 x i32], [16 x i32]* %refcount, i32 0, i32 %i.071
  %21 = load i32, i32* %arrayidx22, align 4, !tbaa !55
  %cmp23 = icmp sgt i32 %21, %max.069
  %spec.select = select i1 %cmp23, i32 %21, i32 %max.069
  %spec.select67 = select i1 %cmp23, i32 %i.071, i32 %bestref.070
  %inc = add nuw nsw i32 %i.071, 1
  %exitcond = icmp eq i32 %inc, %13
  br i1 %exitcond, label %for.cond.cleanup20, label %for.body21

cleanup:                                          ; preds = %for.cond.cleanup20, %if.end, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ 0, %if.end ], [ 0, %for.cond.cleanup20 ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %4) #13
  call void @llvm.lifetime.end.p0i8(i64 2304, i8* nonnull %3) #13
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %2) #13
  ret i32 %retval.0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #1

; Function Attrs: nounwind
define hidden void @x264_8_ratecontrol_init_reconfigurable(%struct.x264_t* %h, i32 %b_init) local_unnamed_addr #0 {
entry:
  %rc1 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 71
  %0 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc1, align 64, !tbaa !65
  %tobool = icmp ne i32 %b_init, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %b_2pass = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 1
  %1 = load i32, i32* %b_2pass, align 4, !tbaa !81
  %tobool2 = icmp eq i32 %1, 0
  br i1 %tobool2, label %if.end, label %cleanup435

if.end:                                           ; preds = %land.lhs.true, %entry
  %i_rc_method = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 0
  %2 = load i32, i32* %i_rc_method, align 8, !tbaa !82
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then4, label %if.end22

if.then4:                                         ; preds = %if.end
  %i_mb_count = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 2
  %3 = load i32, i32* %i_mb_count, align 8, !tbaa !37
  %i_bframe = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 21
  %4 = load i32, i32* %i_bframe, align 4, !tbaa !83
  %tobool6 = icmp eq i32 %4, 0
  %cond = select i1 %tobool6, i32 80, i32 120
  %mul = mul nsw i32 %cond, %3
  %conv = sitofp i32 %mul to double
  %b_mb_tree = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 17
  %5 = load i32, i32* %b_mb_tree, align 4, !tbaa !84
  %tobool9 = icmp eq i32 %5, 0
  br i1 %tobool9, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.then4
  %f_qcompress = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 23
  %6 = load float, float* %f_qcompress, align 4, !tbaa !85
  %conv12 = fpext float %6 to double
  %7 = fmul fast double %conv12, 1.350000e+01
  %mul13 = fsub fast double 1.350000e+01, %7
  br label %cond.end

cond.end:                                         ; preds = %if.then4, %cond.true
  %cond14 = phi fast double [ %mul13, %cond.true ], [ 0.000000e+00, %if.then4 ]
  %qcompress = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 7
  %8 = load double, double* %qcompress, align 8, !tbaa !86
  %sub15 = fsub fast double 1.000000e+00, %8
  %9 = tail call fast double @llvm.pow.f64(double %conv, double %sub15)
  %f_rf_constant = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 6
  %10 = load float, float* %f_rf_constant, align 8, !tbaa !87
  %conv18 = fpext float %10 to double
  %add = fadd fast double %cond14, %conv18
  %conv20 = fptrunc double %add to float
  %11 = fmul fast float %conv20, 0x3FC5555560000000
  %div.i = fadd fast float %11, -2.000000e+00
  %exp2.i = tail call fast float @llvm.exp2.f32(float %div.i) #13
  %mul.i = fmul fast float %exp2.i, 0x3FEB333340000000
  %conv21 = fpext float %mul.i to double
  %div = fdiv fast double %9, %conv21
  %rate_factor_constant = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 35
  store double %div, double* %rate_factor_constant, align 8, !tbaa !88
  br label %if.end22

if.end22:                                         ; preds = %cond.end, %if.end
  %i_vbv_max_bitrate = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 9
  %12 = load i32, i32* %i_vbv_max_bitrate, align 4, !tbaa !89
  %cmp25 = icmp sgt i32 %12, 0
  br i1 %cmp25, label %land.lhs.true27, label %cleanup435

land.lhs.true27:                                  ; preds = %if.end22
  %i_vbv_buffer_size = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 10
  %13 = load i32, i32* %i_vbv_buffer_size, align 8, !tbaa !90
  %cmp30 = icmp sgt i32 %13, 0
  br i1 %cmp30, label %if.then32, label %cleanup435

if.then32:                                        ; preds = %land.lhs.true27
  %b_vbv_min_rate = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 3
  %14 = load i32, i32* %b_vbv_min_rate, align 4, !tbaa !91
  %tobool33 = icmp eq i32 %14, 0
  br i1 %tobool33, label %if.end40, label %if.then34

if.then34:                                        ; preds = %if.then32
  %i_bitrate = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 5
  %15 = load i32, i32* %i_bitrate, align 4, !tbaa !92
  store i32 %15, i32* %i_vbv_max_bitrate, align 4, !tbaa !89
  br label %if.end40

if.end40:                                         ; preds = %if.then32, %if.then34
  %16 = phi i32 [ %12, %if.then32 ], [ %15, %if.then34 ]
  %conv47 = sitofp i32 %16 to double
  %fps = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 4
  %17 = load double, double* %fps, align 8, !tbaa !93
  %div48 = fdiv fast double %conv47, %17
  %conv49 = fptosi double %div48 to i32
  %cmp50 = icmp slt i32 %13, %conv49
  br i1 %cmp50, label %if.then52, label %if.end66

if.then52:                                        ; preds = %if.end40
  store i32 %conv49, i32* %i_vbv_buffer_size, align 8, !tbaa !90
  tail call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 1, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i32 0, i32 0), i32 %conv49) #13
  %.pre = load i32, i32* %i_vbv_buffer_size, align 8, !tbaa !90
  %.pre602 = load i32, i32* %i_vbv_max_bitrate, align 4, !tbaa !89
  br label %if.end66

if.end66:                                         ; preds = %if.then52, %if.end40
  %18 = phi i32 [ %.pre602, %if.then52 ], [ %16, %if.end40 ]
  %19 = phi i32 [ %.pre, %if.then52 ], [ %13, %if.end40 ]
  %i_avcintra_class = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 27
  %20 = load i32, i32* %i_avcintra_class, align 4, !tbaa !94
  %tobool68 = icmp eq i32 %20, 0
  %cond69 = select i1 %tobool68, i32 1000, i32 1024
  %mul73 = mul nsw i32 %cond69, %19
  %mul77 = mul nsw i32 %18, %cond69
  %i_nal_hrd = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 13
  %21 = load i32, i32* %i_nal_hrd, align 4, !tbaa !95
  %tobool79 = icmp ne i32 %21, 0
  %or.cond = and i1 %tobool, %tobool79
  br i1 %or.cond, label %if.then82, label %if.else

if.then82:                                        ; preds = %if.end66
  %i_cpb_cnt = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 20, i32 21, i32 0
  store i32 1, i32* %i_cpb_cnt, align 4, !tbaa !96
  %cmp85 = icmp eq i32 %21, 2
  %conv86 = zext i1 %cmp85 to i32
  %b_cbr_hrd = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 20, i32 21, i32 7
  store i32 %conv86, i32* %b_cbr_hrd, align 4, !tbaa !97
  %i_time_offset_length = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 20, i32 21, i32 11
  store i32 0, i32* %i_time_offset_length, align 4, !tbaa !98
  %22 = tail call i32 @llvm.cttz.i32(i32 %mul77, i1 true), !range !99
  %23 = icmp ult i32 %22, 21
  %24 = select i1 %23, i32 %22, i32 21
  %25 = icmp sgt i32 %24, 6
  %26 = select i1 %25, i32 %24, i32 6
  %cond5.i596 = add nsw i32 %26, -6
  %i_bit_rate_scale = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 20, i32 21, i32 1
  store i32 %cond5.i596, i32* %i_bit_rate_scale, align 4, !tbaa !100
  %shr = ashr i32 %mul77, %26
  %i_bit_rate_value = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 20, i32 21, i32 3
  store i32 %shr, i32* %i_bit_rate_value, align 4, !tbaa !101
  %shl = shl i32 %shr, %26
  %i_bit_rate_unscaled = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 20, i32 21, i32 5
  store i32 %shl, i32* %i_bit_rate_unscaled, align 4, !tbaa !102
  %27 = tail call i32 @llvm.cttz.i32(i32 %mul73, i1 true), !range !99
  %28 = icmp ult i32 %27, 19
  %29 = select i1 %28, i32 %27, i32 19
  %30 = icmp sgt i32 %29, 4
  %31 = select i1 %30, i32 %29, i32 4
  %cond5.i592 = add nsw i32 %31, -4
  %i_cpb_size_scale = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 20, i32 21, i32 2
  store i32 %cond5.i592, i32* %i_cpb_size_scale, align 4, !tbaa !103
  %shr138 = ashr i32 %mul73, %31
  %i_cpb_size_value = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 20, i32 21, i32 4
  store i32 %shr138, i32* %i_cpb_size_value, align 4, !tbaa !104
  %shl154 = shl i32 %shr138, %31
  %i_cpb_size_unscaled = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 20, i32 21, i32 6
  store i32 %shl154, i32* %i_cpb_size_unscaled, align 4, !tbaa !105
  %i_keyint_max = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 17
  %32 = load i32, i32* %i_keyint_max, align 4, !tbaa !106
  %conv160 = sitofp i32 %32 to double
  %i_time_scale = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 20, i32 17
  %33 = load i32, i32* %i_time_scale, align 4, !tbaa !107
  %conv165 = uitofp i32 %33 to double
  %mul161 = fmul fast double %conv165, 5.000000e-01
  %mul166 = fmul fast double %mul161, %conv160
  %i_num_units_in_tick = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 20, i32 16
  %34 = load i32, i32* %i_num_units_in_tick, align 4, !tbaa !108
  %conv170 = uitofp i32 %34 to double
  %div171 = fdiv fast double %mul166, %conv170
  %.inv601 = fcmp fast oge double %div171, 0x41DFFFFFFFC00000
  %35 = select fast i1 %.inv601, double 0x41DFFFFFFFC00000, double %div171
  %36 = fptosi double %35 to i32
  %i_max_dec_frame_buffering = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 20, i32 30
  %37 = load i32, i32* %i_max_dec_frame_buffering, align 4, !tbaa !109
  %conv198 = sitofp i32 %37 to double
  %mul205 = fmul fast double %mul161, %conv198
  %div211 = fdiv fast double %mul205, %conv170
  %conv212 = fptosi double %div211 to i32
  %conv218 = sitofp i32 %shl154 to double
  %mul219 = fmul fast double %conv218, 9.000000e+04
  %conv225 = sitofp i32 %shl to double
  %div226 = fdiv fast double %mul219, %conv225
  %add227 = fadd fast double %div226, 5.000000e-01
  %conv228 = fptosi double %add227 to i32
  %38 = tail call i32 @llvm.ctlz.i32(i32 %conv228, i1 true), !range !53
  %sub229 = sub nuw nsw i32 32, %38
  %cmp.i585 = icmp ult i32 %conv228, 8
  %39 = icmp ult i32 %sub229, 22
  %cond.i587 = select i1 %39, i32 %sub229, i32 22
  %cond.i587.op = add nuw nsw i32 %cond.i587, 2
  %add231 = select i1 %cmp.i585, i32 6, i32 %cond.i587.op
  %i_initial_cpb_removal_delay_length = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 20, i32 21, i32 8
  store i32 %add231, i32* %i_initial_cpb_removal_delay_length, align 4, !tbaa !110
  %40 = tail call i32 @llvm.ctlz.i32(i32 %36, i1 true), !range !53
  %sub236 = sub nuw nsw i32 32, %40
  %cmp.i581 = icmp ult i32 %36, 8
  %41 = icmp ult i32 %sub236, 31
  %cond.i583 = select i1 %41, i32 %sub236, i32 31
  %cond5.i584 = select i1 %cmp.i581, i32 4, i32 %cond.i583
  %i_cpb_removal_delay_length = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 20, i32 21, i32 9
  store i32 %cond5.i584, i32* %i_cpb_removal_delay_length, align 4, !tbaa !111
  %42 = tail call i32 @llvm.ctlz.i32(i32 %conv212, i1 true), !range !53
  %sub242 = sub nuw nsw i32 32, %42
  %cmp.i577 = icmp ult i32 %conv212, 8
  %43 = icmp ult i32 %sub242, 31
  %cond.i579 = select i1 %43, i32 %sub242, i32 31
  %cond5.i580 = select i1 %cmp.i577, i32 4, i32 %cond.i579
  %i_dpb_output_delay_length = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 20, i32 21, i32 10
  store i32 %cond5.i580, i32* %i_dpb_output_delay_length, align 4, !tbaa !112
  br label %if.end265

if.else:                                          ; preds = %if.end66
  %tobool260 = icmp eq i32 %21, 0
  %or.cond439 = or i1 %tobool, %tobool260
  br i1 %or.cond439, label %if.end265, label %if.then263

if.then263:                                       ; preds = %if.else
  tail call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 1, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i32 0, i32 0)) #13
  br label %cleanup435

if.end265:                                        ; preds = %if.else, %if.then82
  %vbv_max_bitrate.0 = phi i32 [ %shl, %if.then82 ], [ %mul77, %if.else ]
  %vbv_buffer_size.0 = phi i32 [ %shl154, %if.then82 ], [ %mul73, %if.else ]
  %i_bit_rate_unscaled270 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 20, i32 21, i32 5
  store i32 %vbv_max_bitrate.0, i32* %i_bit_rate_unscaled270, align 4, !tbaa !102
  %i_cpb_size_unscaled275 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 20, i32 21, i32 6
  store i32 %vbv_buffer_size.0, i32* %i_cpb_size_unscaled275, align 4, !tbaa !105
  %44 = load i32, i32* %b_vbv_min_rate, align 4, !tbaa !91
  %tobool277 = icmp eq i32 %44, 0
  br i1 %tobool277, label %if.end285, label %if.then278

if.then278:                                       ; preds = %if.end265
  %i_bitrate281 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 5
  %45 = load i32, i32* %i_bitrate281, align 4, !tbaa !92
  %conv282 = sitofp i32 %45 to double
  %conv283 = sitofp i32 %cond69 to double
  %mul284 = fmul fast double %conv282, %conv283
  %bitrate = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 5
  store double %mul284, double* %bitrate, align 8, !tbaa !113
  br label %if.end285

if.end285:                                        ; preds = %if.end265, %if.then278
  %conv286 = sitofp i32 %vbv_max_bitrate.0 to double
  %46 = load double, double* %fps, align 8, !tbaa !93
  %div288 = fdiv fast double %conv286, %46
  %buffer_rate = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 21
  store double %div288, double* %buffer_rate, align 8, !tbaa !114
  %vbv_max_rate = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 22
  store double %conv286, double* %vbv_max_rate, align 8, !tbaa !115
  %conv290 = sitofp i32 %vbv_buffer_size.0 to double
  %buffer_size = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 17
  store double %conv290, double* %buffer_size, align 8, !tbaa !116
  %mul292 = fmul fast double %div288, 1.100000e+00
  %cmp294 = fcmp fast ogt double %mul292, %conv290
  %conv295 = zext i1 %cmp294 to i32
  %single_frame_vbv = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 24
  store i32 %conv295, i32* %single_frame_vbv, align 4, !tbaa !117
  %b_abr = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 0
  %47 = load i32, i32* %b_abr, align 8, !tbaa !118
  %tobool296 = icmp ne i32 %47, 0
  %.pr.pre = load i32, i32* %i_rc_method, align 8, !tbaa !82
  %cmp301 = icmp eq i32 %.pr.pre, 2
  %or.cond605 = and i1 %tobool296, %cmp301
  br i1 %or.cond605, label %if.end328.thread, label %if.end328

if.end328.thread:                                 ; preds = %if.end285
  %48 = fmul fast double %div288, 5.000000e-01
  %mul310 = fmul fast double %div288, %46
  %bitrate311 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 5
  %49 = load double, double* %bitrate311, align 8, !tbaa !113
  %div312 = fdiv fast double %mul310, %49
  %sub313 = fsub fast double 1.500000e+00, %div312
  %cmp314 = fcmp fast olt double %sub313, 0.000000e+00
  %cond325 = select fast i1 %cmp314, double 0.000000e+00, double %sub313
  %50 = fmul fast double %48, %cond325
  %mul326 = fdiv fast double %50, %conv290
  %sub327 = fsub fast double 1.000000e+00, %mul326
  %cbr_decay = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 32
  store double %sub327, double* %cbr_decay, align 8, !tbaa !119
  br label %if.end352

if.end328:                                        ; preds = %if.end285
  %cmp332 = icmp eq i32 %.pr.pre, 1
  br i1 %cmp332, label %land.lhs.true334, label %if.end352

land.lhs.true334:                                 ; preds = %if.end328
  %f_rf_constant_max = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 7
  %51 = load float, float* %f_rf_constant_max, align 4, !tbaa !120
  %tobool337 = fcmp fast une float %51, 0.000000e+00
  br i1 %tobool337, label %if.then338, label %if.end352

if.then338:                                       ; preds = %land.lhs.true334
  %f_rf_constant344 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 6
  %52 = load float, float* %f_rf_constant344, align 8, !tbaa !87
  %sub345 = fsub fast float %51, %52
  %rate_factor_max_increment = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 25
  store float %sub345, float* %rate_factor_max_increment, align 8, !tbaa !121
  %cmp347 = fcmp fast ugt float %sub345, 0.000000e+00
  br i1 %cmp347, label %if.end352, label %if.then349

if.then349:                                       ; preds = %if.then338
  tail call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0)) #13
  store float 0.000000e+00, float* %rate_factor_max_increment, align 8, !tbaa !121
  br label %if.end352

if.end352:                                        ; preds = %if.end328.thread, %if.then338, %if.then349, %land.lhs.true334, %if.end328
  br i1 %tobool, label %if.then354, label %cleanup435

if.then354:                                       ; preds = %if.end352
  %f_vbv_buffer_init = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 11
  %53 = load float, float* %f_vbv_buffer_init, align 4, !tbaa !122
  %cmp358 = fcmp fast ogt float %53, 1.000000e+00
  br i1 %cmp358, label %if.then360, label %if.end375

if.then360:                                       ; preds = %if.then354
  %54 = load i32, i32* %i_vbv_buffer_size, align 8, !tbaa !90
  %conv367 = sitofp i32 %54 to float
  %div368 = fdiv fast float %53, %conv367
  %conv369 = fpext float %div368 to double
  %cmp1.i574 = fcmp fast ogt double %conv369, 1.000000e+00
  %cond.i575 = select fast i1 %cmp1.i574, double 1.000000e+00, double %conv369
  %55 = tail call fast double @llvm.maxnum.f64(double %cond.i575, double 0.000000e+00)
  %conv371 = fptrunc double %55 to float
  store float %conv371, float* %f_vbv_buffer_init, align 4, !tbaa !122
  br label %if.end375

if.end375:                                        ; preds = %if.then360, %if.then354
  %56 = phi float [ %conv371, %if.then360 ], [ %53, %if.then354 ]
  %conv379 = fpext float %56 to double
  %57 = load double, double* %buffer_rate, align 8, !tbaa !114
  %58 = load double, double* %buffer_size, align 8, !tbaa !116
  %div382 = fdiv fast double %57, %58
  %cmp383 = fcmp fast olt double %div382, %conv379
  %conv379.div382 = select fast i1 %cmp383, double %conv379, double %div382
  %cmp1.i = fcmp fast ogt double %conv379.div382, 1.000000e+00
  %cond.i = select fast i1 %cmp1.i, double 1.000000e+00, double %conv379.div382
  %59 = tail call fast double @llvm.maxnum.f64(double %cond.i, double 0.000000e+00)
  %conv397 = fptrunc double %59 to float
  store float %conv397, float* %f_vbv_buffer_init, align 4, !tbaa !122
  %conv405 = fpext float %conv397 to double
  %i_time_scale410 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 20, i32 17
  %60 = load i32, i32* %i_time_scale410, align 4, !tbaa !107
  %conv411 = uitofp i32 %60 to double
  %mul406 = fmul fast double %58, %conv411
  %mul412 = fmul fast double %mul406, %conv405
  %conv413 = fptosi double %mul412 to i64
  %buffer_fill_final_min = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 19
  store i64 %conv413, i64* %buffer_fill_final_min, align 8, !tbaa !123
  %buffer_fill_final = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 18
  store i64 %conv413, i64* %buffer_fill_final, align 8, !tbaa !124
  %b_vbv = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 2
  store i32 1, i32* %b_vbv, align 8, !tbaa !125
  %b_2pass414 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 1
  %61 = load i32, i32* %b_2pass414, align 4, !tbaa !81
  %tobool415 = icmp eq i32 %61, 0
  br i1 %tobool415, label %land.lhs.true416, label %land.end

land.lhs.true416:                                 ; preds = %if.end375
  %62 = load i32, i32* %i_rc_method, align 8, !tbaa !82
  %cmp420 = icmp eq i32 %62, 2
  br i1 %cmp420, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true416
  %63 = load i32, i32* %i_vbv_max_bitrate, align 4, !tbaa !89
  %i_bitrate427 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 5
  %64 = load i32, i32* %i_bitrate427, align 4, !tbaa !92
  %cmp428 = icmp sle i32 %63, %64
  %phitmp = zext i1 %cmp428 to i32
  br label %land.end

land.end:                                         ; preds = %if.end375, %land.rhs, %land.lhs.true416
  %65 = phi i32 [ 0, %land.lhs.true416 ], [ 0, %if.end375 ], [ %phitmp, %land.rhs ]
  store i32 %65, i32* %b_vbv_min_rate, align 4, !tbaa !91
  br label %cleanup435

cleanup435:                                       ; preds = %if.end22, %land.lhs.true27, %if.end352, %land.end, %if.then263, %land.lhs.true
  ret void
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.pow.f64(double, double) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: nounwind
define hidden i32 @x264_8_ratecontrol_new(%struct.x264_t* %h) local_unnamed_addr #0 {
entry:
  %t0.i.i = alloca i32, align 4
  %t1.i.i = alloca i32, align 4
  %len.i.i = alloca i32, align 4
  %saveptr.i.i = alloca i8*, align 4
  %denom = alloca i64, align 8
  %num = alloca i64, align 8
  %i361 = alloca i32, align 4
  %j362 = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %buf = alloca [5 x i8], align 1
  %buf565 = alloca [13 x i8], align 1
  %frame_number = alloca i32, align 4
  %frame_out_number = alloca i32, align 4
  %pict_type748 = alloca i8, align 4
  %qp_rc = alloca float, align 4
  %qp_aq = alloca float, align 4
  %param = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0
  %i_threads = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 1
  %0 = load i32, i32* %i_threads, align 4, !tbaa !126
  %mul = mul i32 %0, 680
  %conv = zext i32 %mul to i64
  %call = tail call i8* @x264_malloc(i64 %conv) #13
  %rc2 = getelementptr %struct.x264_t, %struct.x264_t* %h, i32 0, i32 71
  %1 = bitcast %struct.x264_ratecontrol_t** %rc2 to i8**
  store i8* %call, i8** %1, align 64, !tbaa !65
  %tobool = icmp eq i8* %call, null
  br i1 %tobool, label %cleanup1094, label %do.end

do.end:                                           ; preds = %entry
  %2 = load i32, i32* %i_threads, align 4, !tbaa !126
  %mul7 = mul i32 %2, 680
  tail call void @llvm.memset.p0i8.i32(i8* nonnull align 8 %call, i8 0, i32 %mul7, i1 false)
  %3 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc2, align 64, !tbaa !65
  %i_rc_method = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 0
  %4 = load i32, i32* %i_rc_method, align 8, !tbaa !82
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %land.end.thread, label %land.end

land.end.thread:                                  ; preds = %do.end
  %b_abr1689 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 0
  store i32 0, i32* %b_abr1689, align 8, !tbaa !118
  br label %land.end27

land.end:                                         ; preds = %do.end
  %b_stat_read = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 21
  %5 = load i32, i32* %b_stat_read, align 4, !tbaa !127
  %tobool16 = icmp eq i32 %5, 0
  %land.ext = zext i1 %tobool16 to i32
  %b_abr = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 0
  store i32 %land.ext, i32* %b_abr, align 8, !tbaa !118
  %cmp20 = icmp eq i32 %4, 2
  %tobool26 = icmp ne i32 %5, 0
  %spec.select1850 = and i1 %cmp20, %tobool26
  br label %land.end27

land.end27:                                       ; preds = %land.end, %land.end.thread
  %cmp201692 = phi i1 [ false, %land.end.thread ], [ %cmp20, %land.end ]
  %b_abr1691 = phi i32* [ %b_abr1689, %land.end.thread ], [ %b_abr, %land.end ]
  %6 = phi i1 [ false, %land.end.thread ], [ %spec.select1850, %land.end ]
  %land.ext28 = zext i1 %6 to i32
  %b_2pass = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 1
  store i32 %land.ext28, i32* %b_2pass, align 4, !tbaa !81
  %i_fps_num = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 64
  %7 = load i32, i32* %i_fps_num, align 32, !tbaa !128
  %cmp30 = icmp eq i32 %7, 0
  br i1 %cmp30, label %if.end44, label %land.lhs.true

land.lhs.true:                                    ; preds = %land.end27
  %i_fps_den = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 65
  %8 = load i32, i32* %i_fps_den, align 4, !tbaa !129
  %cmp33 = icmp eq i32 %8, 0
  br i1 %cmp33, label %if.end44, label %if.then35

if.then35:                                        ; preds = %land.lhs.true
  %conv38 = uitofp i32 %7 to float
  %conv41 = uitofp i32 %8 to float
  %div = fdiv fast float %conv38, %conv41
  %conv42 = fpext float %div to double
  br label %if.end44

if.end44:                                         ; preds = %land.end27, %land.lhs.true, %if.then35
  %.sink1878 = phi double [ %conv42, %if.then35 ], [ 2.500000e+01, %land.lhs.true ], [ 2.500000e+01, %land.end27 ]
  %fps43 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 4
  store double %.sink1878, double* %fps43, align 8, !tbaa !93
  %b_mb_tree = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 17
  %9 = load i32, i32* %b_mb_tree, align 4, !tbaa !84
  %tobool47 = icmp eq i32 %9, 0
  br i1 %tobool47, label %if.else51, label %if.then48

if.then48:                                        ; preds = %if.end44
  %f_pb_factor = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 13
  store float 1.000000e+00, float* %f_pb_factor, align 4, !tbaa !130
  br label %if.end56

if.else51:                                        ; preds = %if.end44
  %f_qcompress = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 23
  %10 = load float, float* %f_qcompress, align 4, !tbaa !85
  %conv54 = fpext float %10 to double
  br label %if.end56

if.end56:                                         ; preds = %if.else51, %if.then48
  %.sink = phi double [ %conv54, %if.else51 ], [ 1.000000e+00, %if.then48 ]
  %11 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 7
  store double %.sink, double* %11, align 8
  %i_bitrate = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 5
  %12 = load i32, i32* %i_bitrate, align 4, !tbaa !92
  %conv59 = sitofp i32 %12 to double
  %i_avcintra_class = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 27
  %13 = load i32, i32* %i_avcintra_class, align 4, !tbaa !94
  %tobool61 = icmp eq i32 %13, 0
  %cond = select fast i1 %tobool61, double 1.000000e+03, double 1.024000e+03
  %mul62 = fmul fast double %cond, %conv59
  %bitrate = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 5
  store double %mul62, double* %bitrate, align 8, !tbaa !113
  %f_rate_tolerance = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 8
  %14 = load float, float* %f_rate_tolerance, align 8, !tbaa !131
  %conv65 = fpext float %14 to double
  %rate_tolerance = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 6
  store double %conv65, double* %rate_tolerance, align 8, !tbaa !132
  %i_mb_count = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 2
  %15 = load i32, i32* %i_mb_count, align 8, !tbaa !37
  %nmb = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 8
  store i32 %15, i32* %nmb, align 8, !tbaa !133
  %last_non_b_pict_type = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 49
  store i32 -1, i32* %last_non_b_pict_type, align 8, !tbaa !134
  %cbr_decay = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 32
  store double 1.000000e+00, double* %cbr_decay, align 8, !tbaa !119
  br i1 %cmp201692, label %if.end77, label %land.lhs.true71

land.lhs.true71:                                  ; preds = %if.end56
  %b_stat_read74 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 21
  %16 = load i32, i32* %b_stat_read74, align 4, !tbaa !127
  %tobool75 = icmp eq i32 %16, 0
  br i1 %tobool75, label %if.end77, label %if.then76

if.then76:                                        ; preds = %land.lhs.true71
  tail call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i32 0, i32 0)) #13
  br label %cleanup1094

if.end77:                                         ; preds = %land.lhs.true71, %if.end56
  tail call void @x264_8_ratecontrol_init_reconfigurable(%struct.x264_t* nonnull %h, i32 1)
  %i_nal_hrd = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 13
  %17 = load i32, i32* %i_nal_hrd, align 4, !tbaa !95
  %tobool79 = icmp eq i32 %17, 0
  br i1 %tobool79, label %if.end106, label %if.then80

if.then80:                                        ; preds = %if.end77
  %18 = bitcast i64* %denom to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #13
  %i_bit_rate_unscaled = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 20, i32 21, i32 5
  %19 = load i32, i32* %i_bit_rate_unscaled, align 4, !tbaa !102
  %conv81 = sext i32 %19 to i64
  %i_time_scale = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 20, i32 17
  %20 = load i32, i32* %i_time_scale, align 4, !tbaa !107
  %conv85 = zext i32 %20 to i64
  %mul86 = mul nsw i64 %conv85, %conv81
  store i64 %mul86, i64* %denom, align 8, !tbaa !54
  %21 = bitcast i64* %num to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %21) #13
  store i64 90000, i64* %num, align 8, !tbaa !54
  call void @x264_reduce_fraction64(i64* nonnull %num, i64* nonnull %denom) #13
  %22 = load i64, i64* %num, align 8, !tbaa !54
  %div87 = udiv i64 90000, %22
  %hrd_multiply_denom = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 73
  store i64 %div87, i64* %hrd_multiply_denom, align 8, !tbaa !135
  %conv88 = uitofp i64 %22 to double
  %23 = call fast double @llvm.log2.f64(double %conv88)
  %24 = load i32, i32* %i_time_scale, align 4, !tbaa !107
  %conv93 = uitofp i32 %24 to double
  %25 = call fast double @llvm.log2.f64(double %conv93)
  %add = fadd fast double %25, %23
  %i_cpb_size_unscaled = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 20, i32 21, i32 6
  %26 = load i32, i32* %i_cpb_size_unscaled, align 4, !tbaa !105
  %conv98 = sitofp i32 %26 to double
  %27 = call fast double @llvm.log2.f64(double %conv98)
  %add99 = fadd fast double %add, %27
  %cmp100 = fcmp fast ult double %add99, 6.300000e+01
  br i1 %cmp100, label %cleanup, label %if.then102

if.then102:                                       ; preds = %if.then80
  call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 0, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i32 0, i32 0)) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #13
  br label %cleanup1094

cleanup:                                          ; preds = %if.then80
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #13
  br label %if.end106

if.end106:                                        ; preds = %cleanup, %if.end77
  %28 = load double, double* %rate_tolerance, align 8, !tbaa !132
  %cmp108 = fcmp fast olt double %28, 1.000000e-02
  br i1 %cmp108, label %if.then110, label %if.end112

if.then110:                                       ; preds = %if.end106
  call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i32 0, i32 0)) #13
  store double 1.000000e-02, double* %rate_tolerance, align 8, !tbaa !132
  br label %if.end112

if.end112:                                        ; preds = %if.then110, %if.end106
  %b_vbv = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 2
  %29 = load i32, i32* %b_vbv, align 8, !tbaa !125
  %tobool113 = icmp eq i32 %29, 0
  br i1 %tobool113, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %if.end112
  %i_aq_mode = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 15
  %30 = load i32, i32* %i_aq_mode, align 4, !tbaa !2
  %tobool116 = icmp ne i32 %30, 0
  br label %lor.end

lor.end:                                          ; preds = %if.end112, %lor.rhs
  %31 = phi i1 [ true, %if.end112 ], [ %tobool116, %lor.rhs ]
  %lor.ext = zext i1 %31 to i32
  %b_variable_qp = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 97
  store i32 %lor.ext, i32* %b_variable_qp, align 16, !tbaa !136
  %32 = load i32, i32* %b_abr1691, align 8, !tbaa !118
  %tobool119 = icmp eq i32 %32, 0
  br i1 %tobool119, label %if.end144, label %if.then120

if.then120:                                       ; preds = %lor.end
  %accum_p_norm = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 51
  store double 1.000000e-02, double* %accum_p_norm, align 8, !tbaa !137
  %33 = load i32, i32* %i_rc_method, align 8, !tbaa !82
  %cmp124 = icmp eq i32 %33, 1
  br i1 %cmp124, label %cond.true, label %cond.end

cond.true:                                        ; preds = %if.then120
  %f_rf_constant = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 6
  %34 = load float, float* %f_rf_constant, align 8, !tbaa !87
  br label %cond.end

cond.end:                                         ; preds = %if.then120, %cond.true
  %cond128 = phi fast float [ %34, %cond.true ], [ 2.400000e+01, %if.then120 ]
  %conv130 = fpext float %cond128 to double
  %mul132 = fmul fast double %conv130, 1.000000e-02
  %accum_p_qp = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 50
  store double %mul132, double* %accum_p_qp, align 8, !tbaa !138
  %35 = load double, double* %11, align 8, !tbaa !86
  %mul1576 = fmul fast double %35, 0x40336AC035D686AC
  %exp21577 = call fast double @llvm.exp2.f64(double %mul1576)
  %mul134 = fmul fast double %exp21577, 1.000000e-02
  %36 = load i32, i32* %i_mb_count, align 8, !tbaa !37
  %conv137 = sitofp i32 %36 to double
  %sqrt = call fast double @llvm.sqrt.f64(double %conv137)
  %mul138 = fmul fast double %mul134, %sqrt
  %cplxr_sum = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 28
  store double %mul138, double* %cplxr_sum, align 8, !tbaa !139
  %37 = load double, double* %bitrate, align 8, !tbaa !113
  %fps141 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 4
  %38 = load double, double* %fps141, align 8, !tbaa !93
  %div142 = fdiv fast double %37, %38
  %wanted_bits_window = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 31
  store double %div142, double* %wanted_bits_window, align 8, !tbaa !140
  store i32 2, i32* %last_non_b_pict_type, align 8, !tbaa !134
  br label %if.end144

if.end144:                                        ; preds = %lor.end, %cond.end
  %f_ip_factor = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 12
  %39 = load float, float* %f_ip_factor, align 8, !tbaa !141
  %40 = call fast float @llvm.log2.f32(float %39)
  %conv147 = fpext float %40 to double
  %mul148 = fmul fast double %conv147, 6.000000e+00
  %ip_offset = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 36
  store double %mul148, double* %ip_offset, align 8, !tbaa !142
  %f_pb_factor151 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 13
  %41 = load float, float* %f_pb_factor151, align 4, !tbaa !130
  %42 = call fast float @llvm.log2.f32(float %41)
  %conv152 = fpext float %42 to double
  %mul153 = fmul fast double %conv152, 6.000000e+00
  %pb_offset = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 37
  store double %mul153, double* %pb_offset, align 8, !tbaa !143
  %i_qp_constant = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 1
  %43 = load i32, i32* %i_qp_constant, align 4, !tbaa !144
  %arrayidx = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 9, i32 0
  store i32 %43, i32* %arrayidx, align 4, !tbaa !55
  %44 = load i32, i32* %i_qp_constant, align 4, !tbaa !144
  %conv159 = sitofp i32 %44 to double
  %sub = fsub fast double 5.000000e-01, %mul148
  %add161 = fadd fast double %sub, %conv159
  %conv162 = fptosi double %add161 to i32
  %45 = icmp slt i32 %conv162, 69
  %cond.i = select i1 %45, i32 %conv162, i32 69
  %46 = icmp sgt i32 %cond.i, 0
  %cond5.i = select i1 %46, i32 %cond.i, i32 0
  %arrayidx165 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 9, i32 2
  store i32 %cond5.i, i32* %arrayidx165, align 4, !tbaa !55
  %47 = load i32, i32* %i_qp_constant, align 4, !tbaa !144
  %conv169 = sitofp i32 %47 to double
  %add171 = fadd fast double %mul153, 5.000000e-01
  %add172 = fadd fast double %add171, %conv169
  %conv173 = fptosi double %add172 to i32
  %48 = icmp slt i32 %conv173, 69
  %cond.i1592 = select i1 %48, i32 %conv173, i32 69
  %49 = icmp sgt i32 %cond.i1592, 0
  %cond5.i1593 = select i1 %49, i32 %cond.i1592, i32 0
  %arrayidx176 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 9, i32 1
  store i32 %cond5.i1593, i32* %arrayidx176, align 4, !tbaa !55
  %add178 = fadd fast double %mul148, 5.000000e-01
  %conv179 = fptosi double %add178 to i32
  %ip_offset181 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 87
  store i32 %conv179, i32* %ip_offset181, align 4, !tbaa !145
  %i_qp_step = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 4
  %50 = load i32, i32* %i_qp_step, align 8, !tbaa !146
  %conv184 = sitofp i32 %50 to double
  %div185 = fmul fast double %conv184, 0x3FC5555555555555
  %exp2 = call fast double @llvm.exp2.f64(double %div185)
  %lstep = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 55
  store double %exp2, double* %lstep, align 8, !tbaa !147
  %last_qscale = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 47
  store double 0x4011228AC0000000, double* %last_qscale, align 8, !tbaa !148
  %b_sliced_threads = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 3
  %51 = load i32, i32* %b_sliced_threads, align 4, !tbaa !149
  %52 = load i32, i32* %i_threads, align 4, !tbaa !126
  %mul191 = mul i32 %52, %51
  %53 = mul i32 %mul191, 100
  %mul194 = add i32 %53, 100
  %conv195 = zext i32 %mul194 to i64
  %call196 = call i8* @x264_malloc(i64 %conv195) #13
  %pred = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 23
  %54 = bitcast %struct.predictor_t** %pred to i8**
  store i8* %call196, i8** %54, align 8, !tbaa !150
  %tobool198 = icmp eq i8* %call196, null
  br i1 %tobool198, label %cleanup1094, label %do.body203

do.body203:                                       ; preds = %if.end144
  %call204 = call i8* @x264_malloc(i64 20) #13
  %pred_b_from_p = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 63
  %55 = bitcast %struct.predictor_t** %pred_b_from_p to i8**
  store i8* %call204, i8** %55, align 4, !tbaa !151
  %tobool206 = icmp eq i8* %call204, null
  br i1 %tobool206, label %cleanup1094, label %for.cond.preheader

for.cond.preheader:                               ; preds = %do.body203
  %56 = load i32, i32* %i_rc_method, align 8, !tbaa !82
  %cmp216 = icmp eq i32 %56, 1
  %i_qp_min = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 2
  %57 = load i32, i32* %i_qp_min, align 8, !tbaa !152
  %conv231 = sitofp i32 %57 to float
  %58 = fmul fast float %conv231, 0x3FC5555560000000
  %div.i1606 = fadd fast float %58, -2.000000e+00
  %exp2.i1607 = call fast float @llvm.exp2.f32(float %div.i1606) #13
  %mul.i1608 = fmul fast float %exp2.i1607, 0x3FEB333340000000
  %conv233 = fpext float %mul.i1608 to double
  %i_qp_max = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 3
  %59 = load i32, i32* %i_qp_max, align 4, !tbaa !153
  %conv237 = sitofp i32 %59 to float
  %60 = fmul fast float %conv237, 0x3FC5555560000000
  %div.i1609 = fadd fast float %60, -2.000000e+00
  %exp2.i1610 = call fast float @llvm.exp2.f32(float %div.i1609) #13
  %mul.i1611 = fmul fast float %exp2.i1610, 0x3FEB333340000000
  %conv239 = fpext float %mul.i1611 to double
  %cmp2421771 = icmp slt i32 %mul191, 0
  br i1 %cmp216, label %for.body.us.preheader, label %for.body.preheader

for.body.preheader:                               ; preds = %for.cond.preheader
  %arrayidx228 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 48, i32 0
  store double 0x400B333340000000, double* %arrayidx228, align 8, !tbaa !154
  %arrayidx234 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 53, i32 0
  store double %conv233, double* %arrayidx234, align 8, !tbaa !154
  %arrayidx240 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 54, i32 0
  store double %conv239, double* %arrayidx240, align 8, !tbaa !154
  br i1 %cmp2421771, label %for.cond271.preheader, label %for.body245.lr.ph

for.body.us.preheader:                            ; preds = %for.cond.preheader
  %f_rf_constant221 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 6
  %61 = load float, float* %f_rf_constant221, align 8, !tbaa !87
  %62 = fmul fast float %61, 0x3FC5555560000000
  %div.i1604.us = fadd fast float %62, -2.000000e+00
  %exp2.i.us = call fast float @llvm.exp2.f32(float %div.i1604.us) #13
  %mul.i1605.us = fmul fast float %exp2.i.us, 0x3FEB333340000000
  %conv227.us = fpext float %mul.i1605.us to double
  %arrayidx228.us = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 48, i32 0
  store double %conv227.us, double* %arrayidx228.us, align 8, !tbaa !154
  %arrayidx234.us = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 53, i32 0
  store double %conv233, double* %arrayidx234.us, align 8, !tbaa !154
  %arrayidx240.us = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 54, i32 0
  store double %conv239, double* %arrayidx240.us, align 8, !tbaa !154
  br i1 %cmp2421771, label %for.cond271.preheader.us, label %for.body245.lr.ph.us

for.body245.us:                                   ; preds = %for.body245.us, %for.body245.lr.ph.us
  %j.01772.us = phi i32 [ 0, %for.body245.lr.ph.us ], [ %inc.us, %for.body245.us ]
  %mul249.us = mul nuw nsw i32 %j.01772.us, 5
  %coeff_min.us = getelementptr inbounds %struct.predictor_t, %struct.predictor_t* %63, i32 %mul249.us, i32 0
  store float 5.000000e-01, float* %coeff_min.us, align 4, !tbaa !155
  %coeff.us = getelementptr inbounds %struct.predictor_t, %struct.predictor_t* %63, i32 %mul249.us, i32 1
  store float 1.000000e+00, float* %coeff.us, align 4, !tbaa !157
  %count.us = getelementptr inbounds %struct.predictor_t, %struct.predictor_t* %63, i32 %mul249.us, i32 2
  store float 1.000000e+00, float* %count.us, align 4, !tbaa !158
  %decay.us = getelementptr inbounds %struct.predictor_t, %struct.predictor_t* %63, i32 %mul249.us, i32 3
  store float 5.000000e-01, float* %decay.us, align 4, !tbaa !159
  %offset.us = getelementptr inbounds %struct.predictor_t, %struct.predictor_t* %63, i32 %mul249.us, i32 4
  store float 0.000000e+00, float* %offset.us, align 4, !tbaa !160
  %inc.us = add nuw i32 %j.01772.us, 1
  %exitcond1803 = icmp eq i32 %j.01772.us, %mul191
  br i1 %exitcond1803, label %for.cond271.preheader.us, label %for.body245.us

for.cond271.preheader.us:                         ; preds = %for.body245.us, %for.body.us.preheader
  %coeff_min278.us = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 62, i32 0, i32 0, i32 0
  store float 6.250000e-02, float* %coeff_min278.us, align 4, !tbaa !155
  %coeff282.us = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 62, i32 0, i32 0, i32 1
  store float 2.500000e-01, float* %coeff282.us, align 4, !tbaa !157
  %count286.us = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 62, i32 0, i32 0, i32 2
  store float 1.000000e+00, float* %count286.us, align 4, !tbaa !158
  %decay290.us = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 62, i32 0, i32 0, i32 3
  store float 5.000000e-01, float* %decay290.us, align 4, !tbaa !159
  %offset294.us = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 62, i32 0, i32 0, i32 4
  store float 0.000000e+00, float* %offset294.us, align 4, !tbaa !160
  %coeff_min278.us.1 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 62, i32 0, i32 1, i32 0
  store float 6.250000e-02, float* %coeff_min278.us.1, align 4, !tbaa !155
  %coeff282.us.1 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 62, i32 0, i32 1, i32 1
  store float 2.500000e-01, float* %coeff282.us.1, align 4, !tbaa !157
  %count286.us.1 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 62, i32 0, i32 1, i32 2
  store float 1.000000e+00, float* %count286.us.1, align 4, !tbaa !158
  %decay290.us.1 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 62, i32 0, i32 1, i32 3
  store float 5.000000e-01, float* %decay290.us.1, align 4, !tbaa !159
  %offset294.us.1 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 62, i32 0, i32 1, i32 4
  store float 0.000000e+00, float* %offset294.us.1, align 4, !tbaa !160
  %arrayidx228.us.1 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 48, i32 1
  store double %conv227.us, double* %arrayidx228.us.1, align 8, !tbaa !154
  %arrayidx234.us.1 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 53, i32 1
  store double %conv233, double* %arrayidx234.us.1, align 8, !tbaa !154
  %arrayidx240.us.1 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 54, i32 1
  store double %conv239, double* %arrayidx240.us.1, align 8, !tbaa !154
  br i1 %cmp2421771, label %for.cond271.preheader.us.1, label %for.body245.lr.ph.us.1

for.body245.lr.ph.us:                             ; preds = %for.body.us.preheader
  %63 = load %struct.predictor_t*, %struct.predictor_t** %pred, align 8, !tbaa !150
  br label %for.body245.us

for.cond.cleanup:                                 ; preds = %for.body245.2, %for.body245.us.2, %for.cond271.preheader.1, %for.cond271.preheader.us.1
  %coeff_min278.2 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 62, i32 2, i32 0, i32 0
  store float 6.250000e-02, float* %coeff_min278.2, align 4, !tbaa !155
  %coeff282.2 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 62, i32 2, i32 0, i32 1
  store float 2.500000e-01, float* %coeff282.2, align 4, !tbaa !157
  %count286.2 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 62, i32 2, i32 0, i32 2
  store float 1.000000e+00, float* %count286.2, align 4, !tbaa !158
  %decay290.2 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 62, i32 2, i32 0, i32 3
  store float 5.000000e-01, float* %decay290.2, align 4, !tbaa !159
  %offset294.2 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 62, i32 2, i32 0, i32 4
  store float 0.000000e+00, float* %offset294.2, align 4, !tbaa !160
  %coeff_min278.1.2 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 62, i32 2, i32 1, i32 0
  store float 6.250000e-02, float* %coeff_min278.1.2, align 4, !tbaa !155
  %coeff282.1.2 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 62, i32 2, i32 1, i32 1
  store float 2.500000e-01, float* %coeff282.1.2, align 4, !tbaa !157
  %count286.1.2 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 62, i32 2, i32 1, i32 2
  store float 1.000000e+00, float* %count286.1.2, align 4, !tbaa !158
  %decay290.1.2 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 62, i32 2, i32 1, i32 3
  store float 5.000000e-01, float* %decay290.1.2, align 4, !tbaa !159
  %offset294.1.2 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 62, i32 2, i32 1, i32 4
  store float 0.000000e+00, float* %offset294.1.2, align 4, !tbaa !160
  %coeff_min304 = bitcast i8* %call204 to float*
  store float 2.500000e-01, float* %coeff_min304, align 4, !tbaa !155
  %coeff306 = getelementptr inbounds i8, i8* %call204, i32 4
  %64 = bitcast i8* %coeff306 to float*
  store float 5.000000e-01, float* %64, align 4, !tbaa !157
  %count308 = getelementptr inbounds i8, i8* %call204, i32 8
  %65 = bitcast i8* %count308 to float*
  store float 1.000000e+00, float* %65, align 4, !tbaa !158
  %decay310 = getelementptr inbounds i8, i8* %call204, i32 12
  %66 = bitcast i8* %decay310 to float*
  store float 5.000000e-01, float* %66, align 4, !tbaa !159
  %offset312 = getelementptr inbounds i8, i8* %call204, i32 16
  %67 = bitcast i8* %offset312 to float*
  store float 0.000000e+00, float* %67, align 4, !tbaa !160
  %68 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc2, align 64, !tbaa !65
  %psz_zones.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 28
  %69 = load i8*, i8** %psz_zones.i, align 8, !tbaa !161
  %tobool.i1594 = icmp eq i8* %69, null
  br i1 %tobool.i1594, label %if.end68.i, label %land.lhs.true.i1595

land.lhs.true.i1595:                              ; preds = %for.cond.cleanup
  %i_zones.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 27
  %70 = load i32, i32* %i_zones.i, align 4, !tbaa !162
  %tobool5.i = icmp eq i32 %70, 0
  br i1 %tobool5.i, label %if.then.i1599, label %if.end68.i

if.then.i1599:                                    ; preds = %land.lhs.true.i1595
  %call.i1596 = call i32 @strlen(i8* nonnull %69) #14
  %add.i1597 = add i32 %call.i1596, 1
  %conv.i1598 = zext i32 %add.i1597 to i64
  %call10.i = call i8* @x264_malloc(i64 %conv.i1598) #13
  %tobool11.i = icmp eq i8* %call10.i, null
  br i1 %tobool11.i, label %if.then316, label %do.end.i1600

do.end.i1600:                                     ; preds = %if.then.i1599
  %71 = load i8*, i8** %psz_zones.i, align 8, !tbaa !161
  %call16.i = call i8* @strcpy(i8* nonnull %call10.i, i8* nonnull dereferenceable(1) %71) #13
  store i32 1, i32* %i_zones.i, align 4, !tbaa !162
  %72 = load i8, i8* %call10.i, align 1, !tbaa !46
  %tobool20320.i = icmp eq i8 %72, 0
  br i1 %tobool20320.i, label %do.body27.i, label %for.body.i

for.body.i:                                       ; preds = %do.end.i1600, %for.body.i
  %73 = phi i32 [ %add26.i, %for.body.i ], [ 1, %do.end.i1600 ]
  %74 = phi i8 [ %75, %for.body.i ], [ %72, %do.end.i1600 ]
  %p.0321.i = phi i8* [ %incdec.ptr.i, %for.body.i ], [ %call10.i, %do.end.i1600 ]
  %cmp.i1601 = icmp eq i8 %74, 47
  %conv22.i = zext i1 %cmp.i1601 to i32
  %add26.i = add nuw nsw i32 %73, %conv22.i
  store i32 %add26.i, i32* %i_zones.i, align 4, !tbaa !162
  %incdec.ptr.i = getelementptr inbounds i8, i8* %p.0321.i, i32 1
  %75 = load i8, i8* %incdec.ptr.i, align 1, !tbaa !46
  %tobool20.i = icmp eq i8 %75, 0
  br i1 %tobool20.i, label %do.body27.loopexit.i, label %for.body.i

do.body27.loopexit.i:                             ; preds = %for.body.i
  %phitmp.i = mul i32 %add26.i, 24
  %phitmp332.i = zext i32 %phitmp.i to i64
  br label %do.body27.i

do.body27.i:                                      ; preds = %do.body27.loopexit.i, %do.end.i1600
  %76 = phi i64 [ %phitmp332.i, %do.body27.loopexit.i ], [ 24, %do.end.i1600 ]
  %call32.i = call i8* @x264_malloc(i64 %76) #13
  %zones.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 26
  %77 = bitcast %struct.x264_zone_t** %zones.i to i8**
  store i8* %call32.i, i8** %77, align 8, !tbaa !163
  %tobool38.i = icmp eq i8* %call32.i, null
  br i1 %tobool38.i, label %if.then316, label %for.cond43.preheader.i

for.cond43.preheader.i:                           ; preds = %do.body27.i
  %78 = load i32, i32* %i_zones.i, align 4, !tbaa !162
  %cmp47315.i = icmp sgt i32 %78, 0
  br i1 %cmp47315.i, label %for.body49.lr.ph.i, label %cleanup64.i

for.body49.lr.ph.i:                               ; preds = %for.cond43.preheader.i
  %79 = bitcast i32* %len.i.i to i8*
  %80 = bitcast i8** %saveptr.i.i to i8*
  %81 = bitcast %struct.x264_t* %h to i8*
  br label %for.body49.i

for.body49.i:                                     ; preds = %for.inc60.i, %for.body49.lr.ph.i
  %p.1318.i = phi i8* [ %call10.i, %for.body49.lr.ph.i ], [ %add.ptr.i, %for.inc60.i ]
  %i.0316.i = phi i32 [ 0, %for.body49.lr.ph.i ], [ %inc.i, %for.inc60.i ]
  %call50.i = call i32 @strcspn(i8* %p.1318.i, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.96, i32 0, i32 0)) #14
  %arrayidx.i1602 = getelementptr inbounds i8, i8* %p.1318.i, i32 %call50.i
  store i8 0, i8* %arrayidx.i1602, align 1, !tbaa !46
  %82 = load %struct.x264_zone_t*, %struct.x264_zone_t** %zones.i, align 8, !tbaa !163
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %79) #13
  store i32 0, i32* %len.i.i, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %80) #13
  store i8* null, i8** %saveptr.i.i, align 4, !tbaa !59
  %param.i.i = getelementptr inbounds %struct.x264_zone_t, %struct.x264_zone_t* %82, i32 %i.0316.i, i32 5
  store %struct.x264_param_t* null, %struct.x264_param_t** %param.i.i, align 4, !tbaa !164
  %f_bitrate_factor.i.i = getelementptr inbounds %struct.x264_zone_t, %struct.x264_zone_t* %82, i32 %i.0316.i, i32 4
  store float 1.000000e+00, float* %f_bitrate_factor.i.i, align 4, !tbaa !166
  %i_start.i.i = getelementptr inbounds %struct.x264_zone_t, %struct.x264_zone_t* %82, i32 %i.0316.i, i32 0
  %i_end.i.i = getelementptr inbounds %struct.x264_zone_t, %struct.x264_zone_t* %82, i32 %i.0316.i, i32 1
  %i_qp.i.i = getelementptr inbounds %struct.x264_zone_t, %struct.x264_zone_t* %82, i32 %i.0316.i, i32 3
  %call.i.i = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %p.1318.i, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.99, i32 0, i32 0), i32* %i_start.i.i, i32* nonnull %i_end.i.i, i32* nonnull %i_qp.i.i, i32* nonnull %len.i.i) #13
  %cmp.i.i = icmp sgt i32 %call.i.i, 2
  br i1 %cmp.i.i, label %if.end17.i.i, label %if.else.i.i

if.else.i.i:                                      ; preds = %for.body49.i
  %call4.i.i = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %p.1318.i, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.100, i32 0, i32 0), i32* %i_start.i.i, i32* nonnull %i_end.i.i, float* nonnull %f_bitrate_factor.i.i, i32* nonnull %len.i.i) #13
  %cmp5.i.i = icmp sgt i32 %call4.i.i, 2
  br i1 %cmp5.i.i, label %if.end17.i.i, label %if.else8.i.i

if.else8.i.i:                                     ; preds = %if.else.i.i
  %call11.i.i = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %p.1318.i, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.101, i32 0, i32 0), i32* %i_start.i.i, i32* nonnull %i_end.i.i, i32* nonnull %len.i.i) #13
  %cmp12.i.i = icmp sgt i32 %call11.i.i, 1
  br i1 %cmp12.i.i, label %if.end17.i.i, label %if.else15.i.i

if.else15.i.i:                                    ; preds = %if.else8.i.i
  call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.102, i32 0, i32 0), i8* nonnull %p.1318.i) #13
  br label %cleanup61.i

if.end17.i.i:                                     ; preds = %if.else8.i.i, %if.else.i.i, %for.body49.i
  %.sink1879 = phi i32 [ 1, %for.body49.i ], [ 0, %if.else.i.i ], [ 0, %if.else8.i.i ]
  %b_force_qp14.i.i = getelementptr inbounds %struct.x264_zone_t, %struct.x264_zone_t* %82, i32 %i.0316.i, i32 2
  store i32 %.sink1879, i32* %b_force_qp14.i.i, align 4, !tbaa !167
  %83 = load i32, i32* %len.i.i, align 4, !tbaa !55
  %add.ptr.i.i = getelementptr inbounds i8, i8* %p.1318.i, i32 %83
  %84 = load i8, i8* %add.ptr.i.i, align 1, !tbaa !46
  %tobool.i.i = icmp eq i8 %84, 0
  br i1 %tobool.i.i, label %for.inc60.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end17.i.i
  %call20.i.i = call i8* @x264_malloc(i64 944) #13
  %85 = bitcast %struct.x264_param_t** %param.i.i to i8**
  store i8* %call20.i.i, i8** %85, align 4, !tbaa !164
  %tobool23.i.i = icmp eq i8* %call20.i.i, null
  br i1 %tobool23.i.i, label %cleanup61.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 8 dereferenceable(944) %call20.i.i, i8* nonnull align 64 dereferenceable(944) %81, i32 944, i1 false) #13
  %86 = load %struct.x264_param_t*, %struct.x264_param_t** %param.i.i, align 4, !tbaa !164
  %opaque.i.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %86, i32 0, i32 83
  store i8* null, i8** %opaque.i.i, align 4, !tbaa !168
  %param_free.i.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %86, i32 0, i32 81
  store void (i8*)* @x264_free, void (i8*)** %param_free.i.i, align 4, !tbaa !169
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %if.end35.i.i, %do.end.i.i
  %p.addr.0.i.i = phi i8* [ %add.ptr.i.i, %do.end.i.i ], [ null, %if.end35.i.i ]
  %call30.i.i = call i8* @strtok_r(i8* %p.addr.0.i.i, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.103, i32 0, i32 0), i8** nonnull %saveptr.i.i) #13
  %tobool31.i.i = icmp eq i8* %call30.i.i, null
  br i1 %tobool31.i.i, label %for.inc60.i, label %while.body.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %call32.i.i = call i8* @strchr(i8* nonnull %call30.i.i, i32 61) #14
  %tobool33.i.i = icmp eq i8* %call32.i.i, null
  br i1 %tobool33.i.i, label %if.end35.i.i, label %if.then34.i.i

if.then34.i.i:                                    ; preds = %while.body.i.i
  store i8 0, i8* %call32.i.i, align 1, !tbaa !46
  %incdec.ptr.i.i = getelementptr inbounds i8, i8* %call32.i.i, i32 1
  br label %if.end35.i.i

if.end35.i.i:                                     ; preds = %if.then34.i.i, %while.body.i.i
  %val.0.i.i = phi i8* [ %incdec.ptr.i.i, %if.then34.i.i ], [ null, %while.body.i.i ]
  %87 = load %struct.x264_param_t*, %struct.x264_param_t** %param.i.i, align 4, !tbaa !164
  %call37.i.i = call i32 @x264_param_parse(%struct.x264_param_t* %87, i8* nonnull %call30.i.i, i8* %val.0.i.i) #13
  %tobool38.i.i = icmp eq i32 %call37.i.i, 0
  br i1 %tobool38.i.i, label %while.cond.i.i, label %cleanup.thread.i.i

cleanup.thread.i.i:                               ; preds = %if.end35.i.i
  call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* %h, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.104, i32 0, i32 0), i8* nonnull %call30.i.i, i8* %val.0.i.i) #13
  br label %cleanup61.i

for.inc60.i:                                      ; preds = %while.cond.i.i, %if.end17.i.i
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %80) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %79) #13
  %add59.i = add nsw i32 %call50.i, 1
  %add.ptr.i = getelementptr inbounds i8, i8* %p.1318.i, i32 %add59.i
  %inc.i = add nuw nsw i32 %i.0316.i, 1
  %88 = load i32, i32* %i_zones.i, align 4, !tbaa !162
  %cmp47.i = icmp slt i32 %inc.i, %88
  br i1 %cmp47.i, label %for.body49.i, label %cleanup64.i

cleanup61.i:                                      ; preds = %do.body.i.i, %cleanup.thread.i.i, %if.else15.i.i
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %80) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %79) #13
  call void @x264_free(i8* nonnull %call10.i) #13
  br label %if.then316

cleanup64.i:                                      ; preds = %for.inc60.i, %for.cond43.preheader.i
  call void @x264_free(i8* nonnull %call10.i) #13
  br label %if.end68.i

if.end68.i:                                       ; preds = %cleanup64.i, %land.lhs.true.i1595, %for.cond.cleanup
  %i_zones71.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 27
  %89 = load i32, i32* %i_zones71.i, align 4, !tbaa !162
  %cmp72.i = icmp sgt i32 %89, 0
  br i1 %cmp72.i, label %for.body83.lr.ph.i, label %if.end317

for.body83.lr.ph.i:                               ; preds = %if.end68.i
  %zones86.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 26
  %90 = load %struct.x264_zone_t*, %struct.x264_zone_t** %zones86.i, align 8, !tbaa !163
  br label %for.body83.i

for.cond76.i:                                     ; preds = %if.else.i
  %exitcond1802 = icmp eq i32 %inc109.i, %89
  br i1 %exitcond1802, label %for.end112.i, label %for.body83.i

for.body83.i:                                     ; preds = %for.cond76.i, %for.body83.lr.ph.i
  %i75.0314.i = phi i32 [ 0, %for.body83.lr.ph.i ], [ %inc109.i, %for.cond76.i ]
  %z.sroa.0.0..sroa_idx.i = getelementptr inbounds %struct.x264_zone_t, %struct.x264_zone_t* %90, i32 %i75.0314.i, i32 0
  %z.sroa.0.0.copyload.i = load i32, i32* %z.sroa.0.0..sroa_idx.i, align 4, !tbaa.struct !170
  %z.sroa.6.0..sroa_idx204.i = getelementptr inbounds %struct.x264_zone_t, %struct.x264_zone_t* %90, i32 %i75.0314.i, i32 1
  %z.sroa.6.0.copyload.i = load i32, i32* %z.sroa.6.0..sroa_idx204.i, align 4, !tbaa.struct !170
  %z.sroa.9211.0..sroa_idx212.i = getelementptr inbounds %struct.x264_zone_t, %struct.x264_zone_t* %90, i32 %i75.0314.i, i32 4
  %z.sroa.9211.0.copyload.i = load float, float* %z.sroa.9211.0..sroa_idx212.i, align 4, !tbaa.struct !170
  %cmp88.i = icmp slt i32 %z.sroa.0.0.copyload.i, 0
  %cmp91.i = icmp sgt i32 %z.sroa.0.0.copyload.i, %z.sroa.6.0.copyload.i
  %or.cond.i1603 = or i1 %cmp88.i, %cmp91.i
  br i1 %or.cond.i1603, label %if.then93.i, label %if.else.i

if.then93.i:                                      ; preds = %for.body83.i
  call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.97, i32 0, i32 0), i32 %z.sroa.0.0.copyload.i, i32 %z.sroa.6.0.copyload.i) #13
  br label %if.then316

if.else.i:                                        ; preds = %for.body83.i
  %z.sroa.8.0..sroa_idx207.i = getelementptr inbounds %struct.x264_zone_t, %struct.x264_zone_t* %90, i32 %i75.0314.i, i32 2
  %z.sroa.8.0.copyload.i = load i32, i32* %z.sroa.8.0..sroa_idx207.i, align 4, !tbaa.struct !170
  %tobool96.i = icmp ne i32 %z.sroa.8.0.copyload.i, 0
  %cmp98.i = fcmp fast ugt float %z.sroa.9211.0.copyload.i, 0.000000e+00
  %or.cond283.i = or i1 %cmp98.i, %tobool96.i
  %inc109.i = add nuw nsw i32 %i75.0314.i, 1
  br i1 %or.cond283.i, label %for.cond76.i, label %if.then100.i

if.then100.i:                                     ; preds = %if.else.i
  %conv102.i = fpext float %z.sroa.9211.0.copyload.i to double
  call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* %h, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.98, i32 0, i32 0), double %conv102.i) #13
  br label %if.then316

for.end112.i:                                     ; preds = %for.cond76.i
  %add116.i = add nsw i32 %89, 1
  %i_zones117.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %68, i32 0, i32 66
  store i32 %add116.i, i32* %i_zones117.i, align 8, !tbaa !171
  %mul120.i = mul i32 %add116.i, 24
  %conv121.i = zext i32 %mul120.i to i64
  %call122.i = call i8* @x264_malloc(i64 %conv121.i) #13
  %zones123.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %68, i32 0, i32 67
  %91 = bitcast %struct.x264_zone_t** %zones123.i to i8**
  store i8* %call122.i, i8** %91, align 4, !tbaa !172
  %tobool125.i = icmp eq i8* %call122.i, null
  br i1 %tobool125.i, label %if.then316, label %do.end129.i

do.end129.i:                                      ; preds = %for.end112.i
  %add.ptr131.i = getelementptr inbounds i8, i8* %call122.i, i32 24
  %92 = bitcast %struct.x264_zone_t** %zones86.i to i8**
  %93 = load i8*, i8** %92, align 8, !tbaa !163
  %94 = load i32, i32* %i_zones117.i, align 8, !tbaa !171
  %95 = mul i32 %94, 24
  %mul136.i = add i32 %95, -24
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 %add.ptr131.i, i8* align 4 %93, i32 %mul136.i, i1 false) #13
  %96 = load %struct.x264_zone_t*, %struct.x264_zone_t** %zones123.i, align 4, !tbaa !172
  %i_start139.i = getelementptr inbounds %struct.x264_zone_t, %struct.x264_zone_t* %96, i32 0, i32 0
  store i32 0, i32* %i_start139.i, align 4, !tbaa !173
  %i_end142.i = getelementptr inbounds %struct.x264_zone_t, %struct.x264_zone_t* %96, i32 0, i32 1
  store i32 2147483647, i32* %i_end142.i, align 4, !tbaa !174
  %b_force_qp145.i = getelementptr inbounds %struct.x264_zone_t, %struct.x264_zone_t* %96, i32 0, i32 2
  store i32 0, i32* %b_force_qp145.i, align 4, !tbaa !167
  %f_bitrate_factor148.i = getelementptr inbounds %struct.x264_zone_t, %struct.x264_zone_t* %96, i32 0, i32 4
  store float 1.000000e+00, float* %f_bitrate_factor148.i, align 4, !tbaa !166
  %call150.i = call i8* @x264_malloc(i64 944) #13
  %97 = load %struct.x264_zone_t*, %struct.x264_zone_t** %zones123.i, align 4, !tbaa !172
  %param153.i = getelementptr inbounds %struct.x264_zone_t, %struct.x264_zone_t* %97, i32 0, i32 5
  %98 = bitcast %struct.x264_param_t** %param153.i to i8**
  store i8* %call150.i, i8** %98, align 4, !tbaa !164
  %tobool157.i = icmp eq i8* %call150.i, null
  br i1 %tobool157.i, label %if.then316, label %do.end161.i

do.end161.i:                                      ; preds = %do.end129.i
  %99 = bitcast %struct.x264_t* %h to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 8 dereferenceable(944) %call150.i, i8* nonnull align 64 dereferenceable(944) %99, i32 944, i1 false) #13
  %100 = load %struct.x264_zone_t*, %struct.x264_zone_t** %zones123.i, align 4, !tbaa !172
  %param168.i = getelementptr inbounds %struct.x264_zone_t, %struct.x264_zone_t* %100, i32 0, i32 5
  %101 = load %struct.x264_param_t*, %struct.x264_param_t** %param168.i, align 4, !tbaa !164
  %opaque.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %101, i32 0, i32 83
  store i8* null, i8** %opaque.i, align 4, !tbaa !168
  %102 = load i32, i32* %i_zones117.i, align 8, !tbaa !171
  %cmp172311.i = icmp sgt i32 %102, 1
  br i1 %cmp172311.i, label %for.body175.lr.ph.i, label %if.end317

for.body175.lr.ph.i:                              ; preds = %do.end161.i
  %103 = bitcast %struct.x264_param_t** %param168.i to i32*
  br label %for.body175.i

for.body175.i:                                    ; preds = %for.inc188.i, %for.body175.lr.ph.i
  %i169.0312.i = phi i32 [ 1, %for.body175.lr.ph.i ], [ %inc189.i, %for.inc188.i ]
  %param178.i = getelementptr inbounds %struct.x264_zone_t, %struct.x264_zone_t* %100, i32 %i169.0312.i, i32 5
  %104 = load %struct.x264_param_t*, %struct.x264_param_t** %param178.i, align 4, !tbaa !164
  %tobool179.i = icmp eq %struct.x264_param_t* %104, null
  br i1 %tobool179.i, label %if.then180.i, label %for.inc188.i

if.then180.i:                                     ; preds = %for.body175.i
  %105 = load i32, i32* %103, align 4, !tbaa !164
  %106 = bitcast %struct.x264_param_t** %param178.i to i32*
  store i32 %105, i32* %106, align 4, !tbaa !164
  br label %for.inc188.i

for.inc188.i:                                     ; preds = %if.then180.i, %for.body175.i
  %inc189.i = add nuw nsw i32 %i169.0312.i, 1
  %exitcond1801 = icmp eq i32 %inc189.i, %102
  br i1 %exitcond1801, label %if.end317, label %for.body175.i

for.body245.lr.ph:                                ; preds = %for.body.preheader
  %107 = load %struct.predictor_t*, %struct.predictor_t** %pred, align 8, !tbaa !150
  br label %for.body245

for.cond271.preheader:                            ; preds = %for.body245, %for.body.preheader
  %coeff_min278 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 62, i32 0, i32 0, i32 0
  store float 6.250000e-02, float* %coeff_min278, align 4, !tbaa !155
  %coeff282 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 62, i32 0, i32 0, i32 1
  store float 2.500000e-01, float* %coeff282, align 4, !tbaa !157
  %count286 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 62, i32 0, i32 0, i32 2
  store float 1.000000e+00, float* %count286, align 4, !tbaa !158
  %decay290 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 62, i32 0, i32 0, i32 3
  store float 5.000000e-01, float* %decay290, align 4, !tbaa !159
  %offset294 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 62, i32 0, i32 0, i32 4
  store float 0.000000e+00, float* %offset294, align 4, !tbaa !160
  %coeff_min278.1 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 62, i32 0, i32 1, i32 0
  store float 6.250000e-02, float* %coeff_min278.1, align 4, !tbaa !155
  %coeff282.1 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 62, i32 0, i32 1, i32 1
  store float 2.500000e-01, float* %coeff282.1, align 4, !tbaa !157
  %count286.1 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 62, i32 0, i32 1, i32 2
  store float 1.000000e+00, float* %count286.1, align 4, !tbaa !158
  %decay290.1 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 62, i32 0, i32 1, i32 3
  store float 5.000000e-01, float* %decay290.1, align 4, !tbaa !159
  %offset294.1 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 62, i32 0, i32 1, i32 4
  store float 0.000000e+00, float* %offset294.1, align 4, !tbaa !160
  %arrayidx228.1 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 48, i32 1
  store double 0x400B333340000000, double* %arrayidx228.1, align 8, !tbaa !154
  %arrayidx234.1 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 53, i32 1
  store double %conv233, double* %arrayidx234.1, align 8, !tbaa !154
  %arrayidx240.1 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 54, i32 1
  store double %conv239, double* %arrayidx240.1, align 8, !tbaa !154
  br i1 %cmp2421771, label %for.cond271.preheader.1, label %for.body245.lr.ph.1

for.body245:                                      ; preds = %for.body245, %for.body245.lr.ph
  %j.01772 = phi i32 [ 0, %for.body245.lr.ph ], [ %inc, %for.body245 ]
  %mul249 = mul nuw nsw i32 %j.01772, 5
  %coeff_min = getelementptr inbounds %struct.predictor_t, %struct.predictor_t* %107, i32 %mul249, i32 0
  store float 5.000000e-01, float* %coeff_min, align 4, !tbaa !155
  %coeff = getelementptr inbounds %struct.predictor_t, %struct.predictor_t* %107, i32 %mul249, i32 1
  store float 1.000000e+00, float* %coeff, align 4, !tbaa !157
  %count = getelementptr inbounds %struct.predictor_t, %struct.predictor_t* %107, i32 %mul249, i32 2
  store float 1.000000e+00, float* %count, align 4, !tbaa !158
  %decay = getelementptr inbounds %struct.predictor_t, %struct.predictor_t* %107, i32 %mul249, i32 3
  store float 5.000000e-01, float* %decay, align 4, !tbaa !159
  %offset = getelementptr inbounds %struct.predictor_t, %struct.predictor_t* %107, i32 %mul249, i32 4
  store float 0.000000e+00, float* %offset, align 4, !tbaa !160
  %inc = add nuw i32 %j.01772, 1
  %exitcond1810 = icmp eq i32 %j.01772, %mul191
  br i1 %exitcond1810, label %for.cond271.preheader, label %for.body245

if.then316:                                       ; preds = %do.end129.i, %for.end112.i, %if.then93.i, %if.then100.i, %cleanup61.i, %if.then.i1599, %do.body27.i
  call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* %h, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0)) #13
  br label %cleanup1094

if.end317:                                        ; preds = %for.inc188.i, %do.end161.i, %if.end68.i
  %b_stat_read320 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 21
  %108 = load i32, i32* %b_stat_read320, align 4, !tbaa !127
  %tobool321 = icmp eq i32 %108, 0
  br i1 %tobool321, label %if.end957, label %if.then322

if.then322:                                       ; preds = %if.end317
  %psz_stat_in = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 22
  %109 = load i8*, i8** %psz_stat_in, align 8, !tbaa !175
  %tobool325 = icmp eq i8* %109, null
  br i1 %tobool325, label %if.else327, label %if.end328

if.else327:                                       ; preds = %if.then322
  call void @__assert_fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i32 0, i32 0), i32 873, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.x264_8_ratecontrol_new, i32 0, i32 0)) #15
  unreachable

if.end328:                                        ; preds = %if.then322
  %call332 = call i8* @x264_slurp_file(i8* nonnull %109) #13
  %tobool333 = icmp eq i8* %call332, null
  br i1 %tobool333, label %if.then334, label %if.end335

if.then334:                                       ; preds = %if.end328
  call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i32 0, i32 0)) #13
  br label %cleanup1094

if.end335:                                        ; preds = %if.end328
  %110 = load i32, i32* %b_mb_tree, align 4, !tbaa !84
  %tobool339 = icmp eq i32 %110, 0
  br i1 %tobool339, label %if.end356, label %if.then340

if.then340:                                       ; preds = %if.end335
  %111 = load i8*, i8** %psz_stat_in, align 8, !tbaa !175
  %call.i1612 = call i32 @strlen(i8* nonnull dereferenceable(1) %111) #14
  %add2.i = add i32 %call.i1612, 8
  %conv.i1614 = zext i32 %add2.i to i64
  %call3.i = call i8* @x264_malloc(i64 %conv.i1614) #13
  %tobool.i1615 = icmp eq i8* %call3.i, null
  br i1 %tobool.i1615, label %cleanup1094, label %if.end347

if.end347:                                        ; preds = %if.then340
  %call4.i = call i8* @strcpy(i8* nonnull %call3.i, i8* nonnull dereferenceable(1) %111) #13
  %strlen = call i32 @strlen(i8* nonnull %call3.i)
  %endptr = getelementptr i8, i8* %call3.i, i32 %strlen
  %112 = bitcast i8* %endptr to i64*
  store i64 28540514901060910, i64* %112, align 1
  %call348 = call %struct._IO_FILE* @fopen64(i8* nonnull %call3.i, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0)) #13
  %p_mbtree_stat_file_in = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 43
  store %struct._IO_FILE* %call348, %struct._IO_FILE** %p_mbtree_stat_file_in, align 4, !tbaa !75
  call void @x264_free(i8* nonnull %call3.i) #13
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** %p_mbtree_stat_file_in, align 4, !tbaa !75
  %tobool350 = icmp eq %struct._IO_FILE* %113, null
  br i1 %tobool350, label %if.then351, label %if.end356

if.then351:                                       ; preds = %if.end347
  call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14, i32 0, i32 0)) #13
  br label %cleanup1094

if.end356:                                        ; preds = %if.end347, %if.end335
  %call357 = call i32 @strncmp(i8* nonnull %call332, i8* nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i32 9) #14
  %tobool358 = icmp eq i32 %call357, 0
  br i1 %tobool358, label %if.end360, label %if.then359

if.then359:                                       ; preds = %if.end356
  call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i32 0, i32 0)) #13
  br label %cleanup1094

if.end360:                                        ; preds = %if.end356
  %114 = bitcast i32* %i361 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %114) #13
  %115 = bitcast i32* %j362 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %115) #13
  %116 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %116) #13
  %117 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %117) #13
  %call363 = call i8* @strchr(i8* nonnull %call332, i32 10) #14
  %tobool364 = icmp eq i8* %call363, null
  br i1 %tobool364, label %cleanup649, label %if.end366

if.end366:                                        ; preds = %if.end360
  store i8 0, i8* %call363, align 1, !tbaa !46
  %incdec.ptr = getelementptr inbounds i8, i8* %call363, i32 1
  %call367 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %call332, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0), i32* nonnull %i361, i32* nonnull %j362) #13
  %cmp368 = icmp eq i32 %call367, 2
  br i1 %cmp368, label %if.else371, label %if.then370

if.then370:                                       ; preds = %if.end366
  call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.18, i32 0, i32 0)) #13
  br label %cleanup649

if.else371:                                       ; preds = %if.end366
  %118 = load i32, i32* %b_mb_tree, align 4, !tbaa !84
  %tobool375 = icmp eq i32 %118, 0
  %.pre = load i32, i32* %i361, align 4, !tbaa !55
  br i1 %tobool375, label %if.else371.if.end382_crit_edge, label %if.then376

if.else371.if.end382_crit_edge:                   ; preds = %if.else371
  %.pre1817 = load i32, i32* %j362, align 4, !tbaa !55
  br label %if.end382

if.then376:                                       ; preds = %if.else371
  %arrayidx377 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 56, i32 8, i32 0
  store i32 %.pre, i32* %arrayidx377, align 4, !tbaa !55
  %119 = load i32, i32* %j362, align 4, !tbaa !55
  %arrayidx380 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 56, i32 8, i32 1
  store i32 %119, i32* %arrayidx380, align 4, !tbaa !55
  br label %if.end382

if.end382:                                        ; preds = %if.else371.if.end382_crit_edge, %if.then376
  %120 = phi i32 [ %.pre1817, %if.else371.if.end382_crit_edge ], [ %119, %if.then376 ]
  %i_width = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 7
  %121 = load i32, i32* %i_width, align 4, !tbaa !176
  %conv384 = sitofp i32 %121 to float
  %i_height = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 8
  %122 = load i32, i32* %i_height, align 32, !tbaa !177
  %conv386 = sitofp i32 %122 to float
  %mul387 = fmul fast float %conv386, %conv384
  %mul388 = mul nsw i32 %120, %.pre
  %conv389 = sitofp i32 %mul388 to float
  %div390 = fdiv fast float %mul387, %conv389
  %123 = call fast float @llvm.pow.f32(float %div390, float 0x3FE6666660000000)
  %call391 = call i8* @strstr(i8* nonnull %call332, i8* nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0)) #14
  %tobool392 = icmp eq i8* %call391, null
  br i1 %tobool392, label %if.then396, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end382
  %call393 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %call391, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0), i32* nonnull %k, i32* nonnull %l) #13
  %cmp394 = icmp eq i32 %call393, 2
  br i1 %cmp394, label %if.end397, label %if.then396

if.then396:                                       ; preds = %lor.lhs.false, %if.end382
  call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.21, i32 0, i32 0)) #13
  br label %cleanup649

if.end397:                                        ; preds = %lor.lhs.false
  %124 = load i32, i32* %k, align 4, !tbaa !55
  %i_timebase_num = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 66
  %125 = load i32, i32* %i_timebase_num, align 8, !tbaa !178
  %cmp399 = icmp eq i32 %124, %125
  br i1 %cmp399, label %lor.lhs.false401, label %if.end397.if.then405_crit_edge

if.end397.if.then405_crit_edge:                   ; preds = %if.end397
  %i_timebase_den409.phi.trans.insert = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 67
  %.pre1818 = load i32, i32* %i_timebase_den409.phi.trans.insert, align 4, !tbaa !179
  %.pre1819 = load i32, i32* %l, align 4, !tbaa !55
  br label %if.then405

lor.lhs.false401:                                 ; preds = %if.end397
  %126 = load i32, i32* %l, align 4, !tbaa !55
  %i_timebase_den = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 67
  %127 = load i32, i32* %i_timebase_den, align 4, !tbaa !179
  %cmp403 = icmp eq i32 %126, %127
  br i1 %cmp403, label %if.end410, label %if.then405

if.then405:                                       ; preds = %if.end397.if.then405_crit_edge, %lor.lhs.false401
  %128 = phi i32 [ %.pre1819, %if.end397.if.then405_crit_edge ], [ %126, %lor.lhs.false401 ]
  %129 = phi i32 [ %.pre1818, %if.end397.if.then405_crit_edge ], [ %127, %lor.lhs.false401 ]
  call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.22, i32 0, i32 0), i32 %125, i32 %129, i32 %124, i32 %128) #13
  br label %cleanup649

if.end410:                                        ; preds = %lor.lhs.false401
  %call411 = call i8* @strstr(i8* nonnull %call332, i8* nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0)) #14
  %tobool412 = icmp eq i8* %call411, null
  br i1 %tobool412, label %if.end420, label %land.lhs.true413

land.lhs.true413:                                 ; preds = %if.end410
  %call414 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %call411, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), i32* nonnull %i361) #13
  %tobool415 = icmp ne i32 %call414, 0
  %130 = load i32, i32* %i361, align 4
  %cmp417 = icmp ne i32 %130, 8
  %or.cond = and i1 %tobool415, %cmp417
  br i1 %or.cond, label %if.then419, label %if.end420

if.then419:                                       ; preds = %land.lhs.true413
  call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.25, i32 0, i32 0), i32 8, i32 %130) #13
  br label %cleanup649

if.end420:                                        ; preds = %if.end410, %land.lhs.true413
  %call421 = call i8* @strstr(i8* nonnull %call332, i8* nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0)) #14
  %tobool422 = icmp eq i8* %call421, null
  br i1 %tobool422, label %if.end452, label %land.lhs.true423

land.lhs.true423:                                 ; preds = %if.end420
  %call424 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %call421, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0), i32* nonnull %i361) #13
  %tobool425 = icmp eq i32 %call424, 0
  br i1 %tobool425, label %if.end452, label %land.lhs.true426

land.lhs.true426:                                 ; preds = %land.lhs.true423
  %i_weighted_pred = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 51, i32 3
  %131 = load i32, i32* %i_weighted_pred, align 4, !tbaa !49
  %132 = icmp sgt i32 %131, 0
  %spec.select = select i1 %132, i32 %131, i32 0
  %133 = load i32, i32* %i361, align 4, !tbaa !55
  %cmp437 = icmp eq i32 %spec.select, %133
  br i1 %cmp437, label %if.end452, label %if.then439

if.then439:                                       ; preds = %land.lhs.true426
  call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.28, i32 0, i32 0), i32 %spec.select, i32 %133) #13
  br label %cleanup649

if.end452:                                        ; preds = %land.lhs.true426, %land.lhs.true423, %if.end420
  %call453 = call i8* @strstr(i8* nonnull %call332, i8* nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0)) #14
  %tobool454 = icmp eq i8* %call453, null
  br i1 %tobool454, label %if.end465, label %land.lhs.true455

land.lhs.true455:                                 ; preds = %if.end452
  %call456 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %call453, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0), i32* nonnull %i361) #13
  %tobool457 = icmp eq i32 %call456, 0
  br i1 %tobool457, label %if.end465, label %land.lhs.true458

land.lhs.true458:                                 ; preds = %land.lhs.true455
  %i_bframe = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 21
  %134 = load i32, i32* %i_bframe, align 4, !tbaa !83
  %135 = load i32, i32* %i361, align 4, !tbaa !55
  %cmp460 = icmp eq i32 %134, %135
  br i1 %cmp460, label %if.end465, label %if.then462

if.then462:                                       ; preds = %land.lhs.true458
  call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.31, i32 0, i32 0), i32 %134, i32 %135) #13
  br label %cleanup649

if.end465:                                        ; preds = %land.lhs.true458, %land.lhs.true455, %if.end452
  %call466 = call i8* @strstr(i8* nonnull %call332, i8* nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0)) #14
  %tobool467 = icmp eq i8* %call466, null
  br i1 %tobool467, label %if.end478, label %land.lhs.true468

land.lhs.true468:                                 ; preds = %if.end465
  %call469 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %call466, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i32 0, i32 0), i32* nonnull %i361) #13
  %tobool470 = icmp eq i32 %call469, 0
  br i1 %tobool470, label %if.end478, label %land.lhs.true471

land.lhs.true471:                                 ; preds = %land.lhs.true468
  %i_bframe_pyramid = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 24
  %136 = load i32, i32* %i_bframe_pyramid, align 64, !tbaa !180
  %137 = load i32, i32* %i361, align 4, !tbaa !55
  %cmp473 = icmp eq i32 %136, %137
  br i1 %cmp473, label %if.end478, label %if.then475

if.then475:                                       ; preds = %land.lhs.true471
  call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 0, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.34, i32 0, i32 0), i32 %136, i32 %137) #13
  br label %cleanup649

if.end478:                                        ; preds = %land.lhs.true471, %land.lhs.true468, %if.end465
  %call479 = call i8* @strstr(i8* nonnull %call332, i8* nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0)) #14
  %tobool480 = icmp eq i8* %call479, null
  br i1 %tobool480, label %if.end491, label %land.lhs.true481

land.lhs.true481:                                 ; preds = %if.end478
  %call482 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %call479, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i32 0, i32 0), i32* nonnull %i361) #13
  %tobool483 = icmp eq i32 %call482, 0
  br i1 %tobool483, label %if.end491, label %land.lhs.true484

land.lhs.true484:                                 ; preds = %land.lhs.true481
  %b_intra_refresh = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 20
  %138 = load i32, i32* %b_intra_refresh, align 16, !tbaa !181
  %139 = load i32, i32* %i361, align 4, !tbaa !55
  %cmp486 = icmp eq i32 %138, %139
  br i1 %cmp486, label %if.end491, label %if.then488

if.then488:                                       ; preds = %land.lhs.true484
  call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.37, i32 0, i32 0), i32 %138, i32 %139) #13
  br label %cleanup649

if.end491:                                        ; preds = %land.lhs.true484, %land.lhs.true481, %if.end478
  %call492 = call i8* @strstr(i8* nonnull %call332, i8* nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0)) #14
  %tobool493 = icmp eq i8* %call492, null
  br i1 %tobool493, label %if.end504, label %land.lhs.true494

land.lhs.true494:                                 ; preds = %if.end491
  %call495 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %call492, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i32 0, i32 0), i32* nonnull %i361) #13
  %tobool496 = icmp eq i32 %call495, 0
  br i1 %tobool496, label %if.end504, label %land.lhs.true497

land.lhs.true497:                                 ; preds = %land.lhs.true494
  %b_open_gop = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 25
  %140 = load i32, i32* %b_open_gop, align 4, !tbaa !182
  %141 = load i32, i32* %i361, align 4, !tbaa !55
  %cmp499 = icmp eq i32 %140, %141
  br i1 %cmp499, label %if.end504, label %if.then501

if.then501:                                       ; preds = %land.lhs.true497
  call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.40, i32 0, i32 0), i32 %140, i32 %141) #13
  br label %cleanup649

if.end504:                                        ; preds = %land.lhs.true497, %land.lhs.true494, %if.end491
  %call505 = call i8* @strstr(i8* nonnull %call332, i8* nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0)) #14
  %tobool506 = icmp eq i8* %call505, null
  br i1 %tobool506, label %if.end517, label %land.lhs.true507

land.lhs.true507:                                 ; preds = %if.end504
  %call508 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %call505, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.42, i32 0, i32 0), i32* nonnull %i361) #13
  %tobool509 = icmp eq i32 %call508, 0
  br i1 %tobool509, label %if.end517, label %land.lhs.true510

land.lhs.true510:                                 ; preds = %land.lhs.true507
  %b_bluray_compat = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 26
  %142 = load i32, i32* %b_bluray_compat, align 8, !tbaa !183
  %143 = load i32, i32* %i361, align 4, !tbaa !55
  %cmp512 = icmp eq i32 %142, %143
  br i1 %cmp512, label %if.end517, label %if.then514

if.then514:                                       ; preds = %land.lhs.true510
  call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.43, i32 0, i32 0), i32 %142, i32 %143) #13
  br label %cleanup649

if.end517:                                        ; preds = %land.lhs.true510, %land.lhs.true507, %if.end504
  %call518 = call i8* @strstr(i8* nonnull %call332, i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0)) #14
  %tobool519 = icmp eq i8* %call518, null
  br i1 %tobool519, label %if.end533, label %land.lhs.true520

land.lhs.true520:                                 ; preds = %if.end517
  %call521 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %call518, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), i32* nonnull %i361) #13
  %tobool522 = icmp eq i32 %call521, 0
  br i1 %tobool522, label %if.end533, label %land.lhs.true523

land.lhs.true523:                                 ; preds = %land.lhs.true520
  %144 = load i32, i32* %b_mb_tree, align 4, !tbaa !84
  %145 = load i32, i32* %i361, align 4, !tbaa !55
  %cmp527 = icmp eq i32 %144, %145
  br i1 %cmp527, label %if.end533, label %if.then529

if.then529:                                       ; preds = %land.lhs.true523
  call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.46, i32 0, i32 0), i32 %144, i32 %145) #13
  br label %cleanup649

if.end533:                                        ; preds = %land.lhs.true523, %land.lhs.true520, %if.end517
  %call534 = call i8* @strstr(i8* nonnull %call332, i8* nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i32 0, i32 0)) #14
  %tobool535 = icmp eq i8* %call534, null
  br i1 %tobool535, label %if.end561, label %if.then536

if.then536:                                       ; preds = %if.end533
  %b_interlaced = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 34
  %146 = load i32, i32* %b_interlaced, align 8, !tbaa !184
  %tobool538 = icmp eq i32 %146, 0
  br i1 %tobool538, label %cond.false543, label %cond.true539

cond.true539:                                     ; preds = %if.then536
  %b_tff = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 68
  %147 = load i32, i32* %b_tff, align 16, !tbaa !185
  %tobool541 = icmp eq i32 %147, 0
  %cond542 = select i1 %tobool541, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i32 0, i32 0)
  br label %cond.end547

cond.false543:                                    ; preds = %if.then536
  %b_fake_interlaced = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 70
  %148 = load i32, i32* %b_fake_interlaced, align 8, !tbaa !186
  %tobool545 = icmp eq i32 %148, 0
  %cond546 = select i1 %tobool545, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0)
  br label %cond.end547

cond.end547:                                      ; preds = %cond.false543, %cond.true539
  %cond548 = phi i8* [ %cond542, %cond.true539 ], [ %cond546, %cond.false543 ]
  %149 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %149) #13
  %call550 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %call534, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i32 0, i32 0), i8* nonnull %149) #13
  %call552 = call i32 @strcmp(i8* nonnull dereferenceable(1) %cond548, i8* nonnull %149) #14
  %tobool553 = icmp eq i32 %call552, 0
  br i1 %tobool553, label %cleanup557.thread, label %cleanup557

cleanup557.thread:                                ; preds = %cond.end547
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %149) #13
  br label %if.end561

cleanup557:                                       ; preds = %cond.end547
  call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 0, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.53, i32 0, i32 0), i8* %cond548, i8* nonnull %149) #13
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %149) #13
  br label %cleanup649

if.end561:                                        ; preds = %cleanup557.thread, %if.end533
  %call562 = call i8* @strstr(i8* nonnull %call332, i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i32 0, i32 0)) #14
  %tobool563 = icmp eq i8* %call562, null
  br i1 %tobool563, label %if.end590, label %if.then564

if.then564:                                       ; preds = %if.end561
  %add.ptr = getelementptr inbounds i8, i8* %call562, i32 7
  %150 = getelementptr inbounds [13 x i8], [13 x i8]* %buf565, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 13, i8* nonnull %150) #13
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 dereferenceable(13) %150, i8* nonnull align 1 dereferenceable(13) getelementptr inbounds ([13 x i8], [13 x i8]* @__const.x264_8_ratecontrol_new.buf, i32 0, i32 0), i32 13, i1 false)
  %i_keyint_max = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 17
  %151 = load i32, i32* %i_keyint_max, align 4, !tbaa !106
  %cmp567 = icmp eq i32 %151, 1073741824
  br i1 %cmp567, label %if.end574, label %if.then569

if.then569:                                       ; preds = %if.then564
  %call573 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %150, i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i32 0, i32 0), i32 %151) #13
  br label %if.end574

if.end574:                                        ; preds = %if.then564, %if.then569
  %call577 = call i32 @strlen(i8* nonnull %150) #14
  %call578 = call i32 @strncmp(i8* nonnull %add.ptr, i8* nonnull %150, i32 %call577) #14
  %tobool579 = icmp eq i32 %call578, 0
  br i1 %tobool579, label %cleanup587.thread, label %cleanup587

cleanup587.thread:                                ; preds = %if.end574
  call void @llvm.lifetime.end.p0i8(i64 13, i8* nonnull %150) #13
  br label %if.end590

cleanup587:                                       ; preds = %if.end574
  %sub583 = add i32 %call577, -1
  %call585 = call i32 @strcspn(i8* nonnull %add.ptr, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i32 0, i32 0)) #14
  call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 0, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.56, i32 0, i32 0), i32 %sub583, i8* nonnull %150, i32 %call585, i8* nonnull %add.ptr) #13
  call void @llvm.lifetime.end.p0i8(i64 13, i8* nonnull %150) #13
  br label %cleanup649

if.end590:                                        ; preds = %cleanup587.thread, %if.end561
  %call591 = call i8* @strstr(i8* nonnull %call332, i8* nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0)) #14
  %tobool592 = icmp eq i8* %call591, null
  br i1 %tobool592, label %if.end600, label %land.lhs.true593

land.lhs.true593:                                 ; preds = %if.end590
  %152 = load i32, i32* %i_rc_method, align 8, !tbaa !82
  %cmp597 = icmp eq i32 %152, 2
  br i1 %cmp597, label %if.then599, label %if.end600

if.then599:                                       ; preds = %land.lhs.true593
  call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 1, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.59, i32 0, i32 0)) #13
  br label %if.end600

if.end600:                                        ; preds = %if.end590, %if.then599, %land.lhs.true593
  %call601 = call i8* @strstr(i8* nonnull %call332, i8* nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i32 0, i32 0)) #14
  %tobool602 = icmp eq i8* %call601, null
  br i1 %tobool602, label %land.lhs.true603, label %if.end610

land.lhs.true603:                                 ; preds = %if.end600
  %i_direct_mv_pred = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 51, i32 5
  %153 = load i32, i32* %i_direct_mv_pred, align 4, !tbaa !187
  %cmp606 = icmp eq i32 %153, 3
  br i1 %cmp606, label %if.then608, label %if.end610

if.then608:                                       ; preds = %land.lhs.true603
  call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.61, i32 0, i32 0)) #13
  %b_direct_auto_write = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 100
  store i32 1, i32* %b_direct_auto_write, align 4, !tbaa !188
  br label %if.end610

if.end610:                                        ; preds = %if.end600, %if.then608, %land.lhs.true603
  %call611 = call i8* @strstr(i8* nonnull %call332, i8* nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.62, i32 0, i32 0)) #14
  %tobool612 = icmp eq i8* %call611, null
  br i1 %tobool612, label %if.else624, label %land.lhs.true613

land.lhs.true613:                                 ; preds = %if.end610
  %call614 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %call611, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i32 0, i32 0), i32* nonnull %i361) #13
  %tobool615 = icmp ne i32 %call614, 0
  %154 = load i32, i32* %i361, align 4
  %155 = icmp ult i32 %154, 3
  %156 = and i1 %tobool615, %155
  br i1 %156, label %if.then622, label %if.else624

if.then622:                                       ; preds = %land.lhs.true613
  %i_bframe_adaptive = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 22
  store i32 %154, i32* %i_bframe_adaptive, align 8, !tbaa !189
  br label %if.end630

if.else624:                                       ; preds = %if.end610, %land.lhs.true613
  %i_bframe626 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 21
  %157 = load i32, i32* %i_bframe626, align 4, !tbaa !83
  %tobool627 = icmp eq i32 %157, 0
  br i1 %tobool627, label %if.end630, label %if.then628

if.then628:                                       ; preds = %if.else624
  call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.64, i32 0, i32 0)) #13
  br label %cleanup649

if.end630:                                        ; preds = %if.else624, %if.then622
  %158 = load i32, i32* %b_mb_tree, align 4, !tbaa !84
  %tobool634 = icmp eq i32 %158, 0
  br i1 %tobool634, label %lor.lhs.false635, label %land.lhs.true639

lor.lhs.false635:                                 ; preds = %if.end630
  %i_vbv_buffer_size = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 10
  %159 = load i32, i32* %i_vbv_buffer_size, align 8, !tbaa !90
  %tobool638 = icmp eq i32 %159, 0
  br i1 %tobool638, label %cleanup649, label %land.lhs.true639

land.lhs.true639:                                 ; preds = %lor.lhs.false635, %if.end630
  %call640 = call i8* @strstr(i8* nonnull %call332, i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.65, i32 0, i32 0)) #14
  %tobool641 = icmp eq i8* %call640, null
  br i1 %tobool641, label %cleanup649, label %land.lhs.true642

land.lhs.true642:                                 ; preds = %land.lhs.true639
  %call643 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %call640, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.66, i32 0, i32 0), i32* nonnull %i361) #13
  %tobool644 = icmp eq i32 %call643, 0
  br i1 %tobool644, label %cleanup649, label %if.then645

if.then645:                                       ; preds = %land.lhs.true642
  %160 = load i32, i32* %i361, align 4, !tbaa !55
  %i_lookahead = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 18
  store i32 %160, i32* %i_lookahead, align 8, !tbaa !190
  br label %cleanup649

cleanup649:                                       ; preds = %cleanup587, %cleanup557, %if.then645, %lor.lhs.false635, %land.lhs.true639, %land.lhs.true642, %if.end360, %if.then628, %if.then529, %if.then514, %if.then501, %if.then488, %if.then475, %if.then462, %if.then439, %if.then419, %if.then405, %if.then396, %if.then370
  %res_factor.0 = phi float [ undef, %if.then370 ], [ %div390, %if.then396 ], [ %div390, %if.then405 ], [ %div390, %if.then419 ], [ %div390, %if.then439 ], [ %div390, %if.then462 ], [ %div390, %if.then475 ], [ %div390, %if.then488 ], [ %div390, %if.then501 ], [ %div390, %if.then514 ], [ %div390, %if.then529 ], [ %div390, %if.then628 ], [ %div390, %cleanup587 ], [ %div390, %cleanup557 ], [ undef, %if.end360 ], [ %div390, %land.lhs.true642 ], [ %div390, %land.lhs.true639 ], [ %div390, %lor.lhs.false635 ], [ %div390, %if.then645 ]
  %res_factor_bits.0 = phi float [ undef, %if.then370 ], [ %123, %if.then396 ], [ %123, %if.then405 ], [ %123, %if.then419 ], [ %123, %if.then439 ], [ %123, %if.then462 ], [ %123, %if.then475 ], [ %123, %if.then488 ], [ %123, %if.then501 ], [ %123, %if.then514 ], [ %123, %if.then529 ], [ %123, %if.then628 ], [ %123, %cleanup587 ], [ %123, %cleanup557 ], [ undef, %if.end360 ], [ %123, %land.lhs.true642 ], [ %123, %land.lhs.true639 ], [ %123, %lor.lhs.false635 ], [ %123, %if.then645 ]
  %stats_in.0 = phi i8* [ %incdec.ptr, %if.then370 ], [ %incdec.ptr, %if.then396 ], [ %incdec.ptr, %if.then405 ], [ %incdec.ptr, %if.then419 ], [ %incdec.ptr, %if.then439 ], [ %incdec.ptr, %if.then462 ], [ %incdec.ptr, %if.then475 ], [ %incdec.ptr, %if.then488 ], [ %incdec.ptr, %if.then501 ], [ %incdec.ptr, %if.then514 ], [ %incdec.ptr, %if.then529 ], [ %incdec.ptr, %if.then628 ], [ %incdec.ptr, %cleanup587 ], [ %incdec.ptr, %cleanup557 ], [ null, %if.end360 ], [ %incdec.ptr, %land.lhs.true642 ], [ %incdec.ptr, %land.lhs.true639 ], [ %incdec.ptr, %lor.lhs.false635 ], [ %incdec.ptr, %if.then645 ]
  %cleanup.dest.slot.4 = phi i1 [ false, %if.then370 ], [ false, %if.then396 ], [ false, %if.then405 ], [ false, %if.then419 ], [ false, %if.then439 ], [ false, %if.then462 ], [ false, %if.then475 ], [ false, %if.then488 ], [ false, %if.then501 ], [ false, %if.then514 ], [ false, %if.then529 ], [ false, %if.then628 ], [ false, %cleanup587 ], [ false, %cleanup557 ], [ false, %if.end360 ], [ true, %land.lhs.true642 ], [ true, %land.lhs.true639 ], [ true, %lor.lhs.false635 ], [ true, %if.then645 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %117) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %116) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %115) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %114) #13
  br i1 %cleanup.dest.slot.4, label %for.cond656.preheader, label %cleanup1094

for.cond656.preheader:                            ; preds = %cleanup649
  %tobool6571767 = icmp eq i8* %stats_in.0, null
  br i1 %tobool6571767, label %if.end666, label %for.body658

for.body658:                                      ; preds = %for.cond656.preheader, %for.body658
  %num_entries.01769 = phi i32 [ %inc662, %for.body658 ], [ -1, %for.cond656.preheader ]
  %p.01768 = phi i8* [ %call660, %for.body658 ], [ %stats_in.0, %for.cond656.preheader ]
  %add.ptr659 = getelementptr inbounds i8, i8* %p.01768, i32 1
  %call660 = call i8* @strchr(i8* nonnull %add.ptr659, i32 59) #14
  %inc662 = add nsw i32 %num_entries.01769, 1
  %tobool657 = icmp eq i8* %call660, null
  br i1 %tobool657, label %for.end663, label %for.body658

for.end663:                                       ; preds = %for.body658
  %tobool664 = icmp eq i32 %inc662, 0
  br i1 %tobool664, label %if.then665, label %if.end666

if.then665:                                       ; preds = %for.end663
  call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* %h, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.67, i32 0, i32 0)) #13
  br label %cleanup1094

if.end666:                                        ; preds = %for.cond656.preheader, %for.end663
  %num_entries.0.lcssa1827 = phi i32 [ %inc662, %for.end663 ], [ -1, %for.cond656.preheader ]
  %num_entries667 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 44
  store i32 %num_entries.0.lcssa1827, i32* %num_entries667, align 8, !tbaa !191
  %i_frame_total = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 12
  %161 = load i32, i32* %i_frame_total, align 16, !tbaa !192
  %cmp670 = icmp slt i32 %161, %num_entries.0.lcssa1827
  %cmp675 = icmp sgt i32 %161, 0
  %or.cond1579 = and i1 %cmp670, %cmp675
  br i1 %or.cond1579, label %if.then677, label %if.end681

if.then677:                                       ; preds = %if.end666
  call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.68, i32 0, i32 0), i32 %161, i32 %num_entries.0.lcssa1827) #13
  %.pre1820 = load i32, i32* %i_frame_total, align 16, !tbaa !192
  %.pre1821 = load i32, i32* %num_entries667, align 8, !tbaa !191
  br label %if.end681

if.end681:                                        ; preds = %if.then677, %if.end666
  %162 = phi i32 [ %.pre1821, %if.then677 ], [ %num_entries.0.lcssa1827, %if.end666 ]
  %163 = phi i32 [ %.pre1820, %if.then677 ], [ %161, %if.end666 ]
  %cmp685 = icmp sgt i32 %163, %162
  br i1 %cmp685, label %if.then687, label %do.body693

if.then687:                                       ; preds = %if.end681
  call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.69, i32 0, i32 0), i32 %163, i32 %162) #13
  br label %cleanup1094

do.body693:                                       ; preds = %if.end681
  %mul695 = mul i32 %162, 200
  %conv696 = zext i32 %mul695 to i64
  %call697 = call i8* @x264_malloc(i64 %conv696) #13
  %entry698 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 45
  %164 = bitcast %struct.ratecontrol_entry_t** %entry698 to i8**
  store i8* %call697, i8** %164, align 4, !tbaa !66
  %tobool700 = icmp eq i8* %call697, null
  br i1 %tobool700, label %cleanup1094, label %do.end704

do.end704:                                        ; preds = %do.body693
  %165 = load i32, i32* %num_entries667, align 8, !tbaa !191
  %mul707 = mul i32 %165, 200
  call void @llvm.memset.p0i8.i32(i8* nonnull align 8 %call697, i8 0, i32 %mul707, i1 false)
  %166 = load i32, i32* %num_entries667, align 8, !tbaa !191
  %mul712 = shl i32 %166, 2
  %conv713 = zext i32 %mul712 to i64
  %call714 = call i8* @x264_malloc(i64 %conv713) #13
  %entry_out = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 46
  %167 = bitcast %struct.ratecontrol_entry_t*** %entry_out to i8**
  store i8* %call714, i8** %167, align 8, !tbaa !193
  %tobool716 = icmp eq i8* %call714, null
  %168 = bitcast i8* %call714 to %struct.ratecontrol_entry_t**
  br i1 %tobool716, label %cleanup1094, label %for.cond722.preheader

for.cond722.preheader:                            ; preds = %do.end704
  %169 = load i32, i32* %num_entries667, align 8, !tbaa !191
  %cmp7241765 = icmp sgt i32 %169, 0
  br i1 %cmp7241765, label %for.body727.lr.ph, label %for.end914

for.body727.lr.ph:                                ; preds = %for.cond722.preheader
  %170 = load i32, i32* %nmb, align 8, !tbaa !133
  %add733 = add nsw i32 %170, 10
  %171 = load %struct.ratecontrol_entry_t*, %struct.ratecontrol_entry_t** %entry698, align 4, !tbaa !66
  %pict_type1871 = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %171, i32 0, i32 0
  store i32 0, i32* %pict_type1871, align 8, !tbaa !70
  %new_qscale1872 = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %171, i32 0, i32 9
  store double 0x4001228AC0000000, double* %new_qscale1872, align 8, !tbaa !194
  %qscale1873 = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %171, i32 0, i32 3
  store double 0x4001228AC0000000, double* %qscale1873, align 8, !tbaa !195
  %misc_bits1874 = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %171, i32 0, i32 6
  store i32 %add733, i32* %misc_bits1874, align 8, !tbaa !196
  %new_qp1875 = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %171, i32 0, i32 10
  store float 0.000000e+00, float* %new_qp1875, align 8, !tbaa !197
  store %struct.ratecontrol_entry_t* %171, %struct.ratecontrol_entry_t** %168, align 4, !tbaa !59
  %cmp7241876 = icmp eq i32 %169, 1
  br i1 %cmp7241876, label %for.cond741.preheader, label %for.body727.for.body727_crit_edge

for.cond741.preheader:                            ; preds = %for.body727.for.body727_crit_edge, %for.body727.lr.ph
  br i1 %cmp7241765, label %for.body746.lr.ph, label %for.end914

for.body746.lr.ph:                                ; preds = %for.cond741.preheader
  %172 = bitcast i32* %frame_number to i8*
  %173 = bitcast i32* %frame_out_number to i8*
  %174 = bitcast float* %qp_rc to i8*
  %175 = bitcast float* %qp_aq to i8*
  br label %for.body746

for.body727.for.body727_crit_edge:                ; preds = %for.body727.lr.ph, %for.body727.for.body727_crit_edge
  %inc7371877 = phi i32 [ %inc737, %for.body727.for.body727_crit_edge ], [ 1, %for.body727.lr.ph ]
  %.pre1822 = load %struct.ratecontrol_entry_t**, %struct.ratecontrol_entry_t*** %entry_out, align 8, !tbaa !193
  %176 = load %struct.ratecontrol_entry_t*, %struct.ratecontrol_entry_t** %entry698, align 4, !tbaa !66
  %arrayidx729 = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %176, i32 %inc7371877
  %pict_type = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %arrayidx729, i32 0, i32 0
  store i32 0, i32* %pict_type, align 8, !tbaa !70
  %new_qscale = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %176, i32 %inc7371877, i32 9
  store double 0x4001228AC0000000, double* %new_qscale, align 8, !tbaa !194
  %qscale = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %176, i32 %inc7371877, i32 3
  store double 0x4001228AC0000000, double* %qscale, align 8, !tbaa !195
  %misc_bits = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %176, i32 %inc7371877, i32 6
  store i32 %add733, i32* %misc_bits, align 8, !tbaa !196
  %new_qp = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %176, i32 %inc7371877, i32 10
  store float 0.000000e+00, float* %new_qp, align 8, !tbaa !197
  %arrayidx735 = getelementptr inbounds %struct.ratecontrol_entry_t*, %struct.ratecontrol_entry_t** %.pre1822, i32 %inc7371877
  store %struct.ratecontrol_entry_t* %arrayidx729, %struct.ratecontrol_entry_t** %arrayidx735, align 4, !tbaa !59
  %inc737 = add nuw nsw i32 %inc7371877, 1
  %cmp724 = icmp slt i32 %inc737, %169
  br i1 %cmp724, label %for.body727.for.body727_crit_edge, label %for.cond741.preheader

for.cond741:                                      ; preds = %cleanup899
  %177 = load i32, i32* %num_entries667, align 8, !tbaa !191
  %cmp743 = icmp slt i32 %inc911, %177
  br i1 %cmp743, label %for.body746, label %for.end914

for.body746:                                      ; preds = %for.body746.lr.ph, %for.cond741
  %i740.01763 = phi i32 [ 0, %for.body746.lr.ph ], [ %inc911, %for.cond741 ]
  %total_qp_aq.01760 = phi double [ 0.000000e+00, %for.body746.lr.ph ], [ %total_qp_aq.1, %for.cond741 ]
  %p.11758 = phi i8* [ %stats_in.0, %for.body746.lr.ph ], [ %p.4, %for.cond741 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %172) #13
  store i32 0, i32* %frame_number, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %173) #13
  store i32 0, i32* %frame_out_number, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %pict_type748) #13
  store i8 0, i8* %pict_type748, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %174) #13
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %175) #13
  %call749 = call i8* @strchr(i8* nonnull dereferenceable(1) %p.11758, i32 59) #14
  %tobool750 = icmp eq i8* %call749, null
  br i1 %tobool750, label %if.end753, label %if.then751

if.then751:                                       ; preds = %for.body746
  %incdec.ptr752 = getelementptr inbounds i8, i8* %call749, i32 1
  store i8 0, i8* %call749, align 1, !tbaa !46
  br label %if.end753

if.end753:                                        ; preds = %for.body746, %if.then751
  %next.0 = phi i8* [ %incdec.ptr752, %if.then751 ], [ null, %for.body746 ]
  %call754 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %p.11758, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.70, i32 0, i32 0), i32* nonnull %frame_number, i32* nonnull %frame_out_number) #13
  %178 = load i32, i32* %frame_number, align 4, !tbaa !55
  %cmp755 = icmp slt i32 %178, 0
  br i1 %cmp755, label %if.then761, label %lor.lhs.false757

lor.lhs.false757:                                 ; preds = %if.end753
  %179 = load i32, i32* %num_entries667, align 8, !tbaa !191
  %cmp759 = icmp slt i32 %178, %179
  br i1 %cmp759, label %if.end762, label %if.then761

if.then761:                                       ; preds = %lor.lhs.false757, %if.end753
  call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* %h, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.71, i32 0, i32 0), i32 %178, i32 %i740.01763) #13
  br label %cleanup899

if.end762:                                        ; preds = %lor.lhs.false757
  %180 = load i32, i32* %frame_out_number, align 4, !tbaa !55
  %cmp763 = icmp sgt i32 %180, -1
  %cmp767 = icmp slt i32 %180, %179
  %or.cond1580 = and i1 %cmp763, %cmp767
  br i1 %or.cond1580, label %if.end770, label %if.then769

if.then769:                                       ; preds = %if.end762
  call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* %h, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.72, i32 0, i32 0), i32 %180, i32 %i740.01763) #13
  br label %cleanup899

if.end770:                                        ; preds = %if.end762
  %181 = load %struct.ratecontrol_entry_t*, %struct.ratecontrol_entry_t** %entry698, align 4, !tbaa !66
  %arrayidx772 = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %181, i32 %178
  %182 = load %struct.ratecontrol_entry_t**, %struct.ratecontrol_entry_t*** %entry_out, align 8, !tbaa !193
  %arrayidx774 = getelementptr inbounds %struct.ratecontrol_entry_t*, %struct.ratecontrol_entry_t** %182, i32 %180
  store %struct.ratecontrol_entry_t* %arrayidx772, %struct.ratecontrol_entry_t** %arrayidx774, align 4, !tbaa !59
  %direct_mode = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %181, i32 %178, i32 15
  store i8 0, i8* %direct_mode, align 4, !tbaa !198
  %i_duration = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %181, i32 %178, i32 20
  %i_cpb_duration = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %181, i32 %178, i32 21
  %tex_bits = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %181, i32 %178, i32 5
  %mv_bits = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %181, i32 %178, i32 4
  %misc_bits775 = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %181, i32 %178, i32 6
  %i_count = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %181, i32 %178, i32 11
  %p_count = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %181, i32 %178, i32 12
  %s_count = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %181, i32 %178, i32 13
  %call777 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %p.11758, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.73, i32 0, i32 0), i8* nonnull %pict_type748, i64* nonnull %i_duration, i64* nonnull %i_cpb_duration, float* nonnull %qp_rc, float* nonnull %qp_aq, i32* nonnull %tex_bits, i32* nonnull %mv_bits, i32* nonnull %misc_bits775, i32* nonnull %i_count, i32* nonnull %p_count, i32* nonnull %s_count, i8* nonnull %direct_mode) #13
  %add778 = add nsw i32 %call777, %call754
  %183 = load i32, i32* %tex_bits, align 4, !tbaa !199
  %conv780 = sitofp i32 %183 to float
  %mul781 = fmul fast float %res_factor_bits.0, %conv780
  %conv782 = fptosi float %mul781 to i32
  store i32 %conv782, i32* %tex_bits, align 4, !tbaa !199
  %184 = load i32, i32* %mv_bits, align 8, !tbaa !200
  %conv784 = sitofp i32 %184 to float
  %mul785 = fmul fast float %res_factor_bits.0, %conv784
  %conv786 = fptosi float %mul785 to i32
  store i32 %conv786, i32* %mv_bits, align 8, !tbaa !200
  %185 = load i32, i32* %misc_bits775, align 8, !tbaa !196
  %conv788 = sitofp i32 %185 to float
  %mul789 = fmul fast float %res_factor_bits.0, %conv788
  %conv790 = fptosi float %mul789 to i32
  store i32 %conv790, i32* %misc_bits775, align 8, !tbaa !196
  %186 = load i32, i32* %i_count, align 4, !tbaa !201
  %conv792 = sitofp i32 %186 to float
  %mul793 = fmul fast float %res_factor.0, %conv792
  %conv794 = fptosi float %mul793 to i32
  store i32 %conv794, i32* %i_count, align 4, !tbaa !201
  %187 = load i32, i32* %p_count, align 8, !tbaa !202
  %conv796 = sitofp i32 %187 to float
  %mul797 = fmul fast float %res_factor.0, %conv796
  %conv798 = fptosi float %mul797 to i32
  store i32 %conv798, i32* %p_count, align 8, !tbaa !202
  %188 = load i32, i32* %s_count, align 4, !tbaa !203
  %conv800 = sitofp i32 %188 to float
  %mul801 = fmul fast float %res_factor.0, %conv800
  %conv802 = fptosi float %mul801 to i32
  store i32 %conv802, i32* %s_count, align 4, !tbaa !203
  %call803 = call i8* @strstr(i8* nonnull dereferenceable(1) %p.11758, i8* nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i32 0, i32 0)) #14
  %tobool804 = icmp eq i8* %call803, null
  br i1 %tobool804, label %parse_error, label %if.end806

if.end806:                                        ; preds = %if.end770
  %add.ptr807 = getelementptr inbounds i8, i8* %call803, i32 4
  %arrayidx812 = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %181, i32 %178, i32 18, i32 0
  %call813 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %add.ptr807, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i32 0, i32 0), i32* nonnull %arrayidx812) #13
  %cmp814 = icmp eq i32 %call813, 1
  br i1 %cmp814, label %if.end817, label %for.end825

if.end817:                                        ; preds = %if.end806
  %add.ptr818 = getelementptr inbounds i8, i8* %call803, i32 5
  %call819 = call i8* @strchr(i8* nonnull %add.ptr818, i32 32) #14
  %tobool820 = icmp eq i8* %call819, null
  br i1 %tobool820, label %parse_error, label %for.inc823

for.inc823:                                       ; preds = %if.end817
  %arrayidx812.1 = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %181, i32 %178, i32 18, i32 1
  %call813.1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %call819, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i32 0, i32 0), i32* nonnull %arrayidx812.1) #13
  %cmp814.1 = icmp eq i32 %call813.1, 1
  br i1 %cmp814.1, label %if.end817.1, label %for.end825

for.end825:                                       ; preds = %if.end817.15, %for.inc823.14, %for.inc823.13, %for.inc823.12, %for.inc823.11, %for.inc823.10, %for.inc823.9, %for.inc823.8, %for.inc823.7, %for.inc823.6, %for.inc823.5, %for.inc823.4, %for.inc823.3, %for.inc823.2, %for.inc823.1, %for.inc823, %if.end806
  %p.2.lcssa = phi i8* [ %add.ptr807, %if.end806 ], [ %call819, %for.inc823 ], [ %call819.1, %for.inc823.1 ], [ %call819.2, %for.inc823.2 ], [ %call819.3, %for.inc823.3 ], [ %call819.4, %for.inc823.4 ], [ %call819.5, %for.inc823.5 ], [ %call819.6, %for.inc823.6 ], [ %call819.7, %for.inc823.7 ], [ %call819.8, %for.inc823.8 ], [ %call819.9, %for.inc823.9 ], [ %call819.10, %for.inc823.10 ], [ %call819.11, %for.inc823.11 ], [ %call819.12, %for.inc823.12 ], [ %call819.13, %for.inc823.13 ], [ %call819.14, %for.inc823.14 ], [ %call819.15, %if.end817.15 ]
  %ref.0.lcssa = phi i32 [ 0, %if.end806 ], [ 1, %for.inc823 ], [ 2, %for.inc823.1 ], [ 3, %for.inc823.2 ], [ 4, %for.inc823.3 ], [ 5, %for.inc823.4 ], [ 6, %for.inc823.5 ], [ 7, %for.inc823.6 ], [ 8, %for.inc823.7 ], [ 9, %for.inc823.8 ], [ 10, %for.inc823.9 ], [ 11, %for.inc823.10 ], [ 12, %for.inc823.11 ], [ 13, %for.inc823.12 ], [ 14, %for.inc823.13 ], [ 15, %for.inc823.14 ], [ 16, %if.end817.15 ]
  %refs = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %181, i32 %178, i32 19
  store i32 %ref.0.lcssa, i32* %refs, align 8, !tbaa !79
  %arrayidx826 = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %181, i32 %178, i32 17, i32 1
  store i16 -1, i16* %arrayidx826, align 2, !tbaa !47
  %arrayidx828 = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %181, i32 %178, i32 17, i32 0
  store i16 -1, i16* %arrayidx828, align 2, !tbaa !47
  %call829 = call i8* @strchr(i8* nonnull dereferenceable(1) %p.2.lcssa, i32 119) #14
  %tobool830 = icmp eq i8* %call829, null
  br i1 %tobool830, label %if.end870, label %if.then831

if.then831:                                       ; preds = %for.end825
  %arrayidx836 = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %181, i32 %178, i32 16, i32 0, i32 0
  %arrayidx839 = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %181, i32 %178, i32 16, i32 0, i32 1
  %arrayidx844 = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %181, i32 %178, i32 16, i32 1, i32 0
  %arrayidx847 = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %181, i32 %178, i32 16, i32 1, i32 1
  %arrayidx850 = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %181, i32 %178, i32 16, i32 2, i32 0
  %arrayidx853 = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %181, i32 %178, i32 16, i32 2, i32 1
  %call854 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %call829, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.76, i32 0, i32 0), i16* nonnull %arrayidx828, i16* nonnull %arrayidx836, i16* nonnull %arrayidx839, i16* nonnull %arrayidx826, i16* nonnull %arrayidx844, i16* nonnull %arrayidx847, i16* nonnull %arrayidx850, i16* nonnull %arrayidx853) #13
  switch i32 %call854, label %if.then863 [
    i32 3, label %if.then857
    i32 8, label %if.end870
  ]

if.then857:                                       ; preds = %if.then831
  store i16 -1, i16* %arrayidx826, align 2, !tbaa !47
  br label %if.end870

if.then863:                                       ; preds = %if.then831
  store i16 -1, i16* %arrayidx826, align 2, !tbaa !47
  store i16 -1, i16* %arrayidx828, align 2, !tbaa !47
  br label %if.end870

if.end870:                                        ; preds = %if.then857, %if.then863, %if.then831, %for.end825
  %189 = load i8, i8* %pict_type748, align 4, !tbaa !46
  %cmp872 = icmp eq i8 %189, 98
  br i1 %cmp872, label %sw.bb887, label %if.end875

if.end875:                                        ; preds = %if.end870
  %kept_as_ref = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %181, i32 %178, i32 2
  store i32 1, i32* %kept_as_ref, align 8, !tbaa !72
  %.pre1823 = load i8, i8* %pict_type748, align 4, !tbaa !46
  %conv876 = sext i8 %.pre1823 to i32
  switch i32 %conv876, label %parse_error [
    i32 73, label %sw.epilog
    i32 105, label %sw.bb878
    i32 80, label %sw.bb881
    i32 66, label %sw.bb884
    i32 98, label %sw.bb887
  ]

sw.bb878:                                         ; preds = %if.end875
  br label %sw.epilog

sw.bb881:                                         ; preds = %if.end875
  br label %sw.epilog

sw.bb884:                                         ; preds = %if.end875
  br label %sw.epilog

sw.bb887:                                         ; preds = %if.end870, %if.end875
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end875, %sw.bb887, %sw.bb884, %sw.bb881, %sw.bb878
  %.sink1881 = phi i32 [ 5, %sw.bb887 ], [ 4, %sw.bb884 ], [ 3, %sw.bb881 ], [ 2, %sw.bb878 ], [ 1, %if.end875 ]
  %.sink1880 = phi i32 [ 1, %sw.bb887 ], [ 1, %sw.bb884 ], [ 0, %sw.bb881 ], [ 2, %sw.bb878 ], [ 2, %if.end875 ]
  %frame_type888 = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %181, i32 %178, i32 1
  store i32 %.sink1881, i32* %frame_type888, align 4, !tbaa !204
  %pict_type889 = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %arrayidx772, i32 0, i32 0
  store i32 %.sink1880, i32* %pict_type889, align 8, !tbaa !70
  %cmp890 = icmp slt i32 %add778, 14
  br i1 %cmp890, label %parse_error, label %if.end893

parse_error:                                      ; preds = %if.end817, %if.end817.1, %if.end817.2, %if.end817.3, %if.end817.4, %if.end817.5, %if.end817.6, %if.end817.7, %if.end817.8, %if.end817.9, %if.end817.10, %if.end817.11, %if.end817.12, %if.end817.13, %if.end817.14, %if.end817.15, %if.end875, %if.end770, %sw.epilog
  %p.3 = phi i8* [ %p.2.lcssa, %sw.epilog ], [ null, %if.end770 ], [ %p.2.lcssa, %if.end875 ], [ null, %if.end817.15 ], [ null, %if.end817.14 ], [ null, %if.end817.13 ], [ null, %if.end817.12 ], [ null, %if.end817.11 ], [ null, %if.end817.10 ], [ null, %if.end817.9 ], [ null, %if.end817.8 ], [ null, %if.end817.7 ], [ null, %if.end817.6 ], [ null, %if.end817.5 ], [ null, %if.end817.4 ], [ null, %if.end817.3 ], [ null, %if.end817.2 ], [ null, %if.end817.1 ], [ null, %if.end817 ]
  %e.1 = phi i32 [ %add778, %sw.epilog ], [ %add778, %if.end770 ], [ -1, %if.end875 ], [ %add778, %if.end817.15 ], [ %add778, %if.end817.14 ], [ %add778, %if.end817.13 ], [ %add778, %if.end817.12 ], [ %add778, %if.end817.11 ], [ %add778, %if.end817.10 ], [ %add778, %if.end817.9 ], [ %add778, %if.end817.8 ], [ %add778, %if.end817.7 ], [ %add778, %if.end817.6 ], [ %add778, %if.end817.5 ], [ %add778, %if.end817.4 ], [ %add778, %if.end817.3 ], [ %add778, %if.end817.2 ], [ %add778, %if.end817.1 ], [ %add778, %if.end817 ]
  call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* %h, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.77, i32 0, i32 0), i32 %i740.01763, i32 %e.1) #13
  br label %cleanup899

if.end893:                                        ; preds = %sw.epilog
  %190 = load float, float* %qp_rc, align 4, !tbaa !45
  %191 = fmul fast float %190, 0x3FC5555560000000
  %div.i1617 = fadd fast float %191, -2.000000e+00
  %exp2.i1618 = call fast float @llvm.exp2.f32(float %div.i1617) #13
  %mul.i1619 = fmul fast float %exp2.i1618, 0x3FEB333340000000
  %conv895 = fpext float %mul.i1619 to double
  %qscale896 = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %181, i32 %178, i32 3
  store double %conv895, double* %qscale896, align 8, !tbaa !195
  %192 = load float, float* %qp_aq, align 4, !tbaa !45
  %conv897 = fpext float %192 to double
  %add898 = fadd fast double %total_qp_aq.01760, %conv897
  br label %cleanup899

cleanup899:                                       ; preds = %if.end893, %parse_error, %if.then769, %if.then761
  %p.4 = phi i8* [ %p.11758, %if.then761 ], [ %p.11758, %if.then769 ], [ %p.3, %parse_error ], [ %next.0, %if.end893 ]
  %total_qp_aq.1 = phi double [ %total_qp_aq.01760, %if.then761 ], [ %total_qp_aq.01760, %if.then769 ], [ %total_qp_aq.01760, %parse_error ], [ %add898, %if.end893 ]
  %cleanup.dest.slot.5 = phi i1 [ false, %if.then761 ], [ false, %if.then769 ], [ false, %parse_error ], [ true, %if.end893 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %175) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %174) #13
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %pict_type748) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %173) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %172) #13
  %inc911 = add nuw nsw i32 %i740.01763, 1
  br i1 %cleanup.dest.slot.5, label %for.cond741, label %cleanup1094

for.end914:                                       ; preds = %for.cond741, %for.cond722.preheader, %for.cond741.preheader
  %193 = phi i32 [ %169, %for.cond741.preheader ], [ %169, %for.cond722.preheader ], [ %177, %for.cond741 ]
  %total_qp_aq.0.lcssa = phi double [ 0.000000e+00, %for.cond741.preheader ], [ 0.000000e+00, %for.cond722.preheader ], [ %total_qp_aq.1, %for.cond741 ]
  %b_stitchable = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 71
  %194 = load i32, i32* %b_stitchable, align 4, !tbaa !205
  %tobool916 = icmp eq i32 %194, 0
  br i1 %tobool916, label %if.then917, label %if.end935

if.then917:                                       ; preds = %for.end914
  %conv919 = sitofp i32 %193 to double
  %div920 = fdiv fast double %total_qp_aq.0.lcssa, %conv919
  %add921 = fadd fast double %div920, 5.000000e-01
  %conv922 = fptosi double %add921 to i32
  %cmp923 = icmp slt i32 %conv922, 51
  %spec.select1581 = select i1 %cmp923, i32 %conv922, i32 51
  %i_pic_init_qp = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 53, i32 0, i32 9
  store i32 %spec.select1581, i32* %i_pic_init_qp, align 4, !tbaa !206
  br label %if.end935

if.end935:                                        ; preds = %for.end914, %if.then917
  call void @x264_free(i8* nonnull %call332) #13
  %195 = load i32, i32* %i_rc_method, align 8, !tbaa !82
  %cmp939 = icmp eq i32 %195, 2
  br i1 %cmp939, label %if.then941, label %if.end957

if.then941:                                       ; preds = %if.end935
  %196 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc2, align 64, !tbaa !65
  %i_num_units_in_tick.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 20, i32 16
  %197 = load i32, i32* %i_num_units_in_tick.i, align 4, !tbaa !108
  %conv.i1620 = uitofp i32 %197 to double
  %i_time_scale.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 20, i32 17
  %198 = load i32, i32* %i_time_scale.i, align 4, !tbaa !107
  %conv4.i = uitofp i32 %198 to double
  %div.i1621 = fdiv fast double %conv.i1620, %conv4.i
  %num_entries.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %196, i32 0, i32 44
  %199 = load i32, i32* %num_entries.i, align 8, !tbaa !191
  %cmp987.i = icmp sgt i32 %199, 0
  br i1 %cmp987.i, label %for.body.lr.ph.i, label %for.cond.cleanup.i

for.body.lr.ph.i:                                 ; preds = %if.then941
  %entry6.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %196, i32 0, i32 45
  %200 = load %struct.ratecontrol_entry_t*, %struct.ratecontrol_entry_t** %entry6.i, align 4, !tbaa !66
  br label %for.body.i1629

for.cond.cleanup.i:                               ; preds = %for.body.i1629, %if.then941
  %duration.0.lcssa.i = phi double [ 0.000000e+00, %if.then941 ], [ %add.i1626, %for.body.i1629 ]
  %201 = load i32, i32* %i_bitrate, align 4, !tbaa !92
  %conv9.i = sitofp i32 %201 to double
  %mul10.i = fmul fast double %div.i1621, 1.000000e+03
  %mul.i1622 = fmul fast double %mul10.i, %duration.0.lcssa.i
  %mul11.i = fmul fast double %mul.i1622, %conv9.i
  %conv12.i1623 = fptoui double %mul11.i to i64
  %f_qblur.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 24
  %202 = load float, float* %f_qblur.i, align 8, !tbaa !208
  %conv15.i = fpext float %202 to double
  %f_complexity_blur.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 25
  %203 = load float, float* %f_complexity_blur.i, align 4, !tbaa !209
  %conv18.i = fpext float %203 to double
  %mul19.i = fmul fast double %conv15.i, 4.000000e+00
  %conv20.i = fptosi double %mul19.i to i32
  %or.i = or i32 %conv20.i, 1
  %204 = load i32, i32* %i_mb_count, align 8, !tbaa !37
  %i_bframe.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 21
  %205 = load i32, i32* %i_bframe.i, align 4, !tbaa !83
  %tobool.i1624 = icmp eq i32 %205, 0
  %cond.i1625 = select i1 %tobool.i1624, i32 80, i32 120
  %mul22.i = mul nsw i32 %cond.i1625, %204
  %conv23.i = sitofp i32 %mul22.i to double
  br i1 %cmp987.i, label %for.body30.lr.ph.i, label %for.cond.cleanup52.i

for.body30.lr.ph.i:                               ; preds = %for.cond.cleanup.i
  %entry31.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %196, i32 0, i32 45
  %206 = load %struct.ratecontrol_entry_t*, %struct.ratecontrol_entry_t** %entry31.i, align 4, !tbaa !66
  br label %for.body30.i

for.body.i1629:                                   ; preds = %for.body.i1629, %for.body.lr.ph.i
  %duration.0989.i = phi double [ 0.000000e+00, %for.body.lr.ph.i ], [ %add.i1626, %for.body.i1629 ]
  %i.0988.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i1627, %for.body.i1629 ]
  %i_duration.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %200, i32 %i.0988.i, i32 20
  %207 = load i64, i64* %i_duration.i, align 8, !tbaa !210
  %conv7.i = sitofp i64 %207 to double
  %add.i1626 = fadd fast double %duration.0989.i, %conv7.i
  %inc.i1627 = add nuw nsw i32 %i.0988.i, 1
  %exitcond1799 = icmp eq i32 %inc.i1627, %199
  br i1 %exitcond1799, label %for.cond.cleanup.i, label %for.body.i1629

for.cond.cleanup29.i:                             ; preds = %for.body30.i
  %cmp38.i = icmp ugt i64 %add34.i, %conv12.i1623
  br i1 %cmp38.i, label %if.then.i1631, label %for.body53.lr.ph.i

for.body53.lr.ph.i:                               ; preds = %for.cond.cleanup29.i
  %mul59.i = fmul fast double %conv18.i, 2.000000e+00
  %cmp60958.i = fcmp fast ogt double %mul59.i, 1.000000e+00
  %i_frame_packing.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 54
  %nmb.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %196, i32 0, i32 8
  %cmp129971.i = fcmp fast ult double %mul59.i, 0.000000e+00
  br label %for.body53.i

for.body30.i:                                     ; preds = %for.body30.i, %for.body30.lr.ph.i
  %all_const_bits.0985.i = phi i64 [ 0, %for.body30.lr.ph.i ], [ %add34.i, %for.body30.i ]
  %i24.0984.i = phi i32 [ 0, %for.body30.lr.ph.i ], [ %inc36.i, %for.body30.i ]
  %misc_bits.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %206, i32 %i24.0984.i, i32 6
  %208 = load i32, i32* %misc_bits.i, align 8, !tbaa !196
  %conv33.i = sext i32 %208 to i64
  %add34.i = add i64 %all_const_bits.0985.i, %conv33.i
  %inc36.i = add nuw nsw i32 %i24.0984.i, 1
  %exitcond1035.i = icmp eq i32 %inc36.i, %199
  br i1 %exitcond1035.i, label %for.cond.cleanup29.i, label %for.body30.i

if.then.i1631:                                    ; preds = %for.cond.cleanup29.i
  %conv40.i = uitofp i64 %add34.i to double
  %fps.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %196, i32 0, i32 4
  %209 = load double, double* %fps.i, align 8, !tbaa !93
  %mul41.i = fmul fast double %209, %conv40.i
  %conv43.i = sitofp i32 %199 to double
  %mul44.i1630 = fmul fast double %conv43.i, 1.000000e+03
  %div45.i = fdiv fast double %mul41.i, %mul44.i1630
  %conv46.i = fptosi double %div45.i to i32
  call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* %h, i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.108, i32 0, i32 0), i32 %conv46.i) #13
  br label %cleanup1094

for.cond.cleanup52.i:                             ; preds = %cleanup202.i, %for.cond.cleanup.i
  %mul211.i = shl i32 %199, 3
  %conv212.i = zext i32 %mul211.i to i64
  %call213.i = call i8* @x264_malloc(i64 %conv212.i) #13
  %210 = bitcast i8* %call213.i to double*
  %tobool214.i = icmp eq i8* %call213.i, null
  br i1 %tobool214.i, label %cleanup1094, label %do.end.i1639

for.body53.i:                                     ; preds = %cleanup202.i, %for.body53.lr.ph.i
  %i47.0981.i = phi i32 [ 0, %for.body53.lr.ph.i ], [ %inc207.i, %cleanup202.i ]
  %sub.i1632 = sub nsw i32 %199, %i47.0981.i
  %cmp63959.i = icmp sgt i32 %sub.i1632, 1
  %or.cond960.i = and i1 %cmp60958.i, %cmp63959.i
  br i1 %or.cond960.i, label %for.body66.lr.ph.i, label %cleanup123.i

for.body66.lr.ph.i:                               ; preds = %for.body53.i
  %211 = load i32, i32* %i_frame_packing.i, align 4, !tbaa !211
  %cmp74.i = icmp eq i32 %211, 5
  %add76.i = select i1 %cmp74.i, i32 2, i32 1
  %conv77.i = sitofp i32 %add76.i to float
  %div78.i = fdiv fast float 0x3F847AE140000000, %conv77.i
  %conv79.i = fpext float %div78.i to double
  %div86.i = fdiv fast float 1.000000e+00, %conv77.i
  %conv87.i = fpext float %div86.i to double
  %212 = load i32, i32* %nmb.i, align 8, !tbaa !133
  %conv98.i = sitofp i32 %212 to float
  %div94.i = fdiv fast float 0x3FA47AE140000000, %conv77.i
  %conv95.i1633 = fpext float %div94.i to double
  %213 = fdiv fast float 1.000000e+00, %conv98.i
  br label %for.body66.i

for.body66.i:                                     ; preds = %for.inc121.i, %for.body66.lr.ph.i
  %j.0964.i = phi i32 [ 1, %for.body66.lr.ph.i ], [ %inc122.i, %for.inc121.i ]
  %weight.0963.i = phi double [ 1.000000e+00, %for.body66.lr.ph.i ], [ %mul102.i, %for.inc121.i ]
  %cplx_sum.0962.i = phi double [ 0.000000e+00, %for.body66.lr.ph.i ], [ %add119.i, %for.inc121.i ]
  %weight_sum.0961.i = phi double [ 0.000000e+00, %for.body66.lr.ph.i ], [ %add112.i, %for.inc121.i ]
  %add68.i = add nuw nsw i32 %j.0964.i, %i47.0981.i
  %i_duration70.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %206, i32 %add68.i, i32 20
  %214 = load i64, i64* %i_duration70.i, align 8, !tbaa !210
  %conv71.i = sitofp i64 %214 to double
  %mul72.i = fmul fast double %div.i1621, %conv71.i
  %i_count.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %206, i32 %add68.i, i32 11
  %215 = load i32, i32* %i_count.i, align 4, !tbaa !201
  %conv97.i = sitofp i32 %215 to float
  %216 = fmul fast float %conv97.i, %213
  %conv100.i = fpext float %216 to double
  %square815.i = fmul fast double %conv100.i, %conv100.i
  %sub101.i = fsub fast double 1.000000e+00, %square815.i
  %mul102.i = fmul fast double %sub101.i, %weight.0963.i
  %cmp103.i = fcmp fast olt double %mul102.i, 1.000000e-04
  br i1 %cmp103.i, label %cleanup123.i, label %for.inc121.i

for.inc121.i:                                     ; preds = %for.body66.i
  %cmp.i.i1634 = fcmp fast olt double %mul72.i, %conv79.i
  %cmp1.i.i = fcmp fast ogt double %mul72.i, %conv87.i
  %cond.i.i = select fast i1 %cmp1.i.i, double %conv87.i, double %mul72.i
  %cond5.i.i = select fast i1 %cmp.i.i1634, double %conv79.i, double %cond.i.i
  %217 = mul i32 %j.0964.i, %j.0964.i
  %mul108.i = sub i32 0, %217
  %conv109.i = sitofp i32 %mul108.i to double
  %div110.i = fmul fast double %conv109.i, 5.000000e-03
  %218 = call fast double @llvm.exp.f64(double %div110.i) #13
  %mul111.i1635 = fmul fast double %mul102.i, %218
  %add112.i = fadd fast double %mul111.i1635, %weight_sum.0961.i
  %tex_bits.i832.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %206, i32 %add68.i, i32 5
  %219 = load i32, i32* %tex_bits.i832.i, align 4, !tbaa !199
  %conv.i833.i = sitofp i32 %219 to double
  %add.i834.i = fadd fast double %conv.i833.i, 1.000000e-01
  %qscale1.i835.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %206, i32 %add68.i, i32 3
  %220 = load double, double* %qscale1.i835.i, align 8, !tbaa !195
  %221 = call fast double @llvm.pow.f64(double %220, double 1.100000e+00) #13
  %mul.i836.i = fmul fast double %221, %add.i834.i
  %mv_bits.i837.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %206, i32 %add68.i, i32 4
  %222 = load i32, i32* %mv_bits.i837.i, align 8, !tbaa !200
  %conv2.i838.i = sitofp i32 %222 to double
  %223 = call fast double @llvm.maxnum.f64(double %220, double 1.000000e+00) #13
  %sqrt.i839.i = call fast double @llvm.sqrt.f64(double %223) #13
  %mul14.i840.i = fmul fast double %sqrt.i839.i, %conv2.i838.i
  %sub116.i = fadd fast double %mul14.i840.i, %mul.i836.i
  %mul117.i = fmul fast double %mul111.i1635, %conv95.i1633
  %224 = fmul fast double %mul117.i, %sub116.i
  %div118.i = fdiv fast double %224, %cond5.i.i
  %add119.i = fadd fast double %div118.i, %cplx_sum.0962.i
  %inc122.i = add nuw nsw i32 %j.0964.i, 1
  %conv58.i = sitofp i32 %inc122.i to double
  %cmp60.i = fcmp fast ogt double %mul59.i, %conv58.i
  %cmp63.i = icmp slt i32 %inc122.i, %sub.i1632
  %or.cond.i1636 = and i1 %cmp63.i, %cmp60.i
  br i1 %or.cond.i1636, label %for.body66.i, label %cleanup123.i

cleanup123.i:                                     ; preds = %for.inc121.i, %for.body66.i, %for.body53.i
  %weight_sum.0.lcssa.i = phi double [ 0.000000e+00, %for.body53.i ], [ %add112.i, %for.inc121.i ], [ %weight_sum.0961.i, %for.body66.i ]
  %cplx_sum.0.lcssa.i = phi double [ 0.000000e+00, %for.body53.i ], [ %add119.i, %for.inc121.i ], [ %cplx_sum.0962.i, %for.body66.i ]
  br i1 %cmp129971.i, label %cleanup202.i, label %for.body136.lr.ph.i

for.body136.lr.ph.i:                              ; preds = %cleanup123.i
  %225 = load i32, i32* %i_frame_packing.i, align 4, !tbaa !211
  %cmp147.i = icmp eq i32 %225, 5
  %add149.i = select i1 %cmp147.i, i32 2, i32 1
  %conv150.i = sitofp i32 %add149.i to float
  %div151.i = fdiv fast float 0x3F847AE140000000, %conv150.i
  %conv152.i1637 = fpext float %div151.i to double
  %div159.i = fdiv fast float 1.000000e+00, %conv150.i
  %conv160.i = fpext float %div159.i to double
  %div168.i = fdiv fast float 0x3FA47AE140000000, %conv150.i
  %conv169.i = fpext float %div168.i to double
  %226 = load i32, i32* %nmb.i, align 8, !tbaa !133
  %conv187.i = sitofp i32 %226 to float
  %227 = fdiv fast float 1.000000e+00, %conv187.i
  br label %for.body136.i

for.cond126.i:                                    ; preds = %for.body136.i
  %conv127.i = sitofp i32 %inc201.i to double
  %cmp129.i1638 = fcmp fast oge double %mul59.i, %conv127.i
  %cmp132.i = icmp ugt i32 %i47.0981.i, %j125.0975.i
  %228 = and i1 %cmp132.i, %cmp129.i1638
  br i1 %228, label %for.body136.i, label %cleanup202.i

for.body136.i:                                    ; preds = %for.cond126.i, %for.body136.lr.ph.i
  %j125.0975.i = phi i32 [ 0, %for.body136.lr.ph.i ], [ %inc201.i, %for.cond126.i ]
  %weight.1974.i = phi double [ 1.000000e+00, %for.body136.lr.ph.i ], [ %mul191.i, %for.cond126.i ]
  %cplx_sum.3973.i = phi double [ %cplx_sum.0.lcssa.i, %for.body136.lr.ph.i ], [ %add183.i, %for.cond126.i ]
  %weight_sum.3972.i = phi double [ %weight_sum.0.lcssa.i, %for.body136.lr.ph.i ], [ %add176.i, %for.cond126.i ]
  %sub139.i = sub nsw i32 %i47.0981.i, %j125.0975.i
  %i_duration142.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %206, i32 %sub139.i, i32 20
  %229 = load i64, i64* %i_duration142.i, align 8, !tbaa !210
  %conv143.i = sitofp i64 %229 to double
  %mul144.i = fmul fast double %div.i1621, %conv143.i
  %cmp.i845.i = fcmp fast olt double %mul144.i, %conv152.i1637
  %cmp1.i846.i = fcmp fast ogt double %mul144.i, %conv160.i
  %cond.i847.i = select fast i1 %cmp1.i846.i, double %conv160.i, double %mul144.i
  %cond5.i848.i = select fast i1 %cmp.i845.i, double %conv152.i1637, double %cond.i847.i
  %230 = mul i32 %j125.0975.i, %j125.0975.i
  %mul172.i = sub i32 0, %230
  %conv173.i = sitofp i32 %mul172.i to double
  %div174.i = fmul fast double %conv173.i, 5.000000e-03
  %231 = call fast double @llvm.exp.f64(double %div174.i) #13
  %mul175.i = fmul fast double %231, %weight.1974.i
  %add176.i = fadd fast double %mul175.i, %weight_sum.3972.i
  %tex_bits.i849.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %206, i32 %sub139.i, i32 5
  %232 = load i32, i32* %tex_bits.i849.i, align 4, !tbaa !199
  %conv.i850.i = sitofp i32 %232 to double
  %add.i851.i = fadd fast double %conv.i850.i, 1.000000e-01
  %qscale1.i852.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %206, i32 %sub139.i, i32 3
  %233 = load double, double* %qscale1.i852.i, align 8, !tbaa !195
  %234 = call fast double @llvm.pow.f64(double %233, double 1.100000e+00) #13
  %mul.i853.i = fmul fast double %234, %add.i851.i
  %mv_bits.i854.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %206, i32 %sub139.i, i32 4
  %235 = load i32, i32* %mv_bits.i854.i, align 8, !tbaa !200
  %conv2.i855.i = sitofp i32 %235 to double
  %236 = call fast double @llvm.maxnum.f64(double %233, double 1.000000e+00) #13
  %sqrt.i856.i = call fast double @llvm.sqrt.f64(double %236) #13
  %mul14.i857.i = fmul fast double %sqrt.i856.i, %conv2.i855.i
  %sub180.i = fadd fast double %mul14.i857.i, %mul.i853.i
  %mul181.i = fmul fast double %mul175.i, %conv169.i
  %237 = fmul fast double %mul181.i, %sub180.i
  %div182.i = fdiv fast double %237, %cond5.i848.i
  %add183.i = fadd fast double %div182.i, %cplx_sum.3973.i
  %i_count184.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %206, i32 %sub139.i, i32 11
  %238 = load i32, i32* %i_count184.i, align 4, !tbaa !201
  %conv185.i = sitofp i32 %238 to float
  %239 = fmul fast float %conv185.i, %227
  %conv189.i = fpext float %239 to double
  %square.i = fmul fast double %conv189.i, %conv189.i
  %sub190.i = fsub fast double 1.000000e+00, %square.i
  %mul191.i = fmul fast double %sub190.i, %weight.1974.i
  %cmp192.i = fcmp fast uge double %mul191.i, 1.000000e-04
  %inc201.i = add nuw nsw i32 %j125.0975.i, 1
  br i1 %cmp192.i, label %for.cond126.i, label %cleanup202.i

cleanup202.i:                                     ; preds = %for.body136.i, %for.cond126.i, %cleanup123.i
  %weight_sum.4.i = phi double [ %weight_sum.0.lcssa.i, %cleanup123.i ], [ %add176.i, %for.cond126.i ], [ %add176.i, %for.body136.i ]
  %cplx_sum.4.i = phi double [ %cplx_sum.0.lcssa.i, %cleanup123.i ], [ %add183.i, %for.cond126.i ], [ %add183.i, %for.body136.i ]
  %div204.i = fdiv fast double %cplx_sum.4.i, %weight_sum.4.i
  %conv205.i = fptrunc double %div204.i to float
  %blurred_complexity.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %206, i32 %i47.0981.i, i32 14
  store float %conv205.i, float* %blurred_complexity.i, align 8, !tbaa !212
  %inc207.i = add nuw nsw i32 %i47.0981.i, 1
  %exitcond1034.i = icmp eq i32 %inc207.i, %199
  br i1 %exitcond1034.i, label %for.cond.cleanup52.i, label %for.body53.i

do.end.i1639:                                     ; preds = %for.cond.cleanup52.i
  %cmp217.i = icmp sgt i32 %or.i, 1
  br i1 %cmp217.i, label %do.body220.i, label %if.end230.i

do.body220.i:                                     ; preds = %do.end.i1639
  %240 = load i32, i32* %num_entries.i, align 8, !tbaa !191
  %mul222.i = shl i32 %240, 3
  %conv223.i = zext i32 %mul222.i to i64
  %call224.i = call i8* @x264_malloc(i64 %conv223.i) #13
  %241 = bitcast i8* %call224.i to double*
  %tobool225.i = icmp eq i8* %call224.i, null
  br i1 %tobool225.i, label %cleanup1094, label %if.end230.i

if.end230.i:                                      ; preds = %do.body220.i, %do.end.i1639
  %blurred_qscale.0.i = phi double* [ %241, %do.body220.i ], [ %210, %do.end.i1639 ]
  %242 = load i32, i32* %num_entries.i, align 8, !tbaa !191
  %cmp234954.i = icmp sgt i32 %242, 0
  br i1 %cmp234954.i, label %for.body237.lr.ph.i, label %for.cond.cleanup236.i

for.body237.lr.ph.i:                              ; preds = %if.end230.i
  %entry238.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %196, i32 0, i32 45
  %.pre.i1640 = load %struct.ratecontrol_entry_t*, %struct.ratecontrol_entry_t** %entry238.i, align 4, !tbaa !66
  br label %for.body237.i

for.cond.cleanup236.i:                            ; preds = %for.body237.i, %if.end230.i
  %243 = phi i32 [ %242, %if.end230.i ], [ %255, %for.body237.i ]
  %expected_bits.0.lcssa.i = phi double [ 1.000000e+00, %if.end230.i ], [ %add244.i, %for.body237.i ]
  %conv252.i = uitofp i64 %conv12.i1623 to double
  %div253.i = fdiv fast double %conv252.i, %expected_bits.0.lcssa.i
  %mul254.i = fmul fast double %div253.i, 1.000000e+04
  %mul256.i = fmul fast double %div253.i, 0x3E7AD7F29ABCAF48
  %cmp257951.i = fcmp fast ogt double %mul254.i, %mul256.i
  br i1 %cmp257951.i, label %for.body260.lr.ph.i, label %for.cond.cleanup259.i

for.body260.lr.ph.i:                              ; preds = %for.cond.cleanup236.i
  %last_non_b_pict_type.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %196, i32 0, i32 49
  %last_accum_p_norm.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %196, i32 0, i32 52
  %accum_p_norm.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %196, i32 0, i32 51
  %qcompress.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %196, i32 0, i32 7
  %arrayidx265.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %196, i32 0, i32 48, i32 2
  %arrayidx267.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %196, i32 0, i32 48, i32 1
  %arrayidx269.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %196, i32 0, i32 48, i32 0
  %entry277.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %196, i32 0, i32 45
  %div339.neg.i = sdiv i32 %or.i, -2
  %cmp343.i = fcmp fast oeq float %202, 0.000000e+00
  %mul346.i = fmul fast double %conv15.i, %conv15.i
  %244 = fdiv fast double 1.000000e+00, %mul346.i
  br label %for.body260.i

for.body237.i:                                    ; preds = %for.body237.i, %for.body237.lr.ph.i
  %245 = phi %struct.ratecontrol_entry_t* [ %.pre.i1640, %for.body237.lr.ph.i ], [ %246, %for.body237.i ]
  %expected_bits.0956.i = phi double [ 1.000000e+00, %for.body237.lr.ph.i ], [ %add244.i, %for.body237.i ]
  %i231.0955.i = phi i32 [ 0, %for.body237.lr.ph.i ], [ %inc249.i, %for.body237.i ]
  %arrayidx239.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %245, i32 %i231.0955.i
  %call240.i = call fast fastcc double @get_qscale(%struct.x264_t* %h, %struct.ratecontrol_entry_t* %arrayidx239.i, double 1.000000e+00, i32 %i231.0955.i) #13
  %246 = load %struct.ratecontrol_entry_t*, %struct.ratecontrol_entry_t** %entry238.i, align 4, !tbaa !66
  %cmp.i862.i = fcmp fast olt double %call240.i, 1.000000e-01
  %qscale.addr.0.i863.i = select i1 %cmp.i862.i, double 1.000000e-01, double %call240.i
  %tex_bits.i864.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %246, i32 %i231.0955.i, i32 5
  %247 = load i32, i32* %tex_bits.i864.i, align 4, !tbaa !199
  %conv.i865.i = sitofp i32 %247 to double
  %add.i866.i = fadd fast double %conv.i865.i, 1.000000e-01
  %qscale1.i867.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %246, i32 %i231.0955.i, i32 3
  %248 = load double, double* %qscale1.i867.i, align 8, !tbaa !195
  %div.i868.i = fdiv fast double %248, %qscale.addr.0.i863.i
  %249 = call fast double @llvm.pow.f64(double %div.i868.i, double 1.100000e+00) #13
  %mul.i869.i = fmul fast double %249, %add.i866.i
  %mv_bits.i870.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %246, i32 %i231.0955.i, i32 4
  %250 = load i32, i32* %mv_bits.i870.i, align 8, !tbaa !200
  %conv2.i871.i = sitofp i32 %250 to double
  %251 = call fast double @llvm.maxnum.f64(double %248, double 1.000000e+00) #13
  %252 = call fast double @llvm.maxnum.f64(double %qscale.addr.0.i863.i, double 1.000000e+00) #13
  %div13.i872.i = fdiv fast double %251, %252
  %sqrt.i873.i = call fast double @llvm.sqrt.f64(double %div13.i872.i) #13
  %mul14.i874.i = fmul fast double %sqrt.i873.i, %conv2.i871.i
  %misc_bits.i875.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %246, i32 %i231.0955.i, i32 6
  %253 = load i32, i32* %misc_bits.i875.i, align 8, !tbaa !196
  %conv16.i876.i = sitofp i32 %253 to double
  %add15.i877.i = fadd fast double %expected_bits.0956.i, %conv16.i876.i
  %add17.i878.i = fadd fast double %add15.i877.i, %mul.i869.i
  %add244.i = fadd fast double %add17.i878.i, %mul14.i874.i
  %pict_type.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %246, i32 %i231.0955.i, i32 0
  %254 = load i32, i32* %pict_type.i, align 8, !tbaa !70
  %arrayidx247.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %196, i32 0, i32 48, i32 %254
  store double %call240.i, double* %arrayidx247.i, align 8, !tbaa !154
  %inc249.i = add nuw nsw i32 %i231.0955.i, 1
  %255 = load i32, i32* %num_entries.i, align 8, !tbaa !191
  %cmp234.i = icmp slt i32 %inc249.i, %255
  br i1 %cmp234.i, label %for.body237.i, label %for.cond.cleanup236.i

for.cond.cleanup259.i:                            ; preds = %for.cond.cleanup389.i, %for.cond.cleanup236.i
  call void @x264_free(i8* nonnull %call213.i) #13
  br i1 %cmp217.i, label %if.then422.i, label %if.end423.i

for.body260.i:                                    ; preds = %for.cond.cleanup389.i, %for.body260.lr.ph.i
  %256 = phi i32 [ %243, %for.body260.lr.ph.i ], [ %263, %for.cond.cleanup389.i ]
  %rate_factor.0953.i = phi double [ 0.000000e+00, %for.body260.lr.ph.i ], [ %rate_factor.1.i, %for.cond.cleanup389.i ]
  %step.0952.i = phi double [ %mul254.i, %for.body260.lr.ph.i ], [ %mul417.i, %for.cond.cleanup389.i ]
  %add261.i = fadd fast double %step.0952.i, %rate_factor.0953.i
  store i32 -1, i32* %last_non_b_pict_type.i, align 8, !tbaa !134
  store double 1.000000e+00, double* %last_accum_p_norm.i, align 8, !tbaa !213
  store double 0.000000e+00, double* %accum_p_norm.i, align 8, !tbaa !137
  %257 = load double, double* %qcompress.i, align 8, !tbaa !86
  %sub262.i = fsub fast double 1.000000e+00, %257
  %258 = call fast double @llvm.pow.f64(double %conv23.i, double %sub262.i) #13
  %div263.i = fdiv fast double %258, %add261.i
  store double %div263.i, double* %arrayidx265.i, align 8, !tbaa !154
  store double %div263.i, double* %arrayidx267.i, align 8, !tbaa !154
  store double %div263.i, double* %arrayidx269.i, align 8, !tbaa !154
  %cmp273935.i = icmp sgt i32 %256, 0
  br i1 %cmp273935.i, label %for.body276.preheader.i, label %for.cond294.i.preheader

for.body276.preheader.i:                          ; preds = %for.body260.i
  %.pre1036.i = load %struct.ratecontrol_entry_t*, %struct.ratecontrol_entry_t** %entry277.i, align 4, !tbaa !66
  br label %for.body276.i

for.body276.i:                                    ; preds = %for.body276.i, %for.body276.preheader.i
  %259 = phi %struct.ratecontrol_entry_t* [ %260, %for.body276.i ], [ %.pre1036.i, %for.body276.preheader.i ]
  %i270.0936.i = phi i32 [ %inc288.i, %for.body276.i ], [ 0, %for.body276.preheader.i ]
  %arrayidx278.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %259, i32 %i270.0936.i
  %call279.i = call fast fastcc double @get_qscale(%struct.x264_t* %h, %struct.ratecontrol_entry_t* %arrayidx278.i, double %add261.i, i32 -1) #13
  %arrayidx280.i = getelementptr inbounds double, double* %210, i32 %i270.0936.i
  store double %call279.i, double* %arrayidx280.i, align 8, !tbaa !154
  %260 = load %struct.ratecontrol_entry_t*, %struct.ratecontrol_entry_t** %entry277.i, align 4, !tbaa !66
  %pict_type285.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %260, i32 %i270.0936.i, i32 0
  %261 = load i32, i32* %pict_type285.i, align 8, !tbaa !70
  %arrayidx286.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %196, i32 0, i32 48, i32 %261
  store double %call279.i, double* %arrayidx286.i, align 8, !tbaa !154
  %inc288.i = add nuw nsw i32 %i270.0936.i, 1
  %262 = load i32, i32* %num_entries.i, align 8, !tbaa !191
  %cmp273.i = icmp slt i32 %inc288.i, %262
  br i1 %cmp273.i, label %for.body276.i, label %for.cond294.i.preheader

for.cond294.i.preheader:                          ; preds = %for.body276.i, %for.body260.i
  %i291.0.in.i.ph = phi i32 [ %256, %for.body260.i ], [ %262, %for.body276.i ]
  br label %for.cond294.i

for.cond294.i:                                    ; preds = %for.cond294.i.preheader, %get_diff_limited_q.exit.i
  %i291.0.in.i = phi i32 [ %i291.0.i, %get_diff_limited_q.exit.i ], [ %i291.0.in.i.ph, %for.cond294.i.preheader ]
  %i291.0.i = add nsw i32 %i291.0.in.i, -1
  %cmp295.i = icmp sgt i32 %i291.0.in.i, 0
  br i1 %cmp295.i, label %for.body298.i, label %for.cond.cleanup297.i

for.cond.cleanup297.i:                            ; preds = %for.cond294.i
  %263 = load i32, i32* %num_entries.i, align 8, !tbaa !191
  br i1 %cmp217.i, label %for.cond322.preheader.i, label %if.end383.i

for.cond322.preheader.i:                          ; preds = %for.cond.cleanup297.i
  %cmp324944.i = icmp sgt i32 %263, 0
  br i1 %cmp324944.i, label %for.body327.us.preheader.i, label %for.cond.cleanup389.i

for.body327.us.preheader.i:                       ; preds = %for.cond322.preheader.i
  %264 = load %struct.ratecontrol_entry_t*, %struct.ratecontrol_entry_t** %entry277.i, align 4, !tbaa !66
  br i1 %cmp343.i, label %for.body327.us.i.us, label %for.body327.us.i

for.body327.us.i.us:                              ; preds = %for.body327.us.preheader.i, %for.cond333.for.cond.cleanup336_crit_edge.us.i.loopexit.us
  %i321.0945.us.i.us = phi i32 [ %inc380.us.i.us, %for.cond333.for.cond.cleanup336_crit_edge.us.i.loopexit.us ], [ 0, %for.body327.us.preheader.i ]
  %add338.us.i.us = add i32 %i321.0945.us.i.us, %div339.neg.i
  %pict_type356.us.i.us = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %264, i32 %i321.0945.us.i.us, i32 0
  br label %for.body337.us.us.i.us

for.body337.us.us.i.us:                           ; preds = %for.body327.us.i.us, %cleanup368.us.us.i.us
  %j332.0941.us.us.i.us = phi i32 [ %inc374.us.us.i.us, %cleanup368.us.us.i.us ], [ 0, %for.body327.us.i.us ]
  %sum.0940.us.us.i.us = phi double [ %sum.1.us.us.i.us, %cleanup368.us.us.i.us ], [ 0.000000e+00, %for.body327.us.i.us ]
  %q331.0939.us.us.i.us = phi double [ %q331.1.us.us.i.us, %cleanup368.us.us.i.us ], [ 0.000000e+00, %for.body327.us.i.us ]
  %sub340.us.us.i.us = add i32 %j332.0941.us.us.i.us, %add338.us.i.us
  %cmp349.us.us.i.us = icmp sgt i32 %sub340.us.us.i.us, -1
  %cmp352.us.us.i.us = icmp slt i32 %sub340.us.us.i.us, %263
  %or.cond924.us.us.i.us = and i1 %cmp349.us.us.i.us, %cmp352.us.us.i.us
  br i1 %or.cond924.us.us.i.us, label %if.end355.us.us.i.us, label %cleanup368.us.us.i.us

if.end355.us.us.i.us:                             ; preds = %for.body337.us.us.i.us
  %265 = load i32, i32* %pict_type356.us.i.us, align 8, !tbaa !70
  %pict_type359.us.us.i.us = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %264, i32 %sub340.us.us.i.us, i32 0
  %266 = load i32, i32* %pict_type359.us.us.i.us, align 8, !tbaa !70
  %cmp360.us.us.i.us = icmp eq i32 %265, %266
  br i1 %cmp360.us.us.i.us, label %if.end363.us.us.i.us, label %cleanup368.us.us.i.us

if.end363.us.us.i.us:                             ; preds = %if.end355.us.us.i.us
  %arrayidx364.us.us.i.us = getelementptr inbounds double, double* %210, i32 %sub340.us.us.i.us
  %267 = load double, double* %arrayidx364.us.us.i.us, align 8, !tbaa !154
  %add366.us.us.i.us = fadd fast double %267, %q331.0939.us.us.i.us
  %add367.us.us.i.us = fadd fast double %sum.0940.us.us.i.us, 1.000000e+00
  br label %cleanup368.us.us.i.us

cleanup368.us.us.i.us:                            ; preds = %if.end363.us.us.i.us, %if.end355.us.us.i.us, %for.body337.us.us.i.us
  %q331.1.us.us.i.us = phi double [ %add366.us.us.i.us, %if.end363.us.us.i.us ], [ %q331.0939.us.us.i.us, %for.body337.us.us.i.us ], [ %q331.0939.us.us.i.us, %if.end355.us.us.i.us ]
  %sum.1.us.us.i.us = phi double [ %add367.us.us.i.us, %if.end363.us.us.i.us ], [ %sum.0940.us.us.i.us, %for.body337.us.us.i.us ], [ %sum.0940.us.us.i.us, %if.end355.us.us.i.us ]
  %inc374.us.us.i.us = add nuw nsw i32 %j332.0941.us.us.i.us, 1
  %exitcond1033.i.us = icmp eq i32 %inc374.us.us.i.us, %or.i
  br i1 %exitcond1033.i.us, label %for.cond333.for.cond.cleanup336_crit_edge.us.i.loopexit.us, label %for.body337.us.us.i.us

for.cond333.for.cond.cleanup336_crit_edge.us.i.loopexit.us: ; preds = %cleanup368.us.us.i.us
  %div377.us.i.us = fdiv fast double %q331.1.us.us.i.us, %sum.1.us.us.i.us
  %arrayidx378.us.i.us = getelementptr inbounds double, double* %blurred_qscale.0.i, i32 %i321.0945.us.i.us
  store double %div377.us.i.us, double* %arrayidx378.us.i.us, align 8, !tbaa !154
  %inc380.us.i.us = add nuw nsw i32 %i321.0945.us.i.us, 1
  %exitcond1797 = icmp eq i32 %inc380.us.i.us, %263
  br i1 %exitcond1797, label %if.end383.i, label %for.body327.us.i.us

for.body327.us.i:                                 ; preds = %for.body327.us.preheader.i, %for.cond333.for.cond.cleanup336_crit_edge.us.i
  %i321.0945.us.i = phi i32 [ %inc380.us.i, %for.cond333.for.cond.cleanup336_crit_edge.us.i ], [ 0, %for.body327.us.preheader.i ]
  %add338.us.i = add i32 %i321.0945.us.i, %div339.neg.i
  %pict_type356.us.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %264, i32 %i321.0945.us.i, i32 0
  br label %for.body337.us993.i

for.body337.us993.i:                              ; preds = %for.body327.us.i, %cleanup368.us1016.i
  %j332.0941.us994.i = phi i32 [ %inc374.us1019.i, %cleanup368.us1016.i ], [ 0, %for.body327.us.i ]
  %sum.0940.us995.i = phi double [ %sum.1.us1018.i, %cleanup368.us1016.i ], [ 0.000000e+00, %for.body327.us.i ]
  %q331.0939.us996.i = phi double [ %q331.1.us1017.i, %cleanup368.us1016.i ], [ 0.000000e+00, %for.body327.us.i ]
  %sub340.us997.i = add i32 %j332.0941.us994.i, %add338.us.i
  %sub341.us998.i = sub nsw i32 %sub340.us997.i, %i321.0945.us.i
  %conv342.us999.i = sitofp i32 %sub341.us998.i to double
  %fneg.us1001.i = fsub fast double -0.000000e+00, %conv342.us999.i
  %mul345.us1002.i = fmul fast double %fneg.us1001.i, %conv342.us999.i
  %268 = fmul fast double %mul345.us1002.i, %244
  %269 = call fast double @llvm.exp.f64(double %268) #13
  %cmp349.us1005.i = icmp sgt i32 %sub340.us997.i, -1
  %cmp352.us1006.i = icmp slt i32 %sub340.us997.i, %263
  %or.cond924.us1007.i = and i1 %cmp349.us1005.i, %cmp352.us1006.i
  br i1 %or.cond924.us1007.i, label %if.end355.us1008.i, label %cleanup368.us1016.i

if.end355.us1008.i:                               ; preds = %for.body337.us993.i
  %270 = load i32, i32* %pict_type356.us.i, align 8, !tbaa !70
  %pict_type359.us1009.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %264, i32 %sub340.us997.i, i32 0
  %271 = load i32, i32* %pict_type359.us1009.i, align 8, !tbaa !70
  %cmp360.us1010.i = icmp eq i32 %270, %271
  br i1 %cmp360.us1010.i, label %if.end363.us1011.i, label %cleanup368.us1016.i

if.end363.us1011.i:                               ; preds = %if.end355.us1008.i
  %arrayidx364.us1012.i = getelementptr inbounds double, double* %210, i32 %sub340.us997.i
  %272 = load double, double* %arrayidx364.us1012.i, align 8, !tbaa !154
  %mul365.us1013.i = fmul fast double %272, %269
  %add366.us1014.i = fadd fast double %mul365.us1013.i, %q331.0939.us996.i
  %add367.us1015.i = fadd fast double %269, %sum.0940.us995.i
  br label %cleanup368.us1016.i

cleanup368.us1016.i:                              ; preds = %if.end363.us1011.i, %if.end355.us1008.i, %for.body337.us993.i
  %q331.1.us1017.i = phi double [ %add366.us1014.i, %if.end363.us1011.i ], [ %q331.0939.us996.i, %for.body337.us993.i ], [ %q331.0939.us996.i, %if.end355.us1008.i ]
  %sum.1.us1018.i = phi double [ %add367.us1015.i, %if.end363.us1011.i ], [ %sum.0940.us995.i, %for.body337.us993.i ], [ %sum.0940.us995.i, %if.end355.us1008.i ]
  %inc374.us1019.i = add nuw nsw i32 %j332.0941.us994.i, 1
  %exitcond1032.i = icmp eq i32 %inc374.us1019.i, %or.i
  br i1 %exitcond1032.i, label %for.cond333.for.cond.cleanup336_crit_edge.us.i, label %for.body337.us993.i

for.cond333.for.cond.cleanup336_crit_edge.us.i:   ; preds = %cleanup368.us1016.i
  %div377.us.i = fdiv fast double %q331.1.us1017.i, %sum.1.us1018.i
  %arrayidx378.us.i = getelementptr inbounds double, double* %blurred_qscale.0.i, i32 %i321.0945.us.i
  store double %div377.us.i, double* %arrayidx378.us.i, align 8, !tbaa !154
  %inc380.us.i = add nuw nsw i32 %i321.0945.us.i, 1
  %exitcond1796 = icmp eq i32 %inc380.us.i, %263
  br i1 %exitcond1796, label %if.end383.i, label %for.body327.us.i

for.body298.i:                                    ; preds = %for.cond294.i
  %273 = load %struct.ratecontrol_entry_t*, %struct.ratecontrol_entry_t** %entry277.i, align 4, !tbaa !66
  %arrayidx301.i = getelementptr inbounds double, double* %210, i32 %i291.0.i
  %274 = load double, double* %arrayidx301.i, align 8, !tbaa !154
  %275 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc2, align 64, !tbaa !65
  %pict_type1.i.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %273, i32 %i291.0.i, i32 0
  %276 = load i32, i32* %pict_type1.i.i, align 8, !tbaa !70
  %i_zones.i.i.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %275, i32 0, i32 66
  %277 = load i32, i32* %i_zones.i.i.i, align 8, !tbaa !171
  %cmp8.i.i.i = icmp sgt i32 %277, 0
  br i1 %cmp8.i.i.i, label %for.body.lr.ph.i.i880.i, label %get_zone.exit.i.i

for.body.lr.ph.i.i880.i:                          ; preds = %for.body298.i
  %zones.i.i.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %275, i32 0, i32 67
  %278 = load %struct.x264_zone_t*, %struct.x264_zone_t** %zones.i.i.i, align 4, !tbaa !172
  br label %for.body.i.i882.i

for.body.i.i882.i:                                ; preds = %cleanup.i.i.i, %for.body.lr.ph.i.i880.i
  %i.09.in.i.i.i = phi i32 [ %277, %for.body.lr.ph.i.i880.i ], [ %i.09.i.i.i, %cleanup.i.i.i ]
  %i.09.i.i.i = add nsw i32 %i.09.in.i.i.i, -1
  %arrayidx.i.i881.i = getelementptr inbounds %struct.x264_zone_t, %struct.x264_zone_t* %278, i32 %i.09.i.i.i
  %i_start.i.i.i = getelementptr inbounds %struct.x264_zone_t, %struct.x264_zone_t* %arrayidx.i.i881.i, i32 0, i32 0
  %279 = load i32, i32* %i_start.i.i.i, align 4, !tbaa !173
  %cmp2.i.i.i = icmp slt i32 %279, %i291.0.in.i
  br i1 %cmp2.i.i.i, label %land.lhs.true.i.i.i, label %cleanup.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i882.i
  %i_end.i.i.i = getelementptr inbounds %struct.x264_zone_t, %struct.x264_zone_t* %278, i32 %i.09.i.i.i, i32 1
  %280 = load i32, i32* %i_end.i.i.i, align 4, !tbaa !174
  %cmp3.i.i.i = icmp slt i32 %280, %i291.0.i
  br i1 %cmp3.i.i.i, label %cleanup.i.i.i, label %get_zone.exit.i.i

cleanup.i.i.i:                                    ; preds = %land.lhs.true.i.i.i, %for.body.i.i882.i
  %cmp.i.i.i = icmp sgt i32 %i.09.in.i.i.i, 1
  br i1 %cmp.i.i.i, label %for.body.i.i882.i, label %get_zone.exit.i.i

get_zone.exit.i.i:                                ; preds = %cleanup.i.i.i, %land.lhs.true.i.i.i, %for.body298.i
  %281 = phi %struct.x264_zone_t* [ null, %for.body298.i ], [ %arrayidx.i.i881.i, %land.lhs.true.i.i.i ], [ null, %cleanup.i.i.i ]
  %cmp.i883.i = icmp eq i32 %276, 2
  br i1 %cmp.i883.i, label %if.then.i.i1641, label %if.else21.i.i

if.then.i.i1641:                                  ; preds = %get_zone.exit.i.i
  %accum_p_qp.i.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %275, i32 0, i32 50
  %282 = load double, double* %accum_p_qp.i.i, align 8, !tbaa !138
  %accum_p_norm.i.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %275, i32 0, i32 51
  %283 = load double, double* %accum_p_norm.i.i, align 8, !tbaa !137
  %div.i884.i = fdiv fast double %282, %283
  %conv.i885.i = fptrunc double %div.i884.i to float
  %284 = fmul fast float %conv.i885.i, 0x3FC5555560000000
  %div.i190.i.i = fadd fast float %284, -2.000000e+00
  %exp2.i191.i.i = call fast float @llvm.exp2.f32(float %div.i190.i.i) #13
  %mul.i192.i.i = fmul fast float %exp2.i191.i.i, 0x3FEB333340000000
  %conv3.i.i = fpext float %mul.i192.i.i to double
  %285 = load float, float* %f_ip_factor, align 8, !tbaa !141
  %conv5.i886.i = fpext float %285 to double
  %cmp7.i.i = fcmp fast ugt double %283, 0.000000e+00
  br i1 %cmp7.i.i, label %if.else.i.i1642, label %if.end45.i.i

if.else.i.i1642:                                  ; preds = %if.then.i.i1641
  %cmp11.i.i = fcmp fast ult double %283, 1.000000e+00
  br i1 %cmp11.i.i, label %if.else15.i.i1644, label %if.then13.i.i1643

if.then13.i.i1643:                                ; preds = %if.else.i.i1642
  %div14.i.i = fdiv fast double %conv3.i.i, %conv5.i886.i
  br label %if.end45.i.i

if.else15.i.i1644:                                ; preds = %if.else.i.i1642
  %mul.i887.i = fmul fast double %283, %conv3.i.i
  %div17.i.i = fdiv fast double %mul.i887.i, %conv5.i886.i
  %sub.i888.i = fsub fast double 1.000000e+00, %283
  %mul19.i.i = fmul fast double %sub.i888.i, %274
  %add.i889.i = fadd fast double %div17.i.i, %mul19.i.i
  br label %if.end45.i.i

if.else21.i.i:                                    ; preds = %get_zone.exit.i.i
  switch i32 %276, label %if.end45.i.i [
    i32 1, label %if.then24.i.i
    i32 0, label %land.lhs.true.i.i
  ]

if.then24.i.i:                                    ; preds = %if.else21.i.i
  %last_non_b_pict_type.i.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %275, i32 0, i32 49
  %286 = load i32, i32* %last_non_b_pict_type.i.i, align 8, !tbaa !134
  %arrayidx.i890.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %275, i32 0, i32 48, i32 %286
  %287 = load double, double* %arrayidx.i890.i, align 8, !tbaa !154
  %kept_as_ref.i.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %273, i32 %i291.0.i, i32 2
  %288 = load i32, i32* %kept_as_ref.i.i, align 8, !tbaa !72
  %tobool.i891.i = icmp eq i32 %288, 0
  br i1 %tobool.i891.i, label %if.then25.i.i, label %if.end45.i.i

if.then25.i.i:                                    ; preds = %if.then24.i.i
  %289 = load float, float* %f_pb_factor151, align 4, !tbaa !130
  %conv28.i.i = fpext float %289 to double
  %mul29.i.i = fmul fast double %287, %conv28.i.i
  br label %if.end45.i.i

land.lhs.true.i.i:                                ; preds = %if.else21.i.i
  %last_non_b_pict_type34.i.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %275, i32 0, i32 49
  %290 = load i32, i32* %last_non_b_pict_type34.i.i, align 8, !tbaa !134
  %cmp35.i.i = icmp eq i32 %290, 0
  br i1 %cmp35.i.i, label %land.lhs.true37.i.i, label %if.end45.i.i

land.lhs.true37.i.i:                              ; preds = %land.lhs.true.i.i
  %tex_bits.i892.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %273, i32 %i291.0.i, i32 5
  %291 = load i32, i32* %tex_bits.i892.i, align 4, !tbaa !199
  %cmp38.i.i = icmp eq i32 %291, 0
  br i1 %cmp38.i.i, label %if.then40.i.i, label %if.end45.i.i

if.then40.i.i:                                    ; preds = %land.lhs.true37.i.i
  %arrayidx42.i.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %275, i32 0, i32 48, i32 0
  %292 = load double, double* %arrayidx42.i.i, align 8, !tbaa !154
  br label %if.end45.i.i

if.end45.i.i:                                     ; preds = %if.then40.i.i, %land.lhs.true37.i.i, %land.lhs.true.i.i, %if.then25.i.i, %if.then24.i.i, %if.else21.i.i, %if.else15.i.i1644, %if.then13.i.i1643, %if.then.i.i1641
  %q.addr.1.i.i = phi double [ %287, %if.then24.i.i ], [ %mul29.i.i, %if.then25.i.i ], [ %292, %if.then40.i.i ], [ %274, %land.lhs.true37.i.i ], [ %274, %land.lhs.true.i.i ], [ %div14.i.i, %if.then13.i.i1643 ], [ %add.i889.i, %if.else15.i.i1644 ], [ %274, %if.then.i.i1641 ], [ %274, %if.else21.i.i ]
  %last_non_b_pict_type46.i.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %275, i32 0, i32 49
  %293 = load i32, i32* %last_non_b_pict_type46.i.i, align 8, !tbaa !134
  %cmp47.i.i = icmp eq i32 %293, %276
  br i1 %cmp47.i.i, label %land.lhs.true49.i.i, label %if.end69.i.i

land.lhs.true49.i.i:                              ; preds = %if.end45.i.i
  br i1 %cmp.i883.i, label %lor.lhs.false.i.i, label %if.then54.i.i

lor.lhs.false.i.i:                                ; preds = %land.lhs.true49.i.i
  %last_accum_p_norm.i.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %275, i32 0, i32 52
  %294 = load double, double* %last_accum_p_norm.i.i, align 8, !tbaa !213
  %cmp52.i.i = fcmp fast olt double %294, 1.000000e+00
  br i1 %cmp52.i.i, label %if.then54.i.i, label %if.end69.thread.i.i

if.end69.thread.i.i:                              ; preds = %lor.lhs.false.i.i
  %arrayidx71194.i.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %275, i32 0, i32 48, i32 2
  store double %q.addr.1.i.i, double* %arrayidx71194.i.i, align 8, !tbaa !154
  br label %if.then74.i.i

if.then54.i.i:                                    ; preds = %lor.lhs.false.i.i, %land.lhs.true49.i.i
  %arrayidx56.i.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %275, i32 0, i32 48, i32 %276
  %295 = load double, double* %arrayidx56.i.i, align 8, !tbaa !154
  %lstep.i.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %275, i32 0, i32 55
  %296 = load double, double* %lstep.i.i, align 8, !tbaa !147
  %mul57.i.i = fmul fast double %296, %295
  %div59.i.i = fdiv fast double %295, %296
  %cmp60.i.i = fcmp fast ogt double %q.addr.1.i.i, %mul57.i.i
  br i1 %cmp60.i.i, label %if.end69.i.i, label %if.else63.i.i

if.else63.i.i:                                    ; preds = %if.then54.i.i
  %cmp64.i893.i = fcmp fast olt double %q.addr.1.i.i, %div59.i.i
  br i1 %cmp64.i893.i, label %if.then66.i.i, label %if.end69.i.i

if.then66.i.i:                                    ; preds = %if.else63.i.i
  br label %if.end69.i.i

if.end69.i.i:                                     ; preds = %if.then66.i.i, %if.else63.i.i, %if.then54.i.i, %if.end45.i.i
  %q.addr.3.i.i = phi double [ %q.addr.1.i.i, %if.end45.i.i ], [ %div59.i.i, %if.then66.i.i ], [ %q.addr.1.i.i, %if.else63.i.i ], [ %mul57.i.i, %if.then54.i.i ]
  %arrayidx71.i.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %275, i32 0, i32 48, i32 %276
  store double %q.addr.3.i.i, double* %arrayidx71.i.i, align 8, !tbaa !154
  %cmp72.i894.i = icmp eq i32 %276, 1
  br i1 %cmp72.i894.i, label %if.end76.i.i, label %if.then74.i.i

if.then74.i.i:                                    ; preds = %if.end69.i.i, %if.end69.thread.i.i
  %q.addr.3196.i.i = phi double [ %q.addr.1.i.i, %if.end69.thread.i.i ], [ %q.addr.3.i.i, %if.end69.i.i ]
  store i32 %276, i32* %last_non_b_pict_type46.i.i, align 8, !tbaa !134
  br label %if.end76.i.i

if.end76.i.i:                                     ; preds = %if.then74.i.i, %if.end69.i.i
  %q.addr.3197.i.i = phi double [ %q.addr.3.i.i, %if.end69.i.i ], [ %q.addr.3196.i.i, %if.then74.i.i ]
  br i1 %cmp.i883.i, label %if.end84.thread.i.i, label %if.end84.i.i

if.end84.thread.i.i:                              ; preds = %if.end76.i.i
  %accum_p_norm80.i.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %275, i32 0, i32 51
  %297 = load double, double* %accum_p_norm80.i.i, align 8, !tbaa !137
  %last_accum_p_norm81.i.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %275, i32 0, i32 52
  store double %297, double* %last_accum_p_norm81.i.i, align 8, !tbaa !213
  %accum_p_qp83.i.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %275, i32 0, i32 50
  %298 = bitcast double* %accum_p_qp83.i.i to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %298, i8 0, i64 16, i1 false) #13
  br label %if.end107.i.i

if.end84.i.i:                                     ; preds = %if.end76.i.i
  %cmp85.i.i = icmp eq i32 %276, 0
  br i1 %cmp85.i.i, label %if.then87.i.i, label %if.end107.i.i

if.then87.i.i:                                    ; preds = %if.end84.i.i
  %i_count.i.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %273, i32 %i291.0.i, i32 11
  %299 = load i32, i32* %i_count.i.i, align 4, !tbaa !201
  %conv88.i.i = sitofp i32 %299 to float
  %nmb.i.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %275, i32 0, i32 8
  %300 = load i32, i32* %nmb.i.i, align 8, !tbaa !133
  %conv89.i.i = sitofp i32 %300 to float
  %div90.i.i = fdiv fast float %conv88.i.i, %conv89.i.i
  %conv91.i.i = fpext float %div90.i.i to double
  %square.i.i = fmul fast double %conv91.i.i, %conv91.i.i
  %sub92.i.i = fsub fast double 1.000000e+00, %square.i.i
  %conv93.i.i = fptrunc double %sub92.i.i to float
  %conv94.i.i = fpext float %conv93.i.i to double
  %conv95.i.i = fptrunc double %q.addr.3197.i.i to float
  %div.i188.i.i = fmul fast float %conv95.i.i, 0x3FF2D2D2C0000000
  %301 = call fast float @llvm.log2.f32(float %div.i188.i.i) #13
  %mul.i189.i.i = fmul fast float %301, 6.000000e+00
  %add.i.i895.i = fadd fast float %mul.i189.i.i, 1.200000e+01
  %conv97.i.i = fpext float %add.i.i895.i to double
  %accum_p_qp98.i.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %275, i32 0, i32 50
  %302 = load double, double* %accum_p_qp98.i.i, align 8, !tbaa !138
  %add99.i.i = fadd fast double %302, %conv97.i.i
  %mul100.i.i = fmul fast double %add99.i.i, %conv94.i.i
  store double %mul100.i.i, double* %accum_p_qp98.i.i, align 8, !tbaa !138
  %accum_p_norm103.i.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %275, i32 0, i32 51
  %303 = load double, double* %accum_p_norm103.i.i, align 8, !tbaa !137
  %add104.i.i = fadd fast double %303, 1.000000e+00
  %mul105.i.i = fmul fast double %add104.i.i, %conv94.i.i
  store double %mul105.i.i, double* %accum_p_norm103.i.i, align 8, !tbaa !137
  br label %if.end107.i.i

if.end107.i.i:                                    ; preds = %if.then87.i.i, %if.end84.i.i, %if.end84.thread.i.i
  %tobool108.i.i = icmp eq %struct.x264_zone_t* %281, null
  br i1 %tobool108.i.i, label %get_diff_limited_q.exit.i, label %if.then109.i.i

if.then109.i.i:                                   ; preds = %if.end107.i.i
  %b_force_qp.i.i1645 = getelementptr inbounds %struct.x264_zone_t, %struct.x264_zone_t* %281, i32 0, i32 2
  %304 = load i32, i32* %b_force_qp.i.i1645, align 4, !tbaa !167
  %tobool110.i.i = icmp eq i32 %304, 0
  br i1 %tobool110.i.i, label %if.else115.i.i, label %if.then111.i.i

if.then111.i.i:                                   ; preds = %if.then109.i.i
  %i_qp.i.i1646 = getelementptr inbounds %struct.x264_zone_t, %struct.x264_zone_t* %281, i32 0, i32 3
  %305 = load i32, i32* %i_qp.i.i1646, align 4, !tbaa !214
  %conv112.i.i = sitofp i32 %305 to float
  %306 = fmul fast float %conv112.i.i, 0x3FC5555560000000
  %div.i.i896.i = fadd fast float %306, -2.000000e+00
  %exp2.i.i897.i = call fast float @llvm.exp2.f32(float %div.i.i896.i) #13
  %mul.i.i898.i = fmul fast float %exp2.i.i897.i, 0x3FEB333340000000
  %conv114.i.i = fpext float %mul.i.i898.i to double
  br label %get_diff_limited_q.exit.i

if.else115.i.i:                                   ; preds = %if.then109.i.i
  %f_bitrate_factor.i.i1647 = getelementptr inbounds %struct.x264_zone_t, %struct.x264_zone_t* %281, i32 0, i32 4
  %307 = load float, float* %f_bitrate_factor.i.i1647, align 4, !tbaa !166
  %conv116.i.i = fpext float %307 to double
  %div117.i.i = fdiv fast double %q.addr.3197.i.i, %conv116.i.i
  br label %get_diff_limited_q.exit.i

get_diff_limited_q.exit.i:                        ; preds = %if.else115.i.i, %if.then111.i.i, %if.end107.i.i
  %q.addr.4.i.i = phi double [ %conv114.i.i, %if.then111.i.i ], [ %div117.i.i, %if.else115.i.i ], [ %q.addr.3197.i.i, %if.end107.i.i ]
  store double %q.addr.4.i.i, double* %arrayidx301.i, align 8, !tbaa !154
  %cmp305.i = fcmp fast ult double %q.addr.4.i.i, 0.000000e+00
  br i1 %cmp305.i, label %if.else308.i, label %for.cond294.i

if.else308.i:                                     ; preds = %get_diff_limited_q.exit.i
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i32 0, i32 0), i32 3027, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.init_pass2, i32 0, i32 0)) #15
  unreachable

if.end383.i:                                      ; preds = %for.cond333.for.cond.cleanup336_crit_edge.us.i, %for.cond333.for.cond.cleanup336_crit_edge.us.i.loopexit.us, %for.cond.cleanup297.i
  %cmp387947.i = icmp sgt i32 %263, 0
  br i1 %cmp387947.i, label %for.body390.lr.ph.i, label %for.cond.cleanup389.i

for.body390.lr.ph.i:                              ; preds = %if.end383.i
  %308 = load %struct.ratecontrol_entry_t*, %struct.ratecontrol_entry_t** %entry277.i, align 4, !tbaa !66
  br label %for.body390.i

for.cond.cleanup389.i:                            ; preds = %if.end402.i, %if.end383.i, %for.cond322.preheader.i
  %expected_bits.1.lcssa.i = phi double [ 0.000000e+00, %if.end383.i ], [ 0.000000e+00, %for.cond322.preheader.i ], [ %add405.i, %if.end402.i ]
  %cmp411.i = fcmp fast ogt double %expected_bits.1.lcssa.i, %conv252.i
  %rate_factor.1.i = select i1 %cmp411.i, double %rate_factor.0953.i, double %add261.i
  %mul417.i = fmul fast double %step.0952.i, 5.000000e-01
  %cmp257.i = fcmp fast ogt double %mul417.i, %mul256.i
  br i1 %cmp257.i, label %for.body260.i, label %for.cond.cleanup259.i

for.body390.i:                                    ; preds = %if.end402.i, %for.body390.lr.ph.i
  %i384.0949.i = phi i32 [ 0, %for.body390.lr.ph.i ], [ %inc407.i, %if.end402.i ]
  %expected_bits.1948.i = phi double [ 0.000000e+00, %for.body390.lr.ph.i ], [ %add405.i, %if.end402.i ]
  %pict_type394.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %308, i32 %i384.0949.i, i32 0
  %309 = load i32, i32* %pict_type394.i, align 8, !tbaa !70
  %arrayidx395.i = getelementptr inbounds double, double* %blurred_qscale.0.i, i32 %i384.0949.i
  %310 = load double, double* %arrayidx395.i, align 8, !tbaa !154
  %call396.i = call fast fastcc double @clip_qscale(%struct.x264_t* %h, i32 %309, double %310) #13
  %new_qscale.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %308, i32 %i384.0949.i, i32 9
  store double %call396.i, double* %new_qscale.i, align 8, !tbaa !194
  %cmp398.i = fcmp fast ult double %call396.i, 0.000000e+00
  br i1 %cmp398.i, label %if.else401.i, label %if.end402.i

if.else401.i:                                     ; preds = %for.body390.i
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i32 0, i32 0), i32 3060, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.init_pass2, i32 0, i32 0)) #15
  unreachable

if.end402.i:                                      ; preds = %for.body390.i
  %cmp.i899.i = fcmp fast olt double %call396.i, 1.000000e-01
  %qscale.addr.0.i900.i = select i1 %cmp.i899.i, double 1.000000e-01, double %call396.i
  %tex_bits.i901.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %308, i32 %i384.0949.i, i32 5
  %311 = load i32, i32* %tex_bits.i901.i, align 4, !tbaa !199
  %conv.i902.i = sitofp i32 %311 to double
  %add.i903.i = fadd fast double %conv.i902.i, 1.000000e-01
  %qscale1.i904.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %308, i32 %i384.0949.i, i32 3
  %312 = load double, double* %qscale1.i904.i, align 8, !tbaa !195
  %div.i905.i = fdiv fast double %312, %qscale.addr.0.i900.i
  %313 = call fast double @llvm.pow.f64(double %div.i905.i, double 1.100000e+00) #13
  %mul.i906.i = fmul fast double %313, %add.i903.i
  %mv_bits.i907.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %308, i32 %i384.0949.i, i32 4
  %314 = load i32, i32* %mv_bits.i907.i, align 8, !tbaa !200
  %conv2.i908.i = sitofp i32 %314 to double
  %315 = call fast double @llvm.maxnum.f64(double %312, double 1.000000e+00) #13
  %316 = call fast double @llvm.maxnum.f64(double %qscale.addr.0.i900.i, double 1.000000e+00) #13
  %div13.i909.i = fdiv fast double %315, %316
  %sqrt.i910.i = call fast double @llvm.sqrt.f64(double %div13.i909.i) #13
  %mul14.i911.i = fmul fast double %sqrt.i910.i, %conv2.i908.i
  %misc_bits.i912.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %308, i32 %i384.0949.i, i32 6
  %317 = load i32, i32* %misc_bits.i912.i, align 8, !tbaa !196
  %conv16.i913.i = sitofp i32 %317 to double
  %add15.i914.i = fadd fast double %expected_bits.1948.i, %conv16.i913.i
  %add17.i915.i = fadd fast double %add15.i914.i, %mul.i906.i
  %add405.i = fadd fast double %add17.i915.i, %mul14.i911.i
  %inc407.i = add nuw nsw i32 %i384.0949.i, 1
  %exitcond1798 = icmp eq i32 %inc407.i, %263
  br i1 %exitcond1798, label %for.cond.cleanup389.i, label %for.body390.i

if.then422.i:                                     ; preds = %for.cond.cleanup259.i
  %318 = bitcast double* %blurred_qscale.0.i to i8*
  call void @x264_free(i8* %318) #13
  br label %if.end423.i

if.end423.i:                                      ; preds = %if.then422.i, %for.cond.cleanup259.i
  %b_vbv.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %196, i32 0, i32 2
  %319 = load i32, i32* %b_vbv.i, align 8, !tbaa !125
  %tobool424.i = icmp eq i32 %319, 0
  br i1 %tobool424.i, label %if.end431.i, label %if.then425.i

if.then425.i:                                     ; preds = %if.end423.i
  %320 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc2, align 64, !tbaa !65
  %321 = bitcast i32* %t0.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %321) #13
  %322 = bitcast i32* %t1.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %322) #13
  %323 = load i32, i32* %i_qp_min, align 8, !tbaa !152
  %conv.i823.i = sitofp i32 %323 to float
  %324 = fmul fast float %conv.i823.i, 0x3FC5555560000000
  %div.i.i.i = fadd fast float %324, -2.000000e+00
  %exp2.i.i.i = call fast float @llvm.exp2.f32(float %div.i.i.i) #13
  %mul.i.i.i = fmul fast float %exp2.i.i.i, 0x3FEB333340000000
  %conv2.i824.i = fpext float %mul.i.i.i to double
  %325 = load i32, i32* %i_qp_max, align 4, !tbaa !153
  %conv5.i.i = sitofp i32 %325 to float
  %326 = fmul fast float %conv5.i.i, 0x3FC5555560000000
  %div.i154.i.i = fadd fast float %326, -2.000000e+00
  %exp2.i155.i.i = call fast float @llvm.exp2.f32(float %div.i154.i.i) #13
  %mul.i156.i.i = fmul fast float %exp2.i155.i.i, 0x3FEB333340000000
  %conv7.i.i = fpext float %mul.i156.i.i to double
  %num_entries.i825.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %320, i32 0, i32 44
  %327 = load i32, i32* %num_entries.i825.i, align 8, !tbaa !191
  %add.i826.i = shl i32 %327, 3
  %mul.i827.i = add i32 %add.i826.i, 8
  %conv8.i.i = zext i32 %mul.i827.i to i64
  %call9.i.i = call i8* @x264_malloc(i64 %conv8.i.i) #13
  %tobool.i.i1648 = icmp eq i8* %call9.i.i, null
  br i1 %tobool.i.i1648, label %vbv_pass2.exit.i, label %do.end.i.i1650

do.end.i.i1650:                                   ; preds = %if.then425.i
  %incdec.ptr.i.i1649 = getelementptr inbounds i8, i8* %call9.i.i, i32 8
  %328 = bitcast i8* %incdec.ptr.i.i1649 to double*
  %buffer_size.i.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %320, i32 0, i32 17
  %f_vbv_buffer_init.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 11
  %329 = bitcast i8* %call9.i.i to double*
  %mul56.i.i = fmul fast double %conv252.i, 0x3FEFD70A3D70A3D7
  %330 = fdiv fast double 1.000000e+00, %conv252.i
  br label %do.body10.i.i

do.body10.i.i:                                    ; preds = %land.rhs59.i.i, %do.end.i.i1650
  %expected_bits.0.i.i = phi double [ 0.000000e+00, %do.end.i.i1650 ], [ %expected_bits.0.lcssa.i.i.i, %land.rhs59.i.i ]
  %tobool11.i.i = fcmp fast une double %expected_bits.0.i.i, 0.000000e+00
  br i1 %tobool11.i.i, label %if.then12.i.i, label %if.end37.i.i

if.then12.i.i:                                    ; preds = %do.body10.i.i
  %331 = fmul fast double %expected_bits.0.i.i, %330
  %cmp.i828.i = fcmp fast uge double %331, 0x3FEFF7CED916872B
  %332 = call fast double @llvm.minnum.f64(double %331, double 0x3FEFF7CED916872B) #13
  %cmp15.i.i = fcmp fast ule double %332, 9.000000e-01
  %brmerge.i.i = or i1 %cmp.i828.i, %cmp15.i.i
  %.mux.i.i = select i1 %cmp15.i.i, double 9.000000e-01, double 0x3FEFF7CED916872B
  %cond28.i.i = select fast i1 %brmerge.i.i, double %.mux.i.i, double %331
  %333 = load double, double* %buffer_size.i.i, align 8, !tbaa !116
  %334 = load float, float* %f_vbv_buffer_init.i.i, align 4, !tbaa !122
  %conv31.i.i = fpext float %334 to double
  %mul32.i.i = fmul fast double %333, %conv31.i.i
  store double %mul32.i.i, double* %329, align 8, !tbaa !154
  store i32 0, i32* %t0.i.i, align 4, !tbaa !55
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %fix_underflow.exit183.i.i, %if.then12.i.i
  %call34.i.i = call fastcc i32 @find_underflow(%struct.x264_t* %h, double* nonnull %328, i32* nonnull %t0.i.i, i32* nonnull %t1.i.i, i32 1) #13
  %tobool35.i.i = icmp eq i32 %call34.i.i, 0
  br i1 %tobool35.i.i, label %if.end37.i.i, label %while.body.i.i1651

while.body.i.i1651:                               ; preds = %land.rhs.i.i
  %335 = load i32, i32* %t0.i.i, align 4, !tbaa !55
  %336 = load i32, i32* %t1.i.i, align 4, !tbaa !55
  %cmp.i157.i.i = icmp sgt i32 %335, 0
  %inc.i158.i.i = zext i1 %cmp.i157.i.i to i32
  %spec.select.i159.i.i = add nsw i32 %335, %inc.i158.i.i
  %cmp11.i160.i.i = icmp sgt i32 %spec.select.i159.i.i, %336
  br i1 %cmp11.i160.i.i, label %fix_underflow.exit183.thread.i.i, label %for.body.lr.ph.i162.i.i

fix_underflow.exit183.thread.i.i:                 ; preds = %while.body.i.i1651
  store i32 %336, i32* %t0.i.i, align 4, !tbaa !55
  br label %if.end37.i.i

for.body.lr.ph.i162.i.i:                          ; preds = %while.body.i.i1651
  %h.idx139.val.i.i = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc2, align 64, !tbaa !65
  %entry_out.i161.i.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %h.idx139.val.i.i, i32 0, i32 46
  %337 = load %struct.ratecontrol_entry_t**, %struct.ratecontrol_entry_t*** %entry_out.i161.i.i, align 8, !tbaa !193
  br label %for.body.i182.i.i

for.body.i182.i.i:                                ; preds = %for.body.i182.i.i, %for.body.lr.ph.i162.i.i
  %i.03.i164.i.i = phi i32 [ %spec.select.i159.i.i, %for.body.lr.ph.i162.i.i ], [ %inc7.i180.i.i, %for.body.i182.i.i ]
  %adjusted.02.i165.i.i = phi i32 [ 0, %for.body.lr.ph.i162.i.i ], [ %lor.ext.i179.i.i, %for.body.i182.i.i ]
  %arrayidx.i166.i.i = getelementptr inbounds %struct.ratecontrol_entry_t*, %struct.ratecontrol_entry_t** %337, i32 %i.03.i164.i.i
  %338 = load %struct.ratecontrol_entry_t*, %struct.ratecontrol_entry_t** %arrayidx.i166.i.i, align 4, !tbaa !59
  %new_qscale.i167.i.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %338, i32 0, i32 9
  %339 = load double, double* %new_qscale.i167.i.i, align 8, !tbaa !194
  %cmp.i.i168.i.i = fcmp fast olt double %339, %conv2.i824.i
  %cmp1.i.i169.i.i = fcmp fast ogt double %339, %conv7.i.i
  %cond.i.i170.i.i = select fast i1 %cmp1.i.i169.i.i, double %conv7.i.i, double %339
  %cond5.i.i171.i.i = select fast i1 %cmp.i.i168.i.i, double %conv2.i824.i, double %cond.i.i170.i.i
  %mul.i172.i.i = fmul fast double %cond5.i.i171.i.i, %cond28.i.i
  %cmp.i26.i173.i.i = fcmp fast olt double %mul.i172.i.i, %conv2.i824.i
  %cmp1.i27.i174.i.i = fcmp fast ogt double %mul.i172.i.i, %conv7.i.i
  %cond.i28.i175.i.i = select fast i1 %cmp1.i27.i174.i.i, double %conv7.i.i, double %mul.i172.i.i
  %cond5.i29.i176.i.i = select fast i1 %cmp.i26.i173.i.i, double %conv2.i824.i, double %cond.i28.i175.i.i
  store double %cond5.i29.i176.i.i, double* %new_qscale.i167.i.i, align 8, !tbaa !194
  %tobool.i177.i.i = icmp ne i32 %adjusted.02.i165.i.i, 0
  %cmp6.i178.i.i = fcmp fast une double %cond5.i29.i176.i.i, %cond5.i.i171.i.i
  %340 = or i1 %tobool.i177.i.i, %cmp6.i178.i.i
  %lor.ext.i179.i.i = zext i1 %340 to i32
  %inc7.i180.i.i = add nsw i32 %i.03.i164.i.i, 1
  %cmp1.i181.i.i = icmp slt i32 %i.03.i164.i.i, %336
  br i1 %cmp1.i181.i.i, label %for.body.i182.i.i, label %fix_underflow.exit183.i.i

fix_underflow.exit183.i.i:                        ; preds = %for.body.i182.i.i
  store i32 %336, i32* %t0.i.i, align 4, !tbaa !55
  br i1 %340, label %land.rhs.i.i, label %if.end37.i.i

if.end37.i.i:                                     ; preds = %fix_underflow.exit183.i.i, %land.rhs.i.i, %fix_underflow.exit183.thread.i.i, %do.body10.i.i
  %341 = load double, double* %buffer_size.i.i, align 8, !tbaa !116
  %342 = load float, float* %f_vbv_buffer_init.i.i, align 4, !tbaa !122
  %conv42.i.i = fpext float %342 to double
  %sub.i.i = fsub fast double 1.000000e+00, %conv42.i.i
  %mul43.i.i = fmul fast double %sub.i.i, %341
  store double %mul43.i.i, double* %329, align 8, !tbaa !154
  store i32 0, i32* %t0.i.i, align 4, !tbaa !55
  br label %land.rhs47.i.i

land.rhs47.i.i:                                   ; preds = %fix_underflow.exit.i.i, %if.end37.i.i
  %call48.i.i = call fastcc i32 @find_underflow(%struct.x264_t* %h, double* nonnull %328, i32* nonnull %t0.i.i, i32* nonnull %t1.i.i, i32 0) #13
  %tobool49.i.i = icmp eq i32 %call48.i.i, 0
  br i1 %tobool49.i.i, label %while.end53.i.i, label %while.body51.i.i

while.body51.i.i:                                 ; preds = %land.rhs47.i.i
  %343 = load i32, i32* %t0.i.i, align 4, !tbaa !55
  %344 = load i32, i32* %t1.i.i, align 4, !tbaa !55
  %cmp.i145.i.i = icmp sgt i32 %343, 0
  %inc.i146.i.i = zext i1 %cmp.i145.i.i to i32
  %spec.select.i.i.i = add nsw i32 %343, %inc.i146.i.i
  %cmp11.i.i.i = icmp sgt i32 %spec.select.i.i.i, %344
  br i1 %cmp11.i.i.i, label %while.end53.i.i, label %for.body.lr.ph.i148.i.i

for.body.lr.ph.i148.i.i:                          ; preds = %while.body51.i.i
  %h.idx.val.i.i = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc2, align 64, !tbaa !65
  %entry_out.i147.i.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %h.idx.val.i.i, i32 0, i32 46
  %345 = load %struct.ratecontrol_entry_t**, %struct.ratecontrol_entry_t*** %entry_out.i147.i.i, align 8, !tbaa !193
  br label %for.body.i153.i.i

for.body.i153.i.i:                                ; preds = %for.body.i153.i.i, %for.body.lr.ph.i148.i.i
  %i.03.i.i.i = phi i32 [ %spec.select.i.i.i, %for.body.lr.ph.i148.i.i ], [ %inc7.i.i.i, %for.body.i153.i.i ]
  %adjusted.02.i.i.i = phi i32 [ 0, %for.body.lr.ph.i148.i.i ], [ %lor.ext.i.i.i, %for.body.i153.i.i ]
  %arrayidx.i149.i.i = getelementptr inbounds %struct.ratecontrol_entry_t*, %struct.ratecontrol_entry_t** %345, i32 %i.03.i.i.i
  %346 = load %struct.ratecontrol_entry_t*, %struct.ratecontrol_entry_t** %arrayidx.i149.i.i, align 4, !tbaa !59
  %new_qscale.i150.i.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %346, i32 0, i32 9
  %347 = load double, double* %new_qscale.i150.i.i, align 8, !tbaa !194
  %cmp.i.i.i.i = fcmp fast olt double %347, %conv2.i824.i
  %cmp1.i.i.i.i = fcmp fast ogt double %347, %conv7.i.i
  %cond.i.i.i.i = select fast i1 %cmp1.i.i.i.i, double %conv7.i.i, double %347
  %cond5.i.i.i.i = select fast i1 %cmp.i.i.i.i, double %conv2.i824.i, double %cond.i.i.i.i
  %mul.i151.i.i = fmul fast double %cond5.i.i.i.i, 1.001000e+00
  %cmp.i26.i.i.i = fcmp fast olt double %mul.i151.i.i, %conv2.i824.i
  %cmp1.i27.i.i.i = fcmp fast ogt double %mul.i151.i.i, %conv7.i.i
  %cond.i28.i.i.i = select fast i1 %cmp1.i27.i.i.i, double %conv7.i.i, double %mul.i151.i.i
  %cond5.i29.i.i.i = select fast i1 %cmp.i26.i.i.i, double %conv2.i824.i, double %cond.i28.i.i.i
  store double %cond5.i29.i.i.i, double* %new_qscale.i150.i.i, align 8, !tbaa !194
  %tobool.i.i.i = icmp ne i32 %adjusted.02.i.i.i, 0
  %cmp6.i.i.i = fcmp fast une double %cond5.i29.i.i.i, %cond5.i.i.i.i
  %348 = or i1 %tobool.i.i.i, %cmp6.i.i.i
  %lor.ext.i.i.i = zext i1 %348 to i32
  %inc7.i.i.i = add nsw i32 %i.03.i.i.i, 1
  %cmp1.i152.i.i = icmp slt i32 %i.03.i.i.i, %344
  br i1 %cmp1.i152.i.i, label %for.body.i153.i.i, label %fix_underflow.exit.i.i

fix_underflow.exit.i.i:                           ; preds = %for.body.i153.i.i
  br i1 %348, label %land.rhs47.i.i, label %while.end53.i.i

while.end53.i.i:                                  ; preds = %fix_underflow.exit.i.i, %while.body51.i.i, %land.rhs47.i.i
  %tobool46.lcssa.i.i = phi i1 [ true, %land.rhs47.i.i ], [ false, %fix_underflow.exit.i.i ], [ false, %while.body51.i.i ]
  %h.idx140.val.i.i = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc2, align 64, !tbaa !65
  %num_entries.i.i.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %h.idx140.val.i.i, i32 0, i32 44
  %349 = load i32, i32* %num_entries.i.i.i, align 8, !tbaa !191
  %cmp1.i.i.i = icmp sgt i32 %349, 0
  br i1 %cmp1.i.i.i, label %for.body.lr.ph.i.i.i, label %count_expected_bits.exit.i.i

for.body.lr.ph.i.i.i:                             ; preds = %while.end53.i.i
  %entry_out.i.i.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %h.idx140.val.i.i, i32 0, i32 46
  %350 = load %struct.ratecontrol_entry_t**, %struct.ratecontrol_entry_t*** %entry_out.i.i.i, align 8, !tbaa !193
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i, %for.body.lr.ph.i.i.i
  %expected_bits.03.i.i.i = phi double [ 0.000000e+00, %for.body.lr.ph.i.i.i ], [ %add.i.i.i, %for.body.i.i.i ]
  %i.02.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.body.i.i.i ]
  %arrayidx.i.i.i = getelementptr inbounds %struct.ratecontrol_entry_t*, %struct.ratecontrol_entry_t** %350, i32 %i.02.i.i.i
  %351 = load %struct.ratecontrol_entry_t*, %struct.ratecontrol_entry_t** %arrayidx.i.i.i, align 4, !tbaa !59
  %expected_bits1.i.i.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %351, i32 0, i32 7
  store double %expected_bits.03.i.i.i, double* %expected_bits1.i.i.i, align 8, !tbaa !215
  %new_qscale.i.i.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %351, i32 0, i32 9
  %352 = load double, double* %new_qscale.i.i.i, align 8, !tbaa !194
  %cmp.i141.i.i = fcmp fast olt double %352, 1.000000e-01
  %qscale.addr.0.i.i.i = select i1 %cmp.i141.i.i, double 1.000000e-01, double %352
  %tex_bits.i.i.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %351, i32 0, i32 5
  %353 = load i32, i32* %tex_bits.i.i.i, align 4, !tbaa !199
  %conv.i.i.i = sitofp i32 %353 to double
  %add.i142.i.i = fadd fast double %conv.i.i.i, 1.000000e-01
  %qscale1.i.i.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %351, i32 0, i32 3
  %354 = load double, double* %qscale1.i.i.i, align 8, !tbaa !195
  %div.i143.i.i = fdiv fast double %354, %qscale.addr.0.i.i.i
  %355 = call fast double @llvm.pow.f64(double %div.i143.i.i, double 1.100000e+00) #13
  %mul.i144.i.i = fmul fast double %355, %add.i142.i.i
  %mv_bits.i.i.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %351, i32 0, i32 4
  %356 = load i32, i32* %mv_bits.i.i.i, align 8, !tbaa !200
  %conv2.i.i.i = sitofp i32 %356 to double
  %357 = call fast double @llvm.maxnum.f64(double %354, double 1.000000e+00) #13
  %358 = call fast double @llvm.maxnum.f64(double %qscale.addr.0.i.i.i, double 1.000000e+00) #13
  %div13.i.i.i = fdiv fast double %357, %358
  %sqrt.i.i.i = call fast double @llvm.sqrt.f64(double %div13.i.i.i) #13
  %mul14.i.i.i = fmul fast double %sqrt.i.i.i, %conv2.i.i.i
  %misc_bits.i.i.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %351, i32 0, i32 6
  %359 = load i32, i32* %misc_bits.i.i.i, align 8, !tbaa !196
  %conv16.i.i.i = sitofp i32 %359 to double
  %add15.i.i.i = fadd fast double %expected_bits.03.i.i.i, %conv16.i.i.i
  %add17.i.i.i = fadd fast double %add15.i.i.i, %mul.i144.i.i
  %add.i.i.i = fadd fast double %add17.i.i.i, %mul14.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.02.i.i.i, 1
  %exitcond.i.i = icmp eq i32 %inc.i.i.i, %349
  br i1 %exitcond.i.i, label %count_expected_bits.exit.i.i, label %for.body.i.i.i

count_expected_bits.exit.i.i:                     ; preds = %for.body.i.i.i, %while.end53.i.i
  %expected_bits.0.lcssa.i.i.i = phi double [ 0.000000e+00, %while.end53.i.i ], [ %add.i.i.i, %for.body.i.i.i ]
  %cmp57.i.i = fcmp fast olt double %expected_bits.0.lcssa.i.i.i, %mul56.i.i
  br i1 %cmp57.i.i, label %land.rhs59.i.i, label %do.end67.i.i

land.rhs59.i.i:                                   ; preds = %count_expected_bits.exit.i.i
  %add60.i.i = fadd fast double %expected_bits.0.lcssa.i.i.i, 5.000000e-01
  %conv61.i.i = fptosi double %add60.i.i to i64
  %add62.i.i = fadd fast double %expected_bits.0.i.i, 5.000000e-01
  %conv63.i.i = fptosi double %add62.i.i to i64
  %cmp64.i.i = icmp sgt i64 %conv61.i.i, %conv63.i.i
  br i1 %cmp64.i.i, label %do.body10.i.i, label %do.end67.i.i

do.end67.i.i:                                     ; preds = %land.rhs59.i.i, %count_expected_bits.exit.i.i
  br i1 %tobool46.lcssa.i.i, label %if.end70.i.i, label %if.then69.i.i

if.then69.i.i:                                    ; preds = %do.end67.i.i
  call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* %h, i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.119, i32 0, i32 0)) #13
  br label %if.end70.i.i

if.end70.i.i:                                     ; preds = %if.then69.i.i, %do.end67.i.i
  %360 = load i32, i32* %num_entries.i825.i, align 8, !tbaa !191
  %cmp72184.i.i = icmp sgt i32 %360, 0
  br i1 %cmp72184.i.i, label %for.body.lr.ph.i830.i, label %vbv_pass2.exit.thread.i

for.body.lr.ph.i830.i:                            ; preds = %if.end70.i.i
  %361 = load double, double* %buffer_size.i.i, align 8, !tbaa !116
  %entry_out.i829.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %320, i32 0, i32 46
  %362 = load %struct.ratecontrol_entry_t**, %struct.ratecontrol_entry_t*** %entry_out.i829.i, align 8, !tbaa !193
  br label %for.body.i831.i

vbv_pass2.exit.thread.i:                          ; preds = %for.body.i831.i, %if.end70.i.i
  call void @x264_free(i8* nonnull %call9.i.i) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %322) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %321) #13
  br label %if.end431.i

for.body.i831.i:                                  ; preds = %for.body.i831.i, %for.body.lr.ph.i830.i
  %i.0185.i.i = phi i32 [ 0, %for.body.lr.ph.i830.i ], [ %inc78.i.i, %for.body.i831.i ]
  %arrayidx75.i.i = getelementptr inbounds double, double* %328, i32 %i.0185.i.i
  %363 = load double, double* %arrayidx75.i.i, align 8, !tbaa !154
  %sub76.i.i = fsub fast double %361, %363
  %arrayidx77.i.i = getelementptr inbounds %struct.ratecontrol_entry_t*, %struct.ratecontrol_entry_t** %362, i32 %i.0185.i.i
  %364 = load %struct.ratecontrol_entry_t*, %struct.ratecontrol_entry_t** %arrayidx77.i.i, align 4, !tbaa !59
  %expected_vbv.i.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %364, i32 0, i32 8
  store double %sub76.i.i, double* %expected_vbv.i.i, align 8, !tbaa !216
  %inc78.i.i = add nuw nsw i32 %i.0185.i.i, 1
  %exitcond1031.i = icmp eq i32 %inc78.i.i, %360
  br i1 %exitcond1031.i, label %vbv_pass2.exit.thread.i, label %for.body.i831.i

vbv_pass2.exit.i:                                 ; preds = %if.then425.i
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %322) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %321) #13
  br label %cleanup1094

if.end431.i:                                      ; preds = %vbv_pass2.exit.thread.i, %if.end423.i
  %h.idx.val.i = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc2, align 64, !tbaa !65
  %num_entries.i.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %h.idx.val.i, i32 0, i32 44
  %365 = load i32, i32* %num_entries.i.i, align 8, !tbaa !191
  %cmp1.i816.i = icmp sgt i32 %365, 0
  br i1 %cmp1.i816.i, label %for.body.lr.ph.i.i, label %count_expected_bits.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end431.i
  %entry_out.i.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %h.idx.val.i, i32 0, i32 46
  %366 = load %struct.ratecontrol_entry_t**, %struct.ratecontrol_entry_t*** %entry_out.i.i, align 8, !tbaa !193
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i, %for.body.lr.ph.i.i
  %expected_bits.03.i.i = phi double [ 0.000000e+00, %for.body.lr.ph.i.i ], [ %add.i817.i, %for.body.i.i ]
  %i.02.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i ]
  %arrayidx.i.i = getelementptr inbounds %struct.ratecontrol_entry_t*, %struct.ratecontrol_entry_t** %366, i32 %i.02.i.i
  %367 = load %struct.ratecontrol_entry_t*, %struct.ratecontrol_entry_t** %arrayidx.i.i, align 4, !tbaa !59
  %expected_bits1.i.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %367, i32 0, i32 7
  store double %expected_bits.03.i.i, double* %expected_bits1.i.i, align 8, !tbaa !215
  %new_qscale.i.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %367, i32 0, i32 9
  %368 = load double, double* %new_qscale.i.i, align 8, !tbaa !194
  %cmp.i819.i = fcmp fast olt double %368, 1.000000e-01
  %qscale.addr.0.i.i = select i1 %cmp.i819.i, double 1.000000e-01, double %368
  %tex_bits.i.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %367, i32 0, i32 5
  %369 = load i32, i32* %tex_bits.i.i, align 4, !tbaa !199
  %conv.i.i = sitofp i32 %369 to double
  %add.i820.i = fadd fast double %conv.i.i, 1.000000e-01
  %qscale1.i.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %367, i32 0, i32 3
  %370 = load double, double* %qscale1.i.i, align 8, !tbaa !195
  %div.i821.i = fdiv fast double %370, %qscale.addr.0.i.i
  %371 = call fast double @llvm.pow.f64(double %div.i821.i, double 1.100000e+00) #13
  %mul.i822.i = fmul fast double %371, %add.i820.i
  %mv_bits.i.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %367, i32 0, i32 4
  %372 = load i32, i32* %mv_bits.i.i, align 8, !tbaa !200
  %conv2.i.i = sitofp i32 %372 to double
  %373 = call fast double @llvm.maxnum.f64(double %370, double 1.000000e+00) #13
  %374 = call fast double @llvm.maxnum.f64(double %qscale.addr.0.i.i, double 1.000000e+00) #13
  %div13.i.i = fdiv fast double %373, %374
  %sqrt.i.i = call fast double @llvm.sqrt.f64(double %div13.i.i) #13
  %mul14.i.i = fmul fast double %sqrt.i.i, %conv2.i.i
  %misc_bits.i.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %367, i32 0, i32 6
  %375 = load i32, i32* %misc_bits.i.i, align 8, !tbaa !196
  %conv16.i.i = sitofp i32 %375 to double
  %add15.i.i = fadd fast double %expected_bits.03.i.i, %conv16.i.i
  %add17.i.i = fadd fast double %add15.i.i, %mul.i822.i
  %add.i817.i = fadd fast double %add17.i.i, %mul14.i.i
  %inc.i.i = add nuw nsw i32 %i.02.i.i, 1
  %exitcond.i1652 = icmp eq i32 %inc.i.i, %365
  br i1 %exitcond.i1652, label %count_expected_bits.exit.i, label %for.body.i.i

count_expected_bits.exit.i:                       ; preds = %for.body.i.i, %if.end431.i
  %expected_bits.0.lcssa.i.i = phi double [ 0.000000e+00, %if.end431.i ], [ %add.i817.i, %for.body.i.i ]
  %div434.i = fdiv fast double %expected_bits.0.lcssa.i.i, %conv252.i
  %sub435.i = fadd fast double %div434.i, -1.000000e+00
  %376 = call fast double @llvm.fabs.f64(double %sub435.i) #13
  %cmp436.i = fcmp fast ogt double %376, 1.000000e-02
  br i1 %cmp436.i, label %for.cond440.preheader.i, label %if.end957

for.cond440.preheader.i:                          ; preds = %count_expected_bits.exit.i
  %377 = load i32, i32* %num_entries.i, align 8, !tbaa !191
  %cmp442931.i = icmp sgt i32 %377, 0
  br i1 %cmp442931.i, label %for.body445.lr.ph.i, label %for.cond.cleanup444.i

for.body445.lr.ph.i:                              ; preds = %for.cond440.preheader.i
  %entry446.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %196, i32 0, i32 45
  %378 = load %struct.ratecontrol_entry_t*, %struct.ratecontrol_entry_t** %entry446.i, align 4, !tbaa !66
  br label %for.body445.i

for.cond.cleanup444.i:                            ; preds = %for.body445.i, %for.cond440.preheader.i
  %avgq.0.lcssa.i = phi double [ 0.000000e+00, %for.cond440.preheader.i ], [ %add449.i, %for.body445.i ]
  %conv455.i = sitofp i32 %377 to double
  %div456.i = fdiv fast double %avgq.0.lcssa.i, %conv455.i
  %conv457.i = fptrunc double %div456.i to float
  %div.i.i = fmul fast float %conv457.i, 0x3FF2D2D2C0000000
  %379 = call fast float @llvm.log2.f32(float %div.i.i) #13
  %mul.i.i = fmul fast float %379, 6.000000e+00
  %add.i.i = fadd fast float %mul.i.i, 1.200000e+01
  %conv459.i = fpext float %add.i.i to double
  %cmp461.i = fcmp fast ogt double %expected_bits.0.lcssa.i.i, %conv252.i
  br i1 %cmp461.i, label %if.then466.i, label %lor.lhs.false463.i

for.body445.i:                                    ; preds = %for.body445.i, %for.body445.lr.ph.i
  %i439.0933.i = phi i32 [ 0, %for.body445.lr.ph.i ], [ %inc451.i, %for.body445.i ]
  %avgq.0932.i = phi double [ 0.000000e+00, %for.body445.lr.ph.i ], [ %add449.i, %for.body445.i ]
  %new_qscale448.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %378, i32 %i439.0933.i, i32 9
  %380 = load double, double* %new_qscale448.i, align 8, !tbaa !194
  %add449.i = fadd fast double %380, %avgq.0932.i
  %inc451.i = add nuw nsw i32 %i439.0933.i, 1
  %exitcond = icmp eq i32 %inc451.i, %377
  br i1 %exitcond, label %for.cond.cleanup444.i, label %for.body445.i

lor.lhs.false463.i:                               ; preds = %for.cond.cleanup444.i
  %381 = load i32, i32* %b_vbv.i, align 8, !tbaa !125
  %tobool465.i = icmp eq i32 %381, 0
  br i1 %tobool465.i, label %if.then466.i, label %if.end467.i

if.then466.i:                                     ; preds = %lor.lhs.false463.i, %for.cond.cleanup444.i
  call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* %h, i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.112, i32 0, i32 0)) #13
  %.pre1038.i = load i32, i32* %num_entries.i, align 8, !tbaa !191
  %.pre1039.i = sitofp i32 %.pre1038.i to double
  br label %if.end467.i

if.end467.i:                                      ; preds = %if.then466.i, %lor.lhs.false463.i
  %conv476.pre-phi.i = phi double [ %conv455.i, %lor.lhs.false463.i ], [ %.pre1039.i, %if.then466.i ]
  %382 = load i32, i32* %i_bitrate, align 4, !tbaa !92
  %conv471.i = sitofp i32 %382 to float
  %conv472.i = fpext float %conv471.i to double
  %fps473.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %196, i32 0, i32 4
  %383 = load double, double* %fps473.i, align 8, !tbaa !93
  %mul474.i = fmul fast double %383, %expected_bits.0.lcssa.i.i
  %mul477.i = fmul fast double %conv476.pre-phi.i, 1.000000e+03
  %div478.i = fdiv fast double %mul474.i, %mul477.i
  call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* %h, i32 1, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.113, i32 0, i32 0), double %conv472.i, double %div478.i, double %conv459.i) #13
  %cmp480.i = fcmp fast olt double %expected_bits.0.lcssa.i.i, %conv252.i
  br i1 %cmp480.i, label %land.lhs.true.i1653, label %if.else500.i

land.lhs.true.i1653:                              ; preds = %if.end467.i
  %384 = load i32, i32* %i_qp_min, align 8, !tbaa !152
  %add484.i = add nsw i32 %384, 2
  %conv485.i = sitofp i32 %add484.i to double
  %cmp486.i = fcmp fast olt double %conv459.i, %conv485.i
  br i1 %cmp486.i, label %if.then488.i, label %if.else500.i

if.then488.i:                                     ; preds = %land.lhs.true.i1653
  %cmp492.i = icmp sgt i32 %384, 0
  br i1 %cmp492.i, label %if.then494.i, label %if.else498.i

if.then494.i:                                     ; preds = %if.then488.i
  call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 1, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.114, i32 0, i32 0), i32 %384) #13
  br label %if.end957

if.else498.i:                                     ; preds = %if.then488.i
  call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.115, i32 0, i32 0)) #13
  br label %if.end957

if.else500.i:                                     ; preds = %land.lhs.true.i1653, %if.end467.i
  br i1 %cmp461.i, label %land.lhs.true504.i, label %if.else523.i

land.lhs.true504.i:                               ; preds = %if.else500.i
  %385 = load i32, i32* %i_qp_max, align 4, !tbaa !153
  %sub507.i = add nsw i32 %385, -2
  %conv508.i = sitofp i32 %sub507.i to double
  %cmp509.i = fcmp fast ogt double %conv459.i, %conv508.i
  br i1 %cmp509.i, label %if.then511.i, label %if.else523.i

if.then511.i:                                     ; preds = %land.lhs.true504.i
  %cmp515.i = icmp slt i32 %385, 69
  br i1 %cmp515.i, label %if.then517.i, label %if.else521.i

if.then517.i:                                     ; preds = %if.then511.i
  call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 1, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.116, i32 0, i32 0), i32 %385) #13
  br label %if.end957

if.else521.i:                                     ; preds = %if.then511.i
  call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.117, i32 0, i32 0)) #13
  br label %if.end957

if.else523.i:                                     ; preds = %land.lhs.true504.i, %if.else500.i
  %b_2pass.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %196, i32 0, i32 1
  %386 = load i32, i32* %b_2pass.i, align 4, !tbaa !81
  %tobool524.i = icmp eq i32 %386, 0
  br i1 %tobool524.i, label %if.then528.i, label %land.lhs.true525.i

land.lhs.true525.i:                               ; preds = %if.else523.i
  %387 = load i32, i32* %b_vbv.i, align 8, !tbaa !125
  %tobool527.i = icmp eq i32 %387, 0
  br i1 %tobool527.i, label %if.then528.i, label %if.end957

if.then528.i:                                     ; preds = %land.lhs.true525.i, %if.else523.i
  call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.118, i32 0, i32 0)) #13
  br label %if.end957

if.end957:                                        ; preds = %count_expected_bits.exit.i, %land.lhs.true525.i, %if.else521.i, %if.then517.i, %if.then528.i, %if.then494.i, %if.else498.i, %if.end935, %if.end317
  %b_stat_write = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 19
  %388 = load i32, i32* %b_stat_write, align 4, !tbaa !217
  %tobool960 = icmp eq i32 %388, 0
  br i1 %tobool960, label %if.end1020, label %if.then961

if.then961:                                       ; preds = %if.end957
  %psz_stat_out = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 20
  %389 = load i8*, i8** %psz_stat_out, align 8, !tbaa !218
  %call.i1655 = call i32 @strlen(i8* nonnull dereferenceable(1) %389) #14
  %add2.i1658 = add i32 %call.i1655, 6
  %conv.i1659 = zext i32 %add2.i1658 to i64
  %call3.i1660 = call i8* @x264_malloc(i64 %conv.i1659) #13
  %tobool.i1661 = icmp eq i8* %call3.i1660, null
  br i1 %tobool.i1661, label %strcat_filename.exit1665.thread, label %if.end969

strcat_filename.exit1665.thread:                  ; preds = %if.then961
  %psz_stat_file_tmpname1711 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 39
  store i8* null, i8** %psz_stat_file_tmpname1711, align 4, !tbaa !219
  br label %cleanup1094

if.end969:                                        ; preds = %if.then961
  %call4.i1662 = call i8* @strcpy(i8* nonnull %call3.i1660, i8* nonnull dereferenceable(1) %389) #13
  %strlen1726 = call i32 @strlen(i8* nonnull %call3.i1660)
  %endptr1727 = getelementptr i8, i8* %call3.i1660, i32 %strlen1726
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 dereferenceable(6) %endptr1727, i8* nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.78, i32 0, i32 0), i32 6, i1 false)
  %psz_stat_file_tmpname = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 39
  store i8* %call3.i1660, i8** %psz_stat_file_tmpname, align 4, !tbaa !219
  %call971 = call %struct._IO_FILE* @fopen64(i8* nonnull %call3.i1660, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i32 0, i32 0)) #13
  %p_stat_file_out = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 38
  store %struct._IO_FILE* %call971, %struct._IO_FILE** %p_stat_file_out, align 8, !tbaa !220
  %cmp973 = icmp eq %struct._IO_FILE* %call971, null
  br i1 %cmp973, label %if.then975, label %if.end976

if.then975:                                       ; preds = %if.end969
  call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i32 0, i32 0)) #13
  br label %cleanup1094

if.end976:                                        ; preds = %if.end969
  %call978 = call i8* @x264_param2string(%struct.x264_param_t* nonnull %param, i32 1) #13
  %tobool979 = icmp eq i8* %call978, null
  br i1 %tobool979, label %if.end983, label %if.then980

if.then980:                                       ; preds = %if.end976
  %390 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_file_out, align 8, !tbaa !220
  %call982 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %390, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.80, i32 0, i32 0), i8* nonnull %call978)
  br label %if.end983

if.end983:                                        ; preds = %if.end976, %if.then980
  call void @x264_free(i8* %call978) #13
  %391 = load i32, i32* %b_mb_tree, align 4, !tbaa !84
  %tobool987 = icmp eq i32 %391, 0
  br i1 %tobool987, label %if.end1057, label %land.lhs.true988

land.lhs.true988:                                 ; preds = %if.end983
  %392 = load i32, i32* %b_stat_read320, align 4, !tbaa !127
  %tobool992 = icmp eq i32 %392, 0
  br i1 %tobool992, label %if.then993, label %if.end1051

if.then993:                                       ; preds = %land.lhs.true988
  %393 = load i8*, i8** %psz_stat_out, align 8, !tbaa !218
  %call.i1666 = call i32 @strlen(i8* nonnull dereferenceable(1) %393) #14
  %add2.i1669 = add i32 %call.i1666, 13
  %conv.i1670 = zext i32 %add2.i1669 to i64
  %call3.i1671 = call i8* @x264_malloc(i64 %conv.i1670) #13
  %tobool.i1672 = icmp eq i8* %call3.i1671, null
  br i1 %tobool.i1672, label %strcat_filename.exit1676, label %if.end.i1675

if.end.i1675:                                     ; preds = %if.then993
  %call4.i1673 = call i8* @strcpy(i8* nonnull %call3.i1671, i8* nonnull dereferenceable(1) %393) #13
  %strlen1728 = call i32 @strlen(i8* nonnull %call3.i1671)
  %endptr1729 = getelementptr i8, i8* %call3.i1671, i32 %strlen1728
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 dereferenceable(13) %endptr1729, i8* nonnull align 1 dereferenceable(13) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.81, i32 0, i32 0), i32 13, i1 false)
  br label %strcat_filename.exit1676

strcat_filename.exit1676:                         ; preds = %if.then993, %if.end.i1675
  %psz_mbtree_stat_file_tmpname = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 41
  store i8* %call3.i1671, i8** %psz_mbtree_stat_file_tmpname, align 4, !tbaa !221
  %394 = load i8*, i8** %psz_stat_out, align 8, !tbaa !218
  %call.i1677 = call i32 @strlen(i8* nonnull dereferenceable(1) %394) #14
  %add2.i1680 = add i32 %call.i1677, 8
  %conv.i1681 = zext i32 %add2.i1680 to i64
  %call3.i1682 = call i8* @x264_malloc(i64 %conv.i1681) #13
  %tobool.i1683 = icmp eq i8* %call3.i1682, null
  br i1 %tobool.i1683, label %strcat_filename.exit1687.thread, label %strcat_filename.exit1687

strcat_filename.exit1687.thread:                  ; preds = %strcat_filename.exit1676
  %psz_mbtree_stat_file_name1712 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 42
  store i8* null, i8** %psz_mbtree_stat_file_name1712, align 8, !tbaa !222
  br label %cleanup1094

strcat_filename.exit1687:                         ; preds = %strcat_filename.exit1676
  %call4.i1684 = call i8* @strcpy(i8* nonnull %call3.i1682, i8* nonnull dereferenceable(1) %394) #13
  %strlen1730 = call i32 @strlen(i8* nonnull %call3.i1682)
  %endptr1731 = getelementptr i8, i8* %call3.i1682, i32 %strlen1730
  %395 = bitcast i8* %endptr1731 to i64*
  store i64 28540514901060910, i64* %395, align 1
  %psz_mbtree_stat_file_name = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 42
  store i8* %call3.i1682, i8** %psz_mbtree_stat_file_name, align 8, !tbaa !222
  %396 = load i8*, i8** %psz_mbtree_stat_file_tmpname, align 4, !tbaa !221
  %tobool1003 = icmp eq i8* %396, null
  br i1 %tobool1003, label %cleanup1094, label %if.end1008

if.end1008:                                       ; preds = %strcat_filename.exit1687
  %call1010 = call %struct._IO_FILE* @fopen64(i8* nonnull %396, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i32 0, i32 0)) #13
  %p_mbtree_stat_file_out = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 40
  store %struct._IO_FILE* %call1010, %struct._IO_FILE** %p_mbtree_stat_file_out, align 8, !tbaa !223
  %cmp1012 = icmp eq %struct._IO_FILE* %call1010, null
  br i1 %cmp1012, label %if.then1014, label %if.end1020

if.then1014:                                      ; preds = %if.end1008
  call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14, i32 0, i32 0)) #13
  br label %cleanup1094

if.end1020:                                       ; preds = %if.end1008, %if.end957
  %.pr = load i32, i32* %b_mb_tree, align 4, !tbaa !84
  %tobool1024 = icmp eq i32 %.pr, 0
  br i1 %tobool1024, label %if.end1057, label %land.lhs.true1025

land.lhs.true1025:                                ; preds = %if.end1020
  %.pr1718 = load i32, i32* %b_stat_read320, align 4, !tbaa !127
  %tobool1029 = icmp eq i32 %.pr1718, 0
  br i1 %tobool1029, label %lor.lhs.false1030, label %if.end1051

lor.lhs.false1030:                                ; preds = %land.lhs.true1025
  %397 = load i32, i32* %b_stat_write, align 4, !tbaa !217
  %tobool1034 = icmp eq i32 %397, 0
  br i1 %tobool1034, label %if.end1057, label %if.then1040

if.then1040:                                      ; preds = %lor.lhs.false1030
  %i_width1042 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 7
  %398 = load i32, i32* %i_width1042, align 4, !tbaa !176
  %arrayidx1045 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 56, i32 8, i32 0
  store i32 %398, i32* %arrayidx1045, align 4, !tbaa !55
  %i_height1047 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 8
  %399 = load i32, i32* %i_height1047, align 32, !tbaa !177
  %arrayidx1050 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 56, i32 8, i32 1
  store i32 %399, i32* %arrayidx1050, align 4, !tbaa !55
  br label %if.end1051

if.end1051:                                       ; preds = %land.lhs.true1025, %land.lhs.true988, %if.then1040
  %mbtree.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 56
  %arrayidx.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 56, i32 8, i32 0
  %400 = load i32, i32* %arrayidx.i, align 4, !tbaa !55
  %conv.i = sitofp i32 %400 to float
  %div.i = fmul fast float %conv.i, 6.250000e-02
  %arrayidx4.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 56, i32 8, i32 1
  %401 = load i32, i32* %arrayidx4.i, align 4, !tbaa !55
  %conv5.i = sitofp i32 %401 to float
  %div6.i = fmul fast float %conv5.i, 6.250000e-02
  %i_width.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 7
  %402 = load i32, i32* %i_width.i, align 4, !tbaa !176
  %conv8.i = sitofp i32 %402 to float
  %div9.i = fmul fast float %conv8.i, 6.250000e-02
  %i_height.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 8
  %403 = load i32, i32* %i_height.i, align 32, !tbaa !177
  %conv12.i = sitofp i32 %403 to float
  %div13.i = fmul fast float %conv12.i, 6.250000e-02
  %404 = call fast float @llvm.ceil.f32(float %div.i) #13
  %conv17.i = fptosi float %404 to i32
  %405 = call fast float @llvm.ceil.f32(float %div6.i) #13
  %conv21.i = fptosi float %405 to i32
  %406 = call fast float @llvm.ceil.f32(float %div9.i) #13
  %conv25.i = fptosi float %406 to i32
  %407 = call fast float @llvm.ceil.f32(float %div13.i) #13
  %conv29.i = fptosi float %407 to i32
  %b_interlaced.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 34
  %408 = load i32, i32* %b_interlaced.i, align 8, !tbaa !184
  %tobool.i = icmp eq i32 %408, 0
  br i1 %tobool.i, label %lor.lhs.false.i, label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end1051
  %b_fake_interlaced.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 70
  %409 = load i32, i32* %b_fake_interlaced.i, align 8, !tbaa !186
  %tobool32.i = icmp eq i32 %409, 0
  br i1 %tobool32.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i, %if.end1051
  %add.i = add nsw i32 %conv21.i, 1
  %and.i = and i32 %add.i, -2
  %add36.i = add nsw i32 %conv29.i, 1
  %and37.i = and i32 %add36.i, -2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %lor.lhs.false.i
  %410 = phi i32 [ %conv29.i, %lor.lhs.false.i ], [ %and37.i, %if.then.i ]
  %411 = phi i32 [ %conv21.i, %lor.lhs.false.i ], [ %and.i, %if.then.i ]
  %mul.i = mul nsw i32 %411, %conv17.i
  %src_mb_count.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 56, i32 2
  store i32 %mul.i, i32* %src_mb_count.i, align 4, !tbaa !74
  %mul44.i = shl i32 %mul.i, 1
  %conv45.i = zext i32 %mul44.i to i64
  %call.i = call i8* @x264_malloc(i64 %conv45.i) #13
  %412 = bitcast %struct.anon.17* %mbtree.i to i8**
  store i8* %call.i, i8** %412, align 8, !tbaa !59
  %tobool51.i = icmp eq i8* %call.i, null
  br i1 %tobool51.i, label %cleanup1094, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  %i_bframe_pyramid.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 24
  %413 = load i32, i32* %i_bframe_pyramid.i, align 64, !tbaa !180
  %tobool55.i = icmp eq i32 %413, 0
  br i1 %tobool55.i, label %if.end77.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %do.end.i
  %414 = load i32, i32* %b_stat_read320, align 4, !tbaa !127
  %tobool58.i = icmp eq i32 %414, 0
  br i1 %tobool58.i, label %if.end77.i, label %do.body60.i

do.body60.i:                                      ; preds = %land.lhs.true.i
  %415 = load i32, i32* %src_mb_count.i, align 4, !tbaa !74
  %mul63.i = shl i32 %415, 1
  %conv64.i = zext i32 %mul63.i to i64
  %call65.i = call i8* @x264_malloc(i64 %conv64.i) #13
  %arrayidx68.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 56, i32 0, i32 1
  %416 = bitcast i16** %arrayidx68.i to i8**
  store i8* %call65.i, i8** %416, align 4, !tbaa !59
  %tobool72.i = icmp eq i8* %call65.i, null
  br i1 %tobool72.i, label %cleanup1094, label %if.end77.i

if.end77.i:                                       ; preds = %do.body60.i, %land.lhs.true.i, %do.end.i
  %qpbuf_pos.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 56, i32 1
  store i32 -1, i32* %qpbuf_pos.i, align 8, !tbaa !73
  %cmp.i1588 = icmp eq i32 %conv17.i, %conv25.i
  %cmp85.i = icmp eq i32 %411, %410
  %or.cond.i = and i1 %cmp.i1588, %cmp85.i
  br i1 %or.cond.i, label %if.end1057, label %if.end88.i

if.end88.i:                                       ; preds = %if.end77.i
  %rescale_enabled.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 56, i32 3
  store i32 1, i32* %rescale_enabled.i, align 8, !tbaa !76
  %mul94.i = shl i32 %mul.i, 2
  %conv95.i = zext i32 %mul94.i to i64
  %call96.i = call i8* @x264_malloc(i64 %conv95.i) #13
  %scale_buffer.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 56, i32 4
  %417 = bitcast [2 x float*]* %scale_buffer.i to i8**
  store i8* %call96.i, i8** %417, align 4, !tbaa !59
  %tobool102.i = icmp eq i8* %call96.i, null
  br i1 %tobool102.i, label %cleanup1094, label %do.body107.i

do.body107.i:                                     ; preds = %if.end88.i
  %mul110.i = shl i32 %conv25.i, 2
  %mul111.i = mul i32 %411, %mul110.i
  %conv112.i = zext i32 %mul111.i to i64
  %call113.i = call i8* @x264_malloc(i64 %conv112.i) #13
  %arrayidx116.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 56, i32 4, i32 1
  %418 = bitcast float** %arrayidx116.i to i8**
  store i8* %call113.i, i8** %418, align 4, !tbaa !59
  %tobool120.i = icmp eq i8* %call113.i, null
  br i1 %tobool120.i, label %cleanup1094, label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %do.body107.i
  %cmp129.i = fcmp fast ogt float %div.i, %div9.i
  br i1 %cmp129.i, label %if.then131.i, label %do.body145.i

if.then131.i:                                     ; preds = %for.body.preheader.i
  %mul133.i = shl i32 %conv17.i, 1
  %add135.i = add i32 %mul133.i, -1
  %sub.i = add i32 %add135.i, %conv25.i
  %div137.i = sdiv i32 %sub.i, %conv25.i
  %add138.i = add nsw i32 %div137.i, 1
  br label %do.body145.i

do.body145.i:                                     ; preds = %if.then131.i, %for.body.preheader.i
  %.sink.i = phi i32 [ %add138.i, %if.then131.i ], [ 3, %for.body.preheader.i ]
  %419 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 56, i32 5, i32 0
  store i32 %.sink.i, i32* %419, align 4
  %mul151.i = mul i32 %mul110.i, %.sink.i
  %conv152.i = zext i32 %mul151.i to i64
  %call153.i = call i8* @x264_malloc(i64 %conv152.i) #13
  %arrayidx155.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 56, i32 6, i32 0
  %420 = bitcast float** %arrayidx155.i to i8**
  store i8* %call153.i, i8** %420, align 4, !tbaa !59
  %tobool159.i = icmp eq i8* %call153.i, null
  br i1 %tobool159.i, label %cleanup1094, label %do.body164.i

do.body164.i:                                     ; preds = %do.body145.i
  %conv167.i = zext i32 %mul110.i to i64
  %call168.i = call i8* @x264_malloc(i64 %conv167.i) #13
  %arrayidx170.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 56, i32 7, i32 0
  %421 = bitcast i32** %arrayidx170.i to i8**
  store i8* %call168.i, i8** %421, align 4, !tbaa !59
  %tobool174.i = icmp eq i8* %call168.i, null
  %422 = bitcast i8* %call168.i to i32*
  br i1 %tobool174.i, label %cleanup1094, label %do.end178.i

do.end178.i:                                      ; preds = %do.body164.i
  %div181.i = fdiv fast float %div.i, %div9.i
  %cmp182.i = fcmp fast ogt float %div181.i, 1.000000e+00
  %div186.i = fdiv fast float %div9.i, %div.i
  %cond.i1589 = select fast i1 %cmp182.i, float %div186.i, float 1.000000e+00
  %mul187.i = fmul fast float %div181.i, 5.000000e-01
  %sub188.i = fadd fast float %mul187.i, -5.000000e-01
  %423 = load i32, i32* %419, align 4, !tbaa !55
  %cmp195371.i = icmp sgt i32 %conv25.i, 0
  br i1 %cmp195371.i, label %for.body198.lr.ph.i, label %for.cond.cleanup197.i

for.body198.lr.ph.i:                              ; preds = %do.end178.i
  %conv200.i = sitofp i32 %423 to float
  %.neg.i = fmul fast float %conv200.i, 5.000000e-01
  %424 = fsub fast float 1.000000e+00, %.neg.i
  %cmp210366.i = icmp sgt i32 %423, 0
  br i1 %cmp210366.i, label %for.body198.us.preheader.i, label %for.body198.i

for.body198.us.preheader.i:                       ; preds = %for.body198.lr.ph.i
  %.pre.i = load float*, float** %arrayidx155.i, align 4, !tbaa !59
  br label %for.body198.us.i

for.body198.us.i:                                 ; preds = %for.cond.cleanup242.us.i, %for.body198.us.preheader.i
  %j.0373.us.i = phi i32 [ %inc256.us.i, %for.cond.cleanup242.us.i ], [ 0, %for.body198.us.preheader.i ]
  %dstinsrc.0372.us.i = phi float [ %add254.us.i, %for.cond.cleanup242.us.i ], [ %sub188.i, %for.body198.us.preheader.i ]
  %sub203.us.i = fadd fast float %dstinsrc.0372.us.i, %424
  %conv204.us.i = fptosi float %sub203.us.i to i32
  %arrayidx208.us.i = getelementptr inbounds i32, i32* %422, i32 %j.0373.us.i
  store i32 %conv204.us.i, i32* %arrayidx208.us.i, align 4, !tbaa !55
  %mul232.us.i = mul nsw i32 %j.0373.us.i, %423
  br label %for.body213.us.i

for.cond.cleanup242.us.i:                         ; preds = %for.body243.us.i
  %add254.us.i = fadd fast float %dstinsrc.0372.us.i, %div181.i
  %inc256.us.i = add nuw nsw i32 %j.0373.us.i, 1
  %exitcond421.i = icmp eq i32 %inc256.us.i, %conv25.i
  br i1 %exitcond421.i, label %for.cond.cleanup197.i, label %for.body198.us.i

for.body243.us.i:                                 ; preds = %for.body243.us.i.preheader, %for.body243.us.i
  %k238.0370.us.i = phi i32 [ %inc252.us.i, %for.body243.us.i ], [ 0, %for.body243.us.i.preheader ]
  %add248.us.i = add nsw i32 %k238.0370.us.i, %mul232.us.i
  %arrayidx249.us.i = getelementptr inbounds float, float* %.pre.i, i32 %add248.us.i
  %425 = load float, float* %arrayidx249.us.i, align 4, !tbaa !45
  %426 = fmul fast float %425, %429
  store float %426, float* %arrayidx249.us.i, align 4, !tbaa !45
  %inc252.us.i = add nuw nsw i32 %k238.0370.us.i, 1
  %exitcond420.i = icmp eq i32 %inc252.us.i, %423
  br i1 %exitcond420.i, label %for.cond.cleanup242.us.i, label %for.body243.us.i

for.body213.us.i:                                 ; preds = %for.body213.us.i, %for.body198.us.i
  %k.0368.us.i = phi i32 [ 0, %for.body198.us.i ], [ %inc236.us.i, %for.body213.us.i ]
  %sum.0367.us.i = phi float [ 0.000000e+00, %for.body198.us.i ], [ %add235.us.i, %for.body213.us.i ]
  %add214.us.i = add nsw i32 %k.0368.us.i, %conv204.us.i
  %conv215.us.i = sitofp i32 %add214.us.i to float
  %sub216.us.i = fsub fast float %conv215.us.i, %dstinsrc.0372.us.i
  %427 = call fast float @llvm.fabs.f32(float %sub216.us.i) #13
  %conv220.us.i = fmul fast float %427, %cond.i1589
  %sub221.us.i = fsub fast float 1.000000e+00, %conv220.us.i
  %428 = call fast float @llvm.maxnum.f32(float %sub221.us.i, float 0.000000e+00) #13
  %add233.us.i = add nsw i32 %k.0368.us.i, %mul232.us.i
  %arrayidx234.us.i = getelementptr inbounds float, float* %.pre.i, i32 %add233.us.i
  store float %428, float* %arrayidx234.us.i, align 4, !tbaa !45
  %add235.us.i = fadd fast float %428, %sum.0367.us.i
  %inc236.us.i = add nuw nsw i32 %k.0368.us.i, 1
  %exitcond419.i = icmp eq i32 %inc236.us.i, %423
  br i1 %exitcond419.i, label %for.body243.us.i.preheader, label %for.body213.us.i

for.body243.us.i.preheader:                       ; preds = %for.body213.us.i
  %429 = fdiv fast float 1.000000e+00, %add235.us.i
  br label %for.body243.us.i

for.cond.cleanup197.i:                            ; preds = %for.body198.i, %for.cond.cleanup242.us.i, %do.end178.i
  %cmp129.1.i = fcmp fast ogt float %div6.i, %div13.i
  br i1 %cmp129.1.i, label %if.then131.1.i, label %do.body145.1.i

for.body198.i:                                    ; preds = %for.body198.lr.ph.i, %for.body198.i
  %j.0373.i = phi i32 [ %inc256.i, %for.body198.i ], [ 0, %for.body198.lr.ph.i ]
  %dstinsrc.0372.i = phi float [ %add254.i, %for.body198.i ], [ %sub188.i, %for.body198.lr.ph.i ]
  %sub203.i = fadd fast float %dstinsrc.0372.i, %424
  %conv204.i = fptosi float %sub203.i to i32
  %arrayidx208.i = getelementptr inbounds i32, i32* %422, i32 %j.0373.i
  store i32 %conv204.i, i32* %arrayidx208.i, align 4, !tbaa !55
  %add254.i = fadd fast float %dstinsrc.0372.i, %div181.i
  %inc256.i = add nuw nsw i32 %j.0373.i, 1
  %exitcond.i = icmp eq i32 %inc256.i, %conv25.i
  br i1 %exitcond.i, label %for.cond.cleanup197.i, label %for.body198.i

if.then131.1.i:                                   ; preds = %for.cond.cleanup197.i
  %mul133.1.i = shl i32 %411, 1
  %add135.1.i = add i32 %410, -1
  %sub.1.i = add i32 %add135.1.i, %mul133.1.i
  %div137.1.i = sdiv i32 %sub.1.i, %410
  %add138.1.i = add nsw i32 %div137.1.i, 1
  br label %do.body145.1.i

do.body145.1.i:                                   ; preds = %if.then131.1.i, %for.cond.cleanup197.i
  %.sink422.i = phi i32 [ %add138.1.i, %if.then131.1.i ], [ 3, %for.cond.cleanup197.i ]
  %430 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 56, i32 5, i32 1
  store i32 %.sink422.i, i32* %430, align 4
  %mul150.1.i = shl i32 %410, 2
  %mul151.1.i = mul i32 %mul150.1.i, %.sink422.i
  %conv152.1.i = zext i32 %mul151.1.i to i64
  %call153.1.i = call i8* @x264_malloc(i64 %conv152.1.i) #13
  %arrayidx155.1.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 56, i32 6, i32 1
  %431 = bitcast float** %arrayidx155.1.i to i8**
  store i8* %call153.1.i, i8** %431, align 4, !tbaa !59
  %tobool159.1.i = icmp eq i8* %call153.1.i, null
  br i1 %tobool159.1.i, label %cleanup1094, label %do.body164.1.i

do.body164.1.i:                                   ; preds = %do.body145.1.i
  %conv167.1.i = zext i32 %mul150.1.i to i64
  %call168.1.i = call i8* @x264_malloc(i64 %conv167.1.i) #13
  %arrayidx170.1.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 56, i32 7, i32 1
  %432 = bitcast i32** %arrayidx170.1.i to i8**
  store i8* %call168.1.i, i8** %432, align 4, !tbaa !59
  %tobool174.1.i = icmp eq i8* %call168.1.i, null
  %433 = bitcast i8* %call168.1.i to i32*
  br i1 %tobool174.1.i, label %cleanup1094, label %do.end178.1.i

do.end178.1.i:                                    ; preds = %do.body164.1.i
  %div181.1.i = fdiv fast float %div6.i, %div13.i
  %cmp182.1.i = fcmp fast ogt float %div181.1.i, 1.000000e+00
  %div186.1.i = fdiv fast float %div13.i, %div6.i
  %cond.1.i = select fast i1 %cmp182.1.i, float %div186.1.i, float 1.000000e+00
  %mul187.1.i = fmul fast float %div181.1.i, 5.000000e-01
  %sub188.1.i = fadd fast float %mul187.1.i, -5.000000e-01
  %434 = load i32, i32* %430, align 4, !tbaa !55
  %cmp195371.1.i = icmp sgt i32 %410, 0
  br i1 %cmp195371.1.i, label %for.body198.lr.ph.1.i, label %for.cond.cleanup197.1.i

for.body198.lr.ph.1.i:                            ; preds = %do.end178.1.i
  %conv200.1.i = sitofp i32 %434 to float
  %.neg.1.i = fmul fast float %conv200.1.i, 5.000000e-01
  %435 = fsub fast float 1.000000e+00, %.neg.1.i
  %cmp210366.1.i = icmp sgt i32 %434, 0
  br i1 %cmp210366.1.i, label %for.body198.us.preheader.1.i, label %for.body198.1.i

for.body198.1.i:                                  ; preds = %for.body198.lr.ph.1.i, %for.body198.1.i
  %j.0373.1.i = phi i32 [ %inc256.1.i, %for.body198.1.i ], [ 0, %for.body198.lr.ph.1.i ]
  %dstinsrc.0372.1.i = phi float [ %add254.1.i, %for.body198.1.i ], [ %sub188.1.i, %for.body198.lr.ph.1.i ]
  %sub203.1.i = fadd fast float %dstinsrc.0372.1.i, %435
  %conv204.1.i = fptosi float %sub203.1.i to i32
  %arrayidx208.1.i = getelementptr inbounds i32, i32* %433, i32 %j.0373.1.i
  store i32 %conv204.1.i, i32* %arrayidx208.1.i, align 4, !tbaa !55
  %add254.1.i = fadd fast float %dstinsrc.0372.1.i, %div181.1.i
  %inc256.1.i = add nuw nsw i32 %j.0373.1.i, 1
  %exitcond.1.i = icmp eq i32 %inc256.1.i, %410
  br i1 %exitcond.1.i, label %for.cond.cleanup197.1.i, label %for.body198.1.i

for.body198.us.preheader.1.i:                     ; preds = %for.body198.lr.ph.1.i
  %.pre423.i = load float*, float** %arrayidx155.1.i, align 4, !tbaa !59
  br label %for.body198.us.1.i

for.body198.us.1.i:                               ; preds = %for.cond.cleanup242.us.1.i, %for.body198.us.preheader.1.i
  %j.0373.us.1.i = phi i32 [ %inc256.us.1.i, %for.cond.cleanup242.us.1.i ], [ 0, %for.body198.us.preheader.1.i ]
  %dstinsrc.0372.us.1.i = phi float [ %add254.us.1.i, %for.cond.cleanup242.us.1.i ], [ %sub188.1.i, %for.body198.us.preheader.1.i ]
  %sub203.us.1.i = fadd fast float %dstinsrc.0372.us.1.i, %435
  %conv204.us.1.i = fptosi float %sub203.us.1.i to i32
  %arrayidx208.us.1.i = getelementptr inbounds i32, i32* %433, i32 %j.0373.us.1.i
  store i32 %conv204.us.1.i, i32* %arrayidx208.us.1.i, align 4, !tbaa !55
  %mul232.us.1.i = mul nsw i32 %j.0373.us.1.i, %434
  br label %for.body213.us.1.i

for.body213.us.1.i:                               ; preds = %for.body213.us.1.i, %for.body198.us.1.i
  %k.0368.us.1.i = phi i32 [ 0, %for.body198.us.1.i ], [ %inc236.us.1.i, %for.body213.us.1.i ]
  %sum.0367.us.1.i = phi float [ 0.000000e+00, %for.body198.us.1.i ], [ %add235.us.1.i, %for.body213.us.1.i ]
  %add214.us.1.i = add nsw i32 %k.0368.us.1.i, %conv204.us.1.i
  %conv215.us.1.i = sitofp i32 %add214.us.1.i to float
  %sub216.us.1.i = fsub fast float %conv215.us.1.i, %dstinsrc.0372.us.1.i
  %436 = call fast float @llvm.fabs.f32(float %sub216.us.1.i) #13
  %conv220.us.1.i = fmul fast float %436, %cond.1.i
  %sub221.us.1.i = fsub fast float 1.000000e+00, %conv220.us.1.i
  %437 = call fast float @llvm.maxnum.f32(float %sub221.us.1.i, float 0.000000e+00) #13
  %add233.us.1.i = add nsw i32 %k.0368.us.1.i, %mul232.us.1.i
  %arrayidx234.us.1.i = getelementptr inbounds float, float* %.pre423.i, i32 %add233.us.1.i
  store float %437, float* %arrayidx234.us.1.i, align 4, !tbaa !45
  %add235.us.1.i = fadd fast float %437, %sum.0367.us.1.i
  %inc236.us.1.i = add nuw nsw i32 %k.0368.us.1.i, 1
  %exitcond419.1.i = icmp eq i32 %inc236.us.1.i, %434
  br i1 %exitcond419.1.i, label %for.body243.us.1.i.preheader, label %for.body213.us.1.i

for.body243.us.1.i.preheader:                     ; preds = %for.body213.us.1.i
  %438 = fdiv fast float 1.000000e+00, %add235.us.1.i
  br label %for.body243.us.1.i

for.body243.us.1.i:                               ; preds = %for.body243.us.1.i.preheader, %for.body243.us.1.i
  %k238.0370.us.1.i = phi i32 [ %inc252.us.1.i, %for.body243.us.1.i ], [ 0, %for.body243.us.1.i.preheader ]
  %add248.us.1.i = add nsw i32 %k238.0370.us.1.i, %mul232.us.1.i
  %arrayidx249.us.1.i = getelementptr inbounds float, float* %.pre423.i, i32 %add248.us.1.i
  %439 = load float, float* %arrayidx249.us.1.i, align 4, !tbaa !45
  %440 = fmul fast float %439, %438
  store float %440, float* %arrayidx249.us.1.i, align 4, !tbaa !45
  %inc252.us.1.i = add nuw nsw i32 %k238.0370.us.1.i, 1
  %exitcond420.1.i = icmp eq i32 %inc252.us.1.i, %434
  br i1 %exitcond420.1.i, label %for.cond.cleanup242.us.1.i, label %for.body243.us.1.i

for.cond.cleanup242.us.1.i:                       ; preds = %for.body243.us.1.i
  %add254.us.1.i = fadd fast float %dstinsrc.0372.us.1.i, %div181.1.i
  %inc256.us.1.i = add nuw nsw i32 %j.0373.us.1.i, 1
  %exitcond421.1.i = icmp eq i32 %inc256.us.1.i, %410
  br i1 %exitcond421.1.i, label %for.cond.cleanup197.1.i, label %for.body198.us.1.i

for.cond.cleanup197.1.i:                          ; preds = %for.body198.1.i, %for.cond.cleanup242.us.1.i, %do.end178.1.i
  store i32 %conv17.i, i32* %arrayidx.i, align 4, !tbaa !55
  store i32 %411, i32* %arrayidx4.i, align 4, !tbaa !55
  br label %if.end1057

if.end1057:                                       ; preds = %if.end983, %for.cond.cleanup197.1.i, %if.end77.i, %lor.lhs.false1030, %if.end1020
  %441 = load i32, i32* %i_threads, align 4, !tbaa !126
  %cmp10621753 = icmp sgt i32 %441, 0
  br i1 %cmp10621753, label %for.body1065.lr.ph, label %cleanup1094

for.body1065.lr.ph:                               ; preds = %if.end1057
  %442 = bitcast %struct.x264_ratecontrol_t* %3 to i8*
  %443 = bitcast %struct.x264_t* %h to i8*
  %arrayidx1067.peel = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 2, i32 0
  %444 = load %struct.x264_t*, %struct.x264_t** %arrayidx1067.peel, align 4, !tbaa !59
  %rc1068.peel = getelementptr inbounds %struct.x264_t, %struct.x264_t* %444, i32 0, i32 71
  store %struct.x264_ratecontrol_t* %3, %struct.x264_ratecontrol_t** %rc1068.peel, align 64, !tbaa !65
  %cmp1062.peel = icmp sgt i32 %441, 1
  br i1 %cmp1062.peel, label %for.body1065, label %cleanup1094

for.body1065:                                     ; preds = %for.body1065.lr.ph, %for.body1065
  %445 = phi i32 [ %.pre1824, %for.body1065 ], [ %441, %for.body1065.lr.ph ]
  %i1058.01754 = phi i32 [ %inc1091, %for.body1065 ], [ 1, %for.body1065.lr.ph ]
  %add.ptr1066 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 %i1058.01754
  %arrayidx1067 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 2, i32 %i1058.01754
  %446 = load %struct.x264_t*, %struct.x264_t** %arrayidx1067, align 4, !tbaa !59
  %rc1068 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %446, i32 0, i32 71
  store %struct.x264_ratecontrol_t* %add.ptr1066, %struct.x264_ratecontrol_t** %rc1068, align 64, !tbaa !65
  %447 = bitcast %struct.x264_ratecontrol_t* %add.ptr1066 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 8 %447, i8* align 8 %442, i32 680, i1 true), !tbaa.struct !224
  %448 = bitcast %struct.x264_t** %arrayidx1067 to i8**
  %449 = load i8*, i8** %448, align 4, !tbaa !59
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 64 dereferenceable(944) %449, i8* nonnull align 64 dereferenceable(944) %443, i32 944, i1 false), !tbaa.struct !225
  %450 = load i32, i32* %b_variable_qp, align 16, !tbaa !136
  %451 = load %struct.x264_t*, %struct.x264_t** %arrayidx1067, align 4, !tbaa !59
  %b_variable_qp1082 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %451, i32 0, i32 70, i32 97
  store i32 %450, i32* %b_variable_qp1082, align 16, !tbaa !136
  %452 = load i32, i32* %ip_offset181, align 4, !tbaa !145
  %ip_offset1088 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %451, i32 0, i32 70, i32 87
  store i32 %452, i32* %ip_offset1088, align 4, !tbaa !145
  %.pre1824 = load i32, i32* %i_threads, align 4, !tbaa !126
  %inc1091 = add nuw nsw i32 %i1058.01754, 1
  %cmp1062 = icmp slt i32 %inc1091, %.pre1824
  br i1 %cmp1062, label %for.body1065, label %cleanup1094, !llvm.loop !226

cleanup1094:                                      ; preds = %cleanup899, %for.body1065.lr.ph, %for.body1065, %if.end1057, %do.body164.i, %do.body145.i, %do.body145.1.i, %do.body164.1.i, %if.end.i, %if.end88.i, %do.body107.i, %do.body60.i, %if.then340, %if.then351, %vbv_pass2.exit.i, %do.body220.i, %for.cond.cleanup52.i, %if.then.i1631, %do.end704, %do.body693, %if.then665, %if.then687, %cleanup649, %if.then334, %if.then359, %strcat_filename.exit1687.thread, %strcat_filename.exit1665.thread, %strcat_filename.exit1687, %entry, %if.end144, %do.body203, %if.then1014, %if.then975, %if.then102, %if.then316, %if.then76
  %retval.18 = phi i32 [ -1, %if.then76 ], [ -1, %if.then316 ], [ -1, %if.then102 ], [ -1, %if.then975 ], [ -1, %if.then1014 ], [ -1, %do.body203 ], [ -1, %if.end144 ], [ -1, %entry ], [ -1, %strcat_filename.exit1687 ], [ -1, %strcat_filename.exit1665.thread ], [ -1, %strcat_filename.exit1687.thread ], [ -1, %if.then359 ], [ -1, %if.then334 ], [ -1, %cleanup649 ], [ -1, %if.then687 ], [ -1, %if.then665 ], [ -1, %do.body693 ], [ -1, %do.end704 ], [ -1, %if.then.i1631 ], [ -1, %for.cond.cleanup52.i ], [ -1, %do.body220.i ], [ -1, %vbv_pass2.exit.i ], [ -1, %if.then351 ], [ -1, %if.then340 ], [ -1, %do.body60.i ], [ -1, %do.body107.i ], [ -1, %if.end88.i ], [ -1, %if.end.i ], [ -1, %do.body164.1.i ], [ -1, %do.body145.1.i ], [ -1, %do.body145.i ], [ -1, %do.body164.i ], [ 0, %if.end1057 ], [ 0, %for.body1065 ], [ 0, %for.body1065.lr.ph ], [ -1, %cleanup899 ]
  ret i32 %retval.18

if.end817.1:                                      ; preds = %for.inc823
  %add.ptr818.1 = getelementptr inbounds i8, i8* %call819, i32 1
  %call819.1 = call i8* @strchr(i8* nonnull %add.ptr818.1, i32 32) #14
  %tobool820.1 = icmp eq i8* %call819.1, null
  br i1 %tobool820.1, label %parse_error, label %for.inc823.1

for.inc823.1:                                     ; preds = %if.end817.1
  %arrayidx812.2 = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %181, i32 %178, i32 18, i32 2
  %call813.2 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %call819.1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i32 0, i32 0), i32* nonnull %arrayidx812.2) #13
  %cmp814.2 = icmp eq i32 %call813.2, 1
  br i1 %cmp814.2, label %if.end817.2, label %for.end825

if.end817.2:                                      ; preds = %for.inc823.1
  %add.ptr818.2 = getelementptr inbounds i8, i8* %call819.1, i32 1
  %call819.2 = call i8* @strchr(i8* nonnull %add.ptr818.2, i32 32) #14
  %tobool820.2 = icmp eq i8* %call819.2, null
  br i1 %tobool820.2, label %parse_error, label %for.inc823.2

for.inc823.2:                                     ; preds = %if.end817.2
  %arrayidx812.3 = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %181, i32 %178, i32 18, i32 3
  %call813.3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %call819.2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i32 0, i32 0), i32* nonnull %arrayidx812.3) #13
  %cmp814.3 = icmp eq i32 %call813.3, 1
  br i1 %cmp814.3, label %if.end817.3, label %for.end825

if.end817.3:                                      ; preds = %for.inc823.2
  %add.ptr818.3 = getelementptr inbounds i8, i8* %call819.2, i32 1
  %call819.3 = call i8* @strchr(i8* nonnull %add.ptr818.3, i32 32) #14
  %tobool820.3 = icmp eq i8* %call819.3, null
  br i1 %tobool820.3, label %parse_error, label %for.inc823.3

for.inc823.3:                                     ; preds = %if.end817.3
  %arrayidx812.4 = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %181, i32 %178, i32 18, i32 4
  %call813.4 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %call819.3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i32 0, i32 0), i32* nonnull %arrayidx812.4) #13
  %cmp814.4 = icmp eq i32 %call813.4, 1
  br i1 %cmp814.4, label %if.end817.4, label %for.end825

if.end817.4:                                      ; preds = %for.inc823.3
  %add.ptr818.4 = getelementptr inbounds i8, i8* %call819.3, i32 1
  %call819.4 = call i8* @strchr(i8* nonnull %add.ptr818.4, i32 32) #14
  %tobool820.4 = icmp eq i8* %call819.4, null
  br i1 %tobool820.4, label %parse_error, label %for.inc823.4

for.inc823.4:                                     ; preds = %if.end817.4
  %arrayidx812.5 = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %181, i32 %178, i32 18, i32 5
  %call813.5 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %call819.4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i32 0, i32 0), i32* nonnull %arrayidx812.5) #13
  %cmp814.5 = icmp eq i32 %call813.5, 1
  br i1 %cmp814.5, label %if.end817.5, label %for.end825

if.end817.5:                                      ; preds = %for.inc823.4
  %add.ptr818.5 = getelementptr inbounds i8, i8* %call819.4, i32 1
  %call819.5 = call i8* @strchr(i8* nonnull %add.ptr818.5, i32 32) #14
  %tobool820.5 = icmp eq i8* %call819.5, null
  br i1 %tobool820.5, label %parse_error, label %for.inc823.5

for.inc823.5:                                     ; preds = %if.end817.5
  %arrayidx812.6 = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %181, i32 %178, i32 18, i32 6
  %call813.6 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %call819.5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i32 0, i32 0), i32* nonnull %arrayidx812.6) #13
  %cmp814.6 = icmp eq i32 %call813.6, 1
  br i1 %cmp814.6, label %if.end817.6, label %for.end825

if.end817.6:                                      ; preds = %for.inc823.5
  %add.ptr818.6 = getelementptr inbounds i8, i8* %call819.5, i32 1
  %call819.6 = call i8* @strchr(i8* nonnull %add.ptr818.6, i32 32) #14
  %tobool820.6 = icmp eq i8* %call819.6, null
  br i1 %tobool820.6, label %parse_error, label %for.inc823.6

for.inc823.6:                                     ; preds = %if.end817.6
  %arrayidx812.7 = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %181, i32 %178, i32 18, i32 7
  %call813.7 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %call819.6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i32 0, i32 0), i32* nonnull %arrayidx812.7) #13
  %cmp814.7 = icmp eq i32 %call813.7, 1
  br i1 %cmp814.7, label %if.end817.7, label %for.end825

if.end817.7:                                      ; preds = %for.inc823.6
  %add.ptr818.7 = getelementptr inbounds i8, i8* %call819.6, i32 1
  %call819.7 = call i8* @strchr(i8* nonnull %add.ptr818.7, i32 32) #14
  %tobool820.7 = icmp eq i8* %call819.7, null
  br i1 %tobool820.7, label %parse_error, label %for.inc823.7

for.inc823.7:                                     ; preds = %if.end817.7
  %arrayidx812.8 = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %181, i32 %178, i32 18, i32 8
  %call813.8 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %call819.7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i32 0, i32 0), i32* nonnull %arrayidx812.8) #13
  %cmp814.8 = icmp eq i32 %call813.8, 1
  br i1 %cmp814.8, label %if.end817.8, label %for.end825

if.end817.8:                                      ; preds = %for.inc823.7
  %add.ptr818.8 = getelementptr inbounds i8, i8* %call819.7, i32 1
  %call819.8 = call i8* @strchr(i8* nonnull %add.ptr818.8, i32 32) #14
  %tobool820.8 = icmp eq i8* %call819.8, null
  br i1 %tobool820.8, label %parse_error, label %for.inc823.8

for.inc823.8:                                     ; preds = %if.end817.8
  %arrayidx812.9 = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %181, i32 %178, i32 18, i32 9
  %call813.9 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %call819.8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i32 0, i32 0), i32* nonnull %arrayidx812.9) #13
  %cmp814.9 = icmp eq i32 %call813.9, 1
  br i1 %cmp814.9, label %if.end817.9, label %for.end825

if.end817.9:                                      ; preds = %for.inc823.8
  %add.ptr818.9 = getelementptr inbounds i8, i8* %call819.8, i32 1
  %call819.9 = call i8* @strchr(i8* nonnull %add.ptr818.9, i32 32) #14
  %tobool820.9 = icmp eq i8* %call819.9, null
  br i1 %tobool820.9, label %parse_error, label %for.inc823.9

for.inc823.9:                                     ; preds = %if.end817.9
  %arrayidx812.10 = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %181, i32 %178, i32 18, i32 10
  %call813.10 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %call819.9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i32 0, i32 0), i32* nonnull %arrayidx812.10) #13
  %cmp814.10 = icmp eq i32 %call813.10, 1
  br i1 %cmp814.10, label %if.end817.10, label %for.end825

if.end817.10:                                     ; preds = %for.inc823.9
  %add.ptr818.10 = getelementptr inbounds i8, i8* %call819.9, i32 1
  %call819.10 = call i8* @strchr(i8* nonnull %add.ptr818.10, i32 32) #14
  %tobool820.10 = icmp eq i8* %call819.10, null
  br i1 %tobool820.10, label %parse_error, label %for.inc823.10

for.inc823.10:                                    ; preds = %if.end817.10
  %arrayidx812.11 = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %181, i32 %178, i32 18, i32 11
  %call813.11 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %call819.10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i32 0, i32 0), i32* nonnull %arrayidx812.11) #13
  %cmp814.11 = icmp eq i32 %call813.11, 1
  br i1 %cmp814.11, label %if.end817.11, label %for.end825

if.end817.11:                                     ; preds = %for.inc823.10
  %add.ptr818.11 = getelementptr inbounds i8, i8* %call819.10, i32 1
  %call819.11 = call i8* @strchr(i8* nonnull %add.ptr818.11, i32 32) #14
  %tobool820.11 = icmp eq i8* %call819.11, null
  br i1 %tobool820.11, label %parse_error, label %for.inc823.11

for.inc823.11:                                    ; preds = %if.end817.11
  %arrayidx812.12 = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %181, i32 %178, i32 18, i32 12
  %call813.12 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %call819.11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i32 0, i32 0), i32* nonnull %arrayidx812.12) #13
  %cmp814.12 = icmp eq i32 %call813.12, 1
  br i1 %cmp814.12, label %if.end817.12, label %for.end825

if.end817.12:                                     ; preds = %for.inc823.11
  %add.ptr818.12 = getelementptr inbounds i8, i8* %call819.11, i32 1
  %call819.12 = call i8* @strchr(i8* nonnull %add.ptr818.12, i32 32) #14
  %tobool820.12 = icmp eq i8* %call819.12, null
  br i1 %tobool820.12, label %parse_error, label %for.inc823.12

for.inc823.12:                                    ; preds = %if.end817.12
  %arrayidx812.13 = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %181, i32 %178, i32 18, i32 13
  %call813.13 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %call819.12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i32 0, i32 0), i32* nonnull %arrayidx812.13) #13
  %cmp814.13 = icmp eq i32 %call813.13, 1
  br i1 %cmp814.13, label %if.end817.13, label %for.end825

if.end817.13:                                     ; preds = %for.inc823.12
  %add.ptr818.13 = getelementptr inbounds i8, i8* %call819.12, i32 1
  %call819.13 = call i8* @strchr(i8* nonnull %add.ptr818.13, i32 32) #14
  %tobool820.13 = icmp eq i8* %call819.13, null
  br i1 %tobool820.13, label %parse_error, label %for.inc823.13

for.inc823.13:                                    ; preds = %if.end817.13
  %arrayidx812.14 = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %181, i32 %178, i32 18, i32 14
  %call813.14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %call819.13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i32 0, i32 0), i32* nonnull %arrayidx812.14) #13
  %cmp814.14 = icmp eq i32 %call813.14, 1
  br i1 %cmp814.14, label %if.end817.14, label %for.end825

if.end817.14:                                     ; preds = %for.inc823.13
  %add.ptr818.14 = getelementptr inbounds i8, i8* %call819.13, i32 1
  %call819.14 = call i8* @strchr(i8* nonnull %add.ptr818.14, i32 32) #14
  %tobool820.14 = icmp eq i8* %call819.14, null
  br i1 %tobool820.14, label %parse_error, label %for.inc823.14

for.inc823.14:                                    ; preds = %if.end817.14
  %arrayidx812.15 = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %181, i32 %178, i32 18, i32 15
  %call813.15 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %call819.14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i32 0, i32 0), i32* nonnull %arrayidx812.15) #13
  %cmp814.15 = icmp eq i32 %call813.15, 1
  br i1 %cmp814.15, label %if.end817.15, label %for.end825

if.end817.15:                                     ; preds = %for.inc823.14
  %add.ptr818.15 = getelementptr inbounds i8, i8* %call819.14, i32 1
  %call819.15 = call i8* @strchr(i8* nonnull %add.ptr818.15, i32 32) #14
  %tobool820.15 = icmp eq i8* %call819.15, null
  br i1 %tobool820.15, label %parse_error, label %for.end825

for.body245.lr.ph.us.1:                           ; preds = %for.cond271.preheader.us
  %453 = load %struct.predictor_t*, %struct.predictor_t** %pred, align 8, !tbaa !150
  br label %for.body245.us.1

for.body245.us.1:                                 ; preds = %for.body245.us.1, %for.body245.lr.ph.us.1
  %j.01772.us.1 = phi i32 [ 0, %for.body245.lr.ph.us.1 ], [ %inc.us.1, %for.body245.us.1 ]
  %mul249.us.1 = mul nuw nsw i32 %j.01772.us.1, 5
  %add250.us.1 = add nuw nsw i32 %mul249.us.1, 1
  %coeff_min.us.1 = getelementptr inbounds %struct.predictor_t, %struct.predictor_t* %453, i32 %add250.us.1, i32 0
  store float 5.000000e-01, float* %coeff_min.us.1, align 4, !tbaa !155
  %coeff.us.1 = getelementptr inbounds %struct.predictor_t, %struct.predictor_t* %453, i32 %add250.us.1, i32 1
  store float 1.000000e+00, float* %coeff.us.1, align 4, !tbaa !157
  %count.us.1 = getelementptr inbounds %struct.predictor_t, %struct.predictor_t* %453, i32 %add250.us.1, i32 2
  store float 1.000000e+00, float* %count.us.1, align 4, !tbaa !158
  %decay.us.1 = getelementptr inbounds %struct.predictor_t, %struct.predictor_t* %453, i32 %add250.us.1, i32 3
  store float 5.000000e-01, float* %decay.us.1, align 4, !tbaa !159
  %offset.us.1 = getelementptr inbounds %struct.predictor_t, %struct.predictor_t* %453, i32 %add250.us.1, i32 4
  store float 0.000000e+00, float* %offset.us.1, align 4, !tbaa !160
  %inc.us.1 = add nuw i32 %j.01772.us.1, 1
  %exitcond1803.1 = icmp eq i32 %j.01772.us.1, %mul191
  br i1 %exitcond1803.1, label %for.cond271.preheader.us.1, label %for.body245.us.1

for.cond271.preheader.us.1:                       ; preds = %for.body245.us.1, %for.cond271.preheader.us
  %coeff_min278.us.11805 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 62, i32 1, i32 0, i32 0
  store float 6.250000e-02, float* %coeff_min278.us.11805, align 4, !tbaa !155
  %coeff282.us.11806 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 62, i32 1, i32 0, i32 1
  store float 2.500000e-01, float* %coeff282.us.11806, align 4, !tbaa !157
  %count286.us.11807 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 62, i32 1, i32 0, i32 2
  store float 1.000000e+00, float* %count286.us.11807, align 4, !tbaa !158
  %decay290.us.11808 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 62, i32 1, i32 0, i32 3
  store float 5.000000e-01, float* %decay290.us.11808, align 4, !tbaa !159
  %offset294.us.11809 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 62, i32 1, i32 0, i32 4
  store float 0.000000e+00, float* %offset294.us.11809, align 4, !tbaa !160
  %coeff_min278.us.1.1 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 62, i32 1, i32 1, i32 0
  store float 6.250000e-02, float* %coeff_min278.us.1.1, align 4, !tbaa !155
  %coeff282.us.1.1 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 62, i32 1, i32 1, i32 1
  store float 2.500000e-01, float* %coeff282.us.1.1, align 4, !tbaa !157
  %count286.us.1.1 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 62, i32 1, i32 1, i32 2
  store float 1.000000e+00, float* %count286.us.1.1, align 4, !tbaa !158
  %decay290.us.1.1 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 62, i32 1, i32 1, i32 3
  store float 5.000000e-01, float* %decay290.us.1.1, align 4, !tbaa !159
  %offset294.us.1.1 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 62, i32 1, i32 1, i32 4
  store float 0.000000e+00, float* %offset294.us.1.1, align 4, !tbaa !160
  %arrayidx228.us.2 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 48, i32 2
  store double %conv227.us, double* %arrayidx228.us.2, align 8, !tbaa !154
  %arrayidx234.us.2 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 53, i32 2
  store double %conv233, double* %arrayidx234.us.2, align 8, !tbaa !154
  %arrayidx240.us.2 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 54, i32 2
  store double %conv239, double* %arrayidx240.us.2, align 8, !tbaa !154
  br i1 %cmp2421771, label %for.cond.cleanup, label %for.body245.lr.ph.us.2

for.body245.lr.ph.us.2:                           ; preds = %for.cond271.preheader.us.1
  %454 = load %struct.predictor_t*, %struct.predictor_t** %pred, align 8, !tbaa !150
  br label %for.body245.us.2

for.body245.us.2:                                 ; preds = %for.body245.us.2, %for.body245.lr.ph.us.2
  %j.01772.us.2 = phi i32 [ 0, %for.body245.lr.ph.us.2 ], [ %inc.us.2, %for.body245.us.2 ]
  %mul249.us.2 = mul nuw nsw i32 %j.01772.us.2, 5
  %add250.us.2 = add nuw nsw i32 %mul249.us.2, 2
  %coeff_min.us.2 = getelementptr inbounds %struct.predictor_t, %struct.predictor_t* %454, i32 %add250.us.2, i32 0
  store float 7.500000e-01, float* %coeff_min.us.2, align 4, !tbaa !155
  %coeff.us.2 = getelementptr inbounds %struct.predictor_t, %struct.predictor_t* %454, i32 %add250.us.2, i32 1
  store float 1.500000e+00, float* %coeff.us.2, align 4, !tbaa !157
  %count.us.2 = getelementptr inbounds %struct.predictor_t, %struct.predictor_t* %454, i32 %add250.us.2, i32 2
  store float 1.000000e+00, float* %count.us.2, align 4, !tbaa !158
  %decay.us.2 = getelementptr inbounds %struct.predictor_t, %struct.predictor_t* %454, i32 %add250.us.2, i32 3
  store float 5.000000e-01, float* %decay.us.2, align 4, !tbaa !159
  %offset.us.2 = getelementptr inbounds %struct.predictor_t, %struct.predictor_t* %454, i32 %add250.us.2, i32 4
  store float 0.000000e+00, float* %offset.us.2, align 4, !tbaa !160
  %inc.us.2 = add nuw i32 %j.01772.us.2, 1
  %exitcond1803.2 = icmp eq i32 %j.01772.us.2, %mul191
  br i1 %exitcond1803.2, label %for.cond.cleanup, label %for.body245.us.2

for.body245.lr.ph.1:                              ; preds = %for.cond271.preheader
  %455 = load %struct.predictor_t*, %struct.predictor_t** %pred, align 8, !tbaa !150
  br label %for.body245.1

for.body245.1:                                    ; preds = %for.body245.1, %for.body245.lr.ph.1
  %j.01772.1 = phi i32 [ 0, %for.body245.lr.ph.1 ], [ %inc.1, %for.body245.1 ]
  %mul249.1 = mul nuw nsw i32 %j.01772.1, 5
  %add250.1 = add nuw nsw i32 %mul249.1, 1
  %coeff_min.1 = getelementptr inbounds %struct.predictor_t, %struct.predictor_t* %455, i32 %add250.1, i32 0
  store float 5.000000e-01, float* %coeff_min.1, align 4, !tbaa !155
  %coeff.1 = getelementptr inbounds %struct.predictor_t, %struct.predictor_t* %455, i32 %add250.1, i32 1
  store float 1.000000e+00, float* %coeff.1, align 4, !tbaa !157
  %count.1 = getelementptr inbounds %struct.predictor_t, %struct.predictor_t* %455, i32 %add250.1, i32 2
  store float 1.000000e+00, float* %count.1, align 4, !tbaa !158
  %decay.1 = getelementptr inbounds %struct.predictor_t, %struct.predictor_t* %455, i32 %add250.1, i32 3
  store float 5.000000e-01, float* %decay.1, align 4, !tbaa !159
  %offset.1 = getelementptr inbounds %struct.predictor_t, %struct.predictor_t* %455, i32 %add250.1, i32 4
  store float 0.000000e+00, float* %offset.1, align 4, !tbaa !160
  %inc.1 = add nuw i32 %j.01772.1, 1
  %exitcond1810.1 = icmp eq i32 %j.01772.1, %mul191
  br i1 %exitcond1810.1, label %for.cond271.preheader.1, label %for.body245.1

for.cond271.preheader.1:                          ; preds = %for.body245.1, %for.cond271.preheader
  %coeff_min278.11812 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 62, i32 1, i32 0, i32 0
  store float 6.250000e-02, float* %coeff_min278.11812, align 4, !tbaa !155
  %coeff282.11813 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 62, i32 1, i32 0, i32 1
  store float 2.500000e-01, float* %coeff282.11813, align 4, !tbaa !157
  %count286.11814 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 62, i32 1, i32 0, i32 2
  store float 1.000000e+00, float* %count286.11814, align 4, !tbaa !158
  %decay290.11815 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 62, i32 1, i32 0, i32 3
  store float 5.000000e-01, float* %decay290.11815, align 4, !tbaa !159
  %offset294.11816 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 62, i32 1, i32 0, i32 4
  store float 0.000000e+00, float* %offset294.11816, align 4, !tbaa !160
  %coeff_min278.1.1 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 62, i32 1, i32 1, i32 0
  store float 6.250000e-02, float* %coeff_min278.1.1, align 4, !tbaa !155
  %coeff282.1.1 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 62, i32 1, i32 1, i32 1
  store float 2.500000e-01, float* %coeff282.1.1, align 4, !tbaa !157
  %count286.1.1 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 62, i32 1, i32 1, i32 2
  store float 1.000000e+00, float* %count286.1.1, align 4, !tbaa !158
  %decay290.1.1 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 62, i32 1, i32 1, i32 3
  store float 5.000000e-01, float* %decay290.1.1, align 4, !tbaa !159
  %offset294.1.1 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 62, i32 1, i32 1, i32 4
  store float 0.000000e+00, float* %offset294.1.1, align 4, !tbaa !160
  %arrayidx228.2 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 48, i32 2
  store double 0x400B333340000000, double* %arrayidx228.2, align 8, !tbaa !154
  %arrayidx234.2 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 53, i32 2
  store double %conv233, double* %arrayidx234.2, align 8, !tbaa !154
  %arrayidx240.2 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %3, i32 0, i32 54, i32 2
  store double %conv239, double* %arrayidx240.2, align 8, !tbaa !154
  br i1 %cmp2421771, label %for.cond.cleanup, label %for.body245.lr.ph.2

for.body245.lr.ph.2:                              ; preds = %for.cond271.preheader.1
  %456 = load %struct.predictor_t*, %struct.predictor_t** %pred, align 8, !tbaa !150
  br label %for.body245.2

for.body245.2:                                    ; preds = %for.body245.2, %for.body245.lr.ph.2
  %j.01772.2 = phi i32 [ 0, %for.body245.lr.ph.2 ], [ %inc.2, %for.body245.2 ]
  %mul249.2 = mul nuw nsw i32 %j.01772.2, 5
  %add250.2 = add nuw nsw i32 %mul249.2, 2
  %coeff_min.2 = getelementptr inbounds %struct.predictor_t, %struct.predictor_t* %456, i32 %add250.2, i32 0
  store float 7.500000e-01, float* %coeff_min.2, align 4, !tbaa !155
  %coeff.2 = getelementptr inbounds %struct.predictor_t, %struct.predictor_t* %456, i32 %add250.2, i32 1
  store float 1.500000e+00, float* %coeff.2, align 4, !tbaa !157
  %count.2 = getelementptr inbounds %struct.predictor_t, %struct.predictor_t* %456, i32 %add250.2, i32 2
  store float 1.000000e+00, float* %count.2, align 4, !tbaa !158
  %decay.2 = getelementptr inbounds %struct.predictor_t, %struct.predictor_t* %456, i32 %add250.2, i32 3
  store float 5.000000e-01, float* %decay.2, align 4, !tbaa !159
  %offset.2 = getelementptr inbounds %struct.predictor_t, %struct.predictor_t* %456, i32 %add250.2, i32 4
  store float 0.000000e+00, float* %offset.2, align 4, !tbaa !160
  %inc.2 = add nuw i32 %j.01772.2, 1
  %exitcond1810.2 = icmp eq i32 %j.01772.2, %mul191
  br i1 %exitcond1810.2, label %for.cond.cleanup, label %for.body245.2
}

declare dso_local i8* @x264_malloc(i64) local_unnamed_addr #5

declare dso_local void @x264_reduce_fraction64(i64*, i64*) local_unnamed_addr #5

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.log2.f64(double) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.log2.f32(float) #3

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #6

declare dso_local i8* @x264_slurp_file(i8*) local_unnamed_addr #5

declare dso_local %struct._IO_FILE* @fopen64(i8*, i8*) local_unnamed_addr #5

declare dso_local void @x264_free(i8*) #5

; Function Attrs: nofree nounwind readonly
declare dso_local i32 @strncmp(i8* nocapture, i8* nocapture, i32) local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind readonly
declare dso_local i8* @strstr(i8*, i8* nocapture) local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare dso_local i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare dso_local i32 @sprintf(i8* noalias nocapture, i8* nocapture readonly, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly
declare dso_local i32 @strlen(i8* nocapture) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare dso_local i32 @strcspn(i8* nocapture, i8* nocapture) local_unnamed_addr #7

declare dso_local i8* @x264_param2string(%struct.x264_param_t*, i32) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind
define hidden void @x264_8_ratecontrol_summary(%struct.x264_t* %h) local_unnamed_addr #0 {
entry:
  %rc1 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 71
  %0 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc1, align 64, !tbaa !65
  %b_abr = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 0
  %1 = load i32, i32* %b_abr, align 8, !tbaa !118
  %tobool = icmp eq i32 %1, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %i_rc_method = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 0
  %2 = load i32, i32* %i_rc_method, align 8, !tbaa !82
  %cmp = icmp eq i32 %2, 2
  br i1 %cmp, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %cbr_decay = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 32
  %3 = load double, double* %cbr_decay, align 8, !tbaa !119
  %cmp4 = fcmp fast ogt double %3, 9.999000e-01
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true3
  %i_mb_count = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 2
  %4 = load i32, i32* %i_mb_count, align 8, !tbaa !37
  %i_bframe = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 21
  %5 = load i32, i32* %i_bframe, align 4, !tbaa !83
  %tobool6 = icmp eq i32 %5, 0
  %cond = select i1 %tobool6, i32 80, i32 120
  %mul = mul nsw i32 %cond, %4
  %conv = sitofp i32 %mul to double
  %b_mb_tree = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 17
  %6 = load i32, i32* %b_mb_tree, align 4, !tbaa !84
  %tobool9 = icmp eq i32 %6, 0
  br i1 %tobool9, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.then
  %f_qcompress = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 23
  %7 = load float, float* %f_qcompress, align 4, !tbaa !85
  %conv12 = fpext float %7 to double
  %8 = fmul fast double %conv12, 1.350000e+01
  %mul13 = fsub fast double 1.350000e+01, %8
  br label %cond.end

cond.end:                                         ; preds = %if.then, %cond.true
  %cond14 = phi fast double [ %mul13, %cond.true ], [ 0.000000e+00, %if.then ]
  %qcompress = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 7
  %9 = load double, double* %qcompress, align 8, !tbaa !86
  %sub15 = fsub fast double 1.000000e+00, %9
  %10 = tail call fast double @llvm.pow.f64(double %conv, double %sub15)
  %cplxr_sum = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 28
  %11 = load double, double* %cplxr_sum, align 8, !tbaa !139
  %mul16 = fmul fast double %10, %11
  %wanted_bits_window = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 31
  %12 = load double, double* %wanted_bits_window, align 8, !tbaa !140
  %div = fdiv fast double %mul16, %12
  %conv17 = fptrunc double %div to float
  %div.i = fmul fast float %conv17, 0x3FF2D2D2C0000000
  %13 = tail call fast float @llvm.log2.f32(float %div.i) #13
  %mul.i = fmul fast float %13, 6.000000e+00
  %add.i = fadd fast float %mul.i, 1.200000e+01
  %conv18 = fpext float %add.i to double
  %sub19 = fsub fast double %conv18, %cond14
  tail call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.82, i32 0, i32 0), double %sub19) #13
  br label %if.end

if.end:                                           ; preds = %entry, %cond.end, %land.lhs.true3, %land.lhs.true
  ret void
}

; Function Attrs: nounwind
define hidden void @x264_8_ratecontrol_delete(%struct.x264_t* %h) local_unnamed_addr #0 {
entry:
  %file_stat.i136 = alloca %struct.stat, align 8
  %file_stat.i = alloca %struct.stat, align 8
  %rc1 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 71
  %0 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc1, align 64, !tbaa !65
  %p_stat_file_out = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 38
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_file_out, align 8, !tbaa !220
  %tobool = icmp eq %struct._IO_FILE* %1, null
  br i1 %tobool, label %if.end17, label %if.then

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.stat* %file_stat.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 104, i8* nonnull %2) #13
  %call.i = tail call i32 @fileno(%struct._IO_FILE* nonnull %1) #13
  %3 = bitcast %struct.stat* %file_stat.i to %struct.stat64*
  %call.i.i = call i32 @__fxstat64(i32 3, i32 %call.i, %struct.stat64* nonnull %3) #13
  %tobool.i = icmp ne i32 %call.i.i, 0
  %st_mode.i = getelementptr inbounds %struct.stat, %struct.stat* %file_stat.i, i32 0, i32 3
  %4 = load i32, i32* %st_mode.i, align 8
  %and.i = and i32 %4, 61440
  %cmp.i = icmp eq i32 %and.i, 32768
  %narrow.i = or i1 %tobool.i, %cmp.i
  call void @llvm.lifetime.end.p0i8(i64 104, i8* nonnull %2) #13
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_file_out, align 8, !tbaa !220
  %call4 = call i32 @fclose(%struct._IO_FILE* %5)
  %i_frame = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 19
  %6 = load i32, i32* %i_frame, align 4, !tbaa !228
  %num_entries = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 44
  %7 = load i32, i32* %num_entries, align 8, !tbaa !191
  %cmp = icmp sge i32 %6, %7
  %or.cond = and i1 %narrow.i, %cmp
  br i1 %or.cond, label %if.then6, label %if.end15

if.then6:                                         ; preds = %if.then
  %psz_stat_file_tmpname = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 39
  %8 = load i8*, i8** %psz_stat_file_tmpname, align 4, !tbaa !219
  %psz_stat_out = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 20
  %9 = load i8*, i8** %psz_stat_out, align 8, !tbaa !218
  %call8 = call i32 @rename(i8* %8, i8* %9) #13
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.end15, label %if.then10

if.then10:                                        ; preds = %if.then6
  %10 = load i8*, i8** %psz_stat_file_tmpname, align 4, !tbaa !219
  %11 = load i8*, i8** %psz_stat_out, align 8, !tbaa !218
  call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.83, i32 0, i32 0), i8* %10, i8* %11) #13
  br label %if.end15

if.end15:                                         ; preds = %if.then6, %if.then10, %if.then
  %psz_stat_file_tmpname16 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 39
  %12 = load i8*, i8** %psz_stat_file_tmpname16, align 4, !tbaa !219
  call void @x264_free(i8* %12) #13
  br label %if.end17

if.end17:                                         ; preds = %entry, %if.end15
  %p_mbtree_stat_file_out = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 40
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %p_mbtree_stat_file_out, align 8, !tbaa !223
  %tobool18 = icmp eq %struct._IO_FILE* %13, null
  br i1 %tobool18, label %if.end39, label %if.then19

if.then19:                                        ; preds = %if.end17
  %14 = bitcast %struct.stat* %file_stat.i136 to i8*
  call void @llvm.lifetime.start.p0i8(i64 104, i8* nonnull %14) #13
  %call.i137 = call i32 @fileno(%struct._IO_FILE* nonnull %13) #13
  %15 = bitcast %struct.stat* %file_stat.i136 to %struct.stat64*
  %call.i.i138 = call i32 @__fxstat64(i32 3, i32 %call.i137, %struct.stat64* nonnull %15) #13
  %tobool.i139 = icmp ne i32 %call.i.i138, 0
  %st_mode.i140 = getelementptr inbounds %struct.stat, %struct.stat* %file_stat.i136, i32 0, i32 3
  %16 = load i32, i32* %st_mode.i140, align 8
  %and.i141 = and i32 %16, 61440
  %cmp.i142 = icmp eq i32 %and.i141, 32768
  %narrow.i143 = or i1 %tobool.i139, %cmp.i142
  call void @llvm.lifetime.end.p0i8(i64 104, i8* nonnull %14) #13
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %p_mbtree_stat_file_out, align 8, !tbaa !223
  %call23 = call i32 @fclose(%struct._IO_FILE* %17)
  %i_frame24 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 19
  %18 = load i32, i32* %i_frame24, align 4, !tbaa !228
  %num_entries25 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 44
  %19 = load i32, i32* %num_entries25, align 8, !tbaa !191
  %cmp26 = icmp sge i32 %18, %19
  %or.cond80 = and i1 %narrow.i143, %cmp26
  br i1 %or.cond80, label %if.then29, label %if.end36

if.then29:                                        ; preds = %if.then19
  %psz_mbtree_stat_file_tmpname = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 41
  %20 = load i8*, i8** %psz_mbtree_stat_file_tmpname, align 4, !tbaa !221
  %psz_mbtree_stat_file_name = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 42
  %21 = load i8*, i8** %psz_mbtree_stat_file_name, align 8, !tbaa !222
  %call30 = call i32 @rename(i8* %20, i8* %21) #13
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %if.end36, label %if.then32

if.then32:                                        ; preds = %if.then29
  %22 = load i8*, i8** %psz_mbtree_stat_file_tmpname, align 4, !tbaa !221
  %23 = load i8*, i8** %psz_mbtree_stat_file_name, align 8, !tbaa !222
  call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.83, i32 0, i32 0), i8* %22, i8* %23) #13
  br label %if.end36

if.end36:                                         ; preds = %if.then29, %if.then32, %if.then19
  %psz_mbtree_stat_file_tmpname37 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 41
  %24 = load i8*, i8** %psz_mbtree_stat_file_tmpname37, align 4, !tbaa !221
  call void @x264_free(i8* %24) #13
  %psz_mbtree_stat_file_name38 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 42
  %25 = load i8*, i8** %psz_mbtree_stat_file_name38, align 8, !tbaa !222
  call void @x264_free(i8* %25) #13
  br label %if.end39

if.end39:                                         ; preds = %if.end17, %if.end36
  %p_mbtree_stat_file_in = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 43
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %p_mbtree_stat_file_in, align 4, !tbaa !75
  %tobool40 = icmp eq %struct._IO_FILE* %26, null
  br i1 %tobool40, label %if.end44, label %if.then41

if.then41:                                        ; preds = %if.end39
  %call43 = call i32 @fclose(%struct._IO_FILE* nonnull %26)
  br label %if.end44

if.end44:                                         ; preds = %if.end39, %if.then41
  %pred = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 23
  %27 = bitcast %struct.predictor_t** %pred to i8**
  %28 = load i8*, i8** %27, align 8, !tbaa !150
  call void @x264_free(i8* %28) #13
  %pred_b_from_p = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 63
  %29 = bitcast %struct.predictor_t** %pred_b_from_p to i8**
  %30 = load i8*, i8** %29, align 4, !tbaa !151
  call void @x264_free(i8* %30) #13
  %entry45 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 45
  %31 = bitcast %struct.ratecontrol_entry_t** %entry45 to i8**
  %32 = load i8*, i8** %31, align 4, !tbaa !66
  call void @x264_free(i8* %32) #13
  %entry_out = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 46
  %33 = bitcast %struct.ratecontrol_entry_t*** %entry_out to i8**
  %34 = load i8*, i8** %33, align 8, !tbaa !193
  call void @x264_free(i8* %34) #13
  %arrayidx.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 56, i32 0, i32 0
  %35 = bitcast i16** %arrayidx.i to i8**
  %36 = load i8*, i8** %35, align 4, !tbaa !59
  call void @x264_free(i8* %36) #13
  %arrayidx2.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 56, i32 4, i32 0
  %37 = bitcast float** %arrayidx2.i to i8**
  %38 = load i8*, i8** %37, align 4, !tbaa !59
  call void @x264_free(i8* %38) #13
  %arrayidx4.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 56, i32 6, i32 0
  %39 = bitcast float** %arrayidx4.i to i8**
  %40 = load i8*, i8** %39, align 4, !tbaa !59
  call void @x264_free(i8* %40) #13
  %arrayidx6.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 56, i32 7, i32 0
  %41 = bitcast i32** %arrayidx6.i to i8**
  %42 = load i8*, i8** %41, align 4, !tbaa !59
  call void @x264_free(i8* %42) #13
  %arrayidx.1.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 56, i32 0, i32 1
  %43 = bitcast i16** %arrayidx.1.i to i8**
  %44 = load i8*, i8** %43, align 4, !tbaa !59
  call void @x264_free(i8* %44) #13
  %arrayidx2.1.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 56, i32 4, i32 1
  %45 = bitcast float** %arrayidx2.1.i to i8**
  %46 = load i8*, i8** %45, align 4, !tbaa !59
  call void @x264_free(i8* %46) #13
  %arrayidx4.1.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 56, i32 6, i32 1
  %47 = bitcast float** %arrayidx4.1.i to i8**
  %48 = load i8*, i8** %47, align 4, !tbaa !59
  call void @x264_free(i8* %48) #13
  %arrayidx6.1.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 56, i32 7, i32 1
  %49 = bitcast i32** %arrayidx6.1.i to i8**
  %50 = load i8*, i8** %49, align 4, !tbaa !59
  call void @x264_free(i8* %50) #13
  %zones = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 67
  %51 = load %struct.x264_zone_t*, %struct.x264_zone_t** %zones, align 4, !tbaa !172
  %tobool46 = icmp eq %struct.x264_zone_t* %51, null
  br i1 %tobool46, label %if.end79, label %if.then47

if.then47:                                        ; preds = %if.end44
  %param49 = getelementptr inbounds %struct.x264_zone_t, %struct.x264_zone_t* %51, i32 0, i32 5
  %52 = load %struct.x264_param_t*, %struct.x264_param_t** %param49, align 4, !tbaa !164
  call void @x264_param_cleanup(%struct.x264_param_t* %52) #13
  %53 = load %struct.x264_zone_t*, %struct.x264_zone_t** %zones, align 4, !tbaa !172
  %param52 = getelementptr inbounds %struct.x264_zone_t, %struct.x264_zone_t* %53, i32 0, i32 5
  %54 = bitcast %struct.x264_param_t** %param52 to i8**
  %55 = load i8*, i8** %54, align 4, !tbaa !164
  call void @x264_free(i8* %55) #13
  %i_zones = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 66
  %56 = load i32, i32* %i_zones, align 8, !tbaa !171
  %cmp53145 = icmp sgt i32 %56, 1
  br i1 %cmp53145, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.inc, %if.then47
  %57 = bitcast %struct.x264_zone_t** %zones to i8**
  %58 = load i8*, i8** %57, align 4, !tbaa !172
  call void @x264_free(i8* %58) #13
  br label %if.end79

for.body:                                         ; preds = %if.then47, %for.inc
  %59 = phi i32 [ %68, %for.inc ], [ %56, %if.then47 ]
  %i.0146 = phi i32 [ %inc, %for.inc ], [ 1, %if.then47 ]
  %60 = load %struct.x264_zone_t*, %struct.x264_zone_t** %zones, align 4, !tbaa !172
  %param56 = getelementptr inbounds %struct.x264_zone_t, %struct.x264_zone_t* %60, i32 %i.0146, i32 5
  %61 = load %struct.x264_param_t*, %struct.x264_param_t** %param56, align 4, !tbaa !164
  %param59 = getelementptr inbounds %struct.x264_zone_t, %struct.x264_zone_t* %60, i32 0, i32 5
  %62 = load %struct.x264_param_t*, %struct.x264_param_t** %param59, align 4, !tbaa !164
  %cmp60 = icmp eq %struct.x264_param_t* %61, %62
  br i1 %cmp60, label %for.inc, label %land.lhs.true61

land.lhs.true61:                                  ; preds = %for.body
  %param_free = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %61, i32 0, i32 81
  %63 = load void (i8*)*, void (i8*)** %param_free, align 4, !tbaa !169
  %tobool65 = icmp eq void (i8*)* %63, null
  br i1 %tobool65, label %for.inc, label %if.then66

if.then66:                                        ; preds = %land.lhs.true61
  call void @x264_param_cleanup(%struct.x264_param_t* nonnull %61) #13
  %64 = load %struct.x264_zone_t*, %struct.x264_zone_t** %zones, align 4, !tbaa !172
  %param72 = getelementptr inbounds %struct.x264_zone_t, %struct.x264_zone_t* %64, i32 %i.0146, i32 5
  %65 = load %struct.x264_param_t*, %struct.x264_param_t** %param72, align 4, !tbaa !164
  %param_free73 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %65, i32 0, i32 81
  %66 = load void (i8*)*, void (i8*)** %param_free73, align 4, !tbaa !169
  %67 = bitcast %struct.x264_param_t* %65 to i8*
  call void %66(i8* %67) #13
  %.pre = load i32, i32* %i_zones, align 8, !tbaa !171
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true61, %for.body, %if.then66
  %68 = phi i32 [ %59, %land.lhs.true61 ], [ %59, %for.body ], [ %.pre, %if.then66 ]
  %inc = add nuw nsw i32 %i.0146, 1
  %cmp53 = icmp slt i32 %inc, %68
  br i1 %cmp53, label %for.body, label %for.cond.cleanup

if.end79:                                         ; preds = %if.end44, %for.cond.cleanup
  %69 = bitcast %struct.x264_ratecontrol_t* %0 to i8*
  call void @x264_free(i8* %69) #13
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local i32 @rename(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #4

declare dso_local void @x264_param_cleanup(%struct.x264_param_t*) local_unnamed_addr #5

; Function Attrs: nounwind
define hidden void @x264_8_ratecontrol_zone_init(%struct.x264_t* %h) local_unnamed_addr #0 {
entry:
  %rc1 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 71
  %0 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc1, align 64, !tbaa !65
  %fenc = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 60
  %1 = load %struct.x264_frame*, %struct.x264_frame** %fenc, align 8, !tbaa !80
  %i_frame = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %1, i32 0, i32 15
  %2 = load i32, i32* %i_frame, align 4, !tbaa !69
  %i_zones.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 66
  %3 = load i32, i32* %i_zones.i, align 8, !tbaa !171
  %cmp8.i = icmp sgt i32 %3, 0
  br i1 %cmp8.i, label %for.body.lr.ph.i, label %if.end

for.body.lr.ph.i:                                 ; preds = %entry
  %zones.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 67
  %4 = load %struct.x264_zone_t*, %struct.x264_zone_t** %zones.i, align 4, !tbaa !172
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i, %for.body.lr.ph.i
  %i.09.in.i = phi i32 [ %3, %for.body.lr.ph.i ], [ %i.09.i, %cleanup.i ]
  %i.09.i = add nsw i32 %i.09.in.i, -1
  %arrayidx.i = getelementptr inbounds %struct.x264_zone_t, %struct.x264_zone_t* %4, i32 %i.09.i
  %i_start.i = getelementptr inbounds %struct.x264_zone_t, %struct.x264_zone_t* %arrayidx.i, i32 0, i32 0
  %5 = load i32, i32* %i_start.i, align 4, !tbaa !173
  %cmp2.i = icmp sgt i32 %5, %2
  br i1 %cmp2.i, label %cleanup.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %i_end.i = getelementptr inbounds %struct.x264_zone_t, %struct.x264_zone_t* %4, i32 %i.09.i, i32 1
  %6 = load i32, i32* %i_end.i, align 4, !tbaa !174
  %cmp3.i = icmp slt i32 %6, %2
  br i1 %cmp3.i, label %cleanup.i, label %land.lhs.true

cleanup.i:                                        ; preds = %land.lhs.true.i, %for.body.i
  %cmp.i = icmp sgt i32 %i.09.in.i, 1
  br i1 %cmp.i, label %for.body.i, label %if.end

land.lhs.true:                                    ; preds = %land.lhs.true.i
  %prev_zone = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 68
  %7 = load %struct.x264_zone_t*, %struct.x264_zone_t** %prev_zone, align 8, !tbaa !229
  %tobool2 = icmp eq %struct.x264_zone_t* %7, null
  %param5.phi.trans.insert = getelementptr inbounds %struct.x264_zone_t, %struct.x264_zone_t* %4, i32 %i.09.i, i32 5
  %.pre = load %struct.x264_param_t*, %struct.x264_param_t** %param5.phi.trans.insert, align 4, !tbaa !164
  br i1 %tobool2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %param4 = getelementptr inbounds %struct.x264_zone_t, %struct.x264_zone_t* %7, i32 0, i32 5
  %8 = load %struct.x264_param_t*, %struct.x264_param_t** %param4, align 4, !tbaa !164
  %cmp = icmp eq %struct.x264_param_t* %.pre, %8
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %call6 = tail call i32 @x264_8_encoder_reconfig_apply(%struct.x264_t* %h, %struct.x264_param_t* %.pre) #13
  br label %if.end

if.end:                                           ; preds = %cleanup.i, %entry, %lor.lhs.false, %if.then
  %9 = phi %struct.x264_zone_t* [ %arrayidx.i, %lor.lhs.false ], [ %arrayidx.i, %if.then ], [ null, %entry ], [ null, %cleanup.i ]
  %prev_zone7 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 68
  store %struct.x264_zone_t* %9, %struct.x264_zone_t** %prev_zone7, align 8, !tbaa !229
  ret void
}

declare dso_local i32 @x264_8_encoder_reconfig_apply(%struct.x264_t*, %struct.x264_param_t*) local_unnamed_addr #5

; Function Attrs: nounwind
define hidden void @x264_8_ratecontrol_start(%struct.x264_t* %h, i32 %i_force_qp, i32 %overhead) local_unnamed_addr #0 {
entry:
  %rc1 = getelementptr %struct.x264_t, %struct.x264_t* %h, i32 0, i32 71
  %0 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc1, align 64, !tbaa !65
  %fenc = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 60
  %1 = load %struct.x264_frame*, %struct.x264_frame** %fenc, align 8, !tbaa !80
  %i_frame = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %1, i32 0, i32 15
  %2 = load i32, i32* %i_frame, align 4, !tbaa !69
  %i_zones.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 66
  %3 = load i32, i32* %i_zones.i, align 8, !tbaa !171
  %cmp8.i = icmp sgt i32 %3, 0
  br i1 %cmp8.i, label %for.body.lr.ph.i, label %get_zone.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %zones.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 67
  %4 = load %struct.x264_zone_t*, %struct.x264_zone_t** %zones.i, align 4, !tbaa !172
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i, %for.body.lr.ph.i
  %i.09.in.i = phi i32 [ %3, %for.body.lr.ph.i ], [ %i.09.i, %cleanup.i ]
  %i.09.i = add nsw i32 %i.09.in.i, -1
  %arrayidx.i = getelementptr inbounds %struct.x264_zone_t, %struct.x264_zone_t* %4, i32 %i.09.i
  %i_start.i = getelementptr inbounds %struct.x264_zone_t, %struct.x264_zone_t* %arrayidx.i, i32 0, i32 0
  %5 = load i32, i32* %i_start.i, align 4, !tbaa !173
  %cmp2.i = icmp sgt i32 %5, %2
  br i1 %cmp2.i, label %cleanup.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %i_end.i = getelementptr inbounds %struct.x264_zone_t, %struct.x264_zone_t* %4, i32 %i.09.i, i32 1
  %6 = load i32, i32* %i_end.i, align 4, !tbaa !174
  %cmp3.i = icmp slt i32 %6, %2
  br i1 %cmp3.i, label %cleanup.i, label %get_zone.exit

cleanup.i:                                        ; preds = %land.lhs.true.i, %for.body.i
  %cmp.i = icmp sgt i32 %i.09.in.i, 1
  br i1 %cmp.i, label %for.body.i, label %get_zone.exit

get_zone.exit:                                    ; preds = %land.lhs.true.i, %cleanup.i, %entry
  %7 = phi %struct.x264_zone_t* [ null, %entry ], [ %arrayidx.i, %land.lhs.true.i ], [ null, %cleanup.i ]
  %b_stat_read = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 21
  %8 = load i32, i32* %b_stat_read, align 4, !tbaa !127
  %tobool = icmp eq i32 %8, 0
  br i1 %tobool, label %if.end26, label %if.then

if.then:                                          ; preds = %get_zone.exit
  %cmp = icmp sgt i32 %2, -1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %num_entries = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 44
  %9 = load i32, i32* %num_entries, align 8, !tbaa !191
  %cmp5 = icmp slt i32 %2, %9
  br i1 %cmp5, label %if.end, label %if.else

if.else:                                          ; preds = %land.lhs.true, %if.then
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i32 0, i32 0), i32 1443, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.x264_8_ratecontrol_start, i32 0, i32 0)) #15
  unreachable

if.end:                                           ; preds = %land.lhs.true
  %entry7 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 45
  %10 = load %struct.ratecontrol_entry_t*, %struct.ratecontrol_entry_t** %entry7, align 4, !tbaa !66
  %arrayidx = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %10, i32 %2
  %rce8 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 10
  store %struct.ratecontrol_entry_t* %arrayidx, %struct.ratecontrol_entry_t** %rce8, align 8, !tbaa !78
  %i_type = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 51, i32 2
  %11 = load i32, i32* %i_type, align 8, !tbaa !230
  %cmp9 = icmp eq i32 %11, 1
  br i1 %cmp9, label %land.lhs.true10, label %if.end26

land.lhs.true10:                                  ; preds = %if.end
  %i_direct_mv_pred = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 51, i32 5
  %12 = load i32, i32* %i_direct_mv_pred, align 4, !tbaa !187
  %cmp12 = icmp eq i32 %12, 3
  br i1 %cmp12, label %if.then13, label %if.end26

if.then13:                                        ; preds = %land.lhs.true10
  %direct_mode = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %10, i32 %2, i32 15
  %13 = load i8, i8* %direct_mode, align 4, !tbaa !198
  %cmp14 = icmp eq i8 %13, 115
  %conv15 = zext i1 %cmp14 to i32
  %b_direct_spatial_mv_pred = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 51, i32 15
  store i32 %conv15, i32* %b_direct_spatial_mv_pred, align 16, !tbaa !231
  %14 = add i8 %13, -115
  %15 = icmp ult i8 %14, 2
  %lor.ext = zext i1 %15 to i32
  %b_direct_auto_read = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 99
  store i32 %lor.ext, i32* %b_direct_auto_read, align 8, !tbaa !232
  br label %if.end26

if.end26:                                         ; preds = %if.end, %land.lhs.true10, %if.then13, %get_zone.exit
  %rce.0 = phi %struct.ratecontrol_entry_t* [ null, %get_zone.exit ], [ %arrayidx, %if.then13 ], [ %arrayidx, %land.lhs.true10 ], [ %arrayidx, %if.end ]
  %b_vbv = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 2
  %16 = load i32, i32* %b_vbv, align 8, !tbaa !125
  %tobool27 = icmp eq i32 %16, 0
  br i1 %tobool27, label %if.end26.if.end124_crit_edge, label %if.then28

if.end26.if.end124_crit_edge:                     ; preds = %if.end26
  %i_type126.phi.trans.insert = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 51, i32 2
  %.pre = load i32, i32* %i_type126.phi.trans.insert, align 8, !tbaa !230
  br label %if.end124

if.then28:                                        ; preds = %if.end26
  %fdec = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 61
  %17 = load %struct.x264_frame*, %struct.x264_frame** %fdec, align 4, !tbaa !233
  %i_row_bits = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %17, i32 0, i32 70
  %18 = bitcast i32** %i_row_bits to i8**
  %19 = load i8*, i8** %18, align 8, !tbaa !234
  %i_mb_height = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 1
  %20 = load i32, i32* %i_mb_height, align 4, !tbaa !50
  %mul = shl i32 %20, 2
  tail call void @llvm.memset.p0i8.i32(i8* align 4 %19, i8 0, i32 %mul, i1 false)
  %21 = load %struct.x264_frame*, %struct.x264_frame** %fdec, align 4, !tbaa !233
  %f_row_qp = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %21, i32 0, i32 71
  %22 = bitcast float** %f_row_qp to i8**
  %23 = load i8*, i8** %22, align 4, !tbaa !235
  %24 = load i32, i32* %i_mb_height, align 4, !tbaa !50
  %mul33 = shl i32 %24, 2
  tail call void @llvm.memset.p0i8.i32(i8* align 4 %23, i8 0, i32 %mul33, i1 false)
  %25 = load %struct.x264_frame*, %struct.x264_frame** %fdec, align 4, !tbaa !233
  %f_row_qscale = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %25, i32 0, i32 72
  %26 = bitcast float** %f_row_qscale to i8**
  %27 = load i8*, i8** %26, align 16, !tbaa !236
  %28 = load i32, i32* %i_mb_height, align 4, !tbaa !50
  %mul37 = shl i32 %28, 2
  tail call void @llvm.memset.p0i8.i32(i8* align 4 %27, i8 0, i32 %mul37, i1 false)
  %i_type39 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 51, i32 2
  %29 = load i32, i32* %i_type39, align 8, !tbaa !230
  %arraydecay = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 62, i32 %29, i32 0
  %row_pred = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 61
  store %struct.predictor_t* %arraydecay, %struct.predictor_t** %row_pred, align 8, !tbaa !237
  %30 = load %struct.x264_frame*, %struct.x264_frame** %fenc, align 8, !tbaa !80
  %i_cpb_duration = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %30, i32 0, i32 11
  %31 = load i64, i64* %i_cpb_duration, align 8, !tbaa !238
  %conv42 = sitofp i64 %31 to double
  %vbv_max_rate = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 22
  %32 = load double, double* %vbv_max_rate, align 8, !tbaa !115
  %i_num_units_in_tick = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 20, i32 16
  %33 = load i32, i32* %i_num_units_in_tick, align 4, !tbaa !108
  %conv45 = uitofp i32 %33 to double
  %mul43 = fmul fast double %conv45, %conv42
  %mul46 = fmul fast double %mul43, %32
  %i_time_scale = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 20, i32 17
  %34 = load i32, i32* %i_time_scale, align 4, !tbaa !107
  %conv50 = uitofp i32 %34 to double
  %div = fdiv fast double %mul46, %conv50
  %buffer_rate = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 21
  store double %div, double* %buffer_rate, align 8, !tbaa !114
  %35 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc1, align 64, !tbaa !65
  %arrayidx.i316 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 2, i32 0
  %36 = load %struct.x264_t*, %struct.x264_t** %arrayidx.i316, align 4, !tbaa !59
  %rc1.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %36, i32 0, i32 71
  %37 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc1.i, align 64, !tbaa !65
  %buffer_fill_final_min.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %37, i32 0, i32 19
  %38 = load i64, i64* %buffer_fill_final_min.i, align 8, !tbaa !123
  %conv.i317 = zext i32 %34 to i64
  %div.i318 = sdiv i64 %38, %conv.i317
  %conv2.i = sitofp i64 %div.i318 to double
  %buffer_fill.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %35, i32 0, i32 20
  store double %conv2.i, double* %buffer_fill.i, align 8, !tbaa !239
  %i_thread_frames.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 21
  %39 = load i32, i32* %i_thread_frames.i, align 4, !tbaa !240
  %cmp.i319 = icmp sgt i32 %39, 1
  br i1 %cmp.i319, label %if.then.i320, label %update_vbv_plan.exit

if.then.i320:                                     ; preds = %if.then28
  %40 = ptrtoint %struct.x264_ratecontrol_t* %37 to i32
  %sub.ptr.lhs.cast.i = ptrtoint %struct.x264_ratecontrol_t* %35 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %40
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 680
  %buffer_size.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %35, i32 0, i32 17
  br label %for.body.i322

for.body.i322:                                    ; preds = %cleanup.i324, %if.then.i320
  %41 = phi double [ %conv2.i, %if.then.i320 ], [ %52, %cleanup.i324 ]
  %i.0103.i = phi i32 [ 1, %if.then.i320 ], [ %inc.i, %cleanup.i324 ]
  %add.i321 = add nsw i32 %i.0103.i, %sub.ptr.div.i
  %rem.i = srem i32 %add.i321, %39
  %arrayidx12.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 2, i32 %rem.i
  %42 = load %struct.x264_t*, %struct.x264_t** %arrayidx12.i, align 4, !tbaa !59
  %rc13.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %42, i32 0, i32 71
  %43 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc13.i, align 64, !tbaa !65
  %frame_size_planned.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %43, i32 0, i32 59
  %44 = load double, double* %frame_size_planned.i, align 8, !tbaa !241
  %b_thread_active.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %42, i32 0, i32 4
  %45 = load i32, i32* %b_thread_active.i, align 8, !tbaa !242
  %tobool.i = icmp eq i32 %45, 0
  br i1 %tobool.i, label %cleanup.i324, label %if.end.i

if.end.i:                                         ; preds = %for.body.i322
  %frame_size_estimated.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %43, i32 0, i32 57
  %46 = load volatile float, float* %frame_size_estimated.i, align 4, !tbaa !243
  %conv16.i = fpext float %46 to double
  %cmp17.i = fcmp fast ogt double %44, %conv16.i
  br i1 %cmp17.i, label %cond.end.i, label %cond.false.i

cond.false.i:                                     ; preds = %if.end.i
  %47 = load volatile float, float* %frame_size_estimated.i, align 4, !tbaa !243
  %conv21.i = fpext float %47 to double
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end.i
  %cond.i323 = phi fast double [ %conv21.i, %cond.false.i ], [ %44, %if.end.i ]
  %sub.i = fsub fast double %41, %cond.i323
  %48 = tail call fast double @llvm.maxnum.f64(double %sub.i, double 0.000000e+00) #13
  %buffer_rate.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %43, i32 0, i32 21
  %49 = load double, double* %buffer_rate.i, align 8, !tbaa !114
  %add34.i = fadd fast double %48, %49
  %50 = load double, double* %buffer_size.i, align 8, !tbaa !116
  %51 = tail call fast double @llvm.minnum.f64(double %add34.i, double %50) #13
  store double %51, double* %buffer_fill.i, align 8, !tbaa !239
  br label %cleanup.i324

cleanup.i324:                                     ; preds = %cond.end.i, %for.body.i322
  %52 = phi double [ %41, %for.body.i322 ], [ %51, %cond.end.i ]
  %inc.i = add nuw nsw i32 %i.0103.i, 1
  %exitcond.i = icmp eq i32 %inc.i, %39
  br i1 %exitcond.i, label %update_vbv_plan.exit, label %for.body.i322

update_vbv_plan.exit:                             ; preds = %cleanup.i324, %if.then28
  %53 = phi double [ %conv2.i, %if.then28 ], [ %52, %cleanup.i324 ]
  %buffer_size49.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %35, i32 0, i32 17
  %54 = load double, double* %buffer_size49.i, align 8, !tbaa !116
  %55 = tail call fast double @llvm.minnum.f64(double %53, double %54) #13
  %conv59.i = sitofp i32 %overhead to double
  %sub61.i = fsub fast double %55, %conv59.i
  store double %sub61.i, double* %buffer_fill.i, align 8, !tbaa !239
  %56 = load i8, i8* getelementptr inbounds ([0 x %struct.x264_level_t], [0 x %struct.x264_level_t]* @x264_levels, i32 0, i32 0, i32 0), align 4, !tbaa !244
  %cmp52328 = icmp eq i8 %56, 0
  br i1 %cmp52328, label %while.end, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %update_vbv_plan.exit
  %i_level_idc = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 11
  %57 = load i32, i32* %i_level_idc, align 4, !tbaa !246
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %while.body
  %58 = phi i8 [ %56, %land.rhs.lr.ph ], [ %59, %while.body ]
  %l.0329 = phi %struct.x264_level_t* [ getelementptr inbounds ([0 x %struct.x264_level_t], [0 x %struct.x264_level_t]* @x264_levels, i32 0, i32 0), %land.rhs.lr.ph ], [ %incdec.ptr, %while.body ]
  %conv51 = zext i8 %58 to i32
  %cmp57 = icmp eq i32 %57, %conv51
  br i1 %cmp57, label %while.end, label %while.body

while.body:                                       ; preds = %land.rhs
  %incdec.ptr = getelementptr inbounds %struct.x264_level_t, %struct.x264_level_t* %l.0329, i32 1
  %level_idc = getelementptr inbounds %struct.x264_level_t, %struct.x264_level_t* %incdec.ptr, i32 0, i32 0
  %59 = load i8, i8* %level_idc, align 4, !tbaa !244
  %cmp52 = icmp eq i8 %59, 0
  br i1 %cmp52, label %while.end, label %land.rhs

while.end:                                        ; preds = %while.body, %land.rhs, %update_vbv_plan.exit
  %l.0.lcssa = phi %struct.x264_level_t* [ getelementptr inbounds ([0 x %struct.x264_level_t], [0 x %struct.x264_level_t]* @x264_levels, i32 0, i32 0), %update_vbv_plan.exit ], [ %l.0329, %land.rhs ], [ %incdec.ptr, %while.body ]
  %mincr59 = getelementptr inbounds %struct.x264_level_t, %struct.x264_level_t* %l.0.lcssa, i32 0, i32 9
  %60 = load i8, i8* %mincr59, align 4, !tbaa !247
  %conv60 = zext i8 %60 to i32
  %b_bluray_compat = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 26
  %61 = load i32, i32* %b_bluray_compat, align 8, !tbaa !183
  %tobool62 = icmp eq i32 %61, 0
  %spec.store.select = select i1 %tobool62, i32 %conv60, i32 4
  %i_profile_idc = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 1
  %62 = load i32, i32* %i_profile_idc, align 4, !tbaa !248
  %cmp67 = icmp sgt i32 %62, 100
  br i1 %cmp67, label %if.then69, label %if.else70

if.then69:                                        ; preds = %while.end
  %frame_size_maximum = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 58
  store double 1.000000e+09, double* %frame_size_maximum, align 8, !tbaa !249
  br label %if.end124

if.else70:                                        ; preds = %while.end
  %i_frame71 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 19
  %63 = load i32, i32* %i_frame71, align 4, !tbaa !228
  %cmp72 = icmp eq i32 %63, 0
  br i1 %cmp72, label %if.then74, label %if.else99

if.then74:                                        ; preds = %if.else70
  %i_level_idc76 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 11
  %64 = load i32, i32* %i_level_idc76, align 4, !tbaa !246
  %cmp77 = icmp sgt i32 %64, 59
  %cond = select i1 %cmp77, i32 300, i32 172
  %conv79 = sitofp i32 %cond to double
  %i_mb_width = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 0
  %65 = load i32, i32* %i_mb_width, align 64, !tbaa !51
  %66 = load i32, i32* %i_mb_height, align 4, !tbaa !50
  %mul84 = mul nsw i32 %66, %65
  %conv85 = sitofp i32 %mul84 to double
  %mbps = getelementptr inbounds %struct.x264_level_t, %struct.x264_level_t* %l.0.lcssa, i32 0, i32 1
  %67 = load i32, i32* %mbps, align 4, !tbaa !250
  %conv86 = sitofp i32 %67 to double
  %mul87 = fdiv fast double %conv86, %conv79
  %cmp88 = fcmp fast olt double %mul87, %conv85
  %conv85.mul87 = select fast i1 %cmp88, double %conv85, double %mul87
  %mul95 = fmul fast double %conv85.mul87, 3.072000e+03
  %conv96 = sitofp i32 %spec.store.select to double
  %div97 = fdiv fast double %mul95, %conv96
  %frame_size_maximum98 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 58
  store double %div97, double* %frame_size_maximum98, align 8, !tbaa !249
  br label %if.end124

if.else99:                                        ; preds = %if.else70
  %68 = fmul fast double %mul43, 3.072000e+03
  %mbps116 = getelementptr inbounds %struct.x264_level_t, %struct.x264_level_t* %l.0.lcssa, i32 0, i32 1
  %69 = load i32, i32* %mbps116, align 4, !tbaa !250
  %conv117 = sitofp i32 %69 to double
  %70 = fmul fast double %68, %conv117
  %conv119 = sitofp i32 %spec.store.select to double
  %71 = fmul fast double %conv119, %conv50
  %div120 = fdiv fast double %70, %71
  %frame_size_maximum121 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 58
  store double %div120, double* %frame_size_maximum121, align 8, !tbaa !249
  br label %if.end124

if.end124:                                        ; preds = %if.end26.if.end124_crit_edge, %if.then69, %if.else99, %if.then74
  %72 = phi %struct.x264_frame* [ %1, %if.end26.if.end124_crit_edge ], [ %30, %if.then69 ], [ %30, %if.else99 ], [ %30, %if.then74 ]
  %73 = phi i32 [ %.pre, %if.end26.if.end124_crit_edge ], [ %29, %if.then69 ], [ %29, %if.else99 ], [ %29, %if.then74 ]
  %i_type126 = getelementptr %struct.x264_t, %struct.x264_t* %h, i32 0, i32 51, i32 2
  %cmp127 = icmp eq i32 %73, 1
  br i1 %cmp127, label %if.end132, label %if.then129

if.then129:                                       ; preds = %if.end124
  %i_bframes = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %72, i32 0, i32 24
  %74 = load i8, i8* %i_bframes, align 2, !tbaa !251
  %conv131 = zext i8 %74 to i32
  %bframes = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 64
  store i32 %conv131, i32* %bframes, align 8, !tbaa !252
  br label %if.end132

if.end132:                                        ; preds = %if.end124, %if.then129
  %b_abr = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 0
  %75 = load i32, i32* %b_abr, align 8, !tbaa !118
  %tobool133 = icmp eq i32 %75, 0
  br i1 %tobool133, label %if.else137, label %if.then134

if.then134:                                       ; preds = %if.end132
  %call135 = tail call fast fastcc float @rate_estimate_qscale(%struct.x264_t* nonnull %h)
  %div.i325 = fmul fast float %call135, 0x3FF2D2D2C0000000
  %76 = tail call fast float @llvm.log2.f32(float %div.i325) #13
  %mul.i326 = fmul fast float %76, 6.000000e+00
  %add.i327 = fadd fast float %mul.i326, 1.200000e+01
  br label %if.end180

if.else137:                                       ; preds = %if.end132
  %b_2pass = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 1
  %77 = load i32, i32* %b_2pass, align 4, !tbaa !81
  %tobool138 = icmp eq i32 %77, 0
  br i1 %tobool138, label %if.else145, label %if.then139

if.then139:                                       ; preds = %if.else137
  %call140 = tail call fast fastcc float @rate_estimate_qscale(%struct.x264_t* nonnull %h)
  %conv141 = fpext float %call140 to double
  %new_qscale = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %rce.0, i32 0, i32 9
  store double %conv141, double* %new_qscale, align 8, !tbaa !194
  %div.i = fmul fast float %call140, 0x3FF2D2D2C0000000
  %78 = tail call fast float @llvm.log2.f32(float %div.i) #13
  %mul.i314 = fmul fast float %78, 6.000000e+00
  %add.i315 = fadd fast float %mul.i314, 1.200000e+01
  br label %if.end180

if.else145:                                       ; preds = %if.else137
  br i1 %cmp127, label %land.lhs.true150, label %if.else159

land.lhs.true150:                                 ; preds = %if.else145
  %fdec151 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 61
  %79 = load %struct.x264_frame*, %struct.x264_frame** %fdec151, align 4, !tbaa !233
  %b_kept_as_ref = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %79, i32 0, i32 19
  %80 = load i32, i32* %b_kept_as_ref, align 4, !tbaa !253
  %tobool152 = icmp eq i32 %80, 0
  br i1 %tobool152, label %if.else159, label %if.then153

if.then153:                                       ; preds = %land.lhs.true150
  %arrayidx154 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 9, i32 1
  %81 = load i32, i32* %arrayidx154, align 4, !tbaa !55
  %arrayidx156 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 9, i32 0
  %82 = load i32, i32* %arrayidx156, align 4, !tbaa !55
  %add = add nsw i32 %82, %81
  %div157 = sdiv i32 %add, 2
  br label %if.end165

if.else159:                                       ; preds = %land.lhs.true150, %if.else145
  %arrayidx163 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 9, i32 %73
  %83 = load i32, i32* %arrayidx163, align 4, !tbaa !55
  br label %if.end165

if.end165:                                        ; preds = %if.else159, %if.then153
  %q.0.in = phi i32 [ %div157, %if.then153 ], [ %83, %if.else159 ]
  %q.0 = sitofp i32 %q.0.in to float
  %tobool166 = icmp eq %struct.x264_zone_t* %7, null
  br i1 %tobool166, label %if.end180, label %if.then167

if.then167:                                       ; preds = %if.end165
  %b_force_qp = getelementptr inbounds %struct.x264_zone_t, %struct.x264_zone_t* %7, i32 0, i32 2
  %84 = load i32, i32* %b_force_qp, align 4, !tbaa !167
  %tobool168 = icmp eq i32 %84, 0
  br i1 %tobool168, label %if.else174, label %if.then169

if.then169:                                       ; preds = %if.then167
  %i_qp = getelementptr inbounds %struct.x264_zone_t, %struct.x264_zone_t* %7, i32 0, i32 3
  %85 = load i32, i32* %i_qp, align 4, !tbaa !214
  %arrayidx171 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 9, i32 0
  %86 = load i32, i32* %arrayidx171, align 4, !tbaa !55
  %sub = sub nsw i32 %85, %86
  %conv172 = sitofp i32 %sub to float
  %add173 = fadd fast float %conv172, %q.0
  br label %if.end180

if.else174:                                       ; preds = %if.then167
  %f_bitrate_factor = getelementptr inbounds %struct.x264_zone_t, %struct.x264_zone_t* %7, i32 0, i32 4
  %87 = load float, float* %f_bitrate_factor, align 4, !tbaa !166
  %88 = tail call fast float @llvm.log2.f32(float %87)
  %mul175 = fmul fast float %88, 6.000000e+00
  %sub176 = fsub fast float %q.0, %mul175
  br label %if.end180

if.end180:                                        ; preds = %if.end165, %if.then139, %if.then169, %if.else174, %if.then134
  %q.1 = phi float [ %add.i327, %if.then134 ], [ %add.i315, %if.then139 ], [ %add173, %if.then169 ], [ %sub176, %if.else174 ], [ %q.0, %if.end165 ]
  %cmp181 = icmp eq i32 %i_force_qp, 0
  %sub184 = add nsw i32 %i_force_qp, -1
  %conv185 = sitofp i32 %sub184 to float
  %q.2 = select i1 %cmp181, float %q.1, float %conv185
  %conv187 = fpext float %q.2 to double
  %i_qp_min = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 2
  %89 = load i32, i32* %i_qp_min, align 8, !tbaa !152
  %conv190 = sitofp i32 %89 to double
  %i_qp_max = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 3
  %90 = load i32, i32* %i_qp_max, align 4, !tbaa !153
  %conv193 = sitofp i32 %90 to double
  %cmp.i313 = fcmp fast olt double %conv187, %conv190
  %cmp1.i = fcmp fast ogt double %conv187, %conv193
  %cond.i = select fast i1 %cmp1.i, double %conv193, double %conv187
  %cond5.i = select fast i1 %cmp.i313, double %conv190, double %cond.i
  %conv195 = fptrunc double %cond5.i to float
  %qpa_rc = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 12
  %qpm = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 11
  %91 = bitcast float* %qpa_rc to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %91, i8 0, i64 16, i1 false)
  store float %conv195, float* %qpm, align 4, !tbaa !254
  %fdec196 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 61
  %92 = load %struct.x264_frame*, %struct.x264_frame** %fdec196, align 4, !tbaa !233
  %f_qp_avg_aq = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %92, i32 0, i32 26
  store float %conv195, float* %f_qp_avg_aq, align 16, !tbaa !255
  %f_qp_avg_rc = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %92, i32 0, i32 25
  store float %conv195, float* %f_qp_avg_rc, align 4, !tbaa !256
  %tobool198 = icmp eq %struct.ratecontrol_entry_t* %rce.0, null
  br i1 %tobool198, label %if.end200, label %if.then199

if.then199:                                       ; preds = %if.end180
  %new_qp = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %rce.0, i32 0, i32 10
  store float %conv195, float* %new_qp, align 8, !tbaa !197
  br label %if.end200

if.end200:                                        ; preds = %if.end180, %if.then199
  %h.idx310.val = load i32, i32* %i_type126, align 8, !tbaa !230
  %h.idx311.val = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc1, align 64, !tbaa !65
  %accum_p_qp.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %h.idx311.val, i32 0, i32 50
  %93 = load double, double* %accum_p_qp.i, align 8, !tbaa !138
  %mul.i = fmul fast double %93, 0x3FEE666666666666
  store double %mul.i, double* %accum_p_qp.i, align 8, !tbaa !138
  %accum_p_norm.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %h.idx311.val, i32 0, i32 51
  %94 = load double, double* %accum_p_norm.i, align 8, !tbaa !137
  %mul2.i = fmul fast double %94, 0x3FEE666666666666
  %add.i = fadd fast double %mul2.i, 1.000000e+00
  store double %add.i, double* %accum_p_norm.i, align 8, !tbaa !137
  %cmp.i312 = icmp eq i32 %h.idx310.val, 2
  %conv.i = fpext float %conv195 to double
  br i1 %cmp.i312, label %accum_p_qp_update.exit.thread, label %accum_p_qp_update.exit

accum_p_qp_update.exit.thread:                    ; preds = %if.end200
  %ip_offset.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %h.idx311.val, i32 0, i32 36
  %95 = load double, double* %ip_offset.i, align 8, !tbaa !142
  %add4.i = fadd fast double %95, %conv.i
  %storemerge.i332 = fadd fast double %add4.i, %mul.i
  store double %storemerge.i332, double* %accum_p_qp.i, align 8, !tbaa !138
  br label %if.then206

accum_p_qp_update.exit:                           ; preds = %if.end200
  %storemerge.i = fadd fast double %mul.i, %conv.i
  store double %storemerge.i, double* %accum_p_qp.i, align 8, !tbaa !138
  %cmp204 = icmp eq i32 %h.idx310.val, 1
  br i1 %cmp204, label %if.end209, label %if.then206

if.then206:                                       ; preds = %accum_p_qp_update.exit.thread, %accum_p_qp_update.exit
  %last_non_b_pict_type = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 49
  store i32 %h.idx310.val, i32* %last_non_b_pict_type, align 8, !tbaa !134
  br label %if.end209

if.end209:                                        ; preds = %accum_p_qp_update.exit, %if.then206
  ret void
}

; Function Attrs: nounwind
define internal fastcc float @rate_estimate_qscale(%struct.x264_t* %h) unnamed_addr #0 {
entry:
  %rce = alloca %struct.ratecontrol_entry_t, align 8
  %rc = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 71
  %0 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc, align 64, !tbaa !65
  %1 = bitcast %struct.ratecontrol_entry_t* %rce to i8*
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %1) #13
  call void @llvm.memset.p0i8.i32(i8* nonnull align 8 dereferenceable(200) %1, i8 0, i32 200, i1 false)
  %i_type = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 51, i32 2
  %2 = load i32, i32* %i_type, align 8, !tbaa !230
  %arrayidx = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 72, i32 1, i32 2
  %3 = load i64, i64* %arrayidx, align 8, !tbaa !54
  %arrayidx3 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 72, i32 1, i32 0
  %4 = load i64, i64* %arrayidx3, align 8, !tbaa !54
  %add = add nsw i64 %4, %3
  %arrayidx6 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 72, i32 1, i32 1
  %5 = load i64, i64* %arrayidx6, align 8, !tbaa !54
  %add7 = add nsw i64 %add, %5
  %mul = shl nsw i64 %add7, 3
  %filler_bits_sum = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 30
  %6 = load i64, i64* %filler_bits_sum, align 8, !tbaa !257
  %sub = sub nsw i64 %mul, %6
  %b_2pass = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 1
  %7 = load i32, i32* %b_2pass, align 4, !tbaa !81
  %tobool = icmp eq i32 %7, 0
  br i1 %tobool, label %if.end15, label %if.then

if.then:                                          ; preds = %entry
  %rce8 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 10
  %8 = bitcast %struct.ratecontrol_entry_t** %rce8 to i8**
  %9 = load i8*, i8** %8, align 8, !tbaa !78
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 8 dereferenceable(200) %1, i8* nonnull align 8 dereferenceable(200) %9, i32 200, i1 false), !tbaa.struct !258
  %pict_type9 = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %rce, i32 0, i32 0
  %10 = load i32, i32* %pict_type9, align 8, !tbaa !70
  %cmp = icmp eq i32 %2, %10
  br i1 %cmp, label %if.end15, label %if.then10

if.then10:                                        ; preds = %if.then
  %arrayidx11 = getelementptr inbounds [3 x i8], [3 x i8]* @slice_type_to_char, i32 0, i32 %2
  %11 = load i8, i8* %arrayidx11, align 1, !tbaa !46
  %conv = sext i8 %11 to i32
  %arrayidx13 = getelementptr inbounds [3 x i8], [3 x i8]* @slice_type_to_char, i32 0, i32 %10
  %12 = load i8, i8* %arrayidx13, align 1, !tbaa !46
  %conv14 = sext i8 %12 to i32
  tail call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.107, i32 0, i32 0), i32 %conv, i32 %conv14) #13
  br label %if.end15

if.end15:                                         ; preds = %if.then, %entry, %if.then10
  %cmp16 = icmp eq i32 %2, 1
  br i1 %cmp16, label %if.then18, label %if.else161

if.then18:                                        ; preds = %if.end15
  %arrayidx19 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 64, i32 0
  %13 = load %struct.x264_frame*, %struct.x264_frame** %arrayidx19, align 32, !tbaa !59
  %i_type20 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %13, i32 0, i32 3
  %14 = load i32, i32* %i_type20, align 16, !tbaa !259
  %switch.tableidx = add i32 %14, -1
  %15 = icmp ult i32 %switch.tableidx, 6
  %switch.cast = trunc i32 %switch.tableidx to i6
  %switch.downshift = lshr i6 -29, %switch.cast
  %16 = and i6 %switch.downshift, 1
  %switch.masked = icmp ne i6 %16, 0
  %17 = and i1 %15, %switch.masked
  %arrayidx34 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 64, i32 1
  %18 = load %struct.x264_frame*, %struct.x264_frame** %arrayidx34, align 4, !tbaa !59
  %i_type35 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %18, i32 0, i32 3
  %19 = load i32, i32* %i_type35, align 16, !tbaa !259
  %switch.tableidx981 = add i32 %19, -1
  %20 = icmp ult i32 %switch.tableidx981, 6
  %switch.cast982 = trunc i32 %switch.tableidx981 to i6
  %switch.downshift984 = lshr i6 -29, %switch.cast982
  %21 = and i6 %switch.downshift984, 1
  %switch.masked985 = icmp ne i6 %21, 0
  %22 = and i1 %20, %switch.masked985
  %fenc = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 60
  %23 = load %struct.x264_frame*, %struct.x264_frame** %fenc, align 8, !tbaa !80
  %i_poc = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %23, i32 0, i32 1
  %24 = load i32, i32* %i_poc, align 4, !tbaa !260
  %i_poc54 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %13, i32 0, i32 1
  %25 = load i32, i32* %i_poc54, align 4, !tbaa !260
  %sub55 = sub nsw i32 %24, %25
  %26 = icmp slt i32 %sub55, 0
  %neg = sub nsw i32 0, %sub55
  %27 = select i1 %26, i32 %neg, i32 %sub55
  %i_poc60 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %18, i32 0, i32 1
  %28 = load i32, i32* %i_poc60, align 4, !tbaa !260
  %sub61 = sub nsw i32 %24, %28
  %29 = icmp slt i32 %sub61, 0
  %neg866 = sub nsw i32 0, %sub61
  %30 = select i1 %29, i32 %neg866, i32 %sub61
  %f_qp_avg_rc = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %13, i32 0, i32 25
  %31 = load float, float* %f_qp_avg_rc, align 4, !tbaa !256
  %f_qp_avg_rc67 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %18, i32 0, i32 25
  %32 = load float, float* %f_qp_avg_rc67, align 4, !tbaa !256
  %cmp71 = icmp eq i32 %14, 4
  br i1 %cmp71, label %if.then73, label %if.end77

if.then73:                                        ; preds = %if.then18
  %pb_offset = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 37
  %33 = load double, double* %pb_offset, align 8, !tbaa !143
  %div = fmul fast double %33, 5.000000e-01
  %conv74 = fpext float %31 to double
  %sub75 = fsub fast double %conv74, %div
  %conv76 = fptrunc double %sub75 to float
  br label %if.end77

if.end77:                                         ; preds = %if.then73, %if.then18
  %q0.0 = phi float [ %conv76, %if.then73 ], [ %31, %if.then18 ]
  %cmp81 = icmp eq i32 %19, 4
  br i1 %cmp81, label %if.then83, label %if.end89

if.then83:                                        ; preds = %if.end77
  %pb_offset84 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 37
  %34 = load double, double* %pb_offset84, align 8, !tbaa !143
  %div85 = fmul fast double %34, 5.000000e-01
  %conv86 = fpext float %32 to double
  %sub87 = fsub fast double %conv86, %div85
  %conv88 = fptrunc double %sub87 to float
  br label %if.end89

if.end89:                                         ; preds = %if.then83, %if.end77
  %q1.0 = phi float [ %conv88, %if.then83 ], [ %32, %if.end77 ]
  %or.cond = and i1 %17, %22
  br i1 %or.cond, label %if.then92, label %if.else

if.then92:                                        ; preds = %if.end89
  %add93 = fadd fast float %q1.0, %q0.0
  %div94 = fmul fast float %add93, 5.000000e-01
  %conv95 = fpext float %div94 to double
  %ip_offset = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 36
  %35 = load double, double* %ip_offset, align 8, !tbaa !142
  %add96 = fadd fast double %35, %conv95
  %conv97 = fptrunc double %add96 to float
  br label %if.end114

if.else:                                          ; preds = %if.end89
  %brmerge = or i1 %17, %22
  %q1.0.mux = select i1 %17, float %q1.0, float %q0.0
  br i1 %brmerge, label %if.end114, label %if.else103

if.else103:                                       ; preds = %if.else
  %conv104 = sitofp i32 %30 to float
  %mul105 = fmul fast float %q0.0, %conv104
  %conv106 = sitofp i32 %27 to float
  %mul107 = fmul fast float %q1.0, %conv106
  %add108 = fadd fast float %mul107, %mul105
  %add109 = add nuw nsw i32 %30, %27
  %conv110 = sitofp i32 %add109 to float
  %div111 = fdiv fast float %add108, %conv110
  br label %if.end114

if.end114:                                        ; preds = %if.else, %if.else103, %if.then92
  %q.0 = phi float [ %conv97, %if.then92 ], [ %div111, %if.else103 ], [ %q1.0.mux, %if.else ]
  %b_kept_as_ref = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %23, i32 0, i32 19
  %36 = load i32, i32* %b_kept_as_ref, align 4, !tbaa !253
  %tobool116 = icmp eq i32 %36, 0
  %pb_offset118 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 37
  %37 = load double, double* %pb_offset118, align 8, !tbaa !143
  %div119 = fmul fast double %37, 5.000000e-01
  %.sink = select i1 %tobool116, double %37, double %div119
  %conv125 = fpext float %q.0 to double
  %add126 = fadd fast double %.sink, %conv125
  %q.1 = fptrunc double %add126 to float
  %qp_novbv = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 16
  store float %q.1, float* %qp_novbv, align 8, !tbaa !261
  %38 = fmul fast float %q.1, 0x3FC5555560000000
  %div.i = fadd fast float %38, -2.000000e+00
  %exp2.i = tail call fast float @llvm.exp2.f32(float %div.i) #13
  %mul.i = fmul fast float %exp2.i, 0x3FEB333340000000
  %39 = load i32, i32* %b_2pass, align 4, !tbaa !81
  %tobool131 = icmp eq i32 %39, 0
  br i1 %tobool131, label %if.else135, label %if.then132

if.then132:                                       ; preds = %if.end114
  %conv133 = fpext float %mul.i to double
  %cmp.i880 = fcmp fast olt double %conv133, 1.000000e-01
  %qscale.addr.0.i881 = select i1 %cmp.i880, double 1.000000e-01, double %conv133
  %tex_bits.i882 = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %rce, i32 0, i32 5
  %40 = load i32, i32* %tex_bits.i882, align 4, !tbaa !199
  %conv.i883 = sitofp i32 %40 to double
  %add.i884 = fadd fast double %conv.i883, 1.000000e-01
  %qscale1.i885 = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %rce, i32 0, i32 3
  %41 = load double, double* %qscale1.i885, align 8, !tbaa !195
  %div.i886 = fdiv fast double %41, %qscale.addr.0.i881
  %42 = tail call fast double @llvm.pow.f64(double %div.i886, double 1.100000e+00) #13
  %mul.i887 = fmul fast double %42, %add.i884
  %mv_bits.i888 = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %rce, i32 0, i32 4
  %43 = load i32, i32* %mv_bits.i888, align 8, !tbaa !200
  %conv2.i889 = sitofp i32 %43 to double
  %44 = tail call fast double @llvm.maxnum.f64(double %41, double 1.000000e+00) #13
  %45 = tail call fast double @llvm.maxnum.f64(double %qscale.addr.0.i881, double 1.000000e+00) #13
  %div13.i890 = fdiv fast double %44, %45
  %sqrt.i891 = tail call fast double @llvm.sqrt.f64(double %div13.i890) #13
  %mul14.i892 = fmul fast double %sqrt.i891, %conv2.i889
  %misc_bits.i893 = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %rce, i32 0, i32 6
  %46 = load i32, i32* %misc_bits.i893, align 8, !tbaa !196
  %conv16.i894 = sitofp i32 %46 to double
  %add15.i895 = fadd fast double %mul.i887, %conv16.i894
  %add17.i896 = fadd fast double %add15.i895, %mul14.i892
  br label %if.end144

if.else135:                                       ; preds = %if.end114
  %pred_b_from_p = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 63
  %47 = load %struct.predictor_t*, %struct.predictor_t** %pred_b_from_p, align 4, !tbaa !151
  %arrayidx137 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 62, i32 1
  %48 = load i32, i32* %arrayidx137, align 4, !tbaa !55
  %sub138 = add nsw i32 %48, -1
  %arrayidx139 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 63, i32 1, i32 %sub138
  %49 = load %struct.x264_frame*, %struct.x264_frame** %arrayidx139, align 4, !tbaa !59
  %i_satd = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %49, i32 0, i32 66
  %50 = load i32, i32* %i_satd, align 8, !tbaa !262
  %conv140 = sitofp i32 %50 to float
  %.idx = getelementptr %struct.predictor_t, %struct.predictor_t* %47, i32 0, i32 1
  %.idx.val = load float, float* %.idx, align 4, !tbaa !157
  %.idx873 = getelementptr %struct.predictor_t, %struct.predictor_t* %47, i32 0, i32 2
  %.idx873.val = load float, float* %.idx873, align 4, !tbaa !158
  %.idx874 = getelementptr %struct.predictor_t, %struct.predictor_t* %47, i32 0, i32 4
  %.idx874.val = load float, float* %.idx874, align 4, !tbaa !160
  %mul.i911 = fmul fast float %.idx.val, %conv140
  %add.i912 = fadd fast float %.idx874.val, %mul.i911
  %mul1.i913 = fmul fast float %.idx873.val, %mul.i
  %div.i914 = fdiv fast float %add.i912, %mul1.i913
  %conv142 = fpext float %div.i914 to double
  br label %if.end144

if.end144:                                        ; preds = %if.else135, %if.then132
  %add17.i896.sink = phi double [ %conv142, %if.else135 ], [ %add17.i896, %if.then132 ]
  %51 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 59
  store double %add17.i896.sink, double* %51, align 8
  %b_vbv = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 2
  %52 = load i32, i32* %b_vbv, align 8, !tbaa !125
  %tobool145 = icmp eq i32 %52, 0
  br i1 %tobool145, label %if.end153.thread, label %if.then158

if.end153.thread:                                 ; preds = %if.end144
  %conv155969 = fptrunc double %add17.i896.sink to float
  %frame_size_estimated970 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 57
  store volatile float %conv155969, float* %frame_size_estimated970, align 4, !tbaa !243
  br label %cleanup584

if.then158:                                       ; preds = %if.end144
  %frame_size_maximum = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 58
  %53 = load double, double* %frame_size_maximum, align 8, !tbaa !249
  %54 = tail call fast double @llvm.minnum.f64(double %add17.i896.sink, double %53)
  store double %54, double* %51, align 8, !tbaa !241
  %conv155 = fptrunc double %54 to float
  %frame_size_estimated = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 57
  store volatile float %conv155, float* %frame_size_estimated, align 4, !tbaa !243
  %call159 = tail call i32 @x264_8_rc_analyse_slice(%struct.x264_t* nonnull %h) #13
  %last_satd = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 26
  store i32 %call159, i32* %last_satd, align 4, !tbaa !263
  br label %cleanup584

if.else161:                                       ; preds = %if.end15
  %rate_tolerance = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 6
  %55 = load double, double* %rate_tolerance, align 8, !tbaa !132
  %mul162 = fmul fast double %55, 2.000000e+00
  %bitrate = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 5
  %56 = load double, double* %bitrate, align 8, !tbaa !113
  %mul163 = fmul fast double %mul162, %56
  %conv164 = sitofp i64 %sub to double
  %i_thread_frames = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 21
  %57 = load i32, i32* %i_thread_frames, align 4, !tbaa !240
  %cmp165 = icmp sgt i32 %57, 1
  br i1 %cmp165, label %if.then167, label %if.end197

if.then167:                                       ; preds = %if.else161
  %arrayidx168 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 2, i32 0
  %58 = load %struct.x264_t*, %struct.x264_t** %arrayidx168, align 4, !tbaa !59
  %rc169 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %58, i32 0, i32 71
  %59 = bitcast %struct.x264_ratecontrol_t** %rc169 to i32*
  %60 = load i32, i32* %59, align 64, !tbaa !65
  %sub.ptr.lhs.cast = ptrtoint %struct.x264_ratecontrol_t* %0 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %60
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 680
  br label %for.body

for.body:                                         ; preds = %cleanup, %if.then167
  %predicted_bits.0978 = phi double [ %conv164, %if.then167 ], [ %predicted_bits.1, %cleanup ]
  %i.0977 = phi i32 [ 1, %if.then167 ], [ %inc, %cleanup ]
  %add174 = add nsw i32 %i.0977, %sub.ptr.div
  %rem = srem i32 %add174, %57
  %arrayidx176 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 2, i32 %rem
  %61 = load %struct.x264_t*, %struct.x264_t** %arrayidx176, align 4, !tbaa !59
  %rc177 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %61, i32 0, i32 71
  %62 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc177, align 64, !tbaa !65
  %frame_size_planned178 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %62, i32 0, i32 59
  %63 = load double, double* %frame_size_planned178, align 8, !tbaa !241
  %b_thread_active = getelementptr inbounds %struct.x264_t, %struct.x264_t* %61, i32 0, i32 4
  %64 = load i32, i32* %b_thread_active, align 8, !tbaa !242
  %tobool179 = icmp eq i32 %64, 0
  br i1 %tobool179, label %cleanup, label %if.end181

if.end181:                                        ; preds = %for.body
  %frame_size_estimated183 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %62, i32 0, i32 57
  %65 = load volatile float, float* %frame_size_estimated183, align 4, !tbaa !243
  %conv184 = fpext float %65 to double
  %cmp185 = fcmp fast ogt double %63, %conv184
  br i1 %cmp185, label %cond.end192, label %cond.false188

cond.false188:                                    ; preds = %if.end181
  %66 = load volatile float, float* %frame_size_estimated183, align 4, !tbaa !243
  %conv191 = fpext float %66 to double
  br label %cond.end192

cond.end192:                                      ; preds = %if.end181, %cond.false188
  %cond193 = phi fast double [ %conv191, %cond.false188 ], [ %63, %if.end181 ]
  %add194 = fadd fast double %cond193, %predicted_bits.0978
  br label %cleanup

cleanup:                                          ; preds = %for.body, %cond.end192
  %predicted_bits.1 = phi double [ %add194, %cond.end192 ], [ %predicted_bits.0978, %for.body ]
  %inc = add nuw nsw i32 %i.0977, 1
  %exitcond = icmp eq i32 %inc, %57
  br i1 %exitcond, label %if.end197, label %for.body

if.end197:                                        ; preds = %cleanup, %if.else161
  %predicted_bits.2 = phi double [ %conv164, %if.else161 ], [ %predicted_bits.1, %cleanup ]
  %67 = load i32, i32* %b_2pass, align 4, !tbaa !81
  %tobool199 = icmp eq i32 %67, 0
  br i1 %tobool199, label %if.else321, label %if.then200

if.then200:                                       ; preds = %if.end197
  %arrayidx202 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 53, i32 %2
  %68 = load double, double* %arrayidx202, align 8, !tbaa !154
  %arrayidx204 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 54, i32 %2
  %69 = load double, double* %arrayidx204, align 8, !tbaa !154
  %num_entries = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 44
  %70 = load i32, i32* %num_entries, align 8, !tbaa !191
  %i_frame = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 19
  %71 = load i32, i32* %i_frame, align 4, !tbaa !228
  %cmp205 = icmp sgt i32 %70, %71
  br i1 %cmp205, label %if.then207, label %if.then200.if.end225_crit_edge

if.then200.if.end225_crit_edge:                   ; preds = %if.then200
  %expected_bits226.phi.trans.insert = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %rce, i32 0, i32 7
  %.pre = load double, double* %expected_bits226.phi.trans.insert, align 8, !tbaa !215
  br label %if.end225

if.then207:                                       ; preds = %if.then200
  %entry_out = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 46
  %72 = load %struct.ratecontrol_entry_t**, %struct.ratecontrol_entry_t*** %entry_out, align 8, !tbaa !193
  %sub209 = add nsw i32 %70, -1
  %arrayidx210 = getelementptr inbounds %struct.ratecontrol_entry_t*, %struct.ratecontrol_entry_t** %72, i32 %sub209
  %73 = load %struct.ratecontrol_entry_t*, %struct.ratecontrol_entry_t** %arrayidx210, align 4, !tbaa !59
  %expected_bits = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %73, i32 0, i32 7
  %74 = load double, double* %expected_bits, align 8, !tbaa !215
  %expected_bits211 = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %rce, i32 0, i32 7
  %75 = load double, double* %expected_bits211, align 8, !tbaa !215
  %div212 = fdiv fast double %75, %74
  %sub213 = fsub fast double 1.000000e+00, %div212
  %conv215 = sitofp i32 %70 to double
  %mul216 = fmul fast double %sub213, %conv215
  %76 = tail call fast double @llvm.sqrt.f64(double %mul216)
  %77 = tail call fast double @llvm.maxnum.f64(double %76, double 5.000000e-01)
  %mul223 = fmul fast double %mul163, 5.000000e-01
  %mul224 = fmul fast double %mul223, %77
  br label %if.end225

if.end225:                                        ; preds = %if.then200.if.end225_crit_edge, %if.then207
  %78 = phi double [ %75, %if.then207 ], [ %.pre, %if.then200.if.end225_crit_edge ]
  %abr_buffer.0 = phi double [ %mul224, %if.then207 ], [ %mul163, %if.then200.if.end225_crit_edge ]
  %new_qscale = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %rce, i32 0, i32 9
  %79 = load double, double* %new_qscale, align 8, !tbaa !194
  %conv228 = fptrunc double %79 to float
  %80 = fsub fast double %abr_buffer.0, %predicted_bits.2
  %sub229 = fadd fast double %80, %78
  %div230 = fdiv fast double %sub229, %abr_buffer.0
  %cmp1.i916 = fcmp fast ogt double %div230, 2.000000e+00
  %cond.i917 = select fast i1 %cmp1.i916, double 2.000000e+00, double %div230
  %81 = tail call fast double @llvm.maxnum.f64(double %cond.i917, double 5.000000e-01)
  %conv232 = fpext float %conv228 to double
  %div233 = fdiv fast double %conv232, %81
  %conv234 = fptrunc double %div233 to float
  %conv236 = sitofp i32 %71 to double
  %fps = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 4
  %82 = load double, double* %fps, align 8, !tbaa !93
  %cmp237 = fcmp fast ugt double %82, %conv236
  br i1 %cmp237, label %if.end256, label %land.lhs.true239

land.lhs.true239:                                 ; preds = %if.end225
  %expected_bits_sum = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 29
  %83 = load double, double* %expected_bits_sum, align 8, !tbaa !264
  %cmp240 = fcmp fast ult double %83, 1.000000e+00
  br i1 %cmp240, label %if.end256, label %if.then242

if.then242:                                       ; preds = %land.lhs.true239
  %conv246 = sitofp i32 %70 to double
  %84 = fmul fast double %conv236, 1.000000e+02
  %mul248 = fdiv fast double %84, %conv246
  %cmp1.i965 = fcmp fast ogt double %mul248, 1.000000e+00
  %cond.i966 = select fast i1 %cmp1.i965, double 1.000000e+00, double %mul248
  %85 = tail call fast double @llvm.maxnum.f64(double %cond.i966, double 0.000000e+00)
  %div252 = fdiv fast double %conv164, %83
  %86 = tail call fast double @llvm.pow.f64(double %div252, double %85)
  %conv253 = fpext float %conv234 to double
  %mul254 = fmul fast double %86, %conv253
  %conv255 = fptrunc double %mul254 to float
  br label %if.end256

if.end256:                                        ; preds = %land.lhs.true239, %if.end225, %if.then242
  %q.2 = phi float [ %conv255, %if.then242 ], [ %conv234, %land.lhs.true239 ], [ %conv234, %if.end225 ]
  %div.i961 = fmul fast float %q.2, 0x3FF2D2D2C0000000
  %87 = tail call fast float @llvm.log2.f32(float %div.i961) #13
  %mul.i962 = fmul fast float %87, 6.000000e+00
  %add.i963 = fadd fast float %mul.i962, 1.200000e+01
  %qp_novbv258 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 16
  store float %add.i963, float* %qp_novbv258, align 8, !tbaa !261
  %b_vbv259 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 2
  %88 = load i32, i32* %b_vbv259, align 8, !tbaa !125
  %tobool260 = icmp eq i32 %88, 0
  %.pre979 = fpext float %q.2 to double
  br i1 %tobool260, label %if.end317, label %if.then261

if.then261:                                       ; preds = %if.end256
  %cmp.i944 = fcmp fast olt double %.pre979, 1.000000e-01
  %qscale.addr.0.i945 = select i1 %cmp.i944, double 1.000000e-01, double %.pre979
  %tex_bits.i946 = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %rce, i32 0, i32 5
  %89 = load i32, i32* %tex_bits.i946, align 4, !tbaa !199
  %conv.i947 = sitofp i32 %89 to double
  %add.i948 = fadd fast double %conv.i947, 1.000000e-01
  %qscale1.i949 = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %rce, i32 0, i32 3
  %90 = load double, double* %qscale1.i949, align 8, !tbaa !195
  %div.i950 = fdiv fast double %90, %qscale.addr.0.i945
  %91 = tail call fast double @llvm.pow.f64(double %div.i950, double 1.100000e+00) #13
  %mul.i951 = fmul fast double %91, %add.i948
  %mv_bits.i952 = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %rce, i32 0, i32 4
  %92 = load i32, i32* %mv_bits.i952, align 8, !tbaa !200
  %conv2.i953 = sitofp i32 %92 to double
  %93 = tail call fast double @llvm.maxnum.f64(double %90, double 1.000000e+00) #13
  %94 = tail call fast double @llvm.maxnum.f64(double %qscale.addr.0.i945, double 1.000000e+00) #13
  %div13.i954 = fdiv fast double %93, %94
  %sqrt.i955 = tail call fast double @llvm.sqrt.f64(double %div13.i954) #13
  %mul14.i956 = fmul fast double %sqrt.i955, %conv2.i953
  %misc_bits.i957 = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %rce, i32 0, i32 6
  %95 = load i32, i32* %misc_bits.i957, align 8, !tbaa !196
  %conv16.i958 = sitofp i32 %95 to double
  %add15.i959 = fadd fast double %mul.i951, %conv16.i958
  %add17.i960 = fadd fast double %add15.i959, %mul14.i956
  %buffer_fill = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 20
  %96 = load double, double* %buffer_fill, align 8, !tbaa !239
  %buffer_rate = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 21
  %97 = load double, double* %buffer_rate, align 8, !tbaa !114
  %add264 = fadd fast double %97, %96
  %expected_vbv266 = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %rce, i32 0, i32 8
  %98 = load double, double* %expected_vbv266, align 8, !tbaa !216
  %buffer_size = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 17
  %99 = load double, double* %buffer_size, align 8, !tbaa !116
  %div267 = fdiv fast double %98, %99
  %sub269 = fsub fast double 2.000000e+00, %div267
  %mul270 = fmul fast double %sub269, %.pre979
  %add271 = fadd fast double %div267, 1.000000e+00
  %100 = tail call fast double @llvm.maxnum.f64(double %mul270, double %79)
  %cmp280 = fcmp fast olt double %div267, 5.000000e-02
  %qmax.0 = select i1 %cmp280, double %69, double %100
  %101 = tail call fast double @llvm.minnum.f64(double %qmax.0, double %69)
  %div291 = fdiv fast double %98, %add271
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then261
  %add17.i960.pn = phi double [ %add17.i960, %if.then261 ], [ %add17.i943, %while.body ]
  %q.3 = phi float [ %q.2, %if.then261 ], [ %conv308, %while.body ]
  %expected_vbv.0 = fsub fast double %add264, %add17.i960.pn
  %cmp292 = fcmp fast olt double %expected_vbv.0, %div291
  %conv295 = fpext float %q.3 to double
  %cmp296 = fcmp fast ogt double %101, %conv295
  %or.cond868 = and i1 %cmp292, %cmp296
  br i1 %or.cond868, label %while.body, label %lor.rhs298

lor.rhs298:                                       ; preds = %while.cond
  %cmp299 = fcmp fast olt double %expected_vbv.0, 0.000000e+00
  %cmp302 = fcmp fast ogt double %69, %conv295
  %102 = and i1 %cmp299, %cmp302
  br i1 %102, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond, %lor.rhs298
  %mul307 = fmul fast double %conv295, 1.050000e+00
  %conv308 = fptrunc double %mul307 to float
  %conv309 = fpext float %conv308 to double
  %cmp.i927 = fcmp fast olt double %conv309, 1.000000e-01
  %qscale.addr.0.i928 = select i1 %cmp.i927, double 1.000000e-01, double %conv309
  %div.i933 = fdiv fast double %90, %qscale.addr.0.i928
  %103 = tail call fast double @llvm.pow.f64(double %div.i933, double 1.100000e+00) #13
  %mul.i934 = fmul fast double %103, %add.i948
  %104 = tail call fast double @llvm.maxnum.f64(double %qscale.addr.0.i928, double 1.000000e+00) #13
  %div13.i937 = fdiv fast double %93, %104
  %sqrt.i938 = tail call fast double @llvm.sqrt.f64(double %div13.i937) #13
  %mul14.i939 = fmul fast double %sqrt.i938, %conv2.i953
  %add15.i942 = fadd fast double %mul.i934, %conv16.i958
  %add17.i943 = fadd fast double %add15.i942, %mul14.i939
  br label %while.cond

while.end:                                        ; preds = %lor.rhs298
  %call315 = tail call i32 @x264_8_rc_analyse_slice(%struct.x264_t* %h) #13
  %last_satd316 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 26
  store i32 %call315, i32* %last_satd316, align 4, !tbaa !263
  br label %if.end317

if.end317:                                        ; preds = %if.end256, %while.end
  %conv318.pre-phi = phi double [ %conv295, %while.end ], [ %.pre979, %if.end256 ]
  %cmp.i923 = fcmp fast ogt double %68, %conv318.pre-phi
  %105 = tail call fast double @llvm.minnum.f64(double %69, double %conv318.pre-phi)
  %cond5.i926 = select fast i1 %cmp.i923, double %68, double %105
  br label %if.end520

if.else321:                                       ; preds = %if.end197
  %call322 = tail call i32 @x264_8_rc_analyse_slice(%struct.x264_t* nonnull %h) #13
  %last_satd323 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 26
  store i32 %call322, i32* %last_satd323, align 4, !tbaa !263
  %short_term_cplxsum = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 33
  %106 = load double, double* %short_term_cplxsum, align 8, !tbaa !265
  %mul324 = fmul fast double %106, 5.000000e-01
  %short_term_cplxcount = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 34
  %107 = load double, double* %short_term_cplxcount, align 8, !tbaa !266
  %mul325 = fmul fast double %107, 5.000000e-01
  %conv327 = sitofp i32 %call322 to double
  %fenc328 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 60
  %108 = load %struct.x264_frame*, %struct.x264_frame** %fenc328, align 8, !tbaa !80
  %f_duration = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %108, i32 0, i32 10
  %109 = load float, float* %f_duration, align 16, !tbaa !267
  %conv329 = fpext float %109 to double
  %i_frame_packing = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 54
  %110 = load i32, i32* %i_frame_packing, align 4, !tbaa !211
  %cmp330 = icmp eq i32 %110, 5
  %add332 = select i1 %cmp330, i32 2, i32 1
  %conv333 = sitofp i32 %add332 to float
  %div334 = fdiv fast float 0x3F847AE140000000, %conv333
  %conv335 = fpext float %div334 to double
  %div342 = fdiv fast float 1.000000e+00, %conv333
  %conv343 = fpext float %div342 to double
  %cmp.i919 = fcmp fast olt float %109, %div334
  %cmp1.i920 = fcmp fast ogt double %conv329, %conv343
  %cond.i921 = select fast i1 %cmp1.i920, double %conv343, double %conv329
  %cond5.i922 = select fast i1 %cmp.i919, double %conv335, double %cond.i921
  %div351 = fdiv fast float 0x3FA47AE140000000, %conv333
  %conv352 = fpext float %div351 to double
  %111 = fmul fast double %conv352, %conv327
  %div354 = fdiv fast double %111, %cond5.i922
  %add356 = fadd fast double %div354, %mul324
  store double %add356, double* %short_term_cplxsum, align 8, !tbaa !265
  %inc358 = fadd fast double %mul325, 1.000000e+00
  store double %inc358, double* %short_term_cplxcount, align 8, !tbaa !266
  %tex_bits = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %rce, i32 0, i32 5
  store i32 %call322, i32* %tex_bits, align 4, !tbaa !199
  %div362 = fdiv fast double %add356, %inc358
  %conv363 = fptrunc double %div362 to float
  %blurred_complexity = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %rce, i32 0, i32 14
  store float %conv363, float* %blurred_complexity, align 8, !tbaa !212
  %mv_bits = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %rce, i32 0, i32 4
  store i32 0, i32* %mv_bits, align 8, !tbaa !200
  %nmb = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 8
  %112 = load i32, i32* %nmb, align 8, !tbaa !133
  %p_count = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %rce, i32 0, i32 12
  store i32 %112, i32* %p_count, align 8, !tbaa !202
  %i_count = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %rce, i32 0, i32 11
  store i32 0, i32* %i_count, align 4, !tbaa !201
  %s_count = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %rce, i32 0, i32 13
  store i32 0, i32* %s_count, align 4, !tbaa !203
  %qscale = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %rce, i32 0, i32 3
  store double 1.000000e+00, double* %qscale, align 8, !tbaa !195
  %pict_type364 = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %rce, i32 0, i32 0
  store i32 %2, i32* %pict_type364, align 8, !tbaa !70
  %i_duration = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %108, i32 0, i32 9
  %113 = load i64, i64* %i_duration, align 8, !tbaa !268
  %i_duration366 = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %rce, i32 0, i32 20
  store i64 %113, i64* %i_duration366, align 8, !tbaa !210
  %i_rc_method = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 0
  %114 = load i32, i32* %i_rc_method, align 8, !tbaa !82
  %cmp369 = icmp eq i32 %114, 1
  br i1 %cmp369, label %if.then371, label %if.else376

if.then371:                                       ; preds = %if.else321
  %rate_factor_constant = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 35
  %115 = load double, double* %rate_factor_constant, align 8, !tbaa !88
  %i_frame373 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %108, i32 0, i32 15
  %116 = load i32, i32* %i_frame373, align 4, !tbaa !69
  %call374 = call fast fastcc double @get_qscale(%struct.x264_t* nonnull %h, %struct.ratecontrol_entry_t* nonnull %rce, double %115, i32 %116)
  %conv375 = fptrunc double %call374 to float
  br label %if.end428

if.else376:                                       ; preds = %if.else321
  %wanted_bits_window = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 31
  %117 = load double, double* %wanted_bits_window, align 8, !tbaa !140
  %cplxr_sum = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 28
  %118 = load double, double* %cplxr_sum, align 8, !tbaa !139
  %div377 = fdiv fast double %117, %118
  %i_frame379 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %108, i32 0, i32 15
  %119 = load i32, i32* %i_frame379, align 4, !tbaa !69
  %call380 = call fast fastcc double @get_qscale(%struct.x264_t* nonnull %h, %struct.ratecontrol_entry_t* nonnull %rce, double %div377, i32 %119)
  %conv381 = fptrunc double %call380 to float
  %b_vbv_min_rate = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 3
  %120 = load i32, i32* %b_vbv_min_rate, align 4, !tbaa !91
  %tobool382 = icmp eq i32 %120, 0
  br i1 %tobool382, label %land.lhs.true383, label %if.end428

land.lhs.true383:                                 ; preds = %if.else376
  %121 = load i32, i32* %last_satd323, align 4, !tbaa !263
  %tobool385 = icmp eq i32 %121, 0
  br i1 %tobool385, label %if.end428, label %if.then386

if.then386:                                       ; preds = %land.lhs.true383
  %i_frame387 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 19
  %122 = load i32, i32* %i_frame387, align 4, !tbaa !228
  %conv388 = sitofp i32 %122 to double
  %fps389 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 4
  %123 = load double, double* %fps389, align 8, !tbaa !93
  %div390 = fdiv fast double %conv388, %123
  %b_vfr_input = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 62
  %124 = load i32, i32* %b_vfr_input, align 8, !tbaa !269
  %tobool392 = icmp ne i32 %124, 0
  %cmp394 = icmp sgt i32 %122, 0
  %or.cond590 = and i1 %cmp394, %tobool392
  br i1 %or.cond590, label %if.then396, label %if.end406

if.then396:                                       ; preds = %if.then386
  %125 = load %struct.x264_frame*, %struct.x264_frame** %fenc328, align 8, !tbaa !80
  %i_reordered_pts = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %125, i32 0, i32 8
  %126 = load i64, i64* %i_reordered_pts, align 16, !tbaa !270
  %i_reordered_pts_delay = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 68
  %127 = load i64, i64* %i_reordered_pts_delay, align 8, !tbaa !271
  %sub398 = sub nsw i64 %126, %127
  %conv399 = sitofp i64 %sub398 to double
  %i_timebase_num = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 66
  %128 = load i32, i32* %i_timebase_num, align 8, !tbaa !178
  %conv401 = uitofp i32 %128 to double
  %mul402 = fmul fast double %conv399, %conv401
  %i_timebase_den = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 67
  %129 = load i32, i32* %i_timebase_den, align 4, !tbaa !179
  %conv404 = uitofp i32 %129 to double
  %div405 = fdiv fast double %mul402, %conv404
  br label %if.end406

if.end406:                                        ; preds = %if.then396, %if.then386
  %time_done.0 = phi double [ %div405, %if.then396 ], [ %div390, %if.then386 ]
  %130 = load double, double* %bitrate, align 8, !tbaa !113
  %mul408 = fmul fast double %130, %time_done.0
  %cmp409 = fcmp fast ogt double %mul408, 0.000000e+00
  br i1 %cmp409, label %if.then411, label %if.end428

if.then411:                                       ; preds = %if.end406
  %131 = tail call fast double @llvm.sqrt.f64(double %time_done.0)
  %cmp412 = fcmp fast olt double %131, 1.000000e+00
  %cond417 = select fast i1 %cmp412, double 1.000000e+00, double %131
  %mul418 = fmul fast double %cond417, %mul163
  %sub419 = fsub fast double %predicted_bits.2, %mul408
  %div420 = fdiv fast double %sub419, %mul418
  %add421 = fadd fast double %div420, 1.000000e+00
  %cmp1.i908 = fcmp fast ogt double %add421, 2.000000e+00
  %cond.i909 = select fast i1 %cmp1.i908, double 2.000000e+00, double %add421
  %132 = tail call fast double @llvm.maxnum.f64(double %cond.i909, double 5.000000e-01)
  %conv423 = fpext float %conv381 to double
  %mul424 = fmul fast double %132, %conv423
  %conv425 = fptrunc double %mul424 to float
  br label %if.end428

if.end428:                                        ; preds = %if.end406, %if.then411, %land.lhs.true383, %if.else376, %if.then371
  %q.6 = phi float [ %conv375, %if.then371 ], [ %conv381, %if.else376 ], [ %conv381, %land.lhs.true383 ], [ %conv425, %if.then411 ], [ %conv381, %if.end406 ]
  %overflow.1 = phi double [ 1.000000e+00, %if.then371 ], [ 1.000000e+00, %if.else376 ], [ 1.000000e+00, %land.lhs.true383 ], [ %132, %if.then411 ], [ 1.000000e+00, %if.end406 ]
  %cmp429 = icmp eq i32 %2, 2
  br i1 %cmp429, label %land.lhs.true431, label %if.else445

land.lhs.true431:                                 ; preds = %if.end428
  %i_keyint_max = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 17
  %133 = load i32, i32* %i_keyint_max, align 4, !tbaa !106
  %cmp433 = icmp sgt i32 %133, 1
  br i1 %cmp433, label %land.lhs.true435, label %if.else445

land.lhs.true435:                                 ; preds = %land.lhs.true431
  %last_non_b_pict_type = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 49
  %134 = load i32, i32* %last_non_b_pict_type, align 8, !tbaa !134
  %cmp436 = icmp eq i32 %134, 2
  br i1 %cmp436, label %if.else445, label %if.then438

if.then438:                                       ; preds = %land.lhs.true435
  %accum_p_qp = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 50
  %135 = load double, double* %accum_p_qp, align 8, !tbaa !138
  %accum_p_norm = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 51
  %136 = load double, double* %accum_p_norm, align 8, !tbaa !137
  %div439 = fdiv fast double %135, %136
  %conv440 = fptrunc double %div439 to float
  %137 = fmul fast float %conv440, 0x3FC5555560000000
  %div.i904 = fadd fast float %137, -2.000000e+00
  %exp2.i905 = tail call fast float @llvm.exp2.f32(float %div.i904) #13
  %mul.i906 = fmul fast float %exp2.i905, 0x3FEB333340000000
  %f_ip_factor = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 12
  %138 = load float, float* %f_ip_factor, align 8, !tbaa !141
  %div444 = fdiv fast float %mul.i906, %138
  br label %if.end514

if.else445:                                       ; preds = %land.lhs.true435, %land.lhs.true431, %if.end428
  %i_frame446 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 19
  %139 = load i32, i32* %i_frame446, align 4, !tbaa !228
  %cmp447 = icmp sgt i32 %139, 0
  %140 = load i32, i32* %i_rc_method, align 8, !tbaa !82
  %cmp453 = icmp eq i32 %140, 1
  br i1 %cmp447, label %if.then449, label %if.else485

if.then449:                                       ; preds = %if.else445
  br i1 %cmp453, label %if.end514, label %if.then455

if.then455:                                       ; preds = %if.then449
  %arrayidx457 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 48, i32 %2
  %141 = load double, double* %arrayidx457, align 8, !tbaa !154
  %lstep = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 55
  %142 = load double, double* %lstep, align 8, !tbaa !147
  %div458 = fdiv fast double %141, %142
  %mul463 = fmul fast double %142, %141
  %cmp464 = fcmp fast ogt double %overflow.1, 1.100000e+00
  %cmp468 = icmp sgt i32 %139, 3
  %or.cond869 = and i1 %cmp464, %cmp468
  br i1 %or.cond869, label %if.then470, label %if.else473

if.then470:                                       ; preds = %if.then455
  %mul472 = fmul fast double %mul463, %142
  br label %if.end480

if.else473:                                       ; preds = %if.then455
  %cmp474 = fcmp fast olt double %overflow.1, 9.000000e-01
  br i1 %cmp474, label %if.then476, label %if.end480

if.then476:                                       ; preds = %if.else473
  %div478 = fdiv fast double %div458, %142
  br label %if.end480

if.end480:                                        ; preds = %if.else473, %if.then476, %if.then470
  %lmin456.0 = phi double [ %div458, %if.then470 ], [ %div478, %if.then476 ], [ %div458, %if.else473 ]
  %lmax459.0 = phi double [ %mul472, %if.then470 ], [ %mul463, %if.then476 ], [ %mul463, %if.else473 ]
  %conv481 = fpext float %q.6 to double
  %cmp.i903 = fcmp fast ogt double %lmin456.0, %conv481
  %143 = tail call fast double @llvm.minnum.f64(double %lmax459.0, double %conv481)
  %cond5.i = select fast i1 %cmp.i903, double %lmin456.0, double %143
  %conv483 = fptrunc double %cond5.i to float
  br label %if.end514

if.else485:                                       ; preds = %if.else445
  br i1 %cmp453, label %land.lhs.true491, label %if.end514

land.lhs.true491:                                 ; preds = %if.else485
  %qcompress = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 7
  %144 = load double, double* %qcompress, align 8, !tbaa !86
  %cmp492 = fcmp fast une double %144, 1.000000e+00
  br i1 %cmp492, label %cond.end504, label %if.end514

cond.end504:                                      ; preds = %land.lhs.true491
  %f_rf_constant = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 6
  %145 = load float, float* %f_rf_constant, align 8, !tbaa !87
  %146 = fmul fast float %145, 0x3FC5555560000000
  %div.i900 = fadd fast float %146, -2.000000e+00
  %exp2.i901 = tail call fast float @llvm.exp2.f32(float %div.i900) #13
  %mul.i902 = fmul fast float %exp2.i901, 0x3FEB333340000000
  %f_ip_factor510 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 12
  %147 = load float, float* %f_ip_factor510, align 8, !tbaa !141
  %div511 = fdiv fast float %mul.i902, %147
  br label %if.end514

if.end514:                                        ; preds = %if.then449, %if.end480, %cond.end504, %land.lhs.true491, %if.else485, %if.then438
  %q.7 = phi float [ %div444, %if.then438 ], [ %conv483, %if.end480 ], [ %q.6, %if.then449 ], [ %div511, %cond.end504 ], [ %q.6, %land.lhs.true491 ], [ %q.6, %if.else485 ]
  %div.i897 = fmul fast float %q.7, 0x3FF2D2D2C0000000
  %148 = tail call fast float @llvm.log2.f32(float %div.i897) #13
  %mul.i898 = fmul fast float %148, 6.000000e+00
  %add.i899 = fadd fast float %mul.i898, 1.200000e+01
  %qp_novbv516 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 16
  store float %add.i899, float* %qp_novbv516, align 8, !tbaa !261
  %conv517 = fpext float %q.7 to double
  %call518 = tail call fast fastcc double @clip_qscale(%struct.x264_t* nonnull %h, i32 %2, double %conv517)
  br label %if.end520

if.end520:                                        ; preds = %if.end514, %if.end317
  %q.8.in = phi double [ %cond5.i926, %if.end317 ], [ %call518, %if.end514 ]
  %q.8 = fptrunc double %q.8.in to float
  %conv521 = fpext float %q.8 to double
  %last_qscale = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 47
  store double %conv521, double* %last_qscale, align 8, !tbaa !148
  %arrayidx523 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 48, i32 %2
  store double %conv521, double* %arrayidx523, align 8, !tbaa !154
  %149 = load i32, i32* %b_2pass, align 4, !tbaa !81
  %tobool525 = icmp eq i32 %149, 0
  br i1 %tobool525, label %land.lhs.true529, label %land.lhs.true526

land.lhs.true526:                                 ; preds = %if.end520
  %b_vbv527 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 2
  %150 = load i32, i32* %b_vbv527, align 8, !tbaa !125
  %tobool528 = icmp eq i32 %150, 0
  br i1 %tobool528, label %if.then545, label %land.lhs.true529

land.lhs.true529:                                 ; preds = %land.lhs.true526, %if.end520
  %fenc530 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 60
  %151 = load %struct.x264_frame*, %struct.x264_frame** %fenc530, align 8, !tbaa !80
  %i_frame531 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %151, i32 0, i32 15
  %152 = load i32, i32* %i_frame531, align 4, !tbaa !69
  %cmp532 = icmp eq i32 %152, 0
  br i1 %cmp532, label %if.then534, label %if.end542

if.then534:                                       ; preds = %land.lhs.true529
  %f_ip_factor537 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 12
  %153 = load float, float* %f_ip_factor537, align 8, !tbaa !141
  %mul538 = fmul fast float %153, %q.8
  %conv539 = fpext float %mul538 to double
  %arrayidx541 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 48, i32 0
  store double %conv539, double* %arrayidx541, align 8, !tbaa !154
  br label %if.end542

if.end542:                                        ; preds = %if.then534, %land.lhs.true529
  br i1 %tobool525, label %if.else549, label %if.then545

if.then545:                                       ; preds = %land.lhs.true526, %if.end542
  %cmp.i = fcmp fast olt double %conv521, 1.000000e-01
  %qscale.addr.0.i = select i1 %cmp.i, double 1.000000e-01, double %conv521
  %tex_bits.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %rce, i32 0, i32 5
  %154 = load i32, i32* %tex_bits.i, align 4, !tbaa !199
  %conv.i = sitofp i32 %154 to double
  %add.i877 = fadd fast double %conv.i, 1.000000e-01
  %qscale1.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %rce, i32 0, i32 3
  %155 = load double, double* %qscale1.i, align 8, !tbaa !195
  %div.i878 = fdiv fast double %155, %qscale.addr.0.i
  %156 = tail call fast double @llvm.pow.f64(double %div.i878, double 1.100000e+00) #13
  %mul.i879 = fmul fast double %156, %add.i877
  %mv_bits.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %rce, i32 0, i32 4
  %157 = load i32, i32* %mv_bits.i, align 8, !tbaa !200
  %conv2.i = sitofp i32 %157 to double
  %158 = tail call fast double @llvm.maxnum.f64(double %155, double 1.000000e+00) #13
  %159 = tail call fast double @llvm.maxnum.f64(double %qscale.addr.0.i, double 1.000000e+00) #13
  %div13.i = fdiv fast double %158, %159
  %sqrt.i = tail call fast double @llvm.sqrt.f64(double %div13.i) #13
  %mul14.i = fmul fast double %sqrt.i, %conv2.i
  %misc_bits.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %rce, i32 0, i32 6
  %160 = load i32, i32* %misc_bits.i, align 8, !tbaa !196
  %conv16.i = sitofp i32 %160 to double
  %add15.i = fadd fast double %mul.i879, %conv16.i
  %add17.i = fadd fast double %add15.i, %mul14.i
  br label %if.end558

if.else549:                                       ; preds = %if.end542
  %pred = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 23
  %161 = load %struct.predictor_t*, %struct.predictor_t** %pred, align 8, !tbaa !150
  %162 = load i32, i32* %i_type, align 8, !tbaa !230
  %last_satd553 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 26
  %163 = load i32, i32* %last_satd553, align 4, !tbaa !263
  %conv554 = sitofp i32 %163 to float
  %arrayidx552.idx = getelementptr %struct.predictor_t, %struct.predictor_t* %161, i32 %162, i32 1
  %arrayidx552.idx.val = load float, float* %arrayidx552.idx, align 4, !tbaa !157
  %arrayidx552.idx871 = getelementptr %struct.predictor_t, %struct.predictor_t* %161, i32 %162, i32 2
  %arrayidx552.idx871.val = load float, float* %arrayidx552.idx871, align 4, !tbaa !158
  %arrayidx552.idx872 = getelementptr %struct.predictor_t, %struct.predictor_t* %161, i32 %162, i32 4
  %arrayidx552.idx872.val = load float, float* %arrayidx552.idx872, align 4, !tbaa !160
  %mul.i875 = fmul fast float %arrayidx552.idx.val, %conv554
  %add.i = fadd fast float %arrayidx552.idx872.val, %mul.i875
  %mul1.i = fmul fast float %arrayidx552.idx871.val, %q.8
  %div.i876 = fdiv fast float %add.i, %mul1.i
  %conv556 = fpext float %div.i876 to double
  br label %if.end558

if.end558:                                        ; preds = %if.else549, %if.then545
  %conv556.sink = phi double [ %conv556, %if.else549 ], [ %add17.i, %if.then545 ]
  %frame_size_planned557 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 59
  store double %conv556.sink, double* %frame_size_planned557, align 8, !tbaa !241
  %single_frame_vbv = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 24
  %164 = load i32, i32* %single_frame_vbv, align 4, !tbaa !117
  %tobool559 = icmp eq i32 %164, 0
  br i1 %tobool559, label %if.end563, label %if.then560

if.then560:                                       ; preds = %if.end558
  %buffer_rate561 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 21
  %165 = load double, double* %buffer_rate561, align 8, !tbaa !114
  %frame_size_planned562 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 59
  store double %165, double* %frame_size_planned562, align 8, !tbaa !241
  br label %if.end563

if.end563:                                        ; preds = %if.end558, %if.then560
  %166 = phi double [ %conv556.sink, %if.end558 ], [ %165, %if.then560 ]
  %b_vbv564 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 2
  %167 = load i32, i32* %b_vbv564, align 8, !tbaa !125
  %tobool565 = icmp eq i32 %167, 0
  br i1 %tobool565, label %if.end578, label %if.then566

if.then566:                                       ; preds = %if.end563
  %frame_size_planned567 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 59
  %frame_size_maximum568 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 58
  %168 = load double, double* %frame_size_maximum568, align 8, !tbaa !249
  %169 = tail call fast double @llvm.minnum.f64(double %166, double %168)
  store double %169, double* %frame_size_planned567, align 8, !tbaa !241
  br label %if.end578

if.end578:                                        ; preds = %if.end563, %if.then566
  %170 = phi double [ %166, %if.end563 ], [ %169, %if.then566 ]
  %conv580 = fptrunc double %170 to float
  %frame_size_estimated581 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 57
  store volatile float %conv580, float* %frame_size_estimated581, align 4, !tbaa !243
  br label %cleanup584

cleanup584:                                       ; preds = %if.end153.thread, %if.then158, %if.end578
  %retval.0 = phi float [ %q.8, %if.end578 ], [ %mul.i, %if.then158 ], [ %mul.i, %if.end153.thread ]
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %1) #13
  ret float %retval.0
}

; Function Attrs: nofree nounwind
define hidden i32 @x264_8_ratecontrol_mb(%struct.x264_t* readonly %h, i32 %bits) local_unnamed_addr #10 {
entry:
  %rc1 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 71
  %0 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc1, align 64, !tbaa !65
  %i_mb_y = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 11
  %1 = load i32, i32* %i_mb_y, align 4, !tbaa !272
  %fdec = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 61
  %2 = load %struct.x264_frame*, %struct.x264_frame** %fdec, align 4, !tbaa !233
  %i_row_bits = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %2, i32 0, i32 70
  %3 = load i32*, i32** %i_row_bits, align 8, !tbaa !234
  %arrayidx = getelementptr inbounds i32, i32* %3, i32 %1
  %4 = load i32, i32* %arrayidx, align 4, !tbaa !55
  %add = add nsw i32 %4, %bits
  store i32 %add, i32* %arrayidx, align 4, !tbaa !55
  %i_qp = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 93
  %5 = load i32, i32* %i_qp, align 32, !tbaa !273
  %qpa_aq = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 14
  %6 = load i32, i32* %qpa_aq, align 8, !tbaa !274
  %add3 = add nsw i32 %6, %5
  store i32 %add3, i32* %qpa_aq, align 8, !tbaa !274
  %i_mb_x = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 10
  %7 = load i32, i32* %i_mb_x, align 16, !tbaa !275
  %i_mb_width = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 0
  %8 = load i32, i32* %i_mb_width, align 64, !tbaa !51
  %sub = add nsw i32 %8, -1
  %cmp = icmp eq i32 %7, %sub
  br i1 %cmp, label %if.end, label %cleanup501

if.end:                                           ; preds = %entry
  %qpm = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 11
  %9 = load float, float* %qpm, align 4, !tbaa !254
  %conv = sitofp i32 %8 to float
  %mul = fmul fast float %9, %conv
  %qpa_rc = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 12
  %10 = load float, float* %qpa_rc, align 8, !tbaa !276
  %add8 = fadd fast float %10, %mul
  store float %add8, float* %qpa_rc, align 8, !tbaa !276
  %b_vbv = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 2
  %11 = load i32, i32* %b_vbv, align 8, !tbaa !125
  %tobool = icmp eq i32 %11, 0
  br i1 %tobool, label %cleanup501, label %if.end10

if.end10:                                         ; preds = %if.end
  %12 = fmul fast float %9, 0x3FC5555560000000
  %div.i = fadd fast float %12, -2.000000e+00
  %exp2.i = tail call fast float @llvm.exp2.f32(float %div.i) #13
  %mul.i = fmul fast float %exp2.i, 0x3FEB333340000000
  %f_row_qp = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %2, i32 0, i32 71
  %13 = load float*, float** %f_row_qp, align 4, !tbaa !235
  %arrayidx14 = getelementptr inbounds float, float* %13, i32 %1
  store float %9, float* %arrayidx14, align 4, !tbaa !45
  %f_row_qscale = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %2, i32 0, i32 72
  %14 = load float*, float** %f_row_qscale, align 16, !tbaa !236
  %arrayidx16 = getelementptr inbounds float, float* %14, i32 %1
  store float %mul.i, float* %arrayidx16, align 4, !tbaa !45
  %row_pred = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 61
  %15 = load %struct.predictor_t*, %struct.predictor_t** %row_pred, align 8, !tbaa !237
  %i_row_satd = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %2, i32 0, i32 69
  %16 = load i32*, i32** %i_row_satd, align 4, !tbaa !277
  %arrayidx19 = getelementptr inbounds i32, i32* %16, i32 %1
  %17 = load i32, i32* %arrayidx19, align 4, !tbaa !55
  %conv20 = sitofp i32 %17 to float
  %18 = load i32, i32* %arrayidx, align 4, !tbaa !55
  %conv24 = sitofp i32 %18 to float
  %cmp.i780 = icmp slt i32 %17, 10
  br i1 %cmp.i780, label %update_predictor.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end10
  %coeff.i = getelementptr inbounds %struct.predictor_t, %struct.predictor_t* %15, i32 0, i32 1
  %19 = load float, float* %coeff.i, align 4, !tbaa !157
  %count.i = getelementptr inbounds %struct.predictor_t, %struct.predictor_t* %15, i32 0, i32 2
  %20 = load float, float* %count.i, align 4, !tbaa !158
  %div.i781 = fdiv fast float %19, %20
  %offset.i = getelementptr inbounds %struct.predictor_t, %struct.predictor_t* %15, i32 0, i32 4
  %21 = load float, float* %offset.i, align 4, !tbaa !160
  %div2.i = fdiv fast float %21, %20
  %mul.i782 = fmul fast float %mul.i, %conv24
  %sub.i = fsub fast float %mul.i782, %div2.i
  %div3.i = fdiv fast float %sub.i, %conv20
  %coeff_min.i = getelementptr inbounds %struct.predictor_t, %struct.predictor_t* %15, i32 0, i32 0
  %22 = load float, float* %coeff_min.i, align 4, !tbaa !155
  %23 = tail call fast float @llvm.maxnum.f32(float %div3.i, float %22) #13
  %div9.i = fmul fast float %div.i781, 0x3FE5555560000000
  %mul11.i = fmul fast float %div.i781, 1.500000e+00
  %cmp.i.i = fcmp fast olt float %23, %div9.i
  %cmp1.i.i = fcmp fast ogt float %23, %mul11.i
  %narrow.sel66.i = select fast i1 %cmp1.i.i, float %mul11.i, float %23
  %narrow.sel.i = select fast i1 %cmp.i.i, float %div9.i, float %narrow.sel66.i
  %mul15.i = fmul fast float %narrow.sel.i, %conv20
  %sub16.i = fsub fast float %mul.i782, %mul15.i
  %cmp17.i = fcmp fast ult float %sub16.i, 0.000000e+00
  %new_coeff.0.i = select i1 %cmp17.i, float %23, float %narrow.sel.i
  %new_offset.0.i = select i1 %cmp17.i, float 0.000000e+00, float %sub16.i
  %decay.i = getelementptr inbounds %struct.predictor_t, %struct.predictor_t* %15, i32 0, i32 3
  %24 = load float, float* %decay.i, align 4, !tbaa !159
  %mul22.i = fmul fast float %24, %20
  %mul25.i = fmul fast float %24, %19
  %mul28.i = fmul fast float %24, %21
  %inc.i = fadd fast float %mul22.i, 1.000000e+00
  store float %inc.i, float* %count.i, align 4, !tbaa !158
  %add.i = fadd fast float %new_coeff.0.i, %mul25.i
  store float %add.i, float* %coeff.i, align 4, !tbaa !157
  %add32.i = fadd fast float %new_offset.0.i, %mul28.i
  store float %add32.i, float* %offset.i, align 4, !tbaa !160
  br label %update_predictor.exit

update_predictor.exit:                            ; preds = %if.end10, %if.end.i
  %i_type = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 51, i32 2
  %25 = load i32, i32* %i_type, align 8, !tbaa !230
  %cmp25 = icmp eq i32 %25, 2
  br i1 %cmp25, label %if.end46, label %land.lhs.true

land.lhs.true:                                    ; preds = %update_predictor.exit
  %26 = load float, float* %qpm, align 4, !tbaa !254
  %arrayidx29 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 63, i32 0, i32 0
  %27 = load %struct.x264_frame*, %struct.x264_frame** %arrayidx29, align 8, !tbaa !59
  %f_row_qp30 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %27, i32 0, i32 71
  %28 = load float*, float** %f_row_qp30, align 4, !tbaa !235
  %arrayidx31 = getelementptr inbounds float, float* %28, i32 %1
  %29 = load float, float* %arrayidx31, align 4, !tbaa !45
  %cmp32 = fcmp fast olt float %26, %29
  br i1 %cmp32, label %if.then34, label %if.end46

if.then34:                                        ; preds = %land.lhs.true
  %arrayidx39 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %2, i32 0, i32 68, i32 0, i32 0
  %30 = load i32*, i32** %arrayidx39, align 4, !tbaa !59
  %arrayidx40 = getelementptr inbounds i32, i32* %30, i32 %1
  %31 = load i32, i32* %arrayidx40, align 4, !tbaa !55
  %conv41 = sitofp i32 %31 to float
  %cmp.i783 = icmp slt i32 %31, 10
  br i1 %cmp.i783, label %if.end46, label %if.end.i811

if.end.i811:                                      ; preds = %if.then34
  %coeff.i784 = getelementptr inbounds %struct.predictor_t, %struct.predictor_t* %15, i32 1, i32 1
  %32 = load float, float* %coeff.i784, align 4, !tbaa !157
  %count.i785 = getelementptr inbounds %struct.predictor_t, %struct.predictor_t* %15, i32 1, i32 2
  %33 = load float, float* %count.i785, align 4, !tbaa !158
  %div.i786 = fdiv fast float %32, %33
  %offset.i787 = getelementptr inbounds %struct.predictor_t, %struct.predictor_t* %15, i32 1, i32 4
  %34 = load float, float* %offset.i787, align 4, !tbaa !160
  %div2.i788 = fdiv fast float %34, %33
  %mul.i789 = fmul fast float %mul.i, %conv24
  %sub.i790 = fsub fast float %mul.i789, %div2.i788
  %div3.i791 = fdiv fast float %sub.i790, %conv41
  %coeff_min.i792 = getelementptr inbounds %struct.predictor_t, %struct.predictor_t* %15, i32 1, i32 0
  %35 = load float, float* %coeff_min.i792, align 4, !tbaa !155
  %36 = tail call fast float @llvm.maxnum.f32(float %div3.i791, float %35) #13
  %div9.i793 = fmul fast float %div.i786, 0x3FE5555560000000
  %mul11.i794 = fmul fast float %div.i786, 1.500000e+00
  %cmp.i.i795 = fcmp fast olt float %36, %div9.i793
  %cmp1.i.i796 = fcmp fast ogt float %36, %mul11.i794
  %narrow.sel66.i797 = select fast i1 %cmp1.i.i796, float %mul11.i794, float %36
  %narrow.sel.i798 = select fast i1 %cmp.i.i795, float %div9.i793, float %narrow.sel66.i797
  %mul15.i799 = fmul fast float %narrow.sel.i798, %conv41
  %sub16.i800 = fsub fast float %mul.i789, %mul15.i799
  %cmp17.i801 = fcmp fast ult float %sub16.i800, 0.000000e+00
  %new_coeff.0.i802 = select i1 %cmp17.i801, float %36, float %narrow.sel.i798
  %new_offset.0.i803 = select i1 %cmp17.i801, float 0.000000e+00, float %sub16.i800
  %decay.i804 = getelementptr inbounds %struct.predictor_t, %struct.predictor_t* %15, i32 1, i32 3
  %37 = load float, float* %decay.i804, align 4, !tbaa !159
  %mul22.i805 = fmul fast float %37, %33
  %mul25.i806 = fmul fast float %37, %32
  %mul28.i807 = fmul fast float %37, %34
  %inc.i808 = fadd fast float %mul22.i805, 1.000000e+00
  store float %inc.i808, float* %count.i785, align 4, !tbaa !158
  %add.i809 = fadd fast float %new_coeff.0.i802, %mul25.i806
  store float %add.i809, float* %coeff.i784, align 4, !tbaa !157
  %add32.i810 = fadd fast float %new_offset.0.i803, %mul28.i807
  store float %add32.i810, float* %offset.i787, align 4, !tbaa !160
  br label %if.end46

if.end46:                                         ; preds = %if.end.i811, %if.then34, %update_predictor.exit, %land.lhs.true
  %i_first_mb = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 51, i32 3
  %38 = load i32, i32* %i_first_mb, align 4, !tbaa !278
  %39 = load i32, i32* %i_mb_y, align 4, !tbaa !272
  %i_mb_stride = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 5
  %40 = load i32, i32* %i_mb_stride, align 4, !tbaa !52
  %mul52 = mul nsw i32 %40, %39
  %cmp53 = icmp sle i32 %38, %mul52
  %41 = load float, float* %arrayidx14, align 4, !tbaa !45
  %i_qp_max = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 3
  %42 = load i32, i32* %i_qp_max, align 4, !tbaa !153
  %conv59 = sitofp i32 %42 to float
  %rate_factor_max_increment = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 25
  %43 = load float, float* %rate_factor_max_increment, align 8, !tbaa !121
  %tobool60 = fcmp fast une float %43, 0.000000e+00
  br i1 %tobool60, label %if.then61, label %if.end69

if.then61:                                        ; preds = %if.end46
  %qp_novbv = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 16
  %44 = load float, float* %qp_novbv, align 8, !tbaa !261
  %add63 = fadd fast float %44, %43
  %cmp64 = fcmp fast ogt float %add63, %conv59
  %conv59.add63 = select fast i1 %cmp64, float %conv59, float %add63
  br label %if.end69

if.end69:                                         ; preds = %if.then61, %if.end46
  %qp_absolute_max.0 = phi float [ %conv59.add63, %if.then61 ], [ %conv59, %if.end46 ]
  %i_qp_step = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 4
  %45 = load i32, i32* %i_qp_step, align 8, !tbaa !146
  %conv72 = sitofp i32 %45 to float
  %add73 = fadd fast float %41, %conv72
  %46 = tail call fast float @llvm.minnum.f32(float %add73, float %qp_absolute_max.0)
  %sub89 = fsub fast float %41, %conv72
  %i_qp_min = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 2
  %47 = load i32, i32* %i_qp_min, align 8, !tbaa !152
  %conv92 = sitofp i32 %47 to float
  %48 = tail call fast float @llvm.maxnum.f32(float %sub89, float %conv92)
  %b_sliced_threads = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 3
  %49 = load i32, i32* %b_sliced_threads, align 4, !tbaa !149
  %tobool109 = icmp eq i32 %49, 0
  %slice_size_planned111 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 60
  %frame_size_planned = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 59
  %cond114.in = select i1 %tobool109, double* %frame_size_planned, double* %slice_size_planned111
  %cond114 = load double, double* %cond114.in, align 8, !tbaa !154
  %conv115 = fptrunc double %cond114 to float
  %i_threadslice_start.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 7
  %50 = load i32, i32* %i_threadslice_start.i, align 4, !tbaa !279
  %cmp7.i = icmp sgt i32 %50, %1
  br i1 %cmp7.i, label %row_bits_so_far.exit, label %for.body.i

for.body.i:                                       ; preds = %if.end69, %for.body.i
  %i.09.i = phi i32 [ %inc.i814, %for.body.i ], [ %50, %if.end69 ]
  %bits.08.i = phi i32 [ %add.i813, %for.body.i ], [ 0, %if.end69 ]
  %arrayidx.i = getelementptr inbounds i32, i32* %3, i32 %i.09.i
  %51 = load i32, i32* %arrayidx.i, align 4, !tbaa !55
  %add.i813 = add nsw i32 %51, %bits.08.i
  %inc.i814 = add nsw i32 %i.09.i, 1
  %cmp.i815 = icmp slt i32 %i.09.i, %1
  br i1 %cmp.i815, label %for.body.i, label %row_bits_so_far.exit.loopexit

row_bits_so_far.exit.loopexit:                    ; preds = %for.body.i
  %phitmp = sitofp i32 %add.i813 to float
  br label %row_bits_so_far.exit

row_bits_so_far.exit:                             ; preds = %row_bits_so_far.exit.loopexit, %if.end69
  %bits.0.lcssa.i = phi float [ 0.000000e+00, %if.end69 ], [ %phitmp, %row_bits_so_far.exit.loopexit ]
  %i_mb_height = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 1
  %52 = load i32, i32* %i_mb_height, align 4, !tbaa !50
  %conv119 = sitofp i32 %52 to double
  %div = fdiv fast double 1.000000e+00, %conv119
  %cmp1.i817 = fcmp fast ogt double %div, 2.500000e-01
  %cond.i818 = select fast i1 %cmp1.i817, double 2.500000e-01, double %div
  %53 = tail call fast double @llvm.maxnum.f64(double %cond.i818, double 5.000000e-02)
  %conv121 = fptrunc double %53 to float
  %frame_size_maximum = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 58
  %54 = load double, double* %frame_size_maximum, align 8, !tbaa !249
  %conv123 = fpext float %conv121 to double
  %mul124 = fmul fast double %54, %conv123
  %sub125 = fsub fast double %54, %mul124
  %conv126 = fptrunc double %sub125 to float
  %conv127 = fpext float %conv126 to double
  %buffer_fill = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 20
  %55 = load double, double* %buffer_fill, align 8, !tbaa !239
  %buffer_rate = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 21
  %56 = load double, double* %buffer_rate, align 8, !tbaa !114
  %mul129 = fmul fast double %56, %conv123
  %sub130 = fsub fast double %55, %mul129
  %cmp131 = fcmp fast ogt double %sub130, %conv127
  %57 = fptrunc double %sub130 to float
  %narrow.sel = select fast i1 %cmp131, float %conv126, float %57
  br i1 %tobool109, label %if.end174, label %for.cond.preheader

for.cond.preheader:                               ; preds = %row_bits_so_far.exit
  %i_threads = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 1
  %58 = load i32, i32* %i_threads, align 4, !tbaa !126
  %cmp149855 = icmp sgt i32 %58, 0
  br i1 %cmp149855, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.inc, %for.cond.preheader
  %size_of_other_slices.0.lcssa = phi float [ 0.000000e+00, %for.cond.preheader ], [ %size_of_other_slices.1, %for.inc ]
  %size_of_other_slices_planned.0.lcssa = phi float [ 0.000000e+00, %for.cond.preheader ], [ %size_of_other_slices_planned.1, %for.inc ]
  %59 = load double, double* %slice_size_planned111, align 8, !tbaa !280
  %60 = load double, double* %frame_size_planned, align 8, !tbaa !241
  %div169 = fdiv fast double %59, %60
  %conv170 = fptrunc double %div169 to float
  %sub171 = fsub fast float %size_of_other_slices.0.lcssa, %size_of_other_slices_planned.0.lcssa
  %mul172 = fmul fast float %sub171, %conv170
  %add173 = fadd fast float %mul172, %size_of_other_slices_planned.0.lcssa
  br label %if.end174

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %i.0858 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %size_of_other_slices_planned.0857 = phi float [ %size_of_other_slices_planned.1, %for.inc ], [ 0.000000e+00, %for.cond.preheader ]
  %size_of_other_slices.0856 = phi float [ %size_of_other_slices.1, %for.inc ], [ 0.000000e+00, %for.cond.preheader ]
  %arrayidx151 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 2, i32 %i.0858
  %61 = load %struct.x264_t*, %struct.x264_t** %arrayidx151, align 4, !tbaa !59
  %cmp152 = icmp eq %struct.x264_t* %61, %h
  br i1 %cmp152, label %for.inc, label %if.then154

if.then154:                                       ; preds = %for.body
  %rc157 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %61, i32 0, i32 71
  %62 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc157, align 64, !tbaa !65
  %frame_size_estimated = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %62, i32 0, i32 57
  %63 = load volatile float, float* %frame_size_estimated, align 4, !tbaa !243
  %add158 = fadd fast float %63, %size_of_other_slices.0856
  %slice_size_planned162 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %62, i32 0, i32 60
  %64 = load double, double* %slice_size_planned162, align 8, !tbaa !280
  %conv163 = fpext float %size_of_other_slices_planned.0857 to double
  %add164 = fadd fast double %64, %conv163
  %conv165 = fptrunc double %add164 to float
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then154
  %size_of_other_slices.1 = phi float [ %add158, %if.then154 ], [ %size_of_other_slices.0856, %for.body ]
  %size_of_other_slices_planned.1 = phi float [ %conv165, %if.then154 ], [ %size_of_other_slices_planned.0857, %for.body ]
  %inc = add nuw nsw i32 %i.0858, 1
  %cmp149 = icmp slt i32 %inc, %58
  br i1 %cmp149, label %for.body, label %for.cond.cleanup

if.end174:                                        ; preds = %row_bits_so_far.exit, %for.cond.cleanup
  %size_of_other_slices.2 = phi float [ %add173, %for.cond.cleanup ], [ 0.000000e+00, %row_bits_so_far.exit ]
  %i_threadslice_end = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 8
  %65 = load i32, i32* %i_threadslice_end, align 8, !tbaa !281
  %sub175 = add nsw i32 %65, -1
  %cmp176 = icmp slt i32 %1, %sub175
  br i1 %cmp176, label %if.then178, label %if.else

if.then178:                                       ; preds = %if.end174
  %cmp181 = icmp eq i32 %25, 1
  br i1 %cmp181, label %if.then183, label %if.then178.if.end259_crit_edge

if.then178.if.end259_crit_edge:                   ; preds = %if.then178
  %.pre = load float, float* %qpm, align 4, !tbaa !254
  br label %if.end259

if.then183:                                       ; preds = %if.then178
  %arrayidx186 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 63, i32 0, i32 0
  %66 = load %struct.x264_frame*, %struct.x264_frame** %arrayidx186, align 8, !tbaa !59
  %f_row_qp187 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %66, i32 0, i32 71
  %67 = load float*, float** %f_row_qp187, align 4, !tbaa !235
  %add188 = add nsw i32 %1, 1
  %arrayidx189 = getelementptr inbounds float, float* %67, i32 %add188
  %68 = load float, float* %arrayidx189, align 4, !tbaa !45
  %arrayidx192 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 63, i32 1, i32 0
  %69 = load %struct.x264_frame*, %struct.x264_frame** %arrayidx192, align 4, !tbaa !59
  %f_row_qp193 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %69, i32 0, i32 71
  %70 = load float*, float** %f_row_qp193, align 4, !tbaa !235
  %arrayidx195 = getelementptr inbounds float, float* %70, i32 %add188
  %71 = load float, float* %arrayidx195, align 4, !tbaa !45
  %72 = tail call fast float @llvm.maxnum.f32(float %68, float %71)
  %73 = tail call fast float @llvm.maxnum.f32(float %48, float %72)
  %74 = load float, float* %qpm, align 4, !tbaa !254
  %75 = tail call fast float @llvm.maxnum.f32(float %74, float %73)
  store float %75, float* %qpm, align 4, !tbaa !254
  br label %if.end259

if.end259:                                        ; preds = %if.then178.if.end259_crit_edge, %if.then183
  %76 = phi float [ %75, %if.then183 ], [ %.pre, %if.then178.if.end259_crit_edge ]
  %qp_min.0 = phi float [ %73, %if.then183 ], [ %48, %if.then178.if.end259_crit_edge ]
  %77 = load double, double* %frame_size_planned, align 8, !tbaa !241
  %sub262 = fsub fast double %55, %77
  %conv263 = fptrunc double %sub262 to float
  %78 = tail call fast float @llvm.maxnum.f32(float %conv263, float 0.000000e+00)
  %i_threads271 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 1
  %79 = load i32, i32* %i_threads271, align 4, !tbaa !126
  %conv272 = sitofp i32 %79 to float
  %div273 = fdiv fast float %78, %conv272
  %conv274 = fpext float %div273 to double
  %rate_tolerance = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 6
  %80 = load double, double* %rate_tolerance, align 8, !tbaa !132
  %mul275 = fmul fast double %80, %conv274
  %conv276 = fptrunc double %mul275 to float
  %call278 = tail call fast fastcc float @predict_row_size_to_end(%struct.x264_t* nonnull %h, i32 %1, float %76)
  %div281 = fdiv fast float %bits.0.lcssa.i, %conv115
  %conv282 = fpext float %div281 to double
  %cmp1.i821 = fcmp fast ogt double %conv282, 1.000000e+00
  %cond.i822 = select fast i1 %cmp1.i821, double 1.000000e+00, double %conv282
  %81 = tail call fast double @llvm.maxnum.f64(double %cond.i822, double 0.000000e+00)
  %conv284 = fptrunc double %81 to float
  %cmp285 = fcmp fast olt float %conv284, 0x3FA99999A0000000
  %qp_max.0 = select i1 %cmp285, float %41, float %46
  %qp_absolute_max.1 = select i1 %cmp285, float %41, float %qp_absolute_max.0
  %mul294 = fmul fast float %conv276, 5.000000e-01
  %spec.select = select i1 %cmp25, float %conv276, float %mul294
  %b_vbv_min_rate = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 3
  %82 = load i32, i32* %b_vbv_min_rate, align 4, !tbaa !91
  %tobool296 = icmp eq i32 %82, 0
  br i1 %tobool296, label %if.then297, label %if.end306

if.then297:                                       ; preds = %if.end259
  %qp_novbv298 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 16
  %83 = load float, float* %qp_novbv298, align 8, !tbaa !261
  %84 = tail call fast float @llvm.maxnum.f32(float %qp_min.0, float %83)
  br label %if.end306

if.end306:                                        ; preds = %if.end259, %if.then297
  %qp_min.1 = phi float [ %qp_min.0, %if.end259 ], [ %84, %if.then297 ]
  %add279.pn = fadd fast float %size_of_other_slices.2, %bits.0.lcssa.i
  %b1.0848 = fadd fast float %add279.pn, %call278
  %cmp308849 = fcmp fast olt float %76, %qp_max.0
  br i1 %cmp308849, label %land.rhs.lr.ph, label %while.end

land.rhs.lr.ph:                                   ; preds = %if.end306
  %conv312 = fpext float %spec.select to double
  %add313 = fadd fast double %77, %conv312
  %qp_novbv322 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 16
  %mul327 = fmul fast float %78, 5.000000e-01
  %conv328 = fpext float %mul327 to double
  %sub329 = fsub fast double %55, %conv328
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %while.body
  %85 = phi float [ %76, %land.rhs.lr.ph ], [ %add333, %while.body ]
  %b1.0850 = phi float [ %b1.0848, %land.rhs.lr.ph ], [ %b1.0, %while.body ]
  %conv310 = fpext float %b1.0850 to double
  %cmp314 = fcmp fast olt double %add313, %conv310
  br i1 %cmp314, label %while.body, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.rhs
  %cmp318 = fcmp fast olt double %77, %conv310
  br i1 %cmp318, label %land.lhs.true320, label %lor.rhs

land.lhs.true320:                                 ; preds = %lor.lhs.false
  %86 = load float, float* %qp_novbv322, align 8, !tbaa !261
  %cmp323 = fcmp fast olt float %85, %86
  %cmp330 = fcmp fast olt double %sub329, %conv310
  %or.cond861 = or i1 %cmp323, %cmp330
  br i1 %or.cond861, label %while.body, label %while.end

lor.rhs:                                          ; preds = %lor.lhs.false
  %cmp330.old = fcmp fast olt double %sub329, %conv310
  br i1 %cmp330.old, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs, %land.lhs.true320, %lor.rhs
  %add333 = fadd fast float %85, 5.000000e-01
  store float %add333, float* %qpm, align 4, !tbaa !254
  %call335 = tail call fast fastcc float @predict_row_size_to_end(%struct.x264_t* %h, i32 %1, float %add333)
  %b1.0 = fadd fast float %add279.pn, %call335
  %cmp308 = fcmp fast olt float %add333, %qp_max.0
  br i1 %cmp308, label %land.rhs, label %while.end

while.end:                                        ; preds = %lor.rhs, %land.lhs.true320, %while.body, %if.end306
  %b1.0.lcssa = phi float [ %b1.0848, %if.end306 ], [ %b1.0, %while.body ], [ %b1.0850, %lor.rhs ], [ %b1.0850, %land.lhs.true320 ]
  %.lcssa830 = phi float [ %76, %if.end306 ], [ %add333, %while.body ], [ %85, %lor.rhs ], [ %85, %land.lhs.true320 ]
  %conv338 = fpext float %b1.0.lcssa to double
  %buffer_size = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 17
  %87 = load double, double* %buffer_size, align 8, !tbaa !116
  %sub340 = fadd fast double %56, %55
  %add342 = fsub fast double %sub340, %87
  %mul343 = fmul fast double %add342, 0x3FECCCCCC0000000
  %sub345 = fsub fast double %mul343, %conv338
  %conv346 = fpext float %conv284 to double
  %mul347 = fmul fast double %sub345, %conv346
  %add348 = fadd fast double %mul347, %conv338
  %conv349 = fptrunc double %add348 to float
  %sub351 = fadd fast float %.lcssa830, -5.000000e-01
  store float %sub351, float* %qpm, align 4, !tbaa !254
  %cmp358835 = fcmp fast ogt float %sub351, %qp_min.1
  %cmp362836 = fcmp fast olt float %sub351, %41
  %or.cond776837 = and i1 %cmp358835, %cmp362836
  br i1 %or.cond776837, label %land.lhs.true364.lr.ph, label %while.end394

land.lhs.true364.lr.ph:                           ; preds = %while.end
  %call353 = tail call fast fastcc float @predict_row_size_to_end(%struct.x264_t* %h, i32 %1, float %sub351)
  %single_frame_vbv = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 24
  %mul379 = fmul fast double %77, 0x3FE99999A0000000
  br label %land.lhs.true364

land.lhs.true364:                                 ; preds = %land.lhs.true364.lr.ph, %while.body387
  %88 = phi float [ %sub351, %land.lhs.true364.lr.ph ], [ %sub389, %while.body387 ]
  %call353.pn = phi float [ %call353, %land.lhs.true364.lr.ph ], [ %call391, %while.body387 ]
  %b1.1838 = phi float [ %b1.0.lcssa, %land.lhs.true364.lr.ph ], [ %b2.0839, %while.body387 ]
  %b2.0839 = fadd fast float %add279.pn, %call353.pn
  %89 = load float, float* %13, align 4, !tbaa !45
  %cmp369 = fcmp fast ogt float %88, %89
  br i1 %cmp369, label %land.lhs.true373, label %lor.lhs.false371

lor.lhs.false371:                                 ; preds = %land.lhs.true364
  %90 = load i32, i32* %single_frame_vbv, align 4, !tbaa !117
  %tobool372 = icmp ne i32 %90, 0
  %cmp374 = fcmp fast olt float %b2.0839, %narrow.sel
  %or.cond777 = and i1 %cmp374, %tobool372
  br i1 %or.cond777, label %land.rhs376, label %while.end394

land.lhs.true373:                                 ; preds = %land.lhs.true364
  %cmp374.old = fcmp fast olt float %b2.0839, %narrow.sel
  br i1 %cmp374.old, label %land.rhs376, label %while.end394

land.rhs376:                                      ; preds = %lor.lhs.false371, %land.lhs.true373
  %conv377 = fpext float %b2.0839 to double
  %cmp380 = fcmp fast ogt double %mul379, %conv377
  %cmp383 = fcmp fast olt float %b2.0839, %conv349
  %91 = or i1 %cmp383, %cmp380
  br i1 %91, label %while.body387, label %while.end394

while.body387:                                    ; preds = %land.rhs376
  %sub389 = fadd fast float %88, -5.000000e-01
  store float %sub389, float* %qpm, align 4, !tbaa !254
  %call391 = tail call fast fastcc float @predict_row_size_to_end(%struct.x264_t* %h, i32 %1, float %sub389)
  %cmp358 = fcmp fast ogt float %sub389, %qp_min.1
  %cmp362 = fcmp fast olt float %sub389, %41
  %or.cond776 = and i1 %cmp358, %cmp362
  br i1 %or.cond776, label %land.lhs.true364, label %while.end394

while.end394:                                     ; preds = %land.rhs376, %land.lhs.true373, %while.body387, %lor.lhs.false371, %while.end
  %b1.1.lcssa = phi float [ %b1.0.lcssa, %while.end ], [ %b1.1838, %lor.lhs.false371 ], [ %b2.0839, %while.body387 ], [ %b1.1838, %land.lhs.true373 ], [ %b1.1838, %land.rhs376 ]
  %.lcssa829 = phi float [ %sub351, %while.end ], [ %88, %lor.lhs.false371 ], [ %sub389, %while.body387 ], [ %88, %land.lhs.true373 ], [ %88, %land.rhs376 ]
  %add396 = fadd fast float %.lcssa829, 5.000000e-01
  store float %add396, float* %qpm, align 4, !tbaa !254
  %cmp399831 = fcmp fast olt float %add396, %qp_absolute_max.1
  %cmp402832 = fcmp fast ogt float %b1.1.lcssa, %narrow.sel
  %92 = and i1 %cmp402832, %cmp399831
  br i1 %92, label %while.body405, label %while.end412

while.body405:                                    ; preds = %while.end394, %while.body405
  %93 = phi float [ %add407, %while.body405 ], [ %add396, %while.end394 ]
  %add407 = fadd fast float %93, 5.000000e-01
  store float %add407, float* %qpm, align 4, !tbaa !254
  %call409 = tail call fast fastcc float @predict_row_size_to_end(%struct.x264_t* %h, i32 %1, float %add407)
  %add411 = fadd fast float %add279.pn, %call409
  %cmp399 = fcmp fast olt float %add407, %qp_absolute_max.1
  %cmp402 = fcmp fast ogt float %add411, %narrow.sel
  %94 = and i1 %cmp402, %cmp399
  br i1 %94, label %while.body405, label %while.end412

while.end412:                                     ; preds = %while.body405, %while.end394
  %b1.2.lcssa = phi float [ %b1.1.lcssa, %while.end394 ], [ %add411, %while.body405 ]
  %.lcssa = phi float [ %add396, %while.end394 ], [ %add407, %while.body405 ]
  %sub413 = fsub fast float %b1.2.lcssa, %size_of_other_slices.2
  %frame_size_estimated414 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 57
  store volatile float %sub413, float* %frame_size_estimated414, align 4, !tbaa !243
  %cmp416 = fcmp fast ogt float %.lcssa, %qp_max.0
  %cmp419 = fcmp fast olt float %41, %qp_max.0
  %or.cond = and i1 %cmp53, %cmp419
  %or.cond778 = and i1 %or.cond, %cmp416
  br i1 %or.cond778, label %if.then423, label %if.end484

if.then423:                                       ; preds = %while.end412
  %add425 = fadd fast float %.lcssa, %41
  %mul426 = fmul fast float %add425, 5.000000e-01
  %add428 = fadd fast float %41, 1.000000e+00
  %cmp.i = fcmp fast olt float %mul426, %add428
  %cmp1.i = fcmp fast ogt float %mul426, %qp_max.0
  %narrow.sel828 = select fast i1 %cmp1.i, float %qp_max.0, float %mul426
  %narrow.sel827 = select fast i1 %cmp.i, float %add428, float %narrow.sel828
  store float %narrow.sel827, float* %qpm, align 4, !tbaa !254
  %qpa_rc_prev = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 13
  %95 = bitcast float* %qpa_rc_prev to i32*
  %96 = load i32, i32* %95, align 4, !tbaa !282
  %97 = bitcast float* %qpa_rc to i32*
  store i32 %96, i32* %97, align 8, !tbaa !276
  %qpa_aq_prev = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 15
  %98 = load i32, i32* %qpa_aq_prev, align 4, !tbaa !283
  store i32 %98, i32* %qpa_aq, align 8, !tbaa !274
  store i32 0, i32* %arrayidx, align 4, !tbaa !55
  br label %cleanup501

if.else:                                          ; preds = %if.end174
  %frame_size_estimated449 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 57
  store volatile float %bits.0.lcssa.i, float* %frame_size_estimated449, align 4, !tbaa !243
  %99 = load float, float* %qpm, align 4, !tbaa !254
  %cmp451 = fcmp fast olt float %99, %46
  %or.cond508 = and i1 %cmp53, %cmp451
  br i1 %or.cond508, label %land.lhs.true455, label %if.end484

land.lhs.true455:                                 ; preds = %if.else
  %add456 = fadd fast float %size_of_other_slices.2, %bits.0.lcssa.i
  %conv457 = fpext float %add456 to double
  %100 = tail call fast double @llvm.minnum.f64(double %54, double %55)
  %cmp468 = fcmp fast olt double %100, %conv457
  br i1 %cmp468, label %if.then470, label %if.end484

if.then470:                                       ; preds = %land.lhs.true455
  store float %46, float* %qpm, align 4, !tbaa !254
  %qpa_rc_prev472 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 13
  %101 = bitcast float* %qpa_rc_prev472 to i32*
  %102 = load i32, i32* %101, align 4, !tbaa !282
  %103 = bitcast float* %qpa_rc to i32*
  store i32 %102, i32* %103, align 8, !tbaa !276
  %qpa_aq_prev474 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 15
  %104 = load i32, i32* %qpa_aq_prev474, align 4, !tbaa !283
  store i32 %104, i32* %qpa_aq, align 8, !tbaa !274
  store i32 0, i32* %arrayidx, align 4, !tbaa !55
  br label %cleanup501

if.end484:                                        ; preds = %while.end412, %if.else, %land.lhs.true455
  %105 = bitcast float* %qpa_rc to i32*
  %106 = load i32, i32* %105, align 8, !tbaa !276
  %qpa_rc_prev486 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 13
  %107 = bitcast float* %qpa_rc_prev486 to i32*
  store i32 %106, i32* %107, align 4, !tbaa !282
  %qpa_aq_prev488 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 15
  store i32 %add3, i32* %qpa_aq_prev488, align 4, !tbaa !283
  br label %cleanup501

cleanup501:                                       ; preds = %if.then470, %if.end484, %if.then423, %if.end, %entry
  %retval.2 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end484 ], [ -1, %if.then470 ], [ -1, %if.then423 ]
  ret i32 %retval.2
}

; Function Attrs: nounwind readonly
define internal fastcc float @predict_row_size_to_end(%struct.x264_t* nocapture readonly %h, i32 %y, float %qp) unnamed_addr #11 {
entry:
  %0 = fmul fast float %qp, 0x3FC5555560000000
  %div.i = fadd fast float %0, -2.000000e+00
  %exp2.i = tail call fast float @llvm.exp2.f32(float %div.i) #13
  %mul.i = fmul fast float %exp2.i, 0x3FEB333340000000
  %i.012 = add nsw i32 %y, 1
  %i_threadslice_end = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 8
  %1 = load i32, i32* %i_threadslice_end, align 8, !tbaa !281
  %cmp13 = icmp slt i32 %i.012, %1
  br i1 %cmp13, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %entry
  %rc1.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 71
  %2 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc1.i, align 64, !tbaa !65
  %row_pred.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %2, i32 0, i32 61
  %3 = load %struct.predictor_t*, %struct.predictor_t** %row_pred.i, align 8, !tbaa !237
  %fdec.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 61
  %4 = load %struct.x264_frame*, %struct.x264_frame** %fdec.i, align 4, !tbaa !233
  %i_row_satd.i = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %4, i32 0, i32 69
  %5 = load i32*, i32** %i_row_satd.i, align 4, !tbaa !277
  %.idx.i = getelementptr %struct.predictor_t, %struct.predictor_t* %3, i32 0, i32 1
  %.idx.val.i = load float, float* %.idx.i, align 4, !tbaa !157
  %.idx125.i = getelementptr %struct.predictor_t, %struct.predictor_t* %3, i32 0, i32 2
  %.idx125.val.i = load float, float* %.idx125.i, align 4, !tbaa !158
  %.idx126.i = getelementptr %struct.predictor_t, %struct.predictor_t* %3, i32 0, i32 4
  %.idx126.val.i = load float, float* %.idx126.i, align 4, !tbaa !160
  %mul1.i.i = fmul fast float %.idx125.val.i, %mul.i
  %6 = fdiv fast float 1.000000e+00, %mul1.i.i
  %i_type.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 51, i32 2
  %7 = load i32, i32* %i_type.i, align 8, !tbaa !230
  %cmp.i = icmp eq i32 %7, 2
  %cmp11.i = icmp eq i32 %7, 0
  %i_type18.i = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %4, i32 0, i32 3
  %arrayidx79.i = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %4, i32 0, i32 68, i32 0, i32 0
  %arrayidx76.idx.i = getelementptr %struct.predictor_t, %struct.predictor_t* %3, i32 1, i32 1
  %arrayidx76.idx123.i = getelementptr %struct.predictor_t, %struct.predictor_t* %3, i32 1, i32 2
  %arrayidx76.idx124.i = getelementptr %struct.predictor_t, %struct.predictor_t* %3, i32 1, i32 4
  br i1 %cmp.i, label %for.body.us, label %for.body.preheader

for.body.preheader:                               ; preds = %for.body.lr.ph
  %arrayidx5.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 63, i32 0, i32 0
  %.pre = load %struct.x264_frame*, %struct.x264_frame** %arrayidx5.i, align 8, !tbaa !59
  %f_row_qscale.i.phi.trans.insert = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %.pre, i32 0, i32 72
  %.pre17 = load float*, float** %f_row_qscale.i.phi.trans.insert, align 16, !tbaa !236
  %i_type16.i = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %.pre, i32 0, i32 3
  %i_row_satd33.i = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %.pre, i32 0, i32 69
  %i_row_bits.i = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %.pre, i32 0, i32 70
  %8 = fdiv fast float 1.000000e+00, %exp2.i
  br label %for.body

for.body.us:                                      ; preds = %for.body.lr.ph, %for.body.us
  %i.015.us = phi i32 [ %i.0.us, %for.body.us ], [ %i.012, %for.body.lr.ph ]
  %bits.014.us = phi float [ %add2.us, %for.body.us ], [ 0.000000e+00, %for.body.lr.ph ]
  %arrayidx2.i.us = getelementptr inbounds i32, i32* %5, i32 %i.015.us
  %9 = load i32, i32* %arrayidx2.i.us, align 4, !tbaa !55
  %conv.i.us = sitofp i32 %9 to float
  %mul.i.i.us = fmul fast float %.idx.val.i, %conv.i.us
  %add.i.i.us = fadd fast float %.idx126.val.i, %mul.i.i.us
  %10 = fmul fast float %add.i.i.us, %6
  %add2.us = fadd fast float %10, %bits.014.us
  %i.0.us = add nsw i32 %i.015.us, 1
  %cmp.us = icmp slt i32 %i.0.us, %1
  br i1 %cmp.us, label %for.body.us, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %predict_row_size.exit, %for.body.us, %entry
  %bits.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %add2.us, %for.body.us ], [ %add2, %predict_row_size.exit ]
  ret float %bits.0.lcssa

for.body:                                         ; preds = %for.body.preheader, %predict_row_size.exit
  %i.015 = phi i32 [ %i.0, %predict_row_size.exit ], [ %i.012, %for.body.preheader ]
  %bits.014 = phi float [ %add2, %predict_row_size.exit ], [ 0.000000e+00, %for.body.preheader ]
  %arrayidx2.i = getelementptr inbounds i32, i32* %5, i32 %i.015
  %11 = load i32, i32* %arrayidx2.i, align 4, !tbaa !55
  %conv.i = sitofp i32 %11 to float
  %mul.i.i = fmul fast float %.idx.val.i, %conv.i
  %add.i.i = fadd fast float %.idx126.val.i, %mul.i.i
  %12 = fmul fast float %add.i.i, %6
  %arrayidx6.i = getelementptr inbounds float, float* %.pre17, i32 %i.015
  %13 = load float, float* %arrayidx6.i, align 4, !tbaa !45
  %cmp7.i = fcmp fast ugt float %13, %mul.i
  br i1 %cmp7.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  br i1 %cmp11.i, label %land.lhs.true.i, label %predict_row_size.exit

land.lhs.true.i:                                  ; preds = %if.then.i
  %14 = load i32, i32* %i_type16.i, align 16, !tbaa !259
  %15 = load i32, i32* %i_type18.i, align 16, !tbaa !259
  %cmp19.i = icmp eq i32 %14, %15
  %cmp27.i = fcmp fast ogt float %13, 0.000000e+00
  %or.cond.i = and i1 %cmp27.i, %cmp19.i
  br i1 %or.cond.i, label %land.lhs.true29.i, label %predict_row_size.exit

land.lhs.true29.i:                                ; preds = %land.lhs.true.i
  %16 = load i32*, i32** %i_row_satd33.i, align 4, !tbaa !277
  %arrayidx34.i = getelementptr inbounds i32, i32* %16, i32 %i.015
  %17 = load i32, i32* %arrayidx34.i, align 4, !tbaa !55
  %cmp35.i = icmp sgt i32 %17, 0
  br i1 %cmp35.i, label %land.lhs.true37.i, label %predict_row_size.exit

land.lhs.true37.i:                                ; preds = %land.lhs.true29.i
  %sub.i = sub nsw i32 %17, %11
  %18 = icmp slt i32 %sub.i, 0
  %neg.i = sub nsw i32 0, %sub.i
  %19 = select i1 %18, i32 %neg.i, i32 %sub.i
  %div.i10 = sdiv i32 %11, 2
  %cmp50.i = icmp slt i32 %19, %div.i10
  br i1 %cmp50.i, label %if.then52.i, label %predict_row_size.exit

if.then52.i:                                      ; preds = %land.lhs.true37.i
  %20 = load i32*, i32** %i_row_bits.i, align 8, !tbaa !234
  %arrayidx56.i = getelementptr inbounds i32, i32* %20, i32 %i.015
  %21 = load i32, i32* %arrayidx56.i, align 4, !tbaa !55
  %mul.i11 = mul nsw i32 %21, %11
  %div65.i = sdiv i32 %mul.i11, %17
  %conv66.i = sitofp i32 %div65.i to float
  %mul72.i = fmul fast float %13, %conv66.i
  %22 = fmul fast float %mul72.i, 0x3FF2D2D2C0000000
  %23 = fmul fast float %22, %8
  %add.i = fadd fast float %23, %12
  %mul74.i = fmul fast float %add.i, 5.000000e-01
  br label %predict_row_size.exit

if.else.i:                                        ; preds = %for.body
  %24 = load i32*, i32** %arrayidx79.i, align 4, !tbaa !59
  %arrayidx80.i = getelementptr inbounds i32, i32* %24, i32 %i.015
  %25 = load i32, i32* %arrayidx80.i, align 4, !tbaa !55
  %conv81.i = sitofp i32 %25 to float
  %arrayidx76.idx.val.i = load float, float* %arrayidx76.idx.i, align 4, !tbaa !157
  %arrayidx76.idx123.val.i = load float, float* %arrayidx76.idx123.i, align 4, !tbaa !158
  %arrayidx76.idx124.val.i = load float, float* %arrayidx76.idx124.i, align 4, !tbaa !160
  %mul.i127.i = fmul fast float %arrayidx76.idx.val.i, %conv81.i
  %add.i128.i = fadd fast float %arrayidx76.idx124.val.i, %mul.i127.i
  %mul1.i129.i = fmul fast float %arrayidx76.idx123.val.i, %mul.i
  %div.i130.i = fdiv fast float %add.i128.i, %mul1.i129.i
  %add83.i = fadd fast float %div.i130.i, %12
  br label %predict_row_size.exit

predict_row_size.exit:                            ; preds = %if.then.i, %land.lhs.true.i, %land.lhs.true29.i, %land.lhs.true37.i, %if.then52.i, %if.else.i
  %retval.0.i = phi float [ %mul74.i, %if.then52.i ], [ %add83.i, %if.else.i ], [ %12, %land.lhs.true37.i ], [ %12, %land.lhs.true29.i ], [ %12, %land.lhs.true.i ], [ %12, %if.then.i ]
  %add2 = fadd fast float %retval.0.i, %bits.014
  %i.0 = add nsw i32 %i.015, 1
  %cmp = icmp slt i32 %i.0, %1
  br i1 %cmp, label %for.body, label %for.cond.cleanup
}

; Function Attrs: norecurse nounwind readonly
define hidden i32 @x264_8_ratecontrol_qp(%struct.x264_t* nocapture readonly %h) local_unnamed_addr #12 {
entry:
  %rc = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 71
  %0 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc, align 64, !tbaa !65
  %qpm = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 11
  %1 = load float, float* %qpm, align 4, !tbaa !254
  %add = fadd fast float %1, 5.000000e-01
  %conv = fptosi float %add to i32
  %i_qp_min = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 2
  %2 = load i32, i32* %i_qp_min, align 8, !tbaa !152
  %i_qp_max = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 3
  %3 = load i32, i32* %i_qp_max, align 4, !tbaa !153
  %cmp.i = icmp sgt i32 %2, %conv
  %cmp1.i = icmp slt i32 %3, %conv
  %cond.i = select i1 %cmp1.i, i32 %3, i32 %conv
  %cond5.i = select i1 %cmp.i, i32 %2, i32 %cond.i
  ret i32 %cond5.i
}

; Function Attrs: norecurse nounwind readonly
define hidden i32 @x264_8_ratecontrol_mb_qp(%struct.x264_t* nocapture readonly %h) local_unnamed_addr #12 {
entry:
  %rc = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 71
  %0 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc, align 64, !tbaa !65
  %qpm = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 11
  %1 = load float, float* %qpm, align 4, !tbaa !254
  %i_aq_mode = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 15
  %2 = load i32, i32* %i_aq_mode, align 4, !tbaa !2
  %tobool = icmp eq i32 %2, 0
  br i1 %tobool, label %if.end8, label %if.then

if.then:                                          ; preds = %entry
  %fdec = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 61
  %3 = load %struct.x264_frame*, %struct.x264_frame** %fdec, align 4, !tbaa !233
  %b_kept_as_ref = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %3, i32 0, i32 19
  %4 = load i32, i32* %b_kept_as_ref, align 4, !tbaa !253
  %tobool2 = icmp eq i32 %4, 0
  %fenc = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 60
  %5 = load %struct.x264_frame*, %struct.x264_frame** %fenc, align 8, !tbaa !80
  %f_qp_offset_aq = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %5, i32 0, i32 74
  %f_qp_offset = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %5, i32 0, i32 73
  %.sink.in = select i1 %tobool2, float** %f_qp_offset_aq, float** %f_qp_offset
  %.sink = load float*, float** %.sink.in, align 4, !tbaa !59
  %i_mb_xy5 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 12
  %6 = load i32, i32* %i_mb_xy5, align 8, !tbaa !284
  %arrayidx6 = getelementptr inbounds float, float* %.sink, i32 %6
  %cond = load float, float* %arrayidx6, align 4, !tbaa !45
  %cmp = fcmp fast ogt float %1, 5.100000e+01
  %7 = fmul fast float %1, 0x3FAC71C720000000
  %div = fsub fast float 0x400EAAAAA0000000, %7
  %mul = fmul fast float %cond, %div
  %qp_offset.0 = select i1 %cmp, float %mul, float %cond
  %add = fadd fast float %qp_offset.0, %1
  br label %if.end8

if.end8:                                          ; preds = %entry, %if.then
  %qp.0 = phi float [ %add, %if.then ], [ %1, %entry ]
  %add9 = fadd fast float %qp.0, 5.000000e-01
  %conv = fptosi float %add9 to i32
  %i_qp_min = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 2
  %8 = load i32, i32* %i_qp_min, align 8, !tbaa !152
  %i_qp_max = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 3
  %9 = load i32, i32* %i_qp_max, align 4, !tbaa !153
  %cmp.i = icmp sgt i32 %8, %conv
  %cmp1.i = icmp slt i32 %9, %conv
  %cond.i = select i1 %cmp1.i, i32 %9, i32 %conv
  %cond5.i = select i1 %cmp.i, i32 %8, i32 %cond.i
  ret i32 %cond5.i
}

; Function Attrs: nounwind
define hidden i32 @x264_8_ratecontrol_slice_type(%struct.x264_t* %h, i32 %frame_num) local_unnamed_addr #0 {
entry:
  %rc1 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 71
  %0 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc1, align 64, !tbaa !65
  %b_stat_read = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 21
  %1 = load i32, i32* %b_stat_read, align 4, !tbaa !127
  %tobool = icmp eq i32 %1, 0
  br i1 %tobool, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %num_entries = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 44
  %2 = load i32, i32* %num_entries, align 8, !tbaa !191
  %cmp = icmp sgt i32 %2, %frame_num
  br i1 %cmp, label %if.end92, label %if.then3

if.then3:                                         ; preds = %if.then
  %arrayidx = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 72, i32 0, i32 0
  %3 = load i32, i32* %arrayidx, align 8, !tbaa !55
  %cmp4 = icmp eq i32 %3, 0
  br i1 %cmp4, label %.thread, label %cond.end

.thread:                                          ; preds = %if.then3
  %i_qp_constant155 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 1
  store i32 24, i32* %i_qp_constant155, align 4, !tbaa !144
  br label %7

cond.end:                                         ; preds = %if.then3
  %arrayidx6 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 72, i32 2, i32 0
  %4 = load double, double* %arrayidx6, align 8, !tbaa !154
  %conv = sitofp i32 %3 to double
  %div = fdiv fast double %4, %conv
  %add = fadd fast double %div, 1.000000e+00
  %phitmp = fptosi double %add to i32
  %i_qp_constant = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 1
  store i32 %phitmp, i32* %i_qp_constant, align 4, !tbaa !144
  %cmp1.i = icmp sgt i32 %phitmp, 69
  br i1 %cmp1.i, label %7, label %5

5:                                                ; preds = %cond.end
  %6 = icmp sgt i32 %phitmp, 0
  %spec.select = select i1 %6, i32 %phitmp, i32 0
  br label %7

7:                                                ; preds = %5, %cond.end, %.thread
  %i_qp_constant158162 = phi i32* [ %i_qp_constant155, %.thread ], [ %i_qp_constant, %cond.end ], [ %i_qp_constant, %5 ]
  %8 = phi i32 [ 24, %.thread ], [ 69, %cond.end ], [ %spec.select, %5 ]
  %arrayidx16 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 9, i32 0
  store i32 %8, i32* %arrayidx16, align 4, !tbaa !55
  %9 = load i32, i32* %i_qp_constant158162, align 4, !tbaa !144
  %conv20 = sitofp i32 %9 to float
  %10 = fmul fast float %conv20, 0x3FC5555560000000
  %div.i151 = fadd fast float %10, -2.000000e+00
  %exp2.i152 = tail call fast float @llvm.exp2.f32(float %div.i151) #13
  %f_ip_factor = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 12
  %11 = load float, float* %f_ip_factor, align 8, !tbaa !141
  %12 = fmul fast float %exp2.i152, 0x3FEFFFFFE0000000
  %div.i148 = fdiv fast float %12, %11
  %13 = tail call fast float @llvm.log2.f32(float %div.i148) #13
  %mul.i149 = fmul fast float %13, 6.000000e+00
  %add.i150 = fadd fast float %mul.i149, 1.200000e+01
  %conv26 = fpext float %add.i150 to double
  %add27 = fadd fast double %conv26, 5.000000e-01
  %conv28 = fptosi double %add27 to i32
  %14 = icmp slt i32 %conv28, 69
  %cond.i146 = select i1 %14, i32 %conv28, i32 69
  %15 = icmp sgt i32 %cond.i146, 0
  %cond5.i147 = select i1 %15, i32 %cond.i146, i32 0
  %arrayidx31 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 9, i32 2
  store i32 %cond5.i147, i32* %arrayidx31, align 4, !tbaa !55
  %16 = load i32, i32* %i_qp_constant158162, align 4, !tbaa !144
  %conv35 = sitofp i32 %16 to float
  %17 = fmul fast float %conv35, 0x3FC5555560000000
  %div.i142 = fadd fast float %17, -2.000000e+00
  %exp2.i = tail call fast float @llvm.exp2.f32(float %div.i142) #13
  %f_pb_factor = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 13
  %18 = load float, float* %f_pb_factor, align 4, !tbaa !130
  %mul = fmul fast float %18, 0x3FEFFFFFE0000000
  %div.i = fmul fast float %mul, %exp2.i
  %19 = tail call fast float @llvm.log2.f32(float %div.i) #13
  %mul.i = fmul fast float %19, 6.000000e+00
  %add.i = fadd fast float %mul.i, 1.200000e+01
  %conv40 = fpext float %add.i to double
  %add41 = fadd fast double %conv40, 5.000000e-01
  %conv42 = fptosi double %add41 to i32
  %20 = icmp slt i32 %conv42, 69
  %cond.i140 = select i1 %20, i32 %conv42, i32 69
  %21 = icmp sgt i32 %cond.i140, 0
  %cond5.i141 = select i1 %21, i32 %cond.i140, i32 0
  %arrayidx45 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 9, i32 1
  store i32 %cond5.i141, i32* %arrayidx45, align 4, !tbaa !55
  tail call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.85, i32 0, i32 0), i32 %2) #13
  %22 = load i32, i32* %i_qp_constant158162, align 4, !tbaa !144
  tail call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.86, i32 0, i32 0), i32 %22) #13
  %i_bframe_adaptive = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 22
  %23 = load i32, i32* %i_bframe_adaptive, align 8, !tbaa !189
  %tobool51 = icmp eq i32 %23, 0
  br i1 %tobool51, label %if.end, label %if.then52

if.then52:                                        ; preds = %7
  tail call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.87, i32 0, i32 0)) #13
  br label %if.end

if.end:                                           ; preds = %7, %if.then52
  %i_threads = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 1
  %24 = load i32, i32* %i_threads, align 4, !tbaa !126
  %cmp54164 = icmp sgt i32 %24, 0
  br i1 %cmp54164, label %for.body, label %cleanup

for.body:                                         ; preds = %if.end, %for.inc
  %i.0165 = phi i32 [ %inc, %for.inc ], [ 0, %if.end ]
  %arrayidx56 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 2, i32 %i.0165
  %25 = load %struct.x264_t*, %struct.x264_t** %arrayidx56, align 4, !tbaa !59
  %rc57 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %25, i32 0, i32 71
  %26 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc57, align 64, !tbaa !65
  %b_abr = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %26, i32 0, i32 0
  store i32 0, i32* %b_abr, align 8, !tbaa !118
  %b_2pass = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %26, i32 0, i32 1
  store i32 0, i32* %b_2pass, align 4, !tbaa !81
  %i_rc_method = getelementptr inbounds %struct.x264_t, %struct.x264_t* %25, i32 0, i32 0, i32 52, i32 0
  store i32 0, i32* %i_rc_method, align 8, !tbaa !82
  %b_stat_read69 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %25, i32 0, i32 0, i32 52, i32 21
  store i32 0, i32* %b_stat_read69, align 4, !tbaa !127
  %i_bframe_adaptive73 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %25, i32 0, i32 0, i32 22
  store i32 0, i32* %i_bframe_adaptive73, align 8, !tbaa !189
  %i_scenecut_threshold = getelementptr inbounds %struct.x264_t, %struct.x264_t* %25, i32 0, i32 0, i32 19
  store i32 0, i32* %i_scenecut_threshold, align 4, !tbaa !285
  %b_mb_tree = getelementptr inbounds %struct.x264_t, %struct.x264_t* %25, i32 0, i32 0, i32 52, i32 17
  store i32 0, i32* %b_mb_tree, align 4, !tbaa !84
  %i_bframe = getelementptr inbounds %struct.x264_t, %struct.x264_t* %25, i32 0, i32 0, i32 21
  %27 = load i32, i32* %i_bframe, align 4, !tbaa !83
  %cmp84 = icmp sgt i32 %27, 1
  br i1 %cmp84, label %if.then86, label %for.inc

if.then86:                                        ; preds = %for.body
  store i32 1, i32* %i_bframe, align 4, !tbaa !83
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then86
  %inc = add nuw nsw i32 %i.0165, 1
  %cmp54 = icmp slt i32 %inc, %24
  br i1 %cmp54, label %for.body, label %cleanup

if.end92:                                         ; preds = %if.then
  %entry93 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 45
  %28 = load %struct.ratecontrol_entry_t*, %struct.ratecontrol_entry_t** %entry93, align 4, !tbaa !66
  %frame_type = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %28, i32 %frame_num, i32 1
  %29 = load i32, i32* %frame_type, align 4, !tbaa !204
  br label %cleanup

cleanup:                                          ; preds = %for.inc, %if.end, %entry, %if.end92
  %retval.0 = phi i32 [ %29, %if.end92 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %for.inc ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
define hidden void @x264_8_ratecontrol_set_weights(%struct.x264_t* %h, %struct.x264_frame* %frm) local_unnamed_addr #0 {
entry:
  %rc = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 71
  %0 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc, align 64, !tbaa !65
  %entry1 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 45
  %1 = load %struct.ratecontrol_entry_t*, %struct.ratecontrol_entry_t** %entry1, align 4, !tbaa !66
  %i_frame = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frm, i32 0, i32 15
  %2 = load i32, i32* %i_frame, align 4, !tbaa !69
  %i_weighted_pred = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 51, i32 3
  %3 = load i32, i32* %i_weighted_pred, align 4, !tbaa !49
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %arrayidx2 = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %1, i32 %2, i32 17, i32 0
  %4 = load i16, i16* %arrayidx2, align 2, !tbaa !47
  %cmp3 = icmp sgt i16 %4, -1
  br i1 %cmp3, label %if.then5, label %if.end28

if.then5:                                         ; preds = %if.end
  %arrayidx7 = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %1, i32 %2, i32 16, i32 0, i32 0
  %5 = load i16, i16* %arrayidx7, align 2, !tbaa !47
  %conv8 = sext i16 %5 to i32
  %arrayidx11 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frm, i32 0, i32 47, i32 0, i32 0
  %i_scale = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frm, i32 0, i32 47, i32 0, i32 0, i32 3
  store i32 %conv8, i32* %i_scale, align 4, !tbaa !286
  %conv14122 = zext i16 %4 to i32
  %i_denom = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frm, i32 0, i32 47, i32 0, i32 0, i32 2
  store i32 %conv14122, i32* %i_denom, align 16, !tbaa !288
  %arrayidx20 = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %1, i32 %2, i32 16, i32 0, i32 1
  %6 = load i16, i16* %arrayidx20, align 2, !tbaa !47
  %conv21 = sext i16 %6 to i32
  %i_offset = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frm, i32 0, i32 47, i32 0, i32 0, i32 4
  store i32 %conv21, i32* %i_offset, align 8, !tbaa !289
  %weight_cache = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 93, i32 32
  %7 = load void (%struct.x264_t*, %struct.x264_weight_t*)*, void (%struct.x264_t*, %struct.x264_weight_t*)** %weight_cache, align 4, !tbaa !290
  tail call void %7(%struct.x264_t* nonnull %h, %struct.x264_weight_t* nonnull %arrayidx11) #13
  br label %if.end28

if.end28:                                         ; preds = %if.then5, %if.end
  %arrayidx30 = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %1, i32 %2, i32 17, i32 1
  %8 = load i16, i16* %arrayidx30, align 2, !tbaa !47
  %cmp32 = icmp sgt i16 %8, -1
  br i1 %cmp32, label %if.then34, label %cleanup

if.then34:                                        ; preds = %if.end28
  %arrayidx37 = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %1, i32 %2, i32 16, i32 1, i32 0
  %9 = load i16, i16* %arrayidx37, align 2, !tbaa !47
  %conv38 = sext i16 %9 to i32
  %arrayidx41 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frm, i32 0, i32 47, i32 0, i32 1
  %i_scale42 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frm, i32 0, i32 47, i32 0, i32 1, i32 3
  store i32 %conv38, i32* %i_scale42, align 4, !tbaa !286
  %conv45123 = zext i16 %8 to i32
  %i_denom49 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frm, i32 0, i32 47, i32 0, i32 1, i32 2
  store i32 %conv45123, i32* %i_denom49, align 16, !tbaa !288
  %arrayidx52 = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %1, i32 %2, i32 16, i32 1, i32 1
  %10 = load i16, i16* %arrayidx52, align 2, !tbaa !47
  %conv53 = sext i16 %10 to i32
  %i_offset57 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frm, i32 0, i32 47, i32 0, i32 1, i32 4
  store i32 %conv53, i32* %i_offset57, align 8, !tbaa !289
  %weight_cache59 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 93, i32 32
  %11 = load void (%struct.x264_t*, %struct.x264_weight_t*)*, void (%struct.x264_t*, %struct.x264_weight_t*)** %weight_cache59, align 4, !tbaa !290
  tail call void %11(%struct.x264_t* nonnull %h, %struct.x264_weight_t* nonnull %arrayidx41) #13
  %arrayidx65 = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %1, i32 %2, i32 16, i32 2, i32 0
  %12 = load i16, i16* %arrayidx65, align 2, !tbaa !47
  %conv66 = sext i16 %12 to i32
  %arrayidx69 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frm, i32 0, i32 47, i32 0, i32 2
  %i_scale70 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frm, i32 0, i32 47, i32 0, i32 2, i32 3
  store i32 %conv66, i32* %i_scale70, align 4, !tbaa !286
  %13 = load i16, i16* %arrayidx30, align 2, !tbaa !47
  %conv73 = sext i16 %13 to i32
  %i_denom77 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frm, i32 0, i32 47, i32 0, i32 2, i32 2
  store i32 %conv73, i32* %i_denom77, align 16, !tbaa !288
  %arrayidx80 = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %1, i32 %2, i32 16, i32 2, i32 1
  %14 = load i16, i16* %arrayidx80, align 2, !tbaa !47
  %conv81 = sext i16 %14 to i32
  %i_offset85 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frm, i32 0, i32 47, i32 0, i32 2, i32 4
  store i32 %conv81, i32* %i_offset85, align 8, !tbaa !289
  %15 = load void (%struct.x264_t*, %struct.x264_weight_t*)*, void (%struct.x264_t*, %struct.x264_weight_t*)** %weight_cache59, align 4, !tbaa !290
  tail call void %15(%struct.x264_t* nonnull %h, %struct.x264_weight_t* nonnull %arrayidx69) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then34, %entry
  ret void
}

; Function Attrs: nounwind
define hidden i32 @x264_8_ratecontrol_end(%struct.x264_t* %h, i32 %bits, i32* nocapture %filler) local_unnamed_addr #0 {
entry:
  %i_type266 = alloca i8, align 4
  %rc1 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 71
  %0 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc1, align 64, !tbaa !65
  %arraydecay = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 72, i32 21, i32 3, i32 0
  %arrayidx = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 72, i32 21, i32 3, i32 6
  %1 = load i32, i32* %arrayidx, align 4, !tbaa !55
  %arrayidx2 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 72, i32 21, i32 3, i32 18
  %2 = load i32, i32* %arrayidx2, align 4, !tbaa !55
  %add = add nsw i32 %2, %1
  %i_mb_count_skip = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 72, i32 21, i32 6
  store i32 %add, i32* %i_mb_count_skip, align 8, !tbaa !291
  %arrayidx5 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 72, i32 21, i32 3, i32 2
  %3 = load i32, i32* %arrayidx5, align 4, !tbaa !55
  %arrayidx6 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 72, i32 21, i32 3, i32 1
  %4 = load i32, i32* %arrayidx6, align 4, !tbaa !55
  %add7 = add nsw i32 %4, %3
  %5 = load i32, i32* %arraydecay, align 4, !tbaa !55
  %add9 = add nsw i32 %add7, %5
  %arrayidx10 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 72, i32 21, i32 3, i32 3
  %6 = load i32, i32* %arrayidx10, align 4, !tbaa !55
  %add11 = add nsw i32 %add9, %6
  %i_mb_count_i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 72, i32 21, i32 4
  store i32 %add11, i32* %i_mb_count_i, align 8, !tbaa !292
  %arrayidx14 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 72, i32 21, i32 3, i32 4
  %7 = load i32, i32* %arrayidx14, align 4, !tbaa !55
  %arrayidx15 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 72, i32 21, i32 3, i32 5
  %8 = load i32, i32* %arrayidx15, align 4, !tbaa !55
  %add16 = add nsw i32 %8, %7
  %i_mb_count_p = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 72, i32 21, i32 5
  %arrayidx19 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 72, i32 21, i32 3, i32 7
  %9 = load i32, i32* %arrayidx19, align 4, !tbaa !55
  %add23 = add nsw i32 %add16, %9
  %arrayidx19.1 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 72, i32 21, i32 3, i32 8
  %10 = load i32, i32* %arrayidx19.1, align 4, !tbaa !55
  %add23.1 = add nsw i32 %add23, %10
  %arrayidx19.2 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 72, i32 21, i32 3, i32 9
  %11 = load i32, i32* %arrayidx19.2, align 4, !tbaa !55
  %add23.2 = add nsw i32 %add23.1, %11
  %arrayidx19.3 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 72, i32 21, i32 3, i32 10
  %12 = load i32, i32* %arrayidx19.3, align 4, !tbaa !55
  %add23.3 = add nsw i32 %add23.2, %12
  %arrayidx19.4 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 72, i32 21, i32 3, i32 11
  %13 = load i32, i32* %arrayidx19.4, align 4, !tbaa !55
  %add23.4 = add nsw i32 %add23.3, %13
  %arrayidx19.5 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 72, i32 21, i32 3, i32 12
  %14 = load i32, i32* %arrayidx19.5, align 4, !tbaa !55
  %add23.5 = add nsw i32 %add23.4, %14
  %arrayidx19.6 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 72, i32 21, i32 3, i32 13
  %15 = load i32, i32* %arrayidx19.6, align 4, !tbaa !55
  %add23.6 = add nsw i32 %add23.5, %15
  %arrayidx19.7 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 72, i32 21, i32 3, i32 14
  %16 = load i32, i32* %arrayidx19.7, align 4, !tbaa !55
  %add23.7 = add nsw i32 %add23.6, %16
  %arrayidx19.8 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 72, i32 21, i32 3, i32 15
  %17 = load i32, i32* %arrayidx19.8, align 4, !tbaa !55
  %add23.8 = add nsw i32 %add23.7, %17
  %arrayidx19.9 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 72, i32 21, i32 3, i32 16
  %18 = load i32, i32* %arrayidx19.9, align 4, !tbaa !55
  %add23.9 = add nsw i32 %add23.8, %18
  %arrayidx19.10 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 72, i32 21, i32 3, i32 17
  %19 = load i32, i32* %arrayidx19.10, align 4, !tbaa !55
  %add23.10 = add nsw i32 %add23.9, %19
  store i32 %add23.10, i32* %i_mb_count_p, align 4, !tbaa !293
  %i_mb_count24 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 2
  %20 = load i32, i32* %i_mb_count24, align 8, !tbaa !37
  %conv = sitofp i32 %20 to float
  %qpa_rc = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 12
  %21 = load float, float* %qpa_rc, align 8, !tbaa !276
  %div = fdiv fast float %21, %conv
  store float %div, float* %qpa_rc, align 8, !tbaa !276
  %fdec = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 61
  %22 = load %struct.x264_frame*, %struct.x264_frame** %fdec, align 4, !tbaa !233
  %f_qp_avg_rc = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %22, i32 0, i32 25
  store float %div, float* %f_qp_avg_rc, align 4, !tbaa !256
  %qpa_aq = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 14
  %23 = load i32, i32* %qpa_aq, align 8, !tbaa !274
  %conv25 = sitofp i32 %23 to float
  %div29 = fdiv fast float %conv25, %conv
  %f_qp_avg_aq = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %22, i32 0, i32 26
  store float %div29, float* %f_qp_avg_aq, align 16, !tbaa !255
  %f_rf_constant = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 6
  %24 = load float, float* %f_rf_constant, align 8, !tbaa !87
  %add34 = fadd fast float %24, %div
  %qp_novbv = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 16
  %25 = load float, float* %qp_novbv, align 8, !tbaa !261
  %sub = fsub fast float %add34, %25
  %f_crf_avg = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %22, i32 0, i32 27
  store float %sub, float* %f_crf_avg, align 4, !tbaa !294
  %b_stat_write = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 19
  %26 = load i32, i32* %b_stat_write, align 4, !tbaa !217
  %tobool = icmp eq i32 %26, 0
  br i1 %tobool, label %if.end303, label %if.then

if.then:                                          ; preds = %entry
  %i_type = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 51, i32 2
  %27 = load i32, i32* %i_type, align 8, !tbaa !230
  switch i32 %27, label %cond.false47 [
    i32 2, label %cond.true
    i32 0, label %cond.end52
  ]

cond.true:                                        ; preds = %if.then
  %fenc = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 60
  %28 = load %struct.x264_frame*, %struct.x264_frame** %fenc, align 8, !tbaa !80
  %i_poc = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %28, i32 0, i32 1
  %29 = load i32, i32* %i_poc, align 4, !tbaa !260
  %cmp40 = icmp eq i32 %29, 0
  %cond = select i1 %cmp40, i32 73, i32 105
  br label %cond.end52

cond.false47:                                     ; preds = %if.then
  %fenc48 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 60
  %30 = load %struct.x264_frame*, %struct.x264_frame** %fenc48, align 8, !tbaa !80
  %b_kept_as_ref = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %30, i32 0, i32 19
  %31 = load i32, i32* %b_kept_as_ref, align 4, !tbaa !253
  %tobool49 = icmp eq i32 %31, 0
  %cond50 = select i1 %tobool49, i32 98, i32 66
  br label %cond.end52

cond.end52:                                       ; preds = %if.then, %cond.false47, %cond.true
  %cond53 = phi i32 [ %cond, %cond.true ], [ %cond50, %cond.false47 ], [ 80, %if.then ]
  %arrayidx57 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 72, i32 21, i32 13, i32 1
  %32 = load i32, i32* %arrayidx57, align 4, !tbaa !55
  %arrayidx61 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 72, i32 21, i32 13, i32 0
  %33 = load i32, i32* %arrayidx61, align 4, !tbaa !55
  %sub62 = sub nsw i32 %32, %33
  %arrayidx65 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 72, i32 18, i32 1
  %34 = load i32, i32* %arrayidx65, align 4, !tbaa !55
  %arrayidx68 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 72, i32 18, i32 0
  %35 = load i32, i32* %arrayidx68, align 8, !tbaa !55
  %sub69 = sub nsw i32 %34, %35
  %b_direct_auto_write = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 100
  %36 = load i32, i32* %b_direct_auto_write, align 4, !tbaa !188
  %tobool71 = icmp eq i32 %36, 0
  br i1 %tobool71, label %cond.end95, label %cond.true72

cond.true72:                                      ; preds = %cond.end52
  %cmp73 = icmp sgt i32 %sub62, 0
  br i1 %cmp73, label %cond.end95, label %cond.false76

cond.false76:                                     ; preds = %cond.true72
  %cmp77 = icmp slt i32 %sub62, 0
  br i1 %cmp77, label %cond.end95, label %cond.false80

cond.false80:                                     ; preds = %cond.false76
  %cmp81 = icmp sgt i32 %sub69, 0
  br i1 %cmp81, label %cond.end95, label %cond.false84

cond.false84:                                     ; preds = %cond.false80
  %cmp85 = icmp eq i32 %sub69, 0
  %cond87 = select i1 %cmp85, i32 45, i32 116
  br label %cond.end95

cond.end95:                                       ; preds = %cond.end52, %cond.true72, %cond.false84, %cond.false80, %cond.false76
  %cond96 = phi i32 [ 115, %cond.true72 ], [ 116, %cond.false76 ], [ %cond87, %cond.false84 ], [ 115, %cond.false80 ], [ 45, %cond.end52 ]
  %p_stat_file_out = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 38
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_file_out, align 8, !tbaa !220
  %fenc98 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 60
  %38 = load %struct.x264_frame*, %struct.x264_frame** %fenc98, align 8, !tbaa !80
  %i_frame = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %38, i32 0, i32 15
  %39 = load i32, i32* %i_frame, align 4, !tbaa !69
  %i_frame99 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 19
  %40 = load i32, i32* %i_frame99, align 4, !tbaa !228
  %i_duration = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %38, i32 0, i32 9
  %41 = load i64, i64* %i_duration, align 8, !tbaa !268
  %i_cpb_duration = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %38, i32 0, i32 11
  %42 = load i64, i64* %i_cpb_duration, align 8, !tbaa !238
  %conv104 = fpext float %div to double
  %conv107 = fpext float %div29 to double
  %i_tex_bits = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 72, i32 21, i32 1
  %43 = load i32, i32* %i_tex_bits, align 4, !tbaa !295
  %i_mv_bits = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 72, i32 21, i32 0
  %44 = load i32, i32* %i_mv_bits, align 8, !tbaa !296
  %i_misc_bits = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 72, i32 21, i32 2
  %45 = load i32, i32* %i_misc_bits, align 8, !tbaa !297
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.88, i32 0, i32 0), i32 %39, i32 %40, i32 %cond53, i64 %41, i64 %42, double %conv104, double %conv107, i32 %43, i32 %44, i32 %45, i32 %add11, i32 %add23.10, i32 %add, i32 %cond96)
  %cmp124 = icmp slt i32 %call, 0
  br i1 %cmp124, label %fail, label %if.end

if.end:                                           ; preds = %cond.end95
  %b_stat_read = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 21
  %46 = load i32, i32* %b_stat_read, align 4, !tbaa !127
  %tobool129 = icmp eq i32 %46, 0
  br i1 %tobool129, label %for.cond133.preheader, label %land.end

land.end:                                         ; preds = %if.end
  %rce = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 10
  %47 = load %struct.ratecontrol_entry_t*, %struct.ratecontrol_entry_t** %rce, align 8, !tbaa !78
  %refs = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %47, i32 0, i32 19
  %48 = load i32, i32* %refs, align 8, !tbaa !79
  %cmp130 = icmp sgt i32 %48, 1
  %rce136 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 10
  br i1 %cmp130, label %for.cond133.us, label %for.cond133.preheader

for.cond133.preheader:                            ; preds = %if.end, %land.end
  %arrayidx139751 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 62, i32 0
  br label %for.cond133

for.cond133.us:                                   ; preds = %land.end, %cond.true147.us
  %i132.0.us = phi i32 [ %inc165.us, %cond.true147.us ], [ 0, %land.end ]
  %49 = load %struct.ratecontrol_entry_t*, %struct.ratecontrol_entry_t** %rce136, align 8, !tbaa !78
  %refs137.us = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %49, i32 0, i32 19
  %cond141.us = load i32, i32* %refs137.us, align 8, !tbaa !55
  %cmp142.us = icmp slt i32 %i132.0.us, %cond141.us
  br i1 %cmp142.us, label %cond.true147.us, label %for.end168

cond.true147.us:                                  ; preds = %for.cond133.us
  %arrayidx150.us = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %49, i32 0, i32 18, i32 %i132.0.us
  %cond157.us = load i32, i32* %arrayidx150.us, align 4, !tbaa !55
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_file_out, align 8, !tbaa !220
  %call159.us = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i32 0, i32 0), i32 %cond157.us)
  %cmp160.us = icmp sgt i32 %call159.us, -1
  %inc165.us = add nuw nsw i32 %i132.0.us, 1
  br i1 %cmp160.us, label %for.cond133.us, label %fail

for.cond133:                                      ; preds = %for.cond133.preheader, %cond.false151
  %i132.0 = phi i32 [ %inc165, %cond.false151 ], [ 0, %for.cond133.preheader ]
  %cond141 = load i32, i32* %arrayidx139751, align 8, !tbaa !55
  %cmp142 = icmp slt i32 %i132.0, %cond141
  br i1 %cmp142, label %cond.false151, label %for.end168

cond.false151:                                    ; preds = %for.cond133
  %arrayidx155 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 72, i32 21, i32 8, i32 0, i32 %i132.0
  %cond157 = load i32, i32* %arrayidx155, align 4, !tbaa !55
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_file_out, align 8, !tbaa !220
  %call159 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i32 0, i32 0), i32 %cond157)
  %cmp160 = icmp sgt i32 %call159, -1
  %inc165 = add nuw nsw i32 %i132.0, 1
  br i1 %cmp160, label %for.cond133, label %fail

for.end168:                                       ; preds = %for.cond133.us, %for.cond133
  %i_weighted_pred = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 51, i32 3
  %52 = load i32, i32* %i_weighted_pred, align 4, !tbaa !49
  %cmp170 = icmp sgt i32 %52, 0
  br i1 %cmp170, label %land.lhs.true, label %if.end246

land.lhs.true:                                    ; preds = %for.end168
  %weightfn = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 51, i32 23, i32 0, i32 0, i32 5
  %53 = load void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)**, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*** %weightfn, align 4, !tbaa !298
  %tobool175 = icmp eq void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %53, null
  br i1 %tobool175, label %if.end246, label %if.then176

if.then176:                                       ; preds = %land.lhs.true
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_file_out, align 8, !tbaa !220
  %i_denom = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 51, i32 23, i32 0, i32 0, i32 2
  %55 = load i32, i32* %i_denom, align 16, !tbaa !288
  %i_scale = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 51, i32 23, i32 0, i32 0, i32 3
  %56 = load i32, i32* %i_scale, align 4, !tbaa !286
  %i_offset = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 51, i32 23, i32 0, i32 0, i32 4
  %57 = load i32, i32* %i_offset, align 8, !tbaa !289
  %call190 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.89, i32 0, i32 0), i32 %55, i32 %56, i32 %57)
  %cmp191 = icmp slt i32 %call190, 0
  br i1 %cmp191, label %fail, label %if.end194

if.end194:                                        ; preds = %if.then176
  %weightfn199 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 51, i32 23, i32 0, i32 1, i32 5
  %58 = load void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)**, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*** %weightfn199, align 4, !tbaa !298
  %tobool200 = icmp eq void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %58, null
  br i1 %tobool200, label %lor.lhs.false, label %if.then207

lor.lhs.false:                                    ; preds = %if.end194
  %weightfn205 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 51, i32 23, i32 0, i32 2, i32 5
  %59 = load void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)**, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*** %weightfn205, align 4, !tbaa !298
  %tobool206 = icmp eq void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %59, null
  br i1 %tobool206, label %if.else, label %if.then207

if.then207:                                       ; preds = %lor.lhs.false, %if.end194
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_file_out, align 8, !tbaa !220
  %i_denom213 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 51, i32 23, i32 0, i32 1, i32 2
  %61 = load i32, i32* %i_denom213, align 16, !tbaa !288
  %i_scale218 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 51, i32 23, i32 0, i32 1, i32 3
  %62 = load i32, i32* %i_scale218, align 4, !tbaa !286
  %i_offset223 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 51, i32 23, i32 0, i32 1, i32 4
  %63 = load i32, i32* %i_offset223, align 8, !tbaa !289
  %i_scale228 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 51, i32 23, i32 0, i32 2, i32 3
  %64 = load i32, i32* %i_scale228, align 4, !tbaa !286
  %i_offset233 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 51, i32 23, i32 0, i32 2, i32 4
  %65 = load i32, i32* %i_offset233, align 8, !tbaa !289
  %call234 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.90, i32 0, i32 0), i32 %61, i32 %62, i32 %63, i32 %64, i32 %65)
  %cmp235 = icmp slt i32 %call234, 0
  br i1 %cmp235, label %fail, label %if.end246

if.else:                                          ; preds = %lor.lhs.false
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_file_out, align 8, !tbaa !220
  %call240 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i32 0, i32 0))
  %cmp241 = icmp slt i32 %call240, 0
  br i1 %cmp241, label %fail, label %if.end246

if.end246:                                        ; preds = %land.lhs.true, %if.then207, %if.else, %for.end168
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %p_stat_file_out, align 8, !tbaa !220
  %call248 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.91, i32 0, i32 0))
  %cmp249 = icmp slt i32 %call248, 0
  br i1 %cmp249, label %fail, label %if.end252

if.end252:                                        ; preds = %if.end246
  %b_mb_tree = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 17
  %68 = load i32, i32* %b_mb_tree, align 4, !tbaa !84
  %tobool255 = icmp eq i32 %68, 0
  br i1 %tobool255, label %if.end303, label %land.lhs.true256

land.lhs.true256:                                 ; preds = %if.end252
  %69 = load %struct.x264_frame*, %struct.x264_frame** %fenc98, align 8, !tbaa !80
  %b_kept_as_ref258 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %69, i32 0, i32 19
  %70 = load i32, i32* %b_kept_as_ref258, align 4, !tbaa !253
  %tobool259 = icmp eq i32 %70, 0
  br i1 %tobool259, label %if.end303, label %land.lhs.true260

land.lhs.true260:                                 ; preds = %land.lhs.true256
  %71 = load i32, i32* %b_stat_read, align 4, !tbaa !127
  %tobool264 = icmp eq i32 %71, 0
  br i1 %tobool264, label %if.then265, label %if.end303

if.then265:                                       ; preds = %land.lhs.true260
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %i_type266) #13
  %72 = load i32, i32* %i_type, align 8, !tbaa !230
  %conv269 = trunc i32 %72 to i8
  store i8 %conv269, i8* %i_type266, align 4, !tbaa !46
  %mbtree_fix8_pack = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 93, i32 35
  %73 = load void (i16*, float*, i32)*, void (i16*, float*, i32)** %mbtree_fix8_pack, align 16, !tbaa !299
  %arrayidx270 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 56, i32 0, i32 0
  %74 = load i16*, i16** %arrayidx270, align 8, !tbaa !59
  %f_qp_offset = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %69, i32 0, i32 73
  %75 = load float*, float** %f_qp_offset, align 4, !tbaa !42
  %76 = load i32, i32* %i_mb_count24, align 8, !tbaa !37
  tail call void %73(i16* %74, float* %75, i32 %76) #13
  %p_mbtree_stat_file_out = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 40
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %p_mbtree_stat_file_out, align 8, !tbaa !223
  %call274 = call i32 @fwrite(i8* nonnull %i_type266, i32 1, i32 1, %struct._IO_FILE* %77)
  %cmp275 = icmp eq i32 %call274, 0
  br i1 %cmp275, label %cleanup292.thread, label %if.end278

if.end278:                                        ; preds = %if.then265
  %78 = bitcast i16** %arrayidx270 to i8**
  %79 = load i8*, i8** %78, align 8, !tbaa !59
  %80 = load i32, i32* %i_mb_count24, align 8, !tbaa !37
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %p_mbtree_stat_file_out, align 8, !tbaa !223
  %call285 = tail call i32 @fwrite(i8* %79, i32 2, i32 %80, %struct._IO_FILE* %81)
  %82 = load i32, i32* %i_mb_count24, align 8, !tbaa !37
  %cmp288 = icmp ult i32 %call285, %82
  br i1 %cmp288, label %cleanup292.thread, label %cleanup292

cleanup292.thread:                                ; preds = %if.then265, %if.end278
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %i_type266) #13
  br label %fail

cleanup292:                                       ; preds = %if.end278
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %i_type266) #13
  br label %if.end303

if.end303:                                        ; preds = %if.end252, %land.lhs.true256, %land.lhs.true260, %cleanup292, %entry
  %b_abr = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 0
  %83 = load i32, i32* %b_abr, align 8, !tbaa !118
  %tobool304 = icmp eq i32 %83, 0
  br i1 %tobool304, label %if.end341, label %if.then305

if.then305:                                       ; preds = %if.end303
  %i_type307 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 51, i32 2
  %84 = load i32, i32* %i_type307, align 8, !tbaa !230
  %cmp308 = icmp eq i32 %84, 1
  %conv311 = sitofp i32 %bits to float
  %85 = load float, float* %qpa_rc, align 8, !tbaa !276
  %86 = fmul fast float %85, 0x3FC5555560000000
  %div.i = fadd fast float %86, -2.000000e+00
  %exp2.i = tail call fast float @llvm.exp2.f32(float %div.i) #13
  %mul.i = fmul fast float %conv311, 0x3FEB333340000000
  %mul = fmul fast float %mul.i, %exp2.i
  %conv314 = fpext float %mul to double
  %last_rceq = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 27
  %87 = load double, double* %last_rceq, align 8, !tbaa !300
  br i1 %cmp308, label %if.else317, label %if.then310

if.then310:                                       ; preds = %if.then305
  %div315 = fdiv fast double %conv314, %87
  %cplxr_sum = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 28
  %88 = load double, double* %cplxr_sum, align 8, !tbaa !139
  %add316 = fadd fast double %88, %div315
  store double %add316, double* %cplxr_sum, align 8, !tbaa !139
  br label %if.end331

if.else317:                                       ; preds = %if.then305
  %f_pb_factor = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 13
  %89 = load float, float* %f_pb_factor, align 4, !tbaa !130
  %conv326 = fpext float %89 to double
  %mul327 = fmul fast double %87, %conv326
  %div328 = fdiv fast double %conv314, %mul327
  %cplxr_sum329 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 28
  %90 = load double, double* %cplxr_sum329, align 8, !tbaa !139
  %add330 = fadd fast double %div328, %90
  store double %add330, double* %cplxr_sum329, align 8, !tbaa !139
  br label %if.end331

if.end331:                                        ; preds = %if.else317, %if.then310
  %91 = phi double [ %add330, %if.else317 ], [ %add316, %if.then310 ]
  %cbr_decay = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 32
  %92 = load double, double* %cbr_decay, align 8, !tbaa !119
  %cplxr_sum332 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 28
  %mul333 = fmul fast double %91, %92
  store double %mul333, double* %cplxr_sum332, align 8, !tbaa !139
  %fenc334 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 60
  %93 = load %struct.x264_frame*, %struct.x264_frame** %fenc334, align 8, !tbaa !80
  %f_duration = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %93, i32 0, i32 10
  %94 = load float, float* %f_duration, align 16, !tbaa !267
  %conv335 = fpext float %94 to double
  %bitrate = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 5
  %95 = load double, double* %bitrate, align 8, !tbaa !113
  %mul336 = fmul fast double %95, %conv335
  %wanted_bits_window = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 31
  %96 = load double, double* %wanted_bits_window, align 8, !tbaa !140
  %add337 = fadd fast double %96, %mul336
  %mul340 = fmul fast double %add337, %92
  store double %mul340, double* %wanted_bits_window, align 8, !tbaa !140
  br label %if.end341

if.end341:                                        ; preds = %if.end303, %if.end331
  %b_2pass = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 1
  %97 = load i32, i32* %b_2pass, align 4, !tbaa !81
  %tobool342 = icmp eq i32 %97, 0
  br i1 %tobool342, label %if.end350, label %if.then343

if.then343:                                       ; preds = %if.end341
  %rce344 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 10
  %98 = load %struct.ratecontrol_entry_t*, %struct.ratecontrol_entry_t** %rce344, align 8, !tbaa !78
  %new_qp = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %98, i32 0, i32 10
  %99 = load float, float* %new_qp, align 8, !tbaa !197
  %100 = fmul fast float %99, 0x3FC5555560000000
  %div.i715 = fadd fast float %100, -2.000000e+00
  %exp2.i716 = tail call fast float @llvm.exp2.f32(float %div.i715) #13
  %mul.i717 = fmul fast float %exp2.i716, 0x3FEB333340000000
  %conv347 = fpext float %mul.i717 to double
  %cmp.i718 = fcmp fast olt double %conv347, 1.000000e-01
  %qscale.addr.0.i = select i1 %cmp.i718, double 1.000000e-01, double %conv347
  %tex_bits.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %98, i32 0, i32 5
  %101 = load i32, i32* %tex_bits.i, align 4, !tbaa !199
  %conv.i719 = sitofp i32 %101 to double
  %add.i720 = fadd fast double %conv.i719, 1.000000e-01
  %qscale1.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %98, i32 0, i32 3
  %102 = load double, double* %qscale1.i, align 8, !tbaa !195
  %div.i721 = fdiv fast double %102, %qscale.addr.0.i
  %103 = tail call fast double @llvm.pow.f64(double %div.i721, double 1.100000e+00) #13
  %mul.i722 = fmul fast double %103, %add.i720
  %mv_bits.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %98, i32 0, i32 4
  %104 = load i32, i32* %mv_bits.i, align 8, !tbaa !200
  %conv2.i = sitofp i32 %104 to double
  %105 = tail call fast double @llvm.maxnum.f64(double %102, double 1.000000e+00) #13
  %106 = tail call fast double @llvm.maxnum.f64(double %qscale.addr.0.i, double 1.000000e+00) #13
  %div13.i = fdiv fast double %105, %106
  %sqrt.i = tail call fast double @llvm.sqrt.f64(double %div13.i) #13
  %mul14.i = fmul fast double %sqrt.i, %conv2.i
  %misc_bits.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %98, i32 0, i32 6
  %107 = load i32, i32* %misc_bits.i, align 8, !tbaa !196
  %conv16.i = sitofp i32 %107 to double
  %expected_bits_sum = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 29
  %108 = load double, double* %expected_bits_sum, align 8, !tbaa !264
  %add15.i = fadd fast double %108, %conv16.i
  %add17.i = fadd fast double %add15.i, %mul.i722
  %add349 = fadd fast double %add17.i, %mul14.i
  store double %add349, double* %expected_bits_sum, align 8, !tbaa !264
  br label %if.end350

if.end350:                                        ; preds = %if.end341, %if.then343
  %b_variable_qp = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 97
  %109 = load i32, i32* %b_variable_qp, align 16, !tbaa !136
  %tobool352 = icmp eq i32 %109, 0
  br i1 %tobool352, label %if.end377, label %if.then353

if.then353:                                       ; preds = %if.end350
  %i_type355 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 51, i32 2
  %110 = load i32, i32* %i_type355, align 8, !tbaa !230
  %cmp356 = icmp eq i32 %110, 1
  br i1 %cmp356, label %if.then358, label %if.end377

if.then358:                                       ; preds = %if.then353
  %bframe_bits = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 65
  %111 = load i32, i32* %bframe_bits, align 4, !tbaa !301
  %add359 = add nsw i32 %111, %bits
  store i32 %add359, i32* %bframe_bits, align 4, !tbaa !301
  %fenc360 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 60
  %112 = load %struct.x264_frame*, %struct.x264_frame** %fenc360, align 8, !tbaa !80
  %b_last_minigop_bframe = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %112, i32 0, i32 23
  %113 = load i8, i8* %b_last_minigop_bframe, align 1, !tbaa !302
  %tobool361 = icmp eq i8 %113, 0
  br i1 %tobool361, label %if.end377, label %if.then362

if.then362:                                       ; preds = %if.then358
  %pred_b_from_p = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 63
  %114 = load %struct.predictor_t*, %struct.predictor_t** %pred_b_from_p, align 4, !tbaa !151
  %arrayidx367 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 62, i32 1
  %115 = load i32, i32* %arrayidx367, align 4, !tbaa !55
  %sub368 = add nsw i32 %115, -1
  %arrayidx369 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 63, i32 1, i32 %sub368
  %116 = load %struct.x264_frame*, %struct.x264_frame** %arrayidx369, align 4, !tbaa !59
  %i_satd = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %116, i32 0, i32 66
  %117 = load i32, i32* %i_satd, align 8, !tbaa !262
  %conv370 = sitofp i32 %117 to float
  %cmp.i723 = icmp slt i32 %117, 10
  br i1 %cmp.i723, label %update_predictor.exit, label %if.end.i729

if.end.i729:                                      ; preds = %if.then362
  %bframes = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 64
  %118 = load i32, i32* %bframes, align 8, !tbaa !252
  %div372 = sdiv i32 %add359, %118
  %conv373 = sitofp i32 %div372 to float
  %119 = load float, float* %qpa_rc, align 8, !tbaa !276
  %120 = fmul fast float %119, 0x3FC5555560000000
  %div.i730 = fadd fast float %120, -2.000000e+00
  %exp2.i731 = tail call fast float @llvm.exp2.f32(float %div.i730) #13
  %coeff.i = getelementptr inbounds %struct.predictor_t, %struct.predictor_t* %114, i32 0, i32 1
  %121 = load float, float* %coeff.i, align 4, !tbaa !157
  %count.i = getelementptr inbounds %struct.predictor_t, %struct.predictor_t* %114, i32 0, i32 2
  %122 = load float, float* %count.i, align 4, !tbaa !158
  %div.i724 = fdiv fast float %121, %122
  %offset.i = getelementptr inbounds %struct.predictor_t, %struct.predictor_t* %114, i32 0, i32 4
  %123 = load float, float* %offset.i, align 4, !tbaa !160
  %div2.i = fdiv fast float %123, %122
  %mul.i732 = fmul fast float %conv373, 0x3FEB333340000000
  %mul.i725 = fmul fast float %mul.i732, %exp2.i731
  %sub.i726 = fsub fast float %mul.i725, %div2.i
  %div3.i = fdiv fast float %sub.i726, %conv370
  %coeff_min.i = getelementptr inbounds %struct.predictor_t, %struct.predictor_t* %114, i32 0, i32 0
  %124 = load float, float* %coeff_min.i, align 4, !tbaa !155
  %125 = tail call fast float @llvm.maxnum.f32(float %div3.i, float %124) #13
  %div9.i = fmul fast float %div.i724, 0x3FE5555560000000
  %mul11.i = fmul fast float %div.i724, 1.500000e+00
  %cmp.i.i727 = fcmp fast olt float %125, %div9.i
  %cmp1.i.i = fcmp fast ogt float %125, %mul11.i
  %narrow.sel66.i = select fast i1 %cmp1.i.i, float %mul11.i, float %125
  %narrow.sel.i = select fast i1 %cmp.i.i727, float %div9.i, float %narrow.sel66.i
  %mul15.i = fmul fast float %narrow.sel.i, %conv370
  %sub16.i = fsub fast float %mul.i725, %mul15.i
  %cmp17.i = fcmp fast ult float %sub16.i, 0.000000e+00
  %new_coeff.0.i = select i1 %cmp17.i, float %125, float %narrow.sel.i
  %new_offset.0.i = select i1 %cmp17.i, float 0.000000e+00, float %sub16.i
  %decay.i = getelementptr inbounds %struct.predictor_t, %struct.predictor_t* %114, i32 0, i32 3
  %126 = load float, float* %decay.i, align 4, !tbaa !159
  %mul22.i = fmul fast float %126, %122
  %mul25.i = fmul fast float %126, %121
  %mul28.i = fmul fast float %126, %123
  %inc.i = fadd fast float %mul22.i, 1.000000e+00
  store float %inc.i, float* %count.i, align 4, !tbaa !158
  %add.i728 = fadd fast float %new_coeff.0.i, %mul25.i
  store float %add.i728, float* %coeff.i, align 4, !tbaa !157
  %add32.i = fadd fast float %new_offset.0.i, %mul28.i
  store float %add32.i, float* %offset.i, align 4, !tbaa !160
  br label %update_predictor.exit

update_predictor.exit:                            ; preds = %if.then362, %if.end.i729
  store i32 0, i32* %bframe_bits, align 4, !tbaa !301
  br label %if.end377

if.end377:                                        ; preds = %if.then358, %if.end350, %if.then353, %update_predictor.exit
  %i_bit_rate_unscaled.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 20, i32 21, i32 5
  %127 = load i32, i32* %i_bit_rate_unscaled.i, align 4, !tbaa !102
  %128 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc1, align 64, !tbaa !65
  %arrayidx.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 2, i32 0
  %129 = load %struct.x264_t*, %struct.x264_t** %arrayidx.i, align 4, !tbaa !59
  %rc1.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %129, i32 0, i32 71
  %130 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc1.i, align 64, !tbaa !65
  %i_cpb_size_unscaled.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 20, i32 21, i32 6
  %131 = load i32, i32* %i_cpb_size_unscaled.i, align 4, !tbaa !105
  %conv.i = sext i32 %131 to i64
  %i_time_scale.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 20, i32 17
  %132 = load i32, i32* %i_time_scale.i, align 4, !tbaa !107
  %conv9.i = zext i32 %132 to i64
  %mul.i713 = mul nsw i64 %conv9.i, %conv.i
  %last_satd.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %128, i32 0, i32 26
  %133 = load i32, i32* %last_satd.i, align 4, !tbaa !263
  %134 = load i32, i32* %i_mb_count24, align 8, !tbaa !37
  %cmp.i = icmp slt i32 %133, %134
  br i1 %cmp.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end377
  %pred.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %130, i32 0, i32 23
  %135 = load %struct.predictor_t*, %struct.predictor_t** %pred.i, align 8, !tbaa !150
  %i_type.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 51, i32 2
  %136 = load i32, i32* %i_type.i, align 8, !tbaa !230
  %conv13.i = sitofp i32 %133 to float
  %cmp.i.i = icmp slt i32 %133, 10
  br i1 %cmp.i.i, label %if.end.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i
  %conv14.i = sitofp i32 %bits to float
  %qpa_rc.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %128, i32 0, i32 12
  %137 = load float, float* %qpa_rc.i, align 8, !tbaa !276
  %138 = fmul fast float %137, 0x3FC5555560000000
  %div.i.i = fadd fast float %138, -2.000000e+00
  %exp2.i.i = tail call fast float @llvm.exp2.f32(float %div.i.i) #13
  %coeff.i.i = getelementptr inbounds %struct.predictor_t, %struct.predictor_t* %135, i32 %136, i32 1
  %139 = load float, float* %coeff.i.i, align 4, !tbaa !157
  %count.i.i = getelementptr inbounds %struct.predictor_t, %struct.predictor_t* %135, i32 %136, i32 2
  %140 = load float, float* %count.i.i, align 4, !tbaa !158
  %div.i208.i = fdiv fast float %139, %140
  %offset.i.i = getelementptr inbounds %struct.predictor_t, %struct.predictor_t* %135, i32 %136, i32 4
  %141 = load float, float* %offset.i.i, align 4, !tbaa !160
  %div2.i.i = fdiv fast float %141, %140
  %mul.i.i = fmul fast float %conv14.i, 0x3FEB333340000000
  %mul.i209.i = fmul fast float %mul.i.i, %exp2.i.i
  %sub.i.i = fsub fast float %mul.i209.i, %div2.i.i
  %div3.i.i = fdiv fast float %sub.i.i, %conv13.i
  %coeff_min.i.i = getelementptr inbounds %struct.predictor_t, %struct.predictor_t* %135, i32 %136, i32 0
  %142 = load float, float* %coeff_min.i.i, align 4, !tbaa !155
  %143 = tail call fast float @llvm.maxnum.f32(float %div3.i.i, float %142) #13
  %div9.i.i = fmul fast float %div.i208.i, 0x3FE5555560000000
  %mul11.i.i = fmul fast float %div.i208.i, 1.500000e+00
  %cmp.i.i.i = fcmp fast olt float %143, %div9.i.i
  %cmp1.i.i.i = fcmp fast ogt float %143, %mul11.i.i
  %narrow.sel66.i.i = select fast i1 %cmp1.i.i.i, float %mul11.i.i, float %143
  %narrow.sel.i.i = select fast i1 %cmp.i.i.i, float %div9.i.i, float %narrow.sel66.i.i
  %mul15.i.i = fmul fast float %narrow.sel.i.i, %conv13.i
  %sub16.i.i = fsub fast float %mul.i209.i, %mul15.i.i
  %cmp17.i.i = fcmp fast ult float %sub16.i.i, 0.000000e+00
  %new_coeff.0.i.i = select i1 %cmp17.i.i, float %143, float %narrow.sel.i.i
  %new_offset.0.i.i = select i1 %cmp17.i.i, float 0.000000e+00, float %sub16.i.i
  %decay.i.i = getelementptr inbounds %struct.predictor_t, %struct.predictor_t* %135, i32 %136, i32 3
  %144 = load float, float* %decay.i.i, align 4, !tbaa !159
  %mul22.i.i = fmul fast float %144, %140
  %mul25.i.i = fmul fast float %144, %139
  %mul28.i.i = fmul fast float %144, %141
  %inc.i.i = fadd fast float %mul22.i.i, 1.000000e+00
  store float %inc.i.i, float* %count.i.i, align 4, !tbaa !158
  %add.i.i = fadd fast float %new_coeff.0.i.i, %mul25.i.i
  store float %add.i.i, float* %coeff.i.i, align 4, !tbaa !157
  %add32.i.i = fadd fast float %new_offset.0.i.i, %mul28.i.i
  store float %add32.i.i, float* %offset.i.i, align 4, !tbaa !160
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i.i, %if.then.i, %if.end377
  %b_vbv.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %128, i32 0, i32 2
  %145 = load i32, i32* %b_vbv.i, align 8, !tbaa !125
  %tobool.i = icmp eq i32 %145, 0
  br i1 %tobool.i, label %update_vbv.exit, label %if.end16.i

if.end16.i:                                       ; preds = %if.end.i
  %conv17.i = sext i32 %bits to i64
  %mul23.i = mul nsw i64 %conv9.i, %conv17.i
  %buffer_fill_final.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %130, i32 0, i32 18
  %146 = load i64, i64* %buffer_fill_final.i, align 8, !tbaa !124
  %sub.i = sub i64 %146, %mul23.i
  store i64 %sub.i, i64* %buffer_fill_final.i, align 8, !tbaa !124
  %buffer_fill_final_min.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %130, i32 0, i32 19
  %147 = load i64, i64* %buffer_fill_final_min.i, align 8, !tbaa !123
  %sub24.i = sub i64 %147, %mul23.i
  store i64 %sub24.i, i64* %buffer_fill_final_min.i, align 8, !tbaa !123
  %cmp26.i = icmp slt i64 %sub24.i, 0
  br i1 %cmp26.i, label %if.then28.i, label %if.end45.i

if.then28.i:                                      ; preds = %if.end16.i
  %conv30.i = sitofp i64 %sub24.i to double
  %conv35.i = uitofp i32 %132 to double
  %div.i714 = fdiv fast double %conv30.i, %conv35.i
  %rate_factor_max_increment.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %128, i32 0, i32 25
  %148 = load float, float* %rate_factor_max_increment.i, align 8, !tbaa !121
  %tobool36.i = fcmp fast une float %148, 0.000000e+00
  br i1 %tobool36.i, label %land.lhs.true.i, label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then28.i
  %qpm.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %128, i32 0, i32 11
  %149 = load float, float* %qpm.i, align 4, !tbaa !254
  %qp_novbv.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %128, i32 0, i32 16
  %150 = load float, float* %qp_novbv.i, align 8, !tbaa !261
  %add.i = fadd fast float %150, %148
  %cmp38.i = fcmp fast ult float %149, %add.i
  br i1 %cmp38.i, label %if.else.i, label %if.then40.i

if.then40.i:                                      ; preds = %land.lhs.true.i
  %i_frame.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 19
  %151 = load i32, i32* %i_frame.i, align 4, !tbaa !228
  tail call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 3, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.105, i32 0, i32 0), i32 %151, double %div.i714) #13
  br label %if.end42.i

if.else.i:                                        ; preds = %land.lhs.true.i, %if.then28.i
  %i_frame41.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 19
  %152 = load i32, i32* %i_frame41.i, align 4, !tbaa !228
  tail call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.106, i32 0, i32 0), i32 %152, double %div.i714) #13
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.else.i, %if.then40.i
  %153 = bitcast i64* %buffer_fill_final.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %153, i8 0, i64 16, i1 false) #13
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.end42.i, %if.end16.i
  %154 = phi i64 [ 0, %if.end42.i ], [ %sub24.i, %if.end16.i ]
  %155 = phi i64 [ 0, %if.end42.i ], [ %sub.i, %if.end16.i ]
  %i_avcintra_class.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 27
  %156 = load i32, i32* %i_avcintra_class.i, align 4, !tbaa !94
  %tobool46.i = icmp eq i32 %156, 0
  br i1 %tobool46.i, label %if.else48.i, label %if.end56.i

if.else48.i:                                      ; preds = %if.end45.i
  %conv49.i = sext i32 %127 to i64
  %i_num_units_in_tick.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 20, i32 16
  %157 = load i32, i32* %i_num_units_in_tick.i, align 4, !tbaa !108
  %conv53.i = zext i32 %157 to i64
  %mul54.i = mul nsw i64 %conv53.i, %conv49.i
  %fenc.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 60
  %158 = load %struct.x264_frame*, %struct.x264_frame** %fenc.i, align 8, !tbaa !80
  %i_cpb_duration.i = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %158, i32 0, i32 11
  %159 = load i64, i64* %i_cpb_duration.i, align 8, !tbaa !238
  %mul55.i = mul i64 %mul54.i, %159
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.else48.i, %if.end45.i
  %buffer_diff.0.i = phi i64 [ %mul55.i, %if.else48.i ], [ %mul.i713, %if.end45.i ]
  %add58.i = add i64 %buffer_diff.0.i, %155
  store i64 %add58.i, i64* %buffer_fill_final.i, align 8, !tbaa !124
  %add60.i = add i64 %buffer_diff.0.i, %154
  store i64 %add60.i, i64* %buffer_fill_final_min.i, align 8, !tbaa !123
  %cmp62.i = icmp sgt i64 %add58.i, %mul.i713
  br i1 %cmp62.i, label %if.then64.i, label %update_vbv.exit

if.then64.i:                                      ; preds = %if.end56.i
  %b_filler.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 14
  %160 = load i32, i32* %b_filler.i, align 8, !tbaa !303
  %tobool67.i = icmp eq i32 %160, 0
  br i1 %tobool67.i, label %if.else108.i, label %if.then68.i

if.then68.i:                                      ; preds = %if.then64.i
  %161 = load i32, i32* %i_time_scale.i, align 4, !tbaa !107
  %conv73.i = zext i32 %161 to i64
  %mul74.i = shl nuw nsw i64 %conv73.i, 3
  %sub76.i = xor i64 %mul.i713, -1
  %add77.i = add i64 %add58.i, %sub76.i
  %sub78.i = add i64 %add77.i, %mul74.i
  %div79.i = sdiv i64 %sub78.i, %mul74.i
  %conv80.i = trunc i64 %div79.i to i32
  br i1 %tobool46.i, label %cond.false.i, label %cond.end95.i

cond.false.i:                                     ; preds = %if.then68.i
  %b_annexb.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 60
  %162 = load i32, i32* %b_annexb.i, align 16, !tbaa !304
  %sub86.i = sub nsw i32 6, %162
  %cmp87.i = icmp sgt i32 %sub86.i, %conv80.i
  %sub86.conv80.i = select i1 %cmp87.i, i32 %sub86.i, i32 %conv80.i
  br label %cond.end95.i

cond.end95.i:                                     ; preds = %cond.false.i, %if.then68.i
  %cond96.in.i = phi i32 [ %sub86.conv80.i, %cond.false.i ], [ %conv80.i, %if.then68.i ]
  %cond96.i = shl nsw i32 %cond96.in.i, 3
  %conv97.i = sext i32 %cond96.i to i64
  %mul103.i = mul nsw i64 %conv97.i, %conv73.i
  %sub105.i = sub i64 %add58.i, %mul103.i
  store i64 %sub105.i, i64* %buffer_fill_final.i, align 8, !tbaa !124
  %sub107.i = sub i64 %add60.i, %mul103.i
  store i64 %sub107.i, i64* %buffer_fill_final_min.i, align 8, !tbaa !123
  br label %update_vbv.exit

if.else108.i:                                     ; preds = %if.then64.i
  %cmp110.i = icmp slt i64 %add58.i, %mul.i713
  %add58.mul.i = select i1 %cmp110.i, i64 %add58.i, i64 %mul.i713
  store i64 %add58.mul.i, i64* %buffer_fill_final.i, align 8, !tbaa !124
  %cmp119.i = icmp slt i64 %add60.i, %mul.i713
  %cond125.i = select i1 %cmp119.i, i64 %add60.i, i64 %mul.i713
  store i64 %cond125.i, i64* %buffer_fill_final_min.i, align 8, !tbaa !123
  br label %update_vbv.exit

update_vbv.exit:                                  ; preds = %if.end.i, %if.end56.i, %cond.end95.i, %if.else108.i
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ %conv80.i, %cond.end95.i ], [ 0, %if.else108.i ], [ 0, %if.end56.i ]
  store i32 %retval.0.i, i32* %filler, align 4, !tbaa !55
  %mul379 = shl nsw i32 %retval.0.i, 3
  %conv380 = sext i32 %mul379 to i64
  %filler_bits_sum = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 30
  %163 = load i64, i64* %filler_bits_sum, align 8, !tbaa !257
  %add381 = add nsw i64 %163, %conv380
  store i64 %add381, i64* %filler_bits_sum, align 8, !tbaa !257
  %b_nal_hrd_parameters_present = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 20, i32 19
  %164 = load i32, i32* %b_nal_hrd_parameters_present, align 4, !tbaa !305
  %tobool383 = icmp eq i32 %164, 0
  br i1 %tobool383, label %cleanup520, label %if.then384

if.then384:                                       ; preds = %update_vbv.exit
  %fenc385 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 60
  %165 = load %struct.x264_frame*, %struct.x264_frame** %fenc385, align 8, !tbaa !80
  %i_frame386 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %165, i32 0, i32 15
  %166 = load i32, i32* %i_frame386, align 4, !tbaa !69
  %cmp387 = icmp eq i32 %166, 0
  br i1 %cmp387, label %if.then389, label %if.else398

if.then389:                                       ; preds = %if.then384
  %cpb_initial_arrival_time = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %165, i32 0, i32 83, i32 0
  store double 0.000000e+00, double* %cpb_initial_arrival_time, align 16, !tbaa !306
  %initial_cpb_removal_delay = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 66
  %167 = load i32, i32* %initial_cpb_removal_delay, align 16, !tbaa !307
  %initial_cpb_removal_delay391 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 69
  store i32 %167, i32* %initial_cpb_removal_delay391, align 4, !tbaa !308
  %initial_cpb_removal_delay_offset = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 67
  %168 = load i32, i32* %initial_cpb_removal_delay_offset, align 4, !tbaa !309
  %initial_cpb_removal_delay_offset392 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 70
  store i32 %168, i32* %initial_cpb_removal_delay_offset392, align 8, !tbaa !310
  %conv394 = sitofp i32 %167 to double
  %div395 = fmul fast double %conv394, 0x3EE74D3B7BA75828
  %nrt_first_access_unit = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 71
  store double %div395, double* %nrt_first_access_unit, align 8, !tbaa !311
  %cpb_removal_time = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %165, i32 0, i32 83, i32 2
  store double %div395, double* %cpb_removal_time, align 16, !tbaa !312
  br label %if.end466

if.else398:                                       ; preds = %if.then384
  %nrt_first_access_unit399 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 71
  %169 = load double, double* %nrt_first_access_unit399, align 8, !tbaa !311
  %i_cpb_delay = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %165, i32 0, i32 12
  %170 = load i64, i64* %i_cpb_delay, align 16, !tbaa !313
  %i_cpb_delay_pir_offset = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 31
  %171 = load i64, i64* %i_cpb_delay_pir_offset, align 8, !tbaa !314
  %sub401 = sub nsw i64 %170, %171
  %conv402 = sitofp i64 %sub401 to double
  %i_num_units_in_tick = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 20, i32 16
  %172 = load i32, i32* %i_num_units_in_tick, align 4, !tbaa !108
  %conv406 = uitofp i32 %172 to double
  %mul407 = fmul fast double %conv402, %conv406
  %173 = load i32, i32* %i_time_scale.i, align 4, !tbaa !107
  %conv411 = uitofp i32 %173 to double
  %div412 = fdiv fast double %mul407, %conv411
  %add413 = fadd fast double %div412, %169
  %cpb_removal_time416 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %165, i32 0, i32 83, i32 2
  store double %add413, double* %cpb_removal_time416, align 16, !tbaa !312
  %b_keyframe = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %165, i32 0, i32 21
  %174 = load i32, i32* %b_keyframe, align 4, !tbaa !315
  %tobool418 = icmp eq i32 %174, 0
  br i1 %tobool418, label %if.then439, label %if.end428

if.end428:                                        ; preds = %if.else398
  store double %add413, double* %nrt_first_access_unit399, align 8, !tbaa !311
  %initial_cpb_removal_delay424 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 66
  %175 = load i32, i32* %initial_cpb_removal_delay424, align 16, !tbaa !307
  %initial_cpb_removal_delay425 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 69
  store i32 %175, i32* %initial_cpb_removal_delay425, align 4, !tbaa !308
  %initial_cpb_removal_delay_offset426 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 67
  %176 = load i32, i32* %initial_cpb_removal_delay_offset426, align 4, !tbaa !309
  %initial_cpb_removal_delay_offset427 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 70
  store i32 %176, i32* %initial_cpb_removal_delay_offset427, align 8, !tbaa !310
  %conv433 = sitofp i32 %175 to double
  %div434 = fmul fast double %conv433, 0x3EE74D3B7BA75828
  %sub435 = fsub fast double %add413, %div434
  br label %if.end444

if.then439:                                       ; preds = %if.else398
  %initial_cpb_removal_delay432741 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 69
  %177 = load i32, i32* %initial_cpb_removal_delay432741, align 4, !tbaa !308
  %conv433742 = sitofp i32 %177 to double
  %initial_cpb_removal_delay_offset440 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 70
  %178 = load i32, i32* %initial_cpb_removal_delay_offset440, align 8, !tbaa !310
  %conv441 = sitofp i32 %178 to double
  %reass.add = fadd fast double %conv441, %conv433742
  %reass.mul = fmul fast double %reass.add, 0xBEE74D3B7BA75828
  %sub443 = fadd fast double %reass.mul, %add413
  br label %if.end444

if.end444:                                        ; preds = %if.end428, %if.then439
  %cpb_earliest_arrival_time.0 = phi double [ %sub435, %if.end428 ], [ %sub443, %if.then439 ]
  %b_cbr_hrd = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 20, i32 21, i32 7
  %179 = load i32, i32* %b_cbr_hrd, align 4, !tbaa !97
  %tobool448 = icmp eq i32 %179, 0
  %previous_cpb_final_arrival_time = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 72
  %180 = load double, double* %previous_cpb_final_arrival_time, align 8, !tbaa !316
  br i1 %tobool448, label %if.else453, label %if.then449

if.then449:                                       ; preds = %if.end444
  %cpb_initial_arrival_time452 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %165, i32 0, i32 83, i32 0
  store double %180, double* %cpb_initial_arrival_time452, align 16, !tbaa !306
  br label %if.end466

if.else453:                                       ; preds = %if.end444
  %181 = tail call fast double @llvm.maxnum.f64(double %180, double %cpb_earliest_arrival_time.0)
  %cpb_initial_arrival_time464 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %165, i32 0, i32 83, i32 0
  store double %181, double* %cpb_initial_arrival_time464, align 16, !tbaa !306
  br label %if.end466

if.end466:                                        ; preds = %if.then449, %if.else453, %if.then389
  %182 = phi double [ %add413, %if.then449 ], [ %add413, %if.else453 ], [ %div395, %if.then389 ]
  %183 = phi double [ %180, %if.then449 ], [ %181, %if.else453 ], [ 0.000000e+00, %if.then389 ]
  %184 = load i32, i32* %filler, align 4, !tbaa !55
  %tobool467 = icmp eq i32 %184, 0
  br i1 %tobool467, label %cond.end482, label %cond.true468

cond.true468:                                     ; preds = %if.end466
  %b_annexb = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 60
  %185 = load i32, i32* %b_annexb, align 16, !tbaa !304
  %sub470 = sub nsw i32 6, %185
  %cmp471 = icmp sgt i32 %sub470, %184
  %sub470. = select i1 %cmp471, i32 %sub470, i32 %184
  %mul480 = shl nsw i32 %sub470., 3
  br label %cond.end482

cond.end482:                                      ; preds = %if.end466, %cond.true468
  %cond483 = phi i32 [ %mul480, %cond.true468 ], [ 0, %if.end466 ]
  %add487 = add nsw i32 %cond483, %bits
  %conv488 = sitofp i32 %add487 to double
  %186 = load i32, i32* %i_bit_rate_unscaled.i, align 4, !tbaa !102
  %conv493 = sitofp i32 %186 to double
  %div494 = fdiv fast double %conv488, %conv493
  %add495 = fadd fast double %div494, %183
  %previous_cpb_final_arrival_time496 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 72
  store double %add495, double* %previous_cpb_final_arrival_time496, align 8, !tbaa !316
  %cpb_final_arrival_time = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %165, i32 0, i32 83, i32 1
  store double %add495, double* %cpb_final_arrival_time, align 8, !tbaa !317
  %i_dpb_output_delay = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %165, i32 0, i32 13
  %187 = load i64, i64* %i_dpb_output_delay, align 8, !tbaa !318
  %conv500 = sitofp i64 %187 to double
  %i_num_units_in_tick504 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 20, i32 16
  %188 = load i32, i32* %i_num_units_in_tick504, align 4, !tbaa !108
  %conv505 = uitofp i32 %188 to double
  %mul506 = fmul fast double %conv505, %conv500
  %189 = load i32, i32* %i_time_scale.i, align 4, !tbaa !107
  %conv511 = uitofp i32 %189 to double
  %div512 = fdiv fast double %mul506, %conv511
  %add516 = fadd fast double %div512, %182
  %dpb_output_time = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %165, i32 0, i32 83, i32 3
  store double %add516, double* %dpb_output_time, align 8, !tbaa !319
  br label %cleanup520

fail:                                             ; preds = %cond.true147.us, %cond.false151, %cleanup292.thread, %if.end246, %if.else, %if.then207, %if.then176, %cond.end95
  tail call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* %h, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.92, i32 0, i32 0)) #13
  br label %cleanup520

cleanup520:                                       ; preds = %cond.end482, %update_vbv.exit, %fail
  %retval.0 = phi i32 [ -1, %fail ], [ 0, %update_vbv.exit ], [ 0, %cond.end482 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind
declare dso_local i32 @fwrite(i8* nocapture, i32, i32, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
define hidden void @x264_8_hrd_fullness(%struct.x264_t* %h) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 2, i32 0
  %0 = load %struct.x264_t*, %struct.x264_t** %arrayidx, align 4, !tbaa !59
  %rc = getelementptr inbounds %struct.x264_t, %struct.x264_t* %0, i32 0, i32 71
  %1 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc, align 64, !tbaa !65
  %i_bit_rate_unscaled = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 20, i32 21, i32 5
  %2 = load i32, i32* %i_bit_rate_unscaled, align 4, !tbaa !102
  %conv = sext i32 %2 to i64
  %i_time_scale = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 20, i32 17
  %3 = load i32, i32* %i_time_scale, align 4, !tbaa !107
  %conv4 = zext i32 %3 to i64
  %mul = mul nsw i64 %conv4, %conv
  %hrd_multiply_denom = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %1, i32 0, i32 73
  %4 = load i64, i64* %hrd_multiply_denom, align 8, !tbaa !135
  %div = udiv i64 %mul, %4
  %buffer_fill_final = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %1, i32 0, i32 18
  %5 = load i64, i64* %buffer_fill_final, align 8, !tbaa !124
  %i_cpb_size_unscaled = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 20, i32 21, i32 6
  %6 = load i32, i32* %i_cpb_size_unscaled, align 4, !tbaa !105
  %conv9 = sext i32 %6 to i64
  %mul15 = mul nsw i64 %conv9, %conv4
  %div17 = udiv i64 90000, %4
  %cmp = icmp slt i64 %5, 0
  %cmp21 = icmp sgt i64 %5, %mul15
  %or.cond = or i1 %cmp, %cmp21
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %cond = select i1 %cmp, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.95, i32 0, i32 0)
  %conv27 = sitofp i64 %5 to double
  %conv32 = uitofp i32 %3 to double
  %div33 = fdiv fast double %conv27, %conv32
  %conv34 = uitofp i64 %mul15 to double
  %div40 = fdiv fast double %conv34, %conv32
  tail call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.93, i32 0, i32 0), i8* %cond, double %div33, double %div40) #13
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %mul41 = mul i64 %div17, %5
  %div42 = udiv i64 %mul41, %div
  %conv43 = trunc i64 %div42 to i32
  %initial_cpb_removal_delay = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 66
  store i32 %conv43, i32* %initial_cpb_removal_delay, align 16, !tbaa !307
  %mul44 = mul i64 %mul15, %div17
  %div45 = udiv i64 %mul44, %div
  %7 = trunc i64 %div45 to i32
  %conv48 = sub i32 %7, %conv43
  %initial_cpb_removal_delay_offset = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 67
  store i32 %conv48, i32* %initial_cpb_removal_delay_offset, align 4, !tbaa !309
  %conv50 = sext i32 %conv43 to i64
  %mul51 = mul i64 %div, %conv50
  %div52 = udiv i64 %mul51, %div17
  %buffer_fill_final_min = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %1, i32 0, i32 19
  %8 = load i64, i64* %buffer_fill_final_min, align 8, !tbaa !123
  %cmp53 = icmp slt i64 %8, %div52
  %.div52 = select i1 %cmp53, i64 %8, i64 %div52
  store i64 %.div52, i64* %buffer_fill_final_min, align 8, !tbaa !123
  ret void
}

; Function Attrs: nounwind
define hidden void @x264_8_threads_distribute_ratecontrol(%struct.x264_t* readonly %h) local_unnamed_addr #0 {
entry:
  %rc1 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 71
  %0 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc1, align 64, !tbaa !65
  %qpm = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 11
  %1 = load float, float* %qpm, align 4, !tbaa !254
  %2 = fmul fast float %1, 0x3FC5555560000000
  %div.i = fadd fast float %2, -2.000000e+00
  %exp2.i = tail call fast float @llvm.exp2.f32(float %div.i) #13
  %mul.i = fmul fast float %exp2.i, 0x3FEB333340000000
  %i_frame = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 19
  %3 = load i32, i32* %i_frame, align 4, !tbaa !228
  %cmp = icmp eq i32 %3, 0
  %i_threads = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 1
  %4 = load i32, i32* %i_threads, align 4, !tbaa !126
  br i1 %cmp, label %for.cond.preheader, label %if.end8

for.cond.preheader:                               ; preds = %entry
  %cmp2210 = icmp sgt i32 %4, 0
  br i1 %cmp2210, label %for.body.lr.ph, label %if.end8.for.cond.cleanup14_crit_edge

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %arraydecay7 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 62, i32 0
  %5 = bitcast [2 x %struct.predictor_t]* %arraydecay7 to i8*
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end
  %6 = phi i32 [ %4, %for.body.lr.ph ], [ %10, %if.end ]
  %i.0211 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end ]
  %arrayidx = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 2, i32 %i.0211
  %7 = load %struct.x264_t*, %struct.x264_t** %arrayidx, align 4, !tbaa !59
  %cmp3 = icmp eq %struct.x264_t* %7, %h
  br i1 %cmp3, label %if.end, label %if.then4

if.then4:                                         ; preds = %for.body
  %rc5 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %7, i32 0, i32 71
  %8 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc5, align 64, !tbaa !65
  %arraydecay = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %8, i32 0, i32 62, i32 0
  %9 = bitcast [2 x %struct.predictor_t]* %arraydecay to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(120) %9, i8* nonnull align 4 dereferenceable(120) %5, i32 120, i1 false)
  %.pre = load i32, i32* %i_threads, align 4, !tbaa !126
  br label %if.end

if.end:                                           ; preds = %for.body, %if.then4
  %10 = phi i32 [ %6, %for.body ], [ %.pre, %if.then4 ]
  %inc = add nuw nsw i32 %i.0211, 1
  %cmp2 = icmp slt i32 %inc, %10
  br i1 %cmp2, label %for.body, label %if.end8

if.end8:                                          ; preds = %if.end, %entry
  %11 = phi i32 [ %4, %entry ], [ %10, %if.end ]
  %i_threads12 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 1
  %cmp13205 = icmp sgt i32 %11, 0
  br i1 %cmp13205, label %for.body15.lr.ph, label %if.end8.for.cond.cleanup14_crit_edge

if.end8.for.cond.cleanup14_crit_edge:             ; preds = %for.cond.preheader, %if.end8
  %12 = phi i32 [ %11, %if.end8 ], [ %4, %for.cond.preheader ]
  %b_vbv51.phi.trans.insert = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 2
  %.pre217 = load i32, i32* %b_vbv51.phi.trans.insert, align 8, !tbaa !125
  br label %for.cond.cleanup14

for.body15.lr.ph:                                 ; preds = %if.end8
  %13 = bitcast %struct.x264_ratecontrol_t* %0 to i8*
  %i_type = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 51, i32 2
  %b_vbv = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 2
  %frame_size_planned = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 59
  %fdec = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 61
  %pred = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 23
  br label %for.body15

for.cond.cleanup14:                               ; preds = %if.end47, %if.end8.for.cond.cleanup14_crit_edge
  %14 = phi i32 [ %.pre217, %if.end8.for.cond.cleanup14_crit_edge ], [ %20, %if.end47 ]
  %.lcssa = phi i32 [ %12, %if.end8.for.cond.cleanup14_crit_edge ], [ %29, %if.end47 ]
  %tobool52 = icmp eq i32 %14, 0
  br i1 %tobool52, label %if.end105, label %land.lhs.true53

for.body15:                                       ; preds = %for.body15.lr.ph, %if.end47
  %i9.0206 = phi i32 [ 0, %for.body15.lr.ph ], [ %inc49, %if.end47 ]
  %arrayidx18 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 2, i32 %i9.0206
  %15 = load %struct.x264_t*, %struct.x264_t** %arrayidx18, align 4, !tbaa !59
  %cmp19 = icmp eq %struct.x264_t* %15, %h
  br i1 %cmp19, label %if.end22, label %if.then20

if.then20:                                        ; preds = %for.body15
  %rc21 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %15, i32 0, i32 71
  %16 = bitcast %struct.x264_ratecontrol_t** %rc21 to i8**
  %17 = load i8*, i8** %16, align 64, !tbaa !65
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 8 dereferenceable(496) %17, i8* nonnull align 8 dereferenceable(496) %13, i32 496, i1 false)
  br label %if.end22

if.end22:                                         ; preds = %for.body15, %if.then20
  %rc23 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %15, i32 0, i32 71
  %18 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc23, align 64, !tbaa !65
  %19 = load i32, i32* %i_type, align 8, !tbaa !230
  %arraydecay26 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %18, i32 0, i32 62, i32 %19, i32 0
  %row_pred = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %18, i32 0, i32 61
  store %struct.predictor_t* %arraydecay26, %struct.predictor_t** %row_pred, align 8, !tbaa !237
  %20 = load i32, i32* %b_vbv, align 8, !tbaa !125
  %tobool = icmp eq i32 %20, 0
  br i1 %tobool, label %if.end47, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end22
  %21 = load double, double* %frame_size_planned, align 8, !tbaa !241
  %tobool28 = fcmp fast une double %21, 0.000000e+00
  br i1 %tobool28, label %if.then29, label %if.end47

if.then29:                                        ; preds = %land.lhs.true
  %i_threadslice_start = getelementptr inbounds %struct.x264_t, %struct.x264_t* %15, i32 0, i32 7
  %22 = load i32, i32* %i_threadslice_start, align 4, !tbaa !279
  %i_threadslice_end = getelementptr inbounds %struct.x264_t, %struct.x264_t* %15, i32 0, i32 8
  %23 = load i32, i32* %i_threadslice_end, align 8, !tbaa !281
  %cmp31202 = icmp slt i32 %22, %23
  br i1 %cmp31202, label %for.body32.lr.ph, label %for.end36

for.body32.lr.ph:                                 ; preds = %if.then29
  %24 = load %struct.x264_frame*, %struct.x264_frame** %fdec, align 4, !tbaa !233
  %i_row_satd = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %24, i32 0, i32 69
  %25 = load i32*, i32** %i_row_satd, align 4, !tbaa !277
  br label %for.body32

for.body32:                                       ; preds = %for.body32.lr.ph, %for.body32
  %row.0204 = phi i32 [ %22, %for.body32.lr.ph ], [ %inc35, %for.body32 ]
  %size.0203 = phi i32 [ 0, %for.body32.lr.ph ], [ %add, %for.body32 ]
  %arrayidx33 = getelementptr inbounds i32, i32* %25, i32 %row.0204
  %26 = load i32, i32* %arrayidx33, align 4, !tbaa !55
  %add = add nsw i32 %26, %size.0203
  %inc35 = add nsw i32 %row.0204, 1
  %cmp31 = icmp slt i32 %inc35, %23
  br i1 %cmp31, label %for.body32, label %for.end36

for.end36:                                        ; preds = %for.body32, %if.then29
  %size.0.lcssa = phi i32 [ 0, %if.then29 ], [ %add, %for.body32 ]
  %27 = load %struct.predictor_t*, %struct.predictor_t** %pred, align 8, !tbaa !150
  %28 = mul i32 %i9.0206, 5
  %mul = add i32 %28, 5
  %add40 = add nsw i32 %mul, %19
  %conv = sitofp i32 %size.0.lcssa to float
  %arrayidx41.idx = getelementptr %struct.predictor_t, %struct.predictor_t* %27, i32 %add40, i32 1
  %arrayidx41.idx.val = load float, float* %arrayidx41.idx, align 4, !tbaa !157
  %arrayidx41.idx168 = getelementptr %struct.predictor_t, %struct.predictor_t* %27, i32 %add40, i32 2
  %arrayidx41.idx168.val = load float, float* %arrayidx41.idx168, align 4, !tbaa !158
  %arrayidx41.idx169 = getelementptr %struct.predictor_t, %struct.predictor_t* %27, i32 %add40, i32 4
  %arrayidx41.idx169.val = load float, float* %arrayidx41.idx169, align 4, !tbaa !160
  %mul.i194 = fmul fast float %arrayidx41.idx.val, %conv
  %add.i195 = fadd fast float %arrayidx41.idx169.val, %mul.i194
  %mul1.i = fmul fast float %mul.i, %arrayidx41.idx168.val
  %div.i196 = fdiv fast float %add.i195, %mul1.i
  %conv43 = fpext float %div.i196 to double
  br label %if.end47

if.end47:                                         ; preds = %land.lhs.true, %if.end22, %for.end36
  %.sink = phi double [ %conv43, %for.end36 ], [ 0.000000e+00, %if.end22 ], [ 0.000000e+00, %land.lhs.true ]
  %slice_size_planned46 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %18, i32 0, i32 60
  store double %.sink, double* %slice_size_planned46, align 8, !tbaa !280
  %inc49 = add nuw nsw i32 %i9.0206, 1
  %29 = load i32, i32* %i_threads12, align 4, !tbaa !126
  %cmp13 = icmp slt i32 %inc49, %29
  br i1 %cmp13, label %for.body15, label %for.cond.cleanup14

land.lhs.true53:                                  ; preds = %for.cond.cleanup14
  %frame_size_planned54 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 59
  %30 = load double, double* %frame_size_planned54, align 8, !tbaa !241
  %tobool55 = fcmp fast une double %30, 0.000000e+00
  br i1 %tobool55, label %if.then56, label %if.end105

if.then56:                                        ; preds = %land.lhs.true53
  %cmp31.i172 = icmp sgt i32 %.lcssa, 0
  br i1 %cmp31.i172, label %for.body.i185, label %threads_normalize_predictors.exit193

for.body8.i192.preheader:                         ; preds = %for.body.i185
  %31 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc1, align 64, !tbaa !65
  %frame_size_planned.i174 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %31, i32 0, i32 59
  %32 = load double, double* %frame_size_planned.i174, align 8, !tbaa !241
  %33 = fdiv fast double 1.000000e+00, %add.i182
  br label %for.body8.i192

for.body.i185:                                    ; preds = %if.then56, %for.body.i185
  %totalsize.033.i177 = phi double [ %add.i182, %for.body.i185 ], [ 0.000000e+00, %if.then56 ]
  %i.032.i178 = phi i32 [ %inc.i183, %for.body.i185 ], [ 0, %if.then56 ]
  %arrayidx.i179 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 2, i32 %i.032.i178
  %34 = load %struct.x264_t*, %struct.x264_t** %arrayidx.i179, align 4, !tbaa !59
  %rc.i180 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %34, i32 0, i32 71
  %35 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc.i180, align 64, !tbaa !65
  %slice_size_planned.i181 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %35, i32 0, i32 60
  %36 = load double, double* %slice_size_planned.i181, align 8, !tbaa !280
  %add.i182 = fadd fast double %36, %totalsize.033.i177
  %inc.i183 = add nuw nsw i32 %i.032.i178, 1
  %exitcond215 = icmp eq i32 %inc.i183, %.lcssa
  br i1 %exitcond215, label %for.body8.i192.preheader, label %for.body.i185

for.body8.i192:                                   ; preds = %for.body8.i192.preheader, %for.body8.i192
  %i2.030.i186 = phi i32 [ %inc14.i190, %for.body8.i192 ], [ 0, %for.body8.i192.preheader ]
  %arrayidx10.i187 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 2, i32 %i2.030.i186
  %37 = load %struct.x264_t*, %struct.x264_t** %arrayidx10.i187, align 4, !tbaa !59
  %rc11.i188 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %37, i32 0, i32 71
  %38 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc11.i188, align 64, !tbaa !65
  %slice_size_planned12.i189 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %38, i32 0, i32 60
  %39 = load double, double* %slice_size_planned12.i189, align 8, !tbaa !280
  %40 = fmul fast double %39, %32
  %41 = fmul fast double %40, %33
  store double %41, double* %slice_size_planned12.i189, align 8, !tbaa !280
  %inc14.i190 = add nuw nsw i32 %i2.030.i186, 1
  %exitcond.i191 = icmp eq i32 %inc14.i190, %.lcssa
  br i1 %exitcond.i191, label %threads_normalize_predictors.exit193, label %for.body8.i192

threads_normalize_predictors.exit193:             ; preds = %for.body8.i192, %if.then56
  %single_frame_vbv = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 24
  %42 = load i32, i32* %single_frame_vbv, align 4, !tbaa !117
  %tobool57 = icmp eq i32 %42, 0
  br i1 %tobool57, label %if.end85, label %for.cond60.preheader

for.cond60.preheader:                             ; preds = %threads_normalize_predictors.exit193
  br i1 %cmp31.i172, label %for.body66, label %if.end105

for.cond.cleanup65:                               ; preds = %for.body66
  br i1 %cmp31.i172, label %for.body.i, label %if.end105

for.body8.i.preheader:                            ; preds = %for.body.i
  %43 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc1, align 64, !tbaa !65
  %frame_size_planned.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %43, i32 0, i32 59
  %44 = load double, double* %frame_size_planned.i, align 8, !tbaa !241
  %45 = fdiv fast double 1.000000e+00, %add.i
  br label %for.body8.i

for.body.i:                                       ; preds = %for.cond.cleanup65, %for.body.i
  %totalsize.033.i = phi double [ %add.i, %for.body.i ], [ 0.000000e+00, %for.cond.cleanup65 ]
  %i.032.i = phi i32 [ %inc.i, %for.body.i ], [ 0, %for.cond.cleanup65 ]
  %arrayidx.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 2, i32 %i.032.i
  %46 = load %struct.x264_t*, %struct.x264_t** %arrayidx.i, align 4, !tbaa !59
  %rc.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %46, i32 0, i32 71
  %47 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc.i, align 64, !tbaa !65
  %slice_size_planned.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %47, i32 0, i32 60
  %48 = load double, double* %slice_size_planned.i, align 8, !tbaa !280
  %add.i = fadd fast double %48, %totalsize.033.i
  %inc.i = add nuw nsw i32 %i.032.i, 1
  %exitcond213 = icmp eq i32 %inc.i, %.lcssa
  br i1 %exitcond213, label %for.body8.i.preheader, label %for.body.i

for.body8.i:                                      ; preds = %for.body8.i.preheader, %for.body8.i
  %i2.030.i = phi i32 [ %inc14.i, %for.body8.i ], [ 0, %for.body8.i.preheader ]
  %arrayidx10.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 2, i32 %i2.030.i
  %49 = load %struct.x264_t*, %struct.x264_t** %arrayidx10.i, align 4, !tbaa !59
  %rc11.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %49, i32 0, i32 71
  %50 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc11.i, align 64, !tbaa !65
  %slice_size_planned12.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %50, i32 0, i32 60
  %51 = load double, double* %slice_size_planned12.i, align 8, !tbaa !280
  %52 = fmul fast double %51, %44
  %53 = fmul fast double %52, %45
  store double %53, double* %slice_size_planned12.i, align 8, !tbaa !280
  %inc14.i = add nuw nsw i32 %i2.030.i, 1
  %exitcond.i = icmp eq i32 %inc14.i, %.lcssa
  br i1 %exitcond.i, label %if.end85, label %for.body8.i

for.body66:                                       ; preds = %for.cond60.preheader, %for.body66
  %i59.0201 = phi i32 [ %inc83, %for.body66 ], [ 0, %for.cond60.preheader ]
  %arrayidx69 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 2, i32 %i59.0201
  %54 = load %struct.x264_t*, %struct.x264_t** %arrayidx69, align 4, !tbaa !59
  %i_threadslice_end70 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %54, i32 0, i32 8
  %55 = load i32, i32* %i_threadslice_end70, align 8, !tbaa !281
  %i_threadslice_start71 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %54, i32 0, i32 7
  %56 = load i32, i32* %i_threadslice_start71, align 4, !tbaa !279
  %sub = sub nsw i32 %55, %56
  %conv72 = sitofp i32 %sub to double
  %div = fdiv fast double 1.000000e+00, %conv72
  %cmp1.i = fcmp fast ogt double %div, 2.500000e-01
  %cond.i = select fast i1 %cmp1.i, double 2.500000e-01, double %div
  %57 = tail call fast double @llvm.maxnum.f64(double %cond.i, double 5.000000e-02)
  %conv74 = fptrunc double %57 to float
  %mul75 = fmul fast float %conv74, 2.000000e+00
  %conv76 = fpext float %mul75 to double
  %mul78 = fmul fast double %30, %conv76
  %rc79 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %54, i32 0, i32 71
  %58 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc79, align 64, !tbaa !65
  %slice_size_planned80 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %58, i32 0, i32 60
  %59 = load double, double* %slice_size_planned80, align 8, !tbaa !280
  %add81 = fadd fast double %mul78, %59
  store double %add81, double* %slice_size_planned80, align 8, !tbaa !280
  %inc83 = add nuw nsw i32 %i59.0201, 1
  %exitcond214 = icmp eq i32 %inc83, %.lcssa
  br i1 %exitcond214, label %for.cond.cleanup65, label %for.body66

if.end85:                                         ; preds = %for.body8.i, %threads_normalize_predictors.exit193
  br i1 %cmp31.i172, label %for.body93, label %if.end105

for.body93:                                       ; preds = %if.end85, %for.body93
  %i86.0199 = phi i32 [ %inc103, %for.body93 ], [ 0, %if.end85 ]
  %arrayidx95 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 2, i32 %i86.0199
  %60 = load %struct.x264_t*, %struct.x264_t** %arrayidx95, align 4, !tbaa !59
  %rc96 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %60, i32 0, i32 71
  %61 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc96, align 64, !tbaa !65
  %slice_size_planned97 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %61, i32 0, i32 60
  %62 = load double, double* %slice_size_planned97, align 8, !tbaa !280
  %conv98 = fptrunc double %62 to float
  %frame_size_estimated = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %61, i32 0, i32 57
  store volatile float %conv98, float* %frame_size_estimated, align 4, !tbaa !243
  %inc103 = add nuw nsw i32 %i86.0199, 1
  %exitcond = icmp eq i32 %inc103, %.lcssa
  br i1 %exitcond, label %if.end105, label %for.body93

if.end105:                                        ; preds = %for.body93, %for.cond60.preheader, %for.cond.cleanup65, %if.end85, %for.cond.cleanup14, %land.lhs.true53
  ret void
}

; Function Attrs: nofree nounwind
define hidden void @x264_8_threads_merge_ratecontrol(%struct.x264_t* nocapture readonly %h) local_unnamed_addr #10 {
entry:
  %rc1 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 71
  %0 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc1, align 64, !tbaa !65
  %i_threads = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 1
  %1 = load i32, i32* %i_threads, align 4, !tbaa !126
  %cmp79 = icmp sgt i32 %1, 0
  br i1 %cmp79, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %entry
  %i_vbv_buffer_size = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 10
  %2 = load i32, i32* %i_vbv_buffer_size, align 8, !tbaa !90
  %tobool = icmp eq i32 %2, 0
  %fdec = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 61
  %pred = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 23
  %i_type = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 51, i32 2
  %i_mb_width = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 0
  %qpa_rc30 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 12
  %qpa_aq32 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 14
  br label %for.body

for.cond.cleanup:                                 ; preds = %cleanup, %entry
  ret void

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %i.080 = phi i32 [ 0, %for.body.lr.ph ], [ %inc36, %cleanup ]
  %arrayidx = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 2, i32 %i.080
  %3 = load %struct.x264_t*, %struct.x264_t** %arrayidx, align 4, !tbaa !59
  %rc4 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %3, i32 0, i32 71
  %4 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc4, align 64, !tbaa !65
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %i_threadslice_start = getelementptr inbounds %struct.x264_t, %struct.x264_t* %3, i32 0, i32 7
  %5 = load i32, i32* %i_threadslice_start, align 4, !tbaa !279
  %i_threadslice_end = getelementptr inbounds %struct.x264_t, %struct.x264_t* %3, i32 0, i32 8
  %6 = load i32, i32* %i_threadslice_end, align 8, !tbaa !281
  %cmp875 = icmp sgt i32 %6, %5
  br i1 %cmp875, label %for.body10.lr.ph, label %for.cond.cleanup9

for.body10.lr.ph:                                 ; preds = %if.then
  %7 = load %struct.x264_frame*, %struct.x264_frame** %fdec, align 4, !tbaa !233
  %i_row_satd = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %7, i32 0, i32 69
  %8 = load i32*, i32** %i_row_satd, align 4, !tbaa !277
  br label %for.body10

for.cond.cleanup9:                                ; preds = %for.body10, %if.then
  %size.0.lcssa = phi i32 [ 0, %if.then ], [ %add, %for.body10 ]
  %9 = load %struct.predictor_t*, %struct.predictor_t** %pred, align 8, !tbaa !150
  %10 = load i32, i32* %i_type, align 8, !tbaa !230
  %11 = mul i32 %i.080, 5
  %mul21 = add i32 %11, 5
  %add22 = add nsw i32 %mul21, %10
  %conv24 = sitofp i32 %size.0.lcssa to float
  %cmp.i = icmp slt i32 %size.0.lcssa, 10
  br i1 %cmp.i, label %if.end, label %if.end.i

if.end.i:                                         ; preds = %for.cond.cleanup9
  %i_mv_bits = getelementptr inbounds %struct.x264_t, %struct.x264_t* %3, i32 0, i32 72, i32 21, i32 0
  %12 = load i32, i32* %i_mv_bits, align 8, !tbaa !296
  %i_tex_bits = getelementptr inbounds %struct.x264_t, %struct.x264_t* %3, i32 0, i32 72, i32 21, i32 1
  %13 = load i32, i32* %i_tex_bits, align 4, !tbaa !295
  %add14 = add nsw i32 %13, %12
  %i_misc_bits = getelementptr inbounds %struct.x264_t, %struct.x264_t* %3, i32 0, i32 72, i32 21, i32 2
  %14 = load i32, i32* %i_misc_bits, align 8, !tbaa !297
  %add17 = add nsw i32 %add14, %14
  %conv25 = sitofp i32 %add17 to float
  %qpa_rc = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %4, i32 0, i32 12
  %15 = load float, float* %qpa_rc, align 8, !tbaa !276
  %16 = fmul fast float %15, 0x3FC5555560000000
  %sub = sub nsw i32 %6, %5
  %17 = load i32, i32* %i_mb_width, align 64, !tbaa !51
  %mul = mul nsw i32 %17, %sub
  %conv = sitofp i32 %mul to float
  %18 = fdiv fast float %16, %conv
  %div.i = fadd fast float %18, -2.000000e+00
  %exp2.i = tail call fast float @llvm.exp2.f32(float %div.i) #13
  %coeff.i = getelementptr inbounds %struct.predictor_t, %struct.predictor_t* %9, i32 %add22, i32 1
  %19 = load float, float* %coeff.i, align 4, !tbaa !157
  %count.i = getelementptr inbounds %struct.predictor_t, %struct.predictor_t* %9, i32 %add22, i32 2
  %20 = load float, float* %count.i, align 4, !tbaa !158
  %div.i73 = fdiv fast float %19, %20
  %offset.i = getelementptr inbounds %struct.predictor_t, %struct.predictor_t* %9, i32 %add22, i32 4
  %21 = load float, float* %offset.i, align 4, !tbaa !160
  %div2.i = fdiv fast float %21, %20
  %mul.i = fmul fast float %conv25, 0x3FEB333340000000
  %mul.i74 = fmul fast float %mul.i, %exp2.i
  %sub.i = fsub fast float %mul.i74, %div2.i
  %div3.i = fdiv fast float %sub.i, %conv24
  %coeff_min.i = getelementptr inbounds %struct.predictor_t, %struct.predictor_t* %9, i32 %add22, i32 0
  %22 = load float, float* %coeff_min.i, align 4, !tbaa !155
  %23 = tail call fast float @llvm.maxnum.f32(float %div3.i, float %22) #13
  %div9.i = fmul fast float %div.i73, 0x3FE5555560000000
  %mul11.i = fmul fast float %div.i73, 1.500000e+00
  %cmp.i.i = fcmp fast olt float %23, %div9.i
  %cmp1.i.i = fcmp fast ogt float %23, %mul11.i
  %narrow.sel66.i = select fast i1 %cmp1.i.i, float %mul11.i, float %23
  %narrow.sel.i = select fast i1 %cmp.i.i, float %div9.i, float %narrow.sel66.i
  %mul15.i = fmul fast float %narrow.sel.i, %conv24
  %sub16.i = fsub fast float %mul.i74, %mul15.i
  %cmp17.i = fcmp fast ult float %sub16.i, 0.000000e+00
  %new_coeff.0.i = select i1 %cmp17.i, float %23, float %narrow.sel.i
  %new_offset.0.i = select i1 %cmp17.i, float 0.000000e+00, float %sub16.i
  %decay.i = getelementptr inbounds %struct.predictor_t, %struct.predictor_t* %9, i32 %add22, i32 3
  %24 = load float, float* %decay.i, align 4, !tbaa !159
  %mul22.i = fmul fast float %24, %20
  %mul25.i = fmul fast float %24, %19
  %mul28.i = fmul fast float %24, %21
  %inc.i = fadd fast float %mul22.i, 1.000000e+00
  store float %inc.i, float* %count.i, align 4, !tbaa !158
  %add.i = fadd fast float %new_coeff.0.i, %mul25.i
  store float %add.i, float* %coeff.i, align 4, !tbaa !157
  %add32.i = fadd fast float %new_offset.0.i, %mul28.i
  store float %add32.i, float* %offset.i, align 4, !tbaa !160
  br label %if.end

for.body10:                                       ; preds = %for.body10.lr.ph, %for.body10
  %row.077 = phi i32 [ %5, %for.body10.lr.ph ], [ %inc, %for.body10 ]
  %size.076 = phi i32 [ 0, %for.body10.lr.ph ], [ %add, %for.body10 ]
  %arrayidx11 = getelementptr inbounds i32, i32* %8, i32 %row.077
  %25 = load i32, i32* %arrayidx11, align 4, !tbaa !55
  %add = add nsw i32 %25, %size.076
  %inc = add nsw i32 %row.077, 1
  %cmp8 = icmp slt i32 %inc, %6
  br i1 %cmp8, label %for.body10, label %for.cond.cleanup9

if.end:                                           ; preds = %if.end.i, %for.cond.cleanup9, %for.body
  %tobool26 = icmp eq i32 %i.080, 0
  br i1 %tobool26, label %cleanup, label %if.end28

if.end28:                                         ; preds = %if.end
  %qpa_rc29 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %4, i32 0, i32 12
  %26 = load float, float* %qpa_rc29, align 8, !tbaa !276
  %27 = load float, float* %qpa_rc30, align 8, !tbaa !276
  %add31 = fadd fast float %27, %26
  store float %add31, float* %qpa_rc30, align 8, !tbaa !276
  %qpa_aq = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %4, i32 0, i32 14
  %28 = load i32, i32* %qpa_aq, align 8, !tbaa !274
  %29 = load i32, i32* %qpa_aq32, align 8, !tbaa !274
  %add33 = add nsw i32 %29, %28
  store i32 %add33, i32* %qpa_aq32, align 8, !tbaa !274
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end28
  %inc36 = add nuw nsw i32 %i.080, 1
  %cmp = icmp slt i32 %inc36, %1
  br i1 %cmp, label %for.body, label %for.cond.cleanup
}

; Function Attrs: nounwind
define hidden void @x264_8_thread_sync_ratecontrol(%struct.x264_t* readonly %cur, %struct.x264_t* readonly %prev, %struct.x264_t* readonly %next) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.x264_t* %cur, %prev
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %rc = getelementptr inbounds %struct.x264_t, %struct.x264_t* %cur, i32 0, i32 71
  %0 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc, align 64, !tbaa !65
  %accum_p_qp = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 50
  %rc1 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %prev, i32 0, i32 71
  %1 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc1, align 64, !tbaa !65
  %accum_p_qp2 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %1, i32 0, i32 50
  %2 = bitcast double* %accum_p_qp2 to i64*
  %3 = bitcast double* %accum_p_qp to i64*
  %4 = load i64, i64* %2, align 8
  store i64 %4, i64* %3, align 8
  %5 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc, align 64, !tbaa !65
  %accum_p_norm = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %5, i32 0, i32 51
  %6 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc1, align 64, !tbaa !65
  %accum_p_norm5 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %6, i32 0, i32 51
  %7 = bitcast double* %accum_p_norm5 to i64*
  %8 = bitcast double* %accum_p_norm to i64*
  %9 = load i64, i64* %7, align 8
  store i64 %9, i64* %8, align 8
  %10 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc, align 64, !tbaa !65
  %last_satd = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %10, i32 0, i32 26
  %11 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc1, align 64, !tbaa !65
  %last_satd8 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %11, i32 0, i32 26
  %12 = load i32, i32* %last_satd8, align 4
  store i32 %12, i32* %last_satd, align 4
  %13 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc, align 64, !tbaa !65
  %last_rceq = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %13, i32 0, i32 27
  %14 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc1, align 64, !tbaa !65
  %last_rceq11 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %14, i32 0, i32 27
  %15 = bitcast double* %last_rceq11 to i64*
  %16 = bitcast double* %last_rceq to i64*
  %17 = load i64, i64* %15, align 8
  store i64 %17, i64* %16, align 8
  %18 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc, align 64, !tbaa !65
  %last_qscale_for = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %18, i32 0, i32 48
  %19 = bitcast [3 x double]* %last_qscale_for to i8*
  %20 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc1, align 64, !tbaa !65
  %last_qscale_for14 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %20, i32 0, i32 48
  %21 = bitcast [3 x double]* %last_qscale_for14 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 8 dereferenceable(24) %19, i8* nonnull align 8 dereferenceable(24) %21, i32 24, i1 false)
  %22 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc, align 64, !tbaa !65
  %last_non_b_pict_type = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %22, i32 0, i32 49
  %23 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc1, align 64, !tbaa !65
  %last_non_b_pict_type17 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %23, i32 0, i32 49
  %24 = load i32, i32* %last_non_b_pict_type17, align 8
  store i32 %24, i32* %last_non_b_pict_type, align 8
  %25 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc, align 64, !tbaa !65
  %short_term_cplxsum = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %25, i32 0, i32 33
  %26 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc1, align 64, !tbaa !65
  %short_term_cplxsum20 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %26, i32 0, i32 33
  %27 = bitcast double* %short_term_cplxsum20 to i64*
  %28 = bitcast double* %short_term_cplxsum to i64*
  %29 = load i64, i64* %27, align 8
  store i64 %29, i64* %28, align 8
  %30 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc, align 64, !tbaa !65
  %short_term_cplxcount = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %30, i32 0, i32 34
  %31 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc1, align 64, !tbaa !65
  %short_term_cplxcount23 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %31, i32 0, i32 34
  %32 = bitcast double* %short_term_cplxcount23 to i64*
  %33 = bitcast double* %short_term_cplxcount to i64*
  %34 = load i64, i64* %32, align 8
  store i64 %34, i64* %33, align 8
  %35 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc, align 64, !tbaa !65
  %bframes = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %35, i32 0, i32 64
  %36 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc1, align 64, !tbaa !65
  %bframes26 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %36, i32 0, i32 64
  %37 = load i32, i32* %bframes26, align 8
  store i32 %37, i32* %bframes, align 8
  %38 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc, align 64, !tbaa !65
  %prev_zone = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %38, i32 0, i32 68
  %39 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc1, align 64, !tbaa !65
  %prev_zone29 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %39, i32 0, i32 68
  %40 = bitcast %struct.x264_zone_t** %prev_zone29 to i32*
  %41 = bitcast %struct.x264_zone_t** %prev_zone to i32*
  %42 = load i32, i32* %40, align 8
  store i32 %42, i32* %41, align 8
  %43 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc, align 64, !tbaa !65
  %qpbuf_pos = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %43, i32 0, i32 56, i32 1
  %44 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc1, align 64, !tbaa !65
  %qpbuf_pos33 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %44, i32 0, i32 56, i32 1
  %45 = load i32, i32* %qpbuf_pos33, align 8
  store i32 %45, i32* %qpbuf_pos, align 8
  %46 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc, align 64, !tbaa !65
  %bitrate = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %46, i32 0, i32 5
  %47 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc1, align 64, !tbaa !65
  %bitrate36 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %47, i32 0, i32 5
  %48 = bitcast double* %bitrate36 to i64*
  %49 = bitcast double* %bitrate to i64*
  %50 = load i64, i64* %48, align 8
  store i64 %50, i64* %49, align 8
  %51 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc, align 64, !tbaa !65
  %buffer_size = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %51, i32 0, i32 17
  %52 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc1, align 64, !tbaa !65
  %buffer_size39 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %52, i32 0, i32 17
  %53 = bitcast double* %buffer_size39 to i64*
  %54 = bitcast double* %buffer_size to i64*
  %55 = load i64, i64* %53, align 8
  store i64 %55, i64* %54, align 8
  %56 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc, align 64, !tbaa !65
  %buffer_rate = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %56, i32 0, i32 21
  %57 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc1, align 64, !tbaa !65
  %buffer_rate42 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %57, i32 0, i32 21
  %58 = bitcast double* %buffer_rate42 to i64*
  %59 = bitcast double* %buffer_rate to i64*
  %60 = load i64, i64* %58, align 8
  store i64 %60, i64* %59, align 8
  %61 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc, align 64, !tbaa !65
  %vbv_max_rate = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %61, i32 0, i32 22
  %62 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc1, align 64, !tbaa !65
  %vbv_max_rate45 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %62, i32 0, i32 22
  %63 = bitcast double* %vbv_max_rate45 to i64*
  %64 = bitcast double* %vbv_max_rate to i64*
  %65 = load i64, i64* %63, align 8
  store i64 %65, i64* %64, align 8
  %66 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc, align 64, !tbaa !65
  %single_frame_vbv = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %66, i32 0, i32 24
  %67 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc1, align 64, !tbaa !65
  %single_frame_vbv48 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %67, i32 0, i32 24
  %68 = load i32, i32* %single_frame_vbv48, align 4
  store i32 %68, i32* %single_frame_vbv, align 4
  %69 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc, align 64, !tbaa !65
  %cbr_decay = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %69, i32 0, i32 32
  %70 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc1, align 64, !tbaa !65
  %cbr_decay51 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %70, i32 0, i32 32
  %71 = bitcast double* %cbr_decay51 to i64*
  %72 = bitcast double* %cbr_decay to i64*
  %73 = load i64, i64* %71, align 8
  store i64 %73, i64* %72, align 8
  %74 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc, align 64, !tbaa !65
  %rate_factor_constant = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %74, i32 0, i32 35
  %75 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc1, align 64, !tbaa !65
  %rate_factor_constant54 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %75, i32 0, i32 35
  %76 = bitcast double* %rate_factor_constant54 to i64*
  %77 = bitcast double* %rate_factor_constant to i64*
  %78 = load i64, i64* %76, align 8
  store i64 %78, i64* %77, align 8
  %79 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc, align 64, !tbaa !65
  %rate_factor_max_increment = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %79, i32 0, i32 25
  %80 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc1, align 64, !tbaa !65
  %rate_factor_max_increment57 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %80, i32 0, i32 25
  %81 = bitcast float* %rate_factor_max_increment57 to i32*
  %82 = bitcast float* %rate_factor_max_increment to i32*
  %83 = load i32, i32* %81, align 8
  store i32 %83, i32* %82, align 8
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %cmp58 = icmp eq %struct.x264_t* %cur, %next
  br i1 %cmp58, label %if.end87, label %if.then59

if.then59:                                        ; preds = %if.end
  %rc60 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %cur, i32 0, i32 71
  %84 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc60, align 64, !tbaa !65
  %cplxr_sum = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %84, i32 0, i32 28
  %85 = load double, double* %cplxr_sum, align 8, !tbaa !139
  %rc61 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %next, i32 0, i32 71
  %86 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc61, align 64, !tbaa !65
  %cplxr_sum62 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %86, i32 0, i32 28
  store double %85, double* %cplxr_sum62, align 8, !tbaa !139
  %expected_bits_sum = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %84, i32 0, i32 29
  %87 = load double, double* %expected_bits_sum, align 8, !tbaa !264
  %expected_bits_sum65 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %86, i32 0, i32 29
  store double %87, double* %expected_bits_sum65, align 8, !tbaa !264
  %filler_bits_sum = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %84, i32 0, i32 30
  %88 = load i64, i64* %filler_bits_sum, align 8, !tbaa !257
  %filler_bits_sum68 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %86, i32 0, i32 30
  store i64 %88, i64* %filler_bits_sum68, align 8, !tbaa !257
  %wanted_bits_window = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %84, i32 0, i32 31
  %89 = load double, double* %wanted_bits_window, align 8, !tbaa !140
  %wanted_bits_window71 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %86, i32 0, i32 31
  store double %89, double* %wanted_bits_window71, align 8, !tbaa !140
  %bframe_bits = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %84, i32 0, i32 65
  %90 = load i32, i32* %bframe_bits, align 4, !tbaa !301
  %bframe_bits74 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %86, i32 0, i32 65
  store i32 %90, i32* %bframe_bits74, align 4, !tbaa !301
  %initial_cpb_removal_delay = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %84, i32 0, i32 69
  %91 = load i32, i32* %initial_cpb_removal_delay, align 4, !tbaa !308
  %initial_cpb_removal_delay77 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %86, i32 0, i32 69
  store i32 %91, i32* %initial_cpb_removal_delay77, align 4, !tbaa !308
  %initial_cpb_removal_delay_offset = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %84, i32 0, i32 70
  %92 = load i32, i32* %initial_cpb_removal_delay_offset, align 8, !tbaa !310
  %initial_cpb_removal_delay_offset80 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %86, i32 0, i32 70
  store i32 %92, i32* %initial_cpb_removal_delay_offset80, align 8, !tbaa !310
  %nrt_first_access_unit = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %84, i32 0, i32 71
  %93 = load double, double* %nrt_first_access_unit, align 8, !tbaa !311
  %nrt_first_access_unit83 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %86, i32 0, i32 71
  store double %93, double* %nrt_first_access_unit83, align 8, !tbaa !311
  %previous_cpb_final_arrival_time = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %84, i32 0, i32 72
  %94 = load double, double* %previous_cpb_final_arrival_time, align 8, !tbaa !316
  %previous_cpb_final_arrival_time86 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %86, i32 0, i32 72
  store double %94, double* %previous_cpb_final_arrival_time86, align 8, !tbaa !316
  br label %if.end87

if.end87:                                         ; preds = %if.end, %if.then59
  ret void
}

declare dso_local void @x264_8_prefetch_fenc(%struct.x264_t*, %struct.x264_frame*, i32, i32) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local i8* @strcpy(i8* noalias returned, i8* noalias nocapture readonly) local_unnamed_addr #4

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nofree nounwind
declare dso_local i8* @strtok_r(i8*, i8* nocapture readonly, i8**) local_unnamed_addr #4

declare dso_local i32 @x264_param_parse(%struct.x264_param_t*, i8*, i8*) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #8

declare dso_local i32 @x264_8_rc_analyse_slice(%struct.x264_t*) local_unnamed_addr #5

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.sqrt.f64(double) #3

; Function Attrs: nofree nounwind
define internal fastcc double @get_qscale(%struct.x264_t* nocapture readonly %h, %struct.ratecontrol_entry_t* nocapture readonly %rce, double %rate_factor, i32 %frame_num) unnamed_addr #10 {
entry:
  %rc = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 71
  %0 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc, align 64, !tbaa !65
  %i_zones.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 66
  %1 = load i32, i32* %i_zones.i, align 8, !tbaa !171
  %cmp8.i = icmp sgt i32 %1, 0
  br i1 %cmp8.i, label %for.body.lr.ph.i, label %get_zone.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %zones.i = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 67
  %2 = load %struct.x264_zone_t*, %struct.x264_zone_t** %zones.i, align 4, !tbaa !172
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i, %for.body.lr.ph.i
  %i.09.in.i = phi i32 [ %1, %for.body.lr.ph.i ], [ %i.09.i, %cleanup.i ]
  %i.09.i = add nsw i32 %i.09.in.i, -1
  %arrayidx.i = getelementptr inbounds %struct.x264_zone_t, %struct.x264_zone_t* %2, i32 %i.09.i
  %i_start.i = getelementptr inbounds %struct.x264_zone_t, %struct.x264_zone_t* %arrayidx.i, i32 0, i32 0
  %3 = load i32, i32* %i_start.i, align 4, !tbaa !173
  %cmp2.i = icmp sgt i32 %3, %frame_num
  br i1 %cmp2.i, label %cleanup.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %i_end.i = getelementptr inbounds %struct.x264_zone_t, %struct.x264_zone_t* %2, i32 %i.09.i, i32 1
  %4 = load i32, i32* %i_end.i, align 4, !tbaa !174
  %cmp3.i = icmp slt i32 %4, %frame_num
  br i1 %cmp3.i, label %cleanup.i, label %get_zone.exit

cleanup.i:                                        ; preds = %land.lhs.true.i, %for.body.i
  %cmp.i = icmp sgt i32 %i.09.in.i, 1
  br i1 %cmp.i, label %for.body.i, label %get_zone.exit

get_zone.exit:                                    ; preds = %land.lhs.true.i, %cleanup.i, %entry
  %5 = phi %struct.x264_zone_t* [ null, %entry ], [ %arrayidx.i, %land.lhs.true.i ], [ null, %cleanup.i ]
  %b_mb_tree = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 17
  %6 = load i32, i32* %b_mb_tree, align 4, !tbaa !84
  %tobool = icmp eq i32 %6, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %get_zone.exit
  %i_num_units_in_tick = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 20, i32 16
  %7 = load i32, i32* %i_num_units_in_tick, align 4, !tbaa !108
  %conv = uitofp i32 %7 to double
  %i_time_scale = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 20, i32 17
  %8 = load i32, i32* %i_time_scale, align 4, !tbaa !107
  %conv5 = uitofp i32 %8 to double
  %i_frame_packing = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 54
  %9 = load i32, i32* %i_frame_packing, align 4, !tbaa !211
  %cmp = icmp eq i32 %9, 5
  %add = select i1 %cmp, i32 2, i32 1
  %conv8 = sitofp i32 %add to float
  %div9 = fdiv fast float 0x3FA47AE140000000, %conv8
  %conv10 = fpext float %div9 to double
  %i_duration = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %rce, i32 0, i32 20
  %10 = load i64, i64* %i_duration, align 8, !tbaa !210
  %conv11 = sitofp i64 %10 to double
  %11 = fmul fast double %conv11, %conv
  %mul = fdiv fast double %11, %conv5
  %div18 = fdiv fast float 0x3F847AE140000000, %conv8
  %conv19 = fpext float %div18 to double
  %div26 = fdiv fast float 1.000000e+00, %conv8
  %conv27 = fpext float %div26 to double
  %cmp.i80 = fcmp fast olt double %mul, %conv19
  %cmp1.i = fcmp fast ogt double %mul, %conv27
  %cond.i = select fast i1 %cmp1.i, double %conv27, double %mul
  %cond5.i = select fast i1 %cmp.i80, double %conv19, double %cond.i
  %div29 = fdiv fast double %conv10, %cond5.i
  %f_qcompress = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 23
  %12 = load float, float* %f_qcompress, align 4, !tbaa !85
  %sub = fsub fast float 1.000000e+00, %12
  %conv32 = fpext float %sub to double
  %13 = tail call fast double @llvm.pow.f64(double %div29, double %conv32)
  br label %if.end

if.else:                                          ; preds = %get_zone.exit
  %blurred_complexity = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %rce, i32 0, i32 14
  %14 = load float, float* %blurred_complexity, align 8, !tbaa !212
  %conv33 = fpext float %14 to double
  %qcompress = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 7
  %15 = load double, double* %qcompress, align 8, !tbaa !86
  %sub34 = fsub fast double 1.000000e+00, %15
  %16 = tail call fast double @llvm.pow.f64(double %conv33, double %sub34)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %q.0 = phi double [ %13, %if.then ], [ %16, %if.else ]
  %17 = tail call fast double @llvm.fabs.f64(double %q.0) #16
  %cmpinf = fcmp fast ueq double %17, 0x7FF0000000000000
  br i1 %cmpinf, label %if.then38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %tex_bits = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %rce, i32 0, i32 5
  %18 = load i32, i32* %tex_bits, align 4, !tbaa !199
  %mv_bits = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %rce, i32 0, i32 4
  %19 = load i32, i32* %mv_bits, align 8, !tbaa !200
  %add35 = sub i32 0, %19
  %cmp36 = icmp eq i32 %18, %add35
  br i1 %cmp36, label %if.then38, label %if.else39

if.then38:                                        ; preds = %if.end, %lor.lhs.false
  %pict_type = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %rce, i32 0, i32 0
  %20 = load i32, i32* %pict_type, align 8, !tbaa !70
  %arrayidx = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 48, i32 %20
  %21 = load double, double* %arrayidx, align 8, !tbaa !154
  br label %if.end41

if.else39:                                        ; preds = %lor.lhs.false
  %last_rceq = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 27
  store double %q.0, double* %last_rceq, align 8, !tbaa !300
  %div40 = fdiv fast double %q.0, %rate_factor
  %last_qscale = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 47
  store double %div40, double* %last_qscale, align 8, !tbaa !148
  br label %if.end41

if.end41:                                         ; preds = %if.else39, %if.then38
  %q.1 = phi double [ %21, %if.then38 ], [ %div40, %if.else39 ]
  %tobool42 = icmp eq %struct.x264_zone_t* %5, null
  br i1 %tobool42, label %if.end53, label %if.then43

if.then43:                                        ; preds = %if.end41
  %b_force_qp = getelementptr inbounds %struct.x264_zone_t, %struct.x264_zone_t* %5, i32 0, i32 2
  %22 = load i32, i32* %b_force_qp, align 4, !tbaa !167
  %tobool44 = icmp eq i32 %22, 0
  br i1 %tobool44, label %if.else49, label %if.then45

if.then45:                                        ; preds = %if.then43
  %i_qp = getelementptr inbounds %struct.x264_zone_t, %struct.x264_zone_t* %5, i32 0, i32 3
  %23 = load i32, i32* %i_qp, align 4, !tbaa !214
  %conv46 = sitofp i32 %23 to float
  %24 = fmul fast float %conv46, 0x3FC5555560000000
  %div.i = fadd fast float %24, -2.000000e+00
  %exp2.i = tail call fast float @llvm.exp2.f32(float %div.i) #13
  %mul.i = fmul fast float %exp2.i, 0x3FEB333340000000
  %conv48 = fpext float %mul.i to double
  br label %if.end53

if.else49:                                        ; preds = %if.then43
  %f_bitrate_factor = getelementptr inbounds %struct.x264_zone_t, %struct.x264_zone_t* %5, i32 0, i32 4
  %25 = load float, float* %f_bitrate_factor, align 4, !tbaa !166
  %conv50 = fpext float %25 to double
  %div51 = fdiv fast double %q.1, %conv50
  br label %if.end53

if.end53:                                         ; preds = %if.end41, %if.then45, %if.else49
  %q.2 = phi double [ %conv48, %if.then45 ], [ %div51, %if.else49 ], [ %q.1, %if.end41 ]
  ret double %q.2
}

; Function Attrs: nounwind readonly
define internal fastcc double @clip_qscale(%struct.x264_t* nocapture readonly %h, i32 %pict_type, double %q) unnamed_addr #11 {
entry:
  %frame_q = alloca [3 x double], align 8
  %rc = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 71
  %0 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc, align 64, !tbaa !65
  %arrayidx = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 53, i32 %pict_type
  %1 = load double, double* %arrayidx, align 8, !tbaa !154
  %arrayidx3 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 54, i32 %pict_type
  %2 = load double, double* %arrayidx3, align 8, !tbaa !154
  %rate_factor_max_increment = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 25
  %3 = load float, float* %rate_factor_max_increment, align 8, !tbaa !121
  %tobool = fcmp fast une float %3, 0.000000e+00
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %qp_novbv = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 16
  %4 = load float, float* %qp_novbv, align 8, !tbaa !261
  %add = fadd fast float %4, %3
  %5 = fmul fast float %add, 0x3FC5555560000000
  %div.i = fadd fast float %5, -2.000000e+00
  %exp2.i = tail call fast float @llvm.exp2.f32(float %div.i) #13
  %mul.i = fmul fast float %exp2.i, 0x3FEB333340000000
  %conv = fpext float %mul.i to double
  %cmp = fcmp fast olt double %2, %conv
  br i1 %cmp, label %if.end, label %cond.false

cond.false:                                       ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %cond.false, %if.then, %entry
  %lmax.0 = phi double [ %2, %entry ], [ %conv, %cond.false ], [ %2, %if.then ]
  %b_vbv = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 2
  %6 = load i32, i32* %b_vbv, align 8, !tbaa !125
  %tobool11 = icmp eq i32 %6, 0
  br i1 %tobool11, label %if.end376, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %last_satd = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 26
  %7 = load i32, i32* %last_satd, align 4, !tbaa !263
  %cmp12 = icmp sgt i32 %7, 0
  br i1 %cmp12, label %if.then14, label %if.end376

if.then14:                                        ; preds = %land.lhs.true
  %fenc = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 60
  %8 = load %struct.x264_frame*, %struct.x264_frame** %fenc, align 8, !tbaa !80
  %i_cpb_duration = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %8, i32 0, i32 11
  %9 = load i64, i64* %i_cpb_duration, align 8, !tbaa !238
  %conv15 = sitofp i64 %9 to double
  %i_num_units_in_tick = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 20, i32 16
  %10 = load i32, i32* %i_num_units_in_tick, align 4, !tbaa !108
  %conv16 = uitofp i32 %10 to double
  %mul = fmul fast double %conv16, %conv15
  %i_time_scale = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 20, i32 17
  %11 = load i32, i32* %i_time_scale, align 4, !tbaa !107
  %conv20 = uitofp i32 %11 to double
  %div = fdiv fast double %mul, %conv20
  %i_lookahead = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 18
  %12 = load i32, i32* %i_lookahead, align 8, !tbaa !190
  %tobool22 = icmp eq i32 %12, 0
  br i1 %tobool22, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then14
  %13 = bitcast [3 x double]* %frame_q to i8*
  %pred = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 23
  %14 = load %struct.predictor_t*, %struct.predictor_t** %pred, align 8, !tbaa !150
  %i_type = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 51, i32 2
  %15 = load i32, i32* %i_type, align 8, !tbaa !230
  %conv31 = sitofp i32 %7 to float
  %arrayidx28.idx = getelementptr %struct.predictor_t, %struct.predictor_t* %14, i32 %15, i32 1
  %arrayidx28.idx.val = load float, float* %arrayidx28.idx, align 4, !tbaa !157
  %arrayidx28.idx623 = getelementptr %struct.predictor_t, %struct.predictor_t* %14, i32 %15, i32 2
  %arrayidx28.idx623.val = load float, float* %arrayidx28.idx623, align 4, !tbaa !158
  %arrayidx28.idx624 = getelementptr %struct.predictor_t, %struct.predictor_t* %14, i32 %15, i32 4
  %arrayidx28.idx624.val = load float, float* %arrayidx28.idx624, align 4, !tbaa !160
  %mul.i659 = fmul fast float %arrayidx28.idx.val, %conv31
  %add.i660 = fadd fast float %arrayidx28.idx624.val, %mul.i659
  %buffer_fill = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 20
  %16 = load double, double* %buffer_fill, align 8, !tbaa !239
  %cmp36 = icmp eq i32 %15, 2
  %f_ip_factor = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 12
  %arrayidx46 = getelementptr inbounds [3 x double], [3 x double]* %frame_q, i32 0, i32 0
  %f_pb_factor = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 13
  %17 = load float, float* %f_pb_factor, align 4, !tbaa !130
  %conv50 = fpext float %17 to double
  %arrayidx52 = getelementptr inbounds [3 x double], [3 x double]* %frame_q, i32 0, i32 1
  %18 = load float, float* %f_ip_factor, align 8, !tbaa !141
  %conv57 = fpext float %18 to double
  %19 = fdiv fast double 1.000000e+00, %conv57
  %arrayidx59 = getelementptr inbounds [3 x double], [3 x double]* %frame_q, i32 0, i32 2
  %buffer_size = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 17
  %vbv_max_rate = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 22
  %20 = load double, double* %vbv_max_rate, align 8, !tbaa !115
  %21 = load double, double* %buffer_size, align 8, !tbaa !116
  %mul116 = fmul fast double %21, 5.000000e-01
  %mul141 = fmul fast double %21, 8.000000e-01
  %b_vbv_min_rate = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 3
  br i1 %cmp36, label %for.body.us, label %for.body

for.body.us:                                      ; preds = %for.cond.preheader, %for.inc159.us
  %q.addr.0698.us = phi double [ %mul133.us, %for.inc159.us ], [ %q, %for.cond.preheader ]
  %terminate.0697.us = phi i32 [ %or.us, %for.inc159.us ], [ 0, %for.cond.preheader ]
  %iterations.0696.us = phi i32 [ %inc160.us, %for.inc159.us ], [ 0, %for.cond.preheader ]
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %13) #13
  %conv29.us = fptrunc double %q.addr.0698.us to float
  %mul1.i661.us = fmul fast float %arrayidx28.idx623.val, %conv29.us
  %div.i662.us = fdiv fast float %add.i660, %mul1.i661.us
  %conv33.us = fpext float %div.i662.us to double
  %sub.us = fsub fast double %16, %conv33.us
  %mul42.us = fmul fast double %q.addr.0698.us, %conv57
  store double %mul42.us, double* %arrayidx46, align 8, !tbaa !154
  %mul51.us = fmul fast double %mul42.us, %conv50
  store double %mul51.us, double* %arrayidx52, align 8, !tbaa !154
  %22 = fmul fast double %mul42.us, %19
  store double %22, double* %arrayidx59, align 8, !tbaa !154
  %cmp61685.us = fcmp fast ult double %sub.us, 0.000000e+00
  br i1 %cmp61685.us, label %cleanup109.us, label %land.rhs63.us

land.rhs63.us:                                    ; preds = %for.body.us, %for.inc.us
  %buffer_fill_cur.0689.us = phi double [ %sub105.us, %for.inc.us ], [ %sub.us, %for.body.us ]
  %total_duration.0688.us = phi double [ %add69.us, %for.inc.us ], [ 0.000000e+00, %for.body.us ]
  %last_duration.0687.us = phi double [ %28, %for.inc.us ], [ %div, %for.body.us ]
  %j.0686.us = phi i32 [ %inc.us, %for.inc.us ], [ 0, %for.body.us ]
  %cmp64.us = fcmp fast ugt double %buffer_fill_cur.0689.us, %21
  br i1 %cmp64.us, label %cleanup109.us, label %for.body68.us

for.body68.us:                                    ; preds = %land.rhs63.us
  %add69.us = fadd fast double %total_duration.0688.us, %last_duration.0687.us
  %mul70.us = fmul fast double %20, %last_duration.0687.us
  %add71.us = fadd fast double %mul70.us, %buffer_fill_cur.0689.us
  %arrayidx74.us = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %8, i32 0, i32 84, i32 %j.0686.us
  %23 = load i8, i8* %arrayidx74.us, align 1, !tbaa !46
  %arrayidx77.us = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %8, i32 0, i32 85, i32 %j.0686.us
  %24 = load i32, i32* %arrayidx77.us, align 4, !tbaa !55
  switch i8 %23, label %cond.false90.us [
    i8 0, label %cleanup109.us
    i8 6, label %for.inc.us
    i8 2, label %for.inc.us
    i8 1, label %for.inc.us
  ]

cond.false90.us:                                  ; preds = %for.body68.us
  %25 = or i8 %23, 1
  %26 = icmp eq i8 %25, 5
  %cond95.us = zext i1 %26 to i32
  br label %for.inc.us

for.inc.us:                                       ; preds = %cond.false90.us, %for.body68.us, %for.body68.us, %for.body68.us
  %cond97.us = phi i32 [ %cond95.us, %cond.false90.us ], [ 2, %for.body68.us ], [ 2, %for.body68.us ], [ 2, %for.body68.us ]
  %arrayidx100.us = getelementptr inbounds [3 x double], [3 x double]* %frame_q, i32 0, i32 %cond97.us
  %27 = load double, double* %arrayidx100.us, align 8, !tbaa !154
  %conv101.us = fptrunc double %27 to float
  %conv102.us = sitofp i32 %24 to float
  %arrayidx99.idx.us = getelementptr %struct.predictor_t, %struct.predictor_t* %14, i32 %cond97.us, i32 1
  %arrayidx99.idx.val.us = load float, float* %arrayidx99.idx.us, align 4, !tbaa !157
  %arrayidx99.idx621.us = getelementptr %struct.predictor_t, %struct.predictor_t* %14, i32 %cond97.us, i32 2
  %arrayidx99.idx621.val.us = load float, float* %arrayidx99.idx621.us, align 4, !tbaa !158
  %arrayidx99.idx622.us = getelementptr %struct.predictor_t, %struct.predictor_t* %14, i32 %cond97.us, i32 4
  %arrayidx99.idx622.val.us = load float, float* %arrayidx99.idx622.us, align 4, !tbaa !160
  %mul.i655.us = fmul fast float %arrayidx99.idx.val.us, %conv102.us
  %add.i656.us = fadd fast float %arrayidx99.idx622.val.us, %mul.i655.us
  %mul1.i657.us = fmul fast float %arrayidx99.idx621.val.us, %conv101.us
  %div.i658.us = fdiv fast float %add.i656.us, %mul1.i657.us
  %conv104.us = fpext float %div.i658.us to double
  %sub105.us = fsub fast double %add71.us, %conv104.us
  %arrayidx107.us = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %8, i32 0, i32 86, i32 %j.0686.us
  %28 = load double, double* %arrayidx107.us, align 8, !tbaa !154
  %inc.us = add nuw nsw i32 %j.0686.us, 1
  %cmp61.us = fcmp fast ult double %sub105.us, 0.000000e+00
  br i1 %cmp61.us, label %cleanup109.us, label %land.rhs63.us

cleanup109.us:                                    ; preds = %land.rhs63.us, %for.inc.us, %for.body68.us, %for.body.us
  %total_duration.1.us = phi double [ 0.000000e+00, %for.body.us ], [ %add69.us, %for.body68.us ], [ %add69.us, %for.inc.us ], [ %total_duration.0688.us, %land.rhs63.us ]
  %buffer_fill_cur.2.us = phi double [ %sub.us, %for.body.us ], [ %add71.us, %for.body68.us ], [ %sub105.us, %for.inc.us ], [ %buffer_fill_cur.0689.us, %land.rhs63.us ]
  %mul112.us = fmul fast double %total_duration.1.us, 5.000000e-01
  %mul113.us = fmul fast double %mul112.us, %20
  %add114.us = fadd fast double %mul113.us, %16
  %29 = tail call fast double @llvm.minnum.f64(double %add114.us, double %mul116)
  %cmp130.us = fcmp fast olt double %buffer_fill_cur.2.us, %29
  br i1 %cmp130.us, label %for.inc159.us, label %if.end134.us

if.end134.us:                                     ; preds = %cleanup109.us
  %sub139.us = fsub fast double %16, %mul113.us
  %cmp.i651.us = fcmp fast olt double %sub139.us, %mul141
  %cmp1.i652.us = fcmp fast ogt double %sub139.us, %21
  %cond.i653.us = select fast i1 %cmp1.i652.us, double %21, double %sub139.us
  %cond5.i654.us = select fast i1 %cmp.i651.us, double %mul141, double %cond.i653.us
  %30 = load i32, i32* %b_vbv_min_rate, align 4, !tbaa !91
  %tobool144.us = icmp ne i32 %30, 0
  %cmp146.us = fcmp fast ogt double %buffer_fill_cur.2.us, %cond5.i654.us
  %or.cond.us = and i1 %cmp146.us, %tobool144.us
  br i1 %or.cond.us, label %for.inc159.us, label %cleanup152

for.inc159.us:                                    ; preds = %cleanup109.us, %if.end134.us
  %.sink720 = phi double [ 0x3FEFAEE41E6A7498, %if.end134.us ], [ 1.010000e+00, %cleanup109.us ]
  %.sink = phi i32 [ 2, %if.end134.us ], [ 1, %cleanup109.us ]
  %mul133.us = fmul fast double %q.addr.0698.us, %.sink720
  %or.us = or i32 %terminate.0697.us, %.sink
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %13) #13
  %inc160.us = add nuw nsw i32 %iterations.0696.us, 1
  %cmp24.us = icmp ult i32 %iterations.0696.us, 999
  %cmp26.us = icmp ne i32 %or.us, 3
  %31 = and i1 %cmp24.us, %cmp26.us
  br i1 %31, label %for.body.us, label %if.end325

for.body:                                         ; preds = %for.cond.preheader, %for.inc159
  %q.addr.0698 = phi double [ %mul133, %for.inc159 ], [ %q, %for.cond.preheader ]
  %terminate.0697 = phi i32 [ %or, %for.inc159 ], [ 0, %for.cond.preheader ]
  %iterations.0696 = phi i32 [ %inc160, %for.inc159 ], [ 0, %for.cond.preheader ]
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %13) #13
  %conv29 = fptrunc double %q.addr.0698 to float
  %mul1.i661 = fmul fast float %arrayidx28.idx623.val, %conv29
  %div.i662 = fdiv fast float %add.i660, %mul1.i661
  %conv33 = fpext float %div.i662 to double
  %sub = fsub fast double %16, %conv33
  store double %q.addr.0698, double* %arrayidx46, align 8, !tbaa !154
  %mul51 = fmul fast double %q.addr.0698, %conv50
  store double %mul51, double* %arrayidx52, align 8, !tbaa !154
  %32 = fmul fast double %q.addr.0698, %19
  store double %32, double* %arrayidx59, align 8, !tbaa !154
  %cmp61685 = fcmp fast ult double %sub, 0.000000e+00
  br i1 %cmp61685, label %cleanup109, label %land.rhs63

land.rhs63:                                       ; preds = %for.body, %for.inc
  %buffer_fill_cur.0689 = phi double [ %sub105, %for.inc ], [ %sub, %for.body ]
  %total_duration.0688 = phi double [ %add69, %for.inc ], [ 0.000000e+00, %for.body ]
  %last_duration.0687 = phi double [ %38, %for.inc ], [ %div, %for.body ]
  %j.0686 = phi i32 [ %inc, %for.inc ], [ 0, %for.body ]
  %cmp64 = fcmp fast ugt double %buffer_fill_cur.0689, %21
  br i1 %cmp64, label %cleanup109, label %for.body68

for.body68:                                       ; preds = %land.rhs63
  %add69 = fadd fast double %total_duration.0688, %last_duration.0687
  %mul70 = fmul fast double %20, %last_duration.0687
  %add71 = fadd fast double %mul70, %buffer_fill_cur.0689
  %arrayidx74 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %8, i32 0, i32 84, i32 %j.0686
  %33 = load i8, i8* %arrayidx74, align 1, !tbaa !46
  %arrayidx77 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %8, i32 0, i32 85, i32 %j.0686
  %34 = load i32, i32* %arrayidx77, align 4, !tbaa !55
  switch i8 %33, label %cond.false90 [
    i8 0, label %cleanup109
    i8 6, label %for.inc
    i8 2, label %for.inc
    i8 1, label %for.inc
  ]

cond.false90:                                     ; preds = %for.body68
  %35 = or i8 %33, 1
  %36 = icmp eq i8 %35, 5
  %cond95 = zext i1 %36 to i32
  br label %for.inc

for.inc:                                          ; preds = %cond.false90, %for.body68, %for.body68, %for.body68
  %cond97 = phi i32 [ %cond95, %cond.false90 ], [ 2, %for.body68 ], [ 2, %for.body68 ], [ 2, %for.body68 ]
  %arrayidx100 = getelementptr inbounds [3 x double], [3 x double]* %frame_q, i32 0, i32 %cond97
  %37 = load double, double* %arrayidx100, align 8, !tbaa !154
  %conv101 = fptrunc double %37 to float
  %conv102 = sitofp i32 %34 to float
  %arrayidx99.idx = getelementptr %struct.predictor_t, %struct.predictor_t* %14, i32 %cond97, i32 1
  %arrayidx99.idx.val = load float, float* %arrayidx99.idx, align 4, !tbaa !157
  %arrayidx99.idx621 = getelementptr %struct.predictor_t, %struct.predictor_t* %14, i32 %cond97, i32 2
  %arrayidx99.idx621.val = load float, float* %arrayidx99.idx621, align 4, !tbaa !158
  %arrayidx99.idx622 = getelementptr %struct.predictor_t, %struct.predictor_t* %14, i32 %cond97, i32 4
  %arrayidx99.idx622.val = load float, float* %arrayidx99.idx622, align 4, !tbaa !160
  %mul.i655 = fmul fast float %arrayidx99.idx.val, %conv102
  %add.i656 = fadd fast float %arrayidx99.idx622.val, %mul.i655
  %mul1.i657 = fmul fast float %arrayidx99.idx621.val, %conv101
  %div.i658 = fdiv fast float %add.i656, %mul1.i657
  %conv104 = fpext float %div.i658 to double
  %sub105 = fsub fast double %add71, %conv104
  %arrayidx107 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %8, i32 0, i32 86, i32 %j.0686
  %38 = load double, double* %arrayidx107, align 8, !tbaa !154
  %inc = add nuw nsw i32 %j.0686, 1
  %cmp61 = fcmp fast ult double %sub105, 0.000000e+00
  br i1 %cmp61, label %cleanup109, label %land.rhs63

cleanup109:                                       ; preds = %land.rhs63, %for.inc, %for.body68, %for.body
  %total_duration.1 = phi double [ 0.000000e+00, %for.body ], [ %add69, %for.body68 ], [ %add69, %for.inc ], [ %total_duration.0688, %land.rhs63 ]
  %buffer_fill_cur.2 = phi double [ %sub, %for.body ], [ %add71, %for.body68 ], [ %sub105, %for.inc ], [ %buffer_fill_cur.0689, %land.rhs63 ]
  %mul112 = fmul fast double %total_duration.1, 5.000000e-01
  %mul113 = fmul fast double %mul112, %20
  %add114 = fadd fast double %mul113, %16
  %39 = tail call fast double @llvm.minnum.f64(double %add114, double %mul116)
  %cmp130 = fcmp fast olt double %buffer_fill_cur.2, %39
  br i1 %cmp130, label %for.inc159, label %if.end134

if.end134:                                        ; preds = %cleanup109
  %sub139 = fsub fast double %16, %mul113
  %cmp.i651 = fcmp fast olt double %sub139, %mul141
  %cmp1.i652 = fcmp fast ogt double %sub139, %21
  %cond.i653 = select fast i1 %cmp1.i652, double %21, double %sub139
  %cond5.i654 = select fast i1 %cmp.i651, double %mul141, double %cond.i653
  %40 = load i32, i32* %b_vbv_min_rate, align 4, !tbaa !91
  %tobool144 = icmp ne i32 %40, 0
  %cmp146 = fcmp fast ogt double %buffer_fill_cur.2, %cond5.i654
  %or.cond = and i1 %cmp146, %tobool144
  br i1 %or.cond, label %for.inc159, label %cleanup152

cleanup152:                                       ; preds = %if.end134, %if.end134.us
  %q.addr.0.lcssa681 = phi double [ %q.addr.0698.us, %if.end134.us ], [ %q.addr.0698, %if.end134 ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %13) #13
  br label %if.end238

for.inc159:                                       ; preds = %if.end134, %cleanup109
  %.sink722 = phi double [ 1.010000e+00, %cleanup109 ], [ 0x3FEFAEE41E6A7498, %if.end134 ]
  %.sink721 = phi i32 [ 1, %cleanup109 ], [ 2, %if.end134 ]
  %mul133 = fmul fast double %q.addr.0698, %.sink722
  %or = or i32 %terminate.0697, %.sink721
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %13) #13
  %inc160 = add nuw nsw i32 %iterations.0696, 1
  %cmp24 = icmp ult i32 %iterations.0696, 999
  %cmp26 = icmp ne i32 %or, 3
  %41 = and i1 %cmp24, %cmp26
  br i1 %41, label %for.body, label %if.end238

if.else:                                          ; preds = %if.then14
  switch i32 %pict_type, label %if.end184 [
    i32 0, label %land.lhs.true171
    i32 2, label %land.lhs.true168
  ]

land.lhs.true168:                                 ; preds = %if.else
  %last_non_b_pict_type = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 49
  %42 = load i32, i32* %last_non_b_pict_type, align 8, !tbaa !134
  %cmp169 = icmp eq i32 %42, 2
  br i1 %cmp169, label %land.lhs.true171, label %if.end184

land.lhs.true171:                                 ; preds = %if.else, %land.lhs.true168
  %buffer_fill172 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 20
  %43 = load double, double* %buffer_fill172, align 8, !tbaa !239
  %buffer_size173 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 17
  %44 = load double, double* %buffer_size173, align 8, !tbaa !116
  %div174 = fdiv fast double %43, %44
  %cmp175 = fcmp fast olt double %div174, 5.000000e-01
  br i1 %cmp175, label %if.then177, label %if.end184

if.then177:                                       ; preds = %land.lhs.true171
  %mul179 = fmul fast double %43, 2.000000e+00
  %div181 = fdiv fast double %mul179, %44
  %cmp1.i648 = fcmp fast ogt double %div181, 1.000000e+00
  %cond.i649 = select fast i1 %cmp1.i648, double 1.000000e+00, double %div181
  %45 = tail call fast double @llvm.maxnum.f64(double %cond.i649, double 5.000000e-01)
  %div183 = fdiv fast double %q, %45
  br label %if.end184

if.end184:                                        ; preds = %if.else, %if.then177, %land.lhs.true171, %land.lhs.true168
  %q.addr.3 = phi double [ %div183, %if.then177 ], [ %q, %land.lhs.true171 ], [ %q, %land.lhs.true168 ], [ %q, %if.else ]
  %pred185 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 23
  %46 = load %struct.predictor_t*, %struct.predictor_t** %pred185, align 8, !tbaa !150
  %i_type187 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 51, i32 2
  %47 = load i32, i32* %i_type187, align 8, !tbaa !230
  %conv189 = fptrunc double %q.addr.3 to float
  %conv191 = sitofp i32 %7 to float
  %arrayidx188.idx = getelementptr %struct.predictor_t, %struct.predictor_t* %46, i32 %47, i32 1
  %arrayidx188.idx.val = load float, float* %arrayidx188.idx, align 4, !tbaa !157
  %arrayidx188.idx619 = getelementptr %struct.predictor_t, %struct.predictor_t* %46, i32 %47, i32 2
  %arrayidx188.idx619.val = load float, float* %arrayidx188.idx619, align 4, !tbaa !158
  %arrayidx188.idx620 = getelementptr %struct.predictor_t, %struct.predictor_t* %46, i32 %47, i32 4
  %arrayidx188.idx620.val = load float, float* %arrayidx188.idx620, align 4, !tbaa !160
  %mul.i643 = fmul fast float %arrayidx188.idx.val, %conv191
  %add.i644 = fadd fast float %arrayidx188.idx620.val, %mul.i643
  %mul1.i645 = fmul fast float %arrayidx188.idx619.val, %conv189
  %div.i646 = fdiv fast float %add.i644, %mul1.i645
  %conv193 = fpext float %div.i646 to double
  %i_vbv_buffer_size = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 10
  %48 = load i32, i32* %i_vbv_buffer_size, align 8, !tbaa !90
  %conv196 = sitofp i32 %48 to double
  %i_vbv_max_bitrate = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 9
  %49 = load i32, i32* %i_vbv_max_bitrate, align 4, !tbaa !89
  %mul199 = mul nsw i32 %49, 5
  %conv200 = sitofp i32 %mul199 to double
  %fps = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 4
  %50 = load double, double* %fps, align 8, !tbaa !93
  %div201 = fdiv fast double %conv200, %50
  %cmp202 = fcmp fast ole double %div201, %conv196
  %conv205 = select i1 %cmp202, double 2.000000e+00, double 1.000000e+00
  %single_frame_vbv = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 24
  %51 = load i32, i32* %single_frame_vbv, align 4, !tbaa !117
  %tobool206 = icmp eq i32 %51, 0
  %cond207 = select i1 %tobool206, i32 2, i32 1
  %conv208 = sitofp i32 %cond207 to double
  %buffer_fill209 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 20
  %52 = load double, double* %buffer_fill209, align 8, !tbaa !239
  %div210 = fdiv fast double %52, %conv205
  %cmp211 = fcmp fast olt double %div210, %conv193
  br i1 %cmp211, label %if.then213, label %if.end220

if.then213:                                       ; preds = %if.end184
  %mul215 = fmul fast double %conv205, %conv193
  %div216 = fdiv fast double %52, %mul215
  %cmp1.i640 = fcmp fast ogt double %div216, 1.000000e+00
  %cond.i641 = select fast i1 %cmp1.i640, double 1.000000e+00, double %div216
  %53 = tail call fast double @llvm.maxnum.f64(double %cond.i641, double 2.000000e-01)
  %div218 = fdiv fast double %q.addr.3, %53
  %mul219 = fmul fast double %53, %conv193
  br label %if.end220

if.end220:                                        ; preds = %if.then213, %if.end184
  %bits.0 = phi double [ %mul219, %if.then213 ], [ %conv193, %if.end184 ]
  %q.addr.4 = phi double [ %div218, %if.then213 ], [ %q.addr.3, %if.end184 ]
  %buffer_rate = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 21
  %54 = load double, double* %buffer_rate, align 8, !tbaa !114
  %div221 = fdiv fast double %54, %conv208
  %cmp222 = fcmp fast olt double %bits.0, %div221
  br i1 %cmp222, label %if.then224, label %if.end231

if.then224:                                       ; preds = %if.end220
  %mul226 = fmul fast double %bits.0, %conv208
  %div228 = fdiv fast double %mul226, %54
  %cmp1.i636 = fcmp fast ogt double %div228, 1.000000e+00
  %cond.i637 = select fast i1 %cmp1.i636, double 1.000000e+00, double %div228
  %55 = tail call fast double @llvm.maxnum.f64(double %cond.i637, double 1.000000e-03)
  %mul230 = fmul fast double %55, %q.addr.4
  br label %if.end231

if.end231:                                        ; preds = %if.then224, %if.end220
  %q.addr.5 = phi double [ %mul230, %if.then224 ], [ %q.addr.4, %if.end220 ]
  %cmp232 = fcmp fast olt double %q.addr.5, %q
  %cond237 = select fast i1 %cmp232, double %q, double %q.addr.5
  br label %if.end238

if.end238:                                        ; preds = %for.inc159, %cleanup152, %if.end231
  %arrayidx330.idx613.val = phi float [ %arrayidx188.idx620.val, %if.end231 ], [ %arrayidx28.idx624.val, %cleanup152 ], [ %arrayidx28.idx624.val, %for.inc159 ]
  %arrayidx330.idx612.val = phi float [ %arrayidx188.idx619.val, %if.end231 ], [ %arrayidx28.idx623.val, %cleanup152 ], [ %arrayidx28.idx623.val, %for.inc159 ]
  %arrayidx330.idx.val = phi float [ %arrayidx188.idx.val, %if.end231 ], [ %arrayidx28.idx.val, %cleanup152 ], [ %arrayidx28.idx.val, %for.inc159 ]
  %56 = phi double [ %52, %if.end231 ], [ %16, %cleanup152 ], [ %16, %for.inc159 ]
  %57 = phi %struct.predictor_t* [ %46, %if.end231 ], [ %14, %cleanup152 ], [ %14, %for.inc159 ]
  %58 = phi i32 [ %47, %if.end231 ], [ %15, %cleanup152 ], [ %15, %for.inc159 ]
  %q.addr.6 = phi double [ %cond237, %if.end231 ], [ %q.addr.0.lcssa681, %cleanup152 ], [ %mul133, %for.inc159 ]
  %cmp241 = icmp eq i32 %58, 0
  br i1 %cmp241, label %land.lhs.true243, label %if.end325

land.lhs.true243:                                 ; preds = %if.end238
  %single_frame_vbv244 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 24
  %59 = load i32, i32* %single_frame_vbv244, align 4, !tbaa !117
  %tobool245 = icmp eq i32 %59, 0
  br i1 %tobool245, label %if.then246, label %if.end325

if.then246:                                       ; preds = %land.lhs.true243
  %bframes = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 64
  %60 = load i32, i32* %bframes, align 8, !tbaa !252
  %conv252 = fptrunc double %q.addr.6 to float
  %conv254 = sitofp i32 %7 to float
  %.idx616 = getelementptr %struct.predictor_t, %struct.predictor_t* %57, i32 0, i32 1
  %.idx616.val = load float, float* %.idx616, align 4, !tbaa !157
  %.idx617 = getelementptr %struct.predictor_t, %struct.predictor_t* %57, i32 0, i32 2
  %.idx617.val = load float, float* %.idx617, align 4, !tbaa !158
  %.idx618 = getelementptr %struct.predictor_t, %struct.predictor_t* %57, i32 0, i32 4
  %.idx618.val = load float, float* %.idx618, align 4, !tbaa !160
  %mul.i631 = fmul fast float %.idx616.val, %conv254
  %add.i632 = fadd fast float %.idx618.val, %mul.i631
  %mul1.i633 = fmul fast float %.idx617.val, %conv252
  %div.i634 = fdiv fast float %add.i632, %mul1.i633
  %conv256 = fpext float %div.i634 to double
  %pred_b_from_p = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 63
  %61 = load %struct.predictor_t*, %struct.predictor_t** %pred_b_from_p, align 4, !tbaa !151
  %f_pb_factor259 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 13
  %62 = load float, float* %f_pb_factor259, align 4, !tbaa !130
  %conv260 = fpext float %62 to double
  %mul261 = fmul fast double %q.addr.6, %conv260
  %conv262 = fptrunc double %mul261 to float
  %.idx = getelementptr %struct.predictor_t, %struct.predictor_t* %61, i32 0, i32 1
  %.idx.val = load float, float* %.idx, align 4, !tbaa !157
  %.idx614 = getelementptr %struct.predictor_t, %struct.predictor_t* %61, i32 0, i32 2
  %.idx614.val = load float, float* %.idx614, align 4, !tbaa !158
  %.idx615 = getelementptr %struct.predictor_t, %struct.predictor_t* %61, i32 0, i32 4
  %.idx615.val = load float, float* %.idx615, align 4, !tbaa !160
  %mul.i627 = fmul fast float %.idx.val, %conv254
  %add.i628 = fadd fast float %.idx615.val, %mul.i627
  %mul1.i629 = fmul fast float %.idx614.val, %conv262
  %div.i630 = fdiv fast float %add.i628, %mul1.i629
  %conv266 = fpext float %div.i630 to double
  %cmp268682 = icmp sgt i32 %60, 0
  br i1 %cmp268682, label %for.body271, label %for.cond.cleanup270

for.cond.cleanup270:                              ; preds = %for.body271, %if.then246
  %bframe_cpb_duration.0.lcssa = phi double [ 0.000000e+00, %if.then246 ], [ %add275, %for.body271 ]
  %conv280 = sitofp i32 %60 to double
  %mul281 = fmul fast double %conv266, %conv280
  %vbv_max_rate282 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 22
  %63 = load double, double* %vbv_max_rate282, align 8, !tbaa !115
  %mul283 = fmul fast double %63, %bframe_cpb_duration.0.lcssa
  %cmp284 = fcmp fast ogt double %mul281, %mul283
  %bframe_cpb_duration.1 = select i1 %cmp284, double 0.000000e+00, double %bframe_cpb_duration.0.lcssa
  %conv288 = select i1 %cmp284, double 0.000000e+00, double %conv280
  %mul289 = fmul fast double %conv288, %conv266
  %add290 = fadd fast double %mul289, %conv256
  %add291 = fadd fast double %bframe_cpb_duration.1, %div
  %mul294 = fmul fast double %add291, %63
  %buffer_size296 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 17
  %64 = load double, double* %buffer_size296, align 8, !tbaa !116
  %add295 = fsub fast double %56, %64
  %sub297 = fadd fast double %add295, %mul294
  %cmp298 = fcmp fast olt double %add290, %sub297
  br i1 %cmp298, label %if.then300, label %if.end316

for.body271:                                      ; preds = %if.then246, %for.body271
  %i.0684 = phi i32 [ %inc277, %for.body271 ], [ 0, %if.then246 ]
  %bframe_cpb_duration.0683 = phi double [ %add275, %for.body271 ], [ 0.000000e+00, %if.then246 ]
  %arrayidx274 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %8, i32 0, i32 86, i32 %i.0684
  %65 = load double, double* %arrayidx274, align 8, !tbaa !154
  %add275 = fadd fast double %65, %bframe_cpb_duration.0683
  %inc277 = add nuw nsw i32 %i.0684, 1
  %exitcond = icmp eq i32 %inc277, %60
  br i1 %exitcond, label %for.cond.cleanup270, label %for.body271

if.then300:                                       ; preds = %for.cond.cleanup270
  %div301 = fdiv fast double %add290, %sub297
  %mul303 = fmul fast double %64, 5.000000e-01
  %div304 = fdiv fast double %conv256, %mul303
  %66 = tail call fast double @llvm.maxnum.f64(double %div301, double %div304)
  %mul315 = fmul fast double %66, %q.addr.6
  br label %if.end316

if.end316:                                        ; preds = %if.then300, %for.cond.cleanup270
  %q.addr.7 = phi double [ %mul315, %if.then300 ], [ %q.addr.6, %for.cond.cleanup270 ]
  %div317 = fmul fast double %q, 5.000000e-01
  %67 = tail call fast double @llvm.maxnum.f64(double %div317, double %q.addr.7)
  br label %if.end325

if.end325:                                        ; preds = %for.inc159.us, %land.lhs.true243, %if.end316, %if.end238
  %68 = phi double [ %56, %land.lhs.true243 ], [ %56, %if.end316 ], [ %56, %if.end238 ], [ %16, %for.inc159.us ]
  %arrayidx330.idx.val713 = phi float [ %arrayidx330.idx.val, %land.lhs.true243 ], [ %arrayidx330.idx.val, %if.end316 ], [ %arrayidx330.idx.val, %if.end238 ], [ %arrayidx28.idx.val, %for.inc159.us ]
  %arrayidx330.idx612.val712 = phi float [ %arrayidx330.idx612.val, %land.lhs.true243 ], [ %arrayidx330.idx612.val, %if.end316 ], [ %arrayidx330.idx612.val, %if.end238 ], [ %arrayidx28.idx623.val, %for.inc159.us ]
  %arrayidx330.idx613.val711 = phi float [ %arrayidx330.idx613.val, %land.lhs.true243 ], [ %arrayidx330.idx613.val, %if.end316 ], [ %arrayidx330.idx613.val, %if.end238 ], [ %arrayidx28.idx624.val, %for.inc159.us ]
  %q.addr.8 = phi double [ %q.addr.6, %land.lhs.true243 ], [ %67, %if.end316 ], [ %q.addr.6, %if.end238 ], [ %mul133.us, %for.inc159.us ]
  %conv331 = fptrunc double %q.addr.8 to float
  %conv333 = sitofp i32 %7 to float
  %mul.i625 = fmul fast float %arrayidx330.idx.val713, %conv333
  %add.i = fadd fast float %arrayidx330.idx613.val711, %mul.i625
  %mul1.i = fmul fast float %arrayidx330.idx612.val712, %conv331
  %div.i626 = fdiv fast float %add.i, %mul1.i
  %conv335 = fpext float %div.i626 to double
  %frame_size_maximum336 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 58
  %69 = load double, double* %frame_size_maximum336, align 8, !tbaa !249
  %cmp338 = fcmp fast ule double %68, 1.000000e-03
  %70 = tail call fast double @llvm.maxnum.f64(double %68, double 1.000000e-03)
  %cmp345 = fcmp fast olt double %69, %70
  %brmerge = or i1 %cmp338, %cmp345
  %.mux = select i1 %cmp345, double %69, double 1.000000e-03
  %cond359 = select fast i1 %brmerge, double %.mux, double %68
  %cmp360 = fcmp fast olt double %cond359, %conv335
  br i1 %cmp360, label %if.then362, label %if.end365

if.then362:                                       ; preds = %if.end325
  %71 = fmul fast double %q.addr.8, %conv335
  %mul364 = fdiv fast double %71, %cond359
  br label %if.end365

if.end365:                                        ; preds = %if.then362, %if.end325
  %q.addr.9 = phi double [ %mul364, %if.then362 ], [ %q.addr.8, %if.end325 ]
  %b_vbv_min_rate366 = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 3
  %72 = load i32, i32* %b_vbv_min_rate366, align 4, !tbaa !91
  %tobool367 = icmp eq i32 %72, 0
  %cmp369 = fcmp fast olt double %q.addr.9, %q
  %73 = and i1 %cmp369, %tobool367
  %q.addr.10 = select i1 %73, double %q, double %q.addr.9
  br label %if.end376

if.end376:                                        ; preds = %if.end365, %if.end, %land.lhs.true
  %q.addr.11 = phi double [ %q, %land.lhs.true ], [ %q, %if.end ], [ %q.addr.10, %if.end365 ]
  %cmp377 = fcmp fast oeq double %1, %lmax.0
  br i1 %cmp377, label %cleanup397, label %if.else380

if.else380:                                       ; preds = %if.end376
  %b_2pass = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 1
  %74 = load i32, i32* %b_2pass, align 4, !tbaa !81
  %tobool381 = icmp eq i32 %74, 0
  br i1 %tobool381, label %if.else395, label %if.then382

if.then382:                                       ; preds = %if.else380
  %75 = tail call fast double @llvm.log.f64(double %1)
  %76 = tail call fast double @llvm.log.f64(double %lmax.0)
  %77 = tail call fast double @llvm.log.f64(double %q.addr.11)
  %sub383 = fsub fast double %77, %75
  %sub384 = fsub fast double %76, %75
  %78 = fmul fast double %sub383, 4.000000e+00
  %79 = fdiv fast double %78, %sub384
  %80 = fsub fast double 2.000000e+00, %79
  %81 = tail call fast double @llvm.exp.f64(double %80)
  %add388 = fadd fast double %81, 1.000000e+00
  %mul391 = fdiv fast double %sub384, %add388
  %add392 = fadd fast double %mul391, %75
  %82 = tail call fast double @llvm.exp.f64(double %add392)
  br label %cleanup397

if.else395:                                       ; preds = %if.else380
  %cmp.i = fcmp fast olt double %q.addr.11, %1
  %cmp1.i = fcmp fast ogt double %q.addr.11, %lmax.0
  %cond.i = select fast i1 %cmp1.i, double %lmax.0, double %q.addr.11
  %cond5.i = select fast i1 %cmp.i, double %1, double %cond.i
  br label %cleanup397

cleanup397:                                       ; preds = %if.end376, %if.else395, %if.then382
  %retval.0 = phi double [ %82, %if.then382 ], [ %cond5.i, %if.else395 ], [ %1, %if.end376 ]
  ret double %retval.0
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.log.f64(double) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.exp.f64(double) #3

; Function Attrs: nofree nounwind
define internal fastcc i32 @find_underflow(%struct.x264_t* nocapture readonly %h, double* nocapture %fills, i32* nocapture %t0, i32* nocapture %t1, i32 %over) unnamed_addr #10 {
entry:
  %rc = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 71
  %0 = load %struct.x264_ratecontrol_t*, %struct.x264_ratecontrol_t** %rc, align 64, !tbaa !65
  %buffer_size = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 17
  %1 = load double, double* %buffer_size, align 8, !tbaa !116
  %mul = fmul fast double %1, 1.000000e-01
  %mul2 = fmul fast double %1, 9.000000e-01
  %2 = load i32, i32* %t0, align 4, !tbaa !55
  %sub = add nsw i32 %2, -1
  %arrayidx = getelementptr inbounds double, double* %fills, i32 %sub
  %3 = load double, double* %arrayidx, align 8, !tbaa !154
  %num_entries = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 44
  %4 = load i32, i32* %num_entries, align 8, !tbaa !191
  %cmp83 = icmp slt i32 %2, %4
  br i1 %cmp83, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %tobool = icmp eq i32 %over, 0
  %entry_out = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 46
  %5 = load %struct.ratecontrol_entry_t**, %struct.ratecontrol_entry_t*** %entry_out, align 8, !tbaa !193
  %vbv_max_rate = getelementptr inbounds %struct.x264_ratecontrol_t, %struct.x264_ratecontrol_t* %0, i32 0, i32 22
  %i_num_units_in_tick = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 20, i32 16
  %6 = load i32, i32* %i_num_units_in_tick, align 4, !tbaa !108
  %conv5 = uitofp i32 %6 to double
  %i_time_scale = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 20, i32 17
  %7 = load i32, i32* %i_time_scale, align 4, !tbaa !107
  %conv10 = uitofp i32 %7 to double
  %8 = fdiv fast double 1.000000e+00, %conv10
  br i1 %tobool, label %for.body.us, label %for.body

for.body.us:                                      ; preds = %for.body.lr.ph, %for.inc.us.for.body.us_crit_edge
  %9 = phi double [ %.pre95, %for.inc.us.for.body.us_crit_edge ], [ %1, %for.body.lr.ph ]
  %i.087.us = phi i32 [ %inc.us, %for.inc.us.for.body.us_crit_edge ], [ %2, %for.body.lr.ph ]
  %end.086.us = phi i32 [ %end.1.us, %for.inc.us.for.body.us_crit_edge ], [ -1, %for.body.lr.ph ]
  %start.085.us = phi i32 [ %start.1.us, %for.inc.us.for.body.us_crit_edge ], [ -1, %for.body.lr.ph ]
  %fill.084.us = phi double [ %cond5.i.us, %for.inc.us.for.body.us_crit_edge ], [ %3, %for.body.lr.ph ]
  %arrayidx3.us = getelementptr inbounds %struct.ratecontrol_entry_t*, %struct.ratecontrol_entry_t** %5, i32 %i.087.us
  %10 = load %struct.ratecontrol_entry_t*, %struct.ratecontrol_entry_t** %arrayidx3.us, align 4, !tbaa !59
  %i_cpb_duration.us = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %10, i32 0, i32 21
  %11 = load i64, i64* %i_cpb_duration.us, align 8, !tbaa !320
  %conv.us = sitofp i64 %11 to double
  %12 = load double, double* %vbv_max_rate, align 8, !tbaa !115
  %mul4.us = fmul fast double %12, %conv.us
  %mul6.us = fmul fast double %mul4.us, %conv5
  %13 = fmul fast double %mul6.us, %8
  %new_qscale.us = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %10, i32 0, i32 9
  %14 = load double, double* %new_qscale.us, align 8, !tbaa !194
  %cmp.i.us = fcmp fast olt double %14, 1.000000e-01
  %qscale.addr.0.i.us = select i1 %cmp.i.us, double 1.000000e-01, double %14
  %tex_bits.i.us = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %10, i32 0, i32 5
  %15 = load i32, i32* %tex_bits.i.us, align 4, !tbaa !199
  %conv.i.us = sitofp i32 %15 to double
  %add.i.us = fadd fast double %conv.i.us, 1.000000e-01
  %qscale1.i.us = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %10, i32 0, i32 3
  %16 = load double, double* %qscale1.i.us, align 8, !tbaa !195
  %div.i.us = fdiv fast double %16, %qscale.addr.0.i.us
  %17 = tail call fast double @llvm.pow.f64(double %div.i.us, double 1.100000e+00) #13
  %mv_bits.i.us = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %10, i32 0, i32 4
  %18 = load i32, i32* %mv_bits.i.us, align 8, !tbaa !200
  %conv2.i.us = sitofp i32 %18 to double
  %19 = tail call fast double @llvm.maxnum.f64(double %16, double 1.000000e+00) #13
  %20 = tail call fast double @llvm.maxnum.f64(double %qscale.addr.0.i.us, double 1.000000e+00) #13
  %div13.i.us = fdiv fast double %19, %20
  %sqrt.i.us = tail call fast double @llvm.sqrt.f64(double %div13.i.us) #13
  %misc_bits.i.us = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %10, i32 0, i32 6
  %21 = load i32, i32* %misc_bits.i.us, align 8, !tbaa !196
  %conv16.i.us = sitofp i32 %21 to double
  %mul.i.neg.us = fmul fast double %17, %add.i.us
  %mul14.i.neg.us = fmul fast double %sqrt.i.us, %conv2.i.us
  %reass.add.us = fadd fast double %mul14.i.neg.us, %mul.i.neg.us
  %22 = fsub fast double %conv16.i.us, %13
  %23 = fadd fast double %reass.add.us, %22
  %add.us = fadd fast double %23, %fill.084.us
  %cmp.i82.us = fcmp fast olt double %add.us, 0.000000e+00
  %cmp1.i.us = fcmp fast ogt double %add.us, %9
  %cond.i.us = select fast i1 %cmp1.i.us, double %9, double %add.us
  %cond5.i.us = select fast i1 %cmp.i82.us, double 0.000000e+00, double %cond.i.us
  %arrayidx19.us = getelementptr inbounds double, double* %fills, i32 %i.087.us
  store double %cond5.i.us, double* %arrayidx19.us, align 8, !tbaa !154
  %cmp20.us = fcmp fast ole double %cond5.i.us, %mul
  %cmp22.us = icmp eq i32 %i.087.us, 0
  %or.cond.us = or i1 %cmp22.us, %cmp20.us
  br i1 %or.cond.us, label %if.then.us, label %if.else.us

if.else.us:                                       ; preds = %for.body.us
  %cmp27.us = fcmp fast oge double %cond5.i.us, %mul2
  %cmp29.us = icmp sgt i32 %start.085.us, -1
  %or.cond45.us = and i1 %cmp29.us, %cmp27.us
  %spec.select.us = select i1 %or.cond45.us, i32 %i.087.us, i32 %end.086.us
  br label %for.inc.us

if.then.us:                                       ; preds = %for.body.us
  %cmp24.us = icmp sgt i32 %end.086.us, -1
  br i1 %cmp24.us, label %cleanup, label %for.inc.us

for.inc.us:                                       ; preds = %if.then.us, %if.else.us
  %start.1.us = phi i32 [ %i.087.us, %if.then.us ], [ %start.085.us, %if.else.us ]
  %end.1.us = phi i32 [ %end.086.us, %if.then.us ], [ %spec.select.us, %if.else.us ]
  %inc.us = add nsw i32 %i.087.us, 1
  %cmp.us = icmp slt i32 %inc.us, %4
  br i1 %cmp.us, label %for.inc.us.for.body.us_crit_edge, label %cleanup

for.inc.us.for.body.us_crit_edge:                 ; preds = %for.inc.us
  %.pre95 = load double, double* %buffer_size, align 8, !tbaa !116
  br label %for.body.us

for.body:                                         ; preds = %for.body.lr.ph, %for.inc.for.body_crit_edge
  %24 = phi double [ %.pre, %for.inc.for.body_crit_edge ], [ %1, %for.body.lr.ph ]
  %i.087 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %2, %for.body.lr.ph ]
  %end.086 = phi i32 [ %end.1, %for.inc.for.body_crit_edge ], [ -1, %for.body.lr.ph ]
  %start.085 = phi i32 [ %start.1, %for.inc.for.body_crit_edge ], [ -1, %for.body.lr.ph ]
  %fill.084 = phi double [ %cond5.i, %for.inc.for.body_crit_edge ], [ %3, %for.body.lr.ph ]
  %arrayidx3 = getelementptr inbounds %struct.ratecontrol_entry_t*, %struct.ratecontrol_entry_t** %5, i32 %i.087
  %25 = load %struct.ratecontrol_entry_t*, %struct.ratecontrol_entry_t** %arrayidx3, align 4, !tbaa !59
  %i_cpb_duration = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %25, i32 0, i32 21
  %26 = load i64, i64* %i_cpb_duration, align 8, !tbaa !320
  %conv = sitofp i64 %26 to double
  %27 = load double, double* %vbv_max_rate, align 8, !tbaa !115
  %mul4 = fmul fast double %27, %conv
  %mul6 = fmul fast double %mul4, %conv5
  %28 = fmul fast double %mul6, %8
  %new_qscale = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %25, i32 0, i32 9
  %29 = load double, double* %new_qscale, align 8, !tbaa !194
  %cmp.i = fcmp fast olt double %29, 1.000000e-01
  %qscale.addr.0.i = select i1 %cmp.i, double 1.000000e-01, double %29
  %tex_bits.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %25, i32 0, i32 5
  %30 = load i32, i32* %tex_bits.i, align 4, !tbaa !199
  %conv.i = sitofp i32 %30 to double
  %add.i = fadd fast double %conv.i, 1.000000e-01
  %qscale1.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %25, i32 0, i32 3
  %31 = load double, double* %qscale1.i, align 8, !tbaa !195
  %div.i = fdiv fast double %31, %qscale.addr.0.i
  %32 = tail call fast double @llvm.pow.f64(double %div.i, double 1.100000e+00) #13
  %mv_bits.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %25, i32 0, i32 4
  %33 = load i32, i32* %mv_bits.i, align 8, !tbaa !200
  %conv2.i = sitofp i32 %33 to double
  %34 = tail call fast double @llvm.maxnum.f64(double %31, double 1.000000e+00) #13
  %35 = tail call fast double @llvm.maxnum.f64(double %qscale.addr.0.i, double 1.000000e+00) #13
  %div13.i = fdiv fast double %34, %35
  %sqrt.i = tail call fast double @llvm.sqrt.f64(double %div13.i) #13
  %misc_bits.i = getelementptr inbounds %struct.ratecontrol_entry_t, %struct.ratecontrol_entry_t* %25, i32 0, i32 6
  %36 = load i32, i32* %misc_bits.i, align 8, !tbaa !196
  %conv16.i = sitofp i32 %36 to double
  %mul.i.neg = fmul fast double %32, %add.i
  %mul14.i.neg = fmul fast double %sqrt.i, %conv2.i
  %reass.add = fadd fast double %mul14.i.neg, %mul.i.neg
  %add17.i.neg = fsub fast double %28, %conv16.i
  %sub15 = fsub fast double %add17.i.neg, %reass.add
  %add = fadd fast double %sub15, %fill.084
  %cmp.i82 = fcmp fast olt double %add, 0.000000e+00
  %cmp1.i = fcmp fast ogt double %add, %24
  %cond.i = select fast i1 %cmp1.i, double %24, double %add
  %cond5.i = select fast i1 %cmp.i82, double 0.000000e+00, double %cond.i
  %arrayidx19 = getelementptr inbounds double, double* %fills, i32 %i.087
  store double %cond5.i, double* %arrayidx19, align 8, !tbaa !154
  %cmp20 = fcmp fast ole double %cond5.i, %mul
  %cmp22 = icmp eq i32 %i.087, 0
  %or.cond = or i1 %cmp22, %cmp20
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %cmp24 = icmp sgt i32 %end.086, -1
  br i1 %cmp24, label %cleanup, label %for.inc

if.else:                                          ; preds = %for.body
  %cmp27 = fcmp fast oge double %cond5.i, %mul2
  %cmp29 = icmp sgt i32 %start.085, -1
  %or.cond45 = and i1 %cmp29, %cmp27
  %spec.select = select i1 %or.cond45, i32 %i.087, i32 %end.086
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then
  %start.1 = phi i32 [ %i.087, %if.then ], [ %start.085, %if.else ]
  %end.1 = phi i32 [ %end.086, %if.then ], [ %spec.select, %if.else ]
  %inc = add nsw i32 %i.087, 1
  %cmp = icmp slt i32 %inc, %4
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  %.pre = load double, double* %buffer_size, align 8, !tbaa !116
  br label %for.body

cleanup:                                          ; preds = %for.inc, %if.then, %for.inc.us, %if.then.us, %entry
  %start.0.lcssa = phi i32 [ -1, %entry ], [ %start.085.us, %if.then.us ], [ %start.1.us, %for.inc.us ], [ %start.085, %if.then ], [ %start.1, %for.inc ]
  %end.0.lcssa = phi i32 [ -1, %entry ], [ %end.086.us, %if.then.us ], [ %end.1.us, %for.inc.us ], [ %end.086, %if.then ], [ %end.1, %for.inc ]
  store i32 %start.0.lcssa, i32* %t0, align 4, !tbaa !55
  store i32 %end.0.lcssa, i32* %t1, align 4, !tbaa !55
  %37 = or i32 %end.0.lcssa, %start.0.lcssa
  %.lobit = lshr i32 %37, 31
  %.lobit.not = xor i32 %.lobit, 1
  ret i32 %.lobit.not
}

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.exp2.f32(float) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.exp2.f64(double) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.ceil.f32(float) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.maxnum.f32(float, float) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.maxnum.f64(double, double) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.minnum.f64(double, double) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.minnum.f32(float, float) #3

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #7 = { nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #8 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #9 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #10 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #11 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #12 = { norecurse nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #13 = { nounwind }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 (http://10.18.30.194:8888/compiler/compiler10.git 713ef477716300a9b04a1522e3fce445623444dc)"}
!2 = !{!3, !5, i64 692}
!3 = !{!"x264_t", !4, i64 0, !9, i64 944, !6, i64 948, !6, i64 1464, !5, i64 1528, !5, i64 1532, !5, i64 1536, !5, i64 1540, !5, i64 1544, !5, i64 1548, !9, i64 1552, !9, i64 1556, !5, i64 1560, !5, i64 1564, !17, i64 1568, !9, i64 1612, !5, i64 1616, !9, i64 1620, !5, i64 1624, !5, i64 1628, !5, i64 1632, !5, i64 1636, !5, i64 1640, !5, i64 1644, !15, i64 1648, !5, i64 1656, !15, i64 1664, !15, i64 1672, !15, i64 1680, !15, i64 1688, !15, i64 1696, !15, i64 1704, !15, i64 1712, !5, i64 1720, !15, i64 1728, !5, i64 1736, !6, i64 1740, !6, i64 1756, !6, i64 1772, !6, i64 1788, !6, i64 1804, !6, i64 1820, !6, i64 1836, !6, i64 1852, !6, i64 1868, !6, i64 1884, !9, i64 1900, !6, i64 1904, !6, i64 2184, !9, i64 3304, !9, i64 3308, !19, i64 3312, !6, i64 8448, !6, i64 8760, !5, i64 8824, !19, i64 8832, !20, i64 14016, !21, i64 15168, !9, i64 15352, !9, i64 15356, !6, i64 15360, !6, i64 15368, !6, i64 15520, !6, i64 15528, !5, i64 15536, !5, i64 15540, !15, i64 15544, !22, i64 15552, !23, i64 18752, !9, i64 30784, !26, i64 30792, !9, i64 34104, !9, i64 34108, !9, i64 34112, !6, i64 34144, !6, i64 34656, !6, i64 36704, !6, i64 36736, !9, i64 36744, !9, i64 36748, !6, i64 36752, !6, i64 36812, !6, i64 36820, !6, i64 36848, !6, i64 36896, !6, i64 36944, !6, i64 36972, !6, i64 37000, !9, i64 37028, !29, i64 37032, !30, i64 37664, !31, i64 37880, !32, i64 37948, !32, i64 37972, !32, i64 37996, !33, i64 38020, !34, i64 38232, !35, i64 38316, !9, i64 38332}
!4 = !{!"x264_param_t", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !8, i64 56, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !5, i64 148, !5, i64 152, !5, i64 156, !5, i64 160, !5, i64 164, !5, i64 168, !5, i64 172, !5, i64 176, !9, i64 180, !6, i64 184, !6, i64 200, !6, i64 216, !6, i64 232, !6, i64 248, !6, i64 312, !6, i64 376, !6, i64 440, !9, i64 504, !9, i64 508, !5, i64 512, !5, i64 516, !9, i64 520, !10, i64 524, !12, i64 632, !13, i64 748, !5, i64 764, !14, i64 768, !16, i64 824, !5, i64 836, !5, i64 840, !5, i64 844, !5, i64 848, !5, i64 852, !5, i64 856, !5, i64 860, !5, i64 864, !5, i64 868, !5, i64 872, !5, i64 876, !5, i64 880, !5, i64 884, !5, i64 888, !5, i64 892, !5, i64 896, !5, i64 900, !9, i64 904, !9, i64 908, !5, i64 912, !5, i64 916, !5, i64 920, !5, i64 924, !5, i64 928, !9, i64 932, !9, i64 936, !9, i64 940}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !11, i64 72, !11, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !6, i64 92, !5, i64 100, !5, i64 104}
!11 = !{!"float", !6, i64 0}
!12 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !5, i64 36, !5, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !5, i64 56, !5, i64 60, !11, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !9, i64 80, !5, i64 84, !9, i64 88, !11, i64 92, !11, i64 96, !11, i64 100, !9, i64 104, !5, i64 108, !9, i64 112}
!13 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!14 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !15, i64 40, !15, i64 48}
!15 = !{!"long long", !6, i64 0}
!16 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8}
!17 = !{!"", !5, i64 0, !5, i64 4, !9, i64 8, !5, i64 12, !9, i64 16, !18, i64 20}
!18 = !{!"bs_s", !9, i64 0, !9, i64 4, !9, i64 8, !5, i64 12, !5, i64 16, !5, i64 20}
!19 = !{!"", !9, i64 0, !9, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !6, i64 52, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !6, i64 80, !6, i64 88, !5, i64 344, !6, i64 352, !5, i64 4960, !5, i64 4964, !6, i64 4968, !5, i64 5096, !5, i64 5100, !5, i64 5104, !5, i64 5108, !5, i64 5112, !5, i64 5116, !5, i64 5120, !5, i64 5124}
!20 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !5, i64 64, !6, i64 68, !6, i64 1092}
!21 = !{!"", !9, i64 0, !6, i64 4, !9, i64 12, !6, i64 16, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !15, i64 128, !15, i64 136, !6, i64 144, !15, i64 160, !15, i64 168, !5, i64 176, !5, i64 180}
!22 = !{!"", !6, i64 0, !6, i64 96, !6, i64 128, !6, i64 1664}
!23 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !6, i64 32, !6, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !6, i64 108, !6, i64 116, !6, i64 124, !6, i64 136, !6, i64 148, !6, i64 156, !6, i64 164, !6, i64 176, !6, i64 192, !6, i64 200, !6, i64 212, !5, i64 224, !6, i64 228, !6, i64 244, !5, i64 308, !5, i64 312, !5, i64 316, !6, i64 320, !5, i64 328, !5, i64 332, !5, i64 336, !6, i64 340, !5, i64 348, !5, i64 352, !5, i64 356, !5, i64 360, !5, i64 364, !5, i64 368, !9, i64 372, !5, i64 376, !5, i64 380, !5, i64 384, !5, i64 388, !9, i64 392, !9, i64 396, !9, i64 400, !9, i64 404, !9, i64 408, !9, i64 412, !9, i64 416, !9, i64 420, !6, i64 424, !6, i64 432, !6, i64 440, !6, i64 448, !9, i64 704, !9, i64 708, !9, i64 712, !9, i64 716, !6, i64 720, !5, i64 784, !5, i64 788, !6, i64 792, !5, i64 796, !5, i64 800, !5, i64 804, !5, i64 808, !5, i64 812, !5, i64 816, !5, i64 820, !5, i64 824, !5, i64 828, !5, i64 832, !5, i64 836, !24, i64 896, !25, i64 9472, !5, i64 10336, !5, i64 10340, !5, i64 10344, !5, i64 10348, !5, i64 10352, !5, i64 10356, !5, i64 10360, !5, i64 10364, !6, i64 10368, !5, i64 10384, !5, i64 10388, !6, i64 10392, !9, i64 11416, !6, i64 11420, !9, i64 11932, !6, i64 11936, !5, i64 11956, !6, i64 11960}
!24 = !{!"", !6, i64 0, !6, i64 768, !6, i64 2496, !6, i64 2752, !6, i64 3008, !6, i64 3392, !6, i64 3872, !6, i64 3888, !6, i64 3904, !6, i64 4416, !6, i64 4928, !6, i64 5056, !5, i64 5128, !5, i64 5132, !6, i64 5136, !6, i64 5148, !6, i64 5160, !6, i64 5172, !6, i64 5180, !6, i64 8252, !6, i64 8380, !6, i64 8508}
!25 = !{!"", !6, i64 0, !6, i64 40, !6, i64 160, !6, i64 240, !6, i64 560, !6, i64 720, !6, i64 760, !6, i64 792, !5, i64 800, !6, i64 804, !5, i64 808, !5, i64 812, !5, i64 816, !5, i64 820, !6, i64 824, !6, i64 848, !9, i64 856}
!26 = !{!"", !6, i64 0, !6, i64 16, !6, i64 40, !6, i64 64, !6, i64 136, !6, i64 160, !6, i64 184, !6, i64 208, !6, i64 232, !6, i64 256, !6, i64 280, !6, i64 304, !6, i64 760, !6, i64 1032, !6, i64 1048, !6, i64 2072, !6, i64 2120, !6, i64 2536, !6, i64 2560, !6, i64 2568, !6, i64 2576, !27, i64 2584}
!27 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !6, i64 12, !5, i64 88, !5, i64 92, !5, i64 96, !6, i64 100, !6, i64 108, !6, i64 364, !6, i64 432, !6, i64 456, !6, i64 664, !6, i64 676, !6, i64 688, !28, i64 712, !5, i64 720}
!28 = !{!"double", !6, i64 0}
!29 = !{!"", !6, i64 0, !6, i64 32, !6, i64 64, !6, i64 96, !6, i64 124, !6, i64 140, !6, i64 172, !6, i64 204, !6, i64 236, !6, i64 264, !6, i64 292, !9, i64 324, !9, i64 328, !6, i64 332, !6, i64 336, !6, i64 352, !6, i64 368, !9, i64 384, !9, i64 388, !9, i64 392, !6, i64 396, !6, i64 424, !6, i64 452, !6, i64 480, !6, i64 508, !9, i64 536, !9, i64 540, !9, i64 544, !9, i64 548, !9, i64 552, !9, i64 556, !9, i64 560, !9, i64 564, !9, i64 568, !9, i64 572, !9, i64 576, !9, i64 580, !9, i64 584, !9, i64 588, !9, i64 592, !9, i64 596, !9, i64 600, !9, i64 604, !9, i64 608, !9, i64 612, !9, i64 616, !9, i64 620, !9, i64 624, !9, i64 628}
!30 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !6, i64 12, !6, i64 60, !9, i64 88, !9, i64 92, !9, i64 96, !9, i64 100, !9, i64 104, !9, i64 108, !9, i64 112, !9, i64 116, !9, i64 120, !9, i64 124, !9, i64 128, !9, i64 132, !9, i64 136, !9, i64 140, !9, i64 144, !9, i64 148, !9, i64 152, !9, i64 156, !9, i64 160, !9, i64 164, !9, i64 168, !9, i64 172, !9, i64 176, !9, i64 180, !9, i64 184, !9, i64 188, !9, i64 192, !9, i64 196, !9, i64 200, !9, i64 204, !9, i64 208, !9, i64 212}
!31 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64}
!32 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20}
!33 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !6, i64 64, !9, i64 120, !9, i64 124, !6, i64 128, !9, i64 180, !9, i64 184, !9, i64 188, !9, i64 192, !9, i64 196, !9, i64 200, !9, i64 204, !9, i64 208}
!34 = !{!"", !6, i64 0, !6, i64 8, !9, i64 16, !9, i64 20, !6, i64 24, !6, i64 32, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80}
!35 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12}
!36 = !{!3, !11, i64 696}
!37 = !{!3, !5, i64 18760}
!38 = !{!39, !9, i64 8504}
!39 = !{!"x264_frame", !9, i64 0, !5, i64 4, !6, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !11, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !9, i64 96, !5, i64 100, !5, i64 104, !15, i64 112, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !6, i64 136, !6, i64 137, !6, i64 138, !11, i64 140, !11, i64 144, !11, i64 148, !5, i64 152, !5, i64 156, !5, i64 160, !6, i64 164, !6, i64 176, !6, i64 188, !5, i64 200, !5, i64 204, !5, i64 208, !6, i64 212, !6, i64 224, !6, i64 236, !6, i64 284, !6, i64 332, !9, i64 348, !6, i64 352, !6, i64 368, !9, i64 384, !6, i64 400, !6, i64 2704, !5, i64 2768, !9, i64 2772, !9, i64 2776, !9, i64 2780, !6, i64 2784, !9, i64 2792, !6, i64 2796, !9, i64 2932, !9, i64 2936, !6, i64 2940, !6, i64 4236, !6, i64 4372, !6, i64 4380, !6, i64 4388, !6, i64 4516, !6, i64 4520, !6, i64 5816, !5, i64 7112, !6, i64 7116, !6, i64 7188, !9, i64 8484, !9, i64 8488, !9, i64 8492, !9, i64 8496, !9, i64 8500, !9, i64 8504, !5, i64 8508, !9, i64 8512, !9, i64 8516, !9, i64 8520, !5, i64 8524, !6, i64 8528, !6, i64 8600, !6, i64 8616, !40, i64 8640, !6, i64 8672, !6, i64 8924, !6, i64 9928, !15, i64 11936, !15, i64 11944, !5, i64 11952, !5, i64 11956, !5, i64 11960, !5, i64 11964, !5, i64 11968, !5, i64 11972, !11, i64 11976, !5, i64 11980, !5, i64 11984, !5, i64 11988, !5, i64 11992, !41, i64 11996, !9, i64 12008, !9, i64 12012, !9, i64 12016}
!40 = !{!"x264_hrd_t", !28, i64 0, !28, i64 8, !28, i64 16, !28, i64 24}
!41 = !{!"x264_sei_t", !5, i64 0, !9, i64 4, !9, i64 8}
!42 = !{!39, !9, i64 8500}
!43 = !{!3, !5, i64 15344}
!44 = !{!39, !9, i64 8520}
!45 = !{!11, !11, i64 0}
!46 = !{!6, !6, i64 0}
!47 = !{!48, !48, i64 0}
!48 = !{!"short", !6, i64 0}
!49 = !{!3, !5, i64 536}
!50 = !{!3, !5, i64 18756}
!51 = !{!3, !5, i64 18752}
!52 = !{!3, !5, i64 18772}
!53 = !{i32 0, i32 33}
!54 = !{!15, !15, i64 0}
!55 = !{!5, !5, i64 0}
!56 = !{!3, !5, i64 18764}
!57 = !{!3, !5, i64 18768}
!58 = !{!3, !5, i64 18856}
!59 = !{!9, !9, i64 0}
!60 = !{!61, !5, i64 264}
!61 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !13, i64 72, !5, i64 88, !62, i64 92, !5, i64 260, !5, i64 264, !5, i64 268, !5, i64 272, !5, i64 276, !6, i64 280}
!62 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !63, i64 84, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !5, i64 148, !5, i64 152, !5, i64 156, !5, i64 160, !5, i64 164}
!63 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44}
!64 = !{!3, !9, i64 37760}
!65 = !{!3, !9, i64 30784}
!66 = !{!67, !9, i64 276}
!67 = !{!"x264_ratecontrol_t", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !28, i64 16, !28, i64 24, !28, i64 32, !28, i64 40, !5, i64 48, !6, i64 52, !9, i64 64, !11, i64 68, !11, i64 72, !11, i64 76, !5, i64 80, !5, i64 84, !11, i64 88, !28, i64 96, !15, i64 104, !15, i64 112, !28, i64 120, !28, i64 128, !28, i64 136, !9, i64 144, !5, i64 148, !11, i64 152, !5, i64 156, !28, i64 160, !28, i64 168, !28, i64 176, !15, i64 184, !28, i64 192, !28, i64 200, !28, i64 208, !28, i64 216, !28, i64 224, !28, i64 232, !28, i64 240, !9, i64 248, !9, i64 252, !9, i64 256, !9, i64 260, !9, i64 264, !9, i64 268, !5, i64 272, !9, i64 276, !9, i64 280, !28, i64 288, !6, i64 296, !5, i64 320, !28, i64 328, !28, i64 336, !28, i64 344, !6, i64 352, !6, i64 376, !28, i64 400, !68, i64 408, !11, i64 468, !28, i64 472, !28, i64 480, !28, i64 488, !9, i64 496, !6, i64 500, !9, i64 620, !5, i64 624, !5, i64 628, !5, i64 632, !9, i64 636, !9, i64 640, !5, i64 644, !5, i64 648, !28, i64 656, !28, i64 664, !15, i64 672}
!68 = !{!"", !6, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !6, i64 20, !6, i64 28, !6, i64 36, !6, i64 44, !6, i64 52}
!69 = !{!39, !5, i64 100}
!70 = !{!71, !5, i64 0}
!71 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !28, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !28, i64 40, !28, i64 48, !28, i64 56, !11, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !11, i64 80, !6, i64 84, !6, i64 86, !6, i64 98, !6, i64 104, !5, i64 168, !15, i64 176, !15, i64 184, !5, i64 192}
!72 = !{!71, !5, i64 8}
!73 = !{!67, !5, i64 416}
!74 = !{!67, !5, i64 420}
!75 = !{!67, !9, i64 268}
!76 = !{!67, !5, i64 424}
!77 = !{!3, !9, i64 37876}
!78 = !{!67, !9, i64 64}
!79 = !{!71, !5, i64 168}
!80 = !{!3, !9, i64 15352}
!81 = !{!67, !5, i64 4}
!82 = !{!3, !5, i64 632}
!83 = !{!3, !5, i64 116}
!84 = !{!3, !5, i64 700}
!85 = !{!3, !11, i64 724}
!86 = !{!67, !28, i64 40}
!87 = !{!3, !11, i64 656}
!88 = !{!67, !28, i64 224}
!89 = !{!3, !5, i64 668}
!90 = !{!3, !5, i64 672}
!91 = !{!67, !5, i64 12}
!92 = !{!3, !5, i64 652}
!93 = !{!67, !28, i64 16}
!94 = !{!3, !5, i64 140}
!95 = !{!3, !5, i64 52}
!96 = !{!61, !5, i64 176}
!97 = !{!61, !5, i64 204}
!98 = !{!61, !5, i64 220}
!99 = !{i32 3, i32 33}
!100 = !{!61, !5, i64 180}
!101 = !{!61, !5, i64 188}
!102 = !{!61, !5, i64 196}
!103 = !{!61, !5, i64 184}
!104 = !{!61, !5, i64 192}
!105 = !{!61, !5, i64 200}
!106 = !{!3, !5, i64 100}
!107 = !{!61, !5, i64 160}
!108 = !{!61, !5, i64 156}
!109 = !{!61, !5, i64 256}
!110 = !{!61, !5, i64 208}
!111 = !{!61, !5, i64 212}
!112 = !{!61, !5, i64 216}
!113 = !{!67, !28, i64 24}
!114 = !{!67, !28, i64 128}
!115 = !{!67, !28, i64 136}
!116 = !{!67, !28, i64 96}
!117 = !{!67, !5, i64 148}
!118 = !{!67, !5, i64 0}
!119 = !{!67, !28, i64 200}
!120 = !{!3, !11, i64 660}
!121 = !{!67, !11, i64 152}
!122 = !{!3, !11, i64 676}
!123 = !{!67, !15, i64 112}
!124 = !{!67, !15, i64 104}
!125 = !{!67, !5, i64 8}
!126 = !{!3, !5, i64 4}
!127 = !{!3, !5, i64 716}
!128 = !{!3, !5, i64 864}
!129 = !{!3, !5, i64 868}
!130 = !{!3, !11, i64 684}
!131 = !{!3, !11, i64 664}
!132 = !{!67, !28, i64 32}
!133 = !{!67, !5, i64 48}
!134 = !{!67, !5, i64 320}
!135 = !{!67, !15, i64 672}
!136 = !{!3, !5, i64 29104}
!137 = !{!67, !28, i64 336}
!138 = !{!67, !28, i64 328}
!139 = !{!67, !28, i64 168}
!140 = !{!67, !28, i64 192}
!141 = !{!3, !11, i64 680}
!142 = !{!67, !28, i64 232}
!143 = !{!67, !28, i64 240}
!144 = !{!3, !5, i64 636}
!145 = !{!3, !5, i64 19580}
!146 = !{!3, !5, i64 648}
!147 = !{!67, !28, i64 400}
!148 = !{!67, !28, i64 288}
!149 = !{!3, !5, i64 12}
!150 = !{!67, !9, i64 144}
!151 = !{!67, !9, i64 620}
!152 = !{!3, !5, i64 640}
!153 = !{!3, !5, i64 644}
!154 = !{!28, !28, i64 0}
!155 = !{!156, !11, i64 0}
!156 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16}
!157 = !{!156, !11, i64 4}
!158 = !{!156, !11, i64 8}
!159 = !{!156, !11, i64 12}
!160 = !{!156, !11, i64 16}
!161 = !{!3, !9, i64 744}
!162 = !{!3, !5, i64 740}
!163 = !{!3, !9, i64 736}
!164 = !{!165, !9, i64 20}
!165 = !{!"x264_zone_t", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !11, i64 16, !9, i64 20}
!166 = !{!165, !11, i64 16}
!167 = !{!165, !5, i64 8}
!168 = !{!4, !9, i64 940}
!169 = !{!4, !9, i64 932}
!170 = !{i64 0, i64 4, !55, i64 4, i64 4, !55, i64 8, i64 4, !55, i64 12, i64 4, !55, i64 16, i64 4, !45, i64 20, i64 4, !59}
!171 = !{!67, !5, i64 632}
!172 = !{!67, !9, i64 636}
!173 = !{!165, !5, i64 0}
!174 = !{!165, !5, i64 4}
!175 = !{!3, !9, i64 720}
!176 = !{!3, !5, i64 28}
!177 = !{!3, !5, i64 32}
!178 = !{!3, !5, i64 872}
!179 = !{!3, !5, i64 876}
!180 = !{!3, !5, i64 128}
!181 = !{!3, !5, i64 112}
!182 = !{!3, !5, i64 132}
!183 = !{!3, !5, i64 136}
!184 = !{!3, !5, i64 168}
!185 = !{!3, !5, i64 880}
!186 = !{!3, !5, i64 888}
!187 = !{!3, !5, i64 544}
!188 = !{!3, !5, i64 29116}
!189 = !{!3, !5, i64 120}
!190 = !{!3, !5, i64 704}
!191 = !{!67, !5, i64 272}
!192 = !{!3, !5, i64 48}
!193 = !{!67, !9, i64 280}
!194 = !{!71, !28, i64 56}
!195 = !{!71, !28, i64 16}
!196 = !{!71, !5, i64 32}
!197 = !{!71, !11, i64 64}
!198 = !{!71, !6, i64 84}
!199 = !{!71, !5, i64 28}
!200 = !{!71, !5, i64 24}
!201 = !{!71, !5, i64 68}
!202 = !{!71, !5, i64 72}
!203 = !{!71, !5, i64 76}
!204 = !{!71, !5, i64 4}
!205 = !{!3, !5, i64 892}
!206 = !{!207, !5, i64 36}
!207 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60}
!208 = !{!3, !11, i64 728}
!209 = !{!3, !11, i64 732}
!210 = !{!71, !15, i64 176}
!211 = !{!3, !5, i64 764}
!212 = !{!71, !11, i64 80}
!213 = !{!67, !28, i64 344}
!214 = !{!165, !5, i64 12}
!215 = !{!71, !28, i64 40}
!216 = !{!71, !28, i64 48}
!217 = !{!3, !5, i64 708}
!218 = !{!3, !9, i64 712}
!219 = !{!67, !9, i64 252}
!220 = !{!67, !9, i64 248}
!221 = !{!67, !9, i64 260}
!222 = !{!67, !9, i64 264}
!223 = !{!67, !9, i64 256}
!224 = !{i64 0, i64 4, !55, i64 4, i64 4, !55, i64 8, i64 4, !55, i64 12, i64 4, !55, i64 16, i64 8, !154, i64 24, i64 8, !154, i64 32, i64 8, !154, i64 40, i64 8, !154, i64 48, i64 4, !55, i64 52, i64 12, !46, i64 64, i64 4, !59, i64 68, i64 4, !45, i64 72, i64 4, !45, i64 76, i64 4, !45, i64 80, i64 4, !55, i64 84, i64 4, !55, i64 88, i64 4, !45, i64 96, i64 8, !154, i64 104, i64 8, !54, i64 112, i64 8, !54, i64 120, i64 8, !154, i64 128, i64 8, !154, i64 136, i64 8, !154, i64 144, i64 4, !59, i64 148, i64 4, !55, i64 152, i64 4, !45, i64 156, i64 4, !55, i64 160, i64 8, !154, i64 168, i64 8, !154, i64 176, i64 8, !154, i64 184, i64 8, !54, i64 192, i64 8, !154, i64 200, i64 8, !154, i64 208, i64 8, !154, i64 216, i64 8, !154, i64 224, i64 8, !154, i64 232, i64 8, !154, i64 240, i64 8, !154, i64 248, i64 4, !59, i64 252, i64 4, !59, i64 256, i64 4, !59, i64 260, i64 4, !59, i64 264, i64 4, !59, i64 268, i64 4, !59, i64 272, i64 4, !55, i64 276, i64 4, !59, i64 280, i64 4, !59, i64 288, i64 8, !154, i64 296, i64 24, !46, i64 320, i64 4, !55, i64 328, i64 8, !154, i64 336, i64 8, !154, i64 344, i64 8, !154, i64 352, i64 24, !46, i64 376, i64 24, !46, i64 400, i64 8, !154, i64 408, i64 8, !46, i64 416, i64 4, !55, i64 420, i64 4, !55, i64 424, i64 4, !55, i64 428, i64 8, !46, i64 436, i64 8, !46, i64 444, i64 8, !46, i64 452, i64 8, !46, i64 460, i64 8, !46, i64 468, i64 4, !45, i64 472, i64 8, !154, i64 480, i64 8, !154, i64 488, i64 8, !154, i64 496, i64 4, !59, i64 500, i64 120, !46, i64 620, i64 4, !59, i64 624, i64 4, !55, i64 628, i64 4, !55, i64 632, i64 4, !55, i64 636, i64 4, !59, i64 640, i64 4, !59, i64 644, i64 4, !55, i64 648, i64 4, !55, i64 656, i64 8, !154, i64 664, i64 8, !154, i64 672, i64 8, !54}
!225 = !{i64 0, i64 4, !55, i64 4, i64 4, !55, i64 8, i64 4, !55, i64 12, i64 4, !55, i64 16, i64 4, !55, i64 20, i64 4, !55, i64 24, i64 4, !55, i64 28, i64 4, !55, i64 32, i64 4, !55, i64 36, i64 4, !55, i64 40, i64 4, !55, i64 44, i64 4, !55, i64 48, i64 4, !55, i64 52, i64 4, !55, i64 56, i64 4, !55, i64 60, i64 4, !55, i64 64, i64 4, !55, i64 68, i64 4, !55, i64 72, i64 4, !55, i64 76, i64 4, !55, i64 80, i64 4, !55, i64 84, i64 4, !55, i64 88, i64 4, !55, i64 92, i64 4, !55, i64 96, i64 4, !55, i64 100, i64 4, !55, i64 104, i64 4, !55, i64 108, i64 4, !55, i64 112, i64 4, !55, i64 116, i64 4, !55, i64 120, i64 4, !55, i64 124, i64 4, !55, i64 128, i64 4, !55, i64 132, i64 4, !55, i64 136, i64 4, !55, i64 140, i64 4, !55, i64 144, i64 4, !55, i64 148, i64 4, !55, i64 152, i64 4, !55, i64 156, i64 4, !55, i64 160, i64 4, !55, i64 164, i64 4, !55, i64 168, i64 4, !55, i64 172, i64 4, !55, i64 176, i64 4, !55, i64 180, i64 4, !59, i64 184, i64 16, !46, i64 200, i64 16, !46, i64 216, i64 16, !46, i64 232, i64 16, !46, i64 248, i64 64, !46, i64 312, i64 64, !46, i64 376, i64 64, !46, i64 440, i64 64, !46, i64 504, i64 4, !59, i64 508, i64 4, !59, i64 512, i64 4, !55, i64 516, i64 4, !55, i64 520, i64 4, !59, i64 524, i64 4, !55, i64 528, i64 4, !55, i64 532, i64 4, !55, i64 536, i64 4, !55, i64 540, i64 4, !55, i64 544, i64 4, !55, i64 548, i64 4, !55, i64 552, i64 4, !55, i64 556, i64 4, !55, i64 560, i64 4, !55, i64 564, i64 4, !55, i64 568, i64 4, !55, i64 572, i64 4, !55, i64 576, i64 4, !55, i64 580, i64 4, !55, i64 584, i64 4, !55, i64 588, i64 4, !55, i64 592, i64 4, !55, i64 596, i64 4, !45, i64 600, i64 4, !45, i64 604, i64 4, !55, i64 608, i64 4, !55, i64 612, i64 4, !55, i64 616, i64 8, !46, i64 624, i64 4, !55, i64 628, i64 4, !55, i64 632, i64 4, !55, i64 636, i64 4, !55, i64 640, i64 4, !55, i64 644, i64 4, !55, i64 648, i64 4, !55, i64 652, i64 4, !55, i64 656, i64 4, !45, i64 660, i64 4, !45, i64 664, i64 4, !45, i64 668, i64 4, !55, i64 672, i64 4, !55, i64 676, i64 4, !45, i64 680, i64 4, !45, i64 684, i64 4, !45, i64 688, i64 4, !55, i64 692, i64 4, !55, i64 696, i64 4, !45, i64 700, i64 4, !55, i64 704, i64 4, !55, i64 708, i64 4, !55, i64 712, i64 4, !59, i64 716, i64 4, !55, i64 720, i64 4, !59, i64 724, i64 4, !45, i64 728, i64 4, !45, i64 732, i64 4, !45, i64 736, i64 4, !59, i64 740, i64 4, !55, i64 744, i64 4, !59, i64 748, i64 4, !55, i64 752, i64 4, !55, i64 756, i64 4, !55, i64 760, i64 4, !55, i64 764, i64 4, !55, i64 768, i64 4, !55, i64 772, i64 4, !55, i64 776, i64 4, !55, i64 780, i64 4, !55, i64 784, i64 4, !55, i64 788, i64 4, !55, i64 792, i64 4, !55, i64 796, i64 4, !55, i64 800, i64 4, !55, i64 808, i64 8, !54, i64 816, i64 8, !54, i64 824, i64 4, !55, i64 828, i64 4, !55, i64 832, i64 4, !55, i64 836, i64 4, !55, i64 840, i64 4, !55, i64 844, i64 4, !55, i64 848, i64 4, !55, i64 852, i64 4, !55, i64 856, i64 4, !55, i64 860, i64 4, !55, i64 864, i64 4, !55, i64 868, i64 4, !55, i64 872, i64 4, !55, i64 876, i64 4, !55, i64 880, i64 4, !55, i64 884, i64 4, !55, i64 888, i64 4, !55, i64 892, i64 4, !55, i64 896, i64 4, !55, i64 900, i64 4, !55, i64 904, i64 4, !59, i64 908, i64 4, !59, i64 912, i64 4, !55, i64 916, i64 4, !55, i64 920, i64 4, !55, i64 924, i64 4, !55, i64 928, i64 4, !55, i64 932, i64 4, !59, i64 936, i64 4, !59, i64 940, i64 4, !59}
!226 = distinct !{!226, !227}
!227 = !{!"llvm.loop.peeled.count", i32 1}
!228 = !{!3, !5, i64 1628}
!229 = !{!67, !9, i64 640}
!230 = !{!3, !5, i64 3320}
!231 = !{!3, !5, i64 3376}
!232 = !{!3, !5, i64 29112}
!233 = !{!3, !9, i64 15356}
!234 = !{!39, !9, i64 8488}
!235 = !{!39, !9, i64 8492}
!236 = !{!39, !9, i64 8496}
!237 = !{!67, !9, i64 496}
!238 = !{!39, !15, i64 72}
!239 = !{!67, !28, i64 120}
!240 = !{!3, !5, i64 1636}
!241 = !{!67, !28, i64 480}
!242 = !{!3, !5, i64 1528}
!243 = !{!67, !11, i64 468}
!244 = !{!245, !6, i64 0}
!245 = !{!"x264_level_t", !6, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !48, i64 24, !6, i64 26, !6, i64 27, !6, i64 28, !6, i64 29, !6, i64 30, !6, i64 31}
!246 = !{!3, !5, i64 44}
!247 = !{!245, !6, i64 28}
!248 = !{!61, !5, i64 4}
!249 = !{!67, !28, i64 472}
!250 = !{!245, !5, i64 4}
!251 = !{!39, !6, i64 138}
!252 = !{!67, !5, i64 624}
!253 = !{!39, !5, i64 124}
!254 = !{!67, !11, i64 68}
!255 = !{!39, !11, i64 144}
!256 = !{!39, !11, i64 140}
!257 = !{!67, !15, i64 184}
!258 = !{i64 0, i64 4, !55, i64 4, i64 4, !55, i64 8, i64 4, !55, i64 16, i64 8, !154, i64 24, i64 4, !55, i64 28, i64 4, !55, i64 32, i64 4, !55, i64 40, i64 8, !154, i64 48, i64 8, !154, i64 56, i64 8, !154, i64 64, i64 4, !45, i64 68, i64 4, !55, i64 72, i64 4, !55, i64 76, i64 4, !55, i64 80, i64 4, !45, i64 84, i64 1, !46, i64 86, i64 12, !46, i64 98, i64 4, !46, i64 104, i64 64, !46, i64 168, i64 4, !55, i64 176, i64 8, !54, i64 184, i64 8, !54, i64 192, i64 4, !55}
!259 = !{!39, !5, i64 16}
!260 = !{!39, !5, i64 4}
!261 = !{!67, !11, i64 88}
!262 = !{!39, !5, i64 7112}
!263 = !{!67, !5, i64 156}
!264 = !{!67, !28, i64 176}
!265 = !{!67, !28, i64 208}
!266 = !{!67, !28, i64 216}
!267 = !{!39, !11, i64 64}
!268 = !{!39, !15, i64 56}
!269 = !{!3, !5, i64 856}
!270 = !{!39, !15, i64 48}
!271 = !{!3, !15, i64 15544}
!272 = !{!3, !5, i64 18804}
!273 = !{!3, !5, i64 29088}
!274 = !{!67, !5, i64 80}
!275 = !{!3, !5, i64 18800}
!276 = !{!67, !11, i64 72}
!277 = !{!39, !9, i64 8484}
!278 = !{!3, !5, i64 3324}
!279 = !{!3, !5, i64 1540}
!280 = !{!67, !28, i64 488}
!281 = !{!3, !5, i64 1544}
!282 = !{!67, !11, i64 76}
!283 = !{!67, !5, i64 84}
!284 = !{!3, !5, i64 18808}
!285 = !{!3, !5, i64 108}
!286 = !{!287, !5, i64 36}
!287 = !{!"x264_weight_t", !6, i64 0, !6, i64 16, !5, i64 32, !5, i64 36, !5, i64 40, !9, i64 44}
!288 = !{!287, !5, i64 32}
!289 = !{!287, !5, i64 40}
!290 = !{!3, !9, i64 37860}
!291 = !{!3, !5, i64 33472}
!292 = !{!3, !5, i64 33464}
!293 = !{!3, !5, i64 33468}
!294 = !{!39, !11, i64 148}
!295 = !{!3, !5, i64 33380}
!296 = !{!3, !5, i64 33376}
!297 = !{!3, !5, i64 33384}
!298 = !{!287, !9, i64 44}
!299 = !{!3, !9, i64 37872}
!300 = !{!67, !28, i64 160}
!301 = !{!67, !5, i64 628}
!302 = !{!39, !6, i64 137}
!303 = !{!3, !5, i64 688}
!304 = !{!3, !5, i64 848}
!305 = !{!61, !5, i64 168}
!306 = !{!39, !28, i64 8640}
!307 = !{!3, !5, i64 15536}
!308 = !{!67, !5, i64 644}
!309 = !{!3, !5, i64 15540}
!310 = !{!67, !5, i64 648}
!311 = !{!67, !28, i64 656}
!312 = !{!39, !28, i64 8656}
!313 = !{!39, !15, i64 80}
!314 = !{!3, !15, i64 1704}
!315 = !{!39, !5, i64 132}
!316 = !{!67, !28, i64 664}
!317 = !{!39, !28, i64 8648}
!318 = !{!39, !15, i64 88}
!319 = !{!39, !28, i64 8664}
!320 = !{!71, !15, i64 184}
