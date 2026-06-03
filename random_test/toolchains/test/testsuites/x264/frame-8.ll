; ModuleID = 'common/frame.c'
source_filename = "common/frame.c"
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

%struct.x264_frame = type { i8*, i32, [2 x i32], i32, i32, i32, i64, i64, i64, i64, float, i64, i64, i64, %struct.x264_param_t*, i32, i32, i64, i32, i32, i32, i32, i8, i8, i8, float, float, float, i32, i32, i32, [3 x i32], [3 x i32], [3 x i32], i32, i32, i32, [3 x i8*], [3 x i8*], [3 x [4 x i8*]], [3 x [4 x i8*]], [4 x i8*], i16*, [4 x i8*], [4 x i8*], i8*, [12 x i8], [16 x [3 x %struct.x264_weight_t]], [16 x i8*], i32, %struct.x264_frame*, i8*, i8*, [2 x [2 x i16]*], [2 x i16]*, [2 x [17 x [2 x i16]*]], i8*, i8*, [18 x [18 x i16*]], [2 x [17 x i32*]], [2 x i8*], [2 x i32], [2 x [16 x i32]], [2 x i16], [18 x [18 x i32]], [18 x [18 x i32]], i32, [18 x i32], [18 x [18 x i32*]], i32*, i32*, float*, float*, float*, float*, i32, i16*, i16*, i16*, i32, [18 x float], [3 x i32], [3 x i64], %struct.x264_hrd_t, [251 x i8], [251 x i32], [251 x double], i64, i64, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, %struct.x264_sei_t, i8*, i8*, void (i8*)*, [12 x i8] }
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
%struct.x264_hrd_t = type { double, double, double, double }
%struct.x264_sei_t = type { i32, %struct.x264_sei_payload_t*, void (i8*)* }
%struct.x264_sei_payload_t = type { i32, i32, i8* }
%struct.x264_picture_t = type { i32, i32, i32, i32, i64, i64, %struct.x264_param_t*, %struct.x264_image_t, %struct.x264_image_properties_t, %struct.x264_hrd_t, %struct.x264_sei_t, i8* }
%struct.x264_image_t = type { i32, i32, [4 x i32], [4 x i8*] }
%struct.x264_image_properties_t = type { float*, void (i8*)*, i8*, void (i8*)*, double, double, [3 x double], double }

@.str = private unnamed_addr constant [26 x i8] c"Invalid input colorspace\0A\00", align 1
@.str.1 = private unnamed_addr constant [79 x i8] c"This build of x264 requires 8-bit input. Rebuild to support high depth input.\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"v210 input is only compatible with bit-depth of 10 bits\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"forced frame type (%d) at %d is unknown\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"list[0]\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"common/frame.c\00", align 1
@__PRETTY_FUNCTION__.x264_8_frame_pop = private unnamed_addr constant [48 x i8] c"x264_frame_t *x264_8_frame_pop(x264_frame_t **)\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"frame\00", align 1
@__PRETTY_FUNCTION__.x264_8_frame_shift = private unnamed_addr constant [50 x i8] c"x264_frame_t *x264_8_frame_shift(x264_frame_t **)\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"frame->i_reference_count > 0\00", align 1
@__PRETTY_FUNCTION__.x264_8_frame_push_unused = private unnamed_addr constant [56 x i8] c"void x264_8_frame_push_unused(x264_t *, x264_frame_t *)\00", align 1
@__PRETTY_FUNCTION__.x264_8_frame_push_blank_unused = private unnamed_addr constant [62 x i8] c"void x264_8_frame_push_blank_unused(x264_t *, x264_frame_t *)\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"Input picture width (%d) is greater than stride (%d)\0A\00", align 1

; Function Attrs: nounwind
define hidden void @x264_8_frame_delete(%struct.x264_frame* %frame) local_unnamed_addr #0 {
entry:
  %b_duplicate = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 49
  %0 = load i32, i32* %b_duplicate, align 16, !tbaa !2
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end24

if.then:                                          ; preds = %entry
  %base = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 0
  %1 = load i8*, i8** %base, align 16, !tbaa !13
  tail call void @x264_free(i8* %1) #7
  %param = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 14
  %2 = load %struct.x264_param_t*, %struct.x264_param_t** %param, align 16, !tbaa !14
  %tobool1 = icmp eq %struct.x264_param_t* %2, null
  br i1 %tobool1, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %param_free = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %2, i32 0, i32 81
  %3 = load void (i8*)*, void (i8*)** %param_free, align 4, !tbaa !15
  %tobool3 = icmp eq void (i8*)* %3, null
  br i1 %tobool3, label %if.end, label %if.then4

if.then4:                                         ; preds = %land.lhs.true
  tail call void @x264_param_cleanup(%struct.x264_param_t* nonnull %2) #7
  %4 = load %struct.x264_param_t*, %struct.x264_param_t** %param, align 16, !tbaa !14
  %param_free7 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %4, i32 0, i32 81
  %5 = load void (i8*)*, void (i8*)** %param_free7, align 4, !tbaa !15
  %6 = bitcast %struct.x264_param_t* %4 to i8*
  tail call void %5(i8* %6) #7
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %if.then, %if.then4
  %mb_info_free = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 103
  %7 = load void (i8*)*, void (i8*)** %mb_info_free, align 16, !tbaa !23
  %tobool9 = icmp eq void (i8*)* %7, null
  br i1 %tobool9, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end
  %mb_info = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 102
  %8 = load i8*, i8** %mb_info, align 4, !tbaa !24
  tail call void %7(i8* %8) #7
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then10
  %sei_free = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 100, i32 2
  %9 = load void (i8*)*, void (i8*)** %sei_free, align 4, !tbaa !25
  %tobool13 = icmp eq void (i8*)* %9, null
  br i1 %tobool13, label %if.end24, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end12
  %num_payloads = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 100, i32 0
  %10 = load i32, i32* %num_payloads, align 4, !tbaa !26
  %cmp45 = icmp sgt i32 %10, 0
  %payloads = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 100, i32 1
  br i1 %cmp45, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.body, %for.cond.preheader
  %.lcssa = phi void (i8*)* [ %9, %for.cond.preheader ], [ %17, %for.body ]
  %11 = bitcast %struct.x264_sei_payload_t** %payloads to i8**
  %12 = load i8*, i8** %11, align 4, !tbaa !27
  tail call void %.lcssa(i8* %12) #7
  br label %if.end24

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %13 = phi void (i8*)* [ %17, %for.body ], [ %9, %for.cond.preheader ]
  %i.046 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %14 = load %struct.x264_sei_payload_t*, %struct.x264_sei_payload_t** %payloads, align 4, !tbaa !27
  %payload = getelementptr inbounds %struct.x264_sei_payload_t, %struct.x264_sei_payload_t* %14, i32 %i.046, i32 2
  %15 = load i8*, i8** %payload, align 4, !tbaa !28
  tail call void %13(i8* %15) #7
  %inc = add nuw nsw i32 %i.046, 1
  %16 = load i32, i32* %num_payloads, align 4, !tbaa !26
  %cmp = icmp slt i32 %inc, %16
  %17 = load void (i8*)*, void (i8*)** %sei_free, align 4, !tbaa !25
  br i1 %cmp, label %for.body, label %for.cond.cleanup

if.end24:                                         ; preds = %if.end12, %entry, %for.cond.cleanup
  %18 = bitcast %struct.x264_frame* %frame to i8*
  tail call void @x264_free(i8* %18) #7
  ret void
}

declare dso_local void @x264_free(i8*) local_unnamed_addr #1

declare dso_local void @x264_param_cleanup(%struct.x264_param_t*) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
define hidden i32 @x264_8_frame_copy_picture(%struct.x264_t* %h, %struct.x264_frame* %dst, %struct.x264_picture_t* readonly %src) local_unnamed_addr #0 {
entry:
  %i_csp1 = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %src, i32 0, i32 7, i32 0
  %0 = load i32, i32* %i_csp1, align 4, !tbaa !30
  %and = and i32 %0, 255
  %i_csp2 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %dst, i32 0, i32 29
  %1 = load i32, i32* %i_csp2, align 4, !tbaa !34
  %cmp.i = icmp eq i32 %and, 1
  br i1 %cmp.i, label %frame_internal_csp.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %and.off.i = add nsw i32 %and, -1
  %2 = icmp ult i32 %and.off.i, 5
  br i1 %2, label %frame_internal_csp.exit, label %if.end4.i

if.end4.i:                                        ; preds = %if.end.i
  %and.off24.i = add nsw i32 %and, -6
  %3 = icmp ult i32 %and.off24.i, 6
  br i1 %3, label %frame_internal_csp.exit, label %if.end9.i

if.end9.i:                                        ; preds = %if.end4.i
  %and.off25.i = add nsw i32 %and, -12
  %4 = icmp ult i32 %and.off25.i, 5
  %..i = select i1 %4, i32 12, i32 0
  br label %frame_internal_csp.exit

frame_internal_csp.exit:                          ; preds = %entry, %if.end.i, %if.end4.i, %if.end9.i
  %retval.0.i = phi i32 [ 1, %entry ], [ 4, %if.end.i ], [ 8, %if.end4.i ], [ %..i, %if.end9.i ]
  %cmp = icmp eq i32 %1, %retval.0.i
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %frame_internal_csp.exit
  tail call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* %h, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0)) #7
  br label %cleanup345

if.end:                                           ; preds = %frame_internal_csp.exit
  %and5 = and i32 %0, 8192
  %tobool = icmp eq i32 %and5, 0
  br i1 %tobool, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  tail call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* %h, i32 0, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i32 0, i32 0)) #7
  br label %cleanup345

if.end7:                                          ; preds = %if.end
  %cmp8 = icmp eq i32 %and, 11
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end7
  tail call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* %h, i32 0, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i32 0, i32 0)) #7
  br label %cleanup345

if.end10:                                         ; preds = %if.end7
  %i_type = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %src, i32 0, i32 0
  %5 = load i32, i32* %i_type, align 8, !tbaa !35
  %6 = icmp ugt i32 %5, 6
  br i1 %6, label %if.then14, label %if.end18

if.then14:                                        ; preds = %if.end10
  %i_input = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 59, i32 7
  %7 = load i32, i32* %i_input, align 4, !tbaa !36
  tail call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* %h, i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i32 0, i32 0), i32 %5, i32 %7) #7
  br label %if.end18

if.end18:                                         ; preds = %if.end10, %if.then14
  %.sink = phi i32 [ 0, %if.then14 ], [ %5, %if.end10 ]
  %8 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %dst, i32 0, i32 4
  store i32 %.sink, i32* %8, align 4
  %i_type20 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %dst, i32 0, i32 3
  store i32 %.sink, i32* %i_type20, align 16, !tbaa !56
  %i_qpplus1 = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %src, i32 0, i32 1
  %9 = load i32, i32* %i_qpplus1, align 4, !tbaa !57
  %i_qpplus121 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %dst, i32 0, i32 5
  store i32 %9, i32* %i_qpplus121, align 8, !tbaa !58
  %i_pts = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %src, i32 0, i32 4
  %10 = load i64, i64* %i_pts, align 8, !tbaa !59
  %i_reordered_pts = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %dst, i32 0, i32 8
  store i64 %10, i64* %i_reordered_pts, align 16, !tbaa !60
  %i_pts22 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %dst, i32 0, i32 6
  store i64 %10, i64* %i_pts22, align 16, !tbaa !61
  %param = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %src, i32 0, i32 6
  %11 = bitcast %struct.x264_param_t** %param to i32*
  %12 = load i32, i32* %11, align 8, !tbaa !62
  %param23 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %dst, i32 0, i32 14
  %13 = bitcast %struct.x264_param_t** %param23 to i32*
  store i32 %12, i32* %13, align 16, !tbaa !14
  %i_pic_struct = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %src, i32 0, i32 2
  %14 = load i32, i32* %i_pic_struct, align 8, !tbaa !63
  %i_pic_struct24 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %dst, i32 0, i32 20
  store i32 %14, i32* %i_pic_struct24, align 16, !tbaa !64
  %extra_sei = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %dst, i32 0, i32 100
  %extra_sei25 = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %src, i32 0, i32 10
  %15 = bitcast %struct.x264_sei_t* %extra_sei to i8*
  %16 = bitcast %struct.x264_sei_t* %extra_sei25 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(12) %15, i8* nonnull align 8 dereferenceable(12) %16, i32 12, i1 false), !tbaa.struct !65
  %opaque = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %src, i32 0, i32 11
  %17 = bitcast i8** %opaque to i32*
  %18 = load i32, i32* %17, align 4, !tbaa !68
  %opaque26 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %dst, i32 0, i32 101
  %19 = bitcast i8** %opaque26 to i32*
  store i32 %18, i32* %19, align 8, !tbaa !69
  %b_mb_info = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 51, i32 21
  %20 = load i32, i32* %b_mb_info, align 4, !tbaa !70
  %tobool28 = icmp eq i32 %20, 0
  br i1 %tobool28, label %cond.end.thread, label %cond.true34

cond.end.thread:                                  ; preds = %if.end18
  %mb_info29634 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %dst, i32 0, i32 102
  store i8* null, i8** %mb_info29634, align 4, !tbaa !24
  br label %cond.end37

cond.true34:                                      ; preds = %if.end18
  %mb_info = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %src, i32 0, i32 8, i32 2
  %21 = bitcast i8** %mb_info to i32*
  %22 = load i32, i32* %21, align 8, !tbaa !71
  %mb_info29 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %dst, i32 0, i32 102
  %23 = bitcast i8** %mb_info29 to i32*
  store i32 %22, i32* %23, align 4, !tbaa !24
  %mb_info_free = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %src, i32 0, i32 8, i32 3
  %24 = load void (i8*)*, void (i8*)** %mb_info_free, align 4, !tbaa !72
  br label %cond.end37

cond.end37:                                       ; preds = %cond.end.thread, %cond.true34
  %cond38 = phi void (i8*)* [ %24, %cond.true34 ], [ null, %cond.end.thread ]
  %mb_info_free39 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %dst, i32 0, i32 103
  store void (i8*)* %cond38, void (i8*)** %mb_info_free39, align 16, !tbaa !23
  %25 = add nsw i32 %and, -9
  %26 = icmp ult i32 %25, 2
  br i1 %26, label %if.then43, label %if.else86

if.then43:                                        ; preds = %cond.end37
  %cmp42 = icmp eq i32 %and, 10
  %conv = zext i1 %cmp42 to i32
  %plane_copy_deinterleave_yuyv = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 93, i32 13
  %27 = load void (i8*, i32, i8*, i32, i8*, i32, i32, i32)*, void (i8*, i32, i8*, i32, i8*, i32, i32, i32)** %plane_copy_deinterleave_yuyv, align 8, !tbaa !73
  %arrayidx = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %dst, i32 0, i32 37, i32 %conv
  %28 = load i8*, i8** %arrayidx, align 4, !tbaa !67
  %arrayidx45 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %dst, i32 0, i32 31, i32 %conv
  %29 = load i32, i32* %arrayidx45, align 4, !tbaa !66
  %xor = xor i32 %conv, 1
  %arrayidx47 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %dst, i32 0, i32 37, i32 %xor
  %30 = load i8*, i8** %arrayidx47, align 4, !tbaa !67
  %arrayidx50 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %dst, i32 0, i32 31, i32 %xor
  %31 = load i32, i32* %arrayidx50, align 4, !tbaa !66
  %arrayidx53 = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %src, i32 0, i32 7, i32 3, i32 0
  %32 = load i8*, i8** %arrayidx53, align 4, !tbaa !67
  %arrayidx56 = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %src, i32 0, i32 7, i32 2, i32 0
  %33 = load i32, i32* %arrayidx56, align 4, !tbaa !66
  %i_width = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 7
  %34 = load i32, i32* %i_width, align 4, !tbaa !74
  %i_height = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 8
  %35 = load i32, i32* %i_height, align 32, !tbaa !75
  tail call void %27(i8* %28, i32 %29, i8* %30, i32 %31, i8* %32, i32 %33, i32 %34, i32 %35) #7
  br label %cleanup345

if.else86:                                        ; preds = %cond.end37
  %cmp87 = icmp ugt i32 %and, 13
  br i1 %cmp87, label %if.then89, label %if.else139

if.then89:                                        ; preds = %if.else86
  %arrayidx92 = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %src, i32 0, i32 7, i32 2, i32 0
  %36 = load i32, i32* %arrayidx92, align 4, !tbaa !66
  %arrayidx96 = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %src, i32 0, i32 7, i32 3, i32 0
  %37 = load i8*, i8** %arrayidx96, align 4, !tbaa !67
  %38 = load i32, i32* %i_csp1, align 4, !tbaa !30
  %and100 = and i32 %38, 4096
  %tobool101 = icmp eq i32 %and100, 0
  %i_height138.phi.trans.insert = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 8
  %.pre = load i32, i32* %i_height138.phi.trans.insert, align 32, !tbaa !75
  %sub = add nsw i32 %.pre, -1
  %mul = mul nsw i32 %sub, %36
  %add.ptr = getelementptr inbounds i8, i8* %37, i32 %mul
  %sub108 = sub nsw i32 0, %36
  %pix.sroa.0.0.in = select i1 %tobool101, i8* %37, i8* %add.ptr
  %stride.sroa.0.0 = select i1 %tobool101, i32 %36, i32 %sub108
  %cmp111 = icmp eq i32 %and, 16
  %plane_copy_deinterleave_rgb = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 93, i32 14
  %39 = load void (i8*, i32, i8*, i32, i8*, i32, i8*, i32, i32, i32, i32)*, void (i8*, i32, i8*, i32, i8*, i32, i8*, i32, i32, i32, i32)** %plane_copy_deinterleave_rgb, align 4, !tbaa !76
  %add = select i1 %cmp111, i32 2, i32 1
  %arrayidx115 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %dst, i32 0, i32 37, i32 %add
  %40 = load i8*, i8** %arrayidx115, align 4, !tbaa !67
  %arrayidx118 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %dst, i32 0, i32 31, i32 %add
  %41 = load i32, i32* %arrayidx118, align 4, !tbaa !66
  %arrayidx120 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %dst, i32 0, i32 37, i32 0
  %42 = load i8*, i8** %arrayidx120, align 4, !tbaa !67
  %arrayidx122 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %dst, i32 0, i32 31, i32 0
  %43 = load i32, i32* %arrayidx122, align 4, !tbaa !66
  %sub124 = select i1 %cmp111, i32 1, i32 2
  %arrayidx125 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %dst, i32 0, i32 37, i32 %sub124
  %44 = load i8*, i8** %arrayidx125, align 4, !tbaa !67
  %arrayidx128 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %dst, i32 0, i32 31, i32 %sub124
  %45 = load i32, i32* %arrayidx128, align 4, !tbaa !66
  %cmp132 = icmp eq i32 %and, 15
  %cond134 = select i1 %cmp132, i32 4, i32 3
  %i_width136 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 7
  %46 = load i32, i32* %i_width136, align 4, !tbaa !74
  tail call void %39(i8* %40, i32 %41, i8* %42, i32 %43, i8* %44, i32 %45, i8* %pix.sroa.0.0.in, i32 %stride.sroa.0.0, i32 %cond134, i32 %46, i32 %.pre) #7
  br label %cleanup345

if.else139:                                       ; preds = %if.else86
  %chroma_v_shift = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 4
  %47 = load i32, i32* %chroma_v_shift, align 16, !tbaa !77
  %i_width.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 7
  %48 = load i32, i32* %i_width.i, align 4, !tbaa !74
  %i_height.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 8
  %arrayidx.i = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %src, i32 0, i32 7, i32 3, i32 0
  %49 = bitcast i8** %arrayidx.i to i32*
  %50 = load i32, i32* %49, align 4, !tbaa !67
  %arrayidx5.i = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %src, i32 0, i32 7, i32 2, i32 0
  %51 = load i32, i32* %arrayidx5.i, align 4, !tbaa !66
  %52 = load i32, i32* %i_csp1, align 4, !tbaa !30
  %and.i = and i32 %52, 4096
  %tobool.i = icmp eq i32 %and.i, 0
  %sub7.i = sub nsw i32 0, %51
  %stride.sroa.0.1 = select i1 %tobool.i, i32 %51, i32 %sub7.i
  %53 = icmp slt i32 %stride.sroa.0.1, 0
  %neg.i = sub nsw i32 0, %stride.sroa.0.1
  %54 = select i1 %53, i32 %neg.i, i32 %stride.sroa.0.1
  %cmp.i501 = icmp sgt i32 %48, %54
  br i1 %cmp.i501, label %get_plane_ptr.exit.thread, label %do.end

get_plane_ptr.exit.thread:                        ; preds = %if.else139
  tail call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i32 0, i32 0), i32 %48, i32 %stride.sroa.0.1) #7
  br label %cleanup345

do.end:                                           ; preds = %if.else139
  %55 = inttoptr i32 %50 to i8*
  %56 = load i32, i32* %i_height.i, align 32, !tbaa !75
  %sub.i = add nsw i32 %56, -1
  %mul.i = mul nsw i32 %sub.i, %51
  %add.ptr.i = getelementptr inbounds i8, i8* %55, i32 %mul.i
  %57 = ptrtoint i8* %add.ptr.i to i32
  %pix.sroa.0.1 = select i1 %tobool.i, i32 %50, i32 %57
  %plane_copy = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 93, i32 9
  %58 = load void (i8*, i32, i8*, i32, i32, i32)*, void (i8*, i32, i8*, i32, i32, i32)** %plane_copy, align 8, !tbaa !78
  %arrayidx149 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %dst, i32 0, i32 37, i32 0
  %59 = load i8*, i8** %arrayidx149, align 4, !tbaa !67
  %arrayidx151 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %dst, i32 0, i32 31, i32 0
  %60 = load i32, i32* %arrayidx151, align 4, !tbaa !66
  %61 = inttoptr i32 %pix.sroa.0.1 to i8*
  tail call void %58(i8* %59, i32 %60, i8* %61, i32 %stride.sroa.0.1, i32 %48, i32 %56) #7
  %trunc = trunc i32 %0 to i8
  switch i8 %trunc, label %if.else274 [
    i8 8, label %do.body165
    i8 4, label %do.body165
    i8 5, label %do.body192
    i8 7, label %if.then228
    i8 6, label %if.then228
    i8 3, label %if.then228
    i8 2, label %if.then228
  ]

do.body165:                                       ; preds = %do.end, %do.end
  %62 = load i32, i32* %i_width.i, align 4, !tbaa !74
  %arrayidx.i506 = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %src, i32 0, i32 7, i32 3, i32 1
  %63 = bitcast i8** %arrayidx.i506 to i32*
  %64 = load i32, i32* %63, align 4, !tbaa !67
  %arrayidx5.i507 = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %src, i32 0, i32 7, i32 2, i32 1
  %65 = load i32, i32* %arrayidx5.i507, align 4, !tbaa !66
  %66 = load i32, i32* %i_csp1, align 4, !tbaa !30
  %and.i509 = and i32 %66, 4096
  %tobool.i510 = icmp eq i32 %and.i509, 0
  %sub7.i514 = sub nsw i32 0, %65
  %stride.sroa.9.0 = select i1 %tobool.i510, i32 %65, i32 %sub7.i514
  %67 = icmp slt i32 %stride.sroa.9.0, 0
  %neg.i516 = sub nsw i32 0, %stride.sroa.9.0
  %68 = select i1 %67, i32 %neg.i516, i32 %stride.sroa.9.0
  %cmp.i517 = icmp sgt i32 %62, %68
  br i1 %cmp.i517, label %get_plane_ptr.exit521.thread, label %do.end174

get_plane_ptr.exit521.thread:                     ; preds = %do.body165
  tail call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i32 0, i32 0), i32 %62, i32 %stride.sroa.9.0) #7
  br label %cleanup345

do.end174:                                        ; preds = %do.body165
  %69 = inttoptr i32 %64 to i8*
  %70 = load i32, i32* %i_height.i, align 32, !tbaa !75
  %shr2.i = ashr i32 %70, %47
  %sub.i511 = add nsw i32 %shr2.i, -1
  %mul.i512 = mul nsw i32 %sub.i511, %65
  %add.ptr.i513 = getelementptr inbounds i8, i8* %69, i32 %mul.i512
  %71 = ptrtoint i8* %add.ptr.i513 to i32
  %pix.sroa.8.0 = select i1 %tobool.i510, i32 %64, i32 %71
  %72 = load void (i8*, i32, i8*, i32, i32, i32)*, void (i8*, i32, i8*, i32, i32, i32)** %plane_copy, align 8, !tbaa !78
  %arrayidx178 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %dst, i32 0, i32 37, i32 1
  %73 = load i8*, i8** %arrayidx178, align 4, !tbaa !67
  %arrayidx180 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %dst, i32 0, i32 31, i32 1
  %74 = load i32, i32* %arrayidx180, align 4, !tbaa !66
  %75 = inttoptr i32 %pix.sroa.8.0 to i8*
  tail call void %72(i8* %73, i32 %74, i8* %75, i32 %stride.sroa.9.0, i32 %62, i32 %shr2.i) #7
  br label %cleanup345

do.body192:                                       ; preds = %do.end
  %76 = load i32, i32* %i_width.i, align 4, !tbaa !74
  %arrayidx.i524 = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %src, i32 0, i32 7, i32 3, i32 1
  %77 = bitcast i8** %arrayidx.i524 to i32*
  %78 = load i32, i32* %77, align 4, !tbaa !67
  %arrayidx5.i525 = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %src, i32 0, i32 7, i32 2, i32 1
  %79 = load i32, i32* %arrayidx5.i525, align 4, !tbaa !66
  %80 = load i32, i32* %i_csp1, align 4, !tbaa !30
  %and.i527 = and i32 %80, 4096
  %tobool.i528 = icmp eq i32 %and.i527, 0
  %sub7.i533 = sub nsw i32 0, %79
  %stride.sroa.9.1 = select i1 %tobool.i528, i32 %79, i32 %sub7.i533
  %81 = icmp slt i32 %stride.sroa.9.1, 0
  %neg.i535 = sub nsw i32 0, %stride.sroa.9.1
  %82 = select i1 %81, i32 %neg.i535, i32 %stride.sroa.9.1
  %cmp.i536 = icmp sgt i32 %76, %82
  br i1 %cmp.i536, label %get_plane_ptr.exit540.thread, label %do.end201

get_plane_ptr.exit540.thread:                     ; preds = %do.body192
  tail call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i32 0, i32 0), i32 %76, i32 %stride.sroa.9.1) #7
  br label %cleanup345

do.end201:                                        ; preds = %do.body192
  %83 = inttoptr i32 %78 to i8*
  %84 = load i32, i32* %i_height.i, align 32, !tbaa !75
  %shr2.i529 = ashr i32 %84, %47
  %sub.i530 = add nsw i32 %shr2.i529, -1
  %mul.i531 = mul nsw i32 %sub.i530, %79
  %add.ptr.i532 = getelementptr inbounds i8, i8* %83, i32 %mul.i531
  %85 = ptrtoint i8* %add.ptr.i532 to i32
  %pix.sroa.8.1 = select i1 %tobool.i528, i32 %78, i32 %85
  %plane_copy_swap = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 93, i32 10
  %86 = load void (i8*, i32, i8*, i32, i32, i32)*, void (i8*, i32, i8*, i32, i32, i32)** %plane_copy_swap, align 4, !tbaa !79
  %arrayidx204 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %dst, i32 0, i32 37, i32 1
  %87 = load i8*, i8** %arrayidx204, align 4, !tbaa !67
  %arrayidx206 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %dst, i32 0, i32 31, i32 1
  %88 = load i32, i32* %arrayidx206, align 4, !tbaa !66
  %89 = inttoptr i32 %pix.sroa.8.1 to i8*
  %shr212 = ashr i32 %76, 1
  tail call void %86(i8* %87, i32 %88, i8* %89, i32 %stride.sroa.9.1, i32 %shr212, i32 %shr2.i529) #7
  br label %cleanup345

if.then228:                                       ; preds = %do.end, %do.end, %do.end, %do.end
  %90 = or i32 %and, 4
  %91 = icmp eq i32 %90, 7
  %cond237 = select i1 %91, i32 2, i32 1
  %92 = load i32, i32* %i_width.i, align 4, !tbaa !74
  %shr.i = ashr i32 %92, 1
  %93 = load i32, i32* %i_height.i, align 32, !tbaa !75
  %arrayidx.i543 = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %src, i32 0, i32 7, i32 3, i32 %cond237
  %94 = bitcast i8** %arrayidx.i543 to i32*
  %95 = load i32, i32* %94, align 4, !tbaa !67
  %arrayidx5.i544 = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %src, i32 0, i32 7, i32 2, i32 %cond237
  %96 = load i32, i32* %arrayidx5.i544, align 4, !tbaa !66
  %97 = load i32, i32* %i_csp1, align 4, !tbaa !30
  %and.i546 = and i32 %97, 4096
  %tobool.i547 = icmp eq i32 %and.i546, 0
  %98 = inttoptr i32 %95 to i8*
  %shr2.i548 = ashr i32 %93, %47
  %sub.i549 = add nsw i32 %shr2.i548, -1
  %mul.i550 = mul nsw i32 %96, %sub.i549
  %add.ptr.i551 = getelementptr inbounds i8, i8* %98, i32 %mul.i550
  %99 = ptrtoint i8* %add.ptr.i551 to i32
  %sub7.i552 = sub nsw i32 0, %96
  %pix.sroa.8.2 = select i1 %tobool.i547, i32 %95, i32 %99
  %stride.sroa.9.2 = select i1 %tobool.i547, i32 %96, i32 %sub7.i552
  %100 = icmp slt i32 %stride.sroa.9.2, 0
  %neg.i554 = sub nsw i32 0, %stride.sroa.9.2
  %101 = select i1 %100, i32 %neg.i554, i32 %stride.sroa.9.2
  %cmp.i555 = icmp sgt i32 %shr.i, %101
  br i1 %cmp.i555, label %get_plane_ptr.exit559.thread, label %do.body245

get_plane_ptr.exit559.thread:                     ; preds = %if.then228
  tail call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i32 0, i32 0), i32 %shr.i, i32 %stride.sroa.9.2) #7
  br label %cleanup345

do.body245:                                       ; preds = %if.then228
  %cond249 = select i1 %91, i32 1, i32 2
  %arrayidx.i563 = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %src, i32 0, i32 7, i32 3, i32 %cond249
  %102 = bitcast i8** %arrayidx.i563 to i32*
  %103 = load i32, i32* %102, align 4, !tbaa !67
  %arrayidx5.i564 = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %src, i32 0, i32 7, i32 2, i32 %cond249
  %104 = load i32, i32* %arrayidx5.i564, align 4, !tbaa !66
  %sub7.i572 = sub nsw i32 0, %104
  %stride.sroa.21.0 = select i1 %tobool.i547, i32 %104, i32 %sub7.i572
  %105 = icmp slt i32 %stride.sroa.21.0, 0
  %neg.i574 = sub nsw i32 0, %stride.sroa.21.0
  %106 = select i1 %105, i32 %neg.i574, i32 %stride.sroa.21.0
  %cmp.i575 = icmp sgt i32 %shr.i, %106
  br i1 %cmp.i575, label %get_plane_ptr.exit579.thread, label %cleanup

get_plane_ptr.exit579.thread:                     ; preds = %do.body245
  tail call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i32 0, i32 0), i32 %shr.i, i32 %stride.sroa.21.0) #7
  br label %cleanup345

cleanup:                                          ; preds = %do.body245
  %107 = inttoptr i32 %103 to i8*
  %mul.i570 = mul nsw i32 %sub.i549, %104
  %add.ptr.i571 = getelementptr inbounds i8, i8* %107, i32 %mul.i570
  %108 = ptrtoint i8* %add.ptr.i571 to i32
  %pix.sroa.20.0 = select i1 %tobool.i547, i32 %103, i32 %108
  %plane_copy_interleave = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 93, i32 11
  %109 = load void (i8*, i32, i8*, i32, i8*, i32, i32, i32)*, void (i8*, i32, i8*, i32, i8*, i32, i32, i32)** %plane_copy_interleave, align 16, !tbaa !80
  %arrayidx259 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %dst, i32 0, i32 37, i32 1
  %110 = load i8*, i8** %arrayidx259, align 4, !tbaa !67
  %arrayidx261 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %dst, i32 0, i32 31, i32 1
  %111 = load i32, i32* %arrayidx261, align 4, !tbaa !66
  %112 = inttoptr i32 %pix.sroa.8.2 to i8*
  %113 = inttoptr i32 %pix.sroa.20.0 to i8*
  tail call void %109(i8* %110, i32 %111, i8* %112, i32 %stride.sroa.9.2, i8* %113, i32 %stride.sroa.21.0, i32 %shr.i, i32 %shr2.i548) #7
  br label %cleanup345

if.else274:                                       ; preds = %do.end
  %cmp275 = icmp eq i32 %and, 12
  %114 = or i32 %and, 1
  %115 = icmp eq i32 %114, 13
  br i1 %115, label %do.body281, label %cleanup345

do.body281:                                       ; preds = %if.else274
  %cond286 = select i1 %cmp275, i32 1, i32 2
  %116 = load i32, i32* %i_width.i, align 4, !tbaa !74
  %117 = load i32, i32* %i_height.i, align 32, !tbaa !75
  %arrayidx.i582 = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %src, i32 0, i32 7, i32 3, i32 %cond286
  %118 = bitcast i8** %arrayidx.i582 to i32*
  %119 = load i32, i32* %118, align 4, !tbaa !67
  %arrayidx5.i583 = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %src, i32 0, i32 7, i32 2, i32 %cond286
  %120 = load i32, i32* %arrayidx5.i583, align 4, !tbaa !66
  %121 = load i32, i32* %i_csp1, align 4, !tbaa !30
  %and.i585 = and i32 %121, 4096
  %tobool.i586 = icmp eq i32 %and.i585, 0
  %122 = inttoptr i32 %119 to i8*
  %sub.i587 = add nsw i32 %117, -1
  %mul.i588 = mul nsw i32 %120, %sub.i587
  %add.ptr.i589 = getelementptr inbounds i8, i8* %122, i32 %mul.i588
  %123 = ptrtoint i8* %add.ptr.i589 to i32
  %sub7.i590 = sub nsw i32 0, %120
  %pix.sroa.8.3 = select i1 %tobool.i586, i32 %119, i32 %123
  %stride.sroa.9.3 = select i1 %tobool.i586, i32 %120, i32 %sub7.i590
  %124 = icmp slt i32 %stride.sroa.9.3, 0
  %neg.i592 = sub nsw i32 0, %stride.sroa.9.3
  %125 = select i1 %124, i32 %neg.i592, i32 %stride.sroa.9.3
  %cmp.i593 = icmp sgt i32 %116, %125
  br i1 %cmp.i593, label %get_plane_ptr.exit597.thread, label %do.body294

get_plane_ptr.exit597.thread:                     ; preds = %do.body281
  tail call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i32 0, i32 0), i32 %116, i32 %stride.sroa.9.3) #7
  br label %cleanup345

do.body294:                                       ; preds = %do.body281
  %cond299 = select i1 %cmp275, i32 2, i32 1
  %arrayidx.i600 = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %src, i32 0, i32 7, i32 3, i32 %cond299
  %126 = bitcast i8** %arrayidx.i600 to i32*
  %127 = load i32, i32* %126, align 4, !tbaa !67
  %arrayidx5.i601 = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %src, i32 0, i32 7, i32 2, i32 %cond299
  %128 = load i32, i32* %arrayidx5.i601, align 4, !tbaa !66
  %sub7.i608 = sub nsw i32 0, %128
  %stride.sroa.21.1 = select i1 %tobool.i586, i32 %128, i32 %sub7.i608
  %129 = icmp slt i32 %stride.sroa.21.1, 0
  %neg.i610 = sub nsw i32 0, %stride.sroa.21.1
  %130 = select i1 %129, i32 %neg.i610, i32 %stride.sroa.21.1
  %cmp.i611 = icmp sgt i32 %116, %130
  br i1 %cmp.i611, label %get_plane_ptr.exit615.thread, label %do.end306

get_plane_ptr.exit615.thread:                     ; preds = %do.body294
  tail call void (%struct.x264_t*, i32, i8*, ...) @x264_8_log(%struct.x264_t* nonnull %h, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i32 0, i32 0), i32 %116, i32 %stride.sroa.21.1) #7
  br label %cleanup345

do.end306:                                        ; preds = %do.body294
  %131 = inttoptr i32 %127 to i8*
  %mul.i606 = mul nsw i32 %sub.i587, %128
  %add.ptr.i607 = getelementptr inbounds i8, i8* %131, i32 %mul.i606
  %132 = ptrtoint i8* %add.ptr.i607 to i32
  %pix.sroa.20.1 = select i1 %tobool.i586, i32 %127, i32 %132
  %133 = load void (i8*, i32, i8*, i32, i32, i32)*, void (i8*, i32, i8*, i32, i32, i32)** %plane_copy, align 8, !tbaa !78
  %arrayidx310 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %dst, i32 0, i32 37, i32 1
  %134 = load i8*, i8** %arrayidx310, align 4, !tbaa !67
  %arrayidx312 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %dst, i32 0, i32 31, i32 1
  %135 = load i32, i32* %arrayidx312, align 4, !tbaa !66
  %136 = inttoptr i32 %pix.sroa.8.3 to i8*
  tail call void %133(i8* %134, i32 %135, i8* %136, i32 %stride.sroa.9.3, i32 %116, i32 %117) #7
  %137 = load void (i8*, i32, i8*, i32, i32, i32)*, void (i8*, i32, i8*, i32, i32, i32)** %plane_copy, align 8, !tbaa !78
  %arrayidx323 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %dst, i32 0, i32 37, i32 2
  %138 = load i8*, i8** %arrayidx323, align 4, !tbaa !67
  %arrayidx325 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %dst, i32 0, i32 31, i32 2
  %139 = load i32, i32* %arrayidx325, align 4, !tbaa !66
  %140 = inttoptr i32 %pix.sroa.20.1 to i8*
  %141 = load i32, i32* %i_width.i, align 4, !tbaa !74
  %142 = load i32, i32* %i_height.i, align 32, !tbaa !75
  tail call void %137(i8* %138, i32 %139, i8* %140, i32 %stride.sroa.21.1, i32 %141, i32 %142) #7
  br label %cleanup345

cleanup345:                                       ; preds = %get_plane_ptr.exit579.thread, %get_plane_ptr.exit559.thread, %get_plane_ptr.exit615.thread, %get_plane_ptr.exit597.thread, %get_plane_ptr.exit540.thread, %get_plane_ptr.exit521.thread, %get_plane_ptr.exit.thread, %cleanup, %do.end201, %do.end306, %if.else274, %do.end174, %if.then89, %if.then43, %if.then9, %if.then6, %if.then
  %retval.4 = phi i32 [ -1, %if.then ], [ -1, %if.then6 ], [ -1, %if.then9 ], [ 0, %cleanup ], [ 0, %do.end201 ], [ 0, %do.end306 ], [ 0, %if.else274 ], [ 0, %do.end174 ], [ 0, %if.then89 ], [ 0, %if.then43 ], [ -1, %get_plane_ptr.exit.thread ], [ -1, %get_plane_ptr.exit521.thread ], [ -1, %get_plane_ptr.exit540.thread ], [ -1, %get_plane_ptr.exit597.thread ], [ -1, %get_plane_ptr.exit615.thread ], [ -1, %get_plane_ptr.exit559.thread ], [ -1, %get_plane_ptr.exit579.thread ]
  ret i32 %retval.4
}

declare dso_local void @x264_8_log(%struct.x264_t*, i32, i8*, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: nounwind
define hidden void @x264_8_frame_expand_border(%struct.x264_t* nocapture readonly %h, %struct.x264_frame* nocapture readonly %frame, i32 %mb_y) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %mb_y, 0
  %i_mb_height = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 1
  %0 = load i32, i32* %i_mb_height, align 4, !tbaa !81
  %sub = add nsw i32 %0, -1
  %cmp1 = icmp eq i32 %sub, %mb_y
  %i_threadslice_start = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 7
  %1 = load i32, i32* %i_threadslice_start, align 4, !tbaa !82
  %cmp3 = icmp eq i32 %1, %mb_y
  %i_plane = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 30
  %2 = load i32, i32* %i_plane, align 16, !tbaa !83
  %cmp887 = icmp sgt i32 %2, 0
  br i1 %cmp887, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %i_threadslice_end = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 8
  %3 = load i32, i32* %i_threadslice_end, align 8, !tbaa !84
  %sub5 = add nsw i32 %3, -1
  %cmp6 = icmp ne i32 %sub5, %mb_y
  %chroma_h_shift = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 3
  %chroma_v_shift = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 4
  %i_mb_width = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 0
  %or.cond = or i1 %cmp3, %cmp6
  %mul33 = shl nsw i32 %mb_y, 4
  %mul35 = select i1 %cmp3, i32 0, i32 4
  %sub36 = sub nsw i32 %mul33, %mul35
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %plane_expand_border.exit
  %i.088 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %plane_expand_border.exit ]
  %tobool10 = icmp eq i32 %i.088, 0
  br i1 %tobool10, label %land.end17, label %land.rhs14

land.rhs14:                                       ; preds = %for.body
  %4 = load i32, i32* %chroma_h_shift, align 4, !tbaa !85
  %tobool12 = icmp ne i32 %4, 0
  %land.ext83 = zext i1 %tobool12 to i32
  %5 = load i32, i32* %chroma_v_shift, align 16, !tbaa !77
  %tobool16 = icmp ne i32 %5, 0
  br label %land.end17

land.end17:                                       ; preds = %for.body, %land.rhs14
  %land.ext84 = phi i32 [ %land.ext83, %land.rhs14 ], [ 0, %for.body ]
  %6 = phi i1 [ %tobool16, %land.rhs14 ], [ false, %for.body ]
  %land.ext18 = zext i1 %6 to i32
  %arrayidx = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 31, i32 %i.088
  %7 = load i32, i32* %arrayidx, align 4, !tbaa !66
  %8 = load i32, i32* %i_mb_width, align 64, !tbaa !86
  %mul = shl nsw i32 %8, 4
  br i1 %cmp1, label %cond.true, label %cond.end

cond.true:                                        ; preds = %land.end17
  %9 = load i32, i32* %i_mb_height, align 4, !tbaa !81
  %sub23 = sub nsw i32 %9, %mb_y
  %mul24 = shl nsw i32 %sub23, 4
  br label %cond.end

cond.end:                                         ; preds = %land.end17, %cond.true
  %cond = phi i32 [ %mul24, %cond.true ], [ 16, %land.end17 ]
  %shr25 = ashr i32 %cond, %land.ext18
  %shr26 = lshr i32 32, %land.ext18
  %shr30 = lshr i32 4, %land.ext18
  %add31 = select i1 %or.cond, i32 0, i32 %shr30
  %height.0 = or i32 %shr25, %add31
  %arrayidx37 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 37, i32 %i.088
  %10 = load i8*, i8** %arrayidx37, align 4, !tbaa !67
  %mul38 = mul nsw i32 %7, %sub36
  %shr39 = ashr i32 %mul38, %land.ext18
  %add.ptr = getelementptr inbounds i8, i8* %10, i32 %shr39
  %cmp171.i = icmp sgt i32 %height.0, 0
  br i1 %cmp171.i, label %for.body.lr.ph.i, label %for.cond.cleanup.i

for.body.lr.ph.i:                                 ; preds = %cond.end
  %add.ptr.i = getelementptr inbounds i8, i8* %add.ptr, i32 -32
  %cmp.i.i = icmp eq i32 %land.ext84, 0
  %cmp.not.i.i = xor i1 %cmp.i.i, true
  %add.ptr5.i = getelementptr inbounds i8, i8* %add.ptr, i32 %mul
  %11 = xor i32 %land.ext84, -1
  %sub9.i = add i32 %mul, %11
  %add.ptr10.i = getelementptr inbounds i8, i8* %add.ptr, i32 %sub9.i
  br i1 %cmp.i.i, label %for.body.us.i, label %for.body.i.us

for.body.i.us:                                    ; preds = %for.body.lr.ph.i, %pixel_memset.exit166.i.us
  %y.0172.i.us = phi i32 [ %inc.i.us, %pixel_memset.exit166.i.us ], [ 0, %for.body.lr.ph.i ]
  %mul.i.us = mul nsw i32 %y.0172.i.us, %7
  %add.ptr1.i.us = getelementptr inbounds i8, i8* %add.ptr.i, i32 %mul.i.us
  %add.ptr4.i.us = getelementptr inbounds i8, i8* %add.ptr, i32 %mul.i.us
  %12 = load i8, i8* %add.ptr4.i.us, align 1, !tbaa !87
  %i.i.i.us = bitcast i8* %add.ptr4.i.us to i16*
  %13 = load i16, i16* %i.i.i.us, align 2, !tbaa !87
  %conv2.i.i.us = zext i16 %13 to i32
  %add7.i.i.us = mul nuw i32 %conv2.i.i.us, 65537
  %14 = ptrtoint i8* %add.ptr1.i.us to i32
  %and.i.i.us = and i32 %14, 3
  %tobool.i.i.us = icmp eq i32 %and.i.i.us, 0
  br i1 %tobool.i.i.us, label %for.body.i.i.us.preheader, label %if.then17.i.i.us

if.then17.i.i.us:                                 ; preds = %for.body.i.us
  %and21.i.i.us = and i32 %14, 1
  %tobool22.i.i.us = icmp eq i32 %and21.i.i.us, 0
  %or.cond101.i.i.us = or i1 %tobool22.i.i.us, %cmp.not.i.i
  br i1 %or.cond101.i.i.us, label %if.end.i.i.us, label %if.then23.i.i.us

if.then23.i.i.us:                                 ; preds = %if.then17.i.i.us
  store i8 %12, i8* %add.ptr1.i.us, align 1, !tbaa !87
  br label %if.end.i.i.us

if.end.i.i.us:                                    ; preds = %if.then23.i.i.us, %if.then17.i.i.us
  %i12.0.i.i.us = phi i32 [ 1, %if.then23.i.i.us ], [ 0, %if.then17.i.i.us ]
  %and25.i.i.us = and i32 %14, 2
  %tobool26.i.i.us = icmp eq i32 %and25.i.i.us, 0
  br i1 %tobool26.i.i.us, label %for.body.i.i.us.preheader, label %if.end33.i.i.us

if.end33.i.i.us:                                  ; preds = %if.end.i.i.us
  %add.ptr.i.i.us = getelementptr inbounds i8, i8* %add.ptr1.i.us, i32 %i12.0.i.i.us
  %i29.i.i.us = bitcast i8* %add.ptr.i.i.us to i16*
  store i16 %13, i16* %i29.i.i.us, align 2, !tbaa !87
  %add30.i.i.us = or i32 %i12.0.i.i.us, 2
  br label %for.body.i.i.us.preheader

for.body.i.i.us.preheader:                        ; preds = %if.end33.i.i.us, %for.body.i.us, %if.end.i.i.us
  %i12.2122.i.i.us.ph = phi i32 [ %i12.0.i.i.us, %if.end.i.i.us ], [ 0, %for.body.i.us ], [ %add30.i.i.us, %if.end33.i.i.us ]
  br label %for.body.i.i.us

for.body.i.i.us:                                  ; preds = %for.body.i.i.us.preheader, %for.body.i.i.us
  %i12.2122.i.i.us = phi i32 [ %add38.i.i.us, %for.body.i.i.us ], [ %i12.2122.i.i.us.ph, %for.body.i.i.us.preheader ]
  %add.ptr36.i.i.us = getelementptr inbounds i8, i8* %add.ptr1.i.us, i32 %i12.2122.i.i.us
  %i37.i.i.us = bitcast i8* %add.ptr36.i.i.us to i32*
  store i32 %add7.i.i.us, i32* %i37.i.i.us, align 4, !tbaa !87
  %add38.i.i.us = add nuw nsw i32 %i12.2122.i.i.us, 4
  %cmp34.i.i.us = icmp ult i32 %i12.2122.i.i.us, 25
  br i1 %cmp34.i.i.us, label %for.body.i.i.us, label %if.then41.i.i.us

if.then41.i.i.us:                                 ; preds = %for.body.i.i.us
  %cmp43.i.i.us = icmp slt i32 %i12.2122.i.i.us, 27
  br i1 %cmp43.i.i.us, label %if.then45.i.i.us, label %if.end50.i.i.us

if.then45.i.i.us:                                 ; preds = %if.then41.i.i.us
  %add.ptr47.i.i.us = getelementptr inbounds i8, i8* %add.ptr1.i.us, i32 %add38.i.i.us
  %i48.i.i.us = bitcast i8* %add.ptr47.i.i.us to i16*
  store i16 %13, i16* %i48.i.i.us, align 2, !tbaa !87
  %add49.i.i.us = add nuw nsw i32 %i12.2122.i.i.us, 6
  br label %if.end50.i.i.us

if.end50.i.i.us:                                  ; preds = %if.then45.i.i.us, %if.then41.i.i.us
  %i12.3.i.i.us = phi i32 [ %add49.i.i.us, %if.then45.i.i.us ], [ %add38.i.i.us, %if.then41.i.i.us ]
  %cmp54.i.i.us = icmp eq i32 %i12.3.i.i.us, 32
  %or.cond103.i.i.us = or i1 %cmp54.i.i.us, %cmp.not.i.i
  br i1 %or.cond103.i.i.us, label %pixel_memset.exit.i.us, label %if.then56.i.i.us

if.then56.i.i.us:                                 ; preds = %if.end50.i.i.us
  %arrayidx58.i.i.us = getelementptr inbounds i8, i8* %add.ptr1.i.us, i32 %i12.3.i.i.us
  store i8 %12, i8* %arrayidx58.i.i.us, align 1, !tbaa !87
  br label %pixel_memset.exit.i.us

pixel_memset.exit.i.us:                           ; preds = %if.then56.i.i.us, %if.end50.i.i.us
  %add.ptr7.i.us = getelementptr inbounds i8, i8* %add.ptr5.i, i32 %mul.i.us
  %add.ptr12.i.us = getelementptr inbounds i8, i8* %add.ptr10.i, i32 %mul.i.us
  %15 = load i8, i8* %add.ptr12.i.us, align 1, !tbaa !87
  %i.i107.i.us = bitcast i8* %add.ptr12.i.us to i16*
  %16 = load i16, i16* %i.i107.i.us, align 2, !tbaa !87
  %conv2.i108.i.us = zext i16 %16 to i32
  %add7.i115.i.us = mul nuw i32 %conv2.i108.i.us, 65537
  %17 = ptrtoint i8* %add.ptr7.i.us to i32
  %and.i117.i.us = and i32 %17, 3
  %tobool.i118.i.us = icmp eq i32 %and.i117.i.us, 0
  br i1 %tobool.i118.i.us, label %for.body.i148.i.us.preheader, label %if.then17.i124.i.us

if.then17.i124.i.us:                              ; preds = %pixel_memset.exit.i.us
  %and21.i121.i.us = and i32 %17, 1
  %tobool22.i122.i.us = icmp eq i32 %and21.i121.i.us, 0
  %or.cond101.i123.i.us = or i1 %tobool22.i122.i.us, %cmp.not.i.i
  br i1 %or.cond101.i123.i.us, label %if.end.i129.i.us, label %if.then23.i125.i.us

if.then23.i125.i.us:                              ; preds = %if.then17.i124.i.us
  store i8 %15, i8* %add.ptr7.i.us, align 1, !tbaa !87
  br label %if.end.i129.i.us

if.end.i129.i.us:                                 ; preds = %if.then23.i125.i.us, %if.then17.i124.i.us
  %i12.0.i126.i.us = phi i32 [ 1, %if.then23.i125.i.us ], [ 0, %if.then17.i124.i.us ]
  %and25.i127.i.us = and i32 %17, 2
  %tobool26.i128.i.us = icmp eq i32 %and25.i127.i.us, 0
  br i1 %tobool26.i128.i.us, label %for.body.i148.i.us.preheader, label %if.end33.i142.i.us

if.end33.i142.i.us:                               ; preds = %if.end.i129.i.us
  %add.ptr.i131.i.us = getelementptr inbounds i8, i8* %add.ptr7.i.us, i32 %i12.0.i126.i.us
  %i29.i132.i.us = bitcast i8* %add.ptr.i131.i.us to i16*
  store i16 %16, i16* %i29.i132.i.us, align 2, !tbaa !87
  %add30.i133.i.us = or i32 %i12.0.i126.i.us, 2
  br label %for.body.i148.i.us.preheader

for.body.i148.i.us.preheader:                     ; preds = %if.end33.i142.i.us, %pixel_memset.exit.i.us, %if.end.i129.i.us
  %i12.2122.i143.i.us.ph = phi i32 [ %i12.0.i126.i.us, %if.end.i129.i.us ], [ 0, %pixel_memset.exit.i.us ], [ %add30.i133.i.us, %if.end33.i142.i.us ]
  br label %for.body.i148.i.us

for.body.i148.i.us:                               ; preds = %for.body.i148.i.us.preheader, %for.body.i148.i.us
  %i12.2122.i143.i.us = phi i32 [ %add38.i146.i.us, %for.body.i148.i.us ], [ %i12.2122.i143.i.us.ph, %for.body.i148.i.us.preheader ]
  %add.ptr36.i144.i.us = getelementptr inbounds i8, i8* %add.ptr7.i.us, i32 %i12.2122.i143.i.us
  %i37.i145.i.us = bitcast i8* %add.ptr36.i144.i.us to i32*
  store i32 %add7.i115.i.us, i32* %i37.i145.i.us, align 4, !tbaa !87
  %add38.i146.i.us = add nuw nsw i32 %i12.2122.i143.i.us, 4
  %cmp34.i147.i.us = icmp ult i32 %i12.2122.i143.i.us, 25
  br i1 %cmp34.i147.i.us, label %for.body.i148.i.us, label %if.then41.i153.i.us

if.then41.i153.i.us:                              ; preds = %for.body.i148.i.us
  %cmp43.i152.i.us = icmp slt i32 %i12.2122.i143.i.us, 27
  br i1 %cmp43.i152.i.us, label %if.then45.i158.i.us, label %if.end50.i163.i.us

if.then45.i158.i.us:                              ; preds = %if.then41.i153.i.us
  %add.ptr47.i155.i.us = getelementptr inbounds i8, i8* %add.ptr7.i.us, i32 %add38.i146.i.us
  %i48.i156.i.us = bitcast i8* %add.ptr47.i155.i.us to i16*
  store i16 %16, i16* %i48.i156.i.us, align 2, !tbaa !87
  %add49.i157.i.us = add nuw nsw i32 %i12.2122.i143.i.us, 6
  br label %if.end50.i163.i.us

if.end50.i163.i.us:                               ; preds = %if.then45.i158.i.us, %if.then41.i153.i.us
  %i12.3.i159.i.us = phi i32 [ %add49.i157.i.us, %if.then45.i158.i.us ], [ %add38.i146.i.us, %if.then41.i153.i.us ]
  %cmp54.i161.i.us = icmp eq i32 %i12.3.i159.i.us, 32
  %or.cond103.i162.i.us = or i1 %cmp54.i161.i.us, %cmp.not.i.i
  br i1 %or.cond103.i162.i.us, label %pixel_memset.exit166.i.us, label %if.then56.i165.i.us

if.then56.i165.i.us:                              ; preds = %if.end50.i163.i.us
  %arrayidx58.i164.i.us = getelementptr inbounds i8, i8* %add.ptr7.i.us, i32 %i12.3.i159.i.us
  store i8 %15, i8* %arrayidx58.i164.i.us, align 1, !tbaa !87
  br label %pixel_memset.exit166.i.us

pixel_memset.exit166.i.us:                        ; preds = %if.then56.i165.i.us, %if.end50.i163.i.us
  %inc.i.us = add nuw nsw i32 %y.0172.i.us, 1
  %exitcond177.i.us = icmp eq i32 %inc.i.us, %height.0
  br i1 %exitcond177.i.us, label %for.cond.cleanup.i, label %for.body.i.us

for.body.us.i:                                    ; preds = %for.body.lr.ph.i, %pixel_memset.exit166.us.i
  %y.0172.us.i = phi i32 [ %inc.us.i, %pixel_memset.exit166.us.i ], [ 0, %for.body.lr.ph.i ]
  %mul.us.i = mul nsw i32 %y.0172.us.i, %7
  %add.ptr1.us.i = getelementptr inbounds i8, i8* %add.ptr.i, i32 %mul.us.i
  %add.ptr4.us.i = getelementptr inbounds i8, i8* %add.ptr, i32 %mul.us.i
  %18 = load i8, i8* %add.ptr4.us.i, align 1, !tbaa !87
  %conv.i.us.i = zext i8 %18 to i32
  %add.i.us.i = mul nuw nsw i32 %conv.i.us.i, 257
  %add7.i.us.i = mul nuw i32 %conv.i.us.i, 16843009
  %19 = ptrtoint i8* %add.ptr1.us.i to i32
  %and.i.us.i = and i32 %19, 3
  %tobool.i.us.i = icmp eq i32 %and.i.us.i, 0
  br i1 %tobool.i.us.i, label %for.body.i.us.i.preheader, label %if.then17.i.us.i

if.then17.i.us.i:                                 ; preds = %for.body.us.i
  %and21.i.us.i = and i32 %19, 1
  %tobool22.i.us.i = icmp eq i32 %and21.i.us.i, 0
  br i1 %tobool22.i.us.i, label %if.end.i.us.i, label %if.then23.i.us.i

if.then23.i.us.i:                                 ; preds = %if.then17.i.us.i
  store i8 %18, i8* %add.ptr1.us.i, align 1, !tbaa !87
  br label %if.end.i.us.i

if.end.i.us.i:                                    ; preds = %if.then23.i.us.i, %if.then17.i.us.i
  %i12.0.i.us.i = phi i32 [ 1, %if.then23.i.us.i ], [ 0, %if.then17.i.us.i ]
  %and25.i.us.i = and i32 %19, 2
  %tobool26.i.us.i = icmp eq i32 %and25.i.us.i, 0
  br i1 %tobool26.i.us.i, label %for.body.i.us.i.preheader, label %if.end33.i.us.i

if.end33.i.us.i:                                  ; preds = %if.end.i.us.i
  %conv28.i.us.i = trunc i32 %add.i.us.i to i16
  %add.ptr.i.us.i = getelementptr inbounds i8, i8* %add.ptr1.us.i, i32 %i12.0.i.us.i
  %i29.i.us.i = bitcast i8* %add.ptr.i.us.i to i16*
  store i16 %conv28.i.us.i, i16* %i29.i.us.i, align 2, !tbaa !87
  %add30.i.us.i = or i32 %i12.0.i.us.i, 2
  br label %for.body.i.us.i.preheader

for.body.i.us.i.preheader:                        ; preds = %if.end33.i.us.i, %for.body.us.i, %if.end.i.us.i
  %i12.2122.i.us.i.ph = phi i32 [ %i12.0.i.us.i, %if.end.i.us.i ], [ 0, %for.body.us.i ], [ %add30.i.us.i, %if.end33.i.us.i ]
  br label %for.body.i.us.i

for.body.i.us.i:                                  ; preds = %for.body.i.us.i.preheader, %for.body.i.us.i
  %i12.2122.i.us.i = phi i32 [ %add38.i.us.i, %for.body.i.us.i ], [ %i12.2122.i.us.i.ph, %for.body.i.us.i.preheader ]
  %add.ptr36.i.us.i = getelementptr inbounds i8, i8* %add.ptr1.us.i, i32 %i12.2122.i.us.i
  %i37.i.us.i = bitcast i8* %add.ptr36.i.us.i to i32*
  store i32 %add7.i.us.i, i32* %i37.i.us.i, align 4, !tbaa !87
  %add38.i.us.i = add nuw nsw i32 %i12.2122.i.us.i, 4
  %cmp34.i.us.i = icmp ult i32 %i12.2122.i.us.i, 25
  br i1 %cmp34.i.us.i, label %for.body.i.us.i, label %if.then41.i.us.i

if.then41.i.us.i:                                 ; preds = %for.body.i.us.i
  %cmp43.i.us.i = icmp slt i32 %i12.2122.i.us.i, 27
  br i1 %cmp43.i.us.i, label %if.then45.i.us.i, label %if.end50.i.us.i

if.then45.i.us.i:                                 ; preds = %if.then41.i.us.i
  %conv46.i.us.i = trunc i32 %add.i.us.i to i16
  %add.ptr47.i.us.i = getelementptr inbounds i8, i8* %add.ptr1.us.i, i32 %add38.i.us.i
  %i48.i.us.i = bitcast i8* %add.ptr47.i.us.i to i16*
  store i16 %conv46.i.us.i, i16* %i48.i.us.i, align 2, !tbaa !87
  %add49.i.us.i = add nuw nsw i32 %i12.2122.i.us.i, 6
  br label %if.end50.i.us.i

if.end50.i.us.i:                                  ; preds = %if.then45.i.us.i, %if.then41.i.us.i
  %i12.3.i.us.i = phi i32 [ %add49.i.us.i, %if.then45.i.us.i ], [ %add38.i.us.i, %if.then41.i.us.i ]
  %cmp54.i.us.i = icmp eq i32 %i12.3.i.us.i, 32
  br i1 %cmp54.i.us.i, label %pixel_memset.exit.us.i, label %if.then56.i.us.i

if.then56.i.us.i:                                 ; preds = %if.end50.i.us.i
  %arrayidx58.i.us.i = getelementptr inbounds i8, i8* %add.ptr1.us.i, i32 %i12.3.i.us.i
  store i8 %18, i8* %arrayidx58.i.us.i, align 1, !tbaa !87
  br label %pixel_memset.exit.us.i

pixel_memset.exit.us.i:                           ; preds = %if.then56.i.us.i, %if.end50.i.us.i
  %add.ptr7.us.i = getelementptr inbounds i8, i8* %add.ptr5.i, i32 %mul.us.i
  %add.ptr12.us.i = getelementptr inbounds i8, i8* %add.ptr10.i, i32 %mul.us.i
  %20 = load i8, i8* %add.ptr12.us.i, align 1, !tbaa !87
  %conv.i104.us.i = zext i8 %20 to i32
  %add.i105.us.i = mul nuw nsw i32 %conv.i104.us.i, 257
  %add7.i115.us.i = mul nuw i32 %conv.i104.us.i, 16843009
  %21 = ptrtoint i8* %add.ptr7.us.i to i32
  %and.i117.us.i = and i32 %21, 3
  %tobool.i118.us.i = icmp eq i32 %and.i117.us.i, 0
  br i1 %tobool.i118.us.i, label %for.body.i148.us.i.preheader, label %if.then17.i124.us.i

if.then17.i124.us.i:                              ; preds = %pixel_memset.exit.us.i
  %and21.i121.us.i = and i32 %21, 1
  %tobool22.i122.us.i = icmp eq i32 %and21.i121.us.i, 0
  br i1 %tobool22.i122.us.i, label %if.end.i129.us.i, label %if.then23.i125.us.i

if.then23.i125.us.i:                              ; preds = %if.then17.i124.us.i
  store i8 %20, i8* %add.ptr7.us.i, align 1, !tbaa !87
  br label %if.end.i129.us.i

if.end.i129.us.i:                                 ; preds = %if.then23.i125.us.i, %if.then17.i124.us.i
  %i12.0.i126.us.i = phi i32 [ 1, %if.then23.i125.us.i ], [ 0, %if.then17.i124.us.i ]
  %and25.i127.us.i = and i32 %21, 2
  %tobool26.i128.us.i = icmp eq i32 %and25.i127.us.i, 0
  br i1 %tobool26.i128.us.i, label %for.body.i148.us.i.preheader, label %if.end33.i142.us.i

if.end33.i142.us.i:                               ; preds = %if.end.i129.us.i
  %conv28.i130.us.i = trunc i32 %add.i105.us.i to i16
  %add.ptr.i131.us.i = getelementptr inbounds i8, i8* %add.ptr7.us.i, i32 %i12.0.i126.us.i
  %i29.i132.us.i = bitcast i8* %add.ptr.i131.us.i to i16*
  store i16 %conv28.i130.us.i, i16* %i29.i132.us.i, align 2, !tbaa !87
  %add30.i133.us.i = or i32 %i12.0.i126.us.i, 2
  br label %for.body.i148.us.i.preheader

for.body.i148.us.i.preheader:                     ; preds = %if.end33.i142.us.i, %pixel_memset.exit.us.i, %if.end.i129.us.i
  %i12.2122.i143.us.i.ph = phi i32 [ %i12.0.i126.us.i, %if.end.i129.us.i ], [ 0, %pixel_memset.exit.us.i ], [ %add30.i133.us.i, %if.end33.i142.us.i ]
  br label %for.body.i148.us.i

for.body.i148.us.i:                               ; preds = %for.body.i148.us.i.preheader, %for.body.i148.us.i
  %i12.2122.i143.us.i = phi i32 [ %add38.i146.us.i, %for.body.i148.us.i ], [ %i12.2122.i143.us.i.ph, %for.body.i148.us.i.preheader ]
  %add.ptr36.i144.us.i = getelementptr inbounds i8, i8* %add.ptr7.us.i, i32 %i12.2122.i143.us.i
  %i37.i145.us.i = bitcast i8* %add.ptr36.i144.us.i to i32*
  store i32 %add7.i115.us.i, i32* %i37.i145.us.i, align 4, !tbaa !87
  %add38.i146.us.i = add nuw nsw i32 %i12.2122.i143.us.i, 4
  %cmp34.i147.us.i = icmp ult i32 %i12.2122.i143.us.i, 25
  br i1 %cmp34.i147.us.i, label %for.body.i148.us.i, label %if.then41.i153.us.i

if.then41.i153.us.i:                              ; preds = %for.body.i148.us.i
  %cmp43.i152.us.i = icmp slt i32 %i12.2122.i143.us.i, 27
  br i1 %cmp43.i152.us.i, label %if.then45.i158.us.i, label %if.end50.i163.us.i

if.then45.i158.us.i:                              ; preds = %if.then41.i153.us.i
  %conv46.i154.us.i = trunc i32 %add.i105.us.i to i16
  %add.ptr47.i155.us.i = getelementptr inbounds i8, i8* %add.ptr7.us.i, i32 %add38.i146.us.i
  %i48.i156.us.i = bitcast i8* %add.ptr47.i155.us.i to i16*
  store i16 %conv46.i154.us.i, i16* %i48.i156.us.i, align 2, !tbaa !87
  %add49.i157.us.i = add nuw nsw i32 %i12.2122.i143.us.i, 6
  br label %if.end50.i163.us.i

if.end50.i163.us.i:                               ; preds = %if.then45.i158.us.i, %if.then41.i153.us.i
  %i12.3.i159.us.i = phi i32 [ %add49.i157.us.i, %if.then45.i158.us.i ], [ %add38.i146.us.i, %if.then41.i153.us.i ]
  %cmp54.i161.us.i = icmp eq i32 %i12.3.i159.us.i, 32
  br i1 %cmp54.i161.us.i, label %pixel_memset.exit166.us.i, label %if.then56.i165.us.i

if.then56.i165.us.i:                              ; preds = %if.end50.i163.us.i
  %arrayidx58.i164.us.i = getelementptr inbounds i8, i8* %add.ptr7.us.i, i32 %i12.3.i159.us.i
  store i8 %20, i8* %arrayidx58.i164.us.i, align 1, !tbaa !87
  br label %pixel_memset.exit166.us.i

pixel_memset.exit166.us.i:                        ; preds = %if.then56.i165.us.i, %if.end50.i163.us.i
  %inc.us.i = add nuw nsw i32 %y.0172.us.i, 1
  %exitcond176.i = icmp eq i32 %inc.us.i, %height.0
  br i1 %exitcond176.i, label %for.cond.cleanup.i, label %for.body.us.i

for.cond.cleanup.i:                               ; preds = %pixel_memset.exit166.i.us, %pixel_memset.exit166.us.i, %cond.end
  %cmp17169.i = icmp sgt i32 %shr26, 0
  %or.cond.i = and i1 %cmp, %cmp17169.i
  br i1 %or.cond.i, label %for.body19.lr.ph.i, label %if.end.i

for.body19.lr.ph.i:                               ; preds = %for.cond.cleanup.i
  %add.ptr21.i = getelementptr inbounds i8, i8* %add.ptr, i32 -32
  %add.i = add nsw i32 %mul, 64
  br label %for.body19.i

for.body19.i:                                     ; preds = %for.body19.i, %for.body19.lr.ph.i
  %y15.0170.i = phi i32 [ 0, %for.body19.lr.ph.i ], [ %inc33.i, %for.body19.i ]
  %sub23.i = xor i32 %y15.0170.i, -1
  %mul24.i = mul nsw i32 %7, %sub23.i
  %add.ptr25.i = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul24.i
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr25.i, i8* nonnull align 1 %add.ptr21.i, i32 %add.i, i1 false) #7
  %inc33.i = add nuw nsw i32 %y15.0170.i, 1
  %exitcond175.i = icmp eq i32 %inc33.i, %shr26
  br i1 %exitcond175.i, label %if.end.i, label %for.body19.i

if.end.i:                                         ; preds = %for.body19.i, %for.cond.cleanup.i
  %or.cond173.i = and i1 %cmp1, %cmp17169.i
  br i1 %or.cond173.i, label %for.body41.lr.ph.i, label %plane_expand_border.exit

for.body41.lr.ph.i:                               ; preds = %if.end.i
  %add.ptr43.i = getelementptr inbounds i8, i8* %add.ptr, i32 -32
  %sub49.i = add nsw i32 %height.0, -1
  %mul50.i = mul nsw i32 %sub49.i, %7
  %add.ptr51.i = getelementptr inbounds i8, i8* %add.ptr43.i, i32 %mul50.i
  %add53.i = add nsw i32 %mul, 64
  br label %for.body41.i

for.body41.i:                                     ; preds = %for.body41.i, %for.body41.lr.ph.i
  %y37.0168.i = phi i32 [ 0, %for.body41.lr.ph.i ], [ %inc56.i, %for.body41.i ]
  %add44.i = add nsw i32 %y37.0168.i, %height.0
  %mul45.i = mul nsw i32 %add44.i, %7
  %add.ptr46.i = getelementptr inbounds i8, i8* %add.ptr43.i, i32 %mul45.i
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46.i, i8* nonnull align 1 %add.ptr51.i, i32 %add53.i, i1 false) #7
  %inc56.i = add nuw nsw i32 %y37.0168.i, 1
  %exitcond.i = icmp eq i32 %inc56.i, %shr26
  br i1 %exitcond.i, label %plane_expand_border.exit, label %for.body41.i

plane_expand_border.exit:                         ; preds = %for.body41.i, %if.end.i
  %inc = add nuw nsw i32 %i.088, 1
  %22 = load i32, i32* %i_plane, align 16, !tbaa !83
  %cmp8 = icmp slt i32 %inc, %22
  br i1 %cmp8, label %for.body, label %cleanup

cleanup:                                          ; preds = %plane_expand_border.exit, %entry
  ret void
}

; Function Attrs: nounwind
define hidden void @x264_8_frame_expand_border_filtered(%struct.x264_t* nocapture readonly %h, %struct.x264_frame* nocapture readonly %frame, i32 %mb_y, i32 %b_end) local_unnamed_addr #0 {
entry:
  %tobool = icmp eq i32 %mb_y, 0
  %i_mb_width = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 0
  %0 = load i32, i32* %i_mb_width, align 64, !tbaa !86
  %mul = shl nsw i32 %0, 4
  %add = or i32 %mul, 8
  %tobool1 = icmp eq i32 %b_end, 0
  br i1 %tobool1, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %i_mb_height = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 1
  %1 = load i32, i32* %i_mb_height, align 4, !tbaa !81
  %sub = sub nsw i32 %1, %mb_y
  %mul3 = shl i32 %sub, 4
  %add4 = add nsw i32 %mul3, 16
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %add4, %cond.true ], [ 16, %entry ]
  %i_chroma_format_idc = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 22
  %mul13 = shl i32 %mb_y, 4
  %sub14 = add nsw i32 %mul13, -8
  %cmp171.i = icmp sgt i32 %cond, 0
  %sub9.i = add nsw i32 %add, -1
  %add.i = add nsw i32 %add, 56
  %sub49.i = add nsw i32 %cond, -1
  %add44.i.1 = add nsw i32 %cond, 1
  %add44.i.2 = add nsw i32 %cond, 2
  %add44.i.3 = add nsw i32 %cond, 3
  %add44.i.4 = add nsw i32 %cond, 4
  %add44.i.5 = add nsw i32 %cond, 5
  %add44.i.6 = add nsw i32 %cond, 6
  %add44.i.7 = add nsw i32 %cond, 7
  %add44.i.8 = add nsw i32 %cond, 8
  %add44.i.9 = add nsw i32 %cond, 9
  %add44.i.10 = add nsw i32 %cond, 10
  %add44.i.11 = add nsw i32 %cond, 11
  %add44.i.12 = add nsw i32 %cond, 12
  %add44.i.13 = add nsw i32 %cond, 13
  %add44.i.14 = add nsw i32 %cond, 14
  %add44.i.15 = add nsw i32 %cond, 15
  %add44.i.16 = add nsw i32 %cond, 16
  %add44.i.17 = add nsw i32 %cond, 17
  %add44.i.18 = add nsw i32 %cond, 18
  %add44.i.19 = add nsw i32 %cond, 19
  %add44.i.20 = add nsw i32 %cond, 20
  %add44.i.21 = add nsw i32 %cond, 21
  %add44.i.22 = add nsw i32 %cond, 22
  %add44.i.23 = add nsw i32 %cond, 23
  br label %for.cond7.preheader

for.cond7.preheader:                              ; preds = %cond.end, %for.cond.cleanup9
  %p.044 = phi i32 [ 0, %cond.end ], [ %inc18, %for.cond.cleanup9 ]
  %arrayidx = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 31, i32 %p.044
  br label %for.body10

for.cond.cleanup:                                 ; preds = %for.cond.cleanup9
  ret void

for.cond.cleanup9:                                ; preds = %plane_expand_border.exit
  %inc18 = add nuw nsw i32 %p.044, 1
  %2 = load i32, i32* %i_chroma_format_idc, align 8, !tbaa !88
  %cmp = icmp eq i32 %2, 3
  %cond5 = select i1 %cmp, i32 3, i32 1
  %cmp6 = icmp ult i32 %inc18, %cond5
  br i1 %cmp6, label %for.cond7.preheader, label %for.cond.cleanup

for.body10:                                       ; preds = %plane_expand_border.exit, %for.cond7.preheader
  %i.041 = phi i32 [ 1, %for.cond7.preheader ], [ %inc, %plane_expand_border.exit ]
  %3 = load i32, i32* %arrayidx, align 4, !tbaa !66
  %arrayidx12 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 39, i32 %p.044, i32 %i.041
  %4 = load i8*, i8** %arrayidx12, align 4, !tbaa !67
  %mul15 = mul nsw i32 %3, %sub14
  %add.ptr = getelementptr inbounds i8, i8* %4, i32 -4
  %add.ptr16 = getelementptr inbounds i8, i8* %add.ptr, i32 %mul15
  br i1 %cmp171.i, label %for.body.lr.ph.i, label %for.cond.cleanup.i

for.body.lr.ph.i:                                 ; preds = %for.body10
  %add.ptr.i = getelementptr inbounds i8, i8* %add.ptr16, i32 -28
  %add.ptr5.i = getelementptr inbounds i8, i8* %add.ptr16, i32 %add
  %add.ptr10.i = getelementptr inbounds i8, i8* %add.ptr16, i32 %sub9.i
  br label %for.body.us.i

for.body.us.i:                                    ; preds = %pixel_memset.exit166.us.i, %for.body.lr.ph.i
  %y.0172.us.i = phi i32 [ %inc.us.i, %pixel_memset.exit166.us.i ], [ 0, %for.body.lr.ph.i ]
  %mul.us.i = mul nsw i32 %y.0172.us.i, %3
  %add.ptr1.us.i = getelementptr inbounds i8, i8* %add.ptr.i, i32 %mul.us.i
  %add.ptr4.us.i = getelementptr inbounds i8, i8* %add.ptr16, i32 %mul.us.i
  %5 = load i8, i8* %add.ptr4.us.i, align 1, !tbaa !87
  %conv.i.us.i = zext i8 %5 to i32
  %add.i.us.i = mul nuw nsw i32 %conv.i.us.i, 257
  %add7.i.us.i = mul nuw i32 %conv.i.us.i, 16843009
  %6 = ptrtoint i8* %add.ptr1.us.i to i32
  %and.i.us.i = and i32 %6, 3
  %tobool.i.us.i = icmp eq i32 %and.i.us.i, 0
  br i1 %tobool.i.us.i, label %for.body.i.us.i.preheader, label %if.then17.i.us.i

if.then17.i.us.i:                                 ; preds = %for.body.us.i
  %and21.i.us.i = and i32 %6, 1
  %tobool22.i.us.i = icmp eq i32 %and21.i.us.i, 0
  br i1 %tobool22.i.us.i, label %if.end.i.us.i, label %if.then23.i.us.i

if.then23.i.us.i:                                 ; preds = %if.then17.i.us.i
  store i8 %5, i8* %add.ptr1.us.i, align 1, !tbaa !87
  br label %if.end.i.us.i

if.end.i.us.i:                                    ; preds = %if.then23.i.us.i, %if.then17.i.us.i
  %i12.0.i.us.i = phi i32 [ 1, %if.then23.i.us.i ], [ 0, %if.then17.i.us.i ]
  %and25.i.us.i = and i32 %6, 2
  %tobool26.i.us.i = icmp eq i32 %and25.i.us.i, 0
  br i1 %tobool26.i.us.i, label %for.body.i.us.i.preheader, label %if.end33.i.us.i

if.end33.i.us.i:                                  ; preds = %if.end.i.us.i
  %conv28.i.us.i = trunc i32 %add.i.us.i to i16
  %add.ptr.i.us.i = getelementptr inbounds i8, i8* %add.ptr1.us.i, i32 %i12.0.i.us.i
  %i29.i.us.i = bitcast i8* %add.ptr.i.us.i to i16*
  store i16 %conv28.i.us.i, i16* %i29.i.us.i, align 2, !tbaa !87
  %add30.i.us.i = or i32 %i12.0.i.us.i, 2
  br label %for.body.i.us.i.preheader

for.body.i.us.i.preheader:                        ; preds = %if.end33.i.us.i, %for.body.us.i, %if.end.i.us.i
  %i12.2122.i.us.i.ph = phi i32 [ %i12.0.i.us.i, %if.end.i.us.i ], [ 0, %for.body.us.i ], [ %add30.i.us.i, %if.end33.i.us.i ]
  br label %for.body.i.us.i

for.body.i.us.i:                                  ; preds = %for.body.i.us.i.preheader, %for.body.i.us.i
  %i12.2122.i.us.i = phi i32 [ %add38.i.us.i, %for.body.i.us.i ], [ %i12.2122.i.us.i.ph, %for.body.i.us.i.preheader ]
  %add.ptr36.i.us.i = getelementptr inbounds i8, i8* %add.ptr1.us.i, i32 %i12.2122.i.us.i
  %i37.i.us.i = bitcast i8* %add.ptr36.i.us.i to i32*
  store i32 %add7.i.us.i, i32* %i37.i.us.i, align 4, !tbaa !87
  %add38.i.us.i = add nuw nsw i32 %i12.2122.i.us.i, 4
  %cmp34.i.us.i = icmp ult i32 %i12.2122.i.us.i, 21
  br i1 %cmp34.i.us.i, label %for.body.i.us.i, label %if.then41.i.us.i

if.then41.i.us.i:                                 ; preds = %for.body.i.us.i
  %cmp43.i.us.i = icmp slt i32 %i12.2122.i.us.i, 23
  br i1 %cmp43.i.us.i, label %if.then45.i.us.i, label %if.end50.i.us.i

if.then45.i.us.i:                                 ; preds = %if.then41.i.us.i
  %conv46.i.us.i = trunc i32 %add.i.us.i to i16
  %add.ptr47.i.us.i = getelementptr inbounds i8, i8* %add.ptr1.us.i, i32 %add38.i.us.i
  %i48.i.us.i = bitcast i8* %add.ptr47.i.us.i to i16*
  store i16 %conv46.i.us.i, i16* %i48.i.us.i, align 2, !tbaa !87
  %add49.i.us.i = add nuw nsw i32 %i12.2122.i.us.i, 6
  br label %if.end50.i.us.i

if.end50.i.us.i:                                  ; preds = %if.then45.i.us.i, %if.then41.i.us.i
  %i12.3.i.us.i = phi i32 [ %add49.i.us.i, %if.then45.i.us.i ], [ %add38.i.us.i, %if.then41.i.us.i ]
  %cmp54.i.us.i = icmp eq i32 %i12.3.i.us.i, 28
  br i1 %cmp54.i.us.i, label %pixel_memset.exit.us.i, label %if.then56.i.us.i

if.then56.i.us.i:                                 ; preds = %if.end50.i.us.i
  %arrayidx58.i.us.i = getelementptr inbounds i8, i8* %add.ptr1.us.i, i32 %i12.3.i.us.i
  store i8 %5, i8* %arrayidx58.i.us.i, align 1, !tbaa !87
  br label %pixel_memset.exit.us.i

pixel_memset.exit.us.i:                           ; preds = %if.then56.i.us.i, %if.end50.i.us.i
  %add.ptr7.us.i = getelementptr inbounds i8, i8* %add.ptr5.i, i32 %mul.us.i
  %add.ptr12.us.i = getelementptr inbounds i8, i8* %add.ptr10.i, i32 %mul.us.i
  %7 = load i8, i8* %add.ptr12.us.i, align 1, !tbaa !87
  %conv.i104.us.i = zext i8 %7 to i32
  %add.i105.us.i = mul nuw nsw i32 %conv.i104.us.i, 257
  %add7.i115.us.i = mul nuw i32 %conv.i104.us.i, 16843009
  %8 = ptrtoint i8* %add.ptr7.us.i to i32
  %and.i117.us.i = and i32 %8, 3
  %tobool.i118.us.i = icmp eq i32 %and.i117.us.i, 0
  br i1 %tobool.i118.us.i, label %for.body.i148.us.i.preheader, label %if.then17.i124.us.i

if.then17.i124.us.i:                              ; preds = %pixel_memset.exit.us.i
  %and21.i121.us.i = and i32 %8, 1
  %tobool22.i122.us.i = icmp eq i32 %and21.i121.us.i, 0
  br i1 %tobool22.i122.us.i, label %if.end.i129.us.i, label %if.then23.i125.us.i

if.then23.i125.us.i:                              ; preds = %if.then17.i124.us.i
  store i8 %7, i8* %add.ptr7.us.i, align 1, !tbaa !87
  br label %if.end.i129.us.i

if.end.i129.us.i:                                 ; preds = %if.then23.i125.us.i, %if.then17.i124.us.i
  %i12.0.i126.us.i = phi i32 [ 1, %if.then23.i125.us.i ], [ 0, %if.then17.i124.us.i ]
  %and25.i127.us.i = and i32 %8, 2
  %tobool26.i128.us.i = icmp eq i32 %and25.i127.us.i, 0
  br i1 %tobool26.i128.us.i, label %for.body.i148.us.i.preheader, label %if.end33.i142.us.i

if.end33.i142.us.i:                               ; preds = %if.end.i129.us.i
  %conv28.i130.us.i = trunc i32 %add.i105.us.i to i16
  %add.ptr.i131.us.i = getelementptr inbounds i8, i8* %add.ptr7.us.i, i32 %i12.0.i126.us.i
  %i29.i132.us.i = bitcast i8* %add.ptr.i131.us.i to i16*
  store i16 %conv28.i130.us.i, i16* %i29.i132.us.i, align 2, !tbaa !87
  %add30.i133.us.i = or i32 %i12.0.i126.us.i, 2
  br label %for.body.i148.us.i.preheader

for.body.i148.us.i.preheader:                     ; preds = %if.end33.i142.us.i, %pixel_memset.exit.us.i, %if.end.i129.us.i
  %i12.2122.i143.us.i.ph = phi i32 [ %i12.0.i126.us.i, %if.end.i129.us.i ], [ 0, %pixel_memset.exit.us.i ], [ %add30.i133.us.i, %if.end33.i142.us.i ]
  br label %for.body.i148.us.i

for.body.i148.us.i:                               ; preds = %for.body.i148.us.i.preheader, %for.body.i148.us.i
  %i12.2122.i143.us.i = phi i32 [ %add38.i146.us.i, %for.body.i148.us.i ], [ %i12.2122.i143.us.i.ph, %for.body.i148.us.i.preheader ]
  %add.ptr36.i144.us.i = getelementptr inbounds i8, i8* %add.ptr7.us.i, i32 %i12.2122.i143.us.i
  %i37.i145.us.i = bitcast i8* %add.ptr36.i144.us.i to i32*
  store i32 %add7.i115.us.i, i32* %i37.i145.us.i, align 4, !tbaa !87
  %add38.i146.us.i = add nuw nsw i32 %i12.2122.i143.us.i, 4
  %cmp34.i147.us.i = icmp ult i32 %i12.2122.i143.us.i, 21
  br i1 %cmp34.i147.us.i, label %for.body.i148.us.i, label %if.then41.i153.us.i

if.then41.i153.us.i:                              ; preds = %for.body.i148.us.i
  %cmp43.i152.us.i = icmp slt i32 %i12.2122.i143.us.i, 23
  br i1 %cmp43.i152.us.i, label %if.then45.i158.us.i, label %if.end50.i163.us.i

if.then45.i158.us.i:                              ; preds = %if.then41.i153.us.i
  %conv46.i154.us.i = trunc i32 %add.i105.us.i to i16
  %add.ptr47.i155.us.i = getelementptr inbounds i8, i8* %add.ptr7.us.i, i32 %add38.i146.us.i
  %i48.i156.us.i = bitcast i8* %add.ptr47.i155.us.i to i16*
  store i16 %conv46.i154.us.i, i16* %i48.i156.us.i, align 2, !tbaa !87
  %add49.i157.us.i = add nuw nsw i32 %i12.2122.i143.us.i, 6
  br label %if.end50.i163.us.i

if.end50.i163.us.i:                               ; preds = %if.then45.i158.us.i, %if.then41.i153.us.i
  %i12.3.i159.us.i = phi i32 [ %add49.i157.us.i, %if.then45.i158.us.i ], [ %add38.i146.us.i, %if.then41.i153.us.i ]
  %cmp54.i161.us.i = icmp eq i32 %i12.3.i159.us.i, 28
  br i1 %cmp54.i161.us.i, label %pixel_memset.exit166.us.i, label %if.then56.i165.us.i

if.then56.i165.us.i:                              ; preds = %if.end50.i163.us.i
  %arrayidx58.i164.us.i = getelementptr inbounds i8, i8* %add.ptr7.us.i, i32 %i12.3.i159.us.i
  store i8 %7, i8* %arrayidx58.i164.us.i, align 1, !tbaa !87
  br label %pixel_memset.exit166.us.i

pixel_memset.exit166.us.i:                        ; preds = %if.then56.i165.us.i, %if.end50.i163.us.i
  %inc.us.i = add nuw nsw i32 %y.0172.us.i, 1
  %exitcond176.i = icmp eq i32 %inc.us.i, %cond
  br i1 %exitcond176.i, label %for.cond.cleanup.i, label %for.body.us.i

for.cond.cleanup.i:                               ; preds = %pixel_memset.exit166.us.i, %for.body10
  br i1 %tobool, label %for.body19.lr.ph.i, label %if.end.i

for.body19.lr.ph.i:                               ; preds = %for.cond.cleanup.i
  %add.ptr21.i = getelementptr inbounds i8, i8* %add.ptr16, i32 -28
  %mul24.i = sub nsw i32 0, %3
  %add.ptr25.i = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul24.i
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr25.i, i8* nonnull align 1 %add.ptr21.i, i32 %add.i, i1 false) #7
  %mul24.i.1 = mul nsw i32 %3, -2
  %add.ptr25.i.1 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul24.i.1
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr25.i.1, i8* nonnull align 1 %add.ptr21.i, i32 %add.i, i1 false) #7
  %mul24.i.2 = mul nsw i32 %3, -3
  %add.ptr25.i.2 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul24.i.2
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr25.i.2, i8* nonnull align 1 %add.ptr21.i, i32 %add.i, i1 false) #7
  %mul24.i.3 = mul nsw i32 %3, -4
  %add.ptr25.i.3 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul24.i.3
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr25.i.3, i8* nonnull align 1 %add.ptr21.i, i32 %add.i, i1 false) #7
  %mul24.i.4 = mul nsw i32 %3, -5
  %add.ptr25.i.4 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul24.i.4
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr25.i.4, i8* nonnull align 1 %add.ptr21.i, i32 %add.i, i1 false) #7
  %mul24.i.5 = mul nsw i32 %3, -6
  %add.ptr25.i.5 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul24.i.5
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr25.i.5, i8* nonnull align 1 %add.ptr21.i, i32 %add.i, i1 false) #7
  %mul24.i.6 = mul nsw i32 %3, -7
  %add.ptr25.i.6 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul24.i.6
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr25.i.6, i8* nonnull align 1 %add.ptr21.i, i32 %add.i, i1 false) #7
  %mul24.i.7 = mul nsw i32 %3, -8
  %add.ptr25.i.7 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul24.i.7
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr25.i.7, i8* nonnull align 1 %add.ptr21.i, i32 %add.i, i1 false) #7
  %mul24.i.8 = mul nsw i32 %3, -9
  %add.ptr25.i.8 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul24.i.8
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr25.i.8, i8* nonnull align 1 %add.ptr21.i, i32 %add.i, i1 false) #7
  %mul24.i.9 = mul nsw i32 %3, -10
  %add.ptr25.i.9 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul24.i.9
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr25.i.9, i8* nonnull align 1 %add.ptr21.i, i32 %add.i, i1 false) #7
  %mul24.i.10 = mul nsw i32 %3, -11
  %add.ptr25.i.10 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul24.i.10
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr25.i.10, i8* nonnull align 1 %add.ptr21.i, i32 %add.i, i1 false) #7
  %mul24.i.11 = mul nsw i32 %3, -12
  %add.ptr25.i.11 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul24.i.11
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr25.i.11, i8* nonnull align 1 %add.ptr21.i, i32 %add.i, i1 false) #7
  %mul24.i.12 = mul nsw i32 %3, -13
  %add.ptr25.i.12 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul24.i.12
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr25.i.12, i8* nonnull align 1 %add.ptr21.i, i32 %add.i, i1 false) #7
  %mul24.i.13 = mul nsw i32 %3, -14
  %add.ptr25.i.13 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul24.i.13
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr25.i.13, i8* nonnull align 1 %add.ptr21.i, i32 %add.i, i1 false) #7
  %mul24.i.14 = mul nsw i32 %3, -15
  %add.ptr25.i.14 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul24.i.14
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr25.i.14, i8* nonnull align 1 %add.ptr21.i, i32 %add.i, i1 false) #7
  %mul24.i.15 = mul nsw i32 %3, -16
  %add.ptr25.i.15 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul24.i.15
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr25.i.15, i8* nonnull align 1 %add.ptr21.i, i32 %add.i, i1 false) #7
  %mul24.i.16 = mul nsw i32 %3, -17
  %add.ptr25.i.16 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul24.i.16
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr25.i.16, i8* nonnull align 1 %add.ptr21.i, i32 %add.i, i1 false) #7
  %mul24.i.17 = mul nsw i32 %3, -18
  %add.ptr25.i.17 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul24.i.17
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr25.i.17, i8* nonnull align 1 %add.ptr21.i, i32 %add.i, i1 false) #7
  %mul24.i.18 = mul nsw i32 %3, -19
  %add.ptr25.i.18 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul24.i.18
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr25.i.18, i8* nonnull align 1 %add.ptr21.i, i32 %add.i, i1 false) #7
  %mul24.i.19 = mul nsw i32 %3, -20
  %add.ptr25.i.19 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul24.i.19
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr25.i.19, i8* nonnull align 1 %add.ptr21.i, i32 %add.i, i1 false) #7
  %mul24.i.20 = mul nsw i32 %3, -21
  %add.ptr25.i.20 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul24.i.20
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr25.i.20, i8* nonnull align 1 %add.ptr21.i, i32 %add.i, i1 false) #7
  %mul24.i.21 = mul nsw i32 %3, -22
  %add.ptr25.i.21 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul24.i.21
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr25.i.21, i8* nonnull align 1 %add.ptr21.i, i32 %add.i, i1 false) #7
  %mul24.i.22 = mul nsw i32 %3, -23
  %add.ptr25.i.22 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul24.i.22
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr25.i.22, i8* nonnull align 1 %add.ptr21.i, i32 %add.i, i1 false) #7
  %mul24.i.23 = mul nsw i32 %3, -24
  %add.ptr25.i.23 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul24.i.23
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr25.i.23, i8* nonnull align 1 %add.ptr21.i, i32 %add.i, i1 false) #7
  br label %if.end.i

if.end.i:                                         ; preds = %for.body19.lr.ph.i, %for.cond.cleanup.i
  br i1 %tobool1, label %plane_expand_border.exit, label %for.body41.lr.ph.i

for.body41.lr.ph.i:                               ; preds = %if.end.i
  %add.ptr43.i = getelementptr inbounds i8, i8* %add.ptr16, i32 -28
  %mul50.i = mul nsw i32 %3, %sub49.i
  %add.ptr51.i = getelementptr inbounds i8, i8* %add.ptr43.i, i32 %mul50.i
  %mul45.i = mul nsw i32 %cond, %3
  %add.ptr46.i = getelementptr inbounds i8, i8* %add.ptr43.i, i32 %mul45.i
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46.i, i8* nonnull align 1 %add.ptr51.i, i32 %add.i, i1 false) #7
  %mul45.i.1 = mul nsw i32 %add44.i.1, %3
  %add.ptr46.i.1 = getelementptr inbounds i8, i8* %add.ptr43.i, i32 %mul45.i.1
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46.i.1, i8* nonnull align 1 %add.ptr51.i, i32 %add.i, i1 false) #7
  %mul45.i.2 = mul nsw i32 %add44.i.2, %3
  %add.ptr46.i.2 = getelementptr inbounds i8, i8* %add.ptr43.i, i32 %mul45.i.2
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46.i.2, i8* nonnull align 1 %add.ptr51.i, i32 %add.i, i1 false) #7
  %mul45.i.3 = mul nsw i32 %add44.i.3, %3
  %add.ptr46.i.3 = getelementptr inbounds i8, i8* %add.ptr43.i, i32 %mul45.i.3
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46.i.3, i8* nonnull align 1 %add.ptr51.i, i32 %add.i, i1 false) #7
  %mul45.i.4 = mul nsw i32 %add44.i.4, %3
  %add.ptr46.i.4 = getelementptr inbounds i8, i8* %add.ptr43.i, i32 %mul45.i.4
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46.i.4, i8* nonnull align 1 %add.ptr51.i, i32 %add.i, i1 false) #7
  %mul45.i.5 = mul nsw i32 %add44.i.5, %3
  %add.ptr46.i.5 = getelementptr inbounds i8, i8* %add.ptr43.i, i32 %mul45.i.5
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46.i.5, i8* nonnull align 1 %add.ptr51.i, i32 %add.i, i1 false) #7
  %mul45.i.6 = mul nsw i32 %add44.i.6, %3
  %add.ptr46.i.6 = getelementptr inbounds i8, i8* %add.ptr43.i, i32 %mul45.i.6
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46.i.6, i8* nonnull align 1 %add.ptr51.i, i32 %add.i, i1 false) #7
  %mul45.i.7 = mul nsw i32 %add44.i.7, %3
  %add.ptr46.i.7 = getelementptr inbounds i8, i8* %add.ptr43.i, i32 %mul45.i.7
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46.i.7, i8* nonnull align 1 %add.ptr51.i, i32 %add.i, i1 false) #7
  %mul45.i.8 = mul nsw i32 %add44.i.8, %3
  %add.ptr46.i.8 = getelementptr inbounds i8, i8* %add.ptr43.i, i32 %mul45.i.8
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46.i.8, i8* nonnull align 1 %add.ptr51.i, i32 %add.i, i1 false) #7
  %mul45.i.9 = mul nsw i32 %add44.i.9, %3
  %add.ptr46.i.9 = getelementptr inbounds i8, i8* %add.ptr43.i, i32 %mul45.i.9
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46.i.9, i8* nonnull align 1 %add.ptr51.i, i32 %add.i, i1 false) #7
  %mul45.i.10 = mul nsw i32 %add44.i.10, %3
  %add.ptr46.i.10 = getelementptr inbounds i8, i8* %add.ptr43.i, i32 %mul45.i.10
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46.i.10, i8* nonnull align 1 %add.ptr51.i, i32 %add.i, i1 false) #7
  %mul45.i.11 = mul nsw i32 %add44.i.11, %3
  %add.ptr46.i.11 = getelementptr inbounds i8, i8* %add.ptr43.i, i32 %mul45.i.11
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46.i.11, i8* nonnull align 1 %add.ptr51.i, i32 %add.i, i1 false) #7
  %mul45.i.12 = mul nsw i32 %add44.i.12, %3
  %add.ptr46.i.12 = getelementptr inbounds i8, i8* %add.ptr43.i, i32 %mul45.i.12
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46.i.12, i8* nonnull align 1 %add.ptr51.i, i32 %add.i, i1 false) #7
  %mul45.i.13 = mul nsw i32 %add44.i.13, %3
  %add.ptr46.i.13 = getelementptr inbounds i8, i8* %add.ptr43.i, i32 %mul45.i.13
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46.i.13, i8* nonnull align 1 %add.ptr51.i, i32 %add.i, i1 false) #7
  %mul45.i.14 = mul nsw i32 %add44.i.14, %3
  %add.ptr46.i.14 = getelementptr inbounds i8, i8* %add.ptr43.i, i32 %mul45.i.14
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46.i.14, i8* nonnull align 1 %add.ptr51.i, i32 %add.i, i1 false) #7
  %mul45.i.15 = mul nsw i32 %add44.i.15, %3
  %add.ptr46.i.15 = getelementptr inbounds i8, i8* %add.ptr43.i, i32 %mul45.i.15
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46.i.15, i8* nonnull align 1 %add.ptr51.i, i32 %add.i, i1 false) #7
  %mul45.i.16 = mul nsw i32 %add44.i.16, %3
  %add.ptr46.i.16 = getelementptr inbounds i8, i8* %add.ptr43.i, i32 %mul45.i.16
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46.i.16, i8* nonnull align 1 %add.ptr51.i, i32 %add.i, i1 false) #7
  %mul45.i.17 = mul nsw i32 %add44.i.17, %3
  %add.ptr46.i.17 = getelementptr inbounds i8, i8* %add.ptr43.i, i32 %mul45.i.17
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46.i.17, i8* nonnull align 1 %add.ptr51.i, i32 %add.i, i1 false) #7
  %mul45.i.18 = mul nsw i32 %add44.i.18, %3
  %add.ptr46.i.18 = getelementptr inbounds i8, i8* %add.ptr43.i, i32 %mul45.i.18
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46.i.18, i8* nonnull align 1 %add.ptr51.i, i32 %add.i, i1 false) #7
  %mul45.i.19 = mul nsw i32 %add44.i.19, %3
  %add.ptr46.i.19 = getelementptr inbounds i8, i8* %add.ptr43.i, i32 %mul45.i.19
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46.i.19, i8* nonnull align 1 %add.ptr51.i, i32 %add.i, i1 false) #7
  %mul45.i.20 = mul nsw i32 %add44.i.20, %3
  %add.ptr46.i.20 = getelementptr inbounds i8, i8* %add.ptr43.i, i32 %mul45.i.20
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46.i.20, i8* nonnull align 1 %add.ptr51.i, i32 %add.i, i1 false) #7
  %mul45.i.21 = mul nsw i32 %add44.i.21, %3
  %add.ptr46.i.21 = getelementptr inbounds i8, i8* %add.ptr43.i, i32 %mul45.i.21
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46.i.21, i8* nonnull align 1 %add.ptr51.i, i32 %add.i, i1 false) #7
  %mul45.i.22 = mul nsw i32 %add44.i.22, %3
  %add.ptr46.i.22 = getelementptr inbounds i8, i8* %add.ptr43.i, i32 %mul45.i.22
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46.i.22, i8* nonnull align 1 %add.ptr51.i, i32 %add.i, i1 false) #7
  %mul45.i.23 = mul nsw i32 %add44.i.23, %3
  %add.ptr46.i.23 = getelementptr inbounds i8, i8* %add.ptr43.i, i32 %mul45.i.23
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46.i.23, i8* nonnull align 1 %add.ptr51.i, i32 %add.i, i1 false) #7
  br label %plane_expand_border.exit

plane_expand_border.exit:                         ; preds = %for.body41.lr.ph.i, %if.end.i
  %inc = add nuw nsw i32 %i.041, 1
  %exitcond = icmp eq i32 %inc, 4
  br i1 %exitcond, label %for.cond.cleanup9, label %for.body10
}

; Function Attrs: nounwind
define hidden void @x264_8_frame_expand_border_lowres(%struct.x264_frame* nocapture readonly %frame) local_unnamed_addr #0 {
entry:
  %i_stride_lowres = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 34
  %i_width_lowres = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 35
  %i_lines_lowres = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 36
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.i
  ret void

for.body:                                         ; preds = %for.cond.cleanup.i, %entry
  %i.07 = phi i32 [ 0, %entry ], [ %inc, %for.cond.cleanup.i ]
  %arrayidx = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 41, i32 %i.07
  %0 = load i8*, i8** %arrayidx, align 4, !tbaa !67
  %1 = load i32, i32* %i_stride_lowres, align 8, !tbaa !92
  %2 = load i32, i32* %i_width_lowres, align 4, !tbaa !93
  %3 = load i32, i32* %i_lines_lowres, align 16, !tbaa !94
  %cmp171.i = icmp sgt i32 %3, 0
  br i1 %cmp171.i, label %for.body.lr.ph.i, label %for.cond.cleanup.i

for.body.lr.ph.i:                                 ; preds = %for.body
  %add.ptr.i = getelementptr inbounds i8, i8* %0, i32 -32
  %add.ptr5.i = getelementptr inbounds i8, i8* %0, i32 %2
  %sub9.i = add i32 %2, -1
  %add.ptr10.i = getelementptr inbounds i8, i8* %0, i32 %sub9.i
  br label %for.body.us.i

for.body.us.i:                                    ; preds = %pixel_memset.exit166.us.i, %for.body.lr.ph.i
  %y.0172.us.i = phi i32 [ %inc.us.i, %pixel_memset.exit166.us.i ], [ 0, %for.body.lr.ph.i ]
  %mul.us.i = mul nsw i32 %y.0172.us.i, %1
  %add.ptr1.us.i = getelementptr inbounds i8, i8* %add.ptr.i, i32 %mul.us.i
  %add.ptr4.us.i = getelementptr inbounds i8, i8* %0, i32 %mul.us.i
  %4 = load i8, i8* %add.ptr4.us.i, align 1, !tbaa !87
  %conv.i.us.i = zext i8 %4 to i32
  %add.i.us.i = mul nuw nsw i32 %conv.i.us.i, 257
  %add7.i.us.i = mul nuw i32 %conv.i.us.i, 16843009
  %5 = ptrtoint i8* %add.ptr1.us.i to i32
  %and.i.us.i = and i32 %5, 3
  %tobool.i.us.i = icmp eq i32 %and.i.us.i, 0
  br i1 %tobool.i.us.i, label %for.body.i.us.i.preheader, label %if.then17.i.us.i

if.then17.i.us.i:                                 ; preds = %for.body.us.i
  %and21.i.us.i = and i32 %5, 1
  %tobool22.i.us.i = icmp eq i32 %and21.i.us.i, 0
  br i1 %tobool22.i.us.i, label %if.end.i.us.i, label %if.then23.i.us.i

if.then23.i.us.i:                                 ; preds = %if.then17.i.us.i
  store i8 %4, i8* %add.ptr1.us.i, align 1, !tbaa !87
  br label %if.end.i.us.i

if.end.i.us.i:                                    ; preds = %if.then23.i.us.i, %if.then17.i.us.i
  %i12.0.i.us.i = phi i32 [ 1, %if.then23.i.us.i ], [ 0, %if.then17.i.us.i ]
  %and25.i.us.i = and i32 %5, 2
  %tobool26.i.us.i = icmp eq i32 %and25.i.us.i, 0
  br i1 %tobool26.i.us.i, label %for.body.i.us.i.preheader, label %if.end33.i.us.i

if.end33.i.us.i:                                  ; preds = %if.end.i.us.i
  %conv28.i.us.i = trunc i32 %add.i.us.i to i16
  %add.ptr.i.us.i = getelementptr inbounds i8, i8* %add.ptr1.us.i, i32 %i12.0.i.us.i
  %i29.i.us.i = bitcast i8* %add.ptr.i.us.i to i16*
  store i16 %conv28.i.us.i, i16* %i29.i.us.i, align 2, !tbaa !87
  %add30.i.us.i = or i32 %i12.0.i.us.i, 2
  br label %for.body.i.us.i.preheader

for.body.i.us.i.preheader:                        ; preds = %if.end33.i.us.i, %for.body.us.i, %if.end.i.us.i
  %i12.2122.i.us.i.ph = phi i32 [ %i12.0.i.us.i, %if.end.i.us.i ], [ 0, %for.body.us.i ], [ %add30.i.us.i, %if.end33.i.us.i ]
  br label %for.body.i.us.i

for.body.i.us.i:                                  ; preds = %for.body.i.us.i.preheader, %for.body.i.us.i
  %i12.2122.i.us.i = phi i32 [ %add38.i.us.i, %for.body.i.us.i ], [ %i12.2122.i.us.i.ph, %for.body.i.us.i.preheader ]
  %add.ptr36.i.us.i = getelementptr inbounds i8, i8* %add.ptr1.us.i, i32 %i12.2122.i.us.i
  %i37.i.us.i = bitcast i8* %add.ptr36.i.us.i to i32*
  store i32 %add7.i.us.i, i32* %i37.i.us.i, align 4, !tbaa !87
  %add38.i.us.i = add nuw nsw i32 %i12.2122.i.us.i, 4
  %cmp34.i.us.i = icmp ult i32 %i12.2122.i.us.i, 25
  br i1 %cmp34.i.us.i, label %for.body.i.us.i, label %if.then41.i.us.i

if.then41.i.us.i:                                 ; preds = %for.body.i.us.i
  %cmp43.i.us.i = icmp slt i32 %i12.2122.i.us.i, 27
  br i1 %cmp43.i.us.i, label %if.then45.i.us.i, label %if.end50.i.us.i

if.then45.i.us.i:                                 ; preds = %if.then41.i.us.i
  %conv46.i.us.i = trunc i32 %add.i.us.i to i16
  %add.ptr47.i.us.i = getelementptr inbounds i8, i8* %add.ptr1.us.i, i32 %add38.i.us.i
  %i48.i.us.i = bitcast i8* %add.ptr47.i.us.i to i16*
  store i16 %conv46.i.us.i, i16* %i48.i.us.i, align 2, !tbaa !87
  %add49.i.us.i = add nuw nsw i32 %i12.2122.i.us.i, 6
  br label %if.end50.i.us.i

if.end50.i.us.i:                                  ; preds = %if.then45.i.us.i, %if.then41.i.us.i
  %i12.3.i.us.i = phi i32 [ %add49.i.us.i, %if.then45.i.us.i ], [ %add38.i.us.i, %if.then41.i.us.i ]
  %cmp54.i.us.i = icmp eq i32 %i12.3.i.us.i, 32
  br i1 %cmp54.i.us.i, label %pixel_memset.exit.us.i, label %if.then56.i.us.i

if.then56.i.us.i:                                 ; preds = %if.end50.i.us.i
  %arrayidx58.i.us.i = getelementptr inbounds i8, i8* %add.ptr1.us.i, i32 %i12.3.i.us.i
  store i8 %4, i8* %arrayidx58.i.us.i, align 1, !tbaa !87
  br label %pixel_memset.exit.us.i

pixel_memset.exit.us.i:                           ; preds = %if.then56.i.us.i, %if.end50.i.us.i
  %add.ptr7.us.i = getelementptr inbounds i8, i8* %add.ptr5.i, i32 %mul.us.i
  %add.ptr12.us.i = getelementptr inbounds i8, i8* %add.ptr10.i, i32 %mul.us.i
  %6 = load i8, i8* %add.ptr12.us.i, align 1, !tbaa !87
  %conv.i104.us.i = zext i8 %6 to i32
  %add.i105.us.i = mul nuw nsw i32 %conv.i104.us.i, 257
  %add7.i115.us.i = mul nuw i32 %conv.i104.us.i, 16843009
  %7 = ptrtoint i8* %add.ptr7.us.i to i32
  %and.i117.us.i = and i32 %7, 3
  %tobool.i118.us.i = icmp eq i32 %and.i117.us.i, 0
  br i1 %tobool.i118.us.i, label %for.body.i148.us.i.preheader, label %if.then17.i124.us.i

if.then17.i124.us.i:                              ; preds = %pixel_memset.exit.us.i
  %and21.i121.us.i = and i32 %7, 1
  %tobool22.i122.us.i = icmp eq i32 %and21.i121.us.i, 0
  br i1 %tobool22.i122.us.i, label %if.end.i129.us.i, label %if.then23.i125.us.i

if.then23.i125.us.i:                              ; preds = %if.then17.i124.us.i
  store i8 %6, i8* %add.ptr7.us.i, align 1, !tbaa !87
  br label %if.end.i129.us.i

if.end.i129.us.i:                                 ; preds = %if.then23.i125.us.i, %if.then17.i124.us.i
  %i12.0.i126.us.i = phi i32 [ 1, %if.then23.i125.us.i ], [ 0, %if.then17.i124.us.i ]
  %and25.i127.us.i = and i32 %7, 2
  %tobool26.i128.us.i = icmp eq i32 %and25.i127.us.i, 0
  br i1 %tobool26.i128.us.i, label %for.body.i148.us.i.preheader, label %if.end33.i142.us.i

if.end33.i142.us.i:                               ; preds = %if.end.i129.us.i
  %conv28.i130.us.i = trunc i32 %add.i105.us.i to i16
  %add.ptr.i131.us.i = getelementptr inbounds i8, i8* %add.ptr7.us.i, i32 %i12.0.i126.us.i
  %i29.i132.us.i = bitcast i8* %add.ptr.i131.us.i to i16*
  store i16 %conv28.i130.us.i, i16* %i29.i132.us.i, align 2, !tbaa !87
  %add30.i133.us.i = or i32 %i12.0.i126.us.i, 2
  br label %for.body.i148.us.i.preheader

for.body.i148.us.i.preheader:                     ; preds = %if.end33.i142.us.i, %pixel_memset.exit.us.i, %if.end.i129.us.i
  %i12.2122.i143.us.i.ph = phi i32 [ %i12.0.i126.us.i, %if.end.i129.us.i ], [ 0, %pixel_memset.exit.us.i ], [ %add30.i133.us.i, %if.end33.i142.us.i ]
  br label %for.body.i148.us.i

for.body.i148.us.i:                               ; preds = %for.body.i148.us.i.preheader, %for.body.i148.us.i
  %i12.2122.i143.us.i = phi i32 [ %add38.i146.us.i, %for.body.i148.us.i ], [ %i12.2122.i143.us.i.ph, %for.body.i148.us.i.preheader ]
  %add.ptr36.i144.us.i = getelementptr inbounds i8, i8* %add.ptr7.us.i, i32 %i12.2122.i143.us.i
  %i37.i145.us.i = bitcast i8* %add.ptr36.i144.us.i to i32*
  store i32 %add7.i115.us.i, i32* %i37.i145.us.i, align 4, !tbaa !87
  %add38.i146.us.i = add nuw nsw i32 %i12.2122.i143.us.i, 4
  %cmp34.i147.us.i = icmp ult i32 %i12.2122.i143.us.i, 25
  br i1 %cmp34.i147.us.i, label %for.body.i148.us.i, label %if.then41.i153.us.i

if.then41.i153.us.i:                              ; preds = %for.body.i148.us.i
  %cmp43.i152.us.i = icmp slt i32 %i12.2122.i143.us.i, 27
  br i1 %cmp43.i152.us.i, label %if.then45.i158.us.i, label %if.end50.i163.us.i

if.then45.i158.us.i:                              ; preds = %if.then41.i153.us.i
  %conv46.i154.us.i = trunc i32 %add.i105.us.i to i16
  %add.ptr47.i155.us.i = getelementptr inbounds i8, i8* %add.ptr7.us.i, i32 %add38.i146.us.i
  %i48.i156.us.i = bitcast i8* %add.ptr47.i155.us.i to i16*
  store i16 %conv46.i154.us.i, i16* %i48.i156.us.i, align 2, !tbaa !87
  %add49.i157.us.i = add nuw nsw i32 %i12.2122.i143.us.i, 6
  br label %if.end50.i163.us.i

if.end50.i163.us.i:                               ; preds = %if.then45.i158.us.i, %if.then41.i153.us.i
  %i12.3.i159.us.i = phi i32 [ %add49.i157.us.i, %if.then45.i158.us.i ], [ %add38.i146.us.i, %if.then41.i153.us.i ]
  %cmp54.i161.us.i = icmp eq i32 %i12.3.i159.us.i, 32
  br i1 %cmp54.i161.us.i, label %pixel_memset.exit166.us.i, label %if.then56.i165.us.i

if.then56.i165.us.i:                              ; preds = %if.end50.i163.us.i
  %arrayidx58.i164.us.i = getelementptr inbounds i8, i8* %add.ptr7.us.i, i32 %i12.3.i159.us.i
  store i8 %6, i8* %arrayidx58.i164.us.i, align 1, !tbaa !87
  br label %pixel_memset.exit166.us.i

pixel_memset.exit166.us.i:                        ; preds = %if.then56.i165.us.i, %if.end50.i163.us.i
  %inc.us.i = add nuw nsw i32 %y.0172.us.i, 1
  %exitcond176.i = icmp eq i32 %inc.us.i, %3
  br i1 %exitcond176.i, label %for.cond.cleanup.i, label %for.body.us.i

for.cond.cleanup.i:                               ; preds = %pixel_memset.exit166.us.i, %for.body
  %add.ptr21.i = getelementptr inbounds i8, i8* %0, i32 -32
  %add.i = add nsw i32 %2, 64
  %mul24.i = sub nsw i32 0, %1
  %add.ptr25.i = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul24.i
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr25.i, i8* nonnull align 1 %add.ptr21.i, i32 %add.i, i1 false) #7
  %mul24.i.1 = mul nsw i32 %1, -2
  %add.ptr25.i.1 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul24.i.1
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr25.i.1, i8* nonnull align 1 %add.ptr21.i, i32 %add.i, i1 false) #7
  %mul24.i.2 = mul nsw i32 %1, -3
  %add.ptr25.i.2 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul24.i.2
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr25.i.2, i8* nonnull align 1 %add.ptr21.i, i32 %add.i, i1 false) #7
  %mul24.i.3 = mul nsw i32 %1, -4
  %add.ptr25.i.3 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul24.i.3
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr25.i.3, i8* nonnull align 1 %add.ptr21.i, i32 %add.i, i1 false) #7
  %mul24.i.4 = mul nsw i32 %1, -5
  %add.ptr25.i.4 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul24.i.4
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr25.i.4, i8* nonnull align 1 %add.ptr21.i, i32 %add.i, i1 false) #7
  %mul24.i.5 = mul nsw i32 %1, -6
  %add.ptr25.i.5 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul24.i.5
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr25.i.5, i8* nonnull align 1 %add.ptr21.i, i32 %add.i, i1 false) #7
  %mul24.i.6 = mul nsw i32 %1, -7
  %add.ptr25.i.6 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul24.i.6
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr25.i.6, i8* nonnull align 1 %add.ptr21.i, i32 %add.i, i1 false) #7
  %mul24.i.7 = mul nsw i32 %1, -8
  %add.ptr25.i.7 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul24.i.7
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr25.i.7, i8* nonnull align 1 %add.ptr21.i, i32 %add.i, i1 false) #7
  %mul24.i.8 = mul nsw i32 %1, -9
  %add.ptr25.i.8 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul24.i.8
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr25.i.8, i8* nonnull align 1 %add.ptr21.i, i32 %add.i, i1 false) #7
  %mul24.i.9 = mul nsw i32 %1, -10
  %add.ptr25.i.9 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul24.i.9
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr25.i.9, i8* nonnull align 1 %add.ptr21.i, i32 %add.i, i1 false) #7
  %mul24.i.10 = mul nsw i32 %1, -11
  %add.ptr25.i.10 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul24.i.10
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr25.i.10, i8* nonnull align 1 %add.ptr21.i, i32 %add.i, i1 false) #7
  %mul24.i.11 = mul nsw i32 %1, -12
  %add.ptr25.i.11 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul24.i.11
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr25.i.11, i8* nonnull align 1 %add.ptr21.i, i32 %add.i, i1 false) #7
  %mul24.i.12 = mul nsw i32 %1, -13
  %add.ptr25.i.12 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul24.i.12
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr25.i.12, i8* nonnull align 1 %add.ptr21.i, i32 %add.i, i1 false) #7
  %mul24.i.13 = mul nsw i32 %1, -14
  %add.ptr25.i.13 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul24.i.13
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr25.i.13, i8* nonnull align 1 %add.ptr21.i, i32 %add.i, i1 false) #7
  %mul24.i.14 = mul nsw i32 %1, -15
  %add.ptr25.i.14 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul24.i.14
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr25.i.14, i8* nonnull align 1 %add.ptr21.i, i32 %add.i, i1 false) #7
  %mul24.i.15 = mul nsw i32 %1, -16
  %add.ptr25.i.15 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul24.i.15
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr25.i.15, i8* nonnull align 1 %add.ptr21.i, i32 %add.i, i1 false) #7
  %mul24.i.16 = mul nsw i32 %1, -17
  %add.ptr25.i.16 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul24.i.16
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr25.i.16, i8* nonnull align 1 %add.ptr21.i, i32 %add.i, i1 false) #7
  %mul24.i.17 = mul nsw i32 %1, -18
  %add.ptr25.i.17 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul24.i.17
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr25.i.17, i8* nonnull align 1 %add.ptr21.i, i32 %add.i, i1 false) #7
  %mul24.i.18 = mul nsw i32 %1, -19
  %add.ptr25.i.18 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul24.i.18
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr25.i.18, i8* nonnull align 1 %add.ptr21.i, i32 %add.i, i1 false) #7
  %mul24.i.19 = mul nsw i32 %1, -20
  %add.ptr25.i.19 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul24.i.19
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr25.i.19, i8* nonnull align 1 %add.ptr21.i, i32 %add.i, i1 false) #7
  %mul24.i.20 = mul nsw i32 %1, -21
  %add.ptr25.i.20 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul24.i.20
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr25.i.20, i8* nonnull align 1 %add.ptr21.i, i32 %add.i, i1 false) #7
  %mul24.i.21 = mul nsw i32 %1, -22
  %add.ptr25.i.21 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul24.i.21
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr25.i.21, i8* nonnull align 1 %add.ptr21.i, i32 %add.i, i1 false) #7
  %mul24.i.22 = mul nsw i32 %1, -23
  %add.ptr25.i.22 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul24.i.22
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr25.i.22, i8* nonnull align 1 %add.ptr21.i, i32 %add.i, i1 false) #7
  %mul24.i.23 = mul nsw i32 %1, -24
  %add.ptr25.i.23 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul24.i.23
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr25.i.23, i8* nonnull align 1 %add.ptr21.i, i32 %add.i, i1 false) #7
  %mul24.i.24 = mul nsw i32 %1, -25
  %add.ptr25.i.24 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul24.i.24
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr25.i.24, i8* nonnull align 1 %add.ptr21.i, i32 %add.i, i1 false) #7
  %mul24.i.25 = mul nsw i32 %1, -26
  %add.ptr25.i.25 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul24.i.25
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr25.i.25, i8* nonnull align 1 %add.ptr21.i, i32 %add.i, i1 false) #7
  %mul24.i.26 = mul nsw i32 %1, -27
  %add.ptr25.i.26 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul24.i.26
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr25.i.26, i8* nonnull align 1 %add.ptr21.i, i32 %add.i, i1 false) #7
  %mul24.i.27 = mul nsw i32 %1, -28
  %add.ptr25.i.27 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul24.i.27
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr25.i.27, i8* nonnull align 1 %add.ptr21.i, i32 %add.i, i1 false) #7
  %mul24.i.28 = mul nsw i32 %1, -29
  %add.ptr25.i.28 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul24.i.28
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr25.i.28, i8* nonnull align 1 %add.ptr21.i, i32 %add.i, i1 false) #7
  %mul24.i.29 = mul nsw i32 %1, -30
  %add.ptr25.i.29 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul24.i.29
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr25.i.29, i8* nonnull align 1 %add.ptr21.i, i32 %add.i, i1 false) #7
  %mul24.i.30 = mul nsw i32 %1, -31
  %add.ptr25.i.30 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul24.i.30
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr25.i.30, i8* nonnull align 1 %add.ptr21.i, i32 %add.i, i1 false) #7
  %mul24.i.31 = mul nsw i32 %1, -32
  %add.ptr25.i.31 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul24.i.31
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr25.i.31, i8* nonnull align 1 %add.ptr21.i, i32 %add.i, i1 false) #7
  %sub49.i = add nsw i32 %3, -1
  %mul50.i = mul nsw i32 %sub49.i, %1
  %add.ptr51.i = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul50.i
  %mul45.i = mul nsw i32 %3, %1
  %add.ptr46.i = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul45.i
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46.i, i8* nonnull align 1 %add.ptr51.i, i32 %add.i, i1 false) #7
  %add44.i.1 = add nsw i32 %3, 1
  %mul45.i.1 = mul nsw i32 %add44.i.1, %1
  %add.ptr46.i.1 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul45.i.1
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46.i.1, i8* nonnull align 1 %add.ptr51.i, i32 %add.i, i1 false) #7
  %add44.i.2 = add nsw i32 %3, 2
  %mul45.i.2 = mul nsw i32 %add44.i.2, %1
  %add.ptr46.i.2 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul45.i.2
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46.i.2, i8* nonnull align 1 %add.ptr51.i, i32 %add.i, i1 false) #7
  %add44.i.3 = add nsw i32 %3, 3
  %mul45.i.3 = mul nsw i32 %add44.i.3, %1
  %add.ptr46.i.3 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul45.i.3
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46.i.3, i8* nonnull align 1 %add.ptr51.i, i32 %add.i, i1 false) #7
  %add44.i.4 = add nsw i32 %3, 4
  %mul45.i.4 = mul nsw i32 %add44.i.4, %1
  %add.ptr46.i.4 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul45.i.4
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46.i.4, i8* nonnull align 1 %add.ptr51.i, i32 %add.i, i1 false) #7
  %add44.i.5 = add nsw i32 %3, 5
  %mul45.i.5 = mul nsw i32 %add44.i.5, %1
  %add.ptr46.i.5 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul45.i.5
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46.i.5, i8* nonnull align 1 %add.ptr51.i, i32 %add.i, i1 false) #7
  %add44.i.6 = add nsw i32 %3, 6
  %mul45.i.6 = mul nsw i32 %add44.i.6, %1
  %add.ptr46.i.6 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul45.i.6
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46.i.6, i8* nonnull align 1 %add.ptr51.i, i32 %add.i, i1 false) #7
  %add44.i.7 = add nsw i32 %3, 7
  %mul45.i.7 = mul nsw i32 %add44.i.7, %1
  %add.ptr46.i.7 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul45.i.7
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46.i.7, i8* nonnull align 1 %add.ptr51.i, i32 %add.i, i1 false) #7
  %add44.i.8 = add nsw i32 %3, 8
  %mul45.i.8 = mul nsw i32 %add44.i.8, %1
  %add.ptr46.i.8 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul45.i.8
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46.i.8, i8* nonnull align 1 %add.ptr51.i, i32 %add.i, i1 false) #7
  %add44.i.9 = add nsw i32 %3, 9
  %mul45.i.9 = mul nsw i32 %add44.i.9, %1
  %add.ptr46.i.9 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul45.i.9
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46.i.9, i8* nonnull align 1 %add.ptr51.i, i32 %add.i, i1 false) #7
  %add44.i.10 = add nsw i32 %3, 10
  %mul45.i.10 = mul nsw i32 %add44.i.10, %1
  %add.ptr46.i.10 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul45.i.10
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46.i.10, i8* nonnull align 1 %add.ptr51.i, i32 %add.i, i1 false) #7
  %add44.i.11 = add nsw i32 %3, 11
  %mul45.i.11 = mul nsw i32 %add44.i.11, %1
  %add.ptr46.i.11 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul45.i.11
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46.i.11, i8* nonnull align 1 %add.ptr51.i, i32 %add.i, i1 false) #7
  %add44.i.12 = add nsw i32 %3, 12
  %mul45.i.12 = mul nsw i32 %add44.i.12, %1
  %add.ptr46.i.12 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul45.i.12
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46.i.12, i8* nonnull align 1 %add.ptr51.i, i32 %add.i, i1 false) #7
  %add44.i.13 = add nsw i32 %3, 13
  %mul45.i.13 = mul nsw i32 %add44.i.13, %1
  %add.ptr46.i.13 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul45.i.13
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46.i.13, i8* nonnull align 1 %add.ptr51.i, i32 %add.i, i1 false) #7
  %add44.i.14 = add nsw i32 %3, 14
  %mul45.i.14 = mul nsw i32 %add44.i.14, %1
  %add.ptr46.i.14 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul45.i.14
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46.i.14, i8* nonnull align 1 %add.ptr51.i, i32 %add.i, i1 false) #7
  %add44.i.15 = add nsw i32 %3, 15
  %mul45.i.15 = mul nsw i32 %add44.i.15, %1
  %add.ptr46.i.15 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul45.i.15
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46.i.15, i8* nonnull align 1 %add.ptr51.i, i32 %add.i, i1 false) #7
  %add44.i.16 = add nsw i32 %3, 16
  %mul45.i.16 = mul nsw i32 %add44.i.16, %1
  %add.ptr46.i.16 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul45.i.16
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46.i.16, i8* nonnull align 1 %add.ptr51.i, i32 %add.i, i1 false) #7
  %add44.i.17 = add nsw i32 %3, 17
  %mul45.i.17 = mul nsw i32 %add44.i.17, %1
  %add.ptr46.i.17 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul45.i.17
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46.i.17, i8* nonnull align 1 %add.ptr51.i, i32 %add.i, i1 false) #7
  %add44.i.18 = add nsw i32 %3, 18
  %mul45.i.18 = mul nsw i32 %add44.i.18, %1
  %add.ptr46.i.18 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul45.i.18
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46.i.18, i8* nonnull align 1 %add.ptr51.i, i32 %add.i, i1 false) #7
  %add44.i.19 = add nsw i32 %3, 19
  %mul45.i.19 = mul nsw i32 %add44.i.19, %1
  %add.ptr46.i.19 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul45.i.19
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46.i.19, i8* nonnull align 1 %add.ptr51.i, i32 %add.i, i1 false) #7
  %add44.i.20 = add nsw i32 %3, 20
  %mul45.i.20 = mul nsw i32 %add44.i.20, %1
  %add.ptr46.i.20 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul45.i.20
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46.i.20, i8* nonnull align 1 %add.ptr51.i, i32 %add.i, i1 false) #7
  %add44.i.21 = add nsw i32 %3, 21
  %mul45.i.21 = mul nsw i32 %add44.i.21, %1
  %add.ptr46.i.21 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul45.i.21
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46.i.21, i8* nonnull align 1 %add.ptr51.i, i32 %add.i, i1 false) #7
  %add44.i.22 = add nsw i32 %3, 22
  %mul45.i.22 = mul nsw i32 %add44.i.22, %1
  %add.ptr46.i.22 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul45.i.22
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46.i.22, i8* nonnull align 1 %add.ptr51.i, i32 %add.i, i1 false) #7
  %add44.i.23 = add nsw i32 %3, 23
  %mul45.i.23 = mul nsw i32 %add44.i.23, %1
  %add.ptr46.i.23 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul45.i.23
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46.i.23, i8* nonnull align 1 %add.ptr51.i, i32 %add.i, i1 false) #7
  %add44.i.24 = add nsw i32 %3, 24
  %mul45.i.24 = mul nsw i32 %add44.i.24, %1
  %add.ptr46.i.24 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul45.i.24
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46.i.24, i8* nonnull align 1 %add.ptr51.i, i32 %add.i, i1 false) #7
  %add44.i.25 = add nsw i32 %3, 25
  %mul45.i.25 = mul nsw i32 %add44.i.25, %1
  %add.ptr46.i.25 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul45.i.25
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46.i.25, i8* nonnull align 1 %add.ptr51.i, i32 %add.i, i1 false) #7
  %add44.i.26 = add nsw i32 %3, 26
  %mul45.i.26 = mul nsw i32 %add44.i.26, %1
  %add.ptr46.i.26 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul45.i.26
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46.i.26, i8* nonnull align 1 %add.ptr51.i, i32 %add.i, i1 false) #7
  %add44.i.27 = add nsw i32 %3, 27
  %mul45.i.27 = mul nsw i32 %add44.i.27, %1
  %add.ptr46.i.27 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul45.i.27
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46.i.27, i8* nonnull align 1 %add.ptr51.i, i32 %add.i, i1 false) #7
  %add44.i.28 = add nsw i32 %3, 28
  %mul45.i.28 = mul nsw i32 %add44.i.28, %1
  %add.ptr46.i.28 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul45.i.28
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46.i.28, i8* nonnull align 1 %add.ptr51.i, i32 %add.i, i1 false) #7
  %add44.i.29 = add nsw i32 %3, 29
  %mul45.i.29 = mul nsw i32 %add44.i.29, %1
  %add.ptr46.i.29 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul45.i.29
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46.i.29, i8* nonnull align 1 %add.ptr51.i, i32 %add.i, i1 false) #7
  %add44.i.30 = add nsw i32 %3, 30
  %mul45.i.30 = mul nsw i32 %add44.i.30, %1
  %add.ptr46.i.30 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul45.i.30
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46.i.30, i8* nonnull align 1 %add.ptr51.i, i32 %add.i, i1 false) #7
  %add44.i.31 = add nsw i32 %3, 31
  %mul45.i.31 = mul nsw i32 %add44.i.31, %1
  %add.ptr46.i.31 = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul45.i.31
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46.i.31, i8* nonnull align 1 %add.ptr51.i, i32 %add.i, i1 false) #7
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond = icmp eq i32 %inc, 4
  br i1 %exitcond, label %for.cond.cleanup, label %for.body
}

; Function Attrs: nounwind
define hidden void @x264_8_frame_expand_border_chroma(%struct.x264_t* nocapture readonly %h, %struct.x264_frame* nocapture readonly %frame, i32 %plane) local_unnamed_addr #0 {
entry:
  %chroma_v_shift = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 4
  %0 = load i32, i32* %chroma_v_shift, align 16, !tbaa !77
  %arrayidx = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 37, i32 %plane
  %1 = load i8*, i8** %arrayidx, align 4, !tbaa !67
  %arrayidx2 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 31, i32 %plane
  %2 = load i32, i32* %arrayidx2, align 4, !tbaa !66
  %i_mb_width = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 0
  %3 = load i32, i32* %i_mb_width, align 64, !tbaa !86
  %mul = shl nsw i32 %3, 4
  %i_mb_height = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 1
  %4 = load i32, i32* %i_mb_height, align 4, !tbaa !81
  %mul5 = shl nsw i32 %4, 4
  %shr = ashr i32 %mul5, %0
  %shr6 = lshr i32 32, %0
  %chroma_h_shift = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 3
  %5 = load i32, i32* %chroma_h_shift, align 4, !tbaa !85
  %cmp171.i = icmp sgt i32 %shr, 0
  br i1 %cmp171.i, label %for.body.lr.ph.i, label %for.cond.cleanup.i

for.body.lr.ph.i:                                 ; preds = %entry
  %add.ptr.i = getelementptr inbounds i8, i8* %1, i32 -32
  %cmp.i.i = icmp eq i32 %5, 0
  %6 = shl nsw i32 -1, %5
  %mul113.i.i = and i32 %6, 32
  %cmp.not.i.i = xor i1 %cmp.i.i, true
  %add.ptr5.i = getelementptr inbounds i8, i8* %1, i32 %mul
  %7 = xor i32 %5, -1
  %sub9.i = add i32 %mul, %7
  %add.ptr10.i = getelementptr inbounds i8, i8* %1, i32 %sub9.i
  %sub.i.us.i = add nsw i32 %mul113.i.i, -3
  %sub42.i.us.i = add nsw i32 %mul113.i.i, -1
  br i1 %cmp.i.i, label %for.body.us.i, label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %for.body.lr.ph.i
  %shl.i = shl nuw i32 1, %5
  %cmp3.i.i = icmp slt i32 %shl.i, 3
  br i1 %cmp3.i.i, label %for.body.i.us, label %for.body.i.preheader20

for.body.i.preheader20:                           ; preds = %for.body.i.preheader
  %cmp34121.i.i = icmp eq i32 %mul113.i.i, 0
  br label %for.body.i

for.body.i.us:                                    ; preds = %for.body.i.preheader, %pixel_memset.exit166.i.us
  %y.0172.i.us = phi i32 [ %inc.i.us, %pixel_memset.exit166.i.us ], [ 0, %for.body.i.preheader ]
  %mul.i.us = mul nsw i32 %y.0172.i.us, %2
  %add.ptr1.i.us = getelementptr inbounds i8, i8* %add.ptr.i, i32 %mul.i.us
  %add.ptr4.i.us = getelementptr inbounds i8, i8* %1, i32 %mul.i.us
  %8 = load i8, i8* %add.ptr4.i.us, align 1, !tbaa !87
  %i.i.i.us = bitcast i8* %add.ptr4.i.us to i16*
  %9 = load i16, i16* %i.i.i.us, align 2, !tbaa !87
  %conv2.i.i.us = zext i16 %9 to i32
  %add7.i.i.us = mul nuw i32 %conv2.i.i.us, 65537
  %10 = ptrtoint i8* %add.ptr1.i.us to i32
  %and.i.i.us = and i32 %10, 3
  %tobool.i.i.us = icmp eq i32 %and.i.i.us, 0
  br i1 %tobool.i.i.us, label %if.end33.i.i.us, label %if.then17.i.i.us

if.then17.i.i.us:                                 ; preds = %for.body.i.us
  %and21.i.i.us = and i32 %10, 1
  %tobool22.i.i.us = icmp eq i32 %and21.i.i.us, 0
  %or.cond101.i.i.us = or i1 %tobool22.i.i.us, %cmp.not.i.i
  br i1 %or.cond101.i.i.us, label %if.end.i.i.us, label %if.then23.i.i.us

if.then23.i.i.us:                                 ; preds = %if.then17.i.i.us
  store i8 %8, i8* %add.ptr1.i.us, align 1, !tbaa !87
  br label %if.end.i.i.us

if.end.i.i.us:                                    ; preds = %if.then23.i.i.us, %if.then17.i.i.us
  %i12.0.i.i.us = phi i32 [ 1, %if.then23.i.i.us ], [ 0, %if.then17.i.i.us ]
  %and25.i.i.us = and i32 %10, 2
  %tobool26.i.i.us = icmp eq i32 %and25.i.i.us, 0
  br i1 %tobool26.i.i.us, label %if.end33.i.i.us, label %if.then27.i.i.us

if.then27.i.i.us:                                 ; preds = %if.end.i.i.us
  %add.ptr.i.i.us = getelementptr inbounds i8, i8* %add.ptr1.i.us, i32 %i12.0.i.i.us
  %i29.i.i.us = bitcast i8* %add.ptr.i.i.us to i16*
  store i16 %9, i16* %i29.i.i.us, align 2, !tbaa !87
  %add30.i.i.us = or i32 %i12.0.i.i.us, 2
  br label %if.end33.i.i.us

if.end33.i.i.us:                                  ; preds = %if.then27.i.i.us, %if.end.i.i.us, %for.body.i.us
  %i12.1.i.i.us = phi i32 [ %add30.i.i.us, %if.then27.i.i.us ], [ %i12.0.i.i.us, %if.end.i.i.us ], [ 0, %for.body.i.us ]
  %cmp34121.i.i.us = icmp slt i32 %i12.1.i.i.us, %sub.i.us.i
  br i1 %cmp34121.i.i.us, label %for.body.i.i.us, label %if.then41.i.i.us

for.body.i.i.us:                                  ; preds = %if.end33.i.i.us, %for.body.i.i.us
  %i12.2122.i.i.us = phi i32 [ %add38.i.i.us, %for.body.i.i.us ], [ %i12.1.i.i.us, %if.end33.i.i.us ]
  %add.ptr36.i.i.us = getelementptr inbounds i8, i8* %add.ptr1.i.us, i32 %i12.2122.i.i.us
  %i37.i.i.us = bitcast i8* %add.ptr36.i.i.us to i32*
  store i32 %add7.i.i.us, i32* %i37.i.i.us, align 4, !tbaa !87
  %add38.i.i.us = add nuw nsw i32 %i12.2122.i.i.us, 4
  %cmp34.i.i.us = icmp slt i32 %add38.i.i.us, %sub.i.us.i
  br i1 %cmp34.i.i.us, label %for.body.i.i.us, label %if.then41.i.i.us

if.then41.i.i.us:                                 ; preds = %for.body.i.i.us, %if.end33.i.i.us
  %i12.2.lcssa.i.i.us = phi i32 [ %i12.1.i.i.us, %if.end33.i.i.us ], [ %add38.i.i.us, %for.body.i.i.us ]
  %cmp43.i.i.us = icmp slt i32 %i12.2.lcssa.i.i.us, %sub42.i.us.i
  br i1 %cmp43.i.i.us, label %if.then45.i.i.us, label %if.end50.i.i.us

if.then45.i.i.us:                                 ; preds = %if.then41.i.i.us
  %add.ptr47.i.i.us = getelementptr inbounds i8, i8* %add.ptr1.i.us, i32 %i12.2.lcssa.i.i.us
  %i48.i.i.us = bitcast i8* %add.ptr47.i.i.us to i16*
  store i16 %9, i16* %i48.i.i.us, align 2, !tbaa !87
  %add49.i.i.us = add nsw i32 %i12.2.lcssa.i.i.us, 2
  br label %if.end50.i.i.us

if.end50.i.i.us:                                  ; preds = %if.then45.i.i.us, %if.then41.i.i.us
  %i12.3.i.i.us = phi i32 [ %add49.i.i.us, %if.then45.i.i.us ], [ %i12.2.lcssa.i.i.us, %if.then41.i.i.us ]
  %cmp54.i.i.us = icmp eq i32 %i12.3.i.i.us, %mul113.i.i
  %or.cond103.i.i.us = or i1 %cmp54.i.i.us, %cmp.not.i.i
  br i1 %or.cond103.i.i.us, label %pixel_memset.exit.i.us, label %if.then56.i.i.us

if.then56.i.i.us:                                 ; preds = %if.end50.i.i.us
  %arrayidx58.i.i.us = getelementptr inbounds i8, i8* %add.ptr1.i.us, i32 %i12.3.i.i.us
  store i8 %8, i8* %arrayidx58.i.i.us, align 1, !tbaa !87
  br label %pixel_memset.exit.i.us

pixel_memset.exit.i.us:                           ; preds = %if.then56.i.i.us, %if.end50.i.i.us
  %add.ptr7.i.us = getelementptr inbounds i8, i8* %add.ptr5.i, i32 %mul.i.us
  %add.ptr12.i.us = getelementptr inbounds i8, i8* %add.ptr10.i, i32 %mul.i.us
  %11 = load i8, i8* %add.ptr12.i.us, align 1, !tbaa !87
  %i.i107.i.us = bitcast i8* %add.ptr12.i.us to i16*
  %12 = load i16, i16* %i.i107.i.us, align 2, !tbaa !87
  %conv2.i108.i.us = zext i16 %12 to i32
  %add7.i115.i.us = mul nuw i32 %conv2.i108.i.us, 65537
  %13 = ptrtoint i8* %add.ptr7.i.us to i32
  %and.i117.i.us = and i32 %13, 3
  %tobool.i118.i.us = icmp eq i32 %and.i117.i.us, 0
  br i1 %tobool.i118.i.us, label %if.end33.i142.i.us, label %if.then17.i124.i.us

if.then17.i124.i.us:                              ; preds = %pixel_memset.exit.i.us
  %and21.i121.i.us = and i32 %13, 1
  %tobool22.i122.i.us = icmp eq i32 %and21.i121.i.us, 0
  %or.cond101.i123.i.us = or i1 %tobool22.i122.i.us, %cmp.not.i.i
  br i1 %or.cond101.i123.i.us, label %if.end.i129.i.us, label %if.then23.i125.i.us

if.then23.i125.i.us:                              ; preds = %if.then17.i124.i.us
  store i8 %11, i8* %add.ptr7.i.us, align 1, !tbaa !87
  br label %if.end.i129.i.us

if.end.i129.i.us:                                 ; preds = %if.then23.i125.i.us, %if.then17.i124.i.us
  %i12.0.i126.i.us = phi i32 [ 1, %if.then23.i125.i.us ], [ 0, %if.then17.i124.i.us ]
  %and25.i127.i.us = and i32 %13, 2
  %tobool26.i128.i.us = icmp eq i32 %and25.i127.i.us, 0
  br i1 %tobool26.i128.i.us, label %if.end33.i142.i.us, label %if.then27.i134.i.us

if.then27.i134.i.us:                              ; preds = %if.end.i129.i.us
  %add.ptr.i131.i.us = getelementptr inbounds i8, i8* %add.ptr7.i.us, i32 %i12.0.i126.i.us
  %i29.i132.i.us = bitcast i8* %add.ptr.i131.i.us to i16*
  store i16 %12, i16* %i29.i132.i.us, align 2, !tbaa !87
  %add30.i133.i.us = or i32 %i12.0.i126.i.us, 2
  br label %if.end33.i142.i.us

if.end33.i142.i.us:                               ; preds = %if.then27.i134.i.us, %if.end.i129.i.us, %pixel_memset.exit.i.us
  %i12.1.i139.i.us = phi i32 [ %add30.i133.i.us, %if.then27.i134.i.us ], [ %i12.0.i126.i.us, %if.end.i129.i.us ], [ 0, %pixel_memset.exit.i.us ]
  %cmp34121.i141.i.us = icmp slt i32 %i12.1.i139.i.us, %sub.i.us.i
  br i1 %cmp34121.i141.i.us, label %for.body.i148.i.us, label %if.then41.i153.i.us

for.body.i148.i.us:                               ; preds = %if.end33.i142.i.us, %for.body.i148.i.us
  %i12.2122.i143.i.us = phi i32 [ %add38.i146.i.us, %for.body.i148.i.us ], [ %i12.1.i139.i.us, %if.end33.i142.i.us ]
  %add.ptr36.i144.i.us = getelementptr inbounds i8, i8* %add.ptr7.i.us, i32 %i12.2122.i143.i.us
  %i37.i145.i.us = bitcast i8* %add.ptr36.i144.i.us to i32*
  store i32 %add7.i115.i.us, i32* %i37.i145.i.us, align 4, !tbaa !87
  %add38.i146.i.us = add nuw nsw i32 %i12.2122.i143.i.us, 4
  %cmp34.i147.i.us = icmp slt i32 %add38.i146.i.us, %sub.i.us.i
  br i1 %cmp34.i147.i.us, label %for.body.i148.i.us, label %if.then41.i153.i.us

if.then41.i153.i.us:                              ; preds = %for.body.i148.i.us, %if.end33.i142.i.us
  %i12.2.lcssa.i149.i.us = phi i32 [ %i12.1.i139.i.us, %if.end33.i142.i.us ], [ %add38.i146.i.us, %for.body.i148.i.us ]
  %cmp43.i152.i.us = icmp slt i32 %i12.2.lcssa.i149.i.us, %sub42.i.us.i
  br i1 %cmp43.i152.i.us, label %if.then45.i158.i.us, label %if.end50.i163.i.us

if.then45.i158.i.us:                              ; preds = %if.then41.i153.i.us
  %add.ptr47.i155.i.us = getelementptr inbounds i8, i8* %add.ptr7.i.us, i32 %i12.2.lcssa.i149.i.us
  %i48.i156.i.us = bitcast i8* %add.ptr47.i155.i.us to i16*
  store i16 %12, i16* %i48.i156.i.us, align 2, !tbaa !87
  %add49.i157.i.us = add nsw i32 %i12.2.lcssa.i149.i.us, 2
  br label %if.end50.i163.i.us

if.end50.i163.i.us:                               ; preds = %if.then45.i158.i.us, %if.then41.i153.i.us
  %i12.3.i159.i.us = phi i32 [ %add49.i157.i.us, %if.then45.i158.i.us ], [ %i12.2.lcssa.i149.i.us, %if.then41.i153.i.us ]
  %cmp54.i161.i.us = icmp eq i32 %i12.3.i159.i.us, %mul113.i.i
  %or.cond103.i162.i.us = or i1 %cmp54.i161.i.us, %cmp.not.i.i
  br i1 %or.cond103.i162.i.us, label %pixel_memset.exit166.i.us, label %if.then56.i165.i.us

if.then56.i165.i.us:                              ; preds = %if.end50.i163.i.us
  %arrayidx58.i164.i.us = getelementptr inbounds i8, i8* %add.ptr7.i.us, i32 %i12.3.i159.i.us
  store i8 %11, i8* %arrayidx58.i164.i.us, align 1, !tbaa !87
  br label %pixel_memset.exit166.i.us

pixel_memset.exit166.i.us:                        ; preds = %if.then56.i165.i.us, %if.end50.i163.i.us
  %inc.i.us = add nuw nsw i32 %y.0172.i.us, 1
  %exitcond177.i.us = icmp eq i32 %inc.i.us, %shr
  br i1 %exitcond177.i.us, label %for.cond.cleanup.i, label %for.body.i.us

for.body.us.i:                                    ; preds = %for.body.lr.ph.i, %pixel_memset.exit166.us.i
  %y.0172.us.i = phi i32 [ %inc.us.i, %pixel_memset.exit166.us.i ], [ 0, %for.body.lr.ph.i ]
  %mul.us.i = mul nsw i32 %y.0172.us.i, %2
  %add.ptr1.us.i = getelementptr inbounds i8, i8* %add.ptr.i, i32 %mul.us.i
  %add.ptr4.us.i = getelementptr inbounds i8, i8* %1, i32 %mul.us.i
  %14 = load i8, i8* %add.ptr4.us.i, align 1, !tbaa !87
  %conv.i.us.i = zext i8 %14 to i32
  %add.i.us.i = mul nuw nsw i32 %conv.i.us.i, 257
  %add7.i.us.i = mul nuw i32 %conv.i.us.i, 16843009
  %15 = ptrtoint i8* %add.ptr1.us.i to i32
  %and.i.us.i = and i32 %15, 3
  %tobool.i.us.i = icmp eq i32 %and.i.us.i, 0
  br i1 %tobool.i.us.i, label %if.end33.i.us.i, label %if.then17.i.us.i

if.then17.i.us.i:                                 ; preds = %for.body.us.i
  %and21.i.us.i = and i32 %15, 1
  %tobool22.i.us.i = icmp eq i32 %and21.i.us.i, 0
  br i1 %tobool22.i.us.i, label %if.end.i.us.i, label %if.then23.i.us.i

if.then23.i.us.i:                                 ; preds = %if.then17.i.us.i
  store i8 %14, i8* %add.ptr1.us.i, align 1, !tbaa !87
  br label %if.end.i.us.i

if.end.i.us.i:                                    ; preds = %if.then23.i.us.i, %if.then17.i.us.i
  %i12.0.i.us.i = phi i32 [ 1, %if.then23.i.us.i ], [ 0, %if.then17.i.us.i ]
  %and25.i.us.i = and i32 %15, 2
  %tobool26.i.us.i = icmp eq i32 %and25.i.us.i, 0
  br i1 %tobool26.i.us.i, label %if.end33.i.us.i, label %if.then27.i.us.i

if.then27.i.us.i:                                 ; preds = %if.end.i.us.i
  %conv28.i.us.i = trunc i32 %add.i.us.i to i16
  %add.ptr.i.us.i = getelementptr inbounds i8, i8* %add.ptr1.us.i, i32 %i12.0.i.us.i
  %i29.i.us.i = bitcast i8* %add.ptr.i.us.i to i16*
  store i16 %conv28.i.us.i, i16* %i29.i.us.i, align 2, !tbaa !87
  %add30.i.us.i = or i32 %i12.0.i.us.i, 2
  br label %if.end33.i.us.i

if.end33.i.us.i:                                  ; preds = %if.then27.i.us.i, %if.end.i.us.i, %for.body.us.i
  %i12.1.i.us.i = phi i32 [ %add30.i.us.i, %if.then27.i.us.i ], [ %i12.0.i.us.i, %if.end.i.us.i ], [ 0, %for.body.us.i ]
  %cmp34121.i.us.i = icmp slt i32 %i12.1.i.us.i, %sub.i.us.i
  br i1 %cmp34121.i.us.i, label %for.body.i.us.i, label %if.then41.i.us.i

for.body.i.us.i:                                  ; preds = %if.end33.i.us.i, %for.body.i.us.i
  %i12.2122.i.us.i = phi i32 [ %add38.i.us.i, %for.body.i.us.i ], [ %i12.1.i.us.i, %if.end33.i.us.i ]
  %add.ptr36.i.us.i = getelementptr inbounds i8, i8* %add.ptr1.us.i, i32 %i12.2122.i.us.i
  %i37.i.us.i = bitcast i8* %add.ptr36.i.us.i to i32*
  store i32 %add7.i.us.i, i32* %i37.i.us.i, align 4, !tbaa !87
  %add38.i.us.i = add nuw nsw i32 %i12.2122.i.us.i, 4
  %cmp34.i.us.i = icmp slt i32 %add38.i.us.i, %sub.i.us.i
  br i1 %cmp34.i.us.i, label %for.body.i.us.i, label %if.then41.i.us.i

if.then41.i.us.i:                                 ; preds = %for.body.i.us.i, %if.end33.i.us.i
  %i12.2.lcssa.i.us.i = phi i32 [ %i12.1.i.us.i, %if.end33.i.us.i ], [ %add38.i.us.i, %for.body.i.us.i ]
  %cmp43.i.us.i = icmp slt i32 %i12.2.lcssa.i.us.i, %sub42.i.us.i
  br i1 %cmp43.i.us.i, label %if.then45.i.us.i, label %if.end50.i.us.i

if.then45.i.us.i:                                 ; preds = %if.then41.i.us.i
  %conv46.i.us.i = trunc i32 %add.i.us.i to i16
  %add.ptr47.i.us.i = getelementptr inbounds i8, i8* %add.ptr1.us.i, i32 %i12.2.lcssa.i.us.i
  %i48.i.us.i = bitcast i8* %add.ptr47.i.us.i to i16*
  store i16 %conv46.i.us.i, i16* %i48.i.us.i, align 2, !tbaa !87
  %add49.i.us.i = add nsw i32 %i12.2.lcssa.i.us.i, 2
  br label %if.end50.i.us.i

if.end50.i.us.i:                                  ; preds = %if.then45.i.us.i, %if.then41.i.us.i
  %i12.3.i.us.i = phi i32 [ %add49.i.us.i, %if.then45.i.us.i ], [ %i12.2.lcssa.i.us.i, %if.then41.i.us.i ]
  %cmp54.i.us.i = icmp eq i32 %i12.3.i.us.i, %mul113.i.i
  br i1 %cmp54.i.us.i, label %pixel_memset.exit.us.i, label %if.then56.i.us.i

if.then56.i.us.i:                                 ; preds = %if.end50.i.us.i
  %arrayidx58.i.us.i = getelementptr inbounds i8, i8* %add.ptr1.us.i, i32 %i12.3.i.us.i
  store i8 %14, i8* %arrayidx58.i.us.i, align 1, !tbaa !87
  br label %pixel_memset.exit.us.i

pixel_memset.exit.us.i:                           ; preds = %if.then56.i.us.i, %if.end50.i.us.i
  %add.ptr7.us.i = getelementptr inbounds i8, i8* %add.ptr5.i, i32 %mul.us.i
  %add.ptr12.us.i = getelementptr inbounds i8, i8* %add.ptr10.i, i32 %mul.us.i
  %16 = load i8, i8* %add.ptr12.us.i, align 1, !tbaa !87
  %conv.i104.us.i = zext i8 %16 to i32
  %add.i105.us.i = mul nuw nsw i32 %conv.i104.us.i, 257
  %add7.i115.us.i = mul nuw i32 %conv.i104.us.i, 16843009
  %17 = ptrtoint i8* %add.ptr7.us.i to i32
  %and.i117.us.i = and i32 %17, 3
  %tobool.i118.us.i = icmp eq i32 %and.i117.us.i, 0
  br i1 %tobool.i118.us.i, label %if.end33.i142.us.i, label %if.then17.i124.us.i

if.then17.i124.us.i:                              ; preds = %pixel_memset.exit.us.i
  %and21.i121.us.i = and i32 %17, 1
  %tobool22.i122.us.i = icmp eq i32 %and21.i121.us.i, 0
  br i1 %tobool22.i122.us.i, label %if.end.i129.us.i, label %if.then23.i125.us.i

if.then23.i125.us.i:                              ; preds = %if.then17.i124.us.i
  store i8 %16, i8* %add.ptr7.us.i, align 1, !tbaa !87
  br label %if.end.i129.us.i

if.end.i129.us.i:                                 ; preds = %if.then23.i125.us.i, %if.then17.i124.us.i
  %i12.0.i126.us.i = phi i32 [ 1, %if.then23.i125.us.i ], [ 0, %if.then17.i124.us.i ]
  %and25.i127.us.i = and i32 %17, 2
  %tobool26.i128.us.i = icmp eq i32 %and25.i127.us.i, 0
  br i1 %tobool26.i128.us.i, label %if.end33.i142.us.i, label %if.then27.i134.us.i

if.then27.i134.us.i:                              ; preds = %if.end.i129.us.i
  %conv28.i130.us.i = trunc i32 %add.i105.us.i to i16
  %add.ptr.i131.us.i = getelementptr inbounds i8, i8* %add.ptr7.us.i, i32 %i12.0.i126.us.i
  %i29.i132.us.i = bitcast i8* %add.ptr.i131.us.i to i16*
  store i16 %conv28.i130.us.i, i16* %i29.i132.us.i, align 2, !tbaa !87
  %add30.i133.us.i = or i32 %i12.0.i126.us.i, 2
  br label %if.end33.i142.us.i

if.end33.i142.us.i:                               ; preds = %if.then27.i134.us.i, %if.end.i129.us.i, %pixel_memset.exit.us.i
  %i12.1.i139.us.i = phi i32 [ %add30.i133.us.i, %if.then27.i134.us.i ], [ %i12.0.i126.us.i, %if.end.i129.us.i ], [ 0, %pixel_memset.exit.us.i ]
  %cmp34121.i141.us.i = icmp slt i32 %i12.1.i139.us.i, %sub.i.us.i
  br i1 %cmp34121.i141.us.i, label %for.body.i148.us.i, label %if.then41.i153.us.i

for.body.i148.us.i:                               ; preds = %if.end33.i142.us.i, %for.body.i148.us.i
  %i12.2122.i143.us.i = phi i32 [ %add38.i146.us.i, %for.body.i148.us.i ], [ %i12.1.i139.us.i, %if.end33.i142.us.i ]
  %add.ptr36.i144.us.i = getelementptr inbounds i8, i8* %add.ptr7.us.i, i32 %i12.2122.i143.us.i
  %i37.i145.us.i = bitcast i8* %add.ptr36.i144.us.i to i32*
  store i32 %add7.i115.us.i, i32* %i37.i145.us.i, align 4, !tbaa !87
  %add38.i146.us.i = add nuw nsw i32 %i12.2122.i143.us.i, 4
  %cmp34.i147.us.i = icmp slt i32 %add38.i146.us.i, %sub.i.us.i
  br i1 %cmp34.i147.us.i, label %for.body.i148.us.i, label %if.then41.i153.us.i

if.then41.i153.us.i:                              ; preds = %for.body.i148.us.i, %if.end33.i142.us.i
  %i12.2.lcssa.i149.us.i = phi i32 [ %i12.1.i139.us.i, %if.end33.i142.us.i ], [ %add38.i146.us.i, %for.body.i148.us.i ]
  %cmp43.i152.us.i = icmp slt i32 %i12.2.lcssa.i149.us.i, %sub42.i.us.i
  br i1 %cmp43.i152.us.i, label %if.then45.i158.us.i, label %if.end50.i163.us.i

if.then45.i158.us.i:                              ; preds = %if.then41.i153.us.i
  %conv46.i154.us.i = trunc i32 %add.i105.us.i to i16
  %add.ptr47.i155.us.i = getelementptr inbounds i8, i8* %add.ptr7.us.i, i32 %i12.2.lcssa.i149.us.i
  %i48.i156.us.i = bitcast i8* %add.ptr47.i155.us.i to i16*
  store i16 %conv46.i154.us.i, i16* %i48.i156.us.i, align 2, !tbaa !87
  %add49.i157.us.i = add nsw i32 %i12.2.lcssa.i149.us.i, 2
  br label %if.end50.i163.us.i

if.end50.i163.us.i:                               ; preds = %if.then45.i158.us.i, %if.then41.i153.us.i
  %i12.3.i159.us.i = phi i32 [ %add49.i157.us.i, %if.then45.i158.us.i ], [ %i12.2.lcssa.i149.us.i, %if.then41.i153.us.i ]
  %cmp54.i161.us.i = icmp eq i32 %i12.3.i159.us.i, %mul113.i.i
  br i1 %cmp54.i161.us.i, label %pixel_memset.exit166.us.i, label %if.then56.i165.us.i

if.then56.i165.us.i:                              ; preds = %if.end50.i163.us.i
  %arrayidx58.i164.us.i = getelementptr inbounds i8, i8* %add.ptr7.us.i, i32 %i12.3.i159.us.i
  store i8 %16, i8* %arrayidx58.i164.us.i, align 1, !tbaa !87
  br label %pixel_memset.exit166.us.i

pixel_memset.exit166.us.i:                        ; preds = %if.then56.i165.us.i, %if.end50.i163.us.i
  %inc.us.i = add nuw nsw i32 %y.0172.us.i, 1
  %exitcond176.i = icmp eq i32 %inc.us.i, %shr
  br i1 %exitcond176.i, label %for.cond.cleanup.i, label %for.body.us.i

for.cond.cleanup.i:                               ; preds = %for.end.i150.i, %pixel_memset.exit166.i.us, %pixel_memset.exit166.us.i, %entry
  %cmp17169.i = icmp sgt i32 %shr6, 0
  br i1 %cmp17169.i, label %for.body19.lr.ph.i, label %plane_expand_border.exit

for.body19.lr.ph.i:                               ; preds = %for.cond.cleanup.i
  %add.ptr21.i = getelementptr inbounds i8, i8* %1, i32 -32
  %add.i = add nsw i32 %mul, 64
  br label %for.body19.i

for.body.i:                                       ; preds = %for.body.i.preheader20, %for.end.i150.i
  %y.0172.i = phi i32 [ %inc.i, %for.end.i150.i ], [ 0, %for.body.i.preheader20 ]
  %mul.i = mul nsw i32 %y.0172.i, %2
  %add.ptr1.i = getelementptr inbounds i8, i8* %add.ptr.i, i32 %mul.i
  %add.ptr4.i = getelementptr inbounds i8, i8* %1, i32 %mul.i
  %i9.i.i = bitcast i8* %add.ptr4.i to i32*
  %18 = load i32, i32* %i9.i.i, align 4, !tbaa !87
  br i1 %cmp34121.i.i, label %for.end.i150.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i, %for.body.i.i
  %i12.2122.i.i = phi i32 [ %add38.i.i, %for.body.i.i ], [ 0, %for.body.i ]
  %add.ptr36.i.i = getelementptr inbounds i8, i8* %add.ptr1.i, i32 %i12.2122.i.i
  %i37.i.i = bitcast i8* %add.ptr36.i.i to i32*
  store i32 %18, i32* %i37.i.i, align 4, !tbaa !87
  %add38.i.i = add nuw nsw i32 %i12.2122.i.i, 4
  %cmp34.i.i = icmp slt i32 %add38.i.i, %sub.i.us.i
  br i1 %cmp34.i.i, label %for.body.i.i, label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  %add.ptr7.i = getelementptr inbounds i8, i8* %add.ptr5.i, i32 %mul.i
  %add.ptr12.i = getelementptr inbounds i8, i8* %add.ptr10.i, i32 %mul.i
  %i9.i111.i = bitcast i8* %add.ptr12.i to i32*
  %19 = load i32, i32* %i9.i111.i, align 4, !tbaa !87
  br i1 %cmp34121.i.i, label %for.end.i150.i, label %for.body.i148.i

for.body.i148.i:                                  ; preds = %for.end.i.i, %for.body.i148.i
  %i12.2122.i143.i = phi i32 [ %add38.i146.i, %for.body.i148.i ], [ 0, %for.end.i.i ]
  %add.ptr36.i144.i = getelementptr inbounds i8, i8* %add.ptr7.i, i32 %i12.2122.i143.i
  %i37.i145.i = bitcast i8* %add.ptr36.i144.i to i32*
  store i32 %19, i32* %i37.i145.i, align 4, !tbaa !87
  %add38.i146.i = add nuw nsw i32 %i12.2122.i143.i, 4
  %cmp34.i147.i = icmp slt i32 %add38.i146.i, %sub.i.us.i
  br i1 %cmp34.i147.i, label %for.body.i148.i, label %for.end.i150.i

for.end.i150.i:                                   ; preds = %for.body.i148.i, %for.body.i, %for.end.i.i
  %inc.i = add nuw nsw i32 %y.0172.i, 1
  %exitcond177.i = icmp eq i32 %inc.i, %shr
  br i1 %exitcond177.i, label %for.cond.cleanup.i, label %for.body.i

for.body19.i:                                     ; preds = %for.body19.i, %for.body19.lr.ph.i
  %y15.0170.i = phi i32 [ 0, %for.body19.lr.ph.i ], [ %inc33.i, %for.body19.i ]
  %sub23.i = xor i32 %y15.0170.i, -1
  %mul24.i = mul nsw i32 %2, %sub23.i
  %add.ptr25.i = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul24.i
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr25.i, i8* nonnull align 1 %add.ptr21.i, i32 %add.i, i1 false) #7
  %inc33.i = add nuw nsw i32 %y15.0170.i, 1
  %exitcond175.i = icmp eq i32 %inc33.i, %shr6
  br i1 %exitcond175.i, label %for.body41.lr.ph.i, label %for.body19.i

for.body41.lr.ph.i:                               ; preds = %for.body19.i
  %sub49.i = add nsw i32 %shr, -1
  %mul50.i = mul nsw i32 %sub49.i, %2
  %add.ptr51.i = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul50.i
  br label %for.body41.i

for.body41.i:                                     ; preds = %for.body41.i, %for.body41.lr.ph.i
  %y37.0168.i = phi i32 [ 0, %for.body41.lr.ph.i ], [ %inc56.i, %for.body41.i ]
  %add44.i = add nsw i32 %y37.0168.i, %shr
  %mul45.i = mul nsw i32 %add44.i, %2
  %add.ptr46.i = getelementptr inbounds i8, i8* %add.ptr21.i, i32 %mul45.i
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46.i, i8* nonnull align 1 %add.ptr51.i, i32 %add.i, i1 false) #7
  %inc56.i = add nuw nsw i32 %y37.0168.i, 1
  %exitcond.i = icmp eq i32 %inc56.i, %shr6
  br i1 %exitcond.i, label %plane_expand_border.exit, label %for.body41.i

plane_expand_border.exit:                         ; preds = %for.body41.i, %for.cond.cleanup.i
  ret void
}

; Function Attrs: nounwind
define hidden void @x264_8_frame_expand_border_mod16(%struct.x264_t* nocapture readonly %h, %struct.x264_frame* nocapture readonly %frame) local_unnamed_addr #0 {
entry:
  %i_plane = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 30
  %0 = load i32, i32* %i_plane, align 16, !tbaa !83
  %cmp128 = icmp sgt i32 %0, 0
  br i1 %cmp128, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %entry
  %i_width1 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 7
  %chroma_h_shift = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 3
  %chroma_v_shift = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 4
  %i_height10 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 8
  %i_mb_width = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 0
  %i_mb_height = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 1
  br label %for.body

for.cond.cleanup:                                 ; preds = %if.end65, %entry
  ret void

for.body:                                         ; preds = %for.body.lr.ph, %if.end65
  %i.0129 = phi i32 [ 0, %for.body.lr.ph ], [ %inc67, %if.end65 ]
  %1 = load i32, i32* %i_width1, align 4, !tbaa !74
  %tobool = icmp eq i32 %i.0129, 0
  br i1 %tobool, label %land.end7, label %land.rhs4

land.rhs4:                                        ; preds = %for.body
  %2 = load i32, i32* %chroma_h_shift, align 4, !tbaa !85
  %tobool2 = icmp ne i32 %2, 0
  %land.ext121 = zext i1 %tobool2 to i32
  %3 = load i32, i32* %chroma_v_shift, align 16, !tbaa !77
  %tobool6 = icmp ne i32 %3, 0
  br label %land.end7

land.end7:                                        ; preds = %for.body, %land.rhs4
  %land.ext122 = phi i32 [ %land.ext121, %land.rhs4 ], [ 0, %for.body ]
  %4 = phi i1 [ %tobool6, %land.rhs4 ], [ false, %for.body ]
  %land.ext8 = zext i1 %4 to i32
  %5 = load i32, i32* %i_height10, align 32, !tbaa !75
  %shr = ashr i32 %5, %land.ext8
  %6 = load i32, i32* %i_mb_width, align 64, !tbaa !86
  %mul = shl nsw i32 %6, 4
  %sub = sub nsw i32 %mul, %1
  %7 = load i32, i32* %i_mb_height, align 4, !tbaa !81
  %mul15 = shl nsw i32 %7, 4
  %sub18 = sub nsw i32 %mul15, %5
  %shr19 = ashr i32 %sub18, %land.ext8
  %tobool20 = icmp ne i32 %sub, 0
  %cmp22124 = icmp sgt i32 %shr, 0
  %or.cond = and i1 %tobool20, %cmp22124
  br i1 %or.cond, label %for.body24.lr.ph, label %if.end

for.body24.lr.ph:                                 ; preds = %land.end7
  %arrayidx = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 37, i32 %i.0129
  %arrayidx25 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 31, i32 %i.0129
  %8 = xor i32 %land.ext122, -1
  %cmp.i = icmp eq i32 %land.ext122, 0
  %9 = shl nsw i32 -1, %land.ext122
  %mul.i = and i32 %sub, %9
  %cmp.not.i = xor i1 %cmp.i, true
  %sub.i = add nsw i32 %mul.i, -3
  %sub42.i = add nsw i32 %mul.i, -1
  br i1 %cmp.i, label %for.body24.us, label %for.body24

for.body24.us:                                    ; preds = %for.body24.lr.ph, %pixel_memset.exit.us
  %y.0125.us = phi i32 [ %inc.us, %pixel_memset.exit.us ], [ 0, %for.body24.lr.ph ]
  %10 = load i8*, i8** %arrayidx, align 4, !tbaa !67
  %11 = load i32, i32* %arrayidx25, align 4, !tbaa !66
  %mul26.us = mul nsw i32 %11, %y.0125.us
  %add.us = add nsw i32 %mul26.us, %1
  %arrayidx27.us = getelementptr inbounds i8, i8* %10, i32 %add.us
  %sub35.us = add i32 %add.us, %8
  %arrayidx36.us = getelementptr inbounds i8, i8* %10, i32 %sub35.us
  %12 = load i8, i8* %arrayidx36.us, align 1, !tbaa !87
  %conv.i.us = zext i8 %12 to i32
  %add.i.us = mul nuw nsw i32 %conv.i.us, 257
  %add7.i.us = mul nuw i32 %conv.i.us, 16843009
  %13 = ptrtoint i8* %arrayidx27.us to i32
  %and.i.us = and i32 %13, 3
  %tobool.i.us = icmp eq i32 %and.i.us, 0
  br i1 %tobool.i.us, label %if.end33.i.us, label %if.then17.i.us

if.then17.i.us:                                   ; preds = %for.body24.us
  %and21.i.us = and i32 %13, 1
  %tobool22.i.us = icmp eq i32 %and21.i.us, 0
  %or.cond101.i.us = or i1 %tobool22.i.us, %cmp.not.i
  br i1 %or.cond101.i.us, label %if.end.i.us, label %if.then23.i.us

if.then23.i.us:                                   ; preds = %if.then17.i.us
  store i8 %12, i8* %arrayidx27.us, align 1, !tbaa !87
  br label %if.end.i.us

if.end.i.us:                                      ; preds = %if.then23.i.us, %if.then17.i.us
  %i12.0.i.us = phi i32 [ 1, %if.then23.i.us ], [ 0, %if.then17.i.us ]
  %and25.i.us = and i32 %13, 2
  %tobool26.i.us = icmp eq i32 %and25.i.us, 0
  br i1 %tobool26.i.us, label %if.end33.i.us, label %if.then27.i.us

if.then27.i.us:                                   ; preds = %if.end.i.us
  %conv28.i.us = trunc i32 %add.i.us to i16
  %add.ptr.i.us = getelementptr inbounds i8, i8* %arrayidx27.us, i32 %i12.0.i.us
  %i29.i.us = bitcast i8* %add.ptr.i.us to i16*
  store i16 %conv28.i.us, i16* %i29.i.us, align 2, !tbaa !87
  %add30.i.us = or i32 %i12.0.i.us, 2
  br label %if.end33.i.us

if.end33.i.us:                                    ; preds = %if.then27.i.us, %if.end.i.us, %for.body24.us
  %i12.1.i.us = phi i32 [ %add30.i.us, %if.then27.i.us ], [ %i12.0.i.us, %if.end.i.us ], [ 0, %for.body24.us ]
  %cmp34121.i.us = icmp slt i32 %i12.1.i.us, %sub.i
  br i1 %cmp34121.i.us, label %for.body.i.us, label %if.then41.i.us

for.body.i.us:                                    ; preds = %if.end33.i.us, %for.body.i.us
  %i12.2122.i.us = phi i32 [ %add38.i.us, %for.body.i.us ], [ %i12.1.i.us, %if.end33.i.us ]
  %add.ptr36.i.us = getelementptr inbounds i8, i8* %arrayidx27.us, i32 %i12.2122.i.us
  %i37.i.us = bitcast i8* %add.ptr36.i.us to i32*
  store i32 %add7.i.us, i32* %i37.i.us, align 4, !tbaa !87
  %add38.i.us = add nuw nsw i32 %i12.2122.i.us, 4
  %cmp34.i.us = icmp slt i32 %add38.i.us, %sub.i
  br i1 %cmp34.i.us, label %for.body.i.us, label %if.then41.i.us

if.then41.i.us:                                   ; preds = %for.body.i.us, %if.end33.i.us
  %i12.2.lcssa.i.us = phi i32 [ %i12.1.i.us, %if.end33.i.us ], [ %add38.i.us, %for.body.i.us ]
  %cmp43.i.us = icmp slt i32 %i12.2.lcssa.i.us, %sub42.i
  br i1 %cmp43.i.us, label %if.then45.i.us, label %if.end50.i.us

if.then45.i.us:                                   ; preds = %if.then41.i.us
  %conv46.i.us = trunc i32 %add.i.us to i16
  %add.ptr47.i.us = getelementptr inbounds i8, i8* %arrayidx27.us, i32 %i12.2.lcssa.i.us
  %i48.i.us = bitcast i8* %add.ptr47.i.us to i16*
  store i16 %conv46.i.us, i16* %i48.i.us, align 2, !tbaa !87
  %add49.i.us = add nsw i32 %i12.2.lcssa.i.us, 2
  br label %if.end50.i.us

if.end50.i.us:                                    ; preds = %if.then45.i.us, %if.then41.i.us
  %i12.3.i.us = phi i32 [ %add49.i.us, %if.then45.i.us ], [ %i12.2.lcssa.i.us, %if.then41.i.us ]
  %cmp54.i.us = icmp eq i32 %i12.3.i.us, %mul.i
  %or.cond103.i.us = or i1 %cmp54.i.us, %cmp.not.i
  br i1 %or.cond103.i.us, label %pixel_memset.exit.us, label %if.then56.i.us

if.then56.i.us:                                   ; preds = %if.end50.i.us
  %arrayidx58.i.us = getelementptr inbounds i8, i8* %arrayidx27.us, i32 %i12.3.i.us
  store i8 %12, i8* %arrayidx58.i.us, align 1, !tbaa !87
  br label %pixel_memset.exit.us

pixel_memset.exit.us:                             ; preds = %if.then56.i.us, %if.end50.i.us
  %inc.us = add nuw nsw i32 %y.0125.us, 1
  %exitcond135 = icmp eq i32 %inc.us, %shr
  br i1 %exitcond135, label %if.end, label %for.body24.us

for.body24:                                       ; preds = %for.body24.lr.ph, %pixel_memset.exit
  %y.0125 = phi i32 [ %inc, %pixel_memset.exit ], [ 0, %for.body24.lr.ph ]
  %14 = load i8*, i8** %arrayidx, align 4, !tbaa !67
  %15 = load i32, i32* %arrayidx25, align 4, !tbaa !66
  %mul26 = mul nsw i32 %15, %y.0125
  %add = add nsw i32 %mul26, %1
  %arrayidx27 = getelementptr inbounds i8, i8* %14, i32 %add
  %sub35 = add i32 %add, %8
  %arrayidx36 = getelementptr inbounds i8, i8* %14, i32 %sub35
  %16 = load i8, i8* %arrayidx36, align 1, !tbaa !87
  %i.i = bitcast i8* %arrayidx36 to i16*
  %17 = load i16, i16* %i.i, align 2, !tbaa !87
  %conv2.i = zext i16 %17 to i32
  %add7.i = mul nuw i32 %conv2.i, 65537
  %18 = ptrtoint i8* %arrayidx27 to i32
  %and.i = and i32 %18, 3
  %tobool.i = icmp eq i32 %and.i, 0
  br i1 %tobool.i, label %if.end33.i, label %if.then17.i

if.then17.i:                                      ; preds = %for.body24
  %and21.i = and i32 %18, 1
  %tobool22.i = icmp eq i32 %and21.i, 0
  %or.cond101.i = or i1 %tobool22.i, %cmp.not.i
  br i1 %or.cond101.i, label %if.end.i, label %if.then23.i

if.then23.i:                                      ; preds = %if.then17.i
  store i8 %16, i8* %arrayidx27, align 1, !tbaa !87
  br label %if.end.i

if.end.i:                                         ; preds = %if.then23.i, %if.then17.i
  %i12.0.i = phi i32 [ 1, %if.then23.i ], [ 0, %if.then17.i ]
  %and25.i = and i32 %18, 2
  %tobool26.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.i, label %if.end33.i, label %if.then27.i

if.then27.i:                                      ; preds = %if.end.i
  %add.ptr.i = getelementptr inbounds i8, i8* %arrayidx27, i32 %i12.0.i
  %i29.i = bitcast i8* %add.ptr.i to i16*
  store i16 %17, i16* %i29.i, align 2, !tbaa !87
  %add30.i = or i32 %i12.0.i, 2
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then27.i, %if.end.i, %for.body24
  %i12.1.i = phi i32 [ %add30.i, %if.then27.i ], [ %i12.0.i, %if.end.i ], [ 0, %for.body24 ]
  %cmp34121.i = icmp slt i32 %i12.1.i, %sub.i
  br i1 %cmp34121.i, label %for.body.i, label %if.then41.i

for.body.i:                                       ; preds = %if.end33.i, %for.body.i
  %i12.2122.i = phi i32 [ %add38.i, %for.body.i ], [ %i12.1.i, %if.end33.i ]
  %add.ptr36.i = getelementptr inbounds i8, i8* %arrayidx27, i32 %i12.2122.i
  %i37.i = bitcast i8* %add.ptr36.i to i32*
  store i32 %add7.i, i32* %i37.i, align 4, !tbaa !87
  %add38.i = add nuw nsw i32 %i12.2122.i, 4
  %cmp34.i = icmp slt i32 %add38.i, %sub.i
  br i1 %cmp34.i, label %for.body.i, label %if.then41.i

if.then41.i:                                      ; preds = %for.body.i, %if.end33.i
  %i12.2.lcssa.i = phi i32 [ %i12.1.i, %if.end33.i ], [ %add38.i, %for.body.i ]
  %cmp43.i = icmp slt i32 %i12.2.lcssa.i, %sub42.i
  br i1 %cmp43.i, label %if.then45.i, label %if.end50.i

if.then45.i:                                      ; preds = %if.then41.i
  %add.ptr47.i = getelementptr inbounds i8, i8* %arrayidx27, i32 %i12.2.lcssa.i
  %i48.i = bitcast i8* %add.ptr47.i to i16*
  store i16 %17, i16* %i48.i, align 2, !tbaa !87
  %add49.i = add nsw i32 %i12.2.lcssa.i, 2
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then45.i, %if.then41.i
  %i12.3.i = phi i32 [ %add49.i, %if.then45.i ], [ %i12.2.lcssa.i, %if.then41.i ]
  %cmp54.i = icmp eq i32 %i12.3.i, %mul.i
  %or.cond103.i = or i1 %cmp54.i, %cmp.not.i
  br i1 %or.cond103.i, label %pixel_memset.exit, label %if.then56.i

if.then56.i:                                      ; preds = %if.end50.i
  %arrayidx58.i = getelementptr inbounds i8, i8* %arrayidx27, i32 %i12.3.i
  store i8 %16, i8* %arrayidx58.i, align 1, !tbaa !87
  br label %pixel_memset.exit

pixel_memset.exit:                                ; preds = %if.end50.i, %if.then56.i
  %inc = add nuw nsw i32 %y.0125, 1
  %exitcond = icmp eq i32 %inc, %shr
  br i1 %exitcond, label %if.end, label %for.body24

if.end:                                           ; preds = %pixel_memset.exit, %pixel_memset.exit.us, %land.end7
  %tobool38 = icmp eq i32 %shr19, 0
  br i1 %tobool38, label %if.end65, label %for.cond41.preheader

for.cond41.preheader:                             ; preds = %if.end
  %add42 = add nsw i32 %shr19, %shr
  %cmp43126 = icmp sgt i32 %shr19, 0
  br i1 %cmp43126, label %for.body45.lr.ph, label %if.end65

for.body45.lr.ph:                                 ; preds = %for.cond41.preheader
  %arrayidx47 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 37, i32 %i.0129
  %arrayidx49 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 31, i32 %i.0129
  %sub55 = add nsw i32 %shr, -1
  br label %for.body45

for.body45:                                       ; preds = %for.body45.lr.ph, %for.body45
  %y40.0127 = phi i32 [ %shr, %for.body45.lr.ph ], [ %inc63, %for.body45 ]
  %19 = load i8*, i8** %arrayidx47, align 4, !tbaa !67
  %20 = load i32, i32* %arrayidx49, align 4, !tbaa !66
  %mul50 = mul nsw i32 %20, %y40.0127
  %arrayidx51 = getelementptr inbounds i8, i8* %19, i32 %mul50
  %mul58 = mul nsw i32 %20, %sub55
  %arrayidx59 = getelementptr inbounds i8, i8* %19, i32 %mul58
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %arrayidx51, i8* align 1 %arrayidx59, i32 %mul, i1 false)
  %inc63 = add nsw i32 %y40.0127, 1
  %cmp43 = icmp slt i32 %inc63, %add42
  br i1 %cmp43, label %for.body45, label %if.end65

if.end65:                                         ; preds = %for.body45, %for.cond41.preheader, %if.end
  %inc67 = add nuw nsw i32 %i.0129, 1
  %21 = load i32, i32* %i_plane, align 16, !tbaa !83
  %cmp = icmp slt i32 %inc67, %21
  br i1 %cmp, label %for.body, label %for.cond.cleanup
}

; Function Attrs: nounwind
define hidden void @x264_8_expand_border_mbpair(%struct.x264_t* nocapture readonly %h, i32 %mb_x, i32 %mb_y) local_unnamed_addr #0 {
entry:
  %fenc = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 60
  %0 = load %struct.x264_frame*, %struct.x264_frame** %fenc, align 8, !tbaa !95
  %i_plane49 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %0, i32 0, i32 30
  %1 = load i32, i32* %i_plane49, align 16, !tbaa !83
  %cmp50 = icmp sgt i32 %1, 0
  br i1 %cmp50, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %entry
  %chroma_v_shift = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 4
  %i_height = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 8
  %i_mb_height = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 1
  %mul10 = shl nsw i32 %mb_x, 4
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.cond.cleanup13, %entry
  ret void

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.cleanup13
  %2 = phi %struct.x264_frame* [ %0, %for.body.lr.ph ], [ %9, %for.cond.cleanup13 ]
  %i.051 = phi i32 [ 0, %for.body.lr.ph ], [ %inc21, %for.cond.cleanup13 ]
  %tobool = icmp eq i32 %i.051, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %for.body
  %3 = load i32, i32* %chroma_v_shift, align 16, !tbaa !77
  %tobool1 = icmp ne i32 %3, 0
  br label %land.end

land.end:                                         ; preds = %for.body, %land.rhs
  %4 = phi i1 [ false, %for.body ], [ %tobool1, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  %arrayidx = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %2, i32 0, i32 31, i32 %i.051
  %5 = load i32, i32* %arrayidx, align 4, !tbaa !66
  %6 = load i32, i32* %i_height, align 32, !tbaa !75
  %shr = ashr i32 %6, %land.ext
  %7 = load i32, i32* %i_mb_height, align 4, !tbaa !81
  %mul = shl nsw i32 %7, 4
  %sub = sub nsw i32 %mul, %6
  %shr6 = ashr i32 %sub, %land.ext
  %arrayidx9 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %2, i32 0, i32 37, i32 %i.051
  %8 = load i8*, i8** %arrayidx9, align 4, !tbaa !67
  %add.ptr = getelementptr inbounds i8, i8* %8, i32 %mul10
  %add = add nsw i32 %shr6, %shr
  %cmp1247 = icmp sgt i32 %shr6, 0
  br i1 %cmp1247, label %for.body14.lr.ph, label %for.cond.cleanup13

for.body14.lr.ph:                                 ; preds = %land.end
  %sub17 = add nsw i32 %shr, -1
  %mul18 = mul nsw i32 %sub17, %5
  %add.ptr19 = getelementptr inbounds i8, i8* %add.ptr, i32 %mul18
  br label %for.body14

for.cond.cleanup13.loopexit:                      ; preds = %for.body14
  %.pre = load %struct.x264_frame*, %struct.x264_frame** %fenc, align 8, !tbaa !95
  br label %for.cond.cleanup13

for.cond.cleanup13:                               ; preds = %for.cond.cleanup13.loopexit, %land.end
  %9 = phi %struct.x264_frame* [ %.pre, %for.cond.cleanup13.loopexit ], [ %2, %land.end ]
  %inc21 = add nuw nsw i32 %i.051, 1
  %i_plane = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %9, i32 0, i32 30
  %10 = load i32, i32* %i_plane, align 16, !tbaa !83
  %cmp = icmp slt i32 %inc21, %10
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.body14:                                       ; preds = %for.body14.lr.ph, %for.body14
  %y.048 = phi i32 [ %shr, %for.body14.lr.ph ], [ %inc, %for.body14 ]
  %mul15 = mul nsw i32 %y.048, %5
  %add.ptr16 = getelementptr inbounds i8, i8* %add.ptr, i32 %mul15
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 dereferenceable(16) %add.ptr16, i8* nonnull align 1 dereferenceable(16) %add.ptr19, i32 16, i1 false)
  %inc = add nsw i32 %y.048, 1
  %cmp12 = icmp slt i32 %inc, %add
  br i1 %cmp12, label %for.body14, label %for.cond.cleanup13.loopexit
}

; Function Attrs: nofree norecurse nounwind writeonly
define hidden void @x264_8_frame_cond_broadcast(%struct.x264_frame* nocapture %frame, i32 %i_lines_completed) local_unnamed_addr #3 {
entry:
  %i_lines_completed1 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 89
  store i32 %i_lines_completed, i32* %i_lines_completed1, align 16, !tbaa !96
  ret void
}

; Function Attrs: norecurse nounwind readonly
define hidden i32 @x264_8_frame_cond_wait(%struct.x264_frame* nocapture readonly %frame, i32 %i_lines_completed) local_unnamed_addr #4 {
entry:
  %i_lines_completed1 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 89
  %0 = load i32, i32* %i_lines_completed1, align 16, !tbaa !96
  %cmp = icmp slt i32 %0, %i_lines_completed
  %cmp2 = icmp sgt i32 %i_lines_completed, -1
  %1 = and i1 %cmp2, %cmp
  br i1 %1, label %while.cond.us, label %while.end

while.cond.us:                                    ; preds = %entry, %while.cond.us
  br label %while.cond.us

while.end:                                        ; preds = %entry
  ret i32 %0
}

; Function Attrs: nofree norecurse nounwind writeonly
define hidden void @x264_8_threadslice_cond_broadcast(%struct.x264_t* nocapture %h, i32 %pass) local_unnamed_addr #3 {
entry:
  %i_threadslice_pass = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 9
  store i32 %pass, i32* %i_threadslice_pass, align 4, !tbaa !97
  ret void
}

; Function Attrs: norecurse nounwind readonly
define hidden void @x264_8_threadslice_cond_wait(%struct.x264_t* nocapture %h, i32 %pass) local_unnamed_addr #4 {
entry:
  %i_threadslice_pass = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 9
  %0 = load i32, i32* %i_threadslice_pass, align 4, !tbaa !97
  %cmp = icmp slt i32 %0, %pass
  br i1 %cmp, label %while.cond, label %while.end.split

while.cond:                                       ; preds = %entry, %while.cond
  br label %while.cond

while.end.split:                                  ; preds = %entry
  ret void
}

; Function Attrs: nofree norecurse nounwind
define hidden i32 @x264_8_frame_new_slice(%struct.x264_t* nocapture readonly %h, %struct.x264_frame* nocapture %frame) local_unnamed_addr #5 {
entry:
  %i_slice_count_max = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 80
  %0 = load i32, i32* %i_slice_count_max, align 32, !tbaa !98
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %if.end9, label %if.then

if.then:                                          ; preds = %entry
  %i_slice_count = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 94
  %1 = load i32, i32* %i_slice_count, align 4, !tbaa !66
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %i_slice_count, align 4, !tbaa !66
  %2 = load i32, i32* %i_slice_count_max, align 32, !tbaa !98
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %if.end9, label %return

if.end9:                                          ; preds = %entry, %if.then
  br label %return

return:                                           ; preds = %if.then, %if.end9
  %retval.1 = phi i32 [ 0, %if.end9 ], [ -1, %if.then ]
  ret i32 %retval.1
}

; Function Attrs: nofree norecurse nounwind
define hidden void @x264_8_frame_push(%struct.x264_frame** nocapture %list, %struct.x264_frame* %frame) local_unnamed_addr #5 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %while.cond ]
  %arrayidx = getelementptr inbounds %struct.x264_frame*, %struct.x264_frame** %list, i32 %i.0
  %0 = load %struct.x264_frame*, %struct.x264_frame** %arrayidx, align 4, !tbaa !67
  %tobool = icmp eq %struct.x264_frame* %0, null
  %inc = add nuw nsw i32 %i.0, 1
  br i1 %tobool, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond
  store %struct.x264_frame* %frame, %struct.x264_frame** %arrayidx, align 4, !tbaa !67
  ret void
}

; Function Attrs: nounwind
define hidden %struct.x264_frame* @x264_8_frame_pop(%struct.x264_frame** nocapture %list) local_unnamed_addr #0 {
entry:
  %0 = load %struct.x264_frame*, %struct.x264_frame** %list, align 4, !tbaa !67
  %tobool = icmp eq %struct.x264_frame* %0, null
  br i1 %tobool, label %if.else, label %while.cond

if.else:                                          ; preds = %entry
  tail call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i32 745, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.x264_8_frame_pop, i32 0, i32 0)) #8
  unreachable

while.cond:                                       ; preds = %entry, %while.cond
  %i.0 = phi i32 [ %add, %while.cond ], [ 0, %entry ]
  %add = add nuw nsw i32 %i.0, 1
  %arrayidx1 = getelementptr inbounds %struct.x264_frame*, %struct.x264_frame** %list, i32 %add
  %1 = load %struct.x264_frame*, %struct.x264_frame** %arrayidx1, align 4, !tbaa !67
  %tobool2 = icmp eq %struct.x264_frame* %1, null
  br i1 %tobool2, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond
  %arrayidx3 = getelementptr inbounds %struct.x264_frame*, %struct.x264_frame** %list, i32 %i.0
  %2 = load %struct.x264_frame*, %struct.x264_frame** %arrayidx3, align 4, !tbaa !67
  store %struct.x264_frame* null, %struct.x264_frame** %arrayidx3, align 4, !tbaa !67
  ret %struct.x264_frame* %2
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #6

; Function Attrs: nofree norecurse nounwind
define hidden void @x264_8_frame_unshift(%struct.x264_frame** nocapture %list, %struct.x264_frame* %frame) local_unnamed_addr #5 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %while.cond ]
  %arrayidx = getelementptr inbounds %struct.x264_frame*, %struct.x264_frame** %list, i32 %i.0
  %0 = load %struct.x264_frame*, %struct.x264_frame** %arrayidx, align 4, !tbaa !67
  %tobool = icmp eq %struct.x264_frame* %0, null
  %inc = add nuw nsw i32 %i.0, 1
  br i1 %tobool, label %while.cond1.preheader, label %while.cond

while.cond1.preheader:                            ; preds = %while.cond
  %tobool217 = icmp eq i32 %i.0, 0
  br i1 %tobool217, label %while.end6, label %while.body3

while.body3:                                      ; preds = %while.cond1.preheader, %while.body3
  %dec19.in = phi i32 [ %dec19, %while.body3 ], [ %i.0, %while.cond1.preheader ]
  %dec19 = add nsw i32 %dec19.in, -1
  %arrayidx4 = getelementptr inbounds %struct.x264_frame*, %struct.x264_frame** %list, i32 %dec19
  %1 = bitcast %struct.x264_frame** %arrayidx4 to i32*
  %2 = load i32, i32* %1, align 4, !tbaa !67
  %arrayidx5 = getelementptr inbounds %struct.x264_frame*, %struct.x264_frame** %list, i32 %dec19.in
  %3 = bitcast %struct.x264_frame** %arrayidx5 to i32*
  store i32 %2, i32* %3, align 4, !tbaa !67
  %tobool2 = icmp eq i32 %dec19, 0
  br i1 %tobool2, label %while.end6, label %while.body3

while.end6:                                       ; preds = %while.body3, %while.cond1.preheader
  store %struct.x264_frame* %frame, %struct.x264_frame** %list, align 4, !tbaa !67
  ret void
}

; Function Attrs: nounwind
define hidden %struct.x264_frame* @x264_8_frame_shift(%struct.x264_frame** nocapture %list) local_unnamed_addr #0 {
entry:
  %0 = load %struct.x264_frame*, %struct.x264_frame** %list, align 4, !tbaa !67
  %tobool14 = icmp eq %struct.x264_frame* %0, null
  br i1 %tobool14, label %if.else, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %arrayidx116 = phi %struct.x264_frame** [ %arrayidx2, %for.body ], [ %list, %entry ]
  %i.015 = phi i32 [ %add, %for.body ], [ 0, %entry ]
  %add = add nuw nsw i32 %i.015, 1
  %arrayidx2 = getelementptr inbounds %struct.x264_frame*, %struct.x264_frame** %list, i32 %add
  %1 = bitcast %struct.x264_frame** %arrayidx2 to i32*
  %2 = load i32, i32* %1, align 4, !tbaa !67
  %3 = bitcast %struct.x264_frame** %arrayidx116 to i32*
  store i32 %2, i32* %3, align 4, !tbaa !67
  %4 = load %struct.x264_frame*, %struct.x264_frame** %arrayidx2, align 4, !tbaa !67
  %tobool = icmp eq %struct.x264_frame* %4, null
  br i1 %tobool, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  br i1 %tobool14, label %if.else, label %if.end

if.else:                                          ; preds = %entry, %for.end
  tail call void @__assert_fail(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i32 767, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.x264_8_frame_shift, i32 0, i32 0)) #8
  unreachable

if.end:                                           ; preds = %for.end
  ret %struct.x264_frame* %0
}

; Function Attrs: nounwind
define hidden void @x264_8_frame_push_unused(%struct.x264_t* nocapture readonly %h, %struct.x264_frame* %frame) local_unnamed_addr #0 {
entry:
  %i_reference_count = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 91
  %0 = load i32, i32* %i_reference_count, align 8, !tbaa !99
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.end, label %if.else

if.else:                                          ; preds = %entry
  tail call void @__assert_fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i32 773, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__.x264_8_frame_push_unused, i32 0, i32 0)) #8
  unreachable

if.end:                                           ; preds = %entry
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %i_reference_count, align 8, !tbaa !99
  %cmp3 = icmp eq i32 %dec, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %b_fdec = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 22
  %1 = load i8, i8* %b_fdec, align 8, !tbaa !100
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 59, i32 1, i32 %idxprom
  %2 = load %struct.x264_frame**, %struct.x264_frame*** %arrayidx, align 4, !tbaa !67
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i, %if.then4
  %i.0.i = phi i32 [ 0, %if.then4 ], [ %inc.i, %while.cond.i ]
  %arrayidx.i = getelementptr inbounds %struct.x264_frame*, %struct.x264_frame** %2, i32 %i.0.i
  %3 = load %struct.x264_frame*, %struct.x264_frame** %arrayidx.i, align 4, !tbaa !67
  %tobool.i = icmp eq %struct.x264_frame* %3, null
  %inc.i = add nuw nsw i32 %i.0.i, 1
  br i1 %tobool.i, label %x264_8_frame_push.exit, label %while.cond.i

x264_8_frame_push.exit:                           ; preds = %while.cond.i
  store %struct.x264_frame* %frame, %struct.x264_frame** %arrayidx.i, align 4, !tbaa !67
  br label %if.end5

if.end5:                                          ; preds = %x264_8_frame_push.exit, %if.end
  ret void
}

; Function Attrs: nounwind
define hidden %struct.x264_frame* @x264_8_frame_pop_unused(%struct.x264_t* nocapture readonly %h, i32 %b_fdec) local_unnamed_addr #0 {
entry:
  %preallocs.i = alloca [1024 x i8**], align 4
  %arrayidx = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 59, i32 1, i32 %b_fdec
  %0 = load %struct.x264_frame**, %struct.x264_frame*** %arrayidx, align 4, !tbaa !67
  %1 = load %struct.x264_frame*, %struct.x264_frame** %0, align 4, !tbaa !67
  %tobool = icmp eq %struct.x264_frame* %1, null
  br i1 %tobool, label %if.else, label %while.cond.i

while.cond.i:                                     ; preds = %entry, %while.cond.i
  %i.0.i = phi i32 [ %add.i, %while.cond.i ], [ 0, %entry ]
  %add.i = add nuw nsw i32 %i.0.i, 1
  %arrayidx1.i = getelementptr inbounds %struct.x264_frame*, %struct.x264_frame** %0, i32 %add.i
  %2 = load %struct.x264_frame*, %struct.x264_frame** %arrayidx1.i, align 4, !tbaa !67
  %tobool2.i = icmp eq %struct.x264_frame* %2, null
  br i1 %tobool2.i, label %x264_8_frame_pop.exit, label %while.cond.i

x264_8_frame_pop.exit:                            ; preds = %while.cond.i
  %arrayidx3.i = getelementptr inbounds %struct.x264_frame*, %struct.x264_frame** %0, i32 %i.0.i
  %3 = load %struct.x264_frame*, %struct.x264_frame** %arrayidx3.i, align 4, !tbaa !67
  store %struct.x264_frame* null, %struct.x264_frame** %arrayidx3.i, align 4, !tbaa !67
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = bitcast [1024 x i8**]* %preallocs.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %4)
  %i_csp1.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 9
  %5 = load i32, i32* %i_csp1.i, align 4, !tbaa !101
  %and.i.i = and i32 %5, 255
  %cmp.i.i = icmp eq i32 %and.i.i, 1
  br i1 %cmp.i.i, label %frame_internal_csp.exit.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else
  %and.off.i.i = add nsw i32 %and.i.i, -1
  %6 = icmp ult i32 %and.off.i.i, 5
  br i1 %6, label %frame_internal_csp.exit.i, label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  %and.off24.i.i = add nsw i32 %and.i.i, -6
  %7 = icmp ult i32 %and.off24.i.i, 6
  br i1 %7, label %frame_internal_csp.exit.i, label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end4.i.i
  %and.off25.i.i = add nsw i32 %and.i.i, -12
  %8 = icmp ult i32 %and.off25.i.i, 5
  %..i.i = select i1 %8, i32 12, i32 0
  br label %frame_internal_csp.exit.i

frame_internal_csp.exit.i:                        ; preds = %if.end9.i.i, %if.end4.i.i, %if.end.i.i, %if.else
  %retval.0.i.i = phi i32 [ 1, %if.else ], [ 4, %if.end.i.i ], [ 8, %if.end4.i.i ], [ %..i.i, %if.end9.i.i ]
  %i_mb_count2.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 2
  %9 = load i32, i32* %i_mb_count2.i, align 8, !tbaa !102
  %cpu.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 0
  %10 = load i32, i32* %cpu.i, align 64, !tbaa !103
  %11 = and i32 %10, 327680
  %12 = icmp eq i32 %11, 0
  %13 = and i32 %10, 131584
  %14 = icmp eq i32 %13, 0
  %spec.select1184.i = select i1 %14, i32 16, i32 32
  %align.0.i = select i1 %12, i32 %spec.select1184.i, i32 64
  %call21.i = tail call i8* @x264_malloc(i64 12032) #7
  %15 = bitcast i8* %call21.i to %struct.x264_frame*
  %tobool22.i = icmp eq i8* %call21.i, null
  br i1 %tobool22.i, label %fail.i, label %do.end.i

do.end.i:                                         ; preds = %frame_internal_csp.exit.i
  tail call void @llvm.memset.p0i8.i32(i8* nonnull align 16 dereferenceable(12032) %call21.i, i8 0, i32 12032, i1 false) #7
  %i_mb_width.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 0
  %16 = load i32, i32* %i_mb_width.i, align 64, !tbaa !86
  %mul.i = shl nsw i32 %16, 4
  %i_mb_height.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 1
  %17 = load i32, i32* %i_mb_height.i, align 4, !tbaa !81
  %mul29.i = shl nsw i32 %17, 4
  %sub.i1202.i = add nuw nsw i32 %align.0.i, 95
  %add.i1203.i = add i32 %mul.i, %sub.i1202.i
  %neg.i1204.i = sub nsw i32 0, %align.0.i
  %and.i1205.i = and i32 %add.i1203.i, %neg.i1204.i
  %and3.i1206.i = and i32 %and.i1205.i, 1008
  %tobool.i1207.i = icmp eq i32 %and3.i1206.i, 0
  %add4.i1208.i = select i1 %tobool.i1207.i, i32 %align.0.i, i32 0
  %spec.select.i1209.i = add nsw i32 %add4.i1208.i, %and.i1205.i
  %cmp.i = icmp eq i32 %retval.0.i.i, 4
  switch i32 %retval.0.i.i, label %fail.i [
    i32 8, label %if.then33.i
    i32 4, label %if.then33.i
    i32 12, label %if.then45.i
    i32 1, label %if.then63.i
  ]

if.then33.i:                                      ; preds = %do.end.i, %do.end.i
  %i_plane.i = getelementptr inbounds i8, i8* %call21.i, i32 160
  %18 = bitcast i8* %i_plane.i to i32*
  store i32 2, i32* %18, align 16, !tbaa !83
  %i_width35.i = getelementptr inbounds i8, i8* %call21.i, i32 176
  %i_lines39.i = getelementptr inbounds i8, i8* %call21.i, i32 188
  %i_stride41.i = getelementptr inbounds i8, i8* %call21.i, i32 164
  %arrayidx.i = bitcast i8* %i_width35.i to i32*
  store i32 %mul.i, i32* %arrayidx.i, align 4, !tbaa !66
  %arrayidx40.i = bitcast i8* %i_lines39.i to i32*
  store i32 %mul29.i, i32* %arrayidx40.i, align 4, !tbaa !66
  %arrayidx42.i = bitcast i8* %i_stride41.i to i32*
  store i32 %spec.select.i1209.i, i32* %arrayidx42.i, align 4, !tbaa !66
  %shr.1.i = shl nsw i32 %16, 3
  %arrayidx.1.i = getelementptr inbounds i8, i8* %call21.i, i32 180
  %19 = bitcast i8* %arrayidx.1.i to i32*
  store i32 %shr.1.i, i32* %19, align 4, !tbaa !66
  %land.ext.1.i = zext i1 %cmp.i to i32
  %shr38.1.i = ashr i32 %mul29.i, %land.ext.1.i
  %arrayidx40.1.i = getelementptr inbounds i8, i8* %call21.i, i32 192
  %20 = bitcast i8* %arrayidx40.1.i to i32*
  store i32 %shr38.1.i, i32* %20, align 4, !tbaa !66
  br label %if.end74.i

if.then45.i:                                      ; preds = %do.end.i
  %i_plane46.i = getelementptr inbounds i8, i8* %call21.i, i32 160
  %21 = bitcast i8* %i_plane46.i to i32*
  store i32 3, i32* %21, align 16, !tbaa !83
  %i_width52.i = getelementptr inbounds i8, i8* %call21.i, i32 176
  %i_lines54.i = getelementptr inbounds i8, i8* %call21.i, i32 188
  %i_stride56.i = getelementptr inbounds i8, i8* %call21.i, i32 164
  %arrayidx53.i = bitcast i8* %i_width52.i to i32*
  store i32 %mul.i, i32* %arrayidx53.i, align 4, !tbaa !66
  %arrayidx55.i = bitcast i8* %i_lines54.i to i32*
  store i32 %mul29.i, i32* %arrayidx55.i, align 4, !tbaa !66
  %arrayidx57.i = bitcast i8* %i_stride56.i to i32*
  store i32 %spec.select.i1209.i, i32* %arrayidx57.i, align 4, !tbaa !66
  %arrayidx53.1.i = getelementptr inbounds i8, i8* %call21.i, i32 180
  %22 = bitcast i8* %arrayidx53.1.i to i32*
  store i32 %mul.i, i32* %22, align 4, !tbaa !66
  %arrayidx55.1.i = getelementptr inbounds i8, i8* %call21.i, i32 192
  %23 = bitcast i8* %arrayidx55.1.i to i32*
  store i32 %mul29.i, i32* %23, align 4, !tbaa !66
  %arrayidx57.1.i = getelementptr inbounds i8, i8* %call21.i, i32 168
  %24 = bitcast i8* %arrayidx57.1.i to i32*
  store i32 %spec.select.i1209.i, i32* %24, align 4, !tbaa !66
  %arrayidx53.2.i = getelementptr inbounds i8, i8* %call21.i, i32 184
  %25 = bitcast i8* %arrayidx53.2.i to i32*
  store i32 %mul.i, i32* %25, align 4, !tbaa !66
  %arrayidx55.2.i = getelementptr inbounds i8, i8* %call21.i, i32 196
  %26 = bitcast i8* %arrayidx55.2.i to i32*
  store i32 %mul29.i, i32* %26, align 4, !tbaa !66
  br label %if.end74.i

if.then63.i:                                      ; preds = %do.end.i
  %i_plane64.i = getelementptr inbounds i8, i8* %call21.i, i32 160
  %27 = bitcast i8* %i_plane64.i to i32*
  store i32 1, i32* %27, align 16, !tbaa !83
  %i_width65.i = getelementptr inbounds i8, i8* %call21.i, i32 176
  %arrayidx66.i = bitcast i8* %i_width65.i to i32*
  store i32 %mul.i, i32* %arrayidx66.i, align 16, !tbaa !66
  %i_lines67.i = getelementptr inbounds i8, i8* %call21.i, i32 188
  %arrayidx68.i = bitcast i8* %i_lines67.i to i32*
  store i32 %mul29.i, i32* %arrayidx68.i, align 4, !tbaa !66
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.then63.i, %if.then45.i, %if.then33.i
  %.sink = phi i32 [ 164, %if.then63.i ], [ 172, %if.then45.i ], [ 168, %if.then33.i ]
  %arrayidx79.i.pre-phi = phi i32* [ %arrayidx68.i, %if.then63.i ], [ %arrayidx55.i, %if.then45.i ], [ %arrayidx40.i, %if.then33.i ]
  %.pre-phi.in.i = phi i8* [ %i_lines67.i, %if.then63.i ], [ %i_lines54.i, %if.then45.i ], [ %i_lines39.i, %if.then33.i ]
  %28 = phi i32 [ 0, %if.then63.i ], [ %mul29.i, %if.then45.i ], [ %shr38.1.i, %if.then33.i ]
  %29 = phi i32 [ 0, %if.then63.i ], [ %spec.select.i1209.i, %if.then45.i ], [ %spec.select.i1209.i, %if.then33.i ]
  %luma_plane_count.0.i = phi i32 [ 1, %if.then63.i ], [ 3, %if.then45.i ], [ 1, %if.then33.i ]
  %i_stride69.i = getelementptr inbounds i8, i8* %call21.i, i32 %.sink
  %arrayidx70.i = bitcast i8* %i_stride69.i to i32*
  store i32 %spec.select.i1209.i, i32* %arrayidx70.i, align 4, !tbaa !66
  %.pre-phi.i = bitcast i8* %.pre-phi.in.i to [3 x i32]*
  %i_csp75.i = getelementptr inbounds i8, i8* %call21.i, i32 156
  %30 = bitcast i8* %i_csp75.i to i32*
  store i32 %retval.0.i.i, i32* %30, align 4, !tbaa !34
  %div.i = shl nsw i32 %16, 3
  %i_width_lowres.i = getelementptr inbounds i8, i8* %call21.i, i32 204
  %31 = bitcast i8* %i_width_lowres.i to i32*
  store i32 %div.i, i32* %31, align 4, !tbaa !93
  %div80.i = shl nsw i32 %17, 3
  %i_lines_lowres.i = getelementptr inbounds i8, i8* %call21.i, i32 208
  %32 = bitcast i8* %i_lines_lowres.i to i32*
  store i32 %div80.i, i32* %32, align 16, !tbaa !94
  %add.i1198.i = add nsw i32 %div.i, %sub.i1202.i
  %and.i1199.i = and i32 %add.i1198.i, %neg.i1204.i
  %and3.i.i = and i32 %and.i1199.i, 2032
  %tobool.i1200.i = icmp eq i32 %and3.i.i, 0
  %add4.i.i = select i1 %tobool.i1200.i, i32 %align.0.i, i32 0
  %spec.select.i1201.i = add nsw i32 %add4.i.i, %and.i1199.i
  %i_stride_lowres.i = getelementptr inbounds i8, i8* %call21.i, i32 200
  %33 = bitcast i8* %i_stride_lowres.i to i32*
  store i32 %spec.select.i1201.i, i32* %33, align 8, !tbaa !92
  %i_bframe.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 21
  %34 = load i32, i32* %i_bframe.i, align 4, !tbaa !104
  %cmp881256.i = icmp sgt i32 %34, -2
  br i1 %cmp881256.i, label %for.cond91.preheader.lr.ph.i, label %for.cond.cleanup89.i

for.cond91.preheader.lr.ph.i:                     ; preds = %if.end74.i
  %add871255.i = add nsw i32 %34, 2
  %i_row_satds.i = getelementptr inbounds i8, i8* %call21.i, i32 7188
  %35 = bitcast i8* %i_row_satds.i to [18 x [18 x i32*]]*
  %mul107.i = shl i32 %17, 2
  %conv108.i = zext i32 %mul107.i to i64
  %add109.i = add nuw nsw i64 %conv108.i, 63
  %and110.i = and i64 %add109.i, 8589934528
  br label %for.cond91.preheader.i

for.cond91.preheader.i:                           ; preds = %for.cond.cleanup96.i, %for.cond91.preheader.lr.ph.i
  %prealloc_idx.01260.i = phi i32 [ 0, %for.cond91.preheader.lr.ph.i ], [ %inc104.i, %for.cond.cleanup96.i ]
  %prealloc_size.01259.i = phi i64 [ 0, %for.cond91.preheader.lr.ph.i ], [ %add111.i, %for.cond.cleanup96.i ]
  %i84.01257.i = phi i32 [ 0, %for.cond91.preheader.lr.ph.i ], [ %inc118.i, %for.cond.cleanup96.i ]
  br label %do.body98.i

for.cond.cleanup89.i:                             ; preds = %for.cond.cleanup96.i, %if.end74.i
  %prealloc_size.0.lcssa.i = phi i64 [ 0, %if.end74.i ], [ %add111.i, %for.cond.cleanup96.i ]
  %prealloc_idx.0.lcssa.i = phi i32 [ 0, %if.end74.i ], [ %inc104.i, %for.cond.cleanup96.i ]
  %i_poc.i = getelementptr inbounds i8, i8* %call21.i, i32 4
  %36 = bitcast i8* %i_poc.i to i32*
  store i32 -1, i32* %36, align 4, !tbaa !105
  %i_type.i = getelementptr inbounds i8, i8* %call21.i, i32 16
  %37 = bitcast i8* %i_type.i to i32*
  store i32 0, i32* %37, align 16, !tbaa !56
  %i_qpplus1.i = getelementptr inbounds i8, i8* %call21.i, i32 24
  %38 = bitcast i8* %i_qpplus1.i to i32*
  store i32 0, i32* %38, align 8, !tbaa !58
  %i_pts.i = getelementptr inbounds i8, i8* %call21.i, i32 32
  %39 = bitcast i8* %i_pts.i to i64*
  store i64 -1, i64* %39, align 16, !tbaa !61
  %i_frame.i = getelementptr inbounds i8, i8* %call21.i, i32 100
  %40 = bitcast i8* %i_frame.i to i32*
  store i32 -1, i32* %40, align 4, !tbaa !106
  %i_frame_num.i = getelementptr inbounds i8, i8* %call21.i, i32 120
  %41 = bitcast i8* %i_frame_num.i to i32*
  store i32 -1, i32* %41, align 8, !tbaa !107
  %i_lines_completed.i = getelementptr inbounds i8, i8* %call21.i, i32 11952
  %42 = bitcast i8* %i_lines_completed.i to i32*
  store i32 -1, i32* %42, align 16, !tbaa !96
  %conv120.i = trunc i32 %b_fdec to i8
  %43 = getelementptr inbounds i8, i8* %call21.i, i32 136
  store i8 %conv120.i, i8* %43, align 8, !tbaa !100
  %i_pic_struct.i = getelementptr inbounds i8, i8* %call21.i, i32 128
  %44 = bitcast i8* %i_pic_struct.i to i32*
  store i32 0, i32* %44, align 16, !tbaa !64
  %i_field_cnt.i = getelementptr inbounds i8, i8* %call21.i, i32 112
  %45 = bitcast i8* %i_field_cnt.i to i64*
  store i64 -1, i64* %45, align 16, !tbaa !108
  %i_cpb_duration.i = getelementptr inbounds i8, i8* %call21.i, i32 72
  %i_duration.i = getelementptr inbounds i8, i8* %call21.i, i32 56
  %46 = bitcast i8* %i_duration.i to i64*
  store i64 0, i64* %46, align 8, !tbaa !109
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %i_cpb_duration.i, i8 0, i64 24, i1 false) #7
  %i_coded_fields_lookahead.i = getelementptr inbounds i8, i8* %call21.i, i32 11936
  %orig.i = getelementptr inbounds i8, i8* %call21.i, i32 2772
  %47 = bitcast i8* %orig.i to i8**
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 16 dereferenceable(16) %i_coded_fields_lookahead.i, i8 -1, i64 16, i1 false) #7
  store i8* %call21.i, i8** %47, align 4, !tbaa !110
  switch i32 %retval.0.i.i, label %if.end152.i [
    i32 8, label %if.then127.i
    i32 4, label %if.then127.i
  ]

for.cond.cleanup96.i:                             ; preds = %do.body98.i
  %inc118.i = add nuw nsw i32 %i84.01257.i, 1
  %cmp88.i = icmp slt i32 %inc118.i, %add871255.i
  br i1 %cmp88.i, label %for.cond91.preheader.i, label %for.cond.cleanup89.i

do.body98.i:                                      ; preds = %do.body98.i, %for.cond91.preheader.i
  %prealloc_idx.11252.i = phi i32 [ %inc104.i, %do.body98.i ], [ %prealloc_idx.01260.i, %for.cond91.preheader.i ]
  %prealloc_size.11251.i = phi i64 [ %add111.i, %do.body98.i ], [ %prealloc_size.01259.i, %for.cond91.preheader.i ]
  %j.01250.i = phi i32 [ %inc115.i, %do.body98.i ], [ 0, %for.cond91.preheader.i ]
  %conv.i = trunc i64 %prealloc_size.11251.i to i32
  %48 = inttoptr i32 %conv.i to i32*
  %arrayidx100.i = getelementptr inbounds [18 x [18 x i32*]], [18 x [18 x i32*]]* %35, i32 0, i32 %i84.01257.i, i32 %j.01250.i
  store i32* %48, i32** %arrayidx100.i, align 4, !tbaa !67
  %inc104.i = add nsw i32 %prealloc_idx.11252.i, 1
  %arrayidx105.i = getelementptr inbounds [1024 x i8**], [1024 x i8**]* %preallocs.i, i32 0, i32 %prealloc_idx.11252.i
  %49 = bitcast i8*** %arrayidx105.i to i32***
  store i32** %arrayidx100.i, i32*** %49, align 4, !tbaa !67
  %add111.i = add nsw i64 %prealloc_size.11251.i, %and110.i
  %inc115.i = add nuw nsw i32 %j.01250.i, 1
  %exitcond1279.i = icmp eq i32 %inc115.i, %add871255.i
  br i1 %exitcond1279.i, label %for.cond.cleanup96.i, label %do.body98.i

if.then127.i:                                     ; preds = %for.cond.cleanup89.i, %for.cond.cleanup89.i
  %conv129.i = zext i1 %cmp.i to i32
  %shr130.i = lshr i32 32, %conv129.i
  %mul135.i = shl nuw nsw i32 %shr130.i, 1
  %add136.i = add nsw i32 %28, %mul135.i
  %mul137.i = mul nsw i32 %add136.i, %29
  %conv139.i = trunc i64 %prealloc_size.0.lcssa.i to i32
  %50 = inttoptr i32 %conv139.i to i8*
  %arrayidx140.i = getelementptr inbounds i8, i8* %call21.i, i32 356
  %51 = bitcast i8* %arrayidx140.i to i8**
  store i8* %50, i8** %51, align 4, !tbaa !67
  %inc143.i = add nsw i32 %prealloc_idx.0.lcssa.i, 1
  %arrayidx144.i = getelementptr inbounds [1024 x i8**], [1024 x i8**]* %preallocs.i, i32 0, i32 %prealloc_idx.0.lcssa.i
  %52 = bitcast i8*** %arrayidx144.i to i8**
  store i8* %arrayidx140.i, i8** %52, align 4, !tbaa !67
  %conv146.i = sext i32 %mul137.i to i64
  %add147.i = add nsw i64 %conv146.i, 63
  %and148.i = and i64 %add147.i, -64
  %add149.i = add nsw i64 %prealloc_size.0.lcssa.i, %and148.i
  br label %if.end152.i

if.end152.i:                                      ; preds = %if.then127.i, %for.cond.cleanup89.i
  %prealloc_size.2.i = phi i64 [ %add149.i, %if.then127.i ], [ %prealloc_size.0.lcssa.i, %for.cond.cleanup89.i ]
  %prealloc_idx.2.i = phi i32 [ %inc143.i, %if.then127.i ], [ %prealloc_idx.0.lcssa.i, %for.cond.cleanup89.i ]
  %i_stride158.i = getelementptr inbounds i8, i8* %call21.i, i32 164
  %53 = bitcast i8* %i_stride158.i to [3 x i32]*
  %i_subpel_refine.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 51, i32 11
  %54 = load i32, i32* %i_subpel_refine.i, align 4, !tbaa !111
  %tobool168.i = icmp ne i32 %54, 0
  %tobool169.i = icmp ne i32 %b_fdec, 0
  %or.cond799.i = and i1 %tobool169.i, %tobool168.i
  %buffer175.i = getelementptr inbounds i8, i8* %call21.i, i32 352
  %55 = bitcast i8* %buffer175.i to [4 x i8*]*
  br i1 %or.cond799.i, label %for.body157.us.i, label %for.body157.i

for.body157.us.i:                                 ; preds = %if.end152.i, %for.body157.us.i
  %prealloc_idx.31248.us.i = phi i32 [ %inc179.us.i, %for.body157.us.i ], [ %prealloc_idx.2.i, %if.end152.i ]
  %p.01247.us.i = phi i32 [ %inc188.us.i, %for.body157.us.i ], [ 0, %if.end152.i ]
  %prealloc_size.31246.us.i = phi i64 [ %add184.us.i, %for.body157.us.i ], [ %prealloc_size.2.i, %if.end152.i ]
  %arrayidx159.us.i = getelementptr inbounds [3 x i32], [3 x i32]* %53, i32 0, i32 %p.01247.us.i
  %56 = load i32, i32* %arrayidx159.us.i, align 4, !tbaa !66
  %arrayidx161.us.i = getelementptr inbounds [3 x i32], [3 x i32]* %.pre-phi.i, i32 0, i32 %p.01247.us.i
  %57 = load i32, i32* %arrayidx161.us.i, align 4, !tbaa !66
  %add163.us.i = add nsw i32 %57, 64
  %mul164.us.i = mul nsw i32 %add163.us.i, %56
  %and.i1194.us.i = and i32 %mul164.us.i, 1023
  %tobool.i1195.us.i = icmp eq i32 %and.i1194.us.i, 0
  %add.i1196.us.i = add nsw i32 %mul164.us.i, 128
  %spec.select.i1197.us.i = select i1 %tobool.i1195.us.i, i32 %add.i1196.us.i, i32 %mul164.us.i
  %conv166.us.i = sext i32 %spec.select.i1197.us.i to i64
  %mul171.us.i = shl nsw i64 %conv166.us.i, 2
  %conv174.us.i = trunc i64 %prealloc_size.31246.us.i to i32
  %58 = inttoptr i32 %conv174.us.i to i8*
  %arrayidx176.us.i = getelementptr inbounds [4 x i8*], [4 x i8*]* %55, i32 0, i32 %p.01247.us.i
  store i8* %58, i8** %arrayidx176.us.i, align 4, !tbaa !67
  %inc179.us.i = add nsw i32 %prealloc_idx.31248.us.i, 1
  %arrayidx180.us.i = getelementptr inbounds [1024 x i8**], [1024 x i8**]* %preallocs.i, i32 0, i32 %prealloc_idx.31248.us.i
  store i8** %arrayidx176.us.i, i8*** %arrayidx180.us.i, align 4, !tbaa !67
  %add182.us.i = add nsw i64 %mul171.us.i, 63
  %and183.us.i = and i64 %add182.us.i, -64
  %add184.us.i = add nsw i64 %and183.us.i, %prealloc_size.31246.us.i
  %inc188.us.i = add nuw nsw i32 %p.01247.us.i, 1
  %exitcond1277.i = icmp eq i32 %inc188.us.i, %luma_plane_count.0.i
  br i1 %exitcond1277.i, label %for.cond.cleanup156.i, label %for.body157.us.i

for.cond.cleanup156.i:                            ; preds = %for.body157.i, %for.body157.us.i
  %prealloc_size.3.lcssa.i = phi i64 [ %add184.us.i, %for.body157.us.i ], [ %add184.i, %for.body157.i ]
  %prealloc_idx.3.lcssa.i = phi i32 [ %inc179.us.i, %for.body157.us.i ], [ %inc179.i, %for.body157.i ]
  %b_duplicate.i = getelementptr inbounds i8, i8* %call21.i, i32 2768
  %59 = bitcast i8* %b_duplicate.i to i32*
  store i32 0, i32* %59, align 16, !tbaa !2
  br i1 %tobool169.i, label %do.body192.i, label %if.else387.i

for.body157.i:                                    ; preds = %if.end152.i, %for.body157.i
  %prealloc_idx.31248.i = phi i32 [ %inc179.i, %for.body157.i ], [ %prealloc_idx.2.i, %if.end152.i ]
  %p.01247.i = phi i32 [ %inc188.i, %for.body157.i ], [ 0, %if.end152.i ]
  %prealloc_size.31246.i = phi i64 [ %add184.i, %for.body157.i ], [ %prealloc_size.2.i, %if.end152.i ]
  %arrayidx159.i = getelementptr inbounds [3 x i32], [3 x i32]* %53, i32 0, i32 %p.01247.i
  %60 = load i32, i32* %arrayidx159.i, align 4, !tbaa !66
  %arrayidx161.i = getelementptr inbounds [3 x i32], [3 x i32]* %.pre-phi.i, i32 0, i32 %p.01247.i
  %61 = load i32, i32* %arrayidx161.i, align 4, !tbaa !66
  %add163.i = add nsw i32 %61, 64
  %mul164.i = mul nsw i32 %add163.i, %60
  %and.i1194.i = and i32 %mul164.i, 1023
  %tobool.i1195.i = icmp eq i32 %and.i1194.i, 0
  %add.i1196.i = add nsw i32 %mul164.i, 128
  %spec.select.i1197.i = select i1 %tobool.i1195.i, i32 %add.i1196.i, i32 %mul164.i
  %conv166.i = sext i32 %spec.select.i1197.i to i64
  %conv174.i = trunc i64 %prealloc_size.31246.i to i32
  %62 = inttoptr i32 %conv174.i to i8*
  %arrayidx176.i = getelementptr inbounds [4 x i8*], [4 x i8*]* %55, i32 0, i32 %p.01247.i
  store i8* %62, i8** %arrayidx176.i, align 4, !tbaa !67
  %inc179.i = add nsw i32 %prealloc_idx.31248.i, 1
  %arrayidx180.i = getelementptr inbounds [1024 x i8**], [1024 x i8**]* %preallocs.i, i32 0, i32 %prealloc_idx.31248.i
  store i8** %arrayidx176.i, i8*** %arrayidx180.i, align 4, !tbaa !67
  %add182.i = add nsw i64 %conv166.i, 63
  %and183.i = and i64 %add182.i, -64
  %add184.i = add nsw i64 %and183.i, %prealloc_size.31246.i
  %inc188.i = add nuw nsw i32 %p.01247.i, 1
  %exitcond1278.i = icmp eq i32 %inc188.i, %luma_plane_count.0.i
  br i1 %exitcond1278.i, label %for.cond.cleanup156.i, label %for.body157.i

do.body192.i:                                     ; preds = %for.cond.cleanup156.i
  %conv193.i = trunc i64 %prealloc_size.3.lcssa.i to i32
  %63 = inttoptr i32 %conv193.i to i8*
  %mb_type.i = getelementptr inbounds i8, i8* %call21.i, i32 2776
  %64 = bitcast i8* %mb_type.i to i8**
  store i8* %63, i8** %64, align 8, !tbaa !112
  %inc195.i = add nsw i32 %prealloc_idx.3.lcssa.i, 1
  %arrayidx196.i = getelementptr inbounds [1024 x i8**], [1024 x i8**]* %preallocs.i, i32 0, i32 %prealloc_idx.3.lcssa.i
  %65 = bitcast i8*** %arrayidx196.i to i8**
  store i8* %mb_type.i, i8** %65, align 4, !tbaa !67
  %conv198.i = zext i32 %9 to i64
  %add199.i = add nuw nsw i64 %conv198.i, 63
  %and200.i = and i64 %add199.i, 8589934528
  %add201.i = add nsw i64 %prealloc_size.3.lcssa.i, %and200.i
  %conv205.i = trunc i64 %add201.i to i32
  %66 = inttoptr i32 %conv205.i to i8*
  %mb_partition.i = getelementptr inbounds i8, i8* %call21.i, i32 2780
  %67 = bitcast i8* %mb_partition.i to i8**
  store i8* %66, i8** %67, align 4, !tbaa !113
  %inc207.i = add nsw i32 %prealloc_idx.3.lcssa.i, 2
  %arrayidx208.i = getelementptr inbounds [1024 x i8**], [1024 x i8**]* %preallocs.i, i32 0, i32 %inc195.i
  %68 = bitcast i8*** %arrayidx208.i to i8**
  store i8* %mb_partition.i, i8** %68, align 4, !tbaa !67
  %add213.i = add nsw i64 %add201.i, %and200.i
  %conv217.i = trunc i64 %add213.i to i32
  %69 = inttoptr i32 %conv217.i to [2 x i16]*
  %mv.i = getelementptr inbounds i8, i8* %call21.i, i32 2784
  %arrayidx218.i = bitcast i8* %mv.i to [2 x i16]**
  store [2 x i16]* %69, [2 x i16]** %arrayidx218.i, align 16, !tbaa !67
  %inc221.i = add nsw i32 %prealloc_idx.3.lcssa.i, 3
  %arrayidx222.i = getelementptr inbounds [1024 x i8**], [1024 x i8**]* %preallocs.i, i32 0, i32 %inc207.i
  %70 = bitcast i8*** %arrayidx222.i to i8**
  store i8* %mv.i, i8** %70, align 4, !tbaa !67
  %mul224.i = shl i32 %9, 6
  %add226.i = zext i32 %mul224.i to i64
  %add228.i = add nsw i64 %add213.i, %add226.i
  %conv232.i = trunc i64 %add228.i to i32
  %71 = inttoptr i32 %conv232.i to [2 x i16]*
  %mv16x16.i = getelementptr inbounds i8, i8* %call21.i, i32 2792
  %72 = bitcast i8* %mv16x16.i to [2 x i16]**
  store [2 x i16]* %71, [2 x i16]** %72, align 8, !tbaa !114
  %inc234.i = add nsw i32 %prealloc_idx.3.lcssa.i, 4
  %arrayidx235.i = getelementptr inbounds [1024 x i8**], [1024 x i8**]* %preallocs.i, i32 0, i32 %inc221.i
  %73 = bitcast i8*** %arrayidx235.i to i8**
  store i8* %mv16x16.i, i8** %73, align 4, !tbaa !67
  %add236.i = shl i32 %9, 2
  %mul238.i = add i32 %add236.i, 4
  %conv239.i = zext i32 %mul238.i to i64
  %add240.i = add nuw nsw i64 %conv239.i, 63
  %and241.i = and i64 %add240.i, 8589934528
  %add242.i = add nsw i64 %add228.i, %and241.i
  %conv246.i = trunc i64 %add242.i to i32
  %74 = inttoptr i32 %conv246.i to i8*
  %ref.i = getelementptr inbounds i8, i8* %call21.i, i32 4372
  %arrayidx247.i = bitcast i8* %ref.i to i8**
  store i8* %74, i8** %arrayidx247.i, align 4, !tbaa !67
  %inc250.i = add nsw i32 %prealloc_idx.3.lcssa.i, 5
  %arrayidx251.i = getelementptr inbounds [1024 x i8**], [1024 x i8**]* %preallocs.i, i32 0, i32 %inc234.i
  %75 = bitcast i8*** %arrayidx251.i to i8**
  store i8* %ref.i, i8** %75, align 4, !tbaa !67
  %conv254.i = zext i32 %add236.i to i64
  %add255.i = add nuw nsw i64 %conv254.i, 63
  %and256.i = and i64 %add255.i, 8589934528
  %add257.i = add nsw i64 %add242.i, %and256.i
  %tobool262.i = icmp eq i32 %34, 0
  br i1 %tobool262.i, label %if.else296.i, label %do.body264.i

do.body264.i:                                     ; preds = %do.body192.i
  %conv265.i = trunc i64 %add257.i to i32
  %76 = inttoptr i32 %conv265.i to [2 x i16]*
  %arrayidx267.i = getelementptr inbounds i8, i8* %call21.i, i32 2788
  %77 = bitcast i8* %arrayidx267.i to [2 x i16]**
  store [2 x i16]* %76, [2 x i16]** %77, align 4, !tbaa !67
  %inc270.i = add nsw i32 %prealloc_idx.3.lcssa.i, 6
  %arrayidx271.i = getelementptr inbounds [1024 x i8**], [1024 x i8**]* %preallocs.i, i32 0, i32 %inc250.i
  %78 = bitcast i8*** %arrayidx271.i to i8**
  store i8* %arrayidx267.i, i8** %78, align 4, !tbaa !67
  %add277.i = add nsw i64 %add257.i, %add226.i
  %conv281.i = trunc i64 %add277.i to i32
  %79 = inttoptr i32 %conv281.i to i8*
  %arrayidx283.i = getelementptr inbounds i8, i8* %call21.i, i32 4376
  %80 = bitcast i8* %arrayidx283.i to i8**
  store i8* %79, i8** %80, align 4, !tbaa !67
  %inc286.i = add nsw i32 %prealloc_idx.3.lcssa.i, 7
  %arrayidx287.i = getelementptr inbounds [1024 x i8**], [1024 x i8**]* %preallocs.i, i32 0, i32 %inc270.i
  %81 = bitcast i8*** %arrayidx287.i to i8**
  store i8* %arrayidx283.i, i8** %81, align 4, !tbaa !67
  %add293.i = add nsw i64 %add277.i, %and256.i
  br label %do.body302.i

if.else296.i:                                     ; preds = %do.body192.i
  %arrayidx298.i = getelementptr inbounds i8, i8* %call21.i, i32 2788
  %82 = bitcast i8* %arrayidx298.i to [2 x i16]**
  store [2 x i16]* null, [2 x i16]** %82, align 4, !tbaa !67
  %arrayidx300.i = getelementptr inbounds i8, i8* %call21.i, i32 4376
  %83 = bitcast i8* %arrayidx300.i to i8**
  store i8* null, i8** %83, align 4, !tbaa !67
  br label %do.body302.i

do.body302.i:                                     ; preds = %if.else296.i, %do.body264.i
  %prealloc_size.4.i = phi i64 [ %add293.i, %do.body264.i ], [ %add257.i, %if.else296.i ]
  %prealloc_idx.4.i = phi i32 [ %inc286.i, %do.body264.i ], [ %inc250.i, %if.else296.i ]
  %conv303.i = trunc i64 %prealloc_size.4.i to i32
  %84 = inttoptr i32 %conv303.i to i32*
  %i_row_bits.i = getelementptr inbounds i8, i8* %call21.i, i32 8488
  %85 = bitcast i8* %i_row_bits.i to i32**
  store i32* %84, i32** %85, align 8, !tbaa !115
  %inc305.i = add nsw i32 %prealloc_idx.4.i, 1
  %arrayidx306.i = getelementptr inbounds [1024 x i8**], [1024 x i8**]* %preallocs.i, i32 0, i32 %prealloc_idx.4.i
  %86 = bitcast i8*** %arrayidx306.i to i8**
  store i8* %i_row_bits.i, i8** %86, align 4, !tbaa !67
  %mul308.i = shl i32 %17, 2
  %conv309.i = zext i32 %mul308.i to i64
  %add310.i = add nuw nsw i64 %conv309.i, 63
  %and311.i = and i64 %add310.i, 8589934528
  %add312.i = add nsw i64 %prealloc_size.4.i, %and311.i
  %conv316.i = trunc i64 %add312.i to i32
  %87 = inttoptr i32 %conv316.i to float*
  %f_row_qp.i = getelementptr inbounds i8, i8* %call21.i, i32 8492
  %88 = bitcast i8* %f_row_qp.i to float**
  store float* %87, float** %88, align 4, !tbaa !116
  %inc318.i = add nsw i32 %prealloc_idx.4.i, 2
  %arrayidx319.i = getelementptr inbounds [1024 x i8**], [1024 x i8**]* %preallocs.i, i32 0, i32 %inc305.i
  %89 = bitcast i8*** %arrayidx319.i to i8**
  store i8* %f_row_qp.i, i8** %89, align 4, !tbaa !67
  %add325.i = add nsw i64 %add312.i, %and311.i
  %conv329.i = trunc i64 %add325.i to i32
  %90 = inttoptr i32 %conv329.i to float*
  %f_row_qscale.i = getelementptr inbounds i8, i8* %call21.i, i32 8496
  %91 = bitcast i8* %f_row_qscale.i to float**
  store float* %90, float** %91, align 16, !tbaa !117
  %inc331.i = add nsw i32 %prealloc_idx.4.i, 3
  %arrayidx332.i = getelementptr inbounds [1024 x i8**], [1024 x i8**]* %preallocs.i, i32 0, i32 %inc318.i
  %92 = bitcast i8*** %arrayidx332.i to i8**
  store i8* %f_row_qscale.i, i8** %92, align 4, !tbaa !67
  %add338.i = add nsw i64 %add325.i, %and311.i
  %i_me_method.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 51, i32 7
  %93 = load i32, i32* %i_me_method.i, align 4, !tbaa !118
  %cmp343.i = icmp sgt i32 %93, 2
  br i1 %cmp343.i, label %do.body346.i, label %if.end369.i

do.body346.i:                                     ; preds = %do.body302.i
  %conv347.i = trunc i64 %add338.i to i32
  %94 = inttoptr i32 %conv347.i to i8*
  %arrayidx349.i = getelementptr inbounds i8, i8* %call21.i, i32 364
  %95 = bitcast i8* %arrayidx349.i to i8**
  store i8* %94, i8** %95, align 4, !tbaa !67
  %inc352.i = add nsw i32 %prealloc_idx.4.i, 4
  %arrayidx353.i = getelementptr inbounds [1024 x i8**], [1024 x i8**]* %preallocs.i, i32 0, i32 %inc331.i
  %96 = bitcast i8*** %arrayidx353.i to i8**
  store i8* %arrayidx349.i, i8** %96, align 4, !tbaa !67
  %add359.i = shl i32 %17, 5
  %mul360.i = add i32 %add359.i, 128
  %mul361.i = mul i32 %spec.select.i1209.i, %mul360.i
  %b_have_sub8x8_esa.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 59, i32 19
  %97 = load i32, i32* %b_have_sub8x8_esa.i, align 4, !tbaa !119
  %shl362.i = shl i32 %mul361.i, %97
  %conv363.i = zext i32 %shl362.i to i64
  %add364.i = add nuw nsw i64 %conv363.i, 63
  %and365.i = and i64 %add364.i, 8589934528
  %add366.i = add nsw i64 %and365.i, %add338.i
  br label %if.end369.i

if.end369.i:                                      ; preds = %do.body346.i, %do.body302.i
  %prealloc_size.5.i = phi i64 [ %add366.i, %do.body346.i ], [ %add338.i, %do.body302.i ]
  %prealloc_idx.5.i = phi i32 [ %inc352.i, %do.body346.i ], [ %inc331.i, %do.body302.i ]
  %b_mb_info.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 51, i32 21
  %98 = load i32, i32* %b_mb_info.i, align 4, !tbaa !70
  %tobool372.i = icmp eq i32 %98, 0
  br i1 %tobool372.i, label %do.body581.i, label %do.body374.i

do.body374.i:                                     ; preds = %if.end369.i
  %conv375.i = trunc i64 %prealloc_size.5.i to i32
  %99 = inttoptr i32 %conv375.i to i8*
  %effective_qp.i = getelementptr inbounds i8, i8* %call21.i, i32 2936
  %100 = bitcast i8* %effective_qp.i to i8**
  store i8* %99, i8** %100, align 8, !tbaa !120
  %inc377.i = add nsw i32 %prealloc_idx.5.i, 1
  %arrayidx378.i = getelementptr inbounds [1024 x i8**], [1024 x i8**]* %preallocs.i, i32 0, i32 %prealloc_idx.5.i
  %101 = bitcast i8*** %arrayidx378.i to i8**
  store i8* %effective_qp.i, i8** %101, align 4, !tbaa !67
  %add383.i = add nsw i64 %prealloc_size.5.i, %and200.i
  br label %do.body581.i

if.else387.i:                                     ; preds = %for.cond.cleanup156.i
  %b_have_lowres.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 59, i32 18
  %102 = load i32, i32* %b_have_lowres.i, align 16, !tbaa !121
  %tobool389.i = icmp eq i32 %102, 0
  br i1 %tobool389.i, label %if.end526.i, label %if.then390.i

if.then390.i:                                     ; preds = %if.else387.i
  %add396.i = add nsw i32 %div80.i, 64
  %mul397.i = mul nsw i32 %spec.select.i1201.i, %add396.i
  %and.i1190.i = and i32 %mul397.i, 1016
  %tobool.i1191.i = icmp eq i32 %and.i1190.i, 0
  %add.i1192.i = add nsw i32 %mul397.i, 128
  %spec.select.i1193.i = select i1 %tobool.i1191.i, i32 %add.i1192.i, i32 %mul397.i
  %conv399.i = sext i32 %spec.select.i1193.i to i64
  %conv401.i = trunc i64 %prealloc_size.3.lcssa.i to i32
  %103 = inttoptr i32 %conv401.i to i8*
  %buffer_lowres.i = getelementptr inbounds i8, i8* %call21.i, i32 384
  %104 = bitcast i8* %buffer_lowres.i to i8**
  store i8* %103, i8** %104, align 16, !tbaa !122
  %inc403.i = add nsw i32 %prealloc_idx.3.lcssa.i, 1
  %arrayidx404.i = getelementptr inbounds [1024 x i8**], [1024 x i8**]* %preallocs.i, i32 0, i32 %prealloc_idx.3.lcssa.i
  %105 = bitcast i8*** %arrayidx404.i to i8**
  store i8* %buffer_lowres.i, i8** %105, align 4, !tbaa !67
  %mul405.i = shl nsw i64 %conv399.i, 2
  %add407.i = add nsw i64 %mul405.i, 63
  %and408.i = and i64 %add407.i, -64
  %add409.i = add nsw i64 %prealloc_size.3.lcssa.i, %and408.i
  %cmp4261236.i = icmp slt i32 %34, 0
  %lowres_mvs.i = getelementptr inbounds i8, i8* %call21.i, i32 2796
  %106 = bitcast i8* %lowres_mvs.i to [2 x [17 x [2 x i16]*]]*
  %lowres_mv_costs.i = getelementptr inbounds i8, i8* %call21.i, i32 4236
  %107 = bitcast i8* %lowres_mv_costs.i to [2 x [17 x i32*]]*
  br i1 %cmp4261236.i, label %for.cond.cleanup420.i, label %for.cond423.preheader.preheader.i

for.cond423.preheader.preheader.i:                ; preds = %if.then390.i
  %tobool416.i = icmp eq i32 %34, 0
  %108 = select i1 %tobool416.i, i32 1, i32 2
  %.pre.i = load i32, i32* %i_mb_count2.i, align 8, !tbaa !102
  %mul442.i = shl i32 %.pre.i, 2
  %conv443.i = zext i32 %mul442.i to i64
  %add444.i = add nuw nsw i64 %conv443.i, 63
  %and445.i = and i64 %add444.i, 8589934528
  br label %for.cond423.preheader.i

for.cond423.preheader.i:                          ; preds = %for.cond.cleanup428.i, %for.cond423.preheader.preheader.i
  %j412.01244.i = phi i32 [ %inc471.i, %for.cond.cleanup428.i ], [ 0, %for.cond423.preheader.preheader.i ]
  %prealloc_idx.61243.i = phi i32 [ %inc456.i, %for.cond.cleanup428.i ], [ %inc403.i, %for.cond423.preheader.preheader.i ]
  %prealloc_size.61242.i = phi i64 [ %add464.i, %for.cond.cleanup428.i ], [ %add409.i, %for.cond423.preheader.preheader.i ]
  br label %do.body430.i

for.cond.cleanup420.i:                            ; preds = %for.cond.cleanup428.i, %if.then390.i
  %prealloc_size.6.lcssa.i = phi i64 [ %add409.i, %if.then390.i ], [ %add464.i, %for.cond.cleanup428.i ]
  %prealloc_idx.6.lcssa.i = phi i32 [ %inc403.i, %if.then390.i ], [ %inc456.i, %for.cond.cleanup428.i ]
  %conv474.i = trunc i64 %prealloc_size.6.lcssa.i to i32
  %109 = inttoptr i32 %conv474.i to i16*
  %i_propagate_cost.i = getelementptr inbounds i8, i8* %call21.i, i32 8516
  %110 = bitcast i8* %i_propagate_cost.i to i16**
  store i16* %109, i16** %110, align 4, !tbaa !123
  %inc476.i = add nsw i32 %prealloc_idx.6.lcssa.i, 1
  %arrayidx477.i = getelementptr inbounds [1024 x i8**], [1024 x i8**]* %preallocs.i, i32 0, i32 %prealloc_idx.6.lcssa.i
  %111 = bitcast i8*** %arrayidx477.i to i8**
  store i8* %i_propagate_cost.i, i8** %111, align 4, !tbaa !67
  %mul478.i = shl i32 %9, 1
  %conv479.i = zext i32 %mul478.i to i64
  %add480.i = add nuw nsw i64 %conv479.i, 63
  %and481.i = and i64 %add480.i, 8589934528
  %add482.i = add nsw i64 %prealloc_size.6.lcssa.i, %and481.i
  %cmp4901229.i = icmp slt i32 %34, -1
  br i1 %cmp4901229.i, label %for.cond.cleanup492.i, label %for.cond495.preheader.lr.ph.i

for.cond495.preheader.lr.ph.i:                    ; preds = %for.cond.cleanup420.i
  %lowres_costs.i = getelementptr inbounds i8, i8* %call21.i, i32 2940
  %112 = bitcast i8* %lowres_costs.i to [18 x [18 x i16*]]*
  %113 = add i32 %34, 2
  br label %for.cond495.preheader.i

for.cond.cleanup428.i:                            ; preds = %do.body430.i
  %inc471.i = add nuw nsw i32 %j412.01244.i, 1
  %exitcond1276.i = icmp eq i32 %inc471.i, %108
  br i1 %exitcond1276.i, label %for.cond.cleanup420.i, label %for.cond423.preheader.i

do.body430.i:                                     ; preds = %do.body430.i, %for.cond423.preheader.i
  %i422.01239.i = phi i32 [ 0, %for.cond423.preheader.i ], [ %inc468.i, %do.body430.i ]
  %prealloc_idx.71238.i = phi i32 [ %prealloc_idx.61243.i, %for.cond423.preheader.i ], [ %inc456.i, %do.body430.i ]
  %prealloc_size.71237.i = phi i64 [ %prealloc_size.61242.i, %for.cond423.preheader.i ], [ %add464.i, %do.body430.i ]
  %conv431.i = trunc i64 %prealloc_size.71237.i to i32
  %114 = inttoptr i32 %conv431.i to [2 x i16]*
  %arrayidx433.i = getelementptr inbounds [2 x [17 x [2 x i16]*]], [2 x [17 x [2 x i16]*]]* %106, i32 0, i32 %j412.01244.i, i32 %i422.01239.i
  store [2 x i16]* %114, [2 x i16]** %arrayidx433.i, align 4, !tbaa !67
  %inc437.i = add nsw i32 %prealloc_idx.71238.i, 1
  %arrayidx438.i = getelementptr inbounds [1024 x i8**], [1024 x i8**]* %preallocs.i, i32 0, i32 %prealloc_idx.71238.i
  %115 = bitcast i8*** %arrayidx438.i to [2 x i16]***
  store [2 x i16]** %arrayidx433.i, [2 x i16]*** %115, align 4, !tbaa !67
  %add446.i = add nsw i64 %prealloc_size.71237.i, %and445.i
  %conv450.i = trunc i64 %add446.i to i32
  %116 = inttoptr i32 %conv450.i to i32*
  %arrayidx452.i = getelementptr inbounds [2 x [17 x i32*]], [2 x [17 x i32*]]* %107, i32 0, i32 %j412.01244.i, i32 %i422.01239.i
  store i32* %116, i32** %arrayidx452.i, align 4, !tbaa !67
  %inc456.i = add nsw i32 %prealloc_idx.71238.i, 2
  %arrayidx457.i = getelementptr inbounds [1024 x i8**], [1024 x i8**]* %preallocs.i, i32 0, i32 %inc437.i
  %117 = bitcast i8*** %arrayidx457.i to i32***
  store i32** %arrayidx452.i, i32*** %117, align 4, !tbaa !67
  %add464.i = add nsw i64 %add446.i, %and445.i
  %inc468.i = add nuw i32 %i422.01239.i, 1
  %exitcond1275.i = icmp eq i32 %i422.01239.i, %34
  br i1 %exitcond1275.i, label %for.cond.cleanup428.i, label %do.body430.i

for.cond495.preheader.i:                          ; preds = %for.cond.cleanup501.i, %for.cond495.preheader.lr.ph.i
  %j485.01232.i = phi i32 [ 0, %for.cond495.preheader.lr.ph.i ], [ %inc523.i, %for.cond.cleanup501.i ]
  %prealloc_idx.81231.i = phi i32 [ %inc476.i, %for.cond495.preheader.lr.ph.i ], [ %inc510.i, %for.cond.cleanup501.i ]
  %prealloc_size.81230.i = phi i64 [ %add482.i, %for.cond495.preheader.lr.ph.i ], [ %add516.i, %for.cond.cleanup501.i ]
  br label %do.body503.i

for.cond.cleanup492.i:                            ; preds = %for.cond.cleanup501.i, %for.cond.cleanup420.i
  %prealloc_size.8.lcssa.i = phi i64 [ %add482.i, %for.cond.cleanup420.i ], [ %add516.i, %for.cond.cleanup501.i ]
  %prealloc_idx.8.lcssa.i = phi i32 [ %inc476.i, %for.cond.cleanup420.i ], [ %inc510.i, %for.cond.cleanup501.i ]
  %add525.i = add nsw i64 %prealloc_size.8.lcssa.i, 64
  br label %if.end526.i

for.cond.cleanup501.i:                            ; preds = %do.body503.i
  %inc523.i = add nuw i32 %j485.01232.i, 1
  %exitcond1274.i = icmp eq i32 %inc523.i, %113
  br i1 %exitcond1274.i, label %for.cond.cleanup492.i, label %for.cond495.preheader.i

do.body503.i:                                     ; preds = %do.body503.i, %for.cond495.preheader.i
  %i494.01227.i = phi i32 [ 0, %for.cond495.preheader.i ], [ %inc520.i, %do.body503.i ]
  %prealloc_idx.91226.i = phi i32 [ %prealloc_idx.81231.i, %for.cond495.preheader.i ], [ %inc510.i, %do.body503.i ]
  %prealloc_size.91225.i = phi i64 [ %prealloc_size.81230.i, %for.cond495.preheader.i ], [ %add516.i, %do.body503.i ]
  %conv504.i = trunc i64 %prealloc_size.91225.i to i32
  %118 = inttoptr i32 %conv504.i to i16*
  %arrayidx506.i = getelementptr inbounds [18 x [18 x i16*]], [18 x [18 x i16*]]* %112, i32 0, i32 %j485.01232.i, i32 %i494.01227.i
  store i16* %118, i16** %arrayidx506.i, align 4, !tbaa !67
  %inc510.i = add nsw i32 %prealloc_idx.91226.i, 1
  %arrayidx511.i = getelementptr inbounds [1024 x i8**], [1024 x i8**]* %preallocs.i, i32 0, i32 %prealloc_idx.91226.i
  %119 = bitcast i8*** %arrayidx511.i to i16***
  store i16** %arrayidx506.i, i16*** %119, align 4, !tbaa !67
  %add516.i = add nsw i64 %prealloc_size.91225.i, %and481.i
  %inc520.i = add nuw i32 %i494.01227.i, 1
  %exitcond1273.i = icmp eq i32 %inc520.i, %113
  br i1 %exitcond1273.i, label %for.cond.cleanup501.i, label %do.body503.i

if.end526.i:                                      ; preds = %for.cond.cleanup492.i, %if.else387.i
  %prealloc_size.10.i = phi i64 [ %add525.i, %for.cond.cleanup492.i ], [ %prealloc_size.3.lcssa.i, %if.else387.i ]
  %prealloc_idx.10.i = phi i32 [ %prealloc_idx.8.lcssa.i, %for.cond.cleanup492.i ], [ %prealloc_idx.3.lcssa.i, %if.else387.i ]
  %i_aq_mode.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 15
  %120 = load i32, i32* %i_aq_mode.i, align 4, !tbaa !124
  %tobool528.i = icmp eq i32 %120, 0
  br i1 %tobool528.i, label %do.body581.i, label %do.body530.i

do.body530.i:                                     ; preds = %if.end526.i
  %conv531.i = trunc i64 %prealloc_size.10.i to i32
  %121 = inttoptr i32 %conv531.i to float*
  %f_qp_offset.i = getelementptr inbounds i8, i8* %call21.i, i32 8500
  %122 = bitcast i8* %f_qp_offset.i to float**
  store float* %121, float** %122, align 4, !tbaa !125
  %inc533.i = add nsw i32 %prealloc_idx.10.i, 1
  %arrayidx534.i = getelementptr inbounds [1024 x i8**], [1024 x i8**]* %preallocs.i, i32 0, i32 %prealloc_idx.10.i
  %123 = bitcast i8*** %arrayidx534.i to i8**
  store i8* %f_qp_offset.i, i8** %123, align 4, !tbaa !67
  %124 = load i32, i32* %i_mb_count2.i, align 8, !tbaa !102
  %mul537.i = shl i32 %124, 2
  %conv538.i = zext i32 %mul537.i to i64
  %add539.i = add nuw nsw i64 %conv538.i, 63
  %and540.i = and i64 %add539.i, 8589934528
  %add541.i = add nsw i64 %and540.i, %prealloc_size.10.i
  %conv545.i = trunc i64 %add541.i to i32
  %125 = inttoptr i32 %conv545.i to float*
  %f_qp_offset_aq.i = getelementptr inbounds i8, i8* %call21.i, i32 8504
  %126 = bitcast i8* %f_qp_offset_aq.i to float**
  store float* %125, float** %126, align 8, !tbaa !126
  %inc547.i = add nsw i32 %prealloc_idx.10.i, 2
  %arrayidx548.i = getelementptr inbounds [1024 x i8**], [1024 x i8**]* %preallocs.i, i32 0, i32 %inc533.i
  %127 = bitcast i8*** %arrayidx548.i to i8**
  store i8* %f_qp_offset_aq.i, i8** %127, align 4, !tbaa !67
  %add555.i = add nsw i64 %add541.i, %and540.i
  br i1 %tobool389.i, label %do.body581.i, label %do.body562.i

do.body562.i:                                     ; preds = %do.body530.i
  %conv563.i = trunc i64 %add555.i to i32
  %128 = inttoptr i32 %conv563.i to i16*
  %i_inv_qscale_factor.i = getelementptr inbounds i8, i8* %call21.i, i32 8520
  %129 = bitcast i8* %i_inv_qscale_factor.i to i16**
  store i16* %128, i16** %129, align 8, !tbaa !127
  %inc565.i = add nsw i32 %prealloc_idx.10.i, 3
  %arrayidx566.i = getelementptr inbounds [1024 x i8**], [1024 x i8**]* %preallocs.i, i32 0, i32 %inc547.i
  %130 = bitcast i8*** %arrayidx566.i to i8**
  store i8* %i_inv_qscale_factor.i, i8** %130, align 4, !tbaa !67
  %add569.i = shl i32 %124, 1
  %mul570.i = add i32 %add569.i, 6
  %conv571.i = zext i32 %mul570.i to i64
  %add572.i = add nuw nsw i64 %conv571.i, 63
  %and573.i = and i64 %add572.i, 8589934528
  %add574.i = add nsw i64 %add555.i, %and573.i
  br label %do.body581.i

do.body581.i:                                     ; preds = %do.body562.i, %do.body530.i, %if.end526.i, %do.body374.i, %if.end369.i
  %prealloc_size.11.i = phi i64 [ %add383.i, %do.body374.i ], [ %prealloc_size.5.i, %if.end369.i ], [ %add574.i, %do.body562.i ], [ %add555.i, %do.body530.i ], [ %prealloc_size.10.i, %if.end526.i ]
  %prealloc_idx.11.i = phi i32 [ %inc377.i, %do.body374.i ], [ %prealloc_idx.5.i, %if.end369.i ], [ %inc565.i, %do.body562.i ], [ %inc547.i, %do.body530.i ], [ %prealloc_idx.10.i, %if.end526.i ]
  %call582.i = tail call i8* @x264_malloc(i64 %prealloc_size.11.i) #7
  %base.i = bitcast i8* %call21.i to i8**
  store i8* %call582.i, i8** %base.i, align 16, !tbaa !13
  %tobool584.i = icmp eq i8* %call582.i, null
  %131 = ptrtoint i8* %call582.i to i32
  br i1 %tobool584.i, label %fail.i, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %do.body581.i
  %tobool5891222.i = icmp eq i32 %prealloc_idx.11.i, 0
  br i1 %tobool5891222.i, label %do.end595.i, label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %132 = bitcast i8* %call21.i to i32*
  %dec1223.i30 = add nsw i32 %prealloc_idx.11.i, -1
  %arrayidx590.i31 = getelementptr inbounds [1024 x i8**], [1024 x i8**]* %preallocs.i, i32 0, i32 %dec1223.i30
  %133 = load i8**, i8*** %arrayidx590.i31, align 4, !tbaa !67
  %134 = bitcast i8** %133 to i32*
  %135 = load i32, i32* %134, align 4, !tbaa !67
  %add592.i32 = add nsw i32 %135, %131
  %136 = inttoptr i32 %add592.i32 to i8*
  store i8* %136, i8** %133, align 4, !tbaa !67
  %tobool589.i33 = icmp eq i32 %dec1223.i30, 0
  br i1 %tobool589.i33, label %do.end595.i, label %while.body.while.body_crit_edge.i

while.body.while.body_crit_edge.i:                ; preds = %while.body.lr.ph.i, %while.body.while.body_crit_edge.i
  %dec1223.i34 = phi i32 [ %dec1223.i, %while.body.while.body_crit_edge.i ], [ %dec1223.i30, %while.body.lr.ph.i ]
  %.pre1281.i = load i32, i32* %132, align 16, !tbaa !13
  %dec1223.i = add nsw i32 %dec1223.i34, -1
  %arrayidx590.i = getelementptr inbounds [1024 x i8**], [1024 x i8**]* %preallocs.i, i32 0, i32 %dec1223.i
  %137 = load i8**, i8*** %arrayidx590.i, align 4, !tbaa !67
  %138 = bitcast i8** %137 to i32*
  %139 = load i32, i32* %138, align 4, !tbaa !67
  %add592.i = add nsw i32 %139, %.pre1281.i
  %140 = inttoptr i32 %add592.i to i8*
  store i8* %140, i8** %137, align 4, !tbaa !67
  %tobool589.i = icmp eq i32 %dec1223.i, 0
  br i1 %tobool589.i, label %do.end595.i, label %while.body.while.body_crit_edge.i

do.end595.i:                                      ; preds = %while.body.while.body_crit_edge.i, %while.body.lr.ph.i, %while.cond.preheader.i
  switch i32 %retval.0.i.i, label %if.end613.i [
    i32 8, label %if.then601.i
    i32 4, label %if.then601.i
  ]

if.then601.i:                                     ; preds = %do.end595.i, %do.end595.i
  %conv604.i = zext i1 %cmp.i to i32
  %shr605.i = lshr i32 32, %conv604.i
  %arrayidx607.i = getelementptr inbounds i8, i8* %call21.i, i32 356
  %141 = bitcast i8* %arrayidx607.i to i8**
  %142 = load i8*, i8** %141, align 4, !tbaa !67
  %arrayidx609.i = getelementptr inbounds i8, i8* %call21.i, i32 168
  %143 = bitcast i8* %arrayidx609.i to i32*
  %144 = load i32, i32* %143, align 4, !tbaa !66
  %mul610.i = mul nsw i32 %144, %shr605.i
  %add.ptr.i = getelementptr inbounds i8, i8* %142, i32 %mul610.i
  %add.ptr611.i = getelementptr inbounds i8, i8* %add.ptr.i, i32 64
  %arrayidx612.i = getelementptr inbounds i8, i8* %call21.i, i32 216
  %145 = bitcast i8* %arrayidx612.i to i8**
  store i8* %add.ptr611.i, i8** %145, align 4, !tbaa !67
  br label %if.end613.i

if.end613.i:                                      ; preds = %if.then601.i, %do.end595.i
  %146 = load i32, i32* %i_subpel_refine.i, align 4, !tbaa !111
  %tobool633.i = icmp ne i32 %146, 0
  %or.cond801.i = and i1 %tobool169.i, %tobool633.i
  %plane674.i = getelementptr inbounds i8, i8* %call21.i, i32 212
  %147 = bitcast i8* %plane674.i to [3 x i8*]*
  %filtered676.i = getelementptr inbounds i8, i8* %call21.i, i32 236
  %148 = bitcast i8* %filtered676.i to [3 x [4 x i8*]]*
  %filtered_fld.i = getelementptr inbounds i8, i8* %call21.i, i32 284
  %149 = bitcast i8* %filtered_fld.i to [3 x [4 x i8*]]*
  %plane_fld.i = getelementptr inbounds i8, i8* %call21.i, i32 224
  %150 = bitcast i8* %plane_fld.i to [3 x i8*]*
  br i1 %or.cond801.i, label %for.body619.us.i, label %for.body619.i

for.body619.us.i:                                 ; preds = %if.end613.i, %for.body619.us.i
  %p614.01219.us.i = phi i32 [ %inc681.us.i, %for.body619.us.i ], [ 0, %if.end613.i ]
  %arrayidx622.us.i = getelementptr inbounds [3 x i32], [3 x i32]* %53, i32 0, i32 %p614.01219.us.i
  %151 = load i32, i32* %arrayidx622.us.i, align 4, !tbaa !66
  %arrayidx624.us.i = getelementptr inbounds [3 x i32], [3 x i32]* %.pre-phi.i, i32 0, i32 %p614.01219.us.i
  %152 = load i32, i32* %arrayidx624.us.i, align 4, !tbaa !66
  %add626.us.i = add nsw i32 %152, 64
  %mul627.us.i = mul nsw i32 %add626.us.i, %151
  %and.i1186.us.i = and i32 %mul627.us.i, 1023
  %tobool.i1187.us.i = icmp eq i32 %and.i1186.us.i, 0
  %add.i1188.us.i = add nsw i32 %mul627.us.i, 128
  %spec.select.i1189.us.i = select i1 %tobool.i1187.us.i, i32 %add.i1188.us.i, i32 %mul627.us.i
  %arrayidx644.us.i = getelementptr inbounds [4 x i8*], [4 x i8*]* %55, i32 0, i32 %p614.01219.us.i
  %mul650.us.i = shl nsw i32 %151, 5
  %153 = load i8*, i8** %arrayidx644.us.i, align 4, !tbaa !67
  %add.ptr647.us.i = getelementptr inbounds i8, i8* %153, i32 64
  %add.ptr651.us.i = getelementptr inbounds i8, i8* %add.ptr647.us.i, i32 %mul650.us.i
  %arrayidx654.us.i = getelementptr inbounds [3 x [4 x i8*]], [3 x [4 x i8*]]* %148, i32 0, i32 %p614.01219.us.i, i32 0
  store i8* %add.ptr651.us.i, i8** %arrayidx654.us.i, align 4, !tbaa !67
  %154 = load i8*, i8** %arrayidx644.us.i, align 4, !tbaa !67
  %add.ptr647.us.1.i = getelementptr inbounds i8, i8* %154, i32 64
  %add.ptr651.us.1.i = getelementptr inbounds i8, i8* %add.ptr647.us.1.i, i32 %mul650.us.i
  %add.ptr652.us.1.i = getelementptr inbounds i8, i8* %add.ptr651.us.1.i, i32 %spec.select.i1189.us.i
  %arrayidx654.us.1.i = getelementptr inbounds [3 x [4 x i8*]], [3 x [4 x i8*]]* %148, i32 0, i32 %p614.01219.us.i, i32 1
  store i8* %add.ptr652.us.1.i, i8** %arrayidx654.us.1.i, align 4, !tbaa !67
  %155 = load i8*, i8** %arrayidx644.us.i, align 4, !tbaa !67
  %mul646.us.2.i = shl i32 %spec.select.i1189.us.i, 1
  %add.ptr647.us.2.i = getelementptr inbounds i8, i8* %155, i32 64
  %add.ptr651.us.2.i = getelementptr inbounds i8, i8* %add.ptr647.us.2.i, i32 %mul650.us.i
  %add.ptr652.us.2.i = getelementptr inbounds i8, i8* %add.ptr651.us.2.i, i32 %mul646.us.2.i
  %arrayidx654.us.2.i = getelementptr inbounds [3 x [4 x i8*]], [3 x [4 x i8*]]* %148, i32 0, i32 %p614.01219.us.i, i32 2
  store i8* %add.ptr652.us.2.i, i8** %arrayidx654.us.2.i, align 4, !tbaa !67
  %156 = load i8*, i8** %arrayidx644.us.i, align 4, !tbaa !67
  %mul646.us.3.i = mul i32 %spec.select.i1189.us.i, 3
  %add.ptr647.us.3.i = getelementptr inbounds i8, i8* %156, i32 64
  %add.ptr651.us.3.i = getelementptr inbounds i8, i8* %add.ptr647.us.3.i, i32 %mul650.us.i
  %add.ptr652.us.3.i = getelementptr inbounds i8, i8* %add.ptr651.us.3.i, i32 %mul646.us.3.i
  %arrayidx654.us.3.i = getelementptr inbounds [3 x [4 x i8*]], [3 x [4 x i8*]]* %148, i32 0, i32 %p614.01219.us.i, i32 3
  store i8* %add.ptr652.us.3.i, i8** %arrayidx654.us.3.i, align 4, !tbaa !67
  %157 = ptrtoint i8* %add.ptr651.us.i to i32
  %arrayidx662.us.i = getelementptr inbounds [3 x i8*], [3 x i8*]* %147, i32 0, i32 %p614.01219.us.i
  %158 = bitcast i8** %arrayidx662.us.i to i32*
  store i32 %157, i32* %158, align 4, !tbaa !67
  %arrayidx664.us.i = getelementptr inbounds [3 x [4 x i8*]], [3 x [4 x i8*]]* %149, i32 0, i32 %p614.01219.us.i, i32 0
  %159 = bitcast i8** %arrayidx664.us.i to i32*
  %160 = load i32, i32* %159, align 4, !tbaa !67
  %arrayidx665.us.i = getelementptr inbounds [3 x i8*], [3 x i8*]* %150, i32 0, i32 %p614.01219.us.i
  %161 = bitcast i8** %arrayidx665.us.i to i32*
  store i32 %160, i32* %161, align 4, !tbaa !67
  %inc681.us.i = add nuw nsw i32 %p614.01219.us.i, 1
  %exitcond.i = icmp eq i32 %inc681.us.i, %luma_plane_count.0.i
  br i1 %exitcond.i, label %for.cond.cleanup618.i, label %for.body619.us.i

for.cond.cleanup618.i:                            ; preds = %for.body619.i, %for.body619.us.i
  br i1 %tobool169.i, label %if.then684.i, label %if.else703.i

for.body619.i:                                    ; preds = %if.end613.i, %for.body619.i
  %p614.01219.i = phi i32 [ %inc681.i, %for.body619.i ], [ 0, %if.end613.i ]
  %arrayidx622.i = getelementptr inbounds [3 x i32], [3 x i32]* %53, i32 0, i32 %p614.01219.i
  %162 = load i32, i32* %arrayidx622.i, align 4, !tbaa !66
  %arrayidx668.i = getelementptr inbounds [4 x i8*], [4 x i8*]* %55, i32 0, i32 %p614.01219.i
  %163 = load i8*, i8** %arrayidx668.i, align 4, !tbaa !67
  %mul671.i = shl nsw i32 %162, 5
  %add.ptr672.i = getelementptr inbounds i8, i8* %163, i32 64
  %add.ptr673.i = getelementptr inbounds i8, i8* %add.ptr672.i, i32 %mul671.i
  %arrayidx675.i = getelementptr inbounds [3 x i8*], [3 x i8*]* %147, i32 0, i32 %p614.01219.i
  store i8* %add.ptr673.i, i8** %arrayidx675.i, align 4, !tbaa !67
  %arrayidx678.i = getelementptr inbounds [3 x [4 x i8*]], [3 x [4 x i8*]]* %148, i32 0, i32 %p614.01219.i, i32 0
  store i8* %add.ptr673.i, i8** %arrayidx678.i, align 4, !tbaa !67
  %inc681.i = add nuw nsw i32 %p614.01219.i, 1
  %exitcond1272.i = icmp eq i32 %inc681.i, %luma_plane_count.0.i
  br i1 %exitcond1272.i, label %for.cond.cleanup618.i, label %for.body619.i

if.then684.i:                                     ; preds = %for.cond.cleanup618.i
  %mv16x16685.i = getelementptr inbounds i8, i8* %call21.i, i32 2792
  %164 = bitcast i8* %mv16x16685.i to [2 x i16]**
  %165 = bitcast i8* %mv16x16685.i to i32**
  %166 = load i32*, i32** %165, align 8, !tbaa !114
  store i32 0, i32* %166, align 4, !tbaa !87
  %167 = load [2 x i16]*, [2 x i16]** %164, align 8, !tbaa !114
  %incdec.ptr.i = getelementptr inbounds [2 x i16], [2 x i16]* %167, i32 1
  store [2 x i16]* %incdec.ptr.i, [2 x i16]** %164, align 8, !tbaa !114
  %i_me_method691.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 51, i32 7
  %168 = load i32, i32* %i_me_method691.i, align 4, !tbaa !118
  %cmp692.i = icmp sgt i32 %168, 2
  br i1 %cmp692.i, label %if.then694.i, label %frame_new.exit

if.then694.i:                                     ; preds = %if.then684.i
  %arrayidx696.i = getelementptr inbounds i8, i8* %call21.i, i32 364
  %169 = bitcast i8* %arrayidx696.i to i16**
  %170 = load i16*, i16** %169, align 4, !tbaa !67
  %arrayidx698.i = bitcast i8* %i_stride158.i to i32*
  %171 = load i32, i32* %arrayidx698.i, align 4, !tbaa !66
  %mul699.i = shl nsw i32 %171, 5
  %add.ptr700.i = getelementptr inbounds i16, i16* %170, i32 %mul699.i
  %add.ptr701.i = getelementptr inbounds i16, i16* %add.ptr700.i, i32 64
  %integral.i = getelementptr inbounds i8, i8* %call21.i, i32 348
  %172 = bitcast i8* %integral.i to i16**
  store i16* %add.ptr701.i, i16** %172, align 4, !tbaa !128
  br label %frame_new.exit

if.else703.i:                                     ; preds = %for.cond.cleanup618.i
  %b_have_lowres705.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 59, i32 18
  %173 = load i32, i32* %b_have_lowres705.i, align 16, !tbaa !121
  %tobool706.i = icmp eq i32 %173, 0
  br i1 %tobool706.i, label %frame_new.exit, label %if.then707.i

if.then707.i:                                     ; preds = %if.else703.i
  %174 = load i32, i32* %33, align 8, !tbaa !92
  %175 = load i32, i32* %arrayidx79.i.pre-phi, align 4, !tbaa !66
  %div712.i = sdiv i32 %175, 2
  %add713.i = add nsw i32 %div712.i, 64
  %mul714.i = mul nsw i32 %add713.i, %174
  %and.i1185.i = and i32 %mul714.i, 1023
  %tobool.i.i = icmp eq i32 %and.i1185.i, 0
  %add.i.i = add nsw i32 %mul714.i, 128
  %spec.select.i.i = select i1 %tobool.i.i, i32 %add.i.i, i32 %mul714.i
  %buffer_lowres723.i = getelementptr inbounds i8, i8* %call21.i, i32 384
  %176 = bitcast i8* %buffer_lowres723.i to i8**
  %mul725.i = shl nsw i32 %174, 5
  %lowres.i = getelementptr inbounds i8, i8* %call21.i, i32 332
  %177 = load i8*, i8** %176, align 16, !tbaa !122
  %add.ptr726.i = getelementptr inbounds i8, i8* %177, i32 64
  %add.ptr727.i = getelementptr inbounds i8, i8* %add.ptr726.i, i32 %mul725.i
  %arrayidx732.i = bitcast i8* %lowres.i to i8**
  store i8* %add.ptr727.i, i8** %arrayidx732.i, align 4, !tbaa !67
  %add.ptr731.1.i = getelementptr inbounds i8, i8* %add.ptr727.i, i32 %spec.select.i.i
  %arrayidx732.1.i = getelementptr inbounds i8, i8* %call21.i, i32 336
  %178 = bitcast i8* %arrayidx732.1.i to i8**
  store i8* %add.ptr731.1.i, i8** %178, align 4, !tbaa !67
  %mul729.2.i = shl i32 %spec.select.i.i, 1
  %add.ptr731.2.i = getelementptr inbounds i8, i8* %add.ptr727.i, i32 %mul729.2.i
  %arrayidx732.2.i = getelementptr inbounds i8, i8* %call21.i, i32 340
  %179 = bitcast i8* %arrayidx732.2.i to i8**
  store i8* %add.ptr731.2.i, i8** %179, align 4, !tbaa !67
  %mul729.3.i = mul i32 %spec.select.i.i, 3
  %add.ptr731.3.i = getelementptr inbounds i8, i8* %add.ptr727.i, i32 %mul729.3.i
  %arrayidx732.3.i = getelementptr inbounds i8, i8* %call21.i, i32 344
  %180 = bitcast i8* %arrayidx732.3.i to i8**
  store i8* %add.ptr731.3.i, i8** %180, align 4, !tbaa !67
  %lowres_mvs757.i = getelementptr inbounds i8, i8* %call21.i, i32 2796
  %181 = bitcast i8* %lowres_mvs757.i to [2 x [17 x [2 x i16]*]]*
  %.pre1282.i = load i32, i32* %i_bframe.i, align 4, !tbaa !104
  br label %for.cond750.preheader.i

for.cond750.preheader.i:                          ; preds = %for.cond.cleanup755.i, %if.then707.i
  %182 = phi i32 [ %.pre1282.i, %if.then707.i ], [ %187, %for.cond.cleanup755.i ]
  %j736.01215.i = phi i32 [ 0, %if.then707.i ], [ %inc768.i, %for.cond.cleanup755.i ]
  %cmp7531211.i = icmp slt i32 %182, 0
  br i1 %cmp7531211.i, label %for.cond.cleanup755.i, label %for.body756.i

for.cond.cleanup747.i:                            ; preds = %for.cond.cleanup755.i
  %lowres_costs770.i = getelementptr inbounds i8, i8* %call21.i, i32 2940
  %arrayidx772.i = bitcast i8* %lowres_costs770.i to i16**
  %183 = load i16*, i16** %arrayidx772.i, align 4, !tbaa !67
  %i_intra_cost.i = getelementptr inbounds i8, i8* %call21.i, i32 8512
  %184 = bitcast i8* %i_intra_cost.i to i16**
  store i16* %183, i16** %184, align 16, !tbaa !129
  %185 = bitcast i16* %183 to i8*
  %add774.i = shl i32 %9, 1
  %mul775.i = add i32 %add774.i, 6
  tail call void @llvm.memset.p0i8.i32(i8* align 2 %185, i8 -1, i32 %mul775.i, i1 false) #7
  %i_aq_mode778.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 15
  %186 = load i32, i32* %i_aq_mode778.i, align 4, !tbaa !124
  %tobool779.i = icmp eq i32 %186, 0
  br i1 %tobool779.i, label %frame_new.exit, label %if.then780.i

for.cond.cleanup755.i:                            ; preds = %for.body756.i, %for.cond750.preheader.i
  %187 = phi i32 [ %182, %for.cond750.preheader.i ], [ %191, %for.body756.i ]
  %inc768.i = add nuw nsw i32 %j736.01215.i, 1
  %tobool740.i = icmp ne i32 %187, 0
  %lnot.ext744.i = zext i1 %tobool740.i to i32
  %cmp745.i = icmp ult i32 %j736.01215.i, %lnot.ext744.i
  br i1 %cmp745.i, label %for.cond750.preheader.i, label %for.cond.cleanup747.i

for.body756.i:                                    ; preds = %for.cond750.preheader.i, %for.body756.i
  %i749.01212.i = phi i32 [ %inc765.i, %for.body756.i ], [ 0, %for.cond750.preheader.i ]
  %arrayidx759.i = getelementptr inbounds [2 x [17 x [2 x i16]*]], [2 x [17 x [2 x i16]*]]* %181, i32 0, i32 %j736.01215.i, i32 %i749.01212.i
  %188 = bitcast [2 x i16]** %arrayidx759.i to i8**
  %189 = load i8*, i8** %188, align 4, !tbaa !67
  %190 = load i32, i32* %i_mb_count2.i, align 8, !tbaa !102
  %mul763.i = shl i32 %190, 2
  tail call void @llvm.memset.p0i8.i32(i8* align 2 %189, i8 0, i32 %mul763.i, i1 false) #7
  %inc765.i = add nuw nsw i32 %i749.01212.i, 1
  %191 = load i32, i32* %i_bframe.i, align 4, !tbaa !104
  %cmp753.i = icmp slt i32 %i749.01212.i, %191
  br i1 %cmp753.i, label %for.body756.i, label %for.cond.cleanup755.i

if.then780.i:                                     ; preds = %for.cond.cleanup747.i
  %i_inv_qscale_factor781.i = getelementptr inbounds i8, i8* %call21.i, i32 8520
  %192 = bitcast i8* %i_inv_qscale_factor781.i to i8**
  %193 = load i8*, i8** %192, align 8, !tbaa !127
  %194 = load i32, i32* %i_mb_count2.i, align 8, !tbaa !102
  %add784.i = shl i32 %194, 1
  %mul785.i = add i32 %add784.i, 6
  tail call void @llvm.memset.p0i8.i32(i8* align 2 %193, i8 0, i32 %mul785.i, i1 false) #7
  br label %frame_new.exit

fail.i:                                           ; preds = %do.body581.i, %do.end.i, %frame_internal_csp.exit.i
  tail call void @x264_free(i8* %call21.i) #7
  br label %frame_new.exit

frame_new.exit:                                   ; preds = %if.then684.i, %if.then694.i, %if.else703.i, %for.cond.cleanup747.i, %if.then780.i, %fail.i
  %retval.0.i = phi %struct.x264_frame* [ null, %fail.i ], [ %15, %if.then780.i ], [ %15, %for.cond.cleanup747.i ], [ %15, %if.else703.i ], [ %15, %if.then684.i ], [ %15, %if.then694.i ]
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %4)
  br label %if.end

if.end:                                           ; preds = %frame_new.exit, %x264_8_frame_pop.exit
  %frame.0 = phi %struct.x264_frame* [ %3, %x264_8_frame_pop.exit ], [ %retval.0.i, %frame_new.exit ]
  %tobool6 = icmp eq %struct.x264_frame* %frame.0, null
  br i1 %tobool6, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end
  %b_last_minigop_bframe = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame.0, i32 0, i32 23
  store i8 0, i8* %b_last_minigop_bframe, align 1, !tbaa !130
  %i_reference_count = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame.0, i32 0, i32 91
  store i32 1, i32* %i_reference_count, align 8, !tbaa !99
  %b_intra_calculated = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame.0, i32 0, i32 75
  store i32 0, i32* %b_intra_calculated, align 4, !tbaa !131
  %b_scenecut = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame.0, i32 0, i32 79
  store i32 1, i32* %b_scenecut, align 4, !tbaa !132
  %b_keyframe = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame.0, i32 0, i32 21
  store i32 0, i32* %b_keyframe, align 4, !tbaa !133
  %b_corrupt = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame.0, i32 0, i32 99
  store i32 0, i32* %b_corrupt, align 8, !tbaa !134
  %b_sliced_threads = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 3
  %195 = load i32, i32* %b_sliced_threads, align 4, !tbaa !135
  %tobool9 = icmp eq i32 %195, 0
  br i1 %tobool9, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.end8
  %i_threads = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 1
  %196 = load i32, i32* %i_threads, align 4, !tbaa !136
  br label %cond.end

cond.end:                                         ; preds = %if.end8, %cond.true
  %cond = phi i32 [ %196, %cond.true ], [ 1, %if.end8 ]
  %i_slice_count = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame.0, i32 0, i32 94
  store i32 %cond, i32* %i_slice_count, align 4, !tbaa !137
  %arraydecay = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame.0, i32 0, i32 47, i32 0
  %197 = bitcast [3 x %struct.x264_weight_t]* %arraydecay to i8*
  tail call void @llvm.memset.p0i8.i32(i8* nonnull align 16 dereferenceable(2304) %197, i8 0, i32 2304, i1 false)
  %arraydecay11 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame.0, i32 0, i32 80, i32 0
  %198 = bitcast float* %arraydecay11 to i8*
  tail call void @llvm.memset.p0i8.i32(i8* nonnull align 16 dereferenceable(72) %198, i8 0, i32 72, i1 false)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cond.end
  ret %struct.x264_frame* %frame.0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: nounwind
define hidden void @x264_8_frame_push_blank_unused(%struct.x264_t* nocapture readonly %h, %struct.x264_frame* %frame) local_unnamed_addr #0 {
entry:
  %i_reference_count = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame, i32 0, i32 91
  %0 = load i32, i32* %i_reference_count, align 8, !tbaa !99
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.end, label %if.else

if.else:                                          ; preds = %entry
  tail call void @__assert_fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i32 804, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__.x264_8_frame_push_blank_unused, i32 0, i32 0)) #8
  unreachable

if.end:                                           ; preds = %entry
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %i_reference_count, align 8, !tbaa !99
  %cmp3 = icmp eq i32 %dec, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %blank_unused = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 59, i32 2
  %1 = load %struct.x264_frame**, %struct.x264_frame*** %blank_unused, align 4, !tbaa !138
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i, %if.then4
  %i.0.i = phi i32 [ 0, %if.then4 ], [ %inc.i, %while.cond.i ]
  %arrayidx.i = getelementptr inbounds %struct.x264_frame*, %struct.x264_frame** %1, i32 %i.0.i
  %2 = load %struct.x264_frame*, %struct.x264_frame** %arrayidx.i, align 4, !tbaa !67
  %tobool.i = icmp eq %struct.x264_frame* %2, null
  %inc.i = add nuw nsw i32 %i.0.i, 1
  br i1 %tobool.i, label %x264_8_frame_push.exit, label %while.cond.i

x264_8_frame_push.exit:                           ; preds = %while.cond.i
  store %struct.x264_frame* %frame, %struct.x264_frame** %arrayidx.i, align 4, !tbaa !67
  br label %if.end5

if.end5:                                          ; preds = %x264_8_frame_push.exit, %if.end
  ret void
}

; Function Attrs: nounwind
define hidden %struct.x264_frame* @x264_8_frame_pop_blank_unused(%struct.x264_t* nocapture readonly %h) local_unnamed_addr #0 {
entry:
  %blank_unused = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 59, i32 2
  %0 = load %struct.x264_frame**, %struct.x264_frame*** %blank_unused, align 4, !tbaa !138
  %1 = load %struct.x264_frame*, %struct.x264_frame** %0, align 4, !tbaa !67
  %tobool = icmp eq %struct.x264_frame* %1, null
  br i1 %tobool, label %if.else, label %while.cond.i

while.cond.i:                                     ; preds = %entry, %while.cond.i
  %i.0.i = phi i32 [ %add.i, %while.cond.i ], [ 0, %entry ]
  %add.i = add nuw nsw i32 %i.0.i, 1
  %arrayidx1.i = getelementptr inbounds %struct.x264_frame*, %struct.x264_frame** %0, i32 %add.i
  %2 = load %struct.x264_frame*, %struct.x264_frame** %arrayidx1.i, align 4, !tbaa !67
  %tobool2.i = icmp eq %struct.x264_frame* %2, null
  br i1 %tobool2.i, label %x264_8_frame_pop.exit, label %while.cond.i

x264_8_frame_pop.exit:                            ; preds = %while.cond.i
  %arrayidx3.i = getelementptr inbounds %struct.x264_frame*, %struct.x264_frame** %0, i32 %i.0.i
  %3 = load %struct.x264_frame*, %struct.x264_frame** %arrayidx3.i, align 4, !tbaa !67
  store %struct.x264_frame* null, %struct.x264_frame** %arrayidx3.i, align 4, !tbaa !67
  br label %if.end

if.else:                                          ; preds = %entry
  %call3 = tail call i8* @x264_malloc(i64 12032) #7
  %4 = bitcast i8* %call3 to %struct.x264_frame*
  br label %if.end

if.end:                                           ; preds = %if.else, %x264_8_frame_pop.exit
  %frame.0 = phi %struct.x264_frame* [ %3, %x264_8_frame_pop.exit ], [ %4, %if.else ]
  %tobool4 = icmp eq %struct.x264_frame* %frame.0, null
  br i1 %tobool4, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %b_duplicate = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame.0, i32 0, i32 49
  store i32 1, i32* %b_duplicate, align 16, !tbaa !2
  %i_reference_count = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %frame.0, i32 0, i32 91
  store i32 1, i32* %i_reference_count, align 8, !tbaa !99
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end6
  ret %struct.x264_frame* %frame.0
}

declare dso_local i8* @x264_malloc(i64) local_unnamed_addr #1

; Function Attrs: nounwind
define hidden void @x264_8_weight_scale_plane(%struct.x264_t* nocapture readnone %h, i8* %dst, i32 %i_dst_stride, i8* %src, i32 %i_src_stride, i32 %i_width, i32 %i_height, %struct.x264_weight_t* %w) local_unnamed_addr #0 {
entry:
  %cmp44 = icmp sgt i32 %i_height, 0
  br i1 %cmp44, label %for.cond.preheader.lr.ph, label %while.end

for.cond.preheader.lr.ph:                         ; preds = %entry
  %sub = add nsw i32 %i_width, -8
  %cmp142 = icmp sgt i32 %i_width, 8
  %weightfn = getelementptr inbounds %struct.x264_weight_t, %struct.x264_weight_t* %w, i32 0, i32 5
  %mul = shl nsw i32 %i_dst_stride, 4
  %mul16 = shl nsw i32 %i_src_stride, 4
  br i1 %cmp142, label %for.cond.preheader.us, label %for.cond.preheader.preheader

for.cond.preheader.preheader:                     ; preds = %for.cond.preheader.lr.ph
  %cmp4 = icmp sgt i32 %i_width, 0
  br label %for.cond.preheader

for.cond.preheader.us:                            ; preds = %for.cond.preheader.lr.ph, %if.end.us
  %dst.addr.047.us = phi i8* [ %add.ptr15.us, %if.end.us ], [ %dst, %for.cond.preheader.lr.ph ]
  %i_height.addr.046.us = phi i32 [ %sub14.us, %if.end.us ], [ %i_height, %for.cond.preheader.lr.ph ]
  %src.addr.045.us = phi i8* [ %add.ptr17.us, %if.end.us ], [ %src, %for.cond.preheader.lr.ph ]
  %cmp3.us = icmp slt i32 %i_height.addr.046.us, 16
  %cond.us = select i1 %cmp3.us, i32 %i_height.addr.046.us, i32 16
  br label %for.body.us

if.then.us:                                       ; preds = %for.cond.for.end_crit_edge.us
  %0 = load void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)**, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*** %weightfn, align 4, !tbaa !139
  %arrayidx6.us = getelementptr inbounds void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %0, i32 2
  %1 = load void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %arrayidx6.us, align 4, !tbaa !67
  %add.ptr7.us = getelementptr inbounds i8, i8* %dst.addr.047.us, i32 %add.us
  %add.ptr8.us = getelementptr inbounds i8, i8* %src.addr.045.us, i32 %add.us
  tail call void %1(i8* nonnull %add.ptr7.us, i32 %i_dst_stride, i8* nonnull %add.ptr8.us, i32 %i_src_stride, %struct.x264_weight_t* nonnull %w, i32 %cond.us) #7
  br label %if.end.us

if.end.us:                                        ; preds = %if.then.us, %for.cond.for.end_crit_edge.us
  %sub14.us = add nsw i32 %i_height.addr.046.us, -16
  %add.ptr15.us = getelementptr inbounds i8, i8* %dst.addr.047.us, i32 %mul
  %add.ptr17.us = getelementptr inbounds i8, i8* %src.addr.045.us, i32 %mul16
  %cmp.us = icmp sgt i32 %i_height.addr.046.us, 16
  br i1 %cmp.us, label %for.cond.preheader.us, label %while.end

for.body.us:                                      ; preds = %for.cond.preheader.us, %for.body.us
  %x.043.us = phi i32 [ 0, %for.cond.preheader.us ], [ %add.us, %for.body.us ]
  %2 = load void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)**, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*** %weightfn, align 4, !tbaa !139
  %arrayidx.us = getelementptr inbounds void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %2, i32 4
  %3 = load void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %arrayidx.us, align 4, !tbaa !67
  %add.ptr.us = getelementptr inbounds i8, i8* %dst.addr.047.us, i32 %x.043.us
  %add.ptr2.us = getelementptr inbounds i8, i8* %src.addr.045.us, i32 %x.043.us
  tail call void %3(i8* %add.ptr.us, i32 %i_dst_stride, i8* %add.ptr2.us, i32 %i_src_stride, %struct.x264_weight_t* %w, i32 %cond.us) #7
  %add.us = add nuw nsw i32 %x.043.us, 16
  %cmp1.us = icmp slt i32 %add.us, %sub
  br i1 %cmp1.us, label %for.body.us, label %for.cond.for.end_crit_edge.us

for.cond.for.end_crit_edge.us:                    ; preds = %for.body.us
  %cmp4.us = icmp slt i32 %add.us, %i_width
  br i1 %cmp4.us, label %if.then.us, label %if.end.us

for.cond.preheader:                               ; preds = %for.cond.preheader.preheader, %if.end
  %dst.addr.047 = phi i8* [ %add.ptr15, %if.end ], [ %dst, %for.cond.preheader.preheader ]
  %i_height.addr.046 = phi i32 [ %sub14, %if.end ], [ %i_height, %for.cond.preheader.preheader ]
  %src.addr.045 = phi i8* [ %add.ptr17, %if.end ], [ %src, %for.cond.preheader.preheader ]
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond.preheader
  %4 = load void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)**, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*** %weightfn, align 4, !tbaa !139
  %arrayidx6 = getelementptr inbounds void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %4, i32 2
  %5 = load void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)*, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** %arrayidx6, align 4, !tbaa !67
  %cmp9 = icmp slt i32 %i_height.addr.046, 16
  %cond13 = select i1 %cmp9, i32 %i_height.addr.046, i32 16
  tail call void %5(i8* %dst.addr.047, i32 %i_dst_stride, i8* %src.addr.045, i32 %i_src_stride, %struct.x264_weight_t* %w, i32 %cond13) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %for.cond.preheader
  %sub14 = add nsw i32 %i_height.addr.046, -16
  %add.ptr15 = getelementptr inbounds i8, i8* %dst.addr.047, i32 %mul
  %add.ptr17 = getelementptr inbounds i8, i8* %src.addr.045, i32 %mul16
  %cmp = icmp sgt i32 %i_height.addr.046, 16
  br i1 %cmp, label %for.cond.preheader, label %while.end

while.end:                                        ; preds = %if.end, %if.end.us, %entry
  ret void
}

; Function Attrs: nounwind
define hidden void @x264_8_frame_delete_list(%struct.x264_frame** %list) local_unnamed_addr #0 {
entry:
  %tobool = icmp eq %struct.x264_frame** %list, null
  br i1 %tobool, label %cleanup, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %0 = load %struct.x264_frame*, %struct.x264_frame** %list, align 4, !tbaa !67
  %tobool17 = icmp eq %struct.x264_frame* %0, null
  br i1 %tobool17, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %1 = phi %struct.x264_frame* [ %2, %while.body ], [ %0, %while.cond.preheader ]
  %i.08 = phi i32 [ %inc, %while.body ], [ 0, %while.cond.preheader ]
  %inc = add nuw nsw i32 %i.08, 1
  tail call void @x264_8_frame_delete(%struct.x264_frame* nonnull %1)
  %arrayidx = getelementptr inbounds %struct.x264_frame*, %struct.x264_frame** %list, i32 %inc
  %2 = load %struct.x264_frame*, %struct.x264_frame** %arrayidx, align 4, !tbaa !67
  %tobool1 = icmp eq %struct.x264_frame* %2, null
  br i1 %tobool1, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %3 = bitcast %struct.x264_frame** %list to i8*
  tail call void @x264_free(i8* nonnull %3) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %while.end
  ret void
}

; Function Attrs: nounwind
define hidden i32 @x264_8_sync_frame_list_init(%struct.x264_sync_frame_list_t* nocapture %slist, i32 %max_size) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %max_size, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %i_max_size = getelementptr inbounds %struct.x264_sync_frame_list_t, %struct.x264_sync_frame_list_t* %slist, i32 0, i32 1
  store i32 %max_size, i32* %i_max_size, align 4, !tbaa !141
  %i_size = getelementptr inbounds %struct.x264_sync_frame_list_t, %struct.x264_sync_frame_list_t* %slist, i32 0, i32 2
  store i32 0, i32* %i_size, align 4, !tbaa !143
  %add = shl i32 %max_size, 2
  %mul = add i32 %add, 4
  %conv = zext i32 %mul to i64
  %call = tail call i8* @x264_malloc(i64 %conv) #7
  %0 = bitcast %struct.x264_sync_frame_list_t* %slist to i8**
  store i8* %call, i8** %0, align 4, !tbaa !144
  %tobool = icmp eq i8* %call, null
  br i1 %tobool, label %return, label %do.end

do.end:                                           ; preds = %if.end
  tail call void @llvm.memset.p0i8.i32(i8* nonnull align 4 %call, i8 0, i32 %mul, i1 false)
  br label %return

return:                                           ; preds = %if.end, %entry, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ -1, %entry ], [ -1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
define hidden void @x264_8_sync_frame_list_delete(%struct.x264_sync_frame_list_t* nocapture readonly %slist) local_unnamed_addr #0 {
entry:
  %list = getelementptr inbounds %struct.x264_sync_frame_list_t, %struct.x264_sync_frame_list_t* %slist, i32 0, i32 0
  %0 = load %struct.x264_frame**, %struct.x264_frame*** %list, align 4, !tbaa !144
  %tobool.i = icmp eq %struct.x264_frame** %0, null
  br i1 %tobool.i, label %x264_8_frame_delete_list.exit, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %entry
  %1 = load %struct.x264_frame*, %struct.x264_frame** %0, align 4, !tbaa !67
  %tobool17.i = icmp eq %struct.x264_frame* %1, null
  br i1 %tobool17.i, label %while.end.i, label %while.body.i

while.body.i:                                     ; preds = %while.cond.preheader.i, %while.body.i
  %2 = phi %struct.x264_frame* [ %3, %while.body.i ], [ %1, %while.cond.preheader.i ]
  %i.08.i = phi i32 [ %inc.i, %while.body.i ], [ 0, %while.cond.preheader.i ]
  %inc.i = add nuw nsw i32 %i.08.i, 1
  tail call void @x264_8_frame_delete(%struct.x264_frame* nonnull %2) #7
  %arrayidx.i = getelementptr inbounds %struct.x264_frame*, %struct.x264_frame** %0, i32 %inc.i
  %3 = load %struct.x264_frame*, %struct.x264_frame** %arrayidx.i, align 4, !tbaa !67
  %tobool1.i = icmp eq %struct.x264_frame* %3, null
  br i1 %tobool1.i, label %while.end.i, label %while.body.i

while.end.i:                                      ; preds = %while.body.i, %while.cond.preheader.i
  %4 = bitcast %struct.x264_frame** %0 to i8*
  tail call void @x264_free(i8* nonnull %4) #7
  br label %x264_8_frame_delete_list.exit

x264_8_frame_delete_list.exit:                    ; preds = %entry, %while.end.i
  ret void
}

; Function Attrs: nofree norecurse nounwind
define hidden void @x264_8_sync_frame_list_push(%struct.x264_sync_frame_list_t* nocapture %slist, %struct.x264_frame* %frame) local_unnamed_addr #5 {
entry:
  %i_size = getelementptr inbounds %struct.x264_sync_frame_list_t, %struct.x264_sync_frame_list_t* %slist, i32 0, i32 2
  %0 = load i32, i32* %i_size, align 4, !tbaa !143
  %i_max_size = getelementptr inbounds %struct.x264_sync_frame_list_t, %struct.x264_sync_frame_list_t* %slist, i32 0, i32 1
  %1 = load i32, i32* %i_max_size, align 4, !tbaa !141
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %while.cond.us, label %while.end

while.cond.us:                                    ; preds = %entry, %while.cond.us
  br label %while.cond.us

while.end:                                        ; preds = %entry
  %list = getelementptr inbounds %struct.x264_sync_frame_list_t, %struct.x264_sync_frame_list_t* %slist, i32 0, i32 0
  %2 = load %struct.x264_frame**, %struct.x264_frame*** %list, align 4, !tbaa !144
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* %i_size, align 4, !tbaa !143
  %arrayidx = getelementptr inbounds %struct.x264_frame*, %struct.x264_frame** %2, i32 %0
  store %struct.x264_frame* %frame, %struct.x264_frame** %arrayidx, align 4, !tbaa !67
  ret void
}

; Function Attrs: nofree norecurse nounwind
define hidden %struct.x264_frame* @x264_8_sync_frame_list_pop(%struct.x264_sync_frame_list_t* nocapture %slist) local_unnamed_addr #5 {
entry:
  %i_size = getelementptr inbounds %struct.x264_sync_frame_list_t, %struct.x264_sync_frame_list_t* %slist, i32 0, i32 2
  %0 = load i32, i32* %i_size, align 4, !tbaa !143
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %while.cond.us, label %while.end

while.cond.us:                                    ; preds = %entry, %while.cond.us
  br label %while.cond.us

while.end:                                        ; preds = %entry
  %list = getelementptr inbounds %struct.x264_sync_frame_list_t, %struct.x264_sync_frame_list_t* %slist, i32 0, i32 0
  %1 = load %struct.x264_frame**, %struct.x264_frame*** %list, align 4, !tbaa !144
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %i_size, align 4, !tbaa !143
  %arrayidx = getelementptr inbounds %struct.x264_frame*, %struct.x264_frame** %1, i32 %dec
  %2 = load %struct.x264_frame*, %struct.x264_frame** %arrayidx, align 4, !tbaa !67
  store %struct.x264_frame* null, %struct.x264_frame** %arrayidx, align 4, !tbaa !67
  ret %struct.x264_frame* %2
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nofree norecurse nounwind writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #5 = { nofree norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 (http://10.18.30.194:8888/compiler/compiler10.git 713ef477716300a9b04a1522e3fce445623444dc)"}
!2 = !{!3, !7, i64 2768}
!3 = !{!"x264_frame", !4, i64 0, !7, i64 4, !5, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !9, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !4, i64 96, !7, i64 100, !7, i64 104, !8, i64 112, !7, i64 120, !7, i64 124, !7, i64 128, !7, i64 132, !5, i64 136, !5, i64 137, !5, i64 138, !9, i64 140, !9, i64 144, !9, i64 148, !7, i64 152, !7, i64 156, !7, i64 160, !5, i64 164, !5, i64 176, !5, i64 188, !7, i64 200, !7, i64 204, !7, i64 208, !5, i64 212, !5, i64 224, !5, i64 236, !5, i64 284, !5, i64 332, !4, i64 348, !5, i64 352, !5, i64 368, !4, i64 384, !5, i64 400, !5, i64 2704, !7, i64 2768, !4, i64 2772, !4, i64 2776, !4, i64 2780, !5, i64 2784, !4, i64 2792, !5, i64 2796, !4, i64 2932, !4, i64 2936, !5, i64 2940, !5, i64 4236, !5, i64 4372, !5, i64 4380, !5, i64 4388, !5, i64 4516, !5, i64 4520, !5, i64 5816, !7, i64 7112, !5, i64 7116, !5, i64 7188, !4, i64 8484, !4, i64 8488, !4, i64 8492, !4, i64 8496, !4, i64 8500, !4, i64 8504, !7, i64 8508, !4, i64 8512, !4, i64 8516, !4, i64 8520, !7, i64 8524, !5, i64 8528, !5, i64 8600, !5, i64 8616, !10, i64 8640, !5, i64 8672, !5, i64 8924, !5, i64 9928, !8, i64 11936, !8, i64 11944, !7, i64 11952, !7, i64 11956, !7, i64 11960, !7, i64 11964, !7, i64 11968, !7, i64 11972, !9, i64 11976, !7, i64 11980, !7, i64 11984, !7, i64 11988, !7, i64 11992, !12, i64 11996, !4, i64 12008, !4, i64 12012, !4, i64 12016}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"int", !5, i64 0}
!8 = !{!"long long", !5, i64 0}
!9 = !{!"float", !5, i64 0}
!10 = !{!"x264_hrd_t", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!11 = !{!"double", !5, i64 0}
!12 = !{!"x264_sei_t", !7, i64 0, !4, i64 4, !4, i64 8}
!13 = !{!3, !4, i64 0}
!14 = !{!3, !4, i64 96}
!15 = !{!16, !4, i64 932}
!16 = !{!"x264_param_t", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !17, i64 56, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !7, i64 128, !7, i64 132, !7, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !7, i64 176, !4, i64 180, !5, i64 184, !5, i64 200, !5, i64 216, !5, i64 232, !5, i64 248, !5, i64 312, !5, i64 376, !5, i64 440, !4, i64 504, !4, i64 508, !7, i64 512, !7, i64 516, !4, i64 520, !18, i64 524, !19, i64 632, !20, i64 748, !7, i64 764, !21, i64 768, !22, i64 824, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !7, i64 856, !7, i64 860, !7, i64 864, !7, i64 868, !7, i64 872, !7, i64 876, !7, i64 880, !7, i64 884, !7, i64 888, !7, i64 892, !7, i64 896, !7, i64 900, !4, i64 904, !4, i64 908, !7, i64 912, !7, i64 916, !7, i64 920, !7, i64 924, !7, i64 928, !4, i64 932, !4, i64 936, !4, i64 940}
!17 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32}
!18 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !9, i64 72, !9, i64 76, !7, i64 80, !7, i64 84, !7, i64 88, !5, i64 92, !7, i64 100, !7, i64 104}
!19 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !7, i64 36, !7, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !7, i64 56, !7, i64 60, !9, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !4, i64 80, !7, i64 84, !4, i64 88, !9, i64 92, !9, i64 96, !9, i64 100, !4, i64 104, !7, i64 108, !4, i64 112}
!20 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12}
!21 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !8, i64 40, !8, i64 48}
!22 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8}
!23 = !{!3, !4, i64 12016}
!24 = !{!3, !4, i64 12012}
!25 = !{!3, !4, i64 12004}
!26 = !{!3, !7, i64 11996}
!27 = !{!3, !4, i64 12000}
!28 = !{!29, !4, i64 8}
!29 = !{!"x264_sei_payload_t", !7, i64 0, !7, i64 4, !4, i64 8}
!30 = !{!31, !7, i64 36}
!31 = !{!"x264_picture_t", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !8, i64 16, !8, i64 24, !4, i64 32, !32, i64 36, !33, i64 80, !10, i64 144, !12, i64 176, !4, i64 188}
!32 = !{!"x264_image_t", !7, i64 0, !7, i64 4, !5, i64 8, !5, i64 24}
!33 = !{!"x264_image_properties_t", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !11, i64 16, !11, i64 24, !5, i64 32, !11, i64 56}
!34 = !{!3, !7, i64 156}
!35 = !{!31, !7, i64 0}
!36 = !{!37, !7, i64 15268}
!37 = !{!"x264_t", !16, i64 0, !4, i64 944, !5, i64 948, !5, i64 1464, !7, i64 1528, !7, i64 1532, !7, i64 1536, !7, i64 1540, !7, i64 1544, !7, i64 1548, !4, i64 1552, !4, i64 1556, !7, i64 1560, !7, i64 1564, !38, i64 1568, !4, i64 1612, !7, i64 1616, !4, i64 1620, !7, i64 1624, !7, i64 1628, !7, i64 1632, !7, i64 1636, !7, i64 1640, !7, i64 1644, !8, i64 1648, !7, i64 1656, !8, i64 1664, !8, i64 1672, !8, i64 1680, !8, i64 1688, !8, i64 1696, !8, i64 1704, !8, i64 1712, !7, i64 1720, !8, i64 1728, !7, i64 1736, !5, i64 1740, !5, i64 1756, !5, i64 1772, !5, i64 1788, !5, i64 1804, !5, i64 1820, !5, i64 1836, !5, i64 1852, !5, i64 1868, !5, i64 1884, !4, i64 1900, !5, i64 1904, !5, i64 2184, !4, i64 3304, !4, i64 3308, !40, i64 3312, !5, i64 8448, !5, i64 8760, !7, i64 8824, !40, i64 8832, !41, i64 14016, !42, i64 15168, !4, i64 15352, !4, i64 15356, !5, i64 15360, !5, i64 15368, !5, i64 15520, !5, i64 15528, !7, i64 15536, !7, i64 15540, !8, i64 15544, !43, i64 15552, !44, i64 18752, !4, i64 30784, !47, i64 30792, !4, i64 34104, !4, i64 34108, !4, i64 34112, !5, i64 34144, !5, i64 34656, !5, i64 36704, !5, i64 36736, !4, i64 36744, !4, i64 36748, !5, i64 36752, !5, i64 36812, !5, i64 36820, !5, i64 36848, !5, i64 36896, !5, i64 36944, !5, i64 36972, !5, i64 37000, !4, i64 37028, !49, i64 37032, !50, i64 37664, !51, i64 37880, !52, i64 37948, !52, i64 37972, !52, i64 37996, !53, i64 38020, !54, i64 38232, !55, i64 38316, !4, i64 38332}
!38 = !{!"", !7, i64 0, !7, i64 4, !4, i64 8, !7, i64 12, !4, i64 16, !39, i64 20}
!39 = !{!"bs_s", !4, i64 0, !4, i64 4, !4, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!40 = !{!"", !4, i64 0, !4, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !5, i64 52, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !5, i64 80, !5, i64 88, !7, i64 344, !5, i64 352, !7, i64 4960, !7, i64 4964, !5, i64 4968, !7, i64 5096, !7, i64 5100, !7, i64 5104, !7, i64 5108, !7, i64 5112, !7, i64 5116, !7, i64 5120, !7, i64 5124}
!41 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !7, i64 64, !5, i64 68, !5, i64 1092}
!42 = !{!"", !4, i64 0, !5, i64 4, !4, i64 12, !5, i64 16, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !8, i64 128, !8, i64 136, !5, i64 144, !8, i64 160, !8, i64 168, !7, i64 176, !7, i64 180}
!43 = !{!"", !5, i64 0, !5, i64 96, !5, i64 128, !5, i64 1664}
!44 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !5, i64 32, !5, i64 40, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !5, i64 108, !5, i64 116, !5, i64 124, !5, i64 136, !5, i64 148, !5, i64 156, !5, i64 164, !5, i64 176, !5, i64 192, !5, i64 200, !5, i64 212, !7, i64 224, !5, i64 228, !5, i64 244, !7, i64 308, !7, i64 312, !7, i64 316, !5, i64 320, !7, i64 328, !7, i64 332, !7, i64 336, !5, i64 340, !7, i64 348, !7, i64 352, !7, i64 356, !7, i64 360, !7, i64 364, !7, i64 368, !4, i64 372, !7, i64 376, !7, i64 380, !7, i64 384, !7, i64 388, !4, i64 392, !4, i64 396, !4, i64 400, !4, i64 404, !4, i64 408, !4, i64 412, !4, i64 416, !4, i64 420, !5, i64 424, !5, i64 432, !5, i64 440, !5, i64 448, !4, i64 704, !4, i64 708, !4, i64 712, !4, i64 716, !5, i64 720, !7, i64 784, !7, i64 788, !5, i64 792, !7, i64 796, !7, i64 800, !7, i64 804, !7, i64 808, !7, i64 812, !7, i64 816, !7, i64 820, !7, i64 824, !7, i64 828, !7, i64 832, !7, i64 836, !45, i64 896, !46, i64 9472, !7, i64 10336, !7, i64 10340, !7, i64 10344, !7, i64 10348, !7, i64 10352, !7, i64 10356, !7, i64 10360, !7, i64 10364, !5, i64 10368, !7, i64 10384, !7, i64 10388, !5, i64 10392, !4, i64 11416, !5, i64 11420, !4, i64 11932, !5, i64 11936, !7, i64 11956, !5, i64 11960}
!45 = !{!"", !5, i64 0, !5, i64 768, !5, i64 2496, !5, i64 2752, !5, i64 3008, !5, i64 3392, !5, i64 3872, !5, i64 3888, !5, i64 3904, !5, i64 4416, !5, i64 4928, !5, i64 5056, !7, i64 5128, !7, i64 5132, !5, i64 5136, !5, i64 5148, !5, i64 5160, !5, i64 5172, !5, i64 5180, !5, i64 8252, !5, i64 8380, !5, i64 8508}
!46 = !{!"", !5, i64 0, !5, i64 40, !5, i64 160, !5, i64 240, !5, i64 560, !5, i64 720, !5, i64 760, !5, i64 792, !7, i64 800, !5, i64 804, !7, i64 808, !7, i64 812, !7, i64 816, !7, i64 820, !5, i64 824, !5, i64 848, !4, i64 856}
!47 = !{!"", !5, i64 0, !5, i64 16, !5, i64 40, !5, i64 64, !5, i64 136, !5, i64 160, !5, i64 184, !5, i64 208, !5, i64 232, !5, i64 256, !5, i64 280, !5, i64 304, !5, i64 760, !5, i64 1032, !5, i64 1048, !5, i64 2072, !5, i64 2120, !5, i64 2536, !5, i64 2560, !5, i64 2568, !5, i64 2576, !48, i64 2584}
!48 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !5, i64 12, !7, i64 88, !7, i64 92, !7, i64 96, !5, i64 100, !5, i64 108, !5, i64 364, !5, i64 432, !5, i64 456, !5, i64 664, !5, i64 676, !5, i64 688, !11, i64 712, !7, i64 720}
!49 = !{!"", !5, i64 0, !5, i64 32, !5, i64 64, !5, i64 96, !5, i64 124, !5, i64 140, !5, i64 172, !5, i64 204, !5, i64 236, !5, i64 264, !5, i64 292, !4, i64 324, !4, i64 328, !5, i64 332, !5, i64 336, !5, i64 352, !5, i64 368, !4, i64 384, !4, i64 388, !4, i64 392, !5, i64 396, !5, i64 424, !5, i64 452, !5, i64 480, !5, i64 508, !4, i64 536, !4, i64 540, !4, i64 544, !4, i64 548, !4, i64 552, !4, i64 556, !4, i64 560, !4, i64 564, !4, i64 568, !4, i64 572, !4, i64 576, !4, i64 580, !4, i64 584, !4, i64 588, !4, i64 592, !4, i64 596, !4, i64 600, !4, i64 604, !4, i64 608, !4, i64 612, !4, i64 616, !4, i64 620, !4, i64 624, !4, i64 628}
!50 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !5, i64 12, !5, i64 60, !4, i64 88, !4, i64 92, !4, i64 96, !4, i64 100, !4, i64 104, !4, i64 108, !4, i64 112, !4, i64 116, !4, i64 120, !4, i64 124, !4, i64 128, !4, i64 132, !4, i64 136, !4, i64 140, !4, i64 144, !4, i64 148, !4, i64 152, !4, i64 156, !4, i64 160, !4, i64 164, !4, i64 168, !4, i64 172, !4, i64 176, !4, i64 180, !4, i64 184, !4, i64 188, !4, i64 192, !4, i64 196, !4, i64 200, !4, i64 204, !4, i64 208, !4, i64 212}
!51 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64}
!52 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20}
!53 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !5, i64 64, !4, i64 120, !4, i64 124, !5, i64 128, !4, i64 180, !4, i64 184, !4, i64 188, !4, i64 192, !4, i64 196, !4, i64 200, !4, i64 204, !4, i64 208}
!54 = !{!"", !5, i64 0, !5, i64 8, !4, i64 16, !4, i64 20, !5, i64 24, !5, i64 32, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !4, i64 76, !4, i64 80}
!55 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12}
!56 = !{!3, !7, i64 16}
!57 = !{!31, !7, i64 4}
!58 = !{!3, !7, i64 24}
!59 = !{!31, !8, i64 16}
!60 = !{!3, !8, i64 48}
!61 = !{!3, !8, i64 32}
!62 = !{!31, !4, i64 32}
!63 = !{!31, !7, i64 8}
!64 = !{!3, !7, i64 128}
!65 = !{i64 0, i64 4, !66, i64 4, i64 4, !67, i64 8, i64 4, !67}
!66 = !{!7, !7, i64 0}
!67 = !{!4, !4, i64 0}
!68 = !{!31, !4, i64 188}
!69 = !{!3, !4, i64 12008}
!70 = !{!37, !7, i64 608}
!71 = !{!31, !4, i64 88}
!72 = !{!31, !4, i64 92}
!73 = !{!37, !4, i64 37784}
!74 = !{!37, !7, i64 28}
!75 = !{!37, !7, i64 32}
!76 = !{!37, !4, i64 37788}
!77 = !{!37, !7, i64 18768}
!78 = !{!37, !4, i64 37768}
!79 = !{!37, !4, i64 37772}
!80 = !{!37, !4, i64 37776}
!81 = !{!37, !7, i64 18756}
!82 = !{!37, !7, i64 1540}
!83 = !{!3, !7, i64 160}
!84 = !{!37, !7, i64 1544}
!85 = !{!37, !7, i64 18764}
!86 = !{!37, !7, i64 18752}
!87 = !{!5, !5, i64 0}
!88 = !{!89, !7, i64 264}
!89 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !20, i64 72, !7, i64 88, !90, i64 92, !7, i64 260, !7, i64 264, !7, i64 268, !7, i64 272, !7, i64 276, !5, i64 280}
!90 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !91, i64 84, !7, i64 132, !7, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164}
!91 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44}
!92 = !{!3, !7, i64 200}
!93 = !{!3, !7, i64 204}
!94 = !{!3, !7, i64 208}
!95 = !{!37, !4, i64 15352}
!96 = !{!3, !7, i64 11952}
!97 = !{!37, !7, i64 1548}
!98 = !{!37, !7, i64 928}
!99 = !{!3, !7, i64 11960}
!100 = !{!3, !5, i64 136}
!101 = !{!37, !7, i64 36}
!102 = !{!37, !7, i64 18760}
!103 = !{!37, !7, i64 0}
!104 = !{!37, !7, i64 116}
!105 = !{!3, !7, i64 4}
!106 = !{!3, !7, i64 100}
!107 = !{!3, !7, i64 120}
!108 = !{!3, !8, i64 112}
!109 = !{!3, !8, i64 56}
!110 = !{!3, !4, i64 2772}
!111 = !{!37, !7, i64 568}
!112 = !{!3, !4, i64 2776}
!113 = !{!3, !4, i64 2780}
!114 = !{!3, !4, i64 2792}
!115 = !{!3, !4, i64 8488}
!116 = !{!3, !4, i64 8492}
!117 = !{!3, !4, i64 8496}
!118 = !{!37, !7, i64 552}
!119 = !{!37, !7, i64 15348}
!120 = !{!3, !4, i64 2936}
!121 = !{!37, !7, i64 15344}
!122 = !{!3, !4, i64 384}
!123 = !{!3, !4, i64 8516}
!124 = !{!37, !7, i64 692}
!125 = !{!3, !4, i64 8500}
!126 = !{!3, !4, i64 8504}
!127 = !{!3, !4, i64 8520}
!128 = !{!3, !4, i64 348}
!129 = !{!3, !4, i64 8512}
!130 = !{!3, !5, i64 137}
!131 = !{!3, !7, i64 8508}
!132 = !{!3, !7, i64 8524}
!133 = !{!3, !7, i64 132}
!134 = !{!3, !7, i64 11992}
!135 = !{!37, !7, i64 12}
!136 = !{!37, !7, i64 4}
!137 = !{!3, !7, i64 11972}
!138 = !{!37, !4, i64 15180}
!139 = !{!140, !4, i64 44}
!140 = !{!"x264_weight_t", !5, i64 0, !5, i64 16, !7, i64 32, !7, i64 36, !7, i64 40, !4, i64 44}
!141 = !{!142, !7, i64 4}
!142 = !{!"", !4, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!143 = !{!142, !7, i64 8}
!144 = !{!142, !4, i64 0}
