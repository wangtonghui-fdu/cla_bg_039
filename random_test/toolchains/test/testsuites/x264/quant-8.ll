; ModuleID = 'common/quant.c'
source_filename = "common/quant.c"
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

@x264_decimate_table8 = external dso_local local_unnamed_addr constant [64 x i8], align 1
@x264_decimate_table4 = external dso_local local_unnamed_addr constant [16 x i8], align 1

; Function Attrs: nofree norecurse nounwind
define hidden void @x264_8_quant_init(%struct.x264_t* nocapture readnone %h, i32 %cpu, %struct.x264_quant_function_t* %pf) local_unnamed_addr #0 {
entry:
  %quant_8x8 = getelementptr inbounds %struct.x264_quant_function_t, %struct.x264_quant_function_t* %pf, i32 0, i32 0
  store i32 (i16*, i16*, i16*)* @quant_8x8, i32 (i16*, i16*, i16*)** %quant_8x8, align 4, !tbaa !2
  %quant_4x4 = getelementptr inbounds %struct.x264_quant_function_t, %struct.x264_quant_function_t* %pf, i32 0, i32 1
  store i32 (i16*, i16*, i16*)* @quant_4x4, i32 (i16*, i16*, i16*)** %quant_4x4, align 4, !tbaa !7
  %quant_4x4x4 = getelementptr inbounds %struct.x264_quant_function_t, %struct.x264_quant_function_t* %pf, i32 0, i32 2
  store i32 ([16 x i16]*, i16*, i16*)* @quant_4x4x4, i32 ([16 x i16]*, i16*, i16*)** %quant_4x4x4, align 4, !tbaa !8
  %quant_4x4_dc = getelementptr inbounds %struct.x264_quant_function_t, %struct.x264_quant_function_t* %pf, i32 0, i32 3
  store i32 (i16*, i32, i32)* @quant_4x4_dc, i32 (i16*, i32, i32)** %quant_4x4_dc, align 4, !tbaa !9
  %quant_2x2_dc = getelementptr inbounds %struct.x264_quant_function_t, %struct.x264_quant_function_t* %pf, i32 0, i32 4
  store i32 (i16*, i32, i32)* @quant_2x2_dc, i32 (i16*, i32, i32)** %quant_2x2_dc, align 4, !tbaa !10
  %dequant_4x4 = getelementptr inbounds %struct.x264_quant_function_t, %struct.x264_quant_function_t* %pf, i32 0, i32 6
  store void (i16*, [16 x i32]*, i32)* @dequant_4x4, void (i16*, [16 x i32]*, i32)** %dequant_4x4, align 4, !tbaa !11
  %dequant_4x4_dc = getelementptr inbounds %struct.x264_quant_function_t, %struct.x264_quant_function_t* %pf, i32 0, i32 7
  store void (i16*, [16 x i32]*, i32)* @dequant_4x4_dc, void (i16*, [16 x i32]*, i32)** %dequant_4x4_dc, align 4, !tbaa !12
  %dequant_8x8 = getelementptr inbounds %struct.x264_quant_function_t, %struct.x264_quant_function_t* %pf, i32 0, i32 5
  store void (i16*, [64 x i32]*, i32)* @dequant_8x8, void (i16*, [64 x i32]*, i32)** %dequant_8x8, align 4, !tbaa !13
  %idct_dequant_2x4_dc = getelementptr inbounds %struct.x264_quant_function_t, %struct.x264_quant_function_t* %pf, i32 0, i32 8
  store void (i16*, [16 x i16]*, [16 x i32]*, i32)* @idct_dequant_2x4_dc, void (i16*, [16 x i16]*, [16 x i32]*, i32)** %idct_dequant_2x4_dc, align 4, !tbaa !14
  %idct_dequant_2x4_dconly = getelementptr inbounds %struct.x264_quant_function_t, %struct.x264_quant_function_t* %pf, i32 0, i32 9
  store void (i16*, [16 x i32]*, i32)* @idct_dequant_2x4_dconly, void (i16*, [16 x i32]*, i32)** %idct_dequant_2x4_dconly, align 4, !tbaa !15
  %optimize_chroma_2x2_dc = getelementptr inbounds %struct.x264_quant_function_t, %struct.x264_quant_function_t* %pf, i32 0, i32 10
  store i32 (i16*, i32)* @optimize_chroma_2x2_dc, i32 (i16*, i32)** %optimize_chroma_2x2_dc, align 4, !tbaa !16
  %optimize_chroma_2x4_dc = getelementptr inbounds %struct.x264_quant_function_t, %struct.x264_quant_function_t* %pf, i32 0, i32 11
  store i32 (i16*, i32)* @optimize_chroma_2x4_dc, i32 (i16*, i32)** %optimize_chroma_2x4_dc, align 4, !tbaa !17
  %denoise_dct = getelementptr inbounds %struct.x264_quant_function_t, %struct.x264_quant_function_t* %pf, i32 0, i32 12
  store void (i16*, i32*, i16*, i32)* @denoise_dct, void (i16*, i32*, i16*, i32)** %denoise_dct, align 4, !tbaa !18
  %decimate_score15 = getelementptr inbounds %struct.x264_quant_function_t, %struct.x264_quant_function_t* %pf, i32 0, i32 13
  store i32 (i16*)* @decimate_score15, i32 (i16*)** %decimate_score15, align 4, !tbaa !19
  %decimate_score16 = getelementptr inbounds %struct.x264_quant_function_t, %struct.x264_quant_function_t* %pf, i32 0, i32 14
  store i32 (i16*)* @decimate_score16, i32 (i16*)** %decimate_score16, align 4, !tbaa !20
  %decimate_score64 = getelementptr inbounds %struct.x264_quant_function_t, %struct.x264_quant_function_t* %pf, i32 0, i32 15
  store i32 (i16*)* @decimate_score64, i32 (i16*)** %decimate_score64, align 4, !tbaa !21
  %coeff_last4 = getelementptr inbounds %struct.x264_quant_function_t, %struct.x264_quant_function_t* %pf, i32 0, i32 17
  store i32 (i16*)* @coeff_last4, i32 (i16*)** %coeff_last4, align 4, !tbaa !22
  %coeff_last8 = getelementptr inbounds %struct.x264_quant_function_t, %struct.x264_quant_function_t* %pf, i32 0, i32 18
  store i32 (i16*)* @coeff_last8, i32 (i16*)** %coeff_last8, align 4, !tbaa !23
  %coeff_last = getelementptr inbounds %struct.x264_quant_function_t, %struct.x264_quant_function_t* %pf, i32 0, i32 16
  %arrayidx = getelementptr inbounds %struct.x264_quant_function_t, %struct.x264_quant_function_t* %pf, i32 0, i32 16, i32 1
  store i32 (i16*)* @coeff_last15, i32 (i16*)** %arrayidx, align 4, !tbaa !24
  %arrayidx2 = getelementptr inbounds %struct.x264_quant_function_t, %struct.x264_quant_function_t* %pf, i32 0, i32 16, i32 2
  store i32 (i16*)* @coeff_last16, i32 (i16*)** %arrayidx2, align 4, !tbaa !24
  %arrayidx4 = getelementptr inbounds %struct.x264_quant_function_t, %struct.x264_quant_function_t* %pf, i32 0, i32 16, i32 5
  store i32 (i16*)* @coeff_last64, i32 (i16*)** %arrayidx4, align 4, !tbaa !24
  %coeff_level_run4 = getelementptr inbounds %struct.x264_quant_function_t, %struct.x264_quant_function_t* %pf, i32 0, i32 20
  store i32 (i16*, %struct.x264_run_level_t*)* @coeff_level_run4, i32 (i16*, %struct.x264_run_level_t*)** %coeff_level_run4, align 4, !tbaa !25
  %coeff_level_run8 = getelementptr inbounds %struct.x264_quant_function_t, %struct.x264_quant_function_t* %pf, i32 0, i32 21
  store i32 (i16*, %struct.x264_run_level_t*)* @coeff_level_run8, i32 (i16*, %struct.x264_run_level_t*)** %coeff_level_run8, align 4, !tbaa !26
  %coeff_level_run = getelementptr inbounds %struct.x264_quant_function_t, %struct.x264_quant_function_t* %pf, i32 0, i32 19
  %arrayidx5 = getelementptr inbounds %struct.x264_quant_function_t, %struct.x264_quant_function_t* %pf, i32 0, i32 19, i32 1
  store i32 (i16*, %struct.x264_run_level_t*)* @coeff_level_run15, i32 (i16*, %struct.x264_run_level_t*)** %arrayidx5, align 4, !tbaa !24
  %arrayidx7 = getelementptr inbounds %struct.x264_quant_function_t, %struct.x264_quant_function_t* %pf, i32 0, i32 19, i32 2
  store i32 (i16*, %struct.x264_run_level_t*)* @coeff_level_run16, i32 (i16*, %struct.x264_run_level_t*)** %arrayidx7, align 4, !tbaa !24
  %arrayidx12 = getelementptr inbounds %struct.x264_quant_function_t, %struct.x264_quant_function_t* %pf, i32 0, i32 16, i32 12
  %0 = bitcast i32 (i16*)** %arrayidx12 to i32*
  store i32 ptrtoint (i32 (i16*)* @coeff_last16 to i32), i32* %0, align 4, !tbaa !24
  %arrayidx14 = getelementptr inbounds %struct.x264_quant_function_t, %struct.x264_quant_function_t* %pf, i32 0, i32 16, i32 8
  %1 = bitcast i32 (i16*)** %arrayidx14 to i32*
  store i32 ptrtoint (i32 (i16*)* @coeff_last16 to i32), i32* %1, align 4, !tbaa !24
  %arrayidx16 = getelementptr inbounds %struct.x264_quant_function_t, %struct.x264_quant_function_t* %pf, i32 0, i32 16, i32 10
  %2 = bitcast i32 (i16*)** %arrayidx16 to i32*
  store i32 ptrtoint (i32 (i16*)* @coeff_last16 to i32), i32* %2, align 4, !tbaa !24
  %arrayidx18 = getelementptr inbounds %struct.x264_quant_function_t, %struct.x264_quant_function_t* %pf, i32 0, i32 16, i32 6
  %3 = bitcast i32 (i16*)** %arrayidx18 to i32*
  store i32 ptrtoint (i32 (i16*)* @coeff_last16 to i32), i32* %3, align 4, !tbaa !24
  %4 = bitcast [14 x i32 (i16*)*]* %coeff_last to i32*
  store i32 ptrtoint (i32 (i16*)* @coeff_last16 to i32), i32* %4, align 4, !tbaa !24
  %arrayidx24 = getelementptr inbounds %struct.x264_quant_function_t, %struct.x264_quant_function_t* %pf, i32 0, i32 16, i32 11
  %5 = bitcast i32 (i16*)** %arrayidx24 to i32*
  store i32 ptrtoint (i32 (i16*)* @coeff_last15 to i32), i32* %5, align 4, !tbaa !24
  %arrayidx26 = getelementptr inbounds %struct.x264_quant_function_t, %struct.x264_quant_function_t* %pf, i32 0, i32 16, i32 7
  %6 = bitcast i32 (i16*)** %arrayidx26 to i32*
  store i32 ptrtoint (i32 (i16*)* @coeff_last15 to i32), i32* %6, align 4, !tbaa !24
  %arrayidx28 = getelementptr inbounds %struct.x264_quant_function_t, %struct.x264_quant_function_t* %pf, i32 0, i32 16, i32 4
  %7 = bitcast i32 (i16*)** %arrayidx28 to i32*
  store i32 ptrtoint (i32 (i16*)* @coeff_last15 to i32), i32* %7, align 4, !tbaa !24
  %arrayidx32 = getelementptr inbounds %struct.x264_quant_function_t, %struct.x264_quant_function_t* %pf, i32 0, i32 16, i32 13
  %8 = bitcast i32 (i16*)** %arrayidx32 to i32*
  store i32 ptrtoint (i32 (i16*)* @coeff_last64 to i32), i32* %8, align 4, !tbaa !24
  %arrayidx34 = getelementptr inbounds %struct.x264_quant_function_t, %struct.x264_quant_function_t* %pf, i32 0, i32 16, i32 9
  %9 = bitcast i32 (i16*)** %arrayidx34 to i32*
  store i32 ptrtoint (i32 (i16*)* @coeff_last64 to i32), i32* %9, align 4, !tbaa !24
  %arrayidx38 = getelementptr inbounds %struct.x264_quant_function_t, %struct.x264_quant_function_t* %pf, i32 0, i32 19, i32 12
  %10 = bitcast i32 (i16*, %struct.x264_run_level_t*)** %arrayidx38 to i32*
  store i32 ptrtoint (i32 (i16*, %struct.x264_run_level_t*)* @coeff_level_run16 to i32), i32* %10, align 4, !tbaa !24
  %arrayidx40 = getelementptr inbounds %struct.x264_quant_function_t, %struct.x264_quant_function_t* %pf, i32 0, i32 19, i32 8
  %11 = bitcast i32 (i16*, %struct.x264_run_level_t*)** %arrayidx40 to i32*
  store i32 ptrtoint (i32 (i16*, %struct.x264_run_level_t*)* @coeff_level_run16 to i32), i32* %11, align 4, !tbaa !24
  %arrayidx42 = getelementptr inbounds %struct.x264_quant_function_t, %struct.x264_quant_function_t* %pf, i32 0, i32 19, i32 10
  %12 = bitcast i32 (i16*, %struct.x264_run_level_t*)** %arrayidx42 to i32*
  store i32 ptrtoint (i32 (i16*, %struct.x264_run_level_t*)* @coeff_level_run16 to i32), i32* %12, align 4, !tbaa !24
  %arrayidx44 = getelementptr inbounds %struct.x264_quant_function_t, %struct.x264_quant_function_t* %pf, i32 0, i32 19, i32 6
  %13 = bitcast i32 (i16*, %struct.x264_run_level_t*)** %arrayidx44 to i32*
  store i32 ptrtoint (i32 (i16*, %struct.x264_run_level_t*)* @coeff_level_run16 to i32), i32* %13, align 4, !tbaa !24
  %14 = bitcast [13 x i32 (i16*, %struct.x264_run_level_t*)*]* %coeff_level_run to i32*
  store i32 ptrtoint (i32 (i16*, %struct.x264_run_level_t*)* @coeff_level_run16 to i32), i32* %14, align 4, !tbaa !24
  %arrayidx50 = getelementptr inbounds %struct.x264_quant_function_t, %struct.x264_quant_function_t* %pf, i32 0, i32 19, i32 11
  %15 = bitcast i32 (i16*, %struct.x264_run_level_t*)** %arrayidx50 to i32*
  store i32 ptrtoint (i32 (i16*, %struct.x264_run_level_t*)* @coeff_level_run15 to i32), i32* %15, align 4, !tbaa !24
  %arrayidx52 = getelementptr inbounds %struct.x264_quant_function_t, %struct.x264_quant_function_t* %pf, i32 0, i32 19, i32 7
  %16 = bitcast i32 (i16*, %struct.x264_run_level_t*)** %arrayidx52 to i32*
  store i32 ptrtoint (i32 (i16*, %struct.x264_run_level_t*)* @coeff_level_run15 to i32), i32* %16, align 4, !tbaa !24
  %arrayidx54 = getelementptr inbounds %struct.x264_quant_function_t, %struct.x264_quant_function_t* %pf, i32 0, i32 19, i32 4
  %17 = bitcast i32 (i16*, %struct.x264_run_level_t*)** %arrayidx54 to i32*
  store i32 ptrtoint (i32 (i16*, %struct.x264_run_level_t*)* @coeff_level_run15 to i32), i32* %17, align 4, !tbaa !24
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal i32 @quant_8x8(i16* nocapture %dct, i16* nocapture readonly %mf, i16* nocapture readonly %bias) #0 {
entry:
  br label %for.body

for.cond.cleanup:                                 ; preds = %if.end
  %tobool = icmp ne i32 %or, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext

for.body:                                         ; preds = %if.end, %entry
  %i.043 = phi i32 [ 0, %entry ], [ %inc, %if.end ]
  %nz.042 = phi i32 [ 0, %entry ], [ %or, %if.end ]
  %arrayidx = getelementptr inbounds i16, i16* %dct, i32 %i.043
  %0 = load i16, i16* %arrayidx, align 2, !tbaa !27
  %conv = sext i16 %0 to i32
  %cmp1 = icmp sgt i16 %0, 0
  %arrayidx3 = getelementptr inbounds i16, i16* %bias, i32 %i.043
  %1 = load i16, i16* %arrayidx3, align 2, !tbaa !27
  %conv4 = zext i16 %1 to i32
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %add = add nsw i32 %conv4, %conv
  %arrayidx7 = getelementptr inbounds i16, i16* %mf, i32 %i.043
  %2 = load i16, i16* %arrayidx7, align 2, !tbaa !27
  %conv8 = zext i16 %2 to i32
  %mul = mul nsw i32 %add, %conv8
  %3 = lshr i32 %mul, 16
  %conv9 = trunc i32 %3 to i16
  br label %if.end

if.else:                                          ; preds = %for.body
  %sub = sub nsw i32 %conv4, %conv
  %arrayidx15 = getelementptr inbounds i16, i16* %mf, i32 %i.043
  %4 = load i16, i16* %arrayidx15, align 2, !tbaa !27
  %conv16 = zext i16 %4 to i32
  %mul17 = mul nsw i32 %sub, %conv16
  %5 = lshr i32 %mul17, 16
  %6 = trunc i32 %5 to i16
  %conv20 = sub i16 0, %6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i16 [ %conv20, %if.else ], [ %conv9, %if.then ]
  store i16 %storemerge, i16* %arrayidx, align 2, !tbaa !27
  %conv23 = sext i16 %storemerge to i32
  %or = or i32 %nz.042, %conv23
  %inc = add nuw nsw i32 %i.043, 1
  %exitcond = icmp eq i32 %inc, 64
  br i1 %exitcond, label %for.cond.cleanup, label %for.body
}

; Function Attrs: nofree norecurse nounwind
define internal i32 @quant_4x4(i16* nocapture %dct, i16* nocapture readonly %mf, i16* nocapture readonly %bias) #0 {
entry:
  br label %for.body

for.cond.cleanup:                                 ; preds = %if.end
  %tobool = icmp ne i32 %or, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext

for.body:                                         ; preds = %if.end, %entry
  %i.043 = phi i32 [ 0, %entry ], [ %inc, %if.end ]
  %nz.042 = phi i32 [ 0, %entry ], [ %or, %if.end ]
  %arrayidx = getelementptr inbounds i16, i16* %dct, i32 %i.043
  %0 = load i16, i16* %arrayidx, align 2, !tbaa !27
  %conv = sext i16 %0 to i32
  %cmp1 = icmp sgt i16 %0, 0
  %arrayidx3 = getelementptr inbounds i16, i16* %bias, i32 %i.043
  %1 = load i16, i16* %arrayidx3, align 2, !tbaa !27
  %conv4 = zext i16 %1 to i32
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %add = add nsw i32 %conv4, %conv
  %arrayidx7 = getelementptr inbounds i16, i16* %mf, i32 %i.043
  %2 = load i16, i16* %arrayidx7, align 2, !tbaa !27
  %conv8 = zext i16 %2 to i32
  %mul = mul nsw i32 %add, %conv8
  %3 = lshr i32 %mul, 16
  %conv9 = trunc i32 %3 to i16
  br label %if.end

if.else:                                          ; preds = %for.body
  %sub = sub nsw i32 %conv4, %conv
  %arrayidx15 = getelementptr inbounds i16, i16* %mf, i32 %i.043
  %4 = load i16, i16* %arrayidx15, align 2, !tbaa !27
  %conv16 = zext i16 %4 to i32
  %mul17 = mul nsw i32 %sub, %conv16
  %5 = lshr i32 %mul17, 16
  %6 = trunc i32 %5 to i16
  %conv20 = sub i16 0, %6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i16 [ %conv20, %if.else ], [ %conv9, %if.then ]
  store i16 %storemerge, i16* %arrayidx, align 2, !tbaa !27
  %conv23 = sext i16 %storemerge to i32
  %or = or i32 %nz.042, %conv23
  %inc = add nuw nsw i32 %i.043, 1
  %exitcond = icmp eq i32 %inc, 16
  br i1 %exitcond, label %for.cond.cleanup, label %for.body
}

; Function Attrs: nofree norecurse nounwind
define internal i32 @quant_4x4x4([16 x i16]* nocapture %dct, i16* nocapture readonly %mf, i16* nocapture readonly %bias) #0 {
entry:
  br label %for.body4

for.cond.cleanup3:                                ; preds = %if.end
  %tobool = icmp ne i32 %or, 0
  %lnot.ext = zext i1 %tobool to i32
  br label %for.body4.1

for.body4:                                        ; preds = %if.end, %entry
  %i.067 = phi i32 [ 0, %entry ], [ %inc, %if.end ]
  %nz.066 = phi i32 [ 0, %entry ], [ %or, %if.end ]
  %arrayidx5 = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 0, i32 %i.067
  %0 = load i16, i16* %arrayidx5, align 2, !tbaa !27
  %conv = sext i16 %0 to i32
  %cmp6 = icmp sgt i16 %0, 0
  %arrayidx8 = getelementptr inbounds i16, i16* %bias, i32 %i.067
  %1 = load i16, i16* %arrayidx8, align 2, !tbaa !27
  %conv9 = zext i16 %1 to i32
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %for.body4
  %add = add nsw i32 %conv9, %conv
  %arrayidx13 = getelementptr inbounds i16, i16* %mf, i32 %i.067
  %2 = load i16, i16* %arrayidx13, align 2, !tbaa !27
  %conv14 = zext i16 %2 to i32
  %mul = mul nsw i32 %add, %conv14
  %3 = lshr i32 %mul, 16
  %conv15 = trunc i32 %3 to i16
  br label %if.end

if.else:                                          ; preds = %for.body4
  %sub = sub nsw i32 %conv9, %conv
  %arrayidx23 = getelementptr inbounds i16, i16* %mf, i32 %i.067
  %4 = load i16, i16* %arrayidx23, align 2, !tbaa !27
  %conv24 = zext i16 %4 to i32
  %mul25 = mul nsw i32 %sub, %conv24
  %5 = lshr i32 %mul25, 16
  %6 = trunc i32 %5 to i16
  %conv28 = sub i16 0, %6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i16 [ %conv28, %if.else ], [ %conv15, %if.then ]
  store i16 %storemerge, i16* %arrayidx5, align 2, !tbaa !27
  %conv33 = sext i16 %storemerge to i32
  %or = or i32 %nz.066, %conv33
  %inc = add nuw nsw i32 %i.067, 1
  %exitcond = icmp eq i32 %inc, 16
  br i1 %exitcond, label %for.cond.cleanup3, label %for.body4

for.body4.1:                                      ; preds = %if.end.1, %for.cond.cleanup3
  %i.067.1 = phi i32 [ 0, %for.cond.cleanup3 ], [ %inc.1, %if.end.1 ]
  %nz.066.1 = phi i32 [ 0, %for.cond.cleanup3 ], [ %or.1, %if.end.1 ]
  %arrayidx5.1 = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 1, i32 %i.067.1
  %7 = load i16, i16* %arrayidx5.1, align 2, !tbaa !27
  %conv.1 = sext i16 %7 to i32
  %cmp6.1 = icmp sgt i16 %7, 0
  %arrayidx8.1 = getelementptr inbounds i16, i16* %bias, i32 %i.067.1
  %8 = load i16, i16* %arrayidx8.1, align 2, !tbaa !27
  %conv9.1 = zext i16 %8 to i32
  br i1 %cmp6.1, label %if.then.1, label %if.else.1

if.else.1:                                        ; preds = %for.body4.1
  %sub.1 = sub nsw i32 %conv9.1, %conv.1
  %arrayidx23.1 = getelementptr inbounds i16, i16* %mf, i32 %i.067.1
  %9 = load i16, i16* %arrayidx23.1, align 2, !tbaa !27
  %conv24.1 = zext i16 %9 to i32
  %mul25.1 = mul nsw i32 %sub.1, %conv24.1
  %10 = lshr i32 %mul25.1, 16
  %11 = trunc i32 %10 to i16
  %conv28.1 = sub i16 0, %11
  br label %if.end.1

if.then.1:                                        ; preds = %for.body4.1
  %add.1 = add nsw i32 %conv9.1, %conv.1
  %arrayidx13.1 = getelementptr inbounds i16, i16* %mf, i32 %i.067.1
  %12 = load i16, i16* %arrayidx13.1, align 2, !tbaa !27
  %conv14.1 = zext i16 %12 to i32
  %mul.1 = mul nsw i32 %add.1, %conv14.1
  %13 = lshr i32 %mul.1, 16
  %conv15.1 = trunc i32 %13 to i16
  br label %if.end.1

if.end.1:                                         ; preds = %if.then.1, %if.else.1
  %storemerge.1 = phi i16 [ %conv28.1, %if.else.1 ], [ %conv15.1, %if.then.1 ]
  store i16 %storemerge.1, i16* %arrayidx5.1, align 2, !tbaa !27
  %conv33.1 = sext i16 %storemerge.1 to i32
  %or.1 = or i32 %nz.066.1, %conv33.1
  %inc.1 = add nuw nsw i32 %i.067.1, 1
  %exitcond.1 = icmp eq i32 %inc.1, 16
  br i1 %exitcond.1, label %for.cond.cleanup3.1, label %for.body4.1

for.cond.cleanup3.1:                              ; preds = %if.end.1
  %tobool.1 = icmp eq i32 %or.1, 0
  %shl.1 = select i1 %tobool.1, i32 0, i32 2
  %or35.1 = or i32 %shl.1, %lnot.ext
  br label %for.body4.2

for.body4.2:                                      ; preds = %if.end.2, %for.cond.cleanup3.1
  %i.067.2 = phi i32 [ 0, %for.cond.cleanup3.1 ], [ %inc.2, %if.end.2 ]
  %nz.066.2 = phi i32 [ 0, %for.cond.cleanup3.1 ], [ %or.2, %if.end.2 ]
  %arrayidx5.2 = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 2, i32 %i.067.2
  %14 = load i16, i16* %arrayidx5.2, align 2, !tbaa !27
  %conv.2 = sext i16 %14 to i32
  %cmp6.2 = icmp sgt i16 %14, 0
  %arrayidx8.2 = getelementptr inbounds i16, i16* %bias, i32 %i.067.2
  %15 = load i16, i16* %arrayidx8.2, align 2, !tbaa !27
  %conv9.2 = zext i16 %15 to i32
  br i1 %cmp6.2, label %if.then.2, label %if.else.2

if.else.2:                                        ; preds = %for.body4.2
  %sub.2 = sub nsw i32 %conv9.2, %conv.2
  %arrayidx23.2 = getelementptr inbounds i16, i16* %mf, i32 %i.067.2
  %16 = load i16, i16* %arrayidx23.2, align 2, !tbaa !27
  %conv24.2 = zext i16 %16 to i32
  %mul25.2 = mul nsw i32 %sub.2, %conv24.2
  %17 = lshr i32 %mul25.2, 16
  %18 = trunc i32 %17 to i16
  %conv28.2 = sub i16 0, %18
  br label %if.end.2

if.then.2:                                        ; preds = %for.body4.2
  %add.2 = add nsw i32 %conv9.2, %conv.2
  %arrayidx13.2 = getelementptr inbounds i16, i16* %mf, i32 %i.067.2
  %19 = load i16, i16* %arrayidx13.2, align 2, !tbaa !27
  %conv14.2 = zext i16 %19 to i32
  %mul.2 = mul nsw i32 %add.2, %conv14.2
  %20 = lshr i32 %mul.2, 16
  %conv15.2 = trunc i32 %20 to i16
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.2, %if.else.2
  %storemerge.2 = phi i16 [ %conv28.2, %if.else.2 ], [ %conv15.2, %if.then.2 ]
  store i16 %storemerge.2, i16* %arrayidx5.2, align 2, !tbaa !27
  %conv33.2 = sext i16 %storemerge.2 to i32
  %or.2 = or i32 %nz.066.2, %conv33.2
  %inc.2 = add nuw nsw i32 %i.067.2, 1
  %exitcond.2 = icmp eq i32 %inc.2, 16
  br i1 %exitcond.2, label %for.cond.cleanup3.2, label %for.body4.2

for.cond.cleanup3.2:                              ; preds = %if.end.2
  %tobool.2 = icmp eq i32 %or.2, 0
  %shl.2 = select i1 %tobool.2, i32 0, i32 4
  %or35.2 = or i32 %shl.2, %or35.1
  br label %for.body4.3

for.body4.3:                                      ; preds = %if.end.3, %for.cond.cleanup3.2
  %i.067.3 = phi i32 [ 0, %for.cond.cleanup3.2 ], [ %inc.3, %if.end.3 ]
  %nz.066.3 = phi i32 [ 0, %for.cond.cleanup3.2 ], [ %or.3, %if.end.3 ]
  %arrayidx5.3 = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 3, i32 %i.067.3
  %21 = load i16, i16* %arrayidx5.3, align 2, !tbaa !27
  %conv.3 = sext i16 %21 to i32
  %cmp6.3 = icmp sgt i16 %21, 0
  %arrayidx8.3 = getelementptr inbounds i16, i16* %bias, i32 %i.067.3
  %22 = load i16, i16* %arrayidx8.3, align 2, !tbaa !27
  %conv9.3 = zext i16 %22 to i32
  br i1 %cmp6.3, label %if.then.3, label %if.else.3

if.else.3:                                        ; preds = %for.body4.3
  %sub.3 = sub nsw i32 %conv9.3, %conv.3
  %arrayidx23.3 = getelementptr inbounds i16, i16* %mf, i32 %i.067.3
  %23 = load i16, i16* %arrayidx23.3, align 2, !tbaa !27
  %conv24.3 = zext i16 %23 to i32
  %mul25.3 = mul nsw i32 %sub.3, %conv24.3
  %24 = lshr i32 %mul25.3, 16
  %25 = trunc i32 %24 to i16
  %conv28.3 = sub i16 0, %25
  br label %if.end.3

if.then.3:                                        ; preds = %for.body4.3
  %add.3 = add nsw i32 %conv9.3, %conv.3
  %arrayidx13.3 = getelementptr inbounds i16, i16* %mf, i32 %i.067.3
  %26 = load i16, i16* %arrayidx13.3, align 2, !tbaa !27
  %conv14.3 = zext i16 %26 to i32
  %mul.3 = mul nsw i32 %add.3, %conv14.3
  %27 = lshr i32 %mul.3, 16
  %conv15.3 = trunc i32 %27 to i16
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.3, %if.else.3
  %storemerge.3 = phi i16 [ %conv28.3, %if.else.3 ], [ %conv15.3, %if.then.3 ]
  store i16 %storemerge.3, i16* %arrayidx5.3, align 2, !tbaa !27
  %conv33.3 = sext i16 %storemerge.3 to i32
  %or.3 = or i32 %nz.066.3, %conv33.3
  %inc.3 = add nuw nsw i32 %i.067.3, 1
  %exitcond.3 = icmp eq i32 %inc.3, 16
  br i1 %exitcond.3, label %for.cond.cleanup3.3, label %for.body4.3

for.cond.cleanup3.3:                              ; preds = %if.end.3
  %tobool.3 = icmp eq i32 %or.3, 0
  %shl.3 = select i1 %tobool.3, i32 0, i32 8
  %or35.3 = or i32 %shl.3, %or35.2
  ret i32 %or35.3
}

; Function Attrs: nofree norecurse nounwind
define internal i32 @quant_4x4_dc(i16* nocapture %dct, i32 %mf, i32 %bias) #0 {
entry:
  br label %for.body

for.cond.cleanup:                                 ; preds = %if.end
  %tobool = icmp ne i32 %or, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext

for.body:                                         ; preds = %if.end, %entry
  %i.032 = phi i32 [ 0, %entry ], [ %inc, %if.end ]
  %nz.031 = phi i32 [ 0, %entry ], [ %or, %if.end ]
  %arrayidx = getelementptr inbounds i16, i16* %dct, i32 %i.032
  %0 = load i16, i16* %arrayidx, align 2, !tbaa !27
  %conv = sext i16 %0 to i32
  %cmp1 = icmp sgt i16 %0, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %add = add nsw i32 %conv, %bias
  %mul = mul nsw i32 %add, %mf
  %1 = lshr i32 %mul, 16
  %conv5 = trunc i32 %1 to i16
  br label %if.end

if.else:                                          ; preds = %for.body
  %sub = sub nsw i32 %bias, %conv
  %mul9 = mul nsw i32 %sub, %mf
  %2 = lshr i32 %mul9, 16
  %3 = trunc i32 %2 to i16
  %conv12 = sub i16 0, %3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i16 [ %conv12, %if.else ], [ %conv5, %if.then ]
  store i16 %storemerge, i16* %arrayidx, align 2, !tbaa !27
  %conv15 = sext i16 %storemerge to i32
  %or = or i32 %nz.031, %conv15
  %inc = add nuw nsw i32 %i.032, 1
  %exitcond = icmp eq i32 %inc, 16
  br i1 %exitcond, label %for.cond.cleanup, label %for.body
}

; Function Attrs: nofree norecurse nounwind
define internal i32 @quant_2x2_dc(i16* nocapture %dct, i32 %mf, i32 %bias) #0 {
entry:
  %0 = load i16, i16* %dct, align 2, !tbaa !27
  %conv = sext i16 %0 to i32
  %cmp = icmp sgt i16 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %add = add nsw i32 %conv, %bias
  %mul = mul nsw i32 %add, %mf
  %1 = lshr i32 %mul, 16
  %conv4 = trunc i32 %1 to i16
  br label %if.end

if.else:                                          ; preds = %entry
  %sub = sub nsw i32 %bias, %conv
  %mul8 = mul nsw i32 %sub, %mf
  %2 = lshr i32 %mul8, 16
  %3 = trunc i32 %2 to i16
  %conv11 = sub i16 0, %3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i16 [ %conv11, %if.else ], [ %conv4, %if.then ]
  store i16 %storemerge, i16* %dct, align 2, !tbaa !27
  %arrayidx15 = getelementptr inbounds i16, i16* %dct, i32 1
  %4 = load i16, i16* %arrayidx15, align 2, !tbaa !27
  %conv16 = sext i16 %4 to i32
  %cmp17 = icmp sgt i16 %4, 0
  br i1 %cmp17, label %if.then19, label %if.else27

if.then19:                                        ; preds = %if.end
  %add22 = add nsw i32 %conv16, %bias
  %mul23 = mul nsw i32 %add22, %mf
  %5 = lshr i32 %mul23, 16
  %conv25 = trunc i32 %5 to i16
  br label %if.end36

if.else27:                                        ; preds = %if.end
  %sub30 = sub nsw i32 %bias, %conv16
  %mul31 = mul nsw i32 %sub30, %mf
  %6 = lshr i32 %mul31, 16
  %7 = trunc i32 %6 to i16
  %conv34 = sub i16 0, %7
  br label %if.end36

if.end36:                                         ; preds = %if.else27, %if.then19
  %storemerge125 = phi i16 [ %conv34, %if.else27 ], [ %conv25, %if.then19 ]
  store i16 %storemerge125, i16* %arrayidx15, align 2, !tbaa !27
  %or39126 = or i16 %storemerge125, %storemerge
  %arrayidx40 = getelementptr inbounds i16, i16* %dct, i32 2
  %8 = load i16, i16* %arrayidx40, align 2, !tbaa !27
  %conv41 = sext i16 %8 to i32
  %cmp42 = icmp sgt i16 %8, 0
  br i1 %cmp42, label %if.then44, label %if.else52

if.then44:                                        ; preds = %if.end36
  %add47 = add nsw i32 %conv41, %bias
  %mul48 = mul nsw i32 %add47, %mf
  %9 = lshr i32 %mul48, 16
  %conv50 = trunc i32 %9 to i16
  br label %if.end61

if.else52:                                        ; preds = %if.end36
  %sub55 = sub nsw i32 %bias, %conv41
  %mul56 = mul nsw i32 %sub55, %mf
  %10 = lshr i32 %mul56, 16
  %11 = trunc i32 %10 to i16
  %conv59 = sub i16 0, %11
  br label %if.end61

if.end61:                                         ; preds = %if.else52, %if.then44
  %storemerge127 = phi i16 [ %conv59, %if.else52 ], [ %conv50, %if.then44 ]
  store i16 %storemerge127, i16* %arrayidx40, align 2, !tbaa !27
  %or64128 = or i16 %or39126, %storemerge127
  %arrayidx65 = getelementptr inbounds i16, i16* %dct, i32 3
  %12 = load i16, i16* %arrayidx65, align 2, !tbaa !27
  %conv66 = sext i16 %12 to i32
  %cmp67 = icmp sgt i16 %12, 0
  br i1 %cmp67, label %if.then69, label %if.else77

if.then69:                                        ; preds = %if.end61
  %add72 = add nsw i32 %conv66, %bias
  %mul73 = mul nsw i32 %add72, %mf
  %13 = lshr i32 %mul73, 16
  %conv75 = trunc i32 %13 to i16
  br label %if.end86

if.else77:                                        ; preds = %if.end61
  %sub80 = sub nsw i32 %bias, %conv66
  %mul81 = mul nsw i32 %sub80, %mf
  %14 = lshr i32 %mul81, 16
  %15 = trunc i32 %14 to i16
  %conv84 = sub i16 0, %15
  br label %if.end86

if.end86:                                         ; preds = %if.else77, %if.then69
  %storemerge129 = phi i16 [ %conv84, %if.else77 ], [ %conv75, %if.then69 ]
  store i16 %storemerge129, i16* %arrayidx65, align 2, !tbaa !27
  %or89130 = or i16 %or64128, %storemerge129
  %tobool = icmp ne i16 %or89130, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: nofree norecurse nounwind
define internal void @dequant_4x4(i16* nocapture %dct, [16 x i32]* nocapture readonly %dequant_mf, i32 %i_qp) #0 {
entry:
  %div = sdiv i32 %i_qp, 6
  %0 = mul i32 %div, 6
  %rem.decomposed = sub i32 %i_qp, %0
  %sub = add nsw i32 %div, -4
  %cmp = icmp sgt i32 %i_qp, 23
  br i1 %cmp, label %for.body.preheader, label %if.else

for.body.preheader:                               ; preds = %entry
  %1 = load i16, i16* %dct, align 2, !tbaa !27
  %conv = sext i16 %1 to i32
  %arrayidx3 = getelementptr inbounds [16 x i32], [16 x i32]* %dequant_mf, i32 %rem.decomposed, i32 0
  %2 = load i32, i32* %arrayidx3, align 4, !tbaa !29
  %mul = mul nsw i32 %2, %conv
  %mul4 = shl i32 %mul, %sub
  %conv5 = trunc i32 %mul4 to i16
  store i16 %conv5, i16* %dct, align 2, !tbaa !27
  %arrayidx.1 = getelementptr inbounds i16, i16* %dct, i32 1
  %3 = load i16, i16* %arrayidx.1, align 2, !tbaa !27
  %conv.1 = sext i16 %3 to i32
  %arrayidx3.1 = getelementptr inbounds [16 x i32], [16 x i32]* %dequant_mf, i32 %rem.decomposed, i32 1
  %4 = load i32, i32* %arrayidx3.1, align 4, !tbaa !29
  %mul.1 = mul nsw i32 %4, %conv.1
  %mul4.1 = shl i32 %mul.1, %sub
  %conv5.1 = trunc i32 %mul4.1 to i16
  store i16 %conv5.1, i16* %arrayidx.1, align 2, !tbaa !27
  %arrayidx.2 = getelementptr inbounds i16, i16* %dct, i32 2
  %5 = load i16, i16* %arrayidx.2, align 2, !tbaa !27
  %conv.2 = sext i16 %5 to i32
  %arrayidx3.2 = getelementptr inbounds [16 x i32], [16 x i32]* %dequant_mf, i32 %rem.decomposed, i32 2
  %6 = load i32, i32* %arrayidx3.2, align 4, !tbaa !29
  %mul.2 = mul nsw i32 %6, %conv.2
  %mul4.2 = shl i32 %mul.2, %sub
  %conv5.2 = trunc i32 %mul4.2 to i16
  store i16 %conv5.2, i16* %arrayidx.2, align 2, !tbaa !27
  %arrayidx.3 = getelementptr inbounds i16, i16* %dct, i32 3
  %7 = load i16, i16* %arrayidx.3, align 2, !tbaa !27
  %conv.3 = sext i16 %7 to i32
  %arrayidx3.3 = getelementptr inbounds [16 x i32], [16 x i32]* %dequant_mf, i32 %rem.decomposed, i32 3
  %8 = load i32, i32* %arrayidx3.3, align 4, !tbaa !29
  %mul.3 = mul nsw i32 %8, %conv.3
  %mul4.3 = shl i32 %mul.3, %sub
  %conv5.3 = trunc i32 %mul4.3 to i16
  store i16 %conv5.3, i16* %arrayidx.3, align 2, !tbaa !27
  %arrayidx.4 = getelementptr inbounds i16, i16* %dct, i32 4
  %9 = load i16, i16* %arrayidx.4, align 2, !tbaa !27
  %conv.4 = sext i16 %9 to i32
  %arrayidx3.4 = getelementptr inbounds [16 x i32], [16 x i32]* %dequant_mf, i32 %rem.decomposed, i32 4
  %10 = load i32, i32* %arrayidx3.4, align 4, !tbaa !29
  %mul.4 = mul nsw i32 %10, %conv.4
  %mul4.4 = shl i32 %mul.4, %sub
  %conv5.4 = trunc i32 %mul4.4 to i16
  store i16 %conv5.4, i16* %arrayidx.4, align 2, !tbaa !27
  %arrayidx.5 = getelementptr inbounds i16, i16* %dct, i32 5
  %11 = load i16, i16* %arrayidx.5, align 2, !tbaa !27
  %conv.5 = sext i16 %11 to i32
  %arrayidx3.5 = getelementptr inbounds [16 x i32], [16 x i32]* %dequant_mf, i32 %rem.decomposed, i32 5
  %12 = load i32, i32* %arrayidx3.5, align 4, !tbaa !29
  %mul.5 = mul nsw i32 %12, %conv.5
  %mul4.5 = shl i32 %mul.5, %sub
  %conv5.5 = trunc i32 %mul4.5 to i16
  store i16 %conv5.5, i16* %arrayidx.5, align 2, !tbaa !27
  %arrayidx.6 = getelementptr inbounds i16, i16* %dct, i32 6
  %13 = load i16, i16* %arrayidx.6, align 2, !tbaa !27
  %conv.6 = sext i16 %13 to i32
  %arrayidx3.6 = getelementptr inbounds [16 x i32], [16 x i32]* %dequant_mf, i32 %rem.decomposed, i32 6
  %14 = load i32, i32* %arrayidx3.6, align 4, !tbaa !29
  %mul.6 = mul nsw i32 %14, %conv.6
  %mul4.6 = shl i32 %mul.6, %sub
  %conv5.6 = trunc i32 %mul4.6 to i16
  store i16 %conv5.6, i16* %arrayidx.6, align 2, !tbaa !27
  %arrayidx.7 = getelementptr inbounds i16, i16* %dct, i32 7
  %15 = load i16, i16* %arrayidx.7, align 2, !tbaa !27
  %conv.7 = sext i16 %15 to i32
  %arrayidx3.7 = getelementptr inbounds [16 x i32], [16 x i32]* %dequant_mf, i32 %rem.decomposed, i32 7
  %16 = load i32, i32* %arrayidx3.7, align 4, !tbaa !29
  %mul.7 = mul nsw i32 %16, %conv.7
  %mul4.7 = shl i32 %mul.7, %sub
  %conv5.7 = trunc i32 %mul4.7 to i16
  store i16 %conv5.7, i16* %arrayidx.7, align 2, !tbaa !27
  %arrayidx.8 = getelementptr inbounds i16, i16* %dct, i32 8
  %17 = load i16, i16* %arrayidx.8, align 2, !tbaa !27
  %conv.8 = sext i16 %17 to i32
  %arrayidx3.8 = getelementptr inbounds [16 x i32], [16 x i32]* %dequant_mf, i32 %rem.decomposed, i32 8
  %18 = load i32, i32* %arrayidx3.8, align 4, !tbaa !29
  %mul.8 = mul nsw i32 %18, %conv.8
  %mul4.8 = shl i32 %mul.8, %sub
  %conv5.8 = trunc i32 %mul4.8 to i16
  store i16 %conv5.8, i16* %arrayidx.8, align 2, !tbaa !27
  %arrayidx.9 = getelementptr inbounds i16, i16* %dct, i32 9
  %19 = load i16, i16* %arrayidx.9, align 2, !tbaa !27
  %conv.9 = sext i16 %19 to i32
  %arrayidx3.9 = getelementptr inbounds [16 x i32], [16 x i32]* %dequant_mf, i32 %rem.decomposed, i32 9
  %20 = load i32, i32* %arrayidx3.9, align 4, !tbaa !29
  %mul.9 = mul nsw i32 %20, %conv.9
  %mul4.9 = shl i32 %mul.9, %sub
  %conv5.9 = trunc i32 %mul4.9 to i16
  store i16 %conv5.9, i16* %arrayidx.9, align 2, !tbaa !27
  %arrayidx.10 = getelementptr inbounds i16, i16* %dct, i32 10
  %21 = load i16, i16* %arrayidx.10, align 2, !tbaa !27
  %conv.10 = sext i16 %21 to i32
  %arrayidx3.10 = getelementptr inbounds [16 x i32], [16 x i32]* %dequant_mf, i32 %rem.decomposed, i32 10
  %22 = load i32, i32* %arrayidx3.10, align 4, !tbaa !29
  %mul.10 = mul nsw i32 %22, %conv.10
  %mul4.10 = shl i32 %mul.10, %sub
  %conv5.10 = trunc i32 %mul4.10 to i16
  store i16 %conv5.10, i16* %arrayidx.10, align 2, !tbaa !27
  %arrayidx.11 = getelementptr inbounds i16, i16* %dct, i32 11
  %23 = load i16, i16* %arrayidx.11, align 2, !tbaa !27
  %conv.11 = sext i16 %23 to i32
  %arrayidx3.11 = getelementptr inbounds [16 x i32], [16 x i32]* %dequant_mf, i32 %rem.decomposed, i32 11
  %24 = load i32, i32* %arrayidx3.11, align 4, !tbaa !29
  %mul.11 = mul nsw i32 %24, %conv.11
  %mul4.11 = shl i32 %mul.11, %sub
  %conv5.11 = trunc i32 %mul4.11 to i16
  store i16 %conv5.11, i16* %arrayidx.11, align 2, !tbaa !27
  %arrayidx.12 = getelementptr inbounds i16, i16* %dct, i32 12
  %25 = load i16, i16* %arrayidx.12, align 2, !tbaa !27
  %conv.12 = sext i16 %25 to i32
  %arrayidx3.12 = getelementptr inbounds [16 x i32], [16 x i32]* %dequant_mf, i32 %rem.decomposed, i32 12
  %26 = load i32, i32* %arrayidx3.12, align 4, !tbaa !29
  %mul.12 = mul nsw i32 %26, %conv.12
  %mul4.12 = shl i32 %mul.12, %sub
  %conv5.12 = trunc i32 %mul4.12 to i16
  store i16 %conv5.12, i16* %arrayidx.12, align 2, !tbaa !27
  %arrayidx.13 = getelementptr inbounds i16, i16* %dct, i32 13
  %27 = load i16, i16* %arrayidx.13, align 2, !tbaa !27
  %conv.13 = sext i16 %27 to i32
  %arrayidx3.13 = getelementptr inbounds [16 x i32], [16 x i32]* %dequant_mf, i32 %rem.decomposed, i32 13
  %28 = load i32, i32* %arrayidx3.13, align 4, !tbaa !29
  %mul.13 = mul nsw i32 %28, %conv.13
  %mul4.13 = shl i32 %mul.13, %sub
  %conv5.13 = trunc i32 %mul4.13 to i16
  store i16 %conv5.13, i16* %arrayidx.13, align 2, !tbaa !27
  %arrayidx.14 = getelementptr inbounds i16, i16* %dct, i32 14
  %29 = load i16, i16* %arrayidx.14, align 2, !tbaa !27
  %conv.14 = sext i16 %29 to i32
  %arrayidx3.14 = getelementptr inbounds [16 x i32], [16 x i32]* %dequant_mf, i32 %rem.decomposed, i32 14
  %30 = load i32, i32* %arrayidx3.14, align 4, !tbaa !29
  %mul.14 = mul nsw i32 %30, %conv.14
  %mul4.14 = shl i32 %mul.14, %sub
  %conv5.14 = trunc i32 %mul4.14 to i16
  store i16 %conv5.14, i16* %arrayidx.14, align 2, !tbaa !27
  %arrayidx.15 = getelementptr inbounds i16, i16* %dct, i32 15
  %31 = load i16, i16* %arrayidx.15, align 2, !tbaa !27
  %conv.15 = sext i16 %31 to i32
  %arrayidx3.15 = getelementptr inbounds [16 x i32], [16 x i32]* %dequant_mf, i32 %rem.decomposed, i32 15
  %32 = load i32, i32* %arrayidx3.15, align 4, !tbaa !29
  %mul.15 = mul nsw i32 %32, %conv.15
  %mul4.15 = shl i32 %mul.15, %sub
  br label %if.end

if.else:                                          ; preds = %entry
  %sub7 = sub nsw i32 4, %div
  %sub8 = sub nsw i32 3, %div
  %shl9 = shl nuw i32 1, %sub8
  %33 = load i16, i16* %dct, align 2, !tbaa !27
  %conv17 = sext i16 %33 to i32
  %arrayidx19 = getelementptr inbounds [16 x i32], [16 x i32]* %dequant_mf, i32 %rem.decomposed, i32 0
  %34 = load i32, i32* %arrayidx19, align 4, !tbaa !29
  %mul20 = mul nsw i32 %34, %conv17
  %add = add nsw i32 %mul20, %shl9
  %shr = ashr i32 %add, %sub7
  %conv22 = trunc i32 %shr to i16
  store i16 %conv22, i16* %dct, align 2, !tbaa !27
  %arrayidx16.1 = getelementptr inbounds i16, i16* %dct, i32 1
  %35 = load i16, i16* %arrayidx16.1, align 2, !tbaa !27
  %conv17.1 = sext i16 %35 to i32
  %arrayidx19.1 = getelementptr inbounds [16 x i32], [16 x i32]* %dequant_mf, i32 %rem.decomposed, i32 1
  %36 = load i32, i32* %arrayidx19.1, align 4, !tbaa !29
  %mul20.1 = mul nsw i32 %36, %conv17.1
  %add.1 = add nsw i32 %mul20.1, %shl9
  %shr.1 = ashr i32 %add.1, %sub7
  %conv22.1 = trunc i32 %shr.1 to i16
  store i16 %conv22.1, i16* %arrayidx16.1, align 2, !tbaa !27
  %arrayidx16.2 = getelementptr inbounds i16, i16* %dct, i32 2
  %37 = load i16, i16* %arrayidx16.2, align 2, !tbaa !27
  %conv17.2 = sext i16 %37 to i32
  %arrayidx19.2 = getelementptr inbounds [16 x i32], [16 x i32]* %dequant_mf, i32 %rem.decomposed, i32 2
  %38 = load i32, i32* %arrayidx19.2, align 4, !tbaa !29
  %mul20.2 = mul nsw i32 %38, %conv17.2
  %add.2 = add nsw i32 %mul20.2, %shl9
  %shr.2 = ashr i32 %add.2, %sub7
  %conv22.2 = trunc i32 %shr.2 to i16
  store i16 %conv22.2, i16* %arrayidx16.2, align 2, !tbaa !27
  %arrayidx16.3 = getelementptr inbounds i16, i16* %dct, i32 3
  %39 = load i16, i16* %arrayidx16.3, align 2, !tbaa !27
  %conv17.3 = sext i16 %39 to i32
  %arrayidx19.3 = getelementptr inbounds [16 x i32], [16 x i32]* %dequant_mf, i32 %rem.decomposed, i32 3
  %40 = load i32, i32* %arrayidx19.3, align 4, !tbaa !29
  %mul20.3 = mul nsw i32 %40, %conv17.3
  %add.3 = add nsw i32 %mul20.3, %shl9
  %shr.3 = ashr i32 %add.3, %sub7
  %conv22.3 = trunc i32 %shr.3 to i16
  store i16 %conv22.3, i16* %arrayidx16.3, align 2, !tbaa !27
  %arrayidx16.4 = getelementptr inbounds i16, i16* %dct, i32 4
  %41 = load i16, i16* %arrayidx16.4, align 2, !tbaa !27
  %conv17.4 = sext i16 %41 to i32
  %arrayidx19.4 = getelementptr inbounds [16 x i32], [16 x i32]* %dequant_mf, i32 %rem.decomposed, i32 4
  %42 = load i32, i32* %arrayidx19.4, align 4, !tbaa !29
  %mul20.4 = mul nsw i32 %42, %conv17.4
  %add.4 = add nsw i32 %mul20.4, %shl9
  %shr.4 = ashr i32 %add.4, %sub7
  %conv22.4 = trunc i32 %shr.4 to i16
  store i16 %conv22.4, i16* %arrayidx16.4, align 2, !tbaa !27
  %arrayidx16.5 = getelementptr inbounds i16, i16* %dct, i32 5
  %43 = load i16, i16* %arrayidx16.5, align 2, !tbaa !27
  %conv17.5 = sext i16 %43 to i32
  %arrayidx19.5 = getelementptr inbounds [16 x i32], [16 x i32]* %dequant_mf, i32 %rem.decomposed, i32 5
  %44 = load i32, i32* %arrayidx19.5, align 4, !tbaa !29
  %mul20.5 = mul nsw i32 %44, %conv17.5
  %add.5 = add nsw i32 %mul20.5, %shl9
  %shr.5 = ashr i32 %add.5, %sub7
  %conv22.5 = trunc i32 %shr.5 to i16
  store i16 %conv22.5, i16* %arrayidx16.5, align 2, !tbaa !27
  %arrayidx16.6 = getelementptr inbounds i16, i16* %dct, i32 6
  %45 = load i16, i16* %arrayidx16.6, align 2, !tbaa !27
  %conv17.6 = sext i16 %45 to i32
  %arrayidx19.6 = getelementptr inbounds [16 x i32], [16 x i32]* %dequant_mf, i32 %rem.decomposed, i32 6
  %46 = load i32, i32* %arrayidx19.6, align 4, !tbaa !29
  %mul20.6 = mul nsw i32 %46, %conv17.6
  %add.6 = add nsw i32 %mul20.6, %shl9
  %shr.6 = ashr i32 %add.6, %sub7
  %conv22.6 = trunc i32 %shr.6 to i16
  store i16 %conv22.6, i16* %arrayidx16.6, align 2, !tbaa !27
  %arrayidx16.7 = getelementptr inbounds i16, i16* %dct, i32 7
  %47 = load i16, i16* %arrayidx16.7, align 2, !tbaa !27
  %conv17.7 = sext i16 %47 to i32
  %arrayidx19.7 = getelementptr inbounds [16 x i32], [16 x i32]* %dequant_mf, i32 %rem.decomposed, i32 7
  %48 = load i32, i32* %arrayidx19.7, align 4, !tbaa !29
  %mul20.7 = mul nsw i32 %48, %conv17.7
  %add.7 = add nsw i32 %mul20.7, %shl9
  %shr.7 = ashr i32 %add.7, %sub7
  %conv22.7 = trunc i32 %shr.7 to i16
  store i16 %conv22.7, i16* %arrayidx16.7, align 2, !tbaa !27
  %arrayidx16.8 = getelementptr inbounds i16, i16* %dct, i32 8
  %49 = load i16, i16* %arrayidx16.8, align 2, !tbaa !27
  %conv17.8 = sext i16 %49 to i32
  %arrayidx19.8 = getelementptr inbounds [16 x i32], [16 x i32]* %dequant_mf, i32 %rem.decomposed, i32 8
  %50 = load i32, i32* %arrayidx19.8, align 4, !tbaa !29
  %mul20.8 = mul nsw i32 %50, %conv17.8
  %add.8 = add nsw i32 %mul20.8, %shl9
  %shr.8 = ashr i32 %add.8, %sub7
  %conv22.8 = trunc i32 %shr.8 to i16
  store i16 %conv22.8, i16* %arrayidx16.8, align 2, !tbaa !27
  %arrayidx16.9 = getelementptr inbounds i16, i16* %dct, i32 9
  %51 = load i16, i16* %arrayidx16.9, align 2, !tbaa !27
  %conv17.9 = sext i16 %51 to i32
  %arrayidx19.9 = getelementptr inbounds [16 x i32], [16 x i32]* %dequant_mf, i32 %rem.decomposed, i32 9
  %52 = load i32, i32* %arrayidx19.9, align 4, !tbaa !29
  %mul20.9 = mul nsw i32 %52, %conv17.9
  %add.9 = add nsw i32 %mul20.9, %shl9
  %shr.9 = ashr i32 %add.9, %sub7
  %conv22.9 = trunc i32 %shr.9 to i16
  store i16 %conv22.9, i16* %arrayidx16.9, align 2, !tbaa !27
  %arrayidx16.10 = getelementptr inbounds i16, i16* %dct, i32 10
  %53 = load i16, i16* %arrayidx16.10, align 2, !tbaa !27
  %conv17.10 = sext i16 %53 to i32
  %arrayidx19.10 = getelementptr inbounds [16 x i32], [16 x i32]* %dequant_mf, i32 %rem.decomposed, i32 10
  %54 = load i32, i32* %arrayidx19.10, align 4, !tbaa !29
  %mul20.10 = mul nsw i32 %54, %conv17.10
  %add.10 = add nsw i32 %mul20.10, %shl9
  %shr.10 = ashr i32 %add.10, %sub7
  %conv22.10 = trunc i32 %shr.10 to i16
  store i16 %conv22.10, i16* %arrayidx16.10, align 2, !tbaa !27
  %arrayidx16.11 = getelementptr inbounds i16, i16* %dct, i32 11
  %55 = load i16, i16* %arrayidx16.11, align 2, !tbaa !27
  %conv17.11 = sext i16 %55 to i32
  %arrayidx19.11 = getelementptr inbounds [16 x i32], [16 x i32]* %dequant_mf, i32 %rem.decomposed, i32 11
  %56 = load i32, i32* %arrayidx19.11, align 4, !tbaa !29
  %mul20.11 = mul nsw i32 %56, %conv17.11
  %add.11 = add nsw i32 %mul20.11, %shl9
  %shr.11 = ashr i32 %add.11, %sub7
  %conv22.11 = trunc i32 %shr.11 to i16
  store i16 %conv22.11, i16* %arrayidx16.11, align 2, !tbaa !27
  %arrayidx16.12 = getelementptr inbounds i16, i16* %dct, i32 12
  %57 = load i16, i16* %arrayidx16.12, align 2, !tbaa !27
  %conv17.12 = sext i16 %57 to i32
  %arrayidx19.12 = getelementptr inbounds [16 x i32], [16 x i32]* %dequant_mf, i32 %rem.decomposed, i32 12
  %58 = load i32, i32* %arrayidx19.12, align 4, !tbaa !29
  %mul20.12 = mul nsw i32 %58, %conv17.12
  %add.12 = add nsw i32 %mul20.12, %shl9
  %shr.12 = ashr i32 %add.12, %sub7
  %conv22.12 = trunc i32 %shr.12 to i16
  store i16 %conv22.12, i16* %arrayidx16.12, align 2, !tbaa !27
  %arrayidx16.13 = getelementptr inbounds i16, i16* %dct, i32 13
  %59 = load i16, i16* %arrayidx16.13, align 2, !tbaa !27
  %conv17.13 = sext i16 %59 to i32
  %arrayidx19.13 = getelementptr inbounds [16 x i32], [16 x i32]* %dequant_mf, i32 %rem.decomposed, i32 13
  %60 = load i32, i32* %arrayidx19.13, align 4, !tbaa !29
  %mul20.13 = mul nsw i32 %60, %conv17.13
  %add.13 = add nsw i32 %mul20.13, %shl9
  %shr.13 = ashr i32 %add.13, %sub7
  %conv22.13 = trunc i32 %shr.13 to i16
  store i16 %conv22.13, i16* %arrayidx16.13, align 2, !tbaa !27
  %arrayidx16.14 = getelementptr inbounds i16, i16* %dct, i32 14
  %61 = load i16, i16* %arrayidx16.14, align 2, !tbaa !27
  %conv17.14 = sext i16 %61 to i32
  %arrayidx19.14 = getelementptr inbounds [16 x i32], [16 x i32]* %dequant_mf, i32 %rem.decomposed, i32 14
  %62 = load i32, i32* %arrayidx19.14, align 4, !tbaa !29
  %mul20.14 = mul nsw i32 %62, %conv17.14
  %add.14 = add nsw i32 %mul20.14, %shl9
  %shr.14 = ashr i32 %add.14, %sub7
  %conv22.14 = trunc i32 %shr.14 to i16
  store i16 %conv22.14, i16* %arrayidx16.14, align 2, !tbaa !27
  %arrayidx16.15 = getelementptr inbounds i16, i16* %dct, i32 15
  %63 = load i16, i16* %arrayidx16.15, align 2, !tbaa !27
  %conv17.15 = sext i16 %63 to i32
  %arrayidx19.15 = getelementptr inbounds [16 x i32], [16 x i32]* %dequant_mf, i32 %rem.decomposed, i32 15
  %64 = load i32, i32* %arrayidx19.15, align 4, !tbaa !29
  %mul20.15 = mul nsw i32 %64, %conv17.15
  %add.15 = add nsw i32 %mul20.15, %shl9
  %shr.15 = ashr i32 %add.15, %sub7
  br label %if.end

if.end:                                           ; preds = %if.else, %for.body.preheader
  %shr.15.sink = phi i32 [ %shr.15, %if.else ], [ %mul4.15, %for.body.preheader ]
  %arrayidx16.15.sink = phi i16* [ %arrayidx16.15, %if.else ], [ %arrayidx.15, %for.body.preheader ]
  %conv22.15 = trunc i32 %shr.15.sink to i16
  store i16 %conv22.15, i16* %arrayidx16.15.sink, align 2, !tbaa !27
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @dequant_4x4_dc(i16* nocapture %dct, [16 x i32]* nocapture readonly %dequant_mf, i32 %i_qp) #0 {
entry:
  %div = sdiv i32 %i_qp, 6
  %cmp = icmp sgt i32 %i_qp, 35
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %sub = add nsw i32 %div, -6
  %rem46 = urem i32 %i_qp, 6
  %arrayidx1 = getelementptr inbounds [16 x i32], [16 x i32]* %dequant_mf, i32 %rem46, i32 0
  %0 = load i32, i32* %arrayidx1, align 4, !tbaa !29
  %shl = shl i32 %0, %sub
  %1 = trunc i32 %shl to i16
  %2 = load i16, i16* %dct, align 2, !tbaa !27
  %conv4 = mul i16 %2, %1
  store i16 %conv4, i16* %dct, align 2, !tbaa !27
  %arrayidx3.1 = getelementptr inbounds i16, i16* %dct, i32 1
  %3 = load i16, i16* %arrayidx3.1, align 2, !tbaa !27
  %conv4.1 = mul i16 %3, %1
  store i16 %conv4.1, i16* %arrayidx3.1, align 2, !tbaa !27
  %arrayidx3.2 = getelementptr inbounds i16, i16* %dct, i32 2
  %4 = load i16, i16* %arrayidx3.2, align 2, !tbaa !27
  %conv4.2 = mul i16 %4, %1
  store i16 %conv4.2, i16* %arrayidx3.2, align 2, !tbaa !27
  %arrayidx3.3 = getelementptr inbounds i16, i16* %dct, i32 3
  %5 = load i16, i16* %arrayidx3.3, align 2, !tbaa !27
  %conv4.3 = mul i16 %5, %1
  store i16 %conv4.3, i16* %arrayidx3.3, align 2, !tbaa !27
  %arrayidx3.4 = getelementptr inbounds i16, i16* %dct, i32 4
  %6 = load i16, i16* %arrayidx3.4, align 2, !tbaa !27
  %conv4.4 = mul i16 %6, %1
  store i16 %conv4.4, i16* %arrayidx3.4, align 2, !tbaa !27
  %arrayidx3.5 = getelementptr inbounds i16, i16* %dct, i32 5
  %7 = load i16, i16* %arrayidx3.5, align 2, !tbaa !27
  %conv4.5 = mul i16 %7, %1
  store i16 %conv4.5, i16* %arrayidx3.5, align 2, !tbaa !27
  %arrayidx3.6 = getelementptr inbounds i16, i16* %dct, i32 6
  %8 = load i16, i16* %arrayidx3.6, align 2, !tbaa !27
  %conv4.6 = mul i16 %8, %1
  store i16 %conv4.6, i16* %arrayidx3.6, align 2, !tbaa !27
  %arrayidx3.7 = getelementptr inbounds i16, i16* %dct, i32 7
  %9 = load i16, i16* %arrayidx3.7, align 2, !tbaa !27
  %conv4.7 = mul i16 %9, %1
  store i16 %conv4.7, i16* %arrayidx3.7, align 2, !tbaa !27
  %arrayidx3.8 = getelementptr inbounds i16, i16* %dct, i32 8
  %10 = load i16, i16* %arrayidx3.8, align 2, !tbaa !27
  %conv4.8 = mul i16 %10, %1
  store i16 %conv4.8, i16* %arrayidx3.8, align 2, !tbaa !27
  %arrayidx3.9 = getelementptr inbounds i16, i16* %dct, i32 9
  %11 = load i16, i16* %arrayidx3.9, align 2, !tbaa !27
  %conv4.9 = mul i16 %11, %1
  store i16 %conv4.9, i16* %arrayidx3.9, align 2, !tbaa !27
  %arrayidx3.10 = getelementptr inbounds i16, i16* %dct, i32 10
  %12 = load i16, i16* %arrayidx3.10, align 2, !tbaa !27
  %conv4.10 = mul i16 %12, %1
  store i16 %conv4.10, i16* %arrayidx3.10, align 2, !tbaa !27
  %arrayidx3.11 = getelementptr inbounds i16, i16* %dct, i32 11
  %13 = load i16, i16* %arrayidx3.11, align 2, !tbaa !27
  %conv4.11 = mul i16 %13, %1
  store i16 %conv4.11, i16* %arrayidx3.11, align 2, !tbaa !27
  %arrayidx3.12 = getelementptr inbounds i16, i16* %dct, i32 12
  %14 = load i16, i16* %arrayidx3.12, align 2, !tbaa !27
  %conv4.12 = mul i16 %14, %1
  store i16 %conv4.12, i16* %arrayidx3.12, align 2, !tbaa !27
  %arrayidx3.13 = getelementptr inbounds i16, i16* %dct, i32 13
  %15 = load i16, i16* %arrayidx3.13, align 2, !tbaa !27
  %conv4.13 = mul i16 %15, %1
  store i16 %conv4.13, i16* %arrayidx3.13, align 2, !tbaa !27
  %arrayidx3.14 = getelementptr inbounds i16, i16* %dct, i32 14
  %16 = load i16, i16* %arrayidx3.14, align 2, !tbaa !27
  %conv4.14 = mul i16 %16, %1
  store i16 %conv4.14, i16* %arrayidx3.14, align 2, !tbaa !27
  %arrayidx3.15 = getelementptr inbounds i16, i16* %dct, i32 15
  %17 = load i16, i16* %arrayidx3.15, align 2, !tbaa !27
  %conv4.15 = mul i16 %17, %1
  store i16 %conv4.15, i16* %arrayidx3.15, align 2, !tbaa !27
  br label %if.end

if.else:                                          ; preds = %entry
  %18 = mul i32 %div, 6
  %rem6.decomposed = sub i32 %i_qp, %18
  %arrayidx8 = getelementptr inbounds [16 x i32], [16 x i32]* %dequant_mf, i32 %rem6.decomposed, i32 0
  %19 = load i32, i32* %arrayidx8, align 4, !tbaa !29
  %sub9 = sub nsw i32 6, %div
  %sub10 = sub nsw i32 5, %div
  %shl11 = shl nuw i32 1, %sub10
  %20 = load i16, i16* %dct, align 2, !tbaa !27
  %conv19 = sext i16 %20 to i32
  %mul20 = mul nsw i32 %19, %conv19
  %add = add nsw i32 %mul20, %shl11
  %shr = ashr i32 %add, %sub9
  %conv22 = trunc i32 %shr to i16
  store i16 %conv22, i16* %dct, align 2, !tbaa !27
  %arrayidx18.1 = getelementptr inbounds i16, i16* %dct, i32 1
  %21 = load i16, i16* %arrayidx18.1, align 2, !tbaa !27
  %conv19.1 = sext i16 %21 to i32
  %mul20.1 = mul nsw i32 %19, %conv19.1
  %add.1 = add nsw i32 %mul20.1, %shl11
  %shr.1 = ashr i32 %add.1, %sub9
  %conv22.1 = trunc i32 %shr.1 to i16
  store i16 %conv22.1, i16* %arrayidx18.1, align 2, !tbaa !27
  %arrayidx18.2 = getelementptr inbounds i16, i16* %dct, i32 2
  %22 = load i16, i16* %arrayidx18.2, align 2, !tbaa !27
  %conv19.2 = sext i16 %22 to i32
  %mul20.2 = mul nsw i32 %19, %conv19.2
  %add.2 = add nsw i32 %mul20.2, %shl11
  %shr.2 = ashr i32 %add.2, %sub9
  %conv22.2 = trunc i32 %shr.2 to i16
  store i16 %conv22.2, i16* %arrayidx18.2, align 2, !tbaa !27
  %arrayidx18.3 = getelementptr inbounds i16, i16* %dct, i32 3
  %23 = load i16, i16* %arrayidx18.3, align 2, !tbaa !27
  %conv19.3 = sext i16 %23 to i32
  %mul20.3 = mul nsw i32 %19, %conv19.3
  %add.3 = add nsw i32 %mul20.3, %shl11
  %shr.3 = ashr i32 %add.3, %sub9
  %conv22.3 = trunc i32 %shr.3 to i16
  store i16 %conv22.3, i16* %arrayidx18.3, align 2, !tbaa !27
  %arrayidx18.4 = getelementptr inbounds i16, i16* %dct, i32 4
  %24 = load i16, i16* %arrayidx18.4, align 2, !tbaa !27
  %conv19.4 = sext i16 %24 to i32
  %mul20.4 = mul nsw i32 %19, %conv19.4
  %add.4 = add nsw i32 %mul20.4, %shl11
  %shr.4 = ashr i32 %add.4, %sub9
  %conv22.4 = trunc i32 %shr.4 to i16
  store i16 %conv22.4, i16* %arrayidx18.4, align 2, !tbaa !27
  %arrayidx18.5 = getelementptr inbounds i16, i16* %dct, i32 5
  %25 = load i16, i16* %arrayidx18.5, align 2, !tbaa !27
  %conv19.5 = sext i16 %25 to i32
  %mul20.5 = mul nsw i32 %19, %conv19.5
  %add.5 = add nsw i32 %mul20.5, %shl11
  %shr.5 = ashr i32 %add.5, %sub9
  %conv22.5 = trunc i32 %shr.5 to i16
  store i16 %conv22.5, i16* %arrayidx18.5, align 2, !tbaa !27
  %arrayidx18.6 = getelementptr inbounds i16, i16* %dct, i32 6
  %26 = load i16, i16* %arrayidx18.6, align 2, !tbaa !27
  %conv19.6 = sext i16 %26 to i32
  %mul20.6 = mul nsw i32 %19, %conv19.6
  %add.6 = add nsw i32 %mul20.6, %shl11
  %shr.6 = ashr i32 %add.6, %sub9
  %conv22.6 = trunc i32 %shr.6 to i16
  store i16 %conv22.6, i16* %arrayidx18.6, align 2, !tbaa !27
  %arrayidx18.7 = getelementptr inbounds i16, i16* %dct, i32 7
  %27 = load i16, i16* %arrayidx18.7, align 2, !tbaa !27
  %conv19.7 = sext i16 %27 to i32
  %mul20.7 = mul nsw i32 %19, %conv19.7
  %add.7 = add nsw i32 %mul20.7, %shl11
  %shr.7 = ashr i32 %add.7, %sub9
  %conv22.7 = trunc i32 %shr.7 to i16
  store i16 %conv22.7, i16* %arrayidx18.7, align 2, !tbaa !27
  %arrayidx18.8 = getelementptr inbounds i16, i16* %dct, i32 8
  %28 = load i16, i16* %arrayidx18.8, align 2, !tbaa !27
  %conv19.8 = sext i16 %28 to i32
  %mul20.8 = mul nsw i32 %19, %conv19.8
  %add.8 = add nsw i32 %mul20.8, %shl11
  %shr.8 = ashr i32 %add.8, %sub9
  %conv22.8 = trunc i32 %shr.8 to i16
  store i16 %conv22.8, i16* %arrayidx18.8, align 2, !tbaa !27
  %arrayidx18.9 = getelementptr inbounds i16, i16* %dct, i32 9
  %29 = load i16, i16* %arrayidx18.9, align 2, !tbaa !27
  %conv19.9 = sext i16 %29 to i32
  %mul20.9 = mul nsw i32 %19, %conv19.9
  %add.9 = add nsw i32 %mul20.9, %shl11
  %shr.9 = ashr i32 %add.9, %sub9
  %conv22.9 = trunc i32 %shr.9 to i16
  store i16 %conv22.9, i16* %arrayidx18.9, align 2, !tbaa !27
  %arrayidx18.10 = getelementptr inbounds i16, i16* %dct, i32 10
  %30 = load i16, i16* %arrayidx18.10, align 2, !tbaa !27
  %conv19.10 = sext i16 %30 to i32
  %mul20.10 = mul nsw i32 %19, %conv19.10
  %add.10 = add nsw i32 %mul20.10, %shl11
  %shr.10 = ashr i32 %add.10, %sub9
  %conv22.10 = trunc i32 %shr.10 to i16
  store i16 %conv22.10, i16* %arrayidx18.10, align 2, !tbaa !27
  %arrayidx18.11 = getelementptr inbounds i16, i16* %dct, i32 11
  %31 = load i16, i16* %arrayidx18.11, align 2, !tbaa !27
  %conv19.11 = sext i16 %31 to i32
  %mul20.11 = mul nsw i32 %19, %conv19.11
  %add.11 = add nsw i32 %mul20.11, %shl11
  %shr.11 = ashr i32 %add.11, %sub9
  %conv22.11 = trunc i32 %shr.11 to i16
  store i16 %conv22.11, i16* %arrayidx18.11, align 2, !tbaa !27
  %arrayidx18.12 = getelementptr inbounds i16, i16* %dct, i32 12
  %32 = load i16, i16* %arrayidx18.12, align 2, !tbaa !27
  %conv19.12 = sext i16 %32 to i32
  %mul20.12 = mul nsw i32 %19, %conv19.12
  %add.12 = add nsw i32 %mul20.12, %shl11
  %shr.12 = ashr i32 %add.12, %sub9
  %conv22.12 = trunc i32 %shr.12 to i16
  store i16 %conv22.12, i16* %arrayidx18.12, align 2, !tbaa !27
  %arrayidx18.13 = getelementptr inbounds i16, i16* %dct, i32 13
  %33 = load i16, i16* %arrayidx18.13, align 2, !tbaa !27
  %conv19.13 = sext i16 %33 to i32
  %mul20.13 = mul nsw i32 %19, %conv19.13
  %add.13 = add nsw i32 %mul20.13, %shl11
  %shr.13 = ashr i32 %add.13, %sub9
  %conv22.13 = trunc i32 %shr.13 to i16
  store i16 %conv22.13, i16* %arrayidx18.13, align 2, !tbaa !27
  %arrayidx18.14 = getelementptr inbounds i16, i16* %dct, i32 14
  %34 = load i16, i16* %arrayidx18.14, align 2, !tbaa !27
  %conv19.14 = sext i16 %34 to i32
  %mul20.14 = mul nsw i32 %19, %conv19.14
  %add.14 = add nsw i32 %mul20.14, %shl11
  %shr.14 = ashr i32 %add.14, %sub9
  %conv22.14 = trunc i32 %shr.14 to i16
  store i16 %conv22.14, i16* %arrayidx18.14, align 2, !tbaa !27
  %arrayidx18.15 = getelementptr inbounds i16, i16* %dct, i32 15
  %35 = load i16, i16* %arrayidx18.15, align 2, !tbaa !27
  %conv19.15 = sext i16 %35 to i32
  %mul20.15 = mul nsw i32 %19, %conv19.15
  %add.15 = add nsw i32 %mul20.15, %shl11
  %shr.15 = ashr i32 %add.15, %sub9
  %conv22.15 = trunc i32 %shr.15 to i16
  store i16 %conv22.15, i16* %arrayidx18.15, align 2, !tbaa !27
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @dequant_8x8(i16* nocapture %dct, [64 x i32]* nocapture readonly %dequant_mf, i32 %i_qp) #0 {
entry:
  %div = sdiv i32 %i_qp, 6
  %0 = mul i32 %div, 6
  %rem.decomposed = sub i32 %i_qp, %0
  %sub = add nsw i32 %div, -6
  %cmp = icmp sgt i32 %i_qp, 35
  br i1 %cmp, label %for.body, label %if.else

for.body:                                         ; preds = %entry, %for.body
  %i.050 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i16, i16* %dct, i32 %i.050
  %1 = load i16, i16* %arrayidx, align 2, !tbaa !27
  %conv = sext i16 %1 to i32
  %arrayidx3 = getelementptr inbounds [64 x i32], [64 x i32]* %dequant_mf, i32 %rem.decomposed, i32 %i.050
  %2 = load i32, i32* %arrayidx3, align 4, !tbaa !29
  %mul = mul nsw i32 %2, %conv
  %mul4 = shl i32 %mul, %sub
  %conv5 = trunc i32 %mul4 to i16
  store i16 %conv5, i16* %arrayidx, align 2, !tbaa !27
  %inc = add nuw nsw i32 %i.050, 1
  %exitcond = icmp eq i32 %inc, 64
  br i1 %exitcond, label %if.end, label %for.body

if.else:                                          ; preds = %entry
  %sub7 = sub nsw i32 6, %div
  %sub8 = sub nsw i32 5, %div
  %shl9 = shl nuw i32 1, %sub8
  br label %for.body15

for.body15:                                       ; preds = %for.body15, %if.else
  %i10.051 = phi i32 [ 0, %if.else ], [ %inc25, %for.body15 ]
  %arrayidx16 = getelementptr inbounds i16, i16* %dct, i32 %i10.051
  %3 = load i16, i16* %arrayidx16, align 2, !tbaa !27
  %conv17 = sext i16 %3 to i32
  %arrayidx19 = getelementptr inbounds [64 x i32], [64 x i32]* %dequant_mf, i32 %rem.decomposed, i32 %i10.051
  %4 = load i32, i32* %arrayidx19, align 4, !tbaa !29
  %mul20 = mul nsw i32 %4, %conv17
  %add = add nsw i32 %mul20, %shl9
  %shr = ashr i32 %add, %sub7
  %conv22 = trunc i32 %shr to i16
  store i16 %conv22, i16* %arrayidx16, align 2, !tbaa !27
  %inc25 = add nuw nsw i32 %i10.051, 1
  %exitcond53 = icmp eq i32 %inc25, 64
  br i1 %exitcond53, label %if.end, label %for.body15

if.end:                                           ; preds = %for.body15, %for.body
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @idct_dequant_2x4_dc(i16* nocapture readonly %dct, [16 x i16]* nocapture %dct4x4, [16 x i32]* nocapture readonly %dequant_mf, i32 %i_qp) #0 {
entry:
  %0 = load i16, i16* %dct, align 2, !tbaa !27
  %conv = sext i16 %0 to i32
  %arrayidx1 = getelementptr inbounds i16, i16* %dct, i32 1
  %1 = load i16, i16* %arrayidx1, align 2, !tbaa !27
  %conv2 = sext i16 %1 to i32
  %add = add nsw i32 %conv2, %conv
  %arrayidx3 = getelementptr inbounds i16, i16* %dct, i32 2
  %2 = load i16, i16* %arrayidx3, align 2, !tbaa !27
  %conv4 = sext i16 %2 to i32
  %arrayidx5 = getelementptr inbounds i16, i16* %dct, i32 3
  %3 = load i16, i16* %arrayidx5, align 2, !tbaa !27
  %conv6 = sext i16 %3 to i32
  %add7 = add nsw i32 %conv6, %conv4
  %arrayidx8 = getelementptr inbounds i16, i16* %dct, i32 4
  %4 = load i16, i16* %arrayidx8, align 2, !tbaa !27
  %conv9 = sext i16 %4 to i32
  %arrayidx10 = getelementptr inbounds i16, i16* %dct, i32 5
  %5 = load i16, i16* %arrayidx10, align 2, !tbaa !27
  %conv11 = sext i16 %5 to i32
  %add12 = add nsw i32 %conv11, %conv9
  %arrayidx13 = getelementptr inbounds i16, i16* %dct, i32 6
  %6 = load i16, i16* %arrayidx13, align 2, !tbaa !27
  %conv14 = sext i16 %6 to i32
  %arrayidx15 = getelementptr inbounds i16, i16* %dct, i32 7
  %7 = load i16, i16* %arrayidx15, align 2, !tbaa !27
  %conv16 = sext i16 %7 to i32
  %add17 = add nsw i32 %conv16, %conv14
  %sub = sub nsw i32 %conv, %conv2
  %sub26 = sub nsw i32 %conv4, %conv6
  %sub31 = sub nsw i32 %conv9, %conv11
  %sub36 = sub nsw i32 %conv14, %conv16
  %add37 = add nsw i32 %add7, %add
  %add38 = add nsw i32 %add17, %add12
  %add39 = add nsw i32 %sub26, %sub
  %add40 = add nsw i32 %sub36, %sub31
  %sub41 = sub nsw i32 %add, %add7
  %sub42 = sub nsw i32 %add12, %add17
  %sub43 = sub nsw i32 %sub, %sub26
  %sub44 = sub nsw i32 %sub31, %sub36
  %div = sdiv i32 %i_qp, 6
  %8 = mul i32 %div, 6
  %rem.decomposed = sub i32 %i_qp, %8
  %arrayidx46 = getelementptr inbounds [16 x i32], [16 x i32]* %dequant_mf, i32 %rem.decomposed, i32 0
  %9 = load i32, i32* %arrayidx46, align 4, !tbaa !29
  %shl = shl i32 %9, %div
  %add47 = add nsw i32 %add38, %add37
  %mul = mul nsw i32 %add47, %shl
  %add48 = add nsw i32 %mul, 32
  %10 = lshr i32 %add48, 6
  %conv49 = trunc i32 %10 to i16
  %arrayidx51 = getelementptr inbounds [16 x i16], [16 x i16]* %dct4x4, i32 0, i32 0
  store i16 %conv49, i16* %arrayidx51, align 2, !tbaa !27
  %add52 = add nsw i32 %add40, %add39
  %mul53 = mul nsw i32 %add52, %shl
  %add54 = add nsw i32 %mul53, 32
  %11 = lshr i32 %add54, 6
  %conv56 = trunc i32 %11 to i16
  %arrayidx58 = getelementptr inbounds [16 x i16], [16 x i16]* %dct4x4, i32 1, i32 0
  store i16 %conv56, i16* %arrayidx58, align 2, !tbaa !27
  %sub59 = sub nsw i32 %add37, %add38
  %mul60 = mul nsw i32 %sub59, %shl
  %add61 = add nsw i32 %mul60, 32
  %12 = lshr i32 %add61, 6
  %conv63 = trunc i32 %12 to i16
  %arrayidx65 = getelementptr inbounds [16 x i16], [16 x i16]* %dct4x4, i32 2, i32 0
  store i16 %conv63, i16* %arrayidx65, align 2, !tbaa !27
  %sub66 = sub nsw i32 %add39, %add40
  %mul67 = mul nsw i32 %sub66, %shl
  %add68 = add nsw i32 %mul67, 32
  %13 = lshr i32 %add68, 6
  %conv70 = trunc i32 %13 to i16
  %arrayidx72 = getelementptr inbounds [16 x i16], [16 x i16]* %dct4x4, i32 3, i32 0
  store i16 %conv70, i16* %arrayidx72, align 2, !tbaa !27
  %sub73 = sub nsw i32 %sub41, %sub42
  %mul74 = mul nsw i32 %sub73, %shl
  %add75 = add nsw i32 %mul74, 32
  %14 = lshr i32 %add75, 6
  %conv77 = trunc i32 %14 to i16
  %arrayidx79 = getelementptr inbounds [16 x i16], [16 x i16]* %dct4x4, i32 4, i32 0
  store i16 %conv77, i16* %arrayidx79, align 2, !tbaa !27
  %sub80 = sub nsw i32 %sub43, %sub44
  %mul81 = mul nsw i32 %sub80, %shl
  %add82 = add nsw i32 %mul81, 32
  %15 = lshr i32 %add82, 6
  %conv84 = trunc i32 %15 to i16
  %arrayidx86 = getelementptr inbounds [16 x i16], [16 x i16]* %dct4x4, i32 5, i32 0
  store i16 %conv84, i16* %arrayidx86, align 2, !tbaa !27
  %add87 = add nsw i32 %sub42, %sub41
  %mul88 = mul nsw i32 %add87, %shl
  %add89 = add nsw i32 %mul88, 32
  %16 = lshr i32 %add89, 6
  %conv91 = trunc i32 %16 to i16
  %arrayidx93 = getelementptr inbounds [16 x i16], [16 x i16]* %dct4x4, i32 6, i32 0
  store i16 %conv91, i16* %arrayidx93, align 2, !tbaa !27
  %add94 = add nsw i32 %sub44, %sub43
  %mul95 = mul nsw i32 %add94, %shl
  %add96 = add nsw i32 %mul95, 32
  %17 = lshr i32 %add96, 6
  %conv98 = trunc i32 %17 to i16
  %arrayidx100 = getelementptr inbounds [16 x i16], [16 x i16]* %dct4x4, i32 7, i32 0
  store i16 %conv98, i16* %arrayidx100, align 2, !tbaa !27
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @idct_dequant_2x4_dconly(i16* nocapture %dct, [16 x i32]* nocapture readonly %dequant_mf, i32 %i_qp) #0 {
entry:
  %0 = load i16, i16* %dct, align 2, !tbaa !27
  %conv = sext i16 %0 to i32
  %arrayidx1 = getelementptr inbounds i16, i16* %dct, i32 1
  %1 = load i16, i16* %arrayidx1, align 2, !tbaa !27
  %conv2 = sext i16 %1 to i32
  %add = add nsw i32 %conv2, %conv
  %arrayidx3 = getelementptr inbounds i16, i16* %dct, i32 2
  %2 = load i16, i16* %arrayidx3, align 2, !tbaa !27
  %conv4 = sext i16 %2 to i32
  %arrayidx5 = getelementptr inbounds i16, i16* %dct, i32 3
  %3 = load i16, i16* %arrayidx5, align 2, !tbaa !27
  %conv6 = sext i16 %3 to i32
  %add7 = add nsw i32 %conv6, %conv4
  %arrayidx8 = getelementptr inbounds i16, i16* %dct, i32 4
  %4 = load i16, i16* %arrayidx8, align 2, !tbaa !27
  %conv9 = sext i16 %4 to i32
  %arrayidx10 = getelementptr inbounds i16, i16* %dct, i32 5
  %5 = load i16, i16* %arrayidx10, align 2, !tbaa !27
  %conv11 = sext i16 %5 to i32
  %add12 = add nsw i32 %conv11, %conv9
  %arrayidx13 = getelementptr inbounds i16, i16* %dct, i32 6
  %6 = load i16, i16* %arrayidx13, align 2, !tbaa !27
  %conv14 = sext i16 %6 to i32
  %arrayidx15 = getelementptr inbounds i16, i16* %dct, i32 7
  %7 = load i16, i16* %arrayidx15, align 2, !tbaa !27
  %conv16 = sext i16 %7 to i32
  %add17 = add nsw i32 %conv16, %conv14
  %sub = sub nsw i32 %conv, %conv2
  %sub26 = sub nsw i32 %conv4, %conv6
  %sub31 = sub nsw i32 %conv9, %conv11
  %sub36 = sub nsw i32 %conv14, %conv16
  %add37 = add nsw i32 %add7, %add
  %add38 = add nsw i32 %add17, %add12
  %add39 = add nsw i32 %sub26, %sub
  %add40 = add nsw i32 %sub36, %sub31
  %sub41 = sub nsw i32 %add, %add7
  %sub42 = sub nsw i32 %add12, %add17
  %sub43 = sub nsw i32 %sub, %sub26
  %sub44 = sub nsw i32 %sub31, %sub36
  %div = sdiv i32 %i_qp, 6
  %8 = mul i32 %div, 6
  %rem.decomposed = sub i32 %i_qp, %8
  %arrayidx46 = getelementptr inbounds [16 x i32], [16 x i32]* %dequant_mf, i32 %rem.decomposed, i32 0
  %9 = load i32, i32* %arrayidx46, align 4, !tbaa !29
  %shl = shl i32 %9, %div
  %add47 = add nsw i32 %add38, %add37
  %mul = mul nsw i32 %add47, %shl
  %add48 = add nsw i32 %mul, 32
  %10 = lshr i32 %add48, 6
  %conv49 = trunc i32 %10 to i16
  store i16 %conv49, i16* %dct, align 2, !tbaa !27
  %add51 = add nsw i32 %add40, %add39
  %mul52 = mul nsw i32 %add51, %shl
  %add53 = add nsw i32 %mul52, 32
  %11 = lshr i32 %add53, 6
  %conv55 = trunc i32 %11 to i16
  store i16 %conv55, i16* %arrayidx1, align 2, !tbaa !27
  %sub57 = sub nsw i32 %add37, %add38
  %mul58 = mul nsw i32 %sub57, %shl
  %add59 = add nsw i32 %mul58, 32
  %12 = lshr i32 %add59, 6
  %conv61 = trunc i32 %12 to i16
  store i16 %conv61, i16* %arrayidx3, align 2, !tbaa !27
  %sub63 = sub nsw i32 %add39, %add40
  %mul64 = mul nsw i32 %sub63, %shl
  %add65 = add nsw i32 %mul64, 32
  %13 = lshr i32 %add65, 6
  %conv67 = trunc i32 %13 to i16
  store i16 %conv67, i16* %arrayidx5, align 2, !tbaa !27
  %sub69 = sub nsw i32 %sub41, %sub42
  %mul70 = mul nsw i32 %sub69, %shl
  %add71 = add nsw i32 %mul70, 32
  %14 = lshr i32 %add71, 6
  %conv73 = trunc i32 %14 to i16
  store i16 %conv73, i16* %arrayidx8, align 2, !tbaa !27
  %sub75 = sub nsw i32 %sub43, %sub44
  %mul76 = mul nsw i32 %sub75, %shl
  %add77 = add nsw i32 %mul76, 32
  %15 = lshr i32 %add77, 6
  %conv79 = trunc i32 %15 to i16
  store i16 %conv79, i16* %arrayidx10, align 2, !tbaa !27
  %add81 = add nsw i32 %sub42, %sub41
  %mul82 = mul nsw i32 %add81, %shl
  %add83 = add nsw i32 %mul82, 32
  %16 = lshr i32 %add83, 6
  %conv85 = trunc i32 %16 to i16
  store i16 %conv85, i16* %arrayidx13, align 2, !tbaa !27
  %add87 = add nsw i32 %sub44, %sub43
  %mul88 = mul nsw i32 %add87, %shl
  %add89 = add nsw i32 %mul88, 32
  %17 = lshr i32 %add89, 6
  %conv91 = trunc i32 %17 to i16
  store i16 %conv91, i16* %arrayidx15, align 2, !tbaa !27
  ret void
}

; Function Attrs: nounwind
define internal i32 @optimize_chroma_2x2_dc(i16* nocapture %dct, i32 %dequant_mf) #1 {
entry:
  %0 = load i16, i16* %dct, align 2, !tbaa !27
  %conv.i.i = sext i16 %0 to i32
  %arrayidx1.i.i = getelementptr inbounds i16, i16* %dct, i32 1
  %1 = load i16, i16* %arrayidx1.i.i, align 2, !tbaa !27
  %conv2.i.i = sext i16 %1 to i32
  %add.i.i = add nsw i32 %conv2.i.i, %conv.i.i
  %arrayidx3.i.i = getelementptr inbounds i16, i16* %dct, i32 2
  %2 = load i16, i16* %arrayidx3.i.i, align 2, !tbaa !27
  %conv4.i.i = sext i16 %2 to i32
  %arrayidx5.i.i = getelementptr inbounds i16, i16* %dct, i32 3
  %3 = load i16, i16* %arrayidx5.i.i, align 2, !tbaa !27
  %conv6.i.i = sext i16 %3 to i32
  %add7.i.i = add nsw i32 %conv6.i.i, %conv4.i.i
  %sub.i66.i = sub nsw i32 %conv.i.i, %conv2.i.i
  %sub16.i.i = sub nsw i32 %conv4.i.i, %conv6.i.i
  %add17.i67.i = add nsw i32 %add7.i.i, %add.i.i
  %mul.i68.i = mul nsw i32 %add17.i67.i, %dequant_mf
  %4 = lshr i32 %mul.i68.i, 5
  %5 = trunc i32 %4 to i16
  %conv19.i.i = add i16 %5, 32
  %sub21.i.i = sub nsw i32 %add.i.i, %add7.i.i
  %mul22.i.i = mul nsw i32 %sub21.i.i, %dequant_mf
  %6 = lshr i32 %mul22.i.i, 5
  %7 = trunc i32 %6 to i16
  %conv25.i.i = add i16 %7, 32
  %add27.i.i = add nsw i32 %sub16.i.i, %sub.i66.i
  %mul28.i.i = mul nsw i32 %add27.i.i, %dequant_mf
  %8 = lshr i32 %mul28.i.i, 5
  %9 = trunc i32 %8 to i16
  %conv31.i.i = add i16 %9, 32
  %sub33.i.i = sub nsw i32 %sub.i66.i, %sub16.i.i
  %mul34.i.i = mul nsw i32 %sub33.i.i, %dequant_mf
  %10 = lshr i32 %mul34.i.i, 5
  %11 = trunc i32 %10 to i16
  %conv37.i.i = add i16 %11, 32
  %or.i19 = or i16 %conv19.i.i, %conv25.i.i
  %or.i.120 = or i16 %or.i19, %conv31.i.i
  %or.i.221 = or i16 %or.i.120, %conv37.i.i
  %tobool3.i = icmp ugt i16 %or.i.221, 63
  br i1 %tobool3.i, label %if.end5.i, label %optimize_chroma_dc_internal.exit

if.end5.i:                                        ; preds = %entry
  %shr14.i = ashr i32 %conv6.i.i, 31
  %or15.i = or i32 %shr14.i, 1
  %tobool16.i56 = icmp eq i16 %3, 0
  br i1 %tobool16.i56, label %while.end.i, label %while.body.i

while.cond.i:                                     ; preds = %while.body.i
  %tobool16.i = icmp eq i32 %sub.i, 0
  br i1 %tobool16.i, label %while.end.i.loopexit, label %while.body.i

while.body.i:                                     ; preds = %if.end5.i, %while.cond.i
  %level.0.i57 = phi i32 [ %sub.i, %while.cond.i ], [ %conv6.i.i, %if.end5.i ]
  %sub.i = sub nsw i32 %level.0.i57, %or15.i
  %conv17.i = trunc i32 %sub.i to i16
  %sext = shl i32 %sub.i, 16
  %conv6.i.i.i = ashr exact i32 %sext, 16
  %add7.i.i.i = add nsw i32 %conv6.i.i.i, %conv4.i.i
  %sub16.i.i.i = sub nsw i32 %conv4.i.i, %conv6.i.i.i
  %add17.i23.i.i = add nsw i32 %add7.i.i.i, %add.i.i
  %mul.i24.i.i = mul nsw i32 %add17.i23.i.i, %dequant_mf
  %12 = lshr i32 %mul.i24.i.i, 5
  %13 = trunc i32 %12 to i16
  %conv19.i.i.i = add i16 %13, 32
  %sub21.i.i.i = sub nsw i32 %add.i.i, %add7.i.i.i
  %mul22.i.i.i = mul nsw i32 %sub21.i.i.i, %dequant_mf
  %14 = lshr i32 %mul22.i.i.i, 5
  %15 = trunc i32 %14 to i16
  %conv25.i.i.i = add i16 %15, 32
  %add27.i.i.i = add nsw i32 %sub16.i.i.i, %sub.i66.i
  %mul28.i.i.i = mul nsw i32 %add27.i.i.i, %dequant_mf
  %16 = lshr i32 %mul28.i.i.i, 5
  %17 = trunc i32 %16 to i16
  %conv31.i.i.i = add i16 %17, 32
  %sub33.i.i.i = sub nsw i32 %sub.i66.i, %sub16.i.i.i
  %mul34.i.i.i = mul nsw i32 %sub33.i.i.i, %dequant_mf
  %18 = lshr i32 %mul34.i.i.i, 5
  %19 = trunc i32 %18 to i16
  %conv37.i.i.i = add i16 %19, 32
  %xor12.i71.i = xor i16 %conv19.i.i.i, %conv19.i.i
  %xor12.i.i3 = xor i16 %conv25.i.i, %conv25.i.i.i
  %or.i.i511 = or i16 %xor12.i.i3, %xor12.i71.i
  %xor12.i.i = xor i16 %conv31.i.i, %conv31.i.i.i
  %or.i.i22 = or i16 %or.i.i511, %xor12.i.i
  %xor12.i.i.1 = xor i16 %conv37.i.i, %conv37.i.i.i
  %or.i.i.123 = or i16 %or.i.i22, %xor12.i.i.1
  %tobool20.i = icmp ult i16 %or.i.i.123, 64
  br i1 %tobool20.i, label %while.cond.i, label %if.then21.i

if.then21.i:                                      ; preds = %while.body.i
  store i16 %conv17.i, i16* %arrayidx5.i.i, align 2, !tbaa !27
  %conv22.i = trunc i32 %level.0.i57 to i16
  store i16 %conv22.i, i16* %arrayidx5.i.i, align 2, !tbaa !27
  br label %while.end.i

while.end.i.loopexit:                             ; preds = %while.cond.i
  store i16 %conv17.i, i16* %arrayidx5.i.i, align 2, !tbaa !27
  br label %while.end.i

while.end.i:                                      ; preds = %while.end.i.loopexit, %if.end5.i, %if.then21.i
  %20 = phi i16 [ %conv22.i, %if.then21.i ], [ %3, %if.end5.i ], [ %conv17.i, %while.end.i.loopexit ]
  %nz.1.i = phi i32 [ 1, %if.then21.i ], [ 0, %if.end5.i ], [ 0, %while.end.i.loopexit ]
  %shr14.i.1 = ashr i32 %conv4.i.i, 31
  %or15.i.1 = or i32 %shr14.i.1, 1
  %conv6.i.i.i.1 = sext i16 %20 to i32
  %tobool16.i.153 = icmp eq i16 %2, 0
  br i1 %tobool16.i.153, label %while.end.i.1, label %while.body.i.1

optimize_chroma_dc_internal.exit:                 ; preds = %while.cond.i.3, %if.then21.i.3, %entry
  %retval.0.i = phi i32 [ 0, %entry ], [ 1, %if.then21.i.3 ], [ %nz.1.i.2, %while.cond.i.3 ]
  ret i32 %retval.0.i

while.cond.i.1:                                   ; preds = %while.body.i.1
  %tobool16.i.1 = icmp eq i32 %sub.i.1, 0
  br i1 %tobool16.i.1, label %while.end.i.1.loopexit, label %while.body.i.1

while.body.i.1:                                   ; preds = %while.end.i, %while.cond.i.1
  %level.0.i.154 = phi i32 [ %sub.i.1, %while.cond.i.1 ], [ %conv4.i.i, %while.end.i ]
  %sub.i.1 = sub nsw i32 %level.0.i.154, %or15.i.1
  %conv17.i.1 = trunc i32 %sub.i.1 to i16
  %sext24 = shl i32 %sub.i.1, 16
  %conv4.i.i.i.1 = ashr exact i32 %sext24, 16
  %add7.i.i.i.1 = add nsw i32 %conv4.i.i.i.1, %conv6.i.i.i.1
  %sub16.i.i.i.1 = sub nsw i32 %conv4.i.i.i.1, %conv6.i.i.i.1
  %add17.i23.i.i.1 = add nsw i32 %add7.i.i.i.1, %add.i.i
  %mul.i24.i.i.1 = mul nsw i32 %add17.i23.i.i.1, %dequant_mf
  %21 = lshr i32 %mul.i24.i.i.1, 5
  %22 = trunc i32 %21 to i16
  %conv19.i.i.i.1 = add i16 %22, 32
  %sub21.i.i.i.1 = sub nsw i32 %add.i.i, %add7.i.i.i.1
  %mul22.i.i.i.1 = mul nsw i32 %sub21.i.i.i.1, %dequant_mf
  %23 = lshr i32 %mul22.i.i.i.1, 5
  %24 = trunc i32 %23 to i16
  %conv25.i.i.i.1 = add i16 %24, 32
  %add27.i.i.i.1 = add nsw i32 %sub16.i.i.i.1, %sub.i66.i
  %mul28.i.i.i.1 = mul nsw i32 %add27.i.i.i.1, %dequant_mf
  %25 = lshr i32 %mul28.i.i.i.1, 5
  %26 = trunc i32 %25 to i16
  %conv31.i.i.i.1 = add i16 %26, 32
  %sub33.i.i.i.1 = sub nsw i32 %sub.i66.i, %sub16.i.i.i.1
  %mul34.i.i.i.1 = mul nsw i32 %sub33.i.i.i.1, %dequant_mf
  %27 = lshr i32 %mul34.i.i.i.1, 5
  %28 = trunc i32 %27 to i16
  %conv37.i.i.i.1 = add i16 %28, 32
  %xor12.i71.i.1 = xor i16 %conv19.i.i.i.1, %conv19.i.i
  %xor12.i.i3.1 = xor i16 %conv25.i.i, %conv25.i.i.i.1
  %or.i.i511.1 = or i16 %xor12.i.i3.1, %xor12.i71.i.1
  %xor12.i.i.116 = xor i16 %conv31.i.i, %conv31.i.i.i.1
  %or.i.i.11825 = or i16 %or.i.i511.1, %xor12.i.i.116
  %xor12.i.i.1.1 = xor i16 %conv37.i.i, %conv37.i.i.i.1
  %or.i.i.1.126 = or i16 %or.i.i.11825, %xor12.i.i.1.1
  %tobool20.i.1 = icmp ult i16 %or.i.i.1.126, 64
  br i1 %tobool20.i.1, label %while.cond.i.1, label %if.then21.i.1

if.then21.i.1:                                    ; preds = %while.body.i.1
  store i16 %conv17.i.1, i16* %arrayidx3.i.i, align 2, !tbaa !27
  %conv22.i.1 = trunc i32 %level.0.i.154 to i16
  store i16 %conv22.i.1, i16* %arrayidx3.i.i, align 2, !tbaa !27
  br label %while.end.i.1

while.end.i.1.loopexit:                           ; preds = %while.cond.i.1
  store i16 %conv17.i.1, i16* %arrayidx3.i.i, align 2, !tbaa !27
  br label %while.end.i.1

while.end.i.1:                                    ; preds = %while.end.i.1.loopexit, %while.end.i, %if.then21.i.1
  %29 = phi i16 [ %conv22.i.1, %if.then21.i.1 ], [ %2, %while.end.i ], [ %conv17.i.1, %while.end.i.1.loopexit ]
  %nz.1.i.1 = phi i32 [ 1, %if.then21.i.1 ], [ %nz.1.i, %while.end.i ], [ %nz.1.i, %while.end.i.1.loopexit ]
  %shr14.i.2 = ashr i32 %conv2.i.i, 31
  %or15.i.2 = or i32 %shr14.i.2, 1
  %conv4.i.i.i.2 = sext i16 %29 to i32
  %conv6.i.i.i.2 = sext i16 %20 to i32
  %add7.i.i.i.2 = add nsw i32 %conv6.i.i.i.2, %conv4.i.i.i.2
  %sub16.i.i.i.2 = sub nsw i32 %conv4.i.i.i.2, %conv6.i.i.i.2
  %tobool16.i.251 = icmp eq i16 %1, 0
  br i1 %tobool16.i.251, label %while.end.i.2, label %while.body.i.2

while.cond.i.2:                                   ; preds = %while.body.i.2
  %tobool16.i.2 = icmp eq i32 %sub.i.2, 0
  br i1 %tobool16.i.2, label %while.end.i.2.loopexit, label %while.body.i.2

while.body.i.2:                                   ; preds = %while.end.i.1, %while.cond.i.2
  %level.0.i.252 = phi i32 [ %sub.i.2, %while.cond.i.2 ], [ %conv2.i.i, %while.end.i.1 ]
  %sub.i.2 = sub nsw i32 %level.0.i.252, %or15.i.2
  %conv17.i.2 = trunc i32 %sub.i.2 to i16
  %sext27 = shl i32 %sub.i.2, 16
  %conv2.i.i.i.2 = ashr exact i32 %sext27, 16
  %add.i.i.i.2 = add nsw i32 %conv2.i.i.i.2, %conv.i.i
  %sub.i22.i.i.2 = sub nsw i32 %conv.i.i, %conv2.i.i.i.2
  %add17.i23.i.i.2 = add nsw i32 %add7.i.i.i.2, %add.i.i.i.2
  %mul.i24.i.i.2 = mul nsw i32 %add17.i23.i.i.2, %dequant_mf
  %30 = lshr i32 %mul.i24.i.i.2, 5
  %31 = trunc i32 %30 to i16
  %conv19.i.i.i.2 = add i16 %31, 32
  %sub21.i.i.i.2 = sub nsw i32 %add.i.i.i.2, %add7.i.i.i.2
  %mul22.i.i.i.2 = mul nsw i32 %sub21.i.i.i.2, %dequant_mf
  %32 = lshr i32 %mul22.i.i.i.2, 5
  %33 = trunc i32 %32 to i16
  %conv25.i.i.i.2 = add i16 %33, 32
  %add27.i.i.i.2 = add nsw i32 %sub16.i.i.i.2, %sub.i22.i.i.2
  %mul28.i.i.i.2 = mul nsw i32 %add27.i.i.i.2, %dequant_mf
  %34 = lshr i32 %mul28.i.i.i.2, 5
  %35 = trunc i32 %34 to i16
  %conv31.i.i.i.2 = add i16 %35, 32
  %sub33.i.i.i.2 = sub nsw i32 %sub.i22.i.i.2, %sub16.i.i.i.2
  %mul34.i.i.i.2 = mul nsw i32 %sub33.i.i.i.2, %dequant_mf
  %36 = lshr i32 %mul34.i.i.i.2, 5
  %37 = trunc i32 %36 to i16
  %conv37.i.i.i.2 = add i16 %37, 32
  %xor12.i71.i.2 = xor i16 %conv19.i.i.i.2, %conv19.i.i
  %xor12.i.i3.2 = xor i16 %conv25.i.i, %conv25.i.i.i.2
  %or.i.i511.2 = or i16 %xor12.i.i3.2, %xor12.i71.i.2
  %xor12.i.i.2 = xor i16 %conv31.i.i, %conv31.i.i.i.2
  %or.i.i.228 = or i16 %or.i.i511.2, %xor12.i.i.2
  %xor12.i.i.1.2 = xor i16 %conv37.i.i, %conv37.i.i.i.2
  %or.i.i.1.229 = or i16 %or.i.i.228, %xor12.i.i.1.2
  %tobool20.i.2 = icmp ult i16 %or.i.i.1.229, 64
  br i1 %tobool20.i.2, label %while.cond.i.2, label %if.then21.i.2

if.then21.i.2:                                    ; preds = %while.body.i.2
  store i16 %conv17.i.2, i16* %arrayidx1.i.i, align 2, !tbaa !27
  %conv22.i.2 = trunc i32 %level.0.i.252 to i16
  store i16 %conv22.i.2, i16* %arrayidx1.i.i, align 2, !tbaa !27
  br label %while.end.i.2

while.end.i.2.loopexit:                           ; preds = %while.cond.i.2
  store i16 %conv17.i.2, i16* %arrayidx1.i.i, align 2, !tbaa !27
  br label %while.end.i.2

while.end.i.2:                                    ; preds = %while.end.i.2.loopexit, %while.end.i.1, %if.then21.i.2
  %38 = phi i16 [ %conv22.i.2, %if.then21.i.2 ], [ %1, %while.end.i.1 ], [ %conv17.i.2, %while.end.i.2.loopexit ]
  %nz.1.i.2 = phi i32 [ 1, %if.then21.i.2 ], [ %nz.1.i.1, %while.end.i.1 ], [ %nz.1.i.1, %while.end.i.2.loopexit ]
  %shr14.i.3 = ashr i32 %conv.i.i, 31
  %or15.i.3 = or i32 %shr14.i.3, 1
  %conv2.i.i.i.3 = sext i16 %38 to i32
  %conv4.i.i.i.3 = sext i16 %29 to i32
  %conv6.i.i.i.3 = sext i16 %20 to i32
  %add7.i.i.i.3 = add nsw i32 %conv6.i.i.i.3, %conv4.i.i.i.3
  %sub16.i.i.i.3 = sub nsw i32 %conv4.i.i.i.3, %conv6.i.i.i.3
  br label %while.cond.i.3

while.cond.i.3:                                   ; preds = %while.body.i.3, %while.end.i.2
  %level.0.i.3 = phi i32 [ %conv.i.i, %while.end.i.2 ], [ %sub.i.3, %while.body.i.3 ]
  %tobool16.i.3 = icmp eq i32 %level.0.i.3, 0
  br i1 %tobool16.i.3, label %optimize_chroma_dc_internal.exit, label %while.body.i.3

while.body.i.3:                                   ; preds = %while.cond.i.3
  %sub.i.3 = sub nsw i32 %level.0.i.3, %or15.i.3
  %conv17.i.3 = trunc i32 %sub.i.3 to i16
  store i16 %conv17.i.3, i16* %dct, align 2, !tbaa !27
  %sext30 = shl i32 %sub.i.3, 16
  %conv.i.i.i.3 = ashr exact i32 %sext30, 16
  %add.i.i.i.3 = add nsw i32 %conv.i.i.i.3, %conv2.i.i.i.3
  %sub.i22.i.i.3 = sub nsw i32 %conv.i.i.i.3, %conv2.i.i.i.3
  %add17.i23.i.i.3 = add nsw i32 %add7.i.i.i.3, %add.i.i.i.3
  %mul.i24.i.i.3 = mul nsw i32 %add17.i23.i.i.3, %dequant_mf
  %39 = lshr i32 %mul.i24.i.i.3, 5
  %40 = trunc i32 %39 to i16
  %conv19.i.i.i.3 = add i16 %40, 32
  %sub21.i.i.i.3 = sub nsw i32 %add.i.i.i.3, %add7.i.i.i.3
  %mul22.i.i.i.3 = mul nsw i32 %sub21.i.i.i.3, %dequant_mf
  %41 = lshr i32 %mul22.i.i.i.3, 5
  %42 = trunc i32 %41 to i16
  %conv25.i.i.i.3 = add i16 %42, 32
  %add27.i.i.i.3 = add nsw i32 %sub16.i.i.i.3, %sub.i22.i.i.3
  %mul28.i.i.i.3 = mul nsw i32 %add27.i.i.i.3, %dequant_mf
  %43 = lshr i32 %mul28.i.i.i.3, 5
  %44 = trunc i32 %43 to i16
  %conv31.i.i.i.3 = add i16 %44, 32
  %sub33.i.i.i.3 = sub nsw i32 %sub.i22.i.i.3, %sub16.i.i.i.3
  %mul34.i.i.i.3 = mul nsw i32 %sub33.i.i.i.3, %dequant_mf
  %45 = lshr i32 %mul34.i.i.i.3, 5
  %46 = trunc i32 %45 to i16
  %conv37.i.i.i.3 = add i16 %46, 32
  %xor12.i71.i.3 = xor i16 %conv19.i.i.i.3, %conv19.i.i
  %xor12.i.i3.3 = xor i16 %conv25.i.i, %conv25.i.i.i.3
  %or.i.i511.3 = or i16 %xor12.i.i3.3, %xor12.i71.i.3
  %xor12.i.i.3 = xor i16 %conv31.i.i, %conv31.i.i.i.3
  %or.i.i.331 = or i16 %or.i.i511.3, %xor12.i.i.3
  %xor12.i.i.1.3 = xor i16 %conv37.i.i, %conv37.i.i.i.3
  %or.i.i.1.332 = or i16 %or.i.i.331, %xor12.i.i.1.3
  %tobool20.i.3 = icmp ult i16 %or.i.i.1.332, 64
  br i1 %tobool20.i.3, label %while.cond.i.3, label %if.then21.i.3

if.then21.i.3:                                    ; preds = %while.body.i.3
  %conv22.i.3 = trunc i32 %level.0.i.3 to i16
  store i16 %conv22.i.3, i16* %dct, align 2, !tbaa !27
  br label %optimize_chroma_dc_internal.exit
}

; Function Attrs: nounwind
define internal i32 @optimize_chroma_2x4_dc(i16* nocapture %dct, i32 %dequant_mf) #1 {
entry:
  %dct_orig.i = alloca [8 x i16], align 4
  %0 = bitcast [8 x i16]* %dct_orig.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #4
  %arraydecay.i = getelementptr inbounds [8 x i16], [8 x i16]* %dct_orig.i, i32 0, i32 0
  %1 = load i16, i16* %dct, align 2, !tbaa !27
  %conv.i.i = sext i16 %1 to i32
  %arrayidx1.i.i = getelementptr inbounds i16, i16* %dct, i32 1
  %2 = load i16, i16* %arrayidx1.i.i, align 2, !tbaa !27
  %conv2.i.i = sext i16 %2 to i32
  %add.i.i = add nsw i32 %conv2.i.i, %conv.i.i
  %arrayidx3.i.i = getelementptr inbounds i16, i16* %dct, i32 2
  %3 = load i16, i16* %arrayidx3.i.i, align 2, !tbaa !27
  %conv4.i.i = sext i16 %3 to i32
  %arrayidx5.i.i = getelementptr inbounds i16, i16* %dct, i32 3
  %4 = load i16, i16* %arrayidx5.i.i, align 2, !tbaa !27
  %conv6.i.i = sext i16 %4 to i32
  %add7.i.i = add nsw i32 %conv6.i.i, %conv4.i.i
  %arrayidx8.i.i = getelementptr inbounds i16, i16* %dct, i32 4
  %5 = load i16, i16* %arrayidx8.i.i, align 2, !tbaa !27
  %conv9.i.i = sext i16 %5 to i32
  %arrayidx10.i.i = getelementptr inbounds i16, i16* %dct, i32 5
  %6 = load i16, i16* %arrayidx10.i.i, align 2, !tbaa !27
  %conv11.i.i = sext i16 %6 to i32
  %add12.i.i = add nsw i32 %conv11.i.i, %conv9.i.i
  %arrayidx13.i.i = getelementptr inbounds i16, i16* %dct, i32 6
  %7 = load i16, i16* %arrayidx13.i.i, align 2, !tbaa !27
  %conv14.i.i = sext i16 %7 to i32
  %arrayidx15.i.i = getelementptr inbounds i16, i16* %dct, i32 7
  %8 = load i16, i16* %arrayidx15.i.i, align 2, !tbaa !27
  %conv16.i.i = sext i16 %8 to i32
  %add17.i.i = add nsw i32 %conv16.i.i, %conv14.i.i
  %sub.i.i = sub nsw i32 %conv.i.i, %conv2.i.i
  %sub26.i.i = sub nsw i32 %conv4.i.i, %conv6.i.i
  %sub31.i.i = sub nsw i32 %conv9.i.i, %conv11.i.i
  %sub36.i.i = sub nsw i32 %conv14.i.i, %conv16.i.i
  %add37.i.i = add nsw i32 %add7.i.i, %add.i.i
  %add38.i.i = add nsw i32 %add17.i.i, %add12.i.i
  %add39.i.i = add nsw i32 %sub26.i.i, %sub.i.i
  %add40.i.i = add nsw i32 %sub36.i.i, %sub31.i.i
  %sub41.i.i = sub nsw i32 %add.i.i, %add7.i.i
  %sub42.i.i = sub nsw i32 %add12.i.i, %add17.i.i
  %sub43.i.i = sub nsw i32 %sub.i.i, %sub26.i.i
  %sub44.i.i = sub nsw i32 %sub31.i.i, %sub36.i.i
  %add45.i.i = add nsw i32 %add38.i.i, %add37.i.i
  %mul.i.i = mul nsw i32 %add45.i.i, %dequant_mf
  %add46.i.i = add nsw i32 %mul.i.i, 2080
  %9 = lshr i32 %add46.i.i, 6
  %conv47.i.i = trunc i32 %9 to i16
  store i16 %conv47.i.i, i16* %arraydecay.i, align 4, !tbaa !27
  %add49.i.i = add nsw i32 %add40.i.i, %add39.i.i
  %mul50.i.i = mul nsw i32 %add49.i.i, %dequant_mf
  %add51.i.i = add nsw i32 %mul50.i.i, 2080
  %10 = lshr i32 %add51.i.i, 6
  %conv53.i.i = trunc i32 %10 to i16
  %arrayidx54.i.i = getelementptr inbounds [8 x i16], [8 x i16]* %dct_orig.i, i32 0, i32 1
  store i16 %conv53.i.i, i16* %arrayidx54.i.i, align 2, !tbaa !27
  %sub55.i.i = sub nsw i32 %add37.i.i, %add38.i.i
  %mul56.i.i = mul nsw i32 %sub55.i.i, %dequant_mf
  %add57.i.i = add nsw i32 %mul56.i.i, 2080
  %11 = lshr i32 %add57.i.i, 6
  %conv59.i.i = trunc i32 %11 to i16
  %arrayidx60.i.i = getelementptr inbounds [8 x i16], [8 x i16]* %dct_orig.i, i32 0, i32 2
  store i16 %conv59.i.i, i16* %arrayidx60.i.i, align 4, !tbaa !27
  %sub61.i.i = sub nsw i32 %add39.i.i, %add40.i.i
  %mul62.i.i = mul nsw i32 %sub61.i.i, %dequant_mf
  %add63.i.i = add nsw i32 %mul62.i.i, 2080
  %12 = lshr i32 %add63.i.i, 6
  %conv65.i.i = trunc i32 %12 to i16
  %sub67.i.i = sub nsw i32 %sub41.i.i, %sub42.i.i
  %mul68.i.i = mul nsw i32 %sub67.i.i, %dequant_mf
  %add69.i.i = add nsw i32 %mul68.i.i, 2080
  %13 = lshr i32 %add69.i.i, 6
  %conv71.i.i = trunc i32 %13 to i16
  %arrayidx72.i.i = getelementptr inbounds [8 x i16], [8 x i16]* %dct_orig.i, i32 0, i32 4
  store i16 %conv71.i.i, i16* %arrayidx72.i.i, align 4, !tbaa !27
  %sub73.i.i = sub nsw i32 %sub43.i.i, %sub44.i.i
  %mul74.i.i = mul nsw i32 %sub73.i.i, %dequant_mf
  %add75.i.i = add nsw i32 %mul74.i.i, 2080
  %14 = lshr i32 %add75.i.i, 6
  %conv77.i.i = trunc i32 %14 to i16
  %arrayidx78.i.i = getelementptr inbounds [8 x i16], [8 x i16]* %dct_orig.i, i32 0, i32 5
  store i16 %conv77.i.i, i16* %arrayidx78.i.i, align 2, !tbaa !27
  %add79.i.i = add nsw i32 %sub42.i.i, %sub41.i.i
  %mul80.i.i = mul nsw i32 %add79.i.i, %dequant_mf
  %add81.i.i = add nsw i32 %mul80.i.i, 2080
  %15 = lshr i32 %add81.i.i, 6
  %conv83.i.i = trunc i32 %15 to i16
  %arrayidx84.i.i = getelementptr inbounds [8 x i16], [8 x i16]* %dct_orig.i, i32 0, i32 6
  store i16 %conv83.i.i, i16* %arrayidx84.i.i, align 4, !tbaa !27
  %add85.i.i = add nsw i32 %sub44.i.i, %sub43.i.i
  %mul86.i.i = mul nsw i32 %add85.i.i, %dequant_mf
  %add87.i.i = add nsw i32 %mul86.i.i, 2080
  %16 = lshr i32 %add87.i.i, 6
  %conv89.i.i = trunc i32 %16 to i16
  %arrayidx90.i.i = getelementptr inbounds [8 x i16], [8 x i16]* %dct_orig.i, i32 0, i32 7
  store i16 %conv89.i.i, i16* %arrayidx90.i.i, align 2, !tbaa !27
  %17 = getelementptr inbounds [8 x i16], [8 x i16]* %dct_orig.i, i32 0, i32 3
  store i16 %conv65.i.i, i16* %17, align 2
  %sext1216 = or i32 %9, %10
  %conv.i91519 = or i32 %sext1216, %11
  %or.i1822 = or i32 %conv.i91519, %12
  %or.i.12125 = or i32 %or.i1822, %13
  %or.i.22428 = or i32 %or.i.12125, %14
  %or.i.32731 = or i32 %or.i.22428, %15
  %or.i.43034 = or i32 %or.i.32731, %16
  %or.i.533 = shl i32 %or.i.43034, 16
  %or.i.6 = ashr exact i32 %or.i.533, 16
  %tobool3.i = icmp ugt i32 %or.i.6, 63
  br i1 %tobool3.i, label %if.end5.i, label %optimize_chroma_dc_internal.exit

if.end5.i:                                        ; preds = %entry
  %18 = load i16, i16* %arrayidx84.i.i, align 4
  %19 = load i16, i16* %arrayidx90.i.i, align 2
  br label %for.body11.i

for.body11.i:                                     ; preds = %while.end.i.for.body11.i_crit_edge, %if.end5.i
  %20 = phi i16 [ %8, %if.end5.i ], [ %.pre, %while.end.i.for.body11.i_crit_edge ]
  %nz.077.i = phi i32 [ 0, %if.end5.i ], [ %nz.1.i, %while.end.i.for.body11.i_crit_edge ]
  %coeff.076.i = phi i32 [ 7, %if.end5.i ], [ %dec.i, %while.end.i.for.body11.i_crit_edge ]
  %arrayidx12.i = getelementptr inbounds i16, i16* %dct, i32 %coeff.076.i
  %conv13.i = sext i16 %20 to i32
  %shr14.i = ashr i32 %conv13.i, 31
  %or15.i = or i32 %shr14.i, 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i, %for.body11.i
  %level.0.i = phi i32 [ %conv13.i, %for.body11.i ], [ %sub.i, %while.body.i ]
  %tobool16.i = icmp eq i32 %level.0.i, 0
  br i1 %tobool16.i, label %while.end.i, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %sub.i = sub nsw i32 %level.0.i, %or15.i
  %conv17.i = trunc i32 %sub.i to i16
  store i16 %conv17.i, i16* %arrayidx12.i, align 2, !tbaa !27
  %21 = load i16, i16* %dct, align 2, !tbaa !27
  %conv.i.i.i = sext i16 %21 to i32
  %22 = load i16, i16* %arrayidx1.i.i, align 2, !tbaa !27
  %conv2.i.i.i = sext i16 %22 to i32
  %add.i.i.i = add nsw i32 %conv2.i.i.i, %conv.i.i.i
  %23 = load i16, i16* %arrayidx3.i.i, align 2, !tbaa !27
  %conv4.i.i.i = sext i16 %23 to i32
  %24 = load i16, i16* %arrayidx5.i.i, align 2, !tbaa !27
  %conv6.i.i.i = sext i16 %24 to i32
  %add7.i.i.i = add nsw i32 %conv6.i.i.i, %conv4.i.i.i
  %25 = load i16, i16* %arrayidx8.i.i, align 2, !tbaa !27
  %conv9.i.i.i = sext i16 %25 to i32
  %26 = load i16, i16* %arrayidx10.i.i, align 2, !tbaa !27
  %conv11.i.i.i = sext i16 %26 to i32
  %add12.i.i.i = add nsw i32 %conv11.i.i.i, %conv9.i.i.i
  %27 = load i16, i16* %arrayidx13.i.i, align 2, !tbaa !27
  %conv14.i.i.i = sext i16 %27 to i32
  %28 = load i16, i16* %arrayidx15.i.i, align 2, !tbaa !27
  %conv16.i.i.i = sext i16 %28 to i32
  %add17.i.i.i = add nsw i32 %conv16.i.i.i, %conv14.i.i.i
  %sub.i.i.i = sub nsw i32 %conv.i.i.i, %conv2.i.i.i
  %sub26.i.i.i = sub nsw i32 %conv4.i.i.i, %conv6.i.i.i
  %sub31.i.i.i = sub nsw i32 %conv9.i.i.i, %conv11.i.i.i
  %sub36.i.i.i = sub nsw i32 %conv14.i.i.i, %conv16.i.i.i
  %add37.i.i.i = add nsw i32 %add7.i.i.i, %add.i.i.i
  %add38.i.i.i = add nsw i32 %add17.i.i.i, %add12.i.i.i
  %add39.i.i.i = add nsw i32 %sub26.i.i.i, %sub.i.i.i
  %add40.i.i.i = add nsw i32 %sub36.i.i.i, %sub31.i.i.i
  %sub41.i.i.i = sub nsw i32 %add.i.i.i, %add7.i.i.i
  %sub42.i.i.i = sub nsw i32 %add12.i.i.i, %add17.i.i.i
  %sub43.i.i.i = sub nsw i32 %sub.i.i.i, %sub26.i.i.i
  %sub44.i.i.i = sub nsw i32 %sub31.i.i.i, %sub36.i.i.i
  %add45.i.i.i = add nsw i32 %add38.i.i.i, %add37.i.i.i
  %mul.i.i.i = mul nsw i32 %add45.i.i.i, %dequant_mf
  %add46.i.i.i = add nsw i32 %mul.i.i.i, 2080
  %29 = lshr i32 %add46.i.i.i, 6
  %add49.i.i.i = add nsw i32 %add40.i.i.i, %add39.i.i.i
  %mul50.i.i.i = mul nsw i32 %add49.i.i.i, %dequant_mf
  %add51.i.i.i = add nsw i32 %mul50.i.i.i, 2080
  %30 = lshr i32 %add51.i.i.i, 6
  %sub55.i.i.i = sub nsw i32 %add37.i.i.i, %add38.i.i.i
  %mul56.i.i.i = mul nsw i32 %sub55.i.i.i, %dequant_mf
  %add57.i.i.i = add nsw i32 %mul56.i.i.i, 2080
  %31 = lshr i32 %add57.i.i.i, 6
  %sub61.i.i.i = sub nsw i32 %add39.i.i.i, %add40.i.i.i
  %mul62.i.i.i = mul nsw i32 %sub61.i.i.i, %dequant_mf
  %add63.i.i.i = add nsw i32 %mul62.i.i.i, 2080
  %32 = lshr i32 %add63.i.i.i, 6
  %sub67.i.i.i = sub nsw i32 %sub41.i.i.i, %sub42.i.i.i
  %mul68.i.i.i = mul nsw i32 %sub67.i.i.i, %dequant_mf
  %add69.i.i.i = add nsw i32 %mul68.i.i.i, 2080
  %33 = lshr i32 %add69.i.i.i, 6
  %sub73.i.i.i = sub nsw i32 %sub43.i.i.i, %sub44.i.i.i
  %mul74.i.i.i = mul nsw i32 %sub73.i.i.i, %dequant_mf
  %add75.i.i.i = add nsw i32 %mul74.i.i.i, 2080
  %34 = lshr i32 %add75.i.i.i, 6
  %add79.i.i.i = add nsw i32 %sub42.i.i.i, %sub41.i.i.i
  %mul80.i.i.i = mul nsw i32 %add79.i.i.i, %dequant_mf
  %add81.i.i.i = add nsw i32 %mul80.i.i.i, 2080
  %35 = lshr i32 %add81.i.i.i, 6
  %conv83.i.i.i = trunc i32 %35 to i16
  %add85.i.i.i = add nsw i32 %sub44.i.i.i, %sub43.i.i.i
  %mul86.i.i.i = mul nsw i32 %add85.i.i.i, %dequant_mf
  %add87.i.i.i = add nsw i32 %mul86.i.i.i, 2080
  %36 = lshr i32 %add87.i.i.i, 6
  %conv89.i.i.i = trunc i32 %36 to i16
  %xor12.i71.i1 = xor i32 %29, %9
  %xor12.i.i435 = xor i32 %10, %30
  %sext38 = or i32 %xor12.i71.i1, %xor12.i.i435
  %xor12.i.i39 = xor i32 %11, %31
  %xor.i72.i3741 = or i32 %sext38, %xor12.i.i39
  %xor12.i.i.142 = xor i32 %12, %32
  %or.i.i64044 = or i32 %xor.i72.i3741, %xor12.i.i.142
  %xor12.i.i.245 = xor i32 %13, %33
  %or.i.i4347 = or i32 %or.i.i64044, %xor12.i.i.245
  %xor12.i.i.348 = xor i32 %14, %34
  %or.i.i.14650 = or i32 %or.i.i4347, %xor12.i.i.348
  %or.i.i.249 = shl i32 %or.i.i.14650, 16
  %or.i.i.3 = ashr exact i32 %or.i.i.249, 16
  %xor12.i.i.4 = xor i16 %18, %conv83.i.i.i
  %xor.i.i.4 = sext i16 %xor12.i.i.4 to i32
  %or.i.i.4 = or i32 %or.i.i.3, %xor.i.i.4
  %xor12.i.i.5 = xor i16 %19, %conv89.i.i.i
  %xor.i.i.5 = sext i16 %xor12.i.i.5 to i32
  %or.i.i.5 = or i32 %or.i.i.4, %xor.i.i.5
  %tobool20.i = icmp ult i32 %or.i.i.5, 64
  br i1 %tobool20.i, label %while.cond.i, label %if.then21.i

if.then21.i:                                      ; preds = %while.body.i
  %conv22.i = trunc i32 %level.0.i to i16
  store i16 %conv22.i, i16* %arrayidx12.i, align 2, !tbaa !27
  br label %while.end.i

while.end.i:                                      ; preds = %while.cond.i, %if.then21.i
  %nz.1.i = phi i32 [ 1, %if.then21.i ], [ %nz.077.i, %while.cond.i ]
  %dec.i = add nsw i32 %coeff.076.i, -1
  %cmp9.i = icmp eq i32 %coeff.076.i, 0
  br i1 %cmp9.i, label %optimize_chroma_dc_internal.exit, label %while.end.i.for.body11.i_crit_edge

while.end.i.for.body11.i_crit_edge:               ; preds = %while.end.i
  %arrayidx12.i.phi.trans.insert = getelementptr inbounds i16, i16* %dct, i32 %dec.i
  %.pre = load i16, i16* %arrayidx12.i.phi.trans.insert, align 2, !tbaa !27
  br label %for.body11.i

optimize_chroma_dc_internal.exit:                 ; preds = %while.end.i, %entry
  %retval.0.i = phi i32 [ 0, %entry ], [ %nz.1.i, %while.end.i ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #4
  ret i32 %retval.0.i
}

; Function Attrs: nofree norecurse nounwind
define internal void @denoise_dct(i16* nocapture %dct, i32* nocapture %sum, i16* nocapture readonly %offset, i32 %size) #0 {
entry:
  %cmp28 = icmp sgt i32 %size, 0
  br i1 %cmp28, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.body, %entry
  ret void

for.body:                                         ; preds = %entry, %for.body
  %i.029 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i16, i16* %dct, i32 %i.029
  %0 = load i16, i16* %arrayidx, align 2, !tbaa !27
  %conv = sext i16 %0 to i32
  %shr = ashr i32 %conv, 31
  %add = add nsw i32 %shr, %conv
  %xor = xor i32 %add, %shr
  %arrayidx1 = getelementptr inbounds i32, i32* %sum, i32 %i.029
  %1 = load i32, i32* %arrayidx1, align 4, !tbaa !29
  %add2 = add i32 %xor, %1
  store i32 %add2, i32* %arrayidx1, align 4, !tbaa !29
  %arrayidx3 = getelementptr inbounds i16, i16* %offset, i32 %i.029
  %2 = load i16, i16* %arrayidx3, align 2, !tbaa !27
  %conv4 = zext i16 %2 to i32
  %sub = sub nsw i32 %xor, %conv4
  %cmp5 = icmp slt i32 %sub, 0
  %xor7 = xor i32 %sub, %shr
  %sub8 = sub nsw i32 %xor7, %shr
  %cond = select i1 %cmp5, i32 0, i32 %sub8
  %conv9 = trunc i32 %cond to i16
  store i16 %conv9, i16* %arrayidx, align 2, !tbaa !27
  %inc = add nuw nsw i32 %i.029, 1
  %exitcond = icmp eq i32 %inc, %size
  br i1 %exitcond, label %for.cond.cleanup, label %for.body
}

; Function Attrs: norecurse nounwind readonly
define internal i32 @decimate_score15(i16* nocapture readonly %dct) #2 {
entry:
  %add.ptr = getelementptr inbounds i16, i16* %dct, i32 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %land.rhs.i, %entry
  %idx.0.in.i = phi i32 [ 15, %entry ], [ %idx.0.i, %land.rhs.i ]
  %idx.0.i = add nsw i32 %idx.0.in.i, -1
  %cmp1.i = icmp eq i32 %idx.0.in.i, 0
  br i1 %cmp1.i, label %decimate_score_internal.exit, label %land.rhs.i

land.rhs.i:                                       ; preds = %while.cond.i
  %arrayidx.i = getelementptr inbounds i16, i16* %dct, i32 %idx.0.in.i
  %0 = load i16, i16* %arrayidx.i, align 2, !tbaa !27
  %cmp2.i = icmp eq i16 %0, 0
  br i1 %cmp2.i, label %while.cond.i, label %while.body7.i

while.body7.i:                                    ; preds = %land.rhs.i, %cleanup.i
  %idx.161.i = phi i32 [ %idx.2.lcssa.i, %cleanup.i ], [ %idx.0.i, %land.rhs.i ]
  %i_score.060.i = phi i32 [ %add27.i, %cleanup.i ], [ 0, %land.rhs.i ]
  %arrayidx9.i = getelementptr inbounds i16, i16* %add.ptr, i32 %idx.161.i
  %1 = load i16, i16* %arrayidx9.i, align 2, !tbaa !27
  %conv10.i = sext i16 %1 to i32
  %add.i = add nsw i32 %conv10.i, 1
  %cmp11.i = icmp ugt i32 %add.i, 2
  br i1 %cmp11.i, label %decimate_score_internal.exit, label %while.cond13.preheader.i

while.cond13.preheader.i:                         ; preds = %while.body7.i
  %idx.252.i = add nsw i32 %idx.161.i, -1
  %cmp1453.i = icmp sgt i32 %idx.161.i, 0
  br i1 %cmp1453.i, label %land.rhs16.i, label %cleanup.i

land.rhs16.i:                                     ; preds = %while.cond13.preheader.i, %while.body22.i
  %idx.255.i = phi i32 [ %idx.2.i, %while.body22.i ], [ %idx.252.i, %while.cond13.preheader.i ]
  %i_run.054.i = phi i32 [ %inc.i, %while.body22.i ], [ 0, %while.cond13.preheader.i ]
  %arrayidx17.i = getelementptr inbounds i16, i16* %add.ptr, i32 %idx.255.i
  %2 = load i16, i16* %arrayidx17.i, align 2, !tbaa !27
  %cmp19.i = icmp eq i16 %2, 0
  br i1 %cmp19.i, label %while.body22.i, label %cleanup.i

while.body22.i:                                   ; preds = %land.rhs16.i
  %inc.i = add nuw i32 %i_run.054.i, 1
  %idx.2.i = add nsw i32 %idx.255.i, -1
  %exitcond.i = icmp eq i32 %inc.i, %idx.161.i
  br i1 %exitcond.i, label %cleanup.thread.i, label %land.rhs16.i

cleanup.thread.i:                                 ; preds = %while.body22.i
  %arrayidx2566.i = getelementptr inbounds [16 x i8], [16 x i8]* @x264_decimate_table4, i32 0, i32 %idx.161.i
  %3 = load i8, i8* %arrayidx2566.i, align 1, !tbaa !31
  %conv2667.i = zext i8 %3 to i32
  %add2768.i = add nuw nsw i32 %i_score.060.i, %conv2667.i
  br label %decimate_score_internal.exit

cleanup.i:                                        ; preds = %land.rhs16.i, %while.cond13.preheader.i
  %i_run.0.lcssa.i = phi i32 [ 0, %while.cond13.preheader.i ], [ %i_run.054.i, %land.rhs16.i ]
  %idx.2.lcssa.i = phi i32 [ %idx.252.i, %while.cond13.preheader.i ], [ %idx.255.i, %land.rhs16.i ]
  %arrayidx25.i = getelementptr inbounds [16 x i8], [16 x i8]* @x264_decimate_table4, i32 0, i32 %i_run.0.lcssa.i
  %4 = load i8, i8* %arrayidx25.i, align 1, !tbaa !31
  %conv26.i = zext i8 %4 to i32
  %add27.i = add nuw nsw i32 %i_score.060.i, %conv26.i
  %cmp5.i = icmp sgt i32 %idx.2.lcssa.i, -1
  br i1 %cmp5.i, label %while.body7.i, label %decimate_score_internal.exit

decimate_score_internal.exit:                     ; preds = %while.cond.i, %while.body7.i, %cleanup.i, %cleanup.thread.i
  %retval.2.i = phi i32 [ %add2768.i, %cleanup.thread.i ], [ %add27.i, %cleanup.i ], [ 9, %while.body7.i ], [ 0, %while.cond.i ]
  ret i32 %retval.2.i
}

; Function Attrs: norecurse nounwind readonly
define internal i32 @decimate_score16(i16* nocapture readonly %dct) #2 {
entry:
  br label %while.cond.i

while.cond.i:                                     ; preds = %land.rhs.i, %entry
  %idx.0.in.i = phi i32 [ 16, %entry ], [ %idx.0.i, %land.rhs.i ]
  %idx.0.i = add nsw i32 %idx.0.in.i, -1
  %cmp1.i = icmp eq i32 %idx.0.in.i, 0
  br i1 %cmp1.i, label %decimate_score_internal.exit, label %land.rhs.i

land.rhs.i:                                       ; preds = %while.cond.i
  %arrayidx.i = getelementptr inbounds i16, i16* %dct, i32 %idx.0.i
  %0 = load i16, i16* %arrayidx.i, align 2, !tbaa !27
  %cmp2.i = icmp eq i16 %0, 0
  br i1 %cmp2.i, label %while.cond.i, label %while.body7.i.preheader

while.body7.i.preheader:                          ; preds = %land.rhs.i
  %conv10.i25 = sext i16 %0 to i32
  %add.i26 = add nsw i32 %conv10.i25, 1
  %cmp11.i27 = icmp ugt i32 %add.i26, 2
  br i1 %cmp11.i27, label %decimate_score_internal.exit, label %while.cond13.preheader.i

while.cond13.preheader.i:                         ; preds = %while.body7.i.preheader, %cleanup.i.while.body7.i_crit_edge
  %i_score.060.i29 = phi i32 [ %add27.i, %cleanup.i.while.body7.i_crit_edge ], [ 0, %while.body7.i.preheader ]
  %idx.161.i28 = phi i32 [ %idx.2.lcssa.i, %cleanup.i.while.body7.i_crit_edge ], [ %idx.0.i, %while.body7.i.preheader ]
  %idx.252.i = add nsw i32 %idx.161.i28, -1
  %cmp1453.i = icmp sgt i32 %idx.161.i28, 0
  br i1 %cmp1453.i, label %land.rhs16.i, label %cleanup.i

land.rhs16.i:                                     ; preds = %while.cond13.preheader.i, %while.body22.i
  %idx.255.i = phi i32 [ %idx.2.i, %while.body22.i ], [ %idx.252.i, %while.cond13.preheader.i ]
  %i_run.054.i = phi i32 [ %inc.i, %while.body22.i ], [ 0, %while.cond13.preheader.i ]
  %arrayidx17.i = getelementptr inbounds i16, i16* %dct, i32 %idx.255.i
  %1 = load i16, i16* %arrayidx17.i, align 2, !tbaa !27
  %cmp19.i = icmp eq i16 %1, 0
  br i1 %cmp19.i, label %while.body22.i, label %cleanup.i

while.body22.i:                                   ; preds = %land.rhs16.i
  %inc.i = add nuw i32 %i_run.054.i, 1
  %idx.2.i = add nsw i32 %idx.255.i, -1
  %exitcond.i = icmp eq i32 %inc.i, %idx.161.i28
  br i1 %exitcond.i, label %cleanup.thread.i, label %land.rhs16.i

cleanup.thread.i:                                 ; preds = %while.body22.i
  %arrayidx2566.i = getelementptr inbounds [16 x i8], [16 x i8]* @x264_decimate_table4, i32 0, i32 %idx.161.i28
  %2 = load i8, i8* %arrayidx2566.i, align 1, !tbaa !31
  %conv2667.i = zext i8 %2 to i32
  %add2768.i = add nuw nsw i32 %i_score.060.i29, %conv2667.i
  br label %decimate_score_internal.exit

cleanup.i:                                        ; preds = %land.rhs16.i, %while.cond13.preheader.i
  %i_run.0.lcssa.i = phi i32 [ 0, %while.cond13.preheader.i ], [ %i_run.054.i, %land.rhs16.i ]
  %idx.2.lcssa.i = phi i32 [ %idx.252.i, %while.cond13.preheader.i ], [ %idx.255.i, %land.rhs16.i ]
  %arrayidx25.i = getelementptr inbounds [16 x i8], [16 x i8]* @x264_decimate_table4, i32 0, i32 %i_run.0.lcssa.i
  %3 = load i8, i8* %arrayidx25.i, align 1, !tbaa !31
  %conv26.i = zext i8 %3 to i32
  %add27.i = add nuw nsw i32 %i_score.060.i29, %conv26.i
  %cmp5.i = icmp sgt i32 %idx.2.lcssa.i, -1
  br i1 %cmp5.i, label %cleanup.i.while.body7.i_crit_edge, label %decimate_score_internal.exit

cleanup.i.while.body7.i_crit_edge:                ; preds = %cleanup.i
  %arrayidx9.i.phi.trans.insert = getelementptr inbounds i16, i16* %dct, i32 %idx.2.lcssa.i
  %.pre = load i16, i16* %arrayidx9.i.phi.trans.insert, align 2, !tbaa !27
  %conv10.i = sext i16 %.pre to i32
  %add.i = add nsw i32 %conv10.i, 1
  %cmp11.i = icmp ugt i32 %add.i, 2
  br i1 %cmp11.i, label %decimate_score_internal.exit, label %while.cond13.preheader.i

decimate_score_internal.exit:                     ; preds = %while.cond.i, %cleanup.i, %cleanup.i.while.body7.i_crit_edge, %while.body7.i.preheader, %cleanup.thread.i
  %retval.2.i = phi i32 [ %add2768.i, %cleanup.thread.i ], [ 9, %while.body7.i.preheader ], [ 9, %cleanup.i.while.body7.i_crit_edge ], [ %add27.i, %cleanup.i ], [ 0, %while.cond.i ]
  ret i32 %retval.2.i
}

; Function Attrs: norecurse nounwind readonly
define internal i32 @decimate_score64(i16* nocapture readonly %dct) #2 {
entry:
  br label %while.cond.i

while.cond.i:                                     ; preds = %land.rhs.i, %entry
  %idx.0.in.i = phi i32 [ 64, %entry ], [ %idx.0.i, %land.rhs.i ]
  %idx.0.i = add nsw i32 %idx.0.in.i, -1
  %cmp1.i = icmp eq i32 %idx.0.in.i, 0
  br i1 %cmp1.i, label %decimate_score_internal.exit, label %land.rhs.i

land.rhs.i:                                       ; preds = %while.cond.i
  %arrayidx.i = getelementptr inbounds i16, i16* %dct, i32 %idx.0.i
  %0 = load i16, i16* %arrayidx.i, align 2, !tbaa !27
  %cmp2.i = icmp eq i16 %0, 0
  br i1 %cmp2.i, label %while.cond.i, label %while.body7.i.preheader

while.body7.i.preheader:                          ; preds = %land.rhs.i
  %conv10.i25 = sext i16 %0 to i32
  %add.i26 = add nsw i32 %conv10.i25, 1
  %cmp11.i27 = icmp ugt i32 %add.i26, 2
  br i1 %cmp11.i27, label %decimate_score_internal.exit, label %while.cond13.preheader.i

while.cond13.preheader.i:                         ; preds = %while.body7.i.preheader, %cleanup.i.while.body7.i_crit_edge
  %i_score.060.i29 = phi i32 [ %add27.i, %cleanup.i.while.body7.i_crit_edge ], [ 0, %while.body7.i.preheader ]
  %idx.161.i28 = phi i32 [ %idx.2.lcssa.i, %cleanup.i.while.body7.i_crit_edge ], [ %idx.0.i, %while.body7.i.preheader ]
  %idx.252.i = add nsw i32 %idx.161.i28, -1
  %cmp1453.i = icmp sgt i32 %idx.161.i28, 0
  br i1 %cmp1453.i, label %land.rhs16.i, label %cleanup.i

land.rhs16.i:                                     ; preds = %while.cond13.preheader.i, %while.body22.i
  %idx.255.i = phi i32 [ %idx.2.i, %while.body22.i ], [ %idx.252.i, %while.cond13.preheader.i ]
  %i_run.054.i = phi i32 [ %inc.i, %while.body22.i ], [ 0, %while.cond13.preheader.i ]
  %arrayidx17.i = getelementptr inbounds i16, i16* %dct, i32 %idx.255.i
  %1 = load i16, i16* %arrayidx17.i, align 2, !tbaa !27
  %cmp19.i = icmp eq i16 %1, 0
  br i1 %cmp19.i, label %while.body22.i, label %cleanup.i

while.body22.i:                                   ; preds = %land.rhs16.i
  %inc.i = add nuw i32 %i_run.054.i, 1
  %idx.2.i = add nsw i32 %idx.255.i, -1
  %exitcond.i = icmp eq i32 %inc.i, %idx.161.i28
  br i1 %exitcond.i, label %cleanup.thread.i, label %land.rhs16.i

cleanup.thread.i:                                 ; preds = %while.body22.i
  %arrayidx2566.i = getelementptr inbounds [64 x i8], [64 x i8]* @x264_decimate_table8, i32 0, i32 %idx.161.i28
  %2 = load i8, i8* %arrayidx2566.i, align 1, !tbaa !31
  %conv2667.i = zext i8 %2 to i32
  %add2768.i = add nuw nsw i32 %i_score.060.i29, %conv2667.i
  br label %decimate_score_internal.exit

cleanup.i:                                        ; preds = %land.rhs16.i, %while.cond13.preheader.i
  %i_run.0.lcssa.i = phi i32 [ 0, %while.cond13.preheader.i ], [ %i_run.054.i, %land.rhs16.i ]
  %idx.2.lcssa.i = phi i32 [ %idx.252.i, %while.cond13.preheader.i ], [ %idx.255.i, %land.rhs16.i ]
  %arrayidx25.i = getelementptr inbounds [64 x i8], [64 x i8]* @x264_decimate_table8, i32 0, i32 %i_run.0.lcssa.i
  %3 = load i8, i8* %arrayidx25.i, align 1, !tbaa !31
  %conv26.i = zext i8 %3 to i32
  %add27.i = add nuw nsw i32 %i_score.060.i29, %conv26.i
  %cmp5.i = icmp sgt i32 %idx.2.lcssa.i, -1
  br i1 %cmp5.i, label %cleanup.i.while.body7.i_crit_edge, label %decimate_score_internal.exit

cleanup.i.while.body7.i_crit_edge:                ; preds = %cleanup.i
  %arrayidx9.i.phi.trans.insert = getelementptr inbounds i16, i16* %dct, i32 %idx.2.lcssa.i
  %.pre = load i16, i16* %arrayidx9.i.phi.trans.insert, align 2, !tbaa !27
  %conv10.i = sext i16 %.pre to i32
  %add.i = add nsw i32 %conv10.i, 1
  %cmp11.i = icmp ugt i32 %add.i, 2
  br i1 %cmp11.i, label %decimate_score_internal.exit, label %while.cond13.preheader.i

decimate_score_internal.exit:                     ; preds = %while.cond.i, %cleanup.i, %cleanup.i.while.body7.i_crit_edge, %while.body7.i.preheader, %cleanup.thread.i
  %retval.2.i = phi i32 [ %add2768.i, %cleanup.thread.i ], [ 9, %while.body7.i.preheader ], [ 9, %cleanup.i.while.body7.i_crit_edge ], [ %add27.i, %cleanup.i ], [ 0, %while.cond.i ]
  ret i32 %retval.2.i
}

; Function Attrs: norecurse nounwind readonly
define internal i32 @coeff_last4(i16* nocapture readonly %l) #2 {
entry:
  %arrayidx = getelementptr inbounds i16, i16* %l, i32 3
  %0 = load i16, i16* %arrayidx, align 2, !tbaa !27
  %cmp1 = icmp eq i16 %0, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %entry
  %arrayidx.1 = getelementptr inbounds i16, i16* %l, i32 2
  %1 = load i16, i16* %arrayidx.1, align 2, !tbaa !27
  %cmp1.1 = icmp eq i16 %1, 0
  br i1 %cmp1.1, label %while.body.1, label %while.end

while.end:                                        ; preds = %while.body.1, %while.body, %entry
  %i_last.0.lcssa = phi i32 [ 3, %entry ], [ 2, %while.body ], [ 1, %while.body.1 ]
  ret i32 %i_last.0.lcssa

while.body.1:                                     ; preds = %while.body
  %arrayidx.2 = getelementptr inbounds i16, i16* %l, i32 1
  %2 = load i16, i16* %arrayidx.2, align 2, !tbaa !27
  %cmp1.2 = icmp eq i16 %2, 0
  br i1 %cmp1.2, label %while.body.2, label %while.end

while.body.2:                                     ; preds = %while.body.1
  %3 = load i16, i16* %l, align 2, !tbaa !27
  %cmp1.3 = icmp eq i16 %3, 0
  %spec.select = sext i1 %cmp1.3 to i32
  ret i32 %spec.select
}

; Function Attrs: norecurse nounwind readonly
define internal i32 @coeff_last8(i16* nocapture readonly %l) #2 {
entry:
  %arrayidx = getelementptr inbounds i16, i16* %l, i32 7
  %0 = load i16, i16* %arrayidx, align 2, !tbaa !27
  %cmp1 = icmp eq i16 %0, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %entry
  %arrayidx.1 = getelementptr inbounds i16, i16* %l, i32 6
  %1 = load i16, i16* %arrayidx.1, align 2, !tbaa !27
  %cmp1.1 = icmp eq i16 %1, 0
  br i1 %cmp1.1, label %while.body.1, label %while.end

while.end:                                        ; preds = %while.body.5, %while.body.4, %while.body.3, %while.body.2, %while.body.1, %while.body, %entry
  %i_last.0.lcssa = phi i32 [ 7, %entry ], [ 6, %while.body ], [ 5, %while.body.1 ], [ 4, %while.body.2 ], [ 3, %while.body.3 ], [ 2, %while.body.4 ], [ 1, %while.body.5 ]
  ret i32 %i_last.0.lcssa

while.body.1:                                     ; preds = %while.body
  %arrayidx.2 = getelementptr inbounds i16, i16* %l, i32 5
  %2 = load i16, i16* %arrayidx.2, align 2, !tbaa !27
  %cmp1.2 = icmp eq i16 %2, 0
  br i1 %cmp1.2, label %while.body.2, label %while.end

while.body.2:                                     ; preds = %while.body.1
  %arrayidx.3 = getelementptr inbounds i16, i16* %l, i32 4
  %3 = load i16, i16* %arrayidx.3, align 2, !tbaa !27
  %cmp1.3 = icmp eq i16 %3, 0
  br i1 %cmp1.3, label %while.body.3, label %while.end

while.body.3:                                     ; preds = %while.body.2
  %arrayidx.4 = getelementptr inbounds i16, i16* %l, i32 3
  %4 = load i16, i16* %arrayidx.4, align 2, !tbaa !27
  %cmp1.4 = icmp eq i16 %4, 0
  br i1 %cmp1.4, label %while.body.4, label %while.end

while.body.4:                                     ; preds = %while.body.3
  %arrayidx.5 = getelementptr inbounds i16, i16* %l, i32 2
  %5 = load i16, i16* %arrayidx.5, align 2, !tbaa !27
  %cmp1.5 = icmp eq i16 %5, 0
  br i1 %cmp1.5, label %while.body.5, label %while.end

while.body.5:                                     ; preds = %while.body.4
  %arrayidx.6 = getelementptr inbounds i16, i16* %l, i32 1
  %6 = load i16, i16* %arrayidx.6, align 2, !tbaa !27
  %cmp1.6 = icmp eq i16 %6, 0
  br i1 %cmp1.6, label %while.body.6, label %while.end

while.body.6:                                     ; preds = %while.body.5
  %7 = load i16, i16* %l, align 2, !tbaa !27
  %cmp1.7 = icmp eq i16 %7, 0
  %spec.select = sext i1 %cmp1.7 to i32
  ret i32 %spec.select
}

; Function Attrs: norecurse nounwind readonly
define internal i32 @coeff_last15(i16* nocapture readonly %l) #2 {
entry:
  %arrayidx = getelementptr inbounds i16, i16* %l, i32 14
  %0 = load i16, i16* %arrayidx, align 2, !tbaa !27
  %cmp1 = icmp eq i16 %0, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %entry
  %arrayidx.1 = getelementptr inbounds i16, i16* %l, i32 13
  %1 = load i16, i16* %arrayidx.1, align 2, !tbaa !27
  %cmp1.1 = icmp eq i16 %1, 0
  br i1 %cmp1.1, label %while.body.1, label %while.end

while.end:                                        ; preds = %while.body.12, %while.body.11, %while.body.10, %while.body.9, %while.body.8, %while.body.7, %while.body.6, %while.body.5, %while.body.4, %while.body.3, %while.body.2, %while.body.1, %while.body, %entry
  %i_last.0.lcssa = phi i32 [ 14, %entry ], [ 13, %while.body ], [ 12, %while.body.1 ], [ 11, %while.body.2 ], [ 10, %while.body.3 ], [ 9, %while.body.4 ], [ 8, %while.body.5 ], [ 7, %while.body.6 ], [ 6, %while.body.7 ], [ 5, %while.body.8 ], [ 4, %while.body.9 ], [ 3, %while.body.10 ], [ 2, %while.body.11 ], [ 1, %while.body.12 ]
  ret i32 %i_last.0.lcssa

while.body.1:                                     ; preds = %while.body
  %arrayidx.2 = getelementptr inbounds i16, i16* %l, i32 12
  %2 = load i16, i16* %arrayidx.2, align 2, !tbaa !27
  %cmp1.2 = icmp eq i16 %2, 0
  br i1 %cmp1.2, label %while.body.2, label %while.end

while.body.2:                                     ; preds = %while.body.1
  %arrayidx.3 = getelementptr inbounds i16, i16* %l, i32 11
  %3 = load i16, i16* %arrayidx.3, align 2, !tbaa !27
  %cmp1.3 = icmp eq i16 %3, 0
  br i1 %cmp1.3, label %while.body.3, label %while.end

while.body.3:                                     ; preds = %while.body.2
  %arrayidx.4 = getelementptr inbounds i16, i16* %l, i32 10
  %4 = load i16, i16* %arrayidx.4, align 2, !tbaa !27
  %cmp1.4 = icmp eq i16 %4, 0
  br i1 %cmp1.4, label %while.body.4, label %while.end

while.body.4:                                     ; preds = %while.body.3
  %arrayidx.5 = getelementptr inbounds i16, i16* %l, i32 9
  %5 = load i16, i16* %arrayidx.5, align 2, !tbaa !27
  %cmp1.5 = icmp eq i16 %5, 0
  br i1 %cmp1.5, label %while.body.5, label %while.end

while.body.5:                                     ; preds = %while.body.4
  %arrayidx.6 = getelementptr inbounds i16, i16* %l, i32 8
  %6 = load i16, i16* %arrayidx.6, align 2, !tbaa !27
  %cmp1.6 = icmp eq i16 %6, 0
  br i1 %cmp1.6, label %while.body.6, label %while.end

while.body.6:                                     ; preds = %while.body.5
  %arrayidx.7 = getelementptr inbounds i16, i16* %l, i32 7
  %7 = load i16, i16* %arrayidx.7, align 2, !tbaa !27
  %cmp1.7 = icmp eq i16 %7, 0
  br i1 %cmp1.7, label %while.body.7, label %while.end

while.body.7:                                     ; preds = %while.body.6
  %arrayidx.8 = getelementptr inbounds i16, i16* %l, i32 6
  %8 = load i16, i16* %arrayidx.8, align 2, !tbaa !27
  %cmp1.8 = icmp eq i16 %8, 0
  br i1 %cmp1.8, label %while.body.8, label %while.end

while.body.8:                                     ; preds = %while.body.7
  %arrayidx.9 = getelementptr inbounds i16, i16* %l, i32 5
  %9 = load i16, i16* %arrayidx.9, align 2, !tbaa !27
  %cmp1.9 = icmp eq i16 %9, 0
  br i1 %cmp1.9, label %while.body.9, label %while.end

while.body.9:                                     ; preds = %while.body.8
  %arrayidx.10 = getelementptr inbounds i16, i16* %l, i32 4
  %10 = load i16, i16* %arrayidx.10, align 2, !tbaa !27
  %cmp1.10 = icmp eq i16 %10, 0
  br i1 %cmp1.10, label %while.body.10, label %while.end

while.body.10:                                    ; preds = %while.body.9
  %arrayidx.11 = getelementptr inbounds i16, i16* %l, i32 3
  %11 = load i16, i16* %arrayidx.11, align 2, !tbaa !27
  %cmp1.11 = icmp eq i16 %11, 0
  br i1 %cmp1.11, label %while.body.11, label %while.end

while.body.11:                                    ; preds = %while.body.10
  %arrayidx.12 = getelementptr inbounds i16, i16* %l, i32 2
  %12 = load i16, i16* %arrayidx.12, align 2, !tbaa !27
  %cmp1.12 = icmp eq i16 %12, 0
  br i1 %cmp1.12, label %while.body.12, label %while.end

while.body.12:                                    ; preds = %while.body.11
  %arrayidx.13 = getelementptr inbounds i16, i16* %l, i32 1
  %13 = load i16, i16* %arrayidx.13, align 2, !tbaa !27
  %cmp1.13 = icmp eq i16 %13, 0
  br i1 %cmp1.13, label %while.body.13, label %while.end

while.body.13:                                    ; preds = %while.body.12
  %14 = load i16, i16* %l, align 2, !tbaa !27
  %cmp1.14 = icmp eq i16 %14, 0
  %spec.select = sext i1 %cmp1.14 to i32
  ret i32 %spec.select
}

; Function Attrs: norecurse nounwind readonly
define internal i32 @coeff_last16(i16* nocapture readonly %l) #2 {
entry:
  %arrayidx = getelementptr inbounds i16, i16* %l, i32 15
  %0 = load i16, i16* %arrayidx, align 2, !tbaa !27
  %cmp1 = icmp eq i16 %0, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %entry
  %arrayidx.1 = getelementptr inbounds i16, i16* %l, i32 14
  %1 = load i16, i16* %arrayidx.1, align 2, !tbaa !27
  %cmp1.1 = icmp eq i16 %1, 0
  br i1 %cmp1.1, label %while.body.1, label %while.end

while.end:                                        ; preds = %while.body.13, %while.body.12, %while.body.11, %while.body.10, %while.body.9, %while.body.8, %while.body.7, %while.body.6, %while.body.5, %while.body.4, %while.body.3, %while.body.2, %while.body.1, %while.body, %entry
  %i_last.0.lcssa = phi i32 [ 15, %entry ], [ 14, %while.body ], [ 13, %while.body.1 ], [ 12, %while.body.2 ], [ 11, %while.body.3 ], [ 10, %while.body.4 ], [ 9, %while.body.5 ], [ 8, %while.body.6 ], [ 7, %while.body.7 ], [ 6, %while.body.8 ], [ 5, %while.body.9 ], [ 4, %while.body.10 ], [ 3, %while.body.11 ], [ 2, %while.body.12 ], [ 1, %while.body.13 ]
  ret i32 %i_last.0.lcssa

while.body.1:                                     ; preds = %while.body
  %arrayidx.2 = getelementptr inbounds i16, i16* %l, i32 13
  %2 = load i16, i16* %arrayidx.2, align 2, !tbaa !27
  %cmp1.2 = icmp eq i16 %2, 0
  br i1 %cmp1.2, label %while.body.2, label %while.end

while.body.2:                                     ; preds = %while.body.1
  %arrayidx.3 = getelementptr inbounds i16, i16* %l, i32 12
  %3 = load i16, i16* %arrayidx.3, align 2, !tbaa !27
  %cmp1.3 = icmp eq i16 %3, 0
  br i1 %cmp1.3, label %while.body.3, label %while.end

while.body.3:                                     ; preds = %while.body.2
  %arrayidx.4 = getelementptr inbounds i16, i16* %l, i32 11
  %4 = load i16, i16* %arrayidx.4, align 2, !tbaa !27
  %cmp1.4 = icmp eq i16 %4, 0
  br i1 %cmp1.4, label %while.body.4, label %while.end

while.body.4:                                     ; preds = %while.body.3
  %arrayidx.5 = getelementptr inbounds i16, i16* %l, i32 10
  %5 = load i16, i16* %arrayidx.5, align 2, !tbaa !27
  %cmp1.5 = icmp eq i16 %5, 0
  br i1 %cmp1.5, label %while.body.5, label %while.end

while.body.5:                                     ; preds = %while.body.4
  %arrayidx.6 = getelementptr inbounds i16, i16* %l, i32 9
  %6 = load i16, i16* %arrayidx.6, align 2, !tbaa !27
  %cmp1.6 = icmp eq i16 %6, 0
  br i1 %cmp1.6, label %while.body.6, label %while.end

while.body.6:                                     ; preds = %while.body.5
  %arrayidx.7 = getelementptr inbounds i16, i16* %l, i32 8
  %7 = load i16, i16* %arrayidx.7, align 2, !tbaa !27
  %cmp1.7 = icmp eq i16 %7, 0
  br i1 %cmp1.7, label %while.body.7, label %while.end

while.body.7:                                     ; preds = %while.body.6
  %arrayidx.8 = getelementptr inbounds i16, i16* %l, i32 7
  %8 = load i16, i16* %arrayidx.8, align 2, !tbaa !27
  %cmp1.8 = icmp eq i16 %8, 0
  br i1 %cmp1.8, label %while.body.8, label %while.end

while.body.8:                                     ; preds = %while.body.7
  %arrayidx.9 = getelementptr inbounds i16, i16* %l, i32 6
  %9 = load i16, i16* %arrayidx.9, align 2, !tbaa !27
  %cmp1.9 = icmp eq i16 %9, 0
  br i1 %cmp1.9, label %while.body.9, label %while.end

while.body.9:                                     ; preds = %while.body.8
  %arrayidx.10 = getelementptr inbounds i16, i16* %l, i32 5
  %10 = load i16, i16* %arrayidx.10, align 2, !tbaa !27
  %cmp1.10 = icmp eq i16 %10, 0
  br i1 %cmp1.10, label %while.body.10, label %while.end

while.body.10:                                    ; preds = %while.body.9
  %arrayidx.11 = getelementptr inbounds i16, i16* %l, i32 4
  %11 = load i16, i16* %arrayidx.11, align 2, !tbaa !27
  %cmp1.11 = icmp eq i16 %11, 0
  br i1 %cmp1.11, label %while.body.11, label %while.end

while.body.11:                                    ; preds = %while.body.10
  %arrayidx.12 = getelementptr inbounds i16, i16* %l, i32 3
  %12 = load i16, i16* %arrayidx.12, align 2, !tbaa !27
  %cmp1.12 = icmp eq i16 %12, 0
  br i1 %cmp1.12, label %while.body.12, label %while.end

while.body.12:                                    ; preds = %while.body.11
  %arrayidx.13 = getelementptr inbounds i16, i16* %l, i32 2
  %13 = load i16, i16* %arrayidx.13, align 2, !tbaa !27
  %cmp1.13 = icmp eq i16 %13, 0
  br i1 %cmp1.13, label %while.body.13, label %while.end

while.body.13:                                    ; preds = %while.body.12
  %arrayidx.14 = getelementptr inbounds i16, i16* %l, i32 1
  %14 = load i16, i16* %arrayidx.14, align 2, !tbaa !27
  %cmp1.14 = icmp eq i16 %14, 0
  br i1 %cmp1.14, label %while.body.14, label %while.end

while.body.14:                                    ; preds = %while.body.13
  %15 = load i16, i16* %l, align 2, !tbaa !27
  %cmp1.15 = icmp eq i16 %15, 0
  %spec.select = sext i1 %cmp1.15 to i32
  ret i32 %spec.select
}

; Function Attrs: norecurse nounwind readonly
define internal i32 @coeff_last64(i16* nocapture readonly %l) #2 {
entry:
  br label %land.rhs

land.rhs:                                         ; preds = %while.body, %entry
  %i_last.06 = phi i32 [ 63, %entry ], [ %dec, %while.body ]
  %arrayidx = getelementptr inbounds i16, i16* %l, i32 %i_last.06
  %0 = load i16, i16* %arrayidx, align 2, !tbaa !27
  %cmp1 = icmp eq i16 %0, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %dec = add nsw i32 %i_last.06, -1
  %cmp = icmp eq i32 %i_last.06, 0
  br i1 %cmp, label %while.end, label %land.rhs

while.end:                                        ; preds = %while.body, %land.rhs
  %i_last.0.lcssa = phi i32 [ -1, %while.body ], [ %i_last.06, %land.rhs ]
  ret i32 %i_last.0.lcssa
}

; Function Attrs: nofree norecurse nounwind
define internal i32 @coeff_level_run4(i16* nocapture readonly %dct, %struct.x264_run_level_t* nocapture %runlevel) #0 {
entry:
  %arrayidx.i = getelementptr inbounds i16, i16* %dct, i32 3
  %0 = load i16, i16* %arrayidx.i, align 2, !tbaa !27
  %cmp1.i = icmp eq i16 %0, 0
  br i1 %cmp1.i, label %while.body.i, label %coeff_last4.exit

while.body.i:                                     ; preds = %entry
  %arrayidx.1.i = getelementptr inbounds i16, i16* %dct, i32 2
  %1 = load i16, i16* %arrayidx.1.i, align 2, !tbaa !27
  %cmp1.1.i = icmp eq i16 %1, 0
  br i1 %cmp1.1.i, label %while.body.1.i, label %coeff_last4.exit

while.body.1.i:                                   ; preds = %while.body.i
  %arrayidx.2.i = getelementptr inbounds i16, i16* %dct, i32 1
  %2 = load i16, i16* %arrayidx.2.i, align 2, !tbaa !27
  %cmp1.2.i = icmp eq i16 %2, 0
  br i1 %cmp1.2.i, label %while.body.2.i, label %coeff_last4.exit

while.body.2.i:                                   ; preds = %while.body.1.i
  %3 = load i16, i16* %dct, align 2, !tbaa !27
  %cmp1.3.i = icmp eq i16 %3, 0
  %spec.select.i = sext i1 %cmp1.3.i to i32
  %arrayidx.phi.trans.insert.phi.trans.insert = getelementptr inbounds i16, i16* %dct, i32 %spec.select.i
  %.pre.pre = load i16, i16* %arrayidx.phi.trans.insert.phi.trans.insert, align 2, !tbaa !27
  br label %coeff_last4.exit

coeff_last4.exit:                                 ; preds = %entry, %while.body.i, %while.body.1.i, %while.body.2.i
  %.pre = phi i16 [ %.pre.pre, %while.body.2.i ], [ %0, %entry ], [ %1, %while.body.i ], [ %2, %while.body.1.i ]
  %call21 = phi i32 [ %spec.select.i, %while.body.2.i ], [ 3, %entry ], [ 2, %while.body.i ], [ 1, %while.body.1.i ]
  %last = getelementptr inbounds %struct.x264_run_level_t, %struct.x264_run_level_t* %runlevel, i32 0, i32 0
  store i32 %call21, i32* %last, align 16, !tbaa !32
  br label %do.body

do.body:                                          ; preds = %land.rhs, %coeff_last4.exit
  %4 = phi i16 [ %.pre, %coeff_last4.exit ], [ %5, %land.rhs ]
  %i_last.0 = phi i32 [ %call21, %coeff_last4.exit ], [ %dec, %land.rhs ]
  %i_total.0 = phi i32 [ 0, %coeff_last4.exit ], [ %inc, %land.rhs ]
  %mask.0 = phi i32 [ 0, %coeff_last4.exit ], [ %or, %land.rhs ]
  %inc = add nuw nsw i32 %i_total.0, 1
  %arrayidx1 = getelementptr inbounds %struct.x264_run_level_t, %struct.x264_run_level_t* %runlevel, i32 0, i32 3, i32 %i_total.0
  store i16 %4, i16* %arrayidx1, align 2, !tbaa !27
  %shl = shl nuw i32 1, %i_last.0
  %or = or i32 %mask.0, %shl
  br label %while.cond

while.cond:                                       ; preds = %land.rhs, %do.body
  %i_last.1 = phi i32 [ %i_last.0, %do.body ], [ %dec, %land.rhs ]
  %dec = add nsw i32 %i_last.1, -1
  %cmp = icmp sgt i32 %i_last.1, 0
  br i1 %cmp, label %land.rhs, label %do.end

land.rhs:                                         ; preds = %while.cond
  %arrayidx2 = getelementptr inbounds i16, i16* %dct, i32 %dec
  %5 = load i16, i16* %arrayidx2, align 2, !tbaa !27
  %cmp3 = icmp eq i16 %5, 0
  br i1 %cmp3, label %while.cond, label %do.body

do.end:                                           ; preds = %while.cond
  %mask7 = getelementptr inbounds %struct.x264_run_level_t, %struct.x264_run_level_t* %runlevel, i32 0, i32 1
  store i32 %or, i32* %mask7, align 4, !tbaa !34
  ret i32 %inc
}

; Function Attrs: nofree norecurse nounwind
define internal i32 @coeff_level_run8(i16* nocapture readonly %dct, %struct.x264_run_level_t* nocapture %runlevel) #0 {
entry:
  %arrayidx.i = getelementptr inbounds i16, i16* %dct, i32 7
  %0 = load i16, i16* %arrayidx.i, align 2, !tbaa !27
  %cmp1.i = icmp eq i16 %0, 0
  br i1 %cmp1.i, label %while.body.i, label %coeff_last8.exit

while.body.i:                                     ; preds = %entry
  %arrayidx.1.i = getelementptr inbounds i16, i16* %dct, i32 6
  %1 = load i16, i16* %arrayidx.1.i, align 2, !tbaa !27
  %cmp1.1.i = icmp eq i16 %1, 0
  br i1 %cmp1.1.i, label %while.body.1.i, label %coeff_last8.exit

while.body.1.i:                                   ; preds = %while.body.i
  %arrayidx.2.i = getelementptr inbounds i16, i16* %dct, i32 5
  %2 = load i16, i16* %arrayidx.2.i, align 2, !tbaa !27
  %cmp1.2.i = icmp eq i16 %2, 0
  br i1 %cmp1.2.i, label %while.body.2.i, label %coeff_last8.exit

while.body.2.i:                                   ; preds = %while.body.1.i
  %arrayidx.3.i = getelementptr inbounds i16, i16* %dct, i32 4
  %3 = load i16, i16* %arrayidx.3.i, align 2, !tbaa !27
  %cmp1.3.i = icmp eq i16 %3, 0
  br i1 %cmp1.3.i, label %while.body.3.i, label %coeff_last8.exit

while.body.3.i:                                   ; preds = %while.body.2.i
  %arrayidx.4.i = getelementptr inbounds i16, i16* %dct, i32 3
  %4 = load i16, i16* %arrayidx.4.i, align 2, !tbaa !27
  %cmp1.4.i = icmp eq i16 %4, 0
  br i1 %cmp1.4.i, label %while.body.4.i, label %coeff_last8.exit

while.body.4.i:                                   ; preds = %while.body.3.i
  %arrayidx.5.i = getelementptr inbounds i16, i16* %dct, i32 2
  %5 = load i16, i16* %arrayidx.5.i, align 2, !tbaa !27
  %cmp1.5.i = icmp eq i16 %5, 0
  br i1 %cmp1.5.i, label %while.body.5.i, label %coeff_last8.exit

while.body.5.i:                                   ; preds = %while.body.4.i
  %arrayidx.6.i = getelementptr inbounds i16, i16* %dct, i32 1
  %6 = load i16, i16* %arrayidx.6.i, align 2, !tbaa !27
  %cmp1.6.i = icmp eq i16 %6, 0
  br i1 %cmp1.6.i, label %while.body.6.i, label %coeff_last8.exit

while.body.6.i:                                   ; preds = %while.body.5.i
  %7 = load i16, i16* %dct, align 2, !tbaa !27
  %cmp1.7.i = icmp eq i16 %7, 0
  %spec.select.i = sext i1 %cmp1.7.i to i32
  %arrayidx.phi.trans.insert.phi.trans.insert = getelementptr inbounds i16, i16* %dct, i32 %spec.select.i
  %.pre.pre = load i16, i16* %arrayidx.phi.trans.insert.phi.trans.insert, align 2, !tbaa !27
  br label %coeff_last8.exit

coeff_last8.exit:                                 ; preds = %entry, %while.body.i, %while.body.1.i, %while.body.2.i, %while.body.3.i, %while.body.4.i, %while.body.5.i, %while.body.6.i
  %.pre = phi i16 [ %.pre.pre, %while.body.6.i ], [ %0, %entry ], [ %1, %while.body.i ], [ %2, %while.body.1.i ], [ %3, %while.body.2.i ], [ %4, %while.body.3.i ], [ %5, %while.body.4.i ], [ %6, %while.body.5.i ]
  %call21 = phi i32 [ %spec.select.i, %while.body.6.i ], [ 7, %entry ], [ 6, %while.body.i ], [ 5, %while.body.1.i ], [ 4, %while.body.2.i ], [ 3, %while.body.3.i ], [ 2, %while.body.4.i ], [ 1, %while.body.5.i ]
  %last = getelementptr inbounds %struct.x264_run_level_t, %struct.x264_run_level_t* %runlevel, i32 0, i32 0
  store i32 %call21, i32* %last, align 16, !tbaa !32
  br label %do.body

do.body:                                          ; preds = %land.rhs, %coeff_last8.exit
  %8 = phi i16 [ %.pre, %coeff_last8.exit ], [ %9, %land.rhs ]
  %i_last.0 = phi i32 [ %call21, %coeff_last8.exit ], [ %dec, %land.rhs ]
  %i_total.0 = phi i32 [ 0, %coeff_last8.exit ], [ %inc, %land.rhs ]
  %mask.0 = phi i32 [ 0, %coeff_last8.exit ], [ %or, %land.rhs ]
  %inc = add nuw nsw i32 %i_total.0, 1
  %arrayidx1 = getelementptr inbounds %struct.x264_run_level_t, %struct.x264_run_level_t* %runlevel, i32 0, i32 3, i32 %i_total.0
  store i16 %8, i16* %arrayidx1, align 2, !tbaa !27
  %shl = shl nuw i32 1, %i_last.0
  %or = or i32 %mask.0, %shl
  br label %while.cond

while.cond:                                       ; preds = %land.rhs, %do.body
  %i_last.1 = phi i32 [ %i_last.0, %do.body ], [ %dec, %land.rhs ]
  %dec = add nsw i32 %i_last.1, -1
  %cmp = icmp sgt i32 %i_last.1, 0
  br i1 %cmp, label %land.rhs, label %do.end

land.rhs:                                         ; preds = %while.cond
  %arrayidx2 = getelementptr inbounds i16, i16* %dct, i32 %dec
  %9 = load i16, i16* %arrayidx2, align 2, !tbaa !27
  %cmp3 = icmp eq i16 %9, 0
  br i1 %cmp3, label %while.cond, label %do.body

do.end:                                           ; preds = %while.cond
  %mask7 = getelementptr inbounds %struct.x264_run_level_t, %struct.x264_run_level_t* %runlevel, i32 0, i32 1
  store i32 %or, i32* %mask7, align 4, !tbaa !34
  ret i32 %inc
}

; Function Attrs: nofree norecurse nounwind
define internal i32 @coeff_level_run15(i16* nocapture readonly %dct, %struct.x264_run_level_t* nocapture %runlevel) #0 {
entry:
  %arrayidx.i = getelementptr inbounds i16, i16* %dct, i32 14
  %0 = load i16, i16* %arrayidx.i, align 2, !tbaa !27
  %cmp1.i = icmp eq i16 %0, 0
  br i1 %cmp1.i, label %while.body.i, label %coeff_last15.exit

while.body.i:                                     ; preds = %entry
  %arrayidx.1.i = getelementptr inbounds i16, i16* %dct, i32 13
  %1 = load i16, i16* %arrayidx.1.i, align 2, !tbaa !27
  %cmp1.1.i = icmp eq i16 %1, 0
  br i1 %cmp1.1.i, label %while.body.1.i, label %coeff_last15.exit

while.body.1.i:                                   ; preds = %while.body.i
  %arrayidx.2.i = getelementptr inbounds i16, i16* %dct, i32 12
  %2 = load i16, i16* %arrayidx.2.i, align 2, !tbaa !27
  %cmp1.2.i = icmp eq i16 %2, 0
  br i1 %cmp1.2.i, label %while.body.2.i, label %coeff_last15.exit

while.body.2.i:                                   ; preds = %while.body.1.i
  %arrayidx.3.i = getelementptr inbounds i16, i16* %dct, i32 11
  %3 = load i16, i16* %arrayidx.3.i, align 2, !tbaa !27
  %cmp1.3.i = icmp eq i16 %3, 0
  br i1 %cmp1.3.i, label %while.body.3.i, label %coeff_last15.exit

while.body.3.i:                                   ; preds = %while.body.2.i
  %arrayidx.4.i = getelementptr inbounds i16, i16* %dct, i32 10
  %4 = load i16, i16* %arrayidx.4.i, align 2, !tbaa !27
  %cmp1.4.i = icmp eq i16 %4, 0
  br i1 %cmp1.4.i, label %while.body.4.i, label %coeff_last15.exit

while.body.4.i:                                   ; preds = %while.body.3.i
  %arrayidx.5.i = getelementptr inbounds i16, i16* %dct, i32 9
  %5 = load i16, i16* %arrayidx.5.i, align 2, !tbaa !27
  %cmp1.5.i = icmp eq i16 %5, 0
  br i1 %cmp1.5.i, label %while.body.5.i, label %coeff_last15.exit

while.body.5.i:                                   ; preds = %while.body.4.i
  %arrayidx.6.i = getelementptr inbounds i16, i16* %dct, i32 8
  %6 = load i16, i16* %arrayidx.6.i, align 2, !tbaa !27
  %cmp1.6.i = icmp eq i16 %6, 0
  br i1 %cmp1.6.i, label %while.body.6.i, label %coeff_last15.exit

while.body.6.i:                                   ; preds = %while.body.5.i
  %arrayidx.7.i = getelementptr inbounds i16, i16* %dct, i32 7
  %7 = load i16, i16* %arrayidx.7.i, align 2, !tbaa !27
  %cmp1.7.i = icmp eq i16 %7, 0
  br i1 %cmp1.7.i, label %while.body.7.i, label %coeff_last15.exit

while.body.7.i:                                   ; preds = %while.body.6.i
  %arrayidx.8.i = getelementptr inbounds i16, i16* %dct, i32 6
  %8 = load i16, i16* %arrayidx.8.i, align 2, !tbaa !27
  %cmp1.8.i = icmp eq i16 %8, 0
  br i1 %cmp1.8.i, label %while.body.8.i, label %coeff_last15.exit

while.body.8.i:                                   ; preds = %while.body.7.i
  %arrayidx.9.i = getelementptr inbounds i16, i16* %dct, i32 5
  %9 = load i16, i16* %arrayidx.9.i, align 2, !tbaa !27
  %cmp1.9.i = icmp eq i16 %9, 0
  br i1 %cmp1.9.i, label %while.body.9.i, label %coeff_last15.exit

while.body.9.i:                                   ; preds = %while.body.8.i
  %arrayidx.10.i = getelementptr inbounds i16, i16* %dct, i32 4
  %10 = load i16, i16* %arrayidx.10.i, align 2, !tbaa !27
  %cmp1.10.i = icmp eq i16 %10, 0
  br i1 %cmp1.10.i, label %while.body.10.i, label %coeff_last15.exit

while.body.10.i:                                  ; preds = %while.body.9.i
  %arrayidx.11.i = getelementptr inbounds i16, i16* %dct, i32 3
  %11 = load i16, i16* %arrayidx.11.i, align 2, !tbaa !27
  %cmp1.11.i = icmp eq i16 %11, 0
  br i1 %cmp1.11.i, label %while.body.11.i, label %coeff_last15.exit

while.body.11.i:                                  ; preds = %while.body.10.i
  %arrayidx.12.i = getelementptr inbounds i16, i16* %dct, i32 2
  %12 = load i16, i16* %arrayidx.12.i, align 2, !tbaa !27
  %cmp1.12.i = icmp eq i16 %12, 0
  br i1 %cmp1.12.i, label %while.body.12.i, label %coeff_last15.exit

while.body.12.i:                                  ; preds = %while.body.11.i
  %arrayidx.13.i = getelementptr inbounds i16, i16* %dct, i32 1
  %13 = load i16, i16* %arrayidx.13.i, align 2, !tbaa !27
  %cmp1.13.i = icmp eq i16 %13, 0
  br i1 %cmp1.13.i, label %while.body.13.i, label %coeff_last15.exit

while.body.13.i:                                  ; preds = %while.body.12.i
  %14 = load i16, i16* %dct, align 2, !tbaa !27
  %cmp1.14.i = icmp eq i16 %14, 0
  %spec.select.i = sext i1 %cmp1.14.i to i32
  %arrayidx.phi.trans.insert.phi.trans.insert = getelementptr inbounds i16, i16* %dct, i32 %spec.select.i
  %.pre.pre = load i16, i16* %arrayidx.phi.trans.insert.phi.trans.insert, align 2, !tbaa !27
  br label %coeff_last15.exit

coeff_last15.exit:                                ; preds = %entry, %while.body.i, %while.body.1.i, %while.body.2.i, %while.body.3.i, %while.body.4.i, %while.body.5.i, %while.body.6.i, %while.body.7.i, %while.body.8.i, %while.body.9.i, %while.body.10.i, %while.body.11.i, %while.body.12.i, %while.body.13.i
  %.pre = phi i16 [ %.pre.pre, %while.body.13.i ], [ %0, %entry ], [ %1, %while.body.i ], [ %2, %while.body.1.i ], [ %3, %while.body.2.i ], [ %4, %while.body.3.i ], [ %5, %while.body.4.i ], [ %6, %while.body.5.i ], [ %7, %while.body.6.i ], [ %8, %while.body.7.i ], [ %9, %while.body.8.i ], [ %10, %while.body.9.i ], [ %11, %while.body.10.i ], [ %12, %while.body.11.i ], [ %13, %while.body.12.i ]
  %call21 = phi i32 [ %spec.select.i, %while.body.13.i ], [ 14, %entry ], [ 13, %while.body.i ], [ 12, %while.body.1.i ], [ 11, %while.body.2.i ], [ 10, %while.body.3.i ], [ 9, %while.body.4.i ], [ 8, %while.body.5.i ], [ 7, %while.body.6.i ], [ 6, %while.body.7.i ], [ 5, %while.body.8.i ], [ 4, %while.body.9.i ], [ 3, %while.body.10.i ], [ 2, %while.body.11.i ], [ 1, %while.body.12.i ]
  %last = getelementptr inbounds %struct.x264_run_level_t, %struct.x264_run_level_t* %runlevel, i32 0, i32 0
  store i32 %call21, i32* %last, align 16, !tbaa !32
  br label %do.body

do.body:                                          ; preds = %land.rhs, %coeff_last15.exit
  %15 = phi i16 [ %.pre, %coeff_last15.exit ], [ %16, %land.rhs ]
  %i_last.0 = phi i32 [ %call21, %coeff_last15.exit ], [ %dec, %land.rhs ]
  %i_total.0 = phi i32 [ 0, %coeff_last15.exit ], [ %inc, %land.rhs ]
  %mask.0 = phi i32 [ 0, %coeff_last15.exit ], [ %or, %land.rhs ]
  %inc = add nuw nsw i32 %i_total.0, 1
  %arrayidx1 = getelementptr inbounds %struct.x264_run_level_t, %struct.x264_run_level_t* %runlevel, i32 0, i32 3, i32 %i_total.0
  store i16 %15, i16* %arrayidx1, align 2, !tbaa !27
  %shl = shl nuw i32 1, %i_last.0
  %or = or i32 %mask.0, %shl
  br label %while.cond

while.cond:                                       ; preds = %land.rhs, %do.body
  %i_last.1 = phi i32 [ %i_last.0, %do.body ], [ %dec, %land.rhs ]
  %dec = add nsw i32 %i_last.1, -1
  %cmp = icmp sgt i32 %i_last.1, 0
  br i1 %cmp, label %land.rhs, label %do.end

land.rhs:                                         ; preds = %while.cond
  %arrayidx2 = getelementptr inbounds i16, i16* %dct, i32 %dec
  %16 = load i16, i16* %arrayidx2, align 2, !tbaa !27
  %cmp3 = icmp eq i16 %16, 0
  br i1 %cmp3, label %while.cond, label %do.body

do.end:                                           ; preds = %while.cond
  %mask7 = getelementptr inbounds %struct.x264_run_level_t, %struct.x264_run_level_t* %runlevel, i32 0, i32 1
  store i32 %or, i32* %mask7, align 4, !tbaa !34
  ret i32 %inc
}

; Function Attrs: nofree norecurse nounwind
define internal i32 @coeff_level_run16(i16* nocapture readonly %dct, %struct.x264_run_level_t* nocapture %runlevel) #0 {
entry:
  %arrayidx.i = getelementptr inbounds i16, i16* %dct, i32 15
  %0 = load i16, i16* %arrayidx.i, align 2, !tbaa !27
  %cmp1.i = icmp eq i16 %0, 0
  br i1 %cmp1.i, label %while.body.i, label %coeff_last16.exit

while.body.i:                                     ; preds = %entry
  %arrayidx.1.i = getelementptr inbounds i16, i16* %dct, i32 14
  %1 = load i16, i16* %arrayidx.1.i, align 2, !tbaa !27
  %cmp1.1.i = icmp eq i16 %1, 0
  br i1 %cmp1.1.i, label %while.body.1.i, label %coeff_last16.exit

while.body.1.i:                                   ; preds = %while.body.i
  %arrayidx.2.i = getelementptr inbounds i16, i16* %dct, i32 13
  %2 = load i16, i16* %arrayidx.2.i, align 2, !tbaa !27
  %cmp1.2.i = icmp eq i16 %2, 0
  br i1 %cmp1.2.i, label %while.body.2.i, label %coeff_last16.exit

while.body.2.i:                                   ; preds = %while.body.1.i
  %arrayidx.3.i = getelementptr inbounds i16, i16* %dct, i32 12
  %3 = load i16, i16* %arrayidx.3.i, align 2, !tbaa !27
  %cmp1.3.i = icmp eq i16 %3, 0
  br i1 %cmp1.3.i, label %while.body.3.i, label %coeff_last16.exit

while.body.3.i:                                   ; preds = %while.body.2.i
  %arrayidx.4.i = getelementptr inbounds i16, i16* %dct, i32 11
  %4 = load i16, i16* %arrayidx.4.i, align 2, !tbaa !27
  %cmp1.4.i = icmp eq i16 %4, 0
  br i1 %cmp1.4.i, label %while.body.4.i, label %coeff_last16.exit

while.body.4.i:                                   ; preds = %while.body.3.i
  %arrayidx.5.i = getelementptr inbounds i16, i16* %dct, i32 10
  %5 = load i16, i16* %arrayidx.5.i, align 2, !tbaa !27
  %cmp1.5.i = icmp eq i16 %5, 0
  br i1 %cmp1.5.i, label %while.body.5.i, label %coeff_last16.exit

while.body.5.i:                                   ; preds = %while.body.4.i
  %arrayidx.6.i = getelementptr inbounds i16, i16* %dct, i32 9
  %6 = load i16, i16* %arrayidx.6.i, align 2, !tbaa !27
  %cmp1.6.i = icmp eq i16 %6, 0
  br i1 %cmp1.6.i, label %while.body.6.i, label %coeff_last16.exit

while.body.6.i:                                   ; preds = %while.body.5.i
  %arrayidx.7.i = getelementptr inbounds i16, i16* %dct, i32 8
  %7 = load i16, i16* %arrayidx.7.i, align 2, !tbaa !27
  %cmp1.7.i = icmp eq i16 %7, 0
  br i1 %cmp1.7.i, label %while.body.7.i, label %coeff_last16.exit

while.body.7.i:                                   ; preds = %while.body.6.i
  %arrayidx.8.i = getelementptr inbounds i16, i16* %dct, i32 7
  %8 = load i16, i16* %arrayidx.8.i, align 2, !tbaa !27
  %cmp1.8.i = icmp eq i16 %8, 0
  br i1 %cmp1.8.i, label %while.body.8.i, label %coeff_last16.exit

while.body.8.i:                                   ; preds = %while.body.7.i
  %arrayidx.9.i = getelementptr inbounds i16, i16* %dct, i32 6
  %9 = load i16, i16* %arrayidx.9.i, align 2, !tbaa !27
  %cmp1.9.i = icmp eq i16 %9, 0
  br i1 %cmp1.9.i, label %while.body.9.i, label %coeff_last16.exit

while.body.9.i:                                   ; preds = %while.body.8.i
  %arrayidx.10.i = getelementptr inbounds i16, i16* %dct, i32 5
  %10 = load i16, i16* %arrayidx.10.i, align 2, !tbaa !27
  %cmp1.10.i = icmp eq i16 %10, 0
  br i1 %cmp1.10.i, label %while.body.10.i, label %coeff_last16.exit

while.body.10.i:                                  ; preds = %while.body.9.i
  %arrayidx.11.i = getelementptr inbounds i16, i16* %dct, i32 4
  %11 = load i16, i16* %arrayidx.11.i, align 2, !tbaa !27
  %cmp1.11.i = icmp eq i16 %11, 0
  br i1 %cmp1.11.i, label %while.body.11.i, label %coeff_last16.exit

while.body.11.i:                                  ; preds = %while.body.10.i
  %arrayidx.12.i = getelementptr inbounds i16, i16* %dct, i32 3
  %12 = load i16, i16* %arrayidx.12.i, align 2, !tbaa !27
  %cmp1.12.i = icmp eq i16 %12, 0
  br i1 %cmp1.12.i, label %while.body.12.i, label %coeff_last16.exit

while.body.12.i:                                  ; preds = %while.body.11.i
  %arrayidx.13.i = getelementptr inbounds i16, i16* %dct, i32 2
  %13 = load i16, i16* %arrayidx.13.i, align 2, !tbaa !27
  %cmp1.13.i = icmp eq i16 %13, 0
  br i1 %cmp1.13.i, label %while.body.13.i, label %coeff_last16.exit

while.body.13.i:                                  ; preds = %while.body.12.i
  %arrayidx.14.i = getelementptr inbounds i16, i16* %dct, i32 1
  %14 = load i16, i16* %arrayidx.14.i, align 2, !tbaa !27
  %cmp1.14.i = icmp eq i16 %14, 0
  br i1 %cmp1.14.i, label %while.body.14.i, label %coeff_last16.exit

while.body.14.i:                                  ; preds = %while.body.13.i
  %15 = load i16, i16* %dct, align 2, !tbaa !27
  %cmp1.15.i = icmp eq i16 %15, 0
  %spec.select.i = sext i1 %cmp1.15.i to i32
  %arrayidx.phi.trans.insert.phi.trans.insert = getelementptr inbounds i16, i16* %dct, i32 %spec.select.i
  %.pre.pre = load i16, i16* %arrayidx.phi.trans.insert.phi.trans.insert, align 2, !tbaa !27
  br label %coeff_last16.exit

coeff_last16.exit:                                ; preds = %entry, %while.body.i, %while.body.1.i, %while.body.2.i, %while.body.3.i, %while.body.4.i, %while.body.5.i, %while.body.6.i, %while.body.7.i, %while.body.8.i, %while.body.9.i, %while.body.10.i, %while.body.11.i, %while.body.12.i, %while.body.13.i, %while.body.14.i
  %.pre = phi i16 [ %.pre.pre, %while.body.14.i ], [ %0, %entry ], [ %1, %while.body.i ], [ %2, %while.body.1.i ], [ %3, %while.body.2.i ], [ %4, %while.body.3.i ], [ %5, %while.body.4.i ], [ %6, %while.body.5.i ], [ %7, %while.body.6.i ], [ %8, %while.body.7.i ], [ %9, %while.body.8.i ], [ %10, %while.body.9.i ], [ %11, %while.body.10.i ], [ %12, %while.body.11.i ], [ %13, %while.body.12.i ], [ %14, %while.body.13.i ]
  %call21 = phi i32 [ %spec.select.i, %while.body.14.i ], [ 15, %entry ], [ 14, %while.body.i ], [ 13, %while.body.1.i ], [ 12, %while.body.2.i ], [ 11, %while.body.3.i ], [ 10, %while.body.4.i ], [ 9, %while.body.5.i ], [ 8, %while.body.6.i ], [ 7, %while.body.7.i ], [ 6, %while.body.8.i ], [ 5, %while.body.9.i ], [ 4, %while.body.10.i ], [ 3, %while.body.11.i ], [ 2, %while.body.12.i ], [ 1, %while.body.13.i ]
  %last = getelementptr inbounds %struct.x264_run_level_t, %struct.x264_run_level_t* %runlevel, i32 0, i32 0
  store i32 %call21, i32* %last, align 16, !tbaa !32
  br label %do.body

do.body:                                          ; preds = %land.rhs, %coeff_last16.exit
  %16 = phi i16 [ %.pre, %coeff_last16.exit ], [ %17, %land.rhs ]
  %i_last.0 = phi i32 [ %call21, %coeff_last16.exit ], [ %dec, %land.rhs ]
  %i_total.0 = phi i32 [ 0, %coeff_last16.exit ], [ %inc, %land.rhs ]
  %mask.0 = phi i32 [ 0, %coeff_last16.exit ], [ %or, %land.rhs ]
  %inc = add nuw nsw i32 %i_total.0, 1
  %arrayidx1 = getelementptr inbounds %struct.x264_run_level_t, %struct.x264_run_level_t* %runlevel, i32 0, i32 3, i32 %i_total.0
  store i16 %16, i16* %arrayidx1, align 2, !tbaa !27
  %shl = shl nuw i32 1, %i_last.0
  %or = or i32 %mask.0, %shl
  br label %while.cond

while.cond:                                       ; preds = %land.rhs, %do.body
  %i_last.1 = phi i32 [ %i_last.0, %do.body ], [ %dec, %land.rhs ]
  %dec = add nsw i32 %i_last.1, -1
  %cmp = icmp sgt i32 %i_last.1, 0
  br i1 %cmp, label %land.rhs, label %do.end

land.rhs:                                         ; preds = %while.cond
  %arrayidx2 = getelementptr inbounds i16, i16* %dct, i32 %dec
  %17 = load i16, i16* %arrayidx2, align 2, !tbaa !27
  %cmp3 = icmp eq i16 %17, 0
  br i1 %cmp3, label %while.cond, label %do.body

do.end:                                           ; preds = %while.cond
  %mask7 = getelementptr inbounds %struct.x264_run_level_t, %struct.x264_run_level_t* %runlevel, i32 0, i32 1
  store i32 %or, i32* %mask7, align 4, !tbaa !34
  ret i32 %inc
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

attributes #0 = { nofree norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #2 = { norecurse nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 (http://10.18.30.194:8888/compiler/compiler10.git 713ef477716300a9b04a1522e3fce445623444dc)"}
!2 = !{!3, !4, i64 0}
!3 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !5, i64 64, !4, i64 120, !4, i64 124, !5, i64 128, !4, i64 180, !4, i64 184, !4, i64 188, !4, i64 192, !4, i64 196, !4, i64 200, !4, i64 204, !4, i64 208}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!3, !4, i64 4}
!8 = !{!3, !4, i64 8}
!9 = !{!3, !4, i64 12}
!10 = !{!3, !4, i64 16}
!11 = !{!3, !4, i64 24}
!12 = !{!3, !4, i64 28}
!13 = !{!3, !4, i64 20}
!14 = !{!3, !4, i64 32}
!15 = !{!3, !4, i64 36}
!16 = !{!3, !4, i64 40}
!17 = !{!3, !4, i64 44}
!18 = !{!3, !4, i64 48}
!19 = !{!3, !4, i64 52}
!20 = !{!3, !4, i64 56}
!21 = !{!3, !4, i64 60}
!22 = !{!3, !4, i64 120}
!23 = !{!3, !4, i64 124}
!24 = !{!4, !4, i64 0}
!25 = !{!3, !4, i64 180}
!26 = !{!3, !4, i64 184}
!27 = !{!28, !28, i64 0}
!28 = !{!"short", !5, i64 0}
!29 = !{!30, !30, i64 0}
!30 = !{!"int", !5, i64 0}
!31 = !{!5, !5, i64 0}
!32 = !{!33, !30, i64 0}
!33 = !{!"", !30, i64 0, !30, i64 4, !5, i64 16}
!34 = !{!33, !30, i64 4}
