; ModuleID = 'common/mvpred.c'
source_filename = "common/mvpred.c"
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

@x264_scan8 = internal unnamed_addr constant [51 x i8] c"\0C\0D\14\15\0E\0F\16\17\1C\1D$%\1E\1F&'45<=67>?DELMFGNO\\]de^_fglmtunovw\00(P", align 1
@x264_8_cache_ref_func_table = external dso_local local_unnamed_addr global [10 x void (i8*, i32)*], align 4
@x264_8_cache_mv_func_table = external dso_local local_unnamed_addr global [10 x void (i8*, i32)*], align 4

; Function Attrs: nofree norecurse nounwind
define hidden void @x264_8_mb_predict_mv(%struct.x264_t* nocapture readonly %h, i32 %i_list, i32 %idx, i32 %i_width, i16* nocapture %mvp) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds [51 x i8], [51 x i8]* @x264_scan8, i32 0, i32 %idx
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !2
  %conv = zext i8 %0 to i32
  %arrayidx2 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 %i_list, i32 %conv
  %1 = load i8, i8* %arrayidx2, align 1, !tbaa !2
  %sub = add nsw i32 %conv, -1
  %arrayidx8 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 %i_list, i32 %sub
  %2 = load i8, i8* %arrayidx8, align 1, !tbaa !2
  %arraydecay = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 %i_list, i32 %sub, i32 0
  %sub19 = add nsw i32 %conv, -8
  %arrayidx20 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 %i_list, i32 %sub19
  %3 = load i8, i8* %arrayidx20, align 1, !tbaa !2
  %arraydecay28 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 %i_list, i32 %sub19, i32 0
  %add = add nsw i32 %sub19, %i_width
  %arrayidx34 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 %i_list, i32 %add
  %4 = load i8, i8* %arrayidx34, align 1, !tbaa !2
  %and = and i32 %idx, 3
  %and44 = and i32 %i_width, 1
  %add45 = or i32 %and44, 2
  %cmp = icmp uge i32 %and, %add45
  %cmp47 = icmp eq i8 %4, -2
  %or.cond = or i1 %cmp, %cmp47
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %sub54 = add nsw i32 %conv, -9
  %arrayidx55 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 %i_list, i32 %sub54
  %5 = load i8, i8* %arrayidx55, align 1, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %sub54.pn = phi i32 [ %sub54, %if.then ], [ %add, %entry ]
  %i_refc.0.in = phi i8 [ %5, %if.then ], [ %4, %entry ]
  %mv_c.0 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 %i_list, i32 %sub54.pn, i32 0
  %i_partition = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 77
  %6 = load i32, i32* %i_partition, align 4, !tbaa !5
  switch i32 %6, label %if.end108 [
    i32 14, label %if.then68
    i32 15, label %if.then89
  ]

if.then68:                                        ; preds = %if.end
  %cmp69 = icmp eq i32 %idx, 0
  br i1 %cmp69, label %if.then71, label %if.else

if.then71:                                        ; preds = %if.then68
  %cmp72 = icmp eq i8 %3, %1
  br i1 %cmp72, label %if.then74, label %if.end108

if.then74:                                        ; preds = %if.then71
  %i = bitcast i16* %arraydecay28 to i32*
  %7 = load i32, i32* %i, align 4, !tbaa !2
  %i75 = bitcast i16* %mvp to i32*
  store i32 %7, i32* %i75, align 4, !tbaa !2
  br label %cleanup

if.else:                                          ; preds = %if.then68
  %cmp77 = icmp eq i8 %2, %1
  br i1 %cmp77, label %if.then79, label %if.end108

if.then79:                                        ; preds = %if.else
  %i80 = bitcast i16* %arraydecay to i32*
  %8 = load i32, i32* %i80, align 4, !tbaa !2
  %i81 = bitcast i16* %mvp to i32*
  store i32 %8, i32* %i81, align 4, !tbaa !2
  br label %cleanup

if.then89:                                        ; preds = %if.end
  %cmp90 = icmp eq i32 %idx, 0
  br i1 %cmp90, label %if.then92, label %if.else99

if.then92:                                        ; preds = %if.then89
  %cmp93 = icmp eq i8 %2, %1
  br i1 %cmp93, label %if.then95, label %if.end108

if.then95:                                        ; preds = %if.then92
  %i96 = bitcast i16* %arraydecay to i32*
  %9 = load i32, i32* %i96, align 4, !tbaa !2
  %i97 = bitcast i16* %mvp to i32*
  store i32 %9, i32* %i97, align 4, !tbaa !2
  br label %cleanup

if.else99:                                        ; preds = %if.then89
  %cmp100 = icmp eq i8 %i_refc.0.in, %1
  br i1 %cmp100, label %if.then102, label %if.end108

if.then102:                                       ; preds = %if.else99
  %i103 = bitcast i16* %mv_c.0 to i32*
  %10 = load i32, i32* %i103, align 4, !tbaa !2
  %i104 = bitcast i16* %mvp to i32*
  store i32 %10, i32* %i104, align 4, !tbaa !2
  br label %cleanup

if.end108:                                        ; preds = %if.end, %if.else99, %if.then92, %if.then71, %if.else
  %cmp109 = icmp eq i8 %2, %1
  %conv110 = zext i1 %cmp109 to i32
  %cmp111 = icmp eq i8 %3, %1
  %conv112 = zext i1 %cmp111 to i32
  %add113 = add nuw nsw i32 %conv112, %conv110
  %cmp114 = icmp eq i8 %i_refc.0.in, %1
  %conv115 = zext i1 %cmp114 to i32
  %add116 = add nuw nsw i32 %add113, %conv115
  %cmp117 = icmp ugt i32 %add116, 1
  br i1 %cmp117, label %median, label %if.else120

median:                                           ; preds = %if.else140, %if.end108
  %11 = load i16, i16* %arraydecay, align 2, !tbaa !37
  %conv.i = sext i16 %11 to i32
  %12 = load i16, i16* %arraydecay28, align 2, !tbaa !37
  %conv2.i = sext i16 %12 to i32
  %13 = load i16, i16* %mv_c.0, align 2, !tbaa !37
  %conv4.i = sext i16 %13 to i32
  %sub.i.i = sub nsw i32 %conv.i, %conv2.i
  %shr.i.i = ashr i32 %sub.i.i, 31
  %and.i.i = and i32 %shr.i.i, %sub.i.i
  %sub2.i.i = sub nsw i32 %conv.i, %and.i.i
  %add.i.i = add nsw i32 %and.i.i, %conv2.i
  %sub3.i.i = sub nsw i32 %add.i.i, %conv4.i
  %shr5.i.i = ashr i32 %sub3.i.i, 31
  %and6.i.i = and i32 %shr5.i.i, %sub3.i.i
  %sub7.i.i = sub nsw i32 %add.i.i, %and6.i.i
  %sub8.i.i = sub i32 %sub2.i.i, %sub7.i.i
  %shr10.i.i = ashr i32 %sub8.i.i, 31
  %and11.i.i = and i32 %shr10.i.i, %sub8.i.i
  %add12.i.i = add nsw i32 %and11.i.i, %sub7.i.i
  %conv5.i = trunc i32 %add12.i.i to i16
  store i16 %conv5.i, i16* %mvp, align 2, !tbaa !37
  %arrayidx7.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 %i_list, i32 %sub, i32 1
  %14 = load i16, i16* %arrayidx7.i, align 2, !tbaa !37
  %conv8.i = sext i16 %14 to i32
  %arrayidx9.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 %i_list, i32 %sub19, i32 1
  %15 = load i16, i16* %arrayidx9.i, align 2, !tbaa !37
  %conv10.i = sext i16 %15 to i32
  %arrayidx11.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 %i_list, i32 %sub54.pn, i32 1
  %16 = load i16, i16* %arrayidx11.i, align 2, !tbaa !37
  %conv12.i = sext i16 %16 to i32
  %sub.i20.i = sub nsw i32 %conv8.i, %conv10.i
  %shr.i21.i = ashr i32 %sub.i20.i, 31
  %and.i22.i = and i32 %shr.i21.i, %sub.i20.i
  %sub2.i23.i = sub nsw i32 %conv8.i, %and.i22.i
  %add.i24.i = add nsw i32 %and.i22.i, %conv10.i
  %sub3.i25.i = sub nsw i32 %add.i24.i, %conv12.i
  %shr5.i26.i = ashr i32 %sub3.i25.i, 31
  %and6.i27.i = and i32 %shr5.i26.i, %sub3.i25.i
  %sub7.i28.i = sub nsw i32 %add.i24.i, %and6.i27.i
  %sub8.i29.i = sub i32 %sub2.i23.i, %sub7.i28.i
  %shr10.i30.i = ashr i32 %sub8.i29.i, 31
  %and11.i31.i = and i32 %shr10.i30.i, %sub8.i29.i
  %add12.i32.i = add nsw i32 %and11.i31.i, %sub7.i28.i
  %conv14.i = trunc i32 %add12.i32.i to i16
  %arrayidx15.i = getelementptr inbounds i16, i16* %mvp, i32 1
  store i16 %conv14.i, i16* %arrayidx15.i, align 2, !tbaa !37
  br label %cleanup

if.else120:                                       ; preds = %if.end108
  %cmp121 = icmp eq i32 %add116, 1
  br i1 %cmp121, label %if.then123, label %if.else140

if.then123:                                       ; preds = %if.else120
  br i1 %cmp109, label %if.then126, label %if.else129

if.then126:                                       ; preds = %if.then123
  %i127 = bitcast i16* %arraydecay to i32*
  %17 = load i32, i32* %i127, align 4, !tbaa !2
  %i128 = bitcast i16* %mvp to i32*
  store i32 %17, i32* %i128, align 4, !tbaa !2
  br label %cleanup

if.else129:                                       ; preds = %if.then123
  br i1 %cmp111, label %if.then132, label %if.else135

if.then132:                                       ; preds = %if.else129
  %i133 = bitcast i16* %arraydecay28 to i32*
  %18 = load i32, i32* %i133, align 4, !tbaa !2
  %i134 = bitcast i16* %mvp to i32*
  store i32 %18, i32* %i134, align 4, !tbaa !2
  br label %cleanup

if.else135:                                       ; preds = %if.else129
  %i136 = bitcast i16* %mv_c.0 to i32*
  %19 = load i32, i32* %i136, align 4, !tbaa !2
  %i137 = bitcast i16* %mvp to i32*
  store i32 %19, i32* %i137, align 4, !tbaa !2
  br label %cleanup

if.else140:                                       ; preds = %if.else120
  %cmp141 = icmp eq i8 %3, -2
  %cmp143 = icmp eq i8 %i_refc.0.in, -2
  %or.cond162 = and i1 %cmp141, %cmp143
  %cmp146 = icmp ne i8 %2, -2
  %or.cond163 = and i1 %cmp146, %or.cond162
  br i1 %or.cond163, label %if.then148, label %median

if.then148:                                       ; preds = %if.else140
  %i149 = bitcast i16* %arraydecay to i32*
  %20 = load i32, i32* %i149, align 4, !tbaa !2
  %i150 = bitcast i16* %mvp to i32*
  store i32 %20, i32* %i150, align 4, !tbaa !2
  br label %cleanup

cleanup:                                          ; preds = %median, %if.then126, %if.else135, %if.then132, %if.then148, %if.then102, %if.then95, %if.then79, %if.then74
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree norecurse nounwind
define hidden void @x264_8_mb_predict_mv_16x16(%struct.x264_t* nocapture readonly %h, i32 %i_list, i32 %i_ref, i16* nocapture %mvp) local_unnamed_addr #0 {
entry:
  %arrayidx1 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 %i_list, i32 11
  %0 = load i8, i8* %arrayidx1, align 1, !tbaa !2
  %conv = sext i8 %0 to i32
  %arraydecay = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 %i_list, i32 11, i32 0
  %arrayidx10 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 %i_list, i32 4
  %1 = load i8, i8* %arrayidx10, align 4, !tbaa !2
  %conv11 = sext i8 %1 to i32
  %arraydecay17 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 %i_list, i32 4, i32 0
  %arrayidx22 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 %i_list, i32 8
  %2 = load i8, i8* %arrayidx22, align 8, !tbaa !2
  %arraydecay29 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 %i_list, i32 8, i32 0
  %cmp = icmp eq i8 %2, -2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arrayidx35 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 %i_list, i32 3
  %3 = load i8, i8* %arrayidx35, align 1, !tbaa !2
  %arraydecay42 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 %i_list, i32 3, i32 0
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %mv_c.0 = phi i16* [ %arraydecay42, %if.then ], [ %arraydecay29, %entry ]
  %i_refc.0.in = phi i8 [ %3, %if.then ], [ %2, %entry ]
  %i_refc.0 = sext i8 %i_refc.0.in to i32
  %cmp43 = icmp eq i32 %conv, %i_ref
  %conv44 = zext i1 %cmp43 to i32
  %cmp45 = icmp eq i32 %conv11, %i_ref
  %conv46 = zext i1 %cmp45 to i32
  %add = add nuw nsw i32 %conv46, %conv44
  %cmp47 = icmp eq i32 %i_refc.0, %i_ref
  %conv48 = zext i1 %cmp47 to i32
  %add49 = add nuw nsw i32 %add, %conv48
  %cmp50 = icmp ugt i32 %add49, 1
  br i1 %cmp50, label %median, label %if.else

median:                                           ; preds = %if.else71, %if.end
  %4 = load i16, i16* %arraydecay, align 2, !tbaa !37
  %conv.i = sext i16 %4 to i32
  %5 = load i16, i16* %arraydecay17, align 2, !tbaa !37
  %conv2.i = sext i16 %5 to i32
  %6 = load i16, i16* %mv_c.0, align 2, !tbaa !37
  %conv4.i = sext i16 %6 to i32
  %sub.i.i = sub nsw i32 %conv.i, %conv2.i
  %shr.i.i = ashr i32 %sub.i.i, 31
  %and.i.i = and i32 %shr.i.i, %sub.i.i
  %sub2.i.i = sub nsw i32 %conv.i, %and.i.i
  %add.i.i = add nsw i32 %and.i.i, %conv2.i
  %sub3.i.i = sub nsw i32 %add.i.i, %conv4.i
  %shr5.i.i = ashr i32 %sub3.i.i, 31
  %and6.i.i = and i32 %shr5.i.i, %sub3.i.i
  %sub7.i.i = sub nsw i32 %add.i.i, %and6.i.i
  %sub8.i.i = sub i32 %sub2.i.i, %sub7.i.i
  %shr10.i.i = ashr i32 %sub8.i.i, 31
  %and11.i.i = and i32 %shr10.i.i, %sub8.i.i
  %add12.i.i = add nsw i32 %and11.i.i, %sub7.i.i
  %conv5.i = trunc i32 %add12.i.i to i16
  store i16 %conv5.i, i16* %mvp, align 2, !tbaa !37
  %arrayidx7.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 %i_list, i32 11, i32 1
  %7 = load i16, i16* %arrayidx7.i, align 2, !tbaa !37
  %conv8.i = sext i16 %7 to i32
  %arrayidx9.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 %i_list, i32 4, i32 1
  %8 = load i16, i16* %arrayidx9.i, align 2, !tbaa !37
  %conv10.i = sext i16 %8 to i32
  %arrayidx11.i = getelementptr inbounds i16, i16* %mv_c.0, i32 1
  %9 = load i16, i16* %arrayidx11.i, align 2, !tbaa !37
  %conv12.i = sext i16 %9 to i32
  %sub.i20.i = sub nsw i32 %conv8.i, %conv10.i
  %shr.i21.i = ashr i32 %sub.i20.i, 31
  %and.i22.i = and i32 %shr.i21.i, %sub.i20.i
  %sub2.i23.i = sub nsw i32 %conv8.i, %and.i22.i
  %add.i24.i = add nsw i32 %and.i22.i, %conv10.i
  %sub3.i25.i = sub nsw i32 %add.i24.i, %conv12.i
  %shr5.i26.i = ashr i32 %sub3.i25.i, 31
  %and6.i27.i = and i32 %shr5.i26.i, %sub3.i25.i
  %sub7.i28.i = sub nsw i32 %add.i24.i, %and6.i27.i
  %sub8.i29.i = sub i32 %sub2.i23.i, %sub7.i28.i
  %shr10.i30.i = ashr i32 %sub8.i29.i, 31
  %and11.i31.i = and i32 %shr10.i30.i, %sub8.i29.i
  %add12.i32.i = add nsw i32 %and11.i31.i, %sub7.i28.i
  %conv14.i = trunc i32 %add12.i32.i to i16
  %arrayidx15.i = getelementptr inbounds i16, i16* %mvp, i32 1
  store i16 %conv14.i, i16* %arrayidx15.i, align 2, !tbaa !37
  br label %if.end85

if.else:                                          ; preds = %if.end
  %cmp53 = icmp eq i32 %add49, 1
  br i1 %cmp53, label %if.then55, label %if.else71

if.then55:                                        ; preds = %if.else
  br i1 %cmp43, label %if.then58, label %if.else60

if.then58:                                        ; preds = %if.then55
  %i = bitcast i16* %arraydecay to i32*
  %10 = load i32, i32* %i, align 4, !tbaa !2
  %i59 = bitcast i16* %mvp to i32*
  store i32 %10, i32* %i59, align 4, !tbaa !2
  br label %if.end85

if.else60:                                        ; preds = %if.then55
  br i1 %cmp45, label %if.then63, label %if.else66

if.then63:                                        ; preds = %if.else60
  %i64 = bitcast i16* %arraydecay17 to i32*
  %11 = load i32, i32* %i64, align 4, !tbaa !2
  %i65 = bitcast i16* %mvp to i32*
  store i32 %11, i32* %i65, align 4, !tbaa !2
  br label %if.end85

if.else66:                                        ; preds = %if.else60
  %i67 = bitcast i16* %mv_c.0 to i32*
  %12 = load i32, i32* %i67, align 4, !tbaa !2
  %i68 = bitcast i16* %mvp to i32*
  store i32 %12, i32* %i68, align 4, !tbaa !2
  br label %if.end85

if.else71:                                        ; preds = %if.else
  %cmp72 = icmp eq i8 %1, -2
  %cmp74 = icmp eq i8 %i_refc.0.in, -2
  %or.cond = and i1 %cmp72, %cmp74
  %cmp77 = icmp ne i8 %0, -2
  %or.cond86 = and i1 %cmp77, %or.cond
  br i1 %or.cond86, label %if.then79, label %median

if.then79:                                        ; preds = %if.else71
  %i80 = bitcast i16* %arraydecay to i32*
  %13 = load i32, i32* %i80, align 4, !tbaa !2
  %i81 = bitcast i16* %mvp to i32*
  store i32 %13, i32* %i81, align 4, !tbaa !2
  br label %if.end85

if.end85:                                         ; preds = %if.then79, %if.then63, %if.else66, %if.then58, %median
  ret void
}

; Function Attrs: nofree norecurse nounwind
define hidden void @x264_8_mb_predict_mv_pskip(%struct.x264_t* nocapture readonly %h, i16* nocapture %mv) local_unnamed_addr #0 {
entry:
  %arrayidx1 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 0, i32 11
  %0 = load i8, i8* %arrayidx1, align 1, !tbaa !2
  %arrayidx6 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 0, i32 4
  %1 = load i8, i8* %arrayidx6, align 4, !tbaa !2
  %conv7 = sext i8 %1 to i32
  %arraydecay18 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 0, i32 4, i32 0
  %cmp = icmp eq i8 %0, -2
  %cmp20 = icmp eq i8 %1, -2
  %or.cond = or i1 %cmp, %cmp20
  br i1 %or.cond, label %if.then, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %entry
  %conv = sext i8 %0 to i32
  %arraydecay = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 0, i32 11, i32 0
  %i = bitcast i16* %arraydecay to i32*
  %2 = load i32, i32* %i, align 4, !tbaa !2
  %or = or i32 %2, %conv
  %tobool = icmp eq i32 %or, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %lor.lhs.false22
  %i24 = bitcast i16* %arraydecay18 to i32*
  %3 = load i32, i32* %i24, align 4, !tbaa !2
  %or25 = or i32 %3, %conv7
  %tobool26 = icmp eq i32 %or25, 0
  br i1 %tobool26, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false23, %lor.lhs.false22, %entry
  %i27 = bitcast i16* %mv to i32*
  store i32 0, i32* %i27, align 4, !tbaa !2
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false23
  tail call void @x264_8_mb_predict_mv_16x16(%struct.x264_t* nonnull %h, i32 0, i32 0, i16* %mv)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind
define hidden i32 @x264_8_mb_predict_mv_direct16x16(%struct.x264_t* %h, i32* %b_changed) local_unnamed_addr #2 {
entry:
  %type_col.i = alloca [2 x i32], align 4
  %l1mv.i.i = alloca [2 x [2 x i16]*], align 4
  %i_direct_mv_pred = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 51, i32 5
  %0 = load i32, i32* %i_direct_mv_pred, align 4, !tbaa !39
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %cleanup383, label %if.else

if.else:                                          ; preds = %entry
  %b_direct_spatial_mv_pred = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 51, i32 15
  %1 = load i32, i32* %b_direct_spatial_mv_pred, align 16, !tbaa !40
  %tobool = icmp eq i32 %1, 0
  br i1 %tobool, label %if.else2, label %if.then1

if.then1:                                         ; preds = %if.else
  %arrayidx2.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 0, i32 11
  %2 = load i8, i8* %arrayidx2.i.i, align 1, !tbaa !2
  %conv.i.i = sext i8 %2 to i32
  %arraydecay.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 0, i32 11, i32 0
  %arrayidx12.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 0, i32 4
  %3 = load i8, i8* %arrayidx12.i.i, align 4, !tbaa !2
  %conv13.i.i = sext i8 %3 to i32
  %arraydecay19.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 0, i32 4, i32 0
  %arrayidx24.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 0, i32 8
  %4 = load i8, i8* %arrayidx24.i.i, align 8, !tbaa !2
  %arraydecay31.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 0, i32 8, i32 0
  %cmp32.i.i = icmp eq i8 %4, -2
  br i1 %cmp32.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then1
  %arrayidx38.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 0, i32 3
  %5 = load i8, i8* %arrayidx38.i.i, align 1, !tbaa !2
  %arraydecay45.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 0, i32 3, i32 0
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then1
  %mv_c.0.i.i = phi i16* [ %arraydecay45.i.i, %if.then.i.i ], [ %arraydecay31.i.i, %if.then1 ]
  %i_refc.0.in.i.i = phi i8 [ %5, %if.then.i.i ], [ %4, %if.then1 ]
  %i_refc.0.i.i = sext i8 %i_refc.0.in.i.i to i32
  %cmp46.i.i = icmp ult i32 %conv13.i.i, %i_refc.0.i.i
  %cond.i.i = select i1 %cmp46.i.i, i32 %conv13.i.i, i32 %i_refc.0.i.i
  %cmp48.i.i = icmp ugt i32 %cond.i.i, %conv.i.i
  %conv.cond.i.i = select i1 %cmp48.i.i, i32 %conv.i.i, i32 %cond.i.i
  %cmp60.i.i = icmp slt i32 %conv.cond.i.i, 0
  br i1 %cmp60.i.i, label %if.end101.i.i, label %if.else.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  %cmp65.i.i = icmp uge i32 %cond.i.i, %conv.i.i
  %conv66.i.i = zext i1 %cmp65.i.i to i32
  %cmp67.i.i = icmp eq i32 %conv.cond.i.i, %conv13.i.i
  %conv68.i.i = zext i1 %cmp67.i.i to i32
  %add.i.i = add nuw nsw i32 %conv68.i.i, %conv66.i.i
  %cmp69.i.i = icmp eq i32 %conv.cond.i.i, %i_refc.0.i.i
  %conv70.i.i = zext i1 %cmp69.i.i to i32
  %add71.i.i = add nuw nsw i32 %add.i.i, %conv70.i.i
  %cmp72.i.i = icmp ugt i32 %add71.i.i, 1
  br i1 %cmp72.i.i, label %if.then74.i.i, label %if.else77.i.i

if.then74.i.i:                                    ; preds = %if.else.i.i
  %6 = load i16, i16* %arraydecay.i.i, align 2, !tbaa !37
  %conv.i.i.i = sext i16 %6 to i32
  %7 = load i16, i16* %arraydecay19.i.i, align 2, !tbaa !37
  %conv2.i.i.i = sext i16 %7 to i32
  %8 = load i16, i16* %mv_c.0.i.i, align 2, !tbaa !37
  %conv4.i.i.i = sext i16 %8 to i32
  %sub.i.i.i.i = sub nsw i32 %conv.i.i.i, %conv2.i.i.i
  %shr.i.i.i.i = ashr i32 %sub.i.i.i.i, 31
  %and.i.i.i.i = and i32 %shr.i.i.i.i, %sub.i.i.i.i
  %sub2.i.i.i.i = sub nsw i32 %conv.i.i.i, %and.i.i.i.i
  %add.i.i.i.i = add nsw i32 %and.i.i.i.i, %conv2.i.i.i
  %sub3.i.i.i.i = sub nsw i32 %add.i.i.i.i, %conv4.i.i.i
  %shr5.i.i.i.i = ashr i32 %sub3.i.i.i.i, 31
  %and6.i.i.i.i = and i32 %shr5.i.i.i.i, %sub3.i.i.i.i
  %sub7.i.i.i.i = sub nsw i32 %add.i.i.i.i, %and6.i.i.i.i
  %sub8.i.i.i.i = sub i32 %sub2.i.i.i.i, %sub7.i.i.i.i
  %shr10.i.i.i.i = ashr i32 %sub8.i.i.i.i, 31
  %and11.i.i.i.i = and i32 %shr10.i.i.i.i, %sub8.i.i.i.i
  %add12.i.i.i.i = add nsw i32 %and11.i.i.i.i, %sub7.i.i.i.i
  %arrayidx7.i.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 0, i32 11, i32 1
  %9 = load i16, i16* %arrayidx7.i.i.i, align 2, !tbaa !37
  %conv8.i.i.i = sext i16 %9 to i32
  %arrayidx9.i.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 0, i32 4, i32 1
  %10 = load i16, i16* %arrayidx9.i.i.i, align 2, !tbaa !37
  %conv10.i.i.i = sext i16 %10 to i32
  %arrayidx11.i.i.i = getelementptr inbounds i16, i16* %mv_c.0.i.i, i32 1
  %11 = load i16, i16* %arrayidx11.i.i.i, align 2, !tbaa !37
  %conv12.i.i.i = sext i16 %11 to i32
  %sub.i20.i.i.i = sub nsw i32 %conv8.i.i.i, %conv10.i.i.i
  %shr.i21.i.i.i = ashr i32 %sub.i20.i.i.i, 31
  %and.i22.i.i.i = and i32 %shr.i21.i.i.i, %sub.i20.i.i.i
  %sub2.i23.i.i.i = sub nsw i32 %conv8.i.i.i, %and.i22.i.i.i
  %add.i24.i.i.i = add nsw i32 %and.i22.i.i.i, %conv10.i.i.i
  %sub3.i25.i.i.i = sub nsw i32 %add.i24.i.i.i, %conv12.i.i.i
  %shr5.i26.i.i.i = ashr i32 %sub3.i25.i.i.i, 31
  %and6.i27.i.i.i = and i32 %shr5.i26.i.i.i, %sub3.i25.i.i.i
  %sub7.i28.i.i.i = sub nsw i32 %add.i24.i.i.i, %and6.i27.i.i.i
  %sub8.i29.i.i.i = sub i32 %sub2.i23.i.i.i, %sub7.i28.i.i.i
  %shr10.i30.i.i.i = ashr i32 %sub8.i29.i.i.i, 31
  %and11.i31.i.i.i = and i32 %shr10.i30.i.i.i, %sub8.i29.i.i.i
  %add12.i32.i.i.i = add nsw i32 %and11.i31.i.i.i, %sub7.i28.i.i.i
  %conv14.i.i.i = trunc i32 %add12.i32.i.i.i to i16
  %mv.i.sroa.0.sroa.9.0.insert.ext.i = shl i32 %add12.i32.i.i.i, 16
  %mv.i.sroa.0.sroa.0.0.insert.ext.i = and i32 %add12.i.i.i.i, 65535
  %mv.i.sroa.0.sroa.0.0.insert.insert.i = or i32 %mv.i.sroa.0.sroa.9.0.insert.ext.i, %mv.i.sroa.0.sroa.0.0.insert.ext.i
  br label %if.end101.i.i

if.else77.i.i:                                    ; preds = %if.else.i.i
  br i1 %cmp65.i.i, label %if.then80.i.i, label %if.else85.i.i

if.then80.i.i:                                    ; preds = %if.else77.i.i
  %i81.i.i = bitcast i16* %arraydecay.i.i to i32*
  %12 = load i32, i32* %i81.i.i, align 4, !tbaa !2
  %mv.i.sroa.0.sroa.9.0.extract.shift26.i = lshr i32 %12, 16
  %mv.i.sroa.0.sroa.9.0.extract.trunc27.i = trunc i32 %mv.i.sroa.0.sroa.9.0.extract.shift26.i to i16
  br label %if.end101.i.i

if.else85.i.i:                                    ; preds = %if.else77.i.i
  br i1 %cmp67.i.i, label %if.then88.i.i, label %if.else93.i.i

if.then88.i.i:                                    ; preds = %if.else85.i.i
  %i89.i.i = bitcast i16* %arraydecay19.i.i to i32*
  %13 = load i32, i32* %i89.i.i, align 4, !tbaa !2
  %mv.i.sroa.0.sroa.9.0.extract.shift24.i = lshr i32 %13, 16
  %mv.i.sroa.0.sroa.9.0.extract.trunc25.i = trunc i32 %mv.i.sroa.0.sroa.9.0.extract.shift24.i to i16
  br label %if.end101.i.i

if.else93.i.i:                                    ; preds = %if.else85.i.i
  %i94.i.i = bitcast i16* %mv_c.0.i.i to i32*
  %14 = load i32, i32* %i94.i.i, align 4, !tbaa !2
  %mv.i.sroa.0.sroa.9.0.extract.shift.i = lshr i32 %14, 16
  %mv.i.sroa.0.sroa.9.0.extract.trunc.i = trunc i32 %mv.i.sroa.0.sroa.9.0.extract.shift.i to i16
  br label %if.end101.i.i

if.end101.i.i:                                    ; preds = %if.else93.i.i, %if.then88.i.i, %if.then80.i.i, %if.then74.i.i, %if.end.i.i
  %mv.i.sroa.0.sroa.9.0.i = phi i16 [ %conv14.i.i.i, %if.then74.i.i ], [ %mv.i.sroa.0.sroa.9.0.extract.trunc27.i, %if.then80.i.i ], [ %mv.i.sroa.0.sroa.9.0.extract.trunc25.i, %if.then88.i.i ], [ %mv.i.sroa.0.sroa.9.0.extract.trunc.i, %if.else93.i.i ], [ 0, %if.end.i.i ]
  %mv.i.sroa.0.sroa.0.0.i = phi i32 [ %add12.i.i.i.i, %if.then74.i.i ], [ %12, %if.then80.i.i ], [ %13, %if.then88.i.i ], [ %14, %if.else93.i.i ], [ 0, %if.end.i.i ]
  %15 = phi i32 [ %mv.i.sroa.0.sroa.0.0.insert.insert.i, %if.then74.i.i ], [ %12, %if.then80.i.i ], [ %13, %if.then88.i.i ], [ %14, %if.else93.i.i ], [ 0, %if.end.i.i ]
  %i_ref.0.i.i = phi i32 [ %conv.cond.i.i, %if.then74.i.i ], [ %conv.cond.i.i, %if.then80.i.i ], [ %conv13.i.i, %if.then88.i.i ], [ %conv.cond.i.i, %if.else93.i.i ], [ -1, %if.end.i.i ]
  %arrayidx3.i3.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 0, i32 12
  %conv6.i.i.i = and i32 %i_ref.0.i.i, 255
  %cond14.i.i.i.i = mul nuw i32 %conv6.i.i.i, 16843009
  %i42.i.i6.i.i = bitcast i8* %arrayidx3.i3.i.i to i32*
  store i32 %cond14.i.i.i.i, i32* %i42.i.i6.i.i, align 4, !tbaa !2
  %add.ptr48.i.i.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 0, i32 20
  %i49.i.i8.i.i = bitcast i8* %add.ptr48.i.i.i.i to i32*
  store i32 %cond14.i.i.i.i, i32* %i49.i.i8.i.i, align 4, !tbaa !2
  %add.ptr55.i.i.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 0, i32 28
  %i56.i.i10.i.i = bitcast i8* %add.ptr55.i.i.i.i to i32*
  store i32 %cond14.i.i.i.i, i32* %i56.i.i10.i.i, align 4, !tbaa !2
  %add.ptr58.i.i.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 0, i32 36
  %i59.i.i11.i.i = bitcast i8* %add.ptr58.i.i.i.i to i32*
  store i32 %cond14.i.i.i.i, i32* %i59.i.i11.i.i, align 4, !tbaa !2
  %arrayidx3.i13.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 0, i32 12
  %i114.i.i19.i.i = bitcast [2 x i16]* %arrayidx3.i13.i.i to i32*
  store i32 %15, i32* %i114.i.i19.i.i, align 4, !tbaa !2
  %add.ptr115.i.i20134.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 0, i32 13
  %i116.i.i21.i.i = bitcast [2 x i16]* %add.ptr115.i.i20134.i.i to i32*
  store i32 %15, i32* %i116.i.i21.i.i, align 4, !tbaa !2
  %add.ptr117.i.i22135.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 0, i32 14
  %i118.i.i23.i.i = bitcast [2 x i16]* %add.ptr117.i.i22135.i.i to i32*
  store i32 %15, i32* %i118.i.i23.i.i, align 4, !tbaa !2
  %add.ptr119.i.i24136.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 0, i32 15
  %i120.i.i25.i.i = bitcast [2 x i16]* %add.ptr119.i.i24136.i.i to i32*
  store i32 %15, i32* %i120.i.i25.i.i, align 4, !tbaa !2
  %add.ptr121.i.i26137.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 0, i32 20
  %i114.i.i19.1.i.i = bitcast [2 x i16]* %add.ptr121.i.i26137.i.i to i32*
  store i32 %15, i32* %i114.i.i19.1.i.i, align 4, !tbaa !2
  %add.ptr115.i.i20.1138.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 0, i32 21
  %i116.i.i21.1.i.i = bitcast [2 x i16]* %add.ptr115.i.i20.1138.i.i to i32*
  store i32 %15, i32* %i116.i.i21.1.i.i, align 4, !tbaa !2
  %add.ptr117.i.i22.1139.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 0, i32 22
  %i118.i.i23.1.i.i = bitcast [2 x i16]* %add.ptr117.i.i22.1139.i.i to i32*
  store i32 %15, i32* %i118.i.i23.1.i.i, align 4, !tbaa !2
  %add.ptr119.i.i24.1140.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 0, i32 23
  %i120.i.i25.1.i.i = bitcast [2 x i16]* %add.ptr119.i.i24.1140.i.i to i32*
  store i32 %15, i32* %i120.i.i25.1.i.i, align 4, !tbaa !2
  %add.ptr121.i.i26.1141.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 0, i32 28
  %i114.i.i19.2.i.i = bitcast [2 x i16]* %add.ptr121.i.i26.1141.i.i to i32*
  store i32 %15, i32* %i114.i.i19.2.i.i, align 4, !tbaa !2
  %add.ptr115.i.i20.2142.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 0, i32 29
  %i116.i.i21.2.i.i = bitcast [2 x i16]* %add.ptr115.i.i20.2142.i.i to i32*
  store i32 %15, i32* %i116.i.i21.2.i.i, align 4, !tbaa !2
  %add.ptr117.i.i22.2143.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 0, i32 30
  %i118.i.i23.2.i.i = bitcast [2 x i16]* %add.ptr117.i.i22.2143.i.i to i32*
  store i32 %15, i32* %i118.i.i23.2.i.i, align 4, !tbaa !2
  %add.ptr119.i.i24.2144.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 0, i32 31
  %i120.i.i25.2.i.i = bitcast [2 x i16]* %add.ptr119.i.i24.2144.i.i to i32*
  store i32 %15, i32* %i120.i.i25.2.i.i, align 4, !tbaa !2
  %add.ptr121.i.i26.2145.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 0, i32 36
  %i114.i.i19.3.i.i = bitcast [2 x i16]* %add.ptr121.i.i26.2145.i.i to i32*
  store i32 %15, i32* %i114.i.i19.3.i.i, align 4, !tbaa !2
  %add.ptr115.i.i20.3146.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 0, i32 37
  %i116.i.i21.3.i.i = bitcast [2 x i16]* %add.ptr115.i.i20.3146.i.i to i32*
  store i32 %15, i32* %i116.i.i21.3.i.i, align 4, !tbaa !2
  %add.ptr117.i.i22.3147.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 0, i32 38
  %i118.i.i23.3.i.i = bitcast [2 x i16]* %add.ptr117.i.i22.3147.i.i to i32*
  store i32 %15, i32* %i118.i.i23.3.i.i, align 4, !tbaa !2
  %add.ptr119.i.i24.3148.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 0, i32 39
  %i120.i.i25.3.i.i = bitcast [2 x i16]* %add.ptr119.i.i24.3148.i.i to i32*
  store i32 %15, i32* %i120.i.i25.3.i.i, align 4, !tbaa !2
  %arrayidx2.1.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 1, i32 11
  %16 = load i8, i8* %arrayidx2.1.i.i, align 1, !tbaa !2
  %conv.1.i.i = sext i8 %16 to i32
  %arraydecay.1.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 1, i32 11, i32 0
  %arrayidx12.1.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 1, i32 4
  %17 = load i8, i8* %arrayidx12.1.i.i, align 4, !tbaa !2
  %conv13.1.i.i = sext i8 %17 to i32
  %arraydecay19.1.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 1, i32 4, i32 0
  %arrayidx24.1.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 1, i32 8
  %18 = load i8, i8* %arrayidx24.1.i.i, align 8, !tbaa !2
  %arraydecay31.1.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 1, i32 8, i32 0
  %cmp32.1.i.i = icmp eq i8 %18, -2
  br i1 %cmp32.1.i.i, label %if.then.1.i.i, label %if.end.1.i.i

if.then252.i.i:                                   ; preds = %if.end101.1.i.i
  store i32 0, i32* %i42.i.i6.i.i, align 4, !tbaa !2
  store i32 0, i32* %i49.i.i8.i.i, align 4, !tbaa !2
  store i32 0, i32* %i56.i.i10.i.i, align 4, !tbaa !2
  store i32 0, i32* %i59.i.i11.i.i, align 4, !tbaa !2
  store i32 0, i32* %i42.i.i6.1.i.i, align 4, !tbaa !2
  store i32 0, i32* %i49.i.i8.1.i.i, align 4, !tbaa !2
  store i32 0, i32* %i56.i.i10.1.i.i, align 4, !tbaa !2
  store i32 0, i32* %i59.i.i11.1.i.i, align 4, !tbaa !2
  br label %mb_predict_mv_direct16x16_spatial_progressive.exit

if.end253.i.i:                                    ; preds = %if.end101.1.i.i
  %i_threads.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 1
  %19 = load i32, i32* %i_threads.i.i, align 4, !tbaa !41
  %cmp254.i.i = icmp sgt i32 %19, 1
  br i1 %cmp254.i.i, label %land.lhs.true256.i.i, label %if.end273.i.i

land.lhs.true256.i.i:                             ; preds = %if.end253.i.i
  %conv259.i.i = sext i16 %mv.i.sroa.0.sroa.9.0.i to i32
  %arrayidx261.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 30, i32 1
  %20 = load i32, i32* %arrayidx261.i.i, align 4, !tbaa !42
  %cmp262.i.i = icmp slt i32 %20, %conv259.i.i
  %conv266.i.i = sext i16 %mv.i.sroa.11.sroa.9.0.i to i32
  %cmp270.i.i = icmp slt i32 %20, %conv266.i.i
  %or.cond.i = or i1 %cmp262.i.i, %cmp270.i.i
  br i1 %or.cond.i, label %mb_predict_mv_direct16x16_spatial_progressive.exit, label %if.end273.i.i

if.end273.i.i:                                    ; preds = %land.lhs.true256.i.i, %if.end253.i.i
  %mv.i.sroa.0.sroa.9.0.insert.ext29.i = zext i16 %mv.i.sroa.0.sroa.9.0.i to i32
  %mv.i.sroa.0.sroa.9.0.insert.shift30.i = shl nuw i32 %mv.i.sroa.0.sroa.9.0.insert.ext29.i, 16
  %mv.i.sroa.0.sroa.0.0.insert.ext21.i = and i32 %mv.i.sroa.0.sroa.0.0.i, 65535
  %mv.i.sroa.0.sroa.0.0.insert.insert23.i = or i32 %mv.i.sroa.0.sroa.9.0.insert.shift30.i, %mv.i.sroa.0.sroa.0.0.insert.ext21.i
  %mv.i.sroa.11.sroa.9.0.insert.ext.i = zext i16 %mv.i.sroa.11.sroa.9.0.i to i32
  %mv.i.sroa.11.sroa.9.0.insert.shift.i = shl nuw i32 %mv.i.sroa.11.sroa.9.0.insert.ext.i, 16
  %mv.i.sroa.11.sroa.0.0.insert.ext.i = and i32 %mv.i.sroa.11.sroa.0.0.i, 65535
  %mv.i.sroa.11.sroa.0.0.insert.insert.i = or i32 %mv.i.sroa.11.sroa.9.0.insert.shift.i, %mv.i.sroa.11.sroa.0.0.insert.ext.i
  %mv.i.sroa.11.0.insert.ext.i = zext i32 %mv.i.sroa.11.sroa.0.0.insert.insert.i to i64
  %mv.i.sroa.11.0.insert.shift.i = shl nuw i64 %mv.i.sroa.11.0.insert.ext.i, 32
  %mv.i.sroa.0.0.insert.ext.i = zext i32 %mv.i.sroa.0.sroa.0.0.insert.insert23.i to i64
  %mv.i.sroa.0.0.insert.insert.i = or i64 %mv.i.sroa.11.0.insert.shift.i, %mv.i.sroa.0.0.insert.ext.i
  %tobool276.i.i = icmp eq i64 %mv.i.sroa.0.0.insert.insert.i, 0
  %switch.i.i = icmp ult i8 %52, 4
  %or.cond.i.i = or i1 %tobool276.i.i, %switch.i.i
  br i1 %or.cond.i.i, label %mb_predict_mv_direct16x16_spatial_progressive.exit, label %lor.lhs.false295.i.i

lor.lhs.false295.i.i:                             ; preds = %if.end273.i.i
  %tobool298.i.i = icmp eq i8 %65, 0
  %tobool302.i.i = icmp eq i8 %conv102.1.i.i, 0
  %or.cond164.i.i = or i1 %tobool298.i.i, %tobool302.i.i
  br i1 %or.cond164.i.i, label %if.end304.i.i, label %mb_predict_mv_direct16x16_spatial_progressive.exit

if.end304.i.i:                                    ; preds = %lor.lhs.false295.i.i
  %sub307.i.i = sub nsw i32 16, %conv126.i.i
  %add308.i.i = sub nsw i32 17, %conv126.i.i
  %cmp311.i.i = icmp eq i8 %54, 14
  %add313.i.i = select i1 %cmp311.i.i, i32 2, i32 1
  %cmp324121.i.i = icmp ult i8 %54, 17
  br i1 %cmp324121.i.i, label %for.body327.lr.ph.i.i, label %mb_predict_mv_direct16x16_spatial_progressive.exit

for.body327.lr.ph.i.i:                            ; preds = %if.end304.i.i
  %and317.i.i = and i32 %sub307.i.i, 1
  %shr.i.i = lshr i32 4, %and317.i.i
  %shr321.i.i = ashr i32 %sub307.i.i, 1
  %shr322.i.i = lshr i32 4, %shr321.i.i
  %i_b8_stride352.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 6
  %i_b4_stride357.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 7
  %shl.i49.i.i = shl nuw nsw i32 %shr322.i.i, 1
  %add4.i50.i.i = add nsw i32 %shr.i.i, -3
  %sub.i51.i.i = add nsw i32 %add4.i50.i.i, %shl.i49.i.i
  %arrayidx5.i52.i.i = getelementptr inbounds [10 x void (i8*, i32)*], [10 x void (i8*, i32)*]* @x264_8_cache_mv_func_table, i32 0, i32 %sub.i51.i.i
  br label %for.body327.i.i

for.body327.i.i:                                  ; preds = %cleanup431.i.i, %for.body327.lr.ph.i.i
  %i8.0122.i.i = phi i32 [ 0, %for.body327.lr.ph.i.i ], [ %add437.i.i, %cleanup431.i.i ]
  %and328.i.i = and i32 %i8.0122.i.i, 1
  %21 = lshr i32 %i8.0122.i.i, 1
  %mul347.i.i = mul nuw nsw i32 %21, 3
  %22 = lshr i32 %mul347.i.i, 1
  %23 = load i32, i32* %i_b8_stride352.i.i, align 8, !tbaa !43
  %mul353.i.i = mul nsw i32 %22, %23
  %add354.i.i = add nsw i32 %mul353.i.i, %and328.i.i
  %mul355.i.i = mul nuw nsw i32 %and328.i.i, 3
  %24 = load i32, i32* %i_b4_stride357.i.i, align 4, !tbaa !44
  %mul358.i.i = mul nsw i32 %24, %mul347.i.i
  %add359.i.i = add nsw i32 %mul358.i.i, %mul355.i.i
  %arrayidx379.i.i = getelementptr inbounds i8, i8* %arrayidx225.i.i, i32 %add354.i.i
  %25 = load i8, i8* %arrayidx379.i.i, align 1, !tbaa !2
  %cmp381.i.i = icmp eq i8 %25, 0
  br i1 %cmp381.i.i, label %if.end397.i.i, label %if.else384.i.i

if.else384.i.i:                                   ; preds = %for.body327.i.i
  %cmp387.i.i = icmp slt i8 %25, 0
  br i1 %cmp387.i.i, label %land.lhs.true389.i.i, label %cleanup431.i.i

land.lhs.true389.i.i:                             ; preds = %if.else384.i.i
  %arrayidx390.i.i = getelementptr inbounds i8, i8* %arrayidx231.i.i, i32 %add354.i.i
  %26 = load i8, i8* %arrayidx390.i.i, align 1, !tbaa !2
  %cmp392.i.i = icmp eq i8 %26, 0
  br i1 %cmp392.i.i, label %if.end397.i.i, label %cleanup431.i.i

if.end397.i.i:                                    ; preds = %land.lhs.true389.i.i, %for.body327.i.i
  %idx.0.i.i = phi i32 [ 0, %for.body327.i.i ], [ 1, %land.lhs.true389.i.i ]
  %arrayidx398.i.i = getelementptr inbounds [2 x [2 x i16]*], [2 x [2 x i16]*]* %l1mv.i.i, i32 0, i32 %idx.0.i.i
  %27 = load [2 x i16]*, [2 x i16]** %arrayidx398.i.i, align 4, !tbaa !45
  %arrayidx400.i.i = getelementptr inbounds [2 x i16], [2 x i16]* %27, i32 %add359.i.i, i32 0
  %28 = load i16, i16* %arrayidx400.i.i, align 2, !tbaa !37
  %conv401.i.i = sext i16 %28 to i32
  %29 = icmp slt i32 %conv401.i.i, 0
  %neg.i.i = sub nsw i32 0, %conv401.i.i
  %30 = select i1 %29, i32 %neg.i.i, i32 %conv401.i.i
  %cmp403.i.i = icmp slt i32 %30, 2
  br i1 %cmp403.i.i, label %land.lhs.true405.i.i, label %cleanup431.i.i

land.lhs.true405.i.i:                             ; preds = %if.end397.i.i
  %arrayidx408.i.i = getelementptr inbounds [2 x i16], [2 x i16]* %27, i32 %add359.i.i, i32 1
  %31 = load i16, i16* %arrayidx408.i.i, align 2, !tbaa !37
  %conv409.i.i = sext i16 %31 to i32
  %32 = icmp slt i32 %conv409.i.i, 0
  %neg2.i.i = sub nsw i32 0, %conv409.i.i
  %33 = select i1 %32, i32 %neg2.i.i, i32 %conv409.i.i
  %cmp411.i.i = icmp slt i32 %33, 2
  br i1 %cmp411.i.i, label %if.then413.i.i, label %cleanup431.i.i

if.then413.i.i:                                   ; preds = %land.lhs.true405.i.i
  br i1 %tobool298.i.i, label %if.then.i53.i.i, label %if.end421.i.i

if.then.i53.i.i:                                  ; preds = %if.then413.i.i
  %mul420.i.i = shl i32 %i8.0122.i.i, 3
  %mul419.i.i = shl nuw nsw i32 %and328.i.i, 1
  %add.i44.i.i = or i32 %mul420.i.i, %mul419.i.i
  %add2.i46.i.i = or i32 %add.i44.i.i, 12
  %arrayidx3.i47.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 0, i32 %add2.i46.i.i
  %34 = bitcast [2 x i16]* %arrayidx3.i47.i.i to i8*
  %35 = load void (i8*, i32)*, void (i8*, i32)** %arrayidx5.i52.i.i, align 4, !tbaa !45
  tail call void %35(i8* nonnull %34, i32 0) #3
  br label %if.end421.i.i

if.end421.i.i:                                    ; preds = %if.then.i53.i.i, %if.then413.i.i
  br i1 %tobool302.i.i, label %if.then.i.i.i, label %cleanup431.i.i

if.then.i.i.i:                                    ; preds = %if.end421.i.i
  %mul428.i.i = shl i32 %i8.0122.i.i, 3
  %mul427.i.i = shl nuw nsw i32 %and328.i.i, 1
  %add.i.i.i = or i32 %mul428.i.i, %mul427.i.i
  %add2.i.i.i = or i32 %add.i.i.i, 12
  %arrayidx3.i.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 1, i32 %add2.i.i.i
  %36 = bitcast [2 x i16]* %arrayidx3.i.i.i to i8*
  %37 = load void (i8*, i32)*, void (i8*, i32)** %arrayidx5.i52.i.i, align 4, !tbaa !45
  tail call void %37(i8* nonnull %36, i32 0) #3
  br label %cleanup431.i.i

cleanup431.i.i:                                   ; preds = %if.then.i.i.i, %if.end421.i.i, %land.lhs.true405.i.i, %if.end397.i.i, %land.lhs.true389.i.i, %if.else384.i.i
  %add437.i.i = add nuw nsw i32 %i8.0122.i.i, %add313.i.i
  %cmp324.i.i = icmp slt i32 %add437.i.i, %add308.i.i
  br i1 %cmp324.i.i, label %for.body327.i.i, label %mb_predict_mv_direct16x16_spatial_progressive.exit

if.then.1.i.i:                                    ; preds = %if.end101.i.i
  %arrayidx38.1.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 1, i32 3
  %38 = load i8, i8* %arrayidx38.1.i.i, align 1, !tbaa !2
  %arraydecay45.1.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 1, i32 3, i32 0
  br label %if.end.1.i.i

if.end.1.i.i:                                     ; preds = %if.then.1.i.i, %if.end101.i.i
  %mv_c.0.1.i.i = phi i16* [ %arraydecay45.1.i.i, %if.then.1.i.i ], [ %arraydecay31.1.i.i, %if.end101.i.i ]
  %i_refc.0.in.1.i.i = phi i8 [ %38, %if.then.1.i.i ], [ %18, %if.end101.i.i ]
  %i_refc.0.1.i.i = sext i8 %i_refc.0.in.1.i.i to i32
  %cmp46.1.i.i = icmp ult i32 %conv13.1.i.i, %i_refc.0.1.i.i
  %cond.1.i.i = select i1 %cmp46.1.i.i, i32 %conv13.1.i.i, i32 %i_refc.0.1.i.i
  %cmp48.1.i.i = icmp ugt i32 %cond.1.i.i, %conv.1.i.i
  %conv.cond.1.i.i = select i1 %cmp48.1.i.i, i32 %conv.1.i.i, i32 %cond.1.i.i
  %cmp60.1.i.i = icmp slt i32 %conv.cond.1.i.i, 0
  br i1 %cmp60.1.i.i, label %if.end101.1.i.i, label %if.else.1.i.i

if.else.1.i.i:                                    ; preds = %if.end.1.i.i
  %cmp65.1.i.i = icmp uge i32 %cond.1.i.i, %conv.1.i.i
  %conv66.1.i.i = zext i1 %cmp65.1.i.i to i32
  %cmp67.1.i.i = icmp eq i32 %conv.cond.1.i.i, %conv13.1.i.i
  %conv68.1.i.i = zext i1 %cmp67.1.i.i to i32
  %add.1.i.i = add nuw nsw i32 %conv68.1.i.i, %conv66.1.i.i
  %cmp69.1.i.i = icmp eq i32 %conv.cond.1.i.i, %i_refc.0.1.i.i
  %conv70.1.i.i = zext i1 %cmp69.1.i.i to i32
  %add71.1.i.i = add nuw nsw i32 %add.1.i.i, %conv70.1.i.i
  %cmp72.1.i.i = icmp ugt i32 %add71.1.i.i, 1
  br i1 %cmp72.1.i.i, label %if.then74.1.i.i, label %if.else77.1.i.i

if.else77.1.i.i:                                  ; preds = %if.else.1.i.i
  br i1 %cmp65.1.i.i, label %if.then80.1.i.i, label %if.else85.1.i.i

if.else85.1.i.i:                                  ; preds = %if.else77.1.i.i
  br i1 %cmp67.1.i.i, label %if.then88.1.i.i, label %if.else93.1.i.i

if.else93.1.i.i:                                  ; preds = %if.else85.1.i.i
  %i94.1.i.i = bitcast i16* %mv_c.0.1.i.i to i32*
  %39 = load i32, i32* %i94.1.i.i, align 4, !tbaa !2
  %mv.i.sroa.11.sroa.9.0.extract.shift.i = lshr i32 %39, 16
  %mv.i.sroa.11.sroa.9.0.extract.trunc.i = trunc i32 %mv.i.sroa.11.sroa.9.0.extract.shift.i to i16
  br label %if.end101.1.i.i

if.then88.1.i.i:                                  ; preds = %if.else85.1.i.i
  %i89.1.i.i = bitcast i16* %arraydecay19.1.i.i to i32*
  %40 = load i32, i32* %i89.1.i.i, align 4, !tbaa !2
  %mv.i.sroa.11.sroa.9.0.extract.shift10.i = lshr i32 %40, 16
  %mv.i.sroa.11.sroa.9.0.extract.trunc11.i = trunc i32 %mv.i.sroa.11.sroa.9.0.extract.shift10.i to i16
  br label %if.end101.1.i.i

if.then80.1.i.i:                                  ; preds = %if.else77.1.i.i
  %i81.1.i.i = bitcast i16* %arraydecay.1.i.i to i32*
  %41 = load i32, i32* %i81.1.i.i, align 4, !tbaa !2
  %mv.i.sroa.11.sroa.9.0.extract.shift12.i = lshr i32 %41, 16
  %mv.i.sroa.11.sroa.9.0.extract.trunc13.i = trunc i32 %mv.i.sroa.11.sroa.9.0.extract.shift12.i to i16
  br label %if.end101.1.i.i

if.then74.1.i.i:                                  ; preds = %if.else.1.i.i
  %42 = load i16, i16* %arraydecay.1.i.i, align 2, !tbaa !37
  %conv.i.1.i.i = sext i16 %42 to i32
  %43 = load i16, i16* %arraydecay19.1.i.i, align 2, !tbaa !37
  %conv2.i.1.i.i = sext i16 %43 to i32
  %44 = load i16, i16* %mv_c.0.1.i.i, align 2, !tbaa !37
  %conv4.i.1.i.i = sext i16 %44 to i32
  %sub.i.i.1.i.i = sub nsw i32 %conv.i.1.i.i, %conv2.i.1.i.i
  %shr.i.i.1.i.i = ashr i32 %sub.i.i.1.i.i, 31
  %and.i.i.1.i.i = and i32 %shr.i.i.1.i.i, %sub.i.i.1.i.i
  %sub2.i.i.1.i.i = sub nsw i32 %conv.i.1.i.i, %and.i.i.1.i.i
  %add.i.i.1.i.i = add nsw i32 %and.i.i.1.i.i, %conv2.i.1.i.i
  %sub3.i.i.1.i.i = sub nsw i32 %add.i.i.1.i.i, %conv4.i.1.i.i
  %shr5.i.i.1.i.i = ashr i32 %sub3.i.i.1.i.i, 31
  %and6.i.i.1.i.i = and i32 %shr5.i.i.1.i.i, %sub3.i.i.1.i.i
  %sub7.i.i.1.i.i = sub nsw i32 %add.i.i.1.i.i, %and6.i.i.1.i.i
  %sub8.i.i.1.i.i = sub i32 %sub2.i.i.1.i.i, %sub7.i.i.1.i.i
  %shr10.i.i.1.i.i = ashr i32 %sub8.i.i.1.i.i, 31
  %and11.i.i.1.i.i = and i32 %shr10.i.i.1.i.i, %sub8.i.i.1.i.i
  %add12.i.i.1.i.i = add nsw i32 %and11.i.i.1.i.i, %sub7.i.i.1.i.i
  %arrayidx7.i.1.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 1, i32 11, i32 1
  %45 = load i16, i16* %arrayidx7.i.1.i.i, align 2, !tbaa !37
  %conv8.i.1.i.i = sext i16 %45 to i32
  %arrayidx9.i.1.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 1, i32 4, i32 1
  %46 = load i16, i16* %arrayidx9.i.1.i.i, align 2, !tbaa !37
  %conv10.i.1.i.i = sext i16 %46 to i32
  %arrayidx11.i.1.i.i = getelementptr inbounds i16, i16* %mv_c.0.1.i.i, i32 1
  %47 = load i16, i16* %arrayidx11.i.1.i.i, align 2, !tbaa !37
  %conv12.i.1.i.i = sext i16 %47 to i32
  %sub.i20.i.1.i.i = sub nsw i32 %conv8.i.1.i.i, %conv10.i.1.i.i
  %shr.i21.i.1.i.i = ashr i32 %sub.i20.i.1.i.i, 31
  %and.i22.i.1.i.i = and i32 %shr.i21.i.1.i.i, %sub.i20.i.1.i.i
  %sub2.i23.i.1.i.i = sub nsw i32 %conv8.i.1.i.i, %and.i22.i.1.i.i
  %add.i24.i.1.i.i = add nsw i32 %and.i22.i.1.i.i, %conv10.i.1.i.i
  %sub3.i25.i.1.i.i = sub nsw i32 %add.i24.i.1.i.i, %conv12.i.1.i.i
  %shr5.i26.i.1.i.i = ashr i32 %sub3.i25.i.1.i.i, 31
  %and6.i27.i.1.i.i = and i32 %shr5.i26.i.1.i.i, %sub3.i25.i.1.i.i
  %sub7.i28.i.1.i.i = sub nsw i32 %add.i24.i.1.i.i, %and6.i27.i.1.i.i
  %sub8.i29.i.1.i.i = sub i32 %sub2.i23.i.1.i.i, %sub7.i28.i.1.i.i
  %shr10.i30.i.1.i.i = ashr i32 %sub8.i29.i.1.i.i, 31
  %and11.i31.i.1.i.i = and i32 %shr10.i30.i.1.i.i, %sub8.i29.i.1.i.i
  %add12.i32.i.1.i.i = add nsw i32 %and11.i31.i.1.i.i, %sub7.i28.i.1.i.i
  %conv14.i.1.i.i = trunc i32 %add12.i32.i.1.i.i to i16
  %mv.i.sroa.11.sroa.9.0.insert.ext14.i = shl i32 %add12.i32.i.1.i.i, 16
  %mv.i.sroa.11.sroa.0.0.insert.ext6.i = and i32 %add12.i.i.1.i.i, 65535
  %mv.i.sroa.11.sroa.0.0.insert.insert8.i = or i32 %mv.i.sroa.11.sroa.9.0.insert.ext14.i, %mv.i.sroa.11.sroa.0.0.insert.ext6.i
  br label %if.end101.1.i.i

if.end101.1.i.i:                                  ; preds = %if.then74.1.i.i, %if.then80.1.i.i, %if.then88.1.i.i, %if.else93.1.i.i, %if.end.1.i.i
  %mv.i.sroa.11.sroa.9.0.i = phi i16 [ %conv14.i.1.i.i, %if.then74.1.i.i ], [ %mv.i.sroa.11.sroa.9.0.extract.trunc13.i, %if.then80.1.i.i ], [ %mv.i.sroa.11.sroa.9.0.extract.trunc11.i, %if.then88.1.i.i ], [ %mv.i.sroa.11.sroa.9.0.extract.trunc.i, %if.else93.1.i.i ], [ 0, %if.end.1.i.i ]
  %mv.i.sroa.11.sroa.0.0.i = phi i32 [ %add12.i.i.1.i.i, %if.then74.1.i.i ], [ %41, %if.then80.1.i.i ], [ %40, %if.then88.1.i.i ], [ %39, %if.else93.1.i.i ], [ 0, %if.end.1.i.i ]
  %48 = phi i32 [ %mv.i.sroa.11.sroa.0.0.insert.insert8.i, %if.then74.1.i.i ], [ %41, %if.then80.1.i.i ], [ %40, %if.then88.1.i.i ], [ %39, %if.else93.1.i.i ], [ 0, %if.end.1.i.i ]
  %i_ref.0.1.i.i = phi i32 [ %conv.cond.1.i.i, %if.then74.1.i.i ], [ %conv.cond.1.i.i, %if.then80.1.i.i ], [ %conv13.1.i.i, %if.then88.1.i.i ], [ %conv.cond.1.i.i, %if.else93.1.i.i ], [ -1, %if.end.1.i.i ]
  %arrayidx3.i3.1.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 1, i32 12
  %conv6.i.1.i.i = and i32 %i_ref.0.1.i.i, 255
  %cond14.i.i.1.i.i = mul nuw i32 %conv6.i.1.i.i, 16843009
  %i42.i.i6.1.i.i = bitcast i8* %arrayidx3.i3.1.i.i to i32*
  store i32 %cond14.i.i.1.i.i, i32* %i42.i.i6.1.i.i, align 4, !tbaa !2
  %add.ptr48.i.i.1.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 1, i32 20
  %i49.i.i8.1.i.i = bitcast i8* %add.ptr48.i.i.1.i.i to i32*
  store i32 %cond14.i.i.1.i.i, i32* %i49.i.i8.1.i.i, align 4, !tbaa !2
  %add.ptr55.i.i.1.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 1, i32 28
  %i56.i.i10.1.i.i = bitcast i8* %add.ptr55.i.i.1.i.i to i32*
  store i32 %cond14.i.i.1.i.i, i32* %i56.i.i10.1.i.i, align 4, !tbaa !2
  %add.ptr58.i.i.1.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 1, i32 36
  %i59.i.i11.1.i.i = bitcast i8* %add.ptr58.i.i.1.i.i to i32*
  store i32 %cond14.i.i.1.i.i, i32* %i59.i.i11.1.i.i, align 4, !tbaa !2
  %arrayidx3.i13.1.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 1, i32 12
  %i114.i.i19.1125.i.i = bitcast [2 x i16]* %arrayidx3.i13.1.i.i to i32*
  store i32 %48, i32* %i114.i.i19.1125.i.i, align 4, !tbaa !2
  %add.ptr115.i.i20.1126149.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 1, i32 13
  %i116.i.i21.1127.i.i = bitcast [2 x i16]* %add.ptr115.i.i20.1126149.i.i to i32*
  store i32 %48, i32* %i116.i.i21.1127.i.i, align 4, !tbaa !2
  %add.ptr117.i.i22.1128150.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 1, i32 14
  %i118.i.i23.1129.i.i = bitcast [2 x i16]* %add.ptr117.i.i22.1128150.i.i to i32*
  store i32 %48, i32* %i118.i.i23.1129.i.i, align 4, !tbaa !2
  %add.ptr119.i.i24.1130151.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 1, i32 15
  %i120.i.i25.1131.i.i = bitcast [2 x i16]* %add.ptr119.i.i24.1130151.i.i to i32*
  store i32 %48, i32* %i120.i.i25.1131.i.i, align 4, !tbaa !2
  %add.ptr121.i.i26.1132152.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 1, i32 20
  %i114.i.i19.1.1.i.i = bitcast [2 x i16]* %add.ptr121.i.i26.1132152.i.i to i32*
  store i32 %48, i32* %i114.i.i19.1.1.i.i, align 4, !tbaa !2
  %add.ptr115.i.i20.1.1153.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 1, i32 21
  %i116.i.i21.1.1.i.i = bitcast [2 x i16]* %add.ptr115.i.i20.1.1153.i.i to i32*
  store i32 %48, i32* %i116.i.i21.1.1.i.i, align 4, !tbaa !2
  %add.ptr117.i.i22.1.1154.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 1, i32 22
  %i118.i.i23.1.1.i.i = bitcast [2 x i16]* %add.ptr117.i.i22.1.1154.i.i to i32*
  store i32 %48, i32* %i118.i.i23.1.1.i.i, align 4, !tbaa !2
  %add.ptr119.i.i24.1.1155.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 1, i32 23
  %i120.i.i25.1.1.i.i = bitcast [2 x i16]* %add.ptr119.i.i24.1.1155.i.i to i32*
  store i32 %48, i32* %i120.i.i25.1.1.i.i, align 4, !tbaa !2
  %add.ptr121.i.i26.1.1156.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 1, i32 28
  %i114.i.i19.2.1.i.i = bitcast [2 x i16]* %add.ptr121.i.i26.1.1156.i.i to i32*
  store i32 %48, i32* %i114.i.i19.2.1.i.i, align 4, !tbaa !2
  %add.ptr115.i.i20.2.1157.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 1, i32 29
  %i116.i.i21.2.1.i.i = bitcast [2 x i16]* %add.ptr115.i.i20.2.1157.i.i to i32*
  store i32 %48, i32* %i116.i.i21.2.1.i.i, align 4, !tbaa !2
  %add.ptr117.i.i22.2.1158.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 1, i32 30
  %i118.i.i23.2.1.i.i = bitcast [2 x i16]* %add.ptr117.i.i22.2.1158.i.i to i32*
  store i32 %48, i32* %i118.i.i23.2.1.i.i, align 4, !tbaa !2
  %add.ptr119.i.i24.2.1159.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 1, i32 31
  %i120.i.i25.2.1.i.i = bitcast [2 x i16]* %add.ptr119.i.i24.2.1159.i.i to i32*
  store i32 %48, i32* %i120.i.i25.2.1.i.i, align 4, !tbaa !2
  %add.ptr121.i.i26.2.1160.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 1, i32 36
  %i114.i.i19.3.1.i.i = bitcast [2 x i16]* %add.ptr121.i.i26.2.1160.i.i to i32*
  store i32 %48, i32* %i114.i.i19.3.1.i.i, align 4, !tbaa !2
  %add.ptr115.i.i20.3.1161.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 1, i32 37
  %i116.i.i21.3.1.i.i = bitcast [2 x i16]* %add.ptr115.i.i20.3.1161.i.i to i32*
  store i32 %48, i32* %i116.i.i21.3.1.i.i, align 4, !tbaa !2
  %add.ptr117.i.i22.3.1162.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 1, i32 38
  %i118.i.i23.3.1.i.i = bitcast [2 x i16]* %add.ptr117.i.i22.3.1162.i.i to i32*
  store i32 %48, i32* %i118.i.i23.3.1.i.i, align 4, !tbaa !2
  %add.ptr119.i.i24.3.1163.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 1, i32 39
  %i120.i.i25.3.1.i.i = bitcast [2 x i16]* %add.ptr119.i.i24.3.1163.i.i to i32*
  store i32 %48, i32* %i120.i.i25.3.1.i.i, align 4, !tbaa !2
  %conv102.1.i.i = trunc i32 %i_ref.0.1.i.i to i8
  %i_mb_xy.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 12
  %49 = load i32, i32* %i_mb_xy.i.i, align 8, !tbaa !46
  %arrayidx112.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 63, i32 1, i32 0
  %50 = load %struct.x264_frame*, %struct.x264_frame** %arrayidx112.i.i, align 4, !tbaa !45
  %mb_type.i.i = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %50, i32 0, i32 51
  %51 = load i8*, i8** %mb_type.i.i, align 8, !tbaa !47
  %arrayidx113.i.i = getelementptr inbounds i8, i8* %51, i32 %49
  %52 = load i8, i8* %arrayidx113.i.i, align 1, !tbaa !2
  %mb_partition.i.i = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %50, i32 0, i32 52
  %53 = load i8*, i8** %mb_partition.i.i, align 4, !tbaa !51
  %arrayidx125.i.i = getelementptr inbounds i8, i8* %53, i32 %49
  %54 = load i8, i8* %arrayidx125.i.i, align 1, !tbaa !2
  %conv126.i.i = zext i8 %54 to i32
  %i_partition.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 77
  store i32 %conv126.i.i, i32* %i_partition.i.i, align 4, !tbaa !5
  %i_b4_xy.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 14
  %55 = load i32, i32* %i_b4_xy.i.i, align 64, !tbaa !52
  %i_b8_xy.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 13
  %56 = load i32, i32* %i_b8_xy.i.i, align 4, !tbaa !53
  %arrayidx224.i.i = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %50, i32 0, i32 60, i32 0
  %57 = load i8*, i8** %arrayidx224.i.i, align 4, !tbaa !45
  %arrayidx225.i.i = getelementptr inbounds i8, i8* %57, i32 %56
  %arrayidx230.i.i = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %50, i32 0, i32 60, i32 1
  %58 = load i8*, i8** %arrayidx230.i.i, align 4, !tbaa !45
  %arrayidx231.i.i = getelementptr inbounds i8, i8* %58, i32 %56
  %59 = bitcast [2 x [2 x i16]*]* %l1mv.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %59) #3
  %arrayinit.begin232.i.i = getelementptr inbounds [2 x [2 x i16]*], [2 x [2 x i16]*]* %l1mv.i.i, i32 0, i32 0
  %arrayidx237.i.i = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %50, i32 0, i32 53, i32 0
  %60 = load [2 x i16]*, [2 x i16]** %arrayidx237.i.i, align 16, !tbaa !45
  %arrayidx238.i.i = getelementptr inbounds [2 x i16], [2 x i16]* %60, i32 %55
  store [2 x i16]* %arrayidx238.i.i, [2 x i16]** %arrayinit.begin232.i.i, align 4, !tbaa !45
  %arrayinit.element239.i.i = getelementptr inbounds [2 x [2 x i16]*], [2 x [2 x i16]*]* %l1mv.i.i, i32 0, i32 1
  %arrayidx244.i.i = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %50, i32 0, i32 53, i32 1
  %61 = load [2 x i16]*, [2 x i16]** %arrayidx244.i.i, align 4, !tbaa !45
  %arrayidx245.i.i = getelementptr inbounds [2 x i16], [2 x i16]* %61, i32 %55
  store [2 x i16]* %arrayidx245.i.i, [2 x i16]** %arrayinit.element239.i.i, align 4, !tbaa !45
  %62 = trunc i32 %i_ref.0.1.i.i to i16
  %ref.i.sroa.4.0.insert.ext.i = shl i16 %62, 8
  %63 = trunc i32 %i_ref.0.i.i to i16
  %ref.i.sroa.0.0.insert.ext.i = and i16 %63, 128
  %ref.i.sroa.4.0.insert.ext.masked.i = and i16 %ref.i.sroa.4.0.insert.ext.i, -32768
  %64 = or i16 %ref.i.sroa.4.0.insert.ext.masked.i, %ref.i.sroa.0.0.insert.ext.i
  %cmp250.i.i = icmp eq i16 %64, -32640
  %65 = trunc i32 %i_ref.0.i.i to i8
  br i1 %cmp250.i.i, label %if.then252.i.i, label %if.end253.i.i

mb_predict_mv_direct16x16_spatial_progressive.exit: ; preds = %cleanup431.i.i, %if.then252.i.i, %land.lhs.true256.i.i, %if.end273.i.i, %lor.lhs.false295.i.i, %if.end304.i.i
  %retval.0.i.i = phi i32 [ 1, %if.then252.i.i ], [ 0, %land.lhs.true256.i.i ], [ 1, %if.end273.i.i ], [ 1, %if.end304.i.i ], [ 1, %lor.lhs.false295.i.i ], [ 1, %cleanup431.i.i ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %59) #3
  br label %if.end4

if.else2:                                         ; preds = %if.else
  %i_mb_x.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 10
  %66 = load i32, i32* %i_mb_x.i, align 16, !tbaa !54
  %i_mb_y.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 11
  %67 = load i32, i32* %i_mb_y.i, align 4, !tbaa !55
  %i_mb_xy.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 12
  %68 = load i32, i32* %i_mb_xy.i, align 8, !tbaa !46
  %69 = bitcast [2 x i32]* %type_col.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %69) #3
  %arrayinit.begin.i = getelementptr inbounds [2 x i32], [2 x i32]* %type_col.i, i32 0, i32 0
  %arrayidx3.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 63, i32 1, i32 0
  %70 = load %struct.x264_frame*, %struct.x264_frame** %arrayidx3.i, align 4, !tbaa !45
  %mb_type.i = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %70, i32 0, i32 51
  %71 = load i8*, i8** %mb_type.i, align 8, !tbaa !47
  %arrayidx4.i = getelementptr inbounds i8, i8* %71, i32 %68
  %72 = load i8, i8* %arrayidx4.i, align 1, !tbaa !2
  %conv.i = sext i8 %72 to i32
  store i32 %conv.i, i32* %arrayinit.begin.i, align 4, !tbaa !42
  %arrayinit.element.i = getelementptr inbounds [2 x i32], [2 x i32]* %type_col.i, i32 0, i32 1
  store i32 %conv.i, i32* %arrayinit.element.i, align 4, !tbaa !42
  %mb_partition.i = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %70, i32 0, i32 52
  %73 = load i8*, i8** %mb_partition.i, align 4, !tbaa !51
  %arrayidx15.i = getelementptr inbounds i8, i8* %73, i32 %68
  %74 = load i8, i8* %arrayidx15.i, align 1, !tbaa !2
  %conv16.i = zext i8 %74 to i32
  %i_partition.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 77
  store i32 %conv16.i, i32* %i_partition.i, align 4, !tbaa !5
  %i_mb_stride.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 5
  %75 = load i32, i32* %i_mb_stride.i, align 4, !tbaa !56
  %mul.i = shl i32 %67, 4
  %mul27.i = mul i32 %mul.i, %75
  %mul28.i = shl i32 %66, 2
  %add.i = add nsw i32 %mul27.i, %mul28.i
  %mul31.i = shl i32 %67, 2
  %mul32.i = mul i32 %mul31.i, %75
  %mul33.i = shl i32 %66, 1
  %add34.i = add nsw i32 %mul32.i, %mul33.i
  %arrayidx3.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 1, i32 12
  %i42.i.i.i = bitcast i8* %arrayidx3.i.i to i32*
  store i32 0, i32* %i42.i.i.i, align 4, !tbaa !2
  %add.ptr48.i.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 1, i32 20
  %i49.i.i.i = bitcast i8* %add.ptr48.i.i.i to i32*
  store i32 0, i32* %i49.i.i.i, align 4, !tbaa !2
  %add.ptr55.i.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 1, i32 28
  %i56.i.i.i = bitcast i8* %add.ptr55.i.i.i to i32*
  store i32 0, i32* %i56.i.i.i, align 4, !tbaa !2
  %add.ptr58.i.i.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 1, i32 36
  %i59.i.i.i = bitcast i8* %add.ptr58.i.i.i to i32*
  store i32 0, i32* %i59.i.i.i, align 4, !tbaa !2
  %sub.i = sub nsw i32 16, %conv16.i
  %add37.i = sub nsw i32 17, %conv16.i
  %cmp.i = icmp eq i8 %74, 14
  %add41.i = select i1 %cmp.i, i32 2, i32 1
  %cmp50639.i = icmp ult i8 %74, 17
  br i1 %cmp50639.i, label %for.body.lr.ph.i, label %mb_predict_mv_direct16x16_temporal.exit

for.body.lr.ph.i:                                 ; preds = %if.else2
  %and.i = and i32 %sub.i, 1
  %shr.i = lshr i32 4, %and.i
  %shr48.i = ashr i32 %sub.i, 1
  %shr49.i = lshr i32 4, %shr48.i
  %i_b8_stride.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 6
  %dist_scale_factor99.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 105
  %i_b4_stride.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 7
  %i_threads.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 1
  %arrayidx130.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 30, i32 1
  %shl.i482.i = shl nuw nsw i32 %shr49.i, 1
  %add4.i483.i = add nsw i32 %shr.i, -3
  %sub.i484.i = add nsw i32 %add4.i483.i, %shl.i482.i
  %arrayidx5.i485.i = getelementptr inbounds [10 x void (i8*, i32)*], [10 x void (i8*, i32)*]* @x264_8_cache_ref_func_table, i32 0, i32 %sub.i484.i
  %arrayidx5.i559.i = getelementptr inbounds [10 x void (i8*, i32)*], [10 x void (i8*, i32)*]* @x264_8_cache_mv_func_table, i32 0, i32 %sub.i484.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %for.body.lr.ph.i
  %i8.0640.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add169.i, %for.inc.i ]
  %and52.i = and i32 %i8.0640.i, 1
  %76 = lshr i32 %i8.0640.i, 1
  %mul54.i = mul nuw nsw i32 %76, 3
  %arrayidx55.i = getelementptr inbounds [2 x i32], [2 x i32]* %type_col.i, i32 0, i32 %76
  %77 = load i32, i32* %arrayidx55.i, align 4, !tbaa !42
  %switch.i = icmp ult i32 %77, 4
  br i1 %switch.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  %mul69.i = shl nuw nsw i32 %and52.i, 1
  %mul70.i = shl i32 %i8.0640.i, 3
  %add.i301.i = or i32 %mul70.i, %mul69.i
  %add2.i303.i = or i32 %add.i301.i, 12
  %arrayidx3.i304.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 0, i32 %add2.i303.i
  %78 = load void (i8*, i32)*, void (i8*, i32)** %arrayidx5.i485.i, align 4, !tbaa !45
  tail call void %78(i8* nonnull %arrayidx3.i304.i, i32 0) #3
  %arrayidx3.i356.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 0, i32 %add2.i303.i
  %79 = bitcast [2 x i16]* %arrayidx3.i356.i to i8*
  %80 = load void (i8*, i32)*, void (i8*, i32)** %arrayidx5.i559.i, align 4, !tbaa !45
  tail call void %80(i8* nonnull %79, i32 0) #3
  %arrayidx3.i418.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 1, i32 %add2.i303.i
  %81 = bitcast [2 x i16]* %arrayidx3.i418.i to i8*
  %82 = load void (i8*, i32)*, void (i8*, i32)** %arrayidx5.i559.i, align 4, !tbaa !45
  tail call void %82(i8* nonnull %81, i32 0) #3
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %add75.i = or i32 %and52.i, %add34.i
  %83 = lshr i32 %mul54.i, 1
  %84 = load i32, i32* %i_b8_stride.i, align 8, !tbaa !43
  %mul78.i = mul nsw i32 %84, %83
  %add79.i = add nsw i32 %mul78.i, %add75.i
  %85 = load %struct.x264_frame*, %struct.x264_frame** %arrayidx3.i, align 4, !tbaa !45
  %arrayidx83.i = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %85, i32 0, i32 60, i32 0
  %86 = load i8*, i8** %arrayidx83.i, align 4, !tbaa !45
  %arrayidx84.i = getelementptr inbounds i8, i8* %86, i32 %add79.i
  %87 = load i8, i8* %arrayidx84.i, align 1, !tbaa !2
  %conv85.i = sext i8 %87 to i32
  %add88.i = add nsw i32 %conv85.i, 2
  %arrayidx89.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 108, i32 %add88.i
  %88 = load i8, i8* %arrayidx89.i, align 1, !tbaa !2
  %cmp95.i = icmp sgt i8 %88, -1
  br i1 %cmp95.i, label %if.then97.i, label %mb_predict_mv_direct16x16_temporal.exit

if.then97.i:                                      ; preds = %if.end.i
  %conv90636.i = zext i8 %88 to i32
  %89 = load [4 x i16]*, [4 x i16]** %dist_scale_factor99.i, align 8, !tbaa !57
  %arrayidx101.i = getelementptr inbounds [4 x i16], [4 x i16]* %89, i32 %conv90636.i, i32 0
  %90 = load i16, i16* %arrayidx101.i, align 2, !tbaa !37
  %conv102.i = sext i16 %90 to i32
  %arrayidx106.i = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %85, i32 0, i32 53, i32 0
  %91 = load [2 x i16]*, [2 x i16]** %arrayidx106.i, align 16, !tbaa !45
  %mul107.i = mul nuw nsw i32 %and52.i, 3
  %add108.i = add nsw i32 %add.i, %mul107.i
  %92 = load i32, i32* %i_b4_stride.i, align 4, !tbaa !44
  %mul110.i = mul nsw i32 %92, %mul54.i
  %add111.i = add nsw i32 %add108.i, %mul110.i
  %arraydecay.i = getelementptr inbounds [2 x i16], [2 x i16]* %91, i32 %add111.i, i32 0
  %arrayidx113.i = getelementptr inbounds [2 x i16], [2 x i16]* %91, i32 %add111.i, i32 1
  %93 = load i16, i16* %arrayidx113.i, align 2, !tbaa !37
  %conv114.i = sext i16 %93 to i32
  %94 = load i16, i16* %arraydecay.i, align 2, !tbaa !37
  %conv119.i = sext i16 %94 to i32
  %mul120.i = mul nsw i32 %conv119.i, %conv102.i
  %add121.i = add nsw i32 %mul120.i, 128
  %shr122.i = ashr i32 %add121.i, 8
  %mul124.i = mul nsw i32 %conv114.i, %conv102.i
  %add125.i = add nsw i32 %mul124.i, 128
  %shr126.i = ashr i32 %add125.i, 8
  %95 = load i32, i32* %i_threads.i, align 4, !tbaa !41
  %cmp127.i = icmp sgt i32 %95, 1
  br i1 %cmp127.i, label %land.lhs.true.i, label %if.end142.i

land.lhs.true.i:                                  ; preds = %if.then97.i
  %96 = load i32, i32* %arrayidx130.i, align 4, !tbaa !42
  %cmp131.i = icmp sgt i32 %shr126.i, %96
  %sub135.i = sub nsw i32 %shr126.i, %conv114.i
  %cmp139.i = icmp sgt i32 %sub135.i, %96
  %or.cond.i489 = or i1 %cmp131.i, %cmp139.i
  br i1 %or.cond.i489, label %mb_predict_mv_direct16x16_temporal.exit, label %if.end142.i

if.end142.i:                                      ; preds = %land.lhs.true.i, %if.then97.i
  %mul143.i = shl nuw nsw i32 %and52.i, 1
  %mul144.i = shl i32 %i8.0640.i, 3
  %add.i477.i = or i32 %mul144.i, %mul143.i
  %add2.i479.i = or i32 %add.i477.i, 12
  %arrayidx3.i480.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 0, i32 %add2.i479.i
  %97 = load void (i8*, i32)*, void (i8*, i32)** %arrayidx5.i485.i, align 4, !tbaa !45
  tail call void %97(i8* nonnull %arrayidx3.i480.i, i32 %conv90636.i) #3
  %arrayidx3.i554.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 0, i32 %add2.i479.i
  %98 = bitcast [2 x i16]* %arrayidx3.i554.i to i8*
  %and.i.i = and i32 %shr122.i, 65535
  %shl.i549.i = shl i32 %shr126.i, 16
  %add.i550.i = or i32 %and.i.i, %shl.i549.i
  %99 = load void (i8*, i32)*, void (i8*, i32)** %arrayidx5.i559.i, align 4, !tbaa !45
  tail call void %99(i8* nonnull %98, i32 %add.i550.i) #3
  %arrayidx3.i296.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 1, i32 %add2.i479.i
  %100 = bitcast [2 x i16]* %arrayidx3.i296.i to i8*
  %101 = load i16, i16* %arraydecay.i, align 2, !tbaa !37
  %conv151637.i = zext i16 %101 to i32
  %sub152.i = sub nsw i32 %shr122.i, %conv151637.i
  %and.i613.i = and i32 %sub152.i, 65535
  %sub154.i = sub nsw i32 %shr126.i, %conv114.i
  %shl.i614.i = shl i32 %sub154.i, 16
  %add.i615.i = or i32 %and.i613.i, %shl.i614.i
  %102 = load void (i8*, i32)*, void (i8*, i32)** %arrayidx5.i559.i, align 4, !tbaa !45
  tail call void %102(i8* nonnull %100, i32 %add.i615.i) #3
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end142.i, %if.then.i
  %add169.i = add nuw nsw i32 %i8.0640.i, %add41.i
  %cmp50.i = icmp slt i32 %add169.i, %add37.i
  br i1 %cmp50.i, label %for.body.i, label %mb_predict_mv_direct16x16_temporal.exit

mb_predict_mv_direct16x16_temporal.exit:          ; preds = %if.end.i, %land.lhs.true.i, %for.inc.i, %if.else2
  %103 = phi i32 [ 1, %if.else2 ], [ 1, %for.inc.i ], [ 0, %if.end.i ], [ 0, %land.lhs.true.i ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %69) #3
  br label %if.end4

if.end4:                                          ; preds = %mb_predict_mv_direct16x16_spatial_progressive.exit, %mb_predict_mv_direct16x16_temporal.exit
  %b_available.0 = phi i32 [ %retval.0.i.i, %mb_predict_mv_direct16x16_spatial_progressive.exit ], [ %103, %mb_predict_mv_direct16x16_temporal.exit ]
  %cmp5 = icmp ne i32* %b_changed, null
  %tobool6 = icmp ne i32 %b_available.0, 0
  %or.cond = and i1 %cmp5, %tobool6
  br i1 %or.cond, label %if.then7, label %if.end268

if.then7:                                         ; preds = %if.end4
  %direct_mv = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 6
  %i = bitcast [2 x [4 x [2 x i16]]]* %direct_mv to i32*
  %104 = load i32, i32* %i, align 8, !tbaa !2
  %arraydecay13 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 0, i32 12, i32 0
  %i14 = bitcast i16* %arraydecay13 to i32*
  %105 = load i32, i32* %i14, align 4, !tbaa !2
  %xor = xor i32 %105, %104
  %arrayidx18 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 6, i32 1
  %i21 = bitcast [4 x [2 x i16]]* %arrayidx18 to i32*
  %106 = load i32, i32* %i21, align 8, !tbaa !2
  %arraydecay28 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 1, i32 12, i32 0
  %i29 = bitcast i16* %arraydecay28 to i32*
  %107 = load i32, i32* %i29, align 4, !tbaa !2
  %xor30 = xor i32 %107, %106
  %or = or i32 %xor30, %xor
  %arrayidx34 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 7, i32 0, i32 0
  %108 = load i8, i8* %arrayidx34, align 8, !tbaa !2
  %arrayidx39 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 0, i32 12
  %109 = load i8, i8* %arrayidx39, align 1, !tbaa !2
  %xor41480 = xor i8 %109, %108
  %xor41 = sext i8 %xor41480 to i32
  %or42 = or i32 %or, %xor41
  %arrayidx47 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 7, i32 1, i32 0
  %110 = load i8, i8* %arrayidx47, align 4, !tbaa !2
  %arrayidx54 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 1, i32 12
  %111 = load i8, i8* %arrayidx54, align 1, !tbaa !2
  %xor56481 = xor i8 %111, %110
  %xor56 = sext i8 %xor56481 to i32
  %or57 = or i32 %or42, %xor56
  %tobool58 = icmp eq i32 %or57, 0
  br i1 %tobool58, label %land.lhs.true59, label %if.end264.thread

land.lhs.true59:                                  ; preds = %if.then7
  %i_partition = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 77
  %112 = load i32, i32* %i_partition, align 4, !tbaa !5
  %cmp61 = icmp eq i32 %112, 16
  br i1 %cmp61, label %if.end264.thread500, label %if.end128

if.end128:                                        ; preds = %land.lhs.true59
  %arraydecay69 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 6, i32 0, i32 3, i32 0
  %i70 = bitcast i16* %arraydecay69 to i32*
  %113 = load i32, i32* %i70, align 4, !tbaa !2
  %arraydecay77 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 0, i32 30, i32 0
  %i78 = bitcast i16* %arraydecay77 to i32*
  %114 = load i32, i32* %i78, align 4, !tbaa !2
  %xor79 = xor i32 %114, %113
  %arraydecay86 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 6, i32 1, i32 3, i32 0
  %i87 = bitcast i16* %arraydecay86 to i32*
  %115 = load i32, i32* %i87, align 4, !tbaa !2
  %arraydecay94 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 1, i32 30, i32 0
  %i95 = bitcast i16* %arraydecay94 to i32*
  %116 = load i32, i32* %i95, align 4, !tbaa !2
  %xor96 = xor i32 %116, %115
  %or97 = or i32 %xor96, %xor79
  %arrayidx102 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 7, i32 0, i32 3
  %117 = load i8, i8* %arrayidx102, align 1, !tbaa !2
  %arrayidx109 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 0, i32 30
  %118 = load i8, i8* %arrayidx109, align 1, !tbaa !2
  %xor111486 = xor i8 %118, %117
  %xor111 = sext i8 %xor111486 to i32
  %or112 = or i32 %or97, %xor111
  %arrayidx117 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 7, i32 1, i32 3
  %119 = load i8, i8* %arrayidx117, align 1, !tbaa !2
  %arrayidx124 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 1, i32 30
  %120 = load i8, i8* %arrayidx124, align 1, !tbaa !2
  %xor126487 = xor i8 %120, %119
  %xor126 = sext i8 %xor126487 to i32
  %or127 = or i32 %or112, %xor126
  %tobool129 = icmp eq i32 %or127, 0
  br i1 %tobool129, label %land.lhs.true130, label %if.end264.thread

land.lhs.true130:                                 ; preds = %if.end128
  %cmp133 = icmp eq i32 %112, 13
  br i1 %cmp133, label %if.end264, label %if.end264.thread500

if.end264.thread500:                              ; preds = %land.lhs.true59, %land.lhs.true130
  store i32 0, i32* %b_changed, align 4, !tbaa !42
  br label %cleanup383

if.end264.thread:                                 ; preds = %if.end128, %if.then7
  %changed.1.ph = phi i32 [ %or127, %if.end128 ], [ %or57, %if.then7 ]
  store i32 %changed.1.ph, i32* %b_changed, align 4, !tbaa !42
  br label %for.cond.preheader

if.end264:                                        ; preds = %land.lhs.true130
  %arraydecay141 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 6, i32 0, i32 1, i32 0
  %i142 = bitcast i16* %arraydecay141 to i32*
  %121 = load i32, i32* %i142, align 4, !tbaa !2
  %arraydecay149 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 0, i32 14, i32 0
  %i150 = bitcast i16* %arraydecay149 to i32*
  %122 = load i32, i32* %i150, align 4, !tbaa !2
  %xor151 = xor i32 %122, %121
  %arraydecay158 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 6, i32 1, i32 1, i32 0
  %i159 = bitcast i16* %arraydecay158 to i32*
  %123 = load i32, i32* %i159, align 4, !tbaa !2
  %arraydecay166 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 1, i32 14, i32 0
  %i167 = bitcast i16* %arraydecay166 to i32*
  %124 = load i32, i32* %i167, align 4, !tbaa !2
  %xor168 = xor i32 %124, %123
  %or169 = or i32 %xor168, %xor151
  %arraydecay175 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 6, i32 0, i32 2, i32 0
  %i176 = bitcast i16* %arraydecay175 to i32*
  %125 = load i32, i32* %i176, align 8, !tbaa !2
  %arraydecay183 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 0, i32 28, i32 0
  %i184 = bitcast i16* %arraydecay183 to i32*
  %126 = load i32, i32* %i184, align 4, !tbaa !2
  %xor185 = xor i32 %126, %125
  %or186 = or i32 %or169, %xor185
  %arraydecay192 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 6, i32 1, i32 2, i32 0
  %i193 = bitcast i16* %arraydecay192 to i32*
  %127 = load i32, i32* %i193, align 8, !tbaa !2
  %arraydecay200 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 1, i32 28, i32 0
  %i201 = bitcast i16* %arraydecay200 to i32*
  %128 = load i32, i32* %i201, align 4, !tbaa !2
  %xor202 = xor i32 %128, %127
  %or203 = or i32 %or186, %xor202
  %arrayidx208 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 7, i32 0, i32 1
  %129 = load i8, i8* %arrayidx208, align 1, !tbaa !2
  %arrayidx215 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 0, i32 14
  %130 = load i8, i8* %arrayidx215, align 1, !tbaa !2
  %xor217482 = xor i8 %130, %129
  %xor217 = sext i8 %xor217482 to i32
  %or218 = or i32 %or203, %xor217
  %arrayidx223 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 7, i32 1, i32 1
  %131 = load i8, i8* %arrayidx223, align 1, !tbaa !2
  %arrayidx230 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 1, i32 14
  %132 = load i8, i8* %arrayidx230, align 1, !tbaa !2
  %xor232483 = xor i8 %132, %131
  %xor232 = sext i8 %xor232483 to i32
  %or233 = or i32 %or218, %xor232
  %arrayidx238 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 7, i32 0, i32 2
  %133 = load i8, i8* %arrayidx238, align 2, !tbaa !2
  %arrayidx245 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 0, i32 28
  %134 = load i8, i8* %arrayidx245, align 1, !tbaa !2
  %xor247484 = xor i8 %134, %133
  %xor247 = sext i8 %xor247484 to i32
  %or248 = or i32 %or233, %xor247
  %arrayidx253 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 7, i32 1, i32 2
  %135 = load i8, i8* %arrayidx253, align 2, !tbaa !2
  %arrayidx260 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 1, i32 28
  %136 = load i8, i8* %arrayidx260, align 1, !tbaa !2
  %xor262485 = xor i8 %136, %135
  %xor262 = sext i8 %xor262485 to i32
  %or263 = or i32 %or248, %xor262
  store i32 %or263, i32* %b_changed, align 4, !tbaa !42
  %tobool265 = icmp eq i32 %or263, 0
  br i1 %tobool265, label %cleanup383, label %for.cond.preheader

if.end268:                                        ; preds = %if.end4
  br i1 %tobool6, label %for.cond.preheader, label %cleanup383

for.cond.preheader:                               ; preds = %if.end268, %if.end264, %if.end264.thread
  %i_partition378 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 77
  %137 = load i32, i32* %i_partition378, align 4, !tbaa !5
  %direct_partition = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 8
  %arraydecay279 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 0, i32 12, i32 0
  %i280 = bitcast i16* %arraydecay279 to i32*
  %138 = load i32, i32* %i280, align 4, !tbaa !2
  %arrayidx284 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 6, i32 0
  %i287 = bitcast [4 x [2 x i16]]* %arrayidx284 to i32*
  store i32 %138, i32* %i287, align 8, !tbaa !2
  %arraydecay294 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 0, i32 14, i32 0
  %i295 = bitcast i16* %arraydecay294 to i32*
  %139 = load i32, i32* %i295, align 4, !tbaa !2
  %arraydecay301 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 6, i32 0, i32 1, i32 0
  %i302 = bitcast i16* %arraydecay301 to i32*
  store i32 %139, i32* %i302, align 4, !tbaa !2
  %arraydecay309 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 0, i32 28, i32 0
  %i310 = bitcast i16* %arraydecay309 to i32*
  %140 = load i32, i32* %i310, align 4, !tbaa !2
  %arraydecay316 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 6, i32 0, i32 2, i32 0
  %i317 = bitcast i16* %arraydecay316 to i32*
  store i32 %140, i32* %i317, align 8, !tbaa !2
  %arraydecay324 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 0, i32 30, i32 0
  %i325 = bitcast i16* %arraydecay324 to i32*
  %141 = load i32, i32* %i325, align 4, !tbaa !2
  %arraydecay331 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 6, i32 0, i32 3, i32 0
  %i332 = bitcast i16* %arraydecay331 to i32*
  store i32 %141, i32* %i332, align 4, !tbaa !2
  %arrayidx338 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 0, i32 12
  %142 = load i8, i8* %arrayidx338, align 1, !tbaa !2
  %arrayidx343 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 7, i32 0, i32 0
  store i8 %142, i8* %arrayidx343, align 4, !tbaa !2
  %arrayidx349 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 0, i32 14
  %143 = load i8, i8* %arrayidx349, align 1, !tbaa !2
  %arrayidx354 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 7, i32 0, i32 1
  store i8 %143, i8* %arrayidx354, align 1, !tbaa !2
  %arrayidx360 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 0, i32 28
  %144 = load i8, i8* %arrayidx360, align 1, !tbaa !2
  %arrayidx365 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 7, i32 0, i32 2
  store i8 %144, i8* %arrayidx365, align 2, !tbaa !2
  %arrayidx371 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 0, i32 30
  %145 = load i8, i8* %arrayidx371, align 1, !tbaa !2
  %arrayidx376 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 7, i32 0, i32 3
  store i8 %145, i8* %arrayidx376, align 1, !tbaa !2
  %arraydecay279.1 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 1, i32 12, i32 0
  %i280.1 = bitcast i16* %arraydecay279.1 to i32*
  %146 = load i32, i32* %i280.1, align 4, !tbaa !2
  %arrayidx284.1 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 6, i32 1
  %i287.1 = bitcast [4 x [2 x i16]]* %arrayidx284.1 to i32*
  store i32 %146, i32* %i287.1, align 8, !tbaa !2
  %arraydecay294.1 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 1, i32 14, i32 0
  %i295.1 = bitcast i16* %arraydecay294.1 to i32*
  %147 = load i32, i32* %i295.1, align 4, !tbaa !2
  %arraydecay301.1 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 6, i32 1, i32 1, i32 0
  %i302.1 = bitcast i16* %arraydecay301.1 to i32*
  store i32 %147, i32* %i302.1, align 4, !tbaa !2
  %arraydecay309.1 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 1, i32 28, i32 0
  %i310.1 = bitcast i16* %arraydecay309.1 to i32*
  %148 = load i32, i32* %i310.1, align 4, !tbaa !2
  %arraydecay316.1 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 6, i32 1, i32 2, i32 0
  %i317.1 = bitcast i16* %arraydecay316.1 to i32*
  store i32 %148, i32* %i317.1, align 8, !tbaa !2
  %arraydecay324.1 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 1, i32 30, i32 0
  %i325.1 = bitcast i16* %arraydecay324.1 to i32*
  %149 = load i32, i32* %i325.1, align 4, !tbaa !2
  %arraydecay331.1 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 6, i32 1, i32 3, i32 0
  %i332.1 = bitcast i16* %arraydecay331.1 to i32*
  store i32 %149, i32* %i332.1, align 4, !tbaa !2
  %arrayidx338.1 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 1, i32 12
  %150 = load i8, i8* %arrayidx338.1, align 1, !tbaa !2
  %arrayidx343.1 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 7, i32 1, i32 0
  store i8 %150, i8* %arrayidx343.1, align 4, !tbaa !2
  %arrayidx349.1 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 1, i32 14
  %151 = load i8, i8* %arrayidx349.1, align 1, !tbaa !2
  %arrayidx354.1 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 7, i32 1, i32 1
  store i8 %151, i8* %arrayidx354.1, align 1, !tbaa !2
  %arrayidx360.1 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 1, i32 28
  %152 = load i8, i8* %arrayidx360.1, align 1, !tbaa !2
  %arrayidx365.1 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 7, i32 1, i32 2
  store i8 %152, i8* %arrayidx365.1, align 2, !tbaa !2
  %arrayidx371.1 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 1, i32 30
  %153 = load i8, i8* %arrayidx371.1, align 1, !tbaa !2
  %arrayidx376.1 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 7, i32 1, i32 3
  store i8 %153, i8* %arrayidx376.1, align 1, !tbaa !2
  store i32 %137, i32* %direct_partition, align 32, !tbaa !58
  br label %cleanup383

cleanup383:                                       ; preds = %for.cond.preheader, %if.end264.thread500, %if.end264, %if.end268, %entry
  %retval.1 = phi i32 [ 0, %entry ], [ 0, %if.end268 ], [ 1, %if.end264 ], [ 1, %if.end264.thread500 ], [ 1, %for.cond.preheader ]
  ret i32 %retval.1
}

; Function Attrs: nofree norecurse nounwind
define hidden void @x264_8_mb_predict_mv_ref16x16(%struct.x264_t* readonly %h, i32 %i_list, i32 %i_ref, [2 x i16]* nocapture %mvc, i32* nocapture %i_mvc) local_unnamed_addr #0 {
entry:
  %arrayidx2 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 70, i32 %i_list, i32 %i_ref
  %0 = load [2 x i16]*, [2 x i16]** %arrayidx2, align 4, !tbaa !45
  %i_type = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 51, i32 2
  %1 = load i32, i32* %i_type, align 8, !tbaa !59
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %arrayidx5 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 2, i32 %i_list, i32 30
  %2 = load i8, i8* %arrayidx5, align 1, !tbaa !2
  %conv = sext i8 %2 to i32
  %cmp6 = icmp eq i32 %conv, %i_ref
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %arraydecay = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 92, i32 3, i32 %i_list, i32 30, i32 0
  %i13 = bitcast i16* %arraydecay to i32*
  %3 = load i32, i32* %i13, align 4, !tbaa !2
  %i16 = bitcast [2 x i16]* %mvc to i32*
  store i32 %3, i32* %i16, align 4, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %i.0 = phi i32 [ 1, %if.then ], [ 0, %land.lhs.true ], [ 0, %entry ]
  %cmp17 = icmp eq i32 %i_ref, 0
  br i1 %cmp17, label %land.lhs.true19, label %if.end56

land.lhs.true19:                                  ; preds = %if.end
  %b_have_lowres = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 59, i32 18
  %4 = load i32, i32* %b_have_lowres, align 16, !tbaa !60
  %tobool = icmp eq i32 %4, 0
  br i1 %tobool, label %if.end56, label %if.then20

if.then20:                                        ; preds = %land.lhs.true19
  %tobool21 = icmp eq i32 %i_list, 0
  br i1 %tobool21, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then20
  %arrayidx23 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 63, i32 1, i32 0
  %5 = load %struct.x264_frame*, %struct.x264_frame** %arrayidx23, align 4, !tbaa !45
  %fenc = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 60
  %6 = load %struct.x264_frame*, %struct.x264_frame** %fenc, align 8, !tbaa !61
  br label %cond.end

cond.false:                                       ; preds = %if.then20
  %fenc26 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 60
  %7 = load %struct.x264_frame*, %struct.x264_frame** %fenc26, align 8, !tbaa !61
  %arrayidx30 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 63, i32 0, i32 0
  %8 = load %struct.x264_frame*, %struct.x264_frame** %arrayidx30, align 8, !tbaa !45
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %.sink349 = phi %struct.x264_frame* [ %8, %cond.false ], [ %6, %cond.true ]
  %.pn = phi %struct.x264_frame* [ %7, %cond.false ], [ %5, %cond.true ]
  %9 = phi %struct.x264_frame* [ %7, %cond.false ], [ %6, %cond.true ]
  %.sink.in = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %.pn, i32 0, i32 15
  %.sink = load i32, i32* %.sink.in, align 4, !tbaa !62
  %i_frame31 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %.sink349, i32 0, i32 15
  %10 = load i32, i32* %i_frame31, align 4, !tbaa !62
  %11 = xor i32 %10, -1
  %sub33 = add i32 %.sink, %11
  %i_bframe = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 21
  %12 = load i32, i32* %i_bframe, align 4, !tbaa !63
  %cmp34 = icmp sgt i32 %sub33, %12
  br i1 %cmp34, label %if.end56, label %if.then36

if.then36:                                        ; preds = %cond.end
  %arrayidx39 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %9, i32 0, i32 55, i32 %i_list, i32 %sub33
  %13 = load [2 x i16]*, [2 x i16]** %arrayidx39, align 4, !tbaa !45
  %arrayidx41 = getelementptr inbounds [2 x i16], [2 x i16]* %13, i32 0, i32 0
  %14 = load i16, i16* %arrayidx41, align 2, !tbaa !37
  %cmp43 = icmp eq i16 %14, 32767
  br i1 %cmp43, label %if.end56, label %if.then45

if.then45:                                        ; preds = %if.then36
  %i_mb_xy = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 12
  %15 = load i32, i32* %i_mb_xy, align 8, !tbaa !46
  %arraydecay48 = getelementptr inbounds [2 x i16], [2 x i16]* %13, i32 %15, i32 0
  %i49 = bitcast i16* %arraydecay48 to i32*
  %16 = load i32, i32* %i49, align 4, !tbaa !2
  %mul = shl i32 %16, 1
  %and = and i32 %mul, -65538
  %arraydecay51 = getelementptr inbounds [2 x i16], [2 x i16]* %mvc, i32 %i.0, i32 0
  %i52 = bitcast i16* %arraydecay51 to i32*
  store i32 %and, i32* %i52, align 4, !tbaa !2
  %inc53 = add nuw nsw i32 %i.0, 1
  br label %if.end56

if.end56:                                         ; preds = %cond.end, %if.then36, %if.then45, %land.lhs.true19, %if.end
  %i.3 = phi i32 [ %i.0, %land.lhs.true19 ], [ %i.0, %if.end ], [ %i.0, %cond.end ], [ %inc53, %if.then45 ], [ %i.0, %if.then36 ]
  %arrayidx58 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 47, i32 0
  %17 = load i32, i32* %arrayidx58, align 4, !tbaa !42
  %arraydecay60 = getelementptr inbounds [2 x i16], [2 x i16]* %0, i32 %17, i32 0
  %i61 = bitcast i16* %arraydecay60 to i32*
  %18 = load i32, i32* %i61, align 4, !tbaa !2
  %arraydecay63 = getelementptr inbounds [2 x i16], [2 x i16]* %mvc, i32 %i.3, i32 0
  %i64 = bitcast i16* %arraydecay63 to i32*
  store i32 %18, i32* %i64, align 4, !tbaa !2
  %inc65 = add nuw nsw i32 %i.3, 1
  %i_mb_top_xy = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 48
  %19 = load i32, i32* %i_mb_top_xy, align 4, !tbaa !64
  %arraydecay68 = getelementptr inbounds [2 x i16], [2 x i16]* %0, i32 %19, i32 0
  %i69 = bitcast i16* %arraydecay68 to i32*
  %20 = load i32, i32* %i69, align 4, !tbaa !2
  %arraydecay71 = getelementptr inbounds [2 x i16], [2 x i16]* %mvc, i32 %inc65, i32 0
  %i72 = bitcast i16* %arraydecay71 to i32*
  store i32 %20, i32* %i72, align 4, !tbaa !2
  %inc73 = add nuw nsw i32 %i.3, 2
  %i_mb_topleft_xy = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 49
  %21 = load i32, i32* %i_mb_topleft_xy, align 32, !tbaa !65
  %arraydecay76 = getelementptr inbounds [2 x i16], [2 x i16]* %0, i32 %21, i32 0
  %i77 = bitcast i16* %arraydecay76 to i32*
  %22 = load i32, i32* %i77, align 4, !tbaa !2
  %arraydecay79 = getelementptr inbounds [2 x i16], [2 x i16]* %mvc, i32 %inc73, i32 0
  %i80 = bitcast i16* %arraydecay79 to i32*
  store i32 %22, i32* %i80, align 4, !tbaa !2
  %inc81 = add nuw nsw i32 %i.3, 3
  %i_mb_topright_xy = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 50
  %23 = load i32, i32* %i_mb_topright_xy, align 4, !tbaa !66
  %arraydecay84 = getelementptr inbounds [2 x i16], [2 x i16]* %0, i32 %23, i32 0
  %i85 = bitcast i16* %arraydecay84 to i32*
  %24 = load i32, i32* %i85, align 4, !tbaa !2
  %arraydecay87 = getelementptr inbounds [2 x i16], [2 x i16]* %mvc, i32 %inc81, i32 0
  %i88 = bitcast i16* %arraydecay87 to i32*
  store i32 %24, i32* %i88, align 4, !tbaa !2
  %inc89 = add nuw nsw i32 %i.3, 4
  %arrayidx92 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 63, i32 0, i32 0
  %25 = load %struct.x264_frame*, %struct.x264_frame** %arrayidx92, align 8, !tbaa !45
  %arrayidx94 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %25, i32 0, i32 61, i32 0
  %26 = load i32, i32* %arrayidx94, align 4, !tbaa !42
  %cmp95 = icmp sgt i32 %26, 0
  br i1 %cmp95, label %if.then97, label %if.end231

if.then97:                                        ; preds = %if.end56
  %i_mb_y = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 11
  %27 = load i32, i32* %i_mb_y, align 4, !tbaa !55
  %and102 = and i32 %27, 1
  %fdec = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 61
  %28 = load %struct.x264_frame*, %struct.x264_frame** %fdec, align 4, !tbaa !67
  %i_poc = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %28, i32 0, i32 1
  %29 = load i32, i32* %i_poc, align 4, !tbaa !68
  %arrayidx104 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %28, i32 0, i32 2, i32 %and102
  %30 = load i32, i32* %arrayidx104, align 4, !tbaa !42
  %arrayidx107 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 63, i32 %i_list, i32 %i_ref
  %31 = load %struct.x264_frame*, %struct.x264_frame** %arrayidx107, align 4, !tbaa !45
  %i_poc108 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %31, i32 0, i32 1
  %32 = load i32, i32* %i_poc108, align 4, !tbaa !68
  %and110 = and i32 %i_ref, 1
  %xor = xor i32 %and102, %and110
  %arrayidx111 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %25, i32 0, i32 2, i32 %xor
  %33 = load i32, i32* %arrayidx111, align 4, !tbaa !42
  %i_mb_xy114 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 12
  %34 = load i32, i32* %i_mb_xy114, align 8, !tbaa !46
  %i_mb_stride = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 5
  %add112.neg = add i32 %30, %29
  %add = sub i32 %add112.neg, %32
  %sub119 = sub i32 %add, %33
  %arrayidx121 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %25, i32 0, i32 63, i32 0
  %35 = load i16, i16* %arrayidx121, align 2, !tbaa !37
  %conv122 = sext i16 %35 to i32
  %mul123 = mul nsw i32 %sub119, %conv122
  %mv16x16 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %25, i32 0, i32 54
  %36 = load [2 x i16]*, [2 x i16]** %mv16x16, align 8, !tbaa !69
  %arrayidx125 = getelementptr inbounds [2 x i16], [2 x i16]* %36, i32 %34, i32 0
  %37 = load i16, i16* %arrayidx125, align 2, !tbaa !37
  %conv126 = sext i16 %37 to i32
  %mul127 = mul nsw i32 %mul123, %conv126
  %add128 = add nsw i32 %mul127, 128
  %38 = lshr i32 %add128, 8
  %conv130 = trunc i32 %38 to i16
  %arrayidx132 = getelementptr inbounds [2 x i16], [2 x i16]* %mvc, i32 %inc89, i32 0
  store i16 %conv130, i16* %arrayidx132, align 2, !tbaa !37
  %arrayidx135 = getelementptr inbounds [2 x i16], [2 x i16]* %36, i32 %34, i32 1
  %39 = load i16, i16* %arrayidx135, align 2, !tbaa !37
  %conv136 = sext i16 %39 to i32
  %mul137 = mul nsw i32 %mul123, %conv136
  %add138 = add nsw i32 %mul137, 128
  %40 = lshr i32 %add138, 8
  %conv140 = trunc i32 %40 to i16
  %arrayidx142 = getelementptr inbounds [2 x i16], [2 x i16]* %mvc, i32 %inc89, i32 1
  store i16 %conv140, i16* %arrayidx142, align 2, !tbaa !37
  %inc143 = add nuw nsw i32 %i.3, 5
  %i_mb_x = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 10
  %41 = load i32, i32* %i_mb_x, align 16, !tbaa !54
  %i_mb_width = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 0
  %42 = load i32, i32* %i_mb_width, align 64, !tbaa !70
  %sub146 = add nsw i32 %42, -1
  %cmp147 = icmp slt i32 %41, %sub146
  br i1 %cmp147, label %if.then149, label %if.end186

if.then149:                                       ; preds = %if.then97
  %add153 = add nsw i32 %34, 1
  %43 = load i16, i16* %arrayidx121, align 2, !tbaa !37
  %conv163 = sext i16 %43 to i32
  %mul164 = mul nsw i32 %sub119, %conv163
  %arrayidx167 = getelementptr inbounds [2 x i16], [2 x i16]* %36, i32 %add153, i32 0
  %44 = load i16, i16* %arrayidx167, align 2, !tbaa !37
  %conv168 = sext i16 %44 to i32
  %mul169 = mul nsw i32 %mul164, %conv168
  %add170 = add nsw i32 %mul169, 128
  %45 = lshr i32 %add170, 8
  %conv172 = trunc i32 %45 to i16
  %arrayidx174 = getelementptr inbounds [2 x i16], [2 x i16]* %mvc, i32 %inc143, i32 0
  store i16 %conv172, i16* %arrayidx174, align 2, !tbaa !37
  %arrayidx177 = getelementptr inbounds [2 x i16], [2 x i16]* %36, i32 %add153, i32 1
  %46 = load i16, i16* %arrayidx177, align 2, !tbaa !37
  %conv178 = sext i16 %46 to i32
  %mul179 = mul nsw i32 %mul164, %conv178
  %add180 = add nsw i32 %mul179, 128
  %47 = lshr i32 %add180, 8
  %conv182 = trunc i32 %47 to i16
  %arrayidx184 = getelementptr inbounds [2 x i16], [2 x i16]* %mvc, i32 %inc143, i32 1
  store i16 %conv182, i16* %arrayidx184, align 2, !tbaa !37
  %inc185 = add nuw nsw i32 %i.3, 6
  br label %if.end186

if.end186:                                        ; preds = %if.then149, %if.then97
  %i.4 = phi i32 [ %inc185, %if.then149 ], [ %inc143, %if.then97 ]
  %i_mb_height = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 1
  %48 = load i32, i32* %i_mb_height, align 4, !tbaa !71
  %sub190 = add nsw i32 %48, -1
  %cmp191 = icmp slt i32 %27, %sub190
  br i1 %cmp191, label %if.then193, label %if.end231

if.then193:                                       ; preds = %if.end186
  %49 = load i32, i32* %i_mb_stride, align 4, !tbaa !56
  %add201 = add nsw i32 %49, %34
  %50 = load i16, i16* %arrayidx121, align 2, !tbaa !37
  %conv207 = sext i16 %50 to i32
  %mul208 = mul nsw i32 %sub119, %conv207
  %arrayidx211 = getelementptr inbounds [2 x i16], [2 x i16]* %36, i32 %add201, i32 0
  %51 = load i16, i16* %arrayidx211, align 2, !tbaa !37
  %conv212 = sext i16 %51 to i32
  %mul213 = mul nsw i32 %mul208, %conv212
  %add214 = add nsw i32 %mul213, 128
  %52 = lshr i32 %add214, 8
  %conv216 = trunc i32 %52 to i16
  %arrayidx218 = getelementptr inbounds [2 x i16], [2 x i16]* %mvc, i32 %i.4, i32 0
  store i16 %conv216, i16* %arrayidx218, align 2, !tbaa !37
  %arrayidx221 = getelementptr inbounds [2 x i16], [2 x i16]* %36, i32 %add201, i32 1
  %53 = load i16, i16* %arrayidx221, align 2, !tbaa !37
  %conv222 = sext i16 %53 to i32
  %mul223 = mul nsw i32 %mul208, %conv222
  %add224 = add nsw i32 %mul223, 128
  %54 = lshr i32 %add224, 8
  %conv226 = trunc i32 %54 to i16
  %arrayidx228 = getelementptr inbounds [2 x i16], [2 x i16]* %mvc, i32 %i.4, i32 1
  store i16 %conv226, i16* %arrayidx228, align 2, !tbaa !37
  %inc229 = add nuw nsw i32 %i.4, 1
  br label %if.end231

if.end231:                                        ; preds = %if.end186, %if.then193, %if.end56
  %i.6 = phi i32 [ %inc89, %if.end56 ], [ %inc229, %if.then193 ], [ %i.4, %if.end186 ]
  store i32 %i.6, i32* %i_mvc, align 4, !tbaa !42
  ret void
}

attributes #0 = { nofree norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 (http://10.18.30.194:8888/compiler/compiler10.git 713ef477716300a9b04a1522e3fce445623444dc)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !8, i64 19540}
!6 = !{!"x264_t", !7, i64 0, !10, i64 944, !3, i64 948, !3, i64 1464, !8, i64 1528, !8, i64 1532, !8, i64 1536, !8, i64 1540, !8, i64 1544, !8, i64 1548, !10, i64 1552, !10, i64 1556, !8, i64 1560, !8, i64 1564, !18, i64 1568, !10, i64 1612, !8, i64 1616, !10, i64 1620, !8, i64 1624, !8, i64 1628, !8, i64 1632, !8, i64 1636, !8, i64 1640, !8, i64 1644, !16, i64 1648, !8, i64 1656, !16, i64 1664, !16, i64 1672, !16, i64 1680, !16, i64 1688, !16, i64 1696, !16, i64 1704, !16, i64 1712, !8, i64 1720, !16, i64 1728, !8, i64 1736, !3, i64 1740, !3, i64 1756, !3, i64 1772, !3, i64 1788, !3, i64 1804, !3, i64 1820, !3, i64 1836, !3, i64 1852, !3, i64 1868, !3, i64 1884, !10, i64 1900, !3, i64 1904, !3, i64 2184, !10, i64 3304, !10, i64 3308, !20, i64 3312, !3, i64 8448, !3, i64 8760, !8, i64 8824, !20, i64 8832, !21, i64 14016, !22, i64 15168, !10, i64 15352, !10, i64 15356, !3, i64 15360, !3, i64 15368, !3, i64 15520, !3, i64 15528, !8, i64 15536, !8, i64 15540, !16, i64 15544, !23, i64 15552, !24, i64 18752, !10, i64 30784, !27, i64 30792, !10, i64 34104, !10, i64 34108, !10, i64 34112, !3, i64 34144, !3, i64 34656, !3, i64 36704, !3, i64 36736, !10, i64 36744, !10, i64 36748, !3, i64 36752, !3, i64 36812, !3, i64 36820, !3, i64 36848, !3, i64 36896, !3, i64 36944, !3, i64 36972, !3, i64 37000, !10, i64 37028, !30, i64 37032, !31, i64 37664, !32, i64 37880, !33, i64 37948, !33, i64 37972, !33, i64 37996, !34, i64 38020, !35, i64 38232, !36, i64 38316, !10, i64 38332}
!7 = !{!"x264_param_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !9, i64 56, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !10, i64 180, !3, i64 184, !3, i64 200, !3, i64 216, !3, i64 232, !3, i64 248, !3, i64 312, !3, i64 376, !3, i64 440, !10, i64 504, !10, i64 508, !8, i64 512, !8, i64 516, !10, i64 520, !11, i64 524, !13, i64 632, !14, i64 748, !8, i64 764, !15, i64 768, !17, i64 824, !8, i64 836, !8, i64 840, !8, i64 844, !8, i64 848, !8, i64 852, !8, i64 856, !8, i64 860, !8, i64 864, !8, i64 868, !8, i64 872, !8, i64 876, !8, i64 880, !8, i64 884, !8, i64 888, !8, i64 892, !8, i64 896, !8, i64 900, !10, i64 904, !10, i64 908, !8, i64 912, !8, i64 916, !8, i64 920, !8, i64 924, !8, i64 928, !10, i64 932, !10, i64 936, !10, i64 940}
!8 = !{!"int", !3, i64 0}
!9 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32}
!10 = !{!"any pointer", !3, i64 0}
!11 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !12, i64 72, !12, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !3, i64 92, !8, i64 100, !8, i64 104}
!12 = !{!"float", !3, i64 0}
!13 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !8, i64 36, !8, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !8, i64 56, !8, i64 60, !12, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !10, i64 80, !8, i64 84, !10, i64 88, !12, i64 92, !12, i64 96, !12, i64 100, !10, i64 104, !8, i64 108, !10, i64 112}
!14 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12}
!15 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !16, i64 40, !16, i64 48}
!16 = !{!"long long", !3, i64 0}
!17 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8}
!18 = !{!"", !8, i64 0, !8, i64 4, !10, i64 8, !8, i64 12, !10, i64 16, !19, i64 20}
!19 = !{!"bs_s", !10, i64 0, !10, i64 4, !10, i64 8, !8, i64 12, !8, i64 16, !8, i64 20}
!20 = !{!"", !10, i64 0, !10, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !3, i64 52, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !3, i64 80, !3, i64 88, !8, i64 344, !3, i64 352, !8, i64 4960, !8, i64 4964, !3, i64 4968, !8, i64 5096, !8, i64 5100, !8, i64 5104, !8, i64 5108, !8, i64 5112, !8, i64 5116, !8, i64 5120, !8, i64 5124}
!21 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !8, i64 64, !3, i64 68, !3, i64 1092}
!22 = !{!"", !10, i64 0, !3, i64 4, !10, i64 12, !3, i64 16, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !16, i64 128, !16, i64 136, !3, i64 144, !16, i64 160, !16, i64 168, !8, i64 176, !8, i64 180}
!23 = !{!"", !3, i64 0, !3, i64 96, !3, i64 128, !3, i64 1664}
!24 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !3, i64 32, !3, i64 40, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !3, i64 108, !3, i64 116, !3, i64 124, !3, i64 136, !3, i64 148, !3, i64 156, !3, i64 164, !3, i64 176, !3, i64 192, !3, i64 200, !3, i64 212, !8, i64 224, !3, i64 228, !3, i64 244, !8, i64 308, !8, i64 312, !8, i64 316, !3, i64 320, !8, i64 328, !8, i64 332, !8, i64 336, !3, i64 340, !8, i64 348, !8, i64 352, !8, i64 356, !8, i64 360, !8, i64 364, !8, i64 368, !10, i64 372, !8, i64 376, !8, i64 380, !8, i64 384, !8, i64 388, !10, i64 392, !10, i64 396, !10, i64 400, !10, i64 404, !10, i64 408, !10, i64 412, !10, i64 416, !10, i64 420, !3, i64 424, !3, i64 432, !3, i64 440, !3, i64 448, !10, i64 704, !10, i64 708, !10, i64 712, !10, i64 716, !3, i64 720, !8, i64 784, !8, i64 788, !3, i64 792, !8, i64 796, !8, i64 800, !8, i64 804, !8, i64 808, !8, i64 812, !8, i64 816, !8, i64 820, !8, i64 824, !8, i64 828, !8, i64 832, !8, i64 836, !25, i64 896, !26, i64 9472, !8, i64 10336, !8, i64 10340, !8, i64 10344, !8, i64 10348, !8, i64 10352, !8, i64 10356, !8, i64 10360, !8, i64 10364, !3, i64 10368, !8, i64 10384, !8, i64 10388, !3, i64 10392, !10, i64 11416, !3, i64 11420, !10, i64 11932, !3, i64 11936, !8, i64 11956, !3, i64 11960}
!25 = !{!"", !3, i64 0, !3, i64 768, !3, i64 2496, !3, i64 2752, !3, i64 3008, !3, i64 3392, !3, i64 3872, !3, i64 3888, !3, i64 3904, !3, i64 4416, !3, i64 4928, !3, i64 5056, !8, i64 5128, !8, i64 5132, !3, i64 5136, !3, i64 5148, !3, i64 5160, !3, i64 5172, !3, i64 5180, !3, i64 8252, !3, i64 8380, !3, i64 8508}
!26 = !{!"", !3, i64 0, !3, i64 40, !3, i64 160, !3, i64 240, !3, i64 560, !3, i64 720, !3, i64 760, !3, i64 792, !8, i64 800, !3, i64 804, !8, i64 808, !8, i64 812, !8, i64 816, !8, i64 820, !3, i64 824, !3, i64 848, !10, i64 856}
!27 = !{!"", !3, i64 0, !3, i64 16, !3, i64 40, !3, i64 64, !3, i64 136, !3, i64 160, !3, i64 184, !3, i64 208, !3, i64 232, !3, i64 256, !3, i64 280, !3, i64 304, !3, i64 760, !3, i64 1032, !3, i64 1048, !3, i64 2072, !3, i64 2120, !3, i64 2536, !3, i64 2560, !3, i64 2568, !3, i64 2576, !28, i64 2584}
!28 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !3, i64 12, !8, i64 88, !8, i64 92, !8, i64 96, !3, i64 100, !3, i64 108, !3, i64 364, !3, i64 432, !3, i64 456, !3, i64 664, !3, i64 676, !3, i64 688, !29, i64 712, !8, i64 720}
!29 = !{!"double", !3, i64 0}
!30 = !{!"", !3, i64 0, !3, i64 32, !3, i64 64, !3, i64 96, !3, i64 124, !3, i64 140, !3, i64 172, !3, i64 204, !3, i64 236, !3, i64 264, !3, i64 292, !10, i64 324, !10, i64 328, !3, i64 332, !3, i64 336, !3, i64 352, !3, i64 368, !10, i64 384, !10, i64 388, !10, i64 392, !3, i64 396, !3, i64 424, !3, i64 452, !3, i64 480, !3, i64 508, !10, i64 536, !10, i64 540, !10, i64 544, !10, i64 548, !10, i64 552, !10, i64 556, !10, i64 560, !10, i64 564, !10, i64 568, !10, i64 572, !10, i64 576, !10, i64 580, !10, i64 584, !10, i64 588, !10, i64 592, !10, i64 596, !10, i64 600, !10, i64 604, !10, i64 608, !10, i64 612, !10, i64 616, !10, i64 620, !10, i64 624, !10, i64 628}
!31 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !3, i64 12, !3, i64 60, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !10, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !10, i64 144, !10, i64 148, !10, i64 152, !10, i64 156, !10, i64 160, !10, i64 164, !10, i64 168, !10, i64 172, !10, i64 176, !10, i64 180, !10, i64 184, !10, i64 188, !10, i64 192, !10, i64 196, !10, i64 200, !10, i64 204, !10, i64 208, !10, i64 212}
!32 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64}
!33 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20}
!34 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !3, i64 64, !10, i64 120, !10, i64 124, !3, i64 128, !10, i64 180, !10, i64 184, !10, i64 188, !10, i64 192, !10, i64 196, !10, i64 200, !10, i64 204, !10, i64 208}
!35 = !{!"", !3, i64 0, !3, i64 8, !10, i64 16, !10, i64 20, !3, i64 24, !3, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !10, i64 80}
!36 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12}
!37 = !{!38, !38, i64 0}
!38 = !{!"short", !3, i64 0}
!39 = !{!6, !8, i64 544}
!40 = !{!6, !8, i64 3376}
!41 = !{!6, !8, i64 4}
!42 = !{!8, !8, i64 0}
!43 = !{!6, !8, i64 18776}
!44 = !{!6, !8, i64 18780}
!45 = !{!10, !10, i64 0}
!46 = !{!6, !8, i64 18808}
!47 = !{!48, !10, i64 2776}
!48 = !{!"x264_frame", !10, i64 0, !8, i64 4, !3, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !12, i64 64, !16, i64 72, !16, i64 80, !16, i64 88, !10, i64 96, !8, i64 100, !8, i64 104, !16, i64 112, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !3, i64 136, !3, i64 137, !3, i64 138, !12, i64 140, !12, i64 144, !12, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !3, i64 164, !3, i64 176, !3, i64 188, !8, i64 200, !8, i64 204, !8, i64 208, !3, i64 212, !3, i64 224, !3, i64 236, !3, i64 284, !3, i64 332, !10, i64 348, !3, i64 352, !3, i64 368, !10, i64 384, !3, i64 400, !3, i64 2704, !8, i64 2768, !10, i64 2772, !10, i64 2776, !10, i64 2780, !3, i64 2784, !10, i64 2792, !3, i64 2796, !10, i64 2932, !10, i64 2936, !3, i64 2940, !3, i64 4236, !3, i64 4372, !3, i64 4380, !3, i64 4388, !3, i64 4516, !3, i64 4520, !3, i64 5816, !8, i64 7112, !3, i64 7116, !3, i64 7188, !10, i64 8484, !10, i64 8488, !10, i64 8492, !10, i64 8496, !10, i64 8500, !10, i64 8504, !8, i64 8508, !10, i64 8512, !10, i64 8516, !10, i64 8520, !8, i64 8524, !3, i64 8528, !3, i64 8600, !3, i64 8616, !49, i64 8640, !3, i64 8672, !3, i64 8924, !3, i64 9928, !16, i64 11936, !16, i64 11944, !8, i64 11952, !8, i64 11956, !8, i64 11960, !8, i64 11964, !8, i64 11968, !8, i64 11972, !12, i64 11976, !8, i64 11980, !8, i64 11984, !8, i64 11988, !8, i64 11992, !50, i64 11996, !10, i64 12008, !10, i64 12012, !10, i64 12016}
!49 = !{!"x264_hrd_t", !29, i64 0, !29, i64 8, !29, i64 16, !29, i64 24}
!50 = !{!"x264_sei_t", !8, i64 0, !10, i64 4, !10, i64 8}
!51 = !{!48, !10, i64 2780}
!52 = !{!6, !8, i64 18816}
!53 = !{!6, !8, i64 18812}
!54 = !{!6, !8, i64 18800}
!55 = !{!6, !8, i64 18804}
!56 = !{!6, !8, i64 18772}
!57 = !{!6, !10, i64 30168}
!58 = !{!6, !8, i64 29024}
!59 = !{!6, !8, i64 3320}
!60 = !{!6, !8, i64 15344}
!61 = !{!6, !10, i64 15352}
!62 = !{!48, !8, i64 100}
!63 = !{!6, !8, i64 116}
!64 = !{!6, !8, i64 19100}
!65 = !{!6, !8, i64 19104}
!66 = !{!6, !8, i64 19108}
!67 = !{!6, !10, i64 15356}
!68 = !{!48, !8, i64 4}
!69 = !{!48, !10, i64 2792}
!70 = !{!6, !8, i64 18752}
!71 = !{!6, !8, i64 18756}
