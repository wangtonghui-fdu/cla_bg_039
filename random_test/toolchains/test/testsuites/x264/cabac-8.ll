; ModuleID = 'encoder/cabac.c'
source_filename = "encoder/cabac.c"
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

@x264_significant_coeff_flag_offset = external dso_local local_unnamed_addr constant [2 x [16 x i16]], align 2
@x264_last_coeff_flag_offset = external dso_local local_unnamed_addr constant [2 x [16 x i16]], align 2
@x264_coeff_abs_level_m1_offset = external dso_local local_unnamed_addr constant [16 x i16], align 2
@coeff_abs_levelgt1_ctx_chroma_dc = internal unnamed_addr constant [8 x i8] c"\05\05\05\05\06\07\08\08", align 1
@coeff_abs_levelgt1_ctx = internal unnamed_addr constant [8 x i8] c"\05\05\05\05\06\07\08\09", align 1
@x264_coeff_flag_offset_chroma_422_dc = external dso_local local_unnamed_addr constant [7 x i8], align 1
@x264_count_cat_m1 = external dso_local local_unnamed_addr constant [14 x i8], align 1
@x264_significant_coeff_flag_offset_8x8 = external dso_local local_unnamed_addr constant [2 x [64 x i8]], align 1
@x264_last_coeff_flag_offset_8x8 = external dso_local local_unnamed_addr constant [63 x i8], align 1
@coeff_abs_level1_ctx = internal unnamed_addr constant [8 x i8] c"\01\02\03\04\00\00\00\00", align 1
@coeff_abs_level_transition = internal unnamed_addr constant [2 x [8 x i8]] [[8 x i8] c"\01\02\03\03\04\05\06\07", [8 x i8] c"\04\04\04\04\05\06\07\07"], align 1
@ctx_cat_plane = internal unnamed_addr constant [6 x [3 x i8]] [[3 x i8] c"\00\06\0A", [3 x i8] c"\01\07\0B", [3 x i8] c"\02\08\0C", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer, [3 x i8] c"\05\09\0D"], align 1
@x264_scan8 = internal unnamed_addr constant [51 x i8] c"\0C\0D\14\15\0E\0F\16\17\1C\1D$%\1E\1F&'45<=67>?DELMFGNO\\]de^_fglmtunovw\00(P", align 1
@block_idx_x = internal unnamed_addr constant [16 x i8] c"\00\01\00\01\02\03\02\03\00\01\00\01\02\03\02\03", align 1
@block_idx_y = internal unnamed_addr constant [16 x i8] c"\00\00\01\01\00\00\01\01\02\02\03\03\02\02\03\03", align 1
@cabac_mvd_cpn.ctxes = internal unnamed_addr constant [8 x i8] c"\03\04\05\06\06\06\06\06", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"encoder/cabac.c\00", align 1
@__PRETTY_FUNCTION__.cabac_8x8_mvd = private unnamed_addr constant [50 x i8] c"void cabac_8x8_mvd(x264_t *, x264_cabac_t *, int)\00", align 1
@x264_mb_partition_listX_table = internal unnamed_addr constant [2 x [17 x i8]] [[17 x i8] c"\01\01\01\01\00\00\00\00\01\01\01\01\00\00\00\00\00", [17 x i8] c"\00\00\00\00\01\01\01\01\01\01\01\01\00\00\00\00\00"], align 1
@cabac_mb_header_b.i_mb_bits = internal unnamed_addr constant [27 x i8] c"1)\045-\00Cc\00=/\009%\06Ss\00Kk\00[{\00Gg!", align 1
@x264_mb_pred_mode4x4_fix = internal unnamed_addr constant [13 x i8] c"\FF\00\01\02\03\04\05\06\07\08\02\02\02", align 1
@x264_mb_pred_mode16x16_fix = internal unnamed_addr constant [7 x i8] c"\00\01\02\03\02\02\02", align 1
@x264_transform_allowed = internal unnamed_addr constant [19 x i8] c"\00\00\00\00\01\02\00\01\01\01\01\01\01\01\01\01\01\01\00", align 1
@cabac_cbf_ctxidxinc.base_ctx = internal unnamed_addr constant [14 x i16] [i16 85, i16 89, i16 93, i16 97, i16 101, i16 1012, i16 460, i16 464, i16 468, i16 1016, i16 472, i16 476, i16 480, i16 1020], align 2
@x264_ctz_4bit.lut = internal unnamed_addr constant [16 x i8] c"\04\00\01\00\02\00\01\00\03\00\01\00\02\00\01\00", align 1

; Function Attrs: nounwind
define hidden void @x264_8_cabac_mb_skip(%struct.x264_t* %h, i32 %b_skip) local_unnamed_addr #0 {
entry:
  %i_neighbour_skip = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 11
  %0 = load i32, i32* %i_neighbour_skip, align 4, !tbaa !2
  %i_type = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 51, i32 2
  %1 = load i32, i32* %i_type, align 8, !tbaa !36
  %cmp = icmp eq i32 %1, 0
  %spec.select.v = select i1 %cmp, i32 11, i32 24
  %spec.select = add nsw i32 %spec.select.v, %0
  %cabac = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 58
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cabac, i32 %spec.select, i32 %b_skip) #7
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t*, i32, i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
define hidden void @x264_8_cabac_block_residual_c(%struct.x264_t* nocapture readonly %h, %struct.x264_cabac_t* %cb, i32 %ctx_block_cat, i16* %l) local_unnamed_addr #0 {
entry:
  %coeffs.i = alloca [64 x i16], align 4
  %arrayidx.i = getelementptr inbounds [2 x [16 x i16]], [2 x [16 x i16]]* @x264_significant_coeff_flag_offset, i32 0, i32 0, i32 %ctx_block_cat
  %0 = load i16, i16* %arrayidx.i, align 2, !tbaa !37
  %conv.i = zext i16 %0 to i32
  %arrayidx1.i = getelementptr inbounds [2 x [16 x i16]], [2 x [16 x i16]]* @x264_last_coeff_flag_offset, i32 0, i32 0, i32 %ctx_block_cat
  %1 = load i16, i16* %arrayidx1.i, align 2, !tbaa !37
  %conv2.i = zext i16 %1 to i32
  %arrayidx3.i = getelementptr inbounds [16 x i16], [16 x i16]* @x264_coeff_abs_level_m1_offset, i32 0, i32 %ctx_block_cat
  %2 = load i16, i16* %arrayidx3.i, align 2, !tbaa !37
  %conv4.i = zext i16 %2 to i32
  %arrayidx5.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 98, i32 16, i32 %ctx_block_cat
  %3 = load i32 (i16*)*, i32 (i16*)** %arrayidx5.i, align 4, !tbaa !39
  %call.i = tail call i32 %3(i16* %l) #7
  %4 = bitcast [64 x i16]* %coeffs.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %4) #7
  %arrayidx37.i = getelementptr inbounds [14 x i8], [14 x i8]* @x264_count_cat_m1, i32 0, i32 %ctx_block_cat
  %5 = load i8, i8* %arrayidx37.i, align 1, !tbaa !40
  %conv38.i = zext i8 %5 to i32
  %cmp39.i = icmp eq i8 %5, 63
  br i1 %cmp39.i, label %while.cond43.i, label %while.cond81.i

while.cond43.i:                                   ; preds = %entry, %if.end69.i
  %i42.0.i = phi i32 [ %inc70.i, %if.end69.i ], [ 0, %entry ]
  %coeff_idx.3.i = phi i32 [ %coeff_idx.4.i, %if.end69.i ], [ -1, %entry ]
  %arrayidx45.i = getelementptr inbounds i16, i16* %l, i32 %i42.0.i
  %6 = load i16, i16* %arrayidx45.i, align 2, !tbaa !37
  %tobool46.i = icmp eq i16 %6, 0
  br i1 %tobool46.i, label %if.else65.i, label %if.then47.i

if.then47.i:                                      ; preds = %while.cond43.i
  %inc49.i = add nsw i32 %coeff_idx.3.i, 1
  %arrayidx50.i = getelementptr inbounds [64 x i16], [64 x i16]* %coeffs.i, i32 0, i32 %inc49.i
  store i16 %6, i16* %arrayidx50.i, align 2, !tbaa !37
  %arrayidx51.i = getelementptr inbounds [2 x [64 x i8]], [2 x [64 x i8]]* @x264_significant_coeff_flag_offset_8x8, i32 0, i32 0, i32 %i42.0.i
  %7 = load i8, i8* %arrayidx51.i, align 1, !tbaa !40
  %conv52.i = zext i8 %7 to i32
  %add53.i = add nuw nsw i32 %conv52.i, %conv.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add53.i, i32 1) #7
  %cmp54.i = icmp eq i32 %i42.0.i, %call.i
  %arrayidx57.i = getelementptr inbounds [63 x i8], [63 x i8]* @x264_last_coeff_flag_offset_8x8, i32 0, i32 %i42.0.i
  %8 = load i8, i8* %arrayidx57.i, align 1, !tbaa !40
  %conv58.i = zext i8 %8 to i32
  %add59.i = add nuw nsw i32 %conv58.i, %conv2.i
  br i1 %cmp54.i, label %if.then56.i, label %if.end69.i

if.then56.i:                                      ; preds = %if.then47.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add59.i, i32 1) #7
  br label %do.body.i.preheader

if.else65.i:                                      ; preds = %while.cond43.i
  %arrayidx66.i = getelementptr inbounds [2 x [64 x i8]], [2 x [64 x i8]]* @x264_significant_coeff_flag_offset_8x8, i32 0, i32 0, i32 %i42.0.i
  %9 = load i8, i8* %arrayidx66.i, align 1, !tbaa !40
  %conv67.i = zext i8 %9 to i32
  %add68.i = add nuw nsw i32 %conv67.i, %conv.i
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.then47.i, %if.else65.i
  %add68.i.sink = phi i32 [ %add68.i, %if.else65.i ], [ %add59.i, %if.then47.i ]
  %coeff_idx.4.i = phi i32 [ %coeff_idx.3.i, %if.else65.i ], [ %inc49.i, %if.then47.i ]
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add68.i.sink, i32 0) #7
  %inc70.i = add nuw nsw i32 %i42.0.i, 1
  %cmp71.i = icmp eq i32 %inc70.i, 63
  br i1 %cmp71.i, label %if.then73.i, label %while.cond43.i

if.then73.i:                                      ; preds = %if.end69.i
  %arrayidx74.i = getelementptr inbounds i16, i16* %l, i32 63
  %10 = load i16, i16* %arrayidx74.i, align 2, !tbaa !37
  %inc75.i = add nsw i32 %coeff_idx.4.i, 1
  %arrayidx76.i = getelementptr inbounds [64 x i16], [64 x i16]* %coeffs.i, i32 0, i32 %inc75.i
  store i16 %10, i16* %arrayidx76.i, align 2, !tbaa !37
  br label %do.body.i.preheader

while.cond81.i:                                   ; preds = %entry, %if.end99.i
  %i80.0.i = phi i32 [ %inc100.i, %if.end99.i ], [ 0, %entry ]
  %coeff_idx.6.i = phi i32 [ %coeff_idx.7.i, %if.end99.i ], [ -1, %entry ]
  %arrayidx83.i = getelementptr inbounds i16, i16* %l, i32 %i80.0.i
  %11 = load i16, i16* %arrayidx83.i, align 2, !tbaa !37
  %tobool84.i = icmp eq i16 %11, 0
  br i1 %tobool84.i, label %if.else97.i, label %if.then85.i

if.then85.i:                                      ; preds = %while.cond81.i
  %inc87.i = add nsw i32 %coeff_idx.6.i, 1
  %arrayidx88.i = getelementptr inbounds [64 x i16], [64 x i16]* %coeffs.i, i32 0, i32 %inc87.i
  store i16 %11, i16* %arrayidx88.i, align 2, !tbaa !37
  %add89.i = add nuw nsw i32 %i80.0.i, %conv.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add89.i, i32 1) #7
  %cmp90.i = icmp eq i32 %i80.0.i, %call.i
  %add93.i = add nuw nsw i32 %i80.0.i, %conv2.i
  br i1 %cmp90.i, label %if.then92.i, label %if.end99.i

if.then92.i:                                      ; preds = %if.then85.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add93.i, i32 1) #7
  br label %do.body.i.preheader

if.else97.i:                                      ; preds = %while.cond81.i
  %add98.i = add nuw nsw i32 %i80.0.i, %conv.i
  br label %if.end99.i

if.end99.i:                                       ; preds = %if.then85.i, %if.else97.i
  %add98.i.sink = phi i32 [ %add98.i, %if.else97.i ], [ %add93.i, %if.then85.i ]
  %coeff_idx.7.i = phi i32 [ %coeff_idx.6.i, %if.else97.i ], [ %inc87.i, %if.then85.i ]
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add98.i.sink, i32 0) #7
  %inc100.i = add nuw nsw i32 %i80.0.i, 1
  %cmp101.i = icmp eq i32 %inc100.i, %conv38.i
  br i1 %cmp101.i, label %if.then103.i, label %while.cond81.i

if.then103.i:                                     ; preds = %if.end99.i
  %arrayidx104.i = getelementptr inbounds i16, i16* %l, i32 %conv38.i
  %12 = load i16, i16* %arrayidx104.i, align 2, !tbaa !37
  %inc105.i = add nsw i32 %coeff_idx.7.i, 1
  %arrayidx106.i = getelementptr inbounds [64 x i16], [64 x i16]* %coeffs.i, i32 0, i32 %inc105.i
  store i16 %12, i16* %arrayidx106.i, align 2, !tbaa !37
  br label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %if.then103.i, %if.then92.i, %if.then73.i, %if.then56.i
  %coeff_idx.11.i.ph = phi i32 [ %inc49.i, %if.then56.i ], [ %inc75.i, %if.then73.i ], [ %inc87.i, %if.then92.i ], [ %inc105.i, %if.then103.i ]
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.preheader, %if.end140.i
  %node_ctx.0.i = phi i32 [ %node_ctx.1.i, %if.end140.i ], [ 0, %do.body.i.preheader ]
  %coeff_idx.11.i = phi i32 [ %dec141.i, %if.end140.i ], [ %coeff_idx.11.i.ph, %do.body.i.preheader ]
  %arrayidx111.i = getelementptr inbounds [64 x i16], [64 x i16]* %coeffs.i, i32 0, i32 %coeff_idx.11.i
  %13 = load i16, i16* %arrayidx111.i, align 2, !tbaa !37
  %conv112.i = sext i16 %13 to i32
  %14 = icmp slt i32 %conv112.i, 0
  %neg.i = sub nsw i32 0, %conv112.i
  %15 = select i1 %14, i32 %neg.i, i32 %conv112.i
  %shr.i = ashr i32 %conv112.i, 31
  %arrayidx114.i = getelementptr inbounds [8 x i8], [8 x i8]* @coeff_abs_level1_ctx, i32 0, i32 %node_ctx.0.i
  %16 = load i8, i8* %arrayidx114.i, align 1, !tbaa !40
  %conv115.i = zext i8 %16 to i32
  %add116.i = add nuw nsw i32 %conv115.i, %conv4.i
  %cmp117.i = icmp sgt i32 %15, 1
  br i1 %cmp117.i, label %if.then119.i, label %if.else137.i

if.then119.i:                                     ; preds = %do.body.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add116.i, i32 1) #7
  %arrayidx120.i = getelementptr inbounds [8 x i8], [8 x i8]* @coeff_abs_levelgt1_ctx, i32 0, i32 %node_ctx.0.i
  %17 = load i8, i8* %arrayidx120.i, align 1, !tbaa !40
  %conv121.i = zext i8 %17 to i32
  %add122.i = add nuw nsw i32 %conv121.i, %conv4.i
  %cmp124.i = icmp slt i32 %15, 15
  %.op.i = add nsw i32 %15, -2
  %spec.select.i = select i1 %cmp124.i, i32 %.op.i, i32 13
  %cmp127242.i = icmp sgt i32 %spec.select.i, 0
  br i1 %cmp127242.i, label %for.body.i, label %for.cond.cleanup.i

for.cond.cleanup.i:                               ; preds = %for.body.i, %if.then119.i
  br i1 %cmp124.i, label %if.then131.i, label %if.else132.i

for.body.i:                                       ; preds = %if.then119.i, %for.body.i
  %i123.0243.i = phi i32 [ %dec.i, %for.body.i ], [ %spec.select.i, %if.then119.i ]
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add122.i, i32 1) #7
  %dec.i = add nsw i32 %i123.0243.i, -1
  %cmp127.i = icmp sgt i32 %i123.0243.i, 1
  br i1 %cmp127.i, label %for.body.i, label %for.cond.cleanup.i

if.then131.i:                                     ; preds = %for.cond.cleanup.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add122.i, i32 0) #7
  br label %if.end140.i

if.else132.i:                                     ; preds = %for.cond.cleanup.i
  %sub133.i = add nsw i32 %15, -15
  tail call void @x264_8_cabac_encode_ue_bypass(%struct.x264_cabac_t* %cb, i32 0, i32 %sub133.i) #7
  br label %if.end140.i

if.else137.i:                                     ; preds = %do.body.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add116.i, i32 0) #7
  br label %if.end140.i

if.end140.i:                                      ; preds = %if.then131.i, %if.else132.i, %if.else137.i
  %.sink = phi i32 [ 0, %if.else137.i ], [ 1, %if.else132.i ], [ 1, %if.then131.i ]
  %arrayidx138.i = getelementptr inbounds [2 x [8 x i8]], [2 x [8 x i8]]* @coeff_abs_level_transition, i32 0, i32 %.sink, i32 %node_ctx.0.i
  %node_ctx.1.in.i = load i8, i8* %arrayidx138.i, align 1, !tbaa !40
  %node_ctx.1.i = zext i8 %node_ctx.1.in.i to i32
  tail call void @x264_8_cabac_encode_bypass_c(%struct.x264_cabac_t* %cb, i32 %shr.i) #7
  %dec141.i = add nsw i32 %coeff_idx.11.i, -1
  %cmp142.i = icmp sgt i32 %coeff_idx.11.i, 0
  br i1 %cmp142.i, label %do.body.i, label %cabac_block_residual_internal.exit

cabac_block_residual_internal.exit:               ; preds = %if.end140.i
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %4) #7
  ret void
}

; Function Attrs: nounwind
define hidden void @x264_8_macroblock_write_cabac(%struct.x264_t* %h, %struct.x264_cabac_t* %cb) local_unnamed_addr #0 {
entry:
  %i_chroma_format_idc = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 22
  %0 = load i32, i32* %i_chroma_format_idc, align 8, !tbaa !41
  switch i32 %0, label %if.then4 [
    i32 3, label %if.then
    i32 0, label %if.else5
  ]

if.then:                                          ; preds = %entry
  %i_type.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 76
  %1 = load i32, i32* %i_type.i, align 16, !tbaa !45
  %p.i.i = getelementptr inbounds %struct.x264_cabac_t, %struct.x264_cabac_t* %cb, i32 0, i32 5
  %2 = bitcast i8** %p.i.i to i32*
  %3 = load i32, i32* %2, align 4, !tbaa !46
  %p_start.i.i = getelementptr inbounds %struct.x264_cabac_t, %struct.x264_cabac_t* %cb, i32 0, i32 4
  %4 = bitcast i8** %p_start.i.i to i32*
  %5 = load i32, i32* %4, align 16, !tbaa !47
  %sub.ptr.sub.i.i = sub i32 %3, %5
  %i_bytes_outstanding.i.i = getelementptr inbounds %struct.x264_cabac_t, %struct.x264_cabac_t* %cb, i32 0, i32 3
  %6 = load i32, i32* %i_bytes_outstanding.i.i, align 4, !tbaa !48
  %add.i.i = add nsw i32 %sub.ptr.sub.i.i, %6
  %i_queue.i.i = getelementptr inbounds %struct.x264_cabac_t, %struct.x264_cabac_t* %cb, i32 0, i32 2
  %7 = load i32, i32* %i_queue.i.i, align 8, !tbaa !49
  %i_type1.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 51, i32 2
  %8 = load i32, i32* %i_type1.i, align 8, !tbaa !36
  switch i32 %8, label %if.else6.i [
    i32 0, label %if.then.i
    i32 1, label %if.then5.i
  ]

if.then.i:                                        ; preds = %if.then
  switch i32 %1, label %if.else81.i.i [
    i32 4, label %if.then.i.i
    i32 5, label %if.then58.i.i
  ]

if.then.i.i:                                      ; preds = %if.then.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 14, i32 0) #7
  %i_partition.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 77
  %9 = load i32, i32* %i_partition.i.i, align 4, !tbaa !50
  %cmp1.i.i = icmp eq i32 %9, 16
  br i1 %cmp1.i.i, label %if.then2.i.i, label %if.else.i.i

if.then2.i.i:                                     ; preds = %if.then.i.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 15, i32 0) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 16, i32 0) #7
  %arrayidx.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 17, i32 0
  %10 = load i32, i32* %arrayidx.i.i, align 4, !tbaa !51
  %cmp4.i.i = icmp sgt i32 %10, 1
  br i1 %cmp4.i.i, label %if.then5.i.i, label %do.body.i.i

if.then5.i.i:                                     ; preds = %if.then2.i.i
  tail call fastcc void @cabac_ref_p(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0) #7
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.then5.i.i, %if.then2.i.i
  %call.i.i = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 0, i32 4) #7
  %11 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 0
  %conv7.i.i.i = zext i16 %call.i.i to i32
  %mul8.i.i.i.i = mul nuw i32 %conv7.i.i.i, 65537
  %i67.i.i.i.i = bitcast i8* %11 to i32*
  store i32 %mul8.i.i.i.i, i32* %i67.i.i.i.i, align 4, !tbaa !40
  %add.ptr70.i.i.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 4
  %i71.i.i.i.i = bitcast i8* %add.ptr70.i.i.i.i to i32*
  store i32 %mul8.i.i.i.i, i32* %i71.i.i.i.i, align 4, !tbaa !40
  %add.ptr77.i.i.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 16
  %i79.i.i.i.i = bitcast i8* %add.ptr77.i.i.i.i to i32*
  store i32 %mul8.i.i.i.i, i32* %i79.i.i.i.i, align 4, !tbaa !40
  %add.ptr82.i.i.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 20
  %i83.i.i.i.i = bitcast i8* %add.ptr82.i.i.i.i to i32*
  store i32 %mul8.i.i.i.i, i32* %i83.i.i.i.i, align 4, !tbaa !40
  %add.ptr89.i.i.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 32
  %i91.i.i.i.i = bitcast i8* %add.ptr89.i.i.i.i to i32*
  store i32 %mul8.i.i.i.i, i32* %i91.i.i.i.i, align 4, !tbaa !40
  %add.ptr94.i.i.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 36
  %i95.i.i.i.i = bitcast i8* %add.ptr94.i.i.i.i to i32*
  store i32 %mul8.i.i.i.i, i32* %i95.i.i.i.i, align 4, !tbaa !40
  %add.ptr97.i.i.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 48
  %i99.i.i.i.i = bitcast i8* %add.ptr97.i.i.i.i to i32*
  store i32 %mul8.i.i.i.i, i32* %i99.i.i.i.i, align 4, !tbaa !40
  %add.ptr102.i.i.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 52
  %i103.i.i.i.i = bitcast i8* %add.ptr102.i.i.i.i to i32*
  store i32 %mul8.i.i.i.i, i32* %i103.i.i.i.i, align 4, !tbaa !40
  br label %if.end7.i

if.else.i.i:                                      ; preds = %if.then.i.i
  %cmp9.i.i = icmp eq i32 %9, 14
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 15, i32 1) #7
  br i1 %cmp9.i.i, label %if.then11.i.i, label %if.else32.i.i

if.then11.i.i:                                    ; preds = %if.else.i.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 17, i32 1) #7
  %arrayidx15.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 17, i32 0
  %12 = load i32, i32* %arrayidx15.i.i, align 4, !tbaa !51
  %cmp16.i.i = icmp sgt i32 %12, 1
  br i1 %cmp16.i.i, label %if.then18.i.i, label %do.body20.i.i

if.then18.i.i:                                    ; preds = %if.then11.i.i
  tail call fastcc void @cabac_ref_p(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0) #7
  tail call fastcc void @cabac_ref_p(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 8) #7
  br label %do.body20.i.i

do.body20.i.i:                                    ; preds = %if.then18.i.i, %if.then11.i.i
  %call22.i.i = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 0, i32 4) #7
  %13 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 0
  %conv7.i148.i.i = zext i16 %call22.i.i to i32
  %mul8.i.i149.i.i = mul nuw i32 %conv7.i148.i.i, 65537
  %i67.i.i150.i.i = bitcast i8* %13 to i32*
  store i32 %mul8.i.i149.i.i, i32* %i67.i.i150.i.i, align 4, !tbaa !40
  %add.ptr70.i.i151.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 4
  %i71.i.i152.i.i = bitcast i8* %add.ptr70.i.i151.i.i to i32*
  store i32 %mul8.i.i149.i.i, i32* %i71.i.i152.i.i, align 4, !tbaa !40
  %add.ptr77.i.i153.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 16
  %i79.i.i154.i.i = bitcast i8* %add.ptr77.i.i153.i.i to i32*
  store i32 %mul8.i.i149.i.i, i32* %i79.i.i154.i.i, align 4, !tbaa !40
  %add.ptr82.i.i155.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 20
  %i83.i.i156.i.i = bitcast i8* %add.ptr82.i.i155.i.i to i32*
  store i32 %mul8.i.i149.i.i, i32* %i83.i.i156.i.i, align 4, !tbaa !40
  %call28.i.i = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 8, i32 4) #7
  %14 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 28, i32 0
  %conv7.i157.i.i = zext i16 %call28.i.i to i32
  %mul8.i.i158.i.i = mul nuw i32 %conv7.i157.i.i, 65537
  %i67.i.i159.i.i = bitcast i8* %14 to i32*
  store i32 %mul8.i.i158.i.i, i32* %i67.i.i159.i.i, align 4, !tbaa !40
  %add.ptr70.i.i160.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 28, i32 4
  %i71.i.i161.i.i = bitcast i8* %add.ptr70.i.i160.i.i to i32*
  store i32 %mul8.i.i158.i.i, i32* %i71.i.i161.i.i, align 4, !tbaa !40
  %add.ptr77.i.i162.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 28, i32 16
  %i79.i.i163.i.i = bitcast i8* %add.ptr77.i.i162.i.i to i32*
  store i32 %mul8.i.i158.i.i, i32* %i79.i.i163.i.i, align 4, !tbaa !40
  %add.ptr82.i.i164.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 28, i32 20
  %i83.i.i165.i.i = bitcast i8* %add.ptr82.i.i164.i.i to i32*
  store i32 %mul8.i.i158.i.i, i32* %i83.i.i165.i.i, align 4, !tbaa !40
  br label %if.end7.i

if.else32.i.i:                                    ; preds = %if.else.i.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 17, i32 0) #7
  %arrayidx36.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 17, i32 0
  %15 = load i32, i32* %arrayidx36.i.i, align 4, !tbaa !51
  %cmp37.i.i = icmp sgt i32 %15, 1
  br i1 %cmp37.i.i, label %if.then39.i.i, label %do.body41.i.i

if.then39.i.i:                                    ; preds = %if.else32.i.i
  tail call fastcc void @cabac_ref_p(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0) #7
  tail call fastcc void @cabac_ref_p(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 4) #7
  br label %do.body41.i.i

do.body41.i.i:                                    ; preds = %if.then39.i.i, %if.else32.i.i
  %call43.i.i = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 0, i32 2) #7
  %16 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 0
  %conv7.i166.i.i = zext i16 %call43.i.i to i32
  %mul8.i.i167.i.i = mul nuw i32 %conv7.i166.i.i, 65537
  %i42.i.i.i.i = bitcast i8* %16 to i32*
  store i32 %mul8.i.i167.i.i, i32* %i42.i.i.i.i, align 4, !tbaa !40
  %add.ptr48.i.i.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 16
  %i49.i.i.i.i = bitcast i8* %add.ptr48.i.i.i.i to i32*
  store i32 %mul8.i.i167.i.i, i32* %i49.i.i.i.i, align 4, !tbaa !40
  %add.ptr55.i.i.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 32
  %i56.i.i.i.i = bitcast i8* %add.ptr55.i.i.i.i to i32*
  store i32 %mul8.i.i167.i.i, i32* %i56.i.i.i.i, align 4, !tbaa !40
  %add.ptr58.i.i.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 48
  %i59.i.i.i.i = bitcast i8* %add.ptr58.i.i.i.i to i32*
  store i32 %mul8.i.i167.i.i, i32* %i59.i.i.i.i, align 4, !tbaa !40
  %call49.i.i = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 4, i32 2) #7
  %17 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 14, i32 0
  %conv7.i168.i.i = zext i16 %call49.i.i to i32
  %mul8.i.i169.i.i = mul nuw i32 %conv7.i168.i.i, 65537
  %i42.i.i170.i.i = bitcast i8* %17 to i32*
  store i32 %mul8.i.i169.i.i, i32* %i42.i.i170.i.i, align 4, !tbaa !40
  %add.ptr48.i.i171.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 14, i32 16
  %i49.i.i172.i.i = bitcast i8* %add.ptr48.i.i171.i.i to i32*
  store i32 %mul8.i.i169.i.i, i32* %i49.i.i172.i.i, align 4, !tbaa !40
  %add.ptr55.i.i173.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 14, i32 32
  %i56.i.i174.i.i = bitcast i8* %add.ptr55.i.i173.i.i to i32*
  store i32 %mul8.i.i169.i.i, i32* %i56.i.i174.i.i, align 4, !tbaa !40
  %add.ptr58.i.i175.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 14, i32 48
  %i59.i.i176.i.i = bitcast i8* %add.ptr58.i.i175.i.i to i32*
  store i32 %mul8.i.i169.i.i, i32* %i59.i.i176.i.i, align 4, !tbaa !40
  br label %if.end7.i

if.then58.i.i:                                    ; preds = %if.then.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 14, i32 0) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 15, i32 0) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 16, i32 1) #7
  %arrayidx62.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 78, i32 0
  %18 = load i8, i8* %arrayidx62.i.i, align 1, !tbaa !40
  %cmp.i.i.i = icmp eq i8 %18, 3
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.then58.i.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 21, i32 1) #7
  br label %cabac_subpartition_p.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then58.i.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 21, i32 0) #7
  %cmp1.i.i.i = icmp eq i8 %18, 1
  br i1 %cmp1.i.i.i, label %if.then2.i.i.i, label %if.else.i.i.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 22, i32 0) #7
  br label %cabac_subpartition_p.exit.i.i

if.else.i.i.i:                                    ; preds = %if.end.i.i.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 22, i32 1) #7
  %cmp3.i.i.i = icmp eq i8 %18, 2
  %conv.i177.i.i = zext i1 %cmp3.i.i.i to i32
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 23, i32 %conv.i177.i.i) #7
  br label %cabac_subpartition_p.exit.i.i

cabac_subpartition_p.exit.i.i:                    ; preds = %if.else.i.i.i, %if.then2.i.i.i, %if.then.i.i.i
  %arrayidx62.1.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 78, i32 1
  %19 = load i8, i8* %arrayidx62.1.i.i, align 1, !tbaa !40
  %cmp.i.1.i.i = icmp eq i8 %19, 3
  br i1 %cmp.i.1.i.i, label %if.then.i.1.i.i, label %if.end.i.1.i.i

if.then70.i.i:                                    ; preds = %cabac_subpartition_p.exit.3.i.i
  tail call fastcc void @cabac_ref_p(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0) #7
  tail call fastcc void @cabac_ref_p(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 4) #7
  tail call fastcc void @cabac_ref_p(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 8) #7
  tail call fastcc void @cabac_ref_p(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 12) #7
  br label %for.body77.i.i.preheader

for.body77.i.i.preheader:                         ; preds = %cabac_subpartition_p.exit.3.i.i, %if.then70.i.i
  br label %for.body77.i.i

for.body77.i.i:                                   ; preds = %for.body77.i.i.preheader, %cabac_8x8_mvd.exit.i.i
  %i72.0179.i.i = phi i32 [ %inc79.i.i, %cabac_8x8_mvd.exit.i.i ], [ 0, %for.body77.i.i.preheader ]
  %arrayidx.i.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 78, i32 %i72.0179.i.i
  %20 = load i8, i8* %arrayidx.i.i.i, align 1, !tbaa !40
  switch i8 %20, label %sw.default.i.i.i [
    i8 3, label %do.body.i.i.i
    i8 1, label %do.body8.i.i.i
    i8 2, label %do.body36.i.i.i
    i8 0, label %do.body65.i.i.i
  ]

do.body.i.i.i:                                    ; preds = %for.body77.i.i
  %mul.i.i.i = shl nuw nsw i32 %i72.0179.i.i, 2
  %call.i.i.i = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* %cb, i32 0, i32 %mul.i.i.i, i32 2) #7
  %arrayidx2.i.i.i = getelementptr inbounds [16 x i8], [16 x i8]* @block_idx_x, i32 0, i32 %mul.i.i.i
  %21 = load i8, i8* %arrayidx2.i.i.i, align 1, !tbaa !40
  %conv3.i.i.i = zext i8 %21 to i32
  %arrayidx5.i.i.i = getelementptr inbounds [16 x i8], [16 x i8]* @block_idx_y, i32 0, i32 %mul.i.i.i
  %22 = load i8, i8* %arrayidx5.i.i.i, align 1, !tbaa !40
  %conv6.i.i.i = zext i8 %22 to i32
  %add.i.i178.i.i = add nuw nsw i32 %conv3.i.i.i, 12
  %mul.i.i.i.i = shl nuw nsw i32 %conv6.i.i.i, 3
  %add2.i.i.i.i = add nuw nsw i32 %add.i.i178.i.i, %mul.i.i.i.i
  %23 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 %add2.i.i.i.i, i32 0
  %conv7.i.i.i.i = zext i16 %call.i.i.i to i32
  %mul8.i.i.i.i.i = mul nuw i32 %conv7.i.i.i.i, 65537
  %i42.i.i.i.i.i = bitcast i8* %23 to i32*
  store i32 %mul8.i.i.i.i.i, i32* %i42.i.i.i.i.i, align 4, !tbaa !40
  %add.ptr48.i.i.i.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 %add2.i.i.i.i, i32 16
  %i49.i.i.i.i.i = bitcast i8* %add.ptr48.i.i.i.i.i to i32*
  store i32 %mul8.i.i.i.i.i, i32* %i49.i.i.i.i.i, align 4, !tbaa !40
  br label %cabac_8x8_mvd.exit.i.i

do.body8.i.i.i:                                   ; preds = %for.body77.i.i
  %mul10.i.i.i = shl nuw nsw i32 %i72.0179.i.i, 2
  %call11.i.i.i = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* %cb, i32 0, i32 %mul10.i.i.i, i32 2) #7
  %arrayidx14.i.i.i = getelementptr inbounds [16 x i8], [16 x i8]* @block_idx_x, i32 0, i32 %mul10.i.i.i
  %24 = load i8, i8* %arrayidx14.i.i.i, align 1, !tbaa !40
  %conv15.i.i.i = zext i8 %24 to i32
  %arrayidx18.i.i.i = getelementptr inbounds [16 x i8], [16 x i8]* @block_idx_y, i32 0, i32 %mul10.i.i.i
  %25 = load i8, i8* %arrayidx18.i.i.i, align 1, !tbaa !40
  %conv19.i.i.i = zext i8 %25 to i32
  %add.i188.i.i.i = add nuw nsw i32 %conv15.i.i.i, 12
  %mul.i189.i.i.i = shl nuw nsw i32 %conv19.i.i.i, 3
  %add2.i190.i.i.i = add nuw nsw i32 %add.i188.i.i.i, %mul.i189.i.i.i
  %26 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 %add2.i190.i.i.i, i32 0
  %conv7.i191.i.i.i = zext i16 %call11.i.i.i to i32
  %mul8.i.i192.i.i.i = mul nuw i32 %conv7.i191.i.i.i, 65537
  %i42.i.i193.i.i.i = bitcast i8* %26 to i32*
  store i32 %mul8.i.i192.i.i.i, i32* %i42.i.i193.i.i.i, align 4, !tbaa !40
  %add24.i.i.i = or i32 %mul10.i.i.i, 2
  %call25.i.i.i = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* %cb, i32 0, i32 %add24.i.i.i, i32 2) #7
  %arrayidx28.i.i.i = getelementptr inbounds [16 x i8], [16 x i8]* @block_idx_x, i32 0, i32 %add24.i.i.i
  %27 = load i8, i8* %arrayidx28.i.i.i, align 1, !tbaa !40
  %conv29.i.i.i = zext i8 %27 to i32
  %arrayidx32.i.i.i = getelementptr inbounds [16 x i8], [16 x i8]* @block_idx_y, i32 0, i32 %add24.i.i.i
  %28 = load i8, i8* %arrayidx32.i.i.i, align 1, !tbaa !40
  %conv33.i.i.i = zext i8 %28 to i32
  %add.i200.i.i.i = add nuw nsw i32 %conv29.i.i.i, 12
  %mul.i201.i.i.i = shl nuw nsw i32 %conv33.i.i.i, 3
  %add2.i202.i.i.i = add nuw nsw i32 %add.i200.i.i.i, %mul.i201.i.i.i
  %29 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 %add2.i202.i.i.i, i32 0
  %conv7.i203.i.i.i = zext i16 %call25.i.i.i to i32
  %mul8.i.i204.i.i.i = mul nuw i32 %conv7.i203.i.i.i, 65537
  %i42.i.i205.i.i.i = bitcast i8* %29 to i32*
  store i32 %mul8.i.i204.i.i.i, i32* %i42.i.i205.i.i.i, align 4, !tbaa !40
  br label %cabac_8x8_mvd.exit.i.i

do.body36.i.i.i:                                  ; preds = %for.body77.i.i
  %mul38.i.i.i = shl nuw nsw i32 %i72.0179.i.i, 2
  %call40.i.i.i = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* %cb, i32 0, i32 %mul38.i.i.i, i32 1) #7
  %arrayidx43.i.i.i = getelementptr inbounds [16 x i8], [16 x i8]* @block_idx_x, i32 0, i32 %mul38.i.i.i
  %30 = load i8, i8* %arrayidx43.i.i.i, align 1, !tbaa !40
  %conv44.i.i.i = zext i8 %30 to i32
  %arrayidx47.i.i.i = getelementptr inbounds [16 x i8], [16 x i8]* @block_idx_y, i32 0, i32 %mul38.i.i.i
  %31 = load i8, i8* %arrayidx47.i.i.i, align 1, !tbaa !40
  %conv48.i.i.i = zext i8 %31 to i32
  %add.i212.i.i.i = add nuw nsw i32 %conv44.i.i.i, 12
  %mul.i213.i.i.i = shl nuw nsw i32 %conv48.i.i.i, 3
  %add2.i214.i.i.i = add nuw nsw i32 %add.i212.i.i.i, %mul.i213.i.i.i
  %32 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 %add2.i214.i.i.i, i32 0
  %i.i.i217.i.i.i = bitcast i8* %32 to i16*
  store i16 %call40.i.i.i, i16* %i.i.i217.i.i.i, align 2, !tbaa !40
  %add.ptr25.i.i.i.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 %add2.i214.i.i.i, i32 16
  %i26.i.i.i.i.i = bitcast i8* %add.ptr25.i.i.i.i.i to i16*
  store i16 %call40.i.i.i, i16* %i26.i.i.i.i.i, align 2, !tbaa !40
  %add53.i.i.i = or i32 %mul38.i.i.i, 1
  %call54.i.i.i = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* %cb, i32 0, i32 %add53.i.i.i, i32 1) #7
  %arrayidx57.i.i.i = getelementptr inbounds [16 x i8], [16 x i8]* @block_idx_x, i32 0, i32 %add53.i.i.i
  %33 = load i8, i8* %arrayidx57.i.i.i, align 1, !tbaa !40
  %conv58.i.i.i = zext i8 %33 to i32
  %arrayidx61.i.i.i = getelementptr inbounds [16 x i8], [16 x i8]* @block_idx_y, i32 0, i32 %add53.i.i.i
  %34 = load i8, i8* %arrayidx61.i.i.i, align 1, !tbaa !40
  %conv62.i.i.i = zext i8 %34 to i32
  %add.i224.i.i.i = add nuw nsw i32 %conv58.i.i.i, 12
  %mul.i225.i.i.i = shl nuw nsw i32 %conv62.i.i.i, 3
  %add2.i226.i.i.i = add nuw nsw i32 %add.i224.i.i.i, %mul.i225.i.i.i
  %35 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 %add2.i226.i.i.i, i32 0
  %i.i.i229.i.i.i = bitcast i8* %35 to i16*
  store i16 %call54.i.i.i, i16* %i.i.i229.i.i.i, align 2, !tbaa !40
  %add.ptr25.i.i230.i.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 %add2.i226.i.i.i, i32 16
  %i26.i.i231.i.i.i = bitcast i8* %add.ptr25.i.i230.i.i.i to i16*
  store i16 %call54.i.i.i, i16* %i26.i.i231.i.i.i, align 2, !tbaa !40
  br label %cabac_8x8_mvd.exit.i.i

do.body65.i.i.i:                                  ; preds = %for.body77.i.i
  %mul67.i.i.i = shl nuw nsw i32 %i72.0179.i.i, 2
  %call69.i.i.i = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* %cb, i32 0, i32 %mul67.i.i.i, i32 1) #7
  %arrayidx72.i.i.i = getelementptr inbounds [16 x i8], [16 x i8]* @block_idx_x, i32 0, i32 %mul67.i.i.i
  %36 = load i8, i8* %arrayidx72.i.i.i, align 1, !tbaa !40
  %conv73.i.i.i = zext i8 %36 to i32
  %arrayidx76.i.i.i = getelementptr inbounds [16 x i8], [16 x i8]* @block_idx_y, i32 0, i32 %mul67.i.i.i
  %37 = load i8, i8* %arrayidx76.i.i.i, align 1, !tbaa !40
  %conv77.i.i.i = zext i8 %37 to i32
  %add.i218.i.i.i = add nuw nsw i32 %conv73.i.i.i, 12
  %mul.i219.i.i.i = shl nuw nsw i32 %conv77.i.i.i, 3
  %add2.i220.i.i.i = add nuw nsw i32 %add.i218.i.i.i, %mul.i219.i.i.i
  %38 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 %add2.i220.i.i.i, i32 0
  %i.i.i223.i.i.i = bitcast i8* %38 to i16*
  store i16 %call69.i.i.i, i16* %i.i.i223.i.i.i, align 2, !tbaa !40
  %add82.i.i.i = or i32 %mul67.i.i.i, 1
  %call83.i.i.i = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* %cb, i32 0, i32 %add82.i.i.i, i32 1) #7
  %arrayidx86.i.i.i = getelementptr inbounds [16 x i8], [16 x i8]* @block_idx_x, i32 0, i32 %add82.i.i.i
  %39 = load i8, i8* %arrayidx86.i.i.i, align 1, !tbaa !40
  %conv87.i.i.i = zext i8 %39 to i32
  %arrayidx90.i.i.i = getelementptr inbounds [16 x i8], [16 x i8]* @block_idx_y, i32 0, i32 %add82.i.i.i
  %40 = load i8, i8* %arrayidx90.i.i.i, align 1, !tbaa !40
  %conv91.i.i.i = zext i8 %40 to i32
  %add.i206.i.i.i = add nuw nsw i32 %conv87.i.i.i, 12
  %mul.i207.i.i.i = shl nuw nsw i32 %conv91.i.i.i, 3
  %add2.i208.i.i.i = add nuw nsw i32 %add.i206.i.i.i, %mul.i207.i.i.i
  %41 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 %add2.i208.i.i.i, i32 0
  %i.i.i211.i.i.i = bitcast i8* %41 to i16*
  store i16 %call83.i.i.i, i16* %i.i.i211.i.i.i, align 2, !tbaa !40
  %add96.i.i.i = or i32 %mul67.i.i.i, 2
  %call97.i.i.i = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* %cb, i32 0, i32 %add96.i.i.i, i32 1) #7
  %arrayidx100.i.i.i = getelementptr inbounds [16 x i8], [16 x i8]* @block_idx_x, i32 0, i32 %add96.i.i.i
  %42 = load i8, i8* %arrayidx100.i.i.i, align 1, !tbaa !40
  %conv101.i.i.i = zext i8 %42 to i32
  %arrayidx104.i.i.i = getelementptr inbounds [16 x i8], [16 x i8]* @block_idx_y, i32 0, i32 %add96.i.i.i
  %43 = load i8, i8* %arrayidx104.i.i.i, align 1, !tbaa !40
  %conv105.i.i.i = zext i8 %43 to i32
  %add.i194.i.i.i = add nuw nsw i32 %conv101.i.i.i, 12
  %mul.i195.i.i.i = shl nuw nsw i32 %conv105.i.i.i, 3
  %add2.i196.i.i.i = add nuw nsw i32 %add.i194.i.i.i, %mul.i195.i.i.i
  %44 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 %add2.i196.i.i.i, i32 0
  %i.i.i199.i.i.i = bitcast i8* %44 to i16*
  store i16 %call97.i.i.i, i16* %i.i.i199.i.i.i, align 2, !tbaa !40
  %add110.i.i.i = or i32 %mul67.i.i.i, 3
  %call111.i.i.i = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* %cb, i32 0, i32 %add110.i.i.i, i32 1) #7
  %arrayidx114.i.i.i = getelementptr inbounds [16 x i8], [16 x i8]* @block_idx_x, i32 0, i32 %add110.i.i.i
  %45 = load i8, i8* %arrayidx114.i.i.i, align 1, !tbaa !40
  %conv115.i.i.i = zext i8 %45 to i32
  %arrayidx118.i.i.i = getelementptr inbounds [16 x i8], [16 x i8]* @block_idx_y, i32 0, i32 %add110.i.i.i
  %46 = load i8, i8* %arrayidx118.i.i.i, align 1, !tbaa !40
  %conv119.i.i.i = zext i8 %46 to i32
  %add.i183.i.i.i = add nuw nsw i32 %conv115.i.i.i, 12
  %mul.i184.i.i.i = shl nuw nsw i32 %conv119.i.i.i, 3
  %add2.i185.i.i.i = add nuw nsw i32 %add.i183.i.i.i, %mul.i184.i.i.i
  %47 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 %add2.i185.i.i.i, i32 0
  %i.i.i.i.i.i = bitcast i8* %47 to i16*
  store i16 %call111.i.i.i, i16* %i.i.i.i.i.i, align 2, !tbaa !40
  br label %cabac_8x8_mvd.exit.i.i

sw.default.i.i.i:                                 ; preds = %for.body77.i.i
  tail call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i32 377, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.cabac_8x8_mvd, i32 0, i32 0)) #8
  unreachable

cabac_8x8_mvd.exit.i.i:                           ; preds = %do.body65.i.i.i, %do.body36.i.i.i, %do.body8.i.i.i, %do.body.i.i.i
  %inc79.i.i = add nuw nsw i32 %i72.0179.i.i, 1
  %exitcond.i.i = icmp eq i32 %inc79.i.i, 4
  br i1 %exitcond.i.i, label %if.end7.i, label %for.body77.i.i

if.else81.i.i:                                    ; preds = %if.then.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 14, i32 1) #7
  tail call fastcc void @cabac_mb_type_intra(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 %1, i32 17, i32 18, i32 19, i32 19, i32 20, i32 20) #7
  %48 = and i32 %1, -2
  %switch = icmp eq i32 %48, 2
  br i1 %switch, label %if.end7.i, label %if.then26.i.i.i

if.then26.i.i.i:                                  ; preds = %if.else81.i.i
  %b_transform_8x8_mode.i.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 53, i32 0, i32 15
  %49 = load i32, i32* %b_transform_8x8_mode.i.i.i, align 4, !tbaa !52
  %tobool27.i.i.i = icmp eq i32 %49, 0
  br i1 %tobool27.i.i.i, label %if.end29.i.i.i, label %if.then28.i.i.i

if.then28.i.i.i:                                  ; preds = %if.then26.i.i.i
  %h.idx.i.i.i = getelementptr %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 79
  %h.idx.val.i.i.i = load i32, i32* %h.idx.i.i.i, align 4, !tbaa !54
  %h.idx84.i.i.i = getelementptr %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 10
  %h.idx84.val.i.i.i = load i32, i32* %h.idx84.i.i.i, align 8, !tbaa !55
  %add.i.i.i.i = add nsw i32 %h.idx84.val.i.i.i, 399
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 %add.i.i.i.i, i32 %h.idx.val.i.i.i) #7
  br label %if.end29.i.i.i

if.end29.i.i.i:                                   ; preds = %if.then28.i.i.i, %if.then26.i.i.i
  %b_transform_8x8.i.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 79
  %50 = load i32, i32* %b_transform_8x8.i.i.i, align 4, !tbaa !54
  %tobool31.i.i.i = icmp eq i32 %50, 0
  %cond.i.i.i = select i1 %tobool31.i.i.i, i32 1, i32 4
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %cabac_intra4x4_pred_mode.exit.i.i.i, %if.end29.i.i.i
  %i.091.i.i.i = phi i32 [ 0, %if.end29.i.i.i ], [ %add39.i.i.i, %cabac_intra4x4_pred_mode.exit.i.i.i ]
  %arrayidx.i.i.i.i = getelementptr inbounds [51 x i8], [51 x i8]* @x264_scan8, i32 0, i32 %i.091.i.i.i
  %51 = load i8, i8* %arrayidx.i.i.i.i, align 1, !tbaa !40
  %conv.i.i.i.i = zext i8 %51 to i32
  %sub.i.i.i.i = add nsw i32 %conv.i.i.i.i, -1
  %arrayidx1.i.i.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 0, i32 %sub.i.i.i.i
  %52 = load i8, i8* %arrayidx1.i.i.i.i, align 1, !tbaa !40
  %conv2.i.i.i.i = sext i8 %52 to i32
  %sub9.i.i.i.i = add nsw i32 %conv.i.i.i.i, -8
  %arrayidx10.i.i.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 0, i32 %sub9.i.i.i.i
  %53 = load i8, i8* %arrayidx10.i.i.i.i, align 1, !tbaa !40
  %conv11.i.i.i.i = sext i8 %53 to i32
  %add.i85.i.i.i = add nsw i32 %conv2.i.i.i.i, 1
  %arrayidx12.i.i.i.i = getelementptr inbounds [13 x i8], [13 x i8]* @x264_mb_pred_mode4x4_fix, i32 0, i32 %add.i85.i.i.i
  %54 = load i8, i8* %arrayidx12.i.i.i.i, align 1, !tbaa !40
  %add14.i.i.i.i = add nsw i32 %conv11.i.i.i.i, 1
  %arrayidx15.i.i.i.i = getelementptr inbounds [13 x i8], [13 x i8]* @x264_mb_pred_mode4x4_fix, i32 0, i32 %add14.i.i.i.i
  %55 = load i8, i8* %arrayidx15.i.i.i.i, align 1, !tbaa !40
  %cmp.i.i.i.i = icmp slt i8 %54, %55
  %..i.i.i.i = select i1 %cmp.i.i.i.i, i8 %54, i8 %55
  %cmp24.i.i.i.i = icmp slt i8 %..i.i.i.i, 0
  %narrow.i.i.i.i = select i1 %cmp24.i.i.i.i, i8 2, i8 %..i.i.i.i
  %arrayidx35.i.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 0, i32 %conv.i.i.i.i
  %56 = load i8, i8* %arrayidx35.i.i.i, align 1, !tbaa !40
  %conv.i.i.i = sext i8 %56 to i32
  %add36.i.i.i = add nsw i32 %conv.i.i.i, 1
  %arrayidx37.i.i.i = getelementptr inbounds [13 x i8], [13 x i8]* @x264_mb_pred_mode4x4_fix, i32 0, i32 %add36.i.i.i
  %57 = load i8, i8* %arrayidx37.i.i.i, align 1, !tbaa !40
  %cmp.i88.i.i.i = icmp eq i8 %narrow.i.i.i.i, %57
  br i1 %cmp.i88.i.i.i, label %if.then.i.i.i.i, label %if.else.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %for.body.i.i.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 68, i32 1) #7
  br label %cabac_intra4x4_pred_mode.exit.i.i.i

if.else.i.i.i.i:                                  ; preds = %for.body.i.i.i
  %conv38.i.i.i = sext i8 %57 to i32
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 68, i32 0) #7
  %cmp1.i.i.i.i = icmp sgt i8 %57, %narrow.i.i.i.i
  %dec.i.i.i.i = sext i1 %cmp1.i.i.i.i to i32
  %spec.select.i89.i.i.i = add nsw i32 %dec.i.i.i.i, %conv38.i.i.i
  %and.i90.i.i.i = and i32 %spec.select.i89.i.i.i, 1
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 69, i32 %and.i90.i.i.i) #7
  %shr15.i.i.i.i = lshr i32 %spec.select.i89.i.i.i, 1
  %and3.i.i.i.i = and i32 %shr15.i.i.i.i, 1
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 69, i32 %and3.i.i.i.i) #7
  %shr4.i.i.i.i = ashr i32 %spec.select.i89.i.i.i, 2
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 69, i32 %shr4.i.i.i.i) #7
  br label %cabac_intra4x4_pred_mode.exit.i.i.i

cabac_intra4x4_pred_mode.exit.i.i.i:              ; preds = %if.else.i.i.i.i, %if.then.i.i.i.i
  %add39.i.i.i = add nuw nsw i32 %i.091.i.i.i, %cond.i.i.i
  %cmp32.i.i.i = icmp ult i32 %add39.i.i.i, 16
  br i1 %cmp32.i.i.i, label %for.body.i.i.i, label %if.end7.i

if.end.i.1.i.i:                                   ; preds = %cabac_subpartition_p.exit.i.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 21, i32 0) #7
  %cmp1.i.1.i.i = icmp eq i8 %19, 1
  br i1 %cmp1.i.1.i.i, label %if.then2.i.1.i.i, label %if.else.i.1.i.i

if.else.i.1.i.i:                                  ; preds = %if.end.i.1.i.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 22, i32 1) #7
  %cmp3.i.1.i.i = icmp eq i8 %19, 2
  %conv.i177.1.i.i = zext i1 %cmp3.i.1.i.i to i32
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 23, i32 %conv.i177.1.i.i) #7
  br label %cabac_subpartition_p.exit.1.i.i

if.then2.i.1.i.i:                                 ; preds = %if.end.i.1.i.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 22, i32 0) #7
  br label %cabac_subpartition_p.exit.1.i.i

if.then.i.1.i.i:                                  ; preds = %cabac_subpartition_p.exit.i.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 21, i32 1) #7
  br label %cabac_subpartition_p.exit.1.i.i

cabac_subpartition_p.exit.1.i.i:                  ; preds = %if.then.i.1.i.i, %if.then2.i.1.i.i, %if.else.i.1.i.i
  %arrayidx62.2.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 78, i32 2
  %58 = load i8, i8* %arrayidx62.2.i.i, align 1, !tbaa !40
  %cmp.i.2.i.i = icmp eq i8 %58, 3
  br i1 %cmp.i.2.i.i, label %if.then.i.2.i.i, label %if.end.i.2.i.i

if.end.i.2.i.i:                                   ; preds = %cabac_subpartition_p.exit.1.i.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 21, i32 0) #7
  %cmp1.i.2.i.i = icmp eq i8 %58, 1
  br i1 %cmp1.i.2.i.i, label %if.then2.i.2.i.i, label %if.else.i.2.i.i

if.else.i.2.i.i:                                  ; preds = %if.end.i.2.i.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 22, i32 1) #7
  %cmp3.i.2.i.i = icmp eq i8 %58, 2
  %conv.i177.2.i.i = zext i1 %cmp3.i.2.i.i to i32
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 23, i32 %conv.i177.2.i.i) #7
  br label %cabac_subpartition_p.exit.2.i.i

if.then2.i.2.i.i:                                 ; preds = %if.end.i.2.i.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 22, i32 0) #7
  br label %cabac_subpartition_p.exit.2.i.i

if.then.i.2.i.i:                                  ; preds = %cabac_subpartition_p.exit.1.i.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 21, i32 1) #7
  br label %cabac_subpartition_p.exit.2.i.i

cabac_subpartition_p.exit.2.i.i:                  ; preds = %if.then.i.2.i.i, %if.then2.i.2.i.i, %if.else.i.2.i.i
  %arrayidx62.3.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 78, i32 3
  %59 = load i8, i8* %arrayidx62.3.i.i, align 1, !tbaa !40
  %cmp.i.3.i.i = icmp eq i8 %59, 3
  br i1 %cmp.i.3.i.i, label %if.then.i.3.i.i, label %if.end.i.3.i.i

if.end.i.3.i.i:                                   ; preds = %cabac_subpartition_p.exit.2.i.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 21, i32 0) #7
  %cmp1.i.3.i.i = icmp eq i8 %59, 1
  br i1 %cmp1.i.3.i.i, label %if.then2.i.3.i.i, label %if.else.i.3.i.i

if.else.i.3.i.i:                                  ; preds = %if.end.i.3.i.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 22, i32 1) #7
  %cmp3.i.3.i.i = icmp eq i8 %59, 2
  %conv.i177.3.i.i = zext i1 %cmp3.i.3.i.i to i32
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 23, i32 %conv.i177.3.i.i) #7
  br label %cabac_subpartition_p.exit.3.i.i

if.then2.i.3.i.i:                                 ; preds = %if.end.i.3.i.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 22, i32 0) #7
  br label %cabac_subpartition_p.exit.3.i.i

if.then.i.3.i.i:                                  ; preds = %cabac_subpartition_p.exit.2.i.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 21, i32 1) #7
  br label %cabac_subpartition_p.exit.3.i.i

cabac_subpartition_p.exit.3.i.i:                  ; preds = %if.then.i.3.i.i, %if.then2.i.3.i.i, %if.else.i.3.i.i
  %arrayidx67.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 17, i32 0
  %60 = load i32, i32* %arrayidx67.i.i, align 4, !tbaa !51
  %cmp68.i.i = icmp sgt i32 %60, 1
  br i1 %cmp68.i.i, label %if.then70.i.i, label %for.body77.i.i.preheader

if.then5.i:                                       ; preds = %if.then
  %i_neighbour.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 37
  %61 = load i32, i32* %i_neighbour.i.i, align 32, !tbaa !56
  %and.i.i = and i32 %61, 1
  %tobool.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.i, label %if.end.i.i, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %if.then5.i
  %arrayidx.i1265.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 43, i32 0
  %62 = load i32, i32* %arrayidx.i1265.i, align 64, !tbaa !51
  switch i32 %62, label %if.then.i1266.i [
    i32 18, label %if.end.i.i
    i32 7, label %if.end.i.i
  ]

if.then.i1266.i:                                  ; preds = %land.lhs.true.i.i
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i1266.i, %land.lhs.true.i.i, %land.lhs.true.i.i, %if.then5.i
  %ctx.0.i.i = phi i32 [ 1, %if.then.i1266.i ], [ 0, %land.lhs.true.i.i ], [ 0, %if.then5.i ], [ 0, %land.lhs.true.i.i ]
  %and9.i.i = and i32 %61, 2
  %tobool10.i.i = icmp eq i32 %and9.i.i, 0
  br i1 %tobool10.i.i, label %if.end20.i.i, label %land.lhs.true11.i.i

land.lhs.true11.i.i:                              ; preds = %if.end.i.i
  %i_mb_type_top.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 42
  %63 = load i32, i32* %i_mb_type_top.i.i, align 4, !tbaa !57
  switch i32 %63, label %if.then18.i1267.i [
    i32 18, label %if.end20.i.i
    i32 7, label %if.end20.i.i
  ]

if.then18.i1267.i:                                ; preds = %land.lhs.true11.i.i
  %inc19.i.i = add nuw nsw i32 %ctx.0.i.i, 1
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %if.then18.i1267.i, %land.lhs.true11.i.i, %land.lhs.true11.i.i, %if.end.i.i
  %ctx.1.i.i = phi i32 [ %inc19.i.i, %if.then18.i1267.i ], [ %ctx.0.i.i, %land.lhs.true11.i.i ], [ %ctx.0.i.i, %if.end.i.i ], [ %ctx.0.i.i, %land.lhs.true11.i.i ]
  %cmp21.i.i = icmp eq i32 %1, 7
  %add.i1268.i = add nuw nsw i32 %ctx.1.i.i, 27
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i

if.then22.i.i:                                    ; preds = %if.end20.i.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 %add.i1268.i, i32 0) #7
  br label %if.end7.i

if.end23.i.i:                                     ; preds = %if.end20.i.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 %add.i1268.i, i32 1) #7
  %cmp25.i.i = icmp eq i32 %1, 17
  br i1 %cmp25.i.i, label %if.then26.i.i, label %if.else.i1283.i

if.then26.i.i:                                    ; preds = %if.end23.i.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 30, i32 1) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 31, i32 1) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 32, i32 1) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 32, i32 1) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 32, i32 1) #7
  %arrayidx29.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 78, i32 0
  %64 = load i8, i8* %arrayidx29.i.i, align 1, !tbaa !40
  %cmp.i.i1269.i = icmp eq i8 %64, 12
  br i1 %cmp.i.i1269.i, label %if.then.i.i1270.i, label %if.end.i.i1272.i

for.body41.preheader.i.i:                         ; preds = %cabac_subpartition_b.exit.3.i.i
  %65 = load i8, i8* %arrayidx29.i.i, align 1, !tbaa !40
  %idxprom.i.i = zext i8 %65 to i32
  %arrayidx45.i.i = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 0, i32 %idxprom.i.i
  %66 = load i8, i8* %arrayidx45.i.i, align 1, !tbaa !40
  %tobool46.i.i = icmp eq i8 %66, 0
  br i1 %tobool46.i.i, label %for.inc49.i.i, label %if.then47.i.i

if.then.i.i1270.i:                                ; preds = %if.then26.i.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 36, i32 0) #7
  br label %cabac_subpartition_b.exit.i.i

if.end.i.i1272.i:                                 ; preds = %if.then26.i.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 36, i32 1) #7
  %cmp1.i.i1271.i = icmp eq i8 %64, 11
  br i1 %cmp1.i.i1271.i, label %if.then2.i.i1273.i, label %if.end3.i.i.i

if.then2.i.i1273.i:                               ; preds = %if.end.i.i1272.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 37, i32 1) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 38, i32 0) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 39, i32 0) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 39, i32 0) #7
  br label %cabac_subpartition_b.exit.i.i

if.end3.i.i.i:                                    ; preds = %if.end.i.i1272.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 37, i32 0) #7
  %cmp4.i.i.i = icmp eq i8 %64, 7
  %conv.i.i1274.i = zext i1 %cmp4.i.i.i to i32
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 39, i32 %conv.i.i1274.i) #7
  br label %cabac_subpartition_b.exit.i.i

cabac_subpartition_b.exit.i.i:                    ; preds = %if.end3.i.i.i, %if.then2.i.i1273.i, %if.then.i.i1270.i
  %arrayidx29.1.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 78, i32 1
  %67 = load i8, i8* %arrayidx29.1.i.i, align 1, !tbaa !40
  %cmp.i.1.i1275.i = icmp eq i8 %67, 12
  br i1 %cmp.i.1.i1275.i, label %if.then.i.1.i1388.i, label %if.end.i.1.i1386.i

if.then47.i.i:                                    ; preds = %for.body41.preheader.i.i
  tail call fastcc void @cabac_ref_b(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 0) #7
  br label %for.inc49.i.i

for.inc49.i.i:                                    ; preds = %if.then47.i.i, %for.body41.preheader.i.i
  %68 = load i8, i8* %arrayidx29.1.i.i, align 1, !tbaa !40
  %idxprom.1.i.i = zext i8 %68 to i32
  %arrayidx45.1.i.i = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 0, i32 %idxprom.1.i.i
  %69 = load i8, i8* %arrayidx45.1.i.i, align 1, !tbaa !40
  %tobool46.1.i.i = icmp eq i8 %69, 0
  br i1 %tobool46.1.i.i, label %for.inc49.1.i.i, label %if.then47.1.i.i

if.end52.i.i:                                     ; preds = %cabac_subpartition_b.exit.3.i.i, %if.then47.3.i.i, %for.inc49.2.i.i
  %arrayidx56.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 17, i32 1
  %70 = load i32, i32* %arrayidx56.i.i, align 4, !tbaa !51
  %cmp57.i.i = icmp sgt i32 %70, 1
  br i1 %cmp57.i.i, label %for.body65.preheader.i.i, label %if.end78.i.i

for.body65.preheader.i.i:                         ; preds = %if.end52.i.i
  %71 = load i8, i8* %arrayidx29.i.i, align 1, !tbaa !40
  %idxprom69.i.i = zext i8 %71 to i32
  %arrayidx70.i.i = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 1, i32 %idxprom69.i.i
  %72 = load i8, i8* %arrayidx70.i.i, align 1, !tbaa !40
  %tobool71.i.i = icmp eq i8 %72, 0
  br i1 %tobool71.i.i, label %for.inc75.i.i, label %if.then72.i.i

if.then72.i.i:                                    ; preds = %for.body65.preheader.i.i
  tail call fastcc void @cabac_ref_b(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 1, i32 0) #7
  br label %for.inc75.i.i

for.inc75.i.i:                                    ; preds = %if.then72.i.i, %for.body65.preheader.i.i
  %73 = load i8, i8* %arrayidx29.1.i.i, align 1, !tbaa !40
  %idxprom69.1.i.i = zext i8 %73 to i32
  %arrayidx70.1.i.i = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 1, i32 %idxprom69.1.i.i
  %74 = load i8, i8* %arrayidx70.1.i.i, align 1, !tbaa !40
  %tobool71.1.i.i = icmp eq i8 %74, 0
  br i1 %tobool71.1.i.i, label %for.inc75.1.i.i, label %if.then72.1.i.i

if.end78.i.i:                                     ; preds = %if.then72.3.i.i, %for.inc75.2.i.i, %if.end52.i.i
  %75 = load i8, i8* %arrayidx29.i.i, align 1, !tbaa !40
  %idxprom88.i.i = zext i8 %75 to i32
  %arrayidx89.i.i = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 0, i32 %idxprom88.i.i
  %76 = load i8, i8* %arrayidx89.i.i, align 1, !tbaa !40
  %tobool90.i.i = icmp eq i8 %76, 0
  br i1 %tobool90.i.i, label %for.inc100.i.i, label %do.body.i1282.i

do.body.i1282.i:                                  ; preds = %if.end78.i.i
  %call.i1276.i = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 0, i32 2) #7
  %77 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 0
  %conv7.i.i1277.i = zext i16 %call.i1276.i to i32
  %mul8.i.i.i1278.i = mul nuw i32 %conv7.i.i1277.i, 65537
  %i42.i.i.i1279.i = bitcast i8* %77 to i32*
  store i32 %mul8.i.i.i1278.i, i32* %i42.i.i.i1279.i, align 4, !tbaa !40
  %add.ptr48.i.i.i1280.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 16
  %i49.i.i.i1281.i = bitcast i8* %add.ptr48.i.i.i1280.i to i32*
  store i32 %mul8.i.i.i1278.i, i32* %i49.i.i.i1281.i, align 4, !tbaa !40
  br label %for.inc100.i.i

for.inc100.i.i:                                   ; preds = %do.body.i1282.i, %if.end78.i.i
  %78 = load i8, i8* %arrayidx29.1.i.i, align 1, !tbaa !40
  %idxprom88.1.i.i = zext i8 %78 to i32
  %arrayidx89.1.i.i = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 0, i32 %idxprom88.1.i.i
  %79 = load i8, i8* %arrayidx89.1.i.i, align 1, !tbaa !40
  %tobool90.1.i.i = icmp eq i8 %79, 0
  br i1 %tobool90.1.i.i, label %for.inc100.1.i.i, label %do.body.1.i.i

do.body116.i.i:                                   ; preds = %for.inc100.3.i.i
  %call119.i.i = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 1, i32 0, i32 2) #7
  %80 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 12, i32 0
  %conv7.i461.i.i = zext i16 %call119.i.i to i32
  %mul8.i.i462.i.i = mul nuw i32 %conv7.i461.i.i, 65537
  %i42.i.i463.i.i = bitcast i8* %80 to i32*
  store i32 %mul8.i.i462.i.i, i32* %i42.i.i463.i.i, align 4, !tbaa !40
  %add.ptr48.i.i464.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 12, i32 16
  %i49.i.i465.i.i = bitcast i8* %add.ptr48.i.i464.i.i to i32*
  store i32 %mul8.i.i462.i.i, i32* %i49.i.i465.i.i, align 4, !tbaa !40
  br label %for.inc129.i.i

for.inc129.i.i:                                   ; preds = %for.inc100.3.i.i, %do.body116.i.i
  %81 = load i8, i8* %arrayidx29.1.i.i, align 1, !tbaa !40
  %idxprom112.1.i.i = zext i8 %81 to i32
  %arrayidx113.1.i.i = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 1, i32 %idxprom112.1.i.i
  %82 = load i8, i8* %arrayidx113.1.i.i, align 1, !tbaa !40
  %tobool114.1.i.i = icmp eq i8 %82, 0
  br i1 %tobool114.1.i.i, label %for.inc129.1.i.i, label %do.body116.1.i.i

if.else.i1283.i:                                  ; preds = %if.end23.i.i
  %i_mb_type.off.i.i = add i32 %1, -8
  %83 = icmp ult i32 %i_mb_type.off.i.i, 9
  br i1 %83, label %if.then137.i.i, label %if.else305.i.i

if.then137.i.i:                                   ; preds = %if.else.i1283.i
  %84 = mul nuw nsw i32 %1, 3
  %i_partition.i1284.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 77
  %85 = load i32, i32* %i_partition.i1284.i, align 4, !tbaa !50
  %sub140.i.i = add nsw i32 %84, -38
  %add141.i.i = add i32 %sub140.i.i, %85
  %arrayidx142.i.i = getelementptr inbounds [27 x i8], [27 x i8]* @cabac_mb_header_b.i_mb_bits, i32 0, i32 %add141.i.i
  %86 = load i8, i8* %arrayidx142.i.i, align 1, !tbaa !40
  %conv143.i.i = zext i8 %86 to i32
  %and144.i.i = and i32 %conv143.i.i, 1
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 30, i32 %and144.i.i) #7
  %sub146.i.i = sub nuw nsw i32 32, %and144.i.i
  %87 = lshr i32 %conv143.i.i, 1
  %and147.i.i = and i32 %87, 1
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 %sub146.i.i, i32 %and147.i.i) #7
  %88 = lshr i32 %conv143.i.i, 2
  %cmp149.i.i = icmp eq i32 %88, 1
  br i1 %cmp149.i.i, label %if.end163.i.i, label %if.then151.i.i

if.then151.i.i:                                   ; preds = %if.then137.i.i
  %and152.i.i = and i32 %88, 1
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 32, i32 %and152.i.i) #7
  %89 = lshr i32 %conv143.i.i, 3
  %and154.i.i = and i32 %89, 1
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 32, i32 %and154.i.i) #7
  %90 = lshr i32 %conv143.i.i, 4
  %and156.i.i = and i32 %90, 1
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 32, i32 %and156.i.i) #7
  %91 = lshr i32 %conv143.i.i, 5
  %cmp158.i.i = icmp eq i32 %91, 1
  br i1 %cmp158.i.i, label %if.end163.i.i, label %if.then160.i.i

if.then160.i.i:                                   ; preds = %if.then151.i.i
  %and161.i.i = and i32 %91, 1
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 32, i32 %and161.i.i) #7
  br label %if.end163.i.i

if.end163.i.i:                                    ; preds = %if.then160.i.i, %if.then151.i.i, %if.then137.i.i
  %arrayidx168.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 17, i32 0
  %92 = load i32, i32* %arrayidx168.i.i, align 4, !tbaa !51
  %cmp169.i.i = icmp sgt i32 %92, 1
  br i1 %cmp169.i.i, label %if.then171.i.i, label %if.end193.i.i

if.then171.i.i:                                   ; preds = %if.end163.i.i
  %93 = lshr i32 407727, %1
  %94 = and i32 %93, 1
  %tobool174.i.i = icmp eq i32 %94, 0
  br i1 %tobool174.i.i, label %if.then175.i.i, label %if.end176.i.i

if.then175.i.i:                                   ; preds = %if.then171.i.i
  tail call fastcc void @cabac_ref_b(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 0) #7
  br label %if.end176.i.i

if.end176.i.i:                                    ; preds = %if.then175.i.i, %if.then171.i.i
  %95 = lshr i32 93520, %1
  %96 = and i32 %95, 1
  %tobool180.i.i = icmp eq i32 %96, 0
  br i1 %tobool180.i.i, label %if.end193.i.i, label %land.lhs.true181.i.i

land.lhs.true181.i.i:                             ; preds = %if.end176.i.i
  %97 = load i32, i32* %i_partition.i1284.i, align 4, !tbaa !50
  %cmp184.i.i = icmp eq i32 %97, 16
  br i1 %cmp184.i.i, label %if.end193.i.i, label %if.then186.i.i

if.then186.i.i:                                   ; preds = %land.lhs.true181.i.i
  %cmp189.i.i = icmp eq i32 %97, 15
  %conv190.i.i = zext i1 %cmp189.i.i to i32
  %shr191.i.i = lshr i32 8, %conv190.i.i
  tail call fastcc void @cabac_ref_b(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 %shr191.i.i) #7
  br label %if.end193.i.i

if.end193.i.i:                                    ; preds = %if.then186.i.i, %land.lhs.true181.i.i, %if.end176.i.i, %if.end163.i.i
  %arrayidx197.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 17, i32 1
  %98 = load i32, i32* %arrayidx197.i.i, align 4, !tbaa !51
  %cmp198.i.i = icmp sgt i32 %98, 1
  br i1 %cmp198.i.i, label %if.then200.i.i, label %if.end222.i.i

if.then200.i.i:                                   ; preds = %if.end193.i.i
  %99 = add nsw i32 %1, -11
  %tobool203.i.i = icmp ugt i32 %99, 5
  br i1 %tobool203.i.i, label %if.end205.i.i, label %if.then204.i.i

if.then204.i.i:                                   ; preds = %if.then200.i.i
  tail call fastcc void @cabac_ref_b(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 1, i32 0) #7
  br label %if.end205.i.i

if.end205.i.i:                                    ; preds = %if.then204.i.i, %if.then200.i.i
  %100 = lshr i32 112128, %1
  %101 = and i32 %100, 1
  %tobool209.i.i = icmp eq i32 %101, 0
  br i1 %tobool209.i.i, label %if.end222.i.i, label %land.lhs.true210.i.i

land.lhs.true210.i.i:                             ; preds = %if.end205.i.i
  %102 = load i32, i32* %i_partition.i1284.i, align 4, !tbaa !50
  %cmp213.i.i = icmp eq i32 %102, 16
  br i1 %cmp213.i.i, label %if.then232.i.i, label %if.then215.i.i

if.then215.i.i:                                   ; preds = %land.lhs.true210.i.i
  %cmp218.i.i = icmp eq i32 %102, 15
  %conv219.i.i = zext i1 %cmp218.i.i to i32
  %shr220.i.i = lshr i32 8, %conv219.i.i
  tail call fastcc void @cabac_ref_b(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 1, i32 %shr220.i.i) #7
  br label %if.end222.i.i

if.end222.i.i:                                    ; preds = %if.then215.i.i, %if.end205.i.i, %if.end193.i.i
  %.pr.i.i = load i32, i32* %i_partition.i1284.i, align 4, !tbaa !50
  %cmp230.i.i = icmp eq i32 %.pr.i.i, 16
  br i1 %cmp230.i.i, label %if.then232.i.i, label %if.else245.i.i

if.then232.i.i:                                   ; preds = %if.end222.i.i, %land.lhs.true210.i.i
  %103 = lshr i32 407727, %1
  %104 = and i32 %103, 1
  %tobool235.i.i = icmp eq i32 %104, 0
  br i1 %tobool235.i.i, label %do.body237.i.i, label %for.inc302.i.i

do.body237.i.i:                                   ; preds = %if.then232.i.i
  %call239.i.i = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 0, i32 4) #7
  %105 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 0
  %conv7.i467.i.i = zext i16 %call239.i.i to i32
  %mul8.i.i468.i.i = mul nuw i32 %conv7.i467.i.i, 65537
  %i67.i.i.i1285.i = bitcast i8* %105 to i32*
  store i32 %mul8.i.i468.i.i, i32* %i67.i.i.i1285.i, align 4, !tbaa !40
  %add.ptr70.i.i.i1286.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 4
  %i71.i.i.i1287.i = bitcast i8* %add.ptr70.i.i.i1286.i to i32*
  store i32 %mul8.i.i468.i.i, i32* %i71.i.i.i1287.i, align 4, !tbaa !40
  %add.ptr77.i.i.i1288.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 16
  %i79.i.i.i1289.i = bitcast i8* %add.ptr77.i.i.i1288.i to i32*
  store i32 %mul8.i.i468.i.i, i32* %i79.i.i.i1289.i, align 4, !tbaa !40
  %add.ptr82.i.i.i1290.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 20
  %i83.i.i.i1291.i = bitcast i8* %add.ptr82.i.i.i1290.i to i32*
  store i32 %mul8.i.i468.i.i, i32* %i83.i.i.i1291.i, align 4, !tbaa !40
  %add.ptr89.i.i.i1292.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 32
  %i91.i.i.i1293.i = bitcast i8* %add.ptr89.i.i.i1292.i to i32*
  store i32 %mul8.i.i468.i.i, i32* %i91.i.i.i1293.i, align 4, !tbaa !40
  %add.ptr94.i.i.i1294.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 36
  %i95.i.i.i1295.i = bitcast i8* %add.ptr94.i.i.i1294.i to i32*
  store i32 %mul8.i.i468.i.i, i32* %i95.i.i.i1295.i, align 4, !tbaa !40
  %add.ptr97.i.i.i1296.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 48
  %i99.i.i.i1297.i = bitcast i8* %add.ptr97.i.i.i1296.i to i32*
  store i32 %mul8.i.i468.i.i, i32* %i99.i.i.i1297.i, align 4, !tbaa !40
  %add.ptr102.i.i.i1298.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 52
  %i103.i.i.i1299.i = bitcast i8* %add.ptr102.i.i.i1298.i to i32*
  store i32 %mul8.i.i468.i.i, i32* %i103.i.i.i1299.i, align 4, !tbaa !40
  br label %for.inc302.i.i

if.else245.i.i:                                   ; preds = %if.end222.i.i
  %cmp248.i.i = icmp eq i32 %.pr.i.i, 14
  %106 = lshr i32 116560, %1
  %107 = and i32 %106, 1
  %tobool253.i.i = icmp ne i32 %107, 0
  br i1 %cmp248.i.i, label %if.then250.i.i, label %if.else275.i.i

if.then250.i.i:                                   ; preds = %if.else245.i.i
  br i1 %tobool253.i.i, label %do.body255.i.i, label %if.end262.i.i

do.body255.i.i:                                   ; preds = %if.then250.i.i
  %call257.i.i = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 0, i32 4) #7
  %108 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 0
  %conv7.i470.i.i = zext i16 %call257.i.i to i32
  %mul8.i.i471.i.i = mul nuw i32 %conv7.i470.i.i, 65537
  %i67.i.i472.i.i = bitcast i8* %108 to i32*
  store i32 %mul8.i.i471.i.i, i32* %i67.i.i472.i.i, align 4, !tbaa !40
  %add.ptr70.i.i473.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 4
  %i71.i.i474.i.i = bitcast i8* %add.ptr70.i.i473.i.i to i32*
  store i32 %mul8.i.i471.i.i, i32* %i71.i.i474.i.i, align 4, !tbaa !40
  %add.ptr77.i.i475.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 16
  %i79.i.i476.i.i = bitcast i8* %add.ptr77.i.i475.i.i to i32*
  store i32 %mul8.i.i471.i.i, i32* %i79.i.i476.i.i, align 4, !tbaa !40
  %add.ptr82.i.i477.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 20
  %i83.i.i478.i.i = bitcast i8* %add.ptr82.i.i477.i.i to i32*
  store i32 %mul8.i.i471.i.i, i32* %i83.i.i478.i.i, align 4, !tbaa !40
  br label %if.end262.i.i

if.end262.i.i:                                    ; preds = %do.body255.i.i, %if.then250.i.i
  %109 = lshr i32 430767, %1
  %110 = and i32 %109, 1
  %tobool265.i.i = icmp eq i32 %110, 0
  br i1 %tobool265.i.i, label %do.body267.i.i, label %for.inc302.i.i

do.body267.i.i:                                   ; preds = %if.end262.i.i
  %call269.i.i = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 8, i32 4) #7
  %111 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 28, i32 0
  %conv7.i480.i.i = zext i16 %call269.i.i to i32
  %mul8.i.i481.i.i = mul nuw i32 %conv7.i480.i.i, 65537
  %i67.i.i482.i.i = bitcast i8* %111 to i32*
  store i32 %mul8.i.i481.i.i, i32* %i67.i.i482.i.i, align 4, !tbaa !40
  %add.ptr70.i.i483.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 28, i32 4
  %i71.i.i484.i.i = bitcast i8* %add.ptr70.i.i483.i.i to i32*
  store i32 %mul8.i.i481.i.i, i32* %i71.i.i484.i.i, align 4, !tbaa !40
  %add.ptr77.i.i485.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 28, i32 16
  %i79.i.i486.i.i = bitcast i8* %add.ptr77.i.i485.i.i to i32*
  store i32 %mul8.i.i481.i.i, i32* %i79.i.i486.i.i, align 4, !tbaa !40
  %add.ptr82.i.i487.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 28, i32 20
  %i83.i.i488.i.i = bitcast i8* %add.ptr82.i.i487.i.i to i32*
  store i32 %mul8.i.i481.i.i, i32* %i83.i.i488.i.i, align 4, !tbaa !40
  br label %for.inc302.i.i

if.else275.i.i:                                   ; preds = %if.else245.i.i
  br i1 %tobool253.i.i, label %do.body280.i.i, label %if.end287.i.i

do.body280.i.i:                                   ; preds = %if.else275.i.i
  %call282.i.i = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 0, i32 2) #7
  %112 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 0
  %conv7.i490.i.i = zext i16 %call282.i.i to i32
  %mul8.i.i491.i.i = mul nuw i32 %conv7.i490.i.i, 65537
  %i42.i.i492.i.i = bitcast i8* %112 to i32*
  store i32 %mul8.i.i491.i.i, i32* %i42.i.i492.i.i, align 4, !tbaa !40
  %add.ptr48.i.i493.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 16
  %i49.i.i494.i.i = bitcast i8* %add.ptr48.i.i493.i.i to i32*
  store i32 %mul8.i.i491.i.i, i32* %i49.i.i494.i.i, align 4, !tbaa !40
  %add.ptr55.i.i.i1300.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 32
  %i56.i.i.i1301.i = bitcast i8* %add.ptr55.i.i.i1300.i to i32*
  store i32 %mul8.i.i491.i.i, i32* %i56.i.i.i1301.i, align 4, !tbaa !40
  %add.ptr58.i.i.i1302.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 48
  %i59.i.i.i1303.i = bitcast i8* %add.ptr58.i.i.i1302.i to i32*
  store i32 %mul8.i.i491.i.i, i32* %i59.i.i.i1303.i, align 4, !tbaa !40
  br label %if.end287.i.i

if.end287.i.i:                                    ; preds = %do.body280.i.i, %if.else275.i.i
  %113 = lshr i32 430767, %1
  %114 = and i32 %113, 1
  %tobool290.i.i = icmp eq i32 %114, 0
  br i1 %tobool290.i.i, label %do.body292.i.i, label %for.inc302.i.i

do.body292.i.i:                                   ; preds = %if.end287.i.i
  %call294.i.i = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 4, i32 2) #7
  %115 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 14, i32 0
  %conv7.i496.i.i = zext i16 %call294.i.i to i32
  %mul8.i.i497.i.i = mul nuw i32 %conv7.i496.i.i, 65537
  %i42.i.i498.i.i = bitcast i8* %115 to i32*
  store i32 %mul8.i.i497.i.i, i32* %i42.i.i498.i.i, align 4, !tbaa !40
  %add.ptr48.i.i499.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 14, i32 16
  %i49.i.i500.i.i = bitcast i8* %add.ptr48.i.i499.i.i to i32*
  store i32 %mul8.i.i497.i.i, i32* %i49.i.i500.i.i, align 4, !tbaa !40
  %add.ptr55.i.i501.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 14, i32 32
  %i56.i.i502.i.i = bitcast i8* %add.ptr55.i.i501.i.i to i32*
  store i32 %mul8.i.i497.i.i, i32* %i56.i.i502.i.i, align 4, !tbaa !40
  %add.ptr58.i.i503.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 14, i32 48
  %i59.i.i504.i.i = bitcast i8* %add.ptr58.i.i503.i.i to i32*
  store i32 %mul8.i.i497.i.i, i32* %i59.i.i504.i.i, align 4, !tbaa !40
  br label %for.inc302.i.i

for.inc302.i.i:                                   ; preds = %do.body292.i.i, %if.end287.i.i, %do.body267.i.i, %if.end262.i.i, %do.body237.i.i, %if.then232.i.i
  %116 = load i32, i32* %i_partition.i1284.i, align 4, !tbaa !50
  %cmp230.1.i.i = icmp eq i32 %116, 16
  br i1 %cmp230.1.i.i, label %if.then232.1.i.i, label %if.else245.1.i.i

if.else305.i.i:                                   ; preds = %if.else.i1283.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 30, i32 1) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 31, i32 1) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 32, i32 1) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 32, i32 0) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 32, i32 1) #7
  tail call fastcc void @cabac_mb_type_intra(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 %1, i32 32, i32 33, i32 34, i32 34, i32 35, i32 35) #7
  %117 = and i32 %1, -2
  %switch2575 = icmp eq i32 %117, 2
  br i1 %switch2575, label %if.end7.i, label %if.then26.i.i1306.i

if.then26.i.i1306.i:                              ; preds = %if.else305.i.i
  %b_transform_8x8_mode.i.i1304.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 53, i32 0, i32 15
  %118 = load i32, i32* %b_transform_8x8_mode.i.i1304.i, align 4, !tbaa !52
  %tobool27.i.i1305.i = icmp eq i32 %118, 0
  br i1 %tobool27.i.i1305.i, label %if.end29.i.i1316.i, label %if.then28.i.i1312.i

if.then28.i.i1312.i:                              ; preds = %if.then26.i.i1306.i
  %h.idx.i.i1307.i = getelementptr %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 79
  %h.idx.val.i.i1308.i = load i32, i32* %h.idx.i.i1307.i, align 4, !tbaa !54
  %h.idx84.i.i1309.i = getelementptr %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 10
  %h.idx84.val.i.i1310.i = load i32, i32* %h.idx84.i.i1309.i, align 8, !tbaa !55
  %add.i.i.i1311.i = add nsw i32 %h.idx84.val.i.i1310.i, 399
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 %add.i.i.i1311.i, i32 %h.idx.val.i.i1308.i) #7
  br label %if.end29.i.i1316.i

if.end29.i.i1316.i:                               ; preds = %if.then28.i.i1312.i, %if.then26.i.i1306.i
  %b_transform_8x8.i.i1313.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 79
  %119 = load i32, i32* %b_transform_8x8.i.i1313.i, align 4, !tbaa !54
  %tobool31.i.i1314.i = icmp eq i32 %119, 0
  %cond.i.i1315.i = select i1 %tobool31.i.i1314.i, i32 1, i32 4
  br label %for.body.i.i1338.i

for.body.i.i1338.i:                               ; preds = %cabac_intra4x4_pred_mode.exit.i.i1351.i, %if.end29.i.i1316.i
  %i.091.i.i1317.i = phi i32 [ 0, %if.end29.i.i1316.i ], [ %add39.i.i1349.i, %cabac_intra4x4_pred_mode.exit.i.i1351.i ]
  %arrayidx.i.i.i1318.i = getelementptr inbounds [51 x i8], [51 x i8]* @x264_scan8, i32 0, i32 %i.091.i.i1317.i
  %120 = load i8, i8* %arrayidx.i.i.i1318.i, align 1, !tbaa !40
  %conv.i.i.i1319.i = zext i8 %120 to i32
  %sub.i.i.i1320.i = add nsw i32 %conv.i.i.i1319.i, -1
  %arrayidx1.i.i.i1321.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 0, i32 %sub.i.i.i1320.i
  %121 = load i8, i8* %arrayidx1.i.i.i1321.i, align 1, !tbaa !40
  %conv2.i.i.i1322.i = sext i8 %121 to i32
  %sub9.i.i.i1323.i = add nsw i32 %conv.i.i.i1319.i, -8
  %arrayidx10.i.i.i1324.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 0, i32 %sub9.i.i.i1323.i
  %122 = load i8, i8* %arrayidx10.i.i.i1324.i, align 1, !tbaa !40
  %conv11.i.i.i1325.i = sext i8 %122 to i32
  %add.i85.i.i1326.i = add nsw i32 %conv2.i.i.i1322.i, 1
  %arrayidx12.i.i.i1327.i = getelementptr inbounds [13 x i8], [13 x i8]* @x264_mb_pred_mode4x4_fix, i32 0, i32 %add.i85.i.i1326.i
  %123 = load i8, i8* %arrayidx12.i.i.i1327.i, align 1, !tbaa !40
  %add14.i.i.i1328.i = add nsw i32 %conv11.i.i.i1325.i, 1
  %arrayidx15.i.i.i1329.i = getelementptr inbounds [13 x i8], [13 x i8]* @x264_mb_pred_mode4x4_fix, i32 0, i32 %add14.i.i.i1328.i
  %124 = load i8, i8* %arrayidx15.i.i.i1329.i, align 1, !tbaa !40
  %cmp.i.i.i1330.i = icmp slt i8 %123, %124
  %..i.i.i1331.i = select i1 %cmp.i.i.i1330.i, i8 %123, i8 %124
  %cmp24.i.i.i1332.i = icmp slt i8 %..i.i.i1331.i, 0
  %narrow.i.i.i1333.i = select i1 %cmp24.i.i.i1332.i, i8 2, i8 %..i.i.i1331.i
  %arrayidx35.i.i1334.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 0, i32 %conv.i.i.i1319.i
  %125 = load i8, i8* %arrayidx35.i.i1334.i, align 1, !tbaa !40
  %conv.i506.i.i = sext i8 %125 to i32
  %add36.i.i1335.i = add nsw i32 %conv.i506.i.i, 1
  %arrayidx37.i.i1336.i = getelementptr inbounds [13 x i8], [13 x i8]* @x264_mb_pred_mode4x4_fix, i32 0, i32 %add36.i.i1335.i
  %126 = load i8, i8* %arrayidx37.i.i1336.i, align 1, !tbaa !40
  %cmp.i88.i.i1337.i = icmp eq i8 %narrow.i.i.i1333.i, %126
  br i1 %cmp.i88.i.i1337.i, label %if.then.i.i.i1339.i, label %if.else.i.i.i1348.i

if.then.i.i.i1339.i:                              ; preds = %for.body.i.i1338.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 68, i32 1) #7
  br label %cabac_intra4x4_pred_mode.exit.i.i1351.i

if.else.i.i.i1348.i:                              ; preds = %for.body.i.i1338.i
  %conv38.i.i1340.i = sext i8 %126 to i32
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 68, i32 0) #7
  %cmp1.i.i.i1341.i = icmp sgt i8 %126, %narrow.i.i.i1333.i
  %dec.i.i.i1342.i = sext i1 %cmp1.i.i.i1341.i to i32
  %spec.select.i89.i.i1343.i = add nsw i32 %dec.i.i.i1342.i, %conv38.i.i1340.i
  %and.i90.i.i1344.i = and i32 %spec.select.i89.i.i1343.i, 1
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 69, i32 %and.i90.i.i1344.i) #7
  %shr15.i.i.i1345.i = lshr i32 %spec.select.i89.i.i1343.i, 1
  %and3.i.i.i1346.i = and i32 %shr15.i.i.i1345.i, 1
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 69, i32 %and3.i.i.i1346.i) #7
  %shr4.i.i.i1347.i = ashr i32 %spec.select.i89.i.i1343.i, 2
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 69, i32 %shr4.i.i.i1347.i) #7
  br label %cabac_intra4x4_pred_mode.exit.i.i1351.i

cabac_intra4x4_pred_mode.exit.i.i1351.i:          ; preds = %if.else.i.i.i1348.i, %if.then.i.i.i1339.i
  %add39.i.i1349.i = add nuw nsw i32 %i.091.i.i1317.i, %cond.i.i1315.i
  %cmp32.i.i1350.i = icmp ult i32 %add39.i.i1349.i, 16
  br i1 %cmp32.i.i1350.i, label %for.body.i.i1338.i, label %if.end7.i

do.body116.1.i.i:                                 ; preds = %for.inc129.i.i
  %call119.1.i.i = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 1, i32 4, i32 2) #7
  %127 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 14, i32 0
  %conv7.i461.1.i.i = zext i16 %call119.1.i.i to i32
  %mul8.i.i462.1.i.i = mul nuw i32 %conv7.i461.1.i.i, 65537
  %i42.i.i463.1.i.i = bitcast i8* %127 to i32*
  store i32 %mul8.i.i462.1.i.i, i32* %i42.i.i463.1.i.i, align 4, !tbaa !40
  %add.ptr48.i.i464.1.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 14, i32 16
  %i49.i.i465.1.i.i = bitcast i8* %add.ptr48.i.i464.1.i.i to i32*
  store i32 %mul8.i.i462.1.i.i, i32* %i49.i.i465.1.i.i, align 4, !tbaa !40
  br label %for.inc129.1.i.i

for.inc129.1.i.i:                                 ; preds = %do.body116.1.i.i, %for.inc129.i.i
  %128 = load i8, i8* %arrayidx29.2.i.i, align 1, !tbaa !40
  %idxprom112.2.i.i = zext i8 %128 to i32
  %arrayidx113.2.i.i = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 1, i32 %idxprom112.2.i.i
  %129 = load i8, i8* %arrayidx113.2.i.i, align 1, !tbaa !40
  %tobool114.2.i.i = icmp eq i8 %129, 0
  br i1 %tobool114.2.i.i, label %for.inc129.2.i.i, label %do.body116.2.i.i

do.body116.2.i.i:                                 ; preds = %for.inc129.1.i.i
  %call119.2.i.i = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 1, i32 8, i32 2) #7
  %130 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 28, i32 0
  %conv7.i461.2.i.i = zext i16 %call119.2.i.i to i32
  %mul8.i.i462.2.i.i = mul nuw i32 %conv7.i461.2.i.i, 65537
  %i42.i.i463.2.i.i = bitcast i8* %130 to i32*
  store i32 %mul8.i.i462.2.i.i, i32* %i42.i.i463.2.i.i, align 4, !tbaa !40
  %add.ptr48.i.i464.2.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 28, i32 16
  %i49.i.i465.2.i.i = bitcast i8* %add.ptr48.i.i464.2.i.i to i32*
  store i32 %mul8.i.i462.2.i.i, i32* %i49.i.i465.2.i.i, align 4, !tbaa !40
  br label %for.inc129.2.i.i

for.inc129.2.i.i:                                 ; preds = %do.body116.2.i.i, %for.inc129.1.i.i
  %131 = load i8, i8* %arrayidx29.3.i.i, align 1, !tbaa !40
  %idxprom112.3.i.i = zext i8 %131 to i32
  %arrayidx113.3.i.i = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 1, i32 %idxprom112.3.i.i
  %132 = load i8, i8* %arrayidx113.3.i.i, align 1, !tbaa !40
  %tobool114.3.i.i = icmp eq i8 %132, 0
  br i1 %tobool114.3.i.i, label %if.end7.i, label %do.body116.3.i.i

do.body116.3.i.i:                                 ; preds = %for.inc129.2.i.i
  %call119.3.i.i = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 1, i32 12, i32 2) #7
  %133 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 30, i32 0
  %conv7.i461.3.i.i = zext i16 %call119.3.i.i to i32
  %mul8.i.i462.3.i.i = mul nuw i32 %conv7.i461.3.i.i, 65537
  %i42.i.i463.3.i.i = bitcast i8* %133 to i32*
  store i32 %mul8.i.i462.3.i.i, i32* %i42.i.i463.3.i.i, align 4, !tbaa !40
  %add.ptr48.i.i464.3.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 30, i32 16
  %i49.i.i465.3.i.i = bitcast i8* %add.ptr48.i.i464.3.i.i to i32*
  store i32 %mul8.i.i462.3.i.i, i32* %i49.i.i465.3.i.i, align 4, !tbaa !40
  br label %if.end7.i

do.body.1.i.i:                                    ; preds = %for.inc100.i.i
  %call.1.i.i = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 4, i32 2) #7
  %134 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 14, i32 0
  %conv7.i.1.i.i = zext i16 %call.1.i.i to i32
  %mul8.i.i.1.i.i = mul nuw i32 %conv7.i.1.i.i, 65537
  %i42.i.i.1.i.i = bitcast i8* %134 to i32*
  store i32 %mul8.i.i.1.i.i, i32* %i42.i.i.1.i.i, align 4, !tbaa !40
  %add.ptr48.i.i.1.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 14, i32 16
  %i49.i.i.1.i.i = bitcast i8* %add.ptr48.i.i.1.i.i to i32*
  store i32 %mul8.i.i.1.i.i, i32* %i49.i.i.1.i.i, align 4, !tbaa !40
  br label %for.inc100.1.i.i

for.inc100.1.i.i:                                 ; preds = %do.body.1.i.i, %for.inc100.i.i
  %135 = load i8, i8* %arrayidx29.2.i.i, align 1, !tbaa !40
  %idxprom88.2.i.i = zext i8 %135 to i32
  %arrayidx89.2.i.i = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 0, i32 %idxprom88.2.i.i
  %136 = load i8, i8* %arrayidx89.2.i.i, align 1, !tbaa !40
  %tobool90.2.i.i = icmp eq i8 %136, 0
  br i1 %tobool90.2.i.i, label %for.inc100.2.i.i, label %do.body.2.i.i

do.body.2.i.i:                                    ; preds = %for.inc100.1.i.i
  %call.2.i.i = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 8, i32 2) #7
  %137 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 28, i32 0
  %conv7.i.2.i.i = zext i16 %call.2.i.i to i32
  %mul8.i.i.2.i.i = mul nuw i32 %conv7.i.2.i.i, 65537
  %i42.i.i.2.i.i = bitcast i8* %137 to i32*
  store i32 %mul8.i.i.2.i.i, i32* %i42.i.i.2.i.i, align 4, !tbaa !40
  %add.ptr48.i.i.2.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 28, i32 16
  %i49.i.i.2.i.i = bitcast i8* %add.ptr48.i.i.2.i.i to i32*
  store i32 %mul8.i.i.2.i.i, i32* %i49.i.i.2.i.i, align 4, !tbaa !40
  br label %for.inc100.2.i.i

for.inc100.2.i.i:                                 ; preds = %do.body.2.i.i, %for.inc100.1.i.i
  %138 = load i8, i8* %arrayidx29.3.i.i, align 1, !tbaa !40
  %idxprom88.3.i.i = zext i8 %138 to i32
  %arrayidx89.3.i.i = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 0, i32 %idxprom88.3.i.i
  %139 = load i8, i8* %arrayidx89.3.i.i, align 1, !tbaa !40
  %tobool90.3.i.i = icmp eq i8 %139, 0
  br i1 %tobool90.3.i.i, label %for.inc100.3.i.i, label %do.body.3.i.i

do.body.3.i.i:                                    ; preds = %for.inc100.2.i.i
  %call.3.i.i = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 12, i32 2) #7
  %140 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 30, i32 0
  %conv7.i.3.i.i = zext i16 %call.3.i.i to i32
  %mul8.i.i.3.i.i = mul nuw i32 %conv7.i.3.i.i, 65537
  %i42.i.i.3.i.i = bitcast i8* %140 to i32*
  store i32 %mul8.i.i.3.i.i, i32* %i42.i.i.3.i.i, align 4, !tbaa !40
  %add.ptr48.i.i.3.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 30, i32 16
  %i49.i.i.3.i.i = bitcast i8* %add.ptr48.i.i.3.i.i to i32*
  store i32 %mul8.i.i.3.i.i, i32* %i49.i.i.3.i.i, align 4, !tbaa !40
  br label %for.inc100.3.i.i

for.inc100.3.i.i:                                 ; preds = %do.body.3.i.i, %for.inc100.2.i.i
  %141 = load i8, i8* %arrayidx29.i.i, align 1, !tbaa !40
  %idxprom112.i.i = zext i8 %141 to i32
  %arrayidx113.i.i = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 1, i32 %idxprom112.i.i
  %142 = load i8, i8* %arrayidx113.i.i, align 1, !tbaa !40
  %tobool114.i.i = icmp eq i8 %142, 0
  br i1 %tobool114.i.i, label %for.inc129.i.i, label %do.body116.i.i

if.then72.1.i.i:                                  ; preds = %for.inc75.i.i
  tail call fastcc void @cabac_ref_b(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 1, i32 4) #7
  br label %for.inc75.1.i.i

for.inc75.1.i.i:                                  ; preds = %if.then72.1.i.i, %for.inc75.i.i
  %143 = load i8, i8* %arrayidx29.2.i.i, align 1, !tbaa !40
  %idxprom69.2.i.i = zext i8 %143 to i32
  %arrayidx70.2.i.i = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 1, i32 %idxprom69.2.i.i
  %144 = load i8, i8* %arrayidx70.2.i.i, align 1, !tbaa !40
  %tobool71.2.i.i = icmp eq i8 %144, 0
  br i1 %tobool71.2.i.i, label %for.inc75.2.i.i, label %if.then72.2.i.i

if.then72.2.i.i:                                  ; preds = %for.inc75.1.i.i
  tail call fastcc void @cabac_ref_b(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 1, i32 8) #7
  br label %for.inc75.2.i.i

for.inc75.2.i.i:                                  ; preds = %if.then72.2.i.i, %for.inc75.1.i.i
  %145 = load i8, i8* %arrayidx29.3.i.i, align 1, !tbaa !40
  %idxprom69.3.i.i = zext i8 %145 to i32
  %arrayidx70.3.i.i = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 1, i32 %idxprom69.3.i.i
  %146 = load i8, i8* %arrayidx70.3.i.i, align 1, !tbaa !40
  %tobool71.3.i.i = icmp eq i8 %146, 0
  br i1 %tobool71.3.i.i, label %if.end78.i.i, label %if.then72.3.i.i

if.then72.3.i.i:                                  ; preds = %for.inc75.2.i.i
  tail call fastcc void @cabac_ref_b(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 1, i32 12) #7
  br label %if.end78.i.i

if.then47.1.i.i:                                  ; preds = %for.inc49.i.i
  tail call fastcc void @cabac_ref_b(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 4) #7
  br label %for.inc49.1.i.i

for.inc49.1.i.i:                                  ; preds = %if.then47.1.i.i, %for.inc49.i.i
  %147 = load i8, i8* %arrayidx29.2.i.i, align 1, !tbaa !40
  %idxprom.2.i.i = zext i8 %147 to i32
  %arrayidx45.2.i.i = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 0, i32 %idxprom.2.i.i
  %148 = load i8, i8* %arrayidx45.2.i.i, align 1, !tbaa !40
  %tobool46.2.i.i = icmp eq i8 %148, 0
  br i1 %tobool46.2.i.i, label %for.inc49.2.i.i, label %if.then47.2.i.i

if.then47.2.i.i:                                  ; preds = %for.inc49.1.i.i
  tail call fastcc void @cabac_ref_b(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 8) #7
  br label %for.inc49.2.i.i

for.inc49.2.i.i:                                  ; preds = %if.then47.2.i.i, %for.inc49.1.i.i
  %149 = load i8, i8* %arrayidx29.3.i.i, align 1, !tbaa !40
  %idxprom.3.i.i = zext i8 %149 to i32
  %arrayidx45.3.i.i = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 0, i32 %idxprom.3.i.i
  %150 = load i8, i8* %arrayidx45.3.i.i, align 1, !tbaa !40
  %tobool46.3.i.i = icmp eq i8 %150, 0
  br i1 %tobool46.3.i.i, label %if.end52.i.i, label %if.then47.3.i.i

if.then47.3.i.i:                                  ; preds = %for.inc49.2.i.i
  tail call fastcc void @cabac_ref_b(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 12) #7
  br label %if.end52.i.i

if.end.i.1.i1386.i:                               ; preds = %cabac_subpartition_b.exit.i.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 36, i32 1) #7
  %cmp1.i.1.i1385.i = icmp eq i8 %67, 11
  br i1 %cmp1.i.1.i1385.i, label %if.then2.i.1.i1387.i, label %if.end3.i.1.i.i

if.end3.i.1.i.i:                                  ; preds = %if.end.i.1.i1386.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 37, i32 0) #7
  %cmp4.i.1.i.i = icmp eq i8 %67, 7
  %conv.i.1.i.i = zext i1 %cmp4.i.1.i.i to i32
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 39, i32 %conv.i.1.i.i) #7
  br label %cabac_subpartition_b.exit.1.i.i

if.then2.i.1.i1387.i:                             ; preds = %if.end.i.1.i1386.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 37, i32 1) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 38, i32 0) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 39, i32 0) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 39, i32 0) #7
  br label %cabac_subpartition_b.exit.1.i.i

if.then.i.1.i1388.i:                              ; preds = %cabac_subpartition_b.exit.i.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 36, i32 0) #7
  br label %cabac_subpartition_b.exit.1.i.i

cabac_subpartition_b.exit.1.i.i:                  ; preds = %if.then.i.1.i1388.i, %if.then2.i.1.i1387.i, %if.end3.i.1.i.i
  %arrayidx29.2.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 78, i32 2
  %151 = load i8, i8* %arrayidx29.2.i.i, align 1, !tbaa !40
  %cmp.i.2.i1389.i = icmp eq i8 %151, 12
  br i1 %cmp.i.2.i1389.i, label %if.then.i.2.i1393.i, label %if.end.i.2.i1391.i

if.end.i.2.i1391.i:                               ; preds = %cabac_subpartition_b.exit.1.i.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 36, i32 1) #7
  %cmp1.i.2.i1390.i = icmp eq i8 %151, 11
  br i1 %cmp1.i.2.i1390.i, label %if.then2.i.2.i1392.i, label %if.end3.i.2.i.i

if.end3.i.2.i.i:                                  ; preds = %if.end.i.2.i1391.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 37, i32 0) #7
  %cmp4.i.2.i.i = icmp eq i8 %151, 7
  %conv.i.2.i.i = zext i1 %cmp4.i.2.i.i to i32
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 39, i32 %conv.i.2.i.i) #7
  br label %cabac_subpartition_b.exit.2.i.i

if.then2.i.2.i1392.i:                             ; preds = %if.end.i.2.i1391.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 37, i32 1) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 38, i32 0) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 39, i32 0) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 39, i32 0) #7
  br label %cabac_subpartition_b.exit.2.i.i

if.then.i.2.i1393.i:                              ; preds = %cabac_subpartition_b.exit.1.i.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 36, i32 0) #7
  br label %cabac_subpartition_b.exit.2.i.i

cabac_subpartition_b.exit.2.i.i:                  ; preds = %if.then.i.2.i1393.i, %if.then2.i.2.i1392.i, %if.end3.i.2.i.i
  %arrayidx29.3.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 78, i32 3
  %152 = load i8, i8* %arrayidx29.3.i.i, align 1, !tbaa !40
  %cmp.i.3.i1394.i = icmp eq i8 %152, 12
  br i1 %cmp.i.3.i1394.i, label %if.then.i.3.i1398.i, label %if.end.i.3.i1396.i

if.end.i.3.i1396.i:                               ; preds = %cabac_subpartition_b.exit.2.i.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 36, i32 1) #7
  %cmp1.i.3.i1395.i = icmp eq i8 %152, 11
  br i1 %cmp1.i.3.i1395.i, label %if.then2.i.3.i1397.i, label %if.end3.i.3.i.i

if.end3.i.3.i.i:                                  ; preds = %if.end.i.3.i1396.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 37, i32 0) #7
  %cmp4.i.3.i.i = icmp eq i8 %152, 7
  %conv.i.3.i.i = zext i1 %cmp4.i.3.i.i to i32
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 39, i32 %conv.i.3.i.i) #7
  br label %cabac_subpartition_b.exit.3.i.i

if.then2.i.3.i1397.i:                             ; preds = %if.end.i.3.i1396.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 37, i32 1) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 38, i32 0) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 39, i32 0) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 39, i32 0) #7
  br label %cabac_subpartition_b.exit.3.i.i

if.then.i.3.i1398.i:                              ; preds = %cabac_subpartition_b.exit.2.i.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 36, i32 0) #7
  br label %cabac_subpartition_b.exit.3.i.i

cabac_subpartition_b.exit.3.i.i:                  ; preds = %if.then.i.3.i1398.i, %if.then2.i.3.i1397.i, %if.end3.i.3.i.i
  %arrayidx32.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 17, i32 0
  %153 = load i32, i32* %arrayidx32.i.i, align 4, !tbaa !51
  %cmp33.i.i = icmp sgt i32 %153, 1
  br i1 %cmp33.i.i, label %for.body41.preheader.i.i, label %if.end52.i.i

if.else245.1.i.i:                                 ; preds = %for.inc302.i.i
  %cmp248.1.i.i = icmp eq i32 %116, 14
  %154 = add nsw i32 %1, -11
  %tobool253.1.i.i = icmp ult i32 %154, 6
  br i1 %cmp248.1.i.i, label %if.then250.1.i.i, label %if.else275.1.i.i

if.else275.1.i.i:                                 ; preds = %if.else245.1.i.i
  br i1 %tobool253.1.i.i, label %do.body280.1.i.i, label %if.end287.1.i.i

do.body280.1.i.i:                                 ; preds = %if.else275.1.i.i
  %call282.1.i.i = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 1, i32 0, i32 2) #7
  %155 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 12, i32 0
  %conv7.i490.1.i.i = zext i16 %call282.1.i.i to i32
  %mul8.i.i491.1.i.i = mul nuw i32 %conv7.i490.1.i.i, 65537
  %i42.i.i492.1.i.i = bitcast i8* %155 to i32*
  store i32 %mul8.i.i491.1.i.i, i32* %i42.i.i492.1.i.i, align 4, !tbaa !40
  %add.ptr48.i.i493.1.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 12, i32 16
  %i49.i.i494.1.i.i = bitcast i8* %add.ptr48.i.i493.1.i.i to i32*
  store i32 %mul8.i.i491.1.i.i, i32* %i49.i.i494.1.i.i, align 4, !tbaa !40
  %add.ptr55.i.i.1.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 12, i32 32
  %i56.i.i.1.i.i = bitcast i8* %add.ptr55.i.i.1.i.i to i32*
  store i32 %mul8.i.i491.1.i.i, i32* %i56.i.i.1.i.i, align 4, !tbaa !40
  %add.ptr58.i.i.1.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 12, i32 48
  %i59.i.i.1.i.i = bitcast i8* %add.ptr58.i.i.1.i.i to i32*
  store i32 %mul8.i.i491.1.i.i, i32* %i59.i.i.1.i.i, align 4, !tbaa !40
  br label %if.end287.1.i.i

if.end287.1.i.i:                                  ; preds = %do.body280.1.i.i, %if.else275.1.i.i
  %156 = lshr i32 412159, %1
  %157 = and i32 %156, 1
  %tobool290.1.i.i = icmp eq i32 %157, 0
  br i1 %tobool290.1.i.i, label %do.body292.1.i.i, label %if.end7.i

do.body292.1.i.i:                                 ; preds = %if.end287.1.i.i
  %call294.1.i.i = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 1, i32 4, i32 2) #7
  %158 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 14, i32 0
  %conv7.i496.1.i.i = zext i16 %call294.1.i.i to i32
  %mul8.i.i497.1.i.i = mul nuw i32 %conv7.i496.1.i.i, 65537
  %i42.i.i498.1.i.i = bitcast i8* %158 to i32*
  store i32 %mul8.i.i497.1.i.i, i32* %i42.i.i498.1.i.i, align 4, !tbaa !40
  %add.ptr48.i.i499.1.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 14, i32 16
  %i49.i.i500.1.i.i = bitcast i8* %add.ptr48.i.i499.1.i.i to i32*
  store i32 %mul8.i.i497.1.i.i, i32* %i49.i.i500.1.i.i, align 4, !tbaa !40
  %add.ptr55.i.i501.1.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 14, i32 32
  %i56.i.i502.1.i.i = bitcast i8* %add.ptr55.i.i501.1.i.i to i32*
  store i32 %mul8.i.i497.1.i.i, i32* %i56.i.i502.1.i.i, align 4, !tbaa !40
  %add.ptr58.i.i503.1.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 14, i32 48
  %i59.i.i504.1.i.i = bitcast i8* %add.ptr58.i.i503.1.i.i to i32*
  store i32 %mul8.i.i497.1.i.i, i32* %i59.i.i504.1.i.i, align 4, !tbaa !40
  br label %if.end7.i

if.then250.1.i.i:                                 ; preds = %if.else245.1.i.i
  br i1 %tobool253.1.i.i, label %do.body255.1.i.i, label %if.end262.1.i.i

do.body255.1.i.i:                                 ; preds = %if.then250.1.i.i
  %call257.1.i.i = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 1, i32 0, i32 4) #7
  %159 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 12, i32 0
  %conv7.i470.1.i.i = zext i16 %call257.1.i.i to i32
  %mul8.i.i471.1.i.i = mul nuw i32 %conv7.i470.1.i.i, 65537
  %i67.i.i472.1.i.i = bitcast i8* %159 to i32*
  store i32 %mul8.i.i471.1.i.i, i32* %i67.i.i472.1.i.i, align 4, !tbaa !40
  %add.ptr70.i.i473.1.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 12, i32 4
  %i71.i.i474.1.i.i = bitcast i8* %add.ptr70.i.i473.1.i.i to i32*
  store i32 %mul8.i.i471.1.i.i, i32* %i71.i.i474.1.i.i, align 4, !tbaa !40
  %add.ptr77.i.i475.1.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 12, i32 16
  %i79.i.i476.1.i.i = bitcast i8* %add.ptr77.i.i475.1.i.i to i32*
  store i32 %mul8.i.i471.1.i.i, i32* %i79.i.i476.1.i.i, align 4, !tbaa !40
  %add.ptr82.i.i477.1.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 12, i32 20
  %i83.i.i478.1.i.i = bitcast i8* %add.ptr82.i.i477.1.i.i to i32*
  store i32 %mul8.i.i471.1.i.i, i32* %i83.i.i478.1.i.i, align 4, !tbaa !40
  br label %if.end262.1.i.i

if.end262.1.i.i:                                  ; preds = %do.body255.1.i.i, %if.then250.1.i.i
  %160 = lshr i32 412159, %1
  %161 = and i32 %160, 1
  %tobool265.1.i.i = icmp eq i32 %161, 0
  br i1 %tobool265.1.i.i, label %do.body267.1.i.i, label %if.end7.i

do.body267.1.i.i:                                 ; preds = %if.end262.1.i.i
  %call269.1.i.i = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 1, i32 8, i32 4) #7
  %162 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 28, i32 0
  %conv7.i480.1.i.i = zext i16 %call269.1.i.i to i32
  %mul8.i.i481.1.i.i = mul nuw i32 %conv7.i480.1.i.i, 65537
  %i67.i.i482.1.i.i = bitcast i8* %162 to i32*
  store i32 %mul8.i.i481.1.i.i, i32* %i67.i.i482.1.i.i, align 4, !tbaa !40
  %add.ptr70.i.i483.1.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 28, i32 4
  %i71.i.i484.1.i.i = bitcast i8* %add.ptr70.i.i483.1.i.i to i32*
  store i32 %mul8.i.i481.1.i.i, i32* %i71.i.i484.1.i.i, align 4, !tbaa !40
  %add.ptr77.i.i485.1.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 28, i32 16
  %i79.i.i486.1.i.i = bitcast i8* %add.ptr77.i.i485.1.i.i to i32*
  store i32 %mul8.i.i481.1.i.i, i32* %i79.i.i486.1.i.i, align 4, !tbaa !40
  %add.ptr82.i.i487.1.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 28, i32 20
  %i83.i.i488.1.i.i = bitcast i8* %add.ptr82.i.i487.1.i.i to i32*
  store i32 %mul8.i.i481.1.i.i, i32* %i83.i.i488.1.i.i, align 4, !tbaa !40
  br label %if.end7.i

if.then232.1.i.i:                                 ; preds = %for.inc302.i.i
  %163 = add nsw i32 %1, -11
  %tobool235.1.i.i = icmp ugt i32 %163, 5
  br i1 %tobool235.1.i.i, label %if.end7.i, label %do.body237.1.i.i

do.body237.1.i.i:                                 ; preds = %if.then232.1.i.i
  %call239.1.i.i = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 1, i32 0, i32 4) #7
  %164 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 12, i32 0
  %conv7.i467.1.i.i = zext i16 %call239.1.i.i to i32
  %mul8.i.i468.1.i.i = mul nuw i32 %conv7.i467.1.i.i, 65537
  %i67.i.i.1.i.i = bitcast i8* %164 to i32*
  store i32 %mul8.i.i468.1.i.i, i32* %i67.i.i.1.i.i, align 4, !tbaa !40
  %add.ptr70.i.i.1.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 12, i32 4
  %i71.i.i.1.i.i = bitcast i8* %add.ptr70.i.i.1.i.i to i32*
  store i32 %mul8.i.i468.1.i.i, i32* %i71.i.i.1.i.i, align 4, !tbaa !40
  %add.ptr77.i.i.1.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 12, i32 16
  %i79.i.i.1.i.i = bitcast i8* %add.ptr77.i.i.1.i.i to i32*
  store i32 %mul8.i.i468.1.i.i, i32* %i79.i.i.1.i.i, align 4, !tbaa !40
  %add.ptr82.i.i.1.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 12, i32 20
  %i83.i.i.1.i.i = bitcast i8* %add.ptr82.i.i.1.i.i to i32*
  store i32 %mul8.i.i468.1.i.i, i32* %i83.i.i.1.i.i, align 4, !tbaa !40
  %add.ptr89.i.i.1.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 12, i32 32
  %i91.i.i.1.i.i = bitcast i8* %add.ptr89.i.i.1.i.i to i32*
  store i32 %mul8.i.i468.1.i.i, i32* %i91.i.i.1.i.i, align 4, !tbaa !40
  %add.ptr94.i.i.1.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 12, i32 36
  %i95.i.i.1.i.i = bitcast i8* %add.ptr94.i.i.1.i.i to i32*
  store i32 %mul8.i.i468.1.i.i, i32* %i95.i.i.1.i.i, align 4, !tbaa !40
  %add.ptr97.i.i.1.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 12, i32 48
  %i99.i.i.1.i.i = bitcast i8* %add.ptr97.i.i.1.i.i to i32*
  store i32 %mul8.i.i468.1.i.i, i32* %i99.i.i.1.i.i, align 4, !tbaa !40
  %add.ptr102.i.i.1.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 12, i32 52
  %i103.i.i.1.i.i = bitcast i8* %add.ptr102.i.i.1.i.i to i32*
  store i32 %mul8.i.i468.1.i.i, i32* %i103.i.i.1.i.i, align 4, !tbaa !40
  br label %if.end7.i

if.else6.i:                                       ; preds = %if.then
  %i_neighbour.i1399.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 37
  %165 = load i32, i32* %i_neighbour.i1399.i, align 32, !tbaa !56
  %and.i1400.i = and i32 %165, 1
  %tobool.i1401.i = icmp eq i32 %and.i1400.i, 0
  br i1 %tobool.i1401.i, label %if.end.i1406.i, label %land.lhs.true.i1404.i

land.lhs.true.i1404.i:                            ; preds = %if.else6.i
  %arrayidx.i1403.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 43, i32 0
  %166 = load i32, i32* %arrayidx.i1403.i, align 64, !tbaa !51
  %cmp2.i.i = icmp ne i32 %166, 0
  %spec.select.i.i = zext i1 %cmp2.i.i to i32
  br label %if.end.i1406.i

if.end.i1406.i:                                   ; preds = %land.lhs.true.i1404.i, %if.else6.i
  %ctx.0.i1405.i = phi i32 [ 0, %if.else6.i ], [ %spec.select.i.i, %land.lhs.true.i1404.i ]
  %and6.i.i = and i32 %165, 2
  %tobool7.i.i = icmp eq i32 %and6.i.i, 0
  br i1 %tobool7.i.i, label %if.end13.i.i, label %land.lhs.true8.i.i

land.lhs.true8.i.i:                               ; preds = %if.end.i1406.i
  %i_mb_type_top.i1407.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 42
  %167 = load i32, i32* %i_mb_type_top.i1407.i, align 4, !tbaa !57
  %cmp10.i.i = icmp ne i32 %167, 0
  %inc12.i.i = zext i1 %cmp10.i.i to i32
  %spec.select83.i.i = add nuw nsw i32 %ctx.0.i1405.i, %inc12.i.i
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end.i1406.i
  %ctx.1.i1408.i = phi i32 [ %ctx.0.i1405.i, %if.end.i1406.i ], [ %spec.select83.i.i, %land.lhs.true8.i.i ]
  %add.i1409.i = add nuw nsw i32 %ctx.1.i1408.i, 3
  tail call fastcc void @cabac_mb_type_intra(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 %1, i32 %add.i1409.i, i32 6, i32 7, i32 8, i32 9, i32 10) #7
  %168 = and i32 %1, -2
  %switch2577 = icmp eq i32 %168, 2
  br i1 %switch2577, label %if.end7.i, label %if.then26.i1410.i

if.then26.i1410.i:                                ; preds = %if.end13.i.i
  %b_transform_8x8_mode.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 53, i32 0, i32 15
  %169 = load i32, i32* %b_transform_8x8_mode.i.i, align 4, !tbaa !52
  %tobool27.i.i = icmp eq i32 %169, 0
  br i1 %tobool27.i.i, label %if.end29.i.i, label %if.then28.i.i

if.then28.i.i:                                    ; preds = %if.then26.i1410.i
  %h.idx.i.i = getelementptr %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 79
  %h.idx.val.i.i = load i32, i32* %h.idx.i.i, align 4, !tbaa !54
  %h.idx84.i.i = getelementptr %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 10
  %h.idx84.val.i.i = load i32, i32* %h.idx84.i.i, align 8, !tbaa !55
  %add.i.i.i = add nsw i32 %h.idx84.val.i.i, 399
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 %add.i.i.i, i32 %h.idx.val.i.i) #7
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.then28.i.i, %if.then26.i1410.i
  %b_transform_8x8.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 79
  %170 = load i32, i32* %b_transform_8x8.i.i, align 4, !tbaa !54
  %tobool31.i.i = icmp eq i32 %170, 0
  %cond.i.i = select i1 %tobool31.i.i, i32 1, i32 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %cabac_intra4x4_pred_mode.exit.i.i, %if.end29.i.i
  %i.091.i.i = phi i32 [ 0, %if.end29.i.i ], [ %add39.i.i, %cabac_intra4x4_pred_mode.exit.i.i ]
  %arrayidx.i.i1411.i = getelementptr inbounds [51 x i8], [51 x i8]* @x264_scan8, i32 0, i32 %i.091.i.i
  %171 = load i8, i8* %arrayidx.i.i1411.i, align 1, !tbaa !40
  %conv.i.i1412.i = zext i8 %171 to i32
  %sub.i.i.i = add nsw i32 %conv.i.i1412.i, -1
  %arrayidx1.i.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 0, i32 %sub.i.i.i
  %172 = load i8, i8* %arrayidx1.i.i.i, align 1, !tbaa !40
  %conv2.i.i.i = sext i8 %172 to i32
  %sub9.i.i.i = add nsw i32 %conv.i.i1412.i, -8
  %arrayidx10.i.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 0, i32 %sub9.i.i.i
  %173 = load i8, i8* %arrayidx10.i.i.i, align 1, !tbaa !40
  %conv11.i.i.i = sext i8 %173 to i32
  %add.i85.i.i = add nsw i32 %conv2.i.i.i, 1
  %arrayidx12.i.i.i = getelementptr inbounds [13 x i8], [13 x i8]* @x264_mb_pred_mode4x4_fix, i32 0, i32 %add.i85.i.i
  %174 = load i8, i8* %arrayidx12.i.i.i, align 1, !tbaa !40
  %add14.i.i.i = add nsw i32 %conv11.i.i.i, 1
  %arrayidx15.i.i.i = getelementptr inbounds [13 x i8], [13 x i8]* @x264_mb_pred_mode4x4_fix, i32 0, i32 %add14.i.i.i
  %175 = load i8, i8* %arrayidx15.i.i.i, align 1, !tbaa !40
  %cmp.i.i1413.i = icmp slt i8 %174, %175
  %..i.i.i = select i1 %cmp.i.i1413.i, i8 %174, i8 %175
  %cmp24.i.i.i = icmp slt i8 %..i.i.i, 0
  %narrow.i.i.i = select i1 %cmp24.i.i.i, i8 2, i8 %..i.i.i
  %arrayidx35.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 0, i32 %conv.i.i1412.i
  %176 = load i8, i8* %arrayidx35.i.i, align 1, !tbaa !40
  %conv.i.i = sext i8 %176 to i32
  %add36.i.i = add nsw i32 %conv.i.i, 1
  %arrayidx37.i.i = getelementptr inbounds [13 x i8], [13 x i8]* @x264_mb_pred_mode4x4_fix, i32 0, i32 %add36.i.i
  %177 = load i8, i8* %arrayidx37.i.i, align 1, !tbaa !40
  %cmp.i88.i.i = icmp eq i8 %narrow.i.i.i, %177
  br i1 %cmp.i88.i.i, label %if.then.i.i1414.i, label %if.else.i.i1416.i

if.then.i.i1414.i:                                ; preds = %for.body.i.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 68, i32 1) #7
  br label %cabac_intra4x4_pred_mode.exit.i.i

if.else.i.i1416.i:                                ; preds = %for.body.i.i
  %conv38.i.i = sext i8 %177 to i32
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 68, i32 0) #7
  %cmp1.i.i1415.i = icmp sgt i8 %177, %narrow.i.i.i
  %dec.i.i.i = sext i1 %cmp1.i.i1415.i to i32
  %spec.select.i89.i.i = add nsw i32 %dec.i.i.i, %conv38.i.i
  %and.i90.i.i = and i32 %spec.select.i89.i.i, 1
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 69, i32 %and.i90.i.i) #7
  %shr15.i.i.i = lshr i32 %spec.select.i89.i.i, 1
  %and3.i.i.i = and i32 %shr15.i.i.i, 1
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 69, i32 %and3.i.i.i) #7
  %shr4.i.i.i = ashr i32 %spec.select.i89.i.i, 2
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 69, i32 %shr4.i.i.i) #7
  br label %cabac_intra4x4_pred_mode.exit.i.i

cabac_intra4x4_pred_mode.exit.i.i:                ; preds = %if.else.i.i1416.i, %if.then.i.i1414.i
  %add39.i.i = add nuw nsw i32 %i.091.i.i, %cond.i.i
  %cmp32.i.i = icmp ult i32 %add39.i.i, 16
  br i1 %cmp32.i.i, label %for.body.i.i, label %if.end7.i

if.end7.i:                                        ; preds = %cabac_intra4x4_pred_mode.exit.i.i1351.i, %cabac_8x8_mvd.exit.i.i, %cabac_intra4x4_pred_mode.exit.i.i.i, %cabac_intra4x4_pred_mode.exit.i.i, %if.end13.i.i, %if.else305.i.i, %if.else81.i.i, %do.body237.1.i.i, %if.then232.1.i.i, %do.body267.1.i.i, %if.end262.1.i.i, %do.body292.1.i.i, %if.end287.1.i.i, %do.body116.3.i.i, %for.inc129.2.i.i, %if.then22.i.i, %do.body41.i.i, %do.body20.i.i, %do.body.i.i
  %178 = load i32, i32* %2, align 4, !tbaa !46
  %179 = load i32, i32* %4, align 16, !tbaa !47
  %sub.ptr.sub.i1422.i = sub i32 %178, %179
  %180 = load i32, i32* %i_bytes_outstanding.i.i, align 4, !tbaa !48
  %add.i1424.i = add nsw i32 %sub.ptr.sub.i1422.i, %180
  %mul.i1425.i = shl i32 %add.i1424.i, 3
  %181 = load i32, i32* %i_queue.i.i, align 8, !tbaa !49
  %add1.i1427.i = add nsw i32 %mul.i1425.i, %181
  %mul.i.neg.i = mul i32 %add.i.i, -8
  %add1.i.neg.i = sub i32 %mul.i.neg.i, %7
  %i_mv_bits.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 72, i32 21, i32 0
  %182 = load i32, i32* %i_mv_bits.i, align 8, !tbaa !58
  %sub.i = add i32 %add1.i.neg.i, %182
  %add.i = add i32 %sub.i, %add1.i1427.i
  store i32 %add.i, i32* %i_mv_bits.i, align 8, !tbaa !58
  switch i32 %1, label %if.then68.i [
    i32 3, label %if.then10.i
    i32 2, label %if.end72.i
  ]

if.then10.i:                                      ; preds = %if.end7.i
  %183 = inttoptr i32 %178 to i8*
  %and.i1428.i = and i32 %178, 3
  %idx.neg.i.i = sub nsw i32 0, %and.i1428.i
  %add.ptr.i.i = getelementptr inbounds i8, i8* %183, i32 %idx.neg.i.i
  %184 = ptrtoint i8* %add.ptr.i.i to i32
  %sub.i.i = shl nuw nsw i32 %and.i1428.i, 3
  %mul.i1431.i = sub nuw nsw i32 32, %sub.i.i
  %tobool.i1432.i = icmp eq i32 %and.i1428.i, 0
  br i1 %tobool.i1432.i, label %bs_init.exit.i, label %if.then.i1433.i

if.then.i1433.i:                                  ; preds = %if.then10.i
  %185 = bitcast i8* %add.ptr.i.i to i32*
  %186 = load i32, i32* %185, align 4, !tbaa !40
  %add5.i.i.i = tail call i32 @llvm.bswap.i32(i32 %186) #7
  %shr.i.i = lshr i32 %add5.i.i.i, %mul.i1431.i
  br label %bs_init.exit.i

bs_init.exit.i:                                   ; preds = %if.then.i1433.i, %if.then10.i
  %shr.sink.i.i = phi i32 [ %shr.i.i, %if.then.i1433.i ], [ 0, %if.then10.i ]
  %arrayidx.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 14, i32 0
  br label %for.body17.i

for.cond.cleanup16.i:                             ; preds = %bs_write.exit.i
  %arrayidx.i.1 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 14, i32 1
  br label %for.body17.i.1

for.body17.i:                                     ; preds = %bs_write.exit.i, %bs_init.exit.i
  %i.01760.i = phi i32 [ 0, %bs_init.exit.i ], [ %inc.i, %bs_write.exit.i ]
  %s.sroa.25.11759.i = phi i32 [ %mul.i1431.i, %bs_init.exit.i ], [ %sub13.i.i, %bs_write.exit.i ]
  %s.sroa.3.11758.i = phi i32 [ %184, %bs_init.exit.i ], [ %s.sroa.3.2.i, %bs_write.exit.i ]
  %s.sroa.15.11757.i = phi i32 [ %shr.sink.i.i, %bs_init.exit.i ], [ %s.sroa.15.2.i, %bs_write.exit.i ]
  %187 = load i8*, i8** %arrayidx.i, align 4, !tbaa !39
  %arrayidx19.i = getelementptr inbounds i8, i8* %187, i32 %i.01760.i
  %188 = load i8, i8* %arrayidx19.i, align 1, !tbaa !40
  %conv.i = zext i8 %188 to i32
  %cmp.i.i = icmp sgt i32 %s.sroa.25.11759.i, 8
  br i1 %cmp.i.i, label %if.then.i1437.i, label %if.else.i1441.i

if.then.i1437.i:                                  ; preds = %for.body17.i
  %shl.i.i = shl i32 %s.sroa.15.11757.i, 8
  %or.i.i = or i32 %shl.i.i, %conv.i
  br label %bs_write.exit.i

if.else.i1441.i:                                  ; preds = %for.body17.i
  %sub4.i.i = sub nsw i32 8, %s.sroa.25.11759.i
  %shl7.i.i = shl i32 %s.sroa.15.11757.i, %s.sroa.25.11759.i
  %shr.i1438.i = lshr i32 %conv.i, %sub4.i.i
  %or8.i.i = or i32 %shr.i1438.i, %shl7.i.i
  %add5.i.i.i.i = tail call i32 @llvm.bswap.i32(i32 %or8.i.i) #7
  %189 = inttoptr i32 %s.sroa.3.11758.i to i32*
  store i32 %add5.i.i.i.i, i32* %189, align 4, !tbaa !40
  %190 = inttoptr i32 %s.sroa.3.11758.i to i8*
  %add.ptr.i1440.i = getelementptr inbounds i8, i8* %190, i32 4
  %191 = ptrtoint i8* %add.ptr.i1440.i to i32
  br label %bs_write.exit.i

bs_write.exit.i:                                  ; preds = %if.else.i1441.i, %if.then.i1437.i
  %.sink = phi i32 [ 24, %if.else.i1441.i ], [ -8, %if.then.i1437.i ]
  %s.sroa.15.2.i = phi i32 [ %conv.i, %if.else.i1441.i ], [ %or.i.i, %if.then.i1437.i ]
  %s.sroa.3.2.i = phi i32 [ %191, %if.else.i1441.i ], [ %s.sroa.3.11758.i, %if.then.i1437.i ]
  %sub13.i.i = add nsw i32 %s.sroa.25.11759.i, %.sink
  %inc.i = add nuw nsw i32 %i.01760.i, 1
  %exitcond1816.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond1816.i, label %for.cond.cleanup16.i, label %for.body17.i

if.then68.i:                                      ; preds = %if.end7.i
  %h.idx1252.i = getelementptr %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 80
  %h.idx1252.val.i = load i32, i32* %h.idx1252.i, align 32, !tbaa !59
  %h.idx1253.i = getelementptr %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 12
  %h.idx1253.val.i = load i32, i32* %h.idx1253.i, align 16, !tbaa !60
  %h.idx1254.i = getelementptr %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 13
  %h.idx1254.val.i = load i32, i32* %h.idx1254.i, align 4, !tbaa !61
  %shr49.i.i = lshr i32 %h.idx1254.val.i, 1
  %and.i1480.i = and i32 %shr49.i.i, 1
  %192 = lshr i32 %h.idx1253.val.i, 1
  %and5.i.i = and i32 %192, 2
  %sub.i1481.i = sub nuw nsw i32 76, %and5.i.i
  %sub6.i.i = sub nuw nsw i32 %sub.i1481.i, %and.i1480.i
  %and8.i.i = and i32 %h.idx1252.val.i, 1
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 %sub6.i.i, i32 %and8.i.i) #7
  %sub11.i.i = sub nuw nsw i32 76, %and8.i.i
  %193 = lshr i32 %h.idx1253.val.i, 2
  %and13.i.i = and i32 %193, 2
  %sub14.i.i = sub nuw nsw i32 %sub11.i.i, %and13.i.i
  %shr1550.i.i = lshr i32 %h.idx1252.val.i, 1
  %and16.i.i = and i32 %shr1550.i.i, 1
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 %sub14.i.i, i32 %and16.i.i) #7
  %shr1751.i.i = lshr i32 %h.idx1254.val.i, 3
  %and18.i.i = and i32 %shr1751.i.i, 1
  %shl.i1482.i = shl i32 %h.idx1252.val.i, 1
  %and20.i.i = and i32 %shl.i1482.i, 2
  %sub19.i.i = sub nuw nsw i32 76, %and20.i.i
  %sub21.i.i = sub nuw nsw i32 %sub19.i.i, %and18.i.i
  %shr2252.i.i = lshr i32 %h.idx1252.val.i, 2
  %and23.i.i = and i32 %shr2252.i.i, 1
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 %sub21.i.i, i32 %and23.i.i) #7
  %and28.i.i = and i32 %h.idx1252.val.i, 2
  %sub26.i.i = sub nuw nsw i32 76, %and28.i.i
  %sub29.i.i = sub nuw nsw i32 %sub26.i.i, %and23.i.i
  %shr3053.i.i = lshr i32 %h.idx1252.val.i, 3
  %and31.i.i = and i32 %shr3053.i.i, 1
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 %sub29.i.i, i32 %and31.i.i) #7
  br label %if.end72.i

if.end72.i:                                       ; preds = %if.then68.i, %if.end7.i
  %b_transform_8x8_mode.i1493.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 53, i32 0, i32 15
  %194 = load i32, i32* %b_transform_8x8_mode.i1493.i, align 4, !tbaa !52
  %tobool.i1494.i = icmp eq i32 %194, 0
  br i1 %tobool.i1494.i, label %if.end78.i, label %if.end.i1496.i

if.end.i1496.i:                                   ; preds = %if.end72.i
  %195 = load i32, i32* %i_type.i, align 16, !tbaa !45
  %cmp.i1495.i = icmp eq i32 %195, 5
  br i1 %cmp.i1495.i, label %if.end4.i.i, label %if.then1.i.i

if.then1.i.i:                                     ; preds = %if.end.i1496.i
  %arrayidx.i1497.i = getelementptr inbounds [19 x i8], [19 x i8]* @x264_transform_allowed, i32 0, i32 %195
  %196 = load i8, i8* %arrayidx.i1497.i, align 1, !tbaa !40
  %conv.i1498.i = zext i8 %196 to i32
  br label %x264_mb_transform_8x8_allowed.exit.i

if.end4.i.i:                                      ; preds = %if.end.i1496.i
  %arraydecay6.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 78, i32 0
  %i.i.i = bitcast i8* %arraydecay6.i.i to i32*
  %197 = load i32, i32* %i.i.i, align 8, !tbaa !40
  %cmp7.i.i = icmp eq i32 %197, 50529027
  %conv8.i.i = zext i1 %cmp7.i.i to i32
  br label %x264_mb_transform_8x8_allowed.exit.i

x264_mb_transform_8x8_allowed.exit.i:             ; preds = %if.end4.i.i, %if.then1.i.i
  %retval.0.i.i = phi i32 [ %conv.i1498.i, %if.then1.i.i ], [ %conv8.i.i, %if.end4.i.i ]
  %tobool74.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool74.i, label %if.end78.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %x264_mb_transform_8x8_allowed.exit.i
  %i_cbp_luma.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 80
  %198 = load i32, i32* %i_cbp_luma.i, align 32, !tbaa !59
  %tobool76.i = icmp eq i32 %198, 0
  br i1 %tobool76.i, label %if.end78.i, label %if.then77.i

if.then77.i:                                      ; preds = %land.lhs.true.i
  %h.idx.i = getelementptr %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 79
  %h.idx.val.i = load i32, i32* %h.idx.i, align 4, !tbaa !54
  %h.idx1251.i = getelementptr %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 10
  %h.idx1251.val.i = load i32, i32* %h.idx1251.i, align 8, !tbaa !55
  %add.i1499.i = add nsw i32 %h.idx1251.val.i, 399
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 %add.i1499.i, i32 %h.idx.val.i) #7
  br label %if.end78.i

if.end78.i:                                       ; preds = %if.then77.i, %land.lhs.true.i, %x264_mb_transform_8x8_allowed.exit.i, %if.end72.i
  %i_cbp_luma80.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 80
  %199 = load i32, i32* %i_cbp_luma80.i, align 32, !tbaa !59
  %tobool81.i = icmp ne i32 %199, 0
  %cmp87.old.i = icmp eq i32 %1, 2
  %or.cond = or i1 %cmp87.old.i, %tobool81.i
  br i1 %or.cond, label %if.then89.i, label %if.end933.i

if.then89.i:                                      ; preds = %if.end78.i
  %200 = icmp ult i32 %1, 3
  %i_qp.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 93
  %201 = load i32, i32* %i_qp.i.i, align 32, !tbaa !62
  %i_last_qp.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 95
  %202 = load i32, i32* %i_last_qp.i.i, align 8, !tbaa !63
  %sub.i1500.i = sub nsw i32 %201, %202
  %203 = load i32, i32* %i_type.i, align 16, !tbaa !45
  %cmp.i1502.i = icmp eq i32 %203, 2
  br i1 %cmp.i1502.i, label %land.lhs.true.i1506.i, label %if.end.i1508.i

land.lhs.true.i1506.i:                            ; preds = %if.then89.i
  %cbp.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 63
  %204 = load i16*, i16** %cbp.i.i, align 8, !tbaa !64
  %i_mb_xy.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 12
  %205 = load i32, i32* %i_mb_xy.i.i, align 8, !tbaa !65
  %arrayidx.i1503.i = getelementptr inbounds i16, i16* %204, i32 %205
  %206 = load i16, i16* %arrayidx.i1503.i, align 2, !tbaa !37
  %tobool.i1504.i = icmp eq i16 %206, 0
  %cmp10.i1505.i = icmp sgt i32 %201, %202
  %or.cond78.i.i = and i1 %cmp10.i1505.i, %tobool.i1504.i
  br i1 %or.cond78.i.i, label %if.then.i1507.i, label %if.end.i1508.i

if.then.i1507.i:                                  ; preds = %land.lhs.true.i1506.i
  store i32 %202, i32* %i_qp.i.i, align 32, !tbaa !62
  br label %if.end.i1508.i

if.end.i1508.i:                                   ; preds = %if.then.i1507.i, %land.lhs.true.i1506.i, %if.then89.i
  %i_dqp.0.i.i = phi i32 [ %sub.i1500.i, %land.lhs.true.i1506.i ], [ 0, %if.then.i1507.i ], [ %sub.i1500.i, %if.then89.i ]
  %i_last_dqp.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 96
  %207 = load i32, i32* %i_last_dqp.i.i, align 4, !tbaa !66
  %tobool16.i.i = icmp eq i32 %207, 0
  br i1 %tobool16.i.i, label %land.end.i.i, label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %if.end.i1508.i
  %type.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 60
  %208 = load i8*, i8** %type.i.i, align 4, !tbaa !67
  %i_mb_prev_xy.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 46
  %209 = load i32, i32* %i_mb_prev_xy.i.i, align 16, !tbaa !68
  %arrayidx19.i.i = getelementptr inbounds i8, i8* %208, i32 %209
  %210 = load i8, i8* %arrayidx19.i.i, align 1, !tbaa !40
  %cmp20.i1509.i = icmp eq i8 %210, 2
  br i1 %cmp20.i1509.i, label %land.end.i.i, label %lor.rhs.i.i

lor.rhs.i.i:                                      ; preds = %land.rhs.i.i
  %cbp23.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 63
  %211 = load i16*, i16** %cbp23.i.i, align 8, !tbaa !64
  %arrayidx26.i.i = getelementptr inbounds i16, i16* %211, i32 %209
  %212 = load i16, i16* %arrayidx26.i.i, align 2, !tbaa !37
  %213 = and i16 %212, 63
  %tobool28.i.i = icmp ne i16 %213, 0
  %phitmp.i.i = zext i1 %tobool28.i.i to i32
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %lor.rhs.i.i, %land.rhs.i.i, %if.end.i1508.i
  %214 = phi i32 [ 0, %if.end.i1508.i ], [ 1, %land.rhs.i.i ], [ %phitmp.i.i, %lor.rhs.i.i ]
  %cmp29.i.i = icmp eq i32 %i_dqp.0.i.i, 0
  br i1 %cmp29.i.i, label %cabac_qp_delta.exit.i, label %if.then31.i.i

if.then31.i.i:                                    ; preds = %land.end.i.i
  %mul.i1510.i = shl nsw i32 %i_dqp.0.i.i, 1
  %sub32.i.i = sub nsw i32 1, %mul.i1510.i
  %cmp33.i1511.i = icmp sgt i32 %i_dqp.0.i.i, 0
  %spec.select.i1512.i = select i1 %cmp33.i1511.i, i32 %mul.i1510.i, i32 %sub32.i.i
  %dec.i.i = add nsw i32 %spec.select.i1512.i, -1
  %cmp37.i1513.i = icmp sgt i32 %spec.select.i1512.i, 51
  %cmp40.i.i = icmp ne i32 %dec.i.i, 52
  %or.cond.i.i = and i1 %cmp37.i1513.i, %cmp40.i.i
  %sub43.i.i = sub i32 104, %spec.select.i1512.i
  %val.1.i.i = select i1 %or.cond.i.i, i32 %sub43.i.i, i32 %dec.i.i
  br label %do.body.i1517.i

do.body.i1517.i:                                  ; preds = %do.body.i1517.i, %if.then31.i.i
  %ctx.0.i1514.i = phi i32 [ %214, %if.then31.i.i ], [ %add45.i.i, %do.body.i1517.i ]
  %val.2.i.i = phi i32 [ %val.1.i.i, %if.then31.i.i ], [ %dec46.i.i, %do.body.i1517.i ]
  %add.i1515.i = add nsw i32 %ctx.0.i1514.i, 60
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add.i1515.i, i32 1) #7
  %shr.i1516.i = ashr i32 %ctx.0.i1514.i, 1
  %add45.i.i = add nsw i32 %shr.i1516.i, 2
  %dec46.i.i = add nsw i32 %val.2.i.i, -1
  %tobool47.i.i = icmp eq i32 %dec46.i.i, 0
  br i1 %tobool47.i.i, label %cabac_qp_delta.exit.i, label %do.body.i1517.i

cabac_qp_delta.exit.i:                            ; preds = %do.body.i1517.i, %land.end.i.i
  %ctx.1.i1518.i = phi i32 [ %214, %land.end.i.i ], [ %add45.i.i, %do.body.i1517.i ]
  %add49.i.i = add nsw i32 %ctx.1.i1518.i, 60
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add49.i.i, i32 0) #7
  br i1 %cmp87.old.i, label %for.cond104.preheader.i, label %if.else166.i

for.cond104.preheader.i:                          ; preds = %cabac_qp_delta.exit.i
  %i_cbp_left.i1520.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 13
  %i_cbp_top31.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 12
  br label %do.body.i

do.body.i:                                        ; preds = %for.inc163.i, %for.cond104.preheader.i
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc163.i ], [ 16, %for.cond104.preheader.i ]
  %p103.01721.i = phi i32 [ %inc164.i, %for.inc163.i ], [ 0, %for.cond104.preheader.i ]
  %arrayidx109.i = getelementptr inbounds [6 x [3 x i8]], [6 x [3 x i8]]* @ctx_cat_plane, i32 0, i32 0, i32 %p103.01721.i
  %215 = load i8, i8* %arrayidx109.i, align 1, !tbaa !40
  %conv110.i = zext i8 %215 to i32
  %add111.i = add nuw nsw i32 %p103.01721.i, 48
  %cmp.i1519.i = icmp eq i8 %215, 3
  %216 = load i32, i32* %i_cbp_left.i1520.i, align 4, !tbaa !61
  br i1 %cmp.i1519.i, label %if.then1.i1528.i, label %if.else.i1531.i

if.then1.i1528.i:                                 ; preds = %do.body.i
  %cmp2.i1522.i = icmp eq i32 %216, -1
  %add.i1523.i = add nuw nsw i32 %p103.01721.i, 8
  %shr121.i.i = lshr i32 %216, %add.i1523.i
  %and.i1524.i = and i32 %shr121.i.i, 1
  %217 = load i32, i32* %i_cbp_top31.i.i, align 16, !tbaa !60
  %cmp8.i.i = icmp eq i32 %217, -1
  %shr14120.i.i = lshr i32 %217, %add.i1523.i
  %and15.i.i = shl nuw nsw i32 %shr14120.i.i, 1
  %and15.i.op.i = and i32 %and15.i.i, 2
  %mul.i1527.i = select i1 %cmp8.i.i, i32 2, i32 %and15.i.op.i
  %and.i1524.op.i = add nuw nsw i32 %and.i1524.i, 97
  %add19.i.i = select i1 %cmp2.i1522.i, i32 98, i32 %and.i1524.op.i
  %add20.i.i = add nuw nsw i32 %mul.i1527.i, %add19.i.i
  br label %cabac_cbf_ctxidxinc.exit.i

if.else.i1531.i:                                  ; preds = %do.body.i
  %add25.i.i = add nuw nsw i32 %p103.01721.i, 8
  %shr26118.i.i = lshr i32 %216, %add25.i.i
  %and27.i.i = and i32 %shr26118.i.i, 1
  %218 = load i32, i32* %i_cbp_top31.i.i, align 16, !tbaa !60
  %shr33119.i.i = lshr i32 %218, %add25.i.i
  %arrayidx35.i1529.i = getelementptr inbounds [14 x i16], [14 x i16]* @cabac_cbf_ctxidxinc.base_ctx, i32 0, i32 %conv110.i
  %219 = load i16, i16* %arrayidx35.i1529.i, align 2, !tbaa !37
  %conv36.i.i = zext i16 %219 to i32
  %and34.i.i = shl nuw nsw i32 %shr33119.i.i, 1
  %mul37.i.i = and i32 %and34.i.i, 2
  %add38.i.i = add nuw nsw i32 %and27.i.i, %conv36.i.i
  %add39.i1530.i = add nuw nsw i32 %add38.i.i, %mul37.i.i
  br label %cabac_cbf_ctxidxinc.exit.i

cabac_cbf_ctxidxinc.exit.i:                       ; preds = %if.else.i1531.i, %if.then1.i1528.i
  %retval.1.i.i = phi i32 [ %add20.i.i, %if.then1.i1528.i ], [ %add39.i1530.i, %if.else.i1531.i ]
  %arrayidx115.i = getelementptr inbounds [51 x i8], [51 x i8]* @x264_scan8, i32 0, i32 %add111.i
  %220 = load i8, i8* %arrayidx115.i, align 1, !tbaa !40
  %idxprom.i = zext i8 %220 to i32
  %arrayidx116.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %idxprom.i
  %221 = load i8, i8* %arrayidx116.i, align 1, !tbaa !40
  %tobool117.i = icmp eq i8 %221, 0
  br i1 %tobool117.i, label %if.else122.i, label %if.then118.i

if.then118.i:                                     ; preds = %cabac_cbf_ctxidxinc.exit.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %retval.1.i.i, i32 1) #7
  %arraydecay.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 69, i32 0, i32 %p103.01721.i, i32 0
  tail call void @x264_8_cabac_block_residual_c(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* %cb, i32 %conv110.i, i16* nonnull %arraydecay.i) #7
  br label %if.end123.i

if.else122.i:                                     ; preds = %cabac_cbf_ctxidxinc.exit.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %retval.1.i.i, i32 0) #7
  br label %if.end123.i

if.end123.i:                                      ; preds = %if.else122.i, %if.then118.i
  %222 = load i32, i32* %i_cbp_luma80.i, align 32, !tbaa !59
  %tobool126.i = icmp eq i32 %222, 0
  br i1 %tobool126.i, label %for.inc163.i, label %if.then127.i

if.then127.i:                                     ; preds = %if.end123.i
  %mul129.i = shl nsw i32 %p103.01721.i, 4
  %arrayidx139.i = getelementptr inbounds [6 x [3 x i8]], [6 x [3 x i8]]* @ctx_cat_plane, i32 0, i32 1, i32 %p103.01721.i
  %223 = load i8, i8* %arrayidx139.i, align 1, !tbaa !40
  %conv140.i = zext i8 %223 to i32
  %arrayidx72.i.i = getelementptr inbounds [14 x i16], [14 x i16]* @cabac_cbf_ctxidxinc.base_ctx, i32 0, i32 %conv140.i
  %224 = load i16, i16* %arrayidx72.i.i, align 2, !tbaa !37
  %conv73.i.i = zext i16 %224 to i32
  br label %do.body137.i

do.body137.i:                                     ; preds = %if.end156.i, %if.then127.i
  %i128.01718.i = phi i32 [ %mul129.i, %if.then127.i ], [ %inc160.i, %if.end156.i ]
  %arrayidx44.i.i = getelementptr inbounds [51 x i8], [51 x i8]* @x264_scan8, i32 0, i32 %i128.01718.i
  %225 = load i8, i8* %arrayidx44.i.i, align 1, !tbaa !40
  %conv45.i.i = zext i8 %225 to i32
  %sub46.i.i = add nsw i32 %conv45.i.i, -1
  %arrayidx47.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub46.i.i
  %226 = load i8, i8* %arrayidx47.i.i, align 1, !tbaa !40
  %sub55.i.i = add nsw i32 %conv45.i.i, -8
  %arrayidx56.i1532.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub55.i.i
  %227 = load i8, i8* %arrayidx56.i1532.i, align 1, !tbaa !40
  %tobool74.i.i = icmp eq i8 %227, 0
  %mul76.i.i = select i1 %tobool74.i.i, i32 0, i32 2
  %tobool78.i.i = icmp ne i8 %226, 0
  %lnot.ext82.i.i = zext i1 %tobool78.i.i to i32
  %add77.i.i = or i32 %mul76.i.i, %lnot.ext82.i.i
  %add83.i.i = add nuw nsw i32 %add77.i.i, %conv73.i.i
  %arrayidx147.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %conv45.i.i
  %228 = load i8, i8* %arrayidx147.i, align 1, !tbaa !40
  %tobool148.i = icmp eq i8 %228, 0
  br i1 %tobool148.i, label %if.else155.i, label %if.then149.i

if.then149.i:                                     ; preds = %do.body137.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add83.i.i, i32 1) #7
  %add.ptr.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 69, i32 3, i32 %i128.01718.i, i32 1
  tail call void @x264_8_cabac_block_residual_c(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* %cb, i32 %conv140.i, i16* nonnull %add.ptr.i) #7
  br label %if.end156.i

if.else155.i:                                     ; preds = %do.body137.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add83.i.i, i32 0) #7
  br label %if.end156.i

if.end156.i:                                      ; preds = %if.else155.i, %if.then149.i
  %inc160.i = add nuw nsw i32 %i128.01718.i, 1
  %exitcond2625 = icmp eq i32 %inc160.i, %indvars.iv
  br i1 %exitcond2625, label %for.inc163.i, label %do.body137.i

for.inc163.i:                                     ; preds = %if.end156.i, %if.end123.i
  %inc164.i = add nuw nsw i32 %p103.01721.i, 1
  %exitcond.i = icmp eq i32 %inc164.i, 3
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 16
  br i1 %exitcond.i, label %if.end933.i, label %do.body.i

if.else166.i:                                     ; preds = %cabac_qp_delta.exit.i
  %b_transform_8x8.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 79
  %229 = load i32, i32* %b_transform_8x8.i, align 4, !tbaa !54
  %tobool168.i = icmp eq i32 %229, 0
  br i1 %tobool168.i, label %for.cond731.preheader.i, label %if.then169.i

for.cond731.preheader.i:                          ; preds = %if.else166.i
  %add67.i1580.i = select i1 %200, i32 255, i32 127
  br label %for.body735.i

if.then169.i:                                     ; preds = %if.else166.i
  %i_neighbour.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 37
  %230 = load i32, i32* %i_neighbour.i, align 32, !tbaa !56
  %and.i = and i32 %230, 1
  %tobool174.i = icmp eq i32 %and.i, 0
  br i1 %tobool174.i, label %if.end383.i, label %land.lhs.true175.i

land.lhs.true175.i:                               ; preds = %if.then169.i
  %mb_transform_size.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 72
  %231 = load i8*, i8** %mb_transform_size.i, align 4, !tbaa !69
  %arrayidx178.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 47, i32 0
  %232 = load i32, i32* %arrayidx178.i, align 4, !tbaa !51
  %arrayidx179.i = getelementptr inbounds i8, i8* %231, i32 %232
  %233 = load i8, i8* %arrayidx179.i, align 1, !tbaa !40
  %tobool180.i = icmp eq i8 %233, 0
  br i1 %tobool180.i, label %land.lhs.true181.i, label %land.lhs.true280.i

land.lhs.true181.i:                               ; preds = %land.lhs.true175.i
  %cbp.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 63
  %234 = load i16*, i16** %cbp.i, align 8, !tbaa !64
  %arrayidx186.i = getelementptr inbounds i16, i16* %234, i32 %232
  %235 = load i16, i16* %arrayidx186.i, align 2, !tbaa !37
  %236 = and i16 %235, 4096
  %tobool189.i = icmp eq i16 %236, 0
  br i1 %tobool189.i, label %if.then190.i, label %land.lhs.true280.i

if.then190.i:                                     ; preds = %land.lhs.true181.i
  %arrayidx196.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 11
  %237 = load i8, i8* %arrayidx196.i, align 1, !tbaa !40
  store i8 0, i8* %arrayidx196.i, align 1, !tbaa !40
  %arrayidx210.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 19
  %238 = load i8, i8* %arrayidx210.i, align 1, !tbaa !40
  store i8 0, i8* %arrayidx210.i, align 1, !tbaa !40
  %arrayidx224.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 51
  %239 = load i8, i8* %arrayidx224.i, align 1, !tbaa !40
  store i8 0, i8* %arrayidx224.i, align 1, !tbaa !40
  %arrayidx238.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 59
  %240 = load i8, i8* %arrayidx238.i, align 1, !tbaa !40
  store i8 0, i8* %arrayidx238.i, align 1, !tbaa !40
  %arrayidx252.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 91
  %241 = load i8, i8* %arrayidx252.i, align 1, !tbaa !40
  store i8 0, i8* %arrayidx252.i, align 1, !tbaa !40
  %arrayidx266.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 99
  %242 = load i8, i8* %arrayidx266.i, align 1, !tbaa !40
  store i8 0, i8* %arrayidx266.i, align 1, !tbaa !40
  br label %land.lhs.true280.i

land.lhs.true280.i:                               ; preds = %if.then190.i, %land.lhs.true181.i, %land.lhs.true175.i
  %nnzbak.sroa.24.0.ph.i = phi i8 [ %242, %if.then190.i ], [ undef, %land.lhs.true181.i ], [ undef, %land.lhs.true175.i ]
  %nnzbak.sroa.22.0.ph.i = phi i8 [ %241, %if.then190.i ], [ undef, %land.lhs.true181.i ], [ undef, %land.lhs.true175.i ]
  %nnzbak.sroa.14.0.ph.i = phi i8 [ %240, %if.then190.i ], [ undef, %land.lhs.true181.i ], [ undef, %land.lhs.true175.i ]
  %nnzbak.sroa.12.0.ph.i = phi i8 [ %239, %if.then190.i ], [ undef, %land.lhs.true181.i ], [ undef, %land.lhs.true175.i ]
  %nnzbak.sroa.4.0.ph.i = phi i8 [ %238, %if.then190.i ], [ undef, %land.lhs.true181.i ], [ undef, %land.lhs.true175.i ]
  %nnzbak.sroa.0.0.ph.i = phi i8 [ %237, %if.then190.i ], [ undef, %land.lhs.true181.i ], [ undef, %land.lhs.true175.i ]
  %arrayidx285.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 47, i32 1
  %243 = load i32, i32* %arrayidx285.i, align 4, !tbaa !51
  %arrayidx286.i = getelementptr inbounds i8, i8* %231, i32 %243
  %244 = load i8, i8* %arrayidx286.i, align 1, !tbaa !40
  %tobool287.i = icmp eq i8 %244, 0
  br i1 %tobool287.i, label %land.lhs.true288.i, label %if.end383.i

land.lhs.true288.i:                               ; preds = %land.lhs.true280.i
  %cbp290.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 63
  %245 = load i16*, i16** %cbp290.i, align 8, !tbaa !64
  %arrayidx294.i = getelementptr inbounds i16, i16* %245, i32 %243
  %246 = load i16, i16* %arrayidx294.i, align 2, !tbaa !37
  %247 = and i16 %246, 4096
  %tobool297.i = icmp eq i16 %247, 0
  br i1 %tobool297.i, label %if.then298.i, label %if.end383.i

if.then298.i:                                     ; preds = %land.lhs.true288.i
  %arrayidx304.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 27
  %248 = load i8, i8* %arrayidx304.i, align 1, !tbaa !40
  store i8 0, i8* %arrayidx304.i, align 1, !tbaa !40
  %arrayidx318.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 35
  %249 = load i8, i8* %arrayidx318.i, align 1, !tbaa !40
  store i8 0, i8* %arrayidx318.i, align 1, !tbaa !40
  %arrayidx332.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 67
  %250 = load i8, i8* %arrayidx332.i, align 1, !tbaa !40
  store i8 0, i8* %arrayidx332.i, align 1, !tbaa !40
  %arrayidx346.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 75
  %251 = load i8, i8* %arrayidx346.i, align 1, !tbaa !40
  store i8 0, i8* %arrayidx346.i, align 1, !tbaa !40
  %arrayidx360.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 107
  %252 = load i8, i8* %arrayidx360.i, align 1, !tbaa !40
  store i8 0, i8* %arrayidx360.i, align 1, !tbaa !40
  %arrayidx374.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 115
  %253 = load i8, i8* %arrayidx374.i, align 1, !tbaa !40
  store i8 0, i8* %arrayidx374.i, align 1, !tbaa !40
  br label %if.end383.i

if.end383.i:                                      ; preds = %if.then298.i, %land.lhs.true288.i, %land.lhs.true280.i, %if.then169.i
  %nnzbak.sroa.0.01708.i = phi i8 [ %nnzbak.sroa.0.0.ph.i, %land.lhs.true280.i ], [ %nnzbak.sroa.0.0.ph.i, %land.lhs.true288.i ], [ %nnzbak.sroa.0.0.ph.i, %if.then298.i ], [ undef, %if.then169.i ]
  %nnzbak.sroa.4.01706.i = phi i8 [ %nnzbak.sroa.4.0.ph.i, %land.lhs.true280.i ], [ %nnzbak.sroa.4.0.ph.i, %land.lhs.true288.i ], [ %nnzbak.sroa.4.0.ph.i, %if.then298.i ], [ undef, %if.then169.i ]
  %nnzbak.sroa.12.01704.i = phi i8 [ %nnzbak.sroa.12.0.ph.i, %land.lhs.true280.i ], [ %nnzbak.sroa.12.0.ph.i, %land.lhs.true288.i ], [ %nnzbak.sroa.12.0.ph.i, %if.then298.i ], [ undef, %if.then169.i ]
  %nnzbak.sroa.14.01702.i = phi i8 [ %nnzbak.sroa.14.0.ph.i, %land.lhs.true280.i ], [ %nnzbak.sroa.14.0.ph.i, %land.lhs.true288.i ], [ %nnzbak.sroa.14.0.ph.i, %if.then298.i ], [ undef, %if.then169.i ]
  %nnzbak.sroa.22.01700.i = phi i8 [ %nnzbak.sroa.22.0.ph.i, %land.lhs.true280.i ], [ %nnzbak.sroa.22.0.ph.i, %land.lhs.true288.i ], [ %nnzbak.sroa.22.0.ph.i, %if.then298.i ], [ undef, %if.then169.i ]
  %nnzbak.sroa.24.01698.i = phi i8 [ %nnzbak.sroa.24.0.ph.i, %land.lhs.true280.i ], [ %nnzbak.sroa.24.0.ph.i, %land.lhs.true288.i ], [ %nnzbak.sroa.24.0.ph.i, %if.then298.i ], [ undef, %if.then169.i ]
  %nnzbak.sroa.18.0.i = phi i8 [ undef, %land.lhs.true280.i ], [ undef, %land.lhs.true288.i ], [ %251, %if.then298.i ], [ undef, %if.then169.i ]
  %nnzbak.sroa.16.0.i = phi i8 [ undef, %land.lhs.true280.i ], [ undef, %land.lhs.true288.i ], [ %250, %if.then298.i ], [ undef, %if.then169.i ]
  %nnzbak.sroa.8.0.i = phi i8 [ undef, %land.lhs.true280.i ], [ undef, %land.lhs.true288.i ], [ %249, %if.then298.i ], [ undef, %if.then169.i ]
  %nnzbak.sroa.6.0.i = phi i8 [ undef, %land.lhs.true280.i ], [ undef, %land.lhs.true288.i ], [ %248, %if.then298.i ], [ undef, %if.then169.i ]
  %nnzbak.sroa.26.0.i = phi i8 [ undef, %land.lhs.true280.i ], [ undef, %land.lhs.true288.i ], [ %252, %if.then298.i ], [ undef, %if.then169.i ]
  %nnzbak.sroa.28.0.i = phi i8 [ undef, %land.lhs.true280.i ], [ undef, %land.lhs.true288.i ], [ %253, %if.then298.i ], [ undef, %if.then169.i ]
  %and386.i = and i32 %230, 2
  %tobool387.i = icmp eq i32 %and386.i, 0
  br i1 %tobool387.i, label %if.end455.i, label %land.lhs.true388.i

land.lhs.true388.i:                               ; preds = %if.end383.i
  %mb_transform_size390.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 72
  %254 = load i8*, i8** %mb_transform_size390.i, align 4, !tbaa !69
  %i_mb_top_xy.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 48
  %255 = load i32, i32* %i_mb_top_xy.i, align 4, !tbaa !70
  %arrayidx392.i = getelementptr inbounds i8, i8* %254, i32 %255
  %256 = load i8, i8* %arrayidx392.i, align 1, !tbaa !40
  %tobool393.i = icmp eq i8 %256, 0
  br i1 %tobool393.i, label %land.lhs.true394.i, label %if.end455.i

land.lhs.true394.i:                               ; preds = %land.lhs.true388.i
  %cbp396.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 63
  %257 = load i16*, i16** %cbp396.i, align 8, !tbaa !64
  %arrayidx399.i = getelementptr inbounds i16, i16* %257, i32 %255
  %258 = load i16, i16* %arrayidx399.i, align 2, !tbaa !37
  %259 = and i16 %258, 4096
  %tobool402.i = icmp eq i16 %259, 0
  br i1 %tobool402.i, label %if.then403.i, label %if.end455.i

if.then403.i:                                     ; preds = %land.lhs.true394.i
  %arrayidx409.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 4
  %i410.i = bitcast i8* %arrayidx409.i to i32*
  %260 = load i32, i32* %i410.i, align 1, !tbaa !40
  store i32 0, i32* %i410.i, align 1, !tbaa !40
  %arrayidx426.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 44
  %i427.i = bitcast i8* %arrayidx426.i to i32*
  %261 = load i32, i32* %i427.i, align 1, !tbaa !40
  store i32 0, i32* %i427.i, align 1, !tbaa !40
  %arrayidx443.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 84
  %i444.i = bitcast i8* %arrayidx443.i to i32*
  %262 = load i32, i32* %i444.i, align 1, !tbaa !40
  store i32 0, i32* %i444.i, align 1, !tbaa !40
  br label %if.end455.i

if.end455.i:                                      ; preds = %if.then403.i, %land.lhs.true394.i, %land.lhs.true388.i, %if.end383.i
  %nnzbak.sroa.20.0.i = phi i32 [ undef, %land.lhs.true388.i ], [ undef, %land.lhs.true394.i ], [ %261, %if.then403.i ], [ undef, %if.end383.i ]
  %nnzbak.sroa.10.0.i = phi i32 [ undef, %land.lhs.true388.i ], [ undef, %land.lhs.true394.i ], [ %260, %if.then403.i ], [ undef, %if.end383.i ]
  %nnzbak.sroa.30.0.i = phi i32 [ undef, %land.lhs.true388.i ], [ undef, %land.lhs.true394.i ], [ %262, %if.then403.i ], [ undef, %if.end383.i ]
  %add67.i.i = select i1 %200, i32 255, i32 127
  %263 = load i32, i32* %i_cbp_luma80.i, align 32, !tbaa !59
  %tobool4661732.i = icmp eq i32 %263, 0
  br i1 %tobool4661732.i, label %for.cond.cleanup471.critedge.i, label %land.rhs.us.i

land.rhs.us.i:                                    ; preds = %if.end455.i, %if.end500.us.i
  %msk.01734.us.i = phi i32 [ %shr470.us.i, %if.end500.us.i ], [ %263, %if.end455.i ]
  %i462.01733.us.i = phi i32 [ %inc504.us.i, %if.end500.us.i ], [ 0, %if.end455.i ]
  %arrayidx.i1534.us.i = getelementptr inbounds [16 x i8], [16 x i8]* @x264_ctz_4bit.lut, i32 0, i32 %msk.01734.us.i
  %264 = load i8, i8* %arrayidx.i1534.us.i, align 1, !tbaa !40
  %conv.i1535.us.i = zext i8 %264 to i32
  %add468.us.i = add nsw i32 %i462.01733.us.i, %conv.i1535.us.i
  %add469.us.i = add nuw nsw i32 %conv.i1535.us.i, 1
  %shr470.us.i = ashr i32 %msk.01734.us.i, %add469.us.i
  %mul477.us.i = shl i32 %add468.us.i, 2
  %arrayidx44.i1536.us.i = getelementptr inbounds [51 x i8], [51 x i8]* @x264_scan8, i32 0, i32 %mul477.us.i
  %265 = load i8, i8* %arrayidx44.i1536.us.i, align 1, !tbaa !40
  %conv45.i1537.us.i = zext i8 %265 to i32
  %sub46.i1538.us.i = add nsw i32 %conv45.i1537.us.i, -1
  %arrayidx47.i1539.us.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub46.i1538.us.i
  %266 = load i8, i8* %arrayidx47.i1539.us.i, align 1, !tbaa !40
  %conv48.i1540.us.i = zext i8 %266 to i32
  %sub55.i1541.us.i = add nsw i32 %conv45.i1537.us.i, -8
  %arrayidx56.i1542.us.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub55.i1541.us.i
  %267 = load i8, i8* %arrayidx56.i1542.us.i, align 1, !tbaa !40
  %conv57.i1543.us.i = zext i8 %267 to i32
  %and68.i1546.us.i = and i32 %add67.i.i, %conv48.i1540.us.i
  %and71.i1547.us.i = and i32 %add67.i.i, %conv57.i1543.us.i
  %tobool74.i1550.us.i = icmp eq i32 %and71.i1547.us.i, 0
  %mul76.i1551.us.i = select i1 %tobool74.i1550.us.i, i32 0, i32 2
  %tobool78.i1552.us.i = icmp ne i32 %and68.i1546.us.i, 0
  %lnot.ext82.i1553.us.i = zext i1 %tobool78.i1552.us.i to i32
  %add77.i1554.us.i = or i32 %mul76.i1551.us.i, %lnot.ext82.i1553.us.i
  %add83.i1555.us.i = or i32 %add77.i1554.us.i, 1012
  %arrayidx489.us.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %conv45.i1537.us.i
  %268 = load i8, i8* %arrayidx489.us.i, align 1, !tbaa !40
  %tobool490.us.i = icmp eq i8 %268, 0
  br i1 %tobool490.us.i, label %if.else499.us.i, label %if.then491.us.i

if.then491.us.i:                                  ; preds = %land.rhs.us.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add83.i1555.us.i, i32 1) #7
  %arraydecay498.us.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 69, i32 2, i32 %add468.us.i, i32 0
  tail call void @x264_8_cabac_block_residual_c(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* %cb, i32 5, i16* nonnull %arraydecay498.us.i) #7
  br label %if.end500.us.i

if.else499.us.i:                                  ; preds = %land.rhs.us.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add83.i1555.us.i, i32 0) #7
  br label %if.end500.us.i

if.end500.us.i:                                   ; preds = %if.else499.us.i, %if.then491.us.i
  %inc504.us.i = add nsw i32 %add468.us.i, 1
  %tobool466.us.i = icmp eq i32 %shr470.us.i, 0
  br i1 %tobool466.us.i, label %for.cond.cleanup471.critedge.i, label %land.rhs.us.i

for.cond.cleanup471.critedge.i:                   ; preds = %if.end500.us.i, %if.end455.i
  %269 = load i32, i32* %i_cbp_luma80.i, align 32, !tbaa !59
  %tobool4661732.i.1 = icmp eq i32 %269, 0
  br i1 %tobool4661732.i.1, label %for.cond.cleanup471.critedge.i.1, label %land.rhs.us.i.1

land.lhs.true513.i:                               ; preds = %for.cond.cleanup471.critedge.i.2
  %mb_transform_size515.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 72
  %270 = load i8*, i8** %mb_transform_size515.i, align 4, !tbaa !69
  %arrayidx518.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 47, i32 0
  %271 = load i32, i32* %arrayidx518.i, align 4, !tbaa !51
  %arrayidx519.i = getelementptr inbounds i8, i8* %270, i32 %271
  %272 = load i8, i8* %arrayidx519.i, align 1, !tbaa !40
  %tobool520.i = icmp eq i8 %272, 0
  br i1 %tobool520.i, label %land.lhs.true521.i, label %land.lhs.true585.i

land.lhs.true521.i:                               ; preds = %land.lhs.true513.i
  %cbp523.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 63
  %273 = load i16*, i16** %cbp523.i, align 8, !tbaa !64
  %arrayidx527.i = getelementptr inbounds i16, i16* %273, i32 %271
  %274 = load i16, i16* %arrayidx527.i, align 2, !tbaa !37
  %275 = and i16 %274, 4096
  %tobool530.i = icmp eq i16 %275, 0
  br i1 %tobool530.i, label %if.then531.i, label %land.lhs.true585.i

if.then531.i:                                     ; preds = %land.lhs.true521.i
  %arrayidx539.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 11
  store i8 %nnzbak.sroa.0.01708.i, i8* %arrayidx539.i, align 1, !tbaa !40
  %arrayidx547.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 19
  store i8 %nnzbak.sroa.4.01706.i, i8* %arrayidx547.i, align 1, !tbaa !40
  %arrayidx555.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 51
  store i8 %nnzbak.sroa.12.01704.i, i8* %arrayidx555.i, align 1, !tbaa !40
  %arrayidx563.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 59
  store i8 %nnzbak.sroa.14.01702.i, i8* %arrayidx563.i, align 1, !tbaa !40
  %arrayidx571.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 91
  store i8 %nnzbak.sroa.22.01700.i, i8* %arrayidx571.i, align 1, !tbaa !40
  %arrayidx579.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 99
  store i8 %nnzbak.sroa.24.01698.i, i8* %arrayidx579.i, align 1, !tbaa !40
  br label %land.lhs.true585.i

land.lhs.true585.i:                               ; preds = %if.then531.i, %land.lhs.true521.i, %land.lhs.true513.i
  %arrayidx590.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 47, i32 1
  %276 = load i32, i32* %arrayidx590.i, align 4, !tbaa !51
  %arrayidx591.i = getelementptr inbounds i8, i8* %270, i32 %276
  %277 = load i8, i8* %arrayidx591.i, align 1, !tbaa !40
  %tobool592.i = icmp eq i8 %277, 0
  br i1 %tobool592.i, label %land.lhs.true593.i, label %if.end652.i

land.lhs.true593.i:                               ; preds = %land.lhs.true585.i
  %cbp595.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 63
  %278 = load i16*, i16** %cbp595.i, align 8, !tbaa !64
  %arrayidx599.i = getelementptr inbounds i16, i16* %278, i32 %276
  %279 = load i16, i16* %arrayidx599.i, align 2, !tbaa !37
  %280 = and i16 %279, 4096
  %tobool602.i = icmp eq i16 %280, 0
  br i1 %tobool602.i, label %if.then603.i, label %if.end652.i

if.then603.i:                                     ; preds = %land.lhs.true593.i
  %arrayidx611.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 27
  store i8 %nnzbak.sroa.6.0.i, i8* %arrayidx611.i, align 1, !tbaa !40
  %arrayidx619.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 35
  store i8 %nnzbak.sroa.8.0.i, i8* %arrayidx619.i, align 1, !tbaa !40
  %arrayidx627.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 67
  store i8 %nnzbak.sroa.16.0.i, i8* %arrayidx627.i, align 1, !tbaa !40
  %arrayidx635.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 75
  store i8 %nnzbak.sroa.18.0.i, i8* %arrayidx635.i, align 1, !tbaa !40
  %arrayidx643.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 107
  store i8 %nnzbak.sroa.26.0.i, i8* %arrayidx643.i, align 1, !tbaa !40
  %arrayidx651.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 115
  store i8 %nnzbak.sroa.28.0.i, i8* %arrayidx651.i, align 1, !tbaa !40
  br label %if.end652.i

if.end652.i:                                      ; preds = %if.then603.i, %land.lhs.true593.i, %land.lhs.true585.i, %for.cond.cleanup471.critedge.i.2
  %and655.i = and i32 %996, 2
  %tobool656.i = icmp eq i32 %and655.i, 0
  br i1 %tobool656.i, label %if.end933.i, label %land.lhs.true657.i

land.lhs.true657.i:                               ; preds = %if.end652.i
  %mb_transform_size659.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 72
  %281 = load i8*, i8** %mb_transform_size659.i, align 4, !tbaa !69
  %i_mb_top_xy661.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 48
  %282 = load i32, i32* %i_mb_top_xy661.i, align 4, !tbaa !70
  %arrayidx662.i = getelementptr inbounds i8, i8* %281, i32 %282
  %283 = load i8, i8* %arrayidx662.i, align 1, !tbaa !40
  %tobool663.i = icmp eq i8 %283, 0
  br i1 %tobool663.i, label %land.lhs.true664.i, label %if.end933.i

land.lhs.true664.i:                               ; preds = %land.lhs.true657.i
  %cbp666.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 63
  %284 = load i16*, i16** %cbp666.i, align 8, !tbaa !64
  %arrayidx669.i = getelementptr inbounds i16, i16* %284, i32 %282
  %285 = load i16, i16* %arrayidx669.i, align 2, !tbaa !37
  %286 = and i16 %285, 4096
  %tobool672.i = icmp eq i16 %286, 0
  br i1 %tobool672.i, label %if.then673.i, label %if.end933.i

if.then673.i:                                     ; preds = %land.lhs.true664.i
  %arrayidx682.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 4
  %i683.i = bitcast i8* %arrayidx682.i to i32*
  store i32 %nnzbak.sroa.10.0.i, i32* %i683.i, align 1, !tbaa !40
  %arrayidx692.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 44
  %i693.i = bitcast i8* %arrayidx692.i to i32*
  store i32 %nnzbak.sroa.20.0.i, i32* %i693.i, align 1, !tbaa !40
  %arrayidx702.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 84
  %i703.i = bitcast i8* %arrayidx702.i to i32*
  store i32 %nnzbak.sroa.30.0.i, i32* %i703.i, align 1, !tbaa !40
  br label %if.end933.i

for.body735.i:                                    ; preds = %for.cond.cleanup748.critedge.i, %for.cond731.preheader.i
  %p730.01730.i = phi i32 [ 0, %for.cond731.preheader.i ], [ %inc798.i, %for.cond.cleanup748.critedge.i ]
  %287 = load i32, i32* %i_cbp_luma80.i, align 32, !tbaa !59
  %tobool7411726.i = icmp eq i32 %287, 0
  br i1 %tobool7411726.i, label %for.cond.cleanup748.critedge.i, label %land.rhs742.lr.ph.i

land.rhs742.lr.ph.i:                              ; preds = %for.body735.i
  %arrayidx758.i = getelementptr inbounds [6 x [3 x i8]], [6 x [3 x i8]]* @ctx_cat_plane, i32 0, i32 2, i32 %p730.01730.i
  %288 = load i8, i8* %arrayidx758.i, align 1, !tbaa !40
  %conv759.i = zext i8 %288 to i32
  %mul762.i = shl nsw i32 %p730.01730.i, 4
  %arrayidx60.i1572.i = getelementptr inbounds [14 x i16], [14 x i16]* @cabac_cbf_ctxidxinc.base_ctx, i32 0, i32 %conv759.i
  %289 = load i16, i16* %arrayidx60.i1572.i, align 2, !tbaa !37
  %conv73.i1584.us.i = zext i16 %289 to i32
  br label %land.rhs742.i

land.rhs742.i:                                    ; preds = %for.cond.cleanup754.i, %land.rhs742.lr.ph.i
  %msk736.01728.i = phi i32 [ %287, %land.rhs742.lr.ph.i ], [ %shr746.i, %for.cond.cleanup754.i ]
  %i8x8.01727.i = phi i32 [ 0, %land.rhs742.lr.ph.i ], [ %inc795.i, %for.cond.cleanup754.i ]
  %arrayidx.i1560.i = getelementptr inbounds [16 x i8], [16 x i8]* @x264_ctz_4bit.lut, i32 0, i32 %msk736.01728.i
  %290 = load i8, i8* %arrayidx.i1560.i, align 1, !tbaa !40
  %conv.i1561.i = zext i8 %290 to i32
  %add744.i = add nsw i32 %i8x8.01727.i, %conv.i1561.i
  %add745.i = add nuw nsw i32 %conv.i1561.i, 1
  %shr746.i = ashr i32 %msk736.01728.i, %add745.i
  %mul760.i = shl i32 %add744.i, 2
  %add761.i = add i32 %mul760.i, %mul762.i
  %arrayidx44.i1562.us.i = getelementptr inbounds [51 x i8], [51 x i8]* @x264_scan8, i32 0, i32 %add761.i
  %291 = load i8, i8* %arrayidx44.i1562.us.i, align 1, !tbaa !40
  %conv45.i1563.us.i = zext i8 %291 to i32
  %sub55.i1567.us.i = add nsw i32 %conv45.i1563.us.i, -8
  %arrayidx56.i1568.us.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub55.i1567.us.i
  %292 = load i8, i8* %arrayidx56.i1568.us.i, align 1, !tbaa !40
  %conv57.i1569.us.i = zext i8 %292 to i32
  %sub46.i1564.us.i = add nsw i32 %conv45.i1563.us.i, -1
  %arrayidx47.i1565.us.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub46.i1564.us.i
  %293 = load i8, i8* %arrayidx47.i1565.us.i, align 1, !tbaa !40
  %conv48.i1566.us.i = zext i8 %293 to i32
  %and68.i1581.us.i = and i32 %add67.i1580.i, %conv48.i1566.us.i
  %and71.i1582.us.i = and i32 %add67.i1580.i, %conv57.i1569.us.i
  %tobool74.i1585.us.i = icmp eq i32 %and71.i1582.us.i, 0
  %mul76.i1586.us.i = select i1 %tobool74.i1585.us.i, i32 0, i32 2
  %tobool78.i1587.us.i = icmp ne i32 %and68.i1581.us.i, 0
  %lnot.ext82.i1588.us.i = zext i1 %tobool78.i1587.us.i to i32
  %add77.i1589.us.i = or i32 %mul76.i1586.us.i, %lnot.ext82.i1588.us.i
  %add83.i1590.us.i = add nuw nsw i32 %add77.i1589.us.i, %conv73.i1584.us.i
  %arrayidx774.us.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %conv45.i1563.us.i
  %294 = load i8, i8* %arrayidx774.us.i, align 1, !tbaa !40
  %tobool775.us.i = icmp eq i8 %294, 0
  br i1 %tobool775.us.i, label %if.else787.us.i, label %if.then776.us.i

if.then776.us.i:                                  ; preds = %land.rhs742.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add83.i1590.us.i, i32 1) #7
  %arraydecay786.us.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 69, i32 3, i32 %add761.i, i32 0
  tail call void @x264_8_cabac_block_residual_c(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* %cb, i32 %conv759.i, i16* nonnull %arraydecay786.us.i) #7
  br label %if.end788.us.i

if.else787.us.i:                                  ; preds = %land.rhs742.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add83.i1590.us.i, i32 0) #7
  br label %if.end788.us.i

if.end788.us.i:                                   ; preds = %if.else787.us.i, %if.then776.us.i
  %add763.us.1.i = or i32 %add761.i, 1
  %arrayidx44.i1562.us.1.i = getelementptr inbounds [51 x i8], [51 x i8]* @x264_scan8, i32 0, i32 %add763.us.1.i
  %295 = load i8, i8* %arrayidx44.i1562.us.1.i, align 1, !tbaa !40
  %conv45.i1563.us.1.i = zext i8 %295 to i32
  %sub46.i1564.us.1.i = add nsw i32 %conv45.i1563.us.1.i, -1
  %arrayidx47.i1565.us.1.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub46.i1564.us.1.i
  %296 = load i8, i8* %arrayidx47.i1565.us.1.i, align 1, !tbaa !40
  %conv48.i1566.us.1.i = zext i8 %296 to i32
  %sub55.i1567.us.1.i = add nsw i32 %conv45.i1563.us.1.i, -8
  %arrayidx56.i1568.us.1.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub55.i1567.us.1.i
  %297 = load i8, i8* %arrayidx56.i1568.us.1.i, align 1, !tbaa !40
  %conv57.i1569.us.1.i = zext i8 %297 to i32
  %and68.i1581.us.1.i = and i32 %add67.i1580.i, %conv48.i1566.us.1.i
  %and71.i1582.us.1.i = and i32 %add67.i1580.i, %conv57.i1569.us.1.i
  %tobool74.i1585.us.1.i = icmp eq i32 %and71.i1582.us.1.i, 0
  %mul76.i1586.us.1.i = select i1 %tobool74.i1585.us.1.i, i32 0, i32 2
  %tobool78.i1587.us.1.i = icmp ne i32 %and68.i1581.us.1.i, 0
  %lnot.ext82.i1588.us.1.i = zext i1 %tobool78.i1587.us.1.i to i32
  %add77.i1589.us.1.i = or i32 %mul76.i1586.us.1.i, %lnot.ext82.i1588.us.1.i
  %add83.i1590.us.1.i = add nuw nsw i32 %add77.i1589.us.1.i, %conv73.i1584.us.i
  %arrayidx774.us.1.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %conv45.i1563.us.1.i
  %298 = load i8, i8* %arrayidx774.us.1.i, align 1, !tbaa !40
  %tobool775.us.1.i = icmp eq i8 %298, 0
  br i1 %tobool775.us.1.i, label %if.else787.us.1.i, label %if.then776.us.1.i

for.cond.cleanup748.critedge.i:                   ; preds = %for.cond.cleanup754.i, %for.body735.i
  %inc798.i = add nuw nsw i32 %p730.01730.i, 1
  %exitcond1812.i = icmp eq i32 %inc798.i, 3
  br i1 %exitcond1812.i, label %if.end933.i, label %for.body735.i

for.cond.cleanup754.i:                            ; preds = %if.else787.us.3.i, %if.then776.us.3.i
  %inc795.i = add nsw i32 %add744.i, 1
  %tobool741.i = icmp eq i32 %shr746.i, 0
  br i1 %tobool741.i, label %for.cond.cleanup748.critedge.i, label %land.rhs742.i

if.end933.i:                                      ; preds = %for.cond.cleanup748.critedge.i, %for.inc163.i, %if.end78.i, %if.end652.i, %land.lhs.true657.i, %land.lhs.true664.i, %if.then673.i
  %299 = load i32, i32* %2, align 4, !tbaa !46
  %300 = load i32, i32* %4, align 16, !tbaa !47
  %sub.ptr.sub.i1259.i = sub i32 %299, %300
  %301 = load i32, i32* %i_bytes_outstanding.i.i, align 4, !tbaa !48
  %add.i1261.i = add nsw i32 %sub.ptr.sub.i1259.i, %301
  %302 = load i32, i32* %i_queue.i.i, align 8, !tbaa !49
  %i_tex_bits938.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 72, i32 21, i32 1
  %add1.i1264.i = sub i32 %302, %add1.i1427.i
  br label %if.end6

if.then776.us.1.i:                                ; preds = %if.end788.us.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add83.i1590.us.1.i, i32 1) #7
  %arraydecay786.us.1.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 69, i32 3, i32 %add763.us.1.i, i32 0
  tail call void @x264_8_cabac_block_residual_c(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* %cb, i32 %conv759.i, i16* nonnull %arraydecay786.us.1.i) #7
  br label %if.end788.us.1.i

if.else787.us.1.i:                                ; preds = %if.end788.us.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add83.i1590.us.1.i, i32 0) #7
  br label %if.end788.us.1.i

if.end788.us.1.i:                                 ; preds = %if.else787.us.1.i, %if.then776.us.1.i
  %add763.us.2.i = or i32 %add761.i, 2
  %arrayidx44.i1562.us.2.i = getelementptr inbounds [51 x i8], [51 x i8]* @x264_scan8, i32 0, i32 %add763.us.2.i
  %303 = load i8, i8* %arrayidx44.i1562.us.2.i, align 1, !tbaa !40
  %conv45.i1563.us.2.i = zext i8 %303 to i32
  %sub46.i1564.us.2.i = add nsw i32 %conv45.i1563.us.2.i, -1
  %arrayidx47.i1565.us.2.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub46.i1564.us.2.i
  %304 = load i8, i8* %arrayidx47.i1565.us.2.i, align 1, !tbaa !40
  %conv48.i1566.us.2.i = zext i8 %304 to i32
  %sub55.i1567.us.2.i = add nsw i32 %conv45.i1563.us.2.i, -8
  %arrayidx56.i1568.us.2.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub55.i1567.us.2.i
  %305 = load i8, i8* %arrayidx56.i1568.us.2.i, align 1, !tbaa !40
  %conv57.i1569.us.2.i = zext i8 %305 to i32
  %and68.i1581.us.2.i = and i32 %add67.i1580.i, %conv48.i1566.us.2.i
  %and71.i1582.us.2.i = and i32 %add67.i1580.i, %conv57.i1569.us.2.i
  %tobool74.i1585.us.2.i = icmp eq i32 %and71.i1582.us.2.i, 0
  %mul76.i1586.us.2.i = select i1 %tobool74.i1585.us.2.i, i32 0, i32 2
  %tobool78.i1587.us.2.i = icmp ne i32 %and68.i1581.us.2.i, 0
  %lnot.ext82.i1588.us.2.i = zext i1 %tobool78.i1587.us.2.i to i32
  %add77.i1589.us.2.i = or i32 %mul76.i1586.us.2.i, %lnot.ext82.i1588.us.2.i
  %add83.i1590.us.2.i = add nuw nsw i32 %add77.i1589.us.2.i, %conv73.i1584.us.i
  %arrayidx774.us.2.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %conv45.i1563.us.2.i
  %306 = load i8, i8* %arrayidx774.us.2.i, align 1, !tbaa !40
  %tobool775.us.2.i = icmp eq i8 %306, 0
  br i1 %tobool775.us.2.i, label %if.else787.us.2.i, label %if.then776.us.2.i

if.then776.us.2.i:                                ; preds = %if.end788.us.1.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add83.i1590.us.2.i, i32 1) #7
  %arraydecay786.us.2.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 69, i32 3, i32 %add763.us.2.i, i32 0
  tail call void @x264_8_cabac_block_residual_c(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* %cb, i32 %conv759.i, i16* nonnull %arraydecay786.us.2.i) #7
  br label %if.end788.us.2.i

if.else787.us.2.i:                                ; preds = %if.end788.us.1.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add83.i1590.us.2.i, i32 0) #7
  br label %if.end788.us.2.i

if.end788.us.2.i:                                 ; preds = %if.else787.us.2.i, %if.then776.us.2.i
  %add763.us.3.i = or i32 %add761.i, 3
  %arrayidx44.i1562.us.3.i = getelementptr inbounds [51 x i8], [51 x i8]* @x264_scan8, i32 0, i32 %add763.us.3.i
  %307 = load i8, i8* %arrayidx44.i1562.us.3.i, align 1, !tbaa !40
  %conv45.i1563.us.3.i = zext i8 %307 to i32
  %sub46.i1564.us.3.i = add nsw i32 %conv45.i1563.us.3.i, -1
  %arrayidx47.i1565.us.3.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub46.i1564.us.3.i
  %308 = load i8, i8* %arrayidx47.i1565.us.3.i, align 1, !tbaa !40
  %conv48.i1566.us.3.i = zext i8 %308 to i32
  %sub55.i1567.us.3.i = add nsw i32 %conv45.i1563.us.3.i, -8
  %arrayidx56.i1568.us.3.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub55.i1567.us.3.i
  %309 = load i8, i8* %arrayidx56.i1568.us.3.i, align 1, !tbaa !40
  %conv57.i1569.us.3.i = zext i8 %309 to i32
  %and68.i1581.us.3.i = and i32 %add67.i1580.i, %conv48.i1566.us.3.i
  %and71.i1582.us.3.i = and i32 %add67.i1580.i, %conv57.i1569.us.3.i
  %tobool74.i1585.us.3.i = icmp eq i32 %and71.i1582.us.3.i, 0
  %mul76.i1586.us.3.i = select i1 %tobool74.i1585.us.3.i, i32 0, i32 2
  %tobool78.i1587.us.3.i = icmp ne i32 %and68.i1581.us.3.i, 0
  %lnot.ext82.i1588.us.3.i = zext i1 %tobool78.i1587.us.3.i to i32
  %add77.i1589.us.3.i = or i32 %mul76.i1586.us.3.i, %lnot.ext82.i1588.us.3.i
  %add83.i1590.us.3.i = add nuw nsw i32 %add77.i1589.us.3.i, %conv73.i1584.us.i
  %arrayidx774.us.3.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %conv45.i1563.us.3.i
  %310 = load i8, i8* %arrayidx774.us.3.i, align 1, !tbaa !40
  %tobool775.us.3.i = icmp eq i8 %310, 0
  br i1 %tobool775.us.3.i, label %if.else787.us.3.i, label %if.then776.us.3.i

if.then776.us.3.i:                                ; preds = %if.end788.us.2.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add83.i1590.us.3.i, i32 1) #7
  %arraydecay786.us.3.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 69, i32 3, i32 %add763.us.3.i, i32 0
  tail call void @x264_8_cabac_block_residual_c(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* %cb, i32 %conv759.i, i16* nonnull %arraydecay786.us.3.i) #7
  br label %for.cond.cleanup754.i

if.else787.us.3.i:                                ; preds = %if.end788.us.2.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add83.i1590.us.3.i, i32 0) #7
  br label %for.cond.cleanup754.i

if.then4:                                         ; preds = %entry
  %i_type.i10 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 76
  %311 = load i32, i32* %i_type.i10, align 16, !tbaa !45
  %p.i.i11 = getelementptr inbounds %struct.x264_cabac_t, %struct.x264_cabac_t* %cb, i32 0, i32 5
  %312 = bitcast i8** %p.i.i11 to i32*
  %313 = load i32, i32* %312, align 4, !tbaa !46
  %p_start.i.i12 = getelementptr inbounds %struct.x264_cabac_t, %struct.x264_cabac_t* %cb, i32 0, i32 4
  %314 = bitcast i8** %p_start.i.i12 to i32*
  %315 = load i32, i32* %314, align 16, !tbaa !47
  %sub.ptr.sub.i.i13 = sub i32 %313, %315
  %i_bytes_outstanding.i.i14 = getelementptr inbounds %struct.x264_cabac_t, %struct.x264_cabac_t* %cb, i32 0, i32 3
  %316 = load i32, i32* %i_bytes_outstanding.i.i14, align 4, !tbaa !48
  %add.i.i15 = add nsw i32 %sub.ptr.sub.i.i13, %316
  %i_queue.i.i16 = getelementptr inbounds %struct.x264_cabac_t, %struct.x264_cabac_t* %cb, i32 0, i32 2
  %317 = load i32, i32* %i_queue.i.i16, align 8, !tbaa !49
  %i_type1.i17 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 51, i32 2
  %318 = load i32, i32* %i_type1.i17, align 8, !tbaa !36
  switch i32 %318, label %if.else6.i756 [
    i32 0, label %if.then.i18
    i32 1, label %if.then5.i309
  ]

if.then.i18:                                      ; preds = %if.then4
  switch i32 %311, label %if.else81.i.i225 [
    i32 4, label %if.then.i.i21
    i32 5, label %if.then58.i.i99
  ]

if.then.i.i21:                                    ; preds = %if.then.i18
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 14, i32 0) #7
  %i_partition.i.i19 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 77
  %319 = load i32, i32* %i_partition.i.i19, align 4, !tbaa !50
  %cmp1.i.i20 = icmp eq i32 %319, 16
  br i1 %cmp1.i.i20, label %if.then2.i.i24, label %if.else.i.i46

if.then2.i.i24:                                   ; preds = %if.then.i.i21
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 15, i32 0) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 16, i32 0) #7
  %arrayidx.i.i22 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 17, i32 0
  %320 = load i32, i32* %arrayidx.i.i22, align 4, !tbaa !51
  %cmp4.i.i23 = icmp sgt i32 %320, 1
  br i1 %cmp4.i.i23, label %if.then5.i.i25, label %do.body.i.i44

if.then5.i.i25:                                   ; preds = %if.then2.i.i24
  tail call fastcc void @cabac_ref_p(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0) #7
  br label %do.body.i.i44

do.body.i.i44:                                    ; preds = %if.then5.i.i25, %if.then2.i.i24
  %call.i.i26 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 0, i32 4) #7
  %321 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 0
  %conv7.i.i.i27 = zext i16 %call.i.i26 to i32
  %mul8.i.i.i.i28 = mul nuw i32 %conv7.i.i.i27, 65537
  %i67.i.i.i.i29 = bitcast i8* %321 to i32*
  store i32 %mul8.i.i.i.i28, i32* %i67.i.i.i.i29, align 4, !tbaa !40
  %add.ptr70.i.i.i.i30 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 4
  %i71.i.i.i.i31 = bitcast i8* %add.ptr70.i.i.i.i30 to i32*
  store i32 %mul8.i.i.i.i28, i32* %i71.i.i.i.i31, align 4, !tbaa !40
  %add.ptr77.i.i.i.i32 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 16
  %i79.i.i.i.i33 = bitcast i8* %add.ptr77.i.i.i.i32 to i32*
  store i32 %mul8.i.i.i.i28, i32* %i79.i.i.i.i33, align 4, !tbaa !40
  %add.ptr82.i.i.i.i34 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 20
  %i83.i.i.i.i35 = bitcast i8* %add.ptr82.i.i.i.i34 to i32*
  store i32 %mul8.i.i.i.i28, i32* %i83.i.i.i.i35, align 4, !tbaa !40
  %add.ptr89.i.i.i.i36 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 32
  %i91.i.i.i.i37 = bitcast i8* %add.ptr89.i.i.i.i36 to i32*
  store i32 %mul8.i.i.i.i28, i32* %i91.i.i.i.i37, align 4, !tbaa !40
  %add.ptr94.i.i.i.i38 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 36
  %i95.i.i.i.i39 = bitcast i8* %add.ptr94.i.i.i.i38 to i32*
  store i32 %mul8.i.i.i.i28, i32* %i95.i.i.i.i39, align 4, !tbaa !40
  %add.ptr97.i.i.i.i40 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 48
  %i99.i.i.i.i41 = bitcast i8* %add.ptr97.i.i.i.i40 to i32*
  store i32 %mul8.i.i.i.i28, i32* %i99.i.i.i.i41, align 4, !tbaa !40
  %add.ptr102.i.i.i.i42 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 52
  %i103.i.i.i.i43 = bitcast i8* %add.ptr102.i.i.i.i42 to i32*
  store i32 %mul8.i.i.i.i28, i32* %i103.i.i.i.i43, align 4, !tbaa !40
  br label %if.end7.i832

if.else.i.i46:                                    ; preds = %if.then.i.i21
  %cmp9.i.i45 = icmp eq i32 %319, 14
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 15, i32 1) #7
  br i1 %cmp9.i.i45, label %if.then11.i.i49, label %if.else32.i.i74

if.then11.i.i49:                                  ; preds = %if.else.i.i46
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 17, i32 1) #7
  %arrayidx15.i.i47 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 17, i32 0
  %322 = load i32, i32* %arrayidx15.i.i47, align 4, !tbaa !51
  %cmp16.i.i48 = icmp sgt i32 %322, 1
  br i1 %cmp16.i.i48, label %if.then18.i.i50, label %do.body20.i.i71

if.then18.i.i50:                                  ; preds = %if.then11.i.i49
  tail call fastcc void @cabac_ref_p(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0) #7
  tail call fastcc void @cabac_ref_p(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 8) #7
  br label %do.body20.i.i71

do.body20.i.i71:                                  ; preds = %if.then18.i.i50, %if.then11.i.i49
  %call22.i.i51 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 0, i32 4) #7
  %323 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 0
  %conv7.i148.i.i52 = zext i16 %call22.i.i51 to i32
  %mul8.i.i149.i.i53 = mul nuw i32 %conv7.i148.i.i52, 65537
  %i67.i.i150.i.i54 = bitcast i8* %323 to i32*
  store i32 %mul8.i.i149.i.i53, i32* %i67.i.i150.i.i54, align 4, !tbaa !40
  %add.ptr70.i.i151.i.i55 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 4
  %i71.i.i152.i.i56 = bitcast i8* %add.ptr70.i.i151.i.i55 to i32*
  store i32 %mul8.i.i149.i.i53, i32* %i71.i.i152.i.i56, align 4, !tbaa !40
  %add.ptr77.i.i153.i.i57 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 16
  %i79.i.i154.i.i58 = bitcast i8* %add.ptr77.i.i153.i.i57 to i32*
  store i32 %mul8.i.i149.i.i53, i32* %i79.i.i154.i.i58, align 4, !tbaa !40
  %add.ptr82.i.i155.i.i59 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 20
  %i83.i.i156.i.i60 = bitcast i8* %add.ptr82.i.i155.i.i59 to i32*
  store i32 %mul8.i.i149.i.i53, i32* %i83.i.i156.i.i60, align 4, !tbaa !40
  %call28.i.i61 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 8, i32 4) #7
  %324 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 28, i32 0
  %conv7.i157.i.i62 = zext i16 %call28.i.i61 to i32
  %mul8.i.i158.i.i63 = mul nuw i32 %conv7.i157.i.i62, 65537
  %i67.i.i159.i.i64 = bitcast i8* %324 to i32*
  store i32 %mul8.i.i158.i.i63, i32* %i67.i.i159.i.i64, align 4, !tbaa !40
  %add.ptr70.i.i160.i.i65 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 28, i32 4
  %i71.i.i161.i.i66 = bitcast i8* %add.ptr70.i.i160.i.i65 to i32*
  store i32 %mul8.i.i158.i.i63, i32* %i71.i.i161.i.i66, align 4, !tbaa !40
  %add.ptr77.i.i162.i.i67 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 28, i32 16
  %i79.i.i163.i.i68 = bitcast i8* %add.ptr77.i.i162.i.i67 to i32*
  store i32 %mul8.i.i158.i.i63, i32* %i79.i.i163.i.i68, align 4, !tbaa !40
  %add.ptr82.i.i164.i.i69 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 28, i32 20
  %i83.i.i165.i.i70 = bitcast i8* %add.ptr82.i.i164.i.i69 to i32*
  store i32 %mul8.i.i158.i.i63, i32* %i83.i.i165.i.i70, align 4, !tbaa !40
  br label %if.end7.i832

if.else32.i.i74:                                  ; preds = %if.else.i.i46
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 17, i32 0) #7
  %arrayidx36.i.i72 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 17, i32 0
  %325 = load i32, i32* %arrayidx36.i.i72, align 4, !tbaa !51
  %cmp37.i.i73 = icmp sgt i32 %325, 1
  br i1 %cmp37.i.i73, label %if.then39.i.i75, label %do.body41.i.i96

if.then39.i.i75:                                  ; preds = %if.else32.i.i74
  tail call fastcc void @cabac_ref_p(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0) #7
  tail call fastcc void @cabac_ref_p(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 4) #7
  br label %do.body41.i.i96

do.body41.i.i96:                                  ; preds = %if.then39.i.i75, %if.else32.i.i74
  %call43.i.i76 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 0, i32 2) #7
  %326 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 0
  %conv7.i166.i.i77 = zext i16 %call43.i.i76 to i32
  %mul8.i.i167.i.i78 = mul nuw i32 %conv7.i166.i.i77, 65537
  %i42.i.i.i.i79 = bitcast i8* %326 to i32*
  store i32 %mul8.i.i167.i.i78, i32* %i42.i.i.i.i79, align 4, !tbaa !40
  %add.ptr48.i.i.i.i80 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 16
  %i49.i.i.i.i81 = bitcast i8* %add.ptr48.i.i.i.i80 to i32*
  store i32 %mul8.i.i167.i.i78, i32* %i49.i.i.i.i81, align 4, !tbaa !40
  %add.ptr55.i.i.i.i82 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 32
  %i56.i.i.i.i83 = bitcast i8* %add.ptr55.i.i.i.i82 to i32*
  store i32 %mul8.i.i167.i.i78, i32* %i56.i.i.i.i83, align 4, !tbaa !40
  %add.ptr58.i.i.i.i84 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 48
  %i59.i.i.i.i85 = bitcast i8* %add.ptr58.i.i.i.i84 to i32*
  store i32 %mul8.i.i167.i.i78, i32* %i59.i.i.i.i85, align 4, !tbaa !40
  %call49.i.i86 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 4, i32 2) #7
  %327 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 14, i32 0
  %conv7.i168.i.i87 = zext i16 %call49.i.i86 to i32
  %mul8.i.i169.i.i88 = mul nuw i32 %conv7.i168.i.i87, 65537
  %i42.i.i170.i.i89 = bitcast i8* %327 to i32*
  store i32 %mul8.i.i169.i.i88, i32* %i42.i.i170.i.i89, align 4, !tbaa !40
  %add.ptr48.i.i171.i.i90 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 14, i32 16
  %i49.i.i172.i.i91 = bitcast i8* %add.ptr48.i.i171.i.i90 to i32*
  store i32 %mul8.i.i169.i.i88, i32* %i49.i.i172.i.i91, align 4, !tbaa !40
  %add.ptr55.i.i173.i.i92 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 14, i32 32
  %i56.i.i174.i.i93 = bitcast i8* %add.ptr55.i.i173.i.i92 to i32*
  store i32 %mul8.i.i169.i.i88, i32* %i56.i.i174.i.i93, align 4, !tbaa !40
  %add.ptr58.i.i175.i.i94 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 14, i32 48
  %i59.i.i176.i.i95 = bitcast i8* %add.ptr58.i.i175.i.i94 to i32*
  store i32 %mul8.i.i169.i.i88, i32* %i59.i.i176.i.i95, align 4, !tbaa !40
  br label %if.end7.i832

if.then58.i.i99:                                  ; preds = %if.then.i18
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 14, i32 0) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 15, i32 0) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 16, i32 1) #7
  %arrayidx62.i.i97 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 78, i32 0
  %328 = load i8, i8* %arrayidx62.i.i97, align 1, !tbaa !40
  %cmp.i.i.i98 = icmp eq i8 %328, 3
  br i1 %cmp.i.i.i98, label %if.then.i.i.i100, label %if.end.i.i.i102

if.then.i.i.i100:                                 ; preds = %if.then58.i.i99
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 21, i32 1) #7
  br label %cabac_subpartition_p.exit.i.i109

if.end.i.i.i102:                                  ; preds = %if.then58.i.i99
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 21, i32 0) #7
  %cmp1.i.i.i101 = icmp eq i8 %328, 1
  br i1 %cmp1.i.i.i101, label %if.then2.i.i.i103, label %if.else.i.i.i106

if.then2.i.i.i103:                                ; preds = %if.end.i.i.i102
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 22, i32 0) #7
  br label %cabac_subpartition_p.exit.i.i109

if.else.i.i.i106:                                 ; preds = %if.end.i.i.i102
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 22, i32 1) #7
  %cmp3.i.i.i104 = icmp eq i8 %328, 2
  %conv.i177.i.i105 = zext i1 %cmp3.i.i.i104 to i32
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 23, i32 %conv.i177.i.i105) #7
  br label %cabac_subpartition_p.exit.i.i109

cabac_subpartition_p.exit.i.i109:                 ; preds = %if.else.i.i.i106, %if.then2.i.i.i103, %if.then.i.i.i100
  %arrayidx62.1.i.i107 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 78, i32 1
  %329 = load i8, i8* %arrayidx62.1.i.i107, align 1, !tbaa !40
  %cmp.i.1.i.i108 = icmp eq i8 %329, 3
  br i1 %cmp.i.1.i.i108, label %if.then.i.1.i.i282, label %if.end.i.1.i.i277

if.then70.i.i110:                                 ; preds = %cabac_subpartition_p.exit.3.i.i305
  tail call fastcc void @cabac_ref_p(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0) #7
  tail call fastcc void @cabac_ref_p(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 4) #7
  tail call fastcc void @cabac_ref_p(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 8) #7
  tail call fastcc void @cabac_ref_p(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 12) #7
  br label %for.body77.i.i114.preheader

for.body77.i.i114.preheader:                      ; preds = %cabac_subpartition_p.exit.3.i.i305, %if.then70.i.i110
  br label %for.body77.i.i114

for.body77.i.i114:                                ; preds = %for.body77.i.i114.preheader, %cabac_8x8_mvd.exit.i.i224
  %i72.0179.i.i112 = phi i32 [ %inc79.i.i222, %cabac_8x8_mvd.exit.i.i224 ], [ 0, %for.body77.i.i114.preheader ]
  %arrayidx.i.i.i113 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 78, i32 %i72.0179.i.i112
  %330 = load i8, i8* %arrayidx.i.i.i113, align 1, !tbaa !40
  switch i8 %330, label %sw.default.i.i.i221 [
    i8 3, label %do.body.i.i.i129
    i8 1, label %do.body8.i.i.i154
    i8 2, label %do.body36.i.i.i179
    i8 0, label %do.body65.i.i.i220
  ]

do.body.i.i.i129:                                 ; preds = %for.body77.i.i114
  %mul.i.i.i115 = shl nuw nsw i32 %i72.0179.i.i112, 2
  %call.i.i.i116 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* %cb, i32 0, i32 %mul.i.i.i115, i32 2) #7
  %arrayidx2.i.i.i117 = getelementptr inbounds [16 x i8], [16 x i8]* @block_idx_x, i32 0, i32 %mul.i.i.i115
  %331 = load i8, i8* %arrayidx2.i.i.i117, align 1, !tbaa !40
  %conv3.i.i.i118 = zext i8 %331 to i32
  %arrayidx5.i.i.i119 = getelementptr inbounds [16 x i8], [16 x i8]* @block_idx_y, i32 0, i32 %mul.i.i.i115
  %332 = load i8, i8* %arrayidx5.i.i.i119, align 1, !tbaa !40
  %conv6.i.i.i120 = zext i8 %332 to i32
  %add.i.i178.i.i121 = add nuw nsw i32 %conv3.i.i.i118, 12
  %mul.i.i.i.i122 = shl nuw nsw i32 %conv6.i.i.i120, 3
  %add2.i.i.i.i123 = add nuw nsw i32 %add.i.i178.i.i121, %mul.i.i.i.i122
  %333 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 %add2.i.i.i.i123, i32 0
  %conv7.i.i.i.i124 = zext i16 %call.i.i.i116 to i32
  %mul8.i.i.i.i.i125 = mul nuw i32 %conv7.i.i.i.i124, 65537
  %i42.i.i.i.i.i126 = bitcast i8* %333 to i32*
  store i32 %mul8.i.i.i.i.i125, i32* %i42.i.i.i.i.i126, align 4, !tbaa !40
  %add.ptr48.i.i.i.i.i127 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 %add2.i.i.i.i123, i32 16
  %i49.i.i.i.i.i128 = bitcast i8* %add.ptr48.i.i.i.i.i127 to i32*
  store i32 %mul8.i.i.i.i.i125, i32* %i49.i.i.i.i.i128, align 4, !tbaa !40
  br label %cabac_8x8_mvd.exit.i.i224

do.body8.i.i.i154:                                ; preds = %for.body77.i.i114
  %mul10.i.i.i130 = shl nuw nsw i32 %i72.0179.i.i112, 2
  %call11.i.i.i131 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* %cb, i32 0, i32 %mul10.i.i.i130, i32 2) #7
  %arrayidx14.i.i.i132 = getelementptr inbounds [16 x i8], [16 x i8]* @block_idx_x, i32 0, i32 %mul10.i.i.i130
  %334 = load i8, i8* %arrayidx14.i.i.i132, align 1, !tbaa !40
  %conv15.i.i.i133 = zext i8 %334 to i32
  %arrayidx18.i.i.i134 = getelementptr inbounds [16 x i8], [16 x i8]* @block_idx_y, i32 0, i32 %mul10.i.i.i130
  %335 = load i8, i8* %arrayidx18.i.i.i134, align 1, !tbaa !40
  %conv19.i.i.i135 = zext i8 %335 to i32
  %add.i188.i.i.i136 = add nuw nsw i32 %conv15.i.i.i133, 12
  %mul.i189.i.i.i137 = shl nuw nsw i32 %conv19.i.i.i135, 3
  %add2.i190.i.i.i138 = add nuw nsw i32 %add.i188.i.i.i136, %mul.i189.i.i.i137
  %336 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 %add2.i190.i.i.i138, i32 0
  %conv7.i191.i.i.i139 = zext i16 %call11.i.i.i131 to i32
  %mul8.i.i192.i.i.i140 = mul nuw i32 %conv7.i191.i.i.i139, 65537
  %i42.i.i193.i.i.i141 = bitcast i8* %336 to i32*
  store i32 %mul8.i.i192.i.i.i140, i32* %i42.i.i193.i.i.i141, align 4, !tbaa !40
  %add24.i.i.i142 = or i32 %mul10.i.i.i130, 2
  %call25.i.i.i143 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* %cb, i32 0, i32 %add24.i.i.i142, i32 2) #7
  %arrayidx28.i.i.i144 = getelementptr inbounds [16 x i8], [16 x i8]* @block_idx_x, i32 0, i32 %add24.i.i.i142
  %337 = load i8, i8* %arrayidx28.i.i.i144, align 1, !tbaa !40
  %conv29.i.i.i145 = zext i8 %337 to i32
  %arrayidx32.i.i.i146 = getelementptr inbounds [16 x i8], [16 x i8]* @block_idx_y, i32 0, i32 %add24.i.i.i142
  %338 = load i8, i8* %arrayidx32.i.i.i146, align 1, !tbaa !40
  %conv33.i.i.i147 = zext i8 %338 to i32
  %add.i200.i.i.i148 = add nuw nsw i32 %conv29.i.i.i145, 12
  %mul.i201.i.i.i149 = shl nuw nsw i32 %conv33.i.i.i147, 3
  %add2.i202.i.i.i150 = add nuw nsw i32 %add.i200.i.i.i148, %mul.i201.i.i.i149
  %339 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 %add2.i202.i.i.i150, i32 0
  %conv7.i203.i.i.i151 = zext i16 %call25.i.i.i143 to i32
  %mul8.i.i204.i.i.i152 = mul nuw i32 %conv7.i203.i.i.i151, 65537
  %i42.i.i205.i.i.i153 = bitcast i8* %339 to i32*
  store i32 %mul8.i.i204.i.i.i152, i32* %i42.i.i205.i.i.i153, align 4, !tbaa !40
  br label %cabac_8x8_mvd.exit.i.i224

do.body36.i.i.i179:                               ; preds = %for.body77.i.i114
  %mul38.i.i.i155 = shl nuw nsw i32 %i72.0179.i.i112, 2
  %call40.i.i.i156 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* %cb, i32 0, i32 %mul38.i.i.i155, i32 1) #7
  %arrayidx43.i.i.i157 = getelementptr inbounds [16 x i8], [16 x i8]* @block_idx_x, i32 0, i32 %mul38.i.i.i155
  %340 = load i8, i8* %arrayidx43.i.i.i157, align 1, !tbaa !40
  %conv44.i.i.i158 = zext i8 %340 to i32
  %arrayidx47.i.i.i159 = getelementptr inbounds [16 x i8], [16 x i8]* @block_idx_y, i32 0, i32 %mul38.i.i.i155
  %341 = load i8, i8* %arrayidx47.i.i.i159, align 1, !tbaa !40
  %conv48.i.i.i160 = zext i8 %341 to i32
  %add.i212.i.i.i161 = add nuw nsw i32 %conv44.i.i.i158, 12
  %mul.i213.i.i.i162 = shl nuw nsw i32 %conv48.i.i.i160, 3
  %add2.i214.i.i.i163 = add nuw nsw i32 %add.i212.i.i.i161, %mul.i213.i.i.i162
  %342 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 %add2.i214.i.i.i163, i32 0
  %i.i.i217.i.i.i164 = bitcast i8* %342 to i16*
  store i16 %call40.i.i.i156, i16* %i.i.i217.i.i.i164, align 2, !tbaa !40
  %add.ptr25.i.i.i.i.i165 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 %add2.i214.i.i.i163, i32 16
  %i26.i.i.i.i.i166 = bitcast i8* %add.ptr25.i.i.i.i.i165 to i16*
  store i16 %call40.i.i.i156, i16* %i26.i.i.i.i.i166, align 2, !tbaa !40
  %add53.i.i.i167 = or i32 %mul38.i.i.i155, 1
  %call54.i.i.i168 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* %cb, i32 0, i32 %add53.i.i.i167, i32 1) #7
  %arrayidx57.i.i.i169 = getelementptr inbounds [16 x i8], [16 x i8]* @block_idx_x, i32 0, i32 %add53.i.i.i167
  %343 = load i8, i8* %arrayidx57.i.i.i169, align 1, !tbaa !40
  %conv58.i.i.i170 = zext i8 %343 to i32
  %arrayidx61.i.i.i171 = getelementptr inbounds [16 x i8], [16 x i8]* @block_idx_y, i32 0, i32 %add53.i.i.i167
  %344 = load i8, i8* %arrayidx61.i.i.i171, align 1, !tbaa !40
  %conv62.i.i.i172 = zext i8 %344 to i32
  %add.i224.i.i.i173 = add nuw nsw i32 %conv58.i.i.i170, 12
  %mul.i225.i.i.i174 = shl nuw nsw i32 %conv62.i.i.i172, 3
  %add2.i226.i.i.i175 = add nuw nsw i32 %add.i224.i.i.i173, %mul.i225.i.i.i174
  %345 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 %add2.i226.i.i.i175, i32 0
  %i.i.i229.i.i.i176 = bitcast i8* %345 to i16*
  store i16 %call54.i.i.i168, i16* %i.i.i229.i.i.i176, align 2, !tbaa !40
  %add.ptr25.i.i230.i.i.i177 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 %add2.i226.i.i.i175, i32 16
  %i26.i.i231.i.i.i178 = bitcast i8* %add.ptr25.i.i230.i.i.i177 to i16*
  store i16 %call54.i.i.i168, i16* %i26.i.i231.i.i.i178, align 2, !tbaa !40
  br label %cabac_8x8_mvd.exit.i.i224

do.body65.i.i.i220:                               ; preds = %for.body77.i.i114
  %mul67.i.i.i180 = shl nuw nsw i32 %i72.0179.i.i112, 2
  %call69.i.i.i181 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* %cb, i32 0, i32 %mul67.i.i.i180, i32 1) #7
  %arrayidx72.i.i.i182 = getelementptr inbounds [16 x i8], [16 x i8]* @block_idx_x, i32 0, i32 %mul67.i.i.i180
  %346 = load i8, i8* %arrayidx72.i.i.i182, align 1, !tbaa !40
  %conv73.i.i.i183 = zext i8 %346 to i32
  %arrayidx76.i.i.i184 = getelementptr inbounds [16 x i8], [16 x i8]* @block_idx_y, i32 0, i32 %mul67.i.i.i180
  %347 = load i8, i8* %arrayidx76.i.i.i184, align 1, !tbaa !40
  %conv77.i.i.i185 = zext i8 %347 to i32
  %add.i218.i.i.i186 = add nuw nsw i32 %conv73.i.i.i183, 12
  %mul.i219.i.i.i187 = shl nuw nsw i32 %conv77.i.i.i185, 3
  %add2.i220.i.i.i188 = add nuw nsw i32 %add.i218.i.i.i186, %mul.i219.i.i.i187
  %348 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 %add2.i220.i.i.i188, i32 0
  %i.i.i223.i.i.i189 = bitcast i8* %348 to i16*
  store i16 %call69.i.i.i181, i16* %i.i.i223.i.i.i189, align 2, !tbaa !40
  %add82.i.i.i190 = or i32 %mul67.i.i.i180, 1
  %call83.i.i.i191 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* %cb, i32 0, i32 %add82.i.i.i190, i32 1) #7
  %arrayidx86.i.i.i192 = getelementptr inbounds [16 x i8], [16 x i8]* @block_idx_x, i32 0, i32 %add82.i.i.i190
  %349 = load i8, i8* %arrayidx86.i.i.i192, align 1, !tbaa !40
  %conv87.i.i.i193 = zext i8 %349 to i32
  %arrayidx90.i.i.i194 = getelementptr inbounds [16 x i8], [16 x i8]* @block_idx_y, i32 0, i32 %add82.i.i.i190
  %350 = load i8, i8* %arrayidx90.i.i.i194, align 1, !tbaa !40
  %conv91.i.i.i195 = zext i8 %350 to i32
  %add.i206.i.i.i196 = add nuw nsw i32 %conv87.i.i.i193, 12
  %mul.i207.i.i.i197 = shl nuw nsw i32 %conv91.i.i.i195, 3
  %add2.i208.i.i.i198 = add nuw nsw i32 %add.i206.i.i.i196, %mul.i207.i.i.i197
  %351 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 %add2.i208.i.i.i198, i32 0
  %i.i.i211.i.i.i199 = bitcast i8* %351 to i16*
  store i16 %call83.i.i.i191, i16* %i.i.i211.i.i.i199, align 2, !tbaa !40
  %add96.i.i.i200 = or i32 %mul67.i.i.i180, 2
  %call97.i.i.i201 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* %cb, i32 0, i32 %add96.i.i.i200, i32 1) #7
  %arrayidx100.i.i.i202 = getelementptr inbounds [16 x i8], [16 x i8]* @block_idx_x, i32 0, i32 %add96.i.i.i200
  %352 = load i8, i8* %arrayidx100.i.i.i202, align 1, !tbaa !40
  %conv101.i.i.i203 = zext i8 %352 to i32
  %arrayidx104.i.i.i204 = getelementptr inbounds [16 x i8], [16 x i8]* @block_idx_y, i32 0, i32 %add96.i.i.i200
  %353 = load i8, i8* %arrayidx104.i.i.i204, align 1, !tbaa !40
  %conv105.i.i.i205 = zext i8 %353 to i32
  %add.i194.i.i.i206 = add nuw nsw i32 %conv101.i.i.i203, 12
  %mul.i195.i.i.i207 = shl nuw nsw i32 %conv105.i.i.i205, 3
  %add2.i196.i.i.i208 = add nuw nsw i32 %add.i194.i.i.i206, %mul.i195.i.i.i207
  %354 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 %add2.i196.i.i.i208, i32 0
  %i.i.i199.i.i.i209 = bitcast i8* %354 to i16*
  store i16 %call97.i.i.i201, i16* %i.i.i199.i.i.i209, align 2, !tbaa !40
  %add110.i.i.i210 = or i32 %mul67.i.i.i180, 3
  %call111.i.i.i211 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* %cb, i32 0, i32 %add110.i.i.i210, i32 1) #7
  %arrayidx114.i.i.i212 = getelementptr inbounds [16 x i8], [16 x i8]* @block_idx_x, i32 0, i32 %add110.i.i.i210
  %355 = load i8, i8* %arrayidx114.i.i.i212, align 1, !tbaa !40
  %conv115.i.i.i213 = zext i8 %355 to i32
  %arrayidx118.i.i.i214 = getelementptr inbounds [16 x i8], [16 x i8]* @block_idx_y, i32 0, i32 %add110.i.i.i210
  %356 = load i8, i8* %arrayidx118.i.i.i214, align 1, !tbaa !40
  %conv119.i.i.i215 = zext i8 %356 to i32
  %add.i183.i.i.i216 = add nuw nsw i32 %conv115.i.i.i213, 12
  %mul.i184.i.i.i217 = shl nuw nsw i32 %conv119.i.i.i215, 3
  %add2.i185.i.i.i218 = add nuw nsw i32 %add.i183.i.i.i216, %mul.i184.i.i.i217
  %357 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 %add2.i185.i.i.i218, i32 0
  %i.i.i.i.i.i219 = bitcast i8* %357 to i16*
  store i16 %call111.i.i.i211, i16* %i.i.i.i.i.i219, align 2, !tbaa !40
  br label %cabac_8x8_mvd.exit.i.i224

sw.default.i.i.i221:                              ; preds = %for.body77.i.i114
  tail call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i32 377, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.cabac_8x8_mvd, i32 0, i32 0)) #8
  unreachable

cabac_8x8_mvd.exit.i.i224:                        ; preds = %do.body65.i.i.i220, %do.body36.i.i.i179, %do.body8.i.i.i154, %do.body.i.i.i129
  %inc79.i.i222 = add nuw nsw i32 %i72.0179.i.i112, 1
  %exitcond.i.i223 = icmp eq i32 %inc79.i.i222, 4
  br i1 %exitcond.i.i223, label %if.end7.i832, label %for.body77.i.i114

if.else81.i.i225:                                 ; preds = %if.then.i18
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 14, i32 1) #7
  tail call fastcc void @cabac_mb_type_intra(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 %311, i32 17, i32 18, i32 19, i32 19, i32 20, i32 20) #7
  switch i32 %311, label %if.then26.i.i.i228 [
    i32 3, label %if.end7.i832
    i32 2, label %if.end40.i.i.i275
  ]

if.then26.i.i.i228:                               ; preds = %if.else81.i.i225
  %b_transform_8x8_mode.i.i.i226 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 53, i32 0, i32 15
  %358 = load i32, i32* %b_transform_8x8_mode.i.i.i226, align 4, !tbaa !52
  %tobool27.i.i.i227 = icmp eq i32 %358, 0
  br i1 %tobool27.i.i.i227, label %if.end29.i.i.i238, label %if.then28.i.i.i234

if.then28.i.i.i234:                               ; preds = %if.then26.i.i.i228
  %h.idx.i.i.i229 = getelementptr %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 79
  %h.idx.val.i.i.i230 = load i32, i32* %h.idx.i.i.i229, align 4, !tbaa !54
  %h.idx84.i.i.i231 = getelementptr %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 10
  %h.idx84.val.i.i.i232 = load i32, i32* %h.idx84.i.i.i231, align 8, !tbaa !55
  %add.i.i.i.i233 = add nsw i32 %h.idx84.val.i.i.i232, 399
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 %add.i.i.i.i233, i32 %h.idx.val.i.i.i230) #7
  br label %if.end29.i.i.i238

if.end29.i.i.i238:                                ; preds = %if.then28.i.i.i234, %if.then26.i.i.i228
  %b_transform_8x8.i.i.i235 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 79
  %359 = load i32, i32* %b_transform_8x8.i.i.i235, align 4, !tbaa !54
  %tobool31.i.i.i236 = icmp eq i32 %359, 0
  %cond.i.i.i237 = select i1 %tobool31.i.i.i236, i32 1, i32 4
  br label %for.body.i.i.i261

for.body.i.i.i261:                                ; preds = %cabac_intra4x4_pred_mode.exit.i.i.i274, %if.end29.i.i.i238
  %i.091.i.i.i239 = phi i32 [ 0, %if.end29.i.i.i238 ], [ %add39.i.i.i272, %cabac_intra4x4_pred_mode.exit.i.i.i274 ]
  %arrayidx.i.i.i.i240 = getelementptr inbounds [51 x i8], [51 x i8]* @x264_scan8, i32 0, i32 %i.091.i.i.i239
  %360 = load i8, i8* %arrayidx.i.i.i.i240, align 1, !tbaa !40
  %conv.i.i.i.i241 = zext i8 %360 to i32
  %sub.i.i.i.i242 = add nsw i32 %conv.i.i.i.i241, -1
  %arrayidx1.i.i.i.i243 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 0, i32 %sub.i.i.i.i242
  %361 = load i8, i8* %arrayidx1.i.i.i.i243, align 1, !tbaa !40
  %conv2.i.i.i.i244 = sext i8 %361 to i32
  %sub9.i.i.i.i245 = add nsw i32 %conv.i.i.i.i241, -8
  %arrayidx10.i.i.i.i246 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 0, i32 %sub9.i.i.i.i245
  %362 = load i8, i8* %arrayidx10.i.i.i.i246, align 1, !tbaa !40
  %conv11.i.i.i.i247 = sext i8 %362 to i32
  %add.i85.i.i.i248 = add nsw i32 %conv2.i.i.i.i244, 1
  %arrayidx12.i.i.i.i249 = getelementptr inbounds [13 x i8], [13 x i8]* @x264_mb_pred_mode4x4_fix, i32 0, i32 %add.i85.i.i.i248
  %363 = load i8, i8* %arrayidx12.i.i.i.i249, align 1, !tbaa !40
  %add14.i.i.i.i250 = add nsw i32 %conv11.i.i.i.i247, 1
  %arrayidx15.i.i.i.i251 = getelementptr inbounds [13 x i8], [13 x i8]* @x264_mb_pred_mode4x4_fix, i32 0, i32 %add14.i.i.i.i250
  %364 = load i8, i8* %arrayidx15.i.i.i.i251, align 1, !tbaa !40
  %cmp.i.i.i.i252 = icmp slt i8 %363, %364
  %..i.i.i.i253 = select i1 %cmp.i.i.i.i252, i8 %363, i8 %364
  %cmp24.i.i.i.i254 = icmp slt i8 %..i.i.i.i253, 0
  %narrow.i.i.i.i255 = select i1 %cmp24.i.i.i.i254, i8 2, i8 %..i.i.i.i253
  %arrayidx35.i.i.i256 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 0, i32 %conv.i.i.i.i241
  %365 = load i8, i8* %arrayidx35.i.i.i256, align 1, !tbaa !40
  %conv.i.i.i257 = sext i8 %365 to i32
  %add36.i.i.i258 = add nsw i32 %conv.i.i.i257, 1
  %arrayidx37.i.i.i259 = getelementptr inbounds [13 x i8], [13 x i8]* @x264_mb_pred_mode4x4_fix, i32 0, i32 %add36.i.i.i258
  %366 = load i8, i8* %arrayidx37.i.i.i259, align 1, !tbaa !40
  %cmp.i88.i.i.i260 = icmp eq i8 %narrow.i.i.i.i255, %366
  br i1 %cmp.i88.i.i.i260, label %if.then.i.i.i.i262, label %if.else.i.i.i.i271

if.then.i.i.i.i262:                               ; preds = %for.body.i.i.i261
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 68, i32 1) #7
  br label %cabac_intra4x4_pred_mode.exit.i.i.i274

if.else.i.i.i.i271:                               ; preds = %for.body.i.i.i261
  %conv38.i.i.i263 = sext i8 %366 to i32
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 68, i32 0) #7
  %cmp1.i.i.i.i264 = icmp sgt i8 %366, %narrow.i.i.i.i255
  %dec.i.i.i.i265 = sext i1 %cmp1.i.i.i.i264 to i32
  %spec.select.i89.i.i.i266 = add nsw i32 %dec.i.i.i.i265, %conv38.i.i.i263
  %and.i90.i.i.i267 = and i32 %spec.select.i89.i.i.i266, 1
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 69, i32 %and.i90.i.i.i267) #7
  %shr15.i.i.i.i268 = lshr i32 %spec.select.i89.i.i.i266, 1
  %and3.i.i.i.i269 = and i32 %shr15.i.i.i.i268, 1
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 69, i32 %and3.i.i.i.i269) #7
  %shr4.i.i.i.i270 = ashr i32 %spec.select.i89.i.i.i266, 2
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 69, i32 %shr4.i.i.i.i270) #7
  br label %cabac_intra4x4_pred_mode.exit.i.i.i274

cabac_intra4x4_pred_mode.exit.i.i.i274:           ; preds = %if.else.i.i.i.i271, %if.then.i.i.i.i262
  %add39.i.i.i272 = add nuw nsw i32 %i.091.i.i.i239, %cond.i.i.i237
  %cmp32.i.i.i273 = icmp ult i32 %add39.i.i.i272, 16
  br i1 %cmp32.i.i.i273, label %for.body.i.i.i261, label %if.end40.i.i.i275

if.end40.i.i.i275:                                ; preds = %cabac_intra4x4_pred_mode.exit.i.i.i274, %if.else81.i.i225
  %i_chroma_pred_mode.i.i.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 83
  %367 = load i32, i32* %i_chroma_pred_mode.i.i.i.i, align 4, !tbaa !71
  %i_neighbour.i.i.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 37
  %368 = load i32, i32* %i_neighbour.i.i.i.i, align 32, !tbaa !56
  %and.i.i.i.i = and i32 %368, 1
  %tobool.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.i.i.i, label %if.end.i.i.i.i, label %land.lhs.true.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end40.i.i.i275
  %chroma_pred_mode.i.i.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 66
  %369 = load i8*, i8** %chroma_pred_mode.i.i.i.i, align 4, !tbaa !72
  %arrayidx4.i.i.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 47, i32 0
  %370 = load i32, i32* %arrayidx4.i.i.i.i, align 4, !tbaa !51
  %arrayidx5.i.i.i.i = getelementptr inbounds i8, i8* %369, i32 %370
  %371 = load i8, i8* %arrayidx5.i.i.i.i, align 1, !tbaa !40
  %cmp.i86.i.i.i = icmp ne i8 %371, 0
  %spec.select.i.i.i.i = zext i1 %cmp.i86.i.i.i to i32
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i, %if.end40.i.i.i275
  %ctx.0.i.i.i.i = phi i32 [ 0, %if.end40.i.i.i275 ], [ %spec.select.i.i.i.i, %land.lhs.true.i.i.i.i ]
  %and10.i.i.i.i = and i32 %368, 2
  %tobool11.i.i.i.i = icmp eq i32 %and10.i.i.i.i, 0
  br i1 %tobool11.i.i.i.i, label %if.end22.i.i.i.i, label %land.lhs.true12.i.i.i.i

land.lhs.true12.i.i.i.i:                          ; preds = %if.end.i.i.i.i
  %chroma_pred_mode14.i.i.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 66
  %372 = load i8*, i8** %chroma_pred_mode14.i.i.i.i, align 4, !tbaa !72
  %i_mb_top_xy.i.i.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 48
  %373 = load i32, i32* %i_mb_top_xy.i.i.i.i, align 4, !tbaa !70
  %arrayidx16.i.i.i.i = getelementptr inbounds i8, i8* %372, i32 %373
  %374 = load i8, i8* %arrayidx16.i.i.i.i, align 1, !tbaa !40
  %cmp18.i.i.i.i = icmp ne i8 %374, 0
  %inc21.i.i.i.i = zext i1 %cmp18.i.i.i.i to i32
  %spec.select53.i.i.i.i = add nuw nsw i32 %ctx.0.i.i.i.i, %inc21.i.i.i.i
  br label %if.end22.i.i.i.i

if.end22.i.i.i.i:                                 ; preds = %land.lhs.true12.i.i.i.i, %if.end.i.i.i.i
  %ctx.1.i.i.i.i = phi i32 [ %ctx.0.i.i.i.i, %if.end.i.i.i.i ], [ %spec.select53.i.i.i.i, %land.lhs.true12.i.i.i.i ]
  %add.i87.i.i.i = add nuw nsw i32 %ctx.1.i.i.i.i, 64
  %375 = add i32 %367, -1
  %cmp23.i.i.i.i = icmp ult i32 %375, 3
  %conv24.i.i.i.i = zext i1 %cmp23.i.i.i.i to i32
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add.i87.i.i.i, i32 %conv24.i.i.i.i) #7
  br i1 %cmp23.i.i.i.i, label %if.then27.i.i.i.i, label %if.end7.i832

if.then27.i.i.i.i:                                ; preds = %if.end22.i.i.i.i
  %376 = or i32 %367, 1
  %377 = icmp eq i32 %376, 3
  %conv29.i.i.i.i = zext i1 %377 to i32
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 67, i32 %conv29.i.i.i.i) #7
  br i1 %377, label %if.then32.i.i.i.i, label %if.end7.i832

if.then32.i.i.i.i:                                ; preds = %if.then27.i.i.i.i
  %cmp33.i.i.i.i = icmp eq i32 %367, 3
  %conv34.i.i.i.i = zext i1 %cmp33.i.i.i.i to i32
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 67, i32 %conv34.i.i.i.i) #7
  br label %if.end7.i832

if.end.i.1.i.i277:                                ; preds = %cabac_subpartition_p.exit.i.i109
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 21, i32 0) #7
  %cmp1.i.1.i.i276 = icmp eq i8 %329, 1
  br i1 %cmp1.i.1.i.i276, label %if.then2.i.1.i.i281, label %if.else.i.1.i.i280

if.else.i.1.i.i280:                               ; preds = %if.end.i.1.i.i277
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 22, i32 1) #7
  %cmp3.i.1.i.i278 = icmp eq i8 %329, 2
  %conv.i177.1.i.i279 = zext i1 %cmp3.i.1.i.i278 to i32
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 23, i32 %conv.i177.1.i.i279) #7
  br label %cabac_subpartition_p.exit.1.i.i285

if.then2.i.1.i.i281:                              ; preds = %if.end.i.1.i.i277
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 22, i32 0) #7
  br label %cabac_subpartition_p.exit.1.i.i285

if.then.i.1.i.i282:                               ; preds = %cabac_subpartition_p.exit.i.i109
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 21, i32 1) #7
  br label %cabac_subpartition_p.exit.1.i.i285

cabac_subpartition_p.exit.1.i.i285:               ; preds = %if.then.i.1.i.i282, %if.then2.i.1.i.i281, %if.else.i.1.i.i280
  %arrayidx62.2.i.i283 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 78, i32 2
  %378 = load i8, i8* %arrayidx62.2.i.i283, align 1, !tbaa !40
  %cmp.i.2.i.i284 = icmp eq i8 %378, 3
  br i1 %cmp.i.2.i.i284, label %if.then.i.2.i.i292, label %if.end.i.2.i.i287

if.end.i.2.i.i287:                                ; preds = %cabac_subpartition_p.exit.1.i.i285
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 21, i32 0) #7
  %cmp1.i.2.i.i286 = icmp eq i8 %378, 1
  br i1 %cmp1.i.2.i.i286, label %if.then2.i.2.i.i291, label %if.else.i.2.i.i290

if.else.i.2.i.i290:                               ; preds = %if.end.i.2.i.i287
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 22, i32 1) #7
  %cmp3.i.2.i.i288 = icmp eq i8 %378, 2
  %conv.i177.2.i.i289 = zext i1 %cmp3.i.2.i.i288 to i32
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 23, i32 %conv.i177.2.i.i289) #7
  br label %cabac_subpartition_p.exit.2.i.i295

if.then2.i.2.i.i291:                              ; preds = %if.end.i.2.i.i287
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 22, i32 0) #7
  br label %cabac_subpartition_p.exit.2.i.i295

if.then.i.2.i.i292:                               ; preds = %cabac_subpartition_p.exit.1.i.i285
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 21, i32 1) #7
  br label %cabac_subpartition_p.exit.2.i.i295

cabac_subpartition_p.exit.2.i.i295:               ; preds = %if.then.i.2.i.i292, %if.then2.i.2.i.i291, %if.else.i.2.i.i290
  %arrayidx62.3.i.i293 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 78, i32 3
  %379 = load i8, i8* %arrayidx62.3.i.i293, align 1, !tbaa !40
  %cmp.i.3.i.i294 = icmp eq i8 %379, 3
  br i1 %cmp.i.3.i.i294, label %if.then.i.3.i.i302, label %if.end.i.3.i.i297

if.end.i.3.i.i297:                                ; preds = %cabac_subpartition_p.exit.2.i.i295
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 21, i32 0) #7
  %cmp1.i.3.i.i296 = icmp eq i8 %379, 1
  br i1 %cmp1.i.3.i.i296, label %if.then2.i.3.i.i301, label %if.else.i.3.i.i300

if.else.i.3.i.i300:                               ; preds = %if.end.i.3.i.i297
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 22, i32 1) #7
  %cmp3.i.3.i.i298 = icmp eq i8 %379, 2
  %conv.i177.3.i.i299 = zext i1 %cmp3.i.3.i.i298 to i32
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 23, i32 %conv.i177.3.i.i299) #7
  br label %cabac_subpartition_p.exit.3.i.i305

if.then2.i.3.i.i301:                              ; preds = %if.end.i.3.i.i297
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 22, i32 0) #7
  br label %cabac_subpartition_p.exit.3.i.i305

if.then.i.3.i.i302:                               ; preds = %cabac_subpartition_p.exit.2.i.i295
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 21, i32 1) #7
  br label %cabac_subpartition_p.exit.3.i.i305

cabac_subpartition_p.exit.3.i.i305:               ; preds = %if.then.i.3.i.i302, %if.then2.i.3.i.i301, %if.else.i.3.i.i300
  %arrayidx67.i.i303 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 17, i32 0
  %380 = load i32, i32* %arrayidx67.i.i303, align 4, !tbaa !51
  %cmp68.i.i304 = icmp sgt i32 %380, 1
  br i1 %cmp68.i.i304, label %if.then70.i.i110, label %for.body77.i.i114.preheader

if.then5.i309:                                    ; preds = %if.then4
  %i_neighbour.i.i306 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 37
  %381 = load i32, i32* %i_neighbour.i.i306, align 32, !tbaa !56
  %and.i.i307 = and i32 %381, 1
  %tobool.i.i308 = icmp eq i32 %and.i.i307, 0
  br i1 %tobool.i.i308, label %if.end.i.i316, label %land.lhs.true.i.i311

land.lhs.true.i.i311:                             ; preds = %if.then5.i309
  %arrayidx.i1265.i310 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 43, i32 0
  %382 = load i32, i32* %arrayidx.i1265.i310, align 64, !tbaa !51
  switch i32 %382, label %if.then.i1266.i312 [
    i32 18, label %if.end.i.i316
    i32 7, label %if.end.i.i316
  ]

if.then.i1266.i312:                               ; preds = %land.lhs.true.i.i311
  br label %if.end.i.i316

if.end.i.i316:                                    ; preds = %if.then.i1266.i312, %land.lhs.true.i.i311, %land.lhs.true.i.i311, %if.then5.i309
  %ctx.0.i.i313 = phi i32 [ 1, %if.then.i1266.i312 ], [ 0, %land.lhs.true.i.i311 ], [ 0, %if.then5.i309 ], [ 0, %land.lhs.true.i.i311 ]
  %and9.i.i314 = and i32 %381, 2
  %tobool10.i.i315 = icmp eq i32 %and9.i.i314, 0
  br i1 %tobool10.i.i315, label %if.end20.i.i324, label %land.lhs.true11.i.i318

land.lhs.true11.i.i318:                           ; preds = %if.end.i.i316
  %i_mb_type_top.i.i317 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 42
  %383 = load i32, i32* %i_mb_type_top.i.i317, align 4, !tbaa !57
  switch i32 %383, label %if.then18.i1267.i320 [
    i32 18, label %if.end20.i.i324
    i32 7, label %if.end20.i.i324
  ]

if.then18.i1267.i320:                             ; preds = %land.lhs.true11.i.i318
  %inc19.i.i319 = add nuw nsw i32 %ctx.0.i.i313, 1
  br label %if.end20.i.i324

if.end20.i.i324:                                  ; preds = %if.then18.i1267.i320, %land.lhs.true11.i.i318, %land.lhs.true11.i.i318, %if.end.i.i316
  %ctx.1.i.i321 = phi i32 [ %inc19.i.i319, %if.then18.i1267.i320 ], [ %ctx.0.i.i313, %land.lhs.true11.i.i318 ], [ %ctx.0.i.i313, %if.end.i.i316 ], [ %ctx.0.i.i313, %land.lhs.true11.i.i318 ]
  %cmp21.i.i322 = icmp eq i32 %311, 7
  %add.i1268.i323 = add nuw nsw i32 %ctx.1.i.i321, 27
  br i1 %cmp21.i.i322, label %if.then22.i.i325, label %if.end23.i.i327

if.then22.i.i325:                                 ; preds = %if.end20.i.i324
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 %add.i1268.i323, i32 0) #7
  br label %if.end7.i832

if.end23.i.i327:                                  ; preds = %if.end20.i.i324
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 %add.i1268.i323, i32 1) #7
  %cmp25.i.i326 = icmp eq i32 %311, 17
  br i1 %cmp25.i.i326, label %if.then26.i.i330, label %if.else.i1283.i389

if.then26.i.i330:                                 ; preds = %if.end23.i.i327
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 30, i32 1) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 31, i32 1) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 32, i32 1) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 32, i32 1) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 32, i32 1) #7
  %arrayidx29.i.i328 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 78, i32 0
  %384 = load i8, i8* %arrayidx29.i.i328, align 1, !tbaa !40
  %cmp.i.i1269.i329 = icmp eq i8 %384, 12
  br i1 %cmp.i.i1269.i329, label %if.then.i.i1270.i335, label %if.end.i.i1272.i337

for.body41.preheader.i.i334:                      ; preds = %cabac_subpartition_b.exit.3.i.i678
  %385 = load i8, i8* %arrayidx29.i.i328, align 1, !tbaa !40
  %idxprom.i.i331 = zext i8 %385 to i32
  %arrayidx45.i.i332 = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 0, i32 %idxprom.i.i331
  %386 = load i8, i8* %arrayidx45.i.i332, align 1, !tbaa !40
  %tobool46.i.i333 = icmp eq i8 %386, 0
  br i1 %tobool46.i.i333, label %for.inc49.i.i349, label %if.then47.i.i345

if.then.i.i1270.i335:                             ; preds = %if.then26.i.i330
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 36, i32 0) #7
  br label %cabac_subpartition_b.exit.i.i344

if.end.i.i1272.i337:                              ; preds = %if.then26.i.i330
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 36, i32 1) #7
  %cmp1.i.i1271.i336 = icmp eq i8 %384, 11
  br i1 %cmp1.i.i1271.i336, label %if.then2.i.i1273.i338, label %if.end3.i.i.i341

if.then2.i.i1273.i338:                            ; preds = %if.end.i.i1272.i337
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 37, i32 1) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 38, i32 0) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 39, i32 0) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 39, i32 0) #7
  br label %cabac_subpartition_b.exit.i.i344

if.end3.i.i.i341:                                 ; preds = %if.end.i.i1272.i337
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 37, i32 0) #7
  %cmp4.i.i.i339 = icmp eq i8 %384, 7
  %conv.i.i1274.i340 = zext i1 %cmp4.i.i.i339 to i32
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 39, i32 %conv.i.i1274.i340) #7
  br label %cabac_subpartition_b.exit.i.i344

cabac_subpartition_b.exit.i.i344:                 ; preds = %if.end3.i.i.i341, %if.then2.i.i1273.i338, %if.then.i.i1270.i335
  %arrayidx29.1.i.i342 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 78, i32 1
  %387 = load i8, i8* %arrayidx29.1.i.i342, align 1, !tbaa !40
  %cmp.i.1.i1275.i343 = icmp eq i8 %387, 12
  br i1 %cmp.i.1.i1275.i343, label %if.then.i.1.i1388.i655, label %if.end.i.1.i1386.i650

if.then47.i.i345:                                 ; preds = %for.body41.preheader.i.i334
  tail call fastcc void @cabac_ref_b(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 0) #7
  br label %for.inc49.i.i349

for.inc49.i.i349:                                 ; preds = %if.then47.i.i345, %for.body41.preheader.i.i334
  %388 = load i8, i8* %arrayidx29.1.i.i342, align 1, !tbaa !40
  %idxprom.1.i.i346 = zext i8 %388 to i32
  %arrayidx45.1.i.i347 = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 0, i32 %idxprom.1.i.i346
  %389 = load i8, i8* %arrayidx45.1.i.i347, align 1, !tbaa !40
  %tobool46.1.i.i348 = icmp eq i8 %389, 0
  br i1 %tobool46.1.i.i348, label %for.inc49.1.i.i642, label %if.then47.1.i.i638

if.end52.i.i352:                                  ; preds = %cabac_subpartition_b.exit.3.i.i678, %if.then47.3.i.i648, %for.inc49.2.i.i647
  %arrayidx56.i.i350 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 17, i32 1
  %390 = load i32, i32* %arrayidx56.i.i350, align 4, !tbaa !51
  %cmp57.i.i351 = icmp sgt i32 %390, 1
  br i1 %cmp57.i.i351, label %for.body65.preheader.i.i356, label %if.end78.i.i365

for.body65.preheader.i.i356:                      ; preds = %if.end52.i.i352
  %391 = load i8, i8* %arrayidx29.i.i328, align 1, !tbaa !40
  %idxprom69.i.i353 = zext i8 %391 to i32
  %arrayidx70.i.i354 = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 1, i32 %idxprom69.i.i353
  %392 = load i8, i8* %arrayidx70.i.i354, align 1, !tbaa !40
  %tobool71.i.i355 = icmp eq i8 %392, 0
  br i1 %tobool71.i.i355, label %for.inc75.i.i361, label %if.then72.i.i357

if.then72.i.i357:                                 ; preds = %for.body65.preheader.i.i356
  tail call fastcc void @cabac_ref_b(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 1, i32 0) #7
  br label %for.inc75.i.i361

for.inc75.i.i361:                                 ; preds = %if.then72.i.i357, %for.body65.preheader.i.i356
  %393 = load i8, i8* %arrayidx29.1.i.i342, align 1, !tbaa !40
  %idxprom69.1.i.i358 = zext i8 %393 to i32
  %arrayidx70.1.i.i359 = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 1, i32 %idxprom69.1.i.i358
  %394 = load i8, i8* %arrayidx70.1.i.i359, align 1, !tbaa !40
  %tobool71.1.i.i360 = icmp eq i8 %394, 0
  br i1 %tobool71.1.i.i360, label %for.inc75.1.i.i631, label %if.then72.1.i.i627

if.end78.i.i365:                                  ; preds = %if.then72.3.i.i637, %for.inc75.2.i.i636, %if.end52.i.i352
  %395 = load i8, i8* %arrayidx29.i.i328, align 1, !tbaa !40
  %idxprom88.i.i362 = zext i8 %395 to i32
  %arrayidx89.i.i363 = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 0, i32 %idxprom88.i.i362
  %396 = load i8, i8* %arrayidx89.i.i363, align 1, !tbaa !40
  %tobool90.i.i364 = icmp eq i8 %396, 0
  br i1 %tobool90.i.i364, label %for.inc100.i.i376, label %do.body.i1282.i372

do.body.i1282.i372:                               ; preds = %if.end78.i.i365
  %call.i1276.i366 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 0, i32 2) #7
  %397 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 0
  %conv7.i.i1277.i367 = zext i16 %call.i1276.i366 to i32
  %mul8.i.i.i1278.i368 = mul nuw i32 %conv7.i.i1277.i367, 65537
  %i42.i.i.i1279.i369 = bitcast i8* %397 to i32*
  store i32 %mul8.i.i.i1278.i368, i32* %i42.i.i.i1279.i369, align 4, !tbaa !40
  %add.ptr48.i.i.i1280.i370 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 16
  %i49.i.i.i1281.i371 = bitcast i8* %add.ptr48.i.i.i1280.i370 to i32*
  store i32 %mul8.i.i.i1278.i368, i32* %i49.i.i.i1281.i371, align 4, !tbaa !40
  br label %for.inc100.i.i376

for.inc100.i.i376:                                ; preds = %do.body.i1282.i372, %if.end78.i.i365
  %398 = load i8, i8* %arrayidx29.1.i.i342, align 1, !tbaa !40
  %idxprom88.1.i.i373 = zext i8 %398 to i32
  %arrayidx89.1.i.i374 = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 0, i32 %idxprom88.1.i.i373
  %399 = load i8, i8* %arrayidx89.1.i.i374, align 1, !tbaa !40
  %tobool90.1.i.i375 = icmp eq i8 %399, 0
  br i1 %tobool90.1.i.i375, label %for.inc100.1.i.i604, label %do.body.1.i.i600

do.body116.i.i383:                                ; preds = %for.inc100.3.i.i626
  %call119.i.i377 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 1, i32 0, i32 2) #7
  %400 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 12, i32 0
  %conv7.i461.i.i378 = zext i16 %call119.i.i377 to i32
  %mul8.i.i462.i.i379 = mul nuw i32 %conv7.i461.i.i378, 65537
  %i42.i.i463.i.i380 = bitcast i8* %400 to i32*
  store i32 %mul8.i.i462.i.i379, i32* %i42.i.i463.i.i380, align 4, !tbaa !40
  %add.ptr48.i.i464.i.i381 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 12, i32 16
  %i49.i.i465.i.i382 = bitcast i8* %add.ptr48.i.i464.i.i381 to i32*
  store i32 %mul8.i.i462.i.i379, i32* %i49.i.i465.i.i382, align 4, !tbaa !40
  br label %for.inc129.i.i387

for.inc129.i.i387:                                ; preds = %for.inc100.3.i.i626, %do.body116.i.i383
  %401 = load i8, i8* %arrayidx29.1.i.i342, align 1, !tbaa !40
  %idxprom112.1.i.i384 = zext i8 %401 to i32
  %arrayidx113.1.i.i385 = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 1, i32 %idxprom112.1.i.i384
  %402 = load i8, i8* %arrayidx113.1.i.i385, align 1, !tbaa !40
  %tobool114.1.i.i386 = icmp eq i8 %402, 0
  br i1 %tobool114.1.i.i386, label %for.inc129.1.i.i575, label %do.body116.1.i.i571

if.else.i1283.i389:                               ; preds = %if.end23.i.i327
  %i_mb_type.off.i.i388 = add i32 %311, -8
  %403 = icmp ult i32 %i_mb_type.off.i.i388, 9
  br i1 %403, label %if.then137.i.i399, label %if.else305.i.i514

if.then137.i.i399:                                ; preds = %if.else.i1283.i389
  %404 = mul nuw nsw i32 %311, 3
  %i_partition.i1284.i390 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 77
  %405 = load i32, i32* %i_partition.i1284.i390, align 4, !tbaa !50
  %sub140.i.i391 = add nsw i32 %404, -38
  %add141.i.i392 = add i32 %sub140.i.i391, %405
  %arrayidx142.i.i393 = getelementptr inbounds [27 x i8], [27 x i8]* @cabac_mb_header_b.i_mb_bits, i32 0, i32 %add141.i.i392
  %406 = load i8, i8* %arrayidx142.i.i393, align 1, !tbaa !40
  %conv143.i.i394 = zext i8 %406 to i32
  %and144.i.i395 = and i32 %conv143.i.i394, 1
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 30, i32 %and144.i.i395) #7
  %sub146.i.i396 = sub nuw nsw i32 32, %and144.i.i395
  %407 = lshr i32 %conv143.i.i394, 1
  %and147.i.i397 = and i32 %407, 1
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 %sub146.i.i396, i32 %and147.i.i397) #7
  %408 = lshr i32 %conv143.i.i394, 2
  %cmp149.i.i398 = icmp eq i32 %408, 1
  br i1 %cmp149.i.i398, label %if.end163.i.i409, label %if.then151.i.i404

if.then151.i.i404:                                ; preds = %if.then137.i.i399
  %and152.i.i400 = and i32 %408, 1
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 32, i32 %and152.i.i400) #7
  %409 = lshr i32 %conv143.i.i394, 3
  %and154.i.i401 = and i32 %409, 1
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 32, i32 %and154.i.i401) #7
  %410 = lshr i32 %conv143.i.i394, 4
  %and156.i.i402 = and i32 %410, 1
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 32, i32 %and156.i.i402) #7
  %411 = lshr i32 %conv143.i.i394, 5
  %cmp158.i.i403 = icmp eq i32 %411, 1
  br i1 %cmp158.i.i403, label %if.end163.i.i409, label %if.then160.i.i406

if.then160.i.i406:                                ; preds = %if.then151.i.i404
  %and161.i.i405 = and i32 %411, 1
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 32, i32 %and161.i.i405) #7
  br label %if.end163.i.i409

if.end163.i.i409:                                 ; preds = %if.then160.i.i406, %if.then151.i.i404, %if.then137.i.i399
  %arrayidx168.i.i407 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 17, i32 0
  %412 = load i32, i32* %arrayidx168.i.i407, align 4, !tbaa !51
  %cmp169.i.i408 = icmp sgt i32 %412, 1
  br i1 %cmp169.i.i408, label %if.then171.i.i411, label %if.end193.i.i423

if.then171.i.i411:                                ; preds = %if.end163.i.i409
  %413 = lshr i32 407727, %311
  %414 = and i32 %413, 1
  %tobool174.i.i410 = icmp eq i32 %414, 0
  br i1 %tobool174.i.i410, label %if.then175.i.i412, label %if.end176.i.i414

if.then175.i.i412:                                ; preds = %if.then171.i.i411
  tail call fastcc void @cabac_ref_b(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 0) #7
  br label %if.end176.i.i414

if.end176.i.i414:                                 ; preds = %if.then175.i.i412, %if.then171.i.i411
  %415 = lshr i32 93520, %311
  %416 = and i32 %415, 1
  %tobool180.i.i413 = icmp eq i32 %416, 0
  br i1 %tobool180.i.i413, label %if.end193.i.i423, label %land.lhs.true181.i.i416

land.lhs.true181.i.i416:                          ; preds = %if.end176.i.i414
  %417 = load i32, i32* %i_partition.i1284.i390, align 4, !tbaa !50
  %cmp184.i.i415 = icmp eq i32 %417, 16
  br i1 %cmp184.i.i415, label %if.end193.i.i423, label %if.then186.i.i420

if.then186.i.i420:                                ; preds = %land.lhs.true181.i.i416
  %cmp189.i.i417 = icmp eq i32 %417, 15
  %conv190.i.i418 = zext i1 %cmp189.i.i417 to i32
  %shr191.i.i419 = lshr i32 8, %conv190.i.i418
  tail call fastcc void @cabac_ref_b(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 %shr191.i.i419) #7
  br label %if.end193.i.i423

if.end193.i.i423:                                 ; preds = %if.then186.i.i420, %land.lhs.true181.i.i416, %if.end176.i.i414, %if.end163.i.i409
  %arrayidx197.i.i421 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 17, i32 1
  %418 = load i32, i32* %arrayidx197.i.i421, align 4, !tbaa !51
  %cmp198.i.i422 = icmp sgt i32 %418, 1
  br i1 %cmp198.i.i422, label %if.then200.i.i425, label %if.end222.i.i437

if.then200.i.i425:                                ; preds = %if.end193.i.i423
  %419 = add nsw i32 %311, -11
  %tobool203.i.i424 = icmp ugt i32 %419, 5
  br i1 %tobool203.i.i424, label %if.end205.i.i428, label %if.then204.i.i426

if.then204.i.i426:                                ; preds = %if.then200.i.i425
  tail call fastcc void @cabac_ref_b(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 1, i32 0) #7
  br label %if.end205.i.i428

if.end205.i.i428:                                 ; preds = %if.then204.i.i426, %if.then200.i.i425
  %420 = lshr i32 112128, %311
  %421 = and i32 %420, 1
  %tobool209.i.i427 = icmp eq i32 %421, 0
  br i1 %tobool209.i.i427, label %if.end222.i.i437, label %land.lhs.true210.i.i430

land.lhs.true210.i.i430:                          ; preds = %if.end205.i.i428
  %422 = load i32, i32* %i_partition.i1284.i390, align 4, !tbaa !50
  %cmp213.i.i429 = icmp eq i32 %422, 16
  br i1 %cmp213.i.i429, label %if.then232.i.i439, label %if.then215.i.i434

if.then215.i.i434:                                ; preds = %land.lhs.true210.i.i430
  %cmp218.i.i431 = icmp eq i32 %422, 15
  %conv219.i.i432 = zext i1 %cmp218.i.i431 to i32
  %shr220.i.i433 = lshr i32 8, %conv219.i.i432
  tail call fastcc void @cabac_ref_b(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 1, i32 %shr220.i.i433) #7
  br label %if.end222.i.i437

if.end222.i.i437:                                 ; preds = %if.then215.i.i434, %if.end205.i.i428, %if.end193.i.i423
  %.pr.i.i435 = load i32, i32* %i_partition.i1284.i390, align 4, !tbaa !50
  %cmp230.i.i436 = icmp eq i32 %.pr.i.i435, 16
  br i1 %cmp230.i.i436, label %if.then232.i.i439, label %if.else245.i.i461

if.then232.i.i439:                                ; preds = %if.end222.i.i437, %land.lhs.true210.i.i430
  %423 = lshr i32 407727, %311
  %424 = and i32 %423, 1
  %tobool235.i.i438 = icmp eq i32 %424, 0
  br i1 %tobool235.i.i438, label %do.body237.i.i458, label %for.inc302.i.i513

do.body237.i.i458:                                ; preds = %if.then232.i.i439
  %call239.i.i440 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 0, i32 4) #7
  %425 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 0
  %conv7.i467.i.i441 = zext i16 %call239.i.i440 to i32
  %mul8.i.i468.i.i442 = mul nuw i32 %conv7.i467.i.i441, 65537
  %i67.i.i.i1285.i443 = bitcast i8* %425 to i32*
  store i32 %mul8.i.i468.i.i442, i32* %i67.i.i.i1285.i443, align 4, !tbaa !40
  %add.ptr70.i.i.i1286.i444 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 4
  %i71.i.i.i1287.i445 = bitcast i8* %add.ptr70.i.i.i1286.i444 to i32*
  store i32 %mul8.i.i468.i.i442, i32* %i71.i.i.i1287.i445, align 4, !tbaa !40
  %add.ptr77.i.i.i1288.i446 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 16
  %i79.i.i.i1289.i447 = bitcast i8* %add.ptr77.i.i.i1288.i446 to i32*
  store i32 %mul8.i.i468.i.i442, i32* %i79.i.i.i1289.i447, align 4, !tbaa !40
  %add.ptr82.i.i.i1290.i448 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 20
  %i83.i.i.i1291.i449 = bitcast i8* %add.ptr82.i.i.i1290.i448 to i32*
  store i32 %mul8.i.i468.i.i442, i32* %i83.i.i.i1291.i449, align 4, !tbaa !40
  %add.ptr89.i.i.i1292.i450 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 32
  %i91.i.i.i1293.i451 = bitcast i8* %add.ptr89.i.i.i1292.i450 to i32*
  store i32 %mul8.i.i468.i.i442, i32* %i91.i.i.i1293.i451, align 4, !tbaa !40
  %add.ptr94.i.i.i1294.i452 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 36
  %i95.i.i.i1295.i453 = bitcast i8* %add.ptr94.i.i.i1294.i452 to i32*
  store i32 %mul8.i.i468.i.i442, i32* %i95.i.i.i1295.i453, align 4, !tbaa !40
  %add.ptr97.i.i.i1296.i454 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 48
  %i99.i.i.i1297.i455 = bitcast i8* %add.ptr97.i.i.i1296.i454 to i32*
  store i32 %mul8.i.i468.i.i442, i32* %i99.i.i.i1297.i455, align 4, !tbaa !40
  %add.ptr102.i.i.i1298.i456 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 52
  %i103.i.i.i1299.i457 = bitcast i8* %add.ptr102.i.i.i1298.i456 to i32*
  store i32 %mul8.i.i468.i.i442, i32* %i103.i.i.i1299.i457, align 4, !tbaa !40
  br label %for.inc302.i.i513

if.else245.i.i461:                                ; preds = %if.end222.i.i437
  %cmp248.i.i459 = icmp eq i32 %.pr.i.i435, 14
  %426 = lshr i32 116560, %311
  %427 = and i32 %426, 1
  %tobool253.i.i460 = icmp ne i32 %427, 0
  br i1 %cmp248.i.i459, label %if.then250.i.i462, label %if.else275.i.i487

if.then250.i.i462:                                ; preds = %if.else245.i.i461
  br i1 %tobool253.i.i460, label %do.body255.i.i473, label %if.end262.i.i475

do.body255.i.i473:                                ; preds = %if.then250.i.i462
  %call257.i.i463 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 0, i32 4) #7
  %428 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 0
  %conv7.i470.i.i464 = zext i16 %call257.i.i463 to i32
  %mul8.i.i471.i.i465 = mul nuw i32 %conv7.i470.i.i464, 65537
  %i67.i.i472.i.i466 = bitcast i8* %428 to i32*
  store i32 %mul8.i.i471.i.i465, i32* %i67.i.i472.i.i466, align 4, !tbaa !40
  %add.ptr70.i.i473.i.i467 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 4
  %i71.i.i474.i.i468 = bitcast i8* %add.ptr70.i.i473.i.i467 to i32*
  store i32 %mul8.i.i471.i.i465, i32* %i71.i.i474.i.i468, align 4, !tbaa !40
  %add.ptr77.i.i475.i.i469 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 16
  %i79.i.i476.i.i470 = bitcast i8* %add.ptr77.i.i475.i.i469 to i32*
  store i32 %mul8.i.i471.i.i465, i32* %i79.i.i476.i.i470, align 4, !tbaa !40
  %add.ptr82.i.i477.i.i471 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 20
  %i83.i.i478.i.i472 = bitcast i8* %add.ptr82.i.i477.i.i471 to i32*
  store i32 %mul8.i.i471.i.i465, i32* %i83.i.i478.i.i472, align 4, !tbaa !40
  br label %if.end262.i.i475

if.end262.i.i475:                                 ; preds = %do.body255.i.i473, %if.then250.i.i462
  %429 = lshr i32 430767, %311
  %430 = and i32 %429, 1
  %tobool265.i.i474 = icmp eq i32 %430, 0
  br i1 %tobool265.i.i474, label %do.body267.i.i486, label %for.inc302.i.i513

do.body267.i.i486:                                ; preds = %if.end262.i.i475
  %call269.i.i476 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 8, i32 4) #7
  %431 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 28, i32 0
  %conv7.i480.i.i477 = zext i16 %call269.i.i476 to i32
  %mul8.i.i481.i.i478 = mul nuw i32 %conv7.i480.i.i477, 65537
  %i67.i.i482.i.i479 = bitcast i8* %431 to i32*
  store i32 %mul8.i.i481.i.i478, i32* %i67.i.i482.i.i479, align 4, !tbaa !40
  %add.ptr70.i.i483.i.i480 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 28, i32 4
  %i71.i.i484.i.i481 = bitcast i8* %add.ptr70.i.i483.i.i480 to i32*
  store i32 %mul8.i.i481.i.i478, i32* %i71.i.i484.i.i481, align 4, !tbaa !40
  %add.ptr77.i.i485.i.i482 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 28, i32 16
  %i79.i.i486.i.i483 = bitcast i8* %add.ptr77.i.i485.i.i482 to i32*
  store i32 %mul8.i.i481.i.i478, i32* %i79.i.i486.i.i483, align 4, !tbaa !40
  %add.ptr82.i.i487.i.i484 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 28, i32 20
  %i83.i.i488.i.i485 = bitcast i8* %add.ptr82.i.i487.i.i484 to i32*
  store i32 %mul8.i.i481.i.i478, i32* %i83.i.i488.i.i485, align 4, !tbaa !40
  br label %for.inc302.i.i513

if.else275.i.i487:                                ; preds = %if.else245.i.i461
  br i1 %tobool253.i.i460, label %do.body280.i.i498, label %if.end287.i.i500

do.body280.i.i498:                                ; preds = %if.else275.i.i487
  %call282.i.i488 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 0, i32 2) #7
  %432 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 0
  %conv7.i490.i.i489 = zext i16 %call282.i.i488 to i32
  %mul8.i.i491.i.i490 = mul nuw i32 %conv7.i490.i.i489, 65537
  %i42.i.i492.i.i491 = bitcast i8* %432 to i32*
  store i32 %mul8.i.i491.i.i490, i32* %i42.i.i492.i.i491, align 4, !tbaa !40
  %add.ptr48.i.i493.i.i492 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 16
  %i49.i.i494.i.i493 = bitcast i8* %add.ptr48.i.i493.i.i492 to i32*
  store i32 %mul8.i.i491.i.i490, i32* %i49.i.i494.i.i493, align 4, !tbaa !40
  %add.ptr55.i.i.i1300.i494 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 32
  %i56.i.i.i1301.i495 = bitcast i8* %add.ptr55.i.i.i1300.i494 to i32*
  store i32 %mul8.i.i491.i.i490, i32* %i56.i.i.i1301.i495, align 4, !tbaa !40
  %add.ptr58.i.i.i1302.i496 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 48
  %i59.i.i.i1303.i497 = bitcast i8* %add.ptr58.i.i.i1302.i496 to i32*
  store i32 %mul8.i.i491.i.i490, i32* %i59.i.i.i1303.i497, align 4, !tbaa !40
  br label %if.end287.i.i500

if.end287.i.i500:                                 ; preds = %do.body280.i.i498, %if.else275.i.i487
  %433 = lshr i32 430767, %311
  %434 = and i32 %433, 1
  %tobool290.i.i499 = icmp eq i32 %434, 0
  br i1 %tobool290.i.i499, label %do.body292.i.i511, label %for.inc302.i.i513

do.body292.i.i511:                                ; preds = %if.end287.i.i500
  %call294.i.i501 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 4, i32 2) #7
  %435 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 14, i32 0
  %conv7.i496.i.i502 = zext i16 %call294.i.i501 to i32
  %mul8.i.i497.i.i503 = mul nuw i32 %conv7.i496.i.i502, 65537
  %i42.i.i498.i.i504 = bitcast i8* %435 to i32*
  store i32 %mul8.i.i497.i.i503, i32* %i42.i.i498.i.i504, align 4, !tbaa !40
  %add.ptr48.i.i499.i.i505 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 14, i32 16
  %i49.i.i500.i.i506 = bitcast i8* %add.ptr48.i.i499.i.i505 to i32*
  store i32 %mul8.i.i497.i.i503, i32* %i49.i.i500.i.i506, align 4, !tbaa !40
  %add.ptr55.i.i501.i.i507 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 14, i32 32
  %i56.i.i502.i.i508 = bitcast i8* %add.ptr55.i.i501.i.i507 to i32*
  store i32 %mul8.i.i497.i.i503, i32* %i56.i.i502.i.i508, align 4, !tbaa !40
  %add.ptr58.i.i503.i.i509 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 14, i32 48
  %i59.i.i504.i.i510 = bitcast i8* %add.ptr58.i.i503.i.i509 to i32*
  store i32 %mul8.i.i497.i.i503, i32* %i59.i.i504.i.i510, align 4, !tbaa !40
  br label %for.inc302.i.i513

for.inc302.i.i513:                                ; preds = %do.body292.i.i511, %if.end287.i.i500, %do.body267.i.i486, %if.end262.i.i475, %do.body237.i.i458, %if.then232.i.i439
  %436 = load i32, i32* %i_partition.i1284.i390, align 4, !tbaa !50
  %cmp230.1.i.i512 = icmp eq i32 %436, 16
  br i1 %cmp230.1.i.i512, label %if.then232.1.i.i733, label %if.else245.1.i.i681

if.else305.i.i514:                                ; preds = %if.else.i1283.i389
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 30, i32 1) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 31, i32 1) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 32, i32 1) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 32, i32 0) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 32, i32 1) #7
  tail call fastcc void @cabac_mb_type_intra(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 %311, i32 32, i32 33, i32 34, i32 34, i32 35, i32 35) #7
  switch i32 %311, label %if.then26.i.i1306.i517 [
    i32 3, label %if.end7.i832
    i32 2, label %if.end40.i.i1353.i564
  ]

if.then26.i.i1306.i517:                           ; preds = %if.else305.i.i514
  %b_transform_8x8_mode.i.i1304.i515 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 53, i32 0, i32 15
  %437 = load i32, i32* %b_transform_8x8_mode.i.i1304.i515, align 4, !tbaa !52
  %tobool27.i.i1305.i516 = icmp eq i32 %437, 0
  br i1 %tobool27.i.i1305.i516, label %if.end29.i.i1316.i527, label %if.then28.i.i1312.i523

if.then28.i.i1312.i523:                           ; preds = %if.then26.i.i1306.i517
  %h.idx.i.i1307.i518 = getelementptr %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 79
  %h.idx.val.i.i1308.i519 = load i32, i32* %h.idx.i.i1307.i518, align 4, !tbaa !54
  %h.idx84.i.i1309.i520 = getelementptr %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 10
  %h.idx84.val.i.i1310.i521 = load i32, i32* %h.idx84.i.i1309.i520, align 8, !tbaa !55
  %add.i.i.i1311.i522 = add nsw i32 %h.idx84.val.i.i1310.i521, 399
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 %add.i.i.i1311.i522, i32 %h.idx.val.i.i1308.i519) #7
  br label %if.end29.i.i1316.i527

if.end29.i.i1316.i527:                            ; preds = %if.then28.i.i1312.i523, %if.then26.i.i1306.i517
  %b_transform_8x8.i.i1313.i524 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 79
  %438 = load i32, i32* %b_transform_8x8.i.i1313.i524, align 4, !tbaa !54
  %tobool31.i.i1314.i525 = icmp eq i32 %438, 0
  %cond.i.i1315.i526 = select i1 %tobool31.i.i1314.i525, i32 1, i32 4
  br label %for.body.i.i1338.i550

for.body.i.i1338.i550:                            ; preds = %cabac_intra4x4_pred_mode.exit.i.i1351.i563, %if.end29.i.i1316.i527
  %i.091.i.i1317.i528 = phi i32 [ 0, %if.end29.i.i1316.i527 ], [ %add39.i.i1349.i561, %cabac_intra4x4_pred_mode.exit.i.i1351.i563 ]
  %arrayidx.i.i.i1318.i529 = getelementptr inbounds [51 x i8], [51 x i8]* @x264_scan8, i32 0, i32 %i.091.i.i1317.i528
  %439 = load i8, i8* %arrayidx.i.i.i1318.i529, align 1, !tbaa !40
  %conv.i.i.i1319.i530 = zext i8 %439 to i32
  %sub.i.i.i1320.i531 = add nsw i32 %conv.i.i.i1319.i530, -1
  %arrayidx1.i.i.i1321.i532 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 0, i32 %sub.i.i.i1320.i531
  %440 = load i8, i8* %arrayidx1.i.i.i1321.i532, align 1, !tbaa !40
  %conv2.i.i.i1322.i533 = sext i8 %440 to i32
  %sub9.i.i.i1323.i534 = add nsw i32 %conv.i.i.i1319.i530, -8
  %arrayidx10.i.i.i1324.i535 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 0, i32 %sub9.i.i.i1323.i534
  %441 = load i8, i8* %arrayidx10.i.i.i1324.i535, align 1, !tbaa !40
  %conv11.i.i.i1325.i536 = sext i8 %441 to i32
  %add.i85.i.i1326.i537 = add nsw i32 %conv2.i.i.i1322.i533, 1
  %arrayidx12.i.i.i1327.i538 = getelementptr inbounds [13 x i8], [13 x i8]* @x264_mb_pred_mode4x4_fix, i32 0, i32 %add.i85.i.i1326.i537
  %442 = load i8, i8* %arrayidx12.i.i.i1327.i538, align 1, !tbaa !40
  %add14.i.i.i1328.i539 = add nsw i32 %conv11.i.i.i1325.i536, 1
  %arrayidx15.i.i.i1329.i540 = getelementptr inbounds [13 x i8], [13 x i8]* @x264_mb_pred_mode4x4_fix, i32 0, i32 %add14.i.i.i1328.i539
  %443 = load i8, i8* %arrayidx15.i.i.i1329.i540, align 1, !tbaa !40
  %cmp.i.i.i1330.i541 = icmp slt i8 %442, %443
  %..i.i.i1331.i542 = select i1 %cmp.i.i.i1330.i541, i8 %442, i8 %443
  %cmp24.i.i.i1332.i543 = icmp slt i8 %..i.i.i1331.i542, 0
  %narrow.i.i.i1333.i544 = select i1 %cmp24.i.i.i1332.i543, i8 2, i8 %..i.i.i1331.i542
  %arrayidx35.i.i1334.i545 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 0, i32 %conv.i.i.i1319.i530
  %444 = load i8, i8* %arrayidx35.i.i1334.i545, align 1, !tbaa !40
  %conv.i506.i.i546 = sext i8 %444 to i32
  %add36.i.i1335.i547 = add nsw i32 %conv.i506.i.i546, 1
  %arrayidx37.i.i1336.i548 = getelementptr inbounds [13 x i8], [13 x i8]* @x264_mb_pred_mode4x4_fix, i32 0, i32 %add36.i.i1335.i547
  %445 = load i8, i8* %arrayidx37.i.i1336.i548, align 1, !tbaa !40
  %cmp.i88.i.i1337.i549 = icmp eq i8 %narrow.i.i.i1333.i544, %445
  br i1 %cmp.i88.i.i1337.i549, label %if.then.i.i.i1339.i551, label %if.else.i.i.i1348.i560

if.then.i.i.i1339.i551:                           ; preds = %for.body.i.i1338.i550
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 68, i32 1) #7
  br label %cabac_intra4x4_pred_mode.exit.i.i1351.i563

if.else.i.i.i1348.i560:                           ; preds = %for.body.i.i1338.i550
  %conv38.i.i1340.i552 = sext i8 %445 to i32
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 68, i32 0) #7
  %cmp1.i.i.i1341.i553 = icmp sgt i8 %445, %narrow.i.i.i1333.i544
  %dec.i.i.i1342.i554 = sext i1 %cmp1.i.i.i1341.i553 to i32
  %spec.select.i89.i.i1343.i555 = add nsw i32 %dec.i.i.i1342.i554, %conv38.i.i1340.i552
  %and.i90.i.i1344.i556 = and i32 %spec.select.i89.i.i1343.i555, 1
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 69, i32 %and.i90.i.i1344.i556) #7
  %shr15.i.i.i1345.i557 = lshr i32 %spec.select.i89.i.i1343.i555, 1
  %and3.i.i.i1346.i558 = and i32 %shr15.i.i.i1345.i557, 1
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 69, i32 %and3.i.i.i1346.i558) #7
  %shr4.i.i.i1347.i559 = ashr i32 %spec.select.i89.i.i1343.i555, 2
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 69, i32 %shr4.i.i.i1347.i559) #7
  br label %cabac_intra4x4_pred_mode.exit.i.i1351.i563

cabac_intra4x4_pred_mode.exit.i.i1351.i563:       ; preds = %if.else.i.i.i1348.i560, %if.then.i.i.i1339.i551
  %add39.i.i1349.i561 = add nuw nsw i32 %i.091.i.i1317.i528, %cond.i.i1315.i526
  %cmp32.i.i1350.i562 = icmp ult i32 %add39.i.i1349.i561, 16
  br i1 %cmp32.i.i1350.i562, label %for.body.i.i1338.i550, label %if.end40.i.i1353.i564

if.end40.i.i1353.i564:                            ; preds = %cabac_intra4x4_pred_mode.exit.i.i1351.i563, %if.else305.i.i514
  %i_chroma_pred_mode.i.i.i1354.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 83
  %446 = load i32, i32* %i_chroma_pred_mode.i.i.i1354.i, align 4, !tbaa !71
  %447 = load i32, i32* %i_neighbour.i.i306, align 32, !tbaa !56
  %and.i.i.i1355.i = and i32 %447, 1
  %tobool.i.i.i1356.i = icmp eq i32 %and.i.i.i1355.i, 0
  br i1 %tobool.i.i.i1356.i, label %if.end.i.i.i1367.i, label %land.lhs.true.i.i.i1363.i

land.lhs.true.i.i.i1363.i:                        ; preds = %if.end40.i.i1353.i564
  %chroma_pred_mode.i.i.i1358.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 66
  %448 = load i8*, i8** %chroma_pred_mode.i.i.i1358.i, align 4, !tbaa !72
  %arrayidx4.i.i.i1359.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 47, i32 0
  %449 = load i32, i32* %arrayidx4.i.i.i1359.i, align 4, !tbaa !51
  %arrayidx5.i.i.i1360.i = getelementptr inbounds i8, i8* %448, i32 %449
  %450 = load i8, i8* %arrayidx5.i.i.i1360.i, align 1, !tbaa !40
  %cmp.i86.i.i1361.i = icmp ne i8 %450, 0
  %spec.select.i.i.i1362.i = zext i1 %cmp.i86.i.i1361.i to i32
  br label %if.end.i.i.i1367.i

if.end.i.i.i1367.i:                               ; preds = %land.lhs.true.i.i.i1363.i, %if.end40.i.i1353.i564
  %ctx.0.i.i.i1364.i = phi i32 [ 0, %if.end40.i.i1353.i564 ], [ %spec.select.i.i.i1362.i, %land.lhs.true.i.i.i1363.i ]
  %and10.i.i.i1365.i = and i32 %447, 2
  %tobool11.i.i.i1366.i = icmp eq i32 %and10.i.i.i1365.i, 0
  br i1 %tobool11.i.i.i1366.i, label %if.end22.i.i.i1379.i, label %land.lhs.true12.i.i.i1374.i

land.lhs.true12.i.i.i1374.i:                      ; preds = %if.end.i.i.i1367.i
  %chroma_pred_mode14.i.i.i1368.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 66
  %451 = load i8*, i8** %chroma_pred_mode14.i.i.i1368.i, align 4, !tbaa !72
  %i_mb_top_xy.i.i.i1369.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 48
  %452 = load i32, i32* %i_mb_top_xy.i.i.i1369.i, align 4, !tbaa !70
  %arrayidx16.i.i.i1370.i = getelementptr inbounds i8, i8* %451, i32 %452
  %453 = load i8, i8* %arrayidx16.i.i.i1370.i, align 1, !tbaa !40
  %cmp18.i.i.i1371.i = icmp ne i8 %453, 0
  %inc21.i.i.i1372.i = zext i1 %cmp18.i.i.i1371.i to i32
  %spec.select53.i.i.i1373.i = add nuw nsw i32 %ctx.0.i.i.i1364.i, %inc21.i.i.i1372.i
  br label %if.end22.i.i.i1379.i

if.end22.i.i.i1379.i:                             ; preds = %land.lhs.true12.i.i.i1374.i, %if.end.i.i.i1367.i
  %ctx.1.i.i.i1375.i = phi i32 [ %ctx.0.i.i.i1364.i, %if.end.i.i.i1367.i ], [ %spec.select53.i.i.i1373.i, %land.lhs.true12.i.i.i1374.i ]
  %add.i87.i.i1376.i = add nuw nsw i32 %ctx.1.i.i.i1375.i, 64
  %454 = add i32 %446, -1
  %cmp23.i.i.i1377.i = icmp ult i32 %454, 3
  %conv24.i.i.i1378.i = zext i1 %cmp23.i.i.i1377.i to i32
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add.i87.i.i1376.i, i32 %conv24.i.i.i1378.i) #7
  br i1 %cmp23.i.i.i1377.i, label %if.then27.i.i.i1381.i, label %if.end7.i832

if.then27.i.i.i1381.i:                            ; preds = %if.end22.i.i.i1379.i
  %455 = or i32 %446, 1
  %456 = icmp eq i32 %455, 3
  %conv29.i.i.i1380.i = zext i1 %456 to i32
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 67, i32 %conv29.i.i.i1380.i) #7
  br i1 %456, label %if.then32.i.i.i1384.i, label %if.end7.i832

if.then32.i.i.i1384.i:                            ; preds = %if.then27.i.i.i1381.i
  %cmp33.i.i.i1382.i = icmp eq i32 %446, 3
  %conv34.i.i.i1383.i = zext i1 %cmp33.i.i.i1382.i to i32
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 67, i32 %conv34.i.i.i1383.i) #7
  br label %if.end7.i832

do.body116.1.i.i571:                              ; preds = %for.inc129.i.i387
  %call119.1.i.i565 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 1, i32 4, i32 2) #7
  %457 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 14, i32 0
  %conv7.i461.1.i.i566 = zext i16 %call119.1.i.i565 to i32
  %mul8.i.i462.1.i.i567 = mul nuw i32 %conv7.i461.1.i.i566, 65537
  %i42.i.i463.1.i.i568 = bitcast i8* %457 to i32*
  store i32 %mul8.i.i462.1.i.i567, i32* %i42.i.i463.1.i.i568, align 4, !tbaa !40
  %add.ptr48.i.i464.1.i.i569 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 14, i32 16
  %i49.i.i465.1.i.i570 = bitcast i8* %add.ptr48.i.i464.1.i.i569 to i32*
  store i32 %mul8.i.i462.1.i.i567, i32* %i49.i.i465.1.i.i570, align 4, !tbaa !40
  br label %for.inc129.1.i.i575

for.inc129.1.i.i575:                              ; preds = %do.body116.1.i.i571, %for.inc129.i.i387
  %458 = load i8, i8* %arrayidx29.2.i.i656, align 1, !tbaa !40
  %idxprom112.2.i.i572 = zext i8 %458 to i32
  %arrayidx113.2.i.i573 = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 1, i32 %idxprom112.2.i.i572
  %459 = load i8, i8* %arrayidx113.2.i.i573, align 1, !tbaa !40
  %tobool114.2.i.i574 = icmp eq i8 %459, 0
  br i1 %tobool114.2.i.i574, label %for.inc129.2.i.i586, label %do.body116.2.i.i582

do.body116.2.i.i582:                              ; preds = %for.inc129.1.i.i575
  %call119.2.i.i576 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 1, i32 8, i32 2) #7
  %460 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 28, i32 0
  %conv7.i461.2.i.i577 = zext i16 %call119.2.i.i576 to i32
  %mul8.i.i462.2.i.i578 = mul nuw i32 %conv7.i461.2.i.i577, 65537
  %i42.i.i463.2.i.i579 = bitcast i8* %460 to i32*
  store i32 %mul8.i.i462.2.i.i578, i32* %i42.i.i463.2.i.i579, align 4, !tbaa !40
  %add.ptr48.i.i464.2.i.i580 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 28, i32 16
  %i49.i.i465.2.i.i581 = bitcast i8* %add.ptr48.i.i464.2.i.i580 to i32*
  store i32 %mul8.i.i462.2.i.i578, i32* %i49.i.i465.2.i.i581, align 4, !tbaa !40
  br label %for.inc129.2.i.i586

for.inc129.2.i.i586:                              ; preds = %do.body116.2.i.i582, %for.inc129.1.i.i575
  %461 = load i8, i8* %arrayidx29.3.i.i666, align 1, !tbaa !40
  %idxprom112.3.i.i583 = zext i8 %461 to i32
  %arrayidx113.3.i.i584 = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 1, i32 %idxprom112.3.i.i583
  %462 = load i8, i8* %arrayidx113.3.i.i584, align 1, !tbaa !40
  %tobool114.3.i.i585 = icmp eq i8 %462, 0
  br i1 %tobool114.3.i.i585, label %if.end7.i832, label %do.body116.3.i.i593

do.body116.3.i.i593:                              ; preds = %for.inc129.2.i.i586
  %call119.3.i.i587 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 1, i32 12, i32 2) #7
  %463 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 30, i32 0
  %conv7.i461.3.i.i588 = zext i16 %call119.3.i.i587 to i32
  %mul8.i.i462.3.i.i589 = mul nuw i32 %conv7.i461.3.i.i588, 65537
  %i42.i.i463.3.i.i590 = bitcast i8* %463 to i32*
  store i32 %mul8.i.i462.3.i.i589, i32* %i42.i.i463.3.i.i590, align 4, !tbaa !40
  %add.ptr48.i.i464.3.i.i591 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 30, i32 16
  %i49.i.i465.3.i.i592 = bitcast i8* %add.ptr48.i.i464.3.i.i591 to i32*
  store i32 %mul8.i.i462.3.i.i589, i32* %i49.i.i465.3.i.i592, align 4, !tbaa !40
  br label %if.end7.i832

do.body.1.i.i600:                                 ; preds = %for.inc100.i.i376
  %call.1.i.i594 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 4, i32 2) #7
  %464 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 14, i32 0
  %conv7.i.1.i.i595 = zext i16 %call.1.i.i594 to i32
  %mul8.i.i.1.i.i596 = mul nuw i32 %conv7.i.1.i.i595, 65537
  %i42.i.i.1.i.i597 = bitcast i8* %464 to i32*
  store i32 %mul8.i.i.1.i.i596, i32* %i42.i.i.1.i.i597, align 4, !tbaa !40
  %add.ptr48.i.i.1.i.i598 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 14, i32 16
  %i49.i.i.1.i.i599 = bitcast i8* %add.ptr48.i.i.1.i.i598 to i32*
  store i32 %mul8.i.i.1.i.i596, i32* %i49.i.i.1.i.i599, align 4, !tbaa !40
  br label %for.inc100.1.i.i604

for.inc100.1.i.i604:                              ; preds = %do.body.1.i.i600, %for.inc100.i.i376
  %465 = load i8, i8* %arrayidx29.2.i.i656, align 1, !tbaa !40
  %idxprom88.2.i.i601 = zext i8 %465 to i32
  %arrayidx89.2.i.i602 = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 0, i32 %idxprom88.2.i.i601
  %466 = load i8, i8* %arrayidx89.2.i.i602, align 1, !tbaa !40
  %tobool90.2.i.i603 = icmp eq i8 %466, 0
  br i1 %tobool90.2.i.i603, label %for.inc100.2.i.i615, label %do.body.2.i.i611

do.body.2.i.i611:                                 ; preds = %for.inc100.1.i.i604
  %call.2.i.i605 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 8, i32 2) #7
  %467 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 28, i32 0
  %conv7.i.2.i.i606 = zext i16 %call.2.i.i605 to i32
  %mul8.i.i.2.i.i607 = mul nuw i32 %conv7.i.2.i.i606, 65537
  %i42.i.i.2.i.i608 = bitcast i8* %467 to i32*
  store i32 %mul8.i.i.2.i.i607, i32* %i42.i.i.2.i.i608, align 4, !tbaa !40
  %add.ptr48.i.i.2.i.i609 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 28, i32 16
  %i49.i.i.2.i.i610 = bitcast i8* %add.ptr48.i.i.2.i.i609 to i32*
  store i32 %mul8.i.i.2.i.i607, i32* %i49.i.i.2.i.i610, align 4, !tbaa !40
  br label %for.inc100.2.i.i615

for.inc100.2.i.i615:                              ; preds = %do.body.2.i.i611, %for.inc100.1.i.i604
  %468 = load i8, i8* %arrayidx29.3.i.i666, align 1, !tbaa !40
  %idxprom88.3.i.i612 = zext i8 %468 to i32
  %arrayidx89.3.i.i613 = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 0, i32 %idxprom88.3.i.i612
  %469 = load i8, i8* %arrayidx89.3.i.i613, align 1, !tbaa !40
  %tobool90.3.i.i614 = icmp eq i8 %469, 0
  br i1 %tobool90.3.i.i614, label %for.inc100.3.i.i626, label %do.body.3.i.i622

do.body.3.i.i622:                                 ; preds = %for.inc100.2.i.i615
  %call.3.i.i616 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 12, i32 2) #7
  %470 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 30, i32 0
  %conv7.i.3.i.i617 = zext i16 %call.3.i.i616 to i32
  %mul8.i.i.3.i.i618 = mul nuw i32 %conv7.i.3.i.i617, 65537
  %i42.i.i.3.i.i619 = bitcast i8* %470 to i32*
  store i32 %mul8.i.i.3.i.i618, i32* %i42.i.i.3.i.i619, align 4, !tbaa !40
  %add.ptr48.i.i.3.i.i620 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 30, i32 16
  %i49.i.i.3.i.i621 = bitcast i8* %add.ptr48.i.i.3.i.i620 to i32*
  store i32 %mul8.i.i.3.i.i618, i32* %i49.i.i.3.i.i621, align 4, !tbaa !40
  br label %for.inc100.3.i.i626

for.inc100.3.i.i626:                              ; preds = %do.body.3.i.i622, %for.inc100.2.i.i615
  %471 = load i8, i8* %arrayidx29.i.i328, align 1, !tbaa !40
  %idxprom112.i.i623 = zext i8 %471 to i32
  %arrayidx113.i.i624 = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 1, i32 %idxprom112.i.i623
  %472 = load i8, i8* %arrayidx113.i.i624, align 1, !tbaa !40
  %tobool114.i.i625 = icmp eq i8 %472, 0
  br i1 %tobool114.i.i625, label %for.inc129.i.i387, label %do.body116.i.i383

if.then72.1.i.i627:                               ; preds = %for.inc75.i.i361
  tail call fastcc void @cabac_ref_b(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 1, i32 4) #7
  br label %for.inc75.1.i.i631

for.inc75.1.i.i631:                               ; preds = %if.then72.1.i.i627, %for.inc75.i.i361
  %473 = load i8, i8* %arrayidx29.2.i.i656, align 1, !tbaa !40
  %idxprom69.2.i.i628 = zext i8 %473 to i32
  %arrayidx70.2.i.i629 = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 1, i32 %idxprom69.2.i.i628
  %474 = load i8, i8* %arrayidx70.2.i.i629, align 1, !tbaa !40
  %tobool71.2.i.i630 = icmp eq i8 %474, 0
  br i1 %tobool71.2.i.i630, label %for.inc75.2.i.i636, label %if.then72.2.i.i632

if.then72.2.i.i632:                               ; preds = %for.inc75.1.i.i631
  tail call fastcc void @cabac_ref_b(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 1, i32 8) #7
  br label %for.inc75.2.i.i636

for.inc75.2.i.i636:                               ; preds = %if.then72.2.i.i632, %for.inc75.1.i.i631
  %475 = load i8, i8* %arrayidx29.3.i.i666, align 1, !tbaa !40
  %idxprom69.3.i.i633 = zext i8 %475 to i32
  %arrayidx70.3.i.i634 = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 1, i32 %idxprom69.3.i.i633
  %476 = load i8, i8* %arrayidx70.3.i.i634, align 1, !tbaa !40
  %tobool71.3.i.i635 = icmp eq i8 %476, 0
  br i1 %tobool71.3.i.i635, label %if.end78.i.i365, label %if.then72.3.i.i637

if.then72.3.i.i637:                               ; preds = %for.inc75.2.i.i636
  tail call fastcc void @cabac_ref_b(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 1, i32 12) #7
  br label %if.end78.i.i365

if.then47.1.i.i638:                               ; preds = %for.inc49.i.i349
  tail call fastcc void @cabac_ref_b(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 4) #7
  br label %for.inc49.1.i.i642

for.inc49.1.i.i642:                               ; preds = %if.then47.1.i.i638, %for.inc49.i.i349
  %477 = load i8, i8* %arrayidx29.2.i.i656, align 1, !tbaa !40
  %idxprom.2.i.i639 = zext i8 %477 to i32
  %arrayidx45.2.i.i640 = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 0, i32 %idxprom.2.i.i639
  %478 = load i8, i8* %arrayidx45.2.i.i640, align 1, !tbaa !40
  %tobool46.2.i.i641 = icmp eq i8 %478, 0
  br i1 %tobool46.2.i.i641, label %for.inc49.2.i.i647, label %if.then47.2.i.i643

if.then47.2.i.i643:                               ; preds = %for.inc49.1.i.i642
  tail call fastcc void @cabac_ref_b(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 8) #7
  br label %for.inc49.2.i.i647

for.inc49.2.i.i647:                               ; preds = %if.then47.2.i.i643, %for.inc49.1.i.i642
  %479 = load i8, i8* %arrayidx29.3.i.i666, align 1, !tbaa !40
  %idxprom.3.i.i644 = zext i8 %479 to i32
  %arrayidx45.3.i.i645 = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 0, i32 %idxprom.3.i.i644
  %480 = load i8, i8* %arrayidx45.3.i.i645, align 1, !tbaa !40
  %tobool46.3.i.i646 = icmp eq i8 %480, 0
  br i1 %tobool46.3.i.i646, label %if.end52.i.i352, label %if.then47.3.i.i648

if.then47.3.i.i648:                               ; preds = %for.inc49.2.i.i647
  tail call fastcc void @cabac_ref_b(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 12) #7
  br label %if.end52.i.i352

if.end.i.1.i1386.i650:                            ; preds = %cabac_subpartition_b.exit.i.i344
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 36, i32 1) #7
  %cmp1.i.1.i1385.i649 = icmp eq i8 %387, 11
  br i1 %cmp1.i.1.i1385.i649, label %if.then2.i.1.i1387.i654, label %if.end3.i.1.i.i653

if.end3.i.1.i.i653:                               ; preds = %if.end.i.1.i1386.i650
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 37, i32 0) #7
  %cmp4.i.1.i.i651 = icmp eq i8 %387, 7
  %conv.i.1.i.i652 = zext i1 %cmp4.i.1.i.i651 to i32
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 39, i32 %conv.i.1.i.i652) #7
  br label %cabac_subpartition_b.exit.1.i.i658

if.then2.i.1.i1387.i654:                          ; preds = %if.end.i.1.i1386.i650
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 37, i32 1) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 38, i32 0) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 39, i32 0) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 39, i32 0) #7
  br label %cabac_subpartition_b.exit.1.i.i658

if.then.i.1.i1388.i655:                           ; preds = %cabac_subpartition_b.exit.i.i344
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 36, i32 0) #7
  br label %cabac_subpartition_b.exit.1.i.i658

cabac_subpartition_b.exit.1.i.i658:               ; preds = %if.then.i.1.i1388.i655, %if.then2.i.1.i1387.i654, %if.end3.i.1.i.i653
  %arrayidx29.2.i.i656 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 78, i32 2
  %481 = load i8, i8* %arrayidx29.2.i.i656, align 1, !tbaa !40
  %cmp.i.2.i1389.i657 = icmp eq i8 %481, 12
  br i1 %cmp.i.2.i1389.i657, label %if.then.i.2.i1393.i665, label %if.end.i.2.i1391.i660

if.end.i.2.i1391.i660:                            ; preds = %cabac_subpartition_b.exit.1.i.i658
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 36, i32 1) #7
  %cmp1.i.2.i1390.i659 = icmp eq i8 %481, 11
  br i1 %cmp1.i.2.i1390.i659, label %if.then2.i.2.i1392.i664, label %if.end3.i.2.i.i663

if.end3.i.2.i.i663:                               ; preds = %if.end.i.2.i1391.i660
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 37, i32 0) #7
  %cmp4.i.2.i.i661 = icmp eq i8 %481, 7
  %conv.i.2.i.i662 = zext i1 %cmp4.i.2.i.i661 to i32
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 39, i32 %conv.i.2.i.i662) #7
  br label %cabac_subpartition_b.exit.2.i.i668

if.then2.i.2.i1392.i664:                          ; preds = %if.end.i.2.i1391.i660
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 37, i32 1) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 38, i32 0) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 39, i32 0) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 39, i32 0) #7
  br label %cabac_subpartition_b.exit.2.i.i668

if.then.i.2.i1393.i665:                           ; preds = %cabac_subpartition_b.exit.1.i.i658
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 36, i32 0) #7
  br label %cabac_subpartition_b.exit.2.i.i668

cabac_subpartition_b.exit.2.i.i668:               ; preds = %if.then.i.2.i1393.i665, %if.then2.i.2.i1392.i664, %if.end3.i.2.i.i663
  %arrayidx29.3.i.i666 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 78, i32 3
  %482 = load i8, i8* %arrayidx29.3.i.i666, align 1, !tbaa !40
  %cmp.i.3.i1394.i667 = icmp eq i8 %482, 12
  br i1 %cmp.i.3.i1394.i667, label %if.then.i.3.i1398.i675, label %if.end.i.3.i1396.i670

if.end.i.3.i1396.i670:                            ; preds = %cabac_subpartition_b.exit.2.i.i668
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 36, i32 1) #7
  %cmp1.i.3.i1395.i669 = icmp eq i8 %482, 11
  br i1 %cmp1.i.3.i1395.i669, label %if.then2.i.3.i1397.i674, label %if.end3.i.3.i.i673

if.end3.i.3.i.i673:                               ; preds = %if.end.i.3.i1396.i670
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 37, i32 0) #7
  %cmp4.i.3.i.i671 = icmp eq i8 %482, 7
  %conv.i.3.i.i672 = zext i1 %cmp4.i.3.i.i671 to i32
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 39, i32 %conv.i.3.i.i672) #7
  br label %cabac_subpartition_b.exit.3.i.i678

if.then2.i.3.i1397.i674:                          ; preds = %if.end.i.3.i1396.i670
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 37, i32 1) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 38, i32 0) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 39, i32 0) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 39, i32 0) #7
  br label %cabac_subpartition_b.exit.3.i.i678

if.then.i.3.i1398.i675:                           ; preds = %cabac_subpartition_b.exit.2.i.i668
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 36, i32 0) #7
  br label %cabac_subpartition_b.exit.3.i.i678

cabac_subpartition_b.exit.3.i.i678:               ; preds = %if.then.i.3.i1398.i675, %if.then2.i.3.i1397.i674, %if.end3.i.3.i.i673
  %arrayidx32.i.i676 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 17, i32 0
  %483 = load i32, i32* %arrayidx32.i.i676, align 4, !tbaa !51
  %cmp33.i.i677 = icmp sgt i32 %483, 1
  br i1 %cmp33.i.i677, label %for.body41.preheader.i.i334, label %if.end52.i.i352

if.else245.1.i.i681:                              ; preds = %for.inc302.i.i513
  %cmp248.1.i.i679 = icmp eq i32 %436, 14
  %484 = add nsw i32 %311, -11
  %tobool253.1.i.i680 = icmp ult i32 %484, 6
  br i1 %cmp248.1.i.i679, label %if.then250.1.i.i707, label %if.else275.1.i.i682

if.else275.1.i.i682:                              ; preds = %if.else245.1.i.i681
  br i1 %tobool253.1.i.i680, label %do.body280.1.i.i693, label %if.end287.1.i.i695

do.body280.1.i.i693:                              ; preds = %if.else275.1.i.i682
  %call282.1.i.i683 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 1, i32 0, i32 2) #7
  %485 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 12, i32 0
  %conv7.i490.1.i.i684 = zext i16 %call282.1.i.i683 to i32
  %mul8.i.i491.1.i.i685 = mul nuw i32 %conv7.i490.1.i.i684, 65537
  %i42.i.i492.1.i.i686 = bitcast i8* %485 to i32*
  store i32 %mul8.i.i491.1.i.i685, i32* %i42.i.i492.1.i.i686, align 4, !tbaa !40
  %add.ptr48.i.i493.1.i.i687 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 12, i32 16
  %i49.i.i494.1.i.i688 = bitcast i8* %add.ptr48.i.i493.1.i.i687 to i32*
  store i32 %mul8.i.i491.1.i.i685, i32* %i49.i.i494.1.i.i688, align 4, !tbaa !40
  %add.ptr55.i.i.1.i.i689 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 12, i32 32
  %i56.i.i.1.i.i690 = bitcast i8* %add.ptr55.i.i.1.i.i689 to i32*
  store i32 %mul8.i.i491.1.i.i685, i32* %i56.i.i.1.i.i690, align 4, !tbaa !40
  %add.ptr58.i.i.1.i.i691 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 12, i32 48
  %i59.i.i.1.i.i692 = bitcast i8* %add.ptr58.i.i.1.i.i691 to i32*
  store i32 %mul8.i.i491.1.i.i685, i32* %i59.i.i.1.i.i692, align 4, !tbaa !40
  br label %if.end287.1.i.i695

if.end287.1.i.i695:                               ; preds = %do.body280.1.i.i693, %if.else275.1.i.i682
  %486 = lshr i32 412159, %311
  %487 = and i32 %486, 1
  %tobool290.1.i.i694 = icmp eq i32 %487, 0
  br i1 %tobool290.1.i.i694, label %do.body292.1.i.i706, label %if.end7.i832

do.body292.1.i.i706:                              ; preds = %if.end287.1.i.i695
  %call294.1.i.i696 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 1, i32 4, i32 2) #7
  %488 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 14, i32 0
  %conv7.i496.1.i.i697 = zext i16 %call294.1.i.i696 to i32
  %mul8.i.i497.1.i.i698 = mul nuw i32 %conv7.i496.1.i.i697, 65537
  %i42.i.i498.1.i.i699 = bitcast i8* %488 to i32*
  store i32 %mul8.i.i497.1.i.i698, i32* %i42.i.i498.1.i.i699, align 4, !tbaa !40
  %add.ptr48.i.i499.1.i.i700 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 14, i32 16
  %i49.i.i500.1.i.i701 = bitcast i8* %add.ptr48.i.i499.1.i.i700 to i32*
  store i32 %mul8.i.i497.1.i.i698, i32* %i49.i.i500.1.i.i701, align 4, !tbaa !40
  %add.ptr55.i.i501.1.i.i702 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 14, i32 32
  %i56.i.i502.1.i.i703 = bitcast i8* %add.ptr55.i.i501.1.i.i702 to i32*
  store i32 %mul8.i.i497.1.i.i698, i32* %i56.i.i502.1.i.i703, align 4, !tbaa !40
  %add.ptr58.i.i503.1.i.i704 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 14, i32 48
  %i59.i.i504.1.i.i705 = bitcast i8* %add.ptr58.i.i503.1.i.i704 to i32*
  store i32 %mul8.i.i497.1.i.i698, i32* %i59.i.i504.1.i.i705, align 4, !tbaa !40
  br label %if.end7.i832

if.then250.1.i.i707:                              ; preds = %if.else245.1.i.i681
  br i1 %tobool253.1.i.i680, label %do.body255.1.i.i718, label %if.end262.1.i.i720

do.body255.1.i.i718:                              ; preds = %if.then250.1.i.i707
  %call257.1.i.i708 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 1, i32 0, i32 4) #7
  %489 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 12, i32 0
  %conv7.i470.1.i.i709 = zext i16 %call257.1.i.i708 to i32
  %mul8.i.i471.1.i.i710 = mul nuw i32 %conv7.i470.1.i.i709, 65537
  %i67.i.i472.1.i.i711 = bitcast i8* %489 to i32*
  store i32 %mul8.i.i471.1.i.i710, i32* %i67.i.i472.1.i.i711, align 4, !tbaa !40
  %add.ptr70.i.i473.1.i.i712 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 12, i32 4
  %i71.i.i474.1.i.i713 = bitcast i8* %add.ptr70.i.i473.1.i.i712 to i32*
  store i32 %mul8.i.i471.1.i.i710, i32* %i71.i.i474.1.i.i713, align 4, !tbaa !40
  %add.ptr77.i.i475.1.i.i714 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 12, i32 16
  %i79.i.i476.1.i.i715 = bitcast i8* %add.ptr77.i.i475.1.i.i714 to i32*
  store i32 %mul8.i.i471.1.i.i710, i32* %i79.i.i476.1.i.i715, align 4, !tbaa !40
  %add.ptr82.i.i477.1.i.i716 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 12, i32 20
  %i83.i.i478.1.i.i717 = bitcast i8* %add.ptr82.i.i477.1.i.i716 to i32*
  store i32 %mul8.i.i471.1.i.i710, i32* %i83.i.i478.1.i.i717, align 4, !tbaa !40
  br label %if.end262.1.i.i720

if.end262.1.i.i720:                               ; preds = %do.body255.1.i.i718, %if.then250.1.i.i707
  %490 = lshr i32 412159, %311
  %491 = and i32 %490, 1
  %tobool265.1.i.i719 = icmp eq i32 %491, 0
  br i1 %tobool265.1.i.i719, label %do.body267.1.i.i731, label %if.end7.i832

do.body267.1.i.i731:                              ; preds = %if.end262.1.i.i720
  %call269.1.i.i721 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 1, i32 8, i32 4) #7
  %492 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 28, i32 0
  %conv7.i480.1.i.i722 = zext i16 %call269.1.i.i721 to i32
  %mul8.i.i481.1.i.i723 = mul nuw i32 %conv7.i480.1.i.i722, 65537
  %i67.i.i482.1.i.i724 = bitcast i8* %492 to i32*
  store i32 %mul8.i.i481.1.i.i723, i32* %i67.i.i482.1.i.i724, align 4, !tbaa !40
  %add.ptr70.i.i483.1.i.i725 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 28, i32 4
  %i71.i.i484.1.i.i726 = bitcast i8* %add.ptr70.i.i483.1.i.i725 to i32*
  store i32 %mul8.i.i481.1.i.i723, i32* %i71.i.i484.1.i.i726, align 4, !tbaa !40
  %add.ptr77.i.i485.1.i.i727 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 28, i32 16
  %i79.i.i486.1.i.i728 = bitcast i8* %add.ptr77.i.i485.1.i.i727 to i32*
  store i32 %mul8.i.i481.1.i.i723, i32* %i79.i.i486.1.i.i728, align 4, !tbaa !40
  %add.ptr82.i.i487.1.i.i729 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 28, i32 20
  %i83.i.i488.1.i.i730 = bitcast i8* %add.ptr82.i.i487.1.i.i729 to i32*
  store i32 %mul8.i.i481.1.i.i723, i32* %i83.i.i488.1.i.i730, align 4, !tbaa !40
  br label %if.end7.i832

if.then232.1.i.i733:                              ; preds = %for.inc302.i.i513
  %493 = add nsw i32 %311, -11
  %tobool235.1.i.i732 = icmp ugt i32 %493, 5
  br i1 %tobool235.1.i.i732, label %if.end7.i832, label %do.body237.1.i.i752

do.body237.1.i.i752:                              ; preds = %if.then232.1.i.i733
  %call239.1.i.i734 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 1, i32 0, i32 4) #7
  %494 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 12, i32 0
  %conv7.i467.1.i.i735 = zext i16 %call239.1.i.i734 to i32
  %mul8.i.i468.1.i.i736 = mul nuw i32 %conv7.i467.1.i.i735, 65537
  %i67.i.i.1.i.i737 = bitcast i8* %494 to i32*
  store i32 %mul8.i.i468.1.i.i736, i32* %i67.i.i.1.i.i737, align 4, !tbaa !40
  %add.ptr70.i.i.1.i.i738 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 12, i32 4
  %i71.i.i.1.i.i739 = bitcast i8* %add.ptr70.i.i.1.i.i738 to i32*
  store i32 %mul8.i.i468.1.i.i736, i32* %i71.i.i.1.i.i739, align 4, !tbaa !40
  %add.ptr77.i.i.1.i.i740 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 12, i32 16
  %i79.i.i.1.i.i741 = bitcast i8* %add.ptr77.i.i.1.i.i740 to i32*
  store i32 %mul8.i.i468.1.i.i736, i32* %i79.i.i.1.i.i741, align 4, !tbaa !40
  %add.ptr82.i.i.1.i.i742 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 12, i32 20
  %i83.i.i.1.i.i743 = bitcast i8* %add.ptr82.i.i.1.i.i742 to i32*
  store i32 %mul8.i.i468.1.i.i736, i32* %i83.i.i.1.i.i743, align 4, !tbaa !40
  %add.ptr89.i.i.1.i.i744 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 12, i32 32
  %i91.i.i.1.i.i745 = bitcast i8* %add.ptr89.i.i.1.i.i744 to i32*
  store i32 %mul8.i.i468.1.i.i736, i32* %i91.i.i.1.i.i745, align 4, !tbaa !40
  %add.ptr94.i.i.1.i.i746 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 12, i32 36
  %i95.i.i.1.i.i747 = bitcast i8* %add.ptr94.i.i.1.i.i746 to i32*
  store i32 %mul8.i.i468.1.i.i736, i32* %i95.i.i.1.i.i747, align 4, !tbaa !40
  %add.ptr97.i.i.1.i.i748 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 12, i32 48
  %i99.i.i.1.i.i749 = bitcast i8* %add.ptr97.i.i.1.i.i748 to i32*
  store i32 %mul8.i.i468.1.i.i736, i32* %i99.i.i.1.i.i749, align 4, !tbaa !40
  %add.ptr102.i.i.1.i.i750 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 12, i32 52
  %i103.i.i.1.i.i751 = bitcast i8* %add.ptr102.i.i.1.i.i750 to i32*
  store i32 %mul8.i.i468.1.i.i736, i32* %i103.i.i.1.i.i751, align 4, !tbaa !40
  br label %if.end7.i832

if.else6.i756:                                    ; preds = %if.then4
  %i_neighbour.i1399.i753 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 37
  %495 = load i32, i32* %i_neighbour.i1399.i753, align 32, !tbaa !56
  %and.i1400.i754 = and i32 %495, 1
  %tobool.i1401.i755 = icmp eq i32 %and.i1400.i754, 0
  br i1 %tobool.i1401.i755, label %if.end.i1406.i764, label %land.lhs.true.i1404.i760

land.lhs.true.i1404.i760:                         ; preds = %if.else6.i756
  %arrayidx.i1403.i757 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 43, i32 0
  %496 = load i32, i32* %arrayidx.i1403.i757, align 64, !tbaa !51
  %cmp2.i.i758 = icmp ne i32 %496, 0
  %spec.select.i.i759 = zext i1 %cmp2.i.i758 to i32
  br label %if.end.i1406.i764

if.end.i1406.i764:                                ; preds = %land.lhs.true.i1404.i760, %if.else6.i756
  %ctx.0.i1405.i761 = phi i32 [ 0, %if.else6.i756 ], [ %spec.select.i.i759, %land.lhs.true.i1404.i760 ]
  %and6.i.i762 = and i32 %495, 2
  %tobool7.i.i763 = icmp eq i32 %and6.i.i762, 0
  br i1 %tobool7.i.i763, label %if.end13.i.i772, label %land.lhs.true8.i.i769

land.lhs.true8.i.i769:                            ; preds = %if.end.i1406.i764
  %i_mb_type_top.i1407.i765 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 42
  %497 = load i32, i32* %i_mb_type_top.i1407.i765, align 4, !tbaa !57
  %cmp10.i.i766 = icmp ne i32 %497, 0
  %inc12.i.i767 = zext i1 %cmp10.i.i766 to i32
  %spec.select83.i.i768 = add nuw nsw i32 %ctx.0.i1405.i761, %inc12.i.i767
  br label %if.end13.i.i772

if.end13.i.i772:                                  ; preds = %land.lhs.true8.i.i769, %if.end.i1406.i764
  %ctx.1.i1408.i770 = phi i32 [ %ctx.0.i1405.i761, %if.end.i1406.i764 ], [ %spec.select83.i.i768, %land.lhs.true8.i.i769 ]
  %add.i1409.i771 = add nuw nsw i32 %ctx.1.i1408.i770, 3
  tail call fastcc void @cabac_mb_type_intra(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 %311, i32 %add.i1409.i771, i32 6, i32 7, i32 8, i32 9, i32 10) #7
  switch i32 %311, label %if.then26.i1410.i775 [
    i32 3, label %if.end7.i832
    i32 2, label %if.end40.i.i822
  ]

if.then26.i1410.i775:                             ; preds = %if.end13.i.i772
  %b_transform_8x8_mode.i.i773 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 53, i32 0, i32 15
  %498 = load i32, i32* %b_transform_8x8_mode.i.i773, align 4, !tbaa !52
  %tobool27.i.i774 = icmp eq i32 %498, 0
  br i1 %tobool27.i.i774, label %if.end29.i.i785, label %if.then28.i.i781

if.then28.i.i781:                                 ; preds = %if.then26.i1410.i775
  %h.idx.i.i776 = getelementptr %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 79
  %h.idx.val.i.i777 = load i32, i32* %h.idx.i.i776, align 4, !tbaa !54
  %h.idx84.i.i778 = getelementptr %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 10
  %h.idx84.val.i.i779 = load i32, i32* %h.idx84.i.i778, align 8, !tbaa !55
  %add.i.i.i780 = add nsw i32 %h.idx84.val.i.i779, 399
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 %add.i.i.i780, i32 %h.idx.val.i.i777) #7
  br label %if.end29.i.i785

if.end29.i.i785:                                  ; preds = %if.then28.i.i781, %if.then26.i1410.i775
  %b_transform_8x8.i.i782 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 79
  %499 = load i32, i32* %b_transform_8x8.i.i782, align 4, !tbaa !54
  %tobool31.i.i783 = icmp eq i32 %499, 0
  %cond.i.i784 = select i1 %tobool31.i.i783, i32 1, i32 4
  br label %for.body.i.i808

for.body.i.i808:                                  ; preds = %cabac_intra4x4_pred_mode.exit.i.i821, %if.end29.i.i785
  %i.091.i.i786 = phi i32 [ 0, %if.end29.i.i785 ], [ %add39.i.i819, %cabac_intra4x4_pred_mode.exit.i.i821 ]
  %arrayidx.i.i1411.i787 = getelementptr inbounds [51 x i8], [51 x i8]* @x264_scan8, i32 0, i32 %i.091.i.i786
  %500 = load i8, i8* %arrayidx.i.i1411.i787, align 1, !tbaa !40
  %conv.i.i1412.i788 = zext i8 %500 to i32
  %sub.i.i.i789 = add nsw i32 %conv.i.i1412.i788, -1
  %arrayidx1.i.i.i790 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 0, i32 %sub.i.i.i789
  %501 = load i8, i8* %arrayidx1.i.i.i790, align 1, !tbaa !40
  %conv2.i.i.i791 = sext i8 %501 to i32
  %sub9.i.i.i792 = add nsw i32 %conv.i.i1412.i788, -8
  %arrayidx10.i.i.i793 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 0, i32 %sub9.i.i.i792
  %502 = load i8, i8* %arrayidx10.i.i.i793, align 1, !tbaa !40
  %conv11.i.i.i794 = sext i8 %502 to i32
  %add.i85.i.i795 = add nsw i32 %conv2.i.i.i791, 1
  %arrayidx12.i.i.i796 = getelementptr inbounds [13 x i8], [13 x i8]* @x264_mb_pred_mode4x4_fix, i32 0, i32 %add.i85.i.i795
  %503 = load i8, i8* %arrayidx12.i.i.i796, align 1, !tbaa !40
  %add14.i.i.i797 = add nsw i32 %conv11.i.i.i794, 1
  %arrayidx15.i.i.i798 = getelementptr inbounds [13 x i8], [13 x i8]* @x264_mb_pred_mode4x4_fix, i32 0, i32 %add14.i.i.i797
  %504 = load i8, i8* %arrayidx15.i.i.i798, align 1, !tbaa !40
  %cmp.i.i1413.i799 = icmp slt i8 %503, %504
  %..i.i.i800 = select i1 %cmp.i.i1413.i799, i8 %503, i8 %504
  %cmp24.i.i.i801 = icmp slt i8 %..i.i.i800, 0
  %narrow.i.i.i802 = select i1 %cmp24.i.i.i801, i8 2, i8 %..i.i.i800
  %arrayidx35.i.i803 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 0, i32 %conv.i.i1412.i788
  %505 = load i8, i8* %arrayidx35.i.i803, align 1, !tbaa !40
  %conv.i.i804 = sext i8 %505 to i32
  %add36.i.i805 = add nsw i32 %conv.i.i804, 1
  %arrayidx37.i.i806 = getelementptr inbounds [13 x i8], [13 x i8]* @x264_mb_pred_mode4x4_fix, i32 0, i32 %add36.i.i805
  %506 = load i8, i8* %arrayidx37.i.i806, align 1, !tbaa !40
  %cmp.i88.i.i807 = icmp eq i8 %narrow.i.i.i802, %506
  br i1 %cmp.i88.i.i807, label %if.then.i.i1414.i809, label %if.else.i.i1416.i818

if.then.i.i1414.i809:                             ; preds = %for.body.i.i808
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 68, i32 1) #7
  br label %cabac_intra4x4_pred_mode.exit.i.i821

if.else.i.i1416.i818:                             ; preds = %for.body.i.i808
  %conv38.i.i810 = sext i8 %506 to i32
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 68, i32 0) #7
  %cmp1.i.i1415.i811 = icmp sgt i8 %506, %narrow.i.i.i802
  %dec.i.i.i812 = sext i1 %cmp1.i.i1415.i811 to i32
  %spec.select.i89.i.i813 = add nsw i32 %dec.i.i.i812, %conv38.i.i810
  %and.i90.i.i814 = and i32 %spec.select.i89.i.i813, 1
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 69, i32 %and.i90.i.i814) #7
  %shr15.i.i.i815 = lshr i32 %spec.select.i89.i.i813, 1
  %and3.i.i.i816 = and i32 %shr15.i.i.i815, 1
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 69, i32 %and3.i.i.i816) #7
  %shr4.i.i.i817 = ashr i32 %spec.select.i89.i.i813, 2
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 69, i32 %shr4.i.i.i817) #7
  br label %cabac_intra4x4_pred_mode.exit.i.i821

cabac_intra4x4_pred_mode.exit.i.i821:             ; preds = %if.else.i.i1416.i818, %if.then.i.i1414.i809
  %add39.i.i819 = add nuw nsw i32 %i.091.i.i786, %cond.i.i784
  %cmp32.i.i820 = icmp ult i32 %add39.i.i819, 16
  br i1 %cmp32.i.i820, label %for.body.i.i808, label %if.end40.i.i822

if.end40.i.i822:                                  ; preds = %cabac_intra4x4_pred_mode.exit.i.i821, %if.end13.i.i772
  %i_chroma_pred_mode.i.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 83
  %507 = load i32, i32* %i_chroma_pred_mode.i.i.i, align 4, !tbaa !71
  %508 = load i32, i32* %i_neighbour.i1399.i753, align 32, !tbaa !56
  %and.i.i.i = and i32 %508, 1
  %tobool.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.i.i, label %if.end.i.i1418.i, label %land.lhs.true.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end40.i.i822
  %chroma_pred_mode.i.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 66
  %509 = load i8*, i8** %chroma_pred_mode.i.i.i, align 4, !tbaa !72
  %arrayidx4.i.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 47, i32 0
  %510 = load i32, i32* %arrayidx4.i.i.i, align 4, !tbaa !51
  %arrayidx5.i.i1417.i = getelementptr inbounds i8, i8* %509, i32 %510
  %511 = load i8, i8* %arrayidx5.i.i1417.i, align 1, !tbaa !40
  %cmp.i86.i.i = icmp ne i8 %511, 0
  %spec.select.i.i.i = zext i1 %cmp.i86.i.i to i32
  br label %if.end.i.i1418.i

if.end.i.i1418.i:                                 ; preds = %land.lhs.true.i.i.i, %if.end40.i.i822
  %ctx.0.i.i.i = phi i32 [ 0, %if.end40.i.i822 ], [ %spec.select.i.i.i, %land.lhs.true.i.i.i ]
  %and10.i.i.i = and i32 %508, 2
  %tobool11.i.i.i = icmp eq i32 %and10.i.i.i, 0
  br i1 %tobool11.i.i.i, label %if.end22.i.i.i, label %land.lhs.true12.i.i.i

land.lhs.true12.i.i.i:                            ; preds = %if.end.i.i1418.i
  %chroma_pred_mode14.i.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 66
  %512 = load i8*, i8** %chroma_pred_mode14.i.i.i, align 4, !tbaa !72
  %i_mb_top_xy.i.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 48
  %513 = load i32, i32* %i_mb_top_xy.i.i.i, align 4, !tbaa !70
  %arrayidx16.i.i.i = getelementptr inbounds i8, i8* %512, i32 %513
  %514 = load i8, i8* %arrayidx16.i.i.i, align 1, !tbaa !40
  %cmp18.i.i.i = icmp ne i8 %514, 0
  %inc21.i.i.i = zext i1 %cmp18.i.i.i to i32
  %spec.select53.i.i.i = add nuw nsw i32 %ctx.0.i.i.i, %inc21.i.i.i
  br label %if.end22.i.i.i

if.end22.i.i.i:                                   ; preds = %land.lhs.true12.i.i.i, %if.end.i.i1418.i
  %ctx.1.i.i.i = phi i32 [ %ctx.0.i.i.i, %if.end.i.i1418.i ], [ %spec.select53.i.i.i, %land.lhs.true12.i.i.i ]
  %add.i87.i.i = add nuw nsw i32 %ctx.1.i.i.i, 64
  %515 = add i32 %507, -1
  %cmp23.i.i.i = icmp ult i32 %515, 3
  %conv24.i.i.i = zext i1 %cmp23.i.i.i to i32
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add.i87.i.i, i32 %conv24.i.i.i) #7
  br i1 %cmp23.i.i.i, label %if.then27.i.i.i, label %if.end7.i832

if.then27.i.i.i:                                  ; preds = %if.end22.i.i.i
  %516 = or i32 %507, 1
  %517 = icmp eq i32 %516, 3
  %conv29.i.i1419.i = zext i1 %517 to i32
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 67, i32 %conv29.i.i1419.i) #7
  br i1 %517, label %if.then32.i.i.i, label %if.end7.i832

if.then32.i.i.i:                                  ; preds = %if.then27.i.i.i
  %cmp33.i.i.i = icmp eq i32 %507, 3
  %conv34.i.i.i = zext i1 %cmp33.i.i.i to i32
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 67, i32 %conv34.i.i.i) #7
  br label %if.end7.i832

if.end7.i832:                                     ; preds = %cabac_8x8_mvd.exit.i.i224, %if.then32.i.i.i, %if.then27.i.i.i, %if.end22.i.i.i, %if.end13.i.i772, %do.body237.1.i.i752, %if.then232.1.i.i733, %do.body267.1.i.i731, %if.end262.1.i.i720, %do.body292.1.i.i706, %if.end287.1.i.i695, %do.body116.3.i.i593, %for.inc129.2.i.i586, %if.then32.i.i.i1384.i, %if.then27.i.i.i1381.i, %if.end22.i.i.i1379.i, %if.else305.i.i514, %if.then22.i.i325, %if.then32.i.i.i.i, %if.then27.i.i.i.i, %if.end22.i.i.i.i, %if.else81.i.i225, %do.body41.i.i96, %do.body20.i.i71, %do.body.i.i44
  %518 = load i32, i32* %312, align 4, !tbaa !46
  %519 = load i32, i32* %314, align 16, !tbaa !47
  %sub.ptr.sub.i1422.i823 = sub i32 %518, %519
  %520 = load i32, i32* %i_bytes_outstanding.i.i14, align 4, !tbaa !48
  %add.i1424.i824 = add nsw i32 %sub.ptr.sub.i1422.i823, %520
  %mul.i1425.i825 = shl i32 %add.i1424.i824, 3
  %521 = load i32, i32* %i_queue.i.i16, align 8, !tbaa !49
  %add1.i1427.i826 = add nsw i32 %mul.i1425.i825, %521
  %mul.i.neg.i827 = mul i32 %add.i.i15, -8
  %add1.i.neg.i828 = sub i32 %mul.i.neg.i827, %317
  %i_mv_bits.i829 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 72, i32 21, i32 0
  %522 = load i32, i32* %i_mv_bits.i829, align 8, !tbaa !58
  %sub.i830 = add i32 %add1.i.neg.i828, %522
  %add.i831 = add i32 %sub.i830, %add1.i1427.i826
  store i32 %add.i831, i32* %i_mv_bits.i829, align 8, !tbaa !58
  switch i32 %311, label %if.then68.i924 [
    i32 3, label %if.then10.i839
    i32 2, label %if.end72.i927
  ]

if.then10.i839:                                   ; preds = %if.end7.i832
  %523 = inttoptr i32 %518 to i8*
  %and.i1428.i833 = and i32 %518, 3
  %idx.neg.i.i834 = sub nsw i32 0, %and.i1428.i833
  %add.ptr.i.i835 = getelementptr inbounds i8, i8* %523, i32 %idx.neg.i.i834
  %524 = ptrtoint i8* %add.ptr.i.i835 to i32
  %sub.i.i836 = shl nuw nsw i32 %and.i1428.i833, 3
  %mul.i1431.i837 = sub nuw nsw i32 32, %sub.i.i836
  %tobool.i1432.i838 = icmp eq i32 %and.i1428.i833, 0
  br i1 %tobool.i1432.i838, label %bs_init.exit.i844, label %if.then.i1433.i842

if.then.i1433.i842:                               ; preds = %if.then10.i839
  %525 = bitcast i8* %add.ptr.i.i835 to i32*
  %526 = load i32, i32* %525, align 4, !tbaa !40
  %add5.i.i.i840 = tail call i32 @llvm.bswap.i32(i32 %526) #7
  %shr.i.i841 = lshr i32 %add5.i.i.i840, %mul.i1431.i837
  br label %bs_init.exit.i844

bs_init.exit.i844:                                ; preds = %if.then.i1433.i842, %if.then10.i839
  %shr.sink.i.i843 = phi i32 [ %shr.i.i841, %if.then.i1433.i842 ], [ 0, %if.then10.i839 ]
  %arrayidx.i849 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 14, i32 0
  br label %for.body17.i862

for.cond.cleanup16.i854:                          ; preds = %bs_write.exit.i880
  %chroma_v_shift.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 4
  %.pre.i = load i32, i32* %chroma_v_shift.i, align 16, !tbaa !73
  %shr1744.i = lshr i32 16, %.pre.i
  %cmp321745.i = icmp sgt i32 %shr1744.i, 0
  br i1 %cmp321745.i, label %for.cond36.preheader.lr.ph.i, label %for.cond.cleanup34.i.1

for.body17.i862:                                  ; preds = %bs_write.exit.i880, %bs_init.exit.i844
  %i.01760.i855 = phi i32 [ 0, %bs_init.exit.i844 ], [ %inc.i878, %bs_write.exit.i880 ]
  %s.sroa.25.11759.i856 = phi i32 [ %mul.i1431.i837, %bs_init.exit.i844 ], [ %sub13.i.i873, %bs_write.exit.i880 ]
  %s.sroa.3.11758.i857 = phi i32 [ %524, %bs_init.exit.i844 ], [ %s.sroa.3.2.i876, %bs_write.exit.i880 ]
  %s.sroa.15.11757.i858 = phi i32 [ %shr.sink.i.i843, %bs_init.exit.i844 ], [ %s.sroa.15.2.i875, %bs_write.exit.i880 ]
  %527 = load i8*, i8** %arrayidx.i849, align 4, !tbaa !39
  %arrayidx19.i859 = getelementptr inbounds i8, i8* %527, i32 %i.01760.i855
  %528 = load i8, i8* %arrayidx19.i859, align 1, !tbaa !40
  %conv.i860 = zext i8 %528 to i32
  %cmp.i.i861 = icmp sgt i32 %s.sroa.25.11759.i856, 8
  br i1 %cmp.i.i861, label %if.then.i1437.i866, label %if.else.i1441.i874

if.then.i1437.i866:                               ; preds = %for.body17.i862
  %shl.i.i863 = shl i32 %s.sroa.15.11757.i858, 8
  %or.i.i864 = or i32 %shl.i.i863, %conv.i860
  br label %bs_write.exit.i880

if.else.i1441.i874:                               ; preds = %for.body17.i862
  %sub4.i.i867 = sub nsw i32 8, %s.sroa.25.11759.i856
  %shl7.i.i868 = shl i32 %s.sroa.15.11757.i858, %s.sroa.25.11759.i856
  %shr.i1438.i869 = lshr i32 %conv.i860, %sub4.i.i867
  %or8.i.i870 = or i32 %shr.i1438.i869, %shl7.i.i868
  %add5.i.i.i.i871 = tail call i32 @llvm.bswap.i32(i32 %or8.i.i870) #7
  %529 = inttoptr i32 %s.sroa.3.11758.i857 to i32*
  store i32 %add5.i.i.i.i871, i32* %529, align 4, !tbaa !40
  %530 = inttoptr i32 %s.sroa.3.11758.i857 to i8*
  %add.ptr.i1440.i872 = getelementptr inbounds i8, i8* %530, i32 4
  %531 = ptrtoint i8* %add.ptr.i1440.i872 to i32
  br label %bs_write.exit.i880

bs_write.exit.i880:                               ; preds = %if.else.i1441.i874, %if.then.i1437.i866
  %.sink2658 = phi i32 [ 24, %if.else.i1441.i874 ], [ -8, %if.then.i1437.i866 ]
  %s.sroa.15.2.i875 = phi i32 [ %conv.i860, %if.else.i1441.i874 ], [ %or.i.i864, %if.then.i1437.i866 ]
  %s.sroa.3.2.i876 = phi i32 [ %531, %if.else.i1441.i874 ], [ %s.sroa.3.11758.i857, %if.then.i1437.i866 ]
  %sub13.i.i873 = add nsw i32 %s.sroa.25.11759.i856, %.sink2658
  %inc.i878 = add nuw nsw i32 %i.01760.i855, 1
  %exitcond1816.i879 = icmp eq i32 %inc.i878, 256
  br i1 %exitcond1816.i879, label %for.cond.cleanup16.i854, label %for.body17.i862

for.cond36.preheader.lr.ph.i:                     ; preds = %for.cond.cleanup16.i854
  %arrayidx44.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 14, i32 1
  br label %for.cond36.preheader.i

for.cond36.preheader.i:                           ; preds = %bs_write.exit1462.7.i, %for.cond36.preheader.lr.ph.i
  %i29.01749.i = phi i32 [ 0, %for.cond36.preheader.lr.ph.i ], [ %inc52.i, %bs_write.exit1462.7.i ]
  %s.sroa.25.31748.i = phi i32 [ %sub13.i.i873, %for.cond36.preheader.lr.ph.i ], [ %sub.i1448.7.i, %bs_write.exit1462.7.i ]
  %s.sroa.3.41747.i = phi i32 [ %s.sroa.3.2.i876, %for.cond36.preheader.lr.ph.i ], [ %s.sroa.3.6.7.i, %bs_write.exit1462.7.i ]
  %s.sroa.15.41746.i = phi i32 [ %s.sroa.15.2.i875, %for.cond36.preheader.lr.ph.i ], [ %s.sroa.15.6.7.i, %bs_write.exit1462.7.i ]
  %mul.i = shl i32 %i29.01749.i, 4
  %532 = load i8*, i8** %arrayidx44.i, align 4, !tbaa !39
  %arrayidx46.i = getelementptr inbounds i8, i8* %532, i32 %mul.i
  %533 = load i8, i8* %arrayidx46.i, align 1, !tbaa !40
  %conv47.i = zext i8 %533 to i32
  %cmp.i1444.i = icmp sgt i32 %s.sroa.25.31748.i, 8
  br i1 %cmp.i1444.i, label %if.then.i1449.i, label %if.else.i1459.i

for.cond.cleanup34.i:                             ; preds = %bs_write.exit1462.7.i
  %cmp321745.i.1 = icmp sgt i32 %shr.i, 0
  br i1 %cmp321745.i.1, label %for.cond36.preheader.lr.ph.i.1, label %for.cond.cleanup34.i.1

if.then.i1449.i:                                  ; preds = %for.cond36.preheader.i
  %shl.i1446.i = shl i32 %s.sroa.15.41746.i, 8
  %or.i1447.i = or i32 %shl.i1446.i, %conv47.i
  %sub.i1448.i = add nsw i32 %s.sroa.25.31748.i, -8
  br label %bs_write.exit1462.i

if.else.i1459.i:                                  ; preds = %for.cond36.preheader.i
  %sub4.i1450.i = sub nsw i32 8, %s.sroa.25.31748.i
  %shl7.i1452.i = shl i32 %s.sroa.15.41746.i, %s.sroa.25.31748.i
  %shr.i1453.i = lshr i32 %conv47.i, %sub4.i1450.i
  %or8.i1454.i = or i32 %shr.i1453.i, %shl7.i1452.i
  %add5.i.i.i1455.i = tail call i32 @llvm.bswap.i32(i32 %or8.i1454.i) #7
  %534 = inttoptr i32 %s.sroa.3.41747.i to i32*
  store i32 %add5.i.i.i1455.i, i32* %534, align 4, !tbaa !40
  %535 = inttoptr i32 %s.sroa.3.41747.i to i8*
  %add.ptr.i1457.i = getelementptr inbounds i8, i8* %535, i32 4
  %536 = ptrtoint i8* %add.ptr.i1457.i to i32
  %sub13.i1458.i = add nsw i32 %s.sroa.25.31748.i, 24
  %.pre1818.i = load i8*, i8** %arrayidx44.i, align 4, !tbaa !39
  br label %bs_write.exit1462.i

bs_write.exit1462.i:                              ; preds = %if.else.i1459.i, %if.then.i1449.i
  %537 = phi i8* [ %532, %if.then.i1449.i ], [ %.pre1818.i, %if.else.i1459.i ]
  %s.sroa.15.6.i = phi i32 [ %or.i1447.i, %if.then.i1449.i ], [ %conv47.i, %if.else.i1459.i ]
  %s.sroa.3.6.i = phi i32 [ %s.sroa.3.41747.i, %if.then.i1449.i ], [ %536, %if.else.i1459.i ]
  %storemerge.i1460.i = phi i32 [ %sub.i1448.i, %if.then.i1449.i ], [ %sub13.i1458.i, %if.else.i1459.i ]
  %add45.1.i = or i32 %mul.i, 1
  %arrayidx46.1.i = getelementptr inbounds i8, i8* %537, i32 %add45.1.i
  %538 = load i8, i8* %arrayidx46.1.i, align 1, !tbaa !40
  %conv47.1.i = zext i8 %538 to i32
  %cmp.i1444.1.i = icmp sgt i32 %storemerge.i1460.i, 8
  br i1 %cmp.i1444.1.i, label %if.then.i1449.1.i, label %if.else.i1459.1.i

if.then68.i924:                                   ; preds = %if.end7.i832
  %h.idx1252.i894 = getelementptr %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 80
  %h.idx1252.val.i895 = load i32, i32* %h.idx1252.i894, align 32, !tbaa !59
  %h.idx1253.i896 = getelementptr %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 12
  %h.idx1253.val.i897 = load i32, i32* %h.idx1253.i896, align 16, !tbaa !60
  %h.idx1254.i898 = getelementptr %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 13
  %h.idx1254.val.i899 = load i32, i32* %h.idx1254.i898, align 4, !tbaa !61
  %shr49.i.i900 = lshr i32 %h.idx1254.val.i899, 1
  %and.i1480.i901 = and i32 %shr49.i.i900, 1
  %539 = lshr i32 %h.idx1253.val.i897, 1
  %and5.i.i902 = and i32 %539, 2
  %sub.i1481.i903 = sub nuw nsw i32 76, %and5.i.i902
  %sub6.i.i904 = sub nuw nsw i32 %sub.i1481.i903, %and.i1480.i901
  %and8.i.i905 = and i32 %h.idx1252.val.i895, 1
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 %sub6.i.i904, i32 %and8.i.i905) #7
  %sub11.i.i906 = sub nuw nsw i32 76, %and8.i.i905
  %540 = lshr i32 %h.idx1253.val.i897, 2
  %and13.i.i907 = and i32 %540, 2
  %sub14.i.i908 = sub nuw nsw i32 %sub11.i.i906, %and13.i.i907
  %shr1550.i.i909 = lshr i32 %h.idx1252.val.i895, 1
  %and16.i.i910 = and i32 %shr1550.i.i909, 1
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 %sub14.i.i908, i32 %and16.i.i910) #7
  %shr1751.i.i911 = lshr i32 %h.idx1254.val.i899, 3
  %and18.i.i912 = and i32 %shr1751.i.i911, 1
  %shl.i1482.i913 = shl i32 %h.idx1252.val.i895, 1
  %and20.i.i914 = and i32 %shl.i1482.i913, 2
  %sub19.i.i915 = sub nuw nsw i32 76, %and20.i.i914
  %sub21.i.i916 = sub nuw nsw i32 %sub19.i.i915, %and18.i.i912
  %shr2252.i.i917 = lshr i32 %h.idx1252.val.i895, 2
  %and23.i.i918 = and i32 %shr2252.i.i917, 1
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 %sub21.i.i916, i32 %and23.i.i918) #7
  %and28.i.i919 = and i32 %h.idx1252.val.i895, 2
  %sub26.i.i920 = sub nuw nsw i32 76, %and28.i.i919
  %sub29.i.i921 = sub nuw nsw i32 %sub26.i.i920, %and23.i.i918
  %shr3053.i.i922 = lshr i32 %h.idx1252.val.i895, 3
  %and31.i.i923 = and i32 %shr3053.i.i922, 1
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 %sub29.i.i921, i32 %and31.i.i923) #7
  %541 = load i32, i32* %h.idx1254.i898, align 4, !tbaa !61
  %and.i1483.i = and i32 %541, 48
  %542 = load i32, i32* %h.idx1253.i896, align 16, !tbaa !60
  %and3.i.i = and i32 %542, 48
  %tobool.i1484.i = icmp ne i32 %and.i1483.i, 0
  %cmp.i1485.i = icmp ne i32 %541, -1
  %not.or.cond.i.i = and i1 %cmp.i1485.i, %tobool.i1484.i
  %ctx.0.i1486.i = zext i1 %not.or.cond.i.i to i32
  %tobool7.i1487.i = icmp eq i32 %and3.i.i, 0
  %cmp12.i.i = icmp eq i32 %542, -1
  %add.i1488.i = or i32 %ctx.0.i1486.i, 2
  %543 = or i1 %cmp12.i.i, %tobool7.i1487.i
  %ctx.1.i1489.i = select i1 %543, i32 %ctx.0.i1486.i, i32 %add.i1488.i
  %i_cbp_chroma.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 81
  %544 = load i32, i32* %i_cbp_chroma.i.i, align 4, !tbaa !74
  %cmp16.i1490.i = icmp eq i32 %544, 0
  %add18.i.i = add nuw nsw i32 %ctx.1.i1489.i, 77
  br i1 %cmp16.i1490.i, label %if.then17.i.i, label %if.else.i1492.i

if.then17.i.i:                                    ; preds = %if.then68.i924
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 %add18.i.i, i32 0) #7
  br label %if.end72.i927

if.else.i1492.i:                                  ; preds = %if.then68.i924
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 %add18.i.i, i32 1) #7
  %cmp20.i.i = icmp eq i32 %and.i1483.i, 32
  %spec.select48.i.i = select i1 %cmp20.i.i, i32 5, i32 4
  %cmp24.i.i = icmp eq i32 %and3.i.i, 32
  %add26.i.i = or i32 %spec.select48.i.i, 2
  %ctx.3.i.i = select i1 %cmp24.i.i, i32 %add26.i.i, i32 %spec.select48.i.i
  %add28.i.i = add nuw nsw i32 %ctx.3.i.i, 77
  %545 = load i32, i32* %i_cbp_chroma.i.i, align 4, !tbaa !74
  %shr.i1491.i = ashr i32 %545, 1
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 %add28.i.i, i32 %shr.i1491.i) #7
  br label %if.end72.i927

if.end72.i927:                                    ; preds = %if.else.i1492.i, %if.then17.i.i, %if.end7.i832
  %b_transform_8x8_mode.i1493.i925 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 53, i32 0, i32 15
  %546 = load i32, i32* %b_transform_8x8_mode.i1493.i925, align 4, !tbaa !52
  %tobool.i1494.i926 = icmp eq i32 %546, 0
  br i1 %tobool.i1494.i926, label %if.end78.i952, label %if.end.i1496.i929

if.end.i1496.i929:                                ; preds = %if.end72.i927
  %547 = load i32, i32* %i_type.i10, align 16, !tbaa !45
  %cmp.i1495.i928 = icmp eq i32 %547, 5
  br i1 %cmp.i1495.i928, label %if.end4.i.i937, label %if.then1.i.i932

if.then1.i.i932:                                  ; preds = %if.end.i1496.i929
  %arrayidx.i1497.i930 = getelementptr inbounds [19 x i8], [19 x i8]* @x264_transform_allowed, i32 0, i32 %547
  %548 = load i8, i8* %arrayidx.i1497.i930, align 1, !tbaa !40
  %conv.i1498.i931 = zext i8 %548 to i32
  br label %x264_mb_transform_8x8_allowed.exit.i940

if.end4.i.i937:                                   ; preds = %if.end.i1496.i929
  %arraydecay6.i.i933 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 78, i32 0
  %i.i.i934 = bitcast i8* %arraydecay6.i.i933 to i32*
  %549 = load i32, i32* %i.i.i934, align 8, !tbaa !40
  %cmp7.i.i935 = icmp eq i32 %549, 50529027
  %conv8.i.i936 = zext i1 %cmp7.i.i935 to i32
  br label %x264_mb_transform_8x8_allowed.exit.i940

x264_mb_transform_8x8_allowed.exit.i940:          ; preds = %if.end4.i.i937, %if.then1.i.i932
  %retval.0.i.i938 = phi i32 [ %conv.i1498.i931, %if.then1.i.i932 ], [ %conv8.i.i936, %if.end4.i.i937 ]
  %tobool74.i939 = icmp eq i32 %retval.0.i.i938, 0
  br i1 %tobool74.i939, label %if.end78.i952, label %land.lhs.true.i943

land.lhs.true.i943:                               ; preds = %x264_mb_transform_8x8_allowed.exit.i940
  %i_cbp_luma.i941 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 80
  %550 = load i32, i32* %i_cbp_luma.i941, align 32, !tbaa !59
  %tobool76.i942 = icmp eq i32 %550, 0
  br i1 %tobool76.i942, label %if.end78.i952, label %if.then77.i949

if.then77.i949:                                   ; preds = %land.lhs.true.i943
  %h.idx.i944 = getelementptr %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 79
  %h.idx.val.i945 = load i32, i32* %h.idx.i944, align 4, !tbaa !54
  %h.idx1251.i946 = getelementptr %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 10
  %h.idx1251.val.i947 = load i32, i32* %h.idx1251.i946, align 8, !tbaa !55
  %add.i1499.i948 = add nsw i32 %h.idx1251.val.i947, 399
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 %add.i1499.i948, i32 %h.idx.val.i945) #7
  br label %if.end78.i952

if.end78.i952:                                    ; preds = %if.then77.i949, %land.lhs.true.i943, %x264_mb_transform_8x8_allowed.exit.i940, %if.end72.i927
  %i_cbp_luma80.i950 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 80
  %551 = load i32, i32* %i_cbp_luma80.i950, align 32, !tbaa !59
  %tobool81.i951 = icmp eq i32 %551, 0
  br i1 %tobool81.i951, label %lor.lhs.false.i953, label %if.then89.i960

lor.lhs.false.i953:                               ; preds = %if.end78.i952
  %i_cbp_chroma.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 81
  %552 = load i32, i32* %i_cbp_chroma.i, align 4, !tbaa !74
  %tobool85.i = icmp ne i32 %552, 0
  %cmp87.i = icmp eq i32 %311, 2
  %or.cond.i = or i1 %cmp87.i, %tobool85.i
  br i1 %or.cond.i, label %if.then89.i960, label %if.end933.i1193

if.then89.i960:                                   ; preds = %lor.lhs.false.i953, %if.end78.i952
  %cmp96.i954 = icmp eq i32 %311, 2
  %553 = icmp ult i32 %311, 3
  %spec.select.i955 = zext i1 %553 to i32
  %i_qp.i.i956 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 93
  %554 = load i32, i32* %i_qp.i.i956, align 32, !tbaa !62
  %i_last_qp.i.i957 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 95
  %555 = load i32, i32* %i_last_qp.i.i957, align 8, !tbaa !63
  %sub.i1500.i958 = sub nsw i32 %554, %555
  %556 = load i32, i32* %i_type.i10, align 16, !tbaa !45
  %cmp.i1502.i959 = icmp eq i32 %556, 2
  br i1 %cmp.i1502.i959, label %land.lhs.true.i1506.i967, label %if.end.i1508.i972

land.lhs.true.i1506.i967:                         ; preds = %if.then89.i960
  %cbp.i.i961 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 63
  %557 = load i16*, i16** %cbp.i.i961, align 8, !tbaa !64
  %i_mb_xy.i.i962 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 12
  %558 = load i32, i32* %i_mb_xy.i.i962, align 8, !tbaa !65
  %arrayidx.i1503.i963 = getelementptr inbounds i16, i16* %557, i32 %558
  %559 = load i16, i16* %arrayidx.i1503.i963, align 2, !tbaa !37
  %tobool.i1504.i964 = icmp eq i16 %559, 0
  %cmp10.i1505.i965 = icmp sgt i32 %554, %555
  %or.cond78.i.i966 = and i1 %cmp10.i1505.i965, %tobool.i1504.i964
  br i1 %or.cond78.i.i966, label %if.then.i1507.i968, label %if.end.i1508.i972

if.then.i1507.i968:                               ; preds = %land.lhs.true.i1506.i967
  store i32 %555, i32* %i_qp.i.i956, align 32, !tbaa !62
  br label %if.end.i1508.i972

if.end.i1508.i972:                                ; preds = %if.then.i1507.i968, %land.lhs.true.i1506.i967, %if.then89.i960
  %i_dqp.0.i.i969 = phi i32 [ %sub.i1500.i958, %land.lhs.true.i1506.i967 ], [ 0, %if.then.i1507.i968 ], [ %sub.i1500.i958, %if.then89.i960 ]
  %i_last_dqp.i.i970 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 96
  %560 = load i32, i32* %i_last_dqp.i.i970, align 4, !tbaa !66
  %tobool16.i.i971 = icmp eq i32 %560, 0
  br i1 %tobool16.i.i971, label %land.end.i.i984, label %land.rhs.i.i977

land.rhs.i.i977:                                  ; preds = %if.end.i1508.i972
  %type.i.i973 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 60
  %561 = load i8*, i8** %type.i.i973, align 4, !tbaa !67
  %i_mb_prev_xy.i.i974 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 46
  %562 = load i32, i32* %i_mb_prev_xy.i.i974, align 16, !tbaa !68
  %arrayidx19.i.i975 = getelementptr inbounds i8, i8* %561, i32 %562
  %563 = load i8, i8* %arrayidx19.i.i975, align 1, !tbaa !40
  %cmp20.i1509.i976 = icmp eq i8 %563, 2
  br i1 %cmp20.i1509.i976, label %land.end.i.i984, label %lor.rhs.i.i982

lor.rhs.i.i982:                                   ; preds = %land.rhs.i.i977
  %cbp23.i.i978 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 63
  %564 = load i16*, i16** %cbp23.i.i978, align 8, !tbaa !64
  %arrayidx26.i.i979 = getelementptr inbounds i16, i16* %564, i32 %562
  %565 = load i16, i16* %arrayidx26.i.i979, align 2, !tbaa !37
  %566 = and i16 %565, 63
  %tobool28.i.i980 = icmp ne i16 %566, 0
  %phitmp.i.i981 = zext i1 %tobool28.i.i980 to i32
  br label %land.end.i.i984

land.end.i.i984:                                  ; preds = %lor.rhs.i.i982, %land.rhs.i.i977, %if.end.i1508.i972
  %567 = phi i32 [ 0, %if.end.i1508.i972 ], [ 1, %land.rhs.i.i977 ], [ %phitmp.i.i981, %lor.rhs.i.i982 ]
  %cmp29.i.i983 = icmp eq i32 %i_dqp.0.i.i969, 0
  br i1 %cmp29.i.i983, label %cabac_qp_delta.exit.i1006, label %if.then31.i.i995

if.then31.i.i995:                                 ; preds = %land.end.i.i984
  %mul.i1510.i985 = shl nsw i32 %i_dqp.0.i.i969, 1
  %sub32.i.i986 = sub nsw i32 1, %mul.i1510.i985
  %cmp33.i1511.i987 = icmp sgt i32 %i_dqp.0.i.i969, 0
  %spec.select.i1512.i988 = select i1 %cmp33.i1511.i987, i32 %mul.i1510.i985, i32 %sub32.i.i986
  %dec.i.i989 = add nsw i32 %spec.select.i1512.i988, -1
  %cmp37.i1513.i990 = icmp sgt i32 %spec.select.i1512.i988, 51
  %cmp40.i.i991 = icmp ne i32 %dec.i.i989, 52
  %or.cond.i.i992 = and i1 %cmp37.i1513.i990, %cmp40.i.i991
  %sub43.i.i993 = sub i32 104, %spec.select.i1512.i988
  %val.1.i.i994 = select i1 %or.cond.i.i992, i32 %sub43.i.i993, i32 %dec.i.i989
  br label %do.body.i1517.i1003

do.body.i1517.i1003:                              ; preds = %do.body.i1517.i1003, %if.then31.i.i995
  %ctx.0.i1514.i996 = phi i32 [ %567, %if.then31.i.i995 ], [ %add45.i.i1000, %do.body.i1517.i1003 ]
  %val.2.i.i997 = phi i32 [ %val.1.i.i994, %if.then31.i.i995 ], [ %dec46.i.i1001, %do.body.i1517.i1003 ]
  %add.i1515.i998 = add nsw i32 %ctx.0.i1514.i996, 60
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add.i1515.i998, i32 1) #7
  %shr.i1516.i999 = ashr i32 %ctx.0.i1514.i996, 1
  %add45.i.i1000 = add nsw i32 %shr.i1516.i999, 2
  %dec46.i.i1001 = add nsw i32 %val.2.i.i997, -1
  %tobool47.i.i1002 = icmp eq i32 %dec46.i.i1001, 0
  br i1 %tobool47.i.i1002, label %cabac_qp_delta.exit.i1006, label %do.body.i1517.i1003

cabac_qp_delta.exit.i1006:                        ; preds = %do.body.i1517.i1003, %land.end.i.i984
  %ctx.1.i1518.i1004 = phi i32 [ %567, %land.end.i.i984 ], [ %add45.i.i1000, %do.body.i1517.i1003 ]
  %add49.i.i1005 = add nsw i32 %ctx.1.i1518.i1004, 60
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add49.i.i1005, i32 0) #7
  br i1 %cmp96.i954, label %cabac_cbf_ctxidxinc.exit.i1045, label %if.else166.i1085

cabac_cbf_ctxidxinc.exit.i1045:                   ; preds = %cabac_qp_delta.exit.i1006
  %i_cbp_left.i1520.i1008 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 13
  %568 = load i32, i32* %i_cbp_left.i1520.i1008, align 4, !tbaa !61
  %i_cbp_top31.i.i1009 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 12
  %shr26118.i.i1030 = lshr i32 %568, 8
  %and27.i.i1031 = and i32 %shr26118.i.i1030, 1
  %569 = load i32, i32* %i_cbp_top31.i.i1009, align 16, !tbaa !60
  %570 = lshr i32 %569, 7
  %mul37.i.i1036 = and i32 %570, 2
  %add38.i.i1037 = add nuw nsw i32 %and27.i.i1031, 85
  %add39.i1530.i1038 = add nuw nsw i32 %add38.i.i1037, %mul37.i.i1036
  %arrayidx116.i1043 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 0
  %571 = load i8, i8* %arrayidx116.i1043, align 1, !tbaa !40
  %tobool117.i1044 = icmp eq i8 %571, 0
  br i1 %tobool117.i1044, label %if.else122.i1048, label %if.then118.i1047

if.then118.i1047:                                 ; preds = %cabac_cbf_ctxidxinc.exit.i1045
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add39.i1530.i1038, i32 1) #7
  %arraydecay.i1046 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 69, i32 0, i32 0, i32 0
  tail call void @x264_8_cabac_block_residual_c(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* %cb, i32 0, i16* nonnull %arraydecay.i1046) #7
  br label %if.end123.i1050

if.else122.i1048:                                 ; preds = %cabac_cbf_ctxidxinc.exit.i1045
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add39.i1530.i1038, i32 0) #7
  br label %if.end123.i1050

if.end123.i1050:                                  ; preds = %if.else122.i1048, %if.then118.i1047
  %572 = load i32, i32* %i_cbp_luma80.i950, align 32, !tbaa !59
  %tobool126.i1049 = icmp eq i32 %572, 0
  br i1 %tobool126.i1049, label %if.end801.i1185, label %do.body137.i1073

do.body137.i1073:                                 ; preds = %if.end123.i1050, %if.end156.i1079
  %i128.01718.i1058 = phi i32 [ %inc160.i1077, %if.end156.i1079 ], [ 0, %if.end123.i1050 ]
  %arrayidx44.i.i1059 = getelementptr inbounds [51 x i8], [51 x i8]* @x264_scan8, i32 0, i32 %i128.01718.i1058
  %573 = load i8, i8* %arrayidx44.i.i1059, align 1, !tbaa !40
  %conv45.i.i1060 = zext i8 %573 to i32
  %sub46.i.i1061 = add nsw i32 %conv45.i.i1060, -1
  %arrayidx47.i.i1062 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub46.i.i1061
  %574 = load i8, i8* %arrayidx47.i.i1062, align 1, !tbaa !40
  %sub55.i.i1063 = add nsw i32 %conv45.i.i1060, -8
  %arrayidx56.i1532.i1064 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub55.i.i1063
  %575 = load i8, i8* %arrayidx56.i1532.i1064, align 1, !tbaa !40
  %tobool74.i.i1065 = icmp eq i8 %575, 0
  %mul76.i.i1066 = select i1 %tobool74.i.i1065, i32 0, i32 2
  %tobool78.i.i1067 = icmp ne i8 %574, 0
  %lnot.ext82.i.i1068 = zext i1 %tobool78.i.i1067 to i32
  %add77.i.i1069 = or i32 %mul76.i.i1066, %lnot.ext82.i.i1068
  %add83.i.i1070 = add nuw nsw i32 %add77.i.i1069, 89
  %arrayidx147.i1071 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %conv45.i.i1060
  %576 = load i8, i8* %arrayidx147.i1071, align 1, !tbaa !40
  %tobool148.i1072 = icmp eq i8 %576, 0
  br i1 %tobool148.i1072, label %if.else155.i1076, label %if.then149.i1075

if.then149.i1075:                                 ; preds = %do.body137.i1073
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add83.i.i1070, i32 1) #7
  %add.ptr.i1074 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 69, i32 3, i32 %i128.01718.i1058, i32 1
  tail call void @x264_8_cabac_block_residual_c(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* %cb, i32 1, i16* nonnull %add.ptr.i1074) #7
  br label %if.end156.i1079

if.else155.i1076:                                 ; preds = %do.body137.i1073
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add83.i.i1070, i32 0) #7
  br label %if.end156.i1079

if.end156.i1079:                                  ; preds = %if.else155.i1076, %if.then149.i1075
  %inc160.i1077 = add nuw nsw i32 %i128.01718.i1058, 1
  %exitcond = icmp eq i32 %inc160.i1077, 16
  br i1 %exitcond, label %if.end801.i1185, label %do.body137.i1073

if.else166.i1085:                                 ; preds = %cabac_qp_delta.exit.i1006
  %b_transform_8x8.i1083 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 79
  %577 = load i32, i32* %b_transform_8x8.i1083, align 4, !tbaa !54
  %tobool168.i1084 = icmp eq i32 %577, 0
  br i1 %tobool168.i1084, label %for.cond731.preheader.i1086, label %if.then169.i1088

for.cond731.preheader.i1086:                      ; preds = %if.else166.i1085
  %add67.i1580.i1087 = select i1 %553, i32 255, i32 127
  %578 = load i32, i32* %i_cbp_luma80.i950, align 32, !tbaa !59
  %tobool7411726.i1090 = icmp eq i32 %578, 0
  br i1 %tobool7411726.i1090, label %if.end801.i1185, label %land.rhs742.i1116

if.then169.i1088:                                 ; preds = %if.else166.i1085
  %579 = load i32, i32* %i_cbp_luma80.i950, align 32, !tbaa !59
  %tobool7121737.i = icmp eq i32 %579, 0
  br i1 %tobool7121737.i, label %if.end801.i1185, label %land.rhs713.i

land.rhs713.i:                                    ; preds = %if.then169.i1088, %land.rhs713.i
  %msk707.01739.i = phi i32 [ %shr717.i, %land.rhs713.i ], [ %579, %if.then169.i1088 ]
  %i706.01738.i = phi i32 [ %inc726.i, %land.rhs713.i ], [ 0, %if.then169.i1088 ]
  %arrayidx.i1558.i = getelementptr inbounds [16 x i8], [16 x i8]* @x264_ctz_4bit.lut, i32 0, i32 %msk707.01739.i
  %580 = load i8, i8* %arrayidx.i1558.i, align 1, !tbaa !40
  %conv.i1559.i = zext i8 %580 to i32
  %add715.i = add nsw i32 %i706.01738.i, %conv.i1559.i
  %add716.i = add nuw nsw i32 %conv.i1559.i, 1
  %shr717.i = ashr i32 %msk707.01739.i, %add716.i
  %arraydecay724.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 69, i32 2, i32 %add715.i, i32 0
  tail call void @x264_8_cabac_block_residual_c(%struct.x264_t* %h, %struct.x264_cabac_t* %cb, i32 5, i16* nonnull %arraydecay724.i) #7
  %inc726.i = add nsw i32 %add715.i, 1
  %tobool712.i = icmp eq i32 %shr717.i, 0
  br i1 %tobool712.i, label %if.end801.i1185, label %land.rhs713.i

land.rhs742.i1116:                                ; preds = %for.cond731.preheader.i1086, %for.cond.cleanup754.i1165
  %msk736.01728.i1099 = phi i32 [ %shr746.i1105, %for.cond.cleanup754.i1165 ], [ %578, %for.cond731.preheader.i1086 ]
  %i8x8.01727.i1100 = phi i32 [ %inc795.i1163, %for.cond.cleanup754.i1165 ], [ 0, %for.cond731.preheader.i1086 ]
  %arrayidx.i1560.i1101 = getelementptr inbounds [16 x i8], [16 x i8]* @x264_ctz_4bit.lut, i32 0, i32 %msk736.01728.i1099
  %581 = load i8, i8* %arrayidx.i1560.i1101, align 1, !tbaa !40
  %conv.i1561.i1102 = zext i8 %581 to i32
  %add744.i1103 = add nsw i32 %i8x8.01727.i1100, %conv.i1561.i1102
  %add745.i1104 = add nuw nsw i32 %conv.i1561.i1102, 1
  %shr746.i1105 = ashr i32 %msk736.01728.i1099, %add745.i1104
  %mul760.i1106 = shl i32 %add744.i1103, 2
  %arrayidx44.i1562.us.i1108 = getelementptr inbounds [51 x i8], [51 x i8]* @x264_scan8, i32 0, i32 %mul760.i1106
  %582 = load i8, i8* %arrayidx44.i1562.us.i1108, align 1, !tbaa !40
  %conv45.i1563.us.i1109 = zext i8 %582 to i32
  %sub55.i1567.us.i1113 = add nsw i32 %conv45.i1563.us.i1109, -8
  %arrayidx56.i1568.us.i1114 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub55.i1567.us.i1113
  %583 = load i8, i8* %arrayidx56.i1568.us.i1114, align 1, !tbaa !40
  %conv57.i1569.us.i1115 = zext i8 %583 to i32
  %sub46.i1564.us.i1110 = add nsw i32 %conv45.i1563.us.i1109, -1
  %arrayidx47.i1565.us.i1111 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub46.i1564.us.i1110
  %584 = load i8, i8* %arrayidx47.i1565.us.i1111, align 1, !tbaa !40
  %conv48.i1566.us.i1112 = zext i8 %584 to i32
  %and68.i1581.us.i1125 = and i32 %add67.i1580.i1087, %conv48.i1566.us.i1112
  %and71.i1582.us.i1126 = and i32 %add67.i1580.i1087, %conv57.i1569.us.i1115
  %tobool74.i1585.us.i1128 = icmp eq i32 %and71.i1582.us.i1126, 0
  %mul76.i1586.us.i1129 = select i1 %tobool74.i1585.us.i1128, i32 0, i32 2
  %tobool78.i1587.us.i1130 = icmp ne i32 %and68.i1581.us.i1125, 0
  %lnot.ext82.i1588.us.i1131 = zext i1 %tobool78.i1587.us.i1130 to i32
  %add77.i1589.us.i1132 = or i32 %mul76.i1586.us.i1129, %lnot.ext82.i1588.us.i1131
  %add83.i1590.us.i1133 = add nuw nsw i32 %add77.i1589.us.i1132, 93
  %arrayidx774.us.i1134 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %conv45.i1563.us.i1109
  %585 = load i8, i8* %arrayidx774.us.i1134, align 1, !tbaa !40
  %tobool775.us.i1135 = icmp eq i8 %585, 0
  br i1 %tobool775.us.i1135, label %if.else787.us.i1139, label %if.then776.us.i1138

if.then776.us.i1138:                              ; preds = %land.rhs742.i1116
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add83.i1590.us.i1133, i32 1) #7
  %arraydecay786.us.i1137 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 69, i32 3, i32 %mul760.i1106, i32 0
  tail call void @x264_8_cabac_block_residual_c(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* %cb, i32 2, i16* nonnull %arraydecay786.us.i1137) #7
  br label %if.end788.us.i1159

if.else787.us.i1139:                              ; preds = %land.rhs742.i1116
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add83.i1590.us.i1133, i32 0) #7
  br label %if.end788.us.i1159

if.end788.us.i1159:                               ; preds = %if.else787.us.i1139, %if.then776.us.i1138
  %add763.us.1.i1140 = or i32 %mul760.i1106, 1
  %arrayidx44.i1562.us.1.i1141 = getelementptr inbounds [51 x i8], [51 x i8]* @x264_scan8, i32 0, i32 %add763.us.1.i1140
  %586 = load i8, i8* %arrayidx44.i1562.us.1.i1141, align 1, !tbaa !40
  %conv45.i1563.us.1.i1142 = zext i8 %586 to i32
  %sub46.i1564.us.1.i1143 = add nsw i32 %conv45.i1563.us.1.i1142, -1
  %arrayidx47.i1565.us.1.i1144 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub46.i1564.us.1.i1143
  %587 = load i8, i8* %arrayidx47.i1565.us.1.i1144, align 1, !tbaa !40
  %conv48.i1566.us.1.i1145 = zext i8 %587 to i32
  %sub55.i1567.us.1.i1146 = add nsw i32 %conv45.i1563.us.1.i1142, -8
  %arrayidx56.i1568.us.1.i1147 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub55.i1567.us.1.i1146
  %588 = load i8, i8* %arrayidx56.i1568.us.1.i1147, align 1, !tbaa !40
  %conv57.i1569.us.1.i1148 = zext i8 %588 to i32
  %and68.i1581.us.1.i1149 = and i32 %add67.i1580.i1087, %conv48.i1566.us.1.i1145
  %and71.i1582.us.1.i1150 = and i32 %add67.i1580.i1087, %conv57.i1569.us.1.i1148
  %tobool74.i1585.us.1.i1151 = icmp eq i32 %and71.i1582.us.1.i1150, 0
  %mul76.i1586.us.1.i1152 = select i1 %tobool74.i1585.us.1.i1151, i32 0, i32 2
  %tobool78.i1587.us.1.i1153 = icmp ne i32 %and68.i1581.us.1.i1149, 0
  %lnot.ext82.i1588.us.1.i1154 = zext i1 %tobool78.i1587.us.1.i1153 to i32
  %add77.i1589.us.1.i1155 = or i32 %mul76.i1586.us.1.i1152, %lnot.ext82.i1588.us.1.i1154
  %add83.i1590.us.1.i1156 = add nuw nsw i32 %add77.i1589.us.1.i1155, 93
  %arrayidx774.us.1.i1157 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %conv45.i1563.us.1.i1142
  %589 = load i8, i8* %arrayidx774.us.1.i1157, align 1, !tbaa !40
  %tobool775.us.1.i1158 = icmp eq i8 %589, 0
  br i1 %tobool775.us.1.i1158, label %if.else787.us.1.i1237, label %if.then776.us.1.i1236

for.cond.cleanup754.i1165:                        ; preds = %if.else787.us.3.i1283, %if.then776.us.3.i1282
  %inc795.i1163 = add nsw i32 %add744.i1103, 1
  %tobool741.i1164 = icmp eq i32 %shr746.i1105, 0
  br i1 %tobool741.i1164, label %if.end801.i1185, label %land.rhs742.i1116

if.end801.i1185:                                  ; preds = %land.rhs713.i, %for.cond.cleanup754.i1165, %if.end156.i1079, %for.cond731.preheader.i1086, %if.end123.i1050, %if.then169.i1088
  %i_cbp_chroma805.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 81
  %590 = load i32, i32* %i_cbp_chroma805.i, align 4, !tbaa !74
  %tobool806.i = icmp eq i32 %590, 0
  br i1 %tobool806.i, label %if.end933.i1193, label %if.then807.i

if.then807.i:                                     ; preds = %if.end801.i1185
  %591 = load i32, i32* %i_chroma_format_idc, align 8, !tbaa !41
  %cmp809.i = icmp eq i32 %591, 2
  %i_cbp_left.i1594.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 13
  %592 = load i32, i32* %i_cbp_left.i1594.i, align 4, !tbaa !61
  %cmp2.i1596.i = icmp eq i32 %592, -1
  %shr121.i1597.i = lshr i32 %592, 9
  %and.i1598.i = and i32 %shr121.i1597.i, 1
  %cond.i1599.i = select i1 %cmp2.i1596.i, i32 %spec.select.i955, i32 %and.i1598.i
  %i_cbp_top.i1600.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 12
  %593 = load i32, i32* %i_cbp_top.i1600.i, align 16, !tbaa !60
  %cmp8.i1601.i = icmp eq i32 %593, -1
  %shr14120.i1602.i = lshr i32 %593, 9
  %and15.i1603.i = and i32 %shr14120.i1602.i, 1
  %cond18.i1604.i = select i1 %cmp8.i1601.i, i32 %spec.select.i955, i32 %and15.i1603.i
  %mul.i1605.i = shl nuw nsw i32 %cond18.i1604.i, 1
  %add19.i1606.i = add nuw nsw i32 %cond.i1599.i, 97
  %add20.i1607.i = add nuw nsw i32 %add19.i1606.i, %mul.i1605.i
  %arrayidx819.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 40
  %594 = load i8, i8* %arrayidx819.i, align 1, !tbaa !40
  %tobool820.i = icmp eq i8 %594, 0
  br i1 %cmp809.i, label %do.body812.i, label %do.body848.i

do.body812.i:                                     ; preds = %if.then807.i
  br i1 %tobool820.i, label %if.else825.i, label %if.then821.i

if.then821.i:                                     ; preds = %do.body812.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add20.i1607.i, i32 1) #7
  %arraydecay824.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 69, i32 1, i32 0, i32 0
  %h.idx1255.i = getelementptr %struct.x264_t, %struct.x264_t* %h, i32 0, i32 98, i32 16, i32 3
  %h.idx1255.val.i = load i32 (i16*)*, i32 (i16*)** %h.idx1255.i, align 4, !tbaa !39
  tail call fastcc void @cabac_block_residual_422_dc(i32 (i16*)* %h.idx1255.val.i, %struct.x264_cabac_t* %cb, i16* nonnull %arraydecay824.i) #7
  br label %if.end826.i

if.else825.i:                                     ; preds = %do.body812.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add20.i1607.i, i32 0) #7
  br label %if.end826.i

if.end826.i:                                      ; preds = %if.else825.i, %if.then821.i
  %595 = load i32, i32* %i_cbp_left.i1594.i, align 4, !tbaa !61
  %cmp2.i1612.i = icmp eq i32 %595, -1
  %shr121.i1613.i = lshr i32 %595, 10
  %and.i1614.i = and i32 %shr121.i1613.i, 1
  %cond.i1615.i = select i1 %cmp2.i1612.i, i32 %spec.select.i955, i32 %and.i1614.i
  %596 = load i32, i32* %i_cbp_top.i1600.i, align 16, !tbaa !60
  %cmp8.i1617.i = icmp eq i32 %596, -1
  %shr14120.i1618.i = lshr i32 %596, 10
  %and15.i1619.i = and i32 %shr14120.i1618.i, 1
  %cond18.i1620.i = select i1 %cmp8.i1617.i, i32 %spec.select.i955, i32 %and15.i1619.i
  %mul.i1621.i = shl nuw nsw i32 %cond18.i1620.i, 1
  %add19.i1622.i = add nuw nsw i32 %cond.i1615.i, 97
  %add20.i1623.i = add nuw nsw i32 %add19.i1622.i, %mul.i1621.i
  %arrayidx836.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 80
  %597 = load i8, i8* %arrayidx836.i, align 1, !tbaa !40
  %tobool837.i = icmp eq i8 %597, 0
  br i1 %tobool837.i, label %if.else843.i, label %if.then838.i

if.then838.i:                                     ; preds = %if.end826.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add20.i1623.i, i32 1) #7
  %arraydecay842.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 69, i32 1, i32 1, i32 0
  %h.idx1256.i = getelementptr %struct.x264_t, %struct.x264_t* %h, i32 0, i32 98, i32 16, i32 3
  %h.idx1256.val.i = load i32 (i16*)*, i32 (i16*)** %h.idx1256.i, align 4, !tbaa !39
  tail call fastcc void @cabac_block_residual_422_dc(i32 (i16*)* %h.idx1256.val.i, %struct.x264_cabac_t* %cb, i16* nonnull %arraydecay842.i) #7
  br label %if.end884.i

if.else843.i:                                     ; preds = %if.end826.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add20.i1623.i, i32 0) #7
  br label %if.end884.i

do.body848.i:                                     ; preds = %if.then807.i
  br i1 %tobool820.i, label %if.else862.i, label %if.then857.i

if.then857.i:                                     ; preds = %do.body848.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add20.i1607.i, i32 1) #7
  %arraydecay861.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 69, i32 1, i32 0, i32 0
  tail call void @x264_8_cabac_block_residual_c(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* %cb, i32 3, i16* nonnull %arraydecay861.i) #7
  br label %if.end863.i

if.else862.i:                                     ; preds = %do.body848.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add20.i1607.i, i32 0) #7
  br label %if.end863.i

if.end863.i:                                      ; preds = %if.else862.i, %if.then857.i
  %598 = load i32, i32* %i_cbp_left.i1594.i, align 4, !tbaa !61
  %cmp2.i1628.i = icmp eq i32 %598, -1
  %shr121.i1629.i = lshr i32 %598, 10
  %and.i1630.i = and i32 %shr121.i1629.i, 1
  %cond.i1631.i = select i1 %cmp2.i1628.i, i32 %spec.select.i955, i32 %and.i1630.i
  %599 = load i32, i32* %i_cbp_top.i1600.i, align 16, !tbaa !60
  %cmp8.i1633.i = icmp eq i32 %599, -1
  %shr14120.i1634.i = lshr i32 %599, 10
  %and15.i1635.i = and i32 %shr14120.i1634.i, 1
  %cond18.i1636.i = select i1 %cmp8.i1633.i, i32 %spec.select.i955, i32 %and15.i1635.i
  %mul.i1637.i = shl nuw nsw i32 %cond18.i1636.i, 1
  %add19.i1638.i = add nuw nsw i32 %cond.i1631.i, 97
  %add20.i1639.i = add nuw nsw i32 %add19.i1638.i, %mul.i1637.i
  %arrayidx873.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 80
  %600 = load i8, i8* %arrayidx873.i, align 1, !tbaa !40
  %tobool874.i = icmp eq i8 %600, 0
  br i1 %tobool874.i, label %if.else880.i, label %if.then875.i

if.then875.i:                                     ; preds = %if.end863.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add20.i1639.i, i32 1) #7
  %arraydecay879.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 69, i32 1, i32 1, i32 0
  tail call void @x264_8_cabac_block_residual_c(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* %cb, i32 3, i16* nonnull %arraydecay879.i) #7
  br label %if.end884.i

if.else880.i:                                     ; preds = %if.end863.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add20.i1639.i, i32 0) #7
  br label %if.end884.i

if.end884.i:                                      ; preds = %if.else880.i, %if.then875.i, %if.else843.i, %if.then838.i
  %601 = load i32, i32* %i_cbp_chroma805.i, align 4, !tbaa !74
  %cmp887.i = icmp eq i32 %601, 2
  br i1 %cmp887.i, label %if.then889.i, label %if.end933.i1193

if.then889.i:                                     ; preds = %if.end884.i
  %chroma_v_shift891.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 4
  %602 = load i32, i32* %chroma_v_shift891.i, align 16, !tbaa !73
  %shl.i = shl i32 8, %602
  %add67.i1658.i = select i1 %553, i32 255, i32 127
  br label %for.cond899.preheader.us.i

for.cond899.preheader.us.i:                       ; preds = %if.then889.i, %for.cond.cleanup903.us-lcssa.us.us.i
  %i892.01717.us.i = phi i32 [ %add929.us.i, %for.cond.cleanup903.us-lcssa.us.us.i ], [ 16, %if.then889.i ]
  %arrayidx44.i1642.us.us.i = getelementptr inbounds [51 x i8], [51 x i8]* @x264_scan8, i32 0, i32 %i892.01717.us.i
  %603 = load i8, i8* %arrayidx44.i1642.us.us.i, align 1, !tbaa !40
  %conv45.i1643.us.us.i = zext i8 %603 to i32
  %sub46.i1644.us.us.i = add nsw i32 %conv45.i1643.us.us.i, -1
  %arrayidx47.i1645.us.us.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub46.i1644.us.us.i
  %604 = load i8, i8* %arrayidx47.i1645.us.us.i, align 1, !tbaa !40
  %conv48.i1646.us.us.i = zext i8 %604 to i32
  %sub55.i1647.us.us.i = add nsw i32 %conv45.i1643.us.us.i, -8
  %arrayidx56.i1648.us.us.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub55.i1647.us.us.i
  %605 = load i8, i8* %arrayidx56.i1648.us.us.i, align 1, !tbaa !40
  %conv57.i1649.us.us.i = zext i8 %605 to i32
  %and68.i1659.us.us.i = and i32 %add67.i1658.i, %conv48.i1646.us.us.i
  %and71.i1660.us.us.i = and i32 %add67.i1658.i, %conv57.i1649.us.us.i
  %tobool74.i1661.us.us.i = icmp eq i32 %and71.i1660.us.us.i, 0
  %mul76.i1662.us.us.i = select i1 %tobool74.i1661.us.us.i, i32 0, i32 2
  %tobool78.i1663.us.us.i = icmp ne i32 %and68.i1659.us.us.i, 0
  %lnot.ext82.i1664.us.us.i = zext i1 %tobool78.i1663.us.us.i to i32
  %add77.i1665.us.us.i = or i32 %mul76.i1662.us.us.i, %lnot.ext82.i1664.us.us.i
  %retval.1.i1668.us.us.i = add nuw nsw i32 %add77.i1665.us.us.i, 101
  %arrayidx913.us.us.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %conv45.i1643.us.us.i
  %606 = load i8, i8* %arrayidx913.us.us.i, align 1, !tbaa !40
  %tobool914.us.us.i = icmp eq i8 %606, 0
  br i1 %tobool914.us.us.i, label %if.else921.us.us.i, label %if.then915.us.us.i

if.then915.us.us.i:                               ; preds = %for.cond899.preheader.us.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %retval.1.i1668.us.us.i, i32 1) #7
  %add.ptr920.us.us.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 69, i32 3, i32 %i892.01717.us.i, i32 1
  tail call void @x264_8_cabac_block_residual_c(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* %cb, i32 4, i16* nonnull %add.ptr920.us.us.i) #7
  br label %do.body905.us.us.1.i

if.else921.us.us.i:                               ; preds = %for.cond899.preheader.us.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %retval.1.i1668.us.us.i, i32 0) #7
  br label %do.body905.us.us.1.i

for.cond.cleanup903.us-lcssa.us.us.i:             ; preds = %if.else921.us.us.3.i, %if.then915.us.us.3.i
  %add929.us.i = add nsw i32 %i892.01717.us.i, %shl.i
  %cmp894.us.i = icmp slt i32 %add929.us.i, 48
  br i1 %cmp894.us.i, label %for.cond899.preheader.us.i, label %if.end933.i1193

if.end933.i1193:                                  ; preds = %for.cond.cleanup903.us-lcssa.us.us.i, %if.end884.i, %if.end801.i1185, %lor.lhs.false.i953
  %607 = load i32, i32* %312, align 4, !tbaa !46
  %608 = load i32, i32* %314, align 16, !tbaa !47
  %sub.ptr.sub.i1259.i1186 = sub i32 %607, %608
  %609 = load i32, i32* %i_bytes_outstanding.i.i14, align 4, !tbaa !48
  %add.i1261.i1187 = add nsw i32 %sub.ptr.sub.i1259.i1186, %609
  %610 = load i32, i32* %i_queue.i.i16, align 8, !tbaa !49
  %i_tex_bits938.i1189 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 72, i32 21, i32 1
  %add1.i1264.i1190 = sub i32 %610, %add1.i1427.i826
  br label %if.end6

do.body905.us.us.1.i:                             ; preds = %if.else921.us.us.i, %if.then915.us.us.i
  %inc926.us.us.i = add nsw i32 %i892.01717.us.i, 1
  %arrayidx44.i1642.us.us.1.i = getelementptr inbounds [51 x i8], [51 x i8]* @x264_scan8, i32 0, i32 %inc926.us.us.i
  %611 = load i8, i8* %arrayidx44.i1642.us.us.1.i, align 1, !tbaa !40
  %conv45.i1643.us.us.1.i = zext i8 %611 to i32
  %sub46.i1644.us.us.1.i = add nsw i32 %conv45.i1643.us.us.1.i, -1
  %arrayidx47.i1645.us.us.1.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub46.i1644.us.us.1.i
  %612 = load i8, i8* %arrayidx47.i1645.us.us.1.i, align 1, !tbaa !40
  %conv48.i1646.us.us.1.i = zext i8 %612 to i32
  %sub55.i1647.us.us.1.i = add nsw i32 %conv45.i1643.us.us.1.i, -8
  %arrayidx56.i1648.us.us.1.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub55.i1647.us.us.1.i
  %613 = load i8, i8* %arrayidx56.i1648.us.us.1.i, align 1, !tbaa !40
  %conv57.i1649.us.us.1.i = zext i8 %613 to i32
  %and68.i1659.us.us.1.i = and i32 %add67.i1658.i, %conv48.i1646.us.us.1.i
  %and71.i1660.us.us.1.i = and i32 %add67.i1658.i, %conv57.i1649.us.us.1.i
  %tobool74.i1661.us.us.1.i = icmp eq i32 %and71.i1660.us.us.1.i, 0
  %mul76.i1662.us.us.1.i = select i1 %tobool74.i1661.us.us.1.i, i32 0, i32 2
  %tobool78.i1663.us.us.1.i = icmp ne i32 %and68.i1659.us.us.1.i, 0
  %lnot.ext82.i1664.us.us.1.i = zext i1 %tobool78.i1663.us.us.1.i to i32
  %add77.i1665.us.us.1.i = or i32 %mul76.i1662.us.us.1.i, %lnot.ext82.i1664.us.us.1.i
  %retval.1.i1668.us.us.1.i = add nuw nsw i32 %add77.i1665.us.us.1.i, 101
  %arrayidx913.us.us.1.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %conv45.i1643.us.us.1.i
  %614 = load i8, i8* %arrayidx913.us.us.1.i, align 1, !tbaa !40
  %tobool914.us.us.1.i = icmp eq i8 %614, 0
  br i1 %tobool914.us.us.1.i, label %if.else921.us.us.1.i, label %if.then915.us.us.1.i

if.then915.us.us.1.i:                             ; preds = %do.body905.us.us.1.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %retval.1.i1668.us.us.1.i, i32 1) #7
  %add.ptr920.us.us.1.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 69, i32 3, i32 %inc926.us.us.i, i32 1
  tail call void @x264_8_cabac_block_residual_c(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* %cb, i32 4, i16* nonnull %add.ptr920.us.us.1.i) #7
  br label %if.end922.us.us.1.i

if.else921.us.us.1.i:                             ; preds = %do.body905.us.us.1.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %retval.1.i1668.us.us.1.i, i32 0) #7
  br label %if.end922.us.us.1.i

if.end922.us.us.1.i:                              ; preds = %if.else921.us.us.1.i, %if.then915.us.us.1.i
  %inc926.us.us.1.i = add nsw i32 %i892.01717.us.i, 2
  %arrayidx44.i1642.us.us.2.i = getelementptr inbounds [51 x i8], [51 x i8]* @x264_scan8, i32 0, i32 %inc926.us.us.1.i
  %615 = load i8, i8* %arrayidx44.i1642.us.us.2.i, align 1, !tbaa !40
  %conv45.i1643.us.us.2.i = zext i8 %615 to i32
  %sub46.i1644.us.us.2.i = add nsw i32 %conv45.i1643.us.us.2.i, -1
  %arrayidx47.i1645.us.us.2.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub46.i1644.us.us.2.i
  %616 = load i8, i8* %arrayidx47.i1645.us.us.2.i, align 1, !tbaa !40
  %conv48.i1646.us.us.2.i = zext i8 %616 to i32
  %sub55.i1647.us.us.2.i = add nsw i32 %conv45.i1643.us.us.2.i, -8
  %arrayidx56.i1648.us.us.2.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub55.i1647.us.us.2.i
  %617 = load i8, i8* %arrayidx56.i1648.us.us.2.i, align 1, !tbaa !40
  %conv57.i1649.us.us.2.i = zext i8 %617 to i32
  %and68.i1659.us.us.2.i = and i32 %add67.i1658.i, %conv48.i1646.us.us.2.i
  %and71.i1660.us.us.2.i = and i32 %add67.i1658.i, %conv57.i1649.us.us.2.i
  %tobool74.i1661.us.us.2.i = icmp eq i32 %and71.i1660.us.us.2.i, 0
  %mul76.i1662.us.us.2.i = select i1 %tobool74.i1661.us.us.2.i, i32 0, i32 2
  %tobool78.i1663.us.us.2.i = icmp ne i32 %and68.i1659.us.us.2.i, 0
  %lnot.ext82.i1664.us.us.2.i = zext i1 %tobool78.i1663.us.us.2.i to i32
  %add77.i1665.us.us.2.i = or i32 %mul76.i1662.us.us.2.i, %lnot.ext82.i1664.us.us.2.i
  %retval.1.i1668.us.us.2.i = add nuw nsw i32 %add77.i1665.us.us.2.i, 101
  %arrayidx913.us.us.2.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %conv45.i1643.us.us.2.i
  %618 = load i8, i8* %arrayidx913.us.us.2.i, align 1, !tbaa !40
  %tobool914.us.us.2.i = icmp eq i8 %618, 0
  br i1 %tobool914.us.us.2.i, label %if.else921.us.us.2.i, label %if.then915.us.us.2.i

if.then915.us.us.2.i:                             ; preds = %if.end922.us.us.1.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %retval.1.i1668.us.us.2.i, i32 1) #7
  %add.ptr920.us.us.2.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 69, i32 3, i32 %inc926.us.us.1.i, i32 1
  tail call void @x264_8_cabac_block_residual_c(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* %cb, i32 4, i16* nonnull %add.ptr920.us.us.2.i) #7
  br label %if.end922.us.us.2.i

if.else921.us.us.2.i:                             ; preds = %if.end922.us.us.1.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %retval.1.i1668.us.us.2.i, i32 0) #7
  br label %if.end922.us.us.2.i

if.end922.us.us.2.i:                              ; preds = %if.else921.us.us.2.i, %if.then915.us.us.2.i
  %inc926.us.us.2.i = add nsw i32 %i892.01717.us.i, 3
  %arrayidx44.i1642.us.us.3.i = getelementptr inbounds [51 x i8], [51 x i8]* @x264_scan8, i32 0, i32 %inc926.us.us.2.i
  %619 = load i8, i8* %arrayidx44.i1642.us.us.3.i, align 1, !tbaa !40
  %conv45.i1643.us.us.3.i = zext i8 %619 to i32
  %sub46.i1644.us.us.3.i = add nsw i32 %conv45.i1643.us.us.3.i, -1
  %arrayidx47.i1645.us.us.3.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub46.i1644.us.us.3.i
  %620 = load i8, i8* %arrayidx47.i1645.us.us.3.i, align 1, !tbaa !40
  %conv48.i1646.us.us.3.i = zext i8 %620 to i32
  %sub55.i1647.us.us.3.i = add nsw i32 %conv45.i1643.us.us.3.i, -8
  %arrayidx56.i1648.us.us.3.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub55.i1647.us.us.3.i
  %621 = load i8, i8* %arrayidx56.i1648.us.us.3.i, align 1, !tbaa !40
  %conv57.i1649.us.us.3.i = zext i8 %621 to i32
  %and68.i1659.us.us.3.i = and i32 %add67.i1658.i, %conv48.i1646.us.us.3.i
  %and71.i1660.us.us.3.i = and i32 %add67.i1658.i, %conv57.i1649.us.us.3.i
  %tobool74.i1661.us.us.3.i = icmp eq i32 %and71.i1660.us.us.3.i, 0
  %mul76.i1662.us.us.3.i = select i1 %tobool74.i1661.us.us.3.i, i32 0, i32 2
  %tobool78.i1663.us.us.3.i = icmp ne i32 %and68.i1659.us.us.3.i, 0
  %lnot.ext82.i1664.us.us.3.i = zext i1 %tobool78.i1663.us.us.3.i to i32
  %add77.i1665.us.us.3.i = or i32 %mul76.i1662.us.us.3.i, %lnot.ext82.i1664.us.us.3.i
  %retval.1.i1668.us.us.3.i = add nuw nsw i32 %add77.i1665.us.us.3.i, 101
  %arrayidx913.us.us.3.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %conv45.i1643.us.us.3.i
  %622 = load i8, i8* %arrayidx913.us.us.3.i, align 1, !tbaa !40
  %tobool914.us.us.3.i = icmp eq i8 %622, 0
  br i1 %tobool914.us.us.3.i, label %if.else921.us.us.3.i, label %if.then915.us.us.3.i

if.then915.us.us.3.i:                             ; preds = %if.end922.us.us.2.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %retval.1.i1668.us.us.3.i, i32 1) #7
  %add.ptr920.us.us.3.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 69, i32 3, i32 %inc926.us.us.2.i, i32 1
  tail call void @x264_8_cabac_block_residual_c(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* %cb, i32 4, i16* nonnull %add.ptr920.us.us.3.i) #7
  br label %for.cond.cleanup903.us-lcssa.us.us.i

if.else921.us.us.3.i:                             ; preds = %if.end922.us.us.2.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %retval.1.i1668.us.us.3.i, i32 0) #7
  br label %for.cond.cleanup903.us-lcssa.us.us.i

if.then776.us.1.i1236:                            ; preds = %if.end788.us.i1159
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add83.i1590.us.1.i1156, i32 1) #7
  %arraydecay786.us.1.i1235 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 69, i32 3, i32 %add763.us.1.i1140, i32 0
  tail call void @x264_8_cabac_block_residual_c(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* %cb, i32 2, i16* nonnull %arraydecay786.us.1.i1235) #7
  br label %if.end788.us.1.i1257

if.else787.us.1.i1237:                            ; preds = %if.end788.us.i1159
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add83.i1590.us.1.i1156, i32 0) #7
  br label %if.end788.us.1.i1257

if.end788.us.1.i1257:                             ; preds = %if.else787.us.1.i1237, %if.then776.us.1.i1236
  %add763.us.2.i1238 = or i32 %mul760.i1106, 2
  %arrayidx44.i1562.us.2.i1239 = getelementptr inbounds [51 x i8], [51 x i8]* @x264_scan8, i32 0, i32 %add763.us.2.i1238
  %623 = load i8, i8* %arrayidx44.i1562.us.2.i1239, align 1, !tbaa !40
  %conv45.i1563.us.2.i1240 = zext i8 %623 to i32
  %sub46.i1564.us.2.i1241 = add nsw i32 %conv45.i1563.us.2.i1240, -1
  %arrayidx47.i1565.us.2.i1242 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub46.i1564.us.2.i1241
  %624 = load i8, i8* %arrayidx47.i1565.us.2.i1242, align 1, !tbaa !40
  %conv48.i1566.us.2.i1243 = zext i8 %624 to i32
  %sub55.i1567.us.2.i1244 = add nsw i32 %conv45.i1563.us.2.i1240, -8
  %arrayidx56.i1568.us.2.i1245 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub55.i1567.us.2.i1244
  %625 = load i8, i8* %arrayidx56.i1568.us.2.i1245, align 1, !tbaa !40
  %conv57.i1569.us.2.i1246 = zext i8 %625 to i32
  %and68.i1581.us.2.i1247 = and i32 %add67.i1580.i1087, %conv48.i1566.us.2.i1243
  %and71.i1582.us.2.i1248 = and i32 %add67.i1580.i1087, %conv57.i1569.us.2.i1246
  %tobool74.i1585.us.2.i1249 = icmp eq i32 %and71.i1582.us.2.i1248, 0
  %mul76.i1586.us.2.i1250 = select i1 %tobool74.i1585.us.2.i1249, i32 0, i32 2
  %tobool78.i1587.us.2.i1251 = icmp ne i32 %and68.i1581.us.2.i1247, 0
  %lnot.ext82.i1588.us.2.i1252 = zext i1 %tobool78.i1587.us.2.i1251 to i32
  %add77.i1589.us.2.i1253 = or i32 %mul76.i1586.us.2.i1250, %lnot.ext82.i1588.us.2.i1252
  %add83.i1590.us.2.i1254 = add nuw nsw i32 %add77.i1589.us.2.i1253, 93
  %arrayidx774.us.2.i1255 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %conv45.i1563.us.2.i1240
  %626 = load i8, i8* %arrayidx774.us.2.i1255, align 1, !tbaa !40
  %tobool775.us.2.i1256 = icmp eq i8 %626, 0
  br i1 %tobool775.us.2.i1256, label %if.else787.us.2.i1260, label %if.then776.us.2.i1259

if.then776.us.2.i1259:                            ; preds = %if.end788.us.1.i1257
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add83.i1590.us.2.i1254, i32 1) #7
  %arraydecay786.us.2.i1258 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 69, i32 3, i32 %add763.us.2.i1238, i32 0
  tail call void @x264_8_cabac_block_residual_c(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* %cb, i32 2, i16* nonnull %arraydecay786.us.2.i1258) #7
  br label %if.end788.us.2.i1280

if.else787.us.2.i1260:                            ; preds = %if.end788.us.1.i1257
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add83.i1590.us.2.i1254, i32 0) #7
  br label %if.end788.us.2.i1280

if.end788.us.2.i1280:                             ; preds = %if.else787.us.2.i1260, %if.then776.us.2.i1259
  %add763.us.3.i1261 = or i32 %mul760.i1106, 3
  %arrayidx44.i1562.us.3.i1262 = getelementptr inbounds [51 x i8], [51 x i8]* @x264_scan8, i32 0, i32 %add763.us.3.i1261
  %627 = load i8, i8* %arrayidx44.i1562.us.3.i1262, align 1, !tbaa !40
  %conv45.i1563.us.3.i1263 = zext i8 %627 to i32
  %sub46.i1564.us.3.i1264 = add nsw i32 %conv45.i1563.us.3.i1263, -1
  %arrayidx47.i1565.us.3.i1265 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub46.i1564.us.3.i1264
  %628 = load i8, i8* %arrayidx47.i1565.us.3.i1265, align 1, !tbaa !40
  %conv48.i1566.us.3.i1266 = zext i8 %628 to i32
  %sub55.i1567.us.3.i1267 = add nsw i32 %conv45.i1563.us.3.i1263, -8
  %arrayidx56.i1568.us.3.i1268 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub55.i1567.us.3.i1267
  %629 = load i8, i8* %arrayidx56.i1568.us.3.i1268, align 1, !tbaa !40
  %conv57.i1569.us.3.i1269 = zext i8 %629 to i32
  %and68.i1581.us.3.i1270 = and i32 %add67.i1580.i1087, %conv48.i1566.us.3.i1266
  %and71.i1582.us.3.i1271 = and i32 %add67.i1580.i1087, %conv57.i1569.us.3.i1269
  %tobool74.i1585.us.3.i1272 = icmp eq i32 %and71.i1582.us.3.i1271, 0
  %mul76.i1586.us.3.i1273 = select i1 %tobool74.i1585.us.3.i1272, i32 0, i32 2
  %tobool78.i1587.us.3.i1274 = icmp ne i32 %and68.i1581.us.3.i1270, 0
  %lnot.ext82.i1588.us.3.i1275 = zext i1 %tobool78.i1587.us.3.i1274 to i32
  %add77.i1589.us.3.i1276 = or i32 %mul76.i1586.us.3.i1273, %lnot.ext82.i1588.us.3.i1275
  %add83.i1590.us.3.i1277 = add nuw nsw i32 %add77.i1589.us.3.i1276, 93
  %arrayidx774.us.3.i1278 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %conv45.i1563.us.3.i1263
  %630 = load i8, i8* %arrayidx774.us.3.i1278, align 1, !tbaa !40
  %tobool775.us.3.i1279 = icmp eq i8 %630, 0
  br i1 %tobool775.us.3.i1279, label %if.else787.us.3.i1283, label %if.then776.us.3.i1282

if.then776.us.3.i1282:                            ; preds = %if.end788.us.2.i1280
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add83.i1590.us.3.i1277, i32 1) #7
  %arraydecay786.us.3.i1281 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 69, i32 3, i32 %add763.us.3.i1261, i32 0
  tail call void @x264_8_cabac_block_residual_c(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* %cb, i32 2, i16* nonnull %arraydecay786.us.3.i1281) #7
  br label %for.cond.cleanup754.i1165

if.else787.us.3.i1283:                            ; preds = %if.end788.us.2.i1280
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add83.i1590.us.3.i1277, i32 0) #7
  br label %for.cond.cleanup754.i1165

if.else.i1459.1.i:                                ; preds = %bs_write.exit1462.i
  %sub4.i1450.1.i = sub nsw i32 8, %storemerge.i1460.i
  %shl7.i1452.1.i = shl i32 %s.sroa.15.6.i, %storemerge.i1460.i
  %shr.i1453.1.i = lshr i32 %conv47.1.i, %sub4.i1450.1.i
  %or8.i1454.1.i = or i32 %shr.i1453.1.i, %shl7.i1452.1.i
  %add5.i.i.i1455.1.i = tail call i32 @llvm.bswap.i32(i32 %or8.i1454.1.i) #7
  %631 = inttoptr i32 %s.sroa.3.6.i to i32*
  store i32 %add5.i.i.i1455.1.i, i32* %631, align 4, !tbaa !40
  %632 = inttoptr i32 %s.sroa.3.6.i to i8*
  %add.ptr.i1457.1.i = getelementptr inbounds i8, i8* %632, i32 4
  %633 = ptrtoint i8* %add.ptr.i1457.1.i to i32
  %sub13.i1458.1.i = add nsw i32 %storemerge.i1460.i, 24
  %.pre1819.i = load i8*, i8** %arrayidx44.i, align 4, !tbaa !39
  br label %bs_write.exit1462.1.i

if.then.i1449.1.i:                                ; preds = %bs_write.exit1462.i
  %shl.i1446.1.i = shl i32 %s.sroa.15.6.i, 8
  %or.i1447.1.i = or i32 %shl.i1446.1.i, %conv47.1.i
  %sub.i1448.1.i = add nsw i32 %storemerge.i1460.i, -8
  br label %bs_write.exit1462.1.i

bs_write.exit1462.1.i:                            ; preds = %if.then.i1449.1.i, %if.else.i1459.1.i
  %634 = phi i8* [ %537, %if.then.i1449.1.i ], [ %.pre1819.i, %if.else.i1459.1.i ]
  %s.sroa.15.6.1.i = phi i32 [ %or.i1447.1.i, %if.then.i1449.1.i ], [ %conv47.1.i, %if.else.i1459.1.i ]
  %s.sroa.3.6.1.i = phi i32 [ %s.sroa.3.6.i, %if.then.i1449.1.i ], [ %633, %if.else.i1459.1.i ]
  %storemerge.i1460.1.i = phi i32 [ %sub.i1448.1.i, %if.then.i1449.1.i ], [ %sub13.i1458.1.i, %if.else.i1459.1.i ]
  %add45.2.i = or i32 %mul.i, 2
  %arrayidx46.2.i = getelementptr inbounds i8, i8* %634, i32 %add45.2.i
  %635 = load i8, i8* %arrayidx46.2.i, align 1, !tbaa !40
  %conv47.2.i = zext i8 %635 to i32
  %cmp.i1444.2.i = icmp sgt i32 %storemerge.i1460.1.i, 8
  br i1 %cmp.i1444.2.i, label %if.then.i1449.2.i, label %if.else.i1459.2.i

if.else.i1459.2.i:                                ; preds = %bs_write.exit1462.1.i
  %sub4.i1450.2.i = sub nsw i32 8, %storemerge.i1460.1.i
  %shl7.i1452.2.i = shl i32 %s.sroa.15.6.1.i, %storemerge.i1460.1.i
  %shr.i1453.2.i = lshr i32 %conv47.2.i, %sub4.i1450.2.i
  %or8.i1454.2.i = or i32 %shr.i1453.2.i, %shl7.i1452.2.i
  %add5.i.i.i1455.2.i = tail call i32 @llvm.bswap.i32(i32 %or8.i1454.2.i) #7
  %636 = inttoptr i32 %s.sroa.3.6.1.i to i32*
  store i32 %add5.i.i.i1455.2.i, i32* %636, align 4, !tbaa !40
  %637 = inttoptr i32 %s.sroa.3.6.1.i to i8*
  %add.ptr.i1457.2.i = getelementptr inbounds i8, i8* %637, i32 4
  %638 = ptrtoint i8* %add.ptr.i1457.2.i to i32
  %sub13.i1458.2.i = add nsw i32 %storemerge.i1460.1.i, 24
  %.pre1820.i = load i8*, i8** %arrayidx44.i, align 4, !tbaa !39
  br label %bs_write.exit1462.2.i

if.then.i1449.2.i:                                ; preds = %bs_write.exit1462.1.i
  %shl.i1446.2.i = shl i32 %s.sroa.15.6.1.i, 8
  %or.i1447.2.i = or i32 %shl.i1446.2.i, %conv47.2.i
  %sub.i1448.2.i = add nsw i32 %storemerge.i1460.1.i, -8
  br label %bs_write.exit1462.2.i

bs_write.exit1462.2.i:                            ; preds = %if.then.i1449.2.i, %if.else.i1459.2.i
  %639 = phi i8* [ %634, %if.then.i1449.2.i ], [ %.pre1820.i, %if.else.i1459.2.i ]
  %s.sroa.15.6.2.i = phi i32 [ %or.i1447.2.i, %if.then.i1449.2.i ], [ %conv47.2.i, %if.else.i1459.2.i ]
  %s.sroa.3.6.2.i = phi i32 [ %s.sroa.3.6.1.i, %if.then.i1449.2.i ], [ %638, %if.else.i1459.2.i ]
  %storemerge.i1460.2.i = phi i32 [ %sub.i1448.2.i, %if.then.i1449.2.i ], [ %sub13.i1458.2.i, %if.else.i1459.2.i ]
  %add45.3.i = or i32 %mul.i, 3
  %arrayidx46.3.i = getelementptr inbounds i8, i8* %639, i32 %add45.3.i
  %640 = load i8, i8* %arrayidx46.3.i, align 1, !tbaa !40
  %conv47.3.i = zext i8 %640 to i32
  %cmp.i1444.3.i = icmp sgt i32 %storemerge.i1460.2.i, 8
  br i1 %cmp.i1444.3.i, label %if.then.i1449.3.i, label %if.else.i1459.3.i

if.else.i1459.3.i:                                ; preds = %bs_write.exit1462.2.i
  %sub4.i1450.3.i = sub nsw i32 8, %storemerge.i1460.2.i
  %shl7.i1452.3.i = shl i32 %s.sroa.15.6.2.i, %storemerge.i1460.2.i
  %shr.i1453.3.i = lshr i32 %conv47.3.i, %sub4.i1450.3.i
  %or8.i1454.3.i = or i32 %shr.i1453.3.i, %shl7.i1452.3.i
  %add5.i.i.i1455.3.i = tail call i32 @llvm.bswap.i32(i32 %or8.i1454.3.i) #7
  %641 = inttoptr i32 %s.sroa.3.6.2.i to i32*
  store i32 %add5.i.i.i1455.3.i, i32* %641, align 4, !tbaa !40
  %642 = inttoptr i32 %s.sroa.3.6.2.i to i8*
  %add.ptr.i1457.3.i = getelementptr inbounds i8, i8* %642, i32 4
  %643 = ptrtoint i8* %add.ptr.i1457.3.i to i32
  %sub13.i1458.3.i = add nsw i32 %storemerge.i1460.2.i, 24
  %.pre1821.i = load i8*, i8** %arrayidx44.i, align 4, !tbaa !39
  br label %bs_write.exit1462.3.i

if.then.i1449.3.i:                                ; preds = %bs_write.exit1462.2.i
  %shl.i1446.3.i = shl i32 %s.sroa.15.6.2.i, 8
  %or.i1447.3.i = or i32 %shl.i1446.3.i, %conv47.3.i
  %sub.i1448.3.i = add nsw i32 %storemerge.i1460.2.i, -8
  br label %bs_write.exit1462.3.i

bs_write.exit1462.3.i:                            ; preds = %if.then.i1449.3.i, %if.else.i1459.3.i
  %644 = phi i8* [ %639, %if.then.i1449.3.i ], [ %.pre1821.i, %if.else.i1459.3.i ]
  %s.sroa.15.6.3.i = phi i32 [ %or.i1447.3.i, %if.then.i1449.3.i ], [ %conv47.3.i, %if.else.i1459.3.i ]
  %s.sroa.3.6.3.i = phi i32 [ %s.sroa.3.6.2.i, %if.then.i1449.3.i ], [ %643, %if.else.i1459.3.i ]
  %storemerge.i1460.3.i = phi i32 [ %sub.i1448.3.i, %if.then.i1449.3.i ], [ %sub13.i1458.3.i, %if.else.i1459.3.i ]
  %add45.4.i = or i32 %mul.i, 4
  %arrayidx46.4.i = getelementptr inbounds i8, i8* %644, i32 %add45.4.i
  %645 = load i8, i8* %arrayidx46.4.i, align 1, !tbaa !40
  %conv47.4.i = zext i8 %645 to i32
  %cmp.i1444.4.i = icmp sgt i32 %storemerge.i1460.3.i, 8
  br i1 %cmp.i1444.4.i, label %if.then.i1449.4.i, label %if.else.i1459.4.i

if.else.i1459.4.i:                                ; preds = %bs_write.exit1462.3.i
  %sub4.i1450.4.i = sub nsw i32 8, %storemerge.i1460.3.i
  %shl7.i1452.4.i = shl i32 %s.sroa.15.6.3.i, %storemerge.i1460.3.i
  %shr.i1453.4.i = lshr i32 %conv47.4.i, %sub4.i1450.4.i
  %or8.i1454.4.i = or i32 %shr.i1453.4.i, %shl7.i1452.4.i
  %add5.i.i.i1455.4.i = tail call i32 @llvm.bswap.i32(i32 %or8.i1454.4.i) #7
  %646 = inttoptr i32 %s.sroa.3.6.3.i to i32*
  store i32 %add5.i.i.i1455.4.i, i32* %646, align 4, !tbaa !40
  %647 = inttoptr i32 %s.sroa.3.6.3.i to i8*
  %add.ptr.i1457.4.i = getelementptr inbounds i8, i8* %647, i32 4
  %648 = ptrtoint i8* %add.ptr.i1457.4.i to i32
  %sub13.i1458.4.i = add nsw i32 %storemerge.i1460.3.i, 24
  %.pre1822.i = load i8*, i8** %arrayidx44.i, align 4, !tbaa !39
  br label %bs_write.exit1462.4.i

if.then.i1449.4.i:                                ; preds = %bs_write.exit1462.3.i
  %shl.i1446.4.i = shl i32 %s.sroa.15.6.3.i, 8
  %or.i1447.4.i = or i32 %shl.i1446.4.i, %conv47.4.i
  %sub.i1448.4.i = add nsw i32 %storemerge.i1460.3.i, -8
  br label %bs_write.exit1462.4.i

bs_write.exit1462.4.i:                            ; preds = %if.then.i1449.4.i, %if.else.i1459.4.i
  %649 = phi i8* [ %644, %if.then.i1449.4.i ], [ %.pre1822.i, %if.else.i1459.4.i ]
  %s.sroa.15.6.4.i = phi i32 [ %or.i1447.4.i, %if.then.i1449.4.i ], [ %conv47.4.i, %if.else.i1459.4.i ]
  %s.sroa.3.6.4.i = phi i32 [ %s.sroa.3.6.3.i, %if.then.i1449.4.i ], [ %648, %if.else.i1459.4.i ]
  %storemerge.i1460.4.i = phi i32 [ %sub.i1448.4.i, %if.then.i1449.4.i ], [ %sub13.i1458.4.i, %if.else.i1459.4.i ]
  %add45.5.i = or i32 %mul.i, 5
  %arrayidx46.5.i = getelementptr inbounds i8, i8* %649, i32 %add45.5.i
  %650 = load i8, i8* %arrayidx46.5.i, align 1, !tbaa !40
  %conv47.5.i = zext i8 %650 to i32
  %cmp.i1444.5.i = icmp sgt i32 %storemerge.i1460.4.i, 8
  br i1 %cmp.i1444.5.i, label %if.then.i1449.5.i, label %if.else.i1459.5.i

if.else.i1459.5.i:                                ; preds = %bs_write.exit1462.4.i
  %sub4.i1450.5.i = sub nsw i32 8, %storemerge.i1460.4.i
  %shl7.i1452.5.i = shl i32 %s.sroa.15.6.4.i, %storemerge.i1460.4.i
  %shr.i1453.5.i = lshr i32 %conv47.5.i, %sub4.i1450.5.i
  %or8.i1454.5.i = or i32 %shr.i1453.5.i, %shl7.i1452.5.i
  %add5.i.i.i1455.5.i = tail call i32 @llvm.bswap.i32(i32 %or8.i1454.5.i) #7
  %651 = inttoptr i32 %s.sroa.3.6.4.i to i32*
  store i32 %add5.i.i.i1455.5.i, i32* %651, align 4, !tbaa !40
  %652 = inttoptr i32 %s.sroa.3.6.4.i to i8*
  %add.ptr.i1457.5.i = getelementptr inbounds i8, i8* %652, i32 4
  %653 = ptrtoint i8* %add.ptr.i1457.5.i to i32
  %sub13.i1458.5.i = add nsw i32 %storemerge.i1460.4.i, 24
  %.pre1823.i = load i8*, i8** %arrayidx44.i, align 4, !tbaa !39
  br label %bs_write.exit1462.5.i

if.then.i1449.5.i:                                ; preds = %bs_write.exit1462.4.i
  %shl.i1446.5.i = shl i32 %s.sroa.15.6.4.i, 8
  %or.i1447.5.i = or i32 %shl.i1446.5.i, %conv47.5.i
  %sub.i1448.5.i = add nsw i32 %storemerge.i1460.4.i, -8
  br label %bs_write.exit1462.5.i

bs_write.exit1462.5.i:                            ; preds = %if.then.i1449.5.i, %if.else.i1459.5.i
  %654 = phi i8* [ %649, %if.then.i1449.5.i ], [ %.pre1823.i, %if.else.i1459.5.i ]
  %s.sroa.15.6.5.i = phi i32 [ %or.i1447.5.i, %if.then.i1449.5.i ], [ %conv47.5.i, %if.else.i1459.5.i ]
  %s.sroa.3.6.5.i = phi i32 [ %s.sroa.3.6.4.i, %if.then.i1449.5.i ], [ %653, %if.else.i1459.5.i ]
  %storemerge.i1460.5.i = phi i32 [ %sub.i1448.5.i, %if.then.i1449.5.i ], [ %sub13.i1458.5.i, %if.else.i1459.5.i ]
  %add45.6.i = or i32 %mul.i, 6
  %arrayidx46.6.i = getelementptr inbounds i8, i8* %654, i32 %add45.6.i
  %655 = load i8, i8* %arrayidx46.6.i, align 1, !tbaa !40
  %conv47.6.i = zext i8 %655 to i32
  %cmp.i1444.6.i = icmp sgt i32 %storemerge.i1460.5.i, 8
  br i1 %cmp.i1444.6.i, label %if.then.i1449.6.i, label %if.else.i1459.6.i

if.else.i1459.6.i:                                ; preds = %bs_write.exit1462.5.i
  %sub4.i1450.6.i = sub nsw i32 8, %storemerge.i1460.5.i
  %shl7.i1452.6.i = shl i32 %s.sroa.15.6.5.i, %storemerge.i1460.5.i
  %shr.i1453.6.i = lshr i32 %conv47.6.i, %sub4.i1450.6.i
  %or8.i1454.6.i = or i32 %shr.i1453.6.i, %shl7.i1452.6.i
  %add5.i.i.i1455.6.i = tail call i32 @llvm.bswap.i32(i32 %or8.i1454.6.i) #7
  %656 = inttoptr i32 %s.sroa.3.6.5.i to i32*
  store i32 %add5.i.i.i1455.6.i, i32* %656, align 4, !tbaa !40
  %657 = inttoptr i32 %s.sroa.3.6.5.i to i8*
  %add.ptr.i1457.6.i = getelementptr inbounds i8, i8* %657, i32 4
  %658 = ptrtoint i8* %add.ptr.i1457.6.i to i32
  %sub13.i1458.6.i = add nsw i32 %storemerge.i1460.5.i, 24
  %.pre1824.i = load i8*, i8** %arrayidx44.i, align 4, !tbaa !39
  br label %bs_write.exit1462.6.i

if.then.i1449.6.i:                                ; preds = %bs_write.exit1462.5.i
  %shl.i1446.6.i = shl i32 %s.sroa.15.6.5.i, 8
  %or.i1447.6.i = or i32 %shl.i1446.6.i, %conv47.6.i
  %sub.i1448.6.i = add nsw i32 %storemerge.i1460.5.i, -8
  br label %bs_write.exit1462.6.i

bs_write.exit1462.6.i:                            ; preds = %if.then.i1449.6.i, %if.else.i1459.6.i
  %659 = phi i8* [ %654, %if.then.i1449.6.i ], [ %.pre1824.i, %if.else.i1459.6.i ]
  %s.sroa.15.6.6.i = phi i32 [ %or.i1447.6.i, %if.then.i1449.6.i ], [ %conv47.6.i, %if.else.i1459.6.i ]
  %s.sroa.3.6.6.i = phi i32 [ %s.sroa.3.6.5.i, %if.then.i1449.6.i ], [ %658, %if.else.i1459.6.i ]
  %storemerge.i1460.6.i = phi i32 [ %sub.i1448.6.i, %if.then.i1449.6.i ], [ %sub13.i1458.6.i, %if.else.i1459.6.i ]
  %add45.7.i = or i32 %mul.i, 7
  %arrayidx46.7.i = getelementptr inbounds i8, i8* %659, i32 %add45.7.i
  %660 = load i8, i8* %arrayidx46.7.i, align 1, !tbaa !40
  %conv47.7.i = zext i8 %660 to i32
  %cmp.i1444.7.i = icmp sgt i32 %storemerge.i1460.6.i, 8
  br i1 %cmp.i1444.7.i, label %if.then.i1449.7.i, label %if.else.i1459.7.i

if.else.i1459.7.i:                                ; preds = %bs_write.exit1462.6.i
  %sub4.i1450.7.i = sub nsw i32 8, %storemerge.i1460.6.i
  %shl7.i1452.7.i = shl i32 %s.sroa.15.6.6.i, %storemerge.i1460.6.i
  %shr.i1453.7.i = lshr i32 %conv47.7.i, %sub4.i1450.7.i
  %or8.i1454.7.i = or i32 %shr.i1453.7.i, %shl7.i1452.7.i
  %add5.i.i.i1455.7.i = tail call i32 @llvm.bswap.i32(i32 %or8.i1454.7.i) #7
  %661 = inttoptr i32 %s.sroa.3.6.6.i to i32*
  store i32 %add5.i.i.i1455.7.i, i32* %661, align 4, !tbaa !40
  %662 = inttoptr i32 %s.sroa.3.6.6.i to i8*
  %add.ptr.i1457.7.i = getelementptr inbounds i8, i8* %662, i32 4
  %663 = ptrtoint i8* %add.ptr.i1457.7.i to i32
  br label %bs_write.exit1462.7.i

if.then.i1449.7.i:                                ; preds = %bs_write.exit1462.6.i
  %shl.i1446.7.i = shl i32 %s.sroa.15.6.6.i, 8
  %or.i1447.7.i = or i32 %shl.i1446.7.i, %conv47.7.i
  br label %bs_write.exit1462.7.i

bs_write.exit1462.7.i:                            ; preds = %if.then.i1449.7.i, %if.else.i1459.7.i
  %.sink2659 = phi i32 [ -8, %if.then.i1449.7.i ], [ 24, %if.else.i1459.7.i ]
  %s.sroa.15.6.7.i = phi i32 [ %or.i1447.7.i, %if.then.i1449.7.i ], [ %conv47.7.i, %if.else.i1459.7.i ]
  %s.sroa.3.6.7.i = phi i32 [ %s.sroa.3.6.6.i, %if.then.i1449.7.i ], [ %663, %if.else.i1459.7.i ]
  %sub.i1448.7.i = add nsw i32 %storemerge.i1460.6.i, %.sink2659
  %inc52.i = add nuw nsw i32 %i29.01749.i, 1
  %664 = load i32, i32* %chroma_v_shift.i, align 16, !tbaa !73
  %shr.i = lshr i32 16, %664
  %cmp32.i = icmp slt i32 %inc52.i, %shr.i
  br i1 %cmp32.i, label %for.cond36.preheader.i, label %for.cond.cleanup34.i

if.else5:                                         ; preds = %entry
  %i_type.i1285 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 76
  %665 = load i32, i32* %i_type.i1285, align 16, !tbaa !45
  %p.i.i1286 = getelementptr inbounds %struct.x264_cabac_t, %struct.x264_cabac_t* %cb, i32 0, i32 5
  %666 = bitcast i8** %p.i.i1286 to i32*
  %667 = load i32, i32* %666, align 4, !tbaa !46
  %p_start.i.i1287 = getelementptr inbounds %struct.x264_cabac_t, %struct.x264_cabac_t* %cb, i32 0, i32 4
  %668 = bitcast i8** %p_start.i.i1287 to i32*
  %669 = load i32, i32* %668, align 16, !tbaa !47
  %sub.ptr.sub.i.i1288 = sub i32 %667, %669
  %i_bytes_outstanding.i.i1289 = getelementptr inbounds %struct.x264_cabac_t, %struct.x264_cabac_t* %cb, i32 0, i32 3
  %670 = load i32, i32* %i_bytes_outstanding.i.i1289, align 4, !tbaa !48
  %add.i.i1290 = add nsw i32 %sub.ptr.sub.i.i1288, %670
  %i_queue.i.i1291 = getelementptr inbounds %struct.x264_cabac_t, %struct.x264_cabac_t* %cb, i32 0, i32 2
  %671 = load i32, i32* %i_queue.i.i1291, align 8, !tbaa !49
  %i_type1.i1292 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 51, i32 2
  %672 = load i32, i32* %i_type1.i1292, align 8, !tbaa !36
  switch i32 %672, label %if.else6.i2031 [
    i32 0, label %if.then.i1293
    i32 1, label %if.then5.i1584
  ]

if.then.i1293:                                    ; preds = %if.else5
  switch i32 %665, label %if.else81.i.i1500 [
    i32 4, label %if.then.i.i1296
    i32 5, label %if.then58.i.i1374
  ]

if.then.i.i1296:                                  ; preds = %if.then.i1293
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 14, i32 0) #7
  %i_partition.i.i1294 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 77
  %673 = load i32, i32* %i_partition.i.i1294, align 4, !tbaa !50
  %cmp1.i.i1295 = icmp eq i32 %673, 16
  br i1 %cmp1.i.i1295, label %if.then2.i.i1299, label %if.else.i.i1321

if.then2.i.i1299:                                 ; preds = %if.then.i.i1296
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 15, i32 0) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 16, i32 0) #7
  %arrayidx.i.i1297 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 17, i32 0
  %674 = load i32, i32* %arrayidx.i.i1297, align 4, !tbaa !51
  %cmp4.i.i1298 = icmp sgt i32 %674, 1
  br i1 %cmp4.i.i1298, label %if.then5.i.i1300, label %do.body.i.i1319

if.then5.i.i1300:                                 ; preds = %if.then2.i.i1299
  tail call fastcc void @cabac_ref_p(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0) #7
  br label %do.body.i.i1319

do.body.i.i1319:                                  ; preds = %if.then5.i.i1300, %if.then2.i.i1299
  %call.i.i1301 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 0, i32 4) #7
  %675 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 0
  %conv7.i.i.i1302 = zext i16 %call.i.i1301 to i32
  %mul8.i.i.i.i1303 = mul nuw i32 %conv7.i.i.i1302, 65537
  %i67.i.i.i.i1304 = bitcast i8* %675 to i32*
  store i32 %mul8.i.i.i.i1303, i32* %i67.i.i.i.i1304, align 4, !tbaa !40
  %add.ptr70.i.i.i.i1305 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 4
  %i71.i.i.i.i1306 = bitcast i8* %add.ptr70.i.i.i.i1305 to i32*
  store i32 %mul8.i.i.i.i1303, i32* %i71.i.i.i.i1306, align 4, !tbaa !40
  %add.ptr77.i.i.i.i1307 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 16
  %i79.i.i.i.i1308 = bitcast i8* %add.ptr77.i.i.i.i1307 to i32*
  store i32 %mul8.i.i.i.i1303, i32* %i79.i.i.i.i1308, align 4, !tbaa !40
  %add.ptr82.i.i.i.i1309 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 20
  %i83.i.i.i.i1310 = bitcast i8* %add.ptr82.i.i.i.i1309 to i32*
  store i32 %mul8.i.i.i.i1303, i32* %i83.i.i.i.i1310, align 4, !tbaa !40
  %add.ptr89.i.i.i.i1311 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 32
  %i91.i.i.i.i1312 = bitcast i8* %add.ptr89.i.i.i.i1311 to i32*
  store i32 %mul8.i.i.i.i1303, i32* %i91.i.i.i.i1312, align 4, !tbaa !40
  %add.ptr94.i.i.i.i1313 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 36
  %i95.i.i.i.i1314 = bitcast i8* %add.ptr94.i.i.i.i1313 to i32*
  store i32 %mul8.i.i.i.i1303, i32* %i95.i.i.i.i1314, align 4, !tbaa !40
  %add.ptr97.i.i.i.i1315 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 48
  %i99.i.i.i.i1316 = bitcast i8* %add.ptr97.i.i.i.i1315 to i32*
  store i32 %mul8.i.i.i.i1303, i32* %i99.i.i.i.i1316, align 4, !tbaa !40
  %add.ptr102.i.i.i.i1317 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 52
  %i103.i.i.i.i1318 = bitcast i8* %add.ptr102.i.i.i.i1317 to i32*
  store i32 %mul8.i.i.i.i1303, i32* %i103.i.i.i.i1318, align 4, !tbaa !40
  br label %if.end7.i2107

if.else.i.i1321:                                  ; preds = %if.then.i.i1296
  %cmp9.i.i1320 = icmp eq i32 %673, 14
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 15, i32 1) #7
  br i1 %cmp9.i.i1320, label %if.then11.i.i1324, label %if.else32.i.i1349

if.then11.i.i1324:                                ; preds = %if.else.i.i1321
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 17, i32 1) #7
  %arrayidx15.i.i1322 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 17, i32 0
  %676 = load i32, i32* %arrayidx15.i.i1322, align 4, !tbaa !51
  %cmp16.i.i1323 = icmp sgt i32 %676, 1
  br i1 %cmp16.i.i1323, label %if.then18.i.i1325, label %do.body20.i.i1346

if.then18.i.i1325:                                ; preds = %if.then11.i.i1324
  tail call fastcc void @cabac_ref_p(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0) #7
  tail call fastcc void @cabac_ref_p(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 8) #7
  br label %do.body20.i.i1346

do.body20.i.i1346:                                ; preds = %if.then18.i.i1325, %if.then11.i.i1324
  %call22.i.i1326 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 0, i32 4) #7
  %677 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 0
  %conv7.i148.i.i1327 = zext i16 %call22.i.i1326 to i32
  %mul8.i.i149.i.i1328 = mul nuw i32 %conv7.i148.i.i1327, 65537
  %i67.i.i150.i.i1329 = bitcast i8* %677 to i32*
  store i32 %mul8.i.i149.i.i1328, i32* %i67.i.i150.i.i1329, align 4, !tbaa !40
  %add.ptr70.i.i151.i.i1330 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 4
  %i71.i.i152.i.i1331 = bitcast i8* %add.ptr70.i.i151.i.i1330 to i32*
  store i32 %mul8.i.i149.i.i1328, i32* %i71.i.i152.i.i1331, align 4, !tbaa !40
  %add.ptr77.i.i153.i.i1332 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 16
  %i79.i.i154.i.i1333 = bitcast i8* %add.ptr77.i.i153.i.i1332 to i32*
  store i32 %mul8.i.i149.i.i1328, i32* %i79.i.i154.i.i1333, align 4, !tbaa !40
  %add.ptr82.i.i155.i.i1334 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 20
  %i83.i.i156.i.i1335 = bitcast i8* %add.ptr82.i.i155.i.i1334 to i32*
  store i32 %mul8.i.i149.i.i1328, i32* %i83.i.i156.i.i1335, align 4, !tbaa !40
  %call28.i.i1336 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 8, i32 4) #7
  %678 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 28, i32 0
  %conv7.i157.i.i1337 = zext i16 %call28.i.i1336 to i32
  %mul8.i.i158.i.i1338 = mul nuw i32 %conv7.i157.i.i1337, 65537
  %i67.i.i159.i.i1339 = bitcast i8* %678 to i32*
  store i32 %mul8.i.i158.i.i1338, i32* %i67.i.i159.i.i1339, align 4, !tbaa !40
  %add.ptr70.i.i160.i.i1340 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 28, i32 4
  %i71.i.i161.i.i1341 = bitcast i8* %add.ptr70.i.i160.i.i1340 to i32*
  store i32 %mul8.i.i158.i.i1338, i32* %i71.i.i161.i.i1341, align 4, !tbaa !40
  %add.ptr77.i.i162.i.i1342 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 28, i32 16
  %i79.i.i163.i.i1343 = bitcast i8* %add.ptr77.i.i162.i.i1342 to i32*
  store i32 %mul8.i.i158.i.i1338, i32* %i79.i.i163.i.i1343, align 4, !tbaa !40
  %add.ptr82.i.i164.i.i1344 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 28, i32 20
  %i83.i.i165.i.i1345 = bitcast i8* %add.ptr82.i.i164.i.i1344 to i32*
  store i32 %mul8.i.i158.i.i1338, i32* %i83.i.i165.i.i1345, align 4, !tbaa !40
  br label %if.end7.i2107

if.else32.i.i1349:                                ; preds = %if.else.i.i1321
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 17, i32 0) #7
  %arrayidx36.i.i1347 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 17, i32 0
  %679 = load i32, i32* %arrayidx36.i.i1347, align 4, !tbaa !51
  %cmp37.i.i1348 = icmp sgt i32 %679, 1
  br i1 %cmp37.i.i1348, label %if.then39.i.i1350, label %do.body41.i.i1371

if.then39.i.i1350:                                ; preds = %if.else32.i.i1349
  tail call fastcc void @cabac_ref_p(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0) #7
  tail call fastcc void @cabac_ref_p(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 4) #7
  br label %do.body41.i.i1371

do.body41.i.i1371:                                ; preds = %if.then39.i.i1350, %if.else32.i.i1349
  %call43.i.i1351 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 0, i32 2) #7
  %680 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 0
  %conv7.i166.i.i1352 = zext i16 %call43.i.i1351 to i32
  %mul8.i.i167.i.i1353 = mul nuw i32 %conv7.i166.i.i1352, 65537
  %i42.i.i.i.i1354 = bitcast i8* %680 to i32*
  store i32 %mul8.i.i167.i.i1353, i32* %i42.i.i.i.i1354, align 4, !tbaa !40
  %add.ptr48.i.i.i.i1355 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 16
  %i49.i.i.i.i1356 = bitcast i8* %add.ptr48.i.i.i.i1355 to i32*
  store i32 %mul8.i.i167.i.i1353, i32* %i49.i.i.i.i1356, align 4, !tbaa !40
  %add.ptr55.i.i.i.i1357 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 32
  %i56.i.i.i.i1358 = bitcast i8* %add.ptr55.i.i.i.i1357 to i32*
  store i32 %mul8.i.i167.i.i1353, i32* %i56.i.i.i.i1358, align 4, !tbaa !40
  %add.ptr58.i.i.i.i1359 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 48
  %i59.i.i.i.i1360 = bitcast i8* %add.ptr58.i.i.i.i1359 to i32*
  store i32 %mul8.i.i167.i.i1353, i32* %i59.i.i.i.i1360, align 4, !tbaa !40
  %call49.i.i1361 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 4, i32 2) #7
  %681 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 14, i32 0
  %conv7.i168.i.i1362 = zext i16 %call49.i.i1361 to i32
  %mul8.i.i169.i.i1363 = mul nuw i32 %conv7.i168.i.i1362, 65537
  %i42.i.i170.i.i1364 = bitcast i8* %681 to i32*
  store i32 %mul8.i.i169.i.i1363, i32* %i42.i.i170.i.i1364, align 4, !tbaa !40
  %add.ptr48.i.i171.i.i1365 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 14, i32 16
  %i49.i.i172.i.i1366 = bitcast i8* %add.ptr48.i.i171.i.i1365 to i32*
  store i32 %mul8.i.i169.i.i1363, i32* %i49.i.i172.i.i1366, align 4, !tbaa !40
  %add.ptr55.i.i173.i.i1367 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 14, i32 32
  %i56.i.i174.i.i1368 = bitcast i8* %add.ptr55.i.i173.i.i1367 to i32*
  store i32 %mul8.i.i169.i.i1363, i32* %i56.i.i174.i.i1368, align 4, !tbaa !40
  %add.ptr58.i.i175.i.i1369 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 14, i32 48
  %i59.i.i176.i.i1370 = bitcast i8* %add.ptr58.i.i175.i.i1369 to i32*
  store i32 %mul8.i.i169.i.i1363, i32* %i59.i.i176.i.i1370, align 4, !tbaa !40
  br label %if.end7.i2107

if.then58.i.i1374:                                ; preds = %if.then.i1293
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 14, i32 0) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 15, i32 0) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 16, i32 1) #7
  %arrayidx62.i.i1372 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 78, i32 0
  %682 = load i8, i8* %arrayidx62.i.i1372, align 1, !tbaa !40
  %cmp.i.i.i1373 = icmp eq i8 %682, 3
  br i1 %cmp.i.i.i1373, label %if.then.i.i.i1375, label %if.end.i.i.i1377

if.then.i.i.i1375:                                ; preds = %if.then58.i.i1374
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 21, i32 1) #7
  br label %cabac_subpartition_p.exit.i.i1384

if.end.i.i.i1377:                                 ; preds = %if.then58.i.i1374
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 21, i32 0) #7
  %cmp1.i.i.i1376 = icmp eq i8 %682, 1
  br i1 %cmp1.i.i.i1376, label %if.then2.i.i.i1378, label %if.else.i.i.i1381

if.then2.i.i.i1378:                               ; preds = %if.end.i.i.i1377
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 22, i32 0) #7
  br label %cabac_subpartition_p.exit.i.i1384

if.else.i.i.i1381:                                ; preds = %if.end.i.i.i1377
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 22, i32 1) #7
  %cmp3.i.i.i1379 = icmp eq i8 %682, 2
  %conv.i177.i.i1380 = zext i1 %cmp3.i.i.i1379 to i32
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 23, i32 %conv.i177.i.i1380) #7
  br label %cabac_subpartition_p.exit.i.i1384

cabac_subpartition_p.exit.i.i1384:                ; preds = %if.else.i.i.i1381, %if.then2.i.i.i1378, %if.then.i.i.i1375
  %arrayidx62.1.i.i1382 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 78, i32 1
  %683 = load i8, i8* %arrayidx62.1.i.i1382, align 1, !tbaa !40
  %cmp.i.1.i.i1383 = icmp eq i8 %683, 3
  br i1 %cmp.i.1.i.i1383, label %if.then.i.1.i.i1557, label %if.end.i.1.i.i1552

if.then70.i.i1385:                                ; preds = %cabac_subpartition_p.exit.3.i.i1580
  tail call fastcc void @cabac_ref_p(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0) #7
  tail call fastcc void @cabac_ref_p(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 4) #7
  tail call fastcc void @cabac_ref_p(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 8) #7
  tail call fastcc void @cabac_ref_p(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 12) #7
  br label %for.body77.i.i1389.preheader

for.body77.i.i1389.preheader:                     ; preds = %cabac_subpartition_p.exit.3.i.i1580, %if.then70.i.i1385
  br label %for.body77.i.i1389

for.body77.i.i1389:                               ; preds = %for.body77.i.i1389.preheader, %cabac_8x8_mvd.exit.i.i1499
  %i72.0179.i.i1387 = phi i32 [ %inc79.i.i1497, %cabac_8x8_mvd.exit.i.i1499 ], [ 0, %for.body77.i.i1389.preheader ]
  %arrayidx.i.i.i1388 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 78, i32 %i72.0179.i.i1387
  %684 = load i8, i8* %arrayidx.i.i.i1388, align 1, !tbaa !40
  switch i8 %684, label %sw.default.i.i.i1496 [
    i8 3, label %do.body.i.i.i1404
    i8 1, label %do.body8.i.i.i1429
    i8 2, label %do.body36.i.i.i1454
    i8 0, label %do.body65.i.i.i1495
  ]

do.body.i.i.i1404:                                ; preds = %for.body77.i.i1389
  %mul.i.i.i1390 = shl nuw nsw i32 %i72.0179.i.i1387, 2
  %call.i.i.i1391 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* %cb, i32 0, i32 %mul.i.i.i1390, i32 2) #7
  %arrayidx2.i.i.i1392 = getelementptr inbounds [16 x i8], [16 x i8]* @block_idx_x, i32 0, i32 %mul.i.i.i1390
  %685 = load i8, i8* %arrayidx2.i.i.i1392, align 1, !tbaa !40
  %conv3.i.i.i1393 = zext i8 %685 to i32
  %arrayidx5.i.i.i1394 = getelementptr inbounds [16 x i8], [16 x i8]* @block_idx_y, i32 0, i32 %mul.i.i.i1390
  %686 = load i8, i8* %arrayidx5.i.i.i1394, align 1, !tbaa !40
  %conv6.i.i.i1395 = zext i8 %686 to i32
  %add.i.i178.i.i1396 = add nuw nsw i32 %conv3.i.i.i1393, 12
  %mul.i.i.i.i1397 = shl nuw nsw i32 %conv6.i.i.i1395, 3
  %add2.i.i.i.i1398 = add nuw nsw i32 %add.i.i178.i.i1396, %mul.i.i.i.i1397
  %687 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 %add2.i.i.i.i1398, i32 0
  %conv7.i.i.i.i1399 = zext i16 %call.i.i.i1391 to i32
  %mul8.i.i.i.i.i1400 = mul nuw i32 %conv7.i.i.i.i1399, 65537
  %i42.i.i.i.i.i1401 = bitcast i8* %687 to i32*
  store i32 %mul8.i.i.i.i.i1400, i32* %i42.i.i.i.i.i1401, align 4, !tbaa !40
  %add.ptr48.i.i.i.i.i1402 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 %add2.i.i.i.i1398, i32 16
  %i49.i.i.i.i.i1403 = bitcast i8* %add.ptr48.i.i.i.i.i1402 to i32*
  store i32 %mul8.i.i.i.i.i1400, i32* %i49.i.i.i.i.i1403, align 4, !tbaa !40
  br label %cabac_8x8_mvd.exit.i.i1499

do.body8.i.i.i1429:                               ; preds = %for.body77.i.i1389
  %mul10.i.i.i1405 = shl nuw nsw i32 %i72.0179.i.i1387, 2
  %call11.i.i.i1406 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* %cb, i32 0, i32 %mul10.i.i.i1405, i32 2) #7
  %arrayidx14.i.i.i1407 = getelementptr inbounds [16 x i8], [16 x i8]* @block_idx_x, i32 0, i32 %mul10.i.i.i1405
  %688 = load i8, i8* %arrayidx14.i.i.i1407, align 1, !tbaa !40
  %conv15.i.i.i1408 = zext i8 %688 to i32
  %arrayidx18.i.i.i1409 = getelementptr inbounds [16 x i8], [16 x i8]* @block_idx_y, i32 0, i32 %mul10.i.i.i1405
  %689 = load i8, i8* %arrayidx18.i.i.i1409, align 1, !tbaa !40
  %conv19.i.i.i1410 = zext i8 %689 to i32
  %add.i188.i.i.i1411 = add nuw nsw i32 %conv15.i.i.i1408, 12
  %mul.i189.i.i.i1412 = shl nuw nsw i32 %conv19.i.i.i1410, 3
  %add2.i190.i.i.i1413 = add nuw nsw i32 %add.i188.i.i.i1411, %mul.i189.i.i.i1412
  %690 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 %add2.i190.i.i.i1413, i32 0
  %conv7.i191.i.i.i1414 = zext i16 %call11.i.i.i1406 to i32
  %mul8.i.i192.i.i.i1415 = mul nuw i32 %conv7.i191.i.i.i1414, 65537
  %i42.i.i193.i.i.i1416 = bitcast i8* %690 to i32*
  store i32 %mul8.i.i192.i.i.i1415, i32* %i42.i.i193.i.i.i1416, align 4, !tbaa !40
  %add24.i.i.i1417 = or i32 %mul10.i.i.i1405, 2
  %call25.i.i.i1418 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* %cb, i32 0, i32 %add24.i.i.i1417, i32 2) #7
  %arrayidx28.i.i.i1419 = getelementptr inbounds [16 x i8], [16 x i8]* @block_idx_x, i32 0, i32 %add24.i.i.i1417
  %691 = load i8, i8* %arrayidx28.i.i.i1419, align 1, !tbaa !40
  %conv29.i.i.i1420 = zext i8 %691 to i32
  %arrayidx32.i.i.i1421 = getelementptr inbounds [16 x i8], [16 x i8]* @block_idx_y, i32 0, i32 %add24.i.i.i1417
  %692 = load i8, i8* %arrayidx32.i.i.i1421, align 1, !tbaa !40
  %conv33.i.i.i1422 = zext i8 %692 to i32
  %add.i200.i.i.i1423 = add nuw nsw i32 %conv29.i.i.i1420, 12
  %mul.i201.i.i.i1424 = shl nuw nsw i32 %conv33.i.i.i1422, 3
  %add2.i202.i.i.i1425 = add nuw nsw i32 %add.i200.i.i.i1423, %mul.i201.i.i.i1424
  %693 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 %add2.i202.i.i.i1425, i32 0
  %conv7.i203.i.i.i1426 = zext i16 %call25.i.i.i1418 to i32
  %mul8.i.i204.i.i.i1427 = mul nuw i32 %conv7.i203.i.i.i1426, 65537
  %i42.i.i205.i.i.i1428 = bitcast i8* %693 to i32*
  store i32 %mul8.i.i204.i.i.i1427, i32* %i42.i.i205.i.i.i1428, align 4, !tbaa !40
  br label %cabac_8x8_mvd.exit.i.i1499

do.body36.i.i.i1454:                              ; preds = %for.body77.i.i1389
  %mul38.i.i.i1430 = shl nuw nsw i32 %i72.0179.i.i1387, 2
  %call40.i.i.i1431 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* %cb, i32 0, i32 %mul38.i.i.i1430, i32 1) #7
  %arrayidx43.i.i.i1432 = getelementptr inbounds [16 x i8], [16 x i8]* @block_idx_x, i32 0, i32 %mul38.i.i.i1430
  %694 = load i8, i8* %arrayidx43.i.i.i1432, align 1, !tbaa !40
  %conv44.i.i.i1433 = zext i8 %694 to i32
  %arrayidx47.i.i.i1434 = getelementptr inbounds [16 x i8], [16 x i8]* @block_idx_y, i32 0, i32 %mul38.i.i.i1430
  %695 = load i8, i8* %arrayidx47.i.i.i1434, align 1, !tbaa !40
  %conv48.i.i.i1435 = zext i8 %695 to i32
  %add.i212.i.i.i1436 = add nuw nsw i32 %conv44.i.i.i1433, 12
  %mul.i213.i.i.i1437 = shl nuw nsw i32 %conv48.i.i.i1435, 3
  %add2.i214.i.i.i1438 = add nuw nsw i32 %add.i212.i.i.i1436, %mul.i213.i.i.i1437
  %696 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 %add2.i214.i.i.i1438, i32 0
  %i.i.i217.i.i.i1439 = bitcast i8* %696 to i16*
  store i16 %call40.i.i.i1431, i16* %i.i.i217.i.i.i1439, align 2, !tbaa !40
  %add.ptr25.i.i.i.i.i1440 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 %add2.i214.i.i.i1438, i32 16
  %i26.i.i.i.i.i1441 = bitcast i8* %add.ptr25.i.i.i.i.i1440 to i16*
  store i16 %call40.i.i.i1431, i16* %i26.i.i.i.i.i1441, align 2, !tbaa !40
  %add53.i.i.i1442 = or i32 %mul38.i.i.i1430, 1
  %call54.i.i.i1443 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* %cb, i32 0, i32 %add53.i.i.i1442, i32 1) #7
  %arrayidx57.i.i.i1444 = getelementptr inbounds [16 x i8], [16 x i8]* @block_idx_x, i32 0, i32 %add53.i.i.i1442
  %697 = load i8, i8* %arrayidx57.i.i.i1444, align 1, !tbaa !40
  %conv58.i.i.i1445 = zext i8 %697 to i32
  %arrayidx61.i.i.i1446 = getelementptr inbounds [16 x i8], [16 x i8]* @block_idx_y, i32 0, i32 %add53.i.i.i1442
  %698 = load i8, i8* %arrayidx61.i.i.i1446, align 1, !tbaa !40
  %conv62.i.i.i1447 = zext i8 %698 to i32
  %add.i224.i.i.i1448 = add nuw nsw i32 %conv58.i.i.i1445, 12
  %mul.i225.i.i.i1449 = shl nuw nsw i32 %conv62.i.i.i1447, 3
  %add2.i226.i.i.i1450 = add nuw nsw i32 %add.i224.i.i.i1448, %mul.i225.i.i.i1449
  %699 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 %add2.i226.i.i.i1450, i32 0
  %i.i.i229.i.i.i1451 = bitcast i8* %699 to i16*
  store i16 %call54.i.i.i1443, i16* %i.i.i229.i.i.i1451, align 2, !tbaa !40
  %add.ptr25.i.i230.i.i.i1452 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 %add2.i226.i.i.i1450, i32 16
  %i26.i.i231.i.i.i1453 = bitcast i8* %add.ptr25.i.i230.i.i.i1452 to i16*
  store i16 %call54.i.i.i1443, i16* %i26.i.i231.i.i.i1453, align 2, !tbaa !40
  br label %cabac_8x8_mvd.exit.i.i1499

do.body65.i.i.i1495:                              ; preds = %for.body77.i.i1389
  %mul67.i.i.i1455 = shl nuw nsw i32 %i72.0179.i.i1387, 2
  %call69.i.i.i1456 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* %cb, i32 0, i32 %mul67.i.i.i1455, i32 1) #7
  %arrayidx72.i.i.i1457 = getelementptr inbounds [16 x i8], [16 x i8]* @block_idx_x, i32 0, i32 %mul67.i.i.i1455
  %700 = load i8, i8* %arrayidx72.i.i.i1457, align 1, !tbaa !40
  %conv73.i.i.i1458 = zext i8 %700 to i32
  %arrayidx76.i.i.i1459 = getelementptr inbounds [16 x i8], [16 x i8]* @block_idx_y, i32 0, i32 %mul67.i.i.i1455
  %701 = load i8, i8* %arrayidx76.i.i.i1459, align 1, !tbaa !40
  %conv77.i.i.i1460 = zext i8 %701 to i32
  %add.i218.i.i.i1461 = add nuw nsw i32 %conv73.i.i.i1458, 12
  %mul.i219.i.i.i1462 = shl nuw nsw i32 %conv77.i.i.i1460, 3
  %add2.i220.i.i.i1463 = add nuw nsw i32 %add.i218.i.i.i1461, %mul.i219.i.i.i1462
  %702 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 %add2.i220.i.i.i1463, i32 0
  %i.i.i223.i.i.i1464 = bitcast i8* %702 to i16*
  store i16 %call69.i.i.i1456, i16* %i.i.i223.i.i.i1464, align 2, !tbaa !40
  %add82.i.i.i1465 = or i32 %mul67.i.i.i1455, 1
  %call83.i.i.i1466 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* %cb, i32 0, i32 %add82.i.i.i1465, i32 1) #7
  %arrayidx86.i.i.i1467 = getelementptr inbounds [16 x i8], [16 x i8]* @block_idx_x, i32 0, i32 %add82.i.i.i1465
  %703 = load i8, i8* %arrayidx86.i.i.i1467, align 1, !tbaa !40
  %conv87.i.i.i1468 = zext i8 %703 to i32
  %arrayidx90.i.i.i1469 = getelementptr inbounds [16 x i8], [16 x i8]* @block_idx_y, i32 0, i32 %add82.i.i.i1465
  %704 = load i8, i8* %arrayidx90.i.i.i1469, align 1, !tbaa !40
  %conv91.i.i.i1470 = zext i8 %704 to i32
  %add.i206.i.i.i1471 = add nuw nsw i32 %conv87.i.i.i1468, 12
  %mul.i207.i.i.i1472 = shl nuw nsw i32 %conv91.i.i.i1470, 3
  %add2.i208.i.i.i1473 = add nuw nsw i32 %add.i206.i.i.i1471, %mul.i207.i.i.i1472
  %705 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 %add2.i208.i.i.i1473, i32 0
  %i.i.i211.i.i.i1474 = bitcast i8* %705 to i16*
  store i16 %call83.i.i.i1466, i16* %i.i.i211.i.i.i1474, align 2, !tbaa !40
  %add96.i.i.i1475 = or i32 %mul67.i.i.i1455, 2
  %call97.i.i.i1476 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* %cb, i32 0, i32 %add96.i.i.i1475, i32 1) #7
  %arrayidx100.i.i.i1477 = getelementptr inbounds [16 x i8], [16 x i8]* @block_idx_x, i32 0, i32 %add96.i.i.i1475
  %706 = load i8, i8* %arrayidx100.i.i.i1477, align 1, !tbaa !40
  %conv101.i.i.i1478 = zext i8 %706 to i32
  %arrayidx104.i.i.i1479 = getelementptr inbounds [16 x i8], [16 x i8]* @block_idx_y, i32 0, i32 %add96.i.i.i1475
  %707 = load i8, i8* %arrayidx104.i.i.i1479, align 1, !tbaa !40
  %conv105.i.i.i1480 = zext i8 %707 to i32
  %add.i194.i.i.i1481 = add nuw nsw i32 %conv101.i.i.i1478, 12
  %mul.i195.i.i.i1482 = shl nuw nsw i32 %conv105.i.i.i1480, 3
  %add2.i196.i.i.i1483 = add nuw nsw i32 %add.i194.i.i.i1481, %mul.i195.i.i.i1482
  %708 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 %add2.i196.i.i.i1483, i32 0
  %i.i.i199.i.i.i1484 = bitcast i8* %708 to i16*
  store i16 %call97.i.i.i1476, i16* %i.i.i199.i.i.i1484, align 2, !tbaa !40
  %add110.i.i.i1485 = or i32 %mul67.i.i.i1455, 3
  %call111.i.i.i1486 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* %cb, i32 0, i32 %add110.i.i.i1485, i32 1) #7
  %arrayidx114.i.i.i1487 = getelementptr inbounds [16 x i8], [16 x i8]* @block_idx_x, i32 0, i32 %add110.i.i.i1485
  %709 = load i8, i8* %arrayidx114.i.i.i1487, align 1, !tbaa !40
  %conv115.i.i.i1488 = zext i8 %709 to i32
  %arrayidx118.i.i.i1489 = getelementptr inbounds [16 x i8], [16 x i8]* @block_idx_y, i32 0, i32 %add110.i.i.i1485
  %710 = load i8, i8* %arrayidx118.i.i.i1489, align 1, !tbaa !40
  %conv119.i.i.i1490 = zext i8 %710 to i32
  %add.i183.i.i.i1491 = add nuw nsw i32 %conv115.i.i.i1488, 12
  %mul.i184.i.i.i1492 = shl nuw nsw i32 %conv119.i.i.i1490, 3
  %add2.i185.i.i.i1493 = add nuw nsw i32 %add.i183.i.i.i1491, %mul.i184.i.i.i1492
  %711 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 %add2.i185.i.i.i1493, i32 0
  %i.i.i.i.i.i1494 = bitcast i8* %711 to i16*
  store i16 %call111.i.i.i1486, i16* %i.i.i.i.i.i1494, align 2, !tbaa !40
  br label %cabac_8x8_mvd.exit.i.i1499

sw.default.i.i.i1496:                             ; preds = %for.body77.i.i1389
  tail call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i32 377, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.cabac_8x8_mvd, i32 0, i32 0)) #8
  unreachable

cabac_8x8_mvd.exit.i.i1499:                       ; preds = %do.body65.i.i.i1495, %do.body36.i.i.i1454, %do.body8.i.i.i1429, %do.body.i.i.i1404
  %inc79.i.i1497 = add nuw nsw i32 %i72.0179.i.i1387, 1
  %exitcond.i.i1498 = icmp eq i32 %inc79.i.i1497, 4
  br i1 %exitcond.i.i1498, label %if.end7.i2107, label %for.body77.i.i1389

if.else81.i.i1500:                                ; preds = %if.then.i1293
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 14, i32 1) #7
  tail call fastcc void @cabac_mb_type_intra(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 %665, i32 17, i32 18, i32 19, i32 19, i32 20, i32 20) #7
  %712 = and i32 %665, -2
  %switch2579 = icmp eq i32 %712, 2
  br i1 %switch2579, label %if.end7.i2107, label %if.then26.i.i.i1503

if.then26.i.i.i1503:                              ; preds = %if.else81.i.i1500
  %b_transform_8x8_mode.i.i.i1501 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 53, i32 0, i32 15
  %713 = load i32, i32* %b_transform_8x8_mode.i.i.i1501, align 4, !tbaa !52
  %tobool27.i.i.i1502 = icmp eq i32 %713, 0
  br i1 %tobool27.i.i.i1502, label %if.end29.i.i.i1513, label %if.then28.i.i.i1509

if.then28.i.i.i1509:                              ; preds = %if.then26.i.i.i1503
  %h.idx.i.i.i1504 = getelementptr %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 79
  %h.idx.val.i.i.i1505 = load i32, i32* %h.idx.i.i.i1504, align 4, !tbaa !54
  %h.idx84.i.i.i1506 = getelementptr %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 10
  %h.idx84.val.i.i.i1507 = load i32, i32* %h.idx84.i.i.i1506, align 8, !tbaa !55
  %add.i.i.i.i1508 = add nsw i32 %h.idx84.val.i.i.i1507, 399
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 %add.i.i.i.i1508, i32 %h.idx.val.i.i.i1505) #7
  br label %if.end29.i.i.i1513

if.end29.i.i.i1513:                               ; preds = %if.then28.i.i.i1509, %if.then26.i.i.i1503
  %b_transform_8x8.i.i.i1510 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 79
  %714 = load i32, i32* %b_transform_8x8.i.i.i1510, align 4, !tbaa !54
  %tobool31.i.i.i1511 = icmp eq i32 %714, 0
  %cond.i.i.i1512 = select i1 %tobool31.i.i.i1511, i32 1, i32 4
  br label %for.body.i.i.i1536

for.body.i.i.i1536:                               ; preds = %cabac_intra4x4_pred_mode.exit.i.i.i1549, %if.end29.i.i.i1513
  %i.091.i.i.i1514 = phi i32 [ 0, %if.end29.i.i.i1513 ], [ %add39.i.i.i1547, %cabac_intra4x4_pred_mode.exit.i.i.i1549 ]
  %arrayidx.i.i.i.i1515 = getelementptr inbounds [51 x i8], [51 x i8]* @x264_scan8, i32 0, i32 %i.091.i.i.i1514
  %715 = load i8, i8* %arrayidx.i.i.i.i1515, align 1, !tbaa !40
  %conv.i.i.i.i1516 = zext i8 %715 to i32
  %sub.i.i.i.i1517 = add nsw i32 %conv.i.i.i.i1516, -1
  %arrayidx1.i.i.i.i1518 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 0, i32 %sub.i.i.i.i1517
  %716 = load i8, i8* %arrayidx1.i.i.i.i1518, align 1, !tbaa !40
  %conv2.i.i.i.i1519 = sext i8 %716 to i32
  %sub9.i.i.i.i1520 = add nsw i32 %conv.i.i.i.i1516, -8
  %arrayidx10.i.i.i.i1521 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 0, i32 %sub9.i.i.i.i1520
  %717 = load i8, i8* %arrayidx10.i.i.i.i1521, align 1, !tbaa !40
  %conv11.i.i.i.i1522 = sext i8 %717 to i32
  %add.i85.i.i.i1523 = add nsw i32 %conv2.i.i.i.i1519, 1
  %arrayidx12.i.i.i.i1524 = getelementptr inbounds [13 x i8], [13 x i8]* @x264_mb_pred_mode4x4_fix, i32 0, i32 %add.i85.i.i.i1523
  %718 = load i8, i8* %arrayidx12.i.i.i.i1524, align 1, !tbaa !40
  %add14.i.i.i.i1525 = add nsw i32 %conv11.i.i.i.i1522, 1
  %arrayidx15.i.i.i.i1526 = getelementptr inbounds [13 x i8], [13 x i8]* @x264_mb_pred_mode4x4_fix, i32 0, i32 %add14.i.i.i.i1525
  %719 = load i8, i8* %arrayidx15.i.i.i.i1526, align 1, !tbaa !40
  %cmp.i.i.i.i1527 = icmp slt i8 %718, %719
  %..i.i.i.i1528 = select i1 %cmp.i.i.i.i1527, i8 %718, i8 %719
  %cmp24.i.i.i.i1529 = icmp slt i8 %..i.i.i.i1528, 0
  %narrow.i.i.i.i1530 = select i1 %cmp24.i.i.i.i1529, i8 2, i8 %..i.i.i.i1528
  %arrayidx35.i.i.i1531 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 0, i32 %conv.i.i.i.i1516
  %720 = load i8, i8* %arrayidx35.i.i.i1531, align 1, !tbaa !40
  %conv.i.i.i1532 = sext i8 %720 to i32
  %add36.i.i.i1533 = add nsw i32 %conv.i.i.i1532, 1
  %arrayidx37.i.i.i1534 = getelementptr inbounds [13 x i8], [13 x i8]* @x264_mb_pred_mode4x4_fix, i32 0, i32 %add36.i.i.i1533
  %721 = load i8, i8* %arrayidx37.i.i.i1534, align 1, !tbaa !40
  %cmp.i88.i.i.i1535 = icmp eq i8 %narrow.i.i.i.i1530, %721
  br i1 %cmp.i88.i.i.i1535, label %if.then.i.i.i.i1537, label %if.else.i.i.i.i1546

if.then.i.i.i.i1537:                              ; preds = %for.body.i.i.i1536
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 68, i32 1) #7
  br label %cabac_intra4x4_pred_mode.exit.i.i.i1549

if.else.i.i.i.i1546:                              ; preds = %for.body.i.i.i1536
  %conv38.i.i.i1538 = sext i8 %721 to i32
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 68, i32 0) #7
  %cmp1.i.i.i.i1539 = icmp sgt i8 %721, %narrow.i.i.i.i1530
  %dec.i.i.i.i1540 = sext i1 %cmp1.i.i.i.i1539 to i32
  %spec.select.i89.i.i.i1541 = add nsw i32 %dec.i.i.i.i1540, %conv38.i.i.i1538
  %and.i90.i.i.i1542 = and i32 %spec.select.i89.i.i.i1541, 1
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 69, i32 %and.i90.i.i.i1542) #7
  %shr15.i.i.i.i1543 = lshr i32 %spec.select.i89.i.i.i1541, 1
  %and3.i.i.i.i1544 = and i32 %shr15.i.i.i.i1543, 1
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 69, i32 %and3.i.i.i.i1544) #7
  %shr4.i.i.i.i1545 = ashr i32 %spec.select.i89.i.i.i1541, 2
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 69, i32 %shr4.i.i.i.i1545) #7
  br label %cabac_intra4x4_pred_mode.exit.i.i.i1549

cabac_intra4x4_pred_mode.exit.i.i.i1549:          ; preds = %if.else.i.i.i.i1546, %if.then.i.i.i.i1537
  %add39.i.i.i1547 = add nuw nsw i32 %i.091.i.i.i1514, %cond.i.i.i1512
  %cmp32.i.i.i1548 = icmp ult i32 %add39.i.i.i1547, 16
  br i1 %cmp32.i.i.i1548, label %for.body.i.i.i1536, label %if.end7.i2107

if.end.i.1.i.i1552:                               ; preds = %cabac_subpartition_p.exit.i.i1384
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 21, i32 0) #7
  %cmp1.i.1.i.i1551 = icmp eq i8 %683, 1
  br i1 %cmp1.i.1.i.i1551, label %if.then2.i.1.i.i1556, label %if.else.i.1.i.i1555

if.else.i.1.i.i1555:                              ; preds = %if.end.i.1.i.i1552
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 22, i32 1) #7
  %cmp3.i.1.i.i1553 = icmp eq i8 %683, 2
  %conv.i177.1.i.i1554 = zext i1 %cmp3.i.1.i.i1553 to i32
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 23, i32 %conv.i177.1.i.i1554) #7
  br label %cabac_subpartition_p.exit.1.i.i1560

if.then2.i.1.i.i1556:                             ; preds = %if.end.i.1.i.i1552
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 22, i32 0) #7
  br label %cabac_subpartition_p.exit.1.i.i1560

if.then.i.1.i.i1557:                              ; preds = %cabac_subpartition_p.exit.i.i1384
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 21, i32 1) #7
  br label %cabac_subpartition_p.exit.1.i.i1560

cabac_subpartition_p.exit.1.i.i1560:              ; preds = %if.then.i.1.i.i1557, %if.then2.i.1.i.i1556, %if.else.i.1.i.i1555
  %arrayidx62.2.i.i1558 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 78, i32 2
  %722 = load i8, i8* %arrayidx62.2.i.i1558, align 1, !tbaa !40
  %cmp.i.2.i.i1559 = icmp eq i8 %722, 3
  br i1 %cmp.i.2.i.i1559, label %if.then.i.2.i.i1567, label %if.end.i.2.i.i1562

if.end.i.2.i.i1562:                               ; preds = %cabac_subpartition_p.exit.1.i.i1560
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 21, i32 0) #7
  %cmp1.i.2.i.i1561 = icmp eq i8 %722, 1
  br i1 %cmp1.i.2.i.i1561, label %if.then2.i.2.i.i1566, label %if.else.i.2.i.i1565

if.else.i.2.i.i1565:                              ; preds = %if.end.i.2.i.i1562
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 22, i32 1) #7
  %cmp3.i.2.i.i1563 = icmp eq i8 %722, 2
  %conv.i177.2.i.i1564 = zext i1 %cmp3.i.2.i.i1563 to i32
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 23, i32 %conv.i177.2.i.i1564) #7
  br label %cabac_subpartition_p.exit.2.i.i1570

if.then2.i.2.i.i1566:                             ; preds = %if.end.i.2.i.i1562
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 22, i32 0) #7
  br label %cabac_subpartition_p.exit.2.i.i1570

if.then.i.2.i.i1567:                              ; preds = %cabac_subpartition_p.exit.1.i.i1560
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 21, i32 1) #7
  br label %cabac_subpartition_p.exit.2.i.i1570

cabac_subpartition_p.exit.2.i.i1570:              ; preds = %if.then.i.2.i.i1567, %if.then2.i.2.i.i1566, %if.else.i.2.i.i1565
  %arrayidx62.3.i.i1568 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 78, i32 3
  %723 = load i8, i8* %arrayidx62.3.i.i1568, align 1, !tbaa !40
  %cmp.i.3.i.i1569 = icmp eq i8 %723, 3
  br i1 %cmp.i.3.i.i1569, label %if.then.i.3.i.i1577, label %if.end.i.3.i.i1572

if.end.i.3.i.i1572:                               ; preds = %cabac_subpartition_p.exit.2.i.i1570
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 21, i32 0) #7
  %cmp1.i.3.i.i1571 = icmp eq i8 %723, 1
  br i1 %cmp1.i.3.i.i1571, label %if.then2.i.3.i.i1576, label %if.else.i.3.i.i1575

if.else.i.3.i.i1575:                              ; preds = %if.end.i.3.i.i1572
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 22, i32 1) #7
  %cmp3.i.3.i.i1573 = icmp eq i8 %723, 2
  %conv.i177.3.i.i1574 = zext i1 %cmp3.i.3.i.i1573 to i32
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 23, i32 %conv.i177.3.i.i1574) #7
  br label %cabac_subpartition_p.exit.3.i.i1580

if.then2.i.3.i.i1576:                             ; preds = %if.end.i.3.i.i1572
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 22, i32 0) #7
  br label %cabac_subpartition_p.exit.3.i.i1580

if.then.i.3.i.i1577:                              ; preds = %cabac_subpartition_p.exit.2.i.i1570
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 21, i32 1) #7
  br label %cabac_subpartition_p.exit.3.i.i1580

cabac_subpartition_p.exit.3.i.i1580:              ; preds = %if.then.i.3.i.i1577, %if.then2.i.3.i.i1576, %if.else.i.3.i.i1575
  %arrayidx67.i.i1578 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 17, i32 0
  %724 = load i32, i32* %arrayidx67.i.i1578, align 4, !tbaa !51
  %cmp68.i.i1579 = icmp sgt i32 %724, 1
  br i1 %cmp68.i.i1579, label %if.then70.i.i1385, label %for.body77.i.i1389.preheader

if.then5.i1584:                                   ; preds = %if.else5
  %i_neighbour.i.i1581 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 37
  %725 = load i32, i32* %i_neighbour.i.i1581, align 32, !tbaa !56
  %and.i.i1582 = and i32 %725, 1
  %tobool.i.i1583 = icmp eq i32 %and.i.i1582, 0
  br i1 %tobool.i.i1583, label %if.end.i.i1591, label %land.lhs.true.i.i1586

land.lhs.true.i.i1586:                            ; preds = %if.then5.i1584
  %arrayidx.i1265.i1585 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 43, i32 0
  %726 = load i32, i32* %arrayidx.i1265.i1585, align 64, !tbaa !51
  switch i32 %726, label %if.then.i1266.i1587 [
    i32 18, label %if.end.i.i1591
    i32 7, label %if.end.i.i1591
  ]

if.then.i1266.i1587:                              ; preds = %land.lhs.true.i.i1586
  br label %if.end.i.i1591

if.end.i.i1591:                                   ; preds = %if.then.i1266.i1587, %land.lhs.true.i.i1586, %land.lhs.true.i.i1586, %if.then5.i1584
  %ctx.0.i.i1588 = phi i32 [ 1, %if.then.i1266.i1587 ], [ 0, %land.lhs.true.i.i1586 ], [ 0, %if.then5.i1584 ], [ 0, %land.lhs.true.i.i1586 ]
  %and9.i.i1589 = and i32 %725, 2
  %tobool10.i.i1590 = icmp eq i32 %and9.i.i1589, 0
  br i1 %tobool10.i.i1590, label %if.end20.i.i1599, label %land.lhs.true11.i.i1593

land.lhs.true11.i.i1593:                          ; preds = %if.end.i.i1591
  %i_mb_type_top.i.i1592 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 42
  %727 = load i32, i32* %i_mb_type_top.i.i1592, align 4, !tbaa !57
  switch i32 %727, label %if.then18.i1267.i1595 [
    i32 18, label %if.end20.i.i1599
    i32 7, label %if.end20.i.i1599
  ]

if.then18.i1267.i1595:                            ; preds = %land.lhs.true11.i.i1593
  %inc19.i.i1594 = add nuw nsw i32 %ctx.0.i.i1588, 1
  br label %if.end20.i.i1599

if.end20.i.i1599:                                 ; preds = %if.then18.i1267.i1595, %land.lhs.true11.i.i1593, %land.lhs.true11.i.i1593, %if.end.i.i1591
  %ctx.1.i.i1596 = phi i32 [ %inc19.i.i1594, %if.then18.i1267.i1595 ], [ %ctx.0.i.i1588, %land.lhs.true11.i.i1593 ], [ %ctx.0.i.i1588, %if.end.i.i1591 ], [ %ctx.0.i.i1588, %land.lhs.true11.i.i1593 ]
  %cmp21.i.i1597 = icmp eq i32 %665, 7
  %add.i1268.i1598 = add nuw nsw i32 %ctx.1.i.i1596, 27
  br i1 %cmp21.i.i1597, label %if.then22.i.i1600, label %if.end23.i.i1602

if.then22.i.i1600:                                ; preds = %if.end20.i.i1599
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 %add.i1268.i1598, i32 0) #7
  br label %if.end7.i2107

if.end23.i.i1602:                                 ; preds = %if.end20.i.i1599
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 %add.i1268.i1598, i32 1) #7
  %cmp25.i.i1601 = icmp eq i32 %665, 17
  br i1 %cmp25.i.i1601, label %if.then26.i.i1605, label %if.else.i1283.i1664

if.then26.i.i1605:                                ; preds = %if.end23.i.i1602
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 30, i32 1) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 31, i32 1) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 32, i32 1) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 32, i32 1) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 32, i32 1) #7
  %arrayidx29.i.i1603 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 78, i32 0
  %728 = load i8, i8* %arrayidx29.i.i1603, align 1, !tbaa !40
  %cmp.i.i1269.i1604 = icmp eq i8 %728, 12
  br i1 %cmp.i.i1269.i1604, label %if.then.i.i1270.i1610, label %if.end.i.i1272.i1612

for.body41.preheader.i.i1609:                     ; preds = %cabac_subpartition_b.exit.3.i.i1953
  %729 = load i8, i8* %arrayidx29.i.i1603, align 1, !tbaa !40
  %idxprom.i.i1606 = zext i8 %729 to i32
  %arrayidx45.i.i1607 = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 0, i32 %idxprom.i.i1606
  %730 = load i8, i8* %arrayidx45.i.i1607, align 1, !tbaa !40
  %tobool46.i.i1608 = icmp eq i8 %730, 0
  br i1 %tobool46.i.i1608, label %for.inc49.i.i1624, label %if.then47.i.i1620

if.then.i.i1270.i1610:                            ; preds = %if.then26.i.i1605
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 36, i32 0) #7
  br label %cabac_subpartition_b.exit.i.i1619

if.end.i.i1272.i1612:                             ; preds = %if.then26.i.i1605
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 36, i32 1) #7
  %cmp1.i.i1271.i1611 = icmp eq i8 %728, 11
  br i1 %cmp1.i.i1271.i1611, label %if.then2.i.i1273.i1613, label %if.end3.i.i.i1616

if.then2.i.i1273.i1613:                           ; preds = %if.end.i.i1272.i1612
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 37, i32 1) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 38, i32 0) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 39, i32 0) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 39, i32 0) #7
  br label %cabac_subpartition_b.exit.i.i1619

if.end3.i.i.i1616:                                ; preds = %if.end.i.i1272.i1612
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 37, i32 0) #7
  %cmp4.i.i.i1614 = icmp eq i8 %728, 7
  %conv.i.i1274.i1615 = zext i1 %cmp4.i.i.i1614 to i32
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 39, i32 %conv.i.i1274.i1615) #7
  br label %cabac_subpartition_b.exit.i.i1619

cabac_subpartition_b.exit.i.i1619:                ; preds = %if.end3.i.i.i1616, %if.then2.i.i1273.i1613, %if.then.i.i1270.i1610
  %arrayidx29.1.i.i1617 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 78, i32 1
  %731 = load i8, i8* %arrayidx29.1.i.i1617, align 1, !tbaa !40
  %cmp.i.1.i1275.i1618 = icmp eq i8 %731, 12
  br i1 %cmp.i.1.i1275.i1618, label %if.then.i.1.i1388.i1930, label %if.end.i.1.i1386.i1925

if.then47.i.i1620:                                ; preds = %for.body41.preheader.i.i1609
  tail call fastcc void @cabac_ref_b(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 0) #7
  br label %for.inc49.i.i1624

for.inc49.i.i1624:                                ; preds = %if.then47.i.i1620, %for.body41.preheader.i.i1609
  %732 = load i8, i8* %arrayidx29.1.i.i1617, align 1, !tbaa !40
  %idxprom.1.i.i1621 = zext i8 %732 to i32
  %arrayidx45.1.i.i1622 = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 0, i32 %idxprom.1.i.i1621
  %733 = load i8, i8* %arrayidx45.1.i.i1622, align 1, !tbaa !40
  %tobool46.1.i.i1623 = icmp eq i8 %733, 0
  br i1 %tobool46.1.i.i1623, label %for.inc49.1.i.i1917, label %if.then47.1.i.i1913

if.end52.i.i1627:                                 ; preds = %cabac_subpartition_b.exit.3.i.i1953, %if.then47.3.i.i1923, %for.inc49.2.i.i1922
  %arrayidx56.i.i1625 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 17, i32 1
  %734 = load i32, i32* %arrayidx56.i.i1625, align 4, !tbaa !51
  %cmp57.i.i1626 = icmp sgt i32 %734, 1
  br i1 %cmp57.i.i1626, label %for.body65.preheader.i.i1631, label %if.end78.i.i1640

for.body65.preheader.i.i1631:                     ; preds = %if.end52.i.i1627
  %735 = load i8, i8* %arrayidx29.i.i1603, align 1, !tbaa !40
  %idxprom69.i.i1628 = zext i8 %735 to i32
  %arrayidx70.i.i1629 = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 1, i32 %idxprom69.i.i1628
  %736 = load i8, i8* %arrayidx70.i.i1629, align 1, !tbaa !40
  %tobool71.i.i1630 = icmp eq i8 %736, 0
  br i1 %tobool71.i.i1630, label %for.inc75.i.i1636, label %if.then72.i.i1632

if.then72.i.i1632:                                ; preds = %for.body65.preheader.i.i1631
  tail call fastcc void @cabac_ref_b(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 1, i32 0) #7
  br label %for.inc75.i.i1636

for.inc75.i.i1636:                                ; preds = %if.then72.i.i1632, %for.body65.preheader.i.i1631
  %737 = load i8, i8* %arrayidx29.1.i.i1617, align 1, !tbaa !40
  %idxprom69.1.i.i1633 = zext i8 %737 to i32
  %arrayidx70.1.i.i1634 = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 1, i32 %idxprom69.1.i.i1633
  %738 = load i8, i8* %arrayidx70.1.i.i1634, align 1, !tbaa !40
  %tobool71.1.i.i1635 = icmp eq i8 %738, 0
  br i1 %tobool71.1.i.i1635, label %for.inc75.1.i.i1906, label %if.then72.1.i.i1902

if.end78.i.i1640:                                 ; preds = %if.then72.3.i.i1912, %for.inc75.2.i.i1911, %if.end52.i.i1627
  %739 = load i8, i8* %arrayidx29.i.i1603, align 1, !tbaa !40
  %idxprom88.i.i1637 = zext i8 %739 to i32
  %arrayidx89.i.i1638 = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 0, i32 %idxprom88.i.i1637
  %740 = load i8, i8* %arrayidx89.i.i1638, align 1, !tbaa !40
  %tobool90.i.i1639 = icmp eq i8 %740, 0
  br i1 %tobool90.i.i1639, label %for.inc100.i.i1651, label %do.body.i1282.i1647

do.body.i1282.i1647:                              ; preds = %if.end78.i.i1640
  %call.i1276.i1641 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 0, i32 2) #7
  %741 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 0
  %conv7.i.i1277.i1642 = zext i16 %call.i1276.i1641 to i32
  %mul8.i.i.i1278.i1643 = mul nuw i32 %conv7.i.i1277.i1642, 65537
  %i42.i.i.i1279.i1644 = bitcast i8* %741 to i32*
  store i32 %mul8.i.i.i1278.i1643, i32* %i42.i.i.i1279.i1644, align 4, !tbaa !40
  %add.ptr48.i.i.i1280.i1645 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 16
  %i49.i.i.i1281.i1646 = bitcast i8* %add.ptr48.i.i.i1280.i1645 to i32*
  store i32 %mul8.i.i.i1278.i1643, i32* %i49.i.i.i1281.i1646, align 4, !tbaa !40
  br label %for.inc100.i.i1651

for.inc100.i.i1651:                               ; preds = %do.body.i1282.i1647, %if.end78.i.i1640
  %742 = load i8, i8* %arrayidx29.1.i.i1617, align 1, !tbaa !40
  %idxprom88.1.i.i1648 = zext i8 %742 to i32
  %arrayidx89.1.i.i1649 = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 0, i32 %idxprom88.1.i.i1648
  %743 = load i8, i8* %arrayidx89.1.i.i1649, align 1, !tbaa !40
  %tobool90.1.i.i1650 = icmp eq i8 %743, 0
  br i1 %tobool90.1.i.i1650, label %for.inc100.1.i.i1879, label %do.body.1.i.i1875

do.body116.i.i1658:                               ; preds = %for.inc100.3.i.i1901
  %call119.i.i1652 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 1, i32 0, i32 2) #7
  %744 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 12, i32 0
  %conv7.i461.i.i1653 = zext i16 %call119.i.i1652 to i32
  %mul8.i.i462.i.i1654 = mul nuw i32 %conv7.i461.i.i1653, 65537
  %i42.i.i463.i.i1655 = bitcast i8* %744 to i32*
  store i32 %mul8.i.i462.i.i1654, i32* %i42.i.i463.i.i1655, align 4, !tbaa !40
  %add.ptr48.i.i464.i.i1656 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 12, i32 16
  %i49.i.i465.i.i1657 = bitcast i8* %add.ptr48.i.i464.i.i1656 to i32*
  store i32 %mul8.i.i462.i.i1654, i32* %i49.i.i465.i.i1657, align 4, !tbaa !40
  br label %for.inc129.i.i1662

for.inc129.i.i1662:                               ; preds = %for.inc100.3.i.i1901, %do.body116.i.i1658
  %745 = load i8, i8* %arrayidx29.1.i.i1617, align 1, !tbaa !40
  %idxprom112.1.i.i1659 = zext i8 %745 to i32
  %arrayidx113.1.i.i1660 = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 1, i32 %idxprom112.1.i.i1659
  %746 = load i8, i8* %arrayidx113.1.i.i1660, align 1, !tbaa !40
  %tobool114.1.i.i1661 = icmp eq i8 %746, 0
  br i1 %tobool114.1.i.i1661, label %for.inc129.1.i.i1850, label %do.body116.1.i.i1846

if.else.i1283.i1664:                              ; preds = %if.end23.i.i1602
  %i_mb_type.off.i.i1663 = add i32 %665, -8
  %747 = icmp ult i32 %i_mb_type.off.i.i1663, 9
  br i1 %747, label %if.then137.i.i1674, label %if.else305.i.i1789

if.then137.i.i1674:                               ; preds = %if.else.i1283.i1664
  %748 = mul nuw nsw i32 %665, 3
  %i_partition.i1284.i1665 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 77
  %749 = load i32, i32* %i_partition.i1284.i1665, align 4, !tbaa !50
  %sub140.i.i1666 = add nsw i32 %748, -38
  %add141.i.i1667 = add i32 %sub140.i.i1666, %749
  %arrayidx142.i.i1668 = getelementptr inbounds [27 x i8], [27 x i8]* @cabac_mb_header_b.i_mb_bits, i32 0, i32 %add141.i.i1667
  %750 = load i8, i8* %arrayidx142.i.i1668, align 1, !tbaa !40
  %conv143.i.i1669 = zext i8 %750 to i32
  %and144.i.i1670 = and i32 %conv143.i.i1669, 1
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 30, i32 %and144.i.i1670) #7
  %sub146.i.i1671 = sub nuw nsw i32 32, %and144.i.i1670
  %751 = lshr i32 %conv143.i.i1669, 1
  %and147.i.i1672 = and i32 %751, 1
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 %sub146.i.i1671, i32 %and147.i.i1672) #7
  %752 = lshr i32 %conv143.i.i1669, 2
  %cmp149.i.i1673 = icmp eq i32 %752, 1
  br i1 %cmp149.i.i1673, label %if.end163.i.i1684, label %if.then151.i.i1679

if.then151.i.i1679:                               ; preds = %if.then137.i.i1674
  %and152.i.i1675 = and i32 %752, 1
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 32, i32 %and152.i.i1675) #7
  %753 = lshr i32 %conv143.i.i1669, 3
  %and154.i.i1676 = and i32 %753, 1
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 32, i32 %and154.i.i1676) #7
  %754 = lshr i32 %conv143.i.i1669, 4
  %and156.i.i1677 = and i32 %754, 1
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 32, i32 %and156.i.i1677) #7
  %755 = lshr i32 %conv143.i.i1669, 5
  %cmp158.i.i1678 = icmp eq i32 %755, 1
  br i1 %cmp158.i.i1678, label %if.end163.i.i1684, label %if.then160.i.i1681

if.then160.i.i1681:                               ; preds = %if.then151.i.i1679
  %and161.i.i1680 = and i32 %755, 1
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 32, i32 %and161.i.i1680) #7
  br label %if.end163.i.i1684

if.end163.i.i1684:                                ; preds = %if.then160.i.i1681, %if.then151.i.i1679, %if.then137.i.i1674
  %arrayidx168.i.i1682 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 17, i32 0
  %756 = load i32, i32* %arrayidx168.i.i1682, align 4, !tbaa !51
  %cmp169.i.i1683 = icmp sgt i32 %756, 1
  br i1 %cmp169.i.i1683, label %if.then171.i.i1686, label %if.end193.i.i1698

if.then171.i.i1686:                               ; preds = %if.end163.i.i1684
  %757 = lshr i32 407727, %665
  %758 = and i32 %757, 1
  %tobool174.i.i1685 = icmp eq i32 %758, 0
  br i1 %tobool174.i.i1685, label %if.then175.i.i1687, label %if.end176.i.i1689

if.then175.i.i1687:                               ; preds = %if.then171.i.i1686
  tail call fastcc void @cabac_ref_b(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 0) #7
  br label %if.end176.i.i1689

if.end176.i.i1689:                                ; preds = %if.then175.i.i1687, %if.then171.i.i1686
  %759 = lshr i32 93520, %665
  %760 = and i32 %759, 1
  %tobool180.i.i1688 = icmp eq i32 %760, 0
  br i1 %tobool180.i.i1688, label %if.end193.i.i1698, label %land.lhs.true181.i.i1691

land.lhs.true181.i.i1691:                         ; preds = %if.end176.i.i1689
  %761 = load i32, i32* %i_partition.i1284.i1665, align 4, !tbaa !50
  %cmp184.i.i1690 = icmp eq i32 %761, 16
  br i1 %cmp184.i.i1690, label %if.end193.i.i1698, label %if.then186.i.i1695

if.then186.i.i1695:                               ; preds = %land.lhs.true181.i.i1691
  %cmp189.i.i1692 = icmp eq i32 %761, 15
  %conv190.i.i1693 = zext i1 %cmp189.i.i1692 to i32
  %shr191.i.i1694 = lshr i32 8, %conv190.i.i1693
  tail call fastcc void @cabac_ref_b(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 %shr191.i.i1694) #7
  br label %if.end193.i.i1698

if.end193.i.i1698:                                ; preds = %if.then186.i.i1695, %land.lhs.true181.i.i1691, %if.end176.i.i1689, %if.end163.i.i1684
  %arrayidx197.i.i1696 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 17, i32 1
  %762 = load i32, i32* %arrayidx197.i.i1696, align 4, !tbaa !51
  %cmp198.i.i1697 = icmp sgt i32 %762, 1
  br i1 %cmp198.i.i1697, label %if.then200.i.i1700, label %if.end222.i.i1712

if.then200.i.i1700:                               ; preds = %if.end193.i.i1698
  %763 = add nsw i32 %665, -11
  %tobool203.i.i1699 = icmp ugt i32 %763, 5
  br i1 %tobool203.i.i1699, label %if.end205.i.i1703, label %if.then204.i.i1701

if.then204.i.i1701:                               ; preds = %if.then200.i.i1700
  tail call fastcc void @cabac_ref_b(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 1, i32 0) #7
  br label %if.end205.i.i1703

if.end205.i.i1703:                                ; preds = %if.then204.i.i1701, %if.then200.i.i1700
  %764 = lshr i32 112128, %665
  %765 = and i32 %764, 1
  %tobool209.i.i1702 = icmp eq i32 %765, 0
  br i1 %tobool209.i.i1702, label %if.end222.i.i1712, label %land.lhs.true210.i.i1705

land.lhs.true210.i.i1705:                         ; preds = %if.end205.i.i1703
  %766 = load i32, i32* %i_partition.i1284.i1665, align 4, !tbaa !50
  %cmp213.i.i1704 = icmp eq i32 %766, 16
  br i1 %cmp213.i.i1704, label %if.then232.i.i1714, label %if.then215.i.i1709

if.then215.i.i1709:                               ; preds = %land.lhs.true210.i.i1705
  %cmp218.i.i1706 = icmp eq i32 %766, 15
  %conv219.i.i1707 = zext i1 %cmp218.i.i1706 to i32
  %shr220.i.i1708 = lshr i32 8, %conv219.i.i1707
  tail call fastcc void @cabac_ref_b(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 1, i32 %shr220.i.i1708) #7
  br label %if.end222.i.i1712

if.end222.i.i1712:                                ; preds = %if.then215.i.i1709, %if.end205.i.i1703, %if.end193.i.i1698
  %.pr.i.i1710 = load i32, i32* %i_partition.i1284.i1665, align 4, !tbaa !50
  %cmp230.i.i1711 = icmp eq i32 %.pr.i.i1710, 16
  br i1 %cmp230.i.i1711, label %if.then232.i.i1714, label %if.else245.i.i1736

if.then232.i.i1714:                               ; preds = %if.end222.i.i1712, %land.lhs.true210.i.i1705
  %767 = lshr i32 407727, %665
  %768 = and i32 %767, 1
  %tobool235.i.i1713 = icmp eq i32 %768, 0
  br i1 %tobool235.i.i1713, label %do.body237.i.i1733, label %for.inc302.i.i1788

do.body237.i.i1733:                               ; preds = %if.then232.i.i1714
  %call239.i.i1715 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 0, i32 4) #7
  %769 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 0
  %conv7.i467.i.i1716 = zext i16 %call239.i.i1715 to i32
  %mul8.i.i468.i.i1717 = mul nuw i32 %conv7.i467.i.i1716, 65537
  %i67.i.i.i1285.i1718 = bitcast i8* %769 to i32*
  store i32 %mul8.i.i468.i.i1717, i32* %i67.i.i.i1285.i1718, align 4, !tbaa !40
  %add.ptr70.i.i.i1286.i1719 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 4
  %i71.i.i.i1287.i1720 = bitcast i8* %add.ptr70.i.i.i1286.i1719 to i32*
  store i32 %mul8.i.i468.i.i1717, i32* %i71.i.i.i1287.i1720, align 4, !tbaa !40
  %add.ptr77.i.i.i1288.i1721 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 16
  %i79.i.i.i1289.i1722 = bitcast i8* %add.ptr77.i.i.i1288.i1721 to i32*
  store i32 %mul8.i.i468.i.i1717, i32* %i79.i.i.i1289.i1722, align 4, !tbaa !40
  %add.ptr82.i.i.i1290.i1723 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 20
  %i83.i.i.i1291.i1724 = bitcast i8* %add.ptr82.i.i.i1290.i1723 to i32*
  store i32 %mul8.i.i468.i.i1717, i32* %i83.i.i.i1291.i1724, align 4, !tbaa !40
  %add.ptr89.i.i.i1292.i1725 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 32
  %i91.i.i.i1293.i1726 = bitcast i8* %add.ptr89.i.i.i1292.i1725 to i32*
  store i32 %mul8.i.i468.i.i1717, i32* %i91.i.i.i1293.i1726, align 4, !tbaa !40
  %add.ptr94.i.i.i1294.i1727 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 36
  %i95.i.i.i1295.i1728 = bitcast i8* %add.ptr94.i.i.i1294.i1727 to i32*
  store i32 %mul8.i.i468.i.i1717, i32* %i95.i.i.i1295.i1728, align 4, !tbaa !40
  %add.ptr97.i.i.i1296.i1729 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 48
  %i99.i.i.i1297.i1730 = bitcast i8* %add.ptr97.i.i.i1296.i1729 to i32*
  store i32 %mul8.i.i468.i.i1717, i32* %i99.i.i.i1297.i1730, align 4, !tbaa !40
  %add.ptr102.i.i.i1298.i1731 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 52
  %i103.i.i.i1299.i1732 = bitcast i8* %add.ptr102.i.i.i1298.i1731 to i32*
  store i32 %mul8.i.i468.i.i1717, i32* %i103.i.i.i1299.i1732, align 4, !tbaa !40
  br label %for.inc302.i.i1788

if.else245.i.i1736:                               ; preds = %if.end222.i.i1712
  %cmp248.i.i1734 = icmp eq i32 %.pr.i.i1710, 14
  %770 = lshr i32 116560, %665
  %771 = and i32 %770, 1
  %tobool253.i.i1735 = icmp ne i32 %771, 0
  br i1 %cmp248.i.i1734, label %if.then250.i.i1737, label %if.else275.i.i1762

if.then250.i.i1737:                               ; preds = %if.else245.i.i1736
  br i1 %tobool253.i.i1735, label %do.body255.i.i1748, label %if.end262.i.i1750

do.body255.i.i1748:                               ; preds = %if.then250.i.i1737
  %call257.i.i1738 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 0, i32 4) #7
  %772 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 0
  %conv7.i470.i.i1739 = zext i16 %call257.i.i1738 to i32
  %mul8.i.i471.i.i1740 = mul nuw i32 %conv7.i470.i.i1739, 65537
  %i67.i.i472.i.i1741 = bitcast i8* %772 to i32*
  store i32 %mul8.i.i471.i.i1740, i32* %i67.i.i472.i.i1741, align 4, !tbaa !40
  %add.ptr70.i.i473.i.i1742 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 4
  %i71.i.i474.i.i1743 = bitcast i8* %add.ptr70.i.i473.i.i1742 to i32*
  store i32 %mul8.i.i471.i.i1740, i32* %i71.i.i474.i.i1743, align 4, !tbaa !40
  %add.ptr77.i.i475.i.i1744 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 16
  %i79.i.i476.i.i1745 = bitcast i8* %add.ptr77.i.i475.i.i1744 to i32*
  store i32 %mul8.i.i471.i.i1740, i32* %i79.i.i476.i.i1745, align 4, !tbaa !40
  %add.ptr82.i.i477.i.i1746 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 20
  %i83.i.i478.i.i1747 = bitcast i8* %add.ptr82.i.i477.i.i1746 to i32*
  store i32 %mul8.i.i471.i.i1740, i32* %i83.i.i478.i.i1747, align 4, !tbaa !40
  br label %if.end262.i.i1750

if.end262.i.i1750:                                ; preds = %do.body255.i.i1748, %if.then250.i.i1737
  %773 = lshr i32 430767, %665
  %774 = and i32 %773, 1
  %tobool265.i.i1749 = icmp eq i32 %774, 0
  br i1 %tobool265.i.i1749, label %do.body267.i.i1761, label %for.inc302.i.i1788

do.body267.i.i1761:                               ; preds = %if.end262.i.i1750
  %call269.i.i1751 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 8, i32 4) #7
  %775 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 28, i32 0
  %conv7.i480.i.i1752 = zext i16 %call269.i.i1751 to i32
  %mul8.i.i481.i.i1753 = mul nuw i32 %conv7.i480.i.i1752, 65537
  %i67.i.i482.i.i1754 = bitcast i8* %775 to i32*
  store i32 %mul8.i.i481.i.i1753, i32* %i67.i.i482.i.i1754, align 4, !tbaa !40
  %add.ptr70.i.i483.i.i1755 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 28, i32 4
  %i71.i.i484.i.i1756 = bitcast i8* %add.ptr70.i.i483.i.i1755 to i32*
  store i32 %mul8.i.i481.i.i1753, i32* %i71.i.i484.i.i1756, align 4, !tbaa !40
  %add.ptr77.i.i485.i.i1757 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 28, i32 16
  %i79.i.i486.i.i1758 = bitcast i8* %add.ptr77.i.i485.i.i1757 to i32*
  store i32 %mul8.i.i481.i.i1753, i32* %i79.i.i486.i.i1758, align 4, !tbaa !40
  %add.ptr82.i.i487.i.i1759 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 28, i32 20
  %i83.i.i488.i.i1760 = bitcast i8* %add.ptr82.i.i487.i.i1759 to i32*
  store i32 %mul8.i.i481.i.i1753, i32* %i83.i.i488.i.i1760, align 4, !tbaa !40
  br label %for.inc302.i.i1788

if.else275.i.i1762:                               ; preds = %if.else245.i.i1736
  br i1 %tobool253.i.i1735, label %do.body280.i.i1773, label %if.end287.i.i1775

do.body280.i.i1773:                               ; preds = %if.else275.i.i1762
  %call282.i.i1763 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 0, i32 2) #7
  %776 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 0
  %conv7.i490.i.i1764 = zext i16 %call282.i.i1763 to i32
  %mul8.i.i491.i.i1765 = mul nuw i32 %conv7.i490.i.i1764, 65537
  %i42.i.i492.i.i1766 = bitcast i8* %776 to i32*
  store i32 %mul8.i.i491.i.i1765, i32* %i42.i.i492.i.i1766, align 4, !tbaa !40
  %add.ptr48.i.i493.i.i1767 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 16
  %i49.i.i494.i.i1768 = bitcast i8* %add.ptr48.i.i493.i.i1767 to i32*
  store i32 %mul8.i.i491.i.i1765, i32* %i49.i.i494.i.i1768, align 4, !tbaa !40
  %add.ptr55.i.i.i1300.i1769 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 32
  %i56.i.i.i1301.i1770 = bitcast i8* %add.ptr55.i.i.i1300.i1769 to i32*
  store i32 %mul8.i.i491.i.i1765, i32* %i56.i.i.i1301.i1770, align 4, !tbaa !40
  %add.ptr58.i.i.i1302.i1771 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 12, i32 48
  %i59.i.i.i1303.i1772 = bitcast i8* %add.ptr58.i.i.i1302.i1771 to i32*
  store i32 %mul8.i.i491.i.i1765, i32* %i59.i.i.i1303.i1772, align 4, !tbaa !40
  br label %if.end287.i.i1775

if.end287.i.i1775:                                ; preds = %do.body280.i.i1773, %if.else275.i.i1762
  %777 = lshr i32 430767, %665
  %778 = and i32 %777, 1
  %tobool290.i.i1774 = icmp eq i32 %778, 0
  br i1 %tobool290.i.i1774, label %do.body292.i.i1786, label %for.inc302.i.i1788

do.body292.i.i1786:                               ; preds = %if.end287.i.i1775
  %call294.i.i1776 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 4, i32 2) #7
  %779 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 14, i32 0
  %conv7.i496.i.i1777 = zext i16 %call294.i.i1776 to i32
  %mul8.i.i497.i.i1778 = mul nuw i32 %conv7.i496.i.i1777, 65537
  %i42.i.i498.i.i1779 = bitcast i8* %779 to i32*
  store i32 %mul8.i.i497.i.i1778, i32* %i42.i.i498.i.i1779, align 4, !tbaa !40
  %add.ptr48.i.i499.i.i1780 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 14, i32 16
  %i49.i.i500.i.i1781 = bitcast i8* %add.ptr48.i.i499.i.i1780 to i32*
  store i32 %mul8.i.i497.i.i1778, i32* %i49.i.i500.i.i1781, align 4, !tbaa !40
  %add.ptr55.i.i501.i.i1782 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 14, i32 32
  %i56.i.i502.i.i1783 = bitcast i8* %add.ptr55.i.i501.i.i1782 to i32*
  store i32 %mul8.i.i497.i.i1778, i32* %i56.i.i502.i.i1783, align 4, !tbaa !40
  %add.ptr58.i.i503.i.i1784 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 14, i32 48
  %i59.i.i504.i.i1785 = bitcast i8* %add.ptr58.i.i503.i.i1784 to i32*
  store i32 %mul8.i.i497.i.i1778, i32* %i59.i.i504.i.i1785, align 4, !tbaa !40
  br label %for.inc302.i.i1788

for.inc302.i.i1788:                               ; preds = %do.body292.i.i1786, %if.end287.i.i1775, %do.body267.i.i1761, %if.end262.i.i1750, %do.body237.i.i1733, %if.then232.i.i1714
  %780 = load i32, i32* %i_partition.i1284.i1665, align 4, !tbaa !50
  %cmp230.1.i.i1787 = icmp eq i32 %780, 16
  br i1 %cmp230.1.i.i1787, label %if.then232.1.i.i2008, label %if.else245.1.i.i1956

if.else305.i.i1789:                               ; preds = %if.else.i1283.i1664
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 30, i32 1) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 31, i32 1) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 32, i32 1) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 32, i32 0) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 32, i32 1) #7
  tail call fastcc void @cabac_mb_type_intra(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 %665, i32 32, i32 33, i32 34, i32 34, i32 35, i32 35) #7
  %781 = and i32 %665, -2
  %switch2581 = icmp eq i32 %781, 2
  br i1 %switch2581, label %if.end7.i2107, label %if.then26.i.i1306.i1792

if.then26.i.i1306.i1792:                          ; preds = %if.else305.i.i1789
  %b_transform_8x8_mode.i.i1304.i1790 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 53, i32 0, i32 15
  %782 = load i32, i32* %b_transform_8x8_mode.i.i1304.i1790, align 4, !tbaa !52
  %tobool27.i.i1305.i1791 = icmp eq i32 %782, 0
  br i1 %tobool27.i.i1305.i1791, label %if.end29.i.i1316.i1802, label %if.then28.i.i1312.i1798

if.then28.i.i1312.i1798:                          ; preds = %if.then26.i.i1306.i1792
  %h.idx.i.i1307.i1793 = getelementptr %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 79
  %h.idx.val.i.i1308.i1794 = load i32, i32* %h.idx.i.i1307.i1793, align 4, !tbaa !54
  %h.idx84.i.i1309.i1795 = getelementptr %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 10
  %h.idx84.val.i.i1310.i1796 = load i32, i32* %h.idx84.i.i1309.i1795, align 8, !tbaa !55
  %add.i.i.i1311.i1797 = add nsw i32 %h.idx84.val.i.i1310.i1796, 399
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 %add.i.i.i1311.i1797, i32 %h.idx.val.i.i1308.i1794) #7
  br label %if.end29.i.i1316.i1802

if.end29.i.i1316.i1802:                           ; preds = %if.then28.i.i1312.i1798, %if.then26.i.i1306.i1792
  %b_transform_8x8.i.i1313.i1799 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 79
  %783 = load i32, i32* %b_transform_8x8.i.i1313.i1799, align 4, !tbaa !54
  %tobool31.i.i1314.i1800 = icmp eq i32 %783, 0
  %cond.i.i1315.i1801 = select i1 %tobool31.i.i1314.i1800, i32 1, i32 4
  br label %for.body.i.i1338.i1825

for.body.i.i1338.i1825:                           ; preds = %cabac_intra4x4_pred_mode.exit.i.i1351.i1838, %if.end29.i.i1316.i1802
  %i.091.i.i1317.i1803 = phi i32 [ 0, %if.end29.i.i1316.i1802 ], [ %add39.i.i1349.i1836, %cabac_intra4x4_pred_mode.exit.i.i1351.i1838 ]
  %arrayidx.i.i.i1318.i1804 = getelementptr inbounds [51 x i8], [51 x i8]* @x264_scan8, i32 0, i32 %i.091.i.i1317.i1803
  %784 = load i8, i8* %arrayidx.i.i.i1318.i1804, align 1, !tbaa !40
  %conv.i.i.i1319.i1805 = zext i8 %784 to i32
  %sub.i.i.i1320.i1806 = add nsw i32 %conv.i.i.i1319.i1805, -1
  %arrayidx1.i.i.i1321.i1807 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 0, i32 %sub.i.i.i1320.i1806
  %785 = load i8, i8* %arrayidx1.i.i.i1321.i1807, align 1, !tbaa !40
  %conv2.i.i.i1322.i1808 = sext i8 %785 to i32
  %sub9.i.i.i1323.i1809 = add nsw i32 %conv.i.i.i1319.i1805, -8
  %arrayidx10.i.i.i1324.i1810 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 0, i32 %sub9.i.i.i1323.i1809
  %786 = load i8, i8* %arrayidx10.i.i.i1324.i1810, align 1, !tbaa !40
  %conv11.i.i.i1325.i1811 = sext i8 %786 to i32
  %add.i85.i.i1326.i1812 = add nsw i32 %conv2.i.i.i1322.i1808, 1
  %arrayidx12.i.i.i1327.i1813 = getelementptr inbounds [13 x i8], [13 x i8]* @x264_mb_pred_mode4x4_fix, i32 0, i32 %add.i85.i.i1326.i1812
  %787 = load i8, i8* %arrayidx12.i.i.i1327.i1813, align 1, !tbaa !40
  %add14.i.i.i1328.i1814 = add nsw i32 %conv11.i.i.i1325.i1811, 1
  %arrayidx15.i.i.i1329.i1815 = getelementptr inbounds [13 x i8], [13 x i8]* @x264_mb_pred_mode4x4_fix, i32 0, i32 %add14.i.i.i1328.i1814
  %788 = load i8, i8* %arrayidx15.i.i.i1329.i1815, align 1, !tbaa !40
  %cmp.i.i.i1330.i1816 = icmp slt i8 %787, %788
  %..i.i.i1331.i1817 = select i1 %cmp.i.i.i1330.i1816, i8 %787, i8 %788
  %cmp24.i.i.i1332.i1818 = icmp slt i8 %..i.i.i1331.i1817, 0
  %narrow.i.i.i1333.i1819 = select i1 %cmp24.i.i.i1332.i1818, i8 2, i8 %..i.i.i1331.i1817
  %arrayidx35.i.i1334.i1820 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 0, i32 %conv.i.i.i1319.i1805
  %789 = load i8, i8* %arrayidx35.i.i1334.i1820, align 1, !tbaa !40
  %conv.i506.i.i1821 = sext i8 %789 to i32
  %add36.i.i1335.i1822 = add nsw i32 %conv.i506.i.i1821, 1
  %arrayidx37.i.i1336.i1823 = getelementptr inbounds [13 x i8], [13 x i8]* @x264_mb_pred_mode4x4_fix, i32 0, i32 %add36.i.i1335.i1822
  %790 = load i8, i8* %arrayidx37.i.i1336.i1823, align 1, !tbaa !40
  %cmp.i88.i.i1337.i1824 = icmp eq i8 %narrow.i.i.i1333.i1819, %790
  br i1 %cmp.i88.i.i1337.i1824, label %if.then.i.i.i1339.i1826, label %if.else.i.i.i1348.i1835

if.then.i.i.i1339.i1826:                          ; preds = %for.body.i.i1338.i1825
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 68, i32 1) #7
  br label %cabac_intra4x4_pred_mode.exit.i.i1351.i1838

if.else.i.i.i1348.i1835:                          ; preds = %for.body.i.i1338.i1825
  %conv38.i.i1340.i1827 = sext i8 %790 to i32
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 68, i32 0) #7
  %cmp1.i.i.i1341.i1828 = icmp sgt i8 %790, %narrow.i.i.i1333.i1819
  %dec.i.i.i1342.i1829 = sext i1 %cmp1.i.i.i1341.i1828 to i32
  %spec.select.i89.i.i1343.i1830 = add nsw i32 %dec.i.i.i1342.i1829, %conv38.i.i1340.i1827
  %and.i90.i.i1344.i1831 = and i32 %spec.select.i89.i.i1343.i1830, 1
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 69, i32 %and.i90.i.i1344.i1831) #7
  %shr15.i.i.i1345.i1832 = lshr i32 %spec.select.i89.i.i1343.i1830, 1
  %and3.i.i.i1346.i1833 = and i32 %shr15.i.i.i1345.i1832, 1
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 69, i32 %and3.i.i.i1346.i1833) #7
  %shr4.i.i.i1347.i1834 = ashr i32 %spec.select.i89.i.i1343.i1830, 2
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 69, i32 %shr4.i.i.i1347.i1834) #7
  br label %cabac_intra4x4_pred_mode.exit.i.i1351.i1838

cabac_intra4x4_pred_mode.exit.i.i1351.i1838:      ; preds = %if.else.i.i.i1348.i1835, %if.then.i.i.i1339.i1826
  %add39.i.i1349.i1836 = add nuw nsw i32 %i.091.i.i1317.i1803, %cond.i.i1315.i1801
  %cmp32.i.i1350.i1837 = icmp ult i32 %add39.i.i1349.i1836, 16
  br i1 %cmp32.i.i1350.i1837, label %for.body.i.i1338.i1825, label %if.end7.i2107

do.body116.1.i.i1846:                             ; preds = %for.inc129.i.i1662
  %call119.1.i.i1840 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 1, i32 4, i32 2) #7
  %791 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 14, i32 0
  %conv7.i461.1.i.i1841 = zext i16 %call119.1.i.i1840 to i32
  %mul8.i.i462.1.i.i1842 = mul nuw i32 %conv7.i461.1.i.i1841, 65537
  %i42.i.i463.1.i.i1843 = bitcast i8* %791 to i32*
  store i32 %mul8.i.i462.1.i.i1842, i32* %i42.i.i463.1.i.i1843, align 4, !tbaa !40
  %add.ptr48.i.i464.1.i.i1844 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 14, i32 16
  %i49.i.i465.1.i.i1845 = bitcast i8* %add.ptr48.i.i464.1.i.i1844 to i32*
  store i32 %mul8.i.i462.1.i.i1842, i32* %i49.i.i465.1.i.i1845, align 4, !tbaa !40
  br label %for.inc129.1.i.i1850

for.inc129.1.i.i1850:                             ; preds = %do.body116.1.i.i1846, %for.inc129.i.i1662
  %792 = load i8, i8* %arrayidx29.2.i.i1931, align 1, !tbaa !40
  %idxprom112.2.i.i1847 = zext i8 %792 to i32
  %arrayidx113.2.i.i1848 = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 1, i32 %idxprom112.2.i.i1847
  %793 = load i8, i8* %arrayidx113.2.i.i1848, align 1, !tbaa !40
  %tobool114.2.i.i1849 = icmp eq i8 %793, 0
  br i1 %tobool114.2.i.i1849, label %for.inc129.2.i.i1861, label %do.body116.2.i.i1857

do.body116.2.i.i1857:                             ; preds = %for.inc129.1.i.i1850
  %call119.2.i.i1851 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 1, i32 8, i32 2) #7
  %794 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 28, i32 0
  %conv7.i461.2.i.i1852 = zext i16 %call119.2.i.i1851 to i32
  %mul8.i.i462.2.i.i1853 = mul nuw i32 %conv7.i461.2.i.i1852, 65537
  %i42.i.i463.2.i.i1854 = bitcast i8* %794 to i32*
  store i32 %mul8.i.i462.2.i.i1853, i32* %i42.i.i463.2.i.i1854, align 4, !tbaa !40
  %add.ptr48.i.i464.2.i.i1855 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 28, i32 16
  %i49.i.i465.2.i.i1856 = bitcast i8* %add.ptr48.i.i464.2.i.i1855 to i32*
  store i32 %mul8.i.i462.2.i.i1853, i32* %i49.i.i465.2.i.i1856, align 4, !tbaa !40
  br label %for.inc129.2.i.i1861

for.inc129.2.i.i1861:                             ; preds = %do.body116.2.i.i1857, %for.inc129.1.i.i1850
  %795 = load i8, i8* %arrayidx29.3.i.i1941, align 1, !tbaa !40
  %idxprom112.3.i.i1858 = zext i8 %795 to i32
  %arrayidx113.3.i.i1859 = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 1, i32 %idxprom112.3.i.i1858
  %796 = load i8, i8* %arrayidx113.3.i.i1859, align 1, !tbaa !40
  %tobool114.3.i.i1860 = icmp eq i8 %796, 0
  br i1 %tobool114.3.i.i1860, label %if.end7.i2107, label %do.body116.3.i.i1868

do.body116.3.i.i1868:                             ; preds = %for.inc129.2.i.i1861
  %call119.3.i.i1862 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 1, i32 12, i32 2) #7
  %797 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 30, i32 0
  %conv7.i461.3.i.i1863 = zext i16 %call119.3.i.i1862 to i32
  %mul8.i.i462.3.i.i1864 = mul nuw i32 %conv7.i461.3.i.i1863, 65537
  %i42.i.i463.3.i.i1865 = bitcast i8* %797 to i32*
  store i32 %mul8.i.i462.3.i.i1864, i32* %i42.i.i463.3.i.i1865, align 4, !tbaa !40
  %add.ptr48.i.i464.3.i.i1866 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 30, i32 16
  %i49.i.i465.3.i.i1867 = bitcast i8* %add.ptr48.i.i464.3.i.i1866 to i32*
  store i32 %mul8.i.i462.3.i.i1864, i32* %i49.i.i465.3.i.i1867, align 4, !tbaa !40
  br label %if.end7.i2107

do.body.1.i.i1875:                                ; preds = %for.inc100.i.i1651
  %call.1.i.i1869 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 4, i32 2) #7
  %798 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 14, i32 0
  %conv7.i.1.i.i1870 = zext i16 %call.1.i.i1869 to i32
  %mul8.i.i.1.i.i1871 = mul nuw i32 %conv7.i.1.i.i1870, 65537
  %i42.i.i.1.i.i1872 = bitcast i8* %798 to i32*
  store i32 %mul8.i.i.1.i.i1871, i32* %i42.i.i.1.i.i1872, align 4, !tbaa !40
  %add.ptr48.i.i.1.i.i1873 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 14, i32 16
  %i49.i.i.1.i.i1874 = bitcast i8* %add.ptr48.i.i.1.i.i1873 to i32*
  store i32 %mul8.i.i.1.i.i1871, i32* %i49.i.i.1.i.i1874, align 4, !tbaa !40
  br label %for.inc100.1.i.i1879

for.inc100.1.i.i1879:                             ; preds = %do.body.1.i.i1875, %for.inc100.i.i1651
  %799 = load i8, i8* %arrayidx29.2.i.i1931, align 1, !tbaa !40
  %idxprom88.2.i.i1876 = zext i8 %799 to i32
  %arrayidx89.2.i.i1877 = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 0, i32 %idxprom88.2.i.i1876
  %800 = load i8, i8* %arrayidx89.2.i.i1877, align 1, !tbaa !40
  %tobool90.2.i.i1878 = icmp eq i8 %800, 0
  br i1 %tobool90.2.i.i1878, label %for.inc100.2.i.i1890, label %do.body.2.i.i1886

do.body.2.i.i1886:                                ; preds = %for.inc100.1.i.i1879
  %call.2.i.i1880 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 8, i32 2) #7
  %801 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 28, i32 0
  %conv7.i.2.i.i1881 = zext i16 %call.2.i.i1880 to i32
  %mul8.i.i.2.i.i1882 = mul nuw i32 %conv7.i.2.i.i1881, 65537
  %i42.i.i.2.i.i1883 = bitcast i8* %801 to i32*
  store i32 %mul8.i.i.2.i.i1882, i32* %i42.i.i.2.i.i1883, align 4, !tbaa !40
  %add.ptr48.i.i.2.i.i1884 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 28, i32 16
  %i49.i.i.2.i.i1885 = bitcast i8* %add.ptr48.i.i.2.i.i1884 to i32*
  store i32 %mul8.i.i.2.i.i1882, i32* %i49.i.i.2.i.i1885, align 4, !tbaa !40
  br label %for.inc100.2.i.i1890

for.inc100.2.i.i1890:                             ; preds = %do.body.2.i.i1886, %for.inc100.1.i.i1879
  %802 = load i8, i8* %arrayidx29.3.i.i1941, align 1, !tbaa !40
  %idxprom88.3.i.i1887 = zext i8 %802 to i32
  %arrayidx89.3.i.i1888 = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 0, i32 %idxprom88.3.i.i1887
  %803 = load i8, i8* %arrayidx89.3.i.i1888, align 1, !tbaa !40
  %tobool90.3.i.i1889 = icmp eq i8 %803, 0
  br i1 %tobool90.3.i.i1889, label %for.inc100.3.i.i1901, label %do.body.3.i.i1897

do.body.3.i.i1897:                                ; preds = %for.inc100.2.i.i1890
  %call.3.i.i1891 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 12, i32 2) #7
  %804 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 30, i32 0
  %conv7.i.3.i.i1892 = zext i16 %call.3.i.i1891 to i32
  %mul8.i.i.3.i.i1893 = mul nuw i32 %conv7.i.3.i.i1892, 65537
  %i42.i.i.3.i.i1894 = bitcast i8* %804 to i32*
  store i32 %mul8.i.i.3.i.i1893, i32* %i42.i.i.3.i.i1894, align 4, !tbaa !40
  %add.ptr48.i.i.3.i.i1895 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 0, i32 30, i32 16
  %i49.i.i.3.i.i1896 = bitcast i8* %add.ptr48.i.i.3.i.i1895 to i32*
  store i32 %mul8.i.i.3.i.i1893, i32* %i49.i.i.3.i.i1896, align 4, !tbaa !40
  br label %for.inc100.3.i.i1901

for.inc100.3.i.i1901:                             ; preds = %do.body.3.i.i1897, %for.inc100.2.i.i1890
  %805 = load i8, i8* %arrayidx29.i.i1603, align 1, !tbaa !40
  %idxprom112.i.i1898 = zext i8 %805 to i32
  %arrayidx113.i.i1899 = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 1, i32 %idxprom112.i.i1898
  %806 = load i8, i8* %arrayidx113.i.i1899, align 1, !tbaa !40
  %tobool114.i.i1900 = icmp eq i8 %806, 0
  br i1 %tobool114.i.i1900, label %for.inc129.i.i1662, label %do.body116.i.i1658

if.then72.1.i.i1902:                              ; preds = %for.inc75.i.i1636
  tail call fastcc void @cabac_ref_b(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 1, i32 4) #7
  br label %for.inc75.1.i.i1906

for.inc75.1.i.i1906:                              ; preds = %if.then72.1.i.i1902, %for.inc75.i.i1636
  %807 = load i8, i8* %arrayidx29.2.i.i1931, align 1, !tbaa !40
  %idxprom69.2.i.i1903 = zext i8 %807 to i32
  %arrayidx70.2.i.i1904 = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 1, i32 %idxprom69.2.i.i1903
  %808 = load i8, i8* %arrayidx70.2.i.i1904, align 1, !tbaa !40
  %tobool71.2.i.i1905 = icmp eq i8 %808, 0
  br i1 %tobool71.2.i.i1905, label %for.inc75.2.i.i1911, label %if.then72.2.i.i1907

if.then72.2.i.i1907:                              ; preds = %for.inc75.1.i.i1906
  tail call fastcc void @cabac_ref_b(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 1, i32 8) #7
  br label %for.inc75.2.i.i1911

for.inc75.2.i.i1911:                              ; preds = %if.then72.2.i.i1907, %for.inc75.1.i.i1906
  %809 = load i8, i8* %arrayidx29.3.i.i1941, align 1, !tbaa !40
  %idxprom69.3.i.i1908 = zext i8 %809 to i32
  %arrayidx70.3.i.i1909 = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 1, i32 %idxprom69.3.i.i1908
  %810 = load i8, i8* %arrayidx70.3.i.i1909, align 1, !tbaa !40
  %tobool71.3.i.i1910 = icmp eq i8 %810, 0
  br i1 %tobool71.3.i.i1910, label %if.end78.i.i1640, label %if.then72.3.i.i1912

if.then72.3.i.i1912:                              ; preds = %for.inc75.2.i.i1911
  tail call fastcc void @cabac_ref_b(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 1, i32 12) #7
  br label %if.end78.i.i1640

if.then47.1.i.i1913:                              ; preds = %for.inc49.i.i1624
  tail call fastcc void @cabac_ref_b(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 4) #7
  br label %for.inc49.1.i.i1917

for.inc49.1.i.i1917:                              ; preds = %if.then47.1.i.i1913, %for.inc49.i.i1624
  %811 = load i8, i8* %arrayidx29.2.i.i1931, align 1, !tbaa !40
  %idxprom.2.i.i1914 = zext i8 %811 to i32
  %arrayidx45.2.i.i1915 = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 0, i32 %idxprom.2.i.i1914
  %812 = load i8, i8* %arrayidx45.2.i.i1915, align 1, !tbaa !40
  %tobool46.2.i.i1916 = icmp eq i8 %812, 0
  br i1 %tobool46.2.i.i1916, label %for.inc49.2.i.i1922, label %if.then47.2.i.i1918

if.then47.2.i.i1918:                              ; preds = %for.inc49.1.i.i1917
  tail call fastcc void @cabac_ref_b(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 8) #7
  br label %for.inc49.2.i.i1922

for.inc49.2.i.i1922:                              ; preds = %if.then47.2.i.i1918, %for.inc49.1.i.i1917
  %813 = load i8, i8* %arrayidx29.3.i.i1941, align 1, !tbaa !40
  %idxprom.3.i.i1919 = zext i8 %813 to i32
  %arrayidx45.3.i.i1920 = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 0, i32 %idxprom.3.i.i1919
  %814 = load i8, i8* %arrayidx45.3.i.i1920, align 1, !tbaa !40
  %tobool46.3.i.i1921 = icmp eq i8 %814, 0
  br i1 %tobool46.3.i.i1921, label %if.end52.i.i1627, label %if.then47.3.i.i1923

if.then47.3.i.i1923:                              ; preds = %for.inc49.2.i.i1922
  tail call fastcc void @cabac_ref_b(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 0, i32 12) #7
  br label %if.end52.i.i1627

if.end.i.1.i1386.i1925:                           ; preds = %cabac_subpartition_b.exit.i.i1619
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 36, i32 1) #7
  %cmp1.i.1.i1385.i1924 = icmp eq i8 %731, 11
  br i1 %cmp1.i.1.i1385.i1924, label %if.then2.i.1.i1387.i1929, label %if.end3.i.1.i.i1928

if.end3.i.1.i.i1928:                              ; preds = %if.end.i.1.i1386.i1925
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 37, i32 0) #7
  %cmp4.i.1.i.i1926 = icmp eq i8 %731, 7
  %conv.i.1.i.i1927 = zext i1 %cmp4.i.1.i.i1926 to i32
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 39, i32 %conv.i.1.i.i1927) #7
  br label %cabac_subpartition_b.exit.1.i.i1933

if.then2.i.1.i1387.i1929:                         ; preds = %if.end.i.1.i1386.i1925
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 37, i32 1) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 38, i32 0) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 39, i32 0) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 39, i32 0) #7
  br label %cabac_subpartition_b.exit.1.i.i1933

if.then.i.1.i1388.i1930:                          ; preds = %cabac_subpartition_b.exit.i.i1619
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 36, i32 0) #7
  br label %cabac_subpartition_b.exit.1.i.i1933

cabac_subpartition_b.exit.1.i.i1933:              ; preds = %if.then.i.1.i1388.i1930, %if.then2.i.1.i1387.i1929, %if.end3.i.1.i.i1928
  %arrayidx29.2.i.i1931 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 78, i32 2
  %815 = load i8, i8* %arrayidx29.2.i.i1931, align 1, !tbaa !40
  %cmp.i.2.i1389.i1932 = icmp eq i8 %815, 12
  br i1 %cmp.i.2.i1389.i1932, label %if.then.i.2.i1393.i1940, label %if.end.i.2.i1391.i1935

if.end.i.2.i1391.i1935:                           ; preds = %cabac_subpartition_b.exit.1.i.i1933
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 36, i32 1) #7
  %cmp1.i.2.i1390.i1934 = icmp eq i8 %815, 11
  br i1 %cmp1.i.2.i1390.i1934, label %if.then2.i.2.i1392.i1939, label %if.end3.i.2.i.i1938

if.end3.i.2.i.i1938:                              ; preds = %if.end.i.2.i1391.i1935
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 37, i32 0) #7
  %cmp4.i.2.i.i1936 = icmp eq i8 %815, 7
  %conv.i.2.i.i1937 = zext i1 %cmp4.i.2.i.i1936 to i32
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 39, i32 %conv.i.2.i.i1937) #7
  br label %cabac_subpartition_b.exit.2.i.i1943

if.then2.i.2.i1392.i1939:                         ; preds = %if.end.i.2.i1391.i1935
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 37, i32 1) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 38, i32 0) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 39, i32 0) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 39, i32 0) #7
  br label %cabac_subpartition_b.exit.2.i.i1943

if.then.i.2.i1393.i1940:                          ; preds = %cabac_subpartition_b.exit.1.i.i1933
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 36, i32 0) #7
  br label %cabac_subpartition_b.exit.2.i.i1943

cabac_subpartition_b.exit.2.i.i1943:              ; preds = %if.then.i.2.i1393.i1940, %if.then2.i.2.i1392.i1939, %if.end3.i.2.i.i1938
  %arrayidx29.3.i.i1941 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 78, i32 3
  %816 = load i8, i8* %arrayidx29.3.i.i1941, align 1, !tbaa !40
  %cmp.i.3.i1394.i1942 = icmp eq i8 %816, 12
  br i1 %cmp.i.3.i1394.i1942, label %if.then.i.3.i1398.i1950, label %if.end.i.3.i1396.i1945

if.end.i.3.i1396.i1945:                           ; preds = %cabac_subpartition_b.exit.2.i.i1943
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 36, i32 1) #7
  %cmp1.i.3.i1395.i1944 = icmp eq i8 %816, 11
  br i1 %cmp1.i.3.i1395.i1944, label %if.then2.i.3.i1397.i1949, label %if.end3.i.3.i.i1948

if.end3.i.3.i.i1948:                              ; preds = %if.end.i.3.i1396.i1945
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 37, i32 0) #7
  %cmp4.i.3.i.i1946 = icmp eq i8 %816, 7
  %conv.i.3.i.i1947 = zext i1 %cmp4.i.3.i.i1946 to i32
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 39, i32 %conv.i.3.i.i1947) #7
  br label %cabac_subpartition_b.exit.3.i.i1953

if.then2.i.3.i1397.i1949:                         ; preds = %if.end.i.3.i1396.i1945
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 37, i32 1) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 38, i32 0) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 39, i32 0) #7
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 39, i32 0) #7
  br label %cabac_subpartition_b.exit.3.i.i1953

if.then.i.3.i1398.i1950:                          ; preds = %cabac_subpartition_b.exit.2.i.i1943
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 36, i32 0) #7
  br label %cabac_subpartition_b.exit.3.i.i1953

cabac_subpartition_b.exit.3.i.i1953:              ; preds = %if.then.i.3.i1398.i1950, %if.then2.i.3.i1397.i1949, %if.end3.i.3.i.i1948
  %arrayidx32.i.i1951 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 17, i32 0
  %817 = load i32, i32* %arrayidx32.i.i1951, align 4, !tbaa !51
  %cmp33.i.i1952 = icmp sgt i32 %817, 1
  br i1 %cmp33.i.i1952, label %for.body41.preheader.i.i1609, label %if.end52.i.i1627

if.else245.1.i.i1956:                             ; preds = %for.inc302.i.i1788
  %cmp248.1.i.i1954 = icmp eq i32 %780, 14
  %818 = add nsw i32 %665, -11
  %tobool253.1.i.i1955 = icmp ult i32 %818, 6
  br i1 %cmp248.1.i.i1954, label %if.then250.1.i.i1982, label %if.else275.1.i.i1957

if.else275.1.i.i1957:                             ; preds = %if.else245.1.i.i1956
  br i1 %tobool253.1.i.i1955, label %do.body280.1.i.i1968, label %if.end287.1.i.i1970

do.body280.1.i.i1968:                             ; preds = %if.else275.1.i.i1957
  %call282.1.i.i1958 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 1, i32 0, i32 2) #7
  %819 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 12, i32 0
  %conv7.i490.1.i.i1959 = zext i16 %call282.1.i.i1958 to i32
  %mul8.i.i491.1.i.i1960 = mul nuw i32 %conv7.i490.1.i.i1959, 65537
  %i42.i.i492.1.i.i1961 = bitcast i8* %819 to i32*
  store i32 %mul8.i.i491.1.i.i1960, i32* %i42.i.i492.1.i.i1961, align 4, !tbaa !40
  %add.ptr48.i.i493.1.i.i1962 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 12, i32 16
  %i49.i.i494.1.i.i1963 = bitcast i8* %add.ptr48.i.i493.1.i.i1962 to i32*
  store i32 %mul8.i.i491.1.i.i1960, i32* %i49.i.i494.1.i.i1963, align 4, !tbaa !40
  %add.ptr55.i.i.1.i.i1964 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 12, i32 32
  %i56.i.i.1.i.i1965 = bitcast i8* %add.ptr55.i.i.1.i.i1964 to i32*
  store i32 %mul8.i.i491.1.i.i1960, i32* %i56.i.i.1.i.i1965, align 4, !tbaa !40
  %add.ptr58.i.i.1.i.i1966 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 12, i32 48
  %i59.i.i.1.i.i1967 = bitcast i8* %add.ptr58.i.i.1.i.i1966 to i32*
  store i32 %mul8.i.i491.1.i.i1960, i32* %i59.i.i.1.i.i1967, align 4, !tbaa !40
  br label %if.end287.1.i.i1970

if.end287.1.i.i1970:                              ; preds = %do.body280.1.i.i1968, %if.else275.1.i.i1957
  %820 = lshr i32 412159, %665
  %821 = and i32 %820, 1
  %tobool290.1.i.i1969 = icmp eq i32 %821, 0
  br i1 %tobool290.1.i.i1969, label %do.body292.1.i.i1981, label %if.end7.i2107

do.body292.1.i.i1981:                             ; preds = %if.end287.1.i.i1970
  %call294.1.i.i1971 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 1, i32 4, i32 2) #7
  %822 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 14, i32 0
  %conv7.i496.1.i.i1972 = zext i16 %call294.1.i.i1971 to i32
  %mul8.i.i497.1.i.i1973 = mul nuw i32 %conv7.i496.1.i.i1972, 65537
  %i42.i.i498.1.i.i1974 = bitcast i8* %822 to i32*
  store i32 %mul8.i.i497.1.i.i1973, i32* %i42.i.i498.1.i.i1974, align 4, !tbaa !40
  %add.ptr48.i.i499.1.i.i1975 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 14, i32 16
  %i49.i.i500.1.i.i1976 = bitcast i8* %add.ptr48.i.i499.1.i.i1975 to i32*
  store i32 %mul8.i.i497.1.i.i1973, i32* %i49.i.i500.1.i.i1976, align 4, !tbaa !40
  %add.ptr55.i.i501.1.i.i1977 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 14, i32 32
  %i56.i.i502.1.i.i1978 = bitcast i8* %add.ptr55.i.i501.1.i.i1977 to i32*
  store i32 %mul8.i.i497.1.i.i1973, i32* %i56.i.i502.1.i.i1978, align 4, !tbaa !40
  %add.ptr58.i.i503.1.i.i1979 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 14, i32 48
  %i59.i.i504.1.i.i1980 = bitcast i8* %add.ptr58.i.i503.1.i.i1979 to i32*
  store i32 %mul8.i.i497.1.i.i1973, i32* %i59.i.i504.1.i.i1980, align 4, !tbaa !40
  br label %if.end7.i2107

if.then250.1.i.i1982:                             ; preds = %if.else245.1.i.i1956
  br i1 %tobool253.1.i.i1955, label %do.body255.1.i.i1993, label %if.end262.1.i.i1995

do.body255.1.i.i1993:                             ; preds = %if.then250.1.i.i1982
  %call257.1.i.i1983 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 1, i32 0, i32 4) #7
  %823 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 12, i32 0
  %conv7.i470.1.i.i1984 = zext i16 %call257.1.i.i1983 to i32
  %mul8.i.i471.1.i.i1985 = mul nuw i32 %conv7.i470.1.i.i1984, 65537
  %i67.i.i472.1.i.i1986 = bitcast i8* %823 to i32*
  store i32 %mul8.i.i471.1.i.i1985, i32* %i67.i.i472.1.i.i1986, align 4, !tbaa !40
  %add.ptr70.i.i473.1.i.i1987 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 12, i32 4
  %i71.i.i474.1.i.i1988 = bitcast i8* %add.ptr70.i.i473.1.i.i1987 to i32*
  store i32 %mul8.i.i471.1.i.i1985, i32* %i71.i.i474.1.i.i1988, align 4, !tbaa !40
  %add.ptr77.i.i475.1.i.i1989 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 12, i32 16
  %i79.i.i476.1.i.i1990 = bitcast i8* %add.ptr77.i.i475.1.i.i1989 to i32*
  store i32 %mul8.i.i471.1.i.i1985, i32* %i79.i.i476.1.i.i1990, align 4, !tbaa !40
  %add.ptr82.i.i477.1.i.i1991 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 12, i32 20
  %i83.i.i478.1.i.i1992 = bitcast i8* %add.ptr82.i.i477.1.i.i1991 to i32*
  store i32 %mul8.i.i471.1.i.i1985, i32* %i83.i.i478.1.i.i1992, align 4, !tbaa !40
  br label %if.end262.1.i.i1995

if.end262.1.i.i1995:                              ; preds = %do.body255.1.i.i1993, %if.then250.1.i.i1982
  %824 = lshr i32 412159, %665
  %825 = and i32 %824, 1
  %tobool265.1.i.i1994 = icmp eq i32 %825, 0
  br i1 %tobool265.1.i.i1994, label %do.body267.1.i.i2006, label %if.end7.i2107

do.body267.1.i.i2006:                             ; preds = %if.end262.1.i.i1995
  %call269.1.i.i1996 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 1, i32 8, i32 4) #7
  %826 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 28, i32 0
  %conv7.i480.1.i.i1997 = zext i16 %call269.1.i.i1996 to i32
  %mul8.i.i481.1.i.i1998 = mul nuw i32 %conv7.i480.1.i.i1997, 65537
  %i67.i.i482.1.i.i1999 = bitcast i8* %826 to i32*
  store i32 %mul8.i.i481.1.i.i1998, i32* %i67.i.i482.1.i.i1999, align 4, !tbaa !40
  %add.ptr70.i.i483.1.i.i2000 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 28, i32 4
  %i71.i.i484.1.i.i2001 = bitcast i8* %add.ptr70.i.i483.1.i.i2000 to i32*
  store i32 %mul8.i.i481.1.i.i1998, i32* %i71.i.i484.1.i.i2001, align 4, !tbaa !40
  %add.ptr77.i.i485.1.i.i2002 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 28, i32 16
  %i79.i.i486.1.i.i2003 = bitcast i8* %add.ptr77.i.i485.1.i.i2002 to i32*
  store i32 %mul8.i.i481.1.i.i1998, i32* %i79.i.i486.1.i.i2003, align 4, !tbaa !40
  %add.ptr82.i.i487.1.i.i2004 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 28, i32 20
  %i83.i.i488.1.i.i2005 = bitcast i8* %add.ptr82.i.i487.1.i.i2004 to i32*
  store i32 %mul8.i.i481.1.i.i1998, i32* %i83.i.i488.1.i.i2005, align 4, !tbaa !40
  br label %if.end7.i2107

if.then232.1.i.i2008:                             ; preds = %for.inc302.i.i1788
  %827 = add nsw i32 %665, -11
  %tobool235.1.i.i2007 = icmp ugt i32 %827, 5
  br i1 %tobool235.1.i.i2007, label %if.end7.i2107, label %do.body237.1.i.i2027

do.body237.1.i.i2027:                             ; preds = %if.then232.1.i.i2008
  %call239.1.i.i2009 = tail call fastcc zeroext i16 @cabac_mvd(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 1, i32 0, i32 4) #7
  %828 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 12, i32 0
  %conv7.i467.1.i.i2010 = zext i16 %call239.1.i.i2009 to i32
  %mul8.i.i468.1.i.i2011 = mul nuw i32 %conv7.i467.1.i.i2010, 65537
  %i67.i.i.1.i.i2012 = bitcast i8* %828 to i32*
  store i32 %mul8.i.i468.1.i.i2011, i32* %i67.i.i.1.i.i2012, align 4, !tbaa !40
  %add.ptr70.i.i.1.i.i2013 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 12, i32 4
  %i71.i.i.1.i.i2014 = bitcast i8* %add.ptr70.i.i.1.i.i2013 to i32*
  store i32 %mul8.i.i468.1.i.i2011, i32* %i71.i.i.1.i.i2014, align 4, !tbaa !40
  %add.ptr77.i.i.1.i.i2015 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 12, i32 16
  %i79.i.i.1.i.i2016 = bitcast i8* %add.ptr77.i.i.1.i.i2015 to i32*
  store i32 %mul8.i.i468.1.i.i2011, i32* %i79.i.i.1.i.i2016, align 4, !tbaa !40
  %add.ptr82.i.i.1.i.i2017 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 12, i32 20
  %i83.i.i.1.i.i2018 = bitcast i8* %add.ptr82.i.i.1.i.i2017 to i32*
  store i32 %mul8.i.i468.1.i.i2011, i32* %i83.i.i.1.i.i2018, align 4, !tbaa !40
  %add.ptr89.i.i.1.i.i2019 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 12, i32 32
  %i91.i.i.1.i.i2020 = bitcast i8* %add.ptr89.i.i.1.i.i2019 to i32*
  store i32 %mul8.i.i468.1.i.i2011, i32* %i91.i.i.1.i.i2020, align 4, !tbaa !40
  %add.ptr94.i.i.1.i.i2021 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 12, i32 36
  %i95.i.i.1.i.i2022 = bitcast i8* %add.ptr94.i.i.1.i.i2021 to i32*
  store i32 %mul8.i.i468.1.i.i2011, i32* %i95.i.i.1.i.i2022, align 4, !tbaa !40
  %add.ptr97.i.i.1.i.i2023 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 12, i32 48
  %i99.i.i.1.i.i2024 = bitcast i8* %add.ptr97.i.i.1.i.i2023 to i32*
  store i32 %mul8.i.i468.1.i.i2011, i32* %i99.i.i.1.i.i2024, align 4, !tbaa !40
  %add.ptr102.i.i.1.i.i2025 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 1, i32 12, i32 52
  %i103.i.i.1.i.i2026 = bitcast i8* %add.ptr102.i.i.1.i.i2025 to i32*
  store i32 %mul8.i.i468.1.i.i2011, i32* %i103.i.i.1.i.i2026, align 4, !tbaa !40
  br label %if.end7.i2107

if.else6.i2031:                                   ; preds = %if.else5
  %i_neighbour.i1399.i2028 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 37
  %829 = load i32, i32* %i_neighbour.i1399.i2028, align 32, !tbaa !56
  %and.i1400.i2029 = and i32 %829, 1
  %tobool.i1401.i2030 = icmp eq i32 %and.i1400.i2029, 0
  br i1 %tobool.i1401.i2030, label %if.end.i1406.i2039, label %land.lhs.true.i1404.i2035

land.lhs.true.i1404.i2035:                        ; preds = %if.else6.i2031
  %arrayidx.i1403.i2032 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 43, i32 0
  %830 = load i32, i32* %arrayidx.i1403.i2032, align 64, !tbaa !51
  %cmp2.i.i2033 = icmp ne i32 %830, 0
  %spec.select.i.i2034 = zext i1 %cmp2.i.i2033 to i32
  br label %if.end.i1406.i2039

if.end.i1406.i2039:                               ; preds = %land.lhs.true.i1404.i2035, %if.else6.i2031
  %ctx.0.i1405.i2036 = phi i32 [ 0, %if.else6.i2031 ], [ %spec.select.i.i2034, %land.lhs.true.i1404.i2035 ]
  %and6.i.i2037 = and i32 %829, 2
  %tobool7.i.i2038 = icmp eq i32 %and6.i.i2037, 0
  br i1 %tobool7.i.i2038, label %if.end13.i.i2047, label %land.lhs.true8.i.i2044

land.lhs.true8.i.i2044:                           ; preds = %if.end.i1406.i2039
  %i_mb_type_top.i1407.i2040 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 42
  %831 = load i32, i32* %i_mb_type_top.i1407.i2040, align 4, !tbaa !57
  %cmp10.i.i2041 = icmp ne i32 %831, 0
  %inc12.i.i2042 = zext i1 %cmp10.i.i2041 to i32
  %spec.select83.i.i2043 = add nuw nsw i32 %ctx.0.i1405.i2036, %inc12.i.i2042
  br label %if.end13.i.i2047

if.end13.i.i2047:                                 ; preds = %land.lhs.true8.i.i2044, %if.end.i1406.i2039
  %ctx.1.i1408.i2045 = phi i32 [ %ctx.0.i1405.i2036, %if.end.i1406.i2039 ], [ %spec.select83.i.i2043, %land.lhs.true8.i.i2044 ]
  %add.i1409.i2046 = add nuw nsw i32 %ctx.1.i1408.i2045, 3
  tail call fastcc void @cabac_mb_type_intra(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* nonnull %cb, i32 %665, i32 %add.i1409.i2046, i32 6, i32 7, i32 8, i32 9, i32 10) #7
  %832 = and i32 %665, -2
  %switch2583 = icmp eq i32 %832, 2
  br i1 %switch2583, label %if.end7.i2107, label %if.then26.i1410.i2050

if.then26.i1410.i2050:                            ; preds = %if.end13.i.i2047
  %b_transform_8x8_mode.i.i2048 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 53, i32 0, i32 15
  %833 = load i32, i32* %b_transform_8x8_mode.i.i2048, align 4, !tbaa !52
  %tobool27.i.i2049 = icmp eq i32 %833, 0
  br i1 %tobool27.i.i2049, label %if.end29.i.i2060, label %if.then28.i.i2056

if.then28.i.i2056:                                ; preds = %if.then26.i1410.i2050
  %h.idx.i.i2051 = getelementptr %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 79
  %h.idx.val.i.i2052 = load i32, i32* %h.idx.i.i2051, align 4, !tbaa !54
  %h.idx84.i.i2053 = getelementptr %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 10
  %h.idx84.val.i.i2054 = load i32, i32* %h.idx84.i.i2053, align 8, !tbaa !55
  %add.i.i.i2055 = add nsw i32 %h.idx84.val.i.i2054, 399
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 %add.i.i.i2055, i32 %h.idx.val.i.i2052) #7
  br label %if.end29.i.i2060

if.end29.i.i2060:                                 ; preds = %if.then28.i.i2056, %if.then26.i1410.i2050
  %b_transform_8x8.i.i2057 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 79
  %834 = load i32, i32* %b_transform_8x8.i.i2057, align 4, !tbaa !54
  %tobool31.i.i2058 = icmp eq i32 %834, 0
  %cond.i.i2059 = select i1 %tobool31.i.i2058, i32 1, i32 4
  br label %for.body.i.i2083

for.body.i.i2083:                                 ; preds = %cabac_intra4x4_pred_mode.exit.i.i2096, %if.end29.i.i2060
  %i.091.i.i2061 = phi i32 [ 0, %if.end29.i.i2060 ], [ %add39.i.i2094, %cabac_intra4x4_pred_mode.exit.i.i2096 ]
  %arrayidx.i.i1411.i2062 = getelementptr inbounds [51 x i8], [51 x i8]* @x264_scan8, i32 0, i32 %i.091.i.i2061
  %835 = load i8, i8* %arrayidx.i.i1411.i2062, align 1, !tbaa !40
  %conv.i.i1412.i2063 = zext i8 %835 to i32
  %sub.i.i.i2064 = add nsw i32 %conv.i.i1412.i2063, -1
  %arrayidx1.i.i.i2065 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 0, i32 %sub.i.i.i2064
  %836 = load i8, i8* %arrayidx1.i.i.i2065, align 1, !tbaa !40
  %conv2.i.i.i2066 = sext i8 %836 to i32
  %sub9.i.i.i2067 = add nsw i32 %conv.i.i1412.i2063, -8
  %arrayidx10.i.i.i2068 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 0, i32 %sub9.i.i.i2067
  %837 = load i8, i8* %arrayidx10.i.i.i2068, align 1, !tbaa !40
  %conv11.i.i.i2069 = sext i8 %837 to i32
  %add.i85.i.i2070 = add nsw i32 %conv2.i.i.i2066, 1
  %arrayidx12.i.i.i2071 = getelementptr inbounds [13 x i8], [13 x i8]* @x264_mb_pred_mode4x4_fix, i32 0, i32 %add.i85.i.i2070
  %838 = load i8, i8* %arrayidx12.i.i.i2071, align 1, !tbaa !40
  %add14.i.i.i2072 = add nsw i32 %conv11.i.i.i2069, 1
  %arrayidx15.i.i.i2073 = getelementptr inbounds [13 x i8], [13 x i8]* @x264_mb_pred_mode4x4_fix, i32 0, i32 %add14.i.i.i2072
  %839 = load i8, i8* %arrayidx15.i.i.i2073, align 1, !tbaa !40
  %cmp.i.i1413.i2074 = icmp slt i8 %838, %839
  %..i.i.i2075 = select i1 %cmp.i.i1413.i2074, i8 %838, i8 %839
  %cmp24.i.i.i2076 = icmp slt i8 %..i.i.i2075, 0
  %narrow.i.i.i2077 = select i1 %cmp24.i.i.i2076, i8 2, i8 %..i.i.i2075
  %arrayidx35.i.i2078 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 0, i32 %conv.i.i1412.i2063
  %840 = load i8, i8* %arrayidx35.i.i2078, align 1, !tbaa !40
  %conv.i.i2079 = sext i8 %840 to i32
  %add36.i.i2080 = add nsw i32 %conv.i.i2079, 1
  %arrayidx37.i.i2081 = getelementptr inbounds [13 x i8], [13 x i8]* @x264_mb_pred_mode4x4_fix, i32 0, i32 %add36.i.i2080
  %841 = load i8, i8* %arrayidx37.i.i2081, align 1, !tbaa !40
  %cmp.i88.i.i2082 = icmp eq i8 %narrow.i.i.i2077, %841
  br i1 %cmp.i88.i.i2082, label %if.then.i.i1414.i2084, label %if.else.i.i1416.i2093

if.then.i.i1414.i2084:                            ; preds = %for.body.i.i2083
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 68, i32 1) #7
  br label %cabac_intra4x4_pred_mode.exit.i.i2096

if.else.i.i1416.i2093:                            ; preds = %for.body.i.i2083
  %conv38.i.i2085 = sext i8 %841 to i32
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 68, i32 0) #7
  %cmp1.i.i1415.i2086 = icmp sgt i8 %841, %narrow.i.i.i2077
  %dec.i.i.i2087 = sext i1 %cmp1.i.i1415.i2086 to i32
  %spec.select.i89.i.i2088 = add nsw i32 %dec.i.i.i2087, %conv38.i.i2085
  %and.i90.i.i2089 = and i32 %spec.select.i89.i.i2088, 1
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 69, i32 %and.i90.i.i2089) #7
  %shr15.i.i.i2090 = lshr i32 %spec.select.i89.i.i2088, 1
  %and3.i.i.i2091 = and i32 %shr15.i.i.i2090, 1
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 69, i32 %and3.i.i.i2091) #7
  %shr4.i.i.i2092 = ashr i32 %spec.select.i89.i.i2088, 2
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 69, i32 %shr4.i.i.i2092) #7
  br label %cabac_intra4x4_pred_mode.exit.i.i2096

cabac_intra4x4_pred_mode.exit.i.i2096:            ; preds = %if.else.i.i1416.i2093, %if.then.i.i1414.i2084
  %add39.i.i2094 = add nuw nsw i32 %i.091.i.i2061, %cond.i.i2059
  %cmp32.i.i2095 = icmp ult i32 %add39.i.i2094, 16
  br i1 %cmp32.i.i2095, label %for.body.i.i2083, label %if.end7.i2107

if.end7.i2107:                                    ; preds = %cabac_intra4x4_pred_mode.exit.i.i1351.i1838, %cabac_8x8_mvd.exit.i.i1499, %cabac_intra4x4_pred_mode.exit.i.i.i1549, %cabac_intra4x4_pred_mode.exit.i.i2096, %if.end13.i.i2047, %if.else305.i.i1789, %if.else81.i.i1500, %do.body237.1.i.i2027, %if.then232.1.i.i2008, %do.body267.1.i.i2006, %if.end262.1.i.i1995, %do.body292.1.i.i1981, %if.end287.1.i.i1970, %do.body116.3.i.i1868, %for.inc129.2.i.i1861, %if.then22.i.i1600, %do.body41.i.i1371, %do.body20.i.i1346, %do.body.i.i1319
  %842 = load i32, i32* %666, align 4, !tbaa !46
  %843 = load i32, i32* %668, align 16, !tbaa !47
  %sub.ptr.sub.i1422.i2098 = sub i32 %842, %843
  %844 = load i32, i32* %i_bytes_outstanding.i.i1289, align 4, !tbaa !48
  %add.i1424.i2099 = add nsw i32 %sub.ptr.sub.i1422.i2098, %844
  %mul.i1425.i2100 = shl i32 %add.i1424.i2099, 3
  %845 = load i32, i32* %i_queue.i.i1291, align 8, !tbaa !49
  %add1.i1427.i2101 = add nsw i32 %mul.i1425.i2100, %845
  %mul.i.neg.i2102 = mul i32 %add.i.i1290, -8
  %add1.i.neg.i2103 = sub i32 %mul.i.neg.i2102, %671
  %i_mv_bits.i2104 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 72, i32 21, i32 0
  %846 = load i32, i32* %i_mv_bits.i2104, align 8, !tbaa !58
  %sub.i2105 = add i32 %add1.i.neg.i2103, %846
  %add.i2106 = add i32 %sub.i2105, %add1.i1427.i2101
  store i32 %add.i2106, i32* %i_mv_bits.i2104, align 8, !tbaa !58
  switch i32 %665, label %if.then68.i2200 [
    i32 3, label %if.then10.i2114
    i32 2, label %if.end72.i2203
  ]

if.then10.i2114:                                  ; preds = %if.end7.i2107
  %847 = inttoptr i32 %842 to i8*
  %and.i1428.i2108 = and i32 %842, 3
  %idx.neg.i.i2109 = sub nsw i32 0, %and.i1428.i2108
  %add.ptr.i.i2110 = getelementptr inbounds i8, i8* %847, i32 %idx.neg.i.i2109
  %848 = ptrtoint i8* %add.ptr.i.i2110 to i32
  %sub.i.i2111 = shl nuw nsw i32 %and.i1428.i2108, 3
  %mul.i1431.i2112 = sub nuw nsw i32 32, %sub.i.i2111
  %tobool.i1432.i2113 = icmp eq i32 %and.i1428.i2108, 0
  br i1 %tobool.i1432.i2113, label %bs_init.exit.i2119, label %if.then.i1433.i2117

if.then.i1433.i2117:                              ; preds = %if.then10.i2114
  %849 = bitcast i8* %add.ptr.i.i2110 to i32*
  %850 = load i32, i32* %849, align 4, !tbaa !40
  %add5.i.i.i2115 = tail call i32 @llvm.bswap.i32(i32 %850) #7
  %shr.i.i2116 = lshr i32 %add5.i.i.i2115, %mul.i1431.i2112
  br label %bs_init.exit.i2119

bs_init.exit.i2119:                               ; preds = %if.then.i1433.i2117, %if.then10.i2114
  %shr.sink.i.i2118 = phi i32 [ %shr.i.i2116, %if.then.i1433.i2117 ], [ 0, %if.then10.i2114 ]
  %arrayidx.i2124 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 14, i32 0
  br label %for.body17.i2137

for.cond.cleanup16.i2129:                         ; preds = %bs_write.exit.i2155
  %and.i1465.i2156 = and i32 %sub13.i.i2148, 24
  %shl.i1466.i2157 = shl i32 %s.sroa.15.2.i2150, %and.i1465.i2156
  %add5.i.i1467.i2158 = tail call i32 @llvm.bswap.i32(i32 %shl.i1466.i2157) #7
  %851 = inttoptr i32 %s.sroa.3.2.i2151 to i32*
  store i32 %add5.i.i1467.i2158, i32* %851, align 4, !tbaa !40
  %shr.i1469.i2159 = ashr exact i32 %sub13.i.i2148, 3
  %sub.i1470.i2160 = sub nsw i32 4, %shr.i1469.i2159
  %852 = inttoptr i32 %s.sroa.3.2.i2151 to i8*
  %add.ptr.i1471.i2161 = getelementptr inbounds i8, i8* %852, i32 %sub.i1470.i2160
  %853 = ptrtoint i8* %add.ptr.i1471.i2161 to i32
  store i32 %853, i32* %666, align 4, !tbaa !46
  tail call void @x264_8_cabac_encode_init_core(%struct.x264_cabac_t* %cb) #7
  %854 = load i32, i32* %666, align 4, !tbaa !46
  %855 = load i32, i32* %668, align 16, !tbaa !47
  %sub.ptr.sub.i1474.i2162 = sub i32 %854, %855
  %856 = load i32, i32* %i_bytes_outstanding.i.i1289, align 4, !tbaa !48
  %add.i1476.i2163 = add nsw i32 %sub.ptr.sub.i1474.i2162, %856
  %857 = load i32, i32* %i_queue.i.i1291, align 8, !tbaa !49
  %i_tex_bits.i2165 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 72, i32 21, i32 1
  %add1.i1479.i2166 = sub i32 %857, %add1.i1427.i2101
  br label %if.end6

for.body17.i2137:                                 ; preds = %bs_write.exit.i2155, %bs_init.exit.i2119
  %i.01760.i2130 = phi i32 [ 0, %bs_init.exit.i2119 ], [ %inc.i2153, %bs_write.exit.i2155 ]
  %s.sroa.25.11759.i2131 = phi i32 [ %mul.i1431.i2112, %bs_init.exit.i2119 ], [ %sub13.i.i2148, %bs_write.exit.i2155 ]
  %s.sroa.3.11758.i2132 = phi i32 [ %848, %bs_init.exit.i2119 ], [ %s.sroa.3.2.i2151, %bs_write.exit.i2155 ]
  %s.sroa.15.11757.i2133 = phi i32 [ %shr.sink.i.i2118, %bs_init.exit.i2119 ], [ %s.sroa.15.2.i2150, %bs_write.exit.i2155 ]
  %858 = load i8*, i8** %arrayidx.i2124, align 4, !tbaa !39
  %arrayidx19.i2134 = getelementptr inbounds i8, i8* %858, i32 %i.01760.i2130
  %859 = load i8, i8* %arrayidx19.i2134, align 1, !tbaa !40
  %conv.i2135 = zext i8 %859 to i32
  %cmp.i.i2136 = icmp sgt i32 %s.sroa.25.11759.i2131, 8
  br i1 %cmp.i.i2136, label %if.then.i1437.i2141, label %if.else.i1441.i2149

if.then.i1437.i2141:                              ; preds = %for.body17.i2137
  %shl.i.i2138 = shl i32 %s.sroa.15.11757.i2133, 8
  %or.i.i2139 = or i32 %shl.i.i2138, %conv.i2135
  br label %bs_write.exit.i2155

if.else.i1441.i2149:                              ; preds = %for.body17.i2137
  %sub4.i.i2142 = sub nsw i32 8, %s.sroa.25.11759.i2131
  %shl7.i.i2143 = shl i32 %s.sroa.15.11757.i2133, %s.sroa.25.11759.i2131
  %shr.i1438.i2144 = lshr i32 %conv.i2135, %sub4.i.i2142
  %or8.i.i2145 = or i32 %shr.i1438.i2144, %shl7.i.i2143
  %add5.i.i.i.i2146 = tail call i32 @llvm.bswap.i32(i32 %or8.i.i2145) #7
  %860 = inttoptr i32 %s.sroa.3.11758.i2132 to i32*
  store i32 %add5.i.i.i.i2146, i32* %860, align 4, !tbaa !40
  %861 = inttoptr i32 %s.sroa.3.11758.i2132 to i8*
  %add.ptr.i1440.i2147 = getelementptr inbounds i8, i8* %861, i32 4
  %862 = ptrtoint i8* %add.ptr.i1440.i2147 to i32
  br label %bs_write.exit.i2155

bs_write.exit.i2155:                              ; preds = %if.else.i1441.i2149, %if.then.i1437.i2141
  %.sink2660 = phi i32 [ 24, %if.else.i1441.i2149 ], [ -8, %if.then.i1437.i2141 ]
  %s.sroa.15.2.i2150 = phi i32 [ %conv.i2135, %if.else.i1441.i2149 ], [ %or.i.i2139, %if.then.i1437.i2141 ]
  %s.sroa.3.2.i2151 = phi i32 [ %862, %if.else.i1441.i2149 ], [ %s.sroa.3.11758.i2132, %if.then.i1437.i2141 ]
  %sub13.i.i2148 = add nsw i32 %s.sroa.25.11759.i2131, %.sink2660
  %inc.i2153 = add nuw nsw i32 %i.01760.i2130, 1
  %exitcond1816.i2154 = icmp eq i32 %inc.i2153, 256
  br i1 %exitcond1816.i2154, label %for.cond.cleanup16.i2129, label %for.body17.i2137

if.then68.i2200:                                  ; preds = %if.end7.i2107
  %h.idx1252.i2170 = getelementptr %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 80
  %h.idx1252.val.i2171 = load i32, i32* %h.idx1252.i2170, align 32, !tbaa !59
  %h.idx1253.i2172 = getelementptr %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 12
  %h.idx1253.val.i2173 = load i32, i32* %h.idx1253.i2172, align 16, !tbaa !60
  %h.idx1254.i2174 = getelementptr %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 13
  %h.idx1254.val.i2175 = load i32, i32* %h.idx1254.i2174, align 4, !tbaa !61
  %shr49.i.i2176 = lshr i32 %h.idx1254.val.i2175, 1
  %and.i1480.i2177 = and i32 %shr49.i.i2176, 1
  %863 = lshr i32 %h.idx1253.val.i2173, 1
  %and5.i.i2178 = and i32 %863, 2
  %sub.i1481.i2179 = sub nuw nsw i32 76, %and5.i.i2178
  %sub6.i.i2180 = sub nuw nsw i32 %sub.i1481.i2179, %and.i1480.i2177
  %and8.i.i2181 = and i32 %h.idx1252.val.i2171, 1
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 %sub6.i.i2180, i32 %and8.i.i2181) #7
  %sub11.i.i2182 = sub nuw nsw i32 76, %and8.i.i2181
  %864 = lshr i32 %h.idx1253.val.i2173, 2
  %and13.i.i2183 = and i32 %864, 2
  %sub14.i.i2184 = sub nuw nsw i32 %sub11.i.i2182, %and13.i.i2183
  %shr1550.i.i2185 = lshr i32 %h.idx1252.val.i2171, 1
  %and16.i.i2186 = and i32 %shr1550.i.i2185, 1
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 %sub14.i.i2184, i32 %and16.i.i2186) #7
  %shr1751.i.i2187 = lshr i32 %h.idx1254.val.i2175, 3
  %and18.i.i2188 = and i32 %shr1751.i.i2187, 1
  %shl.i1482.i2189 = shl i32 %h.idx1252.val.i2171, 1
  %and20.i.i2190 = and i32 %shl.i1482.i2189, 2
  %sub19.i.i2191 = sub nuw nsw i32 76, %and20.i.i2190
  %sub21.i.i2192 = sub nuw nsw i32 %sub19.i.i2191, %and18.i.i2188
  %shr2252.i.i2193 = lshr i32 %h.idx1252.val.i2171, 2
  %and23.i.i2194 = and i32 %shr2252.i.i2193, 1
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 %sub21.i.i2192, i32 %and23.i.i2194) #7
  %and28.i.i2195 = and i32 %h.idx1252.val.i2171, 2
  %sub26.i.i2196 = sub nuw nsw i32 76, %and28.i.i2195
  %sub29.i.i2197 = sub nuw nsw i32 %sub26.i.i2196, %and23.i.i2194
  %shr3053.i.i2198 = lshr i32 %h.idx1252.val.i2171, 3
  %and31.i.i2199 = and i32 %shr3053.i.i2198, 1
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 %sub29.i.i2197, i32 %and31.i.i2199) #7
  br label %if.end72.i2203

if.end72.i2203:                                   ; preds = %if.then68.i2200, %if.end7.i2107
  %b_transform_8x8_mode.i1493.i2201 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 53, i32 0, i32 15
  %865 = load i32, i32* %b_transform_8x8_mode.i1493.i2201, align 4, !tbaa !52
  %tobool.i1494.i2202 = icmp eq i32 %865, 0
  br i1 %tobool.i1494.i2202, label %if.end78.i2228, label %if.end.i1496.i2205

if.end.i1496.i2205:                               ; preds = %if.end72.i2203
  %866 = load i32, i32* %i_type.i1285, align 16, !tbaa !45
  %cmp.i1495.i2204 = icmp eq i32 %866, 5
  br i1 %cmp.i1495.i2204, label %if.end4.i.i2213, label %if.then1.i.i2208

if.then1.i.i2208:                                 ; preds = %if.end.i1496.i2205
  %arrayidx.i1497.i2206 = getelementptr inbounds [19 x i8], [19 x i8]* @x264_transform_allowed, i32 0, i32 %866
  %867 = load i8, i8* %arrayidx.i1497.i2206, align 1, !tbaa !40
  %conv.i1498.i2207 = zext i8 %867 to i32
  br label %x264_mb_transform_8x8_allowed.exit.i2216

if.end4.i.i2213:                                  ; preds = %if.end.i1496.i2205
  %arraydecay6.i.i2209 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 78, i32 0
  %i.i.i2210 = bitcast i8* %arraydecay6.i.i2209 to i32*
  %868 = load i32, i32* %i.i.i2210, align 8, !tbaa !40
  %cmp7.i.i2211 = icmp eq i32 %868, 50529027
  %conv8.i.i2212 = zext i1 %cmp7.i.i2211 to i32
  br label %x264_mb_transform_8x8_allowed.exit.i2216

x264_mb_transform_8x8_allowed.exit.i2216:         ; preds = %if.end4.i.i2213, %if.then1.i.i2208
  %retval.0.i.i2214 = phi i32 [ %conv.i1498.i2207, %if.then1.i.i2208 ], [ %conv8.i.i2212, %if.end4.i.i2213 ]
  %tobool74.i2215 = icmp eq i32 %retval.0.i.i2214, 0
  br i1 %tobool74.i2215, label %if.end78.i2228, label %land.lhs.true.i2219

land.lhs.true.i2219:                              ; preds = %x264_mb_transform_8x8_allowed.exit.i2216
  %i_cbp_luma.i2217 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 80
  %869 = load i32, i32* %i_cbp_luma.i2217, align 32, !tbaa !59
  %tobool76.i2218 = icmp eq i32 %869, 0
  br i1 %tobool76.i2218, label %if.end78.i2228, label %if.then77.i2225

if.then77.i2225:                                  ; preds = %land.lhs.true.i2219
  %h.idx.i2220 = getelementptr %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 79
  %h.idx.val.i2221 = load i32, i32* %h.idx.i2220, align 4, !tbaa !54
  %h.idx1251.i2222 = getelementptr %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 10
  %h.idx1251.val.i2223 = load i32, i32* %h.idx1251.i2222, align 8, !tbaa !55
  %add.i1499.i2224 = add nsw i32 %h.idx1251.val.i2223, 399
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* nonnull %cb, i32 %add.i1499.i2224, i32 %h.idx.val.i2221) #7
  br label %if.end78.i2228

if.end78.i2228:                                   ; preds = %if.then77.i2225, %land.lhs.true.i2219, %x264_mb_transform_8x8_allowed.exit.i2216, %if.end72.i2203
  %i_cbp_luma80.i2226 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 80
  %870 = load i32, i32* %i_cbp_luma80.i2226, align 32, !tbaa !59
  %tobool81.i2227 = icmp ne i32 %870, 0
  %cmp87.old.i2230 = icmp eq i32 %665, 2
  %or.cond2584 = or i1 %cmp87.old.i2230, %tobool81.i2227
  br i1 %or.cond2584, label %if.then89.i2237, label %if.end933.i2482

if.then89.i2237:                                  ; preds = %if.end78.i2228
  %871 = icmp ult i32 %665, 3
  %i_qp.i.i2233 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 93
  %872 = load i32, i32* %i_qp.i.i2233, align 32, !tbaa !62
  %i_last_qp.i.i2234 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 95
  %873 = load i32, i32* %i_last_qp.i.i2234, align 8, !tbaa !63
  %sub.i1500.i2235 = sub nsw i32 %872, %873
  %874 = load i32, i32* %i_type.i1285, align 16, !tbaa !45
  %cmp.i1502.i2236 = icmp eq i32 %874, 2
  br i1 %cmp.i1502.i2236, label %land.lhs.true.i1506.i2244, label %if.end.i1508.i2249

land.lhs.true.i1506.i2244:                        ; preds = %if.then89.i2237
  %cbp.i.i2238 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 63
  %875 = load i16*, i16** %cbp.i.i2238, align 8, !tbaa !64
  %i_mb_xy.i.i2239 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 12
  %876 = load i32, i32* %i_mb_xy.i.i2239, align 8, !tbaa !65
  %arrayidx.i1503.i2240 = getelementptr inbounds i16, i16* %875, i32 %876
  %877 = load i16, i16* %arrayidx.i1503.i2240, align 2, !tbaa !37
  %tobool.i1504.i2241 = icmp eq i16 %877, 0
  %cmp10.i1505.i2242 = icmp sgt i32 %872, %873
  %or.cond78.i.i2243 = and i1 %cmp10.i1505.i2242, %tobool.i1504.i2241
  br i1 %or.cond78.i.i2243, label %if.then.i1507.i2245, label %if.end.i1508.i2249

if.then.i1507.i2245:                              ; preds = %land.lhs.true.i1506.i2244
  store i32 %873, i32* %i_qp.i.i2233, align 32, !tbaa !62
  br label %if.end.i1508.i2249

if.end.i1508.i2249:                               ; preds = %if.then.i1507.i2245, %land.lhs.true.i1506.i2244, %if.then89.i2237
  %i_dqp.0.i.i2246 = phi i32 [ %sub.i1500.i2235, %land.lhs.true.i1506.i2244 ], [ 0, %if.then.i1507.i2245 ], [ %sub.i1500.i2235, %if.then89.i2237 ]
  %i_last_dqp.i.i2247 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 96
  %878 = load i32, i32* %i_last_dqp.i.i2247, align 4, !tbaa !66
  %tobool16.i.i2248 = icmp eq i32 %878, 0
  br i1 %tobool16.i.i2248, label %land.end.i.i2261, label %land.rhs.i.i2254

land.rhs.i.i2254:                                 ; preds = %if.end.i1508.i2249
  %type.i.i2250 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 60
  %879 = load i8*, i8** %type.i.i2250, align 4, !tbaa !67
  %i_mb_prev_xy.i.i2251 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 46
  %880 = load i32, i32* %i_mb_prev_xy.i.i2251, align 16, !tbaa !68
  %arrayidx19.i.i2252 = getelementptr inbounds i8, i8* %879, i32 %880
  %881 = load i8, i8* %arrayidx19.i.i2252, align 1, !tbaa !40
  %cmp20.i1509.i2253 = icmp eq i8 %881, 2
  br i1 %cmp20.i1509.i2253, label %land.end.i.i2261, label %lor.rhs.i.i2259

lor.rhs.i.i2259:                                  ; preds = %land.rhs.i.i2254
  %cbp23.i.i2255 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 63
  %882 = load i16*, i16** %cbp23.i.i2255, align 8, !tbaa !64
  %arrayidx26.i.i2256 = getelementptr inbounds i16, i16* %882, i32 %880
  %883 = load i16, i16* %arrayidx26.i.i2256, align 2, !tbaa !37
  %884 = and i16 %883, 63
  %tobool28.i.i2257 = icmp ne i16 %884, 0
  %phitmp.i.i2258 = zext i1 %tobool28.i.i2257 to i32
  br label %land.end.i.i2261

land.end.i.i2261:                                 ; preds = %lor.rhs.i.i2259, %land.rhs.i.i2254, %if.end.i1508.i2249
  %885 = phi i32 [ 0, %if.end.i1508.i2249 ], [ 1, %land.rhs.i.i2254 ], [ %phitmp.i.i2258, %lor.rhs.i.i2259 ]
  %cmp29.i.i2260 = icmp eq i32 %i_dqp.0.i.i2246, 0
  br i1 %cmp29.i.i2260, label %cabac_qp_delta.exit.i2283, label %if.then31.i.i2272

if.then31.i.i2272:                                ; preds = %land.end.i.i2261
  %mul.i1510.i2262 = shl nsw i32 %i_dqp.0.i.i2246, 1
  %sub32.i.i2263 = sub nsw i32 1, %mul.i1510.i2262
  %cmp33.i1511.i2264 = icmp sgt i32 %i_dqp.0.i.i2246, 0
  %spec.select.i1512.i2265 = select i1 %cmp33.i1511.i2264, i32 %mul.i1510.i2262, i32 %sub32.i.i2263
  %dec.i.i2266 = add nsw i32 %spec.select.i1512.i2265, -1
  %cmp37.i1513.i2267 = icmp sgt i32 %spec.select.i1512.i2265, 51
  %cmp40.i.i2268 = icmp ne i32 %dec.i.i2266, 52
  %or.cond.i.i2269 = and i1 %cmp37.i1513.i2267, %cmp40.i.i2268
  %sub43.i.i2270 = sub i32 104, %spec.select.i1512.i2265
  %val.1.i.i2271 = select i1 %or.cond.i.i2269, i32 %sub43.i.i2270, i32 %dec.i.i2266
  br label %do.body.i1517.i2280

do.body.i1517.i2280:                              ; preds = %do.body.i1517.i2280, %if.then31.i.i2272
  %ctx.0.i1514.i2273 = phi i32 [ %885, %if.then31.i.i2272 ], [ %add45.i.i2277, %do.body.i1517.i2280 ]
  %val.2.i.i2274 = phi i32 [ %val.1.i.i2271, %if.then31.i.i2272 ], [ %dec46.i.i2278, %do.body.i1517.i2280 ]
  %add.i1515.i2275 = add nsw i32 %ctx.0.i1514.i2273, 60
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add.i1515.i2275, i32 1) #7
  %shr.i1516.i2276 = ashr i32 %ctx.0.i1514.i2273, 1
  %add45.i.i2277 = add nsw i32 %shr.i1516.i2276, 2
  %dec46.i.i2278 = add nsw i32 %val.2.i.i2274, -1
  %tobool47.i.i2279 = icmp eq i32 %dec46.i.i2278, 0
  br i1 %tobool47.i.i2279, label %cabac_qp_delta.exit.i2283, label %do.body.i1517.i2280

cabac_qp_delta.exit.i2283:                        ; preds = %do.body.i1517.i2280, %land.end.i.i2261
  %ctx.1.i1518.i2281 = phi i32 [ %885, %land.end.i.i2261 ], [ %add45.i.i2277, %do.body.i1517.i2280 ]
  %add49.i.i2282 = add nsw i32 %ctx.1.i1518.i2281, 60
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add49.i.i2282, i32 0) #7
  br i1 %cmp87.old.i2230, label %cabac_cbf_ctxidxinc.exit.i2322, label %if.else166.i2362

cabac_cbf_ctxidxinc.exit.i2322:                   ; preds = %cabac_qp_delta.exit.i2283
  %i_cbp_left.i1520.i2285 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 13
  %886 = load i32, i32* %i_cbp_left.i1520.i2285, align 4, !tbaa !61
  %i_cbp_top31.i.i2286 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 12
  %shr26118.i.i2307 = lshr i32 %886, 8
  %and27.i.i2308 = and i32 %shr26118.i.i2307, 1
  %887 = load i32, i32* %i_cbp_top31.i.i2286, align 16, !tbaa !60
  %888 = lshr i32 %887, 7
  %mul37.i.i2313 = and i32 %888, 2
  %add38.i.i2314 = add nuw nsw i32 %and27.i.i2308, 85
  %add39.i1530.i2315 = add nuw nsw i32 %add38.i.i2314, %mul37.i.i2313
  %arrayidx116.i2320 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 0
  %889 = load i8, i8* %arrayidx116.i2320, align 1, !tbaa !40
  %tobool117.i2321 = icmp eq i8 %889, 0
  br i1 %tobool117.i2321, label %if.else122.i2325, label %if.then118.i2324

if.then118.i2324:                                 ; preds = %cabac_cbf_ctxidxinc.exit.i2322
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add39.i1530.i2315, i32 1) #7
  %arraydecay.i2323 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 69, i32 0, i32 0, i32 0
  tail call void @x264_8_cabac_block_residual_c(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* %cb, i32 0, i16* nonnull %arraydecay.i2323) #7
  br label %if.end123.i2327

if.else122.i2325:                                 ; preds = %cabac_cbf_ctxidxinc.exit.i2322
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add39.i1530.i2315, i32 0) #7
  br label %if.end123.i2327

if.end123.i2327:                                  ; preds = %if.else122.i2325, %if.then118.i2324
  %890 = load i32, i32* %i_cbp_luma80.i2226, align 32, !tbaa !59
  %tobool126.i2326 = icmp eq i32 %890, 0
  br i1 %tobool126.i2326, label %if.end933.i2482, label %do.body137.i2350

do.body137.i2350:                                 ; preds = %if.end123.i2327, %if.end156.i2356
  %i128.01718.i2335 = phi i32 [ %inc160.i2354, %if.end156.i2356 ], [ 0, %if.end123.i2327 ]
  %arrayidx44.i.i2336 = getelementptr inbounds [51 x i8], [51 x i8]* @x264_scan8, i32 0, i32 %i128.01718.i2335
  %891 = load i8, i8* %arrayidx44.i.i2336, align 1, !tbaa !40
  %conv45.i.i2337 = zext i8 %891 to i32
  %sub46.i.i2338 = add nsw i32 %conv45.i.i2337, -1
  %arrayidx47.i.i2339 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub46.i.i2338
  %892 = load i8, i8* %arrayidx47.i.i2339, align 1, !tbaa !40
  %sub55.i.i2340 = add nsw i32 %conv45.i.i2337, -8
  %arrayidx56.i1532.i2341 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub55.i.i2340
  %893 = load i8, i8* %arrayidx56.i1532.i2341, align 1, !tbaa !40
  %tobool74.i.i2342 = icmp eq i8 %893, 0
  %mul76.i.i2343 = select i1 %tobool74.i.i2342, i32 0, i32 2
  %tobool78.i.i2344 = icmp ne i8 %892, 0
  %lnot.ext82.i.i2345 = zext i1 %tobool78.i.i2344 to i32
  %add77.i.i2346 = or i32 %mul76.i.i2343, %lnot.ext82.i.i2345
  %add83.i.i2347 = add nuw nsw i32 %add77.i.i2346, 89
  %arrayidx147.i2348 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %conv45.i.i2337
  %894 = load i8, i8* %arrayidx147.i2348, align 1, !tbaa !40
  %tobool148.i2349 = icmp eq i8 %894, 0
  br i1 %tobool148.i2349, label %if.else155.i2353, label %if.then149.i2352

if.then149.i2352:                                 ; preds = %do.body137.i2350
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add83.i.i2347, i32 1) #7
  %add.ptr.i2351 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 69, i32 3, i32 %i128.01718.i2335, i32 1
  tail call void @x264_8_cabac_block_residual_c(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* %cb, i32 1, i16* nonnull %add.ptr.i2351) #7
  br label %if.end156.i2356

if.else155.i2353:                                 ; preds = %do.body137.i2350
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add83.i.i2347, i32 0) #7
  br label %if.end156.i2356

if.end156.i2356:                                  ; preds = %if.else155.i2353, %if.then149.i2352
  %inc160.i2354 = add nuw nsw i32 %i128.01718.i2335, 1
  %exitcond2628 = icmp eq i32 %inc160.i2354, 16
  br i1 %exitcond2628, label %if.end933.i2482, label %do.body137.i2350

if.else166.i2362:                                 ; preds = %cabac_qp_delta.exit.i2283
  %b_transform_8x8.i2360 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 79
  %895 = load i32, i32* %b_transform_8x8.i2360, align 4, !tbaa !54
  %tobool168.i2361 = icmp eq i32 %895, 0
  br i1 %tobool168.i2361, label %for.cond731.preheader.i2363, label %if.then169.i2365

for.cond731.preheader.i2363:                      ; preds = %if.else166.i2362
  %add67.i1580.i2364 = select i1 %871, i32 255, i32 127
  %896 = load i32, i32* %i_cbp_luma80.i2226, align 32, !tbaa !59
  %tobool7411726.i2379 = icmp eq i32 %896, 0
  br i1 %tobool7411726.i2379, label %if.end933.i2482, label %land.rhs742.i2405

if.then169.i2365:                                 ; preds = %if.else166.i2362
  %897 = load i32, i32* %i_cbp_luma80.i2226, align 32, !tbaa !59
  %tobool7121737.i2366 = icmp eq i32 %897, 0
  br i1 %tobool7121737.i2366, label %if.end933.i2482, label %land.rhs713.i2377

land.rhs713.i2377:                                ; preds = %if.then169.i2365, %land.rhs713.i2377
  %msk707.01739.i2367 = phi i32 [ %shr717.i2373, %land.rhs713.i2377 ], [ %897, %if.then169.i2365 ]
  %i706.01738.i2368 = phi i32 [ %inc726.i2375, %land.rhs713.i2377 ], [ 0, %if.then169.i2365 ]
  %arrayidx.i1558.i2369 = getelementptr inbounds [16 x i8], [16 x i8]* @x264_ctz_4bit.lut, i32 0, i32 %msk707.01739.i2367
  %898 = load i8, i8* %arrayidx.i1558.i2369, align 1, !tbaa !40
  %conv.i1559.i2370 = zext i8 %898 to i32
  %add715.i2371 = add nsw i32 %i706.01738.i2368, %conv.i1559.i2370
  %add716.i2372 = add nuw nsw i32 %conv.i1559.i2370, 1
  %shr717.i2373 = ashr i32 %msk707.01739.i2367, %add716.i2372
  %arraydecay724.i2374 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 69, i32 2, i32 %add715.i2371, i32 0
  tail call void @x264_8_cabac_block_residual_c(%struct.x264_t* %h, %struct.x264_cabac_t* %cb, i32 5, i16* nonnull %arraydecay724.i2374) #7
  %inc726.i2375 = add nsw i32 %add715.i2371, 1
  %tobool712.i2376 = icmp eq i32 %shr717.i2373, 0
  br i1 %tobool712.i2376, label %if.end933.i2482, label %land.rhs713.i2377

land.rhs742.i2405:                                ; preds = %for.cond731.preheader.i2363, %for.cond.cleanup754.i2454
  %msk736.01728.i2388 = phi i32 [ %shr746.i2394, %for.cond.cleanup754.i2454 ], [ %896, %for.cond731.preheader.i2363 ]
  %i8x8.01727.i2389 = phi i32 [ %inc795.i2452, %for.cond.cleanup754.i2454 ], [ 0, %for.cond731.preheader.i2363 ]
  %arrayidx.i1560.i2390 = getelementptr inbounds [16 x i8], [16 x i8]* @x264_ctz_4bit.lut, i32 0, i32 %msk736.01728.i2388
  %899 = load i8, i8* %arrayidx.i1560.i2390, align 1, !tbaa !40
  %conv.i1561.i2391 = zext i8 %899 to i32
  %add744.i2392 = add nsw i32 %i8x8.01727.i2389, %conv.i1561.i2391
  %add745.i2393 = add nuw nsw i32 %conv.i1561.i2391, 1
  %shr746.i2394 = ashr i32 %msk736.01728.i2388, %add745.i2393
  %mul760.i2395 = shl i32 %add744.i2392, 2
  %arrayidx44.i1562.us.i2397 = getelementptr inbounds [51 x i8], [51 x i8]* @x264_scan8, i32 0, i32 %mul760.i2395
  %900 = load i8, i8* %arrayidx44.i1562.us.i2397, align 1, !tbaa !40
  %conv45.i1563.us.i2398 = zext i8 %900 to i32
  %sub55.i1567.us.i2402 = add nsw i32 %conv45.i1563.us.i2398, -8
  %arrayidx56.i1568.us.i2403 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub55.i1567.us.i2402
  %901 = load i8, i8* %arrayidx56.i1568.us.i2403, align 1, !tbaa !40
  %conv57.i1569.us.i2404 = zext i8 %901 to i32
  %sub46.i1564.us.i2399 = add nsw i32 %conv45.i1563.us.i2398, -1
  %arrayidx47.i1565.us.i2400 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub46.i1564.us.i2399
  %902 = load i8, i8* %arrayidx47.i1565.us.i2400, align 1, !tbaa !40
  %conv48.i1566.us.i2401 = zext i8 %902 to i32
  %and68.i1581.us.i2414 = and i32 %add67.i1580.i2364, %conv48.i1566.us.i2401
  %and71.i1582.us.i2415 = and i32 %add67.i1580.i2364, %conv57.i1569.us.i2404
  %tobool74.i1585.us.i2417 = icmp eq i32 %and71.i1582.us.i2415, 0
  %mul76.i1586.us.i2418 = select i1 %tobool74.i1585.us.i2417, i32 0, i32 2
  %tobool78.i1587.us.i2419 = icmp ne i32 %and68.i1581.us.i2414, 0
  %lnot.ext82.i1588.us.i2420 = zext i1 %tobool78.i1587.us.i2419 to i32
  %add77.i1589.us.i2421 = or i32 %mul76.i1586.us.i2418, %lnot.ext82.i1588.us.i2420
  %add83.i1590.us.i2422 = add nuw nsw i32 %add77.i1589.us.i2421, 93
  %arrayidx774.us.i2423 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %conv45.i1563.us.i2398
  %903 = load i8, i8* %arrayidx774.us.i2423, align 1, !tbaa !40
  %tobool775.us.i2424 = icmp eq i8 %903, 0
  br i1 %tobool775.us.i2424, label %if.else787.us.i2428, label %if.then776.us.i2427

if.then776.us.i2427:                              ; preds = %land.rhs742.i2405
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add83.i1590.us.i2422, i32 1) #7
  %arraydecay786.us.i2426 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 69, i32 3, i32 %mul760.i2395, i32 0
  tail call void @x264_8_cabac_block_residual_c(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* %cb, i32 2, i16* nonnull %arraydecay786.us.i2426) #7
  br label %if.end788.us.i2448

if.else787.us.i2428:                              ; preds = %land.rhs742.i2405
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add83.i1590.us.i2422, i32 0) #7
  br label %if.end788.us.i2448

if.end788.us.i2448:                               ; preds = %if.else787.us.i2428, %if.then776.us.i2427
  %add763.us.1.i2429 = or i32 %mul760.i2395, 1
  %arrayidx44.i1562.us.1.i2430 = getelementptr inbounds [51 x i8], [51 x i8]* @x264_scan8, i32 0, i32 %add763.us.1.i2429
  %904 = load i8, i8* %arrayidx44.i1562.us.1.i2430, align 1, !tbaa !40
  %conv45.i1563.us.1.i2431 = zext i8 %904 to i32
  %sub46.i1564.us.1.i2432 = add nsw i32 %conv45.i1563.us.1.i2431, -1
  %arrayidx47.i1565.us.1.i2433 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub46.i1564.us.1.i2432
  %905 = load i8, i8* %arrayidx47.i1565.us.1.i2433, align 1, !tbaa !40
  %conv48.i1566.us.1.i2434 = zext i8 %905 to i32
  %sub55.i1567.us.1.i2435 = add nsw i32 %conv45.i1563.us.1.i2431, -8
  %arrayidx56.i1568.us.1.i2436 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub55.i1567.us.1.i2435
  %906 = load i8, i8* %arrayidx56.i1568.us.1.i2436, align 1, !tbaa !40
  %conv57.i1569.us.1.i2437 = zext i8 %906 to i32
  %and68.i1581.us.1.i2438 = and i32 %add67.i1580.i2364, %conv48.i1566.us.1.i2434
  %and71.i1582.us.1.i2439 = and i32 %add67.i1580.i2364, %conv57.i1569.us.1.i2437
  %tobool74.i1585.us.1.i2440 = icmp eq i32 %and71.i1582.us.1.i2439, 0
  %mul76.i1586.us.1.i2441 = select i1 %tobool74.i1585.us.1.i2440, i32 0, i32 2
  %tobool78.i1587.us.1.i2442 = icmp ne i32 %and68.i1581.us.1.i2438, 0
  %lnot.ext82.i1588.us.1.i2443 = zext i1 %tobool78.i1587.us.1.i2442 to i32
  %add77.i1589.us.1.i2444 = or i32 %mul76.i1586.us.1.i2441, %lnot.ext82.i1588.us.1.i2443
  %add83.i1590.us.1.i2445 = add nuw nsw i32 %add77.i1589.us.1.i2444, 93
  %arrayidx774.us.1.i2446 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %conv45.i1563.us.1.i2431
  %907 = load i8, i8* %arrayidx774.us.1.i2446, align 1, !tbaa !40
  %tobool775.us.1.i2447 = icmp eq i8 %907, 0
  br i1 %tobool775.us.1.i2447, label %if.else787.us.1.i2526, label %if.then776.us.1.i2525

for.cond.cleanup754.i2454:                        ; preds = %if.else787.us.3.i2572, %if.then776.us.3.i2571
  %inc795.i2452 = add nsw i32 %add744.i2392, 1
  %tobool741.i2453 = icmp eq i32 %shr746.i2394, 0
  br i1 %tobool741.i2453, label %if.end933.i2482, label %land.rhs742.i2405

if.end933.i2482:                                  ; preds = %land.rhs713.i2377, %for.cond.cleanup754.i2454, %if.end156.i2356, %for.cond731.preheader.i2363, %if.end123.i2327, %if.end78.i2228, %if.then169.i2365
  %908 = load i32, i32* %666, align 4, !tbaa !46
  %909 = load i32, i32* %668, align 16, !tbaa !47
  %sub.ptr.sub.i1259.i2475 = sub i32 %908, %909
  %910 = load i32, i32* %i_bytes_outstanding.i.i1289, align 4, !tbaa !48
  %add.i1261.i2476 = add nsw i32 %sub.ptr.sub.i1259.i2475, %910
  %911 = load i32, i32* %i_queue.i.i1291, align 8, !tbaa !49
  %i_tex_bits938.i2478 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 72, i32 21, i32 1
  %add1.i1264.i2479 = sub i32 %911, %add1.i1427.i2101
  br label %if.end6

if.then776.us.1.i2525:                            ; preds = %if.end788.us.i2448
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add83.i1590.us.1.i2445, i32 1) #7
  %arraydecay786.us.1.i2524 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 69, i32 3, i32 %add763.us.1.i2429, i32 0
  tail call void @x264_8_cabac_block_residual_c(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* %cb, i32 2, i16* nonnull %arraydecay786.us.1.i2524) #7
  br label %if.end788.us.1.i2546

if.else787.us.1.i2526:                            ; preds = %if.end788.us.i2448
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add83.i1590.us.1.i2445, i32 0) #7
  br label %if.end788.us.1.i2546

if.end788.us.1.i2546:                             ; preds = %if.else787.us.1.i2526, %if.then776.us.1.i2525
  %add763.us.2.i2527 = or i32 %mul760.i2395, 2
  %arrayidx44.i1562.us.2.i2528 = getelementptr inbounds [51 x i8], [51 x i8]* @x264_scan8, i32 0, i32 %add763.us.2.i2527
  %912 = load i8, i8* %arrayidx44.i1562.us.2.i2528, align 1, !tbaa !40
  %conv45.i1563.us.2.i2529 = zext i8 %912 to i32
  %sub46.i1564.us.2.i2530 = add nsw i32 %conv45.i1563.us.2.i2529, -1
  %arrayidx47.i1565.us.2.i2531 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub46.i1564.us.2.i2530
  %913 = load i8, i8* %arrayidx47.i1565.us.2.i2531, align 1, !tbaa !40
  %conv48.i1566.us.2.i2532 = zext i8 %913 to i32
  %sub55.i1567.us.2.i2533 = add nsw i32 %conv45.i1563.us.2.i2529, -8
  %arrayidx56.i1568.us.2.i2534 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub55.i1567.us.2.i2533
  %914 = load i8, i8* %arrayidx56.i1568.us.2.i2534, align 1, !tbaa !40
  %conv57.i1569.us.2.i2535 = zext i8 %914 to i32
  %and68.i1581.us.2.i2536 = and i32 %add67.i1580.i2364, %conv48.i1566.us.2.i2532
  %and71.i1582.us.2.i2537 = and i32 %add67.i1580.i2364, %conv57.i1569.us.2.i2535
  %tobool74.i1585.us.2.i2538 = icmp eq i32 %and71.i1582.us.2.i2537, 0
  %mul76.i1586.us.2.i2539 = select i1 %tobool74.i1585.us.2.i2538, i32 0, i32 2
  %tobool78.i1587.us.2.i2540 = icmp ne i32 %and68.i1581.us.2.i2536, 0
  %lnot.ext82.i1588.us.2.i2541 = zext i1 %tobool78.i1587.us.2.i2540 to i32
  %add77.i1589.us.2.i2542 = or i32 %mul76.i1586.us.2.i2539, %lnot.ext82.i1588.us.2.i2541
  %add83.i1590.us.2.i2543 = add nuw nsw i32 %add77.i1589.us.2.i2542, 93
  %arrayidx774.us.2.i2544 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %conv45.i1563.us.2.i2529
  %915 = load i8, i8* %arrayidx774.us.2.i2544, align 1, !tbaa !40
  %tobool775.us.2.i2545 = icmp eq i8 %915, 0
  br i1 %tobool775.us.2.i2545, label %if.else787.us.2.i2549, label %if.then776.us.2.i2548

if.then776.us.2.i2548:                            ; preds = %if.end788.us.1.i2546
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add83.i1590.us.2.i2543, i32 1) #7
  %arraydecay786.us.2.i2547 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 69, i32 3, i32 %add763.us.2.i2527, i32 0
  tail call void @x264_8_cabac_block_residual_c(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* %cb, i32 2, i16* nonnull %arraydecay786.us.2.i2547) #7
  br label %if.end788.us.2.i2569

if.else787.us.2.i2549:                            ; preds = %if.end788.us.1.i2546
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add83.i1590.us.2.i2543, i32 0) #7
  br label %if.end788.us.2.i2569

if.end788.us.2.i2569:                             ; preds = %if.else787.us.2.i2549, %if.then776.us.2.i2548
  %add763.us.3.i2550 = or i32 %mul760.i2395, 3
  %arrayidx44.i1562.us.3.i2551 = getelementptr inbounds [51 x i8], [51 x i8]* @x264_scan8, i32 0, i32 %add763.us.3.i2550
  %916 = load i8, i8* %arrayidx44.i1562.us.3.i2551, align 1, !tbaa !40
  %conv45.i1563.us.3.i2552 = zext i8 %916 to i32
  %sub46.i1564.us.3.i2553 = add nsw i32 %conv45.i1563.us.3.i2552, -1
  %arrayidx47.i1565.us.3.i2554 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub46.i1564.us.3.i2553
  %917 = load i8, i8* %arrayidx47.i1565.us.3.i2554, align 1, !tbaa !40
  %conv48.i1566.us.3.i2555 = zext i8 %917 to i32
  %sub55.i1567.us.3.i2556 = add nsw i32 %conv45.i1563.us.3.i2552, -8
  %arrayidx56.i1568.us.3.i2557 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub55.i1567.us.3.i2556
  %918 = load i8, i8* %arrayidx56.i1568.us.3.i2557, align 1, !tbaa !40
  %conv57.i1569.us.3.i2558 = zext i8 %918 to i32
  %and68.i1581.us.3.i2559 = and i32 %add67.i1580.i2364, %conv48.i1566.us.3.i2555
  %and71.i1582.us.3.i2560 = and i32 %add67.i1580.i2364, %conv57.i1569.us.3.i2558
  %tobool74.i1585.us.3.i2561 = icmp eq i32 %and71.i1582.us.3.i2560, 0
  %mul76.i1586.us.3.i2562 = select i1 %tobool74.i1585.us.3.i2561, i32 0, i32 2
  %tobool78.i1587.us.3.i2563 = icmp ne i32 %and68.i1581.us.3.i2559, 0
  %lnot.ext82.i1588.us.3.i2564 = zext i1 %tobool78.i1587.us.3.i2563 to i32
  %add77.i1589.us.3.i2565 = or i32 %mul76.i1586.us.3.i2562, %lnot.ext82.i1588.us.3.i2564
  %add83.i1590.us.3.i2566 = add nuw nsw i32 %add77.i1589.us.3.i2565, 93
  %arrayidx774.us.3.i2567 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %conv45.i1563.us.3.i2552
  %919 = load i8, i8* %arrayidx774.us.3.i2567, align 1, !tbaa !40
  %tobool775.us.3.i2568 = icmp eq i8 %919, 0
  br i1 %tobool775.us.3.i2568, label %if.else787.us.3.i2572, label %if.then776.us.3.i2571

if.then776.us.3.i2571:                            ; preds = %if.end788.us.2.i2569
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add83.i1590.us.3.i2566, i32 1) #7
  %arraydecay786.us.3.i2570 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 69, i32 3, i32 %add763.us.3.i2550, i32 0
  tail call void @x264_8_cabac_block_residual_c(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* %cb, i32 2, i16* nonnull %arraydecay786.us.3.i2570) #7
  br label %for.cond.cleanup754.i2454

if.else787.us.3.i2572:                            ; preds = %if.end788.us.2.i2569
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add83.i1590.us.3.i2566, i32 0) #7
  br label %for.cond.cleanup754.i2454

if.end6:                                          ; preds = %if.end933.i2482, %for.cond.cleanup16.i2129, %if.end933.i1193, %for.cond.cleanup34.i.1, %if.end933.i, %for.cond.cleanup16.i.2
  %mul.i1262.i2477.sink.in = phi i32 [ %add.i1261.i2476, %if.end933.i2482 ], [ %add.i1476.i2163, %for.cond.cleanup16.i2129 ], [ %add.i1261.i1187, %if.end933.i1193 ], [ %add.i1476.i888, %for.cond.cleanup34.i.1 ], [ %add.i1261.i, %if.end933.i ], [ %add.i1476.i, %for.cond.cleanup16.i.2 ]
  %add1.i1264.i2479.sink = phi i32 [ %add1.i1264.i2479, %if.end933.i2482 ], [ %add1.i1479.i2166, %for.cond.cleanup16.i2129 ], [ %add1.i1264.i1190, %if.end933.i1193 ], [ %add1.i1479.i891, %for.cond.cleanup34.i.1 ], [ %add1.i1264.i, %if.end933.i ], [ %add1.i1479.i, %for.cond.cleanup16.i.2 ]
  %.sink2661.in = phi i32* [ %i_tex_bits938.i2478, %if.end933.i2482 ], [ %i_tex_bits.i2165, %for.cond.cleanup16.i2129 ], [ %i_tex_bits938.i1189, %if.end933.i1193 ], [ %i_tex_bits.i890, %for.cond.cleanup34.i.1 ], [ %i_tex_bits938.i, %if.end933.i ], [ %i_tex_bits.i, %for.cond.cleanup16.i.2 ]
  %.sink2661 = load i32, i32* %.sink2661.in, align 4, !tbaa !75
  %mul.i1262.i2477.sink = shl i32 %mul.i1262.i2477.sink.in, 3
  %sub935.i2480 = add i32 %add1.i1264.i2479.sink, %mul.i1262.i2477.sink
  %add939.i2481 = add i32 %sub935.i2480, %.sink2661
  store i32 %add939.i2481, i32* %.sink2661.in, align 4, !tbaa !75
  ret void

for.cond36.preheader.lr.ph.i.1:                   ; preds = %for.cond.cleanup34.i
  %arrayidx44.i.1 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 14, i32 2
  br label %for.cond36.preheader.i.1

for.cond36.preheader.i.1:                         ; preds = %bs_write.exit1462.7.i.1, %for.cond36.preheader.lr.ph.i.1
  %i29.01749.i.1 = phi i32 [ 0, %for.cond36.preheader.lr.ph.i.1 ], [ %inc52.i.1, %bs_write.exit1462.7.i.1 ]
  %s.sroa.25.31748.i.1 = phi i32 [ %sub.i1448.7.i, %for.cond36.preheader.lr.ph.i.1 ], [ %sub.i1448.7.i.1, %bs_write.exit1462.7.i.1 ]
  %s.sroa.3.41747.i.1 = phi i32 [ %s.sroa.3.6.7.i, %for.cond36.preheader.lr.ph.i.1 ], [ %s.sroa.3.6.7.i.1, %bs_write.exit1462.7.i.1 ]
  %s.sroa.15.41746.i.1 = phi i32 [ %s.sroa.15.6.7.i, %for.cond36.preheader.lr.ph.i.1 ], [ %s.sroa.15.6.7.i.1, %bs_write.exit1462.7.i.1 ]
  %mul.i.1 = shl i32 %i29.01749.i.1, 4
  %920 = load i8*, i8** %arrayidx44.i.1, align 4, !tbaa !39
  %arrayidx46.i.1 = getelementptr inbounds i8, i8* %920, i32 %mul.i.1
  %921 = load i8, i8* %arrayidx46.i.1, align 1, !tbaa !40
  %conv47.i.1 = zext i8 %921 to i32
  %cmp.i1444.i.1 = icmp sgt i32 %s.sroa.25.31748.i.1, 8
  br i1 %cmp.i1444.i.1, label %if.then.i1449.i.1, label %if.else.i1459.i.1

if.else.i1459.i.1:                                ; preds = %for.cond36.preheader.i.1
  %sub4.i1450.i.1 = sub nsw i32 8, %s.sroa.25.31748.i.1
  %shl7.i1452.i.1 = shl i32 %s.sroa.15.41746.i.1, %s.sroa.25.31748.i.1
  %shr.i1453.i.1 = lshr i32 %conv47.i.1, %sub4.i1450.i.1
  %or8.i1454.i.1 = or i32 %shr.i1453.i.1, %shl7.i1452.i.1
  %add5.i.i.i1455.i.1 = tail call i32 @llvm.bswap.i32(i32 %or8.i1454.i.1) #7
  %922 = inttoptr i32 %s.sroa.3.41747.i.1 to i32*
  store i32 %add5.i.i.i1455.i.1, i32* %922, align 4, !tbaa !40
  %923 = inttoptr i32 %s.sroa.3.41747.i.1 to i8*
  %add.ptr.i1457.i.1 = getelementptr inbounds i8, i8* %923, i32 4
  %924 = ptrtoint i8* %add.ptr.i1457.i.1 to i32
  %sub13.i1458.i.1 = add nsw i32 %s.sroa.25.31748.i.1, 24
  %.pre1818.i.1 = load i8*, i8** %arrayidx44.i.1, align 4, !tbaa !39
  br label %bs_write.exit1462.i.1

if.then.i1449.i.1:                                ; preds = %for.cond36.preheader.i.1
  %shl.i1446.i.1 = shl i32 %s.sroa.15.41746.i.1, 8
  %or.i1447.i.1 = or i32 %shl.i1446.i.1, %conv47.i.1
  %sub.i1448.i.1 = add nsw i32 %s.sroa.25.31748.i.1, -8
  br label %bs_write.exit1462.i.1

bs_write.exit1462.i.1:                            ; preds = %if.then.i1449.i.1, %if.else.i1459.i.1
  %925 = phi i8* [ %920, %if.then.i1449.i.1 ], [ %.pre1818.i.1, %if.else.i1459.i.1 ]
  %s.sroa.15.6.i.1 = phi i32 [ %or.i1447.i.1, %if.then.i1449.i.1 ], [ %conv47.i.1, %if.else.i1459.i.1 ]
  %s.sroa.3.6.i.1 = phi i32 [ %s.sroa.3.41747.i.1, %if.then.i1449.i.1 ], [ %924, %if.else.i1459.i.1 ]
  %storemerge.i1460.i.1 = phi i32 [ %sub.i1448.i.1, %if.then.i1449.i.1 ], [ %sub13.i1458.i.1, %if.else.i1459.i.1 ]
  %add45.1.i.1 = or i32 %mul.i.1, 1
  %arrayidx46.1.i.1 = getelementptr inbounds i8, i8* %925, i32 %add45.1.i.1
  %926 = load i8, i8* %arrayidx46.1.i.1, align 1, !tbaa !40
  %conv47.1.i.1 = zext i8 %926 to i32
  %cmp.i1444.1.i.1 = icmp sgt i32 %storemerge.i1460.i.1, 8
  br i1 %cmp.i1444.1.i.1, label %if.then.i1449.1.i.1, label %if.else.i1459.1.i.1

if.else.i1459.1.i.1:                              ; preds = %bs_write.exit1462.i.1
  %sub4.i1450.1.i.1 = sub nsw i32 8, %storemerge.i1460.i.1
  %shl7.i1452.1.i.1 = shl i32 %s.sroa.15.6.i.1, %storemerge.i1460.i.1
  %shr.i1453.1.i.1 = lshr i32 %conv47.1.i.1, %sub4.i1450.1.i.1
  %or8.i1454.1.i.1 = or i32 %shr.i1453.1.i.1, %shl7.i1452.1.i.1
  %add5.i.i.i1455.1.i.1 = tail call i32 @llvm.bswap.i32(i32 %or8.i1454.1.i.1) #7
  %927 = inttoptr i32 %s.sroa.3.6.i.1 to i32*
  store i32 %add5.i.i.i1455.1.i.1, i32* %927, align 4, !tbaa !40
  %928 = inttoptr i32 %s.sroa.3.6.i.1 to i8*
  %add.ptr.i1457.1.i.1 = getelementptr inbounds i8, i8* %928, i32 4
  %929 = ptrtoint i8* %add.ptr.i1457.1.i.1 to i32
  %sub13.i1458.1.i.1 = add nsw i32 %storemerge.i1460.i.1, 24
  %.pre1819.i.1 = load i8*, i8** %arrayidx44.i.1, align 4, !tbaa !39
  br label %bs_write.exit1462.1.i.1

if.then.i1449.1.i.1:                              ; preds = %bs_write.exit1462.i.1
  %shl.i1446.1.i.1 = shl i32 %s.sroa.15.6.i.1, 8
  %or.i1447.1.i.1 = or i32 %shl.i1446.1.i.1, %conv47.1.i.1
  %sub.i1448.1.i.1 = add nsw i32 %storemerge.i1460.i.1, -8
  br label %bs_write.exit1462.1.i.1

bs_write.exit1462.1.i.1:                          ; preds = %if.then.i1449.1.i.1, %if.else.i1459.1.i.1
  %930 = phi i8* [ %925, %if.then.i1449.1.i.1 ], [ %.pre1819.i.1, %if.else.i1459.1.i.1 ]
  %s.sroa.15.6.1.i.1 = phi i32 [ %or.i1447.1.i.1, %if.then.i1449.1.i.1 ], [ %conv47.1.i.1, %if.else.i1459.1.i.1 ]
  %s.sroa.3.6.1.i.1 = phi i32 [ %s.sroa.3.6.i.1, %if.then.i1449.1.i.1 ], [ %929, %if.else.i1459.1.i.1 ]
  %storemerge.i1460.1.i.1 = phi i32 [ %sub.i1448.1.i.1, %if.then.i1449.1.i.1 ], [ %sub13.i1458.1.i.1, %if.else.i1459.1.i.1 ]
  %add45.2.i.1 = or i32 %mul.i.1, 2
  %arrayidx46.2.i.1 = getelementptr inbounds i8, i8* %930, i32 %add45.2.i.1
  %931 = load i8, i8* %arrayidx46.2.i.1, align 1, !tbaa !40
  %conv47.2.i.1 = zext i8 %931 to i32
  %cmp.i1444.2.i.1 = icmp sgt i32 %storemerge.i1460.1.i.1, 8
  br i1 %cmp.i1444.2.i.1, label %if.then.i1449.2.i.1, label %if.else.i1459.2.i.1

if.else.i1459.2.i.1:                              ; preds = %bs_write.exit1462.1.i.1
  %sub4.i1450.2.i.1 = sub nsw i32 8, %storemerge.i1460.1.i.1
  %shl7.i1452.2.i.1 = shl i32 %s.sroa.15.6.1.i.1, %storemerge.i1460.1.i.1
  %shr.i1453.2.i.1 = lshr i32 %conv47.2.i.1, %sub4.i1450.2.i.1
  %or8.i1454.2.i.1 = or i32 %shr.i1453.2.i.1, %shl7.i1452.2.i.1
  %add5.i.i.i1455.2.i.1 = tail call i32 @llvm.bswap.i32(i32 %or8.i1454.2.i.1) #7
  %932 = inttoptr i32 %s.sroa.3.6.1.i.1 to i32*
  store i32 %add5.i.i.i1455.2.i.1, i32* %932, align 4, !tbaa !40
  %933 = inttoptr i32 %s.sroa.3.6.1.i.1 to i8*
  %add.ptr.i1457.2.i.1 = getelementptr inbounds i8, i8* %933, i32 4
  %934 = ptrtoint i8* %add.ptr.i1457.2.i.1 to i32
  %sub13.i1458.2.i.1 = add nsw i32 %storemerge.i1460.1.i.1, 24
  %.pre1820.i.1 = load i8*, i8** %arrayidx44.i.1, align 4, !tbaa !39
  br label %bs_write.exit1462.2.i.1

if.then.i1449.2.i.1:                              ; preds = %bs_write.exit1462.1.i.1
  %shl.i1446.2.i.1 = shl i32 %s.sroa.15.6.1.i.1, 8
  %or.i1447.2.i.1 = or i32 %shl.i1446.2.i.1, %conv47.2.i.1
  %sub.i1448.2.i.1 = add nsw i32 %storemerge.i1460.1.i.1, -8
  br label %bs_write.exit1462.2.i.1

bs_write.exit1462.2.i.1:                          ; preds = %if.then.i1449.2.i.1, %if.else.i1459.2.i.1
  %935 = phi i8* [ %930, %if.then.i1449.2.i.1 ], [ %.pre1820.i.1, %if.else.i1459.2.i.1 ]
  %s.sroa.15.6.2.i.1 = phi i32 [ %or.i1447.2.i.1, %if.then.i1449.2.i.1 ], [ %conv47.2.i.1, %if.else.i1459.2.i.1 ]
  %s.sroa.3.6.2.i.1 = phi i32 [ %s.sroa.3.6.1.i.1, %if.then.i1449.2.i.1 ], [ %934, %if.else.i1459.2.i.1 ]
  %storemerge.i1460.2.i.1 = phi i32 [ %sub.i1448.2.i.1, %if.then.i1449.2.i.1 ], [ %sub13.i1458.2.i.1, %if.else.i1459.2.i.1 ]
  %add45.3.i.1 = or i32 %mul.i.1, 3
  %arrayidx46.3.i.1 = getelementptr inbounds i8, i8* %935, i32 %add45.3.i.1
  %936 = load i8, i8* %arrayidx46.3.i.1, align 1, !tbaa !40
  %conv47.3.i.1 = zext i8 %936 to i32
  %cmp.i1444.3.i.1 = icmp sgt i32 %storemerge.i1460.2.i.1, 8
  br i1 %cmp.i1444.3.i.1, label %if.then.i1449.3.i.1, label %if.else.i1459.3.i.1

if.else.i1459.3.i.1:                              ; preds = %bs_write.exit1462.2.i.1
  %sub4.i1450.3.i.1 = sub nsw i32 8, %storemerge.i1460.2.i.1
  %shl7.i1452.3.i.1 = shl i32 %s.sroa.15.6.2.i.1, %storemerge.i1460.2.i.1
  %shr.i1453.3.i.1 = lshr i32 %conv47.3.i.1, %sub4.i1450.3.i.1
  %or8.i1454.3.i.1 = or i32 %shr.i1453.3.i.1, %shl7.i1452.3.i.1
  %add5.i.i.i1455.3.i.1 = tail call i32 @llvm.bswap.i32(i32 %or8.i1454.3.i.1) #7
  %937 = inttoptr i32 %s.sroa.3.6.2.i.1 to i32*
  store i32 %add5.i.i.i1455.3.i.1, i32* %937, align 4, !tbaa !40
  %938 = inttoptr i32 %s.sroa.3.6.2.i.1 to i8*
  %add.ptr.i1457.3.i.1 = getelementptr inbounds i8, i8* %938, i32 4
  %939 = ptrtoint i8* %add.ptr.i1457.3.i.1 to i32
  %sub13.i1458.3.i.1 = add nsw i32 %storemerge.i1460.2.i.1, 24
  %.pre1821.i.1 = load i8*, i8** %arrayidx44.i.1, align 4, !tbaa !39
  br label %bs_write.exit1462.3.i.1

if.then.i1449.3.i.1:                              ; preds = %bs_write.exit1462.2.i.1
  %shl.i1446.3.i.1 = shl i32 %s.sroa.15.6.2.i.1, 8
  %or.i1447.3.i.1 = or i32 %shl.i1446.3.i.1, %conv47.3.i.1
  %sub.i1448.3.i.1 = add nsw i32 %storemerge.i1460.2.i.1, -8
  br label %bs_write.exit1462.3.i.1

bs_write.exit1462.3.i.1:                          ; preds = %if.then.i1449.3.i.1, %if.else.i1459.3.i.1
  %940 = phi i8* [ %935, %if.then.i1449.3.i.1 ], [ %.pre1821.i.1, %if.else.i1459.3.i.1 ]
  %s.sroa.15.6.3.i.1 = phi i32 [ %or.i1447.3.i.1, %if.then.i1449.3.i.1 ], [ %conv47.3.i.1, %if.else.i1459.3.i.1 ]
  %s.sroa.3.6.3.i.1 = phi i32 [ %s.sroa.3.6.2.i.1, %if.then.i1449.3.i.1 ], [ %939, %if.else.i1459.3.i.1 ]
  %storemerge.i1460.3.i.1 = phi i32 [ %sub.i1448.3.i.1, %if.then.i1449.3.i.1 ], [ %sub13.i1458.3.i.1, %if.else.i1459.3.i.1 ]
  %add45.4.i.1 = or i32 %mul.i.1, 4
  %arrayidx46.4.i.1 = getelementptr inbounds i8, i8* %940, i32 %add45.4.i.1
  %941 = load i8, i8* %arrayidx46.4.i.1, align 1, !tbaa !40
  %conv47.4.i.1 = zext i8 %941 to i32
  %cmp.i1444.4.i.1 = icmp sgt i32 %storemerge.i1460.3.i.1, 8
  br i1 %cmp.i1444.4.i.1, label %if.then.i1449.4.i.1, label %if.else.i1459.4.i.1

if.else.i1459.4.i.1:                              ; preds = %bs_write.exit1462.3.i.1
  %sub4.i1450.4.i.1 = sub nsw i32 8, %storemerge.i1460.3.i.1
  %shl7.i1452.4.i.1 = shl i32 %s.sroa.15.6.3.i.1, %storemerge.i1460.3.i.1
  %shr.i1453.4.i.1 = lshr i32 %conv47.4.i.1, %sub4.i1450.4.i.1
  %or8.i1454.4.i.1 = or i32 %shr.i1453.4.i.1, %shl7.i1452.4.i.1
  %add5.i.i.i1455.4.i.1 = tail call i32 @llvm.bswap.i32(i32 %or8.i1454.4.i.1) #7
  %942 = inttoptr i32 %s.sroa.3.6.3.i.1 to i32*
  store i32 %add5.i.i.i1455.4.i.1, i32* %942, align 4, !tbaa !40
  %943 = inttoptr i32 %s.sroa.3.6.3.i.1 to i8*
  %add.ptr.i1457.4.i.1 = getelementptr inbounds i8, i8* %943, i32 4
  %944 = ptrtoint i8* %add.ptr.i1457.4.i.1 to i32
  %sub13.i1458.4.i.1 = add nsw i32 %storemerge.i1460.3.i.1, 24
  %.pre1822.i.1 = load i8*, i8** %arrayidx44.i.1, align 4, !tbaa !39
  br label %bs_write.exit1462.4.i.1

if.then.i1449.4.i.1:                              ; preds = %bs_write.exit1462.3.i.1
  %shl.i1446.4.i.1 = shl i32 %s.sroa.15.6.3.i.1, 8
  %or.i1447.4.i.1 = or i32 %shl.i1446.4.i.1, %conv47.4.i.1
  %sub.i1448.4.i.1 = add nsw i32 %storemerge.i1460.3.i.1, -8
  br label %bs_write.exit1462.4.i.1

bs_write.exit1462.4.i.1:                          ; preds = %if.then.i1449.4.i.1, %if.else.i1459.4.i.1
  %945 = phi i8* [ %940, %if.then.i1449.4.i.1 ], [ %.pre1822.i.1, %if.else.i1459.4.i.1 ]
  %s.sroa.15.6.4.i.1 = phi i32 [ %or.i1447.4.i.1, %if.then.i1449.4.i.1 ], [ %conv47.4.i.1, %if.else.i1459.4.i.1 ]
  %s.sroa.3.6.4.i.1 = phi i32 [ %s.sroa.3.6.3.i.1, %if.then.i1449.4.i.1 ], [ %944, %if.else.i1459.4.i.1 ]
  %storemerge.i1460.4.i.1 = phi i32 [ %sub.i1448.4.i.1, %if.then.i1449.4.i.1 ], [ %sub13.i1458.4.i.1, %if.else.i1459.4.i.1 ]
  %add45.5.i.1 = or i32 %mul.i.1, 5
  %arrayidx46.5.i.1 = getelementptr inbounds i8, i8* %945, i32 %add45.5.i.1
  %946 = load i8, i8* %arrayidx46.5.i.1, align 1, !tbaa !40
  %conv47.5.i.1 = zext i8 %946 to i32
  %cmp.i1444.5.i.1 = icmp sgt i32 %storemerge.i1460.4.i.1, 8
  br i1 %cmp.i1444.5.i.1, label %if.then.i1449.5.i.1, label %if.else.i1459.5.i.1

if.else.i1459.5.i.1:                              ; preds = %bs_write.exit1462.4.i.1
  %sub4.i1450.5.i.1 = sub nsw i32 8, %storemerge.i1460.4.i.1
  %shl7.i1452.5.i.1 = shl i32 %s.sroa.15.6.4.i.1, %storemerge.i1460.4.i.1
  %shr.i1453.5.i.1 = lshr i32 %conv47.5.i.1, %sub4.i1450.5.i.1
  %or8.i1454.5.i.1 = or i32 %shr.i1453.5.i.1, %shl7.i1452.5.i.1
  %add5.i.i.i1455.5.i.1 = tail call i32 @llvm.bswap.i32(i32 %or8.i1454.5.i.1) #7
  %947 = inttoptr i32 %s.sroa.3.6.4.i.1 to i32*
  store i32 %add5.i.i.i1455.5.i.1, i32* %947, align 4, !tbaa !40
  %948 = inttoptr i32 %s.sroa.3.6.4.i.1 to i8*
  %add.ptr.i1457.5.i.1 = getelementptr inbounds i8, i8* %948, i32 4
  %949 = ptrtoint i8* %add.ptr.i1457.5.i.1 to i32
  %sub13.i1458.5.i.1 = add nsw i32 %storemerge.i1460.4.i.1, 24
  %.pre1823.i.1 = load i8*, i8** %arrayidx44.i.1, align 4, !tbaa !39
  br label %bs_write.exit1462.5.i.1

if.then.i1449.5.i.1:                              ; preds = %bs_write.exit1462.4.i.1
  %shl.i1446.5.i.1 = shl i32 %s.sroa.15.6.4.i.1, 8
  %or.i1447.5.i.1 = or i32 %shl.i1446.5.i.1, %conv47.5.i.1
  %sub.i1448.5.i.1 = add nsw i32 %storemerge.i1460.4.i.1, -8
  br label %bs_write.exit1462.5.i.1

bs_write.exit1462.5.i.1:                          ; preds = %if.then.i1449.5.i.1, %if.else.i1459.5.i.1
  %950 = phi i8* [ %945, %if.then.i1449.5.i.1 ], [ %.pre1823.i.1, %if.else.i1459.5.i.1 ]
  %s.sroa.15.6.5.i.1 = phi i32 [ %or.i1447.5.i.1, %if.then.i1449.5.i.1 ], [ %conv47.5.i.1, %if.else.i1459.5.i.1 ]
  %s.sroa.3.6.5.i.1 = phi i32 [ %s.sroa.3.6.4.i.1, %if.then.i1449.5.i.1 ], [ %949, %if.else.i1459.5.i.1 ]
  %storemerge.i1460.5.i.1 = phi i32 [ %sub.i1448.5.i.1, %if.then.i1449.5.i.1 ], [ %sub13.i1458.5.i.1, %if.else.i1459.5.i.1 ]
  %add45.6.i.1 = or i32 %mul.i.1, 6
  %arrayidx46.6.i.1 = getelementptr inbounds i8, i8* %950, i32 %add45.6.i.1
  %951 = load i8, i8* %arrayidx46.6.i.1, align 1, !tbaa !40
  %conv47.6.i.1 = zext i8 %951 to i32
  %cmp.i1444.6.i.1 = icmp sgt i32 %storemerge.i1460.5.i.1, 8
  br i1 %cmp.i1444.6.i.1, label %if.then.i1449.6.i.1, label %if.else.i1459.6.i.1

if.else.i1459.6.i.1:                              ; preds = %bs_write.exit1462.5.i.1
  %sub4.i1450.6.i.1 = sub nsw i32 8, %storemerge.i1460.5.i.1
  %shl7.i1452.6.i.1 = shl i32 %s.sroa.15.6.5.i.1, %storemerge.i1460.5.i.1
  %shr.i1453.6.i.1 = lshr i32 %conv47.6.i.1, %sub4.i1450.6.i.1
  %or8.i1454.6.i.1 = or i32 %shr.i1453.6.i.1, %shl7.i1452.6.i.1
  %add5.i.i.i1455.6.i.1 = tail call i32 @llvm.bswap.i32(i32 %or8.i1454.6.i.1) #7
  %952 = inttoptr i32 %s.sroa.3.6.5.i.1 to i32*
  store i32 %add5.i.i.i1455.6.i.1, i32* %952, align 4, !tbaa !40
  %953 = inttoptr i32 %s.sroa.3.6.5.i.1 to i8*
  %add.ptr.i1457.6.i.1 = getelementptr inbounds i8, i8* %953, i32 4
  %954 = ptrtoint i8* %add.ptr.i1457.6.i.1 to i32
  %sub13.i1458.6.i.1 = add nsw i32 %storemerge.i1460.5.i.1, 24
  %.pre1824.i.1 = load i8*, i8** %arrayidx44.i.1, align 4, !tbaa !39
  br label %bs_write.exit1462.6.i.1

if.then.i1449.6.i.1:                              ; preds = %bs_write.exit1462.5.i.1
  %shl.i1446.6.i.1 = shl i32 %s.sroa.15.6.5.i.1, 8
  %or.i1447.6.i.1 = or i32 %shl.i1446.6.i.1, %conv47.6.i.1
  %sub.i1448.6.i.1 = add nsw i32 %storemerge.i1460.5.i.1, -8
  br label %bs_write.exit1462.6.i.1

bs_write.exit1462.6.i.1:                          ; preds = %if.then.i1449.6.i.1, %if.else.i1459.6.i.1
  %955 = phi i8* [ %950, %if.then.i1449.6.i.1 ], [ %.pre1824.i.1, %if.else.i1459.6.i.1 ]
  %s.sroa.15.6.6.i.1 = phi i32 [ %or.i1447.6.i.1, %if.then.i1449.6.i.1 ], [ %conv47.6.i.1, %if.else.i1459.6.i.1 ]
  %s.sroa.3.6.6.i.1 = phi i32 [ %s.sroa.3.6.5.i.1, %if.then.i1449.6.i.1 ], [ %954, %if.else.i1459.6.i.1 ]
  %storemerge.i1460.6.i.1 = phi i32 [ %sub.i1448.6.i.1, %if.then.i1449.6.i.1 ], [ %sub13.i1458.6.i.1, %if.else.i1459.6.i.1 ]
  %add45.7.i.1 = or i32 %mul.i.1, 7
  %arrayidx46.7.i.1 = getelementptr inbounds i8, i8* %955, i32 %add45.7.i.1
  %956 = load i8, i8* %arrayidx46.7.i.1, align 1, !tbaa !40
  %conv47.7.i.1 = zext i8 %956 to i32
  %cmp.i1444.7.i.1 = icmp sgt i32 %storemerge.i1460.6.i.1, 8
  br i1 %cmp.i1444.7.i.1, label %if.then.i1449.7.i.1, label %if.else.i1459.7.i.1

if.else.i1459.7.i.1:                              ; preds = %bs_write.exit1462.6.i.1
  %sub4.i1450.7.i.1 = sub nsw i32 8, %storemerge.i1460.6.i.1
  %shl7.i1452.7.i.1 = shl i32 %s.sroa.15.6.6.i.1, %storemerge.i1460.6.i.1
  %shr.i1453.7.i.1 = lshr i32 %conv47.7.i.1, %sub4.i1450.7.i.1
  %or8.i1454.7.i.1 = or i32 %shr.i1453.7.i.1, %shl7.i1452.7.i.1
  %add5.i.i.i1455.7.i.1 = tail call i32 @llvm.bswap.i32(i32 %or8.i1454.7.i.1) #7
  %957 = inttoptr i32 %s.sroa.3.6.6.i.1 to i32*
  store i32 %add5.i.i.i1455.7.i.1, i32* %957, align 4, !tbaa !40
  %958 = inttoptr i32 %s.sroa.3.6.6.i.1 to i8*
  %add.ptr.i1457.7.i.1 = getelementptr inbounds i8, i8* %958, i32 4
  %959 = ptrtoint i8* %add.ptr.i1457.7.i.1 to i32
  br label %bs_write.exit1462.7.i.1

if.then.i1449.7.i.1:                              ; preds = %bs_write.exit1462.6.i.1
  %shl.i1446.7.i.1 = shl i32 %s.sroa.15.6.6.i.1, 8
  %or.i1447.7.i.1 = or i32 %shl.i1446.7.i.1, %conv47.7.i.1
  br label %bs_write.exit1462.7.i.1

bs_write.exit1462.7.i.1:                          ; preds = %if.then.i1449.7.i.1, %if.else.i1459.7.i.1
  %.sink2662 = phi i32 [ -8, %if.then.i1449.7.i.1 ], [ 24, %if.else.i1459.7.i.1 ]
  %s.sroa.15.6.7.i.1 = phi i32 [ %or.i1447.7.i.1, %if.then.i1449.7.i.1 ], [ %conv47.7.i.1, %if.else.i1459.7.i.1 ]
  %s.sroa.3.6.7.i.1 = phi i32 [ %s.sroa.3.6.6.i.1, %if.then.i1449.7.i.1 ], [ %959, %if.else.i1459.7.i.1 ]
  %sub.i1448.7.i.1 = add nsw i32 %storemerge.i1460.6.i.1, %.sink2662
  %inc52.i.1 = add nuw nsw i32 %i29.01749.i.1, 1
  %960 = load i32, i32* %chroma_v_shift.i, align 16, !tbaa !73
  %shr.i.1 = lshr i32 16, %960
  %cmp32.i.1 = icmp slt i32 %inc52.i.1, %shr.i.1
  br i1 %cmp32.i.1, label %for.cond36.preheader.i.1, label %for.cond.cleanup34.i.1

for.cond.cleanup34.i.1:                           ; preds = %bs_write.exit1462.7.i.1, %for.cond.cleanup16.i854, %for.cond.cleanup34.i
  %s.sroa.15.4.lcssa.i.1 = phi i32 [ %s.sroa.15.6.7.i, %for.cond.cleanup34.i ], [ %s.sroa.15.2.i875, %for.cond.cleanup16.i854 ], [ %s.sroa.15.6.7.i.1, %bs_write.exit1462.7.i.1 ]
  %s.sroa.3.4.lcssa.i.1 = phi i32 [ %s.sroa.3.6.7.i, %for.cond.cleanup34.i ], [ %s.sroa.3.2.i876, %for.cond.cleanup16.i854 ], [ %s.sroa.3.6.7.i.1, %bs_write.exit1462.7.i.1 ]
  %s.sroa.25.3.lcssa.i.1 = phi i32 [ %sub.i1448.7.i, %for.cond.cleanup34.i ], [ %sub13.i.i873, %for.cond.cleanup16.i854 ], [ %sub.i1448.7.i.1, %bs_write.exit1462.7.i.1 ]
  %and.i1465.i881 = and i32 %s.sroa.25.3.lcssa.i.1, 31
  %shl.i1466.i882 = shl i32 %s.sroa.15.4.lcssa.i.1, %and.i1465.i881
  %add5.i.i1467.i883 = tail call i32 @llvm.bswap.i32(i32 %shl.i1466.i882) #7
  %961 = inttoptr i32 %s.sroa.3.4.lcssa.i.1 to i32*
  store i32 %add5.i.i1467.i883, i32* %961, align 4, !tbaa !40
  %shr.i1469.i884 = ashr i32 %s.sroa.25.3.lcssa.i.1, 3
  %sub.i1470.i885 = sub nsw i32 4, %shr.i1469.i884
  %962 = inttoptr i32 %s.sroa.3.4.lcssa.i.1 to i8*
  %add.ptr.i1471.i886 = getelementptr inbounds i8, i8* %962, i32 %sub.i1470.i885
  %963 = ptrtoint i8* %add.ptr.i1471.i886 to i32
  store i32 %963, i32* %312, align 4, !tbaa !46
  tail call void @x264_8_cabac_encode_init_core(%struct.x264_cabac_t* %cb) #7
  %964 = load i32, i32* %312, align 4, !tbaa !46
  %965 = load i32, i32* %314, align 16, !tbaa !47
  %sub.ptr.sub.i1474.i887 = sub i32 %964, %965
  %966 = load i32, i32* %i_bytes_outstanding.i.i14, align 4, !tbaa !48
  %add.i1476.i888 = add nsw i32 %sub.ptr.sub.i1474.i887, %966
  %967 = load i32, i32* %i_queue.i.i16, align 8, !tbaa !49
  %i_tex_bits.i890 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 72, i32 21, i32 1
  %add1.i1479.i891 = sub i32 %967, %add1.i1427.i826
  br label %if.end6

for.body17.i.1:                                   ; preds = %bs_write.exit.i.1, %for.cond.cleanup16.i
  %i.01760.i.1 = phi i32 [ 0, %for.cond.cleanup16.i ], [ %inc.i.1, %bs_write.exit.i.1 ]
  %s.sroa.25.11759.i.1 = phi i32 [ %sub13.i.i, %for.cond.cleanup16.i ], [ %sub.i1436.i.1, %bs_write.exit.i.1 ]
  %s.sroa.3.11758.i.1 = phi i32 [ %s.sroa.3.2.i, %for.cond.cleanup16.i ], [ %s.sroa.3.2.i.1, %bs_write.exit.i.1 ]
  %s.sroa.15.11757.i.1 = phi i32 [ %s.sroa.15.2.i, %for.cond.cleanup16.i ], [ %s.sroa.15.2.i.1, %bs_write.exit.i.1 ]
  %968 = load i8*, i8** %arrayidx.i.1, align 4, !tbaa !39
  %arrayidx19.i.1 = getelementptr inbounds i8, i8* %968, i32 %i.01760.i.1
  %969 = load i8, i8* %arrayidx19.i.1, align 1, !tbaa !40
  %conv.i.1 = zext i8 %969 to i32
  %cmp.i.i.1 = icmp sgt i32 %s.sroa.25.11759.i.1, 8
  br i1 %cmp.i.i.1, label %if.then.i1437.i.1, label %if.else.i1441.i.1

if.else.i1441.i.1:                                ; preds = %for.body17.i.1
  %sub4.i.i.1 = sub nsw i32 8, %s.sroa.25.11759.i.1
  %shl7.i.i.1 = shl i32 %s.sroa.15.11757.i.1, %s.sroa.25.11759.i.1
  %shr.i1438.i.1 = lshr i32 %conv.i.1, %sub4.i.i.1
  %or8.i.i.1 = or i32 %shr.i1438.i.1, %shl7.i.i.1
  %add5.i.i.i.i.1 = tail call i32 @llvm.bswap.i32(i32 %or8.i.i.1) #7
  %970 = inttoptr i32 %s.sroa.3.11758.i.1 to i32*
  store i32 %add5.i.i.i.i.1, i32* %970, align 4, !tbaa !40
  %971 = inttoptr i32 %s.sroa.3.11758.i.1 to i8*
  %add.ptr.i1440.i.1 = getelementptr inbounds i8, i8* %971, i32 4
  %972 = ptrtoint i8* %add.ptr.i1440.i.1 to i32
  br label %bs_write.exit.i.1

if.then.i1437.i.1:                                ; preds = %for.body17.i.1
  %shl.i.i.1 = shl i32 %s.sroa.15.11757.i.1, 8
  %or.i.i.1 = or i32 %shl.i.i.1, %conv.i.1
  br label %bs_write.exit.i.1

bs_write.exit.i.1:                                ; preds = %if.then.i1437.i.1, %if.else.i1441.i.1
  %.sink2663 = phi i32 [ -8, %if.then.i1437.i.1 ], [ 24, %if.else.i1441.i.1 ]
  %s.sroa.15.2.i.1 = phi i32 [ %or.i.i.1, %if.then.i1437.i.1 ], [ %conv.i.1, %if.else.i1441.i.1 ]
  %s.sroa.3.2.i.1 = phi i32 [ %s.sroa.3.11758.i.1, %if.then.i1437.i.1 ], [ %972, %if.else.i1441.i.1 ]
  %sub.i1436.i.1 = add nsw i32 %s.sroa.25.11759.i.1, %.sink2663
  %inc.i.1 = add nuw nsw i32 %i.01760.i.1, 1
  %exitcond1816.i.1 = icmp eq i32 %inc.i.1, 256
  br i1 %exitcond1816.i.1, label %for.cond.cleanup16.i.1, label %for.body17.i.1

for.cond.cleanup16.i.1:                           ; preds = %bs_write.exit.i.1
  %arrayidx.i.2 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 14, i32 2
  br label %for.body17.i.2

for.body17.i.2:                                   ; preds = %bs_write.exit.i.2, %for.cond.cleanup16.i.1
  %i.01760.i.2 = phi i32 [ 0, %for.cond.cleanup16.i.1 ], [ %inc.i.2, %bs_write.exit.i.2 ]
  %s.sroa.25.11759.i.2 = phi i32 [ %sub.i1436.i.1, %for.cond.cleanup16.i.1 ], [ %sub.i1436.i.2, %bs_write.exit.i.2 ]
  %s.sroa.3.11758.i.2 = phi i32 [ %s.sroa.3.2.i.1, %for.cond.cleanup16.i.1 ], [ %s.sroa.3.2.i.2, %bs_write.exit.i.2 ]
  %s.sroa.15.11757.i.2 = phi i32 [ %s.sroa.15.2.i.1, %for.cond.cleanup16.i.1 ], [ %s.sroa.15.2.i.2, %bs_write.exit.i.2 ]
  %973 = load i8*, i8** %arrayidx.i.2, align 4, !tbaa !39
  %arrayidx19.i.2 = getelementptr inbounds i8, i8* %973, i32 %i.01760.i.2
  %974 = load i8, i8* %arrayidx19.i.2, align 1, !tbaa !40
  %conv.i.2 = zext i8 %974 to i32
  %cmp.i.i.2 = icmp sgt i32 %s.sroa.25.11759.i.2, 8
  br i1 %cmp.i.i.2, label %if.then.i1437.i.2, label %if.else.i1441.i.2

if.else.i1441.i.2:                                ; preds = %for.body17.i.2
  %sub4.i.i.2 = sub nsw i32 8, %s.sroa.25.11759.i.2
  %shl7.i.i.2 = shl i32 %s.sroa.15.11757.i.2, %s.sroa.25.11759.i.2
  %shr.i1438.i.2 = lshr i32 %conv.i.2, %sub4.i.i.2
  %or8.i.i.2 = or i32 %shr.i1438.i.2, %shl7.i.i.2
  %add5.i.i.i.i.2 = tail call i32 @llvm.bswap.i32(i32 %or8.i.i.2) #7
  %975 = inttoptr i32 %s.sroa.3.11758.i.2 to i32*
  store i32 %add5.i.i.i.i.2, i32* %975, align 4, !tbaa !40
  %976 = inttoptr i32 %s.sroa.3.11758.i.2 to i8*
  %add.ptr.i1440.i.2 = getelementptr inbounds i8, i8* %976, i32 4
  %977 = ptrtoint i8* %add.ptr.i1440.i.2 to i32
  br label %bs_write.exit.i.2

if.then.i1437.i.2:                                ; preds = %for.body17.i.2
  %shl.i.i.2 = shl i32 %s.sroa.15.11757.i.2, 8
  %or.i.i.2 = or i32 %shl.i.i.2, %conv.i.2
  br label %bs_write.exit.i.2

bs_write.exit.i.2:                                ; preds = %if.then.i1437.i.2, %if.else.i1441.i.2
  %.sink2664 = phi i32 [ -8, %if.then.i1437.i.2 ], [ 24, %if.else.i1441.i.2 ]
  %s.sroa.15.2.i.2 = phi i32 [ %or.i.i.2, %if.then.i1437.i.2 ], [ %conv.i.2, %if.else.i1441.i.2 ]
  %s.sroa.3.2.i.2 = phi i32 [ %s.sroa.3.11758.i.2, %if.then.i1437.i.2 ], [ %977, %if.else.i1441.i.2 ]
  %sub.i1436.i.2 = add nsw i32 %s.sroa.25.11759.i.2, %.sink2664
  %inc.i.2 = add nuw nsw i32 %i.01760.i.2, 1
  %exitcond1816.i.2 = icmp eq i32 %inc.i.2, 256
  br i1 %exitcond1816.i.2, label %for.cond.cleanup16.i.2, label %for.body17.i.2

for.cond.cleanup16.i.2:                           ; preds = %bs_write.exit.i.2
  %and.i1465.i = and i32 %sub.i1436.i.2, 31
  %shl.i1466.i = shl i32 %s.sroa.15.2.i.2, %and.i1465.i
  %add5.i.i1467.i = tail call i32 @llvm.bswap.i32(i32 %shl.i1466.i) #7
  %978 = inttoptr i32 %s.sroa.3.2.i.2 to i32*
  store i32 %add5.i.i1467.i, i32* %978, align 4, !tbaa !40
  %shr.i1469.i = ashr i32 %sub.i1436.i.2, 3
  %sub.i1470.i = sub nsw i32 4, %shr.i1469.i
  %979 = inttoptr i32 %s.sroa.3.2.i.2 to i8*
  %add.ptr.i1471.i = getelementptr inbounds i8, i8* %979, i32 %sub.i1470.i
  %980 = ptrtoint i8* %add.ptr.i1471.i to i32
  store i32 %980, i32* %2, align 4, !tbaa !46
  tail call void @x264_8_cabac_encode_init_core(%struct.x264_cabac_t* %cb) #7
  %981 = load i32, i32* %2, align 4, !tbaa !46
  %982 = load i32, i32* %4, align 16, !tbaa !47
  %sub.ptr.sub.i1474.i = sub i32 %981, %982
  %983 = load i32, i32* %i_bytes_outstanding.i.i, align 4, !tbaa !48
  %add.i1476.i = add nsw i32 %sub.ptr.sub.i1474.i, %983
  %984 = load i32, i32* %i_queue.i.i, align 8, !tbaa !49
  %i_tex_bits.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 72, i32 21, i32 1
  %add1.i1479.i = sub i32 %984, %add1.i1427.i
  br label %if.end6

land.rhs.us.i.1:                                  ; preds = %for.cond.cleanup471.critedge.i, %if.end500.us.i.1
  %msk.01734.us.i.1 = phi i32 [ %shr470.us.i.1, %if.end500.us.i.1 ], [ %269, %for.cond.cleanup471.critedge.i ]
  %i462.01733.us.i.1 = phi i32 [ %inc504.us.i.1, %if.end500.us.i.1 ], [ 0, %for.cond.cleanup471.critedge.i ]
  %arrayidx.i1534.us.i.1 = getelementptr inbounds [16 x i8], [16 x i8]* @x264_ctz_4bit.lut, i32 0, i32 %msk.01734.us.i.1
  %985 = load i8, i8* %arrayidx.i1534.us.i.1, align 1, !tbaa !40
  %conv.i1535.us.i.1 = zext i8 %985 to i32
  %add468.us.i.1 = add nsw i32 %i462.01733.us.i.1, %conv.i1535.us.i.1
  %add469.us.i.1 = add nuw nsw i32 %conv.i1535.us.i.1, 1
  %shr470.us.i.1 = ashr i32 %msk.01734.us.i.1, %add469.us.i.1
  %mul477.us.i.1 = shl i32 %add468.us.i.1, 2
  %add479.us.i.1 = add nsw i32 %mul477.us.i.1, 16
  %arrayidx44.i1536.us.i.1 = getelementptr inbounds [51 x i8], [51 x i8]* @x264_scan8, i32 0, i32 %add479.us.i.1
  %986 = load i8, i8* %arrayidx44.i1536.us.i.1, align 1, !tbaa !40
  %conv45.i1537.us.i.1 = zext i8 %986 to i32
  %sub46.i1538.us.i.1 = add nsw i32 %conv45.i1537.us.i.1, -1
  %arrayidx47.i1539.us.i.1 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub46.i1538.us.i.1
  %987 = load i8, i8* %arrayidx47.i1539.us.i.1, align 1, !tbaa !40
  %conv48.i1540.us.i.1 = zext i8 %987 to i32
  %sub55.i1541.us.i.1 = add nsw i32 %conv45.i1537.us.i.1, -8
  %arrayidx56.i1542.us.i.1 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub55.i1541.us.i.1
  %988 = load i8, i8* %arrayidx56.i1542.us.i.1, align 1, !tbaa !40
  %conv57.i1543.us.i.1 = zext i8 %988 to i32
  %and68.i1546.us.i.1 = and i32 %add67.i.i, %conv48.i1540.us.i.1
  %and71.i1547.us.i.1 = and i32 %add67.i.i, %conv57.i1543.us.i.1
  %tobool74.i1550.us.i.1 = icmp eq i32 %and71.i1547.us.i.1, 0
  %mul76.i1551.us.i.1 = select i1 %tobool74.i1550.us.i.1, i32 0, i32 2
  %tobool78.i1552.us.i.1 = icmp ne i32 %and68.i1546.us.i.1, 0
  %lnot.ext82.i1553.us.i.1 = zext i1 %tobool78.i1552.us.i.1 to i32
  %add77.i1554.us.i.1 = or i32 %mul76.i1551.us.i.1, %lnot.ext82.i1553.us.i.1
  %add83.i1555.us.i.1 = or i32 %add77.i1554.us.i.1, 1016
  %arrayidx489.us.i.1 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %conv45.i1537.us.i.1
  %989 = load i8, i8* %arrayidx489.us.i.1, align 1, !tbaa !40
  %tobool490.us.i.1 = icmp eq i8 %989, 0
  br i1 %tobool490.us.i.1, label %if.else499.us.i.1, label %if.then491.us.i.1

if.then491.us.i.1:                                ; preds = %land.rhs.us.i.1
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add83.i1555.us.i.1, i32 1) #7
  %add496.us.i.1 = add nsw i32 %add468.us.i.1, 4
  %arraydecay498.us.i.1 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 69, i32 2, i32 %add496.us.i.1, i32 0
  tail call void @x264_8_cabac_block_residual_c(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* %cb, i32 9, i16* nonnull %arraydecay498.us.i.1) #7
  br label %if.end500.us.i.1

if.else499.us.i.1:                                ; preds = %land.rhs.us.i.1
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add83.i1555.us.i.1, i32 0) #7
  br label %if.end500.us.i.1

if.end500.us.i.1:                                 ; preds = %if.else499.us.i.1, %if.then491.us.i.1
  %inc504.us.i.1 = add nsw i32 %add468.us.i.1, 1
  %tobool466.us.i.1 = icmp eq i32 %shr470.us.i.1, 0
  br i1 %tobool466.us.i.1, label %for.cond.cleanup471.critedge.i.1, label %land.rhs.us.i.1

for.cond.cleanup471.critedge.i.1:                 ; preds = %if.end500.us.i.1, %for.cond.cleanup471.critedge.i
  %990 = load i32, i32* %i_cbp_luma80.i, align 32, !tbaa !59
  %tobool4661732.i.2 = icmp eq i32 %990, 0
  br i1 %tobool4661732.i.2, label %for.cond.cleanup471.critedge.i.2, label %land.rhs.us.i.2

land.rhs.us.i.2:                                  ; preds = %for.cond.cleanup471.critedge.i.1, %if.end500.us.i.2
  %msk.01734.us.i.2 = phi i32 [ %shr470.us.i.2, %if.end500.us.i.2 ], [ %990, %for.cond.cleanup471.critedge.i.1 ]
  %i462.01733.us.i.2 = phi i32 [ %inc504.us.i.2, %if.end500.us.i.2 ], [ 0, %for.cond.cleanup471.critedge.i.1 ]
  %arrayidx.i1534.us.i.2 = getelementptr inbounds [16 x i8], [16 x i8]* @x264_ctz_4bit.lut, i32 0, i32 %msk.01734.us.i.2
  %991 = load i8, i8* %arrayidx.i1534.us.i.2, align 1, !tbaa !40
  %conv.i1535.us.i.2 = zext i8 %991 to i32
  %add468.us.i.2 = add nsw i32 %i462.01733.us.i.2, %conv.i1535.us.i.2
  %add469.us.i.2 = add nuw nsw i32 %conv.i1535.us.i.2, 1
  %shr470.us.i.2 = ashr i32 %msk.01734.us.i.2, %add469.us.i.2
  %mul477.us.i.2 = shl i32 %add468.us.i.2, 2
  %add479.us.i.2 = add nsw i32 %mul477.us.i.2, 32
  %arrayidx44.i1536.us.i.2 = getelementptr inbounds [51 x i8], [51 x i8]* @x264_scan8, i32 0, i32 %add479.us.i.2
  %992 = load i8, i8* %arrayidx44.i1536.us.i.2, align 1, !tbaa !40
  %conv45.i1537.us.i.2 = zext i8 %992 to i32
  %sub46.i1538.us.i.2 = add nsw i32 %conv45.i1537.us.i.2, -1
  %arrayidx47.i1539.us.i.2 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub46.i1538.us.i.2
  %993 = load i8, i8* %arrayidx47.i1539.us.i.2, align 1, !tbaa !40
  %conv48.i1540.us.i.2 = zext i8 %993 to i32
  %sub55.i1541.us.i.2 = add nsw i32 %conv45.i1537.us.i.2, -8
  %arrayidx56.i1542.us.i.2 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub55.i1541.us.i.2
  %994 = load i8, i8* %arrayidx56.i1542.us.i.2, align 1, !tbaa !40
  %conv57.i1543.us.i.2 = zext i8 %994 to i32
  %and68.i1546.us.i.2 = and i32 %add67.i.i, %conv48.i1540.us.i.2
  %and71.i1547.us.i.2 = and i32 %add67.i.i, %conv57.i1543.us.i.2
  %tobool74.i1550.us.i.2 = icmp eq i32 %and71.i1547.us.i.2, 0
  %mul76.i1551.us.i.2 = select i1 %tobool74.i1550.us.i.2, i32 0, i32 2
  %tobool78.i1552.us.i.2 = icmp ne i32 %and68.i1546.us.i.2, 0
  %lnot.ext82.i1553.us.i.2 = zext i1 %tobool78.i1552.us.i.2 to i32
  %add77.i1554.us.i.2 = or i32 %mul76.i1551.us.i.2, %lnot.ext82.i1553.us.i.2
  %add83.i1555.us.i.2 = or i32 %add77.i1554.us.i.2, 1020
  %arrayidx489.us.i.2 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %conv45.i1537.us.i.2
  %995 = load i8, i8* %arrayidx489.us.i.2, align 1, !tbaa !40
  %tobool490.us.i.2 = icmp eq i8 %995, 0
  br i1 %tobool490.us.i.2, label %if.else499.us.i.2, label %if.then491.us.i.2

if.then491.us.i.2:                                ; preds = %land.rhs.us.i.2
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add83.i1555.us.i.2, i32 1) #7
  %add496.us.i.2 = add nsw i32 %add468.us.i.2, 8
  %arraydecay498.us.i.2 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 69, i32 2, i32 %add496.us.i.2, i32 0
  tail call void @x264_8_cabac_block_residual_c(%struct.x264_t* nonnull %h, %struct.x264_cabac_t* %cb, i32 13, i16* nonnull %arraydecay498.us.i.2) #7
  br label %if.end500.us.i.2

if.else499.us.i.2:                                ; preds = %land.rhs.us.i.2
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add83.i1555.us.i.2, i32 0) #7
  br label %if.end500.us.i.2

if.end500.us.i.2:                                 ; preds = %if.else499.us.i.2, %if.then491.us.i.2
  %inc504.us.i.2 = add nsw i32 %add468.us.i.2, 1
  %tobool466.us.i.2 = icmp eq i32 %shr470.us.i.2, 0
  br i1 %tobool466.us.i.2, label %for.cond.cleanup471.critedge.i.2, label %land.rhs.us.i.2

for.cond.cleanup471.critedge.i.2:                 ; preds = %if.end500.us.i.2, %for.cond.cleanup471.critedge.i.1
  %996 = load i32, i32* %i_neighbour.i, align 32, !tbaa !56
  %and511.i = and i32 %996, 1
  %tobool512.i = icmp eq i32 %and511.i, 0
  br i1 %tobool512.i, label %if.end652.i, label %land.lhs.true513.i
}

declare dso_local void @x264_8_cabac_encode_ue_bypass(%struct.x264_cabac_t*, i32, i32) local_unnamed_addr #2

declare dso_local void @x264_8_cabac_encode_bypass_c(%struct.x264_cabac_t*, i32) local_unnamed_addr #2

declare dso_local void @x264_8_cabac_encode_init_core(%struct.x264_cabac_t*) local_unnamed_addr #2

; Function Attrs: nounwind
define internal fastcc void @cabac_block_residual_422_dc(i32 (i16*)* %h.0.98.16.3.val, %struct.x264_cabac_t* %cb, i16* %l) unnamed_addr #0 {
entry:
  %coeffs.i = alloca [64 x i16], align 4
  %0 = load i16, i16* getelementptr inbounds ([2 x [16 x i16]], [2 x [16 x i16]]* @x264_significant_coeff_flag_offset, i32 0, i32 0, i32 3), align 2, !tbaa !37
  %conv.i = zext i16 %0 to i32
  %1 = load i16, i16* getelementptr inbounds ([2 x [16 x i16]], [2 x [16 x i16]]* @x264_last_coeff_flag_offset, i32 0, i32 0, i32 3), align 2, !tbaa !37
  %conv2.i = zext i16 %1 to i32
  %2 = load i16, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x264_coeff_abs_level_m1_offset, i32 0, i32 3), align 2, !tbaa !37
  %conv4.i = zext i16 %2 to i32
  %call.i = tail call i32 %h.0.98.16.3.val(i16* %l) #7
  %3 = bitcast [64 x i16]* %coeffs.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %3) #7
  %4 = load i16, i16* %l, align 2, !tbaa !37
  %tobool8.i = icmp eq i16 %4, 0
  br i1 %tobool8.i, label %if.else22.i, label %if.then9.i

if.then9.i:                                       ; preds = %entry
  %arrayidx11.i = getelementptr inbounds [64 x i16], [64 x i16]* %coeffs.i, i32 0, i32 0
  store i16 %4, i16* %arrayidx11.i, align 4, !tbaa !37
  %5 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @x264_coeff_flag_offset_chroma_422_dc, i32 0, i32 0), align 1, !tbaa !40
  %conv13.i = zext i8 %5 to i32
  %add.i = add nuw nsw i32 %conv13.i, %conv.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add.i, i32 1) #7
  %cmp.i = icmp eq i32 %call.i, 0
  %add18.i = add nuw nsw i32 %conv13.i, %conv2.i
  br i1 %cmp.i, label %if.then15.i, label %if.end26.i

if.then15.i:                                      ; preds = %if.then9.6.i, %if.then9.5.i, %if.then9.4.i, %if.then9.3.i, %if.then9.2.i, %if.then9.1.i, %if.then9.i
  %inc.lcssa.i = phi i32 [ 0, %if.then9.i ], [ %inc.1.i, %if.then9.1.i ], [ %inc.2.i, %if.then9.2.i ], [ %inc.3.i, %if.then9.3.i ], [ %inc.4.i, %if.then9.4.i ], [ %inc.5.i, %if.then9.5.i ], [ %inc.6.i, %if.then9.6.i ]
  %add18.lcssa.i = phi i32 [ %add18.i, %if.then9.i ], [ %add18.1.i, %if.then9.1.i ], [ %add18.2.i, %if.then9.2.i ], [ %add18.3.i, %if.then9.3.i ], [ %add18.4.i, %if.then9.4.i ], [ %add18.5.i, %if.then9.5.i ], [ %add18.6.i, %if.then9.6.i ]
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add18.lcssa.i, i32 1) #7
  br label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %if.end26.6.i, %if.then15.i
  %coeff_idx.11.i.ph = phi i32 [ %inc.lcssa.i, %if.then15.i ], [ %inc32.i, %if.end26.6.i ]
  br label %do.body.i

if.else22.i:                                      ; preds = %entry
  %6 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @x264_coeff_flag_offset_chroma_422_dc, i32 0, i32 0), align 1, !tbaa !40
  %conv24.i = zext i8 %6 to i32
  %add25.i = add nuw nsw i32 %conv24.i, %conv.i
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then9.i, %if.else22.i
  %add25.i.sink = phi i32 [ %add25.i, %if.else22.i ], [ %add18.i, %if.then9.i ]
  %coeff_idx.1.i = phi i32 [ -1, %if.else22.i ], [ 0, %if.then9.i ]
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add25.i.sink, i32 0) #7
  %arrayidx7.1.i = getelementptr inbounds i16, i16* %l, i32 1
  %7 = load i16, i16* %arrayidx7.1.i, align 2, !tbaa !37
  %tobool8.1.i = icmp eq i16 %7, 0
  br i1 %tobool8.1.i, label %if.else22.1.i, label %if.then9.1.i

do.body.i:                                        ; preds = %do.body.i.preheader, %if.end140.i
  %node_ctx.0.i = phi i32 [ %node_ctx.1.i, %if.end140.i ], [ 0, %do.body.i.preheader ]
  %coeff_idx.11.i = phi i32 [ %dec141.i, %if.end140.i ], [ %coeff_idx.11.i.ph, %do.body.i.preheader ]
  %arrayidx111.i = getelementptr inbounds [64 x i16], [64 x i16]* %coeffs.i, i32 0, i32 %coeff_idx.11.i
  %8 = load i16, i16* %arrayidx111.i, align 2, !tbaa !37
  %conv112.i = sext i16 %8 to i32
  %9 = icmp slt i32 %conv112.i, 0
  %neg.i = sub nsw i32 0, %conv112.i
  %10 = select i1 %9, i32 %neg.i, i32 %conv112.i
  %shr.i = ashr i32 %conv112.i, 31
  %arrayidx114.i = getelementptr inbounds [8 x i8], [8 x i8]* @coeff_abs_level1_ctx, i32 0, i32 %node_ctx.0.i
  %11 = load i8, i8* %arrayidx114.i, align 1, !tbaa !40
  %conv115.i = zext i8 %11 to i32
  %add116.i = add nuw nsw i32 %conv115.i, %conv4.i
  %cmp117.i = icmp sgt i32 %10, 1
  br i1 %cmp117.i, label %if.then119.i, label %if.else137.i

if.then119.i:                                     ; preds = %do.body.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add116.i, i32 1) #7
  %arrayidx120.i = getelementptr inbounds [8 x i8], [8 x i8]* @coeff_abs_levelgt1_ctx_chroma_dc, i32 0, i32 %node_ctx.0.i
  %12 = load i8, i8* %arrayidx120.i, align 1, !tbaa !40
  %conv121.i = zext i8 %12 to i32
  %add122.i = add nuw nsw i32 %conv121.i, %conv4.i
  %cmp124.i = icmp slt i32 %10, 15
  %.op.i = add nsw i32 %10, -2
  %spec.select.i = select i1 %cmp124.i, i32 %.op.i, i32 13
  %cmp127242.i = icmp sgt i32 %spec.select.i, 0
  br i1 %cmp127242.i, label %for.body.i, label %for.cond.cleanup.i

for.cond.cleanup.i:                               ; preds = %for.body.i, %if.then119.i
  br i1 %cmp124.i, label %if.then131.i, label %if.else132.i

for.body.i:                                       ; preds = %if.then119.i, %for.body.i
  %i123.0243.i = phi i32 [ %dec.i, %for.body.i ], [ %spec.select.i, %if.then119.i ]
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add122.i, i32 1) #7
  %dec.i = add nsw i32 %i123.0243.i, -1
  %cmp127.i = icmp sgt i32 %i123.0243.i, 1
  br i1 %cmp127.i, label %for.body.i, label %for.cond.cleanup.i

if.then131.i:                                     ; preds = %for.cond.cleanup.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add122.i, i32 0) #7
  br label %if.end140.i

if.else132.i:                                     ; preds = %for.cond.cleanup.i
  %sub133.i = add nsw i32 %10, -15
  tail call void @x264_8_cabac_encode_ue_bypass(%struct.x264_cabac_t* %cb, i32 0, i32 %sub133.i) #7
  br label %if.end140.i

if.else137.i:                                     ; preds = %do.body.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add116.i, i32 0) #7
  br label %if.end140.i

if.end140.i:                                      ; preds = %if.then131.i, %if.else132.i, %if.else137.i
  %.sink = phi i32 [ 0, %if.else137.i ], [ 1, %if.else132.i ], [ 1, %if.then131.i ]
  %arrayidx138.i = getelementptr inbounds [2 x [8 x i8]], [2 x [8 x i8]]* @coeff_abs_level_transition, i32 0, i32 %.sink, i32 %node_ctx.0.i
  %node_ctx.1.in.i = load i8, i8* %arrayidx138.i, align 1, !tbaa !40
  %node_ctx.1.i = zext i8 %node_ctx.1.in.i to i32
  tail call void @x264_8_cabac_encode_bypass_c(%struct.x264_cabac_t* %cb, i32 %shr.i) #7
  %dec141.i = add nsw i32 %coeff_idx.11.i, -1
  %cmp142.i = icmp sgt i32 %coeff_idx.11.i, 0
  br i1 %cmp142.i, label %do.body.i, label %cabac_block_residual_internal.exit

if.then9.1.i:                                     ; preds = %if.end26.i
  %inc.1.i = add nsw i32 %coeff_idx.1.i, 1
  %arrayidx11.1.i = getelementptr inbounds [64 x i16], [64 x i16]* %coeffs.i, i32 0, i32 %inc.1.i
  store i16 %7, i16* %arrayidx11.1.i, align 2, !tbaa !37
  %13 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @x264_coeff_flag_offset_chroma_422_dc, i32 0, i32 1), align 1, !tbaa !40
  %conv13.1.i = zext i8 %13 to i32
  %add.1.i = add nuw nsw i32 %conv13.1.i, %conv.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add.1.i, i32 1) #7
  %cmp.1.i = icmp eq i32 %call.i, 1
  %add18.1.i = add nuw nsw i32 %conv13.1.i, %conv2.i
  br i1 %cmp.1.i, label %if.then15.i, label %if.end26.1.i

if.else22.1.i:                                    ; preds = %if.end26.i
  %14 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @x264_coeff_flag_offset_chroma_422_dc, i32 0, i32 1), align 1, !tbaa !40
  %conv24.1.i = zext i8 %14 to i32
  %add25.1.i = add nuw nsw i32 %conv24.1.i, %conv.i
  br label %if.end26.1.i

if.end26.1.i:                                     ; preds = %if.then9.1.i, %if.else22.1.i
  %add25.1.i.sink = phi i32 [ %add25.1.i, %if.else22.1.i ], [ %add18.1.i, %if.then9.1.i ]
  %coeff_idx.1.1.i = phi i32 [ %coeff_idx.1.i, %if.else22.1.i ], [ %inc.1.i, %if.then9.1.i ]
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add25.1.i.sink, i32 0) #7
  %arrayidx7.2.i = getelementptr inbounds i16, i16* %l, i32 2
  %15 = load i16, i16* %arrayidx7.2.i, align 2, !tbaa !37
  %tobool8.2.i = icmp eq i16 %15, 0
  br i1 %tobool8.2.i, label %if.else22.2.i, label %if.then9.2.i

if.then9.2.i:                                     ; preds = %if.end26.1.i
  %inc.2.i = add nsw i32 %coeff_idx.1.1.i, 1
  %arrayidx11.2.i = getelementptr inbounds [64 x i16], [64 x i16]* %coeffs.i, i32 0, i32 %inc.2.i
  store i16 %15, i16* %arrayidx11.2.i, align 2, !tbaa !37
  %16 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @x264_coeff_flag_offset_chroma_422_dc, i32 0, i32 2), align 1, !tbaa !40
  %conv13.2.i = zext i8 %16 to i32
  %add.2.i = add nuw nsw i32 %conv13.2.i, %conv.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add.2.i, i32 1) #7
  %cmp.2.i = icmp eq i32 %call.i, 2
  %add18.2.i = add nuw nsw i32 %conv13.2.i, %conv2.i
  br i1 %cmp.2.i, label %if.then15.i, label %if.end26.2.i

if.else22.2.i:                                    ; preds = %if.end26.1.i
  %17 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @x264_coeff_flag_offset_chroma_422_dc, i32 0, i32 2), align 1, !tbaa !40
  %conv24.2.i = zext i8 %17 to i32
  %add25.2.i = add nuw nsw i32 %conv24.2.i, %conv.i
  br label %if.end26.2.i

if.end26.2.i:                                     ; preds = %if.then9.2.i, %if.else22.2.i
  %add25.2.i.sink = phi i32 [ %add25.2.i, %if.else22.2.i ], [ %add18.2.i, %if.then9.2.i ]
  %coeff_idx.1.2.i = phi i32 [ %coeff_idx.1.1.i, %if.else22.2.i ], [ %inc.2.i, %if.then9.2.i ]
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add25.2.i.sink, i32 0) #7
  %arrayidx7.3.i = getelementptr inbounds i16, i16* %l, i32 3
  %18 = load i16, i16* %arrayidx7.3.i, align 2, !tbaa !37
  %tobool8.3.i = icmp eq i16 %18, 0
  br i1 %tobool8.3.i, label %if.else22.3.i, label %if.then9.3.i

if.then9.3.i:                                     ; preds = %if.end26.2.i
  %inc.3.i = add nsw i32 %coeff_idx.1.2.i, 1
  %arrayidx11.3.i = getelementptr inbounds [64 x i16], [64 x i16]* %coeffs.i, i32 0, i32 %inc.3.i
  store i16 %18, i16* %arrayidx11.3.i, align 2, !tbaa !37
  %19 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @x264_coeff_flag_offset_chroma_422_dc, i32 0, i32 3), align 1, !tbaa !40
  %conv13.3.i = zext i8 %19 to i32
  %add.3.i = add nuw nsw i32 %conv13.3.i, %conv.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add.3.i, i32 1) #7
  %cmp.3.i = icmp eq i32 %call.i, 3
  %add18.3.i = add nuw nsw i32 %conv13.3.i, %conv2.i
  br i1 %cmp.3.i, label %if.then15.i, label %if.end26.3.i

if.else22.3.i:                                    ; preds = %if.end26.2.i
  %20 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @x264_coeff_flag_offset_chroma_422_dc, i32 0, i32 3), align 1, !tbaa !40
  %conv24.3.i = zext i8 %20 to i32
  %add25.3.i = add nuw nsw i32 %conv24.3.i, %conv.i
  br label %if.end26.3.i

if.end26.3.i:                                     ; preds = %if.then9.3.i, %if.else22.3.i
  %add25.3.i.sink = phi i32 [ %add25.3.i, %if.else22.3.i ], [ %add18.3.i, %if.then9.3.i ]
  %coeff_idx.1.3.i = phi i32 [ %coeff_idx.1.2.i, %if.else22.3.i ], [ %inc.3.i, %if.then9.3.i ]
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add25.3.i.sink, i32 0) #7
  %arrayidx7.4.i = getelementptr inbounds i16, i16* %l, i32 4
  %21 = load i16, i16* %arrayidx7.4.i, align 2, !tbaa !37
  %tobool8.4.i = icmp eq i16 %21, 0
  br i1 %tobool8.4.i, label %if.else22.4.i, label %if.then9.4.i

if.then9.4.i:                                     ; preds = %if.end26.3.i
  %inc.4.i = add nsw i32 %coeff_idx.1.3.i, 1
  %arrayidx11.4.i = getelementptr inbounds [64 x i16], [64 x i16]* %coeffs.i, i32 0, i32 %inc.4.i
  store i16 %21, i16* %arrayidx11.4.i, align 2, !tbaa !37
  %22 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @x264_coeff_flag_offset_chroma_422_dc, i32 0, i32 4), align 1, !tbaa !40
  %conv13.4.i = zext i8 %22 to i32
  %add.4.i = add nuw nsw i32 %conv13.4.i, %conv.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add.4.i, i32 1) #7
  %cmp.4.i = icmp eq i32 %call.i, 4
  %add18.4.i = add nuw nsw i32 %conv13.4.i, %conv2.i
  br i1 %cmp.4.i, label %if.then15.i, label %if.end26.4.i

if.else22.4.i:                                    ; preds = %if.end26.3.i
  %23 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @x264_coeff_flag_offset_chroma_422_dc, i32 0, i32 4), align 1, !tbaa !40
  %conv24.4.i = zext i8 %23 to i32
  %add25.4.i = add nuw nsw i32 %conv24.4.i, %conv.i
  br label %if.end26.4.i

if.end26.4.i:                                     ; preds = %if.then9.4.i, %if.else22.4.i
  %add25.4.i.sink = phi i32 [ %add25.4.i, %if.else22.4.i ], [ %add18.4.i, %if.then9.4.i ]
  %coeff_idx.1.4.i = phi i32 [ %coeff_idx.1.3.i, %if.else22.4.i ], [ %inc.4.i, %if.then9.4.i ]
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add25.4.i.sink, i32 0) #7
  %arrayidx7.5.i = getelementptr inbounds i16, i16* %l, i32 5
  %24 = load i16, i16* %arrayidx7.5.i, align 2, !tbaa !37
  %tobool8.5.i = icmp eq i16 %24, 0
  br i1 %tobool8.5.i, label %if.else22.5.i, label %if.then9.5.i

if.then9.5.i:                                     ; preds = %if.end26.4.i
  %inc.5.i = add nsw i32 %coeff_idx.1.4.i, 1
  %arrayidx11.5.i = getelementptr inbounds [64 x i16], [64 x i16]* %coeffs.i, i32 0, i32 %inc.5.i
  store i16 %24, i16* %arrayidx11.5.i, align 2, !tbaa !37
  %25 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @x264_coeff_flag_offset_chroma_422_dc, i32 0, i32 5), align 1, !tbaa !40
  %conv13.5.i = zext i8 %25 to i32
  %add.5.i = add nuw nsw i32 %conv13.5.i, %conv.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add.5.i, i32 1) #7
  %cmp.5.i = icmp eq i32 %call.i, 5
  %add18.5.i = add nuw nsw i32 %conv13.5.i, %conv2.i
  br i1 %cmp.5.i, label %if.then15.i, label %if.end26.5.i

if.else22.5.i:                                    ; preds = %if.end26.4.i
  %26 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @x264_coeff_flag_offset_chroma_422_dc, i32 0, i32 5), align 1, !tbaa !40
  %conv24.5.i = zext i8 %26 to i32
  %add25.5.i = add nuw nsw i32 %conv24.5.i, %conv.i
  br label %if.end26.5.i

if.end26.5.i:                                     ; preds = %if.then9.5.i, %if.else22.5.i
  %add25.5.i.sink = phi i32 [ %add25.5.i, %if.else22.5.i ], [ %add18.5.i, %if.then9.5.i ]
  %coeff_idx.1.5.i = phi i32 [ %coeff_idx.1.4.i, %if.else22.5.i ], [ %inc.5.i, %if.then9.5.i ]
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add25.5.i.sink, i32 0) #7
  %arrayidx7.6.i = getelementptr inbounds i16, i16* %l, i32 6
  %27 = load i16, i16* %arrayidx7.6.i, align 2, !tbaa !37
  %tobool8.6.i = icmp eq i16 %27, 0
  br i1 %tobool8.6.i, label %if.else22.6.i, label %if.then9.6.i

if.then9.6.i:                                     ; preds = %if.end26.5.i
  %inc.6.i = add nsw i32 %coeff_idx.1.5.i, 1
  %arrayidx11.6.i = getelementptr inbounds [64 x i16], [64 x i16]* %coeffs.i, i32 0, i32 %inc.6.i
  store i16 %27, i16* %arrayidx11.6.i, align 2, !tbaa !37
  %28 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @x264_coeff_flag_offset_chroma_422_dc, i32 0, i32 6), align 1, !tbaa !40
  %conv13.6.i = zext i8 %28 to i32
  %add.6.i = add nuw nsw i32 %conv13.6.i, %conv.i
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add.6.i, i32 1) #7
  %cmp.6.i = icmp eq i32 %call.i, 6
  %add18.6.i = add nuw nsw i32 %conv13.6.i, %conv2.i
  br i1 %cmp.6.i, label %if.then15.i, label %if.end26.6.i

if.else22.6.i:                                    ; preds = %if.end26.5.i
  %29 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @x264_coeff_flag_offset_chroma_422_dc, i32 0, i32 6), align 1, !tbaa !40
  %conv24.6.i = zext i8 %29 to i32
  %add25.6.i = add nuw nsw i32 %conv24.6.i, %conv.i
  br label %if.end26.6.i

if.end26.6.i:                                     ; preds = %if.then9.6.i, %if.else22.6.i
  %add25.6.i.sink = phi i32 [ %add25.6.i, %if.else22.6.i ], [ %add18.6.i, %if.then9.6.i ]
  %coeff_idx.1.6.i = phi i32 [ %coeff_idx.1.5.i, %if.else22.6.i ], [ %inc.6.i, %if.then9.6.i ]
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add25.6.i.sink, i32 0) #7
  %arrayidx31.i = getelementptr inbounds i16, i16* %l, i32 7
  %30 = load i16, i16* %arrayidx31.i, align 2, !tbaa !37
  %inc32.i = add nsw i32 %coeff_idx.1.6.i, 1
  %arrayidx33.i = getelementptr inbounds [64 x i16], [64 x i16]* %coeffs.i, i32 0, i32 %inc32.i
  store i16 %30, i16* %arrayidx33.i, align 2, !tbaa !37
  br label %do.body.i.preheader

cabac_block_residual_internal.exit:               ; preds = %if.end140.i
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %3) #7
  ret void
}

; Function Attrs: noinline nounwind
define internal fastcc void @cabac_ref_p(%struct.x264_t* nocapture readonly %h, %struct.x264_cabac_t* %cb, i32 %idx) unnamed_addr #3 {
entry:
  %arrayidx.i = getelementptr inbounds [51 x i8], [51 x i8]* @x264_scan8, i32 0, i32 %idx
  %0 = load i8, i8* %arrayidx.i, align 1, !tbaa !40
  %conv.i = zext i8 %0 to i32
  %sub.i = add nsw i32 %conv.i, -1
  %arrayidx2.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 0, i32 %sub.i
  %1 = load i8, i8* %arrayidx2.i, align 1, !tbaa !40
  %sub8.i = add nsw i32 %conv.i, -8
  %arrayidx9.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 0, i32 %sub8.i
  %2 = load i8, i8* %arrayidx9.i, align 1, !tbaa !40
  %cmp.i = icmp sgt i8 %1, 0
  %spec.select = zext i1 %cmp.i to i32
  %cmp17.i = icmp sgt i8 %2, 0
  %add.i = or i32 %spec.select, 2
  %ctx.1.i = select i1 %cmp17.i, i32 %add.i, i32 %spec.select
  %arrayidx34.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 0, i32 %conv.i
  %3 = load i8, i8* %arrayidx34.i, align 1, !tbaa !40
  %cmp3663.i = icmp sgt i8 %3, 0
  %add3864.i = add nuw nsw i32 %ctx.1.i, 54
  br i1 %cmp3663.i, label %for.body.preheader.i, label %cabac_ref_internal.exit

for.body.preheader.i:                             ; preds = %entry
  %conv3569.i = zext i8 %3 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.preheader.i
  %add3867.i = phi i32 [ %add38.i, %for.body.i ], [ %add3864.i, %for.body.preheader.i ]
  %i_ref.066.i = phi i32 [ %dec.i, %for.body.i ], [ %conv3569.i, %for.body.preheader.i ]
  %ctx.265.i = phi i32 [ %add39.i, %for.body.i ], [ %ctx.1.i, %for.body.preheader.i ]
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add3867.i, i32 1) #7
  %shr.i = ashr i32 %ctx.265.i, 2
  %add39.i = add nsw i32 %shr.i, 4
  %dec.i = add nsw i32 %i_ref.066.i, -1
  %cmp36.i = icmp sgt i32 %i_ref.066.i, 1
  %add38.i = add nsw i32 %shr.i, 58
  br i1 %cmp36.i, label %for.body.i, label %cabac_ref_internal.exit

cabac_ref_internal.exit:                          ; preds = %for.body.i, %entry
  %add38.lcssa.i = phi i32 [ %add3864.i, %entry ], [ %add38.i, %for.body.i ]
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add38.lcssa.i, i32 0) #7
  ret void
}

; Function Attrs: noinline nounwind
define internal fastcc zeroext i16 @cabac_mvd(%struct.x264_t* %h, %struct.x264_cabac_t* %cb, i32 %i_list, i32 %idx, i32 %width) unnamed_addr #3 {
entry:
  %mvp = alloca [2 x i16], align 4
  %0 = bitcast [2 x i16]* %mvp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7
  %arraydecay = getelementptr inbounds [2 x i16], [2 x i16]* %mvp, i32 0, i32 0
  call void @x264_8_mb_predict_mv(%struct.x264_t* %h, i32 %i_list, i32 %idx, i32 %width, i16* nonnull %arraydecay) #7
  %arrayidx1 = getelementptr inbounds [51 x i8], [51 x i8]* @x264_scan8, i32 0, i32 %idx
  %1 = load i8, i8* %arrayidx1, align 1, !tbaa !40
  %idxprom = zext i8 %1 to i32
  %arrayidx3 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 %i_list, i32 %idxprom, i32 0
  %2 = load i16, i16* %arrayidx3, align 4, !tbaa !37
  %conv = sext i16 %2 to i32
  %3 = load i16, i16* %arraydecay, align 4, !tbaa !37
  %conv5 = sext i16 %3 to i32
  %sub = sub nsw i32 %conv, %conv5
  %arrayidx13 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 %i_list, i32 %idxprom, i32 1
  %4 = load i16, i16* %arrayidx13, align 2, !tbaa !37
  %conv14 = sext i16 %4 to i32
  %arrayidx15 = getelementptr inbounds [2 x i16], [2 x i16]* %mvp, i32 0, i32 1
  %5 = load i16, i16* %arrayidx15, align 2, !tbaa !37
  %conv16 = sext i16 %5 to i32
  %sub17 = sub nsw i32 %conv14, %conv16
  %sub23 = add nsw i32 %idxprom, -1
  %arraydecay25 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 %i_list, i32 %sub23, i32 0
  %sub32 = add nsw i32 %idxprom, -8
  %arraydecay34 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 %i_list, i32 %sub32, i32 0
  %arraydecay25.val = load i8, i8* %arraydecay25, align 1, !tbaa !40
  %arraydecay25.idx = getelementptr %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 %i_list, i32 %sub23, i32 1
  %arraydecay25.idx.val = load i8, i8* %arraydecay25.idx, align 1, !tbaa !40
  %arraydecay34.val = load i8, i8* %arraydecay34, align 1, !tbaa !40
  %arraydecay34.idx = getelementptr %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 4, i32 %i_list, i32 %sub32, i32 1
  %arraydecay34.idx.val = load i8, i8* %arraydecay34.idx, align 1, !tbaa !40
  %conv.i = zext i8 %arraydecay25.val to i32
  %conv2.i = zext i8 %arraydecay34.val to i32
  %add.i = add nuw nsw i32 %conv2.i, %conv.i
  %conv4.i = zext i8 %arraydecay25.idx.val to i32
  %conv6.i = zext i8 %arraydecay34.idx.val to i32
  %add7.i = add nuw nsw i32 %conv6.i, %conv4.i
  %cmp.i = icmp ugt i32 %add.i, 2
  %conv8.i = zext i1 %cmp.i to i32
  %cmp9.i = icmp ugt i32 %add.i, 32
  %conv10.i = zext i1 %cmp9.i to i32
  %add11.i = add nuw nsw i32 %conv8.i, %conv10.i
  %cmp12.i = icmp ugt i32 %add7.i, 2
  %conv13.i = zext i1 %cmp12.i to i32
  %cmp14.i = icmp ugt i32 %add7.i, 32
  %conv15.i = zext i1 %cmp14.i to i32
  %add16.i = add nuw nsw i32 %conv13.i, %conv15.i
  %cmp.i72 = icmp eq i32 %sub, 0
  br i1 %cmp.i72, label %if.then.i74, label %if.end.i78

if.then.i74:                                      ; preds = %entry
  %add.i73 = or i32 %add11.i, 40
  call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add.i73, i32 0) #7
  br label %cabac_mvd_cpn.exit101

if.end.i78:                                       ; preds = %entry
  %6 = icmp slt i32 %sub, 0
  %neg.i75 = sub nsw i32 0, %sub
  %7 = select i1 %6, i32 %neg.i75, i32 %sub
  %add1.i76 = or i32 %add11.i, 40
  call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add1.i76, i32 1) #7
  %cmp2.i77 = icmp slt i32 %7, 9
  br i1 %cmp2.i77, label %for.cond.preheader.i82, label %for.body15.preheader.i80

for.body15.preheader.i80:                         ; preds = %if.end.i78
  call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 43, i32 1) #7
  call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 44, i32 1) #7
  call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 45, i32 1) #7
  call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 46, i32 1) #7
  call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 46, i32 1) #7
  call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 46, i32 1) #7
  call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 46, i32 1) #7
  call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 46, i32 1) #7
  %sub23.i79 = add nsw i32 %7, -9
  call void @x264_8_cabac_encode_ue_bypass(%struct.x264_cabac_t* %cb, i32 3, i32 %sub23.i79) #7
  br label %if.end24.i99

for.cond.preheader.i82:                           ; preds = %if.end.i78
  %cmp41.i81 = icmp sgt i32 %7, 1
  br i1 %cmp41.i81, label %for.body.i95, label %for.cond.cleanup.i87

for.cond.cleanup.i87:                             ; preds = %for.body.i95, %for.cond.preheader.i82
  %sub6.i83 = add nsw i32 %7, -1
  %arrayidx7.i84 = getelementptr inbounds [8 x i8], [8 x i8]* @cabac_mvd_cpn.ctxes, i32 0, i32 %sub6.i83
  %8 = load i8, i8* %arrayidx7.i84, align 1, !tbaa !40
  %conv8.i85 = zext i8 %8 to i32
  %add9.i86 = add nuw nsw i32 %conv8.i85, 40
  call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add9.i86, i32 0) #7
  br label %if.end24.i99

for.body.i95:                                     ; preds = %for.cond.preheader.i82, %for.body.i95
  %i.02.i88 = phi i32 [ %inc.i93, %for.body.i95 ], [ 1, %for.cond.preheader.i82 ]
  %sub.i89 = add nsw i32 %i.02.i88, -1
  %arrayidx.i90 = getelementptr inbounds [8 x i8], [8 x i8]* @cabac_mvd_cpn.ctxes, i32 0, i32 %sub.i89
  %9 = load i8, i8* %arrayidx.i90, align 1, !tbaa !40
  %conv.i91 = zext i8 %9 to i32
  %add5.i92 = add nuw nsw i32 %conv.i91, 40
  call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add5.i92, i32 1) #7
  %inc.i93 = add nuw nsw i32 %i.02.i88, 1
  %exitcond.i94 = icmp eq i32 %inc.i93, %7
  br i1 %exitcond.i94, label %for.cond.cleanup.i87, label %for.body.i95

if.end24.i99:                                     ; preds = %for.cond.cleanup.i87, %for.body15.preheader.i80
  %shr.i96 = ashr i32 %sub, 31
  call void @x264_8_cabac_encode_bypass_c(%struct.x264_cabac_t* %cb, i32 %shr.i96) #7
  %cmp25.i97 = icmp slt i32 %7, 66
  %cond27.i98 = select i1 %cmp25.i97, i32 %7, i32 66
  br label %cabac_mvd_cpn.exit101

cabac_mvd_cpn.exit101:                            ; preds = %if.then.i74, %if.end24.i99
  %retval.0.i100 = phi i32 [ 0, %if.then.i74 ], [ %cond27.i98, %if.end24.i99 ]
  %cmp.i68 = icmp eq i32 %sub17, 0
  br i1 %cmp.i68, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %cabac_mvd_cpn.exit101
  %add.i69 = add nuw nsw i32 %add16.i, 47
  call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add.i69, i32 0) #7
  br label %cabac_mvd_cpn.exit

if.end.i:                                         ; preds = %cabac_mvd_cpn.exit101
  %10 = icmp slt i32 %sub17, 0
  %neg.i = sub nsw i32 0, %sub17
  %11 = select i1 %10, i32 %neg.i, i32 %sub17
  %add1.i = add nuw nsw i32 %add16.i, 47
  call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add1.i, i32 1) #7
  %cmp2.i = icmp slt i32 %11, 9
  br i1 %cmp2.i, label %for.cond.preheader.i, label %for.body15.preheader.i

for.body15.preheader.i:                           ; preds = %if.end.i
  call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 50, i32 1) #7
  call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 51, i32 1) #7
  call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 52, i32 1) #7
  call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 53, i32 1) #7
  call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 53, i32 1) #7
  call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 53, i32 1) #7
  call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 53, i32 1) #7
  call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 53, i32 1) #7
  %sub23.i = add nsw i32 %11, -9
  call void @x264_8_cabac_encode_ue_bypass(%struct.x264_cabac_t* %cb, i32 3, i32 %sub23.i) #7
  br label %if.end24.i

for.cond.preheader.i:                             ; preds = %if.end.i
  %cmp41.i = icmp sgt i32 %11, 1
  br i1 %cmp41.i, label %for.body.i, label %for.cond.cleanup.i

for.cond.cleanup.i:                               ; preds = %for.body.i, %for.cond.preheader.i
  %sub6.i = add nsw i32 %11, -1
  %arrayidx7.i = getelementptr inbounds [8 x i8], [8 x i8]* @cabac_mvd_cpn.ctxes, i32 0, i32 %sub6.i
  %12 = load i8, i8* %arrayidx7.i, align 1, !tbaa !40
  %conv8.i70 = zext i8 %12 to i32
  %add9.i = add nuw nsw i32 %conv8.i70, 47
  call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add9.i, i32 0) #7
  br label %if.end24.i

for.body.i:                                       ; preds = %for.cond.preheader.i, %for.body.i
  %i.02.i = phi i32 [ %inc.i, %for.body.i ], [ 1, %for.cond.preheader.i ]
  %sub.i = add nsw i32 %i.02.i, -1
  %arrayidx.i = getelementptr inbounds [8 x i8], [8 x i8]* @cabac_mvd_cpn.ctxes, i32 0, i32 %sub.i
  %13 = load i8, i8* %arrayidx.i, align 1, !tbaa !40
  %conv.i71 = zext i8 %13 to i32
  %add5.i = add nuw nsw i32 %conv.i71, 47
  call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add5.i, i32 1) #7
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.i = icmp eq i32 %inc.i, %11
  br i1 %exitcond.i, label %for.cond.cleanup.i, label %for.body.i

if.end24.i:                                       ; preds = %for.cond.cleanup.i, %for.body15.preheader.i
  %shr.i = ashr i32 %sub17, 31
  call void @x264_8_cabac_encode_bypass_c(%struct.x264_cabac_t* %cb, i32 %shr.i) #7
  %cmp25.i = icmp slt i32 %11, 66
  %cond27.i = select i1 %cmp25.i, i32 %11, i32 66
  %phitmp = shl nuw nsw i32 %cond27.i, 8
  br label %cabac_mvd_cpn.exit

cabac_mvd_cpn.exit:                               ; preds = %if.then.i, %if.end24.i
  %retval.0.i = phi i32 [ 0, %if.then.i ], [ %phitmp, %if.end24.i ]
  %add.i67 = add nsw i32 %retval.0.i, %retval.0.i100
  %conv40 = trunc i32 %add.i67 to i16
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7
  ret i16 %conv40
}

declare dso_local void @x264_8_mb_predict_mv(%struct.x264_t*, i32, i32, i32, i16*) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #4

; Function Attrs: noinline nounwind
define internal fastcc void @cabac_ref_b(%struct.x264_t* nocapture readonly %h, %struct.x264_cabac_t* %cb, i32 %i_list, i32 %idx) unnamed_addr #3 {
entry:
  %arrayidx.i = getelementptr inbounds [51 x i8], [51 x i8]* @x264_scan8, i32 0, i32 %idx
  %0 = load i8, i8* %arrayidx.i, align 1, !tbaa !40
  %conv.i = zext i8 %0 to i32
  %sub.i = add nsw i32 %conv.i, -1
  %arrayidx2.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 %i_list, i32 %sub.i
  %1 = load i8, i8* %arrayidx2.i, align 1, !tbaa !40
  %sub8.i = add nsw i32 %conv.i, -8
  %arrayidx9.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 %i_list, i32 %sub8.i
  %2 = load i8, i8* %arrayidx9.i, align 1, !tbaa !40
  %cmp.i = icmp sgt i8 %1, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %arrayidx15.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 5, i32 %sub.i
  %3 = load i8, i8* %arrayidx15.i, align 1, !tbaa !40
  %tobool16.i = icmp eq i8 %3, 0
  %spec.select = zext i1 %tobool16.i to i32
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i, %entry
  %ctx.0.i = phi i32 [ 0, %entry ], [ %spec.select, %land.lhs.true.i ]
  %cmp17.i = icmp sgt i8 %2, 0
  br i1 %cmp17.i, label %land.lhs.true19.i, label %if.end29.i

land.lhs.true19.i:                                ; preds = %if.end.i
  %arrayidx26.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 5, i32 %sub8.i
  %4 = load i8, i8* %arrayidx26.i, align 1, !tbaa !40
  %tobool27.i = icmp eq i8 %4, 0
  %add.i = or i32 %ctx.0.i, 2
  %spec.select1 = select i1 %tobool27.i, i32 %add.i, i32 %ctx.0.i
  br label %if.end29.i

if.end29.i:                                       ; preds = %land.lhs.true19.i, %if.end.i
  %ctx.1.i = phi i32 [ %ctx.0.i, %if.end.i ], [ %spec.select1, %land.lhs.true19.i ]
  %arrayidx34.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 %i_list, i32 %conv.i
  %5 = load i8, i8* %arrayidx34.i, align 1, !tbaa !40
  %cmp3663.i = icmp sgt i8 %5, 0
  %add3864.i = add nsw i32 %ctx.1.i, 54
  br i1 %cmp3663.i, label %for.body.preheader.i, label %cabac_ref_internal.exit

for.body.preheader.i:                             ; preds = %if.end29.i
  %conv3569.i = zext i8 %5 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.preheader.i
  %add3867.i = phi i32 [ %add38.i, %for.body.i ], [ %add3864.i, %for.body.preheader.i ]
  %i_ref.066.i = phi i32 [ %dec.i, %for.body.i ], [ %conv3569.i, %for.body.preheader.i ]
  %ctx.265.i = phi i32 [ %add39.i, %for.body.i ], [ %ctx.1.i, %for.body.preheader.i ]
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add3867.i, i32 1) #7
  %shr.i = ashr i32 %ctx.265.i, 2
  %add39.i = add nsw i32 %shr.i, 4
  %dec.i = add nsw i32 %i_ref.066.i, -1
  %cmp36.i = icmp sgt i32 %i_ref.066.i, 1
  %add38.i = add nsw i32 %shr.i, 58
  br i1 %cmp36.i, label %for.body.i, label %cabac_ref_internal.exit

cabac_ref_internal.exit:                          ; preds = %for.body.i, %if.end29.i
  %add38.lcssa.i = phi i32 [ %add3864.i, %if.end29.i ], [ %add38.i, %for.body.i ]
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %add38.lcssa.i, i32 0) #7
  ret void
}

; Function Attrs: inlinehint nounwind
define internal fastcc void @cabac_mb_type_intra(%struct.x264_t* %h, %struct.x264_cabac_t* %cb, i32 %i_mb_type, i32 %ctx0, i32 %ctx1, i32 %ctx2, i32 %ctx3, i32 %ctx4, i32 %ctx5) unnamed_addr #5 {
entry:
  %0 = icmp ult i32 %i_mb_type, 2
  br i1 %0, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %ctx0, i32 0) #7
  br label %if.end16

if.else:                                          ; preds = %entry
  %cmp2 = icmp eq i32 %i_mb_type, 3
  br i1 %cmp2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %ctx0, i32 1) #7
  tail call void @x264_8_cabac_encode_flush(%struct.x264_t* %h, %struct.x264_cabac_t* %cb) #7
  br label %if.end16

if.else4:                                         ; preds = %if.else
  %i_intra16x16_pred_mode = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 82
  %1 = load i32, i32* %i_intra16x16_pred_mode, align 8, !tbaa !76
  %arrayidx = getelementptr inbounds [7 x i8], [7 x i8]* @x264_mb_pred_mode16x16_fix, i32 0, i32 %1
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !40
  %conv = zext i8 %2 to i32
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %ctx0, i32 1) #7
  tail call void @x264_8_cabac_encode_terminal_c(%struct.x264_cabac_t* %cb) #7
  %i_cbp_luma = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 80
  %3 = load i32, i32* %i_cbp_luma, align 32, !tbaa !59
  %tobool = icmp ne i32 %3, 0
  %lnot.ext = zext i1 %tobool to i32
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %ctx1, i32 %lnot.ext) #7
  %i_cbp_chroma = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 81
  %4 = load i32, i32* %i_cbp_chroma, align 4, !tbaa !74
  %cmp8 = icmp eq i32 %4, 0
  br i1 %cmp8, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.else4
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %ctx2, i32 0) #7
  br label %if.end

if.else11:                                        ; preds = %if.else4
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %ctx2, i32 1) #7
  %5 = load i32, i32* %i_cbp_chroma, align 4, !tbaa !74
  %shr = ashr i32 %5, 1
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %ctx3, i32 %shr) #7
  br label %if.end

if.end:                                           ; preds = %if.else11, %if.then10
  %6 = lshr i32 %conv, 1
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %ctx4, i32 %6) #7
  %and = and i32 %conv, 1
  tail call void @x264_8_cabac_encode_decision_c(%struct.x264_cabac_t* %cb, i32 %ctx5, i32 %and) #7
  br label %if.end16

if.end16:                                         ; preds = %if.then3, %if.end, %if.then
  ret void
}

declare dso_local void @x264_8_cabac_encode_flush(%struct.x264_t*, %struct.x264_cabac_t*) local_unnamed_addr #2

declare dso_local void @x264_8_cabac_encode_terminal_c(%struct.x264_cabac_t*) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #3 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #6 = { nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 (http://10.18.30.194:8888/compiler/compiler10.git 713ef477716300a9b04a1522e3fce445623444dc)"}
!2 = !{!3, !5, i64 29036}
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
!36 = !{!3, !5, i64 3320}
!37 = !{!38, !38, i64 0}
!38 = !{!"short", !6, i64 0}
!39 = !{!9, !9, i64 0}
!40 = !{!6, !6, i64 0}
!41 = !{!42, !5, i64 264}
!42 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !13, i64 72, !5, i64 88, !43, i64 92, !5, i64 260, !5, i64 264, !5, i64 268, !5, i64 272, !5, i64 276, !6, i64 280}
!43 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !44, i64 84, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !5, i64 148, !5, i64 152, !5, i64 156, !5, i64 160, !5, i64 164}
!44 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44}
!45 = !{!3, !5, i64 19536}
!46 = !{!20, !9, i64 20}
!47 = !{!20, !9, i64 16}
!48 = !{!20, !5, i64 12}
!49 = !{!20, !5, i64 8}
!50 = !{!3, !5, i64 19540}
!51 = !{!5, !5, i64 0}
!52 = !{!53, !5, i64 60}
!53 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60}
!54 = !{!3, !5, i64 19548}
!55 = !{!3, !5, i64 29032}
!56 = !{!3, !5, i64 18976}
!57 = !{!3, !5, i64 19068}
!58 = !{!3, !5, i64 33376}
!59 = !{!3, !5, i64 19552}
!60 = !{!3, !5, i64 29040}
!61 = !{!3, !5, i64 29044}
!62 = !{!3, !5, i64 29088}
!63 = !{!3, !5, i64 29096}
!64 = !{!3, !9, i64 19160}
!65 = !{!3, !5, i64 18808}
!66 = !{!3, !5, i64 29100}
!67 = !{!3, !9, i64 19148}
!68 = !{!3, !5, i64 19088}
!69 = !{!3, !9, i64 19460}
!70 = !{!3, !5, i64 19100}
!71 = !{!3, !5, i64 19564}
!72 = !{!3, !9, i64 19172}
!73 = !{!3, !5, i64 18768}
!74 = !{!3, !5, i64 19556}
!75 = !{!3, !5, i64 33380}
!76 = !{!3, !5, i64 19560}
