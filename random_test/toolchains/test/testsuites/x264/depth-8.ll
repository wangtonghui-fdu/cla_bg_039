; ModuleID = 'filters/video/depth.c'
source_filename = "filters/video/depth.c"
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
%struct.x264_cli_csp_t = type { i8*, i32, [4 x float], [4 x float], i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"depth_8\00", align 1
@depth_8_filter = hidden local_unnamed_addr global { i8*, void (i32)*, i32 (i8**, %struct.cli_vid_filter_t*, %struct.video_info_t*, %struct.x264_param_t*, i8*)*, i32 (i8*, %struct.cli_pic_t*, i32)*, i32 (i8*, %struct.cli_pic_t*, i32)*, void (i8*)*, %struct.cli_vid_filter_t* } { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), void (i32)* null, i32 (i8**, %struct.cli_vid_filter_t*, %struct.video_info_t*, %struct.x264_param_t*, i8*)* @init, i32 (i8*, %struct.cli_pic_t*, i32)* @get_frame, i32 (i8*, %struct.cli_pic_t*, i32)* @release_frame, void (i8*)* @free_filter, %struct.cli_vid_filter_t* null }, align 4
@init.optlist = internal constant [2 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* null], align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"bit_depth\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"this filter supports only bit depth %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"unsupported bit depth conversion.\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"unsupported colorspace.\0A\00", align 1
@x264_cli_csps = external dso_local local_unnamed_addr constant [0 x %struct.x264_cli_csp_t], align 4

; Function Attrs: nounwind
define internal i32 @init(i8** nocapture %handle, %struct.cli_vid_filter_t* nocapture %filter, %struct.video_info_t* nocapture %info, %struct.x264_param_t* nocapture readonly %param, i8* %opt_string) #0 {
entry:
  %csp = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 0
  %0 = load i32, i32* %csp, align 4, !tbaa !2
  %i_csp = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 9
  %1 = load i32, i32* %i_csp, align 4, !tbaa !7
  %xor = xor i32 %1, %0
  %and = and i32 %xor, 8192
  %neg4 = xor i32 %and, %0
  %call = tail call i32 @x264_cli_csp_depth_factor(i32 %neg4) #4
  %mul = shl nsw i32 %call, 3
  %tobool = icmp eq i8* %opt_string, null
  br i1 %tobool, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  %call5 = tail call i8** @x264_split_options(i8* nonnull %opt_string, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @init.optlist, i32 0, i32 0)) #4
  %tobool6 = icmp eq i8** %call5, null
  br i1 %tobool6, label %do.body, label %if.then7

if.then7:                                         ; preds = %if.then
  %call8 = tail call i8* @x264_get_option(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8** nonnull %call5) #4
  %call9 = tail call i32 @x264_otoi(i8* %call8, i32 -1) #4
  %call9.off = add i32 %call9, -8
  %2 = icmp ugt i32 %call9.off, 8
  %lor.ext = zext i1 %2 to i32
  %cmp11 = icmp sgt i32 %call9, 8
  %or = or i32 %0, 8192
  %and12 = and i32 %0, -8193
  %cond = select i1 %cmp11, i32 %or, i32 %and12
  %3 = load i32, i32* %csp, align 4, !tbaa !2
  %xor14 = xor i32 %cond, %3
  %and15 = and i32 %xor14, 8192
  %4 = bitcast i8** %call5 to i8*
  tail call void @free(i8* %4) #4
  br label %do.body

do.body:                                          ; preds = %if.then7, %if.then, %entry
  %csp1.1 = phi i32 [ %neg4, %entry ], [ %cond, %if.then7 ], [ %neg4, %if.then ]
  %bit_depth.1 = phi i32 [ %mul, %entry ], [ %call9, %if.then7 ], [ %mul, %if.then ]
  %change_fmt.1 = phi i32 [ %and, %entry ], [ %and15, %if.then7 ], [ %and, %if.then ]
  %ret.1 = phi i32 [ 0, %entry ], [ %lor.ext, %if.then7 ], [ 1, %if.then ]
  %cmp17 = icmp eq i32 %bit_depth.1, 8
  br i1 %cmp17, label %do.body20, label %if.then18

if.then18:                                        ; preds = %do.body
  tail call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i32 0, i32 0), i32 8) #4
  br label %cleanup54

do.body20:                                        ; preds = %do.body
  %tobool21 = icmp eq i32 %ret.1, 0
  br i1 %tobool21, label %do.end25, label %if.then22

if.then22:                                        ; preds = %do.body20
  tail call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i32 0, i32 0)) #4
  br label %cleanup54

do.end25:                                         ; preds = %do.body20
  %tobool26 = icmp eq i32 %change_fmt.1, 0
  br i1 %tobool26, label %lor.lhs.false, label %do.body31

lor.lhs.false:                                    ; preds = %do.end25
  %call27 = tail call i32 @x264_cli_csp_depth_factor(i32 %csp1.1) #4
  %cmp29 = icmp eq i32 %call27, 1
  br i1 %cmp29, label %cleanup54, label %do.body31

do.body31:                                        ; preds = %lor.lhs.false, %do.end25
  %trunc.i = trunc i32 %csp1.1 to i8
  switch i8 %trunc.i, label %depth_filter_csp_is_supported.exit [
    i8 16, label %do.end37
    i8 14, label %do.end37
    i8 13, label %do.end37
    i8 12, label %do.end37
    i8 8, label %do.end37
    i8 7, label %do.end37
    i8 6, label %do.end37
    i8 5, label %do.end37
    i8 4, label %do.end37
    i8 3, label %do.end37
    i8 2, label %do.end37
    i8 1, label %do.end37
  ]

depth_filter_csp_is_supported.exit:               ; preds = %do.body31
  %and.i = and i32 %csp1.1, 255
  %cmp22.i = icmp eq i32 %and.i, 15
  br i1 %cmp22.i, label %do.end37, label %if.then34

if.then34:                                        ; preds = %depth_filter_csp_is_supported.exit
  tail call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0)) #4
  br label %cleanup54

do.end37:                                         ; preds = %depth_filter_csp_is_supported.exit, %do.body31, %do.body31, %do.body31, %do.body31, %do.body31, %do.body31, %do.body31, %do.body31, %do.body31, %do.body31, %do.body31, %do.body31
  %width = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 4
  %5 = load i32, i32* %width, align 4, !tbaa !18
  %add = shl i32 %5, 1
  %add39 = add i32 %add, 122
  %conv = zext i32 %add39 to i64
  %call40 = tail call i8* @x264_malloc(i64 %conv) #4
  %tobool41 = icmp eq i8* %call40, null
  br i1 %tobool41, label %cleanup54, label %if.end43

if.end43:                                         ; preds = %do.end37
  %add.ptr = getelementptr inbounds i8, i8* %call40, i32 120
  %error_buf = getelementptr inbounds i8, i8* %call40, i32 112
  %6 = bitcast i8* %error_buf to i8**
  store i8* %add.ptr, i8** %6, align 8, !tbaa !19
  %dst_csp = getelementptr inbounds i8, i8* %call40, i32 36
  %7 = bitcast i8* %dst_csp to i32*
  store i32 %csp1.1, i32* %7, align 4, !tbaa !24
  %bit_depth44 = getelementptr inbounds i8, i8* %call40, i32 32
  %8 = bitcast i8* %bit_depth44 to i32*
  store i32 8, i32* %8, align 8, !tbaa !25
  %9 = bitcast i8** %handle to i32*
  %10 = load i32, i32* %9, align 4, !tbaa !26
  %11 = bitcast i8* %call40 to i32*
  store i32 %10, i32* %11, align 8, !tbaa !27
  %prev_filter = getelementptr inbounds i8, i8* %call40, i32 4
  %12 = bitcast %struct.cli_vid_filter_t* %filter to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(28) %prev_filter, i8* nonnull align 4 dereferenceable(28) %12, i32 28, i1 false), !tbaa.struct !28
  %buffer = getelementptr inbounds i8, i8* %call40, i32 40
  %13 = bitcast i8* %buffer to %struct.cli_pic_t*
  %14 = load i32, i32* %width, align 4, !tbaa !18
  %height = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 5
  %15 = load i32, i32* %height, align 4, !tbaa !29
  %call47 = tail call i32 @x264_cli_pic_alloc(%struct.cli_pic_t* nonnull %13, i32 %csp1.1, i32 %14, i32 %15) #4
  %tobool48 = icmp eq i32 %call47, 0
  br i1 %tobool48, label %if.end50, label %if.then49

if.then49:                                        ; preds = %if.end43
  tail call void @x264_free(i8* nonnull %call40) #4
  br label %cleanup54

if.end50:                                         ; preds = %if.end43
  store i8* %call40, i8** %handle, align 4, !tbaa !26
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(28) %12, i8* nonnull align 4 dereferenceable(28) bitcast ({ i8*, void (i32)*, i32 (i8**, %struct.cli_vid_filter_t*, %struct.video_info_t*, %struct.x264_param_t*, i8*)*, i32 (i8*, %struct.cli_pic_t*, i32)*, i32 (i8*, %struct.cli_pic_t*, i32)*, void (i8*)*, %struct.cli_vid_filter_t* }* @depth_8_filter to i8*), i32 28, i1 false), !tbaa.struct !28
  %16 = load i32, i32* %7, align 4, !tbaa !24
  store i32 %16, i32* %csp, align 4, !tbaa !2
  br label %cleanup54

cleanup54:                                        ; preds = %lor.lhs.false, %if.end50, %do.end37, %if.then49, %if.then34, %if.then22, %if.then18
  %retval.1 = phi i32 [ -1, %if.then18 ], [ -1, %if.then22 ], [ -1, %if.then34 ], [ -1, %if.then49 ], [ -1, %do.end37 ], [ 0, %if.end50 ], [ 0, %lor.lhs.false ]
  ret i32 %retval.1
}

; Function Attrs: nounwind
define internal i32 @get_frame(i8* nocapture readonly %handle, %struct.cli_pic_t* %output, i32 %frame) #0 {
entry:
  %get_frame = getelementptr inbounds i8, i8* %handle, i32 16
  %0 = bitcast i8* %get_frame to i32 (i8*, %struct.cli_pic_t*, i32)**
  %1 = load i32 (i8*, %struct.cli_pic_t*, i32)*, i32 (i8*, %struct.cli_pic_t*, i32)** %0, align 4, !tbaa !30
  %prev_hnd = bitcast i8* %handle to i8**
  %2 = load i8*, i8** %prev_hnd, align 8, !tbaa !27
  %call = tail call i32 %1(i8* %2, %struct.cli_pic_t* %output, i32 %frame) #4
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %bit_depth = getelementptr inbounds i8, i8* %handle, i32 32
  %3 = bitcast i8* %bit_depth to i32*
  %4 = load i32, i32* %3, align 8, !tbaa !25
  %cmp = icmp slt i32 %4, 16
  %csp = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %output, i32 0, i32 0, i32 0
  %5 = load i32, i32* %csp, align 8, !tbaa !31
  br i1 %cmp, label %land.lhs.true, label %land.lhs.true10

land.lhs.true:                                    ; preds = %if.end
  %and = and i32 %5, 8192
  %tobool1 = icmp eq i32 %and, 0
  br i1 %tobool1, label %if.else, label %if.then2

if.then2:                                         ; preds = %land.lhs.true
  %buffer = getelementptr inbounds i8, i8* %handle, i32 40
  %img3 = bitcast i8* %buffer to %struct.cli_image_t*
  %error_buf = getelementptr inbounds i8, i8* %handle, i32 112
  %6 = bitcast i8* %error_buf to i16**
  %7 = load i16*, i16** %6, align 8, !tbaa !19
  %and.i = and i32 %5, 255
  %planes.i = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %output, i32 0, i32 0, i32 3
  %8 = load i32, i32* %planes.i, align 4, !tbaa !32
  %cmp641.i = icmp sgt i32 %8, 0
  br i1 %cmp641.i, label %for.body.lr.ph.i, label %dither_image.exit

for.body.lr.ph.i:                                 ; preds = %if.then2
  %height4.i = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %output, i32 0, i32 0, i32 2
  %width9.i = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %output, i32 0, i32 0, i32 1
  %9 = bitcast i16* %7 to i8*
  br label %for.body.i

for.body.i:                                       ; preds = %if.end142.for.body_crit_edge.i, %for.body.lr.ph.i
  %10 = phi i32 [ %5, %for.body.lr.ph.i ], [ %.pre.i, %if.end142.for.body_crit_edge.i ]
  %i.0642.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end142.for.body_crit_edge.i ]
  %and.i.i = and i32 %10, 255
  %11 = or i32 %and.i.i, 1
  %12 = icmp eq i32 %11, 5
  %cmp3.i.i = icmp eq i32 %and.i.i, 8
  %or.cond14.i.i = or i1 %cmp3.i.i, %12
  %cmp4.i.i = icmp eq i32 %i.0642.i, 1
  %or.cond15.i.i = and i1 %cmp4.i.i, %or.cond14.i.i
  br i1 %or.cond15.i.i, label %csp_num_interleaved.exit.i, label %cond.false.i.i

cond.false.i.i:                                   ; preds = %for.body.i
  %trunc.i.i = trunc i32 %10 to i8
  switch i8 %trunc.i.i, label %cond.false9.i.i [
    i8 16, label %csp_num_interleaved.exit.i
    i8 14, label %csp_num_interleaved.exit.i
  ]

cond.false9.i.i:                                  ; preds = %cond.false.i.i
  %cmp10.i.i = icmp eq i32 %and.i.i, 15
  %spec.select = select i1 %cmp10.i.i, i32 4, i32 1
  br label %csp_num_interleaved.exit.i

csp_num_interleaved.exit.i:                       ; preds = %cond.false9.i.i, %cond.false.i.i, %cond.false.i.i, %for.body.i
  %cond13.i.i = phi i32 [ 2, %for.body.i ], [ 3, %cond.false.i.i ], [ 3, %cond.false.i.i ], [ %spec.select, %cond.false9.i.i ]
  %arrayidx3.i = getelementptr inbounds [0 x %struct.x264_cli_csp_t], [0 x %struct.x264_cli_csp_t]* @x264_cli_csps, i32 0, i32 %and.i, i32 3, i32 %i.0642.i
  %13 = load float, float* %arrayidx3.i, align 4, !tbaa !33
  %14 = load i32, i32* %height4.i, align 4, !tbaa !34
  %conv.i = sitofp i32 %14 to float
  %mul.i = fmul fast float %13, %conv.i
  %conv5.i = fptosi float %mul.i to i32
  %arrayidx8.i = getelementptr inbounds [0 x %struct.x264_cli_csp_t], [0 x %struct.x264_cli_csp_t]* @x264_cli_csps, i32 0, i32 %and.i, i32 2, i32 %i.0642.i
  %15 = load float, float* %arrayidx8.i, align 4, !tbaa !33
  %16 = load i32, i32* %width9.i, align 4, !tbaa !35
  %conv10.i = sitofp i32 %16 to float
  %mul11.i = fmul fast float %15, %conv10.i
  %conv12.i = sitofp i32 %cond13.i.i to float
  %div.i = fdiv fast float %mul11.i, %conv12.i
  %conv13.i = fptosi float %div.i to i32
  switch i32 %cond13.i.i, label %if.else100.i [
    i32 4, label %if.then.i
    i32 3, label %if.then63.i
  ]

if.then.i:                                        ; preds = %csp_num_interleaved.exit.i
  %arrayidx16.i = getelementptr inbounds %struct.cli_image_t, %struct.cli_image_t* %img3, i32 0, i32 4, i32 %i.0642.i
  %17 = load i8*, i8** %arrayidx16.i, align 4, !tbaa !26
  %arrayidx17.i = getelementptr inbounds %struct.cli_image_t, %struct.cli_image_t* %img3, i32 0, i32 5, i32 %i.0642.i
  %18 = load i32, i32* %arrayidx17.i, align 4, !tbaa !36
  %arrayidx20.i = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %output, i32 0, i32 0, i32 4, i32 %i.0642.i
  %19 = bitcast i8** %arrayidx20.i to i16**
  %20 = load i16*, i16** %19, align 4, !tbaa !26
  %arrayidx23.i = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %output, i32 0, i32 0, i32 5, i32 %i.0642.i
  %21 = load i32, i32* %arrayidx23.i, align 4, !tbaa !36
  %div24.i = sdiv i32 %21, 2
  %add.i595.i = shl i32 %conv13.i, 1
  %mul.i596.i = add i32 %add.i595.i, 2
  tail call void @llvm.memset.p0i8.i32(i8* align 2 %9, i8 0, i32 %mul.i596.i, i1 false) #4
  %cmp60.i597.i = icmp sgt i32 %conv5.i, 0
  %cmp257.i598.i = icmp sgt i32 %conv13.i, 0
  %or.cond.i599.i = and i1 %cmp60.i597.i, %cmp257.i598.i
  br i1 %or.cond.i599.i, label %for.cond1.preheader.us.i603.i, label %dither_plane_4.exit637.i

for.cond1.preheader.us.i603.i:                    ; preds = %if.then.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i636.i
  %y.063.us.i600.i = phi i32 [ %inc29.us.i632.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i636.i ], [ 0, %if.then.i ]
  %dst.addr.062.us.i601.i = phi i8* [ %add.ptr30.us.i634.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i636.i ], [ %17, %if.then.i ]
  %src.addr.061.us.i602.i = phi i16* [ %add.ptr.us.i633.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i636.i ], [ %20, %if.then.i ]
  br label %for.body4.us.i631.i

for.body4.us.i631.i:                              ; preds = %for.body4.us.i631.i, %for.cond1.preheader.us.i603.i
  %x.059.us.i604.i = phi i32 [ 0, %for.cond1.preheader.us.i603.i ], [ %add7.us.i609.i, %for.body4.us.i631.i ]
  %err.058.us.i605.i = phi i32 [ 0, %for.cond1.preheader.us.i603.i ], [ %sub.us.i628.i, %for.body4.us.i631.i ]
  %mul5.us.i606.i = shl nsw i32 %err.058.us.i605.i, 1
  %arrayidx.us.i607.i = getelementptr inbounds i16, i16* %7, i32 %x.059.us.i604.i
  %22 = load i16, i16* %arrayidx.us.i607.i, align 2, !tbaa !37
  %conv.us.i608.i = sext i16 %22 to i32
  %add7.us.i609.i = add nuw nsw i32 %x.059.us.i604.i, 1
  %arrayidx8.us.i610.i = getelementptr inbounds i16, i16* %7, i32 %add7.us.i609.i
  %23 = load i16, i16* %arrayidx8.us.i610.i, align 2, !tbaa !37
  %conv9.us.i611.i = sext i16 %23 to i32
  %mul11.us.i612.i = shl nsw i32 %x.059.us.i604.i, 2
  %arrayidx12.us.i613.i = getelementptr inbounds i16, i16* %src.addr.061.us.i602.i, i32 %mul11.us.i612.i
  %24 = load i16, i16* %arrayidx12.us.i613.i, align 2, !tbaa !37
  %conv13.us.i614.i = zext i16 %24 to i32
  %shl.us.i615.i = shl nuw nsw i32 %conv13.us.i614.i, 2
  %add6.us.i616.i = add nsw i32 %mul5.us.i606.i, 512
  %add10.us.i617.i = add nsw i32 %add6.us.i616.i, %conv.us.i608.i
  %add14.us.i618.i = add nsw i32 %add10.us.i617.i, %conv9.us.i611.i
  %add15.us.i619.i = add i32 %add14.us.i618.i, %shl.us.i615.i
  %shr.us.i620.i = ashr i32 %add15.us.i619.i, 10
  %25 = icmp slt i32 %shr.us.i620.i, 255
  %cond.i.us.i621.i = select i1 %25, i32 %shr.us.i620.i, i32 255
  %26 = icmp sgt i32 %cond.i.us.i621.i, 0
  %cond5.i.us.i622.i = select i1 %26, i32 %cond.i.us.i621.i, i32 0
  %conv16.us.i623.i = trunc i32 %cond5.i.us.i622.i to i8
  %arrayidx18.us.i624.i = getelementptr inbounds i8, i8* %dst.addr.062.us.i601.i, i32 %mul11.us.i612.i
  store i8 %conv16.us.i623.i, i8* %arrayidx18.us.i624.i, align 1, !tbaa !39
  %27 = load i16, i16* %arrayidx12.us.i613.i, align 2, !tbaa !37
  %conv21.us.i625.i = zext i16 %27 to i32
  %conv24.us.i626.i = shl nuw nsw i32 %cond5.i.us.i622.i, 8
  %shl25.us.i627.i = and i32 %conv24.us.i626.i, 65280
  %sub.us.i628.i = sub nsw i32 %conv21.us.i625.i, %shl25.us.i627.i
  %conv26.us.i629.i = trunc i32 %sub.us.i628.i to i16
  store i16 %conv26.us.i629.i, i16* %arrayidx.us.i607.i, align 2, !tbaa !37
  %exitcond.i630.i = icmp eq i32 %add7.us.i609.i, %conv13.i
  br i1 %exitcond.i630.i, label %for.cond1.for.cond.cleanup3_crit_edge.us.i636.i, label %for.body4.us.i631.i

for.cond1.for.cond.cleanup3_crit_edge.us.i636.i:  ; preds = %for.body4.us.i631.i
  %inc29.us.i632.i = add nuw nsw i32 %y.063.us.i600.i, 1
  %add.ptr.us.i633.i = getelementptr inbounds i16, i16* %src.addr.061.us.i602.i, i32 %div24.i
  %add.ptr30.us.i634.i = getelementptr inbounds i8, i8* %dst.addr.062.us.i601.i, i32 %18
  %exitcond65.i635.i = icmp eq i32 %inc29.us.i632.i, %conv5.i
  br i1 %exitcond65.i635.i, label %dither_plane_4.exit637.i, label %for.cond1.preheader.us.i603.i

dither_plane_4.exit637.i:                         ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us.i636.i, %if.then.i
  %28 = load i8*, i8** %arrayidx16.i, align 4, !tbaa !26
  %29 = load i32, i32* %arrayidx17.i, align 4, !tbaa !36
  %30 = load i16*, i16** %19, align 4, !tbaa !26
  %31 = load i32, i32* %arrayidx23.i, align 4, !tbaa !36
  %div36.i = sdiv i32 %31, 2
  tail call void @llvm.memset.p0i8.i32(i8* align 2 %9, i8 0, i32 %mul.i596.i, i1 false) #4
  br i1 %or.cond.i599.i, label %for.cond1.preheader.us.i560.preheader.i, label %dither_plane_4.exit594.i

for.cond1.preheader.us.i560.preheader.i:          ; preds = %dither_plane_4.exit637.i
  %add.ptr33.i = getelementptr inbounds i16, i16* %30, i32 1
  %add.ptr27.i = getelementptr inbounds i8, i8* %28, i32 1
  br label %for.cond1.preheader.us.i560.i

for.cond1.preheader.us.i560.i:                    ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us.i593.i, %for.cond1.preheader.us.i560.preheader.i
  %y.063.us.i557.i = phi i32 [ %inc29.us.i589.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i593.i ], [ 0, %for.cond1.preheader.us.i560.preheader.i ]
  %dst.addr.062.us.i558.i = phi i8* [ %add.ptr30.us.i591.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i593.i ], [ %add.ptr27.i, %for.cond1.preheader.us.i560.preheader.i ]
  %src.addr.061.us.i559.i = phi i16* [ %add.ptr.us.i590.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i593.i ], [ %add.ptr33.i, %for.cond1.preheader.us.i560.preheader.i ]
  br label %for.body4.us.i588.i

for.body4.us.i588.i:                              ; preds = %for.body4.us.i588.i, %for.cond1.preheader.us.i560.i
  %x.059.us.i561.i = phi i32 [ 0, %for.cond1.preheader.us.i560.i ], [ %add7.us.i566.i, %for.body4.us.i588.i ]
  %err.058.us.i562.i = phi i32 [ 0, %for.cond1.preheader.us.i560.i ], [ %sub.us.i585.i, %for.body4.us.i588.i ]
  %mul5.us.i563.i = shl nsw i32 %err.058.us.i562.i, 1
  %arrayidx.us.i564.i = getelementptr inbounds i16, i16* %7, i32 %x.059.us.i561.i
  %32 = load i16, i16* %arrayidx.us.i564.i, align 2, !tbaa !37
  %conv.us.i565.i = sext i16 %32 to i32
  %add7.us.i566.i = add nuw nsw i32 %x.059.us.i561.i, 1
  %arrayidx8.us.i567.i = getelementptr inbounds i16, i16* %7, i32 %add7.us.i566.i
  %33 = load i16, i16* %arrayidx8.us.i567.i, align 2, !tbaa !37
  %conv9.us.i568.i = sext i16 %33 to i32
  %mul11.us.i569.i = shl nsw i32 %x.059.us.i561.i, 2
  %arrayidx12.us.i570.i = getelementptr inbounds i16, i16* %src.addr.061.us.i559.i, i32 %mul11.us.i569.i
  %34 = load i16, i16* %arrayidx12.us.i570.i, align 2, !tbaa !37
  %conv13.us.i571.i = zext i16 %34 to i32
  %shl.us.i572.i = shl nuw nsw i32 %conv13.us.i571.i, 2
  %add6.us.i573.i = add nsw i32 %mul5.us.i563.i, 512
  %add10.us.i574.i = add nsw i32 %add6.us.i573.i, %conv.us.i565.i
  %add14.us.i575.i = add nsw i32 %add10.us.i574.i, %conv9.us.i568.i
  %add15.us.i576.i = add i32 %add14.us.i575.i, %shl.us.i572.i
  %shr.us.i577.i = ashr i32 %add15.us.i576.i, 10
  %35 = icmp slt i32 %shr.us.i577.i, 255
  %cond.i.us.i578.i = select i1 %35, i32 %shr.us.i577.i, i32 255
  %36 = icmp sgt i32 %cond.i.us.i578.i, 0
  %cond5.i.us.i579.i = select i1 %36, i32 %cond.i.us.i578.i, i32 0
  %conv16.us.i580.i = trunc i32 %cond5.i.us.i579.i to i8
  %arrayidx18.us.i581.i = getelementptr inbounds i8, i8* %dst.addr.062.us.i558.i, i32 %mul11.us.i569.i
  store i8 %conv16.us.i580.i, i8* %arrayidx18.us.i581.i, align 1, !tbaa !39
  %37 = load i16, i16* %arrayidx12.us.i570.i, align 2, !tbaa !37
  %conv21.us.i582.i = zext i16 %37 to i32
  %conv24.us.i583.i = shl nuw nsw i32 %cond5.i.us.i579.i, 8
  %shl25.us.i584.i = and i32 %conv24.us.i583.i, 65280
  %sub.us.i585.i = sub nsw i32 %conv21.us.i582.i, %shl25.us.i584.i
  %conv26.us.i586.i = trunc i32 %sub.us.i585.i to i16
  store i16 %conv26.us.i586.i, i16* %arrayidx.us.i564.i, align 2, !tbaa !37
  %exitcond.i587.i = icmp eq i32 %add7.us.i566.i, %conv13.i
  br i1 %exitcond.i587.i, label %for.cond1.for.cond.cleanup3_crit_edge.us.i593.i, label %for.body4.us.i588.i

for.cond1.for.cond.cleanup3_crit_edge.us.i593.i:  ; preds = %for.body4.us.i588.i
  %inc29.us.i589.i = add nuw nsw i32 %y.063.us.i557.i, 1
  %add.ptr.us.i590.i = getelementptr inbounds i16, i16* %src.addr.061.us.i559.i, i32 %div36.i
  %add.ptr30.us.i591.i = getelementptr inbounds i8, i8* %dst.addr.062.us.i558.i, i32 %29
  %exitcond65.i592.i = icmp eq i32 %inc29.us.i589.i, %conv5.i
  br i1 %exitcond65.i592.i, label %dither_plane_4.exit594.i, label %for.cond1.preheader.us.i560.i

dither_plane_4.exit594.i:                         ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us.i593.i, %dither_plane_4.exit637.i
  %38 = load i8*, i8** %arrayidx16.i, align 4, !tbaa !26
  %39 = load i32, i32* %arrayidx17.i, align 4, !tbaa !36
  %40 = load i16*, i16** %19, align 4, !tbaa !26
  %41 = load i32, i32* %arrayidx23.i, align 4, !tbaa !36
  %div48.i = sdiv i32 %41, 2
  tail call void @llvm.memset.p0i8.i32(i8* align 2 %9, i8 0, i32 %mul.i596.i, i1 false) #4
  br i1 %or.cond.i599.i, label %for.cond1.preheader.us.i517.preheader.i, label %dither_plane_4.exit551.i

for.cond1.preheader.us.i517.preheader.i:          ; preds = %dither_plane_4.exit594.i
  %add.ptr45.i = getelementptr inbounds i16, i16* %40, i32 2
  %add.ptr39.i = getelementptr inbounds i8, i8* %38, i32 2
  br label %for.cond1.preheader.us.i517.i

for.cond1.preheader.us.i517.i:                    ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us.i550.i, %for.cond1.preheader.us.i517.preheader.i
  %y.063.us.i514.i = phi i32 [ %inc29.us.i546.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i550.i ], [ 0, %for.cond1.preheader.us.i517.preheader.i ]
  %dst.addr.062.us.i515.i = phi i8* [ %add.ptr30.us.i548.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i550.i ], [ %add.ptr39.i, %for.cond1.preheader.us.i517.preheader.i ]
  %src.addr.061.us.i516.i = phi i16* [ %add.ptr.us.i547.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i550.i ], [ %add.ptr45.i, %for.cond1.preheader.us.i517.preheader.i ]
  br label %for.body4.us.i545.i

for.body4.us.i545.i:                              ; preds = %for.body4.us.i545.i, %for.cond1.preheader.us.i517.i
  %x.059.us.i518.i = phi i32 [ 0, %for.cond1.preheader.us.i517.i ], [ %add7.us.i523.i, %for.body4.us.i545.i ]
  %err.058.us.i519.i = phi i32 [ 0, %for.cond1.preheader.us.i517.i ], [ %sub.us.i542.i, %for.body4.us.i545.i ]
  %mul5.us.i520.i = shl nsw i32 %err.058.us.i519.i, 1
  %arrayidx.us.i521.i = getelementptr inbounds i16, i16* %7, i32 %x.059.us.i518.i
  %42 = load i16, i16* %arrayidx.us.i521.i, align 2, !tbaa !37
  %conv.us.i522.i = sext i16 %42 to i32
  %add7.us.i523.i = add nuw nsw i32 %x.059.us.i518.i, 1
  %arrayidx8.us.i524.i = getelementptr inbounds i16, i16* %7, i32 %add7.us.i523.i
  %43 = load i16, i16* %arrayidx8.us.i524.i, align 2, !tbaa !37
  %conv9.us.i525.i = sext i16 %43 to i32
  %mul11.us.i526.i = shl nsw i32 %x.059.us.i518.i, 2
  %arrayidx12.us.i527.i = getelementptr inbounds i16, i16* %src.addr.061.us.i516.i, i32 %mul11.us.i526.i
  %44 = load i16, i16* %arrayidx12.us.i527.i, align 2, !tbaa !37
  %conv13.us.i528.i = zext i16 %44 to i32
  %shl.us.i529.i = shl nuw nsw i32 %conv13.us.i528.i, 2
  %add6.us.i530.i = add nsw i32 %mul5.us.i520.i, 512
  %add10.us.i531.i = add nsw i32 %add6.us.i530.i, %conv.us.i522.i
  %add14.us.i532.i = add nsw i32 %add10.us.i531.i, %conv9.us.i525.i
  %add15.us.i533.i = add i32 %add14.us.i532.i, %shl.us.i529.i
  %shr.us.i534.i = ashr i32 %add15.us.i533.i, 10
  %45 = icmp slt i32 %shr.us.i534.i, 255
  %cond.i.us.i535.i = select i1 %45, i32 %shr.us.i534.i, i32 255
  %46 = icmp sgt i32 %cond.i.us.i535.i, 0
  %cond5.i.us.i536.i = select i1 %46, i32 %cond.i.us.i535.i, i32 0
  %conv16.us.i537.i = trunc i32 %cond5.i.us.i536.i to i8
  %arrayidx18.us.i538.i = getelementptr inbounds i8, i8* %dst.addr.062.us.i515.i, i32 %mul11.us.i526.i
  store i8 %conv16.us.i537.i, i8* %arrayidx18.us.i538.i, align 1, !tbaa !39
  %47 = load i16, i16* %arrayidx12.us.i527.i, align 2, !tbaa !37
  %conv21.us.i539.i = zext i16 %47 to i32
  %conv24.us.i540.i = shl nuw nsw i32 %cond5.i.us.i536.i, 8
  %shl25.us.i541.i = and i32 %conv24.us.i540.i, 65280
  %sub.us.i542.i = sub nsw i32 %conv21.us.i539.i, %shl25.us.i541.i
  %conv26.us.i543.i = trunc i32 %sub.us.i542.i to i16
  store i16 %conv26.us.i543.i, i16* %arrayidx.us.i521.i, align 2, !tbaa !37
  %exitcond.i544.i = icmp eq i32 %add7.us.i523.i, %conv13.i
  br i1 %exitcond.i544.i, label %for.cond1.for.cond.cleanup3_crit_edge.us.i550.i, label %for.body4.us.i545.i

for.cond1.for.cond.cleanup3_crit_edge.us.i550.i:  ; preds = %for.body4.us.i545.i
  %inc29.us.i546.i = add nuw nsw i32 %y.063.us.i514.i, 1
  %add.ptr.us.i547.i = getelementptr inbounds i16, i16* %src.addr.061.us.i516.i, i32 %div48.i
  %add.ptr30.us.i548.i = getelementptr inbounds i8, i8* %dst.addr.062.us.i515.i, i32 %39
  %exitcond65.i549.i = icmp eq i32 %inc29.us.i546.i, %conv5.i
  br i1 %exitcond65.i549.i, label %dither_plane_4.exit551.i, label %for.cond1.preheader.us.i517.i

dither_plane_4.exit551.i:                         ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us.i550.i, %dither_plane_4.exit594.i
  %48 = load i8*, i8** %arrayidx16.i, align 4, !tbaa !26
  %49 = load i32, i32* %arrayidx17.i, align 4, !tbaa !36
  %50 = load i16*, i16** %19, align 4, !tbaa !26
  %51 = load i32, i32* %arrayidx23.i, align 4, !tbaa !36
  %div60.i = sdiv i32 %51, 2
  tail call void @llvm.memset.p0i8.i32(i8* align 2 %9, i8 0, i32 %mul.i596.i, i1 false) #4
  br i1 %or.cond.i599.i, label %for.cond1.preheader.us.i475.preheader.i, label %if.end142.i

for.cond1.preheader.us.i475.preheader.i:          ; preds = %dither_plane_4.exit551.i
  %add.ptr57.i = getelementptr inbounds i16, i16* %50, i32 3
  %add.ptr51.i = getelementptr inbounds i8, i8* %48, i32 3
  br label %for.cond1.preheader.us.i475.i

for.cond1.preheader.us.i475.i:                    ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us.i508.i, %for.cond1.preheader.us.i475.preheader.i
  %y.063.us.i472.i = phi i32 [ %inc29.us.i504.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i508.i ], [ 0, %for.cond1.preheader.us.i475.preheader.i ]
  %dst.addr.062.us.i473.i = phi i8* [ %add.ptr30.us.i506.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i508.i ], [ %add.ptr51.i, %for.cond1.preheader.us.i475.preheader.i ]
  %src.addr.061.us.i474.i = phi i16* [ %add.ptr.us.i505.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i508.i ], [ %add.ptr57.i, %for.cond1.preheader.us.i475.preheader.i ]
  br label %for.body4.us.i503.i

for.body4.us.i503.i:                              ; preds = %for.body4.us.i503.i, %for.cond1.preheader.us.i475.i
  %x.059.us.i476.i = phi i32 [ 0, %for.cond1.preheader.us.i475.i ], [ %add7.us.i481.i, %for.body4.us.i503.i ]
  %err.058.us.i477.i = phi i32 [ 0, %for.cond1.preheader.us.i475.i ], [ %sub.us.i500.i, %for.body4.us.i503.i ]
  %mul5.us.i478.i = shl nsw i32 %err.058.us.i477.i, 1
  %arrayidx.us.i479.i = getelementptr inbounds i16, i16* %7, i32 %x.059.us.i476.i
  %52 = load i16, i16* %arrayidx.us.i479.i, align 2, !tbaa !37
  %conv.us.i480.i = sext i16 %52 to i32
  %add7.us.i481.i = add nuw nsw i32 %x.059.us.i476.i, 1
  %arrayidx8.us.i482.i = getelementptr inbounds i16, i16* %7, i32 %add7.us.i481.i
  %53 = load i16, i16* %arrayidx8.us.i482.i, align 2, !tbaa !37
  %conv9.us.i483.i = sext i16 %53 to i32
  %mul11.us.i484.i = shl nsw i32 %x.059.us.i476.i, 2
  %arrayidx12.us.i485.i = getelementptr inbounds i16, i16* %src.addr.061.us.i474.i, i32 %mul11.us.i484.i
  %54 = load i16, i16* %arrayidx12.us.i485.i, align 2, !tbaa !37
  %conv13.us.i486.i = zext i16 %54 to i32
  %shl.us.i487.i = shl nuw nsw i32 %conv13.us.i486.i, 2
  %add6.us.i488.i = add nsw i32 %mul5.us.i478.i, 512
  %add10.us.i489.i = add nsw i32 %add6.us.i488.i, %conv.us.i480.i
  %add14.us.i490.i = add nsw i32 %add10.us.i489.i, %conv9.us.i483.i
  %add15.us.i491.i = add i32 %add14.us.i490.i, %shl.us.i487.i
  %shr.us.i492.i = ashr i32 %add15.us.i491.i, 10
  %55 = icmp slt i32 %shr.us.i492.i, 255
  %cond.i.us.i493.i = select i1 %55, i32 %shr.us.i492.i, i32 255
  %56 = icmp sgt i32 %cond.i.us.i493.i, 0
  %cond5.i.us.i494.i = select i1 %56, i32 %cond.i.us.i493.i, i32 0
  %conv16.us.i495.i = trunc i32 %cond5.i.us.i494.i to i8
  %arrayidx18.us.i496.i = getelementptr inbounds i8, i8* %dst.addr.062.us.i473.i, i32 %mul11.us.i484.i
  store i8 %conv16.us.i495.i, i8* %arrayidx18.us.i496.i, align 1, !tbaa !39
  %57 = load i16, i16* %arrayidx12.us.i485.i, align 2, !tbaa !37
  %conv21.us.i497.i = zext i16 %57 to i32
  %conv24.us.i498.i = shl nuw nsw i32 %cond5.i.us.i494.i, 8
  %shl25.us.i499.i = and i32 %conv24.us.i498.i, 65280
  %sub.us.i500.i = sub nsw i32 %conv21.us.i497.i, %shl25.us.i499.i
  %conv26.us.i501.i = trunc i32 %sub.us.i500.i to i16
  store i16 %conv26.us.i501.i, i16* %arrayidx.us.i479.i, align 2, !tbaa !37
  %exitcond.i502.i = icmp eq i32 %add7.us.i481.i, %conv13.i
  br i1 %exitcond.i502.i, label %for.cond1.for.cond.cleanup3_crit_edge.us.i508.i, label %for.body4.us.i503.i

for.cond1.for.cond.cleanup3_crit_edge.us.i508.i:  ; preds = %for.body4.us.i503.i
  %inc29.us.i504.i = add nuw nsw i32 %y.063.us.i472.i, 1
  %add.ptr.us.i505.i = getelementptr inbounds i16, i16* %src.addr.061.us.i474.i, i32 %div60.i
  %add.ptr30.us.i506.i = getelementptr inbounds i8, i8* %dst.addr.062.us.i473.i, i32 %49
  %exitcond65.i507.i = icmp eq i32 %inc29.us.i504.i, %conv5.i
  br i1 %exitcond65.i507.i, label %if.end142.i, label %for.cond1.preheader.us.i475.i

if.then63.i:                                      ; preds = %csp_num_interleaved.exit.i
  %arrayidx65.i = getelementptr inbounds %struct.cli_image_t, %struct.cli_image_t* %img3, i32 0, i32 4, i32 %i.0642.i
  %58 = load i8*, i8** %arrayidx65.i, align 4, !tbaa !26
  %arrayidx68.i = getelementptr inbounds %struct.cli_image_t, %struct.cli_image_t* %img3, i32 0, i32 5, i32 %i.0642.i
  %59 = load i32, i32* %arrayidx68.i, align 4, !tbaa !36
  %arrayidx71.i = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %output, i32 0, i32 0, i32 4, i32 %i.0642.i
  %60 = bitcast i8** %arrayidx71.i to i16**
  %61 = load i16*, i16** %60, align 4, !tbaa !26
  %arrayidx74.i = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %output, i32 0, i32 0, i32 5, i32 %i.0642.i
  %62 = load i32, i32* %arrayidx74.i, align 4, !tbaa !36
  %div75.i = sdiv i32 %62, 2
  %add.i424.i = shl i32 %conv13.i, 1
  %mul.i425.i = add i32 %add.i424.i, 2
  tail call void @llvm.memset.p0i8.i32(i8* align 2 %9, i8 0, i32 %mul.i425.i, i1 false) #4
  %cmp60.i426.i = icmp sgt i32 %conv5.i, 0
  %cmp257.i427.i = icmp sgt i32 %conv13.i, 0
  %or.cond.i428.i = and i1 %cmp60.i426.i, %cmp257.i427.i
  br i1 %or.cond.i428.i, label %for.cond1.preheader.us.i432.i, label %dither_plane_3.exit466.i

for.cond1.preheader.us.i432.i:                    ; preds = %if.then63.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i465.i
  %y.063.us.i429.i = phi i32 [ %inc29.us.i461.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i465.i ], [ 0, %if.then63.i ]
  %dst.addr.062.us.i430.i = phi i8* [ %add.ptr30.us.i463.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i465.i ], [ %58, %if.then63.i ]
  %src.addr.061.us.i431.i = phi i16* [ %add.ptr.us.i462.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i465.i ], [ %61, %if.then63.i ]
  br label %for.body4.us.i460.i

for.body4.us.i460.i:                              ; preds = %for.body4.us.i460.i, %for.cond1.preheader.us.i432.i
  %x.059.us.i433.i = phi i32 [ 0, %for.cond1.preheader.us.i432.i ], [ %add7.us.i438.i, %for.body4.us.i460.i ]
  %err.058.us.i434.i = phi i32 [ 0, %for.cond1.preheader.us.i432.i ], [ %sub.us.i457.i, %for.body4.us.i460.i ]
  %mul5.us.i435.i = shl nsw i32 %err.058.us.i434.i, 1
  %arrayidx.us.i436.i = getelementptr inbounds i16, i16* %7, i32 %x.059.us.i433.i
  %63 = load i16, i16* %arrayidx.us.i436.i, align 2, !tbaa !37
  %conv.us.i437.i = sext i16 %63 to i32
  %add7.us.i438.i = add nuw nsw i32 %x.059.us.i433.i, 1
  %arrayidx8.us.i439.i = getelementptr inbounds i16, i16* %7, i32 %add7.us.i438.i
  %64 = load i16, i16* %arrayidx8.us.i439.i, align 2, !tbaa !37
  %conv9.us.i440.i = sext i16 %64 to i32
  %mul11.us.i441.i = mul nuw nsw i32 %x.059.us.i433.i, 3
  %arrayidx12.us.i442.i = getelementptr inbounds i16, i16* %src.addr.061.us.i431.i, i32 %mul11.us.i441.i
  %65 = load i16, i16* %arrayidx12.us.i442.i, align 2, !tbaa !37
  %conv13.us.i443.i = zext i16 %65 to i32
  %shl.us.i444.i = shl nuw nsw i32 %conv13.us.i443.i, 2
  %add6.us.i445.i = add nsw i32 %mul5.us.i435.i, 512
  %add10.us.i446.i = add nsw i32 %add6.us.i445.i, %conv.us.i437.i
  %add14.us.i447.i = add nsw i32 %add10.us.i446.i, %conv9.us.i440.i
  %add15.us.i448.i = add i32 %add14.us.i447.i, %shl.us.i444.i
  %shr.us.i449.i = ashr i32 %add15.us.i448.i, 10
  %66 = icmp slt i32 %shr.us.i449.i, 255
  %cond.i.us.i450.i = select i1 %66, i32 %shr.us.i449.i, i32 255
  %67 = icmp sgt i32 %cond.i.us.i450.i, 0
  %cond5.i.us.i451.i = select i1 %67, i32 %cond.i.us.i450.i, i32 0
  %conv16.us.i452.i = trunc i32 %cond5.i.us.i451.i to i8
  %arrayidx18.us.i453.i = getelementptr inbounds i8, i8* %dst.addr.062.us.i430.i, i32 %mul11.us.i441.i
  store i8 %conv16.us.i452.i, i8* %arrayidx18.us.i453.i, align 1, !tbaa !39
  %68 = load i16, i16* %arrayidx12.us.i442.i, align 2, !tbaa !37
  %conv21.us.i454.i = zext i16 %68 to i32
  %conv24.us.i455.i = shl nuw nsw i32 %cond5.i.us.i451.i, 8
  %shl25.us.i456.i = and i32 %conv24.us.i455.i, 65280
  %sub.us.i457.i = sub nsw i32 %conv21.us.i454.i, %shl25.us.i456.i
  %conv26.us.i458.i = trunc i32 %sub.us.i457.i to i16
  store i16 %conv26.us.i458.i, i16* %arrayidx.us.i436.i, align 2, !tbaa !37
  %exitcond.i459.i = icmp eq i32 %add7.us.i438.i, %conv13.i
  br i1 %exitcond.i459.i, label %for.cond1.for.cond.cleanup3_crit_edge.us.i465.i, label %for.body4.us.i460.i

for.cond1.for.cond.cleanup3_crit_edge.us.i465.i:  ; preds = %for.body4.us.i460.i
  %inc29.us.i461.i = add nuw nsw i32 %y.063.us.i429.i, 1
  %add.ptr.us.i462.i = getelementptr inbounds i16, i16* %src.addr.061.us.i431.i, i32 %div75.i
  %add.ptr30.us.i463.i = getelementptr inbounds i8, i8* %dst.addr.062.us.i430.i, i32 %59
  %exitcond65.i464.i = icmp eq i32 %inc29.us.i461.i, %conv5.i
  br i1 %exitcond65.i464.i, label %dither_plane_3.exit466.i, label %for.cond1.preheader.us.i432.i

dither_plane_3.exit466.i:                         ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us.i465.i, %if.then63.i
  %69 = load i8*, i8** %arrayidx65.i, align 4, !tbaa !26
  %70 = load i32, i32* %arrayidx68.i, align 4, !tbaa !36
  %71 = load i16*, i16** %60, align 4, !tbaa !26
  %72 = load i32, i32* %arrayidx74.i, align 4, !tbaa !36
  %div87.i = sdiv i32 %72, 2
  tail call void @llvm.memset.p0i8.i32(i8* align 2 %9, i8 0, i32 %mul.i425.i, i1 false) #4
  br i1 %or.cond.i428.i, label %for.cond1.preheader.us.i389.preheader.i, label %dither_plane_3.exit423.i

for.cond1.preheader.us.i389.preheader.i:          ; preds = %dither_plane_3.exit466.i
  %add.ptr84.i = getelementptr inbounds i16, i16* %71, i32 1
  %add.ptr78.i = getelementptr inbounds i8, i8* %69, i32 1
  br label %for.cond1.preheader.us.i389.i

for.cond1.preheader.us.i389.i:                    ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us.i422.i, %for.cond1.preheader.us.i389.preheader.i
  %y.063.us.i386.i = phi i32 [ %inc29.us.i418.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i422.i ], [ 0, %for.cond1.preheader.us.i389.preheader.i ]
  %dst.addr.062.us.i387.i = phi i8* [ %add.ptr30.us.i420.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i422.i ], [ %add.ptr78.i, %for.cond1.preheader.us.i389.preheader.i ]
  %src.addr.061.us.i388.i = phi i16* [ %add.ptr.us.i419.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i422.i ], [ %add.ptr84.i, %for.cond1.preheader.us.i389.preheader.i ]
  br label %for.body4.us.i417.i

for.body4.us.i417.i:                              ; preds = %for.body4.us.i417.i, %for.cond1.preheader.us.i389.i
  %x.059.us.i390.i = phi i32 [ 0, %for.cond1.preheader.us.i389.i ], [ %add7.us.i395.i, %for.body4.us.i417.i ]
  %err.058.us.i391.i = phi i32 [ 0, %for.cond1.preheader.us.i389.i ], [ %sub.us.i414.i, %for.body4.us.i417.i ]
  %mul5.us.i392.i = shl nsw i32 %err.058.us.i391.i, 1
  %arrayidx.us.i393.i = getelementptr inbounds i16, i16* %7, i32 %x.059.us.i390.i
  %73 = load i16, i16* %arrayidx.us.i393.i, align 2, !tbaa !37
  %conv.us.i394.i = sext i16 %73 to i32
  %add7.us.i395.i = add nuw nsw i32 %x.059.us.i390.i, 1
  %arrayidx8.us.i396.i = getelementptr inbounds i16, i16* %7, i32 %add7.us.i395.i
  %74 = load i16, i16* %arrayidx8.us.i396.i, align 2, !tbaa !37
  %conv9.us.i397.i = sext i16 %74 to i32
  %mul11.us.i398.i = mul nuw nsw i32 %x.059.us.i390.i, 3
  %arrayidx12.us.i399.i = getelementptr inbounds i16, i16* %src.addr.061.us.i388.i, i32 %mul11.us.i398.i
  %75 = load i16, i16* %arrayidx12.us.i399.i, align 2, !tbaa !37
  %conv13.us.i400.i = zext i16 %75 to i32
  %shl.us.i401.i = shl nuw nsw i32 %conv13.us.i400.i, 2
  %add6.us.i402.i = add nsw i32 %mul5.us.i392.i, 512
  %add10.us.i403.i = add nsw i32 %add6.us.i402.i, %conv.us.i394.i
  %add14.us.i404.i = add nsw i32 %add10.us.i403.i, %conv9.us.i397.i
  %add15.us.i405.i = add i32 %add14.us.i404.i, %shl.us.i401.i
  %shr.us.i406.i = ashr i32 %add15.us.i405.i, 10
  %76 = icmp slt i32 %shr.us.i406.i, 255
  %cond.i.us.i407.i = select i1 %76, i32 %shr.us.i406.i, i32 255
  %77 = icmp sgt i32 %cond.i.us.i407.i, 0
  %cond5.i.us.i408.i = select i1 %77, i32 %cond.i.us.i407.i, i32 0
  %conv16.us.i409.i = trunc i32 %cond5.i.us.i408.i to i8
  %arrayidx18.us.i410.i = getelementptr inbounds i8, i8* %dst.addr.062.us.i387.i, i32 %mul11.us.i398.i
  store i8 %conv16.us.i409.i, i8* %arrayidx18.us.i410.i, align 1, !tbaa !39
  %78 = load i16, i16* %arrayidx12.us.i399.i, align 2, !tbaa !37
  %conv21.us.i411.i = zext i16 %78 to i32
  %conv24.us.i412.i = shl nuw nsw i32 %cond5.i.us.i408.i, 8
  %shl25.us.i413.i = and i32 %conv24.us.i412.i, 65280
  %sub.us.i414.i = sub nsw i32 %conv21.us.i411.i, %shl25.us.i413.i
  %conv26.us.i415.i = trunc i32 %sub.us.i414.i to i16
  store i16 %conv26.us.i415.i, i16* %arrayidx.us.i393.i, align 2, !tbaa !37
  %exitcond.i416.i = icmp eq i32 %add7.us.i395.i, %conv13.i
  br i1 %exitcond.i416.i, label %for.cond1.for.cond.cleanup3_crit_edge.us.i422.i, label %for.body4.us.i417.i

for.cond1.for.cond.cleanup3_crit_edge.us.i422.i:  ; preds = %for.body4.us.i417.i
  %inc29.us.i418.i = add nuw nsw i32 %y.063.us.i386.i, 1
  %add.ptr.us.i419.i = getelementptr inbounds i16, i16* %src.addr.061.us.i388.i, i32 %div87.i
  %add.ptr30.us.i420.i = getelementptr inbounds i8, i8* %dst.addr.062.us.i387.i, i32 %70
  %exitcond65.i421.i = icmp eq i32 %inc29.us.i418.i, %conv5.i
  br i1 %exitcond65.i421.i, label %dither_plane_3.exit423.i, label %for.cond1.preheader.us.i389.i

dither_plane_3.exit423.i:                         ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us.i422.i, %dither_plane_3.exit466.i
  %79 = load i8*, i8** %arrayidx65.i, align 4, !tbaa !26
  %80 = load i32, i32* %arrayidx68.i, align 4, !tbaa !36
  %81 = load i16*, i16** %60, align 4, !tbaa !26
  %82 = load i32, i32* %arrayidx74.i, align 4, !tbaa !36
  %div99.i = sdiv i32 %82, 2
  tail call void @llvm.memset.p0i8.i32(i8* align 2 %9, i8 0, i32 %mul.i425.i, i1 false) #4
  br i1 %or.cond.i428.i, label %for.cond1.preheader.us.i347.preheader.i, label %if.end142.i

for.cond1.preheader.us.i347.preheader.i:          ; preds = %dither_plane_3.exit423.i
  %add.ptr96.i = getelementptr inbounds i16, i16* %81, i32 2
  %add.ptr90.i = getelementptr inbounds i8, i8* %79, i32 2
  br label %for.cond1.preheader.us.i347.i

for.cond1.preheader.us.i347.i:                    ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us.i380.i, %for.cond1.preheader.us.i347.preheader.i
  %y.063.us.i344.i = phi i32 [ %inc29.us.i376.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i380.i ], [ 0, %for.cond1.preheader.us.i347.preheader.i ]
  %dst.addr.062.us.i345.i = phi i8* [ %add.ptr30.us.i378.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i380.i ], [ %add.ptr90.i, %for.cond1.preheader.us.i347.preheader.i ]
  %src.addr.061.us.i346.i = phi i16* [ %add.ptr.us.i377.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i380.i ], [ %add.ptr96.i, %for.cond1.preheader.us.i347.preheader.i ]
  br label %for.body4.us.i375.i

for.body4.us.i375.i:                              ; preds = %for.body4.us.i375.i, %for.cond1.preheader.us.i347.i
  %x.059.us.i348.i = phi i32 [ 0, %for.cond1.preheader.us.i347.i ], [ %add7.us.i353.i, %for.body4.us.i375.i ]
  %err.058.us.i349.i = phi i32 [ 0, %for.cond1.preheader.us.i347.i ], [ %sub.us.i372.i, %for.body4.us.i375.i ]
  %mul5.us.i350.i = shl nsw i32 %err.058.us.i349.i, 1
  %arrayidx.us.i351.i = getelementptr inbounds i16, i16* %7, i32 %x.059.us.i348.i
  %83 = load i16, i16* %arrayidx.us.i351.i, align 2, !tbaa !37
  %conv.us.i352.i = sext i16 %83 to i32
  %add7.us.i353.i = add nuw nsw i32 %x.059.us.i348.i, 1
  %arrayidx8.us.i354.i = getelementptr inbounds i16, i16* %7, i32 %add7.us.i353.i
  %84 = load i16, i16* %arrayidx8.us.i354.i, align 2, !tbaa !37
  %conv9.us.i355.i = sext i16 %84 to i32
  %mul11.us.i356.i = mul nuw nsw i32 %x.059.us.i348.i, 3
  %arrayidx12.us.i357.i = getelementptr inbounds i16, i16* %src.addr.061.us.i346.i, i32 %mul11.us.i356.i
  %85 = load i16, i16* %arrayidx12.us.i357.i, align 2, !tbaa !37
  %conv13.us.i358.i = zext i16 %85 to i32
  %shl.us.i359.i = shl nuw nsw i32 %conv13.us.i358.i, 2
  %add6.us.i360.i = add nsw i32 %mul5.us.i350.i, 512
  %add10.us.i361.i = add nsw i32 %add6.us.i360.i, %conv.us.i352.i
  %add14.us.i362.i = add nsw i32 %add10.us.i361.i, %conv9.us.i355.i
  %add15.us.i363.i = add i32 %add14.us.i362.i, %shl.us.i359.i
  %shr.us.i364.i = ashr i32 %add15.us.i363.i, 10
  %86 = icmp slt i32 %shr.us.i364.i, 255
  %cond.i.us.i365.i = select i1 %86, i32 %shr.us.i364.i, i32 255
  %87 = icmp sgt i32 %cond.i.us.i365.i, 0
  %cond5.i.us.i366.i = select i1 %87, i32 %cond.i.us.i365.i, i32 0
  %conv16.us.i367.i = trunc i32 %cond5.i.us.i366.i to i8
  %arrayidx18.us.i368.i = getelementptr inbounds i8, i8* %dst.addr.062.us.i345.i, i32 %mul11.us.i356.i
  store i8 %conv16.us.i367.i, i8* %arrayidx18.us.i368.i, align 1, !tbaa !39
  %88 = load i16, i16* %arrayidx12.us.i357.i, align 2, !tbaa !37
  %conv21.us.i369.i = zext i16 %88 to i32
  %conv24.us.i370.i = shl nuw nsw i32 %cond5.i.us.i366.i, 8
  %shl25.us.i371.i = and i32 %conv24.us.i370.i, 65280
  %sub.us.i372.i = sub nsw i32 %conv21.us.i369.i, %shl25.us.i371.i
  %conv26.us.i373.i = trunc i32 %sub.us.i372.i to i16
  store i16 %conv26.us.i373.i, i16* %arrayidx.us.i351.i, align 2, !tbaa !37
  %exitcond.i374.i = icmp eq i32 %add7.us.i353.i, %conv13.i
  br i1 %exitcond.i374.i, label %for.cond1.for.cond.cleanup3_crit_edge.us.i380.i, label %for.body4.us.i375.i

for.cond1.for.cond.cleanup3_crit_edge.us.i380.i:  ; preds = %for.body4.us.i375.i
  %inc29.us.i376.i = add nuw nsw i32 %y.063.us.i344.i, 1
  %add.ptr.us.i377.i = getelementptr inbounds i16, i16* %src.addr.061.us.i346.i, i32 %div99.i
  %add.ptr30.us.i378.i = getelementptr inbounds i8, i8* %dst.addr.062.us.i345.i, i32 %80
  %exitcond65.i379.i = icmp eq i32 %inc29.us.i376.i, %conv5.i
  br i1 %exitcond65.i379.i, label %if.end142.i, label %for.cond1.preheader.us.i347.i

if.else100.i:                                     ; preds = %csp_num_interleaved.exit.i
  %cmp101.i = icmp eq i32 %cond13.i.i, 2
  %arrayidx105.i = getelementptr inbounds %struct.cli_image_t, %struct.cli_image_t* %img3, i32 0, i32 4, i32 %i.0642.i
  %89 = load i8*, i8** %arrayidx105.i, align 4, !tbaa !26
  %arrayidx108.i = getelementptr inbounds %struct.cli_image_t, %struct.cli_image_t* %img3, i32 0, i32 5, i32 %i.0642.i
  %90 = load i32, i32* %arrayidx108.i, align 4, !tbaa !36
  %arrayidx111.i = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %output, i32 0, i32 0, i32 4, i32 %i.0642.i
  %91 = bitcast i8** %arrayidx111.i to i16**
  %92 = load i16*, i16** %91, align 4, !tbaa !26
  %arrayidx114.i = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %output, i32 0, i32 0, i32 5, i32 %i.0642.i
  %93 = load i32, i32* %arrayidx114.i, align 4, !tbaa !36
  %div115.i = sdiv i32 %93, 2
  %add.i296.i = shl i32 %conv13.i, 1
  %mul.i297.i = add i32 %add.i296.i, 2
  tail call void @llvm.memset.p0i8.i32(i8* align 2 %9, i8 0, i32 %mul.i297.i, i1 false) #4
  %cmp60.i298.i = icmp sgt i32 %conv5.i, 0
  %cmp257.i299.i = icmp sgt i32 %conv13.i, 0
  %or.cond.i300.i = and i1 %cmp60.i298.i, %cmp257.i299.i
  br i1 %cmp101.i, label %if.then103.i, label %if.else128.i

if.then103.i:                                     ; preds = %if.else100.i
  br i1 %or.cond.i300.i, label %for.cond1.preheader.us.i304.i, label %dither_plane_2.exit338.i

for.cond1.preheader.us.i304.i:                    ; preds = %if.then103.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i337.i
  %y.063.us.i301.i = phi i32 [ %inc29.us.i333.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i337.i ], [ 0, %if.then103.i ]
  %dst.addr.062.us.i302.i = phi i8* [ %add.ptr30.us.i335.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i337.i ], [ %89, %if.then103.i ]
  %src.addr.061.us.i303.i = phi i16* [ %add.ptr.us.i334.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i337.i ], [ %92, %if.then103.i ]
  br label %for.body4.us.i332.i

for.body4.us.i332.i:                              ; preds = %for.body4.us.i332.i, %for.cond1.preheader.us.i304.i
  %x.059.us.i305.i = phi i32 [ 0, %for.cond1.preheader.us.i304.i ], [ %add7.us.i310.i, %for.body4.us.i332.i ]
  %err.058.us.i306.i = phi i32 [ 0, %for.cond1.preheader.us.i304.i ], [ %sub.us.i329.i, %for.body4.us.i332.i ]
  %mul5.us.i307.i = shl nsw i32 %err.058.us.i306.i, 1
  %arrayidx.us.i308.i = getelementptr inbounds i16, i16* %7, i32 %x.059.us.i305.i
  %94 = load i16, i16* %arrayidx.us.i308.i, align 2, !tbaa !37
  %conv.us.i309.i = sext i16 %94 to i32
  %add7.us.i310.i = add nuw nsw i32 %x.059.us.i305.i, 1
  %arrayidx8.us.i311.i = getelementptr inbounds i16, i16* %7, i32 %add7.us.i310.i
  %95 = load i16, i16* %arrayidx8.us.i311.i, align 2, !tbaa !37
  %conv9.us.i312.i = sext i16 %95 to i32
  %mul11.us.i313.i = shl nuw nsw i32 %x.059.us.i305.i, 1
  %arrayidx12.us.i314.i = getelementptr inbounds i16, i16* %src.addr.061.us.i303.i, i32 %mul11.us.i313.i
  %96 = load i16, i16* %arrayidx12.us.i314.i, align 2, !tbaa !37
  %conv13.us.i315.i = zext i16 %96 to i32
  %shl.us.i316.i = shl nuw nsw i32 %conv13.us.i315.i, 2
  %add6.us.i317.i = add nsw i32 %mul5.us.i307.i, 512
  %add10.us.i318.i = add nsw i32 %add6.us.i317.i, %conv.us.i309.i
  %add14.us.i319.i = add nsw i32 %add10.us.i318.i, %conv9.us.i312.i
  %add15.us.i320.i = add i32 %add14.us.i319.i, %shl.us.i316.i
  %shr.us.i321.i = ashr i32 %add15.us.i320.i, 10
  %97 = icmp slt i32 %shr.us.i321.i, 255
  %cond.i.us.i322.i = select i1 %97, i32 %shr.us.i321.i, i32 255
  %98 = icmp sgt i32 %cond.i.us.i322.i, 0
  %cond5.i.us.i323.i = select i1 %98, i32 %cond.i.us.i322.i, i32 0
  %conv16.us.i324.i = trunc i32 %cond5.i.us.i323.i to i8
  %arrayidx18.us.i325.i = getelementptr inbounds i8, i8* %dst.addr.062.us.i302.i, i32 %mul11.us.i313.i
  store i8 %conv16.us.i324.i, i8* %arrayidx18.us.i325.i, align 1, !tbaa !39
  %99 = load i16, i16* %arrayidx12.us.i314.i, align 2, !tbaa !37
  %conv21.us.i326.i = zext i16 %99 to i32
  %conv24.us.i327.i = shl nuw nsw i32 %cond5.i.us.i323.i, 8
  %shl25.us.i328.i = and i32 %conv24.us.i327.i, 65280
  %sub.us.i329.i = sub nsw i32 %conv21.us.i326.i, %shl25.us.i328.i
  %conv26.us.i330.i = trunc i32 %sub.us.i329.i to i16
  store i16 %conv26.us.i330.i, i16* %arrayidx.us.i308.i, align 2, !tbaa !37
  %exitcond.i331.i = icmp eq i32 %add7.us.i310.i, %conv13.i
  br i1 %exitcond.i331.i, label %for.cond1.for.cond.cleanup3_crit_edge.us.i337.i, label %for.body4.us.i332.i

for.cond1.for.cond.cleanup3_crit_edge.us.i337.i:  ; preds = %for.body4.us.i332.i
  %inc29.us.i333.i = add nuw nsw i32 %y.063.us.i301.i, 1
  %add.ptr.us.i334.i = getelementptr inbounds i16, i16* %src.addr.061.us.i303.i, i32 %div115.i
  %add.ptr30.us.i335.i = getelementptr inbounds i8, i8* %dst.addr.062.us.i302.i, i32 %90
  %exitcond65.i336.i = icmp eq i32 %inc29.us.i333.i, %conv5.i
  br i1 %exitcond65.i336.i, label %dither_plane_2.exit338.i, label %for.cond1.preheader.us.i304.i

dither_plane_2.exit338.i:                         ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us.i337.i, %if.then103.i
  %100 = load i8*, i8** %arrayidx105.i, align 4, !tbaa !26
  %101 = load i32, i32* %arrayidx108.i, align 4, !tbaa !36
  %102 = load i16*, i16** %91, align 4, !tbaa !26
  %103 = load i32, i32* %arrayidx114.i, align 4, !tbaa !36
  %div127.i = sdiv i32 %103, 2
  tail call void @llvm.memset.p0i8.i32(i8* align 2 %9, i8 0, i32 %mul.i297.i, i1 false) #4
  br i1 %or.cond.i300.i, label %for.cond1.preheader.us.i263.preheader.i, label %if.end142.i

for.cond1.preheader.us.i263.preheader.i:          ; preds = %dither_plane_2.exit338.i
  %add.ptr124.i = getelementptr inbounds i16, i16* %102, i32 1
  %add.ptr118.i = getelementptr inbounds i8, i8* %100, i32 1
  br label %for.cond1.preheader.us.i263.i

for.cond1.preheader.us.i263.i:                    ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us.i295.i, %for.cond1.preheader.us.i263.preheader.i
  %y.063.us.i260.i = phi i32 [ %inc29.us.i291.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i295.i ], [ 0, %for.cond1.preheader.us.i263.preheader.i ]
  %dst.addr.062.us.i261.i = phi i8* [ %add.ptr30.us.i293.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i295.i ], [ %add.ptr118.i, %for.cond1.preheader.us.i263.preheader.i ]
  %src.addr.061.us.i262.i = phi i16* [ %add.ptr.us.i292.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i295.i ], [ %add.ptr124.i, %for.cond1.preheader.us.i263.preheader.i ]
  br label %for.body4.us.i290.i

for.body4.us.i290.i:                              ; preds = %for.body4.us.i290.i, %for.cond1.preheader.us.i263.i
  %x.059.us.i264.i = phi i32 [ 0, %for.cond1.preheader.us.i263.i ], [ %add7.us.i269.i, %for.body4.us.i290.i ]
  %err.058.us.i265.i = phi i32 [ 0, %for.cond1.preheader.us.i263.i ], [ %sub.us.i287.i, %for.body4.us.i290.i ]
  %mul5.us.i266.i = shl nsw i32 %err.058.us.i265.i, 1
  %arrayidx.us.i267.i = getelementptr inbounds i16, i16* %7, i32 %x.059.us.i264.i
  %104 = load i16, i16* %arrayidx.us.i267.i, align 2, !tbaa !37
  %conv.us.i268.i = sext i16 %104 to i32
  %add7.us.i269.i = add nuw nsw i32 %x.059.us.i264.i, 1
  %arrayidx8.us.i270.i = getelementptr inbounds i16, i16* %7, i32 %add7.us.i269.i
  %105 = load i16, i16* %arrayidx8.us.i270.i, align 2, !tbaa !37
  %conv9.us.i271.i = sext i16 %105 to i32
  %mul11.us.i.i = shl nuw nsw i32 %x.059.us.i264.i, 1
  %arrayidx12.us.i272.i = getelementptr inbounds i16, i16* %src.addr.061.us.i262.i, i32 %mul11.us.i.i
  %106 = load i16, i16* %arrayidx12.us.i272.i, align 2, !tbaa !37
  %conv13.us.i273.i = zext i16 %106 to i32
  %shl.us.i274.i = shl nuw nsw i32 %conv13.us.i273.i, 2
  %add6.us.i275.i = add nsw i32 %mul5.us.i266.i, 512
  %add10.us.i276.i = add nsw i32 %add6.us.i275.i, %conv.us.i268.i
  %add14.us.i277.i = add nsw i32 %add10.us.i276.i, %conv9.us.i271.i
  %add15.us.i278.i = add i32 %add14.us.i277.i, %shl.us.i274.i
  %shr.us.i279.i = ashr i32 %add15.us.i278.i, 10
  %107 = icmp slt i32 %shr.us.i279.i, 255
  %cond.i.us.i280.i = select i1 %107, i32 %shr.us.i279.i, i32 255
  %108 = icmp sgt i32 %cond.i.us.i280.i, 0
  %cond5.i.us.i281.i = select i1 %108, i32 %cond.i.us.i280.i, i32 0
  %conv16.us.i282.i = trunc i32 %cond5.i.us.i281.i to i8
  %arrayidx18.us.i283.i = getelementptr inbounds i8, i8* %dst.addr.062.us.i261.i, i32 %mul11.us.i.i
  store i8 %conv16.us.i282.i, i8* %arrayidx18.us.i283.i, align 1, !tbaa !39
  %109 = load i16, i16* %arrayidx12.us.i272.i, align 2, !tbaa !37
  %conv21.us.i284.i = zext i16 %109 to i32
  %conv24.us.i285.i = shl nuw nsw i32 %cond5.i.us.i281.i, 8
  %shl25.us.i286.i = and i32 %conv24.us.i285.i, 65280
  %sub.us.i287.i = sub nsw i32 %conv21.us.i284.i, %shl25.us.i286.i
  %conv26.us.i288.i = trunc i32 %sub.us.i287.i to i16
  store i16 %conv26.us.i288.i, i16* %arrayidx.us.i267.i, align 2, !tbaa !37
  %exitcond.i289.i = icmp eq i32 %add7.us.i269.i, %conv13.i
  br i1 %exitcond.i289.i, label %for.cond1.for.cond.cleanup3_crit_edge.us.i295.i, label %for.body4.us.i290.i

for.cond1.for.cond.cleanup3_crit_edge.us.i295.i:  ; preds = %for.body4.us.i290.i
  %inc29.us.i291.i = add nuw nsw i32 %y.063.us.i260.i, 1
  %add.ptr.us.i292.i = getelementptr inbounds i16, i16* %src.addr.061.us.i262.i, i32 %div127.i
  %add.ptr30.us.i293.i = getelementptr inbounds i8, i8* %dst.addr.062.us.i261.i, i32 %101
  %exitcond65.i294.i = icmp eq i32 %inc29.us.i291.i, %conv5.i
  br i1 %exitcond65.i294.i, label %if.end142.i, label %for.cond1.preheader.us.i263.i

if.else128.i:                                     ; preds = %if.else100.i
  br i1 %or.cond.i300.i, label %for.cond1.preheader.us.i.i, label %if.end142.i

for.cond1.preheader.us.i.i:                       ; preds = %if.else128.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i.i
  %y.063.us.i.i = phi i32 [ %inc29.us.i.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i.i ], [ 0, %if.else128.i ]
  %dst.addr.062.us.i.i = phi i8* [ %add.ptr30.us.i.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i.i ], [ %89, %if.else128.i ]
  %src.addr.061.us.i.i = phi i16* [ %add.ptr.us.i.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i.i ], [ %92, %if.else128.i ]
  br label %for.body4.us.i.i

for.body4.us.i.i:                                 ; preds = %for.body4.us.i.i, %for.cond1.preheader.us.i.i
  %x.059.us.i.i = phi i32 [ 0, %for.cond1.preheader.us.i.i ], [ %add7.us.i.i, %for.body4.us.i.i ]
  %err.058.us.i.i = phi i32 [ 0, %for.cond1.preheader.us.i.i ], [ %sub.us.i.i, %for.body4.us.i.i ]
  %mul5.us.i.i = shl nsw i32 %err.058.us.i.i, 1
  %arrayidx.us.i.i = getelementptr inbounds i16, i16* %7, i32 %x.059.us.i.i
  %110 = load i16, i16* %arrayidx.us.i.i, align 2, !tbaa !37
  %conv.us.i.i = sext i16 %110 to i32
  %add7.us.i.i = add nuw nsw i32 %x.059.us.i.i, 1
  %arrayidx8.us.i.i = getelementptr inbounds i16, i16* %7, i32 %add7.us.i.i
  %111 = load i16, i16* %arrayidx8.us.i.i, align 2, !tbaa !37
  %conv9.us.i.i = sext i16 %111 to i32
  %arrayidx12.us.i.i = getelementptr inbounds i16, i16* %src.addr.061.us.i.i, i32 %x.059.us.i.i
  %112 = load i16, i16* %arrayidx12.us.i.i, align 2, !tbaa !37
  %conv13.us.i.i = zext i16 %112 to i32
  %shl.us.i.i = shl nuw nsw i32 %conv13.us.i.i, 2
  %add6.us.i.i = add nsw i32 %mul5.us.i.i, 512
  %add10.us.i.i = add nsw i32 %add6.us.i.i, %conv.us.i.i
  %add14.us.i.i = add nsw i32 %add10.us.i.i, %conv9.us.i.i
  %add15.us.i.i = add i32 %add14.us.i.i, %shl.us.i.i
  %shr.us.i.i = ashr i32 %add15.us.i.i, 10
  %113 = icmp slt i32 %shr.us.i.i, 255
  %cond.i.us.i.i = select i1 %113, i32 %shr.us.i.i, i32 255
  %114 = icmp sgt i32 %cond.i.us.i.i, 0
  %cond5.i.us.i.i = select i1 %114, i32 %cond.i.us.i.i, i32 0
  %conv16.us.i.i = trunc i32 %cond5.i.us.i.i to i8
  %arrayidx18.us.i.i = getelementptr inbounds i8, i8* %dst.addr.062.us.i.i, i32 %x.059.us.i.i
  store i8 %conv16.us.i.i, i8* %arrayidx18.us.i.i, align 1, !tbaa !39
  %115 = load i16, i16* %arrayidx12.us.i.i, align 2, !tbaa !37
  %conv21.us.i.i = zext i16 %115 to i32
  %conv24.us.i.i = shl nuw nsw i32 %cond5.i.us.i.i, 8
  %shl25.us.i.i = and i32 %conv24.us.i.i, 65280
  %sub.us.i.i = sub nsw i32 %conv21.us.i.i, %shl25.us.i.i
  %conv26.us.i.i = trunc i32 %sub.us.i.i to i16
  store i16 %conv26.us.i.i, i16* %arrayidx.us.i.i, align 2, !tbaa !37
  %exitcond.i.i = icmp eq i32 %add7.us.i.i, %conv13.i
  br i1 %exitcond.i.i, label %for.cond1.for.cond.cleanup3_crit_edge.us.i.i, label %for.body4.us.i.i

for.cond1.for.cond.cleanup3_crit_edge.us.i.i:     ; preds = %for.body4.us.i.i
  %inc29.us.i.i = add nuw nsw i32 %y.063.us.i.i, 1
  %add.ptr.us.i.i = getelementptr inbounds i16, i16* %src.addr.061.us.i.i, i32 %div115.i
  %add.ptr30.us.i.i = getelementptr inbounds i8, i8* %dst.addr.062.us.i.i, i32 %90
  %exitcond65.i.i = icmp eq i32 %inc29.us.i.i, %conv5.i
  br i1 %exitcond65.i.i, label %if.end142.i, label %for.cond1.preheader.us.i.i

if.end142.i:                                      ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us.i380.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i508.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i295.i, %if.else128.i, %dither_plane_2.exit338.i, %dither_plane_3.exit423.i, %dither_plane_4.exit551.i
  %inc.i = add nuw nsw i32 %i.0642.i, 1
  %116 = load i32, i32* %planes.i, align 4, !tbaa !32
  %cmp.i = icmp slt i32 %inc.i, %116
  br i1 %cmp.i, label %if.end142.for.body_crit_edge.i, label %dither_image.exit

if.end142.for.body_crit_edge.i:                   ; preds = %if.end142.i
  %.pre.i = load i32, i32* %csp, align 4, !tbaa !40
  br label %for.body.i

dither_image.exit:                                ; preds = %if.end142.i, %if.then2
  %117 = bitcast %struct.cli_pic_t* %output to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 8 dereferenceable(48) %117, i8* nonnull align 8 dereferenceable(48) %buffer, i32 48, i1 false), !tbaa.struct !41
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true
  %cmp9 = icmp sgt i32 %4, 8
  br i1 %cmp9, label %land.lhs.true10, label %cleanup

land.lhs.true10:                                  ; preds = %if.end, %if.else
  %and13 = and i32 %5, 8192
  %tobool14 = icmp eq i32 %and13, 0
  br i1 %tobool14, label %if.then15, label %cleanup

if.then15:                                        ; preds = %land.lhs.true10
  %buffer16 = getelementptr inbounds i8, i8* %handle, i32 40
  %img17 = bitcast i8* %buffer16 to %struct.cli_image_t*
  %and.i40 = and i32 %5, 255
  %planes.i41 = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %output, i32 0, i32 0, i32 3
  %118 = load i32, i32* %planes.i41, align 4, !tbaa !32
  %cmp74.i = icmp sgt i32 %118, 0
  br i1 %cmp74.i, label %for.body.lr.ph.i44, label %scale_image.exit

for.body.lr.ph.i44:                               ; preds = %if.then15
  %height6.i = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %output, i32 0, i32 0, i32 2
  %119 = load i32, i32* %height6.i, align 4, !tbaa !34
  %conv.i42 = sitofp i32 %119 to float
  %width11.i = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %output, i32 0, i32 0, i32 1
  %120 = load i32, i32* %width11.i, align 4, !tbaa !35
  %conv12.i43 = sitofp i32 %120 to float
  br label %for.body.i46

for.body.i46:                                     ; preds = %for.cond.cleanup18.i, %for.body.lr.ph.i44
  %i.075.i = phi i32 [ 0, %for.body.lr.ph.i44 ], [ %inc37.i, %for.cond.cleanup18.i ]
  %arrayidx5.i = getelementptr inbounds [0 x %struct.x264_cli_csp_t], [0 x %struct.x264_cli_csp_t]* @x264_cli_csps, i32 0, i32 %and.i40, i32 3, i32 %i.075.i
  %121 = load float, float* %arrayidx5.i, align 4, !tbaa !33
  %mul.i45 = fmul fast float %121, %conv.i42
  %conv7.i = fptosi float %mul.i45 to i32
  %arrayidx10.i = getelementptr inbounds [0 x %struct.x264_cli_csp_t], [0 x %struct.x264_cli_csp_t]* @x264_cli_csps, i32 0, i32 %and.i40, i32 2, i32 %i.075.i
  %122 = load float, float* %arrayidx10.i, align 4, !tbaa !33
  %mul13.i = fmul fast float %122, %conv12.i43
  %conv14.i = fptosi float %mul13.i to i32
  %cmp1670.i = icmp sgt i32 %conv7.i, 0
  br i1 %cmp1670.i, label %for.cond20.preheader.lr.ph.i, label %for.cond.cleanup18.i

for.cond20.preheader.lr.ph.i:                     ; preds = %for.body.i46
  %cmp2168.i = icmp sgt i32 %conv14.i, 0
  %arrayidx29.i = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %output, i32 0, i32 0, i32 5, i32 %i.075.i
  %123 = load i32, i32* %arrayidx29.i, align 4, !tbaa !36
  %arrayidx31.i = getelementptr inbounds %struct.cli_image_t, %struct.cli_image_t* %img17, i32 0, i32 5, i32 %i.075.i
  %124 = load i32, i32* %arrayidx31.i, align 4, !tbaa !36
  %div.i47 = sdiv i32 %124, 2
  br i1 %cmp2168.i, label %for.cond20.preheader.us.preheader.i, label %for.cond.cleanup18.i

for.cond20.preheader.us.preheader.i:              ; preds = %for.cond20.preheader.lr.ph.i
  %arrayidx2.i = getelementptr inbounds %struct.cli_image_t, %struct.cli_image_t* %img17, i32 0, i32 4, i32 %i.075.i
  %125 = bitcast i8** %arrayidx2.i to i16**
  %126 = load i16*, i16** %125, align 4, !tbaa !26
  %arrayidx.i = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %output, i32 0, i32 0, i32 4, i32 %i.075.i
  %127 = load i8*, i8** %arrayidx.i, align 4, !tbaa !26
  br label %for.cond20.preheader.us.i

for.cond20.preheader.us.i:                        ; preds = %for.cond20.for.cond.cleanup23_crit_edge.us.i, %for.cond20.preheader.us.preheader.i
  %j.073.us.i = phi i32 [ %inc34.us.i, %for.cond20.for.cond.cleanup23_crit_edge.us.i ], [ 0, %for.cond20.preheader.us.preheader.i ]
  %dst.072.us.i = phi i16* [ %add.ptr32.us.i, %for.cond20.for.cond.cleanup23_crit_edge.us.i ], [ %126, %for.cond20.preheader.us.preheader.i ]
  %src.071.us.i = phi i8* [ %add.ptr.us.i, %for.cond20.for.cond.cleanup23_crit_edge.us.i ], [ %127, %for.cond20.preheader.us.preheader.i ]
  br label %for.body24.us.i

for.body24.us.i:                                  ; preds = %for.body24.us.i, %for.cond20.preheader.us.i
  %k.069.us.i = phi i32 [ 0, %for.cond20.preheader.us.i ], [ %inc.us.i, %for.body24.us.i ]
  %arrayidx25.us.i = getelementptr inbounds i8, i8* %src.071.us.i, i32 %k.069.us.i
  %128 = load i8, i8* %arrayidx25.us.i, align 1, !tbaa !39
  %conv27.us.i = zext i8 %128 to i16
  %arrayidx28.us.i = getelementptr inbounds i16, i16* %dst.072.us.i, i32 %k.069.us.i
  store i16 %conv27.us.i, i16* %arrayidx28.us.i, align 2, !tbaa !37
  %inc.us.i = add nuw nsw i32 %k.069.us.i, 1
  %exitcond.i = icmp eq i32 %inc.us.i, %conv14.i
  br i1 %exitcond.i, label %for.cond20.for.cond.cleanup23_crit_edge.us.i, label %for.body24.us.i

for.cond20.for.cond.cleanup23_crit_edge.us.i:     ; preds = %for.body24.us.i
  %add.ptr.us.i = getelementptr inbounds i8, i8* %src.071.us.i, i32 %123
  %add.ptr32.us.i = getelementptr inbounds i16, i16* %dst.072.us.i, i32 %div.i47
  %inc34.us.i = add nuw nsw i32 %j.073.us.i, 1
  %exitcond78.i = icmp eq i32 %inc34.us.i, %conv7.i
  br i1 %exitcond78.i, label %for.cond.cleanup18.i, label %for.cond20.preheader.us.i

for.cond.cleanup18.i:                             ; preds = %for.cond20.for.cond.cleanup23_crit_edge.us.i, %for.cond20.preheader.lr.ph.i, %for.body.i46
  %inc37.i = add nuw nsw i32 %i.075.i, 1
  %exitcond = icmp eq i32 %inc37.i, %118
  br i1 %exitcond, label %scale_image.exit, label %for.body.i46

scale_image.exit:                                 ; preds = %for.cond.cleanup18.i, %if.then15
  %129 = bitcast %struct.cli_pic_t* %output to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 8 dereferenceable(48) %129, i8* nonnull align 8 dereferenceable(48) %buffer16, i32 48, i1 false), !tbaa.struct !41
  br label %cleanup

cleanup:                                          ; preds = %dither_image.exit, %scale_image.exit, %if.else, %land.lhs.true10, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ 0, %land.lhs.true10 ], [ 0, %if.else ], [ 0, %scale_image.exit ], [ 0, %dither_image.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
define internal i32 @release_frame(i8* nocapture readonly %handle, %struct.cli_pic_t* %pic, i32 %frame) #0 {
entry:
  %release_frame = getelementptr inbounds i8, i8* %handle, i32 20
  %0 = bitcast i8* %release_frame to i32 (i8*, %struct.cli_pic_t*, i32)**
  %1 = load i32 (i8*, %struct.cli_pic_t*, i32)*, i32 (i8*, %struct.cli_pic_t*, i32)** %0, align 4, !tbaa !42
  %prev_hnd = bitcast i8* %handle to i8**
  %2 = load i8*, i8** %prev_hnd, align 8, !tbaa !27
  %call = tail call i32 %1(i8* %2, %struct.cli_pic_t* %pic, i32 %frame) #4
  ret i32 %call
}

; Function Attrs: nounwind
define internal void @free_filter(i8* %handle) #0 {
entry:
  %free = getelementptr inbounds i8, i8* %handle, i32 24
  %0 = bitcast i8* %free to void (i8*)**
  %1 = load void (i8*)*, void (i8*)** %0, align 4, !tbaa !43
  %prev_hnd = bitcast i8* %handle to i8**
  %2 = load i8*, i8** %prev_hnd, align 8, !tbaa !27
  tail call void %1(i8* %2) #4
  %buffer = getelementptr inbounds i8, i8* %handle, i32 40
  %3 = bitcast i8* %buffer to %struct.cli_pic_t*
  tail call void @x264_cli_pic_clean(%struct.cli_pic_t* nonnull %3) #4
  tail call void @x264_free(i8* %handle) #4
  ret void
}

declare dso_local i32 @x264_cli_csp_depth_factor(i32) local_unnamed_addr #1

declare dso_local i8** @x264_split_options(i8*, i8**) local_unnamed_addr #1

declare dso_local i8* @x264_get_option(i8*, i8**) local_unnamed_addr #1

declare dso_local i32 @x264_otoi(i8*, i32) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local void @free(i8* nocapture) local_unnamed_addr #2

declare dso_local void @x264_cli_log(i8*, i32, i8*, ...) local_unnamed_addr #1

declare dso_local i8* @x264_malloc(i64) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #3

declare dso_local i32 @x264_cli_pic_alloc(%struct.cli_pic_t*, i32, i32, i32) local_unnamed_addr #1

declare dso_local void @x264_free(i8*) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #3

declare dso_local void @x264_cli_pic_clean(%struct.cli_pic_t*) local_unnamed_addr #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 (http://10.18.30.194:8888/compiler/compiler10.git 713ef477716300a9b04a1522e3fce445623444dc)"}
!2 = !{!3, !4, i64 0}
!3 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !4, i64 36}
!8 = !{!"x264_param_t", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !9, i64 56, !4, i64 92, !4, i64 96, !4, i64 100, !4, i64 104, !4, i64 108, !4, i64 112, !4, i64 116, !4, i64 120, !4, i64 124, !4, i64 128, !4, i64 132, !4, i64 136, !4, i64 140, !4, i64 144, !4, i64 148, !4, i64 152, !4, i64 156, !4, i64 160, !4, i64 164, !4, i64 168, !4, i64 172, !4, i64 176, !10, i64 180, !5, i64 184, !5, i64 200, !5, i64 216, !5, i64 232, !5, i64 248, !5, i64 312, !5, i64 376, !5, i64 440, !10, i64 504, !10, i64 508, !4, i64 512, !4, i64 516, !10, i64 520, !11, i64 524, !13, i64 632, !14, i64 748, !4, i64 764, !15, i64 768, !17, i64 824, !4, i64 836, !4, i64 840, !4, i64 844, !4, i64 848, !4, i64 852, !4, i64 856, !4, i64 860, !4, i64 864, !4, i64 868, !4, i64 872, !4, i64 876, !4, i64 880, !4, i64 884, !4, i64 888, !4, i64 892, !4, i64 896, !4, i64 900, !10, i64 904, !10, i64 908, !4, i64 912, !4, i64 916, !4, i64 920, !4, i64 924, !4, i64 928, !10, i64 932, !10, i64 936, !10, i64 940}
!9 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !12, i64 72, !12, i64 76, !4, i64 80, !4, i64 84, !4, i64 88, !5, i64 92, !4, i64 100, !4, i64 104}
!12 = !{!"float", !5, i64 0}
!13 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !4, i64 36, !4, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !4, i64 56, !4, i64 60, !12, i64 64, !4, i64 68, !4, i64 72, !4, i64 76, !10, i64 80, !4, i64 84, !10, i64 88, !12, i64 92, !12, i64 96, !12, i64 100, !10, i64 104, !4, i64 108, !10, i64 112}
!14 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12}
!15 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !16, i64 40, !16, i64 48}
!16 = !{!"long long", !5, i64 0}
!17 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8}
!18 = !{!3, !4, i64 16}
!19 = !{!20, !10, i64 112}
!20 = !{!"", !10, i64 0, !21, i64 4, !4, i64 32, !4, i64 36, !22, i64 40, !10, i64 112}
!21 = !{!"cli_vid_filter_t", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24}
!22 = !{!"", !23, i64 0, !16, i64 48, !16, i64 56, !10, i64 64}
!23 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !5, i64 16, !5, i64 32}
!24 = !{!20, !4, i64 36}
!25 = !{!20, !4, i64 32}
!26 = !{!10, !10, i64 0}
!27 = !{!20, !10, i64 0}
!28 = !{i64 0, i64 4, !26, i64 4, i64 4, !26, i64 8, i64 4, !26, i64 12, i64 4, !26, i64 16, i64 4, !26, i64 20, i64 4, !26, i64 24, i64 4, !26}
!29 = !{!3, !4, i64 20}
!30 = !{!20, !10, i64 16}
!31 = !{!22, !4, i64 0}
!32 = !{!23, !4, i64 12}
!33 = !{!12, !12, i64 0}
!34 = !{!23, !4, i64 8}
!35 = !{!23, !4, i64 4}
!36 = !{!4, !4, i64 0}
!37 = !{!38, !38, i64 0}
!38 = !{!"short", !5, i64 0}
!39 = !{!5, !5, i64 0}
!40 = !{!23, !4, i64 0}
!41 = !{i64 0, i64 4, !36, i64 4, i64 4, !36, i64 8, i64 4, !36, i64 12, i64 4, !36, i64 16, i64 16, !39, i64 32, i64 16, !39}
!42 = !{!20, !10, i64 20}
!43 = !{!20, !10, i64 24}
