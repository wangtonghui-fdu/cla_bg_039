; ModuleID = 'encoder/lookahead.c'
source_filename = "encoder/lookahead.c"
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

@.str = private unnamed_addr constant [30 x i8] c"dst->i_size < dst->i_max_size\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"encoder/lookahead.c\00", align 1
@__PRETTY_FUNCTION__.lookahead_shift = private unnamed_addr constant [78 x i8] c"void lookahead_shift(x264_sync_frame_list_t *, x264_sync_frame_list_t *, int)\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"src->i_size\00", align 1

; Function Attrs: nounwind
define hidden i32 @x264_8_lookahead_init(%struct.x264_t* nocapture readonly %h, i32 %i_slicetype_length) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @x264_malloc(i64 92) #5
  %tobool = icmp eq i8* %call, null
  br i1 %tobool, label %fail, label %do.end

do.end:                                           ; preds = %entry
  tail call void @llvm.memset.p0i8.i32(i8* nonnull align 4 dereferenceable(92) %call, i8 0, i32 92, i1 false)
  %i_threads = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 1
  %0 = load i32, i32* %i_threads, align 4, !tbaa !2
  %cmp79 = icmp sgt i32 %0, 0
  br i1 %cmp79, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.body, %do.end
  %i_keyint_max = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 17
  %1 = load i32, i32* %i_keyint_max, align 4, !tbaa !36
  %sub = sub nsw i32 0, %1
  %i_last_keyframe = getelementptr inbounds i8, i8* %call, i32 4
  %2 = bitcast i8* %i_last_keyframe to i32*
  store i32 %sub, i32* %2, align 4, !tbaa !37
  %b_mb_tree = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 17
  %3 = load i32, i32* %b_mb_tree, align 4, !tbaa !40
  %tobool6 = icmp eq i32 %3, 0
  br i1 %tobool6, label %lor.lhs.false, label %land.rhs

for.body:                                         ; preds = %do.end, %for.body
  %i.080 = phi i32 [ %inc, %for.body ], [ 0, %do.end ]
  %arrayidx = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 2, i32 %i.080
  %4 = load %struct.x264_t*, %struct.x264_t** %arrayidx, align 4, !tbaa !41
  %lookahead = getelementptr inbounds %struct.x264_t, %struct.x264_t* %4, i32 0, i32 101
  %5 = bitcast %struct.x264_lookahead_t** %lookahead to i8**
  store i8* %call, i8** %5, align 4, !tbaa !42
  %inc = add nuw nsw i32 %i.080, 1
  %cmp = icmp slt i32 %inc, %0
  br i1 %cmp, label %for.body, label %for.cond.cleanup

lor.lhs.false:                                    ; preds = %for.cond.cleanup
  %i_vbv_buffer_size = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 10
  %6 = load i32, i32* %i_vbv_buffer_size, align 8, !tbaa !43
  %tobool9 = icmp eq i32 %6, 0
  br i1 %tobool9, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %i_lookahead = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 18
  %7 = load i32, i32* %i_lookahead, align 8, !tbaa !44
  %tobool12 = icmp eq i32 %7, 0
  br i1 %tobool12, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true, %for.cond.cleanup
  %b_stat_read = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 52, i32 21
  %8 = load i32, i32* %b_stat_read, align 4, !tbaa !45
  %tobool15 = icmp eq i32 %8, 0
  %phitmp = zext i1 %tobool15 to i8
  br label %land.end

land.end:                                         ; preds = %land.lhs.true, %lor.lhs.false, %land.rhs
  %9 = phi i8 [ 0, %land.lhs.true ], [ 0, %lor.lhs.false ], [ %phitmp, %land.rhs ]
  %10 = getelementptr inbounds i8, i8* %call, i32 2
  store i8 %9, i8* %10, align 2, !tbaa !46
  %i_slicetype_length16 = getelementptr inbounds i8, i8* %call, i32 8
  %11 = bitcast i8* %i_slicetype_length16 to i32*
  store i32 %i_slicetype_length, i32* %11, align 4, !tbaa !47
  %ifbuf = getelementptr inbounds i8, i8* %call, i32 20
  %12 = bitcast i8* %ifbuf to %struct.x264_sync_frame_list_t*
  %i_sync_lookahead = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 6
  %13 = load i32, i32* %i_sync_lookahead, align 8, !tbaa !48
  %add = add nsw i32 %13, 3
  %call18 = tail call i32 @x264_8_sync_frame_list_init(%struct.x264_sync_frame_list_t* nonnull %12, i32 %add) #5
  %tobool19 = icmp eq i32 %call18, 0
  br i1 %tobool19, label %lor.lhs.false20, label %fail

lor.lhs.false20:                                  ; preds = %land.end
  %next = getelementptr inbounds i8, i8* %call, i32 44
  %14 = bitcast i8* %next to %struct.x264_sync_frame_list_t*
  %i_delay = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 59, i32 11
  %15 = load i32, i32* %i_delay, align 4, !tbaa !49
  %add21 = add nsw i32 %15, 3
  %call22 = tail call i32 @x264_8_sync_frame_list_init(%struct.x264_sync_frame_list_t* nonnull %14, i32 %add21) #5
  %tobool23 = icmp eq i32 %call22, 0
  br i1 %tobool23, label %lor.lhs.false24, label %fail

lor.lhs.false24:                                  ; preds = %lor.lhs.false20
  %ofbuf = getelementptr inbounds i8, i8* %call, i32 68
  %16 = bitcast i8* %ofbuf to %struct.x264_sync_frame_list_t*
  %17 = load i32, i32* %i_delay, align 4, !tbaa !49
  %add27 = add nsw i32 %17, 3
  %call28 = tail call i32 @x264_8_sync_frame_list_init(%struct.x264_sync_frame_list_t* nonnull %16, i32 %add27) #5
  %tobool29 = icmp eq i32 %call28, 0
  br i1 %tobool29, label %if.end31, label %fail

if.end31:                                         ; preds = %lor.lhs.false24
  %18 = load i32, i32* %i_sync_lookahead, align 8, !tbaa !48
  %tobool34 = icmp eq i32 %18, 0
  br i1 %tobool34, label %cleanup, label %if.end36

if.end36:                                         ; preds = %if.end31
  %19 = load i32, i32* %i_threads, align 4, !tbaa !2
  %arrayidx40 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 2, i32 %19
  %20 = load %struct.x264_t*, %struct.x264_t** %arrayidx40, align 4, !tbaa !41
  %21 = bitcast %struct.x264_t* %20 to i8*
  %22 = bitcast %struct.x264_t* %h to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 64 dereferenceable(38336) %21, i8* nonnull align 64 dereferenceable(38336) %22, i32 38336, i1 false), !tbaa.struct !50
  %call41 = tail call i32 @x264_8_macroblock_cache_allocate(%struct.x264_t* %20) #5
  %tobool42 = icmp eq i32 %call41, 0
  br i1 %tobool42, label %if.end44, label %fail

if.end44:                                         ; preds = %if.end36
  %call45 = tail call i32 @x264_8_macroblock_thread_allocate(%struct.x264_t* %20, i32 1) #5
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %fail, label %if.end49

if.end49:                                         ; preds = %if.end44
  %23 = getelementptr inbounds i8, i8* %call, i32 1
  store i8 1, i8* %23, align 1, !tbaa !56
  br label %cleanup

fail:                                             ; preds = %if.end36, %lor.lhs.false24, %lor.lhs.false20, %land.end, %entry, %if.end44
  tail call void @x264_free(i8* %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %fail, %if.end49
  %retval.0 = phi i32 [ -1, %fail ], [ 0, %if.end49 ], [ 0, %if.end31 ]
  ret i32 %retval.0
}

declare dso_local i8* @x264_malloc(i64) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #2

declare dso_local i32 @x264_8_sync_frame_list_init(%struct.x264_sync_frame_list_t*, i32) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #2

declare dso_local i32 @x264_8_macroblock_cache_allocate(%struct.x264_t*) local_unnamed_addr #1

declare dso_local i32 @x264_8_macroblock_thread_allocate(%struct.x264_t*, i32) local_unnamed_addr #1

declare dso_local void @x264_free(i8*) local_unnamed_addr #1

; Function Attrs: nounwind
define hidden void @x264_8_lookahead_delete(%struct.x264_t* %h) local_unnamed_addr #0 {
entry:
  %i_sync_lookahead = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 6
  %0 = load i32, i32* %i_sync_lookahead, align 8, !tbaa !48
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %lookahead = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 101
  %1 = load %struct.x264_lookahead_t*, %struct.x264_lookahead_t** %lookahead, align 4, !tbaa !42
  %b_exit_thread = getelementptr inbounds %struct.x264_lookahead_t, %struct.x264_lookahead_t* %1, i32 0, i32 0
  store volatile i8 1, i8* %b_exit_thread, align 4, !tbaa !57
  %i_threads = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 1
  %2 = load i32, i32* %i_threads, align 4, !tbaa !2
  %arrayidx = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 2, i32 %2
  %3 = load %struct.x264_t*, %struct.x264_t** %arrayidx, align 4, !tbaa !41
  tail call void @x264_8_macroblock_cache_free(%struct.x264_t* %3) #5
  %4 = load i32, i32* %i_threads, align 4, !tbaa !2
  %arrayidx5 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 2, i32 %4
  %5 = load %struct.x264_t*, %struct.x264_t** %arrayidx5, align 4, !tbaa !41
  tail call void @x264_8_macroblock_thread_free(%struct.x264_t* %5, i32 1) #5
  %6 = load i32, i32* %i_threads, align 4, !tbaa !2
  %arrayidx9 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 2, i32 %6
  %7 = bitcast %struct.x264_t** %arrayidx9 to i8**
  %8 = load i8*, i8** %7, align 4, !tbaa !41
  tail call void @x264_free(i8* %8) #5
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %lookahead10 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 101
  %9 = load %struct.x264_lookahead_t*, %struct.x264_lookahead_t** %lookahead10, align 4, !tbaa !42
  %ifbuf = getelementptr inbounds %struct.x264_lookahead_t, %struct.x264_lookahead_t* %9, i32 0, i32 7
  tail call void @x264_8_sync_frame_list_delete(%struct.x264_sync_frame_list_t* nonnull %ifbuf) #5
  %10 = load %struct.x264_lookahead_t*, %struct.x264_lookahead_t** %lookahead10, align 4, !tbaa !42
  %next = getelementptr inbounds %struct.x264_lookahead_t, %struct.x264_lookahead_t* %10, i32 0, i32 8
  tail call void @x264_8_sync_frame_list_delete(%struct.x264_sync_frame_list_t* nonnull %next) #5
  %11 = load %struct.x264_lookahead_t*, %struct.x264_lookahead_t** %lookahead10, align 4, !tbaa !42
  %last_nonb = getelementptr inbounds %struct.x264_lookahead_t, %struct.x264_lookahead_t* %11, i32 0, i32 5
  %12 = load %struct.x264_frame*, %struct.x264_frame** %last_nonb, align 4, !tbaa !58
  %tobool13 = icmp eq %struct.x264_frame* %12, null
  br i1 %tobool13, label %if.end17, label %if.then14

if.then14:                                        ; preds = %if.end
  tail call void @x264_8_frame_push_unused(%struct.x264_t* nonnull %h, %struct.x264_frame* nonnull %12) #5
  %.pre = load %struct.x264_lookahead_t*, %struct.x264_lookahead_t** %lookahead10, align 4, !tbaa !42
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then14
  %13 = phi %struct.x264_lookahead_t* [ %11, %if.end ], [ %.pre, %if.then14 ]
  %ofbuf = getelementptr inbounds %struct.x264_lookahead_t, %struct.x264_lookahead_t* %13, i32 0, i32 9
  tail call void @x264_8_sync_frame_list_delete(%struct.x264_sync_frame_list_t* nonnull %ofbuf) #5
  %14 = bitcast %struct.x264_lookahead_t** %lookahead10 to i8**
  %15 = load i8*, i8** %14, align 4, !tbaa !42
  tail call void @x264_free(i8* %15) #5
  ret void
}

declare dso_local void @x264_8_macroblock_cache_free(%struct.x264_t*) local_unnamed_addr #1

declare dso_local void @x264_8_macroblock_thread_free(%struct.x264_t*, i32) local_unnamed_addr #1

declare dso_local void @x264_8_sync_frame_list_delete(%struct.x264_sync_frame_list_t*) local_unnamed_addr #1

declare dso_local void @x264_8_frame_push_unused(%struct.x264_t*, %struct.x264_frame*) local_unnamed_addr #1

; Function Attrs: nounwind
define hidden void @x264_8_lookahead_put_frame(%struct.x264_t* nocapture readonly %h, %struct.x264_frame* %frame) local_unnamed_addr #0 {
entry:
  %i_sync_lookahead = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 6
  %0 = load i32, i32* %i_sync_lookahead, align 8, !tbaa !48
  %tobool = icmp eq i32 %0, 0
  %lookahead = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 101
  %1 = load %struct.x264_lookahead_t*, %struct.x264_lookahead_t** %lookahead, align 4, !tbaa !42
  %next = getelementptr inbounds %struct.x264_lookahead_t, %struct.x264_lookahead_t* %1, i32 0, i32 8
  %ifbuf = getelementptr inbounds %struct.x264_lookahead_t, %struct.x264_lookahead_t* %1, i32 0, i32 7
  %next.sink = select i1 %tobool, %struct.x264_sync_frame_list_t* %next, %struct.x264_sync_frame_list_t* %ifbuf
  tail call void @x264_8_sync_frame_list_push(%struct.x264_sync_frame_list_t* nonnull %next.sink, %struct.x264_frame* %frame) #5
  ret void
}

declare dso_local void @x264_8_sync_frame_list_push(%struct.x264_sync_frame_list_t*, %struct.x264_frame*) local_unnamed_addr #1

; Function Attrs: norecurse nounwind readonly
define hidden i32 @x264_8_lookahead_is_empty(%struct.x264_t* nocapture readonly %h) local_unnamed_addr #3 {
entry:
  %lookahead = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 101
  %0 = load %struct.x264_lookahead_t*, %struct.x264_lookahead_t** %lookahead, align 4, !tbaa !42
  %i_size = getelementptr inbounds %struct.x264_lookahead_t, %struct.x264_lookahead_t* %0, i32 0, i32 8, i32 2
  %1 = load i32, i32* %i_size, align 4, !tbaa !59
  %tobool = icmp eq i32 %1, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %i_size2 = getelementptr inbounds %struct.x264_lookahead_t, %struct.x264_lookahead_t* %0, i32 0, i32 9, i32 2
  %2 = load i32, i32* %i_size2, align 4, !tbaa !60
  %tobool3 = icmp eq i32 %2, 0
  %phitmp = zext i1 %tobool3 to i32
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %3 = phi i32 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i32 %3
}

; Function Attrs: nounwind
define hidden void @x264_8_lookahead_get_frames(%struct.x264_t* %h) local_unnamed_addr #0 {
entry:
  %i_sync_lookahead = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 6
  %0 = load i32, i32* %i_sync_lookahead, align 8, !tbaa !48
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %if.else, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %lookahead = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 101
  %1 = load %struct.x264_lookahead_t*, %struct.x264_lookahead_t** %lookahead, align 4, !tbaa !42
  %i_size = getelementptr inbounds %struct.x264_lookahead_t, %struct.x264_lookahead_t* %1, i32 0, i32 9, i32 2
  %2 = load i32, i32* %i_size, align 4, !tbaa !60
  %tobool1 = icmp eq i32 %2, 0
  br i1 %tobool1, label %while.cond.preheader.split.us, label %if.end.i

while.cond.preheader.split.us:                    ; preds = %while.cond.preheader
  %b_thread_active = getelementptr inbounds %struct.x264_lookahead_t, %struct.x264_lookahead_t* %1, i32 0, i32 1
  %3 = load i8, i8* %b_thread_active, align 1, !tbaa !56
  %tobool3.us = icmp eq i8 %3, 0
  br i1 %tobool3.us, label %if.end40, label %while.cond.us

while.cond.us:                                    ; preds = %while.cond.preheader.split.us, %while.cond.us
  br label %while.cond.us

if.end.i:                                         ; preds = %while.cond.preheader
  %list.i = getelementptr inbounds %struct.x264_lookahead_t, %struct.x264_lookahead_t* %1, i32 0, i32 9, i32 0
  %4 = load %struct.x264_frame**, %struct.x264_frame*** %list.i, align 4, !tbaa !61
  %5 = load %struct.x264_frame*, %struct.x264_frame** %4, align 4, !tbaa !41
  %i_bframes.i = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %5, i32 0, i32 24
  %6 = load i8, i8* %i_bframes.i, align 2, !tbaa !62
  %current.i = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 59, i32 0
  %7 = load %struct.x264_frame**, %struct.x264_frame*** %current.i, align 64, !tbaa !66
  %call.i100 = tail call %struct.x264_frame* @x264_8_frame_shift(%struct.x264_frame** nonnull %4) #5
  tail call void @x264_8_frame_push(%struct.x264_frame** %7, %struct.x264_frame* %call.i100) #5
  %8 = load %struct.x264_lookahead_t*, %struct.x264_lookahead_t** %lookahead, align 4, !tbaa !42
  %i_size9.i101 = getelementptr inbounds %struct.x264_lookahead_t, %struct.x264_lookahead_t* %8, i32 0, i32 9, i32 2
  %9 = load i32, i32* %i_size9.i101, align 4, !tbaa !60
  %dec10.i102 = add nsw i32 %9, -1
  store i32 %dec10.i102, i32* %i_size9.i101, align 4, !tbaa !60
  %tobool3.i103 = icmp eq i8 %6, 0
  br i1 %tobool3.i103, label %if.end40, label %while.body.while.body_crit_edge.i.preheader

while.body.while.body_crit_edge.i.preheader:      ; preds = %if.end.i
  %conv.i = zext i8 %6 to i32
  br label %while.body.while.body_crit_edge.i

while.body.while.body_crit_edge.i:                ; preds = %while.body.while.body_crit_edge.i.preheader, %while.body.while.body_crit_edge.i
  %10 = phi %struct.x264_lookahead_t* [ %12, %while.body.while.body_crit_edge.i ], [ %8, %while.body.while.body_crit_edge.i.preheader ]
  %dec.i104 = phi i32 [ %dec.i, %while.body.while.body_crit_edge.i ], [ %conv.i, %while.body.while.body_crit_edge.i.preheader ]
  %list6.phi.trans.insert.i = getelementptr inbounds %struct.x264_lookahead_t, %struct.x264_lookahead_t* %10, i32 0, i32 9, i32 0
  %.pre.i = load %struct.x264_frame**, %struct.x264_frame*** %list6.phi.trans.insert.i, align 4, !tbaa !61
  %dec.i = add nsw i32 %dec.i104, -1
  %11 = load %struct.x264_frame**, %struct.x264_frame*** %current.i, align 64, !tbaa !66
  %call.i = tail call %struct.x264_frame* @x264_8_frame_shift(%struct.x264_frame** %.pre.i) #5
  tail call void @x264_8_frame_push(%struct.x264_frame** %11, %struct.x264_frame* %call.i) #5
  %12 = load %struct.x264_lookahead_t*, %struct.x264_lookahead_t** %lookahead, align 4, !tbaa !42
  %i_size9.i = getelementptr inbounds %struct.x264_lookahead_t, %struct.x264_lookahead_t* %12, i32 0, i32 9, i32 2
  %13 = load i32, i32* %i_size9.i, align 4, !tbaa !60
  %dec10.i = add nsw i32 %13, -1
  store i32 %dec10.i, i32* %i_size9.i, align 4, !tbaa !60
  %tobool3.i = icmp eq i32 %dec.i, 0
  br i1 %tobool3.i, label %if.end40, label %while.body.while.body_crit_edge.i

if.else:                                          ; preds = %entry
  %current = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 59, i32 0
  %14 = load %struct.x264_frame**, %struct.x264_frame*** %current, align 64, !tbaa !66
  %15 = load %struct.x264_frame*, %struct.x264_frame** %14, align 4, !tbaa !41
  %tobool4 = icmp eq %struct.x264_frame* %15, null
  br i1 %tobool4, label %lor.lhs.false, label %if.end40

lor.lhs.false:                                    ; preds = %if.else
  %lookahead5 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 101
  %16 = load %struct.x264_lookahead_t*, %struct.x264_lookahead_t** %lookahead5, align 4, !tbaa !42
  %i_size6 = getelementptr inbounds %struct.x264_lookahead_t, %struct.x264_lookahead_t* %16, i32 0, i32 8, i32 2
  %17 = load i32, i32* %i_size6, align 4, !tbaa !59
  %tobool7 = icmp eq i32 %17, 0
  br i1 %tobool7, label %if.end40, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  tail call void @x264_8_slicetype_decide(%struct.x264_t* nonnull %h) #5
  %18 = load %struct.x264_lookahead_t*, %struct.x264_lookahead_t** %lookahead5, align 4, !tbaa !42
  %list = getelementptr inbounds %struct.x264_lookahead_t, %struct.x264_lookahead_t* %18, i32 0, i32 8, i32 0
  %19 = load %struct.x264_frame**, %struct.x264_frame*** %list, align 4, !tbaa !67
  %20 = load %struct.x264_frame*, %struct.x264_frame** %19, align 4, !tbaa !41
  %last_nonb.i = getelementptr inbounds %struct.x264_lookahead_t, %struct.x264_lookahead_t* %18, i32 0, i32 5
  %21 = load %struct.x264_frame*, %struct.x264_frame** %last_nonb.i, align 4, !tbaa !58
  %tobool.i61 = icmp eq %struct.x264_frame* %21, null
  br i1 %tobool.i61, label %lookahead_update_last_nonb.exit, label %if.then.i

if.then.i:                                        ; preds = %if.end
  tail call void @x264_8_frame_push_unused(%struct.x264_t* nonnull %h, %struct.x264_frame* nonnull %21) #5
  %.pre.i62 = load %struct.x264_lookahead_t*, %struct.x264_lookahead_t** %lookahead5, align 4, !tbaa !42
  %list14.phi.trans.insert = getelementptr inbounds %struct.x264_lookahead_t, %struct.x264_lookahead_t* %.pre.i62, i32 0, i32 8, i32 0
  %.pre = load %struct.x264_frame**, %struct.x264_frame*** %list14.phi.trans.insert, align 4, !tbaa !67
  br label %lookahead_update_last_nonb.exit

lookahead_update_last_nonb.exit:                  ; preds = %if.end, %if.then.i
  %22 = phi %struct.x264_frame** [ %19, %if.end ], [ %.pre, %if.then.i ]
  %23 = phi %struct.x264_lookahead_t* [ %18, %if.end ], [ %.pre.i62, %if.then.i ]
  %last_nonb4.i = getelementptr inbounds %struct.x264_lookahead_t, %struct.x264_lookahead_t* %23, i32 0, i32 5
  store %struct.x264_frame* %20, %struct.x264_frame** %last_nonb4.i, align 4, !tbaa !58
  %i_reference_count.i = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %20, i32 0, i32 91
  %24 = load i32, i32* %i_reference_count.i, align 8, !tbaa !68
  %inc.i = add nsw i32 %24, 1
  store i32 %inc.i, i32* %i_reference_count.i, align 8, !tbaa !68
  %list14 = getelementptr inbounds %struct.x264_lookahead_t, %struct.x264_lookahead_t* %23, i32 0, i32 8, i32 0
  %25 = load %struct.x264_frame*, %struct.x264_frame** %22, align 4, !tbaa !41
  %i_bframes = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %25, i32 0, i32 24
  %26 = load i8, i8* %i_bframes, align 2, !tbaa !62
  %conv16 = zext i8 %26 to i32
  %add = add nuw nsw i32 %conv16, 1
  %i_size.i64 = getelementptr inbounds %struct.x264_lookahead_t, %struct.x264_lookahead_t* %23, i32 0, i32 9, i32 2
  %i_max_size.i = getelementptr inbounds %struct.x264_lookahead_t, %struct.x264_lookahead_t* %23, i32 0, i32 9, i32 1
  %i_size1.i = getelementptr inbounds %struct.x264_lookahead_t, %struct.x264_lookahead_t* %23, i32 0, i32 8, i32 2
  %list6.i = getelementptr inbounds %struct.x264_lookahead_t, %struct.x264_lookahead_t* %23, i32 0, i32 9, i32 0
  %.pre106 = load i32, i32* %i_size.i64, align 4, !tbaa !69
  br label %while.body.i66

while.body.i66:                                   ; preds = %if.end5.i, %lookahead_update_last_nonb.exit
  %27 = phi i32 [ %.pre106, %lookahead_update_last_nonb.exit ], [ %inc.i69, %if.end5.i ]
  %dec22.in.i = phi i32 [ %add, %lookahead_update_last_nonb.exit ], [ %dec22.i, %if.end5.i ]
  %dec22.i = add nsw i32 %dec22.in.i, -1
  %28 = load i32, i32* %i_max_size.i, align 4, !tbaa !70
  %cmp.i = icmp slt i32 %27, %28
  br i1 %cmp.i, label %if.end.i67, label %if.else.i

if.else.i:                                        ; preds = %while.body.i66
  tail call void @__assert_fail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 47, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @__PRETTY_FUNCTION__.lookahead_shift, i32 0, i32 0)) #6
  unreachable

if.end.i67:                                       ; preds = %while.body.i66
  %29 = load i32, i32* %i_size1.i, align 4, !tbaa !69
  %tobool2.i = icmp eq i32 %29, 0
  br i1 %tobool2.i, label %if.else4.i, label %if.end5.i

if.else4.i:                                       ; preds = %if.end.i67
  tail call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 48, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @__PRETTY_FUNCTION__.lookahead_shift, i32 0, i32 0)) #6
  unreachable

if.end5.i:                                        ; preds = %if.end.i67
  %30 = load %struct.x264_frame**, %struct.x264_frame*** %list14, align 4, !tbaa !71
  %call.i68 = tail call %struct.x264_frame* @x264_8_frame_shift(%struct.x264_frame** %30) #5
  %31 = load %struct.x264_frame**, %struct.x264_frame*** %list6.i, align 4, !tbaa !71
  %32 = load i32, i32* %i_size.i64, align 4, !tbaa !69
  %inc.i69 = add nsw i32 %32, 1
  store i32 %inc.i69, i32* %i_size.i64, align 4, !tbaa !69
  %arrayidx.i = getelementptr inbounds %struct.x264_frame*, %struct.x264_frame** %31, i32 %32
  store %struct.x264_frame* %call.i68, %struct.x264_frame** %arrayidx.i, align 4, !tbaa !41
  %33 = load i32, i32* %i_size1.i, align 4, !tbaa !69
  %dec9.i = add nsw i32 %33, -1
  store i32 %dec9.i, i32* %i_size1.i, align 4, !tbaa !69
  %tobool.i70 = icmp eq i32 %dec22.i, 0
  br i1 %tobool.i70, label %lookahead_shift.exit, label %while.body.i66

lookahead_shift.exit:                             ; preds = %if.end5.i
  %34 = load %struct.x264_lookahead_t*, %struct.x264_lookahead_t** %lookahead5, align 4, !tbaa !42
  %b_analyse_keyframe = getelementptr inbounds %struct.x264_lookahead_t, %struct.x264_lookahead_t* %34, i32 0, i32 2
  %35 = load i8, i8* %b_analyse_keyframe, align 2, !tbaa !46
  %tobool23 = icmp eq i8 %35, 0
  br i1 %tobool23, label %if.end39, label %land.lhs.true

land.lhs.true:                                    ; preds = %lookahead_shift.exit
  %last_nonb = getelementptr inbounds %struct.x264_lookahead_t, %struct.x264_lookahead_t* %34, i32 0, i32 5
  %36 = load %struct.x264_frame*, %struct.x264_frame** %last_nonb, align 4, !tbaa !58
  %i_type = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %36, i32 0, i32 3
  %37 = load i32, i32* %i_type, align 16, !tbaa !72
  switch i32 %37, label %if.end39 [
    i32 2, label %if.then38
    i32 1, label %if.then38
    i32 6, label %if.then38
  ]

if.then38:                                        ; preds = %land.lhs.true, %land.lhs.true, %land.lhs.true
  tail call void @x264_8_slicetype_analyse(%struct.x264_t* nonnull %h, i32 %add) #5
  %.pre107 = load %struct.x264_lookahead_t*, %struct.x264_lookahead_t** %lookahead5, align 4, !tbaa !42
  br label %if.end39

if.end39:                                         ; preds = %land.lhs.true, %lookahead_shift.exit, %if.then38
  %38 = phi %struct.x264_lookahead_t* [ %34, %land.lhs.true ], [ %34, %lookahead_shift.exit ], [ %.pre107, %if.then38 ]
  %i_size.i72 = getelementptr inbounds %struct.x264_lookahead_t, %struct.x264_lookahead_t* %38, i32 0, i32 9, i32 2
  %39 = load i32, i32* %i_size.i72, align 4, !tbaa !60
  %tobool.i73 = icmp eq i32 %39, 0
  br i1 %tobool.i73, label %if.end40, label %if.end.i79

if.end.i79:                                       ; preds = %if.end39
  %list.i74 = getelementptr inbounds %struct.x264_lookahead_t, %struct.x264_lookahead_t* %38, i32 0, i32 9, i32 0
  %40 = load %struct.x264_frame**, %struct.x264_frame*** %list.i74, align 4, !tbaa !61
  %41 = load %struct.x264_frame*, %struct.x264_frame** %40, align 4, !tbaa !41
  %i_bframes.i75 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %41, i32 0, i32 24
  %42 = load i8, i8* %i_bframes.i75, align 2, !tbaa !62
  %43 = load %struct.x264_frame**, %struct.x264_frame*** %current, align 64, !tbaa !66
  %call.i8295 = tail call %struct.x264_frame* @x264_8_frame_shift(%struct.x264_frame** nonnull %40) #5
  tail call void @x264_8_frame_push(%struct.x264_frame** %43, %struct.x264_frame* %call.i8295) #5
  %44 = load %struct.x264_lookahead_t*, %struct.x264_lookahead_t** %lookahead5, align 4, !tbaa !42
  %i_size9.i8396 = getelementptr inbounds %struct.x264_lookahead_t, %struct.x264_lookahead_t* %44, i32 0, i32 9, i32 2
  %45 = load i32, i32* %i_size9.i8396, align 4, !tbaa !60
  %dec10.i8497 = add nsw i32 %45, -1
  store i32 %dec10.i8497, i32* %i_size9.i8396, align 4, !tbaa !60
  %tobool3.i8598 = icmp eq i8 %42, 0
  br i1 %tobool3.i8598, label %if.end40, label %while.body.while.body_crit_edge.i89.preheader

while.body.while.body_crit_edge.i89.preheader:    ; preds = %if.end.i79
  %conv.i76 = zext i8 %42 to i32
  br label %while.body.while.body_crit_edge.i89

while.body.while.body_crit_edge.i89:              ; preds = %while.body.while.body_crit_edge.i89.preheader, %while.body.while.body_crit_edge.i89
  %46 = phi %struct.x264_lookahead_t* [ %48, %while.body.while.body_crit_edge.i89 ], [ %44, %while.body.while.body_crit_edge.i89.preheader ]
  %dec.i8199 = phi i32 [ %dec.i81, %while.body.while.body_crit_edge.i89 ], [ %conv.i76, %while.body.while.body_crit_edge.i89.preheader ]
  %list6.phi.trans.insert.i87 = getelementptr inbounds %struct.x264_lookahead_t, %struct.x264_lookahead_t* %46, i32 0, i32 9, i32 0
  %.pre.i88 = load %struct.x264_frame**, %struct.x264_frame*** %list6.phi.trans.insert.i87, align 4, !tbaa !61
  %dec.i81 = add nsw i32 %dec.i8199, -1
  %47 = load %struct.x264_frame**, %struct.x264_frame*** %current, align 64, !tbaa !66
  %call.i82 = tail call %struct.x264_frame* @x264_8_frame_shift(%struct.x264_frame** %.pre.i88) #5
  tail call void @x264_8_frame_push(%struct.x264_frame** %47, %struct.x264_frame* %call.i82) #5
  %48 = load %struct.x264_lookahead_t*, %struct.x264_lookahead_t** %lookahead5, align 4, !tbaa !42
  %i_size9.i83 = getelementptr inbounds %struct.x264_lookahead_t, %struct.x264_lookahead_t* %48, i32 0, i32 9, i32 2
  %49 = load i32, i32* %i_size9.i83, align 4, !tbaa !60
  %dec10.i84 = add nsw i32 %49, -1
  store i32 %dec10.i84, i32* %i_size9.i83, align 4, !tbaa !60
  %tobool3.i85 = icmp eq i32 %dec.i81, 0
  br i1 %tobool3.i85, label %if.end40, label %while.body.while.body_crit_edge.i89

if.end40:                                         ; preds = %while.body.while.body_crit_edge.i, %while.body.while.body_crit_edge.i89, %while.cond.preheader.split.us, %if.end.i, %if.end.i79, %if.end39, %lor.lhs.false, %if.else
  ret void
}

declare dso_local void @x264_8_slicetype_decide(%struct.x264_t*) local_unnamed_addr #1

declare dso_local void @x264_8_slicetype_analyse(%struct.x264_t*, i32) local_unnamed_addr #1

declare dso_local void @x264_8_frame_push(%struct.x264_frame**, %struct.x264_frame*) local_unnamed_addr #1

declare dso_local %struct.x264_frame* @x264_8_frame_shift(%struct.x264_frame**) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #4

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { norecurse nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 (http://10.18.30.194:8888/compiler/compiler10.git 713ef477716300a9b04a1522e3fce445623444dc)"}
!2 = !{!3, !5, i64 4}
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
!36 = !{!3, !5, i64 100}
!37 = !{!38, !5, i64 4}
!38 = !{!"x264_lookahead_t", !6, i64 0, !6, i64 1, !6, i64 2, !5, i64 4, !5, i64 8, !9, i64 12, !5, i64 16, !39, i64 20, !39, i64 44, !39, i64 68}
!39 = !{!"", !9, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20}
!40 = !{!3, !5, i64 700}
!41 = !{!9, !9, i64 0}
!42 = !{!3, !9, i64 38332}
!43 = !{!3, !5, i64 672}
!44 = !{!3, !5, i64 704}
!45 = !{!3, !5, i64 716}
!46 = !{!38, !6, i64 2}
!47 = !{!38, !5, i64 8}
!48 = !{!3, !5, i64 24}
!49 = !{!3, !5, i64 15284}
!50 = !{i64 0, i64 4, !51, i64 4, i64 4, !51, i64 8, i64 4, !51, i64 12, i64 4, !51, i64 16, i64 4, !51, i64 20, i64 4, !51, i64 24, i64 4, !51, i64 28, i64 4, !51, i64 32, i64 4, !51, i64 36, i64 4, !51, i64 40, i64 4, !51, i64 44, i64 4, !51, i64 48, i64 4, !51, i64 52, i64 4, !51, i64 56, i64 4, !51, i64 60, i64 4, !51, i64 64, i64 4, !51, i64 68, i64 4, !51, i64 72, i64 4, !51, i64 76, i64 4, !51, i64 80, i64 4, !51, i64 84, i64 4, !51, i64 88, i64 4, !51, i64 92, i64 4, !51, i64 96, i64 4, !51, i64 100, i64 4, !51, i64 104, i64 4, !51, i64 108, i64 4, !51, i64 112, i64 4, !51, i64 116, i64 4, !51, i64 120, i64 4, !51, i64 124, i64 4, !51, i64 128, i64 4, !51, i64 132, i64 4, !51, i64 136, i64 4, !51, i64 140, i64 4, !51, i64 144, i64 4, !51, i64 148, i64 4, !51, i64 152, i64 4, !51, i64 156, i64 4, !51, i64 160, i64 4, !51, i64 164, i64 4, !51, i64 168, i64 4, !51, i64 172, i64 4, !51, i64 176, i64 4, !51, i64 180, i64 4, !41, i64 184, i64 16, !52, i64 200, i64 16, !52, i64 216, i64 16, !52, i64 232, i64 16, !52, i64 248, i64 64, !52, i64 312, i64 64, !52, i64 376, i64 64, !52, i64 440, i64 64, !52, i64 504, i64 4, !41, i64 508, i64 4, !41, i64 512, i64 4, !51, i64 516, i64 4, !51, i64 520, i64 4, !41, i64 524, i64 4, !51, i64 528, i64 4, !51, i64 532, i64 4, !51, i64 536, i64 4, !51, i64 540, i64 4, !51, i64 544, i64 4, !51, i64 548, i64 4, !51, i64 552, i64 4, !51, i64 556, i64 4, !51, i64 560, i64 4, !51, i64 564, i64 4, !51, i64 568, i64 4, !51, i64 572, i64 4, !51, i64 576, i64 4, !51, i64 580, i64 4, !51, i64 584, i64 4, !51, i64 588, i64 4, !51, i64 592, i64 4, !51, i64 596, i64 4, !53, i64 600, i64 4, !53, i64 604, i64 4, !51, i64 608, i64 4, !51, i64 612, i64 4, !51, i64 616, i64 8, !52, i64 624, i64 4, !51, i64 628, i64 4, !51, i64 632, i64 4, !51, i64 636, i64 4, !51, i64 640, i64 4, !51, i64 644, i64 4, !51, i64 648, i64 4, !51, i64 652, i64 4, !51, i64 656, i64 4, !53, i64 660, i64 4, !53, i64 664, i64 4, !53, i64 668, i64 4, !51, i64 672, i64 4, !51, i64 676, i64 4, !53, i64 680, i64 4, !53, i64 684, i64 4, !53, i64 688, i64 4, !51, i64 692, i64 4, !51, i64 696, i64 4, !53, i64 700, i64 4, !51, i64 704, i64 4, !51, i64 708, i64 4, !51, i64 712, i64 4, !41, i64 716, i64 4, !51, i64 720, i64 4, !41, i64 724, i64 4, !53, i64 728, i64 4, !53, i64 732, i64 4, !53, i64 736, i64 4, !41, i64 740, i64 4, !51, i64 744, i64 4, !41, i64 748, i64 4, !51, i64 752, i64 4, !51, i64 756, i64 4, !51, i64 760, i64 4, !51, i64 764, i64 4, !51, i64 768, i64 4, !51, i64 772, i64 4, !51, i64 776, i64 4, !51, i64 780, i64 4, !51, i64 784, i64 4, !51, i64 788, i64 4, !51, i64 792, i64 4, !51, i64 796, i64 4, !51, i64 800, i64 4, !51, i64 808, i64 8, !54, i64 816, i64 8, !54, i64 824, i64 4, !51, i64 828, i64 4, !51, i64 832, i64 4, !51, i64 836, i64 4, !51, i64 840, i64 4, !51, i64 844, i64 4, !51, i64 848, i64 4, !51, i64 852, i64 4, !51, i64 856, i64 4, !51, i64 860, i64 4, !51, i64 864, i64 4, !51, i64 868, i64 4, !51, i64 872, i64 4, !51, i64 876, i64 4, !51, i64 880, i64 4, !51, i64 884, i64 4, !51, i64 888, i64 4, !51, i64 892, i64 4, !51, i64 896, i64 4, !51, i64 900, i64 4, !51, i64 904, i64 4, !41, i64 908, i64 4, !41, i64 912, i64 4, !51, i64 916, i64 4, !51, i64 920, i64 4, !51, i64 924, i64 4, !51, i64 928, i64 4, !51, i64 932, i64 4, !41, i64 936, i64 4, !41, i64 940, i64 4, !41, i64 944, i64 4, !41, i64 948, i64 516, !52, i64 1464, i64 64, !52, i64 1528, i64 4, !51, i64 1532, i64 4, !51, i64 1536, i64 4, !51, i64 1540, i64 4, !51, i64 1544, i64 4, !51, i64 1548, i64 4, !51, i64 1552, i64 4, !41, i64 1556, i64 4, !41, i64 1560, i64 4, !51, i64 1564, i64 4, !51, i64 1568, i64 4, !51, i64 1572, i64 4, !51, i64 1576, i64 4, !41, i64 1580, i64 4, !51, i64 1584, i64 4, !41, i64 1588, i64 4, !41, i64 1592, i64 4, !41, i64 1596, i64 4, !41, i64 1600, i64 4, !51, i64 1604, i64 4, !51, i64 1608, i64 4, !51, i64 1612, i64 4, !41, i64 1616, i64 4, !51, i64 1620, i64 4, !41, i64 1624, i64 4, !51, i64 1628, i64 4, !51, i64 1632, i64 4, !51, i64 1636, i64 4, !51, i64 1640, i64 4, !51, i64 1644, i64 4, !51, i64 1648, i64 8, !54, i64 1656, i64 4, !51, i64 1664, i64 8, !54, i64 1672, i64 8, !54, i64 1680, i64 8, !54, i64 1688, i64 8, !54, i64 1696, i64 8, !54, i64 1704, i64 8, !54, i64 1712, i64 8, !54, i64 1720, i64 4, !51, i64 1728, i64 8, !54, i64 1736, i64 4, !51, i64 1740, i64 16, !52, i64 1756, i64 16, !52, i64 1772, i64 16, !52, i64 1788, i64 16, !52, i64 1804, i64 16, !52, i64 1820, i64 16, !52, i64 1836, i64 16, !52, i64 1852, i64 16, !52, i64 1868, i64 16, !52, i64 1884, i64 16, !52, i64 1900, i64 4, !41, i64 1904, i64 280, !52, i64 2184, i64 1120, !52, i64 3304, i64 4, !41, i64 3308, i64 4, !41, i64 3312, i64 4, !41, i64 3316, i64 4, !41, i64 3320, i64 4, !51, i64 3324, i64 4, !51, i64 3328, i64 4, !51, i64 3332, i64 4, !51, i64 3336, i64 4, !51, i64 3340, i64 4, !51, i64 3344, i64 4, !51, i64 3348, i64 4, !51, i64 3352, i64 4, !51, i64 3356, i64 4, !51, i64 3360, i64 4, !51, i64 3364, i64 8, !52, i64 3372, i64 4, !51, i64 3376, i64 4, !51, i64 3380, i64 4, !51, i64 3384, i64 4, !51, i64 3388, i64 4, !51, i64 3392, i64 8, !52, i64 3400, i64 256, !52, i64 3656, i64 4, !51, i64 3664, i64 4608, !52, i64 8272, i64 4, !51, i64 8276, i64 4, !51, i64 8280, i64 128, !52, i64 8408, i64 4, !51, i64 8412, i64 4, !51, i64 8416, i64 4, !51, i64 8420, i64 4, !51, i64 8424, i64 4, !51, i64 8428, i64 4, !51, i64 8432, i64 4, !51, i64 8436, i64 4, !51, i64 8448, i64 312, !52, i64 8760, i64 64, !52, i64 8824, i64 4, !51, i64 8832, i64 4, !41, i64 8836, i64 4, !41, i64 8840, i64 4, !51, i64 8844, i64 4, !51, i64 8848, i64 4, !51, i64 8852, i64 4, !51, i64 8856, i64 4, !51, i64 8860, i64 4, !51, i64 8864, i64 4, !51, i64 8868, i64 4, !51, i64 8872, i64 4, !51, i64 8876, i64 4, !51, i64 8880, i64 4, !51, i64 8884, i64 8, !52, i64 8892, i64 4, !51, i64 8896, i64 4, !51, i64 8900, i64 4, !51, i64 8904, i64 4, !51, i64 8908, i64 4, !51, i64 8912, i64 8, !52, i64 8920, i64 256, !52, i64 9176, i64 4, !51, i64 9184, i64 4608, !52, i64 13792, i64 4, !51, i64 13796, i64 4, !51, i64 13800, i64 128, !52, i64 13928, i64 4, !51, i64 13932, i64 4, !51, i64 13936, i64 4, !51, i64 13940, i64 4, !51, i64 13944, i64 4, !51, i64 13948, i64 4, !51, i64 13952, i64 4, !51, i64 13956, i64 4, !51, i64 14016, i64 4, !51, i64 14020, i64 4, !51, i64 14024, i64 4, !51, i64 14028, i64 4, !51, i64 14032, i64 4, !41, i64 14036, i64 4, !41, i64 14040, i64 4, !41, i64 14080, i64 4, !51, i64 14084, i64 1024, !52, i64 15108, i64 12, !52, i64 15168, i64 4, !41, i64 15172, i64 8, !52, i64 15180, i64 4, !41, i64 15184, i64 72, !52, i64 15256, i64 4, !51, i64 15260, i64 4, !51, i64 15264, i64 4, !51, i64 15268, i64 4, !51, i64 15272, i64 4, !51, i64 15276, i64 4, !51, i64 15280, i64 4, !51, i64 15284, i64 4, !51, i64 15288, i64 4, !51, i64 15296, i64 8, !54, i64 15304, i64 8, !54, i64 15312, i64 16, !52, i64 15328, i64 8, !54, i64 15336, i64 8, !54, i64 15344, i64 4, !51, i64 15348, i64 4, !51, i64 15352, i64 4, !41, i64 15356, i64 4, !41, i64 15360, i64 8, !52, i64 15368, i64 152, !52, i64 15520, i64 8, !52, i64 15528, i64 8, !52, i64 15536, i64 4, !51, i64 15540, i64 4, !51, i64 15544, i64 8, !54, i64 15552, i64 96, !52, i64 15648, i64 32, !52, i64 15680, i64 1536, !52, i64 17216, i64 1536, !52, i64 18752, i64 4, !51, i64 18756, i64 4, !51, i64 18760, i64 4, !51, i64 18764, i64 4, !51, i64 18768, i64 4, !51, i64 18772, i64 4, !51, i64 18776, i64 4, !51, i64 18780, i64 4, !51, i64 18784, i64 8, !52, i64 18792, i64 8, !52, i64 18800, i64 4, !51, i64 18804, i64 4, !51, i64 18808, i64 4, !51, i64 18812, i64 4, !51, i64 18816, i64 4, !51, i64 18820, i64 4, !51, i64 18824, i64 4, !51, i64 18828, i64 4, !51, i64 18832, i64 4, !51, i64 18836, i64 4, !51, i64 18840, i64 4, !51, i64 18844, i64 4, !51, i64 18848, i64 4, !51, i64 18852, i64 4, !51, i64 18856, i64 4, !51, i64 18860, i64 8, !52, i64 18868, i64 8, !52, i64 18876, i64 12, !52, i64 18888, i64 12, !52, i64 18900, i64 8, !52, i64 18908, i64 8, !52, i64 18916, i64 12, !52, i64 18928, i64 12, !52, i64 18944, i64 8, !52, i64 18952, i64 12, !52, i64 18964, i64 12, !52, i64 18976, i64 4, !51, i64 18980, i64 16, !52, i64 18996, i64 64, !52, i64 19060, i64 4, !51, i64 19064, i64 4, !51, i64 19068, i64 4, !51, i64 19072, i64 8, !52, i64 19080, i64 4, !51, i64 19084, i64 4, !51, i64 19088, i64 4, !51, i64 19092, i64 8, !52, i64 19100, i64 4, !51, i64 19104, i64 4, !51, i64 19108, i64 4, !51, i64 19112, i64 4, !51, i64 19116, i64 4, !51, i64 19120, i64 4, !51, i64 19124, i64 4, !41, i64 19128, i64 4, !51, i64 19132, i64 4, !51, i64 19136, i64 4, !51, i64 19140, i64 4, !51, i64 19144, i64 4, !41, i64 19148, i64 4, !41, i64 19152, i64 4, !41, i64 19156, i64 4, !41, i64 19160, i64 4, !41, i64 19164, i64 4, !41, i64 19168, i64 4, !41, i64 19172, i64 4, !41, i64 19176, i64 8, !52, i64 19184, i64 8, !52, i64 19192, i64 8, !52, i64 19200, i64 256, !52, i64 19456, i64 4, !41, i64 19460, i64 4, !41, i64 19464, i64 4, !41, i64 19468, i64 4, !41, i64 19472, i64 64, !52, i64 19536, i64 4, !51, i64 19540, i64 4, !51, i64 19544, i64 4, !52, i64 19548, i64 4, !51, i64 19552, i64 4, !51, i64 19556, i64 4, !51, i64 19560, i64 4, !51, i64 19564, i64 4, !51, i64 19568, i64 4, !51, i64 19572, i64 4, !51, i64 19576, i64 4, !51, i64 19580, i64 4, !51, i64 19584, i64 4, !51, i64 19588, i64 4, !51, i64 19648, i64 768, !52, i64 20416, i64 1728, !52, i64 22144, i64 256, !52, i64 22400, i64 256, !52, i64 22656, i64 384, !52, i64 23040, i64 480, !52, i64 23520, i64 16, !52, i64 23536, i64 16, !52, i64 23552, i64 512, !52, i64 24064, i64 512, !52, i64 24576, i64 128, !52, i64 24704, i64 72, !52, i64 24776, i64 4, !51, i64 24780, i64 4, !51, i64 24784, i64 12, !52, i64 24796, i64 12, !52, i64 24808, i64 12, !52, i64 24820, i64 8, !52, i64 24828, i64 3072, !52, i64 27900, i64 128, !52, i64 28028, i64 128, !52, i64 28156, i64 12, !52, i64 28224, i64 40, !52, i64 28264, i64 120, !52, i64 28384, i64 80, !52, i64 28464, i64 320, !52, i64 28784, i64 160, !52, i64 28944, i64 40, !52, i64 28984, i64 32, !52, i64 29016, i64 8, !52, i64 29024, i64 4, !51, i64 29028, i64 4, !52, i64 29032, i64 4, !51, i64 29036, i64 4, !51, i64 29040, i64 4, !51, i64 29044, i64 4, !51, i64 29048, i64 24, !52, i64 29072, i64 6, !52, i64 29080, i64 4, !41, i64 29088, i64 4, !51, i64 29092, i64 4, !51, i64 29096, i64 4, !51, i64 29100, i64 4, !51, i64 29104, i64 4, !51, i64 29108, i64 4, !51, i64 29112, i64 4, !51, i64 29116, i64 4, !51, i64 29120, i64 16, !52, i64 29136, i64 4, !51, i64 29140, i64 4, !51, i64 29144, i64 1024, !52, i64 30168, i64 4, !41, i64 30172, i64 512, !52, i64 30684, i64 4, !41, i64 30688, i64 18, !52, i64 30708, i64 4, !51, i64 30712, i64 34, !52, i64 30784, i64 4, !41, i64 30792, i64 12, !52, i64 30808, i64 24, !52, i64 30832, i64 24, !52, i64 30856, i64 68, !52, i64 30928, i64 24, !52, i64 30952, i64 24, !52, i64 30976, i64 24, !52, i64 31000, i64 24, !52, i64 31024, i64 24, !52, i64 31048, i64 24, !52, i64 31072, i64 24, !52, i64 31096, i64 456, !52, i64 31552, i64 272, !52, i64 31824, i64 16, !52, i64 31840, i64 1024, !52, i64 32864, i64 48, !52, i64 32912, i64 416, !52, i64 33328, i64 24, !52, i64 33352, i64 8, !52, i64 33360, i64 8, !52, i64 33368, i64 8, !52, i64 33376, i64 4, !51, i64 33380, i64 4, !51, i64 33384, i64 4, !51, i64 33388, i64 76, !52, i64 33464, i64 4, !51, i64 33468, i64 4, !51, i64 33472, i64 4, !51, i64 33476, i64 8, !52, i64 33484, i64 256, !52, i64 33740, i64 68, !52, i64 33808, i64 24, !52, i64 33832, i64 208, !52, i64 34040, i64 12, !52, i64 34052, i64 8, !52, i64 34064, i64 24, !52, i64 34088, i64 8, !55, i64 34096, i64 4, !51, i64 34104, i64 4, !41, i64 34108, i64 4, !41, i64 34112, i64 4, !41, i64 34144, i64 512, !52, i64 34656, i64 2048, !52, i64 36704, i64 32, !52, i64 36736, i64 7, !52, i64 36744, i64 4, !41, i64 36748, i64 4, !41, i64 36752, i64 60, !52, i64 36812, i64 8, !52, i64 36820, i64 28, !52, i64 36848, i64 48, !52, i64 36896, i64 48, !52, i64 36944, i64 28, !52, i64 36972, i64 28, !52, i64 37000, i64 28, !52, i64 37028, i64 4, !41, i64 37032, i64 32, !52, i64 37064, i64 32, !52, i64 37096, i64 32, !52, i64 37128, i64 28, !52, i64 37156, i64 16, !52, i64 37172, i64 32, !52, i64 37204, i64 32, !52, i64 37236, i64 32, !52, i64 37268, i64 28, !52, i64 37296, i64 28, !52, i64 37324, i64 32, !52, i64 37356, i64 4, !41, i64 37360, i64 4, !41, i64 37364, i64 4, !52, i64 37368, i64 16, !52, i64 37384, i64 16, !52, i64 37400, i64 16, !52, i64 37416, i64 4, !41, i64 37420, i64 4, !41, i64 37424, i64 4, !41, i64 37428, i64 28, !52, i64 37456, i64 28, !52, i64 37484, i64 28, !52, i64 37512, i64 28, !52, i64 37540, i64 28, !52, i64 37568, i64 4, !41, i64 37572, i64 4, !41, i64 37576, i64 4, !41, i64 37580, i64 4, !41, i64 37584, i64 4, !41, i64 37588, i64 4, !41, i64 37592, i64 4, !41, i64 37596, i64 4, !41, i64 37600, i64 4, !41, i64 37604, i64 4, !41, i64 37608, i64 4, !41, i64 37612, i64 4, !41, i64 37616, i64 4, !41, i64 37620, i64 4, !41, i64 37624, i64 4, !41, i64 37628, i64 4, !41, i64 37632, i64 4, !41, i64 37636, i64 4, !41, i64 37640, i64 4, !41, i64 37644, i64 4, !41, i64 37648, i64 4, !41, i64 37652, i64 4, !41, i64 37656, i64 4, !41, i64 37660, i64 4, !41, i64 37664, i64 4, !41, i64 37668, i64 4, !41, i64 37672, i64 4, !41, i64 37676, i64 48, !52, i64 37724, i64 28, !52, i64 37752, i64 4, !41, i64 37756, i64 4, !41, i64 37760, i64 4, !41, i64 37764, i64 4, !41, i64 37768, i64 4, !41, i64 37772, i64 4, !41, i64 37776, i64 4, !41, i64 37780, i64 4, !41, i64 37784, i64 4, !41, i64 37788, i64 4, !41, i64 37792, i64 4, !41, i64 37796, i64 4, !41, i64 37800, i64 4, !41, i64 37804, i64 4, !41, i64 37808, i64 4, !41, i64 37812, i64 4, !41, i64 37816, i64 4, !41, i64 37820, i64 4, !41, i64 37824, i64 4, !41, i64 37828, i64 4, !41, i64 37832, i64 4, !41, i64 37836, i64 4, !41, i64 37840, i64 4, !41, i64 37844, i64 4, !41, i64 37848, i64 4, !41, i64 37852, i64 4, !41, i64 37856, i64 4, !41, i64 37860, i64 4, !41, i64 37864, i64 4, !41, i64 37868, i64 4, !41, i64 37872, i64 4, !41, i64 37876, i64 4, !41, i64 37880, i64 4, !41, i64 37884, i64 4, !41, i64 37888, i64 4, !41, i64 37892, i64 4, !41, i64 37896, i64 4, !41, i64 37900, i64 4, !41, i64 37904, i64 4, !41, i64 37908, i64 4, !41, i64 37912, i64 4, !41, i64 37916, i64 4, !41, i64 37920, i64 4, !41, i64 37924, i64 4, !41, i64 37928, i64 4, !41, i64 37932, i64 4, !41, i64 37936, i64 4, !41, i64 37940, i64 4, !41, i64 37944, i64 4, !41, i64 37948, i64 4, !41, i64 37952, i64 4, !41, i64 37956, i64 4, !41, i64 37960, i64 4, !41, i64 37964, i64 4, !41, i64 37968, i64 4, !41, i64 37972, i64 4, !41, i64 37976, i64 4, !41, i64 37980, i64 4, !41, i64 37984, i64 4, !41, i64 37988, i64 4, !41, i64 37992, i64 4, !41, i64 37996, i64 4, !41, i64 38000, i64 4, !41, i64 38004, i64 4, !41, i64 38008, i64 4, !41, i64 38012, i64 4, !41, i64 38016, i64 4, !41, i64 38020, i64 4, !41, i64 38024, i64 4, !41, i64 38028, i64 4, !41, i64 38032, i64 4, !41, i64 38036, i64 4, !41, i64 38040, i64 4, !41, i64 38044, i64 4, !41, i64 38048, i64 4, !41, i64 38052, i64 4, !41, i64 38056, i64 4, !41, i64 38060, i64 4, !41, i64 38064, i64 4, !41, i64 38068, i64 4, !41, i64 38072, i64 4, !41, i64 38076, i64 4, !41, i64 38080, i64 4, !41, i64 38084, i64 56, !52, i64 38140, i64 4, !41, i64 38144, i64 4, !41, i64 38148, i64 52, !52, i64 38200, i64 4, !41, i64 38204, i64 4, !41, i64 38208, i64 4, !41, i64 38212, i64 4, !41, i64 38216, i64 4, !41, i64 38220, i64 4, !41, i64 38224, i64 4, !41, i64 38228, i64 4, !41, i64 38232, i64 8, !52, i64 38240, i64 8, !52, i64 38248, i64 4, !41, i64 38252, i64 4, !41, i64 38256, i64 8, !52, i64 38264, i64 8, !52, i64 38272, i64 4, !41, i64 38276, i64 4, !41, i64 38280, i64 4, !41, i64 38284, i64 4, !41, i64 38288, i64 4, !41, i64 38292, i64 4, !41, i64 38296, i64 4, !41, i64 38300, i64 4, !41, i64 38304, i64 4, !41, i64 38308, i64 4, !41, i64 38312, i64 4, !41, i64 38316, i64 4, !41, i64 38320, i64 4, !41, i64 38324, i64 4, !41, i64 38328, i64 4, !41, i64 38332, i64 4, !41}
!51 = !{!5, !5, i64 0}
!52 = !{!6, !6, i64 0}
!53 = !{!11, !11, i64 0}
!54 = !{!15, !15, i64 0}
!55 = !{!28, !28, i64 0}
!56 = !{!38, !6, i64 1}
!57 = !{!38, !6, i64 0}
!58 = !{!38, !9, i64 12}
!59 = !{!38, !5, i64 52}
!60 = !{!38, !5, i64 76}
!61 = !{!38, !9, i64 68}
!62 = !{!63, !6, i64 138}
!63 = !{!"x264_frame", !9, i64 0, !5, i64 4, !6, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !11, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !9, i64 96, !5, i64 100, !5, i64 104, !15, i64 112, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !6, i64 136, !6, i64 137, !6, i64 138, !11, i64 140, !11, i64 144, !11, i64 148, !5, i64 152, !5, i64 156, !5, i64 160, !6, i64 164, !6, i64 176, !6, i64 188, !5, i64 200, !5, i64 204, !5, i64 208, !6, i64 212, !6, i64 224, !6, i64 236, !6, i64 284, !6, i64 332, !9, i64 348, !6, i64 352, !6, i64 368, !9, i64 384, !6, i64 400, !6, i64 2704, !5, i64 2768, !9, i64 2772, !9, i64 2776, !9, i64 2780, !6, i64 2784, !9, i64 2792, !6, i64 2796, !9, i64 2932, !9, i64 2936, !6, i64 2940, !6, i64 4236, !6, i64 4372, !6, i64 4380, !6, i64 4388, !6, i64 4516, !6, i64 4520, !6, i64 5816, !5, i64 7112, !6, i64 7116, !6, i64 7188, !9, i64 8484, !9, i64 8488, !9, i64 8492, !9, i64 8496, !9, i64 8500, !9, i64 8504, !5, i64 8508, !9, i64 8512, !9, i64 8516, !9, i64 8520, !5, i64 8524, !6, i64 8528, !6, i64 8600, !6, i64 8616, !64, i64 8640, !6, i64 8672, !6, i64 8924, !6, i64 9928, !15, i64 11936, !15, i64 11944, !5, i64 11952, !5, i64 11956, !5, i64 11960, !5, i64 11964, !5, i64 11968, !5, i64 11972, !11, i64 11976, !5, i64 11980, !5, i64 11984, !5, i64 11988, !5, i64 11992, !65, i64 11996, !9, i64 12008, !9, i64 12012, !9, i64 12016}
!64 = !{!"x264_hrd_t", !28, i64 0, !28, i64 8, !28, i64 16, !28, i64 24}
!65 = !{!"x264_sei_t", !5, i64 0, !9, i64 4, !9, i64 8}
!66 = !{!3, !9, i64 15168}
!67 = !{!38, !9, i64 44}
!68 = !{!63, !5, i64 11960}
!69 = !{!39, !5, i64 8}
!70 = !{!39, !5, i64 4}
!71 = !{!39, !9, i64 0}
!72 = !{!63, !5, i64 16}
