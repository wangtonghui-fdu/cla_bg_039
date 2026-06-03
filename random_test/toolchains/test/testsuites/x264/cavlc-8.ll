; ModuleID = 'encoder/cavlc.c'
source_filename = "encoder/cavlc.c"
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

%struct.vlc_t = type { i8, i8 }
%struct.vlc_large_t = type { i16, i8, i8 }
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

@x264_8_macroblock_write_cavlc.i_offsets = internal unnamed_addr constant [3 x i8] c"\05\17\00", align 1
@ct_index = internal unnamed_addr constant [17 x i8] c"\00\00\01\01\02\02\02\02\03\03\03\03\03\03\03\03\03", align 1
@x264_scan8 = internal unnamed_addr constant [51 x i8] c"\0C\0D\14\15\0E\0F\16\17\1C\1D$%\1E\1F&'45<=67>?DELMFGNO\\]de^_fglmtunovw\00(P", align 1
@x264_coeff0_token = external dso_local local_unnamed_addr constant [6 x %struct.vlc_t], align 1
@x264_ue_size_tab = internal unnamed_addr constant [256 x i8] c"\01\01\03\03\05\05\05\05\07\07\07\07\07\07\07\07\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F", align 1
@subpartition_p_to_golomb = internal unnamed_addr constant [4 x i8] c"\03\01\02\00", align 1
@subpartition_b_to_golomb = internal unnamed_addr constant [13 x i8] c"\0A\04\05\01\0B\06\07\02\0C\08\09\03\00", align 1
@x264_mb_partition_listX_table = internal unnamed_addr constant [2 x [17 x i8]] [[17 x i8] c"\01\01\01\01\00\00\00\00\01\01\01\01\00\00\00\00\00", [17 x i8] c"\00\00\00\00\01\01\01\01\01\01\01\01\00\00\00\00\00"], align 1
@x264_mb_type_list_table = internal unnamed_addr constant [19 x [2 x [2 x i8]]] [[2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] zeroinitializer], [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] zeroinitializer], [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] zeroinitializer], [2 x [2 x i8]] [[2 x i8] c"\01\00", [2 x i8] c"\00\01"], [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] c"\00\01"], [2 x [2 x i8]] [[2 x i8] c"\00\01", [2 x i8] c"\01\00"], [2 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] c"\01\01"], [2 x [2 x i8]] [[2 x i8] c"\00\01", [2 x i8] c"\01\01"], [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] c"\01\00"], [2 x [2 x i8]] [[2 x i8] c"\01\00", [2 x i8] c"\01\01"], [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] c"\01\01"], [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] zeroinitializer], align 1
@mb_type_b_to_golomb = internal unnamed_addr constant [3 x [9 x i8]] [[9 x i8] c"\04\08\0C\0A\06\0E\10\12\14", [9 x i8] c"\05\09\0D\0B\07\0F\11\13\15", [9 x i8] c"\01\FF\FF\FF\02\FF\FF\FF\03"], align 1
@x264_mb_pred_mode16x16_fix = internal unnamed_addr constant [7 x i8] c"\00\01\02\03\02\02\02", align 1
@x264_mb_pred_mode4x4_fix = internal unnamed_addr constant [13 x i8] c"\FF\00\01\02\03\04\05\06\07\08\02\02\02", align 1
@x264_mb_chroma_pred_mode_fix = internal unnamed_addr constant [7 x i8] c"\00\01\02\03\00\00\00", align 1
@cbp_to_golomb = internal unnamed_addr constant <{ <{ <{ [16 x i8], [32 x i8] }>, <{ [15 x i8], [33 x i8] }> }>, [2 x [48 x i8]] }> <{ <{ <{ [16 x i8], [32 x i8] }>, <{ [15 x i8], [33 x i8] }> }> <{ <{ [16 x i8], [32 x i8] }> <{ [16 x i8] c"\00\01\02\05\03\06\0E\0A\04\0F\07\0B\08\0C\0D\09", [32 x i8] zeroinitializer }>, <{ [15 x i8], [33 x i8] }> <{ [15 x i8] c"\01\0A\0B\06\0C\07\0E\02\0D\0F\08\03\09\04\05", [33 x i8] zeroinitializer }> }>, [2 x [48 x i8]] [[48 x i8] c"\00\02\03\07\04\08\11\0D\05\12\09\0E\0A\0F\10\0B\01 !$\22%,(#-&)'*+\13\06\18\19\14\1A\15.\1C\1B/\16\1D\17\1E\1F\0C", [48 x i8] c"\03\1D\1E\11\1F\12%\08 &\13\09\14\0A\0B\02\10!\22\15#\16'\04$(\17\05\18\06\07\01)*+\19,\1A.\0C-/\1B\0D\1C\0E\0F\00"] }>, align 1
@x264_transform_allowed = internal unnamed_addr constant [19 x i8] c"\00\00\00\00\01\02\00\01\01\01\01\01\01\01\01\01\01\01\00", align 1
@cavlc_block_residual_internal.ctz_index = internal unnamed_addr constant [8 x i8] c"\03\00\01\00\02\00\01\00", align 1
@cavlc_block_residual_internal.count_cat = internal unnamed_addr constant [14 x i8] c"\10\0F\10\00\0F@\10\0F\10@\10\0F\10@", align 1
@x264_8_run_before = external dso_local global [65536 x i32], align 4
@x264_coeff_token = external dso_local local_unnamed_addr constant [6 x [16 x [4 x %struct.vlc_t]]], align 1
@x264_8_level_token = external dso_local local_unnamed_addr global [7 x [128 x %struct.vlc_large_t]], align 2
@x264_total_zeros_2x2_dc = external dso_local local_unnamed_addr constant [3 x [4 x %struct.vlc_t]], align 1
@x264_total_zeros_2x4_dc = external dso_local local_unnamed_addr constant [7 x [8 x %struct.vlc_t]], align 1
@x264_total_zeros = external dso_local local_unnamed_addr constant [15 x [16 x %struct.vlc_t]], align 1
@cavlc_block_residual_escape.next_suffix = internal unnamed_addr constant [7 x i16] [i16 0, i16 3, i16 6, i16 12, i16 24, i16 48, i16 -1], align 2
@x264_ctz_4bit.lut = internal unnamed_addr constant [16 x i8] c"\04\00\01\00\02\00\01\00\03\00\01\00\02\00\01\00", align 1

; Function Attrs: nounwind
define hidden void @x264_8_macroblock_write_cavlc(%struct.x264_t* %h) local_unnamed_addr #0 {
entry:
  %bs = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5
  %i_type = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 76
  %0 = load i32, i32* %i_type, align 16, !tbaa !2
  %i_chroma_format_idc = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 22
  %1 = load i32, i32* %i_chroma_format_idc, align 8, !tbaa !36
  %cmp = icmp eq i32 %1, 3
  %cond = select i1 %cmp, i32 3, i32 1
  %2 = add i32 %1, -1
  %3 = icmp ult i32 %2, 2
  %lor.ext = zext i1 %3 to i32
  %p.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 1
  %4 = bitcast i8** %p.i to i32*
  %5 = load i32, i32* %4, align 4, !tbaa !40
  %6 = bitcast %struct.bs_s* %bs to i32*
  %7 = load i32, i32* %6, align 4, !tbaa !41
  %sub.ptr.sub.i = sub i32 %5, %7
  %mul.i = shl i32 %sub.ptr.sub.i, 3
  %i_left.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 4
  %8 = load i32, i32* %i_left.i, align 4, !tbaa !42
  %add.i = sub i32 32, %8
  %sub.i = add i32 %add.i, %mul.i
  %cmp9 = icmp eq i32 %0, 3
  %i_type11 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 51, i32 2
  %9 = load i32, i32* %i_type11, align 8, !tbaa !43
  %10 = inttoptr i32 %5 to i32*
  br i1 %cmp9, label %if.then, label %if.end70

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds [3 x i8], [3 x i8]* @x264_8_macroblock_write_cavlc.i_offsets, i32 0, i32 %9
  %11 = load i8, i8* %arrayidx, align 1, !tbaa !44
  %conv = zext i8 %11 to i32
  %add.i500 = add nuw nsw i32 %conv, 26
  %arrayidx.i = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %add.i500
  %12 = load i8, i8* %arrayidx.i, align 1, !tbaa !44
  %conv.i = zext i8 %12 to i32
  %cmp.i.i = icmp sgt i32 %8, %conv.i
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then
  %cur_bits.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %13 = load i32, i32* %cur_bits.i.i, align 4, !tbaa !45
  %shl.i.i = shl i32 %13, %conv.i
  %or.i.i = or i32 %shl.i.i, %add.i500
  store i32 %or.i.i, i32* %cur_bits.i.i, align 4, !tbaa !45
  %sub.i.i = sub nsw i32 %8, %conv.i
  br label %bs_write_ue.exit

if.else.i.i:                                      ; preds = %if.then
  %sub4.i.i = sub nsw i32 %conv.i, %8
  %cur_bits5.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %14 = load i32, i32* %cur_bits5.i.i, align 4, !tbaa !45
  %shl7.i.i = shl i32 %14, %8
  %shr.i.i = lshr i32 %add.i500, %sub4.i.i
  %or8.i.i = or i32 %shl7.i.i, %shr.i.i
  %add5.i.i.i.i = tail call i32 @llvm.bswap.i32(i32 %or8.i.i) #6
  store i32 %add5.i.i.i.i, i32* %10, align 4, !tbaa !44
  %15 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i = getelementptr inbounds i8, i8* %15, i32 4
  store i8* %add.ptr.i.i, i8** %p.i, align 4, !tbaa !40
  store i32 %add.i500, i32* %cur_bits5.i.i, align 4, !tbaa !45
  %sub13.i.i = sub nsw i32 32, %sub4.i.i
  %16 = ptrtoint i8* %add.ptr.i.i to i32
  %.pre890 = load i32, i32* %6, align 4, !tbaa !41
  %17 = bitcast i8* %add.ptr.i.i to i32*
  %.pre900 = sub i32 %16, %.pre890
  %.pre901 = shl i32 %.pre900, 3
  br label %bs_write_ue.exit

bs_write_ue.exit:                                 ; preds = %if.then.i.i, %if.else.i.i
  %mul.i511.pre-phi = phi i32 [ %mul.i, %if.then.i.i ], [ %.pre901, %if.else.i.i ]
  %.pre.i = phi i32* [ %10, %if.then.i.i ], [ %17, %if.else.i.i ]
  %18 = phi i32 [ %or.i.i, %if.then.i.i ], [ %add.i500, %if.else.i.i ]
  %storemerge.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %sub13.i.i, %if.else.i.i ]
  store i32 %storemerge.i.i, i32* %i_left.i, align 4, !tbaa !42
  %add.i513 = sub i32 32, %storemerge.i.i
  %sub.i514 = add i32 %mul.i511.pre-phi, %add.i513
  %i_mv_bits = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 72, i32 21, i32 0
  %19 = load i32, i32* %i_mv_bits, align 8, !tbaa !46
  %sub = sub i32 %19, %sub.i
  %add13 = add i32 %sub, %sub.i514
  store i32 %add13, i32* %i_mv_bits, align 8, !tbaa !46
  %and.i535 = and i32 %storemerge.i.i, 7
  %20 = icmp sgt i32 %storemerge.i.i, 7
  %cur_bits.i.i536 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  br i1 %20, label %if.then.i.i538, label %if.else.i.i543

if.then.i.i538:                                   ; preds = %bs_write_ue.exit
  %shl.i.i537 = shl i32 %18, %and.i535
  store i32 %shl.i.i537, i32* %cur_bits.i.i536, align 4, !tbaa !45
  br label %bs_align_0.exit

if.else.i.i543:                                   ; preds = %bs_write_ue.exit
  %shl7.i.i539 = shl i32 %18, %storemerge.i.i
  %add5.i.i.i.i540 = tail call i32 @llvm.bswap.i32(i32 %shl7.i.i539) #6
  store i32 %add5.i.i.i.i540, i32* %.pre.i, align 4, !tbaa !44
  %21 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i542 = getelementptr inbounds i8, i8* %21, i32 4
  store i8* %add.ptr.i.i542, i8** %p.i, align 4, !tbaa !40
  store i32 0, i32* %cur_bits.i.i536, align 4, !tbaa !45
  %sub4.i9.i = add nsw i32 %storemerge.i.i, 32
  %22 = bitcast i8* %add.ptr.i.i542 to i32*
  br label %bs_align_0.exit

bs_align_0.exit:                                  ; preds = %if.then.i.i538, %if.else.i.i543
  %23 = phi i32* [ %22, %if.else.i.i543 ], [ %.pre.i, %if.then.i.i538 ]
  %24 = phi i32 [ 0, %if.else.i.i543 ], [ %shl.i.i537, %if.then.i.i538 ]
  %sub4.i9.pn.i = phi i32 [ %sub4.i9.i, %if.else.i.i543 ], [ %storemerge.i.i, %if.then.i.i538 ]
  %storemerge.i.i544 = sub nsw i32 %sub4.i9.pn.i, %and.i535
  store i32 %storemerge.i.i544, i32* %i_left.i, align 4, !tbaa !42
  %and.i.i = and i32 %storemerge.i.i544, 31
  %shl.i5.i = shl i32 %24, %and.i.i
  %add5.i.i.i545 = tail call i32 @llvm.bswap.i32(i32 %shl.i5.i) #6
  store i32 %add5.i.i.i545, i32* %23, align 4, !tbaa !44
  %25 = load i32, i32* %i_left.i, align 4, !tbaa !42
  %shr.i.i546 = ashr i32 %25, 3
  %sub.i7.i = sub nsw i32 4, %shr.i.i546
  %26 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i8.i = getelementptr inbounds i8, i8* %26, i32 %sub.i7.i
  store i8* %add.ptr.i8.i, i8** %p.i, align 4, !tbaa !40
  store i32 32, i32* %i_left.i, align 4, !tbaa !42
  %27 = bitcast i8* %add.ptr.i8.i to i32*
  br label %for.cond16.preheader

for.cond16.preheader:                             ; preds = %for.cond.cleanup19, %bs_align_0.exit
  %28 = phi i8* [ %add.ptr.i8.i, %bs_align_0.exit ], [ %56, %for.cond.cleanup19 ]
  %29 = phi i32* [ %27, %bs_align_0.exit ], [ %57, %for.cond.cleanup19 ]
  %30 = phi i32* [ %27, %bs_align_0.exit ], [ %58, %for.cond.cleanup19 ]
  %31 = phi i32* [ %27, %bs_align_0.exit ], [ %59, %for.cond.cleanup19 ]
  %32 = phi i32* [ %27, %bs_align_0.exit ], [ %60, %for.cond.cleanup19 ]
  %33 = phi i32* [ %27, %bs_align_0.exit ], [ %61, %for.cond.cleanup19 ]
  %34 = phi i32* [ %27, %bs_align_0.exit ], [ %62, %for.cond.cleanup19 ]
  %35 = phi i32* [ %27, %bs_align_0.exit ], [ %63, %for.cond.cleanup19 ]
  %36 = phi i32* [ %27, %bs_align_0.exit ], [ %64, %for.cond.cleanup19 ]
  %37 = phi i32* [ %27, %bs_align_0.exit ], [ %66, %for.cond.cleanup19 ]
  %38 = phi i32 [ 32, %bs_align_0.exit ], [ %storemerge.i606, %for.cond.cleanup19 ]
  %p.0877 = phi i32 [ 0, %bs_align_0.exit ], [ %inc26, %for.cond.cleanup19 ]
  %arrayidx22 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 14, i32 %p.0877
  br label %for.body20

for.cond.cleanup:                                 ; preds = %for.cond.cleanup19
  br i1 %3, label %for.cond29.preheader, label %if.end

for.cond29.preheader:                             ; preds = %for.cond.cleanup
  %chroma_v_shift = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 4
  %.pre892 = load i32, i32* %chroma_v_shift, align 16, !tbaa !47
  br label %for.cond35.preheader

for.cond.cleanup19:                               ; preds = %bs_write.exit607
  %inc26 = add nuw nsw i32 %p.0877, 1
  %exitcond887 = icmp eq i32 %inc26, %cond
  br i1 %exitcond887, label %for.cond.cleanup, label %for.cond16.preheader

for.body20:                                       ; preds = %bs_write.exit607, %for.cond16.preheader
  %39 = phi i8* [ %28, %for.cond16.preheader ], [ %56, %bs_write.exit607 ]
  %40 = phi i32* [ %29, %for.cond16.preheader ], [ %57, %bs_write.exit607 ]
  %41 = phi i32* [ %30, %for.cond16.preheader ], [ %58, %bs_write.exit607 ]
  %42 = phi i32* [ %31, %for.cond16.preheader ], [ %59, %bs_write.exit607 ]
  %43 = phi i32* [ %32, %for.cond16.preheader ], [ %60, %bs_write.exit607 ]
  %44 = phi i32* [ %33, %for.cond16.preheader ], [ %61, %bs_write.exit607 ]
  %45 = phi i32* [ %34, %for.cond16.preheader ], [ %62, %bs_write.exit607 ]
  %46 = phi i32* [ %35, %for.cond16.preheader ], [ %63, %bs_write.exit607 ]
  %47 = phi i32* [ %36, %for.cond16.preheader ], [ %64, %bs_write.exit607 ]
  %48 = phi i32* [ %37, %for.cond16.preheader ], [ %66, %bs_write.exit607 ]
  %49 = phi i32 [ %38, %for.cond16.preheader ], [ %storemerge.i606, %bs_write.exit607 ]
  %i.0876 = phi i32 [ 0, %for.cond16.preheader ], [ %inc, %bs_write.exit607 ]
  %50 = load i8*, i8** %arrayidx22, align 4, !tbaa !48
  %arrayidx23 = getelementptr inbounds i8, i8* %50, i32 %i.0876
  %51 = load i8, i8* %arrayidx23, align 1, !tbaa !44
  %conv24 = zext i8 %51 to i32
  %cmp.i590 = icmp sgt i32 %49, 8
  br i1 %cmp.i590, label %if.then.i595, label %if.else.i605

if.then.i595:                                     ; preds = %for.body20
  %52 = load i32, i32* %cur_bits.i.i536, align 4, !tbaa !45
  %shl.i592 = shl i32 %52, 8
  %or.i593 = or i32 %shl.i592, %conv24
  store i32 %or.i593, i32* %cur_bits.i.i536, align 4, !tbaa !45
  %sub.i594 = add nsw i32 %49, -8
  br label %bs_write.exit607

if.else.i605:                                     ; preds = %for.body20
  %sub4.i596 = sub nsw i32 8, %49
  %53 = load i32, i32* %cur_bits.i.i536, align 4, !tbaa !45
  %shl7.i598 = shl i32 %53, %49
  %shr.i599 = lshr i32 %conv24, %sub4.i596
  %or8.i600 = or i32 %shl7.i598, %shr.i599
  %add5.i.i.i601 = tail call i32 @llvm.bswap.i32(i32 %or8.i600) #6
  store i32 %add5.i.i.i601, i32* %48, align 4, !tbaa !44
  %54 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i603 = getelementptr inbounds i8, i8* %54, i32 4
  store i8* %add.ptr.i603, i8** %p.i, align 4, !tbaa !40
  store i32 %conv24, i32* %cur_bits.i.i536, align 4, !tbaa !45
  %sub13.i604 = add nsw i32 %49, 24
  %55 = bitcast i8* %add.ptr.i603 to i32*
  br label %bs_write.exit607

bs_write.exit607:                                 ; preds = %if.then.i595, %if.else.i605
  %56 = phi i8* [ %add.ptr.i603, %if.else.i605 ], [ %39, %if.then.i595 ]
  %57 = phi i32* [ %55, %if.else.i605 ], [ %40, %if.then.i595 ]
  %58 = phi i32* [ %55, %if.else.i605 ], [ %41, %if.then.i595 ]
  %59 = phi i32* [ %55, %if.else.i605 ], [ %42, %if.then.i595 ]
  %60 = phi i32* [ %55, %if.else.i605 ], [ %43, %if.then.i595 ]
  %61 = phi i32* [ %55, %if.else.i605 ], [ %44, %if.then.i595 ]
  %62 = phi i32* [ %55, %if.else.i605 ], [ %45, %if.then.i595 ]
  %63 = phi i32* [ %55, %if.else.i605 ], [ %46, %if.then.i595 ]
  %64 = phi i32* [ %55, %if.else.i605 ], [ %47, %if.then.i595 ]
  %65 = phi i32 [ %conv24, %if.else.i605 ], [ %or.i593, %if.then.i595 ]
  %66 = phi i32* [ %55, %if.else.i605 ], [ %48, %if.then.i595 ]
  %storemerge.i606 = phi i32 [ %sub13.i604, %if.else.i605 ], [ %sub.i594, %if.then.i595 ]
  store i32 %storemerge.i606, i32* %i_left.i, align 4, !tbaa !42
  %inc = add nuw nsw i32 %i.0876, 1
  %exitcond886 = icmp eq i32 %inc, 256
  br i1 %exitcond886, label %for.cond.cleanup19, label %for.body20

for.cond35.preheader:                             ; preds = %for.cond.cleanup39, %for.cond29.preheader
  %67 = phi i8* [ %56, %for.cond29.preheader ], [ %92, %for.cond.cleanup39 ]
  %68 = phi i32* [ %57, %for.cond29.preheader ], [ %93, %for.cond.cleanup39 ]
  %69 = phi i32* [ %58, %for.cond29.preheader ], [ %94, %for.cond.cleanup39 ]
  %70 = phi i32* [ %59, %for.cond29.preheader ], [ %95, %for.cond.cleanup39 ]
  %71 = phi i32* [ %60, %for.cond29.preheader ], [ %96, %for.cond.cleanup39 ]
  %72 = phi i32* [ %61, %for.cond29.preheader ], [ %97, %for.cond.cleanup39 ]
  %73 = phi i32* [ %62, %for.cond29.preheader ], [ %98, %for.cond.cleanup39 ]
  %74 = phi i32* [ %63, %for.cond29.preheader ], [ %99, %for.cond.cleanup39 ]
  %75 = phi i32* [ %64, %for.cond29.preheader ], [ %100, %for.cond.cleanup39 ]
  %76 = phi i32 [ %65, %for.cond29.preheader ], [ %101, %for.cond.cleanup39 ]
  %77 = phi i32 [ %storemerge.i606, %for.cond29.preheader ], [ %102, %for.cond.cleanup39 ]
  %78 = phi i32 [ %.pre892, %for.cond29.preheader ], [ %103, %for.cond.cleanup39 ]
  %ch.0874 = phi i32 [ 1, %for.cond29.preheader ], [ %inc60, %for.cond.cleanup39 ]
  %shr871 = lshr i32 16, %78
  %cmp37872 = icmp sgt i32 %shr871, 0
  br i1 %cmp37872, label %for.cond41.preheader.lr.ph, label %for.cond.cleanup39

for.cond41.preheader.lr.ph:                       ; preds = %for.cond35.preheader
  %arrayidx49 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 14, i32 %ch.0874
  br label %for.cond41.preheader

for.cond41.preheader:                             ; preds = %for.cond41.preheader.lr.ph, %bs_write.exit626.7
  %79 = phi i8* [ %67, %for.cond41.preheader.lr.ph ], [ %813, %bs_write.exit626.7 ]
  %80 = phi i32* [ %68, %for.cond41.preheader.lr.ph ], [ %814, %bs_write.exit626.7 ]
  %81 = phi i32* [ %69, %for.cond41.preheader.lr.ph ], [ %815, %bs_write.exit626.7 ]
  %82 = phi i32* [ %70, %for.cond41.preheader.lr.ph ], [ %816, %bs_write.exit626.7 ]
  %83 = phi i32* [ %71, %for.cond41.preheader.lr.ph ], [ %817, %bs_write.exit626.7 ]
  %84 = phi i32* [ %72, %for.cond41.preheader.lr.ph ], [ %818, %bs_write.exit626.7 ]
  %85 = phi i32* [ %73, %for.cond41.preheader.lr.ph ], [ %819, %bs_write.exit626.7 ]
  %86 = phi i32* [ %74, %for.cond41.preheader.lr.ph ], [ %820, %bs_write.exit626.7 ]
  %87 = phi i32* [ %75, %for.cond41.preheader.lr.ph ], [ %821, %bs_write.exit626.7 ]
  %88 = phi i32 [ %76, %for.cond41.preheader.lr.ph ], [ %822, %bs_write.exit626.7 ]
  %89 = phi i32 [ %77, %for.cond41.preheader.lr.ph ], [ %storemerge.i625.7, %bs_write.exit626.7 ]
  %i34.0873 = phi i32 [ 0, %for.cond41.preheader.lr.ph ], [ %inc57, %bs_write.exit626.7 ]
  %mul = shl i32 %i34.0873, 4
  %90 = load i8*, i8** %arrayidx49, align 4, !tbaa !48
  %arrayidx51 = getelementptr inbounds i8, i8* %90, i32 %mul
  %91 = load i8, i8* %arrayidx51, align 1, !tbaa !44
  %conv52 = zext i8 %91 to i32
  %cmp.i609 = icmp sgt i32 %89, 8
  br i1 %cmp.i609, label %if.then.i614, label %if.else.i624

for.cond.cleanup39:                               ; preds = %bs_write.exit626.7, %for.cond35.preheader
  %92 = phi i8* [ %67, %for.cond35.preheader ], [ %813, %bs_write.exit626.7 ]
  %93 = phi i32* [ %68, %for.cond35.preheader ], [ %814, %bs_write.exit626.7 ]
  %94 = phi i32* [ %69, %for.cond35.preheader ], [ %815, %bs_write.exit626.7 ]
  %95 = phi i32* [ %70, %for.cond35.preheader ], [ %816, %bs_write.exit626.7 ]
  %96 = phi i32* [ %71, %for.cond35.preheader ], [ %817, %bs_write.exit626.7 ]
  %97 = phi i32* [ %72, %for.cond35.preheader ], [ %818, %bs_write.exit626.7 ]
  %98 = phi i32* [ %73, %for.cond35.preheader ], [ %819, %bs_write.exit626.7 ]
  %99 = phi i32* [ %74, %for.cond35.preheader ], [ %820, %bs_write.exit626.7 ]
  %100 = phi i32* [ %75, %for.cond35.preheader ], [ %821, %bs_write.exit626.7 ]
  %101 = phi i32 [ %76, %for.cond35.preheader ], [ %822, %bs_write.exit626.7 ]
  %102 = phi i32 [ %77, %for.cond35.preheader ], [ %storemerge.i625.7, %bs_write.exit626.7 ]
  %103 = phi i32 [ %78, %for.cond35.preheader ], [ %823, %bs_write.exit626.7 ]
  %inc60 = add nuw nsw i32 %ch.0874, 1
  %exitcond = icmp eq i32 %inc60, 3
  br i1 %exitcond, label %if.end, label %for.cond35.preheader

if.then.i614:                                     ; preds = %for.cond41.preheader
  %shl.i611 = shl i32 %88, 8
  %or.i612 = or i32 %shl.i611, %conv52
  store i32 %or.i612, i32* %cur_bits.i.i536, align 4, !tbaa !45
  %sub.i613 = add nsw i32 %89, -8
  br label %bs_write.exit626

if.else.i624:                                     ; preds = %for.cond41.preheader
  %sub4.i615 = sub nsw i32 8, %89
  %shl7.i617 = shl i32 %88, %89
  %shr.i618 = lshr i32 %conv52, %sub4.i615
  %or8.i619 = or i32 %shl7.i617, %shr.i618
  %add5.i.i.i620 = tail call i32 @llvm.bswap.i32(i32 %or8.i619) #6
  store i32 %add5.i.i.i620, i32* %87, align 4, !tbaa !44
  %104 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i622 = getelementptr inbounds i8, i8* %104, i32 4
  store i8* %add.ptr.i622, i8** %p.i, align 4, !tbaa !40
  store i32 %conv52, i32* %cur_bits.i.i536, align 4, !tbaa !45
  %sub13.i623 = add nsw i32 %89, 24
  %105 = bitcast i8* %add.ptr.i622 to i32*
  %.pre893 = load i8*, i8** %arrayidx49, align 4, !tbaa !48
  br label %bs_write.exit626

bs_write.exit626:                                 ; preds = %if.then.i614, %if.else.i624
  %106 = phi i8* [ %add.ptr.i622, %if.else.i624 ], [ %79, %if.then.i614 ]
  %107 = phi i32* [ %105, %if.else.i624 ], [ %80, %if.then.i614 ]
  %108 = phi i32* [ %105, %if.else.i624 ], [ %81, %if.then.i614 ]
  %109 = phi i32* [ %105, %if.else.i624 ], [ %82, %if.then.i614 ]
  %110 = phi i32* [ %105, %if.else.i624 ], [ %83, %if.then.i614 ]
  %111 = phi i32* [ %105, %if.else.i624 ], [ %84, %if.then.i614 ]
  %112 = phi i32* [ %105, %if.else.i624 ], [ %85, %if.then.i614 ]
  %113 = phi i32* [ %105, %if.else.i624 ], [ %86, %if.then.i614 ]
  %114 = phi i32 [ %conv52, %if.else.i624 ], [ %or.i612, %if.then.i614 ]
  %115 = phi i8* [ %.pre893, %if.else.i624 ], [ %90, %if.then.i614 ]
  %116 = phi i32* [ %105, %if.else.i624 ], [ %87, %if.then.i614 ]
  %storemerge.i625 = phi i32 [ %sub13.i623, %if.else.i624 ], [ %sub.i613, %if.then.i614 ]
  store i32 %storemerge.i625, i32* %i_left.i, align 4, !tbaa !42
  %add50.1 = or i32 %mul, 1
  %arrayidx51.1 = getelementptr inbounds i8, i8* %115, i32 %add50.1
  %117 = load i8, i8* %arrayidx51.1, align 1, !tbaa !44
  %conv52.1 = zext i8 %117 to i32
  %cmp.i609.1 = icmp sgt i32 %storemerge.i625, 8
  br i1 %cmp.i609.1, label %if.then.i614.1, label %if.else.i624.1

if.end:                                           ; preds = %for.cond.cleanup39, %for.cond.cleanup
  %118 = phi i8* [ %56, %for.cond.cleanup ], [ %92, %for.cond.cleanup39 ]
  %p_end = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 2
  %119 = bitcast i8** %p_end to i32*
  %120 = load i32, i32* %119, align 4, !tbaa !49
  %sub.ptr.rhs.cast = ptrtoint i8* %118 to i32
  %sub.ptr.sub = sub i32 %120, %sub.ptr.rhs.cast
  %and.i627 = and i32 %sub.ptr.rhs.cast, 3
  %idx.neg.i = sub nsw i32 0, %and.i627
  %add.ptr.i628 = getelementptr inbounds i8, i8* %118, i32 %idx.neg.i
  %p_start.i = getelementptr inbounds %struct.bs_s, %struct.bs_s* %bs, i32 0, i32 0
  store i8* %add.ptr.i628, i8** %p_start.i, align 4, !tbaa !41
  store i8* %add.ptr.i628, i8** %p.i, align 4, !tbaa !40
  %add.ptr1.i = getelementptr inbounds i8, i8* %118, i32 %sub.ptr.sub
  store i8* %add.ptr1.i, i8** %p_end, align 4, !tbaa !49
  %sub.i630 = shl nuw nsw i32 %and.i627, 3
  %mul.i631 = sub nuw nsw i32 32, %sub.i630
  store i32 %mul.i631, i32* %i_left.i, align 4, !tbaa !42
  %tobool.i633 = icmp eq i32 %and.i627, 0
  %121 = ptrtoint i8* %add.ptr.i628 to i32
  br i1 %tobool.i633, label %bs_init.exit, label %if.then.i635

if.then.i635:                                     ; preds = %if.end
  %122 = bitcast i8* %add.ptr.i628 to i32*
  %123 = load i32, i32* %122, align 4, !tbaa !44
  %add5.i.i = tail call i32 @llvm.bswap.i32(i32 %123) #6
  %shr.i634 = lshr i32 %add5.i.i, %mul.i631
  br label %bs_init.exit

bs_init.exit:                                     ; preds = %if.end, %if.then.i635
  %shr.sink.i = phi i32 [ %shr.i634, %if.then.i635 ], [ 0, %if.end ]
  store i32 %shr.sink.i, i32* %cur_bits.i.i536, align 4
  store i32 %7, i32* %6, align 4, !tbaa !41
  %sub.ptr.sub.i637 = sub i32 %121, %7
  %mul.i638 = shl i32 %sub.ptr.sub.i637, 3
  %i_tex_bits = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 72, i32 21, i32 1
  %124 = load i32, i32* %i_tex_bits, align 4, !tbaa !50
  %sub.i641 = sub i32 %sub.i630, %sub.i514
  br label %cleanup

if.end70:                                         ; preds = %entry
  switch i32 %9, label %if.else81 [
    i32 0, label %if.then75
    i32 1, label %if.then80
  ]

if.then75:                                        ; preds = %if.end70
  switch i32 %0, label %if.else200.i [
    i32 4, label %if.then.i642
    i32 5, label %if.then94.i
  ]

if.then.i642:                                     ; preds = %if.then75
  %i_partition.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 77
  %125 = load i32, i32* %i_partition.i, align 4, !tbaa !51
  switch i32 %125, label %if.end83 [
    i32 16, label %if.then2.i
    i32 14, label %if.then17.i
    i32 15, label %if.then55.i
  ]

if.then2.i:                                       ; preds = %if.then.i642
  %cur_bits.i.i643 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %126 = load i32, i32* %cur_bits.i.i643, align 4, !tbaa !45
  %shl.i.i644 = shl i32 %126, 1
  %or.i.i645 = or i32 %shl.i.i644, 1
  store i32 %or.i.i645, i32* %cur_bits.i.i643, align 4, !tbaa !45
  %dec.i.i = add nsw i32 %8, -1
  store i32 %dec.i.i, i32* %i_left.i, align 4, !tbaa !42
  %cmp.i.i647 = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.i.i647, label %if.then.i.i651, label %bs_write1.exit.i

if.then.i.i651:                                   ; preds = %if.then2.i
  %add5.i.i.i648 = tail call i32 @llvm.bswap.i32(i32 %or.i.i645) #6
  store i32 %add5.i.i.i648, i32* %10, align 4, !tbaa !44
  %127 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i650 = getelementptr inbounds i8, i8* %127, i32 4
  store i8* %add.ptr.i.i650, i8** %p.i, align 4, !tbaa !40
  store i32 32, i32* %i_left.i, align 4, !tbaa !42
  %128 = bitcast i8* %add.ptr.i.i650 to i32*
  br label %bs_write1.exit.i

bs_write1.exit.i:                                 ; preds = %if.then.i.i651, %if.then2.i
  %129 = phi i32* [ %10, %if.then2.i ], [ %128, %if.then.i.i651 ]
  %130 = phi i32 [ %dec.i.i, %if.then2.i ], [ 32, %if.then.i.i651 ]
  %arrayidx.i652 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 17, i32 0
  %131 = load i32, i32* %arrayidx.i652, align 4, !tbaa !52
  %cmp4.i = icmp sgt i32 %131, 1
  br i1 %cmp4.i, label %if.then5.i, label %if.end.i

if.then5.i:                                       ; preds = %bs_write1.exit.i
  %arrayidx12.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 0, i32 12
  %132 = load i8, i8* %arrayidx12.i, align 1, !tbaa !44
  %conv.i653 = sext i8 %132 to i32
  %cmp.i270.i = icmp eq i32 %131, 2
  br i1 %cmp.i270.i, label %if.then.i271.i, label %if.else.i.i655

if.then.i271.i:                                   ; preds = %if.then5.i
  %133 = load i32, i32* %cur_bits.i.i643, align 4, !tbaa !45
  %shl.i.i.i = shl i32 %133, 1
  %134 = or i32 %shl.i.i.i, %conv.i653
  %or.i.i.i = xor i32 %134, 1
  store i32 %or.i.i.i, i32* %cur_bits.i.i643, align 4, !tbaa !45
  %dec.i.i.i = add nsw i32 %130, -1
  store i32 %dec.i.i.i, i32* %i_left.i, align 4, !tbaa !42
  %cmp.i.i.i = icmp eq i32 %dec.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end.i

if.then.i.i.i:                                    ; preds = %if.then.i271.i
  %add5.i.i.i.i654 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #6
  store i32 %add5.i.i.i.i654, i32* %129, align 4, !tbaa !44
  %135 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i.i = getelementptr inbounds i8, i8* %135, i32 4
  store i8* %add.ptr.i.i.i, i8** %p.i, align 4, !tbaa !40
  store i32 32, i32* %i_left.i, align 4, !tbaa !42
  br label %if.end.i

if.else.i.i655:                                   ; preds = %if.then5.i
  %add.i.i.i = add nsw i32 %conv.i653, 1
  %arrayidx.i.i.i = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %add.i.i.i
  %136 = load i8, i8* %arrayidx.i.i.i, align 1, !tbaa !44
  %conv.i.i.i = zext i8 %136 to i32
  %cmp.i.i.i.i = icmp sgt i32 %130, %conv.i.i.i
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %if.else.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.else.i.i655
  %137 = load i32, i32* %cur_bits.i.i643, align 4, !tbaa !45
  %shl.i.i.i.i = shl i32 %137, %conv.i.i.i
  %or.i.i.i.i = or i32 %shl.i.i.i.i, %add.i.i.i
  store i32 %or.i.i.i.i, i32* %cur_bits.i.i643, align 4, !tbaa !45
  %sub.i.i.i.i = sub nsw i32 %130, %conv.i.i.i
  br label %bs_write_ue.exit.i.i

if.else.i.i.i.i:                                  ; preds = %if.else.i.i655
  %sub4.i.i.i.i = sub nsw i32 %conv.i.i.i, %130
  %138 = load i32, i32* %cur_bits.i.i643, align 4, !tbaa !45
  %shl7.i.i.i.i = shl i32 %138, %130
  %shr.i.i.i.i = lshr i32 %add.i.i.i, %sub4.i.i.i.i
  %or8.i.i.i.i = or i32 %shl7.i.i.i.i, %shr.i.i.i.i
  %add5.i.i.i.i.i.i = tail call i32 @llvm.bswap.i32(i32 %or8.i.i.i.i) #6
  store i32 %add5.i.i.i.i.i.i, i32* %129, align 4, !tbaa !44
  %139 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i.i.i = getelementptr inbounds i8, i8* %139, i32 4
  store i8* %add.ptr.i.i.i.i, i8** %p.i, align 4, !tbaa !40
  store i32 %add.i.i.i, i32* %cur_bits.i.i643, align 4, !tbaa !45
  %sub13.i.i.i.i = sub nsw i32 32, %sub4.i.i.i.i
  br label %bs_write_ue.exit.i.i

bs_write_ue.exit.i.i:                             ; preds = %if.else.i.i.i.i, %if.then.i.i.i.i
  %storemerge.i.i.i.i = phi i32 [ %sub13.i.i.i.i, %if.else.i.i.i.i ], [ %sub.i.i.i.i, %if.then.i.i.i.i ]
  store i32 %storemerge.i.i.i.i, i32* %i_left.i, align 4, !tbaa !42
  br label %if.end.i

if.end.i:                                         ; preds = %bs_write_ue.exit.i.i, %if.then.i.i.i, %if.then.i271.i, %bs_write1.exit.i
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 0, i32 0, i32 4) #6
  br label %if.end83

if.then17.i:                                      ; preds = %if.then.i642
  %cmp.i.i273.i = icmp sgt i32 %8, 3
  br i1 %cmp.i.i273.i, label %if.then.i.i277.i, label %if.else.i.i.i

if.then.i.i277.i:                                 ; preds = %if.then17.i
  %cur_bits.i.i274.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %140 = load i32, i32* %cur_bits.i.i274.i, align 4, !tbaa !45
  %shl.i.i275.i = shl i32 %140, 3
  %or.i.i276.i = or i32 %shl.i.i275.i, 2
  store i32 %or.i.i276.i, i32* %cur_bits.i.i274.i, align 4, !tbaa !45
  %sub.i.i.i = add nsw i32 %8, -3
  br label %bs_write_ue.exit.i

if.else.i.i.i:                                    ; preds = %if.then17.i
  %sub4.i.i.i = sub nsw i32 3, %8
  %cur_bits5.i.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %141 = load i32, i32* %cur_bits5.i.i.i, align 4, !tbaa !45
  %shl7.i.i.i = shl i32 %141, %8
  %shr.i.i.i = lshr i32 2, %sub4.i.i.i
  %or8.i.i.i = or i32 %shl7.i.i.i, %shr.i.i.i
  %add5.i.i.i.i.i = tail call i32 @llvm.bswap.i32(i32 %or8.i.i.i) #6
  store i32 %add5.i.i.i.i.i, i32* %10, align 4, !tbaa !44
  %142 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i279.i = getelementptr inbounds i8, i8* %142, i32 4
  store i8* %add.ptr.i.i279.i, i8** %p.i, align 4, !tbaa !40
  store i32 2, i32* %cur_bits5.i.i.i, align 4, !tbaa !45
  %sub13.i.i.i = add nsw i32 %8, 29
  %143 = bitcast i8* %add.ptr.i.i279.i to i32*
  br label %bs_write_ue.exit.i

bs_write_ue.exit.i:                               ; preds = %if.else.i.i.i, %if.then.i.i277.i
  %144 = phi i32* [ %143, %if.else.i.i.i ], [ %10, %if.then.i.i277.i ]
  %145 = phi i32 [ 2, %if.else.i.i.i ], [ %or.i.i276.i, %if.then.i.i277.i ]
  %storemerge.i.i.i = phi i32 [ %sub13.i.i.i, %if.else.i.i.i ], [ %sub.i.i.i, %if.then.i.i277.i ]
  store i32 %storemerge.i.i.i, i32* %i_left.i, align 4, !tbaa !42
  %arrayidx21.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 17, i32 0
  %146 = load i32, i32* %arrayidx21.i, align 4, !tbaa !52
  %cmp22.i = icmp sgt i32 %146, 1
  br i1 %cmp22.i, label %if.then24.i, label %if.end49.i

if.then24.i:                                      ; preds = %bs_write_ue.exit.i
  %arrayidx35.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 0, i32 12
  %147 = load i8, i8* %arrayidx35.i, align 1, !tbaa !44
  %conv36.i = sext i8 %147 to i32
  %cmp.i280.i = icmp eq i32 %146, 2
  br i1 %cmp.i280.i, label %if.then.i287.i, label %if.else.i297.i

if.then.i287.i:                                   ; preds = %if.then24.i
  %cur_bits.i.i281.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %shl.i.i282.i = shl i32 %145, 1
  %148 = or i32 %shl.i.i282.i, %conv36.i
  %or.i.i283.i = xor i32 %148, 1
  store i32 %or.i.i283.i, i32* %cur_bits.i.i281.i, align 4, !tbaa !45
  %dec.i.i285.i = add nsw i32 %storemerge.i.i.i, -1
  store i32 %dec.i.i285.i, i32* %i_left.i, align 4, !tbaa !42
  %cmp.i.i286.i = icmp eq i32 %dec.i.i285.i, 0
  br i1 %cmp.i.i286.i, label %if.then.i.i291.i, label %bs_write_te.exit315.i

if.then.i.i291.i:                                 ; preds = %if.then.i287.i
  %add5.i.i.i288.i = tail call i32 @llvm.bswap.i32(i32 %or.i.i283.i) #6
  store i32 %add5.i.i.i288.i, i32* %144, align 4, !tbaa !44
  %149 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i290.i = getelementptr inbounds i8, i8* %149, i32 4
  store i8* %add.ptr.i.i290.i, i8** %p.i, align 4, !tbaa !40
  store i32 32, i32* %i_left.i, align 4, !tbaa !42
  %150 = bitcast i8* %add.ptr.i.i290.i to i32*
  br label %bs_write_te.exit315.i

if.else.i297.i:                                   ; preds = %if.then24.i
  %add.i.i292.i = add nsw i32 %conv36.i, 1
  %arrayidx.i.i293.i = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %add.i.i292.i
  %151 = load i8, i8* %arrayidx.i.i293.i, align 1, !tbaa !44
  %conv.i.i294.i = zext i8 %151 to i32
  %cmp.i.i.i296.i = icmp sgt i32 %storemerge.i.i.i, %conv.i.i294.i
  br i1 %cmp.i.i.i296.i, label %if.then.i.i.i302.i, label %if.else.i.i.i312.i

if.then.i.i.i302.i:                               ; preds = %if.else.i297.i
  %shl.i.i.i299.i = shl i32 %145, %conv.i.i294.i
  %or.i.i.i300.i = or i32 %shl.i.i.i299.i, %add.i.i292.i
  %sub.i.i.i301.i = sub nsw i32 %storemerge.i.i.i, %conv.i.i294.i
  br label %bs_write_ue.exit.i314.i

if.else.i.i.i312.i:                               ; preds = %if.else.i297.i
  %sub4.i.i.i303.i = sub nsw i32 %conv.i.i294.i, %storemerge.i.i.i
  %shl7.i.i.i305.i = shl i32 %145, %storemerge.i.i.i
  %shr.i.i.i306.i = lshr i32 %add.i.i292.i, %sub4.i.i.i303.i
  %or8.i.i.i307.i = or i32 %shr.i.i.i306.i, %shl7.i.i.i305.i
  %add5.i.i.i.i.i308.i = tail call i32 @llvm.bswap.i32(i32 %or8.i.i.i307.i) #6
  store i32 %add5.i.i.i.i.i308.i, i32* %144, align 4, !tbaa !44
  %152 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i.i310.i = getelementptr inbounds i8, i8* %152, i32 4
  store i8* %add.ptr.i.i.i310.i, i8** %p.i, align 4, !tbaa !40
  %sub13.i.i.i311.i = sub nsw i32 32, %sub4.i.i.i303.i
  %153 = bitcast i8* %add.ptr.i.i.i310.i to i32*
  br label %bs_write_ue.exit.i314.i

bs_write_ue.exit.i314.i:                          ; preds = %if.else.i.i.i312.i, %if.then.i.i.i302.i
  %154 = phi i32* [ %144, %if.then.i.i.i302.i ], [ %153, %if.else.i.i.i312.i ]
  %add.i.i292.i.sink = phi i32 [ %or.i.i.i300.i, %if.then.i.i.i302.i ], [ %add.i.i292.i, %if.else.i.i.i312.i ]
  %storemerge.i.i.i313.i = phi i32 [ %sub.i.i.i301.i, %if.then.i.i.i302.i ], [ %sub13.i.i.i311.i, %if.else.i.i.i312.i ]
  %155 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  store i32 %add.i.i292.i.sink, i32* %155, align 4
  store i32 %storemerge.i.i.i313.i, i32* %i_left.i, align 4, !tbaa !42
  br label %bs_write_te.exit315.i

bs_write_te.exit315.i:                            ; preds = %bs_write_ue.exit.i314.i, %if.then.i.i291.i, %if.then.i287.i
  %156 = phi i32* [ %144, %if.then.i287.i ], [ %150, %if.then.i.i291.i ], [ %154, %bs_write_ue.exit.i314.i ]
  %157 = phi i32 [ %dec.i.i285.i, %if.then.i287.i ], [ 32, %if.then.i.i291.i ], [ %storemerge.i.i.i313.i, %bs_write_ue.exit.i314.i ]
  %158 = load i32, i32* %arrayidx21.i, align 4, !tbaa !52
  %arrayidx47.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 0, i32 28
  %159 = load i8, i8* %arrayidx47.i, align 1, !tbaa !44
  %conv48.i = sext i8 %159 to i32
  %cmp.i316.i = icmp eq i32 %158, 2
  br i1 %cmp.i316.i, label %if.then.i323.i, label %if.else.i333.i

if.then.i323.i:                                   ; preds = %bs_write_te.exit315.i
  %cur_bits.i.i317.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %160 = load i32, i32* %cur_bits.i.i317.i, align 4, !tbaa !45
  %shl.i.i318.i = shl i32 %160, 1
  %161 = or i32 %shl.i.i318.i, %conv48.i
  %or.i.i319.i = xor i32 %161, 1
  store i32 %or.i.i319.i, i32* %cur_bits.i.i317.i, align 4, !tbaa !45
  %dec.i.i321.i = add nsw i32 %157, -1
  store i32 %dec.i.i321.i, i32* %i_left.i, align 4, !tbaa !42
  %cmp.i.i322.i = icmp eq i32 %dec.i.i321.i, 0
  br i1 %cmp.i.i322.i, label %if.then.i.i327.i, label %if.end49.i

if.then.i.i327.i:                                 ; preds = %if.then.i323.i
  %add5.i.i.i324.i = tail call i32 @llvm.bswap.i32(i32 %or.i.i319.i) #6
  store i32 %add5.i.i.i324.i, i32* %156, align 4, !tbaa !44
  %162 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i326.i = getelementptr inbounds i8, i8* %162, i32 4
  store i8* %add.ptr.i.i326.i, i8** %p.i, align 4, !tbaa !40
  store i32 32, i32* %i_left.i, align 4, !tbaa !42
  br label %if.end49.i

if.else.i333.i:                                   ; preds = %bs_write_te.exit315.i
  %add.i.i328.i = add nsw i32 %conv48.i, 1
  %arrayidx.i.i329.i = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %add.i.i328.i
  %163 = load i8, i8* %arrayidx.i.i329.i, align 1, !tbaa !44
  %conv.i.i330.i = zext i8 %163 to i32
  %cmp.i.i.i332.i = icmp sgt i32 %157, %conv.i.i330.i
  br i1 %cmp.i.i.i332.i, label %if.then.i.i.i338.i, label %if.else.i.i.i348.i

if.then.i.i.i338.i:                               ; preds = %if.else.i333.i
  %cur_bits.i.i.i334.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %164 = load i32, i32* %cur_bits.i.i.i334.i, align 4, !tbaa !45
  %shl.i.i.i335.i = shl i32 %164, %conv.i.i330.i
  %or.i.i.i336.i = or i32 %shl.i.i.i335.i, %add.i.i328.i
  store i32 %or.i.i.i336.i, i32* %cur_bits.i.i.i334.i, align 4, !tbaa !45
  %sub.i.i.i337.i = sub nsw i32 %157, %conv.i.i330.i
  br label %bs_write_ue.exit.i350.i

if.else.i.i.i348.i:                               ; preds = %if.else.i333.i
  %sub4.i.i.i339.i = sub nsw i32 %conv.i.i330.i, %157
  %cur_bits5.i.i.i340.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %165 = load i32, i32* %cur_bits5.i.i.i340.i, align 4, !tbaa !45
  %shl7.i.i.i341.i = shl i32 %165, %157
  %shr.i.i.i342.i = lshr i32 %add.i.i328.i, %sub4.i.i.i339.i
  %or8.i.i.i343.i = or i32 %shl7.i.i.i341.i, %shr.i.i.i342.i
  %add5.i.i.i.i.i344.i = tail call i32 @llvm.bswap.i32(i32 %or8.i.i.i343.i) #6
  store i32 %add5.i.i.i.i.i344.i, i32* %156, align 4, !tbaa !44
  %166 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i.i346.i = getelementptr inbounds i8, i8* %166, i32 4
  store i8* %add.ptr.i.i.i346.i, i8** %p.i, align 4, !tbaa !40
  store i32 %add.i.i328.i, i32* %cur_bits5.i.i.i340.i, align 4, !tbaa !45
  %sub13.i.i.i347.i = sub nsw i32 32, %sub4.i.i.i339.i
  br label %bs_write_ue.exit.i350.i

bs_write_ue.exit.i350.i:                          ; preds = %if.else.i.i.i348.i, %if.then.i.i.i338.i
  %storemerge.i.i.i349.i = phi i32 [ %sub13.i.i.i347.i, %if.else.i.i.i348.i ], [ %sub.i.i.i337.i, %if.then.i.i.i338.i ]
  store i32 %storemerge.i.i.i349.i, i32* %i_left.i, align 4, !tbaa !42
  br label %if.end49.i

if.end49.i:                                       ; preds = %bs_write_ue.exit.i350.i, %if.then.i.i327.i, %if.then.i323.i, %bs_write_ue.exit.i
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 0, i32 0, i32 4) #6
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 0, i32 8, i32 4) #6
  br label %if.end83

if.then55.i:                                      ; preds = %if.then.i642
  %cmp.i.i353.i = icmp sgt i32 %8, 3
  br i1 %cmp.i.i353.i, label %if.then.i.i358.i, label %if.else.i.i368.i

if.then.i.i358.i:                                 ; preds = %if.then55.i
  %cur_bits.i.i354.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %167 = load i32, i32* %cur_bits.i.i354.i, align 4, !tbaa !45
  %shl.i.i355.i = shl i32 %167, 3
  %or.i.i356.i = or i32 %shl.i.i355.i, 3
  store i32 %or.i.i356.i, i32* %cur_bits.i.i354.i, align 4, !tbaa !45
  %sub.i.i357.i = add nsw i32 %8, -3
  br label %bs_write_ue.exit370.i

if.else.i.i368.i:                                 ; preds = %if.then55.i
  %sub4.i.i359.i = sub nsw i32 3, %8
  %cur_bits5.i.i360.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %168 = load i32, i32* %cur_bits5.i.i360.i, align 4, !tbaa !45
  %shl7.i.i361.i = shl i32 %168, %8
  %shr.i.i362.i = lshr i32 3, %sub4.i.i359.i
  %or8.i.i363.i = or i32 %shl7.i.i361.i, %shr.i.i362.i
  %add5.i.i.i.i364.i = tail call i32 @llvm.bswap.i32(i32 %or8.i.i363.i) #6
  store i32 %add5.i.i.i.i364.i, i32* %10, align 4, !tbaa !44
  %169 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i366.i = getelementptr inbounds i8, i8* %169, i32 4
  store i8* %add.ptr.i.i366.i, i8** %p.i, align 4, !tbaa !40
  store i32 3, i32* %cur_bits5.i.i360.i, align 4, !tbaa !45
  %sub13.i.i367.i = add nsw i32 %8, 29
  %170 = bitcast i8* %add.ptr.i.i366.i to i32*
  br label %bs_write_ue.exit370.i

bs_write_ue.exit370.i:                            ; preds = %if.else.i.i368.i, %if.then.i.i358.i
  %171 = phi i32* [ %170, %if.else.i.i368.i ], [ %10, %if.then.i.i358.i ]
  %172 = phi i32 [ 3, %if.else.i.i368.i ], [ %or.i.i356.i, %if.then.i.i358.i ]
  %storemerge.i.i369.i = phi i32 [ %sub13.i.i367.i, %if.else.i.i368.i ], [ %sub.i.i357.i, %if.then.i.i358.i ]
  store i32 %storemerge.i.i369.i, i32* %i_left.i, align 4, !tbaa !42
  %arrayidx59.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 17, i32 0
  %173 = load i32, i32* %arrayidx59.i, align 4, !tbaa !52
  %cmp60.i = icmp sgt i32 %173, 1
  br i1 %cmp60.i, label %if.then62.i, label %if.end87.i

if.then62.i:                                      ; preds = %bs_write_ue.exit370.i
  %arrayidx73.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 0, i32 12
  %174 = load i8, i8* %arrayidx73.i, align 1, !tbaa !44
  %conv74.i = sext i8 %174 to i32
  %cmp.i371.i = icmp eq i32 %173, 2
  br i1 %cmp.i371.i, label %if.then.i378.i, label %if.else.i388.i

if.then.i378.i:                                   ; preds = %if.then62.i
  %cur_bits.i.i372.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %shl.i.i373.i = shl i32 %172, 1
  %175 = or i32 %shl.i.i373.i, %conv74.i
  %or.i.i374.i = xor i32 %175, 1
  store i32 %or.i.i374.i, i32* %cur_bits.i.i372.i, align 4, !tbaa !45
  %dec.i.i376.i = add nsw i32 %storemerge.i.i369.i, -1
  store i32 %dec.i.i376.i, i32* %i_left.i, align 4, !tbaa !42
  %cmp.i.i377.i = icmp eq i32 %dec.i.i376.i, 0
  br i1 %cmp.i.i377.i, label %if.then.i.i382.i, label %bs_write_te.exit406.i

if.then.i.i382.i:                                 ; preds = %if.then.i378.i
  %add5.i.i.i379.i = tail call i32 @llvm.bswap.i32(i32 %or.i.i374.i) #6
  store i32 %add5.i.i.i379.i, i32* %171, align 4, !tbaa !44
  %176 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i381.i = getelementptr inbounds i8, i8* %176, i32 4
  store i8* %add.ptr.i.i381.i, i8** %p.i, align 4, !tbaa !40
  store i32 32, i32* %i_left.i, align 4, !tbaa !42
  %177 = bitcast i8* %add.ptr.i.i381.i to i32*
  br label %bs_write_te.exit406.i

if.else.i388.i:                                   ; preds = %if.then62.i
  %add.i.i383.i = add nsw i32 %conv74.i, 1
  %arrayidx.i.i384.i = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %add.i.i383.i
  %178 = load i8, i8* %arrayidx.i.i384.i, align 1, !tbaa !44
  %conv.i.i385.i = zext i8 %178 to i32
  %cmp.i.i.i387.i = icmp sgt i32 %storemerge.i.i369.i, %conv.i.i385.i
  br i1 %cmp.i.i.i387.i, label %if.then.i.i.i393.i, label %if.else.i.i.i403.i

if.then.i.i.i393.i:                               ; preds = %if.else.i388.i
  %shl.i.i.i390.i = shl i32 %172, %conv.i.i385.i
  %or.i.i.i391.i = or i32 %shl.i.i.i390.i, %add.i.i383.i
  %sub.i.i.i392.i = sub nsw i32 %storemerge.i.i369.i, %conv.i.i385.i
  br label %bs_write_ue.exit.i405.i

if.else.i.i.i403.i:                               ; preds = %if.else.i388.i
  %sub4.i.i.i394.i = sub nsw i32 %conv.i.i385.i, %storemerge.i.i369.i
  %shl7.i.i.i396.i = shl i32 %172, %storemerge.i.i369.i
  %shr.i.i.i397.i = lshr i32 %add.i.i383.i, %sub4.i.i.i394.i
  %or8.i.i.i398.i = or i32 %shr.i.i.i397.i, %shl7.i.i.i396.i
  %add5.i.i.i.i.i399.i = tail call i32 @llvm.bswap.i32(i32 %or8.i.i.i398.i) #6
  store i32 %add5.i.i.i.i.i399.i, i32* %171, align 4, !tbaa !44
  %179 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i.i401.i = getelementptr inbounds i8, i8* %179, i32 4
  store i8* %add.ptr.i.i.i401.i, i8** %p.i, align 4, !tbaa !40
  %sub13.i.i.i402.i = sub nsw i32 32, %sub4.i.i.i394.i
  %180 = bitcast i8* %add.ptr.i.i.i401.i to i32*
  br label %bs_write_ue.exit.i405.i

bs_write_ue.exit.i405.i:                          ; preds = %if.else.i.i.i403.i, %if.then.i.i.i393.i
  %181 = phi i32* [ %171, %if.then.i.i.i393.i ], [ %180, %if.else.i.i.i403.i ]
  %add.i.i383.i.sink = phi i32 [ %or.i.i.i391.i, %if.then.i.i.i393.i ], [ %add.i.i383.i, %if.else.i.i.i403.i ]
  %storemerge.i.i.i404.i = phi i32 [ %sub.i.i.i392.i, %if.then.i.i.i393.i ], [ %sub13.i.i.i402.i, %if.else.i.i.i403.i ]
  %182 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  store i32 %add.i.i383.i.sink, i32* %182, align 4
  store i32 %storemerge.i.i.i404.i, i32* %i_left.i, align 4, !tbaa !42
  br label %bs_write_te.exit406.i

bs_write_te.exit406.i:                            ; preds = %bs_write_ue.exit.i405.i, %if.then.i.i382.i, %if.then.i378.i
  %183 = phi i32* [ %171, %if.then.i378.i ], [ %177, %if.then.i.i382.i ], [ %181, %bs_write_ue.exit.i405.i ]
  %184 = phi i32 [ %dec.i.i376.i, %if.then.i378.i ], [ 32, %if.then.i.i382.i ], [ %storemerge.i.i.i404.i, %bs_write_ue.exit.i405.i ]
  %185 = load i32, i32* %arrayidx59.i, align 4, !tbaa !52
  %arrayidx85.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 0, i32 14
  %186 = load i8, i8* %arrayidx85.i, align 1, !tbaa !44
  %conv86.i = sext i8 %186 to i32
  %cmp.i407.i = icmp eq i32 %185, 2
  br i1 %cmp.i407.i, label %if.then.i414.i, label %if.else.i424.i

if.then.i414.i:                                   ; preds = %bs_write_te.exit406.i
  %cur_bits.i.i408.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %187 = load i32, i32* %cur_bits.i.i408.i, align 4, !tbaa !45
  %shl.i.i409.i = shl i32 %187, 1
  %188 = or i32 %shl.i.i409.i, %conv86.i
  %or.i.i410.i = xor i32 %188, 1
  store i32 %or.i.i410.i, i32* %cur_bits.i.i408.i, align 4, !tbaa !45
  %dec.i.i412.i = add nsw i32 %184, -1
  store i32 %dec.i.i412.i, i32* %i_left.i, align 4, !tbaa !42
  %cmp.i.i413.i = icmp eq i32 %dec.i.i412.i, 0
  br i1 %cmp.i.i413.i, label %if.then.i.i418.i, label %if.end87.i

if.then.i.i418.i:                                 ; preds = %if.then.i414.i
  %add5.i.i.i415.i = tail call i32 @llvm.bswap.i32(i32 %or.i.i410.i) #6
  store i32 %add5.i.i.i415.i, i32* %183, align 4, !tbaa !44
  %189 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i417.i = getelementptr inbounds i8, i8* %189, i32 4
  store i8* %add.ptr.i.i417.i, i8** %p.i, align 4, !tbaa !40
  store i32 32, i32* %i_left.i, align 4, !tbaa !42
  br label %if.end87.i

if.else.i424.i:                                   ; preds = %bs_write_te.exit406.i
  %add.i.i419.i = add nsw i32 %conv86.i, 1
  %arrayidx.i.i420.i = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %add.i.i419.i
  %190 = load i8, i8* %arrayidx.i.i420.i, align 1, !tbaa !44
  %conv.i.i421.i = zext i8 %190 to i32
  %cmp.i.i.i423.i = icmp sgt i32 %184, %conv.i.i421.i
  br i1 %cmp.i.i.i423.i, label %if.then.i.i.i429.i, label %if.else.i.i.i439.i

if.then.i.i.i429.i:                               ; preds = %if.else.i424.i
  %cur_bits.i.i.i425.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %191 = load i32, i32* %cur_bits.i.i.i425.i, align 4, !tbaa !45
  %shl.i.i.i426.i = shl i32 %191, %conv.i.i421.i
  %or.i.i.i427.i = or i32 %shl.i.i.i426.i, %add.i.i419.i
  store i32 %or.i.i.i427.i, i32* %cur_bits.i.i.i425.i, align 4, !tbaa !45
  %sub.i.i.i428.i = sub nsw i32 %184, %conv.i.i421.i
  br label %bs_write_ue.exit.i441.i

if.else.i.i.i439.i:                               ; preds = %if.else.i424.i
  %sub4.i.i.i430.i = sub nsw i32 %conv.i.i421.i, %184
  %cur_bits5.i.i.i431.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %192 = load i32, i32* %cur_bits5.i.i.i431.i, align 4, !tbaa !45
  %shl7.i.i.i432.i = shl i32 %192, %184
  %shr.i.i.i433.i = lshr i32 %add.i.i419.i, %sub4.i.i.i430.i
  %or8.i.i.i434.i = or i32 %shl7.i.i.i432.i, %shr.i.i.i433.i
  %add5.i.i.i.i.i435.i = tail call i32 @llvm.bswap.i32(i32 %or8.i.i.i434.i) #6
  store i32 %add5.i.i.i.i.i435.i, i32* %183, align 4, !tbaa !44
  %193 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i.i437.i = getelementptr inbounds i8, i8* %193, i32 4
  store i8* %add.ptr.i.i.i437.i, i8** %p.i, align 4, !tbaa !40
  store i32 %add.i.i419.i, i32* %cur_bits5.i.i.i431.i, align 4, !tbaa !45
  %sub13.i.i.i438.i = sub nsw i32 32, %sub4.i.i.i430.i
  br label %bs_write_ue.exit.i441.i

bs_write_ue.exit.i441.i:                          ; preds = %if.else.i.i.i439.i, %if.then.i.i.i429.i
  %storemerge.i.i.i440.i = phi i32 [ %sub13.i.i.i438.i, %if.else.i.i.i439.i ], [ %sub.i.i.i428.i, %if.then.i.i.i429.i ]
  store i32 %storemerge.i.i.i440.i, i32* %i_left.i, align 4, !tbaa !42
  br label %if.end87.i

if.end87.i:                                       ; preds = %bs_write_ue.exit.i441.i, %if.then.i.i418.i, %if.then.i414.i, %bs_write_ue.exit370.i
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 0, i32 0, i32 2) #6
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 0, i32 4, i32 2) #6
  br label %if.end83

if.then94.i:                                      ; preds = %if.then75
  %arrayidx100.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 0, i32 12
  %194 = load i8, i8* %arrayidx100.i, align 1, !tbaa !44
  %arrayidx107.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 0, i32 14
  %195 = load i8, i8* %arrayidx107.i, align 1, !tbaa !44
  %or267.i = or i8 %195, %194
  %arrayidx114.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 0, i32 28
  %196 = load i8, i8* %arrayidx114.i, align 1, !tbaa !44
  %or116268.i = or i8 %or267.i, %196
  %arrayidx122.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 0, i32 30
  %197 = load i8, i8* %arrayidx122.i, align 1, !tbaa !44
  %or124269.i = or i8 %or116268.i, %197
  %cmp125.i = icmp eq i8 %or124269.i, 0
  %cmp.i.i444.i = icmp sgt i32 %8, 5
  br i1 %cmp125.i, label %if.then127.i, label %if.else128.i

if.then127.i:                                     ; preds = %if.then94.i
  br i1 %cmp.i.i444.i, label %if.then.i.i449.i, label %if.else.i.i459.i

if.then.i.i449.i:                                 ; preds = %if.then127.i
  %cur_bits.i.i445.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %198 = load i32, i32* %cur_bits.i.i445.i, align 4, !tbaa !45
  %shl.i.i446.i = shl i32 %198, 5
  %or.i.i447.i = or i32 %shl.i.i446.i, 5
  store i32 %or.i.i447.i, i32* %cur_bits.i.i445.i, align 4, !tbaa !45
  %sub.i.i448.i = add nsw i32 %8, -5
  br label %if.end129.i

if.else.i.i459.i:                                 ; preds = %if.then127.i
  %sub4.i.i450.i = sub nsw i32 5, %8
  %cur_bits5.i.i451.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %199 = load i32, i32* %cur_bits5.i.i451.i, align 4, !tbaa !45
  %shl7.i.i452.i = shl i32 %199, %8
  %shr.i.i453.i = lshr i32 5, %sub4.i.i450.i
  %or8.i.i454.i = or i32 %shl7.i.i452.i, %shr.i.i453.i
  %add5.i.i.i.i455.i = tail call i32 @llvm.bswap.i32(i32 %or8.i.i454.i) #6
  store i32 %add5.i.i.i.i455.i, i32* %10, align 4, !tbaa !44
  %200 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i457.i = getelementptr inbounds i8, i8* %200, i32 4
  store i8* %add.ptr.i.i457.i, i8** %p.i, align 4, !tbaa !40
  store i32 5, i32* %cur_bits5.i.i451.i, align 4, !tbaa !45
  %sub13.i.i458.i = add nsw i32 %8, 27
  %201 = bitcast i8* %add.ptr.i.i457.i to i32*
  br label %if.end129.i

if.else128.i:                                     ; preds = %if.then94.i
  br i1 %cmp.i.i444.i, label %if.then.i.i468.i, label %if.else.i.i478.i

if.then.i.i468.i:                                 ; preds = %if.else128.i
  %cur_bits.i.i464.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %202 = load i32, i32* %cur_bits.i.i464.i, align 4, !tbaa !45
  %shl.i.i465.i = shl i32 %202, 5
  %or.i.i466.i = or i32 %shl.i.i465.i, 4
  store i32 %or.i.i466.i, i32* %cur_bits.i.i464.i, align 4, !tbaa !45
  %sub.i.i467.i = add nsw i32 %8, -5
  br label %if.end129.i

if.else.i.i478.i:                                 ; preds = %if.else128.i
  %sub4.i.i469.i = sub nsw i32 5, %8
  %cur_bits5.i.i470.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %203 = load i32, i32* %cur_bits5.i.i470.i, align 4, !tbaa !45
  %shl7.i.i471.i = shl i32 %203, %8
  %shr.i.i472.i = lshr i32 4, %sub4.i.i469.i
  %or8.i.i473.i = or i32 %shl7.i.i471.i, %shr.i.i472.i
  %add5.i.i.i.i474.i = tail call i32 @llvm.bswap.i32(i32 %or8.i.i473.i) #6
  store i32 %add5.i.i.i.i474.i, i32* %10, align 4, !tbaa !44
  %204 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i476.i = getelementptr inbounds i8, i8* %204, i32 4
  store i8* %add.ptr.i.i476.i, i8** %p.i, align 4, !tbaa !40
  store i32 4, i32* %cur_bits5.i.i470.i, align 4, !tbaa !45
  %sub13.i.i477.i = add nsw i32 %8, 27
  %205 = bitcast i8* %add.ptr.i.i476.i to i32*
  br label %if.end129.i

if.end129.i:                                      ; preds = %if.else.i.i478.i, %if.then.i.i468.i, %if.else.i.i459.i, %if.then.i.i449.i
  %206 = phi i32* [ %201, %if.else.i.i459.i ], [ %10, %if.then.i.i449.i ], [ %205, %if.else.i.i478.i ], [ %10, %if.then.i.i468.i ]
  %207 = phi i32 [ 5, %if.else.i.i459.i ], [ %or.i.i447.i, %if.then.i.i449.i ], [ 4, %if.else.i.i478.i ], [ %or.i.i466.i, %if.then.i.i468.i ]
  %208 = phi i32 [ %sub13.i.i458.i, %if.else.i.i459.i ], [ %sub.i.i448.i, %if.then.i.i449.i ], [ %sub13.i.i477.i, %if.else.i.i478.i ], [ %sub.i.i467.i, %if.then.i.i468.i ]
  %b_sub_ref.0.i = phi i32 [ 0, %if.else.i.i459.i ], [ 0, %if.then.i.i449.i ], [ 1, %if.else.i.i478.i ], [ 1, %if.then.i.i468.i ]
  store i32 %208, i32* %i_left.i, align 4, !tbaa !42
  %inter.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 51, i32 1
  %209 = load i32, i32* %inter.i, align 4, !tbaa !53
  %and.i656 = and i32 %209, 32
  %tobool.i657 = icmp eq i32 %and.i656, 0
  br i1 %tobool.i657, label %if.else138.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end129.i
  %cur_bits5.i.i490.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %arrayidx134.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 78, i32 0
  %210 = load i8, i8* %arrayidx134.i, align 1, !tbaa !44
  %idxprom135.i = zext i8 %210 to i32
  %arrayidx136.i = getelementptr inbounds [4 x i8], [4 x i8]* @subpartition_p_to_golomb, i32 0, i32 %idxprom135.i
  %211 = load i8, i8* %arrayidx136.i, align 1, !tbaa !44
  %conv137.i = zext i8 %211 to i32
  %add.i.i658 = add nuw nsw i32 %conv137.i, 1
  %arrayidx.i481.i = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %add.i.i658
  %212 = load i8, i8* %arrayidx.i481.i, align 1, !tbaa !44
  %conv.i.i659 = zext i8 %212 to i32
  %cmp.i.i483.i = icmp sgt i32 %208, %conv.i.i659
  br i1 %cmp.i.i483.i, label %if.then.i.i488.i, label %if.else.i.i498.i

if.then.i.i488.i:                                 ; preds = %for.cond.preheader.i
  %shl.i.i485.i = shl i32 %207, %conv.i.i659
  %or.i.i486.i = or i32 %shl.i.i485.i, %add.i.i658
  store i32 %or.i.i486.i, i32* %cur_bits5.i.i490.i, align 4, !tbaa !45
  %sub.i.i487.i = sub nsw i32 %208, %conv.i.i659
  br label %bs_write_ue.exit500.i

if.else.i.i498.i:                                 ; preds = %for.cond.preheader.i
  %sub4.i.i489.i = sub nsw i32 %conv.i.i659, %208
  %shl7.i.i491.i = shl i32 %207, %208
  %shr.i.i492.i = lshr i32 %add.i.i658, %sub4.i.i489.i
  %or8.i.i493.i = or i32 %shr.i.i492.i, %shl7.i.i491.i
  %add5.i.i.i.i494.i = tail call i32 @llvm.bswap.i32(i32 %or8.i.i493.i) #6
  store i32 %add5.i.i.i.i494.i, i32* %206, align 4, !tbaa !44
  %213 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i496.i = getelementptr inbounds i8, i8* %213, i32 4
  store i8* %add.ptr.i.i496.i, i8** %p.i, align 4, !tbaa !40
  store i32 %add.i.i658, i32* %cur_bits5.i.i490.i, align 4, !tbaa !45
  %sub13.i.i497.i = sub nsw i32 32, %sub4.i.i489.i
  %214 = bitcast i8* %add.ptr.i.i496.i to i32*
  br label %bs_write_ue.exit500.i

bs_write_ue.exit500.i:                            ; preds = %if.else.i.i498.i, %if.then.i.i488.i
  %215 = phi i32* [ %214, %if.else.i.i498.i ], [ %206, %if.then.i.i488.i ]
  %216 = phi i32 [ %add.i.i658, %if.else.i.i498.i ], [ %or.i.i486.i, %if.then.i.i488.i ]
  %storemerge.i.i499.i = phi i32 [ %sub13.i.i497.i, %if.else.i.i498.i ], [ %sub.i.i487.i, %if.then.i.i488.i ]
  store i32 %storemerge.i.i499.i, i32* %i_left.i, align 4, !tbaa !42
  %arrayidx134.1.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 78, i32 1
  %217 = load i8, i8* %arrayidx134.1.i, align 1, !tbaa !44
  %idxprom135.1.i = zext i8 %217 to i32
  %arrayidx136.1.i = getelementptr inbounds [4 x i8], [4 x i8]* @subpartition_p_to_golomb, i32 0, i32 %idxprom135.1.i
  %218 = load i8, i8* %arrayidx136.1.i, align 1, !tbaa !44
  %conv137.1.i = zext i8 %218 to i32
  %add.i.1.i660 = add nuw nsw i32 %conv137.1.i, 1
  %arrayidx.i481.1.i = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %add.i.1.i660
  %219 = load i8, i8* %arrayidx.i481.1.i, align 1, !tbaa !44
  %conv.i.1.i = zext i8 %219 to i32
  %cmp.i.i483.1.i = icmp sgt i32 %storemerge.i.i499.i, %conv.i.1.i
  br i1 %cmp.i.i483.1.i, label %if.then.i.i488.1.i, label %if.else.i.i498.1.i

if.else138.i:                                     ; preds = %if.end129.i
  %cmp.i646.i = icmp sgt i32 %208, 4
  br i1 %cmp.i646.i, label %if.then.i650.i, label %if.else.i654.i

if.then.i650.i:                                   ; preds = %if.else138.i
  %cur_bits.i647.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %shl.i648.i = shl i32 %207, 4
  %or.i649.i = or i32 %shl.i648.i, 15
  store i32 %or.i649.i, i32* %cur_bits.i647.i, align 4, !tbaa !45
  %sub.i.i661 = add nsw i32 %208, -4
  br label %if.end139.i

if.else.i654.i:                                   ; preds = %if.else138.i
  %sub4.i.i662 = sub nsw i32 4, %208
  %cur_bits5.i.i663 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %shl7.i.i664 = shl i32 %207, %208
  %shr.i.i665 = lshr i32 15, %sub4.i.i662
  %or8.i.i666 = or i32 %shr.i.i665, %shl7.i.i664
  %add5.i.i.i651.i = tail call i32 @llvm.bswap.i32(i32 %or8.i.i666) #6
  store i32 %add5.i.i.i651.i, i32* %206, align 4, !tbaa !44
  %220 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i653.i = getelementptr inbounds i8, i8* %220, i32 4
  store i8* %add.ptr.i653.i, i8** %p.i, align 4, !tbaa !40
  store i32 15, i32* %cur_bits5.i.i663, align 4, !tbaa !45
  %sub13.i.i667 = add nsw i32 %208, 28
  %221 = bitcast i8* %add.ptr.i653.i to i32*
  br label %if.end139.i

if.end139.i:                                      ; preds = %if.then.i.i488.3.i, %if.else.i.i498.3.i, %if.else.i654.i, %if.then.i650.i
  %222 = phi i32* [ %221, %if.else.i654.i ], [ %206, %if.then.i650.i ], [ %292, %if.else.i.i498.3.i ], [ %286, %if.then.i.i488.3.i ]
  %storemerge.i668 = phi i32 [ %sub13.i.i667, %if.else.i654.i ], [ %sub.i.i661, %if.then.i650.i ], [ %sub13.i.i497.3.i, %if.else.i.i498.3.i ], [ %sub.i.i487.3.i, %if.then.i.i488.3.i ]
  %223 = phi i32 [ 15, %if.else.i654.i ], [ %or.i649.i, %if.then.i650.i ], [ %add.i.3.i671, %if.else.i.i498.3.i ], [ %or.i.i486.3.i, %if.then.i.i488.3.i ]
  store i32 %storemerge.i668, i32* %i_left.i, align 4, !tbaa !42
  %tobool140.i = icmp eq i32 %b_sub_ref.0.i, 0
  br i1 %tobool140.i, label %if.end190.i, label %if.then141.i

if.then141.i:                                     ; preds = %if.end139.i
  %arrayidx145.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 17, i32 0
  %224 = load i32, i32* %arrayidx145.i, align 4, !tbaa !52
  %225 = load i8, i8* %arrayidx100.i, align 1, !tbaa !44
  %conv153.i = sext i8 %225 to i32
  %cmp.i609.i = icmp eq i32 %224, 2
  br i1 %cmp.i609.i, label %if.then.i616.i, label %if.else.i626.i

if.then.i616.i:                                   ; preds = %if.then141.i
  %cur_bits.i.i610.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %shl.i.i611.i = shl i32 %223, 1
  %226 = or i32 %shl.i.i611.i, %conv153.i
  %or.i.i612.i = xor i32 %226, 1
  store i32 %or.i.i612.i, i32* %cur_bits.i.i610.i, align 4, !tbaa !45
  %dec.i.i614.i = add nsw i32 %storemerge.i668, -1
  store i32 %dec.i.i614.i, i32* %i_left.i, align 4, !tbaa !42
  %cmp.i.i615.i = icmp eq i32 %dec.i.i614.i, 0
  br i1 %cmp.i.i615.i, label %if.then.i.i620.i, label %bs_write_te.exit644.i

if.then.i.i620.i:                                 ; preds = %if.then.i616.i
  %add5.i.i.i617.i = tail call i32 @llvm.bswap.i32(i32 %or.i.i612.i) #6
  store i32 %add5.i.i.i617.i, i32* %222, align 4, !tbaa !44
  %227 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i619.i = getelementptr inbounds i8, i8* %227, i32 4
  store i8* %add.ptr.i.i619.i, i8** %p.i, align 4, !tbaa !40
  store i32 32, i32* %i_left.i, align 4, !tbaa !42
  %228 = bitcast i8* %add.ptr.i.i619.i to i32*
  br label %bs_write_te.exit644.i

if.else.i626.i:                                   ; preds = %if.then141.i
  %add.i.i621.i = add nsw i32 %conv153.i, 1
  %arrayidx.i.i622.i = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %add.i.i621.i
  %229 = load i8, i8* %arrayidx.i.i622.i, align 1, !tbaa !44
  %conv.i.i623.i = zext i8 %229 to i32
  %cmp.i.i.i625.i = icmp sgt i32 %storemerge.i668, %conv.i.i623.i
  br i1 %cmp.i.i.i625.i, label %if.then.i.i.i631.i, label %if.else.i.i.i641.i

if.then.i.i.i631.i:                               ; preds = %if.else.i626.i
  %shl.i.i.i628.i = shl i32 %223, %conv.i.i623.i
  %or.i.i.i629.i = or i32 %shl.i.i.i628.i, %add.i.i621.i
  %sub.i.i.i630.i = sub nsw i32 %storemerge.i668, %conv.i.i623.i
  br label %bs_write_ue.exit.i643.i

if.else.i.i.i641.i:                               ; preds = %if.else.i626.i
  %sub4.i.i.i632.i = sub nsw i32 %conv.i.i623.i, %storemerge.i668
  %shl7.i.i.i634.i = shl i32 %223, %storemerge.i668
  %shr.i.i.i635.i = lshr i32 %add.i.i621.i, %sub4.i.i.i632.i
  %or8.i.i.i636.i = or i32 %shr.i.i.i635.i, %shl7.i.i.i634.i
  %add5.i.i.i.i.i637.i = tail call i32 @llvm.bswap.i32(i32 %or8.i.i.i636.i) #6
  store i32 %add5.i.i.i.i.i637.i, i32* %222, align 4, !tbaa !44
  %230 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i.i639.i = getelementptr inbounds i8, i8* %230, i32 4
  store i8* %add.ptr.i.i.i639.i, i8** %p.i, align 4, !tbaa !40
  %sub13.i.i.i640.i = sub nsw i32 32, %sub4.i.i.i632.i
  %231 = bitcast i8* %add.ptr.i.i.i639.i to i32*
  br label %bs_write_ue.exit.i643.i

bs_write_ue.exit.i643.i:                          ; preds = %if.else.i.i.i641.i, %if.then.i.i.i631.i
  %232 = phi i32* [ %222, %if.then.i.i.i631.i ], [ %231, %if.else.i.i.i641.i ]
  %add.i.i621.i.sink = phi i32 [ %or.i.i.i629.i, %if.then.i.i.i631.i ], [ %add.i.i621.i, %if.else.i.i.i641.i ]
  %storemerge.i.i.i642.i = phi i32 [ %sub.i.i.i630.i, %if.then.i.i.i631.i ], [ %sub13.i.i.i640.i, %if.else.i.i.i641.i ]
  %233 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  store i32 %add.i.i621.i.sink, i32* %233, align 4
  store i32 %storemerge.i.i.i642.i, i32* %i_left.i, align 4, !tbaa !42
  br label %bs_write_te.exit644.i

bs_write_te.exit644.i:                            ; preds = %bs_write_ue.exit.i643.i, %if.then.i.i620.i, %if.then.i616.i
  %234 = phi i32* [ %222, %if.then.i616.i ], [ %228, %if.then.i.i620.i ], [ %232, %bs_write_ue.exit.i643.i ]
  %235 = phi i32 [ %dec.i.i614.i, %if.then.i616.i ], [ 32, %if.then.i.i620.i ], [ %storemerge.i.i.i642.i, %bs_write_ue.exit.i643.i ]
  %236 = load i32, i32* %arrayidx145.i, align 4, !tbaa !52
  %237 = load i8, i8* %arrayidx107.i, align 1, !tbaa !44
  %conv165.i = sext i8 %237 to i32
  %cmp.i573.i = icmp eq i32 %236, 2
  br i1 %cmp.i573.i, label %if.then.i580.i, label %if.else.i590.i

if.then.i580.i:                                   ; preds = %bs_write_te.exit644.i
  %cur_bits.i.i574.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %238 = load i32, i32* %cur_bits.i.i574.i, align 4, !tbaa !45
  %shl.i.i575.i = shl i32 %238, 1
  %239 = or i32 %shl.i.i575.i, %conv165.i
  %or.i.i576.i = xor i32 %239, 1
  store i32 %or.i.i576.i, i32* %cur_bits.i.i574.i, align 4, !tbaa !45
  %dec.i.i578.i = add nsw i32 %235, -1
  store i32 %dec.i.i578.i, i32* %i_left.i, align 4, !tbaa !42
  %cmp.i.i579.i = icmp eq i32 %dec.i.i578.i, 0
  br i1 %cmp.i.i579.i, label %if.then.i.i584.i, label %bs_write_te.exit608.i

if.then.i.i584.i:                                 ; preds = %if.then.i580.i
  %add5.i.i.i581.i = tail call i32 @llvm.bswap.i32(i32 %or.i.i576.i) #6
  store i32 %add5.i.i.i581.i, i32* %234, align 4, !tbaa !44
  %240 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i583.i = getelementptr inbounds i8, i8* %240, i32 4
  store i8* %add.ptr.i.i583.i, i8** %p.i, align 4, !tbaa !40
  store i32 32, i32* %i_left.i, align 4, !tbaa !42
  %241 = bitcast i8* %add.ptr.i.i583.i to i32*
  br label %bs_write_te.exit608.i

if.else.i590.i:                                   ; preds = %bs_write_te.exit644.i
  %add.i.i585.i = add nsw i32 %conv165.i, 1
  %arrayidx.i.i586.i = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %add.i.i585.i
  %242 = load i8, i8* %arrayidx.i.i586.i, align 1, !tbaa !44
  %conv.i.i587.i = zext i8 %242 to i32
  %cmp.i.i.i589.i = icmp sgt i32 %235, %conv.i.i587.i
  br i1 %cmp.i.i.i589.i, label %if.then.i.i.i595.i, label %if.else.i.i.i605.i

if.then.i.i.i595.i:                               ; preds = %if.else.i590.i
  %cur_bits.i.i.i591.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %243 = load i32, i32* %cur_bits.i.i.i591.i, align 4, !tbaa !45
  %shl.i.i.i592.i = shl i32 %243, %conv.i.i587.i
  %or.i.i.i593.i = or i32 %shl.i.i.i592.i, %add.i.i585.i
  store i32 %or.i.i.i593.i, i32* %cur_bits.i.i.i591.i, align 4, !tbaa !45
  %sub.i.i.i594.i = sub nsw i32 %235, %conv.i.i587.i
  br label %bs_write_ue.exit.i607.i

if.else.i.i.i605.i:                               ; preds = %if.else.i590.i
  %sub4.i.i.i596.i = sub nsw i32 %conv.i.i587.i, %235
  %cur_bits5.i.i.i597.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %244 = load i32, i32* %cur_bits5.i.i.i597.i, align 4, !tbaa !45
  %shl7.i.i.i598.i = shl i32 %244, %235
  %shr.i.i.i599.i = lshr i32 %add.i.i585.i, %sub4.i.i.i596.i
  %or8.i.i.i600.i = or i32 %shl7.i.i.i598.i, %shr.i.i.i599.i
  %add5.i.i.i.i.i601.i = tail call i32 @llvm.bswap.i32(i32 %or8.i.i.i600.i) #6
  store i32 %add5.i.i.i.i.i601.i, i32* %234, align 4, !tbaa !44
  %245 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i.i603.i = getelementptr inbounds i8, i8* %245, i32 4
  store i8* %add.ptr.i.i.i603.i, i8** %p.i, align 4, !tbaa !40
  store i32 %add.i.i585.i, i32* %cur_bits5.i.i.i597.i, align 4, !tbaa !45
  %sub13.i.i.i604.i = sub nsw i32 32, %sub4.i.i.i596.i
  %246 = bitcast i8* %add.ptr.i.i.i603.i to i32*
  br label %bs_write_ue.exit.i607.i

bs_write_ue.exit.i607.i:                          ; preds = %if.else.i.i.i605.i, %if.then.i.i.i595.i
  %247 = phi i32* [ %246, %if.else.i.i.i605.i ], [ %234, %if.then.i.i.i595.i ]
  %storemerge.i.i.i606.i = phi i32 [ %sub13.i.i.i604.i, %if.else.i.i.i605.i ], [ %sub.i.i.i594.i, %if.then.i.i.i595.i ]
  store i32 %storemerge.i.i.i606.i, i32* %i_left.i, align 4, !tbaa !42
  br label %bs_write_te.exit608.i

bs_write_te.exit608.i:                            ; preds = %bs_write_ue.exit.i607.i, %if.then.i.i584.i, %if.then.i580.i
  %248 = phi i32* [ %234, %if.then.i580.i ], [ %241, %if.then.i.i584.i ], [ %247, %bs_write_ue.exit.i607.i ]
  %249 = phi i32 [ %dec.i.i578.i, %if.then.i580.i ], [ 32, %if.then.i.i584.i ], [ %storemerge.i.i.i606.i, %bs_write_ue.exit.i607.i ]
  %250 = load i32, i32* %arrayidx145.i, align 4, !tbaa !52
  %251 = load i8, i8* %arrayidx114.i, align 1, !tbaa !44
  %conv177.i = sext i8 %251 to i32
  %cmp.i537.i = icmp eq i32 %250, 2
  br i1 %cmp.i537.i, label %if.then.i544.i, label %if.else.i554.i

if.then.i544.i:                                   ; preds = %bs_write_te.exit608.i
  %cur_bits.i.i538.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %252 = load i32, i32* %cur_bits.i.i538.i, align 4, !tbaa !45
  %shl.i.i539.i = shl i32 %252, 1
  %253 = or i32 %shl.i.i539.i, %conv177.i
  %or.i.i540.i = xor i32 %253, 1
  store i32 %or.i.i540.i, i32* %cur_bits.i.i538.i, align 4, !tbaa !45
  %dec.i.i542.i = add nsw i32 %249, -1
  store i32 %dec.i.i542.i, i32* %i_left.i, align 4, !tbaa !42
  %cmp.i.i543.i = icmp eq i32 %dec.i.i542.i, 0
  br i1 %cmp.i.i543.i, label %if.then.i.i548.i, label %bs_write_te.exit572.i

if.then.i.i548.i:                                 ; preds = %if.then.i544.i
  %add5.i.i.i545.i = tail call i32 @llvm.bswap.i32(i32 %or.i.i540.i) #6
  store i32 %add5.i.i.i545.i, i32* %248, align 4, !tbaa !44
  %254 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i547.i = getelementptr inbounds i8, i8* %254, i32 4
  store i8* %add.ptr.i.i547.i, i8** %p.i, align 4, !tbaa !40
  store i32 32, i32* %i_left.i, align 4, !tbaa !42
  %255 = bitcast i8* %add.ptr.i.i547.i to i32*
  br label %bs_write_te.exit572.i

if.else.i554.i:                                   ; preds = %bs_write_te.exit608.i
  %add.i.i549.i = add nsw i32 %conv177.i, 1
  %arrayidx.i.i550.i = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %add.i.i549.i
  %256 = load i8, i8* %arrayidx.i.i550.i, align 1, !tbaa !44
  %conv.i.i551.i = zext i8 %256 to i32
  %cmp.i.i.i553.i = icmp sgt i32 %249, %conv.i.i551.i
  br i1 %cmp.i.i.i553.i, label %if.then.i.i.i559.i, label %if.else.i.i.i569.i

if.then.i.i.i559.i:                               ; preds = %if.else.i554.i
  %cur_bits.i.i.i555.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %257 = load i32, i32* %cur_bits.i.i.i555.i, align 4, !tbaa !45
  %shl.i.i.i556.i = shl i32 %257, %conv.i.i551.i
  %or.i.i.i557.i = or i32 %shl.i.i.i556.i, %add.i.i549.i
  store i32 %or.i.i.i557.i, i32* %cur_bits.i.i.i555.i, align 4, !tbaa !45
  %sub.i.i.i558.i = sub nsw i32 %249, %conv.i.i551.i
  br label %bs_write_ue.exit.i571.i

if.else.i.i.i569.i:                               ; preds = %if.else.i554.i
  %sub4.i.i.i560.i = sub nsw i32 %conv.i.i551.i, %249
  %cur_bits5.i.i.i561.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %258 = load i32, i32* %cur_bits5.i.i.i561.i, align 4, !tbaa !45
  %shl7.i.i.i562.i = shl i32 %258, %249
  %shr.i.i.i563.i = lshr i32 %add.i.i549.i, %sub4.i.i.i560.i
  %or8.i.i.i564.i = or i32 %shl7.i.i.i562.i, %shr.i.i.i563.i
  %add5.i.i.i.i.i565.i = tail call i32 @llvm.bswap.i32(i32 %or8.i.i.i564.i) #6
  store i32 %add5.i.i.i.i.i565.i, i32* %248, align 4, !tbaa !44
  %259 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i.i567.i = getelementptr inbounds i8, i8* %259, i32 4
  store i8* %add.ptr.i.i.i567.i, i8** %p.i, align 4, !tbaa !40
  store i32 %add.i.i549.i, i32* %cur_bits5.i.i.i561.i, align 4, !tbaa !45
  %sub13.i.i.i568.i = sub nsw i32 32, %sub4.i.i.i560.i
  %260 = bitcast i8* %add.ptr.i.i.i567.i to i32*
  br label %bs_write_ue.exit.i571.i

bs_write_ue.exit.i571.i:                          ; preds = %if.else.i.i.i569.i, %if.then.i.i.i559.i
  %261 = phi i32* [ %260, %if.else.i.i.i569.i ], [ %248, %if.then.i.i.i559.i ]
  %storemerge.i.i.i570.i = phi i32 [ %sub13.i.i.i568.i, %if.else.i.i.i569.i ], [ %sub.i.i.i558.i, %if.then.i.i.i559.i ]
  store i32 %storemerge.i.i.i570.i, i32* %i_left.i, align 4, !tbaa !42
  br label %bs_write_te.exit572.i

bs_write_te.exit572.i:                            ; preds = %bs_write_ue.exit.i571.i, %if.then.i.i548.i, %if.then.i544.i
  %262 = phi i32* [ %248, %if.then.i544.i ], [ %255, %if.then.i.i548.i ], [ %261, %bs_write_ue.exit.i571.i ]
  %263 = phi i32 [ %dec.i.i542.i, %if.then.i544.i ], [ 32, %if.then.i.i548.i ], [ %storemerge.i.i.i570.i, %bs_write_ue.exit.i571.i ]
  %264 = load i32, i32* %arrayidx145.i, align 4, !tbaa !52
  %265 = load i8, i8* %arrayidx122.i, align 1, !tbaa !44
  %conv189.i = sext i8 %265 to i32
  %cmp.i501.i = icmp eq i32 %264, 2
  br i1 %cmp.i501.i, label %if.then.i508.i, label %if.else.i518.i

if.then.i508.i:                                   ; preds = %bs_write_te.exit572.i
  %cur_bits.i.i502.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %266 = load i32, i32* %cur_bits.i.i502.i, align 4, !tbaa !45
  %shl.i.i503.i = shl i32 %266, 1
  %267 = or i32 %shl.i.i503.i, %conv189.i
  %or.i.i504.i = xor i32 %267, 1
  store i32 %or.i.i504.i, i32* %cur_bits.i.i502.i, align 4, !tbaa !45
  %dec.i.i506.i = add nsw i32 %263, -1
  store i32 %dec.i.i506.i, i32* %i_left.i, align 4, !tbaa !42
  %cmp.i.i507.i = icmp eq i32 %dec.i.i506.i, 0
  br i1 %cmp.i.i507.i, label %if.then.i.i512.i, label %if.end190.i

if.then.i.i512.i:                                 ; preds = %if.then.i508.i
  %add5.i.i.i509.i = tail call i32 @llvm.bswap.i32(i32 %or.i.i504.i) #6
  store i32 %add5.i.i.i509.i, i32* %262, align 4, !tbaa !44
  %268 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i511.i = getelementptr inbounds i8, i8* %268, i32 4
  store i8* %add.ptr.i.i511.i, i8** %p.i, align 4, !tbaa !40
  store i32 32, i32* %i_left.i, align 4, !tbaa !42
  br label %if.end190.i

if.else.i518.i:                                   ; preds = %bs_write_te.exit572.i
  %add.i.i513.i = add nsw i32 %conv189.i, 1
  %arrayidx.i.i514.i = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %add.i.i513.i
  %269 = load i8, i8* %arrayidx.i.i514.i, align 1, !tbaa !44
  %conv.i.i515.i = zext i8 %269 to i32
  %cmp.i.i.i517.i = icmp sgt i32 %263, %conv.i.i515.i
  br i1 %cmp.i.i.i517.i, label %if.then.i.i.i523.i, label %if.else.i.i.i533.i

if.then.i.i.i523.i:                               ; preds = %if.else.i518.i
  %cur_bits.i.i.i519.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %270 = load i32, i32* %cur_bits.i.i.i519.i, align 4, !tbaa !45
  %shl.i.i.i520.i = shl i32 %270, %conv.i.i515.i
  %or.i.i.i521.i = or i32 %shl.i.i.i520.i, %add.i.i513.i
  store i32 %or.i.i.i521.i, i32* %cur_bits.i.i.i519.i, align 4, !tbaa !45
  %sub.i.i.i522.i = sub nsw i32 %263, %conv.i.i515.i
  br label %bs_write_ue.exit.i535.i

if.else.i.i.i533.i:                               ; preds = %if.else.i518.i
  %sub4.i.i.i524.i = sub nsw i32 %conv.i.i515.i, %263
  %cur_bits5.i.i.i525.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %271 = load i32, i32* %cur_bits5.i.i.i525.i, align 4, !tbaa !45
  %shl7.i.i.i526.i = shl i32 %271, %263
  %shr.i.i.i527.i = lshr i32 %add.i.i513.i, %sub4.i.i.i524.i
  %or8.i.i.i528.i = or i32 %shl7.i.i.i526.i, %shr.i.i.i527.i
  %add5.i.i.i.i.i529.i = tail call i32 @llvm.bswap.i32(i32 %or8.i.i.i528.i) #6
  store i32 %add5.i.i.i.i.i529.i, i32* %262, align 4, !tbaa !44
  %272 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i.i531.i = getelementptr inbounds i8, i8* %272, i32 4
  store i8* %add.ptr.i.i.i531.i, i8** %p.i, align 4, !tbaa !40
  store i32 %add.i.i513.i, i32* %cur_bits5.i.i.i525.i, align 4, !tbaa !45
  %sub13.i.i.i532.i = sub nsw i32 32, %sub4.i.i.i524.i
  br label %bs_write_ue.exit.i535.i

bs_write_ue.exit.i535.i:                          ; preds = %if.else.i.i.i533.i, %if.then.i.i.i523.i
  %storemerge.i.i.i534.i = phi i32 [ %sub13.i.i.i532.i, %if.else.i.i.i533.i ], [ %sub.i.i.i522.i, %if.then.i.i.i523.i ]
  store i32 %storemerge.i.i.i534.i, i32* %i_left.i, align 4, !tbaa !42
  br label %if.end190.i

if.end190.i:                                      ; preds = %bs_write_ue.exit.i535.i, %if.then.i.i512.i, %if.then.i508.i, %if.end139.i
  %arrayidx.i.i669 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 78, i32 0
  %273 = load i8, i8* %arrayidx.i.i669, align 1, !tbaa !44
  switch i8 %273, label %cavlc_8x8_mvd.exit.i [
    i8 3, label %sw.bb.i.i
    i8 1, label %sw.bb1.i.i
    i8 2, label %sw.bb5.i.i
    i8 0, label %sw.bb10.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end190.i
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 0, i32 0, i32 2) #6
  br label %cavlc_8x8_mvd.exit.i

sw.bb1.i.i:                                       ; preds = %if.end190.i
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 0, i32 0, i32 2) #6
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 0, i32 2, i32 2) #6
  br label %cavlc_8x8_mvd.exit.i

sw.bb5.i.i:                                       ; preds = %if.end190.i
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 0, i32 0, i32 1) #6
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 0, i32 1, i32 1) #6
  br label %cavlc_8x8_mvd.exit.i

sw.bb10.i.i:                                      ; preds = %if.end190.i
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 0, i32 0, i32 1) #6
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 0, i32 1, i32 1) #6
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 0, i32 2, i32 1) #6
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 0, i32 3, i32 1) #6
  br label %cavlc_8x8_mvd.exit.i

cavlc_8x8_mvd.exit.i:                             ; preds = %sw.bb10.i.i, %sw.bb5.i.i, %sw.bb1.i.i, %sw.bb.i.i, %if.end190.i
  %arrayidx.i.1.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 78, i32 1
  %274 = load i8, i8* %arrayidx.i.1.i, align 1, !tbaa !44
  switch i8 %274, label %cavlc_8x8_mvd.exit.1.i [
    i8 3, label %sw.bb.i.1.i
    i8 1, label %sw.bb1.i.1.i
    i8 2, label %sw.bb5.i.1.i
    i8 0, label %sw.bb10.i.1.i
  ]

if.else200.i:                                     ; preds = %if.then75
  tail call fastcc void @cavlc_mb_header_i(%struct.x264_t* nonnull %h, i32 %0, i32 5, i32 %lor.ext) #6
  br label %if.end83

sw.bb10.i.1.i:                                    ; preds = %cavlc_8x8_mvd.exit.i
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 0, i32 4, i32 1) #6
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 0, i32 5, i32 1) #6
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 0, i32 6, i32 1) #6
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 0, i32 7, i32 1) #6
  br label %cavlc_8x8_mvd.exit.1.i

sw.bb5.i.1.i:                                     ; preds = %cavlc_8x8_mvd.exit.i
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 0, i32 4, i32 1) #6
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 0, i32 5, i32 1) #6
  br label %cavlc_8x8_mvd.exit.1.i

sw.bb1.i.1.i:                                     ; preds = %cavlc_8x8_mvd.exit.i
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 0, i32 4, i32 2) #6
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 0, i32 6, i32 2) #6
  br label %cavlc_8x8_mvd.exit.1.i

sw.bb.i.1.i:                                      ; preds = %cavlc_8x8_mvd.exit.i
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 0, i32 4, i32 2) #6
  br label %cavlc_8x8_mvd.exit.1.i

cavlc_8x8_mvd.exit.1.i:                           ; preds = %sw.bb.i.1.i, %sw.bb1.i.1.i, %sw.bb5.i.1.i, %sw.bb10.i.1.i, %cavlc_8x8_mvd.exit.i
  %arrayidx.i.2.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 78, i32 2
  %275 = load i8, i8* %arrayidx.i.2.i, align 1, !tbaa !44
  switch i8 %275, label %cavlc_8x8_mvd.exit.2.i [
    i8 3, label %sw.bb.i.2.i
    i8 1, label %sw.bb1.i.2.i
    i8 2, label %sw.bb5.i.2.i
    i8 0, label %sw.bb10.i.2.i
  ]

sw.bb10.i.2.i:                                    ; preds = %cavlc_8x8_mvd.exit.1.i
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 0, i32 8, i32 1) #6
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 0, i32 9, i32 1) #6
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 0, i32 10, i32 1) #6
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 0, i32 11, i32 1) #6
  br label %cavlc_8x8_mvd.exit.2.i

sw.bb5.i.2.i:                                     ; preds = %cavlc_8x8_mvd.exit.1.i
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 0, i32 8, i32 1) #6
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 0, i32 9, i32 1) #6
  br label %cavlc_8x8_mvd.exit.2.i

sw.bb1.i.2.i:                                     ; preds = %cavlc_8x8_mvd.exit.1.i
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 0, i32 8, i32 2) #6
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 0, i32 10, i32 2) #6
  br label %cavlc_8x8_mvd.exit.2.i

sw.bb.i.2.i:                                      ; preds = %cavlc_8x8_mvd.exit.1.i
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 0, i32 8, i32 2) #6
  br label %cavlc_8x8_mvd.exit.2.i

cavlc_8x8_mvd.exit.2.i:                           ; preds = %sw.bb.i.2.i, %sw.bb1.i.2.i, %sw.bb5.i.2.i, %sw.bb10.i.2.i, %cavlc_8x8_mvd.exit.1.i
  %arrayidx.i.3.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 78, i32 3
  %276 = load i8, i8* %arrayidx.i.3.i, align 1, !tbaa !44
  switch i8 %276, label %if.end83 [
    i8 3, label %sw.bb.i.3.i
    i8 1, label %sw.bb1.i.3.i
    i8 2, label %sw.bb5.i.3.i
    i8 0, label %sw.bb10.i.3.i
  ]

sw.bb10.i.3.i:                                    ; preds = %cavlc_8x8_mvd.exit.2.i
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 0, i32 12, i32 1) #6
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 0, i32 13, i32 1) #6
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 0, i32 14, i32 1) #6
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 0, i32 15, i32 1) #6
  br label %if.end83

sw.bb5.i.3.i:                                     ; preds = %cavlc_8x8_mvd.exit.2.i
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 0, i32 12, i32 1) #6
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 0, i32 13, i32 1) #6
  br label %if.end83

sw.bb1.i.3.i:                                     ; preds = %cavlc_8x8_mvd.exit.2.i
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 0, i32 12, i32 2) #6
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 0, i32 14, i32 2) #6
  br label %if.end83

sw.bb.i.3.i:                                      ; preds = %cavlc_8x8_mvd.exit.2.i
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 0, i32 12, i32 2) #6
  br label %if.end83

if.else.i.i498.1.i:                               ; preds = %bs_write_ue.exit500.i
  %sub4.i.i489.1.i = sub nsw i32 %conv.i.1.i, %storemerge.i.i499.i
  %shl7.i.i491.1.i = shl i32 %216, %storemerge.i.i499.i
  %shr.i.i492.1.i = lshr i32 %add.i.1.i660, %sub4.i.i489.1.i
  %or8.i.i493.1.i = or i32 %shr.i.i492.1.i, %shl7.i.i491.1.i
  %add5.i.i.i.i494.1.i = tail call i32 @llvm.bswap.i32(i32 %or8.i.i493.1.i) #6
  store i32 %add5.i.i.i.i494.1.i, i32* %215, align 4, !tbaa !44
  %277 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i496.1.i = getelementptr inbounds i8, i8* %277, i32 4
  store i8* %add.ptr.i.i496.1.i, i8** %p.i, align 4, !tbaa !40
  store i32 %add.i.1.i660, i32* %cur_bits5.i.i490.i, align 4, !tbaa !45
  %sub13.i.i497.1.i = sub nsw i32 32, %sub4.i.i489.1.i
  %278 = bitcast i8* %add.ptr.i.i496.1.i to i32*
  br label %bs_write_ue.exit500.1.i

if.then.i.i488.1.i:                               ; preds = %bs_write_ue.exit500.i
  %shl.i.i485.1.i = shl i32 %216, %conv.i.1.i
  %or.i.i486.1.i = or i32 %shl.i.i485.1.i, %add.i.1.i660
  store i32 %or.i.i486.1.i, i32* %cur_bits5.i.i490.i, align 4, !tbaa !45
  %sub.i.i487.1.i = sub nsw i32 %storemerge.i.i499.i, %conv.i.1.i
  br label %bs_write_ue.exit500.1.i

bs_write_ue.exit500.1.i:                          ; preds = %if.then.i.i488.1.i, %if.else.i.i498.1.i
  %279 = phi i32* [ %278, %if.else.i.i498.1.i ], [ %215, %if.then.i.i488.1.i ]
  %280 = phi i32 [ %add.i.1.i660, %if.else.i.i498.1.i ], [ %or.i.i486.1.i, %if.then.i.i488.1.i ]
  %storemerge.i.i499.1.i = phi i32 [ %sub13.i.i497.1.i, %if.else.i.i498.1.i ], [ %sub.i.i487.1.i, %if.then.i.i488.1.i ]
  store i32 %storemerge.i.i499.1.i, i32* %i_left.i, align 4, !tbaa !42
  %arrayidx134.2.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 78, i32 2
  %281 = load i8, i8* %arrayidx134.2.i, align 1, !tbaa !44
  %idxprom135.2.i = zext i8 %281 to i32
  %arrayidx136.2.i = getelementptr inbounds [4 x i8], [4 x i8]* @subpartition_p_to_golomb, i32 0, i32 %idxprom135.2.i
  %282 = load i8, i8* %arrayidx136.2.i, align 1, !tbaa !44
  %conv137.2.i = zext i8 %282 to i32
  %add.i.2.i670 = add nuw nsw i32 %conv137.2.i, 1
  %arrayidx.i481.2.i = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %add.i.2.i670
  %283 = load i8, i8* %arrayidx.i481.2.i, align 1, !tbaa !44
  %conv.i.2.i = zext i8 %283 to i32
  %cmp.i.i483.2.i = icmp sgt i32 %storemerge.i.i499.1.i, %conv.i.2.i
  br i1 %cmp.i.i483.2.i, label %if.then.i.i488.2.i, label %if.else.i.i498.2.i

if.else.i.i498.2.i:                               ; preds = %bs_write_ue.exit500.1.i
  %sub4.i.i489.2.i = sub nsw i32 %conv.i.2.i, %storemerge.i.i499.1.i
  %shl7.i.i491.2.i = shl i32 %280, %storemerge.i.i499.1.i
  %shr.i.i492.2.i = lshr i32 %add.i.2.i670, %sub4.i.i489.2.i
  %or8.i.i493.2.i = or i32 %shr.i.i492.2.i, %shl7.i.i491.2.i
  %add5.i.i.i.i494.2.i = tail call i32 @llvm.bswap.i32(i32 %or8.i.i493.2.i) #6
  store i32 %add5.i.i.i.i494.2.i, i32* %279, align 4, !tbaa !44
  %284 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i496.2.i = getelementptr inbounds i8, i8* %284, i32 4
  store i8* %add.ptr.i.i496.2.i, i8** %p.i, align 4, !tbaa !40
  store i32 %add.i.2.i670, i32* %cur_bits5.i.i490.i, align 4, !tbaa !45
  %sub13.i.i497.2.i = sub nsw i32 32, %sub4.i.i489.2.i
  %285 = bitcast i8* %add.ptr.i.i496.2.i to i32*
  br label %bs_write_ue.exit500.2.i

if.then.i.i488.2.i:                               ; preds = %bs_write_ue.exit500.1.i
  %shl.i.i485.2.i = shl i32 %280, %conv.i.2.i
  %or.i.i486.2.i = or i32 %shl.i.i485.2.i, %add.i.2.i670
  store i32 %or.i.i486.2.i, i32* %cur_bits5.i.i490.i, align 4, !tbaa !45
  %sub.i.i487.2.i = sub nsw i32 %storemerge.i.i499.1.i, %conv.i.2.i
  br label %bs_write_ue.exit500.2.i

bs_write_ue.exit500.2.i:                          ; preds = %if.then.i.i488.2.i, %if.else.i.i498.2.i
  %286 = phi i32* [ %285, %if.else.i.i498.2.i ], [ %279, %if.then.i.i488.2.i ]
  %287 = phi i32 [ %add.i.2.i670, %if.else.i.i498.2.i ], [ %or.i.i486.2.i, %if.then.i.i488.2.i ]
  %storemerge.i.i499.2.i = phi i32 [ %sub13.i.i497.2.i, %if.else.i.i498.2.i ], [ %sub.i.i487.2.i, %if.then.i.i488.2.i ]
  store i32 %storemerge.i.i499.2.i, i32* %i_left.i, align 4, !tbaa !42
  %arrayidx134.3.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 78, i32 3
  %288 = load i8, i8* %arrayidx134.3.i, align 1, !tbaa !44
  %idxprom135.3.i = zext i8 %288 to i32
  %arrayidx136.3.i = getelementptr inbounds [4 x i8], [4 x i8]* @subpartition_p_to_golomb, i32 0, i32 %idxprom135.3.i
  %289 = load i8, i8* %arrayidx136.3.i, align 1, !tbaa !44
  %conv137.3.i = zext i8 %289 to i32
  %add.i.3.i671 = add nuw nsw i32 %conv137.3.i, 1
  %arrayidx.i481.3.i = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %add.i.3.i671
  %290 = load i8, i8* %arrayidx.i481.3.i, align 1, !tbaa !44
  %conv.i.3.i = zext i8 %290 to i32
  %cmp.i.i483.3.i = icmp sgt i32 %storemerge.i.i499.2.i, %conv.i.3.i
  br i1 %cmp.i.i483.3.i, label %if.then.i.i488.3.i, label %if.else.i.i498.3.i

if.else.i.i498.3.i:                               ; preds = %bs_write_ue.exit500.2.i
  %sub4.i.i489.3.i = sub nsw i32 %conv.i.3.i, %storemerge.i.i499.2.i
  %shl7.i.i491.3.i = shl i32 %287, %storemerge.i.i499.2.i
  %shr.i.i492.3.i = lshr i32 %add.i.3.i671, %sub4.i.i489.3.i
  %or8.i.i493.3.i = or i32 %shr.i.i492.3.i, %shl7.i.i491.3.i
  %add5.i.i.i.i494.3.i = tail call i32 @llvm.bswap.i32(i32 %or8.i.i493.3.i) #6
  store i32 %add5.i.i.i.i494.3.i, i32* %286, align 4, !tbaa !44
  %291 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i496.3.i = getelementptr inbounds i8, i8* %291, i32 4
  store i8* %add.ptr.i.i496.3.i, i8** %p.i, align 4, !tbaa !40
  store i32 %add.i.3.i671, i32* %cur_bits5.i.i490.i, align 4, !tbaa !45
  %sub13.i.i497.3.i = sub nsw i32 32, %sub4.i.i489.3.i
  %292 = bitcast i8* %add.ptr.i.i496.3.i to i32*
  br label %if.end139.i

if.then.i.i488.3.i:                               ; preds = %bs_write_ue.exit500.2.i
  %shl.i.i485.3.i = shl i32 %287, %conv.i.3.i
  %or.i.i486.3.i = or i32 %shl.i.i485.3.i, %add.i.3.i671
  store i32 %or.i.i486.3.i, i32* %cur_bits5.i.i490.i, align 4, !tbaa !45
  %sub.i.i487.3.i = sub nsw i32 %storemerge.i.i499.2.i, %conv.i.3.i
  br label %if.end139.i

if.then80:                                        ; preds = %if.end70
  %cmp.i672 = icmp eq i32 %0, 17
  br i1 %cmp.i672, label %if.then.i674, label %if.else.i725

if.then.i674:                                     ; preds = %if.then80
  %cmp.i.i.i673 = icmp sgt i32 %8, 9
  br i1 %cmp.i.i.i673, label %if.then.i.i.i678, label %if.else.i.i.i688

if.then.i.i.i678:                                 ; preds = %if.then.i674
  %cur_bits.i.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %293 = load i32, i32* %cur_bits.i.i.i, align 4, !tbaa !45
  %shl.i.i.i675 = shl i32 %293, 9
  %or.i.i.i676 = or i32 %shl.i.i.i675, 23
  store i32 %or.i.i.i676, i32* %cur_bits.i.i.i, align 4, !tbaa !45
  %sub.i.i.i677 = add nsw i32 %8, -9
  br label %bs_write_ue.exit.i696

if.else.i.i.i688:                                 ; preds = %if.then.i674
  %sub4.i.i.i679 = sub nsw i32 9, %8
  %cur_bits5.i.i.i680 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %294 = load i32, i32* %cur_bits5.i.i.i680, align 4, !tbaa !45
  %shl7.i.i.i681 = shl i32 %294, %8
  %shr.i.i.i682 = lshr i32 23, %sub4.i.i.i679
  %or8.i.i.i683 = or i32 %shl7.i.i.i681, %shr.i.i.i682
  %add5.i.i.i.i.i684 = tail call i32 @llvm.bswap.i32(i32 %or8.i.i.i683) #6
  store i32 %add5.i.i.i.i.i684, i32* %10, align 4, !tbaa !44
  %295 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i.i686 = getelementptr inbounds i8, i8* %295, i32 4
  store i8* %add.ptr.i.i.i686, i8** %p.i, align 4, !tbaa !40
  store i32 23, i32* %cur_bits5.i.i.i680, align 4, !tbaa !45
  %sub13.i.i.i687 = add nsw i32 %8, 23
  %296 = bitcast i8* %add.ptr.i.i.i686 to i32*
  br label %bs_write_ue.exit.i696

bs_write_ue.exit.i696:                            ; preds = %if.else.i.i.i688, %if.then.i.i.i678
  %297 = phi i32* [ %296, %if.else.i.i.i688 ], [ %10, %if.then.i.i.i678 ]
  %298 = phi i32 [ 23, %if.else.i.i.i688 ], [ %or.i.i.i676, %if.then.i.i.i678 ]
  %storemerge.i.i.i689 = phi i32 [ %sub13.i.i.i687, %if.else.i.i.i688 ], [ %sub.i.i.i677, %if.then.i.i.i678 ]
  store i32 %storemerge.i.i.i689, i32* %i_left.i, align 4, !tbaa !42
  %cur_bits5.i.i400.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %arrayidx.i690 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 78, i32 0
  %299 = load i8, i8* %arrayidx.i690, align 1, !tbaa !44
  %idxprom.i691 = zext i8 %299 to i32
  %arrayidx2.i = getelementptr inbounds [13 x i8], [13 x i8]* @subpartition_b_to_golomb, i32 0, i32 %idxprom.i691
  %300 = load i8, i8* %arrayidx2.i, align 1, !tbaa !44
  %conv.i692 = zext i8 %300 to i32
  %add.i.i693 = add nuw nsw i32 %conv.i692, 1
  %arrayidx.i.i694 = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %add.i.i693
  %301 = load i8, i8* %arrayidx.i.i694, align 1, !tbaa !44
  %conv.i.i695 = zext i8 %301 to i32
  %cmp.i.i393.i = icmp sgt i32 %storemerge.i.i.i689, %conv.i.i695
  br i1 %cmp.i.i393.i, label %if.then.i.i398.i, label %if.else.i.i408.i

for.cond9.preheader.i:                            ; preds = %bs_write_ue.exit410.3.i
  %302 = load i8, i8* %arrayidx.i690, align 1, !tbaa !44
  %idxprom17.i = zext i8 %302 to i32
  %arrayidx18.i = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 0, i32 %idxprom17.i
  %303 = load i8, i8* %arrayidx18.i, align 1, !tbaa !44
  %tobool.i697 = icmp eq i8 %303, 0
  br i1 %tobool.i697, label %for.inc30.i, label %if.then19.i

if.then.i.i398.i:                                 ; preds = %bs_write_ue.exit.i696
  %shl.i.i395.i = shl i32 %298, %conv.i.i695
  %or.i.i396.i = or i32 %shl.i.i395.i, %add.i.i693
  store i32 %or.i.i396.i, i32* %cur_bits5.i.i400.i, align 4, !tbaa !45
  %sub.i.i397.i = sub nsw i32 %storemerge.i.i.i689, %conv.i.i695
  br label %bs_write_ue.exit410.i

if.else.i.i408.i:                                 ; preds = %bs_write_ue.exit.i696
  %sub4.i.i399.i = sub nsw i32 %conv.i.i695, %storemerge.i.i.i689
  %shl7.i.i401.i = shl i32 %298, %storemerge.i.i.i689
  %shr.i.i402.i = lshr i32 %add.i.i693, %sub4.i.i399.i
  %or8.i.i403.i = or i32 %shr.i.i402.i, %shl7.i.i401.i
  %add5.i.i.i.i404.i = tail call i32 @llvm.bswap.i32(i32 %or8.i.i403.i) #6
  store i32 %add5.i.i.i.i404.i, i32* %297, align 4, !tbaa !44
  %304 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i406.i = getelementptr inbounds i8, i8* %304, i32 4
  store i8* %add.ptr.i.i406.i, i8** %p.i, align 4, !tbaa !40
  store i32 %add.i.i693, i32* %cur_bits5.i.i400.i, align 4, !tbaa !45
  %sub13.i.i407.i = sub nsw i32 32, %sub4.i.i399.i
  %305 = bitcast i8* %add.ptr.i.i406.i to i32*
  br label %bs_write_ue.exit410.i

bs_write_ue.exit410.i:                            ; preds = %if.else.i.i408.i, %if.then.i.i398.i
  %306 = phi i32* [ %305, %if.else.i.i408.i ], [ %297, %if.then.i.i398.i ]
  %307 = phi i32 [ %add.i.i693, %if.else.i.i408.i ], [ %or.i.i396.i, %if.then.i.i398.i ]
  %storemerge.i.i409.i = phi i32 [ %sub13.i.i407.i, %if.else.i.i408.i ], [ %sub.i.i397.i, %if.then.i.i398.i ]
  store i32 %storemerge.i.i409.i, i32* %i_left.i, align 4, !tbaa !42
  %arrayidx.1.i698 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 78, i32 1
  %308 = load i8, i8* %arrayidx.1.i698, align 1, !tbaa !44
  %idxprom.1.i699 = zext i8 %308 to i32
  %arrayidx2.1.i = getelementptr inbounds [13 x i8], [13 x i8]* @subpartition_b_to_golomb, i32 0, i32 %idxprom.1.i699
  %309 = load i8, i8* %arrayidx2.1.i, align 1, !tbaa !44
  %conv.1.i700 = zext i8 %309 to i32
  %add.i.1.i701 = add nuw nsw i32 %conv.1.i700, 1
  %arrayidx.i.1.i702 = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %add.i.1.i701
  %310 = load i8, i8* %arrayidx.i.1.i702, align 1, !tbaa !44
  %conv.i.1.i703 = zext i8 %310 to i32
  %cmp.i.i393.1.i = icmp sgt i32 %storemerge.i.i409.i, %conv.i.1.i703
  br i1 %cmp.i.i393.1.i, label %if.then.i.i398.1.i, label %if.else.i.i408.1.i

if.then19.i:                                      ; preds = %for.cond9.preheader.i
  %arrayidx28.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 0, i32 12
  %311 = load i8, i8* %arrayidx28.i, align 1, !tbaa !44
  %conv29.i = sext i8 %311 to i32
  %cmp.i411.i = icmp eq i32 %561, 2
  br i1 %cmp.i411.i, label %if.then.i417.i, label %if.else.i.i710

if.then.i417.i:                                   ; preds = %if.then19.i
  %shl.i.i413.i = shl i32 %559, 1
  %312 = or i32 %shl.i.i413.i, %conv29.i
  %or.i.i414.i = xor i32 %312, 1
  store i32 %or.i.i414.i, i32* %cur_bits5.i.i400.i, align 4, !tbaa !45
  %dec.i.i.i704 = add nsw i32 %560, -1
  store i32 %dec.i.i.i704, i32* %i_left.i, align 4, !tbaa !42
  %cmp.i.i416.i = icmp eq i32 %dec.i.i.i704, 0
  br i1 %cmp.i.i416.i, label %if.then.i.i420.i, label %for.inc30.i

if.then.i.i420.i:                                 ; preds = %if.then.i417.i
  %add5.i.i.i.i705 = tail call i32 @llvm.bswap.i32(i32 %or.i.i414.i) #6
  store i32 %add5.i.i.i.i705, i32* %558, align 4, !tbaa !44
  %313 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i419.i = getelementptr inbounds i8, i8* %313, i32 4
  store i8* %add.ptr.i.i419.i, i8** %p.i, align 4, !tbaa !40
  store i32 32, i32* %i_left.i, align 4, !tbaa !42
  %314 = bitcast i8* %add.ptr.i.i419.i to i32*
  br label %for.inc30.i

if.else.i.i710:                                   ; preds = %if.then19.i
  %add.i.i.i706 = add nsw i32 %conv29.i, 1
  %arrayidx.i.i.i707 = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %add.i.i.i706
  %315 = load i8, i8* %arrayidx.i.i.i707, align 1, !tbaa !44
  %conv.i.i.i708 = zext i8 %315 to i32
  %cmp.i.i.i.i709 = icmp sgt i32 %560, %conv.i.i.i708
  br i1 %cmp.i.i.i.i709, label %if.then.i.i.i.i714, label %if.else.i.i.i.i722

if.then.i.i.i.i714:                               ; preds = %if.else.i.i710
  %shl.i.i.i.i711 = shl i32 %559, %conv.i.i.i708
  %or.i.i.i.i712 = or i32 %shl.i.i.i.i711, %add.i.i.i706
  store i32 %or.i.i.i.i712, i32* %cur_bits5.i.i400.i, align 4, !tbaa !45
  %sub.i.i.i.i713 = sub nsw i32 %560, %conv.i.i.i708
  br label %bs_write_ue.exit.i.i724

if.else.i.i.i.i722:                               ; preds = %if.else.i.i710
  %sub4.i.i.i.i715 = sub nsw i32 %conv.i.i.i708, %560
  %shl7.i.i.i.i716 = shl i32 %559, %560
  %shr.i.i.i.i717 = lshr i32 %add.i.i.i706, %sub4.i.i.i.i715
  %or8.i.i.i.i718 = or i32 %shr.i.i.i.i717, %shl7.i.i.i.i716
  %add5.i.i.i.i.i.i719 = tail call i32 @llvm.bswap.i32(i32 %or8.i.i.i.i718) #6
  store i32 %add5.i.i.i.i.i.i719, i32* %558, align 4, !tbaa !44
  %316 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i.i.i720 = getelementptr inbounds i8, i8* %316, i32 4
  store i8* %add.ptr.i.i.i.i720, i8** %p.i, align 4, !tbaa !40
  store i32 %add.i.i.i706, i32* %cur_bits5.i.i400.i, align 4, !tbaa !45
  %sub13.i.i.i.i721 = sub nsw i32 32, %sub4.i.i.i.i715
  %317 = bitcast i8* %add.ptr.i.i.i.i720 to i32*
  br label %bs_write_ue.exit.i.i724

bs_write_ue.exit.i.i724:                          ; preds = %if.else.i.i.i.i722, %if.then.i.i.i.i714
  %318 = phi i32* [ %317, %if.else.i.i.i.i722 ], [ %558, %if.then.i.i.i.i714 ]
  %storemerge.i.i.i.i723 = phi i32 [ %sub13.i.i.i.i721, %if.else.i.i.i.i722 ], [ %sub.i.i.i.i713, %if.then.i.i.i.i714 ]
  store i32 %storemerge.i.i.i.i723, i32* %i_left.i, align 4, !tbaa !42
  br label %for.inc30.i

for.inc30.i:                                      ; preds = %bs_write_ue.exit.i.i724, %if.then.i.i420.i, %if.then.i417.i, %for.cond9.preheader.i
  %319 = phi i32* [ %318, %bs_write_ue.exit.i.i724 ], [ %314, %if.then.i.i420.i ], [ %558, %if.then.i417.i ], [ %558, %for.cond9.preheader.i ]
  %320 = phi i32 [ %storemerge.i.i.i.i723, %bs_write_ue.exit.i.i724 ], [ 32, %if.then.i.i420.i ], [ %dec.i.i.i704, %if.then.i417.i ], [ %560, %for.cond9.preheader.i ]
  %321 = load i8, i8* %arrayidx.1.i698, align 1, !tbaa !44
  %idxprom17.1.i = zext i8 %321 to i32
  %arrayidx18.1.i = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 0, i32 %idxprom17.1.i
  %322 = load i8, i8* %arrayidx18.1.i, align 1, !tbaa !44
  %tobool.1.i = icmp eq i8 %322, 0
  br i1 %tobool.1.i, label %for.inc30.1.i, label %if.then19.1.i

if.end33.i:                                       ; preds = %bs_write_ue.exit410.3.i, %if.then.i.i420.3.i, %if.then.i417.3.i, %bs_write_ue.exit.i.3.i, %for.inc30.2.i
  %323 = phi i32* [ %558, %bs_write_ue.exit410.3.i ], [ %541, %if.then.i.i420.3.i ], [ %526, %if.then.i417.3.i ], [ %537, %bs_write_ue.exit.i.3.i ], [ %526, %for.inc30.2.i ]
  %324 = phi i32 [ %560, %bs_write_ue.exit410.3.i ], [ 32, %if.then.i.i420.3.i ], [ %dec.i.i.3.i, %if.then.i417.3.i ], [ %storemerge.i.i.i.3.i, %bs_write_ue.exit.i.3.i ], [ %527, %for.inc30.2.i ]
  %arrayidx37.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 17, i32 1
  %325 = load i32, i32* %arrayidx37.i, align 4, !tbaa !52
  %cmp38.i = icmp sgt i32 %325, 1
  br i1 %cmp38.i, label %for.cond42.preheader.i, label %if.end72.i

for.cond42.preheader.i:                           ; preds = %if.end33.i
  %326 = load i8, i8* %arrayidx.i690, align 1, !tbaa !44
  %idxprom50.i = zext i8 %326 to i32
  %arrayidx51.i = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 1, i32 %idxprom50.i
  %327 = load i8, i8* %arrayidx51.i, align 1, !tbaa !44
  %tobool52.i = icmp eq i8 %327, 0
  br i1 %tobool52.i, label %for.inc69.i, label %if.then53.i

if.then53.i:                                      ; preds = %for.cond42.preheader.i
  %arrayidx66.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 1, i32 12
  %328 = load i8, i8* %arrayidx66.i, align 1, !tbaa !44
  %conv67.i = sext i8 %328 to i32
  %cmp.i421.i = icmp eq i32 %325, 2
  br i1 %cmp.i421.i, label %if.then.i428.i, label %if.else.i438.i

if.then.i428.i:                                   ; preds = %if.then53.i
  %329 = load i32, i32* %cur_bits5.i.i400.i, align 4, !tbaa !45
  %shl.i.i423.i = shl i32 %329, 1
  %330 = or i32 %shl.i.i423.i, %conv67.i
  %or.i.i424.i = xor i32 %330, 1
  store i32 %or.i.i424.i, i32* %cur_bits5.i.i400.i, align 4, !tbaa !45
  %dec.i.i426.i = add nsw i32 %324, -1
  store i32 %dec.i.i426.i, i32* %i_left.i, align 4, !tbaa !42
  %cmp.i.i427.i = icmp eq i32 %dec.i.i426.i, 0
  br i1 %cmp.i.i427.i, label %if.then.i.i432.i, label %for.inc69.i

if.then.i.i432.i:                                 ; preds = %if.then.i428.i
  %add5.i.i.i429.i = tail call i32 @llvm.bswap.i32(i32 %or.i.i424.i) #6
  store i32 %add5.i.i.i429.i, i32* %323, align 4, !tbaa !44
  %331 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i431.i = getelementptr inbounds i8, i8* %331, i32 4
  store i8* %add.ptr.i.i431.i, i8** %p.i, align 4, !tbaa !40
  store i32 32, i32* %i_left.i, align 4, !tbaa !42
  %332 = bitcast i8* %add.ptr.i.i431.i to i32*
  br label %for.inc69.i

if.else.i438.i:                                   ; preds = %if.then53.i
  %add.i.i433.i = add nsw i32 %conv67.i, 1
  %arrayidx.i.i434.i = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %add.i.i433.i
  %333 = load i8, i8* %arrayidx.i.i434.i, align 1, !tbaa !44
  %conv.i.i435.i = zext i8 %333 to i32
  %cmp.i.i.i437.i = icmp sgt i32 %324, %conv.i.i435.i
  br i1 %cmp.i.i.i437.i, label %if.then.i.i.i443.i, label %if.else.i.i.i453.i

if.then.i.i.i443.i:                               ; preds = %if.else.i438.i
  %334 = load i32, i32* %cur_bits5.i.i400.i, align 4, !tbaa !45
  %shl.i.i.i440.i = shl i32 %334, %conv.i.i435.i
  %or.i.i.i441.i = or i32 %shl.i.i.i440.i, %add.i.i433.i
  store i32 %or.i.i.i441.i, i32* %cur_bits5.i.i400.i, align 4, !tbaa !45
  %sub.i.i.i442.i = sub nsw i32 %324, %conv.i.i435.i
  br label %bs_write_ue.exit.i455.i

if.else.i.i.i453.i:                               ; preds = %if.else.i438.i
  %sub4.i.i.i444.i = sub nsw i32 %conv.i.i435.i, %324
  %335 = load i32, i32* %cur_bits5.i.i400.i, align 4, !tbaa !45
  %shl7.i.i.i446.i = shl i32 %335, %324
  %shr.i.i.i447.i = lshr i32 %add.i.i433.i, %sub4.i.i.i444.i
  %or8.i.i.i448.i = or i32 %shl7.i.i.i446.i, %shr.i.i.i447.i
  %add5.i.i.i.i.i449.i = tail call i32 @llvm.bswap.i32(i32 %or8.i.i.i448.i) #6
  store i32 %add5.i.i.i.i.i449.i, i32* %323, align 4, !tbaa !44
  %336 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i.i451.i = getelementptr inbounds i8, i8* %336, i32 4
  store i8* %add.ptr.i.i.i451.i, i8** %p.i, align 4, !tbaa !40
  store i32 %add.i.i433.i, i32* %cur_bits5.i.i400.i, align 4, !tbaa !45
  %sub13.i.i.i452.i = sub nsw i32 32, %sub4.i.i.i444.i
  %337 = bitcast i8* %add.ptr.i.i.i451.i to i32*
  br label %bs_write_ue.exit.i455.i

bs_write_ue.exit.i455.i:                          ; preds = %if.else.i.i.i453.i, %if.then.i.i.i443.i
  %338 = phi i32* [ %337, %if.else.i.i.i453.i ], [ %323, %if.then.i.i.i443.i ]
  %storemerge.i.i.i454.i = phi i32 [ %sub13.i.i.i452.i, %if.else.i.i.i453.i ], [ %sub.i.i.i442.i, %if.then.i.i.i443.i ]
  store i32 %storemerge.i.i.i454.i, i32* %i_left.i, align 4, !tbaa !42
  br label %for.inc69.i

for.inc69.i:                                      ; preds = %bs_write_ue.exit.i455.i, %if.then.i.i432.i, %if.then.i428.i, %for.cond42.preheader.i
  %339 = phi i32* [ %338, %bs_write_ue.exit.i455.i ], [ %332, %if.then.i.i432.i ], [ %323, %if.then.i428.i ], [ %323, %for.cond42.preheader.i ]
  %340 = phi i32 [ %storemerge.i.i.i454.i, %bs_write_ue.exit.i455.i ], [ 32, %if.then.i.i432.i ], [ %dec.i.i426.i, %if.then.i428.i ], [ %324, %for.cond42.preheader.i ]
  %341 = load i8, i8* %arrayidx.1.i698, align 1, !tbaa !44
  %idxprom50.1.i = zext i8 %341 to i32
  %arrayidx51.1.i = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 1, i32 %idxprom50.1.i
  %342 = load i8, i8* %arrayidx51.1.i, align 1, !tbaa !44
  %tobool52.1.i = icmp eq i8 %342, 0
  br i1 %tobool52.1.i, label %for.inc69.1.i, label %if.then53.1.i

if.end72.i:                                       ; preds = %if.then.i.i432.3.i, %if.then.i428.3.i, %bs_write_ue.exit.i455.3.i, %for.inc69.2.i, %if.end33.i
  %343 = load i8, i8* %arrayidx.i690, align 1, !tbaa !44
  %idxprom82.i = zext i8 %343 to i32
  %arrayidx83.i = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 0, i32 %idxprom82.i
  %344 = load i8, i8* %arrayidx83.i, align 1, !tbaa !44
  %tobool84.i = icmp eq i8 %344, 0
  br i1 %tobool84.i, label %for.inc88.i, label %if.then85.i

if.then85.i:                                      ; preds = %if.end72.i
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 0, i32 0, i32 2) #6
  br label %for.inc88.i

for.inc88.i:                                      ; preds = %if.then85.i, %if.end72.i
  %345 = load i8, i8* %arrayidx.1.i698, align 1, !tbaa !44
  %idxprom82.1.i = zext i8 %345 to i32
  %arrayidx83.1.i = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 0, i32 %idxprom82.1.i
  %346 = load i8, i8* %arrayidx83.1.i, align 1, !tbaa !44
  %tobool84.1.i = icmp eq i8 %346, 0
  br i1 %tobool84.1.i, label %for.inc88.1.i, label %if.then85.1.i

if.then103.i:                                     ; preds = %for.inc88.3.i
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 1, i32 0, i32 2) #6
  br label %for.inc106.i

for.inc106.i:                                     ; preds = %for.inc88.3.i, %if.then103.i
  %347 = load i8, i8* %arrayidx.1.i698, align 1, !tbaa !44
  %idxprom100.1.i = zext i8 %347 to i32
  %arrayidx101.1.i = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 1, i32 %idxprom100.1.i
  %348 = load i8, i8* %arrayidx101.1.i, align 1, !tbaa !44
  %tobool102.1.i = icmp eq i8 %348, 0
  br i1 %tobool102.1.i, label %for.inc106.1.i, label %if.then103.1.i

if.else.i725:                                     ; preds = %if.then80
  %i_mb_type.off.i = add i32 %0, -8
  %349 = icmp ult i32 %i_mb_type.off.i, 9
  br i1 %349, label %if.then113.i, label %if.else285.i

if.then113.i:                                     ; preds = %if.else.i725
  %arraydecay.i726 = getelementptr inbounds [19 x [2 x [2 x i8]]], [19 x [2 x [2 x i8]]]* @x264_mb_type_list_table, i32 0, i32 %0, i32 0
  %arrayidx118.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 17, i32 0
  %350 = load i32, i32* %arrayidx118.i, align 4, !tbaa !52
  %sub119.i = add nsw i32 %350, -1
  %arrayidx123.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 17, i32 1
  %351 = load i32, i32* %arrayidx123.i, align 4, !tbaa !52
  %sub124.i = add nsw i32 %351, -1
  %i_partition.i727 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 77
  %352 = load i32, i32* %i_partition.i727, align 4, !tbaa !51
  %sub126.i = add nsw i32 %352, -14
  %arrayidx129.i = getelementptr inbounds [3 x [9 x i8]], [3 x [9 x i8]]* @mb_type_b_to_golomb, i32 0, i32 %sub126.i, i32 %i_mb_type.off.i
  %353 = load i8, i8* %arrayidx129.i, align 1, !tbaa !44
  %conv130.i = zext i8 %353 to i32
  %add.i457.i = add nuw nsw i32 %conv130.i, 1
  %arrayidx.i458.i = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %add.i457.i
  %354 = load i8, i8* %arrayidx.i458.i, align 1, !tbaa !44
  %conv.i459.i = zext i8 %354 to i32
  %cmp.i.i461.i = icmp sgt i32 %8, %conv.i459.i
  br i1 %cmp.i.i461.i, label %if.then.i.i466.i, label %if.else.i.i476.i

if.then.i.i466.i:                                 ; preds = %if.then113.i
  %cur_bits.i.i462.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %355 = load i32, i32* %cur_bits.i.i462.i, align 4, !tbaa !45
  %shl.i.i463.i = shl i32 %355, %conv.i459.i
  %or.i.i464.i = or i32 %shl.i.i463.i, %add.i457.i
  store i32 %or.i.i464.i, i32* %cur_bits.i.i462.i, align 4, !tbaa !45
  %sub.i.i465.i = sub nsw i32 %8, %conv.i459.i
  br label %bs_write_ue.exit478.i

if.else.i.i476.i:                                 ; preds = %if.then113.i
  %sub4.i.i467.i = sub nsw i32 %conv.i459.i, %8
  %cur_bits5.i.i468.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %356 = load i32, i32* %cur_bits5.i.i468.i, align 4, !tbaa !45
  %shl7.i.i469.i = shl i32 %356, %8
  %shr.i.i470.i = lshr i32 %add.i457.i, %sub4.i.i467.i
  %or8.i.i471.i = or i32 %shl7.i.i469.i, %shr.i.i470.i
  %add5.i.i.i.i472.i = tail call i32 @llvm.bswap.i32(i32 %or8.i.i471.i) #6
  store i32 %add5.i.i.i.i472.i, i32* %10, align 4, !tbaa !44
  %357 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i474.i = getelementptr inbounds i8, i8* %357, i32 4
  store i8* %add.ptr.i.i474.i, i8** %p.i, align 4, !tbaa !40
  store i32 %add.i457.i, i32* %cur_bits5.i.i468.i, align 4, !tbaa !45
  %sub13.i.i475.i = sub nsw i32 32, %sub4.i.i467.i
  %.pre.i728 = load i32, i32* %i_partition.i727, align 4, !tbaa !51
  %358 = bitcast i8* %add.ptr.i.i474.i to i32*
  br label %bs_write_ue.exit478.i

bs_write_ue.exit478.i:                            ; preds = %if.else.i.i476.i, %if.then.i.i466.i
  %359 = phi i32* [ %358, %if.else.i.i476.i ], [ %10, %if.then.i.i466.i ]
  %360 = phi i32 [ %add.i457.i, %if.else.i.i476.i ], [ %or.i.i464.i, %if.then.i.i466.i ]
  %361 = phi i32 [ %.pre.i728, %if.else.i.i476.i ], [ %352, %if.then.i.i466.i ]
  %storemerge.i.i477.i = phi i32 [ %sub13.i.i475.i, %if.else.i.i476.i ], [ %sub.i.i465.i, %if.then.i.i466.i ]
  store i32 %storemerge.i.i477.i, i32* %i_left.i, align 4, !tbaa !42
  %cmp133.i = icmp eq i32 %361, 16
  %tobool136.i = icmp ne i32 %sub119.i, 0
  br i1 %cmp133.i, label %if.then135.i, label %if.else176.i

if.then135.i:                                     ; preds = %bs_write_ue.exit478.i
  br i1 %tobool136.i, label %land.lhs.true137.i, label %if.end150.i

land.lhs.true137.i:                               ; preds = %if.then135.i
  %arrayidx139.i = getelementptr inbounds [2 x i8], [2 x i8]* %arraydecay.i726, i32 0, i32 0
  %362 = load i8, i8* %arrayidx139.i, align 1, !tbaa !44
  %tobool141.i = icmp eq i8 %362, 0
  br i1 %tobool141.i, label %if.end150.i, label %if.then142.i

if.then142.i:                                     ; preds = %land.lhs.true137.i
  %arrayidx148.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 0, i32 12
  %363 = load i8, i8* %arrayidx148.i, align 1, !tbaa !44
  %conv149.i = sext i8 %363 to i32
  %cmp.i479.i = icmp eq i32 %sub119.i, 1
  br i1 %cmp.i479.i, label %if.then.i486.i, label %if.else.i496.i

if.then.i486.i:                                   ; preds = %if.then142.i
  %cur_bits.i.i480.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %shl.i.i481.i = shl i32 %360, 1
  %364 = or i32 %shl.i.i481.i, %conv149.i
  %or.i.i482.i = xor i32 %364, 1
  store i32 %or.i.i482.i, i32* %cur_bits.i.i480.i, align 4, !tbaa !45
  %dec.i.i484.i = add nsw i32 %storemerge.i.i477.i, -1
  store i32 %dec.i.i484.i, i32* %i_left.i, align 4, !tbaa !42
  %cmp.i.i485.i = icmp eq i32 %dec.i.i484.i, 0
  br i1 %cmp.i.i485.i, label %if.then.i.i490.i, label %if.end150.i

if.then.i.i490.i:                                 ; preds = %if.then.i486.i
  %add5.i.i.i487.i = tail call i32 @llvm.bswap.i32(i32 %or.i.i482.i) #6
  store i32 %add5.i.i.i487.i, i32* %359, align 4, !tbaa !44
  %365 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i489.i = getelementptr inbounds i8, i8* %365, i32 4
  store i8* %add.ptr.i.i489.i, i8** %p.i, align 4, !tbaa !40
  store i32 32, i32* %i_left.i, align 4, !tbaa !42
  %366 = bitcast i8* %add.ptr.i.i489.i to i32*
  br label %if.end150.i

if.else.i496.i:                                   ; preds = %if.then142.i
  %add.i.i491.i = add nsw i32 %conv149.i, 1
  %arrayidx.i.i492.i = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %add.i.i491.i
  %367 = load i8, i8* %arrayidx.i.i492.i, align 1, !tbaa !44
  %conv.i.i493.i = zext i8 %367 to i32
  %cmp.i.i.i495.i = icmp sgt i32 %storemerge.i.i477.i, %conv.i.i493.i
  br i1 %cmp.i.i.i495.i, label %if.then.i.i.i501.i, label %if.else.i.i.i511.i

if.then.i.i.i501.i:                               ; preds = %if.else.i496.i
  %shl.i.i.i498.i = shl i32 %360, %conv.i.i493.i
  %or.i.i.i499.i = or i32 %shl.i.i.i498.i, %add.i.i491.i
  %sub.i.i.i500.i = sub nsw i32 %storemerge.i.i477.i, %conv.i.i493.i
  br label %bs_write_ue.exit.i513.i

if.else.i.i.i511.i:                               ; preds = %if.else.i496.i
  %sub4.i.i.i502.i = sub nsw i32 %conv.i.i493.i, %storemerge.i.i477.i
  %shl7.i.i.i504.i = shl i32 %360, %storemerge.i.i477.i
  %shr.i.i.i505.i = lshr i32 %add.i.i491.i, %sub4.i.i.i502.i
  %or8.i.i.i506.i = or i32 %shr.i.i.i505.i, %shl7.i.i.i504.i
  %add5.i.i.i.i.i507.i = tail call i32 @llvm.bswap.i32(i32 %or8.i.i.i506.i) #6
  store i32 %add5.i.i.i.i.i507.i, i32* %359, align 4, !tbaa !44
  %368 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i.i509.i = getelementptr inbounds i8, i8* %368, i32 4
  store i8* %add.ptr.i.i.i509.i, i8** %p.i, align 4, !tbaa !40
  %sub13.i.i.i510.i = sub nsw i32 32, %sub4.i.i.i502.i
  %369 = bitcast i8* %add.ptr.i.i.i509.i to i32*
  br label %bs_write_ue.exit.i513.i

bs_write_ue.exit.i513.i:                          ; preds = %if.else.i.i.i511.i, %if.then.i.i.i501.i
  %370 = phi i32* [ %359, %if.then.i.i.i501.i ], [ %369, %if.else.i.i.i511.i ]
  %add.i.i491.i.sink = phi i32 [ %or.i.i.i499.i, %if.then.i.i.i501.i ], [ %add.i.i491.i, %if.else.i.i.i511.i ]
  %storemerge.i.i.i512.i = phi i32 [ %sub.i.i.i500.i, %if.then.i.i.i501.i ], [ %sub13.i.i.i510.i, %if.else.i.i.i511.i ]
  %371 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  store i32 %add.i.i491.i.sink, i32* %371, align 4
  store i32 %storemerge.i.i.i512.i, i32* %i_left.i, align 4, !tbaa !42
  br label %if.end150.i

if.end150.i:                                      ; preds = %bs_write_ue.exit.i513.i, %if.then.i.i490.i, %if.then.i486.i, %land.lhs.true137.i, %if.then135.i
  %372 = phi i32* [ %370, %bs_write_ue.exit.i513.i ], [ %366, %if.then.i.i490.i ], [ %359, %if.then.i486.i ], [ %359, %land.lhs.true137.i ], [ %359, %if.then135.i ]
  %373 = phi i32 [ %storemerge.i.i.i512.i, %bs_write_ue.exit.i513.i ], [ 32, %if.then.i.i490.i ], [ %dec.i.i484.i, %if.then.i486.i ], [ %storemerge.i.i477.i, %land.lhs.true137.i ], [ %storemerge.i.i477.i, %if.then135.i ]
  %tobool151.i = icmp ne i32 %sub124.i, 0
  %374 = add nsw i32 %0, -11
  %tobool156.i = icmp ult i32 %374, 6
  %or.cond.i = and i1 %tobool156.i, %tobool151.i
  br i1 %or.cond.i, label %if.then157.i, label %if.end165.i

if.then157.i:                                     ; preds = %if.end150.i
  %arrayidx163.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 1, i32 12
  %375 = load i8, i8* %arrayidx163.i, align 1, !tbaa !44
  %conv164.i = sext i8 %375 to i32
  %cmp.i515.i = icmp eq i32 %sub124.i, 1
  br i1 %cmp.i515.i, label %if.then.i522.i, label %if.else.i532.i

if.then.i522.i:                                   ; preds = %if.then157.i
  %cur_bits.i.i516.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %376 = load i32, i32* %cur_bits.i.i516.i, align 4, !tbaa !45
  %shl.i.i517.i = shl i32 %376, 1
  %377 = or i32 %shl.i.i517.i, %conv164.i
  %or.i.i518.i = xor i32 %377, 1
  store i32 %or.i.i518.i, i32* %cur_bits.i.i516.i, align 4, !tbaa !45
  %dec.i.i520.i = add nsw i32 %373, -1
  store i32 %dec.i.i520.i, i32* %i_left.i, align 4, !tbaa !42
  %cmp.i.i521.i = icmp eq i32 %dec.i.i520.i, 0
  br i1 %cmp.i.i521.i, label %if.then.i.i526.i, label %if.end165.i

if.then.i.i526.i:                                 ; preds = %if.then.i522.i
  %add5.i.i.i523.i = tail call i32 @llvm.bswap.i32(i32 %or.i.i518.i) #6
  store i32 %add5.i.i.i523.i, i32* %372, align 4, !tbaa !44
  %378 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i525.i = getelementptr inbounds i8, i8* %378, i32 4
  store i8* %add.ptr.i.i525.i, i8** %p.i, align 4, !tbaa !40
  store i32 32, i32* %i_left.i, align 4, !tbaa !42
  br label %if.end165.i

if.else.i532.i:                                   ; preds = %if.then157.i
  %add.i.i527.i = add nsw i32 %conv164.i, 1
  %arrayidx.i.i528.i = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %add.i.i527.i
  %379 = load i8, i8* %arrayidx.i.i528.i, align 1, !tbaa !44
  %conv.i.i529.i = zext i8 %379 to i32
  %cmp.i.i.i531.i = icmp sgt i32 %373, %conv.i.i529.i
  br i1 %cmp.i.i.i531.i, label %if.then.i.i.i537.i, label %if.else.i.i.i547.i

if.then.i.i.i537.i:                               ; preds = %if.else.i532.i
  %cur_bits.i.i.i533.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %380 = load i32, i32* %cur_bits.i.i.i533.i, align 4, !tbaa !45
  %shl.i.i.i534.i = shl i32 %380, %conv.i.i529.i
  %or.i.i.i535.i = or i32 %shl.i.i.i534.i, %add.i.i527.i
  store i32 %or.i.i.i535.i, i32* %cur_bits.i.i.i533.i, align 4, !tbaa !45
  %sub.i.i.i536.i = sub nsw i32 %373, %conv.i.i529.i
  br label %bs_write_ue.exit.i549.i

if.else.i.i.i547.i:                               ; preds = %if.else.i532.i
  %sub4.i.i.i538.i = sub nsw i32 %conv.i.i529.i, %373
  %cur_bits5.i.i.i539.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %381 = load i32, i32* %cur_bits5.i.i.i539.i, align 4, !tbaa !45
  %shl7.i.i.i540.i = shl i32 %381, %373
  %shr.i.i.i541.i = lshr i32 %add.i.i527.i, %sub4.i.i.i538.i
  %or8.i.i.i542.i = or i32 %shl7.i.i.i540.i, %shr.i.i.i541.i
  %add5.i.i.i.i.i543.i = tail call i32 @llvm.bswap.i32(i32 %or8.i.i.i542.i) #6
  store i32 %add5.i.i.i.i.i543.i, i32* %372, align 4, !tbaa !44
  %382 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i.i545.i = getelementptr inbounds i8, i8* %382, i32 4
  store i8* %add.ptr.i.i.i545.i, i8** %p.i, align 4, !tbaa !40
  store i32 %add.i.i527.i, i32* %cur_bits5.i.i.i539.i, align 4, !tbaa !45
  %sub13.i.i.i546.i = sub nsw i32 32, %sub4.i.i.i538.i
  br label %bs_write_ue.exit.i549.i

bs_write_ue.exit.i549.i:                          ; preds = %if.else.i.i.i547.i, %if.then.i.i.i537.i
  %storemerge.i.i.i548.i = phi i32 [ %sub13.i.i.i546.i, %if.else.i.i.i547.i ], [ %sub.i.i.i536.i, %if.then.i.i.i537.i ]
  store i32 %storemerge.i.i.i548.i, i32* %i_left.i, align 4, !tbaa !42
  br label %if.end165.i

if.end165.i:                                      ; preds = %bs_write_ue.exit.i549.i, %if.then.i.i526.i, %if.then.i522.i, %if.end150.i
  %arrayidx167.i = getelementptr inbounds [2 x i8], [2 x i8]* %arraydecay.i726, i32 0, i32 0
  %383 = load i8, i8* %arrayidx167.i, align 1, !tbaa !44
  %tobool168.i = icmp eq i8 %383, 0
  br i1 %tobool168.i, label %if.end170.i, label %if.then169.i

if.then169.i:                                     ; preds = %if.end165.i
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 0, i32 0, i32 4) #6
  br label %if.end170.i

if.end170.i:                                      ; preds = %if.then169.i, %if.end165.i
  br i1 %tobool156.i, label %if.then174.i, label %if.end83

if.then174.i:                                     ; preds = %if.end170.i
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 1, i32 0, i32 4) #6
  br label %if.end83

if.else176.i:                                     ; preds = %bs_write_ue.exit478.i
  br i1 %tobool136.i, label %land.lhs.true178.i, label %if.end206.i

land.lhs.true178.i:                               ; preds = %if.else176.i
  %arrayidx180.i = getelementptr inbounds [2 x i8], [2 x i8]* %arraydecay.i726, i32 0, i32 0
  %384 = load i8, i8* %arrayidx180.i, align 1, !tbaa !44
  %tobool182.i = icmp eq i8 %384, 0
  br i1 %tobool182.i, label %land.lhs.true193.i, label %if.then183.i

if.then183.i:                                     ; preds = %land.lhs.true178.i
  %arrayidx189.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 0, i32 12
  %385 = load i8, i8* %arrayidx189.i, align 1, !tbaa !44
  %conv190.i = sext i8 %385 to i32
  %cmp.i551.i = icmp eq i32 %sub119.i, 1
  br i1 %cmp.i551.i, label %if.then.i558.i, label %if.else.i568.i

if.then.i558.i:                                   ; preds = %if.then183.i
  %cur_bits.i.i552.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %shl.i.i553.i = shl i32 %360, 1
  %386 = or i32 %shl.i.i553.i, %conv190.i
  %or.i.i554.i = xor i32 %386, 1
  store i32 %or.i.i554.i, i32* %cur_bits.i.i552.i, align 4, !tbaa !45
  %dec.i.i556.i = add nsw i32 %storemerge.i.i477.i, -1
  store i32 %dec.i.i556.i, i32* %i_left.i, align 4, !tbaa !42
  %cmp.i.i557.i = icmp eq i32 %dec.i.i556.i, 0
  br i1 %cmp.i.i557.i, label %if.then.i.i562.i, label %land.lhs.true193.i

if.then.i.i562.i:                                 ; preds = %if.then.i558.i
  %add5.i.i.i559.i = tail call i32 @llvm.bswap.i32(i32 %or.i.i554.i) #6
  store i32 %add5.i.i.i559.i, i32* %359, align 4, !tbaa !44
  %387 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i561.i = getelementptr inbounds i8, i8* %387, i32 4
  store i8* %add.ptr.i.i561.i, i8** %p.i, align 4, !tbaa !40
  store i32 32, i32* %i_left.i, align 4, !tbaa !42
  %388 = bitcast i8* %add.ptr.i.i561.i to i32*
  br label %land.lhs.true193.i

if.else.i568.i:                                   ; preds = %if.then183.i
  %add.i.i563.i = add nsw i32 %conv190.i, 1
  %arrayidx.i.i564.i = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %add.i.i563.i
  %389 = load i8, i8* %arrayidx.i.i564.i, align 1, !tbaa !44
  %conv.i.i565.i = zext i8 %389 to i32
  %cmp.i.i.i567.i = icmp sgt i32 %storemerge.i.i477.i, %conv.i.i565.i
  br i1 %cmp.i.i.i567.i, label %if.then.i.i.i573.i, label %if.else.i.i.i583.i

if.then.i.i.i573.i:                               ; preds = %if.else.i568.i
  %shl.i.i.i570.i = shl i32 %360, %conv.i.i565.i
  %or.i.i.i571.i = or i32 %shl.i.i.i570.i, %add.i.i563.i
  %sub.i.i.i572.i = sub nsw i32 %storemerge.i.i477.i, %conv.i.i565.i
  br label %bs_write_ue.exit.i585.i

if.else.i.i.i583.i:                               ; preds = %if.else.i568.i
  %sub4.i.i.i574.i = sub nsw i32 %conv.i.i565.i, %storemerge.i.i477.i
  %shl7.i.i.i576.i = shl i32 %360, %storemerge.i.i477.i
  %shr.i.i.i577.i = lshr i32 %add.i.i563.i, %sub4.i.i.i574.i
  %or8.i.i.i578.i = or i32 %shr.i.i.i577.i, %shl7.i.i.i576.i
  %add5.i.i.i.i.i579.i = tail call i32 @llvm.bswap.i32(i32 %or8.i.i.i578.i) #6
  store i32 %add5.i.i.i.i.i579.i, i32* %359, align 4, !tbaa !44
  %390 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i.i581.i = getelementptr inbounds i8, i8* %390, i32 4
  store i8* %add.ptr.i.i.i581.i, i8** %p.i, align 4, !tbaa !40
  %sub13.i.i.i582.i = sub nsw i32 32, %sub4.i.i.i574.i
  %391 = bitcast i8* %add.ptr.i.i.i581.i to i32*
  br label %bs_write_ue.exit.i585.i

bs_write_ue.exit.i585.i:                          ; preds = %if.else.i.i.i583.i, %if.then.i.i.i573.i
  %392 = phi i32* [ %359, %if.then.i.i.i573.i ], [ %391, %if.else.i.i.i583.i ]
  %add.i.i563.i.sink = phi i32 [ %or.i.i.i571.i, %if.then.i.i.i573.i ], [ %add.i.i563.i, %if.else.i.i.i583.i ]
  %storemerge.i.i.i584.i = phi i32 [ %sub.i.i.i572.i, %if.then.i.i.i573.i ], [ %sub13.i.i.i582.i, %if.else.i.i.i583.i ]
  %393 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  store i32 %add.i.i563.i.sink, i32* %393, align 4
  store i32 %storemerge.i.i.i584.i, i32* %i_left.i, align 4, !tbaa !42
  br label %land.lhs.true193.i

land.lhs.true193.i:                               ; preds = %bs_write_ue.exit.i585.i, %if.then.i.i562.i, %if.then.i558.i, %land.lhs.true178.i
  %394 = phi i32* [ %359, %land.lhs.true178.i ], [ %359, %if.then.i558.i ], [ %388, %if.then.i.i562.i ], [ %392, %bs_write_ue.exit.i585.i ]
  %395 = phi i32 [ %storemerge.i.i477.i, %land.lhs.true178.i ], [ %dec.i.i556.i, %if.then.i558.i ], [ 32, %if.then.i.i562.i ], [ %storemerge.i.i.i584.i, %bs_write_ue.exit.i585.i ]
  %396 = lshr i32 93520, %0
  %397 = and i32 %396, 1
  %tobool197.i = icmp eq i32 %397, 0
  br i1 %tobool197.i, label %if.end206.i, label %if.then198.i

if.then198.i:                                     ; preds = %land.lhs.true193.i
  %arrayidx204.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 0, i32 30
  %398 = load i8, i8* %arrayidx204.i, align 1, !tbaa !44
  %conv205.i = sext i8 %398 to i32
  %cmp.i587.i = icmp eq i32 %sub119.i, 1
  br i1 %cmp.i587.i, label %if.then.i594.i, label %if.else.i604.i

if.then.i594.i:                                   ; preds = %if.then198.i
  %cur_bits.i.i588.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %399 = load i32, i32* %cur_bits.i.i588.i, align 4, !tbaa !45
  %shl.i.i589.i = shl i32 %399, 1
  %400 = or i32 %shl.i.i589.i, %conv205.i
  %or.i.i590.i = xor i32 %400, 1
  store i32 %or.i.i590.i, i32* %cur_bits.i.i588.i, align 4, !tbaa !45
  %dec.i.i592.i = add nsw i32 %395, -1
  store i32 %dec.i.i592.i, i32* %i_left.i, align 4, !tbaa !42
  %cmp.i.i593.i = icmp eq i32 %dec.i.i592.i, 0
  br i1 %cmp.i.i593.i, label %if.then.i.i598.i, label %if.end206.i

if.then.i.i598.i:                                 ; preds = %if.then.i594.i
  %add5.i.i.i595.i = tail call i32 @llvm.bswap.i32(i32 %or.i.i590.i) #6
  store i32 %add5.i.i.i595.i, i32* %394, align 4, !tbaa !44
  %401 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i597.i = getelementptr inbounds i8, i8* %401, i32 4
  store i8* %add.ptr.i.i597.i, i8** %p.i, align 4, !tbaa !40
  store i32 32, i32* %i_left.i, align 4, !tbaa !42
  %402 = bitcast i8* %add.ptr.i.i597.i to i32*
  br label %if.end206.i

if.else.i604.i:                                   ; preds = %if.then198.i
  %add.i.i599.i = add nsw i32 %conv205.i, 1
  %arrayidx.i.i600.i = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %add.i.i599.i
  %403 = load i8, i8* %arrayidx.i.i600.i, align 1, !tbaa !44
  %conv.i.i601.i = zext i8 %403 to i32
  %cmp.i.i.i603.i = icmp sgt i32 %395, %conv.i.i601.i
  br i1 %cmp.i.i.i603.i, label %if.then.i.i.i609.i, label %if.else.i.i.i619.i

if.then.i.i.i609.i:                               ; preds = %if.else.i604.i
  %cur_bits.i.i.i605.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %404 = load i32, i32* %cur_bits.i.i.i605.i, align 4, !tbaa !45
  %shl.i.i.i606.i = shl i32 %404, %conv.i.i601.i
  %or.i.i.i607.i = or i32 %shl.i.i.i606.i, %add.i.i599.i
  store i32 %or.i.i.i607.i, i32* %cur_bits.i.i.i605.i, align 4, !tbaa !45
  %sub.i.i.i608.i = sub nsw i32 %395, %conv.i.i601.i
  br label %bs_write_ue.exit.i621.i

if.else.i.i.i619.i:                               ; preds = %if.else.i604.i
  %sub4.i.i.i610.i = sub nsw i32 %conv.i.i601.i, %395
  %cur_bits5.i.i.i611.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %405 = load i32, i32* %cur_bits5.i.i.i611.i, align 4, !tbaa !45
  %shl7.i.i.i612.i = shl i32 %405, %395
  %shr.i.i.i613.i = lshr i32 %add.i.i599.i, %sub4.i.i.i610.i
  %or8.i.i.i614.i = or i32 %shl7.i.i.i612.i, %shr.i.i.i613.i
  %add5.i.i.i.i.i615.i = tail call i32 @llvm.bswap.i32(i32 %or8.i.i.i614.i) #6
  store i32 %add5.i.i.i.i.i615.i, i32* %394, align 4, !tbaa !44
  %406 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i.i617.i = getelementptr inbounds i8, i8* %406, i32 4
  store i8* %add.ptr.i.i.i617.i, i8** %p.i, align 4, !tbaa !40
  store i32 %add.i.i599.i, i32* %cur_bits5.i.i.i611.i, align 4, !tbaa !45
  %sub13.i.i.i618.i = sub nsw i32 32, %sub4.i.i.i610.i
  %407 = bitcast i8* %add.ptr.i.i.i617.i to i32*
  br label %bs_write_ue.exit.i621.i

bs_write_ue.exit.i621.i:                          ; preds = %if.else.i.i.i619.i, %if.then.i.i.i609.i
  %408 = phi i32* [ %407, %if.else.i.i.i619.i ], [ %394, %if.then.i.i.i609.i ]
  %storemerge.i.i.i620.i = phi i32 [ %sub13.i.i.i618.i, %if.else.i.i.i619.i ], [ %sub.i.i.i608.i, %if.then.i.i.i609.i ]
  store i32 %storemerge.i.i.i620.i, i32* %i_left.i, align 4, !tbaa !42
  br label %if.end206.i

if.end206.i:                                      ; preds = %bs_write_ue.exit.i621.i, %if.then.i.i598.i, %if.then.i594.i, %land.lhs.true193.i, %if.else176.i
  %409 = phi i32* [ %408, %bs_write_ue.exit.i621.i ], [ %402, %if.then.i.i598.i ], [ %394, %if.then.i594.i ], [ %359, %if.else176.i ], [ %394, %land.lhs.true193.i ]
  %410 = phi i32 [ %storemerge.i.i.i620.i, %bs_write_ue.exit.i621.i ], [ 32, %if.then.i.i598.i ], [ %dec.i.i592.i, %if.then.i594.i ], [ %storemerge.i.i477.i, %if.else176.i ], [ %395, %land.lhs.true193.i ]
  %tobool207.i = icmp ne i32 %sub124.i, 0
  %411 = add nsw i32 %0, -11
  %tobool212.i = icmp ult i32 %411, 6
  %or.cond391.i = and i1 %tobool212.i, %tobool207.i
  br i1 %or.cond391.i, label %if.then213.i, label %if.end221.i

if.then213.i:                                     ; preds = %if.end206.i
  %arrayidx219.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 1, i32 12
  %412 = load i8, i8* %arrayidx219.i, align 1, !tbaa !44
  %conv220.i = sext i8 %412 to i32
  %cmp.i623.i = icmp eq i32 %sub124.i, 1
  br i1 %cmp.i623.i, label %if.then.i630.i, label %if.else.i640.i

if.then.i630.i:                                   ; preds = %if.then213.i
  %cur_bits.i.i624.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %413 = load i32, i32* %cur_bits.i.i624.i, align 4, !tbaa !45
  %shl.i.i625.i = shl i32 %413, 1
  %414 = or i32 %shl.i.i625.i, %conv220.i
  %or.i.i626.i = xor i32 %414, 1
  store i32 %or.i.i626.i, i32* %cur_bits.i.i624.i, align 4, !tbaa !45
  %dec.i.i628.i = add nsw i32 %410, -1
  store i32 %dec.i.i628.i, i32* %i_left.i, align 4, !tbaa !42
  %cmp.i.i629.i = icmp eq i32 %dec.i.i628.i, 0
  br i1 %cmp.i.i629.i, label %if.then.i.i634.i, label %if.end221.i

if.then.i.i634.i:                                 ; preds = %if.then.i630.i
  %add5.i.i.i631.i = tail call i32 @llvm.bswap.i32(i32 %or.i.i626.i) #6
  store i32 %add5.i.i.i631.i, i32* %409, align 4, !tbaa !44
  %415 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i633.i = getelementptr inbounds i8, i8* %415, i32 4
  store i8* %add.ptr.i.i633.i, i8** %p.i, align 4, !tbaa !40
  store i32 32, i32* %i_left.i, align 4, !tbaa !42
  %416 = bitcast i8* %add.ptr.i.i633.i to i32*
  br label %if.end221.i

if.else.i640.i:                                   ; preds = %if.then213.i
  %add.i.i635.i = add nsw i32 %conv220.i, 1
  %arrayidx.i.i636.i = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %add.i.i635.i
  %417 = load i8, i8* %arrayidx.i.i636.i, align 1, !tbaa !44
  %conv.i.i637.i = zext i8 %417 to i32
  %cmp.i.i.i639.i = icmp sgt i32 %410, %conv.i.i637.i
  br i1 %cmp.i.i.i639.i, label %if.then.i.i.i645.i, label %if.else.i.i.i655.i

if.then.i.i.i645.i:                               ; preds = %if.else.i640.i
  %cur_bits.i.i.i641.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %418 = load i32, i32* %cur_bits.i.i.i641.i, align 4, !tbaa !45
  %shl.i.i.i642.i = shl i32 %418, %conv.i.i637.i
  %or.i.i.i643.i = or i32 %shl.i.i.i642.i, %add.i.i635.i
  store i32 %or.i.i.i643.i, i32* %cur_bits.i.i.i641.i, align 4, !tbaa !45
  %sub.i.i.i644.i = sub nsw i32 %410, %conv.i.i637.i
  br label %bs_write_ue.exit.i657.i

if.else.i.i.i655.i:                               ; preds = %if.else.i640.i
  %sub4.i.i.i646.i = sub nsw i32 %conv.i.i637.i, %410
  %cur_bits5.i.i.i647.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %419 = load i32, i32* %cur_bits5.i.i.i647.i, align 4, !tbaa !45
  %shl7.i.i.i648.i = shl i32 %419, %410
  %shr.i.i.i649.i = lshr i32 %add.i.i635.i, %sub4.i.i.i646.i
  %or8.i.i.i650.i = or i32 %shl7.i.i.i648.i, %shr.i.i.i649.i
  %add5.i.i.i.i.i651.i = tail call i32 @llvm.bswap.i32(i32 %or8.i.i.i650.i) #6
  store i32 %add5.i.i.i.i.i651.i, i32* %409, align 4, !tbaa !44
  %420 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i.i653.i = getelementptr inbounds i8, i8* %420, i32 4
  store i8* %add.ptr.i.i.i653.i, i8** %p.i, align 4, !tbaa !40
  store i32 %add.i.i635.i, i32* %cur_bits5.i.i.i647.i, align 4, !tbaa !45
  %sub13.i.i.i654.i = sub nsw i32 32, %sub4.i.i.i646.i
  %421 = bitcast i8* %add.ptr.i.i.i653.i to i32*
  br label %bs_write_ue.exit.i657.i

bs_write_ue.exit.i657.i:                          ; preds = %if.else.i.i.i655.i, %if.then.i.i.i645.i
  %422 = phi i32* [ %421, %if.else.i.i.i655.i ], [ %409, %if.then.i.i.i645.i ]
  %storemerge.i.i.i656.i = phi i32 [ %sub13.i.i.i654.i, %if.else.i.i.i655.i ], [ %sub.i.i.i644.i, %if.then.i.i.i645.i ]
  store i32 %storemerge.i.i.i656.i, i32* %i_left.i, align 4, !tbaa !42
  br label %if.end221.i

if.end221.i:                                      ; preds = %bs_write_ue.exit.i657.i, %if.then.i.i634.i, %if.then.i630.i, %if.end206.i
  %423 = phi i32* [ %422, %bs_write_ue.exit.i657.i ], [ %416, %if.then.i.i634.i ], [ %409, %if.then.i630.i ], [ %409, %if.end206.i ]
  %424 = phi i32 [ %storemerge.i.i.i656.i, %bs_write_ue.exit.i657.i ], [ 32, %if.then.i.i634.i ], [ %dec.i.i628.i, %if.then.i630.i ], [ %410, %if.end206.i ]
  br i1 %tobool207.i, label %land.lhs.true223.i, label %if.end236.i

land.lhs.true223.i:                               ; preds = %if.end221.i
  %425 = lshr i32 112128, %0
  %426 = and i32 %425, 1
  %tobool227.i = icmp eq i32 %426, 0
  br i1 %tobool227.i, label %if.end236.i, label %if.then228.i

if.then228.i:                                     ; preds = %land.lhs.true223.i
  %arrayidx234.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 1, i32 30
  %427 = load i8, i8* %arrayidx234.i, align 1, !tbaa !44
  %conv235.i = sext i8 %427 to i32
  %cmp.i659.i = icmp eq i32 %sub124.i, 1
  br i1 %cmp.i659.i, label %if.then.i666.i, label %if.else.i676.i

if.then.i666.i:                                   ; preds = %if.then228.i
  %cur_bits.i.i660.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %428 = load i32, i32* %cur_bits.i.i660.i, align 4, !tbaa !45
  %shl.i.i661.i = shl i32 %428, 1
  %429 = or i32 %shl.i.i661.i, %conv235.i
  %or.i.i662.i = xor i32 %429, 1
  store i32 %or.i.i662.i, i32* %cur_bits.i.i660.i, align 4, !tbaa !45
  %dec.i.i664.i = add nsw i32 %424, -1
  store i32 %dec.i.i664.i, i32* %i_left.i, align 4, !tbaa !42
  %cmp.i.i665.i = icmp eq i32 %dec.i.i664.i, 0
  br i1 %cmp.i.i665.i, label %if.then.i.i670.i, label %if.end236.i

if.then.i.i670.i:                                 ; preds = %if.then.i666.i
  %add5.i.i.i667.i = tail call i32 @llvm.bswap.i32(i32 %or.i.i662.i) #6
  store i32 %add5.i.i.i667.i, i32* %423, align 4, !tbaa !44
  %430 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i669.i = getelementptr inbounds i8, i8* %430, i32 4
  store i8* %add.ptr.i.i669.i, i8** %p.i, align 4, !tbaa !40
  store i32 32, i32* %i_left.i, align 4, !tbaa !42
  br label %if.end236.i

if.else.i676.i:                                   ; preds = %if.then228.i
  %add.i.i671.i = add nsw i32 %conv235.i, 1
  %arrayidx.i.i672.i = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %add.i.i671.i
  %431 = load i8, i8* %arrayidx.i.i672.i, align 1, !tbaa !44
  %conv.i.i673.i = zext i8 %431 to i32
  %cmp.i.i.i675.i = icmp sgt i32 %424, %conv.i.i673.i
  br i1 %cmp.i.i.i675.i, label %if.then.i.i.i681.i, label %if.else.i.i.i691.i

if.then.i.i.i681.i:                               ; preds = %if.else.i676.i
  %cur_bits.i.i.i677.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %432 = load i32, i32* %cur_bits.i.i.i677.i, align 4, !tbaa !45
  %shl.i.i.i678.i = shl i32 %432, %conv.i.i673.i
  %or.i.i.i679.i = or i32 %shl.i.i.i678.i, %add.i.i671.i
  store i32 %or.i.i.i679.i, i32* %cur_bits.i.i.i677.i, align 4, !tbaa !45
  %sub.i.i.i680.i = sub nsw i32 %424, %conv.i.i673.i
  br label %bs_write_ue.exit.i693.i

if.else.i.i.i691.i:                               ; preds = %if.else.i676.i
  %sub4.i.i.i682.i = sub nsw i32 %conv.i.i673.i, %424
  %cur_bits5.i.i.i683.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %433 = load i32, i32* %cur_bits5.i.i.i683.i, align 4, !tbaa !45
  %shl7.i.i.i684.i = shl i32 %433, %424
  %shr.i.i.i685.i = lshr i32 %add.i.i671.i, %sub4.i.i.i682.i
  %or8.i.i.i686.i = or i32 %shl7.i.i.i684.i, %shr.i.i.i685.i
  %add5.i.i.i.i.i687.i = tail call i32 @llvm.bswap.i32(i32 %or8.i.i.i686.i) #6
  store i32 %add5.i.i.i.i.i687.i, i32* %423, align 4, !tbaa !44
  %434 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i.i689.i = getelementptr inbounds i8, i8* %434, i32 4
  store i8* %add.ptr.i.i.i689.i, i8** %p.i, align 4, !tbaa !40
  store i32 %add.i.i671.i, i32* %cur_bits5.i.i.i683.i, align 4, !tbaa !45
  %sub13.i.i.i690.i = sub nsw i32 32, %sub4.i.i.i682.i
  br label %bs_write_ue.exit.i693.i

bs_write_ue.exit.i693.i:                          ; preds = %if.else.i.i.i691.i, %if.then.i.i.i681.i
  %storemerge.i.i.i692.i = phi i32 [ %sub13.i.i.i690.i, %if.else.i.i.i691.i ], [ %sub.i.i.i680.i, %if.then.i.i.i681.i ]
  store i32 %storemerge.i.i.i692.i, i32* %i_left.i, align 4, !tbaa !42
  br label %if.end236.i

if.end236.i:                                      ; preds = %bs_write_ue.exit.i693.i, %if.then.i.i670.i, %if.then.i666.i, %land.lhs.true223.i, %if.end221.i
  %435 = load i32, i32* %i_partition.i727, align 4, !tbaa !51
  %cmp239.i = icmp eq i32 %435, 14
  %arrayidx243.i = getelementptr inbounds [2 x i8], [2 x i8]* %arraydecay.i726, i32 0, i32 0
  %436 = load i8, i8* %arrayidx243.i, align 1, !tbaa !44
  %tobool244.i = icmp ne i8 %436, 0
  br i1 %cmp239.i, label %if.then241.i, label %if.else262.i

if.then241.i:                                     ; preds = %if.end236.i
  br i1 %tobool244.i, label %if.then245.i, label %if.end246.i

if.then245.i:                                     ; preds = %if.then241.i
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 0, i32 0, i32 4) #6
  br label %if.end246.i

if.end246.i:                                      ; preds = %if.then245.i, %if.then241.i
  %437 = lshr i32 93520, %0
  %438 = and i32 %437, 1
  %tobool249.i = icmp eq i32 %438, 0
  br i1 %tobool249.i, label %if.end251.i, label %if.then250.i

if.then250.i:                                     ; preds = %if.end246.i
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 0, i32 8, i32 4) #6
  br label %if.end251.i

if.end251.i:                                      ; preds = %if.then250.i, %if.end246.i
  %tobool254.i = icmp ugt i32 %411, 5
  br i1 %tobool254.i, label %if.end256.i, label %if.then255.i

if.then255.i:                                     ; preds = %if.end251.i
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 1, i32 0, i32 4) #6
  br label %if.end256.i

if.end256.i:                                      ; preds = %if.then255.i, %if.end251.i
  %439 = lshr i32 112128, %0
  %440 = and i32 %439, 1
  %tobool259.i = icmp eq i32 %440, 0
  br i1 %tobool259.i, label %if.end83, label %if.then260.i

if.then260.i:                                     ; preds = %if.end256.i
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 1, i32 8, i32 4) #6
  br label %if.end83

if.else262.i:                                     ; preds = %if.end236.i
  br i1 %tobool244.i, label %if.then266.i, label %if.end267.i

if.then266.i:                                     ; preds = %if.else262.i
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 0, i32 0, i32 2) #6
  br label %if.end267.i

if.end267.i:                                      ; preds = %if.then266.i, %if.else262.i
  %441 = lshr i32 93520, %0
  %442 = and i32 %441, 1
  %tobool270.i = icmp eq i32 %442, 0
  br i1 %tobool270.i, label %if.end272.i, label %if.then271.i

if.then271.i:                                     ; preds = %if.end267.i
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 0, i32 4, i32 2) #6
  br label %if.end272.i

if.end272.i:                                      ; preds = %if.then271.i, %if.end267.i
  %tobool275.i = icmp ugt i32 %411, 5
  br i1 %tobool275.i, label %if.end277.i, label %if.then276.i

if.then276.i:                                     ; preds = %if.end272.i
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 1, i32 0, i32 2) #6
  br label %if.end277.i

if.end277.i:                                      ; preds = %if.then276.i, %if.end272.i
  %443 = lshr i32 112128, %0
  %444 = and i32 %443, 1
  %tobool280.i = icmp eq i32 %444, 0
  br i1 %tobool280.i, label %if.end83, label %if.then281.i

if.then281.i:                                     ; preds = %if.end277.i
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 1, i32 4, i32 2) #6
  br label %if.end83

if.else285.i:                                     ; preds = %if.else.i725
  %cmp286.i = icmp eq i32 %0, 7
  br i1 %cmp286.i, label %if.then288.i, label %if.else289.i

if.then288.i:                                     ; preds = %if.else285.i
  %cur_bits.i.i729 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %445 = load i32, i32* %cur_bits.i.i729, align 4, !tbaa !45
  %shl.i.i730 = shl i32 %445, 1
  %or.i.i731 = or i32 %shl.i.i730, 1
  store i32 %or.i.i731, i32* %cur_bits.i.i729, align 4, !tbaa !45
  %dec.i.i733 = add nsw i32 %8, -1
  store i32 %dec.i.i733, i32* %i_left.i, align 4, !tbaa !42
  %cmp.i.i734 = icmp eq i32 %dec.i.i733, 0
  br i1 %cmp.i.i734, label %if.then.i.i738, label %if.end83

if.then.i.i738:                                   ; preds = %if.then288.i
  %add5.i.i.i735 = tail call i32 @llvm.bswap.i32(i32 %or.i.i731) #6
  store i32 %add5.i.i.i735, i32* %10, align 4, !tbaa !44
  %446 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i737 = getelementptr inbounds i8, i8* %446, i32 4
  store i8* %add.ptr.i.i737, i8** %p.i, align 4, !tbaa !40
  store i32 32, i32* %i_left.i, align 4, !tbaa !42
  br label %if.end83

if.else289.i:                                     ; preds = %if.else285.i
  tail call fastcc void @cavlc_mb_header_i(%struct.x264_t* nonnull %h, i32 %0, i32 23, i32 %lor.ext) #6
  br label %if.end83

if.then103.1.i:                                   ; preds = %for.inc106.i
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 1, i32 4, i32 2) #6
  br label %for.inc106.1.i

for.inc106.1.i:                                   ; preds = %if.then103.1.i, %for.inc106.i
  %447 = load i8, i8* %arrayidx.2.i745, align 1, !tbaa !44
  %idxprom100.2.i = zext i8 %447 to i32
  %arrayidx101.2.i = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 1, i32 %idxprom100.2.i
  %448 = load i8, i8* %arrayidx101.2.i, align 1, !tbaa !44
  %tobool102.2.i = icmp eq i8 %448, 0
  br i1 %tobool102.2.i, label %for.inc106.2.i, label %if.then103.2.i

if.then103.2.i:                                   ; preds = %for.inc106.1.i
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 1, i32 8, i32 2) #6
  br label %for.inc106.2.i

for.inc106.2.i:                                   ; preds = %if.then103.2.i, %for.inc106.1.i
  %449 = load i8, i8* %arrayidx.3.i751, align 1, !tbaa !44
  %idxprom100.3.i = zext i8 %449 to i32
  %arrayidx101.3.i = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 1, i32 %idxprom100.3.i
  %450 = load i8, i8* %arrayidx101.3.i, align 1, !tbaa !44
  %tobool102.3.i = icmp eq i8 %450, 0
  br i1 %tobool102.3.i, label %if.end83, label %if.then103.3.i

if.then103.3.i:                                   ; preds = %for.inc106.2.i
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 1, i32 12, i32 2) #6
  br label %if.end83

if.then85.1.i:                                    ; preds = %for.inc88.i
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 0, i32 4, i32 2) #6
  br label %for.inc88.1.i

for.inc88.1.i:                                    ; preds = %if.then85.1.i, %for.inc88.i
  %451 = load i8, i8* %arrayidx.2.i745, align 1, !tbaa !44
  %idxprom82.2.i = zext i8 %451 to i32
  %arrayidx83.2.i = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 0, i32 %idxprom82.2.i
  %452 = load i8, i8* %arrayidx83.2.i, align 1, !tbaa !44
  %tobool84.2.i = icmp eq i8 %452, 0
  br i1 %tobool84.2.i, label %for.inc88.2.i, label %if.then85.2.i

if.then85.2.i:                                    ; preds = %for.inc88.1.i
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 0, i32 8, i32 2) #6
  br label %for.inc88.2.i

for.inc88.2.i:                                    ; preds = %if.then85.2.i, %for.inc88.1.i
  %453 = load i8, i8* %arrayidx.3.i751, align 1, !tbaa !44
  %idxprom82.3.i = zext i8 %453 to i32
  %arrayidx83.3.i = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 0, i32 %idxprom82.3.i
  %454 = load i8, i8* %arrayidx83.3.i, align 1, !tbaa !44
  %tobool84.3.i = icmp eq i8 %454, 0
  br i1 %tobool84.3.i, label %for.inc88.3.i, label %if.then85.3.i

if.then85.3.i:                                    ; preds = %for.inc88.2.i
  tail call fastcc void @cavlc_mvd(%struct.x264_t* nonnull %h, i32 0, i32 12, i32 2) #6
  br label %for.inc88.3.i

for.inc88.3.i:                                    ; preds = %if.then85.3.i, %for.inc88.2.i
  %455 = load i8, i8* %arrayidx.i690, align 1, !tbaa !44
  %idxprom100.i = zext i8 %455 to i32
  %arrayidx101.i = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 1, i32 %idxprom100.i
  %456 = load i8, i8* %arrayidx101.i, align 1, !tbaa !44
  %tobool102.i = icmp eq i8 %456, 0
  br i1 %tobool102.i, label %for.inc106.i, label %if.then103.i

if.then53.1.i:                                    ; preds = %for.inc69.i
  %457 = load i32, i32* %arrayidx37.i, align 4, !tbaa !52
  %arrayidx66.1.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 1, i32 14
  %458 = load i8, i8* %arrayidx66.1.i, align 1, !tbaa !44
  %conv67.1.i = sext i8 %458 to i32
  %cmp.i421.1.i = icmp eq i32 %457, 2
  br i1 %cmp.i421.1.i, label %if.then.i428.1.i, label %if.else.i438.1.i

if.else.i438.1.i:                                 ; preds = %if.then53.1.i
  %add.i.i433.1.i = add nsw i32 %conv67.1.i, 1
  %arrayidx.i.i434.1.i = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %add.i.i433.1.i
  %459 = load i8, i8* %arrayidx.i.i434.1.i, align 1, !tbaa !44
  %conv.i.i435.1.i = zext i8 %459 to i32
  %cmp.i.i.i437.1.i = icmp sgt i32 %340, %conv.i.i435.1.i
  br i1 %cmp.i.i.i437.1.i, label %if.then.i.i.i443.1.i, label %if.else.i.i.i453.1.i

if.else.i.i.i453.1.i:                             ; preds = %if.else.i438.1.i
  %sub4.i.i.i444.1.i = sub nsw i32 %conv.i.i435.1.i, %340
  %460 = load i32, i32* %cur_bits5.i.i400.i, align 4, !tbaa !45
  %shl7.i.i.i446.1.i = shl i32 %460, %340
  %shr.i.i.i447.1.i = lshr i32 %add.i.i433.1.i, %sub4.i.i.i444.1.i
  %or8.i.i.i448.1.i = or i32 %shl7.i.i.i446.1.i, %shr.i.i.i447.1.i
  %add5.i.i.i.i.i449.1.i = tail call i32 @llvm.bswap.i32(i32 %or8.i.i.i448.1.i) #6
  store i32 %add5.i.i.i.i.i449.1.i, i32* %339, align 4, !tbaa !44
  %461 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i.i451.1.i = getelementptr inbounds i8, i8* %461, i32 4
  store i8* %add.ptr.i.i.i451.1.i, i8** %p.i, align 4, !tbaa !40
  store i32 %add.i.i433.1.i, i32* %cur_bits5.i.i400.i, align 4, !tbaa !45
  %sub13.i.i.i452.1.i = sub nsw i32 32, %sub4.i.i.i444.1.i
  %462 = bitcast i8* %add.ptr.i.i.i451.1.i to i32*
  br label %bs_write_ue.exit.i455.1.i

if.then.i.i.i443.1.i:                             ; preds = %if.else.i438.1.i
  %463 = load i32, i32* %cur_bits5.i.i400.i, align 4, !tbaa !45
  %shl.i.i.i440.1.i = shl i32 %463, %conv.i.i435.1.i
  %or.i.i.i441.1.i = or i32 %shl.i.i.i440.1.i, %add.i.i433.1.i
  store i32 %or.i.i.i441.1.i, i32* %cur_bits5.i.i400.i, align 4, !tbaa !45
  %sub.i.i.i442.1.i = sub nsw i32 %340, %conv.i.i435.1.i
  br label %bs_write_ue.exit.i455.1.i

bs_write_ue.exit.i455.1.i:                        ; preds = %if.then.i.i.i443.1.i, %if.else.i.i.i453.1.i
  %464 = phi i32* [ %462, %if.else.i.i.i453.1.i ], [ %339, %if.then.i.i.i443.1.i ]
  %storemerge.i.i.i454.1.i = phi i32 [ %sub13.i.i.i452.1.i, %if.else.i.i.i453.1.i ], [ %sub.i.i.i442.1.i, %if.then.i.i.i443.1.i ]
  store i32 %storemerge.i.i.i454.1.i, i32* %i_left.i, align 4, !tbaa !42
  br label %for.inc69.1.i

if.then.i428.1.i:                                 ; preds = %if.then53.1.i
  %465 = load i32, i32* %cur_bits5.i.i400.i, align 4, !tbaa !45
  %shl.i.i423.1.i = shl i32 %465, 1
  %466 = or i32 %shl.i.i423.1.i, %conv67.1.i
  %or.i.i424.1.i = xor i32 %466, 1
  store i32 %or.i.i424.1.i, i32* %cur_bits5.i.i400.i, align 4, !tbaa !45
  %dec.i.i426.1.i = add nsw i32 %340, -1
  store i32 %dec.i.i426.1.i, i32* %i_left.i, align 4, !tbaa !42
  %cmp.i.i427.1.i = icmp eq i32 %dec.i.i426.1.i, 0
  br i1 %cmp.i.i427.1.i, label %if.then.i.i432.1.i, label %for.inc69.1.i

if.then.i.i432.1.i:                               ; preds = %if.then.i428.1.i
  %add5.i.i.i429.1.i = tail call i32 @llvm.bswap.i32(i32 %or.i.i424.1.i) #6
  store i32 %add5.i.i.i429.1.i, i32* %339, align 4, !tbaa !44
  %467 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i431.1.i = getelementptr inbounds i8, i8* %467, i32 4
  store i8* %add.ptr.i.i431.1.i, i8** %p.i, align 4, !tbaa !40
  store i32 32, i32* %i_left.i, align 4, !tbaa !42
  %468 = bitcast i8* %add.ptr.i.i431.1.i to i32*
  br label %for.inc69.1.i

for.inc69.1.i:                                    ; preds = %if.then.i.i432.1.i, %if.then.i428.1.i, %bs_write_ue.exit.i455.1.i, %for.inc69.i
  %469 = phi i32* [ %468, %if.then.i.i432.1.i ], [ %339, %if.then.i428.1.i ], [ %464, %bs_write_ue.exit.i455.1.i ], [ %339, %for.inc69.i ]
  %470 = phi i32 [ 32, %if.then.i.i432.1.i ], [ %dec.i.i426.1.i, %if.then.i428.1.i ], [ %storemerge.i.i.i454.1.i, %bs_write_ue.exit.i455.1.i ], [ %340, %for.inc69.i ]
  %471 = load i8, i8* %arrayidx.2.i745, align 1, !tbaa !44
  %idxprom50.2.i = zext i8 %471 to i32
  %arrayidx51.2.i = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 1, i32 %idxprom50.2.i
  %472 = load i8, i8* %arrayidx51.2.i, align 1, !tbaa !44
  %tobool52.2.i = icmp eq i8 %472, 0
  br i1 %tobool52.2.i, label %for.inc69.2.i, label %if.then53.2.i

if.then53.2.i:                                    ; preds = %for.inc69.1.i
  %473 = load i32, i32* %arrayidx37.i, align 4, !tbaa !52
  %arrayidx66.2.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 1, i32 28
  %474 = load i8, i8* %arrayidx66.2.i, align 1, !tbaa !44
  %conv67.2.i = sext i8 %474 to i32
  %cmp.i421.2.i = icmp eq i32 %473, 2
  br i1 %cmp.i421.2.i, label %if.then.i428.2.i, label %if.else.i438.2.i

if.else.i438.2.i:                                 ; preds = %if.then53.2.i
  %add.i.i433.2.i = add nsw i32 %conv67.2.i, 1
  %arrayidx.i.i434.2.i = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %add.i.i433.2.i
  %475 = load i8, i8* %arrayidx.i.i434.2.i, align 1, !tbaa !44
  %conv.i.i435.2.i = zext i8 %475 to i32
  %cmp.i.i.i437.2.i = icmp sgt i32 %470, %conv.i.i435.2.i
  br i1 %cmp.i.i.i437.2.i, label %if.then.i.i.i443.2.i, label %if.else.i.i.i453.2.i

if.else.i.i.i453.2.i:                             ; preds = %if.else.i438.2.i
  %sub4.i.i.i444.2.i = sub nsw i32 %conv.i.i435.2.i, %470
  %476 = load i32, i32* %cur_bits5.i.i400.i, align 4, !tbaa !45
  %shl7.i.i.i446.2.i = shl i32 %476, %470
  %shr.i.i.i447.2.i = lshr i32 %add.i.i433.2.i, %sub4.i.i.i444.2.i
  %or8.i.i.i448.2.i = or i32 %shl7.i.i.i446.2.i, %shr.i.i.i447.2.i
  %add5.i.i.i.i.i449.2.i = tail call i32 @llvm.bswap.i32(i32 %or8.i.i.i448.2.i) #6
  store i32 %add5.i.i.i.i.i449.2.i, i32* %469, align 4, !tbaa !44
  %477 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i.i451.2.i = getelementptr inbounds i8, i8* %477, i32 4
  store i8* %add.ptr.i.i.i451.2.i, i8** %p.i, align 4, !tbaa !40
  store i32 %add.i.i433.2.i, i32* %cur_bits5.i.i400.i, align 4, !tbaa !45
  %sub13.i.i.i452.2.i = sub nsw i32 32, %sub4.i.i.i444.2.i
  %478 = bitcast i8* %add.ptr.i.i.i451.2.i to i32*
  br label %bs_write_ue.exit.i455.2.i

if.then.i.i.i443.2.i:                             ; preds = %if.else.i438.2.i
  %479 = load i32, i32* %cur_bits5.i.i400.i, align 4, !tbaa !45
  %shl.i.i.i440.2.i = shl i32 %479, %conv.i.i435.2.i
  %or.i.i.i441.2.i = or i32 %shl.i.i.i440.2.i, %add.i.i433.2.i
  store i32 %or.i.i.i441.2.i, i32* %cur_bits5.i.i400.i, align 4, !tbaa !45
  %sub.i.i.i442.2.i = sub nsw i32 %470, %conv.i.i435.2.i
  br label %bs_write_ue.exit.i455.2.i

bs_write_ue.exit.i455.2.i:                        ; preds = %if.then.i.i.i443.2.i, %if.else.i.i.i453.2.i
  %480 = phi i32* [ %478, %if.else.i.i.i453.2.i ], [ %469, %if.then.i.i.i443.2.i ]
  %storemerge.i.i.i454.2.i = phi i32 [ %sub13.i.i.i452.2.i, %if.else.i.i.i453.2.i ], [ %sub.i.i.i442.2.i, %if.then.i.i.i443.2.i ]
  store i32 %storemerge.i.i.i454.2.i, i32* %i_left.i, align 4, !tbaa !42
  br label %for.inc69.2.i

if.then.i428.2.i:                                 ; preds = %if.then53.2.i
  %481 = load i32, i32* %cur_bits5.i.i400.i, align 4, !tbaa !45
  %shl.i.i423.2.i = shl i32 %481, 1
  %482 = or i32 %shl.i.i423.2.i, %conv67.2.i
  %or.i.i424.2.i = xor i32 %482, 1
  store i32 %or.i.i424.2.i, i32* %cur_bits5.i.i400.i, align 4, !tbaa !45
  %dec.i.i426.2.i = add nsw i32 %470, -1
  store i32 %dec.i.i426.2.i, i32* %i_left.i, align 4, !tbaa !42
  %cmp.i.i427.2.i = icmp eq i32 %dec.i.i426.2.i, 0
  br i1 %cmp.i.i427.2.i, label %if.then.i.i432.2.i, label %for.inc69.2.i

if.then.i.i432.2.i:                               ; preds = %if.then.i428.2.i
  %add5.i.i.i429.2.i = tail call i32 @llvm.bswap.i32(i32 %or.i.i424.2.i) #6
  store i32 %add5.i.i.i429.2.i, i32* %469, align 4, !tbaa !44
  %483 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i431.2.i = getelementptr inbounds i8, i8* %483, i32 4
  store i8* %add.ptr.i.i431.2.i, i8** %p.i, align 4, !tbaa !40
  store i32 32, i32* %i_left.i, align 4, !tbaa !42
  %484 = bitcast i8* %add.ptr.i.i431.2.i to i32*
  br label %for.inc69.2.i

for.inc69.2.i:                                    ; preds = %if.then.i.i432.2.i, %if.then.i428.2.i, %bs_write_ue.exit.i455.2.i, %for.inc69.1.i
  %485 = phi i32* [ %484, %if.then.i.i432.2.i ], [ %469, %if.then.i428.2.i ], [ %480, %bs_write_ue.exit.i455.2.i ], [ %469, %for.inc69.1.i ]
  %486 = phi i32 [ 32, %if.then.i.i432.2.i ], [ %dec.i.i426.2.i, %if.then.i428.2.i ], [ %storemerge.i.i.i454.2.i, %bs_write_ue.exit.i455.2.i ], [ %470, %for.inc69.1.i ]
  %487 = load i8, i8* %arrayidx.3.i751, align 1, !tbaa !44
  %idxprom50.3.i = zext i8 %487 to i32
  %arrayidx51.3.i = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 1, i32 %idxprom50.3.i
  %488 = load i8, i8* %arrayidx51.3.i, align 1, !tbaa !44
  %tobool52.3.i = icmp eq i8 %488, 0
  br i1 %tobool52.3.i, label %if.end72.i, label %if.then53.3.i

if.then53.3.i:                                    ; preds = %for.inc69.2.i
  %489 = load i32, i32* %arrayidx37.i, align 4, !tbaa !52
  %arrayidx66.3.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 1, i32 30
  %490 = load i8, i8* %arrayidx66.3.i, align 1, !tbaa !44
  %conv67.3.i = sext i8 %490 to i32
  %cmp.i421.3.i = icmp eq i32 %489, 2
  br i1 %cmp.i421.3.i, label %if.then.i428.3.i, label %if.else.i438.3.i

if.else.i438.3.i:                                 ; preds = %if.then53.3.i
  %add.i.i433.3.i = add nsw i32 %conv67.3.i, 1
  %arrayidx.i.i434.3.i = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %add.i.i433.3.i
  %491 = load i8, i8* %arrayidx.i.i434.3.i, align 1, !tbaa !44
  %conv.i.i435.3.i = zext i8 %491 to i32
  %cmp.i.i.i437.3.i = icmp sgt i32 %486, %conv.i.i435.3.i
  br i1 %cmp.i.i.i437.3.i, label %if.then.i.i.i443.3.i, label %if.else.i.i.i453.3.i

if.else.i.i.i453.3.i:                             ; preds = %if.else.i438.3.i
  %sub4.i.i.i444.3.i = sub nsw i32 %conv.i.i435.3.i, %486
  %492 = load i32, i32* %cur_bits5.i.i400.i, align 4, !tbaa !45
  %shl7.i.i.i446.3.i = shl i32 %492, %486
  %shr.i.i.i447.3.i = lshr i32 %add.i.i433.3.i, %sub4.i.i.i444.3.i
  %or8.i.i.i448.3.i = or i32 %shl7.i.i.i446.3.i, %shr.i.i.i447.3.i
  %add5.i.i.i.i.i449.3.i = tail call i32 @llvm.bswap.i32(i32 %or8.i.i.i448.3.i) #6
  store i32 %add5.i.i.i.i.i449.3.i, i32* %485, align 4, !tbaa !44
  %493 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i.i451.3.i = getelementptr inbounds i8, i8* %493, i32 4
  store i8* %add.ptr.i.i.i451.3.i, i8** %p.i, align 4, !tbaa !40
  store i32 %add.i.i433.3.i, i32* %cur_bits5.i.i400.i, align 4, !tbaa !45
  %sub13.i.i.i452.3.i = sub nsw i32 32, %sub4.i.i.i444.3.i
  br label %bs_write_ue.exit.i455.3.i

if.then.i.i.i443.3.i:                             ; preds = %if.else.i438.3.i
  %494 = load i32, i32* %cur_bits5.i.i400.i, align 4, !tbaa !45
  %shl.i.i.i440.3.i = shl i32 %494, %conv.i.i435.3.i
  %or.i.i.i441.3.i = or i32 %shl.i.i.i440.3.i, %add.i.i433.3.i
  store i32 %or.i.i.i441.3.i, i32* %cur_bits5.i.i400.i, align 4, !tbaa !45
  %sub.i.i.i442.3.i = sub nsw i32 %486, %conv.i.i435.3.i
  br label %bs_write_ue.exit.i455.3.i

bs_write_ue.exit.i455.3.i:                        ; preds = %if.then.i.i.i443.3.i, %if.else.i.i.i453.3.i
  %storemerge.i.i.i454.3.i = phi i32 [ %sub13.i.i.i452.3.i, %if.else.i.i.i453.3.i ], [ %sub.i.i.i442.3.i, %if.then.i.i.i443.3.i ]
  store i32 %storemerge.i.i.i454.3.i, i32* %i_left.i, align 4, !tbaa !42
  br label %if.end72.i

if.then.i428.3.i:                                 ; preds = %if.then53.3.i
  %495 = load i32, i32* %cur_bits5.i.i400.i, align 4, !tbaa !45
  %shl.i.i423.3.i = shl i32 %495, 1
  %496 = or i32 %shl.i.i423.3.i, %conv67.3.i
  %or.i.i424.3.i = xor i32 %496, 1
  store i32 %or.i.i424.3.i, i32* %cur_bits5.i.i400.i, align 4, !tbaa !45
  %dec.i.i426.3.i = add nsw i32 %486, -1
  store i32 %dec.i.i426.3.i, i32* %i_left.i, align 4, !tbaa !42
  %cmp.i.i427.3.i = icmp eq i32 %dec.i.i426.3.i, 0
  br i1 %cmp.i.i427.3.i, label %if.then.i.i432.3.i, label %if.end72.i

if.then.i.i432.3.i:                               ; preds = %if.then.i428.3.i
  %add5.i.i.i429.3.i = tail call i32 @llvm.bswap.i32(i32 %or.i.i424.3.i) #6
  store i32 %add5.i.i.i429.3.i, i32* %485, align 4, !tbaa !44
  %497 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i431.3.i = getelementptr inbounds i8, i8* %497, i32 4
  store i8* %add.ptr.i.i431.3.i, i8** %p.i, align 4, !tbaa !40
  store i32 32, i32* %i_left.i, align 4, !tbaa !42
  br label %if.end72.i

if.then19.1.i:                                    ; preds = %for.inc30.i
  %498 = load i32, i32* %arrayidx4.i, align 4, !tbaa !52
  %arrayidx28.1.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 0, i32 14
  %499 = load i8, i8* %arrayidx28.1.i, align 1, !tbaa !44
  %conv29.1.i = sext i8 %499 to i32
  %cmp.i411.1.i = icmp eq i32 %498, 2
  br i1 %cmp.i411.1.i, label %if.then.i417.1.i, label %if.else.i.1.i739

if.else.i.1.i739:                                 ; preds = %if.then19.1.i
  %add.i.i.1.i = add nsw i32 %conv29.1.i, 1
  %arrayidx.i.i.1.i = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %add.i.i.1.i
  %500 = load i8, i8* %arrayidx.i.i.1.i, align 1, !tbaa !44
  %conv.i.i.1.i = zext i8 %500 to i32
  %cmp.i.i.i.1.i = icmp sgt i32 %320, %conv.i.i.1.i
  br i1 %cmp.i.i.i.1.i, label %if.then.i.i.i.1.i, label %if.else.i.i.i.1.i

if.else.i.i.i.1.i:                                ; preds = %if.else.i.1.i739
  %sub4.i.i.i.1.i = sub nsw i32 %conv.i.i.1.i, %320
  %501 = load i32, i32* %cur_bits5.i.i400.i, align 4, !tbaa !45
  %shl7.i.i.i.1.i = shl i32 %501, %320
  %shr.i.i.i.1.i = lshr i32 %add.i.i.1.i, %sub4.i.i.i.1.i
  %or8.i.i.i.1.i = or i32 %shl7.i.i.i.1.i, %shr.i.i.i.1.i
  %add5.i.i.i.i.i.1.i = tail call i32 @llvm.bswap.i32(i32 %or8.i.i.i.1.i) #6
  store i32 %add5.i.i.i.i.i.1.i, i32* %319, align 4, !tbaa !44
  %502 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i.i.1.i = getelementptr inbounds i8, i8* %502, i32 4
  store i8* %add.ptr.i.i.i.1.i, i8** %p.i, align 4, !tbaa !40
  store i32 %add.i.i.1.i, i32* %cur_bits5.i.i400.i, align 4, !tbaa !45
  %sub13.i.i.i.1.i = sub nsw i32 32, %sub4.i.i.i.1.i
  %503 = bitcast i8* %add.ptr.i.i.i.1.i to i32*
  br label %bs_write_ue.exit.i.1.i

if.then.i.i.i.1.i:                                ; preds = %if.else.i.1.i739
  %504 = load i32, i32* %cur_bits5.i.i400.i, align 4, !tbaa !45
  %shl.i.i.i.1.i = shl i32 %504, %conv.i.i.1.i
  %or.i.i.i.1.i = or i32 %shl.i.i.i.1.i, %add.i.i.1.i
  store i32 %or.i.i.i.1.i, i32* %cur_bits5.i.i400.i, align 4, !tbaa !45
  %sub.i.i.i.1.i = sub nsw i32 %320, %conv.i.i.1.i
  br label %bs_write_ue.exit.i.1.i

bs_write_ue.exit.i.1.i:                           ; preds = %if.then.i.i.i.1.i, %if.else.i.i.i.1.i
  %505 = phi i32* [ %503, %if.else.i.i.i.1.i ], [ %319, %if.then.i.i.i.1.i ]
  %storemerge.i.i.i.1.i = phi i32 [ %sub13.i.i.i.1.i, %if.else.i.i.i.1.i ], [ %sub.i.i.i.1.i, %if.then.i.i.i.1.i ]
  store i32 %storemerge.i.i.i.1.i, i32* %i_left.i, align 4, !tbaa !42
  br label %for.inc30.1.i

if.then.i417.1.i:                                 ; preds = %if.then19.1.i
  %506 = load i32, i32* %cur_bits5.i.i400.i, align 4, !tbaa !45
  %shl.i.i413.1.i = shl i32 %506, 1
  %507 = or i32 %shl.i.i413.1.i, %conv29.1.i
  %or.i.i414.1.i = xor i32 %507, 1
  store i32 %or.i.i414.1.i, i32* %cur_bits5.i.i400.i, align 4, !tbaa !45
  %dec.i.i.1.i = add nsw i32 %320, -1
  store i32 %dec.i.i.1.i, i32* %i_left.i, align 4, !tbaa !42
  %cmp.i.i416.1.i = icmp eq i32 %dec.i.i.1.i, 0
  br i1 %cmp.i.i416.1.i, label %if.then.i.i420.1.i, label %for.inc30.1.i

if.then.i.i420.1.i:                               ; preds = %if.then.i417.1.i
  %add5.i.i.i.1.i740 = tail call i32 @llvm.bswap.i32(i32 %or.i.i414.1.i) #6
  store i32 %add5.i.i.i.1.i740, i32* %319, align 4, !tbaa !44
  %508 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i419.1.i = getelementptr inbounds i8, i8* %508, i32 4
  store i8* %add.ptr.i.i419.1.i, i8** %p.i, align 4, !tbaa !40
  store i32 32, i32* %i_left.i, align 4, !tbaa !42
  %509 = bitcast i8* %add.ptr.i.i419.1.i to i32*
  br label %for.inc30.1.i

for.inc30.1.i:                                    ; preds = %if.then.i.i420.1.i, %if.then.i417.1.i, %bs_write_ue.exit.i.1.i, %for.inc30.i
  %510 = phi i32* [ %509, %if.then.i.i420.1.i ], [ %319, %if.then.i417.1.i ], [ %505, %bs_write_ue.exit.i.1.i ], [ %319, %for.inc30.i ]
  %511 = phi i32 [ 32, %if.then.i.i420.1.i ], [ %dec.i.i.1.i, %if.then.i417.1.i ], [ %storemerge.i.i.i.1.i, %bs_write_ue.exit.i.1.i ], [ %320, %for.inc30.i ]
  %512 = load i8, i8* %arrayidx.2.i745, align 1, !tbaa !44
  %idxprom17.2.i = zext i8 %512 to i32
  %arrayidx18.2.i = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 0, i32 %idxprom17.2.i
  %513 = load i8, i8* %arrayidx18.2.i, align 1, !tbaa !44
  %tobool.2.i = icmp eq i8 %513, 0
  br i1 %tobool.2.i, label %for.inc30.2.i, label %if.then19.2.i

if.then19.2.i:                                    ; preds = %for.inc30.1.i
  %514 = load i32, i32* %arrayidx4.i, align 4, !tbaa !52
  %arrayidx28.2.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 0, i32 28
  %515 = load i8, i8* %arrayidx28.2.i, align 1, !tbaa !44
  %conv29.2.i = sext i8 %515 to i32
  %cmp.i411.2.i = icmp eq i32 %514, 2
  br i1 %cmp.i411.2.i, label %if.then.i417.2.i, label %if.else.i.2.i741

if.else.i.2.i741:                                 ; preds = %if.then19.2.i
  %add.i.i.2.i = add nsw i32 %conv29.2.i, 1
  %arrayidx.i.i.2.i = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %add.i.i.2.i
  %516 = load i8, i8* %arrayidx.i.i.2.i, align 1, !tbaa !44
  %conv.i.i.2.i = zext i8 %516 to i32
  %cmp.i.i.i.2.i = icmp sgt i32 %511, %conv.i.i.2.i
  br i1 %cmp.i.i.i.2.i, label %if.then.i.i.i.2.i, label %if.else.i.i.i.2.i

if.else.i.i.i.2.i:                                ; preds = %if.else.i.2.i741
  %sub4.i.i.i.2.i = sub nsw i32 %conv.i.i.2.i, %511
  %517 = load i32, i32* %cur_bits5.i.i400.i, align 4, !tbaa !45
  %shl7.i.i.i.2.i = shl i32 %517, %511
  %shr.i.i.i.2.i = lshr i32 %add.i.i.2.i, %sub4.i.i.i.2.i
  %or8.i.i.i.2.i = or i32 %shl7.i.i.i.2.i, %shr.i.i.i.2.i
  %add5.i.i.i.i.i.2.i = tail call i32 @llvm.bswap.i32(i32 %or8.i.i.i.2.i) #6
  store i32 %add5.i.i.i.i.i.2.i, i32* %510, align 4, !tbaa !44
  %518 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i.i.2.i = getelementptr inbounds i8, i8* %518, i32 4
  store i8* %add.ptr.i.i.i.2.i, i8** %p.i, align 4, !tbaa !40
  store i32 %add.i.i.2.i, i32* %cur_bits5.i.i400.i, align 4, !tbaa !45
  %sub13.i.i.i.2.i = sub nsw i32 32, %sub4.i.i.i.2.i
  %519 = bitcast i8* %add.ptr.i.i.i.2.i to i32*
  br label %bs_write_ue.exit.i.2.i

if.then.i.i.i.2.i:                                ; preds = %if.else.i.2.i741
  %520 = load i32, i32* %cur_bits5.i.i400.i, align 4, !tbaa !45
  %shl.i.i.i.2.i = shl i32 %520, %conv.i.i.2.i
  %or.i.i.i.2.i = or i32 %shl.i.i.i.2.i, %add.i.i.2.i
  store i32 %or.i.i.i.2.i, i32* %cur_bits5.i.i400.i, align 4, !tbaa !45
  %sub.i.i.i.2.i = sub nsw i32 %511, %conv.i.i.2.i
  br label %bs_write_ue.exit.i.2.i

bs_write_ue.exit.i.2.i:                           ; preds = %if.then.i.i.i.2.i, %if.else.i.i.i.2.i
  %521 = phi i32* [ %519, %if.else.i.i.i.2.i ], [ %510, %if.then.i.i.i.2.i ]
  %storemerge.i.i.i.2.i = phi i32 [ %sub13.i.i.i.2.i, %if.else.i.i.i.2.i ], [ %sub.i.i.i.2.i, %if.then.i.i.i.2.i ]
  store i32 %storemerge.i.i.i.2.i, i32* %i_left.i, align 4, !tbaa !42
  br label %for.inc30.2.i

if.then.i417.2.i:                                 ; preds = %if.then19.2.i
  %522 = load i32, i32* %cur_bits5.i.i400.i, align 4, !tbaa !45
  %shl.i.i413.2.i = shl i32 %522, 1
  %523 = or i32 %shl.i.i413.2.i, %conv29.2.i
  %or.i.i414.2.i = xor i32 %523, 1
  store i32 %or.i.i414.2.i, i32* %cur_bits5.i.i400.i, align 4, !tbaa !45
  %dec.i.i.2.i = add nsw i32 %511, -1
  store i32 %dec.i.i.2.i, i32* %i_left.i, align 4, !tbaa !42
  %cmp.i.i416.2.i = icmp eq i32 %dec.i.i.2.i, 0
  br i1 %cmp.i.i416.2.i, label %if.then.i.i420.2.i, label %for.inc30.2.i

if.then.i.i420.2.i:                               ; preds = %if.then.i417.2.i
  %add5.i.i.i.2.i742 = tail call i32 @llvm.bswap.i32(i32 %or.i.i414.2.i) #6
  store i32 %add5.i.i.i.2.i742, i32* %510, align 4, !tbaa !44
  %524 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i419.2.i = getelementptr inbounds i8, i8* %524, i32 4
  store i8* %add.ptr.i.i419.2.i, i8** %p.i, align 4, !tbaa !40
  store i32 32, i32* %i_left.i, align 4, !tbaa !42
  %525 = bitcast i8* %add.ptr.i.i419.2.i to i32*
  br label %for.inc30.2.i

for.inc30.2.i:                                    ; preds = %if.then.i.i420.2.i, %if.then.i417.2.i, %bs_write_ue.exit.i.2.i, %for.inc30.1.i
  %526 = phi i32* [ %525, %if.then.i.i420.2.i ], [ %510, %if.then.i417.2.i ], [ %521, %bs_write_ue.exit.i.2.i ], [ %510, %for.inc30.1.i ]
  %527 = phi i32 [ 32, %if.then.i.i420.2.i ], [ %dec.i.i.2.i, %if.then.i417.2.i ], [ %storemerge.i.i.i.2.i, %bs_write_ue.exit.i.2.i ], [ %511, %for.inc30.1.i ]
  %528 = load i8, i8* %arrayidx.3.i751, align 1, !tbaa !44
  %idxprom17.3.i = zext i8 %528 to i32
  %arrayidx18.3.i = getelementptr inbounds [2 x [17 x i8]], [2 x [17 x i8]]* @x264_mb_partition_listX_table, i32 0, i32 0, i32 %idxprom17.3.i
  %529 = load i8, i8* %arrayidx18.3.i, align 1, !tbaa !44
  %tobool.3.i = icmp eq i8 %529, 0
  br i1 %tobool.3.i, label %if.end33.i, label %if.then19.3.i

if.then19.3.i:                                    ; preds = %for.inc30.2.i
  %530 = load i32, i32* %arrayidx4.i, align 4, !tbaa !52
  %arrayidx28.3.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 0, i32 30
  %531 = load i8, i8* %arrayidx28.3.i, align 1, !tbaa !44
  %conv29.3.i = sext i8 %531 to i32
  %cmp.i411.3.i = icmp eq i32 %530, 2
  br i1 %cmp.i411.3.i, label %if.then.i417.3.i, label %if.else.i.3.i743

if.else.i.3.i743:                                 ; preds = %if.then19.3.i
  %add.i.i.3.i = add nsw i32 %conv29.3.i, 1
  %arrayidx.i.i.3.i = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %add.i.i.3.i
  %532 = load i8, i8* %arrayidx.i.i.3.i, align 1, !tbaa !44
  %conv.i.i.3.i = zext i8 %532 to i32
  %cmp.i.i.i.3.i = icmp sgt i32 %527, %conv.i.i.3.i
  br i1 %cmp.i.i.i.3.i, label %if.then.i.i.i.3.i, label %if.else.i.i.i.3.i

if.else.i.i.i.3.i:                                ; preds = %if.else.i.3.i743
  %sub4.i.i.i.3.i = sub nsw i32 %conv.i.i.3.i, %527
  %533 = load i32, i32* %cur_bits5.i.i400.i, align 4, !tbaa !45
  %shl7.i.i.i.3.i = shl i32 %533, %527
  %shr.i.i.i.3.i = lshr i32 %add.i.i.3.i, %sub4.i.i.i.3.i
  %or8.i.i.i.3.i = or i32 %shl7.i.i.i.3.i, %shr.i.i.i.3.i
  %add5.i.i.i.i.i.3.i = tail call i32 @llvm.bswap.i32(i32 %or8.i.i.i.3.i) #6
  store i32 %add5.i.i.i.i.i.3.i, i32* %526, align 4, !tbaa !44
  %534 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i.i.3.i = getelementptr inbounds i8, i8* %534, i32 4
  store i8* %add.ptr.i.i.i.3.i, i8** %p.i, align 4, !tbaa !40
  store i32 %add.i.i.3.i, i32* %cur_bits5.i.i400.i, align 4, !tbaa !45
  %sub13.i.i.i.3.i = sub nsw i32 32, %sub4.i.i.i.3.i
  %535 = bitcast i8* %add.ptr.i.i.i.3.i to i32*
  br label %bs_write_ue.exit.i.3.i

if.then.i.i.i.3.i:                                ; preds = %if.else.i.3.i743
  %536 = load i32, i32* %cur_bits5.i.i400.i, align 4, !tbaa !45
  %shl.i.i.i.3.i = shl i32 %536, %conv.i.i.3.i
  %or.i.i.i.3.i = or i32 %shl.i.i.i.3.i, %add.i.i.3.i
  store i32 %or.i.i.i.3.i, i32* %cur_bits5.i.i400.i, align 4, !tbaa !45
  %sub.i.i.i.3.i = sub nsw i32 %527, %conv.i.i.3.i
  br label %bs_write_ue.exit.i.3.i

bs_write_ue.exit.i.3.i:                           ; preds = %if.then.i.i.i.3.i, %if.else.i.i.i.3.i
  %537 = phi i32* [ %535, %if.else.i.i.i.3.i ], [ %526, %if.then.i.i.i.3.i ]
  %storemerge.i.i.i.3.i = phi i32 [ %sub13.i.i.i.3.i, %if.else.i.i.i.3.i ], [ %sub.i.i.i.3.i, %if.then.i.i.i.3.i ]
  store i32 %storemerge.i.i.i.3.i, i32* %i_left.i, align 4, !tbaa !42
  br label %if.end33.i

if.then.i417.3.i:                                 ; preds = %if.then19.3.i
  %538 = load i32, i32* %cur_bits5.i.i400.i, align 4, !tbaa !45
  %shl.i.i413.3.i = shl i32 %538, 1
  %539 = or i32 %shl.i.i413.3.i, %conv29.3.i
  %or.i.i414.3.i = xor i32 %539, 1
  store i32 %or.i.i414.3.i, i32* %cur_bits5.i.i400.i, align 4, !tbaa !45
  %dec.i.i.3.i = add nsw i32 %527, -1
  store i32 %dec.i.i.3.i, i32* %i_left.i, align 4, !tbaa !42
  %cmp.i.i416.3.i = icmp eq i32 %dec.i.i.3.i, 0
  br i1 %cmp.i.i416.3.i, label %if.then.i.i420.3.i, label %if.end33.i

if.then.i.i420.3.i:                               ; preds = %if.then.i417.3.i
  %add5.i.i.i.3.i744 = tail call i32 @llvm.bswap.i32(i32 %or.i.i414.3.i) #6
  store i32 %add5.i.i.i.3.i744, i32* %526, align 4, !tbaa !44
  %540 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i419.3.i = getelementptr inbounds i8, i8* %540, i32 4
  store i8* %add.ptr.i.i419.3.i, i8** %p.i, align 4, !tbaa !40
  store i32 32, i32* %i_left.i, align 4, !tbaa !42
  %541 = bitcast i8* %add.ptr.i.i419.3.i to i32*
  br label %if.end33.i

if.else.i.i408.1.i:                               ; preds = %bs_write_ue.exit410.i
  %sub4.i.i399.1.i = sub nsw i32 %conv.i.1.i703, %storemerge.i.i409.i
  %shl7.i.i401.1.i = shl i32 %307, %storemerge.i.i409.i
  %shr.i.i402.1.i = lshr i32 %add.i.1.i701, %sub4.i.i399.1.i
  %or8.i.i403.1.i = or i32 %shr.i.i402.1.i, %shl7.i.i401.1.i
  %add5.i.i.i.i404.1.i = tail call i32 @llvm.bswap.i32(i32 %or8.i.i403.1.i) #6
  store i32 %add5.i.i.i.i404.1.i, i32* %306, align 4, !tbaa !44
  %542 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i406.1.i = getelementptr inbounds i8, i8* %542, i32 4
  store i8* %add.ptr.i.i406.1.i, i8** %p.i, align 4, !tbaa !40
  store i32 %add.i.1.i701, i32* %cur_bits5.i.i400.i, align 4, !tbaa !45
  %sub13.i.i407.1.i = sub nsw i32 32, %sub4.i.i399.1.i
  %543 = bitcast i8* %add.ptr.i.i406.1.i to i32*
  br label %bs_write_ue.exit410.1.i

if.then.i.i398.1.i:                               ; preds = %bs_write_ue.exit410.i
  %shl.i.i395.1.i = shl i32 %307, %conv.i.1.i703
  %or.i.i396.1.i = or i32 %shl.i.i395.1.i, %add.i.1.i701
  store i32 %or.i.i396.1.i, i32* %cur_bits5.i.i400.i, align 4, !tbaa !45
  %sub.i.i397.1.i = sub nsw i32 %storemerge.i.i409.i, %conv.i.1.i703
  br label %bs_write_ue.exit410.1.i

bs_write_ue.exit410.1.i:                          ; preds = %if.then.i.i398.1.i, %if.else.i.i408.1.i
  %544 = phi i32* [ %543, %if.else.i.i408.1.i ], [ %306, %if.then.i.i398.1.i ]
  %545 = phi i32 [ %add.i.1.i701, %if.else.i.i408.1.i ], [ %or.i.i396.1.i, %if.then.i.i398.1.i ]
  %storemerge.i.i409.1.i = phi i32 [ %sub13.i.i407.1.i, %if.else.i.i408.1.i ], [ %sub.i.i397.1.i, %if.then.i.i398.1.i ]
  store i32 %storemerge.i.i409.1.i, i32* %i_left.i, align 4, !tbaa !42
  %arrayidx.2.i745 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 78, i32 2
  %546 = load i8, i8* %arrayidx.2.i745, align 1, !tbaa !44
  %idxprom.2.i746 = zext i8 %546 to i32
  %arrayidx2.2.i = getelementptr inbounds [13 x i8], [13 x i8]* @subpartition_b_to_golomb, i32 0, i32 %idxprom.2.i746
  %547 = load i8, i8* %arrayidx2.2.i, align 1, !tbaa !44
  %conv.2.i747 = zext i8 %547 to i32
  %add.i.2.i748 = add nuw nsw i32 %conv.2.i747, 1
  %arrayidx.i.2.i749 = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %add.i.2.i748
  %548 = load i8, i8* %arrayidx.i.2.i749, align 1, !tbaa !44
  %conv.i.2.i750 = zext i8 %548 to i32
  %cmp.i.i393.2.i = icmp sgt i32 %storemerge.i.i409.1.i, %conv.i.2.i750
  br i1 %cmp.i.i393.2.i, label %if.then.i.i398.2.i, label %if.else.i.i408.2.i

if.else.i.i408.2.i:                               ; preds = %bs_write_ue.exit410.1.i
  %sub4.i.i399.2.i = sub nsw i32 %conv.i.2.i750, %storemerge.i.i409.1.i
  %shl7.i.i401.2.i = shl i32 %545, %storemerge.i.i409.1.i
  %shr.i.i402.2.i = lshr i32 %add.i.2.i748, %sub4.i.i399.2.i
  %or8.i.i403.2.i = or i32 %shr.i.i402.2.i, %shl7.i.i401.2.i
  %add5.i.i.i.i404.2.i = tail call i32 @llvm.bswap.i32(i32 %or8.i.i403.2.i) #6
  store i32 %add5.i.i.i.i404.2.i, i32* %544, align 4, !tbaa !44
  %549 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i406.2.i = getelementptr inbounds i8, i8* %549, i32 4
  store i8* %add.ptr.i.i406.2.i, i8** %p.i, align 4, !tbaa !40
  store i32 %add.i.2.i748, i32* %cur_bits5.i.i400.i, align 4, !tbaa !45
  %sub13.i.i407.2.i = sub nsw i32 32, %sub4.i.i399.2.i
  %550 = bitcast i8* %add.ptr.i.i406.2.i to i32*
  br label %bs_write_ue.exit410.2.i

if.then.i.i398.2.i:                               ; preds = %bs_write_ue.exit410.1.i
  %shl.i.i395.2.i = shl i32 %545, %conv.i.2.i750
  %or.i.i396.2.i = or i32 %shl.i.i395.2.i, %add.i.2.i748
  store i32 %or.i.i396.2.i, i32* %cur_bits5.i.i400.i, align 4, !tbaa !45
  %sub.i.i397.2.i = sub nsw i32 %storemerge.i.i409.1.i, %conv.i.2.i750
  br label %bs_write_ue.exit410.2.i

bs_write_ue.exit410.2.i:                          ; preds = %if.then.i.i398.2.i, %if.else.i.i408.2.i
  %551 = phi i32* [ %550, %if.else.i.i408.2.i ], [ %544, %if.then.i.i398.2.i ]
  %552 = phi i32 [ %add.i.2.i748, %if.else.i.i408.2.i ], [ %or.i.i396.2.i, %if.then.i.i398.2.i ]
  %storemerge.i.i409.2.i = phi i32 [ %sub13.i.i407.2.i, %if.else.i.i408.2.i ], [ %sub.i.i397.2.i, %if.then.i.i398.2.i ]
  store i32 %storemerge.i.i409.2.i, i32* %i_left.i, align 4, !tbaa !42
  %arrayidx.3.i751 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 78, i32 3
  %553 = load i8, i8* %arrayidx.3.i751, align 1, !tbaa !44
  %idxprom.3.i752 = zext i8 %553 to i32
  %arrayidx2.3.i = getelementptr inbounds [13 x i8], [13 x i8]* @subpartition_b_to_golomb, i32 0, i32 %idxprom.3.i752
  %554 = load i8, i8* %arrayidx2.3.i, align 1, !tbaa !44
  %conv.3.i753 = zext i8 %554 to i32
  %add.i.3.i754 = add nuw nsw i32 %conv.3.i753, 1
  %arrayidx.i.3.i755 = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %add.i.3.i754
  %555 = load i8, i8* %arrayidx.i.3.i755, align 1, !tbaa !44
  %conv.i.3.i756 = zext i8 %555 to i32
  %cmp.i.i393.3.i = icmp sgt i32 %storemerge.i.i409.2.i, %conv.i.3.i756
  br i1 %cmp.i.i393.3.i, label %if.then.i.i398.3.i, label %if.else.i.i408.3.i

if.else.i.i408.3.i:                               ; preds = %bs_write_ue.exit410.2.i
  %sub4.i.i399.3.i = sub nsw i32 %conv.i.3.i756, %storemerge.i.i409.2.i
  %shl7.i.i401.3.i = shl i32 %552, %storemerge.i.i409.2.i
  %shr.i.i402.3.i = lshr i32 %add.i.3.i754, %sub4.i.i399.3.i
  %or8.i.i403.3.i = or i32 %shr.i.i402.3.i, %shl7.i.i401.3.i
  %add5.i.i.i.i404.3.i = tail call i32 @llvm.bswap.i32(i32 %or8.i.i403.3.i) #6
  store i32 %add5.i.i.i.i404.3.i, i32* %551, align 4, !tbaa !44
  %556 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i406.3.i = getelementptr inbounds i8, i8* %556, i32 4
  store i8* %add.ptr.i.i406.3.i, i8** %p.i, align 4, !tbaa !40
  store i32 %add.i.3.i754, i32* %cur_bits5.i.i400.i, align 4, !tbaa !45
  %sub13.i.i407.3.i = sub nsw i32 32, %sub4.i.i399.3.i
  %557 = bitcast i8* %add.ptr.i.i406.3.i to i32*
  br label %bs_write_ue.exit410.3.i

if.then.i.i398.3.i:                               ; preds = %bs_write_ue.exit410.2.i
  %shl.i.i395.3.i = shl i32 %552, %conv.i.3.i756
  %or.i.i396.3.i = or i32 %shl.i.i395.3.i, %add.i.3.i754
  store i32 %or.i.i396.3.i, i32* %cur_bits5.i.i400.i, align 4, !tbaa !45
  %sub.i.i397.3.i = sub nsw i32 %storemerge.i.i409.2.i, %conv.i.3.i756
  br label %bs_write_ue.exit410.3.i

bs_write_ue.exit410.3.i:                          ; preds = %if.then.i.i398.3.i, %if.else.i.i408.3.i
  %558 = phi i32* [ %557, %if.else.i.i408.3.i ], [ %551, %if.then.i.i398.3.i ]
  %559 = phi i32 [ %add.i.3.i754, %if.else.i.i408.3.i ], [ %or.i.i396.3.i, %if.then.i.i398.3.i ]
  %560 = phi i32 [ %sub13.i.i407.3.i, %if.else.i.i408.3.i ], [ %sub.i.i397.3.i, %if.then.i.i398.3.i ]
  store i32 %560, i32* %i_left.i, align 4, !tbaa !42
  %arrayidx4.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 91, i32 17, i32 0
  %561 = load i32, i32* %arrayidx4.i, align 4, !tbaa !52
  %cmp5.i = icmp sgt i32 %561, 1
  br i1 %cmp5.i, label %for.cond9.preheader.i, label %if.end33.i

if.else81:                                        ; preds = %if.end70
  tail call fastcc void @cavlc_mb_header_i(%struct.x264_t* nonnull %h, i32 %0, i32 0, i32 %lor.ext)
  br label %if.end83

if.end83:                                         ; preds = %if.then103.3.i, %for.inc106.2.i, %if.else289.i, %if.then.i.i738, %if.then288.i, %if.then281.i, %if.end277.i, %if.then260.i, %if.end256.i, %if.then174.i, %if.end170.i, %sw.bb.i.3.i, %sw.bb1.i.3.i, %sw.bb5.i.3.i, %sw.bb10.i.3.i, %cavlc_8x8_mvd.exit.2.i, %if.else200.i, %if.end87.i, %if.end49.i, %if.end.i, %if.then.i642, %if.else81
  %562 = load i32, i32* %4, align 4, !tbaa !40
  %563 = load i32, i32* %6, align 4, !tbaa !41
  %sub.ptr.sub.i758 = sub i32 %562, %563
  %mul.i759 = shl i32 %sub.ptr.sub.i758, 3
  %564 = load i32, i32* %i_left.i, align 4, !tbaa !42
  %add.i761 = sub i32 32, %564
  %sub.i762 = add i32 %add.i761, %mul.i759
  %i_mv_bits88 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 72, i32 21, i32 0
  %565 = load i32, i32* %i_mv_bits88, align 8, !tbaa !46
  %sub85 = sub i32 %565, %sub.i
  %add89 = add i32 %sub85, %sub.i762
  store i32 %add89, i32* %i_mv_bits88, align 8, !tbaa !46
  %cmp90 = icmp eq i32 %0, 2
  %566 = inttoptr i32 %562 to i32*
  br i1 %cmp90, label %if.end111, label %if.then92

if.then92:                                        ; preds = %if.end83
  %567 = icmp ult i32 %0, 2
  %spec.select493 = zext i1 %567 to i32
  %i_cbp_chroma = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 81
  %568 = load i32, i32* %i_cbp_chroma, align 4, !tbaa !54
  %shl = shl i32 %568, 4
  %i_cbp_luma = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 80
  %569 = load i32, i32* %i_cbp_luma, align 32, !tbaa !55
  %or = or i32 %shl, %569
  %arrayidx109 = getelementptr inbounds [2 x [2 x [48 x i8]]], [2 x [2 x [48 x i8]]]* bitcast (<{ <{ <{ [16 x i8], [32 x i8] }>, <{ [15 x i8], [33 x i8] }> }>, [2 x [48 x i8]] }>* @cbp_to_golomb to [2 x [2 x [48 x i8]]]*), i32 0, i32 %lor.ext, i32 %spec.select493, i32 %or
  %570 = load i8, i8* %arrayidx109, align 1, !tbaa !44
  %conv110 = zext i8 %570 to i32
  %add.i763 = add nuw nsw i32 %conv110, 1
  %arrayidx.i764 = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %add.i763
  %571 = load i8, i8* %arrayidx.i764, align 1, !tbaa !44
  %conv.i765 = zext i8 %571 to i32
  %cmp.i.i767 = icmp sgt i32 %564, %conv.i765
  br i1 %cmp.i.i767, label %if.then.i.i772, label %if.else.i.i782

if.then.i.i772:                                   ; preds = %if.then92
  %cur_bits.i.i768 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %572 = load i32, i32* %cur_bits.i.i768, align 4, !tbaa !45
  %shl.i.i769 = shl i32 %572, %conv.i765
  %or.i.i770 = or i32 %shl.i.i769, %add.i763
  store i32 %or.i.i770, i32* %cur_bits.i.i768, align 4, !tbaa !45
  %sub.i.i771 = sub nsw i32 %564, %conv.i765
  br label %bs_write_ue.exit785

if.else.i.i782:                                   ; preds = %if.then92
  %sub4.i.i773 = sub nsw i32 %conv.i765, %564
  %cur_bits5.i.i774 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %573 = load i32, i32* %cur_bits5.i.i774, align 4, !tbaa !45
  %shl7.i.i775 = shl i32 %573, %564
  %shr.i.i776 = lshr i32 %add.i763, %sub4.i.i773
  %or8.i.i777 = or i32 %shl7.i.i775, %shr.i.i776
  %add5.i.i.i.i778 = tail call i32 @llvm.bswap.i32(i32 %or8.i.i777) #6
  store i32 %add5.i.i.i.i778, i32* %566, align 4, !tbaa !44
  %574 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i780 = getelementptr inbounds i8, i8* %574, i32 4
  store i8* %add.ptr.i.i780, i8** %p.i, align 4, !tbaa !40
  store i32 %add.i763, i32* %cur_bits5.i.i774, align 4, !tbaa !45
  %sub13.i.i781 = sub nsw i32 32, %sub4.i.i773
  %575 = bitcast i8* %add.ptr.i.i780 to i32*
  br label %bs_write_ue.exit785

bs_write_ue.exit785:                              ; preds = %if.then.i.i772, %if.else.i.i782
  %576 = phi i32* [ %575, %if.else.i.i782 ], [ %566, %if.then.i.i772 ]
  %storemerge.i.i783 = phi i32 [ %sub13.i.i781, %if.else.i.i782 ], [ %sub.i.i771, %if.then.i.i772 ]
  store i32 %storemerge.i.i783, i32* %i_left.i, align 4, !tbaa !42
  br label %if.end111

if.end111:                                        ; preds = %if.end83, %bs_write_ue.exit785
  %577 = phi i32* [ %566, %if.end83 ], [ %576, %bs_write_ue.exit785 ]
  %578 = phi i32 [ %564, %if.end83 ], [ %storemerge.i.i783, %bs_write_ue.exit785 ]
  %b_transform_8x8_mode.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 53, i32 0, i32 15
  %579 = load i32, i32* %b_transform_8x8_mode.i, align 4, !tbaa !56
  %tobool.i786 = icmp eq i32 %579, 0
  br i1 %tobool.i786, label %if.end119, label %if.end.i788

if.end.i788:                                      ; preds = %if.end111
  %580 = load i32, i32* %i_type, align 16, !tbaa !2
  %cmp.i787 = icmp eq i32 %580, 5
  br i1 %cmp.i787, label %if.end4.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i788
  %arrayidx.i789 = getelementptr inbounds [19 x i8], [19 x i8]* @x264_transform_allowed, i32 0, i32 %580
  %581 = load i8, i8* %arrayidx.i789, align 1, !tbaa !44
  %conv.i790 = zext i8 %581 to i32
  br label %x264_mb_transform_8x8_allowed.exit

if.end4.i:                                        ; preds = %if.end.i788
  %arraydecay6.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 78, i32 0
  %i.i = bitcast i8* %arraydecay6.i to i32*
  %582 = load i32, i32* %i.i, align 8, !tbaa !44
  %cmp7.i = icmp eq i32 %582, 50529027
  %conv8.i = zext i1 %cmp7.i to i32
  br label %x264_mb_transform_8x8_allowed.exit

x264_mb_transform_8x8_allowed.exit:               ; preds = %if.then1.i, %if.end4.i
  %retval.0.i = phi i32 [ %conv.i790, %if.then1.i ], [ %conv8.i, %if.end4.i ]
  %tobool113 = icmp eq i32 %retval.0.i, 0
  br i1 %tobool113, label %if.end119, label %land.lhs.true

land.lhs.true:                                    ; preds = %x264_mb_transform_8x8_allowed.exit
  %i_cbp_luma115 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 80
  %583 = load i32, i32* %i_cbp_luma115, align 32, !tbaa !55
  %tobool116 = icmp eq i32 %583, 0
  br i1 %tobool116, label %if.end119, label %if.then117

if.then117:                                       ; preds = %land.lhs.true
  %b_transform_8x8 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 79
  %584 = load i32, i32* %b_transform_8x8, align 4, !tbaa !58
  %cur_bits.i791 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %585 = load i32, i32* %cur_bits.i791, align 4, !tbaa !45
  %shl.i792 = shl i32 %585, 1
  %or.i793 = or i32 %shl.i792, %584
  store i32 %or.i793, i32* %cur_bits.i791, align 4, !tbaa !45
  %dec.i = add nsw i32 %578, -1
  store i32 %dec.i, i32* %i_left.i, align 4, !tbaa !42
  %cmp.i795 = icmp eq i32 %dec.i, 0
  br i1 %cmp.i795, label %if.then.i799, label %if.end119

if.then.i799:                                     ; preds = %if.then117
  %add5.i.i796 = tail call i32 @llvm.bswap.i32(i32 %or.i793) #6
  store i32 %add5.i.i796, i32* %577, align 4, !tbaa !44
  %586 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i798 = getelementptr inbounds i8, i8* %586, i32 4
  store i8* %add.ptr.i798, i8** %p.i, align 4, !tbaa !40
  store i32 32, i32* %i_left.i, align 4, !tbaa !42
  br label %if.end119

if.end119:                                        ; preds = %if.end111, %if.then.i799, %if.then117, %land.lhs.true, %x264_mb_transform_8x8_allowed.exit
  br i1 %cmp90, label %if.then122, label %if.else201

if.then122:                                       ; preds = %if.end119
  tail call fastcc void @cavlc_qp_delta(%struct.x264_t* %h)
  %cur_bits5.i822 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %587 = bitcast i8** %p.i to i32**
  %i_cbp_luma154 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 80
  br label %for.body128

for.body128:                                      ; preds = %for.inc198, %if.then122
  %indvars.iv = phi i32 [ 16, %if.then122 ], [ %indvars.iv.next, %for.inc198 ]
  %p123.0883 = phi i32 [ 0, %if.then122 ], [ %inc199, %for.inc198 ]
  %add129 = add nuw nsw i32 %p123.0883, 48
  %mul131 = shl nsw i32 %p123.0883, 4
  %arrayidx.i801 = getelementptr inbounds [51 x i8], [51 x i8]* @x264_scan8, i32 0, i32 %mul131
  %588 = load i8, i8* %arrayidx.i801, align 1, !tbaa !44
  %conv.i802 = zext i8 %588 to i32
  %sub.i803 = add nsw i32 %conv.i802, -1
  %arrayidx1.i804 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub.i803
  %589 = load i8, i8* %arrayidx1.i804, align 1, !tbaa !44
  %conv2.i805 = zext i8 %589 to i32
  %sub8.i806 = add nsw i32 %conv.i802, -8
  %arrayidx9.i807 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub8.i806
  %590 = load i8, i8* %arrayidx9.i807, align 1, !tbaa !44
  %conv10.i808 = zext i8 %590 to i32
  %add.i809 = add nuw nsw i32 %conv10.i808, %conv2.i805
  %cmp.i810 = icmp ult i32 %add.i809, 128
  %add12.i811 = add nuw nsw i32 %add.i809, 1
  %591 = lshr i32 %add12.i811, 1
  %i_ret.0.i812 = select i1 %cmp.i810, i32 %591, i32 %add.i809
  %and.i813 = and i32 %i_ret.0.i812, 127
  %arrayidx133 = getelementptr inbounds [17 x i8], [17 x i8]* @ct_index, i32 0, i32 %and.i813
  %592 = load i8, i8* %arrayidx133, align 1, !tbaa !44
  %conv134 = zext i8 %592 to i32
  %arrayidx137 = getelementptr inbounds [51 x i8], [51 x i8]* @x264_scan8, i32 0, i32 %add129
  %593 = load i8, i8* %arrayidx137, align 1, !tbaa !44
  %idxprom = zext i8 %593 to i32
  %arrayidx138 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %idxprom
  %594 = load i8, i8* %arrayidx138, align 1, !tbaa !44
  %tobool139 = icmp eq i8 %594, 0
  br i1 %tobool139, label %if.then140, label %if.else147

if.then140:                                       ; preds = %for.body128
  %i_size = getelementptr inbounds [6 x %struct.vlc_t], [6 x %struct.vlc_t]* @x264_coeff0_token, i32 0, i32 %conv134, i32 1
  %595 = load i8, i8* %i_size, align 1, !tbaa !59
  %conv144 = zext i8 %595 to i32
  %i_bits = getelementptr inbounds [6 x %struct.vlc_t], [6 x %struct.vlc_t]* @x264_coeff0_token, i32 0, i32 %conv134, i32 0
  %596 = load i8, i8* %i_bits, align 1, !tbaa !61
  %conv146 = zext i8 %596 to i32
  %597 = load i32, i32* %i_left.i, align 4, !tbaa !42
  %cmp.i815 = icmp sgt i32 %597, %conv144
  br i1 %cmp.i815, label %if.then.i820, label %if.else.i830

if.then.i820:                                     ; preds = %if.then140
  %598 = load i32, i32* %cur_bits5.i822, align 4, !tbaa !45
  %shl.i817 = shl i32 %598, %conv144
  %or.i818 = or i32 %shl.i817, %conv146
  store i32 %or.i818, i32* %cur_bits5.i822, align 4, !tbaa !45
  %sub.i819 = sub nsw i32 %597, %conv144
  br label %bs_write.exit833

if.else.i830:                                     ; preds = %if.then140
  %sub4.i821 = sub nsw i32 %conv144, %597
  %599 = load i32, i32* %cur_bits5.i822, align 4, !tbaa !45
  %shl7.i823 = shl i32 %599, %597
  %shr.i824 = lshr i32 %conv146, %sub4.i821
  %or8.i825 = or i32 %shl7.i823, %shr.i824
  %add5.i.i.i826 = tail call i32 @llvm.bswap.i32(i32 %or8.i825) #6
  %600 = load i32*, i32** %587, align 4, !tbaa !40
  store i32 %add5.i.i.i826, i32* %600, align 4, !tbaa !44
  %601 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i828 = getelementptr inbounds i8, i8* %601, i32 4
  store i8* %add.ptr.i828, i8** %p.i, align 4, !tbaa !40
  store i32 %conv146, i32* %cur_bits5.i822, align 4, !tbaa !45
  %sub13.i829 = sub nsw i32 32, %sub4.i821
  br label %bs_write.exit833

bs_write.exit833:                                 ; preds = %if.then.i820, %if.else.i830
  %storemerge.i831 = phi i32 [ %sub13.i829, %if.else.i830 ], [ %sub.i819, %if.then.i820 ]
  store i32 %storemerge.i831, i32* %i_left.i, align 4, !tbaa !42
  br label %if.end152

if.else147:                                       ; preds = %for.body128
  %arraydecay149 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 69, i32 0, i32 %p123.0883, i32 0
  %call150 = tail call fastcc i32 @cavlc_block_residual_internal(%struct.x264_t* nonnull %h, i32 0, i16* nonnull %arraydecay149, i32 %conv134)
  %conv151 = trunc i32 %call150 to i8
  store i8 %conv151, i8* %arrayidx138, align 1, !tbaa !44
  br label %if.end152

if.end152:                                        ; preds = %if.else147, %bs_write.exit833
  %602 = load i32, i32* %i_cbp_luma154, align 32, !tbaa !55
  %tobool155 = icmp eq i32 %602, 0
  br i1 %tobool155, label %for.inc198, label %for.body165

for.body165:                                      ; preds = %if.end152, %if.end193.for.body165_crit_edge
  %603 = phi i8 [ %.pre, %if.end193.for.body165_crit_edge ], [ %588, %if.end152 ]
  %i157.0881 = phi i32 [ %inc195, %if.end193.for.body165_crit_edge ], [ %mul131, %if.end152 ]
  %conv.i835 = zext i8 %603 to i32
  %sub.i836 = add nsw i32 %conv.i835, -1
  %arrayidx1.i837 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub.i836
  %604 = load i8, i8* %arrayidx1.i837, align 1, !tbaa !44
  %conv2.i838 = zext i8 %604 to i32
  %sub8.i839 = add nsw i32 %conv.i835, -8
  %arrayidx9.i840 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub8.i839
  %605 = load i8, i8* %arrayidx9.i840, align 1, !tbaa !44
  %conv10.i841 = zext i8 %605 to i32
  %add.i842 = add nuw nsw i32 %conv10.i841, %conv2.i838
  %cmp.i843 = icmp ult i32 %add.i842, 128
  %add12.i844 = add nuw nsw i32 %add.i842, 1
  %606 = lshr i32 %add12.i844, 1
  %i_ret.0.i845 = select i1 %cmp.i843, i32 %606, i32 %add.i842
  %and.i846 = and i32 %i_ret.0.i845, 127
  %arrayidx168 = getelementptr inbounds [17 x i8], [17 x i8]* @ct_index, i32 0, i32 %and.i846
  %607 = load i8, i8* %arrayidx168, align 1, !tbaa !44
  %conv169 = zext i8 %607 to i32
  %arrayidx176 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %conv.i835
  %608 = load i8, i8* %arrayidx176, align 1, !tbaa !44
  %tobool177 = icmp eq i8 %608, 0
  br i1 %tobool177, label %if.then178, label %if.else187

if.then178:                                       ; preds = %for.body165
  %i_size182 = getelementptr inbounds [6 x %struct.vlc_t], [6 x %struct.vlc_t]* @x264_coeff0_token, i32 0, i32 %conv169, i32 1
  %609 = load i8, i8* %i_size182, align 1, !tbaa !59
  %conv183 = zext i8 %609 to i32
  %i_bits185 = getelementptr inbounds [6 x %struct.vlc_t], [6 x %struct.vlc_t]* @x264_coeff0_token, i32 0, i32 %conv169, i32 0
  %610 = load i8, i8* %i_bits185, align 1, !tbaa !61
  %conv186 = zext i8 %610 to i32
  %611 = load i32, i32* %i_left.i, align 4, !tbaa !42
  %cmp.i848 = icmp sgt i32 %611, %conv183
  br i1 %cmp.i848, label %if.then.i853, label %if.else.i863

if.then.i853:                                     ; preds = %if.then178
  %612 = load i32, i32* %cur_bits5.i822, align 4, !tbaa !45
  %shl.i850 = shl i32 %612, %conv183
  %or.i851 = or i32 %shl.i850, %conv186
  store i32 %or.i851, i32* %cur_bits5.i822, align 4, !tbaa !45
  %sub.i852 = sub nsw i32 %611, %conv183
  br label %bs_write.exit866

if.else.i863:                                     ; preds = %if.then178
  %sub4.i854 = sub nsw i32 %conv183, %611
  %613 = load i32, i32* %cur_bits5.i822, align 4, !tbaa !45
  %shl7.i856 = shl i32 %613, %611
  %shr.i857 = lshr i32 %conv186, %sub4.i854
  %or8.i858 = or i32 %shl7.i856, %shr.i857
  %add5.i.i.i859 = tail call i32 @llvm.bswap.i32(i32 %or8.i858) #6
  %614 = load i32*, i32** %587, align 4, !tbaa !40
  store i32 %add5.i.i.i859, i32* %614, align 4, !tbaa !44
  %615 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i861 = getelementptr inbounds i8, i8* %615, i32 4
  store i8* %add.ptr.i861, i8** %p.i, align 4, !tbaa !40
  store i32 %conv186, i32* %cur_bits5.i822, align 4, !tbaa !45
  %sub13.i862 = sub nsw i32 32, %sub4.i854
  br label %bs_write.exit866

bs_write.exit866:                                 ; preds = %if.then.i853, %if.else.i863
  %storemerge.i864 = phi i32 [ %sub13.i862, %if.else.i863 ], [ %sub.i852, %if.then.i853 ]
  store i32 %storemerge.i864, i32* %i_left.i, align 4, !tbaa !42
  br label %if.end193

if.else187:                                       ; preds = %for.body165
  %add.ptr = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 69, i32 3, i32 %i157.0881, i32 1
  %call191 = tail call fastcc i32 @cavlc_block_residual_internal(%struct.x264_t* nonnull %h, i32 1, i16* nonnull %add.ptr, i32 %conv169)
  %conv192 = trunc i32 %call191 to i8
  store i8 %conv192, i8* %arrayidx176, align 1, !tbaa !44
  br label %if.end193

if.end193:                                        ; preds = %if.else187, %bs_write.exit866
  %inc195 = add nuw nsw i32 %i157.0881, 1
  %exitcond888 = icmp eq i32 %inc195, %indvars.iv
  br i1 %exitcond888, label %for.inc198, label %if.end193.for.body165_crit_edge

if.end193.for.body165_crit_edge:                  ; preds = %if.end193
  %arrayidx.i834.phi.trans.insert = getelementptr inbounds [51 x i8], [51 x i8]* @x264_scan8, i32 0, i32 %inc195
  %.pre = load i8, i8* %arrayidx.i834.phi.trans.insert, align 1, !tbaa !44
  br label %for.body165

for.inc198:                                       ; preds = %if.end193, %if.end152
  %inc199 = add nuw nsw i32 %p123.0883, 1
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 16
  %exitcond889 = icmp eq i32 %inc199, %cond
  br i1 %exitcond889, label %if.end210, label %for.body128

if.else201:                                       ; preds = %if.end119
  %i_cbp_luma203 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 80
  %616 = load i32, i32* %i_cbp_luma203, align 32, !tbaa !55
  %i_cbp_chroma205 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 81
  %617 = load i32, i32* %i_cbp_chroma205, align 4, !tbaa !54
  %or206 = or i32 %617, %616
  %tobool207 = icmp eq i32 %or206, 0
  br i1 %tobool207, label %if.end210, label %if.then208

if.then208:                                       ; preds = %if.else201
  tail call fastcc void @cavlc_qp_delta(%struct.x264_t* nonnull %h)
  %b_transform_8x8.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 79
  %618 = load i32, i32* %b_transform_8x8.i, align 4, !tbaa !58
  %tobool.i = icmp eq i32 %618, 0
  br i1 %tobool.i, label %if.end31.i, label %for.cond1.preheader.lr.ph.i

for.cond1.preheader.lr.ph.i:                      ; preds = %if.then208
  %interleave_8x8_cavlc.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 95, i32 5
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc.3.i, %for.cond1.preheader.lr.ph.i
  %p.0153.i = phi i32 [ 0, %for.cond1.preheader.lr.ph.i ], [ %inc29.i, %for.inc.3.i ]
  %mul.i566 = shl nsw i32 %p.0153.i, 4
  %mul15.i = shl i32 %p.0153.i, 2
  %arrayidx.i567 = getelementptr inbounds [51 x i8], [51 x i8]* @x264_scan8, i32 0, i32 %mul.i566
  %619 = load i8, i8* %arrayidx.i567, align 1, !tbaa !44
  %idxprom.i = zext i8 %619 to i32
  %arrayidx7.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %idxprom.i
  %620 = load i8, i8* %arrayidx7.i, align 1, !tbaa !44
  %tobool8.i = icmp eq i8 %620, 0
  br i1 %tobool8.i, label %for.inc.i, label %if.then9.i

if.then9.i:                                       ; preds = %for.cond1.preheader.i
  %621 = load void (i16*, i16*, i8*)*, void (i16*, i16*, i8*)** %interleave_8x8_cavlc.i, align 4, !tbaa !62
  %arraydecay.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 69, i32 3, i32 %mul.i566, i32 0
  %arraydecay18.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 69, i32 2, i32 %mul15.i, i32 0
  tail call void %621(i16* nonnull %arraydecay.i, i16* nonnull %arraydecay18.i, i8* nonnull %arrayidx7.i) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then9.i, %for.cond1.preheader.i
  %add.1.i = or i32 %mul.i566, 4
  %arrayidx.1.i = getelementptr inbounds [51 x i8], [51 x i8]* @x264_scan8, i32 0, i32 %add.1.i
  %622 = load i8, i8* %arrayidx.1.i, align 1, !tbaa !44
  %idxprom.1.i = zext i8 %622 to i32
  %arrayidx7.1.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %idxprom.1.i
  %623 = load i8, i8* %arrayidx7.1.i, align 1, !tbaa !44
  %tobool8.1.i = icmp eq i8 %623, 0
  br i1 %tobool8.1.i, label %for.inc.1.i, label %if.then9.1.i

if.end31.i:                                       ; preds = %for.inc.3.i, %if.then208
  %cur_bits5.i.i569 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %624 = bitcast i8** %p.i to i32**
  br label %for.body36.i

for.body36.i:                                     ; preds = %for.cond.cleanup43.critedge.i, %if.end31.i
  %p32.0148.i = phi i32 [ 0, %if.end31.i ], [ %inc89.i, %for.cond.cleanup43.critedge.i ]
  %625 = load i32, i32* %i_cbp_luma203, align 32, !tbaa !55
  %tobool40144.i = icmp eq i32 %625, 0
  br i1 %tobool40144.i, label %for.cond.cleanup43.critedge.i, label %land.rhs.lr.ph.i

land.rhs.lr.ph.i:                                 ; preds = %for.body36.i
  %mul51.i = shl nsw i32 %p32.0148.i, 4
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end81.3.i, %land.rhs.lr.ph.i
  %msk.0146.i = phi i32 [ %625, %land.rhs.lr.ph.i ], [ %shr.i588, %if.end81.3.i ]
  %i837.0145.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %inc86.i, %if.end81.3.i ]
  %arrayidx.i.i = getelementptr inbounds [16 x i8], [16 x i8]* @x264_ctz_4bit.lut, i32 0, i32 %msk.0146.i
  %626 = load i8, i8* %arrayidx.i.i, align 1, !tbaa !44
  %conv.i.i = zext i8 %626 to i32
  %add41.i = add nsw i32 %i837.0145.i, %conv.i.i
  %add42.i = add nuw nsw i32 %conv.i.i, 1
  %mul49.i = shl i32 %add41.i, 2
  %add50.i = add i32 %mul49.i, %mul51.i
  %arrayidx.i139.i = getelementptr inbounds [51 x i8], [51 x i8]* @x264_scan8, i32 0, i32 %add50.i
  %627 = load i8, i8* %arrayidx.i139.i, align 1, !tbaa !44
  %conv.i140.i = zext i8 %627 to i32
  %sub.i.i571 = add nsw i32 %conv.i140.i, -1
  %arrayidx1.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub.i.i571
  %628 = load i8, i8* %arrayidx1.i.i, align 1, !tbaa !44
  %conv2.i.i = zext i8 %628 to i32
  %sub8.i.i = add nsw i32 %conv.i140.i, -8
  %arrayidx9.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub8.i.i
  %629 = load i8, i8* %arrayidx9.i.i, align 1, !tbaa !44
  %conv10.i.i = zext i8 %629 to i32
  %add.i.i = add nuw nsw i32 %conv10.i.i, %conv2.i.i
  %cmp.i.i572 = icmp ult i32 %add.i.i, 128
  %add12.i.i = add nuw nsw i32 %add.i.i, 1
  %630 = lshr i32 %add12.i.i, 1
  %i_ret.0.i.i = select i1 %cmp.i.i572, i32 %630, i32 %add.i.i
  %and.i.i573 = and i32 %i_ret.0.i.i, 127
  %arrayidx54.i = getelementptr inbounds [17 x i8], [17 x i8]* @ct_index, i32 0, i32 %and.i.i573
  %631 = load i8, i8* %arrayidx54.i, align 1, !tbaa !44
  %conv.i574 = zext i8 %631 to i32
  %arrayidx64.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %conv.i140.i
  %632 = load i8, i8* %arrayidx64.i, align 1, !tbaa !44
  %tobool65.i = icmp eq i8 %632, 0
  br i1 %tobool65.i, label %if.then66.i, label %if.else.i587

for.cond.cleanup43.critedge.i:                    ; preds = %if.end81.3.i, %for.body36.i
  %inc89.i = add nuw nsw i32 %p32.0148.i, 1
  %exitcond.i = icmp eq i32 %inc89.i, %cond
  br i1 %exitcond.i, label %if.end210, label %for.body36.i

if.then66.i:                                      ; preds = %land.rhs.i
  %i_size.i = getelementptr inbounds [6 x %struct.vlc_t], [6 x %struct.vlc_t]* @x264_coeff0_token, i32 0, i32 %conv.i574, i32 1
  %633 = load i8, i8* %i_size.i, align 1, !tbaa !59
  %conv68.i = zext i8 %633 to i32
  %i_bits.i = getelementptr inbounds [6 x %struct.vlc_t], [6 x %struct.vlc_t]* @x264_coeff0_token, i32 0, i32 %conv.i574, i32 0
  %634 = load i8, i8* %i_bits.i, align 1, !tbaa !61
  %conv70.i = zext i8 %634 to i32
  %635 = load i32, i32* %i_left.i, align 4, !tbaa !42
  %cmp.i141.i = icmp sgt i32 %635, %conv68.i
  br i1 %cmp.i141.i, label %if.then.i.i577, label %if.else.i.i585

if.then.i.i577:                                   ; preds = %if.then66.i
  %636 = load i32, i32* %cur_bits5.i.i569, align 4, !tbaa !45
  %shl.i.i575 = shl i32 %636, %conv68.i
  %or.i.i576 = or i32 %shl.i.i575, %conv70.i
  store i32 %or.i.i576, i32* %cur_bits5.i.i569, align 4, !tbaa !45
  %sub.i142.i = sub nsw i32 %635, %conv68.i
  br label %bs_write.exit.i

if.else.i.i585:                                   ; preds = %if.then66.i
  %sub4.i.i578 = sub nsw i32 %conv68.i, %635
  %637 = load i32, i32* %cur_bits5.i.i569, align 4, !tbaa !45
  %shl7.i.i579 = shl i32 %637, %635
  %shr.i.i580 = lshr i32 %conv70.i, %sub4.i.i578
  %or8.i.i581 = or i32 %shl7.i.i579, %shr.i.i580
  %add5.i.i.i.i582 = tail call i32 @llvm.bswap.i32(i32 %or8.i.i581) #6
  %638 = load i32*, i32** %624, align 4, !tbaa !40
  store i32 %add5.i.i.i.i582, i32* %638, align 4, !tbaa !44
  %639 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.i583 = getelementptr inbounds i8, i8* %639, i32 4
  store i8* %add.ptr.i.i583, i8** %p.i, align 4, !tbaa !40
  store i32 %conv70.i, i32* %cur_bits5.i.i569, align 4, !tbaa !45
  %sub13.i.i584 = sub nsw i32 32, %sub4.i.i578
  br label %bs_write.exit.i

bs_write.exit.i:                                  ; preds = %if.else.i.i585, %if.then.i.i577
  %storemerge.i.i586 = phi i32 [ %sub13.i.i584, %if.else.i.i585 ], [ %sub.i142.i, %if.then.i.i577 ]
  store i32 %storemerge.i.i586, i32* %i_left.i, align 4, !tbaa !42
  br label %if.end81.i

if.else.i587:                                     ; preds = %land.rhs.i
  %arraydecay78.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 69, i32 3, i32 %add50.i, i32 0
  %call79.i = tail call fastcc i32 @cavlc_block_residual_internal(%struct.x264_t* nonnull %h, i32 2, i16* nonnull %arraydecay78.i, i32 %conv.i574) #6
  %conv80.i = trunc i32 %call79.i to i8
  store i8 %conv80.i, i8* %arrayidx64.i, align 1, !tbaa !44
  br label %if.end81.i

if.end81.i:                                       ; preds = %if.else.i587, %bs_write.exit.i
  %add52.1.i = or i32 %add50.i, 1
  %arrayidx.i139.1.i = getelementptr inbounds [51 x i8], [51 x i8]* @x264_scan8, i32 0, i32 %add52.1.i
  %640 = load i8, i8* %arrayidx.i139.1.i, align 1, !tbaa !44
  %conv.i140.1.i = zext i8 %640 to i32
  %sub.i.1.i = add nsw i32 %conv.i140.1.i, -1
  %arrayidx1.i.1.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub.i.1.i
  %641 = load i8, i8* %arrayidx1.i.1.i, align 1, !tbaa !44
  %conv2.i.1.i = zext i8 %641 to i32
  %sub8.i.1.i = add nsw i32 %conv.i140.1.i, -8
  %arrayidx9.i.1.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub8.i.1.i
  %642 = load i8, i8* %arrayidx9.i.1.i, align 1, !tbaa !44
  %conv10.i.1.i = zext i8 %642 to i32
  %add.i.1.i = add nuw nsw i32 %conv10.i.1.i, %conv2.i.1.i
  %cmp.i.1.i = icmp ult i32 %add.i.1.i, 128
  %add12.i.1.i = add nuw nsw i32 %add.i.1.i, 1
  %643 = lshr i32 %add12.i.1.i, 1
  %i_ret.0.i.1.i = select i1 %cmp.i.1.i, i32 %643, i32 %add.i.1.i
  %and.i.1.i = and i32 %i_ret.0.i.1.i, 127
  %arrayidx54.1.i = getelementptr inbounds [17 x i8], [17 x i8]* @ct_index, i32 0, i32 %and.i.1.i
  %644 = load i8, i8* %arrayidx54.1.i, align 1, !tbaa !44
  %conv.1.i = zext i8 %644 to i32
  %arrayidx64.1.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %conv.i140.1.i
  %645 = load i8, i8* %arrayidx64.1.i, align 1, !tbaa !44
  %tobool65.1.i = icmp eq i8 %645, 0
  br i1 %tobool65.1.i, label %if.then66.1.i, label %if.else.1.i

if.else.1.i:                                      ; preds = %if.end81.i
  %arraydecay78.1.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 69, i32 3, i32 %add52.1.i, i32 0
  %call79.1.i = tail call fastcc i32 @cavlc_block_residual_internal(%struct.x264_t* nonnull %h, i32 2, i16* nonnull %arraydecay78.1.i, i32 %conv.1.i) #6
  %conv80.1.i = trunc i32 %call79.1.i to i8
  store i8 %conv80.1.i, i8* %arrayidx64.1.i, align 1, !tbaa !44
  br label %if.end81.1.i

if.then66.1.i:                                    ; preds = %if.end81.i
  %i_size.1.i = getelementptr inbounds [6 x %struct.vlc_t], [6 x %struct.vlc_t]* @x264_coeff0_token, i32 0, i32 %conv.1.i, i32 1
  %646 = load i8, i8* %i_size.1.i, align 1, !tbaa !59
  %conv68.1.i = zext i8 %646 to i32
  %i_bits.1.i = getelementptr inbounds [6 x %struct.vlc_t], [6 x %struct.vlc_t]* @x264_coeff0_token, i32 0, i32 %conv.1.i, i32 0
  %647 = load i8, i8* %i_bits.1.i, align 1, !tbaa !61
  %conv70.1.i = zext i8 %647 to i32
  %648 = load i32, i32* %i_left.i, align 4, !tbaa !42
  %cmp.i141.1.i = icmp sgt i32 %648, %conv68.1.i
  br i1 %cmp.i141.1.i, label %if.then.i.1.i, label %if.else.i.1.i

if.else.i.1.i:                                    ; preds = %if.then66.1.i
  %sub4.i.1.i = sub nsw i32 %conv68.1.i, %648
  %649 = load i32, i32* %cur_bits5.i.i569, align 4, !tbaa !45
  %shl7.i.1.i = shl i32 %649, %648
  %shr.i.1.i = lshr i32 %conv70.1.i, %sub4.i.1.i
  %or8.i.1.i = or i32 %shl7.i.1.i, %shr.i.1.i
  %add5.i.i.i.1.i = tail call i32 @llvm.bswap.i32(i32 %or8.i.1.i) #6
  %650 = load i32*, i32** %624, align 4, !tbaa !40
  store i32 %add5.i.i.i.1.i, i32* %650, align 4, !tbaa !44
  %651 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.1.i = getelementptr inbounds i8, i8* %651, i32 4
  store i8* %add.ptr.i.1.i, i8** %p.i, align 4, !tbaa !40
  store i32 %conv70.1.i, i32* %cur_bits5.i.i569, align 4, !tbaa !45
  %sub13.i.1.i = sub nsw i32 32, %sub4.i.1.i
  br label %bs_write.exit.1.i

if.then.i.1.i:                                    ; preds = %if.then66.1.i
  %652 = load i32, i32* %cur_bits5.i.i569, align 4, !tbaa !45
  %shl.i.1.i = shl i32 %652, %conv68.1.i
  %or.i.1.i = or i32 %shl.i.1.i, %conv70.1.i
  store i32 %or.i.1.i, i32* %cur_bits5.i.i569, align 4, !tbaa !45
  %sub.i142.1.i = sub nsw i32 %648, %conv68.1.i
  br label %bs_write.exit.1.i

bs_write.exit.1.i:                                ; preds = %if.then.i.1.i, %if.else.i.1.i
  %storemerge.i.1.i = phi i32 [ %sub13.i.1.i, %if.else.i.1.i ], [ %sub.i142.1.i, %if.then.i.1.i ]
  store i32 %storemerge.i.1.i, i32* %i_left.i, align 4, !tbaa !42
  br label %if.end81.1.i

if.end81.1.i:                                     ; preds = %bs_write.exit.1.i, %if.else.1.i
  %add52.2.i = or i32 %add50.i, 2
  %arrayidx.i139.2.i = getelementptr inbounds [51 x i8], [51 x i8]* @x264_scan8, i32 0, i32 %add52.2.i
  %653 = load i8, i8* %arrayidx.i139.2.i, align 1, !tbaa !44
  %conv.i140.2.i = zext i8 %653 to i32
  %sub.i.2.i = add nsw i32 %conv.i140.2.i, -1
  %arrayidx1.i.2.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub.i.2.i
  %654 = load i8, i8* %arrayidx1.i.2.i, align 1, !tbaa !44
  %conv2.i.2.i = zext i8 %654 to i32
  %sub8.i.2.i = add nsw i32 %conv.i140.2.i, -8
  %arrayidx9.i.2.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub8.i.2.i
  %655 = load i8, i8* %arrayidx9.i.2.i, align 1, !tbaa !44
  %conv10.i.2.i = zext i8 %655 to i32
  %add.i.2.i = add nuw nsw i32 %conv10.i.2.i, %conv2.i.2.i
  %cmp.i.2.i = icmp ult i32 %add.i.2.i, 128
  %add12.i.2.i = add nuw nsw i32 %add.i.2.i, 1
  %656 = lshr i32 %add12.i.2.i, 1
  %i_ret.0.i.2.i = select i1 %cmp.i.2.i, i32 %656, i32 %add.i.2.i
  %and.i.2.i = and i32 %i_ret.0.i.2.i, 127
  %arrayidx54.2.i = getelementptr inbounds [17 x i8], [17 x i8]* @ct_index, i32 0, i32 %and.i.2.i
  %657 = load i8, i8* %arrayidx54.2.i, align 1, !tbaa !44
  %conv.2.i = zext i8 %657 to i32
  %arrayidx64.2.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %conv.i140.2.i
  %658 = load i8, i8* %arrayidx64.2.i, align 1, !tbaa !44
  %tobool65.2.i = icmp eq i8 %658, 0
  br i1 %tobool65.2.i, label %if.then66.2.i, label %if.else.2.i

if.else.2.i:                                      ; preds = %if.end81.1.i
  %arraydecay78.2.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 69, i32 3, i32 %add52.2.i, i32 0
  %call79.2.i = tail call fastcc i32 @cavlc_block_residual_internal(%struct.x264_t* nonnull %h, i32 2, i16* nonnull %arraydecay78.2.i, i32 %conv.2.i) #6
  %conv80.2.i = trunc i32 %call79.2.i to i8
  store i8 %conv80.2.i, i8* %arrayidx64.2.i, align 1, !tbaa !44
  br label %if.end81.2.i

if.then66.2.i:                                    ; preds = %if.end81.1.i
  %i_size.2.i = getelementptr inbounds [6 x %struct.vlc_t], [6 x %struct.vlc_t]* @x264_coeff0_token, i32 0, i32 %conv.2.i, i32 1
  %659 = load i8, i8* %i_size.2.i, align 1, !tbaa !59
  %conv68.2.i = zext i8 %659 to i32
  %i_bits.2.i = getelementptr inbounds [6 x %struct.vlc_t], [6 x %struct.vlc_t]* @x264_coeff0_token, i32 0, i32 %conv.2.i, i32 0
  %660 = load i8, i8* %i_bits.2.i, align 1, !tbaa !61
  %conv70.2.i = zext i8 %660 to i32
  %661 = load i32, i32* %i_left.i, align 4, !tbaa !42
  %cmp.i141.2.i = icmp sgt i32 %661, %conv68.2.i
  br i1 %cmp.i141.2.i, label %if.then.i.2.i, label %if.else.i.2.i

if.else.i.2.i:                                    ; preds = %if.then66.2.i
  %sub4.i.2.i = sub nsw i32 %conv68.2.i, %661
  %662 = load i32, i32* %cur_bits5.i.i569, align 4, !tbaa !45
  %shl7.i.2.i = shl i32 %662, %661
  %shr.i.2.i = lshr i32 %conv70.2.i, %sub4.i.2.i
  %or8.i.2.i = or i32 %shl7.i.2.i, %shr.i.2.i
  %add5.i.i.i.2.i = tail call i32 @llvm.bswap.i32(i32 %or8.i.2.i) #6
  %663 = load i32*, i32** %624, align 4, !tbaa !40
  store i32 %add5.i.i.i.2.i, i32* %663, align 4, !tbaa !44
  %664 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.2.i = getelementptr inbounds i8, i8* %664, i32 4
  store i8* %add.ptr.i.2.i, i8** %p.i, align 4, !tbaa !40
  store i32 %conv70.2.i, i32* %cur_bits5.i.i569, align 4, !tbaa !45
  %sub13.i.2.i = sub nsw i32 32, %sub4.i.2.i
  br label %bs_write.exit.2.i

if.then.i.2.i:                                    ; preds = %if.then66.2.i
  %665 = load i32, i32* %cur_bits5.i.i569, align 4, !tbaa !45
  %shl.i.2.i = shl i32 %665, %conv68.2.i
  %or.i.2.i = or i32 %shl.i.2.i, %conv70.2.i
  store i32 %or.i.2.i, i32* %cur_bits5.i.i569, align 4, !tbaa !45
  %sub.i142.2.i = sub nsw i32 %661, %conv68.2.i
  br label %bs_write.exit.2.i

bs_write.exit.2.i:                                ; preds = %if.then.i.2.i, %if.else.i.2.i
  %storemerge.i.2.i = phi i32 [ %sub13.i.2.i, %if.else.i.2.i ], [ %sub.i142.2.i, %if.then.i.2.i ]
  store i32 %storemerge.i.2.i, i32* %i_left.i, align 4, !tbaa !42
  br label %if.end81.2.i

if.end81.2.i:                                     ; preds = %bs_write.exit.2.i, %if.else.2.i
  %add52.3.i = or i32 %add50.i, 3
  %arrayidx.i139.3.i = getelementptr inbounds [51 x i8], [51 x i8]* @x264_scan8, i32 0, i32 %add52.3.i
  %666 = load i8, i8* %arrayidx.i139.3.i, align 1, !tbaa !44
  %conv.i140.3.i = zext i8 %666 to i32
  %sub.i.3.i = add nsw i32 %conv.i140.3.i, -1
  %arrayidx1.i.3.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub.i.3.i
  %667 = load i8, i8* %arrayidx1.i.3.i, align 1, !tbaa !44
  %conv2.i.3.i = zext i8 %667 to i32
  %sub8.i.3.i = add nsw i32 %conv.i140.3.i, -8
  %arrayidx9.i.3.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub8.i.3.i
  %668 = load i8, i8* %arrayidx9.i.3.i, align 1, !tbaa !44
  %conv10.i.3.i = zext i8 %668 to i32
  %add.i.3.i = add nuw nsw i32 %conv10.i.3.i, %conv2.i.3.i
  %cmp.i.3.i = icmp ult i32 %add.i.3.i, 128
  %add12.i.3.i = add nuw nsw i32 %add.i.3.i, 1
  %669 = lshr i32 %add12.i.3.i, 1
  %i_ret.0.i.3.i = select i1 %cmp.i.3.i, i32 %669, i32 %add.i.3.i
  %and.i.3.i = and i32 %i_ret.0.i.3.i, 127
  %arrayidx54.3.i = getelementptr inbounds [17 x i8], [17 x i8]* @ct_index, i32 0, i32 %and.i.3.i
  %670 = load i8, i8* %arrayidx54.3.i, align 1, !tbaa !44
  %conv.3.i = zext i8 %670 to i32
  %arrayidx64.3.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %conv.i140.3.i
  %671 = load i8, i8* %arrayidx64.3.i, align 1, !tbaa !44
  %tobool65.3.i = icmp eq i8 %671, 0
  br i1 %tobool65.3.i, label %if.then66.3.i, label %if.else.3.i

if.else.3.i:                                      ; preds = %if.end81.2.i
  %arraydecay78.3.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 69, i32 3, i32 %add52.3.i, i32 0
  %call79.3.i = tail call fastcc i32 @cavlc_block_residual_internal(%struct.x264_t* nonnull %h, i32 2, i16* nonnull %arraydecay78.3.i, i32 %conv.3.i) #6
  %conv80.3.i = trunc i32 %call79.3.i to i8
  store i8 %conv80.3.i, i8* %arrayidx64.3.i, align 1, !tbaa !44
  br label %if.end81.3.i

if.then66.3.i:                                    ; preds = %if.end81.2.i
  %i_size.3.i = getelementptr inbounds [6 x %struct.vlc_t], [6 x %struct.vlc_t]* @x264_coeff0_token, i32 0, i32 %conv.3.i, i32 1
  %672 = load i8, i8* %i_size.3.i, align 1, !tbaa !59
  %conv68.3.i = zext i8 %672 to i32
  %i_bits.3.i = getelementptr inbounds [6 x %struct.vlc_t], [6 x %struct.vlc_t]* @x264_coeff0_token, i32 0, i32 %conv.3.i, i32 0
  %673 = load i8, i8* %i_bits.3.i, align 1, !tbaa !61
  %conv70.3.i = zext i8 %673 to i32
  %674 = load i32, i32* %i_left.i, align 4, !tbaa !42
  %cmp.i141.3.i = icmp sgt i32 %674, %conv68.3.i
  br i1 %cmp.i141.3.i, label %if.then.i.3.i, label %if.else.i.3.i

if.else.i.3.i:                                    ; preds = %if.then66.3.i
  %sub4.i.3.i = sub nsw i32 %conv68.3.i, %674
  %675 = load i32, i32* %cur_bits5.i.i569, align 4, !tbaa !45
  %shl7.i.3.i = shl i32 %675, %674
  %shr.i.3.i = lshr i32 %conv70.3.i, %sub4.i.3.i
  %or8.i.3.i = or i32 %shl7.i.3.i, %shr.i.3.i
  %add5.i.i.i.3.i = tail call i32 @llvm.bswap.i32(i32 %or8.i.3.i) #6
  %676 = load i32*, i32** %624, align 4, !tbaa !40
  store i32 %add5.i.i.i.3.i, i32* %676, align 4, !tbaa !44
  %677 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.3.i = getelementptr inbounds i8, i8* %677, i32 4
  store i8* %add.ptr.i.3.i, i8** %p.i, align 4, !tbaa !40
  store i32 %conv70.3.i, i32* %cur_bits5.i.i569, align 4, !tbaa !45
  %sub13.i.3.i = sub nsw i32 32, %sub4.i.3.i
  br label %bs_write.exit.3.i

if.then.i.3.i:                                    ; preds = %if.then66.3.i
  %678 = load i32, i32* %cur_bits5.i.i569, align 4, !tbaa !45
  %shl.i.3.i = shl i32 %678, %conv68.3.i
  %or.i.3.i = or i32 %shl.i.3.i, %conv70.3.i
  store i32 %or.i.3.i, i32* %cur_bits5.i.i569, align 4, !tbaa !45
  %sub.i142.3.i = sub nsw i32 %674, %conv68.3.i
  br label %bs_write.exit.3.i

bs_write.exit.3.i:                                ; preds = %if.then.i.3.i, %if.else.i.3.i
  %storemerge.i.3.i = phi i32 [ %sub13.i.3.i, %if.else.i.3.i ], [ %sub.i142.3.i, %if.then.i.3.i ]
  store i32 %storemerge.i.3.i, i32* %i_left.i, align 4, !tbaa !42
  br label %if.end81.3.i

if.end81.3.i:                                     ; preds = %bs_write.exit.3.i, %if.else.3.i
  %shr.i588 = ashr i32 %msk.0146.i, %add42.i
  %inc86.i = add nsw i32 %add41.i, 1
  %tobool40.i = icmp eq i32 %shr.i588, 0
  br i1 %tobool40.i, label %for.cond.cleanup43.critedge.i, label %land.rhs.i

if.then9.1.i:                                     ; preds = %for.inc.i
  %679 = load void (i16*, i16*, i8*)*, void (i16*, i16*, i8*)** %interleave_8x8_cavlc.i, align 4, !tbaa !62
  %arraydecay.1.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 69, i32 3, i32 %add.1.i, i32 0
  %add16.1.i = or i32 %mul15.i, 1
  %arraydecay18.1.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 69, i32 2, i32 %add16.1.i, i32 0
  tail call void %679(i16* nonnull %arraydecay.1.i, i16* nonnull %arraydecay18.1.i, i8* nonnull %arrayidx7.1.i) #6
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then9.1.i, %for.inc.i
  %add.2.i = or i32 %mul.i566, 8
  %arrayidx.2.i = getelementptr inbounds [51 x i8], [51 x i8]* @x264_scan8, i32 0, i32 %add.2.i
  %680 = load i8, i8* %arrayidx.2.i, align 1, !tbaa !44
  %idxprom.2.i = zext i8 %680 to i32
  %arrayidx7.2.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %idxprom.2.i
  %681 = load i8, i8* %arrayidx7.2.i, align 1, !tbaa !44
  %tobool8.2.i = icmp eq i8 %681, 0
  br i1 %tobool8.2.i, label %for.inc.2.i, label %if.then9.2.i

if.then9.2.i:                                     ; preds = %for.inc.1.i
  %682 = load void (i16*, i16*, i8*)*, void (i16*, i16*, i8*)** %interleave_8x8_cavlc.i, align 4, !tbaa !62
  %arraydecay.2.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 69, i32 3, i32 %add.2.i, i32 0
  %add16.2.i = or i32 %mul15.i, 2
  %arraydecay18.2.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 69, i32 2, i32 %add16.2.i, i32 0
  tail call void %682(i16* nonnull %arraydecay.2.i, i16* nonnull %arraydecay18.2.i, i8* nonnull %arrayidx7.2.i) #6
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then9.2.i, %for.inc.1.i
  %add.3.i = or i32 %mul.i566, 12
  %arrayidx.3.i = getelementptr inbounds [51 x i8], [51 x i8]* @x264_scan8, i32 0, i32 %add.3.i
  %683 = load i8, i8* %arrayidx.3.i, align 1, !tbaa !44
  %idxprom.3.i = zext i8 %683 to i32
  %arrayidx7.3.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %idxprom.3.i
  %684 = load i8, i8* %arrayidx7.3.i, align 1, !tbaa !44
  %tobool8.3.i = icmp eq i8 %684, 0
  br i1 %tobool8.3.i, label %for.inc.3.i, label %if.then9.3.i

if.then9.3.i:                                     ; preds = %for.inc.2.i
  %685 = load void (i16*, i16*, i8*)*, void (i16*, i16*, i8*)** %interleave_8x8_cavlc.i, align 4, !tbaa !62
  %arraydecay.3.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 69, i32 3, i32 %add.3.i, i32 0
  %add16.3.i = or i32 %mul15.i, 3
  %arraydecay18.3.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 69, i32 2, i32 %add16.3.i, i32 0
  tail call void %685(i16* nonnull %arraydecay.3.i, i16* nonnull %arraydecay18.3.i, i8* nonnull %arrayidx7.3.i) #6
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.then9.3.i, %for.inc.2.i
  %inc29.i = add nuw nsw i32 %p.0153.i, 1
  %exitcond155.i = icmp eq i32 %inc29.i, %cond
  br i1 %exitcond155.i, label %if.end31.i, label %for.cond1.preheader.i

if.end210:                                        ; preds = %for.cond.cleanup43.critedge.i, %for.inc198, %if.else201
  %i_cbp_chroma212 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 81
  %686 = load i32, i32* %i_cbp_chroma212, align 4, !tbaa !54
  %tobool213 = icmp eq i32 %686, 0
  br i1 %tobool213, label %if.end328, label %if.then214

if.then214:                                       ; preds = %if.end210
  %chroma_v_shift217 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 4
  %687 = load i32, i32* %chroma_v_shift217, align 16, !tbaa !47
  %sub218 = sub nsw i32 5, %687
  %arrayidx224 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 40
  %688 = load i8, i8* %arrayidx224, align 1, !tbaa !44
  %tobool225 = icmp eq i8 %688, 0
  br i1 %tobool225, label %if.then226, label %if.else235

if.then226:                                       ; preds = %if.then214
  %i_size230 = getelementptr inbounds [6 x %struct.vlc_t], [6 x %struct.vlc_t]* @x264_coeff0_token, i32 0, i32 %sub218, i32 1
  %689 = load i8, i8* %i_size230, align 1, !tbaa !59
  %conv231 = zext i8 %689 to i32
  %i_bits233 = getelementptr inbounds [6 x %struct.vlc_t], [6 x %struct.vlc_t]* @x264_coeff0_token, i32 0, i32 %sub218, i32 0
  %690 = load i8, i8* %i_bits233, align 1, !tbaa !61
  %conv234 = zext i8 %690 to i32
  %691 = load i32, i32* %i_left.i, align 4, !tbaa !42
  %cmp.i548 = icmp sgt i32 %691, %conv231
  br i1 %cmp.i548, label %if.then.i553, label %if.else.i563

if.then.i553:                                     ; preds = %if.then226
  %cur_bits.i549 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %692 = load i32, i32* %cur_bits.i549, align 4, !tbaa !45
  %shl.i550 = shl i32 %692, %conv231
  %or.i551 = or i32 %shl.i550, %conv234
  store i32 %or.i551, i32* %cur_bits.i549, align 4, !tbaa !45
  %sub.i552 = sub nsw i32 %691, %conv231
  br label %bs_write.exit565

if.else.i563:                                     ; preds = %if.then226
  %sub4.i554 = sub nsw i32 %conv231, %691
  %cur_bits5.i555 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %693 = load i32, i32* %cur_bits5.i555, align 4, !tbaa !45
  %shl7.i556 = shl i32 %693, %691
  %shr.i557 = lshr i32 %conv234, %sub4.i554
  %or8.i558 = or i32 %shl7.i556, %shr.i557
  %add5.i.i.i559 = tail call i32 @llvm.bswap.i32(i32 %or8.i558) #6
  %694 = bitcast i8** %p.i to i32**
  %695 = load i32*, i32** %694, align 4, !tbaa !40
  store i32 %add5.i.i.i559, i32* %695, align 4, !tbaa !44
  %696 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i561 = getelementptr inbounds i8, i8* %696, i32 4
  store i8* %add.ptr.i561, i8** %p.i, align 4, !tbaa !40
  store i32 %conv234, i32* %cur_bits5.i555, align 4, !tbaa !45
  %sub13.i562 = sub nsw i32 32, %sub4.i554
  br label %bs_write.exit565

bs_write.exit565:                                 ; preds = %if.then.i553, %if.else.i563
  %storemerge.i564 = phi i32 [ %sub13.i562, %if.else.i563 ], [ %sub.i552, %if.then.i553 ]
  store i32 %storemerge.i564, i32* %i_left.i, align 4, !tbaa !42
  br label %if.end241

if.else235:                                       ; preds = %if.then214
  %arraydecay238 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 69, i32 1, i32 0, i32 0
  %call239 = tail call fastcc i32 @cavlc_block_residual_internal(%struct.x264_t* nonnull %h, i32 3, i16* nonnull %arraydecay238, i32 %sub218)
  %conv240 = trunc i32 %call239 to i8
  store i8 %conv240, i8* %arrayidx224, align 1, !tbaa !44
  br label %if.end241

if.end241:                                        ; preds = %if.else235, %bs_write.exit565
  %697 = load i32, i32* %chroma_v_shift217, align 16, !tbaa !47
  %sub245 = sub nsw i32 5, %697
  %arrayidx251 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 80
  %698 = load i8, i8* %arrayidx251, align 1, !tbaa !44
  %tobool252 = icmp eq i8 %698, 0
  br i1 %tobool252, label %if.then253, label %if.else262

if.then253:                                       ; preds = %if.end241
  %i_size257 = getelementptr inbounds [6 x %struct.vlc_t], [6 x %struct.vlc_t]* @x264_coeff0_token, i32 0, i32 %sub245, i32 1
  %699 = load i8, i8* %i_size257, align 1, !tbaa !59
  %conv258 = zext i8 %699 to i32
  %i_bits260 = getelementptr inbounds [6 x %struct.vlc_t], [6 x %struct.vlc_t]* @x264_coeff0_token, i32 0, i32 %sub245, i32 0
  %700 = load i8, i8* %i_bits260, align 1, !tbaa !61
  %conv261 = zext i8 %700 to i32
  %701 = load i32, i32* %i_left.i, align 4, !tbaa !42
  %cmp.i516 = icmp sgt i32 %701, %conv258
  br i1 %cmp.i516, label %if.then.i521, label %if.else.i531

if.then.i521:                                     ; preds = %if.then253
  %cur_bits.i517 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %702 = load i32, i32* %cur_bits.i517, align 4, !tbaa !45
  %shl.i518 = shl i32 %702, %conv258
  %or.i519 = or i32 %shl.i518, %conv261
  store i32 %or.i519, i32* %cur_bits.i517, align 4, !tbaa !45
  %sub.i520 = sub nsw i32 %701, %conv258
  br label %bs_write.exit533

if.else.i531:                                     ; preds = %if.then253
  %sub4.i522 = sub nsw i32 %conv258, %701
  %cur_bits5.i523 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %703 = load i32, i32* %cur_bits5.i523, align 4, !tbaa !45
  %shl7.i524 = shl i32 %703, %701
  %shr.i525 = lshr i32 %conv261, %sub4.i522
  %or8.i526 = or i32 %shl7.i524, %shr.i525
  %add5.i.i.i527 = tail call i32 @llvm.bswap.i32(i32 %or8.i526) #6
  %704 = bitcast i8** %p.i to i32**
  %705 = load i32*, i32** %704, align 4, !tbaa !40
  store i32 %add5.i.i.i527, i32* %705, align 4, !tbaa !44
  %706 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i529 = getelementptr inbounds i8, i8* %706, i32 4
  store i8* %add.ptr.i529, i8** %p.i, align 4, !tbaa !40
  store i32 %conv261, i32* %cur_bits5.i523, align 4, !tbaa !45
  %sub13.i530 = sub nsw i32 32, %sub4.i522
  br label %bs_write.exit533

bs_write.exit533:                                 ; preds = %if.then.i521, %if.else.i531
  %storemerge.i532 = phi i32 [ %sub13.i530, %if.else.i531 ], [ %sub.i520, %if.then.i521 ]
  store i32 %storemerge.i532, i32* %i_left.i, align 4, !tbaa !42
  br label %if.end269

if.else262:                                       ; preds = %if.end241
  %arraydecay266 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 69, i32 1, i32 1, i32 0
  %call267 = tail call fastcc i32 @cavlc_block_residual_internal(%struct.x264_t* nonnull %h, i32 3, i16* nonnull %arraydecay266, i32 %sub245)
  %conv268 = trunc i32 %call267 to i8
  store i8 %conv268, i8* %arrayidx251, align 1, !tbaa !44
  br label %if.end269

if.end269:                                        ; preds = %if.else262, %bs_write.exit533
  %707 = load i32, i32* %i_cbp_chroma212, align 4, !tbaa !54
  %cmp272 = icmp eq i32 %707, 2
  br i1 %cmp272, label %if.then274, label %if.end328

if.then274:                                       ; preds = %if.end269
  %708 = load i32, i32* %chroma_v_shift217, align 16, !tbaa !47
  %shl277 = shl i32 8, %708
  %cur_bits5.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %709 = bitcast i8** %p.i to i32**
  br label %for.cond285.preheader

for.cond285.preheader:                            ; preds = %if.then274, %for.cond.cleanup289
  %i278.0880 = phi i32 [ 16, %if.then274 ], [ %add325, %for.cond.cleanup289 ]
  %arrayidx.i504 = getelementptr inbounds [51 x i8], [51 x i8]* @x264_scan8, i32 0, i32 %i278.0880
  %710 = load i8, i8* %arrayidx.i504, align 1, !tbaa !44
  %conv.i505 = zext i8 %710 to i32
  %sub.i506 = add nsw i32 %conv.i505, -1
  %arrayidx1.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub.i506
  %711 = load i8, i8* %arrayidx1.i, align 1, !tbaa !44
  %conv2.i = zext i8 %711 to i32
  %sub8.i = add nsw i32 %conv.i505, -8
  %arrayidx9.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub8.i
  %712 = load i8, i8* %arrayidx9.i, align 1, !tbaa !44
  %conv10.i = zext i8 %712 to i32
  %add.i507 = add nuw nsw i32 %conv10.i, %conv2.i
  %cmp.i508 = icmp ult i32 %add.i507, 128
  %add12.i = add nuw nsw i32 %add.i507, 1
  %713 = lshr i32 %add12.i, 1
  %i_ret.0.i = select i1 %cmp.i508, i32 %713, i32 %add.i507
  %and.i = and i32 %i_ret.0.i, 127
  %arrayidx293 = getelementptr inbounds [17 x i8], [17 x i8]* @ct_index, i32 0, i32 %and.i
  %714 = load i8, i8* %arrayidx293, align 1, !tbaa !44
  %conv294 = zext i8 %714 to i32
  %arrayidx301 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %conv.i505
  %715 = load i8, i8* %arrayidx301, align 1, !tbaa !44
  %tobool302 = icmp eq i8 %715, 0
  br i1 %tobool302, label %if.then303, label %if.else312

for.cond.cleanup289:                              ; preds = %if.else312.3, %bs_write.exit.3
  %add325 = add nsw i32 %i278.0880, %shl277
  %cmp280 = icmp slt i32 %add325, 48
  br i1 %cmp280, label %for.cond285.preheader, label %if.end328

if.then303:                                       ; preds = %for.cond285.preheader
  %i_size307 = getelementptr inbounds [6 x %struct.vlc_t], [6 x %struct.vlc_t]* @x264_coeff0_token, i32 0, i32 %conv294, i32 1
  %716 = load i8, i8* %i_size307, align 1, !tbaa !59
  %conv308 = zext i8 %716 to i32
  %i_bits310 = getelementptr inbounds [6 x %struct.vlc_t], [6 x %struct.vlc_t]* @x264_coeff0_token, i32 0, i32 %conv294, i32 0
  %717 = load i8, i8* %i_bits310, align 1, !tbaa !61
  %conv311 = zext i8 %717 to i32
  %718 = load i32, i32* %i_left.i, align 4, !tbaa !42
  %cmp.i = icmp sgt i32 %718, %conv308
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then303
  %719 = load i32, i32* %cur_bits5.i, align 4, !tbaa !45
  %shl.i = shl i32 %719, %conv308
  %or.i = or i32 %shl.i, %conv311
  store i32 %or.i, i32* %cur_bits5.i, align 4, !tbaa !45
  %sub.i502 = sub nsw i32 %718, %conv308
  br label %bs_write.exit

if.else.i:                                        ; preds = %if.then303
  %sub4.i = sub nsw i32 %conv308, %718
  %720 = load i32, i32* %cur_bits5.i, align 4, !tbaa !45
  %shl7.i = shl i32 %720, %718
  %shr.i = lshr i32 %conv311, %sub4.i
  %or8.i = or i32 %shl7.i, %shr.i
  %add5.i.i.i = tail call i32 @llvm.bswap.i32(i32 %or8.i) #6
  %721 = load i32*, i32** %709, align 4, !tbaa !40
  store i32 %add5.i.i.i, i32* %721, align 4, !tbaa !44
  %722 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i = getelementptr inbounds i8, i8* %722, i32 4
  store i8* %add.ptr.i, i8** %p.i, align 4, !tbaa !40
  store i32 %conv311, i32* %cur_bits5.i, align 4, !tbaa !45
  %sub13.i = sub nsw i32 32, %sub4.i
  br label %bs_write.exit

bs_write.exit:                                    ; preds = %if.then.i, %if.else.i
  %storemerge.i = phi i32 [ %sub13.i, %if.else.i ], [ %sub.i502, %if.then.i ]
  store i32 %storemerge.i, i32* %i_left.i, align 4, !tbaa !42
  br label %for.body290.1

if.else312:                                       ; preds = %for.cond285.preheader
  %add.ptr317 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 69, i32 3, i32 %i278.0880, i32 1
  %call318 = tail call fastcc i32 @cavlc_block_residual_internal(%struct.x264_t* nonnull %h, i32 4, i16* nonnull %add.ptr317, i32 %conv294)
  %conv319 = trunc i32 %call318 to i8
  store i8 %conv319, i8* %arrayidx301, align 1, !tbaa !44
  br label %for.body290.1

if.end328:                                        ; preds = %for.cond.cleanup289, %if.end210, %if.end269
  %723 = load i32, i32* %4, align 4, !tbaa !40
  %724 = load i32, i32* %6, align 4, !tbaa !41
  %sub.ptr.sub.i495 = sub i32 %723, %724
  %mul.i496 = shl i32 %sub.ptr.sub.i495, 3
  %725 = load i32, i32* %i_left.i, align 4, !tbaa !42
  %i_tex_bits333 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 72, i32 21, i32 1
  %726 = load i32, i32* %i_tex_bits333, align 4, !tbaa !50
  %add.i498 = sub i32 32, %sub.i762
  %sub.i499 = sub i32 %add.i498, %725
  br label %cleanup

cleanup:                                          ; preds = %if.end328, %bs_init.exit
  %mul.i496.sink = phi i32 [ %mul.i496, %if.end328 ], [ %124, %bs_init.exit ]
  %sub.i499.sink = phi i32 [ %sub.i499, %if.end328 ], [ %sub.i641, %bs_init.exit ]
  %.sink = phi i32 [ %726, %if.end328 ], [ %mul.i638, %bs_init.exit ]
  %i_tex_bits333.sink = phi i32* [ %i_tex_bits333, %if.end328 ], [ %i_tex_bits, %bs_init.exit ]
  %sub330 = add i32 %sub.i499.sink, %mul.i496.sink
  %add334 = add i32 %sub330, %.sink
  store i32 %add334, i32* %i_tex_bits333.sink, align 4, !tbaa !50
  ret void

if.else.i624.1:                                   ; preds = %bs_write.exit626
  %sub4.i615.1 = sub nsw i32 8, %storemerge.i625
  %shl7.i617.1 = shl i32 %114, %storemerge.i625
  %shr.i618.1 = lshr i32 %conv52.1, %sub4.i615.1
  %or8.i619.1 = or i32 %shl7.i617.1, %shr.i618.1
  %add5.i.i.i620.1 = tail call i32 @llvm.bswap.i32(i32 %or8.i619.1) #6
  store i32 %add5.i.i.i620.1, i32* %113, align 4, !tbaa !44
  %727 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i622.1 = getelementptr inbounds i8, i8* %727, i32 4
  store i8* %add.ptr.i622.1, i8** %p.i, align 4, !tbaa !40
  store i32 %conv52.1, i32* %cur_bits.i.i536, align 4, !tbaa !45
  %sub13.i623.1 = add nsw i32 %storemerge.i625, 24
  %728 = bitcast i8* %add.ptr.i622.1 to i32*
  %.pre894 = load i8*, i8** %arrayidx49, align 4, !tbaa !48
  br label %bs_write.exit626.1

if.then.i614.1:                                   ; preds = %bs_write.exit626
  %shl.i611.1 = shl i32 %114, 8
  %or.i612.1 = or i32 %shl.i611.1, %conv52.1
  store i32 %or.i612.1, i32* %cur_bits.i.i536, align 4, !tbaa !45
  %sub.i613.1 = add nsw i32 %storemerge.i625, -8
  br label %bs_write.exit626.1

bs_write.exit626.1:                               ; preds = %if.then.i614.1, %if.else.i624.1
  %729 = phi i8* [ %add.ptr.i622.1, %if.else.i624.1 ], [ %106, %if.then.i614.1 ]
  %730 = phi i32* [ %728, %if.else.i624.1 ], [ %107, %if.then.i614.1 ]
  %731 = phi i32* [ %728, %if.else.i624.1 ], [ %108, %if.then.i614.1 ]
  %732 = phi i32* [ %728, %if.else.i624.1 ], [ %109, %if.then.i614.1 ]
  %733 = phi i32* [ %728, %if.else.i624.1 ], [ %110, %if.then.i614.1 ]
  %734 = phi i32* [ %728, %if.else.i624.1 ], [ %111, %if.then.i614.1 ]
  %735 = phi i32* [ %728, %if.else.i624.1 ], [ %112, %if.then.i614.1 ]
  %736 = phi i32 [ %conv52.1, %if.else.i624.1 ], [ %or.i612.1, %if.then.i614.1 ]
  %737 = phi i8* [ %.pre894, %if.else.i624.1 ], [ %115, %if.then.i614.1 ]
  %738 = phi i32* [ %728, %if.else.i624.1 ], [ %113, %if.then.i614.1 ]
  %739 = phi i32* [ %728, %if.else.i624.1 ], [ %116, %if.then.i614.1 ]
  %storemerge.i625.1 = phi i32 [ %sub13.i623.1, %if.else.i624.1 ], [ %sub.i613.1, %if.then.i614.1 ]
  store i32 %storemerge.i625.1, i32* %i_left.i, align 4, !tbaa !42
  %add50.2 = or i32 %mul, 2
  %arrayidx51.2 = getelementptr inbounds i8, i8* %737, i32 %add50.2
  %740 = load i8, i8* %arrayidx51.2, align 1, !tbaa !44
  %conv52.2 = zext i8 %740 to i32
  %cmp.i609.2 = icmp sgt i32 %storemerge.i625.1, 8
  br i1 %cmp.i609.2, label %if.then.i614.2, label %if.else.i624.2

if.else.i624.2:                                   ; preds = %bs_write.exit626.1
  %sub4.i615.2 = sub nsw i32 8, %storemerge.i625.1
  %shl7.i617.2 = shl i32 %736, %storemerge.i625.1
  %shr.i618.2 = lshr i32 %conv52.2, %sub4.i615.2
  %or8.i619.2 = or i32 %shl7.i617.2, %shr.i618.2
  %add5.i.i.i620.2 = tail call i32 @llvm.bswap.i32(i32 %or8.i619.2) #6
  store i32 %add5.i.i.i620.2, i32* %735, align 4, !tbaa !44
  %741 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i622.2 = getelementptr inbounds i8, i8* %741, i32 4
  store i8* %add.ptr.i622.2, i8** %p.i, align 4, !tbaa !40
  store i32 %conv52.2, i32* %cur_bits.i.i536, align 4, !tbaa !45
  %sub13.i623.2 = add nsw i32 %storemerge.i625.1, 24
  %742 = bitcast i8* %add.ptr.i622.2 to i32*
  %.pre895 = load i8*, i8** %arrayidx49, align 4, !tbaa !48
  br label %bs_write.exit626.2

if.then.i614.2:                                   ; preds = %bs_write.exit626.1
  %shl.i611.2 = shl i32 %736, 8
  %or.i612.2 = or i32 %shl.i611.2, %conv52.2
  store i32 %or.i612.2, i32* %cur_bits.i.i536, align 4, !tbaa !45
  %sub.i613.2 = add nsw i32 %storemerge.i625.1, -8
  br label %bs_write.exit626.2

bs_write.exit626.2:                               ; preds = %if.then.i614.2, %if.else.i624.2
  %743 = phi i8* [ %add.ptr.i622.2, %if.else.i624.2 ], [ %729, %if.then.i614.2 ]
  %744 = phi i32* [ %742, %if.else.i624.2 ], [ %730, %if.then.i614.2 ]
  %745 = phi i32* [ %742, %if.else.i624.2 ], [ %731, %if.then.i614.2 ]
  %746 = phi i32* [ %742, %if.else.i624.2 ], [ %732, %if.then.i614.2 ]
  %747 = phi i32* [ %742, %if.else.i624.2 ], [ %733, %if.then.i614.2 ]
  %748 = phi i32* [ %742, %if.else.i624.2 ], [ %734, %if.then.i614.2 ]
  %749 = phi i32 [ %conv52.2, %if.else.i624.2 ], [ %or.i612.2, %if.then.i614.2 ]
  %750 = phi i8* [ %.pre895, %if.else.i624.2 ], [ %737, %if.then.i614.2 ]
  %751 = phi i32* [ %742, %if.else.i624.2 ], [ %735, %if.then.i614.2 ]
  %752 = phi i32* [ %742, %if.else.i624.2 ], [ %738, %if.then.i614.2 ]
  %753 = phi i32* [ %742, %if.else.i624.2 ], [ %739, %if.then.i614.2 ]
  %storemerge.i625.2 = phi i32 [ %sub13.i623.2, %if.else.i624.2 ], [ %sub.i613.2, %if.then.i614.2 ]
  store i32 %storemerge.i625.2, i32* %i_left.i, align 4, !tbaa !42
  %add50.3 = or i32 %mul, 3
  %arrayidx51.3 = getelementptr inbounds i8, i8* %750, i32 %add50.3
  %754 = load i8, i8* %arrayidx51.3, align 1, !tbaa !44
  %conv52.3 = zext i8 %754 to i32
  %cmp.i609.3 = icmp sgt i32 %storemerge.i625.2, 8
  br i1 %cmp.i609.3, label %if.then.i614.3, label %if.else.i624.3

if.else.i624.3:                                   ; preds = %bs_write.exit626.2
  %sub4.i615.3 = sub nsw i32 8, %storemerge.i625.2
  %shl7.i617.3 = shl i32 %749, %storemerge.i625.2
  %shr.i618.3 = lshr i32 %conv52.3, %sub4.i615.3
  %or8.i619.3 = or i32 %shl7.i617.3, %shr.i618.3
  %add5.i.i.i620.3 = tail call i32 @llvm.bswap.i32(i32 %or8.i619.3) #6
  store i32 %add5.i.i.i620.3, i32* %748, align 4, !tbaa !44
  %755 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i622.3 = getelementptr inbounds i8, i8* %755, i32 4
  store i8* %add.ptr.i622.3, i8** %p.i, align 4, !tbaa !40
  store i32 %conv52.3, i32* %cur_bits.i.i536, align 4, !tbaa !45
  %sub13.i623.3 = add nsw i32 %storemerge.i625.2, 24
  %756 = bitcast i8* %add.ptr.i622.3 to i32*
  %.pre896 = load i8*, i8** %arrayidx49, align 4, !tbaa !48
  br label %bs_write.exit626.3

if.then.i614.3:                                   ; preds = %bs_write.exit626.2
  %shl.i611.3 = shl i32 %749, 8
  %or.i612.3 = or i32 %shl.i611.3, %conv52.3
  store i32 %or.i612.3, i32* %cur_bits.i.i536, align 4, !tbaa !45
  %sub.i613.3 = add nsw i32 %storemerge.i625.2, -8
  br label %bs_write.exit626.3

bs_write.exit626.3:                               ; preds = %if.then.i614.3, %if.else.i624.3
  %757 = phi i8* [ %add.ptr.i622.3, %if.else.i624.3 ], [ %743, %if.then.i614.3 ]
  %758 = phi i32* [ %756, %if.else.i624.3 ], [ %744, %if.then.i614.3 ]
  %759 = phi i32* [ %756, %if.else.i624.3 ], [ %745, %if.then.i614.3 ]
  %760 = phi i32* [ %756, %if.else.i624.3 ], [ %746, %if.then.i614.3 ]
  %761 = phi i32* [ %756, %if.else.i624.3 ], [ %747, %if.then.i614.3 ]
  %762 = phi i32 [ %conv52.3, %if.else.i624.3 ], [ %or.i612.3, %if.then.i614.3 ]
  %763 = phi i8* [ %.pre896, %if.else.i624.3 ], [ %750, %if.then.i614.3 ]
  %764 = phi i32* [ %756, %if.else.i624.3 ], [ %748, %if.then.i614.3 ]
  %765 = phi i32* [ %756, %if.else.i624.3 ], [ %751, %if.then.i614.3 ]
  %766 = phi i32* [ %756, %if.else.i624.3 ], [ %752, %if.then.i614.3 ]
  %767 = phi i32* [ %756, %if.else.i624.3 ], [ %753, %if.then.i614.3 ]
  %storemerge.i625.3 = phi i32 [ %sub13.i623.3, %if.else.i624.3 ], [ %sub.i613.3, %if.then.i614.3 ]
  store i32 %storemerge.i625.3, i32* %i_left.i, align 4, !tbaa !42
  %add50.4 = or i32 %mul, 4
  %arrayidx51.4 = getelementptr inbounds i8, i8* %763, i32 %add50.4
  %768 = load i8, i8* %arrayidx51.4, align 1, !tbaa !44
  %conv52.4 = zext i8 %768 to i32
  %cmp.i609.4 = icmp sgt i32 %storemerge.i625.3, 8
  br i1 %cmp.i609.4, label %if.then.i614.4, label %if.else.i624.4

if.else.i624.4:                                   ; preds = %bs_write.exit626.3
  %sub4.i615.4 = sub nsw i32 8, %storemerge.i625.3
  %shl7.i617.4 = shl i32 %762, %storemerge.i625.3
  %shr.i618.4 = lshr i32 %conv52.4, %sub4.i615.4
  %or8.i619.4 = or i32 %shl7.i617.4, %shr.i618.4
  %add5.i.i.i620.4 = tail call i32 @llvm.bswap.i32(i32 %or8.i619.4) #6
  store i32 %add5.i.i.i620.4, i32* %761, align 4, !tbaa !44
  %769 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i622.4 = getelementptr inbounds i8, i8* %769, i32 4
  store i8* %add.ptr.i622.4, i8** %p.i, align 4, !tbaa !40
  store i32 %conv52.4, i32* %cur_bits.i.i536, align 4, !tbaa !45
  %sub13.i623.4 = add nsw i32 %storemerge.i625.3, 24
  %770 = bitcast i8* %add.ptr.i622.4 to i32*
  %.pre897 = load i8*, i8** %arrayidx49, align 4, !tbaa !48
  br label %bs_write.exit626.4

if.then.i614.4:                                   ; preds = %bs_write.exit626.3
  %shl.i611.4 = shl i32 %762, 8
  %or.i612.4 = or i32 %shl.i611.4, %conv52.4
  store i32 %or.i612.4, i32* %cur_bits.i.i536, align 4, !tbaa !45
  %sub.i613.4 = add nsw i32 %storemerge.i625.3, -8
  br label %bs_write.exit626.4

bs_write.exit626.4:                               ; preds = %if.then.i614.4, %if.else.i624.4
  %771 = phi i8* [ %add.ptr.i622.4, %if.else.i624.4 ], [ %757, %if.then.i614.4 ]
  %772 = phi i32* [ %770, %if.else.i624.4 ], [ %758, %if.then.i614.4 ]
  %773 = phi i32* [ %770, %if.else.i624.4 ], [ %759, %if.then.i614.4 ]
  %774 = phi i32* [ %770, %if.else.i624.4 ], [ %760, %if.then.i614.4 ]
  %775 = phi i32 [ %conv52.4, %if.else.i624.4 ], [ %or.i612.4, %if.then.i614.4 ]
  %776 = phi i8* [ %.pre897, %if.else.i624.4 ], [ %763, %if.then.i614.4 ]
  %777 = phi i32* [ %770, %if.else.i624.4 ], [ %761, %if.then.i614.4 ]
  %778 = phi i32* [ %770, %if.else.i624.4 ], [ %764, %if.then.i614.4 ]
  %779 = phi i32* [ %770, %if.else.i624.4 ], [ %765, %if.then.i614.4 ]
  %780 = phi i32* [ %770, %if.else.i624.4 ], [ %766, %if.then.i614.4 ]
  %781 = phi i32* [ %770, %if.else.i624.4 ], [ %767, %if.then.i614.4 ]
  %storemerge.i625.4 = phi i32 [ %sub13.i623.4, %if.else.i624.4 ], [ %sub.i613.4, %if.then.i614.4 ]
  store i32 %storemerge.i625.4, i32* %i_left.i, align 4, !tbaa !42
  %add50.5 = or i32 %mul, 5
  %arrayidx51.5 = getelementptr inbounds i8, i8* %776, i32 %add50.5
  %782 = load i8, i8* %arrayidx51.5, align 1, !tbaa !44
  %conv52.5 = zext i8 %782 to i32
  %cmp.i609.5 = icmp sgt i32 %storemerge.i625.4, 8
  br i1 %cmp.i609.5, label %if.then.i614.5, label %if.else.i624.5

if.else.i624.5:                                   ; preds = %bs_write.exit626.4
  %sub4.i615.5 = sub nsw i32 8, %storemerge.i625.4
  %shl7.i617.5 = shl i32 %775, %storemerge.i625.4
  %shr.i618.5 = lshr i32 %conv52.5, %sub4.i615.5
  %or8.i619.5 = or i32 %shl7.i617.5, %shr.i618.5
  %add5.i.i.i620.5 = tail call i32 @llvm.bswap.i32(i32 %or8.i619.5) #6
  store i32 %add5.i.i.i620.5, i32* %774, align 4, !tbaa !44
  %783 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i622.5 = getelementptr inbounds i8, i8* %783, i32 4
  store i8* %add.ptr.i622.5, i8** %p.i, align 4, !tbaa !40
  store i32 %conv52.5, i32* %cur_bits.i.i536, align 4, !tbaa !45
  %sub13.i623.5 = add nsw i32 %storemerge.i625.4, 24
  %784 = bitcast i8* %add.ptr.i622.5 to i32*
  %.pre898 = load i8*, i8** %arrayidx49, align 4, !tbaa !48
  br label %bs_write.exit626.5

if.then.i614.5:                                   ; preds = %bs_write.exit626.4
  %shl.i611.5 = shl i32 %775, 8
  %or.i612.5 = or i32 %shl.i611.5, %conv52.5
  store i32 %or.i612.5, i32* %cur_bits.i.i536, align 4, !tbaa !45
  %sub.i613.5 = add nsw i32 %storemerge.i625.4, -8
  br label %bs_write.exit626.5

bs_write.exit626.5:                               ; preds = %if.then.i614.5, %if.else.i624.5
  %785 = phi i8* [ %add.ptr.i622.5, %if.else.i624.5 ], [ %771, %if.then.i614.5 ]
  %786 = phi i32* [ %784, %if.else.i624.5 ], [ %772, %if.then.i614.5 ]
  %787 = phi i32* [ %784, %if.else.i624.5 ], [ %773, %if.then.i614.5 ]
  %788 = phi i32 [ %conv52.5, %if.else.i624.5 ], [ %or.i612.5, %if.then.i614.5 ]
  %789 = phi i8* [ %.pre898, %if.else.i624.5 ], [ %776, %if.then.i614.5 ]
  %790 = phi i32* [ %784, %if.else.i624.5 ], [ %774, %if.then.i614.5 ]
  %791 = phi i32* [ %784, %if.else.i624.5 ], [ %777, %if.then.i614.5 ]
  %792 = phi i32* [ %784, %if.else.i624.5 ], [ %778, %if.then.i614.5 ]
  %793 = phi i32* [ %784, %if.else.i624.5 ], [ %779, %if.then.i614.5 ]
  %794 = phi i32* [ %784, %if.else.i624.5 ], [ %780, %if.then.i614.5 ]
  %795 = phi i32* [ %784, %if.else.i624.5 ], [ %781, %if.then.i614.5 ]
  %storemerge.i625.5 = phi i32 [ %sub13.i623.5, %if.else.i624.5 ], [ %sub.i613.5, %if.then.i614.5 ]
  store i32 %storemerge.i625.5, i32* %i_left.i, align 4, !tbaa !42
  %add50.6 = or i32 %mul, 6
  %arrayidx51.6 = getelementptr inbounds i8, i8* %789, i32 %add50.6
  %796 = load i8, i8* %arrayidx51.6, align 1, !tbaa !44
  %conv52.6 = zext i8 %796 to i32
  %cmp.i609.6 = icmp sgt i32 %storemerge.i625.5, 8
  br i1 %cmp.i609.6, label %if.then.i614.6, label %if.else.i624.6

if.else.i624.6:                                   ; preds = %bs_write.exit626.5
  %sub4.i615.6 = sub nsw i32 8, %storemerge.i625.5
  %shl7.i617.6 = shl i32 %788, %storemerge.i625.5
  %shr.i618.6 = lshr i32 %conv52.6, %sub4.i615.6
  %or8.i619.6 = or i32 %shl7.i617.6, %shr.i618.6
  %add5.i.i.i620.6 = tail call i32 @llvm.bswap.i32(i32 %or8.i619.6) #6
  store i32 %add5.i.i.i620.6, i32* %787, align 4, !tbaa !44
  %797 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i622.6 = getelementptr inbounds i8, i8* %797, i32 4
  store i8* %add.ptr.i622.6, i8** %p.i, align 4, !tbaa !40
  store i32 %conv52.6, i32* %cur_bits.i.i536, align 4, !tbaa !45
  %sub13.i623.6 = add nsw i32 %storemerge.i625.5, 24
  %798 = bitcast i8* %add.ptr.i622.6 to i32*
  %.pre899 = load i8*, i8** %arrayidx49, align 4, !tbaa !48
  br label %bs_write.exit626.6

if.then.i614.6:                                   ; preds = %bs_write.exit626.5
  %shl.i611.6 = shl i32 %788, 8
  %or.i612.6 = or i32 %shl.i611.6, %conv52.6
  store i32 %or.i612.6, i32* %cur_bits.i.i536, align 4, !tbaa !45
  %sub.i613.6 = add nsw i32 %storemerge.i625.5, -8
  br label %bs_write.exit626.6

bs_write.exit626.6:                               ; preds = %if.then.i614.6, %if.else.i624.6
  %799 = phi i8* [ %add.ptr.i622.6, %if.else.i624.6 ], [ %785, %if.then.i614.6 ]
  %800 = phi i32* [ %798, %if.else.i624.6 ], [ %786, %if.then.i614.6 ]
  %801 = phi i32 [ %conv52.6, %if.else.i624.6 ], [ %or.i612.6, %if.then.i614.6 ]
  %802 = phi i8* [ %.pre899, %if.else.i624.6 ], [ %789, %if.then.i614.6 ]
  %803 = phi i32* [ %798, %if.else.i624.6 ], [ %787, %if.then.i614.6 ]
  %804 = phi i32* [ %798, %if.else.i624.6 ], [ %790, %if.then.i614.6 ]
  %805 = phi i32* [ %798, %if.else.i624.6 ], [ %791, %if.then.i614.6 ]
  %806 = phi i32* [ %798, %if.else.i624.6 ], [ %792, %if.then.i614.6 ]
  %807 = phi i32* [ %798, %if.else.i624.6 ], [ %793, %if.then.i614.6 ]
  %808 = phi i32* [ %798, %if.else.i624.6 ], [ %794, %if.then.i614.6 ]
  %809 = phi i32* [ %798, %if.else.i624.6 ], [ %795, %if.then.i614.6 ]
  %storemerge.i625.6 = phi i32 [ %sub13.i623.6, %if.else.i624.6 ], [ %sub.i613.6, %if.then.i614.6 ]
  store i32 %storemerge.i625.6, i32* %i_left.i, align 4, !tbaa !42
  %add50.7 = or i32 %mul, 7
  %arrayidx51.7 = getelementptr inbounds i8, i8* %802, i32 %add50.7
  %810 = load i8, i8* %arrayidx51.7, align 1, !tbaa !44
  %conv52.7 = zext i8 %810 to i32
  %cmp.i609.7 = icmp sgt i32 %storemerge.i625.6, 8
  br i1 %cmp.i609.7, label %if.then.i614.7, label %if.else.i624.7

if.else.i624.7:                                   ; preds = %bs_write.exit626.6
  %sub4.i615.7 = sub nsw i32 8, %storemerge.i625.6
  %shl7.i617.7 = shl i32 %801, %storemerge.i625.6
  %shr.i618.7 = lshr i32 %conv52.7, %sub4.i615.7
  %or8.i619.7 = or i32 %shl7.i617.7, %shr.i618.7
  %add5.i.i.i620.7 = tail call i32 @llvm.bswap.i32(i32 %or8.i619.7) #6
  store i32 %add5.i.i.i620.7, i32* %800, align 4, !tbaa !44
  %811 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i622.7 = getelementptr inbounds i8, i8* %811, i32 4
  store i8* %add.ptr.i622.7, i8** %p.i, align 4, !tbaa !40
  store i32 %conv52.7, i32* %cur_bits.i.i536, align 4, !tbaa !45
  %sub13.i623.7 = add nsw i32 %storemerge.i625.6, 24
  %812 = bitcast i8* %add.ptr.i622.7 to i32*
  br label %bs_write.exit626.7

if.then.i614.7:                                   ; preds = %bs_write.exit626.6
  %shl.i611.7 = shl i32 %801, 8
  %or.i612.7 = or i32 %shl.i611.7, %conv52.7
  store i32 %or.i612.7, i32* %cur_bits.i.i536, align 4, !tbaa !45
  %sub.i613.7 = add nsw i32 %storemerge.i625.6, -8
  br label %bs_write.exit626.7

bs_write.exit626.7:                               ; preds = %if.then.i614.7, %if.else.i624.7
  %813 = phi i8* [ %add.ptr.i622.7, %if.else.i624.7 ], [ %799, %if.then.i614.7 ]
  %814 = phi i32* [ %812, %if.else.i624.7 ], [ %800, %if.then.i614.7 ]
  %815 = phi i32* [ %812, %if.else.i624.7 ], [ %803, %if.then.i614.7 ]
  %816 = phi i32* [ %812, %if.else.i624.7 ], [ %804, %if.then.i614.7 ]
  %817 = phi i32* [ %812, %if.else.i624.7 ], [ %805, %if.then.i614.7 ]
  %818 = phi i32* [ %812, %if.else.i624.7 ], [ %806, %if.then.i614.7 ]
  %819 = phi i32* [ %812, %if.else.i624.7 ], [ %807, %if.then.i614.7 ]
  %820 = phi i32* [ %812, %if.else.i624.7 ], [ %808, %if.then.i614.7 ]
  %821 = phi i32* [ %812, %if.else.i624.7 ], [ %809, %if.then.i614.7 ]
  %822 = phi i32 [ %conv52.7, %if.else.i624.7 ], [ %or.i612.7, %if.then.i614.7 ]
  %storemerge.i625.7 = phi i32 [ %sub13.i623.7, %if.else.i624.7 ], [ %sub.i613.7, %if.then.i614.7 ]
  store i32 %storemerge.i625.7, i32* %i_left.i, align 4, !tbaa !42
  %inc57 = add nuw nsw i32 %i34.0873, 1
  %823 = load i32, i32* %chroma_v_shift, align 16, !tbaa !47
  %shr = lshr i32 16, %823
  %cmp37 = icmp slt i32 %inc57, %shr
  br i1 %cmp37, label %for.cond41.preheader, label %for.cond.cleanup39

for.body290.1:                                    ; preds = %bs_write.exit, %if.else312
  %inc322 = add nsw i32 %i278.0880, 1
  %arrayidx.i504.1 = getelementptr inbounds [51 x i8], [51 x i8]* @x264_scan8, i32 0, i32 %inc322
  %824 = load i8, i8* %arrayidx.i504.1, align 1, !tbaa !44
  %conv.i505.1 = zext i8 %824 to i32
  %sub.i506.1 = add nsw i32 %conv.i505.1, -1
  %arrayidx1.i.1 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub.i506.1
  %825 = load i8, i8* %arrayidx1.i.1, align 1, !tbaa !44
  %conv2.i.1 = zext i8 %825 to i32
  %sub8.i.1 = add nsw i32 %conv.i505.1, -8
  %arrayidx9.i.1 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub8.i.1
  %826 = load i8, i8* %arrayidx9.i.1, align 1, !tbaa !44
  %conv10.i.1 = zext i8 %826 to i32
  %add.i507.1 = add nuw nsw i32 %conv10.i.1, %conv2.i.1
  %cmp.i508.1 = icmp ult i32 %add.i507.1, 128
  %add12.i.1 = add nuw nsw i32 %add.i507.1, 1
  %827 = lshr i32 %add12.i.1, 1
  %i_ret.0.i.1 = select i1 %cmp.i508.1, i32 %827, i32 %add.i507.1
  %and.i.1 = and i32 %i_ret.0.i.1, 127
  %arrayidx293.1 = getelementptr inbounds [17 x i8], [17 x i8]* @ct_index, i32 0, i32 %and.i.1
  %828 = load i8, i8* %arrayidx293.1, align 1, !tbaa !44
  %conv294.1 = zext i8 %828 to i32
  %arrayidx301.1 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %conv.i505.1
  %829 = load i8, i8* %arrayidx301.1, align 1, !tbaa !44
  %tobool302.1 = icmp eq i8 %829, 0
  br i1 %tobool302.1, label %if.then303.1, label %if.else312.1

if.else312.1:                                     ; preds = %for.body290.1
  %add.ptr317.1 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 69, i32 3, i32 %inc322, i32 1
  %call318.1 = tail call fastcc i32 @cavlc_block_residual_internal(%struct.x264_t* nonnull %h, i32 4, i16* nonnull %add.ptr317.1, i32 %conv294.1)
  %conv319.1 = trunc i32 %call318.1 to i8
  store i8 %conv319.1, i8* %arrayidx301.1, align 1, !tbaa !44
  br label %if.end320.1

if.then303.1:                                     ; preds = %for.body290.1
  %i_size307.1 = getelementptr inbounds [6 x %struct.vlc_t], [6 x %struct.vlc_t]* @x264_coeff0_token, i32 0, i32 %conv294.1, i32 1
  %830 = load i8, i8* %i_size307.1, align 1, !tbaa !59
  %conv308.1 = zext i8 %830 to i32
  %i_bits310.1 = getelementptr inbounds [6 x %struct.vlc_t], [6 x %struct.vlc_t]* @x264_coeff0_token, i32 0, i32 %conv294.1, i32 0
  %831 = load i8, i8* %i_bits310.1, align 1, !tbaa !61
  %conv311.1 = zext i8 %831 to i32
  %832 = load i32, i32* %i_left.i, align 4, !tbaa !42
  %cmp.i.1 = icmp sgt i32 %832, %conv308.1
  br i1 %cmp.i.1, label %if.then.i.1, label %if.else.i.1

if.else.i.1:                                      ; preds = %if.then303.1
  %sub4.i.1 = sub nsw i32 %conv308.1, %832
  %833 = load i32, i32* %cur_bits5.i, align 4, !tbaa !45
  %shl7.i.1 = shl i32 %833, %832
  %shr.i.1 = lshr i32 %conv311.1, %sub4.i.1
  %or8.i.1 = or i32 %shl7.i.1, %shr.i.1
  %add5.i.i.i.1 = tail call i32 @llvm.bswap.i32(i32 %or8.i.1) #6
  %834 = load i32*, i32** %709, align 4, !tbaa !40
  store i32 %add5.i.i.i.1, i32* %834, align 4, !tbaa !44
  %835 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.1 = getelementptr inbounds i8, i8* %835, i32 4
  store i8* %add.ptr.i.1, i8** %p.i, align 4, !tbaa !40
  store i32 %conv311.1, i32* %cur_bits5.i, align 4, !tbaa !45
  %sub13.i.1 = sub nsw i32 32, %sub4.i.1
  br label %bs_write.exit.1

if.then.i.1:                                      ; preds = %if.then303.1
  %836 = load i32, i32* %cur_bits5.i, align 4, !tbaa !45
  %shl.i.1 = shl i32 %836, %conv308.1
  %or.i.1 = or i32 %shl.i.1, %conv311.1
  store i32 %or.i.1, i32* %cur_bits5.i, align 4, !tbaa !45
  %sub.i502.1 = sub nsw i32 %832, %conv308.1
  br label %bs_write.exit.1

bs_write.exit.1:                                  ; preds = %if.then.i.1, %if.else.i.1
  %storemerge.i.1 = phi i32 [ %sub13.i.1, %if.else.i.1 ], [ %sub.i502.1, %if.then.i.1 ]
  store i32 %storemerge.i.1, i32* %i_left.i, align 4, !tbaa !42
  br label %if.end320.1

if.end320.1:                                      ; preds = %bs_write.exit.1, %if.else312.1
  %inc322.1 = add nsw i32 %i278.0880, 2
  %arrayidx.i504.2 = getelementptr inbounds [51 x i8], [51 x i8]* @x264_scan8, i32 0, i32 %inc322.1
  %837 = load i8, i8* %arrayidx.i504.2, align 1, !tbaa !44
  %conv.i505.2 = zext i8 %837 to i32
  %sub.i506.2 = add nsw i32 %conv.i505.2, -1
  %arrayidx1.i.2 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub.i506.2
  %838 = load i8, i8* %arrayidx1.i.2, align 1, !tbaa !44
  %conv2.i.2 = zext i8 %838 to i32
  %sub8.i.2 = add nsw i32 %conv.i505.2, -8
  %arrayidx9.i.2 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub8.i.2
  %839 = load i8, i8* %arrayidx9.i.2, align 1, !tbaa !44
  %conv10.i.2 = zext i8 %839 to i32
  %add.i507.2 = add nuw nsw i32 %conv10.i.2, %conv2.i.2
  %cmp.i508.2 = icmp ult i32 %add.i507.2, 128
  %add12.i.2 = add nuw nsw i32 %add.i507.2, 1
  %840 = lshr i32 %add12.i.2, 1
  %i_ret.0.i.2 = select i1 %cmp.i508.2, i32 %840, i32 %add.i507.2
  %and.i.2 = and i32 %i_ret.0.i.2, 127
  %arrayidx293.2 = getelementptr inbounds [17 x i8], [17 x i8]* @ct_index, i32 0, i32 %and.i.2
  %841 = load i8, i8* %arrayidx293.2, align 1, !tbaa !44
  %conv294.2 = zext i8 %841 to i32
  %arrayidx301.2 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %conv.i505.2
  %842 = load i8, i8* %arrayidx301.2, align 1, !tbaa !44
  %tobool302.2 = icmp eq i8 %842, 0
  br i1 %tobool302.2, label %if.then303.2, label %if.else312.2

if.else312.2:                                     ; preds = %if.end320.1
  %add.ptr317.2 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 69, i32 3, i32 %inc322.1, i32 1
  %call318.2 = tail call fastcc i32 @cavlc_block_residual_internal(%struct.x264_t* nonnull %h, i32 4, i16* nonnull %add.ptr317.2, i32 %conv294.2)
  %conv319.2 = trunc i32 %call318.2 to i8
  store i8 %conv319.2, i8* %arrayidx301.2, align 1, !tbaa !44
  br label %if.end320.2

if.then303.2:                                     ; preds = %if.end320.1
  %i_size307.2 = getelementptr inbounds [6 x %struct.vlc_t], [6 x %struct.vlc_t]* @x264_coeff0_token, i32 0, i32 %conv294.2, i32 1
  %843 = load i8, i8* %i_size307.2, align 1, !tbaa !59
  %conv308.2 = zext i8 %843 to i32
  %i_bits310.2 = getelementptr inbounds [6 x %struct.vlc_t], [6 x %struct.vlc_t]* @x264_coeff0_token, i32 0, i32 %conv294.2, i32 0
  %844 = load i8, i8* %i_bits310.2, align 1, !tbaa !61
  %conv311.2 = zext i8 %844 to i32
  %845 = load i32, i32* %i_left.i, align 4, !tbaa !42
  %cmp.i.2 = icmp sgt i32 %845, %conv308.2
  br i1 %cmp.i.2, label %if.then.i.2, label %if.else.i.2

if.else.i.2:                                      ; preds = %if.then303.2
  %sub4.i.2 = sub nsw i32 %conv308.2, %845
  %846 = load i32, i32* %cur_bits5.i, align 4, !tbaa !45
  %shl7.i.2 = shl i32 %846, %845
  %shr.i.2 = lshr i32 %conv311.2, %sub4.i.2
  %or8.i.2 = or i32 %shl7.i.2, %shr.i.2
  %add5.i.i.i.2 = tail call i32 @llvm.bswap.i32(i32 %or8.i.2) #6
  %847 = load i32*, i32** %709, align 4, !tbaa !40
  store i32 %add5.i.i.i.2, i32* %847, align 4, !tbaa !44
  %848 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.2 = getelementptr inbounds i8, i8* %848, i32 4
  store i8* %add.ptr.i.2, i8** %p.i, align 4, !tbaa !40
  store i32 %conv311.2, i32* %cur_bits5.i, align 4, !tbaa !45
  %sub13.i.2 = sub nsw i32 32, %sub4.i.2
  br label %bs_write.exit.2

if.then.i.2:                                      ; preds = %if.then303.2
  %849 = load i32, i32* %cur_bits5.i, align 4, !tbaa !45
  %shl.i.2 = shl i32 %849, %conv308.2
  %or.i.2 = or i32 %shl.i.2, %conv311.2
  store i32 %or.i.2, i32* %cur_bits5.i, align 4, !tbaa !45
  %sub.i502.2 = sub nsw i32 %845, %conv308.2
  br label %bs_write.exit.2

bs_write.exit.2:                                  ; preds = %if.then.i.2, %if.else.i.2
  %storemerge.i.2 = phi i32 [ %sub13.i.2, %if.else.i.2 ], [ %sub.i502.2, %if.then.i.2 ]
  store i32 %storemerge.i.2, i32* %i_left.i, align 4, !tbaa !42
  br label %if.end320.2

if.end320.2:                                      ; preds = %bs_write.exit.2, %if.else312.2
  %inc322.2 = add nsw i32 %i278.0880, 3
  %arrayidx.i504.3 = getelementptr inbounds [51 x i8], [51 x i8]* @x264_scan8, i32 0, i32 %inc322.2
  %850 = load i8, i8* %arrayidx.i504.3, align 1, !tbaa !44
  %conv.i505.3 = zext i8 %850 to i32
  %sub.i506.3 = add nsw i32 %conv.i505.3, -1
  %arrayidx1.i.3 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub.i506.3
  %851 = load i8, i8* %arrayidx1.i.3, align 1, !tbaa !44
  %conv2.i.3 = zext i8 %851 to i32
  %sub8.i.3 = add nsw i32 %conv.i505.3, -8
  %arrayidx9.i.3 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %sub8.i.3
  %852 = load i8, i8* %arrayidx9.i.3, align 1, !tbaa !44
  %conv10.i.3 = zext i8 %852 to i32
  %add.i507.3 = add nuw nsw i32 %conv10.i.3, %conv2.i.3
  %cmp.i508.3 = icmp ult i32 %add.i507.3, 128
  %add12.i.3 = add nuw nsw i32 %add.i507.3, 1
  %853 = lshr i32 %add12.i.3, 1
  %i_ret.0.i.3 = select i1 %cmp.i508.3, i32 %853, i32 %add.i507.3
  %and.i.3 = and i32 %i_ret.0.i.3, 127
  %arrayidx293.3 = getelementptr inbounds [17 x i8], [17 x i8]* @ct_index, i32 0, i32 %and.i.3
  %854 = load i8, i8* %arrayidx293.3, align 1, !tbaa !44
  %conv294.3 = zext i8 %854 to i32
  %arrayidx301.3 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 %conv.i505.3
  %855 = load i8, i8* %arrayidx301.3, align 1, !tbaa !44
  %tobool302.3 = icmp eq i8 %855, 0
  br i1 %tobool302.3, label %if.then303.3, label %if.else312.3

if.else312.3:                                     ; preds = %if.end320.2
  %add.ptr317.3 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 69, i32 3, i32 %inc322.2, i32 1
  %call318.3 = tail call fastcc i32 @cavlc_block_residual_internal(%struct.x264_t* nonnull %h, i32 4, i16* nonnull %add.ptr317.3, i32 %conv294.3)
  %conv319.3 = trunc i32 %call318.3 to i8
  store i8 %conv319.3, i8* %arrayidx301.3, align 1, !tbaa !44
  br label %for.cond.cleanup289

if.then303.3:                                     ; preds = %if.end320.2
  %i_size307.3 = getelementptr inbounds [6 x %struct.vlc_t], [6 x %struct.vlc_t]* @x264_coeff0_token, i32 0, i32 %conv294.3, i32 1
  %856 = load i8, i8* %i_size307.3, align 1, !tbaa !59
  %conv308.3 = zext i8 %856 to i32
  %i_bits310.3 = getelementptr inbounds [6 x %struct.vlc_t], [6 x %struct.vlc_t]* @x264_coeff0_token, i32 0, i32 %conv294.3, i32 0
  %857 = load i8, i8* %i_bits310.3, align 1, !tbaa !61
  %conv311.3 = zext i8 %857 to i32
  %858 = load i32, i32* %i_left.i, align 4, !tbaa !42
  %cmp.i.3 = icmp sgt i32 %858, %conv308.3
  br i1 %cmp.i.3, label %if.then.i.3, label %if.else.i.3

if.else.i.3:                                      ; preds = %if.then303.3
  %sub4.i.3 = sub nsw i32 %conv308.3, %858
  %859 = load i32, i32* %cur_bits5.i, align 4, !tbaa !45
  %shl7.i.3 = shl i32 %859, %858
  %shr.i.3 = lshr i32 %conv311.3, %sub4.i.3
  %or8.i.3 = or i32 %shl7.i.3, %shr.i.3
  %add5.i.i.i.3 = tail call i32 @llvm.bswap.i32(i32 %or8.i.3) #6
  %860 = load i32*, i32** %709, align 4, !tbaa !40
  store i32 %add5.i.i.i.3, i32* %860, align 4, !tbaa !44
  %861 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i.3 = getelementptr inbounds i8, i8* %861, i32 4
  store i8* %add.ptr.i.3, i8** %p.i, align 4, !tbaa !40
  store i32 %conv311.3, i32* %cur_bits5.i, align 4, !tbaa !45
  %sub13.i.3 = sub nsw i32 32, %sub4.i.3
  br label %bs_write.exit.3

if.then.i.3:                                      ; preds = %if.then303.3
  %862 = load i32, i32* %cur_bits5.i, align 4, !tbaa !45
  %shl.i.3 = shl i32 %862, %conv308.3
  %or.i.3 = or i32 %shl.i.3, %conv311.3
  store i32 %or.i.3, i32* %cur_bits5.i, align 4, !tbaa !45
  %sub.i502.3 = sub nsw i32 %858, %conv308.3
  br label %bs_write.exit.3

bs_write.exit.3:                                  ; preds = %if.then.i.3, %if.else.i.3
  %storemerge.i.3 = phi i32 [ %sub13.i.3, %if.else.i.3 ], [ %sub.i502.3, %if.then.i.3 ]
  store i32 %storemerge.i.3, i32* %i_left.i, align 4, !tbaa !42
  br label %for.cond.cleanup289
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nounwind
define internal fastcc void @cavlc_mb_header_i(%struct.x264_t* %h, i32 %i_mb_type, i32 %i_mb_i_offset, i32 %chroma) unnamed_addr #2 {
entry:
  %cmp = icmp eq i32 %i_mb_type, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %i_intra16x16_pred_mode = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 82
  %0 = load i32, i32* %i_intra16x16_pred_mode, align 8, !tbaa !63
  %arrayidx = getelementptr inbounds [7 x i8], [7 x i8]* @x264_mb_pred_mode16x16_fix, i32 0, i32 %0
  %1 = load i8, i8* %arrayidx, align 1, !tbaa !44
  %conv = zext i8 %1 to i32
  %i_cbp_chroma = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 81
  %2 = load i32, i32* %i_cbp_chroma, align 4, !tbaa !54
  %mul = shl i32 %2, 2
  %i_cbp_luma = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 80
  %3 = load i32, i32* %i_cbp_luma, align 32, !tbaa !55
  %cmp5 = icmp eq i32 %3, 0
  %cond = select i1 %cmp5, i32 0, i32 12
  %add1 = add i32 %i_mb_i_offset, 2
  %add3 = add i32 %add1, %conv
  %add7 = add i32 %add3, %mul
  %add.i = add i32 %add7, %cond
  %arrayidx.i = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %add.i
  %4 = load i8, i8* %arrayidx.i, align 1, !tbaa !44
  %conv.i = zext i8 %4 to i32
  %i_left.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 4
  %5 = load i32, i32* %i_left.i.i, align 4, !tbaa !42
  %cmp.i.i = icmp sgt i32 %5, %conv.i
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then
  %cur_bits.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %6 = load i32, i32* %cur_bits.i.i, align 4, !tbaa !45
  %shl.i.i = shl i32 %6, %conv.i
  %or.i.i = or i32 %shl.i.i, %add.i
  store i32 %or.i.i, i32* %cur_bits.i.i, align 4, !tbaa !45
  %sub.i.i = sub nsw i32 %5, %conv.i
  br label %bs_write_ue.exit

if.else.i.i:                                      ; preds = %if.then
  %sub4.i.i = sub nsw i32 %conv.i, %5
  %cur_bits5.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %7 = load i32, i32* %cur_bits5.i.i, align 4, !tbaa !45
  %shl7.i.i = shl i32 %7, %5
  %shr.i.i = lshr i32 %add.i, %sub4.i.i
  %or8.i.i = or i32 %shl7.i.i, %shr.i.i
  %add5.i.i.i.i = tail call i32 @llvm.bswap.i32(i32 %or8.i.i) #6
  %p.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 1
  %8 = bitcast i8** %p.i.i to i32**
  %9 = load i32*, i32** %8, align 4, !tbaa !40
  store i32 %add5.i.i.i.i, i32* %9, align 4, !tbaa !44
  %10 = load i8*, i8** %p.i.i, align 4, !tbaa !40
  %add.ptr.i.i = getelementptr inbounds i8, i8* %10, i32 4
  store i8* %add.ptr.i.i, i8** %p.i.i, align 4, !tbaa !40
  store i32 %add.i, i32* %cur_bits5.i.i, align 4, !tbaa !45
  %sub13.i.i = sub nsw i32 32, %sub4.i.i
  br label %bs_write_ue.exit

bs_write_ue.exit:                                 ; preds = %if.then.i.i, %if.else.i.i
  %storemerge.i.i = phi i32 [ %sub13.i.i, %if.else.i.i ], [ %sub.i.i, %if.then.i.i ]
  store i32 %storemerge.i.i, i32* %i_left.i.i, align 4, !tbaa !42
  br label %if.end31

if.else:                                          ; preds = %entry
  %cmp8 = icmp eq i32 %i_mb_type, 1
  %cond10 = select i1 %cmp8, i32 4, i32 1
  %add.i109 = add nsw i32 %i_mb_i_offset, 1
  %arrayidx.i110 = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %add.i109
  %11 = load i8, i8* %arrayidx.i110, align 1, !tbaa !44
  %conv.i111 = zext i8 %11 to i32
  %i_left.i.i112 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 4
  %12 = load i32, i32* %i_left.i.i112, align 4, !tbaa !42
  %cmp.i.i113 = icmp sgt i32 %12, %conv.i111
  br i1 %cmp.i.i113, label %if.then.i.i118, label %if.else.i.i128

if.then.i.i118:                                   ; preds = %if.else
  %cur_bits.i.i114 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %13 = load i32, i32* %cur_bits.i.i114, align 4, !tbaa !45
  %shl.i.i115 = shl i32 %13, %conv.i111
  %or.i.i116 = or i32 %shl.i.i115, %add.i109
  store i32 %or.i.i116, i32* %cur_bits.i.i114, align 4, !tbaa !45
  %sub.i.i117 = sub nsw i32 %12, %conv.i111
  br label %bs_write_ue.exit130

if.else.i.i128:                                   ; preds = %if.else
  %sub4.i.i119 = sub nsw i32 %conv.i111, %12
  %cur_bits5.i.i120 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %14 = load i32, i32* %cur_bits5.i.i120, align 4, !tbaa !45
  %shl7.i.i121 = shl i32 %14, %12
  %shr.i.i122 = lshr i32 %add.i109, %sub4.i.i119
  %or8.i.i123 = or i32 %shl7.i.i121, %shr.i.i122
  %add5.i.i.i.i124 = tail call i32 @llvm.bswap.i32(i32 %or8.i.i123) #6
  %p.i.i125 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 1
  %15 = bitcast i8** %p.i.i125 to i32**
  %16 = load i32*, i32** %15, align 4, !tbaa !40
  store i32 %add5.i.i.i.i124, i32* %16, align 4, !tbaa !44
  %17 = load i8*, i8** %p.i.i125, align 4, !tbaa !40
  %add.ptr.i.i126 = getelementptr inbounds i8, i8* %17, i32 4
  store i8* %add.ptr.i.i126, i8** %p.i.i125, align 4, !tbaa !40
  store i32 %add.i109, i32* %cur_bits5.i.i120, align 4, !tbaa !45
  %sub13.i.i127 = sub nsw i32 32, %sub4.i.i119
  br label %bs_write_ue.exit130

bs_write_ue.exit130:                              ; preds = %if.then.i.i118, %if.else.i.i128
  %18 = phi i32 [ %add.i109, %if.else.i.i128 ], [ %or.i.i116, %if.then.i.i118 ]
  %storemerge.i.i129 = phi i32 [ %sub13.i.i127, %if.else.i.i128 ], [ %sub.i.i117, %if.then.i.i118 ]
  store i32 %storemerge.i.i129, i32* %i_left.i.i112, align 4, !tbaa !42
  %b_transform_8x8_mode = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 53, i32 0, i32 15
  %19 = load i32, i32* %b_transform_8x8_mode, align 4, !tbaa !56
  %tobool = icmp eq i32 %19, 0
  br i1 %tobool, label %if.end, label %if.then12

if.then12:                                        ; preds = %bs_write_ue.exit130
  %b_transform_8x8 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 79
  %20 = load i32, i32* %b_transform_8x8, align 4, !tbaa !58
  %cur_bits.i98 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %shl.i99 = shl i32 %18, 1
  %or.i100 = or i32 %shl.i99, %20
  store i32 %or.i100, i32* %cur_bits.i98, align 4, !tbaa !45
  %dec.i102 = add nsw i32 %storemerge.i.i129, -1
  store i32 %dec.i102, i32* %i_left.i.i112, align 4, !tbaa !42
  %cmp.i103 = icmp eq i32 %dec.i102, 0
  br i1 %cmp.i103, label %if.then.i107, label %if.end

if.then.i107:                                     ; preds = %if.then12
  %add5.i.i104 = tail call i32 @llvm.bswap.i32(i32 %or.i100) #6
  %p.i105 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 1
  %21 = bitcast i8** %p.i105 to i32**
  %22 = load i32*, i32** %21, align 4, !tbaa !40
  store i32 %add5.i.i104, i32* %22, align 4, !tbaa !44
  %23 = load i8*, i8** %p.i105, align 4, !tbaa !40
  %add.ptr.i106 = getelementptr inbounds i8, i8* %23, i32 4
  store i8* %add.ptr.i106, i8** %p.i105, align 4, !tbaa !40
  store i32 32, i32* %i_left.i.i112, align 4, !tbaa !42
  br label %if.end

if.end:                                           ; preds = %if.then.i107, %if.then12, %bs_write_ue.exit130
  %24 = phi i32 [ 32, %if.then.i107 ], [ %dec.i102, %if.then12 ], [ %storemerge.i.i129, %bs_write_ue.exit130 ]
  %cur_bits5.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %p.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 1
  %25 = bitcast i8** %p.i to i32**
  br label %for.body

for.body:                                         ; preds = %if.end, %if.end29
  %26 = phi i32 [ %24, %if.end ], [ %42, %if.end29 ]
  %i.0131 = phi i32 [ 0, %if.end ], [ %add30, %if.end29 ]
  %arrayidx.i93 = getelementptr inbounds [51 x i8], [51 x i8]* @x264_scan8, i32 0, i32 %i.0131
  %27 = load i8, i8* %arrayidx.i93, align 1, !tbaa !44
  %conv.i94 = zext i8 %27 to i32
  %sub.i95 = add nsw i32 %conv.i94, -1
  %arrayidx1.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 0, i32 %sub.i95
  %28 = load i8, i8* %arrayidx1.i, align 1, !tbaa !44
  %conv2.i = sext i8 %28 to i32
  %sub9.i = add nsw i32 %conv.i94, -8
  %arrayidx10.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 0, i32 %sub9.i
  %29 = load i8, i8* %arrayidx10.i, align 1, !tbaa !44
  %conv11.i = sext i8 %29 to i32
  %add.i96 = add nsw i32 %conv2.i, 1
  %arrayidx12.i = getelementptr inbounds [13 x i8], [13 x i8]* @x264_mb_pred_mode4x4_fix, i32 0, i32 %add.i96
  %30 = load i8, i8* %arrayidx12.i, align 1, !tbaa !44
  %add14.i = add nsw i32 %conv11.i, 1
  %arrayidx15.i = getelementptr inbounds [13 x i8], [13 x i8]* @x264_mb_pred_mode4x4_fix, i32 0, i32 %add14.i
  %31 = load i8, i8* %arrayidx15.i, align 1, !tbaa !44
  %cmp.i97 = icmp slt i8 %30, %31
  %..i = select i1 %cmp.i97, i8 %30, i8 %31
  %cmp24.i = icmp slt i8 %..i, 0
  %narrow.i = select i1 %cmp24.i, i8 2, i8 %..i
  %arrayidx18 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 0, i32 %conv.i94
  %32 = load i8, i8* %arrayidx18, align 1, !tbaa !44
  %conv19 = sext i8 %32 to i32
  %add20 = add nsw i32 %conv19, 1
  %arrayidx21 = getelementptr inbounds [13 x i8], [13 x i8]* @x264_mb_pred_mode4x4_fix, i32 0, i32 %add20
  %33 = load i8, i8* %arrayidx21, align 1, !tbaa !44
  %cmp23 = icmp eq i8 %narrow.i, %33
  br i1 %cmp23, label %if.then25, label %if.else26

if.then25:                                        ; preds = %for.body
  %34 = load i32, i32* %cur_bits5.i, align 4, !tbaa !45
  %shl.i86 = shl i32 %34, 1
  %or.i87 = or i32 %shl.i86, 1
  store i32 %or.i87, i32* %cur_bits5.i, align 4, !tbaa !45
  %dec.i = add nsw i32 %26, -1
  store i32 %dec.i, i32* %i_left.i.i112, align 4, !tbaa !42
  %cmp.i89 = icmp eq i32 %dec.i, 0
  br i1 %cmp.i89, label %if.then.i92, label %if.end29

if.then.i92:                                      ; preds = %if.then25
  %add5.i.i = tail call i32 @llvm.bswap.i32(i32 %or.i87) #6
  %35 = load i32*, i32** %25, align 4, !tbaa !40
  store i32 %add5.i.i, i32* %35, align 4, !tbaa !44
  %36 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i91 = getelementptr inbounds i8, i8* %36, i32 4
  store i8* %add.ptr.i91, i8** %p.i, align 4, !tbaa !40
  br label %if.end29.sink.split

if.else26:                                        ; preds = %for.body
  %conv22 = sext i8 %33 to i32
  %cmp27 = icmp slt i8 %narrow.i, %33
  %37 = sext i1 %cmp27 to i32
  %sub = add nsw i32 %37, %conv22
  %cmp.i = icmp sgt i32 %26, 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.else26
  %38 = load i32, i32* %cur_bits5.i, align 4, !tbaa !45
  %shl.i = shl i32 %38, 4
  %or.i = or i32 %shl.i, %sub
  br label %bs_write.exit

if.else.i:                                        ; preds = %if.else26
  %sub4.i = sub nsw i32 4, %26
  %39 = load i32, i32* %cur_bits5.i, align 4, !tbaa !45
  %shl7.i = shl i32 %39, %26
  %shr.i = lshr i32 %sub, %sub4.i
  %or8.i = or i32 %shl7.i, %shr.i
  %add5.i.i.i = tail call i32 @llvm.bswap.i32(i32 %or8.i) #6
  %40 = load i32*, i32** %25, align 4, !tbaa !40
  store i32 %add5.i.i.i, i32* %40, align 4, !tbaa !44
  %41 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i = getelementptr inbounds i8, i8* %41, i32 4
  store i8* %add.ptr.i, i8** %p.i, align 4, !tbaa !40
  br label %bs_write.exit

bs_write.exit:                                    ; preds = %if.then.i, %if.else.i
  %or.i.sink = phi i32 [ %or.i, %if.then.i ], [ %sub, %if.else.i ]
  %.sink = phi i32 [ -4, %if.then.i ], [ 28, %if.else.i ]
  store i32 %or.i.sink, i32* %cur_bits5.i, align 4, !tbaa !45
  %sub.i = add nsw i32 %26, %.sink
  br label %if.end29.sink.split

if.end29.sink.split:                              ; preds = %bs_write.exit, %if.then.i92
  %.sink132 = phi i32 [ 32, %if.then.i92 ], [ %sub.i, %bs_write.exit ]
  store i32 %.sink132, i32* %i_left.i.i112, align 4, !tbaa !42
  br label %if.end29

if.end29:                                         ; preds = %if.end29.sink.split, %if.then25
  %42 = phi i32 [ %dec.i, %if.then25 ], [ %.sink132, %if.end29.sink.split ]
  %add30 = add nuw nsw i32 %i.0131, %cond10
  %cmp14 = icmp ult i32 %add30, 16
  br i1 %cmp14, label %for.body, label %if.end31

if.end31:                                         ; preds = %if.end29, %bs_write_ue.exit
  %43 = phi i32 [ %storemerge.i.i, %bs_write_ue.exit ], [ %42, %if.end29 ]
  %tobool32 = icmp eq i32 %chroma, 0
  br i1 %tobool32, label %if.end37, label %if.then33

if.then33:                                        ; preds = %if.end31
  %i_chroma_pred_mode = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 83
  %44 = load i32, i32* %i_chroma_pred_mode, align 4, !tbaa !64
  %arrayidx35 = getelementptr inbounds [7 x i8], [7 x i8]* @x264_mb_chroma_pred_mode_fix, i32 0, i32 %44
  %45 = load i8, i8* %arrayidx35, align 1, !tbaa !44
  %conv36 = zext i8 %45 to i32
  %add.i63 = add nuw nsw i32 %conv36, 1
  %arrayidx.i64 = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %add.i63
  %46 = load i8, i8* %arrayidx.i64, align 1, !tbaa !44
  %conv.i65 = zext i8 %46 to i32
  %i_left.i.i66 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 4
  %cmp.i.i67 = icmp sgt i32 %43, %conv.i65
  br i1 %cmp.i.i67, label %if.then.i.i72, label %if.else.i.i82

if.then.i.i72:                                    ; preds = %if.then33
  %cur_bits.i.i68 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %47 = load i32, i32* %cur_bits.i.i68, align 4, !tbaa !45
  %shl.i.i69 = shl i32 %47, %conv.i65
  %or.i.i70 = or i32 %shl.i.i69, %add.i63
  store i32 %or.i.i70, i32* %cur_bits.i.i68, align 4, !tbaa !45
  %sub.i.i71 = sub nsw i32 %43, %conv.i65
  br label %bs_write_ue.exit84

if.else.i.i82:                                    ; preds = %if.then33
  %sub4.i.i73 = sub nsw i32 %conv.i65, %43
  %cur_bits5.i.i74 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %48 = load i32, i32* %cur_bits5.i.i74, align 4, !tbaa !45
  %shl7.i.i75 = shl i32 %48, %43
  %shr.i.i76 = lshr i32 %add.i63, %sub4.i.i73
  %or8.i.i77 = or i32 %shl7.i.i75, %shr.i.i76
  %add5.i.i.i.i78 = tail call i32 @llvm.bswap.i32(i32 %or8.i.i77) #6
  %p.i.i79 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 1
  %49 = bitcast i8** %p.i.i79 to i32**
  %50 = load i32*, i32** %49, align 4, !tbaa !40
  store i32 %add5.i.i.i.i78, i32* %50, align 4, !tbaa !44
  %51 = load i8*, i8** %p.i.i79, align 4, !tbaa !40
  %add.ptr.i.i80 = getelementptr inbounds i8, i8* %51, i32 4
  store i8* %add.ptr.i.i80, i8** %p.i.i79, align 4, !tbaa !40
  store i32 %add.i63, i32* %cur_bits5.i.i74, align 4, !tbaa !45
  %sub13.i.i81 = sub nsw i32 32, %sub4.i.i73
  br label %bs_write_ue.exit84

bs_write_ue.exit84:                               ; preds = %if.then.i.i72, %if.else.i.i82
  %storemerge.i.i83 = phi i32 [ %sub13.i.i81, %if.else.i.i82 ], [ %sub.i.i71, %if.then.i.i72 ]
  store i32 %storemerge.i.i83, i32* %i_left.i.i66, align 4, !tbaa !42
  br label %if.end37

if.end37:                                         ; preds = %if.end31, %bs_write_ue.exit84
  ret void
}

; Function Attrs: nofree nounwind
define internal fastcc void @cavlc_qp_delta(%struct.x264_t* nocapture %h) unnamed_addr #2 {
entry:
  %i_qp = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 93
  %0 = load i32, i32* %i_qp, align 32, !tbaa !65
  %i_last_qp = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 95
  %1 = load i32, i32* %i_last_qp, align 8, !tbaa !66
  %sub = sub nsw i32 %0, %1
  %i_type = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 76
  %2 = load i32, i32* %i_type, align 16, !tbaa !2
  %cmp = icmp eq i32 %2, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %i_cbp_luma = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 80
  %3 = load i32, i32* %i_cbp_luma, align 32, !tbaa !55
  %i_cbp_chroma = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 81
  %4 = load i32, i32* %i_cbp_chroma, align 4, !tbaa !54
  %or = or i32 %4, %3
  %tobool = icmp eq i32 %or, 0
  br i1 %tobool, label %land.lhs.true5, label %if.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %arrayidx = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 0
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !44
  %tobool7 = icmp eq i8 %5, 0
  br i1 %tobool7, label %land.lhs.true8, label %if.end

land.lhs.true8:                                   ; preds = %land.lhs.true5
  %arrayidx13 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 40
  %6 = load i8, i8* %arrayidx13, align 1, !tbaa !44
  %tobool14 = icmp eq i8 %6, 0
  br i1 %tobool14, label %land.lhs.true15, label %if.end

land.lhs.true15:                                  ; preds = %land.lhs.true8
  %arrayidx20 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 1, i32 80
  %7 = load i8, i8* %arrayidx20, align 1, !tbaa !44
  %tobool21 = icmp eq i8 %7, 0
  %cmp27 = icmp sgt i32 %0, %1
  %or.cond = and i1 %cmp27, %tobool21
  br i1 %or.cond, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %land.lhs.true15
  store i32 %1, i32* %i_qp, align 32, !tbaa !65
  br label %if.end41.thread

if.end:                                           ; preds = %land.lhs.true15, %land.lhs.true8, %land.lhs.true5, %land.lhs.true, %entry
  %tobool32 = icmp eq i32 %sub, 0
  br i1 %tobool32, label %if.end41.thread, label %if.then33

if.then33:                                        ; preds = %if.end
  %cmp34 = icmp slt i32 %sub, -26
  %add = add nsw i32 %sub, 52
  %cmp36 = icmp sgt i32 %sub, 25
  %sub38 = add nsw i32 %sub, -52
  %spec.select = select i1 %cmp36, i32 %sub38, i32 %sub
  %i_dqp.1 = select i1 %cmp34, i32 %add, i32 %spec.select
  %mul.i = shl nsw i32 %i_dqp.1, 1
  %sub.i = sub nsw i32 1, %mul.i
  %cmp.i = icmp sgt i32 %i_dqp.1, 0
  %spec.select66 = select i1 %cmp.i, i32 %mul.i, i32 %sub.i
  br label %if.end41.thread

if.end41.thread:                                  ; preds = %if.then33, %if.end.thread, %if.end
  %8 = phi i32 [ 1, %if.end ], [ 1, %if.end.thread ], [ %spec.select66, %if.then33 ]
  %cmp2.i = icmp sgt i32 %8, 255
  %shr.i = ashr i32 %8, 8
  %size.0.i = select i1 %cmp2.i, i32 16, i32 0
  %tmp.1.i = select i1 %cmp2.i, i32 %shr.i, i32 %8
  %arrayidx.i = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %tmp.1.i
  %9 = load i8, i8* %arrayidx.i, align 1, !tbaa !44
  %conv.i = zext i8 %9 to i32
  %add.i = add nuw nsw i32 %size.0.i, %conv.i
  %i_left.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 4
  %10 = load i32, i32* %i_left.i.i, align 4, !tbaa !42
  %cmp.i.i = icmp sgt i32 %10, %add.i
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end41.thread
  %cur_bits.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %11 = load i32, i32* %cur_bits.i.i, align 4, !tbaa !45
  %shl.i.i = shl i32 %11, %add.i
  %or.i.i = or i32 %shl.i.i, %8
  store i32 %or.i.i, i32* %cur_bits.i.i, align 4, !tbaa !45
  %sub.i.i = sub nsw i32 %10, %add.i
  br label %bs_write_se.exit

if.else.i.i:                                      ; preds = %if.end41.thread
  %sub4.i.i = sub nsw i32 %add.i, %10
  %cur_bits5.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %12 = load i32, i32* %cur_bits5.i.i, align 4, !tbaa !45
  %shl7.i.i = shl i32 %12, %10
  %shr.i.i = lshr i32 %8, %sub4.i.i
  %or8.i.i = or i32 %shl7.i.i, %shr.i.i
  %add5.i.i.i.i = tail call i32 @llvm.bswap.i32(i32 %or8.i.i) #6
  %p.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 1
  %13 = bitcast i8** %p.i.i to i32**
  %14 = load i32*, i32** %13, align 4, !tbaa !40
  store i32 %add5.i.i.i.i, i32* %14, align 4, !tbaa !44
  %15 = load i8*, i8** %p.i.i, align 4, !tbaa !40
  %add.ptr.i.i = getelementptr inbounds i8, i8* %15, i32 4
  store i8* %add.ptr.i.i, i8** %p.i.i, align 4, !tbaa !40
  store i32 %8, i32* %cur_bits5.i.i, align 4, !tbaa !45
  %sub13.i.i = sub nsw i32 32, %sub4.i.i
  br label %bs_write_se.exit

bs_write_se.exit:                                 ; preds = %if.then.i.i, %if.else.i.i
  %storemerge.i.i = phi i32 [ %sub13.i.i, %if.else.i.i ], [ %sub.i.i, %if.then.i.i ]
  store i32 %storemerge.i.i, i32* %i_left.i.i, align 4, !tbaa !42
  ret void
}

; Function Attrs: nounwind
define internal fastcc i32 @cavlc_block_residual_internal(%struct.x264_t* %h, i32 %ctx_block_cat, i16* %l, i32 %nC) unnamed_addr #0 {
entry:
  %runlevel = alloca %struct.x264_run_level_t, align 16
  %0 = bitcast %struct.x264_run_level_t* %runlevel to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #6
  %arrayidx = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 98, i32 19, i32 %ctx_block_cat
  %1 = load i32 (i16*, %struct.x264_run_level_t*)*, i32 (i16*, %struct.x264_run_level_t*)** %arrayidx, align 4, !tbaa !48
  %call = call i32 %1(i16* %l, %struct.x264_run_level_t* nonnull %runlevel) #6
  %mask = getelementptr inbounds %struct.x264_run_level_t, %struct.x264_run_level_t* %runlevel, i32 0, i32 1
  %2 = load i32, i32* %mask, align 4, !tbaa !67
  %arrayidx1 = getelementptr inbounds [65536 x i32], [65536 x i32]* @x264_8_run_before, i32 0, i32 %2
  %3 = bitcast i32* %arrayidx1 to i8*
  call void @llvm.prefetch.p0i8(i8* nonnull %3, i32 0, i32 3, i32 1)
  %last = getelementptr inbounds %struct.x264_run_level_t, %struct.x264_run_level_t* %runlevel, i32 0, i32 0
  %4 = load i32, i32* %last, align 16, !tbaa !69
  %add = sub i32 1, %call
  %sub = add i32 %add, %4
  %arrayidx3 = getelementptr inbounds %struct.x264_run_level_t, %struct.x264_run_level_t* %runlevel, i32 0, i32 3, i32 %call
  store i16 2, i16* %arrayidx3, align 2, !tbaa !70
  %add5 = add nsw i32 %call, 1
  %arrayidx6 = getelementptr inbounds %struct.x264_run_level_t, %struct.x264_run_level_t* %runlevel, i32 0, i32 3, i32 %add5
  store i16 2, i16* %arrayidx6, align 2, !tbaa !70
  %arrayidx8 = getelementptr inbounds %struct.x264_run_level_t, %struct.x264_run_level_t* %runlevel, i32 0, i32 3, i32 0
  %5 = load i16, i16* %arrayidx8, align 16, !tbaa !70
  %conv = sext i16 %5 to i32
  %add9 = add nsw i32 %conv, 1
  %sub13 = sub nsw i32 1, %conv
  %or = or i32 %add9, %sub13
  %shr251 = lshr i32 %or, 31
  %arrayidx15 = getelementptr inbounds %struct.x264_run_level_t, %struct.x264_run_level_t* %runlevel, i32 0, i32 3, i32 1
  %6 = load i16, i16* %arrayidx15, align 2, !tbaa !70
  %conv16 = sext i16 %6 to i32
  %add17 = add nsw i32 %conv16, 1
  %sub21 = sub nsw i32 1, %conv16
  %or22 = or i32 %add17, %sub21
  %shr23 = ashr i32 %or22, 31
  %and24 = and i32 %shr23, 2
  %or25 = or i32 %and24, %shr251
  %arrayidx27 = getelementptr inbounds %struct.x264_run_level_t, %struct.x264_run_level_t* %runlevel, i32 0, i32 3, i32 2
  %7 = load i16, i16* %arrayidx27, align 4, !tbaa !70
  %conv28 = sext i16 %7 to i32
  %add29 = add nsw i32 %conv28, 1
  %sub33 = sub nsw i32 1, %conv28
  %or34 = or i32 %add29, %sub33
  %shr35 = ashr i32 %or34, 31
  %and36 = and i32 %shr35, 4
  %or37 = or i32 %or25, %and36
  %arrayidx38 = getelementptr inbounds [8 x i8], [8 x i8]* @cavlc_block_residual_internal.ctz_index, i32 0, i32 %or37
  %8 = load i8, i8* %arrayidx38, align 1, !tbaa !44
  %conv39 = zext i8 %8 to i32
  %shr43252 = lshr i32 %conv28, 31
  %shr48 = ashr i32 %conv16, 31
  %and49 = and i32 %shr48, 2
  %shr54 = ashr i32 %conv, 31
  %and55 = and i32 %shr54, 4
  %or50 = or i32 %and49, %and55
  %or56 = or i32 %or50, %shr43252
  %sub57 = sub nsw i32 3, %conv39
  %shr58 = lshr i32 %or56, %sub57
  %sub60 = add nsw i32 %call, -1
  %i_size = getelementptr inbounds [6 x [16 x [4 x %struct.vlc_t]]], [6 x [16 x [4 x %struct.vlc_t]]]* @x264_coeff_token, i32 0, i32 %nC, i32 %sub60, i32 %conv39, i32 1
  %9 = load i8, i8* %i_size, align 1, !tbaa !59
  %conv63 = zext i8 %9 to i32
  %i_bits = getelementptr inbounds [6 x [16 x [4 x %struct.vlc_t]]], [6 x [16 x [4 x %struct.vlc_t]]]* @x264_coeff_token, i32 0, i32 %nC, i32 %sub60, i32 %conv39, i32 0
  %10 = load i8, i8* %i_bits, align 1, !tbaa !61
  %conv68 = zext i8 %10 to i32
  %i_left.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 4
  %11 = load i32, i32* %i_left.i, align 4, !tbaa !42
  %cmp.i = icmp sgt i32 %11, %conv63
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %cur_bits.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %12 = load i32, i32* %cur_bits.i, align 4, !tbaa !45
  %shl.i = shl i32 %12, %conv63
  %or.i = or i32 %shl.i, %conv68
  store i32 %or.i, i32* %cur_bits.i, align 4, !tbaa !45
  %sub.i = sub nsw i32 %11, %conv63
  br label %bs_write.exit

if.else.i:                                        ; preds = %entry
  %sub4.i = sub nsw i32 %conv63, %11
  %cur_bits5.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %13 = load i32, i32* %cur_bits5.i, align 4, !tbaa !45
  %shl7.i = shl i32 %13, %11
  %shr.i = lshr i32 %conv68, %sub4.i
  %or8.i = or i32 %shl7.i, %shr.i
  %add5.i.i.i = call i32 @llvm.bswap.i32(i32 %or8.i) #6
  %p.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 1
  %14 = bitcast i8** %p.i to i32**
  %15 = load i32*, i32** %14, align 4, !tbaa !40
  store i32 %add5.i.i.i, i32* %15, align 4, !tbaa !44
  %16 = load i8*, i8** %p.i, align 4, !tbaa !40
  %add.ptr.i = getelementptr inbounds i8, i8* %16, i32 4
  store i8* %add.ptr.i, i8** %p.i, align 4, !tbaa !40
  store i32 %conv68, i32* %cur_bits5.i, align 4, !tbaa !45
  %sub13.i = sub nsw i32 32, %sub4.i
  br label %bs_write.exit

bs_write.exit:                                    ; preds = %if.then.i, %if.else.i
  %17 = phi i32 [ %conv68, %if.else.i ], [ %or.i, %if.then.i ]
  %storemerge.i = phi i32 [ %sub13.i, %if.else.i ], [ %sub.i, %if.then.i ]
  store i32 %storemerge.i, i32* %i_left.i, align 4, !tbaa !42
  %cmp = icmp sgt i32 %call, 10
  %cmp70 = icmp ne i32 %or37, 0
  %18 = and i1 %cmp, %cmp70
  %land.ext = zext i1 %18 to i32
  %cmp.i523 = icmp sgt i32 %storemerge.i, %conv39
  br i1 %cmp.i523, label %if.then.i528, label %if.else.i538

if.then.i528:                                     ; preds = %bs_write.exit
  %cur_bits.i524 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %shl.i525 = shl i32 %17, %conv39
  %or.i526 = or i32 %shl.i525, %shr58
  store i32 %or.i526, i32* %cur_bits.i524, align 4, !tbaa !45
  %sub.i527 = sub nsw i32 %storemerge.i, %conv39
  br label %bs_write.exit540

if.else.i538:                                     ; preds = %bs_write.exit
  %sub4.i529 = sub nsw i32 %conv39, %storemerge.i
  %cur_bits5.i530 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %shl7.i531 = shl i32 %17, %storemerge.i
  %shr.i532 = lshr i32 %shr58, %sub4.i529
  %or8.i533 = or i32 %shl7.i531, %shr.i532
  %add5.i.i.i534 = call i32 @llvm.bswap.i32(i32 %or8.i533) #6
  %p.i535 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 1
  %19 = bitcast i8** %p.i535 to i32**
  %20 = load i32*, i32** %19, align 4, !tbaa !40
  store i32 %add5.i.i.i534, i32* %20, align 4, !tbaa !44
  %21 = load i8*, i8** %p.i535, align 4, !tbaa !40
  %add.ptr.i536 = getelementptr inbounds i8, i8* %21, i32 4
  store i8* %add.ptr.i536, i8** %p.i535, align 4, !tbaa !40
  store i32 %shr58, i32* %cur_bits5.i530, align 4, !tbaa !45
  %sub13.i537 = sub nsw i32 32, %sub4.i529
  br label %bs_write.exit540

bs_write.exit540:                                 ; preds = %if.then.i528, %if.else.i538
  %22 = phi i32 [ %shr58, %if.else.i538 ], [ %or.i526, %if.then.i528 ]
  %storemerge.i539 = phi i32 [ %sub13.i537, %if.else.i538 ], [ %sub.i527, %if.then.i528 ]
  store i32 %storemerge.i539, i32* %i_left.i, align 4, !tbaa !42
  %cmp72 = icmp sgt i32 %call, %conv39
  br i1 %cmp72, label %if.then, label %if.end131

if.then:                                          ; preds = %bs_write.exit540
  %arrayidx75 = getelementptr inbounds %struct.x264_run_level_t, %struct.x264_run_level_t* %runlevel, i32 0, i32 3, i32 %conv39
  %23 = load i16, i16* %arrayidx75, align 2, !tbaa !70
  %conv76 = sext i16 %23 to i32
  %add80 = add nsw i32 %conv76, 64
  %shr81 = ashr i32 %conv76, 31
  %or82 = or i32 %shr81, 1
  %and86 = select i1 %cmp70, i32 %or82, i32 0
  %sub87 = sub nsw i32 %conv76, %and86
  %cmp89 = icmp ult i32 %add80, 128
  br i1 %cmp89, label %if.then91, label %if.else

if.then91:                                        ; preds = %if.then
  %add88 = add nsw i32 %sub87, 64
  %i_size94 = getelementptr inbounds [7 x [128 x %struct.vlc_large_t]], [7 x [128 x %struct.vlc_large_t]]* @x264_8_level_token, i32 0, i32 %land.ext, i32 %add88, i32 1
  %24 = load i8, i8* %i_size94, align 2, !tbaa !72
  %conv95 = zext i8 %24 to i32
  %i_bits98 = getelementptr inbounds [7 x [128 x %struct.vlc_large_t]], [7 x [128 x %struct.vlc_large_t]]* @x264_8_level_token, i32 0, i32 %land.ext, i32 %add88, i32 0
  %25 = load i16, i16* %i_bits98, align 2, !tbaa !74
  %conv99 = zext i16 %25 to i32
  %cmp.i504 = icmp sgt i32 %storemerge.i539, %conv95
  br i1 %cmp.i504, label %if.then.i509, label %if.else.i519

if.then.i509:                                     ; preds = %if.then91
  %cur_bits.i505 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %shl.i506 = shl i32 %22, %conv95
  %or.i507 = or i32 %shl.i506, %conv99
  store i32 %or.i507, i32* %cur_bits.i505, align 4, !tbaa !45
  %sub.i508 = sub nsw i32 %storemerge.i539, %conv95
  br label %bs_write.exit521

if.else.i519:                                     ; preds = %if.then91
  %sub4.i510 = sub nsw i32 %conv95, %storemerge.i539
  %cur_bits5.i511 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %shl7.i512 = shl i32 %22, %storemerge.i539
  %shr.i513 = lshr i32 %conv99, %sub4.i510
  %or8.i514 = or i32 %shl7.i512, %shr.i513
  %add5.i.i.i515 = call i32 @llvm.bswap.i32(i32 %or8.i514) #6
  %p.i516 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 1
  %26 = bitcast i8** %p.i516 to i32**
  %27 = load i32*, i32** %26, align 4, !tbaa !40
  store i32 %add5.i.i.i515, i32* %27, align 4, !tbaa !44
  %28 = load i8*, i8** %p.i516, align 4, !tbaa !40
  %add.ptr.i517 = getelementptr inbounds i8, i8* %28, i32 4
  store i8* %add.ptr.i517, i8** %p.i516, align 4, !tbaa !40
  store i32 %conv99, i32* %cur_bits5.i511, align 4, !tbaa !45
  %sub13.i518 = sub nsw i32 32, %sub4.i510
  br label %bs_write.exit521

bs_write.exit521:                                 ; preds = %if.then.i509, %if.else.i519
  %29 = phi i32 [ %conv99, %if.else.i519 ], [ %or.i507, %if.then.i509 ]
  %storemerge.i520 = phi i32 [ %sub13.i518, %if.else.i519 ], [ %sub.i508, %if.then.i509 ]
  store i32 %storemerge.i520, i32* %i_left.i, align 4, !tbaa !42
  %i_next = getelementptr inbounds [7 x [128 x %struct.vlc_large_t]], [7 x [128 x %struct.vlc_large_t]]* @x264_8_level_token, i32 0, i32 %land.ext, i32 %add80, i32 2
  %30 = load i8, i8* %i_next, align 1, !tbaa !75
  %conv102 = zext i8 %30 to i32
  br label %if.end

if.else:                                          ; preds = %if.then
  %shr.i394 = ashr i32 %sub87, 31
  %xor.i395 = xor i32 %shr.i394, %sub87
  %sub.i396 = sub nsw i32 %xor.i395, %shr.i394
  %mul.i397 = shl nsw i32 %sub.i396, 1
  %sub1.i398 = sub nsw i32 %mul.i397, %shr.i394
  %sub2.i399 = add nsw i32 %sub1.i398, -2
  %shr3.i400 = ashr i32 %sub2.i399, %land.ext
  %cmp.i401 = icmp slt i32 %shr3.i400, 15
  br i1 %cmp.i401, label %if.then.i408, label %if.else.i415

if.then.i408:                                     ; preds = %if.else
  %add.i402 = select i1 %18, i32 2, i32 1
  %add5.i403 = add nsw i32 %shr3.i400, %add.i402
  %shl.i404 = shl nuw nsw i32 1, %land.ext
  %sub7.i405 = add nsw i32 %shl.i404, -1
  %and.i406 = and i32 %sub2.i399, %sub7.i405
  %add8.i407 = add nuw nsw i32 %and.i406, %shl.i404
  %cmp.i485 = icmp sgt i32 %storemerge.i539, %add5.i403
  br i1 %cmp.i485, label %if.then.i490, label %if.else.i500

if.then.i490:                                     ; preds = %if.then.i408
  %cur_bits.i486 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %shl.i487 = shl i32 %22, %add5.i403
  %or.i488 = or i32 %shl.i487, %add8.i407
  store i32 %or.i488, i32* %cur_bits.i486, align 4, !tbaa !45
  %sub.i489 = sub nsw i32 %storemerge.i539, %add5.i403
  br label %cavlc_block_residual_escape.exit445

if.else.i500:                                     ; preds = %if.then.i408
  %sub4.i491 = sub nsw i32 %add5.i403, %storemerge.i539
  %cur_bits5.i492 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %shl7.i493 = shl i32 %22, %storemerge.i539
  %shr.i494 = lshr i32 %add8.i407, %sub4.i491
  %or8.i495 = or i32 %shl7.i493, %shr.i494
  %add5.i.i.i496 = call i32 @llvm.bswap.i32(i32 %or8.i495) #6
  %p.i497 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 1
  %31 = bitcast i8** %p.i497 to i32**
  %32 = load i32*, i32** %31, align 4, !tbaa !40
  store i32 %add5.i.i.i496, i32* %32, align 4, !tbaa !44
  %33 = load i8*, i8** %p.i497, align 4, !tbaa !40
  %add.ptr.i498 = getelementptr inbounds i8, i8* %33, i32 4
  store i8* %add.ptr.i498, i8** %p.i497, align 4, !tbaa !40
  store i32 %add8.i407, i32* %cur_bits5.i492, align 4, !tbaa !45
  %sub13.i499 = sub nsw i32 32, %sub4.i491
  br label %cavlc_block_residual_escape.exit445

if.else.i415:                                     ; preds = %if.else
  %shl9.i409 = shl nuw nsw i32 15, %land.ext
  %sub10.i410 = sub nsw i32 %sub2.i399, %shl9.i409
  %sub13.i412 = add nsw i32 %sub10.i410, -15
  %spec.select.i413 = select i1 %18, i32 %sub10.i410, i32 %sub13.i412
  %cmp14.i414 = icmp sgt i32 %spec.select.i413, 4095
  br i1 %cmp14.i414, label %if.then15.i418, label %if.end26.i437

if.then15.i418:                                   ; preds = %if.else.i415
  %i_profile_idc.i416 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 1
  %34 = load i32, i32* %i_profile_idc.i416, align 4, !tbaa !76
  %cmp16.i417 = icmp sgt i32 %34, 99
  br i1 %cmp16.i417, label %while.body.i427, label %if.else24.i429

while.body.i427:                                  ; preds = %if.then15.i418, %while.body.i427
  %shl1984.i419 = phi i32 [ %shl19.i425, %while.body.i427 ], [ 4096, %if.then15.i418 ]
  %i_level_code.183.i420 = phi i32 [ %sub23.i422, %while.body.i427 ], [ %spec.select.i413, %if.then15.i418 ]
  %i_level_prefix.082.i421 = phi i32 [ %inc.i423, %while.body.i427 ], [ 15, %if.then15.i418 ]
  %sub23.i422 = sub nsw i32 %i_level_code.183.i420, %shl1984.i419
  %inc.i423 = add nuw nsw i32 %i_level_prefix.082.i421, 1
  %sub18.i424 = add nsw i32 %i_level_prefix.082.i421, -2
  %shl19.i425 = shl nuw i32 1, %sub18.i424
  %cmp20.i426 = icmp slt i32 %sub23.i422, %shl19.i425
  br i1 %cmp20.i426, label %if.end26.i437, label %while.body.i427

if.else24.i429:                                   ; preds = %if.then15.i418
  %b_overflow.i428 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 89
  store i32 1, i32* %b_overflow.i428, align 4, !tbaa !77
  br label %if.end26.i437

if.end26.i437:                                    ; preds = %while.body.i427, %if.else24.i429, %if.else.i415
  %i_level_prefix.1.i430 = phi i32 [ 15, %if.else24.i429 ], [ 15, %if.else.i415 ], [ %inc.i423, %while.body.i427 ]
  %i_level_code.2.i431 = phi i32 [ %spec.select.i413, %if.else24.i429 ], [ %spec.select.i413, %if.else.i415 ], [ %sub23.i422, %while.body.i427 ]
  %add27.i432 = add nuw nsw i32 %i_level_prefix.1.i430, 1
  %cmp.i466 = icmp sgt i32 %storemerge.i539, %add27.i432
  br i1 %cmp.i466, label %if.then.i471, label %if.else.i481

if.then.i471:                                     ; preds = %if.end26.i437
  %cur_bits.i467 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %shl.i468 = shl i32 %22, %add27.i432
  %or.i469 = or i32 %shl.i468, 1
  store i32 %or.i469, i32* %cur_bits.i467, align 4, !tbaa !45
  %sub.i470 = sub nsw i32 %storemerge.i539, %add27.i432
  br label %bs_write.exit483

if.else.i481:                                     ; preds = %if.end26.i437
  %sub4.i472 = sub nsw i32 %add27.i432, %storemerge.i539
  %cur_bits5.i473 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %shl7.i474 = shl i32 %22, %storemerge.i539
  %shr.i475 = lshr i32 1, %sub4.i472
  %or8.i476 = or i32 %shl7.i474, %shr.i475
  %add5.i.i.i477 = call i32 @llvm.bswap.i32(i32 %or8.i476) #6
  %p.i478 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 1
  %35 = bitcast i8** %p.i478 to i32**
  %36 = load i32*, i32** %35, align 4, !tbaa !40
  store i32 %add5.i.i.i477, i32* %36, align 4, !tbaa !44
  %37 = load i8*, i8** %p.i478, align 4, !tbaa !40
  %add.ptr.i479 = getelementptr inbounds i8, i8* %37, i32 4
  store i8* %add.ptr.i479, i8** %p.i478, align 4, !tbaa !40
  store i32 1, i32* %cur_bits5.i473, align 4, !tbaa !45
  %sub13.i480 = sub nsw i32 32, %sub4.i472
  br label %bs_write.exit483

bs_write.exit483:                                 ; preds = %if.then.i471, %if.else.i481
  %38 = phi i32 [ 1, %if.else.i481 ], [ %or.i469, %if.then.i471 ]
  %storemerge.i482 = phi i32 [ %sub13.i480, %if.else.i481 ], [ %sub.i470, %if.then.i471 ]
  store i32 %storemerge.i482, i32* %i_left.i, align 4, !tbaa !42
  %sub28.i433 = add nsw i32 %i_level_prefix.1.i430, -3
  %notmask.i434 = shl nsw i32 -1, %sub28.i433
  %sub31.i435 = xor i32 %notmask.i434, -1
  %and32.i436 = and i32 %i_level_code.2.i431, %sub31.i435
  %cmp.i447 = icmp sgt i32 %storemerge.i482, %sub28.i433
  br i1 %cmp.i447, label %if.then.i452, label %if.else.i462

if.then.i452:                                     ; preds = %bs_write.exit483
  %cur_bits.i448 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %shl.i449 = shl i32 %38, %sub28.i433
  %or.i450 = or i32 %shl.i449, %and32.i436
  store i32 %or.i450, i32* %cur_bits.i448, align 4, !tbaa !45
  %sub.i451 = sub nsw i32 %storemerge.i482, %sub28.i433
  br label %cavlc_block_residual_escape.exit445

if.else.i462:                                     ; preds = %bs_write.exit483
  %sub4.i453 = sub nsw i32 %sub28.i433, %storemerge.i482
  %cur_bits5.i454 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %shl7.i455 = shl i32 %38, %storemerge.i482
  %shr.i456 = lshr i32 %and32.i436, %sub4.i453
  %or8.i457 = or i32 %shl7.i455, %shr.i456
  %add5.i.i.i458 = call i32 @llvm.bswap.i32(i32 %or8.i457) #6
  %p.i459 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 1
  %39 = bitcast i8** %p.i459 to i32**
  %40 = load i32*, i32** %39, align 4, !tbaa !40
  store i32 %add5.i.i.i458, i32* %40, align 4, !tbaa !44
  %41 = load i8*, i8** %p.i459, align 4, !tbaa !40
  %add.ptr.i460 = getelementptr inbounds i8, i8* %41, i32 4
  store i8* %add.ptr.i460, i8** %p.i459, align 4, !tbaa !40
  store i32 %and32.i436, i32* %cur_bits5.i454, align 4, !tbaa !45
  %sub13.i461 = sub nsw i32 32, %sub4.i453
  br label %cavlc_block_residual_escape.exit445

cavlc_block_residual_escape.exit445:              ; preds = %if.else.i462, %if.then.i452, %if.else.i500, %if.then.i490
  %42 = phi i32 [ %add8.i407, %if.else.i500 ], [ %or.i488, %if.then.i490 ], [ %and32.i436, %if.else.i462 ], [ %or.i450, %if.then.i452 ]
  %storemerge = phi i32 [ %sub13.i499, %if.else.i500 ], [ %sub.i489, %if.then.i490 ], [ %sub13.i461, %if.else.i462 ], [ %sub.i451, %if.then.i452 ]
  store i32 %storemerge, i32* %i_left.i, align 4, !tbaa !42
  %cmp38.i442 = icmp sgt i32 %sub.i396, 3
  %i_suffix_length.addr.1.i444 = select i1 %cmp38.i442, i32 2, i32 1
  br label %if.end

if.end:                                           ; preds = %cavlc_block_residual_escape.exit445, %bs_write.exit521
  %43 = phi i32 [ %29, %bs_write.exit521 ], [ %42, %cavlc_block_residual_escape.exit445 ]
  %44 = phi i32 [ %storemerge.i520, %bs_write.exit521 ], [ %storemerge, %cavlc_block_residual_escape.exit445 ]
  %i_suffix_length.0 = phi i32 [ %conv102, %bs_write.exit521 ], [ %i_suffix_length.addr.1.i444, %cavlc_block_residual_escape.exit445 ]
  %i.0542 = add nuw nsw i32 %conv39, 1
  %cmp106543 = icmp slt i32 %i.0542, %call
  br i1 %cmp106543, label %for.body.lr.ph, label %if.end131

for.body.lr.ph:                                   ; preds = %if.end
  %i_profile_idc.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 1
  %b_overflow.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 89
  %cur_bits5.i344 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %p.i349 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 1
  %45 = bitcast i8** %p.i349 to i32**
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %46 = phi i32 [ %43, %for.body.lr.ph ], [ %65, %for.inc ]
  %47 = phi i32 [ %44, %for.body.lr.ph ], [ %66, %for.inc ]
  %i.0546 = phi i32 [ %i.0542, %for.body.lr.ph ], [ %i.0, %for.inc ]
  %i_suffix_length.1544 = phi i32 [ %i_suffix_length.0, %for.body.lr.ph ], [ %i_suffix_length.2, %for.inc ]
  %arrayidx109 = getelementptr inbounds %struct.x264_run_level_t, %struct.x264_run_level_t* %runlevel, i32 0, i32 3, i32 %i.0546
  %48 = load i16, i16* %arrayidx109, align 2, !tbaa !70
  %conv110 = sext i16 %48 to i32
  %add111 = add nsw i32 %conv110, 64
  %cmp112 = icmp ult i32 %add111, 128
  br i1 %cmp112, label %if.then114, label %if.else127

if.then114:                                       ; preds = %for.body
  %i_size117 = getelementptr inbounds [7 x [128 x %struct.vlc_large_t]], [7 x [128 x %struct.vlc_large_t]]* @x264_8_level_token, i32 0, i32 %i_suffix_length.1544, i32 %add111, i32 1
  %49 = load i8, i8* %i_size117, align 2, !tbaa !72
  %conv118 = zext i8 %49 to i32
  %i_bits121 = getelementptr inbounds [7 x [128 x %struct.vlc_large_t]], [7 x [128 x %struct.vlc_large_t]]* @x264_8_level_token, i32 0, i32 %i_suffix_length.1544, i32 %add111, i32 0
  %50 = load i16, i16* %i_bits121, align 2, !tbaa !74
  %conv122 = zext i16 %50 to i32
  %cmp.i375 = icmp sgt i32 %47, %conv118
  br i1 %cmp.i375, label %if.then.i380, label %if.else.i390

if.then.i380:                                     ; preds = %if.then114
  %shl.i377 = shl i32 %46, %conv118
  %or.i378 = or i32 %shl.i377, %conv122
  store i32 %or.i378, i32* %cur_bits5.i344, align 4, !tbaa !45
  %sub.i379 = sub nsw i32 %47, %conv118
  br label %bs_write.exit392

if.else.i390:                                     ; preds = %if.then114
  %sub4.i381 = sub nsw i32 %conv118, %47
  %shl7.i383 = shl i32 %46, %47
  %shr.i384 = lshr i32 %conv122, %sub4.i381
  %or8.i385 = or i32 %shl7.i383, %shr.i384
  %add5.i.i.i386 = call i32 @llvm.bswap.i32(i32 %or8.i385) #6
  %51 = load i32*, i32** %45, align 4, !tbaa !40
  store i32 %add5.i.i.i386, i32* %51, align 4, !tbaa !44
  %52 = load i8*, i8** %p.i349, align 4, !tbaa !40
  %add.ptr.i388 = getelementptr inbounds i8, i8* %52, i32 4
  store i8* %add.ptr.i388, i8** %p.i349, align 4, !tbaa !40
  store i32 %conv122, i32* %cur_bits5.i344, align 4, !tbaa !45
  %sub13.i389 = sub nsw i32 32, %sub4.i381
  br label %bs_write.exit392

bs_write.exit392:                                 ; preds = %if.then.i380, %if.else.i390
  %53 = phi i32 [ %conv122, %if.else.i390 ], [ %or.i378, %if.then.i380 ]
  %storemerge.i391 = phi i32 [ %sub13.i389, %if.else.i390 ], [ %sub.i379, %if.then.i380 ]
  store i32 %storemerge.i391, i32* %i_left.i, align 4, !tbaa !42
  %i_next125 = getelementptr inbounds [7 x [128 x %struct.vlc_large_t]], [7 x [128 x %struct.vlc_large_t]]* @x264_8_level_token, i32 0, i32 %i_suffix_length.1544, i32 %add111, i32 2
  %54 = load i8, i8* %i_next125, align 1, !tbaa !75
  %conv126 = zext i8 %54 to i32
  br label %for.inc

if.else127:                                       ; preds = %for.body
  %shr.i310 = ashr i32 %conv110, 31
  %xor.i = xor i32 %shr.i310, %conv110
  %sub.i311 = sub nsw i32 %xor.i, %shr.i310
  %mul.i = shl nsw i32 %sub.i311, 1
  %sub1.i = sub nsw i32 %mul.i, %shr.i310
  %sub2.i = add nsw i32 %sub1.i, -2
  %shr3.i = ashr i32 %sub2.i, %i_suffix_length.1544
  %cmp.i312 = icmp slt i32 %shr3.i, 15
  br i1 %cmp.i312, label %if.then.i314, label %if.else.i316

if.then.i314:                                     ; preds = %if.else127
  %add.i = add i32 %i_suffix_length.1544, 1
  %add5.i = add i32 %add.i, %shr3.i
  %shl.i313 = shl nuw i32 1, %i_suffix_length.1544
  %sub7.i = add nsw i32 %shl.i313, -1
  %and.i = and i32 %sub2.i, %sub7.i
  %add8.i = add nsw i32 %and.i, %shl.i313
  %cmp.i356 = icmp sgt i32 %47, %add5.i
  br i1 %cmp.i356, label %if.then.i361, label %if.else.i371

if.then.i361:                                     ; preds = %if.then.i314
  %shl.i358 = shl i32 %46, %add5.i
  %or.i359 = or i32 %shl.i358, %add8.i
  store i32 %or.i359, i32* %cur_bits5.i344, align 4, !tbaa !45
  %sub.i360 = sub nsw i32 %47, %add5.i
  br label %cavlc_block_residual_escape.exit

if.else.i371:                                     ; preds = %if.then.i314
  %sub4.i362 = sub nsw i32 %add5.i, %47
  %shl7.i364 = shl i32 %46, %47
  %shr.i365 = lshr i32 %add8.i, %sub4.i362
  %or8.i366 = or i32 %shl7.i364, %shr.i365
  %add5.i.i.i367 = call i32 @llvm.bswap.i32(i32 %or8.i366) #6
  %55 = load i32*, i32** %45, align 4, !tbaa !40
  store i32 %add5.i.i.i367, i32* %55, align 4, !tbaa !44
  %56 = load i8*, i8** %p.i349, align 4, !tbaa !40
  %add.ptr.i369 = getelementptr inbounds i8, i8* %56, i32 4
  store i8* %add.ptr.i369, i8** %p.i349, align 4, !tbaa !40
  store i32 %add8.i, i32* %cur_bits5.i344, align 4, !tbaa !45
  %sub13.i370 = sub nsw i32 32, %sub4.i362
  br label %cavlc_block_residual_escape.exit

if.else.i316:                                     ; preds = %if.else127
  %shl9.i = shl i32 15, %i_suffix_length.1544
  %sub10.i = sub nsw i32 %sub2.i, %shl9.i
  %cmp11.i = icmp eq i32 %i_suffix_length.1544, 0
  %sub13.i315 = add nsw i32 %sub10.i, -15
  %spec.select.i = select i1 %cmp11.i, i32 %sub13.i315, i32 %sub10.i
  %cmp14.i = icmp sgt i32 %spec.select.i, 4095
  br i1 %cmp14.i, label %if.then15.i, label %if.end26.i

if.then15.i:                                      ; preds = %if.else.i316
  %57 = load i32, i32* %i_profile_idc.i, align 4, !tbaa !76
  %cmp16.i = icmp sgt i32 %57, 99
  br i1 %cmp16.i, label %while.body.i, label %if.else24.i

while.body.i:                                     ; preds = %if.then15.i, %while.body.i
  %shl1984.i = phi i32 [ %shl19.i, %while.body.i ], [ 4096, %if.then15.i ]
  %i_level_code.183.i = phi i32 [ %sub23.i, %while.body.i ], [ %spec.select.i, %if.then15.i ]
  %i_level_prefix.082.i = phi i32 [ %inc.i, %while.body.i ], [ 15, %if.then15.i ]
  %sub23.i = sub nsw i32 %i_level_code.183.i, %shl1984.i
  %inc.i = add nuw nsw i32 %i_level_prefix.082.i, 1
  %sub18.i = add nsw i32 %i_level_prefix.082.i, -2
  %shl19.i = shl nuw i32 1, %sub18.i
  %cmp20.i = icmp slt i32 %sub23.i, %shl19.i
  br i1 %cmp20.i, label %if.end26.i, label %while.body.i

if.else24.i:                                      ; preds = %if.then15.i
  store i32 1, i32* %b_overflow.i, align 4, !tbaa !77
  br label %if.end26.i

if.end26.i:                                       ; preds = %while.body.i, %if.else24.i, %if.else.i316
  %i_level_prefix.1.i = phi i32 [ 15, %if.else24.i ], [ 15, %if.else.i316 ], [ %inc.i, %while.body.i ]
  %i_level_code.2.i = phi i32 [ %spec.select.i, %if.else24.i ], [ %spec.select.i, %if.else.i316 ], [ %sub23.i, %while.body.i ]
  %add27.i = add nuw nsw i32 %i_level_prefix.1.i, 1
  %cmp.i337 = icmp sgt i32 %47, %add27.i
  br i1 %cmp.i337, label %if.then.i342, label %if.else.i352

if.then.i342:                                     ; preds = %if.end26.i
  %shl.i339 = shl i32 %46, %add27.i
  %or.i340 = or i32 %shl.i339, 1
  store i32 %or.i340, i32* %cur_bits5.i344, align 4, !tbaa !45
  %sub.i341 = sub nsw i32 %47, %add27.i
  br label %bs_write.exit354

if.else.i352:                                     ; preds = %if.end26.i
  %sub4.i343 = sub nsw i32 %add27.i, %47
  %shl7.i345 = shl i32 %46, %47
  %shr.i346 = lshr i32 1, %sub4.i343
  %or8.i347 = or i32 %shl7.i345, %shr.i346
  %add5.i.i.i348 = call i32 @llvm.bswap.i32(i32 %or8.i347) #6
  %58 = load i32*, i32** %45, align 4, !tbaa !40
  store i32 %add5.i.i.i348, i32* %58, align 4, !tbaa !44
  %59 = load i8*, i8** %p.i349, align 4, !tbaa !40
  %add.ptr.i350 = getelementptr inbounds i8, i8* %59, i32 4
  store i8* %add.ptr.i350, i8** %p.i349, align 4, !tbaa !40
  store i32 1, i32* %cur_bits5.i344, align 4, !tbaa !45
  %sub13.i351 = sub nsw i32 32, %sub4.i343
  br label %bs_write.exit354

bs_write.exit354:                                 ; preds = %if.then.i342, %if.else.i352
  %60 = phi i32 [ 1, %if.else.i352 ], [ %or.i340, %if.then.i342 ]
  %storemerge.i353 = phi i32 [ %sub13.i351, %if.else.i352 ], [ %sub.i341, %if.then.i342 ]
  store i32 %storemerge.i353, i32* %i_left.i, align 4, !tbaa !42
  %sub28.i = add nsw i32 %i_level_prefix.1.i, -3
  %notmask.i = shl nsw i32 -1, %sub28.i
  %sub31.i = xor i32 %notmask.i, -1
  %and32.i = and i32 %i_level_code.2.i, %sub31.i
  %cmp.i318 = icmp sgt i32 %storemerge.i353, %sub28.i
  br i1 %cmp.i318, label %if.then.i323, label %if.else.i333

if.then.i323:                                     ; preds = %bs_write.exit354
  %shl.i320 = shl i32 %60, %sub28.i
  %or.i321 = or i32 %shl.i320, %and32.i
  store i32 %or.i321, i32* %cur_bits5.i344, align 4, !tbaa !45
  %sub.i322 = sub nsw i32 %storemerge.i353, %sub28.i
  br label %cavlc_block_residual_escape.exit

if.else.i333:                                     ; preds = %bs_write.exit354
  %sub4.i324 = sub nsw i32 %sub28.i, %storemerge.i353
  %shl7.i326 = shl i32 %60, %storemerge.i353
  %shr.i327 = lshr i32 %and32.i, %sub4.i324
  %or8.i328 = or i32 %shl7.i326, %shr.i327
  %add5.i.i.i329 = call i32 @llvm.bswap.i32(i32 %or8.i328) #6
  %61 = load i32*, i32** %45, align 4, !tbaa !40
  store i32 %add5.i.i.i329, i32* %61, align 4, !tbaa !44
  %62 = load i8*, i8** %p.i349, align 4, !tbaa !40
  %add.ptr.i331 = getelementptr inbounds i8, i8* %62, i32 4
  store i8* %add.ptr.i331, i8** %p.i349, align 4, !tbaa !40
  store i32 %and32.i, i32* %cur_bits5.i344, align 4, !tbaa !45
  %sub13.i332 = sub nsw i32 32, %sub4.i324
  br label %cavlc_block_residual_escape.exit

cavlc_block_residual_escape.exit:                 ; preds = %if.else.i333, %if.then.i323, %if.else.i371, %if.then.i361
  %63 = phi i32 [ %add8.i, %if.else.i371 ], [ %or.i359, %if.then.i361 ], [ %and32.i, %if.else.i333 ], [ %or.i321, %if.then.i323 ]
  %storemerge541 = phi i32 [ %sub13.i370, %if.else.i371 ], [ %sub.i360, %if.then.i361 ], [ %sub13.i332, %if.else.i333 ], [ %sub.i322, %if.then.i323 ]
  store i32 %storemerge541, i32* %i_left.i, align 4, !tbaa !42
  %cmp34.i = icmp eq i32 %i_suffix_length.1544, 0
  %spec.select80.i = select i1 %cmp34.i, i32 1, i32 %i_suffix_length.1544
  %arrayidx.i = getelementptr inbounds [7 x i16], [7 x i16]* @cavlc_block_residual_escape.next_suffix, i32 0, i32 %spec.select80.i
  %64 = load i16, i16* %arrayidx.i, align 2, !tbaa !70
  %conv.i = zext i16 %64 to i32
  %cmp38.i = icmp sgt i32 %sub.i311, %conv.i
  %inc41.i = zext i1 %cmp38.i to i32
  %i_suffix_length.addr.1.i = add nsw i32 %spec.select80.i, %inc41.i
  br label %for.inc

for.inc:                                          ; preds = %bs_write.exit392, %cavlc_block_residual_escape.exit
  %65 = phi i32 [ %53, %bs_write.exit392 ], [ %63, %cavlc_block_residual_escape.exit ]
  %66 = phi i32 [ %storemerge.i391, %bs_write.exit392 ], [ %storemerge541, %cavlc_block_residual_escape.exit ]
  %i_suffix_length.2 = phi i32 [ %conv126, %bs_write.exit392 ], [ %i_suffix_length.addr.1.i, %cavlc_block_residual_escape.exit ]
  %i.0 = add nuw nsw i32 %i.0546, 1
  %exitcond = icmp eq i32 %i.0, %call
  br i1 %exitcond, label %if.end131, label %for.body

if.end131:                                        ; preds = %for.inc, %if.end, %bs_write.exit540
  %67 = phi i32 [ %43, %if.end ], [ %22, %bs_write.exit540 ], [ %65, %for.inc ]
  %68 = phi i32 [ %44, %if.end ], [ %storemerge.i539, %bs_write.exit540 ], [ %66, %for.inc ]
  %cmp132 = icmp eq i32 %ctx_block_cat, 3
  br i1 %cmp132, label %if.then134, label %if.else152

if.then134:                                       ; preds = %if.end131
  %chroma_v_shift = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 4
  %69 = load i32, i32* %chroma_v_shift, align 16, !tbaa !47
  %shr135 = lshr i32 8, %69
  %cmp136 = icmp slt i32 %call, %shr135
  br i1 %cmp136, label %if.then138, label %if.end171

if.then138:                                       ; preds = %if.then134
  %i_chroma_format_idc = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 52, i32 0, i32 22
  %70 = load i32, i32* %i_chroma_format_idc, align 8, !tbaa !36
  %cmp139 = icmp eq i32 %70, 1
  %total_zeros.sroa.0.0..sroa_idx = getelementptr inbounds [3 x [4 x %struct.vlc_t]], [3 x [4 x %struct.vlc_t]]* @x264_total_zeros_2x2_dc, i32 0, i32 %sub60, i32 %sub, i32 0
  %total_zeros.sroa.5.0..sroa_idx = getelementptr inbounds [3 x [4 x %struct.vlc_t]], [3 x [4 x %struct.vlc_t]]* @x264_total_zeros_2x2_dc, i32 0, i32 %sub60, i32 %sub, i32 1
  %total_zeros.sroa.0.0..sroa_idx178 = getelementptr inbounds [7 x [8 x %struct.vlc_t]], [7 x [8 x %struct.vlc_t]]* @x264_total_zeros_2x4_dc, i32 0, i32 %sub60, i32 %sub, i32 0
  %total_zeros.sroa.5.0..sroa_idx180 = getelementptr inbounds [7 x [8 x %struct.vlc_t]], [7 x [8 x %struct.vlc_t]]* @x264_total_zeros_2x4_dc, i32 0, i32 %sub60, i32 %sub, i32 1
  %total_zeros.sroa.5.0.in = select i1 %cmp139, i8* %total_zeros.sroa.5.0..sroa_idx, i8* %total_zeros.sroa.5.0..sroa_idx180
  %total_zeros.sroa.0.0.in = select i1 %cmp139, i8* %total_zeros.sroa.0.0..sroa_idx, i8* %total_zeros.sroa.0.0..sroa_idx178
  %total_zeros.sroa.0.0 = load i8, i8* %total_zeros.sroa.0.0.in, align 1
  %total_zeros.sroa.5.0 = load i8, i8* %total_zeros.sroa.5.0.in, align 1
  %conv148 = zext i8 %total_zeros.sroa.5.0 to i32
  %conv150 = zext i8 %total_zeros.sroa.0.0 to i32
  %cmp.i292 = icmp sgt i32 %68, %conv148
  br i1 %cmp.i292, label %if.then.i297, label %if.else.i307

if.then.i297:                                     ; preds = %if.then138
  %cur_bits.i293 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %shl.i294 = shl i32 %67, %conv148
  %or.i295 = or i32 %shl.i294, %conv150
  store i32 %or.i295, i32* %cur_bits.i293, align 4, !tbaa !45
  %sub.i296 = sub nsw i32 %68, %conv148
  br label %bs_write.exit309

if.else.i307:                                     ; preds = %if.then138
  %sub4.i298 = sub nsw i32 %conv148, %68
  %cur_bits5.i299 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %shl7.i300 = shl i32 %67, %68
  %shr.i301 = lshr i32 %conv150, %sub4.i298
  %or8.i302 = or i32 %shl7.i300, %shr.i301
  %add5.i.i.i303 = call i32 @llvm.bswap.i32(i32 %or8.i302) #6
  %p.i304 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 1
  %71 = bitcast i8** %p.i304 to i32**
  %72 = load i32*, i32** %71, align 4, !tbaa !40
  store i32 %add5.i.i.i303, i32* %72, align 4, !tbaa !44
  %73 = load i8*, i8** %p.i304, align 4, !tbaa !40
  %add.ptr.i305 = getelementptr inbounds i8, i8* %73, i32 4
  store i8* %add.ptr.i305, i8** %p.i304, align 4, !tbaa !40
  store i32 %conv150, i32* %cur_bits5.i299, align 4, !tbaa !45
  %sub13.i306 = sub nsw i32 32, %sub4.i298
  br label %bs_write.exit309

bs_write.exit309:                                 ; preds = %if.then.i297, %if.else.i307
  %74 = phi i32 [ %conv150, %if.else.i307 ], [ %or.i295, %if.then.i297 ]
  %storemerge.i308 = phi i32 [ %sub13.i306, %if.else.i307 ], [ %sub.i296, %if.then.i297 ]
  store i32 %storemerge.i308, i32* %i_left.i, align 4, !tbaa !42
  br label %if.end171

if.else152:                                       ; preds = %if.end131
  %conv154 = and i32 %call, 255
  %arrayidx155 = getelementptr inbounds [14 x i8], [14 x i8]* @cavlc_block_residual_internal.count_cat, i32 0, i32 %ctx_block_cat
  %75 = load i8, i8* %arrayidx155, align 1, !tbaa !44
  %conv156 = zext i8 %75 to i32
  %cmp157 = icmp ult i32 %conv154, %conv156
  br i1 %cmp157, label %if.then159, label %if.end171

if.then159:                                       ; preds = %if.else152
  %i_size163 = getelementptr inbounds [15 x [16 x %struct.vlc_t]], [15 x [16 x %struct.vlc_t]]* @x264_total_zeros, i32 0, i32 %sub60, i32 %sub, i32 1
  %76 = load i8, i8* %i_size163, align 1, !tbaa !59
  %conv164 = zext i8 %76 to i32
  %i_bits168 = getelementptr inbounds [15 x [16 x %struct.vlc_t]], [15 x [16 x %struct.vlc_t]]* @x264_total_zeros, i32 0, i32 %sub60, i32 %sub, i32 0
  %77 = load i8, i8* %i_bits168, align 1, !tbaa !61
  %conv169 = zext i8 %77 to i32
  %cmp.i273 = icmp sgt i32 %68, %conv164
  br i1 %cmp.i273, label %if.then.i278, label %if.else.i288

if.then.i278:                                     ; preds = %if.then159
  %cur_bits.i274 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %shl.i275 = shl i32 %67, %conv164
  %or.i276 = or i32 %shl.i275, %conv169
  store i32 %or.i276, i32* %cur_bits.i274, align 4, !tbaa !45
  %sub.i277 = sub nsw i32 %68, %conv164
  br label %bs_write.exit290

if.else.i288:                                     ; preds = %if.then159
  %sub4.i279 = sub nsw i32 %conv164, %68
  %cur_bits5.i280 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %shl7.i281 = shl i32 %67, %68
  %shr.i282 = lshr i32 %conv169, %sub4.i279
  %or8.i283 = or i32 %shl7.i281, %shr.i282
  %add5.i.i.i284 = call i32 @llvm.bswap.i32(i32 %or8.i283) #6
  %p.i285 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 1
  %78 = bitcast i8** %p.i285 to i32**
  %79 = load i32*, i32** %78, align 4, !tbaa !40
  store i32 %add5.i.i.i284, i32* %79, align 4, !tbaa !44
  %80 = load i8*, i8** %p.i285, align 4, !tbaa !40
  %add.ptr.i286 = getelementptr inbounds i8, i8* %80, i32 4
  store i8* %add.ptr.i286, i8** %p.i285, align 4, !tbaa !40
  store i32 %conv169, i32* %cur_bits5.i280, align 4, !tbaa !45
  %sub13.i287 = sub nsw i32 32, %sub4.i279
  br label %bs_write.exit290

bs_write.exit290:                                 ; preds = %if.then.i278, %if.else.i288
  %81 = phi i32 [ %conv169, %if.else.i288 ], [ %or.i276, %if.then.i278 ]
  %storemerge.i289 = phi i32 [ %sub13.i287, %if.else.i288 ], [ %sub.i277, %if.then.i278 ]
  store i32 %storemerge.i289, i32* %i_left.i, align 4, !tbaa !42
  br label %if.end171

if.end171:                                        ; preds = %if.else152, %bs_write.exit290, %if.then134, %bs_write.exit309
  %82 = phi i32 [ %67, %if.else152 ], [ %81, %bs_write.exit290 ], [ %67, %if.then134 ], [ %74, %bs_write.exit309 ]
  %83 = phi i32 [ %68, %if.else152 ], [ %storemerge.i289, %bs_write.exit290 ], [ %68, %if.then134 ], [ %storemerge.i308, %bs_write.exit309 ]
  %84 = load i32, i32* %mask, align 4, !tbaa !67
  %arrayidx173 = getelementptr inbounds [65536 x i32], [65536 x i32]* @x264_8_run_before, i32 0, i32 %84
  %85 = load i32, i32* %arrayidx173, align 4, !tbaa !52
  %and174 = and i32 %85, 31
  %shr175 = ashr i32 %85, 5
  %cmp.i254 = icmp sgt i32 %83, %and174
  br i1 %cmp.i254, label %if.then.i259, label %if.else.i269

if.then.i259:                                     ; preds = %if.end171
  %cur_bits.i255 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %shl.i256 = shl i32 %82, %and174
  %or.i257 = or i32 %shl.i256, %shr175
  store i32 %or.i257, i32* %cur_bits.i255, align 4, !tbaa !45
  %sub.i258 = sub nsw i32 %83, %and174
  br label %bs_write.exit271

if.else.i269:                                     ; preds = %if.end171
  %sub4.i260 = sub nsw i32 %and174, %83
  %cur_bits5.i261 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %shl7.i262 = shl i32 %82, %83
  %shr.i263 = lshr i32 %shr175, %sub4.i260
  %or8.i264 = or i32 %shl7.i262, %shr.i263
  %add5.i.i.i265 = call i32 @llvm.bswap.i32(i32 %or8.i264) #6
  %p.i266 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 1
  %86 = bitcast i8** %p.i266 to i32**
  %87 = load i32*, i32** %86, align 4, !tbaa !40
  store i32 %add5.i.i.i265, i32* %87, align 4, !tbaa !44
  %88 = load i8*, i8** %p.i266, align 4, !tbaa !40
  %add.ptr.i267 = getelementptr inbounds i8, i8* %88, i32 4
  store i8* %add.ptr.i267, i8** %p.i266, align 4, !tbaa !40
  store i32 %shr175, i32* %cur_bits5.i261, align 4, !tbaa !45
  %sub13.i268 = sub nsw i32 32, %sub4.i260
  br label %bs_write.exit271

bs_write.exit271:                                 ; preds = %if.then.i259, %if.else.i269
  %storemerge.i270 = phi i32 [ %sub13.i268, %if.else.i269 ], [ %sub.i258, %if.then.i259 ]
  store i32 %storemerge.i270, i32* %i_left.i, align 4, !tbaa !42
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #6
  ret i32 %call
}

; Function Attrs: nounwind
define internal fastcc void @cavlc_mvd(%struct.x264_t* %h, i32 %i_list, i32 %idx, i32 %width) unnamed_addr #0 {
entry:
  %mvp = alloca [2 x i16], align 4
  %0 = bitcast [2 x i16]* %mvp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #6
  %arraydecay = getelementptr inbounds [2 x i16], [2 x i16]* %mvp, i32 0, i32 0
  call void @x264_8_mb_predict_mv(%struct.x264_t* %h, i32 %i_list, i32 %idx, i32 %width, i16* nonnull %arraydecay) #6
  %arrayidx1 = getelementptr inbounds [51 x i8], [51 x i8]* @x264_scan8, i32 0, i32 %idx
  %1 = load i8, i8* %arrayidx1, align 1, !tbaa !44
  %idxprom = zext i8 %1 to i32
  %arrayidx3 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 %i_list, i32 %idxprom, i32 0
  %2 = load i16, i16* %arrayidx3, align 4, !tbaa !70
  %conv = sext i16 %2 to i32
  %3 = load i16, i16* %arraydecay, align 4, !tbaa !70
  %conv5 = sext i16 %3 to i32
  %sub = sub nsw i32 %conv, %conv5
  %mul.i = shl nsw i32 %sub, 1
  %sub.i = sub nsw i32 1, %mul.i
  %cmp.i = icmp sgt i32 %sub, 0
  %spec.select.i = select i1 %cmp.i, i32 %mul.i, i32 %sub.i
  %cmp2.i = icmp sgt i32 %spec.select.i, 255
  %shr.i = ashr i32 %spec.select.i, 8
  %size.0.i = select i1 %cmp2.i, i32 16, i32 0
  %tmp.1.i = select i1 %cmp2.i, i32 %shr.i, i32 %spec.select.i
  %arrayidx.i = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %tmp.1.i
  %4 = load i8, i8* %arrayidx.i, align 1, !tbaa !44
  %conv.i = zext i8 %4 to i32
  %add.i = add nuw nsw i32 %size.0.i, %conv.i
  %i_left.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 4
  %5 = load i32, i32* %i_left.i.i, align 4, !tbaa !42
  %cmp.i.i = icmp sgt i32 %5, %add.i
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %entry
  %cur_bits.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %6 = load i32, i32* %cur_bits.i.i, align 4, !tbaa !45
  %shl.i.i = shl i32 %6, %add.i
  %or.i.i = or i32 %shl.i.i, %spec.select.i
  store i32 %or.i.i, i32* %cur_bits.i.i, align 4, !tbaa !45
  %sub.i.i = sub nsw i32 %5, %add.i
  br label %bs_write_se.exit

if.else.i.i:                                      ; preds = %entry
  %sub4.i.i = sub nsw i32 %add.i, %5
  %cur_bits5.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %7 = load i32, i32* %cur_bits5.i.i, align 4, !tbaa !45
  %shl7.i.i = shl i32 %7, %5
  %shr.i.i = lshr i32 %spec.select.i, %sub4.i.i
  %or8.i.i = or i32 %shl7.i.i, %shr.i.i
  %add5.i.i.i.i = call i32 @llvm.bswap.i32(i32 %or8.i.i) #6
  %p.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 1
  %8 = bitcast i8** %p.i.i to i32**
  %9 = load i32*, i32** %8, align 4, !tbaa !40
  store i32 %add5.i.i.i.i, i32* %9, align 4, !tbaa !44
  %10 = load i8*, i8** %p.i.i, align 4, !tbaa !40
  %add.ptr.i.i = getelementptr inbounds i8, i8* %10, i32 4
  store i8* %add.ptr.i.i, i8** %p.i.i, align 4, !tbaa !40
  store i32 %spec.select.i, i32* %cur_bits5.i.i, align 4, !tbaa !45
  %sub13.i.i = sub nsw i32 32, %sub4.i.i
  br label %bs_write_se.exit

bs_write_se.exit:                                 ; preds = %if.then.i.i, %if.else.i.i
  %11 = phi i32 [ %spec.select.i, %if.else.i.i ], [ %or.i.i, %if.then.i.i ]
  %storemerge.i.i = phi i32 [ %sub13.i.i, %if.else.i.i ], [ %sub.i.i, %if.then.i.i ]
  store i32 %storemerge.i.i, i32* %i_left.i.i, align 4, !tbaa !42
  %arrayidx13 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 %i_list, i32 %idxprom, i32 1
  %12 = load i16, i16* %arrayidx13, align 2, !tbaa !70
  %conv14 = sext i16 %12 to i32
  %arrayidx15 = getelementptr inbounds [2 x i16], [2 x i16]* %mvp, i32 0, i32 1
  %13 = load i16, i16* %arrayidx15, align 2, !tbaa !70
  %conv16 = sext i16 %13 to i32
  %sub17 = sub nsw i32 %conv14, %conv16
  %mul.i27 = shl nsw i32 %sub17, 1
  %sub.i28 = sub nsw i32 1, %mul.i27
  %cmp.i29 = icmp sgt i32 %sub17, 0
  %spec.select.i30 = select i1 %cmp.i29, i32 %mul.i27, i32 %sub.i28
  %cmp2.i31 = icmp sgt i32 %spec.select.i30, 255
  %shr.i32 = ashr i32 %spec.select.i30, 8
  %size.0.i33 = select i1 %cmp2.i31, i32 16, i32 0
  %tmp.1.i34 = select i1 %cmp2.i31, i32 %shr.i32, i32 %spec.select.i30
  %arrayidx.i35 = getelementptr inbounds [256 x i8], [256 x i8]* @x264_ue_size_tab, i32 0, i32 %tmp.1.i34
  %14 = load i8, i8* %arrayidx.i35, align 1, !tbaa !44
  %conv.i36 = zext i8 %14 to i32
  %add.i37 = add nuw nsw i32 %size.0.i33, %conv.i36
  %cmp.i.i39 = icmp sgt i32 %storemerge.i.i, %add.i37
  br i1 %cmp.i.i39, label %if.then.i.i44, label %if.else.i.i54

if.then.i.i44:                                    ; preds = %bs_write_se.exit
  %cur_bits.i.i40 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %shl.i.i41 = shl i32 %11, %add.i37
  %or.i.i42 = or i32 %shl.i.i41, %spec.select.i30
  store i32 %or.i.i42, i32* %cur_bits.i.i40, align 4, !tbaa !45
  %sub.i.i43 = sub nsw i32 %storemerge.i.i, %add.i37
  br label %bs_write_se.exit56

if.else.i.i54:                                    ; preds = %bs_write_se.exit
  %sub4.i.i45 = sub nsw i32 %add.i37, %storemerge.i.i
  %cur_bits5.i.i46 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 3
  %shl7.i.i47 = shl i32 %11, %storemerge.i.i
  %shr.i.i48 = lshr i32 %spec.select.i30, %sub4.i.i45
  %or8.i.i49 = or i32 %shl7.i.i47, %shr.i.i48
  %add5.i.i.i.i50 = call i32 @llvm.bswap.i32(i32 %or8.i.i49) #6
  %p.i.i51 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 14, i32 5, i32 1
  %15 = bitcast i8** %p.i.i51 to i32**
  %16 = load i32*, i32** %15, align 4, !tbaa !40
  store i32 %add5.i.i.i.i50, i32* %16, align 4, !tbaa !44
  %17 = load i8*, i8** %p.i.i51, align 4, !tbaa !40
  %add.ptr.i.i52 = getelementptr inbounds i8, i8* %17, i32 4
  store i8* %add.ptr.i.i52, i8** %p.i.i51, align 4, !tbaa !40
  store i32 %spec.select.i30, i32* %cur_bits5.i.i46, align 4, !tbaa !45
  %sub13.i.i53 = sub nsw i32 32, %sub4.i.i45
  br label %bs_write_se.exit56

bs_write_se.exit56:                               ; preds = %if.then.i.i44, %if.else.i.i54
  %storemerge.i.i55 = phi i32 [ %sub13.i.i53, %if.else.i.i54 ], [ %sub.i.i43, %if.then.i.i44 ]
  store i32 %storemerge.i.i55, i32* %i_left.i.i, align 4, !tbaa !42
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #6
  ret void
}

declare dso_local void @x264_8_mb_predict_mv(%struct.x264_t*, i32, i32, i32, i16*) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @llvm.prefetch.p0i8(i8* nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #4 = { inaccessiblemem_or_argmemonly nounwind willreturn }
attributes #5 = { nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 (http://10.18.30.194:8888/compiler/compiler10.git 713ef477716300a9b04a1522e3fce445623444dc)"}
!2 = !{!3, !5, i64 19536}
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
!36 = !{!37, !5, i64 264}
!37 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !13, i64 72, !5, i64 88, !38, i64 92, !5, i64 260, !5, i64 264, !5, i64 268, !5, i64 272, !5, i64 276, !6, i64 280}
!38 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !39, i64 84, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !5, i64 148, !5, i64 152, !5, i64 156, !5, i64 160, !5, i64 164}
!39 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44}
!40 = !{!18, !9, i64 4}
!41 = !{!18, !9, i64 0}
!42 = !{!18, !5, i64 16}
!43 = !{!3, !5, i64 3320}
!44 = !{!6, !6, i64 0}
!45 = !{!18, !5, i64 12}
!46 = !{!3, !5, i64 33376}
!47 = !{!3, !5, i64 18768}
!48 = !{!9, !9, i64 0}
!49 = !{!18, !9, i64 8}
!50 = !{!3, !5, i64 33380}
!51 = !{!3, !5, i64 19540}
!52 = !{!5, !5, i64 0}
!53 = !{!3, !5, i64 528}
!54 = !{!3, !5, i64 19556}
!55 = !{!3, !5, i64 19552}
!56 = !{!57, !5, i64 60}
!57 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60}
!58 = !{!3, !5, i64 19548}
!59 = !{!60, !6, i64 1}
!60 = !{!"", !6, i64 0, !6, i64 1}
!61 = !{!60, !6, i64 0}
!62 = !{!3, !9, i64 37968}
!63 = !{!3, !5, i64 19560}
!64 = !{!3, !5, i64 19564}
!65 = !{!3, !5, i64 29088}
!66 = !{!3, !5, i64 29096}
!67 = !{!68, !5, i64 4}
!68 = !{!"", !5, i64 0, !5, i64 4, !6, i64 16}
!69 = !{!68, !5, i64 0}
!70 = !{!71, !71, i64 0}
!71 = !{!"short", !6, i64 0}
!72 = !{!73, !6, i64 2}
!73 = !{!"", !71, i64 0, !6, i64 2, !6, i64 3}
!74 = !{!73, !71, i64 0}
!75 = !{!73, !6, i64 3}
!76 = !{!37, !5, i64 4}
!77 = !{!3, !5, i64 19588}
