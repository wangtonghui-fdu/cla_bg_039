; ModuleID = 'common/deblock.c'
source_filename = "common/deblock.c"
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

@i_alpha_table = internal unnamed_addr constant [88 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\04\05\06\07\08\09\0A\0C\0D\0F\11\14\16\19\1C $(-28?GPZeq\7F\90\A2\B6\CB\E2\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 1
@i_beta_table = internal unnamed_addr constant [88 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\02\02\03\03\03\03\04\04\04\06\06\07\07\08\08\09\09\0A\0A\0B\0B\0C\0C\0D\0D\0E\0E\0F\0F\10\10\11\11\12\12\12\12\12\12\12\12\12\12\12\12\12\12", align 1
@i_tc0_table = internal unnamed_addr constant [88 x [4 x i8]] [[4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\01", [4 x i8] c"\FF\00\00\01", [4 x i8] c"\FF\00\00\01", [4 x i8] c"\FF\00\00\01", [4 x i8] c"\FF\00\01\01", [4 x i8] c"\FF\00\01\01", [4 x i8] c"\FF\01\01\01", [4 x i8] c"\FF\01\01\01", [4 x i8] c"\FF\01\01\01", [4 x i8] c"\FF\01\01\01", [4 x i8] c"\FF\01\01\02", [4 x i8] c"\FF\01\01\02", [4 x i8] c"\FF\01\01\02", [4 x i8] c"\FF\01\01\02", [4 x i8] c"\FF\01\02\03", [4 x i8] c"\FF\01\02\03", [4 x i8] c"\FF\02\02\03", [4 x i8] c"\FF\02\02\04", [4 x i8] c"\FF\02\03\04", [4 x i8] c"\FF\02\03\04", [4 x i8] c"\FF\03\03\05", [4 x i8] c"\FF\03\04\06", [4 x i8] c"\FF\03\04\06", [4 x i8] c"\FF\04\05\07", [4 x i8] c"\FF\04\05\08", [4 x i8] c"\FF\04\06\09", [4 x i8] c"\FF\05\07\0A", [4 x i8] c"\FF\06\08\0B", [4 x i8] c"\FF\06\08\0D", [4 x i8] c"\FF\07\0A\0E", [4 x i8] c"\FF\08\0B\10", [4 x i8] c"\FF\09\0C\12", [4 x i8] c"\FF\0A\0D\14", [4 x i8] c"\FF\0B\0F\17", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19"], align 1

; Function Attrs: nounwind
define hidden void @x264_8_frame_deblock_row(%struct.x264_t* %h, i32 %mb_y) local_unnamed_addr #0 {
entry:
  %tc.i = alloca [4 x i8], align 4
  %i_alpha_c0_offset = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 51, i32 33
  %0 = load i32, i32* %i_alpha_c0_offset, align 16, !tbaa !2
  %i_beta_offset = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 51, i32 34
  %1 = load i32, i32* %i_beta_offset, align 4, !tbaa !36
  %cmp = icmp slt i32 %0, %1
  %cond = select i1 %cmp, i32 %0, i32 %1
  %sub3 = sub i32 15, %cond
  %i_chroma_qp_index_offset = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 53, i32 0, i32 11
  %2 = load i32, i32* %i_chroma_qp_index_offset, align 4, !tbaa !37
  %3 = icmp sgt i32 %2, 0
  %4 = sub i32 0, %2
  %spec.select.neg = select i1 %3, i32 %4, i32 0
  %sub12 = add i32 %sub3, %spec.select.neg
  %fdec = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 61
  %5 = load %struct.x264_frame*, %struct.x264_frame** %fdec, align 4, !tbaa !39
  %arrayidx = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %5, i32 0, i32 31, i32 0
  %6 = load i32, i32* %arrayidx, align 4, !tbaa !40
  %arrayidx15 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %5, i32 0, i32 31, i32 1
  %7 = load i32, i32* %arrayidx15, align 4, !tbaa !40
  %i_chroma_format_idc = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 22
  %8 = load i32, i32* %i_chroma_format_idc, align 8, !tbaa !41
  %cmp20 = icmp eq i32 %8, 3
  %chroma_v_shift = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 4
  %9 = load i32, i32* %chroma_v_shift, align 16, !tbaa !45
  %shr = lshr i32 16, %9
  br i1 %cmp20, label %cond.true21, label %cond.end28

cond.true21:                                      ; preds = %entry
  %arrayidx23 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %5, i32 0, i32 37, i32 2
  %10 = bitcast i8** %arrayidx23 to i32*
  %11 = load i32, i32* %10, align 4, !tbaa !46
  %arrayidx26 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %5, i32 0, i32 37, i32 1
  %12 = bitcast i8** %arrayidx26 to i32*
  %13 = load i32, i32* %12, align 4, !tbaa !46
  %sub.ptr.sub = sub i32 %11, %13
  br label %cond.end28

cond.end28:                                       ; preds = %entry, %cond.true21
  %cond29 = phi i32 [ %sub.ptr.sub, %cond.true21 ], [ 1, %entry ]
  %i_mb_width = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 0
  %14 = load i32, i32* %i_mb_width, align 64, !tbaa !47
  %cmp313337 = icmp sgt i32 %14, 0
  br i1 %cmp313337, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %cond.end28
  %i_disable_deblocking_filter_idc.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 51, i32 32
  %i_neighbour.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 37
  %i_mb_stride.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 5
  %i_mb_xy.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 12
  %b_interlaced.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 23
  %sub.i = add nsw i32 %mb_y, -1
  %i_mb_top_y.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 51
  %i_mb_top_xy.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 48
  %arrayidx.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 47, i32 0
  %arrayidx18.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 47, i32 1
  %slice_table.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 73
  %cmp35.i = icmp sgt i32 %mb_y, 0
  %mb_transform_size = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 72
  %type = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 60
  %and = and i32 %mb_y, 1
  %arrayidx62 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 84, i32 %and
  %b_sliced_threads = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 3
  %mul = shl i32 %mb_y, 4
  %mul73 = mul nsw i32 %mul, %6
  %mul84 = mul i32 %7, %mb_y
  %mul85 = mul i32 %mul84, %shr
  %qp108 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 62
  %chroma_qp_table = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 50
  %partition = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 61
  %cbp = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 63
  %arrayidx538 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 99, i32 0, i32 0
  %15 = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 0
  %arrayidx27.i2227 = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 1
  %arrayidx37.i2231 = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 2
  %arrayidx47.i2235 = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 3
  %arrayidx578 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 99, i32 1, i32 0
  %arrayidx489 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 99, i32 4, i32 0
  %arrayidx529 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 99, i32 5, i32 0
  %arrayidx1080 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 99, i32 0, i32 1
  %arrayidx1127 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 99, i32 1, i32 1
  %arrayidx1013 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 99, i32 4, i32 1
  %arrayidx1060 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 99, i32 5, i32 1
  %mul1139 = shl nsw i32 %6, 2
  %mul1150 = shl nsw i32 %7, 2
  %cmp1184 = icmp eq i32 %8, 2
  %mul1200 = shl nsw i32 %6, 3
  %cmp1229 = icmp eq i32 %8, 1
  %mul1211 = shl nsw i32 %7, 3
  %mul1261 = mul nsw i32 %6, 12
  %mul1272 = mul nsw i32 %7, 12
  br label %for.body

for.cond.cleanup:                                 ; preds = %if.end1321, %cond.end28
  ret void

for.body:                                         ; preds = %if.end1321.for.body_crit_edge, %for.body.lr.ph
  %16 = phi %struct.x264_frame* [ %5, %for.body.lr.ph ], [ %.pre, %if.end1321.for.body_crit_edge ]
  %mb_x.03338 = phi i32 [ 0, %for.body.lr.ph ], [ %add1325, %if.end1321.for.body_crit_edge ]
  call void @x264_8_prefetch_fenc(%struct.x264_t* nonnull %h, %struct.x264_frame* %16, i32 %mb_x.03338, i32 %mb_y) #5
  %17 = load i32, i32* %i_disable_deblocking_filter_idc.i, align 4, !tbaa !48
  %cmp.i = icmp ne i32 %17, 2
  store i32 0, i32* %i_neighbour.i, align 32, !tbaa !49
  %18 = load i32, i32* %i_mb_stride.i, align 4, !tbaa !50
  %mul.i = mul nsw i32 %18, %mb_y
  %add.i = add nsw i32 %mul.i, %mb_x.03338
  store i32 %add.i, i32* %i_mb_xy.i, align 8, !tbaa !51
  store i32 0, i32* %b_interlaced.i, align 4, !tbaa !52
  store i32 %sub.i, i32* %i_mb_top_y.i, align 8, !tbaa !53
  %mul9.i = mul nsw i32 %18, %sub.i
  %add10.i = add nsw i32 %mul9.i, %mb_x.03338
  store i32 %add10.i, i32* %i_mb_top_xy.i, align 4, !tbaa !54
  %sub14.i = add nsw i32 %add.i, -1
  store i32 %sub14.i, i32* %arrayidx.i, align 4, !tbaa !40
  store i32 %sub14.i, i32* %arrayidx18.i, align 4, !tbaa !40
  %cmp19.i = icmp eq i32 %mb_x.03338, 0
  br i1 %cmp19.i, label %if.end.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.body
  br i1 %cmp.i, label %if.then.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %19 = load i32*, i32** %slice_table.i, align 8, !tbaa !55
  %arrayidx25.i = getelementptr inbounds i32, i32* %19, i32 %sub14.i
  %20 = load i32, i32* %arrayidx25.i, align 4, !tbaa !40
  %arrayidx30.i = getelementptr inbounds i32, i32* %19, i32 %add.i
  %21 = load i32, i32* %arrayidx30.i, align 4, !tbaa !40
  %cmp31.i = icmp eq i32 %20, %21
  br i1 %cmp31.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %lor.lhs.false.i, %land.lhs.true.i
  store i32 1, i32* %i_neighbour.i, align 32, !tbaa !49
  br label %if.end.i

if.end.i:                                         ; preds = %for.body, %if.then.i, %lor.lhs.false.i
  %22 = phi i32 [ 1, %if.then.i ], [ 0, %lor.lhs.false.i ], [ 0, %for.body ]
  %23 = phi i32 [ 3, %if.then.i ], [ 2, %lor.lhs.false.i ], [ 2, %for.body ]
  br i1 %cmp35.i, label %land.lhs.true37.i, label %macroblock_cache_load_neighbours_deblock.exit

land.lhs.true37.i:                                ; preds = %if.end.i
  br i1 %cmp.i, label %if.then52.i, label %lor.lhs.false39.i

lor.lhs.false39.i:                                ; preds = %land.lhs.true37.i
  %24 = load i32*, i32** %slice_table.i, align 8, !tbaa !55
  %arrayidx44.i = getelementptr inbounds i32, i32* %24, i32 %add10.i
  %25 = load i32, i32* %arrayidx44.i, align 4, !tbaa !40
  %arrayidx49.i = getelementptr inbounds i32, i32* %24, i32 %add.i
  %26 = load i32, i32* %arrayidx49.i, align 4, !tbaa !40
  %cmp50.i = icmp eq i32 %25, %26
  br i1 %cmp50.i, label %if.then52.i, label %macroblock_cache_load_neighbours_deblock.exit

if.then52.i:                                      ; preds = %lor.lhs.false39.i, %land.lhs.true37.i
  store i32 %23, i32* %i_neighbour.i, align 32, !tbaa !49
  br label %macroblock_cache_load_neighbours_deblock.exit

macroblock_cache_load_neighbours_deblock.exit:    ; preds = %if.end.i, %lor.lhs.false39.i, %if.then52.i
  %27 = phi i32 [ %22, %if.end.i ], [ %22, %lor.lhs.false39.i ], [ %23, %if.then52.i ]
  %28 = load i8*, i8** %mb_transform_size, align 4, !tbaa !56
  %arrayidx36 = getelementptr inbounds i8, i8* %28, i32 %add.i
  %29 = load i8, i8* %arrayidx36, align 1, !tbaa !57
  %30 = load i8*, i8** %type, align 4, !tbaa !58
  %arrayidx39 = getelementptr inbounds i8, i8* %30, i32 %add.i
  %31 = load i8, i8* %arrayidx39, align 1, !tbaa !57
  %switch = icmp ult i8 %31, 4
  %32 = load [2 x [8 x [4 x i8]]]*, [2 x [8 x [4 x i8]]]** %arrayidx62, align 4, !tbaa !46
  %33 = load i32, i32* %b_sliced_threads, align 4, !tbaa !59
  %tobool63 = icmp eq i32 %33, 0
  %cond67 = select i1 %tobool63, i32 %mb_x.03338, i32 %add.i
  %arraydecay69 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 0
  %34 = load %struct.x264_frame*, %struct.x264_frame** %fdec, align 4, !tbaa !39
  %arrayidx72 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %34, i32 0, i32 37, i32 0
  %35 = load i8*, i8** %arrayidx72, align 4, !tbaa !46
  %add.ptr = getelementptr inbounds i8, i8* %35, i32 %mul73
  %mul74 = shl nsw i32 %mb_x.03338, 4
  %add.ptr75 = getelementptr inbounds i8, i8* %add.ptr, i32 %mul74
  %36 = load i32, i32* %i_chroma_format_idc, align 8, !tbaa !41
  %tobool79 = icmp eq i32 %36, 0
  br i1 %tobool79, label %if.end105, label %cond.true80

cond.true80:                                      ; preds = %macroblock_cache_load_neighbours_deblock.exit
  %arrayidx83 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %34, i32 0, i32 37, i32 1
  %37 = load i8*, i8** %arrayidx83, align 4, !tbaa !46
  %add.ptr86 = getelementptr inbounds i8, i8* %37, i32 %mul85
  %add.ptr88 = getelementptr inbounds i8, i8* %add.ptr86, i32 %mul74
  br label %if.end105

if.end105:                                        ; preds = %cond.true80, %macroblock_cache_load_neighbours_deblock.exit
  %cond91 = phi i8* [ %add.ptr88, %cond.true80 ], [ null, %macroblock_cache_load_neighbours_deblock.exit ]
  %38 = load i8*, i8** %qp108, align 4, !tbaa !60
  %arrayidx109 = getelementptr inbounds i8, i8* %38, i32 %add.i
  %39 = load i8, i8* %arrayidx109, align 1, !tbaa !57
  %conv110 = sext i8 %39 to i32
  %40 = load i8*, i8** %chroma_qp_table, align 4, !tbaa !61
  %arrayidx111 = getelementptr inbounds i8, i8* %40, i32 %conv110
  %41 = load i8, i8* %arrayidx111, align 1, !tbaa !57
  %conv112 = zext i8 %41 to i32
  %42 = load i8*, i8** %partition, align 16, !tbaa !62
  %arrayidx114 = getelementptr inbounds i8, i8* %42, i32 %add.i
  %43 = load i8, i8* %arrayidx114, align 1, !tbaa !57
  %cmp116 = icmp eq i8 %43, 16
  br i1 %cmp116, label %land.lhs.true, label %lor.rhs123

land.lhs.true:                                    ; preds = %if.end105
  %44 = load i16*, i16** %cbp, align 8, !tbaa !63
  %arrayidx119 = getelementptr inbounds i16, i16* %44, i32 %add.i
  %45 = load i16, i16* %arrayidx119, align 2, !tbaa !64
  %tobool120 = icmp ne i16 %45, 0
  %or.cond = or i1 %switch, %tobool120
  br i1 %or.cond, label %lor.rhs123, label %lor.end126

lor.rhs123:                                       ; preds = %land.lhs.true, %if.end105
  %cmp124 = icmp sge i32 %sub12, %conv110
  br label %lor.end126

lor.end126:                                       ; preds = %land.lhs.true, %lor.rhs123
  %46 = phi i1 [ %cmp124, %lor.rhs123 ], [ true, %land.lhs.true ]
  %and129 = and i32 %27, 1
  %tobool130 = icmp eq i32 %and129, 0
  br i1 %tobool130, label %if.end584, label %if.else375

if.else375:                                       ; preds = %lor.end126
  %arrayidx381 = getelementptr inbounds i8, i8* %38, i32 %sub14.i
  %47 = load i8, i8* %arrayidx381, align 1, !tbaa !57
  %conv382 = sext i8 %47 to i32
  %add383 = add nsw i32 %conv110, 1
  %add384 = add nsw i32 %add383, %conv382
  %shr385 = ashr i32 %add384, 1
  %arrayidx387 = getelementptr inbounds i8, i8* %40, i32 %conv382
  %48 = load i8, i8* %arrayidx387, align 1, !tbaa !57
  %conv388 = zext i8 %48 to i32
  %add389 = add nuw nsw i32 %conv112, 1
  %add390 = add nuw nsw i32 %add389, %conv388
  %49 = lshr i32 %add390, 1
  %arrayidx397 = getelementptr inbounds i8, i8* %30, i32 %sub14.i
  %50 = load i8, i8* %arrayidx397, align 1, !tbaa !57
  %switch2135 = icmp ult i8 %50, 4
  %51 = or i1 %switch, %switch2135
  %mb_info = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %34, i32 0, i32 102
  %52 = load i8*, i8** %mb_info, align 4, !tbaa !66
  %tobool439 = icmp eq i8* %52, null
  br i1 %tobool439, label %if.end481, label %land.lhs.true440

land.lhs.true440:                                 ; preds = %if.else375
  %i = bitcast [8 x [4 x i8]]* %arraydecay69 to i32*
  %53 = load i32, i32* %i, align 4, !tbaa !57
  %tobool444 = icmp eq i32 %53, 0
  br i1 %tobool444, label %if.end481, label %if.then445

if.then445:                                       ; preds = %land.lhs.true440
  %arrayidx448 = getelementptr inbounds i8, i8* %52, i32 %add.i
  %54 = load i8, i8* %arrayidx448, align 1, !tbaa !57
  %55 = and i8 %54, 1
  %narrow2128 = sub nsw i8 0, %55
  %effective_qp = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %34, i32 0, i32 57
  %56 = load i8*, i8** %effective_qp, align 8, !tbaa !70
  %arrayidx455 = getelementptr inbounds i8, i8* %56, i32 %add.i
  %57 = load i8, i8* %arrayidx455, align 1, !tbaa !57
  %or2129 = or i8 %57, %narrow2128
  store i8 %or2129, i8* %arrayidx455, align 1, !tbaa !57
  %58 = load %struct.x264_frame*, %struct.x264_frame** %fdec, align 4, !tbaa !39
  %mb_info459 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %58, i32 0, i32 102
  %59 = load i8*, i8** %mb_info459, align 4, !tbaa !66
  %60 = load i32, i32* %arrayidx.i, align 4, !tbaa !40
  %arrayidx463 = getelementptr inbounds i8, i8* %59, i32 %60
  %61 = load i8, i8* %arrayidx463, align 1, !tbaa !57
  %62 = and i8 %61, 1
  %narrow2130 = sub nsw i8 0, %62
  %effective_qp473 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %58, i32 0, i32 57
  %63 = load i8*, i8** %effective_qp473, align 8, !tbaa !70
  %arrayidx477 = getelementptr inbounds i8, i8* %63, i32 %60
  %64 = load i8, i8* %arrayidx477, align 1, !tbaa !57
  %or4792131 = or i8 %64, %narrow2130
  store i8 %or4792131, i8* %arrayidx477, align 1, !tbaa !57
  br label %if.end481

if.end481:                                        ; preds = %land.lhs.true440, %if.else375, %if.then445
  br i1 %51, label %do.body, label %do.body532

do.body:                                          ; preds = %if.end481
  %add.i2143 = add nsw i32 %shr385, %0
  %add1.i2144 = add nsw i32 %shr385, %1
  %65 = add i32 %add.i2143, -16
  %tobool.i2145 = icmp ult i32 %65, 48
  %66 = add i32 %add1.i2144, -16
  %tobool7.i2146 = icmp ult i32 %66, 48
  %or.cond.i2147 = and i1 %tobool.i2145, %tobool7.i2146
  br i1 %or.cond.i2147, label %if.end.i2154, label %deblock_edge_intra.exit

if.end.i2154:                                     ; preds = %do.body
  %67 = load void (i8*, i32, i32, i32)*, void (i8*, i32, i32, i32)** %arrayidx489, align 8, !tbaa !46
  %add3.i2148 = add nuw nsw i32 %add1.i2144, 24
  %add2.i2149 = add nuw nsw i32 %add.i2143, 24
  %arrayidx4.i2150 = getelementptr inbounds [88 x i8], [88 x i8]* @i_beta_table, i32 0, i32 %add3.i2148
  %68 = load i8, i8* %arrayidx4.i2150, align 1, !tbaa !57
  %conv5.i2151 = zext i8 %68 to i32
  %arrayidx.i2152 = getelementptr inbounds [88 x i8], [88 x i8]* @i_alpha_table, i32 0, i32 %add2.i2149
  %69 = load i8, i8* %arrayidx.i2152, align 1, !tbaa !57
  %conv.i2153 = zext i8 %69 to i32
  call void %67(i8* %add.ptr75, i32 %6, i32 %conv.i2153, i32 %conv5.i2151) #5
  br label %deblock_edge_intra.exit

deblock_edge_intra.exit:                          ; preds = %do.body, %if.end.i2154
  br i1 %cmp20, label %if.then492, label %if.else508

if.then492:                                       ; preds = %deblock_edge_intra.exit
  %add.i2155 = add nsw i32 %49, %0
  %add1.i2156 = add nsw i32 %49, %1
  %70 = add i32 %add.i2155, -16
  %tobool.i2157 = icmp ult i32 %70, 48
  %71 = add i32 %add1.i2156, -16
  %tobool7.i2158 = icmp ult i32 %71, 48
  %or.cond.i2159 = and i1 %tobool.i2157, %tobool7.i2158
  br i1 %or.cond.i2159, label %if.end.i2179, label %if.end584

if.end.i2179:                                     ; preds = %if.then492
  %72 = load void (i8*, i32, i32, i32)*, void (i8*, i32, i32, i32)** %arrayidx489, align 8, !tbaa !46
  %add3.i2160 = add nuw nsw i32 %add1.i2156, 24
  %add2.i2161 = add nuw nsw i32 %add.i2155, 24
  %arrayidx4.i2162 = getelementptr inbounds [88 x i8], [88 x i8]* @i_beta_table, i32 0, i32 %add3.i2160
  %73 = load i8, i8* %arrayidx4.i2162, align 1, !tbaa !57
  %conv5.i2163 = zext i8 %73 to i32
  %arrayidx.i2164 = getelementptr inbounds [88 x i8], [88 x i8]* @i_alpha_table, i32 0, i32 %add2.i2161
  %74 = load i8, i8* %arrayidx.i2164, align 1, !tbaa !57
  %conv.i2165 = zext i8 %74 to i32
  call void %72(i8* %cond91, i32 %7, i32 %conv.i2165, i32 %conv5.i2163) #5
  %add.ptr5003331 = getelementptr inbounds i8, i8* %cond91, i32 %cond29
  %75 = load void (i8*, i32, i32, i32)*, void (i8*, i32, i32, i32)** %arrayidx489, align 8, !tbaa !46
  call void %75(i8* %add.ptr5003331, i32 %7, i32 %conv.i2165, i32 %conv5.i2163) #5
  br label %if.end584

if.else508:                                       ; preds = %deblock_edge_intra.exit
  switch i32 %8, label %if.end584 [
    i32 1, label %if.then511
    i32 2, label %if.then522
  ]

if.then511:                                       ; preds = %if.else508
  %add.i2181 = add nsw i32 %49, %0
  %add1.i2182 = add nsw i32 %49, %1
  %76 = add i32 %add.i2181, -16
  %tobool.i2183 = icmp ult i32 %76, 48
  %77 = add i32 %add1.i2182, -16
  %tobool7.i2184 = icmp ult i32 %77, 48
  %or.cond.i2185 = and i1 %tobool.i2183, %tobool7.i2184
  br i1 %or.cond.i2185, label %if.end.i2192, label %if.end584

if.end.i2192:                                     ; preds = %if.then511
  %78 = load void (i8*, i32, i32, i32)*, void (i8*, i32, i32, i32)** %arrayidx529, align 8, !tbaa !46
  %add3.i2186 = add nuw nsw i32 %add1.i2182, 24
  %add2.i2187 = add nuw nsw i32 %add.i2181, 24
  %arrayidx4.i2188 = getelementptr inbounds [88 x i8], [88 x i8]* @i_beta_table, i32 0, i32 %add3.i2186
  %79 = load i8, i8* %arrayidx4.i2188, align 1, !tbaa !57
  %conv5.i2189 = zext i8 %79 to i32
  %arrayidx.i2190 = getelementptr inbounds [88 x i8], [88 x i8]* @i_alpha_table, i32 0, i32 %add2.i2187
  %80 = load i8, i8* %arrayidx.i2190, align 1, !tbaa !57
  %conv.i2191 = zext i8 %80 to i32
  call void %78(i8* %cond91, i32 %7, i32 %conv.i2191, i32 %conv5.i2189) #5
  br label %if.end584

if.then522:                                       ; preds = %if.else508
  %add.i2194 = add nsw i32 %49, %0
  %add1.i2195 = add nsw i32 %49, %1
  %81 = add i32 %add.i2194, -16
  %tobool.i2196 = icmp ult i32 %81, 48
  %82 = add i32 %add1.i2195, -16
  %tobool7.i2197 = icmp ult i32 %82, 48
  %or.cond.i2198 = and i1 %tobool.i2196, %tobool7.i2197
  br i1 %or.cond.i2198, label %if.end.i2205, label %if.end584

if.end.i2205:                                     ; preds = %if.then522
  %83 = load void (i8*, i32, i32, i32)*, void (i8*, i32, i32, i32)** %arrayidx529, align 8, !tbaa !46
  %add3.i2199 = add nuw nsw i32 %add1.i2195, 24
  %add2.i2200 = add nuw nsw i32 %add.i2194, 24
  %arrayidx4.i2201 = getelementptr inbounds [88 x i8], [88 x i8]* @i_beta_table, i32 0, i32 %add3.i2199
  %84 = load i8, i8* %arrayidx4.i2201, align 1, !tbaa !57
  %conv5.i2202 = zext i8 %84 to i32
  %arrayidx.i2203 = getelementptr inbounds [88 x i8], [88 x i8]* @i_alpha_table, i32 0, i32 %add2.i2200
  %85 = load i8, i8* %arrayidx.i2203, align 1, !tbaa !57
  %conv.i2204 = zext i8 %85 to i32
  call void %83(i8* %cond91, i32 %7, i32 %conv.i2204, i32 %conv5.i2202) #5
  br label %if.end584

do.body532:                                       ; preds = %if.end481
  %86 = load void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)** %arrayidx538, align 8, !tbaa !46
  %add.i2208 = add nsw i32 %shr385, %0
  %add1.i2209 = add nsw i32 %shr385, %1
  %add2.i2210 = add nsw i32 %add.i2208, 24
  %arrayidx.i2211 = getelementptr inbounds [88 x i8], [88 x i8]* @i_alpha_table, i32 0, i32 %add2.i2210
  %87 = load i8, i8* %arrayidx.i2211, align 1, !tbaa !57
  %add3.i2212 = add nsw i32 %add1.i2209, 24
  %arrayidx4.i2213 = getelementptr inbounds [88 x i8], [88 x i8]* @i_beta_table, i32 0, i32 %add3.i2212
  %88 = load i8, i8* %arrayidx4.i2213, align 1, !tbaa !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #5
  %i.i2214 = bitcast [8 x [4 x i8]]* %arraydecay69 to i32*
  %89 = load i32, i32* %i.i2214, align 4, !tbaa !57
  %tobool.i2215 = icmp ne i32 %89, 0
  %90 = add i32 %add.i2208, -16
  %tobool7.i2216 = icmp ult i32 %90, 48
  %or.cond.i2217 = and i1 %tobool7.i2216, %tobool.i2215
  %91 = add i32 %add1.i2209, -16
  %tobool9.i2218 = icmp ult i32 %91, 48
  %or.cond52.i2219 = and i1 %tobool9.i2218, %or.cond.i2217
  br i1 %or.cond52.i2219, label %if.end.i2236, label %deblock_edge.exit2237

if.end.i2236:                                     ; preds = %do.body532
  %conv5.i2220 = zext i8 %88 to i32
  %conv.i2221 = zext i8 %87 to i32
  %idxprom.i2222 = and i32 %89, 255
  %arrayidx13.i2223 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2210, i32 %idxprom.i2222
  %92 = load i8, i8* %arrayidx13.i2223, align 1, !tbaa !57
  store i8 %92, i8* %15, align 4, !tbaa !57
  %arrayidx20.i2224 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 0, i32 0, i32 1
  %93 = load i8, i8* %arrayidx20.i2224, align 1, !tbaa !57
  %idxprom21.i2225 = zext i8 %93 to i32
  %arrayidx22.i2226 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2210, i32 %idxprom21.i2225
  %94 = load i8, i8* %arrayidx22.i2226, align 1, !tbaa !57
  store i8 %94, i8* %arrayidx27.i2227, align 1, !tbaa !57
  %arrayidx30.i2228 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 0, i32 0, i32 2
  %95 = load i8, i8* %arrayidx30.i2228, align 1, !tbaa !57
  %idxprom31.i2229 = zext i8 %95 to i32
  %arrayidx32.i2230 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2210, i32 %idxprom31.i2229
  %96 = load i8, i8* %arrayidx32.i2230, align 1, !tbaa !57
  store i8 %96, i8* %arrayidx37.i2231, align 2, !tbaa !57
  %arrayidx40.i2232 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 0, i32 0, i32 3
  %97 = load i8, i8* %arrayidx40.i2232, align 1, !tbaa !57
  %idxprom41.i2233 = zext i8 %97 to i32
  %arrayidx42.i2234 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2210, i32 %idxprom41.i2233
  %98 = load i8, i8* %arrayidx42.i2234, align 1, !tbaa !57
  store i8 %98, i8* %arrayidx47.i2235, align 1, !tbaa !57
  call void %86(i8* %add.ptr75, i32 %6, i32 %conv.i2221, i32 %conv5.i2220, i8* nonnull %15) #5
  br label %deblock_edge.exit2237

deblock_edge.exit2237:                            ; preds = %do.body532, %if.end.i2236
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #5
  br i1 %cmp20, label %if.then541, label %if.else557

if.then541:                                       ; preds = %deblock_edge.exit2237
  %99 = load void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)** %arrayidx538, align 8, !tbaa !46
  %add.i2239 = add nsw i32 %49, %0
  %add1.i2240 = add nsw i32 %49, %1
  %add2.i2241 = add nsw i32 %add.i2239, 24
  %arrayidx.i2242 = getelementptr inbounds [88 x i8], [88 x i8]* @i_alpha_table, i32 0, i32 %add2.i2241
  %100 = load i8, i8* %arrayidx.i2242, align 1, !tbaa !57
  %add3.i2243 = add nsw i32 %add1.i2240, 24
  %arrayidx4.i2244 = getelementptr inbounds [88 x i8], [88 x i8]* @i_beta_table, i32 0, i32 %add3.i2243
  %101 = load i8, i8* %arrayidx4.i2244, align 1, !tbaa !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #5
  %102 = load i32, i32* %i.i2214, align 4, !tbaa !57
  %tobool.i2246 = icmp ne i32 %102, 0
  %103 = add i32 %add.i2239, -16
  %tobool7.i2247 = icmp ult i32 %103, 48
  %or.cond.i2248 = and i1 %tobool7.i2247, %tobool.i2246
  %104 = add i32 %add1.i2240, -16
  %tobool9.i2249 = icmp ult i32 %104, 48
  %or.cond52.i2250 = and i1 %tobool9.i2249, %or.cond.i2248
  br i1 %or.cond52.i2250, label %if.end.i2267, label %deblock_edge.exit2268

if.end.i2267:                                     ; preds = %if.then541
  %conv5.i2251 = zext i8 %101 to i32
  %conv.i2252 = zext i8 %100 to i32
  %idxprom.i2253 = and i32 %102, 255
  %arrayidx13.i2254 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2241, i32 %idxprom.i2253
  %105 = load i8, i8* %arrayidx13.i2254, align 1, !tbaa !57
  store i8 %105, i8* %15, align 4, !tbaa !57
  %arrayidx20.i2255 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 0, i32 0, i32 1
  %106 = load i8, i8* %arrayidx20.i2255, align 1, !tbaa !57
  %idxprom21.i2256 = zext i8 %106 to i32
  %arrayidx22.i2257 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2241, i32 %idxprom21.i2256
  %107 = load i8, i8* %arrayidx22.i2257, align 1, !tbaa !57
  store i8 %107, i8* %arrayidx27.i2227, align 1, !tbaa !57
  %arrayidx30.i2259 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 0, i32 0, i32 2
  %108 = load i8, i8* %arrayidx30.i2259, align 1, !tbaa !57
  %idxprom31.i2260 = zext i8 %108 to i32
  %arrayidx32.i2261 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2241, i32 %idxprom31.i2260
  %109 = load i8, i8* %arrayidx32.i2261, align 1, !tbaa !57
  store i8 %109, i8* %arrayidx37.i2231, align 2, !tbaa !57
  %arrayidx40.i2263 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 0, i32 0, i32 3
  %110 = load i8, i8* %arrayidx40.i2263, align 1, !tbaa !57
  %idxprom41.i2264 = zext i8 %110 to i32
  %arrayidx42.i2265 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2241, i32 %idxprom41.i2264
  %111 = load i8, i8* %arrayidx42.i2265, align 1, !tbaa !57
  store i8 %111, i8* %arrayidx47.i2235, align 1, !tbaa !57
  call void %99(i8* %cond91, i32 %7, i32 %conv.i2252, i32 %conv5.i2251, i8* nonnull %15) #5
  %.pre3339 = load void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)** %arrayidx538, align 8, !tbaa !46
  br label %deblock_edge.exit2268

deblock_edge.exit2268:                            ; preds = %if.then541, %if.end.i2267
  %112 = phi void (i8*, i32, i32, i32, i8*)* [ %99, %if.then541 ], [ %.pre3339, %if.end.i2267 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #5
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #5
  %113 = load i32, i32* %i.i2214, align 4, !tbaa !57
  %tobool.i2277 = icmp ne i32 %113, 0
  %or.cond.i2279 = and i1 %tobool7.i2247, %tobool.i2277
  %or.cond52.i2281 = and i1 %tobool9.i2249, %or.cond.i2279
  br i1 %or.cond52.i2281, label %if.end.i2298, label %deblock_edge.exit2299

if.end.i2298:                                     ; preds = %deblock_edge.exit2268
  %add.ptr549 = getelementptr inbounds i8, i8* %cond91, i32 %cond29
  %conv5.i2282 = zext i8 %101 to i32
  %conv.i2283 = zext i8 %100 to i32
  %idxprom.i2284 = and i32 %113, 255
  %arrayidx13.i2285 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2241, i32 %idxprom.i2284
  %114 = load i8, i8* %arrayidx13.i2285, align 1, !tbaa !57
  store i8 %114, i8* %15, align 4, !tbaa !57
  %arrayidx20.i2286 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 0, i32 0, i32 1
  %115 = load i8, i8* %arrayidx20.i2286, align 1, !tbaa !57
  %idxprom21.i2287 = zext i8 %115 to i32
  %arrayidx22.i2288 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2241, i32 %idxprom21.i2287
  %116 = load i8, i8* %arrayidx22.i2288, align 1, !tbaa !57
  store i8 %116, i8* %arrayidx27.i2227, align 1, !tbaa !57
  %arrayidx30.i2290 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 0, i32 0, i32 2
  %117 = load i8, i8* %arrayidx30.i2290, align 1, !tbaa !57
  %idxprom31.i2291 = zext i8 %117 to i32
  %arrayidx32.i2292 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2241, i32 %idxprom31.i2291
  %118 = load i8, i8* %arrayidx32.i2292, align 1, !tbaa !57
  store i8 %118, i8* %arrayidx37.i2231, align 2, !tbaa !57
  %arrayidx40.i2294 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 0, i32 0, i32 3
  %119 = load i8, i8* %arrayidx40.i2294, align 1, !tbaa !57
  %idxprom41.i2295 = zext i8 %119 to i32
  %arrayidx42.i2296 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2241, i32 %idxprom41.i2295
  %120 = load i8, i8* %arrayidx42.i2296, align 1, !tbaa !57
  store i8 %120, i8* %arrayidx47.i2235, align 1, !tbaa !57
  call void %112(i8* %add.ptr549, i32 %7, i32 %conv.i2283, i32 %conv5.i2282, i8* nonnull %15) #5
  br label %deblock_edge.exit2299

deblock_edge.exit2299:                            ; preds = %deblock_edge.exit2268, %if.end.i2298
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #5
  br label %if.end584

if.else557:                                       ; preds = %deblock_edge.exit2237
  switch i32 %8, label %if.end584 [
    i32 1, label %if.then560
    i32 2, label %if.then571
  ]

if.then560:                                       ; preds = %if.else557
  %121 = load void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)** %arrayidx578, align 8, !tbaa !46
  %add.i2301 = add nsw i32 %49, %0
  %add1.i2302 = add nsw i32 %49, %1
  %add2.i2303 = add nsw i32 %add.i2301, 24
  %arrayidx.i2304 = getelementptr inbounds [88 x i8], [88 x i8]* @i_alpha_table, i32 0, i32 %add2.i2303
  %122 = load i8, i8* %arrayidx.i2304, align 1, !tbaa !57
  %add3.i2305 = add nsw i32 %add1.i2302, 24
  %arrayidx4.i2306 = getelementptr inbounds [88 x i8], [88 x i8]* @i_beta_table, i32 0, i32 %add3.i2305
  %123 = load i8, i8* %arrayidx4.i2306, align 1, !tbaa !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #5
  %124 = load i32, i32* %i.i2214, align 4, !tbaa !57
  %tobool.i2308 = icmp ne i32 %124, 0
  %125 = add i32 %add.i2301, -16
  %tobool7.i2309 = icmp ult i32 %125, 48
  %or.cond.i2310 = and i1 %tobool7.i2309, %tobool.i2308
  %126 = add i32 %add1.i2302, -16
  %tobool9.i2311 = icmp ult i32 %126, 48
  %or.cond52.i2312 = and i1 %tobool9.i2311, %or.cond.i2310
  br i1 %or.cond52.i2312, label %if.end.i2333, label %deblock_edge.exit2334

if.end.i2333:                                     ; preds = %if.then560
  %conv5.i2313 = zext i8 %123 to i32
  %conv.i2314 = zext i8 %122 to i32
  %idxprom.i2315 = and i32 %124, 255
  %arrayidx13.i2316 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2303, i32 %idxprom.i2315
  %127 = load i8, i8* %arrayidx13.i2316, align 1, !tbaa !57
  %conv16.i2317 = add i8 %127, 1
  store i8 %conv16.i2317, i8* %15, align 4, !tbaa !57
  %arrayidx20.i2318 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 0, i32 0, i32 1
  %128 = load i8, i8* %arrayidx20.i2318, align 1, !tbaa !57
  %idxprom21.i2319 = zext i8 %128 to i32
  %arrayidx22.i2320 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2303, i32 %idxprom21.i2319
  %129 = load i8, i8* %arrayidx22.i2320, align 1, !tbaa !57
  %conv26.i2321 = add i8 %129, 1
  store i8 %conv26.i2321, i8* %arrayidx27.i2227, align 1, !tbaa !57
  %arrayidx30.i2323 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 0, i32 0, i32 2
  %130 = load i8, i8* %arrayidx30.i2323, align 1, !tbaa !57
  %idxprom31.i2324 = zext i8 %130 to i32
  %arrayidx32.i2325 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2303, i32 %idxprom31.i2324
  %131 = load i8, i8* %arrayidx32.i2325, align 1, !tbaa !57
  %conv36.i2326 = add i8 %131, 1
  store i8 %conv36.i2326, i8* %arrayidx37.i2231, align 2, !tbaa !57
  %arrayidx40.i2328 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 0, i32 0, i32 3
  %132 = load i8, i8* %arrayidx40.i2328, align 1, !tbaa !57
  %idxprom41.i2329 = zext i8 %132 to i32
  %arrayidx42.i2330 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2303, i32 %idxprom41.i2329
  %133 = load i8, i8* %arrayidx42.i2330, align 1, !tbaa !57
  %conv46.i2331 = add i8 %133, 1
  store i8 %conv46.i2331, i8* %arrayidx47.i2235, align 1, !tbaa !57
  call void %121(i8* %cond91, i32 %7, i32 %conv.i2314, i32 %conv5.i2313, i8* nonnull %15) #5
  br label %deblock_edge.exit2334

deblock_edge.exit2334:                            ; preds = %if.then560, %if.end.i2333
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #5
  br label %if.end584

if.then571:                                       ; preds = %if.else557
  %134 = load void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)** %arrayidx578, align 8, !tbaa !46
  %add.i2336 = add nsw i32 %49, %0
  %add1.i2337 = add nsw i32 %49, %1
  %add2.i2338 = add nsw i32 %add.i2336, 24
  %arrayidx.i2339 = getelementptr inbounds [88 x i8], [88 x i8]* @i_alpha_table, i32 0, i32 %add2.i2338
  %135 = load i8, i8* %arrayidx.i2339, align 1, !tbaa !57
  %add3.i2340 = add nsw i32 %add1.i2337, 24
  %arrayidx4.i2341 = getelementptr inbounds [88 x i8], [88 x i8]* @i_beta_table, i32 0, i32 %add3.i2340
  %136 = load i8, i8* %arrayidx4.i2341, align 1, !tbaa !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #5
  %137 = load i32, i32* %i.i2214, align 4, !tbaa !57
  %tobool.i2343 = icmp ne i32 %137, 0
  %138 = add i32 %add.i2336, -16
  %tobool7.i2344 = icmp ult i32 %138, 48
  %or.cond.i2345 = and i1 %tobool7.i2344, %tobool.i2343
  %139 = add i32 %add1.i2337, -16
  %tobool9.i2346 = icmp ult i32 %139, 48
  %or.cond52.i2347 = and i1 %tobool9.i2346, %or.cond.i2345
  br i1 %or.cond52.i2347, label %if.end.i2368, label %deblock_edge.exit2369

if.end.i2368:                                     ; preds = %if.then571
  %conv5.i2348 = zext i8 %136 to i32
  %conv.i2349 = zext i8 %135 to i32
  %idxprom.i2350 = and i32 %137, 255
  %arrayidx13.i2351 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2338, i32 %idxprom.i2350
  %140 = load i8, i8* %arrayidx13.i2351, align 1, !tbaa !57
  %conv16.i2352 = add i8 %140, 1
  store i8 %conv16.i2352, i8* %15, align 4, !tbaa !57
  %arrayidx20.i2353 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 0, i32 0, i32 1
  %141 = load i8, i8* %arrayidx20.i2353, align 1, !tbaa !57
  %idxprom21.i2354 = zext i8 %141 to i32
  %arrayidx22.i2355 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2338, i32 %idxprom21.i2354
  %142 = load i8, i8* %arrayidx22.i2355, align 1, !tbaa !57
  %conv26.i2356 = add i8 %142, 1
  store i8 %conv26.i2356, i8* %arrayidx27.i2227, align 1, !tbaa !57
  %arrayidx30.i2358 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 0, i32 0, i32 2
  %143 = load i8, i8* %arrayidx30.i2358, align 1, !tbaa !57
  %idxprom31.i2359 = zext i8 %143 to i32
  %arrayidx32.i2360 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2338, i32 %idxprom31.i2359
  %144 = load i8, i8* %arrayidx32.i2360, align 1, !tbaa !57
  %conv36.i2361 = add i8 %144, 1
  store i8 %conv36.i2361, i8* %arrayidx37.i2231, align 2, !tbaa !57
  %arrayidx40.i2363 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 0, i32 0, i32 3
  %145 = load i8, i8* %arrayidx40.i2363, align 1, !tbaa !57
  %idxprom41.i2364 = zext i8 %145 to i32
  %arrayidx42.i2365 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2338, i32 %idxprom41.i2364
  %146 = load i8, i8* %arrayidx42.i2365, align 1, !tbaa !57
  %conv46.i2366 = add i8 %146, 1
  store i8 %conv46.i2366, i8* %arrayidx47.i2235, align 1, !tbaa !57
  call void %134(i8* %cond91, i32 %7, i32 %conv.i2349, i32 %conv5.i2348, i8* nonnull %15) #5
  br label %deblock_edge.exit2369

deblock_edge.exit2369:                            ; preds = %if.then571, %if.end.i2368
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #5
  br label %if.end584

if.end584:                                        ; preds = %if.then492, %deblock_edge.exit2299, %deblock_edge.exit2334, %if.end.i2205, %if.then522, %if.end.i2179, %if.then511, %if.end.i2192, %deblock_edge.exit2369, %if.else508, %if.else557, %lor.end126
  br i1 %46, label %if.end753, label %do.body587

do.body587:                                       ; preds = %if.end584
  %tobool588 = icmp ne i8 %29, 0
  br i1 %tobool588, label %do.body587.if.end629_crit_edge, label %if.then589

do.body587.if.end629_crit_edge:                   ; preds = %do.body587
  %.pre3347 = add nsw i32 %0, %conv110
  %.pre3348 = add nsw i32 %1, %conv110
  %.pre3349 = add nsw i32 %.pre3347, 24
  %.pre3350 = add nsw i32 %.pre3348, 24
  %.pre3351 = add i32 %.pre3347, -16
  %.pre3352 = add i32 %.pre3348, -16
  br label %if.end629

if.then589:                                       ; preds = %do.body587
  %arraydecay593 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 0, i32 1, i32 0
  %147 = load void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)** %arrayidx538, align 8, !tbaa !46
  %add.i2371 = add nsw i32 %0, %conv110
  %add1.i2372 = add nsw i32 %1, %conv110
  %add2.i2373 = add nsw i32 %add.i2371, 24
  %arrayidx.i2374 = getelementptr inbounds [88 x i8], [88 x i8]* @i_alpha_table, i32 0, i32 %add2.i2373
  %148 = load i8, i8* %arrayidx.i2374, align 1, !tbaa !57
  %add3.i2375 = add nsw i32 %add1.i2372, 24
  %arrayidx4.i2376 = getelementptr inbounds [88 x i8], [88 x i8]* @i_beta_table, i32 0, i32 %add3.i2375
  %149 = load i8, i8* %arrayidx4.i2376, align 1, !tbaa !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #5
  %i.i2377 = bitcast i8* %arraydecay593 to i32*
  %150 = load i32, i32* %i.i2377, align 4, !tbaa !57
  %tobool.i2378 = icmp ne i32 %150, 0
  %151 = add i32 %add.i2371, -16
  %tobool7.i2379 = icmp ult i32 %151, 48
  %or.cond.i2380 = and i1 %tobool7.i2379, %tobool.i2378
  %152 = add i32 %add1.i2372, -16
  %tobool9.i2381 = icmp ult i32 %152, 48
  %or.cond52.i2382 = and i1 %tobool9.i2381, %or.cond.i2380
  br i1 %or.cond52.i2382, label %if.end.i2399, label %deblock_edge.exit2400

if.end.i2399:                                     ; preds = %if.then589
  %add.ptr590 = getelementptr inbounds i8, i8* %add.ptr75, i32 4
  %conv5.i2383 = zext i8 %149 to i32
  %conv.i2384 = zext i8 %148 to i32
  %idxprom.i2385 = and i32 %150, 255
  %arrayidx13.i2386 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2373, i32 %idxprom.i2385
  %153 = load i8, i8* %arrayidx13.i2386, align 1, !tbaa !57
  store i8 %153, i8* %15, align 4, !tbaa !57
  %arrayidx20.i2387 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 0, i32 1, i32 1
  %154 = load i8, i8* %arrayidx20.i2387, align 1, !tbaa !57
  %idxprom21.i2388 = zext i8 %154 to i32
  %arrayidx22.i2389 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2373, i32 %idxprom21.i2388
  %155 = load i8, i8* %arrayidx22.i2389, align 1, !tbaa !57
  store i8 %155, i8* %arrayidx27.i2227, align 1, !tbaa !57
  %arrayidx30.i2391 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 0, i32 1, i32 2
  %156 = load i8, i8* %arrayidx30.i2391, align 1, !tbaa !57
  %idxprom31.i2392 = zext i8 %156 to i32
  %arrayidx32.i2393 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2373, i32 %idxprom31.i2392
  %157 = load i8, i8* %arrayidx32.i2393, align 1, !tbaa !57
  store i8 %157, i8* %arrayidx37.i2231, align 2, !tbaa !57
  %arrayidx40.i2395 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 0, i32 1, i32 3
  %158 = load i8, i8* %arrayidx40.i2395, align 1, !tbaa !57
  %idxprom41.i2396 = zext i8 %158 to i32
  %arrayidx42.i2397 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2373, i32 %idxprom41.i2396
  %159 = load i8, i8* %arrayidx42.i2397, align 1, !tbaa !57
  store i8 %159, i8* %arrayidx47.i2235, align 1, !tbaa !57
  call void %147(i8* nonnull %add.ptr590, i32 %6, i32 %conv.i2384, i32 %conv5.i2383, i8* nonnull %15) #5
  br label %deblock_edge.exit2400

deblock_edge.exit2400:                            ; preds = %if.then589, %if.end.i2399
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #5
  br i1 %cmp20, label %if.then599, label %if.end629

if.then599:                                       ; preds = %deblock_edge.exit2400
  %160 = load void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)** %arrayidx538, align 8, !tbaa !46
  %add.i2402 = add nsw i32 %0, %conv112
  %add1.i2403 = add nsw i32 %1, %conv112
  %add2.i2404 = add nsw i32 %add.i2402, 24
  %arrayidx.i2405 = getelementptr inbounds [88 x i8], [88 x i8]* @i_alpha_table, i32 0, i32 %add2.i2404
  %161 = load i8, i8* %arrayidx.i2405, align 1, !tbaa !57
  %add3.i2406 = add nsw i32 %add1.i2403, 24
  %arrayidx4.i2407 = getelementptr inbounds [88 x i8], [88 x i8]* @i_beta_table, i32 0, i32 %add3.i2406
  %162 = load i8, i8* %arrayidx4.i2407, align 1, !tbaa !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #5
  %163 = load i32, i32* %i.i2377, align 4, !tbaa !57
  %tobool.i2409 = icmp ne i32 %163, 0
  %164 = add i32 %add.i2402, -16
  %tobool7.i2410 = icmp ult i32 %164, 48
  %or.cond.i2411 = and i1 %tobool7.i2410, %tobool.i2409
  %165 = add i32 %add1.i2403, -16
  %tobool9.i2412 = icmp ult i32 %165, 48
  %or.cond52.i2413 = and i1 %tobool9.i2412, %or.cond.i2411
  br i1 %or.cond52.i2413, label %if.end.i2430, label %deblock_edge.exit2431

if.end.i2430:                                     ; preds = %if.then599
  %add.ptr600 = getelementptr inbounds i8, i8* %cond91, i32 4
  %conv5.i2414 = zext i8 %162 to i32
  %conv.i2415 = zext i8 %161 to i32
  %idxprom.i2416 = and i32 %163, 255
  %arrayidx13.i2417 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2404, i32 %idxprom.i2416
  %166 = load i8, i8* %arrayidx13.i2417, align 1, !tbaa !57
  store i8 %166, i8* %15, align 4, !tbaa !57
  %arrayidx20.i2418 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 0, i32 1, i32 1
  %167 = load i8, i8* %arrayidx20.i2418, align 1, !tbaa !57
  %idxprom21.i2419 = zext i8 %167 to i32
  %arrayidx22.i2420 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2404, i32 %idxprom21.i2419
  %168 = load i8, i8* %arrayidx22.i2420, align 1, !tbaa !57
  store i8 %168, i8* %arrayidx27.i2227, align 1, !tbaa !57
  %arrayidx30.i2422 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 0, i32 1, i32 2
  %169 = load i8, i8* %arrayidx30.i2422, align 1, !tbaa !57
  %idxprom31.i2423 = zext i8 %169 to i32
  %arrayidx32.i2424 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2404, i32 %idxprom31.i2423
  %170 = load i8, i8* %arrayidx32.i2424, align 1, !tbaa !57
  store i8 %170, i8* %arrayidx37.i2231, align 2, !tbaa !57
  %arrayidx40.i2426 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 0, i32 1, i32 3
  %171 = load i8, i8* %arrayidx40.i2426, align 1, !tbaa !57
  %idxprom41.i2427 = zext i8 %171 to i32
  %arrayidx42.i2428 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2404, i32 %idxprom41.i2427
  %172 = load i8, i8* %arrayidx42.i2428, align 1, !tbaa !57
  store i8 %172, i8* %arrayidx47.i2235, align 1, !tbaa !57
  call void %160(i8* nonnull %add.ptr600, i32 %7, i32 %conv.i2415, i32 %conv5.i2414, i8* nonnull %15) #5
  %.pre3340 = load void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)** %arrayidx538, align 8, !tbaa !46
  br label %deblock_edge.exit2431

deblock_edge.exit2431:                            ; preds = %if.then599, %if.end.i2430
  %173 = phi void (i8*, i32, i32, i32, i8*)* [ %160, %if.then599 ], [ %.pre3340, %if.end.i2430 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #5
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #5
  %174 = load i32, i32* %i.i2377, align 4, !tbaa !57
  %tobool.i2440 = icmp ne i32 %174, 0
  %or.cond.i2442 = and i1 %tobool7.i2410, %tobool.i2440
  %or.cond52.i2444 = and i1 %tobool9.i2412, %or.cond.i2442
  br i1 %or.cond52.i2444, label %if.end.i2461, label %deblock_edge.exit2462

if.end.i2461:                                     ; preds = %deblock_edge.exit2431
  %add.ptr607 = getelementptr inbounds i8, i8* %cond91, i32 %cond29
  %add.ptr608 = getelementptr inbounds i8, i8* %add.ptr607, i32 4
  %conv5.i2445 = zext i8 %162 to i32
  %conv.i2446 = zext i8 %161 to i32
  %idxprom.i2447 = and i32 %174, 255
  %arrayidx13.i2448 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2404, i32 %idxprom.i2447
  %175 = load i8, i8* %arrayidx13.i2448, align 1, !tbaa !57
  store i8 %175, i8* %15, align 4, !tbaa !57
  %arrayidx20.i2449 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 0, i32 1, i32 1
  %176 = load i8, i8* %arrayidx20.i2449, align 1, !tbaa !57
  %idxprom21.i2450 = zext i8 %176 to i32
  %arrayidx22.i2451 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2404, i32 %idxprom21.i2450
  %177 = load i8, i8* %arrayidx22.i2451, align 1, !tbaa !57
  store i8 %177, i8* %arrayidx27.i2227, align 1, !tbaa !57
  %arrayidx30.i2453 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 0, i32 1, i32 2
  %178 = load i8, i8* %arrayidx30.i2453, align 1, !tbaa !57
  %idxprom31.i2454 = zext i8 %178 to i32
  %arrayidx32.i2455 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2404, i32 %idxprom31.i2454
  %179 = load i8, i8* %arrayidx32.i2455, align 1, !tbaa !57
  store i8 %179, i8* %arrayidx37.i2231, align 2, !tbaa !57
  %arrayidx40.i2457 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 0, i32 1, i32 3
  %180 = load i8, i8* %arrayidx40.i2457, align 1, !tbaa !57
  %idxprom41.i2458 = zext i8 %180 to i32
  %arrayidx42.i2459 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2404, i32 %idxprom41.i2458
  %181 = load i8, i8* %arrayidx42.i2459, align 1, !tbaa !57
  store i8 %181, i8* %arrayidx47.i2235, align 1, !tbaa !57
  call void %173(i8* nonnull %add.ptr608, i32 %7, i32 %conv.i2446, i32 %conv5.i2445, i8* nonnull %15) #5
  br label %deblock_edge.exit2462

deblock_edge.exit2462:                            ; preds = %deblock_edge.exit2431, %if.end.i2461
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #5
  br label %if.end629

if.end629:                                        ; preds = %do.body587.if.end629_crit_edge, %deblock_edge.exit2400, %deblock_edge.exit2462
  %.pre-phi3353 = phi i32 [ %.pre3352, %do.body587.if.end629_crit_edge ], [ %152, %deblock_edge.exit2400 ], [ %152, %deblock_edge.exit2462 ]
  %.pre-phi = phi i32 [ %.pre3351, %do.body587.if.end629_crit_edge ], [ %151, %deblock_edge.exit2400 ], [ %151, %deblock_edge.exit2462 ]
  %add3.i2468.pre-phi = phi i32 [ %.pre3350, %do.body587.if.end629_crit_edge ], [ %add3.i2375, %deblock_edge.exit2400 ], [ %add3.i2375, %deblock_edge.exit2462 ]
  %add2.i2466.pre-phi = phi i32 [ %.pre3349, %do.body587.if.end629_crit_edge ], [ %add2.i2373, %deblock_edge.exit2400 ], [ %add2.i2373, %deblock_edge.exit2462 ]
  %arraydecay648 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 0, i32 2, i32 0
  %182 = load void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)** %arrayidx538, align 8, !tbaa !46
  %arrayidx.i2467 = getelementptr inbounds [88 x i8], [88 x i8]* @i_alpha_table, i32 0, i32 %add2.i2466.pre-phi
  %183 = load i8, i8* %arrayidx.i2467, align 1, !tbaa !57
  %arrayidx4.i2469 = getelementptr inbounds [88 x i8], [88 x i8]* @i_beta_table, i32 0, i32 %add3.i2468.pre-phi
  %184 = load i8, i8* %arrayidx4.i2469, align 1, !tbaa !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #5
  %i.i2470 = bitcast i8* %arraydecay648 to i32*
  %185 = load i32, i32* %i.i2470, align 4, !tbaa !57
  %tobool.i2471 = icmp ne i32 %185, 0
  %tobool7.i2472 = icmp ult i32 %.pre-phi, 48
  %or.cond.i2473 = and i1 %tobool7.i2472, %tobool.i2471
  %tobool9.i2474 = icmp ult i32 %.pre-phi3353, 48
  %or.cond52.i2475 = and i1 %tobool9.i2474, %or.cond.i2473
  br i1 %or.cond52.i2475, label %if.end.i2492, label %deblock_edge.exit2493

if.end.i2492:                                     ; preds = %if.end629
  %add.ptr645 = getelementptr inbounds i8, i8* %add.ptr75, i32 8
  %conv5.i2476 = zext i8 %184 to i32
  %conv.i2477 = zext i8 %183 to i32
  %idxprom.i2478 = and i32 %185, 255
  %arrayidx13.i2479 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2466.pre-phi, i32 %idxprom.i2478
  %186 = load i8, i8* %arrayidx13.i2479, align 1, !tbaa !57
  store i8 %186, i8* %15, align 4, !tbaa !57
  %arrayidx20.i2480 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 0, i32 2, i32 1
  %187 = load i8, i8* %arrayidx20.i2480, align 1, !tbaa !57
  %idxprom21.i2481 = zext i8 %187 to i32
  %arrayidx22.i2482 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2466.pre-phi, i32 %idxprom21.i2481
  %188 = load i8, i8* %arrayidx22.i2482, align 1, !tbaa !57
  store i8 %188, i8* %arrayidx27.i2227, align 1, !tbaa !57
  %arrayidx30.i2484 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 0, i32 2, i32 2
  %189 = load i8, i8* %arrayidx30.i2484, align 1, !tbaa !57
  %idxprom31.i2485 = zext i8 %189 to i32
  %arrayidx32.i2486 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2466.pre-phi, i32 %idxprom31.i2485
  %190 = load i8, i8* %arrayidx32.i2486, align 1, !tbaa !57
  store i8 %190, i8* %arrayidx37.i2231, align 2, !tbaa !57
  %arrayidx40.i2488 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 0, i32 2, i32 3
  %191 = load i8, i8* %arrayidx40.i2488, align 1, !tbaa !57
  %idxprom41.i2489 = zext i8 %191 to i32
  %arrayidx42.i2490 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2466.pre-phi, i32 %idxprom41.i2489
  %192 = load i8, i8* %arrayidx42.i2490, align 1, !tbaa !57
  store i8 %192, i8* %arrayidx47.i2235, align 1, !tbaa !57
  call void %182(i8* nonnull %add.ptr645, i32 %6, i32 %conv.i2477, i32 %conv5.i2476, i8* nonnull %15) #5
  br label %deblock_edge.exit2493

deblock_edge.exit2493:                            ; preds = %if.end629, %if.end.i2492
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #5
  br i1 %cmp20, label %if.then654, label %if.else670

if.then654:                                       ; preds = %deblock_edge.exit2493
  %193 = load void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)** %arrayidx538, align 8, !tbaa !46
  %add.i2495 = add nsw i32 %0, %conv112
  %add1.i2496 = add nsw i32 %1, %conv112
  %add2.i2497 = add nsw i32 %add.i2495, 24
  %arrayidx.i2498 = getelementptr inbounds [88 x i8], [88 x i8]* @i_alpha_table, i32 0, i32 %add2.i2497
  %194 = load i8, i8* %arrayidx.i2498, align 1, !tbaa !57
  %add3.i2499 = add nsw i32 %add1.i2496, 24
  %arrayidx4.i2500 = getelementptr inbounds [88 x i8], [88 x i8]* @i_beta_table, i32 0, i32 %add3.i2499
  %195 = load i8, i8* %arrayidx4.i2500, align 1, !tbaa !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #5
  %196 = load i32, i32* %i.i2470, align 4, !tbaa !57
  %tobool.i2502 = icmp ne i32 %196, 0
  %197 = add i32 %add.i2495, -16
  %tobool7.i2503 = icmp ult i32 %197, 48
  %or.cond.i2504 = and i1 %tobool7.i2503, %tobool.i2502
  %198 = add i32 %add1.i2496, -16
  %tobool9.i2505 = icmp ult i32 %198, 48
  %or.cond52.i2506 = and i1 %tobool9.i2505, %or.cond.i2504
  br i1 %or.cond52.i2506, label %if.end.i2523, label %deblock_edge.exit2524

if.end.i2523:                                     ; preds = %if.then654
  %add.ptr655 = getelementptr inbounds i8, i8* %cond91, i32 8
  %conv5.i2507 = zext i8 %195 to i32
  %conv.i2508 = zext i8 %194 to i32
  %idxprom.i2509 = and i32 %196, 255
  %arrayidx13.i2510 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2497, i32 %idxprom.i2509
  %199 = load i8, i8* %arrayidx13.i2510, align 1, !tbaa !57
  store i8 %199, i8* %15, align 4, !tbaa !57
  %arrayidx20.i2511 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 0, i32 2, i32 1
  %200 = load i8, i8* %arrayidx20.i2511, align 1, !tbaa !57
  %idxprom21.i2512 = zext i8 %200 to i32
  %arrayidx22.i2513 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2497, i32 %idxprom21.i2512
  %201 = load i8, i8* %arrayidx22.i2513, align 1, !tbaa !57
  store i8 %201, i8* %arrayidx27.i2227, align 1, !tbaa !57
  %arrayidx30.i2515 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 0, i32 2, i32 2
  %202 = load i8, i8* %arrayidx30.i2515, align 1, !tbaa !57
  %idxprom31.i2516 = zext i8 %202 to i32
  %arrayidx32.i2517 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2497, i32 %idxprom31.i2516
  %203 = load i8, i8* %arrayidx32.i2517, align 1, !tbaa !57
  store i8 %203, i8* %arrayidx37.i2231, align 2, !tbaa !57
  %arrayidx40.i2519 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 0, i32 2, i32 3
  %204 = load i8, i8* %arrayidx40.i2519, align 1, !tbaa !57
  %idxprom41.i2520 = zext i8 %204 to i32
  %arrayidx42.i2521 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2497, i32 %idxprom41.i2520
  %205 = load i8, i8* %arrayidx42.i2521, align 1, !tbaa !57
  store i8 %205, i8* %arrayidx47.i2235, align 1, !tbaa !57
  call void %193(i8* nonnull %add.ptr655, i32 %7, i32 %conv.i2508, i32 %conv5.i2507, i8* nonnull %15) #5
  %.pre3341 = load void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)** %arrayidx538, align 8, !tbaa !46
  br label %deblock_edge.exit2524

deblock_edge.exit2524:                            ; preds = %if.then654, %if.end.i2523
  %206 = phi void (i8*, i32, i32, i32, i8*)* [ %193, %if.then654 ], [ %.pre3341, %if.end.i2523 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #5
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #5
  %207 = load i32, i32* %i.i2470, align 4, !tbaa !57
  %tobool.i2533 = icmp ne i32 %207, 0
  %or.cond.i2535 = and i1 %tobool7.i2503, %tobool.i2533
  %or.cond52.i2537 = and i1 %tobool9.i2505, %or.cond.i2535
  br i1 %or.cond52.i2537, label %if.end.i2554, label %deblock_edge.exit2555

if.end.i2554:                                     ; preds = %deblock_edge.exit2524
  %add.ptr662 = getelementptr inbounds i8, i8* %cond91, i32 %cond29
  %add.ptr663 = getelementptr inbounds i8, i8* %add.ptr662, i32 8
  %conv5.i2538 = zext i8 %195 to i32
  %conv.i2539 = zext i8 %194 to i32
  %idxprom.i2540 = and i32 %207, 255
  %arrayidx13.i2541 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2497, i32 %idxprom.i2540
  %208 = load i8, i8* %arrayidx13.i2541, align 1, !tbaa !57
  store i8 %208, i8* %15, align 4, !tbaa !57
  %arrayidx20.i2542 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 0, i32 2, i32 1
  %209 = load i8, i8* %arrayidx20.i2542, align 1, !tbaa !57
  %idxprom21.i2543 = zext i8 %209 to i32
  %arrayidx22.i2544 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2497, i32 %idxprom21.i2543
  %210 = load i8, i8* %arrayidx22.i2544, align 1, !tbaa !57
  store i8 %210, i8* %arrayidx27.i2227, align 1, !tbaa !57
  %arrayidx30.i2546 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 0, i32 2, i32 2
  %211 = load i8, i8* %arrayidx30.i2546, align 1, !tbaa !57
  %idxprom31.i2547 = zext i8 %211 to i32
  %arrayidx32.i2548 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2497, i32 %idxprom31.i2547
  %212 = load i8, i8* %arrayidx32.i2548, align 1, !tbaa !57
  store i8 %212, i8* %arrayidx37.i2231, align 2, !tbaa !57
  %arrayidx40.i2550 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 0, i32 2, i32 3
  %213 = load i8, i8* %arrayidx40.i2550, align 1, !tbaa !57
  %idxprom41.i2551 = zext i8 %213 to i32
  %arrayidx42.i2552 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2497, i32 %idxprom41.i2551
  %214 = load i8, i8* %arrayidx42.i2552, align 1, !tbaa !57
  store i8 %214, i8* %arrayidx47.i2235, align 1, !tbaa !57
  call void %206(i8* nonnull %add.ptr663, i32 %7, i32 %conv.i2539, i32 %conv5.i2538, i8* nonnull %15) #5
  br label %deblock_edge.exit2555

deblock_edge.exit2555:                            ; preds = %deblock_edge.exit2524, %if.end.i2554
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #5
  br label %do.body696

if.else670:                                       ; preds = %deblock_edge.exit2493
  switch i32 %8, label %do.body696 [
    i32 1, label %if.then673
    i32 2, label %if.then685
  ]

if.then673:                                       ; preds = %if.else670
  %215 = load void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)** %arrayidx578, align 8, !tbaa !46
  %add.i2557 = add nsw i32 %0, %conv112
  %add1.i2558 = add nsw i32 %1, %conv112
  %add2.i2559 = add nsw i32 %add.i2557, 24
  %arrayidx.i2560 = getelementptr inbounds [88 x i8], [88 x i8]* @i_alpha_table, i32 0, i32 %add2.i2559
  %216 = load i8, i8* %arrayidx.i2560, align 1, !tbaa !57
  %add3.i2561 = add nsw i32 %add1.i2558, 24
  %arrayidx4.i2562 = getelementptr inbounds [88 x i8], [88 x i8]* @i_beta_table, i32 0, i32 %add3.i2561
  %217 = load i8, i8* %arrayidx4.i2562, align 1, !tbaa !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #5
  %218 = load i32, i32* %i.i2470, align 4, !tbaa !57
  %tobool.i2564 = icmp ne i32 %218, 0
  %219 = add i32 %add.i2557, -16
  %tobool7.i2565 = icmp ult i32 %219, 48
  %or.cond.i2566 = and i1 %tobool7.i2565, %tobool.i2564
  %220 = add i32 %add1.i2558, -16
  %tobool9.i2567 = icmp ult i32 %220, 48
  %or.cond52.i2568 = and i1 %tobool9.i2567, %or.cond.i2566
  br i1 %or.cond52.i2568, label %if.end.i2589, label %deblock_edge.exit2590

if.end.i2589:                                     ; preds = %if.then673
  %add.ptr674 = getelementptr inbounds i8, i8* %cond91, i32 8
  %conv5.i2569 = zext i8 %217 to i32
  %conv.i2570 = zext i8 %216 to i32
  %idxprom.i2571 = and i32 %218, 255
  %arrayidx13.i2572 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2559, i32 %idxprom.i2571
  %221 = load i8, i8* %arrayidx13.i2572, align 1, !tbaa !57
  %conv16.i2573 = add i8 %221, 1
  store i8 %conv16.i2573, i8* %15, align 4, !tbaa !57
  %arrayidx20.i2574 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 0, i32 2, i32 1
  %222 = load i8, i8* %arrayidx20.i2574, align 1, !tbaa !57
  %idxprom21.i2575 = zext i8 %222 to i32
  %arrayidx22.i2576 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2559, i32 %idxprom21.i2575
  %223 = load i8, i8* %arrayidx22.i2576, align 1, !tbaa !57
  %conv26.i2577 = add i8 %223, 1
  store i8 %conv26.i2577, i8* %arrayidx27.i2227, align 1, !tbaa !57
  %arrayidx30.i2579 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 0, i32 2, i32 2
  %224 = load i8, i8* %arrayidx30.i2579, align 1, !tbaa !57
  %idxprom31.i2580 = zext i8 %224 to i32
  %arrayidx32.i2581 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2559, i32 %idxprom31.i2580
  %225 = load i8, i8* %arrayidx32.i2581, align 1, !tbaa !57
  %conv36.i2582 = add i8 %225, 1
  store i8 %conv36.i2582, i8* %arrayidx37.i2231, align 2, !tbaa !57
  %arrayidx40.i2584 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 0, i32 2, i32 3
  %226 = load i8, i8* %arrayidx40.i2584, align 1, !tbaa !57
  %idxprom41.i2585 = zext i8 %226 to i32
  %arrayidx42.i2586 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2559, i32 %idxprom41.i2585
  %227 = load i8, i8* %arrayidx42.i2586, align 1, !tbaa !57
  %conv46.i2587 = add i8 %227, 1
  store i8 %conv46.i2587, i8* %arrayidx47.i2235, align 1, !tbaa !57
  call void %215(i8* nonnull %add.ptr674, i32 %7, i32 %conv.i2570, i32 %conv5.i2569, i8* nonnull %15) #5
  br label %deblock_edge.exit2590

deblock_edge.exit2590:                            ; preds = %if.then673, %if.end.i2589
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #5
  br label %do.body696

if.then685:                                       ; preds = %if.else670
  %228 = load void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)** %arrayidx578, align 8, !tbaa !46
  %add.i2592 = add nsw i32 %0, %conv112
  %add1.i2593 = add nsw i32 %1, %conv112
  %add2.i2594 = add nsw i32 %add.i2592, 24
  %arrayidx.i2595 = getelementptr inbounds [88 x i8], [88 x i8]* @i_alpha_table, i32 0, i32 %add2.i2594
  %229 = load i8, i8* %arrayidx.i2595, align 1, !tbaa !57
  %add3.i2596 = add nsw i32 %add1.i2593, 24
  %arrayidx4.i2597 = getelementptr inbounds [88 x i8], [88 x i8]* @i_beta_table, i32 0, i32 %add3.i2596
  %230 = load i8, i8* %arrayidx4.i2597, align 1, !tbaa !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #5
  %231 = load i32, i32* %i.i2470, align 4, !tbaa !57
  %tobool.i2599 = icmp ne i32 %231, 0
  %232 = add i32 %add.i2592, -16
  %tobool7.i2600 = icmp ult i32 %232, 48
  %or.cond.i2601 = and i1 %tobool7.i2600, %tobool.i2599
  %233 = add i32 %add1.i2593, -16
  %tobool9.i2602 = icmp ult i32 %233, 48
  %or.cond52.i2603 = and i1 %tobool9.i2602, %or.cond.i2601
  br i1 %or.cond52.i2603, label %if.end.i2624, label %deblock_edge.exit2625

if.end.i2624:                                     ; preds = %if.then685
  %add.ptr686 = getelementptr inbounds i8, i8* %cond91, i32 8
  %conv5.i2604 = zext i8 %230 to i32
  %conv.i2605 = zext i8 %229 to i32
  %idxprom.i2606 = and i32 %231, 255
  %arrayidx13.i2607 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2594, i32 %idxprom.i2606
  %234 = load i8, i8* %arrayidx13.i2607, align 1, !tbaa !57
  %conv16.i2608 = add i8 %234, 1
  store i8 %conv16.i2608, i8* %15, align 4, !tbaa !57
  %arrayidx20.i2609 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 0, i32 2, i32 1
  %235 = load i8, i8* %arrayidx20.i2609, align 1, !tbaa !57
  %idxprom21.i2610 = zext i8 %235 to i32
  %arrayidx22.i2611 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2594, i32 %idxprom21.i2610
  %236 = load i8, i8* %arrayidx22.i2611, align 1, !tbaa !57
  %conv26.i2612 = add i8 %236, 1
  store i8 %conv26.i2612, i8* %arrayidx27.i2227, align 1, !tbaa !57
  %arrayidx30.i2614 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 0, i32 2, i32 2
  %237 = load i8, i8* %arrayidx30.i2614, align 1, !tbaa !57
  %idxprom31.i2615 = zext i8 %237 to i32
  %arrayidx32.i2616 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2594, i32 %idxprom31.i2615
  %238 = load i8, i8* %arrayidx32.i2616, align 1, !tbaa !57
  %conv36.i2617 = add i8 %238, 1
  store i8 %conv36.i2617, i8* %arrayidx37.i2231, align 2, !tbaa !57
  %arrayidx40.i2619 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 0, i32 2, i32 3
  %239 = load i8, i8* %arrayidx40.i2619, align 1, !tbaa !57
  %idxprom41.i2620 = zext i8 %239 to i32
  %arrayidx42.i2621 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2594, i32 %idxprom41.i2620
  %240 = load i8, i8* %arrayidx42.i2621, align 1, !tbaa !57
  %conv46.i2622 = add i8 %240, 1
  store i8 %conv46.i2622, i8* %arrayidx47.i2235, align 1, !tbaa !57
  call void %228(i8* nonnull %add.ptr686, i32 %7, i32 %conv.i2605, i32 %conv5.i2604, i8* nonnull %15) #5
  br label %deblock_edge.exit2625

deblock_edge.exit2625:                            ; preds = %if.then685, %if.end.i2624
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #5
  br label %do.body696

do.body696:                                       ; preds = %deblock_edge.exit2555, %deblock_edge.exit2590, %if.else670, %deblock_edge.exit2625
  br i1 %tobool588, label %if.end753, label %if.then698

if.then698:                                       ; preds = %do.body696
  %arraydecay702 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 0, i32 3, i32 0
  %241 = load void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)** %arrayidx538, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #5
  %i.i2633 = bitcast i8* %arraydecay702 to i32*
  %242 = load i32, i32* %i.i2633, align 4, !tbaa !57
  %tobool.i2634 = icmp ne i32 %242, 0
  %or.cond.i2636 = and i1 %tobool7.i2472, %tobool.i2634
  %or.cond52.i2638 = and i1 %tobool9.i2474, %or.cond.i2636
  br i1 %or.cond52.i2638, label %if.end.i2655, label %deblock_edge.exit2656

if.end.i2655:                                     ; preds = %if.then698
  %add.ptr699 = getelementptr inbounds i8, i8* %add.ptr75, i32 12
  %conv5.i2639 = zext i8 %184 to i32
  %conv.i2640 = zext i8 %183 to i32
  %idxprom.i2641 = and i32 %242, 255
  %arrayidx13.i2642 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2466.pre-phi, i32 %idxprom.i2641
  %243 = load i8, i8* %arrayidx13.i2642, align 1, !tbaa !57
  store i8 %243, i8* %15, align 4, !tbaa !57
  %arrayidx20.i2643 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 0, i32 3, i32 1
  %244 = load i8, i8* %arrayidx20.i2643, align 1, !tbaa !57
  %idxprom21.i2644 = zext i8 %244 to i32
  %arrayidx22.i2645 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2466.pre-phi, i32 %idxprom21.i2644
  %245 = load i8, i8* %arrayidx22.i2645, align 1, !tbaa !57
  store i8 %245, i8* %arrayidx27.i2227, align 1, !tbaa !57
  %arrayidx30.i2647 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 0, i32 3, i32 2
  %246 = load i8, i8* %arrayidx30.i2647, align 1, !tbaa !57
  %idxprom31.i2648 = zext i8 %246 to i32
  %arrayidx32.i2649 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2466.pre-phi, i32 %idxprom31.i2648
  %247 = load i8, i8* %arrayidx32.i2649, align 1, !tbaa !57
  store i8 %247, i8* %arrayidx37.i2231, align 2, !tbaa !57
  %arrayidx40.i2651 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 0, i32 3, i32 3
  %248 = load i8, i8* %arrayidx40.i2651, align 1, !tbaa !57
  %idxprom41.i2652 = zext i8 %248 to i32
  %arrayidx42.i2653 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2466.pre-phi, i32 %idxprom41.i2652
  %249 = load i8, i8* %arrayidx42.i2653, align 1, !tbaa !57
  store i8 %249, i8* %arrayidx47.i2235, align 1, !tbaa !57
  call void %241(i8* nonnull %add.ptr699, i32 %6, i32 %conv.i2640, i32 %conv5.i2639, i8* nonnull %15) #5
  br label %deblock_edge.exit2656

deblock_edge.exit2656:                            ; preds = %if.then698, %if.end.i2655
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #5
  br i1 %cmp20, label %if.then708, label %if.end753

if.then708:                                       ; preds = %deblock_edge.exit2656
  %250 = load void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)** %arrayidx538, align 8, !tbaa !46
  %add.i2658 = add nsw i32 %0, %conv112
  %add1.i2659 = add nsw i32 %1, %conv112
  %add2.i2660 = add nsw i32 %add.i2658, 24
  %arrayidx.i2661 = getelementptr inbounds [88 x i8], [88 x i8]* @i_alpha_table, i32 0, i32 %add2.i2660
  %251 = load i8, i8* %arrayidx.i2661, align 1, !tbaa !57
  %add3.i2662 = add nsw i32 %add1.i2659, 24
  %arrayidx4.i2663 = getelementptr inbounds [88 x i8], [88 x i8]* @i_beta_table, i32 0, i32 %add3.i2662
  %252 = load i8, i8* %arrayidx4.i2663, align 1, !tbaa !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #5
  %253 = load i32, i32* %i.i2633, align 4, !tbaa !57
  %tobool.i2665 = icmp ne i32 %253, 0
  %254 = add i32 %add.i2658, -16
  %tobool7.i2666 = icmp ult i32 %254, 48
  %or.cond.i2667 = and i1 %tobool7.i2666, %tobool.i2665
  %255 = add i32 %add1.i2659, -16
  %tobool9.i2668 = icmp ult i32 %255, 48
  %or.cond52.i2669 = and i1 %tobool9.i2668, %or.cond.i2667
  br i1 %or.cond52.i2669, label %if.end.i2686, label %deblock_edge.exit2687

if.end.i2686:                                     ; preds = %if.then708
  %add.ptr709 = getelementptr inbounds i8, i8* %cond91, i32 12
  %conv5.i2670 = zext i8 %252 to i32
  %conv.i2671 = zext i8 %251 to i32
  %idxprom.i2672 = and i32 %253, 255
  %arrayidx13.i2673 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2660, i32 %idxprom.i2672
  %256 = load i8, i8* %arrayidx13.i2673, align 1, !tbaa !57
  store i8 %256, i8* %15, align 4, !tbaa !57
  %arrayidx20.i2674 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 0, i32 3, i32 1
  %257 = load i8, i8* %arrayidx20.i2674, align 1, !tbaa !57
  %idxprom21.i2675 = zext i8 %257 to i32
  %arrayidx22.i2676 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2660, i32 %idxprom21.i2675
  %258 = load i8, i8* %arrayidx22.i2676, align 1, !tbaa !57
  store i8 %258, i8* %arrayidx27.i2227, align 1, !tbaa !57
  %arrayidx30.i2678 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 0, i32 3, i32 2
  %259 = load i8, i8* %arrayidx30.i2678, align 1, !tbaa !57
  %idxprom31.i2679 = zext i8 %259 to i32
  %arrayidx32.i2680 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2660, i32 %idxprom31.i2679
  %260 = load i8, i8* %arrayidx32.i2680, align 1, !tbaa !57
  store i8 %260, i8* %arrayidx37.i2231, align 2, !tbaa !57
  %arrayidx40.i2682 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 0, i32 3, i32 3
  %261 = load i8, i8* %arrayidx40.i2682, align 1, !tbaa !57
  %idxprom41.i2683 = zext i8 %261 to i32
  %arrayidx42.i2684 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2660, i32 %idxprom41.i2683
  %262 = load i8, i8* %arrayidx42.i2684, align 1, !tbaa !57
  store i8 %262, i8* %arrayidx47.i2235, align 1, !tbaa !57
  call void %250(i8* nonnull %add.ptr709, i32 %7, i32 %conv.i2671, i32 %conv5.i2670, i8* nonnull %15) #5
  %.pre3342 = load void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)** %arrayidx538, align 8, !tbaa !46
  br label %deblock_edge.exit2687

deblock_edge.exit2687:                            ; preds = %if.then708, %if.end.i2686
  %263 = phi void (i8*, i32, i32, i32, i8*)* [ %250, %if.then708 ], [ %.pre3342, %if.end.i2686 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #5
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #5
  %264 = load i32, i32* %i.i2633, align 4, !tbaa !57
  %tobool.i2696 = icmp ne i32 %264, 0
  %or.cond.i2698 = and i1 %tobool7.i2666, %tobool.i2696
  %or.cond52.i2700 = and i1 %tobool9.i2668, %or.cond.i2698
  br i1 %or.cond52.i2700, label %if.end.i2717, label %deblock_edge.exit2718

if.end.i2717:                                     ; preds = %deblock_edge.exit2687
  %add.ptr716 = getelementptr inbounds i8, i8* %cond91, i32 %cond29
  %add.ptr717 = getelementptr inbounds i8, i8* %add.ptr716, i32 12
  %conv5.i2701 = zext i8 %252 to i32
  %conv.i2702 = zext i8 %251 to i32
  %idxprom.i2703 = and i32 %264, 255
  %arrayidx13.i2704 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2660, i32 %idxprom.i2703
  %265 = load i8, i8* %arrayidx13.i2704, align 1, !tbaa !57
  store i8 %265, i8* %15, align 4, !tbaa !57
  %arrayidx20.i2705 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 0, i32 3, i32 1
  %266 = load i8, i8* %arrayidx20.i2705, align 1, !tbaa !57
  %idxprom21.i2706 = zext i8 %266 to i32
  %arrayidx22.i2707 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2660, i32 %idxprom21.i2706
  %267 = load i8, i8* %arrayidx22.i2707, align 1, !tbaa !57
  store i8 %267, i8* %arrayidx27.i2227, align 1, !tbaa !57
  %arrayidx30.i2709 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 0, i32 3, i32 2
  %268 = load i8, i8* %arrayidx30.i2709, align 1, !tbaa !57
  %idxprom31.i2710 = zext i8 %268 to i32
  %arrayidx32.i2711 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2660, i32 %idxprom31.i2710
  %269 = load i8, i8* %arrayidx32.i2711, align 1, !tbaa !57
  store i8 %269, i8* %arrayidx37.i2231, align 2, !tbaa !57
  %arrayidx40.i2713 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 0, i32 3, i32 3
  %270 = load i8, i8* %arrayidx40.i2713, align 1, !tbaa !57
  %idxprom41.i2714 = zext i8 %270 to i32
  %arrayidx42.i2715 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2660, i32 %idxprom41.i2714
  %271 = load i8, i8* %arrayidx42.i2715, align 1, !tbaa !57
  store i8 %271, i8* %arrayidx47.i2235, align 1, !tbaa !57
  call void %263(i8* nonnull %add.ptr717, i32 %7, i32 %conv.i2702, i32 %conv5.i2701, i8* nonnull %15) #5
  br label %deblock_edge.exit2718

deblock_edge.exit2718:                            ; preds = %deblock_edge.exit2687, %if.end.i2717
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #5
  br label %if.end753

if.end753:                                        ; preds = %do.body696, %deblock_edge.exit2718, %deblock_edge.exit2656, %if.end584
  %272 = load i32, i32* %i_neighbour.i, align 32, !tbaa !49
  %and756 = and i32 %272, 2
  %tobool757 = icmp eq i32 %and756, 0
  br i1 %tobool757, label %if.end1133, label %if.else882

if.else882:                                       ; preds = %if.end753
  %273 = load i8*, i8** %qp108, align 4, !tbaa !60
  %274 = load i32, i32* %i_mb_top_xy.i, align 4, !tbaa !54
  %arrayidx888 = getelementptr inbounds i8, i8* %273, i32 %274
  %275 = load i8, i8* %arrayidx888, align 1, !tbaa !57
  %conv889 = sext i8 %275 to i32
  %add891 = add nsw i32 %conv110, 1
  %add892 = add nsw i32 %add891, %conv889
  %shr893 = ashr i32 %add892, 1
  %276 = load i8*, i8** %chroma_qp_table, align 4, !tbaa !61
  %arrayidx896 = getelementptr inbounds i8, i8* %276, i32 %conv889
  %277 = load i8, i8* %arrayidx896, align 1, !tbaa !57
  %conv897 = zext i8 %277 to i32
  %add898 = add nuw nsw i32 %conv112, 1
  %add899 = add nuw nsw i32 %add898, %conv897
  %278 = lshr i32 %add899, 1
  %279 = load i8*, i8** %type, align 4, !tbaa !58
  %arrayidx906 = getelementptr inbounds i8, i8* %279, i32 %274
  %280 = load i8, i8* %arrayidx906, align 1, !tbaa !57
  %switch2137 = icmp ult i8 %280, 4
  %281 = or i1 %switch, %switch2137
  %282 = load %struct.x264_frame*, %struct.x264_frame** %fdec, align 4, !tbaa !39
  %mb_info946 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %282, i32 0, i32 102
  %283 = load i8*, i8** %mb_info946, align 4, !tbaa !66
  %tobool947 = icmp eq i8* %283, null
  br i1 %tobool947, label %land.lhs.true1002, label %land.lhs.true948

land.lhs.true948:                                 ; preds = %if.else882
  %arraydecay951 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 0, i32 0
  %i952 = bitcast i8* %arraydecay951 to i32*
  %284 = load i32, i32* %i952, align 4, !tbaa !57
  %tobool953 = icmp eq i32 %284, 0
  br i1 %tobool953, label %land.lhs.true1002, label %if.then954

if.then954:                                       ; preds = %land.lhs.true948
  %arrayidx957 = getelementptr inbounds i8, i8* %283, i32 %add.i
  %285 = load i8, i8* %arrayidx957, align 1, !tbaa !57
  %286 = and i8 %285, 1
  %narrow = sub nsw i8 0, %286
  %effective_qp967 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %282, i32 0, i32 57
  %287 = load i8*, i8** %effective_qp967, align 8, !tbaa !70
  %arrayidx968 = getelementptr inbounds i8, i8* %287, i32 %add.i
  %288 = load i8, i8* %arrayidx968, align 1, !tbaa !57
  %or9702125 = or i8 %288, %narrow
  store i8 %or9702125, i8* %arrayidx968, align 1, !tbaa !57
  %289 = load %struct.x264_frame*, %struct.x264_frame** %fdec, align 4, !tbaa !39
  %mb_info973 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %289, i32 0, i32 102
  %290 = load i8*, i8** %mb_info973, align 4, !tbaa !66
  %291 = load i32, i32* %i_mb_top_xy.i, align 4, !tbaa !54
  %arrayidx976 = getelementptr inbounds i8, i8* %290, i32 %291
  %292 = load i8, i8* %arrayidx976, align 1, !tbaa !57
  %293 = and i8 %292, 1
  %narrow2126 = sub nsw i8 0, %293
  %effective_qp986 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %289, i32 0, i32 57
  %294 = load i8*, i8** %effective_qp986, align 8, !tbaa !70
  %arrayidx989 = getelementptr inbounds i8, i8* %294, i32 %291
  %295 = load i8, i8* %arrayidx989, align 1, !tbaa !57
  %or9912127 = or i8 %295, %narrow2126
  store i8 %or9912127, i8* %arrayidx989, align 1, !tbaa !57
  br label %land.lhs.true1002

land.lhs.true1002:                                ; preds = %if.then954, %if.else882, %land.lhs.true948
  br i1 %281, label %do.body1005, label %do.body1072

do.body1005:                                      ; preds = %land.lhs.true1002
  %add.i2719 = add nsw i32 %shr893, %0
  %add1.i2720 = add nsw i32 %shr893, %1
  %296 = add i32 %add.i2719, -16
  %tobool.i2721 = icmp ult i32 %296, 48
  %297 = add i32 %add1.i2720, -16
  %tobool7.i2722 = icmp ult i32 %297, 48
  %or.cond.i2723 = and i1 %tobool.i2721, %tobool7.i2722
  br i1 %or.cond.i2723, label %if.end.i2730, label %deblock_edge_intra.exit2731

if.end.i2730:                                     ; preds = %do.body1005
  %298 = load void (i8*, i32, i32, i32)*, void (i8*, i32, i32, i32)** %arrayidx1013, align 4, !tbaa !46
  %add3.i2724 = add nuw nsw i32 %add1.i2720, 24
  %add2.i2725 = add nuw nsw i32 %add.i2719, 24
  %arrayidx4.i2726 = getelementptr inbounds [88 x i8], [88 x i8]* @i_beta_table, i32 0, i32 %add3.i2724
  %299 = load i8, i8* %arrayidx4.i2726, align 1, !tbaa !57
  %conv5.i2727 = zext i8 %299 to i32
  %arrayidx.i2728 = getelementptr inbounds [88 x i8], [88 x i8]* @i_alpha_table, i32 0, i32 %add2.i2725
  %300 = load i8, i8* %arrayidx.i2728, align 1, !tbaa !57
  %conv.i2729 = zext i8 %300 to i32
  call void %298(i8* %add.ptr75, i32 %6, i32 %conv.i2729, i32 %conv5.i2727) #5
  br label %deblock_edge_intra.exit2731

deblock_edge_intra.exit2731:                      ; preds = %do.body1005, %if.end.i2730
  br i1 %cmp20, label %if.then1016, label %if.else1034

if.then1016:                                      ; preds = %deblock_edge_intra.exit2731
  %add.i2732 = add nsw i32 %278, %0
  %add1.i2733 = add nsw i32 %278, %1
  %301 = add i32 %add.i2732, -16
  %tobool.i2734 = icmp ult i32 %301, 48
  %302 = add i32 %add1.i2733, -16
  %tobool7.i2735 = icmp ult i32 %302, 48
  %or.cond.i2736 = and i1 %tobool.i2734, %tobool7.i2735
  br i1 %or.cond.i2736, label %if.end.i2756, label %if.end1133

if.end.i2756:                                     ; preds = %if.then1016
  %303 = load void (i8*, i32, i32, i32)*, void (i8*, i32, i32, i32)** %arrayidx1013, align 4, !tbaa !46
  %add3.i2737 = add nuw nsw i32 %add1.i2733, 24
  %add2.i2738 = add nuw nsw i32 %add.i2732, 24
  %arrayidx4.i2739 = getelementptr inbounds [88 x i8], [88 x i8]* @i_beta_table, i32 0, i32 %add3.i2737
  %304 = load i8, i8* %arrayidx4.i2739, align 1, !tbaa !57
  %conv5.i2740 = zext i8 %304 to i32
  %arrayidx.i2741 = getelementptr inbounds [88 x i8], [88 x i8]* @i_alpha_table, i32 0, i32 %add2.i2738
  %305 = load i8, i8* %arrayidx.i2741, align 1, !tbaa !57
  %conv.i2742 = zext i8 %305 to i32
  call void %303(i8* %cond91, i32 %7, i32 %conv.i2742, i32 %conv5.i2740) #5
  %add.ptr10253333 = getelementptr inbounds i8, i8* %cond91, i32 %cond29
  %306 = load void (i8*, i32, i32, i32)*, void (i8*, i32, i32, i32)** %arrayidx1013, align 4, !tbaa !46
  call void %306(i8* %add.ptr10253333, i32 %7, i32 %conv.i2742, i32 %conv5.i2740) #5
  br label %if.end1133

if.else1034:                                      ; preds = %deblock_edge_intra.exit2731
  switch i32 %8, label %if.end1133 [
    i32 1, label %if.then1037
    i32 2, label %if.then1051
  ]

if.then1037:                                      ; preds = %if.else1034
  %add.i2758 = add nsw i32 %278, %0
  %add1.i2759 = add nsw i32 %278, %1
  %307 = add i32 %add.i2758, -16
  %tobool.i2760 = icmp ult i32 %307, 48
  %308 = add i32 %add1.i2759, -16
  %tobool7.i2761 = icmp ult i32 %308, 48
  %or.cond.i2762 = and i1 %tobool.i2760, %tobool7.i2761
  br i1 %or.cond.i2762, label %if.end.i2769, label %if.end1133

if.end.i2769:                                     ; preds = %if.then1037
  %309 = load void (i8*, i32, i32, i32)*, void (i8*, i32, i32, i32)** %arrayidx1060, align 4, !tbaa !46
  %add3.i2763 = add nuw nsw i32 %add1.i2759, 24
  %add2.i2764 = add nuw nsw i32 %add.i2758, 24
  %arrayidx4.i2765 = getelementptr inbounds [88 x i8], [88 x i8]* @i_beta_table, i32 0, i32 %add3.i2763
  %310 = load i8, i8* %arrayidx4.i2765, align 1, !tbaa !57
  %conv5.i2766 = zext i8 %310 to i32
  %arrayidx.i2767 = getelementptr inbounds [88 x i8], [88 x i8]* @i_alpha_table, i32 0, i32 %add2.i2764
  %311 = load i8, i8* %arrayidx.i2767, align 1, !tbaa !57
  %conv.i2768 = zext i8 %311 to i32
  call void %309(i8* %cond91, i32 %7, i32 %conv.i2768, i32 %conv5.i2766) #5
  br label %if.end1133

if.then1051:                                      ; preds = %if.else1034
  %add.i2771 = add nsw i32 %278, %0
  %add1.i2772 = add nsw i32 %278, %1
  %312 = add i32 %add.i2771, -16
  %tobool.i2773 = icmp ult i32 %312, 48
  %313 = add i32 %add1.i2772, -16
  %tobool7.i2774 = icmp ult i32 %313, 48
  %or.cond.i2775 = and i1 %tobool.i2773, %tobool7.i2774
  br i1 %or.cond.i2775, label %if.end.i2782, label %if.end1133

if.end.i2782:                                     ; preds = %if.then1051
  %314 = load void (i8*, i32, i32, i32)*, void (i8*, i32, i32, i32)** %arrayidx1060, align 4, !tbaa !46
  %add3.i2776 = add nuw nsw i32 %add1.i2772, 24
  %add2.i2777 = add nuw nsw i32 %add.i2771, 24
  %arrayidx4.i2778 = getelementptr inbounds [88 x i8], [88 x i8]* @i_beta_table, i32 0, i32 %add3.i2776
  %315 = load i8, i8* %arrayidx4.i2778, align 1, !tbaa !57
  %conv5.i2779 = zext i8 %315 to i32
  %arrayidx.i2780 = getelementptr inbounds [88 x i8], [88 x i8]* @i_alpha_table, i32 0, i32 %add2.i2777
  %316 = load i8, i8* %arrayidx.i2780, align 1, !tbaa !57
  %conv.i2781 = zext i8 %316 to i32
  call void %314(i8* %cond91, i32 %7, i32 %conv.i2781, i32 %conv5.i2779) #5
  br label %if.end1133

do.body1072:                                      ; preds = %land.lhs.true1002
  %arraydecay1077 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 0, i32 0
  %317 = load void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)** %arrayidx1080, align 4, !tbaa !46
  %add.i2785 = add nsw i32 %shr893, %0
  %add1.i2786 = add nsw i32 %shr893, %1
  %add2.i2787 = add nsw i32 %add.i2785, 24
  %arrayidx.i2788 = getelementptr inbounds [88 x i8], [88 x i8]* @i_alpha_table, i32 0, i32 %add2.i2787
  %318 = load i8, i8* %arrayidx.i2788, align 1, !tbaa !57
  %add3.i2789 = add nsw i32 %add1.i2786, 24
  %arrayidx4.i2790 = getelementptr inbounds [88 x i8], [88 x i8]* @i_beta_table, i32 0, i32 %add3.i2789
  %319 = load i8, i8* %arrayidx4.i2790, align 1, !tbaa !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #5
  %i.i2791 = bitcast i8* %arraydecay1077 to i32*
  %320 = load i32, i32* %i.i2791, align 4, !tbaa !57
  %tobool.i2792 = icmp ne i32 %320, 0
  %321 = add i32 %add.i2785, -16
  %tobool7.i2793 = icmp ult i32 %321, 48
  %or.cond.i2794 = and i1 %tobool7.i2793, %tobool.i2792
  %322 = add i32 %add1.i2786, -16
  %tobool9.i2795 = icmp ult i32 %322, 48
  %or.cond52.i2796 = and i1 %tobool9.i2795, %or.cond.i2794
  br i1 %or.cond52.i2796, label %if.end.i2813, label %deblock_edge.exit2814

if.end.i2813:                                     ; preds = %do.body1072
  %conv5.i2797 = zext i8 %319 to i32
  %conv.i2798 = zext i8 %318 to i32
  %idxprom.i2799 = and i32 %320, 255
  %arrayidx13.i2800 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2787, i32 %idxprom.i2799
  %323 = load i8, i8* %arrayidx13.i2800, align 1, !tbaa !57
  store i8 %323, i8* %15, align 4, !tbaa !57
  %arrayidx20.i2801 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 0, i32 1
  %324 = load i8, i8* %arrayidx20.i2801, align 1, !tbaa !57
  %idxprom21.i2802 = zext i8 %324 to i32
  %arrayidx22.i2803 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2787, i32 %idxprom21.i2802
  %325 = load i8, i8* %arrayidx22.i2803, align 1, !tbaa !57
  store i8 %325, i8* %arrayidx27.i2227, align 1, !tbaa !57
  %arrayidx30.i2805 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 0, i32 2
  %326 = load i8, i8* %arrayidx30.i2805, align 1, !tbaa !57
  %idxprom31.i2806 = zext i8 %326 to i32
  %arrayidx32.i2807 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2787, i32 %idxprom31.i2806
  %327 = load i8, i8* %arrayidx32.i2807, align 1, !tbaa !57
  store i8 %327, i8* %arrayidx37.i2231, align 2, !tbaa !57
  %arrayidx40.i2809 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 0, i32 3
  %328 = load i8, i8* %arrayidx40.i2809, align 1, !tbaa !57
  %idxprom41.i2810 = zext i8 %328 to i32
  %arrayidx42.i2811 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2787, i32 %idxprom41.i2810
  %329 = load i8, i8* %arrayidx42.i2811, align 1, !tbaa !57
  store i8 %329, i8* %arrayidx47.i2235, align 1, !tbaa !57
  call void %317(i8* %add.ptr75, i32 %6, i32 %conv.i2798, i32 %conv5.i2797, i8* nonnull %15) #5
  br label %deblock_edge.exit2814

deblock_edge.exit2814:                            ; preds = %do.body1072, %if.end.i2813
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #5
  br i1 %cmp20, label %if.then1083, label %if.else1101

if.then1083:                                      ; preds = %deblock_edge.exit2814
  %330 = load void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)** %arrayidx1080, align 4, !tbaa !46
  %add.i2816 = add nsw i32 %278, %0
  %add1.i2817 = add nsw i32 %278, %1
  %add2.i2818 = add nsw i32 %add.i2816, 24
  %arrayidx.i2819 = getelementptr inbounds [88 x i8], [88 x i8]* @i_alpha_table, i32 0, i32 %add2.i2818
  %331 = load i8, i8* %arrayidx.i2819, align 1, !tbaa !57
  %add3.i2820 = add nsw i32 %add1.i2817, 24
  %arrayidx4.i2821 = getelementptr inbounds [88 x i8], [88 x i8]* @i_beta_table, i32 0, i32 %add3.i2820
  %332 = load i8, i8* %arrayidx4.i2821, align 1, !tbaa !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #5
  %333 = load i32, i32* %i.i2791, align 4, !tbaa !57
  %tobool.i2823 = icmp ne i32 %333, 0
  %334 = add i32 %add.i2816, -16
  %tobool7.i2824 = icmp ult i32 %334, 48
  %or.cond.i2825 = and i1 %tobool7.i2824, %tobool.i2823
  %335 = add i32 %add1.i2817, -16
  %tobool9.i2826 = icmp ult i32 %335, 48
  %or.cond52.i2827 = and i1 %tobool9.i2826, %or.cond.i2825
  br i1 %or.cond52.i2827, label %if.end.i2844, label %deblock_edge.exit2845

if.end.i2844:                                     ; preds = %if.then1083
  %conv5.i2828 = zext i8 %332 to i32
  %conv.i2829 = zext i8 %331 to i32
  %idxprom.i2830 = and i32 %333, 255
  %arrayidx13.i2831 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2818, i32 %idxprom.i2830
  %336 = load i8, i8* %arrayidx13.i2831, align 1, !tbaa !57
  store i8 %336, i8* %15, align 4, !tbaa !57
  %arrayidx20.i2832 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 0, i32 1
  %337 = load i8, i8* %arrayidx20.i2832, align 1, !tbaa !57
  %idxprom21.i2833 = zext i8 %337 to i32
  %arrayidx22.i2834 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2818, i32 %idxprom21.i2833
  %338 = load i8, i8* %arrayidx22.i2834, align 1, !tbaa !57
  store i8 %338, i8* %arrayidx27.i2227, align 1, !tbaa !57
  %arrayidx30.i2836 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 0, i32 2
  %339 = load i8, i8* %arrayidx30.i2836, align 1, !tbaa !57
  %idxprom31.i2837 = zext i8 %339 to i32
  %arrayidx32.i2838 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2818, i32 %idxprom31.i2837
  %340 = load i8, i8* %arrayidx32.i2838, align 1, !tbaa !57
  store i8 %340, i8* %arrayidx37.i2231, align 2, !tbaa !57
  %arrayidx40.i2840 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 0, i32 3
  %341 = load i8, i8* %arrayidx40.i2840, align 1, !tbaa !57
  %idxprom41.i2841 = zext i8 %341 to i32
  %arrayidx42.i2842 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2818, i32 %idxprom41.i2841
  %342 = load i8, i8* %arrayidx42.i2842, align 1, !tbaa !57
  store i8 %342, i8* %arrayidx47.i2235, align 1, !tbaa !57
  call void %330(i8* %cond91, i32 %7, i32 %conv.i2829, i32 %conv5.i2828, i8* nonnull %15) #5
  %.pre3343 = load void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)** %arrayidx1080, align 4, !tbaa !46
  br label %deblock_edge.exit2845

deblock_edge.exit2845:                            ; preds = %if.then1083, %if.end.i2844
  %343 = phi void (i8*, i32, i32, i32, i8*)* [ %330, %if.then1083 ], [ %.pre3343, %if.end.i2844 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #5
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #5
  %344 = load i32, i32* %i.i2791, align 4, !tbaa !57
  %tobool.i2854 = icmp ne i32 %344, 0
  %or.cond.i2856 = and i1 %tobool7.i2824, %tobool.i2854
  %or.cond52.i2858 = and i1 %tobool9.i2826, %or.cond.i2856
  br i1 %or.cond52.i2858, label %if.end.i2875, label %deblock_edge.exit2876

if.end.i2875:                                     ; preds = %deblock_edge.exit2845
  %add.ptr1092 = getelementptr inbounds i8, i8* %cond91, i32 %cond29
  %conv5.i2859 = zext i8 %332 to i32
  %conv.i2860 = zext i8 %331 to i32
  %idxprom.i2861 = and i32 %344, 255
  %arrayidx13.i2862 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2818, i32 %idxprom.i2861
  %345 = load i8, i8* %arrayidx13.i2862, align 1, !tbaa !57
  store i8 %345, i8* %15, align 4, !tbaa !57
  %arrayidx20.i2863 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 0, i32 1
  %346 = load i8, i8* %arrayidx20.i2863, align 1, !tbaa !57
  %idxprom21.i2864 = zext i8 %346 to i32
  %arrayidx22.i2865 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2818, i32 %idxprom21.i2864
  %347 = load i8, i8* %arrayidx22.i2865, align 1, !tbaa !57
  store i8 %347, i8* %arrayidx27.i2227, align 1, !tbaa !57
  %arrayidx30.i2867 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 0, i32 2
  %348 = load i8, i8* %arrayidx30.i2867, align 1, !tbaa !57
  %idxprom31.i2868 = zext i8 %348 to i32
  %arrayidx32.i2869 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2818, i32 %idxprom31.i2868
  %349 = load i8, i8* %arrayidx32.i2869, align 1, !tbaa !57
  store i8 %349, i8* %arrayidx37.i2231, align 2, !tbaa !57
  %arrayidx40.i2871 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 0, i32 3
  %350 = load i8, i8* %arrayidx40.i2871, align 1, !tbaa !57
  %idxprom41.i2872 = zext i8 %350 to i32
  %arrayidx42.i2873 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2818, i32 %idxprom41.i2872
  %351 = load i8, i8* %arrayidx42.i2873, align 1, !tbaa !57
  store i8 %351, i8* %arrayidx47.i2235, align 1, !tbaa !57
  call void %343(i8* %add.ptr1092, i32 %7, i32 %conv.i2860, i32 %conv5.i2859, i8* nonnull %15) #5
  br label %deblock_edge.exit2876

deblock_edge.exit2876:                            ; preds = %deblock_edge.exit2845, %if.end.i2875
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #5
  br label %if.end1133

if.else1101:                                      ; preds = %deblock_edge.exit2814
  switch i32 %8, label %if.end1133 [
    i32 1, label %if.then1104
    i32 2, label %if.then1118
  ]

if.then1104:                                      ; preds = %if.else1101
  %352 = load void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)** %arrayidx1127, align 4, !tbaa !46
  %add.i2878 = add nsw i32 %278, %0
  %add1.i2879 = add nsw i32 %278, %1
  %add2.i2880 = add nsw i32 %add.i2878, 24
  %arrayidx.i2881 = getelementptr inbounds [88 x i8], [88 x i8]* @i_alpha_table, i32 0, i32 %add2.i2880
  %353 = load i8, i8* %arrayidx.i2881, align 1, !tbaa !57
  %add3.i2882 = add nsw i32 %add1.i2879, 24
  %arrayidx4.i2883 = getelementptr inbounds [88 x i8], [88 x i8]* @i_beta_table, i32 0, i32 %add3.i2882
  %354 = load i8, i8* %arrayidx4.i2883, align 1, !tbaa !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #5
  %355 = load i32, i32* %i.i2791, align 4, !tbaa !57
  %tobool.i2885 = icmp ne i32 %355, 0
  %356 = add i32 %add.i2878, -16
  %tobool7.i2886 = icmp ult i32 %356, 48
  %or.cond.i2887 = and i1 %tobool7.i2886, %tobool.i2885
  %357 = add i32 %add1.i2879, -16
  %tobool9.i2888 = icmp ult i32 %357, 48
  %or.cond52.i2889 = and i1 %tobool9.i2888, %or.cond.i2887
  br i1 %or.cond52.i2889, label %if.end.i2910, label %deblock_edge.exit2911

if.end.i2910:                                     ; preds = %if.then1104
  %conv5.i2890 = zext i8 %354 to i32
  %conv.i2891 = zext i8 %353 to i32
  %idxprom.i2892 = and i32 %355, 255
  %arrayidx13.i2893 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2880, i32 %idxprom.i2892
  %358 = load i8, i8* %arrayidx13.i2893, align 1, !tbaa !57
  %conv16.i2894 = add i8 %358, 1
  store i8 %conv16.i2894, i8* %15, align 4, !tbaa !57
  %arrayidx20.i2895 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 0, i32 1
  %359 = load i8, i8* %arrayidx20.i2895, align 1, !tbaa !57
  %idxprom21.i2896 = zext i8 %359 to i32
  %arrayidx22.i2897 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2880, i32 %idxprom21.i2896
  %360 = load i8, i8* %arrayidx22.i2897, align 1, !tbaa !57
  %conv26.i2898 = add i8 %360, 1
  store i8 %conv26.i2898, i8* %arrayidx27.i2227, align 1, !tbaa !57
  %arrayidx30.i2900 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 0, i32 2
  %361 = load i8, i8* %arrayidx30.i2900, align 1, !tbaa !57
  %idxprom31.i2901 = zext i8 %361 to i32
  %arrayidx32.i2902 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2880, i32 %idxprom31.i2901
  %362 = load i8, i8* %arrayidx32.i2902, align 1, !tbaa !57
  %conv36.i2903 = add i8 %362, 1
  store i8 %conv36.i2903, i8* %arrayidx37.i2231, align 2, !tbaa !57
  %arrayidx40.i2905 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 0, i32 3
  %363 = load i8, i8* %arrayidx40.i2905, align 1, !tbaa !57
  %idxprom41.i2906 = zext i8 %363 to i32
  %arrayidx42.i2907 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2880, i32 %idxprom41.i2906
  %364 = load i8, i8* %arrayidx42.i2907, align 1, !tbaa !57
  %conv46.i2908 = add i8 %364, 1
  store i8 %conv46.i2908, i8* %arrayidx47.i2235, align 1, !tbaa !57
  call void %352(i8* %cond91, i32 %7, i32 %conv.i2891, i32 %conv5.i2890, i8* nonnull %15) #5
  br label %deblock_edge.exit2911

deblock_edge.exit2911:                            ; preds = %if.then1104, %if.end.i2910
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #5
  br label %if.end1133

if.then1118:                                      ; preds = %if.else1101
  %365 = load void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)** %arrayidx1127, align 4, !tbaa !46
  %add.i2913 = add nsw i32 %278, %0
  %add1.i2914 = add nsw i32 %278, %1
  %add2.i2915 = add nsw i32 %add.i2913, 24
  %arrayidx.i2916 = getelementptr inbounds [88 x i8], [88 x i8]* @i_alpha_table, i32 0, i32 %add2.i2915
  %366 = load i8, i8* %arrayidx.i2916, align 1, !tbaa !57
  %add3.i2917 = add nsw i32 %add1.i2914, 24
  %arrayidx4.i2918 = getelementptr inbounds [88 x i8], [88 x i8]* @i_beta_table, i32 0, i32 %add3.i2917
  %367 = load i8, i8* %arrayidx4.i2918, align 1, !tbaa !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #5
  %368 = load i32, i32* %i.i2791, align 4, !tbaa !57
  %tobool.i2920 = icmp ne i32 %368, 0
  %369 = add i32 %add.i2913, -16
  %tobool7.i2921 = icmp ult i32 %369, 48
  %or.cond.i2922 = and i1 %tobool7.i2921, %tobool.i2920
  %370 = add i32 %add1.i2914, -16
  %tobool9.i2923 = icmp ult i32 %370, 48
  %or.cond52.i2924 = and i1 %tobool9.i2923, %or.cond.i2922
  br i1 %or.cond52.i2924, label %if.end.i2945, label %deblock_edge.exit2946

if.end.i2945:                                     ; preds = %if.then1118
  %conv5.i2925 = zext i8 %367 to i32
  %conv.i2926 = zext i8 %366 to i32
  %idxprom.i2927 = and i32 %368, 255
  %arrayidx13.i2928 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2915, i32 %idxprom.i2927
  %371 = load i8, i8* %arrayidx13.i2928, align 1, !tbaa !57
  %conv16.i2929 = add i8 %371, 1
  store i8 %conv16.i2929, i8* %15, align 4, !tbaa !57
  %arrayidx20.i2930 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 0, i32 1
  %372 = load i8, i8* %arrayidx20.i2930, align 1, !tbaa !57
  %idxprom21.i2931 = zext i8 %372 to i32
  %arrayidx22.i2932 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2915, i32 %idxprom21.i2931
  %373 = load i8, i8* %arrayidx22.i2932, align 1, !tbaa !57
  %conv26.i2933 = add i8 %373, 1
  store i8 %conv26.i2933, i8* %arrayidx27.i2227, align 1, !tbaa !57
  %arrayidx30.i2935 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 0, i32 2
  %374 = load i8, i8* %arrayidx30.i2935, align 1, !tbaa !57
  %idxprom31.i2936 = zext i8 %374 to i32
  %arrayidx32.i2937 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2915, i32 %idxprom31.i2936
  %375 = load i8, i8* %arrayidx32.i2937, align 1, !tbaa !57
  %conv36.i2938 = add i8 %375, 1
  store i8 %conv36.i2938, i8* %arrayidx37.i2231, align 2, !tbaa !57
  %arrayidx40.i2940 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 0, i32 3
  %376 = load i8, i8* %arrayidx40.i2940, align 1, !tbaa !57
  %idxprom41.i2941 = zext i8 %376 to i32
  %arrayidx42.i2942 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2915, i32 %idxprom41.i2941
  %377 = load i8, i8* %arrayidx42.i2942, align 1, !tbaa !57
  %conv46.i2943 = add i8 %377, 1
  store i8 %conv46.i2943, i8* %arrayidx47.i2235, align 1, !tbaa !57
  call void %365(i8* %cond91, i32 %7, i32 %conv.i2926, i32 %conv5.i2925, i8* nonnull %15) #5
  br label %deblock_edge.exit2946

deblock_edge.exit2946:                            ; preds = %if.then1118, %if.end.i2945
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #5
  br label %if.end1133

if.end1133:                                       ; preds = %if.then1016, %deblock_edge.exit2876, %deblock_edge.exit2911, %if.end.i2782, %if.then1051, %if.end.i2756, %if.then1037, %if.end.i2769, %deblock_edge.exit2946, %if.else1034, %if.else1101, %if.end753
  br i1 %46, label %if.end1321, label %do.body1136

do.body1136:                                      ; preds = %if.end1133
  %tobool1137 = icmp ne i8 %29, 0
  br i1 %tobool1137, label %if.end1183, label %if.then1138

if.then1138:                                      ; preds = %do.body1136
  %arraydecay1143 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 1, i32 0
  %378 = load void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)** %arrayidx1080, align 4, !tbaa !46
  %add.i2948 = add nsw i32 %0, %conv110
  %add1.i2949 = add nsw i32 %1, %conv110
  %add2.i2950 = add nsw i32 %add.i2948, 24
  %arrayidx.i2951 = getelementptr inbounds [88 x i8], [88 x i8]* @i_alpha_table, i32 0, i32 %add2.i2950
  %379 = load i8, i8* %arrayidx.i2951, align 1, !tbaa !57
  %add3.i2952 = add nsw i32 %add1.i2949, 24
  %arrayidx4.i2953 = getelementptr inbounds [88 x i8], [88 x i8]* @i_beta_table, i32 0, i32 %add3.i2952
  %380 = load i8, i8* %arrayidx4.i2953, align 1, !tbaa !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #5
  %i.i2954 = bitcast i8* %arraydecay1143 to i32*
  %381 = load i32, i32* %i.i2954, align 4, !tbaa !57
  %tobool.i2955 = icmp ne i32 %381, 0
  %382 = add i32 %add.i2948, -16
  %tobool7.i2956 = icmp ult i32 %382, 48
  %or.cond.i2957 = and i1 %tobool7.i2956, %tobool.i2955
  %383 = add i32 %add1.i2949, -16
  %tobool9.i2958 = icmp ult i32 %383, 48
  %or.cond52.i2959 = and i1 %tobool9.i2958, %or.cond.i2957
  br i1 %or.cond52.i2959, label %if.end.i2976, label %deblock_edge.exit2977

if.end.i2976:                                     ; preds = %if.then1138
  %add.ptr1140 = getelementptr inbounds i8, i8* %add.ptr75, i32 %mul1139
  %conv5.i2960 = zext i8 %380 to i32
  %conv.i2961 = zext i8 %379 to i32
  %idxprom.i2962 = and i32 %381, 255
  %arrayidx13.i2963 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2950, i32 %idxprom.i2962
  %384 = load i8, i8* %arrayidx13.i2963, align 1, !tbaa !57
  store i8 %384, i8* %15, align 4, !tbaa !57
  %arrayidx20.i2964 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 1, i32 1
  %385 = load i8, i8* %arrayidx20.i2964, align 1, !tbaa !57
  %idxprom21.i2965 = zext i8 %385 to i32
  %arrayidx22.i2966 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2950, i32 %idxprom21.i2965
  %386 = load i8, i8* %arrayidx22.i2966, align 1, !tbaa !57
  store i8 %386, i8* %arrayidx27.i2227, align 1, !tbaa !57
  %arrayidx30.i2968 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 1, i32 2
  %387 = load i8, i8* %arrayidx30.i2968, align 1, !tbaa !57
  %idxprom31.i2969 = zext i8 %387 to i32
  %arrayidx32.i2970 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2950, i32 %idxprom31.i2969
  %388 = load i8, i8* %arrayidx32.i2970, align 1, !tbaa !57
  store i8 %388, i8* %arrayidx37.i2231, align 2, !tbaa !57
  %arrayidx40.i2972 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 1, i32 3
  %389 = load i8, i8* %arrayidx40.i2972, align 1, !tbaa !57
  %idxprom41.i2973 = zext i8 %389 to i32
  %arrayidx42.i2974 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2950, i32 %idxprom41.i2973
  %390 = load i8, i8* %arrayidx42.i2974, align 1, !tbaa !57
  store i8 %390, i8* %arrayidx47.i2235, align 1, !tbaa !57
  call void %378(i8* %add.ptr1140, i32 %6, i32 %conv.i2961, i32 %conv5.i2960, i8* nonnull %15) #5
  br label %deblock_edge.exit2977

deblock_edge.exit2977:                            ; preds = %if.then1138, %if.end.i2976
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #5
  br i1 %cmp20, label %if.then1149, label %if.end1183

if.then1149:                                      ; preds = %deblock_edge.exit2977
  %391 = load void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)** %arrayidx1080, align 4, !tbaa !46
  %add.i2979 = add nsw i32 %0, %conv112
  %add1.i2980 = add nsw i32 %1, %conv112
  %add2.i2981 = add nsw i32 %add.i2979, 24
  %arrayidx.i2982 = getelementptr inbounds [88 x i8], [88 x i8]* @i_alpha_table, i32 0, i32 %add2.i2981
  %392 = load i8, i8* %arrayidx.i2982, align 1, !tbaa !57
  %add3.i2983 = add nsw i32 %add1.i2980, 24
  %arrayidx4.i2984 = getelementptr inbounds [88 x i8], [88 x i8]* @i_beta_table, i32 0, i32 %add3.i2983
  %393 = load i8, i8* %arrayidx4.i2984, align 1, !tbaa !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #5
  %394 = load i32, i32* %i.i2954, align 4, !tbaa !57
  %tobool.i2986 = icmp ne i32 %394, 0
  %395 = add i32 %add.i2979, -16
  %tobool7.i2987 = icmp ult i32 %395, 48
  %or.cond.i2988 = and i1 %tobool7.i2987, %tobool.i2986
  %396 = add i32 %add1.i2980, -16
  %tobool9.i2989 = icmp ult i32 %396, 48
  %or.cond52.i2990 = and i1 %tobool9.i2989, %or.cond.i2988
  br i1 %or.cond52.i2990, label %if.end.i3007, label %deblock_edge.exit3008

if.end.i3007:                                     ; preds = %if.then1149
  %add.ptr1151 = getelementptr inbounds i8, i8* %cond91, i32 %mul1150
  %conv5.i2991 = zext i8 %393 to i32
  %conv.i2992 = zext i8 %392 to i32
  %idxprom.i2993 = and i32 %394, 255
  %arrayidx13.i2994 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2981, i32 %idxprom.i2993
  %397 = load i8, i8* %arrayidx13.i2994, align 1, !tbaa !57
  store i8 %397, i8* %15, align 4, !tbaa !57
  %arrayidx20.i2995 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 1, i32 1
  %398 = load i8, i8* %arrayidx20.i2995, align 1, !tbaa !57
  %idxprom21.i2996 = zext i8 %398 to i32
  %arrayidx22.i2997 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2981, i32 %idxprom21.i2996
  %399 = load i8, i8* %arrayidx22.i2997, align 1, !tbaa !57
  store i8 %399, i8* %arrayidx27.i2227, align 1, !tbaa !57
  %arrayidx30.i2999 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 1, i32 2
  %400 = load i8, i8* %arrayidx30.i2999, align 1, !tbaa !57
  %idxprom31.i3000 = zext i8 %400 to i32
  %arrayidx32.i3001 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2981, i32 %idxprom31.i3000
  %401 = load i8, i8* %arrayidx32.i3001, align 1, !tbaa !57
  store i8 %401, i8* %arrayidx37.i2231, align 2, !tbaa !57
  %arrayidx40.i3003 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 1, i32 3
  %402 = load i8, i8* %arrayidx40.i3003, align 1, !tbaa !57
  %idxprom41.i3004 = zext i8 %402 to i32
  %arrayidx42.i3005 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2981, i32 %idxprom41.i3004
  %403 = load i8, i8* %arrayidx42.i3005, align 1, !tbaa !57
  store i8 %403, i8* %arrayidx47.i2235, align 1, !tbaa !57
  call void %391(i8* %add.ptr1151, i32 %7, i32 %conv.i2992, i32 %conv5.i2991, i8* nonnull %15) #5
  %.pre3344 = load void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)** %arrayidx1080, align 4, !tbaa !46
  br label %deblock_edge.exit3008

deblock_edge.exit3008:                            ; preds = %if.then1149, %if.end.i3007
  %404 = phi void (i8*, i32, i32, i32, i8*)* [ %391, %if.then1149 ], [ %.pre3344, %if.end.i3007 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #5
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #5
  %405 = load i32, i32* %i.i2954, align 4, !tbaa !57
  %tobool.i3017 = icmp ne i32 %405, 0
  %or.cond.i3019 = and i1 %tobool7.i2987, %tobool.i3017
  %or.cond52.i3021 = and i1 %tobool9.i2989, %or.cond.i3019
  br i1 %or.cond52.i3021, label %if.end.i3038, label %if.end1183.thread

if.end.i3038:                                     ; preds = %deblock_edge.exit3008
  %add.ptr1158 = getelementptr inbounds i8, i8* %cond91, i32 %cond29
  %add.ptr1160 = getelementptr inbounds i8, i8* %add.ptr1158, i32 %mul1150
  %conv5.i3022 = zext i8 %393 to i32
  %conv.i3023 = zext i8 %392 to i32
  %idxprom.i3024 = and i32 %405, 255
  %arrayidx13.i3025 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2981, i32 %idxprom.i3024
  %406 = load i8, i8* %arrayidx13.i3025, align 1, !tbaa !57
  store i8 %406, i8* %15, align 4, !tbaa !57
  %arrayidx20.i3026 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 1, i32 1
  %407 = load i8, i8* %arrayidx20.i3026, align 1, !tbaa !57
  %idxprom21.i3027 = zext i8 %407 to i32
  %arrayidx22.i3028 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2981, i32 %idxprom21.i3027
  %408 = load i8, i8* %arrayidx22.i3028, align 1, !tbaa !57
  store i8 %408, i8* %arrayidx27.i2227, align 1, !tbaa !57
  %arrayidx30.i3030 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 1, i32 2
  %409 = load i8, i8* %arrayidx30.i3030, align 1, !tbaa !57
  %idxprom31.i3031 = zext i8 %409 to i32
  %arrayidx32.i3032 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2981, i32 %idxprom31.i3031
  %410 = load i8, i8* %arrayidx32.i3032, align 1, !tbaa !57
  store i8 %410, i8* %arrayidx37.i2231, align 2, !tbaa !57
  %arrayidx40.i3034 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 1, i32 3
  %411 = load i8, i8* %arrayidx40.i3034, align 1, !tbaa !57
  %idxprom41.i3035 = zext i8 %411 to i32
  %arrayidx42.i3036 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i2981, i32 %idxprom41.i3035
  %412 = load i8, i8* %arrayidx42.i3036, align 1, !tbaa !57
  store i8 %412, i8* %arrayidx47.i2235, align 1, !tbaa !57
  call void %404(i8* %add.ptr1160, i32 %7, i32 %conv.i3023, i32 %conv5.i3022, i8* nonnull %15) #5
  br label %if.end1183.thread

if.end1183.thread:                                ; preds = %if.end.i3038, %deblock_edge.exit3008
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #5
  br label %do.body1199

if.end1183:                                       ; preds = %deblock_edge.exit2977, %do.body1136
  br i1 %cmp1184, label %if.then1186, label %do.body1199

if.then1186:                                      ; preds = %if.end1183
  %arraydecay1192 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 1, i32 0
  %413 = load void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)** %arrayidx1127, align 4, !tbaa !46
  %add.i3041 = add nsw i32 %0, %conv112
  %add1.i3042 = add nsw i32 %1, %conv112
  %add2.i3043 = add nsw i32 %add.i3041, 24
  %arrayidx.i3044 = getelementptr inbounds [88 x i8], [88 x i8]* @i_alpha_table, i32 0, i32 %add2.i3043
  %414 = load i8, i8* %arrayidx.i3044, align 1, !tbaa !57
  %add3.i3045 = add nsw i32 %add1.i3042, 24
  %arrayidx4.i3046 = getelementptr inbounds [88 x i8], [88 x i8]* @i_beta_table, i32 0, i32 %add3.i3045
  %415 = load i8, i8* %arrayidx4.i3046, align 1, !tbaa !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #5
  %i.i3047 = bitcast i8* %arraydecay1192 to i32*
  %416 = load i32, i32* %i.i3047, align 4, !tbaa !57
  %tobool.i3048 = icmp ne i32 %416, 0
  %417 = add i32 %add.i3041, -16
  %tobool7.i3049 = icmp ult i32 %417, 48
  %or.cond.i3050 = and i1 %tobool7.i3049, %tobool.i3048
  %418 = add i32 %add1.i3042, -16
  %tobool9.i3051 = icmp ult i32 %418, 48
  %or.cond52.i3052 = and i1 %tobool9.i3051, %or.cond.i3050
  br i1 %or.cond52.i3052, label %if.end.i3073, label %deblock_edge.exit3074

if.end.i3073:                                     ; preds = %if.then1186
  %add.ptr1189 = getelementptr inbounds i8, i8* %cond91, i32 %mul1150
  %conv5.i3053 = zext i8 %415 to i32
  %conv.i3054 = zext i8 %414 to i32
  %idxprom.i3055 = and i32 %416, 255
  %arrayidx13.i3056 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i3043, i32 %idxprom.i3055
  %419 = load i8, i8* %arrayidx13.i3056, align 1, !tbaa !57
  %conv16.i3057 = add i8 %419, 1
  store i8 %conv16.i3057, i8* %15, align 4, !tbaa !57
  %arrayidx20.i3058 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 1, i32 1
  %420 = load i8, i8* %arrayidx20.i3058, align 1, !tbaa !57
  %idxprom21.i3059 = zext i8 %420 to i32
  %arrayidx22.i3060 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i3043, i32 %idxprom21.i3059
  %421 = load i8, i8* %arrayidx22.i3060, align 1, !tbaa !57
  %conv26.i3061 = add i8 %421, 1
  store i8 %conv26.i3061, i8* %arrayidx27.i2227, align 1, !tbaa !57
  %arrayidx30.i3063 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 1, i32 2
  %422 = load i8, i8* %arrayidx30.i3063, align 1, !tbaa !57
  %idxprom31.i3064 = zext i8 %422 to i32
  %arrayidx32.i3065 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i3043, i32 %idxprom31.i3064
  %423 = load i8, i8* %arrayidx32.i3065, align 1, !tbaa !57
  %conv36.i3066 = add i8 %423, 1
  store i8 %conv36.i3066, i8* %arrayidx37.i2231, align 2, !tbaa !57
  %arrayidx40.i3068 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 1, i32 3
  %424 = load i8, i8* %arrayidx40.i3068, align 1, !tbaa !57
  %idxprom41.i3069 = zext i8 %424 to i32
  %arrayidx42.i3070 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i3043, i32 %idxprom41.i3069
  %425 = load i8, i8* %arrayidx42.i3070, align 1, !tbaa !57
  %conv46.i3071 = add i8 %425, 1
  store i8 %conv46.i3071, i8* %arrayidx47.i2235, align 1, !tbaa !57
  call void %413(i8* %add.ptr1189, i32 %7, i32 %conv.i3054, i32 %conv5.i3053, i8* nonnull %15) #5
  br label %deblock_edge.exit3074

deblock_edge.exit3074:                            ; preds = %if.then1186, %if.end.i3073
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #5
  br label %do.body1199

do.body1199:                                      ; preds = %if.end1183.thread, %if.end1183, %deblock_edge.exit3074
  %cmp11843336 = phi i1 [ false, %if.end1183.thread ], [ false, %if.end1183 ], [ true, %deblock_edge.exit3074 ]
  %arraydecay1204 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 2, i32 0
  %426 = load void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)** %arrayidx1080, align 4, !tbaa !46
  %add.i3076 = add nsw i32 %0, %conv110
  %add1.i3077 = add nsw i32 %1, %conv110
  %add2.i3078 = add nsw i32 %add.i3076, 24
  %arrayidx.i3079 = getelementptr inbounds [88 x i8], [88 x i8]* @i_alpha_table, i32 0, i32 %add2.i3078
  %427 = load i8, i8* %arrayidx.i3079, align 1, !tbaa !57
  %add3.i3080 = add nsw i32 %add1.i3077, 24
  %arrayidx4.i3081 = getelementptr inbounds [88 x i8], [88 x i8]* @i_beta_table, i32 0, i32 %add3.i3080
  %428 = load i8, i8* %arrayidx4.i3081, align 1, !tbaa !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #5
  %i.i3082 = bitcast i8* %arraydecay1204 to i32*
  %429 = load i32, i32* %i.i3082, align 4, !tbaa !57
  %tobool.i3083 = icmp ne i32 %429, 0
  %430 = add i32 %add.i3076, -16
  %tobool7.i3084 = icmp ult i32 %430, 48
  %or.cond.i3085 = and i1 %tobool7.i3084, %tobool.i3083
  %431 = add i32 %add1.i3077, -16
  %tobool9.i3086 = icmp ult i32 %431, 48
  %or.cond52.i3087 = and i1 %tobool9.i3086, %or.cond.i3085
  br i1 %or.cond52.i3087, label %if.end.i3104, label %deblock_edge.exit3105

if.end.i3104:                                     ; preds = %do.body1199
  %add.ptr1201 = getelementptr inbounds i8, i8* %add.ptr75, i32 %mul1200
  %conv5.i3088 = zext i8 %428 to i32
  %conv.i3089 = zext i8 %427 to i32
  %idxprom.i3090 = and i32 %429, 255
  %arrayidx13.i3091 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i3078, i32 %idxprom.i3090
  %432 = load i8, i8* %arrayidx13.i3091, align 1, !tbaa !57
  store i8 %432, i8* %15, align 4, !tbaa !57
  %arrayidx20.i3092 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 2, i32 1
  %433 = load i8, i8* %arrayidx20.i3092, align 1, !tbaa !57
  %idxprom21.i3093 = zext i8 %433 to i32
  %arrayidx22.i3094 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i3078, i32 %idxprom21.i3093
  %434 = load i8, i8* %arrayidx22.i3094, align 1, !tbaa !57
  store i8 %434, i8* %arrayidx27.i2227, align 1, !tbaa !57
  %arrayidx30.i3096 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 2, i32 2
  %435 = load i8, i8* %arrayidx30.i3096, align 1, !tbaa !57
  %idxprom31.i3097 = zext i8 %435 to i32
  %arrayidx32.i3098 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i3078, i32 %idxprom31.i3097
  %436 = load i8, i8* %arrayidx32.i3098, align 1, !tbaa !57
  store i8 %436, i8* %arrayidx37.i2231, align 2, !tbaa !57
  %arrayidx40.i3100 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 2, i32 3
  %437 = load i8, i8* %arrayidx40.i3100, align 1, !tbaa !57
  %idxprom41.i3101 = zext i8 %437 to i32
  %arrayidx42.i3102 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i3078, i32 %idxprom41.i3101
  %438 = load i8, i8* %arrayidx42.i3102, align 1, !tbaa !57
  store i8 %438, i8* %arrayidx47.i2235, align 1, !tbaa !57
  call void %426(i8* %add.ptr1201, i32 %6, i32 %conv.i3089, i32 %conv5.i3088, i8* nonnull %15) #5
  br label %deblock_edge.exit3105

deblock_edge.exit3105:                            ; preds = %do.body1199, %if.end.i3104
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #5
  br i1 %cmp20, label %if.then1210, label %if.else1228

if.then1210:                                      ; preds = %deblock_edge.exit3105
  %439 = load void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)** %arrayidx1080, align 4, !tbaa !46
  %add.i3107 = add nsw i32 %0, %conv112
  %add1.i3108 = add nsw i32 %1, %conv112
  %add2.i3109 = add nsw i32 %add.i3107, 24
  %arrayidx.i3110 = getelementptr inbounds [88 x i8], [88 x i8]* @i_alpha_table, i32 0, i32 %add2.i3109
  %440 = load i8, i8* %arrayidx.i3110, align 1, !tbaa !57
  %add3.i3111 = add nsw i32 %add1.i3108, 24
  %arrayidx4.i3112 = getelementptr inbounds [88 x i8], [88 x i8]* @i_beta_table, i32 0, i32 %add3.i3111
  %441 = load i8, i8* %arrayidx4.i3112, align 1, !tbaa !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #5
  %442 = load i32, i32* %i.i3082, align 4, !tbaa !57
  %tobool.i3114 = icmp ne i32 %442, 0
  %443 = add i32 %add.i3107, -16
  %tobool7.i3115 = icmp ult i32 %443, 48
  %or.cond.i3116 = and i1 %tobool7.i3115, %tobool.i3114
  %444 = add i32 %add1.i3108, -16
  %tobool9.i3117 = icmp ult i32 %444, 48
  %or.cond52.i3118 = and i1 %tobool9.i3117, %or.cond.i3116
  br i1 %or.cond52.i3118, label %if.end.i3135, label %deblock_edge.exit3136

if.end.i3135:                                     ; preds = %if.then1210
  %add.ptr1212 = getelementptr inbounds i8, i8* %cond91, i32 %mul1211
  %conv5.i3119 = zext i8 %441 to i32
  %conv.i3120 = zext i8 %440 to i32
  %idxprom.i3121 = and i32 %442, 255
  %arrayidx13.i3122 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i3109, i32 %idxprom.i3121
  %445 = load i8, i8* %arrayidx13.i3122, align 1, !tbaa !57
  store i8 %445, i8* %15, align 4, !tbaa !57
  %arrayidx20.i3123 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 2, i32 1
  %446 = load i8, i8* %arrayidx20.i3123, align 1, !tbaa !57
  %idxprom21.i3124 = zext i8 %446 to i32
  %arrayidx22.i3125 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i3109, i32 %idxprom21.i3124
  %447 = load i8, i8* %arrayidx22.i3125, align 1, !tbaa !57
  store i8 %447, i8* %arrayidx27.i2227, align 1, !tbaa !57
  %arrayidx30.i3127 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 2, i32 2
  %448 = load i8, i8* %arrayidx30.i3127, align 1, !tbaa !57
  %idxprom31.i3128 = zext i8 %448 to i32
  %arrayidx32.i3129 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i3109, i32 %idxprom31.i3128
  %449 = load i8, i8* %arrayidx32.i3129, align 1, !tbaa !57
  store i8 %449, i8* %arrayidx37.i2231, align 2, !tbaa !57
  %arrayidx40.i3131 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 2, i32 3
  %450 = load i8, i8* %arrayidx40.i3131, align 1, !tbaa !57
  %idxprom41.i3132 = zext i8 %450 to i32
  %arrayidx42.i3133 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i3109, i32 %idxprom41.i3132
  %451 = load i8, i8* %arrayidx42.i3133, align 1, !tbaa !57
  store i8 %451, i8* %arrayidx47.i2235, align 1, !tbaa !57
  call void %439(i8* %add.ptr1212, i32 %7, i32 %conv.i3120, i32 %conv5.i3119, i8* nonnull %15) #5
  %.pre3345 = load void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)** %arrayidx1080, align 4, !tbaa !46
  br label %deblock_edge.exit3136

deblock_edge.exit3136:                            ; preds = %if.then1210, %if.end.i3135
  %452 = phi void (i8*, i32, i32, i32, i8*)* [ %439, %if.then1210 ], [ %.pre3345, %if.end.i3135 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #5
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #5
  %453 = load i32, i32* %i.i3082, align 4, !tbaa !57
  %tobool.i3145 = icmp ne i32 %453, 0
  %or.cond.i3147 = and i1 %tobool7.i3115, %tobool.i3145
  %or.cond52.i3149 = and i1 %tobool9.i3117, %or.cond.i3147
  br i1 %or.cond52.i3149, label %if.end.i3166, label %deblock_edge.exit3167

if.end.i3166:                                     ; preds = %deblock_edge.exit3136
  %add.ptr1219 = getelementptr inbounds i8, i8* %cond91, i32 %cond29
  %add.ptr1221 = getelementptr inbounds i8, i8* %add.ptr1219, i32 %mul1211
  %conv5.i3150 = zext i8 %441 to i32
  %conv.i3151 = zext i8 %440 to i32
  %idxprom.i3152 = and i32 %453, 255
  %arrayidx13.i3153 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i3109, i32 %idxprom.i3152
  %454 = load i8, i8* %arrayidx13.i3153, align 1, !tbaa !57
  store i8 %454, i8* %15, align 4, !tbaa !57
  %arrayidx20.i3154 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 2, i32 1
  %455 = load i8, i8* %arrayidx20.i3154, align 1, !tbaa !57
  %idxprom21.i3155 = zext i8 %455 to i32
  %arrayidx22.i3156 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i3109, i32 %idxprom21.i3155
  %456 = load i8, i8* %arrayidx22.i3156, align 1, !tbaa !57
  store i8 %456, i8* %arrayidx27.i2227, align 1, !tbaa !57
  %arrayidx30.i3158 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 2, i32 2
  %457 = load i8, i8* %arrayidx30.i3158, align 1, !tbaa !57
  %idxprom31.i3159 = zext i8 %457 to i32
  %arrayidx32.i3160 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i3109, i32 %idxprom31.i3159
  %458 = load i8, i8* %arrayidx32.i3160, align 1, !tbaa !57
  store i8 %458, i8* %arrayidx37.i2231, align 2, !tbaa !57
  %arrayidx40.i3162 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 2, i32 3
  %459 = load i8, i8* %arrayidx40.i3162, align 1, !tbaa !57
  %idxprom41.i3163 = zext i8 %459 to i32
  %arrayidx42.i3164 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i3109, i32 %idxprom41.i3163
  %460 = load i8, i8* %arrayidx42.i3164, align 1, !tbaa !57
  store i8 %460, i8* %arrayidx47.i2235, align 1, !tbaa !57
  call void %452(i8* %add.ptr1221, i32 %7, i32 %conv.i3151, i32 %conv5.i3150, i8* nonnull %15) #5
  br label %deblock_edge.exit3167

deblock_edge.exit3167:                            ; preds = %deblock_edge.exit3136, %if.end.i3166
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #5
  br label %if.end1242

if.else1228:                                      ; preds = %deblock_edge.exit3105
  br i1 %cmp1229, label %if.then1231, label %if.end1242

if.then1231:                                      ; preds = %if.else1228
  %461 = load void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)** %arrayidx1127, align 4, !tbaa !46
  %add.i3169 = add nsw i32 %0, %conv112
  %add1.i3170 = add nsw i32 %1, %conv112
  %add2.i3171 = add nsw i32 %add.i3169, 24
  %arrayidx.i3172 = getelementptr inbounds [88 x i8], [88 x i8]* @i_alpha_table, i32 0, i32 %add2.i3171
  %462 = load i8, i8* %arrayidx.i3172, align 1, !tbaa !57
  %add3.i3173 = add nsw i32 %add1.i3170, 24
  %arrayidx4.i3174 = getelementptr inbounds [88 x i8], [88 x i8]* @i_beta_table, i32 0, i32 %add3.i3173
  %463 = load i8, i8* %arrayidx4.i3174, align 1, !tbaa !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #5
  %464 = load i32, i32* %i.i3082, align 4, !tbaa !57
  %tobool.i3176 = icmp ne i32 %464, 0
  %465 = add i32 %add.i3169, -16
  %tobool7.i3177 = icmp ult i32 %465, 48
  %or.cond.i3178 = and i1 %tobool7.i3177, %tobool.i3176
  %466 = add i32 %add1.i3170, -16
  %tobool9.i3179 = icmp ult i32 %466, 48
  %or.cond52.i3180 = and i1 %tobool9.i3179, %or.cond.i3178
  br i1 %or.cond52.i3180, label %if.end.i3201, label %deblock_edge.exit3202

if.end.i3201:                                     ; preds = %if.then1231
  %add.ptr1234 = getelementptr inbounds i8, i8* %cond91, i32 %mul1150
  %conv5.i3181 = zext i8 %463 to i32
  %conv.i3182 = zext i8 %462 to i32
  %idxprom.i3183 = and i32 %464, 255
  %arrayidx13.i3184 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i3171, i32 %idxprom.i3183
  %467 = load i8, i8* %arrayidx13.i3184, align 1, !tbaa !57
  %conv16.i3185 = add i8 %467, 1
  store i8 %conv16.i3185, i8* %15, align 4, !tbaa !57
  %arrayidx20.i3186 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 2, i32 1
  %468 = load i8, i8* %arrayidx20.i3186, align 1, !tbaa !57
  %idxprom21.i3187 = zext i8 %468 to i32
  %arrayidx22.i3188 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i3171, i32 %idxprom21.i3187
  %469 = load i8, i8* %arrayidx22.i3188, align 1, !tbaa !57
  %conv26.i3189 = add i8 %469, 1
  store i8 %conv26.i3189, i8* %arrayidx27.i2227, align 1, !tbaa !57
  %arrayidx30.i3191 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 2, i32 2
  %470 = load i8, i8* %arrayidx30.i3191, align 1, !tbaa !57
  %idxprom31.i3192 = zext i8 %470 to i32
  %arrayidx32.i3193 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i3171, i32 %idxprom31.i3192
  %471 = load i8, i8* %arrayidx32.i3193, align 1, !tbaa !57
  %conv36.i3194 = add i8 %471, 1
  store i8 %conv36.i3194, i8* %arrayidx37.i2231, align 2, !tbaa !57
  %arrayidx40.i3196 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 2, i32 3
  %472 = load i8, i8* %arrayidx40.i3196, align 1, !tbaa !57
  %idxprom41.i3197 = zext i8 %472 to i32
  %arrayidx42.i3198 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i3171, i32 %idxprom41.i3197
  %473 = load i8, i8* %arrayidx42.i3198, align 1, !tbaa !57
  %conv46.i3199 = add i8 %473, 1
  store i8 %conv46.i3199, i8* %arrayidx47.i2235, align 1, !tbaa !57
  call void %461(i8* %add.ptr1234, i32 %7, i32 %conv.i3182, i32 %conv5.i3181, i8* nonnull %15) #5
  br label %deblock_edge.exit3202

deblock_edge.exit3202:                            ; preds = %if.then1231, %if.end.i3201
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #5
  br label %if.end1242

if.end1242:                                       ; preds = %if.else1228, %deblock_edge.exit3202, %deblock_edge.exit3167
  br i1 %cmp11843336, label %if.then1245, label %do.body1258

if.then1245:                                      ; preds = %if.end1242
  %474 = load void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)** %arrayidx1127, align 4, !tbaa !46
  %add.i3204 = add nsw i32 %0, %conv112
  %add1.i3205 = add nsw i32 %1, %conv112
  %add2.i3206 = add nsw i32 %add.i3204, 24
  %arrayidx.i3207 = getelementptr inbounds [88 x i8], [88 x i8]* @i_alpha_table, i32 0, i32 %add2.i3206
  %475 = load i8, i8* %arrayidx.i3207, align 1, !tbaa !57
  %add3.i3208 = add nsw i32 %add1.i3205, 24
  %arrayidx4.i3209 = getelementptr inbounds [88 x i8], [88 x i8]* @i_beta_table, i32 0, i32 %add3.i3208
  %476 = load i8, i8* %arrayidx4.i3209, align 1, !tbaa !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #5
  %477 = load i32, i32* %i.i3082, align 4, !tbaa !57
  %tobool.i3211 = icmp ne i32 %477, 0
  %478 = add i32 %add.i3204, -16
  %tobool7.i3212 = icmp ult i32 %478, 48
  %or.cond.i3213 = and i1 %tobool7.i3212, %tobool.i3211
  %479 = add i32 %add1.i3205, -16
  %tobool9.i3214 = icmp ult i32 %479, 48
  %or.cond52.i3215 = and i1 %tobool9.i3214, %or.cond.i3213
  br i1 %or.cond52.i3215, label %if.end.i3236, label %deblock_edge.exit3237

if.end.i3236:                                     ; preds = %if.then1245
  %add.ptr1248 = getelementptr inbounds i8, i8* %cond91, i32 %mul1211
  %conv5.i3216 = zext i8 %476 to i32
  %conv.i3217 = zext i8 %475 to i32
  %idxprom.i3218 = and i32 %477, 255
  %arrayidx13.i3219 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i3206, i32 %idxprom.i3218
  %480 = load i8, i8* %arrayidx13.i3219, align 1, !tbaa !57
  %conv16.i3220 = add i8 %480, 1
  store i8 %conv16.i3220, i8* %15, align 4, !tbaa !57
  %arrayidx20.i3221 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 2, i32 1
  %481 = load i8, i8* %arrayidx20.i3221, align 1, !tbaa !57
  %idxprom21.i3222 = zext i8 %481 to i32
  %arrayidx22.i3223 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i3206, i32 %idxprom21.i3222
  %482 = load i8, i8* %arrayidx22.i3223, align 1, !tbaa !57
  %conv26.i3224 = add i8 %482, 1
  store i8 %conv26.i3224, i8* %arrayidx27.i2227, align 1, !tbaa !57
  %arrayidx30.i3226 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 2, i32 2
  %483 = load i8, i8* %arrayidx30.i3226, align 1, !tbaa !57
  %idxprom31.i3227 = zext i8 %483 to i32
  %arrayidx32.i3228 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i3206, i32 %idxprom31.i3227
  %484 = load i8, i8* %arrayidx32.i3228, align 1, !tbaa !57
  %conv36.i3229 = add i8 %484, 1
  store i8 %conv36.i3229, i8* %arrayidx37.i2231, align 2, !tbaa !57
  %arrayidx40.i3231 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 2, i32 3
  %485 = load i8, i8* %arrayidx40.i3231, align 1, !tbaa !57
  %idxprom41.i3232 = zext i8 %485 to i32
  %arrayidx42.i3233 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i3206, i32 %idxprom41.i3232
  %486 = load i8, i8* %arrayidx42.i3233, align 1, !tbaa !57
  %conv46.i3234 = add i8 %486, 1
  store i8 %conv46.i3234, i8* %arrayidx47.i2235, align 1, !tbaa !57
  call void %474(i8* %add.ptr1248, i32 %7, i32 %conv.i3217, i32 %conv5.i3216, i8* nonnull %15) #5
  br label %deblock_edge.exit3237

deblock_edge.exit3237:                            ; preds = %if.then1245, %if.end.i3236
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #5
  br label %do.body1258

do.body1258:                                      ; preds = %if.end1242, %deblock_edge.exit3237
  br i1 %tobool1137, label %if.end1305, label %if.then1260

if.then1260:                                      ; preds = %do.body1258
  %arraydecay1265 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 3, i32 0
  %487 = load void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)** %arrayidx1080, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #5
  %i.i3245 = bitcast i8* %arraydecay1265 to i32*
  %488 = load i32, i32* %i.i3245, align 4, !tbaa !57
  %tobool.i3246 = icmp ne i32 %488, 0
  %or.cond.i3248 = and i1 %tobool7.i3084, %tobool.i3246
  %or.cond52.i3250 = and i1 %tobool9.i3086, %or.cond.i3248
  br i1 %or.cond52.i3250, label %if.end.i3267, label %deblock_edge.exit3268

if.end.i3267:                                     ; preds = %if.then1260
  %add.ptr1262 = getelementptr inbounds i8, i8* %add.ptr75, i32 %mul1261
  %conv5.i3251 = zext i8 %428 to i32
  %conv.i3252 = zext i8 %427 to i32
  %idxprom.i3253 = and i32 %488, 255
  %arrayidx13.i3254 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i3078, i32 %idxprom.i3253
  %489 = load i8, i8* %arrayidx13.i3254, align 1, !tbaa !57
  store i8 %489, i8* %15, align 4, !tbaa !57
  %arrayidx20.i3255 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 3, i32 1
  %490 = load i8, i8* %arrayidx20.i3255, align 1, !tbaa !57
  %idxprom21.i3256 = zext i8 %490 to i32
  %arrayidx22.i3257 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i3078, i32 %idxprom21.i3256
  %491 = load i8, i8* %arrayidx22.i3257, align 1, !tbaa !57
  store i8 %491, i8* %arrayidx27.i2227, align 1, !tbaa !57
  %arrayidx30.i3259 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 3, i32 2
  %492 = load i8, i8* %arrayidx30.i3259, align 1, !tbaa !57
  %idxprom31.i3260 = zext i8 %492 to i32
  %arrayidx32.i3261 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i3078, i32 %idxprom31.i3260
  %493 = load i8, i8* %arrayidx32.i3261, align 1, !tbaa !57
  store i8 %493, i8* %arrayidx37.i2231, align 2, !tbaa !57
  %arrayidx40.i3263 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 3, i32 3
  %494 = load i8, i8* %arrayidx40.i3263, align 1, !tbaa !57
  %idxprom41.i3264 = zext i8 %494 to i32
  %arrayidx42.i3265 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i3078, i32 %idxprom41.i3264
  %495 = load i8, i8* %arrayidx42.i3265, align 1, !tbaa !57
  store i8 %495, i8* %arrayidx47.i2235, align 1, !tbaa !57
  call void %487(i8* %add.ptr1262, i32 %6, i32 %conv.i3252, i32 %conv5.i3251, i8* nonnull %15) #5
  br label %deblock_edge.exit3268

deblock_edge.exit3268:                            ; preds = %if.then1260, %if.end.i3267
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #5
  br i1 %cmp20, label %if.then1271, label %if.end1305

if.then1271:                                      ; preds = %deblock_edge.exit3268
  %496 = load void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)** %arrayidx1080, align 4, !tbaa !46
  %add.i3270 = add nsw i32 %0, %conv112
  %add1.i3271 = add nsw i32 %1, %conv112
  %add2.i3272 = add nsw i32 %add.i3270, 24
  %arrayidx.i3273 = getelementptr inbounds [88 x i8], [88 x i8]* @i_alpha_table, i32 0, i32 %add2.i3272
  %497 = load i8, i8* %arrayidx.i3273, align 1, !tbaa !57
  %add3.i3274 = add nsw i32 %add1.i3271, 24
  %arrayidx4.i3275 = getelementptr inbounds [88 x i8], [88 x i8]* @i_beta_table, i32 0, i32 %add3.i3274
  %498 = load i8, i8* %arrayidx4.i3275, align 1, !tbaa !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #5
  %499 = load i32, i32* %i.i3245, align 4, !tbaa !57
  %tobool.i3277 = icmp ne i32 %499, 0
  %500 = add i32 %add.i3270, -16
  %tobool7.i3278 = icmp ult i32 %500, 48
  %or.cond.i3279 = and i1 %tobool7.i3278, %tobool.i3277
  %501 = add i32 %add1.i3271, -16
  %tobool9.i3280 = icmp ult i32 %501, 48
  %or.cond52.i3281 = and i1 %tobool9.i3280, %or.cond.i3279
  br i1 %or.cond52.i3281, label %if.end.i3298, label %deblock_edge.exit3299

if.end.i3298:                                     ; preds = %if.then1271
  %add.ptr1273 = getelementptr inbounds i8, i8* %cond91, i32 %mul1272
  %conv5.i3282 = zext i8 %498 to i32
  %conv.i3283 = zext i8 %497 to i32
  %idxprom.i3284 = and i32 %499, 255
  %arrayidx13.i3285 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i3272, i32 %idxprom.i3284
  %502 = load i8, i8* %arrayidx13.i3285, align 1, !tbaa !57
  store i8 %502, i8* %15, align 4, !tbaa !57
  %arrayidx20.i3286 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 3, i32 1
  %503 = load i8, i8* %arrayidx20.i3286, align 1, !tbaa !57
  %idxprom21.i3287 = zext i8 %503 to i32
  %arrayidx22.i3288 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i3272, i32 %idxprom21.i3287
  %504 = load i8, i8* %arrayidx22.i3288, align 1, !tbaa !57
  store i8 %504, i8* %arrayidx27.i2227, align 1, !tbaa !57
  %arrayidx30.i3290 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 3, i32 2
  %505 = load i8, i8* %arrayidx30.i3290, align 1, !tbaa !57
  %idxprom31.i3291 = zext i8 %505 to i32
  %arrayidx32.i3292 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i3272, i32 %idxprom31.i3291
  %506 = load i8, i8* %arrayidx32.i3292, align 1, !tbaa !57
  store i8 %506, i8* %arrayidx37.i2231, align 2, !tbaa !57
  %arrayidx40.i3294 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 3, i32 3
  %507 = load i8, i8* %arrayidx40.i3294, align 1, !tbaa !57
  %idxprom41.i3295 = zext i8 %507 to i32
  %arrayidx42.i3296 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i3272, i32 %idxprom41.i3295
  %508 = load i8, i8* %arrayidx42.i3296, align 1, !tbaa !57
  store i8 %508, i8* %arrayidx47.i2235, align 1, !tbaa !57
  call void %496(i8* %add.ptr1273, i32 %7, i32 %conv.i3283, i32 %conv5.i3282, i8* nonnull %15) #5
  %.pre3346 = load void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)** %arrayidx1080, align 4, !tbaa !46
  br label %deblock_edge.exit3299

deblock_edge.exit3299:                            ; preds = %if.then1271, %if.end.i3298
  %509 = phi void (i8*, i32, i32, i32, i8*)* [ %496, %if.then1271 ], [ %.pre3346, %if.end.i3298 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #5
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #5
  %510 = load i32, i32* %i.i3245, align 4, !tbaa !57
  %tobool.i3308 = icmp ne i32 %510, 0
  %or.cond.i3310 = and i1 %tobool7.i3278, %tobool.i3308
  %or.cond52.i3312 = and i1 %tobool9.i3280, %or.cond.i3310
  br i1 %or.cond52.i3312, label %if.end.i3329, label %deblock_edge.exit3330

if.end.i3329:                                     ; preds = %deblock_edge.exit3299
  %add.ptr1280 = getelementptr inbounds i8, i8* %cond91, i32 %cond29
  %add.ptr1282 = getelementptr inbounds i8, i8* %add.ptr1280, i32 %mul1272
  %conv5.i3313 = zext i8 %498 to i32
  %conv.i3314 = zext i8 %497 to i32
  %idxprom.i3315 = and i32 %510, 255
  %arrayidx13.i3316 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i3272, i32 %idxprom.i3315
  %511 = load i8, i8* %arrayidx13.i3316, align 1, !tbaa !57
  store i8 %511, i8* %15, align 4, !tbaa !57
  %arrayidx20.i3317 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 3, i32 1
  %512 = load i8, i8* %arrayidx20.i3317, align 1, !tbaa !57
  %idxprom21.i3318 = zext i8 %512 to i32
  %arrayidx22.i3319 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i3272, i32 %idxprom21.i3318
  %513 = load i8, i8* %arrayidx22.i3319, align 1, !tbaa !57
  store i8 %513, i8* %arrayidx27.i2227, align 1, !tbaa !57
  %arrayidx30.i3321 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 3, i32 2
  %514 = load i8, i8* %arrayidx30.i3321, align 1, !tbaa !57
  %idxprom31.i3322 = zext i8 %514 to i32
  %arrayidx32.i3323 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i3272, i32 %idxprom31.i3322
  %515 = load i8, i8* %arrayidx32.i3323, align 1, !tbaa !57
  store i8 %515, i8* %arrayidx37.i2231, align 2, !tbaa !57
  %arrayidx40.i3325 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 3, i32 3
  %516 = load i8, i8* %arrayidx40.i3325, align 1, !tbaa !57
  %idxprom41.i3326 = zext i8 %516 to i32
  %arrayidx42.i3327 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i3272, i32 %idxprom41.i3326
  %517 = load i8, i8* %arrayidx42.i3327, align 1, !tbaa !57
  store i8 %517, i8* %arrayidx47.i2235, align 1, !tbaa !57
  call void %509(i8* %add.ptr1282, i32 %7, i32 %conv.i3314, i32 %conv5.i3313, i8* nonnull %15) #5
  br label %deblock_edge.exit3330

deblock_edge.exit3330:                            ; preds = %deblock_edge.exit3299, %if.end.i3329
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #5
  br label %if.end1305

if.end1305:                                       ; preds = %deblock_edge.exit3268, %deblock_edge.exit3330, %do.body1258
  br i1 %cmp11843336, label %if.then1308, label %if.end1321

if.then1308:                                      ; preds = %if.end1305
  %arraydecay1314 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 3, i32 0
  %518 = load void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)** %arrayidx1127, align 4, !tbaa !46
  %add.i2139 = add nsw i32 %0, %conv112
  %add1.i = add nsw i32 %1, %conv112
  %add2.i = add nsw i32 %add.i2139, 24
  %arrayidx.i2140 = getelementptr inbounds [88 x i8], [88 x i8]* @i_alpha_table, i32 0, i32 %add2.i
  %519 = load i8, i8* %arrayidx.i2140, align 1, !tbaa !57
  %add3.i = add nsw i32 %add1.i, 24
  %arrayidx4.i = getelementptr inbounds [88 x i8], [88 x i8]* @i_beta_table, i32 0, i32 %add3.i
  %520 = load i8, i8* %arrayidx4.i, align 1, !tbaa !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #5
  %i.i = bitcast i8* %arraydecay1314 to i32*
  %521 = load i32, i32* %i.i, align 4, !tbaa !57
  %tobool.i = icmp ne i32 %521, 0
  %522 = add i32 %add.i2139, -16
  %tobool7.i = icmp ult i32 %522, 48
  %or.cond.i = and i1 %tobool7.i, %tobool.i
  %523 = add i32 %add1.i, -16
  %tobool9.i = icmp ult i32 %523, 48
  %or.cond52.i = and i1 %tobool9.i, %or.cond.i
  br i1 %or.cond52.i, label %if.end.i2142, label %deblock_edge.exit

if.end.i2142:                                     ; preds = %if.then1308
  %add.ptr1311 = getelementptr inbounds i8, i8* %cond91, i32 %mul1272
  %conv5.i = zext i8 %520 to i32
  %conv.i = zext i8 %519 to i32
  %idxprom.i = and i32 %521, 255
  %arrayidx13.i = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i, i32 %idxprom.i
  %524 = load i8, i8* %arrayidx13.i, align 1, !tbaa !57
  %conv16.i = add i8 %524, 1
  store i8 %conv16.i, i8* %15, align 4, !tbaa !57
  %arrayidx20.i = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 3, i32 1
  %525 = load i8, i8* %arrayidx20.i, align 1, !tbaa !57
  %idxprom21.i = zext i8 %525 to i32
  %arrayidx22.i = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i, i32 %idxprom21.i
  %526 = load i8, i8* %arrayidx22.i, align 1, !tbaa !57
  %conv26.i = add i8 %526, 1
  store i8 %conv26.i, i8* %arrayidx27.i2227, align 1, !tbaa !57
  %arrayidx30.i2141 = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 3, i32 2
  %527 = load i8, i8* %arrayidx30.i2141, align 1, !tbaa !57
  %idxprom31.i = zext i8 %527 to i32
  %arrayidx32.i = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i, i32 %idxprom31.i
  %528 = load i8, i8* %arrayidx32.i, align 1, !tbaa !57
  %conv36.i = add i8 %528, 1
  store i8 %conv36.i, i8* %arrayidx37.i2231, align 2, !tbaa !57
  %arrayidx40.i = getelementptr inbounds [2 x [8 x [4 x i8]]], [2 x [8 x [4 x i8]]]* %32, i32 %cond67, i32 1, i32 3, i32 3
  %529 = load i8, i8* %arrayidx40.i, align 1, !tbaa !57
  %idxprom41.i = zext i8 %529 to i32
  %arrayidx42.i = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i, i32 %idxprom41.i
  %530 = load i8, i8* %arrayidx42.i, align 1, !tbaa !57
  %conv46.i = add i8 %530, 1
  store i8 %conv46.i, i8* %arrayidx47.i2235, align 1, !tbaa !57
  call void %518(i8* %add.ptr1311, i32 %7, i32 %conv.i, i32 %conv5.i, i8* nonnull %15) #5
  br label %deblock_edge.exit

deblock_edge.exit:                                ; preds = %if.then1308, %if.end.i2142
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #5
  br label %if.end1321

if.end1321:                                       ; preds = %if.end1305, %deblock_edge.exit, %if.end1133
  %add1325 = add nuw nsw i32 %mb_x.03338, 1
  %531 = load i32, i32* %i_mb_width, align 64, !tbaa !47
  %cmp31 = icmp slt i32 %add1325, %531
  br i1 %cmp31, label %if.end1321.for.body_crit_edge, label %for.cond.cleanup

if.end1321.for.body_crit_edge:                    ; preds = %if.end1321
  %.pre = load %struct.x264_frame*, %struct.x264_frame** %fdec, align 4, !tbaa !39
  br label %for.body
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local void @x264_8_prefetch_fenc(%struct.x264_t*, %struct.x264_frame*, i32, i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
define hidden void @x264_8_macroblock_deblock(%struct.x264_t* %h) local_unnamed_addr #0 {
entry:
  %tc.i = alloca [4 x i8], align 4
  %i_alpha_c0_offset = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 51, i32 33
  %0 = load i32, i32* %i_alpha_c0_offset, align 16, !tbaa !2
  %i_beta_offset = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 51, i32 34
  %1 = load i32, i32* %i_beta_offset, align 4, !tbaa !36
  %cmp = icmp slt i32 %0, %1
  %cond = select i1 %cmp, i32 %0, i32 %1
  %sub3 = sub nsw i32 15, %cond
  %i_chroma_qp_index_offset = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 53, i32 0, i32 11
  %2 = load i32, i32* %i_chroma_qp_index_offset, align 4, !tbaa !37
  %3 = icmp sgt i32 %2, 0
  %4 = sub i32 0, %2
  %spec.select.neg = select i1 %3, i32 %4, i32 0
  %sub12 = add i32 %sub3, %spec.select.neg
  %i_type = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 76
  %5 = load i32, i32* %i_type, align 16, !tbaa !71
  %switch = icmp ult i32 %5, 4
  %i_qp = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 93
  %6 = load i32, i32* %i_qp, align 32, !tbaa !72
  %i_chroma_qp = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 94
  %7 = load i32, i32* %i_chroma_qp, align 4, !tbaa !73
  %i_partition = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 77
  %8 = load i32, i32* %i_partition, align 4, !tbaa !74
  %cmp27 = icmp eq i32 %8, 16
  br i1 %cmp27, label %land.lhs.true, label %lor.lhs.false31

land.lhs.true:                                    ; preds = %entry
  %i_cbp_luma = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 80
  %9 = load i32, i32* %i_cbp_luma, align 32, !tbaa !75
  %tobool = icmp ne i32 %9, 0
  %or.cond = or i1 %switch, %tobool
  %cmp32 = icmp sgt i32 %6, %sub12
  %or.cond500 = and i1 %cmp32, %or.cond
  br i1 %or.cond500, label %if.end, label %cleanup

lor.lhs.false31:                                  ; preds = %entry
  %cmp32.old = icmp sgt i32 %6, %sub12
  br i1 %cmp32.old, label %if.end, label %cleanup

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false31
  %deblock_strength = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 16
  %10 = load [8 x [4 x i8]]*, [8 x [4 x i8]]** %deblock_strength, align 8, !tbaa !76
  br i1 %switch, label %if.then35, label %if.else

if.then35:                                        ; preds = %if.end
  %arraydecay37 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 0, i32 1, i32 0
  %i = bitcast i8* %arraydecay37 to i32*
  store i32 50529027, i32* %i, align 4, !tbaa !57
  %arraydecay40 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 0, i32 2, i32 0
  %i41 = bitcast i8* %arraydecay40 to i64*
  store i64 217020518514230019, i64* %i41, align 8, !tbaa !57
  %arraydecay44 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 1, i32 1, i32 0
  %i45 = bitcast i8* %arraydecay44 to i32*
  store i32 50529027, i32* %i45, align 4, !tbaa !57
  %arraydecay48 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 1, i32 2, i32 0
  %i49 = bitcast i8* %arraydecay48 to i64*
  store i64 217020518514230019, i64* %i49, align 8, !tbaa !57
  br label %if.end63

if.else:                                          ; preds = %if.end
  %deblock_strength50 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 99, i32 16
  %11 = load void (i8*, [40 x i8]*, [40 x [2 x i16]]*, [8 x [4 x i8]]*, i32, i32)*, void (i8*, [40 x i8]*, [40 x [2 x i16]]*, [8 x [4 x i8]]*, i32, i32)** %deblock_strength50, align 8, !tbaa !77
  %arraydecay53 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 0
  %arraydecay56 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 0
  %arraydecay59 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 0
  %i_type61 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 51, i32 2
  %12 = load i32, i32* %i_type61, align 8, !tbaa !78
  %cmp62 = icmp eq i32 %12, 1
  %conv = zext i1 %cmp62 to i32
  tail call void %11(i8* nonnull %arraydecay53, [40 x i8]* nonnull %arraydecay56, [40 x [2 x i16]]* nonnull %arraydecay59, [8 x [4 x i8]]* %10, i32 4, i32 %conv) #5
  br label %if.end63

if.end63:                                         ; preds = %if.else, %if.then35
  %b_transform_8x8 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 79
  %13 = load i32, i32* %b_transform_8x8, align 4, !tbaa !79
  %tobool65 = icmp ne i32 %13, 0
  br i1 %tobool65, label %if.end63.do.body102_crit_edge, label %do.body

if.end63.do.body102_crit_edge:                    ; preds = %if.end63
  %.pre1040 = add nsw i32 %6, %0
  %.pre1041 = add nsw i32 %6, %1
  %.pre1042 = add nsw i32 %.pre1040, 24
  %.pre1043 = add nsw i32 %.pre1041, 24
  %.pre1044 = add i32 %.pre1040, -16
  %.pre1045 = add i32 %.pre1041, -16
  br label %do.body102

do.body:                                          ; preds = %if.end63
  %arrayidx68 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 16, i32 0
  %14 = load i8*, i8** %arrayidx68, align 8, !tbaa !46
  %arraydecay71 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 0, i32 1, i32 0
  %arrayidx73 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 99, i32 0, i32 0
  %15 = load void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)** %arrayidx73, align 8, !tbaa !46
  %add.i = add nsw i32 %6, %0
  %add1.i = add nsw i32 %6, %1
  %add2.i = add nsw i32 %add.i, 24
  %arrayidx.i = getelementptr inbounds [88 x i8], [88 x i8]* @i_alpha_table, i32 0, i32 %add2.i
  %16 = load i8, i8* %arrayidx.i, align 1, !tbaa !57
  %add3.i = add nsw i32 %add1.i, 24
  %arrayidx4.i = getelementptr inbounds [88 x i8], [88 x i8]* @i_beta_table, i32 0, i32 %add3.i
  %17 = load i8, i8* %arrayidx4.i, align 1, !tbaa !57
  %18 = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #5
  %i.i = bitcast i8* %arraydecay71 to i32*
  %19 = load i32, i32* %i.i, align 4, !tbaa !57
  %tobool.i = icmp ne i32 %19, 0
  %20 = add i32 %add.i, -16
  %tobool7.i = icmp ult i32 %20, 48
  %or.cond.i = and i1 %tobool7.i, %tobool.i
  %21 = add i32 %add1.i, -16
  %tobool9.i = icmp ult i32 %21, 48
  %or.cond52.i = and i1 %tobool9.i, %or.cond.i
  br i1 %or.cond52.i, label %if.end.i, label %deblock_edge.exit

if.end.i:                                         ; preds = %do.body
  %add.ptr = getelementptr inbounds i8, i8* %14, i32 4
  %conv5.i = zext i8 %17 to i32
  %conv.i = zext i8 %16 to i32
  %idxprom.i = and i32 %19, 255
  %arrayidx13.i = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i, i32 %idxprom.i
  %22 = load i8, i8* %arrayidx13.i, align 1, !tbaa !57
  store i8 %22, i8* %18, align 4, !tbaa !57
  %arrayidx20.i = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 0, i32 1, i32 1
  %23 = load i8, i8* %arrayidx20.i, align 1, !tbaa !57
  %idxprom21.i = zext i8 %23 to i32
  %arrayidx22.i = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i, i32 %idxprom21.i
  %24 = load i8, i8* %arrayidx22.i, align 1, !tbaa !57
  %arrayidx27.i = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 1
  store i8 %24, i8* %arrayidx27.i, align 1, !tbaa !57
  %arrayidx30.i = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 0, i32 1, i32 2
  %25 = load i8, i8* %arrayidx30.i, align 1, !tbaa !57
  %idxprom31.i = zext i8 %25 to i32
  %arrayidx32.i = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i, i32 %idxprom31.i
  %26 = load i8, i8* %arrayidx32.i, align 1, !tbaa !57
  %arrayidx37.i = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 2
  store i8 %26, i8* %arrayidx37.i, align 2, !tbaa !57
  %arrayidx40.i = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 0, i32 1, i32 3
  %27 = load i8, i8* %arrayidx40.i, align 1, !tbaa !57
  %idxprom41.i = zext i8 %27 to i32
  %arrayidx42.i = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i, i32 %idxprom41.i
  %28 = load i8, i8* %arrayidx42.i, align 1, !tbaa !57
  %arrayidx47.i = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 3
  store i8 %28, i8* %arrayidx47.i, align 1, !tbaa !57
  call void %15(i8* nonnull %add.ptr, i32 32, i32 %conv.i, i32 %conv5.i, i8* nonnull %18) #5
  br label %deblock_edge.exit

deblock_edge.exit:                                ; preds = %do.body, %if.end.i
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #5
  %i_chroma_format_idc = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 22
  %29 = load i32, i32* %i_chroma_format_idc, align 8, !tbaa !41
  %cmp75 = icmp eq i32 %29, 3
  br i1 %cmp75, label %if.then77, label %do.body102

if.then77:                                        ; preds = %deblock_edge.exit
  %arrayidx81 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 16, i32 1
  %30 = load i8*, i8** %arrayidx81, align 4, !tbaa !46
  %31 = load void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)** %arrayidx73, align 8, !tbaa !46
  %add.i503 = add nsw i32 %7, %0
  %add1.i504 = add nsw i32 %7, %1
  %add2.i505 = add nsw i32 %add.i503, 24
  %arrayidx.i506 = getelementptr inbounds [88 x i8], [88 x i8]* @i_alpha_table, i32 0, i32 %add2.i505
  %32 = load i8, i8* %arrayidx.i506, align 1, !tbaa !57
  %add3.i507 = add nsw i32 %add1.i504, 24
  %arrayidx4.i508 = getelementptr inbounds [88 x i8], [88 x i8]* @i_beta_table, i32 0, i32 %add3.i507
  %33 = load i8, i8* %arrayidx4.i508, align 1, !tbaa !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #5
  %34 = load i32, i32* %i.i, align 4, !tbaa !57
  %tobool.i510 = icmp ne i32 %34, 0
  %35 = add i32 %add.i503, -16
  %tobool7.i511 = icmp ult i32 %35, 48
  %or.cond.i512 = and i1 %tobool7.i511, %tobool.i510
  %36 = add i32 %add1.i504, -16
  %tobool9.i513 = icmp ult i32 %36, 48
  %or.cond52.i514 = and i1 %tobool9.i513, %or.cond.i512
  br i1 %or.cond52.i514, label %if.end.i531, label %deblock_edge.exit532

if.end.i531:                                      ; preds = %if.then77
  %add.ptr82 = getelementptr inbounds i8, i8* %30, i32 4
  %conv5.i515 = zext i8 %33 to i32
  %conv.i516 = zext i8 %32 to i32
  %idxprom.i517 = and i32 %34, 255
  %arrayidx13.i518 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i505, i32 %idxprom.i517
  %37 = load i8, i8* %arrayidx13.i518, align 1, !tbaa !57
  store i8 %37, i8* %18, align 4, !tbaa !57
  %arrayidx20.i519 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 0, i32 1, i32 1
  %38 = load i8, i8* %arrayidx20.i519, align 1, !tbaa !57
  %idxprom21.i520 = zext i8 %38 to i32
  %arrayidx22.i521 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i505, i32 %idxprom21.i520
  %39 = load i8, i8* %arrayidx22.i521, align 1, !tbaa !57
  %arrayidx27.i522 = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 1
  store i8 %39, i8* %arrayidx27.i522, align 1, !tbaa !57
  %arrayidx30.i523 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 0, i32 1, i32 2
  %40 = load i8, i8* %arrayidx30.i523, align 1, !tbaa !57
  %idxprom31.i524 = zext i8 %40 to i32
  %arrayidx32.i525 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i505, i32 %idxprom31.i524
  %41 = load i8, i8* %arrayidx32.i525, align 1, !tbaa !57
  %arrayidx37.i526 = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 2
  store i8 %41, i8* %arrayidx37.i526, align 2, !tbaa !57
  %arrayidx40.i527 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 0, i32 1, i32 3
  %42 = load i8, i8* %arrayidx40.i527, align 1, !tbaa !57
  %idxprom41.i528 = zext i8 %42 to i32
  %arrayidx42.i529 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i505, i32 %idxprom41.i528
  %43 = load i8, i8* %arrayidx42.i529, align 1, !tbaa !57
  %arrayidx47.i530 = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 3
  store i8 %43, i8* %arrayidx47.i530, align 1, !tbaa !57
  call void %31(i8* nonnull %add.ptr82, i32 32, i32 %conv.i516, i32 %conv5.i515, i8* nonnull %18) #5
  %.pre = load void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)** %arrayidx73, align 8, !tbaa !46
  %.pre1029 = load i32, i32* %i.i, align 4, !tbaa !57
  br label %deblock_edge.exit532

deblock_edge.exit532:                             ; preds = %if.then77, %if.end.i531
  %44 = phi i32 [ %34, %if.then77 ], [ %.pre1029, %if.end.i531 ]
  %45 = phi void (i8*, i32, i32, i32, i8*)* [ %31, %if.then77 ], [ %.pre, %if.end.i531 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #5
  %arrayidx92 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 16, i32 2
  %46 = load i8*, i8** %arrayidx92, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #5
  %tobool.i541 = icmp ne i32 %44, 0
  %or.cond.i543 = and i1 %tobool7.i511, %tobool.i541
  %or.cond52.i545 = and i1 %tobool9.i513, %or.cond.i543
  br i1 %or.cond52.i545, label %if.end.i562, label %deblock_edge.exit563

if.end.i562:                                      ; preds = %deblock_edge.exit532
  %add.ptr93 = getelementptr inbounds i8, i8* %46, i32 4
  %conv5.i546 = zext i8 %33 to i32
  %conv.i547 = zext i8 %32 to i32
  %idxprom.i548 = and i32 %44, 255
  %arrayidx13.i549 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i505, i32 %idxprom.i548
  %47 = load i8, i8* %arrayidx13.i549, align 1, !tbaa !57
  store i8 %47, i8* %18, align 4, !tbaa !57
  %arrayidx20.i550 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 0, i32 1, i32 1
  %48 = load i8, i8* %arrayidx20.i550, align 1, !tbaa !57
  %idxprom21.i551 = zext i8 %48 to i32
  %arrayidx22.i552 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i505, i32 %idxprom21.i551
  %49 = load i8, i8* %arrayidx22.i552, align 1, !tbaa !57
  %arrayidx27.i553 = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 1
  store i8 %49, i8* %arrayidx27.i553, align 1, !tbaa !57
  %arrayidx30.i554 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 0, i32 1, i32 2
  %50 = load i8, i8* %arrayidx30.i554, align 1, !tbaa !57
  %idxprom31.i555 = zext i8 %50 to i32
  %arrayidx32.i556 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i505, i32 %idxprom31.i555
  %51 = load i8, i8* %arrayidx32.i556, align 1, !tbaa !57
  %arrayidx37.i557 = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 2
  store i8 %51, i8* %arrayidx37.i557, align 2, !tbaa !57
  %arrayidx40.i558 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 0, i32 1, i32 3
  %52 = load i8, i8* %arrayidx40.i558, align 1, !tbaa !57
  %idxprom41.i559 = zext i8 %52 to i32
  %arrayidx42.i560 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i505, i32 %idxprom41.i559
  %53 = load i8, i8* %arrayidx42.i560, align 1, !tbaa !57
  %arrayidx47.i561 = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 3
  store i8 %53, i8* %arrayidx47.i561, align 1, !tbaa !57
  call void %45(i8* nonnull %add.ptr93, i32 32, i32 %conv.i547, i32 %conv5.i546, i8* nonnull %18) #5
  br label %deblock_edge.exit563

deblock_edge.exit563:                             ; preds = %deblock_edge.exit532, %if.end.i562
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #5
  br label %do.body102

do.body102:                                       ; preds = %if.end63.do.body102_crit_edge, %deblock_edge.exit563, %deblock_edge.exit
  %.pre-phi1046 = phi i32 [ %.pre1045, %if.end63.do.body102_crit_edge ], [ %21, %deblock_edge.exit563 ], [ %21, %deblock_edge.exit ]
  %.pre-phi = phi i32 [ %.pre1044, %if.end63.do.body102_crit_edge ], [ %20, %deblock_edge.exit563 ], [ %20, %deblock_edge.exit ]
  %add3.i569.pre-phi = phi i32 [ %.pre1043, %if.end63.do.body102_crit_edge ], [ %add3.i, %deblock_edge.exit563 ], [ %add3.i, %deblock_edge.exit ]
  %add2.i567.pre-phi = phi i32 [ %.pre1042, %if.end63.do.body102_crit_edge ], [ %add2.i, %deblock_edge.exit563 ], [ %add2.i, %deblock_edge.exit ]
  %arrayidx106 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 16, i32 0
  %54 = load i8*, i8** %arrayidx106, align 8, !tbaa !46
  %arraydecay110 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 0, i32 2, i32 0
  %arrayidx113 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 99, i32 0, i32 0
  %55 = load void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)** %arrayidx113, align 8, !tbaa !46
  %arrayidx.i568 = getelementptr inbounds [88 x i8], [88 x i8]* @i_alpha_table, i32 0, i32 %add2.i567.pre-phi
  %56 = load i8, i8* %arrayidx.i568, align 1, !tbaa !57
  %arrayidx4.i570 = getelementptr inbounds [88 x i8], [88 x i8]* @i_beta_table, i32 0, i32 %add3.i569.pre-phi
  %57 = load i8, i8* %arrayidx4.i570, align 1, !tbaa !57
  %58 = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %58) #5
  %i.i571 = bitcast i8* %arraydecay110 to i32*
  %59 = load i32, i32* %i.i571, align 4, !tbaa !57
  %tobool.i572 = icmp ne i32 %59, 0
  %tobool7.i573 = icmp ult i32 %.pre-phi, 48
  %or.cond.i574 = and i1 %tobool7.i573, %tobool.i572
  %tobool9.i575 = icmp ult i32 %.pre-phi1046, 48
  %or.cond52.i576 = and i1 %tobool9.i575, %or.cond.i574
  br i1 %or.cond52.i576, label %if.end.i593, label %deblock_edge.exit594

if.end.i593:                                      ; preds = %do.body102
  %add.ptr107 = getelementptr inbounds i8, i8* %54, i32 8
  %conv5.i577 = zext i8 %57 to i32
  %conv.i578 = zext i8 %56 to i32
  %idxprom.i579 = and i32 %59, 255
  %arrayidx13.i580 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i567.pre-phi, i32 %idxprom.i579
  %60 = load i8, i8* %arrayidx13.i580, align 1, !tbaa !57
  store i8 %60, i8* %58, align 4, !tbaa !57
  %arrayidx20.i581 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 0, i32 2, i32 1
  %61 = load i8, i8* %arrayidx20.i581, align 1, !tbaa !57
  %idxprom21.i582 = zext i8 %61 to i32
  %arrayidx22.i583 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i567.pre-phi, i32 %idxprom21.i582
  %62 = load i8, i8* %arrayidx22.i583, align 1, !tbaa !57
  %arrayidx27.i584 = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 1
  store i8 %62, i8* %arrayidx27.i584, align 1, !tbaa !57
  %arrayidx30.i585 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 0, i32 2, i32 2
  %63 = load i8, i8* %arrayidx30.i585, align 1, !tbaa !57
  %idxprom31.i586 = zext i8 %63 to i32
  %arrayidx32.i587 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i567.pre-phi, i32 %idxprom31.i586
  %64 = load i8, i8* %arrayidx32.i587, align 1, !tbaa !57
  %arrayidx37.i588 = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 2
  store i8 %64, i8* %arrayidx37.i588, align 2, !tbaa !57
  %arrayidx40.i589 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 0, i32 2, i32 3
  %65 = load i8, i8* %arrayidx40.i589, align 1, !tbaa !57
  %idxprom41.i590 = zext i8 %65 to i32
  %arrayidx42.i591 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i567.pre-phi, i32 %idxprom41.i590
  %66 = load i8, i8* %arrayidx42.i591, align 1, !tbaa !57
  %arrayidx47.i592 = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 3
  store i8 %66, i8* %arrayidx47.i592, align 1, !tbaa !57
  call void %55(i8* nonnull %add.ptr107, i32 32, i32 %conv.i578, i32 %conv5.i577, i8* nonnull %58) #5
  br label %deblock_edge.exit594

deblock_edge.exit594:                             ; preds = %do.body102, %if.end.i593
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %58) #5
  %i_chroma_format_idc116 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 22
  %67 = load i32, i32* %i_chroma_format_idc116, align 8, !tbaa !41
  %cmp117 = icmp eq i32 %67, 3
  br i1 %cmp117, label %if.then119, label %do.end144

if.then119:                                       ; preds = %deblock_edge.exit594
  %arrayidx123 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 16, i32 1
  %68 = load i8*, i8** %arrayidx123, align 4, !tbaa !46
  %69 = load void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)** %arrayidx113, align 8, !tbaa !46
  %add.i596 = add nsw i32 %7, %0
  %add1.i597 = add nsw i32 %7, %1
  %add2.i598 = add nsw i32 %add.i596, 24
  %arrayidx.i599 = getelementptr inbounds [88 x i8], [88 x i8]* @i_alpha_table, i32 0, i32 %add2.i598
  %70 = load i8, i8* %arrayidx.i599, align 1, !tbaa !57
  %add3.i600 = add nsw i32 %add1.i597, 24
  %arrayidx4.i601 = getelementptr inbounds [88 x i8], [88 x i8]* @i_beta_table, i32 0, i32 %add3.i600
  %71 = load i8, i8* %arrayidx4.i601, align 1, !tbaa !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %58) #5
  %72 = load i32, i32* %i.i571, align 4, !tbaa !57
  %tobool.i603 = icmp ne i32 %72, 0
  %73 = add i32 %add.i596, -16
  %tobool7.i604 = icmp ult i32 %73, 48
  %or.cond.i605 = and i1 %tobool7.i604, %tobool.i603
  %74 = add i32 %add1.i597, -16
  %tobool9.i606 = icmp ult i32 %74, 48
  %or.cond52.i607 = and i1 %tobool9.i606, %or.cond.i605
  br i1 %or.cond52.i607, label %if.end.i624, label %deblock_edge.exit625

if.end.i624:                                      ; preds = %if.then119
  %add.ptr124 = getelementptr inbounds i8, i8* %68, i32 8
  %conv5.i608 = zext i8 %71 to i32
  %conv.i609 = zext i8 %70 to i32
  %idxprom.i610 = and i32 %72, 255
  %arrayidx13.i611 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i598, i32 %idxprom.i610
  %75 = load i8, i8* %arrayidx13.i611, align 1, !tbaa !57
  store i8 %75, i8* %58, align 4, !tbaa !57
  %arrayidx20.i612 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 0, i32 2, i32 1
  %76 = load i8, i8* %arrayidx20.i612, align 1, !tbaa !57
  %idxprom21.i613 = zext i8 %76 to i32
  %arrayidx22.i614 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i598, i32 %idxprom21.i613
  %77 = load i8, i8* %arrayidx22.i614, align 1, !tbaa !57
  %arrayidx27.i615 = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 1
  store i8 %77, i8* %arrayidx27.i615, align 1, !tbaa !57
  %arrayidx30.i616 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 0, i32 2, i32 2
  %78 = load i8, i8* %arrayidx30.i616, align 1, !tbaa !57
  %idxprom31.i617 = zext i8 %78 to i32
  %arrayidx32.i618 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i598, i32 %idxprom31.i617
  %79 = load i8, i8* %arrayidx32.i618, align 1, !tbaa !57
  %arrayidx37.i619 = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 2
  store i8 %79, i8* %arrayidx37.i619, align 2, !tbaa !57
  %arrayidx40.i620 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 0, i32 2, i32 3
  %80 = load i8, i8* %arrayidx40.i620, align 1, !tbaa !57
  %idxprom41.i621 = zext i8 %80 to i32
  %arrayidx42.i622 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i598, i32 %idxprom41.i621
  %81 = load i8, i8* %arrayidx42.i622, align 1, !tbaa !57
  %arrayidx47.i623 = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 3
  store i8 %81, i8* %arrayidx47.i623, align 1, !tbaa !57
  call void %69(i8* nonnull %add.ptr124, i32 32, i32 %conv.i609, i32 %conv5.i608, i8* nonnull %58) #5
  %.pre1030 = load void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)** %arrayidx113, align 8, !tbaa !46
  %.pre1031 = load i32, i32* %i.i571, align 4, !tbaa !57
  br label %deblock_edge.exit625

deblock_edge.exit625:                             ; preds = %if.then119, %if.end.i624
  %82 = phi i32 [ %72, %if.then119 ], [ %.pre1031, %if.end.i624 ]
  %83 = phi void (i8*, i32, i32, i32, i8*)* [ %69, %if.then119 ], [ %.pre1030, %if.end.i624 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %58) #5
  %arrayidx134 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 16, i32 2
  %84 = load i8*, i8** %arrayidx134, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %58) #5
  %tobool.i634 = icmp ne i32 %82, 0
  %or.cond.i636 = and i1 %tobool7.i604, %tobool.i634
  %or.cond52.i638 = and i1 %tobool9.i606, %or.cond.i636
  br i1 %or.cond52.i638, label %if.end.i655, label %deblock_edge.exit656

if.end.i655:                                      ; preds = %deblock_edge.exit625
  %add.ptr135 = getelementptr inbounds i8, i8* %84, i32 8
  %conv5.i639 = zext i8 %71 to i32
  %conv.i640 = zext i8 %70 to i32
  %idxprom.i641 = and i32 %82, 255
  %arrayidx13.i642 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i598, i32 %idxprom.i641
  %85 = load i8, i8* %arrayidx13.i642, align 1, !tbaa !57
  store i8 %85, i8* %58, align 4, !tbaa !57
  %arrayidx20.i643 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 0, i32 2, i32 1
  %86 = load i8, i8* %arrayidx20.i643, align 1, !tbaa !57
  %idxprom21.i644 = zext i8 %86 to i32
  %arrayidx22.i645 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i598, i32 %idxprom21.i644
  %87 = load i8, i8* %arrayidx22.i645, align 1, !tbaa !57
  %arrayidx27.i646 = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 1
  store i8 %87, i8* %arrayidx27.i646, align 1, !tbaa !57
  %arrayidx30.i647 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 0, i32 2, i32 2
  %88 = load i8, i8* %arrayidx30.i647, align 1, !tbaa !57
  %idxprom31.i648 = zext i8 %88 to i32
  %arrayidx32.i649 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i598, i32 %idxprom31.i648
  %89 = load i8, i8* %arrayidx32.i649, align 1, !tbaa !57
  %arrayidx37.i650 = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 2
  store i8 %89, i8* %arrayidx37.i650, align 2, !tbaa !57
  %arrayidx40.i651 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 0, i32 2, i32 3
  %90 = load i8, i8* %arrayidx40.i651, align 1, !tbaa !57
  %idxprom41.i652 = zext i8 %90 to i32
  %arrayidx42.i653 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i598, i32 %idxprom41.i652
  %91 = load i8, i8* %arrayidx42.i653, align 1, !tbaa !57
  %arrayidx47.i654 = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 3
  store i8 %91, i8* %arrayidx47.i654, align 1, !tbaa !57
  call void %83(i8* nonnull %add.ptr135, i32 32, i32 %conv.i640, i32 %conv5.i639, i8* nonnull %58) #5
  br label %deblock_edge.exit656

deblock_edge.exit656:                             ; preds = %deblock_edge.exit625, %if.end.i655
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %58) #5
  br label %do.end144

do.end144:                                        ; preds = %deblock_edge.exit656, %deblock_edge.exit594
  br i1 %tobool65, label %do.body237, label %do.body147

do.body147:                                       ; preds = %do.end144
  %92 = load i8*, i8** %arrayidx106, align 8, !tbaa !46
  %arraydecay155 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 0, i32 3, i32 0
  %93 = load void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)** %arrayidx113, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %58) #5
  %i.i664 = bitcast i8* %arraydecay155 to i32*
  %94 = load i32, i32* %i.i664, align 4, !tbaa !57
  %tobool.i665 = icmp ne i32 %94, 0
  %or.cond.i667 = and i1 %tobool7.i573, %tobool.i665
  %or.cond52.i669 = and i1 %tobool9.i575, %or.cond.i667
  br i1 %or.cond52.i669, label %if.end.i686, label %deblock_edge.exit687

if.end.i686:                                      ; preds = %do.body147
  %add.ptr152 = getelementptr inbounds i8, i8* %92, i32 12
  %conv5.i670 = zext i8 %57 to i32
  %conv.i671 = zext i8 %56 to i32
  %idxprom.i672 = and i32 %94, 255
  %arrayidx13.i673 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i567.pre-phi, i32 %idxprom.i672
  %95 = load i8, i8* %arrayidx13.i673, align 1, !tbaa !57
  store i8 %95, i8* %58, align 4, !tbaa !57
  %arrayidx20.i674 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 0, i32 3, i32 1
  %96 = load i8, i8* %arrayidx20.i674, align 1, !tbaa !57
  %idxprom21.i675 = zext i8 %96 to i32
  %arrayidx22.i676 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i567.pre-phi, i32 %idxprom21.i675
  %97 = load i8, i8* %arrayidx22.i676, align 1, !tbaa !57
  %arrayidx27.i677 = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 1
  store i8 %97, i8* %arrayidx27.i677, align 1, !tbaa !57
  %arrayidx30.i678 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 0, i32 3, i32 2
  %98 = load i8, i8* %arrayidx30.i678, align 1, !tbaa !57
  %idxprom31.i679 = zext i8 %98 to i32
  %arrayidx32.i680 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i567.pre-phi, i32 %idxprom31.i679
  %99 = load i8, i8* %arrayidx32.i680, align 1, !tbaa !57
  %arrayidx37.i681 = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 2
  store i8 %99, i8* %arrayidx37.i681, align 2, !tbaa !57
  %arrayidx40.i682 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 0, i32 3, i32 3
  %100 = load i8, i8* %arrayidx40.i682, align 1, !tbaa !57
  %idxprom41.i683 = zext i8 %100 to i32
  %arrayidx42.i684 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i567.pre-phi, i32 %idxprom41.i683
  %101 = load i8, i8* %arrayidx42.i684, align 1, !tbaa !57
  %arrayidx47.i685 = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 3
  store i8 %101, i8* %arrayidx47.i685, align 1, !tbaa !57
  call void %93(i8* nonnull %add.ptr152, i32 32, i32 %conv.i671, i32 %conv5.i670, i8* nonnull %58) #5
  br label %deblock_edge.exit687

deblock_edge.exit687:                             ; preds = %do.body147, %if.end.i686
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %58) #5
  %102 = load i32, i32* %i_chroma_format_idc116, align 8, !tbaa !41
  %cmp162 = icmp eq i32 %102, 3
  br i1 %cmp162, label %if.then164, label %do.body193

if.then164:                                       ; preds = %deblock_edge.exit687
  %arrayidx168 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 16, i32 1
  %103 = load i8*, i8** %arrayidx168, align 4, !tbaa !46
  %104 = load void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)** %arrayidx113, align 8, !tbaa !46
  %add.i689 = add nsw i32 %7, %0
  %add1.i690 = add nsw i32 %7, %1
  %add2.i691 = add nsw i32 %add.i689, 24
  %arrayidx.i692 = getelementptr inbounds [88 x i8], [88 x i8]* @i_alpha_table, i32 0, i32 %add2.i691
  %105 = load i8, i8* %arrayidx.i692, align 1, !tbaa !57
  %add3.i693 = add nsw i32 %add1.i690, 24
  %arrayidx4.i694 = getelementptr inbounds [88 x i8], [88 x i8]* @i_beta_table, i32 0, i32 %add3.i693
  %106 = load i8, i8* %arrayidx4.i694, align 1, !tbaa !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %58) #5
  %107 = load i32, i32* %i.i664, align 4, !tbaa !57
  %tobool.i696 = icmp ne i32 %107, 0
  %108 = add i32 %add.i689, -16
  %tobool7.i697 = icmp ult i32 %108, 48
  %or.cond.i698 = and i1 %tobool7.i697, %tobool.i696
  %109 = add i32 %add1.i690, -16
  %tobool9.i699 = icmp ult i32 %109, 48
  %or.cond52.i700 = and i1 %tobool9.i699, %or.cond.i698
  br i1 %or.cond52.i700, label %if.end.i717, label %deblock_edge.exit718

if.end.i717:                                      ; preds = %if.then164
  %add.ptr169 = getelementptr inbounds i8, i8* %103, i32 12
  %conv5.i701 = zext i8 %106 to i32
  %conv.i702 = zext i8 %105 to i32
  %idxprom.i703 = and i32 %107, 255
  %arrayidx13.i704 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i691, i32 %idxprom.i703
  %110 = load i8, i8* %arrayidx13.i704, align 1, !tbaa !57
  store i8 %110, i8* %58, align 4, !tbaa !57
  %arrayidx20.i705 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 0, i32 3, i32 1
  %111 = load i8, i8* %arrayidx20.i705, align 1, !tbaa !57
  %idxprom21.i706 = zext i8 %111 to i32
  %arrayidx22.i707 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i691, i32 %idxprom21.i706
  %112 = load i8, i8* %arrayidx22.i707, align 1, !tbaa !57
  %arrayidx27.i708 = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 1
  store i8 %112, i8* %arrayidx27.i708, align 1, !tbaa !57
  %arrayidx30.i709 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 0, i32 3, i32 2
  %113 = load i8, i8* %arrayidx30.i709, align 1, !tbaa !57
  %idxprom31.i710 = zext i8 %113 to i32
  %arrayidx32.i711 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i691, i32 %idxprom31.i710
  %114 = load i8, i8* %arrayidx32.i711, align 1, !tbaa !57
  %arrayidx37.i712 = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 2
  store i8 %114, i8* %arrayidx37.i712, align 2, !tbaa !57
  %arrayidx40.i713 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 0, i32 3, i32 3
  %115 = load i8, i8* %arrayidx40.i713, align 1, !tbaa !57
  %idxprom41.i714 = zext i8 %115 to i32
  %arrayidx42.i715 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i691, i32 %idxprom41.i714
  %116 = load i8, i8* %arrayidx42.i715, align 1, !tbaa !57
  %arrayidx47.i716 = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 3
  store i8 %116, i8* %arrayidx47.i716, align 1, !tbaa !57
  call void %104(i8* nonnull %add.ptr169, i32 32, i32 %conv.i702, i32 %conv5.i701, i8* nonnull %58) #5
  %.pre1032 = load void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)** %arrayidx113, align 8, !tbaa !46
  %.pre1033 = load i32, i32* %i.i664, align 4, !tbaa !57
  br label %deblock_edge.exit718

deblock_edge.exit718:                             ; preds = %if.then164, %if.end.i717
  %117 = phi i32 [ %107, %if.then164 ], [ %.pre1033, %if.end.i717 ]
  %118 = phi void (i8*, i32, i32, i32, i8*)* [ %104, %if.then164 ], [ %.pre1032, %if.end.i717 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %58) #5
  %arrayidx179 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 16, i32 2
  %119 = load i8*, i8** %arrayidx179, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %58) #5
  %tobool.i727 = icmp ne i32 %117, 0
  %or.cond.i729 = and i1 %tobool7.i697, %tobool.i727
  %or.cond52.i731 = and i1 %tobool9.i699, %or.cond.i729
  br i1 %or.cond52.i731, label %if.end.i748, label %deblock_edge.exit749

if.end.i748:                                      ; preds = %deblock_edge.exit718
  %add.ptr180 = getelementptr inbounds i8, i8* %119, i32 12
  %conv5.i732 = zext i8 %106 to i32
  %conv.i733 = zext i8 %105 to i32
  %idxprom.i734 = and i32 %117, 255
  %arrayidx13.i735 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i691, i32 %idxprom.i734
  %120 = load i8, i8* %arrayidx13.i735, align 1, !tbaa !57
  store i8 %120, i8* %58, align 4, !tbaa !57
  %arrayidx20.i736 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 0, i32 3, i32 1
  %121 = load i8, i8* %arrayidx20.i736, align 1, !tbaa !57
  %idxprom21.i737 = zext i8 %121 to i32
  %arrayidx22.i738 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i691, i32 %idxprom21.i737
  %122 = load i8, i8* %arrayidx22.i738, align 1, !tbaa !57
  %arrayidx27.i739 = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 1
  store i8 %122, i8* %arrayidx27.i739, align 1, !tbaa !57
  %arrayidx30.i740 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 0, i32 3, i32 2
  %123 = load i8, i8* %arrayidx30.i740, align 1, !tbaa !57
  %idxprom31.i741 = zext i8 %123 to i32
  %arrayidx32.i742 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i691, i32 %idxprom31.i741
  %124 = load i8, i8* %arrayidx32.i742, align 1, !tbaa !57
  %arrayidx37.i743 = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 2
  store i8 %124, i8* %arrayidx37.i743, align 2, !tbaa !57
  %arrayidx40.i744 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 0, i32 3, i32 3
  %125 = load i8, i8* %arrayidx40.i744, align 1, !tbaa !57
  %idxprom41.i745 = zext i8 %125 to i32
  %arrayidx42.i746 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i691, i32 %idxprom41.i745
  %126 = load i8, i8* %arrayidx42.i746, align 1, !tbaa !57
  %arrayidx47.i747 = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 3
  store i8 %126, i8* %arrayidx47.i747, align 1, !tbaa !57
  call void %118(i8* nonnull %add.ptr180, i32 32, i32 %conv.i733, i32 %conv5.i732, i8* nonnull %58) #5
  br label %deblock_edge.exit749

deblock_edge.exit749:                             ; preds = %deblock_edge.exit718, %if.end.i748
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %58) #5
  br label %do.body193

do.body193:                                       ; preds = %deblock_edge.exit749, %deblock_edge.exit687
  %127 = load i8*, i8** %arrayidx106, align 8, !tbaa !46
  %arraydecay201 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 1, i32 1, i32 0
  %arrayidx204 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 99, i32 0, i32 1
  %128 = load void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)** %arrayidx204, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %58) #5
  %i.i757 = bitcast i8* %arraydecay201 to i32*
  %129 = load i32, i32* %i.i757, align 4, !tbaa !57
  %tobool.i758 = icmp ne i32 %129, 0
  %or.cond.i760 = and i1 %tobool7.i573, %tobool.i758
  %or.cond52.i762 = and i1 %tobool9.i575, %or.cond.i760
  br i1 %or.cond52.i762, label %if.end.i779, label %deblock_edge.exit780

if.end.i779:                                      ; preds = %do.body193
  %add.ptr198 = getelementptr inbounds i8, i8* %127, i32 128
  %conv5.i763 = zext i8 %57 to i32
  %conv.i764 = zext i8 %56 to i32
  %idxprom.i765 = and i32 %129, 255
  %arrayidx13.i766 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i567.pre-phi, i32 %idxprom.i765
  %130 = load i8, i8* %arrayidx13.i766, align 1, !tbaa !57
  store i8 %130, i8* %58, align 4, !tbaa !57
  %arrayidx20.i767 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 1, i32 1, i32 1
  %131 = load i8, i8* %arrayidx20.i767, align 1, !tbaa !57
  %idxprom21.i768 = zext i8 %131 to i32
  %arrayidx22.i769 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i567.pre-phi, i32 %idxprom21.i768
  %132 = load i8, i8* %arrayidx22.i769, align 1, !tbaa !57
  %arrayidx27.i770 = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 1
  store i8 %132, i8* %arrayidx27.i770, align 1, !tbaa !57
  %arrayidx30.i771 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 1, i32 1, i32 2
  %133 = load i8, i8* %arrayidx30.i771, align 1, !tbaa !57
  %idxprom31.i772 = zext i8 %133 to i32
  %arrayidx32.i773 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i567.pre-phi, i32 %idxprom31.i772
  %134 = load i8, i8* %arrayidx32.i773, align 1, !tbaa !57
  %arrayidx37.i774 = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 2
  store i8 %134, i8* %arrayidx37.i774, align 2, !tbaa !57
  %arrayidx40.i775 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 1, i32 1, i32 3
  %135 = load i8, i8* %arrayidx40.i775, align 1, !tbaa !57
  %idxprom41.i776 = zext i8 %135 to i32
  %arrayidx42.i777 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i567.pre-phi, i32 %idxprom41.i776
  %136 = load i8, i8* %arrayidx42.i777, align 1, !tbaa !57
  %arrayidx47.i778 = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 3
  store i8 %136, i8* %arrayidx47.i778, align 1, !tbaa !57
  call void %128(i8* nonnull %add.ptr198, i32 32, i32 %conv.i764, i32 %conv5.i763, i8* nonnull %58) #5
  br label %deblock_edge.exit780

deblock_edge.exit780:                             ; preds = %do.body193, %if.end.i779
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %58) #5
  %137 = load i32, i32* %i_chroma_format_idc116, align 8, !tbaa !41
  %cmp208 = icmp eq i32 %137, 3
  br i1 %cmp208, label %if.then210, label %do.body237

if.then210:                                       ; preds = %deblock_edge.exit780
  %arrayidx214 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 16, i32 1
  %138 = load i8*, i8** %arrayidx214, align 4, !tbaa !46
  %139 = load void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)** %arrayidx204, align 4, !tbaa !46
  %add.i782 = add nsw i32 %7, %0
  %add1.i783 = add nsw i32 %7, %1
  %add2.i784 = add nsw i32 %add.i782, 24
  %arrayidx.i785 = getelementptr inbounds [88 x i8], [88 x i8]* @i_alpha_table, i32 0, i32 %add2.i784
  %140 = load i8, i8* %arrayidx.i785, align 1, !tbaa !57
  %add3.i786 = add nsw i32 %add1.i783, 24
  %arrayidx4.i787 = getelementptr inbounds [88 x i8], [88 x i8]* @i_beta_table, i32 0, i32 %add3.i786
  %141 = load i8, i8* %arrayidx4.i787, align 1, !tbaa !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %58) #5
  %142 = load i32, i32* %i.i757, align 4, !tbaa !57
  %tobool.i789 = icmp ne i32 %142, 0
  %143 = add i32 %add.i782, -16
  %tobool7.i790 = icmp ult i32 %143, 48
  %or.cond.i791 = and i1 %tobool7.i790, %tobool.i789
  %144 = add i32 %add1.i783, -16
  %tobool9.i792 = icmp ult i32 %144, 48
  %or.cond52.i793 = and i1 %tobool9.i792, %or.cond.i791
  br i1 %or.cond52.i793, label %if.end.i810, label %deblock_edge.exit811

if.end.i810:                                      ; preds = %if.then210
  %add.ptr215 = getelementptr inbounds i8, i8* %138, i32 128
  %conv5.i794 = zext i8 %141 to i32
  %conv.i795 = zext i8 %140 to i32
  %idxprom.i796 = and i32 %142, 255
  %arrayidx13.i797 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i784, i32 %idxprom.i796
  %145 = load i8, i8* %arrayidx13.i797, align 1, !tbaa !57
  store i8 %145, i8* %58, align 4, !tbaa !57
  %arrayidx20.i798 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 1, i32 1, i32 1
  %146 = load i8, i8* %arrayidx20.i798, align 1, !tbaa !57
  %idxprom21.i799 = zext i8 %146 to i32
  %arrayidx22.i800 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i784, i32 %idxprom21.i799
  %147 = load i8, i8* %arrayidx22.i800, align 1, !tbaa !57
  %arrayidx27.i801 = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 1
  store i8 %147, i8* %arrayidx27.i801, align 1, !tbaa !57
  %arrayidx30.i802 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 1, i32 1, i32 2
  %148 = load i8, i8* %arrayidx30.i802, align 1, !tbaa !57
  %idxprom31.i803 = zext i8 %148 to i32
  %arrayidx32.i804 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i784, i32 %idxprom31.i803
  %149 = load i8, i8* %arrayidx32.i804, align 1, !tbaa !57
  %arrayidx37.i805 = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 2
  store i8 %149, i8* %arrayidx37.i805, align 2, !tbaa !57
  %arrayidx40.i806 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 1, i32 1, i32 3
  %150 = load i8, i8* %arrayidx40.i806, align 1, !tbaa !57
  %idxprom41.i807 = zext i8 %150 to i32
  %arrayidx42.i808 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i784, i32 %idxprom41.i807
  %151 = load i8, i8* %arrayidx42.i808, align 1, !tbaa !57
  %arrayidx47.i809 = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 3
  store i8 %151, i8* %arrayidx47.i809, align 1, !tbaa !57
  call void %139(i8* nonnull %add.ptr215, i32 32, i32 %conv.i795, i32 %conv5.i794, i8* nonnull %58) #5
  %.pre1034 = load void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)** %arrayidx204, align 4, !tbaa !46
  %.pre1035 = load i32, i32* %i.i757, align 4, !tbaa !57
  br label %deblock_edge.exit811

deblock_edge.exit811:                             ; preds = %if.then210, %if.end.i810
  %152 = phi i32 [ %142, %if.then210 ], [ %.pre1035, %if.end.i810 ]
  %153 = phi void (i8*, i32, i32, i32, i8*)* [ %139, %if.then210 ], [ %.pre1034, %if.end.i810 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %58) #5
  %arrayidx225 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 16, i32 2
  %154 = load i8*, i8** %arrayidx225, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %58) #5
  %tobool.i820 = icmp ne i32 %152, 0
  %or.cond.i822 = and i1 %tobool7.i790, %tobool.i820
  %or.cond52.i824 = and i1 %tobool9.i792, %or.cond.i822
  br i1 %or.cond52.i824, label %if.end.i841, label %deblock_edge.exit842

if.end.i841:                                      ; preds = %deblock_edge.exit811
  %add.ptr226 = getelementptr inbounds i8, i8* %154, i32 128
  %conv5.i825 = zext i8 %141 to i32
  %conv.i826 = zext i8 %140 to i32
  %idxprom.i827 = and i32 %152, 255
  %arrayidx13.i828 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i784, i32 %idxprom.i827
  %155 = load i8, i8* %arrayidx13.i828, align 1, !tbaa !57
  store i8 %155, i8* %58, align 4, !tbaa !57
  %arrayidx20.i829 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 1, i32 1, i32 1
  %156 = load i8, i8* %arrayidx20.i829, align 1, !tbaa !57
  %idxprom21.i830 = zext i8 %156 to i32
  %arrayidx22.i831 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i784, i32 %idxprom21.i830
  %157 = load i8, i8* %arrayidx22.i831, align 1, !tbaa !57
  %arrayidx27.i832 = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 1
  store i8 %157, i8* %arrayidx27.i832, align 1, !tbaa !57
  %arrayidx30.i833 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 1, i32 1, i32 2
  %158 = load i8, i8* %arrayidx30.i833, align 1, !tbaa !57
  %idxprom31.i834 = zext i8 %158 to i32
  %arrayidx32.i835 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i784, i32 %idxprom31.i834
  %159 = load i8, i8* %arrayidx32.i835, align 1, !tbaa !57
  %arrayidx37.i836 = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 2
  store i8 %159, i8* %arrayidx37.i836, align 2, !tbaa !57
  %arrayidx40.i837 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 1, i32 1, i32 3
  %160 = load i8, i8* %arrayidx40.i837, align 1, !tbaa !57
  %idxprom41.i838 = zext i8 %160 to i32
  %arrayidx42.i839 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i784, i32 %idxprom41.i838
  %161 = load i8, i8* %arrayidx42.i839, align 1, !tbaa !57
  %arrayidx47.i840 = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 3
  store i8 %161, i8* %arrayidx47.i840, align 1, !tbaa !57
  call void %153(i8* nonnull %add.ptr226, i32 32, i32 %conv.i826, i32 %conv5.i825, i8* nonnull %58) #5
  br label %deblock_edge.exit842

deblock_edge.exit842:                             ; preds = %deblock_edge.exit811, %if.end.i841
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %58) #5
  br label %do.body237

do.body237:                                       ; preds = %do.end144, %deblock_edge.exit842, %deblock_edge.exit780
  %162 = load i8*, i8** %arrayidx106, align 8, !tbaa !46
  %arraydecay245 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 1, i32 2, i32 0
  %arrayidx248 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 99, i32 0, i32 1
  %163 = load void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)** %arrayidx248, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %58) #5
  %i.i850 = bitcast i8* %arraydecay245 to i32*
  %164 = load i32, i32* %i.i850, align 4, !tbaa !57
  %tobool.i851 = icmp ne i32 %164, 0
  %or.cond.i853 = and i1 %tobool7.i573, %tobool.i851
  %or.cond52.i855 = and i1 %tobool9.i575, %or.cond.i853
  br i1 %or.cond52.i855, label %if.end.i872, label %deblock_edge.exit873

if.end.i872:                                      ; preds = %do.body237
  %add.ptr242 = getelementptr inbounds i8, i8* %162, i32 256
  %conv5.i856 = zext i8 %57 to i32
  %conv.i857 = zext i8 %56 to i32
  %idxprom.i858 = and i32 %164, 255
  %arrayidx13.i859 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i567.pre-phi, i32 %idxprom.i858
  %165 = load i8, i8* %arrayidx13.i859, align 1, !tbaa !57
  store i8 %165, i8* %58, align 4, !tbaa !57
  %arrayidx20.i860 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 1, i32 2, i32 1
  %166 = load i8, i8* %arrayidx20.i860, align 1, !tbaa !57
  %idxprom21.i861 = zext i8 %166 to i32
  %arrayidx22.i862 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i567.pre-phi, i32 %idxprom21.i861
  %167 = load i8, i8* %arrayidx22.i862, align 1, !tbaa !57
  %arrayidx27.i863 = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 1
  store i8 %167, i8* %arrayidx27.i863, align 1, !tbaa !57
  %arrayidx30.i864 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 1, i32 2, i32 2
  %168 = load i8, i8* %arrayidx30.i864, align 1, !tbaa !57
  %idxprom31.i865 = zext i8 %168 to i32
  %arrayidx32.i866 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i567.pre-phi, i32 %idxprom31.i865
  %169 = load i8, i8* %arrayidx32.i866, align 1, !tbaa !57
  %arrayidx37.i867 = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 2
  store i8 %169, i8* %arrayidx37.i867, align 2, !tbaa !57
  %arrayidx40.i868 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 1, i32 2, i32 3
  %170 = load i8, i8* %arrayidx40.i868, align 1, !tbaa !57
  %idxprom41.i869 = zext i8 %170 to i32
  %arrayidx42.i870 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i567.pre-phi, i32 %idxprom41.i869
  %171 = load i8, i8* %arrayidx42.i870, align 1, !tbaa !57
  %arrayidx47.i871 = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 3
  store i8 %171, i8* %arrayidx47.i871, align 1, !tbaa !57
  call void %163(i8* nonnull %add.ptr242, i32 32, i32 %conv.i857, i32 %conv5.i856, i8* nonnull %58) #5
  br label %deblock_edge.exit873

deblock_edge.exit873:                             ; preds = %do.body237, %if.end.i872
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %58) #5
  %172 = load i32, i32* %i_chroma_format_idc116, align 8, !tbaa !41
  %cmp252 = icmp eq i32 %172, 3
  br i1 %cmp252, label %if.then254, label %do.end279

if.then254:                                       ; preds = %deblock_edge.exit873
  %arrayidx258 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 16, i32 1
  %173 = load i8*, i8** %arrayidx258, align 4, !tbaa !46
  %174 = load void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)** %arrayidx248, align 4, !tbaa !46
  %add.i875 = add nsw i32 %7, %0
  %add1.i876 = add nsw i32 %7, %1
  %add2.i877 = add nsw i32 %add.i875, 24
  %arrayidx.i878 = getelementptr inbounds [88 x i8], [88 x i8]* @i_alpha_table, i32 0, i32 %add2.i877
  %175 = load i8, i8* %arrayidx.i878, align 1, !tbaa !57
  %add3.i879 = add nsw i32 %add1.i876, 24
  %arrayidx4.i880 = getelementptr inbounds [88 x i8], [88 x i8]* @i_beta_table, i32 0, i32 %add3.i879
  %176 = load i8, i8* %arrayidx4.i880, align 1, !tbaa !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %58) #5
  %177 = load i32, i32* %i.i850, align 4, !tbaa !57
  %tobool.i882 = icmp ne i32 %177, 0
  %178 = add i32 %add.i875, -16
  %tobool7.i883 = icmp ult i32 %178, 48
  %or.cond.i884 = and i1 %tobool7.i883, %tobool.i882
  %179 = add i32 %add1.i876, -16
  %tobool9.i885 = icmp ult i32 %179, 48
  %or.cond52.i886 = and i1 %tobool9.i885, %or.cond.i884
  br i1 %or.cond52.i886, label %if.end.i903, label %deblock_edge.exit904

if.end.i903:                                      ; preds = %if.then254
  %add.ptr259 = getelementptr inbounds i8, i8* %173, i32 256
  %conv5.i887 = zext i8 %176 to i32
  %conv.i888 = zext i8 %175 to i32
  %idxprom.i889 = and i32 %177, 255
  %arrayidx13.i890 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i877, i32 %idxprom.i889
  %180 = load i8, i8* %arrayidx13.i890, align 1, !tbaa !57
  store i8 %180, i8* %58, align 4, !tbaa !57
  %arrayidx20.i891 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 1, i32 2, i32 1
  %181 = load i8, i8* %arrayidx20.i891, align 1, !tbaa !57
  %idxprom21.i892 = zext i8 %181 to i32
  %arrayidx22.i893 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i877, i32 %idxprom21.i892
  %182 = load i8, i8* %arrayidx22.i893, align 1, !tbaa !57
  %arrayidx27.i894 = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 1
  store i8 %182, i8* %arrayidx27.i894, align 1, !tbaa !57
  %arrayidx30.i895 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 1, i32 2, i32 2
  %183 = load i8, i8* %arrayidx30.i895, align 1, !tbaa !57
  %idxprom31.i896 = zext i8 %183 to i32
  %arrayidx32.i897 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i877, i32 %idxprom31.i896
  %184 = load i8, i8* %arrayidx32.i897, align 1, !tbaa !57
  %arrayidx37.i898 = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 2
  store i8 %184, i8* %arrayidx37.i898, align 2, !tbaa !57
  %arrayidx40.i899 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 1, i32 2, i32 3
  %185 = load i8, i8* %arrayidx40.i899, align 1, !tbaa !57
  %idxprom41.i900 = zext i8 %185 to i32
  %arrayidx42.i901 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i877, i32 %idxprom41.i900
  %186 = load i8, i8* %arrayidx42.i901, align 1, !tbaa !57
  %arrayidx47.i902 = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 3
  store i8 %186, i8* %arrayidx47.i902, align 1, !tbaa !57
  call void %174(i8* nonnull %add.ptr259, i32 32, i32 %conv.i888, i32 %conv5.i887, i8* nonnull %58) #5
  %.pre1036 = load void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)** %arrayidx248, align 4, !tbaa !46
  %.pre1037 = load i32, i32* %i.i850, align 4, !tbaa !57
  br label %deblock_edge.exit904

deblock_edge.exit904:                             ; preds = %if.then254, %if.end.i903
  %187 = phi i32 [ %177, %if.then254 ], [ %.pre1037, %if.end.i903 ]
  %188 = phi void (i8*, i32, i32, i32, i8*)* [ %174, %if.then254 ], [ %.pre1036, %if.end.i903 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %58) #5
  %arrayidx269 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 16, i32 2
  %189 = load i8*, i8** %arrayidx269, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %58) #5
  %tobool.i913 = icmp ne i32 %187, 0
  %or.cond.i915 = and i1 %tobool7.i883, %tobool.i913
  %or.cond52.i917 = and i1 %tobool9.i885, %or.cond.i915
  br i1 %or.cond52.i917, label %if.end.i934, label %deblock_edge.exit935

if.end.i934:                                      ; preds = %deblock_edge.exit904
  %add.ptr270 = getelementptr inbounds i8, i8* %189, i32 256
  %conv5.i918 = zext i8 %176 to i32
  %conv.i919 = zext i8 %175 to i32
  %idxprom.i920 = and i32 %187, 255
  %arrayidx13.i921 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i877, i32 %idxprom.i920
  %190 = load i8, i8* %arrayidx13.i921, align 1, !tbaa !57
  store i8 %190, i8* %58, align 4, !tbaa !57
  %arrayidx20.i922 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 1, i32 2, i32 1
  %191 = load i8, i8* %arrayidx20.i922, align 1, !tbaa !57
  %idxprom21.i923 = zext i8 %191 to i32
  %arrayidx22.i924 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i877, i32 %idxprom21.i923
  %192 = load i8, i8* %arrayidx22.i924, align 1, !tbaa !57
  %arrayidx27.i925 = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 1
  store i8 %192, i8* %arrayidx27.i925, align 1, !tbaa !57
  %arrayidx30.i926 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 1, i32 2, i32 2
  %193 = load i8, i8* %arrayidx30.i926, align 1, !tbaa !57
  %idxprom31.i927 = zext i8 %193 to i32
  %arrayidx32.i928 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i877, i32 %idxprom31.i927
  %194 = load i8, i8* %arrayidx32.i928, align 1, !tbaa !57
  %arrayidx37.i929 = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 2
  store i8 %194, i8* %arrayidx37.i929, align 2, !tbaa !57
  %arrayidx40.i930 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 1, i32 2, i32 3
  %195 = load i8, i8* %arrayidx40.i930, align 1, !tbaa !57
  %idxprom41.i931 = zext i8 %195 to i32
  %arrayidx42.i932 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i877, i32 %idxprom41.i931
  %196 = load i8, i8* %arrayidx42.i932, align 1, !tbaa !57
  %arrayidx47.i933 = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 3
  store i8 %196, i8* %arrayidx47.i933, align 1, !tbaa !57
  call void %188(i8* nonnull %add.ptr270, i32 32, i32 %conv.i919, i32 %conv5.i918, i8* nonnull %58) #5
  br label %deblock_edge.exit935

deblock_edge.exit935:                             ; preds = %deblock_edge.exit904, %if.end.i934
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %58) #5
  br label %do.end279

do.end279:                                        ; preds = %deblock_edge.exit935, %deblock_edge.exit873
  br i1 %tobool65, label %cleanup, label %do.body282

do.body282:                                       ; preds = %do.end279
  %197 = load i8*, i8** %arrayidx106, align 8, !tbaa !46
  %arraydecay290 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 1, i32 3, i32 0
  %198 = load void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)** %arrayidx248, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %58) #5
  %i.i943 = bitcast i8* %arraydecay290 to i32*
  %199 = load i32, i32* %i.i943, align 4, !tbaa !57
  %tobool.i944 = icmp ne i32 %199, 0
  %or.cond.i946 = and i1 %tobool7.i573, %tobool.i944
  %or.cond52.i948 = and i1 %tobool9.i575, %or.cond.i946
  br i1 %or.cond52.i948, label %if.end.i965, label %deblock_edge.exit966

if.end.i965:                                      ; preds = %do.body282
  %add.ptr287 = getelementptr inbounds i8, i8* %197, i32 384
  %conv5.i949 = zext i8 %57 to i32
  %conv.i950 = zext i8 %56 to i32
  %idxprom.i951 = and i32 %199, 255
  %arrayidx13.i952 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i567.pre-phi, i32 %idxprom.i951
  %200 = load i8, i8* %arrayidx13.i952, align 1, !tbaa !57
  store i8 %200, i8* %58, align 4, !tbaa !57
  %arrayidx20.i953 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 1, i32 3, i32 1
  %201 = load i8, i8* %arrayidx20.i953, align 1, !tbaa !57
  %idxprom21.i954 = zext i8 %201 to i32
  %arrayidx22.i955 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i567.pre-phi, i32 %idxprom21.i954
  %202 = load i8, i8* %arrayidx22.i955, align 1, !tbaa !57
  %arrayidx27.i956 = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 1
  store i8 %202, i8* %arrayidx27.i956, align 1, !tbaa !57
  %arrayidx30.i957 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 1, i32 3, i32 2
  %203 = load i8, i8* %arrayidx30.i957, align 1, !tbaa !57
  %idxprom31.i958 = zext i8 %203 to i32
  %arrayidx32.i959 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i567.pre-phi, i32 %idxprom31.i958
  %204 = load i8, i8* %arrayidx32.i959, align 1, !tbaa !57
  %arrayidx37.i960 = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 2
  store i8 %204, i8* %arrayidx37.i960, align 2, !tbaa !57
  %arrayidx40.i961 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 1, i32 3, i32 3
  %205 = load i8, i8* %arrayidx40.i961, align 1, !tbaa !57
  %idxprom41.i962 = zext i8 %205 to i32
  %arrayidx42.i963 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i567.pre-phi, i32 %idxprom41.i962
  %206 = load i8, i8* %arrayidx42.i963, align 1, !tbaa !57
  %arrayidx47.i964 = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 3
  store i8 %206, i8* %arrayidx47.i964, align 1, !tbaa !57
  call void %198(i8* nonnull %add.ptr287, i32 32, i32 %conv.i950, i32 %conv5.i949, i8* nonnull %58) #5
  br label %deblock_edge.exit966

deblock_edge.exit966:                             ; preds = %do.body282, %if.end.i965
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %58) #5
  %207 = load i32, i32* %i_chroma_format_idc116, align 8, !tbaa !41
  %cmp297 = icmp eq i32 %207, 3
  br i1 %cmp297, label %if.then299, label %cleanup

if.then299:                                       ; preds = %deblock_edge.exit966
  %arrayidx303 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 16, i32 1
  %208 = load i8*, i8** %arrayidx303, align 4, !tbaa !46
  %209 = load void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)** %arrayidx248, align 4, !tbaa !46
  %add.i968 = add nsw i32 %7, %0
  %add1.i969 = add nsw i32 %7, %1
  %add2.i970 = add nsw i32 %add.i968, 24
  %arrayidx.i971 = getelementptr inbounds [88 x i8], [88 x i8]* @i_alpha_table, i32 0, i32 %add2.i970
  %210 = load i8, i8* %arrayidx.i971, align 1, !tbaa !57
  %add3.i972 = add nsw i32 %add1.i969, 24
  %arrayidx4.i973 = getelementptr inbounds [88 x i8], [88 x i8]* @i_beta_table, i32 0, i32 %add3.i972
  %211 = load i8, i8* %arrayidx4.i973, align 1, !tbaa !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %58) #5
  %212 = load i32, i32* %i.i943, align 4, !tbaa !57
  %tobool.i975 = icmp ne i32 %212, 0
  %213 = add i32 %add.i968, -16
  %tobool7.i976 = icmp ult i32 %213, 48
  %or.cond.i977 = and i1 %tobool7.i976, %tobool.i975
  %214 = add i32 %add1.i969, -16
  %tobool9.i978 = icmp ult i32 %214, 48
  %or.cond52.i979 = and i1 %tobool9.i978, %or.cond.i977
  br i1 %or.cond52.i979, label %if.end.i996, label %deblock_edge.exit997

if.end.i996:                                      ; preds = %if.then299
  %add.ptr304 = getelementptr inbounds i8, i8* %208, i32 384
  %conv5.i980 = zext i8 %211 to i32
  %conv.i981 = zext i8 %210 to i32
  %idxprom.i982 = and i32 %212, 255
  %arrayidx13.i983 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i970, i32 %idxprom.i982
  %215 = load i8, i8* %arrayidx13.i983, align 1, !tbaa !57
  store i8 %215, i8* %58, align 4, !tbaa !57
  %arrayidx20.i984 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 1, i32 3, i32 1
  %216 = load i8, i8* %arrayidx20.i984, align 1, !tbaa !57
  %idxprom21.i985 = zext i8 %216 to i32
  %arrayidx22.i986 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i970, i32 %idxprom21.i985
  %217 = load i8, i8* %arrayidx22.i986, align 1, !tbaa !57
  %arrayidx27.i987 = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 1
  store i8 %217, i8* %arrayidx27.i987, align 1, !tbaa !57
  %arrayidx30.i988 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 1, i32 3, i32 2
  %218 = load i8, i8* %arrayidx30.i988, align 1, !tbaa !57
  %idxprom31.i989 = zext i8 %218 to i32
  %arrayidx32.i990 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i970, i32 %idxprom31.i989
  %219 = load i8, i8* %arrayidx32.i990, align 1, !tbaa !57
  %arrayidx37.i991 = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 2
  store i8 %219, i8* %arrayidx37.i991, align 2, !tbaa !57
  %arrayidx40.i992 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 1, i32 3, i32 3
  %220 = load i8, i8* %arrayidx40.i992, align 1, !tbaa !57
  %idxprom41.i993 = zext i8 %220 to i32
  %arrayidx42.i994 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i970, i32 %idxprom41.i993
  %221 = load i8, i8* %arrayidx42.i994, align 1, !tbaa !57
  %arrayidx47.i995 = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 3
  store i8 %221, i8* %arrayidx47.i995, align 1, !tbaa !57
  call void %209(i8* nonnull %add.ptr304, i32 32, i32 %conv.i981, i32 %conv5.i980, i8* nonnull %58) #5
  %.pre1038 = load void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)** %arrayidx248, align 4, !tbaa !46
  %.pre1039 = load i32, i32* %i.i943, align 4, !tbaa !57
  br label %deblock_edge.exit997

deblock_edge.exit997:                             ; preds = %if.then299, %if.end.i996
  %222 = phi i32 [ %212, %if.then299 ], [ %.pre1039, %if.end.i996 ]
  %223 = phi void (i8*, i32, i32, i32, i8*)* [ %209, %if.then299 ], [ %.pre1038, %if.end.i996 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %58) #5
  %arrayidx314 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 16, i32 2
  %224 = load i8*, i8** %arrayidx314, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %58) #5
  %tobool.i1006 = icmp ne i32 %222, 0
  %or.cond.i1008 = and i1 %tobool7.i976, %tobool.i1006
  %or.cond52.i1010 = and i1 %tobool9.i978, %or.cond.i1008
  br i1 %or.cond52.i1010, label %if.end.i1027, label %deblock_edge.exit1028

if.end.i1027:                                     ; preds = %deblock_edge.exit997
  %add.ptr315 = getelementptr inbounds i8, i8* %224, i32 384
  %conv5.i1011 = zext i8 %211 to i32
  %conv.i1012 = zext i8 %210 to i32
  %idxprom.i1013 = and i32 %222, 255
  %arrayidx13.i1014 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i970, i32 %idxprom.i1013
  %225 = load i8, i8* %arrayidx13.i1014, align 1, !tbaa !57
  store i8 %225, i8* %58, align 4, !tbaa !57
  %arrayidx20.i1015 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 1, i32 3, i32 1
  %226 = load i8, i8* %arrayidx20.i1015, align 1, !tbaa !57
  %idxprom21.i1016 = zext i8 %226 to i32
  %arrayidx22.i1017 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i970, i32 %idxprom21.i1016
  %227 = load i8, i8* %arrayidx22.i1017, align 1, !tbaa !57
  %arrayidx27.i1018 = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 1
  store i8 %227, i8* %arrayidx27.i1018, align 1, !tbaa !57
  %arrayidx30.i1019 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 1, i32 3, i32 2
  %228 = load i8, i8* %arrayidx30.i1019, align 1, !tbaa !57
  %idxprom31.i1020 = zext i8 %228 to i32
  %arrayidx32.i1021 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i970, i32 %idxprom31.i1020
  %229 = load i8, i8* %arrayidx32.i1021, align 1, !tbaa !57
  %arrayidx37.i1022 = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 2
  store i8 %229, i8* %arrayidx37.i1022, align 2, !tbaa !57
  %arrayidx40.i1023 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %10, i32 1, i32 3, i32 3
  %230 = load i8, i8* %arrayidx40.i1023, align 1, !tbaa !57
  %idxprom41.i1024 = zext i8 %230 to i32
  %arrayidx42.i1025 = getelementptr inbounds [88 x [4 x i8]], [88 x [4 x i8]]* @i_tc0_table, i32 0, i32 %add2.i970, i32 %idxprom41.i1024
  %231 = load i8, i8* %arrayidx42.i1025, align 1, !tbaa !57
  %arrayidx47.i1026 = getelementptr inbounds [4 x i8], [4 x i8]* %tc.i, i32 0, i32 3
  store i8 %231, i8* %arrayidx47.i1026, align 1, !tbaa !57
  call void %223(i8* nonnull %add.ptr315, i32 32, i32 %conv.i1012, i32 %conv5.i1011, i8* nonnull %58) #5
  br label %deblock_edge.exit1028

deblock_edge.exit1028:                            ; preds = %deblock_edge.exit997, %if.end.i1027
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %58) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end279, %deblock_edge.exit1028, %deblock_edge.exit966, %land.lhs.true, %lor.lhs.false31
  ret void
}

; Function Attrs: nofree norecurse nounwind
define hidden void @x264_8_deblock_init(i32 %cpu, %struct.x264_deblock_function_t* nocapture %pf, i32 %b_mbaff) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds %struct.x264_deblock_function_t, %struct.x264_deblock_function_t* %pf, i32 0, i32 0, i32 1
  store void (i8*, i32, i32, i32, i8*)* @deblock_v_luma_c, void (i8*, i32, i32, i32, i8*)** %arrayidx, align 4, !tbaa !46
  %arrayidx2 = getelementptr inbounds %struct.x264_deblock_function_t, %struct.x264_deblock_function_t* %pf, i32 0, i32 0, i32 0
  store void (i8*, i32, i32, i32, i8*)* @deblock_h_luma_c, void (i8*, i32, i32, i32, i8*)** %arrayidx2, align 4, !tbaa !46
  %arrayidx3 = getelementptr inbounds %struct.x264_deblock_function_t, %struct.x264_deblock_function_t* %pf, i32 0, i32 1, i32 1
  store void (i8*, i32, i32, i32, i8*)* @deblock_v_chroma_c, void (i8*, i32, i32, i32, i8*)** %arrayidx3, align 4, !tbaa !46
  %deblock_h_chroma_420 = getelementptr inbounds %struct.x264_deblock_function_t, %struct.x264_deblock_function_t* %pf, i32 0, i32 2
  store void (i8*, i32, i32, i32, i8*)* @deblock_h_chroma_c, void (i8*, i32, i32, i32, i8*)** %deblock_h_chroma_420, align 4, !tbaa !80
  %deblock_h_chroma_422 = getelementptr inbounds %struct.x264_deblock_function_t, %struct.x264_deblock_function_t* %pf, i32 0, i32 3
  store void (i8*, i32, i32, i32, i8*)* @deblock_h_chroma_422_c, void (i8*, i32, i32, i32, i8*)** %deblock_h_chroma_422, align 4, !tbaa !81
  %arrayidx4 = getelementptr inbounds %struct.x264_deblock_function_t, %struct.x264_deblock_function_t* %pf, i32 0, i32 4, i32 1
  store void (i8*, i32, i32, i32)* @deblock_v_luma_intra_c, void (i8*, i32, i32, i32)** %arrayidx4, align 4, !tbaa !46
  %arrayidx6 = getelementptr inbounds %struct.x264_deblock_function_t, %struct.x264_deblock_function_t* %pf, i32 0, i32 4, i32 0
  store void (i8*, i32, i32, i32)* @deblock_h_luma_intra_c, void (i8*, i32, i32, i32)** %arrayidx6, align 4, !tbaa !46
  %arrayidx7 = getelementptr inbounds %struct.x264_deblock_function_t, %struct.x264_deblock_function_t* %pf, i32 0, i32 5, i32 1
  store void (i8*, i32, i32, i32)* @deblock_v_chroma_intra_c, void (i8*, i32, i32, i32)** %arrayidx7, align 4, !tbaa !46
  %deblock_h_chroma_420_intra = getelementptr inbounds %struct.x264_deblock_function_t, %struct.x264_deblock_function_t* %pf, i32 0, i32 6
  store void (i8*, i32, i32, i32)* @deblock_h_chroma_intra_c, void (i8*, i32, i32, i32)** %deblock_h_chroma_420_intra, align 4, !tbaa !82
  %deblock_h_chroma_422_intra = getelementptr inbounds %struct.x264_deblock_function_t, %struct.x264_deblock_function_t* %pf, i32 0, i32 7
  store void (i8*, i32, i32, i32)* @deblock_h_chroma_422_intra_c, void (i8*, i32, i32, i32)** %deblock_h_chroma_422_intra, align 4, !tbaa !83
  %deblock_luma_mbaff = getelementptr inbounds %struct.x264_deblock_function_t, %struct.x264_deblock_function_t* %pf, i32 0, i32 8
  store void (i8*, i32, i32, i32, i8*)* @deblock_h_luma_mbaff_c, void (i8*, i32, i32, i32, i8*)** %deblock_luma_mbaff, align 4, !tbaa !84
  %deblock_chroma_420_mbaff = getelementptr inbounds %struct.x264_deblock_function_t, %struct.x264_deblock_function_t* %pf, i32 0, i32 10
  store void (i8*, i32, i32, i32, i8*)* @deblock_h_chroma_mbaff_c, void (i8*, i32, i32, i32, i8*)** %deblock_chroma_420_mbaff, align 4, !tbaa !85
  %deblock_luma_intra_mbaff = getelementptr inbounds %struct.x264_deblock_function_t, %struct.x264_deblock_function_t* %pf, i32 0, i32 12
  store void (i8*, i32, i32, i32)* @deblock_h_luma_intra_mbaff_c, void (i8*, i32, i32, i32)** %deblock_luma_intra_mbaff, align 4, !tbaa !86
  %deblock_chroma_420_intra_mbaff = getelementptr inbounds %struct.x264_deblock_function_t, %struct.x264_deblock_function_t* %pf, i32 0, i32 14
  store void (i8*, i32, i32, i32)* @deblock_h_chroma_intra_mbaff_c, void (i8*, i32, i32, i32)** %deblock_chroma_420_intra_mbaff, align 4, !tbaa !87
  %deblock_strength = getelementptr inbounds %struct.x264_deblock_function_t, %struct.x264_deblock_function_t* %pf, i32 0, i32 16
  store void (i8*, [40 x i8]*, [40 x [2 x i16]]*, [8 x [4 x i8]]*, i32, i32)* @deblock_strength_c, void (i8*, [40 x i8]*, [40 x [2 x i16]]*, [8 x [4 x i8]]*, i32, i32)** %deblock_strength, align 4, !tbaa !88
  %deblock_chroma_422_mbaff = getelementptr inbounds %struct.x264_deblock_function_t, %struct.x264_deblock_function_t* %pf, i32 0, i32 11
  %0 = bitcast void (i8*, i32, i32, i32, i8*)** %deblock_chroma_422_mbaff to i32*
  store i32 ptrtoint (void (i8*, i32, i32, i32, i8*)* @deblock_h_chroma_c to i32), i32* %0, align 4, !tbaa !89
  %deblock_chroma_422_intra_mbaff = getelementptr inbounds %struct.x264_deblock_function_t, %struct.x264_deblock_function_t* %pf, i32 0, i32 15
  %1 = bitcast void (i8*, i32, i32, i32)** %deblock_chroma_422_intra_mbaff to i32*
  store i32 ptrtoint (void (i8*, i32, i32, i32)* @deblock_h_chroma_intra_c to i32), i32* %1, align 4, !tbaa !90
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @deblock_v_luma_c(i8* nocapture %pix, i32 %stride, i32 %alpha, i32 %beta, i8* nocapture readonly %tc0) #3 {
entry:
  tail call fastcc void @deblock_luma_c(i8* %pix, i32 %stride, i32 1, i32 %alpha, i32 %beta, i8* %tc0)
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @deblock_h_luma_c(i8* nocapture %pix, i32 %stride, i32 %alpha, i32 %beta, i8* nocapture readonly %tc0) #3 {
entry:
  tail call fastcc void @deblock_luma_c(i8* %pix, i32 1, i32 %stride, i32 %alpha, i32 %beta, i8* %tc0)
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @deblock_v_chroma_c(i8* nocapture %pix, i32 %stride, i32 %alpha, i32 %beta, i8* nocapture readonly %tc0) #3 {
entry:
  %mul.i.i = mul nsw i32 %stride, -2
  %mul1.i.i = sub nsw i32 0, %stride
  br label %for.body.us.i

for.body.us.i:                                    ; preds = %cleanup.us.i, %entry
  %pix.addr.045.us.i = phi i8* [ %pix.addr.3.us.i, %cleanup.us.i ], [ %pix, %entry ]
  %i.044.us.i = phi i32 [ %inc19.us.i, %cleanup.us.i ], [ 0, %entry ]
  %arrayidx.us.i = getelementptr inbounds i8, i8* %tc0, i32 %i.044.us.i
  %0 = load i8, i8* %arrayidx.us.i, align 1, !tbaa !57
  %cmp1.us.i = icmp slt i8 %0, 1
  br i1 %cmp1.us.i, label %if.then.us.i, label %for.cond8.preheader.us.i

land.lhs.true.i.us.i:                             ; preds = %for.cond8.preheader.us.i
  %sub11.i.us.i = sub nsw i32 %conv.i.us.i, %conv3.i.us.i
  %1 = icmp slt i32 %sub11.i.us.i, 0
  %neg62.i.us.i = sub nsw i32 0, %sub11.i.us.i
  %2 = select i1 %1, i32 %neg62.i.us.i, i32 %sub11.i.us.i
  %cmp13.i.us.i = icmp slt i32 %2, %beta
  br i1 %cmp13.i.us.i, label %land.lhs.true15.i.us.i, label %deblock_edge_chroma_c.exit.us.i

land.lhs.true15.i.us.i:                           ; preds = %land.lhs.true.i.us.i
  %sub16.i.us.i = sub nsw i32 %conv9.i.us.i, %conv6.i.us.i
  %3 = icmp slt i32 %sub16.i.us.i, 0
  %neg63.i.us.i = sub nsw i32 0, %sub16.i.us.i
  %4 = select i1 %3, i32 %neg63.i.us.i, i32 %sub16.i.us.i
  %cmp18.i.us.i = icmp slt i32 %4, %beta
  br i1 %cmp18.i.us.i, label %if.then.i.us.i, label %deblock_edge_chroma_c.exit.us.i

if.then.i.us.i:                                   ; preds = %land.lhs.true15.i.us.i
  %sub20.i.us.i = sub nsw i32 %conv6.i.us.i, %conv3.i.us.i
  %mul21.i.us.i = shl nsw i32 %sub20.i.us.i, 2
  %sub22.i.us.i = add nuw nsw i32 %conv.i.us.i, 4
  %add.i.us.i = sub nsw i32 %sub22.i.us.i, %conv9.i.us.i
  %add23.i.us.i = add nsw i32 %add.i.us.i, %mul21.i.us.i
  %shr.i.us.i = ashr i32 %add23.i.us.i, 3
  %conv24.i.us.i = sext i8 %12 to i32
  %sub25.i.us.i = sub nsw i32 0, %conv24.i.us.i
  %cmp.i.i.us.i = icmp slt i32 %shr.i.us.i, %sub25.i.us.i
  %cmp1.i.i.us.i = icmp sgt i32 %shr.i.us.i, %conv24.i.us.i
  %cond.i.i.us.i = select i1 %cmp1.i.i.us.i, i32 %conv24.i.us.i, i32 %shr.i.us.i
  %cond5.i.i.us.i = select i1 %cmp.i.i.us.i, i32 %sub25.i.us.i, i32 %cond.i.i.us.i
  %add28.i.us.i = add nsw i32 %cond5.i.i.us.i, %conv3.i.us.i
  %tobool.i65.i.us.i = icmp ugt i32 %add28.i.us.i, 255
  %sub.i66.i.us.i = sub nsw i32 0, %add28.i.us.i
  %shr.i67.i.us.i = ashr i32 %sub.i66.i.us.i, 31
  %cond.i68.i.us.i = select i1 %tobool.i65.i.us.i, i32 %shr.i67.i.us.i, i32 %add28.i.us.i
  %conv.i69.i.us.i = trunc i32 %cond.i68.i.us.i to i8
  store i8 %conv.i69.i.us.i, i8* %arrayidx2.i.us.i, align 1, !tbaa !57
  %sub32.i.us.i = sub nsw i32 %conv6.i.us.i, %cond5.i.i.us.i
  %tobool.i.i.us.i = icmp ugt i32 %sub32.i.us.i, 255
  %sub.i.i.us.i = sub nsw i32 0, %sub32.i.us.i
  %shr.i.i.us.i = ashr i32 %sub.i.i.us.i, 31
  %cond.i64.i.us.i = select i1 %tobool.i.i.us.i, i32 %shr.i.i.us.i, i32 %sub32.i.us.i
  %conv.i.i.us.i = trunc i32 %cond.i64.i.us.i to i8
  store i8 %conv.i.i.us.i, i8* %pix.addr.142.us.i, align 1, !tbaa !57
  %.pre48.i = load i8, i8* %arrayidx.us.i, align 1, !tbaa !57
  br label %deblock_edge_chroma_c.exit.us.i

deblock_edge_chroma_c.exit.us.i:                  ; preds = %for.cond8.preheader.us.i, %if.then.i.us.i, %land.lhs.true15.i.us.i, %land.lhs.true.i.us.i
  %5 = phi i8 [ %.pre48.i, %if.then.i.us.i ], [ %12, %land.lhs.true15.i.us.i ], [ %12, %land.lhs.true.i.us.i ], [ %12, %for.cond8.preheader.us.i ]
  %incdec.ptr.us.i = getelementptr inbounds i8, i8* %pix.addr.142.us.i, i32 1
  %arrayidx.i.us.1.i = getelementptr inbounds i8, i8* %incdec.ptr.us.i, i32 %mul.i.i
  %6 = load i8, i8* %arrayidx.i.us.1.i, align 1, !tbaa !57
  %conv.i.us.1.i = zext i8 %6 to i32
  %arrayidx2.i.us.1.i = getelementptr inbounds i8, i8* %incdec.ptr.us.i, i32 %mul1.i.i
  %7 = load i8, i8* %arrayidx2.i.us.1.i, align 1, !tbaa !57
  %conv3.i.us.1.i = zext i8 %7 to i32
  %8 = load i8, i8* %incdec.ptr.us.i, align 1, !tbaa !57
  %conv6.i.us.1.i = zext i8 %8 to i32
  %arrayidx8.i.us.1.i = getelementptr inbounds i8, i8* %incdec.ptr.us.i, i32 %stride
  %9 = load i8, i8* %arrayidx8.i.us.1.i, align 1, !tbaa !57
  %conv9.i.us.1.i = zext i8 %9 to i32
  %sub.i.us.1.i = sub nsw i32 %conv3.i.us.1.i, %conv6.i.us.1.i
  %10 = icmp slt i32 %sub.i.us.1.i, 0
  %neg.i.us.1.i = sub nsw i32 0, %sub.i.us.1.i
  %11 = select i1 %10, i32 %neg.i.us.1.i, i32 %sub.i.us.1.i
  %cmp.i.us.1.i = icmp slt i32 %11, %alpha
  br i1 %cmp.i.us.1.i, label %land.lhs.true.i.us.1.i, label %deblock_edge_chroma_c.exit.us.1.i

if.then.us.i:                                     ; preds = %for.body.us.i
  %add.ptr.us.i = getelementptr inbounds i8, i8* %pix.addr.045.us.i, i32 4
  br label %cleanup.us.i

cleanup.us.i:                                     ; preds = %deblock_edge_chroma_c.exit.us.1.i, %if.then.us.i
  %pix.addr.3.us.i = phi i8* [ %add.ptr.us.i, %if.then.us.i ], [ %add.ptr16.us.i, %deblock_edge_chroma_c.exit.us.1.i ]
  %inc19.us.i = add nuw nsw i32 %i.044.us.i, 1
  %exitcond47.i = icmp eq i32 %inc19.us.i, 4
  br i1 %exitcond47.i, label %deblock_chroma_c.exit, label %for.body.us.i

for.cond8.preheader.us.i:                         ; preds = %for.body.us.i, %deblock_edge_chroma_c.exit.us.1.for.cond8.preheader.us_crit_edge.i
  %12 = phi i8 [ %.pre.i, %deblock_edge_chroma_c.exit.us.1.for.cond8.preheader.us_crit_edge.i ], [ %0, %for.body.us.i ]
  %d.043.us.i = phi i32 [ %inc15.us.i, %deblock_edge_chroma_c.exit.us.1.for.cond8.preheader.us_crit_edge.i ], [ 0, %for.body.us.i ]
  %pix.addr.142.us.i = phi i8* [ %add.ptr16.us.i, %deblock_edge_chroma_c.exit.us.1.for.cond8.preheader.us_crit_edge.i ], [ %pix.addr.045.us.i, %for.body.us.i ]
  %arrayidx.i.us.i = getelementptr inbounds i8, i8* %pix.addr.142.us.i, i32 %mul.i.i
  %13 = load i8, i8* %arrayidx.i.us.i, align 1, !tbaa !57
  %conv.i.us.i = zext i8 %13 to i32
  %arrayidx2.i.us.i = getelementptr inbounds i8, i8* %pix.addr.142.us.i, i32 %mul1.i.i
  %14 = load i8, i8* %arrayidx2.i.us.i, align 1, !tbaa !57
  %conv3.i.us.i = zext i8 %14 to i32
  %15 = load i8, i8* %pix.addr.142.us.i, align 1, !tbaa !57
  %conv6.i.us.i = zext i8 %15 to i32
  %arrayidx8.i.us.i = getelementptr inbounds i8, i8* %pix.addr.142.us.i, i32 %stride
  %16 = load i8, i8* %arrayidx8.i.us.i, align 1, !tbaa !57
  %conv9.i.us.i = zext i8 %16 to i32
  %sub.i.us.i = sub nsw i32 %conv3.i.us.i, %conv6.i.us.i
  %17 = icmp slt i32 %sub.i.us.i, 0
  %neg.i.us.i = sub nsw i32 0, %sub.i.us.i
  %18 = select i1 %17, i32 %neg.i.us.i, i32 %sub.i.us.i
  %cmp.i.us.i = icmp slt i32 %18, %alpha
  br i1 %cmp.i.us.i, label %land.lhs.true.i.us.i, label %deblock_edge_chroma_c.exit.us.i

land.lhs.true.i.us.1.i:                           ; preds = %deblock_edge_chroma_c.exit.us.i
  %sub11.i.us.1.i = sub nsw i32 %conv.i.us.1.i, %conv3.i.us.1.i
  %19 = icmp slt i32 %sub11.i.us.1.i, 0
  %neg62.i.us.1.i = sub nsw i32 0, %sub11.i.us.1.i
  %20 = select i1 %19, i32 %neg62.i.us.1.i, i32 %sub11.i.us.1.i
  %cmp13.i.us.1.i = icmp slt i32 %20, %beta
  br i1 %cmp13.i.us.1.i, label %land.lhs.true15.i.us.1.i, label %deblock_edge_chroma_c.exit.us.1.i

land.lhs.true15.i.us.1.i:                         ; preds = %land.lhs.true.i.us.1.i
  %sub16.i.us.1.i = sub nsw i32 %conv9.i.us.1.i, %conv6.i.us.1.i
  %21 = icmp slt i32 %sub16.i.us.1.i, 0
  %neg63.i.us.1.i = sub nsw i32 0, %sub16.i.us.1.i
  %22 = select i1 %21, i32 %neg63.i.us.1.i, i32 %sub16.i.us.1.i
  %cmp18.i.us.1.i = icmp slt i32 %22, %beta
  br i1 %cmp18.i.us.1.i, label %if.then.i.us.1.i, label %deblock_edge_chroma_c.exit.us.1.i

if.then.i.us.1.i:                                 ; preds = %land.lhs.true15.i.us.1.i
  %sub20.i.us.1.i = sub nsw i32 %conv6.i.us.1.i, %conv3.i.us.1.i
  %mul21.i.us.1.i = shl nsw i32 %sub20.i.us.1.i, 2
  %sub22.i.us.1.i = add nuw nsw i32 %conv.i.us.1.i, 4
  %add.i.us.1.i = sub nsw i32 %sub22.i.us.1.i, %conv9.i.us.1.i
  %add23.i.us.1.i = add nsw i32 %add.i.us.1.i, %mul21.i.us.1.i
  %shr.i.us.1.i = ashr i32 %add23.i.us.1.i, 3
  %conv24.i.us.1.i = sext i8 %5 to i32
  %sub25.i.us.1.i = sub nsw i32 0, %conv24.i.us.1.i
  %cmp.i.i.us.1.i = icmp slt i32 %shr.i.us.1.i, %sub25.i.us.1.i
  %cmp1.i.i.us.1.i = icmp sgt i32 %shr.i.us.1.i, %conv24.i.us.1.i
  %cond.i.i.us.1.i = select i1 %cmp1.i.i.us.1.i, i32 %conv24.i.us.1.i, i32 %shr.i.us.1.i
  %cond5.i.i.us.1.i = select i1 %cmp.i.i.us.1.i, i32 %sub25.i.us.1.i, i32 %cond.i.i.us.1.i
  %add28.i.us.1.i = add nsw i32 %cond5.i.i.us.1.i, %conv3.i.us.1.i
  %tobool.i65.i.us.1.i = icmp ugt i32 %add28.i.us.1.i, 255
  %sub.i66.i.us.1.i = sub nsw i32 0, %add28.i.us.1.i
  %shr.i67.i.us.1.i = ashr i32 %sub.i66.i.us.1.i, 31
  %cond.i68.i.us.1.i = select i1 %tobool.i65.i.us.1.i, i32 %shr.i67.i.us.1.i, i32 %add28.i.us.1.i
  %conv.i69.i.us.1.i = trunc i32 %cond.i68.i.us.1.i to i8
  store i8 %conv.i69.i.us.1.i, i8* %arrayidx2.i.us.1.i, align 1, !tbaa !57
  %sub32.i.us.1.i = sub nsw i32 %conv6.i.us.1.i, %cond5.i.i.us.1.i
  %tobool.i.i.us.1.i = icmp ugt i32 %sub32.i.us.1.i, 255
  %sub.i.i.us.1.i = sub nsw i32 0, %sub32.i.us.1.i
  %shr.i.i.us.1.i = ashr i32 %sub.i.i.us.1.i, 31
  %cond.i64.i.us.1.i = select i1 %tobool.i.i.us.1.i, i32 %shr.i.i.us.1.i, i32 %sub32.i.us.1.i
  %conv.i.i.us.1.i = trunc i32 %cond.i64.i.us.1.i to i8
  store i8 %conv.i.i.us.1.i, i8* %incdec.ptr.us.i, align 1, !tbaa !57
  br label %deblock_edge_chroma_c.exit.us.1.i

deblock_edge_chroma_c.exit.us.1.i:                ; preds = %if.then.i.us.1.i, %land.lhs.true15.i.us.1.i, %land.lhs.true.i.us.1.i, %deblock_edge_chroma_c.exit.us.i
  %inc15.us.i = add nuw nsw i32 %d.043.us.i, 1
  %add.ptr16.us.i = getelementptr inbounds i8, i8* %pix.addr.142.us.i, i32 2
  %exitcond.i = icmp eq i32 %inc15.us.i, 2
  br i1 %exitcond.i, label %cleanup.us.i, label %deblock_edge_chroma_c.exit.us.1.for.cond8.preheader.us_crit_edge.i

deblock_edge_chroma_c.exit.us.1.for.cond8.preheader.us_crit_edge.i: ; preds = %deblock_edge_chroma_c.exit.us.1.i
  %.pre.i = load i8, i8* %arrayidx.us.i, align 1, !tbaa !57
  br label %for.cond8.preheader.us.i

deblock_chroma_c.exit:                            ; preds = %cleanup.us.i
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @deblock_h_chroma_c(i8* nocapture %pix, i32 %stride, i32 %alpha, i32 %beta, i8* nocapture readonly %tc0) #3 {
entry:
  %mul.i = shl nsw i32 %stride, 1
  br label %for.body.us.i

for.body.us.i:                                    ; preds = %cleanup.us.i, %entry
  %pix.addr.045.us.i = phi i8* [ %pix.addr.3.us.i, %cleanup.us.i ], [ %pix, %entry ]
  %i.044.us.i = phi i32 [ %inc19.us.i, %cleanup.us.i ], [ 0, %entry ]
  %arrayidx.us.i = getelementptr inbounds i8, i8* %tc0, i32 %i.044.us.i
  %0 = load i8, i8* %arrayidx.us.i, align 1, !tbaa !57
  %cmp1.us.i = icmp slt i8 %0, 1
  br i1 %cmp1.us.i, label %if.then.us.i, label %for.cond8.preheader.us.i

land.lhs.true.i.us.i:                             ; preds = %for.cond8.preheader.us.i
  %sub11.i.us.i = sub nsw i32 %conv.i.us.i, %conv3.i.us.i
  %1 = icmp slt i32 %sub11.i.us.i, 0
  %neg62.i.us.i = sub nsw i32 0, %sub11.i.us.i
  %2 = select i1 %1, i32 %neg62.i.us.i, i32 %sub11.i.us.i
  %cmp13.i.us.i = icmp slt i32 %2, %beta
  br i1 %cmp13.i.us.i, label %land.lhs.true15.i.us.i, label %deblock_edge_chroma_c.exit.us.i

land.lhs.true15.i.us.i:                           ; preds = %land.lhs.true.i.us.i
  %sub16.i.us.i = sub nsw i32 %conv9.i.us.i, %conv6.i.us.i
  %3 = icmp slt i32 %sub16.i.us.i, 0
  %neg63.i.us.i = sub nsw i32 0, %sub16.i.us.i
  %4 = select i1 %3, i32 %neg63.i.us.i, i32 %sub16.i.us.i
  %cmp18.i.us.i = icmp slt i32 %4, %beta
  br i1 %cmp18.i.us.i, label %if.then.i.us.i, label %deblock_edge_chroma_c.exit.us.i

if.then.i.us.i:                                   ; preds = %land.lhs.true15.i.us.i
  %sub20.i.us.i = sub nsw i32 %conv6.i.us.i, %conv3.i.us.i
  %mul21.i.us.i = shl nsw i32 %sub20.i.us.i, 2
  %sub22.i.us.i = add nuw nsw i32 %conv.i.us.i, 4
  %add.i.us.i = sub nsw i32 %sub22.i.us.i, %conv9.i.us.i
  %add23.i.us.i = add nsw i32 %add.i.us.i, %mul21.i.us.i
  %shr.i.us.i = ashr i32 %add23.i.us.i, 3
  %conv24.i.us.i = sext i8 %12 to i32
  %sub25.i.us.i = sub nsw i32 0, %conv24.i.us.i
  %cmp.i.i.us.i = icmp slt i32 %shr.i.us.i, %sub25.i.us.i
  %cmp1.i.i.us.i = icmp sgt i32 %shr.i.us.i, %conv24.i.us.i
  %cond.i.i.us.i = select i1 %cmp1.i.i.us.i, i32 %conv24.i.us.i, i32 %shr.i.us.i
  %cond5.i.i.us.i = select i1 %cmp.i.i.us.i, i32 %sub25.i.us.i, i32 %cond.i.i.us.i
  %add28.i.us.i = add nsw i32 %cond5.i.i.us.i, %conv3.i.us.i
  %tobool.i65.i.us.i = icmp ugt i32 %add28.i.us.i, 255
  %sub.i66.i.us.i = sub nsw i32 0, %add28.i.us.i
  %shr.i67.i.us.i = ashr i32 %sub.i66.i.us.i, 31
  %cond.i68.i.us.i = select i1 %tobool.i65.i.us.i, i32 %shr.i67.i.us.i, i32 %add28.i.us.i
  %conv.i69.i.us.i = trunc i32 %cond.i68.i.us.i to i8
  store i8 %conv.i69.i.us.i, i8* %arrayidx2.i.us.i, align 1, !tbaa !57
  %sub32.i.us.i = sub nsw i32 %conv6.i.us.i, %cond5.i.i.us.i
  %tobool.i.i.us.i = icmp ugt i32 %sub32.i.us.i, 255
  %sub.i.i.us.i = sub nsw i32 0, %sub32.i.us.i
  %shr.i.i.us.i = ashr i32 %sub.i.i.us.i, 31
  %cond.i64.i.us.i = select i1 %tobool.i.i.us.i, i32 %shr.i.i.us.i, i32 %sub32.i.us.i
  %conv.i.i.us.i = trunc i32 %cond.i64.i.us.i to i8
  store i8 %conv.i.i.us.i, i8* %pix.addr.142.us.i, align 1, !tbaa !57
  %.pre48.i = load i8, i8* %arrayidx.us.i, align 1, !tbaa !57
  br label %deblock_edge_chroma_c.exit.us.i

deblock_edge_chroma_c.exit.us.i:                  ; preds = %for.cond8.preheader.us.i, %if.then.i.us.i, %land.lhs.true15.i.us.i, %land.lhs.true.i.us.i
  %5 = phi i8 [ %.pre48.i, %if.then.i.us.i ], [ %12, %land.lhs.true15.i.us.i ], [ %12, %land.lhs.true.i.us.i ], [ %12, %for.cond8.preheader.us.i ]
  %incdec.ptr.us.i = getelementptr inbounds i8, i8* %pix.addr.142.us.i, i32 1
  %arrayidx.i.us.1.i = getelementptr inbounds i8, i8* %pix.addr.142.us.i, i32 -3
  %6 = load i8, i8* %arrayidx.i.us.1.i, align 1, !tbaa !57
  %conv.i.us.1.i = zext i8 %6 to i32
  %arrayidx2.i.us.1.i = getelementptr inbounds i8, i8* %pix.addr.142.us.i, i32 -1
  %7 = load i8, i8* %arrayidx2.i.us.1.i, align 1, !tbaa !57
  %conv3.i.us.1.i = zext i8 %7 to i32
  %8 = load i8, i8* %incdec.ptr.us.i, align 1, !tbaa !57
  %conv6.i.us.1.i = zext i8 %8 to i32
  %arrayidx8.i.us.1.i = getelementptr inbounds i8, i8* %pix.addr.142.us.i, i32 3
  %9 = load i8, i8* %arrayidx8.i.us.1.i, align 1, !tbaa !57
  %conv9.i.us.1.i = zext i8 %9 to i32
  %sub.i.us.1.i = sub nsw i32 %conv3.i.us.1.i, %conv6.i.us.1.i
  %10 = icmp slt i32 %sub.i.us.1.i, 0
  %neg.i.us.1.i = sub nsw i32 0, %sub.i.us.1.i
  %11 = select i1 %10, i32 %neg.i.us.1.i, i32 %sub.i.us.1.i
  %cmp.i.us.1.i = icmp slt i32 %11, %alpha
  br i1 %cmp.i.us.1.i, label %land.lhs.true.i.us.1.i, label %deblock_edge_chroma_c.exit.us.1.i

if.then.us.i:                                     ; preds = %for.body.us.i
  %add.ptr.us.i = getelementptr inbounds i8, i8* %pix.addr.045.us.i, i32 %mul.i
  br label %cleanup.us.i

cleanup.us.i:                                     ; preds = %deblock_edge_chroma_c.exit.us.1.i, %if.then.us.i
  %pix.addr.3.us.i = phi i8* [ %add.ptr.us.i, %if.then.us.i ], [ %add.ptr16.us.i, %deblock_edge_chroma_c.exit.us.1.i ]
  %inc19.us.i = add nuw nsw i32 %i.044.us.i, 1
  %exitcond47.i = icmp eq i32 %inc19.us.i, 4
  br i1 %exitcond47.i, label %deblock_chroma_c.exit, label %for.body.us.i

for.cond8.preheader.us.i:                         ; preds = %for.body.us.i, %deblock_edge_chroma_c.exit.us.1.for.cond8.preheader.us_crit_edge.i
  %12 = phi i8 [ %.pre.i, %deblock_edge_chroma_c.exit.us.1.for.cond8.preheader.us_crit_edge.i ], [ %0, %for.body.us.i ]
  %d.043.us.i = phi i32 [ %inc15.us.i, %deblock_edge_chroma_c.exit.us.1.for.cond8.preheader.us_crit_edge.i ], [ 0, %for.body.us.i ]
  %pix.addr.142.us.i = phi i8* [ %add.ptr16.us.i, %deblock_edge_chroma_c.exit.us.1.for.cond8.preheader.us_crit_edge.i ], [ %pix.addr.045.us.i, %for.body.us.i ]
  %arrayidx.i.us.i = getelementptr inbounds i8, i8* %pix.addr.142.us.i, i32 -4
  %13 = load i8, i8* %arrayidx.i.us.i, align 1, !tbaa !57
  %conv.i.us.i = zext i8 %13 to i32
  %arrayidx2.i.us.i = getelementptr inbounds i8, i8* %pix.addr.142.us.i, i32 -2
  %14 = load i8, i8* %arrayidx2.i.us.i, align 1, !tbaa !57
  %conv3.i.us.i = zext i8 %14 to i32
  %15 = load i8, i8* %pix.addr.142.us.i, align 1, !tbaa !57
  %conv6.i.us.i = zext i8 %15 to i32
  %arrayidx8.i.us.i = getelementptr inbounds i8, i8* %pix.addr.142.us.i, i32 2
  %16 = load i8, i8* %arrayidx8.i.us.i, align 1, !tbaa !57
  %conv9.i.us.i = zext i8 %16 to i32
  %sub.i.us.i = sub nsw i32 %conv3.i.us.i, %conv6.i.us.i
  %17 = icmp slt i32 %sub.i.us.i, 0
  %neg.i.us.i = sub nsw i32 0, %sub.i.us.i
  %18 = select i1 %17, i32 %neg.i.us.i, i32 %sub.i.us.i
  %cmp.i.us.i = icmp slt i32 %18, %alpha
  br i1 %cmp.i.us.i, label %land.lhs.true.i.us.i, label %deblock_edge_chroma_c.exit.us.i

land.lhs.true.i.us.1.i:                           ; preds = %deblock_edge_chroma_c.exit.us.i
  %sub11.i.us.1.i = sub nsw i32 %conv.i.us.1.i, %conv3.i.us.1.i
  %19 = icmp slt i32 %sub11.i.us.1.i, 0
  %neg62.i.us.1.i = sub nsw i32 0, %sub11.i.us.1.i
  %20 = select i1 %19, i32 %neg62.i.us.1.i, i32 %sub11.i.us.1.i
  %cmp13.i.us.1.i = icmp slt i32 %20, %beta
  br i1 %cmp13.i.us.1.i, label %land.lhs.true15.i.us.1.i, label %deblock_edge_chroma_c.exit.us.1.i

land.lhs.true15.i.us.1.i:                         ; preds = %land.lhs.true.i.us.1.i
  %sub16.i.us.1.i = sub nsw i32 %conv9.i.us.1.i, %conv6.i.us.1.i
  %21 = icmp slt i32 %sub16.i.us.1.i, 0
  %neg63.i.us.1.i = sub nsw i32 0, %sub16.i.us.1.i
  %22 = select i1 %21, i32 %neg63.i.us.1.i, i32 %sub16.i.us.1.i
  %cmp18.i.us.1.i = icmp slt i32 %22, %beta
  br i1 %cmp18.i.us.1.i, label %if.then.i.us.1.i, label %deblock_edge_chroma_c.exit.us.1.i

if.then.i.us.1.i:                                 ; preds = %land.lhs.true15.i.us.1.i
  %sub20.i.us.1.i = sub nsw i32 %conv6.i.us.1.i, %conv3.i.us.1.i
  %mul21.i.us.1.i = shl nsw i32 %sub20.i.us.1.i, 2
  %sub22.i.us.1.i = add nuw nsw i32 %conv.i.us.1.i, 4
  %add.i.us.1.i = sub nsw i32 %sub22.i.us.1.i, %conv9.i.us.1.i
  %add23.i.us.1.i = add nsw i32 %add.i.us.1.i, %mul21.i.us.1.i
  %shr.i.us.1.i = ashr i32 %add23.i.us.1.i, 3
  %conv24.i.us.1.i = sext i8 %5 to i32
  %sub25.i.us.1.i = sub nsw i32 0, %conv24.i.us.1.i
  %cmp.i.i.us.1.i = icmp slt i32 %shr.i.us.1.i, %sub25.i.us.1.i
  %cmp1.i.i.us.1.i = icmp sgt i32 %shr.i.us.1.i, %conv24.i.us.1.i
  %cond.i.i.us.1.i = select i1 %cmp1.i.i.us.1.i, i32 %conv24.i.us.1.i, i32 %shr.i.us.1.i
  %cond5.i.i.us.1.i = select i1 %cmp.i.i.us.1.i, i32 %sub25.i.us.1.i, i32 %cond.i.i.us.1.i
  %add28.i.us.1.i = add nsw i32 %cond5.i.i.us.1.i, %conv3.i.us.1.i
  %tobool.i65.i.us.1.i = icmp ugt i32 %add28.i.us.1.i, 255
  %sub.i66.i.us.1.i = sub nsw i32 0, %add28.i.us.1.i
  %shr.i67.i.us.1.i = ashr i32 %sub.i66.i.us.1.i, 31
  %cond.i68.i.us.1.i = select i1 %tobool.i65.i.us.1.i, i32 %shr.i67.i.us.1.i, i32 %add28.i.us.1.i
  %conv.i69.i.us.1.i = trunc i32 %cond.i68.i.us.1.i to i8
  store i8 %conv.i69.i.us.1.i, i8* %arrayidx2.i.us.1.i, align 1, !tbaa !57
  %sub32.i.us.1.i = sub nsw i32 %conv6.i.us.1.i, %cond5.i.i.us.1.i
  %tobool.i.i.us.1.i = icmp ugt i32 %sub32.i.us.1.i, 255
  %sub.i.i.us.1.i = sub nsw i32 0, %sub32.i.us.1.i
  %shr.i.i.us.1.i = ashr i32 %sub.i.i.us.1.i, 31
  %cond.i64.i.us.1.i = select i1 %tobool.i.i.us.1.i, i32 %shr.i.i.us.1.i, i32 %sub32.i.us.1.i
  %conv.i.i.us.1.i = trunc i32 %cond.i64.i.us.1.i to i8
  store i8 %conv.i.i.us.1.i, i8* %incdec.ptr.us.i, align 1, !tbaa !57
  br label %deblock_edge_chroma_c.exit.us.1.i

deblock_edge_chroma_c.exit.us.1.i:                ; preds = %if.then.i.us.1.i, %land.lhs.true15.i.us.1.i, %land.lhs.true.i.us.1.i, %deblock_edge_chroma_c.exit.us.i
  %inc15.us.i = add nuw nsw i32 %d.043.us.i, 1
  %add.ptr16.us.i = getelementptr inbounds i8, i8* %pix.addr.142.us.i, i32 %stride
  %exitcond.i = icmp eq i32 %inc15.us.i, 2
  br i1 %exitcond.i, label %cleanup.us.i, label %deblock_edge_chroma_c.exit.us.1.for.cond8.preheader.us_crit_edge.i

deblock_edge_chroma_c.exit.us.1.for.cond8.preheader.us_crit_edge.i: ; preds = %deblock_edge_chroma_c.exit.us.1.i
  %.pre.i = load i8, i8* %arrayidx.us.i, align 1, !tbaa !57
  br label %for.cond8.preheader.us.i

deblock_chroma_c.exit:                            ; preds = %cleanup.us.i
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @deblock_h_chroma_422_c(i8* nocapture %pix, i32 %stride, i32 %alpha, i32 %beta, i8* nocapture readonly %tc0) #3 {
entry:
  %mul.i = shl nsw i32 %stride, 2
  br label %for.body.us.i

for.body.us.i:                                    ; preds = %cleanup.us.i, %entry
  %pix.addr.045.us.i = phi i8* [ %pix.addr.3.us.i, %cleanup.us.i ], [ %pix, %entry ]
  %i.044.us.i = phi i32 [ %inc19.us.i, %cleanup.us.i ], [ 0, %entry ]
  %arrayidx.us.i = getelementptr inbounds i8, i8* %tc0, i32 %i.044.us.i
  %0 = load i8, i8* %arrayidx.us.i, align 1, !tbaa !57
  %cmp1.us.i = icmp slt i8 %0, 1
  br i1 %cmp1.us.i, label %if.then.us.i, label %for.cond8.preheader.us.i

land.lhs.true.i.us.i:                             ; preds = %for.cond8.preheader.us.i
  %sub11.i.us.i = sub nsw i32 %conv.i.us.i, %conv3.i.us.i
  %1 = icmp slt i32 %sub11.i.us.i, 0
  %neg62.i.us.i = sub nsw i32 0, %sub11.i.us.i
  %2 = select i1 %1, i32 %neg62.i.us.i, i32 %sub11.i.us.i
  %cmp13.i.us.i = icmp slt i32 %2, %beta
  br i1 %cmp13.i.us.i, label %land.lhs.true15.i.us.i, label %deblock_edge_chroma_c.exit.us.i

land.lhs.true15.i.us.i:                           ; preds = %land.lhs.true.i.us.i
  %sub16.i.us.i = sub nsw i32 %conv9.i.us.i, %conv6.i.us.i
  %3 = icmp slt i32 %sub16.i.us.i, 0
  %neg63.i.us.i = sub nsw i32 0, %sub16.i.us.i
  %4 = select i1 %3, i32 %neg63.i.us.i, i32 %sub16.i.us.i
  %cmp18.i.us.i = icmp slt i32 %4, %beta
  br i1 %cmp18.i.us.i, label %if.then.i.us.i, label %deblock_edge_chroma_c.exit.us.i

if.then.i.us.i:                                   ; preds = %land.lhs.true15.i.us.i
  %sub20.i.us.i = sub nsw i32 %conv6.i.us.i, %conv3.i.us.i
  %mul21.i.us.i = shl nsw i32 %sub20.i.us.i, 2
  %sub22.i.us.i = add nuw nsw i32 %conv.i.us.i, 4
  %add.i.us.i = sub nsw i32 %sub22.i.us.i, %conv9.i.us.i
  %add23.i.us.i = add nsw i32 %add.i.us.i, %mul21.i.us.i
  %shr.i.us.i = ashr i32 %add23.i.us.i, 3
  %conv24.i.us.i = sext i8 %12 to i32
  %sub25.i.us.i = sub nsw i32 0, %conv24.i.us.i
  %cmp.i.i.us.i = icmp slt i32 %shr.i.us.i, %sub25.i.us.i
  %cmp1.i.i.us.i = icmp sgt i32 %shr.i.us.i, %conv24.i.us.i
  %cond.i.i.us.i = select i1 %cmp1.i.i.us.i, i32 %conv24.i.us.i, i32 %shr.i.us.i
  %cond5.i.i.us.i = select i1 %cmp.i.i.us.i, i32 %sub25.i.us.i, i32 %cond.i.i.us.i
  %add28.i.us.i = add nsw i32 %cond5.i.i.us.i, %conv3.i.us.i
  %tobool.i65.i.us.i = icmp ugt i32 %add28.i.us.i, 255
  %sub.i66.i.us.i = sub nsw i32 0, %add28.i.us.i
  %shr.i67.i.us.i = ashr i32 %sub.i66.i.us.i, 31
  %cond.i68.i.us.i = select i1 %tobool.i65.i.us.i, i32 %shr.i67.i.us.i, i32 %add28.i.us.i
  %conv.i69.i.us.i = trunc i32 %cond.i68.i.us.i to i8
  store i8 %conv.i69.i.us.i, i8* %arrayidx2.i.us.i, align 1, !tbaa !57
  %sub32.i.us.i = sub nsw i32 %conv6.i.us.i, %cond5.i.i.us.i
  %tobool.i.i.us.i = icmp ugt i32 %sub32.i.us.i, 255
  %sub.i.i.us.i = sub nsw i32 0, %sub32.i.us.i
  %shr.i.i.us.i = ashr i32 %sub.i.i.us.i, 31
  %cond.i64.i.us.i = select i1 %tobool.i.i.us.i, i32 %shr.i.i.us.i, i32 %sub32.i.us.i
  %conv.i.i.us.i = trunc i32 %cond.i64.i.us.i to i8
  store i8 %conv.i.i.us.i, i8* %pix.addr.142.us.i, align 1, !tbaa !57
  %.pre48.i = load i8, i8* %arrayidx.us.i, align 1, !tbaa !57
  br label %deblock_edge_chroma_c.exit.us.i

deblock_edge_chroma_c.exit.us.i:                  ; preds = %for.cond8.preheader.us.i, %if.then.i.us.i, %land.lhs.true15.i.us.i, %land.lhs.true.i.us.i
  %5 = phi i8 [ %.pre48.i, %if.then.i.us.i ], [ %12, %land.lhs.true15.i.us.i ], [ %12, %land.lhs.true.i.us.i ], [ %12, %for.cond8.preheader.us.i ]
  %incdec.ptr.us.i = getelementptr inbounds i8, i8* %pix.addr.142.us.i, i32 1
  %arrayidx.i.us.1.i = getelementptr inbounds i8, i8* %pix.addr.142.us.i, i32 -3
  %6 = load i8, i8* %arrayidx.i.us.1.i, align 1, !tbaa !57
  %conv.i.us.1.i = zext i8 %6 to i32
  %arrayidx2.i.us.1.i = getelementptr inbounds i8, i8* %pix.addr.142.us.i, i32 -1
  %7 = load i8, i8* %arrayidx2.i.us.1.i, align 1, !tbaa !57
  %conv3.i.us.1.i = zext i8 %7 to i32
  %8 = load i8, i8* %incdec.ptr.us.i, align 1, !tbaa !57
  %conv6.i.us.1.i = zext i8 %8 to i32
  %arrayidx8.i.us.1.i = getelementptr inbounds i8, i8* %pix.addr.142.us.i, i32 3
  %9 = load i8, i8* %arrayidx8.i.us.1.i, align 1, !tbaa !57
  %conv9.i.us.1.i = zext i8 %9 to i32
  %sub.i.us.1.i = sub nsw i32 %conv3.i.us.1.i, %conv6.i.us.1.i
  %10 = icmp slt i32 %sub.i.us.1.i, 0
  %neg.i.us.1.i = sub nsw i32 0, %sub.i.us.1.i
  %11 = select i1 %10, i32 %neg.i.us.1.i, i32 %sub.i.us.1.i
  %cmp.i.us.1.i = icmp slt i32 %11, %alpha
  br i1 %cmp.i.us.1.i, label %land.lhs.true.i.us.1.i, label %deblock_edge_chroma_c.exit.us.1.i

if.then.us.i:                                     ; preds = %for.body.us.i
  %add.ptr.us.i = getelementptr inbounds i8, i8* %pix.addr.045.us.i, i32 %mul.i
  br label %cleanup.us.i

cleanup.us.i:                                     ; preds = %deblock_edge_chroma_c.exit.us.1.i, %if.then.us.i
  %pix.addr.3.us.i = phi i8* [ %add.ptr.us.i, %if.then.us.i ], [ %add.ptr16.us.i, %deblock_edge_chroma_c.exit.us.1.i ]
  %inc19.us.i = add nuw nsw i32 %i.044.us.i, 1
  %exitcond47.i = icmp eq i32 %inc19.us.i, 4
  br i1 %exitcond47.i, label %deblock_chroma_c.exit, label %for.body.us.i

for.cond8.preheader.us.i:                         ; preds = %for.body.us.i, %deblock_edge_chroma_c.exit.us.1.for.cond8.preheader.us_crit_edge.i
  %12 = phi i8 [ %.pre.i, %deblock_edge_chroma_c.exit.us.1.for.cond8.preheader.us_crit_edge.i ], [ %0, %for.body.us.i ]
  %d.043.us.i = phi i32 [ %inc15.us.i, %deblock_edge_chroma_c.exit.us.1.for.cond8.preheader.us_crit_edge.i ], [ 0, %for.body.us.i ]
  %pix.addr.142.us.i = phi i8* [ %add.ptr16.us.i, %deblock_edge_chroma_c.exit.us.1.for.cond8.preheader.us_crit_edge.i ], [ %pix.addr.045.us.i, %for.body.us.i ]
  %arrayidx.i.us.i = getelementptr inbounds i8, i8* %pix.addr.142.us.i, i32 -4
  %13 = load i8, i8* %arrayidx.i.us.i, align 1, !tbaa !57
  %conv.i.us.i = zext i8 %13 to i32
  %arrayidx2.i.us.i = getelementptr inbounds i8, i8* %pix.addr.142.us.i, i32 -2
  %14 = load i8, i8* %arrayidx2.i.us.i, align 1, !tbaa !57
  %conv3.i.us.i = zext i8 %14 to i32
  %15 = load i8, i8* %pix.addr.142.us.i, align 1, !tbaa !57
  %conv6.i.us.i = zext i8 %15 to i32
  %arrayidx8.i.us.i = getelementptr inbounds i8, i8* %pix.addr.142.us.i, i32 2
  %16 = load i8, i8* %arrayidx8.i.us.i, align 1, !tbaa !57
  %conv9.i.us.i = zext i8 %16 to i32
  %sub.i.us.i = sub nsw i32 %conv3.i.us.i, %conv6.i.us.i
  %17 = icmp slt i32 %sub.i.us.i, 0
  %neg.i.us.i = sub nsw i32 0, %sub.i.us.i
  %18 = select i1 %17, i32 %neg.i.us.i, i32 %sub.i.us.i
  %cmp.i.us.i = icmp slt i32 %18, %alpha
  br i1 %cmp.i.us.i, label %land.lhs.true.i.us.i, label %deblock_edge_chroma_c.exit.us.i

land.lhs.true.i.us.1.i:                           ; preds = %deblock_edge_chroma_c.exit.us.i
  %sub11.i.us.1.i = sub nsw i32 %conv.i.us.1.i, %conv3.i.us.1.i
  %19 = icmp slt i32 %sub11.i.us.1.i, 0
  %neg62.i.us.1.i = sub nsw i32 0, %sub11.i.us.1.i
  %20 = select i1 %19, i32 %neg62.i.us.1.i, i32 %sub11.i.us.1.i
  %cmp13.i.us.1.i = icmp slt i32 %20, %beta
  br i1 %cmp13.i.us.1.i, label %land.lhs.true15.i.us.1.i, label %deblock_edge_chroma_c.exit.us.1.i

land.lhs.true15.i.us.1.i:                         ; preds = %land.lhs.true.i.us.1.i
  %sub16.i.us.1.i = sub nsw i32 %conv9.i.us.1.i, %conv6.i.us.1.i
  %21 = icmp slt i32 %sub16.i.us.1.i, 0
  %neg63.i.us.1.i = sub nsw i32 0, %sub16.i.us.1.i
  %22 = select i1 %21, i32 %neg63.i.us.1.i, i32 %sub16.i.us.1.i
  %cmp18.i.us.1.i = icmp slt i32 %22, %beta
  br i1 %cmp18.i.us.1.i, label %if.then.i.us.1.i, label %deblock_edge_chroma_c.exit.us.1.i

if.then.i.us.1.i:                                 ; preds = %land.lhs.true15.i.us.1.i
  %sub20.i.us.1.i = sub nsw i32 %conv6.i.us.1.i, %conv3.i.us.1.i
  %mul21.i.us.1.i = shl nsw i32 %sub20.i.us.1.i, 2
  %sub22.i.us.1.i = add nuw nsw i32 %conv.i.us.1.i, 4
  %add.i.us.1.i = sub nsw i32 %sub22.i.us.1.i, %conv9.i.us.1.i
  %add23.i.us.1.i = add nsw i32 %add.i.us.1.i, %mul21.i.us.1.i
  %shr.i.us.1.i = ashr i32 %add23.i.us.1.i, 3
  %conv24.i.us.1.i = sext i8 %5 to i32
  %sub25.i.us.1.i = sub nsw i32 0, %conv24.i.us.1.i
  %cmp.i.i.us.1.i = icmp slt i32 %shr.i.us.1.i, %sub25.i.us.1.i
  %cmp1.i.i.us.1.i = icmp sgt i32 %shr.i.us.1.i, %conv24.i.us.1.i
  %cond.i.i.us.1.i = select i1 %cmp1.i.i.us.1.i, i32 %conv24.i.us.1.i, i32 %shr.i.us.1.i
  %cond5.i.i.us.1.i = select i1 %cmp.i.i.us.1.i, i32 %sub25.i.us.1.i, i32 %cond.i.i.us.1.i
  %add28.i.us.1.i = add nsw i32 %cond5.i.i.us.1.i, %conv3.i.us.1.i
  %tobool.i65.i.us.1.i = icmp ugt i32 %add28.i.us.1.i, 255
  %sub.i66.i.us.1.i = sub nsw i32 0, %add28.i.us.1.i
  %shr.i67.i.us.1.i = ashr i32 %sub.i66.i.us.1.i, 31
  %cond.i68.i.us.1.i = select i1 %tobool.i65.i.us.1.i, i32 %shr.i67.i.us.1.i, i32 %add28.i.us.1.i
  %conv.i69.i.us.1.i = trunc i32 %cond.i68.i.us.1.i to i8
  store i8 %conv.i69.i.us.1.i, i8* %arrayidx2.i.us.1.i, align 1, !tbaa !57
  %sub32.i.us.1.i = sub nsw i32 %conv6.i.us.1.i, %cond5.i.i.us.1.i
  %tobool.i.i.us.1.i = icmp ugt i32 %sub32.i.us.1.i, 255
  %sub.i.i.us.1.i = sub nsw i32 0, %sub32.i.us.1.i
  %shr.i.i.us.1.i = ashr i32 %sub.i.i.us.1.i, 31
  %cond.i64.i.us.1.i = select i1 %tobool.i.i.us.1.i, i32 %shr.i.i.us.1.i, i32 %sub32.i.us.1.i
  %conv.i.i.us.1.i = trunc i32 %cond.i64.i.us.1.i to i8
  store i8 %conv.i.i.us.1.i, i8* %incdec.ptr.us.i, align 1, !tbaa !57
  br label %deblock_edge_chroma_c.exit.us.1.i

deblock_edge_chroma_c.exit.us.1.i:                ; preds = %if.then.i.us.1.i, %land.lhs.true15.i.us.1.i, %land.lhs.true.i.us.1.i, %deblock_edge_chroma_c.exit.us.i
  %inc15.us.i = add nuw nsw i32 %d.043.us.i, 1
  %add.ptr16.us.i = getelementptr inbounds i8, i8* %pix.addr.142.us.i, i32 %stride
  %exitcond.i = icmp eq i32 %inc15.us.i, 4
  br i1 %exitcond.i, label %cleanup.us.i, label %deblock_edge_chroma_c.exit.us.1.for.cond8.preheader.us_crit_edge.i

deblock_edge_chroma_c.exit.us.1.for.cond8.preheader.us_crit_edge.i: ; preds = %deblock_edge_chroma_c.exit.us.1.i
  %.pre.i = load i8, i8* %arrayidx.us.i, align 1, !tbaa !57
  br label %for.cond8.preheader.us.i

deblock_chroma_c.exit:                            ; preds = %cleanup.us.i
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @deblock_v_luma_intra_c(i8* nocapture %pix, i32 %stride, i32 %alpha, i32 %beta) #3 {
entry:
  tail call fastcc void @deblock_luma_intra_c(i8* %pix, i32 %stride, i32 1, i32 %alpha, i32 %beta)
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @deblock_h_luma_intra_c(i8* nocapture %pix, i32 %stride, i32 %alpha, i32 %beta) #3 {
entry:
  tail call fastcc void @deblock_luma_intra_c(i8* %pix, i32 1, i32 %stride, i32 %alpha, i32 %beta)
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @deblock_v_chroma_intra_c(i8* nocapture %pix, i32 %stride, i32 %alpha, i32 %beta) #3 {
entry:
  %mul.i.i = mul nsw i32 %stride, -2
  %mul1.i.i = sub nsw i32 0, %stride
  br label %for.cond1.preheader.us.i

for.cond1.preheader.us.i:                         ; preds = %deblock_edge_chroma_intra_c.exit.us.i, %entry
  %d.020.us.i = phi i32 [ %inc6.us.i, %deblock_edge_chroma_intra_c.exit.us.i ], [ 0, %entry ]
  %pix.addr.019.us.i = phi i8* [ %incdec.ptr.us.i, %deblock_edge_chroma_intra_c.exit.us.i ], [ %pix, %entry ]
  %arrayidx.i.us.i = getelementptr inbounds i8, i8* %pix.addr.019.us.i, i32 %mul.i.i
  %0 = load i8, i8* %arrayidx.i.us.i, align 1, !tbaa !57
  %conv.i.us.i = zext i8 %0 to i32
  %arrayidx2.i.us.i = getelementptr inbounds i8, i8* %pix.addr.019.us.i, i32 %mul1.i.i
  %1 = load i8, i8* %arrayidx2.i.us.i, align 1, !tbaa !57
  %conv3.i.us.i = zext i8 %1 to i32
  %2 = load i8, i8* %pix.addr.019.us.i, align 1, !tbaa !57
  %conv6.i.us.i = zext i8 %2 to i32
  %arrayidx8.i.us.i = getelementptr inbounds i8, i8* %pix.addr.019.us.i, i32 %stride
  %3 = load i8, i8* %arrayidx8.i.us.i, align 1, !tbaa !57
  %conv9.i.us.i = zext i8 %3 to i32
  %sub.i.us.i = sub nsw i32 %conv3.i.us.i, %conv6.i.us.i
  %4 = icmp slt i32 %sub.i.us.i, 0
  %neg.i.us.i = sub nsw i32 0, %sub.i.us.i
  %5 = select i1 %4, i32 %neg.i.us.i, i32 %sub.i.us.i
  %cmp.i.us.i = icmp slt i32 %5, %alpha
  br i1 %cmp.i.us.i, label %land.lhs.true.i.us.i, label %deblock_edge_chroma_intra_c.exit.us.i

land.lhs.true.i.us.i:                             ; preds = %for.cond1.preheader.us.i
  %sub11.i.us.i = sub nsw i32 %conv.i.us.i, %conv3.i.us.i
  %6 = icmp slt i32 %sub11.i.us.i, 0
  %neg57.i.us.i = sub nsw i32 0, %sub11.i.us.i
  %7 = select i1 %6, i32 %neg57.i.us.i, i32 %sub11.i.us.i
  %cmp13.i.us.i = icmp slt i32 %7, %beta
  br i1 %cmp13.i.us.i, label %land.lhs.true15.i.us.i, label %deblock_edge_chroma_intra_c.exit.us.i

land.lhs.true15.i.us.i:                           ; preds = %land.lhs.true.i.us.i
  %sub16.i.us.i = sub nsw i32 %conv9.i.us.i, %conv6.i.us.i
  %8 = icmp slt i32 %sub16.i.us.i, 0
  %neg58.i.us.i = sub nsw i32 0, %sub16.i.us.i
  %9 = select i1 %8, i32 %neg58.i.us.i, i32 %sub16.i.us.i
  %cmp18.i.us.i = icmp slt i32 %9, %beta
  br i1 %cmp18.i.us.i, label %if.then.i.us.i, label %deblock_edge_chroma_intra_c.exit.us.i

if.then.i.us.i:                                   ; preds = %land.lhs.true15.i.us.i
  %mul20.i.us.i = shl nuw nsw i32 %conv.i.us.i, 1
  %add.i.us.i = add nuw nsw i32 %conv3.i.us.i, 2
  %add21.i.us.i = add nuw nsw i32 %add.i.us.i, %mul20.i.us.i
  %add22.i.us.i = add nuw nsw i32 %add21.i.us.i, %conv9.i.us.i
  %10 = lshr i32 %add22.i.us.i, 2
  %conv23.i.us.i = trunc i32 %10 to i8
  store i8 %conv23.i.us.i, i8* %arrayidx2.i.us.i, align 1, !tbaa !57
  %mul26.i.us.i = shl nuw nsw i32 %conv9.i.us.i, 1
  %add27.i.us.i = add nuw nsw i32 %conv.i.us.i, 2
  %add28.i.us.i = add nuw nsw i32 %add27.i.us.i, %conv6.i.us.i
  %add29.i.us.i = add nuw nsw i32 %add28.i.us.i, %mul26.i.us.i
  %11 = lshr i32 %add29.i.us.i, 2
  %conv31.i.us.i = trunc i32 %11 to i8
  store i8 %conv31.i.us.i, i8* %pix.addr.019.us.i, align 1, !tbaa !57
  br label %deblock_edge_chroma_intra_c.exit.us.i

deblock_edge_chroma_intra_c.exit.us.i:            ; preds = %if.then.i.us.i, %land.lhs.true15.i.us.i, %land.lhs.true.i.us.i, %for.cond1.preheader.us.i
  %incdec.ptr.us.i = getelementptr inbounds i8, i8* %pix.addr.019.us.i, i32 1
  %inc6.us.i = add nuw nsw i32 %d.020.us.i, 1
  %exitcond22.i = icmp eq i32 %inc6.us.i, 16
  br i1 %exitcond22.i, label %deblock_chroma_intra_c.exit, label %for.cond1.preheader.us.i

deblock_chroma_intra_c.exit:                      ; preds = %deblock_edge_chroma_intra_c.exit.us.i
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @deblock_h_chroma_intra_c(i8* nocapture %pix, i32 %stride, i32 %alpha, i32 %beta) #3 {
entry:
  br label %for.cond1.preheader.us.i

for.cond1.preheader.us.i:                         ; preds = %deblock_edge_chroma_intra_c.exit.us.i.1, %entry
  %d.020.us.i = phi i32 [ %inc6.us.i, %deblock_edge_chroma_intra_c.exit.us.i.1 ], [ 0, %entry ]
  %pix.addr.019.us.i = phi i8* [ %add.ptr.us.i, %deblock_edge_chroma_intra_c.exit.us.i.1 ], [ %pix, %entry ]
  %arrayidx.i.us.i = getelementptr inbounds i8, i8* %pix.addr.019.us.i, i32 -4
  %0 = load i8, i8* %arrayidx.i.us.i, align 1, !tbaa !57
  %conv.i.us.i = zext i8 %0 to i32
  %arrayidx2.i.us.i = getelementptr inbounds i8, i8* %pix.addr.019.us.i, i32 -2
  %1 = load i8, i8* %arrayidx2.i.us.i, align 1, !tbaa !57
  %conv3.i.us.i = zext i8 %1 to i32
  %2 = load i8, i8* %pix.addr.019.us.i, align 1, !tbaa !57
  %conv6.i.us.i = zext i8 %2 to i32
  %arrayidx8.i.us.i = getelementptr inbounds i8, i8* %pix.addr.019.us.i, i32 2
  %3 = load i8, i8* %arrayidx8.i.us.i, align 1, !tbaa !57
  %conv9.i.us.i = zext i8 %3 to i32
  %sub.i.us.i = sub nsw i32 %conv3.i.us.i, %conv6.i.us.i
  %4 = icmp slt i32 %sub.i.us.i, 0
  %neg.i.us.i = sub nsw i32 0, %sub.i.us.i
  %5 = select i1 %4, i32 %neg.i.us.i, i32 %sub.i.us.i
  %cmp.i.us.i = icmp slt i32 %5, %alpha
  br i1 %cmp.i.us.i, label %land.lhs.true.i.us.i, label %deblock_edge_chroma_intra_c.exit.us.i

land.lhs.true.i.us.i:                             ; preds = %for.cond1.preheader.us.i
  %sub11.i.us.i = sub nsw i32 %conv.i.us.i, %conv3.i.us.i
  %6 = icmp slt i32 %sub11.i.us.i, 0
  %neg57.i.us.i = sub nsw i32 0, %sub11.i.us.i
  %7 = select i1 %6, i32 %neg57.i.us.i, i32 %sub11.i.us.i
  %cmp13.i.us.i = icmp slt i32 %7, %beta
  br i1 %cmp13.i.us.i, label %land.lhs.true15.i.us.i, label %deblock_edge_chroma_intra_c.exit.us.i

land.lhs.true15.i.us.i:                           ; preds = %land.lhs.true.i.us.i
  %sub16.i.us.i = sub nsw i32 %conv9.i.us.i, %conv6.i.us.i
  %8 = icmp slt i32 %sub16.i.us.i, 0
  %neg58.i.us.i = sub nsw i32 0, %sub16.i.us.i
  %9 = select i1 %8, i32 %neg58.i.us.i, i32 %sub16.i.us.i
  %cmp18.i.us.i = icmp slt i32 %9, %beta
  br i1 %cmp18.i.us.i, label %if.then.i.us.i, label %deblock_edge_chroma_intra_c.exit.us.i

if.then.i.us.i:                                   ; preds = %land.lhs.true15.i.us.i
  %mul20.i.us.i = shl nuw nsw i32 %conv.i.us.i, 1
  %add.i.us.i = add nuw nsw i32 %conv3.i.us.i, 2
  %add21.i.us.i = add nuw nsw i32 %add.i.us.i, %mul20.i.us.i
  %add22.i.us.i = add nuw nsw i32 %add21.i.us.i, %conv9.i.us.i
  %10 = lshr i32 %add22.i.us.i, 2
  %conv23.i.us.i = trunc i32 %10 to i8
  store i8 %conv23.i.us.i, i8* %arrayidx2.i.us.i, align 1, !tbaa !57
  %mul26.i.us.i = shl nuw nsw i32 %conv9.i.us.i, 1
  %add27.i.us.i = add nuw nsw i32 %conv.i.us.i, 2
  %add28.i.us.i = add nuw nsw i32 %add27.i.us.i, %conv6.i.us.i
  %add29.i.us.i = add nuw nsw i32 %add28.i.us.i, %mul26.i.us.i
  %11 = lshr i32 %add29.i.us.i, 2
  %conv31.i.us.i = trunc i32 %11 to i8
  store i8 %conv31.i.us.i, i8* %pix.addr.019.us.i, align 1, !tbaa !57
  br label %deblock_edge_chroma_intra_c.exit.us.i

deblock_edge_chroma_intra_c.exit.us.i:            ; preds = %if.then.i.us.i, %land.lhs.true15.i.us.i, %land.lhs.true.i.us.i, %for.cond1.preheader.us.i
  %incdec.ptr.us.i = getelementptr inbounds i8, i8* %pix.addr.019.us.i, i32 1
  %arrayidx.i.us.i.1 = getelementptr inbounds i8, i8* %pix.addr.019.us.i, i32 -3
  %12 = load i8, i8* %arrayidx.i.us.i.1, align 1, !tbaa !57
  %conv.i.us.i.1 = zext i8 %12 to i32
  %arrayidx2.i.us.i.1 = getelementptr inbounds i8, i8* %pix.addr.019.us.i, i32 -1
  %13 = load i8, i8* %arrayidx2.i.us.i.1, align 1, !tbaa !57
  %conv3.i.us.i.1 = zext i8 %13 to i32
  %14 = load i8, i8* %incdec.ptr.us.i, align 1, !tbaa !57
  %conv6.i.us.i.1 = zext i8 %14 to i32
  %arrayidx8.i.us.i.1 = getelementptr inbounds i8, i8* %pix.addr.019.us.i, i32 3
  %15 = load i8, i8* %arrayidx8.i.us.i.1, align 1, !tbaa !57
  %conv9.i.us.i.1 = zext i8 %15 to i32
  %sub.i.us.i.1 = sub nsw i32 %conv3.i.us.i.1, %conv6.i.us.i.1
  %16 = icmp slt i32 %sub.i.us.i.1, 0
  %neg.i.us.i.1 = sub nsw i32 0, %sub.i.us.i.1
  %17 = select i1 %16, i32 %neg.i.us.i.1, i32 %sub.i.us.i.1
  %cmp.i.us.i.1 = icmp slt i32 %17, %alpha
  br i1 %cmp.i.us.i.1, label %land.lhs.true.i.us.i.1, label %deblock_edge_chroma_intra_c.exit.us.i.1

deblock_chroma_intra_c.exit:                      ; preds = %deblock_edge_chroma_intra_c.exit.us.i.1
  ret void

land.lhs.true.i.us.i.1:                           ; preds = %deblock_edge_chroma_intra_c.exit.us.i
  %sub11.i.us.i.1 = sub nsw i32 %conv.i.us.i.1, %conv3.i.us.i.1
  %18 = icmp slt i32 %sub11.i.us.i.1, 0
  %neg57.i.us.i.1 = sub nsw i32 0, %sub11.i.us.i.1
  %19 = select i1 %18, i32 %neg57.i.us.i.1, i32 %sub11.i.us.i.1
  %cmp13.i.us.i.1 = icmp slt i32 %19, %beta
  br i1 %cmp13.i.us.i.1, label %land.lhs.true15.i.us.i.1, label %deblock_edge_chroma_intra_c.exit.us.i.1

land.lhs.true15.i.us.i.1:                         ; preds = %land.lhs.true.i.us.i.1
  %sub16.i.us.i.1 = sub nsw i32 %conv9.i.us.i.1, %conv6.i.us.i.1
  %20 = icmp slt i32 %sub16.i.us.i.1, 0
  %neg58.i.us.i.1 = sub nsw i32 0, %sub16.i.us.i.1
  %21 = select i1 %20, i32 %neg58.i.us.i.1, i32 %sub16.i.us.i.1
  %cmp18.i.us.i.1 = icmp slt i32 %21, %beta
  br i1 %cmp18.i.us.i.1, label %if.then.i.us.i.1, label %deblock_edge_chroma_intra_c.exit.us.i.1

if.then.i.us.i.1:                                 ; preds = %land.lhs.true15.i.us.i.1
  %mul20.i.us.i.1 = shl nuw nsw i32 %conv.i.us.i.1, 1
  %add.i.us.i.1 = add nuw nsw i32 %conv3.i.us.i.1, 2
  %add21.i.us.i.1 = add nuw nsw i32 %add.i.us.i.1, %mul20.i.us.i.1
  %add22.i.us.i.1 = add nuw nsw i32 %add21.i.us.i.1, %conv9.i.us.i.1
  %22 = lshr i32 %add22.i.us.i.1, 2
  %conv23.i.us.i.1 = trunc i32 %22 to i8
  store i8 %conv23.i.us.i.1, i8* %arrayidx2.i.us.i.1, align 1, !tbaa !57
  %mul26.i.us.i.1 = shl nuw nsw i32 %conv9.i.us.i.1, 1
  %add27.i.us.i.1 = add nuw nsw i32 %conv.i.us.i.1, 2
  %add28.i.us.i.1 = add nuw nsw i32 %add27.i.us.i.1, %conv6.i.us.i.1
  %add29.i.us.i.1 = add nuw nsw i32 %add28.i.us.i.1, %mul26.i.us.i.1
  %23 = lshr i32 %add29.i.us.i.1, 2
  %conv31.i.us.i.1 = trunc i32 %23 to i8
  store i8 %conv31.i.us.i.1, i8* %incdec.ptr.us.i, align 1, !tbaa !57
  br label %deblock_edge_chroma_intra_c.exit.us.i.1

deblock_edge_chroma_intra_c.exit.us.i.1:          ; preds = %if.then.i.us.i.1, %land.lhs.true15.i.us.i.1, %land.lhs.true.i.us.i.1, %deblock_edge_chroma_intra_c.exit.us.i
  %inc6.us.i = add nuw nsw i32 %d.020.us.i, 1
  %add.ptr.us.i = getelementptr inbounds i8, i8* %pix.addr.019.us.i, i32 %stride
  %exitcond22.i = icmp eq i32 %inc6.us.i, 8
  br i1 %exitcond22.i, label %deblock_chroma_intra_c.exit, label %for.cond1.preheader.us.i
}

; Function Attrs: nofree norecurse nounwind
define internal void @deblock_h_chroma_422_intra_c(i8* nocapture %pix, i32 %stride, i32 %alpha, i32 %beta) #3 {
entry:
  br label %for.cond1.preheader.us.i

for.cond1.preheader.us.i:                         ; preds = %deblock_edge_chroma_intra_c.exit.us.i.1, %entry
  %d.020.us.i = phi i32 [ %inc6.us.i, %deblock_edge_chroma_intra_c.exit.us.i.1 ], [ 0, %entry ]
  %pix.addr.019.us.i = phi i8* [ %add.ptr.us.i, %deblock_edge_chroma_intra_c.exit.us.i.1 ], [ %pix, %entry ]
  %arrayidx.i.us.i = getelementptr inbounds i8, i8* %pix.addr.019.us.i, i32 -4
  %0 = load i8, i8* %arrayidx.i.us.i, align 1, !tbaa !57
  %conv.i.us.i = zext i8 %0 to i32
  %arrayidx2.i.us.i = getelementptr inbounds i8, i8* %pix.addr.019.us.i, i32 -2
  %1 = load i8, i8* %arrayidx2.i.us.i, align 1, !tbaa !57
  %conv3.i.us.i = zext i8 %1 to i32
  %2 = load i8, i8* %pix.addr.019.us.i, align 1, !tbaa !57
  %conv6.i.us.i = zext i8 %2 to i32
  %arrayidx8.i.us.i = getelementptr inbounds i8, i8* %pix.addr.019.us.i, i32 2
  %3 = load i8, i8* %arrayidx8.i.us.i, align 1, !tbaa !57
  %conv9.i.us.i = zext i8 %3 to i32
  %sub.i.us.i = sub nsw i32 %conv3.i.us.i, %conv6.i.us.i
  %4 = icmp slt i32 %sub.i.us.i, 0
  %neg.i.us.i = sub nsw i32 0, %sub.i.us.i
  %5 = select i1 %4, i32 %neg.i.us.i, i32 %sub.i.us.i
  %cmp.i.us.i = icmp slt i32 %5, %alpha
  br i1 %cmp.i.us.i, label %land.lhs.true.i.us.i, label %deblock_edge_chroma_intra_c.exit.us.i

land.lhs.true.i.us.i:                             ; preds = %for.cond1.preheader.us.i
  %sub11.i.us.i = sub nsw i32 %conv.i.us.i, %conv3.i.us.i
  %6 = icmp slt i32 %sub11.i.us.i, 0
  %neg57.i.us.i = sub nsw i32 0, %sub11.i.us.i
  %7 = select i1 %6, i32 %neg57.i.us.i, i32 %sub11.i.us.i
  %cmp13.i.us.i = icmp slt i32 %7, %beta
  br i1 %cmp13.i.us.i, label %land.lhs.true15.i.us.i, label %deblock_edge_chroma_intra_c.exit.us.i

land.lhs.true15.i.us.i:                           ; preds = %land.lhs.true.i.us.i
  %sub16.i.us.i = sub nsw i32 %conv9.i.us.i, %conv6.i.us.i
  %8 = icmp slt i32 %sub16.i.us.i, 0
  %neg58.i.us.i = sub nsw i32 0, %sub16.i.us.i
  %9 = select i1 %8, i32 %neg58.i.us.i, i32 %sub16.i.us.i
  %cmp18.i.us.i = icmp slt i32 %9, %beta
  br i1 %cmp18.i.us.i, label %if.then.i.us.i, label %deblock_edge_chroma_intra_c.exit.us.i

if.then.i.us.i:                                   ; preds = %land.lhs.true15.i.us.i
  %mul20.i.us.i = shl nuw nsw i32 %conv.i.us.i, 1
  %add.i.us.i = add nuw nsw i32 %conv3.i.us.i, 2
  %add21.i.us.i = add nuw nsw i32 %add.i.us.i, %mul20.i.us.i
  %add22.i.us.i = add nuw nsw i32 %add21.i.us.i, %conv9.i.us.i
  %10 = lshr i32 %add22.i.us.i, 2
  %conv23.i.us.i = trunc i32 %10 to i8
  store i8 %conv23.i.us.i, i8* %arrayidx2.i.us.i, align 1, !tbaa !57
  %mul26.i.us.i = shl nuw nsw i32 %conv9.i.us.i, 1
  %add27.i.us.i = add nuw nsw i32 %conv.i.us.i, 2
  %add28.i.us.i = add nuw nsw i32 %add27.i.us.i, %conv6.i.us.i
  %add29.i.us.i = add nuw nsw i32 %add28.i.us.i, %mul26.i.us.i
  %11 = lshr i32 %add29.i.us.i, 2
  %conv31.i.us.i = trunc i32 %11 to i8
  store i8 %conv31.i.us.i, i8* %pix.addr.019.us.i, align 1, !tbaa !57
  br label %deblock_edge_chroma_intra_c.exit.us.i

deblock_edge_chroma_intra_c.exit.us.i:            ; preds = %if.then.i.us.i, %land.lhs.true15.i.us.i, %land.lhs.true.i.us.i, %for.cond1.preheader.us.i
  %incdec.ptr.us.i = getelementptr inbounds i8, i8* %pix.addr.019.us.i, i32 1
  %arrayidx.i.us.i.1 = getelementptr inbounds i8, i8* %pix.addr.019.us.i, i32 -3
  %12 = load i8, i8* %arrayidx.i.us.i.1, align 1, !tbaa !57
  %conv.i.us.i.1 = zext i8 %12 to i32
  %arrayidx2.i.us.i.1 = getelementptr inbounds i8, i8* %pix.addr.019.us.i, i32 -1
  %13 = load i8, i8* %arrayidx2.i.us.i.1, align 1, !tbaa !57
  %conv3.i.us.i.1 = zext i8 %13 to i32
  %14 = load i8, i8* %incdec.ptr.us.i, align 1, !tbaa !57
  %conv6.i.us.i.1 = zext i8 %14 to i32
  %arrayidx8.i.us.i.1 = getelementptr inbounds i8, i8* %pix.addr.019.us.i, i32 3
  %15 = load i8, i8* %arrayidx8.i.us.i.1, align 1, !tbaa !57
  %conv9.i.us.i.1 = zext i8 %15 to i32
  %sub.i.us.i.1 = sub nsw i32 %conv3.i.us.i.1, %conv6.i.us.i.1
  %16 = icmp slt i32 %sub.i.us.i.1, 0
  %neg.i.us.i.1 = sub nsw i32 0, %sub.i.us.i.1
  %17 = select i1 %16, i32 %neg.i.us.i.1, i32 %sub.i.us.i.1
  %cmp.i.us.i.1 = icmp slt i32 %17, %alpha
  br i1 %cmp.i.us.i.1, label %land.lhs.true.i.us.i.1, label %deblock_edge_chroma_intra_c.exit.us.i.1

deblock_chroma_intra_c.exit:                      ; preds = %deblock_edge_chroma_intra_c.exit.us.i.1
  ret void

land.lhs.true.i.us.i.1:                           ; preds = %deblock_edge_chroma_intra_c.exit.us.i
  %sub11.i.us.i.1 = sub nsw i32 %conv.i.us.i.1, %conv3.i.us.i.1
  %18 = icmp slt i32 %sub11.i.us.i.1, 0
  %neg57.i.us.i.1 = sub nsw i32 0, %sub11.i.us.i.1
  %19 = select i1 %18, i32 %neg57.i.us.i.1, i32 %sub11.i.us.i.1
  %cmp13.i.us.i.1 = icmp slt i32 %19, %beta
  br i1 %cmp13.i.us.i.1, label %land.lhs.true15.i.us.i.1, label %deblock_edge_chroma_intra_c.exit.us.i.1

land.lhs.true15.i.us.i.1:                         ; preds = %land.lhs.true.i.us.i.1
  %sub16.i.us.i.1 = sub nsw i32 %conv9.i.us.i.1, %conv6.i.us.i.1
  %20 = icmp slt i32 %sub16.i.us.i.1, 0
  %neg58.i.us.i.1 = sub nsw i32 0, %sub16.i.us.i.1
  %21 = select i1 %20, i32 %neg58.i.us.i.1, i32 %sub16.i.us.i.1
  %cmp18.i.us.i.1 = icmp slt i32 %21, %beta
  br i1 %cmp18.i.us.i.1, label %if.then.i.us.i.1, label %deblock_edge_chroma_intra_c.exit.us.i.1

if.then.i.us.i.1:                                 ; preds = %land.lhs.true15.i.us.i.1
  %mul20.i.us.i.1 = shl nuw nsw i32 %conv.i.us.i.1, 1
  %add.i.us.i.1 = add nuw nsw i32 %conv3.i.us.i.1, 2
  %add21.i.us.i.1 = add nuw nsw i32 %add.i.us.i.1, %mul20.i.us.i.1
  %add22.i.us.i.1 = add nuw nsw i32 %add21.i.us.i.1, %conv9.i.us.i.1
  %22 = lshr i32 %add22.i.us.i.1, 2
  %conv23.i.us.i.1 = trunc i32 %22 to i8
  store i8 %conv23.i.us.i.1, i8* %arrayidx2.i.us.i.1, align 1, !tbaa !57
  %mul26.i.us.i.1 = shl nuw nsw i32 %conv9.i.us.i.1, 1
  %add27.i.us.i.1 = add nuw nsw i32 %conv.i.us.i.1, 2
  %add28.i.us.i.1 = add nuw nsw i32 %add27.i.us.i.1, %conv6.i.us.i.1
  %add29.i.us.i.1 = add nuw nsw i32 %add28.i.us.i.1, %mul26.i.us.i.1
  %23 = lshr i32 %add29.i.us.i.1, 2
  %conv31.i.us.i.1 = trunc i32 %23 to i8
  store i8 %conv31.i.us.i.1, i8* %incdec.ptr.us.i, align 1, !tbaa !57
  br label %deblock_edge_chroma_intra_c.exit.us.i.1

deblock_edge_chroma_intra_c.exit.us.i.1:          ; preds = %if.then.i.us.i.1, %land.lhs.true15.i.us.i.1, %land.lhs.true.i.us.i.1, %deblock_edge_chroma_intra_c.exit.us.i
  %inc6.us.i = add nuw nsw i32 %d.020.us.i, 1
  %add.ptr.us.i = getelementptr inbounds i8, i8* %pix.addr.019.us.i, i32 %stride
  %exitcond22.i = icmp eq i32 %inc6.us.i, 16
  br i1 %exitcond22.i, label %deblock_chroma_intra_c.exit, label %for.cond1.preheader.us.i
}

; Function Attrs: nofree norecurse nounwind
define internal void @deblock_h_luma_mbaff_c(i8* nocapture %pix, i32 %stride, i32 %alpha, i32 %beta, i8* nocapture readonly %tc0) #3 {
entry:
  br label %for.body

for.cond.cleanup:                                 ; preds = %deblock_edge_luma_c.exit
  ret void

for.body:                                         ; preds = %deblock_edge_luma_c.exit, %entry
  %d.07 = phi i32 [ 0, %entry ], [ %inc, %deblock_edge_luma_c.exit ]
  %pix.addr.05 = phi i8* [ %pix, %entry ], [ %add.ptr, %deblock_edge_luma_c.exit ]
  %0 = lshr i32 %d.07, 1
  %arrayidx = getelementptr inbounds i8, i8* %tc0, i32 %0
  %1 = load i8, i8* %arrayidx, align 1, !tbaa !57
  %arrayidx.i = getelementptr inbounds i8, i8* %pix.addr.05, i32 -3
  %2 = load i8, i8* %arrayidx.i, align 1, !tbaa !57
  %conv.i = zext i8 %2 to i32
  %arrayidx2.i = getelementptr inbounds i8, i8* %pix.addr.05, i32 -2
  %3 = load i8, i8* %arrayidx2.i, align 1, !tbaa !57
  %conv3.i = zext i8 %3 to i32
  %arrayidx5.i = getelementptr inbounds i8, i8* %pix.addr.05, i32 -1
  %4 = load i8, i8* %arrayidx5.i, align 1, !tbaa !57
  %conv6.i = zext i8 %4 to i32
  %5 = load i8, i8* %pix.addr.05, align 1, !tbaa !57
  %conv9.i = zext i8 %5 to i32
  %arrayidx11.i = getelementptr inbounds i8, i8* %pix.addr.05, i32 1
  %6 = load i8, i8* %arrayidx11.i, align 1, !tbaa !57
  %conv12.i = zext i8 %6 to i32
  %arrayidx14.i = getelementptr inbounds i8, i8* %pix.addr.05, i32 2
  %7 = load i8, i8* %arrayidx14.i, align 1, !tbaa !57
  %conv15.i = zext i8 %7 to i32
  %sub.i = sub nsw i32 %conv6.i, %conv9.i
  %8 = icmp slt i32 %sub.i, 0
  %neg.i = sub nsw i32 0, %sub.i
  %9 = select i1 %8, i32 %neg.i, i32 %sub.i
  %cmp.i = icmp slt i32 %9, %alpha
  br i1 %cmp.i, label %land.lhs.true.i, label %deblock_edge_luma_c.exit

land.lhs.true.i:                                  ; preds = %for.body
  %sub17.i = sub nsw i32 %conv3.i, %conv6.i
  %10 = icmp slt i32 %sub17.i, 0
  %neg146.i = sub nsw i32 0, %sub17.i
  %11 = select i1 %10, i32 %neg146.i, i32 %sub17.i
  %cmp19.i = icmp slt i32 %11, %beta
  br i1 %cmp19.i, label %land.lhs.true21.i, label %deblock_edge_luma_c.exit

land.lhs.true21.i:                                ; preds = %land.lhs.true.i
  %sub22.i = sub nsw i32 %conv12.i, %conv9.i
  %12 = icmp slt i32 %sub22.i, 0
  %neg147.i = sub nsw i32 0, %sub22.i
  %13 = select i1 %12, i32 %neg147.i, i32 %sub22.i
  %cmp24.i = icmp slt i32 %13, %beta
  br i1 %cmp24.i, label %if.then.i, label %deblock_edge_luma_c.exit

if.then.i:                                        ; preds = %land.lhs.true21.i
  %conv26.i = sext i8 %1 to i32
  %sub27.i = sub nsw i32 %conv.i, %conv6.i
  %14 = icmp slt i32 %sub27.i, 0
  %neg148.i = sub nsw i32 0, %sub27.i
  %15 = select i1 %14, i32 %neg148.i, i32 %sub27.i
  %cmp29.i = icmp slt i32 %15, %beta
  br i1 %cmp29.i, label %if.then31.i, label %if.end45.i

if.then31.i:                                      ; preds = %if.then.i
  %tobool.i = icmp eq i8 %1, 0
  br i1 %tobool.i, label %if.end.i, label %if.then32.i

if.then32.i:                                      ; preds = %if.then31.i
  %add.i = add nuw nsw i32 %conv6.i, 1
  %add33.i = add nuw nsw i32 %add.i, %conv9.i
  %16 = lshr i32 %add33.i, 1
  %add34.i = add nuw nsw i32 %16, %conv.i
  %17 = lshr i32 %add34.i, 1
  %sub36.i = sub nsw i32 %17, %conv3.i
  %sub38.i = sub nsw i32 0, %conv26.i
  %cmp.i.i = icmp slt i32 %sub36.i, %sub38.i
  %cmp1.i.i = icmp sgt i32 %sub36.i, %conv26.i
  %cond.i.i = select i1 %cmp1.i.i, i32 %conv26.i, i32 %sub36.i
  %cond5.i.i = select i1 %cmp.i.i, i32 %sub38.i, i32 %cond.i.i
  %18 = trunc i32 %cond5.i.i to i8
  %conv42.i = add i8 %3, %18
  store i8 %conv42.i, i8* %arrayidx2.i, align 1, !tbaa !57
  br label %if.end.i

if.end.i:                                         ; preds = %if.then32.i, %if.then31.i
  %inc.i = add nsw i32 %conv26.i, 1
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.end.i, %if.then.i
  %tc.0.i = phi i32 [ %inc.i, %if.end.i ], [ %conv26.i, %if.then.i ]
  %sub46.i = sub nsw i32 %conv15.i, %conv9.i
  %19 = icmp slt i32 %sub46.i, 0
  %neg149.i = sub nsw i32 0, %sub46.i
  %20 = select i1 %19, i32 %neg149.i, i32 %sub46.i
  %cmp48.i = icmp slt i32 %20, %beta
  br i1 %cmp48.i, label %if.then50.i, label %if.end69.i

if.then50.i:                                      ; preds = %if.end45.i
  %tobool51.i = icmp eq i8 %1, 0
  br i1 %tobool51.i, label %if.end67.i, label %if.then52.i

if.then52.i:                                      ; preds = %if.then50.i
  %add53.i = add nuw nsw i32 %conv6.i, 1
  %add54.i = add nuw nsw i32 %add53.i, %conv9.i
  %21 = lshr i32 %add54.i, 1
  %add56.i = add nuw nsw i32 %21, %conv15.i
  %22 = lshr i32 %add56.i, 1
  %sub58.i = sub nsw i32 %22, %conv12.i
  %sub60.i = sub nsw i32 0, %conv26.i
  %cmp.i160.i = icmp slt i32 %sub58.i, %sub60.i
  %cmp1.i161.i = icmp sgt i32 %sub58.i, %conv26.i
  %cond.i162.i = select i1 %cmp1.i161.i, i32 %conv26.i, i32 %sub58.i
  %cond5.i163.i = select i1 %cmp.i160.i, i32 %sub60.i, i32 %cond.i162.i
  %23 = trunc i32 %cond5.i163.i to i8
  %conv64.i = add i8 %6, %23
  store i8 %conv64.i, i8* %arrayidx11.i, align 1, !tbaa !57
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.then52.i, %if.then50.i
  %inc68.i = add nsw i32 %tc.0.i, 1
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.end67.i, %if.end45.i
  %tc.1.i = phi i32 [ %inc68.i, %if.end67.i ], [ %tc.0.i, %if.end45.i ]
  %sub70.i = sub nsw i32 %conv9.i, %conv6.i
  %mul71.i = shl nsw i32 %sub70.i, 2
  %sub72.i = add nuw nsw i32 %conv3.i, 4
  %add73.i = sub nsw i32 %sub72.i, %conv12.i
  %add74.i = add nsw i32 %add73.i, %mul71.i
  %shr75.i = ashr i32 %add74.i, 3
  %sub76.i = sub nsw i32 0, %tc.1.i
  %cmp.i156.i = icmp slt i32 %shr75.i, %sub76.i
  %cmp1.i157.i = icmp sgt i32 %shr75.i, %tc.1.i
  %cond.i158.i = select i1 %cmp1.i157.i, i32 %tc.1.i, i32 %shr75.i
  %cond5.i159.i = select i1 %cmp.i156.i, i32 %sub76.i, i32 %cond.i158.i
  %add78.i = add nsw i32 %cond5.i159.i, %conv6.i
  %tobool.i151.i = icmp ugt i32 %add78.i, 255
  %sub.i152.i = sub nsw i32 0, %add78.i
  %shr.i153.i = ashr i32 %sub.i152.i, 31
  %cond.i154.i = select i1 %tobool.i151.i, i32 %shr.i153.i, i32 %add78.i
  %conv.i155.i = trunc i32 %cond.i154.i to i8
  store i8 %conv.i155.i, i8* %arrayidx5.i, align 1, !tbaa !57
  %sub82.i = sub nsw i32 %conv9.i, %cond5.i159.i
  %tobool.i.i = icmp ugt i32 %sub82.i, 255
  %sub.i.i = sub nsw i32 0, %sub82.i
  %shr.i.i = ashr i32 %sub.i.i, 31
  %cond.i150.i = select i1 %tobool.i.i, i32 %shr.i.i, i32 %sub82.i
  %conv.i.i = trunc i32 %cond.i150.i to i8
  store i8 %conv.i.i, i8* %pix.addr.05, align 1, !tbaa !57
  br label %deblock_edge_luma_c.exit

deblock_edge_luma_c.exit:                         ; preds = %for.body, %land.lhs.true.i, %land.lhs.true21.i, %if.end69.i
  %inc = add nuw nsw i32 %d.07, 1
  %add.ptr = getelementptr inbounds i8, i8* %pix.addr.05, i32 %stride
  %exitcond = icmp eq i32 %inc, 8
  br i1 %exitcond, label %for.cond.cleanup, label %for.body
}

; Function Attrs: nofree norecurse nounwind
define internal void @deblock_h_chroma_mbaff_c(i8* nocapture %pix, i32 %stride, i32 %alpha, i32 %beta, i8* nocapture readonly %tc0) #3 {
entry:
  br label %for.body.us.i

for.body.us.i:                                    ; preds = %cleanup.us.i, %entry
  %pix.addr.045.us.i = phi i8* [ %pix.addr.3.us.i, %cleanup.us.i ], [ %pix, %entry ]
  %i.044.us.i = phi i32 [ %inc19.us.i, %cleanup.us.i ], [ 0, %entry ]
  %arrayidx.us.i = getelementptr inbounds i8, i8* %tc0, i32 %i.044.us.i
  %0 = load i8, i8* %arrayidx.us.i, align 1, !tbaa !57
  %cmp1.us.i = icmp slt i8 %0, 1
  br i1 %cmp1.us.i, label %cleanup.us.i, label %for.cond8.preheader.us.i

land.lhs.true.i.us.i:                             ; preds = %for.cond8.preheader.us.i
  %sub11.i.us.i = sub nsw i32 %conv.i.us.i, %conv3.i.us.i
  %1 = icmp slt i32 %sub11.i.us.i, 0
  %neg62.i.us.i = sub nsw i32 0, %sub11.i.us.i
  %2 = select i1 %1, i32 %neg62.i.us.i, i32 %sub11.i.us.i
  %cmp13.i.us.i = icmp slt i32 %2, %beta
  br i1 %cmp13.i.us.i, label %land.lhs.true15.i.us.i, label %deblock_edge_chroma_c.exit.us.i

land.lhs.true15.i.us.i:                           ; preds = %land.lhs.true.i.us.i
  %sub16.i.us.i = sub nsw i32 %conv9.i.us.i, %conv6.i.us.i
  %3 = icmp slt i32 %sub16.i.us.i, 0
  %neg63.i.us.i = sub nsw i32 0, %sub16.i.us.i
  %4 = select i1 %3, i32 %neg63.i.us.i, i32 %sub16.i.us.i
  %cmp18.i.us.i = icmp slt i32 %4, %beta
  br i1 %cmp18.i.us.i, label %if.then.i.us.i, label %deblock_edge_chroma_c.exit.us.i

if.then.i.us.i:                                   ; preds = %land.lhs.true15.i.us.i
  %sub20.i.us.i = sub nsw i32 %conv6.i.us.i, %conv3.i.us.i
  %mul21.i.us.i = shl nsw i32 %sub20.i.us.i, 2
  %sub22.i.us.i = add nuw nsw i32 %conv.i.us.i, 4
  %add.i.us.i = sub nsw i32 %sub22.i.us.i, %conv9.i.us.i
  %add23.i.us.i = add nsw i32 %add.i.us.i, %mul21.i.us.i
  %shr.i.us.i = ashr i32 %add23.i.us.i, 3
  %conv24.i.us.i4 = zext i8 %0 to i32
  %sub25.i.us.i = sub nsw i32 0, %conv24.i.us.i4
  %cmp.i.i.us.i = icmp slt i32 %shr.i.us.i, %sub25.i.us.i
  %cmp1.i.i.us.i = icmp sgt i32 %shr.i.us.i, %conv24.i.us.i4
  %cond.i.i.us.i = select i1 %cmp1.i.i.us.i, i32 %conv24.i.us.i4, i32 %shr.i.us.i
  %cond5.i.i.us.i = select i1 %cmp.i.i.us.i, i32 %sub25.i.us.i, i32 %cond.i.i.us.i
  %add28.i.us.i = add nsw i32 %cond5.i.i.us.i, %conv3.i.us.i
  %tobool.i65.i.us.i = icmp ugt i32 %add28.i.us.i, 255
  %sub.i66.i.us.i = sub nsw i32 0, %add28.i.us.i
  %shr.i67.i.us.i = ashr i32 %sub.i66.i.us.i, 31
  %cond.i68.i.us.i = select i1 %tobool.i65.i.us.i, i32 %shr.i67.i.us.i, i32 %add28.i.us.i
  %conv.i69.i.us.i = trunc i32 %cond.i68.i.us.i to i8
  store i8 %conv.i69.i.us.i, i8* %arrayidx2.i.us.i.phi.trans.insert, align 1, !tbaa !57
  %sub32.i.us.i = sub nsw i32 %conv6.i.us.i, %cond5.i.i.us.i
  %tobool.i.i.us.i = icmp ugt i32 %sub32.i.us.i, 255
  %sub.i.i.us.i = sub nsw i32 0, %sub32.i.us.i
  %shr.i.i.us.i = ashr i32 %sub.i.i.us.i, 31
  %cond.i64.i.us.i = select i1 %tobool.i.i.us.i, i32 %shr.i.i.us.i, i32 %sub32.i.us.i
  %conv.i.i.us.i = trunc i32 %cond.i64.i.us.i to i8
  store i8 %conv.i.i.us.i, i8* %pix.addr.045.us.i, align 1, !tbaa !57
  %.pre48.i = load i8, i8* %arrayidx.us.i, align 1, !tbaa !57
  br label %deblock_edge_chroma_c.exit.us.i

deblock_edge_chroma_c.exit.us.i:                  ; preds = %for.cond8.preheader.us.i, %if.then.i.us.i, %land.lhs.true15.i.us.i, %land.lhs.true.i.us.i
  %5 = phi i8 [ %.pre48.i, %if.then.i.us.i ], [ %0, %land.lhs.true15.i.us.i ], [ %0, %land.lhs.true.i.us.i ], [ %0, %for.cond8.preheader.us.i ]
  %incdec.ptr.us.i = getelementptr inbounds i8, i8* %pix.addr.045.us.i, i32 1
  %arrayidx.i.us.1.i = getelementptr inbounds i8, i8* %pix.addr.045.us.i, i32 -3
  %6 = load i8, i8* %arrayidx.i.us.1.i, align 1, !tbaa !57
  %conv.i.us.1.i = zext i8 %6 to i32
  %arrayidx2.i.us.1.i = getelementptr inbounds i8, i8* %pix.addr.045.us.i, i32 -1
  %7 = load i8, i8* %arrayidx2.i.us.1.i, align 1, !tbaa !57
  %conv3.i.us.1.i = zext i8 %7 to i32
  %8 = load i8, i8* %incdec.ptr.us.i, align 1, !tbaa !57
  %conv6.i.us.1.i = zext i8 %8 to i32
  %arrayidx8.i.us.1.i = getelementptr inbounds i8, i8* %pix.addr.045.us.i, i32 3
  %9 = load i8, i8* %arrayidx8.i.us.1.i, align 1, !tbaa !57
  %conv9.i.us.1.i = zext i8 %9 to i32
  %sub.i.us.1.i = sub nsw i32 %conv3.i.us.1.i, %conv6.i.us.1.i
  %10 = icmp slt i32 %sub.i.us.1.i, 0
  %neg.i.us.1.i = sub nsw i32 0, %sub.i.us.1.i
  %11 = select i1 %10, i32 %neg.i.us.1.i, i32 %sub.i.us.1.i
  %cmp.i.us.1.i = icmp slt i32 %11, %alpha
  br i1 %cmp.i.us.1.i, label %land.lhs.true.i.us.1.i, label %cleanup.us.i

cleanup.us.i:                                     ; preds = %deblock_edge_chroma_c.exit.us.i, %land.lhs.true.i.us.1.i, %land.lhs.true15.i.us.1.i, %if.then.i.us.1.i, %for.body.us.i
  %pix.addr.3.us.i = getelementptr inbounds i8, i8* %pix.addr.045.us.i, i32 %stride
  %inc19.us.i = add nuw nsw i32 %i.044.us.i, 1
  %exitcond47.i = icmp eq i32 %inc19.us.i, 4
  br i1 %exitcond47.i, label %deblock_chroma_c.exit, label %for.body.us.i

for.cond8.preheader.us.i:                         ; preds = %for.body.us.i
  %arrayidx.i.us.i.phi.trans.insert = getelementptr inbounds i8, i8* %pix.addr.045.us.i, i32 -4
  %.pre = load i8, i8* %arrayidx.i.us.i.phi.trans.insert, align 1, !tbaa !57
  %arrayidx2.i.us.i.phi.trans.insert = getelementptr inbounds i8, i8* %pix.addr.045.us.i, i32 -2
  %.pre1 = load i8, i8* %arrayidx2.i.us.i.phi.trans.insert, align 1, !tbaa !57
  %.pre2 = load i8, i8* %pix.addr.045.us.i, align 1, !tbaa !57
  %arrayidx8.i.us.i.phi.trans.insert = getelementptr inbounds i8, i8* %pix.addr.045.us.i, i32 2
  %.pre3 = load i8, i8* %arrayidx8.i.us.i.phi.trans.insert, align 1, !tbaa !57
  %conv.i.us.i = zext i8 %.pre to i32
  %conv3.i.us.i = zext i8 %.pre1 to i32
  %conv6.i.us.i = zext i8 %.pre2 to i32
  %conv9.i.us.i = zext i8 %.pre3 to i32
  %sub.i.us.i = sub nsw i32 %conv3.i.us.i, %conv6.i.us.i
  %12 = icmp slt i32 %sub.i.us.i, 0
  %neg.i.us.i = sub nsw i32 0, %sub.i.us.i
  %13 = select i1 %12, i32 %neg.i.us.i, i32 %sub.i.us.i
  %cmp.i.us.i = icmp slt i32 %13, %alpha
  br i1 %cmp.i.us.i, label %land.lhs.true.i.us.i, label %deblock_edge_chroma_c.exit.us.i

land.lhs.true.i.us.1.i:                           ; preds = %deblock_edge_chroma_c.exit.us.i
  %sub11.i.us.1.i = sub nsw i32 %conv.i.us.1.i, %conv3.i.us.1.i
  %14 = icmp slt i32 %sub11.i.us.1.i, 0
  %neg62.i.us.1.i = sub nsw i32 0, %sub11.i.us.1.i
  %15 = select i1 %14, i32 %neg62.i.us.1.i, i32 %sub11.i.us.1.i
  %cmp13.i.us.1.i = icmp slt i32 %15, %beta
  br i1 %cmp13.i.us.1.i, label %land.lhs.true15.i.us.1.i, label %cleanup.us.i

land.lhs.true15.i.us.1.i:                         ; preds = %land.lhs.true.i.us.1.i
  %sub16.i.us.1.i = sub nsw i32 %conv9.i.us.1.i, %conv6.i.us.1.i
  %16 = icmp slt i32 %sub16.i.us.1.i, 0
  %neg63.i.us.1.i = sub nsw i32 0, %sub16.i.us.1.i
  %17 = select i1 %16, i32 %neg63.i.us.1.i, i32 %sub16.i.us.1.i
  %cmp18.i.us.1.i = icmp slt i32 %17, %beta
  br i1 %cmp18.i.us.1.i, label %if.then.i.us.1.i, label %cleanup.us.i

if.then.i.us.1.i:                                 ; preds = %land.lhs.true15.i.us.1.i
  %sub20.i.us.1.i = sub nsw i32 %conv6.i.us.1.i, %conv3.i.us.1.i
  %mul21.i.us.1.i = shl nsw i32 %sub20.i.us.1.i, 2
  %sub22.i.us.1.i = add nuw nsw i32 %conv.i.us.1.i, 4
  %add.i.us.1.i = sub nsw i32 %sub22.i.us.1.i, %conv9.i.us.1.i
  %add23.i.us.1.i = add nsw i32 %add.i.us.1.i, %mul21.i.us.1.i
  %shr.i.us.1.i = ashr i32 %add23.i.us.1.i, 3
  %conv24.i.us.1.i = sext i8 %5 to i32
  %sub25.i.us.1.i = sub nsw i32 0, %conv24.i.us.1.i
  %cmp.i.i.us.1.i = icmp slt i32 %shr.i.us.1.i, %sub25.i.us.1.i
  %cmp1.i.i.us.1.i = icmp sgt i32 %shr.i.us.1.i, %conv24.i.us.1.i
  %cond.i.i.us.1.i = select i1 %cmp1.i.i.us.1.i, i32 %conv24.i.us.1.i, i32 %shr.i.us.1.i
  %cond5.i.i.us.1.i = select i1 %cmp.i.i.us.1.i, i32 %sub25.i.us.1.i, i32 %cond.i.i.us.1.i
  %add28.i.us.1.i = add nsw i32 %cond5.i.i.us.1.i, %conv3.i.us.1.i
  %tobool.i65.i.us.1.i = icmp ugt i32 %add28.i.us.1.i, 255
  %sub.i66.i.us.1.i = sub nsw i32 0, %add28.i.us.1.i
  %shr.i67.i.us.1.i = ashr i32 %sub.i66.i.us.1.i, 31
  %cond.i68.i.us.1.i = select i1 %tobool.i65.i.us.1.i, i32 %shr.i67.i.us.1.i, i32 %add28.i.us.1.i
  %conv.i69.i.us.1.i = trunc i32 %cond.i68.i.us.1.i to i8
  store i8 %conv.i69.i.us.1.i, i8* %arrayidx2.i.us.1.i, align 1, !tbaa !57
  %sub32.i.us.1.i = sub nsw i32 %conv6.i.us.1.i, %cond5.i.i.us.1.i
  %tobool.i.i.us.1.i = icmp ugt i32 %sub32.i.us.1.i, 255
  %sub.i.i.us.1.i = sub nsw i32 0, %sub32.i.us.1.i
  %shr.i.i.us.1.i = ashr i32 %sub.i.i.us.1.i, 31
  %cond.i64.i.us.1.i = select i1 %tobool.i.i.us.1.i, i32 %shr.i.i.us.1.i, i32 %sub32.i.us.1.i
  %conv.i.i.us.1.i = trunc i32 %cond.i64.i.us.1.i to i8
  store i8 %conv.i.i.us.1.i, i8* %incdec.ptr.us.i, align 1, !tbaa !57
  br label %cleanup.us.i

deblock_chroma_c.exit:                            ; preds = %cleanup.us.i
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @deblock_h_luma_intra_mbaff_c(i8* nocapture %pix, i32 %ystride, i32 %alpha, i32 %beta) #3 {
entry:
  %shr.i = ashr i32 %alpha, 2
  %add.i = add nsw i32 %shr.i, 2
  br label %for.body

for.cond.cleanup:                                 ; preds = %deblock_edge_luma_intra_c.exit
  ret void

for.body:                                         ; preds = %deblock_edge_luma_intra_c.exit, %entry
  %d.07 = phi i32 [ 0, %entry ], [ %inc, %deblock_edge_luma_intra_c.exit ]
  %pix.addr.04 = phi i8* [ %pix, %entry ], [ %add.ptr, %deblock_edge_luma_intra_c.exit ]
  %arrayidx.i = getelementptr inbounds i8, i8* %pix.addr.04, i32 -3
  %0 = load i8, i8* %arrayidx.i, align 1, !tbaa !57
  %conv.i = zext i8 %0 to i32
  %arrayidx2.i = getelementptr inbounds i8, i8* %pix.addr.04, i32 -2
  %1 = load i8, i8* %arrayidx2.i, align 1, !tbaa !57
  %conv3.i = zext i8 %1 to i32
  %arrayidx5.i = getelementptr inbounds i8, i8* %pix.addr.04, i32 -1
  %2 = load i8, i8* %arrayidx5.i, align 1, !tbaa !57
  %conv6.i = zext i8 %2 to i32
  %3 = load i8, i8* %pix.addr.04, align 1, !tbaa !57
  %conv9.i = zext i8 %3 to i32
  %arrayidx11.i = getelementptr inbounds i8, i8* %pix.addr.04, i32 1
  %4 = load i8, i8* %arrayidx11.i, align 1, !tbaa !57
  %conv12.i = zext i8 %4 to i32
  %arrayidx14.i = getelementptr inbounds i8, i8* %pix.addr.04, i32 2
  %5 = load i8, i8* %arrayidx14.i, align 1, !tbaa !57
  %conv15.i = zext i8 %5 to i32
  %sub.i = sub nsw i32 %conv6.i, %conv9.i
  %6 = icmp slt i32 %sub.i, 0
  %neg.i = sub nsw i32 0, %sub.i
  %7 = select i1 %6, i32 %neg.i, i32 %sub.i
  %cmp.i = icmp slt i32 %7, %alpha
  br i1 %cmp.i, label %land.lhs.true.i, label %deblock_edge_luma_intra_c.exit

land.lhs.true.i:                                  ; preds = %for.body
  %sub17.i = sub nsw i32 %conv3.i, %conv6.i
  %8 = icmp slt i32 %sub17.i, 0
  %neg236.i = sub nsw i32 0, %sub17.i
  %9 = select i1 %8, i32 %neg236.i, i32 %sub17.i
  %cmp19.i = icmp slt i32 %9, %beta
  br i1 %cmp19.i, label %land.lhs.true21.i, label %deblock_edge_luma_intra_c.exit

land.lhs.true21.i:                                ; preds = %land.lhs.true.i
  %sub22.i = sub nsw i32 %conv12.i, %conv9.i
  %10 = icmp slt i32 %sub22.i, 0
  %neg237.i = sub nsw i32 0, %sub22.i
  %11 = select i1 %10, i32 %neg237.i, i32 %sub22.i
  %cmp24.i = icmp slt i32 %11, %beta
  br i1 %cmp24.i, label %if.then.i, label %deblock_edge_luma_intra_c.exit

if.then.i:                                        ; preds = %land.lhs.true21.i
  %cmp28.i = icmp slt i32 %7, %add.i
  br i1 %cmp28.i, label %if.then30.i, label %if.else127.i

if.then30.i:                                      ; preds = %if.then.i
  %sub31.i = sub nsw i32 %conv.i, %conv6.i
  %12 = icmp slt i32 %sub31.i, 0
  %neg238.i = sub nsw i32 0, %sub31.i
  %13 = select i1 %12, i32 %neg238.i, i32 %sub31.i
  %cmp33.i = icmp slt i32 %13, %beta
  br i1 %cmp33.i, label %if.then35.i, label %if.else.i

if.then35.i:                                      ; preds = %if.then30.i
  %arrayidx37.i = getelementptr inbounds i8, i8* %pix.addr.04, i32 -4
  %14 = load i8, i8* %arrayidx37.i, align 1, !tbaa !57
  %conv38.i = zext i8 %14 to i32
  %reass.add.i = add nuw nsw i32 %conv9.i, %conv6.i
  %reass.add240.i = add nuw nsw i32 %reass.add.i, %conv3.i
  %reass.mul.i = shl nuw nsw i32 %reass.add240.i, 1
  %add44.i = add nuw nsw i32 %conv12.i, 4
  %add45.i = add nuw nsw i32 %add44.i, %conv.i
  %add46.i = add nuw nsw i32 %add45.i, %reass.mul.i
  %15 = lshr i32 %add46.i, 3
  %conv48.i = trunc i32 %15 to i8
  store i8 %conv48.i, i8* %arrayidx5.i, align 1, !tbaa !57
  %add51.i = add nuw nsw i32 %conv6.i, 2
  %add52.i = add nuw nsw i32 %add51.i, %conv.i
  %add53.i = add nuw nsw i32 %add52.i, %conv3.i
  %add54.i = add nuw nsw i32 %add53.i, %conv9.i
  %16 = lshr i32 %add54.i, 2
  %conv56.i = trunc i32 %16 to i8
  store i8 %conv56.i, i8* %arrayidx2.i, align 1, !tbaa !57
  %mul59.i = shl nuw nsw i32 %conv38.i, 1
  %mul60.i = mul nuw nsw i32 %conv.i, 3
  %add62.i = add nuw nsw i32 %conv3.i, 4
  %add63.i = add nuw nsw i32 %add62.i, %mul60.i
  br label %if.end.i

if.else.i:                                        ; preds = %if.then30.i
  %mul70.i = shl nuw nsw i32 %conv3.i, 1
  %add71.i = add nuw nsw i32 %conv6.i, 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then35.i
  %mul70.i.sink = phi i32 [ %mul70.i, %if.else.i ], [ %reass.add.i, %if.then35.i ]
  %add71.i.sink = phi i32 [ %add71.i, %if.else.i ], [ %add63.i, %if.then35.i ]
  %conv12.i.sink = phi i32 [ %conv12.i, %if.else.i ], [ %mul59.i, %if.then35.i ]
  %.sink8 = phi i32 [ 2, %if.else.i ], [ 3, %if.then35.i ]
  %arrayidx5.i.sink = phi i8* [ %arrayidx5.i, %if.else.i ], [ %arrayidx.i, %if.then35.i ]
  %add72.i = add nuw nsw i32 %add71.i.sink, %mul70.i.sink
  %add73.i = add nuw nsw i32 %add72.i, %conv12.i.sink
  %17 = lshr i32 %add73.i, %.sink8
  %conv75.i = trunc i32 %17 to i8
  store i8 %conv75.i, i8* %arrayidx5.i.sink, align 1, !tbaa !57
  %sub78.i = sub nsw i32 %conv15.i, %conv9.i
  %18 = icmp slt i32 %sub78.i, 0
  %neg239.i = sub nsw i32 0, %sub78.i
  %19 = select i1 %18, i32 %neg239.i, i32 %sub78.i
  %cmp80.i = icmp slt i32 %19, %beta
  br i1 %cmp80.i, label %if.then82.i, label %if.else117.i

if.then82.i:                                      ; preds = %if.end.i
  %arrayidx84.i = getelementptr inbounds i8, i8* %pix.addr.04, i32 3
  %20 = load i8, i8* %arrayidx84.i, align 1, !tbaa !57
  %conv85.i = zext i8 %20 to i32
  %reass.add241.i = add nuw nsw i32 %conv9.i, %conv6.i
  %reass.add242.i = add nuw nsw i32 %reass.add241.i, %conv12.i
  %reass.mul243.i = shl nuw nsw i32 %reass.add242.i, 1
  %add91.i = add nuw nsw i32 %conv3.i, 4
  %add92.i = add nuw nsw i32 %add91.i, %conv15.i
  %add93.i = add nuw nsw i32 %add92.i, %reass.mul243.i
  %21 = lshr i32 %add93.i, 3
  %conv95.i = trunc i32 %21 to i8
  store i8 %conv95.i, i8* %pix.addr.04, align 1, !tbaa !57
  %add98.i = add nuw nsw i32 %conv6.i, 2
  %add99.i = add nuw nsw i32 %add98.i, %conv9.i
  %add100.i = add nuw nsw i32 %add99.i, %conv12.i
  %add101.i = add nuw nsw i32 %add100.i, %conv15.i
  %22 = lshr i32 %add101.i, 2
  %conv103.i = trunc i32 %22 to i8
  store i8 %conv103.i, i8* %arrayidx11.i, align 1, !tbaa !57
  %mul106.i = shl nuw nsw i32 %conv85.i, 1
  %mul107.i = mul nuw nsw i32 %conv15.i, 3
  %add110.i = add nuw nsw i32 %reass.add242.i, 4
  %add111.i = add nuw nsw i32 %add110.i, %mul107.i
  %add112.i = add nuw nsw i32 %add111.i, %mul106.i
  %23 = lshr i32 %add112.i, 3
  %conv114.i = trunc i32 %23 to i8
  store i8 %conv114.i, i8* %arrayidx14.i, align 1, !tbaa !57
  br label %deblock_edge_luma_intra_c.exit

if.else117.i:                                     ; preds = %if.end.i
  %mul118.i = shl nuw nsw i32 %conv12.i, 1
  %add119.i = add nuw nsw i32 %conv9.i, 2
  %add120.i = add nuw nsw i32 %add119.i, %conv3.i
  %add121.i = add nuw nsw i32 %add120.i, %mul118.i
  %24 = lshr i32 %add121.i, 2
  %conv123.i = trunc i32 %24 to i8
  store i8 %conv123.i, i8* %pix.addr.04, align 1, !tbaa !57
  br label %deblock_edge_luma_intra_c.exit

if.else127.i:                                     ; preds = %if.then.i
  %mul128.i = shl nuw nsw i32 %conv3.i, 1
  %add129.i = add nuw nsw i32 %conv6.i, 2
  %add130.i = add nuw nsw i32 %add129.i, %mul128.i
  %add131.i = add nuw nsw i32 %add130.i, %conv12.i
  %25 = lshr i32 %add131.i, 2
  %conv133.i = trunc i32 %25 to i8
  store i8 %conv133.i, i8* %arrayidx5.i, align 1, !tbaa !57
  %mul136.i = shl nuw nsw i32 %conv12.i, 1
  %add137.i = add nuw nsw i32 %conv9.i, 2
  %add138.i = add nuw nsw i32 %add137.i, %conv3.i
  %add139.i = add nuw nsw i32 %add138.i, %mul136.i
  %26 = lshr i32 %add139.i, 2
  %conv141.i = trunc i32 %26 to i8
  store i8 %conv141.i, i8* %pix.addr.04, align 1, !tbaa !57
  br label %deblock_edge_luma_intra_c.exit

deblock_edge_luma_intra_c.exit:                   ; preds = %for.body, %land.lhs.true.i, %land.lhs.true21.i, %if.then82.i, %if.else117.i, %if.else127.i
  %inc = add nuw nsw i32 %d.07, 1
  %add.ptr = getelementptr inbounds i8, i8* %pix.addr.04, i32 %ystride
  %exitcond = icmp eq i32 %inc, 8
  br i1 %exitcond, label %for.cond.cleanup, label %for.body
}

; Function Attrs: nofree norecurse nounwind
define internal void @deblock_h_chroma_intra_mbaff_c(i8* nocapture %pix, i32 %stride, i32 %alpha, i32 %beta) #3 {
entry:
  %sub.i = add nsw i32 %stride, -2
  %arrayidx.i.us.i = getelementptr inbounds i8, i8* %pix, i32 -4
  %0 = load i8, i8* %arrayidx.i.us.i, align 1, !tbaa !57
  %conv.i.us.i = zext i8 %0 to i32
  %arrayidx2.i.us.i = getelementptr inbounds i8, i8* %pix, i32 -2
  %1 = load i8, i8* %arrayidx2.i.us.i, align 1, !tbaa !57
  %conv3.i.us.i = zext i8 %1 to i32
  %2 = load i8, i8* %pix, align 1, !tbaa !57
  %conv6.i.us.i = zext i8 %2 to i32
  %arrayidx8.i.us.i = getelementptr inbounds i8, i8* %pix, i32 2
  %3 = load i8, i8* %arrayidx8.i.us.i, align 1, !tbaa !57
  %conv9.i.us.i = zext i8 %3 to i32
  %sub.i.us.i = sub nsw i32 %conv3.i.us.i, %conv6.i.us.i
  %4 = icmp slt i32 %sub.i.us.i, 0
  %neg.i.us.i = sub nsw i32 0, %sub.i.us.i
  %5 = select i1 %4, i32 %neg.i.us.i, i32 %sub.i.us.i
  %cmp.i.us.i = icmp slt i32 %5, %alpha
  br i1 %cmp.i.us.i, label %land.lhs.true.i.us.i, label %deblock_edge_chroma_intra_c.exit.us.i

land.lhs.true.i.us.i:                             ; preds = %entry
  %sub11.i.us.i = sub nsw i32 %conv.i.us.i, %conv3.i.us.i
  %6 = icmp slt i32 %sub11.i.us.i, 0
  %neg57.i.us.i = sub nsw i32 0, %sub11.i.us.i
  %7 = select i1 %6, i32 %neg57.i.us.i, i32 %sub11.i.us.i
  %cmp13.i.us.i = icmp slt i32 %7, %beta
  br i1 %cmp13.i.us.i, label %land.lhs.true15.i.us.i, label %deblock_edge_chroma_intra_c.exit.us.i

land.lhs.true15.i.us.i:                           ; preds = %land.lhs.true.i.us.i
  %sub16.i.us.i = sub nsw i32 %conv9.i.us.i, %conv6.i.us.i
  %8 = icmp slt i32 %sub16.i.us.i, 0
  %neg58.i.us.i = sub nsw i32 0, %sub16.i.us.i
  %9 = select i1 %8, i32 %neg58.i.us.i, i32 %sub16.i.us.i
  %cmp18.i.us.i = icmp slt i32 %9, %beta
  br i1 %cmp18.i.us.i, label %if.then.i.us.i, label %deblock_edge_chroma_intra_c.exit.us.i

if.then.i.us.i:                                   ; preds = %land.lhs.true15.i.us.i
  %mul20.i.us.i = shl nuw nsw i32 %conv.i.us.i, 1
  %add.i.us.i = add nuw nsw i32 %conv3.i.us.i, 2
  %add21.i.us.i = add nuw nsw i32 %add.i.us.i, %mul20.i.us.i
  %add22.i.us.i = add nuw nsw i32 %add21.i.us.i, %conv9.i.us.i
  %10 = lshr i32 %add22.i.us.i, 2
  %conv23.i.us.i = trunc i32 %10 to i8
  store i8 %conv23.i.us.i, i8* %arrayidx2.i.us.i, align 1, !tbaa !57
  %mul26.i.us.i = shl nuw nsw i32 %conv9.i.us.i, 1
  %add27.i.us.i = add nuw nsw i32 %conv.i.us.i, 2
  %add28.i.us.i = add nuw nsw i32 %add27.i.us.i, %conv6.i.us.i
  %add29.i.us.i = add nuw nsw i32 %add28.i.us.i, %mul26.i.us.i
  %11 = lshr i32 %add29.i.us.i, 2
  %conv31.i.us.i = trunc i32 %11 to i8
  store i8 %conv31.i.us.i, i8* %pix, align 1, !tbaa !57
  br label %deblock_edge_chroma_intra_c.exit.us.i

deblock_edge_chroma_intra_c.exit.us.i:            ; preds = %if.then.i.us.i, %land.lhs.true15.i.us.i, %land.lhs.true.i.us.i, %entry
  %incdec.ptr.us.i = getelementptr inbounds i8, i8* %pix, i32 1
  %arrayidx.i.us.i.1 = getelementptr inbounds i8, i8* %pix, i32 -3
  %12 = load i8, i8* %arrayidx.i.us.i.1, align 1, !tbaa !57
  %conv.i.us.i.1 = zext i8 %12 to i32
  %arrayidx2.i.us.i.1 = getelementptr inbounds i8, i8* %pix, i32 -1
  %13 = load i8, i8* %arrayidx2.i.us.i.1, align 1, !tbaa !57
  %conv3.i.us.i.1 = zext i8 %13 to i32
  %14 = load i8, i8* %incdec.ptr.us.i, align 1, !tbaa !57
  %conv6.i.us.i.1 = zext i8 %14 to i32
  %arrayidx8.i.us.i.1 = getelementptr inbounds i8, i8* %pix, i32 3
  %15 = load i8, i8* %arrayidx8.i.us.i.1, align 1, !tbaa !57
  %conv9.i.us.i.1 = zext i8 %15 to i32
  %sub.i.us.i.1 = sub nsw i32 %conv3.i.us.i.1, %conv6.i.us.i.1
  %16 = icmp slt i32 %sub.i.us.i.1, 0
  %neg.i.us.i.1 = sub nsw i32 0, %sub.i.us.i.1
  %17 = select i1 %16, i32 %neg.i.us.i.1, i32 %sub.i.us.i.1
  %cmp.i.us.i.1 = icmp slt i32 %17, %alpha
  br i1 %cmp.i.us.i.1, label %land.lhs.true.i.us.i.1, label %deblock_edge_chroma_intra_c.exit.us.i.1

land.lhs.true.i.us.i.1:                           ; preds = %deblock_edge_chroma_intra_c.exit.us.i
  %sub11.i.us.i.1 = sub nsw i32 %conv.i.us.i.1, %conv3.i.us.i.1
  %18 = icmp slt i32 %sub11.i.us.i.1, 0
  %neg57.i.us.i.1 = sub nsw i32 0, %sub11.i.us.i.1
  %19 = select i1 %18, i32 %neg57.i.us.i.1, i32 %sub11.i.us.i.1
  %cmp13.i.us.i.1 = icmp slt i32 %19, %beta
  br i1 %cmp13.i.us.i.1, label %land.lhs.true15.i.us.i.1, label %deblock_edge_chroma_intra_c.exit.us.i.1

land.lhs.true15.i.us.i.1:                         ; preds = %land.lhs.true.i.us.i.1
  %sub16.i.us.i.1 = sub nsw i32 %conv9.i.us.i.1, %conv6.i.us.i.1
  %20 = icmp slt i32 %sub16.i.us.i.1, 0
  %neg58.i.us.i.1 = sub nsw i32 0, %sub16.i.us.i.1
  %21 = select i1 %20, i32 %neg58.i.us.i.1, i32 %sub16.i.us.i.1
  %cmp18.i.us.i.1 = icmp slt i32 %21, %beta
  br i1 %cmp18.i.us.i.1, label %if.then.i.us.i.1, label %deblock_edge_chroma_intra_c.exit.us.i.1

if.then.i.us.i.1:                                 ; preds = %land.lhs.true15.i.us.i.1
  %mul20.i.us.i.1 = shl nuw nsw i32 %conv.i.us.i.1, 1
  %add.i.us.i.1 = add nuw nsw i32 %conv3.i.us.i.1, 2
  %add21.i.us.i.1 = add nuw nsw i32 %add.i.us.i.1, %mul20.i.us.i.1
  %add22.i.us.i.1 = add nuw nsw i32 %add21.i.us.i.1, %conv9.i.us.i.1
  %22 = lshr i32 %add22.i.us.i.1, 2
  %conv23.i.us.i.1 = trunc i32 %22 to i8
  store i8 %conv23.i.us.i.1, i8* %arrayidx2.i.us.i.1, align 1, !tbaa !57
  %mul26.i.us.i.1 = shl nuw nsw i32 %conv9.i.us.i.1, 1
  %add27.i.us.i.1 = add nuw nsw i32 %conv.i.us.i.1, 2
  %add28.i.us.i.1 = add nuw nsw i32 %add27.i.us.i.1, %conv6.i.us.i.1
  %add29.i.us.i.1 = add nuw nsw i32 %add28.i.us.i.1, %mul26.i.us.i.1
  %23 = lshr i32 %add29.i.us.i.1, 2
  %conv31.i.us.i.1 = trunc i32 %23 to i8
  store i8 %conv31.i.us.i.1, i8* %incdec.ptr.us.i, align 1, !tbaa !57
  br label %deblock_edge_chroma_intra_c.exit.us.i.1

deblock_edge_chroma_intra_c.exit.us.i.1:          ; preds = %if.then.i.us.i.1, %land.lhs.true15.i.us.i.1, %land.lhs.true.i.us.i.1, %deblock_edge_chroma_intra_c.exit.us.i
  %add.ptr.us.i = getelementptr inbounds i8, i8* %pix, i32 %stride
  %arrayidx.i.us.i.11 = getelementptr inbounds i8, i8* %add.ptr.us.i, i32 -4
  %24 = load i8, i8* %arrayidx.i.us.i.11, align 1, !tbaa !57
  %conv.i.us.i.12 = zext i8 %24 to i32
  %arrayidx2.i.us.i.13 = getelementptr inbounds i8, i8* %add.ptr.us.i, i32 -2
  %25 = load i8, i8* %arrayidx2.i.us.i.13, align 1, !tbaa !57
  %conv3.i.us.i.14 = zext i8 %25 to i32
  %26 = load i8, i8* %add.ptr.us.i, align 1, !tbaa !57
  %conv6.i.us.i.15 = zext i8 %26 to i32
  %arrayidx8.i.us.i.16 = getelementptr inbounds i8, i8* %add.ptr.us.i, i32 2
  %27 = load i8, i8* %arrayidx8.i.us.i.16, align 1, !tbaa !57
  %conv9.i.us.i.17 = zext i8 %27 to i32
  %sub.i.us.i.18 = sub nsw i32 %conv3.i.us.i.14, %conv6.i.us.i.15
  %28 = icmp slt i32 %sub.i.us.i.18, 0
  %neg.i.us.i.19 = sub nsw i32 0, %sub.i.us.i.18
  %29 = select i1 %28, i32 %neg.i.us.i.19, i32 %sub.i.us.i.18
  %cmp.i.us.i.110 = icmp slt i32 %29, %alpha
  br i1 %cmp.i.us.i.110, label %land.lhs.true.i.us.i.114, label %deblock_edge_chroma_intra_c.exit.us.i.131

land.lhs.true.i.us.i.114:                         ; preds = %deblock_edge_chroma_intra_c.exit.us.i.1
  %sub11.i.us.i.111 = sub nsw i32 %conv.i.us.i.12, %conv3.i.us.i.14
  %30 = icmp slt i32 %sub11.i.us.i.111, 0
  %neg57.i.us.i.112 = sub nsw i32 0, %sub11.i.us.i.111
  %31 = select i1 %30, i32 %neg57.i.us.i.112, i32 %sub11.i.us.i.111
  %cmp13.i.us.i.113 = icmp slt i32 %31, %beta
  br i1 %cmp13.i.us.i.113, label %land.lhs.true15.i.us.i.118, label %deblock_edge_chroma_intra_c.exit.us.i.131

land.lhs.true15.i.us.i.118:                       ; preds = %land.lhs.true.i.us.i.114
  %sub16.i.us.i.115 = sub nsw i32 %conv9.i.us.i.17, %conv6.i.us.i.15
  %32 = icmp slt i32 %sub16.i.us.i.115, 0
  %neg58.i.us.i.116 = sub nsw i32 0, %sub16.i.us.i.115
  %33 = select i1 %32, i32 %neg58.i.us.i.116, i32 %sub16.i.us.i.115
  %cmp18.i.us.i.117 = icmp slt i32 %33, %beta
  br i1 %cmp18.i.us.i.117, label %if.then.i.us.i.129, label %deblock_edge_chroma_intra_c.exit.us.i.131

if.then.i.us.i.129:                               ; preds = %land.lhs.true15.i.us.i.118
  %mul20.i.us.i.119 = shl nuw nsw i32 %conv.i.us.i.12, 1
  %add.i.us.i.120 = add nuw nsw i32 %conv3.i.us.i.14, 2
  %add21.i.us.i.121 = add nuw nsw i32 %add.i.us.i.120, %mul20.i.us.i.119
  %add22.i.us.i.122 = add nuw nsw i32 %add21.i.us.i.121, %conv9.i.us.i.17
  %34 = lshr i32 %add22.i.us.i.122, 2
  %conv23.i.us.i.123 = trunc i32 %34 to i8
  store i8 %conv23.i.us.i.123, i8* %arrayidx2.i.us.i.13, align 1, !tbaa !57
  %mul26.i.us.i.124 = shl nuw nsw i32 %conv9.i.us.i.17, 1
  %add27.i.us.i.125 = add nuw nsw i32 %conv.i.us.i.12, 2
  %add28.i.us.i.126 = add nuw nsw i32 %add27.i.us.i.125, %conv6.i.us.i.15
  %add29.i.us.i.127 = add nuw nsw i32 %add28.i.us.i.126, %mul26.i.us.i.124
  %35 = lshr i32 %add29.i.us.i.127, 2
  %conv31.i.us.i.128 = trunc i32 %35 to i8
  store i8 %conv31.i.us.i.128, i8* %add.ptr.us.i, align 1, !tbaa !57
  br label %deblock_edge_chroma_intra_c.exit.us.i.131

deblock_edge_chroma_intra_c.exit.us.i.131:        ; preds = %if.then.i.us.i.129, %land.lhs.true15.i.us.i.118, %land.lhs.true.i.us.i.114, %deblock_edge_chroma_intra_c.exit.us.i.1
  %incdec.ptr.us.i.130 = getelementptr inbounds i8, i8* %add.ptr.us.i, i32 1
  %arrayidx.i.us.i.1.1 = getelementptr inbounds i8, i8* %incdec.ptr.us.i.130, i32 -4
  %36 = load i8, i8* %arrayidx.i.us.i.1.1, align 1, !tbaa !57
  %conv.i.us.i.1.1 = zext i8 %36 to i32
  %arrayidx2.i.us.i.1.1 = getelementptr inbounds i8, i8* %incdec.ptr.us.i.130, i32 -2
  %37 = load i8, i8* %arrayidx2.i.us.i.1.1, align 1, !tbaa !57
  %conv3.i.us.i.1.1 = zext i8 %37 to i32
  %38 = load i8, i8* %incdec.ptr.us.i.130, align 1, !tbaa !57
  %conv6.i.us.i.1.1 = zext i8 %38 to i32
  %arrayidx8.i.us.i.1.1 = getelementptr inbounds i8, i8* %incdec.ptr.us.i.130, i32 2
  %39 = load i8, i8* %arrayidx8.i.us.i.1.1, align 1, !tbaa !57
  %conv9.i.us.i.1.1 = zext i8 %39 to i32
  %sub.i.us.i.1.1 = sub nsw i32 %conv3.i.us.i.1.1, %conv6.i.us.i.1.1
  %40 = icmp slt i32 %sub.i.us.i.1.1, 0
  %neg.i.us.i.1.1 = sub nsw i32 0, %sub.i.us.i.1.1
  %41 = select i1 %40, i32 %neg.i.us.i.1.1, i32 %sub.i.us.i.1.1
  %cmp.i.us.i.1.1 = icmp slt i32 %41, %alpha
  br i1 %cmp.i.us.i.1.1, label %land.lhs.true.i.us.i.1.1, label %deblock_edge_chroma_intra_c.exit.us.i.1.1

land.lhs.true.i.us.i.1.1:                         ; preds = %deblock_edge_chroma_intra_c.exit.us.i.131
  %sub11.i.us.i.1.1 = sub nsw i32 %conv.i.us.i.1.1, %conv3.i.us.i.1.1
  %42 = icmp slt i32 %sub11.i.us.i.1.1, 0
  %neg57.i.us.i.1.1 = sub nsw i32 0, %sub11.i.us.i.1.1
  %43 = select i1 %42, i32 %neg57.i.us.i.1.1, i32 %sub11.i.us.i.1.1
  %cmp13.i.us.i.1.1 = icmp slt i32 %43, %beta
  br i1 %cmp13.i.us.i.1.1, label %land.lhs.true15.i.us.i.1.1, label %deblock_edge_chroma_intra_c.exit.us.i.1.1

land.lhs.true15.i.us.i.1.1:                       ; preds = %land.lhs.true.i.us.i.1.1
  %sub16.i.us.i.1.1 = sub nsw i32 %conv9.i.us.i.1.1, %conv6.i.us.i.1.1
  %44 = icmp slt i32 %sub16.i.us.i.1.1, 0
  %neg58.i.us.i.1.1 = sub nsw i32 0, %sub16.i.us.i.1.1
  %45 = select i1 %44, i32 %neg58.i.us.i.1.1, i32 %sub16.i.us.i.1.1
  %cmp18.i.us.i.1.1 = icmp slt i32 %45, %beta
  br i1 %cmp18.i.us.i.1.1, label %if.then.i.us.i.1.1, label %deblock_edge_chroma_intra_c.exit.us.i.1.1

if.then.i.us.i.1.1:                               ; preds = %land.lhs.true15.i.us.i.1.1
  %mul20.i.us.i.1.1 = shl nuw nsw i32 %conv.i.us.i.1.1, 1
  %add.i.us.i.1.1 = add nuw nsw i32 %conv3.i.us.i.1.1, 2
  %add21.i.us.i.1.1 = add nuw nsw i32 %add.i.us.i.1.1, %mul20.i.us.i.1.1
  %add22.i.us.i.1.1 = add nuw nsw i32 %add21.i.us.i.1.1, %conv9.i.us.i.1.1
  %46 = lshr i32 %add22.i.us.i.1.1, 2
  %conv23.i.us.i.1.1 = trunc i32 %46 to i8
  store i8 %conv23.i.us.i.1.1, i8* %arrayidx2.i.us.i.1.1, align 1, !tbaa !57
  %mul26.i.us.i.1.1 = shl nuw nsw i32 %conv9.i.us.i.1.1, 1
  %add27.i.us.i.1.1 = add nuw nsw i32 %conv.i.us.i.1.1, 2
  %add28.i.us.i.1.1 = add nuw nsw i32 %add27.i.us.i.1.1, %conv6.i.us.i.1.1
  %add29.i.us.i.1.1 = add nuw nsw i32 %add28.i.us.i.1.1, %mul26.i.us.i.1.1
  %47 = lshr i32 %add29.i.us.i.1.1, 2
  %conv31.i.us.i.1.1 = trunc i32 %47 to i8
  store i8 %conv31.i.us.i.1.1, i8* %incdec.ptr.us.i.130, align 1, !tbaa !57
  br label %deblock_edge_chroma_intra_c.exit.us.i.1.1

deblock_edge_chroma_intra_c.exit.us.i.1.1:        ; preds = %if.then.i.us.i.1.1, %land.lhs.true15.i.us.i.1.1, %land.lhs.true.i.us.i.1.1, %deblock_edge_chroma_intra_c.exit.us.i.131
  %incdec.ptr.us.i.1.1 = getelementptr inbounds i8, i8* %incdec.ptr.us.i.130, i32 1
  %add.ptr.us.i.1 = getelementptr inbounds i8, i8* %incdec.ptr.us.i.1.1, i32 %sub.i
  %arrayidx.i.us.i.2 = getelementptr inbounds i8, i8* %add.ptr.us.i.1, i32 -4
  %48 = load i8, i8* %arrayidx.i.us.i.2, align 1, !tbaa !57
  %conv.i.us.i.2 = zext i8 %48 to i32
  %arrayidx2.i.us.i.2 = getelementptr inbounds i8, i8* %add.ptr.us.i.1, i32 -2
  %49 = load i8, i8* %arrayidx2.i.us.i.2, align 1, !tbaa !57
  %conv3.i.us.i.2 = zext i8 %49 to i32
  %50 = load i8, i8* %add.ptr.us.i.1, align 1, !tbaa !57
  %conv6.i.us.i.2 = zext i8 %50 to i32
  %arrayidx8.i.us.i.2 = getelementptr inbounds i8, i8* %add.ptr.us.i.1, i32 2
  %51 = load i8, i8* %arrayidx8.i.us.i.2, align 1, !tbaa !57
  %conv9.i.us.i.2 = zext i8 %51 to i32
  %sub.i.us.i.2 = sub nsw i32 %conv3.i.us.i.2, %conv6.i.us.i.2
  %52 = icmp slt i32 %sub.i.us.i.2, 0
  %neg.i.us.i.2 = sub nsw i32 0, %sub.i.us.i.2
  %53 = select i1 %52, i32 %neg.i.us.i.2, i32 %sub.i.us.i.2
  %cmp.i.us.i.2 = icmp slt i32 %53, %alpha
  br i1 %cmp.i.us.i.2, label %land.lhs.true.i.us.i.2, label %deblock_edge_chroma_intra_c.exit.us.i.2

land.lhs.true.i.us.i.2:                           ; preds = %deblock_edge_chroma_intra_c.exit.us.i.1.1
  %sub11.i.us.i.2 = sub nsw i32 %conv.i.us.i.2, %conv3.i.us.i.2
  %54 = icmp slt i32 %sub11.i.us.i.2, 0
  %neg57.i.us.i.2 = sub nsw i32 0, %sub11.i.us.i.2
  %55 = select i1 %54, i32 %neg57.i.us.i.2, i32 %sub11.i.us.i.2
  %cmp13.i.us.i.2 = icmp slt i32 %55, %beta
  br i1 %cmp13.i.us.i.2, label %land.lhs.true15.i.us.i.2, label %deblock_edge_chroma_intra_c.exit.us.i.2

land.lhs.true15.i.us.i.2:                         ; preds = %land.lhs.true.i.us.i.2
  %sub16.i.us.i.2 = sub nsw i32 %conv9.i.us.i.2, %conv6.i.us.i.2
  %56 = icmp slt i32 %sub16.i.us.i.2, 0
  %neg58.i.us.i.2 = sub nsw i32 0, %sub16.i.us.i.2
  %57 = select i1 %56, i32 %neg58.i.us.i.2, i32 %sub16.i.us.i.2
  %cmp18.i.us.i.2 = icmp slt i32 %57, %beta
  br i1 %cmp18.i.us.i.2, label %if.then.i.us.i.2, label %deblock_edge_chroma_intra_c.exit.us.i.2

if.then.i.us.i.2:                                 ; preds = %land.lhs.true15.i.us.i.2
  %mul20.i.us.i.2 = shl nuw nsw i32 %conv.i.us.i.2, 1
  %add.i.us.i.2 = add nuw nsw i32 %conv3.i.us.i.2, 2
  %add21.i.us.i.2 = add nuw nsw i32 %add.i.us.i.2, %mul20.i.us.i.2
  %add22.i.us.i.2 = add nuw nsw i32 %add21.i.us.i.2, %conv9.i.us.i.2
  %58 = lshr i32 %add22.i.us.i.2, 2
  %conv23.i.us.i.2 = trunc i32 %58 to i8
  store i8 %conv23.i.us.i.2, i8* %arrayidx2.i.us.i.2, align 1, !tbaa !57
  %mul26.i.us.i.2 = shl nuw nsw i32 %conv9.i.us.i.2, 1
  %add27.i.us.i.2 = add nuw nsw i32 %conv.i.us.i.2, 2
  %add28.i.us.i.2 = add nuw nsw i32 %add27.i.us.i.2, %conv6.i.us.i.2
  %add29.i.us.i.2 = add nuw nsw i32 %add28.i.us.i.2, %mul26.i.us.i.2
  %59 = lshr i32 %add29.i.us.i.2, 2
  %conv31.i.us.i.2 = trunc i32 %59 to i8
  store i8 %conv31.i.us.i.2, i8* %add.ptr.us.i.1, align 1, !tbaa !57
  br label %deblock_edge_chroma_intra_c.exit.us.i.2

deblock_edge_chroma_intra_c.exit.us.i.2:          ; preds = %if.then.i.us.i.2, %land.lhs.true15.i.us.i.2, %land.lhs.true.i.us.i.2, %deblock_edge_chroma_intra_c.exit.us.i.1.1
  %incdec.ptr.us.i.2 = getelementptr inbounds i8, i8* %add.ptr.us.i.1, i32 1
  %arrayidx.i.us.i.1.2 = getelementptr inbounds i8, i8* %incdec.ptr.us.i.2, i32 -4
  %60 = load i8, i8* %arrayidx.i.us.i.1.2, align 1, !tbaa !57
  %conv.i.us.i.1.2 = zext i8 %60 to i32
  %arrayidx2.i.us.i.1.2 = getelementptr inbounds i8, i8* %incdec.ptr.us.i.2, i32 -2
  %61 = load i8, i8* %arrayidx2.i.us.i.1.2, align 1, !tbaa !57
  %conv3.i.us.i.1.2 = zext i8 %61 to i32
  %62 = load i8, i8* %incdec.ptr.us.i.2, align 1, !tbaa !57
  %conv6.i.us.i.1.2 = zext i8 %62 to i32
  %arrayidx8.i.us.i.1.2 = getelementptr inbounds i8, i8* %incdec.ptr.us.i.2, i32 2
  %63 = load i8, i8* %arrayidx8.i.us.i.1.2, align 1, !tbaa !57
  %conv9.i.us.i.1.2 = zext i8 %63 to i32
  %sub.i.us.i.1.2 = sub nsw i32 %conv3.i.us.i.1.2, %conv6.i.us.i.1.2
  %64 = icmp slt i32 %sub.i.us.i.1.2, 0
  %neg.i.us.i.1.2 = sub nsw i32 0, %sub.i.us.i.1.2
  %65 = select i1 %64, i32 %neg.i.us.i.1.2, i32 %sub.i.us.i.1.2
  %cmp.i.us.i.1.2 = icmp slt i32 %65, %alpha
  br i1 %cmp.i.us.i.1.2, label %land.lhs.true.i.us.i.1.2, label %deblock_edge_chroma_intra_c.exit.us.i.1.2

land.lhs.true.i.us.i.1.2:                         ; preds = %deblock_edge_chroma_intra_c.exit.us.i.2
  %sub11.i.us.i.1.2 = sub nsw i32 %conv.i.us.i.1.2, %conv3.i.us.i.1.2
  %66 = icmp slt i32 %sub11.i.us.i.1.2, 0
  %neg57.i.us.i.1.2 = sub nsw i32 0, %sub11.i.us.i.1.2
  %67 = select i1 %66, i32 %neg57.i.us.i.1.2, i32 %sub11.i.us.i.1.2
  %cmp13.i.us.i.1.2 = icmp slt i32 %67, %beta
  br i1 %cmp13.i.us.i.1.2, label %land.lhs.true15.i.us.i.1.2, label %deblock_edge_chroma_intra_c.exit.us.i.1.2

land.lhs.true15.i.us.i.1.2:                       ; preds = %land.lhs.true.i.us.i.1.2
  %sub16.i.us.i.1.2 = sub nsw i32 %conv9.i.us.i.1.2, %conv6.i.us.i.1.2
  %68 = icmp slt i32 %sub16.i.us.i.1.2, 0
  %neg58.i.us.i.1.2 = sub nsw i32 0, %sub16.i.us.i.1.2
  %69 = select i1 %68, i32 %neg58.i.us.i.1.2, i32 %sub16.i.us.i.1.2
  %cmp18.i.us.i.1.2 = icmp slt i32 %69, %beta
  br i1 %cmp18.i.us.i.1.2, label %if.then.i.us.i.1.2, label %deblock_edge_chroma_intra_c.exit.us.i.1.2

if.then.i.us.i.1.2:                               ; preds = %land.lhs.true15.i.us.i.1.2
  %mul20.i.us.i.1.2 = shl nuw nsw i32 %conv.i.us.i.1.2, 1
  %add.i.us.i.1.2 = add nuw nsw i32 %conv3.i.us.i.1.2, 2
  %add21.i.us.i.1.2 = add nuw nsw i32 %add.i.us.i.1.2, %mul20.i.us.i.1.2
  %add22.i.us.i.1.2 = add nuw nsw i32 %add21.i.us.i.1.2, %conv9.i.us.i.1.2
  %70 = lshr i32 %add22.i.us.i.1.2, 2
  %conv23.i.us.i.1.2 = trunc i32 %70 to i8
  store i8 %conv23.i.us.i.1.2, i8* %arrayidx2.i.us.i.1.2, align 1, !tbaa !57
  %mul26.i.us.i.1.2 = shl nuw nsw i32 %conv9.i.us.i.1.2, 1
  %add27.i.us.i.1.2 = add nuw nsw i32 %conv.i.us.i.1.2, 2
  %add28.i.us.i.1.2 = add nuw nsw i32 %add27.i.us.i.1.2, %conv6.i.us.i.1.2
  %add29.i.us.i.1.2 = add nuw nsw i32 %add28.i.us.i.1.2, %mul26.i.us.i.1.2
  %71 = lshr i32 %add29.i.us.i.1.2, 2
  %conv31.i.us.i.1.2 = trunc i32 %71 to i8
  store i8 %conv31.i.us.i.1.2, i8* %incdec.ptr.us.i.2, align 1, !tbaa !57
  br label %deblock_edge_chroma_intra_c.exit.us.i.1.2

deblock_edge_chroma_intra_c.exit.us.i.1.2:        ; preds = %if.then.i.us.i.1.2, %land.lhs.true15.i.us.i.1.2, %land.lhs.true.i.us.i.1.2, %deblock_edge_chroma_intra_c.exit.us.i.2
  %incdec.ptr.us.i.1.2 = getelementptr inbounds i8, i8* %incdec.ptr.us.i.2, i32 1
  %add.ptr.us.i.2 = getelementptr inbounds i8, i8* %incdec.ptr.us.i.1.2, i32 %sub.i
  %arrayidx.i.us.i.3 = getelementptr inbounds i8, i8* %add.ptr.us.i.2, i32 -4
  %72 = load i8, i8* %arrayidx.i.us.i.3, align 1, !tbaa !57
  %conv.i.us.i.3 = zext i8 %72 to i32
  %arrayidx2.i.us.i.3 = getelementptr inbounds i8, i8* %add.ptr.us.i.2, i32 -2
  %73 = load i8, i8* %arrayidx2.i.us.i.3, align 1, !tbaa !57
  %conv3.i.us.i.3 = zext i8 %73 to i32
  %74 = load i8, i8* %add.ptr.us.i.2, align 1, !tbaa !57
  %conv6.i.us.i.3 = zext i8 %74 to i32
  %arrayidx8.i.us.i.3 = getelementptr inbounds i8, i8* %add.ptr.us.i.2, i32 2
  %75 = load i8, i8* %arrayidx8.i.us.i.3, align 1, !tbaa !57
  %conv9.i.us.i.3 = zext i8 %75 to i32
  %sub.i.us.i.3 = sub nsw i32 %conv3.i.us.i.3, %conv6.i.us.i.3
  %76 = icmp slt i32 %sub.i.us.i.3, 0
  %neg.i.us.i.3 = sub nsw i32 0, %sub.i.us.i.3
  %77 = select i1 %76, i32 %neg.i.us.i.3, i32 %sub.i.us.i.3
  %cmp.i.us.i.3 = icmp slt i32 %77, %alpha
  br i1 %cmp.i.us.i.3, label %land.lhs.true.i.us.i.3, label %deblock_edge_chroma_intra_c.exit.us.i.3

land.lhs.true.i.us.i.3:                           ; preds = %deblock_edge_chroma_intra_c.exit.us.i.1.2
  %sub11.i.us.i.3 = sub nsw i32 %conv.i.us.i.3, %conv3.i.us.i.3
  %78 = icmp slt i32 %sub11.i.us.i.3, 0
  %neg57.i.us.i.3 = sub nsw i32 0, %sub11.i.us.i.3
  %79 = select i1 %78, i32 %neg57.i.us.i.3, i32 %sub11.i.us.i.3
  %cmp13.i.us.i.3 = icmp slt i32 %79, %beta
  br i1 %cmp13.i.us.i.3, label %land.lhs.true15.i.us.i.3, label %deblock_edge_chroma_intra_c.exit.us.i.3

land.lhs.true15.i.us.i.3:                         ; preds = %land.lhs.true.i.us.i.3
  %sub16.i.us.i.3 = sub nsw i32 %conv9.i.us.i.3, %conv6.i.us.i.3
  %80 = icmp slt i32 %sub16.i.us.i.3, 0
  %neg58.i.us.i.3 = sub nsw i32 0, %sub16.i.us.i.3
  %81 = select i1 %80, i32 %neg58.i.us.i.3, i32 %sub16.i.us.i.3
  %cmp18.i.us.i.3 = icmp slt i32 %81, %beta
  br i1 %cmp18.i.us.i.3, label %if.then.i.us.i.3, label %deblock_edge_chroma_intra_c.exit.us.i.3

if.then.i.us.i.3:                                 ; preds = %land.lhs.true15.i.us.i.3
  %mul20.i.us.i.3 = shl nuw nsw i32 %conv.i.us.i.3, 1
  %add.i.us.i.3 = add nuw nsw i32 %conv3.i.us.i.3, 2
  %add21.i.us.i.3 = add nuw nsw i32 %add.i.us.i.3, %mul20.i.us.i.3
  %add22.i.us.i.3 = add nuw nsw i32 %add21.i.us.i.3, %conv9.i.us.i.3
  %82 = lshr i32 %add22.i.us.i.3, 2
  %conv23.i.us.i.3 = trunc i32 %82 to i8
  store i8 %conv23.i.us.i.3, i8* %arrayidx2.i.us.i.3, align 1, !tbaa !57
  %mul26.i.us.i.3 = shl nuw nsw i32 %conv9.i.us.i.3, 1
  %add27.i.us.i.3 = add nuw nsw i32 %conv.i.us.i.3, 2
  %add28.i.us.i.3 = add nuw nsw i32 %add27.i.us.i.3, %conv6.i.us.i.3
  %add29.i.us.i.3 = add nuw nsw i32 %add28.i.us.i.3, %mul26.i.us.i.3
  %83 = lshr i32 %add29.i.us.i.3, 2
  %conv31.i.us.i.3 = trunc i32 %83 to i8
  store i8 %conv31.i.us.i.3, i8* %add.ptr.us.i.2, align 1, !tbaa !57
  br label %deblock_edge_chroma_intra_c.exit.us.i.3

deblock_edge_chroma_intra_c.exit.us.i.3:          ; preds = %if.then.i.us.i.3, %land.lhs.true15.i.us.i.3, %land.lhs.true.i.us.i.3, %deblock_edge_chroma_intra_c.exit.us.i.1.2
  %incdec.ptr.us.i.3 = getelementptr inbounds i8, i8* %add.ptr.us.i.2, i32 1
  %arrayidx.i.us.i.1.3 = getelementptr inbounds i8, i8* %incdec.ptr.us.i.3, i32 -4
  %84 = load i8, i8* %arrayidx.i.us.i.1.3, align 1, !tbaa !57
  %conv.i.us.i.1.3 = zext i8 %84 to i32
  %arrayidx2.i.us.i.1.3 = getelementptr inbounds i8, i8* %incdec.ptr.us.i.3, i32 -2
  %85 = load i8, i8* %arrayidx2.i.us.i.1.3, align 1, !tbaa !57
  %conv3.i.us.i.1.3 = zext i8 %85 to i32
  %86 = load i8, i8* %incdec.ptr.us.i.3, align 1, !tbaa !57
  %conv6.i.us.i.1.3 = zext i8 %86 to i32
  %arrayidx8.i.us.i.1.3 = getelementptr inbounds i8, i8* %incdec.ptr.us.i.3, i32 2
  %87 = load i8, i8* %arrayidx8.i.us.i.1.3, align 1, !tbaa !57
  %conv9.i.us.i.1.3 = zext i8 %87 to i32
  %sub.i.us.i.1.3 = sub nsw i32 %conv3.i.us.i.1.3, %conv6.i.us.i.1.3
  %88 = icmp slt i32 %sub.i.us.i.1.3, 0
  %neg.i.us.i.1.3 = sub nsw i32 0, %sub.i.us.i.1.3
  %89 = select i1 %88, i32 %neg.i.us.i.1.3, i32 %sub.i.us.i.1.3
  %cmp.i.us.i.1.3 = icmp slt i32 %89, %alpha
  br i1 %cmp.i.us.i.1.3, label %land.lhs.true.i.us.i.1.3, label %deblock_edge_chroma_intra_c.exit.us.i.1.3

land.lhs.true.i.us.i.1.3:                         ; preds = %deblock_edge_chroma_intra_c.exit.us.i.3
  %sub11.i.us.i.1.3 = sub nsw i32 %conv.i.us.i.1.3, %conv3.i.us.i.1.3
  %90 = icmp slt i32 %sub11.i.us.i.1.3, 0
  %neg57.i.us.i.1.3 = sub nsw i32 0, %sub11.i.us.i.1.3
  %91 = select i1 %90, i32 %neg57.i.us.i.1.3, i32 %sub11.i.us.i.1.3
  %cmp13.i.us.i.1.3 = icmp slt i32 %91, %beta
  br i1 %cmp13.i.us.i.1.3, label %land.lhs.true15.i.us.i.1.3, label %deblock_edge_chroma_intra_c.exit.us.i.1.3

land.lhs.true15.i.us.i.1.3:                       ; preds = %land.lhs.true.i.us.i.1.3
  %sub16.i.us.i.1.3 = sub nsw i32 %conv9.i.us.i.1.3, %conv6.i.us.i.1.3
  %92 = icmp slt i32 %sub16.i.us.i.1.3, 0
  %neg58.i.us.i.1.3 = sub nsw i32 0, %sub16.i.us.i.1.3
  %93 = select i1 %92, i32 %neg58.i.us.i.1.3, i32 %sub16.i.us.i.1.3
  %cmp18.i.us.i.1.3 = icmp slt i32 %93, %beta
  br i1 %cmp18.i.us.i.1.3, label %if.then.i.us.i.1.3, label %deblock_edge_chroma_intra_c.exit.us.i.1.3

if.then.i.us.i.1.3:                               ; preds = %land.lhs.true15.i.us.i.1.3
  %mul20.i.us.i.1.3 = shl nuw nsw i32 %conv.i.us.i.1.3, 1
  %add.i.us.i.1.3 = add nuw nsw i32 %conv3.i.us.i.1.3, 2
  %add21.i.us.i.1.3 = add nuw nsw i32 %add.i.us.i.1.3, %mul20.i.us.i.1.3
  %add22.i.us.i.1.3 = add nuw nsw i32 %add21.i.us.i.1.3, %conv9.i.us.i.1.3
  %94 = lshr i32 %add22.i.us.i.1.3, 2
  %conv23.i.us.i.1.3 = trunc i32 %94 to i8
  store i8 %conv23.i.us.i.1.3, i8* %arrayidx2.i.us.i.1.3, align 1, !tbaa !57
  %mul26.i.us.i.1.3 = shl nuw nsw i32 %conv9.i.us.i.1.3, 1
  %add27.i.us.i.1.3 = add nuw nsw i32 %conv.i.us.i.1.3, 2
  %add28.i.us.i.1.3 = add nuw nsw i32 %add27.i.us.i.1.3, %conv6.i.us.i.1.3
  %add29.i.us.i.1.3 = add nuw nsw i32 %add28.i.us.i.1.3, %mul26.i.us.i.1.3
  %95 = lshr i32 %add29.i.us.i.1.3, 2
  %conv31.i.us.i.1.3 = trunc i32 %95 to i8
  store i8 %conv31.i.us.i.1.3, i8* %incdec.ptr.us.i.3, align 1, !tbaa !57
  br label %deblock_edge_chroma_intra_c.exit.us.i.1.3

deblock_edge_chroma_intra_c.exit.us.i.1.3:        ; preds = %if.then.i.us.i.1.3, %land.lhs.true15.i.us.i.1.3, %land.lhs.true.i.us.i.1.3, %deblock_edge_chroma_intra_c.exit.us.i.3
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @deblock_strength_c(i8* nocapture readonly %nnz, [40 x i8]* nocapture readonly %ref, [40 x [2 x i16]]* nocapture readonly %mv, [8 x [4 x i8]]* nocapture %bs, i32 %mvy_limit, i32 %bframe) #3 {
entry:
  %tobool52 = icmp eq i32 %bframe, 0
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.cond.cleanup5
  ret void

for.body:                                         ; preds = %entry, %for.cond.cleanup5
  %dir.0162 = phi i32 [ 0, %entry ], [ 1, %for.cond.cleanup5 ]
  %tobool = icmp ne i32 %dir.0162, 0
  %cond = select i1 %tobool, i32 1, i32 8
  %cond2 = select i1 %tobool, i32 8, i32 1
  br label %for.body6

for.cond.cleanup5:                                ; preds = %for.cond.cleanup9
  %cmp = icmp eq i32 %dir.0162, 0
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.body6:                                        ; preds = %for.cond.cleanup9, %for.body
  %edge.0161 = phi i32 [ 0, %for.body ], [ %inc98, %for.cond.cleanup9 ]
  %mul = mul nuw nsw i32 %edge.0161, %cond2
  %add = add nuw nsw i32 %mul, 12
  %sub.us = sub nuw nsw i32 %add, %cond2
  %arrayidx.us = getelementptr inbounds i8, i8* %nnz, i32 %add
  %0 = load i8, i8* %arrayidx.us, align 1, !tbaa !57
  %tobool11.us = icmp eq i8 %0, 0
  br i1 %tobool52, label %for.body10.us.preheader, label %for.body10.preheader

for.body10.preheader:                             ; preds = %for.body6
  br i1 %tobool11.us, label %lor.lhs.false, label %if.end95

for.body10.us.preheader:                          ; preds = %for.body6
  br i1 %tobool11.us, label %lor.lhs.false.us, label %if.end95.us

lor.lhs.false.us:                                 ; preds = %for.body10.us.preheader
  %arrayidx12.us = getelementptr inbounds i8, i8* %nnz, i32 %sub.us
  %1 = load i8, i8* %arrayidx12.us, align 1, !tbaa !57
  %tobool14.us = icmp eq i8 %1, 0
  br i1 %tobool14.us, label %if.else.us, label %if.end95.us

if.else.us:                                       ; preds = %lor.lhs.false.us
  %arrayidx19.us = getelementptr inbounds [40 x i8], [40 x i8]* %ref, i32 0, i32 %add
  %2 = load i8, i8* %arrayidx19.us, align 1, !tbaa !57
  %arrayidx22.us = getelementptr inbounds [40 x i8], [40 x i8]* %ref, i32 0, i32 %sub.us
  %3 = load i8, i8* %arrayidx22.us, align 1, !tbaa !57
  %cmp24.us = icmp eq i8 %2, %3
  br i1 %cmp24.us, label %lor.lhs.false26.us, label %if.then87.us

lor.lhs.false26.us:                               ; preds = %if.else.us
  %arrayidx29.us = getelementptr inbounds [40 x [2 x i16]], [40 x [2 x i16]]* %mv, i32 0, i32 %add, i32 0
  %4 = load i16, i16* %arrayidx29.us, align 2, !tbaa !64
  %conv30.us = sext i16 %4 to i32
  %arrayidx33.us = getelementptr inbounds [40 x [2 x i16]], [40 x [2 x i16]]* %mv, i32 0, i32 %sub.us, i32 0
  %5 = load i16, i16* %arrayidx33.us, align 2, !tbaa !64
  %conv34.us = sext i16 %5 to i32
  %sub35.us = sub nsw i32 %conv30.us, %conv34.us
  %6 = icmp slt i32 %sub35.us, 0
  %neg.us = sub nsw i32 0, %sub35.us
  %7 = select i1 %6, i32 %neg.us, i32 %sub35.us
  %cmp36.us = icmp sgt i32 %7, 3
  br i1 %cmp36.us, label %if.then87.us, label %lor.lhs.false38.us

lor.lhs.false38.us:                               ; preds = %lor.lhs.false26.us
  %arrayidx41.us = getelementptr inbounds [40 x [2 x i16]], [40 x [2 x i16]]* %mv, i32 0, i32 %add, i32 1
  %8 = load i16, i16* %arrayidx41.us, align 2, !tbaa !64
  %conv42.us = sext i16 %8 to i32
  %arrayidx45.us = getelementptr inbounds [40 x [2 x i16]], [40 x [2 x i16]]* %mv, i32 0, i32 %sub.us, i32 1
  %9 = load i16, i16* %arrayidx45.us, align 2, !tbaa !64
  %conv46.us = sext i16 %9 to i32
  %sub47.us = sub nsw i32 %conv42.us, %conv46.us
  %10 = icmp slt i32 %sub47.us, 0
  %neg154.us = sub nsw i32 0, %sub47.us
  %11 = select i1 %10, i32 %neg154.us, i32 %sub47.us
  %cmp49.us = icmp slt i32 %11, %mvy_limit
  br i1 %cmp49.us, label %if.end95.us, label %if.then87.us

if.then87.us:                                     ; preds = %lor.lhs.false38.us, %lor.lhs.false26.us, %if.else.us
  br label %if.end95.us

if.end95.us:                                      ; preds = %lor.lhs.false38.us, %for.body10.us.preheader, %lor.lhs.false.us, %if.then87.us
  %.sink = phi i8 [ 1, %if.then87.us ], [ 2, %lor.lhs.false.us ], [ 2, %for.body10.us.preheader ], [ 0, %lor.lhs.false38.us ]
  %arrayidx90.us = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %bs, i32 %dir.0162, i32 %edge.0161, i32 0
  store i8 %.sink, i8* %arrayidx90.us, align 1, !tbaa !57
  %add96.us = add nuw nsw i32 %add, %cond
  %sub.us.1 = sub nsw i32 %add96.us, %cond2
  %arrayidx.us.1 = getelementptr inbounds i8, i8* %nnz, i32 %add96.us
  %12 = load i8, i8* %arrayidx.us.1, align 1, !tbaa !57
  %tobool11.us.1 = icmp eq i8 %12, 0
  br i1 %tobool11.us.1, label %lor.lhs.false.us.1, label %if.end95.us.1

for.cond.cleanup9:                                ; preds = %lor.lhs.false38.us.3, %if.end95.us.2, %lor.lhs.false.us.3, %lor.lhs.false74.3, %if.end95.2, %lor.lhs.false.3, %if.then87.us.3, %if.then87.3
  %.sink164 = phi i8 [ 1, %if.then87.us.3 ], [ 1, %if.then87.3 ], [ 2, %lor.lhs.false.3 ], [ 2, %if.end95.2 ], [ 0, %lor.lhs.false74.3 ], [ 2, %lor.lhs.false.us.3 ], [ 2, %if.end95.us.2 ], [ 0, %lor.lhs.false38.us.3 ]
  %arrayidx17.us.3 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %bs, i32 %dir.0162, i32 %edge.0161, i32 3
  store i8 %.sink164, i8* %arrayidx17.us.3, align 1, !tbaa !57
  %inc98 = add nuw nsw i32 %edge.0161, 1
  %exitcond = icmp eq i32 %inc98, 4
  br i1 %exitcond, label %for.cond.cleanup5, label %for.body6

lor.lhs.false:                                    ; preds = %for.body10.preheader
  %arrayidx12 = getelementptr inbounds i8, i8* %nnz, i32 %sub.us
  %13 = load i8, i8* %arrayidx12, align 1, !tbaa !57
  %tobool14 = icmp eq i8 %13, 0
  br i1 %tobool14, label %if.else, label %if.end95

if.else:                                          ; preds = %lor.lhs.false
  %arrayidx19 = getelementptr inbounds [40 x i8], [40 x i8]* %ref, i32 0, i32 %add
  %14 = load i8, i8* %arrayidx19, align 1, !tbaa !57
  %arrayidx22 = getelementptr inbounds [40 x i8], [40 x i8]* %ref, i32 0, i32 %sub.us
  %15 = load i8, i8* %arrayidx22, align 1, !tbaa !57
  %cmp24 = icmp eq i8 %14, %15
  br i1 %cmp24, label %lor.lhs.false26, label %if.end95

lor.lhs.false26:                                  ; preds = %if.else
  %arrayidx29 = getelementptr inbounds [40 x [2 x i16]], [40 x [2 x i16]]* %mv, i32 0, i32 %add, i32 0
  %16 = load i16, i16* %arrayidx29, align 2, !tbaa !64
  %conv30 = sext i16 %16 to i32
  %arrayidx33 = getelementptr inbounds [40 x [2 x i16]], [40 x [2 x i16]]* %mv, i32 0, i32 %sub.us, i32 0
  %17 = load i16, i16* %arrayidx33, align 2, !tbaa !64
  %conv34 = sext i16 %17 to i32
  %sub35 = sub nsw i32 %conv30, %conv34
  %18 = icmp slt i32 %sub35, 0
  %neg = sub nsw i32 0, %sub35
  %19 = select i1 %18, i32 %neg, i32 %sub35
  %cmp36 = icmp sgt i32 %19, 3
  br i1 %cmp36, label %if.end95, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %lor.lhs.false26
  %arrayidx41 = getelementptr inbounds [40 x [2 x i16]], [40 x [2 x i16]]* %mv, i32 0, i32 %add, i32 1
  %20 = load i16, i16* %arrayidx41, align 2, !tbaa !64
  %conv42 = sext i16 %20 to i32
  %arrayidx45 = getelementptr inbounds [40 x [2 x i16]], [40 x [2 x i16]]* %mv, i32 0, i32 %sub.us, i32 1
  %21 = load i16, i16* %arrayidx45, align 2, !tbaa !64
  %conv46 = sext i16 %21 to i32
  %sub47 = sub nsw i32 %conv42, %conv46
  %22 = icmp slt i32 %sub47, 0
  %neg154 = sub nsw i32 0, %sub47
  %23 = select i1 %22, i32 %neg154, i32 %sub47
  %cmp49 = icmp slt i32 %23, %mvy_limit
  br i1 %cmp49, label %land.lhs.true, label %if.end95

land.lhs.true:                                    ; preds = %lor.lhs.false38
  %arrayidx54 = getelementptr inbounds [40 x i8], [40 x i8]* %ref, i32 1, i32 %add
  %24 = load i8, i8* %arrayidx54, align 1, !tbaa !57
  %arrayidx57 = getelementptr inbounds [40 x i8], [40 x i8]* %ref, i32 1, i32 %sub.us
  %25 = load i8, i8* %arrayidx57, align 1, !tbaa !57
  %cmp59 = icmp eq i8 %24, %25
  br i1 %cmp59, label %lor.lhs.false61, label %if.end95

lor.lhs.false61:                                  ; preds = %land.lhs.true
  %arrayidx64 = getelementptr inbounds [40 x [2 x i16]], [40 x [2 x i16]]* %mv, i32 1, i32 %add, i32 0
  %26 = load i16, i16* %arrayidx64, align 2, !tbaa !64
  %conv65 = sext i16 %26 to i32
  %arrayidx68 = getelementptr inbounds [40 x [2 x i16]], [40 x [2 x i16]]* %mv, i32 1, i32 %sub.us, i32 0
  %27 = load i16, i16* %arrayidx68, align 2, !tbaa !64
  %conv69 = sext i16 %27 to i32
  %sub70 = sub nsw i32 %conv65, %conv69
  %28 = icmp slt i32 %sub70, 0
  %neg155 = sub nsw i32 0, %sub70
  %29 = select i1 %28, i32 %neg155, i32 %sub70
  %cmp72 = icmp sgt i32 %29, 3
  br i1 %cmp72, label %if.end95, label %lor.lhs.false74

lor.lhs.false74:                                  ; preds = %lor.lhs.false61
  %arrayidx77 = getelementptr inbounds [40 x [2 x i16]], [40 x [2 x i16]]* %mv, i32 1, i32 %add, i32 1
  %30 = load i16, i16* %arrayidx77, align 2, !tbaa !64
  %conv78 = sext i16 %30 to i32
  %arrayidx81 = getelementptr inbounds [40 x [2 x i16]], [40 x [2 x i16]]* %mv, i32 1, i32 %sub.us, i32 1
  %31 = load i16, i16* %arrayidx81, align 2, !tbaa !64
  %conv82 = sext i16 %31 to i32
  %sub83 = sub nsw i32 %conv78, %conv82
  %32 = icmp slt i32 %sub83, 0
  %neg156 = sub nsw i32 0, %sub83
  %33 = select i1 %32, i32 %neg156, i32 %sub83
  %cmp85 = icmp sge i32 %33, %mvy_limit
  %spec.select = zext i1 %cmp85 to i8
  br label %if.end95

if.end95:                                         ; preds = %lor.lhs.false74, %lor.lhs.false26, %lor.lhs.false61, %if.else, %lor.lhs.false38, %land.lhs.true, %for.body10.preheader, %lor.lhs.false
  %.sink165 = phi i8 [ 2, %lor.lhs.false ], [ 2, %for.body10.preheader ], [ 1, %land.lhs.true ], [ 1, %lor.lhs.false38 ], [ 1, %if.else ], [ 1, %lor.lhs.false61 ], [ 1, %lor.lhs.false26 ], [ %spec.select, %lor.lhs.false74 ]
  %arrayidx90 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %bs, i32 %dir.0162, i32 %edge.0161, i32 0
  store i8 %.sink165, i8* %arrayidx90, align 1, !tbaa !57
  %add96 = add nuw nsw i32 %add, %cond
  %sub.1 = sub nsw i32 %add96, %cond2
  %arrayidx.1 = getelementptr inbounds i8, i8* %nnz, i32 %add96
  %34 = load i8, i8* %arrayidx.1, align 1, !tbaa !57
  %tobool11.1 = icmp eq i8 %34, 0
  br i1 %tobool11.1, label %lor.lhs.false.1, label %if.end95.1

lor.lhs.false.1:                                  ; preds = %if.end95
  %arrayidx12.1 = getelementptr inbounds i8, i8* %nnz, i32 %sub.1
  %35 = load i8, i8* %arrayidx12.1, align 1, !tbaa !57
  %tobool14.1 = icmp eq i8 %35, 0
  br i1 %tobool14.1, label %if.else.1, label %if.end95.1

if.else.1:                                        ; preds = %lor.lhs.false.1
  %arrayidx19.1 = getelementptr inbounds [40 x i8], [40 x i8]* %ref, i32 0, i32 %add96
  %36 = load i8, i8* %arrayidx19.1, align 1, !tbaa !57
  %arrayidx22.1 = getelementptr inbounds [40 x i8], [40 x i8]* %ref, i32 0, i32 %sub.1
  %37 = load i8, i8* %arrayidx22.1, align 1, !tbaa !57
  %cmp24.1 = icmp eq i8 %36, %37
  br i1 %cmp24.1, label %lor.lhs.false26.1, label %if.then87.1

lor.lhs.false26.1:                                ; preds = %if.else.1
  %arrayidx29.1 = getelementptr inbounds [40 x [2 x i16]], [40 x [2 x i16]]* %mv, i32 0, i32 %add96, i32 0
  %38 = load i16, i16* %arrayidx29.1, align 2, !tbaa !64
  %conv30.1 = sext i16 %38 to i32
  %arrayidx33.1 = getelementptr inbounds [40 x [2 x i16]], [40 x [2 x i16]]* %mv, i32 0, i32 %sub.1, i32 0
  %39 = load i16, i16* %arrayidx33.1, align 2, !tbaa !64
  %conv34.1 = sext i16 %39 to i32
  %sub35.1 = sub nsw i32 %conv30.1, %conv34.1
  %40 = icmp slt i32 %sub35.1, 0
  %neg.1 = sub nsw i32 0, %sub35.1
  %41 = select i1 %40, i32 %neg.1, i32 %sub35.1
  %cmp36.1 = icmp sgt i32 %41, 3
  br i1 %cmp36.1, label %if.then87.1, label %lor.lhs.false38.1

lor.lhs.false38.1:                                ; preds = %lor.lhs.false26.1
  %arrayidx41.1 = getelementptr inbounds [40 x [2 x i16]], [40 x [2 x i16]]* %mv, i32 0, i32 %add96, i32 1
  %42 = load i16, i16* %arrayidx41.1, align 2, !tbaa !64
  %conv42.1 = sext i16 %42 to i32
  %arrayidx45.1 = getelementptr inbounds [40 x [2 x i16]], [40 x [2 x i16]]* %mv, i32 0, i32 %sub.1, i32 1
  %43 = load i16, i16* %arrayidx45.1, align 2, !tbaa !64
  %conv46.1 = sext i16 %43 to i32
  %sub47.1 = sub nsw i32 %conv42.1, %conv46.1
  %44 = icmp slt i32 %sub47.1, 0
  %neg154.1 = sub nsw i32 0, %sub47.1
  %45 = select i1 %44, i32 %neg154.1, i32 %sub47.1
  %cmp49.1 = icmp slt i32 %45, %mvy_limit
  br i1 %cmp49.1, label %land.lhs.true.1, label %if.then87.1

land.lhs.true.1:                                  ; preds = %lor.lhs.false38.1
  %arrayidx54.1 = getelementptr inbounds [40 x i8], [40 x i8]* %ref, i32 1, i32 %add96
  %46 = load i8, i8* %arrayidx54.1, align 1, !tbaa !57
  %arrayidx57.1 = getelementptr inbounds [40 x i8], [40 x i8]* %ref, i32 1, i32 %sub.1
  %47 = load i8, i8* %arrayidx57.1, align 1, !tbaa !57
  %cmp59.1 = icmp eq i8 %46, %47
  br i1 %cmp59.1, label %lor.lhs.false61.1, label %if.then87.1

lor.lhs.false61.1:                                ; preds = %land.lhs.true.1
  %arrayidx64.1 = getelementptr inbounds [40 x [2 x i16]], [40 x [2 x i16]]* %mv, i32 1, i32 %add96, i32 0
  %48 = load i16, i16* %arrayidx64.1, align 2, !tbaa !64
  %conv65.1 = sext i16 %48 to i32
  %arrayidx68.1 = getelementptr inbounds [40 x [2 x i16]], [40 x [2 x i16]]* %mv, i32 1, i32 %sub.1, i32 0
  %49 = load i16, i16* %arrayidx68.1, align 2, !tbaa !64
  %conv69.1 = sext i16 %49 to i32
  %sub70.1 = sub nsw i32 %conv65.1, %conv69.1
  %50 = icmp slt i32 %sub70.1, 0
  %neg155.1 = sub nsw i32 0, %sub70.1
  %51 = select i1 %50, i32 %neg155.1, i32 %sub70.1
  %cmp72.1 = icmp sgt i32 %51, 3
  br i1 %cmp72.1, label %if.then87.1, label %lor.lhs.false74.1

lor.lhs.false74.1:                                ; preds = %lor.lhs.false61.1
  %arrayidx77.1 = getelementptr inbounds [40 x [2 x i16]], [40 x [2 x i16]]* %mv, i32 1, i32 %add96, i32 1
  %52 = load i16, i16* %arrayidx77.1, align 2, !tbaa !64
  %conv78.1 = sext i16 %52 to i32
  %arrayidx81.1 = getelementptr inbounds [40 x [2 x i16]], [40 x [2 x i16]]* %mv, i32 1, i32 %sub.1, i32 1
  %53 = load i16, i16* %arrayidx81.1, align 2, !tbaa !64
  %conv82.1 = sext i16 %53 to i32
  %sub83.1 = sub nsw i32 %conv78.1, %conv82.1
  %54 = icmp slt i32 %sub83.1, 0
  %neg156.1 = sub nsw i32 0, %sub83.1
  %55 = select i1 %54, i32 %neg156.1, i32 %sub83.1
  %cmp85.1 = icmp slt i32 %55, %mvy_limit
  br i1 %cmp85.1, label %if.end95.1, label %if.then87.1

if.then87.1:                                      ; preds = %lor.lhs.false74.1, %lor.lhs.false61.1, %land.lhs.true.1, %lor.lhs.false38.1, %lor.lhs.false26.1, %if.else.1
  br label %if.end95.1

if.end95.1:                                       ; preds = %lor.lhs.false74.1, %if.end95, %lor.lhs.false.1, %if.then87.1
  %.sink166 = phi i8 [ 1, %if.then87.1 ], [ 2, %lor.lhs.false.1 ], [ 2, %if.end95 ], [ 0, %lor.lhs.false74.1 ]
  %arrayidx90.1 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %bs, i32 %dir.0162, i32 %edge.0161, i32 1
  store i8 %.sink166, i8* %arrayidx90.1, align 1, !tbaa !57
  %add96.1 = add nuw nsw i32 %add96, %cond
  %sub.2 = sub nsw i32 %add96.1, %cond2
  %arrayidx.2 = getelementptr inbounds i8, i8* %nnz, i32 %add96.1
  %56 = load i8, i8* %arrayidx.2, align 1, !tbaa !57
  %tobool11.2 = icmp eq i8 %56, 0
  br i1 %tobool11.2, label %lor.lhs.false.2, label %if.end95.2

lor.lhs.false.2:                                  ; preds = %if.end95.1
  %arrayidx12.2 = getelementptr inbounds i8, i8* %nnz, i32 %sub.2
  %57 = load i8, i8* %arrayidx12.2, align 1, !tbaa !57
  %tobool14.2 = icmp eq i8 %57, 0
  br i1 %tobool14.2, label %if.else.2, label %if.end95.2

if.else.2:                                        ; preds = %lor.lhs.false.2
  %arrayidx19.2 = getelementptr inbounds [40 x i8], [40 x i8]* %ref, i32 0, i32 %add96.1
  %58 = load i8, i8* %arrayidx19.2, align 1, !tbaa !57
  %arrayidx22.2 = getelementptr inbounds [40 x i8], [40 x i8]* %ref, i32 0, i32 %sub.2
  %59 = load i8, i8* %arrayidx22.2, align 1, !tbaa !57
  %cmp24.2 = icmp eq i8 %58, %59
  br i1 %cmp24.2, label %lor.lhs.false26.2, label %if.then87.2

lor.lhs.false26.2:                                ; preds = %if.else.2
  %arrayidx29.2 = getelementptr inbounds [40 x [2 x i16]], [40 x [2 x i16]]* %mv, i32 0, i32 %add96.1, i32 0
  %60 = load i16, i16* %arrayidx29.2, align 2, !tbaa !64
  %conv30.2 = sext i16 %60 to i32
  %arrayidx33.2 = getelementptr inbounds [40 x [2 x i16]], [40 x [2 x i16]]* %mv, i32 0, i32 %sub.2, i32 0
  %61 = load i16, i16* %arrayidx33.2, align 2, !tbaa !64
  %conv34.2 = sext i16 %61 to i32
  %sub35.2 = sub nsw i32 %conv30.2, %conv34.2
  %62 = icmp slt i32 %sub35.2, 0
  %neg.2 = sub nsw i32 0, %sub35.2
  %63 = select i1 %62, i32 %neg.2, i32 %sub35.2
  %cmp36.2 = icmp sgt i32 %63, 3
  br i1 %cmp36.2, label %if.then87.2, label %lor.lhs.false38.2

lor.lhs.false38.2:                                ; preds = %lor.lhs.false26.2
  %arrayidx41.2 = getelementptr inbounds [40 x [2 x i16]], [40 x [2 x i16]]* %mv, i32 0, i32 %add96.1, i32 1
  %64 = load i16, i16* %arrayidx41.2, align 2, !tbaa !64
  %conv42.2 = sext i16 %64 to i32
  %arrayidx45.2 = getelementptr inbounds [40 x [2 x i16]], [40 x [2 x i16]]* %mv, i32 0, i32 %sub.2, i32 1
  %65 = load i16, i16* %arrayidx45.2, align 2, !tbaa !64
  %conv46.2 = sext i16 %65 to i32
  %sub47.2 = sub nsw i32 %conv42.2, %conv46.2
  %66 = icmp slt i32 %sub47.2, 0
  %neg154.2 = sub nsw i32 0, %sub47.2
  %67 = select i1 %66, i32 %neg154.2, i32 %sub47.2
  %cmp49.2 = icmp slt i32 %67, %mvy_limit
  br i1 %cmp49.2, label %land.lhs.true.2, label %if.then87.2

land.lhs.true.2:                                  ; preds = %lor.lhs.false38.2
  %arrayidx54.2 = getelementptr inbounds [40 x i8], [40 x i8]* %ref, i32 1, i32 %add96.1
  %68 = load i8, i8* %arrayidx54.2, align 1, !tbaa !57
  %arrayidx57.2 = getelementptr inbounds [40 x i8], [40 x i8]* %ref, i32 1, i32 %sub.2
  %69 = load i8, i8* %arrayidx57.2, align 1, !tbaa !57
  %cmp59.2 = icmp eq i8 %68, %69
  br i1 %cmp59.2, label %lor.lhs.false61.2, label %if.then87.2

lor.lhs.false61.2:                                ; preds = %land.lhs.true.2
  %arrayidx64.2 = getelementptr inbounds [40 x [2 x i16]], [40 x [2 x i16]]* %mv, i32 1, i32 %add96.1, i32 0
  %70 = load i16, i16* %arrayidx64.2, align 2, !tbaa !64
  %conv65.2 = sext i16 %70 to i32
  %arrayidx68.2 = getelementptr inbounds [40 x [2 x i16]], [40 x [2 x i16]]* %mv, i32 1, i32 %sub.2, i32 0
  %71 = load i16, i16* %arrayidx68.2, align 2, !tbaa !64
  %conv69.2 = sext i16 %71 to i32
  %sub70.2 = sub nsw i32 %conv65.2, %conv69.2
  %72 = icmp slt i32 %sub70.2, 0
  %neg155.2 = sub nsw i32 0, %sub70.2
  %73 = select i1 %72, i32 %neg155.2, i32 %sub70.2
  %cmp72.2 = icmp sgt i32 %73, 3
  br i1 %cmp72.2, label %if.then87.2, label %lor.lhs.false74.2

lor.lhs.false74.2:                                ; preds = %lor.lhs.false61.2
  %arrayidx77.2 = getelementptr inbounds [40 x [2 x i16]], [40 x [2 x i16]]* %mv, i32 1, i32 %add96.1, i32 1
  %74 = load i16, i16* %arrayidx77.2, align 2, !tbaa !64
  %conv78.2 = sext i16 %74 to i32
  %arrayidx81.2 = getelementptr inbounds [40 x [2 x i16]], [40 x [2 x i16]]* %mv, i32 1, i32 %sub.2, i32 1
  %75 = load i16, i16* %arrayidx81.2, align 2, !tbaa !64
  %conv82.2 = sext i16 %75 to i32
  %sub83.2 = sub nsw i32 %conv78.2, %conv82.2
  %76 = icmp slt i32 %sub83.2, 0
  %neg156.2 = sub nsw i32 0, %sub83.2
  %77 = select i1 %76, i32 %neg156.2, i32 %sub83.2
  %cmp85.2 = icmp slt i32 %77, %mvy_limit
  br i1 %cmp85.2, label %if.end95.2, label %if.then87.2

if.then87.2:                                      ; preds = %lor.lhs.false74.2, %lor.lhs.false61.2, %land.lhs.true.2, %lor.lhs.false38.2, %lor.lhs.false26.2, %if.else.2
  br label %if.end95.2

if.end95.2:                                       ; preds = %lor.lhs.false74.2, %if.end95.1, %lor.lhs.false.2, %if.then87.2
  %.sink167 = phi i8 [ 1, %if.then87.2 ], [ 2, %lor.lhs.false.2 ], [ 2, %if.end95.1 ], [ 0, %lor.lhs.false74.2 ]
  %arrayidx90.2 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %bs, i32 %dir.0162, i32 %edge.0161, i32 2
  store i8 %.sink167, i8* %arrayidx90.2, align 1, !tbaa !57
  %add96.2 = add nuw nsw i32 %add96.1, %cond
  %sub.3 = sub nsw i32 %add96.2, %cond2
  %arrayidx.3 = getelementptr inbounds i8, i8* %nnz, i32 %add96.2
  %78 = load i8, i8* %arrayidx.3, align 1, !tbaa !57
  %tobool11.3 = icmp eq i8 %78, 0
  br i1 %tobool11.3, label %lor.lhs.false.3, label %for.cond.cleanup9

lor.lhs.false.3:                                  ; preds = %if.end95.2
  %arrayidx12.3 = getelementptr inbounds i8, i8* %nnz, i32 %sub.3
  %79 = load i8, i8* %arrayidx12.3, align 1, !tbaa !57
  %tobool14.3 = icmp eq i8 %79, 0
  br i1 %tobool14.3, label %if.else.3, label %for.cond.cleanup9

if.else.3:                                        ; preds = %lor.lhs.false.3
  %arrayidx19.3 = getelementptr inbounds [40 x i8], [40 x i8]* %ref, i32 0, i32 %add96.2
  %80 = load i8, i8* %arrayidx19.3, align 1, !tbaa !57
  %arrayidx22.3 = getelementptr inbounds [40 x i8], [40 x i8]* %ref, i32 0, i32 %sub.3
  %81 = load i8, i8* %arrayidx22.3, align 1, !tbaa !57
  %cmp24.3 = icmp eq i8 %80, %81
  br i1 %cmp24.3, label %lor.lhs.false26.3, label %if.then87.3

lor.lhs.false26.3:                                ; preds = %if.else.3
  %arrayidx29.3 = getelementptr inbounds [40 x [2 x i16]], [40 x [2 x i16]]* %mv, i32 0, i32 %add96.2, i32 0
  %82 = load i16, i16* %arrayidx29.3, align 2, !tbaa !64
  %conv30.3 = sext i16 %82 to i32
  %arrayidx33.3 = getelementptr inbounds [40 x [2 x i16]], [40 x [2 x i16]]* %mv, i32 0, i32 %sub.3, i32 0
  %83 = load i16, i16* %arrayidx33.3, align 2, !tbaa !64
  %conv34.3 = sext i16 %83 to i32
  %sub35.3 = sub nsw i32 %conv30.3, %conv34.3
  %84 = icmp slt i32 %sub35.3, 0
  %neg.3 = sub nsw i32 0, %sub35.3
  %85 = select i1 %84, i32 %neg.3, i32 %sub35.3
  %cmp36.3 = icmp sgt i32 %85, 3
  br i1 %cmp36.3, label %if.then87.3, label %lor.lhs.false38.3

lor.lhs.false38.3:                                ; preds = %lor.lhs.false26.3
  %arrayidx41.3 = getelementptr inbounds [40 x [2 x i16]], [40 x [2 x i16]]* %mv, i32 0, i32 %add96.2, i32 1
  %86 = load i16, i16* %arrayidx41.3, align 2, !tbaa !64
  %conv42.3 = sext i16 %86 to i32
  %arrayidx45.3 = getelementptr inbounds [40 x [2 x i16]], [40 x [2 x i16]]* %mv, i32 0, i32 %sub.3, i32 1
  %87 = load i16, i16* %arrayidx45.3, align 2, !tbaa !64
  %conv46.3 = sext i16 %87 to i32
  %sub47.3 = sub nsw i32 %conv42.3, %conv46.3
  %88 = icmp slt i32 %sub47.3, 0
  %neg154.3 = sub nsw i32 0, %sub47.3
  %89 = select i1 %88, i32 %neg154.3, i32 %sub47.3
  %cmp49.3 = icmp slt i32 %89, %mvy_limit
  br i1 %cmp49.3, label %land.lhs.true.3, label %if.then87.3

land.lhs.true.3:                                  ; preds = %lor.lhs.false38.3
  %arrayidx54.3 = getelementptr inbounds [40 x i8], [40 x i8]* %ref, i32 1, i32 %add96.2
  %90 = load i8, i8* %arrayidx54.3, align 1, !tbaa !57
  %arrayidx57.3 = getelementptr inbounds [40 x i8], [40 x i8]* %ref, i32 1, i32 %sub.3
  %91 = load i8, i8* %arrayidx57.3, align 1, !tbaa !57
  %cmp59.3 = icmp eq i8 %90, %91
  br i1 %cmp59.3, label %lor.lhs.false61.3, label %if.then87.3

lor.lhs.false61.3:                                ; preds = %land.lhs.true.3
  %arrayidx64.3 = getelementptr inbounds [40 x [2 x i16]], [40 x [2 x i16]]* %mv, i32 1, i32 %add96.2, i32 0
  %92 = load i16, i16* %arrayidx64.3, align 2, !tbaa !64
  %conv65.3 = sext i16 %92 to i32
  %arrayidx68.3 = getelementptr inbounds [40 x [2 x i16]], [40 x [2 x i16]]* %mv, i32 1, i32 %sub.3, i32 0
  %93 = load i16, i16* %arrayidx68.3, align 2, !tbaa !64
  %conv69.3 = sext i16 %93 to i32
  %sub70.3 = sub nsw i32 %conv65.3, %conv69.3
  %94 = icmp slt i32 %sub70.3, 0
  %neg155.3 = sub nsw i32 0, %sub70.3
  %95 = select i1 %94, i32 %neg155.3, i32 %sub70.3
  %cmp72.3 = icmp sgt i32 %95, 3
  br i1 %cmp72.3, label %if.then87.3, label %lor.lhs.false74.3

lor.lhs.false74.3:                                ; preds = %lor.lhs.false61.3
  %arrayidx77.3 = getelementptr inbounds [40 x [2 x i16]], [40 x [2 x i16]]* %mv, i32 1, i32 %add96.2, i32 1
  %96 = load i16, i16* %arrayidx77.3, align 2, !tbaa !64
  %conv78.3 = sext i16 %96 to i32
  %arrayidx81.3 = getelementptr inbounds [40 x [2 x i16]], [40 x [2 x i16]]* %mv, i32 1, i32 %sub.3, i32 1
  %97 = load i16, i16* %arrayidx81.3, align 2, !tbaa !64
  %conv82.3 = sext i16 %97 to i32
  %sub83.3 = sub nsw i32 %conv78.3, %conv82.3
  %98 = icmp slt i32 %sub83.3, 0
  %neg156.3 = sub nsw i32 0, %sub83.3
  %99 = select i1 %98, i32 %neg156.3, i32 %sub83.3
  %cmp85.3 = icmp slt i32 %99, %mvy_limit
  br i1 %cmp85.3, label %for.cond.cleanup9, label %if.then87.3

if.then87.3:                                      ; preds = %lor.lhs.false74.3, %lor.lhs.false61.3, %land.lhs.true.3, %lor.lhs.false38.3, %lor.lhs.false26.3, %if.else.3
  br label %for.cond.cleanup9

lor.lhs.false.us.1:                               ; preds = %if.end95.us
  %arrayidx12.us.1 = getelementptr inbounds i8, i8* %nnz, i32 %sub.us.1
  %100 = load i8, i8* %arrayidx12.us.1, align 1, !tbaa !57
  %tobool14.us.1 = icmp eq i8 %100, 0
  br i1 %tobool14.us.1, label %if.else.us.1, label %if.end95.us.1

if.else.us.1:                                     ; preds = %lor.lhs.false.us.1
  %arrayidx19.us.1 = getelementptr inbounds [40 x i8], [40 x i8]* %ref, i32 0, i32 %add96.us
  %101 = load i8, i8* %arrayidx19.us.1, align 1, !tbaa !57
  %arrayidx22.us.1 = getelementptr inbounds [40 x i8], [40 x i8]* %ref, i32 0, i32 %sub.us.1
  %102 = load i8, i8* %arrayidx22.us.1, align 1, !tbaa !57
  %cmp24.us.1 = icmp eq i8 %101, %102
  br i1 %cmp24.us.1, label %lor.lhs.false26.us.1, label %if.then87.us.1

lor.lhs.false26.us.1:                             ; preds = %if.else.us.1
  %arrayidx29.us.1 = getelementptr inbounds [40 x [2 x i16]], [40 x [2 x i16]]* %mv, i32 0, i32 %add96.us, i32 0
  %103 = load i16, i16* %arrayidx29.us.1, align 2, !tbaa !64
  %conv30.us.1 = sext i16 %103 to i32
  %arrayidx33.us.1 = getelementptr inbounds [40 x [2 x i16]], [40 x [2 x i16]]* %mv, i32 0, i32 %sub.us.1, i32 0
  %104 = load i16, i16* %arrayidx33.us.1, align 2, !tbaa !64
  %conv34.us.1 = sext i16 %104 to i32
  %sub35.us.1 = sub nsw i32 %conv30.us.1, %conv34.us.1
  %105 = icmp slt i32 %sub35.us.1, 0
  %neg.us.1 = sub nsw i32 0, %sub35.us.1
  %106 = select i1 %105, i32 %neg.us.1, i32 %sub35.us.1
  %cmp36.us.1 = icmp sgt i32 %106, 3
  br i1 %cmp36.us.1, label %if.then87.us.1, label %lor.lhs.false38.us.1

lor.lhs.false38.us.1:                             ; preds = %lor.lhs.false26.us.1
  %arrayidx41.us.1 = getelementptr inbounds [40 x [2 x i16]], [40 x [2 x i16]]* %mv, i32 0, i32 %add96.us, i32 1
  %107 = load i16, i16* %arrayidx41.us.1, align 2, !tbaa !64
  %conv42.us.1 = sext i16 %107 to i32
  %arrayidx45.us.1 = getelementptr inbounds [40 x [2 x i16]], [40 x [2 x i16]]* %mv, i32 0, i32 %sub.us.1, i32 1
  %108 = load i16, i16* %arrayidx45.us.1, align 2, !tbaa !64
  %conv46.us.1 = sext i16 %108 to i32
  %sub47.us.1 = sub nsw i32 %conv42.us.1, %conv46.us.1
  %109 = icmp slt i32 %sub47.us.1, 0
  %neg154.us.1 = sub nsw i32 0, %sub47.us.1
  %110 = select i1 %109, i32 %neg154.us.1, i32 %sub47.us.1
  %cmp49.us.1 = icmp slt i32 %110, %mvy_limit
  br i1 %cmp49.us.1, label %if.end95.us.1, label %if.then87.us.1

if.then87.us.1:                                   ; preds = %lor.lhs.false38.us.1, %lor.lhs.false26.us.1, %if.else.us.1
  br label %if.end95.us.1

if.end95.us.1:                                    ; preds = %lor.lhs.false38.us.1, %if.end95.us, %lor.lhs.false.us.1, %if.then87.us.1
  %.sink168 = phi i8 [ 1, %if.then87.us.1 ], [ 2, %lor.lhs.false.us.1 ], [ 2, %if.end95.us ], [ 0, %lor.lhs.false38.us.1 ]
  %arrayidx90.us.1 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %bs, i32 %dir.0162, i32 %edge.0161, i32 1
  store i8 %.sink168, i8* %arrayidx90.us.1, align 1, !tbaa !57
  %add96.us.1 = add nuw nsw i32 %add96.us, %cond
  %sub.us.2 = sub nsw i32 %add96.us.1, %cond2
  %arrayidx.us.2 = getelementptr inbounds i8, i8* %nnz, i32 %add96.us.1
  %111 = load i8, i8* %arrayidx.us.2, align 1, !tbaa !57
  %tobool11.us.2 = icmp eq i8 %111, 0
  br i1 %tobool11.us.2, label %lor.lhs.false.us.2, label %if.end95.us.2

lor.lhs.false.us.2:                               ; preds = %if.end95.us.1
  %arrayidx12.us.2 = getelementptr inbounds i8, i8* %nnz, i32 %sub.us.2
  %112 = load i8, i8* %arrayidx12.us.2, align 1, !tbaa !57
  %tobool14.us.2 = icmp eq i8 %112, 0
  br i1 %tobool14.us.2, label %if.else.us.2, label %if.end95.us.2

if.else.us.2:                                     ; preds = %lor.lhs.false.us.2
  %arrayidx19.us.2 = getelementptr inbounds [40 x i8], [40 x i8]* %ref, i32 0, i32 %add96.us.1
  %113 = load i8, i8* %arrayidx19.us.2, align 1, !tbaa !57
  %arrayidx22.us.2 = getelementptr inbounds [40 x i8], [40 x i8]* %ref, i32 0, i32 %sub.us.2
  %114 = load i8, i8* %arrayidx22.us.2, align 1, !tbaa !57
  %cmp24.us.2 = icmp eq i8 %113, %114
  br i1 %cmp24.us.2, label %lor.lhs.false26.us.2, label %if.then87.us.2

lor.lhs.false26.us.2:                             ; preds = %if.else.us.2
  %arrayidx29.us.2 = getelementptr inbounds [40 x [2 x i16]], [40 x [2 x i16]]* %mv, i32 0, i32 %add96.us.1, i32 0
  %115 = load i16, i16* %arrayidx29.us.2, align 2, !tbaa !64
  %conv30.us.2 = sext i16 %115 to i32
  %arrayidx33.us.2 = getelementptr inbounds [40 x [2 x i16]], [40 x [2 x i16]]* %mv, i32 0, i32 %sub.us.2, i32 0
  %116 = load i16, i16* %arrayidx33.us.2, align 2, !tbaa !64
  %conv34.us.2 = sext i16 %116 to i32
  %sub35.us.2 = sub nsw i32 %conv30.us.2, %conv34.us.2
  %117 = icmp slt i32 %sub35.us.2, 0
  %neg.us.2 = sub nsw i32 0, %sub35.us.2
  %118 = select i1 %117, i32 %neg.us.2, i32 %sub35.us.2
  %cmp36.us.2 = icmp sgt i32 %118, 3
  br i1 %cmp36.us.2, label %if.then87.us.2, label %lor.lhs.false38.us.2

lor.lhs.false38.us.2:                             ; preds = %lor.lhs.false26.us.2
  %arrayidx41.us.2 = getelementptr inbounds [40 x [2 x i16]], [40 x [2 x i16]]* %mv, i32 0, i32 %add96.us.1, i32 1
  %119 = load i16, i16* %arrayidx41.us.2, align 2, !tbaa !64
  %conv42.us.2 = sext i16 %119 to i32
  %arrayidx45.us.2 = getelementptr inbounds [40 x [2 x i16]], [40 x [2 x i16]]* %mv, i32 0, i32 %sub.us.2, i32 1
  %120 = load i16, i16* %arrayidx45.us.2, align 2, !tbaa !64
  %conv46.us.2 = sext i16 %120 to i32
  %sub47.us.2 = sub nsw i32 %conv42.us.2, %conv46.us.2
  %121 = icmp slt i32 %sub47.us.2, 0
  %neg154.us.2 = sub nsw i32 0, %sub47.us.2
  %122 = select i1 %121, i32 %neg154.us.2, i32 %sub47.us.2
  %cmp49.us.2 = icmp slt i32 %122, %mvy_limit
  br i1 %cmp49.us.2, label %if.end95.us.2, label %if.then87.us.2

if.then87.us.2:                                   ; preds = %lor.lhs.false38.us.2, %lor.lhs.false26.us.2, %if.else.us.2
  br label %if.end95.us.2

if.end95.us.2:                                    ; preds = %lor.lhs.false38.us.2, %if.end95.us.1, %lor.lhs.false.us.2, %if.then87.us.2
  %.sink169 = phi i8 [ 1, %if.then87.us.2 ], [ 2, %lor.lhs.false.us.2 ], [ 2, %if.end95.us.1 ], [ 0, %lor.lhs.false38.us.2 ]
  %arrayidx90.us.2 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %bs, i32 %dir.0162, i32 %edge.0161, i32 2
  store i8 %.sink169, i8* %arrayidx90.us.2, align 1, !tbaa !57
  %add96.us.2 = add nuw nsw i32 %add96.us.1, %cond
  %sub.us.3 = sub nsw i32 %add96.us.2, %cond2
  %arrayidx.us.3 = getelementptr inbounds i8, i8* %nnz, i32 %add96.us.2
  %123 = load i8, i8* %arrayidx.us.3, align 1, !tbaa !57
  %tobool11.us.3 = icmp eq i8 %123, 0
  br i1 %tobool11.us.3, label %lor.lhs.false.us.3, label %for.cond.cleanup9

lor.lhs.false.us.3:                               ; preds = %if.end95.us.2
  %arrayidx12.us.3 = getelementptr inbounds i8, i8* %nnz, i32 %sub.us.3
  %124 = load i8, i8* %arrayidx12.us.3, align 1, !tbaa !57
  %tobool14.us.3 = icmp eq i8 %124, 0
  br i1 %tobool14.us.3, label %if.else.us.3, label %for.cond.cleanup9

if.else.us.3:                                     ; preds = %lor.lhs.false.us.3
  %arrayidx19.us.3 = getelementptr inbounds [40 x i8], [40 x i8]* %ref, i32 0, i32 %add96.us.2
  %125 = load i8, i8* %arrayidx19.us.3, align 1, !tbaa !57
  %arrayidx22.us.3 = getelementptr inbounds [40 x i8], [40 x i8]* %ref, i32 0, i32 %sub.us.3
  %126 = load i8, i8* %arrayidx22.us.3, align 1, !tbaa !57
  %cmp24.us.3 = icmp eq i8 %125, %126
  br i1 %cmp24.us.3, label %lor.lhs.false26.us.3, label %if.then87.us.3

lor.lhs.false26.us.3:                             ; preds = %if.else.us.3
  %arrayidx29.us.3 = getelementptr inbounds [40 x [2 x i16]], [40 x [2 x i16]]* %mv, i32 0, i32 %add96.us.2, i32 0
  %127 = load i16, i16* %arrayidx29.us.3, align 2, !tbaa !64
  %conv30.us.3 = sext i16 %127 to i32
  %arrayidx33.us.3 = getelementptr inbounds [40 x [2 x i16]], [40 x [2 x i16]]* %mv, i32 0, i32 %sub.us.3, i32 0
  %128 = load i16, i16* %arrayidx33.us.3, align 2, !tbaa !64
  %conv34.us.3 = sext i16 %128 to i32
  %sub35.us.3 = sub nsw i32 %conv30.us.3, %conv34.us.3
  %129 = icmp slt i32 %sub35.us.3, 0
  %neg.us.3 = sub nsw i32 0, %sub35.us.3
  %130 = select i1 %129, i32 %neg.us.3, i32 %sub35.us.3
  %cmp36.us.3 = icmp sgt i32 %130, 3
  br i1 %cmp36.us.3, label %if.then87.us.3, label %lor.lhs.false38.us.3

lor.lhs.false38.us.3:                             ; preds = %lor.lhs.false26.us.3
  %arrayidx41.us.3 = getelementptr inbounds [40 x [2 x i16]], [40 x [2 x i16]]* %mv, i32 0, i32 %add96.us.2, i32 1
  %131 = load i16, i16* %arrayidx41.us.3, align 2, !tbaa !64
  %conv42.us.3 = sext i16 %131 to i32
  %arrayidx45.us.3 = getelementptr inbounds [40 x [2 x i16]], [40 x [2 x i16]]* %mv, i32 0, i32 %sub.us.3, i32 1
  %132 = load i16, i16* %arrayidx45.us.3, align 2, !tbaa !64
  %conv46.us.3 = sext i16 %132 to i32
  %sub47.us.3 = sub nsw i32 %conv42.us.3, %conv46.us.3
  %133 = icmp slt i32 %sub47.us.3, 0
  %neg154.us.3 = sub nsw i32 0, %sub47.us.3
  %134 = select i1 %133, i32 %neg154.us.3, i32 %sub47.us.3
  %cmp49.us.3 = icmp slt i32 %134, %mvy_limit
  br i1 %cmp49.us.3, label %for.cond.cleanup9, label %if.then87.us.3

if.then87.us.3:                                   ; preds = %lor.lhs.false38.us.3, %lor.lhs.false26.us.3, %if.else.us.3
  br label %for.cond.cleanup9
}

; Function Attrs: inlinehint nofree norecurse nounwind
define internal fastcc void @deblock_luma_c(i8* nocapture %pix, i32 %xstride, i32 %ystride, i32 %alpha, i32 %beta, i8* nocapture readonly %tc0) unnamed_addr #4 {
entry:
  %mul.i = mul nsw i32 %xstride, -3
  %mul1.i = mul nsw i32 %xstride, -2
  %mul4.i = sub nsw i32 0, %xstride
  %mul13.i = shl nsw i32 %xstride, 1
  %mul = shl nsw i32 %ystride, 2
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.inc10
  ret void

for.body:                                         ; preds = %for.inc10, %entry
  %i.027 = phi i32 [ 0, %entry ], [ %inc11, %for.inc10 ]
  %pix.addr.026 = phi i8* [ %pix, %entry ], [ %pix.addr.2, %for.inc10 ]
  %arrayidx = getelementptr inbounds i8, i8* %tc0, i32 %i.027
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !57
  %cmp1 = icmp slt i8 %0, 0
  br i1 %cmp1, label %if.then, label %for.body7

if.then:                                          ; preds = %for.body
  %add.ptr = getelementptr inbounds i8, i8* %pix.addr.026, i32 %mul
  br label %for.inc10

for.body7:                                        ; preds = %for.body, %deblock_edge_luma_c.exit.for.body7_crit_edge
  %1 = phi i8 [ %.pre, %deblock_edge_luma_c.exit.for.body7_crit_edge ], [ %0, %for.body ]
  %d.025 = phi i32 [ %inc, %deblock_edge_luma_c.exit.for.body7_crit_edge ], [ 0, %for.body ]
  %pix.addr.123 = phi i8* [ %add.ptr9, %deblock_edge_luma_c.exit.for.body7_crit_edge ], [ %pix.addr.026, %for.body ]
  %arrayidx.i = getelementptr inbounds i8, i8* %pix.addr.123, i32 %mul.i
  %2 = load i8, i8* %arrayidx.i, align 1, !tbaa !57
  %conv.i = zext i8 %2 to i32
  %arrayidx2.i = getelementptr inbounds i8, i8* %pix.addr.123, i32 %mul1.i
  %3 = load i8, i8* %arrayidx2.i, align 1, !tbaa !57
  %conv3.i = zext i8 %3 to i32
  %arrayidx5.i = getelementptr inbounds i8, i8* %pix.addr.123, i32 %mul4.i
  %4 = load i8, i8* %arrayidx5.i, align 1, !tbaa !57
  %conv6.i = zext i8 %4 to i32
  %5 = load i8, i8* %pix.addr.123, align 1, !tbaa !57
  %conv9.i = zext i8 %5 to i32
  %arrayidx11.i = getelementptr inbounds i8, i8* %pix.addr.123, i32 %xstride
  %6 = load i8, i8* %arrayidx11.i, align 1, !tbaa !57
  %conv12.i = zext i8 %6 to i32
  %arrayidx14.i = getelementptr inbounds i8, i8* %pix.addr.123, i32 %mul13.i
  %7 = load i8, i8* %arrayidx14.i, align 1, !tbaa !57
  %conv15.i = zext i8 %7 to i32
  %sub.i = sub nsw i32 %conv6.i, %conv9.i
  %8 = icmp slt i32 %sub.i, 0
  %neg.i = sub nsw i32 0, %sub.i
  %9 = select i1 %8, i32 %neg.i, i32 %sub.i
  %cmp.i = icmp slt i32 %9, %alpha
  br i1 %cmp.i, label %land.lhs.true.i, label %deblock_edge_luma_c.exit

land.lhs.true.i:                                  ; preds = %for.body7
  %sub17.i = sub nsw i32 %conv3.i, %conv6.i
  %10 = icmp slt i32 %sub17.i, 0
  %neg146.i = sub nsw i32 0, %sub17.i
  %11 = select i1 %10, i32 %neg146.i, i32 %sub17.i
  %cmp19.i = icmp slt i32 %11, %beta
  br i1 %cmp19.i, label %land.lhs.true21.i, label %deblock_edge_luma_c.exit

land.lhs.true21.i:                                ; preds = %land.lhs.true.i
  %sub22.i = sub nsw i32 %conv12.i, %conv9.i
  %12 = icmp slt i32 %sub22.i, 0
  %neg147.i = sub nsw i32 0, %sub22.i
  %13 = select i1 %12, i32 %neg147.i, i32 %sub22.i
  %cmp24.i = icmp slt i32 %13, %beta
  br i1 %cmp24.i, label %if.then.i, label %deblock_edge_luma_c.exit

if.then.i:                                        ; preds = %land.lhs.true21.i
  %conv26.i = sext i8 %1 to i32
  %sub27.i = sub nsw i32 %conv.i, %conv6.i
  %14 = icmp slt i32 %sub27.i, 0
  %neg148.i = sub nsw i32 0, %sub27.i
  %15 = select i1 %14, i32 %neg148.i, i32 %sub27.i
  %cmp29.i = icmp slt i32 %15, %beta
  br i1 %cmp29.i, label %if.then31.i, label %if.end45.i

if.then31.i:                                      ; preds = %if.then.i
  %tobool.i = icmp eq i8 %1, 0
  br i1 %tobool.i, label %if.end.i, label %if.then32.i

if.then32.i:                                      ; preds = %if.then31.i
  %add.i = add nuw nsw i32 %conv6.i, 1
  %add33.i = add nuw nsw i32 %add.i, %conv9.i
  %16 = lshr i32 %add33.i, 1
  %add34.i = add nuw nsw i32 %16, %conv.i
  %17 = lshr i32 %add34.i, 1
  %sub36.i = sub nsw i32 %17, %conv3.i
  %sub38.i = sub nsw i32 0, %conv26.i
  %cmp.i.i = icmp slt i32 %sub36.i, %sub38.i
  %cmp1.i.i = icmp sgt i32 %sub36.i, %conv26.i
  %cond.i.i = select i1 %cmp1.i.i, i32 %conv26.i, i32 %sub36.i
  %cond5.i.i = select i1 %cmp.i.i, i32 %sub38.i, i32 %cond.i.i
  %18 = trunc i32 %cond5.i.i to i8
  %conv42.i = add i8 %3, %18
  store i8 %conv42.i, i8* %arrayidx2.i, align 1, !tbaa !57
  br label %if.end.i

if.end.i:                                         ; preds = %if.then32.i, %if.then31.i
  %inc.i = add nsw i32 %conv26.i, 1
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.end.i, %if.then.i
  %tc.0.i = phi i32 [ %inc.i, %if.end.i ], [ %conv26.i, %if.then.i ]
  %sub46.i = sub nsw i32 %conv15.i, %conv9.i
  %19 = icmp slt i32 %sub46.i, 0
  %neg149.i = sub nsw i32 0, %sub46.i
  %20 = select i1 %19, i32 %neg149.i, i32 %sub46.i
  %cmp48.i = icmp slt i32 %20, %beta
  br i1 %cmp48.i, label %if.then50.i, label %if.end69.i

if.then50.i:                                      ; preds = %if.end45.i
  %tobool51.i = icmp eq i8 %1, 0
  br i1 %tobool51.i, label %if.end67.i, label %if.then52.i

if.then52.i:                                      ; preds = %if.then50.i
  %add53.i = add nuw nsw i32 %conv6.i, 1
  %add54.i = add nuw nsw i32 %add53.i, %conv9.i
  %21 = lshr i32 %add54.i, 1
  %add56.i = add nuw nsw i32 %21, %conv15.i
  %22 = lshr i32 %add56.i, 1
  %sub58.i = sub nsw i32 %22, %conv12.i
  %sub60.i = sub nsw i32 0, %conv26.i
  %cmp.i160.i = icmp slt i32 %sub58.i, %sub60.i
  %cmp1.i161.i = icmp sgt i32 %sub58.i, %conv26.i
  %cond.i162.i = select i1 %cmp1.i161.i, i32 %conv26.i, i32 %sub58.i
  %cond5.i163.i = select i1 %cmp.i160.i, i32 %sub60.i, i32 %cond.i162.i
  %23 = trunc i32 %cond5.i163.i to i8
  %conv64.i = add i8 %6, %23
  store i8 %conv64.i, i8* %arrayidx11.i, align 1, !tbaa !57
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.then52.i, %if.then50.i
  %inc68.i = add nsw i32 %tc.0.i, 1
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.end67.i, %if.end45.i
  %tc.1.i = phi i32 [ %inc68.i, %if.end67.i ], [ %tc.0.i, %if.end45.i ]
  %sub70.i = sub nsw i32 %conv9.i, %conv6.i
  %mul71.i = shl nsw i32 %sub70.i, 2
  %sub72.i = add nuw nsw i32 %conv3.i, 4
  %add73.i = sub nsw i32 %sub72.i, %conv12.i
  %add74.i = add nsw i32 %add73.i, %mul71.i
  %shr75.i = ashr i32 %add74.i, 3
  %sub76.i = sub nsw i32 0, %tc.1.i
  %cmp.i156.i = icmp slt i32 %shr75.i, %sub76.i
  %cmp1.i157.i = icmp sgt i32 %shr75.i, %tc.1.i
  %cond.i158.i = select i1 %cmp1.i157.i, i32 %tc.1.i, i32 %shr75.i
  %cond5.i159.i = select i1 %cmp.i156.i, i32 %sub76.i, i32 %cond.i158.i
  %add78.i = add nsw i32 %cond5.i159.i, %conv6.i
  %tobool.i151.i = icmp ugt i32 %add78.i, 255
  %sub.i152.i = sub nsw i32 0, %add78.i
  %shr.i153.i = ashr i32 %sub.i152.i, 31
  %cond.i154.i = select i1 %tobool.i151.i, i32 %shr.i153.i, i32 %add78.i
  %conv.i155.i = trunc i32 %cond.i154.i to i8
  store i8 %conv.i155.i, i8* %arrayidx5.i, align 1, !tbaa !57
  %sub82.i = sub nsw i32 %conv9.i, %cond5.i159.i
  %tobool.i.i = icmp ugt i32 %sub82.i, 255
  %sub.i.i = sub nsw i32 0, %sub82.i
  %shr.i.i = ashr i32 %sub.i.i, 31
  %cond.i150.i = select i1 %tobool.i.i, i32 %shr.i.i, i32 %sub82.i
  %conv.i.i = trunc i32 %cond.i150.i to i8
  store i8 %conv.i.i, i8* %pix.addr.123, align 1, !tbaa !57
  br label %deblock_edge_luma_c.exit

deblock_edge_luma_c.exit:                         ; preds = %for.body7, %land.lhs.true.i, %land.lhs.true21.i, %if.end69.i
  %inc = add nuw nsw i32 %d.025, 1
  %add.ptr9 = getelementptr inbounds i8, i8* %pix.addr.123, i32 %ystride
  %exitcond = icmp eq i32 %inc, 4
  br i1 %exitcond, label %for.inc10, label %deblock_edge_luma_c.exit.for.body7_crit_edge

deblock_edge_luma_c.exit.for.body7_crit_edge:     ; preds = %deblock_edge_luma_c.exit
  %.pre = load i8, i8* %arrayidx, align 1, !tbaa !57
  br label %for.body7

for.inc10:                                        ; preds = %deblock_edge_luma_c.exit, %if.then
  %pix.addr.2 = phi i8* [ %add.ptr, %if.then ], [ %add.ptr9, %deblock_edge_luma_c.exit ]
  %inc11 = add nuw nsw i32 %i.027, 1
  %exitcond28 = icmp eq i32 %inc11, 4
  br i1 %exitcond28, label %for.cond.cleanup, label %for.body
}

; Function Attrs: inlinehint nofree norecurse nounwind
define internal fastcc void @deblock_luma_intra_c(i8* nocapture %pix, i32 %xstride, i32 %ystride, i32 %alpha, i32 %beta) unnamed_addr #4 {
entry:
  %mul.i = mul nsw i32 %xstride, -3
  %mul1.i = mul nsw i32 %xstride, -2
  %mul4.i = sub nsw i32 0, %xstride
  %mul13.i = shl nsw i32 %xstride, 1
  %shr.i = ashr i32 %alpha, 2
  %add.i = add nsw i32 %shr.i, 2
  %mul36.i = mul nsw i32 %xstride, -4
  %mul83.i = mul nsw i32 %xstride, 3
  br label %for.body

for.cond.cleanup:                                 ; preds = %deblock_edge_luma_intra_c.exit
  ret void

for.body:                                         ; preds = %deblock_edge_luma_intra_c.exit, %entry
  %d.07 = phi i32 [ 0, %entry ], [ %inc, %deblock_edge_luma_intra_c.exit ]
  %pix.addr.04 = phi i8* [ %pix, %entry ], [ %add.ptr, %deblock_edge_luma_intra_c.exit ]
  %arrayidx.i = getelementptr inbounds i8, i8* %pix.addr.04, i32 %mul.i
  %0 = load i8, i8* %arrayidx.i, align 1, !tbaa !57
  %conv.i = zext i8 %0 to i32
  %arrayidx2.i = getelementptr inbounds i8, i8* %pix.addr.04, i32 %mul1.i
  %1 = load i8, i8* %arrayidx2.i, align 1, !tbaa !57
  %conv3.i = zext i8 %1 to i32
  %arrayidx5.i = getelementptr inbounds i8, i8* %pix.addr.04, i32 %mul4.i
  %2 = load i8, i8* %arrayidx5.i, align 1, !tbaa !57
  %conv6.i = zext i8 %2 to i32
  %3 = load i8, i8* %pix.addr.04, align 1, !tbaa !57
  %conv9.i = zext i8 %3 to i32
  %arrayidx11.i = getelementptr inbounds i8, i8* %pix.addr.04, i32 %xstride
  %4 = load i8, i8* %arrayidx11.i, align 1, !tbaa !57
  %conv12.i = zext i8 %4 to i32
  %arrayidx14.i = getelementptr inbounds i8, i8* %pix.addr.04, i32 %mul13.i
  %5 = load i8, i8* %arrayidx14.i, align 1, !tbaa !57
  %conv15.i = zext i8 %5 to i32
  %sub.i = sub nsw i32 %conv6.i, %conv9.i
  %6 = icmp slt i32 %sub.i, 0
  %neg.i = sub nsw i32 0, %sub.i
  %7 = select i1 %6, i32 %neg.i, i32 %sub.i
  %cmp.i = icmp slt i32 %7, %alpha
  br i1 %cmp.i, label %land.lhs.true.i, label %deblock_edge_luma_intra_c.exit

land.lhs.true.i:                                  ; preds = %for.body
  %sub17.i = sub nsw i32 %conv3.i, %conv6.i
  %8 = icmp slt i32 %sub17.i, 0
  %neg236.i = sub nsw i32 0, %sub17.i
  %9 = select i1 %8, i32 %neg236.i, i32 %sub17.i
  %cmp19.i = icmp slt i32 %9, %beta
  br i1 %cmp19.i, label %land.lhs.true21.i, label %deblock_edge_luma_intra_c.exit

land.lhs.true21.i:                                ; preds = %land.lhs.true.i
  %sub22.i = sub nsw i32 %conv12.i, %conv9.i
  %10 = icmp slt i32 %sub22.i, 0
  %neg237.i = sub nsw i32 0, %sub22.i
  %11 = select i1 %10, i32 %neg237.i, i32 %sub22.i
  %cmp24.i = icmp slt i32 %11, %beta
  br i1 %cmp24.i, label %if.then.i, label %deblock_edge_luma_intra_c.exit

if.then.i:                                        ; preds = %land.lhs.true21.i
  %cmp28.i = icmp slt i32 %7, %add.i
  br i1 %cmp28.i, label %if.then30.i, label %if.else127.i

if.then30.i:                                      ; preds = %if.then.i
  %sub31.i = sub nsw i32 %conv.i, %conv6.i
  %12 = icmp slt i32 %sub31.i, 0
  %neg238.i = sub nsw i32 0, %sub31.i
  %13 = select i1 %12, i32 %neg238.i, i32 %sub31.i
  %cmp33.i = icmp slt i32 %13, %beta
  br i1 %cmp33.i, label %if.then35.i, label %if.else.i

if.then35.i:                                      ; preds = %if.then30.i
  %arrayidx37.i = getelementptr inbounds i8, i8* %pix.addr.04, i32 %mul36.i
  %14 = load i8, i8* %arrayidx37.i, align 1, !tbaa !57
  %conv38.i = zext i8 %14 to i32
  %reass.add.i = add nuw nsw i32 %conv9.i, %conv6.i
  %reass.add240.i = add nuw nsw i32 %reass.add.i, %conv3.i
  %reass.mul.i = shl nuw nsw i32 %reass.add240.i, 1
  %add44.i = add nuw nsw i32 %conv12.i, 4
  %add45.i = add nuw nsw i32 %add44.i, %conv.i
  %add46.i = add nuw nsw i32 %add45.i, %reass.mul.i
  %15 = lshr i32 %add46.i, 3
  %conv48.i = trunc i32 %15 to i8
  store i8 %conv48.i, i8* %arrayidx5.i, align 1, !tbaa !57
  %add51.i = add nuw nsw i32 %conv6.i, 2
  %add52.i = add nuw nsw i32 %add51.i, %conv.i
  %add53.i = add nuw nsw i32 %add52.i, %conv3.i
  %add54.i = add nuw nsw i32 %add53.i, %conv9.i
  %16 = lshr i32 %add54.i, 2
  %conv56.i = trunc i32 %16 to i8
  store i8 %conv56.i, i8* %arrayidx2.i, align 1, !tbaa !57
  %mul59.i = shl nuw nsw i32 %conv38.i, 1
  %mul60.i = mul nuw nsw i32 %conv.i, 3
  %add62.i = add nuw nsw i32 %conv3.i, 4
  %add63.i = add nuw nsw i32 %add62.i, %mul60.i
  br label %if.end.i

if.else.i:                                        ; preds = %if.then30.i
  %mul70.i = shl nuw nsw i32 %conv3.i, 1
  %add71.i = add nuw nsw i32 %conv6.i, 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then35.i
  %mul70.i.sink = phi i32 [ %mul70.i, %if.else.i ], [ %reass.add.i, %if.then35.i ]
  %add71.i.sink = phi i32 [ %add71.i, %if.else.i ], [ %add63.i, %if.then35.i ]
  %conv12.i.sink = phi i32 [ %conv12.i, %if.else.i ], [ %mul59.i, %if.then35.i ]
  %.sink8 = phi i32 [ 2, %if.else.i ], [ 3, %if.then35.i ]
  %arrayidx5.i.sink = phi i8* [ %arrayidx5.i, %if.else.i ], [ %arrayidx.i, %if.then35.i ]
  %add72.i = add nuw nsw i32 %add71.i.sink, %mul70.i.sink
  %add73.i = add nuw nsw i32 %add72.i, %conv12.i.sink
  %17 = lshr i32 %add73.i, %.sink8
  %conv75.i = trunc i32 %17 to i8
  store i8 %conv75.i, i8* %arrayidx5.i.sink, align 1, !tbaa !57
  %sub78.i = sub nsw i32 %conv15.i, %conv9.i
  %18 = icmp slt i32 %sub78.i, 0
  %neg239.i = sub nsw i32 0, %sub78.i
  %19 = select i1 %18, i32 %neg239.i, i32 %sub78.i
  %cmp80.i = icmp slt i32 %19, %beta
  br i1 %cmp80.i, label %if.then82.i, label %if.else117.i

if.then82.i:                                      ; preds = %if.end.i
  %arrayidx84.i = getelementptr inbounds i8, i8* %pix.addr.04, i32 %mul83.i
  %20 = load i8, i8* %arrayidx84.i, align 1, !tbaa !57
  %conv85.i = zext i8 %20 to i32
  %reass.add241.i = add nuw nsw i32 %conv9.i, %conv6.i
  %reass.add242.i = add nuw nsw i32 %reass.add241.i, %conv12.i
  %reass.mul243.i = shl nuw nsw i32 %reass.add242.i, 1
  %add91.i = add nuw nsw i32 %conv3.i, 4
  %add92.i = add nuw nsw i32 %add91.i, %conv15.i
  %add93.i = add nuw nsw i32 %add92.i, %reass.mul243.i
  %21 = lshr i32 %add93.i, 3
  %conv95.i = trunc i32 %21 to i8
  store i8 %conv95.i, i8* %pix.addr.04, align 1, !tbaa !57
  %add98.i = add nuw nsw i32 %conv6.i, 2
  %add99.i = add nuw nsw i32 %add98.i, %conv9.i
  %add100.i = add nuw nsw i32 %add99.i, %conv12.i
  %add101.i = add nuw nsw i32 %add100.i, %conv15.i
  %22 = lshr i32 %add101.i, 2
  %conv103.i = trunc i32 %22 to i8
  store i8 %conv103.i, i8* %arrayidx11.i, align 1, !tbaa !57
  %mul106.i = shl nuw nsw i32 %conv85.i, 1
  %mul107.i = mul nuw nsw i32 %conv15.i, 3
  %add110.i = add nuw nsw i32 %reass.add242.i, 4
  %add111.i = add nuw nsw i32 %add110.i, %mul107.i
  %add112.i = add nuw nsw i32 %add111.i, %mul106.i
  %23 = lshr i32 %add112.i, 3
  %conv114.i = trunc i32 %23 to i8
  store i8 %conv114.i, i8* %arrayidx14.i, align 1, !tbaa !57
  br label %deblock_edge_luma_intra_c.exit

if.else117.i:                                     ; preds = %if.end.i
  %mul118.i = shl nuw nsw i32 %conv12.i, 1
  %add119.i = add nuw nsw i32 %conv9.i, 2
  %add120.i = add nuw nsw i32 %add119.i, %conv3.i
  %add121.i = add nuw nsw i32 %add120.i, %mul118.i
  %24 = lshr i32 %add121.i, 2
  %conv123.i = trunc i32 %24 to i8
  store i8 %conv123.i, i8* %pix.addr.04, align 1, !tbaa !57
  br label %deblock_edge_luma_intra_c.exit

if.else127.i:                                     ; preds = %if.then.i
  %mul128.i = shl nuw nsw i32 %conv3.i, 1
  %add129.i = add nuw nsw i32 %conv6.i, 2
  %add130.i = add nuw nsw i32 %add129.i, %mul128.i
  %add131.i = add nuw nsw i32 %add130.i, %conv12.i
  %25 = lshr i32 %add131.i, 2
  %conv133.i = trunc i32 %25 to i8
  store i8 %conv133.i, i8* %arrayidx5.i, align 1, !tbaa !57
  %mul136.i = shl nuw nsw i32 %conv12.i, 1
  %add137.i = add nuw nsw i32 %conv9.i, 2
  %add138.i = add nuw nsw i32 %add137.i, %conv3.i
  %add139.i = add nuw nsw i32 %add138.i, %mul136.i
  %26 = lshr i32 %add139.i, 2
  %conv141.i = trunc i32 %26 to i8
  store i8 %conv141.i, i8* %pix.addr.04, align 1, !tbaa !57
  br label %deblock_edge_luma_intra_c.exit

deblock_edge_luma_intra_c.exit:                   ; preds = %for.body, %land.lhs.true.i, %land.lhs.true21.i, %if.then82.i, %if.else117.i, %if.else127.i
  %inc = add nuw nsw i32 %d.07, 1
  %add.ptr = getelementptr inbounds i8, i8* %pix.addr.04, i32 %ystride
  %exitcond = icmp eq i32 %inc, 16
  br i1 %exitcond, label %for.cond.cleanup, label %for.body
}

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #3 = { nofree norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #4 = { inlinehint nofree norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 (http://10.18.30.194:8888/compiler/compiler10.git 713ef477716300a9b04a1522e3fce445623444dc)"}
!2 = !{!3, !5, i64 8432}
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
!36 = !{!3, !5, i64 8436}
!37 = !{!38, !5, i64 44}
!38 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60}
!39 = !{!3, !9, i64 15356}
!40 = !{!5, !5, i64 0}
!41 = !{!42, !5, i64 264}
!42 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !13, i64 72, !5, i64 88, !43, i64 92, !5, i64 260, !5, i64 264, !5, i64 268, !5, i64 272, !5, i64 276, !6, i64 280}
!43 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !44, i64 84, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !5, i64 148, !5, i64 152, !5, i64 156, !5, i64 160, !5, i64 164}
!44 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44}
!45 = !{!3, !5, i64 18768}
!46 = !{!9, !9, i64 0}
!47 = !{!3, !5, i64 18752}
!48 = !{!3, !5, i64 8428}
!49 = !{!3, !5, i64 18976}
!50 = !{!3, !5, i64 18772}
!51 = !{!3, !5, i64 18808}
!52 = !{!3, !5, i64 18852}
!53 = !{!3, !5, i64 19112}
!54 = !{!3, !5, i64 19100}
!55 = !{!3, !9, i64 19464}
!56 = !{!3, !9, i64 19460}
!57 = !{!6, !6, i64 0}
!58 = !{!3, !9, i64 19148}
!59 = !{!3, !5, i64 12}
!60 = !{!3, !9, i64 19156}
!61 = !{!3, !9, i64 3308}
!62 = !{!3, !9, i64 19152}
!63 = !{!3, !9, i64 19160}
!64 = !{!65, !65, i64 0}
!65 = !{!"short", !6, i64 0}
!66 = !{!67, !9, i64 12012}
!67 = !{!"x264_frame", !9, i64 0, !5, i64 4, !6, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !11, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !9, i64 96, !5, i64 100, !5, i64 104, !15, i64 112, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !6, i64 136, !6, i64 137, !6, i64 138, !11, i64 140, !11, i64 144, !11, i64 148, !5, i64 152, !5, i64 156, !5, i64 160, !6, i64 164, !6, i64 176, !6, i64 188, !5, i64 200, !5, i64 204, !5, i64 208, !6, i64 212, !6, i64 224, !6, i64 236, !6, i64 284, !6, i64 332, !9, i64 348, !6, i64 352, !6, i64 368, !9, i64 384, !6, i64 400, !6, i64 2704, !5, i64 2768, !9, i64 2772, !9, i64 2776, !9, i64 2780, !6, i64 2784, !9, i64 2792, !6, i64 2796, !9, i64 2932, !9, i64 2936, !6, i64 2940, !6, i64 4236, !6, i64 4372, !6, i64 4380, !6, i64 4388, !6, i64 4516, !6, i64 4520, !6, i64 5816, !5, i64 7112, !6, i64 7116, !6, i64 7188, !9, i64 8484, !9, i64 8488, !9, i64 8492, !9, i64 8496, !9, i64 8500, !9, i64 8504, !5, i64 8508, !9, i64 8512, !9, i64 8516, !9, i64 8520, !5, i64 8524, !6, i64 8528, !6, i64 8600, !6, i64 8616, !68, i64 8640, !6, i64 8672, !6, i64 8924, !6, i64 9928, !15, i64 11936, !15, i64 11944, !5, i64 11952, !5, i64 11956, !5, i64 11960, !5, i64 11964, !5, i64 11968, !5, i64 11972, !11, i64 11976, !5, i64 11980, !5, i64 11984, !5, i64 11988, !5, i64 11992, !69, i64 11996, !9, i64 12008, !9, i64 12012, !9, i64 12016}
!68 = !{!"x264_hrd_t", !28, i64 0, !28, i64 8, !28, i64 16, !28, i64 24}
!69 = !{!"x264_sei_t", !5, i64 0, !9, i64 4, !9, i64 8}
!70 = !{!67, !9, i64 2936}
!71 = !{!3, !5, i64 19536}
!72 = !{!3, !5, i64 29088}
!73 = !{!3, !5, i64 29092}
!74 = !{!3, !5, i64 19540}
!75 = !{!3, !5, i64 19552}
!76 = !{!3, !9, i64 29080}
!77 = !{!3, !9, i64 38312}
!78 = !{!3, !5, i64 3320}
!79 = !{!3, !5, i64 19548}
!80 = !{!34, !9, i64 16}
!81 = !{!34, !9, i64 20}
!82 = !{!34, !9, i64 40}
!83 = !{!34, !9, i64 44}
!84 = !{!34, !9, i64 48}
!85 = !{!34, !9, i64 56}
!86 = !{!34, !9, i64 64}
!87 = !{!34, !9, i64 72}
!88 = !{!34, !9, i64 80}
!89 = !{!34, !9, i64 60}
!90 = !{!34, !9, i64 76}
