; ModuleID = 'filters/video/cache.c'
source_filename = "filters/video/cache.c"
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

%struct.video_info_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.x264_param_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, [16 x i8], [16 x i8], [16 x i8], [16 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], void (i8*, i32, i8*, i8*)*, i8*, i32, i32, i8*, %struct.anon.0, %struct.anon.1, %struct.anon.2, i32, %struct.anon.3, %struct.anon.4, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, void (i8*)*, void (%struct.x264_t*, %struct.x264_nal_t*, i8*)*, i8* }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.0 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, i32, i32, i32, [2 x i32], i32, i32 }
%struct.anon.1 = type { i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, float, float, float, i32, i32, float, i32, i32, i32, i8*, i32, i8*, float, float, float, %struct.x264_zone_t*, i32, i8* }
%struct.x264_zone_t = type { i32, i32, i32, i32, float, %struct.x264_param_t* }
%struct.anon.2 = type { i32, i32, i32, i32 }
%struct.anon.3 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.anon.4 = type { i32, i32, i32 }
%struct.x264_t = type { %struct.x264_param_t, i8*, [129 x %struct.x264_t*], [16 x %struct.x264_t*], i32, i32, i32, i32, i32, i32, %struct.x264_threadpool_t*, %struct.x264_threadpool_t*, i32, i32, %struct.anon.5, i8*, i32, %struct.x264_t*, i32, i32, i32, i32, i32, i32, i64, i32, i64, i64, i64, i64, i64, i64, i64, i32, i64, i32, [4 x [16 x i32]*], [4 x [64 x i32]*], [4 x [16 x i32]*], [4 x [64 x i32]*], [4 x [16 x i16]*], [4 x [64 x i16]*], [4 x [16 x i16]*], [4 x [64 x i16]*], [4 x [16 x i16]*], [4 x [64 x i16]*], [4 x [64 x i16]]*, [70 x i16*], [70 x [4 x i16*]], %struct.anon.6*, i8*, %struct.x264_slice_header_t, [1 x %struct.x264_sps_t], [1 x %struct.x264_pps_t], i32, [4 x i8], %struct.x264_slice_header_t, [48 x i8], %struct.x264_cabac_t, %struct.anon.12, %struct.x264_frame*, %struct.x264_frame*, [2 x i32], [2 x [19 x %struct.x264_frame*]], [2 x %struct.x264_frame*], [2 x i32], i32, i32, i64, %struct.anon.13, %struct.anon.14, %struct.x264_ratecontrol_t*, %struct.anon.17, [64 x i16]*, [64 x i32]*, i32*, [28 x i8], [4 x [64 x i16]], [2 x [4 x [64 x i32]]], [2 x [4 x i32]], [7 x i8], i8*, i8*, [5 x [3 x i8*]], [2 x [2 x [8 x [4 x i8]]]*], [7 x void (i8*)*], [12 x void (i8*, i8*)*], [12 x void (i8*)*], [7 x void (i8*)*], [7 x void (i8*)*], [7 x void (i8*)*], void (i8*, i8*, i32, i32)*, %struct.x264_pixel_function_t, %struct.x264_mc_functions_t, %struct.x264_dct_function_t, %struct.x264_zigzag_function_t, %struct.x264_zigzag_function_t, %struct.x264_zigzag_function_t, %struct.x264_quant_function_t, %struct.x264_deblock_function_t, %struct.x264_bitstream_function_t, %struct.x264_lookahead_t* }
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
%struct.cli_pic_t = type { %struct.cli_image_t, i64, i64, i8* }
%struct.cli_image_t = type { i32, i32, i32, i32, [4 x i8*], [4 x i32] }
%struct.cli_vid_filter_t = type { i8*, void (i32)*, {}*, i32 (i8*, %struct.cli_pic_t*, i32)*, i32 (i8*, %struct.cli_pic_t*, i32)*, void (i8*)*, %struct.cli_vid_filter_t* }

@.str = private unnamed_addr constant [8 x i8] c"cache_8\00", align 1
@cache_8_filter = hidden local_unnamed_addr global { i8*, void (i32)*, i32 (i8**, %struct.cli_vid_filter_t*, %struct.video_info_t*, %struct.x264_param_t*, i8*)*, i32 (i8*, %struct.cli_pic_t*, i32)*, i32 (i8*, %struct.cli_pic_t*, i32)*, void (i8*)*, %struct.cli_vid_filter_t* } { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), void (i32)* null, i32 (i8**, %struct.cli_vid_filter_t*, %struct.video_info_t*, %struct.x264_param_t*, i8*)* @init, i32 (i8*, %struct.cli_pic_t*, i32)* @get_frame, i32 (i8*, %struct.cli_pic_t*, i32)* @release_frame, void (i8*)* @free_filter, %struct.cli_vid_filter_t* null }, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"frame %d is before first cached frame %d \0A\00", align 1

; Function Attrs: nounwind
define internal i32 @init(i8** nocapture %handle, %struct.cli_vid_filter_t* nocapture %filter, %struct.video_info_t* nocapture readonly %info, %struct.x264_param_t* nocapture readnone %param, i8* %opt_string) #0 {
entry:
  %0 = ptrtoint i8* %opt_string to i32
  %cmp = icmp slt i8* %opt_string, inttoptr (i32 1 to i8*)
  br i1 %cmp, label %cleanup26, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call noalias dereferenceable_or_null(52) i8* @calloc(i32 1, i32 52) #6
  %tobool = icmp eq i8* %call, null
  br i1 %tobool, label %cleanup26, label %if.end2

if.end2:                                          ; preds = %if.end
  %max_size = getelementptr inbounds i8, i8* %call, i32 32
  %1 = bitcast i8* %max_size to i32*
  store i32 %0, i32* %1, align 4, !tbaa !2
  %add = shl i32 %0, 2
  %mul = add i32 %add, 4
  %call4 = tail call noalias i8* @malloc(i32 %mul) #6
  %cache = getelementptr inbounds i8, i8* %call, i32 40
  %2 = bitcast i8* %cache to %struct.cli_pic_t***
  %3 = bitcast i8* %cache to i8**
  store i8* %call4, i8** %3, align 4, !tbaa !9
  %tobool6 = icmp eq i8* %call4, null
  br i1 %tobool6, label %cleanup26, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end2
  %4 = bitcast i8* %call4 to %struct.cli_pic_t**
  %cmp1055 = icmp sgt i8* %opt_string, null
  br i1 %cmp1055, label %for.body.lr.ph, label %for.end.critedge

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %csp = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 0
  %width = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 4
  %height = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 5
  br label %for.body

for.cond:                                         ; preds = %lor.lhs.false
  %5 = load i32, i32* %1, align 4, !tbaa !2
  %cmp10 = icmp slt i32 %inc, %5
  br i1 %cmp10, label %for.body, label %for.end.critedge.loopexit

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %i.056 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond ]
  %call11 = tail call noalias dereferenceable_or_null(72) i8* @malloc(i32 72) #6
  %6 = load %struct.cli_pic_t**, %struct.cli_pic_t*** %2, align 4, !tbaa !9
  %arrayidx = getelementptr inbounds %struct.cli_pic_t*, %struct.cli_pic_t** %6, i32 %i.056
  %7 = bitcast %struct.cli_pic_t** %arrayidx to i8**
  store i8* %call11, i8** %7, align 4, !tbaa !10
  %8 = load %struct.cli_pic_t**, %struct.cli_pic_t*** %2, align 4, !tbaa !9
  %arrayidx14 = getelementptr inbounds %struct.cli_pic_t*, %struct.cli_pic_t** %8, i32 %i.056
  %9 = load %struct.cli_pic_t*, %struct.cli_pic_t** %arrayidx14, align 4, !tbaa !10
  %tobool15 = icmp eq %struct.cli_pic_t* %9, null
  br i1 %tobool15, label %cleanup26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %10 = load i32, i32* %csp, align 4, !tbaa !11
  %11 = load i32, i32* %width, align 4, !tbaa !13
  %12 = load i32, i32* %height, align 4, !tbaa !14
  %call18 = tail call i32 @x264_cli_pic_alloc(%struct.cli_pic_t* nonnull %9, i32 %10, i32 %11, i32 %12) #6
  %tobool19 = icmp eq i32 %call18, 0
  %inc = add nuw nsw i32 %i.056, 1
  br i1 %tobool19, label %for.cond, label %cleanup26

for.end.critedge.loopexit:                        ; preds = %for.cond
  %.pre = load %struct.cli_pic_t**, %struct.cli_pic_t*** %2, align 4, !tbaa !9
  br label %for.end.critedge

for.end.critedge:                                 ; preds = %for.end.critedge.loopexit, %for.cond.preheader
  %13 = phi %struct.cli_pic_t** [ %4, %for.cond.preheader ], [ %.pre, %for.end.critedge.loopexit ]
  %.lcssa = phi i32 [ %0, %for.cond.preheader ], [ %5, %for.end.critedge.loopexit ]
  %arrayidx24 = getelementptr inbounds %struct.cli_pic_t*, %struct.cli_pic_t** %13, i32 %.lcssa
  store %struct.cli_pic_t* null, %struct.cli_pic_t** %arrayidx24, align 4, !tbaa !10
  %prev_filter = getelementptr inbounds i8, i8* %call, i32 4
  %14 = bitcast %struct.cli_vid_filter_t* %filter to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(28) %prev_filter, i8* nonnull align 4 dereferenceable(28) %14, i32 28, i1 false), !tbaa.struct !15
  %15 = bitcast i8** %handle to i32*
  %16 = load i32, i32* %15, align 4, !tbaa !10
  %17 = bitcast i8* %call to i32*
  store i32 %16, i32* %17, align 4, !tbaa !16
  store i8* %call, i8** %handle, align 4, !tbaa !10
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(28) %14, i8* nonnull align 4 dereferenceable(28) bitcast ({ i8*, void (i32)*, i32 (i8**, %struct.cli_vid_filter_t*, %struct.video_info_t*, %struct.x264_param_t*, i8*)*, i32 (i8*, %struct.cli_pic_t*, i32)*, i32 (i8*, %struct.cli_pic_t*, i32)*, void (i8*)*, %struct.cli_vid_filter_t* }* @cache_8_filter to i8*), i32 28, i1 false), !tbaa.struct !15
  br label %cleanup26

cleanup26:                                        ; preds = %for.body, %lor.lhs.false, %for.end.critedge, %if.end, %if.end2, %entry
  %retval.2 = phi i32 [ 0, %entry ], [ 0, %for.end.critedge ], [ -1, %if.end ], [ -1, %if.end2 ], [ -1, %lor.lhs.false ], [ -1, %for.body ]
  ret i32 %retval.2
}

; Function Attrs: nounwind
define internal i32 @get_frame(i8* nocapture %handle, %struct.cli_pic_t* nocapture %output, i32 %frame) #0 {
entry:
  %temp.i = alloca %struct.cli_pic_t, align 8
  %first_frame = getelementptr inbounds i8, i8* %handle, i32 36
  %0 = bitcast i8* %first_frame to i32*
  %1 = load i32, i32* %0, align 4, !tbaa !17
  %cmp = icmp sgt i32 %1, %frame
  br i1 %cmp, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  tail call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0), i32 %frame, i32 %1) #6
  br label %cleanup

do.end:                                           ; preds = %entry
  %cur_size.i = getelementptr inbounds i8, i8* %handle, i32 44
  %2 = bitcast i8* %cur_size.i to i32*
  %3 = load i32, i32* %2, align 4, !tbaa !18
  %add.i = add nsw i32 %3, %1
  %sub.neg.i = add i32 %frame, 1
  %sub1.i = sub i32 %sub.neg.i, %add.i
  %cmp.i = icmp slt i32 %sub1.i, 1
  br i1 %cmp.i, label %fill_cache.exit, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %do.end
  %eof.i = getelementptr inbounds i8, i8* %handle, i32 48
  %4 = bitcast i8* %eof.i to i32*
  %5 = load i32, i32* %4, align 4, !tbaa !19
  %tobool.i = icmp eq i32 %5, 0
  br i1 %tobool.i, label %if.end.i, label %fill_cache.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %max_size.i = getelementptr inbounds i8, i8* %handle, i32 32
  %6 = bitcast i8* %max_size.i to i32*
  %7 = load i32, i32* %6, align 4, !tbaa !2
  %sub5.i = sub nsw i32 %frame, %7
  %add6.i = add nsw i32 %sub5.i, 1
  %cmp7.i = icmp sgt i32 %add.i, %add6.i
  %add.add6.i = select i1 %cmp7.i, i32 %add.i, i32 %add6.i
  %add15.i = add nsw i32 %sub1.i, %1
  %cmp16.i = icmp slt i32 %add15.i, %add.add6.i
  %cond22.i = select i1 %cmp16.i, i32 %add15.i, i32 %add.add6.i
  store i32 %cond22.i, i32* %0, align 4, !tbaa !17
  %sub25.i = sub nsw i32 %3, %sub1.i
  %cmp26.i = icmp sgt i32 %sub25.i, 0
  %spec.select.i = select i1 %cmp26.i, i32 %sub25.i, i32 0
  store i32 %spec.select.i, i32* %2, align 4, !tbaa !18
  %cmp36103.i = icmp slt i32 %spec.select.i, %7
  br i1 %cmp36103.i, label %while.body.lr.ph.i, label %fill_cache.exit

while.body.lr.ph.i:                               ; preds = %if.end.i
  %8 = bitcast %struct.cli_pic_t* %temp.i to i8*
  %cache37.i = getelementptr inbounds i8, i8* %handle, i32 40
  %9 = bitcast i8* %cache37.i to %struct.cli_pic_t***
  %get_frame.i = getelementptr inbounds i8, i8* %handle, i32 16
  %10 = bitcast i8* %get_frame.i to i32 (i8*, %struct.cli_pic_t*, i32)**
  %prev_hnd.i = bitcast i8* %handle to i8**
  %release_frame.i = getelementptr inbounds i8, i8* %handle, i32 20
  %11 = bitcast i8* %release_frame.i to i32 (i8*, %struct.cli_pic_t*, i32)**
  %12 = bitcast i8* %cache37.i to %struct.x264_frame***
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i, %while.body.lr.ph.i
  %cur_frame.0104.i = phi i32 [ %add.add6.i, %while.body.lr.ph.i ], [ %inc.i, %cleanup.i ]
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %8) #6
  %13 = load %struct.cli_pic_t**, %struct.cli_pic_t*** %9, align 4, !tbaa !9
  %14 = load %struct.cli_pic_t*, %struct.cli_pic_t** %13, align 4, !tbaa !10
  %15 = load i32 (i8*, %struct.cli_pic_t*, i32)*, i32 (i8*, %struct.cli_pic_t*, i32)** %10, align 4, !tbaa !20
  %16 = load i8*, i8** %prev_hnd.i, align 4, !tbaa !16
  %call.i = call i32 %15(i8* %16, %struct.cli_pic_t* nonnull %temp.i, i32 %cur_frame.0104.i) #6
  %tobool38.i = icmp eq i32 %call.i, 0
  br i1 %tobool38.i, label %lor.lhs.false39.i, label %cleanup.thread.i

lor.lhs.false39.i:                                ; preds = %while.body.i
  %call40.i = call i32 @x264_cli_pic_copy(%struct.cli_pic_t* %14, %struct.cli_pic_t* nonnull %temp.i) #6
  %tobool41.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.i, label %lor.lhs.false42.i, label %cleanup.thread.i

lor.lhs.false42.i:                                ; preds = %lor.lhs.false39.i
  %17 = load i32 (i8*, %struct.cli_pic_t*, i32)*, i32 (i8*, %struct.cli_pic_t*, i32)** %11, align 4, !tbaa !21
  %18 = load i8*, i8** %prev_hnd.i, align 4, !tbaa !16
  %call45.i = call i32 %17(i8* %18, %struct.cli_pic_t* nonnull %temp.i, i32 %cur_frame.0104.i) #6
  %tobool46.i = icmp eq i32 %call45.i, 0
  br i1 %tobool46.i, label %cleanup.i, label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %lor.lhs.false42.i, %lor.lhs.false39.i, %while.body.i
  store i32 %cur_frame.0104.i, i32* %4, align 4, !tbaa !19
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %8) #6
  %.pre = load i32, i32* %2, align 4, !tbaa !18
  br label %fill_cache.exit

cleanup.i:                                        ; preds = %lor.lhs.false42.i
  %19 = load %struct.x264_frame**, %struct.x264_frame*** %12, align 4, !tbaa !9
  %call52.i = call %struct.x264_frame* @x264_8_frame_shift(%struct.x264_frame** %19) #6
  call void @x264_8_frame_push(%struct.x264_frame** %19, %struct.x264_frame* %call52.i) #6
  %inc.i = add nsw i32 %cur_frame.0104.i, 1
  %20 = load i32, i32* %2, align 4, !tbaa !18
  %inc54.i = add nsw i32 %20, 1
  store i32 %inc54.i, i32* %2, align 4, !tbaa !18
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %8) #6
  %21 = load i32, i32* %6, align 4, !tbaa !2
  %cmp36.i = icmp slt i32 %inc54.i, %21
  br i1 %cmp36.i, label %while.body.i, label %fill_cache.exit

fill_cache.exit:                                  ; preds = %cleanup.i, %do.end, %lor.lhs.false.i, %if.end.i, %cleanup.thread.i
  %22 = phi i32 [ %3, %do.end ], [ %3, %lor.lhs.false.i ], [ %spec.select.i, %if.end.i ], [ %.pre, %cleanup.thread.i ], [ %inc54.i, %cleanup.i ]
  %23 = load i32, i32* %0, align 4, !tbaa !17
  %add = add nsw i32 %22, %23
  %cmp3 = icmp sgt i32 %add, %frame
  br i1 %cmp3, label %if.end5, label %cleanup

if.end5:                                          ; preds = %fill_cache.exit
  %eof = getelementptr inbounds i8, i8* %handle, i32 48
  %24 = bitcast i8* %eof to i32*
  %25 = load i32, i32* %24, align 4, !tbaa !19
  %tobool = icmp eq i32 %25, 0
  br i1 %tobool, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.end5
  %max_size = getelementptr inbounds i8, i8* %handle, i32 32
  %26 = bitcast i8* %max_size to i32*
  %27 = load i32, i32* %26, align 4, !tbaa !2
  %sub7 = sub nsw i32 %25, %27
  br label %cond.end

cond.end:                                         ; preds = %if.end5, %cond.true
  %cond = phi i32 [ %sub7, %cond.true ], [ %23, %if.end5 ]
  %sub9 = sub nsw i32 %frame, %cond
  %cache = getelementptr inbounds i8, i8* %handle, i32 40
  %28 = bitcast i8* %cache to %struct.cli_pic_t***
  %29 = load %struct.cli_pic_t**, %struct.cli_pic_t*** %28, align 4, !tbaa !9
  %arrayidx = getelementptr inbounds %struct.cli_pic_t*, %struct.cli_pic_t** %29, i32 %sub9
  %30 = bitcast %struct.cli_pic_t** %arrayidx to i8**
  %31 = load i8*, i8** %30, align 4, !tbaa !10
  %32 = bitcast %struct.cli_pic_t* %output to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 8 dereferenceable(72) %32, i8* nonnull align 8 dereferenceable(72) %31, i32 72, i1 false), !tbaa.struct !22
  br label %cleanup

cleanup:                                          ; preds = %fill_cache.exit, %cond.end, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %cond.end ], [ -1, %fill_cache.exit ]
  ret i32 %retval.0
}

; Function Attrs: norecurse nounwind readnone
define internal i32 @release_frame(i8* nocapture readnone %handle, %struct.cli_pic_t* nocapture readnone %pic, i32 %frame) #1 {
entry:
  ret i32 0
}

; Function Attrs: nounwind
define internal void @free_filter(i8* nocapture %handle) #0 {
entry:
  %free = getelementptr inbounds i8, i8* %handle, i32 24
  %0 = bitcast i8* %free to void (i8*)**
  %1 = load void (i8*)*, void (i8*)** %0, align 4, !tbaa !27
  %prev_hnd = bitcast i8* %handle to i8**
  %2 = load i8*, i8** %prev_hnd, align 4, !tbaa !16
  tail call void %1(i8* %2) #6
  %max_size = getelementptr inbounds i8, i8* %handle, i32 32
  %3 = bitcast i8* %max_size to i32*
  %4 = load i32, i32* %3, align 4, !tbaa !2
  %cmp15 = icmp sgt i32 %4, 0
  %cache = getelementptr inbounds i8, i8* %handle, i32 40
  br i1 %cmp15, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %entry
  %5 = bitcast i8* %cache to %struct.cli_pic_t***
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body, %entry
  %6 = bitcast i8* %cache to i8**
  %7 = load i8*, i8** %6, align 4, !tbaa !9
  tail call void @free(i8* %7) #6
  tail call void @free(i8* nonnull %handle) #6
  ret void

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %i.016 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %8 = load %struct.cli_pic_t**, %struct.cli_pic_t*** %5, align 4, !tbaa !9
  %arrayidx = getelementptr inbounds %struct.cli_pic_t*, %struct.cli_pic_t** %8, i32 %i.016
  %9 = load %struct.cli_pic_t*, %struct.cli_pic_t** %arrayidx, align 4, !tbaa !10
  tail call void @x264_cli_pic_clean(%struct.cli_pic_t* %9) #6
  %10 = load %struct.cli_pic_t**, %struct.cli_pic_t*** %5, align 4, !tbaa !9
  %arrayidx2 = getelementptr inbounds %struct.cli_pic_t*, %struct.cli_pic_t** %10, i32 %i.016
  %11 = bitcast %struct.cli_pic_t** %arrayidx2 to i8**
  %12 = load i8*, i8** %11, align 4, !tbaa !10
  tail call void @free(i8* %12) #6
  %inc = add nuw nsw i32 %i.016, 1
  %13 = load i32, i32* %3, align 4, !tbaa !2
  %cmp = icmp slt i32 %inc, %13
  br i1 %cmp, label %for.body, label %for.cond.cleanup
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree nounwind
declare dso_local noalias i8* @calloc(i32, i32) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local noalias i8* @malloc(i32) local_unnamed_addr #3

declare dso_local i32 @x264_cli_pic_alloc(%struct.cli_pic_t*, i32, i32, i32) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #2

declare dso_local void @x264_cli_log(i8*, i32, i8*, ...) local_unnamed_addr #4

declare dso_local i32 @x264_cli_pic_copy(%struct.cli_pic_t*, %struct.cli_pic_t*) local_unnamed_addr #4

declare dso_local void @x264_8_frame_push(%struct.x264_frame**, %struct.x264_frame*) local_unnamed_addr #4

declare dso_local %struct.x264_frame* @x264_8_frame_shift(%struct.x264_frame**) local_unnamed_addr #4

declare dso_local void @x264_cli_pic_clean(%struct.cli_pic_t*) local_unnamed_addr #4

; Function Attrs: nounwind
declare dso_local void @free(i8* nocapture) local_unnamed_addr #5

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { norecurse nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 (http://10.18.30.194:8888/compiler/compiler10.git 713ef477716300a9b04a1522e3fce445623444dc)"}
!2 = !{!3, !8, i64 32}
!3 = !{!"", !4, i64 0, !7, i64 4, !8, i64 32, !8, i64 36, !4, i64 40, !8, i64 44, !8, i64 48}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"cli_vid_filter_t", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24}
!8 = !{!"int", !5, i64 0}
!9 = !{!3, !4, i64 40}
!10 = !{!4, !4, i64 0}
!11 = !{!12, !8, i64 0}
!12 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56}
!13 = !{!12, !8, i64 16}
!14 = !{!12, !8, i64 20}
!15 = !{i64 0, i64 4, !10, i64 4, i64 4, !10, i64 8, i64 4, !10, i64 12, i64 4, !10, i64 16, i64 4, !10, i64 20, i64 4, !10, i64 24, i64 4, !10}
!16 = !{!3, !4, i64 0}
!17 = !{!3, !8, i64 36}
!18 = !{!3, !8, i64 44}
!19 = !{!3, !8, i64 48}
!20 = !{!3, !4, i64 16}
!21 = !{!3, !4, i64 20}
!22 = !{i64 0, i64 4, !23, i64 4, i64 4, !23, i64 8, i64 4, !23, i64 12, i64 4, !23, i64 16, i64 16, !24, i64 32, i64 16, !24, i64 48, i64 8, !25, i64 56, i64 8, !25, i64 64, i64 4, !10}
!23 = !{!8, !8, i64 0}
!24 = !{!5, !5, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"long long", !5, i64 0}
!27 = !{!3, !4, i64 24}
