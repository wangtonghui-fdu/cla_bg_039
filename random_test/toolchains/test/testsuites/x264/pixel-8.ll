; ModuleID = 'common/pixel.c'
source_filename = "common/pixel.c"
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

%struct.x264_pixel_function_t = type { [8 x i32 (i8*, i32, i8*, i32)*], [8 x i32 (i8*, i32, i8*, i32)*], [8 x i32 (i8*, i32, i8*, i32)*], [7 x i32 (i8*, i32, i8*, i32)*], [4 x i32 (i8*, i32, i8*, i32)*], [8 x i32 (i8*, i32, i8*, i32)*], [8 x i32 (i8*, i32, i8*, i32)*], [8 x i32 (i8*, i32, i8*, i32)*], [7 x void (i8*, i8*, i8*, i8*, i32, i32*)*], [7 x void (i8*, i8*, i8*, i8*, i8*, i32, i32*)*], [8 x i32 (i8*, i32, i8*, i32)*], i32 (i8*, i32, i32)*, i32 (i8*, i32, i8*, i32, i32)*, [1 x i64 (i8*, i32, i8*, i32)*], [4 x i64 (i8*, i32)*], [4 x i32 (i8*, i8*, i32*)*], [4 x i64 (i8*, i32)*], void (i8*, i32, i8*, i32, i32, i32, i64*, i64*)*, void (i8*, i32, i8*, i32, [4 x i32]*)*, float ([4 x i32]*, [4 x i32]*, i32)*, [7 x void (i8*, i8*, i8*, i8*, i32, i32*)*], [7 x void (i8*, i8*, i8*, i8*, i8*, i32, i32*)*], [7 x void (i8*, i8*, i8*, i8*, i32, i32*)*], [7 x void (i8*, i8*, i8*, i8*, i8*, i32, i32*)*], [7 x i32 (i32*, i16*, i32, i16*, i16*, i32, i32)*], void (i8*, i8*, i32*)*, void (i8*, i8*, i32*)*, void (i8*, i8*, i32*)*, void (i8*, i8*, i32*)*, void (i8*, i8*, i32*)*, void (i8*, i8*, i32*)*, void (i8*, i8*, i32*)*, void (i8*, i8*, i32*)*, void (i8*, i8*, i32*)*, void (i8*, i8*, i32*)*, void (i8*, i8*, i32*)*, void (i8*, i8*, i32*)*, void (i8*, i8*, i32*)*, void (i8*, i8*, i32*)*, void (i8*, i8*, i32*)*, void (i8*, i8*, i32*)*, void (i8*, i8*, i32*)*, void (i8*, i8*, i32*)*, i32 (i8*, i8*, i16*)*, i32 (i8*, i8*, i16*)*, i32 (i8*, i8*, i16*)*, i32 (i8*, i8*, i8*, i16*, i16*)*, i32 (i8*, i8*, i8*, i16*, i16*)*, i32 (i8*, i8*, i8*, i16*, i16*)* }
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
%struct.x264_mc_functions_t = type { void (i8*, i32, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)*, i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)*, void (i8*, i8*, i32, i8*, i32, i32, i32, i32, i32)*, [12 x void (i8*, i32, i8*, i32, i8*, i32, i32)*], [7 x void (i8*, i32, i8*, i32, i32)*], void (i8*, i32, i8*, i32, i32)*, void (i8*, i32, i8*, i8*, i32)*, void (i8*, i8*, i32, i32)*, void (i8*, i8*, i32, i32)*, void (i8*, i32, i8*, i32, i32, i32)*, void (i8*, i32, i8*, i32, i32, i32)*, void (i8*, i32, i8*, i32, i8*, i32, i32, i32)*, void (i8*, i32, i8*, i32, i8*, i32, i32, i32)*, void (i8*, i32, i8*, i32, i8*, i32, i32, i32)*, void (i8*, i32, i8*, i32, i8*, i32, i8*, i32, i32, i32, i32)*, void (i8*, i32, i8*, i32, i32*, i32, i32, i32)*, void (i8*, i8*, i8*, i8*, i32, i32, i32, i16*)*, void (i8*, i32, i8*, i32, i32)*, void (i8*, i32, i8*, i32, i32)*, void (i8*, i32, i8*, i32, i32)*, void (i8*, i32, i8*, i32, i32)*, void (i8*, i32, i32)*, i8* (i8*, i8*, i32)*, void (i8*, i32)*, void (i16*, i8*, i32)*, void (i16*, i8*, i32)*, void (i16*, i16*, i32)*, void (i16*, i32)*, void (i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32)*, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)**, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)**, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)**, void (%struct.x264_t*, %struct.x264_weight_t*)*, void (i16*, i16*, i16*, i16*, i16*, float*, i32)*, void (%struct.x264_t*, i16*, [2 x i16]*, i16*, i16*, i32, i32, i32, i32)*, void (i16*, float*, i32)*, void (float*, i16*, i32)* }
%struct.x264_dct_function_t = type { void (i16*, i8*, i8*)*, void (i8*, i16*)*, void ([16 x i16]*, i8*, i8*)*, void (i16*, i8*, i8*)*, void (i8*, [16 x i16]*)*, void (i8*, i16*)*, void (i16*, i8*, i8*)*, void ([16 x i16]*, i8*, i8*)*, void (i8*, [16 x i16]*)*, void (i8*, i16*)*, void (i16*, i8*, i8*)*, void (i8*, i16*)*, void ([64 x i16]*, i8*, i8*)*, void (i8*, [64 x i16]*)*, void (i16*)*, void (i16*)*, void (i16*, [16 x i16]*)* }
%struct.x264_zigzag_function_t = type { void (i16*, i16*)*, void (i16*, i16*)*, i32 (i16*, i8*, i8*)*, i32 (i16*, i8*, i8*)*, i32 (i16*, i8*, i8*, i16*)*, void (i16*, i16*, i8*)* }
%struct.x264_quant_function_t = type { i32 (i16*, i16*, i16*)*, i32 (i16*, i16*, i16*)*, i32 ([16 x i16]*, i16*, i16*)*, i32 (i16*, i32, i32)*, i32 (i16*, i32, i32)*, void (i16*, [64 x i32]*, i32)*, void (i16*, [16 x i32]*, i32)*, void (i16*, [16 x i32]*, i32)*, void (i16*, [16 x i16]*, [16 x i32]*, i32)*, void (i16*, [16 x i32]*, i32)*, i32 (i16*, i32)*, i32 (i16*, i32)*, void (i16*, i32*, i16*, i32)*, i32 (i16*)*, i32 (i16*)*, i32 (i16*)*, [14 x i32 (i16*)*], i32 (i16*)*, i32 (i16*)*, [13 x i32 (i16*, %struct.x264_run_level_t*)*], i32 (i16*, %struct.x264_run_level_t*)*, i32 (i16*, %struct.x264_run_level_t*)*, i32 (i32*, i8*, i32, i32, i16*, i16*, i16*, i8*, i8*, i64, i16, i32)*, i32 (i32*, i8*, i32, i32, i16*, i16*, i16*, i8*, i8*, i64, i16, i32)*, i32 (i32*, i8*, i32, i32, i16*, i16*, i16*, i8*, i8*, i64, i16, i32, i16*, i32)*, i32 (i32*, i8*, i32, i32, i16*, i16*, i16*, i8*, i8*, i64, i16, i32, i16*, i32)*, i32 (i32*, i8*, i32, i32, i16*, i16*, i16*, i8*, i8*, i64, i16, i32)*, i32 (i32*, i8*, i32, i32, i16*, i16*, i16*, i8*, i8*, i64, i16)* }
%struct.x264_run_level_t = type { i32, i32, [8 x i8], [18 x i16], [12 x i8] }
%struct.x264_deblock_function_t = type { [2 x void (i8*, i32, i32, i32, i8*)*], [2 x void (i8*, i32, i32, i32, i8*)*], void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)*, [2 x void (i8*, i32, i32, i32)*], [2 x void (i8*, i32, i32, i32)*], void (i8*, i32, i32, i32)*, void (i8*, i32, i32, i32)*, void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32)*, void (i8*, i32, i32, i32)*, void (i8*, i32, i32, i32)*, void (i8*, i32, i32, i32)*, void (i8*, [40 x i8]*, [40 x [2 x i16]]*, [8 x [4 x i8]]*, i32, i32)* }
%struct.x264_bitstream_function_t = type { i8* (i8*, i8*, i8*)*, void (i16*, i32, i32, %struct.x264_cabac_t*)*, void (i16*, i32, i32, %struct.x264_cabac_t*)*, void (i16*, i32, i32, %struct.x264_cabac_t*)* }
%struct.x264_lookahead_t = type { i8, i8, i8, i32, i32, %struct.x264_frame*, i32, %struct.x264_sync_frame_list_t, %struct.x264_sync_frame_list_t, %struct.x264_sync_frame_list_t }
%struct.x264_sync_frame_list_t = type { %struct.x264_frame**, i32, i32, i32, i32, i32 }

; Function Attrs: nounwind
define hidden i64 @x264_8_pixel_ssd_wxh(%struct.x264_pixel_function_t* nocapture readonly %pf, i8* %pix1, i32 %i_pix1, i8* %pix2, i32 %i_pix2, i32 %i_width, i32 %i_height) local_unnamed_addr #0 {
entry:
  %sub = add nsw i32 %i_height, -15
  %cmp244 = icmp sgt i32 %i_height, 15
  br i1 %cmp244, label %for.body.lr.ph, label %for.end34

for.body.lr.ph:                                   ; preds = %entry
  %0 = ptrtoint i8* %pix1 to i32
  %or = or i32 %0, %i_pix1
  %1 = ptrtoint i8* %pix2 to i32
  %or1 = or i32 %or, %1
  %or2 = or i32 %or1, %i_pix2
  %and = and i32 %or2, 15
  %tobool = icmp eq i32 %and, 0
  %sub5 = add nsw i32 %i_width, -15
  %cmp6235 = icmp sgt i32 %i_width, 15
  %arrayidx = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pf, i32 0, i32 1, i32 0
  %sub14 = add nsw i32 %i_width, -7
  %arrayidx19 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pf, i32 0, i32 1, i32 2
  br i1 %tobool, label %for.body.us, label %for.body.preheader

for.body.preheader:                               ; preds = %for.body.lr.ph
  %cmp15240 = icmp sgt i32 %i_width, 7
  br label %for.body

for.body.us:                                      ; preds = %for.body.lr.ph, %for.end31.us
  %i_ssd.0249.us = phi i64 [ %i_ssd.3.lcssa.us, %for.end31.us ], [ 0, %for.body.lr.ph ]
  %y.0245.us = phi i32 [ %add33.us, %for.end31.us ], [ 0, %for.body.lr.ph ]
  br i1 %cmp6235, label %for.body7.lr.ph.us, label %if.end.loopexit.us

for.end31.us:                                     ; preds = %for.body17.us, %if.end.loopexit.us
  %i_ssd.3.lcssa.us = phi i64 [ %i_ssd.1.lcssa.us, %if.end.loopexit.us ], [ %add28.us, %for.body17.us ]
  %add33.us = add nuw nsw i32 %y.0245.us, 16
  %cmp.us = icmp slt i32 %add33.us, %sub
  br i1 %cmp.us, label %for.body.us, label %for.end34

for.body17.us:                                    ; preds = %for.body17.lr.ph.us, %for.body17.us
  %i_ssd.3242.us = phi i64 [ %i_ssd.1.lcssa.us, %for.body17.lr.ph.us ], [ %add28.us, %for.body17.us ]
  %x.2241.us = phi i32 [ %x.0.lcssa.us, %for.body17.lr.ph.us ], [ %add30.us, %for.body17.us ]
  %2 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx19, align 4, !tbaa !2
  %add.ptr22.us = getelementptr inbounds i8, i8* %add.ptr21.us, i32 %x.2241.us
  %add.ptr25.us = getelementptr inbounds i8, i8* %add.ptr24.us, i32 %x.2241.us
  %call26.us = tail call i32 %2(i8* %add.ptr22.us, i32 %i_pix1, i8* %add.ptr25.us, i32 %i_pix2) #8
  %conv27.us = sext i32 %call26.us to i64
  %add28.us = add i64 %i_ssd.3242.us, %conv27.us
  %add30.us = add nuw nsw i32 %x.2241.us, 8
  %cmp15.us = icmp slt i32 %add30.us, %sub14
  br i1 %cmp15.us, label %for.body17.us, label %for.end31.us

for.body7.us:                                     ; preds = %for.body7.lr.ph.us, %for.body7.us
  %i_ssd.1237.us = phi i64 [ %i_ssd.0249.us, %for.body7.lr.ph.us ], [ %add.us, %for.body7.us ]
  %x.0236.us = phi i32 [ 0, %for.body7.lr.ph.us ], [ %add12.us, %for.body7.us ]
  %3 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx, align 4, !tbaa !2
  %add.ptr8.us = getelementptr inbounds i8, i8* %add.ptr.us, i32 %x.0236.us
  %add.ptr11.us = getelementptr inbounds i8, i8* %add.ptr10.us, i32 %x.0236.us
  %call.us = tail call i32 %3(i8* %add.ptr8.us, i32 %i_pix1, i8* %add.ptr11.us, i32 %i_pix2) #8
  %conv.us = sext i32 %call.us to i64
  %add.us = add i64 %i_ssd.1237.us, %conv.us
  %add12.us = add nuw nsw i32 %x.0236.us, 16
  %cmp6.us = icmp slt i32 %add12.us, %sub5
  br i1 %cmp6.us, label %for.body7.us, label %if.end.loopexit.us

if.end.loopexit.us:                               ; preds = %for.body7.us, %for.body.us
  %x.0.lcssa.us = phi i32 [ 0, %for.body.us ], [ %add12.us, %for.body7.us ]
  %i_ssd.1.lcssa.us = phi i64 [ %i_ssd.0249.us, %for.body.us ], [ %add.us, %for.body7.us ]
  %cmp15240.us = icmp slt i32 %x.0.lcssa.us, %sub14
  br i1 %cmp15240.us, label %for.body17.lr.ph.us, label %for.end31.us

for.body7.lr.ph.us:                               ; preds = %for.body.us
  %mul.us = mul nsw i32 %y.0245.us, %i_pix1
  %add.ptr.us = getelementptr inbounds i8, i8* %pix1, i32 %mul.us
  %mul9.us = mul nsw i32 %y.0245.us, %i_pix2
  %add.ptr10.us = getelementptr inbounds i8, i8* %pix2, i32 %mul9.us
  br label %for.body7.us

for.body17.lr.ph.us:                              ; preds = %if.end.loopexit.us
  %mul20.us = mul nsw i32 %y.0245.us, %i_pix1
  %add.ptr21.us = getelementptr inbounds i8, i8* %pix1, i32 %mul20.us
  %mul23.us = mul nsw i32 %y.0245.us, %i_pix2
  %add.ptr24.us = getelementptr inbounds i8, i8* %pix2, i32 %mul23.us
  br label %for.body17.us

for.body:                                         ; preds = %for.body.preheader, %for.end31
  %i_ssd.0249 = phi i64 [ %i_ssd.3.lcssa, %for.end31 ], [ 0, %for.body.preheader ]
  %y.0245 = phi i32 [ %add33, %for.end31 ], [ 0, %for.body.preheader ]
  br i1 %cmp15240, label %for.body17.lr.ph, label %for.end31

for.body17.lr.ph:                                 ; preds = %for.body
  %mul20 = mul nsw i32 %y.0245, %i_pix1
  %add.ptr21 = getelementptr inbounds i8, i8* %pix1, i32 %mul20
  %mul23 = mul nsw i32 %y.0245, %i_pix2
  %add.ptr24 = getelementptr inbounds i8, i8* %pix2, i32 %mul23
  br label %for.body17

for.body17:                                       ; preds = %for.body17.lr.ph, %for.body17
  %i_ssd.3242 = phi i64 [ %i_ssd.0249, %for.body17.lr.ph ], [ %add28, %for.body17 ]
  %x.2241 = phi i32 [ 0, %for.body17.lr.ph ], [ %add30, %for.body17 ]
  %4 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx19, align 4, !tbaa !2
  %add.ptr22 = getelementptr inbounds i8, i8* %add.ptr21, i32 %x.2241
  %add.ptr25 = getelementptr inbounds i8, i8* %add.ptr24, i32 %x.2241
  %call26 = tail call i32 %4(i8* %add.ptr22, i32 %i_pix1, i8* %add.ptr25, i32 %i_pix2) #8
  %conv27 = sext i32 %call26 to i64
  %add28 = add i64 %i_ssd.3242, %conv27
  %add30 = add nuw nsw i32 %x.2241, 8
  %cmp15 = icmp slt i32 %add30, %sub14
  br i1 %cmp15, label %for.body17, label %for.end31

for.end31:                                        ; preds = %for.body17, %for.body
  %i_ssd.3.lcssa = phi i64 [ %i_ssd.0249, %for.body ], [ %add28, %for.body17 ]
  %add33 = add nuw nsw i32 %y.0245, 16
  %cmp = icmp slt i32 %add33, %sub
  br i1 %cmp, label %for.body, label %for.end34

for.end34:                                        ; preds = %for.end31, %for.end31.us, %entry
  %y.0.lcssa = phi i32 [ 0, %entry ], [ %add33.us, %for.end31.us ], [ %add33, %for.end31 ]
  %i_ssd.0.lcssa = phi i64 [ 0, %entry ], [ %i_ssd.3.lcssa.us, %for.end31.us ], [ %i_ssd.3.lcssa, %for.end31 ]
  %sub35 = add nsw i32 %i_height, -7
  %cmp36 = icmp slt i32 %y.0.lcssa, %sub35
  br i1 %cmp36, label %for.cond40.preheader, label %if.end59

for.cond40.preheader:                             ; preds = %for.end34
  %sub41 = add nsw i32 %i_width, -7
  %cmp42231 = icmp sgt i32 %i_width, 7
  br i1 %cmp42231, label %for.body44.lr.ph, label %if.end59

for.body44.lr.ph:                                 ; preds = %for.cond40.preheader
  %arrayidx46 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pf, i32 0, i32 1, i32 3
  %mul47 = mul nsw i32 %y.0.lcssa, %i_pix1
  %add.ptr48 = getelementptr inbounds i8, i8* %pix1, i32 %mul47
  %mul50 = mul nsw i32 %y.0.lcssa, %i_pix2
  %add.ptr51 = getelementptr inbounds i8, i8* %pix2, i32 %mul50
  br label %for.body44

for.body44:                                       ; preds = %for.body44.lr.ph, %for.body44
  %i_ssd.4233 = phi i64 [ %i_ssd.0.lcssa, %for.body44.lr.ph ], [ %add55, %for.body44 ]
  %x39.0232 = phi i32 [ 0, %for.body44.lr.ph ], [ %add57, %for.body44 ]
  %5 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %arrayidx46, align 4, !tbaa !2
  %add.ptr49 = getelementptr inbounds i8, i8* %add.ptr48, i32 %x39.0232
  %add.ptr52 = getelementptr inbounds i8, i8* %add.ptr51, i32 %x39.0232
  %call53 = tail call i32 %5(i8* %add.ptr49, i32 %i_pix1, i8* %add.ptr52, i32 %i_pix2) #8
  %conv54 = sext i32 %call53 to i64
  %add55 = add i64 %i_ssd.4233, %conv54
  %add57 = add nuw nsw i32 %x39.0232, 8
  %cmp42 = icmp slt i32 %add57, %sub41
  br i1 %cmp42, label %for.body44, label %if.end59

if.end59:                                         ; preds = %for.body44, %for.cond40.preheader, %for.end34
  %i_ssd.5 = phi i64 [ %i_ssd.0.lcssa, %for.end34 ], [ %i_ssd.0.lcssa, %for.cond40.preheader ], [ %add55, %for.body44 ]
  %and60 = and i32 %i_width, 7
  %tobool61 = icmp eq i32 %and60, 0
  br i1 %tobool61, label %if.end92, label %for.cond63.preheader

for.cond63.preheader:                             ; preds = %if.end59
  %and64 = and i32 %i_height, -8
  %cmp65226 = icmp sgt i32 %and64, 0
  br i1 %cmp65226, label %for.body67.lr.ph, label %if.end92

for.body67.lr.ph:                                 ; preds = %for.cond63.preheader
  %and69 = and i32 %i_width, -8
  %cmp71222 = icmp slt i32 %and69, %i_width
  br i1 %cmp71222, label %for.body67.us, label %if.end92

for.body67.us:                                    ; preds = %for.body67.lr.ph, %for.cond70.for.cond.cleanup73_crit_edge.us
  %i_ssd.6229.us = phi i64 [ %add86.us, %for.cond70.for.cond.cleanup73_crit_edge.us ], [ %i_ssd.5, %for.body67.lr.ph ]
  %y.1227.us = phi i32 [ %inc90.us, %for.cond70.for.cond.cleanup73_crit_edge.us ], [ 0, %for.body67.lr.ph ]
  %mul75.us = mul nsw i32 %y.1227.us, %i_pix1
  %mul79.us = mul nsw i32 %y.1227.us, %i_pix2
  br label %for.body74.us

for.body74.us:                                    ; preds = %for.body74.us, %for.body67.us
  %i_ssd.7224.us = phi i64 [ %i_ssd.6229.us, %for.body67.us ], [ %add86.us, %for.body74.us ]
  %x68.0223.us = phi i32 [ %and69, %for.body67.us ], [ %inc.us, %for.body74.us ]
  %add76.us = add nsw i32 %x68.0223.us, %mul75.us
  %arrayidx77.us = getelementptr inbounds i8, i8* %pix1, i32 %add76.us
  %6 = load i8, i8* %arrayidx77.us, align 1, !tbaa !6
  %conv78.us = zext i8 %6 to i32
  %add80.us = add nsw i32 %x68.0223.us, %mul79.us
  %arrayidx81.us = getelementptr inbounds i8, i8* %pix2, i32 %add80.us
  %7 = load i8, i8* %arrayidx81.us, align 1, !tbaa !6
  %conv82.us = zext i8 %7 to i32
  %sub83.us = sub nsw i32 %conv78.us, %conv82.us
  %mul84.us = mul nsw i32 %sub83.us, %sub83.us
  %conv85.us = zext i32 %mul84.us to i64
  %add86.us = add i64 %i_ssd.7224.us, %conv85.us
  %inc.us = add nsw i32 %x68.0223.us, 1
  %exitcond256 = icmp eq i32 %inc.us, %i_width
  br i1 %exitcond256, label %for.cond70.for.cond.cleanup73_crit_edge.us, label %for.body74.us

for.cond70.for.cond.cleanup73_crit_edge.us:       ; preds = %for.body74.us
  %inc90.us = add nuw nsw i32 %y.1227.us, 1
  %exitcond257 = icmp eq i32 %inc90.us, %and64
  br i1 %exitcond257, label %if.end92, label %for.body67.us

if.end92:                                         ; preds = %for.cond70.for.cond.cleanup73_crit_edge.us, %for.body67.lr.ph, %for.cond63.preheader, %if.end59
  %i_ssd.8 = phi i64 [ %i_ssd.5, %if.end59 ], [ %i_ssd.5, %for.cond63.preheader ], [ %i_ssd.5, %for.body67.lr.ph ], [ %add86.us, %for.cond70.for.cond.cleanup73_crit_edge.us ]
  %and93 = and i32 %i_height, 7
  %tobool94 = icmp eq i32 %and93, 0
  br i1 %tobool94, label %if.end126, label %if.then95

if.then95:                                        ; preds = %if.end92
  %and96 = and i32 %i_height, -8
  %cmp98217 = icmp slt i32 %and96, %i_height
  %cmp103214 = icmp sgt i32 %i_width, 0
  %or.cond = and i1 %cmp98217, %cmp103214
  br i1 %or.cond, label %for.cond102.preheader.us, label %if.end126

for.cond102.preheader.us:                         ; preds = %if.then95, %for.cond102.for.cond.cleanup105_crit_edge.us
  %i_ssd.9220.us = phi i64 [ %add119.us, %for.cond102.for.cond.cleanup105_crit_edge.us ], [ %i_ssd.8, %if.then95 ]
  %y.2218.us = phi i32 [ %inc124.us, %for.cond102.for.cond.cleanup105_crit_edge.us ], [ %and96, %if.then95 ]
  %mul108.us = mul nsw i32 %y.2218.us, %i_pix1
  %mul112.us = mul nsw i32 %y.2218.us, %i_pix2
  br label %for.body106.us

for.body106.us:                                   ; preds = %for.body106.us, %for.cond102.preheader.us
  %i_ssd.10216.us = phi i64 [ %i_ssd.9220.us, %for.cond102.preheader.us ], [ %add119.us, %for.body106.us ]
  %x101.0215.us = phi i32 [ 0, %for.cond102.preheader.us ], [ %inc121.us, %for.body106.us ]
  %add109.us = add nsw i32 %x101.0215.us, %mul108.us
  %arrayidx110.us = getelementptr inbounds i8, i8* %pix1, i32 %add109.us
  %8 = load i8, i8* %arrayidx110.us, align 1, !tbaa !6
  %conv111.us = zext i8 %8 to i32
  %add113.us = add nsw i32 %x101.0215.us, %mul112.us
  %arrayidx114.us = getelementptr inbounds i8, i8* %pix2, i32 %add113.us
  %9 = load i8, i8* %arrayidx114.us, align 1, !tbaa !6
  %conv115.us = zext i8 %9 to i32
  %sub116.us = sub nsw i32 %conv111.us, %conv115.us
  %mul117.us = mul nsw i32 %sub116.us, %sub116.us
  %conv118.us = zext i32 %mul117.us to i64
  %add119.us = add i64 %i_ssd.10216.us, %conv118.us
  %inc121.us = add nuw nsw i32 %x101.0215.us, 1
  %exitcond = icmp eq i32 %inc121.us, %i_width
  br i1 %exitcond, label %for.cond102.for.cond.cleanup105_crit_edge.us, label %for.body106.us

for.cond102.for.cond.cleanup105_crit_edge.us:     ; preds = %for.body106.us
  %inc124.us = add nsw i32 %y.2218.us, 1
  %exitcond255 = icmp eq i32 %inc124.us, %i_height
  br i1 %exitcond255, label %if.end126, label %for.cond102.preheader.us

if.end126:                                        ; preds = %for.cond102.for.cond.cleanup105_crit_edge.us, %if.then95, %if.end92
  %i_ssd.11 = phi i64 [ %i_ssd.8, %if.end92 ], [ %i_ssd.8, %if.then95 ], [ %add119.us, %for.cond102.for.cond.cleanup105_crit_edge.us ]
  ret i64 %i_ssd.11
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
define hidden void @x264_8_pixel_ssd_nv12(%struct.x264_pixel_function_t* nocapture readonly %pf, i8* %pix1, i32 %i_pix1, i8* %pix2, i32 %i_pix2, i32 %i_width, i32 %i_height, i64* %ssd_u, i64* %ssd_v) local_unnamed_addr #0 {
entry:
  %ssd_nv12_core = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pf, i32 0, i32 17
  %0 = load void (i8*, i32, i8*, i32, i32, i32, i64*, i64*)*, void (i8*, i32, i8*, i32, i32, i32, i64*, i64*)** %ssd_nv12_core, align 4, !tbaa !7
  %and = and i32 %i_width, -8
  tail call void %0(i8* %pix1, i32 %i_pix1, i8* %pix2, i32 %i_pix2, i32 %and, i32 %i_height, i64* %ssd_u, i64* %ssd_v) #8
  %and1 = and i32 %i_width, 7
  %tobool = icmp eq i32 %and1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %cmp46.i = icmp sgt i32 %i_height, 0
  br i1 %cmp46.i, label %for.cond1.preheader.us.i.preheader, label %pixel_ssd_nv12_core.exit

for.cond1.preheader.us.i.preheader:               ; preds = %if.then
  %add.ptr4 = getelementptr inbounds i8, i8* %pix2, i32 %and
  %add.ptr = getelementptr inbounds i8, i8* %pix1, i32 %and
  br label %for.cond1.preheader.us.i

for.cond1.preheader.us.i:                         ; preds = %for.cond1.preheader.us.i.preheader, %for.cond1.for.cond.cleanup3_crit_edge.us.i
  %tmp.sroa.6.0 = phi i64 [ %add21.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ 0, %for.cond1.preheader.us.i.preheader ]
  %tmp.sroa.0.0 = phi i64 [ %add18.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ 0, %for.cond1.preheader.us.i.preheader ]
  %pixuv1.addr.049.us.i = phi i8* [ %add.ptr.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ %add.ptr, %for.cond1.preheader.us.i.preheader ]
  %pixuv2.addr.048.us.i = phi i8* [ %add.ptr24.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ %add.ptr4, %for.cond1.preheader.us.i.preheader ]
  %y.047.us.i = phi i32 [ %inc23.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ 0, %for.cond1.preheader.us.i.preheader ]
  br label %for.body4.us.i

for.body4.us.i:                                   ; preds = %for.body4.us.i, %for.cond1.preheader.us.i
  %tmp.sroa.6.1 = phi i64 [ %tmp.sroa.6.0, %for.cond1.preheader.us.i ], [ %add21.us.i, %for.body4.us.i ]
  %tmp.sroa.0.1 = phi i64 [ %tmp.sroa.0.0, %for.cond1.preheader.us.i ], [ %add18.us.i, %for.body4.us.i ]
  %x.045.us.i = phi i32 [ 0, %for.cond1.preheader.us.i ], [ %inc.us.i, %for.body4.us.i ]
  %mul.us.i = shl nuw nsw i32 %x.045.us.i, 1
  %arrayidx.us.i = getelementptr inbounds i8, i8* %pixuv1.addr.049.us.i, i32 %mul.us.i
  %1 = load i8, i8* %arrayidx.us.i, align 1, !tbaa !6
  %conv.us.i = zext i8 %1 to i32
  %arrayidx6.us.i = getelementptr inbounds i8, i8* %pixuv2.addr.048.us.i, i32 %mul.us.i
  %2 = load i8, i8* %arrayidx6.us.i, align 1, !tbaa !6
  %conv7.us.i = zext i8 %2 to i32
  %sub.us.i = sub nsw i32 %conv.us.i, %conv7.us.i
  %add.us.i = or i32 %mul.us.i, 1
  %arrayidx9.us.i = getelementptr inbounds i8, i8* %pixuv1.addr.049.us.i, i32 %add.us.i
  %3 = load i8, i8* %arrayidx9.us.i, align 1, !tbaa !6
  %conv10.us.i = zext i8 %3 to i32
  %arrayidx13.us.i = getelementptr inbounds i8, i8* %pixuv2.addr.048.us.i, i32 %add.us.i
  %4 = load i8, i8* %arrayidx13.us.i, align 1, !tbaa !6
  %conv14.us.i = zext i8 %4 to i32
  %sub15.us.i = sub nsw i32 %conv10.us.i, %conv14.us.i
  %mul16.us.i = mul nsw i32 %sub.us.i, %sub.us.i
  %conv17.us.i = zext i32 %mul16.us.i to i64
  %add18.us.i = add i64 %tmp.sroa.0.1, %conv17.us.i
  %mul19.us.i = mul nsw i32 %sub15.us.i, %sub15.us.i
  %conv20.us.i = zext i32 %mul19.us.i to i64
  %add21.us.i = add i64 %tmp.sroa.6.1, %conv20.us.i
  %inc.us.i = add nuw nsw i32 %x.045.us.i, 1
  %exitcond.i = icmp eq i32 %inc.us.i, %and1
  br i1 %exitcond.i, label %for.cond1.for.cond.cleanup3_crit_edge.us.i, label %for.body4.us.i

for.cond1.for.cond.cleanup3_crit_edge.us.i:       ; preds = %for.body4.us.i
  %inc23.us.i = add nuw nsw i32 %y.047.us.i, 1
  %add.ptr.us.i = getelementptr inbounds i8, i8* %pixuv1.addr.049.us.i, i32 %i_pix1
  %add.ptr24.us.i = getelementptr inbounds i8, i8* %pixuv2.addr.048.us.i, i32 %i_pix2
  %exitcond51.i = icmp eq i32 %inc23.us.i, %i_height
  br i1 %exitcond51.i, label %pixel_ssd_nv12_core.exit, label %for.cond1.preheader.us.i

pixel_ssd_nv12_core.exit:                         ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us.i, %if.then
  %tmp.sroa.6.2 = phi i64 [ 0, %if.then ], [ %add21.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ]
  %tmp.sroa.0.2 = phi i64 [ 0, %if.then ], [ %add18.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ]
  %5 = load i64, i64* %ssd_u, align 8, !tbaa !9
  %add = add i64 %5, %tmp.sroa.0.2
  store i64 %add, i64* %ssd_u, align 8, !tbaa !9
  %6 = load i64, i64* %ssd_v, align 8, !tbaa !9
  %add9 = add i64 %6, %tmp.sroa.6.2
  store i64 %add9, i64* %ssd_v, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %entry, %pixel_ssd_nv12_core.exit
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @pixel_ssd_nv12_core(i8* nocapture readonly %pixuv1, i32 %stride1, i8* nocapture readonly %pixuv2, i32 %stride2, i32 %width, i32 %height, i64* nocapture %ssd_u, i64* nocapture %ssd_v) #2 {
entry:
  store i64 0, i64* %ssd_u, align 8, !tbaa !9
  store i64 0, i64* %ssd_v, align 8, !tbaa !9
  %cmp46 = icmp sgt i32 %height, 0
  %cmp244 = icmp sgt i32 %width, 0
  %or.cond = and i1 %cmp46, %cmp244
  br i1 %or.cond, label %for.cond1.preheader.us, label %for.cond.cleanup

for.cond1.preheader.us:                           ; preds = %entry, %for.cond1.for.cond.cleanup3_crit_edge.us
  %pixuv1.addr.049.us = phi i8* [ %add.ptr.us, %for.cond1.for.cond.cleanup3_crit_edge.us ], [ %pixuv1, %entry ]
  %pixuv2.addr.048.us = phi i8* [ %add.ptr24.us, %for.cond1.for.cond.cleanup3_crit_edge.us ], [ %pixuv2, %entry ]
  %y.047.us = phi i32 [ %inc23.us, %for.cond1.for.cond.cleanup3_crit_edge.us ], [ 0, %entry ]
  br label %for.body4.us

for.body4.us:                                     ; preds = %for.body4.us, %for.cond1.preheader.us
  %x.045.us = phi i32 [ 0, %for.cond1.preheader.us ], [ %inc.us, %for.body4.us ]
  %mul.us = shl nuw nsw i32 %x.045.us, 1
  %arrayidx.us = getelementptr inbounds i8, i8* %pixuv1.addr.049.us, i32 %mul.us
  %0 = load i8, i8* %arrayidx.us, align 1, !tbaa !6
  %conv.us = zext i8 %0 to i32
  %arrayidx6.us = getelementptr inbounds i8, i8* %pixuv2.addr.048.us, i32 %mul.us
  %1 = load i8, i8* %arrayidx6.us, align 1, !tbaa !6
  %conv7.us = zext i8 %1 to i32
  %sub.us = sub nsw i32 %conv.us, %conv7.us
  %add.us = or i32 %mul.us, 1
  %arrayidx9.us = getelementptr inbounds i8, i8* %pixuv1.addr.049.us, i32 %add.us
  %2 = load i8, i8* %arrayidx9.us, align 1, !tbaa !6
  %conv10.us = zext i8 %2 to i32
  %arrayidx13.us = getelementptr inbounds i8, i8* %pixuv2.addr.048.us, i32 %add.us
  %3 = load i8, i8* %arrayidx13.us, align 1, !tbaa !6
  %conv14.us = zext i8 %3 to i32
  %sub15.us = sub nsw i32 %conv10.us, %conv14.us
  %mul16.us = mul nsw i32 %sub.us, %sub.us
  %conv17.us = zext i32 %mul16.us to i64
  %4 = load i64, i64* %ssd_u, align 8, !tbaa !9
  %add18.us = add i64 %4, %conv17.us
  store i64 %add18.us, i64* %ssd_u, align 8, !tbaa !9
  %mul19.us = mul nsw i32 %sub15.us, %sub15.us
  %conv20.us = zext i32 %mul19.us to i64
  %5 = load i64, i64* %ssd_v, align 8, !tbaa !9
  %add21.us = add i64 %5, %conv20.us
  store i64 %add21.us, i64* %ssd_v, align 8, !tbaa !9
  %inc.us = add nuw nsw i32 %x.045.us, 1
  %exitcond = icmp eq i32 %inc.us, %width
  br i1 %exitcond, label %for.cond1.for.cond.cleanup3_crit_edge.us, label %for.body4.us

for.cond1.for.cond.cleanup3_crit_edge.us:         ; preds = %for.body4.us
  %inc23.us = add nuw nsw i32 %y.047.us, 1
  %add.ptr.us = getelementptr inbounds i8, i8* %pixuv1.addr.049.us, i32 %stride1
  %add.ptr24.us = getelementptr inbounds i8, i8* %pixuv2.addr.048.us, i32 %stride2
  %exitcond51 = icmp eq i32 %inc23.us, %height
  br i1 %exitcond51, label %for.cond.cleanup, label %for.cond1.preheader.us

for.cond.cleanup:                                 ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us, %entry
  ret void
}

; Function Attrs: nounwind
define hidden float @x264_8_pixel_ssim_wxh(%struct.x264_pixel_function_t* nocapture readonly %pf, i8* %pix1, i32 %stride1, i8* %pix2, i32 %stride2, i32 %width, i32 %height, i8* %buf, i32* nocapture %cnt) local_unnamed_addr #0 {
entry:
  %0 = bitcast i8* %buf to [4 x i32]*
  %shr = ashr i32 %width, 2
  %add.ptr = getelementptr inbounds [4 x i32], [4 x i32]* %0, i32 %shr
  %add.ptr1 = getelementptr inbounds [4 x i32], [4 x i32]* %add.ptr, i32 3
  %shr3 = ashr i32 %height, 2
  %cmp93 = icmp sgt i32 %height, 7
  br i1 %cmp93, label %for.cond4.preheader.lr.ph, label %entry.for.cond.cleanup_crit_edge

entry.for.cond.cleanup_crit_edge:                 ; preds = %entry
  %.pre = add nsw i32 %shr, -1
  br label %for.cond.cleanup

for.cond4.preheader.lr.ph:                        ; preds = %entry
  %cmp880 = icmp sgt i32 %width, 3
  %ssim_4x4x2_core = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pf, i32 0, i32 18
  %sub = add nsw i32 %shr, -1
  %cmp2289 = icmp sgt i32 %width, 7
  %ssim_end4 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pf, i32 0, i32 19
  br i1 %cmp2289, label %for.cond4.preheader.us, label %for.cond4.preheader

for.cond4.preheader.us:                           ; preds = %for.cond4.preheader.lr.ph, %for.cond21.for.cond.cleanup23_crit_edge.us
  %y.098.us = phi i32 [ %inc37.us, %for.cond21.for.cond.cleanup23_crit_edge.us ], [ 1, %for.cond4.preheader.lr.ph ]
  %sum1.097.us = phi [4 x i32]* [ %sum1.1.lcssa.us, %for.cond21.for.cond.cleanup23_crit_edge.us ], [ %add.ptr1, %for.cond4.preheader.lr.ph ]
  %sum0.096.us = phi [4 x i32]* [ %sum0.1.lcssa.us, %for.cond21.for.cond.cleanup23_crit_edge.us ], [ %0, %for.cond4.preheader.lr.ph ]
  %ssim.095.us = phi float [ %add32.us, %for.cond21.for.cond.cleanup23_crit_edge.us ], [ 0.000000e+00, %for.cond4.preheader.lr.ph ]
  %z.094.us = phi i32 [ %z.1.lcssa.us, %for.cond21.for.cond.cleanup23_crit_edge.us ], [ 0, %for.cond4.preheader.lr.ph ]
  %cmp582.us = icmp sgt i32 %z.094.us, %y.098.us
  br i1 %cmp582.us, label %for.body24.lr.ph.us, label %for.cond7.preheader.lr.ph.us

for.body24.us:                                    ; preds = %for.body24.lr.ph.us, %for.body24.us
  %x20.091.us = phi i32 [ 0, %for.body24.lr.ph.us ], [ %add34.us, %for.body24.us ]
  %ssim.190.us = phi float [ %ssim.095.us, %for.body24.lr.ph.us ], [ %add32.us, %for.body24.us ]
  %1 = load float ([4 x i32]*, [4 x i32]*, i32)*, float ([4 x i32]*, [4 x i32]*, i32)** %ssim_end4, align 4, !tbaa !11
  %add.ptr25.us = getelementptr inbounds [4 x i32], [4 x i32]* %sum0.1.lcssa.us, i32 %x20.091.us
  %add.ptr26.us = getelementptr inbounds [4 x i32], [4 x i32]* %sum1.1.lcssa.us, i32 %x20.091.us
  %2 = xor i32 %x20.091.us, -1
  %sub28.us = add nsw i32 %shr, %2
  %3 = icmp slt i32 %sub28.us, 4
  %cond.us = select i1 %3, i32 %sub28.us, i32 4
  %call.us = tail call fast float %1([4 x i32]* %add.ptr25.us, [4 x i32]* %add.ptr26.us, i32 %cond.us) #8
  %add32.us = fadd fast float %call.us, %ssim.190.us
  %add34.us = add nuw nsw i32 %x20.091.us, 4
  %cmp22.us = icmp slt i32 %add34.us, %sub
  br i1 %cmp22.us, label %for.body24.us, label %for.cond21.for.cond.cleanup23_crit_edge.us

for.cond7.preheader.us115:                        ; preds = %for.cond7.preheader.lr.ph.us, %for.cond7.preheader.us115
  %sum1.186.us116 = phi [4 x i32]* [ %sum0.185.us117, %for.cond7.preheader.us115 ], [ %sum1.097.us, %for.cond7.preheader.lr.ph.us ]
  %sum0.185.us117 = phi [4 x i32]* [ %sum1.186.us116, %for.cond7.preheader.us115 ], [ %sum0.096.us, %for.cond7.preheader.lr.ph.us ]
  %z.183.us118 = phi i32 [ %inc.us102, %for.cond7.preheader.us115 ], [ %z.094.us, %for.cond7.preheader.lr.ph.us ]
  %inc.us102 = add nsw i32 %z.183.us118, 1
  %cmp5.us103 = icmp slt i32 %z.183.us118, %y.098.us
  br i1 %cmp5.us103, label %for.cond7.preheader.us115, label %for.body24.lr.ph.us

for.cond7.preheader.lr.ph.us:                     ; preds = %for.cond4.preheader.us
  br i1 %cmp880, label %for.cond7.preheader.us.us, label %for.cond7.preheader.us115

for.body24.lr.ph.us:                              ; preds = %for.cond7.preheader.us115, %for.cond7.for.cond.cleanup9_crit_edge.us.us, %for.cond4.preheader.us
  %z.1.lcssa.us = phi i32 [ %z.094.us, %for.cond4.preheader.us ], [ %inc.us.us, %for.cond7.for.cond.cleanup9_crit_edge.us.us ], [ %inc.us102, %for.cond7.preheader.us115 ]
  %sum0.1.lcssa.us = phi [4 x i32]* [ %sum0.096.us, %for.cond4.preheader.us ], [ %sum1.186.us.us, %for.cond7.for.cond.cleanup9_crit_edge.us.us ], [ %sum1.186.us116, %for.cond7.preheader.us115 ]
  %sum1.1.lcssa.us = phi [4 x i32]* [ %sum1.097.us, %for.cond4.preheader.us ], [ %sum0.185.us.us, %for.cond7.for.cond.cleanup9_crit_edge.us.us ], [ %sum0.185.us117, %for.cond7.preheader.us115 ]
  br label %for.body24.us

for.cond21.for.cond.cleanup23_crit_edge.us:       ; preds = %for.body24.us
  %inc37.us = add nuw nsw i32 %y.098.us, 1
  %cmp.us = icmp slt i32 %inc37.us, %shr3
  br i1 %cmp.us, label %for.cond4.preheader.us, label %for.cond.cleanup

for.cond7.preheader.us.us:                        ; preds = %for.cond7.preheader.lr.ph.us, %for.cond7.for.cond.cleanup9_crit_edge.us.us
  %sum1.186.us.us = phi [4 x i32]* [ %sum0.185.us.us, %for.cond7.for.cond.cleanup9_crit_edge.us.us ], [ %sum1.097.us, %for.cond7.preheader.lr.ph.us ]
  %sum0.185.us.us = phi [4 x i32]* [ %sum1.186.us.us, %for.cond7.for.cond.cleanup9_crit_edge.us.us ], [ %sum0.096.us, %for.cond7.preheader.lr.ph.us ]
  %z.183.us.us = phi i32 [ %inc.us.us, %for.cond7.for.cond.cleanup9_crit_edge.us.us ], [ %z.094.us, %for.cond7.preheader.lr.ph.us ]
  %mul.us.us = mul nsw i32 %z.183.us.us, %stride1
  %mul12.us.us = mul nsw i32 %z.183.us.us, %stride2
  br label %for.body10.us.us

for.cond7.for.cond.cleanup9_crit_edge.us.us:      ; preds = %for.body10.us.us
  %inc.us.us = add nsw i32 %z.183.us.us, 1
  %cmp5.us.us = icmp slt i32 %z.183.us.us, %y.098.us
  br i1 %cmp5.us.us, label %for.cond7.preheader.us.us, label %for.body24.lr.ph.us

for.body10.us.us:                                 ; preds = %for.body10.us.us, %for.cond7.preheader.us.us
  %x.081.us.us = phi i32 [ 0, %for.cond7.preheader.us.us ], [ %add17.us.us, %for.body10.us.us ]
  %4 = load void (i8*, i32, i8*, i32, [4 x i32]*)*, void (i8*, i32, i8*, i32, [4 x i32]*)** %ssim_4x4x2_core, align 4, !tbaa !12
  %add.us.us = add nsw i32 %x.081.us.us, %mul.us.us
  %mul11.us.us = shl nsw i32 %add.us.us, 2
  %arrayidx.us.us = getelementptr inbounds i8, i8* %pix1, i32 %mul11.us.us
  %add13.us.us = add nsw i32 %x.081.us.us, %mul12.us.us
  %mul14.us.us = shl nsw i32 %add13.us.us, 2
  %arrayidx15.us.us = getelementptr inbounds i8, i8* %pix2, i32 %mul14.us.us
  %arrayidx16.us.us = getelementptr inbounds [4 x i32], [4 x i32]* %sum1.186.us.us, i32 %x.081.us.us
  tail call void %4(i8* %arrayidx.us.us, i32 %stride1, i8* %arrayidx15.us.us, i32 %stride2, [4 x i32]* %arrayidx16.us.us) #8
  %add17.us.us = add nuw nsw i32 %x.081.us.us, 2
  %cmp8.us.us = icmp slt i32 %add17.us.us, %shr
  br i1 %cmp8.us.us, label %for.body10.us.us, label %for.cond7.for.cond.cleanup9_crit_edge.us.us

for.cond4.preheader:                              ; preds = %for.cond4.preheader.lr.ph, %for.cond.cleanup23
  %y.098 = phi i32 [ %inc37, %for.cond.cleanup23 ], [ 1, %for.cond4.preheader.lr.ph ]
  %sum1.097 = phi [4 x i32]* [ %sum1.1.lcssa, %for.cond.cleanup23 ], [ %add.ptr1, %for.cond4.preheader.lr.ph ]
  %sum0.096 = phi [4 x i32]* [ %sum0.1.lcssa, %for.cond.cleanup23 ], [ %0, %for.cond4.preheader.lr.ph ]
  %z.094 = phi i32 [ %z.1.lcssa, %for.cond.cleanup23 ], [ 0, %for.cond4.preheader.lr.ph ]
  %cmp582 = icmp sgt i32 %z.094, %y.098
  br i1 %cmp582, label %for.cond.cleanup23, label %for.cond7.preheader.lr.ph

for.cond7.preheader.lr.ph:                        ; preds = %for.cond4.preheader
  br i1 %cmp880, label %for.cond7.preheader.us, label %for.cond7.preheader

for.cond7.preheader.us:                           ; preds = %for.cond7.preheader.lr.ph, %for.cond7.for.cond.cleanup9_crit_edge.us
  %sum1.186.us = phi [4 x i32]* [ %sum0.185.us, %for.cond7.for.cond.cleanup9_crit_edge.us ], [ %sum1.097, %for.cond7.preheader.lr.ph ]
  %sum0.185.us = phi [4 x i32]* [ %sum1.186.us, %for.cond7.for.cond.cleanup9_crit_edge.us ], [ %sum0.096, %for.cond7.preheader.lr.ph ]
  %z.183.us = phi i32 [ %inc.us, %for.cond7.for.cond.cleanup9_crit_edge.us ], [ %z.094, %for.cond7.preheader.lr.ph ]
  %mul.us = mul nsw i32 %z.183.us, %stride1
  %mul12.us = mul nsw i32 %z.183.us, %stride2
  br label %for.body10.us

for.body10.us:                                    ; preds = %for.cond7.preheader.us, %for.body10.us
  %x.081.us = phi i32 [ 0, %for.cond7.preheader.us ], [ %add17.us, %for.body10.us ]
  %5 = load void (i8*, i32, i8*, i32, [4 x i32]*)*, void (i8*, i32, i8*, i32, [4 x i32]*)** %ssim_4x4x2_core, align 4, !tbaa !12
  %add.us = add nsw i32 %x.081.us, %mul.us
  %mul11.us = shl nsw i32 %add.us, 2
  %arrayidx.us = getelementptr inbounds i8, i8* %pix1, i32 %mul11.us
  %add13.us = add nsw i32 %x.081.us, %mul12.us
  %mul14.us = shl nsw i32 %add13.us, 2
  %arrayidx15.us = getelementptr inbounds i8, i8* %pix2, i32 %mul14.us
  %arrayidx16.us = getelementptr inbounds [4 x i32], [4 x i32]* %sum1.186.us, i32 %x.081.us
  tail call void %5(i8* %arrayidx.us, i32 %stride1, i8* %arrayidx15.us, i32 %stride2, [4 x i32]* %arrayidx16.us) #8
  %add17.us = add nuw nsw i32 %x.081.us, 2
  %cmp8.us = icmp slt i32 %add17.us, %shr
  br i1 %cmp8.us, label %for.body10.us, label %for.cond7.for.cond.cleanup9_crit_edge.us

for.cond7.for.cond.cleanup9_crit_edge.us:         ; preds = %for.body10.us
  %inc.us = add nsw i32 %z.183.us, 1
  %cmp5.us = icmp slt i32 %z.183.us, %y.098
  br i1 %cmp5.us, label %for.cond7.preheader.us, label %for.cond.cleanup23

for.cond.cleanup:                                 ; preds = %for.cond.cleanup23, %for.cond21.for.cond.cleanup23_crit_edge.us, %entry.for.cond.cleanup_crit_edge
  %sub40.pre-phi = phi i32 [ %.pre, %entry.for.cond.cleanup_crit_edge ], [ %sub, %for.cond21.for.cond.cleanup23_crit_edge.us ], [ %sub, %for.cond.cleanup23 ]
  %ssim.0.lcssa = phi float [ 0.000000e+00, %entry.for.cond.cleanup_crit_edge ], [ %add32.us, %for.cond21.for.cond.cleanup23_crit_edge.us ], [ 0.000000e+00, %for.cond.cleanup23 ]
  %sub39 = add nsw i32 %shr3, -1
  %mul41 = mul nsw i32 %sub39, %sub40.pre-phi
  store i32 %mul41, i32* %cnt, align 4, !tbaa !13
  ret float %ssim.0.lcssa

for.cond7.preheader:                              ; preds = %for.cond7.preheader.lr.ph, %for.cond7.preheader
  %sum1.186 = phi [4 x i32]* [ %sum0.185, %for.cond7.preheader ], [ %sum1.097, %for.cond7.preheader.lr.ph ]
  %sum0.185 = phi [4 x i32]* [ %sum1.186, %for.cond7.preheader ], [ %sum0.096, %for.cond7.preheader.lr.ph ]
  %z.183 = phi i32 [ %inc, %for.cond7.preheader ], [ %z.094, %for.cond7.preheader.lr.ph ]
  %inc = add nsw i32 %z.183, 1
  %cmp5 = icmp slt i32 %z.183, %y.098
  br i1 %cmp5, label %for.cond7.preheader, label %for.cond.cleanup23

for.cond.cleanup23:                               ; preds = %for.cond7.preheader, %for.cond7.for.cond.cleanup9_crit_edge.us, %for.cond4.preheader
  %z.1.lcssa = phi i32 [ %z.094, %for.cond4.preheader ], [ %inc.us, %for.cond7.for.cond.cleanup9_crit_edge.us ], [ %inc, %for.cond7.preheader ]
  %sum0.1.lcssa = phi [4 x i32]* [ %sum0.096, %for.cond4.preheader ], [ %sum1.186.us, %for.cond7.for.cond.cleanup9_crit_edge.us ], [ %sum1.186, %for.cond7.preheader ]
  %sum1.1.lcssa = phi [4 x i32]* [ %sum1.097, %for.cond4.preheader ], [ %sum0.185.us, %for.cond7.for.cond.cleanup9_crit_edge.us ], [ %sum0.185, %for.cond7.preheader ]
  %inc37 = add nuw nsw i32 %y.098, 1
  %cmp = icmp slt i32 %inc37, %shr3
  br i1 %cmp, label %for.cond4.preheader, label %for.cond.cleanup
}

; Function Attrs: nounwind
define hidden i32 @x264_8_field_vsad(%struct.x264_t* nocapture readonly %h, i32 %mb_x, i32 %mb_y) local_unnamed_addr #0 {
entry:
  %fenc = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 60
  %0 = load %struct.x264_frame*, %struct.x264_frame** %fenc, align 8, !tbaa !15
  %arrayidx = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %0, i32 0, i32 31, i32 0
  %1 = load i32, i32* %arrayidx, align 4, !tbaa !13
  %i_mb_stride = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 5
  %2 = load i32, i32* %i_mb_stride, align 4, !tbaa !43
  %arrayidx3 = getelementptr inbounds %struct.x264_frame, %struct.x264_frame* %0, i32 0, i32 37, i32 0
  %3 = load i8*, i8** %arrayidx3, align 4, !tbaa !2
  %mul = mul nsw i32 %1, %mb_y
  %add = add nsw i32 %mul, %mb_x
  %mul4 = shl nsw i32 %add, 4
  %add.ptr = getelementptr inbounds i8, i8* %3, i32 %mul4
  %mul5 = mul nsw i32 %2, %mb_y
  %add6 = add nsw i32 %mul5, %mb_x
  %i_height = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 8
  %4 = load i32, i32* %i_height, align 32, !tbaa !44
  %mul7 = shl nsw i32 %mb_y, 4
  %sub = sub nsw i32 %4, %mul7
  %cmp = icmp slt i32 %sub, 32
  %spec.select = select i1 %cmp, i32 %sub, i32 32
  %vsad = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 92, i32 11
  %5 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %vsad, align 4, !tbaa !45
  %call = tail call i32 %5(i8* %add.ptr, i32 %1, i32 %spec.select) #8
  %6 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %vsad, align 4, !tbaa !45
  %mul14 = shl nsw i32 %1, 1
  %shr = ashr i32 %spec.select, 1
  %call15 = tail call i32 %6(i8* %add.ptr, i32 %mul14, i32 %shr) #8
  %7 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %vsad, align 4, !tbaa !45
  %add.ptr18 = getelementptr inbounds i8, i8* %add.ptr, i32 %1
  %call21 = tail call i32 %7(i8* %add.ptr18, i32 %mul14, i32 %shr) #8
  %add22 = add nsw i32 %call21, %call15
  %cmp23 = icmp sgt i32 %mb_x, 0
  br i1 %cmp23, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %field = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 74
  %8 = load i8*, i8** %field, align 4, !tbaa !46
  %sub25 = add nsw i32 %add6, -1
  %arrayidx26 = getelementptr inbounds i8, i8* %8, i32 %sub25
  %9 = load i8, i8* %arrayidx26, align 1, !tbaa !6
  %conv = zext i8 %9 to i32
  %mul27 = shl nuw nsw i32 %conv, 10
  %sub28 = add i32 %add22, 512
  %add29 = sub i32 %sub28, %mul27
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %score_field.0 = phi i32 [ %add29, %if.then ], [ %add22, %entry ]
  %cmp30 = icmp sgt i32 %mb_y, 0
  br i1 %cmp30, label %if.then32, label %if.end41

if.then32:                                        ; preds = %if.end
  %field34 = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 70, i32 74
  %10 = load i8*, i8** %field34, align 4, !tbaa !46
  %sub35 = sub nsw i32 %add6, %2
  %arrayidx36 = getelementptr inbounds i8, i8* %10, i32 %sub35
  %11 = load i8, i8* %arrayidx36, align 1, !tbaa !6
  %conv37 = zext i8 %11 to i32
  %mul38 = shl nuw nsw i32 %conv37, 10
  %sub39 = add i32 %score_field.0, 512
  %add40 = sub i32 %sub39, %mul38
  br label %if.end41

if.end41:                                         ; preds = %if.then32, %if.end
  %score_field.1 = phi i32 [ %add40, %if.then32 ], [ %score_field.0, %if.end ]
  %cmp42 = icmp slt i32 %score_field.1, %call
  %conv43 = zext i1 %cmp42 to i32
  ret i32 %conv43
}

; Function Attrs: nounwind
define hidden void @x264_8_pixel_init(i32 %cpu, %struct.x264_pixel_function_t* %pixf) local_unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 3
  %1 = bitcast [7 x i32 (i8*, i32, i8*, i32)*]* %0 to i8*
  tail call void @llvm.memset.p0i8.i32(i8* nonnull align 4 dereferenceable(632) %1, i8 0, i32 536, i1 false)
  %arrayidx = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 0, i32 0
  store i32 (i8*, i32, i8*, i32)* @x264_pixel_sad_16x16, i32 (i8*, i32, i8*, i32)** %arrayidx, align 4, !tbaa !2
  %arrayidx2 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 0, i32 1
  store i32 (i8*, i32, i8*, i32)* @x264_pixel_sad_16x8, i32 (i8*, i32, i8*, i32)** %arrayidx2, align 4, !tbaa !2
  %arrayidx4 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 0, i32 2
  store i32 (i8*, i32, i8*, i32)* @x264_pixel_sad_8x16, i32 (i8*, i32, i8*, i32)** %arrayidx4, align 4, !tbaa !2
  %arrayidx6 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 0, i32 3
  store i32 (i8*, i32, i8*, i32)* @x264_pixel_sad_8x8, i32 (i8*, i32, i8*, i32)** %arrayidx6, align 4, !tbaa !2
  %arrayidx8 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 0, i32 4
  store i32 (i8*, i32, i8*, i32)* @x264_pixel_sad_8x4, i32 (i8*, i32, i8*, i32)** %arrayidx8, align 4, !tbaa !2
  %arrayidx10 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 0, i32 5
  store i32 (i8*, i32, i8*, i32)* @x264_pixel_sad_4x8, i32 (i8*, i32, i8*, i32)** %arrayidx10, align 4, !tbaa !2
  %arrayidx12 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 0, i32 6
  store i32 (i8*, i32, i8*, i32)* @x264_pixel_sad_4x4, i32 (i8*, i32, i8*, i32)** %arrayidx12, align 4, !tbaa !2
  %arrayidx14 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 0, i32 7
  store i32 (i8*, i32, i8*, i32)* @x264_pixel_sad_4x16, i32 (i8*, i32, i8*, i32)** %arrayidx14, align 4, !tbaa !2
  %arrayidx15 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 10, i32 0
  store i32 (i8*, i32, i8*, i32)* @x264_pixel_sad_16x16, i32 (i8*, i32, i8*, i32)** %arrayidx15, align 4, !tbaa !2
  %arrayidx17 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 10, i32 1
  store i32 (i8*, i32, i8*, i32)* @x264_pixel_sad_16x8, i32 (i8*, i32, i8*, i32)** %arrayidx17, align 4, !tbaa !2
  %arrayidx19 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 10, i32 2
  store i32 (i8*, i32, i8*, i32)* @x264_pixel_sad_8x16, i32 (i8*, i32, i8*, i32)** %arrayidx19, align 4, !tbaa !2
  %arrayidx21 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 10, i32 3
  store i32 (i8*, i32, i8*, i32)* @x264_pixel_sad_8x8, i32 (i8*, i32, i8*, i32)** %arrayidx21, align 4, !tbaa !2
  %arrayidx23 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 10, i32 4
  store i32 (i8*, i32, i8*, i32)* @x264_pixel_sad_8x4, i32 (i8*, i32, i8*, i32)** %arrayidx23, align 4, !tbaa !2
  %arrayidx25 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 10, i32 5
  store i32 (i8*, i32, i8*, i32)* @x264_pixel_sad_4x8, i32 (i8*, i32, i8*, i32)** %arrayidx25, align 4, !tbaa !2
  %arrayidx27 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 10, i32 6
  store i32 (i8*, i32, i8*, i32)* @x264_pixel_sad_4x4, i32 (i8*, i32, i8*, i32)** %arrayidx27, align 4, !tbaa !2
  %arrayidx29 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 10, i32 7
  store i32 (i8*, i32, i8*, i32)* @x264_pixel_sad_4x16, i32 (i8*, i32, i8*, i32)** %arrayidx29, align 4, !tbaa !2
  %arrayidx30 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 20, i32 0
  store void (i8*, i8*, i8*, i8*, i32, i32*)* @x264_pixel_sad_x3_16x16, void (i8*, i8*, i8*, i8*, i32, i32*)** %arrayidx30, align 4, !tbaa !2
  %arrayidx32 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 20, i32 1
  store void (i8*, i8*, i8*, i8*, i32, i32*)* @x264_pixel_sad_x3_16x8, void (i8*, i8*, i8*, i8*, i32, i32*)** %arrayidx32, align 4, !tbaa !2
  %arrayidx34 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 20, i32 2
  store void (i8*, i8*, i8*, i8*, i32, i32*)* @x264_pixel_sad_x3_8x16, void (i8*, i8*, i8*, i8*, i32, i32*)** %arrayidx34, align 4, !tbaa !2
  %arrayidx36 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 20, i32 3
  store void (i8*, i8*, i8*, i8*, i32, i32*)* @x264_pixel_sad_x3_8x8, void (i8*, i8*, i8*, i8*, i32, i32*)** %arrayidx36, align 4, !tbaa !2
  %arrayidx38 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 20, i32 4
  store void (i8*, i8*, i8*, i8*, i32, i32*)* @x264_pixel_sad_x3_8x4, void (i8*, i8*, i8*, i8*, i32, i32*)** %arrayidx38, align 4, !tbaa !2
  %arrayidx40 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 20, i32 5
  store void (i8*, i8*, i8*, i8*, i32, i32*)* @x264_pixel_sad_x3_4x8, void (i8*, i8*, i8*, i8*, i32, i32*)** %arrayidx40, align 4, !tbaa !2
  %arrayidx42 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 20, i32 6
  store void (i8*, i8*, i8*, i8*, i32, i32*)* @x264_pixel_sad_x3_4x4, void (i8*, i8*, i8*, i8*, i32, i32*)** %arrayidx42, align 4, !tbaa !2
  %arrayidx43 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 21, i32 0
  store void (i8*, i8*, i8*, i8*, i8*, i32, i32*)* @x264_pixel_sad_x4_16x16, void (i8*, i8*, i8*, i8*, i8*, i32, i32*)** %arrayidx43, align 4, !tbaa !2
  %arrayidx45 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 21, i32 1
  store void (i8*, i8*, i8*, i8*, i8*, i32, i32*)* @x264_pixel_sad_x4_16x8, void (i8*, i8*, i8*, i8*, i8*, i32, i32*)** %arrayidx45, align 4, !tbaa !2
  %arrayidx47 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 21, i32 2
  store void (i8*, i8*, i8*, i8*, i8*, i32, i32*)* @x264_pixel_sad_x4_8x16, void (i8*, i8*, i8*, i8*, i8*, i32, i32*)** %arrayidx47, align 4, !tbaa !2
  %arrayidx49 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 21, i32 3
  store void (i8*, i8*, i8*, i8*, i8*, i32, i32*)* @x264_pixel_sad_x4_8x8, void (i8*, i8*, i8*, i8*, i8*, i32, i32*)** %arrayidx49, align 4, !tbaa !2
  %arrayidx51 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 21, i32 4
  store void (i8*, i8*, i8*, i8*, i8*, i32, i32*)* @x264_pixel_sad_x4_8x4, void (i8*, i8*, i8*, i8*, i8*, i32, i32*)** %arrayidx51, align 4, !tbaa !2
  %arrayidx53 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 21, i32 5
  store void (i8*, i8*, i8*, i8*, i8*, i32, i32*)* @x264_pixel_sad_x4_4x8, void (i8*, i8*, i8*, i8*, i8*, i32, i32*)** %arrayidx53, align 4, !tbaa !2
  %arrayidx55 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 21, i32 6
  store void (i8*, i8*, i8*, i8*, i8*, i32, i32*)* @x264_pixel_sad_x4_4x4, void (i8*, i8*, i8*, i8*, i8*, i32, i32*)** %arrayidx55, align 4, !tbaa !2
  %arrayidx56 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 1, i32 0
  store i32 (i8*, i32, i8*, i32)* @x264_pixel_ssd_16x16, i32 (i8*, i32, i8*, i32)** %arrayidx56, align 4, !tbaa !2
  %arrayidx58 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 1, i32 1
  store i32 (i8*, i32, i8*, i32)* @x264_pixel_ssd_16x8, i32 (i8*, i32, i8*, i32)** %arrayidx58, align 4, !tbaa !2
  %arrayidx60 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 1, i32 2
  store i32 (i8*, i32, i8*, i32)* @x264_pixel_ssd_8x16, i32 (i8*, i32, i8*, i32)** %arrayidx60, align 4, !tbaa !2
  %arrayidx62 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 1, i32 3
  store i32 (i8*, i32, i8*, i32)* @x264_pixel_ssd_8x8, i32 (i8*, i32, i8*, i32)** %arrayidx62, align 4, !tbaa !2
  %arrayidx64 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 1, i32 4
  store i32 (i8*, i32, i8*, i32)* @x264_pixel_ssd_8x4, i32 (i8*, i32, i8*, i32)** %arrayidx64, align 4, !tbaa !2
  %arrayidx66 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 1, i32 5
  store i32 (i8*, i32, i8*, i32)* @x264_pixel_ssd_4x8, i32 (i8*, i32, i8*, i32)** %arrayidx66, align 4, !tbaa !2
  %arrayidx68 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 1, i32 6
  store i32 (i8*, i32, i8*, i32)* @x264_pixel_ssd_4x4, i32 (i8*, i32, i8*, i32)** %arrayidx68, align 4, !tbaa !2
  %arrayidx70 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 1, i32 7
  store i32 (i8*, i32, i8*, i32)* @x264_pixel_ssd_4x16, i32 (i8*, i32, i8*, i32)** %arrayidx70, align 4, !tbaa !2
  %arrayidx71 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 2, i32 0
  store i32 (i8*, i32, i8*, i32)* @x264_pixel_satd_16x16, i32 (i8*, i32, i8*, i32)** %arrayidx71, align 4, !tbaa !2
  %arrayidx73 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 2, i32 1
  store i32 (i8*, i32, i8*, i32)* @x264_pixel_satd_16x8, i32 (i8*, i32, i8*, i32)** %arrayidx73, align 4, !tbaa !2
  %arrayidx75 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 2, i32 2
  store i32 (i8*, i32, i8*, i32)* @x264_pixel_satd_8x16, i32 (i8*, i32, i8*, i32)** %arrayidx75, align 4, !tbaa !2
  %arrayidx77 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 2, i32 3
  store i32 (i8*, i32, i8*, i32)* @x264_pixel_satd_8x8, i32 (i8*, i32, i8*, i32)** %arrayidx77, align 4, !tbaa !2
  %arrayidx79 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 2, i32 4
  store i32 (i8*, i32, i8*, i32)* @x264_pixel_satd_8x4, i32 (i8*, i32, i8*, i32)** %arrayidx79, align 4, !tbaa !2
  %arrayidx81 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 2, i32 5
  store i32 (i8*, i32, i8*, i32)* @x264_pixel_satd_4x8, i32 (i8*, i32, i8*, i32)** %arrayidx81, align 4, !tbaa !2
  %arrayidx83 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 2, i32 6
  store i32 (i8*, i32, i8*, i32)* @x264_pixel_satd_4x4, i32 (i8*, i32, i8*, i32)** %arrayidx83, align 4, !tbaa !2
  %arrayidx85 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 2, i32 7
  store i32 (i8*, i32, i8*, i32)* @x264_pixel_satd_4x16, i32 (i8*, i32, i8*, i32)** %arrayidx85, align 4, !tbaa !2
  %arrayidx86 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 22, i32 0
  store void (i8*, i8*, i8*, i8*, i32, i32*)* @x264_pixel_satd_x3_16x16, void (i8*, i8*, i8*, i8*, i32, i32*)** %arrayidx86, align 4, !tbaa !2
  %arrayidx88 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 22, i32 1
  store void (i8*, i8*, i8*, i8*, i32, i32*)* @x264_pixel_satd_x3_16x8, void (i8*, i8*, i8*, i8*, i32, i32*)** %arrayidx88, align 4, !tbaa !2
  %arrayidx90 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 22, i32 2
  store void (i8*, i8*, i8*, i8*, i32, i32*)* @x264_pixel_satd_x3_8x16, void (i8*, i8*, i8*, i8*, i32, i32*)** %arrayidx90, align 4, !tbaa !2
  %arrayidx92 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 22, i32 3
  store void (i8*, i8*, i8*, i8*, i32, i32*)* @x264_pixel_satd_x3_8x8, void (i8*, i8*, i8*, i8*, i32, i32*)** %arrayidx92, align 4, !tbaa !2
  %arrayidx94 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 22, i32 4
  store void (i8*, i8*, i8*, i8*, i32, i32*)* @x264_pixel_satd_x3_8x4, void (i8*, i8*, i8*, i8*, i32, i32*)** %arrayidx94, align 4, !tbaa !2
  %arrayidx96 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 22, i32 5
  store void (i8*, i8*, i8*, i8*, i32, i32*)* @x264_pixel_satd_x3_4x8, void (i8*, i8*, i8*, i8*, i32, i32*)** %arrayidx96, align 4, !tbaa !2
  %arrayidx98 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 22, i32 6
  store void (i8*, i8*, i8*, i8*, i32, i32*)* @x264_pixel_satd_x3_4x4, void (i8*, i8*, i8*, i8*, i32, i32*)** %arrayidx98, align 4, !tbaa !2
  %arrayidx99 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 23, i32 0
  store void (i8*, i8*, i8*, i8*, i8*, i32, i32*)* @x264_pixel_satd_x4_16x16, void (i8*, i8*, i8*, i8*, i8*, i32, i32*)** %arrayidx99, align 4, !tbaa !2
  %arrayidx101 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 23, i32 1
  store void (i8*, i8*, i8*, i8*, i8*, i32, i32*)* @x264_pixel_satd_x4_16x8, void (i8*, i8*, i8*, i8*, i8*, i32, i32*)** %arrayidx101, align 4, !tbaa !2
  %arrayidx103 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 23, i32 2
  store void (i8*, i8*, i8*, i8*, i8*, i32, i32*)* @x264_pixel_satd_x4_8x16, void (i8*, i8*, i8*, i8*, i8*, i32, i32*)** %arrayidx103, align 4, !tbaa !2
  %arrayidx105 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 23, i32 3
  store void (i8*, i8*, i8*, i8*, i8*, i32, i32*)* @x264_pixel_satd_x4_8x8, void (i8*, i8*, i8*, i8*, i8*, i32, i32*)** %arrayidx105, align 4, !tbaa !2
  %arrayidx107 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 23, i32 4
  store void (i8*, i8*, i8*, i8*, i8*, i32, i32*)* @x264_pixel_satd_x4_8x4, void (i8*, i8*, i8*, i8*, i8*, i32, i32*)** %arrayidx107, align 4, !tbaa !2
  %arrayidx109 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 23, i32 5
  store void (i8*, i8*, i8*, i8*, i8*, i32, i32*)* @x264_pixel_satd_x4_4x8, void (i8*, i8*, i8*, i8*, i8*, i32, i32*)** %arrayidx109, align 4, !tbaa !2
  %arrayidx111 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 23, i32 6
  store void (i8*, i8*, i8*, i8*, i8*, i32, i32*)* @x264_pixel_satd_x4_4x4, void (i8*, i8*, i8*, i8*, i8*, i32, i32*)** %arrayidx111, align 4, !tbaa !2
  %arrayidx112 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 16, i32 0
  store i64 (i8*, i32)* @x264_pixel_hadamard_ac_16x16, i64 (i8*, i32)** %arrayidx112, align 4, !tbaa !2
  %arrayidx114 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 16, i32 1
  store i64 (i8*, i32)* @x264_pixel_hadamard_ac_16x8, i64 (i8*, i32)** %arrayidx114, align 4, !tbaa !2
  %arrayidx116 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 16, i32 2
  store i64 (i8*, i32)* @x264_pixel_hadamard_ac_8x16, i64 (i8*, i32)** %arrayidx116, align 4, !tbaa !2
  %arrayidx118 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 16, i32 3
  store i64 (i8*, i32)* @x264_pixel_hadamard_ac_8x8, i64 (i8*, i32)** %arrayidx118, align 4, !tbaa !2
  %arrayidx119 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 24, i32 0
  store i32 (i32*, i16*, i32, i16*, i16*, i32, i32)* @x264_pixel_ads4, i32 (i32*, i16*, i32, i16*, i16*, i32, i32)** %arrayidx119, align 4, !tbaa !2
  %arrayidx121 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 24, i32 1
  store i32 (i32*, i16*, i32, i16*, i16*, i32, i32)* @x264_pixel_ads2, i32 (i32*, i16*, i32, i16*, i16*, i32, i32)** %arrayidx121, align 4, !tbaa !2
  %arrayidx123 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 24, i32 3
  store i32 (i32*, i16*, i32, i16*, i16*, i32, i32)* @x264_pixel_ads1, i32 (i32*, i16*, i32, i16*, i16*, i32, i32)** %arrayidx123, align 4, !tbaa !2
  %arrayidx124 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 4, i32 0
  store i32 (i8*, i32, i8*, i32)* @x264_pixel_sa8d_16x16, i32 (i8*, i32, i8*, i32)** %arrayidx124, align 4, !tbaa !2
  %arrayidx126 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 4, i32 3
  store i32 (i8*, i32, i8*, i32)* @x264_pixel_sa8d_8x8, i32 (i8*, i32, i8*, i32)** %arrayidx126, align 4, !tbaa !2
  %arrayidx127 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 14, i32 0
  store i64 (i8*, i32)* @pixel_var_16x16, i64 (i8*, i32)** %arrayidx127, align 4, !tbaa !2
  %arrayidx129 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 14, i32 2
  store i64 (i8*, i32)* @pixel_var_8x16, i64 (i8*, i32)** %arrayidx129, align 4, !tbaa !2
  %arrayidx131 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 14, i32 3
  store i64 (i8*, i32)* @pixel_var_8x8, i64 (i8*, i32)** %arrayidx131, align 4, !tbaa !2
  %arrayidx132 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 15, i32 2
  store i32 (i8*, i8*, i32*)* @pixel_var2_8x16, i32 (i8*, i8*, i32*)** %arrayidx132, align 4, !tbaa !2
  %arrayidx134 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 15, i32 3
  store i32 (i8*, i8*, i32*)* @pixel_var2_8x8, i32 (i8*, i8*, i32*)** %arrayidx134, align 4, !tbaa !2
  %ssd_nv12_core = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 17
  store void (i8*, i32, i8*, i32, i32, i32, i64*, i64*)* @pixel_ssd_nv12_core, void (i8*, i32, i8*, i32, i32, i32, i64*, i64*)** %ssd_nv12_core, align 4, !tbaa !7
  %ssim_4x4x2_core = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 18
  store void (i8*, i32, i8*, i32, [4 x i32]*)* @ssim_4x4x2_core, void (i8*, i32, i8*, i32, [4 x i32]*)** %ssim_4x4x2_core, align 4, !tbaa !12
  %ssim_end4 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 19
  store float ([4 x i32]*, [4 x i32]*, i32)* @ssim_end4, float ([4 x i32]*, [4 x i32]*, i32)** %ssim_end4, align 4, !tbaa !11
  %vsad = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 11
  store i32 (i8*, i32, i32)* @pixel_vsad, i32 (i8*, i32, i32)** %vsad, align 4, !tbaa !47
  %asd8 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 12
  store i32 (i8*, i32, i8*, i32, i32)* @pixel_asd8, i32 (i8*, i32, i8*, i32, i32)** %asd8, align 4, !tbaa !48
  %intra_sad_x3_4x4 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 30
  store void (i8*, i8*, i32*)* @intra_sad_x3_4x4, void (i8*, i8*, i32*)** %intra_sad_x3_4x4, align 4, !tbaa !49
  %intra_satd_x3_4x4 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 29
  store void (i8*, i8*, i32*)* @intra_satd_x3_4x4, void (i8*, i8*, i32*)** %intra_satd_x3_4x4, align 4, !tbaa !50
  %intra_sad_x3_8x8 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 42
  store void (i8*, i8*, i32*)* @intra_sad_x3_8x8, void (i8*, i8*, i32*)** %intra_sad_x3_8x8, align 4, !tbaa !51
  %intra_sa8d_x3_8x8 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 41
  store void (i8*, i8*, i32*)* @intra_sa8d_x3_8x8, void (i8*, i8*, i32*)** %intra_sa8d_x3_8x8, align 4, !tbaa !52
  %intra_sad_x3_8x8c = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 39
  store void (i8*, i8*, i32*)* @intra_sad_x3_8x8c, void (i8*, i8*, i32*)** %intra_sad_x3_8x8c, align 4, !tbaa !53
  %intra_satd_x3_8x8c = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 38
  store void (i8*, i8*, i32*)* @intra_satd_x3_8x8c, void (i8*, i8*, i32*)** %intra_satd_x3_8x8c, align 4, !tbaa !54
  %intra_sad_x3_8x16c = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 36
  store void (i8*, i8*, i32*)* @intra_sad_x3_8x16c, void (i8*, i8*, i32*)** %intra_sad_x3_8x16c, align 4, !tbaa !55
  %intra_satd_x3_8x16c = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 35
  store void (i8*, i8*, i32*)* @intra_satd_x3_8x16c, void (i8*, i8*, i32*)** %intra_satd_x3_8x16c, align 4, !tbaa !56
  %intra_sad_x3_16x16 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 27
  store void (i8*, i8*, i32*)* @intra_sad_x3_16x16, void (i8*, i8*, i32*)** %intra_sad_x3_16x16, align 4, !tbaa !57
  %intra_satd_x3_16x16 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 26
  store void (i8*, i8*, i32*)* @intra_satd_x3_16x16, void (i8*, i8*, i32*)** %intra_satd_x3_16x16, align 4, !tbaa !58
  %arrayidx138 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 24, i32 5
  %2 = bitcast i32 (i32*, i16*, i32, i16*, i16*, i32, i32)** %arrayidx138 to i32*
  store i32 ptrtoint (i32 (i32*, i16*, i32, i16*, i16*, i32, i32)* @x264_pixel_ads2 to i32), i32* %2, align 4, !tbaa !2
  %arrayidx140 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 24, i32 4
  %3 = bitcast i32 (i32*, i16*, i32, i16*, i16*, i32, i32)** %arrayidx140 to i32*
  store i32 ptrtoint (i32 (i32*, i16*, i32, i16*, i16*, i32, i32)* @x264_pixel_ads2 to i32), i32* %3, align 4, !tbaa !2
  %arrayidx142 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 24, i32 2
  %4 = bitcast i32 (i32*, i16*, i32, i16*, i16*, i32, i32)** %arrayidx142 to i32*
  store i32 ptrtoint (i32 (i32*, i16*, i32, i16*, i16*, i32, i32)* @x264_pixel_ads2 to i32), i32* %4, align 4, !tbaa !2
  %arrayidx146 = getelementptr inbounds %struct.x264_pixel_function_t, %struct.x264_pixel_function_t* %pixf, i32 0, i32 24, i32 6
  %5 = bitcast i32 (i32*, i16*, i32, i16*, i16*, i32, i32)** %arrayidx146 to i32*
  store i32 ptrtoint (i32 (i32*, i16*, i32, i16*, i16*, i32, i32)* @x264_pixel_ads1 to i32), i32* %5, align 4, !tbaa !2
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #1

; Function Attrs: norecurse nounwind readonly
define internal i32 @x264_pixel_sad_16x16(i8* nocapture readonly %pix1, i32 %i_stride_pix1, i8* nocapture readonly %pix2, i32 %i_stride_pix2) #3 {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader, %entry
  %y.026 = phi i32 [ 0, %entry ], [ %inc9, %for.cond1.preheader ]
  %i_sum.025 = phi i32 [ 0, %entry ], [ %add.15, %for.cond1.preheader ]
  %pix1.addr.024 = phi i8* [ %pix1, %entry ], [ %add.ptr, %for.cond1.preheader ]
  %pix2.addr.023 = phi i8* [ %pix2, %entry ], [ %add.ptr7, %for.cond1.preheader ]
  %0 = load i8, i8* %pix1.addr.024, align 1, !tbaa !6
  %conv = zext i8 %0 to i32
  %1 = load i8, i8* %pix2.addr.023, align 1, !tbaa !6
  %conv6 = zext i8 %1 to i32
  %sub = sub nsw i32 %conv, %conv6
  %2 = icmp slt i32 %sub, 0
  %neg = sub nsw i32 0, %sub
  %3 = select i1 %2, i32 %neg, i32 %sub
  %add = add nsw i32 %3, %i_sum.025
  %arrayidx.1 = getelementptr inbounds i8, i8* %pix1.addr.024, i32 1
  %4 = load i8, i8* %arrayidx.1, align 1, !tbaa !6
  %conv.1 = zext i8 %4 to i32
  %arrayidx5.1 = getelementptr inbounds i8, i8* %pix2.addr.023, i32 1
  %5 = load i8, i8* %arrayidx5.1, align 1, !tbaa !6
  %conv6.1 = zext i8 %5 to i32
  %sub.1 = sub nsw i32 %conv.1, %conv6.1
  %6 = icmp slt i32 %sub.1, 0
  %neg.1 = sub nsw i32 0, %sub.1
  %7 = select i1 %6, i32 %neg.1, i32 %sub.1
  %add.1 = add nsw i32 %7, %add
  %arrayidx.2 = getelementptr inbounds i8, i8* %pix1.addr.024, i32 2
  %8 = load i8, i8* %arrayidx.2, align 1, !tbaa !6
  %conv.2 = zext i8 %8 to i32
  %arrayidx5.2 = getelementptr inbounds i8, i8* %pix2.addr.023, i32 2
  %9 = load i8, i8* %arrayidx5.2, align 1, !tbaa !6
  %conv6.2 = zext i8 %9 to i32
  %sub.2 = sub nsw i32 %conv.2, %conv6.2
  %10 = icmp slt i32 %sub.2, 0
  %neg.2 = sub nsw i32 0, %sub.2
  %11 = select i1 %10, i32 %neg.2, i32 %sub.2
  %add.2 = add nsw i32 %11, %add.1
  %arrayidx.3 = getelementptr inbounds i8, i8* %pix1.addr.024, i32 3
  %12 = load i8, i8* %arrayidx.3, align 1, !tbaa !6
  %conv.3 = zext i8 %12 to i32
  %arrayidx5.3 = getelementptr inbounds i8, i8* %pix2.addr.023, i32 3
  %13 = load i8, i8* %arrayidx5.3, align 1, !tbaa !6
  %conv6.3 = zext i8 %13 to i32
  %sub.3 = sub nsw i32 %conv.3, %conv6.3
  %14 = icmp slt i32 %sub.3, 0
  %neg.3 = sub nsw i32 0, %sub.3
  %15 = select i1 %14, i32 %neg.3, i32 %sub.3
  %add.3 = add nsw i32 %15, %add.2
  %arrayidx.4 = getelementptr inbounds i8, i8* %pix1.addr.024, i32 4
  %16 = load i8, i8* %arrayidx.4, align 1, !tbaa !6
  %conv.4 = zext i8 %16 to i32
  %arrayidx5.4 = getelementptr inbounds i8, i8* %pix2.addr.023, i32 4
  %17 = load i8, i8* %arrayidx5.4, align 1, !tbaa !6
  %conv6.4 = zext i8 %17 to i32
  %sub.4 = sub nsw i32 %conv.4, %conv6.4
  %18 = icmp slt i32 %sub.4, 0
  %neg.4 = sub nsw i32 0, %sub.4
  %19 = select i1 %18, i32 %neg.4, i32 %sub.4
  %add.4 = add nsw i32 %19, %add.3
  %arrayidx.5 = getelementptr inbounds i8, i8* %pix1.addr.024, i32 5
  %20 = load i8, i8* %arrayidx.5, align 1, !tbaa !6
  %conv.5 = zext i8 %20 to i32
  %arrayidx5.5 = getelementptr inbounds i8, i8* %pix2.addr.023, i32 5
  %21 = load i8, i8* %arrayidx5.5, align 1, !tbaa !6
  %conv6.5 = zext i8 %21 to i32
  %sub.5 = sub nsw i32 %conv.5, %conv6.5
  %22 = icmp slt i32 %sub.5, 0
  %neg.5 = sub nsw i32 0, %sub.5
  %23 = select i1 %22, i32 %neg.5, i32 %sub.5
  %add.5 = add nsw i32 %23, %add.4
  %arrayidx.6 = getelementptr inbounds i8, i8* %pix1.addr.024, i32 6
  %24 = load i8, i8* %arrayidx.6, align 1, !tbaa !6
  %conv.6 = zext i8 %24 to i32
  %arrayidx5.6 = getelementptr inbounds i8, i8* %pix2.addr.023, i32 6
  %25 = load i8, i8* %arrayidx5.6, align 1, !tbaa !6
  %conv6.6 = zext i8 %25 to i32
  %sub.6 = sub nsw i32 %conv.6, %conv6.6
  %26 = icmp slt i32 %sub.6, 0
  %neg.6 = sub nsw i32 0, %sub.6
  %27 = select i1 %26, i32 %neg.6, i32 %sub.6
  %add.6 = add nsw i32 %27, %add.5
  %arrayidx.7 = getelementptr inbounds i8, i8* %pix1.addr.024, i32 7
  %28 = load i8, i8* %arrayidx.7, align 1, !tbaa !6
  %conv.7 = zext i8 %28 to i32
  %arrayidx5.7 = getelementptr inbounds i8, i8* %pix2.addr.023, i32 7
  %29 = load i8, i8* %arrayidx5.7, align 1, !tbaa !6
  %conv6.7 = zext i8 %29 to i32
  %sub.7 = sub nsw i32 %conv.7, %conv6.7
  %30 = icmp slt i32 %sub.7, 0
  %neg.7 = sub nsw i32 0, %sub.7
  %31 = select i1 %30, i32 %neg.7, i32 %sub.7
  %add.7 = add nsw i32 %31, %add.6
  %arrayidx.8 = getelementptr inbounds i8, i8* %pix1.addr.024, i32 8
  %32 = load i8, i8* %arrayidx.8, align 1, !tbaa !6
  %conv.8 = zext i8 %32 to i32
  %arrayidx5.8 = getelementptr inbounds i8, i8* %pix2.addr.023, i32 8
  %33 = load i8, i8* %arrayidx5.8, align 1, !tbaa !6
  %conv6.8 = zext i8 %33 to i32
  %sub.8 = sub nsw i32 %conv.8, %conv6.8
  %34 = icmp slt i32 %sub.8, 0
  %neg.8 = sub nsw i32 0, %sub.8
  %35 = select i1 %34, i32 %neg.8, i32 %sub.8
  %add.8 = add nsw i32 %35, %add.7
  %arrayidx.9 = getelementptr inbounds i8, i8* %pix1.addr.024, i32 9
  %36 = load i8, i8* %arrayidx.9, align 1, !tbaa !6
  %conv.9 = zext i8 %36 to i32
  %arrayidx5.9 = getelementptr inbounds i8, i8* %pix2.addr.023, i32 9
  %37 = load i8, i8* %arrayidx5.9, align 1, !tbaa !6
  %conv6.9 = zext i8 %37 to i32
  %sub.9 = sub nsw i32 %conv.9, %conv6.9
  %38 = icmp slt i32 %sub.9, 0
  %neg.9 = sub nsw i32 0, %sub.9
  %39 = select i1 %38, i32 %neg.9, i32 %sub.9
  %add.9 = add nsw i32 %39, %add.8
  %arrayidx.10 = getelementptr inbounds i8, i8* %pix1.addr.024, i32 10
  %40 = load i8, i8* %arrayidx.10, align 1, !tbaa !6
  %conv.10 = zext i8 %40 to i32
  %arrayidx5.10 = getelementptr inbounds i8, i8* %pix2.addr.023, i32 10
  %41 = load i8, i8* %arrayidx5.10, align 1, !tbaa !6
  %conv6.10 = zext i8 %41 to i32
  %sub.10 = sub nsw i32 %conv.10, %conv6.10
  %42 = icmp slt i32 %sub.10, 0
  %neg.10 = sub nsw i32 0, %sub.10
  %43 = select i1 %42, i32 %neg.10, i32 %sub.10
  %add.10 = add nsw i32 %43, %add.9
  %arrayidx.11 = getelementptr inbounds i8, i8* %pix1.addr.024, i32 11
  %44 = load i8, i8* %arrayidx.11, align 1, !tbaa !6
  %conv.11 = zext i8 %44 to i32
  %arrayidx5.11 = getelementptr inbounds i8, i8* %pix2.addr.023, i32 11
  %45 = load i8, i8* %arrayidx5.11, align 1, !tbaa !6
  %conv6.11 = zext i8 %45 to i32
  %sub.11 = sub nsw i32 %conv.11, %conv6.11
  %46 = icmp slt i32 %sub.11, 0
  %neg.11 = sub nsw i32 0, %sub.11
  %47 = select i1 %46, i32 %neg.11, i32 %sub.11
  %add.11 = add nsw i32 %47, %add.10
  %arrayidx.12 = getelementptr inbounds i8, i8* %pix1.addr.024, i32 12
  %48 = load i8, i8* %arrayidx.12, align 1, !tbaa !6
  %conv.12 = zext i8 %48 to i32
  %arrayidx5.12 = getelementptr inbounds i8, i8* %pix2.addr.023, i32 12
  %49 = load i8, i8* %arrayidx5.12, align 1, !tbaa !6
  %conv6.12 = zext i8 %49 to i32
  %sub.12 = sub nsw i32 %conv.12, %conv6.12
  %50 = icmp slt i32 %sub.12, 0
  %neg.12 = sub nsw i32 0, %sub.12
  %51 = select i1 %50, i32 %neg.12, i32 %sub.12
  %add.12 = add nsw i32 %51, %add.11
  %arrayidx.13 = getelementptr inbounds i8, i8* %pix1.addr.024, i32 13
  %52 = load i8, i8* %arrayidx.13, align 1, !tbaa !6
  %conv.13 = zext i8 %52 to i32
  %arrayidx5.13 = getelementptr inbounds i8, i8* %pix2.addr.023, i32 13
  %53 = load i8, i8* %arrayidx5.13, align 1, !tbaa !6
  %conv6.13 = zext i8 %53 to i32
  %sub.13 = sub nsw i32 %conv.13, %conv6.13
  %54 = icmp slt i32 %sub.13, 0
  %neg.13 = sub nsw i32 0, %sub.13
  %55 = select i1 %54, i32 %neg.13, i32 %sub.13
  %add.13 = add nsw i32 %55, %add.12
  %arrayidx.14 = getelementptr inbounds i8, i8* %pix1.addr.024, i32 14
  %56 = load i8, i8* %arrayidx.14, align 1, !tbaa !6
  %conv.14 = zext i8 %56 to i32
  %arrayidx5.14 = getelementptr inbounds i8, i8* %pix2.addr.023, i32 14
  %57 = load i8, i8* %arrayidx5.14, align 1, !tbaa !6
  %conv6.14 = zext i8 %57 to i32
  %sub.14 = sub nsw i32 %conv.14, %conv6.14
  %58 = icmp slt i32 %sub.14, 0
  %neg.14 = sub nsw i32 0, %sub.14
  %59 = select i1 %58, i32 %neg.14, i32 %sub.14
  %add.14 = add nsw i32 %59, %add.13
  %arrayidx.15 = getelementptr inbounds i8, i8* %pix1.addr.024, i32 15
  %60 = load i8, i8* %arrayidx.15, align 1, !tbaa !6
  %conv.15 = zext i8 %60 to i32
  %arrayidx5.15 = getelementptr inbounds i8, i8* %pix2.addr.023, i32 15
  %61 = load i8, i8* %arrayidx5.15, align 1, !tbaa !6
  %conv6.15 = zext i8 %61 to i32
  %sub.15 = sub nsw i32 %conv.15, %conv6.15
  %62 = icmp slt i32 %sub.15, 0
  %neg.15 = sub nsw i32 0, %sub.15
  %63 = select i1 %62, i32 %neg.15, i32 %sub.15
  %add.15 = add nsw i32 %63, %add.14
  %add.ptr = getelementptr inbounds i8, i8* %pix1.addr.024, i32 %i_stride_pix1
  %add.ptr7 = getelementptr inbounds i8, i8* %pix2.addr.023, i32 %i_stride_pix2
  %inc9 = add nuw nsw i32 %y.026, 1
  %exitcond = icmp eq i32 %inc9, 16
  br i1 %exitcond, label %for.cond.cleanup, label %for.cond1.preheader

for.cond.cleanup:                                 ; preds = %for.cond1.preheader
  ret i32 %add.15
}

; Function Attrs: norecurse nounwind readonly
define internal i32 @x264_pixel_sad_16x8(i8* nocapture readonly %pix1, i32 %i_stride_pix1, i8* nocapture readonly %pix2, i32 %i_stride_pix2) #3 {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader, %entry
  %y.026 = phi i32 [ 0, %entry ], [ %inc9, %for.cond1.preheader ]
  %i_sum.025 = phi i32 [ 0, %entry ], [ %add.15, %for.cond1.preheader ]
  %pix1.addr.024 = phi i8* [ %pix1, %entry ], [ %add.ptr, %for.cond1.preheader ]
  %pix2.addr.023 = phi i8* [ %pix2, %entry ], [ %add.ptr7, %for.cond1.preheader ]
  %0 = load i8, i8* %pix1.addr.024, align 1, !tbaa !6
  %conv = zext i8 %0 to i32
  %1 = load i8, i8* %pix2.addr.023, align 1, !tbaa !6
  %conv6 = zext i8 %1 to i32
  %sub = sub nsw i32 %conv, %conv6
  %2 = icmp slt i32 %sub, 0
  %neg = sub nsw i32 0, %sub
  %3 = select i1 %2, i32 %neg, i32 %sub
  %add = add nsw i32 %3, %i_sum.025
  %arrayidx.1 = getelementptr inbounds i8, i8* %pix1.addr.024, i32 1
  %4 = load i8, i8* %arrayidx.1, align 1, !tbaa !6
  %conv.1 = zext i8 %4 to i32
  %arrayidx5.1 = getelementptr inbounds i8, i8* %pix2.addr.023, i32 1
  %5 = load i8, i8* %arrayidx5.1, align 1, !tbaa !6
  %conv6.1 = zext i8 %5 to i32
  %sub.1 = sub nsw i32 %conv.1, %conv6.1
  %6 = icmp slt i32 %sub.1, 0
  %neg.1 = sub nsw i32 0, %sub.1
  %7 = select i1 %6, i32 %neg.1, i32 %sub.1
  %add.1 = add nsw i32 %7, %add
  %arrayidx.2 = getelementptr inbounds i8, i8* %pix1.addr.024, i32 2
  %8 = load i8, i8* %arrayidx.2, align 1, !tbaa !6
  %conv.2 = zext i8 %8 to i32
  %arrayidx5.2 = getelementptr inbounds i8, i8* %pix2.addr.023, i32 2
  %9 = load i8, i8* %arrayidx5.2, align 1, !tbaa !6
  %conv6.2 = zext i8 %9 to i32
  %sub.2 = sub nsw i32 %conv.2, %conv6.2
  %10 = icmp slt i32 %sub.2, 0
  %neg.2 = sub nsw i32 0, %sub.2
  %11 = select i1 %10, i32 %neg.2, i32 %sub.2
  %add.2 = add nsw i32 %11, %add.1
  %arrayidx.3 = getelementptr inbounds i8, i8* %pix1.addr.024, i32 3
  %12 = load i8, i8* %arrayidx.3, align 1, !tbaa !6
  %conv.3 = zext i8 %12 to i32
  %arrayidx5.3 = getelementptr inbounds i8, i8* %pix2.addr.023, i32 3
  %13 = load i8, i8* %arrayidx5.3, align 1, !tbaa !6
  %conv6.3 = zext i8 %13 to i32
  %sub.3 = sub nsw i32 %conv.3, %conv6.3
  %14 = icmp slt i32 %sub.3, 0
  %neg.3 = sub nsw i32 0, %sub.3
  %15 = select i1 %14, i32 %neg.3, i32 %sub.3
  %add.3 = add nsw i32 %15, %add.2
  %arrayidx.4 = getelementptr inbounds i8, i8* %pix1.addr.024, i32 4
  %16 = load i8, i8* %arrayidx.4, align 1, !tbaa !6
  %conv.4 = zext i8 %16 to i32
  %arrayidx5.4 = getelementptr inbounds i8, i8* %pix2.addr.023, i32 4
  %17 = load i8, i8* %arrayidx5.4, align 1, !tbaa !6
  %conv6.4 = zext i8 %17 to i32
  %sub.4 = sub nsw i32 %conv.4, %conv6.4
  %18 = icmp slt i32 %sub.4, 0
  %neg.4 = sub nsw i32 0, %sub.4
  %19 = select i1 %18, i32 %neg.4, i32 %sub.4
  %add.4 = add nsw i32 %19, %add.3
  %arrayidx.5 = getelementptr inbounds i8, i8* %pix1.addr.024, i32 5
  %20 = load i8, i8* %arrayidx.5, align 1, !tbaa !6
  %conv.5 = zext i8 %20 to i32
  %arrayidx5.5 = getelementptr inbounds i8, i8* %pix2.addr.023, i32 5
  %21 = load i8, i8* %arrayidx5.5, align 1, !tbaa !6
  %conv6.5 = zext i8 %21 to i32
  %sub.5 = sub nsw i32 %conv.5, %conv6.5
  %22 = icmp slt i32 %sub.5, 0
  %neg.5 = sub nsw i32 0, %sub.5
  %23 = select i1 %22, i32 %neg.5, i32 %sub.5
  %add.5 = add nsw i32 %23, %add.4
  %arrayidx.6 = getelementptr inbounds i8, i8* %pix1.addr.024, i32 6
  %24 = load i8, i8* %arrayidx.6, align 1, !tbaa !6
  %conv.6 = zext i8 %24 to i32
  %arrayidx5.6 = getelementptr inbounds i8, i8* %pix2.addr.023, i32 6
  %25 = load i8, i8* %arrayidx5.6, align 1, !tbaa !6
  %conv6.6 = zext i8 %25 to i32
  %sub.6 = sub nsw i32 %conv.6, %conv6.6
  %26 = icmp slt i32 %sub.6, 0
  %neg.6 = sub nsw i32 0, %sub.6
  %27 = select i1 %26, i32 %neg.6, i32 %sub.6
  %add.6 = add nsw i32 %27, %add.5
  %arrayidx.7 = getelementptr inbounds i8, i8* %pix1.addr.024, i32 7
  %28 = load i8, i8* %arrayidx.7, align 1, !tbaa !6
  %conv.7 = zext i8 %28 to i32
  %arrayidx5.7 = getelementptr inbounds i8, i8* %pix2.addr.023, i32 7
  %29 = load i8, i8* %arrayidx5.7, align 1, !tbaa !6
  %conv6.7 = zext i8 %29 to i32
  %sub.7 = sub nsw i32 %conv.7, %conv6.7
  %30 = icmp slt i32 %sub.7, 0
  %neg.7 = sub nsw i32 0, %sub.7
  %31 = select i1 %30, i32 %neg.7, i32 %sub.7
  %add.7 = add nsw i32 %31, %add.6
  %arrayidx.8 = getelementptr inbounds i8, i8* %pix1.addr.024, i32 8
  %32 = load i8, i8* %arrayidx.8, align 1, !tbaa !6
  %conv.8 = zext i8 %32 to i32
  %arrayidx5.8 = getelementptr inbounds i8, i8* %pix2.addr.023, i32 8
  %33 = load i8, i8* %arrayidx5.8, align 1, !tbaa !6
  %conv6.8 = zext i8 %33 to i32
  %sub.8 = sub nsw i32 %conv.8, %conv6.8
  %34 = icmp slt i32 %sub.8, 0
  %neg.8 = sub nsw i32 0, %sub.8
  %35 = select i1 %34, i32 %neg.8, i32 %sub.8
  %add.8 = add nsw i32 %35, %add.7
  %arrayidx.9 = getelementptr inbounds i8, i8* %pix1.addr.024, i32 9
  %36 = load i8, i8* %arrayidx.9, align 1, !tbaa !6
  %conv.9 = zext i8 %36 to i32
  %arrayidx5.9 = getelementptr inbounds i8, i8* %pix2.addr.023, i32 9
  %37 = load i8, i8* %arrayidx5.9, align 1, !tbaa !6
  %conv6.9 = zext i8 %37 to i32
  %sub.9 = sub nsw i32 %conv.9, %conv6.9
  %38 = icmp slt i32 %sub.9, 0
  %neg.9 = sub nsw i32 0, %sub.9
  %39 = select i1 %38, i32 %neg.9, i32 %sub.9
  %add.9 = add nsw i32 %39, %add.8
  %arrayidx.10 = getelementptr inbounds i8, i8* %pix1.addr.024, i32 10
  %40 = load i8, i8* %arrayidx.10, align 1, !tbaa !6
  %conv.10 = zext i8 %40 to i32
  %arrayidx5.10 = getelementptr inbounds i8, i8* %pix2.addr.023, i32 10
  %41 = load i8, i8* %arrayidx5.10, align 1, !tbaa !6
  %conv6.10 = zext i8 %41 to i32
  %sub.10 = sub nsw i32 %conv.10, %conv6.10
  %42 = icmp slt i32 %sub.10, 0
  %neg.10 = sub nsw i32 0, %sub.10
  %43 = select i1 %42, i32 %neg.10, i32 %sub.10
  %add.10 = add nsw i32 %43, %add.9
  %arrayidx.11 = getelementptr inbounds i8, i8* %pix1.addr.024, i32 11
  %44 = load i8, i8* %arrayidx.11, align 1, !tbaa !6
  %conv.11 = zext i8 %44 to i32
  %arrayidx5.11 = getelementptr inbounds i8, i8* %pix2.addr.023, i32 11
  %45 = load i8, i8* %arrayidx5.11, align 1, !tbaa !6
  %conv6.11 = zext i8 %45 to i32
  %sub.11 = sub nsw i32 %conv.11, %conv6.11
  %46 = icmp slt i32 %sub.11, 0
  %neg.11 = sub nsw i32 0, %sub.11
  %47 = select i1 %46, i32 %neg.11, i32 %sub.11
  %add.11 = add nsw i32 %47, %add.10
  %arrayidx.12 = getelementptr inbounds i8, i8* %pix1.addr.024, i32 12
  %48 = load i8, i8* %arrayidx.12, align 1, !tbaa !6
  %conv.12 = zext i8 %48 to i32
  %arrayidx5.12 = getelementptr inbounds i8, i8* %pix2.addr.023, i32 12
  %49 = load i8, i8* %arrayidx5.12, align 1, !tbaa !6
  %conv6.12 = zext i8 %49 to i32
  %sub.12 = sub nsw i32 %conv.12, %conv6.12
  %50 = icmp slt i32 %sub.12, 0
  %neg.12 = sub nsw i32 0, %sub.12
  %51 = select i1 %50, i32 %neg.12, i32 %sub.12
  %add.12 = add nsw i32 %51, %add.11
  %arrayidx.13 = getelementptr inbounds i8, i8* %pix1.addr.024, i32 13
  %52 = load i8, i8* %arrayidx.13, align 1, !tbaa !6
  %conv.13 = zext i8 %52 to i32
  %arrayidx5.13 = getelementptr inbounds i8, i8* %pix2.addr.023, i32 13
  %53 = load i8, i8* %arrayidx5.13, align 1, !tbaa !6
  %conv6.13 = zext i8 %53 to i32
  %sub.13 = sub nsw i32 %conv.13, %conv6.13
  %54 = icmp slt i32 %sub.13, 0
  %neg.13 = sub nsw i32 0, %sub.13
  %55 = select i1 %54, i32 %neg.13, i32 %sub.13
  %add.13 = add nsw i32 %55, %add.12
  %arrayidx.14 = getelementptr inbounds i8, i8* %pix1.addr.024, i32 14
  %56 = load i8, i8* %arrayidx.14, align 1, !tbaa !6
  %conv.14 = zext i8 %56 to i32
  %arrayidx5.14 = getelementptr inbounds i8, i8* %pix2.addr.023, i32 14
  %57 = load i8, i8* %arrayidx5.14, align 1, !tbaa !6
  %conv6.14 = zext i8 %57 to i32
  %sub.14 = sub nsw i32 %conv.14, %conv6.14
  %58 = icmp slt i32 %sub.14, 0
  %neg.14 = sub nsw i32 0, %sub.14
  %59 = select i1 %58, i32 %neg.14, i32 %sub.14
  %add.14 = add nsw i32 %59, %add.13
  %arrayidx.15 = getelementptr inbounds i8, i8* %pix1.addr.024, i32 15
  %60 = load i8, i8* %arrayidx.15, align 1, !tbaa !6
  %conv.15 = zext i8 %60 to i32
  %arrayidx5.15 = getelementptr inbounds i8, i8* %pix2.addr.023, i32 15
  %61 = load i8, i8* %arrayidx5.15, align 1, !tbaa !6
  %conv6.15 = zext i8 %61 to i32
  %sub.15 = sub nsw i32 %conv.15, %conv6.15
  %62 = icmp slt i32 %sub.15, 0
  %neg.15 = sub nsw i32 0, %sub.15
  %63 = select i1 %62, i32 %neg.15, i32 %sub.15
  %add.15 = add nsw i32 %63, %add.14
  %add.ptr = getelementptr inbounds i8, i8* %pix1.addr.024, i32 %i_stride_pix1
  %add.ptr7 = getelementptr inbounds i8, i8* %pix2.addr.023, i32 %i_stride_pix2
  %inc9 = add nuw nsw i32 %y.026, 1
  %exitcond = icmp eq i32 %inc9, 8
  br i1 %exitcond, label %for.cond.cleanup, label %for.cond1.preheader

for.cond.cleanup:                                 ; preds = %for.cond1.preheader
  ret i32 %add.15
}

; Function Attrs: norecurse nounwind readonly
define internal i32 @x264_pixel_sad_8x16(i8* nocapture readonly %pix1, i32 %i_stride_pix1, i8* nocapture readonly %pix2, i32 %i_stride_pix2) #3 {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader, %entry
  %y.026 = phi i32 [ 0, %entry ], [ %inc9, %for.cond1.preheader ]
  %i_sum.025 = phi i32 [ 0, %entry ], [ %add.7, %for.cond1.preheader ]
  %pix1.addr.024 = phi i8* [ %pix1, %entry ], [ %add.ptr, %for.cond1.preheader ]
  %pix2.addr.023 = phi i8* [ %pix2, %entry ], [ %add.ptr7, %for.cond1.preheader ]
  %0 = load i8, i8* %pix1.addr.024, align 1, !tbaa !6
  %conv = zext i8 %0 to i32
  %1 = load i8, i8* %pix2.addr.023, align 1, !tbaa !6
  %conv6 = zext i8 %1 to i32
  %sub = sub nsw i32 %conv, %conv6
  %2 = icmp slt i32 %sub, 0
  %neg = sub nsw i32 0, %sub
  %3 = select i1 %2, i32 %neg, i32 %sub
  %add = add nsw i32 %3, %i_sum.025
  %arrayidx.1 = getelementptr inbounds i8, i8* %pix1.addr.024, i32 1
  %4 = load i8, i8* %arrayidx.1, align 1, !tbaa !6
  %conv.1 = zext i8 %4 to i32
  %arrayidx5.1 = getelementptr inbounds i8, i8* %pix2.addr.023, i32 1
  %5 = load i8, i8* %arrayidx5.1, align 1, !tbaa !6
  %conv6.1 = zext i8 %5 to i32
  %sub.1 = sub nsw i32 %conv.1, %conv6.1
  %6 = icmp slt i32 %sub.1, 0
  %neg.1 = sub nsw i32 0, %sub.1
  %7 = select i1 %6, i32 %neg.1, i32 %sub.1
  %add.1 = add nsw i32 %7, %add
  %arrayidx.2 = getelementptr inbounds i8, i8* %pix1.addr.024, i32 2
  %8 = load i8, i8* %arrayidx.2, align 1, !tbaa !6
  %conv.2 = zext i8 %8 to i32
  %arrayidx5.2 = getelementptr inbounds i8, i8* %pix2.addr.023, i32 2
  %9 = load i8, i8* %arrayidx5.2, align 1, !tbaa !6
  %conv6.2 = zext i8 %9 to i32
  %sub.2 = sub nsw i32 %conv.2, %conv6.2
  %10 = icmp slt i32 %sub.2, 0
  %neg.2 = sub nsw i32 0, %sub.2
  %11 = select i1 %10, i32 %neg.2, i32 %sub.2
  %add.2 = add nsw i32 %11, %add.1
  %arrayidx.3 = getelementptr inbounds i8, i8* %pix1.addr.024, i32 3
  %12 = load i8, i8* %arrayidx.3, align 1, !tbaa !6
  %conv.3 = zext i8 %12 to i32
  %arrayidx5.3 = getelementptr inbounds i8, i8* %pix2.addr.023, i32 3
  %13 = load i8, i8* %arrayidx5.3, align 1, !tbaa !6
  %conv6.3 = zext i8 %13 to i32
  %sub.3 = sub nsw i32 %conv.3, %conv6.3
  %14 = icmp slt i32 %sub.3, 0
  %neg.3 = sub nsw i32 0, %sub.3
  %15 = select i1 %14, i32 %neg.3, i32 %sub.3
  %add.3 = add nsw i32 %15, %add.2
  %arrayidx.4 = getelementptr inbounds i8, i8* %pix1.addr.024, i32 4
  %16 = load i8, i8* %arrayidx.4, align 1, !tbaa !6
  %conv.4 = zext i8 %16 to i32
  %arrayidx5.4 = getelementptr inbounds i8, i8* %pix2.addr.023, i32 4
  %17 = load i8, i8* %arrayidx5.4, align 1, !tbaa !6
  %conv6.4 = zext i8 %17 to i32
  %sub.4 = sub nsw i32 %conv.4, %conv6.4
  %18 = icmp slt i32 %sub.4, 0
  %neg.4 = sub nsw i32 0, %sub.4
  %19 = select i1 %18, i32 %neg.4, i32 %sub.4
  %add.4 = add nsw i32 %19, %add.3
  %arrayidx.5 = getelementptr inbounds i8, i8* %pix1.addr.024, i32 5
  %20 = load i8, i8* %arrayidx.5, align 1, !tbaa !6
  %conv.5 = zext i8 %20 to i32
  %arrayidx5.5 = getelementptr inbounds i8, i8* %pix2.addr.023, i32 5
  %21 = load i8, i8* %arrayidx5.5, align 1, !tbaa !6
  %conv6.5 = zext i8 %21 to i32
  %sub.5 = sub nsw i32 %conv.5, %conv6.5
  %22 = icmp slt i32 %sub.5, 0
  %neg.5 = sub nsw i32 0, %sub.5
  %23 = select i1 %22, i32 %neg.5, i32 %sub.5
  %add.5 = add nsw i32 %23, %add.4
  %arrayidx.6 = getelementptr inbounds i8, i8* %pix1.addr.024, i32 6
  %24 = load i8, i8* %arrayidx.6, align 1, !tbaa !6
  %conv.6 = zext i8 %24 to i32
  %arrayidx5.6 = getelementptr inbounds i8, i8* %pix2.addr.023, i32 6
  %25 = load i8, i8* %arrayidx5.6, align 1, !tbaa !6
  %conv6.6 = zext i8 %25 to i32
  %sub.6 = sub nsw i32 %conv.6, %conv6.6
  %26 = icmp slt i32 %sub.6, 0
  %neg.6 = sub nsw i32 0, %sub.6
  %27 = select i1 %26, i32 %neg.6, i32 %sub.6
  %add.6 = add nsw i32 %27, %add.5
  %arrayidx.7 = getelementptr inbounds i8, i8* %pix1.addr.024, i32 7
  %28 = load i8, i8* %arrayidx.7, align 1, !tbaa !6
  %conv.7 = zext i8 %28 to i32
  %arrayidx5.7 = getelementptr inbounds i8, i8* %pix2.addr.023, i32 7
  %29 = load i8, i8* %arrayidx5.7, align 1, !tbaa !6
  %conv6.7 = zext i8 %29 to i32
  %sub.7 = sub nsw i32 %conv.7, %conv6.7
  %30 = icmp slt i32 %sub.7, 0
  %neg.7 = sub nsw i32 0, %sub.7
  %31 = select i1 %30, i32 %neg.7, i32 %sub.7
  %add.7 = add nsw i32 %31, %add.6
  %add.ptr = getelementptr inbounds i8, i8* %pix1.addr.024, i32 %i_stride_pix1
  %add.ptr7 = getelementptr inbounds i8, i8* %pix2.addr.023, i32 %i_stride_pix2
  %inc9 = add nuw nsw i32 %y.026, 1
  %exitcond = icmp eq i32 %inc9, 16
  br i1 %exitcond, label %for.cond.cleanup, label %for.cond1.preheader

for.cond.cleanup:                                 ; preds = %for.cond1.preheader
  ret i32 %add.7
}

; Function Attrs: norecurse nounwind readonly
define internal i32 @x264_pixel_sad_8x8(i8* nocapture readonly %pix1, i32 %i_stride_pix1, i8* nocapture readonly %pix2, i32 %i_stride_pix2) #3 {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader, %entry
  %y.026 = phi i32 [ 0, %entry ], [ %inc9, %for.cond1.preheader ]
  %i_sum.025 = phi i32 [ 0, %entry ], [ %add.7, %for.cond1.preheader ]
  %pix1.addr.024 = phi i8* [ %pix1, %entry ], [ %add.ptr, %for.cond1.preheader ]
  %pix2.addr.023 = phi i8* [ %pix2, %entry ], [ %add.ptr7, %for.cond1.preheader ]
  %0 = load i8, i8* %pix1.addr.024, align 1, !tbaa !6
  %conv = zext i8 %0 to i32
  %1 = load i8, i8* %pix2.addr.023, align 1, !tbaa !6
  %conv6 = zext i8 %1 to i32
  %sub = sub nsw i32 %conv, %conv6
  %2 = icmp slt i32 %sub, 0
  %neg = sub nsw i32 0, %sub
  %3 = select i1 %2, i32 %neg, i32 %sub
  %add = add nsw i32 %3, %i_sum.025
  %arrayidx.1 = getelementptr inbounds i8, i8* %pix1.addr.024, i32 1
  %4 = load i8, i8* %arrayidx.1, align 1, !tbaa !6
  %conv.1 = zext i8 %4 to i32
  %arrayidx5.1 = getelementptr inbounds i8, i8* %pix2.addr.023, i32 1
  %5 = load i8, i8* %arrayidx5.1, align 1, !tbaa !6
  %conv6.1 = zext i8 %5 to i32
  %sub.1 = sub nsw i32 %conv.1, %conv6.1
  %6 = icmp slt i32 %sub.1, 0
  %neg.1 = sub nsw i32 0, %sub.1
  %7 = select i1 %6, i32 %neg.1, i32 %sub.1
  %add.1 = add nsw i32 %7, %add
  %arrayidx.2 = getelementptr inbounds i8, i8* %pix1.addr.024, i32 2
  %8 = load i8, i8* %arrayidx.2, align 1, !tbaa !6
  %conv.2 = zext i8 %8 to i32
  %arrayidx5.2 = getelementptr inbounds i8, i8* %pix2.addr.023, i32 2
  %9 = load i8, i8* %arrayidx5.2, align 1, !tbaa !6
  %conv6.2 = zext i8 %9 to i32
  %sub.2 = sub nsw i32 %conv.2, %conv6.2
  %10 = icmp slt i32 %sub.2, 0
  %neg.2 = sub nsw i32 0, %sub.2
  %11 = select i1 %10, i32 %neg.2, i32 %sub.2
  %add.2 = add nsw i32 %11, %add.1
  %arrayidx.3 = getelementptr inbounds i8, i8* %pix1.addr.024, i32 3
  %12 = load i8, i8* %arrayidx.3, align 1, !tbaa !6
  %conv.3 = zext i8 %12 to i32
  %arrayidx5.3 = getelementptr inbounds i8, i8* %pix2.addr.023, i32 3
  %13 = load i8, i8* %arrayidx5.3, align 1, !tbaa !6
  %conv6.3 = zext i8 %13 to i32
  %sub.3 = sub nsw i32 %conv.3, %conv6.3
  %14 = icmp slt i32 %sub.3, 0
  %neg.3 = sub nsw i32 0, %sub.3
  %15 = select i1 %14, i32 %neg.3, i32 %sub.3
  %add.3 = add nsw i32 %15, %add.2
  %arrayidx.4 = getelementptr inbounds i8, i8* %pix1.addr.024, i32 4
  %16 = load i8, i8* %arrayidx.4, align 1, !tbaa !6
  %conv.4 = zext i8 %16 to i32
  %arrayidx5.4 = getelementptr inbounds i8, i8* %pix2.addr.023, i32 4
  %17 = load i8, i8* %arrayidx5.4, align 1, !tbaa !6
  %conv6.4 = zext i8 %17 to i32
  %sub.4 = sub nsw i32 %conv.4, %conv6.4
  %18 = icmp slt i32 %sub.4, 0
  %neg.4 = sub nsw i32 0, %sub.4
  %19 = select i1 %18, i32 %neg.4, i32 %sub.4
  %add.4 = add nsw i32 %19, %add.3
  %arrayidx.5 = getelementptr inbounds i8, i8* %pix1.addr.024, i32 5
  %20 = load i8, i8* %arrayidx.5, align 1, !tbaa !6
  %conv.5 = zext i8 %20 to i32
  %arrayidx5.5 = getelementptr inbounds i8, i8* %pix2.addr.023, i32 5
  %21 = load i8, i8* %arrayidx5.5, align 1, !tbaa !6
  %conv6.5 = zext i8 %21 to i32
  %sub.5 = sub nsw i32 %conv.5, %conv6.5
  %22 = icmp slt i32 %sub.5, 0
  %neg.5 = sub nsw i32 0, %sub.5
  %23 = select i1 %22, i32 %neg.5, i32 %sub.5
  %add.5 = add nsw i32 %23, %add.4
  %arrayidx.6 = getelementptr inbounds i8, i8* %pix1.addr.024, i32 6
  %24 = load i8, i8* %arrayidx.6, align 1, !tbaa !6
  %conv.6 = zext i8 %24 to i32
  %arrayidx5.6 = getelementptr inbounds i8, i8* %pix2.addr.023, i32 6
  %25 = load i8, i8* %arrayidx5.6, align 1, !tbaa !6
  %conv6.6 = zext i8 %25 to i32
  %sub.6 = sub nsw i32 %conv.6, %conv6.6
  %26 = icmp slt i32 %sub.6, 0
  %neg.6 = sub nsw i32 0, %sub.6
  %27 = select i1 %26, i32 %neg.6, i32 %sub.6
  %add.6 = add nsw i32 %27, %add.5
  %arrayidx.7 = getelementptr inbounds i8, i8* %pix1.addr.024, i32 7
  %28 = load i8, i8* %arrayidx.7, align 1, !tbaa !6
  %conv.7 = zext i8 %28 to i32
  %arrayidx5.7 = getelementptr inbounds i8, i8* %pix2.addr.023, i32 7
  %29 = load i8, i8* %arrayidx5.7, align 1, !tbaa !6
  %conv6.7 = zext i8 %29 to i32
  %sub.7 = sub nsw i32 %conv.7, %conv6.7
  %30 = icmp slt i32 %sub.7, 0
  %neg.7 = sub nsw i32 0, %sub.7
  %31 = select i1 %30, i32 %neg.7, i32 %sub.7
  %add.7 = add nsw i32 %31, %add.6
  %add.ptr = getelementptr inbounds i8, i8* %pix1.addr.024, i32 %i_stride_pix1
  %add.ptr7 = getelementptr inbounds i8, i8* %pix2.addr.023, i32 %i_stride_pix2
  %inc9 = add nuw nsw i32 %y.026, 1
  %exitcond = icmp eq i32 %inc9, 8
  br i1 %exitcond, label %for.cond.cleanup, label %for.cond1.preheader

for.cond.cleanup:                                 ; preds = %for.cond1.preheader
  ret i32 %add.7
}

; Function Attrs: norecurse nounwind readonly
define internal i32 @x264_pixel_sad_8x4(i8* nocapture readonly %pix1, i32 %i_stride_pix1, i8* nocapture readonly %pix2, i32 %i_stride_pix2) #3 {
entry:
  %0 = load i8, i8* %pix1, align 1, !tbaa !6
  %conv = zext i8 %0 to i32
  %1 = load i8, i8* %pix2, align 1, !tbaa !6
  %conv6 = zext i8 %1 to i32
  %sub = sub nsw i32 %conv, %conv6
  %2 = icmp slt i32 %sub, 0
  %neg = sub nsw i32 0, %sub
  %3 = select i1 %2, i32 %neg, i32 %sub
  %arrayidx.1 = getelementptr inbounds i8, i8* %pix1, i32 1
  %4 = load i8, i8* %arrayidx.1, align 1, !tbaa !6
  %conv.1 = zext i8 %4 to i32
  %arrayidx5.1 = getelementptr inbounds i8, i8* %pix2, i32 1
  %5 = load i8, i8* %arrayidx5.1, align 1, !tbaa !6
  %conv6.1 = zext i8 %5 to i32
  %sub.1 = sub nsw i32 %conv.1, %conv6.1
  %6 = icmp slt i32 %sub.1, 0
  %neg.1 = sub nsw i32 0, %sub.1
  %7 = select i1 %6, i32 %neg.1, i32 %sub.1
  %add.1 = add nuw nsw i32 %7, %3
  %arrayidx.2 = getelementptr inbounds i8, i8* %pix1, i32 2
  %8 = load i8, i8* %arrayidx.2, align 1, !tbaa !6
  %conv.2 = zext i8 %8 to i32
  %arrayidx5.2 = getelementptr inbounds i8, i8* %pix2, i32 2
  %9 = load i8, i8* %arrayidx5.2, align 1, !tbaa !6
  %conv6.2 = zext i8 %9 to i32
  %sub.2 = sub nsw i32 %conv.2, %conv6.2
  %10 = icmp slt i32 %sub.2, 0
  %neg.2 = sub nsw i32 0, %sub.2
  %11 = select i1 %10, i32 %neg.2, i32 %sub.2
  %add.2 = add nuw nsw i32 %11, %add.1
  %arrayidx.3 = getelementptr inbounds i8, i8* %pix1, i32 3
  %12 = load i8, i8* %arrayidx.3, align 1, !tbaa !6
  %conv.3 = zext i8 %12 to i32
  %arrayidx5.3 = getelementptr inbounds i8, i8* %pix2, i32 3
  %13 = load i8, i8* %arrayidx5.3, align 1, !tbaa !6
  %conv6.3 = zext i8 %13 to i32
  %sub.3 = sub nsw i32 %conv.3, %conv6.3
  %14 = icmp slt i32 %sub.3, 0
  %neg.3 = sub nsw i32 0, %sub.3
  %15 = select i1 %14, i32 %neg.3, i32 %sub.3
  %add.3 = add nuw nsw i32 %15, %add.2
  %arrayidx.4 = getelementptr inbounds i8, i8* %pix1, i32 4
  %16 = load i8, i8* %arrayidx.4, align 1, !tbaa !6
  %conv.4 = zext i8 %16 to i32
  %arrayidx5.4 = getelementptr inbounds i8, i8* %pix2, i32 4
  %17 = load i8, i8* %arrayidx5.4, align 1, !tbaa !6
  %conv6.4 = zext i8 %17 to i32
  %sub.4 = sub nsw i32 %conv.4, %conv6.4
  %18 = icmp slt i32 %sub.4, 0
  %neg.4 = sub nsw i32 0, %sub.4
  %19 = select i1 %18, i32 %neg.4, i32 %sub.4
  %add.4 = add nuw nsw i32 %19, %add.3
  %arrayidx.5 = getelementptr inbounds i8, i8* %pix1, i32 5
  %20 = load i8, i8* %arrayidx.5, align 1, !tbaa !6
  %conv.5 = zext i8 %20 to i32
  %arrayidx5.5 = getelementptr inbounds i8, i8* %pix2, i32 5
  %21 = load i8, i8* %arrayidx5.5, align 1, !tbaa !6
  %conv6.5 = zext i8 %21 to i32
  %sub.5 = sub nsw i32 %conv.5, %conv6.5
  %22 = icmp slt i32 %sub.5, 0
  %neg.5 = sub nsw i32 0, %sub.5
  %23 = select i1 %22, i32 %neg.5, i32 %sub.5
  %add.5 = add nuw nsw i32 %23, %add.4
  %arrayidx.6 = getelementptr inbounds i8, i8* %pix1, i32 6
  %24 = load i8, i8* %arrayidx.6, align 1, !tbaa !6
  %conv.6 = zext i8 %24 to i32
  %arrayidx5.6 = getelementptr inbounds i8, i8* %pix2, i32 6
  %25 = load i8, i8* %arrayidx5.6, align 1, !tbaa !6
  %conv6.6 = zext i8 %25 to i32
  %sub.6 = sub nsw i32 %conv.6, %conv6.6
  %26 = icmp slt i32 %sub.6, 0
  %neg.6 = sub nsw i32 0, %sub.6
  %27 = select i1 %26, i32 %neg.6, i32 %sub.6
  %add.6 = add nuw nsw i32 %27, %add.5
  %arrayidx.7 = getelementptr inbounds i8, i8* %pix1, i32 7
  %28 = load i8, i8* %arrayidx.7, align 1, !tbaa !6
  %conv.7 = zext i8 %28 to i32
  %arrayidx5.7 = getelementptr inbounds i8, i8* %pix2, i32 7
  %29 = load i8, i8* %arrayidx5.7, align 1, !tbaa !6
  %conv6.7 = zext i8 %29 to i32
  %sub.7 = sub nsw i32 %conv.7, %conv6.7
  %30 = icmp slt i32 %sub.7, 0
  %neg.7 = sub nsw i32 0, %sub.7
  %31 = select i1 %30, i32 %neg.7, i32 %sub.7
  %add.7 = add nuw nsw i32 %31, %add.6
  %add.ptr = getelementptr inbounds i8, i8* %pix1, i32 %i_stride_pix1
  %add.ptr7 = getelementptr inbounds i8, i8* %pix2, i32 %i_stride_pix2
  %32 = load i8, i8* %add.ptr, align 1, !tbaa !6
  %conv.127 = zext i8 %32 to i32
  %33 = load i8, i8* %add.ptr7, align 1, !tbaa !6
  %conv6.128 = zext i8 %33 to i32
  %sub.129 = sub nsw i32 %conv.127, %conv6.128
  %34 = icmp slt i32 %sub.129, 0
  %neg.130 = sub nsw i32 0, %sub.129
  %35 = select i1 %34, i32 %neg.130, i32 %sub.129
  %add.131 = add nuw nsw i32 %35, %add.7
  %arrayidx.1.1 = getelementptr inbounds i8, i8* %add.ptr, i32 1
  %36 = load i8, i8* %arrayidx.1.1, align 1, !tbaa !6
  %conv.1.1 = zext i8 %36 to i32
  %arrayidx5.1.1 = getelementptr inbounds i8, i8* %add.ptr7, i32 1
  %37 = load i8, i8* %arrayidx5.1.1, align 1, !tbaa !6
  %conv6.1.1 = zext i8 %37 to i32
  %sub.1.1 = sub nsw i32 %conv.1.1, %conv6.1.1
  %38 = icmp slt i32 %sub.1.1, 0
  %neg.1.1 = sub nsw i32 0, %sub.1.1
  %39 = select i1 %38, i32 %neg.1.1, i32 %sub.1.1
  %add.1.1 = add nuw nsw i32 %39, %add.131
  %arrayidx.2.1 = getelementptr inbounds i8, i8* %add.ptr, i32 2
  %40 = load i8, i8* %arrayidx.2.1, align 1, !tbaa !6
  %conv.2.1 = zext i8 %40 to i32
  %arrayidx5.2.1 = getelementptr inbounds i8, i8* %add.ptr7, i32 2
  %41 = load i8, i8* %arrayidx5.2.1, align 1, !tbaa !6
  %conv6.2.1 = zext i8 %41 to i32
  %sub.2.1 = sub nsw i32 %conv.2.1, %conv6.2.1
  %42 = icmp slt i32 %sub.2.1, 0
  %neg.2.1 = sub nsw i32 0, %sub.2.1
  %43 = select i1 %42, i32 %neg.2.1, i32 %sub.2.1
  %add.2.1 = add nuw nsw i32 %43, %add.1.1
  %arrayidx.3.1 = getelementptr inbounds i8, i8* %add.ptr, i32 3
  %44 = load i8, i8* %arrayidx.3.1, align 1, !tbaa !6
  %conv.3.1 = zext i8 %44 to i32
  %arrayidx5.3.1 = getelementptr inbounds i8, i8* %add.ptr7, i32 3
  %45 = load i8, i8* %arrayidx5.3.1, align 1, !tbaa !6
  %conv6.3.1 = zext i8 %45 to i32
  %sub.3.1 = sub nsw i32 %conv.3.1, %conv6.3.1
  %46 = icmp slt i32 %sub.3.1, 0
  %neg.3.1 = sub nsw i32 0, %sub.3.1
  %47 = select i1 %46, i32 %neg.3.1, i32 %sub.3.1
  %add.3.1 = add nuw nsw i32 %47, %add.2.1
  %arrayidx.4.1 = getelementptr inbounds i8, i8* %add.ptr, i32 4
  %48 = load i8, i8* %arrayidx.4.1, align 1, !tbaa !6
  %conv.4.1 = zext i8 %48 to i32
  %arrayidx5.4.1 = getelementptr inbounds i8, i8* %add.ptr7, i32 4
  %49 = load i8, i8* %arrayidx5.4.1, align 1, !tbaa !6
  %conv6.4.1 = zext i8 %49 to i32
  %sub.4.1 = sub nsw i32 %conv.4.1, %conv6.4.1
  %50 = icmp slt i32 %sub.4.1, 0
  %neg.4.1 = sub nsw i32 0, %sub.4.1
  %51 = select i1 %50, i32 %neg.4.1, i32 %sub.4.1
  %add.4.1 = add nuw nsw i32 %51, %add.3.1
  %arrayidx.5.1 = getelementptr inbounds i8, i8* %add.ptr, i32 5
  %52 = load i8, i8* %arrayidx.5.1, align 1, !tbaa !6
  %conv.5.1 = zext i8 %52 to i32
  %arrayidx5.5.1 = getelementptr inbounds i8, i8* %add.ptr7, i32 5
  %53 = load i8, i8* %arrayidx5.5.1, align 1, !tbaa !6
  %conv6.5.1 = zext i8 %53 to i32
  %sub.5.1 = sub nsw i32 %conv.5.1, %conv6.5.1
  %54 = icmp slt i32 %sub.5.1, 0
  %neg.5.1 = sub nsw i32 0, %sub.5.1
  %55 = select i1 %54, i32 %neg.5.1, i32 %sub.5.1
  %add.5.1 = add nuw nsw i32 %55, %add.4.1
  %arrayidx.6.1 = getelementptr inbounds i8, i8* %add.ptr, i32 6
  %56 = load i8, i8* %arrayidx.6.1, align 1, !tbaa !6
  %conv.6.1 = zext i8 %56 to i32
  %arrayidx5.6.1 = getelementptr inbounds i8, i8* %add.ptr7, i32 6
  %57 = load i8, i8* %arrayidx5.6.1, align 1, !tbaa !6
  %conv6.6.1 = zext i8 %57 to i32
  %sub.6.1 = sub nsw i32 %conv.6.1, %conv6.6.1
  %58 = icmp slt i32 %sub.6.1, 0
  %neg.6.1 = sub nsw i32 0, %sub.6.1
  %59 = select i1 %58, i32 %neg.6.1, i32 %sub.6.1
  %add.6.1 = add nuw nsw i32 %59, %add.5.1
  %arrayidx.7.1 = getelementptr inbounds i8, i8* %add.ptr, i32 7
  %60 = load i8, i8* %arrayidx.7.1, align 1, !tbaa !6
  %conv.7.1 = zext i8 %60 to i32
  %arrayidx5.7.1 = getelementptr inbounds i8, i8* %add.ptr7, i32 7
  %61 = load i8, i8* %arrayidx5.7.1, align 1, !tbaa !6
  %conv6.7.1 = zext i8 %61 to i32
  %sub.7.1 = sub nsw i32 %conv.7.1, %conv6.7.1
  %62 = icmp slt i32 %sub.7.1, 0
  %neg.7.1 = sub nsw i32 0, %sub.7.1
  %63 = select i1 %62, i32 %neg.7.1, i32 %sub.7.1
  %add.7.1 = add nuw nsw i32 %63, %add.6.1
  %add.ptr.1 = getelementptr inbounds i8, i8* %add.ptr, i32 %i_stride_pix1
  %add.ptr7.1 = getelementptr inbounds i8, i8* %add.ptr7, i32 %i_stride_pix2
  %64 = load i8, i8* %add.ptr.1, align 1, !tbaa !6
  %conv.232 = zext i8 %64 to i32
  %65 = load i8, i8* %add.ptr7.1, align 1, !tbaa !6
  %conv6.233 = zext i8 %65 to i32
  %sub.234 = sub nsw i32 %conv.232, %conv6.233
  %66 = icmp slt i32 %sub.234, 0
  %neg.235 = sub nsw i32 0, %sub.234
  %67 = select i1 %66, i32 %neg.235, i32 %sub.234
  %add.236 = add nuw nsw i32 %67, %add.7.1
  %arrayidx.1.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 1
  %68 = load i8, i8* %arrayidx.1.2, align 1, !tbaa !6
  %conv.1.2 = zext i8 %68 to i32
  %arrayidx5.1.2 = getelementptr inbounds i8, i8* %add.ptr7.1, i32 1
  %69 = load i8, i8* %arrayidx5.1.2, align 1, !tbaa !6
  %conv6.1.2 = zext i8 %69 to i32
  %sub.1.2 = sub nsw i32 %conv.1.2, %conv6.1.2
  %70 = icmp slt i32 %sub.1.2, 0
  %neg.1.2 = sub nsw i32 0, %sub.1.2
  %71 = select i1 %70, i32 %neg.1.2, i32 %sub.1.2
  %add.1.2 = add nuw nsw i32 %71, %add.236
  %arrayidx.2.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 2
  %72 = load i8, i8* %arrayidx.2.2, align 1, !tbaa !6
  %conv.2.2 = zext i8 %72 to i32
  %arrayidx5.2.2 = getelementptr inbounds i8, i8* %add.ptr7.1, i32 2
  %73 = load i8, i8* %arrayidx5.2.2, align 1, !tbaa !6
  %conv6.2.2 = zext i8 %73 to i32
  %sub.2.2 = sub nsw i32 %conv.2.2, %conv6.2.2
  %74 = icmp slt i32 %sub.2.2, 0
  %neg.2.2 = sub nsw i32 0, %sub.2.2
  %75 = select i1 %74, i32 %neg.2.2, i32 %sub.2.2
  %add.2.2 = add nuw nsw i32 %75, %add.1.2
  %arrayidx.3.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 3
  %76 = load i8, i8* %arrayidx.3.2, align 1, !tbaa !6
  %conv.3.2 = zext i8 %76 to i32
  %arrayidx5.3.2 = getelementptr inbounds i8, i8* %add.ptr7.1, i32 3
  %77 = load i8, i8* %arrayidx5.3.2, align 1, !tbaa !6
  %conv6.3.2 = zext i8 %77 to i32
  %sub.3.2 = sub nsw i32 %conv.3.2, %conv6.3.2
  %78 = icmp slt i32 %sub.3.2, 0
  %neg.3.2 = sub nsw i32 0, %sub.3.2
  %79 = select i1 %78, i32 %neg.3.2, i32 %sub.3.2
  %add.3.2 = add nuw nsw i32 %79, %add.2.2
  %arrayidx.4.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 4
  %80 = load i8, i8* %arrayidx.4.2, align 1, !tbaa !6
  %conv.4.2 = zext i8 %80 to i32
  %arrayidx5.4.2 = getelementptr inbounds i8, i8* %add.ptr7.1, i32 4
  %81 = load i8, i8* %arrayidx5.4.2, align 1, !tbaa !6
  %conv6.4.2 = zext i8 %81 to i32
  %sub.4.2 = sub nsw i32 %conv.4.2, %conv6.4.2
  %82 = icmp slt i32 %sub.4.2, 0
  %neg.4.2 = sub nsw i32 0, %sub.4.2
  %83 = select i1 %82, i32 %neg.4.2, i32 %sub.4.2
  %add.4.2 = add nuw nsw i32 %83, %add.3.2
  %arrayidx.5.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 5
  %84 = load i8, i8* %arrayidx.5.2, align 1, !tbaa !6
  %conv.5.2 = zext i8 %84 to i32
  %arrayidx5.5.2 = getelementptr inbounds i8, i8* %add.ptr7.1, i32 5
  %85 = load i8, i8* %arrayidx5.5.2, align 1, !tbaa !6
  %conv6.5.2 = zext i8 %85 to i32
  %sub.5.2 = sub nsw i32 %conv.5.2, %conv6.5.2
  %86 = icmp slt i32 %sub.5.2, 0
  %neg.5.2 = sub nsw i32 0, %sub.5.2
  %87 = select i1 %86, i32 %neg.5.2, i32 %sub.5.2
  %add.5.2 = add nuw nsw i32 %87, %add.4.2
  %arrayidx.6.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 6
  %88 = load i8, i8* %arrayidx.6.2, align 1, !tbaa !6
  %conv.6.2 = zext i8 %88 to i32
  %arrayidx5.6.2 = getelementptr inbounds i8, i8* %add.ptr7.1, i32 6
  %89 = load i8, i8* %arrayidx5.6.2, align 1, !tbaa !6
  %conv6.6.2 = zext i8 %89 to i32
  %sub.6.2 = sub nsw i32 %conv.6.2, %conv6.6.2
  %90 = icmp slt i32 %sub.6.2, 0
  %neg.6.2 = sub nsw i32 0, %sub.6.2
  %91 = select i1 %90, i32 %neg.6.2, i32 %sub.6.2
  %add.6.2 = add nuw nsw i32 %91, %add.5.2
  %arrayidx.7.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 7
  %92 = load i8, i8* %arrayidx.7.2, align 1, !tbaa !6
  %conv.7.2 = zext i8 %92 to i32
  %arrayidx5.7.2 = getelementptr inbounds i8, i8* %add.ptr7.1, i32 7
  %93 = load i8, i8* %arrayidx5.7.2, align 1, !tbaa !6
  %conv6.7.2 = zext i8 %93 to i32
  %sub.7.2 = sub nsw i32 %conv.7.2, %conv6.7.2
  %94 = icmp slt i32 %sub.7.2, 0
  %neg.7.2 = sub nsw i32 0, %sub.7.2
  %95 = select i1 %94, i32 %neg.7.2, i32 %sub.7.2
  %add.7.2 = add nuw nsw i32 %95, %add.6.2
  %add.ptr.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 %i_stride_pix1
  %add.ptr7.2 = getelementptr inbounds i8, i8* %add.ptr7.1, i32 %i_stride_pix2
  %96 = load i8, i8* %add.ptr.2, align 1, !tbaa !6
  %conv.337 = zext i8 %96 to i32
  %97 = load i8, i8* %add.ptr7.2, align 1, !tbaa !6
  %conv6.338 = zext i8 %97 to i32
  %sub.339 = sub nsw i32 %conv.337, %conv6.338
  %98 = icmp slt i32 %sub.339, 0
  %neg.340 = sub nsw i32 0, %sub.339
  %99 = select i1 %98, i32 %neg.340, i32 %sub.339
  %add.341 = add nuw nsw i32 %99, %add.7.2
  %arrayidx.1.3 = getelementptr inbounds i8, i8* %add.ptr.2, i32 1
  %100 = load i8, i8* %arrayidx.1.3, align 1, !tbaa !6
  %conv.1.3 = zext i8 %100 to i32
  %arrayidx5.1.3 = getelementptr inbounds i8, i8* %add.ptr7.2, i32 1
  %101 = load i8, i8* %arrayidx5.1.3, align 1, !tbaa !6
  %conv6.1.3 = zext i8 %101 to i32
  %sub.1.3 = sub nsw i32 %conv.1.3, %conv6.1.3
  %102 = icmp slt i32 %sub.1.3, 0
  %neg.1.3 = sub nsw i32 0, %sub.1.3
  %103 = select i1 %102, i32 %neg.1.3, i32 %sub.1.3
  %add.1.3 = add nuw nsw i32 %103, %add.341
  %arrayidx.2.3 = getelementptr inbounds i8, i8* %add.ptr.2, i32 2
  %104 = load i8, i8* %arrayidx.2.3, align 1, !tbaa !6
  %conv.2.3 = zext i8 %104 to i32
  %arrayidx5.2.3 = getelementptr inbounds i8, i8* %add.ptr7.2, i32 2
  %105 = load i8, i8* %arrayidx5.2.3, align 1, !tbaa !6
  %conv6.2.3 = zext i8 %105 to i32
  %sub.2.3 = sub nsw i32 %conv.2.3, %conv6.2.3
  %106 = icmp slt i32 %sub.2.3, 0
  %neg.2.3 = sub nsw i32 0, %sub.2.3
  %107 = select i1 %106, i32 %neg.2.3, i32 %sub.2.3
  %add.2.3 = add nuw nsw i32 %107, %add.1.3
  %arrayidx.3.3 = getelementptr inbounds i8, i8* %add.ptr.2, i32 3
  %108 = load i8, i8* %arrayidx.3.3, align 1, !tbaa !6
  %conv.3.3 = zext i8 %108 to i32
  %arrayidx5.3.3 = getelementptr inbounds i8, i8* %add.ptr7.2, i32 3
  %109 = load i8, i8* %arrayidx5.3.3, align 1, !tbaa !6
  %conv6.3.3 = zext i8 %109 to i32
  %sub.3.3 = sub nsw i32 %conv.3.3, %conv6.3.3
  %110 = icmp slt i32 %sub.3.3, 0
  %neg.3.3 = sub nsw i32 0, %sub.3.3
  %111 = select i1 %110, i32 %neg.3.3, i32 %sub.3.3
  %add.3.3 = add nuw nsw i32 %111, %add.2.3
  %arrayidx.4.3 = getelementptr inbounds i8, i8* %add.ptr.2, i32 4
  %112 = load i8, i8* %arrayidx.4.3, align 1, !tbaa !6
  %conv.4.3 = zext i8 %112 to i32
  %arrayidx5.4.3 = getelementptr inbounds i8, i8* %add.ptr7.2, i32 4
  %113 = load i8, i8* %arrayidx5.4.3, align 1, !tbaa !6
  %conv6.4.3 = zext i8 %113 to i32
  %sub.4.3 = sub nsw i32 %conv.4.3, %conv6.4.3
  %114 = icmp slt i32 %sub.4.3, 0
  %neg.4.3 = sub nsw i32 0, %sub.4.3
  %115 = select i1 %114, i32 %neg.4.3, i32 %sub.4.3
  %add.4.3 = add nuw nsw i32 %115, %add.3.3
  %arrayidx.5.3 = getelementptr inbounds i8, i8* %add.ptr.2, i32 5
  %116 = load i8, i8* %arrayidx.5.3, align 1, !tbaa !6
  %conv.5.3 = zext i8 %116 to i32
  %arrayidx5.5.3 = getelementptr inbounds i8, i8* %add.ptr7.2, i32 5
  %117 = load i8, i8* %arrayidx5.5.3, align 1, !tbaa !6
  %conv6.5.3 = zext i8 %117 to i32
  %sub.5.3 = sub nsw i32 %conv.5.3, %conv6.5.3
  %118 = icmp slt i32 %sub.5.3, 0
  %neg.5.3 = sub nsw i32 0, %sub.5.3
  %119 = select i1 %118, i32 %neg.5.3, i32 %sub.5.3
  %add.5.3 = add nuw nsw i32 %119, %add.4.3
  %arrayidx.6.3 = getelementptr inbounds i8, i8* %add.ptr.2, i32 6
  %120 = load i8, i8* %arrayidx.6.3, align 1, !tbaa !6
  %conv.6.3 = zext i8 %120 to i32
  %arrayidx5.6.3 = getelementptr inbounds i8, i8* %add.ptr7.2, i32 6
  %121 = load i8, i8* %arrayidx5.6.3, align 1, !tbaa !6
  %conv6.6.3 = zext i8 %121 to i32
  %sub.6.3 = sub nsw i32 %conv.6.3, %conv6.6.3
  %122 = icmp slt i32 %sub.6.3, 0
  %neg.6.3 = sub nsw i32 0, %sub.6.3
  %123 = select i1 %122, i32 %neg.6.3, i32 %sub.6.3
  %add.6.3 = add nuw nsw i32 %123, %add.5.3
  %arrayidx.7.3 = getelementptr inbounds i8, i8* %add.ptr.2, i32 7
  %124 = load i8, i8* %arrayidx.7.3, align 1, !tbaa !6
  %conv.7.3 = zext i8 %124 to i32
  %arrayidx5.7.3 = getelementptr inbounds i8, i8* %add.ptr7.2, i32 7
  %125 = load i8, i8* %arrayidx5.7.3, align 1, !tbaa !6
  %conv6.7.3 = zext i8 %125 to i32
  %sub.7.3 = sub nsw i32 %conv.7.3, %conv6.7.3
  %126 = icmp slt i32 %sub.7.3, 0
  %neg.7.3 = sub nsw i32 0, %sub.7.3
  %127 = select i1 %126, i32 %neg.7.3, i32 %sub.7.3
  %add.7.3 = add nuw nsw i32 %127, %add.6.3
  ret i32 %add.7.3
}

; Function Attrs: norecurse nounwind readonly
define internal i32 @x264_pixel_sad_4x8(i8* nocapture readonly %pix1, i32 %i_stride_pix1, i8* nocapture readonly %pix2, i32 %i_stride_pix2) #3 {
entry:
  %0 = load i8, i8* %pix1, align 1, !tbaa !6
  %conv = zext i8 %0 to i32
  %1 = load i8, i8* %pix2, align 1, !tbaa !6
  %conv6 = zext i8 %1 to i32
  %sub = sub nsw i32 %conv, %conv6
  %2 = icmp slt i32 %sub, 0
  %neg = sub nsw i32 0, %sub
  %3 = select i1 %2, i32 %neg, i32 %sub
  %arrayidx.1 = getelementptr inbounds i8, i8* %pix1, i32 1
  %4 = load i8, i8* %arrayidx.1, align 1, !tbaa !6
  %conv.1 = zext i8 %4 to i32
  %arrayidx5.1 = getelementptr inbounds i8, i8* %pix2, i32 1
  %5 = load i8, i8* %arrayidx5.1, align 1, !tbaa !6
  %conv6.1 = zext i8 %5 to i32
  %sub.1 = sub nsw i32 %conv.1, %conv6.1
  %6 = icmp slt i32 %sub.1, 0
  %neg.1 = sub nsw i32 0, %sub.1
  %7 = select i1 %6, i32 %neg.1, i32 %sub.1
  %add.1 = add nuw nsw i32 %7, %3
  %arrayidx.2 = getelementptr inbounds i8, i8* %pix1, i32 2
  %8 = load i8, i8* %arrayidx.2, align 1, !tbaa !6
  %conv.2 = zext i8 %8 to i32
  %arrayidx5.2 = getelementptr inbounds i8, i8* %pix2, i32 2
  %9 = load i8, i8* %arrayidx5.2, align 1, !tbaa !6
  %conv6.2 = zext i8 %9 to i32
  %sub.2 = sub nsw i32 %conv.2, %conv6.2
  %10 = icmp slt i32 %sub.2, 0
  %neg.2 = sub nsw i32 0, %sub.2
  %11 = select i1 %10, i32 %neg.2, i32 %sub.2
  %add.2 = add nuw nsw i32 %11, %add.1
  %arrayidx.3 = getelementptr inbounds i8, i8* %pix1, i32 3
  %12 = load i8, i8* %arrayidx.3, align 1, !tbaa !6
  %conv.3 = zext i8 %12 to i32
  %arrayidx5.3 = getelementptr inbounds i8, i8* %pix2, i32 3
  %13 = load i8, i8* %arrayidx5.3, align 1, !tbaa !6
  %conv6.3 = zext i8 %13 to i32
  %sub.3 = sub nsw i32 %conv.3, %conv6.3
  %14 = icmp slt i32 %sub.3, 0
  %neg.3 = sub nsw i32 0, %sub.3
  %15 = select i1 %14, i32 %neg.3, i32 %sub.3
  %add.3 = add nuw nsw i32 %15, %add.2
  %add.ptr = getelementptr inbounds i8, i8* %pix1, i32 %i_stride_pix1
  %add.ptr7 = getelementptr inbounds i8, i8* %pix2, i32 %i_stride_pix2
  %16 = load i8, i8* %add.ptr, align 1, !tbaa !6
  %conv.127 = zext i8 %16 to i32
  %17 = load i8, i8* %add.ptr7, align 1, !tbaa !6
  %conv6.128 = zext i8 %17 to i32
  %sub.129 = sub nsw i32 %conv.127, %conv6.128
  %18 = icmp slt i32 %sub.129, 0
  %neg.130 = sub nsw i32 0, %sub.129
  %19 = select i1 %18, i32 %neg.130, i32 %sub.129
  %add.131 = add nuw nsw i32 %19, %add.3
  %arrayidx.1.1 = getelementptr inbounds i8, i8* %add.ptr, i32 1
  %20 = load i8, i8* %arrayidx.1.1, align 1, !tbaa !6
  %conv.1.1 = zext i8 %20 to i32
  %arrayidx5.1.1 = getelementptr inbounds i8, i8* %add.ptr7, i32 1
  %21 = load i8, i8* %arrayidx5.1.1, align 1, !tbaa !6
  %conv6.1.1 = zext i8 %21 to i32
  %sub.1.1 = sub nsw i32 %conv.1.1, %conv6.1.1
  %22 = icmp slt i32 %sub.1.1, 0
  %neg.1.1 = sub nsw i32 0, %sub.1.1
  %23 = select i1 %22, i32 %neg.1.1, i32 %sub.1.1
  %add.1.1 = add nuw nsw i32 %23, %add.131
  %arrayidx.2.1 = getelementptr inbounds i8, i8* %add.ptr, i32 2
  %24 = load i8, i8* %arrayidx.2.1, align 1, !tbaa !6
  %conv.2.1 = zext i8 %24 to i32
  %arrayidx5.2.1 = getelementptr inbounds i8, i8* %add.ptr7, i32 2
  %25 = load i8, i8* %arrayidx5.2.1, align 1, !tbaa !6
  %conv6.2.1 = zext i8 %25 to i32
  %sub.2.1 = sub nsw i32 %conv.2.1, %conv6.2.1
  %26 = icmp slt i32 %sub.2.1, 0
  %neg.2.1 = sub nsw i32 0, %sub.2.1
  %27 = select i1 %26, i32 %neg.2.1, i32 %sub.2.1
  %add.2.1 = add nuw nsw i32 %27, %add.1.1
  %arrayidx.3.1 = getelementptr inbounds i8, i8* %add.ptr, i32 3
  %28 = load i8, i8* %arrayidx.3.1, align 1, !tbaa !6
  %conv.3.1 = zext i8 %28 to i32
  %arrayidx5.3.1 = getelementptr inbounds i8, i8* %add.ptr7, i32 3
  %29 = load i8, i8* %arrayidx5.3.1, align 1, !tbaa !6
  %conv6.3.1 = zext i8 %29 to i32
  %sub.3.1 = sub nsw i32 %conv.3.1, %conv6.3.1
  %30 = icmp slt i32 %sub.3.1, 0
  %neg.3.1 = sub nsw i32 0, %sub.3.1
  %31 = select i1 %30, i32 %neg.3.1, i32 %sub.3.1
  %add.3.1 = add nuw nsw i32 %31, %add.2.1
  %add.ptr.1 = getelementptr inbounds i8, i8* %add.ptr, i32 %i_stride_pix1
  %add.ptr7.1 = getelementptr inbounds i8, i8* %add.ptr7, i32 %i_stride_pix2
  %32 = load i8, i8* %add.ptr.1, align 1, !tbaa !6
  %conv.232 = zext i8 %32 to i32
  %33 = load i8, i8* %add.ptr7.1, align 1, !tbaa !6
  %conv6.233 = zext i8 %33 to i32
  %sub.234 = sub nsw i32 %conv.232, %conv6.233
  %34 = icmp slt i32 %sub.234, 0
  %neg.235 = sub nsw i32 0, %sub.234
  %35 = select i1 %34, i32 %neg.235, i32 %sub.234
  %add.236 = add nuw nsw i32 %35, %add.3.1
  %arrayidx.1.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 1
  %36 = load i8, i8* %arrayidx.1.2, align 1, !tbaa !6
  %conv.1.2 = zext i8 %36 to i32
  %arrayidx5.1.2 = getelementptr inbounds i8, i8* %add.ptr7.1, i32 1
  %37 = load i8, i8* %arrayidx5.1.2, align 1, !tbaa !6
  %conv6.1.2 = zext i8 %37 to i32
  %sub.1.2 = sub nsw i32 %conv.1.2, %conv6.1.2
  %38 = icmp slt i32 %sub.1.2, 0
  %neg.1.2 = sub nsw i32 0, %sub.1.2
  %39 = select i1 %38, i32 %neg.1.2, i32 %sub.1.2
  %add.1.2 = add nuw nsw i32 %39, %add.236
  %arrayidx.2.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 2
  %40 = load i8, i8* %arrayidx.2.2, align 1, !tbaa !6
  %conv.2.2 = zext i8 %40 to i32
  %arrayidx5.2.2 = getelementptr inbounds i8, i8* %add.ptr7.1, i32 2
  %41 = load i8, i8* %arrayidx5.2.2, align 1, !tbaa !6
  %conv6.2.2 = zext i8 %41 to i32
  %sub.2.2 = sub nsw i32 %conv.2.2, %conv6.2.2
  %42 = icmp slt i32 %sub.2.2, 0
  %neg.2.2 = sub nsw i32 0, %sub.2.2
  %43 = select i1 %42, i32 %neg.2.2, i32 %sub.2.2
  %add.2.2 = add nuw nsw i32 %43, %add.1.2
  %arrayidx.3.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 3
  %44 = load i8, i8* %arrayidx.3.2, align 1, !tbaa !6
  %conv.3.2 = zext i8 %44 to i32
  %arrayidx5.3.2 = getelementptr inbounds i8, i8* %add.ptr7.1, i32 3
  %45 = load i8, i8* %arrayidx5.3.2, align 1, !tbaa !6
  %conv6.3.2 = zext i8 %45 to i32
  %sub.3.2 = sub nsw i32 %conv.3.2, %conv6.3.2
  %46 = icmp slt i32 %sub.3.2, 0
  %neg.3.2 = sub nsw i32 0, %sub.3.2
  %47 = select i1 %46, i32 %neg.3.2, i32 %sub.3.2
  %add.3.2 = add nuw nsw i32 %47, %add.2.2
  %add.ptr.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 %i_stride_pix1
  %add.ptr7.2 = getelementptr inbounds i8, i8* %add.ptr7.1, i32 %i_stride_pix2
  %48 = load i8, i8* %add.ptr.2, align 1, !tbaa !6
  %conv.337 = zext i8 %48 to i32
  %49 = load i8, i8* %add.ptr7.2, align 1, !tbaa !6
  %conv6.338 = zext i8 %49 to i32
  %sub.339 = sub nsw i32 %conv.337, %conv6.338
  %50 = icmp slt i32 %sub.339, 0
  %neg.340 = sub nsw i32 0, %sub.339
  %51 = select i1 %50, i32 %neg.340, i32 %sub.339
  %add.341 = add nuw nsw i32 %51, %add.3.2
  %arrayidx.1.3 = getelementptr inbounds i8, i8* %add.ptr.2, i32 1
  %52 = load i8, i8* %arrayidx.1.3, align 1, !tbaa !6
  %conv.1.3 = zext i8 %52 to i32
  %arrayidx5.1.3 = getelementptr inbounds i8, i8* %add.ptr7.2, i32 1
  %53 = load i8, i8* %arrayidx5.1.3, align 1, !tbaa !6
  %conv6.1.3 = zext i8 %53 to i32
  %sub.1.3 = sub nsw i32 %conv.1.3, %conv6.1.3
  %54 = icmp slt i32 %sub.1.3, 0
  %neg.1.3 = sub nsw i32 0, %sub.1.3
  %55 = select i1 %54, i32 %neg.1.3, i32 %sub.1.3
  %add.1.3 = add nuw nsw i32 %55, %add.341
  %arrayidx.2.3 = getelementptr inbounds i8, i8* %add.ptr.2, i32 2
  %56 = load i8, i8* %arrayidx.2.3, align 1, !tbaa !6
  %conv.2.3 = zext i8 %56 to i32
  %arrayidx5.2.3 = getelementptr inbounds i8, i8* %add.ptr7.2, i32 2
  %57 = load i8, i8* %arrayidx5.2.3, align 1, !tbaa !6
  %conv6.2.3 = zext i8 %57 to i32
  %sub.2.3 = sub nsw i32 %conv.2.3, %conv6.2.3
  %58 = icmp slt i32 %sub.2.3, 0
  %neg.2.3 = sub nsw i32 0, %sub.2.3
  %59 = select i1 %58, i32 %neg.2.3, i32 %sub.2.3
  %add.2.3 = add nuw nsw i32 %59, %add.1.3
  %arrayidx.3.3 = getelementptr inbounds i8, i8* %add.ptr.2, i32 3
  %60 = load i8, i8* %arrayidx.3.3, align 1, !tbaa !6
  %conv.3.3 = zext i8 %60 to i32
  %arrayidx5.3.3 = getelementptr inbounds i8, i8* %add.ptr7.2, i32 3
  %61 = load i8, i8* %arrayidx5.3.3, align 1, !tbaa !6
  %conv6.3.3 = zext i8 %61 to i32
  %sub.3.3 = sub nsw i32 %conv.3.3, %conv6.3.3
  %62 = icmp slt i32 %sub.3.3, 0
  %neg.3.3 = sub nsw i32 0, %sub.3.3
  %63 = select i1 %62, i32 %neg.3.3, i32 %sub.3.3
  %add.3.3 = add nuw nsw i32 %63, %add.2.3
  %add.ptr.3 = getelementptr inbounds i8, i8* %add.ptr.2, i32 %i_stride_pix1
  %add.ptr7.3 = getelementptr inbounds i8, i8* %add.ptr7.2, i32 %i_stride_pix2
  %64 = load i8, i8* %add.ptr.3, align 1, !tbaa !6
  %conv.4 = zext i8 %64 to i32
  %65 = load i8, i8* %add.ptr7.3, align 1, !tbaa !6
  %conv6.4 = zext i8 %65 to i32
  %sub.4 = sub nsw i32 %conv.4, %conv6.4
  %66 = icmp slt i32 %sub.4, 0
  %neg.4 = sub nsw i32 0, %sub.4
  %67 = select i1 %66, i32 %neg.4, i32 %sub.4
  %add.4 = add nuw nsw i32 %67, %add.3.3
  %arrayidx.1.4 = getelementptr inbounds i8, i8* %add.ptr.3, i32 1
  %68 = load i8, i8* %arrayidx.1.4, align 1, !tbaa !6
  %conv.1.4 = zext i8 %68 to i32
  %arrayidx5.1.4 = getelementptr inbounds i8, i8* %add.ptr7.3, i32 1
  %69 = load i8, i8* %arrayidx5.1.4, align 1, !tbaa !6
  %conv6.1.4 = zext i8 %69 to i32
  %sub.1.4 = sub nsw i32 %conv.1.4, %conv6.1.4
  %70 = icmp slt i32 %sub.1.4, 0
  %neg.1.4 = sub nsw i32 0, %sub.1.4
  %71 = select i1 %70, i32 %neg.1.4, i32 %sub.1.4
  %add.1.4 = add nuw nsw i32 %71, %add.4
  %arrayidx.2.4 = getelementptr inbounds i8, i8* %add.ptr.3, i32 2
  %72 = load i8, i8* %arrayidx.2.4, align 1, !tbaa !6
  %conv.2.4 = zext i8 %72 to i32
  %arrayidx5.2.4 = getelementptr inbounds i8, i8* %add.ptr7.3, i32 2
  %73 = load i8, i8* %arrayidx5.2.4, align 1, !tbaa !6
  %conv6.2.4 = zext i8 %73 to i32
  %sub.2.4 = sub nsw i32 %conv.2.4, %conv6.2.4
  %74 = icmp slt i32 %sub.2.4, 0
  %neg.2.4 = sub nsw i32 0, %sub.2.4
  %75 = select i1 %74, i32 %neg.2.4, i32 %sub.2.4
  %add.2.4 = add nuw nsw i32 %75, %add.1.4
  %arrayidx.3.4 = getelementptr inbounds i8, i8* %add.ptr.3, i32 3
  %76 = load i8, i8* %arrayidx.3.4, align 1, !tbaa !6
  %conv.3.4 = zext i8 %76 to i32
  %arrayidx5.3.4 = getelementptr inbounds i8, i8* %add.ptr7.3, i32 3
  %77 = load i8, i8* %arrayidx5.3.4, align 1, !tbaa !6
  %conv6.3.4 = zext i8 %77 to i32
  %sub.3.4 = sub nsw i32 %conv.3.4, %conv6.3.4
  %78 = icmp slt i32 %sub.3.4, 0
  %neg.3.4 = sub nsw i32 0, %sub.3.4
  %79 = select i1 %78, i32 %neg.3.4, i32 %sub.3.4
  %add.3.4 = add nuw nsw i32 %79, %add.2.4
  %add.ptr.4 = getelementptr inbounds i8, i8* %add.ptr.3, i32 %i_stride_pix1
  %add.ptr7.4 = getelementptr inbounds i8, i8* %add.ptr7.3, i32 %i_stride_pix2
  %80 = load i8, i8* %add.ptr.4, align 1, !tbaa !6
  %conv.5 = zext i8 %80 to i32
  %81 = load i8, i8* %add.ptr7.4, align 1, !tbaa !6
  %conv6.5 = zext i8 %81 to i32
  %sub.5 = sub nsw i32 %conv.5, %conv6.5
  %82 = icmp slt i32 %sub.5, 0
  %neg.5 = sub nsw i32 0, %sub.5
  %83 = select i1 %82, i32 %neg.5, i32 %sub.5
  %add.5 = add nuw nsw i32 %83, %add.3.4
  %arrayidx.1.5 = getelementptr inbounds i8, i8* %add.ptr.4, i32 1
  %84 = load i8, i8* %arrayidx.1.5, align 1, !tbaa !6
  %conv.1.5 = zext i8 %84 to i32
  %arrayidx5.1.5 = getelementptr inbounds i8, i8* %add.ptr7.4, i32 1
  %85 = load i8, i8* %arrayidx5.1.5, align 1, !tbaa !6
  %conv6.1.5 = zext i8 %85 to i32
  %sub.1.5 = sub nsw i32 %conv.1.5, %conv6.1.5
  %86 = icmp slt i32 %sub.1.5, 0
  %neg.1.5 = sub nsw i32 0, %sub.1.5
  %87 = select i1 %86, i32 %neg.1.5, i32 %sub.1.5
  %add.1.5 = add nuw nsw i32 %87, %add.5
  %arrayidx.2.5 = getelementptr inbounds i8, i8* %add.ptr.4, i32 2
  %88 = load i8, i8* %arrayidx.2.5, align 1, !tbaa !6
  %conv.2.5 = zext i8 %88 to i32
  %arrayidx5.2.5 = getelementptr inbounds i8, i8* %add.ptr7.4, i32 2
  %89 = load i8, i8* %arrayidx5.2.5, align 1, !tbaa !6
  %conv6.2.5 = zext i8 %89 to i32
  %sub.2.5 = sub nsw i32 %conv.2.5, %conv6.2.5
  %90 = icmp slt i32 %sub.2.5, 0
  %neg.2.5 = sub nsw i32 0, %sub.2.5
  %91 = select i1 %90, i32 %neg.2.5, i32 %sub.2.5
  %add.2.5 = add nuw nsw i32 %91, %add.1.5
  %arrayidx.3.5 = getelementptr inbounds i8, i8* %add.ptr.4, i32 3
  %92 = load i8, i8* %arrayidx.3.5, align 1, !tbaa !6
  %conv.3.5 = zext i8 %92 to i32
  %arrayidx5.3.5 = getelementptr inbounds i8, i8* %add.ptr7.4, i32 3
  %93 = load i8, i8* %arrayidx5.3.5, align 1, !tbaa !6
  %conv6.3.5 = zext i8 %93 to i32
  %sub.3.5 = sub nsw i32 %conv.3.5, %conv6.3.5
  %94 = icmp slt i32 %sub.3.5, 0
  %neg.3.5 = sub nsw i32 0, %sub.3.5
  %95 = select i1 %94, i32 %neg.3.5, i32 %sub.3.5
  %add.3.5 = add nuw nsw i32 %95, %add.2.5
  %add.ptr.5 = getelementptr inbounds i8, i8* %add.ptr.4, i32 %i_stride_pix1
  %add.ptr7.5 = getelementptr inbounds i8, i8* %add.ptr7.4, i32 %i_stride_pix2
  %96 = load i8, i8* %add.ptr.5, align 1, !tbaa !6
  %conv.6 = zext i8 %96 to i32
  %97 = load i8, i8* %add.ptr7.5, align 1, !tbaa !6
  %conv6.6 = zext i8 %97 to i32
  %sub.6 = sub nsw i32 %conv.6, %conv6.6
  %98 = icmp slt i32 %sub.6, 0
  %neg.6 = sub nsw i32 0, %sub.6
  %99 = select i1 %98, i32 %neg.6, i32 %sub.6
  %add.6 = add nuw nsw i32 %99, %add.3.5
  %arrayidx.1.6 = getelementptr inbounds i8, i8* %add.ptr.5, i32 1
  %100 = load i8, i8* %arrayidx.1.6, align 1, !tbaa !6
  %conv.1.6 = zext i8 %100 to i32
  %arrayidx5.1.6 = getelementptr inbounds i8, i8* %add.ptr7.5, i32 1
  %101 = load i8, i8* %arrayidx5.1.6, align 1, !tbaa !6
  %conv6.1.6 = zext i8 %101 to i32
  %sub.1.6 = sub nsw i32 %conv.1.6, %conv6.1.6
  %102 = icmp slt i32 %sub.1.6, 0
  %neg.1.6 = sub nsw i32 0, %sub.1.6
  %103 = select i1 %102, i32 %neg.1.6, i32 %sub.1.6
  %add.1.6 = add nuw nsw i32 %103, %add.6
  %arrayidx.2.6 = getelementptr inbounds i8, i8* %add.ptr.5, i32 2
  %104 = load i8, i8* %arrayidx.2.6, align 1, !tbaa !6
  %conv.2.6 = zext i8 %104 to i32
  %arrayidx5.2.6 = getelementptr inbounds i8, i8* %add.ptr7.5, i32 2
  %105 = load i8, i8* %arrayidx5.2.6, align 1, !tbaa !6
  %conv6.2.6 = zext i8 %105 to i32
  %sub.2.6 = sub nsw i32 %conv.2.6, %conv6.2.6
  %106 = icmp slt i32 %sub.2.6, 0
  %neg.2.6 = sub nsw i32 0, %sub.2.6
  %107 = select i1 %106, i32 %neg.2.6, i32 %sub.2.6
  %add.2.6 = add nuw nsw i32 %107, %add.1.6
  %arrayidx.3.6 = getelementptr inbounds i8, i8* %add.ptr.5, i32 3
  %108 = load i8, i8* %arrayidx.3.6, align 1, !tbaa !6
  %conv.3.6 = zext i8 %108 to i32
  %arrayidx5.3.6 = getelementptr inbounds i8, i8* %add.ptr7.5, i32 3
  %109 = load i8, i8* %arrayidx5.3.6, align 1, !tbaa !6
  %conv6.3.6 = zext i8 %109 to i32
  %sub.3.6 = sub nsw i32 %conv.3.6, %conv6.3.6
  %110 = icmp slt i32 %sub.3.6, 0
  %neg.3.6 = sub nsw i32 0, %sub.3.6
  %111 = select i1 %110, i32 %neg.3.6, i32 %sub.3.6
  %add.3.6 = add nuw nsw i32 %111, %add.2.6
  %add.ptr.6 = getelementptr inbounds i8, i8* %add.ptr.5, i32 %i_stride_pix1
  %add.ptr7.6 = getelementptr inbounds i8, i8* %add.ptr7.5, i32 %i_stride_pix2
  %112 = load i8, i8* %add.ptr.6, align 1, !tbaa !6
  %conv.7 = zext i8 %112 to i32
  %113 = load i8, i8* %add.ptr7.6, align 1, !tbaa !6
  %conv6.7 = zext i8 %113 to i32
  %sub.7 = sub nsw i32 %conv.7, %conv6.7
  %114 = icmp slt i32 %sub.7, 0
  %neg.7 = sub nsw i32 0, %sub.7
  %115 = select i1 %114, i32 %neg.7, i32 %sub.7
  %add.7 = add nuw nsw i32 %115, %add.3.6
  %arrayidx.1.7 = getelementptr inbounds i8, i8* %add.ptr.6, i32 1
  %116 = load i8, i8* %arrayidx.1.7, align 1, !tbaa !6
  %conv.1.7 = zext i8 %116 to i32
  %arrayidx5.1.7 = getelementptr inbounds i8, i8* %add.ptr7.6, i32 1
  %117 = load i8, i8* %arrayidx5.1.7, align 1, !tbaa !6
  %conv6.1.7 = zext i8 %117 to i32
  %sub.1.7 = sub nsw i32 %conv.1.7, %conv6.1.7
  %118 = icmp slt i32 %sub.1.7, 0
  %neg.1.7 = sub nsw i32 0, %sub.1.7
  %119 = select i1 %118, i32 %neg.1.7, i32 %sub.1.7
  %add.1.7 = add nuw nsw i32 %119, %add.7
  %arrayidx.2.7 = getelementptr inbounds i8, i8* %add.ptr.6, i32 2
  %120 = load i8, i8* %arrayidx.2.7, align 1, !tbaa !6
  %conv.2.7 = zext i8 %120 to i32
  %arrayidx5.2.7 = getelementptr inbounds i8, i8* %add.ptr7.6, i32 2
  %121 = load i8, i8* %arrayidx5.2.7, align 1, !tbaa !6
  %conv6.2.7 = zext i8 %121 to i32
  %sub.2.7 = sub nsw i32 %conv.2.7, %conv6.2.7
  %122 = icmp slt i32 %sub.2.7, 0
  %neg.2.7 = sub nsw i32 0, %sub.2.7
  %123 = select i1 %122, i32 %neg.2.7, i32 %sub.2.7
  %add.2.7 = add nuw nsw i32 %123, %add.1.7
  %arrayidx.3.7 = getelementptr inbounds i8, i8* %add.ptr.6, i32 3
  %124 = load i8, i8* %arrayidx.3.7, align 1, !tbaa !6
  %conv.3.7 = zext i8 %124 to i32
  %arrayidx5.3.7 = getelementptr inbounds i8, i8* %add.ptr7.6, i32 3
  %125 = load i8, i8* %arrayidx5.3.7, align 1, !tbaa !6
  %conv6.3.7 = zext i8 %125 to i32
  %sub.3.7 = sub nsw i32 %conv.3.7, %conv6.3.7
  %126 = icmp slt i32 %sub.3.7, 0
  %neg.3.7 = sub nsw i32 0, %sub.3.7
  %127 = select i1 %126, i32 %neg.3.7, i32 %sub.3.7
  %add.3.7 = add nuw nsw i32 %127, %add.2.7
  ret i32 %add.3.7
}

; Function Attrs: norecurse nounwind readonly
define internal i32 @x264_pixel_sad_4x4(i8* nocapture readonly %pix1, i32 %i_stride_pix1, i8* nocapture readonly %pix2, i32 %i_stride_pix2) #3 {
entry:
  %0 = load i8, i8* %pix1, align 1, !tbaa !6
  %conv = zext i8 %0 to i32
  %1 = load i8, i8* %pix2, align 1, !tbaa !6
  %conv6 = zext i8 %1 to i32
  %sub = sub nsw i32 %conv, %conv6
  %2 = icmp slt i32 %sub, 0
  %neg = sub nsw i32 0, %sub
  %3 = select i1 %2, i32 %neg, i32 %sub
  %arrayidx.1 = getelementptr inbounds i8, i8* %pix1, i32 1
  %4 = load i8, i8* %arrayidx.1, align 1, !tbaa !6
  %conv.1 = zext i8 %4 to i32
  %arrayidx5.1 = getelementptr inbounds i8, i8* %pix2, i32 1
  %5 = load i8, i8* %arrayidx5.1, align 1, !tbaa !6
  %conv6.1 = zext i8 %5 to i32
  %sub.1 = sub nsw i32 %conv.1, %conv6.1
  %6 = icmp slt i32 %sub.1, 0
  %neg.1 = sub nsw i32 0, %sub.1
  %7 = select i1 %6, i32 %neg.1, i32 %sub.1
  %add.1 = add nuw nsw i32 %7, %3
  %arrayidx.2 = getelementptr inbounds i8, i8* %pix1, i32 2
  %8 = load i8, i8* %arrayidx.2, align 1, !tbaa !6
  %conv.2 = zext i8 %8 to i32
  %arrayidx5.2 = getelementptr inbounds i8, i8* %pix2, i32 2
  %9 = load i8, i8* %arrayidx5.2, align 1, !tbaa !6
  %conv6.2 = zext i8 %9 to i32
  %sub.2 = sub nsw i32 %conv.2, %conv6.2
  %10 = icmp slt i32 %sub.2, 0
  %neg.2 = sub nsw i32 0, %sub.2
  %11 = select i1 %10, i32 %neg.2, i32 %sub.2
  %add.2 = add nuw nsw i32 %11, %add.1
  %arrayidx.3 = getelementptr inbounds i8, i8* %pix1, i32 3
  %12 = load i8, i8* %arrayidx.3, align 1, !tbaa !6
  %conv.3 = zext i8 %12 to i32
  %arrayidx5.3 = getelementptr inbounds i8, i8* %pix2, i32 3
  %13 = load i8, i8* %arrayidx5.3, align 1, !tbaa !6
  %conv6.3 = zext i8 %13 to i32
  %sub.3 = sub nsw i32 %conv.3, %conv6.3
  %14 = icmp slt i32 %sub.3, 0
  %neg.3 = sub nsw i32 0, %sub.3
  %15 = select i1 %14, i32 %neg.3, i32 %sub.3
  %add.3 = add nuw nsw i32 %15, %add.2
  %add.ptr = getelementptr inbounds i8, i8* %pix1, i32 %i_stride_pix1
  %add.ptr7 = getelementptr inbounds i8, i8* %pix2, i32 %i_stride_pix2
  %16 = load i8, i8* %add.ptr, align 1, !tbaa !6
  %conv.127 = zext i8 %16 to i32
  %17 = load i8, i8* %add.ptr7, align 1, !tbaa !6
  %conv6.128 = zext i8 %17 to i32
  %sub.129 = sub nsw i32 %conv.127, %conv6.128
  %18 = icmp slt i32 %sub.129, 0
  %neg.130 = sub nsw i32 0, %sub.129
  %19 = select i1 %18, i32 %neg.130, i32 %sub.129
  %add.131 = add nuw nsw i32 %19, %add.3
  %arrayidx.1.1 = getelementptr inbounds i8, i8* %add.ptr, i32 1
  %20 = load i8, i8* %arrayidx.1.1, align 1, !tbaa !6
  %conv.1.1 = zext i8 %20 to i32
  %arrayidx5.1.1 = getelementptr inbounds i8, i8* %add.ptr7, i32 1
  %21 = load i8, i8* %arrayidx5.1.1, align 1, !tbaa !6
  %conv6.1.1 = zext i8 %21 to i32
  %sub.1.1 = sub nsw i32 %conv.1.1, %conv6.1.1
  %22 = icmp slt i32 %sub.1.1, 0
  %neg.1.1 = sub nsw i32 0, %sub.1.1
  %23 = select i1 %22, i32 %neg.1.1, i32 %sub.1.1
  %add.1.1 = add nuw nsw i32 %23, %add.131
  %arrayidx.2.1 = getelementptr inbounds i8, i8* %add.ptr, i32 2
  %24 = load i8, i8* %arrayidx.2.1, align 1, !tbaa !6
  %conv.2.1 = zext i8 %24 to i32
  %arrayidx5.2.1 = getelementptr inbounds i8, i8* %add.ptr7, i32 2
  %25 = load i8, i8* %arrayidx5.2.1, align 1, !tbaa !6
  %conv6.2.1 = zext i8 %25 to i32
  %sub.2.1 = sub nsw i32 %conv.2.1, %conv6.2.1
  %26 = icmp slt i32 %sub.2.1, 0
  %neg.2.1 = sub nsw i32 0, %sub.2.1
  %27 = select i1 %26, i32 %neg.2.1, i32 %sub.2.1
  %add.2.1 = add nuw nsw i32 %27, %add.1.1
  %arrayidx.3.1 = getelementptr inbounds i8, i8* %add.ptr, i32 3
  %28 = load i8, i8* %arrayidx.3.1, align 1, !tbaa !6
  %conv.3.1 = zext i8 %28 to i32
  %arrayidx5.3.1 = getelementptr inbounds i8, i8* %add.ptr7, i32 3
  %29 = load i8, i8* %arrayidx5.3.1, align 1, !tbaa !6
  %conv6.3.1 = zext i8 %29 to i32
  %sub.3.1 = sub nsw i32 %conv.3.1, %conv6.3.1
  %30 = icmp slt i32 %sub.3.1, 0
  %neg.3.1 = sub nsw i32 0, %sub.3.1
  %31 = select i1 %30, i32 %neg.3.1, i32 %sub.3.1
  %add.3.1 = add nuw nsw i32 %31, %add.2.1
  %add.ptr.1 = getelementptr inbounds i8, i8* %add.ptr, i32 %i_stride_pix1
  %add.ptr7.1 = getelementptr inbounds i8, i8* %add.ptr7, i32 %i_stride_pix2
  %32 = load i8, i8* %add.ptr.1, align 1, !tbaa !6
  %conv.232 = zext i8 %32 to i32
  %33 = load i8, i8* %add.ptr7.1, align 1, !tbaa !6
  %conv6.233 = zext i8 %33 to i32
  %sub.234 = sub nsw i32 %conv.232, %conv6.233
  %34 = icmp slt i32 %sub.234, 0
  %neg.235 = sub nsw i32 0, %sub.234
  %35 = select i1 %34, i32 %neg.235, i32 %sub.234
  %add.236 = add nuw nsw i32 %35, %add.3.1
  %arrayidx.1.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 1
  %36 = load i8, i8* %arrayidx.1.2, align 1, !tbaa !6
  %conv.1.2 = zext i8 %36 to i32
  %arrayidx5.1.2 = getelementptr inbounds i8, i8* %add.ptr7.1, i32 1
  %37 = load i8, i8* %arrayidx5.1.2, align 1, !tbaa !6
  %conv6.1.2 = zext i8 %37 to i32
  %sub.1.2 = sub nsw i32 %conv.1.2, %conv6.1.2
  %38 = icmp slt i32 %sub.1.2, 0
  %neg.1.2 = sub nsw i32 0, %sub.1.2
  %39 = select i1 %38, i32 %neg.1.2, i32 %sub.1.2
  %add.1.2 = add nuw nsw i32 %39, %add.236
  %arrayidx.2.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 2
  %40 = load i8, i8* %arrayidx.2.2, align 1, !tbaa !6
  %conv.2.2 = zext i8 %40 to i32
  %arrayidx5.2.2 = getelementptr inbounds i8, i8* %add.ptr7.1, i32 2
  %41 = load i8, i8* %arrayidx5.2.2, align 1, !tbaa !6
  %conv6.2.2 = zext i8 %41 to i32
  %sub.2.2 = sub nsw i32 %conv.2.2, %conv6.2.2
  %42 = icmp slt i32 %sub.2.2, 0
  %neg.2.2 = sub nsw i32 0, %sub.2.2
  %43 = select i1 %42, i32 %neg.2.2, i32 %sub.2.2
  %add.2.2 = add nuw nsw i32 %43, %add.1.2
  %arrayidx.3.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 3
  %44 = load i8, i8* %arrayidx.3.2, align 1, !tbaa !6
  %conv.3.2 = zext i8 %44 to i32
  %arrayidx5.3.2 = getelementptr inbounds i8, i8* %add.ptr7.1, i32 3
  %45 = load i8, i8* %arrayidx5.3.2, align 1, !tbaa !6
  %conv6.3.2 = zext i8 %45 to i32
  %sub.3.2 = sub nsw i32 %conv.3.2, %conv6.3.2
  %46 = icmp slt i32 %sub.3.2, 0
  %neg.3.2 = sub nsw i32 0, %sub.3.2
  %47 = select i1 %46, i32 %neg.3.2, i32 %sub.3.2
  %add.3.2 = add nuw nsw i32 %47, %add.2.2
  %add.ptr.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 %i_stride_pix1
  %add.ptr7.2 = getelementptr inbounds i8, i8* %add.ptr7.1, i32 %i_stride_pix2
  %48 = load i8, i8* %add.ptr.2, align 1, !tbaa !6
  %conv.337 = zext i8 %48 to i32
  %49 = load i8, i8* %add.ptr7.2, align 1, !tbaa !6
  %conv6.338 = zext i8 %49 to i32
  %sub.339 = sub nsw i32 %conv.337, %conv6.338
  %50 = icmp slt i32 %sub.339, 0
  %neg.340 = sub nsw i32 0, %sub.339
  %51 = select i1 %50, i32 %neg.340, i32 %sub.339
  %add.341 = add nuw nsw i32 %51, %add.3.2
  %arrayidx.1.3 = getelementptr inbounds i8, i8* %add.ptr.2, i32 1
  %52 = load i8, i8* %arrayidx.1.3, align 1, !tbaa !6
  %conv.1.3 = zext i8 %52 to i32
  %arrayidx5.1.3 = getelementptr inbounds i8, i8* %add.ptr7.2, i32 1
  %53 = load i8, i8* %arrayidx5.1.3, align 1, !tbaa !6
  %conv6.1.3 = zext i8 %53 to i32
  %sub.1.3 = sub nsw i32 %conv.1.3, %conv6.1.3
  %54 = icmp slt i32 %sub.1.3, 0
  %neg.1.3 = sub nsw i32 0, %sub.1.3
  %55 = select i1 %54, i32 %neg.1.3, i32 %sub.1.3
  %add.1.3 = add nuw nsw i32 %55, %add.341
  %arrayidx.2.3 = getelementptr inbounds i8, i8* %add.ptr.2, i32 2
  %56 = load i8, i8* %arrayidx.2.3, align 1, !tbaa !6
  %conv.2.3 = zext i8 %56 to i32
  %arrayidx5.2.3 = getelementptr inbounds i8, i8* %add.ptr7.2, i32 2
  %57 = load i8, i8* %arrayidx5.2.3, align 1, !tbaa !6
  %conv6.2.3 = zext i8 %57 to i32
  %sub.2.3 = sub nsw i32 %conv.2.3, %conv6.2.3
  %58 = icmp slt i32 %sub.2.3, 0
  %neg.2.3 = sub nsw i32 0, %sub.2.3
  %59 = select i1 %58, i32 %neg.2.3, i32 %sub.2.3
  %add.2.3 = add nuw nsw i32 %59, %add.1.3
  %arrayidx.3.3 = getelementptr inbounds i8, i8* %add.ptr.2, i32 3
  %60 = load i8, i8* %arrayidx.3.3, align 1, !tbaa !6
  %conv.3.3 = zext i8 %60 to i32
  %arrayidx5.3.3 = getelementptr inbounds i8, i8* %add.ptr7.2, i32 3
  %61 = load i8, i8* %arrayidx5.3.3, align 1, !tbaa !6
  %conv6.3.3 = zext i8 %61 to i32
  %sub.3.3 = sub nsw i32 %conv.3.3, %conv6.3.3
  %62 = icmp slt i32 %sub.3.3, 0
  %neg.3.3 = sub nsw i32 0, %sub.3.3
  %63 = select i1 %62, i32 %neg.3.3, i32 %sub.3.3
  %add.3.3 = add nuw nsw i32 %63, %add.2.3
  ret i32 %add.3.3
}

; Function Attrs: norecurse nounwind readonly
define internal i32 @x264_pixel_sad_4x16(i8* nocapture readonly %pix1, i32 %i_stride_pix1, i8* nocapture readonly %pix2, i32 %i_stride_pix2) #3 {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader, %entry
  %y.026 = phi i32 [ 0, %entry ], [ %inc9, %for.cond1.preheader ]
  %i_sum.025 = phi i32 [ 0, %entry ], [ %add.3, %for.cond1.preheader ]
  %pix1.addr.024 = phi i8* [ %pix1, %entry ], [ %add.ptr, %for.cond1.preheader ]
  %pix2.addr.023 = phi i8* [ %pix2, %entry ], [ %add.ptr7, %for.cond1.preheader ]
  %0 = load i8, i8* %pix1.addr.024, align 1, !tbaa !6
  %conv = zext i8 %0 to i32
  %1 = load i8, i8* %pix2.addr.023, align 1, !tbaa !6
  %conv6 = zext i8 %1 to i32
  %sub = sub nsw i32 %conv, %conv6
  %2 = icmp slt i32 %sub, 0
  %neg = sub nsw i32 0, %sub
  %3 = select i1 %2, i32 %neg, i32 %sub
  %add = add nsw i32 %3, %i_sum.025
  %arrayidx.1 = getelementptr inbounds i8, i8* %pix1.addr.024, i32 1
  %4 = load i8, i8* %arrayidx.1, align 1, !tbaa !6
  %conv.1 = zext i8 %4 to i32
  %arrayidx5.1 = getelementptr inbounds i8, i8* %pix2.addr.023, i32 1
  %5 = load i8, i8* %arrayidx5.1, align 1, !tbaa !6
  %conv6.1 = zext i8 %5 to i32
  %sub.1 = sub nsw i32 %conv.1, %conv6.1
  %6 = icmp slt i32 %sub.1, 0
  %neg.1 = sub nsw i32 0, %sub.1
  %7 = select i1 %6, i32 %neg.1, i32 %sub.1
  %add.1 = add nsw i32 %7, %add
  %arrayidx.2 = getelementptr inbounds i8, i8* %pix1.addr.024, i32 2
  %8 = load i8, i8* %arrayidx.2, align 1, !tbaa !6
  %conv.2 = zext i8 %8 to i32
  %arrayidx5.2 = getelementptr inbounds i8, i8* %pix2.addr.023, i32 2
  %9 = load i8, i8* %arrayidx5.2, align 1, !tbaa !6
  %conv6.2 = zext i8 %9 to i32
  %sub.2 = sub nsw i32 %conv.2, %conv6.2
  %10 = icmp slt i32 %sub.2, 0
  %neg.2 = sub nsw i32 0, %sub.2
  %11 = select i1 %10, i32 %neg.2, i32 %sub.2
  %add.2 = add nsw i32 %11, %add.1
  %arrayidx.3 = getelementptr inbounds i8, i8* %pix1.addr.024, i32 3
  %12 = load i8, i8* %arrayidx.3, align 1, !tbaa !6
  %conv.3 = zext i8 %12 to i32
  %arrayidx5.3 = getelementptr inbounds i8, i8* %pix2.addr.023, i32 3
  %13 = load i8, i8* %arrayidx5.3, align 1, !tbaa !6
  %conv6.3 = zext i8 %13 to i32
  %sub.3 = sub nsw i32 %conv.3, %conv6.3
  %14 = icmp slt i32 %sub.3, 0
  %neg.3 = sub nsw i32 0, %sub.3
  %15 = select i1 %14, i32 %neg.3, i32 %sub.3
  %add.3 = add nsw i32 %15, %add.2
  %add.ptr = getelementptr inbounds i8, i8* %pix1.addr.024, i32 %i_stride_pix1
  %add.ptr7 = getelementptr inbounds i8, i8* %pix2.addr.023, i32 %i_stride_pix2
  %inc9 = add nuw nsw i32 %y.026, 1
  %exitcond = icmp eq i32 %inc9, 16
  br i1 %exitcond, label %for.cond.cleanup, label %for.cond1.preheader

for.cond.cleanup:                                 ; preds = %for.cond1.preheader
  ret i32 %add.3
}

; Function Attrs: nofree norecurse nounwind
define internal void @x264_pixel_sad_x3_16x16(i8* nocapture readonly %fenc, i8* nocapture readonly %pix0, i8* nocapture readonly %pix1, i8* nocapture readonly %pix2, i32 %i_stride, i32* nocapture %scores) #2 {
entry:
  %call = tail call i32 @x264_pixel_sad_16x16(i8* %fenc, i32 16, i8* %pix0, i32 %i_stride)
  store i32 %call, i32* %scores, align 4, !tbaa !13
  %call1 = tail call i32 @x264_pixel_sad_16x16(i8* %fenc, i32 16, i8* %pix1, i32 %i_stride)
  %arrayidx2 = getelementptr inbounds i32, i32* %scores, i32 1
  store i32 %call1, i32* %arrayidx2, align 4, !tbaa !13
  %call3 = tail call i32 @x264_pixel_sad_16x16(i8* %fenc, i32 16, i8* %pix2, i32 %i_stride)
  %arrayidx4 = getelementptr inbounds i32, i32* %scores, i32 2
  store i32 %call3, i32* %arrayidx4, align 4, !tbaa !13
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @x264_pixel_sad_x3_16x8(i8* nocapture readonly %fenc, i8* nocapture readonly %pix0, i8* nocapture readonly %pix1, i8* nocapture readonly %pix2, i32 %i_stride, i32* nocapture %scores) #2 {
entry:
  %call = tail call i32 @x264_pixel_sad_16x8(i8* %fenc, i32 16, i8* %pix0, i32 %i_stride)
  store i32 %call, i32* %scores, align 4, !tbaa !13
  %call1 = tail call i32 @x264_pixel_sad_16x8(i8* %fenc, i32 16, i8* %pix1, i32 %i_stride)
  %arrayidx2 = getelementptr inbounds i32, i32* %scores, i32 1
  store i32 %call1, i32* %arrayidx2, align 4, !tbaa !13
  %call3 = tail call i32 @x264_pixel_sad_16x8(i8* %fenc, i32 16, i8* %pix2, i32 %i_stride)
  %arrayidx4 = getelementptr inbounds i32, i32* %scores, i32 2
  store i32 %call3, i32* %arrayidx4, align 4, !tbaa !13
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @x264_pixel_sad_x3_8x16(i8* nocapture readonly %fenc, i8* nocapture readonly %pix0, i8* nocapture readonly %pix1, i8* nocapture readonly %pix2, i32 %i_stride, i32* nocapture %scores) #2 {
entry:
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.cond1.preheader.i, %entry
  %y.026.i = phi i32 [ 0, %entry ], [ %inc9.i, %for.cond1.preheader.i ]
  %i_sum.025.i = phi i32 [ 0, %entry ], [ %add.7.i, %for.cond1.preheader.i ]
  %pix1.addr.024.i = phi i8* [ %fenc, %entry ], [ %add.ptr.i, %for.cond1.preheader.i ]
  %pix2.addr.023.i = phi i8* [ %pix0, %entry ], [ %add.ptr7.i, %for.cond1.preheader.i ]
  %0 = load i8, i8* %pix1.addr.024.i, align 1, !tbaa !6
  %conv.i = zext i8 %0 to i32
  %1 = load i8, i8* %pix2.addr.023.i, align 1, !tbaa !6
  %conv6.i = zext i8 %1 to i32
  %sub.i = sub nsw i32 %conv.i, %conv6.i
  %2 = icmp slt i32 %sub.i, 0
  %neg.i = sub nsw i32 0, %sub.i
  %3 = select i1 %2, i32 %neg.i, i32 %sub.i
  %add.i = add nsw i32 %3, %i_sum.025.i
  %arrayidx.1.i = getelementptr inbounds i8, i8* %pix1.addr.024.i, i32 1
  %4 = load i8, i8* %arrayidx.1.i, align 1, !tbaa !6
  %conv.1.i = zext i8 %4 to i32
  %arrayidx5.1.i = getelementptr inbounds i8, i8* %pix2.addr.023.i, i32 1
  %5 = load i8, i8* %arrayidx5.1.i, align 1, !tbaa !6
  %conv6.1.i = zext i8 %5 to i32
  %sub.1.i = sub nsw i32 %conv.1.i, %conv6.1.i
  %6 = icmp slt i32 %sub.1.i, 0
  %neg.1.i = sub nsw i32 0, %sub.1.i
  %7 = select i1 %6, i32 %neg.1.i, i32 %sub.1.i
  %add.1.i = add nsw i32 %add.i, %7
  %arrayidx.2.i = getelementptr inbounds i8, i8* %pix1.addr.024.i, i32 2
  %8 = load i8, i8* %arrayidx.2.i, align 1, !tbaa !6
  %conv.2.i = zext i8 %8 to i32
  %arrayidx5.2.i = getelementptr inbounds i8, i8* %pix2.addr.023.i, i32 2
  %9 = load i8, i8* %arrayidx5.2.i, align 1, !tbaa !6
  %conv6.2.i = zext i8 %9 to i32
  %sub.2.i = sub nsw i32 %conv.2.i, %conv6.2.i
  %10 = icmp slt i32 %sub.2.i, 0
  %neg.2.i = sub nsw i32 0, %sub.2.i
  %11 = select i1 %10, i32 %neg.2.i, i32 %sub.2.i
  %add.2.i = add nsw i32 %add.1.i, %11
  %arrayidx.3.i = getelementptr inbounds i8, i8* %pix1.addr.024.i, i32 3
  %12 = load i8, i8* %arrayidx.3.i, align 1, !tbaa !6
  %conv.3.i = zext i8 %12 to i32
  %arrayidx5.3.i = getelementptr inbounds i8, i8* %pix2.addr.023.i, i32 3
  %13 = load i8, i8* %arrayidx5.3.i, align 1, !tbaa !6
  %conv6.3.i = zext i8 %13 to i32
  %sub.3.i = sub nsw i32 %conv.3.i, %conv6.3.i
  %14 = icmp slt i32 %sub.3.i, 0
  %neg.3.i = sub nsw i32 0, %sub.3.i
  %15 = select i1 %14, i32 %neg.3.i, i32 %sub.3.i
  %add.3.i = add nsw i32 %add.2.i, %15
  %arrayidx.4.i = getelementptr inbounds i8, i8* %pix1.addr.024.i, i32 4
  %16 = load i8, i8* %arrayidx.4.i, align 1, !tbaa !6
  %conv.4.i = zext i8 %16 to i32
  %arrayidx5.4.i = getelementptr inbounds i8, i8* %pix2.addr.023.i, i32 4
  %17 = load i8, i8* %arrayidx5.4.i, align 1, !tbaa !6
  %conv6.4.i = zext i8 %17 to i32
  %sub.4.i = sub nsw i32 %conv.4.i, %conv6.4.i
  %18 = icmp slt i32 %sub.4.i, 0
  %neg.4.i = sub nsw i32 0, %sub.4.i
  %19 = select i1 %18, i32 %neg.4.i, i32 %sub.4.i
  %add.4.i = add nsw i32 %add.3.i, %19
  %arrayidx.5.i = getelementptr inbounds i8, i8* %pix1.addr.024.i, i32 5
  %20 = load i8, i8* %arrayidx.5.i, align 1, !tbaa !6
  %conv.5.i = zext i8 %20 to i32
  %arrayidx5.5.i = getelementptr inbounds i8, i8* %pix2.addr.023.i, i32 5
  %21 = load i8, i8* %arrayidx5.5.i, align 1, !tbaa !6
  %conv6.5.i = zext i8 %21 to i32
  %sub.5.i = sub nsw i32 %conv.5.i, %conv6.5.i
  %22 = icmp slt i32 %sub.5.i, 0
  %neg.5.i = sub nsw i32 0, %sub.5.i
  %23 = select i1 %22, i32 %neg.5.i, i32 %sub.5.i
  %add.5.i = add nsw i32 %add.4.i, %23
  %arrayidx.6.i = getelementptr inbounds i8, i8* %pix1.addr.024.i, i32 6
  %24 = load i8, i8* %arrayidx.6.i, align 1, !tbaa !6
  %conv.6.i = zext i8 %24 to i32
  %arrayidx5.6.i = getelementptr inbounds i8, i8* %pix2.addr.023.i, i32 6
  %25 = load i8, i8* %arrayidx5.6.i, align 1, !tbaa !6
  %conv6.6.i = zext i8 %25 to i32
  %sub.6.i = sub nsw i32 %conv.6.i, %conv6.6.i
  %26 = icmp slt i32 %sub.6.i, 0
  %neg.6.i = sub nsw i32 0, %sub.6.i
  %27 = select i1 %26, i32 %neg.6.i, i32 %sub.6.i
  %add.6.i = add nsw i32 %add.5.i, %27
  %arrayidx.7.i = getelementptr inbounds i8, i8* %pix1.addr.024.i, i32 7
  %28 = load i8, i8* %arrayidx.7.i, align 1, !tbaa !6
  %conv.7.i = zext i8 %28 to i32
  %arrayidx5.7.i = getelementptr inbounds i8, i8* %pix2.addr.023.i, i32 7
  %29 = load i8, i8* %arrayidx5.7.i, align 1, !tbaa !6
  %conv6.7.i = zext i8 %29 to i32
  %sub.7.i = sub nsw i32 %conv.7.i, %conv6.7.i
  %30 = icmp slt i32 %sub.7.i, 0
  %neg.7.i = sub nsw i32 0, %sub.7.i
  %31 = select i1 %30, i32 %neg.7.i, i32 %sub.7.i
  %add.7.i = add nsw i32 %add.6.i, %31
  %add.ptr.i = getelementptr inbounds i8, i8* %pix1.addr.024.i, i32 16
  %add.ptr7.i = getelementptr inbounds i8, i8* %pix2.addr.023.i, i32 %i_stride
  %inc9.i = add nuw nsw i32 %y.026.i, 1
  %exitcond.i = icmp eq i32 %inc9.i, 16
  br i1 %exitcond.i, label %x264_pixel_sad_8x16.exit, label %for.cond1.preheader.i

x264_pixel_sad_8x16.exit:                         ; preds = %for.cond1.preheader.i
  store i32 %add.7.i, i32* %scores, align 4, !tbaa !13
  br label %for.cond1.preheader.i137

for.cond1.preheader.i137:                         ; preds = %for.cond1.preheader.i137, %x264_pixel_sad_8x16.exit
  %y.026.i75 = phi i32 [ 0, %x264_pixel_sad_8x16.exit ], [ %inc9.i135, %for.cond1.preheader.i137 ]
  %i_sum.025.i76 = phi i32 [ 0, %x264_pixel_sad_8x16.exit ], [ %add.7.i132, %for.cond1.preheader.i137 ]
  %pix1.addr.024.i77 = phi i8* [ %fenc, %x264_pixel_sad_8x16.exit ], [ %add.ptr.i133, %for.cond1.preheader.i137 ]
  %pix2.addr.023.i78 = phi i8* [ %pix1, %x264_pixel_sad_8x16.exit ], [ %add.ptr7.i134, %for.cond1.preheader.i137 ]
  %32 = load i8, i8* %pix1.addr.024.i77, align 1, !tbaa !6
  %conv.i79 = zext i8 %32 to i32
  %33 = load i8, i8* %pix2.addr.023.i78, align 1, !tbaa !6
  %conv6.i80 = zext i8 %33 to i32
  %sub.i81 = sub nsw i32 %conv.i79, %conv6.i80
  %34 = icmp slt i32 %sub.i81, 0
  %neg.i82 = sub nsw i32 0, %sub.i81
  %35 = select i1 %34, i32 %neg.i82, i32 %sub.i81
  %add.i83 = add nsw i32 %35, %i_sum.025.i76
  %arrayidx.1.i84 = getelementptr inbounds i8, i8* %pix1.addr.024.i77, i32 1
  %36 = load i8, i8* %arrayidx.1.i84, align 1, !tbaa !6
  %conv.1.i85 = zext i8 %36 to i32
  %arrayidx5.1.i86 = getelementptr inbounds i8, i8* %pix2.addr.023.i78, i32 1
  %37 = load i8, i8* %arrayidx5.1.i86, align 1, !tbaa !6
  %conv6.1.i87 = zext i8 %37 to i32
  %sub.1.i88 = sub nsw i32 %conv.1.i85, %conv6.1.i87
  %38 = icmp slt i32 %sub.1.i88, 0
  %neg.1.i89 = sub nsw i32 0, %sub.1.i88
  %39 = select i1 %38, i32 %neg.1.i89, i32 %sub.1.i88
  %add.1.i90 = add nsw i32 %add.i83, %39
  %arrayidx.2.i91 = getelementptr inbounds i8, i8* %pix1.addr.024.i77, i32 2
  %40 = load i8, i8* %arrayidx.2.i91, align 1, !tbaa !6
  %conv.2.i92 = zext i8 %40 to i32
  %arrayidx5.2.i93 = getelementptr inbounds i8, i8* %pix2.addr.023.i78, i32 2
  %41 = load i8, i8* %arrayidx5.2.i93, align 1, !tbaa !6
  %conv6.2.i94 = zext i8 %41 to i32
  %sub.2.i95 = sub nsw i32 %conv.2.i92, %conv6.2.i94
  %42 = icmp slt i32 %sub.2.i95, 0
  %neg.2.i96 = sub nsw i32 0, %sub.2.i95
  %43 = select i1 %42, i32 %neg.2.i96, i32 %sub.2.i95
  %add.2.i97 = add nsw i32 %add.1.i90, %43
  %arrayidx.3.i98 = getelementptr inbounds i8, i8* %pix1.addr.024.i77, i32 3
  %44 = load i8, i8* %arrayidx.3.i98, align 1, !tbaa !6
  %conv.3.i99 = zext i8 %44 to i32
  %arrayidx5.3.i100 = getelementptr inbounds i8, i8* %pix2.addr.023.i78, i32 3
  %45 = load i8, i8* %arrayidx5.3.i100, align 1, !tbaa !6
  %conv6.3.i101 = zext i8 %45 to i32
  %sub.3.i102 = sub nsw i32 %conv.3.i99, %conv6.3.i101
  %46 = icmp slt i32 %sub.3.i102, 0
  %neg.3.i103 = sub nsw i32 0, %sub.3.i102
  %47 = select i1 %46, i32 %neg.3.i103, i32 %sub.3.i102
  %add.3.i104 = add nsw i32 %add.2.i97, %47
  %arrayidx.4.i105 = getelementptr inbounds i8, i8* %pix1.addr.024.i77, i32 4
  %48 = load i8, i8* %arrayidx.4.i105, align 1, !tbaa !6
  %conv.4.i106 = zext i8 %48 to i32
  %arrayidx5.4.i107 = getelementptr inbounds i8, i8* %pix2.addr.023.i78, i32 4
  %49 = load i8, i8* %arrayidx5.4.i107, align 1, !tbaa !6
  %conv6.4.i108 = zext i8 %49 to i32
  %sub.4.i109 = sub nsw i32 %conv.4.i106, %conv6.4.i108
  %50 = icmp slt i32 %sub.4.i109, 0
  %neg.4.i110 = sub nsw i32 0, %sub.4.i109
  %51 = select i1 %50, i32 %neg.4.i110, i32 %sub.4.i109
  %add.4.i111 = add nsw i32 %add.3.i104, %51
  %arrayidx.5.i112 = getelementptr inbounds i8, i8* %pix1.addr.024.i77, i32 5
  %52 = load i8, i8* %arrayidx.5.i112, align 1, !tbaa !6
  %conv.5.i113 = zext i8 %52 to i32
  %arrayidx5.5.i114 = getelementptr inbounds i8, i8* %pix2.addr.023.i78, i32 5
  %53 = load i8, i8* %arrayidx5.5.i114, align 1, !tbaa !6
  %conv6.5.i115 = zext i8 %53 to i32
  %sub.5.i116 = sub nsw i32 %conv.5.i113, %conv6.5.i115
  %54 = icmp slt i32 %sub.5.i116, 0
  %neg.5.i117 = sub nsw i32 0, %sub.5.i116
  %55 = select i1 %54, i32 %neg.5.i117, i32 %sub.5.i116
  %add.5.i118 = add nsw i32 %add.4.i111, %55
  %arrayidx.6.i119 = getelementptr inbounds i8, i8* %pix1.addr.024.i77, i32 6
  %56 = load i8, i8* %arrayidx.6.i119, align 1, !tbaa !6
  %conv.6.i120 = zext i8 %56 to i32
  %arrayidx5.6.i121 = getelementptr inbounds i8, i8* %pix2.addr.023.i78, i32 6
  %57 = load i8, i8* %arrayidx5.6.i121, align 1, !tbaa !6
  %conv6.6.i122 = zext i8 %57 to i32
  %sub.6.i123 = sub nsw i32 %conv.6.i120, %conv6.6.i122
  %58 = icmp slt i32 %sub.6.i123, 0
  %neg.6.i124 = sub nsw i32 0, %sub.6.i123
  %59 = select i1 %58, i32 %neg.6.i124, i32 %sub.6.i123
  %add.6.i125 = add nsw i32 %add.5.i118, %59
  %arrayidx.7.i126 = getelementptr inbounds i8, i8* %pix1.addr.024.i77, i32 7
  %60 = load i8, i8* %arrayidx.7.i126, align 1, !tbaa !6
  %conv.7.i127 = zext i8 %60 to i32
  %arrayidx5.7.i128 = getelementptr inbounds i8, i8* %pix2.addr.023.i78, i32 7
  %61 = load i8, i8* %arrayidx5.7.i128, align 1, !tbaa !6
  %conv6.7.i129 = zext i8 %61 to i32
  %sub.7.i130 = sub nsw i32 %conv.7.i127, %conv6.7.i129
  %62 = icmp slt i32 %sub.7.i130, 0
  %neg.7.i131 = sub nsw i32 0, %sub.7.i130
  %63 = select i1 %62, i32 %neg.7.i131, i32 %sub.7.i130
  %add.7.i132 = add nsw i32 %add.6.i125, %63
  %add.ptr.i133 = getelementptr inbounds i8, i8* %pix1.addr.024.i77, i32 16
  %add.ptr7.i134 = getelementptr inbounds i8, i8* %pix2.addr.023.i78, i32 %i_stride
  %inc9.i135 = add nuw nsw i32 %y.026.i75, 1
  %exitcond.i136 = icmp eq i32 %inc9.i135, 16
  br i1 %exitcond.i136, label %x264_pixel_sad_8x16.exit138, label %for.cond1.preheader.i137

x264_pixel_sad_8x16.exit138:                      ; preds = %for.cond1.preheader.i137
  %arrayidx2 = getelementptr inbounds i32, i32* %scores, i32 1
  store i32 %add.7.i132, i32* %arrayidx2, align 4, !tbaa !13
  br label %for.cond1.preheader.i73

for.cond1.preheader.i73:                          ; preds = %for.cond1.preheader.i73, %x264_pixel_sad_8x16.exit138
  %y.026.i11 = phi i32 [ 0, %x264_pixel_sad_8x16.exit138 ], [ %inc9.i71, %for.cond1.preheader.i73 ]
  %i_sum.025.i12 = phi i32 [ 0, %x264_pixel_sad_8x16.exit138 ], [ %add.7.i68, %for.cond1.preheader.i73 ]
  %pix1.addr.024.i13 = phi i8* [ %fenc, %x264_pixel_sad_8x16.exit138 ], [ %add.ptr.i69, %for.cond1.preheader.i73 ]
  %pix2.addr.023.i14 = phi i8* [ %pix2, %x264_pixel_sad_8x16.exit138 ], [ %add.ptr7.i70, %for.cond1.preheader.i73 ]
  %64 = load i8, i8* %pix1.addr.024.i13, align 1, !tbaa !6
  %conv.i15 = zext i8 %64 to i32
  %65 = load i8, i8* %pix2.addr.023.i14, align 1, !tbaa !6
  %conv6.i16 = zext i8 %65 to i32
  %sub.i17 = sub nsw i32 %conv.i15, %conv6.i16
  %66 = icmp slt i32 %sub.i17, 0
  %neg.i18 = sub nsw i32 0, %sub.i17
  %67 = select i1 %66, i32 %neg.i18, i32 %sub.i17
  %add.i19 = add nsw i32 %67, %i_sum.025.i12
  %arrayidx.1.i20 = getelementptr inbounds i8, i8* %pix1.addr.024.i13, i32 1
  %68 = load i8, i8* %arrayidx.1.i20, align 1, !tbaa !6
  %conv.1.i21 = zext i8 %68 to i32
  %arrayidx5.1.i22 = getelementptr inbounds i8, i8* %pix2.addr.023.i14, i32 1
  %69 = load i8, i8* %arrayidx5.1.i22, align 1, !tbaa !6
  %conv6.1.i23 = zext i8 %69 to i32
  %sub.1.i24 = sub nsw i32 %conv.1.i21, %conv6.1.i23
  %70 = icmp slt i32 %sub.1.i24, 0
  %neg.1.i25 = sub nsw i32 0, %sub.1.i24
  %71 = select i1 %70, i32 %neg.1.i25, i32 %sub.1.i24
  %add.1.i26 = add nsw i32 %add.i19, %71
  %arrayidx.2.i27 = getelementptr inbounds i8, i8* %pix1.addr.024.i13, i32 2
  %72 = load i8, i8* %arrayidx.2.i27, align 1, !tbaa !6
  %conv.2.i28 = zext i8 %72 to i32
  %arrayidx5.2.i29 = getelementptr inbounds i8, i8* %pix2.addr.023.i14, i32 2
  %73 = load i8, i8* %arrayidx5.2.i29, align 1, !tbaa !6
  %conv6.2.i30 = zext i8 %73 to i32
  %sub.2.i31 = sub nsw i32 %conv.2.i28, %conv6.2.i30
  %74 = icmp slt i32 %sub.2.i31, 0
  %neg.2.i32 = sub nsw i32 0, %sub.2.i31
  %75 = select i1 %74, i32 %neg.2.i32, i32 %sub.2.i31
  %add.2.i33 = add nsw i32 %add.1.i26, %75
  %arrayidx.3.i34 = getelementptr inbounds i8, i8* %pix1.addr.024.i13, i32 3
  %76 = load i8, i8* %arrayidx.3.i34, align 1, !tbaa !6
  %conv.3.i35 = zext i8 %76 to i32
  %arrayidx5.3.i36 = getelementptr inbounds i8, i8* %pix2.addr.023.i14, i32 3
  %77 = load i8, i8* %arrayidx5.3.i36, align 1, !tbaa !6
  %conv6.3.i37 = zext i8 %77 to i32
  %sub.3.i38 = sub nsw i32 %conv.3.i35, %conv6.3.i37
  %78 = icmp slt i32 %sub.3.i38, 0
  %neg.3.i39 = sub nsw i32 0, %sub.3.i38
  %79 = select i1 %78, i32 %neg.3.i39, i32 %sub.3.i38
  %add.3.i40 = add nsw i32 %add.2.i33, %79
  %arrayidx.4.i41 = getelementptr inbounds i8, i8* %pix1.addr.024.i13, i32 4
  %80 = load i8, i8* %arrayidx.4.i41, align 1, !tbaa !6
  %conv.4.i42 = zext i8 %80 to i32
  %arrayidx5.4.i43 = getelementptr inbounds i8, i8* %pix2.addr.023.i14, i32 4
  %81 = load i8, i8* %arrayidx5.4.i43, align 1, !tbaa !6
  %conv6.4.i44 = zext i8 %81 to i32
  %sub.4.i45 = sub nsw i32 %conv.4.i42, %conv6.4.i44
  %82 = icmp slt i32 %sub.4.i45, 0
  %neg.4.i46 = sub nsw i32 0, %sub.4.i45
  %83 = select i1 %82, i32 %neg.4.i46, i32 %sub.4.i45
  %add.4.i47 = add nsw i32 %add.3.i40, %83
  %arrayidx.5.i48 = getelementptr inbounds i8, i8* %pix1.addr.024.i13, i32 5
  %84 = load i8, i8* %arrayidx.5.i48, align 1, !tbaa !6
  %conv.5.i49 = zext i8 %84 to i32
  %arrayidx5.5.i50 = getelementptr inbounds i8, i8* %pix2.addr.023.i14, i32 5
  %85 = load i8, i8* %arrayidx5.5.i50, align 1, !tbaa !6
  %conv6.5.i51 = zext i8 %85 to i32
  %sub.5.i52 = sub nsw i32 %conv.5.i49, %conv6.5.i51
  %86 = icmp slt i32 %sub.5.i52, 0
  %neg.5.i53 = sub nsw i32 0, %sub.5.i52
  %87 = select i1 %86, i32 %neg.5.i53, i32 %sub.5.i52
  %add.5.i54 = add nsw i32 %add.4.i47, %87
  %arrayidx.6.i55 = getelementptr inbounds i8, i8* %pix1.addr.024.i13, i32 6
  %88 = load i8, i8* %arrayidx.6.i55, align 1, !tbaa !6
  %conv.6.i56 = zext i8 %88 to i32
  %arrayidx5.6.i57 = getelementptr inbounds i8, i8* %pix2.addr.023.i14, i32 6
  %89 = load i8, i8* %arrayidx5.6.i57, align 1, !tbaa !6
  %conv6.6.i58 = zext i8 %89 to i32
  %sub.6.i59 = sub nsw i32 %conv.6.i56, %conv6.6.i58
  %90 = icmp slt i32 %sub.6.i59, 0
  %neg.6.i60 = sub nsw i32 0, %sub.6.i59
  %91 = select i1 %90, i32 %neg.6.i60, i32 %sub.6.i59
  %add.6.i61 = add nsw i32 %add.5.i54, %91
  %arrayidx.7.i62 = getelementptr inbounds i8, i8* %pix1.addr.024.i13, i32 7
  %92 = load i8, i8* %arrayidx.7.i62, align 1, !tbaa !6
  %conv.7.i63 = zext i8 %92 to i32
  %arrayidx5.7.i64 = getelementptr inbounds i8, i8* %pix2.addr.023.i14, i32 7
  %93 = load i8, i8* %arrayidx5.7.i64, align 1, !tbaa !6
  %conv6.7.i65 = zext i8 %93 to i32
  %sub.7.i66 = sub nsw i32 %conv.7.i63, %conv6.7.i65
  %94 = icmp slt i32 %sub.7.i66, 0
  %neg.7.i67 = sub nsw i32 0, %sub.7.i66
  %95 = select i1 %94, i32 %neg.7.i67, i32 %sub.7.i66
  %add.7.i68 = add nsw i32 %add.6.i61, %95
  %add.ptr.i69 = getelementptr inbounds i8, i8* %pix1.addr.024.i13, i32 16
  %add.ptr7.i70 = getelementptr inbounds i8, i8* %pix2.addr.023.i14, i32 %i_stride
  %inc9.i71 = add nuw nsw i32 %y.026.i11, 1
  %exitcond.i72 = icmp eq i32 %inc9.i71, 16
  br i1 %exitcond.i72, label %x264_pixel_sad_8x16.exit74, label %for.cond1.preheader.i73

x264_pixel_sad_8x16.exit74:                       ; preds = %for.cond1.preheader.i73
  %arrayidx4 = getelementptr inbounds i32, i32* %scores, i32 2
  store i32 %add.7.i68, i32* %arrayidx4, align 4, !tbaa !13
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @x264_pixel_sad_x3_8x8(i8* nocapture readonly %fenc, i8* nocapture readonly %pix0, i8* nocapture readonly %pix1, i8* nocapture readonly %pix2, i32 %i_stride, i32* nocapture %scores) #2 {
entry:
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.cond1.preheader.i, %entry
  %y.026.i = phi i32 [ 0, %entry ], [ %inc9.i, %for.cond1.preheader.i ]
  %i_sum.025.i = phi i32 [ 0, %entry ], [ %add.7.i, %for.cond1.preheader.i ]
  %pix1.addr.024.i = phi i8* [ %fenc, %entry ], [ %add.ptr.i, %for.cond1.preheader.i ]
  %pix2.addr.023.i = phi i8* [ %pix0, %entry ], [ %add.ptr7.i, %for.cond1.preheader.i ]
  %0 = load i8, i8* %pix1.addr.024.i, align 1, !tbaa !6
  %conv.i = zext i8 %0 to i32
  %1 = load i8, i8* %pix2.addr.023.i, align 1, !tbaa !6
  %conv6.i = zext i8 %1 to i32
  %sub.i = sub nsw i32 %conv.i, %conv6.i
  %2 = icmp slt i32 %sub.i, 0
  %neg.i = sub nsw i32 0, %sub.i
  %3 = select i1 %2, i32 %neg.i, i32 %sub.i
  %add.i = add nsw i32 %3, %i_sum.025.i
  %arrayidx.1.i = getelementptr inbounds i8, i8* %pix1.addr.024.i, i32 1
  %4 = load i8, i8* %arrayidx.1.i, align 1, !tbaa !6
  %conv.1.i = zext i8 %4 to i32
  %arrayidx5.1.i = getelementptr inbounds i8, i8* %pix2.addr.023.i, i32 1
  %5 = load i8, i8* %arrayidx5.1.i, align 1, !tbaa !6
  %conv6.1.i = zext i8 %5 to i32
  %sub.1.i = sub nsw i32 %conv.1.i, %conv6.1.i
  %6 = icmp slt i32 %sub.1.i, 0
  %neg.1.i = sub nsw i32 0, %sub.1.i
  %7 = select i1 %6, i32 %neg.1.i, i32 %sub.1.i
  %add.1.i = add nsw i32 %add.i, %7
  %arrayidx.2.i = getelementptr inbounds i8, i8* %pix1.addr.024.i, i32 2
  %8 = load i8, i8* %arrayidx.2.i, align 1, !tbaa !6
  %conv.2.i = zext i8 %8 to i32
  %arrayidx5.2.i = getelementptr inbounds i8, i8* %pix2.addr.023.i, i32 2
  %9 = load i8, i8* %arrayidx5.2.i, align 1, !tbaa !6
  %conv6.2.i = zext i8 %9 to i32
  %sub.2.i = sub nsw i32 %conv.2.i, %conv6.2.i
  %10 = icmp slt i32 %sub.2.i, 0
  %neg.2.i = sub nsw i32 0, %sub.2.i
  %11 = select i1 %10, i32 %neg.2.i, i32 %sub.2.i
  %add.2.i = add nsw i32 %add.1.i, %11
  %arrayidx.3.i = getelementptr inbounds i8, i8* %pix1.addr.024.i, i32 3
  %12 = load i8, i8* %arrayidx.3.i, align 1, !tbaa !6
  %conv.3.i = zext i8 %12 to i32
  %arrayidx5.3.i = getelementptr inbounds i8, i8* %pix2.addr.023.i, i32 3
  %13 = load i8, i8* %arrayidx5.3.i, align 1, !tbaa !6
  %conv6.3.i = zext i8 %13 to i32
  %sub.3.i = sub nsw i32 %conv.3.i, %conv6.3.i
  %14 = icmp slt i32 %sub.3.i, 0
  %neg.3.i = sub nsw i32 0, %sub.3.i
  %15 = select i1 %14, i32 %neg.3.i, i32 %sub.3.i
  %add.3.i = add nsw i32 %add.2.i, %15
  %arrayidx.4.i = getelementptr inbounds i8, i8* %pix1.addr.024.i, i32 4
  %16 = load i8, i8* %arrayidx.4.i, align 1, !tbaa !6
  %conv.4.i = zext i8 %16 to i32
  %arrayidx5.4.i = getelementptr inbounds i8, i8* %pix2.addr.023.i, i32 4
  %17 = load i8, i8* %arrayidx5.4.i, align 1, !tbaa !6
  %conv6.4.i = zext i8 %17 to i32
  %sub.4.i = sub nsw i32 %conv.4.i, %conv6.4.i
  %18 = icmp slt i32 %sub.4.i, 0
  %neg.4.i = sub nsw i32 0, %sub.4.i
  %19 = select i1 %18, i32 %neg.4.i, i32 %sub.4.i
  %add.4.i = add nsw i32 %add.3.i, %19
  %arrayidx.5.i = getelementptr inbounds i8, i8* %pix1.addr.024.i, i32 5
  %20 = load i8, i8* %arrayidx.5.i, align 1, !tbaa !6
  %conv.5.i = zext i8 %20 to i32
  %arrayidx5.5.i = getelementptr inbounds i8, i8* %pix2.addr.023.i, i32 5
  %21 = load i8, i8* %arrayidx5.5.i, align 1, !tbaa !6
  %conv6.5.i = zext i8 %21 to i32
  %sub.5.i = sub nsw i32 %conv.5.i, %conv6.5.i
  %22 = icmp slt i32 %sub.5.i, 0
  %neg.5.i = sub nsw i32 0, %sub.5.i
  %23 = select i1 %22, i32 %neg.5.i, i32 %sub.5.i
  %add.5.i = add nsw i32 %add.4.i, %23
  %arrayidx.6.i = getelementptr inbounds i8, i8* %pix1.addr.024.i, i32 6
  %24 = load i8, i8* %arrayidx.6.i, align 1, !tbaa !6
  %conv.6.i = zext i8 %24 to i32
  %arrayidx5.6.i = getelementptr inbounds i8, i8* %pix2.addr.023.i, i32 6
  %25 = load i8, i8* %arrayidx5.6.i, align 1, !tbaa !6
  %conv6.6.i = zext i8 %25 to i32
  %sub.6.i = sub nsw i32 %conv.6.i, %conv6.6.i
  %26 = icmp slt i32 %sub.6.i, 0
  %neg.6.i = sub nsw i32 0, %sub.6.i
  %27 = select i1 %26, i32 %neg.6.i, i32 %sub.6.i
  %add.6.i = add nsw i32 %add.5.i, %27
  %arrayidx.7.i = getelementptr inbounds i8, i8* %pix1.addr.024.i, i32 7
  %28 = load i8, i8* %arrayidx.7.i, align 1, !tbaa !6
  %conv.7.i = zext i8 %28 to i32
  %arrayidx5.7.i = getelementptr inbounds i8, i8* %pix2.addr.023.i, i32 7
  %29 = load i8, i8* %arrayidx5.7.i, align 1, !tbaa !6
  %conv6.7.i = zext i8 %29 to i32
  %sub.7.i = sub nsw i32 %conv.7.i, %conv6.7.i
  %30 = icmp slt i32 %sub.7.i, 0
  %neg.7.i = sub nsw i32 0, %sub.7.i
  %31 = select i1 %30, i32 %neg.7.i, i32 %sub.7.i
  %add.7.i = add nsw i32 %add.6.i, %31
  %add.ptr.i = getelementptr inbounds i8, i8* %pix1.addr.024.i, i32 16
  %add.ptr7.i = getelementptr inbounds i8, i8* %pix2.addr.023.i, i32 %i_stride
  %inc9.i = add nuw nsw i32 %y.026.i, 1
  %exitcond.i = icmp eq i32 %inc9.i, 8
  br i1 %exitcond.i, label %x264_pixel_sad_8x8.exit, label %for.cond1.preheader.i

x264_pixel_sad_8x8.exit:                          ; preds = %for.cond1.preheader.i
  store i32 %add.7.i, i32* %scores, align 4, !tbaa !13
  br label %for.cond1.preheader.i137

for.cond1.preheader.i137:                         ; preds = %for.cond1.preheader.i137, %x264_pixel_sad_8x8.exit
  %y.026.i75 = phi i32 [ 0, %x264_pixel_sad_8x8.exit ], [ %inc9.i135, %for.cond1.preheader.i137 ]
  %i_sum.025.i76 = phi i32 [ 0, %x264_pixel_sad_8x8.exit ], [ %add.7.i132, %for.cond1.preheader.i137 ]
  %pix1.addr.024.i77 = phi i8* [ %fenc, %x264_pixel_sad_8x8.exit ], [ %add.ptr.i133, %for.cond1.preheader.i137 ]
  %pix2.addr.023.i78 = phi i8* [ %pix1, %x264_pixel_sad_8x8.exit ], [ %add.ptr7.i134, %for.cond1.preheader.i137 ]
  %32 = load i8, i8* %pix1.addr.024.i77, align 1, !tbaa !6
  %conv.i79 = zext i8 %32 to i32
  %33 = load i8, i8* %pix2.addr.023.i78, align 1, !tbaa !6
  %conv6.i80 = zext i8 %33 to i32
  %sub.i81 = sub nsw i32 %conv.i79, %conv6.i80
  %34 = icmp slt i32 %sub.i81, 0
  %neg.i82 = sub nsw i32 0, %sub.i81
  %35 = select i1 %34, i32 %neg.i82, i32 %sub.i81
  %add.i83 = add nsw i32 %35, %i_sum.025.i76
  %arrayidx.1.i84 = getelementptr inbounds i8, i8* %pix1.addr.024.i77, i32 1
  %36 = load i8, i8* %arrayidx.1.i84, align 1, !tbaa !6
  %conv.1.i85 = zext i8 %36 to i32
  %arrayidx5.1.i86 = getelementptr inbounds i8, i8* %pix2.addr.023.i78, i32 1
  %37 = load i8, i8* %arrayidx5.1.i86, align 1, !tbaa !6
  %conv6.1.i87 = zext i8 %37 to i32
  %sub.1.i88 = sub nsw i32 %conv.1.i85, %conv6.1.i87
  %38 = icmp slt i32 %sub.1.i88, 0
  %neg.1.i89 = sub nsw i32 0, %sub.1.i88
  %39 = select i1 %38, i32 %neg.1.i89, i32 %sub.1.i88
  %add.1.i90 = add nsw i32 %add.i83, %39
  %arrayidx.2.i91 = getelementptr inbounds i8, i8* %pix1.addr.024.i77, i32 2
  %40 = load i8, i8* %arrayidx.2.i91, align 1, !tbaa !6
  %conv.2.i92 = zext i8 %40 to i32
  %arrayidx5.2.i93 = getelementptr inbounds i8, i8* %pix2.addr.023.i78, i32 2
  %41 = load i8, i8* %arrayidx5.2.i93, align 1, !tbaa !6
  %conv6.2.i94 = zext i8 %41 to i32
  %sub.2.i95 = sub nsw i32 %conv.2.i92, %conv6.2.i94
  %42 = icmp slt i32 %sub.2.i95, 0
  %neg.2.i96 = sub nsw i32 0, %sub.2.i95
  %43 = select i1 %42, i32 %neg.2.i96, i32 %sub.2.i95
  %add.2.i97 = add nsw i32 %add.1.i90, %43
  %arrayidx.3.i98 = getelementptr inbounds i8, i8* %pix1.addr.024.i77, i32 3
  %44 = load i8, i8* %arrayidx.3.i98, align 1, !tbaa !6
  %conv.3.i99 = zext i8 %44 to i32
  %arrayidx5.3.i100 = getelementptr inbounds i8, i8* %pix2.addr.023.i78, i32 3
  %45 = load i8, i8* %arrayidx5.3.i100, align 1, !tbaa !6
  %conv6.3.i101 = zext i8 %45 to i32
  %sub.3.i102 = sub nsw i32 %conv.3.i99, %conv6.3.i101
  %46 = icmp slt i32 %sub.3.i102, 0
  %neg.3.i103 = sub nsw i32 0, %sub.3.i102
  %47 = select i1 %46, i32 %neg.3.i103, i32 %sub.3.i102
  %add.3.i104 = add nsw i32 %add.2.i97, %47
  %arrayidx.4.i105 = getelementptr inbounds i8, i8* %pix1.addr.024.i77, i32 4
  %48 = load i8, i8* %arrayidx.4.i105, align 1, !tbaa !6
  %conv.4.i106 = zext i8 %48 to i32
  %arrayidx5.4.i107 = getelementptr inbounds i8, i8* %pix2.addr.023.i78, i32 4
  %49 = load i8, i8* %arrayidx5.4.i107, align 1, !tbaa !6
  %conv6.4.i108 = zext i8 %49 to i32
  %sub.4.i109 = sub nsw i32 %conv.4.i106, %conv6.4.i108
  %50 = icmp slt i32 %sub.4.i109, 0
  %neg.4.i110 = sub nsw i32 0, %sub.4.i109
  %51 = select i1 %50, i32 %neg.4.i110, i32 %sub.4.i109
  %add.4.i111 = add nsw i32 %add.3.i104, %51
  %arrayidx.5.i112 = getelementptr inbounds i8, i8* %pix1.addr.024.i77, i32 5
  %52 = load i8, i8* %arrayidx.5.i112, align 1, !tbaa !6
  %conv.5.i113 = zext i8 %52 to i32
  %arrayidx5.5.i114 = getelementptr inbounds i8, i8* %pix2.addr.023.i78, i32 5
  %53 = load i8, i8* %arrayidx5.5.i114, align 1, !tbaa !6
  %conv6.5.i115 = zext i8 %53 to i32
  %sub.5.i116 = sub nsw i32 %conv.5.i113, %conv6.5.i115
  %54 = icmp slt i32 %sub.5.i116, 0
  %neg.5.i117 = sub nsw i32 0, %sub.5.i116
  %55 = select i1 %54, i32 %neg.5.i117, i32 %sub.5.i116
  %add.5.i118 = add nsw i32 %add.4.i111, %55
  %arrayidx.6.i119 = getelementptr inbounds i8, i8* %pix1.addr.024.i77, i32 6
  %56 = load i8, i8* %arrayidx.6.i119, align 1, !tbaa !6
  %conv.6.i120 = zext i8 %56 to i32
  %arrayidx5.6.i121 = getelementptr inbounds i8, i8* %pix2.addr.023.i78, i32 6
  %57 = load i8, i8* %arrayidx5.6.i121, align 1, !tbaa !6
  %conv6.6.i122 = zext i8 %57 to i32
  %sub.6.i123 = sub nsw i32 %conv.6.i120, %conv6.6.i122
  %58 = icmp slt i32 %sub.6.i123, 0
  %neg.6.i124 = sub nsw i32 0, %sub.6.i123
  %59 = select i1 %58, i32 %neg.6.i124, i32 %sub.6.i123
  %add.6.i125 = add nsw i32 %add.5.i118, %59
  %arrayidx.7.i126 = getelementptr inbounds i8, i8* %pix1.addr.024.i77, i32 7
  %60 = load i8, i8* %arrayidx.7.i126, align 1, !tbaa !6
  %conv.7.i127 = zext i8 %60 to i32
  %arrayidx5.7.i128 = getelementptr inbounds i8, i8* %pix2.addr.023.i78, i32 7
  %61 = load i8, i8* %arrayidx5.7.i128, align 1, !tbaa !6
  %conv6.7.i129 = zext i8 %61 to i32
  %sub.7.i130 = sub nsw i32 %conv.7.i127, %conv6.7.i129
  %62 = icmp slt i32 %sub.7.i130, 0
  %neg.7.i131 = sub nsw i32 0, %sub.7.i130
  %63 = select i1 %62, i32 %neg.7.i131, i32 %sub.7.i130
  %add.7.i132 = add nsw i32 %add.6.i125, %63
  %add.ptr.i133 = getelementptr inbounds i8, i8* %pix1.addr.024.i77, i32 16
  %add.ptr7.i134 = getelementptr inbounds i8, i8* %pix2.addr.023.i78, i32 %i_stride
  %inc9.i135 = add nuw nsw i32 %y.026.i75, 1
  %exitcond.i136 = icmp eq i32 %inc9.i135, 8
  br i1 %exitcond.i136, label %x264_pixel_sad_8x8.exit138, label %for.cond1.preheader.i137

x264_pixel_sad_8x8.exit138:                       ; preds = %for.cond1.preheader.i137
  %arrayidx2 = getelementptr inbounds i32, i32* %scores, i32 1
  store i32 %add.7.i132, i32* %arrayidx2, align 4, !tbaa !13
  br label %for.cond1.preheader.i73

for.cond1.preheader.i73:                          ; preds = %for.cond1.preheader.i73, %x264_pixel_sad_8x8.exit138
  %y.026.i11 = phi i32 [ 0, %x264_pixel_sad_8x8.exit138 ], [ %inc9.i71, %for.cond1.preheader.i73 ]
  %i_sum.025.i12 = phi i32 [ 0, %x264_pixel_sad_8x8.exit138 ], [ %add.7.i68, %for.cond1.preheader.i73 ]
  %pix1.addr.024.i13 = phi i8* [ %fenc, %x264_pixel_sad_8x8.exit138 ], [ %add.ptr.i69, %for.cond1.preheader.i73 ]
  %pix2.addr.023.i14 = phi i8* [ %pix2, %x264_pixel_sad_8x8.exit138 ], [ %add.ptr7.i70, %for.cond1.preheader.i73 ]
  %64 = load i8, i8* %pix1.addr.024.i13, align 1, !tbaa !6
  %conv.i15 = zext i8 %64 to i32
  %65 = load i8, i8* %pix2.addr.023.i14, align 1, !tbaa !6
  %conv6.i16 = zext i8 %65 to i32
  %sub.i17 = sub nsw i32 %conv.i15, %conv6.i16
  %66 = icmp slt i32 %sub.i17, 0
  %neg.i18 = sub nsw i32 0, %sub.i17
  %67 = select i1 %66, i32 %neg.i18, i32 %sub.i17
  %add.i19 = add nsw i32 %67, %i_sum.025.i12
  %arrayidx.1.i20 = getelementptr inbounds i8, i8* %pix1.addr.024.i13, i32 1
  %68 = load i8, i8* %arrayidx.1.i20, align 1, !tbaa !6
  %conv.1.i21 = zext i8 %68 to i32
  %arrayidx5.1.i22 = getelementptr inbounds i8, i8* %pix2.addr.023.i14, i32 1
  %69 = load i8, i8* %arrayidx5.1.i22, align 1, !tbaa !6
  %conv6.1.i23 = zext i8 %69 to i32
  %sub.1.i24 = sub nsw i32 %conv.1.i21, %conv6.1.i23
  %70 = icmp slt i32 %sub.1.i24, 0
  %neg.1.i25 = sub nsw i32 0, %sub.1.i24
  %71 = select i1 %70, i32 %neg.1.i25, i32 %sub.1.i24
  %add.1.i26 = add nsw i32 %add.i19, %71
  %arrayidx.2.i27 = getelementptr inbounds i8, i8* %pix1.addr.024.i13, i32 2
  %72 = load i8, i8* %arrayidx.2.i27, align 1, !tbaa !6
  %conv.2.i28 = zext i8 %72 to i32
  %arrayidx5.2.i29 = getelementptr inbounds i8, i8* %pix2.addr.023.i14, i32 2
  %73 = load i8, i8* %arrayidx5.2.i29, align 1, !tbaa !6
  %conv6.2.i30 = zext i8 %73 to i32
  %sub.2.i31 = sub nsw i32 %conv.2.i28, %conv6.2.i30
  %74 = icmp slt i32 %sub.2.i31, 0
  %neg.2.i32 = sub nsw i32 0, %sub.2.i31
  %75 = select i1 %74, i32 %neg.2.i32, i32 %sub.2.i31
  %add.2.i33 = add nsw i32 %add.1.i26, %75
  %arrayidx.3.i34 = getelementptr inbounds i8, i8* %pix1.addr.024.i13, i32 3
  %76 = load i8, i8* %arrayidx.3.i34, align 1, !tbaa !6
  %conv.3.i35 = zext i8 %76 to i32
  %arrayidx5.3.i36 = getelementptr inbounds i8, i8* %pix2.addr.023.i14, i32 3
  %77 = load i8, i8* %arrayidx5.3.i36, align 1, !tbaa !6
  %conv6.3.i37 = zext i8 %77 to i32
  %sub.3.i38 = sub nsw i32 %conv.3.i35, %conv6.3.i37
  %78 = icmp slt i32 %sub.3.i38, 0
  %neg.3.i39 = sub nsw i32 0, %sub.3.i38
  %79 = select i1 %78, i32 %neg.3.i39, i32 %sub.3.i38
  %add.3.i40 = add nsw i32 %add.2.i33, %79
  %arrayidx.4.i41 = getelementptr inbounds i8, i8* %pix1.addr.024.i13, i32 4
  %80 = load i8, i8* %arrayidx.4.i41, align 1, !tbaa !6
  %conv.4.i42 = zext i8 %80 to i32
  %arrayidx5.4.i43 = getelementptr inbounds i8, i8* %pix2.addr.023.i14, i32 4
  %81 = load i8, i8* %arrayidx5.4.i43, align 1, !tbaa !6
  %conv6.4.i44 = zext i8 %81 to i32
  %sub.4.i45 = sub nsw i32 %conv.4.i42, %conv6.4.i44
  %82 = icmp slt i32 %sub.4.i45, 0
  %neg.4.i46 = sub nsw i32 0, %sub.4.i45
  %83 = select i1 %82, i32 %neg.4.i46, i32 %sub.4.i45
  %add.4.i47 = add nsw i32 %add.3.i40, %83
  %arrayidx.5.i48 = getelementptr inbounds i8, i8* %pix1.addr.024.i13, i32 5
  %84 = load i8, i8* %arrayidx.5.i48, align 1, !tbaa !6
  %conv.5.i49 = zext i8 %84 to i32
  %arrayidx5.5.i50 = getelementptr inbounds i8, i8* %pix2.addr.023.i14, i32 5
  %85 = load i8, i8* %arrayidx5.5.i50, align 1, !tbaa !6
  %conv6.5.i51 = zext i8 %85 to i32
  %sub.5.i52 = sub nsw i32 %conv.5.i49, %conv6.5.i51
  %86 = icmp slt i32 %sub.5.i52, 0
  %neg.5.i53 = sub nsw i32 0, %sub.5.i52
  %87 = select i1 %86, i32 %neg.5.i53, i32 %sub.5.i52
  %add.5.i54 = add nsw i32 %add.4.i47, %87
  %arrayidx.6.i55 = getelementptr inbounds i8, i8* %pix1.addr.024.i13, i32 6
  %88 = load i8, i8* %arrayidx.6.i55, align 1, !tbaa !6
  %conv.6.i56 = zext i8 %88 to i32
  %arrayidx5.6.i57 = getelementptr inbounds i8, i8* %pix2.addr.023.i14, i32 6
  %89 = load i8, i8* %arrayidx5.6.i57, align 1, !tbaa !6
  %conv6.6.i58 = zext i8 %89 to i32
  %sub.6.i59 = sub nsw i32 %conv.6.i56, %conv6.6.i58
  %90 = icmp slt i32 %sub.6.i59, 0
  %neg.6.i60 = sub nsw i32 0, %sub.6.i59
  %91 = select i1 %90, i32 %neg.6.i60, i32 %sub.6.i59
  %add.6.i61 = add nsw i32 %add.5.i54, %91
  %arrayidx.7.i62 = getelementptr inbounds i8, i8* %pix1.addr.024.i13, i32 7
  %92 = load i8, i8* %arrayidx.7.i62, align 1, !tbaa !6
  %conv.7.i63 = zext i8 %92 to i32
  %arrayidx5.7.i64 = getelementptr inbounds i8, i8* %pix2.addr.023.i14, i32 7
  %93 = load i8, i8* %arrayidx5.7.i64, align 1, !tbaa !6
  %conv6.7.i65 = zext i8 %93 to i32
  %sub.7.i66 = sub nsw i32 %conv.7.i63, %conv6.7.i65
  %94 = icmp slt i32 %sub.7.i66, 0
  %neg.7.i67 = sub nsw i32 0, %sub.7.i66
  %95 = select i1 %94, i32 %neg.7.i67, i32 %sub.7.i66
  %add.7.i68 = add nsw i32 %add.6.i61, %95
  %add.ptr.i69 = getelementptr inbounds i8, i8* %pix1.addr.024.i13, i32 16
  %add.ptr7.i70 = getelementptr inbounds i8, i8* %pix2.addr.023.i14, i32 %i_stride
  %inc9.i71 = add nuw nsw i32 %y.026.i11, 1
  %exitcond.i72 = icmp eq i32 %inc9.i71, 8
  br i1 %exitcond.i72, label %x264_pixel_sad_8x8.exit74, label %for.cond1.preheader.i73

x264_pixel_sad_8x8.exit74:                        ; preds = %for.cond1.preheader.i73
  %arrayidx4 = getelementptr inbounds i32, i32* %scores, i32 2
  store i32 %add.7.i68, i32* %arrayidx4, align 4, !tbaa !13
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @x264_pixel_sad_x3_8x4(i8* nocapture readonly %fenc, i8* nocapture readonly %pix0, i8* nocapture readonly %pix1, i8* nocapture readonly %pix2, i32 %i_stride, i32* nocapture %scores) #2 {
entry:
  %call = tail call i32 @x264_pixel_sad_8x4(i8* %fenc, i32 16, i8* %pix0, i32 %i_stride)
  store i32 %call, i32* %scores, align 4, !tbaa !13
  %call1 = tail call i32 @x264_pixel_sad_8x4(i8* %fenc, i32 16, i8* %pix1, i32 %i_stride)
  %arrayidx2 = getelementptr inbounds i32, i32* %scores, i32 1
  store i32 %call1, i32* %arrayidx2, align 4, !tbaa !13
  %call3 = tail call i32 @x264_pixel_sad_8x4(i8* %fenc, i32 16, i8* %pix2, i32 %i_stride)
  %arrayidx4 = getelementptr inbounds i32, i32* %scores, i32 2
  store i32 %call3, i32* %arrayidx4, align 4, !tbaa !13
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @x264_pixel_sad_x3_4x8(i8* nocapture readonly %fenc, i8* nocapture readonly %pix0, i8* nocapture readonly %pix1, i8* nocapture readonly %pix2, i32 %i_stride, i32* nocapture %scores) #2 {
entry:
  %call = tail call i32 @x264_pixel_sad_4x8(i8* %fenc, i32 16, i8* %pix0, i32 %i_stride)
  store i32 %call, i32* %scores, align 4, !tbaa !13
  %call1 = tail call i32 @x264_pixel_sad_4x8(i8* %fenc, i32 16, i8* %pix1, i32 %i_stride)
  %arrayidx2 = getelementptr inbounds i32, i32* %scores, i32 1
  store i32 %call1, i32* %arrayidx2, align 4, !tbaa !13
  %call3 = tail call i32 @x264_pixel_sad_4x8(i8* %fenc, i32 16, i8* %pix2, i32 %i_stride)
  %arrayidx4 = getelementptr inbounds i32, i32* %scores, i32 2
  store i32 %call3, i32* %arrayidx4, align 4, !tbaa !13
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @x264_pixel_sad_x3_4x4(i8* nocapture readonly %fenc, i8* nocapture readonly %pix0, i8* nocapture readonly %pix1, i8* nocapture readonly %pix2, i32 %i_stride, i32* nocapture %scores) #2 {
entry:
  %call = tail call i32 @x264_pixel_sad_4x4(i8* %fenc, i32 16, i8* %pix0, i32 %i_stride)
  store i32 %call, i32* %scores, align 4, !tbaa !13
  %call1 = tail call i32 @x264_pixel_sad_4x4(i8* %fenc, i32 16, i8* %pix1, i32 %i_stride)
  %arrayidx2 = getelementptr inbounds i32, i32* %scores, i32 1
  store i32 %call1, i32* %arrayidx2, align 4, !tbaa !13
  %call3 = tail call i32 @x264_pixel_sad_4x4(i8* %fenc, i32 16, i8* %pix2, i32 %i_stride)
  %arrayidx4 = getelementptr inbounds i32, i32* %scores, i32 2
  store i32 %call3, i32* %arrayidx4, align 4, !tbaa !13
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @x264_pixel_sad_x4_16x16(i8* nocapture readonly %fenc, i8* nocapture readonly %pix0, i8* nocapture readonly %pix1, i8* nocapture readonly %pix2, i8* nocapture readonly %pix3, i32 %i_stride, i32* nocapture %scores) #2 {
entry:
  %call = tail call i32 @x264_pixel_sad_16x16(i8* %fenc, i32 16, i8* %pix0, i32 %i_stride)
  store i32 %call, i32* %scores, align 4, !tbaa !13
  %call1 = tail call i32 @x264_pixel_sad_16x16(i8* %fenc, i32 16, i8* %pix1, i32 %i_stride)
  %arrayidx2 = getelementptr inbounds i32, i32* %scores, i32 1
  store i32 %call1, i32* %arrayidx2, align 4, !tbaa !13
  %call3 = tail call i32 @x264_pixel_sad_16x16(i8* %fenc, i32 16, i8* %pix2, i32 %i_stride)
  %arrayidx4 = getelementptr inbounds i32, i32* %scores, i32 2
  store i32 %call3, i32* %arrayidx4, align 4, !tbaa !13
  %call5 = tail call i32 @x264_pixel_sad_16x16(i8* %fenc, i32 16, i8* %pix3, i32 %i_stride)
  %arrayidx6 = getelementptr inbounds i32, i32* %scores, i32 3
  store i32 %call5, i32* %arrayidx6, align 4, !tbaa !13
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @x264_pixel_sad_x4_16x8(i8* nocapture readonly %fenc, i8* nocapture readonly %pix0, i8* nocapture readonly %pix1, i8* nocapture readonly %pix2, i8* nocapture readonly %pix3, i32 %i_stride, i32* nocapture %scores) #2 {
entry:
  %call = tail call i32 @x264_pixel_sad_16x8(i8* %fenc, i32 16, i8* %pix0, i32 %i_stride)
  store i32 %call, i32* %scores, align 4, !tbaa !13
  %call1 = tail call i32 @x264_pixel_sad_16x8(i8* %fenc, i32 16, i8* %pix1, i32 %i_stride)
  %arrayidx2 = getelementptr inbounds i32, i32* %scores, i32 1
  store i32 %call1, i32* %arrayidx2, align 4, !tbaa !13
  %call3 = tail call i32 @x264_pixel_sad_16x8(i8* %fenc, i32 16, i8* %pix2, i32 %i_stride)
  %arrayidx4 = getelementptr inbounds i32, i32* %scores, i32 2
  store i32 %call3, i32* %arrayidx4, align 4, !tbaa !13
  %call5 = tail call i32 @x264_pixel_sad_16x8(i8* %fenc, i32 16, i8* %pix3, i32 %i_stride)
  %arrayidx6 = getelementptr inbounds i32, i32* %scores, i32 3
  store i32 %call5, i32* %arrayidx6, align 4, !tbaa !13
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @x264_pixel_sad_x4_8x16(i8* nocapture readonly %fenc, i8* nocapture readonly %pix0, i8* nocapture readonly %pix1, i8* nocapture readonly %pix2, i8* nocapture readonly %pix3, i32 %i_stride, i32* nocapture %scores) #2 {
entry:
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.cond1.preheader.i, %entry
  %y.026.i = phi i32 [ 0, %entry ], [ %inc9.i, %for.cond1.preheader.i ]
  %i_sum.025.i = phi i32 [ 0, %entry ], [ %add.7.i, %for.cond1.preheader.i ]
  %pix1.addr.024.i = phi i8* [ %fenc, %entry ], [ %add.ptr.i, %for.cond1.preheader.i ]
  %pix2.addr.023.i = phi i8* [ %pix0, %entry ], [ %add.ptr7.i, %for.cond1.preheader.i ]
  %0 = load i8, i8* %pix1.addr.024.i, align 1, !tbaa !6
  %conv.i = zext i8 %0 to i32
  %1 = load i8, i8* %pix2.addr.023.i, align 1, !tbaa !6
  %conv6.i = zext i8 %1 to i32
  %sub.i = sub nsw i32 %conv.i, %conv6.i
  %2 = icmp slt i32 %sub.i, 0
  %neg.i = sub nsw i32 0, %sub.i
  %3 = select i1 %2, i32 %neg.i, i32 %sub.i
  %add.i = add nsw i32 %3, %i_sum.025.i
  %arrayidx.1.i = getelementptr inbounds i8, i8* %pix1.addr.024.i, i32 1
  %4 = load i8, i8* %arrayidx.1.i, align 1, !tbaa !6
  %conv.1.i = zext i8 %4 to i32
  %arrayidx5.1.i = getelementptr inbounds i8, i8* %pix2.addr.023.i, i32 1
  %5 = load i8, i8* %arrayidx5.1.i, align 1, !tbaa !6
  %conv6.1.i = zext i8 %5 to i32
  %sub.1.i = sub nsw i32 %conv.1.i, %conv6.1.i
  %6 = icmp slt i32 %sub.1.i, 0
  %neg.1.i = sub nsw i32 0, %sub.1.i
  %7 = select i1 %6, i32 %neg.1.i, i32 %sub.1.i
  %add.1.i = add nsw i32 %add.i, %7
  %arrayidx.2.i = getelementptr inbounds i8, i8* %pix1.addr.024.i, i32 2
  %8 = load i8, i8* %arrayidx.2.i, align 1, !tbaa !6
  %conv.2.i = zext i8 %8 to i32
  %arrayidx5.2.i = getelementptr inbounds i8, i8* %pix2.addr.023.i, i32 2
  %9 = load i8, i8* %arrayidx5.2.i, align 1, !tbaa !6
  %conv6.2.i = zext i8 %9 to i32
  %sub.2.i = sub nsw i32 %conv.2.i, %conv6.2.i
  %10 = icmp slt i32 %sub.2.i, 0
  %neg.2.i = sub nsw i32 0, %sub.2.i
  %11 = select i1 %10, i32 %neg.2.i, i32 %sub.2.i
  %add.2.i = add nsw i32 %add.1.i, %11
  %arrayidx.3.i = getelementptr inbounds i8, i8* %pix1.addr.024.i, i32 3
  %12 = load i8, i8* %arrayidx.3.i, align 1, !tbaa !6
  %conv.3.i = zext i8 %12 to i32
  %arrayidx5.3.i = getelementptr inbounds i8, i8* %pix2.addr.023.i, i32 3
  %13 = load i8, i8* %arrayidx5.3.i, align 1, !tbaa !6
  %conv6.3.i = zext i8 %13 to i32
  %sub.3.i = sub nsw i32 %conv.3.i, %conv6.3.i
  %14 = icmp slt i32 %sub.3.i, 0
  %neg.3.i = sub nsw i32 0, %sub.3.i
  %15 = select i1 %14, i32 %neg.3.i, i32 %sub.3.i
  %add.3.i = add nsw i32 %add.2.i, %15
  %arrayidx.4.i = getelementptr inbounds i8, i8* %pix1.addr.024.i, i32 4
  %16 = load i8, i8* %arrayidx.4.i, align 1, !tbaa !6
  %conv.4.i = zext i8 %16 to i32
  %arrayidx5.4.i = getelementptr inbounds i8, i8* %pix2.addr.023.i, i32 4
  %17 = load i8, i8* %arrayidx5.4.i, align 1, !tbaa !6
  %conv6.4.i = zext i8 %17 to i32
  %sub.4.i = sub nsw i32 %conv.4.i, %conv6.4.i
  %18 = icmp slt i32 %sub.4.i, 0
  %neg.4.i = sub nsw i32 0, %sub.4.i
  %19 = select i1 %18, i32 %neg.4.i, i32 %sub.4.i
  %add.4.i = add nsw i32 %add.3.i, %19
  %arrayidx.5.i = getelementptr inbounds i8, i8* %pix1.addr.024.i, i32 5
  %20 = load i8, i8* %arrayidx.5.i, align 1, !tbaa !6
  %conv.5.i = zext i8 %20 to i32
  %arrayidx5.5.i = getelementptr inbounds i8, i8* %pix2.addr.023.i, i32 5
  %21 = load i8, i8* %arrayidx5.5.i, align 1, !tbaa !6
  %conv6.5.i = zext i8 %21 to i32
  %sub.5.i = sub nsw i32 %conv.5.i, %conv6.5.i
  %22 = icmp slt i32 %sub.5.i, 0
  %neg.5.i = sub nsw i32 0, %sub.5.i
  %23 = select i1 %22, i32 %neg.5.i, i32 %sub.5.i
  %add.5.i = add nsw i32 %add.4.i, %23
  %arrayidx.6.i = getelementptr inbounds i8, i8* %pix1.addr.024.i, i32 6
  %24 = load i8, i8* %arrayidx.6.i, align 1, !tbaa !6
  %conv.6.i = zext i8 %24 to i32
  %arrayidx5.6.i = getelementptr inbounds i8, i8* %pix2.addr.023.i, i32 6
  %25 = load i8, i8* %arrayidx5.6.i, align 1, !tbaa !6
  %conv6.6.i = zext i8 %25 to i32
  %sub.6.i = sub nsw i32 %conv.6.i, %conv6.6.i
  %26 = icmp slt i32 %sub.6.i, 0
  %neg.6.i = sub nsw i32 0, %sub.6.i
  %27 = select i1 %26, i32 %neg.6.i, i32 %sub.6.i
  %add.6.i = add nsw i32 %add.5.i, %27
  %arrayidx.7.i = getelementptr inbounds i8, i8* %pix1.addr.024.i, i32 7
  %28 = load i8, i8* %arrayidx.7.i, align 1, !tbaa !6
  %conv.7.i = zext i8 %28 to i32
  %arrayidx5.7.i = getelementptr inbounds i8, i8* %pix2.addr.023.i, i32 7
  %29 = load i8, i8* %arrayidx5.7.i, align 1, !tbaa !6
  %conv6.7.i = zext i8 %29 to i32
  %sub.7.i = sub nsw i32 %conv.7.i, %conv6.7.i
  %30 = icmp slt i32 %sub.7.i, 0
  %neg.7.i = sub nsw i32 0, %sub.7.i
  %31 = select i1 %30, i32 %neg.7.i, i32 %sub.7.i
  %add.7.i = add nsw i32 %add.6.i, %31
  %add.ptr.i = getelementptr inbounds i8, i8* %pix1.addr.024.i, i32 16
  %add.ptr7.i = getelementptr inbounds i8, i8* %pix2.addr.023.i, i32 %i_stride
  %inc9.i = add nuw nsw i32 %y.026.i, 1
  %exitcond.i = icmp eq i32 %inc9.i, 16
  br i1 %exitcond.i, label %x264_pixel_sad_8x16.exit, label %for.cond1.preheader.i

x264_pixel_sad_8x16.exit:                         ; preds = %for.cond1.preheader.i
  store i32 %add.7.i, i32* %scores, align 4, !tbaa !13
  br label %for.cond1.preheader.i206

for.cond1.preheader.i206:                         ; preds = %for.cond1.preheader.i206, %x264_pixel_sad_8x16.exit
  %y.026.i144 = phi i32 [ 0, %x264_pixel_sad_8x16.exit ], [ %inc9.i204, %for.cond1.preheader.i206 ]
  %i_sum.025.i145 = phi i32 [ 0, %x264_pixel_sad_8x16.exit ], [ %add.7.i201, %for.cond1.preheader.i206 ]
  %pix1.addr.024.i146 = phi i8* [ %fenc, %x264_pixel_sad_8x16.exit ], [ %add.ptr.i202, %for.cond1.preheader.i206 ]
  %pix2.addr.023.i147 = phi i8* [ %pix1, %x264_pixel_sad_8x16.exit ], [ %add.ptr7.i203, %for.cond1.preheader.i206 ]
  %32 = load i8, i8* %pix1.addr.024.i146, align 1, !tbaa !6
  %conv.i148 = zext i8 %32 to i32
  %33 = load i8, i8* %pix2.addr.023.i147, align 1, !tbaa !6
  %conv6.i149 = zext i8 %33 to i32
  %sub.i150 = sub nsw i32 %conv.i148, %conv6.i149
  %34 = icmp slt i32 %sub.i150, 0
  %neg.i151 = sub nsw i32 0, %sub.i150
  %35 = select i1 %34, i32 %neg.i151, i32 %sub.i150
  %add.i152 = add nsw i32 %35, %i_sum.025.i145
  %arrayidx.1.i153 = getelementptr inbounds i8, i8* %pix1.addr.024.i146, i32 1
  %36 = load i8, i8* %arrayidx.1.i153, align 1, !tbaa !6
  %conv.1.i154 = zext i8 %36 to i32
  %arrayidx5.1.i155 = getelementptr inbounds i8, i8* %pix2.addr.023.i147, i32 1
  %37 = load i8, i8* %arrayidx5.1.i155, align 1, !tbaa !6
  %conv6.1.i156 = zext i8 %37 to i32
  %sub.1.i157 = sub nsw i32 %conv.1.i154, %conv6.1.i156
  %38 = icmp slt i32 %sub.1.i157, 0
  %neg.1.i158 = sub nsw i32 0, %sub.1.i157
  %39 = select i1 %38, i32 %neg.1.i158, i32 %sub.1.i157
  %add.1.i159 = add nsw i32 %add.i152, %39
  %arrayidx.2.i160 = getelementptr inbounds i8, i8* %pix1.addr.024.i146, i32 2
  %40 = load i8, i8* %arrayidx.2.i160, align 1, !tbaa !6
  %conv.2.i161 = zext i8 %40 to i32
  %arrayidx5.2.i162 = getelementptr inbounds i8, i8* %pix2.addr.023.i147, i32 2
  %41 = load i8, i8* %arrayidx5.2.i162, align 1, !tbaa !6
  %conv6.2.i163 = zext i8 %41 to i32
  %sub.2.i164 = sub nsw i32 %conv.2.i161, %conv6.2.i163
  %42 = icmp slt i32 %sub.2.i164, 0
  %neg.2.i165 = sub nsw i32 0, %sub.2.i164
  %43 = select i1 %42, i32 %neg.2.i165, i32 %sub.2.i164
  %add.2.i166 = add nsw i32 %add.1.i159, %43
  %arrayidx.3.i167 = getelementptr inbounds i8, i8* %pix1.addr.024.i146, i32 3
  %44 = load i8, i8* %arrayidx.3.i167, align 1, !tbaa !6
  %conv.3.i168 = zext i8 %44 to i32
  %arrayidx5.3.i169 = getelementptr inbounds i8, i8* %pix2.addr.023.i147, i32 3
  %45 = load i8, i8* %arrayidx5.3.i169, align 1, !tbaa !6
  %conv6.3.i170 = zext i8 %45 to i32
  %sub.3.i171 = sub nsw i32 %conv.3.i168, %conv6.3.i170
  %46 = icmp slt i32 %sub.3.i171, 0
  %neg.3.i172 = sub nsw i32 0, %sub.3.i171
  %47 = select i1 %46, i32 %neg.3.i172, i32 %sub.3.i171
  %add.3.i173 = add nsw i32 %add.2.i166, %47
  %arrayidx.4.i174 = getelementptr inbounds i8, i8* %pix1.addr.024.i146, i32 4
  %48 = load i8, i8* %arrayidx.4.i174, align 1, !tbaa !6
  %conv.4.i175 = zext i8 %48 to i32
  %arrayidx5.4.i176 = getelementptr inbounds i8, i8* %pix2.addr.023.i147, i32 4
  %49 = load i8, i8* %arrayidx5.4.i176, align 1, !tbaa !6
  %conv6.4.i177 = zext i8 %49 to i32
  %sub.4.i178 = sub nsw i32 %conv.4.i175, %conv6.4.i177
  %50 = icmp slt i32 %sub.4.i178, 0
  %neg.4.i179 = sub nsw i32 0, %sub.4.i178
  %51 = select i1 %50, i32 %neg.4.i179, i32 %sub.4.i178
  %add.4.i180 = add nsw i32 %add.3.i173, %51
  %arrayidx.5.i181 = getelementptr inbounds i8, i8* %pix1.addr.024.i146, i32 5
  %52 = load i8, i8* %arrayidx.5.i181, align 1, !tbaa !6
  %conv.5.i182 = zext i8 %52 to i32
  %arrayidx5.5.i183 = getelementptr inbounds i8, i8* %pix2.addr.023.i147, i32 5
  %53 = load i8, i8* %arrayidx5.5.i183, align 1, !tbaa !6
  %conv6.5.i184 = zext i8 %53 to i32
  %sub.5.i185 = sub nsw i32 %conv.5.i182, %conv6.5.i184
  %54 = icmp slt i32 %sub.5.i185, 0
  %neg.5.i186 = sub nsw i32 0, %sub.5.i185
  %55 = select i1 %54, i32 %neg.5.i186, i32 %sub.5.i185
  %add.5.i187 = add nsw i32 %add.4.i180, %55
  %arrayidx.6.i188 = getelementptr inbounds i8, i8* %pix1.addr.024.i146, i32 6
  %56 = load i8, i8* %arrayidx.6.i188, align 1, !tbaa !6
  %conv.6.i189 = zext i8 %56 to i32
  %arrayidx5.6.i190 = getelementptr inbounds i8, i8* %pix2.addr.023.i147, i32 6
  %57 = load i8, i8* %arrayidx5.6.i190, align 1, !tbaa !6
  %conv6.6.i191 = zext i8 %57 to i32
  %sub.6.i192 = sub nsw i32 %conv.6.i189, %conv6.6.i191
  %58 = icmp slt i32 %sub.6.i192, 0
  %neg.6.i193 = sub nsw i32 0, %sub.6.i192
  %59 = select i1 %58, i32 %neg.6.i193, i32 %sub.6.i192
  %add.6.i194 = add nsw i32 %add.5.i187, %59
  %arrayidx.7.i195 = getelementptr inbounds i8, i8* %pix1.addr.024.i146, i32 7
  %60 = load i8, i8* %arrayidx.7.i195, align 1, !tbaa !6
  %conv.7.i196 = zext i8 %60 to i32
  %arrayidx5.7.i197 = getelementptr inbounds i8, i8* %pix2.addr.023.i147, i32 7
  %61 = load i8, i8* %arrayidx5.7.i197, align 1, !tbaa !6
  %conv6.7.i198 = zext i8 %61 to i32
  %sub.7.i199 = sub nsw i32 %conv.7.i196, %conv6.7.i198
  %62 = icmp slt i32 %sub.7.i199, 0
  %neg.7.i200 = sub nsw i32 0, %sub.7.i199
  %63 = select i1 %62, i32 %neg.7.i200, i32 %sub.7.i199
  %add.7.i201 = add nsw i32 %add.6.i194, %63
  %add.ptr.i202 = getelementptr inbounds i8, i8* %pix1.addr.024.i146, i32 16
  %add.ptr7.i203 = getelementptr inbounds i8, i8* %pix2.addr.023.i147, i32 %i_stride
  %inc9.i204 = add nuw nsw i32 %y.026.i144, 1
  %exitcond.i205 = icmp eq i32 %inc9.i204, 16
  br i1 %exitcond.i205, label %x264_pixel_sad_8x16.exit207, label %for.cond1.preheader.i206

x264_pixel_sad_8x16.exit207:                      ; preds = %for.cond1.preheader.i206
  %arrayidx2 = getelementptr inbounds i32, i32* %scores, i32 1
  store i32 %add.7.i201, i32* %arrayidx2, align 4, !tbaa !13
  br label %for.cond1.preheader.i142

for.cond1.preheader.i142:                         ; preds = %for.cond1.preheader.i142, %x264_pixel_sad_8x16.exit207
  %y.026.i80 = phi i32 [ 0, %x264_pixel_sad_8x16.exit207 ], [ %inc9.i140, %for.cond1.preheader.i142 ]
  %i_sum.025.i81 = phi i32 [ 0, %x264_pixel_sad_8x16.exit207 ], [ %add.7.i137, %for.cond1.preheader.i142 ]
  %pix1.addr.024.i82 = phi i8* [ %fenc, %x264_pixel_sad_8x16.exit207 ], [ %add.ptr.i138, %for.cond1.preheader.i142 ]
  %pix2.addr.023.i83 = phi i8* [ %pix2, %x264_pixel_sad_8x16.exit207 ], [ %add.ptr7.i139, %for.cond1.preheader.i142 ]
  %64 = load i8, i8* %pix1.addr.024.i82, align 1, !tbaa !6
  %conv.i84 = zext i8 %64 to i32
  %65 = load i8, i8* %pix2.addr.023.i83, align 1, !tbaa !6
  %conv6.i85 = zext i8 %65 to i32
  %sub.i86 = sub nsw i32 %conv.i84, %conv6.i85
  %66 = icmp slt i32 %sub.i86, 0
  %neg.i87 = sub nsw i32 0, %sub.i86
  %67 = select i1 %66, i32 %neg.i87, i32 %sub.i86
  %add.i88 = add nsw i32 %67, %i_sum.025.i81
  %arrayidx.1.i89 = getelementptr inbounds i8, i8* %pix1.addr.024.i82, i32 1
  %68 = load i8, i8* %arrayidx.1.i89, align 1, !tbaa !6
  %conv.1.i90 = zext i8 %68 to i32
  %arrayidx5.1.i91 = getelementptr inbounds i8, i8* %pix2.addr.023.i83, i32 1
  %69 = load i8, i8* %arrayidx5.1.i91, align 1, !tbaa !6
  %conv6.1.i92 = zext i8 %69 to i32
  %sub.1.i93 = sub nsw i32 %conv.1.i90, %conv6.1.i92
  %70 = icmp slt i32 %sub.1.i93, 0
  %neg.1.i94 = sub nsw i32 0, %sub.1.i93
  %71 = select i1 %70, i32 %neg.1.i94, i32 %sub.1.i93
  %add.1.i95 = add nsw i32 %add.i88, %71
  %arrayidx.2.i96 = getelementptr inbounds i8, i8* %pix1.addr.024.i82, i32 2
  %72 = load i8, i8* %arrayidx.2.i96, align 1, !tbaa !6
  %conv.2.i97 = zext i8 %72 to i32
  %arrayidx5.2.i98 = getelementptr inbounds i8, i8* %pix2.addr.023.i83, i32 2
  %73 = load i8, i8* %arrayidx5.2.i98, align 1, !tbaa !6
  %conv6.2.i99 = zext i8 %73 to i32
  %sub.2.i100 = sub nsw i32 %conv.2.i97, %conv6.2.i99
  %74 = icmp slt i32 %sub.2.i100, 0
  %neg.2.i101 = sub nsw i32 0, %sub.2.i100
  %75 = select i1 %74, i32 %neg.2.i101, i32 %sub.2.i100
  %add.2.i102 = add nsw i32 %add.1.i95, %75
  %arrayidx.3.i103 = getelementptr inbounds i8, i8* %pix1.addr.024.i82, i32 3
  %76 = load i8, i8* %arrayidx.3.i103, align 1, !tbaa !6
  %conv.3.i104 = zext i8 %76 to i32
  %arrayidx5.3.i105 = getelementptr inbounds i8, i8* %pix2.addr.023.i83, i32 3
  %77 = load i8, i8* %arrayidx5.3.i105, align 1, !tbaa !6
  %conv6.3.i106 = zext i8 %77 to i32
  %sub.3.i107 = sub nsw i32 %conv.3.i104, %conv6.3.i106
  %78 = icmp slt i32 %sub.3.i107, 0
  %neg.3.i108 = sub nsw i32 0, %sub.3.i107
  %79 = select i1 %78, i32 %neg.3.i108, i32 %sub.3.i107
  %add.3.i109 = add nsw i32 %add.2.i102, %79
  %arrayidx.4.i110 = getelementptr inbounds i8, i8* %pix1.addr.024.i82, i32 4
  %80 = load i8, i8* %arrayidx.4.i110, align 1, !tbaa !6
  %conv.4.i111 = zext i8 %80 to i32
  %arrayidx5.4.i112 = getelementptr inbounds i8, i8* %pix2.addr.023.i83, i32 4
  %81 = load i8, i8* %arrayidx5.4.i112, align 1, !tbaa !6
  %conv6.4.i113 = zext i8 %81 to i32
  %sub.4.i114 = sub nsw i32 %conv.4.i111, %conv6.4.i113
  %82 = icmp slt i32 %sub.4.i114, 0
  %neg.4.i115 = sub nsw i32 0, %sub.4.i114
  %83 = select i1 %82, i32 %neg.4.i115, i32 %sub.4.i114
  %add.4.i116 = add nsw i32 %add.3.i109, %83
  %arrayidx.5.i117 = getelementptr inbounds i8, i8* %pix1.addr.024.i82, i32 5
  %84 = load i8, i8* %arrayidx.5.i117, align 1, !tbaa !6
  %conv.5.i118 = zext i8 %84 to i32
  %arrayidx5.5.i119 = getelementptr inbounds i8, i8* %pix2.addr.023.i83, i32 5
  %85 = load i8, i8* %arrayidx5.5.i119, align 1, !tbaa !6
  %conv6.5.i120 = zext i8 %85 to i32
  %sub.5.i121 = sub nsw i32 %conv.5.i118, %conv6.5.i120
  %86 = icmp slt i32 %sub.5.i121, 0
  %neg.5.i122 = sub nsw i32 0, %sub.5.i121
  %87 = select i1 %86, i32 %neg.5.i122, i32 %sub.5.i121
  %add.5.i123 = add nsw i32 %add.4.i116, %87
  %arrayidx.6.i124 = getelementptr inbounds i8, i8* %pix1.addr.024.i82, i32 6
  %88 = load i8, i8* %arrayidx.6.i124, align 1, !tbaa !6
  %conv.6.i125 = zext i8 %88 to i32
  %arrayidx5.6.i126 = getelementptr inbounds i8, i8* %pix2.addr.023.i83, i32 6
  %89 = load i8, i8* %arrayidx5.6.i126, align 1, !tbaa !6
  %conv6.6.i127 = zext i8 %89 to i32
  %sub.6.i128 = sub nsw i32 %conv.6.i125, %conv6.6.i127
  %90 = icmp slt i32 %sub.6.i128, 0
  %neg.6.i129 = sub nsw i32 0, %sub.6.i128
  %91 = select i1 %90, i32 %neg.6.i129, i32 %sub.6.i128
  %add.6.i130 = add nsw i32 %add.5.i123, %91
  %arrayidx.7.i131 = getelementptr inbounds i8, i8* %pix1.addr.024.i82, i32 7
  %92 = load i8, i8* %arrayidx.7.i131, align 1, !tbaa !6
  %conv.7.i132 = zext i8 %92 to i32
  %arrayidx5.7.i133 = getelementptr inbounds i8, i8* %pix2.addr.023.i83, i32 7
  %93 = load i8, i8* %arrayidx5.7.i133, align 1, !tbaa !6
  %conv6.7.i134 = zext i8 %93 to i32
  %sub.7.i135 = sub nsw i32 %conv.7.i132, %conv6.7.i134
  %94 = icmp slt i32 %sub.7.i135, 0
  %neg.7.i136 = sub nsw i32 0, %sub.7.i135
  %95 = select i1 %94, i32 %neg.7.i136, i32 %sub.7.i135
  %add.7.i137 = add nsw i32 %add.6.i130, %95
  %add.ptr.i138 = getelementptr inbounds i8, i8* %pix1.addr.024.i82, i32 16
  %add.ptr7.i139 = getelementptr inbounds i8, i8* %pix2.addr.023.i83, i32 %i_stride
  %inc9.i140 = add nuw nsw i32 %y.026.i80, 1
  %exitcond.i141 = icmp eq i32 %inc9.i140, 16
  br i1 %exitcond.i141, label %x264_pixel_sad_8x16.exit143, label %for.cond1.preheader.i142

x264_pixel_sad_8x16.exit143:                      ; preds = %for.cond1.preheader.i142
  %arrayidx4 = getelementptr inbounds i32, i32* %scores, i32 2
  store i32 %add.7.i137, i32* %arrayidx4, align 4, !tbaa !13
  br label %for.cond1.preheader.i78

for.cond1.preheader.i78:                          ; preds = %for.cond1.preheader.i78, %x264_pixel_sad_8x16.exit143
  %y.026.i16 = phi i32 [ 0, %x264_pixel_sad_8x16.exit143 ], [ %inc9.i76, %for.cond1.preheader.i78 ]
  %i_sum.025.i17 = phi i32 [ 0, %x264_pixel_sad_8x16.exit143 ], [ %add.7.i73, %for.cond1.preheader.i78 ]
  %pix1.addr.024.i18 = phi i8* [ %fenc, %x264_pixel_sad_8x16.exit143 ], [ %add.ptr.i74, %for.cond1.preheader.i78 ]
  %pix2.addr.023.i19 = phi i8* [ %pix3, %x264_pixel_sad_8x16.exit143 ], [ %add.ptr7.i75, %for.cond1.preheader.i78 ]
  %96 = load i8, i8* %pix1.addr.024.i18, align 1, !tbaa !6
  %conv.i20 = zext i8 %96 to i32
  %97 = load i8, i8* %pix2.addr.023.i19, align 1, !tbaa !6
  %conv6.i21 = zext i8 %97 to i32
  %sub.i22 = sub nsw i32 %conv.i20, %conv6.i21
  %98 = icmp slt i32 %sub.i22, 0
  %neg.i23 = sub nsw i32 0, %sub.i22
  %99 = select i1 %98, i32 %neg.i23, i32 %sub.i22
  %add.i24 = add nsw i32 %99, %i_sum.025.i17
  %arrayidx.1.i25 = getelementptr inbounds i8, i8* %pix1.addr.024.i18, i32 1
  %100 = load i8, i8* %arrayidx.1.i25, align 1, !tbaa !6
  %conv.1.i26 = zext i8 %100 to i32
  %arrayidx5.1.i27 = getelementptr inbounds i8, i8* %pix2.addr.023.i19, i32 1
  %101 = load i8, i8* %arrayidx5.1.i27, align 1, !tbaa !6
  %conv6.1.i28 = zext i8 %101 to i32
  %sub.1.i29 = sub nsw i32 %conv.1.i26, %conv6.1.i28
  %102 = icmp slt i32 %sub.1.i29, 0
  %neg.1.i30 = sub nsw i32 0, %sub.1.i29
  %103 = select i1 %102, i32 %neg.1.i30, i32 %sub.1.i29
  %add.1.i31 = add nsw i32 %add.i24, %103
  %arrayidx.2.i32 = getelementptr inbounds i8, i8* %pix1.addr.024.i18, i32 2
  %104 = load i8, i8* %arrayidx.2.i32, align 1, !tbaa !6
  %conv.2.i33 = zext i8 %104 to i32
  %arrayidx5.2.i34 = getelementptr inbounds i8, i8* %pix2.addr.023.i19, i32 2
  %105 = load i8, i8* %arrayidx5.2.i34, align 1, !tbaa !6
  %conv6.2.i35 = zext i8 %105 to i32
  %sub.2.i36 = sub nsw i32 %conv.2.i33, %conv6.2.i35
  %106 = icmp slt i32 %sub.2.i36, 0
  %neg.2.i37 = sub nsw i32 0, %sub.2.i36
  %107 = select i1 %106, i32 %neg.2.i37, i32 %sub.2.i36
  %add.2.i38 = add nsw i32 %add.1.i31, %107
  %arrayidx.3.i39 = getelementptr inbounds i8, i8* %pix1.addr.024.i18, i32 3
  %108 = load i8, i8* %arrayidx.3.i39, align 1, !tbaa !6
  %conv.3.i40 = zext i8 %108 to i32
  %arrayidx5.3.i41 = getelementptr inbounds i8, i8* %pix2.addr.023.i19, i32 3
  %109 = load i8, i8* %arrayidx5.3.i41, align 1, !tbaa !6
  %conv6.3.i42 = zext i8 %109 to i32
  %sub.3.i43 = sub nsw i32 %conv.3.i40, %conv6.3.i42
  %110 = icmp slt i32 %sub.3.i43, 0
  %neg.3.i44 = sub nsw i32 0, %sub.3.i43
  %111 = select i1 %110, i32 %neg.3.i44, i32 %sub.3.i43
  %add.3.i45 = add nsw i32 %add.2.i38, %111
  %arrayidx.4.i46 = getelementptr inbounds i8, i8* %pix1.addr.024.i18, i32 4
  %112 = load i8, i8* %arrayidx.4.i46, align 1, !tbaa !6
  %conv.4.i47 = zext i8 %112 to i32
  %arrayidx5.4.i48 = getelementptr inbounds i8, i8* %pix2.addr.023.i19, i32 4
  %113 = load i8, i8* %arrayidx5.4.i48, align 1, !tbaa !6
  %conv6.4.i49 = zext i8 %113 to i32
  %sub.4.i50 = sub nsw i32 %conv.4.i47, %conv6.4.i49
  %114 = icmp slt i32 %sub.4.i50, 0
  %neg.4.i51 = sub nsw i32 0, %sub.4.i50
  %115 = select i1 %114, i32 %neg.4.i51, i32 %sub.4.i50
  %add.4.i52 = add nsw i32 %add.3.i45, %115
  %arrayidx.5.i53 = getelementptr inbounds i8, i8* %pix1.addr.024.i18, i32 5
  %116 = load i8, i8* %arrayidx.5.i53, align 1, !tbaa !6
  %conv.5.i54 = zext i8 %116 to i32
  %arrayidx5.5.i55 = getelementptr inbounds i8, i8* %pix2.addr.023.i19, i32 5
  %117 = load i8, i8* %arrayidx5.5.i55, align 1, !tbaa !6
  %conv6.5.i56 = zext i8 %117 to i32
  %sub.5.i57 = sub nsw i32 %conv.5.i54, %conv6.5.i56
  %118 = icmp slt i32 %sub.5.i57, 0
  %neg.5.i58 = sub nsw i32 0, %sub.5.i57
  %119 = select i1 %118, i32 %neg.5.i58, i32 %sub.5.i57
  %add.5.i59 = add nsw i32 %add.4.i52, %119
  %arrayidx.6.i60 = getelementptr inbounds i8, i8* %pix1.addr.024.i18, i32 6
  %120 = load i8, i8* %arrayidx.6.i60, align 1, !tbaa !6
  %conv.6.i61 = zext i8 %120 to i32
  %arrayidx5.6.i62 = getelementptr inbounds i8, i8* %pix2.addr.023.i19, i32 6
  %121 = load i8, i8* %arrayidx5.6.i62, align 1, !tbaa !6
  %conv6.6.i63 = zext i8 %121 to i32
  %sub.6.i64 = sub nsw i32 %conv.6.i61, %conv6.6.i63
  %122 = icmp slt i32 %sub.6.i64, 0
  %neg.6.i65 = sub nsw i32 0, %sub.6.i64
  %123 = select i1 %122, i32 %neg.6.i65, i32 %sub.6.i64
  %add.6.i66 = add nsw i32 %add.5.i59, %123
  %arrayidx.7.i67 = getelementptr inbounds i8, i8* %pix1.addr.024.i18, i32 7
  %124 = load i8, i8* %arrayidx.7.i67, align 1, !tbaa !6
  %conv.7.i68 = zext i8 %124 to i32
  %arrayidx5.7.i69 = getelementptr inbounds i8, i8* %pix2.addr.023.i19, i32 7
  %125 = load i8, i8* %arrayidx5.7.i69, align 1, !tbaa !6
  %conv6.7.i70 = zext i8 %125 to i32
  %sub.7.i71 = sub nsw i32 %conv.7.i68, %conv6.7.i70
  %126 = icmp slt i32 %sub.7.i71, 0
  %neg.7.i72 = sub nsw i32 0, %sub.7.i71
  %127 = select i1 %126, i32 %neg.7.i72, i32 %sub.7.i71
  %add.7.i73 = add nsw i32 %add.6.i66, %127
  %add.ptr.i74 = getelementptr inbounds i8, i8* %pix1.addr.024.i18, i32 16
  %add.ptr7.i75 = getelementptr inbounds i8, i8* %pix2.addr.023.i19, i32 %i_stride
  %inc9.i76 = add nuw nsw i32 %y.026.i16, 1
  %exitcond.i77 = icmp eq i32 %inc9.i76, 16
  br i1 %exitcond.i77, label %x264_pixel_sad_8x16.exit79, label %for.cond1.preheader.i78

x264_pixel_sad_8x16.exit79:                       ; preds = %for.cond1.preheader.i78
  %arrayidx6 = getelementptr inbounds i32, i32* %scores, i32 3
  store i32 %add.7.i73, i32* %arrayidx6, align 4, !tbaa !13
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @x264_pixel_sad_x4_8x8(i8* nocapture readonly %fenc, i8* nocapture readonly %pix0, i8* nocapture readonly %pix1, i8* nocapture readonly %pix2, i8* nocapture readonly %pix3, i32 %i_stride, i32* nocapture %scores) #2 {
entry:
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.cond1.preheader.i, %entry
  %y.026.i = phi i32 [ 0, %entry ], [ %inc9.i, %for.cond1.preheader.i ]
  %i_sum.025.i = phi i32 [ 0, %entry ], [ %add.7.i, %for.cond1.preheader.i ]
  %pix1.addr.024.i = phi i8* [ %fenc, %entry ], [ %add.ptr.i, %for.cond1.preheader.i ]
  %pix2.addr.023.i = phi i8* [ %pix0, %entry ], [ %add.ptr7.i, %for.cond1.preheader.i ]
  %0 = load i8, i8* %pix1.addr.024.i, align 1, !tbaa !6
  %conv.i = zext i8 %0 to i32
  %1 = load i8, i8* %pix2.addr.023.i, align 1, !tbaa !6
  %conv6.i = zext i8 %1 to i32
  %sub.i = sub nsw i32 %conv.i, %conv6.i
  %2 = icmp slt i32 %sub.i, 0
  %neg.i = sub nsw i32 0, %sub.i
  %3 = select i1 %2, i32 %neg.i, i32 %sub.i
  %add.i = add nsw i32 %3, %i_sum.025.i
  %arrayidx.1.i = getelementptr inbounds i8, i8* %pix1.addr.024.i, i32 1
  %4 = load i8, i8* %arrayidx.1.i, align 1, !tbaa !6
  %conv.1.i = zext i8 %4 to i32
  %arrayidx5.1.i = getelementptr inbounds i8, i8* %pix2.addr.023.i, i32 1
  %5 = load i8, i8* %arrayidx5.1.i, align 1, !tbaa !6
  %conv6.1.i = zext i8 %5 to i32
  %sub.1.i = sub nsw i32 %conv.1.i, %conv6.1.i
  %6 = icmp slt i32 %sub.1.i, 0
  %neg.1.i = sub nsw i32 0, %sub.1.i
  %7 = select i1 %6, i32 %neg.1.i, i32 %sub.1.i
  %add.1.i = add nsw i32 %add.i, %7
  %arrayidx.2.i = getelementptr inbounds i8, i8* %pix1.addr.024.i, i32 2
  %8 = load i8, i8* %arrayidx.2.i, align 1, !tbaa !6
  %conv.2.i = zext i8 %8 to i32
  %arrayidx5.2.i = getelementptr inbounds i8, i8* %pix2.addr.023.i, i32 2
  %9 = load i8, i8* %arrayidx5.2.i, align 1, !tbaa !6
  %conv6.2.i = zext i8 %9 to i32
  %sub.2.i = sub nsw i32 %conv.2.i, %conv6.2.i
  %10 = icmp slt i32 %sub.2.i, 0
  %neg.2.i = sub nsw i32 0, %sub.2.i
  %11 = select i1 %10, i32 %neg.2.i, i32 %sub.2.i
  %add.2.i = add nsw i32 %add.1.i, %11
  %arrayidx.3.i = getelementptr inbounds i8, i8* %pix1.addr.024.i, i32 3
  %12 = load i8, i8* %arrayidx.3.i, align 1, !tbaa !6
  %conv.3.i = zext i8 %12 to i32
  %arrayidx5.3.i = getelementptr inbounds i8, i8* %pix2.addr.023.i, i32 3
  %13 = load i8, i8* %arrayidx5.3.i, align 1, !tbaa !6
  %conv6.3.i = zext i8 %13 to i32
  %sub.3.i = sub nsw i32 %conv.3.i, %conv6.3.i
  %14 = icmp slt i32 %sub.3.i, 0
  %neg.3.i = sub nsw i32 0, %sub.3.i
  %15 = select i1 %14, i32 %neg.3.i, i32 %sub.3.i
  %add.3.i = add nsw i32 %add.2.i, %15
  %arrayidx.4.i = getelementptr inbounds i8, i8* %pix1.addr.024.i, i32 4
  %16 = load i8, i8* %arrayidx.4.i, align 1, !tbaa !6
  %conv.4.i = zext i8 %16 to i32
  %arrayidx5.4.i = getelementptr inbounds i8, i8* %pix2.addr.023.i, i32 4
  %17 = load i8, i8* %arrayidx5.4.i, align 1, !tbaa !6
  %conv6.4.i = zext i8 %17 to i32
  %sub.4.i = sub nsw i32 %conv.4.i, %conv6.4.i
  %18 = icmp slt i32 %sub.4.i, 0
  %neg.4.i = sub nsw i32 0, %sub.4.i
  %19 = select i1 %18, i32 %neg.4.i, i32 %sub.4.i
  %add.4.i = add nsw i32 %add.3.i, %19
  %arrayidx.5.i = getelementptr inbounds i8, i8* %pix1.addr.024.i, i32 5
  %20 = load i8, i8* %arrayidx.5.i, align 1, !tbaa !6
  %conv.5.i = zext i8 %20 to i32
  %arrayidx5.5.i = getelementptr inbounds i8, i8* %pix2.addr.023.i, i32 5
  %21 = load i8, i8* %arrayidx5.5.i, align 1, !tbaa !6
  %conv6.5.i = zext i8 %21 to i32
  %sub.5.i = sub nsw i32 %conv.5.i, %conv6.5.i
  %22 = icmp slt i32 %sub.5.i, 0
  %neg.5.i = sub nsw i32 0, %sub.5.i
  %23 = select i1 %22, i32 %neg.5.i, i32 %sub.5.i
  %add.5.i = add nsw i32 %add.4.i, %23
  %arrayidx.6.i = getelementptr inbounds i8, i8* %pix1.addr.024.i, i32 6
  %24 = load i8, i8* %arrayidx.6.i, align 1, !tbaa !6
  %conv.6.i = zext i8 %24 to i32
  %arrayidx5.6.i = getelementptr inbounds i8, i8* %pix2.addr.023.i, i32 6
  %25 = load i8, i8* %arrayidx5.6.i, align 1, !tbaa !6
  %conv6.6.i = zext i8 %25 to i32
  %sub.6.i = sub nsw i32 %conv.6.i, %conv6.6.i
  %26 = icmp slt i32 %sub.6.i, 0
  %neg.6.i = sub nsw i32 0, %sub.6.i
  %27 = select i1 %26, i32 %neg.6.i, i32 %sub.6.i
  %add.6.i = add nsw i32 %add.5.i, %27
  %arrayidx.7.i = getelementptr inbounds i8, i8* %pix1.addr.024.i, i32 7
  %28 = load i8, i8* %arrayidx.7.i, align 1, !tbaa !6
  %conv.7.i = zext i8 %28 to i32
  %arrayidx5.7.i = getelementptr inbounds i8, i8* %pix2.addr.023.i, i32 7
  %29 = load i8, i8* %arrayidx5.7.i, align 1, !tbaa !6
  %conv6.7.i = zext i8 %29 to i32
  %sub.7.i = sub nsw i32 %conv.7.i, %conv6.7.i
  %30 = icmp slt i32 %sub.7.i, 0
  %neg.7.i = sub nsw i32 0, %sub.7.i
  %31 = select i1 %30, i32 %neg.7.i, i32 %sub.7.i
  %add.7.i = add nsw i32 %add.6.i, %31
  %add.ptr.i = getelementptr inbounds i8, i8* %pix1.addr.024.i, i32 16
  %add.ptr7.i = getelementptr inbounds i8, i8* %pix2.addr.023.i, i32 %i_stride
  %inc9.i = add nuw nsw i32 %y.026.i, 1
  %exitcond.i = icmp eq i32 %inc9.i, 8
  br i1 %exitcond.i, label %x264_pixel_sad_8x8.exit, label %for.cond1.preheader.i

x264_pixel_sad_8x8.exit:                          ; preds = %for.cond1.preheader.i
  store i32 %add.7.i, i32* %scores, align 4, !tbaa !13
  br label %for.cond1.preheader.i206

for.cond1.preheader.i206:                         ; preds = %for.cond1.preheader.i206, %x264_pixel_sad_8x8.exit
  %y.026.i144 = phi i32 [ 0, %x264_pixel_sad_8x8.exit ], [ %inc9.i204, %for.cond1.preheader.i206 ]
  %i_sum.025.i145 = phi i32 [ 0, %x264_pixel_sad_8x8.exit ], [ %add.7.i201, %for.cond1.preheader.i206 ]
  %pix1.addr.024.i146 = phi i8* [ %fenc, %x264_pixel_sad_8x8.exit ], [ %add.ptr.i202, %for.cond1.preheader.i206 ]
  %pix2.addr.023.i147 = phi i8* [ %pix1, %x264_pixel_sad_8x8.exit ], [ %add.ptr7.i203, %for.cond1.preheader.i206 ]
  %32 = load i8, i8* %pix1.addr.024.i146, align 1, !tbaa !6
  %conv.i148 = zext i8 %32 to i32
  %33 = load i8, i8* %pix2.addr.023.i147, align 1, !tbaa !6
  %conv6.i149 = zext i8 %33 to i32
  %sub.i150 = sub nsw i32 %conv.i148, %conv6.i149
  %34 = icmp slt i32 %sub.i150, 0
  %neg.i151 = sub nsw i32 0, %sub.i150
  %35 = select i1 %34, i32 %neg.i151, i32 %sub.i150
  %add.i152 = add nsw i32 %35, %i_sum.025.i145
  %arrayidx.1.i153 = getelementptr inbounds i8, i8* %pix1.addr.024.i146, i32 1
  %36 = load i8, i8* %arrayidx.1.i153, align 1, !tbaa !6
  %conv.1.i154 = zext i8 %36 to i32
  %arrayidx5.1.i155 = getelementptr inbounds i8, i8* %pix2.addr.023.i147, i32 1
  %37 = load i8, i8* %arrayidx5.1.i155, align 1, !tbaa !6
  %conv6.1.i156 = zext i8 %37 to i32
  %sub.1.i157 = sub nsw i32 %conv.1.i154, %conv6.1.i156
  %38 = icmp slt i32 %sub.1.i157, 0
  %neg.1.i158 = sub nsw i32 0, %sub.1.i157
  %39 = select i1 %38, i32 %neg.1.i158, i32 %sub.1.i157
  %add.1.i159 = add nsw i32 %add.i152, %39
  %arrayidx.2.i160 = getelementptr inbounds i8, i8* %pix1.addr.024.i146, i32 2
  %40 = load i8, i8* %arrayidx.2.i160, align 1, !tbaa !6
  %conv.2.i161 = zext i8 %40 to i32
  %arrayidx5.2.i162 = getelementptr inbounds i8, i8* %pix2.addr.023.i147, i32 2
  %41 = load i8, i8* %arrayidx5.2.i162, align 1, !tbaa !6
  %conv6.2.i163 = zext i8 %41 to i32
  %sub.2.i164 = sub nsw i32 %conv.2.i161, %conv6.2.i163
  %42 = icmp slt i32 %sub.2.i164, 0
  %neg.2.i165 = sub nsw i32 0, %sub.2.i164
  %43 = select i1 %42, i32 %neg.2.i165, i32 %sub.2.i164
  %add.2.i166 = add nsw i32 %add.1.i159, %43
  %arrayidx.3.i167 = getelementptr inbounds i8, i8* %pix1.addr.024.i146, i32 3
  %44 = load i8, i8* %arrayidx.3.i167, align 1, !tbaa !6
  %conv.3.i168 = zext i8 %44 to i32
  %arrayidx5.3.i169 = getelementptr inbounds i8, i8* %pix2.addr.023.i147, i32 3
  %45 = load i8, i8* %arrayidx5.3.i169, align 1, !tbaa !6
  %conv6.3.i170 = zext i8 %45 to i32
  %sub.3.i171 = sub nsw i32 %conv.3.i168, %conv6.3.i170
  %46 = icmp slt i32 %sub.3.i171, 0
  %neg.3.i172 = sub nsw i32 0, %sub.3.i171
  %47 = select i1 %46, i32 %neg.3.i172, i32 %sub.3.i171
  %add.3.i173 = add nsw i32 %add.2.i166, %47
  %arrayidx.4.i174 = getelementptr inbounds i8, i8* %pix1.addr.024.i146, i32 4
  %48 = load i8, i8* %arrayidx.4.i174, align 1, !tbaa !6
  %conv.4.i175 = zext i8 %48 to i32
  %arrayidx5.4.i176 = getelementptr inbounds i8, i8* %pix2.addr.023.i147, i32 4
  %49 = load i8, i8* %arrayidx5.4.i176, align 1, !tbaa !6
  %conv6.4.i177 = zext i8 %49 to i32
  %sub.4.i178 = sub nsw i32 %conv.4.i175, %conv6.4.i177
  %50 = icmp slt i32 %sub.4.i178, 0
  %neg.4.i179 = sub nsw i32 0, %sub.4.i178
  %51 = select i1 %50, i32 %neg.4.i179, i32 %sub.4.i178
  %add.4.i180 = add nsw i32 %add.3.i173, %51
  %arrayidx.5.i181 = getelementptr inbounds i8, i8* %pix1.addr.024.i146, i32 5
  %52 = load i8, i8* %arrayidx.5.i181, align 1, !tbaa !6
  %conv.5.i182 = zext i8 %52 to i32
  %arrayidx5.5.i183 = getelementptr inbounds i8, i8* %pix2.addr.023.i147, i32 5
  %53 = load i8, i8* %arrayidx5.5.i183, align 1, !tbaa !6
  %conv6.5.i184 = zext i8 %53 to i32
  %sub.5.i185 = sub nsw i32 %conv.5.i182, %conv6.5.i184
  %54 = icmp slt i32 %sub.5.i185, 0
  %neg.5.i186 = sub nsw i32 0, %sub.5.i185
  %55 = select i1 %54, i32 %neg.5.i186, i32 %sub.5.i185
  %add.5.i187 = add nsw i32 %add.4.i180, %55
  %arrayidx.6.i188 = getelementptr inbounds i8, i8* %pix1.addr.024.i146, i32 6
  %56 = load i8, i8* %arrayidx.6.i188, align 1, !tbaa !6
  %conv.6.i189 = zext i8 %56 to i32
  %arrayidx5.6.i190 = getelementptr inbounds i8, i8* %pix2.addr.023.i147, i32 6
  %57 = load i8, i8* %arrayidx5.6.i190, align 1, !tbaa !6
  %conv6.6.i191 = zext i8 %57 to i32
  %sub.6.i192 = sub nsw i32 %conv.6.i189, %conv6.6.i191
  %58 = icmp slt i32 %sub.6.i192, 0
  %neg.6.i193 = sub nsw i32 0, %sub.6.i192
  %59 = select i1 %58, i32 %neg.6.i193, i32 %sub.6.i192
  %add.6.i194 = add nsw i32 %add.5.i187, %59
  %arrayidx.7.i195 = getelementptr inbounds i8, i8* %pix1.addr.024.i146, i32 7
  %60 = load i8, i8* %arrayidx.7.i195, align 1, !tbaa !6
  %conv.7.i196 = zext i8 %60 to i32
  %arrayidx5.7.i197 = getelementptr inbounds i8, i8* %pix2.addr.023.i147, i32 7
  %61 = load i8, i8* %arrayidx5.7.i197, align 1, !tbaa !6
  %conv6.7.i198 = zext i8 %61 to i32
  %sub.7.i199 = sub nsw i32 %conv.7.i196, %conv6.7.i198
  %62 = icmp slt i32 %sub.7.i199, 0
  %neg.7.i200 = sub nsw i32 0, %sub.7.i199
  %63 = select i1 %62, i32 %neg.7.i200, i32 %sub.7.i199
  %add.7.i201 = add nsw i32 %add.6.i194, %63
  %add.ptr.i202 = getelementptr inbounds i8, i8* %pix1.addr.024.i146, i32 16
  %add.ptr7.i203 = getelementptr inbounds i8, i8* %pix2.addr.023.i147, i32 %i_stride
  %inc9.i204 = add nuw nsw i32 %y.026.i144, 1
  %exitcond.i205 = icmp eq i32 %inc9.i204, 8
  br i1 %exitcond.i205, label %x264_pixel_sad_8x8.exit207, label %for.cond1.preheader.i206

x264_pixel_sad_8x8.exit207:                       ; preds = %for.cond1.preheader.i206
  %arrayidx2 = getelementptr inbounds i32, i32* %scores, i32 1
  store i32 %add.7.i201, i32* %arrayidx2, align 4, !tbaa !13
  br label %for.cond1.preheader.i142

for.cond1.preheader.i142:                         ; preds = %for.cond1.preheader.i142, %x264_pixel_sad_8x8.exit207
  %y.026.i80 = phi i32 [ 0, %x264_pixel_sad_8x8.exit207 ], [ %inc9.i140, %for.cond1.preheader.i142 ]
  %i_sum.025.i81 = phi i32 [ 0, %x264_pixel_sad_8x8.exit207 ], [ %add.7.i137, %for.cond1.preheader.i142 ]
  %pix1.addr.024.i82 = phi i8* [ %fenc, %x264_pixel_sad_8x8.exit207 ], [ %add.ptr.i138, %for.cond1.preheader.i142 ]
  %pix2.addr.023.i83 = phi i8* [ %pix2, %x264_pixel_sad_8x8.exit207 ], [ %add.ptr7.i139, %for.cond1.preheader.i142 ]
  %64 = load i8, i8* %pix1.addr.024.i82, align 1, !tbaa !6
  %conv.i84 = zext i8 %64 to i32
  %65 = load i8, i8* %pix2.addr.023.i83, align 1, !tbaa !6
  %conv6.i85 = zext i8 %65 to i32
  %sub.i86 = sub nsw i32 %conv.i84, %conv6.i85
  %66 = icmp slt i32 %sub.i86, 0
  %neg.i87 = sub nsw i32 0, %sub.i86
  %67 = select i1 %66, i32 %neg.i87, i32 %sub.i86
  %add.i88 = add nsw i32 %67, %i_sum.025.i81
  %arrayidx.1.i89 = getelementptr inbounds i8, i8* %pix1.addr.024.i82, i32 1
  %68 = load i8, i8* %arrayidx.1.i89, align 1, !tbaa !6
  %conv.1.i90 = zext i8 %68 to i32
  %arrayidx5.1.i91 = getelementptr inbounds i8, i8* %pix2.addr.023.i83, i32 1
  %69 = load i8, i8* %arrayidx5.1.i91, align 1, !tbaa !6
  %conv6.1.i92 = zext i8 %69 to i32
  %sub.1.i93 = sub nsw i32 %conv.1.i90, %conv6.1.i92
  %70 = icmp slt i32 %sub.1.i93, 0
  %neg.1.i94 = sub nsw i32 0, %sub.1.i93
  %71 = select i1 %70, i32 %neg.1.i94, i32 %sub.1.i93
  %add.1.i95 = add nsw i32 %add.i88, %71
  %arrayidx.2.i96 = getelementptr inbounds i8, i8* %pix1.addr.024.i82, i32 2
  %72 = load i8, i8* %arrayidx.2.i96, align 1, !tbaa !6
  %conv.2.i97 = zext i8 %72 to i32
  %arrayidx5.2.i98 = getelementptr inbounds i8, i8* %pix2.addr.023.i83, i32 2
  %73 = load i8, i8* %arrayidx5.2.i98, align 1, !tbaa !6
  %conv6.2.i99 = zext i8 %73 to i32
  %sub.2.i100 = sub nsw i32 %conv.2.i97, %conv6.2.i99
  %74 = icmp slt i32 %sub.2.i100, 0
  %neg.2.i101 = sub nsw i32 0, %sub.2.i100
  %75 = select i1 %74, i32 %neg.2.i101, i32 %sub.2.i100
  %add.2.i102 = add nsw i32 %add.1.i95, %75
  %arrayidx.3.i103 = getelementptr inbounds i8, i8* %pix1.addr.024.i82, i32 3
  %76 = load i8, i8* %arrayidx.3.i103, align 1, !tbaa !6
  %conv.3.i104 = zext i8 %76 to i32
  %arrayidx5.3.i105 = getelementptr inbounds i8, i8* %pix2.addr.023.i83, i32 3
  %77 = load i8, i8* %arrayidx5.3.i105, align 1, !tbaa !6
  %conv6.3.i106 = zext i8 %77 to i32
  %sub.3.i107 = sub nsw i32 %conv.3.i104, %conv6.3.i106
  %78 = icmp slt i32 %sub.3.i107, 0
  %neg.3.i108 = sub nsw i32 0, %sub.3.i107
  %79 = select i1 %78, i32 %neg.3.i108, i32 %sub.3.i107
  %add.3.i109 = add nsw i32 %add.2.i102, %79
  %arrayidx.4.i110 = getelementptr inbounds i8, i8* %pix1.addr.024.i82, i32 4
  %80 = load i8, i8* %arrayidx.4.i110, align 1, !tbaa !6
  %conv.4.i111 = zext i8 %80 to i32
  %arrayidx5.4.i112 = getelementptr inbounds i8, i8* %pix2.addr.023.i83, i32 4
  %81 = load i8, i8* %arrayidx5.4.i112, align 1, !tbaa !6
  %conv6.4.i113 = zext i8 %81 to i32
  %sub.4.i114 = sub nsw i32 %conv.4.i111, %conv6.4.i113
  %82 = icmp slt i32 %sub.4.i114, 0
  %neg.4.i115 = sub nsw i32 0, %sub.4.i114
  %83 = select i1 %82, i32 %neg.4.i115, i32 %sub.4.i114
  %add.4.i116 = add nsw i32 %add.3.i109, %83
  %arrayidx.5.i117 = getelementptr inbounds i8, i8* %pix1.addr.024.i82, i32 5
  %84 = load i8, i8* %arrayidx.5.i117, align 1, !tbaa !6
  %conv.5.i118 = zext i8 %84 to i32
  %arrayidx5.5.i119 = getelementptr inbounds i8, i8* %pix2.addr.023.i83, i32 5
  %85 = load i8, i8* %arrayidx5.5.i119, align 1, !tbaa !6
  %conv6.5.i120 = zext i8 %85 to i32
  %sub.5.i121 = sub nsw i32 %conv.5.i118, %conv6.5.i120
  %86 = icmp slt i32 %sub.5.i121, 0
  %neg.5.i122 = sub nsw i32 0, %sub.5.i121
  %87 = select i1 %86, i32 %neg.5.i122, i32 %sub.5.i121
  %add.5.i123 = add nsw i32 %add.4.i116, %87
  %arrayidx.6.i124 = getelementptr inbounds i8, i8* %pix1.addr.024.i82, i32 6
  %88 = load i8, i8* %arrayidx.6.i124, align 1, !tbaa !6
  %conv.6.i125 = zext i8 %88 to i32
  %arrayidx5.6.i126 = getelementptr inbounds i8, i8* %pix2.addr.023.i83, i32 6
  %89 = load i8, i8* %arrayidx5.6.i126, align 1, !tbaa !6
  %conv6.6.i127 = zext i8 %89 to i32
  %sub.6.i128 = sub nsw i32 %conv.6.i125, %conv6.6.i127
  %90 = icmp slt i32 %sub.6.i128, 0
  %neg.6.i129 = sub nsw i32 0, %sub.6.i128
  %91 = select i1 %90, i32 %neg.6.i129, i32 %sub.6.i128
  %add.6.i130 = add nsw i32 %add.5.i123, %91
  %arrayidx.7.i131 = getelementptr inbounds i8, i8* %pix1.addr.024.i82, i32 7
  %92 = load i8, i8* %arrayidx.7.i131, align 1, !tbaa !6
  %conv.7.i132 = zext i8 %92 to i32
  %arrayidx5.7.i133 = getelementptr inbounds i8, i8* %pix2.addr.023.i83, i32 7
  %93 = load i8, i8* %arrayidx5.7.i133, align 1, !tbaa !6
  %conv6.7.i134 = zext i8 %93 to i32
  %sub.7.i135 = sub nsw i32 %conv.7.i132, %conv6.7.i134
  %94 = icmp slt i32 %sub.7.i135, 0
  %neg.7.i136 = sub nsw i32 0, %sub.7.i135
  %95 = select i1 %94, i32 %neg.7.i136, i32 %sub.7.i135
  %add.7.i137 = add nsw i32 %add.6.i130, %95
  %add.ptr.i138 = getelementptr inbounds i8, i8* %pix1.addr.024.i82, i32 16
  %add.ptr7.i139 = getelementptr inbounds i8, i8* %pix2.addr.023.i83, i32 %i_stride
  %inc9.i140 = add nuw nsw i32 %y.026.i80, 1
  %exitcond.i141 = icmp eq i32 %inc9.i140, 8
  br i1 %exitcond.i141, label %x264_pixel_sad_8x8.exit143, label %for.cond1.preheader.i142

x264_pixel_sad_8x8.exit143:                       ; preds = %for.cond1.preheader.i142
  %arrayidx4 = getelementptr inbounds i32, i32* %scores, i32 2
  store i32 %add.7.i137, i32* %arrayidx4, align 4, !tbaa !13
  br label %for.cond1.preheader.i78

for.cond1.preheader.i78:                          ; preds = %for.cond1.preheader.i78, %x264_pixel_sad_8x8.exit143
  %y.026.i16 = phi i32 [ 0, %x264_pixel_sad_8x8.exit143 ], [ %inc9.i76, %for.cond1.preheader.i78 ]
  %i_sum.025.i17 = phi i32 [ 0, %x264_pixel_sad_8x8.exit143 ], [ %add.7.i73, %for.cond1.preheader.i78 ]
  %pix1.addr.024.i18 = phi i8* [ %fenc, %x264_pixel_sad_8x8.exit143 ], [ %add.ptr.i74, %for.cond1.preheader.i78 ]
  %pix2.addr.023.i19 = phi i8* [ %pix3, %x264_pixel_sad_8x8.exit143 ], [ %add.ptr7.i75, %for.cond1.preheader.i78 ]
  %96 = load i8, i8* %pix1.addr.024.i18, align 1, !tbaa !6
  %conv.i20 = zext i8 %96 to i32
  %97 = load i8, i8* %pix2.addr.023.i19, align 1, !tbaa !6
  %conv6.i21 = zext i8 %97 to i32
  %sub.i22 = sub nsw i32 %conv.i20, %conv6.i21
  %98 = icmp slt i32 %sub.i22, 0
  %neg.i23 = sub nsw i32 0, %sub.i22
  %99 = select i1 %98, i32 %neg.i23, i32 %sub.i22
  %add.i24 = add nsw i32 %99, %i_sum.025.i17
  %arrayidx.1.i25 = getelementptr inbounds i8, i8* %pix1.addr.024.i18, i32 1
  %100 = load i8, i8* %arrayidx.1.i25, align 1, !tbaa !6
  %conv.1.i26 = zext i8 %100 to i32
  %arrayidx5.1.i27 = getelementptr inbounds i8, i8* %pix2.addr.023.i19, i32 1
  %101 = load i8, i8* %arrayidx5.1.i27, align 1, !tbaa !6
  %conv6.1.i28 = zext i8 %101 to i32
  %sub.1.i29 = sub nsw i32 %conv.1.i26, %conv6.1.i28
  %102 = icmp slt i32 %sub.1.i29, 0
  %neg.1.i30 = sub nsw i32 0, %sub.1.i29
  %103 = select i1 %102, i32 %neg.1.i30, i32 %sub.1.i29
  %add.1.i31 = add nsw i32 %add.i24, %103
  %arrayidx.2.i32 = getelementptr inbounds i8, i8* %pix1.addr.024.i18, i32 2
  %104 = load i8, i8* %arrayidx.2.i32, align 1, !tbaa !6
  %conv.2.i33 = zext i8 %104 to i32
  %arrayidx5.2.i34 = getelementptr inbounds i8, i8* %pix2.addr.023.i19, i32 2
  %105 = load i8, i8* %arrayidx5.2.i34, align 1, !tbaa !6
  %conv6.2.i35 = zext i8 %105 to i32
  %sub.2.i36 = sub nsw i32 %conv.2.i33, %conv6.2.i35
  %106 = icmp slt i32 %sub.2.i36, 0
  %neg.2.i37 = sub nsw i32 0, %sub.2.i36
  %107 = select i1 %106, i32 %neg.2.i37, i32 %sub.2.i36
  %add.2.i38 = add nsw i32 %add.1.i31, %107
  %arrayidx.3.i39 = getelementptr inbounds i8, i8* %pix1.addr.024.i18, i32 3
  %108 = load i8, i8* %arrayidx.3.i39, align 1, !tbaa !6
  %conv.3.i40 = zext i8 %108 to i32
  %arrayidx5.3.i41 = getelementptr inbounds i8, i8* %pix2.addr.023.i19, i32 3
  %109 = load i8, i8* %arrayidx5.3.i41, align 1, !tbaa !6
  %conv6.3.i42 = zext i8 %109 to i32
  %sub.3.i43 = sub nsw i32 %conv.3.i40, %conv6.3.i42
  %110 = icmp slt i32 %sub.3.i43, 0
  %neg.3.i44 = sub nsw i32 0, %sub.3.i43
  %111 = select i1 %110, i32 %neg.3.i44, i32 %sub.3.i43
  %add.3.i45 = add nsw i32 %add.2.i38, %111
  %arrayidx.4.i46 = getelementptr inbounds i8, i8* %pix1.addr.024.i18, i32 4
  %112 = load i8, i8* %arrayidx.4.i46, align 1, !tbaa !6
  %conv.4.i47 = zext i8 %112 to i32
  %arrayidx5.4.i48 = getelementptr inbounds i8, i8* %pix2.addr.023.i19, i32 4
  %113 = load i8, i8* %arrayidx5.4.i48, align 1, !tbaa !6
  %conv6.4.i49 = zext i8 %113 to i32
  %sub.4.i50 = sub nsw i32 %conv.4.i47, %conv6.4.i49
  %114 = icmp slt i32 %sub.4.i50, 0
  %neg.4.i51 = sub nsw i32 0, %sub.4.i50
  %115 = select i1 %114, i32 %neg.4.i51, i32 %sub.4.i50
  %add.4.i52 = add nsw i32 %add.3.i45, %115
  %arrayidx.5.i53 = getelementptr inbounds i8, i8* %pix1.addr.024.i18, i32 5
  %116 = load i8, i8* %arrayidx.5.i53, align 1, !tbaa !6
  %conv.5.i54 = zext i8 %116 to i32
  %arrayidx5.5.i55 = getelementptr inbounds i8, i8* %pix2.addr.023.i19, i32 5
  %117 = load i8, i8* %arrayidx5.5.i55, align 1, !tbaa !6
  %conv6.5.i56 = zext i8 %117 to i32
  %sub.5.i57 = sub nsw i32 %conv.5.i54, %conv6.5.i56
  %118 = icmp slt i32 %sub.5.i57, 0
  %neg.5.i58 = sub nsw i32 0, %sub.5.i57
  %119 = select i1 %118, i32 %neg.5.i58, i32 %sub.5.i57
  %add.5.i59 = add nsw i32 %add.4.i52, %119
  %arrayidx.6.i60 = getelementptr inbounds i8, i8* %pix1.addr.024.i18, i32 6
  %120 = load i8, i8* %arrayidx.6.i60, align 1, !tbaa !6
  %conv.6.i61 = zext i8 %120 to i32
  %arrayidx5.6.i62 = getelementptr inbounds i8, i8* %pix2.addr.023.i19, i32 6
  %121 = load i8, i8* %arrayidx5.6.i62, align 1, !tbaa !6
  %conv6.6.i63 = zext i8 %121 to i32
  %sub.6.i64 = sub nsw i32 %conv.6.i61, %conv6.6.i63
  %122 = icmp slt i32 %sub.6.i64, 0
  %neg.6.i65 = sub nsw i32 0, %sub.6.i64
  %123 = select i1 %122, i32 %neg.6.i65, i32 %sub.6.i64
  %add.6.i66 = add nsw i32 %add.5.i59, %123
  %arrayidx.7.i67 = getelementptr inbounds i8, i8* %pix1.addr.024.i18, i32 7
  %124 = load i8, i8* %arrayidx.7.i67, align 1, !tbaa !6
  %conv.7.i68 = zext i8 %124 to i32
  %arrayidx5.7.i69 = getelementptr inbounds i8, i8* %pix2.addr.023.i19, i32 7
  %125 = load i8, i8* %arrayidx5.7.i69, align 1, !tbaa !6
  %conv6.7.i70 = zext i8 %125 to i32
  %sub.7.i71 = sub nsw i32 %conv.7.i68, %conv6.7.i70
  %126 = icmp slt i32 %sub.7.i71, 0
  %neg.7.i72 = sub nsw i32 0, %sub.7.i71
  %127 = select i1 %126, i32 %neg.7.i72, i32 %sub.7.i71
  %add.7.i73 = add nsw i32 %add.6.i66, %127
  %add.ptr.i74 = getelementptr inbounds i8, i8* %pix1.addr.024.i18, i32 16
  %add.ptr7.i75 = getelementptr inbounds i8, i8* %pix2.addr.023.i19, i32 %i_stride
  %inc9.i76 = add nuw nsw i32 %y.026.i16, 1
  %exitcond.i77 = icmp eq i32 %inc9.i76, 8
  br i1 %exitcond.i77, label %x264_pixel_sad_8x8.exit79, label %for.cond1.preheader.i78

x264_pixel_sad_8x8.exit79:                        ; preds = %for.cond1.preheader.i78
  %arrayidx6 = getelementptr inbounds i32, i32* %scores, i32 3
  store i32 %add.7.i73, i32* %arrayidx6, align 4, !tbaa !13
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @x264_pixel_sad_x4_8x4(i8* nocapture readonly %fenc, i8* nocapture readonly %pix0, i8* nocapture readonly %pix1, i8* nocapture readonly %pix2, i8* nocapture readonly %pix3, i32 %i_stride, i32* nocapture %scores) #2 {
entry:
  %call = tail call i32 @x264_pixel_sad_8x4(i8* %fenc, i32 16, i8* %pix0, i32 %i_stride)
  store i32 %call, i32* %scores, align 4, !tbaa !13
  %call1 = tail call i32 @x264_pixel_sad_8x4(i8* %fenc, i32 16, i8* %pix1, i32 %i_stride)
  %arrayidx2 = getelementptr inbounds i32, i32* %scores, i32 1
  store i32 %call1, i32* %arrayidx2, align 4, !tbaa !13
  %call3 = tail call i32 @x264_pixel_sad_8x4(i8* %fenc, i32 16, i8* %pix2, i32 %i_stride)
  %arrayidx4 = getelementptr inbounds i32, i32* %scores, i32 2
  store i32 %call3, i32* %arrayidx4, align 4, !tbaa !13
  %call5 = tail call i32 @x264_pixel_sad_8x4(i8* %fenc, i32 16, i8* %pix3, i32 %i_stride)
  %arrayidx6 = getelementptr inbounds i32, i32* %scores, i32 3
  store i32 %call5, i32* %arrayidx6, align 4, !tbaa !13
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @x264_pixel_sad_x4_4x8(i8* nocapture readonly %fenc, i8* nocapture readonly %pix0, i8* nocapture readonly %pix1, i8* nocapture readonly %pix2, i8* nocapture readonly %pix3, i32 %i_stride, i32* nocapture %scores) #2 {
entry:
  %call = tail call i32 @x264_pixel_sad_4x8(i8* %fenc, i32 16, i8* %pix0, i32 %i_stride)
  store i32 %call, i32* %scores, align 4, !tbaa !13
  %call1 = tail call i32 @x264_pixel_sad_4x8(i8* %fenc, i32 16, i8* %pix1, i32 %i_stride)
  %arrayidx2 = getelementptr inbounds i32, i32* %scores, i32 1
  store i32 %call1, i32* %arrayidx2, align 4, !tbaa !13
  %call3 = tail call i32 @x264_pixel_sad_4x8(i8* %fenc, i32 16, i8* %pix2, i32 %i_stride)
  %arrayidx4 = getelementptr inbounds i32, i32* %scores, i32 2
  store i32 %call3, i32* %arrayidx4, align 4, !tbaa !13
  %call5 = tail call i32 @x264_pixel_sad_4x8(i8* %fenc, i32 16, i8* %pix3, i32 %i_stride)
  %arrayidx6 = getelementptr inbounds i32, i32* %scores, i32 3
  store i32 %call5, i32* %arrayidx6, align 4, !tbaa !13
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @x264_pixel_sad_x4_4x4(i8* nocapture readonly %fenc, i8* nocapture readonly %pix0, i8* nocapture readonly %pix1, i8* nocapture readonly %pix2, i8* nocapture readonly %pix3, i32 %i_stride, i32* nocapture %scores) #2 {
entry:
  %call = tail call i32 @x264_pixel_sad_4x4(i8* %fenc, i32 16, i8* %pix0, i32 %i_stride)
  store i32 %call, i32* %scores, align 4, !tbaa !13
  %call1 = tail call i32 @x264_pixel_sad_4x4(i8* %fenc, i32 16, i8* %pix1, i32 %i_stride)
  %arrayidx2 = getelementptr inbounds i32, i32* %scores, i32 1
  store i32 %call1, i32* %arrayidx2, align 4, !tbaa !13
  %call3 = tail call i32 @x264_pixel_sad_4x4(i8* %fenc, i32 16, i8* %pix2, i32 %i_stride)
  %arrayidx4 = getelementptr inbounds i32, i32* %scores, i32 2
  store i32 %call3, i32* %arrayidx4, align 4, !tbaa !13
  %call5 = tail call i32 @x264_pixel_sad_4x4(i8* %fenc, i32 16, i8* %pix3, i32 %i_stride)
  %arrayidx6 = getelementptr inbounds i32, i32* %scores, i32 3
  store i32 %call5, i32* %arrayidx6, align 4, !tbaa !13
  ret void
}

; Function Attrs: norecurse nounwind readonly
define internal i32 @x264_pixel_ssd_16x16(i8* nocapture readonly %pix1, i32 %i_stride_pix1, i8* nocapture readonly %pix2, i32 %i_stride_pix2) #3 {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader, %entry
  %pix1.addr.028 = phi i8* [ %pix1, %entry ], [ %add.ptr, %for.cond1.preheader ]
  %y.027 = phi i32 [ 0, %entry ], [ %inc9, %for.cond1.preheader ]
  %i_sum.026 = phi i32 [ 0, %entry ], [ %add.15, %for.cond1.preheader ]
  %pix2.addr.025 = phi i8* [ %pix2, %entry ], [ %add.ptr7, %for.cond1.preheader ]
  %0 = load i8, i8* %pix1.addr.028, align 1, !tbaa !6
  %conv = zext i8 %0 to i32
  %1 = load i8, i8* %pix2.addr.025, align 1, !tbaa !6
  %conv6 = zext i8 %1 to i32
  %sub = sub nsw i32 %conv, %conv6
  %mul = mul nsw i32 %sub, %sub
  %add = add nsw i32 %mul, %i_sum.026
  %arrayidx.1 = getelementptr inbounds i8, i8* %pix1.addr.028, i32 1
  %2 = load i8, i8* %arrayidx.1, align 1, !tbaa !6
  %conv.1 = zext i8 %2 to i32
  %arrayidx5.1 = getelementptr inbounds i8, i8* %pix2.addr.025, i32 1
  %3 = load i8, i8* %arrayidx5.1, align 1, !tbaa !6
  %conv6.1 = zext i8 %3 to i32
  %sub.1 = sub nsw i32 %conv.1, %conv6.1
  %mul.1 = mul nsw i32 %sub.1, %sub.1
  %add.1 = add nsw i32 %mul.1, %add
  %arrayidx.2 = getelementptr inbounds i8, i8* %pix1.addr.028, i32 2
  %4 = load i8, i8* %arrayidx.2, align 1, !tbaa !6
  %conv.2 = zext i8 %4 to i32
  %arrayidx5.2 = getelementptr inbounds i8, i8* %pix2.addr.025, i32 2
  %5 = load i8, i8* %arrayidx5.2, align 1, !tbaa !6
  %conv6.2 = zext i8 %5 to i32
  %sub.2 = sub nsw i32 %conv.2, %conv6.2
  %mul.2 = mul nsw i32 %sub.2, %sub.2
  %add.2 = add nsw i32 %mul.2, %add.1
  %arrayidx.3 = getelementptr inbounds i8, i8* %pix1.addr.028, i32 3
  %6 = load i8, i8* %arrayidx.3, align 1, !tbaa !6
  %conv.3 = zext i8 %6 to i32
  %arrayidx5.3 = getelementptr inbounds i8, i8* %pix2.addr.025, i32 3
  %7 = load i8, i8* %arrayidx5.3, align 1, !tbaa !6
  %conv6.3 = zext i8 %7 to i32
  %sub.3 = sub nsw i32 %conv.3, %conv6.3
  %mul.3 = mul nsw i32 %sub.3, %sub.3
  %add.3 = add nsw i32 %mul.3, %add.2
  %arrayidx.4 = getelementptr inbounds i8, i8* %pix1.addr.028, i32 4
  %8 = load i8, i8* %arrayidx.4, align 1, !tbaa !6
  %conv.4 = zext i8 %8 to i32
  %arrayidx5.4 = getelementptr inbounds i8, i8* %pix2.addr.025, i32 4
  %9 = load i8, i8* %arrayidx5.4, align 1, !tbaa !6
  %conv6.4 = zext i8 %9 to i32
  %sub.4 = sub nsw i32 %conv.4, %conv6.4
  %mul.4 = mul nsw i32 %sub.4, %sub.4
  %add.4 = add nsw i32 %mul.4, %add.3
  %arrayidx.5 = getelementptr inbounds i8, i8* %pix1.addr.028, i32 5
  %10 = load i8, i8* %arrayidx.5, align 1, !tbaa !6
  %conv.5 = zext i8 %10 to i32
  %arrayidx5.5 = getelementptr inbounds i8, i8* %pix2.addr.025, i32 5
  %11 = load i8, i8* %arrayidx5.5, align 1, !tbaa !6
  %conv6.5 = zext i8 %11 to i32
  %sub.5 = sub nsw i32 %conv.5, %conv6.5
  %mul.5 = mul nsw i32 %sub.5, %sub.5
  %add.5 = add nsw i32 %mul.5, %add.4
  %arrayidx.6 = getelementptr inbounds i8, i8* %pix1.addr.028, i32 6
  %12 = load i8, i8* %arrayidx.6, align 1, !tbaa !6
  %conv.6 = zext i8 %12 to i32
  %arrayidx5.6 = getelementptr inbounds i8, i8* %pix2.addr.025, i32 6
  %13 = load i8, i8* %arrayidx5.6, align 1, !tbaa !6
  %conv6.6 = zext i8 %13 to i32
  %sub.6 = sub nsw i32 %conv.6, %conv6.6
  %mul.6 = mul nsw i32 %sub.6, %sub.6
  %add.6 = add nsw i32 %mul.6, %add.5
  %arrayidx.7 = getelementptr inbounds i8, i8* %pix1.addr.028, i32 7
  %14 = load i8, i8* %arrayidx.7, align 1, !tbaa !6
  %conv.7 = zext i8 %14 to i32
  %arrayidx5.7 = getelementptr inbounds i8, i8* %pix2.addr.025, i32 7
  %15 = load i8, i8* %arrayidx5.7, align 1, !tbaa !6
  %conv6.7 = zext i8 %15 to i32
  %sub.7 = sub nsw i32 %conv.7, %conv6.7
  %mul.7 = mul nsw i32 %sub.7, %sub.7
  %add.7 = add nsw i32 %mul.7, %add.6
  %arrayidx.8 = getelementptr inbounds i8, i8* %pix1.addr.028, i32 8
  %16 = load i8, i8* %arrayidx.8, align 1, !tbaa !6
  %conv.8 = zext i8 %16 to i32
  %arrayidx5.8 = getelementptr inbounds i8, i8* %pix2.addr.025, i32 8
  %17 = load i8, i8* %arrayidx5.8, align 1, !tbaa !6
  %conv6.8 = zext i8 %17 to i32
  %sub.8 = sub nsw i32 %conv.8, %conv6.8
  %mul.8 = mul nsw i32 %sub.8, %sub.8
  %add.8 = add nsw i32 %mul.8, %add.7
  %arrayidx.9 = getelementptr inbounds i8, i8* %pix1.addr.028, i32 9
  %18 = load i8, i8* %arrayidx.9, align 1, !tbaa !6
  %conv.9 = zext i8 %18 to i32
  %arrayidx5.9 = getelementptr inbounds i8, i8* %pix2.addr.025, i32 9
  %19 = load i8, i8* %arrayidx5.9, align 1, !tbaa !6
  %conv6.9 = zext i8 %19 to i32
  %sub.9 = sub nsw i32 %conv.9, %conv6.9
  %mul.9 = mul nsw i32 %sub.9, %sub.9
  %add.9 = add nsw i32 %mul.9, %add.8
  %arrayidx.10 = getelementptr inbounds i8, i8* %pix1.addr.028, i32 10
  %20 = load i8, i8* %arrayidx.10, align 1, !tbaa !6
  %conv.10 = zext i8 %20 to i32
  %arrayidx5.10 = getelementptr inbounds i8, i8* %pix2.addr.025, i32 10
  %21 = load i8, i8* %arrayidx5.10, align 1, !tbaa !6
  %conv6.10 = zext i8 %21 to i32
  %sub.10 = sub nsw i32 %conv.10, %conv6.10
  %mul.10 = mul nsw i32 %sub.10, %sub.10
  %add.10 = add nsw i32 %mul.10, %add.9
  %arrayidx.11 = getelementptr inbounds i8, i8* %pix1.addr.028, i32 11
  %22 = load i8, i8* %arrayidx.11, align 1, !tbaa !6
  %conv.11 = zext i8 %22 to i32
  %arrayidx5.11 = getelementptr inbounds i8, i8* %pix2.addr.025, i32 11
  %23 = load i8, i8* %arrayidx5.11, align 1, !tbaa !6
  %conv6.11 = zext i8 %23 to i32
  %sub.11 = sub nsw i32 %conv.11, %conv6.11
  %mul.11 = mul nsw i32 %sub.11, %sub.11
  %add.11 = add nsw i32 %mul.11, %add.10
  %arrayidx.12 = getelementptr inbounds i8, i8* %pix1.addr.028, i32 12
  %24 = load i8, i8* %arrayidx.12, align 1, !tbaa !6
  %conv.12 = zext i8 %24 to i32
  %arrayidx5.12 = getelementptr inbounds i8, i8* %pix2.addr.025, i32 12
  %25 = load i8, i8* %arrayidx5.12, align 1, !tbaa !6
  %conv6.12 = zext i8 %25 to i32
  %sub.12 = sub nsw i32 %conv.12, %conv6.12
  %mul.12 = mul nsw i32 %sub.12, %sub.12
  %add.12 = add nsw i32 %mul.12, %add.11
  %arrayidx.13 = getelementptr inbounds i8, i8* %pix1.addr.028, i32 13
  %26 = load i8, i8* %arrayidx.13, align 1, !tbaa !6
  %conv.13 = zext i8 %26 to i32
  %arrayidx5.13 = getelementptr inbounds i8, i8* %pix2.addr.025, i32 13
  %27 = load i8, i8* %arrayidx5.13, align 1, !tbaa !6
  %conv6.13 = zext i8 %27 to i32
  %sub.13 = sub nsw i32 %conv.13, %conv6.13
  %mul.13 = mul nsw i32 %sub.13, %sub.13
  %add.13 = add nsw i32 %mul.13, %add.12
  %arrayidx.14 = getelementptr inbounds i8, i8* %pix1.addr.028, i32 14
  %28 = load i8, i8* %arrayidx.14, align 1, !tbaa !6
  %conv.14 = zext i8 %28 to i32
  %arrayidx5.14 = getelementptr inbounds i8, i8* %pix2.addr.025, i32 14
  %29 = load i8, i8* %arrayidx5.14, align 1, !tbaa !6
  %conv6.14 = zext i8 %29 to i32
  %sub.14 = sub nsw i32 %conv.14, %conv6.14
  %mul.14 = mul nsw i32 %sub.14, %sub.14
  %add.14 = add nsw i32 %mul.14, %add.13
  %arrayidx.15 = getelementptr inbounds i8, i8* %pix1.addr.028, i32 15
  %30 = load i8, i8* %arrayidx.15, align 1, !tbaa !6
  %conv.15 = zext i8 %30 to i32
  %arrayidx5.15 = getelementptr inbounds i8, i8* %pix2.addr.025, i32 15
  %31 = load i8, i8* %arrayidx5.15, align 1, !tbaa !6
  %conv6.15 = zext i8 %31 to i32
  %sub.15 = sub nsw i32 %conv.15, %conv6.15
  %mul.15 = mul nsw i32 %sub.15, %sub.15
  %add.15 = add nsw i32 %mul.15, %add.14
  %add.ptr = getelementptr inbounds i8, i8* %pix1.addr.028, i32 %i_stride_pix1
  %add.ptr7 = getelementptr inbounds i8, i8* %pix2.addr.025, i32 %i_stride_pix2
  %inc9 = add nuw nsw i32 %y.027, 1
  %exitcond = icmp eq i32 %inc9, 16
  br i1 %exitcond, label %for.cond.cleanup, label %for.cond1.preheader

for.cond.cleanup:                                 ; preds = %for.cond1.preheader
  ret i32 %add.15
}

; Function Attrs: norecurse nounwind readonly
define internal i32 @x264_pixel_ssd_16x8(i8* nocapture readonly %pix1, i32 %i_stride_pix1, i8* nocapture readonly %pix2, i32 %i_stride_pix2) #3 {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader, %entry
  %pix1.addr.028 = phi i8* [ %pix1, %entry ], [ %add.ptr, %for.cond1.preheader ]
  %y.027 = phi i32 [ 0, %entry ], [ %inc9, %for.cond1.preheader ]
  %i_sum.026 = phi i32 [ 0, %entry ], [ %add.15, %for.cond1.preheader ]
  %pix2.addr.025 = phi i8* [ %pix2, %entry ], [ %add.ptr7, %for.cond1.preheader ]
  %0 = load i8, i8* %pix1.addr.028, align 1, !tbaa !6
  %conv = zext i8 %0 to i32
  %1 = load i8, i8* %pix2.addr.025, align 1, !tbaa !6
  %conv6 = zext i8 %1 to i32
  %sub = sub nsw i32 %conv, %conv6
  %mul = mul nsw i32 %sub, %sub
  %add = add nsw i32 %mul, %i_sum.026
  %arrayidx.1 = getelementptr inbounds i8, i8* %pix1.addr.028, i32 1
  %2 = load i8, i8* %arrayidx.1, align 1, !tbaa !6
  %conv.1 = zext i8 %2 to i32
  %arrayidx5.1 = getelementptr inbounds i8, i8* %pix2.addr.025, i32 1
  %3 = load i8, i8* %arrayidx5.1, align 1, !tbaa !6
  %conv6.1 = zext i8 %3 to i32
  %sub.1 = sub nsw i32 %conv.1, %conv6.1
  %mul.1 = mul nsw i32 %sub.1, %sub.1
  %add.1 = add nsw i32 %mul.1, %add
  %arrayidx.2 = getelementptr inbounds i8, i8* %pix1.addr.028, i32 2
  %4 = load i8, i8* %arrayidx.2, align 1, !tbaa !6
  %conv.2 = zext i8 %4 to i32
  %arrayidx5.2 = getelementptr inbounds i8, i8* %pix2.addr.025, i32 2
  %5 = load i8, i8* %arrayidx5.2, align 1, !tbaa !6
  %conv6.2 = zext i8 %5 to i32
  %sub.2 = sub nsw i32 %conv.2, %conv6.2
  %mul.2 = mul nsw i32 %sub.2, %sub.2
  %add.2 = add nsw i32 %mul.2, %add.1
  %arrayidx.3 = getelementptr inbounds i8, i8* %pix1.addr.028, i32 3
  %6 = load i8, i8* %arrayidx.3, align 1, !tbaa !6
  %conv.3 = zext i8 %6 to i32
  %arrayidx5.3 = getelementptr inbounds i8, i8* %pix2.addr.025, i32 3
  %7 = load i8, i8* %arrayidx5.3, align 1, !tbaa !6
  %conv6.3 = zext i8 %7 to i32
  %sub.3 = sub nsw i32 %conv.3, %conv6.3
  %mul.3 = mul nsw i32 %sub.3, %sub.3
  %add.3 = add nsw i32 %mul.3, %add.2
  %arrayidx.4 = getelementptr inbounds i8, i8* %pix1.addr.028, i32 4
  %8 = load i8, i8* %arrayidx.4, align 1, !tbaa !6
  %conv.4 = zext i8 %8 to i32
  %arrayidx5.4 = getelementptr inbounds i8, i8* %pix2.addr.025, i32 4
  %9 = load i8, i8* %arrayidx5.4, align 1, !tbaa !6
  %conv6.4 = zext i8 %9 to i32
  %sub.4 = sub nsw i32 %conv.4, %conv6.4
  %mul.4 = mul nsw i32 %sub.4, %sub.4
  %add.4 = add nsw i32 %mul.4, %add.3
  %arrayidx.5 = getelementptr inbounds i8, i8* %pix1.addr.028, i32 5
  %10 = load i8, i8* %arrayidx.5, align 1, !tbaa !6
  %conv.5 = zext i8 %10 to i32
  %arrayidx5.5 = getelementptr inbounds i8, i8* %pix2.addr.025, i32 5
  %11 = load i8, i8* %arrayidx5.5, align 1, !tbaa !6
  %conv6.5 = zext i8 %11 to i32
  %sub.5 = sub nsw i32 %conv.5, %conv6.5
  %mul.5 = mul nsw i32 %sub.5, %sub.5
  %add.5 = add nsw i32 %mul.5, %add.4
  %arrayidx.6 = getelementptr inbounds i8, i8* %pix1.addr.028, i32 6
  %12 = load i8, i8* %arrayidx.6, align 1, !tbaa !6
  %conv.6 = zext i8 %12 to i32
  %arrayidx5.6 = getelementptr inbounds i8, i8* %pix2.addr.025, i32 6
  %13 = load i8, i8* %arrayidx5.6, align 1, !tbaa !6
  %conv6.6 = zext i8 %13 to i32
  %sub.6 = sub nsw i32 %conv.6, %conv6.6
  %mul.6 = mul nsw i32 %sub.6, %sub.6
  %add.6 = add nsw i32 %mul.6, %add.5
  %arrayidx.7 = getelementptr inbounds i8, i8* %pix1.addr.028, i32 7
  %14 = load i8, i8* %arrayidx.7, align 1, !tbaa !6
  %conv.7 = zext i8 %14 to i32
  %arrayidx5.7 = getelementptr inbounds i8, i8* %pix2.addr.025, i32 7
  %15 = load i8, i8* %arrayidx5.7, align 1, !tbaa !6
  %conv6.7 = zext i8 %15 to i32
  %sub.7 = sub nsw i32 %conv.7, %conv6.7
  %mul.7 = mul nsw i32 %sub.7, %sub.7
  %add.7 = add nsw i32 %mul.7, %add.6
  %arrayidx.8 = getelementptr inbounds i8, i8* %pix1.addr.028, i32 8
  %16 = load i8, i8* %arrayidx.8, align 1, !tbaa !6
  %conv.8 = zext i8 %16 to i32
  %arrayidx5.8 = getelementptr inbounds i8, i8* %pix2.addr.025, i32 8
  %17 = load i8, i8* %arrayidx5.8, align 1, !tbaa !6
  %conv6.8 = zext i8 %17 to i32
  %sub.8 = sub nsw i32 %conv.8, %conv6.8
  %mul.8 = mul nsw i32 %sub.8, %sub.8
  %add.8 = add nsw i32 %mul.8, %add.7
  %arrayidx.9 = getelementptr inbounds i8, i8* %pix1.addr.028, i32 9
  %18 = load i8, i8* %arrayidx.9, align 1, !tbaa !6
  %conv.9 = zext i8 %18 to i32
  %arrayidx5.9 = getelementptr inbounds i8, i8* %pix2.addr.025, i32 9
  %19 = load i8, i8* %arrayidx5.9, align 1, !tbaa !6
  %conv6.9 = zext i8 %19 to i32
  %sub.9 = sub nsw i32 %conv.9, %conv6.9
  %mul.9 = mul nsw i32 %sub.9, %sub.9
  %add.9 = add nsw i32 %mul.9, %add.8
  %arrayidx.10 = getelementptr inbounds i8, i8* %pix1.addr.028, i32 10
  %20 = load i8, i8* %arrayidx.10, align 1, !tbaa !6
  %conv.10 = zext i8 %20 to i32
  %arrayidx5.10 = getelementptr inbounds i8, i8* %pix2.addr.025, i32 10
  %21 = load i8, i8* %arrayidx5.10, align 1, !tbaa !6
  %conv6.10 = zext i8 %21 to i32
  %sub.10 = sub nsw i32 %conv.10, %conv6.10
  %mul.10 = mul nsw i32 %sub.10, %sub.10
  %add.10 = add nsw i32 %mul.10, %add.9
  %arrayidx.11 = getelementptr inbounds i8, i8* %pix1.addr.028, i32 11
  %22 = load i8, i8* %arrayidx.11, align 1, !tbaa !6
  %conv.11 = zext i8 %22 to i32
  %arrayidx5.11 = getelementptr inbounds i8, i8* %pix2.addr.025, i32 11
  %23 = load i8, i8* %arrayidx5.11, align 1, !tbaa !6
  %conv6.11 = zext i8 %23 to i32
  %sub.11 = sub nsw i32 %conv.11, %conv6.11
  %mul.11 = mul nsw i32 %sub.11, %sub.11
  %add.11 = add nsw i32 %mul.11, %add.10
  %arrayidx.12 = getelementptr inbounds i8, i8* %pix1.addr.028, i32 12
  %24 = load i8, i8* %arrayidx.12, align 1, !tbaa !6
  %conv.12 = zext i8 %24 to i32
  %arrayidx5.12 = getelementptr inbounds i8, i8* %pix2.addr.025, i32 12
  %25 = load i8, i8* %arrayidx5.12, align 1, !tbaa !6
  %conv6.12 = zext i8 %25 to i32
  %sub.12 = sub nsw i32 %conv.12, %conv6.12
  %mul.12 = mul nsw i32 %sub.12, %sub.12
  %add.12 = add nsw i32 %mul.12, %add.11
  %arrayidx.13 = getelementptr inbounds i8, i8* %pix1.addr.028, i32 13
  %26 = load i8, i8* %arrayidx.13, align 1, !tbaa !6
  %conv.13 = zext i8 %26 to i32
  %arrayidx5.13 = getelementptr inbounds i8, i8* %pix2.addr.025, i32 13
  %27 = load i8, i8* %arrayidx5.13, align 1, !tbaa !6
  %conv6.13 = zext i8 %27 to i32
  %sub.13 = sub nsw i32 %conv.13, %conv6.13
  %mul.13 = mul nsw i32 %sub.13, %sub.13
  %add.13 = add nsw i32 %mul.13, %add.12
  %arrayidx.14 = getelementptr inbounds i8, i8* %pix1.addr.028, i32 14
  %28 = load i8, i8* %arrayidx.14, align 1, !tbaa !6
  %conv.14 = zext i8 %28 to i32
  %arrayidx5.14 = getelementptr inbounds i8, i8* %pix2.addr.025, i32 14
  %29 = load i8, i8* %arrayidx5.14, align 1, !tbaa !6
  %conv6.14 = zext i8 %29 to i32
  %sub.14 = sub nsw i32 %conv.14, %conv6.14
  %mul.14 = mul nsw i32 %sub.14, %sub.14
  %add.14 = add nsw i32 %mul.14, %add.13
  %arrayidx.15 = getelementptr inbounds i8, i8* %pix1.addr.028, i32 15
  %30 = load i8, i8* %arrayidx.15, align 1, !tbaa !6
  %conv.15 = zext i8 %30 to i32
  %arrayidx5.15 = getelementptr inbounds i8, i8* %pix2.addr.025, i32 15
  %31 = load i8, i8* %arrayidx5.15, align 1, !tbaa !6
  %conv6.15 = zext i8 %31 to i32
  %sub.15 = sub nsw i32 %conv.15, %conv6.15
  %mul.15 = mul nsw i32 %sub.15, %sub.15
  %add.15 = add nsw i32 %mul.15, %add.14
  %add.ptr = getelementptr inbounds i8, i8* %pix1.addr.028, i32 %i_stride_pix1
  %add.ptr7 = getelementptr inbounds i8, i8* %pix2.addr.025, i32 %i_stride_pix2
  %inc9 = add nuw nsw i32 %y.027, 1
  %exitcond = icmp eq i32 %inc9, 8
  br i1 %exitcond, label %for.cond.cleanup, label %for.cond1.preheader

for.cond.cleanup:                                 ; preds = %for.cond1.preheader
  ret i32 %add.15
}

; Function Attrs: norecurse nounwind readonly
define internal i32 @x264_pixel_ssd_8x16(i8* nocapture readonly %pix1, i32 %i_stride_pix1, i8* nocapture readonly %pix2, i32 %i_stride_pix2) #3 {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader, %entry
  %pix1.addr.028 = phi i8* [ %pix1, %entry ], [ %add.ptr, %for.cond1.preheader ]
  %y.027 = phi i32 [ 0, %entry ], [ %inc9, %for.cond1.preheader ]
  %i_sum.026 = phi i32 [ 0, %entry ], [ %add.7, %for.cond1.preheader ]
  %pix2.addr.025 = phi i8* [ %pix2, %entry ], [ %add.ptr7, %for.cond1.preheader ]
  %0 = load i8, i8* %pix1.addr.028, align 1, !tbaa !6
  %conv = zext i8 %0 to i32
  %1 = load i8, i8* %pix2.addr.025, align 1, !tbaa !6
  %conv6 = zext i8 %1 to i32
  %sub = sub nsw i32 %conv, %conv6
  %mul = mul nsw i32 %sub, %sub
  %add = add nsw i32 %mul, %i_sum.026
  %arrayidx.1 = getelementptr inbounds i8, i8* %pix1.addr.028, i32 1
  %2 = load i8, i8* %arrayidx.1, align 1, !tbaa !6
  %conv.1 = zext i8 %2 to i32
  %arrayidx5.1 = getelementptr inbounds i8, i8* %pix2.addr.025, i32 1
  %3 = load i8, i8* %arrayidx5.1, align 1, !tbaa !6
  %conv6.1 = zext i8 %3 to i32
  %sub.1 = sub nsw i32 %conv.1, %conv6.1
  %mul.1 = mul nsw i32 %sub.1, %sub.1
  %add.1 = add nsw i32 %mul.1, %add
  %arrayidx.2 = getelementptr inbounds i8, i8* %pix1.addr.028, i32 2
  %4 = load i8, i8* %arrayidx.2, align 1, !tbaa !6
  %conv.2 = zext i8 %4 to i32
  %arrayidx5.2 = getelementptr inbounds i8, i8* %pix2.addr.025, i32 2
  %5 = load i8, i8* %arrayidx5.2, align 1, !tbaa !6
  %conv6.2 = zext i8 %5 to i32
  %sub.2 = sub nsw i32 %conv.2, %conv6.2
  %mul.2 = mul nsw i32 %sub.2, %sub.2
  %add.2 = add nsw i32 %mul.2, %add.1
  %arrayidx.3 = getelementptr inbounds i8, i8* %pix1.addr.028, i32 3
  %6 = load i8, i8* %arrayidx.3, align 1, !tbaa !6
  %conv.3 = zext i8 %6 to i32
  %arrayidx5.3 = getelementptr inbounds i8, i8* %pix2.addr.025, i32 3
  %7 = load i8, i8* %arrayidx5.3, align 1, !tbaa !6
  %conv6.3 = zext i8 %7 to i32
  %sub.3 = sub nsw i32 %conv.3, %conv6.3
  %mul.3 = mul nsw i32 %sub.3, %sub.3
  %add.3 = add nsw i32 %mul.3, %add.2
  %arrayidx.4 = getelementptr inbounds i8, i8* %pix1.addr.028, i32 4
  %8 = load i8, i8* %arrayidx.4, align 1, !tbaa !6
  %conv.4 = zext i8 %8 to i32
  %arrayidx5.4 = getelementptr inbounds i8, i8* %pix2.addr.025, i32 4
  %9 = load i8, i8* %arrayidx5.4, align 1, !tbaa !6
  %conv6.4 = zext i8 %9 to i32
  %sub.4 = sub nsw i32 %conv.4, %conv6.4
  %mul.4 = mul nsw i32 %sub.4, %sub.4
  %add.4 = add nsw i32 %mul.4, %add.3
  %arrayidx.5 = getelementptr inbounds i8, i8* %pix1.addr.028, i32 5
  %10 = load i8, i8* %arrayidx.5, align 1, !tbaa !6
  %conv.5 = zext i8 %10 to i32
  %arrayidx5.5 = getelementptr inbounds i8, i8* %pix2.addr.025, i32 5
  %11 = load i8, i8* %arrayidx5.5, align 1, !tbaa !6
  %conv6.5 = zext i8 %11 to i32
  %sub.5 = sub nsw i32 %conv.5, %conv6.5
  %mul.5 = mul nsw i32 %sub.5, %sub.5
  %add.5 = add nsw i32 %mul.5, %add.4
  %arrayidx.6 = getelementptr inbounds i8, i8* %pix1.addr.028, i32 6
  %12 = load i8, i8* %arrayidx.6, align 1, !tbaa !6
  %conv.6 = zext i8 %12 to i32
  %arrayidx5.6 = getelementptr inbounds i8, i8* %pix2.addr.025, i32 6
  %13 = load i8, i8* %arrayidx5.6, align 1, !tbaa !6
  %conv6.6 = zext i8 %13 to i32
  %sub.6 = sub nsw i32 %conv.6, %conv6.6
  %mul.6 = mul nsw i32 %sub.6, %sub.6
  %add.6 = add nsw i32 %mul.6, %add.5
  %arrayidx.7 = getelementptr inbounds i8, i8* %pix1.addr.028, i32 7
  %14 = load i8, i8* %arrayidx.7, align 1, !tbaa !6
  %conv.7 = zext i8 %14 to i32
  %arrayidx5.7 = getelementptr inbounds i8, i8* %pix2.addr.025, i32 7
  %15 = load i8, i8* %arrayidx5.7, align 1, !tbaa !6
  %conv6.7 = zext i8 %15 to i32
  %sub.7 = sub nsw i32 %conv.7, %conv6.7
  %mul.7 = mul nsw i32 %sub.7, %sub.7
  %add.7 = add nsw i32 %mul.7, %add.6
  %add.ptr = getelementptr inbounds i8, i8* %pix1.addr.028, i32 %i_stride_pix1
  %add.ptr7 = getelementptr inbounds i8, i8* %pix2.addr.025, i32 %i_stride_pix2
  %inc9 = add nuw nsw i32 %y.027, 1
  %exitcond = icmp eq i32 %inc9, 16
  br i1 %exitcond, label %for.cond.cleanup, label %for.cond1.preheader

for.cond.cleanup:                                 ; preds = %for.cond1.preheader
  ret i32 %add.7
}

; Function Attrs: norecurse nounwind readonly
define internal i32 @x264_pixel_ssd_8x8(i8* nocapture readonly %pix1, i32 %i_stride_pix1, i8* nocapture readonly %pix2, i32 %i_stride_pix2) #3 {
entry:
  %0 = load i8, i8* %pix1, align 1, !tbaa !6
  %conv = zext i8 %0 to i32
  %1 = load i8, i8* %pix2, align 1, !tbaa !6
  %conv6 = zext i8 %1 to i32
  %sub = sub nsw i32 %conv, %conv6
  %mul = mul nsw i32 %sub, %sub
  %arrayidx.1 = getelementptr inbounds i8, i8* %pix1, i32 1
  %2 = load i8, i8* %arrayidx.1, align 1, !tbaa !6
  %conv.1 = zext i8 %2 to i32
  %arrayidx5.1 = getelementptr inbounds i8, i8* %pix2, i32 1
  %3 = load i8, i8* %arrayidx5.1, align 1, !tbaa !6
  %conv6.1 = zext i8 %3 to i32
  %sub.1 = sub nsw i32 %conv.1, %conv6.1
  %mul.1 = mul nsw i32 %sub.1, %sub.1
  %add.1 = add nuw nsw i32 %mul.1, %mul
  %arrayidx.2 = getelementptr inbounds i8, i8* %pix1, i32 2
  %4 = load i8, i8* %arrayidx.2, align 1, !tbaa !6
  %conv.2 = zext i8 %4 to i32
  %arrayidx5.2 = getelementptr inbounds i8, i8* %pix2, i32 2
  %5 = load i8, i8* %arrayidx5.2, align 1, !tbaa !6
  %conv6.2 = zext i8 %5 to i32
  %sub.2 = sub nsw i32 %conv.2, %conv6.2
  %mul.2 = mul nsw i32 %sub.2, %sub.2
  %add.2 = add nuw nsw i32 %mul.2, %add.1
  %arrayidx.3 = getelementptr inbounds i8, i8* %pix1, i32 3
  %6 = load i8, i8* %arrayidx.3, align 1, !tbaa !6
  %conv.3 = zext i8 %6 to i32
  %arrayidx5.3 = getelementptr inbounds i8, i8* %pix2, i32 3
  %7 = load i8, i8* %arrayidx5.3, align 1, !tbaa !6
  %conv6.3 = zext i8 %7 to i32
  %sub.3 = sub nsw i32 %conv.3, %conv6.3
  %mul.3 = mul nsw i32 %sub.3, %sub.3
  %add.3 = add nuw nsw i32 %mul.3, %add.2
  %arrayidx.4 = getelementptr inbounds i8, i8* %pix1, i32 4
  %8 = load i8, i8* %arrayidx.4, align 1, !tbaa !6
  %conv.4 = zext i8 %8 to i32
  %arrayidx5.4 = getelementptr inbounds i8, i8* %pix2, i32 4
  %9 = load i8, i8* %arrayidx5.4, align 1, !tbaa !6
  %conv6.4 = zext i8 %9 to i32
  %sub.4 = sub nsw i32 %conv.4, %conv6.4
  %mul.4 = mul nsw i32 %sub.4, %sub.4
  %add.4 = add nuw nsw i32 %mul.4, %add.3
  %arrayidx.5 = getelementptr inbounds i8, i8* %pix1, i32 5
  %10 = load i8, i8* %arrayidx.5, align 1, !tbaa !6
  %conv.5 = zext i8 %10 to i32
  %arrayidx5.5 = getelementptr inbounds i8, i8* %pix2, i32 5
  %11 = load i8, i8* %arrayidx5.5, align 1, !tbaa !6
  %conv6.5 = zext i8 %11 to i32
  %sub.5 = sub nsw i32 %conv.5, %conv6.5
  %mul.5 = mul nsw i32 %sub.5, %sub.5
  %add.5 = add nuw nsw i32 %mul.5, %add.4
  %arrayidx.6 = getelementptr inbounds i8, i8* %pix1, i32 6
  %12 = load i8, i8* %arrayidx.6, align 1, !tbaa !6
  %conv.6 = zext i8 %12 to i32
  %arrayidx5.6 = getelementptr inbounds i8, i8* %pix2, i32 6
  %13 = load i8, i8* %arrayidx5.6, align 1, !tbaa !6
  %conv6.6 = zext i8 %13 to i32
  %sub.6 = sub nsw i32 %conv.6, %conv6.6
  %mul.6 = mul nsw i32 %sub.6, %sub.6
  %add.6 = add nuw nsw i32 %mul.6, %add.5
  %arrayidx.7 = getelementptr inbounds i8, i8* %pix1, i32 7
  %14 = load i8, i8* %arrayidx.7, align 1, !tbaa !6
  %conv.7 = zext i8 %14 to i32
  %arrayidx5.7 = getelementptr inbounds i8, i8* %pix2, i32 7
  %15 = load i8, i8* %arrayidx5.7, align 1, !tbaa !6
  %conv6.7 = zext i8 %15 to i32
  %sub.7 = sub nsw i32 %conv.7, %conv6.7
  %mul.7 = mul nsw i32 %sub.7, %sub.7
  %add.7 = add nsw i32 %mul.7, %add.6
  %add.ptr = getelementptr inbounds i8, i8* %pix1, i32 %i_stride_pix1
  %add.ptr7 = getelementptr inbounds i8, i8* %pix2, i32 %i_stride_pix2
  %16 = load i8, i8* %add.ptr, align 1, !tbaa !6
  %conv.129 = zext i8 %16 to i32
  %17 = load i8, i8* %add.ptr7, align 1, !tbaa !6
  %conv6.130 = zext i8 %17 to i32
  %sub.131 = sub nsw i32 %conv.129, %conv6.130
  %mul.132 = mul nsw i32 %sub.131, %sub.131
  %add.133 = add nsw i32 %mul.132, %add.7
  %arrayidx.1.1 = getelementptr inbounds i8, i8* %add.ptr, i32 1
  %18 = load i8, i8* %arrayidx.1.1, align 1, !tbaa !6
  %conv.1.1 = zext i8 %18 to i32
  %arrayidx5.1.1 = getelementptr inbounds i8, i8* %add.ptr7, i32 1
  %19 = load i8, i8* %arrayidx5.1.1, align 1, !tbaa !6
  %conv6.1.1 = zext i8 %19 to i32
  %sub.1.1 = sub nsw i32 %conv.1.1, %conv6.1.1
  %mul.1.1 = mul nsw i32 %sub.1.1, %sub.1.1
  %add.1.1 = add nsw i32 %mul.1.1, %add.133
  %arrayidx.2.1 = getelementptr inbounds i8, i8* %add.ptr, i32 2
  %20 = load i8, i8* %arrayidx.2.1, align 1, !tbaa !6
  %conv.2.1 = zext i8 %20 to i32
  %arrayidx5.2.1 = getelementptr inbounds i8, i8* %add.ptr7, i32 2
  %21 = load i8, i8* %arrayidx5.2.1, align 1, !tbaa !6
  %conv6.2.1 = zext i8 %21 to i32
  %sub.2.1 = sub nsw i32 %conv.2.1, %conv6.2.1
  %mul.2.1 = mul nsw i32 %sub.2.1, %sub.2.1
  %add.2.1 = add nsw i32 %mul.2.1, %add.1.1
  %arrayidx.3.1 = getelementptr inbounds i8, i8* %add.ptr, i32 3
  %22 = load i8, i8* %arrayidx.3.1, align 1, !tbaa !6
  %conv.3.1 = zext i8 %22 to i32
  %arrayidx5.3.1 = getelementptr inbounds i8, i8* %add.ptr7, i32 3
  %23 = load i8, i8* %arrayidx5.3.1, align 1, !tbaa !6
  %conv6.3.1 = zext i8 %23 to i32
  %sub.3.1 = sub nsw i32 %conv.3.1, %conv6.3.1
  %mul.3.1 = mul nsw i32 %sub.3.1, %sub.3.1
  %add.3.1 = add nsw i32 %mul.3.1, %add.2.1
  %arrayidx.4.1 = getelementptr inbounds i8, i8* %add.ptr, i32 4
  %24 = load i8, i8* %arrayidx.4.1, align 1, !tbaa !6
  %conv.4.1 = zext i8 %24 to i32
  %arrayidx5.4.1 = getelementptr inbounds i8, i8* %add.ptr7, i32 4
  %25 = load i8, i8* %arrayidx5.4.1, align 1, !tbaa !6
  %conv6.4.1 = zext i8 %25 to i32
  %sub.4.1 = sub nsw i32 %conv.4.1, %conv6.4.1
  %mul.4.1 = mul nsw i32 %sub.4.1, %sub.4.1
  %add.4.1 = add nsw i32 %mul.4.1, %add.3.1
  %arrayidx.5.1 = getelementptr inbounds i8, i8* %add.ptr, i32 5
  %26 = load i8, i8* %arrayidx.5.1, align 1, !tbaa !6
  %conv.5.1 = zext i8 %26 to i32
  %arrayidx5.5.1 = getelementptr inbounds i8, i8* %add.ptr7, i32 5
  %27 = load i8, i8* %arrayidx5.5.1, align 1, !tbaa !6
  %conv6.5.1 = zext i8 %27 to i32
  %sub.5.1 = sub nsw i32 %conv.5.1, %conv6.5.1
  %mul.5.1 = mul nsw i32 %sub.5.1, %sub.5.1
  %add.5.1 = add nsw i32 %mul.5.1, %add.4.1
  %arrayidx.6.1 = getelementptr inbounds i8, i8* %add.ptr, i32 6
  %28 = load i8, i8* %arrayidx.6.1, align 1, !tbaa !6
  %conv.6.1 = zext i8 %28 to i32
  %arrayidx5.6.1 = getelementptr inbounds i8, i8* %add.ptr7, i32 6
  %29 = load i8, i8* %arrayidx5.6.1, align 1, !tbaa !6
  %conv6.6.1 = zext i8 %29 to i32
  %sub.6.1 = sub nsw i32 %conv.6.1, %conv6.6.1
  %mul.6.1 = mul nsw i32 %sub.6.1, %sub.6.1
  %add.6.1 = add nsw i32 %mul.6.1, %add.5.1
  %arrayidx.7.1 = getelementptr inbounds i8, i8* %add.ptr, i32 7
  %30 = load i8, i8* %arrayidx.7.1, align 1, !tbaa !6
  %conv.7.1 = zext i8 %30 to i32
  %arrayidx5.7.1 = getelementptr inbounds i8, i8* %add.ptr7, i32 7
  %31 = load i8, i8* %arrayidx5.7.1, align 1, !tbaa !6
  %conv6.7.1 = zext i8 %31 to i32
  %sub.7.1 = sub nsw i32 %conv.7.1, %conv6.7.1
  %mul.7.1 = mul nsw i32 %sub.7.1, %sub.7.1
  %add.7.1 = add nsw i32 %mul.7.1, %add.6.1
  %add.ptr.1 = getelementptr inbounds i8, i8* %add.ptr, i32 %i_stride_pix1
  %add.ptr7.1 = getelementptr inbounds i8, i8* %add.ptr7, i32 %i_stride_pix2
  %32 = load i8, i8* %add.ptr.1, align 1, !tbaa !6
  %conv.234 = zext i8 %32 to i32
  %33 = load i8, i8* %add.ptr7.1, align 1, !tbaa !6
  %conv6.235 = zext i8 %33 to i32
  %sub.236 = sub nsw i32 %conv.234, %conv6.235
  %mul.237 = mul nsw i32 %sub.236, %sub.236
  %add.238 = add nsw i32 %mul.237, %add.7.1
  %arrayidx.1.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 1
  %34 = load i8, i8* %arrayidx.1.2, align 1, !tbaa !6
  %conv.1.2 = zext i8 %34 to i32
  %arrayidx5.1.2 = getelementptr inbounds i8, i8* %add.ptr7.1, i32 1
  %35 = load i8, i8* %arrayidx5.1.2, align 1, !tbaa !6
  %conv6.1.2 = zext i8 %35 to i32
  %sub.1.2 = sub nsw i32 %conv.1.2, %conv6.1.2
  %mul.1.2 = mul nsw i32 %sub.1.2, %sub.1.2
  %add.1.2 = add nsw i32 %mul.1.2, %add.238
  %arrayidx.2.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 2
  %36 = load i8, i8* %arrayidx.2.2, align 1, !tbaa !6
  %conv.2.2 = zext i8 %36 to i32
  %arrayidx5.2.2 = getelementptr inbounds i8, i8* %add.ptr7.1, i32 2
  %37 = load i8, i8* %arrayidx5.2.2, align 1, !tbaa !6
  %conv6.2.2 = zext i8 %37 to i32
  %sub.2.2 = sub nsw i32 %conv.2.2, %conv6.2.2
  %mul.2.2 = mul nsw i32 %sub.2.2, %sub.2.2
  %add.2.2 = add nsw i32 %mul.2.2, %add.1.2
  %arrayidx.3.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 3
  %38 = load i8, i8* %arrayidx.3.2, align 1, !tbaa !6
  %conv.3.2 = zext i8 %38 to i32
  %arrayidx5.3.2 = getelementptr inbounds i8, i8* %add.ptr7.1, i32 3
  %39 = load i8, i8* %arrayidx5.3.2, align 1, !tbaa !6
  %conv6.3.2 = zext i8 %39 to i32
  %sub.3.2 = sub nsw i32 %conv.3.2, %conv6.3.2
  %mul.3.2 = mul nsw i32 %sub.3.2, %sub.3.2
  %add.3.2 = add nsw i32 %mul.3.2, %add.2.2
  %arrayidx.4.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 4
  %40 = load i8, i8* %arrayidx.4.2, align 1, !tbaa !6
  %conv.4.2 = zext i8 %40 to i32
  %arrayidx5.4.2 = getelementptr inbounds i8, i8* %add.ptr7.1, i32 4
  %41 = load i8, i8* %arrayidx5.4.2, align 1, !tbaa !6
  %conv6.4.2 = zext i8 %41 to i32
  %sub.4.2 = sub nsw i32 %conv.4.2, %conv6.4.2
  %mul.4.2 = mul nsw i32 %sub.4.2, %sub.4.2
  %add.4.2 = add nsw i32 %mul.4.2, %add.3.2
  %arrayidx.5.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 5
  %42 = load i8, i8* %arrayidx.5.2, align 1, !tbaa !6
  %conv.5.2 = zext i8 %42 to i32
  %arrayidx5.5.2 = getelementptr inbounds i8, i8* %add.ptr7.1, i32 5
  %43 = load i8, i8* %arrayidx5.5.2, align 1, !tbaa !6
  %conv6.5.2 = zext i8 %43 to i32
  %sub.5.2 = sub nsw i32 %conv.5.2, %conv6.5.2
  %mul.5.2 = mul nsw i32 %sub.5.2, %sub.5.2
  %add.5.2 = add nsw i32 %mul.5.2, %add.4.2
  %arrayidx.6.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 6
  %44 = load i8, i8* %arrayidx.6.2, align 1, !tbaa !6
  %conv.6.2 = zext i8 %44 to i32
  %arrayidx5.6.2 = getelementptr inbounds i8, i8* %add.ptr7.1, i32 6
  %45 = load i8, i8* %arrayidx5.6.2, align 1, !tbaa !6
  %conv6.6.2 = zext i8 %45 to i32
  %sub.6.2 = sub nsw i32 %conv.6.2, %conv6.6.2
  %mul.6.2 = mul nsw i32 %sub.6.2, %sub.6.2
  %add.6.2 = add nsw i32 %mul.6.2, %add.5.2
  %arrayidx.7.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 7
  %46 = load i8, i8* %arrayidx.7.2, align 1, !tbaa !6
  %conv.7.2 = zext i8 %46 to i32
  %arrayidx5.7.2 = getelementptr inbounds i8, i8* %add.ptr7.1, i32 7
  %47 = load i8, i8* %arrayidx5.7.2, align 1, !tbaa !6
  %conv6.7.2 = zext i8 %47 to i32
  %sub.7.2 = sub nsw i32 %conv.7.2, %conv6.7.2
  %mul.7.2 = mul nsw i32 %sub.7.2, %sub.7.2
  %add.7.2 = add nsw i32 %mul.7.2, %add.6.2
  %add.ptr.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 %i_stride_pix1
  %add.ptr7.2 = getelementptr inbounds i8, i8* %add.ptr7.1, i32 %i_stride_pix2
  %48 = load i8, i8* %add.ptr.2, align 1, !tbaa !6
  %conv.339 = zext i8 %48 to i32
  %49 = load i8, i8* %add.ptr7.2, align 1, !tbaa !6
  %conv6.340 = zext i8 %49 to i32
  %sub.341 = sub nsw i32 %conv.339, %conv6.340
  %mul.342 = mul nsw i32 %sub.341, %sub.341
  %add.343 = add nsw i32 %mul.342, %add.7.2
  %arrayidx.1.3 = getelementptr inbounds i8, i8* %add.ptr.2, i32 1
  %50 = load i8, i8* %arrayidx.1.3, align 1, !tbaa !6
  %conv.1.3 = zext i8 %50 to i32
  %arrayidx5.1.3 = getelementptr inbounds i8, i8* %add.ptr7.2, i32 1
  %51 = load i8, i8* %arrayidx5.1.3, align 1, !tbaa !6
  %conv6.1.3 = zext i8 %51 to i32
  %sub.1.3 = sub nsw i32 %conv.1.3, %conv6.1.3
  %mul.1.3 = mul nsw i32 %sub.1.3, %sub.1.3
  %add.1.3 = add nsw i32 %mul.1.3, %add.343
  %arrayidx.2.3 = getelementptr inbounds i8, i8* %add.ptr.2, i32 2
  %52 = load i8, i8* %arrayidx.2.3, align 1, !tbaa !6
  %conv.2.3 = zext i8 %52 to i32
  %arrayidx5.2.3 = getelementptr inbounds i8, i8* %add.ptr7.2, i32 2
  %53 = load i8, i8* %arrayidx5.2.3, align 1, !tbaa !6
  %conv6.2.3 = zext i8 %53 to i32
  %sub.2.3 = sub nsw i32 %conv.2.3, %conv6.2.3
  %mul.2.3 = mul nsw i32 %sub.2.3, %sub.2.3
  %add.2.3 = add nsw i32 %mul.2.3, %add.1.3
  %arrayidx.3.3 = getelementptr inbounds i8, i8* %add.ptr.2, i32 3
  %54 = load i8, i8* %arrayidx.3.3, align 1, !tbaa !6
  %conv.3.3 = zext i8 %54 to i32
  %arrayidx5.3.3 = getelementptr inbounds i8, i8* %add.ptr7.2, i32 3
  %55 = load i8, i8* %arrayidx5.3.3, align 1, !tbaa !6
  %conv6.3.3 = zext i8 %55 to i32
  %sub.3.3 = sub nsw i32 %conv.3.3, %conv6.3.3
  %mul.3.3 = mul nsw i32 %sub.3.3, %sub.3.3
  %add.3.3 = add nsw i32 %mul.3.3, %add.2.3
  %arrayidx.4.3 = getelementptr inbounds i8, i8* %add.ptr.2, i32 4
  %56 = load i8, i8* %arrayidx.4.3, align 1, !tbaa !6
  %conv.4.3 = zext i8 %56 to i32
  %arrayidx5.4.3 = getelementptr inbounds i8, i8* %add.ptr7.2, i32 4
  %57 = load i8, i8* %arrayidx5.4.3, align 1, !tbaa !6
  %conv6.4.3 = zext i8 %57 to i32
  %sub.4.3 = sub nsw i32 %conv.4.3, %conv6.4.3
  %mul.4.3 = mul nsw i32 %sub.4.3, %sub.4.3
  %add.4.3 = add nsw i32 %mul.4.3, %add.3.3
  %arrayidx.5.3 = getelementptr inbounds i8, i8* %add.ptr.2, i32 5
  %58 = load i8, i8* %arrayidx.5.3, align 1, !tbaa !6
  %conv.5.3 = zext i8 %58 to i32
  %arrayidx5.5.3 = getelementptr inbounds i8, i8* %add.ptr7.2, i32 5
  %59 = load i8, i8* %arrayidx5.5.3, align 1, !tbaa !6
  %conv6.5.3 = zext i8 %59 to i32
  %sub.5.3 = sub nsw i32 %conv.5.3, %conv6.5.3
  %mul.5.3 = mul nsw i32 %sub.5.3, %sub.5.3
  %add.5.3 = add nsw i32 %mul.5.3, %add.4.3
  %arrayidx.6.3 = getelementptr inbounds i8, i8* %add.ptr.2, i32 6
  %60 = load i8, i8* %arrayidx.6.3, align 1, !tbaa !6
  %conv.6.3 = zext i8 %60 to i32
  %arrayidx5.6.3 = getelementptr inbounds i8, i8* %add.ptr7.2, i32 6
  %61 = load i8, i8* %arrayidx5.6.3, align 1, !tbaa !6
  %conv6.6.3 = zext i8 %61 to i32
  %sub.6.3 = sub nsw i32 %conv.6.3, %conv6.6.3
  %mul.6.3 = mul nsw i32 %sub.6.3, %sub.6.3
  %add.6.3 = add nsw i32 %mul.6.3, %add.5.3
  %arrayidx.7.3 = getelementptr inbounds i8, i8* %add.ptr.2, i32 7
  %62 = load i8, i8* %arrayidx.7.3, align 1, !tbaa !6
  %conv.7.3 = zext i8 %62 to i32
  %arrayidx5.7.3 = getelementptr inbounds i8, i8* %add.ptr7.2, i32 7
  %63 = load i8, i8* %arrayidx5.7.3, align 1, !tbaa !6
  %conv6.7.3 = zext i8 %63 to i32
  %sub.7.3 = sub nsw i32 %conv.7.3, %conv6.7.3
  %mul.7.3 = mul nsw i32 %sub.7.3, %sub.7.3
  %add.7.3 = add nsw i32 %mul.7.3, %add.6.3
  %add.ptr.3 = getelementptr inbounds i8, i8* %add.ptr.2, i32 %i_stride_pix1
  %add.ptr7.3 = getelementptr inbounds i8, i8* %add.ptr7.2, i32 %i_stride_pix2
  %64 = load i8, i8* %add.ptr.3, align 1, !tbaa !6
  %conv.444 = zext i8 %64 to i32
  %65 = load i8, i8* %add.ptr7.3, align 1, !tbaa !6
  %conv6.445 = zext i8 %65 to i32
  %sub.446 = sub nsw i32 %conv.444, %conv6.445
  %mul.447 = mul nsw i32 %sub.446, %sub.446
  %add.448 = add nsw i32 %mul.447, %add.7.3
  %arrayidx.1.4 = getelementptr inbounds i8, i8* %add.ptr.3, i32 1
  %66 = load i8, i8* %arrayidx.1.4, align 1, !tbaa !6
  %conv.1.4 = zext i8 %66 to i32
  %arrayidx5.1.4 = getelementptr inbounds i8, i8* %add.ptr7.3, i32 1
  %67 = load i8, i8* %arrayidx5.1.4, align 1, !tbaa !6
  %conv6.1.4 = zext i8 %67 to i32
  %sub.1.4 = sub nsw i32 %conv.1.4, %conv6.1.4
  %mul.1.4 = mul nsw i32 %sub.1.4, %sub.1.4
  %add.1.4 = add nsw i32 %mul.1.4, %add.448
  %arrayidx.2.4 = getelementptr inbounds i8, i8* %add.ptr.3, i32 2
  %68 = load i8, i8* %arrayidx.2.4, align 1, !tbaa !6
  %conv.2.4 = zext i8 %68 to i32
  %arrayidx5.2.4 = getelementptr inbounds i8, i8* %add.ptr7.3, i32 2
  %69 = load i8, i8* %arrayidx5.2.4, align 1, !tbaa !6
  %conv6.2.4 = zext i8 %69 to i32
  %sub.2.4 = sub nsw i32 %conv.2.4, %conv6.2.4
  %mul.2.4 = mul nsw i32 %sub.2.4, %sub.2.4
  %add.2.4 = add nsw i32 %mul.2.4, %add.1.4
  %arrayidx.3.4 = getelementptr inbounds i8, i8* %add.ptr.3, i32 3
  %70 = load i8, i8* %arrayidx.3.4, align 1, !tbaa !6
  %conv.3.4 = zext i8 %70 to i32
  %arrayidx5.3.4 = getelementptr inbounds i8, i8* %add.ptr7.3, i32 3
  %71 = load i8, i8* %arrayidx5.3.4, align 1, !tbaa !6
  %conv6.3.4 = zext i8 %71 to i32
  %sub.3.4 = sub nsw i32 %conv.3.4, %conv6.3.4
  %mul.3.4 = mul nsw i32 %sub.3.4, %sub.3.4
  %add.3.4 = add nsw i32 %mul.3.4, %add.2.4
  %arrayidx.4.4 = getelementptr inbounds i8, i8* %add.ptr.3, i32 4
  %72 = load i8, i8* %arrayidx.4.4, align 1, !tbaa !6
  %conv.4.4 = zext i8 %72 to i32
  %arrayidx5.4.4 = getelementptr inbounds i8, i8* %add.ptr7.3, i32 4
  %73 = load i8, i8* %arrayidx5.4.4, align 1, !tbaa !6
  %conv6.4.4 = zext i8 %73 to i32
  %sub.4.4 = sub nsw i32 %conv.4.4, %conv6.4.4
  %mul.4.4 = mul nsw i32 %sub.4.4, %sub.4.4
  %add.4.4 = add nsw i32 %mul.4.4, %add.3.4
  %arrayidx.5.4 = getelementptr inbounds i8, i8* %add.ptr.3, i32 5
  %74 = load i8, i8* %arrayidx.5.4, align 1, !tbaa !6
  %conv.5.4 = zext i8 %74 to i32
  %arrayidx5.5.4 = getelementptr inbounds i8, i8* %add.ptr7.3, i32 5
  %75 = load i8, i8* %arrayidx5.5.4, align 1, !tbaa !6
  %conv6.5.4 = zext i8 %75 to i32
  %sub.5.4 = sub nsw i32 %conv.5.4, %conv6.5.4
  %mul.5.4 = mul nsw i32 %sub.5.4, %sub.5.4
  %add.5.4 = add nsw i32 %mul.5.4, %add.4.4
  %arrayidx.6.4 = getelementptr inbounds i8, i8* %add.ptr.3, i32 6
  %76 = load i8, i8* %arrayidx.6.4, align 1, !tbaa !6
  %conv.6.4 = zext i8 %76 to i32
  %arrayidx5.6.4 = getelementptr inbounds i8, i8* %add.ptr7.3, i32 6
  %77 = load i8, i8* %arrayidx5.6.4, align 1, !tbaa !6
  %conv6.6.4 = zext i8 %77 to i32
  %sub.6.4 = sub nsw i32 %conv.6.4, %conv6.6.4
  %mul.6.4 = mul nsw i32 %sub.6.4, %sub.6.4
  %add.6.4 = add nsw i32 %mul.6.4, %add.5.4
  %arrayidx.7.4 = getelementptr inbounds i8, i8* %add.ptr.3, i32 7
  %78 = load i8, i8* %arrayidx.7.4, align 1, !tbaa !6
  %conv.7.4 = zext i8 %78 to i32
  %arrayidx5.7.4 = getelementptr inbounds i8, i8* %add.ptr7.3, i32 7
  %79 = load i8, i8* %arrayidx5.7.4, align 1, !tbaa !6
  %conv6.7.4 = zext i8 %79 to i32
  %sub.7.4 = sub nsw i32 %conv.7.4, %conv6.7.4
  %mul.7.4 = mul nsw i32 %sub.7.4, %sub.7.4
  %add.7.4 = add nsw i32 %mul.7.4, %add.6.4
  %add.ptr.4 = getelementptr inbounds i8, i8* %add.ptr.3, i32 %i_stride_pix1
  %add.ptr7.4 = getelementptr inbounds i8, i8* %add.ptr7.3, i32 %i_stride_pix2
  %80 = load i8, i8* %add.ptr.4, align 1, !tbaa !6
  %conv.549 = zext i8 %80 to i32
  %81 = load i8, i8* %add.ptr7.4, align 1, !tbaa !6
  %conv6.550 = zext i8 %81 to i32
  %sub.551 = sub nsw i32 %conv.549, %conv6.550
  %mul.552 = mul nsw i32 %sub.551, %sub.551
  %add.553 = add nsw i32 %mul.552, %add.7.4
  %arrayidx.1.5 = getelementptr inbounds i8, i8* %add.ptr.4, i32 1
  %82 = load i8, i8* %arrayidx.1.5, align 1, !tbaa !6
  %conv.1.5 = zext i8 %82 to i32
  %arrayidx5.1.5 = getelementptr inbounds i8, i8* %add.ptr7.4, i32 1
  %83 = load i8, i8* %arrayidx5.1.5, align 1, !tbaa !6
  %conv6.1.5 = zext i8 %83 to i32
  %sub.1.5 = sub nsw i32 %conv.1.5, %conv6.1.5
  %mul.1.5 = mul nsw i32 %sub.1.5, %sub.1.5
  %add.1.5 = add nsw i32 %mul.1.5, %add.553
  %arrayidx.2.5 = getelementptr inbounds i8, i8* %add.ptr.4, i32 2
  %84 = load i8, i8* %arrayidx.2.5, align 1, !tbaa !6
  %conv.2.5 = zext i8 %84 to i32
  %arrayidx5.2.5 = getelementptr inbounds i8, i8* %add.ptr7.4, i32 2
  %85 = load i8, i8* %arrayidx5.2.5, align 1, !tbaa !6
  %conv6.2.5 = zext i8 %85 to i32
  %sub.2.5 = sub nsw i32 %conv.2.5, %conv6.2.5
  %mul.2.5 = mul nsw i32 %sub.2.5, %sub.2.5
  %add.2.5 = add nsw i32 %mul.2.5, %add.1.5
  %arrayidx.3.5 = getelementptr inbounds i8, i8* %add.ptr.4, i32 3
  %86 = load i8, i8* %arrayidx.3.5, align 1, !tbaa !6
  %conv.3.5 = zext i8 %86 to i32
  %arrayidx5.3.5 = getelementptr inbounds i8, i8* %add.ptr7.4, i32 3
  %87 = load i8, i8* %arrayidx5.3.5, align 1, !tbaa !6
  %conv6.3.5 = zext i8 %87 to i32
  %sub.3.5 = sub nsw i32 %conv.3.5, %conv6.3.5
  %mul.3.5 = mul nsw i32 %sub.3.5, %sub.3.5
  %add.3.5 = add nsw i32 %mul.3.5, %add.2.5
  %arrayidx.4.5 = getelementptr inbounds i8, i8* %add.ptr.4, i32 4
  %88 = load i8, i8* %arrayidx.4.5, align 1, !tbaa !6
  %conv.4.5 = zext i8 %88 to i32
  %arrayidx5.4.5 = getelementptr inbounds i8, i8* %add.ptr7.4, i32 4
  %89 = load i8, i8* %arrayidx5.4.5, align 1, !tbaa !6
  %conv6.4.5 = zext i8 %89 to i32
  %sub.4.5 = sub nsw i32 %conv.4.5, %conv6.4.5
  %mul.4.5 = mul nsw i32 %sub.4.5, %sub.4.5
  %add.4.5 = add nsw i32 %mul.4.5, %add.3.5
  %arrayidx.5.5 = getelementptr inbounds i8, i8* %add.ptr.4, i32 5
  %90 = load i8, i8* %arrayidx.5.5, align 1, !tbaa !6
  %conv.5.5 = zext i8 %90 to i32
  %arrayidx5.5.5 = getelementptr inbounds i8, i8* %add.ptr7.4, i32 5
  %91 = load i8, i8* %arrayidx5.5.5, align 1, !tbaa !6
  %conv6.5.5 = zext i8 %91 to i32
  %sub.5.5 = sub nsw i32 %conv.5.5, %conv6.5.5
  %mul.5.5 = mul nsw i32 %sub.5.5, %sub.5.5
  %add.5.5 = add nsw i32 %mul.5.5, %add.4.5
  %arrayidx.6.5 = getelementptr inbounds i8, i8* %add.ptr.4, i32 6
  %92 = load i8, i8* %arrayidx.6.5, align 1, !tbaa !6
  %conv.6.5 = zext i8 %92 to i32
  %arrayidx5.6.5 = getelementptr inbounds i8, i8* %add.ptr7.4, i32 6
  %93 = load i8, i8* %arrayidx5.6.5, align 1, !tbaa !6
  %conv6.6.5 = zext i8 %93 to i32
  %sub.6.5 = sub nsw i32 %conv.6.5, %conv6.6.5
  %mul.6.5 = mul nsw i32 %sub.6.5, %sub.6.5
  %add.6.5 = add nsw i32 %mul.6.5, %add.5.5
  %arrayidx.7.5 = getelementptr inbounds i8, i8* %add.ptr.4, i32 7
  %94 = load i8, i8* %arrayidx.7.5, align 1, !tbaa !6
  %conv.7.5 = zext i8 %94 to i32
  %arrayidx5.7.5 = getelementptr inbounds i8, i8* %add.ptr7.4, i32 7
  %95 = load i8, i8* %arrayidx5.7.5, align 1, !tbaa !6
  %conv6.7.5 = zext i8 %95 to i32
  %sub.7.5 = sub nsw i32 %conv.7.5, %conv6.7.5
  %mul.7.5 = mul nsw i32 %sub.7.5, %sub.7.5
  %add.7.5 = add nsw i32 %mul.7.5, %add.6.5
  %add.ptr.5 = getelementptr inbounds i8, i8* %add.ptr.4, i32 %i_stride_pix1
  %add.ptr7.5 = getelementptr inbounds i8, i8* %add.ptr7.4, i32 %i_stride_pix2
  %96 = load i8, i8* %add.ptr.5, align 1, !tbaa !6
  %conv.654 = zext i8 %96 to i32
  %97 = load i8, i8* %add.ptr7.5, align 1, !tbaa !6
  %conv6.655 = zext i8 %97 to i32
  %sub.656 = sub nsw i32 %conv.654, %conv6.655
  %mul.657 = mul nsw i32 %sub.656, %sub.656
  %add.658 = add nsw i32 %mul.657, %add.7.5
  %arrayidx.1.6 = getelementptr inbounds i8, i8* %add.ptr.5, i32 1
  %98 = load i8, i8* %arrayidx.1.6, align 1, !tbaa !6
  %conv.1.6 = zext i8 %98 to i32
  %arrayidx5.1.6 = getelementptr inbounds i8, i8* %add.ptr7.5, i32 1
  %99 = load i8, i8* %arrayidx5.1.6, align 1, !tbaa !6
  %conv6.1.6 = zext i8 %99 to i32
  %sub.1.6 = sub nsw i32 %conv.1.6, %conv6.1.6
  %mul.1.6 = mul nsw i32 %sub.1.6, %sub.1.6
  %add.1.6 = add nsw i32 %mul.1.6, %add.658
  %arrayidx.2.6 = getelementptr inbounds i8, i8* %add.ptr.5, i32 2
  %100 = load i8, i8* %arrayidx.2.6, align 1, !tbaa !6
  %conv.2.6 = zext i8 %100 to i32
  %arrayidx5.2.6 = getelementptr inbounds i8, i8* %add.ptr7.5, i32 2
  %101 = load i8, i8* %arrayidx5.2.6, align 1, !tbaa !6
  %conv6.2.6 = zext i8 %101 to i32
  %sub.2.6 = sub nsw i32 %conv.2.6, %conv6.2.6
  %mul.2.6 = mul nsw i32 %sub.2.6, %sub.2.6
  %add.2.6 = add nsw i32 %mul.2.6, %add.1.6
  %arrayidx.3.6 = getelementptr inbounds i8, i8* %add.ptr.5, i32 3
  %102 = load i8, i8* %arrayidx.3.6, align 1, !tbaa !6
  %conv.3.6 = zext i8 %102 to i32
  %arrayidx5.3.6 = getelementptr inbounds i8, i8* %add.ptr7.5, i32 3
  %103 = load i8, i8* %arrayidx5.3.6, align 1, !tbaa !6
  %conv6.3.6 = zext i8 %103 to i32
  %sub.3.6 = sub nsw i32 %conv.3.6, %conv6.3.6
  %mul.3.6 = mul nsw i32 %sub.3.6, %sub.3.6
  %add.3.6 = add nsw i32 %mul.3.6, %add.2.6
  %arrayidx.4.6 = getelementptr inbounds i8, i8* %add.ptr.5, i32 4
  %104 = load i8, i8* %arrayidx.4.6, align 1, !tbaa !6
  %conv.4.6 = zext i8 %104 to i32
  %arrayidx5.4.6 = getelementptr inbounds i8, i8* %add.ptr7.5, i32 4
  %105 = load i8, i8* %arrayidx5.4.6, align 1, !tbaa !6
  %conv6.4.6 = zext i8 %105 to i32
  %sub.4.6 = sub nsw i32 %conv.4.6, %conv6.4.6
  %mul.4.6 = mul nsw i32 %sub.4.6, %sub.4.6
  %add.4.6 = add nsw i32 %mul.4.6, %add.3.6
  %arrayidx.5.6 = getelementptr inbounds i8, i8* %add.ptr.5, i32 5
  %106 = load i8, i8* %arrayidx.5.6, align 1, !tbaa !6
  %conv.5.6 = zext i8 %106 to i32
  %arrayidx5.5.6 = getelementptr inbounds i8, i8* %add.ptr7.5, i32 5
  %107 = load i8, i8* %arrayidx5.5.6, align 1, !tbaa !6
  %conv6.5.6 = zext i8 %107 to i32
  %sub.5.6 = sub nsw i32 %conv.5.6, %conv6.5.6
  %mul.5.6 = mul nsw i32 %sub.5.6, %sub.5.6
  %add.5.6 = add nsw i32 %mul.5.6, %add.4.6
  %arrayidx.6.6 = getelementptr inbounds i8, i8* %add.ptr.5, i32 6
  %108 = load i8, i8* %arrayidx.6.6, align 1, !tbaa !6
  %conv.6.6 = zext i8 %108 to i32
  %arrayidx5.6.6 = getelementptr inbounds i8, i8* %add.ptr7.5, i32 6
  %109 = load i8, i8* %arrayidx5.6.6, align 1, !tbaa !6
  %conv6.6.6 = zext i8 %109 to i32
  %sub.6.6 = sub nsw i32 %conv.6.6, %conv6.6.6
  %mul.6.6 = mul nsw i32 %sub.6.6, %sub.6.6
  %add.6.6 = add nsw i32 %mul.6.6, %add.5.6
  %arrayidx.7.6 = getelementptr inbounds i8, i8* %add.ptr.5, i32 7
  %110 = load i8, i8* %arrayidx.7.6, align 1, !tbaa !6
  %conv.7.6 = zext i8 %110 to i32
  %arrayidx5.7.6 = getelementptr inbounds i8, i8* %add.ptr7.5, i32 7
  %111 = load i8, i8* %arrayidx5.7.6, align 1, !tbaa !6
  %conv6.7.6 = zext i8 %111 to i32
  %sub.7.6 = sub nsw i32 %conv.7.6, %conv6.7.6
  %mul.7.6 = mul nsw i32 %sub.7.6, %sub.7.6
  %add.7.6 = add nsw i32 %mul.7.6, %add.6.6
  %add.ptr.6 = getelementptr inbounds i8, i8* %add.ptr.5, i32 %i_stride_pix1
  %add.ptr7.6 = getelementptr inbounds i8, i8* %add.ptr7.5, i32 %i_stride_pix2
  %112 = load i8, i8* %add.ptr.6, align 1, !tbaa !6
  %conv.759 = zext i8 %112 to i32
  %113 = load i8, i8* %add.ptr7.6, align 1, !tbaa !6
  %conv6.760 = zext i8 %113 to i32
  %sub.761 = sub nsw i32 %conv.759, %conv6.760
  %mul.762 = mul nsw i32 %sub.761, %sub.761
  %add.763 = add nsw i32 %mul.762, %add.7.6
  %arrayidx.1.7 = getelementptr inbounds i8, i8* %add.ptr.6, i32 1
  %114 = load i8, i8* %arrayidx.1.7, align 1, !tbaa !6
  %conv.1.7 = zext i8 %114 to i32
  %arrayidx5.1.7 = getelementptr inbounds i8, i8* %add.ptr7.6, i32 1
  %115 = load i8, i8* %arrayidx5.1.7, align 1, !tbaa !6
  %conv6.1.7 = zext i8 %115 to i32
  %sub.1.7 = sub nsw i32 %conv.1.7, %conv6.1.7
  %mul.1.7 = mul nsw i32 %sub.1.7, %sub.1.7
  %add.1.7 = add nsw i32 %mul.1.7, %add.763
  %arrayidx.2.7 = getelementptr inbounds i8, i8* %add.ptr.6, i32 2
  %116 = load i8, i8* %arrayidx.2.7, align 1, !tbaa !6
  %conv.2.7 = zext i8 %116 to i32
  %arrayidx5.2.7 = getelementptr inbounds i8, i8* %add.ptr7.6, i32 2
  %117 = load i8, i8* %arrayidx5.2.7, align 1, !tbaa !6
  %conv6.2.7 = zext i8 %117 to i32
  %sub.2.7 = sub nsw i32 %conv.2.7, %conv6.2.7
  %mul.2.7 = mul nsw i32 %sub.2.7, %sub.2.7
  %add.2.7 = add nsw i32 %mul.2.7, %add.1.7
  %arrayidx.3.7 = getelementptr inbounds i8, i8* %add.ptr.6, i32 3
  %118 = load i8, i8* %arrayidx.3.7, align 1, !tbaa !6
  %conv.3.7 = zext i8 %118 to i32
  %arrayidx5.3.7 = getelementptr inbounds i8, i8* %add.ptr7.6, i32 3
  %119 = load i8, i8* %arrayidx5.3.7, align 1, !tbaa !6
  %conv6.3.7 = zext i8 %119 to i32
  %sub.3.7 = sub nsw i32 %conv.3.7, %conv6.3.7
  %mul.3.7 = mul nsw i32 %sub.3.7, %sub.3.7
  %add.3.7 = add nsw i32 %mul.3.7, %add.2.7
  %arrayidx.4.7 = getelementptr inbounds i8, i8* %add.ptr.6, i32 4
  %120 = load i8, i8* %arrayidx.4.7, align 1, !tbaa !6
  %conv.4.7 = zext i8 %120 to i32
  %arrayidx5.4.7 = getelementptr inbounds i8, i8* %add.ptr7.6, i32 4
  %121 = load i8, i8* %arrayidx5.4.7, align 1, !tbaa !6
  %conv6.4.7 = zext i8 %121 to i32
  %sub.4.7 = sub nsw i32 %conv.4.7, %conv6.4.7
  %mul.4.7 = mul nsw i32 %sub.4.7, %sub.4.7
  %add.4.7 = add nsw i32 %mul.4.7, %add.3.7
  %arrayidx.5.7 = getelementptr inbounds i8, i8* %add.ptr.6, i32 5
  %122 = load i8, i8* %arrayidx.5.7, align 1, !tbaa !6
  %conv.5.7 = zext i8 %122 to i32
  %arrayidx5.5.7 = getelementptr inbounds i8, i8* %add.ptr7.6, i32 5
  %123 = load i8, i8* %arrayidx5.5.7, align 1, !tbaa !6
  %conv6.5.7 = zext i8 %123 to i32
  %sub.5.7 = sub nsw i32 %conv.5.7, %conv6.5.7
  %mul.5.7 = mul nsw i32 %sub.5.7, %sub.5.7
  %add.5.7 = add nsw i32 %mul.5.7, %add.4.7
  %arrayidx.6.7 = getelementptr inbounds i8, i8* %add.ptr.6, i32 6
  %124 = load i8, i8* %arrayidx.6.7, align 1, !tbaa !6
  %conv.6.7 = zext i8 %124 to i32
  %arrayidx5.6.7 = getelementptr inbounds i8, i8* %add.ptr7.6, i32 6
  %125 = load i8, i8* %arrayidx5.6.7, align 1, !tbaa !6
  %conv6.6.7 = zext i8 %125 to i32
  %sub.6.7 = sub nsw i32 %conv.6.7, %conv6.6.7
  %mul.6.7 = mul nsw i32 %sub.6.7, %sub.6.7
  %add.6.7 = add nsw i32 %mul.6.7, %add.5.7
  %arrayidx.7.7 = getelementptr inbounds i8, i8* %add.ptr.6, i32 7
  %126 = load i8, i8* %arrayidx.7.7, align 1, !tbaa !6
  %conv.7.7 = zext i8 %126 to i32
  %arrayidx5.7.7 = getelementptr inbounds i8, i8* %add.ptr7.6, i32 7
  %127 = load i8, i8* %arrayidx5.7.7, align 1, !tbaa !6
  %conv6.7.7 = zext i8 %127 to i32
  %sub.7.7 = sub nsw i32 %conv.7.7, %conv6.7.7
  %mul.7.7 = mul nsw i32 %sub.7.7, %sub.7.7
  %add.7.7 = add nsw i32 %mul.7.7, %add.6.7
  ret i32 %add.7.7
}

; Function Attrs: norecurse nounwind readonly
define internal i32 @x264_pixel_ssd_8x4(i8* nocapture readonly %pix1, i32 %i_stride_pix1, i8* nocapture readonly %pix2, i32 %i_stride_pix2) #3 {
entry:
  %0 = load i8, i8* %pix1, align 1, !tbaa !6
  %conv = zext i8 %0 to i32
  %1 = load i8, i8* %pix2, align 1, !tbaa !6
  %conv6 = zext i8 %1 to i32
  %sub = sub nsw i32 %conv, %conv6
  %mul = mul nsw i32 %sub, %sub
  %arrayidx.1 = getelementptr inbounds i8, i8* %pix1, i32 1
  %2 = load i8, i8* %arrayidx.1, align 1, !tbaa !6
  %conv.1 = zext i8 %2 to i32
  %arrayidx5.1 = getelementptr inbounds i8, i8* %pix2, i32 1
  %3 = load i8, i8* %arrayidx5.1, align 1, !tbaa !6
  %conv6.1 = zext i8 %3 to i32
  %sub.1 = sub nsw i32 %conv.1, %conv6.1
  %mul.1 = mul nsw i32 %sub.1, %sub.1
  %add.1 = add nuw nsw i32 %mul.1, %mul
  %arrayidx.2 = getelementptr inbounds i8, i8* %pix1, i32 2
  %4 = load i8, i8* %arrayidx.2, align 1, !tbaa !6
  %conv.2 = zext i8 %4 to i32
  %arrayidx5.2 = getelementptr inbounds i8, i8* %pix2, i32 2
  %5 = load i8, i8* %arrayidx5.2, align 1, !tbaa !6
  %conv6.2 = zext i8 %5 to i32
  %sub.2 = sub nsw i32 %conv.2, %conv6.2
  %mul.2 = mul nsw i32 %sub.2, %sub.2
  %add.2 = add nuw nsw i32 %mul.2, %add.1
  %arrayidx.3 = getelementptr inbounds i8, i8* %pix1, i32 3
  %6 = load i8, i8* %arrayidx.3, align 1, !tbaa !6
  %conv.3 = zext i8 %6 to i32
  %arrayidx5.3 = getelementptr inbounds i8, i8* %pix2, i32 3
  %7 = load i8, i8* %arrayidx5.3, align 1, !tbaa !6
  %conv6.3 = zext i8 %7 to i32
  %sub.3 = sub nsw i32 %conv.3, %conv6.3
  %mul.3 = mul nsw i32 %sub.3, %sub.3
  %add.3 = add nuw nsw i32 %mul.3, %add.2
  %arrayidx.4 = getelementptr inbounds i8, i8* %pix1, i32 4
  %8 = load i8, i8* %arrayidx.4, align 1, !tbaa !6
  %conv.4 = zext i8 %8 to i32
  %arrayidx5.4 = getelementptr inbounds i8, i8* %pix2, i32 4
  %9 = load i8, i8* %arrayidx5.4, align 1, !tbaa !6
  %conv6.4 = zext i8 %9 to i32
  %sub.4 = sub nsw i32 %conv.4, %conv6.4
  %mul.4 = mul nsw i32 %sub.4, %sub.4
  %add.4 = add nuw nsw i32 %mul.4, %add.3
  %arrayidx.5 = getelementptr inbounds i8, i8* %pix1, i32 5
  %10 = load i8, i8* %arrayidx.5, align 1, !tbaa !6
  %conv.5 = zext i8 %10 to i32
  %arrayidx5.5 = getelementptr inbounds i8, i8* %pix2, i32 5
  %11 = load i8, i8* %arrayidx5.5, align 1, !tbaa !6
  %conv6.5 = zext i8 %11 to i32
  %sub.5 = sub nsw i32 %conv.5, %conv6.5
  %mul.5 = mul nsw i32 %sub.5, %sub.5
  %add.5 = add nuw nsw i32 %mul.5, %add.4
  %arrayidx.6 = getelementptr inbounds i8, i8* %pix1, i32 6
  %12 = load i8, i8* %arrayidx.6, align 1, !tbaa !6
  %conv.6 = zext i8 %12 to i32
  %arrayidx5.6 = getelementptr inbounds i8, i8* %pix2, i32 6
  %13 = load i8, i8* %arrayidx5.6, align 1, !tbaa !6
  %conv6.6 = zext i8 %13 to i32
  %sub.6 = sub nsw i32 %conv.6, %conv6.6
  %mul.6 = mul nsw i32 %sub.6, %sub.6
  %add.6 = add nuw nsw i32 %mul.6, %add.5
  %arrayidx.7 = getelementptr inbounds i8, i8* %pix1, i32 7
  %14 = load i8, i8* %arrayidx.7, align 1, !tbaa !6
  %conv.7 = zext i8 %14 to i32
  %arrayidx5.7 = getelementptr inbounds i8, i8* %pix2, i32 7
  %15 = load i8, i8* %arrayidx5.7, align 1, !tbaa !6
  %conv6.7 = zext i8 %15 to i32
  %sub.7 = sub nsw i32 %conv.7, %conv6.7
  %mul.7 = mul nsw i32 %sub.7, %sub.7
  %add.7 = add nsw i32 %mul.7, %add.6
  %add.ptr = getelementptr inbounds i8, i8* %pix1, i32 %i_stride_pix1
  %add.ptr7 = getelementptr inbounds i8, i8* %pix2, i32 %i_stride_pix2
  %16 = load i8, i8* %add.ptr, align 1, !tbaa !6
  %conv.129 = zext i8 %16 to i32
  %17 = load i8, i8* %add.ptr7, align 1, !tbaa !6
  %conv6.130 = zext i8 %17 to i32
  %sub.131 = sub nsw i32 %conv.129, %conv6.130
  %mul.132 = mul nsw i32 %sub.131, %sub.131
  %add.133 = add nsw i32 %mul.132, %add.7
  %arrayidx.1.1 = getelementptr inbounds i8, i8* %add.ptr, i32 1
  %18 = load i8, i8* %arrayidx.1.1, align 1, !tbaa !6
  %conv.1.1 = zext i8 %18 to i32
  %arrayidx5.1.1 = getelementptr inbounds i8, i8* %add.ptr7, i32 1
  %19 = load i8, i8* %arrayidx5.1.1, align 1, !tbaa !6
  %conv6.1.1 = zext i8 %19 to i32
  %sub.1.1 = sub nsw i32 %conv.1.1, %conv6.1.1
  %mul.1.1 = mul nsw i32 %sub.1.1, %sub.1.1
  %add.1.1 = add nsw i32 %mul.1.1, %add.133
  %arrayidx.2.1 = getelementptr inbounds i8, i8* %add.ptr, i32 2
  %20 = load i8, i8* %arrayidx.2.1, align 1, !tbaa !6
  %conv.2.1 = zext i8 %20 to i32
  %arrayidx5.2.1 = getelementptr inbounds i8, i8* %add.ptr7, i32 2
  %21 = load i8, i8* %arrayidx5.2.1, align 1, !tbaa !6
  %conv6.2.1 = zext i8 %21 to i32
  %sub.2.1 = sub nsw i32 %conv.2.1, %conv6.2.1
  %mul.2.1 = mul nsw i32 %sub.2.1, %sub.2.1
  %add.2.1 = add nsw i32 %mul.2.1, %add.1.1
  %arrayidx.3.1 = getelementptr inbounds i8, i8* %add.ptr, i32 3
  %22 = load i8, i8* %arrayidx.3.1, align 1, !tbaa !6
  %conv.3.1 = zext i8 %22 to i32
  %arrayidx5.3.1 = getelementptr inbounds i8, i8* %add.ptr7, i32 3
  %23 = load i8, i8* %arrayidx5.3.1, align 1, !tbaa !6
  %conv6.3.1 = zext i8 %23 to i32
  %sub.3.1 = sub nsw i32 %conv.3.1, %conv6.3.1
  %mul.3.1 = mul nsw i32 %sub.3.1, %sub.3.1
  %add.3.1 = add nsw i32 %mul.3.1, %add.2.1
  %arrayidx.4.1 = getelementptr inbounds i8, i8* %add.ptr, i32 4
  %24 = load i8, i8* %arrayidx.4.1, align 1, !tbaa !6
  %conv.4.1 = zext i8 %24 to i32
  %arrayidx5.4.1 = getelementptr inbounds i8, i8* %add.ptr7, i32 4
  %25 = load i8, i8* %arrayidx5.4.1, align 1, !tbaa !6
  %conv6.4.1 = zext i8 %25 to i32
  %sub.4.1 = sub nsw i32 %conv.4.1, %conv6.4.1
  %mul.4.1 = mul nsw i32 %sub.4.1, %sub.4.1
  %add.4.1 = add nsw i32 %mul.4.1, %add.3.1
  %arrayidx.5.1 = getelementptr inbounds i8, i8* %add.ptr, i32 5
  %26 = load i8, i8* %arrayidx.5.1, align 1, !tbaa !6
  %conv.5.1 = zext i8 %26 to i32
  %arrayidx5.5.1 = getelementptr inbounds i8, i8* %add.ptr7, i32 5
  %27 = load i8, i8* %arrayidx5.5.1, align 1, !tbaa !6
  %conv6.5.1 = zext i8 %27 to i32
  %sub.5.1 = sub nsw i32 %conv.5.1, %conv6.5.1
  %mul.5.1 = mul nsw i32 %sub.5.1, %sub.5.1
  %add.5.1 = add nsw i32 %mul.5.1, %add.4.1
  %arrayidx.6.1 = getelementptr inbounds i8, i8* %add.ptr, i32 6
  %28 = load i8, i8* %arrayidx.6.1, align 1, !tbaa !6
  %conv.6.1 = zext i8 %28 to i32
  %arrayidx5.6.1 = getelementptr inbounds i8, i8* %add.ptr7, i32 6
  %29 = load i8, i8* %arrayidx5.6.1, align 1, !tbaa !6
  %conv6.6.1 = zext i8 %29 to i32
  %sub.6.1 = sub nsw i32 %conv.6.1, %conv6.6.1
  %mul.6.1 = mul nsw i32 %sub.6.1, %sub.6.1
  %add.6.1 = add nsw i32 %mul.6.1, %add.5.1
  %arrayidx.7.1 = getelementptr inbounds i8, i8* %add.ptr, i32 7
  %30 = load i8, i8* %arrayidx.7.1, align 1, !tbaa !6
  %conv.7.1 = zext i8 %30 to i32
  %arrayidx5.7.1 = getelementptr inbounds i8, i8* %add.ptr7, i32 7
  %31 = load i8, i8* %arrayidx5.7.1, align 1, !tbaa !6
  %conv6.7.1 = zext i8 %31 to i32
  %sub.7.1 = sub nsw i32 %conv.7.1, %conv6.7.1
  %mul.7.1 = mul nsw i32 %sub.7.1, %sub.7.1
  %add.7.1 = add nsw i32 %mul.7.1, %add.6.1
  %add.ptr.1 = getelementptr inbounds i8, i8* %add.ptr, i32 %i_stride_pix1
  %add.ptr7.1 = getelementptr inbounds i8, i8* %add.ptr7, i32 %i_stride_pix2
  %32 = load i8, i8* %add.ptr.1, align 1, !tbaa !6
  %conv.234 = zext i8 %32 to i32
  %33 = load i8, i8* %add.ptr7.1, align 1, !tbaa !6
  %conv6.235 = zext i8 %33 to i32
  %sub.236 = sub nsw i32 %conv.234, %conv6.235
  %mul.237 = mul nsw i32 %sub.236, %sub.236
  %add.238 = add nsw i32 %mul.237, %add.7.1
  %arrayidx.1.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 1
  %34 = load i8, i8* %arrayidx.1.2, align 1, !tbaa !6
  %conv.1.2 = zext i8 %34 to i32
  %arrayidx5.1.2 = getelementptr inbounds i8, i8* %add.ptr7.1, i32 1
  %35 = load i8, i8* %arrayidx5.1.2, align 1, !tbaa !6
  %conv6.1.2 = zext i8 %35 to i32
  %sub.1.2 = sub nsw i32 %conv.1.2, %conv6.1.2
  %mul.1.2 = mul nsw i32 %sub.1.2, %sub.1.2
  %add.1.2 = add nsw i32 %mul.1.2, %add.238
  %arrayidx.2.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 2
  %36 = load i8, i8* %arrayidx.2.2, align 1, !tbaa !6
  %conv.2.2 = zext i8 %36 to i32
  %arrayidx5.2.2 = getelementptr inbounds i8, i8* %add.ptr7.1, i32 2
  %37 = load i8, i8* %arrayidx5.2.2, align 1, !tbaa !6
  %conv6.2.2 = zext i8 %37 to i32
  %sub.2.2 = sub nsw i32 %conv.2.2, %conv6.2.2
  %mul.2.2 = mul nsw i32 %sub.2.2, %sub.2.2
  %add.2.2 = add nsw i32 %mul.2.2, %add.1.2
  %arrayidx.3.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 3
  %38 = load i8, i8* %arrayidx.3.2, align 1, !tbaa !6
  %conv.3.2 = zext i8 %38 to i32
  %arrayidx5.3.2 = getelementptr inbounds i8, i8* %add.ptr7.1, i32 3
  %39 = load i8, i8* %arrayidx5.3.2, align 1, !tbaa !6
  %conv6.3.2 = zext i8 %39 to i32
  %sub.3.2 = sub nsw i32 %conv.3.2, %conv6.3.2
  %mul.3.2 = mul nsw i32 %sub.3.2, %sub.3.2
  %add.3.2 = add nsw i32 %mul.3.2, %add.2.2
  %arrayidx.4.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 4
  %40 = load i8, i8* %arrayidx.4.2, align 1, !tbaa !6
  %conv.4.2 = zext i8 %40 to i32
  %arrayidx5.4.2 = getelementptr inbounds i8, i8* %add.ptr7.1, i32 4
  %41 = load i8, i8* %arrayidx5.4.2, align 1, !tbaa !6
  %conv6.4.2 = zext i8 %41 to i32
  %sub.4.2 = sub nsw i32 %conv.4.2, %conv6.4.2
  %mul.4.2 = mul nsw i32 %sub.4.2, %sub.4.2
  %add.4.2 = add nsw i32 %mul.4.2, %add.3.2
  %arrayidx.5.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 5
  %42 = load i8, i8* %arrayidx.5.2, align 1, !tbaa !6
  %conv.5.2 = zext i8 %42 to i32
  %arrayidx5.5.2 = getelementptr inbounds i8, i8* %add.ptr7.1, i32 5
  %43 = load i8, i8* %arrayidx5.5.2, align 1, !tbaa !6
  %conv6.5.2 = zext i8 %43 to i32
  %sub.5.2 = sub nsw i32 %conv.5.2, %conv6.5.2
  %mul.5.2 = mul nsw i32 %sub.5.2, %sub.5.2
  %add.5.2 = add nsw i32 %mul.5.2, %add.4.2
  %arrayidx.6.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 6
  %44 = load i8, i8* %arrayidx.6.2, align 1, !tbaa !6
  %conv.6.2 = zext i8 %44 to i32
  %arrayidx5.6.2 = getelementptr inbounds i8, i8* %add.ptr7.1, i32 6
  %45 = load i8, i8* %arrayidx5.6.2, align 1, !tbaa !6
  %conv6.6.2 = zext i8 %45 to i32
  %sub.6.2 = sub nsw i32 %conv.6.2, %conv6.6.2
  %mul.6.2 = mul nsw i32 %sub.6.2, %sub.6.2
  %add.6.2 = add nsw i32 %mul.6.2, %add.5.2
  %arrayidx.7.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 7
  %46 = load i8, i8* %arrayidx.7.2, align 1, !tbaa !6
  %conv.7.2 = zext i8 %46 to i32
  %arrayidx5.7.2 = getelementptr inbounds i8, i8* %add.ptr7.1, i32 7
  %47 = load i8, i8* %arrayidx5.7.2, align 1, !tbaa !6
  %conv6.7.2 = zext i8 %47 to i32
  %sub.7.2 = sub nsw i32 %conv.7.2, %conv6.7.2
  %mul.7.2 = mul nsw i32 %sub.7.2, %sub.7.2
  %add.7.2 = add nsw i32 %mul.7.2, %add.6.2
  %add.ptr.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 %i_stride_pix1
  %add.ptr7.2 = getelementptr inbounds i8, i8* %add.ptr7.1, i32 %i_stride_pix2
  %48 = load i8, i8* %add.ptr.2, align 1, !tbaa !6
  %conv.339 = zext i8 %48 to i32
  %49 = load i8, i8* %add.ptr7.2, align 1, !tbaa !6
  %conv6.340 = zext i8 %49 to i32
  %sub.341 = sub nsw i32 %conv.339, %conv6.340
  %mul.342 = mul nsw i32 %sub.341, %sub.341
  %add.343 = add nsw i32 %mul.342, %add.7.2
  %arrayidx.1.3 = getelementptr inbounds i8, i8* %add.ptr.2, i32 1
  %50 = load i8, i8* %arrayidx.1.3, align 1, !tbaa !6
  %conv.1.3 = zext i8 %50 to i32
  %arrayidx5.1.3 = getelementptr inbounds i8, i8* %add.ptr7.2, i32 1
  %51 = load i8, i8* %arrayidx5.1.3, align 1, !tbaa !6
  %conv6.1.3 = zext i8 %51 to i32
  %sub.1.3 = sub nsw i32 %conv.1.3, %conv6.1.3
  %mul.1.3 = mul nsw i32 %sub.1.3, %sub.1.3
  %add.1.3 = add nsw i32 %mul.1.3, %add.343
  %arrayidx.2.3 = getelementptr inbounds i8, i8* %add.ptr.2, i32 2
  %52 = load i8, i8* %arrayidx.2.3, align 1, !tbaa !6
  %conv.2.3 = zext i8 %52 to i32
  %arrayidx5.2.3 = getelementptr inbounds i8, i8* %add.ptr7.2, i32 2
  %53 = load i8, i8* %arrayidx5.2.3, align 1, !tbaa !6
  %conv6.2.3 = zext i8 %53 to i32
  %sub.2.3 = sub nsw i32 %conv.2.3, %conv6.2.3
  %mul.2.3 = mul nsw i32 %sub.2.3, %sub.2.3
  %add.2.3 = add nsw i32 %mul.2.3, %add.1.3
  %arrayidx.3.3 = getelementptr inbounds i8, i8* %add.ptr.2, i32 3
  %54 = load i8, i8* %arrayidx.3.3, align 1, !tbaa !6
  %conv.3.3 = zext i8 %54 to i32
  %arrayidx5.3.3 = getelementptr inbounds i8, i8* %add.ptr7.2, i32 3
  %55 = load i8, i8* %arrayidx5.3.3, align 1, !tbaa !6
  %conv6.3.3 = zext i8 %55 to i32
  %sub.3.3 = sub nsw i32 %conv.3.3, %conv6.3.3
  %mul.3.3 = mul nsw i32 %sub.3.3, %sub.3.3
  %add.3.3 = add nsw i32 %mul.3.3, %add.2.3
  %arrayidx.4.3 = getelementptr inbounds i8, i8* %add.ptr.2, i32 4
  %56 = load i8, i8* %arrayidx.4.3, align 1, !tbaa !6
  %conv.4.3 = zext i8 %56 to i32
  %arrayidx5.4.3 = getelementptr inbounds i8, i8* %add.ptr7.2, i32 4
  %57 = load i8, i8* %arrayidx5.4.3, align 1, !tbaa !6
  %conv6.4.3 = zext i8 %57 to i32
  %sub.4.3 = sub nsw i32 %conv.4.3, %conv6.4.3
  %mul.4.3 = mul nsw i32 %sub.4.3, %sub.4.3
  %add.4.3 = add nsw i32 %mul.4.3, %add.3.3
  %arrayidx.5.3 = getelementptr inbounds i8, i8* %add.ptr.2, i32 5
  %58 = load i8, i8* %arrayidx.5.3, align 1, !tbaa !6
  %conv.5.3 = zext i8 %58 to i32
  %arrayidx5.5.3 = getelementptr inbounds i8, i8* %add.ptr7.2, i32 5
  %59 = load i8, i8* %arrayidx5.5.3, align 1, !tbaa !6
  %conv6.5.3 = zext i8 %59 to i32
  %sub.5.3 = sub nsw i32 %conv.5.3, %conv6.5.3
  %mul.5.3 = mul nsw i32 %sub.5.3, %sub.5.3
  %add.5.3 = add nsw i32 %mul.5.3, %add.4.3
  %arrayidx.6.3 = getelementptr inbounds i8, i8* %add.ptr.2, i32 6
  %60 = load i8, i8* %arrayidx.6.3, align 1, !tbaa !6
  %conv.6.3 = zext i8 %60 to i32
  %arrayidx5.6.3 = getelementptr inbounds i8, i8* %add.ptr7.2, i32 6
  %61 = load i8, i8* %arrayidx5.6.3, align 1, !tbaa !6
  %conv6.6.3 = zext i8 %61 to i32
  %sub.6.3 = sub nsw i32 %conv.6.3, %conv6.6.3
  %mul.6.3 = mul nsw i32 %sub.6.3, %sub.6.3
  %add.6.3 = add nsw i32 %mul.6.3, %add.5.3
  %arrayidx.7.3 = getelementptr inbounds i8, i8* %add.ptr.2, i32 7
  %62 = load i8, i8* %arrayidx.7.3, align 1, !tbaa !6
  %conv.7.3 = zext i8 %62 to i32
  %arrayidx5.7.3 = getelementptr inbounds i8, i8* %add.ptr7.2, i32 7
  %63 = load i8, i8* %arrayidx5.7.3, align 1, !tbaa !6
  %conv6.7.3 = zext i8 %63 to i32
  %sub.7.3 = sub nsw i32 %conv.7.3, %conv6.7.3
  %mul.7.3 = mul nsw i32 %sub.7.3, %sub.7.3
  %add.7.3 = add nsw i32 %mul.7.3, %add.6.3
  ret i32 %add.7.3
}

; Function Attrs: norecurse nounwind readonly
define internal i32 @x264_pixel_ssd_4x8(i8* nocapture readonly %pix1, i32 %i_stride_pix1, i8* nocapture readonly %pix2, i32 %i_stride_pix2) #3 {
entry:
  %0 = load i8, i8* %pix1, align 1, !tbaa !6
  %conv = zext i8 %0 to i32
  %1 = load i8, i8* %pix2, align 1, !tbaa !6
  %conv6 = zext i8 %1 to i32
  %sub = sub nsw i32 %conv, %conv6
  %mul = mul nsw i32 %sub, %sub
  %arrayidx.1 = getelementptr inbounds i8, i8* %pix1, i32 1
  %2 = load i8, i8* %arrayidx.1, align 1, !tbaa !6
  %conv.1 = zext i8 %2 to i32
  %arrayidx5.1 = getelementptr inbounds i8, i8* %pix2, i32 1
  %3 = load i8, i8* %arrayidx5.1, align 1, !tbaa !6
  %conv6.1 = zext i8 %3 to i32
  %sub.1 = sub nsw i32 %conv.1, %conv6.1
  %mul.1 = mul nsw i32 %sub.1, %sub.1
  %add.1 = add nuw nsw i32 %mul.1, %mul
  %arrayidx.2 = getelementptr inbounds i8, i8* %pix1, i32 2
  %4 = load i8, i8* %arrayidx.2, align 1, !tbaa !6
  %conv.2 = zext i8 %4 to i32
  %arrayidx5.2 = getelementptr inbounds i8, i8* %pix2, i32 2
  %5 = load i8, i8* %arrayidx5.2, align 1, !tbaa !6
  %conv6.2 = zext i8 %5 to i32
  %sub.2 = sub nsw i32 %conv.2, %conv6.2
  %mul.2 = mul nsw i32 %sub.2, %sub.2
  %add.2 = add nuw nsw i32 %mul.2, %add.1
  %arrayidx.3 = getelementptr inbounds i8, i8* %pix1, i32 3
  %6 = load i8, i8* %arrayidx.3, align 1, !tbaa !6
  %conv.3 = zext i8 %6 to i32
  %arrayidx5.3 = getelementptr inbounds i8, i8* %pix2, i32 3
  %7 = load i8, i8* %arrayidx5.3, align 1, !tbaa !6
  %conv6.3 = zext i8 %7 to i32
  %sub.3 = sub nsw i32 %conv.3, %conv6.3
  %mul.3 = mul nsw i32 %sub.3, %sub.3
  %add.3 = add nuw nsw i32 %mul.3, %add.2
  %add.ptr = getelementptr inbounds i8, i8* %pix1, i32 %i_stride_pix1
  %add.ptr7 = getelementptr inbounds i8, i8* %pix2, i32 %i_stride_pix2
  %8 = load i8, i8* %add.ptr, align 1, !tbaa !6
  %conv.129 = zext i8 %8 to i32
  %9 = load i8, i8* %add.ptr7, align 1, !tbaa !6
  %conv6.130 = zext i8 %9 to i32
  %sub.131 = sub nsw i32 %conv.129, %conv6.130
  %mul.132 = mul nsw i32 %sub.131, %sub.131
  %add.133 = add nuw nsw i32 %mul.132, %add.3
  %arrayidx.1.1 = getelementptr inbounds i8, i8* %add.ptr, i32 1
  %10 = load i8, i8* %arrayidx.1.1, align 1, !tbaa !6
  %conv.1.1 = zext i8 %10 to i32
  %arrayidx5.1.1 = getelementptr inbounds i8, i8* %add.ptr7, i32 1
  %11 = load i8, i8* %arrayidx5.1.1, align 1, !tbaa !6
  %conv6.1.1 = zext i8 %11 to i32
  %sub.1.1 = sub nsw i32 %conv.1.1, %conv6.1.1
  %mul.1.1 = mul nsw i32 %sub.1.1, %sub.1.1
  %add.1.1 = add nuw nsw i32 %mul.1.1, %add.133
  %arrayidx.2.1 = getelementptr inbounds i8, i8* %add.ptr, i32 2
  %12 = load i8, i8* %arrayidx.2.1, align 1, !tbaa !6
  %conv.2.1 = zext i8 %12 to i32
  %arrayidx5.2.1 = getelementptr inbounds i8, i8* %add.ptr7, i32 2
  %13 = load i8, i8* %arrayidx5.2.1, align 1, !tbaa !6
  %conv6.2.1 = zext i8 %13 to i32
  %sub.2.1 = sub nsw i32 %conv.2.1, %conv6.2.1
  %mul.2.1 = mul nsw i32 %sub.2.1, %sub.2.1
  %add.2.1 = add nuw nsw i32 %mul.2.1, %add.1.1
  %arrayidx.3.1 = getelementptr inbounds i8, i8* %add.ptr, i32 3
  %14 = load i8, i8* %arrayidx.3.1, align 1, !tbaa !6
  %conv.3.1 = zext i8 %14 to i32
  %arrayidx5.3.1 = getelementptr inbounds i8, i8* %add.ptr7, i32 3
  %15 = load i8, i8* %arrayidx5.3.1, align 1, !tbaa !6
  %conv6.3.1 = zext i8 %15 to i32
  %sub.3.1 = sub nsw i32 %conv.3.1, %conv6.3.1
  %mul.3.1 = mul nsw i32 %sub.3.1, %sub.3.1
  %add.3.1 = add nsw i32 %mul.3.1, %add.2.1
  %add.ptr.1 = getelementptr inbounds i8, i8* %add.ptr, i32 %i_stride_pix1
  %add.ptr7.1 = getelementptr inbounds i8, i8* %add.ptr7, i32 %i_stride_pix2
  %16 = load i8, i8* %add.ptr.1, align 1, !tbaa !6
  %conv.234 = zext i8 %16 to i32
  %17 = load i8, i8* %add.ptr7.1, align 1, !tbaa !6
  %conv6.235 = zext i8 %17 to i32
  %sub.236 = sub nsw i32 %conv.234, %conv6.235
  %mul.237 = mul nsw i32 %sub.236, %sub.236
  %add.238 = add nsw i32 %mul.237, %add.3.1
  %arrayidx.1.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 1
  %18 = load i8, i8* %arrayidx.1.2, align 1, !tbaa !6
  %conv.1.2 = zext i8 %18 to i32
  %arrayidx5.1.2 = getelementptr inbounds i8, i8* %add.ptr7.1, i32 1
  %19 = load i8, i8* %arrayidx5.1.2, align 1, !tbaa !6
  %conv6.1.2 = zext i8 %19 to i32
  %sub.1.2 = sub nsw i32 %conv.1.2, %conv6.1.2
  %mul.1.2 = mul nsw i32 %sub.1.2, %sub.1.2
  %add.1.2 = add nsw i32 %mul.1.2, %add.238
  %arrayidx.2.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 2
  %20 = load i8, i8* %arrayidx.2.2, align 1, !tbaa !6
  %conv.2.2 = zext i8 %20 to i32
  %arrayidx5.2.2 = getelementptr inbounds i8, i8* %add.ptr7.1, i32 2
  %21 = load i8, i8* %arrayidx5.2.2, align 1, !tbaa !6
  %conv6.2.2 = zext i8 %21 to i32
  %sub.2.2 = sub nsw i32 %conv.2.2, %conv6.2.2
  %mul.2.2 = mul nsw i32 %sub.2.2, %sub.2.2
  %add.2.2 = add nsw i32 %mul.2.2, %add.1.2
  %arrayidx.3.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 3
  %22 = load i8, i8* %arrayidx.3.2, align 1, !tbaa !6
  %conv.3.2 = zext i8 %22 to i32
  %arrayidx5.3.2 = getelementptr inbounds i8, i8* %add.ptr7.1, i32 3
  %23 = load i8, i8* %arrayidx5.3.2, align 1, !tbaa !6
  %conv6.3.2 = zext i8 %23 to i32
  %sub.3.2 = sub nsw i32 %conv.3.2, %conv6.3.2
  %mul.3.2 = mul nsw i32 %sub.3.2, %sub.3.2
  %add.3.2 = add nsw i32 %mul.3.2, %add.2.2
  %add.ptr.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 %i_stride_pix1
  %add.ptr7.2 = getelementptr inbounds i8, i8* %add.ptr7.1, i32 %i_stride_pix2
  %24 = load i8, i8* %add.ptr.2, align 1, !tbaa !6
  %conv.339 = zext i8 %24 to i32
  %25 = load i8, i8* %add.ptr7.2, align 1, !tbaa !6
  %conv6.340 = zext i8 %25 to i32
  %sub.341 = sub nsw i32 %conv.339, %conv6.340
  %mul.342 = mul nsw i32 %sub.341, %sub.341
  %add.343 = add nsw i32 %mul.342, %add.3.2
  %arrayidx.1.3 = getelementptr inbounds i8, i8* %add.ptr.2, i32 1
  %26 = load i8, i8* %arrayidx.1.3, align 1, !tbaa !6
  %conv.1.3 = zext i8 %26 to i32
  %arrayidx5.1.3 = getelementptr inbounds i8, i8* %add.ptr7.2, i32 1
  %27 = load i8, i8* %arrayidx5.1.3, align 1, !tbaa !6
  %conv6.1.3 = zext i8 %27 to i32
  %sub.1.3 = sub nsw i32 %conv.1.3, %conv6.1.3
  %mul.1.3 = mul nsw i32 %sub.1.3, %sub.1.3
  %add.1.3 = add nsw i32 %mul.1.3, %add.343
  %arrayidx.2.3 = getelementptr inbounds i8, i8* %add.ptr.2, i32 2
  %28 = load i8, i8* %arrayidx.2.3, align 1, !tbaa !6
  %conv.2.3 = zext i8 %28 to i32
  %arrayidx5.2.3 = getelementptr inbounds i8, i8* %add.ptr7.2, i32 2
  %29 = load i8, i8* %arrayidx5.2.3, align 1, !tbaa !6
  %conv6.2.3 = zext i8 %29 to i32
  %sub.2.3 = sub nsw i32 %conv.2.3, %conv6.2.3
  %mul.2.3 = mul nsw i32 %sub.2.3, %sub.2.3
  %add.2.3 = add nsw i32 %mul.2.3, %add.1.3
  %arrayidx.3.3 = getelementptr inbounds i8, i8* %add.ptr.2, i32 3
  %30 = load i8, i8* %arrayidx.3.3, align 1, !tbaa !6
  %conv.3.3 = zext i8 %30 to i32
  %arrayidx5.3.3 = getelementptr inbounds i8, i8* %add.ptr7.2, i32 3
  %31 = load i8, i8* %arrayidx5.3.3, align 1, !tbaa !6
  %conv6.3.3 = zext i8 %31 to i32
  %sub.3.3 = sub nsw i32 %conv.3.3, %conv6.3.3
  %mul.3.3 = mul nsw i32 %sub.3.3, %sub.3.3
  %add.3.3 = add nsw i32 %mul.3.3, %add.2.3
  %add.ptr.3 = getelementptr inbounds i8, i8* %add.ptr.2, i32 %i_stride_pix1
  %add.ptr7.3 = getelementptr inbounds i8, i8* %add.ptr7.2, i32 %i_stride_pix2
  %32 = load i8, i8* %add.ptr.3, align 1, !tbaa !6
  %conv.4 = zext i8 %32 to i32
  %33 = load i8, i8* %add.ptr7.3, align 1, !tbaa !6
  %conv6.4 = zext i8 %33 to i32
  %sub.4 = sub nsw i32 %conv.4, %conv6.4
  %mul.4 = mul nsw i32 %sub.4, %sub.4
  %add.4 = add nsw i32 %mul.4, %add.3.3
  %arrayidx.1.4 = getelementptr inbounds i8, i8* %add.ptr.3, i32 1
  %34 = load i8, i8* %arrayidx.1.4, align 1, !tbaa !6
  %conv.1.4 = zext i8 %34 to i32
  %arrayidx5.1.4 = getelementptr inbounds i8, i8* %add.ptr7.3, i32 1
  %35 = load i8, i8* %arrayidx5.1.4, align 1, !tbaa !6
  %conv6.1.4 = zext i8 %35 to i32
  %sub.1.4 = sub nsw i32 %conv.1.4, %conv6.1.4
  %mul.1.4 = mul nsw i32 %sub.1.4, %sub.1.4
  %add.1.4 = add nsw i32 %mul.1.4, %add.4
  %arrayidx.2.4 = getelementptr inbounds i8, i8* %add.ptr.3, i32 2
  %36 = load i8, i8* %arrayidx.2.4, align 1, !tbaa !6
  %conv.2.4 = zext i8 %36 to i32
  %arrayidx5.2.4 = getelementptr inbounds i8, i8* %add.ptr7.3, i32 2
  %37 = load i8, i8* %arrayidx5.2.4, align 1, !tbaa !6
  %conv6.2.4 = zext i8 %37 to i32
  %sub.2.4 = sub nsw i32 %conv.2.4, %conv6.2.4
  %mul.2.4 = mul nsw i32 %sub.2.4, %sub.2.4
  %add.2.4 = add nsw i32 %mul.2.4, %add.1.4
  %arrayidx.3.4 = getelementptr inbounds i8, i8* %add.ptr.3, i32 3
  %38 = load i8, i8* %arrayidx.3.4, align 1, !tbaa !6
  %conv.3.4 = zext i8 %38 to i32
  %arrayidx5.3.4 = getelementptr inbounds i8, i8* %add.ptr7.3, i32 3
  %39 = load i8, i8* %arrayidx5.3.4, align 1, !tbaa !6
  %conv6.3.4 = zext i8 %39 to i32
  %sub.3.4 = sub nsw i32 %conv.3.4, %conv6.3.4
  %mul.3.4 = mul nsw i32 %sub.3.4, %sub.3.4
  %add.3.4 = add nsw i32 %mul.3.4, %add.2.4
  %add.ptr.4 = getelementptr inbounds i8, i8* %add.ptr.3, i32 %i_stride_pix1
  %add.ptr7.4 = getelementptr inbounds i8, i8* %add.ptr7.3, i32 %i_stride_pix2
  %40 = load i8, i8* %add.ptr.4, align 1, !tbaa !6
  %conv.5 = zext i8 %40 to i32
  %41 = load i8, i8* %add.ptr7.4, align 1, !tbaa !6
  %conv6.5 = zext i8 %41 to i32
  %sub.5 = sub nsw i32 %conv.5, %conv6.5
  %mul.5 = mul nsw i32 %sub.5, %sub.5
  %add.5 = add nsw i32 %mul.5, %add.3.4
  %arrayidx.1.5 = getelementptr inbounds i8, i8* %add.ptr.4, i32 1
  %42 = load i8, i8* %arrayidx.1.5, align 1, !tbaa !6
  %conv.1.5 = zext i8 %42 to i32
  %arrayidx5.1.5 = getelementptr inbounds i8, i8* %add.ptr7.4, i32 1
  %43 = load i8, i8* %arrayidx5.1.5, align 1, !tbaa !6
  %conv6.1.5 = zext i8 %43 to i32
  %sub.1.5 = sub nsw i32 %conv.1.5, %conv6.1.5
  %mul.1.5 = mul nsw i32 %sub.1.5, %sub.1.5
  %add.1.5 = add nsw i32 %mul.1.5, %add.5
  %arrayidx.2.5 = getelementptr inbounds i8, i8* %add.ptr.4, i32 2
  %44 = load i8, i8* %arrayidx.2.5, align 1, !tbaa !6
  %conv.2.5 = zext i8 %44 to i32
  %arrayidx5.2.5 = getelementptr inbounds i8, i8* %add.ptr7.4, i32 2
  %45 = load i8, i8* %arrayidx5.2.5, align 1, !tbaa !6
  %conv6.2.5 = zext i8 %45 to i32
  %sub.2.5 = sub nsw i32 %conv.2.5, %conv6.2.5
  %mul.2.5 = mul nsw i32 %sub.2.5, %sub.2.5
  %add.2.5 = add nsw i32 %mul.2.5, %add.1.5
  %arrayidx.3.5 = getelementptr inbounds i8, i8* %add.ptr.4, i32 3
  %46 = load i8, i8* %arrayidx.3.5, align 1, !tbaa !6
  %conv.3.5 = zext i8 %46 to i32
  %arrayidx5.3.5 = getelementptr inbounds i8, i8* %add.ptr7.4, i32 3
  %47 = load i8, i8* %arrayidx5.3.5, align 1, !tbaa !6
  %conv6.3.5 = zext i8 %47 to i32
  %sub.3.5 = sub nsw i32 %conv.3.5, %conv6.3.5
  %mul.3.5 = mul nsw i32 %sub.3.5, %sub.3.5
  %add.3.5 = add nsw i32 %mul.3.5, %add.2.5
  %add.ptr.5 = getelementptr inbounds i8, i8* %add.ptr.4, i32 %i_stride_pix1
  %add.ptr7.5 = getelementptr inbounds i8, i8* %add.ptr7.4, i32 %i_stride_pix2
  %48 = load i8, i8* %add.ptr.5, align 1, !tbaa !6
  %conv.6 = zext i8 %48 to i32
  %49 = load i8, i8* %add.ptr7.5, align 1, !tbaa !6
  %conv6.6 = zext i8 %49 to i32
  %sub.6 = sub nsw i32 %conv.6, %conv6.6
  %mul.6 = mul nsw i32 %sub.6, %sub.6
  %add.6 = add nsw i32 %mul.6, %add.3.5
  %arrayidx.1.6 = getelementptr inbounds i8, i8* %add.ptr.5, i32 1
  %50 = load i8, i8* %arrayidx.1.6, align 1, !tbaa !6
  %conv.1.6 = zext i8 %50 to i32
  %arrayidx5.1.6 = getelementptr inbounds i8, i8* %add.ptr7.5, i32 1
  %51 = load i8, i8* %arrayidx5.1.6, align 1, !tbaa !6
  %conv6.1.6 = zext i8 %51 to i32
  %sub.1.6 = sub nsw i32 %conv.1.6, %conv6.1.6
  %mul.1.6 = mul nsw i32 %sub.1.6, %sub.1.6
  %add.1.6 = add nsw i32 %mul.1.6, %add.6
  %arrayidx.2.6 = getelementptr inbounds i8, i8* %add.ptr.5, i32 2
  %52 = load i8, i8* %arrayidx.2.6, align 1, !tbaa !6
  %conv.2.6 = zext i8 %52 to i32
  %arrayidx5.2.6 = getelementptr inbounds i8, i8* %add.ptr7.5, i32 2
  %53 = load i8, i8* %arrayidx5.2.6, align 1, !tbaa !6
  %conv6.2.6 = zext i8 %53 to i32
  %sub.2.6 = sub nsw i32 %conv.2.6, %conv6.2.6
  %mul.2.6 = mul nsw i32 %sub.2.6, %sub.2.6
  %add.2.6 = add nsw i32 %mul.2.6, %add.1.6
  %arrayidx.3.6 = getelementptr inbounds i8, i8* %add.ptr.5, i32 3
  %54 = load i8, i8* %arrayidx.3.6, align 1, !tbaa !6
  %conv.3.6 = zext i8 %54 to i32
  %arrayidx5.3.6 = getelementptr inbounds i8, i8* %add.ptr7.5, i32 3
  %55 = load i8, i8* %arrayidx5.3.6, align 1, !tbaa !6
  %conv6.3.6 = zext i8 %55 to i32
  %sub.3.6 = sub nsw i32 %conv.3.6, %conv6.3.6
  %mul.3.6 = mul nsw i32 %sub.3.6, %sub.3.6
  %add.3.6 = add nsw i32 %mul.3.6, %add.2.6
  %add.ptr.6 = getelementptr inbounds i8, i8* %add.ptr.5, i32 %i_stride_pix1
  %add.ptr7.6 = getelementptr inbounds i8, i8* %add.ptr7.5, i32 %i_stride_pix2
  %56 = load i8, i8* %add.ptr.6, align 1, !tbaa !6
  %conv.7 = zext i8 %56 to i32
  %57 = load i8, i8* %add.ptr7.6, align 1, !tbaa !6
  %conv6.7 = zext i8 %57 to i32
  %sub.7 = sub nsw i32 %conv.7, %conv6.7
  %mul.7 = mul nsw i32 %sub.7, %sub.7
  %add.7 = add nsw i32 %mul.7, %add.3.6
  %arrayidx.1.7 = getelementptr inbounds i8, i8* %add.ptr.6, i32 1
  %58 = load i8, i8* %arrayidx.1.7, align 1, !tbaa !6
  %conv.1.7 = zext i8 %58 to i32
  %arrayidx5.1.7 = getelementptr inbounds i8, i8* %add.ptr7.6, i32 1
  %59 = load i8, i8* %arrayidx5.1.7, align 1, !tbaa !6
  %conv6.1.7 = zext i8 %59 to i32
  %sub.1.7 = sub nsw i32 %conv.1.7, %conv6.1.7
  %mul.1.7 = mul nsw i32 %sub.1.7, %sub.1.7
  %add.1.7 = add nsw i32 %mul.1.7, %add.7
  %arrayidx.2.7 = getelementptr inbounds i8, i8* %add.ptr.6, i32 2
  %60 = load i8, i8* %arrayidx.2.7, align 1, !tbaa !6
  %conv.2.7 = zext i8 %60 to i32
  %arrayidx5.2.7 = getelementptr inbounds i8, i8* %add.ptr7.6, i32 2
  %61 = load i8, i8* %arrayidx5.2.7, align 1, !tbaa !6
  %conv6.2.7 = zext i8 %61 to i32
  %sub.2.7 = sub nsw i32 %conv.2.7, %conv6.2.7
  %mul.2.7 = mul nsw i32 %sub.2.7, %sub.2.7
  %add.2.7 = add nsw i32 %mul.2.7, %add.1.7
  %arrayidx.3.7 = getelementptr inbounds i8, i8* %add.ptr.6, i32 3
  %62 = load i8, i8* %arrayidx.3.7, align 1, !tbaa !6
  %conv.3.7 = zext i8 %62 to i32
  %arrayidx5.3.7 = getelementptr inbounds i8, i8* %add.ptr7.6, i32 3
  %63 = load i8, i8* %arrayidx5.3.7, align 1, !tbaa !6
  %conv6.3.7 = zext i8 %63 to i32
  %sub.3.7 = sub nsw i32 %conv.3.7, %conv6.3.7
  %mul.3.7 = mul nsw i32 %sub.3.7, %sub.3.7
  %add.3.7 = add nsw i32 %mul.3.7, %add.2.7
  ret i32 %add.3.7
}

; Function Attrs: norecurse nounwind readonly
define internal i32 @x264_pixel_ssd_4x4(i8* nocapture readonly %pix1, i32 %i_stride_pix1, i8* nocapture readonly %pix2, i32 %i_stride_pix2) #3 {
entry:
  %0 = load i8, i8* %pix1, align 1, !tbaa !6
  %conv = zext i8 %0 to i32
  %1 = load i8, i8* %pix2, align 1, !tbaa !6
  %conv6 = zext i8 %1 to i32
  %sub = sub nsw i32 %conv, %conv6
  %mul = mul nsw i32 %sub, %sub
  %arrayidx.1 = getelementptr inbounds i8, i8* %pix1, i32 1
  %2 = load i8, i8* %arrayidx.1, align 1, !tbaa !6
  %conv.1 = zext i8 %2 to i32
  %arrayidx5.1 = getelementptr inbounds i8, i8* %pix2, i32 1
  %3 = load i8, i8* %arrayidx5.1, align 1, !tbaa !6
  %conv6.1 = zext i8 %3 to i32
  %sub.1 = sub nsw i32 %conv.1, %conv6.1
  %mul.1 = mul nsw i32 %sub.1, %sub.1
  %add.1 = add nuw nsw i32 %mul.1, %mul
  %arrayidx.2 = getelementptr inbounds i8, i8* %pix1, i32 2
  %4 = load i8, i8* %arrayidx.2, align 1, !tbaa !6
  %conv.2 = zext i8 %4 to i32
  %arrayidx5.2 = getelementptr inbounds i8, i8* %pix2, i32 2
  %5 = load i8, i8* %arrayidx5.2, align 1, !tbaa !6
  %conv6.2 = zext i8 %5 to i32
  %sub.2 = sub nsw i32 %conv.2, %conv6.2
  %mul.2 = mul nsw i32 %sub.2, %sub.2
  %add.2 = add nuw nsw i32 %mul.2, %add.1
  %arrayidx.3 = getelementptr inbounds i8, i8* %pix1, i32 3
  %6 = load i8, i8* %arrayidx.3, align 1, !tbaa !6
  %conv.3 = zext i8 %6 to i32
  %arrayidx5.3 = getelementptr inbounds i8, i8* %pix2, i32 3
  %7 = load i8, i8* %arrayidx5.3, align 1, !tbaa !6
  %conv6.3 = zext i8 %7 to i32
  %sub.3 = sub nsw i32 %conv.3, %conv6.3
  %mul.3 = mul nsw i32 %sub.3, %sub.3
  %add.3 = add nuw nsw i32 %mul.3, %add.2
  %add.ptr = getelementptr inbounds i8, i8* %pix1, i32 %i_stride_pix1
  %add.ptr7 = getelementptr inbounds i8, i8* %pix2, i32 %i_stride_pix2
  %8 = load i8, i8* %add.ptr, align 1, !tbaa !6
  %conv.129 = zext i8 %8 to i32
  %9 = load i8, i8* %add.ptr7, align 1, !tbaa !6
  %conv6.130 = zext i8 %9 to i32
  %sub.131 = sub nsw i32 %conv.129, %conv6.130
  %mul.132 = mul nsw i32 %sub.131, %sub.131
  %add.133 = add nuw nsw i32 %mul.132, %add.3
  %arrayidx.1.1 = getelementptr inbounds i8, i8* %add.ptr, i32 1
  %10 = load i8, i8* %arrayidx.1.1, align 1, !tbaa !6
  %conv.1.1 = zext i8 %10 to i32
  %arrayidx5.1.1 = getelementptr inbounds i8, i8* %add.ptr7, i32 1
  %11 = load i8, i8* %arrayidx5.1.1, align 1, !tbaa !6
  %conv6.1.1 = zext i8 %11 to i32
  %sub.1.1 = sub nsw i32 %conv.1.1, %conv6.1.1
  %mul.1.1 = mul nsw i32 %sub.1.1, %sub.1.1
  %add.1.1 = add nuw nsw i32 %mul.1.1, %add.133
  %arrayidx.2.1 = getelementptr inbounds i8, i8* %add.ptr, i32 2
  %12 = load i8, i8* %arrayidx.2.1, align 1, !tbaa !6
  %conv.2.1 = zext i8 %12 to i32
  %arrayidx5.2.1 = getelementptr inbounds i8, i8* %add.ptr7, i32 2
  %13 = load i8, i8* %arrayidx5.2.1, align 1, !tbaa !6
  %conv6.2.1 = zext i8 %13 to i32
  %sub.2.1 = sub nsw i32 %conv.2.1, %conv6.2.1
  %mul.2.1 = mul nsw i32 %sub.2.1, %sub.2.1
  %add.2.1 = add nuw nsw i32 %mul.2.1, %add.1.1
  %arrayidx.3.1 = getelementptr inbounds i8, i8* %add.ptr, i32 3
  %14 = load i8, i8* %arrayidx.3.1, align 1, !tbaa !6
  %conv.3.1 = zext i8 %14 to i32
  %arrayidx5.3.1 = getelementptr inbounds i8, i8* %add.ptr7, i32 3
  %15 = load i8, i8* %arrayidx5.3.1, align 1, !tbaa !6
  %conv6.3.1 = zext i8 %15 to i32
  %sub.3.1 = sub nsw i32 %conv.3.1, %conv6.3.1
  %mul.3.1 = mul nsw i32 %sub.3.1, %sub.3.1
  %add.3.1 = add nsw i32 %mul.3.1, %add.2.1
  %add.ptr.1 = getelementptr inbounds i8, i8* %add.ptr, i32 %i_stride_pix1
  %add.ptr7.1 = getelementptr inbounds i8, i8* %add.ptr7, i32 %i_stride_pix2
  %16 = load i8, i8* %add.ptr.1, align 1, !tbaa !6
  %conv.234 = zext i8 %16 to i32
  %17 = load i8, i8* %add.ptr7.1, align 1, !tbaa !6
  %conv6.235 = zext i8 %17 to i32
  %sub.236 = sub nsw i32 %conv.234, %conv6.235
  %mul.237 = mul nsw i32 %sub.236, %sub.236
  %add.238 = add nsw i32 %mul.237, %add.3.1
  %arrayidx.1.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 1
  %18 = load i8, i8* %arrayidx.1.2, align 1, !tbaa !6
  %conv.1.2 = zext i8 %18 to i32
  %arrayidx5.1.2 = getelementptr inbounds i8, i8* %add.ptr7.1, i32 1
  %19 = load i8, i8* %arrayidx5.1.2, align 1, !tbaa !6
  %conv6.1.2 = zext i8 %19 to i32
  %sub.1.2 = sub nsw i32 %conv.1.2, %conv6.1.2
  %mul.1.2 = mul nsw i32 %sub.1.2, %sub.1.2
  %add.1.2 = add nsw i32 %mul.1.2, %add.238
  %arrayidx.2.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 2
  %20 = load i8, i8* %arrayidx.2.2, align 1, !tbaa !6
  %conv.2.2 = zext i8 %20 to i32
  %arrayidx5.2.2 = getelementptr inbounds i8, i8* %add.ptr7.1, i32 2
  %21 = load i8, i8* %arrayidx5.2.2, align 1, !tbaa !6
  %conv6.2.2 = zext i8 %21 to i32
  %sub.2.2 = sub nsw i32 %conv.2.2, %conv6.2.2
  %mul.2.2 = mul nsw i32 %sub.2.2, %sub.2.2
  %add.2.2 = add nsw i32 %mul.2.2, %add.1.2
  %arrayidx.3.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 3
  %22 = load i8, i8* %arrayidx.3.2, align 1, !tbaa !6
  %conv.3.2 = zext i8 %22 to i32
  %arrayidx5.3.2 = getelementptr inbounds i8, i8* %add.ptr7.1, i32 3
  %23 = load i8, i8* %arrayidx5.3.2, align 1, !tbaa !6
  %conv6.3.2 = zext i8 %23 to i32
  %sub.3.2 = sub nsw i32 %conv.3.2, %conv6.3.2
  %mul.3.2 = mul nsw i32 %sub.3.2, %sub.3.2
  %add.3.2 = add nsw i32 %mul.3.2, %add.2.2
  %add.ptr.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 %i_stride_pix1
  %add.ptr7.2 = getelementptr inbounds i8, i8* %add.ptr7.1, i32 %i_stride_pix2
  %24 = load i8, i8* %add.ptr.2, align 1, !tbaa !6
  %conv.339 = zext i8 %24 to i32
  %25 = load i8, i8* %add.ptr7.2, align 1, !tbaa !6
  %conv6.340 = zext i8 %25 to i32
  %sub.341 = sub nsw i32 %conv.339, %conv6.340
  %mul.342 = mul nsw i32 %sub.341, %sub.341
  %add.343 = add nsw i32 %mul.342, %add.3.2
  %arrayidx.1.3 = getelementptr inbounds i8, i8* %add.ptr.2, i32 1
  %26 = load i8, i8* %arrayidx.1.3, align 1, !tbaa !6
  %conv.1.3 = zext i8 %26 to i32
  %arrayidx5.1.3 = getelementptr inbounds i8, i8* %add.ptr7.2, i32 1
  %27 = load i8, i8* %arrayidx5.1.3, align 1, !tbaa !6
  %conv6.1.3 = zext i8 %27 to i32
  %sub.1.3 = sub nsw i32 %conv.1.3, %conv6.1.3
  %mul.1.3 = mul nsw i32 %sub.1.3, %sub.1.3
  %add.1.3 = add nsw i32 %mul.1.3, %add.343
  %arrayidx.2.3 = getelementptr inbounds i8, i8* %add.ptr.2, i32 2
  %28 = load i8, i8* %arrayidx.2.3, align 1, !tbaa !6
  %conv.2.3 = zext i8 %28 to i32
  %arrayidx5.2.3 = getelementptr inbounds i8, i8* %add.ptr7.2, i32 2
  %29 = load i8, i8* %arrayidx5.2.3, align 1, !tbaa !6
  %conv6.2.3 = zext i8 %29 to i32
  %sub.2.3 = sub nsw i32 %conv.2.3, %conv6.2.3
  %mul.2.3 = mul nsw i32 %sub.2.3, %sub.2.3
  %add.2.3 = add nsw i32 %mul.2.3, %add.1.3
  %arrayidx.3.3 = getelementptr inbounds i8, i8* %add.ptr.2, i32 3
  %30 = load i8, i8* %arrayidx.3.3, align 1, !tbaa !6
  %conv.3.3 = zext i8 %30 to i32
  %arrayidx5.3.3 = getelementptr inbounds i8, i8* %add.ptr7.2, i32 3
  %31 = load i8, i8* %arrayidx5.3.3, align 1, !tbaa !6
  %conv6.3.3 = zext i8 %31 to i32
  %sub.3.3 = sub nsw i32 %conv.3.3, %conv6.3.3
  %mul.3.3 = mul nsw i32 %sub.3.3, %sub.3.3
  %add.3.3 = add nsw i32 %mul.3.3, %add.2.3
  ret i32 %add.3.3
}

; Function Attrs: norecurse nounwind readonly
define internal i32 @x264_pixel_ssd_4x16(i8* nocapture readonly %pix1, i32 %i_stride_pix1, i8* nocapture readonly %pix2, i32 %i_stride_pix2) #3 {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader, %entry
  %pix1.addr.028 = phi i8* [ %pix1, %entry ], [ %add.ptr, %for.cond1.preheader ]
  %y.027 = phi i32 [ 0, %entry ], [ %inc9, %for.cond1.preheader ]
  %i_sum.026 = phi i32 [ 0, %entry ], [ %add.3, %for.cond1.preheader ]
  %pix2.addr.025 = phi i8* [ %pix2, %entry ], [ %add.ptr7, %for.cond1.preheader ]
  %0 = load i8, i8* %pix1.addr.028, align 1, !tbaa !6
  %conv = zext i8 %0 to i32
  %1 = load i8, i8* %pix2.addr.025, align 1, !tbaa !6
  %conv6 = zext i8 %1 to i32
  %sub = sub nsw i32 %conv, %conv6
  %mul = mul nsw i32 %sub, %sub
  %add = add nsw i32 %mul, %i_sum.026
  %arrayidx.1 = getelementptr inbounds i8, i8* %pix1.addr.028, i32 1
  %2 = load i8, i8* %arrayidx.1, align 1, !tbaa !6
  %conv.1 = zext i8 %2 to i32
  %arrayidx5.1 = getelementptr inbounds i8, i8* %pix2.addr.025, i32 1
  %3 = load i8, i8* %arrayidx5.1, align 1, !tbaa !6
  %conv6.1 = zext i8 %3 to i32
  %sub.1 = sub nsw i32 %conv.1, %conv6.1
  %mul.1 = mul nsw i32 %sub.1, %sub.1
  %add.1 = add nsw i32 %mul.1, %add
  %arrayidx.2 = getelementptr inbounds i8, i8* %pix1.addr.028, i32 2
  %4 = load i8, i8* %arrayidx.2, align 1, !tbaa !6
  %conv.2 = zext i8 %4 to i32
  %arrayidx5.2 = getelementptr inbounds i8, i8* %pix2.addr.025, i32 2
  %5 = load i8, i8* %arrayidx5.2, align 1, !tbaa !6
  %conv6.2 = zext i8 %5 to i32
  %sub.2 = sub nsw i32 %conv.2, %conv6.2
  %mul.2 = mul nsw i32 %sub.2, %sub.2
  %add.2 = add nsw i32 %mul.2, %add.1
  %arrayidx.3 = getelementptr inbounds i8, i8* %pix1.addr.028, i32 3
  %6 = load i8, i8* %arrayidx.3, align 1, !tbaa !6
  %conv.3 = zext i8 %6 to i32
  %arrayidx5.3 = getelementptr inbounds i8, i8* %pix2.addr.025, i32 3
  %7 = load i8, i8* %arrayidx5.3, align 1, !tbaa !6
  %conv6.3 = zext i8 %7 to i32
  %sub.3 = sub nsw i32 %conv.3, %conv6.3
  %mul.3 = mul nsw i32 %sub.3, %sub.3
  %add.3 = add nsw i32 %mul.3, %add.2
  %add.ptr = getelementptr inbounds i8, i8* %pix1.addr.028, i32 %i_stride_pix1
  %add.ptr7 = getelementptr inbounds i8, i8* %pix2.addr.025, i32 %i_stride_pix2
  %inc9 = add nuw nsw i32 %y.027, 1
  %exitcond = icmp eq i32 %inc9, 16
  br i1 %exitcond, label %for.cond.cleanup, label %for.cond1.preheader

for.cond.cleanup:                                 ; preds = %for.cond1.preheader
  ret i32 %add.3
}

; Function Attrs: nounwind readonly
define internal i32 @x264_pixel_satd_16x16(i8* nocapture readonly %pix1, i32 %i_pix1, i8* nocapture readonly %pix2, i32 %i_pix2) #4 {
entry:
  %call = tail call i32 @x264_pixel_satd_8x4(i8* %pix1, i32 %i_pix1, i8* %pix2, i32 %i_pix2)
  %mul = shl nsw i32 %i_pix1, 2
  %add.ptr = getelementptr inbounds i8, i8* %pix1, i32 %mul
  %mul1 = shl nsw i32 %i_pix2, 2
  %add.ptr2 = getelementptr inbounds i8, i8* %pix2, i32 %mul1
  %call3 = tail call i32 @x264_pixel_satd_8x4(i8* %add.ptr, i32 %i_pix1, i8* %add.ptr2, i32 %i_pix2)
  %add.ptr4 = getelementptr inbounds i8, i8* %pix1, i32 8
  %add.ptr5 = getelementptr inbounds i8, i8* %pix2, i32 8
  %call6 = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr4, i32 %i_pix1, i8* nonnull %add.ptr5, i32 %i_pix2)
  %add.ptr9 = getelementptr inbounds i8, i8* %add.ptr4, i32 %mul
  %add.ptr12 = getelementptr inbounds i8, i8* %add.ptr5, i32 %mul1
  %call13 = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr9, i32 %i_pix1, i8* nonnull %add.ptr12, i32 %i_pix2)
  %mul16 = shl nsw i32 %i_pix1, 3
  %add.ptr17 = getelementptr inbounds i8, i8* %pix1, i32 %mul16
  %mul18 = shl nsw i32 %i_pix2, 3
  %add.ptr19 = getelementptr inbounds i8, i8* %pix2, i32 %mul18
  %call20 = tail call i32 @x264_pixel_satd_8x4(i8* %add.ptr17, i32 %i_pix1, i8* %add.ptr19, i32 %i_pix2)
  %mul21 = mul nsw i32 %i_pix1, 12
  %add.ptr22 = getelementptr inbounds i8, i8* %pix1, i32 %mul21
  %mul23 = mul nsw i32 %i_pix2, 12
  %add.ptr24 = getelementptr inbounds i8, i8* %pix2, i32 %mul23
  %call25 = tail call i32 @x264_pixel_satd_8x4(i8* %add.ptr22, i32 %i_pix1, i8* %add.ptr24, i32 %i_pix2)
  %add.ptr30 = getelementptr inbounds i8, i8* %add.ptr4, i32 %mul16
  %add.ptr33 = getelementptr inbounds i8, i8* %add.ptr5, i32 %mul18
  %call34 = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr30, i32 %i_pix1, i8* nonnull %add.ptr33, i32 %i_pix2)
  %add.ptr37 = getelementptr inbounds i8, i8* %add.ptr4, i32 %mul21
  %add.ptr40 = getelementptr inbounds i8, i8* %add.ptr5, i32 %mul23
  %call41 = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr37, i32 %i_pix1, i8* nonnull %add.ptr40, i32 %i_pix2)
  %add42 = add i32 %call3, %call
  %add26 = add i32 %add42, %call6
  %add14 = add i32 %add26, %call13
  %add = add i32 %add14, %call20
  %add15 = add i32 %add, %call25
  %add27 = add i32 %add15, %call34
  %add43 = add i32 %add27, %call41
  ret i32 %add43
}

; Function Attrs: nounwind readonly
define internal i32 @x264_pixel_satd_16x8(i8* nocapture readonly %pix1, i32 %i_pix1, i8* nocapture readonly %pix2, i32 %i_pix2) #4 {
entry:
  %call = tail call i32 @x264_pixel_satd_8x4(i8* %pix1, i32 %i_pix1, i8* %pix2, i32 %i_pix2)
  %mul = shl nsw i32 %i_pix1, 2
  %add.ptr = getelementptr inbounds i8, i8* %pix1, i32 %mul
  %mul1 = shl nsw i32 %i_pix2, 2
  %add.ptr2 = getelementptr inbounds i8, i8* %pix2, i32 %mul1
  %call3 = tail call i32 @x264_pixel_satd_8x4(i8* %add.ptr, i32 %i_pix1, i8* %add.ptr2, i32 %i_pix2)
  %add.ptr4 = getelementptr inbounds i8, i8* %pix1, i32 8
  %add.ptr5 = getelementptr inbounds i8, i8* %pix2, i32 8
  %call6 = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr4, i32 %i_pix1, i8* nonnull %add.ptr5, i32 %i_pix2)
  %add.ptr9 = getelementptr inbounds i8, i8* %add.ptr4, i32 %mul
  %add.ptr12 = getelementptr inbounds i8, i8* %add.ptr5, i32 %mul1
  %call13 = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr9, i32 %i_pix1, i8* nonnull %add.ptr12, i32 %i_pix2)
  %add14 = add i32 %call3, %call
  %add = add i32 %add14, %call6
  %add15 = add i32 %add, %call13
  ret i32 %add15
}

; Function Attrs: nounwind readonly
define internal i32 @x264_pixel_satd_8x16(i8* nocapture readonly %pix1, i32 %i_pix1, i8* nocapture readonly %pix2, i32 %i_pix2) #4 {
entry:
  %call = tail call i32 @x264_pixel_satd_8x4(i8* %pix1, i32 %i_pix1, i8* %pix2, i32 %i_pix2)
  %mul = shl nsw i32 %i_pix1, 2
  %add.ptr = getelementptr inbounds i8, i8* %pix1, i32 %mul
  %mul1 = shl nsw i32 %i_pix2, 2
  %add.ptr2 = getelementptr inbounds i8, i8* %pix2, i32 %mul1
  %call3 = tail call i32 @x264_pixel_satd_8x4(i8* %add.ptr, i32 %i_pix1, i8* %add.ptr2, i32 %i_pix2)
  %mul4 = shl nsw i32 %i_pix1, 3
  %add.ptr5 = getelementptr inbounds i8, i8* %pix1, i32 %mul4
  %mul6 = shl nsw i32 %i_pix2, 3
  %add.ptr7 = getelementptr inbounds i8, i8* %pix2, i32 %mul6
  %call8 = tail call i32 @x264_pixel_satd_8x4(i8* %add.ptr5, i32 %i_pix1, i8* %add.ptr7, i32 %i_pix2)
  %mul9 = mul nsw i32 %i_pix1, 12
  %add.ptr10 = getelementptr inbounds i8, i8* %pix1, i32 %mul9
  %mul11 = mul nsw i32 %i_pix2, 12
  %add.ptr12 = getelementptr inbounds i8, i8* %pix2, i32 %mul11
  %call13 = tail call i32 @x264_pixel_satd_8x4(i8* %add.ptr10, i32 %i_pix1, i8* %add.ptr12, i32 %i_pix2)
  %add14 = add i32 %call3, %call
  %add = add i32 %add14, %call8
  %add15 = add i32 %add, %call13
  ret i32 %add15
}

; Function Attrs: nounwind readonly
define internal i32 @x264_pixel_satd_8x8(i8* nocapture readonly %pix1, i32 %i_pix1, i8* nocapture readonly %pix2, i32 %i_pix2) #4 {
entry:
  %call = tail call i32 @x264_pixel_satd_8x4(i8* %pix1, i32 %i_pix1, i8* %pix2, i32 %i_pix2)
  %mul = shl nsw i32 %i_pix1, 2
  %add.ptr = getelementptr inbounds i8, i8* %pix1, i32 %mul
  %mul1 = shl nsw i32 %i_pix2, 2
  %add.ptr2 = getelementptr inbounds i8, i8* %pix2, i32 %mul1
  %call3 = tail call i32 @x264_pixel_satd_8x4(i8* %add.ptr, i32 %i_pix1, i8* %add.ptr2, i32 %i_pix2)
  %add = add nsw i32 %call3, %call
  ret i32 %add
}

; Function Attrs: noinline nounwind readonly
define internal i32 @x264_pixel_satd_8x4(i8* nocapture readonly %pix1, i32 %i_pix1, i8* nocapture readonly %pix2, i32 %i_pix2) #5 {
entry:
  %tmp = alloca [4 x [4 x i32]], align 4
  %0 = bitcast [4 x [4 x i32]]* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #8
  %1 = load i8, i8* %pix1, align 1, !tbaa !6
  %conv = zext i8 %1 to i32
  %2 = load i8, i8* %pix2, align 1, !tbaa !6
  %conv2 = zext i8 %2 to i32
  %sub = sub nsw i32 %conv, %conv2
  %arrayidx3 = getelementptr inbounds i8, i8* %pix1, i32 4
  %3 = load i8, i8* %arrayidx3, align 1, !tbaa !6
  %conv4 = zext i8 %3 to i32
  %arrayidx5 = getelementptr inbounds i8, i8* %pix2, i32 4
  %4 = load i8, i8* %arrayidx5, align 1, !tbaa !6
  %conv6 = zext i8 %4 to i32
  %sub7 = sub nsw i32 %conv4, %conv6
  %shl = shl nsw i32 %sub7, 16
  %add = add nsw i32 %shl, %sub
  %arrayidx8 = getelementptr inbounds i8, i8* %pix1, i32 1
  %5 = load i8, i8* %arrayidx8, align 1, !tbaa !6
  %conv9 = zext i8 %5 to i32
  %arrayidx10 = getelementptr inbounds i8, i8* %pix2, i32 1
  %6 = load i8, i8* %arrayidx10, align 1, !tbaa !6
  %conv11 = zext i8 %6 to i32
  %sub12 = sub nsw i32 %conv9, %conv11
  %arrayidx13 = getelementptr inbounds i8, i8* %pix1, i32 5
  %7 = load i8, i8* %arrayidx13, align 1, !tbaa !6
  %conv14 = zext i8 %7 to i32
  %arrayidx15 = getelementptr inbounds i8, i8* %pix2, i32 5
  %8 = load i8, i8* %arrayidx15, align 1, !tbaa !6
  %conv16 = zext i8 %8 to i32
  %sub17 = sub nsw i32 %conv14, %conv16
  %shl18 = shl nsw i32 %sub17, 16
  %add19 = add nsw i32 %shl18, %sub12
  %arrayidx20 = getelementptr inbounds i8, i8* %pix1, i32 2
  %9 = load i8, i8* %arrayidx20, align 1, !tbaa !6
  %conv21 = zext i8 %9 to i32
  %arrayidx22 = getelementptr inbounds i8, i8* %pix2, i32 2
  %10 = load i8, i8* %arrayidx22, align 1, !tbaa !6
  %conv23 = zext i8 %10 to i32
  %sub24 = sub nsw i32 %conv21, %conv23
  %arrayidx25 = getelementptr inbounds i8, i8* %pix1, i32 6
  %11 = load i8, i8* %arrayidx25, align 1, !tbaa !6
  %conv26 = zext i8 %11 to i32
  %arrayidx27 = getelementptr inbounds i8, i8* %pix2, i32 6
  %12 = load i8, i8* %arrayidx27, align 1, !tbaa !6
  %conv28 = zext i8 %12 to i32
  %sub29 = sub nsw i32 %conv26, %conv28
  %shl30 = shl nsw i32 %sub29, 16
  %add31 = add nsw i32 %shl30, %sub24
  %arrayidx32 = getelementptr inbounds i8, i8* %pix1, i32 3
  %13 = load i8, i8* %arrayidx32, align 1, !tbaa !6
  %conv33 = zext i8 %13 to i32
  %arrayidx34 = getelementptr inbounds i8, i8* %pix2, i32 3
  %14 = load i8, i8* %arrayidx34, align 1, !tbaa !6
  %conv35 = zext i8 %14 to i32
  %sub36 = sub nsw i32 %conv33, %conv35
  %arrayidx37 = getelementptr inbounds i8, i8* %pix1, i32 7
  %15 = load i8, i8* %arrayidx37, align 1, !tbaa !6
  %conv38 = zext i8 %15 to i32
  %arrayidx39 = getelementptr inbounds i8, i8* %pix2, i32 7
  %16 = load i8, i8* %arrayidx39, align 1, !tbaa !6
  %conv40 = zext i8 %16 to i32
  %sub41 = sub nsw i32 %conv38, %conv40
  %shl42 = shl nsw i32 %sub41, 16
  %add43 = add nsw i32 %shl42, %sub36
  %add44 = add nsw i32 %add19, %add
  %sub45 = sub nsw i32 %add, %add19
  %add46 = add nsw i32 %add43, %add31
  %sub47 = sub nsw i32 %add31, %add43
  %add48 = add nsw i32 %add46, %add44
  %arrayidx50 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %tmp, i32 0, i32 0, i32 0
  store i32 %add48, i32* %arrayidx50, align 4, !tbaa !13
  %sub51 = sub nsw i32 %add44, %add46
  %arrayidx53 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %tmp, i32 0, i32 0, i32 2
  store i32 %sub51, i32* %arrayidx53, align 4, !tbaa !13
  %add54 = add nsw i32 %sub47, %sub45
  %arrayidx56 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %tmp, i32 0, i32 0, i32 1
  store i32 %add54, i32* %arrayidx56, align 4, !tbaa !13
  %sub57 = sub nsw i32 %sub45, %sub47
  %arrayidx59 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %tmp, i32 0, i32 0, i32 3
  store i32 %sub57, i32* %arrayidx59, align 4, !tbaa !13
  %add.ptr = getelementptr inbounds i8, i8* %pix1, i32 %i_pix1
  %add.ptr60 = getelementptr inbounds i8, i8* %pix2, i32 %i_pix2
  %17 = load i8, i8* %add.ptr, align 1, !tbaa !6
  %conv.1 = zext i8 %17 to i32
  %18 = load i8, i8* %add.ptr60, align 1, !tbaa !6
  %conv2.1 = zext i8 %18 to i32
  %sub.1 = sub nsw i32 %conv.1, %conv2.1
  %arrayidx3.1 = getelementptr inbounds i8, i8* %add.ptr, i32 4
  %19 = load i8, i8* %arrayidx3.1, align 1, !tbaa !6
  %conv4.1 = zext i8 %19 to i32
  %arrayidx5.1 = getelementptr inbounds i8, i8* %add.ptr60, i32 4
  %20 = load i8, i8* %arrayidx5.1, align 1, !tbaa !6
  %conv6.1 = zext i8 %20 to i32
  %sub7.1 = sub nsw i32 %conv4.1, %conv6.1
  %shl.1 = shl nsw i32 %sub7.1, 16
  %add.1 = add nsw i32 %shl.1, %sub.1
  %arrayidx8.1 = getelementptr inbounds i8, i8* %add.ptr, i32 1
  %21 = load i8, i8* %arrayidx8.1, align 1, !tbaa !6
  %conv9.1 = zext i8 %21 to i32
  %arrayidx10.1 = getelementptr inbounds i8, i8* %add.ptr60, i32 1
  %22 = load i8, i8* %arrayidx10.1, align 1, !tbaa !6
  %conv11.1 = zext i8 %22 to i32
  %sub12.1 = sub nsw i32 %conv9.1, %conv11.1
  %arrayidx13.1 = getelementptr inbounds i8, i8* %add.ptr, i32 5
  %23 = load i8, i8* %arrayidx13.1, align 1, !tbaa !6
  %conv14.1 = zext i8 %23 to i32
  %arrayidx15.1 = getelementptr inbounds i8, i8* %add.ptr60, i32 5
  %24 = load i8, i8* %arrayidx15.1, align 1, !tbaa !6
  %conv16.1 = zext i8 %24 to i32
  %sub17.1 = sub nsw i32 %conv14.1, %conv16.1
  %shl18.1 = shl nsw i32 %sub17.1, 16
  %add19.1 = add nsw i32 %shl18.1, %sub12.1
  %arrayidx20.1 = getelementptr inbounds i8, i8* %add.ptr, i32 2
  %25 = load i8, i8* %arrayidx20.1, align 1, !tbaa !6
  %conv21.1 = zext i8 %25 to i32
  %arrayidx22.1 = getelementptr inbounds i8, i8* %add.ptr60, i32 2
  %26 = load i8, i8* %arrayidx22.1, align 1, !tbaa !6
  %conv23.1 = zext i8 %26 to i32
  %sub24.1 = sub nsw i32 %conv21.1, %conv23.1
  %arrayidx25.1 = getelementptr inbounds i8, i8* %add.ptr, i32 6
  %27 = load i8, i8* %arrayidx25.1, align 1, !tbaa !6
  %conv26.1 = zext i8 %27 to i32
  %arrayidx27.1 = getelementptr inbounds i8, i8* %add.ptr60, i32 6
  %28 = load i8, i8* %arrayidx27.1, align 1, !tbaa !6
  %conv28.1 = zext i8 %28 to i32
  %sub29.1 = sub nsw i32 %conv26.1, %conv28.1
  %shl30.1 = shl nsw i32 %sub29.1, 16
  %add31.1 = add nsw i32 %shl30.1, %sub24.1
  %arrayidx32.1 = getelementptr inbounds i8, i8* %add.ptr, i32 3
  %29 = load i8, i8* %arrayidx32.1, align 1, !tbaa !6
  %conv33.1 = zext i8 %29 to i32
  %arrayidx34.1 = getelementptr inbounds i8, i8* %add.ptr60, i32 3
  %30 = load i8, i8* %arrayidx34.1, align 1, !tbaa !6
  %conv35.1 = zext i8 %30 to i32
  %sub36.1 = sub nsw i32 %conv33.1, %conv35.1
  %arrayidx37.1 = getelementptr inbounds i8, i8* %add.ptr, i32 7
  %31 = load i8, i8* %arrayidx37.1, align 1, !tbaa !6
  %conv38.1 = zext i8 %31 to i32
  %arrayidx39.1 = getelementptr inbounds i8, i8* %add.ptr60, i32 7
  %32 = load i8, i8* %arrayidx39.1, align 1, !tbaa !6
  %conv40.1 = zext i8 %32 to i32
  %sub41.1 = sub nsw i32 %conv38.1, %conv40.1
  %shl42.1 = shl nsw i32 %sub41.1, 16
  %add43.1 = add nsw i32 %shl42.1, %sub36.1
  %add44.1 = add nsw i32 %add19.1, %add.1
  %sub45.1 = sub nsw i32 %add.1, %add19.1
  %add46.1 = add nsw i32 %add43.1, %add31.1
  %sub47.1 = sub nsw i32 %add31.1, %add43.1
  %add48.1 = add nsw i32 %add46.1, %add44.1
  %arrayidx50.1 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %tmp, i32 0, i32 1, i32 0
  store i32 %add48.1, i32* %arrayidx50.1, align 4, !tbaa !13
  %sub51.1 = sub nsw i32 %add44.1, %add46.1
  %arrayidx53.1 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %tmp, i32 0, i32 1, i32 2
  store i32 %sub51.1, i32* %arrayidx53.1, align 4, !tbaa !13
  %add54.1 = add nsw i32 %sub47.1, %sub45.1
  %arrayidx56.1 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %tmp, i32 0, i32 1, i32 1
  store i32 %add54.1, i32* %arrayidx56.1, align 4, !tbaa !13
  %sub57.1 = sub nsw i32 %sub45.1, %sub47.1
  %arrayidx59.1 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %tmp, i32 0, i32 1, i32 3
  store i32 %sub57.1, i32* %arrayidx59.1, align 4, !tbaa !13
  %add.ptr.1 = getelementptr inbounds i8, i8* %add.ptr, i32 %i_pix1
  %add.ptr60.1 = getelementptr inbounds i8, i8* %add.ptr60, i32 %i_pix2
  %33 = load i8, i8* %add.ptr.1, align 1, !tbaa !6
  %conv.2 = zext i8 %33 to i32
  %34 = load i8, i8* %add.ptr60.1, align 1, !tbaa !6
  %conv2.2 = zext i8 %34 to i32
  %sub.2 = sub nsw i32 %conv.2, %conv2.2
  %arrayidx3.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 4
  %35 = load i8, i8* %arrayidx3.2, align 1, !tbaa !6
  %conv4.2 = zext i8 %35 to i32
  %arrayidx5.2 = getelementptr inbounds i8, i8* %add.ptr60.1, i32 4
  %36 = load i8, i8* %arrayidx5.2, align 1, !tbaa !6
  %conv6.2 = zext i8 %36 to i32
  %sub7.2 = sub nsw i32 %conv4.2, %conv6.2
  %shl.2 = shl nsw i32 %sub7.2, 16
  %add.2 = add nsw i32 %shl.2, %sub.2
  %arrayidx8.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 1
  %37 = load i8, i8* %arrayidx8.2, align 1, !tbaa !6
  %conv9.2 = zext i8 %37 to i32
  %arrayidx10.2 = getelementptr inbounds i8, i8* %add.ptr60.1, i32 1
  %38 = load i8, i8* %arrayidx10.2, align 1, !tbaa !6
  %conv11.2 = zext i8 %38 to i32
  %sub12.2 = sub nsw i32 %conv9.2, %conv11.2
  %arrayidx13.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 5
  %39 = load i8, i8* %arrayidx13.2, align 1, !tbaa !6
  %conv14.2 = zext i8 %39 to i32
  %arrayidx15.2 = getelementptr inbounds i8, i8* %add.ptr60.1, i32 5
  %40 = load i8, i8* %arrayidx15.2, align 1, !tbaa !6
  %conv16.2 = zext i8 %40 to i32
  %sub17.2 = sub nsw i32 %conv14.2, %conv16.2
  %shl18.2 = shl nsw i32 %sub17.2, 16
  %add19.2 = add nsw i32 %shl18.2, %sub12.2
  %arrayidx20.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 2
  %41 = load i8, i8* %arrayidx20.2, align 1, !tbaa !6
  %conv21.2 = zext i8 %41 to i32
  %arrayidx22.2 = getelementptr inbounds i8, i8* %add.ptr60.1, i32 2
  %42 = load i8, i8* %arrayidx22.2, align 1, !tbaa !6
  %conv23.2 = zext i8 %42 to i32
  %sub24.2 = sub nsw i32 %conv21.2, %conv23.2
  %arrayidx25.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 6
  %43 = load i8, i8* %arrayidx25.2, align 1, !tbaa !6
  %conv26.2 = zext i8 %43 to i32
  %arrayidx27.2 = getelementptr inbounds i8, i8* %add.ptr60.1, i32 6
  %44 = load i8, i8* %arrayidx27.2, align 1, !tbaa !6
  %conv28.2 = zext i8 %44 to i32
  %sub29.2 = sub nsw i32 %conv26.2, %conv28.2
  %shl30.2 = shl nsw i32 %sub29.2, 16
  %add31.2 = add nsw i32 %shl30.2, %sub24.2
  %arrayidx32.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 3
  %45 = load i8, i8* %arrayidx32.2, align 1, !tbaa !6
  %conv33.2 = zext i8 %45 to i32
  %arrayidx34.2 = getelementptr inbounds i8, i8* %add.ptr60.1, i32 3
  %46 = load i8, i8* %arrayidx34.2, align 1, !tbaa !6
  %conv35.2 = zext i8 %46 to i32
  %sub36.2 = sub nsw i32 %conv33.2, %conv35.2
  %arrayidx37.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 7
  %47 = load i8, i8* %arrayidx37.2, align 1, !tbaa !6
  %conv38.2 = zext i8 %47 to i32
  %arrayidx39.2 = getelementptr inbounds i8, i8* %add.ptr60.1, i32 7
  %48 = load i8, i8* %arrayidx39.2, align 1, !tbaa !6
  %conv40.2 = zext i8 %48 to i32
  %sub41.2 = sub nsw i32 %conv38.2, %conv40.2
  %shl42.2 = shl nsw i32 %sub41.2, 16
  %add43.2 = add nsw i32 %shl42.2, %sub36.2
  %add44.2 = add nsw i32 %add19.2, %add.2
  %sub45.2 = sub nsw i32 %add.2, %add19.2
  %add46.2 = add nsw i32 %add43.2, %add31.2
  %sub47.2 = sub nsw i32 %add31.2, %add43.2
  %add48.2 = add nsw i32 %add46.2, %add44.2
  %arrayidx50.2 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %tmp, i32 0, i32 2, i32 0
  store i32 %add48.2, i32* %arrayidx50.2, align 4, !tbaa !13
  %sub51.2 = sub nsw i32 %add44.2, %add46.2
  %arrayidx53.2 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %tmp, i32 0, i32 2, i32 2
  store i32 %sub51.2, i32* %arrayidx53.2, align 4, !tbaa !13
  %add54.2 = add nsw i32 %sub47.2, %sub45.2
  %arrayidx56.2 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %tmp, i32 0, i32 2, i32 1
  store i32 %add54.2, i32* %arrayidx56.2, align 4, !tbaa !13
  %sub57.2 = sub nsw i32 %sub45.2, %sub47.2
  %arrayidx59.2 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %tmp, i32 0, i32 2, i32 3
  store i32 %sub57.2, i32* %arrayidx59.2, align 4, !tbaa !13
  %add.ptr.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 %i_pix1
  %add.ptr60.2 = getelementptr inbounds i8, i8* %add.ptr60.1, i32 %i_pix2
  %49 = load i8, i8* %add.ptr.2, align 1, !tbaa !6
  %conv.3 = zext i8 %49 to i32
  %50 = load i8, i8* %add.ptr60.2, align 1, !tbaa !6
  %conv2.3 = zext i8 %50 to i32
  %sub.3 = sub nsw i32 %conv.3, %conv2.3
  %arrayidx3.3 = getelementptr inbounds i8, i8* %add.ptr.2, i32 4
  %51 = load i8, i8* %arrayidx3.3, align 1, !tbaa !6
  %conv4.3 = zext i8 %51 to i32
  %arrayidx5.3 = getelementptr inbounds i8, i8* %add.ptr60.2, i32 4
  %52 = load i8, i8* %arrayidx5.3, align 1, !tbaa !6
  %conv6.3 = zext i8 %52 to i32
  %sub7.3 = sub nsw i32 %conv4.3, %conv6.3
  %shl.3 = shl nsw i32 %sub7.3, 16
  %add.3 = add nsw i32 %shl.3, %sub.3
  %arrayidx8.3 = getelementptr inbounds i8, i8* %add.ptr.2, i32 1
  %53 = load i8, i8* %arrayidx8.3, align 1, !tbaa !6
  %conv9.3 = zext i8 %53 to i32
  %arrayidx10.3 = getelementptr inbounds i8, i8* %add.ptr60.2, i32 1
  %54 = load i8, i8* %arrayidx10.3, align 1, !tbaa !6
  %conv11.3 = zext i8 %54 to i32
  %sub12.3 = sub nsw i32 %conv9.3, %conv11.3
  %arrayidx13.3 = getelementptr inbounds i8, i8* %add.ptr.2, i32 5
  %55 = load i8, i8* %arrayidx13.3, align 1, !tbaa !6
  %conv14.3 = zext i8 %55 to i32
  %arrayidx15.3 = getelementptr inbounds i8, i8* %add.ptr60.2, i32 5
  %56 = load i8, i8* %arrayidx15.3, align 1, !tbaa !6
  %conv16.3 = zext i8 %56 to i32
  %sub17.3 = sub nsw i32 %conv14.3, %conv16.3
  %shl18.3 = shl nsw i32 %sub17.3, 16
  %add19.3 = add nsw i32 %shl18.3, %sub12.3
  %arrayidx20.3 = getelementptr inbounds i8, i8* %add.ptr.2, i32 2
  %57 = load i8, i8* %arrayidx20.3, align 1, !tbaa !6
  %conv21.3 = zext i8 %57 to i32
  %arrayidx22.3 = getelementptr inbounds i8, i8* %add.ptr60.2, i32 2
  %58 = load i8, i8* %arrayidx22.3, align 1, !tbaa !6
  %conv23.3 = zext i8 %58 to i32
  %sub24.3 = sub nsw i32 %conv21.3, %conv23.3
  %arrayidx25.3 = getelementptr inbounds i8, i8* %add.ptr.2, i32 6
  %59 = load i8, i8* %arrayidx25.3, align 1, !tbaa !6
  %conv26.3 = zext i8 %59 to i32
  %arrayidx27.3 = getelementptr inbounds i8, i8* %add.ptr60.2, i32 6
  %60 = load i8, i8* %arrayidx27.3, align 1, !tbaa !6
  %conv28.3 = zext i8 %60 to i32
  %sub29.3 = sub nsw i32 %conv26.3, %conv28.3
  %shl30.3 = shl nsw i32 %sub29.3, 16
  %add31.3 = add nsw i32 %shl30.3, %sub24.3
  %arrayidx32.3 = getelementptr inbounds i8, i8* %add.ptr.2, i32 3
  %61 = load i8, i8* %arrayidx32.3, align 1, !tbaa !6
  %conv33.3 = zext i8 %61 to i32
  %arrayidx34.3 = getelementptr inbounds i8, i8* %add.ptr60.2, i32 3
  %62 = load i8, i8* %arrayidx34.3, align 1, !tbaa !6
  %conv35.3 = zext i8 %62 to i32
  %sub36.3 = sub nsw i32 %conv33.3, %conv35.3
  %arrayidx37.3 = getelementptr inbounds i8, i8* %add.ptr.2, i32 7
  %63 = load i8, i8* %arrayidx37.3, align 1, !tbaa !6
  %conv38.3 = zext i8 %63 to i32
  %arrayidx39.3 = getelementptr inbounds i8, i8* %add.ptr60.2, i32 7
  %64 = load i8, i8* %arrayidx39.3, align 1, !tbaa !6
  %conv40.3 = zext i8 %64 to i32
  %sub41.3 = sub nsw i32 %conv38.3, %conv40.3
  %shl42.3 = shl nsw i32 %sub41.3, 16
  %add43.3 = add nsw i32 %shl42.3, %sub36.3
  %add44.3 = add nsw i32 %add19.3, %add.3
  %sub45.3 = sub nsw i32 %add.3, %add19.3
  %add46.3 = add nsw i32 %add43.3, %add31.3
  %sub47.3 = sub nsw i32 %add31.3, %add43.3
  %add48.3 = add nsw i32 %add46.3, %add44.3
  %arrayidx50.3 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %tmp, i32 0, i32 3, i32 0
  store i32 %add48.3, i32* %arrayidx50.3, align 4, !tbaa !13
  %sub51.3 = sub nsw i32 %add44.3, %add46.3
  %arrayidx53.3 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %tmp, i32 0, i32 3, i32 2
  store i32 %sub51.3, i32* %arrayidx53.3, align 4, !tbaa !13
  %add54.3 = add nsw i32 %sub47.3, %sub45.3
  %arrayidx56.3 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %tmp, i32 0, i32 3, i32 1
  store i32 %add54.3, i32* %arrayidx56.3, align 4, !tbaa !13
  %sub57.3 = sub nsw i32 %sub45.3, %sub47.3
  %arrayidx59.3 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %tmp, i32 0, i32 3, i32 3
  store i32 %sub57.3, i32* %arrayidx59.3, align 4, !tbaa !13
  %65 = load i32, i32* %arrayidx50, align 4, !tbaa !13
  %66 = load i32, i32* %arrayidx50.1, align 4, !tbaa !13
  %add72 = add i32 %66, %65
  %sub78 = sub i32 %65, %66
  %add84 = add nsw i32 %add48.3, %add48.2
  %sub90 = sub nsw i32 %add48.2, %add48.3
  %add91 = add i32 %add84, %add72
  %sub92 = sub i32 %add72, %add84
  %add93 = add i32 %sub90, %sub78
  %sub94 = sub i32 %sub78, %sub90
  %shr.i = lshr i32 %add91, 15
  %and.i = and i32 %shr.i, 65537
  %mul.i = mul nuw i32 %and.i, 65535
  %add.i = add i32 %mul.i, %add91
  %xor.i = xor i32 %add.i, %mul.i
  %shr.i182 = lshr i32 %add93, 15
  %and.i183 = and i32 %shr.i182, 65537
  %mul.i184 = mul nuw i32 %and.i183, 65535
  %add.i185 = add i32 %mul.i184, %add93
  %xor.i186 = xor i32 %add.i185, %mul.i184
  %shr.i177 = lshr i32 %sub92, 15
  %and.i178 = and i32 %shr.i177, 65537
  %mul.i179 = mul nuw i32 %and.i178, 65535
  %add.i180 = add i32 %mul.i179, %sub92
  %xor.i181 = xor i32 %add.i180, %mul.i179
  %shr.i172 = lshr i32 %sub94, 15
  %and.i173 = and i32 %shr.i172, 65537
  %mul.i174 = mul nuw i32 %and.i173, 65535
  %add.i175 = add i32 %mul.i174, %sub94
  %xor.i176 = xor i32 %add.i175, %mul.i174
  %add98 = add i32 %xor.i186, %xor.i
  %add100 = add i32 %add98, %xor.i181
  %add101 = add i32 %add100, %xor.i176
  %67 = load i32, i32* %arrayidx56, align 4, !tbaa !13
  %68 = load i32, i32* %arrayidx56.1, align 4, !tbaa !13
  %add72.1 = add i32 %68, %67
  %sub78.1 = sub i32 %67, %68
  %69 = load i32, i32* %arrayidx56.2, align 4, !tbaa !13
  %add84.1 = add i32 %add54.3, %69
  %sub90.1 = sub i32 %69, %add54.3
  %add91.1 = add i32 %add84.1, %add72.1
  %sub92.1 = sub i32 %add72.1, %add84.1
  %add93.1 = add i32 %sub90.1, %sub78.1
  %sub94.1 = sub i32 %sub78.1, %sub90.1
  %shr.i.1 = lshr i32 %add91.1, 15
  %and.i.1 = and i32 %shr.i.1, 65537
  %mul.i.1 = mul nuw i32 %and.i.1, 65535
  %add.i.1 = add i32 %mul.i.1, %add91.1
  %xor.i.1 = xor i32 %add.i.1, %mul.i.1
  %shr.i182.1 = lshr i32 %add93.1, 15
  %and.i183.1 = and i32 %shr.i182.1, 65537
  %mul.i184.1 = mul nuw i32 %and.i183.1, 65535
  %add.i185.1 = add i32 %mul.i184.1, %add93.1
  %xor.i186.1 = xor i32 %add.i185.1, %mul.i184.1
  %shr.i177.1 = lshr i32 %sub92.1, 15
  %and.i178.1 = and i32 %shr.i177.1, 65537
  %mul.i179.1 = mul nuw i32 %and.i178.1, 65535
  %add.i180.1 = add i32 %mul.i179.1, %sub92.1
  %xor.i181.1 = xor i32 %add.i180.1, %mul.i179.1
  %shr.i172.1 = lshr i32 %sub94.1, 15
  %and.i173.1 = and i32 %shr.i172.1, 65537
  %mul.i174.1 = mul nuw i32 %and.i173.1, 65535
  %add.i175.1 = add i32 %mul.i174.1, %sub94.1
  %xor.i176.1 = xor i32 %add.i175.1, %mul.i174.1
  %add96.1 = add i32 %xor.i186.1, %add101
  %add98.1 = add i32 %add96.1, %xor.i.1
  %add100.1 = add i32 %add98.1, %xor.i181.1
  %add101.1 = add i32 %add100.1, %xor.i176.1
  %70 = load i32, i32* %arrayidx53, align 4, !tbaa !13
  %71 = load i32, i32* %arrayidx53.1, align 4, !tbaa !13
  %add72.2 = add i32 %71, %70
  %sub78.2 = sub i32 %70, %71
  %72 = load i32, i32* %arrayidx53.2, align 4, !tbaa !13
  %add84.2 = add i32 %sub51.3, %72
  %sub90.2 = sub i32 %72, %sub51.3
  %add91.2 = add i32 %add84.2, %add72.2
  %sub92.2 = sub i32 %add72.2, %add84.2
  %add93.2 = add i32 %sub90.2, %sub78.2
  %sub94.2 = sub i32 %sub78.2, %sub90.2
  %shr.i.2 = lshr i32 %add91.2, 15
  %and.i.2 = and i32 %shr.i.2, 65537
  %mul.i.2 = mul nuw i32 %and.i.2, 65535
  %add.i.2 = add i32 %mul.i.2, %add91.2
  %xor.i.2 = xor i32 %add.i.2, %mul.i.2
  %shr.i182.2 = lshr i32 %add93.2, 15
  %and.i183.2 = and i32 %shr.i182.2, 65537
  %mul.i184.2 = mul nuw i32 %and.i183.2, 65535
  %add.i185.2 = add i32 %mul.i184.2, %add93.2
  %xor.i186.2 = xor i32 %add.i185.2, %mul.i184.2
  %shr.i177.2 = lshr i32 %sub92.2, 15
  %and.i178.2 = and i32 %shr.i177.2, 65537
  %mul.i179.2 = mul nuw i32 %and.i178.2, 65535
  %add.i180.2 = add i32 %mul.i179.2, %sub92.2
  %xor.i181.2 = xor i32 %add.i180.2, %mul.i179.2
  %shr.i172.2 = lshr i32 %sub94.2, 15
  %and.i173.2 = and i32 %shr.i172.2, 65537
  %mul.i174.2 = mul nuw i32 %and.i173.2, 65535
  %add.i175.2 = add i32 %mul.i174.2, %sub94.2
  %xor.i176.2 = xor i32 %add.i175.2, %mul.i174.2
  %add96.2 = add i32 %xor.i186.2, %add101.1
  %add98.2 = add i32 %add96.2, %xor.i.2
  %add100.2 = add i32 %add98.2, %xor.i181.2
  %add101.2 = add i32 %add100.2, %xor.i176.2
  %73 = load i32, i32* %arrayidx59, align 4, !tbaa !13
  %74 = load i32, i32* %arrayidx59.1, align 4, !tbaa !13
  %add72.3 = add i32 %74, %73
  %sub78.3 = sub i32 %73, %74
  %75 = load i32, i32* %arrayidx59.2, align 4, !tbaa !13
  %76 = load i32, i32* %arrayidx59.3, align 4, !tbaa !13
  %add84.3 = add i32 %76, %75
  %sub90.3 = sub i32 %75, %76
  %add91.3 = add i32 %add84.3, %add72.3
  %sub92.3 = sub i32 %add72.3, %add84.3
  %add93.3 = add i32 %sub90.3, %sub78.3
  %sub94.3 = sub i32 %sub78.3, %sub90.3
  %shr.i.3 = lshr i32 %add91.3, 15
  %and.i.3 = and i32 %shr.i.3, 65537
  %mul.i.3 = mul nuw i32 %and.i.3, 65535
  %add.i.3 = add i32 %mul.i.3, %add91.3
  %xor.i.3 = xor i32 %add.i.3, %mul.i.3
  %shr.i182.3 = lshr i32 %add93.3, 15
  %and.i183.3 = and i32 %shr.i182.3, 65537
  %mul.i184.3 = mul nuw i32 %and.i183.3, 65535
  %add.i185.3 = add i32 %mul.i184.3, %add93.3
  %xor.i186.3 = xor i32 %add.i185.3, %mul.i184.3
  %shr.i177.3 = lshr i32 %sub92.3, 15
  %and.i178.3 = and i32 %shr.i177.3, 65537
  %mul.i179.3 = mul nuw i32 %and.i178.3, 65535
  %add.i180.3 = add i32 %mul.i179.3, %sub92.3
  %xor.i181.3 = xor i32 %add.i180.3, %mul.i179.3
  %shr.i172.3 = lshr i32 %sub94.3, 15
  %and.i173.3 = and i32 %shr.i172.3, 65537
  %mul.i174.3 = mul nuw i32 %and.i173.3, 65535
  %add.i175.3 = add i32 %mul.i174.3, %sub94.3
  %xor.i176.3 = xor i32 %add.i175.3, %mul.i174.3
  %add96.3 = add i32 %xor.i186.3, %add101.2
  %add98.3 = add i32 %add96.3, %xor.i.3
  %add100.3 = add i32 %add98.3, %xor.i181.3
  %add101.3 = add i32 %add100.3, %xor.i176.3
  %conv106 = and i32 %add101.3, 65535
  %shr = lshr i32 %add101.3, 16
  %add107 = add nuw nsw i32 %conv106, %shr
  %shr108 = lshr i32 %add107, 1
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #8
  ret i32 %shr108
}

; Function Attrs: nounwind readonly
define internal i32 @x264_pixel_satd_4x8(i8* nocapture readonly %pix1, i32 %i_pix1, i8* nocapture readonly %pix2, i32 %i_pix2) #4 {
entry:
  %call = tail call i32 @x264_pixel_satd_4x4(i8* %pix1, i32 %i_pix1, i8* %pix2, i32 %i_pix2)
  %mul = shl nsw i32 %i_pix1, 2
  %add.ptr = getelementptr inbounds i8, i8* %pix1, i32 %mul
  %mul1 = shl nsw i32 %i_pix2, 2
  %add.ptr2 = getelementptr inbounds i8, i8* %pix2, i32 %mul1
  %call3 = tail call i32 @x264_pixel_satd_4x4(i8* %add.ptr, i32 %i_pix1, i8* %add.ptr2, i32 %i_pix2)
  %add = add nsw i32 %call3, %call
  ret i32 %add
}

; Function Attrs: noinline nounwind readonly
define internal i32 @x264_pixel_satd_4x4(i8* nocapture readonly %pix1, i32 %i_pix1, i8* nocapture readonly %pix2, i32 %i_pix2) #5 {
entry:
  %tmp = alloca [4 x [2 x i32]], align 4
  %0 = bitcast [4 x [2 x i32]]* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #8
  %1 = load i8, i8* %pix1, align 1, !tbaa !6
  %conv = zext i8 %1 to i32
  %2 = load i8, i8* %pix2, align 1, !tbaa !6
  %conv2 = zext i8 %2 to i32
  %sub = sub nsw i32 %conv, %conv2
  %arrayidx3 = getelementptr inbounds i8, i8* %pix1, i32 1
  %3 = load i8, i8* %arrayidx3, align 1, !tbaa !6
  %conv4 = zext i8 %3 to i32
  %arrayidx5 = getelementptr inbounds i8, i8* %pix2, i32 1
  %4 = load i8, i8* %arrayidx5, align 1, !tbaa !6
  %conv6 = zext i8 %4 to i32
  %sub7 = sub nsw i32 %conv4, %conv6
  %add = add nsw i32 %sub7, %sub
  %sub8 = sub nsw i32 %sub, %sub7
  %shl = shl nsw i32 %sub8, 16
  %add9 = add nsw i32 %add, %shl
  %arrayidx10 = getelementptr inbounds i8, i8* %pix1, i32 2
  %5 = load i8, i8* %arrayidx10, align 1, !tbaa !6
  %conv11 = zext i8 %5 to i32
  %arrayidx12 = getelementptr inbounds i8, i8* %pix2, i32 2
  %6 = load i8, i8* %arrayidx12, align 1, !tbaa !6
  %conv13 = zext i8 %6 to i32
  %sub14 = sub nsw i32 %conv11, %conv13
  %arrayidx15 = getelementptr inbounds i8, i8* %pix1, i32 3
  %7 = load i8, i8* %arrayidx15, align 1, !tbaa !6
  %conv16 = zext i8 %7 to i32
  %arrayidx17 = getelementptr inbounds i8, i8* %pix2, i32 3
  %8 = load i8, i8* %arrayidx17, align 1, !tbaa !6
  %conv18 = zext i8 %8 to i32
  %sub19 = sub nsw i32 %conv16, %conv18
  %add20 = add nsw i32 %sub19, %sub14
  %sub21 = sub nsw i32 %sub14, %sub19
  %shl22 = shl nsw i32 %sub21, 16
  %add23 = add nsw i32 %add20, %shl22
  %add24 = add nsw i32 %add23, %add9
  %arrayidx26 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %tmp, i32 0, i32 0, i32 0
  store i32 %add24, i32* %arrayidx26, align 4, !tbaa !13
  %sub27 = sub nsw i32 %add9, %add23
  %arrayidx29 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %tmp, i32 0, i32 0, i32 1
  store i32 %sub27, i32* %arrayidx29, align 4, !tbaa !13
  %add.ptr = getelementptr inbounds i8, i8* %pix1, i32 %i_pix1
  %add.ptr30 = getelementptr inbounds i8, i8* %pix2, i32 %i_pix2
  %9 = load i8, i8* %add.ptr, align 1, !tbaa !6
  %conv.1 = zext i8 %9 to i32
  %10 = load i8, i8* %add.ptr30, align 1, !tbaa !6
  %conv2.1 = zext i8 %10 to i32
  %sub.1 = sub nsw i32 %conv.1, %conv2.1
  %arrayidx3.1 = getelementptr inbounds i8, i8* %add.ptr, i32 1
  %11 = load i8, i8* %arrayidx3.1, align 1, !tbaa !6
  %conv4.1 = zext i8 %11 to i32
  %arrayidx5.1 = getelementptr inbounds i8, i8* %add.ptr30, i32 1
  %12 = load i8, i8* %arrayidx5.1, align 1, !tbaa !6
  %conv6.1 = zext i8 %12 to i32
  %sub7.1 = sub nsw i32 %conv4.1, %conv6.1
  %add.1 = add nsw i32 %sub7.1, %sub.1
  %sub8.1 = sub nsw i32 %sub.1, %sub7.1
  %shl.1 = shl nsw i32 %sub8.1, 16
  %add9.1 = add nsw i32 %add.1, %shl.1
  %arrayidx10.1 = getelementptr inbounds i8, i8* %add.ptr, i32 2
  %13 = load i8, i8* %arrayidx10.1, align 1, !tbaa !6
  %conv11.1 = zext i8 %13 to i32
  %arrayidx12.1 = getelementptr inbounds i8, i8* %add.ptr30, i32 2
  %14 = load i8, i8* %arrayidx12.1, align 1, !tbaa !6
  %conv13.1 = zext i8 %14 to i32
  %sub14.1 = sub nsw i32 %conv11.1, %conv13.1
  %arrayidx15.1 = getelementptr inbounds i8, i8* %add.ptr, i32 3
  %15 = load i8, i8* %arrayidx15.1, align 1, !tbaa !6
  %conv16.1 = zext i8 %15 to i32
  %arrayidx17.1 = getelementptr inbounds i8, i8* %add.ptr30, i32 3
  %16 = load i8, i8* %arrayidx17.1, align 1, !tbaa !6
  %conv18.1 = zext i8 %16 to i32
  %sub19.1 = sub nsw i32 %conv16.1, %conv18.1
  %add20.1 = add nsw i32 %sub19.1, %sub14.1
  %sub21.1 = sub nsw i32 %sub14.1, %sub19.1
  %shl22.1 = shl nsw i32 %sub21.1, 16
  %add23.1 = add nsw i32 %add20.1, %shl22.1
  %add24.1 = add nsw i32 %add23.1, %add9.1
  %arrayidx26.1 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %tmp, i32 0, i32 1, i32 0
  store i32 %add24.1, i32* %arrayidx26.1, align 4, !tbaa !13
  %sub27.1 = sub nsw i32 %add9.1, %add23.1
  %arrayidx29.1 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %tmp, i32 0, i32 1, i32 1
  store i32 %sub27.1, i32* %arrayidx29.1, align 4, !tbaa !13
  %add.ptr.1 = getelementptr inbounds i8, i8* %add.ptr, i32 %i_pix1
  %add.ptr30.1 = getelementptr inbounds i8, i8* %add.ptr30, i32 %i_pix2
  %17 = load i8, i8* %add.ptr.1, align 1, !tbaa !6
  %conv.2 = zext i8 %17 to i32
  %18 = load i8, i8* %add.ptr30.1, align 1, !tbaa !6
  %conv2.2 = zext i8 %18 to i32
  %sub.2 = sub nsw i32 %conv.2, %conv2.2
  %arrayidx3.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 1
  %19 = load i8, i8* %arrayidx3.2, align 1, !tbaa !6
  %conv4.2 = zext i8 %19 to i32
  %arrayidx5.2 = getelementptr inbounds i8, i8* %add.ptr30.1, i32 1
  %20 = load i8, i8* %arrayidx5.2, align 1, !tbaa !6
  %conv6.2 = zext i8 %20 to i32
  %sub7.2 = sub nsw i32 %conv4.2, %conv6.2
  %add.2 = add nsw i32 %sub7.2, %sub.2
  %sub8.2 = sub nsw i32 %sub.2, %sub7.2
  %shl.2 = shl nsw i32 %sub8.2, 16
  %add9.2 = add nsw i32 %add.2, %shl.2
  %arrayidx10.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 2
  %21 = load i8, i8* %arrayidx10.2, align 1, !tbaa !6
  %conv11.2 = zext i8 %21 to i32
  %arrayidx12.2 = getelementptr inbounds i8, i8* %add.ptr30.1, i32 2
  %22 = load i8, i8* %arrayidx12.2, align 1, !tbaa !6
  %conv13.2 = zext i8 %22 to i32
  %sub14.2 = sub nsw i32 %conv11.2, %conv13.2
  %arrayidx15.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 3
  %23 = load i8, i8* %arrayidx15.2, align 1, !tbaa !6
  %conv16.2 = zext i8 %23 to i32
  %arrayidx17.2 = getelementptr inbounds i8, i8* %add.ptr30.1, i32 3
  %24 = load i8, i8* %arrayidx17.2, align 1, !tbaa !6
  %conv18.2 = zext i8 %24 to i32
  %sub19.2 = sub nsw i32 %conv16.2, %conv18.2
  %add20.2 = add nsw i32 %sub19.2, %sub14.2
  %sub21.2 = sub nsw i32 %sub14.2, %sub19.2
  %shl22.2 = shl nsw i32 %sub21.2, 16
  %add23.2 = add nsw i32 %add20.2, %shl22.2
  %add24.2 = add nsw i32 %add23.2, %add9.2
  %arrayidx26.2 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %tmp, i32 0, i32 2, i32 0
  store i32 %add24.2, i32* %arrayidx26.2, align 4, !tbaa !13
  %sub27.2 = sub nsw i32 %add9.2, %add23.2
  %arrayidx29.2 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %tmp, i32 0, i32 2, i32 1
  store i32 %sub27.2, i32* %arrayidx29.2, align 4, !tbaa !13
  %add.ptr.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 %i_pix1
  %add.ptr30.2 = getelementptr inbounds i8, i8* %add.ptr30.1, i32 %i_pix2
  %25 = load i8, i8* %add.ptr.2, align 1, !tbaa !6
  %conv.3 = zext i8 %25 to i32
  %26 = load i8, i8* %add.ptr30.2, align 1, !tbaa !6
  %conv2.3 = zext i8 %26 to i32
  %sub.3 = sub nsw i32 %conv.3, %conv2.3
  %arrayidx3.3 = getelementptr inbounds i8, i8* %add.ptr.2, i32 1
  %27 = load i8, i8* %arrayidx3.3, align 1, !tbaa !6
  %conv4.3 = zext i8 %27 to i32
  %arrayidx5.3 = getelementptr inbounds i8, i8* %add.ptr30.2, i32 1
  %28 = load i8, i8* %arrayidx5.3, align 1, !tbaa !6
  %conv6.3 = zext i8 %28 to i32
  %sub7.3 = sub nsw i32 %conv4.3, %conv6.3
  %add.3 = add nsw i32 %sub7.3, %sub.3
  %sub8.3 = sub nsw i32 %sub.3, %sub7.3
  %shl.3 = shl nsw i32 %sub8.3, 16
  %add9.3 = add nsw i32 %add.3, %shl.3
  %arrayidx10.3 = getelementptr inbounds i8, i8* %add.ptr.2, i32 2
  %29 = load i8, i8* %arrayidx10.3, align 1, !tbaa !6
  %conv11.3 = zext i8 %29 to i32
  %arrayidx12.3 = getelementptr inbounds i8, i8* %add.ptr30.2, i32 2
  %30 = load i8, i8* %arrayidx12.3, align 1, !tbaa !6
  %conv13.3 = zext i8 %30 to i32
  %sub14.3 = sub nsw i32 %conv11.3, %conv13.3
  %arrayidx15.3 = getelementptr inbounds i8, i8* %add.ptr.2, i32 3
  %31 = load i8, i8* %arrayidx15.3, align 1, !tbaa !6
  %conv16.3 = zext i8 %31 to i32
  %arrayidx17.3 = getelementptr inbounds i8, i8* %add.ptr30.2, i32 3
  %32 = load i8, i8* %arrayidx17.3, align 1, !tbaa !6
  %conv18.3 = zext i8 %32 to i32
  %sub19.3 = sub nsw i32 %conv16.3, %conv18.3
  %add20.3 = add nsw i32 %sub19.3, %sub14.3
  %sub21.3 = sub nsw i32 %sub14.3, %sub19.3
  %shl22.3 = shl nsw i32 %sub21.3, 16
  %add23.3 = add nsw i32 %add20.3, %shl22.3
  %add24.3 = add nsw i32 %add23.3, %add9.3
  %arrayidx26.3 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %tmp, i32 0, i32 3, i32 0
  store i32 %add24.3, i32* %arrayidx26.3, align 4, !tbaa !13
  %sub27.3 = sub nsw i32 %add9.3, %add23.3
  %arrayidx29.3 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %tmp, i32 0, i32 3, i32 1
  store i32 %sub27.3, i32* %arrayidx29.3, align 4, !tbaa !13
  %33 = load i32, i32* %arrayidx26, align 4, !tbaa !13
  %add41 = add i32 %add24.1, %33
  %sub46 = sub i32 %33, %add24.1
  %add51 = add nsw i32 %add24.3, %add24.2
  %sub56 = sub nsw i32 %add24.2, %add24.3
  %add57 = add i32 %add51, %add41
  %sub58 = sub i32 %add41, %add51
  %add59 = add i32 %sub56, %sub46
  %sub60 = sub i32 %sub46, %sub56
  %shr.i = lshr i32 %add57, 15
  %and.i = and i32 %shr.i, 65537
  %mul.i = mul nuw i32 %and.i, 65535
  %add.i = add i32 %mul.i, %add57
  %xor.i = xor i32 %add.i, %mul.i
  %shr.i135 = lshr i32 %add59, 15
  %and.i136 = and i32 %shr.i135, 65537
  %mul.i137 = mul nuw i32 %and.i136, 65535
  %add.i138 = add i32 %mul.i137, %add59
  %xor.i139 = xor i32 %add.i138, %mul.i137
  %add62 = add i32 %xor.i, %xor.i139
  %shr.i130 = lshr i32 %sub58, 15
  %and.i131 = and i32 %shr.i130, 65537
  %mul.i132 = mul nuw i32 %and.i131, 65535
  %add.i133 = add i32 %mul.i132, %sub58
  %xor.i134 = xor i32 %add.i133, %mul.i132
  %add64 = add i32 %add62, %xor.i134
  %shr.i125 = lshr i32 %sub60, 15
  %and.i126 = and i32 %shr.i125, 65537
  %mul.i127 = mul nuw i32 %and.i126, 65535
  %add.i128 = add i32 %mul.i127, %sub60
  %xor.i129 = xor i32 %add.i128, %mul.i127
  %add66 = add i32 %add64, %xor.i129
  %conv68 = and i32 %add66, 65535
  %shr = lshr i32 %add66, 16
  %add70 = add nuw nsw i32 %shr, %conv68
  %34 = load i32, i32* %arrayidx29, align 4, !tbaa !13
  %35 = load i32, i32* %arrayidx29.1, align 4, !tbaa !13
  %add41.1 = add i32 %35, %34
  %sub46.1 = sub i32 %34, %35
  %add51.1 = add nsw i32 %sub27.3, %sub27.2
  %sub56.1 = sub nsw i32 %sub27.2, %sub27.3
  %add57.1 = add i32 %add51.1, %add41.1
  %sub58.1 = sub i32 %add41.1, %add51.1
  %add59.1 = add i32 %sub56.1, %sub46.1
  %sub60.1 = sub i32 %sub46.1, %sub56.1
  %shr.i.1 = lshr i32 %add57.1, 15
  %and.i.1 = and i32 %shr.i.1, 65537
  %mul.i.1 = mul nuw i32 %and.i.1, 65535
  %add.i.1 = add i32 %mul.i.1, %add57.1
  %xor.i.1 = xor i32 %add.i.1, %mul.i.1
  %shr.i135.1 = lshr i32 %add59.1, 15
  %and.i136.1 = and i32 %shr.i135.1, 65537
  %mul.i137.1 = mul nuw i32 %and.i136.1, 65535
  %add.i138.1 = add i32 %mul.i137.1, %add59.1
  %xor.i139.1 = xor i32 %add.i138.1, %mul.i137.1
  %add62.1 = add i32 %xor.i.1, %xor.i139.1
  %shr.i130.1 = lshr i32 %sub58.1, 15
  %and.i131.1 = and i32 %shr.i130.1, 65537
  %mul.i132.1 = mul nuw i32 %and.i131.1, 65535
  %add.i133.1 = add i32 %mul.i132.1, %sub58.1
  %xor.i134.1 = xor i32 %add.i133.1, %mul.i132.1
  %add64.1 = add i32 %add62.1, %xor.i134.1
  %shr.i125.1 = lshr i32 %sub60.1, 15
  %and.i126.1 = and i32 %shr.i125.1, 65537
  %mul.i127.1 = mul nuw i32 %and.i126.1, 65535
  %add.i128.1 = add i32 %mul.i127.1, %sub60.1
  %xor.i129.1 = xor i32 %add.i128.1, %mul.i127.1
  %add66.1 = add i32 %add64.1, %xor.i129.1
  %conv68.1 = and i32 %add66.1, 65535
  %shr.1 = lshr i32 %add66.1, 16
  %add69.1 = add nuw nsw i32 %shr.1, %add70
  %add70.1 = add nuw nsw i32 %add69.1, %conv68.1
  %shr74 = lshr i32 %add70.1, 1
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #8
  ret i32 %shr74
}

; Function Attrs: nounwind readonly
define internal i32 @x264_pixel_satd_4x16(i8* nocapture readonly %pix1, i32 %i_pix1, i8* nocapture readonly %pix2, i32 %i_pix2) #4 {
entry:
  %call = tail call i32 @x264_pixel_satd_4x4(i8* %pix1, i32 %i_pix1, i8* %pix2, i32 %i_pix2)
  %mul = shl nsw i32 %i_pix1, 2
  %add.ptr = getelementptr inbounds i8, i8* %pix1, i32 %mul
  %mul1 = shl nsw i32 %i_pix2, 2
  %add.ptr2 = getelementptr inbounds i8, i8* %pix2, i32 %mul1
  %call3 = tail call i32 @x264_pixel_satd_4x4(i8* %add.ptr, i32 %i_pix1, i8* %add.ptr2, i32 %i_pix2)
  %mul4 = shl nsw i32 %i_pix1, 3
  %add.ptr5 = getelementptr inbounds i8, i8* %pix1, i32 %mul4
  %mul6 = shl nsw i32 %i_pix2, 3
  %add.ptr7 = getelementptr inbounds i8, i8* %pix2, i32 %mul6
  %call8 = tail call i32 @x264_pixel_satd_4x4(i8* %add.ptr5, i32 %i_pix1, i8* %add.ptr7, i32 %i_pix2)
  %mul9 = mul nsw i32 %i_pix1, 12
  %add.ptr10 = getelementptr inbounds i8, i8* %pix1, i32 %mul9
  %mul11 = mul nsw i32 %i_pix2, 12
  %add.ptr12 = getelementptr inbounds i8, i8* %pix2, i32 %mul11
  %call13 = tail call i32 @x264_pixel_satd_4x4(i8* %add.ptr10, i32 %i_pix1, i8* %add.ptr12, i32 %i_pix2)
  %add14 = add i32 %call3, %call
  %add = add i32 %add14, %call8
  %add15 = add i32 %add, %call13
  ret i32 %add15
}

; Function Attrs: nofree nounwind
define internal void @x264_pixel_satd_x3_16x16(i8* nocapture readonly %fenc, i8* nocapture readonly %pix0, i8* nocapture readonly %pix1, i8* nocapture readonly %pix2, i32 %i_stride, i32* nocapture %scores) #6 {
entry:
  %call = tail call i32 @x264_pixel_satd_16x16(i8* %fenc, i32 16, i8* %pix0, i32 %i_stride)
  store i32 %call, i32* %scores, align 4, !tbaa !13
  %call1 = tail call i32 @x264_pixel_satd_16x16(i8* %fenc, i32 16, i8* %pix1, i32 %i_stride)
  %arrayidx2 = getelementptr inbounds i32, i32* %scores, i32 1
  store i32 %call1, i32* %arrayidx2, align 4, !tbaa !13
  %call3 = tail call i32 @x264_pixel_satd_16x16(i8* %fenc, i32 16, i8* %pix2, i32 %i_stride)
  %arrayidx4 = getelementptr inbounds i32, i32* %scores, i32 2
  store i32 %call3, i32* %arrayidx4, align 4, !tbaa !13
  ret void
}

; Function Attrs: nofree nounwind
define internal void @x264_pixel_satd_x3_16x8(i8* nocapture readonly %fenc, i8* nocapture readonly %pix0, i8* nocapture readonly %pix1, i8* nocapture readonly %pix2, i32 %i_stride, i32* nocapture %scores) #6 {
entry:
  %call.i = tail call i32 @x264_pixel_satd_8x4(i8* %fenc, i32 16, i8* %pix0, i32 %i_stride) #8
  %add.ptr.i = getelementptr inbounds i8, i8* %fenc, i32 64
  %mul1.i = shl nsw i32 %i_stride, 2
  %add.ptr2.i = getelementptr inbounds i8, i8* %pix0, i32 %mul1.i
  %call3.i = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr.i, i32 16, i8* %add.ptr2.i, i32 %i_stride) #8
  %add.ptr4.i = getelementptr inbounds i8, i8* %fenc, i32 8
  %add.ptr5.i = getelementptr inbounds i8, i8* %pix0, i32 8
  %call6.i = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr4.i, i32 16, i8* nonnull %add.ptr5.i, i32 %i_stride) #8
  %add.ptr9.i = getelementptr inbounds i8, i8* %fenc, i32 72
  %add.ptr12.i = getelementptr inbounds i8, i8* %add.ptr5.i, i32 %mul1.i
  %call13.i = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr9.i, i32 16, i8* nonnull %add.ptr12.i, i32 %i_stride) #8
  %add14.i = add i32 %call3.i, %call.i
  %add.i = add i32 %add14.i, %call6.i
  %add15.i = add i32 %add.i, %call13.i
  store i32 %add15.i, i32* %scores, align 4, !tbaa !13
  %call.i11 = tail call i32 @x264_pixel_satd_8x4(i8* %fenc, i32 16, i8* %pix1, i32 %i_stride) #8
  %add.ptr2.i14 = getelementptr inbounds i8, i8* %pix1, i32 %mul1.i
  %call3.i15 = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr.i, i32 16, i8* %add.ptr2.i14, i32 %i_stride) #8
  %add.ptr5.i17 = getelementptr inbounds i8, i8* %pix1, i32 8
  %call6.i18 = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr4.i, i32 16, i8* nonnull %add.ptr5.i17, i32 %i_stride) #8
  %add.ptr12.i20 = getelementptr inbounds i8, i8* %add.ptr5.i17, i32 %mul1.i
  %call13.i21 = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr9.i, i32 16, i8* nonnull %add.ptr12.i20, i32 %i_stride) #8
  %add14.i22 = add i32 %call3.i15, %call.i11
  %add.i23 = add i32 %add14.i22, %call6.i18
  %add15.i24 = add i32 %add.i23, %call13.i21
  %arrayidx2 = getelementptr inbounds i32, i32* %scores, i32 1
  store i32 %add15.i24, i32* %arrayidx2, align 4, !tbaa !13
  %call.i25 = tail call i32 @x264_pixel_satd_8x4(i8* %fenc, i32 16, i8* %pix2, i32 %i_stride) #8
  %add.ptr2.i28 = getelementptr inbounds i8, i8* %pix2, i32 %mul1.i
  %call3.i29 = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr.i, i32 16, i8* %add.ptr2.i28, i32 %i_stride) #8
  %add.ptr5.i31 = getelementptr inbounds i8, i8* %pix2, i32 8
  %call6.i32 = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr4.i, i32 16, i8* nonnull %add.ptr5.i31, i32 %i_stride) #8
  %add.ptr12.i34 = getelementptr inbounds i8, i8* %add.ptr5.i31, i32 %mul1.i
  %call13.i35 = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr9.i, i32 16, i8* nonnull %add.ptr12.i34, i32 %i_stride) #8
  %add14.i36 = add i32 %call3.i29, %call.i25
  %add.i37 = add i32 %add14.i36, %call6.i32
  %add15.i38 = add i32 %add.i37, %call13.i35
  %arrayidx4 = getelementptr inbounds i32, i32* %scores, i32 2
  store i32 %add15.i38, i32* %arrayidx4, align 4, !tbaa !13
  ret void
}

; Function Attrs: nofree nounwind
define internal void @x264_pixel_satd_x3_8x16(i8* nocapture readonly %fenc, i8* nocapture readonly %pix0, i8* nocapture readonly %pix1, i8* nocapture readonly %pix2, i32 %i_stride, i32* nocapture %scores) #6 {
entry:
  %call.i = tail call i32 @x264_pixel_satd_8x4(i8* %fenc, i32 16, i8* %pix0, i32 %i_stride) #8
  %add.ptr.i = getelementptr inbounds i8, i8* %fenc, i32 64
  %mul1.i = shl nsw i32 %i_stride, 2
  %add.ptr2.i = getelementptr inbounds i8, i8* %pix0, i32 %mul1.i
  %call3.i = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr.i, i32 16, i8* %add.ptr2.i, i32 %i_stride) #8
  %add.ptr5.i = getelementptr inbounds i8, i8* %fenc, i32 128
  %mul6.i = shl nsw i32 %i_stride, 3
  %add.ptr7.i = getelementptr inbounds i8, i8* %pix0, i32 %mul6.i
  %call8.i = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr5.i, i32 16, i8* %add.ptr7.i, i32 %i_stride) #8
  %add.ptr10.i = getelementptr inbounds i8, i8* %fenc, i32 192
  %mul11.i = mul nsw i32 %i_stride, 12
  %add.ptr12.i = getelementptr inbounds i8, i8* %pix0, i32 %mul11.i
  %call13.i = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr10.i, i32 16, i8* %add.ptr12.i, i32 %i_stride) #8
  %add14.i = add i32 %call3.i, %call.i
  %add.i = add i32 %add14.i, %call8.i
  %add15.i = add i32 %add.i, %call13.i
  store i32 %add15.i, i32* %scores, align 4, !tbaa !13
  %call.i11 = tail call i32 @x264_pixel_satd_8x4(i8* %fenc, i32 16, i8* %pix1, i32 %i_stride) #8
  %add.ptr2.i14 = getelementptr inbounds i8, i8* %pix1, i32 %mul1.i
  %call3.i15 = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr.i, i32 16, i8* %add.ptr2.i14, i32 %i_stride) #8
  %add.ptr7.i18 = getelementptr inbounds i8, i8* %pix1, i32 %mul6.i
  %call8.i19 = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr5.i, i32 16, i8* %add.ptr7.i18, i32 %i_stride) #8
  %add.ptr12.i22 = getelementptr inbounds i8, i8* %pix1, i32 %mul11.i
  %call13.i23 = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr10.i, i32 16, i8* %add.ptr12.i22, i32 %i_stride) #8
  %add14.i24 = add i32 %call3.i15, %call.i11
  %add.i25 = add i32 %add14.i24, %call8.i19
  %add15.i26 = add i32 %add.i25, %call13.i23
  %arrayidx2 = getelementptr inbounds i32, i32* %scores, i32 1
  store i32 %add15.i26, i32* %arrayidx2, align 4, !tbaa !13
  %call.i27 = tail call i32 @x264_pixel_satd_8x4(i8* %fenc, i32 16, i8* %pix2, i32 %i_stride) #8
  %add.ptr2.i30 = getelementptr inbounds i8, i8* %pix2, i32 %mul1.i
  %call3.i31 = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr.i, i32 16, i8* %add.ptr2.i30, i32 %i_stride) #8
  %add.ptr7.i34 = getelementptr inbounds i8, i8* %pix2, i32 %mul6.i
  %call8.i35 = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr5.i, i32 16, i8* %add.ptr7.i34, i32 %i_stride) #8
  %add.ptr12.i38 = getelementptr inbounds i8, i8* %pix2, i32 %mul11.i
  %call13.i39 = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr10.i, i32 16, i8* %add.ptr12.i38, i32 %i_stride) #8
  %add14.i40 = add i32 %call3.i31, %call.i27
  %add.i41 = add i32 %add14.i40, %call8.i35
  %add15.i42 = add i32 %add.i41, %call13.i39
  %arrayidx4 = getelementptr inbounds i32, i32* %scores, i32 2
  store i32 %add15.i42, i32* %arrayidx4, align 4, !tbaa !13
  ret void
}

; Function Attrs: nofree nounwind
define internal void @x264_pixel_satd_x3_8x8(i8* nocapture readonly %fenc, i8* nocapture readonly %pix0, i8* nocapture readonly %pix1, i8* nocapture readonly %pix2, i32 %i_stride, i32* nocapture %scores) #6 {
entry:
  %call.i = tail call i32 @x264_pixel_satd_8x4(i8* %fenc, i32 16, i8* %pix0, i32 %i_stride) #8
  %add.ptr.i = getelementptr inbounds i8, i8* %fenc, i32 64
  %mul1.i = shl nsw i32 %i_stride, 2
  %add.ptr2.i = getelementptr inbounds i8, i8* %pix0, i32 %mul1.i
  %call3.i = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr.i, i32 16, i8* %add.ptr2.i, i32 %i_stride) #8
  %add.i = add nsw i32 %call3.i, %call.i
  store i32 %add.i, i32* %scores, align 4, !tbaa !13
  %call.i11 = tail call i32 @x264_pixel_satd_8x4(i8* %fenc, i32 16, i8* %pix1, i32 %i_stride) #8
  %add.ptr2.i14 = getelementptr inbounds i8, i8* %pix1, i32 %mul1.i
  %call3.i15 = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr.i, i32 16, i8* %add.ptr2.i14, i32 %i_stride) #8
  %add.i16 = add nsw i32 %call3.i15, %call.i11
  %arrayidx2 = getelementptr inbounds i32, i32* %scores, i32 1
  store i32 %add.i16, i32* %arrayidx2, align 4, !tbaa !13
  %call.i17 = tail call i32 @x264_pixel_satd_8x4(i8* %fenc, i32 16, i8* %pix2, i32 %i_stride) #8
  %add.ptr2.i20 = getelementptr inbounds i8, i8* %pix2, i32 %mul1.i
  %call3.i21 = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr.i, i32 16, i8* %add.ptr2.i20, i32 %i_stride) #8
  %add.i22 = add nsw i32 %call3.i21, %call.i17
  %arrayidx4 = getelementptr inbounds i32, i32* %scores, i32 2
  store i32 %add.i22, i32* %arrayidx4, align 4, !tbaa !13
  ret void
}

; Function Attrs: nofree nounwind
define internal void @x264_pixel_satd_x3_8x4(i8* nocapture readonly %fenc, i8* nocapture readonly %pix0, i8* nocapture readonly %pix1, i8* nocapture readonly %pix2, i32 %i_stride, i32* nocapture %scores) #6 {
entry:
  %call = tail call i32 @x264_pixel_satd_8x4(i8* %fenc, i32 16, i8* %pix0, i32 %i_stride)
  store i32 %call, i32* %scores, align 4, !tbaa !13
  %call1 = tail call i32 @x264_pixel_satd_8x4(i8* %fenc, i32 16, i8* %pix1, i32 %i_stride)
  %arrayidx2 = getelementptr inbounds i32, i32* %scores, i32 1
  store i32 %call1, i32* %arrayidx2, align 4, !tbaa !13
  %call3 = tail call i32 @x264_pixel_satd_8x4(i8* %fenc, i32 16, i8* %pix2, i32 %i_stride)
  %arrayidx4 = getelementptr inbounds i32, i32* %scores, i32 2
  store i32 %call3, i32* %arrayidx4, align 4, !tbaa !13
  ret void
}

; Function Attrs: nofree nounwind
define internal void @x264_pixel_satd_x3_4x8(i8* nocapture readonly %fenc, i8* nocapture readonly %pix0, i8* nocapture readonly %pix1, i8* nocapture readonly %pix2, i32 %i_stride, i32* nocapture %scores) #6 {
entry:
  %call.i = tail call i32 @x264_pixel_satd_4x4(i8* %fenc, i32 16, i8* %pix0, i32 %i_stride) #8
  %add.ptr.i = getelementptr inbounds i8, i8* %fenc, i32 64
  %mul1.i = shl nsw i32 %i_stride, 2
  %add.ptr2.i = getelementptr inbounds i8, i8* %pix0, i32 %mul1.i
  %call3.i = tail call i32 @x264_pixel_satd_4x4(i8* nonnull %add.ptr.i, i32 16, i8* %add.ptr2.i, i32 %i_stride) #8
  %add.i = add nsw i32 %call3.i, %call.i
  store i32 %add.i, i32* %scores, align 4, !tbaa !13
  %call.i11 = tail call i32 @x264_pixel_satd_4x4(i8* %fenc, i32 16, i8* %pix1, i32 %i_stride) #8
  %add.ptr2.i14 = getelementptr inbounds i8, i8* %pix1, i32 %mul1.i
  %call3.i15 = tail call i32 @x264_pixel_satd_4x4(i8* nonnull %add.ptr.i, i32 16, i8* %add.ptr2.i14, i32 %i_stride) #8
  %add.i16 = add nsw i32 %call3.i15, %call.i11
  %arrayidx2 = getelementptr inbounds i32, i32* %scores, i32 1
  store i32 %add.i16, i32* %arrayidx2, align 4, !tbaa !13
  %call.i17 = tail call i32 @x264_pixel_satd_4x4(i8* %fenc, i32 16, i8* %pix2, i32 %i_stride) #8
  %add.ptr2.i20 = getelementptr inbounds i8, i8* %pix2, i32 %mul1.i
  %call3.i21 = tail call i32 @x264_pixel_satd_4x4(i8* nonnull %add.ptr.i, i32 16, i8* %add.ptr2.i20, i32 %i_stride) #8
  %add.i22 = add nsw i32 %call3.i21, %call.i17
  %arrayidx4 = getelementptr inbounds i32, i32* %scores, i32 2
  store i32 %add.i22, i32* %arrayidx4, align 4, !tbaa !13
  ret void
}

; Function Attrs: nofree nounwind
define internal void @x264_pixel_satd_x3_4x4(i8* nocapture readonly %fenc, i8* nocapture readonly %pix0, i8* nocapture readonly %pix1, i8* nocapture readonly %pix2, i32 %i_stride, i32* nocapture %scores) #6 {
entry:
  %call = tail call i32 @x264_pixel_satd_4x4(i8* %fenc, i32 16, i8* %pix0, i32 %i_stride)
  store i32 %call, i32* %scores, align 4, !tbaa !13
  %call1 = tail call i32 @x264_pixel_satd_4x4(i8* %fenc, i32 16, i8* %pix1, i32 %i_stride)
  %arrayidx2 = getelementptr inbounds i32, i32* %scores, i32 1
  store i32 %call1, i32* %arrayidx2, align 4, !tbaa !13
  %call3 = tail call i32 @x264_pixel_satd_4x4(i8* %fenc, i32 16, i8* %pix2, i32 %i_stride)
  %arrayidx4 = getelementptr inbounds i32, i32* %scores, i32 2
  store i32 %call3, i32* %arrayidx4, align 4, !tbaa !13
  ret void
}

; Function Attrs: nofree nounwind
define internal void @x264_pixel_satd_x4_16x16(i8* nocapture readonly %fenc, i8* nocapture readonly %pix0, i8* nocapture readonly %pix1, i8* nocapture readonly %pix2, i8* nocapture readonly %pix3, i32 %i_stride, i32* nocapture %scores) #6 {
entry:
  %call = tail call i32 @x264_pixel_satd_16x16(i8* %fenc, i32 16, i8* %pix0, i32 %i_stride)
  store i32 %call, i32* %scores, align 4, !tbaa !13
  %call1 = tail call i32 @x264_pixel_satd_16x16(i8* %fenc, i32 16, i8* %pix1, i32 %i_stride)
  %arrayidx2 = getelementptr inbounds i32, i32* %scores, i32 1
  store i32 %call1, i32* %arrayidx2, align 4, !tbaa !13
  %call3 = tail call i32 @x264_pixel_satd_16x16(i8* %fenc, i32 16, i8* %pix2, i32 %i_stride)
  %arrayidx4 = getelementptr inbounds i32, i32* %scores, i32 2
  store i32 %call3, i32* %arrayidx4, align 4, !tbaa !13
  %call5 = tail call i32 @x264_pixel_satd_16x16(i8* %fenc, i32 16, i8* %pix3, i32 %i_stride)
  %arrayidx6 = getelementptr inbounds i32, i32* %scores, i32 3
  store i32 %call5, i32* %arrayidx6, align 4, !tbaa !13
  ret void
}

; Function Attrs: nofree nounwind
define internal void @x264_pixel_satd_x4_16x8(i8* nocapture readonly %fenc, i8* nocapture readonly %pix0, i8* nocapture readonly %pix1, i8* nocapture readonly %pix2, i8* nocapture readonly %pix3, i32 %i_stride, i32* nocapture %scores) #6 {
entry:
  %call.i = tail call i32 @x264_pixel_satd_8x4(i8* %fenc, i32 16, i8* %pix0, i32 %i_stride) #8
  %add.ptr.i = getelementptr inbounds i8, i8* %fenc, i32 64
  %mul1.i = shl nsw i32 %i_stride, 2
  %add.ptr2.i = getelementptr inbounds i8, i8* %pix0, i32 %mul1.i
  %call3.i = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr.i, i32 16, i8* %add.ptr2.i, i32 %i_stride) #8
  %add.ptr4.i = getelementptr inbounds i8, i8* %fenc, i32 8
  %add.ptr5.i = getelementptr inbounds i8, i8* %pix0, i32 8
  %call6.i = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr4.i, i32 16, i8* nonnull %add.ptr5.i, i32 %i_stride) #8
  %add.ptr9.i = getelementptr inbounds i8, i8* %fenc, i32 72
  %add.ptr12.i = getelementptr inbounds i8, i8* %add.ptr5.i, i32 %mul1.i
  %call13.i = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr9.i, i32 16, i8* nonnull %add.ptr12.i, i32 %i_stride) #8
  %add14.i = add i32 %call3.i, %call.i
  %add.i = add i32 %add14.i, %call6.i
  %add15.i = add i32 %add.i, %call13.i
  store i32 %add15.i, i32* %scores, align 4, !tbaa !13
  %call.i16 = tail call i32 @x264_pixel_satd_8x4(i8* %fenc, i32 16, i8* %pix1, i32 %i_stride) #8
  %add.ptr2.i19 = getelementptr inbounds i8, i8* %pix1, i32 %mul1.i
  %call3.i20 = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr.i, i32 16, i8* %add.ptr2.i19, i32 %i_stride) #8
  %add.ptr5.i22 = getelementptr inbounds i8, i8* %pix1, i32 8
  %call6.i23 = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr4.i, i32 16, i8* nonnull %add.ptr5.i22, i32 %i_stride) #8
  %add.ptr12.i25 = getelementptr inbounds i8, i8* %add.ptr5.i22, i32 %mul1.i
  %call13.i26 = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr9.i, i32 16, i8* nonnull %add.ptr12.i25, i32 %i_stride) #8
  %add14.i27 = add i32 %call3.i20, %call.i16
  %add.i28 = add i32 %add14.i27, %call6.i23
  %add15.i29 = add i32 %add.i28, %call13.i26
  %arrayidx2 = getelementptr inbounds i32, i32* %scores, i32 1
  store i32 %add15.i29, i32* %arrayidx2, align 4, !tbaa !13
  %call.i30 = tail call i32 @x264_pixel_satd_8x4(i8* %fenc, i32 16, i8* %pix2, i32 %i_stride) #8
  %add.ptr2.i33 = getelementptr inbounds i8, i8* %pix2, i32 %mul1.i
  %call3.i34 = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr.i, i32 16, i8* %add.ptr2.i33, i32 %i_stride) #8
  %add.ptr5.i36 = getelementptr inbounds i8, i8* %pix2, i32 8
  %call6.i37 = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr4.i, i32 16, i8* nonnull %add.ptr5.i36, i32 %i_stride) #8
  %add.ptr12.i39 = getelementptr inbounds i8, i8* %add.ptr5.i36, i32 %mul1.i
  %call13.i40 = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr9.i, i32 16, i8* nonnull %add.ptr12.i39, i32 %i_stride) #8
  %add14.i41 = add i32 %call3.i34, %call.i30
  %add.i42 = add i32 %add14.i41, %call6.i37
  %add15.i43 = add i32 %add.i42, %call13.i40
  %arrayidx4 = getelementptr inbounds i32, i32* %scores, i32 2
  store i32 %add15.i43, i32* %arrayidx4, align 4, !tbaa !13
  %call.i44 = tail call i32 @x264_pixel_satd_8x4(i8* %fenc, i32 16, i8* %pix3, i32 %i_stride) #8
  %add.ptr2.i47 = getelementptr inbounds i8, i8* %pix3, i32 %mul1.i
  %call3.i48 = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr.i, i32 16, i8* %add.ptr2.i47, i32 %i_stride) #8
  %add.ptr5.i50 = getelementptr inbounds i8, i8* %pix3, i32 8
  %call6.i51 = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr4.i, i32 16, i8* nonnull %add.ptr5.i50, i32 %i_stride) #8
  %add.ptr12.i53 = getelementptr inbounds i8, i8* %add.ptr5.i50, i32 %mul1.i
  %call13.i54 = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr9.i, i32 16, i8* nonnull %add.ptr12.i53, i32 %i_stride) #8
  %add14.i55 = add i32 %call3.i48, %call.i44
  %add.i56 = add i32 %add14.i55, %call6.i51
  %add15.i57 = add i32 %add.i56, %call13.i54
  %arrayidx6 = getelementptr inbounds i32, i32* %scores, i32 3
  store i32 %add15.i57, i32* %arrayidx6, align 4, !tbaa !13
  ret void
}

; Function Attrs: nofree nounwind
define internal void @x264_pixel_satd_x4_8x16(i8* nocapture readonly %fenc, i8* nocapture readonly %pix0, i8* nocapture readonly %pix1, i8* nocapture readonly %pix2, i8* nocapture readonly %pix3, i32 %i_stride, i32* nocapture %scores) #6 {
entry:
  %call.i = tail call i32 @x264_pixel_satd_8x4(i8* %fenc, i32 16, i8* %pix0, i32 %i_stride) #8
  %add.ptr.i = getelementptr inbounds i8, i8* %fenc, i32 64
  %mul1.i = shl nsw i32 %i_stride, 2
  %add.ptr2.i = getelementptr inbounds i8, i8* %pix0, i32 %mul1.i
  %call3.i = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr.i, i32 16, i8* %add.ptr2.i, i32 %i_stride) #8
  %add.ptr5.i = getelementptr inbounds i8, i8* %fenc, i32 128
  %mul6.i = shl nsw i32 %i_stride, 3
  %add.ptr7.i = getelementptr inbounds i8, i8* %pix0, i32 %mul6.i
  %call8.i = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr5.i, i32 16, i8* %add.ptr7.i, i32 %i_stride) #8
  %add.ptr10.i = getelementptr inbounds i8, i8* %fenc, i32 192
  %mul11.i = mul nsw i32 %i_stride, 12
  %add.ptr12.i = getelementptr inbounds i8, i8* %pix0, i32 %mul11.i
  %call13.i = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr10.i, i32 16, i8* %add.ptr12.i, i32 %i_stride) #8
  %add14.i = add i32 %call3.i, %call.i
  %add.i = add i32 %add14.i, %call8.i
  %add15.i = add i32 %add.i, %call13.i
  store i32 %add15.i, i32* %scores, align 4, !tbaa !13
  %call.i16 = tail call i32 @x264_pixel_satd_8x4(i8* %fenc, i32 16, i8* %pix1, i32 %i_stride) #8
  %add.ptr2.i19 = getelementptr inbounds i8, i8* %pix1, i32 %mul1.i
  %call3.i20 = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr.i, i32 16, i8* %add.ptr2.i19, i32 %i_stride) #8
  %add.ptr7.i23 = getelementptr inbounds i8, i8* %pix1, i32 %mul6.i
  %call8.i24 = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr5.i, i32 16, i8* %add.ptr7.i23, i32 %i_stride) #8
  %add.ptr12.i27 = getelementptr inbounds i8, i8* %pix1, i32 %mul11.i
  %call13.i28 = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr10.i, i32 16, i8* %add.ptr12.i27, i32 %i_stride) #8
  %add14.i29 = add i32 %call3.i20, %call.i16
  %add.i30 = add i32 %add14.i29, %call8.i24
  %add15.i31 = add i32 %add.i30, %call13.i28
  %arrayidx2 = getelementptr inbounds i32, i32* %scores, i32 1
  store i32 %add15.i31, i32* %arrayidx2, align 4, !tbaa !13
  %call.i32 = tail call i32 @x264_pixel_satd_8x4(i8* %fenc, i32 16, i8* %pix2, i32 %i_stride) #8
  %add.ptr2.i35 = getelementptr inbounds i8, i8* %pix2, i32 %mul1.i
  %call3.i36 = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr.i, i32 16, i8* %add.ptr2.i35, i32 %i_stride) #8
  %add.ptr7.i39 = getelementptr inbounds i8, i8* %pix2, i32 %mul6.i
  %call8.i40 = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr5.i, i32 16, i8* %add.ptr7.i39, i32 %i_stride) #8
  %add.ptr12.i43 = getelementptr inbounds i8, i8* %pix2, i32 %mul11.i
  %call13.i44 = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr10.i, i32 16, i8* %add.ptr12.i43, i32 %i_stride) #8
  %add14.i45 = add i32 %call3.i36, %call.i32
  %add.i46 = add i32 %add14.i45, %call8.i40
  %add15.i47 = add i32 %add.i46, %call13.i44
  %arrayidx4 = getelementptr inbounds i32, i32* %scores, i32 2
  store i32 %add15.i47, i32* %arrayidx4, align 4, !tbaa !13
  %call.i48 = tail call i32 @x264_pixel_satd_8x4(i8* %fenc, i32 16, i8* %pix3, i32 %i_stride) #8
  %add.ptr2.i51 = getelementptr inbounds i8, i8* %pix3, i32 %mul1.i
  %call3.i52 = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr.i, i32 16, i8* %add.ptr2.i51, i32 %i_stride) #8
  %add.ptr7.i55 = getelementptr inbounds i8, i8* %pix3, i32 %mul6.i
  %call8.i56 = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr5.i, i32 16, i8* %add.ptr7.i55, i32 %i_stride) #8
  %add.ptr12.i59 = getelementptr inbounds i8, i8* %pix3, i32 %mul11.i
  %call13.i60 = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr10.i, i32 16, i8* %add.ptr12.i59, i32 %i_stride) #8
  %add14.i61 = add i32 %call3.i52, %call.i48
  %add.i62 = add i32 %add14.i61, %call8.i56
  %add15.i63 = add i32 %add.i62, %call13.i60
  %arrayidx6 = getelementptr inbounds i32, i32* %scores, i32 3
  store i32 %add15.i63, i32* %arrayidx6, align 4, !tbaa !13
  ret void
}

; Function Attrs: nofree nounwind
define internal void @x264_pixel_satd_x4_8x8(i8* nocapture readonly %fenc, i8* nocapture readonly %pix0, i8* nocapture readonly %pix1, i8* nocapture readonly %pix2, i8* nocapture readonly %pix3, i32 %i_stride, i32* nocapture %scores) #6 {
entry:
  %call.i = tail call i32 @x264_pixel_satd_8x4(i8* %fenc, i32 16, i8* %pix0, i32 %i_stride) #8
  %add.ptr.i = getelementptr inbounds i8, i8* %fenc, i32 64
  %mul1.i = shl nsw i32 %i_stride, 2
  %add.ptr2.i = getelementptr inbounds i8, i8* %pix0, i32 %mul1.i
  %call3.i = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr.i, i32 16, i8* %add.ptr2.i, i32 %i_stride) #8
  %add.i = add nsw i32 %call3.i, %call.i
  store i32 %add.i, i32* %scores, align 4, !tbaa !13
  %call.i16 = tail call i32 @x264_pixel_satd_8x4(i8* %fenc, i32 16, i8* %pix1, i32 %i_stride) #8
  %add.ptr2.i19 = getelementptr inbounds i8, i8* %pix1, i32 %mul1.i
  %call3.i20 = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr.i, i32 16, i8* %add.ptr2.i19, i32 %i_stride) #8
  %add.i21 = add nsw i32 %call3.i20, %call.i16
  %arrayidx2 = getelementptr inbounds i32, i32* %scores, i32 1
  store i32 %add.i21, i32* %arrayidx2, align 4, !tbaa !13
  %call.i22 = tail call i32 @x264_pixel_satd_8x4(i8* %fenc, i32 16, i8* %pix2, i32 %i_stride) #8
  %add.ptr2.i25 = getelementptr inbounds i8, i8* %pix2, i32 %mul1.i
  %call3.i26 = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr.i, i32 16, i8* %add.ptr2.i25, i32 %i_stride) #8
  %add.i27 = add nsw i32 %call3.i26, %call.i22
  %arrayidx4 = getelementptr inbounds i32, i32* %scores, i32 2
  store i32 %add.i27, i32* %arrayidx4, align 4, !tbaa !13
  %call.i28 = tail call i32 @x264_pixel_satd_8x4(i8* %fenc, i32 16, i8* %pix3, i32 %i_stride) #8
  %add.ptr2.i31 = getelementptr inbounds i8, i8* %pix3, i32 %mul1.i
  %call3.i32 = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr.i, i32 16, i8* %add.ptr2.i31, i32 %i_stride) #8
  %add.i33 = add nsw i32 %call3.i32, %call.i28
  %arrayidx6 = getelementptr inbounds i32, i32* %scores, i32 3
  store i32 %add.i33, i32* %arrayidx6, align 4, !tbaa !13
  ret void
}

; Function Attrs: nofree nounwind
define internal void @x264_pixel_satd_x4_8x4(i8* nocapture readonly %fenc, i8* nocapture readonly %pix0, i8* nocapture readonly %pix1, i8* nocapture readonly %pix2, i8* nocapture readonly %pix3, i32 %i_stride, i32* nocapture %scores) #6 {
entry:
  %call = tail call i32 @x264_pixel_satd_8x4(i8* %fenc, i32 16, i8* %pix0, i32 %i_stride)
  store i32 %call, i32* %scores, align 4, !tbaa !13
  %call1 = tail call i32 @x264_pixel_satd_8x4(i8* %fenc, i32 16, i8* %pix1, i32 %i_stride)
  %arrayidx2 = getelementptr inbounds i32, i32* %scores, i32 1
  store i32 %call1, i32* %arrayidx2, align 4, !tbaa !13
  %call3 = tail call i32 @x264_pixel_satd_8x4(i8* %fenc, i32 16, i8* %pix2, i32 %i_stride)
  %arrayidx4 = getelementptr inbounds i32, i32* %scores, i32 2
  store i32 %call3, i32* %arrayidx4, align 4, !tbaa !13
  %call5 = tail call i32 @x264_pixel_satd_8x4(i8* %fenc, i32 16, i8* %pix3, i32 %i_stride)
  %arrayidx6 = getelementptr inbounds i32, i32* %scores, i32 3
  store i32 %call5, i32* %arrayidx6, align 4, !tbaa !13
  ret void
}

; Function Attrs: nofree nounwind
define internal void @x264_pixel_satd_x4_4x8(i8* nocapture readonly %fenc, i8* nocapture readonly %pix0, i8* nocapture readonly %pix1, i8* nocapture readonly %pix2, i8* nocapture readonly %pix3, i32 %i_stride, i32* nocapture %scores) #6 {
entry:
  %call.i = tail call i32 @x264_pixel_satd_4x4(i8* %fenc, i32 16, i8* %pix0, i32 %i_stride) #8
  %add.ptr.i = getelementptr inbounds i8, i8* %fenc, i32 64
  %mul1.i = shl nsw i32 %i_stride, 2
  %add.ptr2.i = getelementptr inbounds i8, i8* %pix0, i32 %mul1.i
  %call3.i = tail call i32 @x264_pixel_satd_4x4(i8* nonnull %add.ptr.i, i32 16, i8* %add.ptr2.i, i32 %i_stride) #8
  %add.i = add nsw i32 %call3.i, %call.i
  store i32 %add.i, i32* %scores, align 4, !tbaa !13
  %call.i16 = tail call i32 @x264_pixel_satd_4x4(i8* %fenc, i32 16, i8* %pix1, i32 %i_stride) #8
  %add.ptr2.i19 = getelementptr inbounds i8, i8* %pix1, i32 %mul1.i
  %call3.i20 = tail call i32 @x264_pixel_satd_4x4(i8* nonnull %add.ptr.i, i32 16, i8* %add.ptr2.i19, i32 %i_stride) #8
  %add.i21 = add nsw i32 %call3.i20, %call.i16
  %arrayidx2 = getelementptr inbounds i32, i32* %scores, i32 1
  store i32 %add.i21, i32* %arrayidx2, align 4, !tbaa !13
  %call.i22 = tail call i32 @x264_pixel_satd_4x4(i8* %fenc, i32 16, i8* %pix2, i32 %i_stride) #8
  %add.ptr2.i25 = getelementptr inbounds i8, i8* %pix2, i32 %mul1.i
  %call3.i26 = tail call i32 @x264_pixel_satd_4x4(i8* nonnull %add.ptr.i, i32 16, i8* %add.ptr2.i25, i32 %i_stride) #8
  %add.i27 = add nsw i32 %call3.i26, %call.i22
  %arrayidx4 = getelementptr inbounds i32, i32* %scores, i32 2
  store i32 %add.i27, i32* %arrayidx4, align 4, !tbaa !13
  %call.i28 = tail call i32 @x264_pixel_satd_4x4(i8* %fenc, i32 16, i8* %pix3, i32 %i_stride) #8
  %add.ptr2.i31 = getelementptr inbounds i8, i8* %pix3, i32 %mul1.i
  %call3.i32 = tail call i32 @x264_pixel_satd_4x4(i8* nonnull %add.ptr.i, i32 16, i8* %add.ptr2.i31, i32 %i_stride) #8
  %add.i33 = add nsw i32 %call3.i32, %call.i28
  %arrayidx6 = getelementptr inbounds i32, i32* %scores, i32 3
  store i32 %add.i33, i32* %arrayidx6, align 4, !tbaa !13
  ret void
}

; Function Attrs: nofree nounwind
define internal void @x264_pixel_satd_x4_4x4(i8* nocapture readonly %fenc, i8* nocapture readonly %pix0, i8* nocapture readonly %pix1, i8* nocapture readonly %pix2, i8* nocapture readonly %pix3, i32 %i_stride, i32* nocapture %scores) #6 {
entry:
  %call = tail call i32 @x264_pixel_satd_4x4(i8* %fenc, i32 16, i8* %pix0, i32 %i_stride)
  store i32 %call, i32* %scores, align 4, !tbaa !13
  %call1 = tail call i32 @x264_pixel_satd_4x4(i8* %fenc, i32 16, i8* %pix1, i32 %i_stride)
  %arrayidx2 = getelementptr inbounds i32, i32* %scores, i32 1
  store i32 %call1, i32* %arrayidx2, align 4, !tbaa !13
  %call3 = tail call i32 @x264_pixel_satd_4x4(i8* %fenc, i32 16, i8* %pix2, i32 %i_stride)
  %arrayidx4 = getelementptr inbounds i32, i32* %scores, i32 2
  store i32 %call3, i32* %arrayidx4, align 4, !tbaa !13
  %call5 = tail call i32 @x264_pixel_satd_4x4(i8* %fenc, i32 16, i8* %pix3, i32 %i_stride)
  %arrayidx6 = getelementptr inbounds i32, i32* %scores, i32 3
  store i32 %call5, i32* %arrayidx6, align 4, !tbaa !13
  ret void
}

; Function Attrs: nounwind readonly
define internal i64 @x264_pixel_hadamard_ac_16x16(i8* nocapture readonly %pix, i32 %stride) #4 {
entry:
  %call = tail call fastcc i64 @pixel_hadamard_ac(i8* %pix, i32 %stride)
  %add.ptr = getelementptr inbounds i8, i8* %pix, i32 8
  %call1 = tail call fastcc i64 @pixel_hadamard_ac(i8* nonnull %add.ptr, i32 %stride)
  %add = add i64 %call1, %call
  %mul = shl nsw i32 %stride, 3
  %add.ptr2 = getelementptr inbounds i8, i8* %pix, i32 %mul
  %call3 = tail call fastcc i64 @pixel_hadamard_ac(i8* %add.ptr2, i32 %stride)
  %add4 = add i64 %add, %call3
  %add.ptr7 = getelementptr inbounds i8, i8* %add.ptr2, i32 8
  %call8 = tail call fastcc i64 @pixel_hadamard_ac(i8* nonnull %add.ptr7, i32 %stride)
  %add9 = add i64 %add4, %call8
  %shr = lshr i64 %add9, 34
  %shl = shl nuw nsw i64 %shr, 32
  %conv = trunc i64 %add9 to i32
  %shr10 = lshr i32 %conv, 1
  %conv11 = zext i32 %shr10 to i64
  %add12 = or i64 %shl, %conv11
  ret i64 %add12
}

; Function Attrs: nounwind readonly
define internal i64 @x264_pixel_hadamard_ac_16x8(i8* nocapture readonly %pix, i32 %stride) #4 {
entry:
  %call = tail call fastcc i64 @pixel_hadamard_ac(i8* %pix, i32 %stride)
  %add.ptr = getelementptr inbounds i8, i8* %pix, i32 8
  %call1 = tail call fastcc i64 @pixel_hadamard_ac(i8* nonnull %add.ptr, i32 %stride)
  %add = add i64 %call1, %call
  %shr = lshr i64 %add, 34
  %shl = shl nuw nsw i64 %shr, 32
  %conv = trunc i64 %add to i32
  %shr2 = lshr i32 %conv, 1
  %conv3 = zext i32 %shr2 to i64
  %add4 = or i64 %shl, %conv3
  ret i64 %add4
}

; Function Attrs: nounwind readonly
define internal i64 @x264_pixel_hadamard_ac_8x16(i8* nocapture readonly %pix, i32 %stride) #4 {
entry:
  %call = tail call fastcc i64 @pixel_hadamard_ac(i8* %pix, i32 %stride)
  %mul = shl nsw i32 %stride, 3
  %add.ptr = getelementptr inbounds i8, i8* %pix, i32 %mul
  %call1 = tail call fastcc i64 @pixel_hadamard_ac(i8* %add.ptr, i32 %stride)
  %add = add i64 %call1, %call
  %shr = lshr i64 %add, 34
  %shl = shl nuw nsw i64 %shr, 32
  %conv = trunc i64 %add to i32
  %shr2 = lshr i32 %conv, 1
  %conv3 = zext i32 %shr2 to i64
  %add4 = or i64 %shl, %conv3
  ret i64 %add4
}

; Function Attrs: nounwind readonly
define internal i64 @x264_pixel_hadamard_ac_8x8(i8* nocapture readonly %pix, i32 %stride) #4 {
entry:
  %call = tail call fastcc i64 @pixel_hadamard_ac(i8* %pix, i32 %stride)
  %shr = lshr i64 %call, 34
  %shl = shl nuw nsw i64 %shr, 32
  %conv = trunc i64 %call to i32
  %shr1 = lshr i32 %conv, 1
  %conv2 = zext i32 %shr1 to i64
  %add = or i64 %shl, %conv2
  ret i64 %add
}

; Function Attrs: nofree norecurse nounwind
define internal i32 @x264_pixel_ads4(i32* nocapture readonly %enc_dc, i16* nocapture readonly %sums, i32 %delta, i16* nocapture readonly %cost_mvx, i16* nocapture %mvs, i32 %width, i32 %thresh) #2 {
entry:
  %cmp46 = icmp sgt i32 %width, 0
  br i1 %cmp46, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %entry
  %0 = load i32, i32* %enc_dc, align 4, !tbaa !13
  %arrayidx2 = getelementptr inbounds i32, i32* %enc_dc, i32 1
  %1 = load i32, i32* %arrayidx2, align 4, !tbaa !13
  %arrayidx7 = getelementptr inbounds i32, i32* %enc_dc, i32 2
  %2 = load i32, i32* %arrayidx7, align 4, !tbaa !13
  %arrayidx13 = getelementptr inbounds i32, i32* %enc_dc, i32 3
  %3 = load i32, i32* %arrayidx13, align 4, !tbaa !13
  %add14 = add nsw i32 %delta, 8
  br label %for.body

for.cond.cleanup:                                 ; preds = %if.end, %entry
  %nmv.0.lcssa = phi i32 [ 0, %entry ], [ %nmv.1, %if.end ]
  ret i32 %nmv.0.lcssa

for.body:                                         ; preds = %if.end, %for.body.lr.ph
  %sums.addr.050 = phi i16* [ %sums, %for.body.lr.ph ], [ %incdec.ptr, %if.end ]
  %i.048 = phi i32 [ 0, %for.body.lr.ph ], [ %inc27, %if.end ]
  %nmv.047 = phi i32 [ 0, %for.body.lr.ph ], [ %nmv.1, %if.end ]
  %4 = load i16, i16* %sums.addr.050, align 2, !tbaa !59
  %conv = zext i16 %4 to i32
  %sub = sub nsw i32 %0, %conv
  %5 = icmp slt i32 %sub, 0
  %neg = sub nsw i32 0, %sub
  %6 = select i1 %5, i32 %neg, i32 %sub
  %arrayidx3 = getelementptr inbounds i16, i16* %sums.addr.050, i32 8
  %7 = load i16, i16* %arrayidx3, align 2, !tbaa !59
  %conv4 = zext i16 %7 to i32
  %sub5 = sub nsw i32 %1, %conv4
  %8 = icmp slt i32 %sub5, 0
  %neg43 = sub nsw i32 0, %sub5
  %9 = select i1 %8, i32 %neg43, i32 %sub5
  %add = add nuw nsw i32 %9, %6
  %arrayidx8 = getelementptr inbounds i16, i16* %sums.addr.050, i32 %delta
  %10 = load i16, i16* %arrayidx8, align 2, !tbaa !59
  %conv9 = zext i16 %10 to i32
  %sub10 = sub nsw i32 %2, %conv9
  %11 = icmp slt i32 %sub10, 0
  %neg44 = sub nsw i32 0, %sub10
  %12 = select i1 %11, i32 %neg44, i32 %sub10
  %add12 = add nuw nsw i32 %add, %12
  %arrayidx15 = getelementptr inbounds i16, i16* %sums.addr.050, i32 %add14
  %13 = load i16, i16* %arrayidx15, align 2, !tbaa !59
  %conv16 = zext i16 %13 to i32
  %sub17 = sub nsw i32 %3, %conv16
  %14 = icmp slt i32 %sub17, 0
  %neg45 = sub nsw i32 0, %sub17
  %15 = select i1 %14, i32 %neg45, i32 %sub17
  %arrayidx20 = getelementptr inbounds i16, i16* %cost_mvx, i32 %i.048
  %16 = load i16, i16* %arrayidx20, align 2, !tbaa !59
  %conv21 = zext i16 %16 to i32
  %add19 = add nuw i32 %add12, %conv21
  %add22 = add i32 %add19, %15
  %cmp23 = icmp slt i32 %add22, %thresh
  br i1 %cmp23, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %conv25 = trunc i32 %i.048 to i16
  %inc = add nsw i32 %nmv.047, 1
  %arrayidx26 = getelementptr inbounds i16, i16* %mvs, i32 %nmv.047
  store i16 %conv25, i16* %arrayidx26, align 2, !tbaa !59
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %nmv.1 = phi i32 [ %inc, %if.then ], [ %nmv.047, %for.body ]
  %inc27 = add nuw nsw i32 %i.048, 1
  %incdec.ptr = getelementptr inbounds i16, i16* %sums.addr.050, i32 1
  %exitcond = icmp eq i32 %inc27, %width
  br i1 %exitcond, label %for.cond.cleanup, label %for.body
}

; Function Attrs: nofree norecurse nounwind
define internal i32 @x264_pixel_ads2(i32* nocapture readonly %enc_dc, i16* nocapture readonly %sums, i32 %delta, i16* nocapture readonly %cost_mvx, i16* nocapture %mvs, i32 %width, i32 %thresh) #2 {
entry:
  %cmp26 = icmp sgt i32 %width, 0
  br i1 %cmp26, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %entry
  %0 = load i32, i32* %enc_dc, align 4, !tbaa !13
  %arrayidx2 = getelementptr inbounds i32, i32* %enc_dc, i32 1
  %1 = load i32, i32* %arrayidx2, align 4, !tbaa !13
  br label %for.body

for.cond.cleanup:                                 ; preds = %if.end, %entry
  %nmv.0.lcssa = phi i32 [ 0, %entry ], [ %nmv.1, %if.end ]
  ret i32 %nmv.0.lcssa

for.body:                                         ; preds = %if.end, %for.body.lr.ph
  %sums.addr.030 = phi i16* [ %sums, %for.body.lr.ph ], [ %incdec.ptr, %if.end ]
  %i.028 = phi i32 [ 0, %for.body.lr.ph ], [ %inc14, %if.end ]
  %nmv.027 = phi i32 [ 0, %for.body.lr.ph ], [ %nmv.1, %if.end ]
  %2 = load i16, i16* %sums.addr.030, align 2, !tbaa !59
  %conv = zext i16 %2 to i32
  %sub = sub nsw i32 %0, %conv
  %3 = icmp slt i32 %sub, 0
  %neg = sub nsw i32 0, %sub
  %4 = select i1 %3, i32 %neg, i32 %sub
  %arrayidx3 = getelementptr inbounds i16, i16* %sums.addr.030, i32 %delta
  %5 = load i16, i16* %arrayidx3, align 2, !tbaa !59
  %conv4 = zext i16 %5 to i32
  %sub5 = sub nsw i32 %1, %conv4
  %6 = icmp slt i32 %sub5, 0
  %neg25 = sub nsw i32 0, %sub5
  %7 = select i1 %6, i32 %neg25, i32 %sub5
  %arrayidx7 = getelementptr inbounds i16, i16* %cost_mvx, i32 %i.028
  %8 = load i16, i16* %arrayidx7, align 2, !tbaa !59
  %conv8 = zext i16 %8 to i32
  %add = add nuw i32 %4, %conv8
  %add9 = add i32 %add, %7
  %cmp10 = icmp slt i32 %add9, %thresh
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %conv12 = trunc i32 %i.028 to i16
  %inc = add nsw i32 %nmv.027, 1
  %arrayidx13 = getelementptr inbounds i16, i16* %mvs, i32 %nmv.027
  store i16 %conv12, i16* %arrayidx13, align 2, !tbaa !59
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %nmv.1 = phi i32 [ %inc, %if.then ], [ %nmv.027, %for.body ]
  %inc14 = add nuw nsw i32 %i.028, 1
  %incdec.ptr = getelementptr inbounds i16, i16* %sums.addr.030, i32 1
  %exitcond = icmp eq i32 %inc14, %width
  br i1 %exitcond, label %for.cond.cleanup, label %for.body
}

; Function Attrs: nofree norecurse nounwind
define internal i32 @x264_pixel_ads1(i32* nocapture readonly %enc_dc, i16* nocapture readonly %sums, i32 %delta, i16* nocapture readonly %cost_mvx, i16* nocapture %mvs, i32 %width, i32 %thresh) #2 {
entry:
  %cmp17 = icmp sgt i32 %width, 0
  br i1 %cmp17, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %entry
  %0 = load i32, i32* %enc_dc, align 4, !tbaa !13
  br label %for.body

for.cond.cleanup:                                 ; preds = %if.end, %entry
  %nmv.0.lcssa = phi i32 [ 0, %entry ], [ %nmv.1, %if.end ]
  ret i32 %nmv.0.lcssa

for.body:                                         ; preds = %if.end, %for.body.lr.ph
  %sums.addr.021 = phi i16* [ %sums, %for.body.lr.ph ], [ %incdec.ptr, %if.end ]
  %i.019 = phi i32 [ 0, %for.body.lr.ph ], [ %inc8, %if.end ]
  %nmv.018 = phi i32 [ 0, %for.body.lr.ph ], [ %nmv.1, %if.end ]
  %1 = load i16, i16* %sums.addr.021, align 2, !tbaa !59
  %conv = zext i16 %1 to i32
  %sub = sub nsw i32 %0, %conv
  %2 = icmp slt i32 %sub, 0
  %neg = sub nsw i32 0, %sub
  %3 = select i1 %2, i32 %neg, i32 %sub
  %arrayidx2 = getelementptr inbounds i16, i16* %cost_mvx, i32 %i.019
  %4 = load i16, i16* %arrayidx2, align 2, !tbaa !59
  %conv3 = zext i16 %4 to i32
  %add = add nuw nsw i32 %3, %conv3
  %cmp4 = icmp slt i32 %add, %thresh
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %conv6 = trunc i32 %i.019 to i16
  %inc = add nsw i32 %nmv.018, 1
  %arrayidx7 = getelementptr inbounds i16, i16* %mvs, i32 %nmv.018
  store i16 %conv6, i16* %arrayidx7, align 2, !tbaa !59
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %nmv.1 = phi i32 [ %inc, %if.then ], [ %nmv.018, %for.body ]
  %inc8 = add nuw nsw i32 %i.019, 1
  %incdec.ptr = getelementptr inbounds i16, i16* %sums.addr.021, i32 1
  %exitcond = icmp eq i32 %inc8, %width
  br i1 %exitcond, label %for.cond.cleanup, label %for.body
}

; Function Attrs: nounwind readonly
define internal i32 @x264_pixel_sa8d_16x16(i8* nocapture readonly %pix1, i32 %i_pix1, i8* nocapture readonly %pix2, i32 %i_pix2) #4 {
entry:
  %call = tail call fastcc i32 @sa8d_8x8(i8* %pix1, i32 %i_pix1, i8* %pix2, i32 %i_pix2)
  %add.ptr = getelementptr inbounds i8, i8* %pix1, i32 8
  %add.ptr1 = getelementptr inbounds i8, i8* %pix2, i32 8
  %call2 = tail call fastcc i32 @sa8d_8x8(i8* nonnull %add.ptr, i32 %i_pix1, i8* nonnull %add.ptr1, i32 %i_pix2)
  %mul = shl nsw i32 %i_pix1, 3
  %add.ptr3 = getelementptr inbounds i8, i8* %pix1, i32 %mul
  %mul4 = shl nsw i32 %i_pix2, 3
  %add.ptr5 = getelementptr inbounds i8, i8* %pix2, i32 %mul4
  %call6 = tail call fastcc i32 @sa8d_8x8(i8* %add.ptr3, i32 %i_pix1, i8* %add.ptr5, i32 %i_pix2)
  %add.ptr10 = getelementptr inbounds i8, i8* %add.ptr, i32 %mul
  %add.ptr13 = getelementptr inbounds i8, i8* %add.ptr1, i32 %mul4
  %call14 = tail call fastcc i32 @sa8d_8x8(i8* nonnull %add.ptr10, i32 %i_pix1, i8* nonnull %add.ptr13, i32 %i_pix2)
  %add = add i32 %call, 2
  %add7 = add i32 %add, %call2
  %add15 = add i32 %add7, %call6
  %add16 = add i32 %add15, %call14
  %shr = ashr i32 %add16, 2
  ret i32 %shr
}

; Function Attrs: nounwind readonly
define internal i32 @x264_pixel_sa8d_8x8(i8* nocapture readonly %pix1, i32 %i_pix1, i8* nocapture readonly %pix2, i32 %i_pix2) #4 {
entry:
  %call = tail call fastcc i32 @sa8d_8x8(i8* %pix1, i32 %i_pix1, i8* %pix2, i32 %i_pix2)
  %add = add nsw i32 %call, 2
  %shr = ashr i32 %add, 2
  ret i32 %shr
}

; Function Attrs: norecurse nounwind readonly
define internal i64 @pixel_var_16x16(i8* nocapture readonly %pix, i32 %i_stride) #3 {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader, %entry
  %y.036 = phi i32 [ 0, %entry ], [ %inc11, %for.cond1.preheader ]
  %sqr.035 = phi i32 [ 0, %entry ], [ %add9.15, %for.cond1.preheader ]
  %sum.034 = phi i32 [ 0, %entry ], [ %add.15, %for.cond1.preheader ]
  %pix.addr.033 = phi i8* [ %pix, %entry ], [ %add.ptr, %for.cond1.preheader ]
  %0 = load i8, i8* %pix.addr.033, align 1, !tbaa !6
  %conv = zext i8 %0 to i32
  %add = add i32 %sum.034, %conv
  %mul = mul nuw nsw i32 %conv, %conv
  %add9 = add i32 %mul, %sqr.035
  %arrayidx.1 = getelementptr inbounds i8, i8* %pix.addr.033, i32 1
  %1 = load i8, i8* %arrayidx.1, align 1, !tbaa !6
  %conv.1 = zext i8 %1 to i32
  %add.1 = add i32 %add, %conv.1
  %mul.1 = mul nuw nsw i32 %conv.1, %conv.1
  %add9.1 = add i32 %mul.1, %add9
  %arrayidx.2 = getelementptr inbounds i8, i8* %pix.addr.033, i32 2
  %2 = load i8, i8* %arrayidx.2, align 1, !tbaa !6
  %conv.2 = zext i8 %2 to i32
  %add.2 = add i32 %add.1, %conv.2
  %mul.2 = mul nuw nsw i32 %conv.2, %conv.2
  %add9.2 = add i32 %mul.2, %add9.1
  %arrayidx.3 = getelementptr inbounds i8, i8* %pix.addr.033, i32 3
  %3 = load i8, i8* %arrayidx.3, align 1, !tbaa !6
  %conv.3 = zext i8 %3 to i32
  %add.3 = add i32 %add.2, %conv.3
  %mul.3 = mul nuw nsw i32 %conv.3, %conv.3
  %add9.3 = add i32 %mul.3, %add9.2
  %arrayidx.4 = getelementptr inbounds i8, i8* %pix.addr.033, i32 4
  %4 = load i8, i8* %arrayidx.4, align 1, !tbaa !6
  %conv.4 = zext i8 %4 to i32
  %add.4 = add i32 %add.3, %conv.4
  %mul.4 = mul nuw nsw i32 %conv.4, %conv.4
  %add9.4 = add i32 %mul.4, %add9.3
  %arrayidx.5 = getelementptr inbounds i8, i8* %pix.addr.033, i32 5
  %5 = load i8, i8* %arrayidx.5, align 1, !tbaa !6
  %conv.5 = zext i8 %5 to i32
  %add.5 = add i32 %add.4, %conv.5
  %mul.5 = mul nuw nsw i32 %conv.5, %conv.5
  %add9.5 = add i32 %mul.5, %add9.4
  %arrayidx.6 = getelementptr inbounds i8, i8* %pix.addr.033, i32 6
  %6 = load i8, i8* %arrayidx.6, align 1, !tbaa !6
  %conv.6 = zext i8 %6 to i32
  %add.6 = add i32 %add.5, %conv.6
  %mul.6 = mul nuw nsw i32 %conv.6, %conv.6
  %add9.6 = add i32 %mul.6, %add9.5
  %arrayidx.7 = getelementptr inbounds i8, i8* %pix.addr.033, i32 7
  %7 = load i8, i8* %arrayidx.7, align 1, !tbaa !6
  %conv.7 = zext i8 %7 to i32
  %add.7 = add i32 %add.6, %conv.7
  %mul.7 = mul nuw nsw i32 %conv.7, %conv.7
  %add9.7 = add i32 %mul.7, %add9.6
  %arrayidx.8 = getelementptr inbounds i8, i8* %pix.addr.033, i32 8
  %8 = load i8, i8* %arrayidx.8, align 1, !tbaa !6
  %conv.8 = zext i8 %8 to i32
  %add.8 = add i32 %add.7, %conv.8
  %mul.8 = mul nuw nsw i32 %conv.8, %conv.8
  %add9.8 = add i32 %mul.8, %add9.7
  %arrayidx.9 = getelementptr inbounds i8, i8* %pix.addr.033, i32 9
  %9 = load i8, i8* %arrayidx.9, align 1, !tbaa !6
  %conv.9 = zext i8 %9 to i32
  %add.9 = add i32 %add.8, %conv.9
  %mul.9 = mul nuw nsw i32 %conv.9, %conv.9
  %add9.9 = add i32 %mul.9, %add9.8
  %arrayidx.10 = getelementptr inbounds i8, i8* %pix.addr.033, i32 10
  %10 = load i8, i8* %arrayidx.10, align 1, !tbaa !6
  %conv.10 = zext i8 %10 to i32
  %add.10 = add i32 %add.9, %conv.10
  %mul.10 = mul nuw nsw i32 %conv.10, %conv.10
  %add9.10 = add i32 %mul.10, %add9.9
  %arrayidx.11 = getelementptr inbounds i8, i8* %pix.addr.033, i32 11
  %11 = load i8, i8* %arrayidx.11, align 1, !tbaa !6
  %conv.11 = zext i8 %11 to i32
  %add.11 = add i32 %add.10, %conv.11
  %mul.11 = mul nuw nsw i32 %conv.11, %conv.11
  %add9.11 = add i32 %mul.11, %add9.10
  %arrayidx.12 = getelementptr inbounds i8, i8* %pix.addr.033, i32 12
  %12 = load i8, i8* %arrayidx.12, align 1, !tbaa !6
  %conv.12 = zext i8 %12 to i32
  %add.12 = add i32 %add.11, %conv.12
  %mul.12 = mul nuw nsw i32 %conv.12, %conv.12
  %add9.12 = add i32 %mul.12, %add9.11
  %arrayidx.13 = getelementptr inbounds i8, i8* %pix.addr.033, i32 13
  %13 = load i8, i8* %arrayidx.13, align 1, !tbaa !6
  %conv.13 = zext i8 %13 to i32
  %add.13 = add i32 %add.12, %conv.13
  %mul.13 = mul nuw nsw i32 %conv.13, %conv.13
  %add9.13 = add i32 %mul.13, %add9.12
  %arrayidx.14 = getelementptr inbounds i8, i8* %pix.addr.033, i32 14
  %14 = load i8, i8* %arrayidx.14, align 1, !tbaa !6
  %conv.14 = zext i8 %14 to i32
  %add.14 = add i32 %add.13, %conv.14
  %mul.14 = mul nuw nsw i32 %conv.14, %conv.14
  %add9.14 = add i32 %mul.14, %add9.13
  %arrayidx.15 = getelementptr inbounds i8, i8* %pix.addr.033, i32 15
  %15 = load i8, i8* %arrayidx.15, align 1, !tbaa !6
  %conv.15 = zext i8 %15 to i32
  %add.15 = add i32 %add.14, %conv.15
  %mul.15 = mul nuw nsw i32 %conv.15, %conv.15
  %add9.15 = add i32 %mul.15, %add9.14
  %add.ptr = getelementptr inbounds i8, i8* %pix.addr.033, i32 %i_stride
  %inc11 = add nuw nsw i32 %y.036, 1
  %exitcond = icmp eq i32 %inc11, 16
  br i1 %exitcond, label %for.cond.cleanup, label %for.cond1.preheader

for.cond.cleanup:                                 ; preds = %for.cond1.preheader
  %conv13 = zext i32 %add.15 to i64
  %conv14 = zext i32 %add9.15 to i64
  %shl = shl nuw i64 %conv14, 32
  %add15 = or i64 %shl, %conv13
  ret i64 %add15
}

; Function Attrs: norecurse nounwind readonly
define internal i64 @pixel_var_8x16(i8* nocapture readonly %pix, i32 %i_stride) #3 {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader, %entry
  %y.036 = phi i32 [ 0, %entry ], [ %inc11, %for.cond1.preheader ]
  %sqr.035 = phi i32 [ 0, %entry ], [ %add9.7, %for.cond1.preheader ]
  %sum.034 = phi i32 [ 0, %entry ], [ %add.7, %for.cond1.preheader ]
  %pix.addr.033 = phi i8* [ %pix, %entry ], [ %add.ptr, %for.cond1.preheader ]
  %0 = load i8, i8* %pix.addr.033, align 1, !tbaa !6
  %conv = zext i8 %0 to i32
  %add = add i32 %sum.034, %conv
  %mul = mul nuw nsw i32 %conv, %conv
  %add9 = add i32 %mul, %sqr.035
  %arrayidx.1 = getelementptr inbounds i8, i8* %pix.addr.033, i32 1
  %1 = load i8, i8* %arrayidx.1, align 1, !tbaa !6
  %conv.1 = zext i8 %1 to i32
  %add.1 = add i32 %add, %conv.1
  %mul.1 = mul nuw nsw i32 %conv.1, %conv.1
  %add9.1 = add i32 %mul.1, %add9
  %arrayidx.2 = getelementptr inbounds i8, i8* %pix.addr.033, i32 2
  %2 = load i8, i8* %arrayidx.2, align 1, !tbaa !6
  %conv.2 = zext i8 %2 to i32
  %add.2 = add i32 %add.1, %conv.2
  %mul.2 = mul nuw nsw i32 %conv.2, %conv.2
  %add9.2 = add i32 %mul.2, %add9.1
  %arrayidx.3 = getelementptr inbounds i8, i8* %pix.addr.033, i32 3
  %3 = load i8, i8* %arrayidx.3, align 1, !tbaa !6
  %conv.3 = zext i8 %3 to i32
  %add.3 = add i32 %add.2, %conv.3
  %mul.3 = mul nuw nsw i32 %conv.3, %conv.3
  %add9.3 = add i32 %mul.3, %add9.2
  %arrayidx.4 = getelementptr inbounds i8, i8* %pix.addr.033, i32 4
  %4 = load i8, i8* %arrayidx.4, align 1, !tbaa !6
  %conv.4 = zext i8 %4 to i32
  %add.4 = add i32 %add.3, %conv.4
  %mul.4 = mul nuw nsw i32 %conv.4, %conv.4
  %add9.4 = add i32 %mul.4, %add9.3
  %arrayidx.5 = getelementptr inbounds i8, i8* %pix.addr.033, i32 5
  %5 = load i8, i8* %arrayidx.5, align 1, !tbaa !6
  %conv.5 = zext i8 %5 to i32
  %add.5 = add i32 %add.4, %conv.5
  %mul.5 = mul nuw nsw i32 %conv.5, %conv.5
  %add9.5 = add i32 %mul.5, %add9.4
  %arrayidx.6 = getelementptr inbounds i8, i8* %pix.addr.033, i32 6
  %6 = load i8, i8* %arrayidx.6, align 1, !tbaa !6
  %conv.6 = zext i8 %6 to i32
  %add.6 = add i32 %add.5, %conv.6
  %mul.6 = mul nuw nsw i32 %conv.6, %conv.6
  %add9.6 = add i32 %mul.6, %add9.5
  %arrayidx.7 = getelementptr inbounds i8, i8* %pix.addr.033, i32 7
  %7 = load i8, i8* %arrayidx.7, align 1, !tbaa !6
  %conv.7 = zext i8 %7 to i32
  %add.7 = add i32 %add.6, %conv.7
  %mul.7 = mul nuw nsw i32 %conv.7, %conv.7
  %add9.7 = add i32 %mul.7, %add9.6
  %add.ptr = getelementptr inbounds i8, i8* %pix.addr.033, i32 %i_stride
  %inc11 = add nuw nsw i32 %y.036, 1
  %exitcond = icmp eq i32 %inc11, 16
  br i1 %exitcond, label %for.cond.cleanup, label %for.cond1.preheader

for.cond.cleanup:                                 ; preds = %for.cond1.preheader
  %conv13 = zext i32 %add.7 to i64
  %conv14 = zext i32 %add9.7 to i64
  %shl = shl nuw i64 %conv14, 32
  %add15 = or i64 %shl, %conv13
  ret i64 %add15
}

; Function Attrs: norecurse nounwind readonly
define internal i64 @pixel_var_8x8(i8* nocapture readonly %pix, i32 %i_stride) #3 {
entry:
  %0 = load i8, i8* %pix, align 1, !tbaa !6
  %conv = zext i8 %0 to i32
  %mul = mul nuw nsw i32 %conv, %conv
  %arrayidx.1 = getelementptr inbounds i8, i8* %pix, i32 1
  %1 = load i8, i8* %arrayidx.1, align 1, !tbaa !6
  %conv.1 = zext i8 %1 to i32
  %add.1 = add nuw nsw i32 %conv, %conv.1
  %mul.1 = mul nuw nsw i32 %conv.1, %conv.1
  %add9.1 = add nuw nsw i32 %mul.1, %mul
  %arrayidx.2 = getelementptr inbounds i8, i8* %pix, i32 2
  %2 = load i8, i8* %arrayidx.2, align 1, !tbaa !6
  %conv.2 = zext i8 %2 to i32
  %add.2 = add nuw nsw i32 %add.1, %conv.2
  %mul.2 = mul nuw nsw i32 %conv.2, %conv.2
  %add9.2 = add nuw nsw i32 %mul.2, %add9.1
  %arrayidx.3 = getelementptr inbounds i8, i8* %pix, i32 3
  %3 = load i8, i8* %arrayidx.3, align 1, !tbaa !6
  %conv.3 = zext i8 %3 to i32
  %add.3 = add nuw nsw i32 %add.2, %conv.3
  %mul.3 = mul nuw nsw i32 %conv.3, %conv.3
  %add9.3 = add nuw nsw i32 %mul.3, %add9.2
  %arrayidx.4 = getelementptr inbounds i8, i8* %pix, i32 4
  %4 = load i8, i8* %arrayidx.4, align 1, !tbaa !6
  %conv.4 = zext i8 %4 to i32
  %add.4 = add nuw nsw i32 %add.3, %conv.4
  %mul.4 = mul nuw nsw i32 %conv.4, %conv.4
  %add9.4 = add nuw nsw i32 %mul.4, %add9.3
  %arrayidx.5 = getelementptr inbounds i8, i8* %pix, i32 5
  %5 = load i8, i8* %arrayidx.5, align 1, !tbaa !6
  %conv.5 = zext i8 %5 to i32
  %add.5 = add nuw nsw i32 %add.4, %conv.5
  %mul.5 = mul nuw nsw i32 %conv.5, %conv.5
  %add9.5 = add nuw nsw i32 %mul.5, %add9.4
  %arrayidx.6 = getelementptr inbounds i8, i8* %pix, i32 6
  %6 = load i8, i8* %arrayidx.6, align 1, !tbaa !6
  %conv.6 = zext i8 %6 to i32
  %add.6 = add nuw nsw i32 %add.5, %conv.6
  %mul.6 = mul nuw nsw i32 %conv.6, %conv.6
  %add9.6 = add nuw nsw i32 %mul.6, %add9.5
  %arrayidx.7 = getelementptr inbounds i8, i8* %pix, i32 7
  %7 = load i8, i8* %arrayidx.7, align 1, !tbaa !6
  %conv.7 = zext i8 %7 to i32
  %add.7 = add nuw nsw i32 %add.6, %conv.7
  %mul.7 = mul nuw nsw i32 %conv.7, %conv.7
  %add9.7 = add nuw nsw i32 %mul.7, %add9.6
  %add.ptr = getelementptr inbounds i8, i8* %pix, i32 %i_stride
  %8 = load i8, i8* %add.ptr, align 1, !tbaa !6
  %conv.137 = zext i8 %8 to i32
  %add.138 = add nuw nsw i32 %add.7, %conv.137
  %mul.139 = mul nuw nsw i32 %conv.137, %conv.137
  %add9.140 = add nuw nsw i32 %mul.139, %add9.7
  %arrayidx.1.1 = getelementptr inbounds i8, i8* %add.ptr, i32 1
  %9 = load i8, i8* %arrayidx.1.1, align 1, !tbaa !6
  %conv.1.1 = zext i8 %9 to i32
  %add.1.1 = add nuw nsw i32 %add.138, %conv.1.1
  %mul.1.1 = mul nuw nsw i32 %conv.1.1, %conv.1.1
  %add9.1.1 = add nuw nsw i32 %mul.1.1, %add9.140
  %arrayidx.2.1 = getelementptr inbounds i8, i8* %add.ptr, i32 2
  %10 = load i8, i8* %arrayidx.2.1, align 1, !tbaa !6
  %conv.2.1 = zext i8 %10 to i32
  %add.2.1 = add nuw nsw i32 %add.1.1, %conv.2.1
  %mul.2.1 = mul nuw nsw i32 %conv.2.1, %conv.2.1
  %add9.2.1 = add nuw nsw i32 %mul.2.1, %add9.1.1
  %arrayidx.3.1 = getelementptr inbounds i8, i8* %add.ptr, i32 3
  %11 = load i8, i8* %arrayidx.3.1, align 1, !tbaa !6
  %conv.3.1 = zext i8 %11 to i32
  %add.3.1 = add nuw nsw i32 %add.2.1, %conv.3.1
  %mul.3.1 = mul nuw nsw i32 %conv.3.1, %conv.3.1
  %add9.3.1 = add nuw nsw i32 %mul.3.1, %add9.2.1
  %arrayidx.4.1 = getelementptr inbounds i8, i8* %add.ptr, i32 4
  %12 = load i8, i8* %arrayidx.4.1, align 1, !tbaa !6
  %conv.4.1 = zext i8 %12 to i32
  %add.4.1 = add nuw nsw i32 %add.3.1, %conv.4.1
  %mul.4.1 = mul nuw nsw i32 %conv.4.1, %conv.4.1
  %add9.4.1 = add nuw nsw i32 %mul.4.1, %add9.3.1
  %arrayidx.5.1 = getelementptr inbounds i8, i8* %add.ptr, i32 5
  %13 = load i8, i8* %arrayidx.5.1, align 1, !tbaa !6
  %conv.5.1 = zext i8 %13 to i32
  %add.5.1 = add nuw nsw i32 %add.4.1, %conv.5.1
  %mul.5.1 = mul nuw nsw i32 %conv.5.1, %conv.5.1
  %add9.5.1 = add nuw nsw i32 %mul.5.1, %add9.4.1
  %arrayidx.6.1 = getelementptr inbounds i8, i8* %add.ptr, i32 6
  %14 = load i8, i8* %arrayidx.6.1, align 1, !tbaa !6
  %conv.6.1 = zext i8 %14 to i32
  %add.6.1 = add nuw nsw i32 %add.5.1, %conv.6.1
  %mul.6.1 = mul nuw nsw i32 %conv.6.1, %conv.6.1
  %add9.6.1 = add nuw nsw i32 %mul.6.1, %add9.5.1
  %arrayidx.7.1 = getelementptr inbounds i8, i8* %add.ptr, i32 7
  %15 = load i8, i8* %arrayidx.7.1, align 1, !tbaa !6
  %conv.7.1 = zext i8 %15 to i32
  %add.7.1 = add nuw nsw i32 %add.6.1, %conv.7.1
  %mul.7.1 = mul nuw nsw i32 %conv.7.1, %conv.7.1
  %add9.7.1 = add nuw nsw i32 %mul.7.1, %add9.6.1
  %add.ptr.1 = getelementptr inbounds i8, i8* %add.ptr, i32 %i_stride
  %16 = load i8, i8* %add.ptr.1, align 1, !tbaa !6
  %conv.241 = zext i8 %16 to i32
  %add.242 = add nuw nsw i32 %add.7.1, %conv.241
  %mul.243 = mul nuw nsw i32 %conv.241, %conv.241
  %add9.244 = add nuw nsw i32 %mul.243, %add9.7.1
  %arrayidx.1.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 1
  %17 = load i8, i8* %arrayidx.1.2, align 1, !tbaa !6
  %conv.1.2 = zext i8 %17 to i32
  %add.1.2 = add nuw nsw i32 %add.242, %conv.1.2
  %mul.1.2 = mul nuw nsw i32 %conv.1.2, %conv.1.2
  %add9.1.2 = add nuw nsw i32 %mul.1.2, %add9.244
  %arrayidx.2.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 2
  %18 = load i8, i8* %arrayidx.2.2, align 1, !tbaa !6
  %conv.2.2 = zext i8 %18 to i32
  %add.2.2 = add nuw nsw i32 %add.1.2, %conv.2.2
  %mul.2.2 = mul nuw nsw i32 %conv.2.2, %conv.2.2
  %add9.2.2 = add nuw nsw i32 %mul.2.2, %add9.1.2
  %arrayidx.3.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 3
  %19 = load i8, i8* %arrayidx.3.2, align 1, !tbaa !6
  %conv.3.2 = zext i8 %19 to i32
  %add.3.2 = add nuw nsw i32 %add.2.2, %conv.3.2
  %mul.3.2 = mul nuw nsw i32 %conv.3.2, %conv.3.2
  %add9.3.2 = add nuw nsw i32 %mul.3.2, %add9.2.2
  %arrayidx.4.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 4
  %20 = load i8, i8* %arrayidx.4.2, align 1, !tbaa !6
  %conv.4.2 = zext i8 %20 to i32
  %add.4.2 = add nuw nsw i32 %add.3.2, %conv.4.2
  %mul.4.2 = mul nuw nsw i32 %conv.4.2, %conv.4.2
  %add9.4.2 = add nuw nsw i32 %mul.4.2, %add9.3.2
  %arrayidx.5.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 5
  %21 = load i8, i8* %arrayidx.5.2, align 1, !tbaa !6
  %conv.5.2 = zext i8 %21 to i32
  %add.5.2 = add nuw nsw i32 %add.4.2, %conv.5.2
  %mul.5.2 = mul nuw nsw i32 %conv.5.2, %conv.5.2
  %add9.5.2 = add nuw nsw i32 %mul.5.2, %add9.4.2
  %arrayidx.6.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 6
  %22 = load i8, i8* %arrayidx.6.2, align 1, !tbaa !6
  %conv.6.2 = zext i8 %22 to i32
  %add.6.2 = add nuw nsw i32 %add.5.2, %conv.6.2
  %mul.6.2 = mul nuw nsw i32 %conv.6.2, %conv.6.2
  %add9.6.2 = add nuw nsw i32 %mul.6.2, %add9.5.2
  %arrayidx.7.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 7
  %23 = load i8, i8* %arrayidx.7.2, align 1, !tbaa !6
  %conv.7.2 = zext i8 %23 to i32
  %add.7.2 = add nuw nsw i32 %add.6.2, %conv.7.2
  %mul.7.2 = mul nuw nsw i32 %conv.7.2, %conv.7.2
  %add9.7.2 = add nuw nsw i32 %mul.7.2, %add9.6.2
  %add.ptr.2 = getelementptr inbounds i8, i8* %add.ptr.1, i32 %i_stride
  %24 = load i8, i8* %add.ptr.2, align 1, !tbaa !6
  %conv.345 = zext i8 %24 to i32
  %add.346 = add nuw nsw i32 %add.7.2, %conv.345
  %mul.347 = mul nuw nsw i32 %conv.345, %conv.345
  %add9.348 = add nuw nsw i32 %mul.347, %add9.7.2
  %arrayidx.1.3 = getelementptr inbounds i8, i8* %add.ptr.2, i32 1
  %25 = load i8, i8* %arrayidx.1.3, align 1, !tbaa !6
  %conv.1.3 = zext i8 %25 to i32
  %add.1.3 = add nuw nsw i32 %add.346, %conv.1.3
  %mul.1.3 = mul nuw nsw i32 %conv.1.3, %conv.1.3
  %add9.1.3 = add nuw nsw i32 %mul.1.3, %add9.348
  %arrayidx.2.3 = getelementptr inbounds i8, i8* %add.ptr.2, i32 2
  %26 = load i8, i8* %arrayidx.2.3, align 1, !tbaa !6
  %conv.2.3 = zext i8 %26 to i32
  %add.2.3 = add nuw nsw i32 %add.1.3, %conv.2.3
  %mul.2.3 = mul nuw nsw i32 %conv.2.3, %conv.2.3
  %add9.2.3 = add nuw nsw i32 %mul.2.3, %add9.1.3
  %arrayidx.3.3 = getelementptr inbounds i8, i8* %add.ptr.2, i32 3
  %27 = load i8, i8* %arrayidx.3.3, align 1, !tbaa !6
  %conv.3.3 = zext i8 %27 to i32
  %add.3.3 = add nuw nsw i32 %add.2.3, %conv.3.3
  %mul.3.3 = mul nuw nsw i32 %conv.3.3, %conv.3.3
  %add9.3.3 = add nuw nsw i32 %mul.3.3, %add9.2.3
  %arrayidx.4.3 = getelementptr inbounds i8, i8* %add.ptr.2, i32 4
  %28 = load i8, i8* %arrayidx.4.3, align 1, !tbaa !6
  %conv.4.3 = zext i8 %28 to i32
  %add.4.3 = add nuw nsw i32 %add.3.3, %conv.4.3
  %mul.4.3 = mul nuw nsw i32 %conv.4.3, %conv.4.3
  %add9.4.3 = add nuw nsw i32 %mul.4.3, %add9.3.3
  %arrayidx.5.3 = getelementptr inbounds i8, i8* %add.ptr.2, i32 5
  %29 = load i8, i8* %arrayidx.5.3, align 1, !tbaa !6
  %conv.5.3 = zext i8 %29 to i32
  %add.5.3 = add nuw nsw i32 %add.4.3, %conv.5.3
  %mul.5.3 = mul nuw nsw i32 %conv.5.3, %conv.5.3
  %add9.5.3 = add nuw nsw i32 %mul.5.3, %add9.4.3
  %arrayidx.6.3 = getelementptr inbounds i8, i8* %add.ptr.2, i32 6
  %30 = load i8, i8* %arrayidx.6.3, align 1, !tbaa !6
  %conv.6.3 = zext i8 %30 to i32
  %add.6.3 = add nuw nsw i32 %add.5.3, %conv.6.3
  %mul.6.3 = mul nuw nsw i32 %conv.6.3, %conv.6.3
  %add9.6.3 = add nuw nsw i32 %mul.6.3, %add9.5.3
  %arrayidx.7.3 = getelementptr inbounds i8, i8* %add.ptr.2, i32 7
  %31 = load i8, i8* %arrayidx.7.3, align 1, !tbaa !6
  %conv.7.3 = zext i8 %31 to i32
  %add.7.3 = add nuw nsw i32 %add.6.3, %conv.7.3
  %mul.7.3 = mul nuw nsw i32 %conv.7.3, %conv.7.3
  %add9.7.3 = add nuw nsw i32 %mul.7.3, %add9.6.3
  %add.ptr.3 = getelementptr inbounds i8, i8* %add.ptr.2, i32 %i_stride
  %32 = load i8, i8* %add.ptr.3, align 1, !tbaa !6
  %conv.449 = zext i8 %32 to i32
  %add.450 = add nuw nsw i32 %add.7.3, %conv.449
  %mul.451 = mul nuw nsw i32 %conv.449, %conv.449
  %add9.452 = add nuw nsw i32 %mul.451, %add9.7.3
  %arrayidx.1.4 = getelementptr inbounds i8, i8* %add.ptr.3, i32 1
  %33 = load i8, i8* %arrayidx.1.4, align 1, !tbaa !6
  %conv.1.4 = zext i8 %33 to i32
  %add.1.4 = add nuw nsw i32 %add.450, %conv.1.4
  %mul.1.4 = mul nuw nsw i32 %conv.1.4, %conv.1.4
  %add9.1.4 = add nuw nsw i32 %mul.1.4, %add9.452
  %arrayidx.2.4 = getelementptr inbounds i8, i8* %add.ptr.3, i32 2
  %34 = load i8, i8* %arrayidx.2.4, align 1, !tbaa !6
  %conv.2.4 = zext i8 %34 to i32
  %add.2.4 = add nuw nsw i32 %add.1.4, %conv.2.4
  %mul.2.4 = mul nuw nsw i32 %conv.2.4, %conv.2.4
  %add9.2.4 = add nuw nsw i32 %mul.2.4, %add9.1.4
  %arrayidx.3.4 = getelementptr inbounds i8, i8* %add.ptr.3, i32 3
  %35 = load i8, i8* %arrayidx.3.4, align 1, !tbaa !6
  %conv.3.4 = zext i8 %35 to i32
  %add.3.4 = add nuw nsw i32 %add.2.4, %conv.3.4
  %mul.3.4 = mul nuw nsw i32 %conv.3.4, %conv.3.4
  %add9.3.4 = add nuw nsw i32 %mul.3.4, %add9.2.4
  %arrayidx.4.4 = getelementptr inbounds i8, i8* %add.ptr.3, i32 4
  %36 = load i8, i8* %arrayidx.4.4, align 1, !tbaa !6
  %conv.4.4 = zext i8 %36 to i32
  %add.4.4 = add nuw nsw i32 %add.3.4, %conv.4.4
  %mul.4.4 = mul nuw nsw i32 %conv.4.4, %conv.4.4
  %add9.4.4 = add nuw nsw i32 %mul.4.4, %add9.3.4
  %arrayidx.5.4 = getelementptr inbounds i8, i8* %add.ptr.3, i32 5
  %37 = load i8, i8* %arrayidx.5.4, align 1, !tbaa !6
  %conv.5.4 = zext i8 %37 to i32
  %add.5.4 = add nuw nsw i32 %add.4.4, %conv.5.4
  %mul.5.4 = mul nuw nsw i32 %conv.5.4, %conv.5.4
  %add9.5.4 = add nuw nsw i32 %mul.5.4, %add9.4.4
  %arrayidx.6.4 = getelementptr inbounds i8, i8* %add.ptr.3, i32 6
  %38 = load i8, i8* %arrayidx.6.4, align 1, !tbaa !6
  %conv.6.4 = zext i8 %38 to i32
  %add.6.4 = add nuw nsw i32 %add.5.4, %conv.6.4
  %mul.6.4 = mul nuw nsw i32 %conv.6.4, %conv.6.4
  %add9.6.4 = add nuw nsw i32 %mul.6.4, %add9.5.4
  %arrayidx.7.4 = getelementptr inbounds i8, i8* %add.ptr.3, i32 7
  %39 = load i8, i8* %arrayidx.7.4, align 1, !tbaa !6
  %conv.7.4 = zext i8 %39 to i32
  %add.7.4 = add nuw nsw i32 %add.6.4, %conv.7.4
  %mul.7.4 = mul nuw nsw i32 %conv.7.4, %conv.7.4
  %add9.7.4 = add nuw nsw i32 %mul.7.4, %add9.6.4
  %add.ptr.4 = getelementptr inbounds i8, i8* %add.ptr.3, i32 %i_stride
  %40 = load i8, i8* %add.ptr.4, align 1, !tbaa !6
  %conv.553 = zext i8 %40 to i32
  %add.554 = add nuw nsw i32 %add.7.4, %conv.553
  %mul.555 = mul nuw nsw i32 %conv.553, %conv.553
  %add9.556 = add nuw nsw i32 %mul.555, %add9.7.4
  %arrayidx.1.5 = getelementptr inbounds i8, i8* %add.ptr.4, i32 1
  %41 = load i8, i8* %arrayidx.1.5, align 1, !tbaa !6
  %conv.1.5 = zext i8 %41 to i32
  %add.1.5 = add nuw nsw i32 %add.554, %conv.1.5
  %mul.1.5 = mul nuw nsw i32 %conv.1.5, %conv.1.5
  %add9.1.5 = add nuw nsw i32 %mul.1.5, %add9.556
  %arrayidx.2.5 = getelementptr inbounds i8, i8* %add.ptr.4, i32 2
  %42 = load i8, i8* %arrayidx.2.5, align 1, !tbaa !6
  %conv.2.5 = zext i8 %42 to i32
  %add.2.5 = add nuw nsw i32 %add.1.5, %conv.2.5
  %mul.2.5 = mul nuw nsw i32 %conv.2.5, %conv.2.5
  %add9.2.5 = add nuw nsw i32 %mul.2.5, %add9.1.5
  %arrayidx.3.5 = getelementptr inbounds i8, i8* %add.ptr.4, i32 3
  %43 = load i8, i8* %arrayidx.3.5, align 1, !tbaa !6
  %conv.3.5 = zext i8 %43 to i32
  %add.3.5 = add nuw nsw i32 %add.2.5, %conv.3.5
  %mul.3.5 = mul nuw nsw i32 %conv.3.5, %conv.3.5
  %add9.3.5 = add nuw nsw i32 %mul.3.5, %add9.2.5
  %arrayidx.4.5 = getelementptr inbounds i8, i8* %add.ptr.4, i32 4
  %44 = load i8, i8* %arrayidx.4.5, align 1, !tbaa !6
  %conv.4.5 = zext i8 %44 to i32
  %add.4.5 = add nuw nsw i32 %add.3.5, %conv.4.5
  %mul.4.5 = mul nuw nsw i32 %conv.4.5, %conv.4.5
  %add9.4.5 = add nuw nsw i32 %mul.4.5, %add9.3.5
  %arrayidx.5.5 = getelementptr inbounds i8, i8* %add.ptr.4, i32 5
  %45 = load i8, i8* %arrayidx.5.5, align 1, !tbaa !6
  %conv.5.5 = zext i8 %45 to i32
  %add.5.5 = add nuw nsw i32 %add.4.5, %conv.5.5
  %mul.5.5 = mul nuw nsw i32 %conv.5.5, %conv.5.5
  %add9.5.5 = add nuw nsw i32 %mul.5.5, %add9.4.5
  %arrayidx.6.5 = getelementptr inbounds i8, i8* %add.ptr.4, i32 6
  %46 = load i8, i8* %arrayidx.6.5, align 1, !tbaa !6
  %conv.6.5 = zext i8 %46 to i32
  %add.6.5 = add nuw nsw i32 %add.5.5, %conv.6.5
  %mul.6.5 = mul nuw nsw i32 %conv.6.5, %conv.6.5
  %add9.6.5 = add nuw nsw i32 %mul.6.5, %add9.5.5
  %arrayidx.7.5 = getelementptr inbounds i8, i8* %add.ptr.4, i32 7
  %47 = load i8, i8* %arrayidx.7.5, align 1, !tbaa !6
  %conv.7.5 = zext i8 %47 to i32
  %add.7.5 = add nuw nsw i32 %add.6.5, %conv.7.5
  %mul.7.5 = mul nuw nsw i32 %conv.7.5, %conv.7.5
  %add9.7.5 = add nuw nsw i32 %mul.7.5, %add9.6.5
  %add.ptr.5 = getelementptr inbounds i8, i8* %add.ptr.4, i32 %i_stride
  %48 = load i8, i8* %add.ptr.5, align 1, !tbaa !6
  %conv.657 = zext i8 %48 to i32
  %add.658 = add nuw nsw i32 %add.7.5, %conv.657
  %mul.659 = mul nuw nsw i32 %conv.657, %conv.657
  %add9.660 = add nuw nsw i32 %mul.659, %add9.7.5
  %arrayidx.1.6 = getelementptr inbounds i8, i8* %add.ptr.5, i32 1
  %49 = load i8, i8* %arrayidx.1.6, align 1, !tbaa !6
  %conv.1.6 = zext i8 %49 to i32
  %add.1.6 = add nuw nsw i32 %add.658, %conv.1.6
  %mul.1.6 = mul nuw nsw i32 %conv.1.6, %conv.1.6
  %add9.1.6 = add nuw nsw i32 %mul.1.6, %add9.660
  %arrayidx.2.6 = getelementptr inbounds i8, i8* %add.ptr.5, i32 2
  %50 = load i8, i8* %arrayidx.2.6, align 1, !tbaa !6
  %conv.2.6 = zext i8 %50 to i32
  %add.2.6 = add nuw nsw i32 %add.1.6, %conv.2.6
  %mul.2.6 = mul nuw nsw i32 %conv.2.6, %conv.2.6
  %add9.2.6 = add nuw nsw i32 %mul.2.6, %add9.1.6
  %arrayidx.3.6 = getelementptr inbounds i8, i8* %add.ptr.5, i32 3
  %51 = load i8, i8* %arrayidx.3.6, align 1, !tbaa !6
  %conv.3.6 = zext i8 %51 to i32
  %add.3.6 = add nuw nsw i32 %add.2.6, %conv.3.6
  %mul.3.6 = mul nuw nsw i32 %conv.3.6, %conv.3.6
  %add9.3.6 = add nuw nsw i32 %mul.3.6, %add9.2.6
  %arrayidx.4.6 = getelementptr inbounds i8, i8* %add.ptr.5, i32 4
  %52 = load i8, i8* %arrayidx.4.6, align 1, !tbaa !6
  %conv.4.6 = zext i8 %52 to i32
  %add.4.6 = add nuw nsw i32 %add.3.6, %conv.4.6
  %mul.4.6 = mul nuw nsw i32 %conv.4.6, %conv.4.6
  %add9.4.6 = add nuw nsw i32 %mul.4.6, %add9.3.6
  %arrayidx.5.6 = getelementptr inbounds i8, i8* %add.ptr.5, i32 5
  %53 = load i8, i8* %arrayidx.5.6, align 1, !tbaa !6
  %conv.5.6 = zext i8 %53 to i32
  %add.5.6 = add nuw nsw i32 %add.4.6, %conv.5.6
  %mul.5.6 = mul nuw nsw i32 %conv.5.6, %conv.5.6
  %add9.5.6 = add nuw nsw i32 %mul.5.6, %add9.4.6
  %arrayidx.6.6 = getelementptr inbounds i8, i8* %add.ptr.5, i32 6
  %54 = load i8, i8* %arrayidx.6.6, align 1, !tbaa !6
  %conv.6.6 = zext i8 %54 to i32
  %add.6.6 = add nuw nsw i32 %add.5.6, %conv.6.6
  %mul.6.6 = mul nuw nsw i32 %conv.6.6, %conv.6.6
  %add9.6.6 = add nuw nsw i32 %mul.6.6, %add9.5.6
  %arrayidx.7.6 = getelementptr inbounds i8, i8* %add.ptr.5, i32 7
  %55 = load i8, i8* %arrayidx.7.6, align 1, !tbaa !6
  %conv.7.6 = zext i8 %55 to i32
  %add.7.6 = add nuw nsw i32 %add.6.6, %conv.7.6
  %mul.7.6 = mul nuw nsw i32 %conv.7.6, %conv.7.6
  %add9.7.6 = add nuw nsw i32 %mul.7.6, %add9.6.6
  %add.ptr.6 = getelementptr inbounds i8, i8* %add.ptr.5, i32 %i_stride
  %56 = load i8, i8* %add.ptr.6, align 1, !tbaa !6
  %conv.761 = zext i8 %56 to i32
  %add.762 = add nuw nsw i32 %add.7.6, %conv.761
  %mul.763 = mul nuw nsw i32 %conv.761, %conv.761
  %add9.764 = add nuw nsw i32 %mul.763, %add9.7.6
  %arrayidx.1.7 = getelementptr inbounds i8, i8* %add.ptr.6, i32 1
  %57 = load i8, i8* %arrayidx.1.7, align 1, !tbaa !6
  %conv.1.7 = zext i8 %57 to i32
  %add.1.7 = add nuw nsw i32 %add.762, %conv.1.7
  %mul.1.7 = mul nuw nsw i32 %conv.1.7, %conv.1.7
  %add9.1.7 = add nuw nsw i32 %mul.1.7, %add9.764
  %arrayidx.2.7 = getelementptr inbounds i8, i8* %add.ptr.6, i32 2
  %58 = load i8, i8* %arrayidx.2.7, align 1, !tbaa !6
  %conv.2.7 = zext i8 %58 to i32
  %add.2.7 = add nuw nsw i32 %add.1.7, %conv.2.7
  %mul.2.7 = mul nuw nsw i32 %conv.2.7, %conv.2.7
  %add9.2.7 = add nuw nsw i32 %mul.2.7, %add9.1.7
  %arrayidx.3.7 = getelementptr inbounds i8, i8* %add.ptr.6, i32 3
  %59 = load i8, i8* %arrayidx.3.7, align 1, !tbaa !6
  %conv.3.7 = zext i8 %59 to i32
  %add.3.7 = add nuw nsw i32 %add.2.7, %conv.3.7
  %mul.3.7 = mul nuw nsw i32 %conv.3.7, %conv.3.7
  %add9.3.7 = add nuw nsw i32 %mul.3.7, %add9.2.7
  %arrayidx.4.7 = getelementptr inbounds i8, i8* %add.ptr.6, i32 4
  %60 = load i8, i8* %arrayidx.4.7, align 1, !tbaa !6
  %conv.4.7 = zext i8 %60 to i32
  %add.4.7 = add nuw nsw i32 %add.3.7, %conv.4.7
  %mul.4.7 = mul nuw nsw i32 %conv.4.7, %conv.4.7
  %add9.4.7 = add nuw nsw i32 %mul.4.7, %add9.3.7
  %arrayidx.5.7 = getelementptr inbounds i8, i8* %add.ptr.6, i32 5
  %61 = load i8, i8* %arrayidx.5.7, align 1, !tbaa !6
  %conv.5.7 = zext i8 %61 to i32
  %add.5.7 = add nuw nsw i32 %add.4.7, %conv.5.7
  %mul.5.7 = mul nuw nsw i32 %conv.5.7, %conv.5.7
  %add9.5.7 = add nuw nsw i32 %mul.5.7, %add9.4.7
  %arrayidx.6.7 = getelementptr inbounds i8, i8* %add.ptr.6, i32 6
  %62 = load i8, i8* %arrayidx.6.7, align 1, !tbaa !6
  %conv.6.7 = zext i8 %62 to i32
  %add.6.7 = add nuw nsw i32 %add.5.7, %conv.6.7
  %mul.6.7 = mul nuw nsw i32 %conv.6.7, %conv.6.7
  %add9.6.7 = add nuw nsw i32 %mul.6.7, %add9.5.7
  %arrayidx.7.7 = getelementptr inbounds i8, i8* %add.ptr.6, i32 7
  %63 = load i8, i8* %arrayidx.7.7, align 1, !tbaa !6
  %conv.7.7 = zext i8 %63 to i32
  %add.7.7 = add nuw nsw i32 %add.6.7, %conv.7.7
  %mul.7.7 = mul nuw nsw i32 %conv.7.7, %conv.7.7
  %add9.7.7 = add nuw nsw i32 %mul.7.7, %add9.6.7
  %conv13 = zext i32 %add.7.7 to i64
  %conv14 = zext i32 %add9.7.7 to i64
  %shl = shl nuw nsw i64 %conv14, 32
  %add15 = or i64 %shl, %conv13
  ret i64 %add15
}

; Function Attrs: nofree norecurse nounwind
define internal i32 @pixel_var2_8x16(i8* nocapture readonly %fenc, i8* nocapture readonly %fdec, i32* nocapture %ssd) #2 {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader, %entry
  %fenc.addr.082 = phi i8* [ %fenc, %entry ], [ %add.ptr, %for.cond1.preheader ]
  %fdec.addr.081 = phi i8* [ %fdec, %entry ], [ %add.ptr18, %for.cond1.preheader ]
  %y.080 = phi i32 [ 0, %entry ], [ %inc20, %for.cond1.preheader ]
  %sqr_v.079 = phi i32 [ 0, %entry ], [ %add17.7, %for.cond1.preheader ]
  %sqr_u.078 = phi i32 [ 0, %entry ], [ %add15.7, %for.cond1.preheader ]
  %sum_v.077 = phi i32 [ 0, %entry ], [ %add14.7, %for.cond1.preheader ]
  %sum_u.076 = phi i32 [ 0, %entry ], [ %add13.7, %for.cond1.preheader ]
  %0 = load i8, i8* %fenc.addr.082, align 1, !tbaa !6
  %conv = zext i8 %0 to i32
  %1 = load i8, i8* %fdec.addr.081, align 1, !tbaa !6
  %conv6 = zext i8 %1 to i32
  %sub = sub nsw i32 %conv, %conv6
  %arrayidx7 = getelementptr inbounds i8, i8* %fenc.addr.082, i32 8
  %2 = load i8, i8* %arrayidx7, align 1, !tbaa !6
  %conv8 = zext i8 %2 to i32
  %arrayidx10 = getelementptr inbounds i8, i8* %fdec.addr.081, i32 16
  %3 = load i8, i8* %arrayidx10, align 1, !tbaa !6
  %conv11 = zext i8 %3 to i32
  %sub12 = sub nsw i32 %conv8, %conv11
  %add13 = add nsw i32 %sub, %sum_u.076
  %add14 = add nsw i32 %sub12, %sum_v.077
  %mul = mul nsw i32 %sub, %sub
  %add15 = add nsw i32 %mul, %sqr_u.078
  %mul16 = mul nsw i32 %sub12, %sub12
  %add17 = add nsw i32 %mul16, %sqr_v.079
  %arrayidx.1 = getelementptr inbounds i8, i8* %fenc.addr.082, i32 1
  %4 = load i8, i8* %arrayidx.1, align 1, !tbaa !6
  %conv.1 = zext i8 %4 to i32
  %arrayidx5.1 = getelementptr inbounds i8, i8* %fdec.addr.081, i32 1
  %5 = load i8, i8* %arrayidx5.1, align 1, !tbaa !6
  %conv6.1 = zext i8 %5 to i32
  %sub.1 = sub nsw i32 %conv.1, %conv6.1
  %arrayidx7.1 = getelementptr inbounds i8, i8* %fenc.addr.082, i32 9
  %6 = load i8, i8* %arrayidx7.1, align 1, !tbaa !6
  %conv8.1 = zext i8 %6 to i32
  %arrayidx10.1 = getelementptr inbounds i8, i8* %fdec.addr.081, i32 17
  %7 = load i8, i8* %arrayidx10.1, align 1, !tbaa !6
  %conv11.1 = zext i8 %7 to i32
  %sub12.1 = sub nsw i32 %conv8.1, %conv11.1
  %add13.1 = add nsw i32 %sub.1, %add13
  %add14.1 = add nsw i32 %sub12.1, %add14
  %mul.1 = mul nsw i32 %sub.1, %sub.1
  %add15.1 = add nsw i32 %mul.1, %add15
  %mul16.1 = mul nsw i32 %sub12.1, %sub12.1
  %add17.1 = add nsw i32 %mul16.1, %add17
  %arrayidx.2 = getelementptr inbounds i8, i8* %fenc.addr.082, i32 2
  %8 = load i8, i8* %arrayidx.2, align 1, !tbaa !6
  %conv.2 = zext i8 %8 to i32
  %arrayidx5.2 = getelementptr inbounds i8, i8* %fdec.addr.081, i32 2
  %9 = load i8, i8* %arrayidx5.2, align 1, !tbaa !6
  %conv6.2 = zext i8 %9 to i32
  %sub.2 = sub nsw i32 %conv.2, %conv6.2
  %arrayidx7.2 = getelementptr inbounds i8, i8* %fenc.addr.082, i32 10
  %10 = load i8, i8* %arrayidx7.2, align 1, !tbaa !6
  %conv8.2 = zext i8 %10 to i32
  %arrayidx10.2 = getelementptr inbounds i8, i8* %fdec.addr.081, i32 18
  %11 = load i8, i8* %arrayidx10.2, align 1, !tbaa !6
  %conv11.2 = zext i8 %11 to i32
  %sub12.2 = sub nsw i32 %conv8.2, %conv11.2
  %add13.2 = add nsw i32 %sub.2, %add13.1
  %add14.2 = add nsw i32 %sub12.2, %add14.1
  %mul.2 = mul nsw i32 %sub.2, %sub.2
  %add15.2 = add nsw i32 %mul.2, %add15.1
  %mul16.2 = mul nsw i32 %sub12.2, %sub12.2
  %add17.2 = add nsw i32 %mul16.2, %add17.1
  %arrayidx.3 = getelementptr inbounds i8, i8* %fenc.addr.082, i32 3
  %12 = load i8, i8* %arrayidx.3, align 1, !tbaa !6
  %conv.3 = zext i8 %12 to i32
  %arrayidx5.3 = getelementptr inbounds i8, i8* %fdec.addr.081, i32 3
  %13 = load i8, i8* %arrayidx5.3, align 1, !tbaa !6
  %conv6.3 = zext i8 %13 to i32
  %sub.3 = sub nsw i32 %conv.3, %conv6.3
  %arrayidx7.3 = getelementptr inbounds i8, i8* %fenc.addr.082, i32 11
  %14 = load i8, i8* %arrayidx7.3, align 1, !tbaa !6
  %conv8.3 = zext i8 %14 to i32
  %arrayidx10.3 = getelementptr inbounds i8, i8* %fdec.addr.081, i32 19
  %15 = load i8, i8* %arrayidx10.3, align 1, !tbaa !6
  %conv11.3 = zext i8 %15 to i32
  %sub12.3 = sub nsw i32 %conv8.3, %conv11.3
  %add13.3 = add nsw i32 %sub.3, %add13.2
  %add14.3 = add nsw i32 %sub12.3, %add14.2
  %mul.3 = mul nsw i32 %sub.3, %sub.3
  %add15.3 = add nsw i32 %mul.3, %add15.2
  %mul16.3 = mul nsw i32 %sub12.3, %sub12.3
  %add17.3 = add nsw i32 %mul16.3, %add17.2
  %arrayidx.4 = getelementptr inbounds i8, i8* %fenc.addr.082, i32 4
  %16 = load i8, i8* %arrayidx.4, align 1, !tbaa !6
  %conv.4 = zext i8 %16 to i32
  %arrayidx5.4 = getelementptr inbounds i8, i8* %fdec.addr.081, i32 4
  %17 = load i8, i8* %arrayidx5.4, align 1, !tbaa !6
  %conv6.4 = zext i8 %17 to i32
  %sub.4 = sub nsw i32 %conv.4, %conv6.4
  %arrayidx7.4 = getelementptr inbounds i8, i8* %fenc.addr.082, i32 12
  %18 = load i8, i8* %arrayidx7.4, align 1, !tbaa !6
  %conv8.4 = zext i8 %18 to i32
  %arrayidx10.4 = getelementptr inbounds i8, i8* %fdec.addr.081, i32 20
  %19 = load i8, i8* %arrayidx10.4, align 1, !tbaa !6
  %conv11.4 = zext i8 %19 to i32
  %sub12.4 = sub nsw i32 %conv8.4, %conv11.4
  %add13.4 = add nsw i32 %sub.4, %add13.3
  %add14.4 = add nsw i32 %sub12.4, %add14.3
  %mul.4 = mul nsw i32 %sub.4, %sub.4
  %add15.4 = add nsw i32 %mul.4, %add15.3
  %mul16.4 = mul nsw i32 %sub12.4, %sub12.4
  %add17.4 = add nsw i32 %mul16.4, %add17.3
  %arrayidx.5 = getelementptr inbounds i8, i8* %fenc.addr.082, i32 5
  %20 = load i8, i8* %arrayidx.5, align 1, !tbaa !6
  %conv.5 = zext i8 %20 to i32
  %arrayidx5.5 = getelementptr inbounds i8, i8* %fdec.addr.081, i32 5
  %21 = load i8, i8* %arrayidx5.5, align 1, !tbaa !6
  %conv6.5 = zext i8 %21 to i32
  %sub.5 = sub nsw i32 %conv.5, %conv6.5
  %arrayidx7.5 = getelementptr inbounds i8, i8* %fenc.addr.082, i32 13
  %22 = load i8, i8* %arrayidx7.5, align 1, !tbaa !6
  %conv8.5 = zext i8 %22 to i32
  %arrayidx10.5 = getelementptr inbounds i8, i8* %fdec.addr.081, i32 21
  %23 = load i8, i8* %arrayidx10.5, align 1, !tbaa !6
  %conv11.5 = zext i8 %23 to i32
  %sub12.5 = sub nsw i32 %conv8.5, %conv11.5
  %add13.5 = add nsw i32 %sub.5, %add13.4
  %add14.5 = add nsw i32 %sub12.5, %add14.4
  %mul.5 = mul nsw i32 %sub.5, %sub.5
  %add15.5 = add nsw i32 %mul.5, %add15.4
  %mul16.5 = mul nsw i32 %sub12.5, %sub12.5
  %add17.5 = add nsw i32 %mul16.5, %add17.4
  %arrayidx.6 = getelementptr inbounds i8, i8* %fenc.addr.082, i32 6
  %24 = load i8, i8* %arrayidx.6, align 1, !tbaa !6
  %conv.6 = zext i8 %24 to i32
  %arrayidx5.6 = getelementptr inbounds i8, i8* %fdec.addr.081, i32 6
  %25 = load i8, i8* %arrayidx5.6, align 1, !tbaa !6
  %conv6.6 = zext i8 %25 to i32
  %sub.6 = sub nsw i32 %conv.6, %conv6.6
  %arrayidx7.6 = getelementptr inbounds i8, i8* %fenc.addr.082, i32 14
  %26 = load i8, i8* %arrayidx7.6, align 1, !tbaa !6
  %conv8.6 = zext i8 %26 to i32
  %arrayidx10.6 = getelementptr inbounds i8, i8* %fdec.addr.081, i32 22
  %27 = load i8, i8* %arrayidx10.6, align 1, !tbaa !6
  %conv11.6 = zext i8 %27 to i32
  %sub12.6 = sub nsw i32 %conv8.6, %conv11.6
  %add13.6 = add nsw i32 %sub.6, %add13.5
  %add14.6 = add nsw i32 %sub12.6, %add14.5
  %mul.6 = mul nsw i32 %sub.6, %sub.6
  %add15.6 = add nsw i32 %mul.6, %add15.5
  %mul16.6 = mul nsw i32 %sub12.6, %sub12.6
  %add17.6 = add nsw i32 %mul16.6, %add17.5
  %arrayidx.7 = getelementptr inbounds i8, i8* %fenc.addr.082, i32 7
  %28 = load i8, i8* %arrayidx.7, align 1, !tbaa !6
  %conv.7 = zext i8 %28 to i32
  %arrayidx5.7 = getelementptr inbounds i8, i8* %fdec.addr.081, i32 7
  %29 = load i8, i8* %arrayidx5.7, align 1, !tbaa !6
  %conv6.7 = zext i8 %29 to i32
  %sub.7 = sub nsw i32 %conv.7, %conv6.7
  %arrayidx7.7 = getelementptr inbounds i8, i8* %fenc.addr.082, i32 15
  %30 = load i8, i8* %arrayidx7.7, align 1, !tbaa !6
  %conv8.7 = zext i8 %30 to i32
  %arrayidx10.7 = getelementptr inbounds i8, i8* %fdec.addr.081, i32 23
  %31 = load i8, i8* %arrayidx10.7, align 1, !tbaa !6
  %conv11.7 = zext i8 %31 to i32
  %sub12.7 = sub nsw i32 %conv8.7, %conv11.7
  %add13.7 = add nsw i32 %sub.7, %add13.6
  %add14.7 = add nsw i32 %sub12.7, %add14.6
  %mul.7 = mul nsw i32 %sub.7, %sub.7
  %add15.7 = add nsw i32 %mul.7, %add15.6
  %mul16.7 = mul nsw i32 %sub12.7, %sub12.7
  %add17.7 = add nsw i32 %mul16.7, %add17.6
  %add.ptr = getelementptr inbounds i8, i8* %fenc.addr.082, i32 16
  %add.ptr18 = getelementptr inbounds i8, i8* %fdec.addr.081, i32 32
  %inc20 = add nuw nsw i32 %y.080, 1
  %exitcond = icmp eq i32 %inc20, 16
  br i1 %exitcond, label %for.cond.cleanup, label %for.cond1.preheader

for.cond.cleanup:                                 ; preds = %for.cond1.preheader
  store i32 %add15.7, i32* %ssd, align 4, !tbaa !13
  %arrayidx23 = getelementptr inbounds i32, i32* %ssd, i32 1
  store i32 %add17.7, i32* %arrayidx23, align 4, !tbaa !13
  %conv2468 = zext i32 %add15.7 to i64
  %conv25 = sext i32 %add13.7 to i64
  %mul27 = mul nsw i64 %conv25, %conv25
  %32 = lshr i64 %mul27, 7
  %sub28 = sub nsw i64 %conv2468, %32
  %conv2969 = zext i32 %add17.7 to i64
  %add30 = add nsw i64 %sub28, %conv2969
  %conv31 = sext i32 %add14.7 to i64
  %mul33 = mul nsw i64 %conv31, %conv31
  %33 = lshr i64 %mul33, 7
  %sub35 = sub nsw i64 %add30, %33
  %conv36 = trunc i64 %sub35 to i32
  ret i32 %conv36
}

; Function Attrs: nofree norecurse nounwind
define internal i32 @pixel_var2_8x8(i8* nocapture readonly %fenc, i8* nocapture readonly %fdec, i32* nocapture %ssd) #2 {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader, %entry
  %fenc.addr.082 = phi i8* [ %fenc, %entry ], [ %add.ptr, %for.cond1.preheader ]
  %fdec.addr.081 = phi i8* [ %fdec, %entry ], [ %add.ptr18, %for.cond1.preheader ]
  %y.080 = phi i32 [ 0, %entry ], [ %inc20, %for.cond1.preheader ]
  %sqr_v.079 = phi i32 [ 0, %entry ], [ %add17.7, %for.cond1.preheader ]
  %sqr_u.078 = phi i32 [ 0, %entry ], [ %add15.7, %for.cond1.preheader ]
  %sum_v.077 = phi i32 [ 0, %entry ], [ %add14.7, %for.cond1.preheader ]
  %sum_u.076 = phi i32 [ 0, %entry ], [ %add13.7, %for.cond1.preheader ]
  %0 = load i8, i8* %fenc.addr.082, align 1, !tbaa !6
  %conv = zext i8 %0 to i32
  %1 = load i8, i8* %fdec.addr.081, align 1, !tbaa !6
  %conv6 = zext i8 %1 to i32
  %sub = sub nsw i32 %conv, %conv6
  %arrayidx7 = getelementptr inbounds i8, i8* %fenc.addr.082, i32 8
  %2 = load i8, i8* %arrayidx7, align 1, !tbaa !6
  %conv8 = zext i8 %2 to i32
  %arrayidx10 = getelementptr inbounds i8, i8* %fdec.addr.081, i32 16
  %3 = load i8, i8* %arrayidx10, align 1, !tbaa !6
  %conv11 = zext i8 %3 to i32
  %sub12 = sub nsw i32 %conv8, %conv11
  %add13 = add nsw i32 %sub, %sum_u.076
  %add14 = add nsw i32 %sub12, %sum_v.077
  %mul = mul nsw i32 %sub, %sub
  %add15 = add nsw i32 %mul, %sqr_u.078
  %mul16 = mul nsw i32 %sub12, %sub12
  %add17 = add nsw i32 %mul16, %sqr_v.079
  %arrayidx.1 = getelementptr inbounds i8, i8* %fenc.addr.082, i32 1
  %4 = load i8, i8* %arrayidx.1, align 1, !tbaa !6
  %conv.1 = zext i8 %4 to i32
  %arrayidx5.1 = getelementptr inbounds i8, i8* %fdec.addr.081, i32 1
  %5 = load i8, i8* %arrayidx5.1, align 1, !tbaa !6
  %conv6.1 = zext i8 %5 to i32
  %sub.1 = sub nsw i32 %conv.1, %conv6.1
  %arrayidx7.1 = getelementptr inbounds i8, i8* %fenc.addr.082, i32 9
  %6 = load i8, i8* %arrayidx7.1, align 1, !tbaa !6
  %conv8.1 = zext i8 %6 to i32
  %arrayidx10.1 = getelementptr inbounds i8, i8* %fdec.addr.081, i32 17
  %7 = load i8, i8* %arrayidx10.1, align 1, !tbaa !6
  %conv11.1 = zext i8 %7 to i32
  %sub12.1 = sub nsw i32 %conv8.1, %conv11.1
  %add13.1 = add nsw i32 %sub.1, %add13
  %add14.1 = add nsw i32 %sub12.1, %add14
  %mul.1 = mul nsw i32 %sub.1, %sub.1
  %add15.1 = add nsw i32 %mul.1, %add15
  %mul16.1 = mul nsw i32 %sub12.1, %sub12.1
  %add17.1 = add nsw i32 %mul16.1, %add17
  %arrayidx.2 = getelementptr inbounds i8, i8* %fenc.addr.082, i32 2
  %8 = load i8, i8* %arrayidx.2, align 1, !tbaa !6
  %conv.2 = zext i8 %8 to i32
  %arrayidx5.2 = getelementptr inbounds i8, i8* %fdec.addr.081, i32 2
  %9 = load i8, i8* %arrayidx5.2, align 1, !tbaa !6
  %conv6.2 = zext i8 %9 to i32
  %sub.2 = sub nsw i32 %conv.2, %conv6.2
  %arrayidx7.2 = getelementptr inbounds i8, i8* %fenc.addr.082, i32 10
  %10 = load i8, i8* %arrayidx7.2, align 1, !tbaa !6
  %conv8.2 = zext i8 %10 to i32
  %arrayidx10.2 = getelementptr inbounds i8, i8* %fdec.addr.081, i32 18
  %11 = load i8, i8* %arrayidx10.2, align 1, !tbaa !6
  %conv11.2 = zext i8 %11 to i32
  %sub12.2 = sub nsw i32 %conv8.2, %conv11.2
  %add13.2 = add nsw i32 %sub.2, %add13.1
  %add14.2 = add nsw i32 %sub12.2, %add14.1
  %mul.2 = mul nsw i32 %sub.2, %sub.2
  %add15.2 = add nsw i32 %mul.2, %add15.1
  %mul16.2 = mul nsw i32 %sub12.2, %sub12.2
  %add17.2 = add nsw i32 %mul16.2, %add17.1
  %arrayidx.3 = getelementptr inbounds i8, i8* %fenc.addr.082, i32 3
  %12 = load i8, i8* %arrayidx.3, align 1, !tbaa !6
  %conv.3 = zext i8 %12 to i32
  %arrayidx5.3 = getelementptr inbounds i8, i8* %fdec.addr.081, i32 3
  %13 = load i8, i8* %arrayidx5.3, align 1, !tbaa !6
  %conv6.3 = zext i8 %13 to i32
  %sub.3 = sub nsw i32 %conv.3, %conv6.3
  %arrayidx7.3 = getelementptr inbounds i8, i8* %fenc.addr.082, i32 11
  %14 = load i8, i8* %arrayidx7.3, align 1, !tbaa !6
  %conv8.3 = zext i8 %14 to i32
  %arrayidx10.3 = getelementptr inbounds i8, i8* %fdec.addr.081, i32 19
  %15 = load i8, i8* %arrayidx10.3, align 1, !tbaa !6
  %conv11.3 = zext i8 %15 to i32
  %sub12.3 = sub nsw i32 %conv8.3, %conv11.3
  %add13.3 = add nsw i32 %sub.3, %add13.2
  %add14.3 = add nsw i32 %sub12.3, %add14.2
  %mul.3 = mul nsw i32 %sub.3, %sub.3
  %add15.3 = add nsw i32 %mul.3, %add15.2
  %mul16.3 = mul nsw i32 %sub12.3, %sub12.3
  %add17.3 = add nsw i32 %mul16.3, %add17.2
  %arrayidx.4 = getelementptr inbounds i8, i8* %fenc.addr.082, i32 4
  %16 = load i8, i8* %arrayidx.4, align 1, !tbaa !6
  %conv.4 = zext i8 %16 to i32
  %arrayidx5.4 = getelementptr inbounds i8, i8* %fdec.addr.081, i32 4
  %17 = load i8, i8* %arrayidx5.4, align 1, !tbaa !6
  %conv6.4 = zext i8 %17 to i32
  %sub.4 = sub nsw i32 %conv.4, %conv6.4
  %arrayidx7.4 = getelementptr inbounds i8, i8* %fenc.addr.082, i32 12
  %18 = load i8, i8* %arrayidx7.4, align 1, !tbaa !6
  %conv8.4 = zext i8 %18 to i32
  %arrayidx10.4 = getelementptr inbounds i8, i8* %fdec.addr.081, i32 20
  %19 = load i8, i8* %arrayidx10.4, align 1, !tbaa !6
  %conv11.4 = zext i8 %19 to i32
  %sub12.4 = sub nsw i32 %conv8.4, %conv11.4
  %add13.4 = add nsw i32 %sub.4, %add13.3
  %add14.4 = add nsw i32 %sub12.4, %add14.3
  %mul.4 = mul nsw i32 %sub.4, %sub.4
  %add15.4 = add nsw i32 %mul.4, %add15.3
  %mul16.4 = mul nsw i32 %sub12.4, %sub12.4
  %add17.4 = add nsw i32 %mul16.4, %add17.3
  %arrayidx.5 = getelementptr inbounds i8, i8* %fenc.addr.082, i32 5
  %20 = load i8, i8* %arrayidx.5, align 1, !tbaa !6
  %conv.5 = zext i8 %20 to i32
  %arrayidx5.5 = getelementptr inbounds i8, i8* %fdec.addr.081, i32 5
  %21 = load i8, i8* %arrayidx5.5, align 1, !tbaa !6
  %conv6.5 = zext i8 %21 to i32
  %sub.5 = sub nsw i32 %conv.5, %conv6.5
  %arrayidx7.5 = getelementptr inbounds i8, i8* %fenc.addr.082, i32 13
  %22 = load i8, i8* %arrayidx7.5, align 1, !tbaa !6
  %conv8.5 = zext i8 %22 to i32
  %arrayidx10.5 = getelementptr inbounds i8, i8* %fdec.addr.081, i32 21
  %23 = load i8, i8* %arrayidx10.5, align 1, !tbaa !6
  %conv11.5 = zext i8 %23 to i32
  %sub12.5 = sub nsw i32 %conv8.5, %conv11.5
  %add13.5 = add nsw i32 %sub.5, %add13.4
  %add14.5 = add nsw i32 %sub12.5, %add14.4
  %mul.5 = mul nsw i32 %sub.5, %sub.5
  %add15.5 = add nsw i32 %mul.5, %add15.4
  %mul16.5 = mul nsw i32 %sub12.5, %sub12.5
  %add17.5 = add nsw i32 %mul16.5, %add17.4
  %arrayidx.6 = getelementptr inbounds i8, i8* %fenc.addr.082, i32 6
  %24 = load i8, i8* %arrayidx.6, align 1, !tbaa !6
  %conv.6 = zext i8 %24 to i32
  %arrayidx5.6 = getelementptr inbounds i8, i8* %fdec.addr.081, i32 6
  %25 = load i8, i8* %arrayidx5.6, align 1, !tbaa !6
  %conv6.6 = zext i8 %25 to i32
  %sub.6 = sub nsw i32 %conv.6, %conv6.6
  %arrayidx7.6 = getelementptr inbounds i8, i8* %fenc.addr.082, i32 14
  %26 = load i8, i8* %arrayidx7.6, align 1, !tbaa !6
  %conv8.6 = zext i8 %26 to i32
  %arrayidx10.6 = getelementptr inbounds i8, i8* %fdec.addr.081, i32 22
  %27 = load i8, i8* %arrayidx10.6, align 1, !tbaa !6
  %conv11.6 = zext i8 %27 to i32
  %sub12.6 = sub nsw i32 %conv8.6, %conv11.6
  %add13.6 = add nsw i32 %sub.6, %add13.5
  %add14.6 = add nsw i32 %sub12.6, %add14.5
  %mul.6 = mul nsw i32 %sub.6, %sub.6
  %add15.6 = add nsw i32 %mul.6, %add15.5
  %mul16.6 = mul nsw i32 %sub12.6, %sub12.6
  %add17.6 = add nsw i32 %mul16.6, %add17.5
  %arrayidx.7 = getelementptr inbounds i8, i8* %fenc.addr.082, i32 7
  %28 = load i8, i8* %arrayidx.7, align 1, !tbaa !6
  %conv.7 = zext i8 %28 to i32
  %arrayidx5.7 = getelementptr inbounds i8, i8* %fdec.addr.081, i32 7
  %29 = load i8, i8* %arrayidx5.7, align 1, !tbaa !6
  %conv6.7 = zext i8 %29 to i32
  %sub.7 = sub nsw i32 %conv.7, %conv6.7
  %arrayidx7.7 = getelementptr inbounds i8, i8* %fenc.addr.082, i32 15
  %30 = load i8, i8* %arrayidx7.7, align 1, !tbaa !6
  %conv8.7 = zext i8 %30 to i32
  %arrayidx10.7 = getelementptr inbounds i8, i8* %fdec.addr.081, i32 23
  %31 = load i8, i8* %arrayidx10.7, align 1, !tbaa !6
  %conv11.7 = zext i8 %31 to i32
  %sub12.7 = sub nsw i32 %conv8.7, %conv11.7
  %add13.7 = add nsw i32 %sub.7, %add13.6
  %add14.7 = add nsw i32 %sub12.7, %add14.6
  %mul.7 = mul nsw i32 %sub.7, %sub.7
  %add15.7 = add nsw i32 %mul.7, %add15.6
  %mul16.7 = mul nsw i32 %sub12.7, %sub12.7
  %add17.7 = add nsw i32 %mul16.7, %add17.6
  %add.ptr = getelementptr inbounds i8, i8* %fenc.addr.082, i32 16
  %add.ptr18 = getelementptr inbounds i8, i8* %fdec.addr.081, i32 32
  %inc20 = add nuw nsw i32 %y.080, 1
  %exitcond = icmp eq i32 %inc20, 8
  br i1 %exitcond, label %for.cond.cleanup, label %for.cond1.preheader

for.cond.cleanup:                                 ; preds = %for.cond1.preheader
  store i32 %add15.7, i32* %ssd, align 4, !tbaa !13
  %arrayidx23 = getelementptr inbounds i32, i32* %ssd, i32 1
  store i32 %add17.7, i32* %arrayidx23, align 4, !tbaa !13
  %conv2468 = zext i32 %add15.7 to i64
  %conv25 = sext i32 %add13.7 to i64
  %mul27 = mul nsw i64 %conv25, %conv25
  %32 = lshr i64 %mul27, 6
  %sub28 = sub nsw i64 %conv2468, %32
  %conv2969 = zext i32 %add17.7 to i64
  %add30 = add nsw i64 %sub28, %conv2969
  %conv31 = sext i32 %add14.7 to i64
  %mul33 = mul nsw i64 %conv31, %conv31
  %33 = lshr i64 %mul33, 6
  %sub35 = sub nsw i64 %add30, %33
  %conv36 = trunc i64 %sub35 to i32
  ret i32 %conv36
}

; Function Attrs: nofree norecurse nounwind
define internal void @ssim_4x4x2_core(i8* nocapture readonly %pix1, i32 %stride1, i8* nocapture readonly %pix2, i32 %stride2, [4 x i32]* nocapture %sums) #2 {
entry:
  %add.1.1 = add nsw i32 %stride1, 1
  %add10.1.1 = add nsw i32 %stride2, 1
  %add.2.1 = add nsw i32 %stride1, 2
  %add10.2.1 = add nsw i32 %stride2, 2
  %add.3.1 = add nsw i32 %stride1, 3
  %add10.3.1 = add nsw i32 %stride2, 3
  %mul.2 = shl nsw i32 %stride1, 1
  %mul9.2 = shl nsw i32 %stride2, 1
  %add.1.2 = or i32 %mul.2, 1
  %add10.1.2 = or i32 %mul9.2, 1
  %add.2.2 = add nsw i32 %mul.2, 2
  %add10.2.2 = add nsw i32 %mul9.2, 2
  %add.3.2 = add nsw i32 %mul.2, 3
  %add10.3.2 = add nsw i32 %mul9.2, 3
  %mul.3 = mul nsw i32 %stride1, 3
  %mul9.3 = mul nsw i32 %stride2, 3
  %add.1.3 = add nsw i32 %mul.3, 1
  %add10.1.3 = add nsw i32 %mul9.3, 1
  %add.2.3 = add nsw i32 %mul.3, 2
  %add10.2.3 = add nsw i32 %mul9.3, 2
  %add.3.3 = add nsw i32 %mul.3, 3
  %add10.3.3 = add nsw i32 %mul9.3, 3
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %entry, %for.cond1.preheader
  %pix1.addr.084 = phi i8* [ %pix1, %entry ], [ %add.ptr, %for.cond1.preheader ]
  %pix2.addr.083 = phi i8* [ %pix2, %entry ], [ %add.ptr32, %for.cond1.preheader ]
  %z.082 = phi i32 [ 0, %entry ], [ 1, %for.cond1.preheader ]
  %0 = load i8, i8* %pix1.addr.084, align 1, !tbaa !6
  %conv = zext i8 %0 to i32
  %1 = load i8, i8* %pix2.addr.083, align 1, !tbaa !6
  %conv12 = zext i8 %1 to i32
  %mul15 = mul nuw nsw i32 %conv, %conv
  %mul17 = mul nuw nsw i32 %conv12, %conv12
  %add18 = add nuw nsw i32 %mul15, %mul17
  %mul19 = mul nuw nsw i32 %conv12, %conv
  %arrayidx.1 = getelementptr inbounds i8, i8* %pix1.addr.084, i32 1
  %2 = load i8, i8* %arrayidx.1, align 1, !tbaa !6
  %conv.1 = zext i8 %2 to i32
  %arrayidx11.1 = getelementptr inbounds i8, i8* %pix2.addr.083, i32 1
  %3 = load i8, i8* %arrayidx11.1, align 1, !tbaa !6
  %conv12.1 = zext i8 %3 to i32
  %add13.1 = add nuw nsw i32 %conv, %conv.1
  %add14.1 = add nuw nsw i32 %conv12, %conv12.1
  %mul15.1 = mul nuw nsw i32 %conv.1, %conv.1
  %add16.1 = add nuw nsw i32 %mul15.1, %add18
  %mul17.1 = mul nuw nsw i32 %conv12.1, %conv12.1
  %add18.1 = add nuw nsw i32 %add16.1, %mul17.1
  %mul19.1 = mul nuw nsw i32 %conv12.1, %conv.1
  %add20.1 = add nuw nsw i32 %mul19.1, %mul19
  %arrayidx.2 = getelementptr inbounds i8, i8* %pix1.addr.084, i32 2
  %4 = load i8, i8* %arrayidx.2, align 1, !tbaa !6
  %conv.2 = zext i8 %4 to i32
  %arrayidx11.2 = getelementptr inbounds i8, i8* %pix2.addr.083, i32 2
  %5 = load i8, i8* %arrayidx11.2, align 1, !tbaa !6
  %conv12.2 = zext i8 %5 to i32
  %add13.2 = add nuw nsw i32 %add13.1, %conv.2
  %add14.2 = add nuw nsw i32 %add14.1, %conv12.2
  %mul15.2 = mul nuw nsw i32 %conv.2, %conv.2
  %add16.2 = add nuw nsw i32 %mul15.2, %add18.1
  %mul17.2 = mul nuw nsw i32 %conv12.2, %conv12.2
  %add18.2 = add nuw nsw i32 %add16.2, %mul17.2
  %mul19.2 = mul nuw nsw i32 %conv12.2, %conv.2
  %add20.2 = add nuw nsw i32 %mul19.2, %add20.1
  %arrayidx.3 = getelementptr inbounds i8, i8* %pix1.addr.084, i32 3
  %6 = load i8, i8* %arrayidx.3, align 1, !tbaa !6
  %conv.3 = zext i8 %6 to i32
  %arrayidx11.3 = getelementptr inbounds i8, i8* %pix2.addr.083, i32 3
  %7 = load i8, i8* %arrayidx11.3, align 1, !tbaa !6
  %conv12.3 = zext i8 %7 to i32
  %add13.3 = add nuw nsw i32 %add13.2, %conv.3
  %add14.3 = add nuw nsw i32 %add14.2, %conv12.3
  %mul15.3 = mul nuw nsw i32 %conv.3, %conv.3
  %add16.3 = add nuw nsw i32 %mul15.3, %add18.2
  %mul17.3 = mul nuw nsw i32 %conv12.3, %conv12.3
  %add18.3 = add nuw nsw i32 %add16.3, %mul17.3
  %mul19.3 = mul nuw nsw i32 %conv12.3, %conv.3
  %add20.3 = add nuw nsw i32 %mul19.3, %add20.2
  %arrayidx.185 = getelementptr inbounds i8, i8* %pix1.addr.084, i32 %stride1
  %8 = load i8, i8* %arrayidx.185, align 1, !tbaa !6
  %conv.186 = zext i8 %8 to i32
  %arrayidx11.187 = getelementptr inbounds i8, i8* %pix2.addr.083, i32 %stride2
  %9 = load i8, i8* %arrayidx11.187, align 1, !tbaa !6
  %conv12.188 = zext i8 %9 to i32
  %add13.189 = add nuw nsw i32 %add13.3, %conv.186
  %add14.190 = add nuw nsw i32 %add14.3, %conv12.188
  %mul15.191 = mul nuw nsw i32 %conv.186, %conv.186
  %add16.192 = add nuw nsw i32 %mul15.191, %add18.3
  %mul17.193 = mul nuw nsw i32 %conv12.188, %conv12.188
  %add18.194 = add nuw nsw i32 %add16.192, %mul17.193
  %mul19.195 = mul nuw nsw i32 %conv12.188, %conv.186
  %add20.196 = add nuw nsw i32 %mul19.195, %add20.3
  %arrayidx.1.1 = getelementptr inbounds i8, i8* %pix1.addr.084, i32 %add.1.1
  %10 = load i8, i8* %arrayidx.1.1, align 1, !tbaa !6
  %conv.1.1 = zext i8 %10 to i32
  %arrayidx11.1.1 = getelementptr inbounds i8, i8* %pix2.addr.083, i32 %add10.1.1
  %11 = load i8, i8* %arrayidx11.1.1, align 1, !tbaa !6
  %conv12.1.1 = zext i8 %11 to i32
  %add13.1.1 = add nuw nsw i32 %add13.189, %conv.1.1
  %add14.1.1 = add nuw nsw i32 %add14.190, %conv12.1.1
  %mul15.1.1 = mul nuw nsw i32 %conv.1.1, %conv.1.1
  %add16.1.1 = add nuw nsw i32 %mul15.1.1, %add18.194
  %mul17.1.1 = mul nuw nsw i32 %conv12.1.1, %conv12.1.1
  %add18.1.1 = add nuw nsw i32 %add16.1.1, %mul17.1.1
  %mul19.1.1 = mul nuw nsw i32 %conv12.1.1, %conv.1.1
  %add20.1.1 = add nuw nsw i32 %mul19.1.1, %add20.196
  %arrayidx.2.1 = getelementptr inbounds i8, i8* %pix1.addr.084, i32 %add.2.1
  %12 = load i8, i8* %arrayidx.2.1, align 1, !tbaa !6
  %conv.2.1 = zext i8 %12 to i32
  %arrayidx11.2.1 = getelementptr inbounds i8, i8* %pix2.addr.083, i32 %add10.2.1
  %13 = load i8, i8* %arrayidx11.2.1, align 1, !tbaa !6
  %conv12.2.1 = zext i8 %13 to i32
  %add13.2.1 = add nuw nsw i32 %add13.1.1, %conv.2.1
  %add14.2.1 = add nuw nsw i32 %add14.1.1, %conv12.2.1
  %mul15.2.1 = mul nuw nsw i32 %conv.2.1, %conv.2.1
  %add16.2.1 = add nuw nsw i32 %mul15.2.1, %add18.1.1
  %mul17.2.1 = mul nuw nsw i32 %conv12.2.1, %conv12.2.1
  %add18.2.1 = add nuw nsw i32 %add16.2.1, %mul17.2.1
  %mul19.2.1 = mul nuw nsw i32 %conv12.2.1, %conv.2.1
  %add20.2.1 = add nuw nsw i32 %mul19.2.1, %add20.1.1
  %arrayidx.3.1 = getelementptr inbounds i8, i8* %pix1.addr.084, i32 %add.3.1
  %14 = load i8, i8* %arrayidx.3.1, align 1, !tbaa !6
  %conv.3.1 = zext i8 %14 to i32
  %arrayidx11.3.1 = getelementptr inbounds i8, i8* %pix2.addr.083, i32 %add10.3.1
  %15 = load i8, i8* %arrayidx11.3.1, align 1, !tbaa !6
  %conv12.3.1 = zext i8 %15 to i32
  %add13.3.1 = add nuw nsw i32 %add13.2.1, %conv.3.1
  %add14.3.1 = add nuw nsw i32 %add14.2.1, %conv12.3.1
  %mul15.3.1 = mul nuw nsw i32 %conv.3.1, %conv.3.1
  %add16.3.1 = add nuw nsw i32 %mul15.3.1, %add18.2.1
  %mul17.3.1 = mul nuw nsw i32 %conv12.3.1, %conv12.3.1
  %add18.3.1 = add nuw nsw i32 %add16.3.1, %mul17.3.1
  %mul19.3.1 = mul nuw nsw i32 %conv12.3.1, %conv.3.1
  %add20.3.1 = add nuw nsw i32 %mul19.3.1, %add20.2.1
  %arrayidx.297 = getelementptr inbounds i8, i8* %pix1.addr.084, i32 %mul.2
  %16 = load i8, i8* %arrayidx.297, align 1, !tbaa !6
  %conv.298 = zext i8 %16 to i32
  %arrayidx11.299 = getelementptr inbounds i8, i8* %pix2.addr.083, i32 %mul9.2
  %17 = load i8, i8* %arrayidx11.299, align 1, !tbaa !6
  %conv12.2100 = zext i8 %17 to i32
  %add13.2101 = add nuw nsw i32 %add13.3.1, %conv.298
  %add14.2102 = add nuw nsw i32 %add14.3.1, %conv12.2100
  %mul15.2103 = mul nuw nsw i32 %conv.298, %conv.298
  %add16.2104 = add nuw nsw i32 %mul15.2103, %add18.3.1
  %mul17.2105 = mul nuw nsw i32 %conv12.2100, %conv12.2100
  %add18.2106 = add nuw nsw i32 %add16.2104, %mul17.2105
  %mul19.2107 = mul nuw nsw i32 %conv12.2100, %conv.298
  %add20.2108 = add nuw nsw i32 %mul19.2107, %add20.3.1
  %arrayidx.1.2 = getelementptr inbounds i8, i8* %pix1.addr.084, i32 %add.1.2
  %18 = load i8, i8* %arrayidx.1.2, align 1, !tbaa !6
  %conv.1.2 = zext i8 %18 to i32
  %arrayidx11.1.2 = getelementptr inbounds i8, i8* %pix2.addr.083, i32 %add10.1.2
  %19 = load i8, i8* %arrayidx11.1.2, align 1, !tbaa !6
  %conv12.1.2 = zext i8 %19 to i32
  %add13.1.2 = add nuw nsw i32 %add13.2101, %conv.1.2
  %add14.1.2 = add nuw nsw i32 %add14.2102, %conv12.1.2
  %mul15.1.2 = mul nuw nsw i32 %conv.1.2, %conv.1.2
  %add16.1.2 = add nuw nsw i32 %mul15.1.2, %add18.2106
  %mul17.1.2 = mul nuw nsw i32 %conv12.1.2, %conv12.1.2
  %add18.1.2 = add nuw nsw i32 %add16.1.2, %mul17.1.2
  %mul19.1.2 = mul nuw nsw i32 %conv12.1.2, %conv.1.2
  %add20.1.2 = add nuw nsw i32 %mul19.1.2, %add20.2108
  %arrayidx.2.2 = getelementptr inbounds i8, i8* %pix1.addr.084, i32 %add.2.2
  %20 = load i8, i8* %arrayidx.2.2, align 1, !tbaa !6
  %conv.2.2 = zext i8 %20 to i32
  %arrayidx11.2.2 = getelementptr inbounds i8, i8* %pix2.addr.083, i32 %add10.2.2
  %21 = load i8, i8* %arrayidx11.2.2, align 1, !tbaa !6
  %conv12.2.2 = zext i8 %21 to i32
  %add13.2.2 = add nuw nsw i32 %add13.1.2, %conv.2.2
  %add14.2.2 = add nuw nsw i32 %add14.1.2, %conv12.2.2
  %mul15.2.2 = mul nuw nsw i32 %conv.2.2, %conv.2.2
  %add16.2.2 = add nuw nsw i32 %mul15.2.2, %add18.1.2
  %mul17.2.2 = mul nuw nsw i32 %conv12.2.2, %conv12.2.2
  %add18.2.2 = add nuw nsw i32 %add16.2.2, %mul17.2.2
  %mul19.2.2 = mul nuw nsw i32 %conv12.2.2, %conv.2.2
  %add20.2.2 = add nuw nsw i32 %mul19.2.2, %add20.1.2
  %arrayidx.3.2 = getelementptr inbounds i8, i8* %pix1.addr.084, i32 %add.3.2
  %22 = load i8, i8* %arrayidx.3.2, align 1, !tbaa !6
  %conv.3.2 = zext i8 %22 to i32
  %arrayidx11.3.2 = getelementptr inbounds i8, i8* %pix2.addr.083, i32 %add10.3.2
  %23 = load i8, i8* %arrayidx11.3.2, align 1, !tbaa !6
  %conv12.3.2 = zext i8 %23 to i32
  %add13.3.2 = add nuw nsw i32 %add13.2.2, %conv.3.2
  %add14.3.2 = add nuw nsw i32 %add14.2.2, %conv12.3.2
  %mul15.3.2 = mul nuw nsw i32 %conv.3.2, %conv.3.2
  %add16.3.2 = add nuw nsw i32 %mul15.3.2, %add18.2.2
  %mul17.3.2 = mul nuw nsw i32 %conv12.3.2, %conv12.3.2
  %add18.3.2 = add nuw nsw i32 %add16.3.2, %mul17.3.2
  %mul19.3.2 = mul nuw nsw i32 %conv12.3.2, %conv.3.2
  %add20.3.2 = add nuw nsw i32 %mul19.3.2, %add20.2.2
  %arrayidx.3109 = getelementptr inbounds i8, i8* %pix1.addr.084, i32 %mul.3
  %24 = load i8, i8* %arrayidx.3109, align 1, !tbaa !6
  %conv.3110 = zext i8 %24 to i32
  %arrayidx11.3111 = getelementptr inbounds i8, i8* %pix2.addr.083, i32 %mul9.3
  %25 = load i8, i8* %arrayidx11.3111, align 1, !tbaa !6
  %conv12.3112 = zext i8 %25 to i32
  %add13.3113 = add nuw nsw i32 %add13.3.2, %conv.3110
  %add14.3114 = add nuw nsw i32 %add14.3.2, %conv12.3112
  %mul15.3115 = mul nuw nsw i32 %conv.3110, %conv.3110
  %add16.3116 = add nuw nsw i32 %mul15.3115, %add18.3.2
  %mul17.3117 = mul nuw nsw i32 %conv12.3112, %conv12.3112
  %add18.3118 = add nuw nsw i32 %add16.3116, %mul17.3117
  %mul19.3119 = mul nuw nsw i32 %conv12.3112, %conv.3110
  %add20.3120 = add nuw nsw i32 %mul19.3119, %add20.3.2
  %arrayidx.1.3 = getelementptr inbounds i8, i8* %pix1.addr.084, i32 %add.1.3
  %26 = load i8, i8* %arrayidx.1.3, align 1, !tbaa !6
  %conv.1.3 = zext i8 %26 to i32
  %arrayidx11.1.3 = getelementptr inbounds i8, i8* %pix2.addr.083, i32 %add10.1.3
  %27 = load i8, i8* %arrayidx11.1.3, align 1, !tbaa !6
  %conv12.1.3 = zext i8 %27 to i32
  %add13.1.3 = add nuw nsw i32 %add13.3113, %conv.1.3
  %add14.1.3 = add nuw nsw i32 %add14.3114, %conv12.1.3
  %mul15.1.3 = mul nuw nsw i32 %conv.1.3, %conv.1.3
  %add16.1.3 = add nuw nsw i32 %mul15.1.3, %add18.3118
  %mul17.1.3 = mul nuw nsw i32 %conv12.1.3, %conv12.1.3
  %add18.1.3 = add nuw nsw i32 %add16.1.3, %mul17.1.3
  %mul19.1.3 = mul nuw nsw i32 %conv12.1.3, %conv.1.3
  %add20.1.3 = add nuw nsw i32 %mul19.1.3, %add20.3120
  %arrayidx.2.3 = getelementptr inbounds i8, i8* %pix1.addr.084, i32 %add.2.3
  %28 = load i8, i8* %arrayidx.2.3, align 1, !tbaa !6
  %conv.2.3 = zext i8 %28 to i32
  %arrayidx11.2.3 = getelementptr inbounds i8, i8* %pix2.addr.083, i32 %add10.2.3
  %29 = load i8, i8* %arrayidx11.2.3, align 1, !tbaa !6
  %conv12.2.3 = zext i8 %29 to i32
  %add13.2.3 = add nuw nsw i32 %add13.1.3, %conv.2.3
  %add14.2.3 = add nuw nsw i32 %add14.1.3, %conv12.2.3
  %mul15.2.3 = mul nuw nsw i32 %conv.2.3, %conv.2.3
  %add16.2.3 = add nuw nsw i32 %mul15.2.3, %add18.1.3
  %mul17.2.3 = mul nuw nsw i32 %conv12.2.3, %conv12.2.3
  %add18.2.3 = add nuw nsw i32 %add16.2.3, %mul17.2.3
  %mul19.2.3 = mul nuw nsw i32 %conv12.2.3, %conv.2.3
  %add20.2.3 = add nuw nsw i32 %mul19.2.3, %add20.1.3
  %arrayidx.3.3 = getelementptr inbounds i8, i8* %pix1.addr.084, i32 %add.3.3
  %30 = load i8, i8* %arrayidx.3.3, align 1, !tbaa !6
  %conv.3.3 = zext i8 %30 to i32
  %arrayidx11.3.3 = getelementptr inbounds i8, i8* %pix2.addr.083, i32 %add10.3.3
  %31 = load i8, i8* %arrayidx11.3.3, align 1, !tbaa !6
  %conv12.3.3 = zext i8 %31 to i32
  %add13.3.3 = add nuw nsw i32 %add13.2.3, %conv.3.3
  %add14.3.3 = add nuw nsw i32 %add14.2.3, %conv12.3.3
  %mul15.3.3 = mul nuw nsw i32 %conv.3.3, %conv.3.3
  %add16.3.3 = add nuw nsw i32 %mul15.3.3, %add18.2.3
  %mul17.3.3 = mul nuw nsw i32 %conv12.3.3, %conv12.3.3
  %add18.3.3 = add nuw nsw i32 %add16.3.3, %mul17.3.3
  %mul19.3.3 = mul nuw nsw i32 %conv12.3.3, %conv.3.3
  %add20.3.3 = add nuw nsw i32 %mul19.3.3, %add20.2.3
  %arrayidx25 = getelementptr inbounds [4 x i32], [4 x i32]* %sums, i32 %z.082, i32 0
  store i32 %add13.3.3, i32* %arrayidx25, align 4, !tbaa !13
  %arrayidx27 = getelementptr inbounds [4 x i32], [4 x i32]* %sums, i32 %z.082, i32 1
  store i32 %add14.3.3, i32* %arrayidx27, align 4, !tbaa !13
  %arrayidx29 = getelementptr inbounds [4 x i32], [4 x i32]* %sums, i32 %z.082, i32 2
  store i32 %add18.3.3, i32* %arrayidx29, align 4, !tbaa !13
  %arrayidx31 = getelementptr inbounds [4 x i32], [4 x i32]* %sums, i32 %z.082, i32 3
  store i32 %add20.3.3, i32* %arrayidx31, align 4, !tbaa !13
  %add.ptr = getelementptr inbounds i8, i8* %pix1.addr.084, i32 4
  %add.ptr32 = getelementptr inbounds i8, i8* %pix2.addr.083, i32 4
  %cmp = icmp eq i32 %z.082, 0
  br i1 %cmp, label %for.cond1.preheader, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond1.preheader
  ret void
}

; Function Attrs: norecurse nounwind readonly
define internal float @ssim_end4([4 x i32]* nocapture readonly %sum0, [4 x i32]* nocapture readonly %sum1, i32 %width) #3 {
entry:
  %cmp86 = icmp sgt i32 %width, 0
  br i1 %cmp86, label %for.body.preheader, label %for.cond.cleanup

for.body.preheader:                               ; preds = %entry
  %arrayidx1.phi.trans.insert = getelementptr inbounds [4 x i32], [4 x i32]* %sum0, i32 0, i32 0
  %.pre = load i32, i32* %arrayidx1.phi.trans.insert, align 4, !tbaa !13
  %arrayidx6.phi.trans.insert = getelementptr inbounds [4 x i32], [4 x i32]* %sum1, i32 0, i32 0
  %.pre89 = load i32, i32* %arrayidx6.phi.trans.insert, align 4, !tbaa !13
  %arrayidx13.phi.trans.insert = getelementptr inbounds [4 x i32], [4 x i32]* %sum0, i32 0, i32 1
  %.pre90 = load i32, i32* %arrayidx13.phi.trans.insert, align 4, !tbaa !13
  %arrayidx19.phi.trans.insert = getelementptr inbounds [4 x i32], [4 x i32]* %sum1, i32 0, i32 1
  %.pre91 = load i32, i32* %arrayidx19.phi.trans.insert, align 4, !tbaa !13
  %arrayidx26.phi.trans.insert = getelementptr inbounds [4 x i32], [4 x i32]* %sum0, i32 0, i32 2
  %.pre92 = load i32, i32* %arrayidx26.phi.trans.insert, align 4, !tbaa !13
  %arrayidx32.phi.trans.insert = getelementptr inbounds [4 x i32], [4 x i32]* %sum1, i32 0, i32 2
  %.pre93 = load i32, i32* %arrayidx32.phi.trans.insert, align 4, !tbaa !13
  %arrayidx39.phi.trans.insert = getelementptr inbounds [4 x i32], [4 x i32]* %sum0, i32 0, i32 3
  %.pre94 = load i32, i32* %arrayidx39.phi.trans.insert, align 4, !tbaa !13
  %arrayidx45.phi.trans.insert = getelementptr inbounds [4 x i32], [4 x i32]* %sum1, i32 0, i32 3
  %.pre95 = load i32, i32* %arrayidx45.phi.trans.insert, align 4, !tbaa !13
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body, %entry
  %ssim.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %add51, %for.body ]
  ret float %ssim.0.lcssa

for.body:                                         ; preds = %for.body, %for.body.preheader
  %0 = phi i32 [ %15, %for.body ], [ %.pre95, %for.body.preheader ]
  %1 = phi i32 [ %14, %for.body ], [ %.pre94, %for.body.preheader ]
  %2 = phi i32 [ %13, %for.body ], [ %.pre93, %for.body.preheader ]
  %3 = phi i32 [ %12, %for.body ], [ %.pre92, %for.body.preheader ]
  %4 = phi i32 [ %11, %for.body ], [ %.pre91, %for.body.preheader ]
  %5 = phi i32 [ %10, %for.body ], [ %.pre90, %for.body.preheader ]
  %6 = phi i32 [ %9, %for.body ], [ %.pre89, %for.body.preheader ]
  %7 = phi i32 [ %8, %for.body ], [ %.pre, %for.body.preheader ]
  %i.088 = phi i32 [ %add, %for.body ], [ 0, %for.body.preheader ]
  %ssim.087 = phi float [ %add51, %for.body ], [ 0.000000e+00, %for.body.preheader ]
  %add = add nuw nsw i32 %i.088, 1
  %arrayidx3 = getelementptr inbounds [4 x i32], [4 x i32]* %sum0, i32 %add, i32 0
  %8 = load i32, i32* %arrayidx3, align 4, !tbaa !13
  %add4 = add nsw i32 %8, %7
  %add7 = add nsw i32 %add4, %6
  %arrayidx10 = getelementptr inbounds [4 x i32], [4 x i32]* %sum1, i32 %add, i32 0
  %9 = load i32, i32* %arrayidx10, align 4, !tbaa !13
  %add11 = add nsw i32 %add7, %9
  %arrayidx16 = getelementptr inbounds [4 x i32], [4 x i32]* %sum0, i32 %add, i32 1
  %10 = load i32, i32* %arrayidx16, align 4, !tbaa !13
  %add17 = add nsw i32 %10, %5
  %add20 = add nsw i32 %add17, %4
  %arrayidx23 = getelementptr inbounds [4 x i32], [4 x i32]* %sum1, i32 %add, i32 1
  %11 = load i32, i32* %arrayidx23, align 4, !tbaa !13
  %add24 = add nsw i32 %add20, %11
  %arrayidx29 = getelementptr inbounds [4 x i32], [4 x i32]* %sum0, i32 %add, i32 2
  %12 = load i32, i32* %arrayidx29, align 4, !tbaa !13
  %add30 = add nsw i32 %12, %3
  %add33 = add nsw i32 %add30, %2
  %arrayidx36 = getelementptr inbounds [4 x i32], [4 x i32]* %sum1, i32 %add, i32 2
  %13 = load i32, i32* %arrayidx36, align 4, !tbaa !13
  %add37 = add nsw i32 %add33, %13
  %arrayidx42 = getelementptr inbounds [4 x i32], [4 x i32]* %sum0, i32 %add, i32 3
  %14 = load i32, i32* %arrayidx42, align 4, !tbaa !13
  %add43 = add nsw i32 %14, %1
  %add46 = add nsw i32 %add43, %0
  %arrayidx49 = getelementptr inbounds [4 x i32], [4 x i32]* %sum1, i32 %add, i32 3
  %15 = load i32, i32* %arrayidx49, align 4, !tbaa !13
  %add50 = add nsw i32 %add46, %15
  %mul.i = shl i32 %add37, 6
  %mul1.i = mul nsw i32 %add11, %add11
  %mul2.i = mul nsw i32 %add24, %add24
  %mul4.i = shl nsw i32 %add50, 6
  %mul5.i = mul nsw i32 %add24, %add11
  %sub6.i = sub nsw i32 %mul4.i, %mul5.i
  %mul7.i = shl i32 %add11, 1
  %mul8.i = mul nsw i32 %mul7.i, %add24
  %add.i = add nsw i32 %mul8.i, 416
  %conv.i = sitofp i32 %add.i to float
  %mul9.i = shl i32 %sub6.i, 1
  %add10.i = add nsw i32 %mul9.i, 235963
  %conv11.i = sitofp i32 %add10.i to float
  %mul12.i = fmul fast float %conv11.i, %conv.i
  %add15.i = add nuw i32 %mul1.i, 416
  %add16.i = add i32 %add15.i, %mul2.i
  %conv17.i = sitofp i32 %add16.i to float
  %sub.i = sub nsw i32 235963, %mul1.i
  %sub3.i = sub i32 %sub.i, %mul2.i
  %add18.i = add i32 %sub3.i, %mul.i
  %conv19.i = sitofp i32 %add18.i to float
  %mul20.i = fmul fast float %conv19.i, %conv17.i
  %div.i = fdiv fast float %mul12.i, %mul20.i
  %add51 = fadd fast float %div.i, %ssim.087
  %exitcond = icmp eq i32 %add, %width
  br i1 %exitcond, label %for.cond.cleanup, label %for.body
}

; Function Attrs: norecurse nounwind readonly
define internal i32 @pixel_vsad(i8* nocapture readonly %src, i32 %stride, i32 %height) #3 {
entry:
  %cmp24 = icmp sgt i32 %height, 1
  br i1 %cmp24, label %for.cond1.preheader.preheader, label %for.cond.cleanup

for.cond1.preheader.preheader:                    ; preds = %entry
  %add.1 = add nsw i32 %stride, 1
  %add.2 = add nsw i32 %stride, 2
  %add.3 = add nsw i32 %stride, 3
  %add.4 = add nsw i32 %stride, 4
  %add.5 = add nsw i32 %stride, 5
  %add.6 = add nsw i32 %stride, 6
  %add.7 = add nsw i32 %stride, 7
  %add.8 = add nsw i32 %stride, 8
  %add.9 = add nsw i32 %stride, 9
  %add.10 = add nsw i32 %stride, 10
  %add.11 = add nsw i32 %stride, 11
  %add.12 = add nsw i32 %stride, 12
  %add.13 = add nsw i32 %stride, 13
  %add.14 = add nsw i32 %stride, 14
  %add.15 = add nsw i32 %stride, 15
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader, %for.cond1.preheader.preheader
  %i.027 = phi i32 [ %inc9, %for.cond1.preheader ], [ 1, %for.cond1.preheader.preheader ]
  %score.026 = phi i32 [ %add7.15, %for.cond1.preheader ], [ 0, %for.cond1.preheader.preheader ]
  %src.addr.025 = phi i8* [ %arrayidx5, %for.cond1.preheader ], [ %src, %for.cond1.preheader.preheader ]
  %0 = load i8, i8* %src.addr.025, align 1, !tbaa !6
  %conv = zext i8 %0 to i32
  %arrayidx5 = getelementptr inbounds i8, i8* %src.addr.025, i32 %stride
  %1 = load i8, i8* %arrayidx5, align 1, !tbaa !6
  %conv6 = zext i8 %1 to i32
  %sub = sub nsw i32 %conv, %conv6
  %2 = icmp slt i32 %sub, 0
  %neg = sub nsw i32 0, %sub
  %3 = select i1 %2, i32 %neg, i32 %sub
  %add7 = add nsw i32 %3, %score.026
  %arrayidx.1 = getelementptr inbounds i8, i8* %src.addr.025, i32 1
  %4 = load i8, i8* %arrayidx.1, align 1, !tbaa !6
  %conv.1 = zext i8 %4 to i32
  %arrayidx5.1 = getelementptr inbounds i8, i8* %src.addr.025, i32 %add.1
  %5 = load i8, i8* %arrayidx5.1, align 1, !tbaa !6
  %conv6.1 = zext i8 %5 to i32
  %sub.1 = sub nsw i32 %conv.1, %conv6.1
  %6 = icmp slt i32 %sub.1, 0
  %neg.1 = sub nsw i32 0, %sub.1
  %7 = select i1 %6, i32 %neg.1, i32 %sub.1
  %add7.1 = add nsw i32 %7, %add7
  %arrayidx.2 = getelementptr inbounds i8, i8* %src.addr.025, i32 2
  %8 = load i8, i8* %arrayidx.2, align 1, !tbaa !6
  %conv.2 = zext i8 %8 to i32
  %arrayidx5.2 = getelementptr inbounds i8, i8* %src.addr.025, i32 %add.2
  %9 = load i8, i8* %arrayidx5.2, align 1, !tbaa !6
  %conv6.2 = zext i8 %9 to i32
  %sub.2 = sub nsw i32 %conv.2, %conv6.2
  %10 = icmp slt i32 %sub.2, 0
  %neg.2 = sub nsw i32 0, %sub.2
  %11 = select i1 %10, i32 %neg.2, i32 %sub.2
  %add7.2 = add nsw i32 %11, %add7.1
  %arrayidx.3 = getelementptr inbounds i8, i8* %src.addr.025, i32 3
  %12 = load i8, i8* %arrayidx.3, align 1, !tbaa !6
  %conv.3 = zext i8 %12 to i32
  %arrayidx5.3 = getelementptr inbounds i8, i8* %src.addr.025, i32 %add.3
  %13 = load i8, i8* %arrayidx5.3, align 1, !tbaa !6
  %conv6.3 = zext i8 %13 to i32
  %sub.3 = sub nsw i32 %conv.3, %conv6.3
  %14 = icmp slt i32 %sub.3, 0
  %neg.3 = sub nsw i32 0, %sub.3
  %15 = select i1 %14, i32 %neg.3, i32 %sub.3
  %add7.3 = add nsw i32 %15, %add7.2
  %arrayidx.4 = getelementptr inbounds i8, i8* %src.addr.025, i32 4
  %16 = load i8, i8* %arrayidx.4, align 1, !tbaa !6
  %conv.4 = zext i8 %16 to i32
  %arrayidx5.4 = getelementptr inbounds i8, i8* %src.addr.025, i32 %add.4
  %17 = load i8, i8* %arrayidx5.4, align 1, !tbaa !6
  %conv6.4 = zext i8 %17 to i32
  %sub.4 = sub nsw i32 %conv.4, %conv6.4
  %18 = icmp slt i32 %sub.4, 0
  %neg.4 = sub nsw i32 0, %sub.4
  %19 = select i1 %18, i32 %neg.4, i32 %sub.4
  %add7.4 = add nsw i32 %19, %add7.3
  %arrayidx.5 = getelementptr inbounds i8, i8* %src.addr.025, i32 5
  %20 = load i8, i8* %arrayidx.5, align 1, !tbaa !6
  %conv.5 = zext i8 %20 to i32
  %arrayidx5.5 = getelementptr inbounds i8, i8* %src.addr.025, i32 %add.5
  %21 = load i8, i8* %arrayidx5.5, align 1, !tbaa !6
  %conv6.5 = zext i8 %21 to i32
  %sub.5 = sub nsw i32 %conv.5, %conv6.5
  %22 = icmp slt i32 %sub.5, 0
  %neg.5 = sub nsw i32 0, %sub.5
  %23 = select i1 %22, i32 %neg.5, i32 %sub.5
  %add7.5 = add nsw i32 %23, %add7.4
  %arrayidx.6 = getelementptr inbounds i8, i8* %src.addr.025, i32 6
  %24 = load i8, i8* %arrayidx.6, align 1, !tbaa !6
  %conv.6 = zext i8 %24 to i32
  %arrayidx5.6 = getelementptr inbounds i8, i8* %src.addr.025, i32 %add.6
  %25 = load i8, i8* %arrayidx5.6, align 1, !tbaa !6
  %conv6.6 = zext i8 %25 to i32
  %sub.6 = sub nsw i32 %conv.6, %conv6.6
  %26 = icmp slt i32 %sub.6, 0
  %neg.6 = sub nsw i32 0, %sub.6
  %27 = select i1 %26, i32 %neg.6, i32 %sub.6
  %add7.6 = add nsw i32 %27, %add7.5
  %arrayidx.7 = getelementptr inbounds i8, i8* %src.addr.025, i32 7
  %28 = load i8, i8* %arrayidx.7, align 1, !tbaa !6
  %conv.7 = zext i8 %28 to i32
  %arrayidx5.7 = getelementptr inbounds i8, i8* %src.addr.025, i32 %add.7
  %29 = load i8, i8* %arrayidx5.7, align 1, !tbaa !6
  %conv6.7 = zext i8 %29 to i32
  %sub.7 = sub nsw i32 %conv.7, %conv6.7
  %30 = icmp slt i32 %sub.7, 0
  %neg.7 = sub nsw i32 0, %sub.7
  %31 = select i1 %30, i32 %neg.7, i32 %sub.7
  %add7.7 = add nsw i32 %31, %add7.6
  %arrayidx.8 = getelementptr inbounds i8, i8* %src.addr.025, i32 8
  %32 = load i8, i8* %arrayidx.8, align 1, !tbaa !6
  %conv.8 = zext i8 %32 to i32
  %arrayidx5.8 = getelementptr inbounds i8, i8* %src.addr.025, i32 %add.8
  %33 = load i8, i8* %arrayidx5.8, align 1, !tbaa !6
  %conv6.8 = zext i8 %33 to i32
  %sub.8 = sub nsw i32 %conv.8, %conv6.8
  %34 = icmp slt i32 %sub.8, 0
  %neg.8 = sub nsw i32 0, %sub.8
  %35 = select i1 %34, i32 %neg.8, i32 %sub.8
  %add7.8 = add nsw i32 %35, %add7.7
  %arrayidx.9 = getelementptr inbounds i8, i8* %src.addr.025, i32 9
  %36 = load i8, i8* %arrayidx.9, align 1, !tbaa !6
  %conv.9 = zext i8 %36 to i32
  %arrayidx5.9 = getelementptr inbounds i8, i8* %src.addr.025, i32 %add.9
  %37 = load i8, i8* %arrayidx5.9, align 1, !tbaa !6
  %conv6.9 = zext i8 %37 to i32
  %sub.9 = sub nsw i32 %conv.9, %conv6.9
  %38 = icmp slt i32 %sub.9, 0
  %neg.9 = sub nsw i32 0, %sub.9
  %39 = select i1 %38, i32 %neg.9, i32 %sub.9
  %add7.9 = add nsw i32 %39, %add7.8
  %arrayidx.10 = getelementptr inbounds i8, i8* %src.addr.025, i32 10
  %40 = load i8, i8* %arrayidx.10, align 1, !tbaa !6
  %conv.10 = zext i8 %40 to i32
  %arrayidx5.10 = getelementptr inbounds i8, i8* %src.addr.025, i32 %add.10
  %41 = load i8, i8* %arrayidx5.10, align 1, !tbaa !6
  %conv6.10 = zext i8 %41 to i32
  %sub.10 = sub nsw i32 %conv.10, %conv6.10
  %42 = icmp slt i32 %sub.10, 0
  %neg.10 = sub nsw i32 0, %sub.10
  %43 = select i1 %42, i32 %neg.10, i32 %sub.10
  %add7.10 = add nsw i32 %43, %add7.9
  %arrayidx.11 = getelementptr inbounds i8, i8* %src.addr.025, i32 11
  %44 = load i8, i8* %arrayidx.11, align 1, !tbaa !6
  %conv.11 = zext i8 %44 to i32
  %arrayidx5.11 = getelementptr inbounds i8, i8* %src.addr.025, i32 %add.11
  %45 = load i8, i8* %arrayidx5.11, align 1, !tbaa !6
  %conv6.11 = zext i8 %45 to i32
  %sub.11 = sub nsw i32 %conv.11, %conv6.11
  %46 = icmp slt i32 %sub.11, 0
  %neg.11 = sub nsw i32 0, %sub.11
  %47 = select i1 %46, i32 %neg.11, i32 %sub.11
  %add7.11 = add nsw i32 %47, %add7.10
  %arrayidx.12 = getelementptr inbounds i8, i8* %src.addr.025, i32 12
  %48 = load i8, i8* %arrayidx.12, align 1, !tbaa !6
  %conv.12 = zext i8 %48 to i32
  %arrayidx5.12 = getelementptr inbounds i8, i8* %src.addr.025, i32 %add.12
  %49 = load i8, i8* %arrayidx5.12, align 1, !tbaa !6
  %conv6.12 = zext i8 %49 to i32
  %sub.12 = sub nsw i32 %conv.12, %conv6.12
  %50 = icmp slt i32 %sub.12, 0
  %neg.12 = sub nsw i32 0, %sub.12
  %51 = select i1 %50, i32 %neg.12, i32 %sub.12
  %add7.12 = add nsw i32 %51, %add7.11
  %arrayidx.13 = getelementptr inbounds i8, i8* %src.addr.025, i32 13
  %52 = load i8, i8* %arrayidx.13, align 1, !tbaa !6
  %conv.13 = zext i8 %52 to i32
  %arrayidx5.13 = getelementptr inbounds i8, i8* %src.addr.025, i32 %add.13
  %53 = load i8, i8* %arrayidx5.13, align 1, !tbaa !6
  %conv6.13 = zext i8 %53 to i32
  %sub.13 = sub nsw i32 %conv.13, %conv6.13
  %54 = icmp slt i32 %sub.13, 0
  %neg.13 = sub nsw i32 0, %sub.13
  %55 = select i1 %54, i32 %neg.13, i32 %sub.13
  %add7.13 = add nsw i32 %55, %add7.12
  %arrayidx.14 = getelementptr inbounds i8, i8* %src.addr.025, i32 14
  %56 = load i8, i8* %arrayidx.14, align 1, !tbaa !6
  %conv.14 = zext i8 %56 to i32
  %arrayidx5.14 = getelementptr inbounds i8, i8* %src.addr.025, i32 %add.14
  %57 = load i8, i8* %arrayidx5.14, align 1, !tbaa !6
  %conv6.14 = zext i8 %57 to i32
  %sub.14 = sub nsw i32 %conv.14, %conv6.14
  %58 = icmp slt i32 %sub.14, 0
  %neg.14 = sub nsw i32 0, %sub.14
  %59 = select i1 %58, i32 %neg.14, i32 %sub.14
  %add7.14 = add nsw i32 %59, %add7.13
  %arrayidx.15 = getelementptr inbounds i8, i8* %src.addr.025, i32 15
  %60 = load i8, i8* %arrayidx.15, align 1, !tbaa !6
  %conv.15 = zext i8 %60 to i32
  %arrayidx5.15 = getelementptr inbounds i8, i8* %src.addr.025, i32 %add.15
  %61 = load i8, i8* %arrayidx5.15, align 1, !tbaa !6
  %conv6.15 = zext i8 %61 to i32
  %sub.15 = sub nsw i32 %conv.15, %conv6.15
  %62 = icmp slt i32 %sub.15, 0
  %neg.15 = sub nsw i32 0, %sub.15
  %63 = select i1 %62, i32 %neg.15, i32 %sub.15
  %add7.15 = add nsw i32 %63, %add7.14
  %inc9 = add nuw nsw i32 %i.027, 1
  %exitcond = icmp eq i32 %inc9, %height
  br i1 %exitcond, label %for.cond.cleanup, label %for.cond1.preheader

for.cond.cleanup:                                 ; preds = %for.cond1.preheader, %entry
  %score.0.lcssa = phi i32 [ 0, %entry ], [ %add7.15, %for.cond1.preheader ]
  ret i32 %score.0.lcssa
}

; Function Attrs: norecurse nounwind readonly
define internal i32 @pixel_asd8(i8* nocapture readonly %pix1, i32 %stride1, i8* nocapture readonly %pix2, i32 %stride2, i32 %height) #3 {
entry:
  %cmp23 = icmp sgt i32 %height, 0
  br i1 %cmp23, label %for.cond1.preheader, label %for.cond.cleanup.thread

for.cond1.preheader:                              ; preds = %entry, %for.cond1.preheader
  %y.027 = phi i32 [ %inc8, %for.cond1.preheader ], [ 0, %entry ]
  %sum.026 = phi i32 [ %add.7, %for.cond1.preheader ], [ 0, %entry ]
  %pix1.addr.025 = phi i8* [ %add.ptr, %for.cond1.preheader ], [ %pix1, %entry ]
  %pix2.addr.024 = phi i8* [ %add.ptr9, %for.cond1.preheader ], [ %pix2, %entry ]
  %0 = load i8, i8* %pix1.addr.025, align 1, !tbaa !6
  %conv = zext i8 %0 to i32
  %1 = load i8, i8* %pix2.addr.024, align 1, !tbaa !6
  %conv6 = zext i8 %1 to i32
  %sub = add i32 %sum.026, %conv
  %add = sub i32 %sub, %conv6
  %arrayidx.1 = getelementptr inbounds i8, i8* %pix1.addr.025, i32 1
  %2 = load i8, i8* %arrayidx.1, align 1, !tbaa !6
  %conv.1 = zext i8 %2 to i32
  %arrayidx5.1 = getelementptr inbounds i8, i8* %pix2.addr.024, i32 1
  %3 = load i8, i8* %arrayidx5.1, align 1, !tbaa !6
  %conv6.1 = zext i8 %3 to i32
  %sub.1 = add i32 %add, %conv.1
  %add.1 = sub i32 %sub.1, %conv6.1
  %arrayidx.2 = getelementptr inbounds i8, i8* %pix1.addr.025, i32 2
  %4 = load i8, i8* %arrayidx.2, align 1, !tbaa !6
  %conv.2 = zext i8 %4 to i32
  %arrayidx5.2 = getelementptr inbounds i8, i8* %pix2.addr.024, i32 2
  %5 = load i8, i8* %arrayidx5.2, align 1, !tbaa !6
  %conv6.2 = zext i8 %5 to i32
  %sub.2 = add i32 %add.1, %conv.2
  %add.2 = sub i32 %sub.2, %conv6.2
  %arrayidx.3 = getelementptr inbounds i8, i8* %pix1.addr.025, i32 3
  %6 = load i8, i8* %arrayidx.3, align 1, !tbaa !6
  %conv.3 = zext i8 %6 to i32
  %arrayidx5.3 = getelementptr inbounds i8, i8* %pix2.addr.024, i32 3
  %7 = load i8, i8* %arrayidx5.3, align 1, !tbaa !6
  %conv6.3 = zext i8 %7 to i32
  %sub.3 = add i32 %add.2, %conv.3
  %add.3 = sub i32 %sub.3, %conv6.3
  %arrayidx.4 = getelementptr inbounds i8, i8* %pix1.addr.025, i32 4
  %8 = load i8, i8* %arrayidx.4, align 1, !tbaa !6
  %conv.4 = zext i8 %8 to i32
  %arrayidx5.4 = getelementptr inbounds i8, i8* %pix2.addr.024, i32 4
  %9 = load i8, i8* %arrayidx5.4, align 1, !tbaa !6
  %conv6.4 = zext i8 %9 to i32
  %sub.4 = add i32 %add.3, %conv.4
  %add.4 = sub i32 %sub.4, %conv6.4
  %arrayidx.5 = getelementptr inbounds i8, i8* %pix1.addr.025, i32 5
  %10 = load i8, i8* %arrayidx.5, align 1, !tbaa !6
  %conv.5 = zext i8 %10 to i32
  %arrayidx5.5 = getelementptr inbounds i8, i8* %pix2.addr.024, i32 5
  %11 = load i8, i8* %arrayidx5.5, align 1, !tbaa !6
  %conv6.5 = zext i8 %11 to i32
  %sub.5 = add i32 %add.4, %conv.5
  %add.5 = sub i32 %sub.5, %conv6.5
  %arrayidx.6 = getelementptr inbounds i8, i8* %pix1.addr.025, i32 6
  %12 = load i8, i8* %arrayidx.6, align 1, !tbaa !6
  %conv.6 = zext i8 %12 to i32
  %arrayidx5.6 = getelementptr inbounds i8, i8* %pix2.addr.024, i32 6
  %13 = load i8, i8* %arrayidx5.6, align 1, !tbaa !6
  %conv6.6 = zext i8 %13 to i32
  %sub.6 = add i32 %add.5, %conv.6
  %add.6 = sub i32 %sub.6, %conv6.6
  %arrayidx.7 = getelementptr inbounds i8, i8* %pix1.addr.025, i32 7
  %14 = load i8, i8* %arrayidx.7, align 1, !tbaa !6
  %conv.7 = zext i8 %14 to i32
  %arrayidx5.7 = getelementptr inbounds i8, i8* %pix2.addr.024, i32 7
  %15 = load i8, i8* %arrayidx5.7, align 1, !tbaa !6
  %conv6.7 = zext i8 %15 to i32
  %sub.7 = add i32 %add.6, %conv.7
  %add.7 = sub i32 %sub.7, %conv6.7
  %inc8 = add nuw nsw i32 %y.027, 1
  %add.ptr = getelementptr inbounds i8, i8* %pix1.addr.025, i32 %stride1
  %add.ptr9 = getelementptr inbounds i8, i8* %pix2.addr.024, i32 %stride2
  %exitcond = icmp eq i32 %inc8, %height
  br i1 %exitcond, label %for.cond.cleanup, label %for.cond1.preheader

for.cond.cleanup:                                 ; preds = %for.cond1.preheader
  %16 = icmp slt i32 %add.7, 0
  %neg = sub nsw i32 0, %add.7
  %spec.select = select i1 %16, i32 %neg, i32 %add.7
  ret i32 %spec.select

for.cond.cleanup.thread:                          ; preds = %entry
  ret i32 0
}

; Function Attrs: nounwind
define internal void @intra_sad_x3_4x4(i8* nocapture readonly %fenc, i8* %fdec, i32* nocapture %res) #0 {
entry:
  tail call void @x264_8_predict_4x4_v_c(i8* %fdec) #8
  %call = tail call i32 @x264_pixel_sad_4x4(i8* %fdec, i32 32, i8* %fenc, i32 16)
  store i32 %call, i32* %res, align 4, !tbaa !13
  tail call void @x264_8_predict_4x4_h_c(i8* %fdec) #8
  %call1 = tail call i32 @x264_pixel_sad_4x4(i8* %fdec, i32 32, i8* %fenc, i32 16)
  %arrayidx2 = getelementptr inbounds i32, i32* %res, i32 1
  store i32 %call1, i32* %arrayidx2, align 4, !tbaa !13
  tail call void @x264_8_predict_4x4_dc_c(i8* %fdec) #8
  %call3 = tail call i32 @x264_pixel_sad_4x4(i8* %fdec, i32 32, i8* %fenc, i32 16)
  %arrayidx4 = getelementptr inbounds i32, i32* %res, i32 2
  store i32 %call3, i32* %arrayidx4, align 4, !tbaa !13
  ret void
}

; Function Attrs: nounwind
define internal void @intra_satd_x3_4x4(i8* nocapture readonly %fenc, i8* %fdec, i32* nocapture %res) #0 {
entry:
  tail call void @x264_8_predict_4x4_v_c(i8* %fdec) #8
  %call = tail call i32 @x264_pixel_satd_4x4(i8* %fdec, i32 32, i8* %fenc, i32 16)
  store i32 %call, i32* %res, align 4, !tbaa !13
  tail call void @x264_8_predict_4x4_h_c(i8* %fdec) #8
  %call1 = tail call i32 @x264_pixel_satd_4x4(i8* %fdec, i32 32, i8* %fenc, i32 16)
  %arrayidx2 = getelementptr inbounds i32, i32* %res, i32 1
  store i32 %call1, i32* %arrayidx2, align 4, !tbaa !13
  tail call void @x264_8_predict_4x4_dc_c(i8* %fdec) #8
  %call3 = tail call i32 @x264_pixel_satd_4x4(i8* %fdec, i32 32, i8* %fenc, i32 16)
  %arrayidx4 = getelementptr inbounds i32, i32* %res, i32 2
  store i32 %call3, i32* %arrayidx4, align 4, !tbaa !13
  ret void
}

; Function Attrs: nounwind
define internal void @intra_sad_x3_8x8(i8* nocapture readonly %fenc, i8* %edge, i32* nocapture %res) #0 {
entry:
  %pix = alloca [256 x i8], align 16
  %0 = getelementptr inbounds [256 x i8], [256 x i8]* %pix, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %0) #8
  call void @x264_8_predict_8x8_v_c(i8* nonnull %0, i8* %edge) #8
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.cond1.preheader.i, %entry
  %y.026.i = phi i32 [ 0, %entry ], [ %inc9.i, %for.cond1.preheader.i ]
  %i_sum.025.i = phi i32 [ 0, %entry ], [ %add.7.i, %for.cond1.preheader.i ]
  %pix1.addr.024.i = phi i8* [ %0, %entry ], [ %add.ptr.i, %for.cond1.preheader.i ]
  %pix2.addr.023.i = phi i8* [ %fenc, %entry ], [ %add.ptr7.i, %for.cond1.preheader.i ]
  %1 = load i8, i8* %pix1.addr.024.i, align 1, !tbaa !6
  %conv.i = zext i8 %1 to i32
  %2 = load i8, i8* %pix2.addr.023.i, align 1, !tbaa !6
  %conv6.i = zext i8 %2 to i32
  %sub.i = sub nsw i32 %conv.i, %conv6.i
  %3 = icmp slt i32 %sub.i, 0
  %neg.i = sub nsw i32 0, %sub.i
  %4 = select i1 %3, i32 %neg.i, i32 %sub.i
  %add.i = add nsw i32 %4, %i_sum.025.i
  %arrayidx.1.i = getelementptr inbounds i8, i8* %pix1.addr.024.i, i32 1
  %5 = load i8, i8* %arrayidx.1.i, align 1, !tbaa !6
  %conv.1.i = zext i8 %5 to i32
  %arrayidx5.1.i = getelementptr inbounds i8, i8* %pix2.addr.023.i, i32 1
  %6 = load i8, i8* %arrayidx5.1.i, align 1, !tbaa !6
  %conv6.1.i = zext i8 %6 to i32
  %sub.1.i = sub nsw i32 %conv.1.i, %conv6.1.i
  %7 = icmp slt i32 %sub.1.i, 0
  %neg.1.i = sub nsw i32 0, %sub.1.i
  %8 = select i1 %7, i32 %neg.1.i, i32 %sub.1.i
  %add.1.i = add nsw i32 %add.i, %8
  %arrayidx.2.i = getelementptr inbounds i8, i8* %pix1.addr.024.i, i32 2
  %9 = load i8, i8* %arrayidx.2.i, align 1, !tbaa !6
  %conv.2.i = zext i8 %9 to i32
  %arrayidx5.2.i = getelementptr inbounds i8, i8* %pix2.addr.023.i, i32 2
  %10 = load i8, i8* %arrayidx5.2.i, align 1, !tbaa !6
  %conv6.2.i = zext i8 %10 to i32
  %sub.2.i = sub nsw i32 %conv.2.i, %conv6.2.i
  %11 = icmp slt i32 %sub.2.i, 0
  %neg.2.i = sub nsw i32 0, %sub.2.i
  %12 = select i1 %11, i32 %neg.2.i, i32 %sub.2.i
  %add.2.i = add nsw i32 %add.1.i, %12
  %arrayidx.3.i = getelementptr inbounds i8, i8* %pix1.addr.024.i, i32 3
  %13 = load i8, i8* %arrayidx.3.i, align 1, !tbaa !6
  %conv.3.i = zext i8 %13 to i32
  %arrayidx5.3.i = getelementptr inbounds i8, i8* %pix2.addr.023.i, i32 3
  %14 = load i8, i8* %arrayidx5.3.i, align 1, !tbaa !6
  %conv6.3.i = zext i8 %14 to i32
  %sub.3.i = sub nsw i32 %conv.3.i, %conv6.3.i
  %15 = icmp slt i32 %sub.3.i, 0
  %neg.3.i = sub nsw i32 0, %sub.3.i
  %16 = select i1 %15, i32 %neg.3.i, i32 %sub.3.i
  %add.3.i = add nsw i32 %add.2.i, %16
  %arrayidx.4.i = getelementptr inbounds i8, i8* %pix1.addr.024.i, i32 4
  %17 = load i8, i8* %arrayidx.4.i, align 1, !tbaa !6
  %conv.4.i = zext i8 %17 to i32
  %arrayidx5.4.i = getelementptr inbounds i8, i8* %pix2.addr.023.i, i32 4
  %18 = load i8, i8* %arrayidx5.4.i, align 1, !tbaa !6
  %conv6.4.i = zext i8 %18 to i32
  %sub.4.i = sub nsw i32 %conv.4.i, %conv6.4.i
  %19 = icmp slt i32 %sub.4.i, 0
  %neg.4.i = sub nsw i32 0, %sub.4.i
  %20 = select i1 %19, i32 %neg.4.i, i32 %sub.4.i
  %add.4.i = add nsw i32 %add.3.i, %20
  %arrayidx.5.i = getelementptr inbounds i8, i8* %pix1.addr.024.i, i32 5
  %21 = load i8, i8* %arrayidx.5.i, align 1, !tbaa !6
  %conv.5.i = zext i8 %21 to i32
  %arrayidx5.5.i = getelementptr inbounds i8, i8* %pix2.addr.023.i, i32 5
  %22 = load i8, i8* %arrayidx5.5.i, align 1, !tbaa !6
  %conv6.5.i = zext i8 %22 to i32
  %sub.5.i = sub nsw i32 %conv.5.i, %conv6.5.i
  %23 = icmp slt i32 %sub.5.i, 0
  %neg.5.i = sub nsw i32 0, %sub.5.i
  %24 = select i1 %23, i32 %neg.5.i, i32 %sub.5.i
  %add.5.i = add nsw i32 %add.4.i, %24
  %arrayidx.6.i = getelementptr inbounds i8, i8* %pix1.addr.024.i, i32 6
  %25 = load i8, i8* %arrayidx.6.i, align 1, !tbaa !6
  %conv.6.i = zext i8 %25 to i32
  %arrayidx5.6.i = getelementptr inbounds i8, i8* %pix2.addr.023.i, i32 6
  %26 = load i8, i8* %arrayidx5.6.i, align 1, !tbaa !6
  %conv6.6.i = zext i8 %26 to i32
  %sub.6.i = sub nsw i32 %conv.6.i, %conv6.6.i
  %27 = icmp slt i32 %sub.6.i, 0
  %neg.6.i = sub nsw i32 0, %sub.6.i
  %28 = select i1 %27, i32 %neg.6.i, i32 %sub.6.i
  %add.6.i = add nsw i32 %add.5.i, %28
  %arrayidx.7.i = getelementptr inbounds i8, i8* %pix1.addr.024.i, i32 7
  %29 = load i8, i8* %arrayidx.7.i, align 1, !tbaa !6
  %conv.7.i = zext i8 %29 to i32
  %arrayidx5.7.i = getelementptr inbounds i8, i8* %pix2.addr.023.i, i32 7
  %30 = load i8, i8* %arrayidx5.7.i, align 1, !tbaa !6
  %conv6.7.i = zext i8 %30 to i32
  %sub.7.i = sub nsw i32 %conv.7.i, %conv6.7.i
  %31 = icmp slt i32 %sub.7.i, 0
  %neg.7.i = sub nsw i32 0, %sub.7.i
  %32 = select i1 %31, i32 %neg.7.i, i32 %sub.7.i
  %add.7.i = add nsw i32 %add.6.i, %32
  %add.ptr.i = getelementptr inbounds i8, i8* %pix1.addr.024.i, i32 32
  %add.ptr7.i = getelementptr inbounds i8, i8* %pix2.addr.023.i, i32 16
  %inc9.i = add nuw nsw i32 %y.026.i, 1
  %exitcond.i = icmp eq i32 %inc9.i, 8
  br i1 %exitcond.i, label %x264_pixel_sad_8x8.exit, label %for.cond1.preheader.i

x264_pixel_sad_8x8.exit:                          ; preds = %for.cond1.preheader.i
  store i32 %add.7.i, i32* %res, align 4, !tbaa !13
  call void @x264_8_predict_8x8_h_c(i8* nonnull %0, i8* %edge) #8
  br label %for.cond1.preheader.i142

for.cond1.preheader.i142:                         ; preds = %for.cond1.preheader.i142, %x264_pixel_sad_8x8.exit
  %y.026.i80 = phi i32 [ 0, %x264_pixel_sad_8x8.exit ], [ %inc9.i140, %for.cond1.preheader.i142 ]
  %i_sum.025.i81 = phi i32 [ 0, %x264_pixel_sad_8x8.exit ], [ %add.7.i137, %for.cond1.preheader.i142 ]
  %pix1.addr.024.i82 = phi i8* [ %0, %x264_pixel_sad_8x8.exit ], [ %add.ptr.i138, %for.cond1.preheader.i142 ]
  %pix2.addr.023.i83 = phi i8* [ %fenc, %x264_pixel_sad_8x8.exit ], [ %add.ptr7.i139, %for.cond1.preheader.i142 ]
  %33 = load i8, i8* %pix1.addr.024.i82, align 1, !tbaa !6
  %conv.i84 = zext i8 %33 to i32
  %34 = load i8, i8* %pix2.addr.023.i83, align 1, !tbaa !6
  %conv6.i85 = zext i8 %34 to i32
  %sub.i86 = sub nsw i32 %conv.i84, %conv6.i85
  %35 = icmp slt i32 %sub.i86, 0
  %neg.i87 = sub nsw i32 0, %sub.i86
  %36 = select i1 %35, i32 %neg.i87, i32 %sub.i86
  %add.i88 = add nsw i32 %36, %i_sum.025.i81
  %arrayidx.1.i89 = getelementptr inbounds i8, i8* %pix1.addr.024.i82, i32 1
  %37 = load i8, i8* %arrayidx.1.i89, align 1, !tbaa !6
  %conv.1.i90 = zext i8 %37 to i32
  %arrayidx5.1.i91 = getelementptr inbounds i8, i8* %pix2.addr.023.i83, i32 1
  %38 = load i8, i8* %arrayidx5.1.i91, align 1, !tbaa !6
  %conv6.1.i92 = zext i8 %38 to i32
  %sub.1.i93 = sub nsw i32 %conv.1.i90, %conv6.1.i92
  %39 = icmp slt i32 %sub.1.i93, 0
  %neg.1.i94 = sub nsw i32 0, %sub.1.i93
  %40 = select i1 %39, i32 %neg.1.i94, i32 %sub.1.i93
  %add.1.i95 = add nsw i32 %add.i88, %40
  %arrayidx.2.i96 = getelementptr inbounds i8, i8* %pix1.addr.024.i82, i32 2
  %41 = load i8, i8* %arrayidx.2.i96, align 1, !tbaa !6
  %conv.2.i97 = zext i8 %41 to i32
  %arrayidx5.2.i98 = getelementptr inbounds i8, i8* %pix2.addr.023.i83, i32 2
  %42 = load i8, i8* %arrayidx5.2.i98, align 1, !tbaa !6
  %conv6.2.i99 = zext i8 %42 to i32
  %sub.2.i100 = sub nsw i32 %conv.2.i97, %conv6.2.i99
  %43 = icmp slt i32 %sub.2.i100, 0
  %neg.2.i101 = sub nsw i32 0, %sub.2.i100
  %44 = select i1 %43, i32 %neg.2.i101, i32 %sub.2.i100
  %add.2.i102 = add nsw i32 %add.1.i95, %44
  %arrayidx.3.i103 = getelementptr inbounds i8, i8* %pix1.addr.024.i82, i32 3
  %45 = load i8, i8* %arrayidx.3.i103, align 1, !tbaa !6
  %conv.3.i104 = zext i8 %45 to i32
  %arrayidx5.3.i105 = getelementptr inbounds i8, i8* %pix2.addr.023.i83, i32 3
  %46 = load i8, i8* %arrayidx5.3.i105, align 1, !tbaa !6
  %conv6.3.i106 = zext i8 %46 to i32
  %sub.3.i107 = sub nsw i32 %conv.3.i104, %conv6.3.i106
  %47 = icmp slt i32 %sub.3.i107, 0
  %neg.3.i108 = sub nsw i32 0, %sub.3.i107
  %48 = select i1 %47, i32 %neg.3.i108, i32 %sub.3.i107
  %add.3.i109 = add nsw i32 %add.2.i102, %48
  %arrayidx.4.i110 = getelementptr inbounds i8, i8* %pix1.addr.024.i82, i32 4
  %49 = load i8, i8* %arrayidx.4.i110, align 1, !tbaa !6
  %conv.4.i111 = zext i8 %49 to i32
  %arrayidx5.4.i112 = getelementptr inbounds i8, i8* %pix2.addr.023.i83, i32 4
  %50 = load i8, i8* %arrayidx5.4.i112, align 1, !tbaa !6
  %conv6.4.i113 = zext i8 %50 to i32
  %sub.4.i114 = sub nsw i32 %conv.4.i111, %conv6.4.i113
  %51 = icmp slt i32 %sub.4.i114, 0
  %neg.4.i115 = sub nsw i32 0, %sub.4.i114
  %52 = select i1 %51, i32 %neg.4.i115, i32 %sub.4.i114
  %add.4.i116 = add nsw i32 %add.3.i109, %52
  %arrayidx.5.i117 = getelementptr inbounds i8, i8* %pix1.addr.024.i82, i32 5
  %53 = load i8, i8* %arrayidx.5.i117, align 1, !tbaa !6
  %conv.5.i118 = zext i8 %53 to i32
  %arrayidx5.5.i119 = getelementptr inbounds i8, i8* %pix2.addr.023.i83, i32 5
  %54 = load i8, i8* %arrayidx5.5.i119, align 1, !tbaa !6
  %conv6.5.i120 = zext i8 %54 to i32
  %sub.5.i121 = sub nsw i32 %conv.5.i118, %conv6.5.i120
  %55 = icmp slt i32 %sub.5.i121, 0
  %neg.5.i122 = sub nsw i32 0, %sub.5.i121
  %56 = select i1 %55, i32 %neg.5.i122, i32 %sub.5.i121
  %add.5.i123 = add nsw i32 %add.4.i116, %56
  %arrayidx.6.i124 = getelementptr inbounds i8, i8* %pix1.addr.024.i82, i32 6
  %57 = load i8, i8* %arrayidx.6.i124, align 1, !tbaa !6
  %conv.6.i125 = zext i8 %57 to i32
  %arrayidx5.6.i126 = getelementptr inbounds i8, i8* %pix2.addr.023.i83, i32 6
  %58 = load i8, i8* %arrayidx5.6.i126, align 1, !tbaa !6
  %conv6.6.i127 = zext i8 %58 to i32
  %sub.6.i128 = sub nsw i32 %conv.6.i125, %conv6.6.i127
  %59 = icmp slt i32 %sub.6.i128, 0
  %neg.6.i129 = sub nsw i32 0, %sub.6.i128
  %60 = select i1 %59, i32 %neg.6.i129, i32 %sub.6.i128
  %add.6.i130 = add nsw i32 %add.5.i123, %60
  %arrayidx.7.i131 = getelementptr inbounds i8, i8* %pix1.addr.024.i82, i32 7
  %61 = load i8, i8* %arrayidx.7.i131, align 1, !tbaa !6
  %conv.7.i132 = zext i8 %61 to i32
  %arrayidx5.7.i133 = getelementptr inbounds i8, i8* %pix2.addr.023.i83, i32 7
  %62 = load i8, i8* %arrayidx5.7.i133, align 1, !tbaa !6
  %conv6.7.i134 = zext i8 %62 to i32
  %sub.7.i135 = sub nsw i32 %conv.7.i132, %conv6.7.i134
  %63 = icmp slt i32 %sub.7.i135, 0
  %neg.7.i136 = sub nsw i32 0, %sub.7.i135
  %64 = select i1 %63, i32 %neg.7.i136, i32 %sub.7.i135
  %add.7.i137 = add nsw i32 %add.6.i130, %64
  %add.ptr.i138 = getelementptr inbounds i8, i8* %pix1.addr.024.i82, i32 32
  %add.ptr7.i139 = getelementptr inbounds i8, i8* %pix2.addr.023.i83, i32 16
  %inc9.i140 = add nuw nsw i32 %y.026.i80, 1
  %exitcond.i141 = icmp eq i32 %inc9.i140, 8
  br i1 %exitcond.i141, label %x264_pixel_sad_8x8.exit143, label %for.cond1.preheader.i142

x264_pixel_sad_8x8.exit143:                       ; preds = %for.cond1.preheader.i142
  %arrayidx5 = getelementptr inbounds i32, i32* %res, i32 1
  store i32 %add.7.i137, i32* %arrayidx5, align 4, !tbaa !13
  call void @x264_8_predict_8x8_dc_c(i8* nonnull %0, i8* %edge) #8
  br label %for.cond1.preheader.i78

for.cond1.preheader.i78:                          ; preds = %for.cond1.preheader.i78, %x264_pixel_sad_8x8.exit143
  %y.026.i16 = phi i32 [ 0, %x264_pixel_sad_8x8.exit143 ], [ %inc9.i76, %for.cond1.preheader.i78 ]
  %i_sum.025.i17 = phi i32 [ 0, %x264_pixel_sad_8x8.exit143 ], [ %add.7.i73, %for.cond1.preheader.i78 ]
  %pix1.addr.024.i18 = phi i8* [ %0, %x264_pixel_sad_8x8.exit143 ], [ %add.ptr.i74, %for.cond1.preheader.i78 ]
  %pix2.addr.023.i19 = phi i8* [ %fenc, %x264_pixel_sad_8x8.exit143 ], [ %add.ptr7.i75, %for.cond1.preheader.i78 ]
  %65 = load i8, i8* %pix1.addr.024.i18, align 1, !tbaa !6
  %conv.i20 = zext i8 %65 to i32
  %66 = load i8, i8* %pix2.addr.023.i19, align 1, !tbaa !6
  %conv6.i21 = zext i8 %66 to i32
  %sub.i22 = sub nsw i32 %conv.i20, %conv6.i21
  %67 = icmp slt i32 %sub.i22, 0
  %neg.i23 = sub nsw i32 0, %sub.i22
  %68 = select i1 %67, i32 %neg.i23, i32 %sub.i22
  %add.i24 = add nsw i32 %68, %i_sum.025.i17
  %arrayidx.1.i25 = getelementptr inbounds i8, i8* %pix1.addr.024.i18, i32 1
  %69 = load i8, i8* %arrayidx.1.i25, align 1, !tbaa !6
  %conv.1.i26 = zext i8 %69 to i32
  %arrayidx5.1.i27 = getelementptr inbounds i8, i8* %pix2.addr.023.i19, i32 1
  %70 = load i8, i8* %arrayidx5.1.i27, align 1, !tbaa !6
  %conv6.1.i28 = zext i8 %70 to i32
  %sub.1.i29 = sub nsw i32 %conv.1.i26, %conv6.1.i28
  %71 = icmp slt i32 %sub.1.i29, 0
  %neg.1.i30 = sub nsw i32 0, %sub.1.i29
  %72 = select i1 %71, i32 %neg.1.i30, i32 %sub.1.i29
  %add.1.i31 = add nsw i32 %add.i24, %72
  %arrayidx.2.i32 = getelementptr inbounds i8, i8* %pix1.addr.024.i18, i32 2
  %73 = load i8, i8* %arrayidx.2.i32, align 1, !tbaa !6
  %conv.2.i33 = zext i8 %73 to i32
  %arrayidx5.2.i34 = getelementptr inbounds i8, i8* %pix2.addr.023.i19, i32 2
  %74 = load i8, i8* %arrayidx5.2.i34, align 1, !tbaa !6
  %conv6.2.i35 = zext i8 %74 to i32
  %sub.2.i36 = sub nsw i32 %conv.2.i33, %conv6.2.i35
  %75 = icmp slt i32 %sub.2.i36, 0
  %neg.2.i37 = sub nsw i32 0, %sub.2.i36
  %76 = select i1 %75, i32 %neg.2.i37, i32 %sub.2.i36
  %add.2.i38 = add nsw i32 %add.1.i31, %76
  %arrayidx.3.i39 = getelementptr inbounds i8, i8* %pix1.addr.024.i18, i32 3
  %77 = load i8, i8* %arrayidx.3.i39, align 1, !tbaa !6
  %conv.3.i40 = zext i8 %77 to i32
  %arrayidx5.3.i41 = getelementptr inbounds i8, i8* %pix2.addr.023.i19, i32 3
  %78 = load i8, i8* %arrayidx5.3.i41, align 1, !tbaa !6
  %conv6.3.i42 = zext i8 %78 to i32
  %sub.3.i43 = sub nsw i32 %conv.3.i40, %conv6.3.i42
  %79 = icmp slt i32 %sub.3.i43, 0
  %neg.3.i44 = sub nsw i32 0, %sub.3.i43
  %80 = select i1 %79, i32 %neg.3.i44, i32 %sub.3.i43
  %add.3.i45 = add nsw i32 %add.2.i38, %80
  %arrayidx.4.i46 = getelementptr inbounds i8, i8* %pix1.addr.024.i18, i32 4
  %81 = load i8, i8* %arrayidx.4.i46, align 1, !tbaa !6
  %conv.4.i47 = zext i8 %81 to i32
  %arrayidx5.4.i48 = getelementptr inbounds i8, i8* %pix2.addr.023.i19, i32 4
  %82 = load i8, i8* %arrayidx5.4.i48, align 1, !tbaa !6
  %conv6.4.i49 = zext i8 %82 to i32
  %sub.4.i50 = sub nsw i32 %conv.4.i47, %conv6.4.i49
  %83 = icmp slt i32 %sub.4.i50, 0
  %neg.4.i51 = sub nsw i32 0, %sub.4.i50
  %84 = select i1 %83, i32 %neg.4.i51, i32 %sub.4.i50
  %add.4.i52 = add nsw i32 %add.3.i45, %84
  %arrayidx.5.i53 = getelementptr inbounds i8, i8* %pix1.addr.024.i18, i32 5
  %85 = load i8, i8* %arrayidx.5.i53, align 1, !tbaa !6
  %conv.5.i54 = zext i8 %85 to i32
  %arrayidx5.5.i55 = getelementptr inbounds i8, i8* %pix2.addr.023.i19, i32 5
  %86 = load i8, i8* %arrayidx5.5.i55, align 1, !tbaa !6
  %conv6.5.i56 = zext i8 %86 to i32
  %sub.5.i57 = sub nsw i32 %conv.5.i54, %conv6.5.i56
  %87 = icmp slt i32 %sub.5.i57, 0
  %neg.5.i58 = sub nsw i32 0, %sub.5.i57
  %88 = select i1 %87, i32 %neg.5.i58, i32 %sub.5.i57
  %add.5.i59 = add nsw i32 %add.4.i52, %88
  %arrayidx.6.i60 = getelementptr inbounds i8, i8* %pix1.addr.024.i18, i32 6
  %89 = load i8, i8* %arrayidx.6.i60, align 1, !tbaa !6
  %conv.6.i61 = zext i8 %89 to i32
  %arrayidx5.6.i62 = getelementptr inbounds i8, i8* %pix2.addr.023.i19, i32 6
  %90 = load i8, i8* %arrayidx5.6.i62, align 1, !tbaa !6
  %conv6.6.i63 = zext i8 %90 to i32
  %sub.6.i64 = sub nsw i32 %conv.6.i61, %conv6.6.i63
  %91 = icmp slt i32 %sub.6.i64, 0
  %neg.6.i65 = sub nsw i32 0, %sub.6.i64
  %92 = select i1 %91, i32 %neg.6.i65, i32 %sub.6.i64
  %add.6.i66 = add nsw i32 %add.5.i59, %92
  %arrayidx.7.i67 = getelementptr inbounds i8, i8* %pix1.addr.024.i18, i32 7
  %93 = load i8, i8* %arrayidx.7.i67, align 1, !tbaa !6
  %conv.7.i68 = zext i8 %93 to i32
  %arrayidx5.7.i69 = getelementptr inbounds i8, i8* %pix2.addr.023.i19, i32 7
  %94 = load i8, i8* %arrayidx5.7.i69, align 1, !tbaa !6
  %conv6.7.i70 = zext i8 %94 to i32
  %sub.7.i71 = sub nsw i32 %conv.7.i68, %conv6.7.i70
  %95 = icmp slt i32 %sub.7.i71, 0
  %neg.7.i72 = sub nsw i32 0, %sub.7.i71
  %96 = select i1 %95, i32 %neg.7.i72, i32 %sub.7.i71
  %add.7.i73 = add nsw i32 %add.6.i66, %96
  %add.ptr.i74 = getelementptr inbounds i8, i8* %pix1.addr.024.i18, i32 32
  %add.ptr7.i75 = getelementptr inbounds i8, i8* %pix2.addr.023.i19, i32 16
  %inc9.i76 = add nuw nsw i32 %y.026.i16, 1
  %exitcond.i77 = icmp eq i32 %inc9.i76, 8
  br i1 %exitcond.i77, label %x264_pixel_sad_8x8.exit79, label %for.cond1.preheader.i78

x264_pixel_sad_8x8.exit79:                        ; preds = %for.cond1.preheader.i78
  %arrayidx9 = getelementptr inbounds i32, i32* %res, i32 2
  store i32 %add.7.i73, i32* %arrayidx9, align 4, !tbaa !13
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %0) #8
  ret void
}

; Function Attrs: nounwind
define internal void @intra_sa8d_x3_8x8(i8* nocapture readonly %fenc, i8* %edge, i32* nocapture %res) #0 {
entry:
  %pix = alloca [256 x i8], align 16
  %0 = getelementptr inbounds [256 x i8], [256 x i8]* %pix, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %0) #8
  call void @x264_8_predict_8x8_v_c(i8* nonnull %0, i8* %edge) #8
  %call.i = call fastcc i32 @sa8d_8x8(i8* nonnull %0, i32 32, i8* %fenc, i32 16) #8
  %add.i = add nsw i32 %call.i, 2
  %shr.i = ashr i32 %add.i, 2
  store i32 %shr.i, i32* %res, align 4, !tbaa !13
  call void @x264_8_predict_8x8_h_c(i8* nonnull %0, i8* %edge) #8
  %call.i16 = call fastcc i32 @sa8d_8x8(i8* nonnull %0, i32 32, i8* %fenc, i32 16) #8
  %add.i17 = add nsw i32 %call.i16, 2
  %shr.i18 = ashr i32 %add.i17, 2
  %arrayidx5 = getelementptr inbounds i32, i32* %res, i32 1
  store i32 %shr.i18, i32* %arrayidx5, align 4, !tbaa !13
  call void @x264_8_predict_8x8_dc_c(i8* nonnull %0, i8* %edge) #8
  %call.i19 = call fastcc i32 @sa8d_8x8(i8* nonnull %0, i32 32, i8* %fenc, i32 16) #8
  %add.i20 = add nsw i32 %call.i19, 2
  %shr.i21 = ashr i32 %add.i20, 2
  %arrayidx9 = getelementptr inbounds i32, i32* %res, i32 2
  store i32 %shr.i21, i32* %arrayidx9, align 4, !tbaa !13
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %0) #8
  ret void
}

; Function Attrs: nounwind
define internal void @intra_sad_x3_8x8c(i8* nocapture readonly %fenc, i8* %fdec, i32* nocapture %res) #0 {
entry:
  tail call void @x264_8_predict_8x8c_dc_c(i8* %fdec) #8
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.cond1.preheader.i, %entry
  %y.026.i = phi i32 [ 0, %entry ], [ %inc9.i, %for.cond1.preheader.i ]
  %i_sum.025.i = phi i32 [ 0, %entry ], [ %add.7.i, %for.cond1.preheader.i ]
  %pix1.addr.024.i = phi i8* [ %fdec, %entry ], [ %add.ptr.i, %for.cond1.preheader.i ]
  %pix2.addr.023.i = phi i8* [ %fenc, %entry ], [ %add.ptr7.i, %for.cond1.preheader.i ]
  %0 = load i8, i8* %pix1.addr.024.i, align 1, !tbaa !6
  %conv.i = zext i8 %0 to i32
  %1 = load i8, i8* %pix2.addr.023.i, align 1, !tbaa !6
  %conv6.i = zext i8 %1 to i32
  %sub.i = sub nsw i32 %conv.i, %conv6.i
  %2 = icmp slt i32 %sub.i, 0
  %neg.i = sub nsw i32 0, %sub.i
  %3 = select i1 %2, i32 %neg.i, i32 %sub.i
  %add.i = add nsw i32 %3, %i_sum.025.i
  %arrayidx.1.i = getelementptr inbounds i8, i8* %pix1.addr.024.i, i32 1
  %4 = load i8, i8* %arrayidx.1.i, align 1, !tbaa !6
  %conv.1.i = zext i8 %4 to i32
  %arrayidx5.1.i = getelementptr inbounds i8, i8* %pix2.addr.023.i, i32 1
  %5 = load i8, i8* %arrayidx5.1.i, align 1, !tbaa !6
  %conv6.1.i = zext i8 %5 to i32
  %sub.1.i = sub nsw i32 %conv.1.i, %conv6.1.i
  %6 = icmp slt i32 %sub.1.i, 0
  %neg.1.i = sub nsw i32 0, %sub.1.i
  %7 = select i1 %6, i32 %neg.1.i, i32 %sub.1.i
  %add.1.i = add nsw i32 %add.i, %7
  %arrayidx.2.i = getelementptr inbounds i8, i8* %pix1.addr.024.i, i32 2
  %8 = load i8, i8* %arrayidx.2.i, align 1, !tbaa !6
  %conv.2.i = zext i8 %8 to i32
  %arrayidx5.2.i = getelementptr inbounds i8, i8* %pix2.addr.023.i, i32 2
  %9 = load i8, i8* %arrayidx5.2.i, align 1, !tbaa !6
  %conv6.2.i = zext i8 %9 to i32
  %sub.2.i = sub nsw i32 %conv.2.i, %conv6.2.i
  %10 = icmp slt i32 %sub.2.i, 0
  %neg.2.i = sub nsw i32 0, %sub.2.i
  %11 = select i1 %10, i32 %neg.2.i, i32 %sub.2.i
  %add.2.i = add nsw i32 %add.1.i, %11
  %arrayidx.3.i = getelementptr inbounds i8, i8* %pix1.addr.024.i, i32 3
  %12 = load i8, i8* %arrayidx.3.i, align 1, !tbaa !6
  %conv.3.i = zext i8 %12 to i32
  %arrayidx5.3.i = getelementptr inbounds i8, i8* %pix2.addr.023.i, i32 3
  %13 = load i8, i8* %arrayidx5.3.i, align 1, !tbaa !6
  %conv6.3.i = zext i8 %13 to i32
  %sub.3.i = sub nsw i32 %conv.3.i, %conv6.3.i
  %14 = icmp slt i32 %sub.3.i, 0
  %neg.3.i = sub nsw i32 0, %sub.3.i
  %15 = select i1 %14, i32 %neg.3.i, i32 %sub.3.i
  %add.3.i = add nsw i32 %add.2.i, %15
  %arrayidx.4.i = getelementptr inbounds i8, i8* %pix1.addr.024.i, i32 4
  %16 = load i8, i8* %arrayidx.4.i, align 1, !tbaa !6
  %conv.4.i = zext i8 %16 to i32
  %arrayidx5.4.i = getelementptr inbounds i8, i8* %pix2.addr.023.i, i32 4
  %17 = load i8, i8* %arrayidx5.4.i, align 1, !tbaa !6
  %conv6.4.i = zext i8 %17 to i32
  %sub.4.i = sub nsw i32 %conv.4.i, %conv6.4.i
  %18 = icmp slt i32 %sub.4.i, 0
  %neg.4.i = sub nsw i32 0, %sub.4.i
  %19 = select i1 %18, i32 %neg.4.i, i32 %sub.4.i
  %add.4.i = add nsw i32 %add.3.i, %19
  %arrayidx.5.i = getelementptr inbounds i8, i8* %pix1.addr.024.i, i32 5
  %20 = load i8, i8* %arrayidx.5.i, align 1, !tbaa !6
  %conv.5.i = zext i8 %20 to i32
  %arrayidx5.5.i = getelementptr inbounds i8, i8* %pix2.addr.023.i, i32 5
  %21 = load i8, i8* %arrayidx5.5.i, align 1, !tbaa !6
  %conv6.5.i = zext i8 %21 to i32
  %sub.5.i = sub nsw i32 %conv.5.i, %conv6.5.i
  %22 = icmp slt i32 %sub.5.i, 0
  %neg.5.i = sub nsw i32 0, %sub.5.i
  %23 = select i1 %22, i32 %neg.5.i, i32 %sub.5.i
  %add.5.i = add nsw i32 %add.4.i, %23
  %arrayidx.6.i = getelementptr inbounds i8, i8* %pix1.addr.024.i, i32 6
  %24 = load i8, i8* %arrayidx.6.i, align 1, !tbaa !6
  %conv.6.i = zext i8 %24 to i32
  %arrayidx5.6.i = getelementptr inbounds i8, i8* %pix2.addr.023.i, i32 6
  %25 = load i8, i8* %arrayidx5.6.i, align 1, !tbaa !6
  %conv6.6.i = zext i8 %25 to i32
  %sub.6.i = sub nsw i32 %conv.6.i, %conv6.6.i
  %26 = icmp slt i32 %sub.6.i, 0
  %neg.6.i = sub nsw i32 0, %sub.6.i
  %27 = select i1 %26, i32 %neg.6.i, i32 %sub.6.i
  %add.6.i = add nsw i32 %add.5.i, %27
  %arrayidx.7.i = getelementptr inbounds i8, i8* %pix1.addr.024.i, i32 7
  %28 = load i8, i8* %arrayidx.7.i, align 1, !tbaa !6
  %conv.7.i = zext i8 %28 to i32
  %arrayidx5.7.i = getelementptr inbounds i8, i8* %pix2.addr.023.i, i32 7
  %29 = load i8, i8* %arrayidx5.7.i, align 1, !tbaa !6
  %conv6.7.i = zext i8 %29 to i32
  %sub.7.i = sub nsw i32 %conv.7.i, %conv6.7.i
  %30 = icmp slt i32 %sub.7.i, 0
  %neg.7.i = sub nsw i32 0, %sub.7.i
  %31 = select i1 %30, i32 %neg.7.i, i32 %sub.7.i
  %add.7.i = add nsw i32 %add.6.i, %31
  %add.ptr.i = getelementptr inbounds i8, i8* %pix1.addr.024.i, i32 32
  %add.ptr7.i = getelementptr inbounds i8, i8* %pix2.addr.023.i, i32 16
  %inc9.i = add nuw nsw i32 %y.026.i, 1
  %exitcond.i = icmp eq i32 %inc9.i, 8
  br i1 %exitcond.i, label %x264_pixel_sad_8x8.exit, label %for.cond1.preheader.i

x264_pixel_sad_8x8.exit:                          ; preds = %for.cond1.preheader.i
  store i32 %add.7.i, i32* %res, align 4, !tbaa !13
  tail call void @x264_8_predict_8x8c_h_c(i8* %fdec) #8
  br label %for.cond1.preheader.i140

for.cond1.preheader.i140:                         ; preds = %for.cond1.preheader.i140, %x264_pixel_sad_8x8.exit
  %y.026.i78 = phi i32 [ 0, %x264_pixel_sad_8x8.exit ], [ %inc9.i138, %for.cond1.preheader.i140 ]
  %i_sum.025.i79 = phi i32 [ 0, %x264_pixel_sad_8x8.exit ], [ %add.7.i135, %for.cond1.preheader.i140 ]
  %pix1.addr.024.i80 = phi i8* [ %fdec, %x264_pixel_sad_8x8.exit ], [ %add.ptr.i136, %for.cond1.preheader.i140 ]
  %pix2.addr.023.i81 = phi i8* [ %fenc, %x264_pixel_sad_8x8.exit ], [ %add.ptr7.i137, %for.cond1.preheader.i140 ]
  %32 = load i8, i8* %pix1.addr.024.i80, align 1, !tbaa !6
  %conv.i82 = zext i8 %32 to i32
  %33 = load i8, i8* %pix2.addr.023.i81, align 1, !tbaa !6
  %conv6.i83 = zext i8 %33 to i32
  %sub.i84 = sub nsw i32 %conv.i82, %conv6.i83
  %34 = icmp slt i32 %sub.i84, 0
  %neg.i85 = sub nsw i32 0, %sub.i84
  %35 = select i1 %34, i32 %neg.i85, i32 %sub.i84
  %add.i86 = add nsw i32 %35, %i_sum.025.i79
  %arrayidx.1.i87 = getelementptr inbounds i8, i8* %pix1.addr.024.i80, i32 1
  %36 = load i8, i8* %arrayidx.1.i87, align 1, !tbaa !6
  %conv.1.i88 = zext i8 %36 to i32
  %arrayidx5.1.i89 = getelementptr inbounds i8, i8* %pix2.addr.023.i81, i32 1
  %37 = load i8, i8* %arrayidx5.1.i89, align 1, !tbaa !6
  %conv6.1.i90 = zext i8 %37 to i32
  %sub.1.i91 = sub nsw i32 %conv.1.i88, %conv6.1.i90
  %38 = icmp slt i32 %sub.1.i91, 0
  %neg.1.i92 = sub nsw i32 0, %sub.1.i91
  %39 = select i1 %38, i32 %neg.1.i92, i32 %sub.1.i91
  %add.1.i93 = add nsw i32 %add.i86, %39
  %arrayidx.2.i94 = getelementptr inbounds i8, i8* %pix1.addr.024.i80, i32 2
  %40 = load i8, i8* %arrayidx.2.i94, align 1, !tbaa !6
  %conv.2.i95 = zext i8 %40 to i32
  %arrayidx5.2.i96 = getelementptr inbounds i8, i8* %pix2.addr.023.i81, i32 2
  %41 = load i8, i8* %arrayidx5.2.i96, align 1, !tbaa !6
  %conv6.2.i97 = zext i8 %41 to i32
  %sub.2.i98 = sub nsw i32 %conv.2.i95, %conv6.2.i97
  %42 = icmp slt i32 %sub.2.i98, 0
  %neg.2.i99 = sub nsw i32 0, %sub.2.i98
  %43 = select i1 %42, i32 %neg.2.i99, i32 %sub.2.i98
  %add.2.i100 = add nsw i32 %add.1.i93, %43
  %arrayidx.3.i101 = getelementptr inbounds i8, i8* %pix1.addr.024.i80, i32 3
  %44 = load i8, i8* %arrayidx.3.i101, align 1, !tbaa !6
  %conv.3.i102 = zext i8 %44 to i32
  %arrayidx5.3.i103 = getelementptr inbounds i8, i8* %pix2.addr.023.i81, i32 3
  %45 = load i8, i8* %arrayidx5.3.i103, align 1, !tbaa !6
  %conv6.3.i104 = zext i8 %45 to i32
  %sub.3.i105 = sub nsw i32 %conv.3.i102, %conv6.3.i104
  %46 = icmp slt i32 %sub.3.i105, 0
  %neg.3.i106 = sub nsw i32 0, %sub.3.i105
  %47 = select i1 %46, i32 %neg.3.i106, i32 %sub.3.i105
  %add.3.i107 = add nsw i32 %add.2.i100, %47
  %arrayidx.4.i108 = getelementptr inbounds i8, i8* %pix1.addr.024.i80, i32 4
  %48 = load i8, i8* %arrayidx.4.i108, align 1, !tbaa !6
  %conv.4.i109 = zext i8 %48 to i32
  %arrayidx5.4.i110 = getelementptr inbounds i8, i8* %pix2.addr.023.i81, i32 4
  %49 = load i8, i8* %arrayidx5.4.i110, align 1, !tbaa !6
  %conv6.4.i111 = zext i8 %49 to i32
  %sub.4.i112 = sub nsw i32 %conv.4.i109, %conv6.4.i111
  %50 = icmp slt i32 %sub.4.i112, 0
  %neg.4.i113 = sub nsw i32 0, %sub.4.i112
  %51 = select i1 %50, i32 %neg.4.i113, i32 %sub.4.i112
  %add.4.i114 = add nsw i32 %add.3.i107, %51
  %arrayidx.5.i115 = getelementptr inbounds i8, i8* %pix1.addr.024.i80, i32 5
  %52 = load i8, i8* %arrayidx.5.i115, align 1, !tbaa !6
  %conv.5.i116 = zext i8 %52 to i32
  %arrayidx5.5.i117 = getelementptr inbounds i8, i8* %pix2.addr.023.i81, i32 5
  %53 = load i8, i8* %arrayidx5.5.i117, align 1, !tbaa !6
  %conv6.5.i118 = zext i8 %53 to i32
  %sub.5.i119 = sub nsw i32 %conv.5.i116, %conv6.5.i118
  %54 = icmp slt i32 %sub.5.i119, 0
  %neg.5.i120 = sub nsw i32 0, %sub.5.i119
  %55 = select i1 %54, i32 %neg.5.i120, i32 %sub.5.i119
  %add.5.i121 = add nsw i32 %add.4.i114, %55
  %arrayidx.6.i122 = getelementptr inbounds i8, i8* %pix1.addr.024.i80, i32 6
  %56 = load i8, i8* %arrayidx.6.i122, align 1, !tbaa !6
  %conv.6.i123 = zext i8 %56 to i32
  %arrayidx5.6.i124 = getelementptr inbounds i8, i8* %pix2.addr.023.i81, i32 6
  %57 = load i8, i8* %arrayidx5.6.i124, align 1, !tbaa !6
  %conv6.6.i125 = zext i8 %57 to i32
  %sub.6.i126 = sub nsw i32 %conv.6.i123, %conv6.6.i125
  %58 = icmp slt i32 %sub.6.i126, 0
  %neg.6.i127 = sub nsw i32 0, %sub.6.i126
  %59 = select i1 %58, i32 %neg.6.i127, i32 %sub.6.i126
  %add.6.i128 = add nsw i32 %add.5.i121, %59
  %arrayidx.7.i129 = getelementptr inbounds i8, i8* %pix1.addr.024.i80, i32 7
  %60 = load i8, i8* %arrayidx.7.i129, align 1, !tbaa !6
  %conv.7.i130 = zext i8 %60 to i32
  %arrayidx5.7.i131 = getelementptr inbounds i8, i8* %pix2.addr.023.i81, i32 7
  %61 = load i8, i8* %arrayidx5.7.i131, align 1, !tbaa !6
  %conv6.7.i132 = zext i8 %61 to i32
  %sub.7.i133 = sub nsw i32 %conv.7.i130, %conv6.7.i132
  %62 = icmp slt i32 %sub.7.i133, 0
  %neg.7.i134 = sub nsw i32 0, %sub.7.i133
  %63 = select i1 %62, i32 %neg.7.i134, i32 %sub.7.i133
  %add.7.i135 = add nsw i32 %add.6.i128, %63
  %add.ptr.i136 = getelementptr inbounds i8, i8* %pix1.addr.024.i80, i32 32
  %add.ptr7.i137 = getelementptr inbounds i8, i8* %pix2.addr.023.i81, i32 16
  %inc9.i138 = add nuw nsw i32 %y.026.i78, 1
  %exitcond.i139 = icmp eq i32 %inc9.i138, 8
  br i1 %exitcond.i139, label %x264_pixel_sad_8x8.exit141, label %for.cond1.preheader.i140

x264_pixel_sad_8x8.exit141:                       ; preds = %for.cond1.preheader.i140
  %arrayidx2 = getelementptr inbounds i32, i32* %res, i32 1
  store i32 %add.7.i135, i32* %arrayidx2, align 4, !tbaa !13
  tail call void @x264_8_predict_8x8c_v_c(i8* %fdec) #8
  br label %for.cond1.preheader.i76

for.cond1.preheader.i76:                          ; preds = %for.cond1.preheader.i76, %x264_pixel_sad_8x8.exit141
  %y.026.i14 = phi i32 [ 0, %x264_pixel_sad_8x8.exit141 ], [ %inc9.i74, %for.cond1.preheader.i76 ]
  %i_sum.025.i15 = phi i32 [ 0, %x264_pixel_sad_8x8.exit141 ], [ %add.7.i71, %for.cond1.preheader.i76 ]
  %pix1.addr.024.i16 = phi i8* [ %fdec, %x264_pixel_sad_8x8.exit141 ], [ %add.ptr.i72, %for.cond1.preheader.i76 ]
  %pix2.addr.023.i17 = phi i8* [ %fenc, %x264_pixel_sad_8x8.exit141 ], [ %add.ptr7.i73, %for.cond1.preheader.i76 ]
  %64 = load i8, i8* %pix1.addr.024.i16, align 1, !tbaa !6
  %conv.i18 = zext i8 %64 to i32
  %65 = load i8, i8* %pix2.addr.023.i17, align 1, !tbaa !6
  %conv6.i19 = zext i8 %65 to i32
  %sub.i20 = sub nsw i32 %conv.i18, %conv6.i19
  %66 = icmp slt i32 %sub.i20, 0
  %neg.i21 = sub nsw i32 0, %sub.i20
  %67 = select i1 %66, i32 %neg.i21, i32 %sub.i20
  %add.i22 = add nsw i32 %67, %i_sum.025.i15
  %arrayidx.1.i23 = getelementptr inbounds i8, i8* %pix1.addr.024.i16, i32 1
  %68 = load i8, i8* %arrayidx.1.i23, align 1, !tbaa !6
  %conv.1.i24 = zext i8 %68 to i32
  %arrayidx5.1.i25 = getelementptr inbounds i8, i8* %pix2.addr.023.i17, i32 1
  %69 = load i8, i8* %arrayidx5.1.i25, align 1, !tbaa !6
  %conv6.1.i26 = zext i8 %69 to i32
  %sub.1.i27 = sub nsw i32 %conv.1.i24, %conv6.1.i26
  %70 = icmp slt i32 %sub.1.i27, 0
  %neg.1.i28 = sub nsw i32 0, %sub.1.i27
  %71 = select i1 %70, i32 %neg.1.i28, i32 %sub.1.i27
  %add.1.i29 = add nsw i32 %add.i22, %71
  %arrayidx.2.i30 = getelementptr inbounds i8, i8* %pix1.addr.024.i16, i32 2
  %72 = load i8, i8* %arrayidx.2.i30, align 1, !tbaa !6
  %conv.2.i31 = zext i8 %72 to i32
  %arrayidx5.2.i32 = getelementptr inbounds i8, i8* %pix2.addr.023.i17, i32 2
  %73 = load i8, i8* %arrayidx5.2.i32, align 1, !tbaa !6
  %conv6.2.i33 = zext i8 %73 to i32
  %sub.2.i34 = sub nsw i32 %conv.2.i31, %conv6.2.i33
  %74 = icmp slt i32 %sub.2.i34, 0
  %neg.2.i35 = sub nsw i32 0, %sub.2.i34
  %75 = select i1 %74, i32 %neg.2.i35, i32 %sub.2.i34
  %add.2.i36 = add nsw i32 %add.1.i29, %75
  %arrayidx.3.i37 = getelementptr inbounds i8, i8* %pix1.addr.024.i16, i32 3
  %76 = load i8, i8* %arrayidx.3.i37, align 1, !tbaa !6
  %conv.3.i38 = zext i8 %76 to i32
  %arrayidx5.3.i39 = getelementptr inbounds i8, i8* %pix2.addr.023.i17, i32 3
  %77 = load i8, i8* %arrayidx5.3.i39, align 1, !tbaa !6
  %conv6.3.i40 = zext i8 %77 to i32
  %sub.3.i41 = sub nsw i32 %conv.3.i38, %conv6.3.i40
  %78 = icmp slt i32 %sub.3.i41, 0
  %neg.3.i42 = sub nsw i32 0, %sub.3.i41
  %79 = select i1 %78, i32 %neg.3.i42, i32 %sub.3.i41
  %add.3.i43 = add nsw i32 %add.2.i36, %79
  %arrayidx.4.i44 = getelementptr inbounds i8, i8* %pix1.addr.024.i16, i32 4
  %80 = load i8, i8* %arrayidx.4.i44, align 1, !tbaa !6
  %conv.4.i45 = zext i8 %80 to i32
  %arrayidx5.4.i46 = getelementptr inbounds i8, i8* %pix2.addr.023.i17, i32 4
  %81 = load i8, i8* %arrayidx5.4.i46, align 1, !tbaa !6
  %conv6.4.i47 = zext i8 %81 to i32
  %sub.4.i48 = sub nsw i32 %conv.4.i45, %conv6.4.i47
  %82 = icmp slt i32 %sub.4.i48, 0
  %neg.4.i49 = sub nsw i32 0, %sub.4.i48
  %83 = select i1 %82, i32 %neg.4.i49, i32 %sub.4.i48
  %add.4.i50 = add nsw i32 %add.3.i43, %83
  %arrayidx.5.i51 = getelementptr inbounds i8, i8* %pix1.addr.024.i16, i32 5
  %84 = load i8, i8* %arrayidx.5.i51, align 1, !tbaa !6
  %conv.5.i52 = zext i8 %84 to i32
  %arrayidx5.5.i53 = getelementptr inbounds i8, i8* %pix2.addr.023.i17, i32 5
  %85 = load i8, i8* %arrayidx5.5.i53, align 1, !tbaa !6
  %conv6.5.i54 = zext i8 %85 to i32
  %sub.5.i55 = sub nsw i32 %conv.5.i52, %conv6.5.i54
  %86 = icmp slt i32 %sub.5.i55, 0
  %neg.5.i56 = sub nsw i32 0, %sub.5.i55
  %87 = select i1 %86, i32 %neg.5.i56, i32 %sub.5.i55
  %add.5.i57 = add nsw i32 %add.4.i50, %87
  %arrayidx.6.i58 = getelementptr inbounds i8, i8* %pix1.addr.024.i16, i32 6
  %88 = load i8, i8* %arrayidx.6.i58, align 1, !tbaa !6
  %conv.6.i59 = zext i8 %88 to i32
  %arrayidx5.6.i60 = getelementptr inbounds i8, i8* %pix2.addr.023.i17, i32 6
  %89 = load i8, i8* %arrayidx5.6.i60, align 1, !tbaa !6
  %conv6.6.i61 = zext i8 %89 to i32
  %sub.6.i62 = sub nsw i32 %conv.6.i59, %conv6.6.i61
  %90 = icmp slt i32 %sub.6.i62, 0
  %neg.6.i63 = sub nsw i32 0, %sub.6.i62
  %91 = select i1 %90, i32 %neg.6.i63, i32 %sub.6.i62
  %add.6.i64 = add nsw i32 %add.5.i57, %91
  %arrayidx.7.i65 = getelementptr inbounds i8, i8* %pix1.addr.024.i16, i32 7
  %92 = load i8, i8* %arrayidx.7.i65, align 1, !tbaa !6
  %conv.7.i66 = zext i8 %92 to i32
  %arrayidx5.7.i67 = getelementptr inbounds i8, i8* %pix2.addr.023.i17, i32 7
  %93 = load i8, i8* %arrayidx5.7.i67, align 1, !tbaa !6
  %conv6.7.i68 = zext i8 %93 to i32
  %sub.7.i69 = sub nsw i32 %conv.7.i66, %conv6.7.i68
  %94 = icmp slt i32 %sub.7.i69, 0
  %neg.7.i70 = sub nsw i32 0, %sub.7.i69
  %95 = select i1 %94, i32 %neg.7.i70, i32 %sub.7.i69
  %add.7.i71 = add nsw i32 %add.6.i64, %95
  %add.ptr.i72 = getelementptr inbounds i8, i8* %pix1.addr.024.i16, i32 32
  %add.ptr7.i73 = getelementptr inbounds i8, i8* %pix2.addr.023.i17, i32 16
  %inc9.i74 = add nuw nsw i32 %y.026.i14, 1
  %exitcond.i75 = icmp eq i32 %inc9.i74, 8
  br i1 %exitcond.i75, label %x264_pixel_sad_8x8.exit77, label %for.cond1.preheader.i76

x264_pixel_sad_8x8.exit77:                        ; preds = %for.cond1.preheader.i76
  %arrayidx4 = getelementptr inbounds i32, i32* %res, i32 2
  store i32 %add.7.i71, i32* %arrayidx4, align 4, !tbaa !13
  ret void
}

; Function Attrs: nounwind
define internal void @intra_satd_x3_8x8c(i8* nocapture readonly %fenc, i8* %fdec, i32* nocapture %res) #0 {
entry:
  tail call void @x264_8_predict_8x8c_dc_c(i8* %fdec) #8
  %call.i = tail call i32 @x264_pixel_satd_8x4(i8* %fdec, i32 32, i8* %fenc, i32 16) #8
  %add.ptr.i = getelementptr inbounds i8, i8* %fdec, i32 128
  %add.ptr2.i = getelementptr inbounds i8, i8* %fenc, i32 64
  %call3.i = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr.i, i32 32, i8* nonnull %add.ptr2.i, i32 16) #8
  %add.i = add nsw i32 %call3.i, %call.i
  store i32 %add.i, i32* %res, align 4, !tbaa !13
  tail call void @x264_8_predict_8x8c_h_c(i8* %fdec) #8
  %call.i14 = tail call i32 @x264_pixel_satd_8x4(i8* %fdec, i32 32, i8* %fenc, i32 16) #8
  %call3.i17 = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr.i, i32 32, i8* nonnull %add.ptr2.i, i32 16) #8
  %add.i18 = add nsw i32 %call3.i17, %call.i14
  %arrayidx2 = getelementptr inbounds i32, i32* %res, i32 1
  store i32 %add.i18, i32* %arrayidx2, align 4, !tbaa !13
  tail call void @x264_8_predict_8x8c_v_c(i8* %fdec) #8
  %call.i19 = tail call i32 @x264_pixel_satd_8x4(i8* %fdec, i32 32, i8* %fenc, i32 16) #8
  %call3.i22 = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr.i, i32 32, i8* nonnull %add.ptr2.i, i32 16) #8
  %add.i23 = add nsw i32 %call3.i22, %call.i19
  %arrayidx4 = getelementptr inbounds i32, i32* %res, i32 2
  store i32 %add.i23, i32* %arrayidx4, align 4, !tbaa !13
  ret void
}

; Function Attrs: nounwind
define internal void @intra_sad_x3_8x16c(i8* nocapture readonly %fenc, i8* %fdec, i32* nocapture %res) #0 {
entry:
  tail call void @x264_8_predict_8x16c_dc_c(i8* %fdec) #8
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.cond1.preheader.i, %entry
  %y.026.i = phi i32 [ 0, %entry ], [ %inc9.i, %for.cond1.preheader.i ]
  %i_sum.025.i = phi i32 [ 0, %entry ], [ %add.7.i, %for.cond1.preheader.i ]
  %pix1.addr.024.i = phi i8* [ %fdec, %entry ], [ %add.ptr.i, %for.cond1.preheader.i ]
  %pix2.addr.023.i = phi i8* [ %fenc, %entry ], [ %add.ptr7.i, %for.cond1.preheader.i ]
  %0 = load i8, i8* %pix1.addr.024.i, align 1, !tbaa !6
  %conv.i = zext i8 %0 to i32
  %1 = load i8, i8* %pix2.addr.023.i, align 1, !tbaa !6
  %conv6.i = zext i8 %1 to i32
  %sub.i = sub nsw i32 %conv.i, %conv6.i
  %2 = icmp slt i32 %sub.i, 0
  %neg.i = sub nsw i32 0, %sub.i
  %3 = select i1 %2, i32 %neg.i, i32 %sub.i
  %add.i = add nsw i32 %3, %i_sum.025.i
  %arrayidx.1.i = getelementptr inbounds i8, i8* %pix1.addr.024.i, i32 1
  %4 = load i8, i8* %arrayidx.1.i, align 1, !tbaa !6
  %conv.1.i = zext i8 %4 to i32
  %arrayidx5.1.i = getelementptr inbounds i8, i8* %pix2.addr.023.i, i32 1
  %5 = load i8, i8* %arrayidx5.1.i, align 1, !tbaa !6
  %conv6.1.i = zext i8 %5 to i32
  %sub.1.i = sub nsw i32 %conv.1.i, %conv6.1.i
  %6 = icmp slt i32 %sub.1.i, 0
  %neg.1.i = sub nsw i32 0, %sub.1.i
  %7 = select i1 %6, i32 %neg.1.i, i32 %sub.1.i
  %add.1.i = add nsw i32 %add.i, %7
  %arrayidx.2.i = getelementptr inbounds i8, i8* %pix1.addr.024.i, i32 2
  %8 = load i8, i8* %arrayidx.2.i, align 1, !tbaa !6
  %conv.2.i = zext i8 %8 to i32
  %arrayidx5.2.i = getelementptr inbounds i8, i8* %pix2.addr.023.i, i32 2
  %9 = load i8, i8* %arrayidx5.2.i, align 1, !tbaa !6
  %conv6.2.i = zext i8 %9 to i32
  %sub.2.i = sub nsw i32 %conv.2.i, %conv6.2.i
  %10 = icmp slt i32 %sub.2.i, 0
  %neg.2.i = sub nsw i32 0, %sub.2.i
  %11 = select i1 %10, i32 %neg.2.i, i32 %sub.2.i
  %add.2.i = add nsw i32 %add.1.i, %11
  %arrayidx.3.i = getelementptr inbounds i8, i8* %pix1.addr.024.i, i32 3
  %12 = load i8, i8* %arrayidx.3.i, align 1, !tbaa !6
  %conv.3.i = zext i8 %12 to i32
  %arrayidx5.3.i = getelementptr inbounds i8, i8* %pix2.addr.023.i, i32 3
  %13 = load i8, i8* %arrayidx5.3.i, align 1, !tbaa !6
  %conv6.3.i = zext i8 %13 to i32
  %sub.3.i = sub nsw i32 %conv.3.i, %conv6.3.i
  %14 = icmp slt i32 %sub.3.i, 0
  %neg.3.i = sub nsw i32 0, %sub.3.i
  %15 = select i1 %14, i32 %neg.3.i, i32 %sub.3.i
  %add.3.i = add nsw i32 %add.2.i, %15
  %arrayidx.4.i = getelementptr inbounds i8, i8* %pix1.addr.024.i, i32 4
  %16 = load i8, i8* %arrayidx.4.i, align 1, !tbaa !6
  %conv.4.i = zext i8 %16 to i32
  %arrayidx5.4.i = getelementptr inbounds i8, i8* %pix2.addr.023.i, i32 4
  %17 = load i8, i8* %arrayidx5.4.i, align 1, !tbaa !6
  %conv6.4.i = zext i8 %17 to i32
  %sub.4.i = sub nsw i32 %conv.4.i, %conv6.4.i
  %18 = icmp slt i32 %sub.4.i, 0
  %neg.4.i = sub nsw i32 0, %sub.4.i
  %19 = select i1 %18, i32 %neg.4.i, i32 %sub.4.i
  %add.4.i = add nsw i32 %add.3.i, %19
  %arrayidx.5.i = getelementptr inbounds i8, i8* %pix1.addr.024.i, i32 5
  %20 = load i8, i8* %arrayidx.5.i, align 1, !tbaa !6
  %conv.5.i = zext i8 %20 to i32
  %arrayidx5.5.i = getelementptr inbounds i8, i8* %pix2.addr.023.i, i32 5
  %21 = load i8, i8* %arrayidx5.5.i, align 1, !tbaa !6
  %conv6.5.i = zext i8 %21 to i32
  %sub.5.i = sub nsw i32 %conv.5.i, %conv6.5.i
  %22 = icmp slt i32 %sub.5.i, 0
  %neg.5.i = sub nsw i32 0, %sub.5.i
  %23 = select i1 %22, i32 %neg.5.i, i32 %sub.5.i
  %add.5.i = add nsw i32 %add.4.i, %23
  %arrayidx.6.i = getelementptr inbounds i8, i8* %pix1.addr.024.i, i32 6
  %24 = load i8, i8* %arrayidx.6.i, align 1, !tbaa !6
  %conv.6.i = zext i8 %24 to i32
  %arrayidx5.6.i = getelementptr inbounds i8, i8* %pix2.addr.023.i, i32 6
  %25 = load i8, i8* %arrayidx5.6.i, align 1, !tbaa !6
  %conv6.6.i = zext i8 %25 to i32
  %sub.6.i = sub nsw i32 %conv.6.i, %conv6.6.i
  %26 = icmp slt i32 %sub.6.i, 0
  %neg.6.i = sub nsw i32 0, %sub.6.i
  %27 = select i1 %26, i32 %neg.6.i, i32 %sub.6.i
  %add.6.i = add nsw i32 %add.5.i, %27
  %arrayidx.7.i = getelementptr inbounds i8, i8* %pix1.addr.024.i, i32 7
  %28 = load i8, i8* %arrayidx.7.i, align 1, !tbaa !6
  %conv.7.i = zext i8 %28 to i32
  %arrayidx5.7.i = getelementptr inbounds i8, i8* %pix2.addr.023.i, i32 7
  %29 = load i8, i8* %arrayidx5.7.i, align 1, !tbaa !6
  %conv6.7.i = zext i8 %29 to i32
  %sub.7.i = sub nsw i32 %conv.7.i, %conv6.7.i
  %30 = icmp slt i32 %sub.7.i, 0
  %neg.7.i = sub nsw i32 0, %sub.7.i
  %31 = select i1 %30, i32 %neg.7.i, i32 %sub.7.i
  %add.7.i = add nsw i32 %add.6.i, %31
  %add.ptr.i = getelementptr inbounds i8, i8* %pix1.addr.024.i, i32 32
  %add.ptr7.i = getelementptr inbounds i8, i8* %pix2.addr.023.i, i32 16
  %inc9.i = add nuw nsw i32 %y.026.i, 1
  %exitcond.i = icmp eq i32 %inc9.i, 16
  br i1 %exitcond.i, label %x264_pixel_sad_8x16.exit, label %for.cond1.preheader.i

x264_pixel_sad_8x16.exit:                         ; preds = %for.cond1.preheader.i
  store i32 %add.7.i, i32* %res, align 4, !tbaa !13
  tail call void @x264_8_predict_8x16c_h_c(i8* %fdec) #8
  br label %for.cond1.preheader.i140

for.cond1.preheader.i140:                         ; preds = %for.cond1.preheader.i140, %x264_pixel_sad_8x16.exit
  %y.026.i78 = phi i32 [ 0, %x264_pixel_sad_8x16.exit ], [ %inc9.i138, %for.cond1.preheader.i140 ]
  %i_sum.025.i79 = phi i32 [ 0, %x264_pixel_sad_8x16.exit ], [ %add.7.i135, %for.cond1.preheader.i140 ]
  %pix1.addr.024.i80 = phi i8* [ %fdec, %x264_pixel_sad_8x16.exit ], [ %add.ptr.i136, %for.cond1.preheader.i140 ]
  %pix2.addr.023.i81 = phi i8* [ %fenc, %x264_pixel_sad_8x16.exit ], [ %add.ptr7.i137, %for.cond1.preheader.i140 ]
  %32 = load i8, i8* %pix1.addr.024.i80, align 1, !tbaa !6
  %conv.i82 = zext i8 %32 to i32
  %33 = load i8, i8* %pix2.addr.023.i81, align 1, !tbaa !6
  %conv6.i83 = zext i8 %33 to i32
  %sub.i84 = sub nsw i32 %conv.i82, %conv6.i83
  %34 = icmp slt i32 %sub.i84, 0
  %neg.i85 = sub nsw i32 0, %sub.i84
  %35 = select i1 %34, i32 %neg.i85, i32 %sub.i84
  %add.i86 = add nsw i32 %35, %i_sum.025.i79
  %arrayidx.1.i87 = getelementptr inbounds i8, i8* %pix1.addr.024.i80, i32 1
  %36 = load i8, i8* %arrayidx.1.i87, align 1, !tbaa !6
  %conv.1.i88 = zext i8 %36 to i32
  %arrayidx5.1.i89 = getelementptr inbounds i8, i8* %pix2.addr.023.i81, i32 1
  %37 = load i8, i8* %arrayidx5.1.i89, align 1, !tbaa !6
  %conv6.1.i90 = zext i8 %37 to i32
  %sub.1.i91 = sub nsw i32 %conv.1.i88, %conv6.1.i90
  %38 = icmp slt i32 %sub.1.i91, 0
  %neg.1.i92 = sub nsw i32 0, %sub.1.i91
  %39 = select i1 %38, i32 %neg.1.i92, i32 %sub.1.i91
  %add.1.i93 = add nsw i32 %add.i86, %39
  %arrayidx.2.i94 = getelementptr inbounds i8, i8* %pix1.addr.024.i80, i32 2
  %40 = load i8, i8* %arrayidx.2.i94, align 1, !tbaa !6
  %conv.2.i95 = zext i8 %40 to i32
  %arrayidx5.2.i96 = getelementptr inbounds i8, i8* %pix2.addr.023.i81, i32 2
  %41 = load i8, i8* %arrayidx5.2.i96, align 1, !tbaa !6
  %conv6.2.i97 = zext i8 %41 to i32
  %sub.2.i98 = sub nsw i32 %conv.2.i95, %conv6.2.i97
  %42 = icmp slt i32 %sub.2.i98, 0
  %neg.2.i99 = sub nsw i32 0, %sub.2.i98
  %43 = select i1 %42, i32 %neg.2.i99, i32 %sub.2.i98
  %add.2.i100 = add nsw i32 %add.1.i93, %43
  %arrayidx.3.i101 = getelementptr inbounds i8, i8* %pix1.addr.024.i80, i32 3
  %44 = load i8, i8* %arrayidx.3.i101, align 1, !tbaa !6
  %conv.3.i102 = zext i8 %44 to i32
  %arrayidx5.3.i103 = getelementptr inbounds i8, i8* %pix2.addr.023.i81, i32 3
  %45 = load i8, i8* %arrayidx5.3.i103, align 1, !tbaa !6
  %conv6.3.i104 = zext i8 %45 to i32
  %sub.3.i105 = sub nsw i32 %conv.3.i102, %conv6.3.i104
  %46 = icmp slt i32 %sub.3.i105, 0
  %neg.3.i106 = sub nsw i32 0, %sub.3.i105
  %47 = select i1 %46, i32 %neg.3.i106, i32 %sub.3.i105
  %add.3.i107 = add nsw i32 %add.2.i100, %47
  %arrayidx.4.i108 = getelementptr inbounds i8, i8* %pix1.addr.024.i80, i32 4
  %48 = load i8, i8* %arrayidx.4.i108, align 1, !tbaa !6
  %conv.4.i109 = zext i8 %48 to i32
  %arrayidx5.4.i110 = getelementptr inbounds i8, i8* %pix2.addr.023.i81, i32 4
  %49 = load i8, i8* %arrayidx5.4.i110, align 1, !tbaa !6
  %conv6.4.i111 = zext i8 %49 to i32
  %sub.4.i112 = sub nsw i32 %conv.4.i109, %conv6.4.i111
  %50 = icmp slt i32 %sub.4.i112, 0
  %neg.4.i113 = sub nsw i32 0, %sub.4.i112
  %51 = select i1 %50, i32 %neg.4.i113, i32 %sub.4.i112
  %add.4.i114 = add nsw i32 %add.3.i107, %51
  %arrayidx.5.i115 = getelementptr inbounds i8, i8* %pix1.addr.024.i80, i32 5
  %52 = load i8, i8* %arrayidx.5.i115, align 1, !tbaa !6
  %conv.5.i116 = zext i8 %52 to i32
  %arrayidx5.5.i117 = getelementptr inbounds i8, i8* %pix2.addr.023.i81, i32 5
  %53 = load i8, i8* %arrayidx5.5.i117, align 1, !tbaa !6
  %conv6.5.i118 = zext i8 %53 to i32
  %sub.5.i119 = sub nsw i32 %conv.5.i116, %conv6.5.i118
  %54 = icmp slt i32 %sub.5.i119, 0
  %neg.5.i120 = sub nsw i32 0, %sub.5.i119
  %55 = select i1 %54, i32 %neg.5.i120, i32 %sub.5.i119
  %add.5.i121 = add nsw i32 %add.4.i114, %55
  %arrayidx.6.i122 = getelementptr inbounds i8, i8* %pix1.addr.024.i80, i32 6
  %56 = load i8, i8* %arrayidx.6.i122, align 1, !tbaa !6
  %conv.6.i123 = zext i8 %56 to i32
  %arrayidx5.6.i124 = getelementptr inbounds i8, i8* %pix2.addr.023.i81, i32 6
  %57 = load i8, i8* %arrayidx5.6.i124, align 1, !tbaa !6
  %conv6.6.i125 = zext i8 %57 to i32
  %sub.6.i126 = sub nsw i32 %conv.6.i123, %conv6.6.i125
  %58 = icmp slt i32 %sub.6.i126, 0
  %neg.6.i127 = sub nsw i32 0, %sub.6.i126
  %59 = select i1 %58, i32 %neg.6.i127, i32 %sub.6.i126
  %add.6.i128 = add nsw i32 %add.5.i121, %59
  %arrayidx.7.i129 = getelementptr inbounds i8, i8* %pix1.addr.024.i80, i32 7
  %60 = load i8, i8* %arrayidx.7.i129, align 1, !tbaa !6
  %conv.7.i130 = zext i8 %60 to i32
  %arrayidx5.7.i131 = getelementptr inbounds i8, i8* %pix2.addr.023.i81, i32 7
  %61 = load i8, i8* %arrayidx5.7.i131, align 1, !tbaa !6
  %conv6.7.i132 = zext i8 %61 to i32
  %sub.7.i133 = sub nsw i32 %conv.7.i130, %conv6.7.i132
  %62 = icmp slt i32 %sub.7.i133, 0
  %neg.7.i134 = sub nsw i32 0, %sub.7.i133
  %63 = select i1 %62, i32 %neg.7.i134, i32 %sub.7.i133
  %add.7.i135 = add nsw i32 %add.6.i128, %63
  %add.ptr.i136 = getelementptr inbounds i8, i8* %pix1.addr.024.i80, i32 32
  %add.ptr7.i137 = getelementptr inbounds i8, i8* %pix2.addr.023.i81, i32 16
  %inc9.i138 = add nuw nsw i32 %y.026.i78, 1
  %exitcond.i139 = icmp eq i32 %inc9.i138, 16
  br i1 %exitcond.i139, label %x264_pixel_sad_8x16.exit141, label %for.cond1.preheader.i140

x264_pixel_sad_8x16.exit141:                      ; preds = %for.cond1.preheader.i140
  %arrayidx2 = getelementptr inbounds i32, i32* %res, i32 1
  store i32 %add.7.i135, i32* %arrayidx2, align 4, !tbaa !13
  tail call void @x264_8_predict_8x16c_v_c(i8* %fdec) #8
  br label %for.cond1.preheader.i76

for.cond1.preheader.i76:                          ; preds = %for.cond1.preheader.i76, %x264_pixel_sad_8x16.exit141
  %y.026.i14 = phi i32 [ 0, %x264_pixel_sad_8x16.exit141 ], [ %inc9.i74, %for.cond1.preheader.i76 ]
  %i_sum.025.i15 = phi i32 [ 0, %x264_pixel_sad_8x16.exit141 ], [ %add.7.i71, %for.cond1.preheader.i76 ]
  %pix1.addr.024.i16 = phi i8* [ %fdec, %x264_pixel_sad_8x16.exit141 ], [ %add.ptr.i72, %for.cond1.preheader.i76 ]
  %pix2.addr.023.i17 = phi i8* [ %fenc, %x264_pixel_sad_8x16.exit141 ], [ %add.ptr7.i73, %for.cond1.preheader.i76 ]
  %64 = load i8, i8* %pix1.addr.024.i16, align 1, !tbaa !6
  %conv.i18 = zext i8 %64 to i32
  %65 = load i8, i8* %pix2.addr.023.i17, align 1, !tbaa !6
  %conv6.i19 = zext i8 %65 to i32
  %sub.i20 = sub nsw i32 %conv.i18, %conv6.i19
  %66 = icmp slt i32 %sub.i20, 0
  %neg.i21 = sub nsw i32 0, %sub.i20
  %67 = select i1 %66, i32 %neg.i21, i32 %sub.i20
  %add.i22 = add nsw i32 %67, %i_sum.025.i15
  %arrayidx.1.i23 = getelementptr inbounds i8, i8* %pix1.addr.024.i16, i32 1
  %68 = load i8, i8* %arrayidx.1.i23, align 1, !tbaa !6
  %conv.1.i24 = zext i8 %68 to i32
  %arrayidx5.1.i25 = getelementptr inbounds i8, i8* %pix2.addr.023.i17, i32 1
  %69 = load i8, i8* %arrayidx5.1.i25, align 1, !tbaa !6
  %conv6.1.i26 = zext i8 %69 to i32
  %sub.1.i27 = sub nsw i32 %conv.1.i24, %conv6.1.i26
  %70 = icmp slt i32 %sub.1.i27, 0
  %neg.1.i28 = sub nsw i32 0, %sub.1.i27
  %71 = select i1 %70, i32 %neg.1.i28, i32 %sub.1.i27
  %add.1.i29 = add nsw i32 %add.i22, %71
  %arrayidx.2.i30 = getelementptr inbounds i8, i8* %pix1.addr.024.i16, i32 2
  %72 = load i8, i8* %arrayidx.2.i30, align 1, !tbaa !6
  %conv.2.i31 = zext i8 %72 to i32
  %arrayidx5.2.i32 = getelementptr inbounds i8, i8* %pix2.addr.023.i17, i32 2
  %73 = load i8, i8* %arrayidx5.2.i32, align 1, !tbaa !6
  %conv6.2.i33 = zext i8 %73 to i32
  %sub.2.i34 = sub nsw i32 %conv.2.i31, %conv6.2.i33
  %74 = icmp slt i32 %sub.2.i34, 0
  %neg.2.i35 = sub nsw i32 0, %sub.2.i34
  %75 = select i1 %74, i32 %neg.2.i35, i32 %sub.2.i34
  %add.2.i36 = add nsw i32 %add.1.i29, %75
  %arrayidx.3.i37 = getelementptr inbounds i8, i8* %pix1.addr.024.i16, i32 3
  %76 = load i8, i8* %arrayidx.3.i37, align 1, !tbaa !6
  %conv.3.i38 = zext i8 %76 to i32
  %arrayidx5.3.i39 = getelementptr inbounds i8, i8* %pix2.addr.023.i17, i32 3
  %77 = load i8, i8* %arrayidx5.3.i39, align 1, !tbaa !6
  %conv6.3.i40 = zext i8 %77 to i32
  %sub.3.i41 = sub nsw i32 %conv.3.i38, %conv6.3.i40
  %78 = icmp slt i32 %sub.3.i41, 0
  %neg.3.i42 = sub nsw i32 0, %sub.3.i41
  %79 = select i1 %78, i32 %neg.3.i42, i32 %sub.3.i41
  %add.3.i43 = add nsw i32 %add.2.i36, %79
  %arrayidx.4.i44 = getelementptr inbounds i8, i8* %pix1.addr.024.i16, i32 4
  %80 = load i8, i8* %arrayidx.4.i44, align 1, !tbaa !6
  %conv.4.i45 = zext i8 %80 to i32
  %arrayidx5.4.i46 = getelementptr inbounds i8, i8* %pix2.addr.023.i17, i32 4
  %81 = load i8, i8* %arrayidx5.4.i46, align 1, !tbaa !6
  %conv6.4.i47 = zext i8 %81 to i32
  %sub.4.i48 = sub nsw i32 %conv.4.i45, %conv6.4.i47
  %82 = icmp slt i32 %sub.4.i48, 0
  %neg.4.i49 = sub nsw i32 0, %sub.4.i48
  %83 = select i1 %82, i32 %neg.4.i49, i32 %sub.4.i48
  %add.4.i50 = add nsw i32 %add.3.i43, %83
  %arrayidx.5.i51 = getelementptr inbounds i8, i8* %pix1.addr.024.i16, i32 5
  %84 = load i8, i8* %arrayidx.5.i51, align 1, !tbaa !6
  %conv.5.i52 = zext i8 %84 to i32
  %arrayidx5.5.i53 = getelementptr inbounds i8, i8* %pix2.addr.023.i17, i32 5
  %85 = load i8, i8* %arrayidx5.5.i53, align 1, !tbaa !6
  %conv6.5.i54 = zext i8 %85 to i32
  %sub.5.i55 = sub nsw i32 %conv.5.i52, %conv6.5.i54
  %86 = icmp slt i32 %sub.5.i55, 0
  %neg.5.i56 = sub nsw i32 0, %sub.5.i55
  %87 = select i1 %86, i32 %neg.5.i56, i32 %sub.5.i55
  %add.5.i57 = add nsw i32 %add.4.i50, %87
  %arrayidx.6.i58 = getelementptr inbounds i8, i8* %pix1.addr.024.i16, i32 6
  %88 = load i8, i8* %arrayidx.6.i58, align 1, !tbaa !6
  %conv.6.i59 = zext i8 %88 to i32
  %arrayidx5.6.i60 = getelementptr inbounds i8, i8* %pix2.addr.023.i17, i32 6
  %89 = load i8, i8* %arrayidx5.6.i60, align 1, !tbaa !6
  %conv6.6.i61 = zext i8 %89 to i32
  %sub.6.i62 = sub nsw i32 %conv.6.i59, %conv6.6.i61
  %90 = icmp slt i32 %sub.6.i62, 0
  %neg.6.i63 = sub nsw i32 0, %sub.6.i62
  %91 = select i1 %90, i32 %neg.6.i63, i32 %sub.6.i62
  %add.6.i64 = add nsw i32 %add.5.i57, %91
  %arrayidx.7.i65 = getelementptr inbounds i8, i8* %pix1.addr.024.i16, i32 7
  %92 = load i8, i8* %arrayidx.7.i65, align 1, !tbaa !6
  %conv.7.i66 = zext i8 %92 to i32
  %arrayidx5.7.i67 = getelementptr inbounds i8, i8* %pix2.addr.023.i17, i32 7
  %93 = load i8, i8* %arrayidx5.7.i67, align 1, !tbaa !6
  %conv6.7.i68 = zext i8 %93 to i32
  %sub.7.i69 = sub nsw i32 %conv.7.i66, %conv6.7.i68
  %94 = icmp slt i32 %sub.7.i69, 0
  %neg.7.i70 = sub nsw i32 0, %sub.7.i69
  %95 = select i1 %94, i32 %neg.7.i70, i32 %sub.7.i69
  %add.7.i71 = add nsw i32 %add.6.i64, %95
  %add.ptr.i72 = getelementptr inbounds i8, i8* %pix1.addr.024.i16, i32 32
  %add.ptr7.i73 = getelementptr inbounds i8, i8* %pix2.addr.023.i17, i32 16
  %inc9.i74 = add nuw nsw i32 %y.026.i14, 1
  %exitcond.i75 = icmp eq i32 %inc9.i74, 16
  br i1 %exitcond.i75, label %x264_pixel_sad_8x16.exit77, label %for.cond1.preheader.i76

x264_pixel_sad_8x16.exit77:                       ; preds = %for.cond1.preheader.i76
  %arrayidx4 = getelementptr inbounds i32, i32* %res, i32 2
  store i32 %add.7.i71, i32* %arrayidx4, align 4, !tbaa !13
  ret void
}

; Function Attrs: nounwind
define internal void @intra_satd_x3_8x16c(i8* nocapture readonly %fenc, i8* %fdec, i32* nocapture %res) #0 {
entry:
  tail call void @x264_8_predict_8x16c_dc_c(i8* %fdec) #8
  %call.i = tail call i32 @x264_pixel_satd_8x4(i8* %fdec, i32 32, i8* %fenc, i32 16) #8
  %add.ptr.i = getelementptr inbounds i8, i8* %fdec, i32 128
  %add.ptr2.i = getelementptr inbounds i8, i8* %fenc, i32 64
  %call3.i = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr.i, i32 32, i8* nonnull %add.ptr2.i, i32 16) #8
  %add.ptr5.i = getelementptr inbounds i8, i8* %fdec, i32 256
  %add.ptr7.i = getelementptr inbounds i8, i8* %fenc, i32 128
  %call8.i = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr5.i, i32 32, i8* nonnull %add.ptr7.i, i32 16) #8
  %add.ptr10.i = getelementptr inbounds i8, i8* %fdec, i32 384
  %add.ptr12.i = getelementptr inbounds i8, i8* %fenc, i32 192
  %call13.i = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr10.i, i32 32, i8* nonnull %add.ptr12.i, i32 16) #8
  %add14.i = add i32 %call3.i, %call.i
  %add.i = add i32 %add14.i, %call8.i
  %add15.i = add i32 %add.i, %call13.i
  store i32 %add15.i, i32* %res, align 4, !tbaa !13
  tail call void @x264_8_predict_8x16c_h_c(i8* %fdec) #8
  %call.i14 = tail call i32 @x264_pixel_satd_8x4(i8* %fdec, i32 32, i8* %fenc, i32 16) #8
  %call3.i17 = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr.i, i32 32, i8* nonnull %add.ptr2.i, i32 16) #8
  %call8.i20 = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr5.i, i32 32, i8* nonnull %add.ptr7.i, i32 16) #8
  %call13.i23 = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr10.i, i32 32, i8* nonnull %add.ptr12.i, i32 16) #8
  %add14.i24 = add i32 %call3.i17, %call.i14
  %add.i25 = add i32 %add14.i24, %call8.i20
  %add15.i26 = add i32 %add.i25, %call13.i23
  %arrayidx2 = getelementptr inbounds i32, i32* %res, i32 1
  store i32 %add15.i26, i32* %arrayidx2, align 4, !tbaa !13
  tail call void @x264_8_predict_8x16c_v_c(i8* %fdec) #8
  %call.i27 = tail call i32 @x264_pixel_satd_8x4(i8* %fdec, i32 32, i8* %fenc, i32 16) #8
  %call3.i30 = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr.i, i32 32, i8* nonnull %add.ptr2.i, i32 16) #8
  %call8.i33 = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr5.i, i32 32, i8* nonnull %add.ptr7.i, i32 16) #8
  %call13.i36 = tail call i32 @x264_pixel_satd_8x4(i8* nonnull %add.ptr10.i, i32 32, i8* nonnull %add.ptr12.i, i32 16) #8
  %add14.i37 = add i32 %call3.i30, %call.i27
  %add.i38 = add i32 %add14.i37, %call8.i33
  %add15.i39 = add i32 %add.i38, %call13.i36
  %arrayidx4 = getelementptr inbounds i32, i32* %res, i32 2
  store i32 %add15.i39, i32* %arrayidx4, align 4, !tbaa !13
  ret void
}

; Function Attrs: nounwind
define internal void @intra_sad_x3_16x16(i8* nocapture readonly %fenc, i8* %fdec, i32* nocapture %res) #0 {
entry:
  tail call void @x264_8_predict_16x16_v_c(i8* %fdec) #8
  %call = tail call i32 @x264_pixel_sad_16x16(i8* %fdec, i32 32, i8* %fenc, i32 16)
  store i32 %call, i32* %res, align 4, !tbaa !13
  tail call void @x264_8_predict_16x16_h_c(i8* %fdec) #8
  %call1 = tail call i32 @x264_pixel_sad_16x16(i8* %fdec, i32 32, i8* %fenc, i32 16)
  %arrayidx2 = getelementptr inbounds i32, i32* %res, i32 1
  store i32 %call1, i32* %arrayidx2, align 4, !tbaa !13
  tail call void @x264_8_predict_16x16_dc_c(i8* %fdec) #8
  %call3 = tail call i32 @x264_pixel_sad_16x16(i8* %fdec, i32 32, i8* %fenc, i32 16)
  %arrayidx4 = getelementptr inbounds i32, i32* %res, i32 2
  store i32 %call3, i32* %arrayidx4, align 4, !tbaa !13
  ret void
}

; Function Attrs: nounwind
define internal void @intra_satd_x3_16x16(i8* nocapture readonly %fenc, i8* %fdec, i32* nocapture %res) #0 {
entry:
  tail call void @x264_8_predict_16x16_v_c(i8* %fdec) #8
  %call = tail call i32 @x264_pixel_satd_16x16(i8* %fdec, i32 32, i8* %fenc, i32 16)
  store i32 %call, i32* %res, align 4, !tbaa !13
  tail call void @x264_8_predict_16x16_h_c(i8* %fdec) #8
  %call1 = tail call i32 @x264_pixel_satd_16x16(i8* %fdec, i32 32, i8* %fenc, i32 16)
  %arrayidx2 = getelementptr inbounds i32, i32* %res, i32 1
  store i32 %call1, i32* %arrayidx2, align 4, !tbaa !13
  tail call void @x264_8_predict_16x16_dc_c(i8* %fdec) #8
  %call3 = tail call i32 @x264_pixel_satd_16x16(i8* %fdec, i32 32, i8* %fenc, i32 16)
  %arrayidx4 = getelementptr inbounds i32, i32* %res, i32 2
  store i32 %call3, i32* %arrayidx4, align 4, !tbaa !13
  ret void
}

; Function Attrs: noinline nounwind readonly
define internal fastcc i64 @pixel_hadamard_ac(i8* nocapture readonly %pix, i32 %stride) unnamed_addr #5 {
entry:
  %tmp = alloca [32 x i32], align 4
  %0 = bitcast [32 x i32]* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #8
  %add.ptr = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 0
  %1 = load i8, i8* %pix, align 1, !tbaa !6
  %conv = zext i8 %1 to i32
  %arrayidx3 = getelementptr inbounds i8, i8* %pix, i32 1
  %2 = load i8, i8* %arrayidx3, align 1, !tbaa !6
  %conv4 = zext i8 %2 to i32
  %add = add nuw nsw i32 %conv4, %conv
  %sub = sub nsw i32 %conv, %conv4
  %shl = shl nsw i32 %sub, 16
  %add9 = or i32 %shl, %add
  %arrayidx10 = getelementptr inbounds i8, i8* %pix, i32 2
  %3 = load i8, i8* %arrayidx10, align 1, !tbaa !6
  %conv11 = zext i8 %3 to i32
  %arrayidx12 = getelementptr inbounds i8, i8* %pix, i32 3
  %4 = load i8, i8* %arrayidx12, align 1, !tbaa !6
  %conv13 = zext i8 %4 to i32
  %add14 = add nuw nsw i32 %conv13, %conv11
  %sub19 = sub nsw i32 %conv11, %conv13
  %shl20 = shl nsw i32 %sub19, 16
  %add21 = or i32 %shl20, %add14
  %add22 = add nsw i32 %add21, %add9
  store i32 %add22, i32* %add.ptr, align 4, !tbaa !13
  %sub24 = sub nsw i32 %add9, %add21
  %arrayidx25 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 4
  store i32 %sub24, i32* %arrayidx25, align 4, !tbaa !13
  %arrayidx26 = getelementptr inbounds i8, i8* %pix, i32 4
  %5 = load i8, i8* %arrayidx26, align 1, !tbaa !6
  %conv27 = zext i8 %5 to i32
  %arrayidx28 = getelementptr inbounds i8, i8* %pix, i32 5
  %6 = load i8, i8* %arrayidx28, align 1, !tbaa !6
  %conv29 = zext i8 %6 to i32
  %add30 = add nuw nsw i32 %conv29, %conv27
  %sub35 = sub nsw i32 %conv27, %conv29
  %shl36 = shl nsw i32 %sub35, 16
  %add37 = or i32 %shl36, %add30
  %arrayidx38 = getelementptr inbounds i8, i8* %pix, i32 6
  %7 = load i8, i8* %arrayidx38, align 1, !tbaa !6
  %conv39 = zext i8 %7 to i32
  %arrayidx40 = getelementptr inbounds i8, i8* %pix, i32 7
  %8 = load i8, i8* %arrayidx40, align 1, !tbaa !6
  %conv41 = zext i8 %8 to i32
  %add42 = add nuw nsw i32 %conv41, %conv39
  %sub47 = sub nsw i32 %conv39, %conv41
  %shl48 = shl nsw i32 %sub47, 16
  %add49 = or i32 %shl48, %add42
  %add50 = add nsw i32 %add49, %add37
  %arrayidx51 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 8
  store i32 %add50, i32* %arrayidx51, align 4, !tbaa !13
  %sub52 = sub nsw i32 %add37, %add49
  %arrayidx53 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 12
  store i32 %sub52, i32* %arrayidx53, align 4, !tbaa !13
  %add.ptr54 = getelementptr inbounds i8, i8* %pix, i32 %stride
  %add.ptr.1 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 1
  %9 = load i8, i8* %add.ptr54, align 1, !tbaa !6
  %conv.1 = zext i8 %9 to i32
  %arrayidx3.1 = getelementptr inbounds i8, i8* %add.ptr54, i32 1
  %10 = load i8, i8* %arrayidx3.1, align 1, !tbaa !6
  %conv4.1 = zext i8 %10 to i32
  %add.1 = add nuw nsw i32 %conv4.1, %conv.1
  %sub.1 = sub nsw i32 %conv.1, %conv4.1
  %shl.1 = shl nsw i32 %sub.1, 16
  %add9.1 = or i32 %shl.1, %add.1
  %arrayidx10.1 = getelementptr inbounds i8, i8* %add.ptr54, i32 2
  %11 = load i8, i8* %arrayidx10.1, align 1, !tbaa !6
  %conv11.1 = zext i8 %11 to i32
  %arrayidx12.1 = getelementptr inbounds i8, i8* %add.ptr54, i32 3
  %12 = load i8, i8* %arrayidx12.1, align 1, !tbaa !6
  %conv13.1 = zext i8 %12 to i32
  %add14.1 = add nuw nsw i32 %conv13.1, %conv11.1
  %sub19.1 = sub nsw i32 %conv11.1, %conv13.1
  %shl20.1 = shl nsw i32 %sub19.1, 16
  %add21.1 = or i32 %shl20.1, %add14.1
  %add22.1 = add nsw i32 %add21.1, %add9.1
  store i32 %add22.1, i32* %add.ptr.1, align 4, !tbaa !13
  %sub24.1 = sub nsw i32 %add9.1, %add21.1
  %arrayidx25.1 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 5
  store i32 %sub24.1, i32* %arrayidx25.1, align 4, !tbaa !13
  %arrayidx26.1 = getelementptr inbounds i8, i8* %add.ptr54, i32 4
  %13 = load i8, i8* %arrayidx26.1, align 1, !tbaa !6
  %conv27.1 = zext i8 %13 to i32
  %arrayidx28.1 = getelementptr inbounds i8, i8* %add.ptr54, i32 5
  %14 = load i8, i8* %arrayidx28.1, align 1, !tbaa !6
  %conv29.1 = zext i8 %14 to i32
  %add30.1 = add nuw nsw i32 %conv29.1, %conv27.1
  %sub35.1 = sub nsw i32 %conv27.1, %conv29.1
  %shl36.1 = shl nsw i32 %sub35.1, 16
  %add37.1 = or i32 %shl36.1, %add30.1
  %arrayidx38.1 = getelementptr inbounds i8, i8* %add.ptr54, i32 6
  %15 = load i8, i8* %arrayidx38.1, align 1, !tbaa !6
  %conv39.1 = zext i8 %15 to i32
  %arrayidx40.1 = getelementptr inbounds i8, i8* %add.ptr54, i32 7
  %16 = load i8, i8* %arrayidx40.1, align 1, !tbaa !6
  %conv41.1 = zext i8 %16 to i32
  %add42.1 = add nuw nsw i32 %conv41.1, %conv39.1
  %sub47.1 = sub nsw i32 %conv39.1, %conv41.1
  %shl48.1 = shl nsw i32 %sub47.1, 16
  %add49.1 = or i32 %shl48.1, %add42.1
  %add50.1 = add nsw i32 %add49.1, %add37.1
  %arrayidx51.1 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 9
  store i32 %add50.1, i32* %arrayidx51.1, align 4, !tbaa !13
  %sub52.1 = sub nsw i32 %add37.1, %add49.1
  %arrayidx53.1 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 13
  store i32 %sub52.1, i32* %arrayidx53.1, align 4, !tbaa !13
  %add.ptr54.1 = getelementptr inbounds i8, i8* %add.ptr54, i32 %stride
  %add.ptr.2 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 2
  %17 = load i8, i8* %add.ptr54.1, align 1, !tbaa !6
  %conv.2 = zext i8 %17 to i32
  %arrayidx3.2 = getelementptr inbounds i8, i8* %add.ptr54.1, i32 1
  %18 = load i8, i8* %arrayidx3.2, align 1, !tbaa !6
  %conv4.2 = zext i8 %18 to i32
  %add.2 = add nuw nsw i32 %conv4.2, %conv.2
  %sub.2 = sub nsw i32 %conv.2, %conv4.2
  %shl.2 = shl nsw i32 %sub.2, 16
  %add9.2 = or i32 %shl.2, %add.2
  %arrayidx10.2 = getelementptr inbounds i8, i8* %add.ptr54.1, i32 2
  %19 = load i8, i8* %arrayidx10.2, align 1, !tbaa !6
  %conv11.2 = zext i8 %19 to i32
  %arrayidx12.2 = getelementptr inbounds i8, i8* %add.ptr54.1, i32 3
  %20 = load i8, i8* %arrayidx12.2, align 1, !tbaa !6
  %conv13.2 = zext i8 %20 to i32
  %add14.2 = add nuw nsw i32 %conv13.2, %conv11.2
  %sub19.2 = sub nsw i32 %conv11.2, %conv13.2
  %shl20.2 = shl nsw i32 %sub19.2, 16
  %add21.2 = or i32 %shl20.2, %add14.2
  %add22.2 = add nsw i32 %add21.2, %add9.2
  store i32 %add22.2, i32* %add.ptr.2, align 4, !tbaa !13
  %sub24.2 = sub nsw i32 %add9.2, %add21.2
  %arrayidx25.2 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 6
  store i32 %sub24.2, i32* %arrayidx25.2, align 4, !tbaa !13
  %arrayidx26.2 = getelementptr inbounds i8, i8* %add.ptr54.1, i32 4
  %21 = load i8, i8* %arrayidx26.2, align 1, !tbaa !6
  %conv27.2 = zext i8 %21 to i32
  %arrayidx28.2 = getelementptr inbounds i8, i8* %add.ptr54.1, i32 5
  %22 = load i8, i8* %arrayidx28.2, align 1, !tbaa !6
  %conv29.2 = zext i8 %22 to i32
  %add30.2 = add nuw nsw i32 %conv29.2, %conv27.2
  %sub35.2 = sub nsw i32 %conv27.2, %conv29.2
  %shl36.2 = shl nsw i32 %sub35.2, 16
  %add37.2 = or i32 %shl36.2, %add30.2
  %arrayidx38.2 = getelementptr inbounds i8, i8* %add.ptr54.1, i32 6
  %23 = load i8, i8* %arrayidx38.2, align 1, !tbaa !6
  %conv39.2 = zext i8 %23 to i32
  %arrayidx40.2 = getelementptr inbounds i8, i8* %add.ptr54.1, i32 7
  %24 = load i8, i8* %arrayidx40.2, align 1, !tbaa !6
  %conv41.2 = zext i8 %24 to i32
  %add42.2 = add nuw nsw i32 %conv41.2, %conv39.2
  %sub47.2 = sub nsw i32 %conv39.2, %conv41.2
  %shl48.2 = shl nsw i32 %sub47.2, 16
  %add49.2 = or i32 %shl48.2, %add42.2
  %add50.2 = add nsw i32 %add49.2, %add37.2
  %arrayidx51.2 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 10
  store i32 %add50.2, i32* %arrayidx51.2, align 4, !tbaa !13
  %sub52.2 = sub nsw i32 %add37.2, %add49.2
  %arrayidx53.2 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 14
  store i32 %sub52.2, i32* %arrayidx53.2, align 4, !tbaa !13
  %add.ptr54.2 = getelementptr inbounds i8, i8* %add.ptr54.1, i32 %stride
  %add.ptr.3 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 3
  %25 = load i8, i8* %add.ptr54.2, align 1, !tbaa !6
  %conv.3 = zext i8 %25 to i32
  %arrayidx3.3 = getelementptr inbounds i8, i8* %add.ptr54.2, i32 1
  %26 = load i8, i8* %arrayidx3.3, align 1, !tbaa !6
  %conv4.3 = zext i8 %26 to i32
  %add.3 = add nuw nsw i32 %conv4.3, %conv.3
  %sub.3 = sub nsw i32 %conv.3, %conv4.3
  %shl.3 = shl nsw i32 %sub.3, 16
  %add9.3 = or i32 %shl.3, %add.3
  %arrayidx10.3 = getelementptr inbounds i8, i8* %add.ptr54.2, i32 2
  %27 = load i8, i8* %arrayidx10.3, align 1, !tbaa !6
  %conv11.3 = zext i8 %27 to i32
  %arrayidx12.3 = getelementptr inbounds i8, i8* %add.ptr54.2, i32 3
  %28 = load i8, i8* %arrayidx12.3, align 1, !tbaa !6
  %conv13.3 = zext i8 %28 to i32
  %add14.3 = add nuw nsw i32 %conv13.3, %conv11.3
  %sub19.3 = sub nsw i32 %conv11.3, %conv13.3
  %shl20.3 = shl nsw i32 %sub19.3, 16
  %add21.3 = or i32 %shl20.3, %add14.3
  %add22.3 = add nsw i32 %add21.3, %add9.3
  store i32 %add22.3, i32* %add.ptr.3, align 4, !tbaa !13
  %sub24.3 = sub nsw i32 %add9.3, %add21.3
  %arrayidx25.3 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 7
  store i32 %sub24.3, i32* %arrayidx25.3, align 4, !tbaa !13
  %arrayidx26.3 = getelementptr inbounds i8, i8* %add.ptr54.2, i32 4
  %29 = load i8, i8* %arrayidx26.3, align 1, !tbaa !6
  %conv27.3 = zext i8 %29 to i32
  %arrayidx28.3 = getelementptr inbounds i8, i8* %add.ptr54.2, i32 5
  %30 = load i8, i8* %arrayidx28.3, align 1, !tbaa !6
  %conv29.3 = zext i8 %30 to i32
  %add30.3 = add nuw nsw i32 %conv29.3, %conv27.3
  %sub35.3 = sub nsw i32 %conv27.3, %conv29.3
  %shl36.3 = shl nsw i32 %sub35.3, 16
  %add37.3 = or i32 %shl36.3, %add30.3
  %arrayidx38.3 = getelementptr inbounds i8, i8* %add.ptr54.2, i32 6
  %31 = load i8, i8* %arrayidx38.3, align 1, !tbaa !6
  %conv39.3 = zext i8 %31 to i32
  %arrayidx40.3 = getelementptr inbounds i8, i8* %add.ptr54.2, i32 7
  %32 = load i8, i8* %arrayidx40.3, align 1, !tbaa !6
  %conv41.3 = zext i8 %32 to i32
  %add42.3 = add nuw nsw i32 %conv41.3, %conv39.3
  %sub47.3 = sub nsw i32 %conv39.3, %conv41.3
  %shl48.3 = shl nsw i32 %sub47.3, 16
  %add49.3 = or i32 %shl48.3, %add42.3
  %add50.3 = add nsw i32 %add49.3, %add37.3
  %arrayidx51.3 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 11
  store i32 %add50.3, i32* %arrayidx51.3, align 4, !tbaa !13
  %sub52.3 = sub nsw i32 %add37.3, %add49.3
  %arrayidx53.3 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 15
  store i32 %sub52.3, i32* %arrayidx53.3, align 4, !tbaa !13
  %add.ptr54.3 = getelementptr inbounds i8, i8* %add.ptr54.2, i32 %stride
  %add.ptr2.4 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 16
  %33 = load i8, i8* %add.ptr54.3, align 1, !tbaa !6
  %conv.4 = zext i8 %33 to i32
  %arrayidx3.4 = getelementptr inbounds i8, i8* %add.ptr54.3, i32 1
  %34 = load i8, i8* %arrayidx3.4, align 1, !tbaa !6
  %conv4.4 = zext i8 %34 to i32
  %add.4 = add nuw nsw i32 %conv4.4, %conv.4
  %sub.4 = sub nsw i32 %conv.4, %conv4.4
  %shl.4 = shl nsw i32 %sub.4, 16
  %add9.4 = or i32 %shl.4, %add.4
  %arrayidx10.4 = getelementptr inbounds i8, i8* %add.ptr54.3, i32 2
  %35 = load i8, i8* %arrayidx10.4, align 1, !tbaa !6
  %conv11.4 = zext i8 %35 to i32
  %arrayidx12.4 = getelementptr inbounds i8, i8* %add.ptr54.3, i32 3
  %36 = load i8, i8* %arrayidx12.4, align 1, !tbaa !6
  %conv13.4 = zext i8 %36 to i32
  %add14.4 = add nuw nsw i32 %conv13.4, %conv11.4
  %sub19.4 = sub nsw i32 %conv11.4, %conv13.4
  %shl20.4 = shl nsw i32 %sub19.4, 16
  %add21.4 = or i32 %shl20.4, %add14.4
  %add22.4 = add nsw i32 %add21.4, %add9.4
  store i32 %add22.4, i32* %add.ptr2.4, align 4, !tbaa !13
  %sub24.4 = sub nsw i32 %add9.4, %add21.4
  %arrayidx25.4 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 20
  store i32 %sub24.4, i32* %arrayidx25.4, align 4, !tbaa !13
  %arrayidx26.4 = getelementptr inbounds i8, i8* %add.ptr54.3, i32 4
  %37 = load i8, i8* %arrayidx26.4, align 1, !tbaa !6
  %conv27.4 = zext i8 %37 to i32
  %arrayidx28.4 = getelementptr inbounds i8, i8* %add.ptr54.3, i32 5
  %38 = load i8, i8* %arrayidx28.4, align 1, !tbaa !6
  %conv29.4 = zext i8 %38 to i32
  %add30.4 = add nuw nsw i32 %conv29.4, %conv27.4
  %sub35.4 = sub nsw i32 %conv27.4, %conv29.4
  %shl36.4 = shl nsw i32 %sub35.4, 16
  %add37.4 = or i32 %shl36.4, %add30.4
  %arrayidx38.4 = getelementptr inbounds i8, i8* %add.ptr54.3, i32 6
  %39 = load i8, i8* %arrayidx38.4, align 1, !tbaa !6
  %conv39.4 = zext i8 %39 to i32
  %arrayidx40.4 = getelementptr inbounds i8, i8* %add.ptr54.3, i32 7
  %40 = load i8, i8* %arrayidx40.4, align 1, !tbaa !6
  %conv41.4 = zext i8 %40 to i32
  %add42.4 = add nuw nsw i32 %conv41.4, %conv39.4
  %sub47.4 = sub nsw i32 %conv39.4, %conv41.4
  %shl48.4 = shl nsw i32 %sub47.4, 16
  %add49.4 = or i32 %shl48.4, %add42.4
  %add50.4 = add nsw i32 %add49.4, %add37.4
  %arrayidx51.4 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 24
  store i32 %add50.4, i32* %arrayidx51.4, align 4, !tbaa !13
  %sub52.4 = sub nsw i32 %add37.4, %add49.4
  %arrayidx53.4 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 28
  store i32 %sub52.4, i32* %arrayidx53.4, align 4, !tbaa !13
  %add.ptr54.4 = getelementptr inbounds i8, i8* %add.ptr54.3, i32 %stride
  %add.ptr2.5 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 17
  %41 = load i8, i8* %add.ptr54.4, align 1, !tbaa !6
  %conv.5 = zext i8 %41 to i32
  %arrayidx3.5 = getelementptr inbounds i8, i8* %add.ptr54.4, i32 1
  %42 = load i8, i8* %arrayidx3.5, align 1, !tbaa !6
  %conv4.5 = zext i8 %42 to i32
  %add.5 = add nuw nsw i32 %conv4.5, %conv.5
  %sub.5 = sub nsw i32 %conv.5, %conv4.5
  %shl.5 = shl nsw i32 %sub.5, 16
  %add9.5 = or i32 %shl.5, %add.5
  %arrayidx10.5 = getelementptr inbounds i8, i8* %add.ptr54.4, i32 2
  %43 = load i8, i8* %arrayidx10.5, align 1, !tbaa !6
  %conv11.5 = zext i8 %43 to i32
  %arrayidx12.5 = getelementptr inbounds i8, i8* %add.ptr54.4, i32 3
  %44 = load i8, i8* %arrayidx12.5, align 1, !tbaa !6
  %conv13.5 = zext i8 %44 to i32
  %add14.5 = add nuw nsw i32 %conv13.5, %conv11.5
  %sub19.5 = sub nsw i32 %conv11.5, %conv13.5
  %shl20.5 = shl nsw i32 %sub19.5, 16
  %add21.5 = or i32 %shl20.5, %add14.5
  %add22.5 = add nsw i32 %add21.5, %add9.5
  store i32 %add22.5, i32* %add.ptr2.5, align 4, !tbaa !13
  %sub24.5 = sub nsw i32 %add9.5, %add21.5
  %arrayidx25.5 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 21
  store i32 %sub24.5, i32* %arrayidx25.5, align 4, !tbaa !13
  %arrayidx26.5 = getelementptr inbounds i8, i8* %add.ptr54.4, i32 4
  %45 = load i8, i8* %arrayidx26.5, align 1, !tbaa !6
  %conv27.5 = zext i8 %45 to i32
  %arrayidx28.5 = getelementptr inbounds i8, i8* %add.ptr54.4, i32 5
  %46 = load i8, i8* %arrayidx28.5, align 1, !tbaa !6
  %conv29.5 = zext i8 %46 to i32
  %add30.5 = add nuw nsw i32 %conv29.5, %conv27.5
  %sub35.5 = sub nsw i32 %conv27.5, %conv29.5
  %shl36.5 = shl nsw i32 %sub35.5, 16
  %add37.5 = or i32 %shl36.5, %add30.5
  %arrayidx38.5 = getelementptr inbounds i8, i8* %add.ptr54.4, i32 6
  %47 = load i8, i8* %arrayidx38.5, align 1, !tbaa !6
  %conv39.5 = zext i8 %47 to i32
  %arrayidx40.5 = getelementptr inbounds i8, i8* %add.ptr54.4, i32 7
  %48 = load i8, i8* %arrayidx40.5, align 1, !tbaa !6
  %conv41.5 = zext i8 %48 to i32
  %add42.5 = add nuw nsw i32 %conv41.5, %conv39.5
  %sub47.5 = sub nsw i32 %conv39.5, %conv41.5
  %shl48.5 = shl nsw i32 %sub47.5, 16
  %add49.5 = or i32 %shl48.5, %add42.5
  %add50.5 = add nsw i32 %add49.5, %add37.5
  %arrayidx51.5 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 25
  store i32 %add50.5, i32* %arrayidx51.5, align 4, !tbaa !13
  %sub52.5 = sub nsw i32 %add37.5, %add49.5
  %arrayidx53.5 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 29
  store i32 %sub52.5, i32* %arrayidx53.5, align 4, !tbaa !13
  %add.ptr54.5 = getelementptr inbounds i8, i8* %add.ptr54.4, i32 %stride
  %add.ptr2.6 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 18
  %49 = load i8, i8* %add.ptr54.5, align 1, !tbaa !6
  %conv.6 = zext i8 %49 to i32
  %arrayidx3.6 = getelementptr inbounds i8, i8* %add.ptr54.5, i32 1
  %50 = load i8, i8* %arrayidx3.6, align 1, !tbaa !6
  %conv4.6 = zext i8 %50 to i32
  %add.6 = add nuw nsw i32 %conv4.6, %conv.6
  %sub.6 = sub nsw i32 %conv.6, %conv4.6
  %shl.6 = shl nsw i32 %sub.6, 16
  %add9.6 = or i32 %shl.6, %add.6
  %arrayidx10.6 = getelementptr inbounds i8, i8* %add.ptr54.5, i32 2
  %51 = load i8, i8* %arrayidx10.6, align 1, !tbaa !6
  %conv11.6 = zext i8 %51 to i32
  %arrayidx12.6 = getelementptr inbounds i8, i8* %add.ptr54.5, i32 3
  %52 = load i8, i8* %arrayidx12.6, align 1, !tbaa !6
  %conv13.6 = zext i8 %52 to i32
  %add14.6 = add nuw nsw i32 %conv13.6, %conv11.6
  %sub19.6 = sub nsw i32 %conv11.6, %conv13.6
  %shl20.6 = shl nsw i32 %sub19.6, 16
  %add21.6 = or i32 %shl20.6, %add14.6
  %add22.6 = add nsw i32 %add21.6, %add9.6
  store i32 %add22.6, i32* %add.ptr2.6, align 4, !tbaa !13
  %sub24.6 = sub nsw i32 %add9.6, %add21.6
  %arrayidx25.6 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 22
  store i32 %sub24.6, i32* %arrayidx25.6, align 4, !tbaa !13
  %arrayidx26.6 = getelementptr inbounds i8, i8* %add.ptr54.5, i32 4
  %53 = load i8, i8* %arrayidx26.6, align 1, !tbaa !6
  %conv27.6 = zext i8 %53 to i32
  %arrayidx28.6 = getelementptr inbounds i8, i8* %add.ptr54.5, i32 5
  %54 = load i8, i8* %arrayidx28.6, align 1, !tbaa !6
  %conv29.6 = zext i8 %54 to i32
  %add30.6 = add nuw nsw i32 %conv29.6, %conv27.6
  %sub35.6 = sub nsw i32 %conv27.6, %conv29.6
  %shl36.6 = shl nsw i32 %sub35.6, 16
  %add37.6 = or i32 %shl36.6, %add30.6
  %arrayidx38.6 = getelementptr inbounds i8, i8* %add.ptr54.5, i32 6
  %55 = load i8, i8* %arrayidx38.6, align 1, !tbaa !6
  %conv39.6 = zext i8 %55 to i32
  %arrayidx40.6 = getelementptr inbounds i8, i8* %add.ptr54.5, i32 7
  %56 = load i8, i8* %arrayidx40.6, align 1, !tbaa !6
  %conv41.6 = zext i8 %56 to i32
  %add42.6 = add nuw nsw i32 %conv41.6, %conv39.6
  %sub47.6 = sub nsw i32 %conv39.6, %conv41.6
  %shl48.6 = shl nsw i32 %sub47.6, 16
  %add49.6 = or i32 %shl48.6, %add42.6
  %add50.6 = add nsw i32 %add49.6, %add37.6
  %arrayidx51.6 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 26
  store i32 %add50.6, i32* %arrayidx51.6, align 4, !tbaa !13
  %sub52.6 = sub nsw i32 %add37.6, %add49.6
  %arrayidx53.6 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 30
  store i32 %sub52.6, i32* %arrayidx53.6, align 4, !tbaa !13
  %add.ptr54.6 = getelementptr inbounds i8, i8* %add.ptr54.5, i32 %stride
  %add.ptr2.7 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 19
  %57 = load i8, i8* %add.ptr54.6, align 1, !tbaa !6
  %conv.7 = zext i8 %57 to i32
  %arrayidx3.7 = getelementptr inbounds i8, i8* %add.ptr54.6, i32 1
  %58 = load i8, i8* %arrayidx3.7, align 1, !tbaa !6
  %conv4.7 = zext i8 %58 to i32
  %add.7 = add nuw nsw i32 %conv4.7, %conv.7
  %sub.7 = sub nsw i32 %conv.7, %conv4.7
  %shl.7 = shl nsw i32 %sub.7, 16
  %add9.7 = or i32 %shl.7, %add.7
  %arrayidx10.7 = getelementptr inbounds i8, i8* %add.ptr54.6, i32 2
  %59 = load i8, i8* %arrayidx10.7, align 1, !tbaa !6
  %conv11.7 = zext i8 %59 to i32
  %arrayidx12.7 = getelementptr inbounds i8, i8* %add.ptr54.6, i32 3
  %60 = load i8, i8* %arrayidx12.7, align 1, !tbaa !6
  %conv13.7 = zext i8 %60 to i32
  %add14.7 = add nuw nsw i32 %conv13.7, %conv11.7
  %sub19.7 = sub nsw i32 %conv11.7, %conv13.7
  %shl20.7 = shl nsw i32 %sub19.7, 16
  %add21.7 = or i32 %shl20.7, %add14.7
  %add22.7 = add nsw i32 %add21.7, %add9.7
  store i32 %add22.7, i32* %add.ptr2.7, align 4, !tbaa !13
  %sub24.7 = sub nsw i32 %add9.7, %add21.7
  %arrayidx25.7 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 23
  store i32 %sub24.7, i32* %arrayidx25.7, align 4, !tbaa !13
  %arrayidx26.7 = getelementptr inbounds i8, i8* %add.ptr54.6, i32 4
  %61 = load i8, i8* %arrayidx26.7, align 1, !tbaa !6
  %conv27.7 = zext i8 %61 to i32
  %arrayidx28.7 = getelementptr inbounds i8, i8* %add.ptr54.6, i32 5
  %62 = load i8, i8* %arrayidx28.7, align 1, !tbaa !6
  %conv29.7 = zext i8 %62 to i32
  %add30.7 = add nuw nsw i32 %conv29.7, %conv27.7
  %sub35.7 = sub nsw i32 %conv27.7, %conv29.7
  %shl36.7 = shl nsw i32 %sub35.7, 16
  %add37.7 = or i32 %shl36.7, %add30.7
  %arrayidx38.7 = getelementptr inbounds i8, i8* %add.ptr54.6, i32 6
  %63 = load i8, i8* %arrayidx38.7, align 1, !tbaa !6
  %conv39.7 = zext i8 %63 to i32
  %arrayidx40.7 = getelementptr inbounds i8, i8* %add.ptr54.6, i32 7
  %64 = load i8, i8* %arrayidx40.7, align 1, !tbaa !6
  %conv41.7 = zext i8 %64 to i32
  %add42.7 = add nuw nsw i32 %conv41.7, %conv39.7
  %sub47.7 = sub nsw i32 %conv39.7, %conv41.7
  %shl48.7 = shl nsw i32 %sub47.7, 16
  %add49.7 = or i32 %shl48.7, %add42.7
  %add50.7 = add nsw i32 %add49.7, %add37.7
  %arrayidx51.7 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 27
  store i32 %add50.7, i32* %arrayidx51.7, align 4, !tbaa !13
  %sub52.7 = sub nsw i32 %add37.7, %add49.7
  %arrayidx53.7 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 31
  store i32 %sub52.7, i32* %arrayidx53.7, align 4, !tbaa !13
  br label %for.body60

for.cond116.preheader:                            ; preds = %for.body60
  %65 = load i32, i32* %add.ptr, align 4, !tbaa !13
  %arrayidx124 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 8
  %66 = load i32, i32* %arrayidx124, align 4, !tbaa !13
  %add125 = add i32 %66, %65
  %sub130 = sub i32 %65, %66
  %arrayidx133 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 16
  %67 = load i32, i32* %arrayidx133, align 4, !tbaa !13
  %arrayidx135 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 24
  %68 = load i32, i32* %arrayidx135, align 4, !tbaa !13
  %add136 = add i32 %68, %67
  %sub142 = sub i32 %67, %68
  %add143 = add i32 %add136, %add125
  %sub144 = sub i32 %add125, %add136
  %add145 = add i32 %sub142, %sub130
  %sub146 = sub i32 %sub130, %sub142
  %shr.i289 = lshr i32 %add143, 15
  %and.i290 = and i32 %shr.i289, 65537
  %mul.i291 = mul nuw i32 %and.i290, 65535
  %add.i292 = add i32 %mul.i291, %add143
  %xor.i293 = xor i32 %add.i292, %mul.i291
  %shr.i284 = lshr i32 %add145, 15
  %and.i285 = and i32 %shr.i284, 65537
  %mul.i286 = mul nuw i32 %and.i285, 65535
  %add.i287 = add i32 %mul.i286, %add145
  %xor.i288 = xor i32 %add.i287, %mul.i286
  %shr.i279 = lshr i32 %sub144, 15
  %and.i280 = and i32 %shr.i279, 65537
  %mul.i281 = mul nuw i32 %and.i280, 65535
  %add.i282 = add i32 %mul.i281, %sub144
  %xor.i283 = xor i32 %add.i282, %mul.i281
  %shr.i274 = lshr i32 %sub146, 15
  %and.i275 = and i32 %shr.i274, 65537
  %mul.i276 = mul nuw i32 %and.i275, 65535
  %add.i277 = add i32 %mul.i276, %sub146
  %xor.i278 = xor i32 %add.i277, %mul.i276
  %add151 = add i32 %xor.i288, %xor.i293
  %add153 = add i32 %add151, %xor.i283
  %add154 = add i32 %add153, %xor.i278
  %69 = load i32, i32* %add.ptr.1, align 4, !tbaa !13
  %arrayidx124.1 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 9
  %70 = load i32, i32* %arrayidx124.1, align 4, !tbaa !13
  %add125.1 = add i32 %70, %69
  %sub130.1 = sub i32 %69, %70
  %arrayidx133.1 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 17
  %71 = load i32, i32* %arrayidx133.1, align 4, !tbaa !13
  %arrayidx135.1 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 25
  %72 = load i32, i32* %arrayidx135.1, align 4, !tbaa !13
  %add136.1 = add i32 %72, %71
  %sub142.1 = sub i32 %71, %72
  %add143.1 = add i32 %add136.1, %add125.1
  %sub144.1 = sub i32 %add125.1, %add136.1
  %add145.1 = add i32 %sub142.1, %sub130.1
  %sub146.1 = sub i32 %sub130.1, %sub142.1
  %shr.i289.1 = lshr i32 %add143.1, 15
  %and.i290.1 = and i32 %shr.i289.1, 65537
  %mul.i291.1 = mul nuw i32 %and.i290.1, 65535
  %add.i292.1 = add i32 %mul.i291.1, %add143.1
  %xor.i293.1 = xor i32 %add.i292.1, %mul.i291.1
  %shr.i284.1 = lshr i32 %add145.1, 15
  %and.i285.1 = and i32 %shr.i284.1, 65537
  %mul.i286.1 = mul nuw i32 %and.i285.1, 65535
  %add.i287.1 = add i32 %mul.i286.1, %add145.1
  %xor.i288.1 = xor i32 %add.i287.1, %mul.i286.1
  %shr.i279.1 = lshr i32 %sub144.1, 15
  %and.i280.1 = and i32 %shr.i279.1, 65537
  %mul.i281.1 = mul nuw i32 %and.i280.1, 65535
  %add.i282.1 = add i32 %mul.i281.1, %sub144.1
  %xor.i283.1 = xor i32 %add.i282.1, %mul.i281.1
  %shr.i274.1 = lshr i32 %sub146.1, 15
  %and.i275.1 = and i32 %shr.i274.1, 65537
  %mul.i276.1 = mul nuw i32 %and.i275.1, 65535
  %add.i277.1 = add i32 %mul.i276.1, %sub146.1
  %xor.i278.1 = xor i32 %add.i277.1, %mul.i276.1
  %add149.1 = add i32 %xor.i288.1, %add154
  %add151.1 = add i32 %add149.1, %xor.i293.1
  %add153.1 = add i32 %add151.1, %xor.i283.1
  %add154.1 = add i32 %add153.1, %xor.i278.1
  %73 = load i32, i32* %add.ptr.2, align 4, !tbaa !13
  %arrayidx124.2 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 10
  %74 = load i32, i32* %arrayidx124.2, align 4, !tbaa !13
  %add125.2 = add i32 %74, %73
  %sub130.2 = sub i32 %73, %74
  %arrayidx133.2 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 18
  %75 = load i32, i32* %arrayidx133.2, align 4, !tbaa !13
  %arrayidx135.2 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 26
  %76 = load i32, i32* %arrayidx135.2, align 4, !tbaa !13
  %add136.2 = add i32 %76, %75
  %sub142.2 = sub i32 %75, %76
  %add143.2 = add i32 %add136.2, %add125.2
  %sub144.2 = sub i32 %add125.2, %add136.2
  %add145.2 = add i32 %sub142.2, %sub130.2
  %sub146.2 = sub i32 %sub130.2, %sub142.2
  %shr.i289.2 = lshr i32 %add143.2, 15
  %and.i290.2 = and i32 %shr.i289.2, 65537
  %mul.i291.2 = mul nuw i32 %and.i290.2, 65535
  %add.i292.2 = add i32 %mul.i291.2, %add143.2
  %xor.i293.2 = xor i32 %add.i292.2, %mul.i291.2
  %shr.i284.2 = lshr i32 %add145.2, 15
  %and.i285.2 = and i32 %shr.i284.2, 65537
  %mul.i286.2 = mul nuw i32 %and.i285.2, 65535
  %add.i287.2 = add i32 %mul.i286.2, %add145.2
  %xor.i288.2 = xor i32 %add.i287.2, %mul.i286.2
  %shr.i279.2 = lshr i32 %sub144.2, 15
  %and.i280.2 = and i32 %shr.i279.2, 65537
  %mul.i281.2 = mul nuw i32 %and.i280.2, 65535
  %add.i282.2 = add i32 %mul.i281.2, %sub144.2
  %xor.i283.2 = xor i32 %add.i282.2, %mul.i281.2
  %shr.i274.2 = lshr i32 %sub146.2, 15
  %and.i275.2 = and i32 %shr.i274.2, 65537
  %mul.i276.2 = mul nuw i32 %and.i275.2, 65535
  %add.i277.2 = add i32 %mul.i276.2, %sub146.2
  %xor.i278.2 = xor i32 %add.i277.2, %mul.i276.2
  %add149.2 = add i32 %xor.i288.2, %add154.1
  %add151.2 = add i32 %add149.2, %xor.i293.2
  %add153.2 = add i32 %add151.2, %xor.i283.2
  %add154.2 = add i32 %add153.2, %xor.i278.2
  %77 = load i32, i32* %add.ptr.3, align 4, !tbaa !13
  %arrayidx124.3 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 11
  %78 = load i32, i32* %arrayidx124.3, align 4, !tbaa !13
  %add125.3 = add i32 %78, %77
  %sub130.3 = sub i32 %77, %78
  %arrayidx133.3 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 19
  %79 = load i32, i32* %arrayidx133.3, align 4, !tbaa !13
  %arrayidx135.3 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 27
  %80 = load i32, i32* %arrayidx135.3, align 4, !tbaa !13
  %add136.3 = add i32 %80, %79
  %sub142.3 = sub i32 %79, %80
  %add143.3 = add i32 %add136.3, %add125.3
  %sub144.3 = sub i32 %add125.3, %add136.3
  %add145.3 = add i32 %sub142.3, %sub130.3
  %sub146.3 = sub i32 %sub130.3, %sub142.3
  %shr.i289.3 = lshr i32 %add143.3, 15
  %and.i290.3 = and i32 %shr.i289.3, 65537
  %mul.i291.3 = mul nuw i32 %and.i290.3, 65535
  %add.i292.3 = add i32 %mul.i291.3, %add143.3
  %xor.i293.3 = xor i32 %add.i292.3, %mul.i291.3
  %shr.i284.3 = lshr i32 %add145.3, 15
  %and.i285.3 = and i32 %shr.i284.3, 65537
  %mul.i286.3 = mul nuw i32 %and.i285.3, 65535
  %add.i287.3 = add i32 %mul.i286.3, %add145.3
  %xor.i288.3 = xor i32 %add.i287.3, %mul.i286.3
  %shr.i279.3 = lshr i32 %sub144.3, 15
  %and.i280.3 = and i32 %shr.i279.3, 65537
  %mul.i281.3 = mul nuw i32 %and.i280.3, 65535
  %add.i282.3 = add i32 %mul.i281.3, %sub144.3
  %xor.i283.3 = xor i32 %add.i282.3, %mul.i281.3
  %shr.i274.3 = lshr i32 %sub146.3, 15
  %and.i275.3 = and i32 %shr.i274.3, 65537
  %mul.i276.3 = mul nuw i32 %and.i275.3, 65535
  %add.i277.3 = add i32 %mul.i276.3, %sub146.3
  %xor.i278.3 = xor i32 %add.i277.3, %mul.i276.3
  %add149.3 = add i32 %xor.i288.3, %add154.2
  %add151.3 = add i32 %add149.3, %xor.i293.3
  %add153.3 = add i32 %add151.3, %xor.i283.3
  %add154.3 = add i32 %add153.3, %xor.i278.3
  %arrayidx122.4 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 4
  %81 = load i32, i32* %arrayidx122.4, align 4, !tbaa !13
  %arrayidx124.4 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 12
  %82 = load i32, i32* %arrayidx124.4, align 4, !tbaa !13
  %add125.4 = add i32 %82, %81
  %sub130.4 = sub i32 %81, %82
  %arrayidx133.4 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 20
  %83 = load i32, i32* %arrayidx133.4, align 4, !tbaa !13
  %arrayidx135.4 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 28
  %84 = load i32, i32* %arrayidx135.4, align 4, !tbaa !13
  %add136.4 = add i32 %84, %83
  %sub142.4 = sub i32 %83, %84
  %add143.4 = add i32 %add136.4, %add125.4
  %sub144.4 = sub i32 %add125.4, %add136.4
  %add145.4 = add i32 %sub142.4, %sub130.4
  %sub146.4 = sub i32 %sub130.4, %sub142.4
  %shr.i289.4 = lshr i32 %add143.4, 15
  %and.i290.4 = and i32 %shr.i289.4, 65537
  %mul.i291.4 = mul nuw i32 %and.i290.4, 65535
  %add.i292.4 = add i32 %mul.i291.4, %add143.4
  %xor.i293.4 = xor i32 %add.i292.4, %mul.i291.4
  %shr.i284.4 = lshr i32 %add145.4, 15
  %and.i285.4 = and i32 %shr.i284.4, 65537
  %mul.i286.4 = mul nuw i32 %and.i285.4, 65535
  %add.i287.4 = add i32 %mul.i286.4, %add145.4
  %xor.i288.4 = xor i32 %add.i287.4, %mul.i286.4
  %shr.i279.4 = lshr i32 %sub144.4, 15
  %and.i280.4 = and i32 %shr.i279.4, 65537
  %mul.i281.4 = mul nuw i32 %and.i280.4, 65535
  %add.i282.4 = add i32 %mul.i281.4, %sub144.4
  %xor.i283.4 = xor i32 %add.i282.4, %mul.i281.4
  %shr.i274.4 = lshr i32 %sub146.4, 15
  %and.i275.4 = and i32 %shr.i274.4, 65537
  %mul.i276.4 = mul nuw i32 %and.i275.4, 65535
  %add.i277.4 = add i32 %mul.i276.4, %sub146.4
  %xor.i278.4 = xor i32 %add.i277.4, %mul.i276.4
  %add149.4 = add i32 %xor.i288.4, %add154.3
  %add151.4 = add i32 %add149.4, %xor.i293.4
  %add153.4 = add i32 %add151.4, %xor.i283.4
  %add154.4 = add i32 %add153.4, %xor.i278.4
  %arrayidx122.5 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 5
  %85 = load i32, i32* %arrayidx122.5, align 4, !tbaa !13
  %arrayidx124.5 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 13
  %86 = load i32, i32* %arrayidx124.5, align 4, !tbaa !13
  %add125.5 = add i32 %86, %85
  %sub130.5 = sub i32 %85, %86
  %arrayidx133.5 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 21
  %87 = load i32, i32* %arrayidx133.5, align 4, !tbaa !13
  %arrayidx135.5 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 29
  %88 = load i32, i32* %arrayidx135.5, align 4, !tbaa !13
  %add136.5 = add i32 %88, %87
  %sub142.5 = sub i32 %87, %88
  %add143.5 = add i32 %add136.5, %add125.5
  %sub144.5 = sub i32 %add125.5, %add136.5
  %add145.5 = add i32 %sub142.5, %sub130.5
  %sub146.5 = sub i32 %sub130.5, %sub142.5
  %shr.i289.5 = lshr i32 %add143.5, 15
  %and.i290.5 = and i32 %shr.i289.5, 65537
  %mul.i291.5 = mul nuw i32 %and.i290.5, 65535
  %add.i292.5 = add i32 %mul.i291.5, %add143.5
  %xor.i293.5 = xor i32 %add.i292.5, %mul.i291.5
  %shr.i284.5 = lshr i32 %add145.5, 15
  %and.i285.5 = and i32 %shr.i284.5, 65537
  %mul.i286.5 = mul nuw i32 %and.i285.5, 65535
  %add.i287.5 = add i32 %mul.i286.5, %add145.5
  %xor.i288.5 = xor i32 %add.i287.5, %mul.i286.5
  %shr.i279.5 = lshr i32 %sub144.5, 15
  %and.i280.5 = and i32 %shr.i279.5, 65537
  %mul.i281.5 = mul nuw i32 %and.i280.5, 65535
  %add.i282.5 = add i32 %mul.i281.5, %sub144.5
  %xor.i283.5 = xor i32 %add.i282.5, %mul.i281.5
  %shr.i274.5 = lshr i32 %sub146.5, 15
  %and.i275.5 = and i32 %shr.i274.5, 65537
  %mul.i276.5 = mul nuw i32 %and.i275.5, 65535
  %add.i277.5 = add i32 %mul.i276.5, %sub146.5
  %xor.i278.5 = xor i32 %add.i277.5, %mul.i276.5
  %add149.5 = add i32 %xor.i288.5, %add154.4
  %add151.5 = add i32 %add149.5, %xor.i293.5
  %add153.5 = add i32 %add151.5, %xor.i283.5
  %add154.5 = add i32 %add153.5, %xor.i278.5
  %arrayidx122.6 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 6
  %89 = load i32, i32* %arrayidx122.6, align 4, !tbaa !13
  %arrayidx124.6 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 14
  %90 = load i32, i32* %arrayidx124.6, align 4, !tbaa !13
  %add125.6 = add i32 %90, %89
  %sub130.6 = sub i32 %89, %90
  %arrayidx133.6 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 22
  %91 = load i32, i32* %arrayidx133.6, align 4, !tbaa !13
  %arrayidx135.6 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 30
  %92 = load i32, i32* %arrayidx135.6, align 4, !tbaa !13
  %add136.6 = add i32 %92, %91
  %sub142.6 = sub i32 %91, %92
  %add143.6 = add i32 %add136.6, %add125.6
  %sub144.6 = sub i32 %add125.6, %add136.6
  %add145.6 = add i32 %sub142.6, %sub130.6
  %sub146.6 = sub i32 %sub130.6, %sub142.6
  %shr.i289.6 = lshr i32 %add143.6, 15
  %and.i290.6 = and i32 %shr.i289.6, 65537
  %mul.i291.6 = mul nuw i32 %and.i290.6, 65535
  %add.i292.6 = add i32 %mul.i291.6, %add143.6
  %xor.i293.6 = xor i32 %add.i292.6, %mul.i291.6
  %shr.i284.6 = lshr i32 %add145.6, 15
  %and.i285.6 = and i32 %shr.i284.6, 65537
  %mul.i286.6 = mul nuw i32 %and.i285.6, 65535
  %add.i287.6 = add i32 %mul.i286.6, %add145.6
  %xor.i288.6 = xor i32 %add.i287.6, %mul.i286.6
  %shr.i279.6 = lshr i32 %sub144.6, 15
  %and.i280.6 = and i32 %shr.i279.6, 65537
  %mul.i281.6 = mul nuw i32 %and.i280.6, 65535
  %add.i282.6 = add i32 %mul.i281.6, %sub144.6
  %xor.i283.6 = xor i32 %add.i282.6, %mul.i281.6
  %shr.i274.6 = lshr i32 %sub146.6, 15
  %and.i275.6 = and i32 %shr.i274.6, 65537
  %mul.i276.6 = mul nuw i32 %and.i275.6, 65535
  %add.i277.6 = add i32 %mul.i276.6, %sub146.6
  %xor.i278.6 = xor i32 %add.i277.6, %mul.i276.6
  %add149.6 = add i32 %xor.i288.6, %add154.5
  %add151.6 = add i32 %add149.6, %xor.i293.6
  %add153.6 = add i32 %add151.6, %xor.i283.6
  %add154.6 = add i32 %add153.6, %xor.i278.6
  %arrayidx122.7 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 7
  %93 = load i32, i32* %arrayidx122.7, align 4, !tbaa !13
  %arrayidx124.7 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 15
  %94 = load i32, i32* %arrayidx124.7, align 4, !tbaa !13
  %add125.7 = add i32 %94, %93
  %sub130.7 = sub i32 %93, %94
  %arrayidx133.7 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 23
  %95 = load i32, i32* %arrayidx133.7, align 4, !tbaa !13
  %arrayidx135.7 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 31
  %96 = load i32, i32* %arrayidx135.7, align 4, !tbaa !13
  %add136.7 = add i32 %96, %95
  %sub142.7 = sub i32 %95, %96
  %add143.7 = add i32 %add136.7, %add125.7
  %sub144.7 = sub i32 %add125.7, %add136.7
  %add145.7 = add i32 %sub142.7, %sub130.7
  %sub146.7 = sub i32 %sub130.7, %sub142.7
  %shr.i289.7 = lshr i32 %add143.7, 15
  %and.i290.7 = and i32 %shr.i289.7, 65537
  %mul.i291.7 = mul nuw i32 %and.i290.7, 65535
  %add.i292.7 = add i32 %mul.i291.7, %add143.7
  %xor.i293.7 = xor i32 %add.i292.7, %mul.i291.7
  %shr.i284.7 = lshr i32 %add145.7, 15
  %and.i285.7 = and i32 %shr.i284.7, 65537
  %mul.i286.7 = mul nuw i32 %and.i285.7, 65535
  %add.i287.7 = add i32 %mul.i286.7, %add145.7
  %xor.i288.7 = xor i32 %add.i287.7, %mul.i286.7
  %shr.i279.7 = lshr i32 %sub144.7, 15
  %and.i280.7 = and i32 %shr.i279.7, 65537
  %mul.i281.7 = mul nuw i32 %and.i280.7, 65535
  %add.i282.7 = add i32 %mul.i281.7, %sub144.7
  %xor.i283.7 = xor i32 %add.i282.7, %mul.i281.7
  %shr.i274.7 = lshr i32 %sub146.7, 15
  %and.i275.7 = and i32 %shr.i274.7, 65537
  %mul.i276.7 = mul nuw i32 %and.i275.7, 65535
  %add.i277.7 = add i32 %mul.i276.7, %sub146.7
  %xor.i278.7 = xor i32 %add.i277.7, %mul.i276.7
  %add149.7 = add i32 %xor.i288.7, %add154.6
  %add151.7 = add i32 %add149.7, %xor.i293.7
  %add153.7 = add i32 %add151.7, %xor.i283.7
  %add154.7 = add i32 %add153.7, %xor.i278.7
  %97 = load i32, i32* %add.ptr, align 4, !tbaa !13
  %98 = load i32, i32* %arrayidx124, align 4, !tbaa !13
  %add160 = add i32 %98, %97
  %99 = load i32, i32* %arrayidx133, align 4, !tbaa !13
  %add162 = add i32 %add160, %99
  %100 = load i32, i32* %arrayidx135, align 4, !tbaa !13
  %add164 = add i32 %add162, %100
  %conv166 = and i32 %add164, 65535
  %conv168 = and i32 %add111, 65535
  %shr = lshr i32 %add111, 16
  %add169 = add nuw nsw i32 %conv168, %shr
  %sub170 = sub nsw i32 %add169, %conv166
  %conv172 = and i32 %add154.7, 65535
  %shr173 = lshr i32 %add154.7, 16
  %add174 = add nuw nsw i32 %conv172, %shr173
  %sub175 = sub nsw i32 %add174, %conv166
  %conv176 = zext i32 %sub175 to i64
  %shl177 = shl nuw i64 %conv176, 32
  %conv178 = zext i32 %sub170 to i64
  %add179 = or i64 %shl177, %conv178
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #8
  ret i64 %add179

for.body60:                                       ; preds = %for.body60, %entry
  %sum4.0312 = phi i32 [ %add111, %for.body60 ], [ 0, %entry ]
  %i55.0311 = phi i32 [ %inc113, %for.body60 ], [ 0, %entry ]
  %mul61 = shl nuw nsw i32 %i55.0311, 2
  %arrayidx63 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 %mul61
  %101 = load i32, i32* %arrayidx63, align 4, !tbaa !13
  %add65 = or i32 %mul61, 1
  %arrayidx66 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 %add65
  %102 = load i32, i32* %arrayidx66, align 4, !tbaa !13
  %add67 = add i32 %102, %101
  %sub74 = sub i32 %101, %102
  %add76 = or i32 %mul61, 2
  %arrayidx77 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 %add76
  %103 = load i32, i32* %arrayidx77, align 4, !tbaa !13
  %add79 = or i32 %mul61, 3
  %arrayidx80 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp, i32 0, i32 %add79
  %104 = load i32, i32* %arrayidx80, align 4, !tbaa !13
  %add81 = add i32 %104, %103
  %sub88 = sub i32 %103, %104
  %add89 = add i32 %add81, %add67
  %sub90 = sub i32 %add67, %add81
  %add91 = add i32 %sub88, %sub74
  %sub92 = sub i32 %sub74, %sub88
  store i32 %add89, i32* %arrayidx63, align 4, !tbaa !13
  store i32 %add91, i32* %arrayidx66, align 4, !tbaa !13
  store i32 %sub90, i32* %arrayidx77, align 4, !tbaa !13
  store i32 %sub92, i32* %arrayidx80, align 4, !tbaa !13
  %shr.i = lshr i32 %add89, 15
  %and.i = and i32 %shr.i, 65537
  %mul.i = mul nuw i32 %and.i, 65535
  %add.i = add i32 %mul.i, %add89
  %xor.i = xor i32 %add.i, %mul.i
  %shr.i304 = lshr i32 %add91, 15
  %and.i305 = and i32 %shr.i304, 65537
  %mul.i306 = mul nuw i32 %and.i305, 65535
  %add.i307 = add i32 %mul.i306, %add91
  %xor.i308 = xor i32 %add.i307, %mul.i306
  %shr.i299 = lshr i32 %sub90, 15
  %and.i300 = and i32 %shr.i299, 65537
  %mul.i301 = mul nuw i32 %and.i300, 65535
  %add.i302 = add i32 %mul.i301, %sub90
  %xor.i303 = xor i32 %add.i302, %mul.i301
  %shr.i294 = lshr i32 %sub92, 15
  %and.i295 = and i32 %shr.i294, 65537
  %mul.i296 = mul nuw i32 %and.i295, 65535
  %add.i297 = add i32 %mul.i296, %sub92
  %xor.i298 = xor i32 %add.i297, %mul.i296
  %add106 = add i32 %xor.i308, %sum4.0312
  %add108 = add i32 %add106, %xor.i
  %add110 = add i32 %add108, %xor.i303
  %add111 = add i32 %add110, %xor.i298
  %inc113 = add nuw nsw i32 %i55.0311, 1
  %exitcond = icmp eq i32 %inc113, 8
  br i1 %exitcond, label %for.cond116.preheader, label %for.body60
}

; Function Attrs: noinline nounwind readonly
define internal fastcc i32 @sa8d_8x8(i8* nocapture readonly %pix1, i32 %i_pix1, i8* nocapture readonly %pix2, i32 %i_pix2) unnamed_addr #5 {
entry:
  %tmp = alloca [8 x [4 x i32]], align 4
  %0 = bitcast [8 x [4 x i32]]* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #8
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %pix1.addr.0310 = phi i8* [ %pix1, %entry ], [ %add.ptr, %for.body ]
  %pix2.addr.0309 = phi i8* [ %pix2, %entry ], [ %add.ptr68, %for.body ]
  %i.0308 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %1 = load i8, i8* %pix1.addr.0310, align 1, !tbaa !6
  %conv = zext i8 %1 to i32
  %2 = load i8, i8* %pix2.addr.0309, align 1, !tbaa !6
  %conv2 = zext i8 %2 to i32
  %sub = sub nsw i32 %conv, %conv2
  %arrayidx3 = getelementptr inbounds i8, i8* %pix1.addr.0310, i32 1
  %3 = load i8, i8* %arrayidx3, align 1, !tbaa !6
  %conv4 = zext i8 %3 to i32
  %arrayidx5 = getelementptr inbounds i8, i8* %pix2.addr.0309, i32 1
  %4 = load i8, i8* %arrayidx5, align 1, !tbaa !6
  %conv6 = zext i8 %4 to i32
  %sub7 = sub nsw i32 %conv4, %conv6
  %add = add nsw i32 %sub7, %sub
  %sub8 = sub nsw i32 %sub, %sub7
  %shl = shl nsw i32 %sub8, 16
  %add9 = add nsw i32 %add, %shl
  %arrayidx10 = getelementptr inbounds i8, i8* %pix1.addr.0310, i32 2
  %5 = load i8, i8* %arrayidx10, align 1, !tbaa !6
  %conv11 = zext i8 %5 to i32
  %arrayidx12 = getelementptr inbounds i8, i8* %pix2.addr.0309, i32 2
  %6 = load i8, i8* %arrayidx12, align 1, !tbaa !6
  %conv13 = zext i8 %6 to i32
  %sub14 = sub nsw i32 %conv11, %conv13
  %arrayidx15 = getelementptr inbounds i8, i8* %pix1.addr.0310, i32 3
  %7 = load i8, i8* %arrayidx15, align 1, !tbaa !6
  %conv16 = zext i8 %7 to i32
  %arrayidx17 = getelementptr inbounds i8, i8* %pix2.addr.0309, i32 3
  %8 = load i8, i8* %arrayidx17, align 1, !tbaa !6
  %conv18 = zext i8 %8 to i32
  %sub19 = sub nsw i32 %conv16, %conv18
  %add20 = add nsw i32 %sub19, %sub14
  %sub21 = sub nsw i32 %sub14, %sub19
  %shl22 = shl nsw i32 %sub21, 16
  %add23 = add nsw i32 %add20, %shl22
  %arrayidx24 = getelementptr inbounds i8, i8* %pix1.addr.0310, i32 4
  %9 = load i8, i8* %arrayidx24, align 1, !tbaa !6
  %conv25 = zext i8 %9 to i32
  %arrayidx26 = getelementptr inbounds i8, i8* %pix2.addr.0309, i32 4
  %10 = load i8, i8* %arrayidx26, align 1, !tbaa !6
  %conv27 = zext i8 %10 to i32
  %sub28 = sub nsw i32 %conv25, %conv27
  %arrayidx29 = getelementptr inbounds i8, i8* %pix1.addr.0310, i32 5
  %11 = load i8, i8* %arrayidx29, align 1, !tbaa !6
  %conv30 = zext i8 %11 to i32
  %arrayidx31 = getelementptr inbounds i8, i8* %pix2.addr.0309, i32 5
  %12 = load i8, i8* %arrayidx31, align 1, !tbaa !6
  %conv32 = zext i8 %12 to i32
  %sub33 = sub nsw i32 %conv30, %conv32
  %add34 = add nsw i32 %sub33, %sub28
  %sub35 = sub nsw i32 %sub28, %sub33
  %shl36 = shl nsw i32 %sub35, 16
  %add37 = add nsw i32 %add34, %shl36
  %arrayidx38 = getelementptr inbounds i8, i8* %pix1.addr.0310, i32 6
  %13 = load i8, i8* %arrayidx38, align 1, !tbaa !6
  %conv39 = zext i8 %13 to i32
  %arrayidx40 = getelementptr inbounds i8, i8* %pix2.addr.0309, i32 6
  %14 = load i8, i8* %arrayidx40, align 1, !tbaa !6
  %conv41 = zext i8 %14 to i32
  %sub42 = sub nsw i32 %conv39, %conv41
  %arrayidx43 = getelementptr inbounds i8, i8* %pix1.addr.0310, i32 7
  %15 = load i8, i8* %arrayidx43, align 1, !tbaa !6
  %conv44 = zext i8 %15 to i32
  %arrayidx45 = getelementptr inbounds i8, i8* %pix2.addr.0309, i32 7
  %16 = load i8, i8* %arrayidx45, align 1, !tbaa !6
  %conv46 = zext i8 %16 to i32
  %sub47 = sub nsw i32 %conv44, %conv46
  %add48 = add nsw i32 %sub47, %sub42
  %sub49 = sub nsw i32 %sub42, %sub47
  %shl50 = shl nsw i32 %sub49, 16
  %add51 = add nsw i32 %add48, %shl50
  %add52 = add nsw i32 %add23, %add9
  %sub53 = sub nsw i32 %add9, %add23
  %add54 = add nsw i32 %add51, %add37
  %sub55 = sub nsw i32 %add37, %add51
  %add56 = add nsw i32 %add54, %add52
  %arrayidx58 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %tmp, i32 0, i32 %i.0308, i32 0
  store i32 %add56, i32* %arrayidx58, align 4, !tbaa !13
  %sub59 = sub nsw i32 %add52, %add54
  %arrayidx61 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %tmp, i32 0, i32 %i.0308, i32 2
  store i32 %sub59, i32* %arrayidx61, align 4, !tbaa !13
  %add62 = add nsw i32 %sub55, %sub53
  %arrayidx64 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %tmp, i32 0, i32 %i.0308, i32 1
  store i32 %add62, i32* %arrayidx64, align 4, !tbaa !13
  %sub65 = sub nsw i32 %sub53, %sub55
  %arrayidx67 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %tmp, i32 0, i32 %i.0308, i32 3
  store i32 %sub65, i32* %arrayidx67, align 4, !tbaa !13
  %inc = add nuw nsw i32 %i.0308, 1
  %add.ptr = getelementptr inbounds i8, i8* %pix1.addr.0310, i32 %i_pix1
  %add.ptr68 = getelementptr inbounds i8, i8* %pix2.addr.0309, i32 %i_pix2
  %exitcond311 = icmp eq i32 %inc, 8
  br i1 %exitcond311, label %for.body74, label %for.body

for.cond.cleanup73:                               ; preds = %for.body74
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #8
  ret i32 %add156

for.body74:                                       ; preds = %for.body, %for.body74
  %i69.0307 = phi i32 [ %inc158, %for.body74 ], [ 0, %for.body ]
  %sum.0306 = phi i32 [ %add156, %for.body74 ], [ 0, %for.body ]
  %arrayidx77 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %tmp, i32 0, i32 0, i32 %i69.0307
  %17 = load i32, i32* %arrayidx77, align 4, !tbaa !13
  %arrayidx79 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %tmp, i32 0, i32 1, i32 %i69.0307
  %18 = load i32, i32* %arrayidx79, align 4, !tbaa !13
  %add80 = add i32 %18, %17
  %sub86 = sub i32 %17, %18
  %arrayidx89 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %tmp, i32 0, i32 2, i32 %i69.0307
  %19 = load i32, i32* %arrayidx89, align 4, !tbaa !13
  %arrayidx91 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %tmp, i32 0, i32 3, i32 %i69.0307
  %20 = load i32, i32* %arrayidx91, align 4, !tbaa !13
  %add92 = add i32 %20, %19
  %sub98 = sub i32 %19, %20
  %add99 = add i32 %add92, %add80
  %sub100 = sub i32 %add80, %add92
  %add101 = add i32 %sub98, %sub86
  %sub102 = sub i32 %sub86, %sub98
  %arrayidx105 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %tmp, i32 0, i32 4, i32 %i69.0307
  %21 = load i32, i32* %arrayidx105, align 4, !tbaa !13
  %arrayidx107 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %tmp, i32 0, i32 5, i32 %i69.0307
  %22 = load i32, i32* %arrayidx107, align 4, !tbaa !13
  %add108 = add i32 %22, %21
  %sub114 = sub i32 %21, %22
  %arrayidx117 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %tmp, i32 0, i32 6, i32 %i69.0307
  %23 = load i32, i32* %arrayidx117, align 4, !tbaa !13
  %arrayidx119 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %tmp, i32 0, i32 7, i32 %i69.0307
  %24 = load i32, i32* %arrayidx119, align 4, !tbaa !13
  %add120 = add i32 %24, %23
  %sub126 = sub i32 %23, %24
  %add127 = add i32 %add120, %add108
  %sub128 = sub i32 %add108, %add120
  %add129 = add i32 %sub126, %sub114
  %sub130 = sub i32 %sub114, %sub126
  %add131 = add i32 %add127, %add99
  %shr.i = lshr i32 %add131, 15
  %and.i = and i32 %shr.i, 65537
  %mul.i = mul nuw i32 %and.i, 65535
  %add.i = add i32 %mul.i, %add131
  %xor.i = xor i32 %add.i, %mul.i
  %sub132 = sub i32 %add99, %add127
  %shr.i301 = lshr i32 %sub132, 15
  %and.i302 = and i32 %shr.i301, 65537
  %mul.i303 = mul nuw i32 %and.i302, 65535
  %add.i304 = add i32 %mul.i303, %sub132
  %xor.i305 = xor i32 %add.i304, %mul.i303
  %add135 = add i32 %add129, %add101
  %shr.i296 = lshr i32 %add135, 15
  %and.i297 = and i32 %shr.i296, 65537
  %mul.i298 = mul nuw i32 %and.i297, 65535
  %add.i299 = add i32 %mul.i298, %add135
  %xor.i300 = xor i32 %add.i299, %mul.i298
  %sub137 = sub i32 %add101, %add129
  %shr.i291 = lshr i32 %sub137, 15
  %and.i292 = and i32 %shr.i291, 65537
  %mul.i293 = mul nuw i32 %and.i292, 65535
  %add.i294 = add i32 %mul.i293, %sub137
  %xor.i295 = xor i32 %add.i294, %mul.i293
  %add141 = add i32 %sub128, %sub100
  %shr.i286 = lshr i32 %add141, 15
  %and.i287 = and i32 %shr.i286, 65537
  %mul.i288 = mul nuw i32 %and.i287, 65535
  %add.i289 = add i32 %mul.i288, %add141
  %xor.i290 = xor i32 %add.i289, %mul.i288
  %sub143 = sub i32 %sub100, %sub128
  %shr.i281 = lshr i32 %sub143, 15
  %and.i282 = and i32 %shr.i281, 65537
  %mul.i283 = mul nuw i32 %and.i282, 65535
  %add.i284 = add i32 %mul.i283, %sub143
  %xor.i285 = xor i32 %add.i284, %mul.i283
  %add147 = add i32 %sub130, %sub102
  %shr.i276 = lshr i32 %add147, 15
  %and.i277 = and i32 %shr.i276, 65537
  %mul.i278 = mul nuw i32 %and.i277, 65535
  %add.i279 = add i32 %mul.i278, %add147
  %xor.i280 = xor i32 %add.i279, %mul.i278
  %sub149 = sub i32 %sub102, %sub130
  %shr.i271 = lshr i32 %sub149, 15
  %and.i272 = and i32 %shr.i271, 65537
  %mul.i273 = mul nuw i32 %and.i272, 65535
  %add.i274 = add i32 %mul.i273, %sub149
  %xor.i275 = xor i32 %add.i274, %mul.i273
  %add139 = add i32 %xor.i280, %xor.i275
  %add134 = add i32 %add139, %xor.i285
  %add140 = add i32 %add134, %xor.i290
  %add145 = add i32 %add140, %xor.i305
  %add146 = add i32 %add145, %xor.i
  %add151 = add i32 %add146, %xor.i295
  %add152 = add i32 %add151, %xor.i300
  %conv154 = and i32 %add152, 65535
  %shr = lshr i32 %add152, 16
  %add155 = add i32 %shr, %sum.0306
  %add156 = add i32 %add155, %conv154
  %inc158 = add nuw nsw i32 %i69.0307, 1
  %exitcond = icmp eq i32 %inc158, 4
  br i1 %exitcond, label %for.cond.cleanup73, label %for.body74
}

declare dso_local void @x264_8_predict_4x4_v_c(i8*) local_unnamed_addr #7

declare dso_local void @x264_8_predict_4x4_h_c(i8*) local_unnamed_addr #7

declare dso_local void @x264_8_predict_4x4_dc_c(i8*) local_unnamed_addr #7

declare dso_local void @x264_8_predict_8x8_v_c(i8*, i8*) local_unnamed_addr #7

declare dso_local void @x264_8_predict_8x8_h_c(i8*, i8*) local_unnamed_addr #7

declare dso_local void @x264_8_predict_8x8_dc_c(i8*, i8*) local_unnamed_addr #7

declare dso_local void @x264_8_predict_8x8c_dc_c(i8*) local_unnamed_addr #7

declare dso_local void @x264_8_predict_8x8c_h_c(i8*) local_unnamed_addr #7

declare dso_local void @x264_8_predict_8x8c_v_c(i8*) local_unnamed_addr #7

declare dso_local void @x264_8_predict_8x16c_dc_c(i8*) local_unnamed_addr #7

declare dso_local void @x264_8_predict_8x16c_h_c(i8*) local_unnamed_addr #7

declare dso_local void @x264_8_predict_8x16c_v_c(i8*) local_unnamed_addr #7

declare dso_local void @x264_8_predict_16x16_v_c(i8*) local_unnamed_addr #7

declare dso_local void @x264_8_predict_16x16_h_c(i8*) local_unnamed_addr #7

declare dso_local void @x264_8_predict_16x16_dc_c(i8*) local_unnamed_addr #7

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nofree norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #3 = { norecurse nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #5 = { noinline nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #6 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #7 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 (http://10.18.30.194:8888/compiler/compiler10.git 713ef477716300a9b04a1522e3fce445623444dc)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!4, !4, i64 0}
!7 = !{!8, !3, i64 384}
!8 = !{!"", !4, i64 0, !4, i64 32, !4, i64 64, !4, i64 96, !4, i64 124, !4, i64 140, !4, i64 172, !4, i64 204, !4, i64 236, !4, i64 264, !4, i64 292, !3, i64 324, !3, i64 328, !4, i64 332, !4, i64 336, !4, i64 352, !4, i64 368, !3, i64 384, !3, i64 388, !3, i64 392, !4, i64 396, !4, i64 424, !4, i64 452, !4, i64 480, !4, i64 508, !3, i64 536, !3, i64 540, !3, i64 544, !3, i64 548, !3, i64 552, !3, i64 556, !3, i64 560, !3, i64 564, !3, i64 568, !3, i64 572, !3, i64 576, !3, i64 580, !3, i64 584, !3, i64 588, !3, i64 592, !3, i64 596, !3, i64 600, !3, i64 604, !3, i64 608, !3, i64 612, !3, i64 616, !3, i64 620, !3, i64 624, !3, i64 628}
!9 = !{!10, !10, i64 0}
!10 = !{!"long long", !4, i64 0}
!11 = !{!8, !3, i64 392}
!12 = !{!8, !3, i64 388}
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !4, i64 0}
!15 = !{!16, !3, i64 15352}
!16 = !{!"x264_t", !17, i64 0, !3, i64 944, !4, i64 948, !4, i64 1464, !14, i64 1528, !14, i64 1532, !14, i64 1536, !14, i64 1540, !14, i64 1544, !14, i64 1548, !3, i64 1552, !3, i64 1556, !14, i64 1560, !14, i64 1564, !25, i64 1568, !3, i64 1612, !14, i64 1616, !3, i64 1620, !14, i64 1624, !14, i64 1628, !14, i64 1632, !14, i64 1636, !14, i64 1640, !14, i64 1644, !10, i64 1648, !14, i64 1656, !10, i64 1664, !10, i64 1672, !10, i64 1680, !10, i64 1688, !10, i64 1696, !10, i64 1704, !10, i64 1712, !14, i64 1720, !10, i64 1728, !14, i64 1736, !4, i64 1740, !4, i64 1756, !4, i64 1772, !4, i64 1788, !4, i64 1804, !4, i64 1820, !4, i64 1836, !4, i64 1852, !4, i64 1868, !4, i64 1884, !3, i64 1900, !4, i64 1904, !4, i64 2184, !3, i64 3304, !3, i64 3308, !27, i64 3312, !4, i64 8448, !4, i64 8760, !14, i64 8824, !27, i64 8832, !28, i64 14016, !29, i64 15168, !3, i64 15352, !3, i64 15356, !4, i64 15360, !4, i64 15368, !4, i64 15520, !4, i64 15528, !14, i64 15536, !14, i64 15540, !10, i64 15544, !30, i64 15552, !31, i64 18752, !3, i64 30784, !34, i64 30792, !3, i64 34104, !3, i64 34108, !3, i64 34112, !4, i64 34144, !4, i64 34656, !4, i64 36704, !4, i64 36736, !3, i64 36744, !3, i64 36748, !4, i64 36752, !4, i64 36812, !4, i64 36820, !4, i64 36848, !4, i64 36896, !4, i64 36944, !4, i64 36972, !4, i64 37000, !3, i64 37028, !8, i64 37032, !37, i64 37664, !38, i64 37880, !39, i64 37948, !39, i64 37972, !39, i64 37996, !40, i64 38020, !41, i64 38232, !42, i64 38316, !3, i64 38332}
!17 = !{!"x264_param_t", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !14, i64 24, !14, i64 28, !14, i64 32, !14, i64 36, !14, i64 40, !14, i64 44, !14, i64 48, !14, i64 52, !18, i64 56, !14, i64 92, !14, i64 96, !14, i64 100, !14, i64 104, !14, i64 108, !14, i64 112, !14, i64 116, !14, i64 120, !14, i64 124, !14, i64 128, !14, i64 132, !14, i64 136, !14, i64 140, !14, i64 144, !14, i64 148, !14, i64 152, !14, i64 156, !14, i64 160, !14, i64 164, !14, i64 168, !14, i64 172, !14, i64 176, !3, i64 180, !4, i64 184, !4, i64 200, !4, i64 216, !4, i64 232, !4, i64 248, !4, i64 312, !4, i64 376, !4, i64 440, !3, i64 504, !3, i64 508, !14, i64 512, !14, i64 516, !3, i64 520, !19, i64 524, !21, i64 632, !22, i64 748, !14, i64 764, !23, i64 768, !24, i64 824, !14, i64 836, !14, i64 840, !14, i64 844, !14, i64 848, !14, i64 852, !14, i64 856, !14, i64 860, !14, i64 864, !14, i64 868, !14, i64 872, !14, i64 876, !14, i64 880, !14, i64 884, !14, i64 888, !14, i64 892, !14, i64 896, !14, i64 900, !3, i64 904, !3, i64 908, !14, i64 912, !14, i64 916, !14, i64 920, !14, i64 924, !14, i64 928, !3, i64 932, !3, i64 936, !3, i64 940}
!18 = !{!"", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !14, i64 24, !14, i64 28, !14, i64 32}
!19 = !{!"", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !14, i64 24, !14, i64 28, !14, i64 32, !14, i64 36, !14, i64 40, !14, i64 44, !14, i64 48, !14, i64 52, !14, i64 56, !14, i64 60, !14, i64 64, !14, i64 68, !20, i64 72, !20, i64 76, !14, i64 80, !14, i64 84, !14, i64 88, !4, i64 92, !14, i64 100, !14, i64 104}
!20 = !{!"float", !4, i64 0}
!21 = !{!"", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !20, i64 24, !20, i64 28, !20, i64 32, !14, i64 36, !14, i64 40, !20, i64 44, !20, i64 48, !20, i64 52, !14, i64 56, !14, i64 60, !20, i64 64, !14, i64 68, !14, i64 72, !14, i64 76, !3, i64 80, !14, i64 84, !3, i64 88, !20, i64 92, !20, i64 96, !20, i64 100, !3, i64 104, !14, i64 108, !3, i64 112}
!22 = !{!"", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12}
!23 = !{!"", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !14, i64 24, !14, i64 28, !14, i64 32, !10, i64 40, !10, i64 48}
!24 = !{!"", !14, i64 0, !14, i64 4, !14, i64 8}
!25 = !{!"", !14, i64 0, !14, i64 4, !3, i64 8, !14, i64 12, !3, i64 16, !26, i64 20}
!26 = !{!"bs_s", !3, i64 0, !3, i64 4, !3, i64 8, !14, i64 12, !14, i64 16, !14, i64 20}
!27 = !{!"", !3, i64 0, !3, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !14, i64 24, !14, i64 28, !14, i64 32, !14, i64 36, !14, i64 40, !14, i64 44, !14, i64 48, !4, i64 52, !14, i64 60, !14, i64 64, !14, i64 68, !14, i64 72, !14, i64 76, !4, i64 80, !4, i64 88, !14, i64 344, !4, i64 352, !14, i64 4960, !14, i64 4964, !4, i64 4968, !14, i64 5096, !14, i64 5100, !14, i64 5104, !14, i64 5108, !14, i64 5112, !14, i64 5116, !14, i64 5120, !14, i64 5124}
!28 = !{!"", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !3, i64 16, !3, i64 20, !3, i64 24, !14, i64 64, !4, i64 68, !4, i64 1092}
!29 = !{!"", !3, i64 0, !4, i64 4, !3, i64 12, !4, i64 16, !14, i64 88, !14, i64 92, !14, i64 96, !14, i64 100, !14, i64 104, !14, i64 108, !14, i64 112, !14, i64 116, !14, i64 120, !10, i64 128, !10, i64 136, !4, i64 144, !10, i64 160, !10, i64 168, !14, i64 176, !14, i64 180}
!30 = !{!"", !4, i64 0, !4, i64 96, !4, i64 128, !4, i64 1664}
!31 = !{!"", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !14, i64 24, !14, i64 28, !4, i64 32, !4, i64 40, !14, i64 48, !14, i64 52, !14, i64 56, !14, i64 60, !14, i64 64, !14, i64 68, !14, i64 72, !14, i64 76, !14, i64 80, !14, i64 84, !14, i64 88, !14, i64 92, !14, i64 96, !14, i64 100, !14, i64 104, !4, i64 108, !4, i64 116, !4, i64 124, !4, i64 136, !4, i64 148, !4, i64 156, !4, i64 164, !4, i64 176, !4, i64 192, !4, i64 200, !4, i64 212, !14, i64 224, !4, i64 228, !4, i64 244, !14, i64 308, !14, i64 312, !14, i64 316, !4, i64 320, !14, i64 328, !14, i64 332, !14, i64 336, !4, i64 340, !14, i64 348, !14, i64 352, !14, i64 356, !14, i64 360, !14, i64 364, !14, i64 368, !3, i64 372, !14, i64 376, !14, i64 380, !14, i64 384, !14, i64 388, !3, i64 392, !3, i64 396, !3, i64 400, !3, i64 404, !3, i64 408, !3, i64 412, !3, i64 416, !3, i64 420, !4, i64 424, !4, i64 432, !4, i64 440, !4, i64 448, !3, i64 704, !3, i64 708, !3, i64 712, !3, i64 716, !4, i64 720, !14, i64 784, !14, i64 788, !4, i64 792, !14, i64 796, !14, i64 800, !14, i64 804, !14, i64 808, !14, i64 812, !14, i64 816, !14, i64 820, !14, i64 824, !14, i64 828, !14, i64 832, !14, i64 836, !32, i64 896, !33, i64 9472, !14, i64 10336, !14, i64 10340, !14, i64 10344, !14, i64 10348, !14, i64 10352, !14, i64 10356, !14, i64 10360, !14, i64 10364, !4, i64 10368, !14, i64 10384, !14, i64 10388, !4, i64 10392, !3, i64 11416, !4, i64 11420, !3, i64 11932, !4, i64 11936, !14, i64 11956, !4, i64 11960}
!32 = !{!"", !4, i64 0, !4, i64 768, !4, i64 2496, !4, i64 2752, !4, i64 3008, !4, i64 3392, !4, i64 3872, !4, i64 3888, !4, i64 3904, !4, i64 4416, !4, i64 4928, !4, i64 5056, !14, i64 5128, !14, i64 5132, !4, i64 5136, !4, i64 5148, !4, i64 5160, !4, i64 5172, !4, i64 5180, !4, i64 8252, !4, i64 8380, !4, i64 8508}
!33 = !{!"", !4, i64 0, !4, i64 40, !4, i64 160, !4, i64 240, !4, i64 560, !4, i64 720, !4, i64 760, !4, i64 792, !14, i64 800, !4, i64 804, !14, i64 808, !14, i64 812, !14, i64 816, !14, i64 820, !4, i64 824, !4, i64 848, !3, i64 856}
!34 = !{!"", !4, i64 0, !4, i64 16, !4, i64 40, !4, i64 64, !4, i64 136, !4, i64 160, !4, i64 184, !4, i64 208, !4, i64 232, !4, i64 256, !4, i64 280, !4, i64 304, !4, i64 760, !4, i64 1032, !4, i64 1048, !4, i64 2072, !4, i64 2120, !4, i64 2536, !4, i64 2560, !4, i64 2568, !4, i64 2576, !35, i64 2584}
!35 = !{!"", !14, i64 0, !14, i64 4, !14, i64 8, !4, i64 12, !14, i64 88, !14, i64 92, !14, i64 96, !4, i64 100, !4, i64 108, !4, i64 364, !4, i64 432, !4, i64 456, !4, i64 664, !4, i64 676, !4, i64 688, !36, i64 712, !14, i64 720}
!36 = !{!"double", !4, i64 0}
!37 = !{!"", !3, i64 0, !3, i64 4, !3, i64 8, !4, i64 12, !4, i64 60, !3, i64 88, !3, i64 92, !3, i64 96, !3, i64 100, !3, i64 104, !3, i64 108, !3, i64 112, !3, i64 116, !3, i64 120, !3, i64 124, !3, i64 128, !3, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !3, i64 148, !3, i64 152, !3, i64 156, !3, i64 160, !3, i64 164, !3, i64 168, !3, i64 172, !3, i64 176, !3, i64 180, !3, i64 184, !3, i64 188, !3, i64 192, !3, i64 196, !3, i64 200, !3, i64 204, !3, i64 208, !3, i64 212}
!38 = !{!"", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !3, i64 20, !3, i64 24, !3, i64 28, !3, i64 32, !3, i64 36, !3, i64 40, !3, i64 44, !3, i64 48, !3, i64 52, !3, i64 56, !3, i64 60, !3, i64 64}
!39 = !{!"", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !3, i64 20}
!40 = !{!"", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !3, i64 20, !3, i64 24, !3, i64 28, !3, i64 32, !3, i64 36, !3, i64 40, !3, i64 44, !3, i64 48, !3, i64 52, !3, i64 56, !3, i64 60, !4, i64 64, !3, i64 120, !3, i64 124, !4, i64 128, !3, i64 180, !3, i64 184, !3, i64 188, !3, i64 192, !3, i64 196, !3, i64 200, !3, i64 204, !3, i64 208}
!41 = !{!"", !4, i64 0, !4, i64 8, !3, i64 16, !3, i64 20, !4, i64 24, !4, i64 32, !3, i64 40, !3, i64 44, !3, i64 48, !3, i64 52, !3, i64 56, !3, i64 60, !3, i64 64, !3, i64 68, !3, i64 72, !3, i64 76, !3, i64 80}
!42 = !{!"", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12}
!43 = !{!16, !14, i64 18772}
!44 = !{!16, !14, i64 32}
!45 = !{!16, !3, i64 37356}
!46 = !{!16, !3, i64 19468}
!47 = !{!8, !3, i64 324}
!48 = !{!8, !3, i64 328}
!49 = !{!8, !3, i64 556}
!50 = !{!8, !3, i64 552}
!51 = !{!8, !3, i64 604}
!52 = !{!8, !3, i64 600}
!53 = !{!8, !3, i64 592}
!54 = !{!8, !3, i64 588}
!55 = !{!8, !3, i64 580}
!56 = !{!8, !3, i64 576}
!57 = !{!8, !3, i64 544}
!58 = !{!8, !3, i64 540}
!59 = !{!60, !60, i64 0}
!60 = !{!"short", !4, i64 0}
