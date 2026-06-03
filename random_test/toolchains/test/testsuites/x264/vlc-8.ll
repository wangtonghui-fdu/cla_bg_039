; ModuleID = 'common/vlc.c'
source_filename = "common/vlc.c"
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

%struct.vlc_large_t = type { i16, i8, i8 }
%struct.vlc_t = type { i8, i8 }
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

@x264_8_level_token = common hidden local_unnamed_addr global [7 x [128 x %struct.vlc_large_t]] zeroinitializer, align 2
@x264_8_run_before = common hidden local_unnamed_addr global [65536 x i32] zeroinitializer, align 4
@x264_run_before_init = external dso_local local_unnamed_addr constant [7 x [16 x %struct.vlc_t]], align 1

; Function Attrs: nounwind
define hidden void @x264_8_cavlc_init(%struct.x264_t* nocapture readonly %h) local_unnamed_addr #0 {
entry:
  %runlevel = alloca %struct.x264_run_level_t, align 16
  %dct = alloca [16 x i16], align 16
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond.cleanup4, %entry
  %i_suffix.0247 = phi i32 [ 0, %entry ], [ %add16, %for.cond.cleanup4 ]
  %cmp23 = icmp eq i32 %i_suffix.0247, 0
  %shl52 = shl i32 15, %i_suffix.0247
  %0 = trunc i32 %i_suffix.0247 to i8
  %conv42 = add i8 %0, 15
  %shl44 = shl nuw i32 1, %i_suffix.0247
  %sub46 = add nuw i32 %shl44, 65535
  %add16 = add nuw nsw i32 %i_suffix.0247, 1
  %spec.select234 = select i1 %cmp23, i32 1, i32 %i_suffix.0247
  %sub69 = add nsw i32 %spec.select234, -1
  %shl70 = shl i32 3, %sub69
  %cmp74 = icmp ult i32 %spec.select234, 6
  br i1 %cmp23, label %for.body5.us, label %for.body5

for.body5.us:                                     ; preds = %for.cond1.preheader, %if.end64.us
  %indvars.iv250 = phi i32 [ %indvars.iv.next251, %if.end64.us ], [ -64, %for.cond1.preheader ]
  %shr.us = ashr i32 %indvars.iv250, 15
  %xor.us = xor i32 %shr.us, %indvars.iv250
  %sub.us = sub nsw i32 %xor.us, %shr.us
  %tobool.us = icmp eq i32 %sub.us, 0
  %mul.us = shl nsw i32 %sub.us, 1
  %sub8.us = sub nsw i32 -2, %shr.us
  %sub9.us = add nsw i32 %sub8.us, %mul.us
  %cond.us = select i1 %tobool.us, i32 0, i32 %sub9.us
  %add.us = add nsw i32 %indvars.iv250, 64
  %cmp13.us = icmp slt i32 %cond.us, 14
  br i1 %cmp13.us, label %if.then.us, label %if.else.us

if.else.us:                                       ; preds = %for.body5.us
  %cmp25.us = icmp slt i32 %cond.us, 30
  br i1 %cmp25.us, label %if.then27.us, label %if.else51.us

if.else51.us:                                     ; preds = %if.else.us
  %sub53.us = sub nsw i32 %cond.us, %shl52
  %i_size58.us = getelementptr inbounds [7 x [128 x %struct.vlc_large_t]], [7 x [128 x %struct.vlc_large_t]]* @x264_8_level_token, i32 0, i32 0, i32 %add.us, i32 1
  store i8 28, i8* %i_size58.us, align 2, !tbaa !2
  %1 = trunc i32 %sub53.us to i16
  %conv60.us = add i16 %1, 4081
  br label %if.end64.us

if.then27.us:                                     ; preds = %if.else.us
  %i_size28.us = getelementptr inbounds [7 x [128 x %struct.vlc_large_t]], [7 x [128 x %struct.vlc_large_t]]* @x264_8_level_token, i32 0, i32 0, i32 %add.us, i32 1
  store i8 19, i8* %i_size28.us, align 2, !tbaa !2
  %2 = trunc i32 %cond.us to i16
  %conv31.us = add nuw nsw i16 %2, 2
  br label %if.end64.us

if.then.us:                                       ; preds = %for.body5.us
  %add17.us = add i32 %add16, %cond.us
  %conv18.us = trunc i32 %add17.us to i8
  %i_size.us = getelementptr inbounds [7 x [128 x %struct.vlc_large_t]], [7 x [128 x %struct.vlc_large_t]]* @x264_8_level_token, i32 0, i32 0, i32 %add.us, i32 1
  store i8 %conv18.us, i8* %i_size.us, align 2, !tbaa !2
  %and.us = and i32 %cond.us, %sub46
  %add21.us = add i32 %and.us, %shl44
  %conv22.us = trunc i32 %add21.us to i16
  br label %if.end64.us

if.end64.us:                                      ; preds = %if.then.us, %if.then27.us, %if.else51.us
  %conv22.us.sink = phi i16 [ %conv22.us, %if.then.us ], [ %conv31.us, %if.then27.us ], [ %conv60.us, %if.else51.us ]
  %i_bits.us = getelementptr inbounds [7 x [128 x %struct.vlc_large_t]], [7 x [128 x %struct.vlc_large_t]]* @x264_8_level_token, i32 0, i32 0, i32 %add.us, i32 0
  store i16 %conv22.us.sink, i16* %i_bits.us, align 2, !tbaa !7
  %cmp71.us = icmp sgt i32 %sub.us, %shl70
  %or.cond146.us = and i1 %cmp74, %cmp71.us
  %inc77.us = zext i1 %or.cond146.us to i32
  %i_next.1.us = add nuw nsw i32 %spec.select234, %inc77.us
  %conv79.us = trunc i32 %i_next.1.us to i8
  %i_next80.us = getelementptr inbounds [7 x [128 x %struct.vlc_large_t]], [7 x [128 x %struct.vlc_large_t]]* @x264_8_level_token, i32 0, i32 0, i32 %add.us, i32 2
  store i8 %conv79.us, i8* %i_next80.us, align 1, !tbaa !8
  %indvars.iv.next251 = add nsw i32 %indvars.iv250, 1
  %exitcond252 = icmp eq i32 %indvars.iv.next251, 64
  br i1 %exitcond252, label %for.cond.cleanup4, label %for.body5.us

for.cond.cleanup:                                 ; preds = %for.cond.cleanup4
  store i32 0, i32* getelementptr inbounds ([65536 x i32], [65536 x i32]* @x264_8_run_before, i32 0, i32 0), align 4, !tbaa !9
  store i32 0, i32* getelementptr inbounds ([65536 x i32], [65536 x i32]* @x264_8_run_before, i32 0, i32 1), align 4, !tbaa !9
  %3 = bitcast %struct.x264_run_level_t* %runlevel to i8*
  %4 = bitcast [16 x i16]* %dct to i8*
  %arrayidx102 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 98, i32 19, i32 2
  %arraydecay = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 0, i32 0
  %last = getelementptr inbounds %struct.x264_run_level_t, %struct.x264_run_level_t* %runlevel, i32 0, i32 0
  %arrayidx98.1 = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 0, i32 1
  %arrayidx98.2 = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 0, i32 2
  %arrayidx98.3 = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 0, i32 3
  %arrayidx98.4 = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 0, i32 4
  %arrayidx98.5 = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 0, i32 5
  %arrayidx98.6 = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 0, i32 6
  %arrayidx98.7 = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 0, i32 7
  %arrayidx98.8 = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 0, i32 8
  %arrayidx98.9 = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 0, i32 9
  %arrayidx98.10 = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 0, i32 10
  %arrayidx98.11 = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 0, i32 11
  %arrayidx98.12 = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 0, i32 12
  %arrayidx98.13 = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 0, i32 13
  %arrayidx98.14 = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 0, i32 14
  %arrayidx98.15 = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 0, i32 15
  br label %for.body89

for.cond.cleanup4:                                ; preds = %if.end64, %if.end64.us
  %exitcond253 = icmp eq i32 %add16, 7
  br i1 %exitcond253, label %for.cond.cleanup, label %for.cond1.preheader

for.body5:                                        ; preds = %for.cond1.preheader, %if.end64
  %indvars.iv = phi i32 [ %indvars.iv.next, %if.end64 ], [ -64, %for.cond1.preheader ]
  %shr = ashr i32 %indvars.iv, 15
  %xor = xor i32 %shr, %indvars.iv
  %sub = sub nsw i32 %xor, %shr
  %tobool = icmp eq i32 %sub, 0
  %mul = shl nsw i32 %sub, 1
  %sub8 = sub nsw i32 -2, %shr
  %sub9 = add nsw i32 %sub8, %mul
  %cond = select i1 %tobool, i32 0, i32 %sub9
  %add = add nsw i32 %indvars.iv, 64
  %shr12 = ashr i32 %cond, %i_suffix.0247
  %cmp13 = icmp slt i32 %shr12, 14
  br i1 %cmp13, label %if.then, label %if.else33

if.then:                                          ; preds = %for.body5
  %add17 = add i32 %add16, %shr12
  %conv18 = trunc i32 %add17 to i8
  %i_size = getelementptr inbounds [7 x [128 x %struct.vlc_large_t]], [7 x [128 x %struct.vlc_large_t]]* @x264_8_level_token, i32 0, i32 %i_suffix.0247, i32 %add, i32 1
  store i8 %conv18, i8* %i_size, align 2, !tbaa !2
  %and = and i32 %cond, %sub46
  %add21 = add i32 %and, %shl44
  %conv22 = trunc i32 %add21 to i16
  br label %if.end64

if.else33:                                        ; preds = %for.body5
  %cmp38 = icmp eq i32 %shr12, 14
  br i1 %cmp38, label %if.then40, label %if.else51

if.then40:                                        ; preds = %if.else33
  %i_size43 = getelementptr inbounds [7 x [128 x %struct.vlc_large_t]], [7 x [128 x %struct.vlc_large_t]]* @x264_8_level_token, i32 0, i32 %i_suffix.0247, i32 %add, i32 1
  store i8 %conv42, i8* %i_size43, align 2, !tbaa !2
  %and47 = and i32 %cond, %sub46
  %add48 = add i32 %and47, %shl44
  %conv49 = trunc i32 %add48 to i16
  br label %if.end64

if.else51:                                        ; preds = %if.else33
  %sub53 = sub nsw i32 %cond, %shl52
  %i_size58 = getelementptr inbounds [7 x [128 x %struct.vlc_large_t]], [7 x [128 x %struct.vlc_large_t]]* @x264_8_level_token, i32 0, i32 %i_suffix.0247, i32 %add, i32 1
  store i8 28, i8* %i_size58, align 2, !tbaa !2
  %5 = trunc i32 %sub53 to i16
  %conv60 = add i16 %5, 4096
  br label %if.end64

if.end64:                                         ; preds = %if.else51, %if.then40, %if.then
  %conv60.sink = phi i16 [ %conv60, %if.else51 ], [ %conv49, %if.then40 ], [ %conv22, %if.then ]
  %i_bits61 = getelementptr inbounds [7 x [128 x %struct.vlc_large_t]], [7 x [128 x %struct.vlc_large_t]]* @x264_8_level_token, i32 0, i32 %i_suffix.0247, i32 %add, i32 0
  store i16 %conv60.sink, i16* %i_bits61, align 2, !tbaa !7
  %cmp71 = icmp sgt i32 %sub, %shl70
  %or.cond146 = and i1 %cmp74, %cmp71
  %inc77 = zext i1 %or.cond146 to i32
  %i_next.1 = add nuw nsw i32 %spec.select234, %inc77
  %conv79 = trunc i32 %i_next.1 to i8
  %i_next80 = getelementptr inbounds [7 x [128 x %struct.vlc_large_t]], [7 x [128 x %struct.vlc_large_t]]* @x264_8_level_token, i32 0, i32 %i_suffix.0247, i32 %add, i32 2
  store i8 %conv79, i8* %i_next80, align 1, !tbaa !8
  %indvars.iv.next = add nsw i32 %indvars.iv, 1
  %exitcond249 = icmp eq i32 %indvars.iv.next, 64
  br i1 %exitcond249, label %for.cond.cleanup4, label %for.body5

for.cond.cleanup88:                               ; preds = %for.cond.cleanup115
  ret void

for.body89:                                       ; preds = %for.cond.cleanup115, %for.cond.cleanup
  %i.0244 = phi i32 [ 2, %for.cond.cleanup ], [ %inc144, %for.cond.cleanup115 ]
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %3) #3
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #3
  %6 = trunc i32 %i.0244 to i16
  %conv97 = and i16 %6, 1
  store i16 %conv97, i16* %arraydecay, align 16, !tbaa !11
  %7 = trunc i32 %i.0244 to i16
  %conv97.1 = and i16 %7, 2
  store i16 %conv97.1, i16* %arrayidx98.1, align 2, !tbaa !11
  %8 = trunc i32 %i.0244 to i16
  %conv97.2 = and i16 %8, 4
  store i16 %conv97.2, i16* %arrayidx98.2, align 4, !tbaa !11
  %9 = trunc i32 %i.0244 to i16
  %conv97.3 = and i16 %9, 8
  store i16 %conv97.3, i16* %arrayidx98.3, align 2, !tbaa !11
  %10 = trunc i32 %i.0244 to i16
  %conv97.4 = and i16 %10, 16
  store i16 %conv97.4, i16* %arrayidx98.4, align 8, !tbaa !11
  %11 = trunc i32 %i.0244 to i16
  %conv97.5 = and i16 %11, 32
  store i16 %conv97.5, i16* %arrayidx98.5, align 2, !tbaa !11
  %12 = trunc i32 %i.0244 to i16
  %conv97.6 = and i16 %12, 64
  store i16 %conv97.6, i16* %arrayidx98.6, align 4, !tbaa !11
  %13 = trunc i32 %i.0244 to i16
  %conv97.7 = and i16 %13, 128
  store i16 %conv97.7, i16* %arrayidx98.7, align 2, !tbaa !11
  %14 = trunc i32 %i.0244 to i16
  %conv97.8 = and i16 %14, 256
  store i16 %conv97.8, i16* %arrayidx98.8, align 16, !tbaa !11
  %15 = trunc i32 %i.0244 to i16
  %conv97.9 = and i16 %15, 512
  store i16 %conv97.9, i16* %arrayidx98.9, align 2, !tbaa !11
  %16 = trunc i32 %i.0244 to i16
  %conv97.10 = and i16 %16, 1024
  store i16 %conv97.10, i16* %arrayidx98.10, align 4, !tbaa !11
  %17 = trunc i32 %i.0244 to i16
  %conv97.11 = and i16 %17, 2048
  store i16 %conv97.11, i16* %arrayidx98.11, align 2, !tbaa !11
  %18 = trunc i32 %i.0244 to i16
  %conv97.12 = and i16 %18, 4096
  store i16 %conv97.12, i16* %arrayidx98.12, align 8, !tbaa !11
  %19 = trunc i32 %i.0244 to i16
  %conv97.13 = and i16 %19, 8192
  store i16 %conv97.13, i16* %arrayidx98.13, align 2, !tbaa !11
  %20 = trunc i32 %i.0244 to i16
  %conv97.14 = and i16 %20, 16384
  store i16 %conv97.14, i16* %arrayidx98.14, align 4, !tbaa !11
  %21 = trunc i32 %i.0244 to i16
  %conv97.15 = and i16 %21, -32768
  store i16 %conv97.15, i16* %arrayidx98.15, align 2, !tbaa !11
  %22 = load i32 (i16*, %struct.x264_run_level_t*)*, i32 (i16*, %struct.x264_run_level_t*)** %arrayidx102, align 4, !tbaa !12
  %call = call i32 %22(i16* nonnull %arraydecay, %struct.x264_run_level_t* nonnull %runlevel) #3
  %23 = load i32, i32* %last, align 16, !tbaa !14
  %add103 = sub i32 1, %call
  %sub104 = add i32 %add103, %23
  %sub110 = add nsw i32 %call, -1
  %cmp111236 = icmp sgt i32 %call, 1
  %cmp113237 = icmp sgt i32 %sub104, 0
  %24 = and i1 %cmp113237, %cmp111236
  br i1 %24, label %for.body116.preheader, label %for.cond.cleanup115

for.body116.preheader:                            ; preds = %for.body89
  %25 = call i32 @llvm.ctlz.i32(i32 %i.0244, i1 true), !range !16
  %add106 = add nuw nsw i32 %25, 1
  %shl107 = shl i32 %i.0244, %add106
  br label %for.body116

for.cond.cleanup115:                              ; preds = %for.body116, %for.body89
  %size.0.lcssa = phi i32 [ 0, %for.body89 ], [ %add128, %for.body116 ]
  %bits.0.lcssa = phi i32 [ 0, %for.body89 ], [ %or, %for.body116 ]
  %shl140 = shl i32 %bits.0.lcssa, 5
  %add141 = add nsw i32 %shl140, %size.0.lcssa
  %arrayidx142 = getelementptr inbounds [65536 x i32], [65536 x i32]* @x264_8_run_before, i32 0, i32 %i.0244
  store i32 %add141, i32* %arrayidx142, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #3
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %3) #3
  %inc144 = add nuw nsw i32 %i.0244, 1
  %exitcond = icmp eq i32 %inc144, 65536
  br i1 %exitcond, label %for.cond.cleanup88, label %for.body89

for.body116:                                      ; preds = %for.body116.preheader, %for.body116
  %j108.0242 = phi i32 [ %inc138, %for.body116 ], [ 0, %for.body116.preheader ]
  %mask105.0241 = phi i32 [ %shl136, %for.body116 ], [ %shl107, %for.body116.preheader ]
  %zeros.0240 = phi i32 [ %sub134, %for.body116 ], [ %sub104, %for.body116.preheader ]
  %bits.0239 = phi i32 [ %or, %for.body116 ], [ 0, %for.body116.preheader ]
  %size.0238 = phi i32 [ %add128, %for.body116 ], [ 0, %for.body116.preheader ]
  %cmp117 = icmp slt i32 %zeros.0240, 7
  %cond122 = select i1 %cmp117, i32 %zeros.0240, i32 7
  %sub123 = add nsw i32 %cond122, -1
  %26 = call i32 @llvm.ctlz.i32(i32 %mask105.0241, i1 true), !range !16
  %i_size126 = getelementptr inbounds [7 x [16 x %struct.vlc_t]], [7 x [16 x %struct.vlc_t]]* @x264_run_before_init, i32 0, i32 %sub123, i32 %26, i32 1
  %27 = load i8, i8* %i_size126, align 1, !tbaa !17
  %conv127 = zext i8 %27 to i32
  %add128 = add nuw nsw i32 %size.0238, %conv127
  %shl129 = shl i32 %bits.0239, %conv127
  %i_bits132 = getelementptr inbounds [7 x [16 x %struct.vlc_t]], [7 x [16 x %struct.vlc_t]]* @x264_run_before_init, i32 0, i32 %sub123, i32 %26, i32 0
  %28 = load i8, i8* %i_bits132, align 1, !tbaa !19
  %conv133 = zext i8 %28 to i32
  %or = or i32 %shl129, %conv133
  %sub134 = sub nsw i32 %zeros.0240, %26
  %add135 = add nuw nsw i32 %26, 1
  %shl136 = shl i32 %mask105.0241, %add135
  %inc138 = add nuw nsw i32 %j108.0242, 1
  %cmp111 = icmp slt i32 %inc138, %sub110
  %cmp113 = icmp sgt i32 %sub134, 0
  %29 = and i1 %cmp113, %cmp111
  br i1 %29, label %for.body116, label %for.cond.cleanup115
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #2

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 (http://10.18.30.194:8888/compiler/compiler10.git 713ef477716300a9b04a1522e3fce445623444dc)"}
!2 = !{!3, !5, i64 2}
!3 = !{!"", !4, i64 0, !5, i64 2, !5, i64 3}
!4 = !{!"short", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!3, !4, i64 0}
!8 = !{!3, !5, i64 3}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !5, i64 0}
!11 = !{!4, !4, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!15, !10, i64 0}
!15 = !{!"", !10, i64 0, !10, i64 4, !5, i64 16}
!16 = !{i32 0, i32 33}
!17 = !{!18, !5, i64 1}
!18 = !{!"", !5, i64 0, !5, i64 1}
!19 = !{!18, !5, i64 0}
