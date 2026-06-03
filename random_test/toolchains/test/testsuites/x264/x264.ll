; ModuleID = 'x264.c'
source_filename = "x264.c"
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.cli_vid_filter_t = type { i8*, void (i32)*, i32 (i8**, %struct.cli_vid_filter_t*, %struct.video_info_t*, %struct.x264_param_t*, i8*)*, i32 (i8*, %struct.cli_pic_t*, i32)*, i32 (i8*, %struct.cli_pic_t*, i32)*, void (i8*)*, %struct.cli_vid_filter_t* }
%struct.video_info_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.x264_param_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, [16 x i8], [16 x i8], [16 x i8], [16 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], void (i8*, i32, i8*, i8*)*, i8*, i32, i32, i8*, %struct.anon.0, %struct.anon.1, %struct.anon.2, i32, %struct.anon.3, %struct.anon.4, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, void (i8*)*, void (%struct.x264_t*, %struct.x264_nal_t*, i8*)*, i8* }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.0 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, i32, i32, i32, [2 x i32], i32, i32 }
%struct.anon.1 = type { i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, float, float, float, i32, i32, float, i32, i32, i32, i8*, i32, i8*, float, float, float, %struct.x264_zone_t*, i32, i8* }
%struct.x264_zone_t = type { i32, i32, i32, i32, float, %struct.x264_param_t* }
%struct.anon.2 = type { i32, i32, i32, i32 }
%struct.anon.3 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.anon.4 = type { i32, i32, i32 }
%struct.x264_t = type opaque
%struct.x264_nal_t = type { i32, i32, i32, i32, i32, i32, i8*, i32 }
%struct.cli_pic_t = type { %struct.cli_image_t, i64, i64, i8* }
%struct.cli_image_t = type { i32, i32, i32, i32, [4 x i8*], [4 x i32] }
%struct.cli_input_t = type { i32 (i8*, i8**, %struct.video_info_t*, %struct.cli_input_opt_t*)*, i32 (%struct.cli_pic_t*, i8*, i32, i32, i32)*, i32 (%struct.cli_pic_t*, i8*, i32)*, i32 (%struct.cli_pic_t*, i8*)*, void (%struct.cli_pic_t*, i8*)*, i32 (i8*)* }
%struct.cli_input_opt_t = type { i8*, i8*, i8*, i8*, i32, i8*, i32, i32, i32, i32, i32 }
%struct.cli_output_t = type { i32 (i8*, i8**, %struct.cli_output_opt_t*)*, i32 (i8*, %struct.x264_param_t*)*, i32 (i8*, %struct.x264_nal_t*)*, i32 (i8*, i8*, i32, %struct.x264_picture_t*)*, i32 (i8*, i64, i64)* }
%struct.cli_output_opt_t = type { i32 }
%struct.x264_picture_t = type { i32, i32, i32, i32, i64, i64, %struct.x264_param_t*, %struct.x264_image_t, %struct.x264_image_properties_t, %struct.x264_hrd_t, %struct.x264_sei_t, i8* }
%struct.x264_image_t = type { i32, i32, [4 x i32], [4 x i8*] }
%struct.x264_image_properties_t = type { float*, void (i8*)*, i8*, void (i8*)*, double, double, [3 x double], double }
%struct.x264_hrd_t = type { double, double, double, double }
%struct.x264_sei_t = type { i32, %struct.x264_sei_payload_t*, void (i8*)* }
%struct.x264_sei_payload_t = type { i32, i32, i8* }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.x264_level_t = type { i8, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8 }
%struct.x264_cli_csp_t = type { i8*, i32, [4 x float], [4 x float], i32, i32 }
%struct.cli_pulldown_t = type { i32, [24 x i8], float }
%struct.cli_opt_t = type { i32, i32, i8*, i8*, %struct._IO_FILE*, %struct._IO_FILE*, double, i32 }
%struct.stat = type { i64, i16, i32, i32, i32, i32, i32, i64, i16, i32, i32, i32, %struct.timespec, %struct.timespec, %struct.timespec, i32, i32 }
%struct.timespec = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"50\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"100\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"200\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"300\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"480\00", align 1
@x264_avcintra_class_names = hidden local_unnamed_addr constant [6 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* null], align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"flat\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"jvt\00", align 1
@x264_cqm_names = hidden local_unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* null], align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"warning\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@x264_log_level_names = hidden local_unnamed_addr constant [6 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8* null], align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"p8x8\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"p4x4\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"b8x8\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"i8x8\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"i4x4\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@x264_partition_names = hidden local_unnamed_addr constant [8 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i8* null], align 4
@.str.18 = private unnamed_addr constant [3 x i8] c"22\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"32\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"64\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"triple\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"euro\00", align 1
@x264_pulldown_names = hidden local_unnamed_addr constant [8 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i8* null], align 4
@.str.24 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"tv\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"pc\00", align 1
@x264_range_names = hidden local_unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i8* null], align 4
@.str.27 = private unnamed_addr constant [5 x i8] c"i400\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"i420\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"i422\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"i444\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"rgb\00", align 1
@x264_output_csp_names = hidden local_unnamed_addr constant [6 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0), i8* null], align 4
@.str.32 = private unnamed_addr constant [9 x i8] c"baseline\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"high422\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"high444\00", align 1
@x264_valid_profile_names = hidden local_unnamed_addr constant [6 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), i8* null], align 4
@.str.37 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"y4m\00", align 1
@x264_demuxer_names = hidden local_unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0), i8* null], align 4
@.str.39 = private unnamed_addr constant [4 x i8] c"mkv\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"flv\00", align 1
@x264_muxer_names = hidden local_unnamed_addr constant [5 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0), i8* null], align 4
@cli_log_level = internal unnamed_addr global i32 2, align 4
@.str.41 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 4
@.str.42 = private unnamed_addr constant [10 x i8] c"%s [%s]: \00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"--autocomplete\00", align 1
@filter = internal global %struct.cli_vid_filter_t zeroinitializer, align 4
@cli_input = common hidden local_unnamed_addr global %struct.cli_input_t zeroinitializer, align 4
@cli_output = internal unnamed_addr global %struct.cli_output_t zeroinitializer, align 4
@b_ctrl_c = internal global i32 0, align 4
@optind = external dso_local local_unnamed_addr global i32, align 4
@short_options = internal global [30 x i8] c"8A:B:b:f:hI:i:m:o:p:q:r:t:Vvw\00", align 1
@long_options = internal global [169 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i32 0, i32 0), i32 0, i32* null, i32 262 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.75, i32 0, i32 0), i32 0, i32* null, i32 267 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.76, i32 0, i32 0), i32 0, i32* null, i32 86 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i32 0, i32 0), i32 1, i32* null, i32 263 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.78, i32 0, i32 0), i32 1, i32* null, i32 264 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.79, i32 0, i32 0), i32 1, i32* null, i32 265 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.80, i32 0, i32 0), i32 0, i32* null, i32 266 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.81, i32 0, i32 0), i32 1, i32* null, i32 66 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.82, i32 0, i32 0), i32 1, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.83, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.84, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.85, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.86, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.87, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.88, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.89, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.90, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.91, i32 0, i32 0), i32 1, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.92, i32 0, i32 0), i32 1, i32* null, i32 73 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.93, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.94, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.95, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.96, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.97, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.98, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.99, i32 0, i32 0), i32 1, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.100, i32 0, i32 0), i32 0, i32* null, i32 272 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.101, i32 0, i32 0), i32 0, i32* null, i32 272 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.102, i32 0, i32 0), i32 0, i32* null, i32 272 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.103, i32 0, i32 0), i32 0, i32* null, i32 272 }, %struct.option { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.104, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.105, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.106, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.107, i32 0, i32 0), i32 1, i32* null, i32 113 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.108, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.109, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.110, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.111, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.112, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.113, i32 0, i32 0), i32 1, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.114, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.115, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.116, i32 0, i32 0), i32 0, i32* null, i32 1 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.117, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.118, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.119, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.120, i32 0, i32 0), i32 1, i32* null, i32 268 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.121, i32 0, i32 0), i32 1, i32* null, i32 256 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.122, i32 0, i32 0), i32 1, i32* null, i32 257 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0), i32 1, i32* null, i32 111 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.123, i32 0, i32 0), i32 1, i32* null, i32 269 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.124, i32 0, i32 0), i32 1, i32* null, i32 270 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.125, i32 0, i32 0), i32 1, i32* null, i32 269 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.126, i32 0, i32 0), i32 1, i32* null, i32 270 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.127, i32 0, i32 0), i32 1, i32* null, i32 271 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.128, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.129, i32 0, i32 0), i32 1, i32* null, i32 65 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.130, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.131, i32 0, i32 0), i32 0, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.132, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.133, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.134, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.135, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.136, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.137, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.138, i32 0, i32 0), i32 1, i32* null, i32 109 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.139, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.140, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.141, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.142, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.143, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.144, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.145, i32 0, i32 0), i32 0, i32* null, i32 56 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.146, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.147, i32 0, i32 0), i32 1, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.148, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.149, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.150, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.151, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.152, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.153, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.154, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.155, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.156, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.157, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.158, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.159, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.160, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.161, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.162, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.163, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.164, i32 0, i32 0), i32 1, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.165, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.166, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.167, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.168, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.169, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.170, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.171, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.172, i32 0, i32 0), i32 1, i32* null, i32 258 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.173, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.174, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.175, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.176, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.177, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.178, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.179, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.180, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.181, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.182, i32 0, i32 0), i32 0, i32* null, i32 259 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.183, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.184, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.185, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.186, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.187, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.188, i32 0, i32 0), i32 0, i32* null, i32 260 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.189, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.190, i32 0, i32 0), i32 1, i32* null, i32 277 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.191, i32 0, i32 0), i32 0, i32* null, i32 261 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.192, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.193, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.194, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.195, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.196, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.197, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.198, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.199, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.200, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.201, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.202, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.203, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.204, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.205, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.206, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.207, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.208, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.209, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.210, i32 0, i32 0), i32 1, i32* null, i32 287 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.211, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.212, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.213, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.214, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.215, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.216, i32 0, i32 0), i32 1, i32* null, i32 273 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.217, i32 0, i32 0), i32 1, i32* null, i32 274 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.218, i32 0, i32 0), i32 1, i32* null, i32 275 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.219, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.220, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.221, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.222, i32 0, i32 0), i32 1, i32* null, i32 276 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.223, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.224, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.225, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.226, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.227, i32 0, i32 0), i32 1, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.228, i32 0, i32 0), i32 1, i32* null, i32 278 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.229, i32 0, i32 0), i32 1, i32* null, i32 278 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.230, i32 0, i32 0), i32 1, i32* null, i32 279 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.231, i32 0, i32 0), i32 1, i32* null, i32 280 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.232, i32 0, i32 0), i32 1, i32* null, i32 281 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.233, i32 0, i32 0), i32 1, i32* null, i32 282 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.234, i32 0, i32 0), i32 1, i32* null, i32 283 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.235, i32 0, i32 0), i32 0, i32* null, i32 284 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.236, i32 0, i32 0), i32 1, i32* null, i32 285 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.237, i32 0, i32 0), i32 1, i32* null, i32 286 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.238, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.239, i32 0, i32 0), i32 0, i32* null, i32 0 }, %struct.option zeroinitializer], align 4
@optarg = external dso_local local_unnamed_addr global i8*, align 4
@.str.44 = private unnamed_addr constant [8 x i8] c"placebo\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"x264\00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"Unknown muxer `%s'\0A\00", align 1
@.str.47 = private unnamed_addr constant [22 x i8] c"Unknown demuxer `%s'\0A\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.49 = private unnamed_addr constant [24 x i8] c"can't open qpfile `%s'\0A\00", align 1
@.str.50 = private unnamed_addr constant [48 x i8] c"qpfile incompatible with non-regular file `%s'\0A\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.52 = private unnamed_addr constant [17 x i8] c"can't open `%s'\0A\00", align 1
@.str.53 = private unnamed_addr constant [23 x i8] c"Unknown pulldown `%s'\0A\00", align 1
@.str.54 = private unnamed_addr constant [25 x i8] c"Unknown output csp `%s'\0A\00", align 1
@parse.output_csp_fix = internal unnamed_addr constant [5 x i8] c"\01\02\06\0C\10", align 1
@.str.55 = private unnamed_addr constant [26 x i8] c"Unknown input range `%s'\0A\00", align 1
@.str.56 = private unnamed_addr constant [20 x i8] c"Unknown range `%s'\0A\00", align 1
@.str.57 = private unnamed_addr constant [27 x i8] c"invalid argument: %s = %s\0A\00", align 1
@.str.58 = private unnamed_addr constant [52 x i8] c"No %s file. Run x264 --help for a list of options.\0A\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.61 = private unnamed_addr constant [33 x i8] c"could not open output file `%s'\0A\00", align 1
@.str.62 = private unnamed_addr constant [32 x i8] c"could not open input file `%s'\0A\00", align 1
@.str.63 = private unnamed_addr constant [34 x i8] c"%dx%d%c %u:%u @ %u/%u fps (%cfr)\0A\00", align 1
@.str.64 = private unnamed_addr constant [32 x i8] c"invalid width x height (%dx%d)\0A\00", align 1
@.str.65 = private unnamed_addr constant [38 x i8] c"--fps + --tcfile-in is incompatible.\0A\00", align 1
@timecode_input = external dso_local local_unnamed_addr constant %struct.cli_input_t, align 4
@.str.66 = private unnamed_addr constant [23 x i8] c"timecode input failed\0A\00", align 1
@.str.67 = private unnamed_addr constant [43 x i8] c"--timebase is incompatible with cfr input\0A\00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"%llu/%llu\00", align 1
@.str.69 = private unnamed_addr constant [33 x i8] c"invalid argument: timebase = %s\0A\00", align 1
@.str.70 = private unnamed_addr constant [46 x i8] c"timebase you specified exceeds H.264 maximum\0A\00", align 1
@.str.71 = private unnamed_addr constant [74 x i8] c"input appears to be interlaced, but not compiled with interlaced support\0A\00", align 1
@.str.72 = private unnamed_addr constant [21 x i8] c"RGB must be PC range\00", align 1
@x264_levels = external dso_local local_unnamed_addr constant [0 x %struct.x264_level_t], align 4
@.str.73 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"longhelp\00", align 1
@.str.75 = private unnamed_addr constant [9 x i8] c"fullhelp\00", align 1
@.str.76 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"profile\00", align 1
@.str.78 = private unnamed_addr constant [7 x i8] c"preset\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"tune\00", align 1
@.str.80 = private unnamed_addr constant [15 x i8] c"slow-firstpass\00", align 1
@.str.81 = private unnamed_addr constant [8 x i8] c"bitrate\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"bframes\00", align 1
@.str.83 = private unnamed_addr constant [8 x i8] c"b-adapt\00", align 1
@.str.84 = private unnamed_addr constant [11 x i8] c"no-b-adapt\00", align 1
@.str.85 = private unnamed_addr constant [7 x i8] c"b-bias\00", align 1
@.str.86 = private unnamed_addr constant [10 x i8] c"b-pyramid\00", align 1
@.str.87 = private unnamed_addr constant [9 x i8] c"open-gop\00", align 1
@.str.88 = private unnamed_addr constant [14 x i8] c"bluray-compat\00", align 1
@.str.89 = private unnamed_addr constant [15 x i8] c"avcintra-class\00", align 1
@.str.90 = private unnamed_addr constant [16 x i8] c"avcintra-flavor\00", align 1
@.str.91 = private unnamed_addr constant [11 x i8] c"min-keyint\00", align 1
@.str.92 = private unnamed_addr constant [7 x i8] c"keyint\00", align 1
@.str.93 = private unnamed_addr constant [14 x i8] c"intra-refresh\00", align 1
@.str.94 = private unnamed_addr constant [9 x i8] c"scenecut\00", align 1
@.str.95 = private unnamed_addr constant [12 x i8] c"no-scenecut\00", align 1
@.str.96 = private unnamed_addr constant [3 x i8] c"nf\00", align 1
@.str.97 = private unnamed_addr constant [11 x i8] c"no-deblock\00", align 1
@.str.98 = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@.str.99 = private unnamed_addr constant [8 x i8] c"deblock\00", align 1
@.str.100 = private unnamed_addr constant [11 x i8] c"interlaced\00", align 1
@.str.101 = private unnamed_addr constant [4 x i8] c"tff\00", align 1
@.str.102 = private unnamed_addr constant [4 x i8] c"bff\00", align 1
@.str.103 = private unnamed_addr constant [14 x i8] c"no-interlaced\00", align 1
@.str.104 = private unnamed_addr constant [18 x i8] c"constrained-intra\00", align 1
@.str.105 = private unnamed_addr constant [6 x i8] c"cabac\00", align 1
@.str.106 = private unnamed_addr constant [9 x i8] c"no-cabac\00", align 1
@.str.107 = private unnamed_addr constant [3 x i8] c"qp\00", align 1
@.str.108 = private unnamed_addr constant [6 x i8] c"qpmin\00", align 1
@.str.109 = private unnamed_addr constant [6 x i8] c"qpmax\00", align 1
@.str.110 = private unnamed_addr constant [7 x i8] c"qpstep\00", align 1
@.str.111 = private unnamed_addr constant [4 x i8] c"crf\00", align 1
@.str.112 = private unnamed_addr constant [13 x i8] c"rc-lookahead\00", align 1
@.str.113 = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@.str.114 = private unnamed_addr constant [4 x i8] c"asm\00", align 1
@.str.115 = private unnamed_addr constant [7 x i8] c"no-asm\00", align 1
@.str.116 = private unnamed_addr constant [7 x i8] c"opencl\00", align 1
@.str.117 = private unnamed_addr constant [13 x i8] c"opencl-clbin\00", align 1
@.str.118 = private unnamed_addr constant [14 x i8] c"opencl-device\00", align 1
@.str.119 = private unnamed_addr constant [4 x i8] c"sar\00", align 1
@.str.120 = private unnamed_addr constant [4 x i8] c"fps\00", align 1
@.str.121 = private unnamed_addr constant [7 x i8] c"frames\00", align 1
@.str.122 = private unnamed_addr constant [5 x i8] c"seek\00", align 1
@.str.123 = private unnamed_addr constant [6 x i8] c"muxer\00", align 1
@.str.124 = private unnamed_addr constant [8 x i8] c"demuxer\00", align 1
@.str.125 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.126 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.127 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.128 = private unnamed_addr constant [8 x i8] c"analyse\00", align 1
@.str.129 = private unnamed_addr constant [11 x i8] c"partitions\00", align 1
@.str.130 = private unnamed_addr constant [7 x i8] c"direct\00", align 1
@.str.131 = private unnamed_addr constant [8 x i8] c"weightb\00", align 1
@.str.132 = private unnamed_addr constant [11 x i8] c"no-weightb\00", align 1
@.str.133 = private unnamed_addr constant [8 x i8] c"weightp\00", align 1
@.str.134 = private unnamed_addr constant [3 x i8] c"me\00", align 1
@.str.135 = private unnamed_addr constant [8 x i8] c"merange\00", align 1
@.str.136 = private unnamed_addr constant [8 x i8] c"mvrange\00", align 1
@.str.137 = private unnamed_addr constant [15 x i8] c"mvrange-thread\00", align 1
@.str.138 = private unnamed_addr constant [6 x i8] c"subme\00", align 1
@.str.139 = private unnamed_addr constant [7 x i8] c"psy-rd\00", align 1
@.str.140 = private unnamed_addr constant [7 x i8] c"no-psy\00", align 1
@.str.141 = private unnamed_addr constant [4 x i8] c"psy\00", align 1
@.str.142 = private unnamed_addr constant [11 x i8] c"mixed-refs\00", align 1
@.str.143 = private unnamed_addr constant [14 x i8] c"no-mixed-refs\00", align 1
@.str.144 = private unnamed_addr constant [13 x i8] c"no-chroma-me\00", align 1
@.str.145 = private unnamed_addr constant [7 x i8] c"8x8dct\00", align 1
@.str.146 = private unnamed_addr constant [10 x i8] c"no-8x8dct\00", align 1
@.str.147 = private unnamed_addr constant [8 x i8] c"trellis\00", align 1
@.str.148 = private unnamed_addr constant [11 x i8] c"fast-pskip\00", align 1
@.str.149 = private unnamed_addr constant [14 x i8] c"no-fast-pskip\00", align 1
@.str.150 = private unnamed_addr constant [16 x i8] c"no-dct-decimate\00", align 1
@.str.151 = private unnamed_addr constant [12 x i8] c"aq-strength\00", align 1
@.str.152 = private unnamed_addr constant [8 x i8] c"aq-mode\00", align 1
@.str.153 = private unnamed_addr constant [15 x i8] c"deadzone-inter\00", align 1
@.str.154 = private unnamed_addr constant [15 x i8] c"deadzone-intra\00", align 1
@.str.155 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.156 = private unnamed_addr constant [8 x i8] c"ratetol\00", align 1
@.str.157 = private unnamed_addr constant [12 x i8] c"vbv-maxrate\00", align 1
@.str.158 = private unnamed_addr constant [12 x i8] c"vbv-bufsize\00", align 1
@.str.159 = private unnamed_addr constant [9 x i8] c"vbv-init\00", align 1
@.str.160 = private unnamed_addr constant [8 x i8] c"crf-max\00", align 1
@.str.161 = private unnamed_addr constant [8 x i8] c"ipratio\00", align 1
@.str.162 = private unnamed_addr constant [8 x i8] c"pbratio\00", align 1
@.str.163 = private unnamed_addr constant [17 x i8] c"chroma-qp-offset\00", align 1
@.str.164 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@.str.165 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@.str.166 = private unnamed_addr constant [6 x i8] c"qcomp\00", align 1
@.str.167 = private unnamed_addr constant [7 x i8] c"mbtree\00", align 1
@.str.168 = private unnamed_addr constant [10 x i8] c"no-mbtree\00", align 1
@.str.169 = private unnamed_addr constant [6 x i8] c"qblur\00", align 1
@.str.170 = private unnamed_addr constant [9 x i8] c"cplxblur\00", align 1
@.str.171 = private unnamed_addr constant [6 x i8] c"zones\00", align 1
@.str.172 = private unnamed_addr constant [7 x i8] c"qpfile\00", align 1
@.str.173 = private unnamed_addr constant [8 x i8] c"threads\00", align 1
@.str.174 = private unnamed_addr constant [18 x i8] c"lookahead-threads\00", align 1
@.str.175 = private unnamed_addr constant [15 x i8] c"sliced-threads\00", align 1
@.str.176 = private unnamed_addr constant [18 x i8] c"no-sliced-threads\00", align 1
@.str.177 = private unnamed_addr constant [15 x i8] c"slice-max-size\00", align 1
@.str.178 = private unnamed_addr constant [14 x i8] c"slice-max-mbs\00", align 1
@.str.179 = private unnamed_addr constant [14 x i8] c"slice-min-mbs\00", align 1
@.str.180 = private unnamed_addr constant [7 x i8] c"slices\00", align 1
@.str.181 = private unnamed_addr constant [11 x i8] c"slices-max\00", align 1
@.str.182 = private unnamed_addr constant [13 x i8] c"thread-input\00", align 1
@.str.183 = private unnamed_addr constant [15 x i8] c"sync-lookahead\00", align 1
@.str.184 = private unnamed_addr constant [18 x i8] c"non-deterministic\00", align 1
@.str.185 = private unnamed_addr constant [16 x i8] c"cpu-independent\00", align 1
@.str.186 = private unnamed_addr constant [5 x i8] c"psnr\00", align 1
@.str.187 = private unnamed_addr constant [5 x i8] c"ssim\00", align 1
@.str.188 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.189 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.190 = private unnamed_addr constant [10 x i8] c"log-level\00", align 1
@.str.191 = private unnamed_addr constant [12 x i8] c"no-progress\00", align 1
@.str.192 = private unnamed_addr constant [9 x i8] c"dump-yuv\00", align 1
@.str.193 = private unnamed_addr constant [7 x i8] c"sps-id\00", align 1
@.str.194 = private unnamed_addr constant [4 x i8] c"aud\00", align 1
@.str.195 = private unnamed_addr constant [3 x i8] c"nr\00", align 1
@.str.196 = private unnamed_addr constant [4 x i8] c"cqm\00", align 1
@.str.197 = private unnamed_addr constant [8 x i8] c"cqmfile\00", align 1
@.str.198 = private unnamed_addr constant [5 x i8] c"cqm4\00", align 1
@.str.199 = private unnamed_addr constant [6 x i8] c"cqm4i\00", align 1
@.str.200 = private unnamed_addr constant [7 x i8] c"cqm4iy\00", align 1
@.str.201 = private unnamed_addr constant [7 x i8] c"cqm4ic\00", align 1
@.str.202 = private unnamed_addr constant [6 x i8] c"cqm4p\00", align 1
@.str.203 = private unnamed_addr constant [7 x i8] c"cqm4py\00", align 1
@.str.204 = private unnamed_addr constant [7 x i8] c"cqm4pc\00", align 1
@.str.205 = private unnamed_addr constant [5 x i8] c"cqm8\00", align 1
@.str.206 = private unnamed_addr constant [6 x i8] c"cqm8i\00", align 1
@.str.207 = private unnamed_addr constant [6 x i8] c"cqm8p\00", align 1
@.str.208 = private unnamed_addr constant [9 x i8] c"overscan\00", align 1
@.str.209 = private unnamed_addr constant [12 x i8] c"videoformat\00", align 1
@.str.210 = private unnamed_addr constant [6 x i8] c"range\00", align 1
@.str.211 = private unnamed_addr constant [10 x i8] c"colorprim\00", align 1
@.str.212 = private unnamed_addr constant [9 x i8] c"transfer\00", align 1
@.str.213 = private unnamed_addr constant [12 x i8] c"colormatrix\00", align 1
@.str.214 = private unnamed_addr constant [10 x i8] c"chromaloc\00", align 1
@.str.215 = private unnamed_addr constant [10 x i8] c"force-cfr\00", align 1
@.str.216 = private unnamed_addr constant [10 x i8] c"tcfile-in\00", align 1
@.str.217 = private unnamed_addr constant [11 x i8] c"tcfile-out\00", align 1
@.str.218 = private unnamed_addr constant [9 x i8] c"timebase\00", align 1
@.str.219 = private unnamed_addr constant [11 x i8] c"pic-struct\00", align 1
@.str.220 = private unnamed_addr constant [10 x i8] c"crop-rect\00", align 1
@.str.221 = private unnamed_addr constant [8 x i8] c"nal-hrd\00", align 1
@.str.222 = private unnamed_addr constant [9 x i8] c"pulldown\00", align 1
@.str.223 = private unnamed_addr constant [16 x i8] c"fake-interlaced\00", align 1
@.str.224 = private unnamed_addr constant [14 x i8] c"frame-packing\00", align 1
@.str.225 = private unnamed_addr constant [18 x i8] c"mastering-display\00", align 1
@.str.226 = private unnamed_addr constant [4 x i8] c"cll\00", align 1
@.str.227 = private unnamed_addr constant [21 x i8] c"alternative-transfer\00", align 1
@.str.228 = private unnamed_addr constant [3 x i8] c"vf\00", align 1
@.str.229 = private unnamed_addr constant [13 x i8] c"video-filter\00", align 1
@.str.230 = private unnamed_addr constant [10 x i8] c"input-fmt\00", align 1
@.str.231 = private unnamed_addr constant [10 x i8] c"input-res\00", align 1
@.str.232 = private unnamed_addr constant [10 x i8] c"input-csp\00", align 1
@.str.233 = private unnamed_addr constant [12 x i8] c"input-depth\00", align 1
@.str.234 = private unnamed_addr constant [13 x i8] c"output-depth\00", align 1
@.str.235 = private unnamed_addr constant [13 x i8] c"dts-compress\00", align 1
@.str.236 = private unnamed_addr constant [11 x i8] c"output-csp\00", align 1
@.str.237 = private unnamed_addr constant [12 x i8] c"input-range\00", align 1
@.str.238 = private unnamed_addr constant [11 x i8] c"stitchable\00", align 1
@.str.239 = private unnamed_addr constant [7 x i8] c"filler\00", align 1
@.str.240 = private unnamed_addr constant [598 x i8] c"x264 core:%d%s\0ASyntax: x264 [options] -o outfile infile\0A\0AInfile can be raw (in which case resolution is required),\0A  or YUV4MPEG (*.y4m),\0A  or Avisynth if compiled with support (%s).\0A  or libav* formats if compiled with lavf support (%s) or ffms support (%s).\0AOutfile type is selected by filename:\0A .264 -> Raw bytestream\0A .mkv -> Matroska\0A .flv -> Flash Video\0A .mp4 -> MP4 if compiled with GPAC or L-SMASH support (%s)\0AOutput bit depth: %s\0A\0AOptions:\0A\0A  -h, --help                  List basic options\0A      --longhelp              List more options\0A      --fullhelp              List all options\0A\0A\00", align 1
@.str.241 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.242 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.243 = private unnamed_addr constant [2 x i8] c"8\00", align 1
@.str.260 = private unnamed_addr constant [40 x i8] c"                                  - %s\0A\00", align 1
@.str.270 = private unnamed_addr constant [62 x i8] c"  -I, --keyint <integer or \22infinite\22> Maximum GOP size [%d]\0A\00", align 1
@.str.273 = private unnamed_addr constant [78 x i8] c"      --scenecut <integer>    How aggressively to insert extra I-frames [%d]\0A\00", align 1
@.str.275 = private unnamed_addr constant [71 x i8] c"  -b, --bframes <integer>     Number of B-frames between I and P [%d]\0A\00", align 1
@.str.276 = private unnamed_addr constant [315 x i8] c"      --b-adapt <integer>     Adaptive B-frame decision method [%d]\0A                                  Higher values may lower threading efficiency.\0A                                  - 0: Disabled\0A                                  - 1: Fast\0A                                  - 2: Optimal (slow with high --bframes)\0A\00", align 1
@.str.277 = private unnamed_addr constant [75 x i8] c"      --b-bias <integer>      Influences how often B-frames are used [%d]\0A\00", align 1
@.str.278 = private unnamed_addr constant [274 x i8] c"      --b-pyramid <string>    Keep some B-frames as references [%s]\0A                                  - none: Disabled\0A                                  - strict: Strictly hierarchical pyramid\0A                                  - normal: Non-strict (not Blu-ray compatible)\0A\00", align 1
@x264_b_pyramid_names = internal unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.428, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.429, i32 0, i32 0), i8* null], align 4
@.str.281 = private unnamed_addr constant [63 x i8] c"  -r, --ref <integer>         Number of reference frames [%d]\0A\00", align 1
@.str.283 = private unnamed_addr constant [62 x i8] c"  -f, --deblock <alpha:beta>  Loop filter parameters [%d:%d]\0A\00", align 1
@.str.293 = private unnamed_addr constant [130 x i8] c"      --pulldown <string>     Use soft pulldown to change frame rate\0A                                  - %s (requires cfr input)\0A\00", align 1
@.str.297 = private unnamed_addr constant [68 x i8] c"  -q, --qp <integer>          Force constant QP (0-%d, 0=lossless)\0A\00", align 1
@.str.299 = private unnamed_addr constant [64 x i8] c"      --crf <float>           Quality-based VBR (%d-51) [%.1f]\0A\00", align 1
@.str.300 = private unnamed_addr constant [78 x i8] c"      --rc-lookahead <integer> Number of frames for frametype lookahead [%d]\0A\00", align 1
@.str.301 = private unnamed_addr constant [63 x i8] c"      --vbv-maxrate <integer> Max local bitrate (kbit/s) [%d]\0A\00", align 1
@.str.302 = private unnamed_addr constant [70 x i8] c"      --vbv-bufsize <integer> Set size of the VBV buffer (kbit) [%d]\0A\00", align 1
@.str.303 = private unnamed_addr constant [67 x i8] c"      --vbv-init <float>      Initial VBV buffer occupancy [%.1f]\0A\00", align 1
@.str.305 = private unnamed_addr constant [47 x i8] c"      --qpmin <integer>       Set min QP [%d]\0A\00", align 1
@.str.306 = private unnamed_addr constant [47 x i8] c"      --qpmax <integer>       Set max QP [%d]\0A\00", align 1
@.str.307 = private unnamed_addr constant [52 x i8] c"      --qpstep <integer>      Set max QP step [%d]\0A\00", align 1
@.str.308 = private unnamed_addr constant [75 x i8] c"      --ratetol <float>       Tolerance of ABR ratecontrol and VBV [%.1f]\0A\00", align 1
@.str.309 = private unnamed_addr constant [64 x i8] c"      --ipratio <float>       QP factor between I and P [%.2f]\0A\00", align 1
@.str.310 = private unnamed_addr constant [64 x i8] c"      --pbratio <float>       QP factor between P and B [%.2f]\0A\00", align 1
@.str.311 = private unnamed_addr constant [80 x i8] c"      --chroma-qp-offset <integer>  QP difference between chroma and luma [%d]\0A\00", align 1
@.str.312 = private unnamed_addr constant [300 x i8] c"      --aq-mode <integer>     AQ method [%d]\0A                                  - 0: Disabled\0A                                  - 1: Variance AQ (complexity mask)\0A                                  - 2: Auto-variance AQ\0A                                  - 3: Auto-variance AQ with bias to dark scenes\0A\00", align 1
@.str.313 = private unnamed_addr constant [126 x i8] c"      --aq-strength <float>   Reduces blocking and blurring in flat and\0A                              textured areas. [%.1f]\0A\00", align 1
@.str.316 = private unnamed_addr constant [64 x i8] c"      --stats <string>        Filename for 2 pass stats [\22%s\22]\0A\00", align 1
@.str.318 = private unnamed_addr constant [59 x i8] c"      --qcomp <float>         QP curve compression [%.2f]\0A\00", align 1
@.str.319 = private unnamed_addr constant [91 x i8] c"      --cplxblur <float>      Reduce fluctuations in QP (before curve compression) [%.1f]\0A\00", align 1
@.str.320 = private unnamed_addr constant [90 x i8] c"      --qblur <float>         Reduce fluctuations in QP (after curve compression) [%.1f]\0A\00", align 1
@.str.325 = private unnamed_addr constant [197 x i8] c"  -A, --partitions <string>   Partitions to consider [\22p8x8,b8x8,i8x8,i4x4\22]\0A                                  - %s\0A                                  (p4x4 requires p8x8. i8x8 requires --8x8dct.)\0A\00", align 1
@.str.326 = private unnamed_addr constant [130 x i8] c"      --direct <string>       Direct MV prediction mode [\22%s\22]\0A                                  - none, spatial, temporal, auto\0A\00", align 1
@x264_direct_pred_names = internal unnamed_addr constant [5 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.430, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.431, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* null], align 4
@.str.328 = private unnamed_addr constant [236 x i8] c"      --weightp <integer>     Weighted prediction for P-frames [%d]\0A                                  - 0: Disabled\0A                                  - 1: Weighted refs\0A                                  - 2: Weighted refs + Duplicates\0A\00", align 1
@.str.329 = private unnamed_addr constant [77 x i8] c"      --me <string>           Integer pixel motion estimation method [\22%s\22]\0A\00", align 1
@x264_motion_est_names = internal unnamed_addr constant [6 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.432, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.433, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.434, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.435, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.436, i32 0, i32 0), i8* null], align 4
@.str.332 = private unnamed_addr constant [71 x i8] c"      --merange <integer>     Maximum motion vector search range [%d]\0A\00", align 1
@.str.335 = private unnamed_addr constant [81 x i8] c"  -m, --subme <integer>       Subpixel motion estimation and mode decision [%d]\0A\00", align 1
@.str.338 = private unnamed_addr constant [223 x i8] c"      --psy-rd <float:float>  Strength of psychovisual optimization [\22%.1f:%.1f\22]\0A                                  #1: RD (requires subme>=6)\0A                                  #2: Trellis (requires trellis, experimental)\0A\00", align 1
@.str.343 = private unnamed_addr constant [258 x i8] c"  -t, --trellis <integer>     Trellis RD quantization. [%d]\0A                                  - 0: disabled\0A                                  - 1: enabled only on the final encode of a MB\0A                                  - 2: enabled on all mode decisions\0A\00", align 1
@.str.346 = private unnamed_addr constant [52 x i8] c"      --nr <integer>          Noise reduction [%d]\0A\00", align 1
@.str.347 = private unnamed_addr constant [89 x i8] c"      --deadzone-inter <int>  Set the size of the inter luma quantization deadzone [%d]\0A\00", align 1
@.str.348 = private unnamed_addr constant [89 x i8] c"      --deadzone-intra <int>  Set the size of the intra luma quantization deadzone [%d]\0A\00", align 1
@.str.350 = private unnamed_addr constant [99 x i8] c"      --cqm <string>          Preset quant matrices [\22%s\22]\0A                                  - %s\0A\00", align 1
@.str.360 = private unnamed_addr constant [122 x i8] c"      --overscan <string>     Specify crop overscan setting [\22%s\22]\0A                                  - undef, show, crop\0A\00", align 1
@x264_overscan_names = internal unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.437, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.438, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.439, i32 0, i32 0), i8* null], align 4
@.str.361 = private unnamed_addr constant [135 x i8] c"      --videoformat <string>  Specify video format [\22%s\22]\0A                                  - component, pal, ntsc, secam, mac, undef\0A\00", align 1
@x264_vidformat_names = internal unnamed_addr constant [7 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.440, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.441, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.442, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.443, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.444, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.437, i32 0, i32 0), i8* null], align 4
@.str.362 = private unnamed_addr constant [97 x i8] c"      --range <string>        Specify color range [\22%s\22]\0A                                  - %s\0A\00", align 1
@.str.363 = private unnamed_addr constant [266 x i8] c"      --colorprim <string>    Specify color primaries [\22%s\22]\0A                                  - undef, bt709, bt470m, bt470bg, smpte170m,\0A                                    smpte240m, film, bt2020, smpte428,\0A                                    smpte431, smpte432\0A\00", align 1
@x264_colorprim_names = internal unnamed_addr constant [14 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.241, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.445, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.437, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.241, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.446, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.447, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.448, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.449, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.450, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.451, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.452, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.453, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.454, i32 0, i32 0), i8* null], align 4
@.str.364 = private unnamed_addr constant [421 x i8] c"      --transfer <string>     Specify transfer characteristics [\22%s\22]\0A                                  - undef, bt709, bt470m, bt470bg, smpte170m,\0A                                    smpte240m, linear, log100, log316,\0A                                    iec61966-2-4, bt1361e, iec61966-2-1,\0A                                    bt2020-10, bt2020-12, smpte2084, smpte428,\0A                                    arib-std-b67\0A\00", align 1
@x264_transfer_names = internal unnamed_addr constant [20 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.241, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.445, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.437, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.241, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.446, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.447, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.448, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.449, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.455, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.456, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.457, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.458, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.459, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.460, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.461, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.462, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.463, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.452, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.464, i32 0, i32 0), i8* null], align 4
@.str.365 = private unnamed_addr constant [346 x i8] c"      --colormatrix <string>  Specify color matrix setting [\22%s\22]\0A                                  - undef, bt709, fcc, bt470bg, smpte170m,\0A                                    smpte240m, GBR, YCgCo, bt2020nc, bt2020c,\0A                                    smpte2085, chroma-derived-nc,\0A                                    chroma-derived-c, ICtCp\0A\00", align 1
@x264_colmatrix_names = internal unnamed_addr constant [16 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.465, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.445, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.437, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.241, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.466, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.447, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.448, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.449, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.467, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.468, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.469, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.470, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.471, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.472, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.473, i32 0, i32 0), i8* null], align 4
@.str.366 = private unnamed_addr constant [76 x i8] c"      --chromaloc <integer>   Specify chroma sample location (0 to 5) [%d]\0A\00", align 1
@.str.369 = private unnamed_addr constant [186 x i8] c"      --alternative-transfer <string> Specify an alternative transfer\0A                              characteristics [\22%s\22]\0A                                  - same values as --transfer\0A\00", align 1
@.str.376 = private unnamed_addr constant [109 x i8] c"      --muxer <string>        Specify output container format [\22%s\22]\0A                                  - %s\0A\00", align 1
@.str.377 = private unnamed_addr constant [108 x i8] c"      --demuxer <string>      Specify input container format [\22%s\22]\0A                                  - %s\0A\00", align 1
@.str.380 = private unnamed_addr constant [103 x i8] c"      --output-csp <string>   Specify output colorspace [\22%s\22]\0A                                  - %s\0A\00", align 1
@.str.383 = private unnamed_addr constant [103 x i8] c"      --input-range <string>  Specify input color range [\22%s\22]\0A                                  - %s\0A\00", align 1
@.str.392 = private unnamed_addr constant [117 x i8] c"      --avcintra-class <integer> Use compatibility hacks for AVC-Intra class\0A                                  - %s\0A\00", align 1
@.str.393 = private unnamed_addr constant [97 x i8] c"      --avcintra-flavor <string> AVC-Intra flavor [\22%s\22]\0A                                  - %s\0A\00", align 1
@.str.398 = private unnamed_addr constant [114 x i8] c"      --log-level <string>    Specify the maximum level of logging [\22%s\22]\0A                                  - %s\0A\00", align 1
@.str.414 = private unnamed_addr constant [63 x i8] c"      --sps-id <integer>      Set SPS and PPS id numbers [%d]\0A\00", align 1
@.str.425 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.426 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.427 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.428 = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@.str.429 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.430 = private unnamed_addr constant [8 x i8] c"spatial\00", align 1
@.str.431 = private unnamed_addr constant [9 x i8] c"temporal\00", align 1
@.str.432 = private unnamed_addr constant [4 x i8] c"dia\00", align 1
@.str.433 = private unnamed_addr constant [4 x i8] c"hex\00", align 1
@.str.434 = private unnamed_addr constant [4 x i8] c"umh\00", align 1
@.str.435 = private unnamed_addr constant [4 x i8] c"esa\00", align 1
@.str.436 = private unnamed_addr constant [5 x i8] c"tesa\00", align 1
@.str.437 = private unnamed_addr constant [6 x i8] c"undef\00", align 1
@.str.438 = private unnamed_addr constant [5 x i8] c"show\00", align 1
@.str.439 = private unnamed_addr constant [5 x i8] c"crop\00", align 1
@.str.440 = private unnamed_addr constant [10 x i8] c"component\00", align 1
@.str.441 = private unnamed_addr constant [4 x i8] c"pal\00", align 1
@.str.442 = private unnamed_addr constant [5 x i8] c"ntsc\00", align 1
@.str.443 = private unnamed_addr constant [6 x i8] c"secam\00", align 1
@.str.444 = private unnamed_addr constant [4 x i8] c"mac\00", align 1
@.str.445 = private unnamed_addr constant [6 x i8] c"bt709\00", align 1
@.str.446 = private unnamed_addr constant [7 x i8] c"bt470m\00", align 1
@.str.447 = private unnamed_addr constant [8 x i8] c"bt470bg\00", align 1
@.str.448 = private unnamed_addr constant [10 x i8] c"smpte170m\00", align 1
@.str.449 = private unnamed_addr constant [10 x i8] c"smpte240m\00", align 1
@.str.450 = private unnamed_addr constant [5 x i8] c"film\00", align 1
@.str.451 = private unnamed_addr constant [7 x i8] c"bt2020\00", align 1
@.str.452 = private unnamed_addr constant [9 x i8] c"smpte428\00", align 1
@.str.453 = private unnamed_addr constant [9 x i8] c"smpte431\00", align 1
@.str.454 = private unnamed_addr constant [9 x i8] c"smpte432\00", align 1
@.str.455 = private unnamed_addr constant [7 x i8] c"linear\00", align 1
@.str.456 = private unnamed_addr constant [7 x i8] c"log100\00", align 1
@.str.457 = private unnamed_addr constant [7 x i8] c"log316\00", align 1
@.str.458 = private unnamed_addr constant [13 x i8] c"iec61966-2-4\00", align 1
@.str.459 = private unnamed_addr constant [8 x i8] c"bt1361e\00", align 1
@.str.460 = private unnamed_addr constant [13 x i8] c"iec61966-2-1\00", align 1
@.str.461 = private unnamed_addr constant [10 x i8] c"bt2020-10\00", align 1
@.str.462 = private unnamed_addr constant [10 x i8] c"bt2020-12\00", align 1
@.str.463 = private unnamed_addr constant [10 x i8] c"smpte2084\00", align 1
@.str.464 = private unnamed_addr constant [13 x i8] c"arib-std-b67\00", align 1
@.str.465 = private unnamed_addr constant [4 x i8] c"GBR\00", align 1
@.str.466 = private unnamed_addr constant [4 x i8] c"fcc\00", align 1
@.str.467 = private unnamed_addr constant [6 x i8] c"YCgCo\00", align 1
@.str.468 = private unnamed_addr constant [9 x i8] c"bt2020nc\00", align 1
@.str.469 = private unnamed_addr constant [8 x i8] c"bt2020c\00", align 1
@.str.470 = private unnamed_addr constant [10 x i8] c"smpte2085\00", align 1
@.str.471 = private unnamed_addr constant [18 x i8] c"chroma-derived-nc\00", align 1
@.str.472 = private unnamed_addr constant [17 x i8] c"chroma-derived-c\00", align 1
@.str.473 = private unnamed_addr constant [6 x i8] c"ICtCp\00", align 1
@.str.475 = private unnamed_addr constant [33 x i8] c"                                \00", align 1
@x264_cli_csps = external dso_local local_unnamed_addr constant [0 x %struct.x264_cli_csp_t], align 4
@.str.476 = private unnamed_addr constant [34 x i8] c"\0A                                \00", align 1
@.str.477 = private unnamed_addr constant [10 x i8] c"panasonic\00", align 1
@.str.478 = private unnamed_addr constant [5 x i8] c"sony\00", align 1
@.str.480 = private unnamed_addr constant [23 x i8] c"built on Jul  7 2022, \00", align 1
@.str.482 = private unnamed_addr constant [40 x i8] c"x264 configuration: --chroma-format=%s\0A\00", align 1
@chroma_format_names = internal unnamed_addr constant [13 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i8* null, i8* null, i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0)], align 4
@.str.483 = private unnamed_addr constant [43 x i8] c"libx264 configuration: --chroma-format=%s\0A\00", align 1
@x264_chroma_format = external dso_local local_unnamed_addr constant i32, align 4
@.str.484 = private unnamed_addr constant [15 x i8] c"x264 license: \00", align 1
@.str.486 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.487 = private unnamed_addr constant [4 x i8] c"mp4\00", align 1
@.str.488 = private unnamed_addr constant [38 x i8] c"not compiled with MP4 output support\0A\00", align 1
@mkv_output = external dso_local local_unnamed_addr constant %struct.cli_output_t, align 4
@flv_output = external dso_local local_unnamed_addr constant %struct.cli_output_t, align 4
@raw_output = external dso_local local_unnamed_addr constant %struct.cli_output_t, align 4
@.str.489 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.490 = private unnamed_addr constant [4 x i8] c"avs\00", align 1
@.str.491 = private unnamed_addr constant [4 x i8] c"d2v\00", align 1
@.str.492 = private unnamed_addr constant [4 x i8] c"dga\00", align 1
@.str.493 = private unnamed_addr constant [37 x i8] c"not compiled with AVS input support\0A\00", align 1
@y4m_input = external dso_local local_unnamed_addr constant %struct.cli_input_t, align 4
@.str.494 = private unnamed_addr constant [4 x i8] c"yuv\00", align 1
@raw_input = external dso_local local_unnamed_addr constant %struct.cli_input_t, align 4
@.str.495 = private unnamed_addr constant [48 x i8] c"could not open input file `%s' via any method!\0A\00", align 1
@.str.496 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.497 = private unnamed_addr constant [7 x i8] c"resize\00", align 1
@.str.498 = private unnamed_addr constant [8 x i8] c"normcsp\00", align 1
@.str.499 = private unnamed_addr constant [12 x i8] c"fix_vfr_pts\00", align 1
@.str.500 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.501 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.502 = private unnamed_addr constant [13 x i8] c"bit_depth=%d\00", align 1
@.str.503 = private unnamed_addr constant [9 x i8] c"depth_%d\00", align 1
@.str.504 = private unnamed_addr constant [43 x i8] c"unsupported framerate for chosen pulldown\0A\00", align 1
@.str.505 = private unnamed_addr constant [26 x i8] c"x264_encoder_open failed\0A\00", align 1
@.str.506 = private unnamed_addr constant [25 x i8] c"can't set outfile param\0A\00", align 1
@.str.507 = private unnamed_addr constant [31 x i8] c"ticks_per_frame invalid: %lld\0A\00", align 1
@.str.508 = private unnamed_addr constant [29 x i8] c"x264_encoder_headers failed\0A\00", align 1
@.str.509 = private unnamed_addr constant [38 x i8] c"error writing headers to output file\0A\00", align 1
@.str.510 = private unnamed_addr constant [22 x i8] c"# timecode format v2\0A\00", align 1
@pulldown_frame_duration = internal unnamed_addr constant [10 x float] [float 0.000000e+00, float 1.000000e+00, float 5.000000e-01, float 5.000000e-01, float 1.000000e+00, float 1.000000e+00, float 1.500000e+00, float 1.500000e+00, float 2.000000e+00, float 3.000000e+00], align 4
@.str.511 = private unnamed_addr constant [55 x i8] c"non-strictly-monotonic pts at frame %d (%lld <= %lld)\0A\00", align 1
@.str.512 = private unnamed_addr constant [62 x i8] c"too many nonmonotonic pts warnings, suppressing further ones\0A\00", align 1
@.str.513 = private unnamed_addr constant [6 x i8] c"%.6f\0A\00", align 1
@.str.514 = private unnamed_addr constant [41 x i8] c"%d suppressed nonmonotonic pts warnings\0A\00", align 1
@.str.515 = private unnamed_addr constant [81 x i8] c"                                                                               \0D\00", align 1
@.str.516 = private unnamed_addr constant [44 x i8] c"aborted at input frame %d, output frame %d\0A\00", align 1
@.str.517 = private unnamed_addr constant [40 x i8] c"encoded %d frames, %.2f fps, %.2f kb/s\0A\00", align 1
@pulldown_values = internal unnamed_addr constant <{ %struct.cli_pulldown_t, { i32, <{ i8, [23 x i8] }>, float }, { i32, <{ i8, i8, i8, i8, [20 x i8] }>, float }, { i32, <{ i8, i8, [22 x i8] }>, float }, { i32, <{ i8, [23 x i8] }>, float }, { i32, <{ i8, [23 x i8] }>, float }, %struct.cli_pulldown_t }> <{ %struct.cli_pulldown_t zeroinitializer, { i32, <{ i8, [23 x i8] }>, float } { i32 1, <{ i8, [23 x i8] }> <{ i8 4, [23 x i8] zeroinitializer }>, float 1.000000e+00 }, { i32, <{ i8, i8, i8, i8, [20 x i8] }>, float } { i32 4, <{ i8, i8, i8, i8, [20 x i8] }> <{ i8 6, i8 5, i8 7, i8 4, [20 x i8] zeroinitializer }>, float 1.250000e+00 }, { i32, <{ i8, i8, [22 x i8] }>, float } { i32 2, <{ i8, i8, [22 x i8] }> <{ i8 8, i8 9, [22 x i8] zeroinitializer }>, float 1.000000e+00 }, { i32, <{ i8, [23 x i8] }>, float } { i32 1, <{ i8, [23 x i8] }> <{ i8 8, [23 x i8] zeroinitializer }>, float 2.000000e+00 }, { i32, <{ i8, [23 x i8] }>, float } { i32 1, <{ i8, [23 x i8] }> <{ i8 9, [23 x i8] zeroinitializer }>, float 3.000000e+00 }, %struct.cli_pulldown_t { i32 24, [24 x i8] c"\06\05\05\05\05\05\05\05\05\05\05\05\07\04\04\04\04\04\04\04\04\04\04\04", float 0x3FF0AAAAA0000000 } }>, align 4
@.str.519 = private unnamed_addr constant [15 x i8] c"%d %c%*[ \09]%d\0A\00", align 1
@.str.520 = private unnamed_addr constant [23 x i8] c"qpfile seeking failed\0A\00", align 1
@.str.521 = private unnamed_addr constant [33 x i8] c"can't parse qpfile for frame %d\0A\00", align 1
@.str.522 = private unnamed_addr constant [28 x i8] c"x264_encoder_encode failed\0A\00", align 1
@.str.523 = private unnamed_addr constant [66 x i8] c"x264 [%.1f%%] %d/%d frames, %.2f fps, %.2f kb/s, eta %d:%02d:%02d\00", align 1
@.str.524 = private unnamed_addr constant [36 x i8] c"x264 %d frames: %.2f fps, %.2f kb/s\00", align 1
@.str.525 = private unnamed_addr constant [6 x i8] c"%s  \0D\00", align 1
@str = private unnamed_addr constant [15 x i8] c"Example usage:\00", align 1
@str.526 = private unnamed_addr constant [29 x i8] c"      Constant quality mode:\00", align 1
@str.527 = private unnamed_addr constant [46 x i8] c"            x264 --crf 24 -o <output> <input>\00", align 1
@str.528 = private unnamed_addr constant [43 x i8] c"      Two-pass with a bitrate of 1000kbps:\00", align 1
@str.529 = private unnamed_addr constant [61 x i8] c"            x264 --pass 1 --bitrate 1000 -o <output> <input>\00", align 1
@str.530 = private unnamed_addr constant [61 x i8] c"            x264 --pass 2 --bitrate 1000 -o <output> <input>\00", align 1
@str.531 = private unnamed_addr constant [16 x i8] c"      Lossless:\00", align 1
@str.532 = private unnamed_addr constant [44 x i8] c"            x264 --qp 0 -o <output> <input>\00", align 1
@str.533 = private unnamed_addr constant [60 x i8] c"      Maximum PSNR at the cost of speed and visual quality:\00", align 1
@str.534 = private unnamed_addr constant [66 x i8] c"            x264 --preset placebo --tune psnr -o <output> <input>\00", align 1
@str.535 = private unnamed_addr constant [59 x i8] c"      Constant bitrate at 1000kbps with a 2 second-buffer:\00", align 1
@str.536 = private unnamed_addr constant [71 x i8] c"            x264 --vbv-bufsize 2000 --bitrate 1000 -o <output> <input>\00", align 1
@str.537 = private unnamed_addr constant [9 x i8] c"Presets:\00", align 1
@str.538 = private unnamed_addr constant [125 x i8] c"      --profile <string>      Force the limits of an H.264 profile\0A                                  Overrides all settings.\00", align 1
@str.539 = private unnamed_addr constant [143 x i8] c"      --preset <string>       Use a preset to select encoding settings [medium]\0A                                  Overridden by user settings.\00", align 1
@str.540 = private unnamed_addr constant [149 x i8] c"                                  - ultrafast,superfast,veryfast,faster,fast\0A                                  - medium,slow,slower,veryslow,placebo\00", align 1
@str.541 = private unnamed_addr constant [339 x i8] c"      --tune <string>         Tune the settings for a particular type of source\0A                              or situation\0A                                  Overridden by user settings.\0A                                  Multiple tunings are separated by commas.\0A                                  Only one psy tuning can be used at a time.\00", align 1
@str.542 = private unnamed_addr constant [215 x i8] c"                                  - psy tunings: film,animation,grain,\0A                                                 stillimage,psnr,ssim\0A                                  - other tunings: fastdecode,zerolatency\00", align 1
@str.543 = private unnamed_addr constant [20 x i8] c"Frame-type options:\00", align 1
@str.544 = private unnamed_addr constant [71 x i8] c"      --tff                   Enable interlaced mode (top field first)\00", align 1
@str.545 = private unnamed_addr constant [74 x i8] c"      --bff                   Enable interlaced mode (bottom field first)\00", align 1
@str.546 = private unnamed_addr constant [13 x i8] c"Ratecontrol:\00", align 1
@str.547 = private unnamed_addr constant [51 x i8] c"  -B, --bitrate <integer>     Set bitrate (kbit/s)\00", align 1
@str.548 = private unnamed_addr constant [209 x i8] c"  -p, --pass <integer>        Enable multipass ratecontrol\0A                                  - 1: First pass, creates stats file\0A                                  - 2: Last pass, does not overwrite stats file\00", align 1
@str.549 = private unnamed_addr constant [14 x i8] c"Input/Output:\00", align 1
@str.550 = private unnamed_addr constant [50 x i8] c"  -o, --output <string>       Specify output file\00", align 1
@str.551 = private unnamed_addr constant [58 x i8] c"      --sar width:height      Specify Sample Aspect Ratio\00", align 1
@str.552 = private unnamed_addr constant [48 x i8] c"      --fps <float|rational>  Specify framerate\00", align 1
@str.553 = private unnamed_addr constant [52 x i8] c"      --seek <integer>        First frame to encode\00", align 1
@str.554 = private unnamed_addr constant [65 x i8] c"      --frames <integer>      Maximum number of frames to encode\00", align 1
@str.555 = private unnamed_addr constant [68 x i8] c"      --level <string>        Specify level (as defined by Annex A)\00", align 1
@str.556 = private unnamed_addr constant [41 x i8] c"      --quiet                 Quiet Mode\00", align 1
@str.557 = private unnamed_addr constant [11 x i8] c"Filtering:\00", align 1
@str.558 = private unnamed_addr constant [91 x i8] c"      --vf, --video-filter <filter0>/<filter1>/... Apply video filtering to the input file\00", align 1
@str.559 = private unnamed_addr constant [75 x i8] c"      Filter options may be specified in <filter>:<option>=<value> format.\00", align 1
@str.560 = private unnamed_addr constant [25 x i8] c"      Available filters:\00", align 1
@str.561 = private unnamed_addr constant [78 x i8] c"      --dts-compress          Eliminate initial delay with container DTS hack\00", align 1
@str.562 = private unnamed_addr constant [232 x i8] c"      --timebase <int/int>    Specify timebase numerator and denominator\0A                 <integer>    Specify timebase numerator for input timecode file\0A                              or specify timebase denominator for other input\00", align 1
@str.563 = private unnamed_addr constant [76 x i8] c"      --tcfile-out <string>   Output timecode v2 file from input timestamps\00", align 1
@str.564 = private unnamed_addr constant [76 x i8] c"      --tcfile-in <string>    Force timestamp generation with timecode file\00", align 1
@str.565 = private unnamed_addr constant [76 x i8] c"      --force-cfr             Force constant framerate timestamp generation\00", align 1
@str.566 = private unnamed_addr constant [57 x i8] c"      --aud                   Use access unit delimiters\00", align 1
@str.567 = private unnamed_addr constant [56 x i8] c"      --dump-yuv <string>     Save reconstructed frames\00", align 1
@str.568 = private unnamed_addr constant [62 x i8] c"      --opencl-device <integer> Specify OpenCL device ordinal\00", align 1
@str.569 = private unnamed_addr constant [75 x i8] c"      --opencl-clbin <string> Specify path of compiled OpenCL kernel cache\00", align 1
@str.570 = private unnamed_addr constant [51 x i8] c"      --opencl                Enable use of OpenCL\00", align 1
@str.571 = private unnamed_addr constant [60 x i8] c"      --no-asm                Disable all CPU optimizations\00", align 1
@str.572 = private unnamed_addr constant [53 x i8] c"      --asm <integer>         Override CPU detection\00", align 1
@str.573 = private unnamed_addr constant [171 x i8] c"      --cpu-independent       Ensure exact reproducibility across different cpus,\0A                                  as opposed to letting them select different algorithms\00", align 1
@str.574 = private unnamed_addr constant [92 x i8] c"      --non-deterministic     Slightly improve quality of SMP, at the cost of repeatability\00", align 1
@str.575 = private unnamed_addr constant [80 x i8] c"      --sync-lookahead <integer> Number of buffer frames for threaded lookahead\00", align 1
@str.576 = private unnamed_addr constant [61 x i8] c"      --thread-input          Run Avisynth in its own thread\00", align 1
@str.577 = private unnamed_addr constant [73 x i8] c"      --sliced-threads        Low-latency but lower-efficiency threading\00", align 1
@str.578 = private unnamed_addr constant [81 x i8] c"      --lookahead-threads <integer> Force a specific number of lookahead threads\00", align 1
@str.579 = private unnamed_addr constant [65 x i8] c"      --threads <integer>     Force a specific number of threads\00", align 1
@str.580 = private unnamed_addr constant [54 x i8] c"      --ssim                  Enable SSIM computation\00", align 1
@str.581 = private unnamed_addr constant [54 x i8] c"      --psnr                  Enable PSNR computation\00", align 1
@str.582 = private unnamed_addr constant [79 x i8] c"      --no-progress           Don't show the progress indicator while encoding\00", align 1
@str.583 = private unnamed_addr constant [57 x i8] c"  -v, --verbose               Print stats for each frame\00", align 1
@str.584 = private unnamed_addr constant [154 x i8] c"      --stitchable            Don't optimize headers based on video content\0A                              Ensures ability to recombine a segmented encode\00", align 1
@str.585 = private unnamed_addr constant [77 x i8] c"      --bluray-compat         Enable compatibility hacks for Blu-ray support\00", align 1
@str.586 = private unnamed_addr constant [60 x i8] c"      --index <string>        Filename for input index file\00", align 1
@str.587 = private unnamed_addr constant [72 x i8] c"      --input-res <intxint>   Specify input resolution (width x height)\00", align 1
@str.588 = private unnamed_addr constant [56 x i8] c"      --output-depth <integer> Specify output bit depth\00", align 1
@str.589 = private unnamed_addr constant [68 x i8] c"      --input-depth <integer> Specify input bit depth for raw input\00", align 1
@str.590 = private unnamed_addr constant [76 x i8] c"      --input-csp <string>    Specify input colorspace format for raw input\00", align 1
@str.591 = private unnamed_addr constant [80 x i8] c"      --input-fmt <string>    Specify input file format (requires lavf support)\00", align 1
@str.592 = private unnamed_addr constant [130 x i8] c"      --crop-rect <string>    Add 'left,top,right,bottom' to the bitstream-level\0A                              cropping rectangle\00", align 1
@str.593 = private unnamed_addr constant [69 x i8] c"      --pic-struct            Force pic_struct in Picture Timing SEI\00", align 1
@str.594 = private unnamed_addr constant [122 x i8] c"      --filler                Force hard-CBR and generate filler (implied by\0A                              --nal-hrd cbr)\00", align 1
@str.595 = private unnamed_addr constant [153 x i8] c"      --nal-hrd <string>      Signal HRD information (requires vbv-bufsize)\0A                                  - none, vbr, cbr (cbr not allowed in .mp4)\00", align 1
@str.596 = private unnamed_addr constant [121 x i8] c"      --cll <string>          Specify 'max_content,max_frame_average' content\0A                              light levels\00", align 1
@str.597 = private unnamed_addr constant [162 x i8] c"      --mastering-display <string> Specify 'G(x,y)B(x,y)R(x,y)WP(x,y)L(max,min)'\0A                              for primaries, white point, and display brightness\00", align 1
@str.598 = private unnamed_addr constant [75 x i8] c"the playback equipment. See doc/vui.txt for details. Use at your own risk.\00", align 1
@str.599 = private unnamed_addr constant [75 x i8] c"The VUI settings are not used by the encoder but are merely suggestions to\00", align 1
@str.600 = private unnamed_addr constant [32 x i8] c"Video Usability Info (Annex E):\00", align 1
@str.601 = private unnamed_addr constant [112 x i8] c"      --cqm4iy, --cqm4ic, --cqm4py, --cqm4pc <list>\0A                              Set individual quant matrices\00", align 1
@str.602 = private unnamed_addr constant [118 x i8] c"      --cqm4i, --cqm4p, --cqm8i, --cqm8p <list>\0A                              Set both luma and chroma quant matrices\00", align 1
@str.603 = private unnamed_addr constant [136 x i8] c"      --cqm8 <list>           Set all 8x8 quant matrices\0A                                  Takes a comma-separated list of 64 integers.\00", align 1
@str.604 = private unnamed_addr constant [136 x i8] c"      --cqm4 <list>           Set all 4x4 quant matrices\0A                                  Takes a comma-separated list of 16 integers.\00", align 1
@str.605 = private unnamed_addr constant [70 x i8] c"                                  Overrides any other --cqm* options.\00", align 1
@str.606 = private unnamed_addr constant [83 x i8] c"      --cqmfile <string>      Read custom quant matrices from a JM-compatible file\00", align 1
@str.607 = private unnamed_addr constant [75 x i8] c"                                  Deadzones should be in the range 0 - 32.\00", align 1
@str.608 = private unnamed_addr constant [76 x i8] c"      --no-dct-decimate       Disables coefficient thresholding on P-frames\00", align 1
@str.609 = private unnamed_addr constant [72 x i8] c"      --no-fast-pskip         Disables early SKIP detection on P-frames\00", align 1
@str.610 = private unnamed_addr constant [70 x i8] c"      --no-8x8dct             Disable adaptive spatial transform size\00", align 1
@str.611 = private unnamed_addr constant [65 x i8] c"      --no-chroma-me          Ignore chroma in motion estimation\00", align 1
@str.612 = private unnamed_addr constant [79 x i8] c"      --no-mixed-refs         Don't decide references on a per partition basis\00", align 1
@str.613 = private unnamed_addr constant [125 x i8] c"      --no-psy                Disable all visual optimizations that worsen\0A                              both PSNR and SSIM.\00", align 1
@str.614 = private unnamed_addr constant [68 x i8] c"                                  decision quality: 1=fast, 11=best\00", align 1
@str.615 = private unnamed_addr constant [706 x i8] c"                                  - 0: fullpel only (not recommended)\0A                                  - 1: SAD mode decision, one qpel iteration\0A                                  - 2: SATD mode decision\0A                                  - 3-5: Progressively more qpel\0A                                  - 6: RD mode decision for I/P-frames\0A                                  - 7: RD mode decision for all frames\0A                                  - 8: RD refinement for I/P-frames\0A                                  - 9: RD refinement for all frames\0A                                  - 10: QP-RD - requires trellis=2, aq-mode>0\0A                                  - 11: Full RD: disable all early terminations\00", align 1
@str.616 = private unnamed_addr constant [73 x i8] c"      --mvrange-thread <int>  Minimum buffer between threads [-1 (auto)]\00", align 1
@str.617 = private unnamed_addr constant [71 x i8] c"      --mvrange <integer>     Maximum motion vector length [-1 (auto)]\00", align 1
@str.618 = private unnamed_addr constant [50 x i8] c"                                  - dia, hex, umh\00", align 1
@str.619 = private unnamed_addr constant [345 x i8] c"                                  - dia: diamond search, radius 1 (fast)\0A                                  - hex: hexagonal search, radius 2\0A                                  - umh: uneven multi-hexagon search\0A                                  - esa: exhaustive search\0A                                  - tesa: hadamard exhaustive search (slow)\00", align 1
@str.620 = private unnamed_addr constant [71 x i8] c"      --no-weightb            Disable weighted prediction for B-frames\00", align 1
@str.621 = private unnamed_addr constant [10 x i8] c"Analysis:\00", align 1
@str.622 = private unnamed_addr constant [389 x i8] c"      --qpfile <string>       Force frametypes and QPs for some or all frames\0A                              Format of each line: framenumber frametype QP\0A                              QP is optional (none lets x264 choose). Frametypes: I,i,K,P,B,b.\0A                                  K=<I or i> depending on open-gop setting\0A                              QPs are restricted by qpmin/qpmax.\00", align 1
@str.623 = private unnamed_addr constant [313 x i8] c"                              Each zone is of the form\0A                                  <start frame>,<end frame>,<option>\0A                                  where <option> is either\0A                                      q=<integer> (force QP)\0A                                  or  b=<float> (bitrate multiplier)\00", align 1
@str.624 = private unnamed_addr constant [77 x i8] c"      --zones <zone0>/<zone1>/...  Tweak the bitrate of regions of the video\00", align 1
@str.625 = private unnamed_addr constant [59 x i8] c"      --no-mbtree             Disable mb-tree ratecontrol.\00", align 1
@str.626 = private unnamed_addr constant [71 x i8] c"                                  - 3: Nth pass, overwrites stats file\00", align 1
@str.627 = private unnamed_addr constant [127 x i8] c"      --crf-max <float>       With CRF+VBV, limit RF to this value\0A                                  May cause VBV underflows!\00", align 1
@str.628 = private unnamed_addr constant [762 x i8] c"      --frame-packing <integer> For stereoscopic videos define frame arrangement\0A                                  - 0: checkerboard - pixels are alternatively from L and R\0A                                  - 1: column alternation - L and R are interlaced by column\0A                                  - 2: row alternation - L and R are interlaced by row\0A                                  - 3: side by side - L is on the left, R on the right\0A                                  - 4: top bottom - L is on top, R on bottom\0A                                  - 5: frame alternation - one view per frame\0A                                  - 6: mono - 2D frame without any frame packing\0A                                  - 7: tile format - L is on top-left, R split across\00", align 1
@str.629 = private unnamed_addr constant [225 x i8] c"      --fake-interlaced       Flag stream as interlaced but encode progressive.\0A                              Makes it possible to encode 25p and 30p Blu-Ray\0A                              streams. Ignored in interlaced mode.\00", align 1
@str.630 = private unnamed_addr constant [67 x i8] c"      --constrained-intra     Enable constrained intra prediction.\00", align 1
@str.631 = private unnamed_addr constant [82 x i8] c"      --slice-min-mbs <integer> Limit the size of each slice in macroblocks (min)\00", align 1
@str.632 = private unnamed_addr constant [82 x i8] c"      --slice-max-mbs <integer> Limit the size of each slice in macroblocks (max)\00", align 1
@str.633 = private unnamed_addr constant [71 x i8] c"      --slice-max-size <integer> Limit the size of each slice in bytes\00", align 1
@str.634 = private unnamed_addr constant [149 x i8] c"      --slices-max <integer>  Absolute maximum slices per frame; overrides\0A                              slice-max-size/slice-max-mbs when necessary\00", align 1
@str.635 = private unnamed_addr constant [57 x i8] c"      --slices <integer>      Number of slices per frame\00", align 1
@str.636 = private unnamed_addr constant [157 x i8] c"      --slices <integer>      Number of slices per frame; forces rectangular\0A                              slices and is overridden by other slicing options\00", align 1
@str.637 = private unnamed_addr constant [50 x i8] c"      --no-deblock            Disable loop filter\00", align 1
@str.638 = private unnamed_addr constant [44 x i8] c"      --no-cabac              Disable CABAC\00", align 1
@str.639 = private unnamed_addr constant [123 x i8] c"      --open-gop              Use recovery points to close GOPs\0A                              Only available with b-frames\00", align 1
@str.640 = private unnamed_addr constant [79 x i8] c"      --intra-refresh         Use Periodic Intra Refresh instead of IDR frames\00", align 1
@str.641 = private unnamed_addr constant [64 x i8] c"      --no-scenecut           Disable adaptive I-frame decision\00", align 1
@str.642 = private unnamed_addr constant [54 x i8] c"  -i, --min-keyint <integer>  Minimum GOP size [auto]\00", align 1
@str.643 = private unnamed_addr constant [72 x i8] c"      --slow-firstpass        Don't force faster settings with --pass 1\00", align 1
@str.644 = private unnamed_addr constant [286 x i8] c"      --slow-firstpass        Don't force these faster settings with --pass 1:\0A                                  --no-8x8dct --me dia --partitions none\0A                                  --ref 1 --subme {2 if >2 else unchanged}\0A                                  --trellis 0 --fast-pskip\00", align 1
@str.645 = private unnamed_addr constant [1604 x i8] c"                                  - film (psy tuning):\0A                                    --deblock -1:-1 --psy-rd <unset>:0.15\0A                                  - animation (psy tuning):\0A                                    --bframes {+2} --deblock 1:1\0A                                    --psy-rd 0.4:<unset> --aq-strength 0.6\0A                                    --ref {Double if >1 else 1}\0A                                  - grain (psy tuning):\0A                                    --aq-strength 0.5 --no-dct-decimate\0A                                    --deadzone-inter 6 --deadzone-intra 6\0A                                    --deblock -2:-2 --ipratio 1.1\0A                                    --pbratio 1.1 --psy-rd <unset>:0.25\0A                                    --qcomp 0.8\0A                                  - stillimage (psy tuning):\0A                                    --aq-strength 1.2 --deblock -3:-3\0A                                    --psy-rd 2.0:0.7\0A                                  - psnr (psy tuning):\0A                                    --aq-mode 0 --no-psy\0A                                  - ssim (psy tuning):\0A                                    --aq-mode 2 --no-psy\0A                                  - fastdecode:\0A                                    --no-cabac --no-deblock --no-weightb\0A                                    --weightp 0\0A                                  - zerolatency:\0A                                    --bframes 0 --force-cfr --no-mbtree\0A                                    --sync-lookahead 0 --sliced-threads\0A                                    --rc-lookahead 0\00", align 1
@str.646 = private unnamed_addr constant [2521 x i8] c"                                  - ultrafast:\0A                                    --no-8x8dct --aq-mode 0 --b-adapt 0\0A                                    --bframes 0 --no-cabac --no-deblock\0A                                    --no-mbtree --me dia --no-mixed-refs\0A                                    --partitions none --rc-lookahead 0 --ref 1\0A                                    --scenecut 0 --subme 0 --trellis 0\0A                                    --no-weightb --weightp 0\0A                                  - superfast:\0A                                    --no-mbtree --me dia --no-mixed-refs\0A                                    --partitions i8x8,i4x4 --rc-lookahead 0\0A                                    --ref 1 --subme 1 --trellis 0 --weightp 1\0A                                  - veryfast:\0A                                    --no-mixed-refs --rc-lookahead 10\0A                                    --ref 1 --subme 2 --trellis 0 --weightp 1\0A                                  - faster:\0A                                    --no-mixed-refs --rc-lookahead 20\0A                                    --ref 2 --subme 4 --weightp 1\0A                                  - fast:\0A                                    --rc-lookahead 30 --ref 2 --subme 6\0A                                    --weightp 1\0A                                  - medium:\0A                                    Default settings apply.\0A                                  - slow:\0A                                    --direct auto --rc-lookahead 50 --ref 5\0A                                    --subme 8 --trellis 2\0A                                  - slower:\0A                                    --b-adapt 2 --direct auto --me umh\0A                                    --partitions all --rc-lookahead 60\0A                                    --ref 8 --subme 9 --trellis 2\0A                                  - veryslow:\0A                                    --b-adapt 2 --bframes 8 --direct auto\0A                                    --me umh --merange 24 --partitions all\0A                                    --ref 16 --subme 10 --trellis 2\0A                                    --rc-lookahead 60\0A                                  - placebo:\0A                                    --bframes 16 --b-adapt 2 --direct auto\0A                                    --slow-firstpass --no-fast-pskip\0A                                    --me tesa --merange 24 --partitions all\0A                                    --rc-lookahead 60 --ref 16 --subme 11\0A                                    --trellis 2\00", align 1
@str.647 = private unnamed_addr constant [950 x i8] c"                                  - baseline:\0A                                    --no-8x8dct --bframes 0 --no-cabac\0A                                    --cqm flat --weightp 0\0A                                    No interlaced.\0A                                    No lossless.\0A                                  - main:\0A                                    --no-8x8dct --cqm flat\0A                                    No lossless.\0A                                  - high:\0A                                    No lossless.\0A                                  - high422:\0A                                    No lossless.\0A                                    Support for bit depth 8-10.\0A                                    Support for 4:2:0/4:2:2 chroma subsampling.\0A                                  - high444:\0A                                    Support for bit depth 8-10.\0A                                    Support for 4:2:0/4:2:2/4:4:4 chroma subsampling.\00", align 1
@str.648 = private unnamed_addr constant [13 x i8] c"x264 0.164.x\00", align 1
@str.649 = private unnamed_addr constant [106 x i8] c"clang: 10.0.0 (http://10.18.30.194:8888/compiler/compiler10.git 713ef477716300a9b04a1522e3fce445623444dc)\00", align 1
@str.650 = private unnamed_addr constant [19 x i8] c"Non-GPL commercial\00", align 1
@str.651 = private unnamed_addr constant [62 x i8] c"                              - valid csps for `raw' demuxer:\00", align 1
@switch.table.x264_cli_log = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0)], align 4

; Function Attrs: nounwind
define hidden void @x264_cli_log(i8* %name, i32 %i_level, i8* nocapture readonly %fmt, ...) local_unnamed_addr #0 {
entry:
  %arg = alloca i8*, align 4
  %0 = load i32, i32* @cli_log_level, align 4, !tbaa !2
  %cmp = icmp slt i32 %0, %i_level
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %1 = icmp ult i32 %i_level, 4
  br i1 %1, label %switch.lookup, label %sw.epilog

switch.lookup:                                    ; preds = %if.end
  %switch.gep = getelementptr inbounds [4 x i8*], [4 x i8*]* @switch.table.x264_cli_log, i32 0, i32 %i_level
  %switch.load = load i8*, i8** %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %switch.lookup
  %s_level.0 = phi i8* [ %switch.load, %switch.lookup ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), %if.end ]
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4, !tbaa !6
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i8* %name, i8* nonnull %s_level.0) #13
  %3 = bitcast i8** %arg to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #3
  call void @llvm.va_start(i8* nonnull %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4, !tbaa !6
  %5 = load i8*, i8** %arg, align 4, !tbaa !6
  %call5 = call i32 @vfprintf(%struct._IO_FILE* %4, i8* %fmt, i8* %5) #13
  call void @llvm.va_end(i8* nonnull %3)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #3
  br label %return

return:                                           ; preds = %entry, %sw.epilog
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nounwind
declare dso_local i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

; Function Attrs: nofree nounwind
declare dso_local i32 @vfprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
define hidden void @x264_cli_printf(i32 %i_level, i8* nocapture readonly %fmt, ...) local_unnamed_addr #0 {
entry:
  %arg = alloca i8*, align 4
  %0 = load i32, i32* @cli_log_level, align 4, !tbaa !2
  %cmp = icmp slt i32 %0, %i_level
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %1 = bitcast i8** %arg to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #3
  call void @llvm.va_start(i8* nonnull %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4, !tbaa !6
  %3 = load i8*, i8** %arg, align 4, !tbaa !6
  %call = call i32 @vfprintf(%struct._IO_FILE* %2, i8* %fmt, i8* %3) #13
  call void @llvm.va_end(i8* nonnull %1)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #3
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: nounwind
define hidden i32 @main(i32 %argc, i8** %argv) local_unnamed_addr #4 {
entry:
  %pic_out.i479.i = alloca %struct.x264_picture_t, align 8
  %nal.i480.i = alloca %struct.x264_nal_t*, align 4
  %i_nal.i481.i = alloca i32, align 4
  %pic_out.i.i = alloca %struct.x264_picture_t, align 8
  %nal.i.i = alloca %struct.x264_nal_t*, align 4
  %i_nal.i.i = alloca i32, align 4
  %num.i.i = alloca i32, align 4
  %type.i.i = alloca i8, align 4
  %qp.i.i = alloca i32, align 4
  %pic.i = alloca %struct.x264_picture_t, align 8
  %cli_pic.i = alloca %struct.cli_pic_t, align 8
  %headers.i = alloca %struct.x264_nal_t*, align 4
  %i_nal.i = alloca i32, align 4
  %param = alloca %struct.x264_param_t, align 8
  %opt = alloca %struct.cli_opt_t, align 8
  %cmp = icmp eq i32 %argc, 4
  br i1 %cmp, label %land.lhs.true, label %entry.split

entry.split:                                      ; preds = %entry
  %0 = bitcast %struct.x264_param_t* %param to i8*
  call void @llvm.lifetime.start.p0i8(i64 944, i8* nonnull %0) #3
  %1 = bitcast %struct.cli_opt_t* %opt to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #3
  call void @llvm.memset.p0i8.i32(i8* nonnull align 8 dereferenceable(40) %1, i8 0, i32 40, i1 false)
  call void @x264_param_default(%struct.x264_param_t* nonnull %param) #3
  %call443 = call fastcc i32 @parse(i32 %argc, i8** %argv, %struct.x264_param_t* nonnull %param, %struct.cli_opt_t* nonnull %opt)
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %arrayidx = getelementptr inbounds i8*, i8** %argv, i32 1
  %2 = load i8*, i8** %arrayidx, align 4, !tbaa !6
  %call = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %2, i8* nonnull dereferenceable(15) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i32 0, i32 0)) #14
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.then, label %land.lhs.true.split

land.lhs.true.split:                              ; preds = %land.lhs.true
  %3 = bitcast %struct.x264_param_t* %param to i8*
  call void @llvm.lifetime.start.p0i8(i64 944, i8* nonnull %3) #3
  %4 = bitcast %struct.cli_opt_t* %opt to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #3
  call void @llvm.memset.p0i8.i32(i8* nonnull align 8 dereferenceable(40) %4, i8 0, i32 40, i1 false)
  call void @x264_param_default(%struct.x264_param_t* nonnull %param) #3
  %call444 = call fastcc i32 @parse(i32 4, i8** nonnull %argv, %struct.x264_param_t* nonnull %param, %struct.cli_opt_t* nonnull %opt)
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %arrayidx1 = getelementptr inbounds i8*, i8** %argv, i32 2
  %5 = load i8*, i8** %arrayidx1, align 4, !tbaa !6
  %arrayidx2 = getelementptr inbounds i8*, i8** %argv, i32 3
  %6 = load i8*, i8** %arrayidx2, align 4, !tbaa !6
  %call3 = tail call i32 @x264_cli_autocomplete(i8* %5, i8* %6) #3
  br label %return

if.end:                                           ; preds = %land.lhs.true.split, %entry.split
  %7 = phi i8* [ %0, %entry.split ], [ %3, %land.lhs.true.split ]
  %8 = phi i8* [ %1, %entry.split ], [ %4, %land.lhs.true.split ]
  %phi.call = phi i32 [ %call443, %entry.split ], [ %call444, %land.lhs.true.split ]
  %call8 = call void (i32)* @signal(i32 2, void (i32)* nonnull @sigint_handler) #3
  %tobool9 = icmp sgt i32 %phi.call, -1
  br i1 %tobool9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end
  %9 = bitcast %struct.x264_picture_t* %pic.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %9) #3
  %10 = bitcast %struct.cli_pic_t* %cli_pic.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %10) #3
  %i_log_level.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 48
  %11 = load i32, i32* %i_log_level.i, align 8, !tbaa !8
  %cmp.i = icmp slt i32 %11, 3
  %conv.i = zext i1 %cmp.i to i32
  %b_progress.i = getelementptr inbounds %struct.cli_opt_t, %struct.cli_opt_t* %opt, i32 0, i32 0
  %12 = load i32, i32* %b_progress.i, align 8, !tbaa !18
  %and.i = and i32 %12, %conv.i
  store i32 %and.i, i32* %b_progress.i, align 8, !tbaa !18
  %i_pulldown.i = getelementptr inbounds %struct.cli_opt_t, %struct.cli_opt_t* %opt, i32 0, i32 7
  %13 = load i32, i32* %i_pulldown.i, align 8, !tbaa !21
  %tobool.i = icmp eq i32 %13, 0
  br i1 %tobool.i, label %if.end13.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then10
  %b_vfr_input.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 62
  %14 = load i32, i32* %b_vfr_input.i, align 8, !tbaa !22
  %tobool2.i = icmp eq i32 %14, 0
  br i1 %tobool2.i, label %if.then.i, label %if.end13.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %b_pulldown.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 63
  store i32 1, i32* %b_pulldown.i, align 4, !tbaa !23
  %b_pic_struct.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 69
  store i32 1, i32* %b_pic_struct.i, align 4, !tbaa !24
  %i_fps_den.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 65
  %15 = load i32, i32* %i_fps_den.i, align 4, !tbaa !25
  %i_timebase_num.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 66
  store i32 %15, i32* %i_timebase_num.i, align 8, !tbaa !26
  %i_fps_num.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 64
  %16 = load i32, i32* %i_fps_num.i, align 8, !tbaa !27
  %conv4.i = uitofp i32 %16 to float
  %fps_factor.i = getelementptr inbounds [7 x %struct.cli_pulldown_t], [7 x %struct.cli_pulldown_t]* bitcast (<{ %struct.cli_pulldown_t, { i32, <{ i8, [23 x i8] }>, float }, { i32, <{ i8, i8, i8, i8, [20 x i8] }>, float }, { i32, <{ i8, i8, [22 x i8] }>, float }, { i32, <{ i8, [23 x i8] }>, float }, { i32, <{ i8, [23 x i8] }>, float }, %struct.cli_pulldown_t }>* @pulldown_values to [7 x %struct.cli_pulldown_t]*), i32 0, i32 %13, i32 2
  %17 = load float, float* %fps_factor.i, align 4, !tbaa !28
  %mul.i = fmul fast float %17, %conv4.i
  %conv5.i = fpext float %mul.i to double
  %fmod.i = frem fast double %conv5.i, 1.000000e+00
  %tobool6.i = fcmp fast une double %fmod.i, 0.000000e+00
  br i1 %tobool6.i, label %if.then7.i, label %do.end.i

if.then7.i:                                       ; preds = %if.then.i
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.504, i32 0, i32 0)) #3
  br label %if.else241.i

do.end.i:                                         ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds [7 x %struct.cli_pulldown_t], [7 x %struct.cli_pulldown_t]* bitcast (<{ %struct.cli_pulldown_t, { i32, <{ i8, [23 x i8] }>, float }, { i32, <{ i8, i8, i8, i8, [20 x i8] }>, float }, { i32, <{ i8, i8, [22 x i8] }>, float }, { i32, <{ i8, [23 x i8] }>, float }, { i32, <{ i8, [23 x i8] }>, float }, %struct.cli_pulldown_t }>* @pulldown_values to [7 x %struct.cli_pulldown_t]*), i32 0, i32 %13
  %conv12.i = fptoui float %mul.i to i32
  %i_timebase_den.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 67
  store i32 %conv12.i, i32* %i_timebase_den.i, align 4, !tbaa !30
  br label %if.end13.i

if.end13.i:                                       ; preds = %do.end.i, %land.lhs.true.i, %if.then10
  %pulldown.0.i = phi %struct.cli_pulldown_t* [ null, %land.lhs.true.i ], [ %arrayidx.i, %do.end.i ], [ null, %if.then10 ]
  %call.i = call %struct.x264_t* @x264_encoder_open_164(%struct.x264_param_t* nonnull %param) #3
  %tobool15.i = icmp eq %struct.x264_t* %call.i, null
  br i1 %tobool15.i, label %if.then16.i, label %do.end19.i

if.then16.i:                                      ; preds = %if.end13.i
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.505, i32 0, i32 0)) #3
  br label %if.else241.i

do.end19.i:                                       ; preds = %if.end13.i
  call void @x264_encoder_parameters(%struct.x264_t* nonnull %call.i, %struct.x264_param_t* nonnull %param) #3
  %18 = load i32 (i8*, %struct.x264_param_t*)*, i32 (i8*, %struct.x264_param_t*)** getelementptr inbounds (%struct.cli_output_t, %struct.cli_output_t* @cli_output, i32 0, i32 1), align 4, !tbaa !31
  %hout.i = getelementptr inbounds %struct.cli_opt_t, %struct.cli_opt_t* %opt, i32 0, i32 3
  %19 = load i8*, i8** %hout.i, align 4, !tbaa !33
  %call21.i = call i32 %18(i8* %19, %struct.x264_param_t* nonnull %param) #3
  %tobool22.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.i, label %do.end26.i, label %if.then23.i

if.then23.i:                                      ; preds = %do.end19.i
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.506, i32 0, i32 0)) #3
  br label %if.else241.i

do.end26.i:                                       ; preds = %do.end19.i
  %call27.i = call i64 @x264_mdate() #3
  %i_timebase_den28.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 67
  %20 = load i32, i32* %i_timebase_den28.i, align 4, !tbaa !30
  %conv29.i = zext i32 %20 to i64
  %i_fps_den30.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 65
  %21 = load i32, i32* %i_fps_den30.i, align 4, !tbaa !25
  %conv31.i = zext i32 %21 to i64
  %mul32.i = mul nuw nsw i64 %conv31.i, %conv29.i
  %i_timebase_num33.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 66
  %22 = load i32, i32* %i_timebase_num33.i, align 8, !tbaa !26
  %conv34.i = zext i32 %22 to i64
  %div.i = udiv i64 %mul32.i, %conv34.i
  %i_fps_num35.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 64
  %23 = load i32, i32* %i_fps_num35.i, align 8, !tbaa !27
  %conv36.i = zext i32 %23 to i64
  %div37.i = udiv i64 %div.i, %conv36.i
  %cmp39.i = icmp slt i64 %div37.i, 1
  br i1 %cmp39.i, label %land.lhs.true41.i, label %do.end47.i

land.lhs.true41.i:                                ; preds = %do.end26.i
  %b_vfr_input42.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 62
  %24 = load i32, i32* %b_vfr_input42.i, align 8, !tbaa !22
  %tobool43.i = icmp eq i32 %24, 0
  br i1 %tobool43.i, label %if.then44.i, label %do.end47.i

if.then44.i:                                      ; preds = %land.lhs.true41.i
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.507, i32 0, i32 0), i64 %div37.i) #3
  br label %if.else241.i

do.end47.i:                                       ; preds = %land.lhs.true41.i, %do.end26.i
  %cmp48.i = icmp sgt i64 %div37.i, 1
  %cond.i = select i1 %cmp48.i, i64 %div37.i, i64 1
  %b_repeat_headers.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 59
  %25 = load i32, i32* %b_repeat_headers.i, align 4, !tbaa !34
  %tobool50.i = icmp eq i32 %25, 0
  br i1 %tobool50.i, label %if.then51.i, label %if.end71.i

if.then51.i:                                      ; preds = %do.end47.i
  %26 = bitcast %struct.x264_nal_t** %headers.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #3
  %27 = bitcast i32* %i_nal.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %27) #3
  %call53.i = call i32 @x264_encoder_headers(%struct.x264_t* nonnull %call.i, %struct.x264_nal_t** nonnull %headers.i, i32* nonnull %i_nal.i) #3
  %cmp54.i = icmp slt i32 %call53.i, 0
  br i1 %cmp54.i, label %cleanup.thread.i, label %do.body60.i

do.body60.i:                                      ; preds = %if.then51.i
  %28 = load i32 (i8*, %struct.x264_nal_t*)*, i32 (i8*, %struct.x264_nal_t*)** getelementptr inbounds (%struct.cli_output_t, %struct.cli_output_t* @cli_output, i32 0, i32 2), align 4, !tbaa !35
  %29 = load i8*, i8** %hout.i, align 4, !tbaa !33
  %30 = load %struct.x264_nal_t*, %struct.x264_nal_t** %headers.i, align 4, !tbaa !6
  %call62.i = call i32 %28(i8* %29, %struct.x264_nal_t* %30) #3
  %conv63.i = sext i32 %call62.i to i64
  %cmp64.i = icmp slt i32 %call62.i, 0
  br i1 %cmp64.i, label %cleanup.thread.i, label %cleanup.i

cleanup.thread.i:                                 ; preds = %do.body60.i, %if.then51.i
  %.sink = phi i8* [ getelementptr inbounds ([29 x i8], [29 x i8]* @.str.508, i32 0, i32 0), %if.then51.i ], [ getelementptr inbounds ([38 x i8], [38 x i8]* @.str.509, i32 0, i32 0), %do.body60.i ]
  %i_file.0.ph.i = phi i64 [ 0, %if.then51.i ], [ %conv63.i, %do.body60.i ]
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 0, i8* %.sink) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %27) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #3
  br label %if.else241.i

cleanup.i:                                        ; preds = %do.body60.i
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %27) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #3
  br label %if.end71.i

if.end71.i:                                       ; preds = %cleanup.i, %do.end47.i
  %i_file.1.i = phi i64 [ 0, %do.end47.i ], [ %conv63.i, %cleanup.i ]
  %tcfile_out.i = getelementptr inbounds %struct.cli_opt_t, %struct.cli_opt_t* %opt, i32 0, i32 5
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %tcfile_out.i, align 4, !tbaa !36
  %tobool72.i = icmp eq %struct._IO_FILE* %31, null
  br i1 %tobool72.i, label %if.end76.i, label %if.then73.i

if.then73.i:                                      ; preds = %if.end71.i
  %32 = call i32 @fwrite(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.510, i32 0, i32 0), i32 21, i32 1, %struct._IO_FILE* nonnull %31) #3
  br label %if.end76.i

if.end76.i:                                       ; preds = %if.then73.i, %if.end71.i
  %33 = load volatile i32, i32* @b_ctrl_c, align 4, !tbaa !2
  %tobool77587.i = icmp eq i32 %33, 0
  br i1 %tobool77587.i, label %land.rhs.lr.ph.i, label %for.end.i

land.rhs.lr.ph.i:                                 ; preds = %if.end76.i
  %i_frame_total.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 12
  %hin.i = getelementptr inbounds %struct.cli_opt_t, %struct.cli_opt_t* %opt, i32 0, i32 2
  %i_seek.i = getelementptr inbounds %struct.cli_opt_t, %struct.cli_opt_t* %opt, i32 0, i32 1
  %arraydecay.i.i = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %pic.i, i32 0, i32 7, i32 2, i32 0
  %34 = bitcast i32* %arraydecay.i.i to i8*
  %arraydecay2.i.i = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %cli_pic.i, i32 0, i32 0, i32 5, i32 0
  %35 = bitcast i32* %arraydecay2.i.i to i8*
  %arraydecay4.i.i = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %pic.i, i32 0, i32 7, i32 3, i32 0
  %36 = bitcast i8** %arraydecay4.i.i to i8*
  %arraydecay7.i.i = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %cli_pic.i, i32 0, i32 0, i32 4, i32 0
  %37 = bitcast i8** %arraydecay7.i.i to i8*
  %planes.i.i = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %cli_pic.i, i32 0, i32 0, i32 3
  %i_plane.i.i = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %pic.i, i32 0, i32 7, i32 1
  %csp.i.i = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %cli_pic.i, i32 0, i32 0, i32 0
  %i_csp.i.i = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %pic.i, i32 0, i32 7, i32 0
  %pts.i.i = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %cli_pic.i, i32 0, i32 1
  %i_pts.i.i = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %pic.i, i32 0, i32 4
  %b_vfr_input86.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 62
  %mod.i = getelementptr inbounds %struct.cli_pulldown_t, %struct.cli_pulldown_t* %pulldown.0.i, i32 0, i32 0
  %i_pic_struct.i = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %pic.i, i32 0, i32 2
  %timebase_convert_multiplier.i = getelementptr inbounds %struct.cli_opt_t, %struct.cli_opt_t* %opt, i32 0, i32 6
  %qpfile.i = getelementptr inbounds %struct.cli_opt_t, %struct.cli_opt_t* %opt, i32 0, i32 4
  %38 = bitcast i32* %num.i.i to i8*
  %39 = bitcast i32* %qp.i.i to i8*
  %i_type.i.i = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %pic.i, i32 0, i32 0
  %i_qpplus1.i.i = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %pic.i, i32 0, i32 1
  %40 = bitcast %struct.x264_picture_t* %pic_out.i.i to i8*
  %41 = bitcast %struct.x264_nal_t** %nal.i.i to i8*
  %42 = bitcast i32* %i_nal.i.i to i8*
  %i_dts.i.i = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %pic_out.i.i, i32 0, i32 5
  %43 = load i32, i32* %i_frame_total.i, align 8, !tbaa !37
  %44 = icmp sgt i32 %43, -1
  br i1 %44, label %for.body.i.preheader, label %for.end.i

for.body.i.preheader:                             ; preds = %land.rhs.lr.ph.i
  %45 = load i32 (i8*, %struct.cli_pic_t*, i32)*, i32 (i8*, %struct.cli_pic_t*, i32)** getelementptr inbounds (%struct.cli_vid_filter_t, %struct.cli_vid_filter_t* @filter, i32 0, i32 3), align 4, !tbaa !38
  %46 = load i8*, i8** %hin.i, align 8, !tbaa !40
  %47 = load i32, i32* %i_seek.i, align 4, !tbaa !41
  %call82.i136 = call i32 %45(i8* %46, %struct.cli_pic_t* nonnull %cli_pic.i, i32 %47) #3
  %tobool83.i137 = icmp eq i32 %call82.i136, 0
  br i1 %tobool83.i137, label %if.end85.i, label %for.end.i

land.rhs.i:                                       ; preds = %for.inc.i
  %48 = load i32, i32* %i_frame_total.i, align 8, !tbaa !37
  %cmp78.i = icmp slt i32 %inc191.i, %48
  %tobool81.i = icmp eq i32 %48, 0
  %or.cond468.i = or i1 %cmp78.i, %tobool81.i
  br i1 %or.cond468.i, label %for.body.i, label %for.end.i

for.body.i:                                       ; preds = %land.rhs.i
  %49 = load i32 (i8*, %struct.cli_pic_t*, i32)*, i32 (i8*, %struct.cli_pic_t*, i32)** getelementptr inbounds (%struct.cli_vid_filter_t, %struct.cli_vid_filter_t* @filter, i32 0, i32 3), align 4, !tbaa !38
  %50 = load i8*, i8** %hin.i, align 8, !tbaa !40
  %51 = load i32, i32* %i_seek.i, align 4, !tbaa !41
  %add.i = add nsw i32 %51, %inc191.i
  %call82.i = call i32 %49(i8* %50, %struct.cli_pic_t* nonnull %cli_pic.i, i32 %add.i) #3
  %tobool83.i = icmp eq i32 %call82.i, 0
  br i1 %tobool83.i, label %if.end85.i, label %for.end.i

if.end85.i:                                       ; preds = %for.body.i.preheader, %for.body.i
  %retval1.2601.i73149 = phi i32 [ %retval1.3.i, %for.body.i ], [ 0, %for.body.i.preheader ]
  %pulldown_pts.0600.i74147 = phi double [ %pulldown_pts.1.i, %for.body.i ], [ 0.000000e+00, %for.body.i.preheader ]
  %largest_pts.0598.i77146 = phi i64 [ %64, %for.body.i ], [ -1, %for.body.i.preheader ]
  %pts_warning_cnt.0596.i78144 = phi i32 [ %pts_warning_cnt.1.i, %for.body.i ], [ 0, %for.body.i.preheader ]
  %first_dts.0595.i79143 = phi i64 [ %first_dts.1.i, %for.body.i ], [ 0, %for.body.i.preheader ]
  %i_file.2593.i81142 = phi i64 [ %i_file.3.i, %for.body.i ], [ %i_file.1.i, %for.body.i.preheader ]
  %i_previous.0592.i82141 = phi i64 [ %i_previous.1.i, %for.body.i ], [ 0, %for.body.i.preheader ]
  %i_frame_output.0591.i83140 = phi i32 [ %i_frame_output.1.i, %for.body.i ], [ 0, %for.body.i.preheader ]
  %i_frame.0590.i84139 = phi i32 [ %inc191.i, %for.body.i ], [ 0, %for.body.i.preheader ]
  %last_dts.0588.i85138 = phi i64 [ %last_dts.1.i, %for.body.i ], [ 0, %for.body.i.preheader ]
  call void @x264_picture_init(%struct.x264_picture_t* nonnull %pic.i) #3
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(16) %34, i8* nonnull align 8 dereferenceable(16) %35, i32 16, i1 false) #3
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(16) %36, i8* nonnull align 8 dereferenceable(16) %37, i32 16, i1 false) #3
  %52 = load i32, i32* %planes.i.i, align 4, !tbaa !42
  store i32 %52, i32* %i_plane.i.i, align 4, !tbaa !45
  %53 = load i32, i32* %csp.i.i, align 8, !tbaa !51
  store i32 %53, i32* %i_csp.i.i, align 4, !tbaa !52
  %54 = load i64, i64* %pts.i.i, align 8, !tbaa !53
  store i64 %54, i64* %i_pts.i.i, align 8, !tbaa !54
  %55 = load i32, i32* %b_vfr_input86.i, align 8, !tbaa !22
  %tobool87.i = icmp eq i32 %55, 0
  br i1 %tobool87.i, label %if.end90.i, label %if.else.i

if.end90.i:                                       ; preds = %if.end85.i
  %conv89.i = zext i32 %i_frame.0590.i84139 to i64
  store i64 %conv89.i, i64* %i_pts.i.i, align 8, !tbaa !54
  %56 = load i32, i32* %i_pulldown.i, align 8, !tbaa !21
  %tobool92.i = icmp eq i32 %56, 0
  br i1 %tobool92.i, label %if.else.i, label %if.then96.i

if.then96.i:                                      ; preds = %if.end90.i
  %57 = load i32, i32* %mod.i, align 4, !tbaa !55
  %rem.i = srem i32 %i_frame.0590.i84139, %57
  %arrayidx97.i = getelementptr inbounds %struct.cli_pulldown_t, %struct.cli_pulldown_t* %pulldown.0.i, i32 0, i32 1, i32 %rem.i
  %58 = load i8, i8* %arrayidx97.i, align 1, !tbaa !56
  %conv98.i = zext i8 %58 to i32
  store i32 %conv98.i, i32* %i_pic_struct.i, align 8, !tbaa !57
  %add99.i = fadd fast double %pulldown_pts.0600.i74147, 5.000000e-01
  %conv100.i = fptosi double %add99.i to i64
  store i64 %conv100.i, i64* %i_pts.i.i, align 8, !tbaa !54
  %arrayidx103.i = getelementptr inbounds [10 x float], [10 x float]* @pulldown_frame_duration, i32 0, i32 %conv98.i
  %59 = load float, float* %arrayidx103.i, align 4, !tbaa !58
  %conv104.i = fpext float %59 to double
  %add105.i = fadd fast double %pulldown_pts.0600.i74147, %conv104.i
  br label %if.end116.i

if.else.i:                                        ; preds = %if.end90.i, %if.end85.i
  %60 = phi i64 [ %conv89.i, %if.end90.i ], [ %54, %if.end85.i ]
  %61 = load double, double* %timebase_convert_multiplier.i, align 8, !tbaa !59
  %tobool106.i = fcmp fast une double %61, 0.000000e+00
  br i1 %tobool106.i, label %if.then107.i, label %if.end116.i

if.then107.i:                                     ; preds = %if.else.i
  %conv109.i = sitofp i64 %60 to double
  %mul111.i = fmul fast double %61, %conv109.i
  %add112.i = fadd fast double %mul111.i, 5.000000e-01
  %conv113.i = fptosi double %add112.i to i64
  store i64 %conv113.i, i64* %i_pts.i.i, align 8, !tbaa !54
  br label %if.end116.i

if.end116.i:                                      ; preds = %if.then107.i, %if.else.i, %if.then96.i
  %62 = phi i64 [ %conv113.i, %if.then107.i ], [ %60, %if.else.i ], [ %conv100.i, %if.then96.i ]
  %pulldown_pts.1.i = phi double [ %pulldown_pts.0600.i74147, %if.then107.i ], [ %pulldown_pts.0600.i74147, %if.else.i ], [ %add105.i, %if.then96.i ]
  %cmp118.i = icmp sgt i64 %62, %largest_pts.0598.i77146
  br i1 %cmp118.i, label %if.end135.i, label %if.then120.i

if.then120.i:                                     ; preds = %if.end116.i
  %63 = load i32, i32* @cli_log_level, align 4, !tbaa !2
  %cmp121.i = icmp sgt i32 %63, 2
  %cmp123.i = icmp slt i32 %pts_warning_cnt.0596.i78144, 3
  %or.cond.i = or i1 %cmp123.i, %cmp121.i
  br i1 %or.cond.i, label %if.then125.i, label %if.else127.i

if.then125.i:                                     ; preds = %if.then120.i
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.511, i32 0, i32 0), i32 %i_frame.0590.i84139, i64 %62, i64 %largest_pts.0598.i77146) #3
  br label %if.end132.i

if.else127.i:                                     ; preds = %if.then120.i
  %cmp128.i = icmp eq i32 %pts_warning_cnt.0596.i78144, 3
  br i1 %cmp128.i, label %if.then130.i, label %if.end132.i

if.then130.i:                                     ; preds = %if.else127.i
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.512, i32 0, i32 0)) #3
  br label %if.end132.i

if.end132.i:                                      ; preds = %if.then130.i, %if.else127.i, %if.then125.i
  %inc.i = add nsw i32 %pts_warning_cnt.0596.i78144, 1
  %add133.i = add nsw i64 %largest_pts.0598.i77146, %cond.i
  store i64 %add133.i, i64* %i_pts.i.i, align 8, !tbaa !54
  br label %if.end135.i

if.end135.i:                                      ; preds = %if.end132.i, %if.end116.i
  %64 = phi i64 [ %add133.i, %if.end132.i ], [ %62, %if.end116.i ]
  %pts_warning_cnt.1.i = phi i32 [ %inc.i, %if.end132.i ], [ %pts_warning_cnt.0596.i78144, %if.end116.i ]
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %tcfile_out.i, align 4, !tbaa !36
  %tobool138.i = icmp eq %struct._IO_FILE* %65, null
  br i1 %tobool138.i, label %if.end151.i, label %if.then139.i

if.then139.i:                                     ; preds = %if.end135.i
  %conv142.i = sitofp i64 %64 to double
  %66 = load i32, i32* %i_timebase_num33.i, align 8, !tbaa !26
  %conv144.i = uitofp i32 %66 to double
  %67 = load i32, i32* %i_timebase_den28.i, align 4, !tbaa !30
  %conv146.i = uitofp i32 %67 to double
  %68 = fmul fast double %conv142.i, 1.000000e+03
  %69 = fmul fast double %68, %conv144.i
  %mul149.i = fdiv fast double %69, %conv146.i
  %call150.i = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.513, i32 0, i32 0), double %mul149.i) #3
  br label %if.end151.i

if.end151.i:                                      ; preds = %if.then139.i, %if.end135.i
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %qpfile.i, align 8, !tbaa !60
  %tobool152.i = icmp eq %struct._IO_FILE* %70, null
  br i1 %tobool152.i, label %if.end156.i, label %if.then153.i

if.then153.i:                                     ; preds = %if.end151.i
  %71 = load i32, i32* %i_seek.i, align 4, !tbaa !41
  %add155.i = add nsw i32 %71, %i_frame.0590.i84139
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %38) #3
  store i32 -1, i32* %num.i.i, align 4, !tbaa !2
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %type.i.i) #3
  %cmp126.i.i = icmp sgt i32 %add155.i, -1
  br i1 %cmp126.i.i, label %while.body.i.i, label %parse_qpfile.exit.i

while.body.i.i:                                   ; preds = %if.then153.i, %cleanup.i.while.body.i_crit_edge.i
  %72 = phi %struct._IO_FILE* [ %.pre.i, %cleanup.i.while.body.i_crit_edge.i ], [ %70, %if.then153.i ]
  %call.i.i = call i32 @ftell(%struct._IO_FILE* %72) #3
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %39) #3
  store i32 -1, i32* %qp.i.i, align 4, !tbaa !2
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %qpfile.i, align 8, !tbaa !60
  %call2.i.i = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.519, i32 0, i32 0), i32* nonnull %num.i.i, i8* nonnull %type.i.i, i32* nonnull %qp.i.i) #3
  store i32 0, i32* %i_type.i.i, align 8, !tbaa !61
  store i32 0, i32* %i_qpplus1.i.i, align 4, !tbaa !62
  %74 = load i32, i32* %num.i.i, align 4, !tbaa !2
  %cmp3.i.i = icmp sgt i32 %74, %add155.i
  %cmp5.i.i = icmp eq i32 %call2.i.i, -1
  %or.cond.i.i = or i1 %cmp5.i.i, %cmp3.i.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %if.end17.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  %cmp7.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp7.i.i, label %if.then13.i.i, label %lor.lhs.false9.i.i

lor.lhs.false9.i.i:                               ; preds = %if.then.i.i
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** %qpfile.i, align 8, !tbaa !60
  %call12.i.i = call i32 @fseek(%struct._IO_FILE* %75, i32 %call.i.i, i32 0) #3
  %tobool.i.i = icmp eq i32 %call12.i.i, 0
  br i1 %tobool.i.i, label %while.end.critedge117.i.i, label %if.then13.i.i

if.then13.i.i:                                    ; preds = %lor.lhs.false9.i.i, %if.then.i.i
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.520, i32 0, i32 0)) #3
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %qpfile.i, align 8, !tbaa !60
  %call15.i.i = call i32 @fclose(%struct._IO_FILE* %76) #3
  store %struct._IO_FILE* null, %struct._IO_FILE** %qpfile.i, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %39) #3
  br label %parse_qpfile.exit.i

if.end17.i.i:                                     ; preds = %while.body.i.i
  %cmp18.i.i = icmp slt i32 %74, %add155.i
  %cmp20.i.i = icmp sgt i32 %call2.i.i, 1
  %or.cond88.i.i = and i1 %cmp20.i.i, %cmp18.i.i
  br i1 %or.cond88.i.i, label %cleanup.i.i, label %if.end23.i.i

if.end23.i.i:                                     ; preds = %if.end17.i.i
  %cmp24.i.i = icmp eq i32 %call2.i.i, 3
  %77 = load i32, i32* %qp.i.i, align 4
  %cmp27.i.i = icmp sgt i32 %77, -1
  %or.cond89.i.i = and i1 %cmp24.i.i, %cmp27.i.i
  br i1 %or.cond89.i.i, label %if.then29.i.i, label %if.end31.i.i

if.then29.i.i:                                    ; preds = %if.end23.i.i
  %add.i.i = add nuw nsw i32 %77, 1
  store i32 %add.i.i, i32* %i_qpplus1.i.i, align 4, !tbaa !62
  br label %if.end31.i.i

if.end31.i.i:                                     ; preds = %if.then29.i.i, %if.end23.i.i
  %78 = load i8, i8* %type.i.i, align 4, !tbaa !56
  switch i8 %78, label %if.then81.i.i [
    i8 73, label %if.then35.i.i
    i8 105, label %if.then40.i.i
    i8 75, label %if.then46.i.i
    i8 80, label %if.then52.i.i
    i8 66, label %if.then58.i.i
    i8 98, label %if.then64.i.i
  ]

if.then35.i.i:                                    ; preds = %if.end31.i.i
  store i32 1, i32* %i_type.i.i, align 8, !tbaa !61
  br label %if.end72.i.i

if.then40.i.i:                                    ; preds = %if.end31.i.i
  store i32 2, i32* %i_type.i.i, align 8, !tbaa !61
  br label %if.end72.i.i

if.then46.i.i:                                    ; preds = %if.end31.i.i
  store i32 6, i32* %i_type.i.i, align 8, !tbaa !61
  br label %if.end72.i.i

if.then52.i.i:                                    ; preds = %if.end31.i.i
  store i32 3, i32* %i_type.i.i, align 8, !tbaa !61
  br label %if.end72.i.i

if.then58.i.i:                                    ; preds = %if.end31.i.i
  store i32 4, i32* %i_type.i.i, align 8, !tbaa !61
  br label %if.end72.i.i

if.then64.i.i:                                    ; preds = %if.end31.i.i
  store i32 5, i32* %i_type.i.i, align 8, !tbaa !61
  br label %if.end72.i.i

if.end72.i.i:                                     ; preds = %if.then64.i.i, %if.then58.i.i, %if.then52.i.i, %if.then46.i.i, %if.then40.i.i, %if.then35.i.i
  %cmp73.i.i = icmp slt i32 %call2.i.i, 2
  %.off.i.i = add i32 %77, 1
  %79 = icmp ugt i32 %.off.i.i, 82
  %80 = or i1 %cmp73.i.i, %79
  br i1 %80, label %if.then81.i.i, label %cleanup.i.i

if.then81.i.i:                                    ; preds = %if.end72.i.i, %if.end31.i.i
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.521, i32 0, i32 0), i32 %add155.i) #3
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %qpfile.i, align 8, !tbaa !60
  %call83.i.i = call i32 @fclose(%struct._IO_FILE* %81) #3
  store %struct._IO_FILE* null, %struct._IO_FILE** %qpfile.i, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %39) #3
  br label %parse_qpfile.exit.i

cleanup.i.i:                                      ; preds = %if.end72.i.i, %if.end17.i.i
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %39) #3
  br i1 %cmp18.i.i, label %cleanup.i.while.body.i_crit_edge.i, label %parse_qpfile.exit.i

cleanup.i.while.body.i_crit_edge.i:               ; preds = %cleanup.i.i
  %.pre.i = load %struct._IO_FILE*, %struct._IO_FILE** %qpfile.i, align 8, !tbaa !60
  br label %while.body.i.i

while.end.critedge117.i.i:                        ; preds = %lor.lhs.false9.i.i
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %39) #3
  br label %parse_qpfile.exit.i

parse_qpfile.exit.i:                              ; preds = %cleanup.i.i, %while.end.critedge117.i.i, %if.then81.i.i, %if.then13.i.i, %if.then153.i
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %type.i.i) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %38) #3
  br label %if.end156.i

if.end156.i:                                      ; preds = %parse_qpfile.exit.i, %if.end151.i
  %82 = load i8*, i8** %hout.i, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %40) #3
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %41) #3
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %42) #3
  %call.i474.i = call i32 @x264_encoder_encode(%struct.x264_t* nonnull %call.i, %struct.x264_nal_t** nonnull %nal.i.i, i32* nonnull %i_nal.i.i, %struct.x264_picture_t* nonnull %pic.i, %struct.x264_picture_t* nonnull %pic_out.i.i) #3
  %cmp.i.i = icmp slt i32 %call.i474.i, 0
  br i1 %cmp.i.i, label %if.then.i475.i, label %do.end.i.i

if.then.i475.i:                                   ; preds = %if.end156.i
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.522, i32 0, i32 0)) #3
  br label %encode_frame.exit.i

do.end.i.i:                                       ; preds = %if.end156.i
  %tobool.i476.i = icmp eq i32 %call.i474.i, 0
  br i1 %tobool.i476.i, label %encode_frame.exit.i, label %if.then1.i.i

if.then1.i.i:                                     ; preds = %do.end.i.i
  %83 = load i32 (i8*, i8*, i32, %struct.x264_picture_t*)*, i32 (i8*, i8*, i32, %struct.x264_picture_t*)** getelementptr inbounds (%struct.cli_output_t, %struct.cli_output_t* @cli_output, i32 0, i32 3), align 4, !tbaa !63
  %84 = load %struct.x264_nal_t*, %struct.x264_nal_t** %nal.i.i, align 4, !tbaa !6
  %p_payload.i.i = getelementptr inbounds %struct.x264_nal_t, %struct.x264_nal_t* %84, i32 0, i32 6
  %85 = load i8*, i8** %p_payload.i.i, align 4, !tbaa !64
  %call2.i477.i = call i32 %83(i8* %82, i8* %85, i32 %call.i474.i, %struct.x264_picture_t* nonnull %pic_out.i.i) #3
  %86 = load i64, i64* %i_dts.i.i, align 8, !tbaa !66
  br label %encode_frame.exit.i

encode_frame.exit.i:                              ; preds = %if.then1.i.i, %do.end.i.i, %if.then.i475.i
  %last_dts.1.i = phi i64 [ %last_dts.0588.i85138, %if.then.i475.i ], [ %last_dts.0588.i85138, %do.end.i.i ], [ %86, %if.then1.i.i ]
  %retval.0.i.i = phi i32 [ -1, %if.then.i475.i ], [ 0, %do.end.i.i ], [ %call2.i477.i, %if.then1.i.i ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %42) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %41) #3
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %40) #3
  %cmp159.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp159.i, label %if.then161.i, label %if.else162.i

if.then161.i:                                     ; preds = %encode_frame.exit.i
  store volatile i32 1, i32* @b_ctrl_c, align 4, !tbaa !2
  br label %if.end173.i

if.else162.i:                                     ; preds = %encode_frame.exit.i
  %tobool163.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool163.i, label %if.end173.i, label %if.then164.i

if.then164.i:                                     ; preds = %if.else162.i
  %conv165564.i = zext i32 %retval.0.i.i to i64
  %add166.i = add nsw i64 %i_file.2593.i81142, %conv165564.i
  %inc167.i = add i32 %i_frame_output.0591.i83140, 1
  %cmp168.i = icmp eq i32 %i_frame_output.0591.i83140, 0
  %spec.select469.i = select i1 %cmp168.i, i64 %last_dts.1.i, i64 %last_dts.0588.i85138
  %spec.select470.i = select i1 %cmp168.i, i64 %last_dts.1.i, i64 %first_dts.0595.i79143
  br label %if.end173.i

if.end173.i:                                      ; preds = %if.then164.i, %if.else162.i, %if.then161.i
  %i_frame_output.1.i = phi i32 [ %i_frame_output.0591.i83140, %if.then161.i ], [ %i_frame_output.0591.i83140, %if.else162.i ], [ %inc167.i, %if.then164.i ]
  %i_file.3.i = phi i64 [ %i_file.2593.i81142, %if.then161.i ], [ %i_file.2593.i81142, %if.else162.i ], [ %add166.i, %if.then164.i ]
  %prev_dts.1.i = phi i64 [ %last_dts.0588.i85138, %if.then161.i ], [ %last_dts.0588.i85138, %if.else162.i ], [ %spec.select469.i, %if.then164.i ]
  %first_dts.1.i = phi i64 [ %first_dts.0595.i79143, %if.then161.i ], [ %first_dts.0595.i79143, %if.else162.i ], [ %spec.select470.i, %if.then164.i ]
  %retval1.3.i = phi i32 [ -1, %if.then161.i ], [ %retval1.2601.i73149, %if.else162.i ], [ %retval1.2601.i73149, %if.then164.i ]
  %87 = load i32 (i8*, %struct.cli_pic_t*, i32)*, i32 (i8*, %struct.cli_pic_t*, i32)** getelementptr inbounds (%struct.cli_vid_filter_t, %struct.cli_vid_filter_t* @filter, i32 0, i32 4), align 4, !tbaa !67
  %88 = load i8*, i8** %hin.i, align 8, !tbaa !40
  %89 = load i32, i32* %i_seek.i, align 4, !tbaa !41
  %add176.i = add nsw i32 %89, %i_frame.0590.i84139
  %call177.i = call i32 %87(i8* %88, %struct.cli_pic_t* nonnull %cli_pic.i, i32 %add176.i) #3
  %tobool178.i = icmp eq i32 %call177.i, 0
  br i1 %tobool178.i, label %if.end180.i, label %for.end.i

if.end180.i:                                      ; preds = %if.end173.i
  %90 = load i32, i32* %b_progress.i, align 8, !tbaa !18
  %tobool182.i = icmp ne i32 %90, 0
  %tobool184.i = icmp ne i32 %i_frame_output.1.i, 0
  %or.cond320.i = and i1 %tobool184.i, %tobool182.i
  br i1 %or.cond320.i, label %if.then185.i, label %for.inc.i

if.then185.i:                                     ; preds = %if.end180.i
  %91 = load i32, i32* %i_frame_total.i, align 8, !tbaa !37
  %mul187.i = shl nsw i64 %last_dts.1.i, 1
  %sub.i = sub i64 %mul187.i, %prev_dts.1.i
  %sub188.i = sub i64 %sub.i, %first_dts.1.i
  %call189.i = call fastcc i64 @print_status(i64 %call27.i, i64 %i_previous.0592.i82141, i32 %i_frame_output.1.i, i32 %91, i64 %i_file.3.i, %struct.x264_param_t* nonnull %param, i64 %sub188.i) #3
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then185.i, %if.end180.i
  %i_previous.1.i = phi i64 [ %call189.i, %if.then185.i ], [ %i_previous.0592.i82141, %if.end180.i ]
  %inc191.i = add nuw nsw i32 %i_frame.0590.i84139, 1
  %92 = load volatile i32, i32* @b_ctrl_c, align 4, !tbaa !2
  %tobool77.i = icmp eq i32 %92, 0
  br i1 %tobool77.i, label %land.rhs.i, label %for.end.i

for.end.i:                                        ; preds = %for.inc.i, %if.end173.i, %for.body.i, %land.rhs.i, %for.body.i.preheader, %land.rhs.lr.ph.i, %if.end76.i
  %i_frame.0.lcssa.i = phi i32 [ 0, %if.end76.i ], [ 0, %land.rhs.lr.ph.i ], [ 0, %for.body.i.preheader ], [ %inc191.i, %land.rhs.i ], [ %inc191.i, %for.body.i ], [ %i_frame.0590.i84139, %if.end173.i ], [ %inc191.i, %for.inc.i ]
  %i_previous.0.lcssa.i = phi i64 [ 0, %if.end76.i ], [ 0, %land.rhs.lr.ph.i ], [ 0, %for.body.i.preheader ], [ %i_previous.1.i, %land.rhs.i ], [ %i_previous.1.i, %for.body.i ], [ %i_previous.0592.i82141, %if.end173.i ], [ %i_previous.1.i, %for.inc.i ]
  %last_dts.2.i = phi i64 [ 0, %if.end76.i ], [ 0, %land.rhs.lr.ph.i ], [ 0, %for.body.i.preheader ], [ %last_dts.1.i, %land.rhs.i ], [ %last_dts.1.i, %for.body.i ], [ %last_dts.1.i, %if.end173.i ], [ %last_dts.1.i, %for.inc.i ]
  %i_frame_output.2.i = phi i32 [ 0, %if.end76.i ], [ 0, %land.rhs.lr.ph.i ], [ 0, %for.body.i.preheader ], [ %i_frame_output.1.i, %land.rhs.i ], [ %i_frame_output.1.i, %for.body.i ], [ %i_frame_output.1.i, %if.end173.i ], [ %i_frame_output.1.i, %for.inc.i ]
  %i_file.4.i = phi i64 [ %i_file.1.i, %if.end76.i ], [ %i_file.1.i, %land.rhs.lr.ph.i ], [ %i_file.1.i, %for.body.i.preheader ], [ %i_file.3.i, %land.rhs.i ], [ %i_file.3.i, %for.body.i ], [ %i_file.3.i, %if.end173.i ], [ %i_file.3.i, %for.inc.i ]
  %prev_dts.2.i = phi i64 [ 0, %if.end76.i ], [ 0, %land.rhs.lr.ph.i ], [ 0, %for.body.i.preheader ], [ %prev_dts.1.i, %land.rhs.i ], [ %prev_dts.1.i, %for.body.i ], [ %prev_dts.1.i, %if.end173.i ], [ %prev_dts.1.i, %for.inc.i ]
  %first_dts.2.i = phi i64 [ 0, %if.end76.i ], [ 0, %land.rhs.lr.ph.i ], [ 0, %for.body.i.preheader ], [ %first_dts.1.i, %land.rhs.i ], [ %first_dts.1.i, %for.body.i ], [ %first_dts.1.i, %if.end173.i ], [ %first_dts.1.i, %for.inc.i ]
  %pts_warning_cnt.2.i = phi i32 [ 0, %if.end76.i ], [ 0, %land.rhs.lr.ph.i ], [ 0, %for.body.i.preheader ], [ %pts_warning_cnt.1.i, %land.rhs.i ], [ %pts_warning_cnt.1.i, %for.body.i ], [ %pts_warning_cnt.1.i, %if.end173.i ], [ %pts_warning_cnt.1.i, %for.inc.i ]
  %largest_pts.1.i = phi i64 [ -1, %if.end76.i ], [ -1, %land.rhs.lr.ph.i ], [ -1, %for.body.i.preheader ], [ %64, %land.rhs.i ], [ %64, %for.body.i ], [ %64, %if.end173.i ], [ %64, %for.inc.i ]
  %second_largest_pts.1.i = phi i64 [ -1, %if.end76.i ], [ -1, %land.rhs.lr.ph.i ], [ -1, %for.body.i.preheader ], [ %largest_pts.0598.i77146, %land.rhs.i ], [ %largest_pts.0598.i77146, %for.body.i ], [ %largest_pts.0598.i77146, %if.end173.i ], [ %largest_pts.0598.i77146, %for.inc.i ]
  %retval1.4.i = phi i32 [ 0, %if.end76.i ], [ 0, %land.rhs.lr.ph.i ], [ 0, %for.body.i.preheader ], [ %retval1.3.i, %land.rhs.i ], [ %retval1.3.i, %for.body.i ], [ %retval1.3.i, %if.end173.i ], [ %retval1.3.i, %for.inc.i ]
  %93 = load volatile i32, i32* @b_ctrl_c, align 4, !tbaa !2
  %tobool192567.i = icmp eq i32 %93, 0
  br i1 %tobool192567.i, label %land.rhs193.lr.ph.i, label %fail.i

land.rhs193.lr.ph.i:                              ; preds = %for.end.i
  %94 = bitcast %struct.x264_picture_t* %pic_out.i479.i to i8*
  %95 = bitcast %struct.x264_nal_t** %nal.i480.i to i8*
  %96 = bitcast i32* %i_nal.i481.i to i8*
  %i_dts.i489.i = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %pic_out.i479.i, i32 0, i32 5
  %i_frame_total219.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 12
  %call194.i51 = call i32 @x264_encoder_delayed_frames(%struct.x264_t* nonnull %call.i) #3
  %tobool195.i52 = icmp eq i32 %call194.i51, 0
  br i1 %tobool195.i52, label %fail.i, label %while.body.i

land.rhs193.i:                                    ; preds = %if.end224.i
  %call194.i = call i32 @x264_encoder_delayed_frames(%struct.x264_t* nonnull %call.i) #3
  %tobool195.i = icmp eq i32 %call194.i, 0
  br i1 %tobool195.i, label %fail.i, label %while.body.i

while.body.i:                                     ; preds = %land.rhs193.lr.ph.i, %land.rhs193.i
  %last_dts.3568.i58 = phi i64 [ %last_dts.4.i, %land.rhs193.i ], [ %last_dts.2.i, %land.rhs193.lr.ph.i ]
  %i_frame_output.3570.i57 = phi i32 [ %i_frame_output.4.i, %land.rhs193.i ], [ %i_frame_output.2.i, %land.rhs193.lr.ph.i ]
  %i_previous.2571.i56 = phi i64 [ %i_previous.3.i, %land.rhs193.i ], [ %i_previous.0.lcssa.i, %land.rhs193.lr.ph.i ]
  %i_file.5572.i55 = phi i64 [ %i_file.6.i, %land.rhs193.i ], [ %i_file.4.i, %land.rhs193.lr.ph.i ]
  %first_dts.3574.i54 = phi i64 [ %first_dts.4.i, %land.rhs193.i ], [ %first_dts.2.i, %land.rhs193.lr.ph.i ]
  %retval1.5575.i53 = phi i32 [ %retval1.6.i, %land.rhs193.i ], [ %retval1.4.i, %land.rhs193.lr.ph.i ]
  %97 = load i8*, i8** %hout.i, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %94) #3
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %95) #3
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %96) #3
  %call.i482.i = call i32 @x264_encoder_encode(%struct.x264_t* nonnull %call.i, %struct.x264_nal_t** nonnull %nal.i480.i, i32* nonnull %i_nal.i481.i, %struct.x264_picture_t* null, %struct.x264_picture_t* nonnull %pic_out.i479.i) #3
  %cmp.i483.i = icmp slt i32 %call.i482.i, 0
  br i1 %cmp.i483.i, label %if.then.i484.i, label %do.end.i486.i

if.then.i484.i:                                   ; preds = %while.body.i
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.522, i32 0, i32 0)) #3
  br label %encode_frame.exit493.i

do.end.i486.i:                                    ; preds = %while.body.i
  %tobool.i485.i = icmp eq i32 %call.i482.i, 0
  br i1 %tobool.i485.i, label %encode_frame.exit493.i, label %if.then1.i490.i

if.then1.i490.i:                                  ; preds = %do.end.i486.i
  %98 = load i32 (i8*, i8*, i32, %struct.x264_picture_t*)*, i32 (i8*, i8*, i32, %struct.x264_picture_t*)** getelementptr inbounds (%struct.cli_output_t, %struct.cli_output_t* @cli_output, i32 0, i32 3), align 4, !tbaa !63
  %99 = load %struct.x264_nal_t*, %struct.x264_nal_t** %nal.i480.i, align 4, !tbaa !6
  %p_payload.i487.i = getelementptr inbounds %struct.x264_nal_t, %struct.x264_nal_t* %99, i32 0, i32 6
  %100 = load i8*, i8** %p_payload.i487.i, align 4, !tbaa !64
  %call2.i488.i = call i32 %98(i8* %97, i8* %100, i32 %call.i482.i, %struct.x264_picture_t* nonnull %pic_out.i479.i) #3
  %101 = load i64, i64* %i_dts.i489.i, align 8, !tbaa !66
  br label %encode_frame.exit493.i

encode_frame.exit493.i:                           ; preds = %if.then1.i490.i, %do.end.i486.i, %if.then.i484.i
  %last_dts.4.i = phi i64 [ %last_dts.3568.i58, %if.then.i484.i ], [ %last_dts.3568.i58, %do.end.i486.i ], [ %101, %if.then1.i490.i ]
  %retval.0.i491.i = phi i32 [ -1, %if.then.i484.i ], [ 0, %do.end.i486.i ], [ %call2.i488.i, %if.then1.i490.i ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %96) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %95) #3
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %94) #3
  %cmp199.i = icmp slt i32 %retval.0.i491.i, 0
  br i1 %cmp199.i, label %if.then201.i, label %if.else202.i

if.then201.i:                                     ; preds = %encode_frame.exit493.i
  store volatile i32 1, i32* @b_ctrl_c, align 4, !tbaa !2
  br label %if.end213.i

if.else202.i:                                     ; preds = %encode_frame.exit493.i
  %tobool203.i = icmp eq i32 %retval.0.i491.i, 0
  br i1 %tobool203.i, label %if.end213.i, label %if.then204.i

if.then204.i:                                     ; preds = %if.else202.i
  %conv205563.i = zext i32 %retval.0.i491.i to i64
  %add206.i = add nsw i64 %i_file.5572.i55, %conv205563.i
  %inc207.i = add i32 %i_frame_output.3570.i57, 1
  %cmp208.i = icmp eq i32 %i_frame_output.3570.i57, 0
  %spec.select472.i = select i1 %cmp208.i, i64 %last_dts.4.i, i64 %last_dts.3568.i58
  %spec.select473.i = select i1 %cmp208.i, i64 %last_dts.4.i, i64 %first_dts.3574.i54
  br label %if.end213.i

if.end213.i:                                      ; preds = %if.then204.i, %if.else202.i, %if.then201.i
  %i_frame_output.4.i = phi i32 [ %i_frame_output.3570.i57, %if.then201.i ], [ %i_frame_output.3570.i57, %if.else202.i ], [ %inc207.i, %if.then204.i ]
  %i_file.6.i = phi i64 [ %i_file.5572.i55, %if.then201.i ], [ %i_file.5572.i55, %if.else202.i ], [ %add206.i, %if.then204.i ]
  %prev_dts.4.i = phi i64 [ %last_dts.3568.i58, %if.then201.i ], [ %last_dts.3568.i58, %if.else202.i ], [ %spec.select472.i, %if.then204.i ]
  %first_dts.4.i = phi i64 [ %first_dts.3574.i54, %if.then201.i ], [ %first_dts.3574.i54, %if.else202.i ], [ %spec.select473.i, %if.then204.i ]
  %retval1.6.i = phi i32 [ -1, %if.then201.i ], [ %retval1.5575.i53, %if.else202.i ], [ %retval1.5575.i53, %if.then204.i ]
  %102 = load i32, i32* %b_progress.i, align 8, !tbaa !18
  %tobool215.i = icmp ne i32 %102, 0
  %tobool217.i = icmp ne i32 %i_frame_output.4.i, 0
  %or.cond321.i = and i1 %tobool217.i, %tobool215.i
  br i1 %or.cond321.i, label %if.then218.i, label %if.end224.i

if.then218.i:                                     ; preds = %if.end213.i
  %103 = load i32, i32* %i_frame_total219.i, align 8, !tbaa !37
  %mul220.i = shl nsw i64 %last_dts.4.i, 1
  %sub221.i = sub i64 %mul220.i, %prev_dts.4.i
  %sub222.i = sub i64 %sub221.i, %first_dts.4.i
  %call223.i = call fastcc i64 @print_status(i64 %call27.i, i64 %i_previous.2571.i56, i32 %i_frame_output.4.i, i32 %103, i64 %i_file.6.i, %struct.x264_param_t* nonnull %param, i64 %sub222.i) #3
  br label %if.end224.i

if.end224.i:                                      ; preds = %if.then218.i, %if.end213.i
  %i_previous.3.i = phi i64 [ %call223.i, %if.then218.i ], [ %i_previous.2571.i56, %if.end213.i ]
  %104 = load volatile i32, i32* @b_ctrl_c, align 4, !tbaa !2
  %tobool192.i = icmp eq i32 %104, 0
  br i1 %tobool192.i, label %land.rhs193.i, label %fail.i

fail.i:                                           ; preds = %land.rhs193.i, %if.end224.i, %land.rhs193.lr.ph.i, %for.end.i
  %last_dts.3.lcssa.i = phi i64 [ %last_dts.2.i, %for.end.i ], [ %last_dts.2.i, %land.rhs193.lr.ph.i ], [ %last_dts.4.i, %if.end224.i ], [ %last_dts.4.i, %land.rhs193.i ]
  %i_frame_output.3.lcssa.i = phi i32 [ %i_frame_output.2.i, %for.end.i ], [ %i_frame_output.2.i, %land.rhs193.lr.ph.i ], [ %i_frame_output.4.i, %if.end224.i ], [ %i_frame_output.4.i, %land.rhs193.i ]
  %i_file.5.lcssa.i = phi i64 [ %i_file.4.i, %for.end.i ], [ %i_file.4.i, %land.rhs193.lr.ph.i ], [ %i_file.6.i, %if.end224.i ], [ %i_file.6.i, %land.rhs193.i ]
  %prev_dts.3.lcssa.i = phi i64 [ %prev_dts.2.i, %for.end.i ], [ %prev_dts.2.i, %land.rhs193.lr.ph.i ], [ %prev_dts.4.i, %if.end224.i ], [ %prev_dts.4.i, %land.rhs193.i ]
  %first_dts.3.lcssa.i = phi i64 [ %first_dts.2.i, %for.end.i ], [ %first_dts.2.i, %land.rhs193.lr.ph.i ], [ %first_dts.4.i, %if.end224.i ], [ %first_dts.4.i, %land.rhs193.i ]
  %retval1.5.lcssa.i = phi i32 [ %retval1.4.i, %for.end.i ], [ %retval1.4.i, %land.rhs193.lr.ph.i ], [ %retval1.6.i, %if.end224.i ], [ %retval1.6.i, %land.rhs193.i ]
  %cmp225.i = icmp sgt i32 %pts_warning_cnt.2.i, 2
  %105 = load i32, i32* @cli_log_level, align 4
  %cmp228.i = icmp slt i32 %105, 3
  %or.cond322.i = and i1 %cmp225.i, %cmp228.i
  br i1 %or.cond322.i, label %if.then230.i, label %if.end232.i

if.then230.i:                                     ; preds = %fail.i
  %sub231.i = add nsw i32 %pts_warning_cnt.2.i, -3
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.514, i32 0, i32 0), i32 %sub231.i) #3
  br label %if.end232.i

if.end232.i:                                      ; preds = %if.then230.i, %fail.i
  %cmp233.i = icmp eq i32 %i_frame_output.3.lcssa.i, 1
  br i1 %cmp233.i, label %if.then235.i, label %if.else241.i

if.then235.i:                                     ; preds = %if.end232.i
  %106 = load i32, i32* %i_fps_den30.i, align 4, !tbaa !25
  %conv237.i = uitofp i32 %106 to double
  %107 = load i32, i32* %i_fps_num35.i, align 8, !tbaa !27
  br label %if.end265.i

if.else241.i:                                     ; preds = %if.end232.i, %cleanup.thread.i, %if.then44.i, %if.then23.i, %if.then16.i, %if.then7.i
  %last_dts.5520562.i = phi i64 [ %last_dts.3.lcssa.i, %if.end232.i ], [ 0, %cleanup.thread.i ], [ 0, %if.then7.i ], [ 0, %if.then16.i ], [ 0, %if.then44.i ], [ 0, %if.then23.i ]
  %i_frame.1521561.i = phi i32 [ %i_frame.0.lcssa.i, %if.end232.i ], [ 0, %cleanup.thread.i ], [ 0, %if.then7.i ], [ 0, %if.then16.i ], [ 0, %if.then44.i ], [ 0, %if.then23.i ]
  %i_frame_output.5522559.i = phi i32 [ %i_frame_output.3.lcssa.i, %if.end232.i ], [ 0, %cleanup.thread.i ], [ 0, %if.then7.i ], [ 0, %if.then16.i ], [ 0, %if.then44.i ], [ 0, %if.then23.i ]
  %h.0524557.i = phi %struct.x264_t* [ %call.i, %if.end232.i ], [ %call.i, %cleanup.thread.i ], [ null, %if.then7.i ], [ null, %if.then16.i ], [ %call.i, %if.then44.i ], [ %call.i, %if.then23.i ]
  %i_start.0525555.i = phi i64 [ %call27.i, %if.end232.i ], [ %call27.i, %cleanup.thread.i ], [ 0, %if.then7.i ], [ 0, %if.then16.i ], [ %call27.i, %if.then44.i ], [ 0, %if.then23.i ]
  %i_file.7526553.i = phi i64 [ %i_file.5.lcssa.i, %if.end232.i ], [ %i_file.0.ph.i, %cleanup.thread.i ], [ 0, %if.then7.i ], [ 0, %if.then16.i ], [ 0, %if.then44.i ], [ 0, %if.then23.i ]
  %prev_dts.5527551.i = phi i64 [ %prev_dts.3.lcssa.i, %if.end232.i ], [ 0, %cleanup.thread.i ], [ 0, %if.then7.i ], [ 0, %if.then16.i ], [ 0, %if.then44.i ], [ 0, %if.then23.i ]
  %first_dts.5528550.i = phi i64 [ %first_dts.3.lcssa.i, %if.end232.i ], [ 0, %cleanup.thread.i ], [ 0, %if.then7.i ], [ 0, %if.then16.i ], [ 0, %if.then44.i ], [ 0, %if.then23.i ]
  %largest_pts.2529549.i = phi i64 [ %largest_pts.1.i, %if.end232.i ], [ -1, %cleanup.thread.i ], [ -1, %if.then7.i ], [ -1, %if.then16.i ], [ -1, %if.then44.i ], [ -1, %if.then23.i ]
  %second_largest_pts.2530547.i = phi i64 [ %second_largest_pts.1.i, %if.end232.i ], [ -1, %cleanup.thread.i ], [ -1, %if.then7.i ], [ -1, %if.then16.i ], [ -1, %if.then44.i ], [ -1, %if.then23.i ]
  %retval1.7531545.i = phi i32 [ %retval1.5.lcssa.i, %if.end232.i ], [ -1, %cleanup.thread.i ], [ -1, %if.then7.i ], [ -1, %if.then16.i ], [ -1, %if.then44.i ], [ -1, %if.then23.i ]
  %108 = load volatile i32, i32* @b_ctrl_c, align 4, !tbaa !2
  %tobool242.i = icmp eq i32 %108, 0
  br i1 %tobool242.i, label %if.else254.i, label %if.then243.i

if.then243.i:                                     ; preds = %if.else241.i
  %mul244.i = shl nsw i64 %last_dts.5520562.i, 1
  %sub245.i = sub i64 %mul244.i, %prev_dts.5527551.i
  %sub246.i = sub i64 %sub245.i, %first_dts.5528550.i
  %conv247.i = sitofp i64 %sub246.i to double
  %i_timebase_num248.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 66
  %109 = load i32, i32* %i_timebase_num248.i, align 8, !tbaa !26
  %conv249.i = uitofp i32 %109 to double
  %mul250.i = fmul fast double %conv249.i, %conv247.i
  %i_timebase_den251.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 67
  %110 = load i32, i32* %i_timebase_den251.i, align 4, !tbaa !30
  br label %if.end265.i

if.else254.i:                                     ; preds = %if.else241.i
  %mul255.i = shl nsw i64 %largest_pts.2529549.i, 1
  %sub256.i = sub nsw i64 %mul255.i, %second_largest_pts.2530547.i
  %conv257.i = sitofp i64 %sub256.i to double
  %i_timebase_num258.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 66
  %111 = load i32, i32* %i_timebase_num258.i, align 8, !tbaa !26
  %conv259.i = uitofp i32 %111 to double
  %mul260.i = fmul fast double %conv259.i, %conv257.i
  %i_timebase_den261.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 67
  %112 = load i32, i32* %i_timebase_den261.i, align 4, !tbaa !30
  br label %if.end265.i

if.end265.i:                                      ; preds = %if.else254.i, %if.then243.i, %if.then235.i
  %.sink193 = phi i32 [ %112, %if.else254.i ], [ %110, %if.then243.i ], [ %107, %if.then235.i ]
  %mul260.i.sink = phi double [ %mul260.i, %if.else254.i ], [ %mul250.i, %if.then243.i ], [ %conv237.i, %if.then235.i ]
  %i_frame.1521560.i = phi i32 [ %i_frame.1521561.i, %if.else254.i ], [ %i_frame.1521561.i, %if.then243.i ], [ %i_frame.0.lcssa.i, %if.then235.i ]
  %i_frame_output.5522558.i = phi i32 [ %i_frame_output.5522559.i, %if.else254.i ], [ %i_frame_output.5522559.i, %if.then243.i ], [ 1, %if.then235.i ]
  %h.0524556.i = phi %struct.x264_t* [ %h.0524557.i, %if.else254.i ], [ %h.0524557.i, %if.then243.i ], [ %call.i, %if.then235.i ]
  %i_start.0525554.i = phi i64 [ %i_start.0525555.i, %if.else254.i ], [ %i_start.0525555.i, %if.then243.i ], [ %call27.i, %if.then235.i ]
  %i_file.7526552.i = phi i64 [ %i_file.7526553.i, %if.else254.i ], [ %i_file.7526553.i, %if.then243.i ], [ %i_file.5.lcssa.i, %if.then235.i ]
  %largest_pts.2529548.i = phi i64 [ %largest_pts.2529549.i, %if.else254.i ], [ %largest_pts.2529549.i, %if.then243.i ], [ %largest_pts.1.i, %if.then235.i ]
  %second_largest_pts.2530546.i = phi i64 [ %second_largest_pts.2530547.i, %if.else254.i ], [ %second_largest_pts.2530547.i, %if.then243.i ], [ %second_largest_pts.1.i, %if.then235.i ]
  %retval1.7531544.i = phi i32 [ %retval1.7531545.i, %if.else254.i ], [ %retval1.7531545.i, %if.then243.i ], [ %retval1.5.lcssa.i, %if.then235.i ]
  %conv262.i = uitofp i32 %.sink193 to double
  %call266.i = call i64 @x264_mdate() #3
  %113 = load i32, i32* %b_progress.i, align 8, !tbaa !18
  %tobool268.i = icmp eq i32 %113, 0
  br i1 %tobool268.i, label %if.end271.i, label %if.then269.i

if.then269.i:                                     ; preds = %if.end265.i
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4, !tbaa !6
  %115 = call i32 @fwrite(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.515, i32 0, i32 0), i32 80, i32 1, %struct._IO_FILE* %114) #15
  br label %if.end271.i

if.end271.i:                                      ; preds = %if.then269.i, %if.end265.i
  %tobool272.i = icmp eq %struct.x264_t* %h.0524556.i, null
  br i1 %tobool272.i, label %if.end274.i, label %if.then273.i

if.then273.i:                                     ; preds = %if.end271.i
  call void @x264_encoder_close(%struct.x264_t* nonnull %h.0524556.i) #3
  br label %if.end274.i

if.end274.i:                                      ; preds = %if.then273.i, %if.end271.i
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4, !tbaa !6
  %fputc.i = call i32 @fputc(i32 10, %struct._IO_FILE* %116) #15
  %117 = load volatile i32, i32* @b_ctrl_c, align 4, !tbaa !2
  %tobool276.i = icmp eq i32 %117, 0
  br i1 %tobool276.i, label %if.end281.i, label %if.then277.i

if.then277.i:                                     ; preds = %if.end274.i
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4, !tbaa !6
  %i_seek278.i = getelementptr inbounds %struct.cli_opt_t, %struct.cli_opt_t* %opt, i32 0, i32 1
  %119 = load i32, i32* %i_seek278.i, align 4, !tbaa !41
  %add279.i = add nsw i32 %119, %i_frame.1521560.i
  %call280.i = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %118, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.516, i32 0, i32 0), i32 %add279.i, i32 %i_frame_output.5522558.i) #15
  br label %if.end281.i

if.end281.i:                                      ; preds = %if.then277.i, %if.end274.i
  %120 = load i32 (i8*, i64, i64)*, i32 (i8*, i64, i64)** getelementptr inbounds (%struct.cli_output_t, %struct.cli_output_t* @cli_output, i32 0, i32 4), align 4, !tbaa !68
  %hout282.i = getelementptr inbounds %struct.cli_opt_t, %struct.cli_opt_t* %opt, i32 0, i32 3
  %121 = load i8*, i8** %hout282.i, align 4, !tbaa !33
  %call283.i = call i32 %120(i8* %121, i64 %largest_pts.2529548.i, i64 %second_largest_pts.2530546.i) #3
  store i8* null, i8** %hout282.i, align 4, !tbaa !33
  %cmp285.i = icmp sgt i32 %i_frame_output.5522558.i, 0
  br i1 %cmp285.i, label %if.then287.i, label %encode.exit

if.then287.i:                                     ; preds = %if.end281.i
  %conv288.i = sitofp i32 %i_frame_output.5522558.i to double
  %mul289.i = fmul fast double %conv288.i, 1.000000e+06
  %sub290.i = sub nsw i64 %call266.i, %i_start.0525554.i
  %conv291.i = sitofp i64 %sub290.i to double
  %div292.i = fdiv fast double %mul289.i, %conv291.i
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4, !tbaa !6
  %conv293.i = sitofp i64 %i_file.7526552.i to double
  %mul294.i = fmul fast double %conv293.i, 8.000000e+00
  %123 = fmul fast double %mul260.i.sink, 1.000000e+03
  %124 = fmul fast double %mul294.i, %conv262.i
  %div296.i = fdiv fast double %124, %123
  %call297.i = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %122, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.517, i32 0, i32 0), i32 %i_frame_output.5522558.i, double %div292.i, double %div296.i) #15
  br label %encode.exit

encode.exit:                                      ; preds = %if.end281.i, %if.then287.i
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %10) #3
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %9) #3
  br label %if.end12

if.end12:                                         ; preds = %if.end, %encode.exit
  %ret.1 = phi i32 [ -1, %if.end ], [ %retval1.7531544.i, %encode.exit ]
  %125 = load void (i8*)*, void (i8*)** getelementptr inbounds (%struct.cli_vid_filter_t, %struct.cli_vid_filter_t* @filter, i32 0, i32 5), align 4, !tbaa !69
  %tobool13 = icmp eq void (i8*)* %125, null
  %hin15 = getelementptr inbounds %struct.cli_opt_t, %struct.cli_opt_t* %opt, i32 0, i32 2
  %126 = load i8*, i8** %hin15, align 8, !tbaa !40
  br i1 %tobool13, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end12
  call void %125(i8* %126) #3
  br label %if.end21

if.else:                                          ; preds = %if.end12
  %tobool16 = icmp eq i8* %126, null
  br i1 %tobool16, label %if.end21, label %if.then17

if.then17:                                        ; preds = %if.else
  %127 = load i32 (i8*)*, i32 (i8*)** getelementptr inbounds (%struct.cli_input_t, %struct.cli_input_t* @cli_input, i32 0, i32 5), align 4, !tbaa !70
  %call19 = call i32 %127(i8* nonnull %126) #3
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then17, %if.then14
  %hout = getelementptr inbounds %struct.cli_opt_t, %struct.cli_opt_t* %opt, i32 0, i32 3
  %128 = load i8*, i8** %hout, align 4, !tbaa !33
  %tobool22 = icmp eq i8* %128, null
  br i1 %tobool22, label %if.end26, label %if.then23

if.then23:                                        ; preds = %if.end21
  %129 = load i32 (i8*, i64, i64)*, i32 (i8*, i64, i64)** getelementptr inbounds (%struct.cli_output_t, %struct.cli_output_t* @cli_output, i32 0, i32 4), align 4, !tbaa !68
  %call25 = call i32 %129(i8* nonnull %128, i64 0, i64 0) #3
  br label %if.end26

if.end26:                                         ; preds = %if.end21, %if.then23
  %tcfile_out = getelementptr inbounds %struct.cli_opt_t, %struct.cli_opt_t* %opt, i32 0, i32 5
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** %tcfile_out, align 4, !tbaa !36
  %tobool27 = icmp eq %struct._IO_FILE* %130, null
  br i1 %tobool27, label %if.end31, label %if.then28

if.then28:                                        ; preds = %if.end26
  %call30 = call i32 @fclose(%struct._IO_FILE* nonnull %130)
  br label %if.end31

if.end31:                                         ; preds = %if.end26, %if.then28
  %qpfile = getelementptr inbounds %struct.cli_opt_t, %struct.cli_opt_t* %opt, i32 0, i32 4
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** %qpfile, align 8, !tbaa !60
  %tobool32 = icmp eq %struct._IO_FILE* %131, null
  br i1 %tobool32, label %if.end36, label %if.then33

if.then33:                                        ; preds = %if.end31
  %call35 = call i32 @fclose(%struct._IO_FILE* nonnull %131)
  br label %if.end36

if.end36:                                         ; preds = %if.end31, %if.then33
  call void @x264_param_cleanup(%struct.x264_param_t* nonnull %param) #3
  call void @llvm.lifetime.end.p0i8(i64 40, i8* %8) #3
  call void @llvm.lifetime.end.p0i8(i64 944, i8* %7) #3
  br label %return

return:                                           ; preds = %if.end36, %if.then
  %retval.0 = phi i32 [ %ret.1, %if.end36 ], [ %call3, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind readonly
declare dso_local i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #5

declare dso_local i32 @x264_cli_autocomplete(i8*, i8*) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #1

declare dso_local void @x264_param_default(%struct.x264_param_t*) local_unnamed_addr #6

; Function Attrs: nounwind
define internal fastcc i32 @parse(i32 %argc, i8** %argv, %struct.x264_param_t* %param, %struct.cli_opt_t* %opt) unnamed_addr #0 {
entry:
  %args.i = alloca [20 x i8], align 1
  %name.i = alloca [20 x i8], align 1
  %file_stat.i84.i = alloca %struct.stat, align 8
  %file_stat.i.i = alloca %struct.stat, align 8
  %file_stat.i = alloca %struct.stat, align 8
  %defaults = alloca %struct.x264_param_t, align 8
  %input_opt = alloca %struct.cli_input_opt_t, align 4
  %output_opt = alloca %struct.cli_output_opt_t, align 4
  %long_options_index = alloca i32, align 4
  %info = alloca %struct.video_info_t, align 4
  %demuxername = alloca [5 x i8], align 1
  %i_user_timebase_num = alloca i64, align 8
  %i_user_timebase_den = alloca i64, align 8
  %0 = bitcast %struct.x264_param_t* %defaults to i8*
  call void @llvm.lifetime.start.p0i8(i64 944, i8* nonnull %0) #3
  %1 = bitcast %struct.cli_input_opt_t* %input_opt to i8*
  call void @llvm.lifetime.start.p0i8(i64 44, i8* nonnull %1) #3
  %2 = bitcast %struct.cli_output_opt_t* %output_opt to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #3
  store i32 0, i32* @optind, align 4, !tbaa !2
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %if.end3.thread, %entry
  %preset.0.ph = phi i8* [ %3, %if.end3.thread ], [ null, %entry ]
  %tune.0.ph = phi i8* [ %tune.0.ph1713, %if.end3.thread ], [ null, %entry ]
  br label %for.cond.outer1712

for.cond.outer1712:                               ; preds = %for.cond.outer, %if.then5
  %tune.0.ph1713 = phi i8* [ %tune.0.ph, %for.cond.outer ], [ %4, %if.then5 ]
  br label %for.cond

for.cond:                                         ; preds = %for.cond.outer1712, %for.cond
  %call = tail call i32 @getopt_long(i32 %argc, i8** %argv, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @short_options, i32 0, i32 0), %struct.option* getelementptr inbounds ([169 x %struct.option], [169 x %struct.option]* @long_options, i32 0, i32 0), i32* null) #3
  switch i32 %call, label %for.cond [
    i32 -1, label %for.end
    i32 264, label %if.end3.thread
    i32 265, label %if.then5
    i32 63, label %cleanup542
  ]

if.end3.thread:                                   ; preds = %for.cond
  %3 = load i8*, i8** @optarg, align 4, !tbaa !6
  br label %for.cond.outer

if.then5:                                         ; preds = %for.cond
  %4 = load i8*, i8** @optarg, align 4, !tbaa !6
  br label %for.cond.outer1712

for.end:                                          ; preds = %for.cond
  %tobool = icmp eq i8* %preset.0.ph, null
  br i1 %tobool, label %if.end13, label %if.end13.thread

if.end13.thread:                                  ; preds = %for.end
  %call10 = tail call i32 @strcasecmp(i8* nonnull %preset.0.ph, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0)) #14
  %tobool11 = icmp ne i32 %call10, 0
  %spec.select = zext i1 %tobool11 to i32
  br label %land.lhs.true16

if.end13:                                         ; preds = %for.end
  %tobool15 = icmp eq i8* %tune.0.ph1713, null
  br i1 %tobool15, label %if.end20, label %land.lhs.true16

land.lhs.true16:                                  ; preds = %if.end13, %if.end13.thread
  %b_turbo.0843 = phi i32 [ %spec.select, %if.end13.thread ], [ 1, %if.end13 ]
  %call17 = tail call i32 @x264_param_default_preset(%struct.x264_param_t* %param, i8* %preset.0.ph, i8* %tune.0.ph1713) #3
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %cleanup542, label %if.end20

if.end20:                                         ; preds = %if.end13, %land.lhs.true16
  %b_turbo.0842 = phi i32 [ 1, %if.end13 ], [ %b_turbo.0843, %land.lhs.true16 ]
  call void @x264_param_default(%struct.x264_param_t* nonnull %defaults) #3
  %i_log_level = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %defaults, i32 0, i32 48
  %5 = load i32, i32* %i_log_level, align 8, !tbaa !8
  store i32 %5, i32* @cli_log_level, align 4, !tbaa !2
  call void @llvm.memset.p0i8.i32(i8* nonnull align 4 dereferenceable(44) %1, i8 0, i32 36, i1 false)
  %6 = getelementptr inbounds %struct.cli_output_opt_t, %struct.cli_output_opt_t* %output_opt, i32 0, i32 0
  store i32 0, i32* %6, align 4
  %bit_depth = getelementptr inbounds %struct.cli_input_opt_t, %struct.cli_input_opt_t* %input_opt, i32 0, i32 4
  store i32 8, i32* %bit_depth, align 4, !tbaa !72
  %vui = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 14
  %b_fullrange = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 14, i32 4
  store i32 -1, i32* %b_fullrange, align 8, !tbaa !74
  %output_range = getelementptr inbounds %struct.cli_input_opt_t, %struct.cli_input_opt_t* %input_opt, i32 0, i32 9
  store i32 -1, i32* %output_range, align 4, !tbaa !75
  %input_range = getelementptr inbounds %struct.cli_input_opt_t, %struct.cli_input_opt_t* %input_opt, i32 0, i32 10
  store i32 -1, i32* %input_range, align 4, !tbaa !76
  %i_csp = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %defaults, i32 0, i32 9
  %7 = load i32, i32* %i_csp, align 4, !tbaa !77
  %b_progress = getelementptr inbounds %struct.cli_opt_t, %struct.cli_opt_t* %opt, i32 0, i32 0
  store i32 1, i32* %b_progress, align 8, !tbaa !18
  store i32 0, i32* @optind, align 4, !tbaa !2
  %8 = bitcast i32* %long_options_index to i8*
  %i_csp131 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 9
  %i_bitdepth = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 10
  %colorspace = getelementptr inbounds %struct.cli_input_opt_t, %struct.cli_input_opt_t* %input_opt, i32 0, i32 3
  %9 = bitcast i8** %colorspace to i32*
  %resolution = getelementptr inbounds %struct.cli_input_opt_t, %struct.cli_input_opt_t* %input_opt, i32 0, i32 2
  %10 = bitcast i8** %resolution to i32*
  %format = getelementptr inbounds %struct.cli_input_opt_t, %struct.cli_input_opt_t* %input_opt, i32 0, i32 1
  %11 = bitcast i8** %format to i32*
  %i_pulldown = getelementptr inbounds %struct.cli_opt_t, %struct.cli_opt_t* %opt, i32 0, i32 7
  %timebase = getelementptr inbounds %struct.cli_input_opt_t, %struct.cli_input_opt_t* %input_opt, i32 0, i32 5
  %12 = bitcast i8** %timebase to i32*
  %tcfile_out = getelementptr inbounds %struct.cli_opt_t, %struct.cli_opt_t* %opt, i32 0, i32 5
  %b_vfr_input = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 62
  %i_log_level85 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 48
  %qpfile = getelementptr inbounds %struct.cli_opt_t, %struct.cli_opt_t* %opt, i32 0, i32 4
  %13 = bitcast %struct.stat* %file_stat.i to i8*
  %st_mode.i = getelementptr inbounds %struct.stat, %struct.stat* %file_stat.i, i32 0, i32 3
  %14 = bitcast %struct.cli_input_opt_t* %input_opt to i32*
  %i_seek = getelementptr inbounds %struct.cli_opt_t, %struct.cli_opt_t* %opt, i32 0, i32 1
  %i_frame_total = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 12
  br label %for.cond21

for.cond21:                                       ; preds = %cleanup192, %if.end20
  %demuxer.0 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), %if.end20 ], [ %demuxer.3, %cleanup192 ]
  %muxer.0 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), %if.end20 ], [ %muxer.3, %cleanup192 ]
  %output_csp.0 = phi i32 [ %7, %if.end20 ], [ %output_csp.3, %cleanup192 ]
  %b_turbo.1 = phi i32 [ %b_turbo.0842, %if.end20 ], [ %b_turbo.3, %cleanup192 ]
  %b_user_ref.0 = phi i32 [ 0, %if.end20 ], [ %b_user_ref.3, %cleanup192 ]
  %b_user_fps.0 = phi i32 [ 0, %if.end20 ], [ %b_user_fps.3, %cleanup192 ]
  %b_user_interlaced.0 = phi i32 [ 0, %if.end20 ], [ %b_user_interlaced.3, %cleanup192 ]
  %vid_filters.0 = phi i8* [ null, %if.end20 ], [ %vid_filters.2, %cleanup192 ]
  %profile.0 = phi i8* [ null, %if.end20 ], [ %profile.2, %cleanup192 ]
  %tcfile_name.0 = phi i8* [ null, %if.end20 ], [ %tcfile_name.2, %cleanup192 ]
  %output_filename.0 = phi i8* [ null, %if.end20 ], [ %output_filename.2, %cleanup192 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #3
  store i32 -1, i32* %long_options_index, align 4, !tbaa !2
  %call23 = call i32 @getopt_long(i32 %argc, i8** %argv, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @short_options, i32 0, i32 0), %struct.option* getelementptr inbounds ([169 x %struct.option], [169 x %struct.option]* @long_options, i32 0, i32 0), i32* nonnull %long_options_index) #3
  switch i32 %call23, label %generic_option [
    i32 -1, label %for.end197
    i32 104, label %sw.bb
    i32 262, label %sw.bb27
    i32 267, label %sw.bb28
    i32 86, label %sw.bb29
    i32 256, label %sw.bb30
    i32 257, label %sw.bb34
    i32 111, label %sw.bb42
    i32 269, label %land.lhs.true.i
    i32 270, label %land.lhs.true.i713
    i32 271, label %sw.bb56
    i32 258, label %sw.bb57
    i32 259, label %cleanup192
    i32 260, label %sw.bb74
    i32 118, label %sw.bb76
    i32 277, label %land.lhs.true.i726
    i32 261, label %sw.bb86
    i32 265, label %cleanup192
    i32 264, label %cleanup192
    i32 263, label %sw.bb89
    i32 266, label %sw.bb90
    i32 114, label %sw.bb91
    i32 268, label %sw.bb92
    i32 272, label %sw.bb93
    i32 273, label %sw.bb94
    i32 274, label %sw.bb95
    i32 275, label %sw.bb104
    i32 276, label %land.lhs.true.i738
    i32 278, label %sw.bb113
    i32 279, label %sw.bb114
    i32 280, label %sw.bb115
    i32 281, label %sw.bb116
    i32 282, label %sw.bb117
    i32 283, label %sw.bb120
    i32 284, label %sw.bb122
    i32 285, label %land.lhs.true.i752
    i32 286, label %land.lhs.true.i764
    i32 287, label %land.lhs.true.i776
  ]

sw.bb:                                            ; preds = %for.cond21
  call fastcc void @help(%struct.x264_param_t* nonnull %defaults, i32 0)
  call void @exit(i32 0) #16
  unreachable

sw.bb27:                                          ; preds = %for.cond21
  call fastcc void @help(%struct.x264_param_t* nonnull %defaults, i32 1)
  call void @exit(i32 0) #16
  unreachable

sw.bb28:                                          ; preds = %for.cond21
  call fastcc void @help(%struct.x264_param_t* nonnull %defaults, i32 2)
  call void @exit(i32 0) #16
  unreachable

sw.bb29:                                          ; preds = %for.cond21
  call fastcc void @print_version_info()
  call void @exit(i32 0) #16
  unreachable

sw.bb30:                                          ; preds = %for.cond21
  %15 = load i8*, i8** @optarg, align 4, !tbaa !6
  %call.i = call i32 @strtol(i8* nocapture nonnull %15, i8** null, i32 10) #3
  %cmp32 = icmp sgt i32 %call.i, 0
  %spec.select699 = select i1 %cmp32, i32 %call.i, i32 0
  store i32 %spec.select699, i32* %i_frame_total, align 8, !tbaa !37
  br label %cleanup192

sw.bb34:                                          ; preds = %for.cond21
  %16 = load i8*, i8** @optarg, align 4, !tbaa !6
  %call.i706 = call i32 @strtol(i8* nocapture nonnull %16, i8** null, i32 10) #3
  %cmp36 = icmp sgt i32 %call.i706, 0
  %spec.select700 = select i1 %cmp36, i32 %call.i706, i32 0
  store i32 %spec.select700, i32* %i_seek, align 4, !tbaa !41
  br label %cleanup192

sw.bb42:                                          ; preds = %for.cond21
  %17 = load i8*, i8** @optarg, align 4, !tbaa !6
  br label %cleanup192

land.lhs.true.i:                                  ; preds = %for.cond21
  %18 = load i8*, i8** @optarg, align 4, !tbaa !6
  %call.i707 = call i32 @strcasecmp(i8* %18, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0)) #14
  %tobool4.i = icmp eq i32 %call.i707, 0
  br i1 %tobool4.i, label %cleanup192, label %land.lhs.true.i.1

land.lhs.true.i713:                               ; preds = %for.cond21
  %19 = load i8*, i8** @optarg, align 4, !tbaa !6
  %call.i711 = call i32 @strcasecmp(i8* %19, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0)) #14
  %tobool4.i712 = icmp eq i32 %call.i711, 0
  br i1 %tobool4.i712, label %cleanup192, label %land.lhs.true.i713.1

sw.bb56:                                          ; preds = %for.cond21
  %20 = load i32, i32* bitcast (i8** @optarg to i32*), align 4, !tbaa !6
  store i32 %20, i32* %14, align 4, !tbaa !78
  br label %cleanup192

sw.bb57:                                          ; preds = %for.cond21
  %21 = load i8*, i8** @optarg, align 4, !tbaa !6
  %call58 = call %struct._IO_FILE* @fopen(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i32 0, i32 0))
  store %struct._IO_FILE* %call58, %struct._IO_FILE** %qpfile, align 8, !tbaa !60
  %tobool61 = icmp eq %struct._IO_FILE* %call58, null
  br i1 %tobool61, label %if.then62, label %do.end65

if.then62:                                        ; preds = %sw.bb57
  %22 = load i8*, i8** @optarg, align 4, !tbaa !6
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.49, i32 0, i32 0), i8* %22)
  br label %cleanup192.thread

do.end65:                                         ; preds = %sw.bb57
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %13) #3
  %call.i720 = call i32 @fileno(%struct._IO_FILE* nonnull %call58) #3
  %call.i.i = call i32 @__fxstat(i32 3, i32 %call.i720, %struct.stat* nonnull %file_stat.i) #3
  %tobool.i721 = icmp eq i32 %call.i.i, 0
  %23 = load i32, i32* %st_mode.i, align 8
  %and.i = and i32 %23, 61440
  %cmp.i = icmp ne i32 %and.i, 32768
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %13) #3
  %tobool68 = and i1 %tobool.i721, %cmp.i
  br i1 %tobool68, label %if.then69, label %cleanup192

if.then69:                                        ; preds = %do.end65
  %24 = load i8*, i8** @optarg, align 4, !tbaa !6
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.50, i32 0, i32 0), i8* %24)
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %qpfile, align 8, !tbaa !60
  %call71 = call i32 @fclose(%struct._IO_FILE* %25)
  br label %cleanup192.thread

sw.bb74:                                          ; preds = %for.cond21
  store i32 -1, i32* %i_log_level85, align 8, !tbaa !8
  store i32 -1, i32* @cli_log_level, align 4, !tbaa !2
  br label %cleanup192

sw.bb76:                                          ; preds = %for.cond21
  store i32 3, i32* %i_log_level85, align 8, !tbaa !8
  store i32 3, i32* @cli_log_level, align 4, !tbaa !2
  br label %cleanup192

land.lhs.true.i726:                               ; preds = %for.cond21
  %26 = load i8*, i8** @optarg, align 4, !tbaa !6
  %call.i724 = call i32 @strcasecmp(i8* %26, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0)) #14
  %tobool4.i725 = icmp eq i32 %call.i724, 0
  br i1 %tobool4.i725, label %if.then81, label %land.lhs.true.i726.1

if.then81:                                        ; preds = %land.lhs.true.i726.4, %land.lhs.true.i726.3, %land.lhs.true.i726.2, %land.lhs.true.i726.1, %land.lhs.true.i726
  %i.016.i.lcssa = phi i32 [ 0, %land.lhs.true.i726 ], [ 1, %land.lhs.true.i726.1 ], [ 2, %land.lhs.true.i726.2 ], [ 3, %land.lhs.true.i726.3 ], [ 4, %land.lhs.true.i726.4 ]
  store i32 %i.016.i.lcssa, i32* @cli_log_level, align 4, !tbaa !2
  %add = add nsw i32 %i.016.i.lcssa, -1
  br label %if.end84

if.end84:                                         ; preds = %for.inc.i730.4, %if.then81
  %storemerge = phi i32 [ %add, %if.then81 ], [ %call.i732, %for.inc.i730.4 ]
  store i32 %storemerge, i32* @cli_log_level, align 4, !tbaa !2
  store i32 %storemerge, i32* %i_log_level85, align 8, !tbaa !8
  br label %cleanup192

sw.bb86:                                          ; preds = %for.cond21
  store i32 0, i32* %b_progress, align 8, !tbaa !18
  br label %cleanup192

sw.bb89:                                          ; preds = %for.cond21
  %27 = load i8*, i8** @optarg, align 4, !tbaa !6
  br label %cleanup192

sw.bb90:                                          ; preds = %for.cond21
  br label %cleanup192

sw.bb91:                                          ; preds = %for.cond21
  br label %generic_option

sw.bb92:                                          ; preds = %for.cond21
  store i32 0, i32* %b_vfr_input, align 8, !tbaa !22
  br label %generic_option

sw.bb93:                                          ; preds = %for.cond21
  br label %generic_option

sw.bb94:                                          ; preds = %for.cond21
  %28 = load i8*, i8** @optarg, align 4, !tbaa !6
  br label %cleanup192

sw.bb95:                                          ; preds = %for.cond21
  %29 = load i8*, i8** @optarg, align 4, !tbaa !6
  %call96 = call %struct._IO_FILE* @fopen(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0))
  store %struct._IO_FILE* %call96, %struct._IO_FILE** %tcfile_out, align 4, !tbaa !36
  %tobool99 = icmp eq %struct._IO_FILE* %call96, null
  br i1 %tobool99, label %if.then100, label %cleanup192

if.then100:                                       ; preds = %sw.bb95
  %30 = load i8*, i8** @optarg, align 4, !tbaa !6
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.52, i32 0, i32 0), i8* %30)
  br label %cleanup192.thread

sw.bb104:                                         ; preds = %for.cond21
  %31 = load i32, i32* bitcast (i8** @optarg to i32*), align 4, !tbaa !6
  store i32 %31, i32* %12, align 4, !tbaa !79
  br label %cleanup192

land.lhs.true.i738:                               ; preds = %for.cond21
  %32 = load i8*, i8** @optarg, align 4, !tbaa !6
  %call.i736 = call i32 @strcasecmp(i8* %32, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0)) #14
  %tobool4.i737 = icmp eq i32 %call.i736, 0
  br i1 %tobool4.i737, label %parse_enum_value.exit744.thread, label %land.lhs.true.i738.1

parse_enum_value.exit744.thread:                  ; preds = %land.lhs.true.i738.6, %land.lhs.true.i738.5, %land.lhs.true.i738.4, %land.lhs.true.i738.3, %land.lhs.true.i738.2, %land.lhs.true.i738.1, %land.lhs.true.i738
  %i.016.i733.lcssa = phi i32 [ 0, %land.lhs.true.i738 ], [ 1, %land.lhs.true.i738.1 ], [ 2, %land.lhs.true.i738.2 ], [ 3, %land.lhs.true.i738.3 ], [ 4, %land.lhs.true.i738.4 ], [ 5, %land.lhs.true.i738.5 ], [ 6, %land.lhs.true.i738.6 ]
  store i32 %i.016.i733.lcssa, i32* %i_pulldown, align 4, !tbaa !2
  br label %cleanup192

sw.bb113:                                         ; preds = %for.cond21
  %33 = load i8*, i8** @optarg, align 4, !tbaa !6
  br label %cleanup192

sw.bb114:                                         ; preds = %for.cond21
  %34 = load i32, i32* bitcast (i8** @optarg to i32*), align 4, !tbaa !6
  store i32 %34, i32* %11, align 4, !tbaa !80
  br label %cleanup192

sw.bb115:                                         ; preds = %for.cond21
  %35 = load i32, i32* bitcast (i8** @optarg to i32*), align 4, !tbaa !6
  store i32 %35, i32* %10, align 4, !tbaa !81
  br label %cleanup192

sw.bb116:                                         ; preds = %for.cond21
  %36 = load i32, i32* bitcast (i8** @optarg to i32*), align 4, !tbaa !6
  store i32 %36, i32* %9, align 4, !tbaa !82
  br label %cleanup192

sw.bb117:                                         ; preds = %for.cond21
  %37 = load i8*, i8** @optarg, align 4, !tbaa !6
  %call.i745 = call i32 @strtol(i8* nocapture nonnull %37, i8** null, i32 10) #3
  store i32 %call.i745, i32* %bit_depth, align 4, !tbaa !72
  br label %cleanup192

sw.bb120:                                         ; preds = %for.cond21
  %38 = load i8*, i8** @optarg, align 4, !tbaa !6
  %call.i746 = call i32 @strtol(i8* nocapture nonnull %38, i8** null, i32 10) #3
  store i32 %call.i746, i32* %i_bitdepth, align 8, !tbaa !83
  br label %cleanup192

sw.bb122:                                         ; preds = %for.cond21
  store i32 1, i32* %6, align 4, !tbaa !84
  br label %cleanup192

land.lhs.true.i752:                               ; preds = %for.cond21
  %39 = load i8*, i8** @optarg, align 4, !tbaa !6
  %call.i750 = call i32 @strcasecmp(i8* %39, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0)) #14
  %tobool4.i751 = icmp eq i32 %call.i750, 0
  br i1 %tobool4.i751, label %do.end130, label %land.lhs.true.i752.1

do.end130:                                        ; preds = %land.lhs.true.i752.4, %land.lhs.true.i752.3, %land.lhs.true.i752.2, %land.lhs.true.i752.1, %land.lhs.true.i752
  %i.016.i747.lcssa = phi i32 [ 0, %land.lhs.true.i752 ], [ 1, %land.lhs.true.i752.1 ], [ 2, %land.lhs.true.i752.2 ], [ 3, %land.lhs.true.i752.3 ], [ 4, %land.lhs.true.i752.4 ]
  %arrayidx = getelementptr inbounds [5 x i8], [5 x i8]* @parse.output_csp_fix, i32 0, i32 %i.016.i747.lcssa
  %40 = load i8, i8* %arrayidx, align 1, !tbaa !56
  %conv = zext i8 %40 to i32
  store i32 %conv, i32* %i_csp131, align 4, !tbaa !77
  br label %cleanup192

land.lhs.true.i764:                               ; preds = %for.cond21
  %41 = load i8*, i8** @optarg, align 4, !tbaa !6
  %call.i762 = call i32 @strcasecmp(i8* %41, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0)) #14
  %tobool4.i763 = icmp eq i32 %call.i762, 0
  br i1 %tobool4.i763, label %do.end140, label %land.lhs.true.i764.1

do.end140:                                        ; preds = %land.lhs.true.i764.2, %land.lhs.true.i764.1, %land.lhs.true.i764
  %i.016.i759.lcssa = phi i32 [ -1, %land.lhs.true.i764 ], [ 0, %land.lhs.true.i764.1 ], [ 1, %land.lhs.true.i764.2 ]
  store i32 %i.016.i759.lcssa, i32* %input_range, align 4, !tbaa !76
  br label %cleanup192

land.lhs.true.i776:                               ; preds = %for.cond21
  %42 = load i8*, i8** @optarg, align 4, !tbaa !6
  %call.i774 = call i32 @strcasecmp(i8* %42, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0)) #14
  %tobool4.i775 = icmp eq i32 %call.i774, 0
  br i1 %tobool4.i775, label %do.end152, label %land.lhs.true.i776.1

do.end152:                                        ; preds = %land.lhs.true.i776.2, %land.lhs.true.i776.1, %land.lhs.true.i776
  %i.016.i771.lcssa = phi i32 [ -1, %land.lhs.true.i776 ], [ 0, %land.lhs.true.i776.1 ], [ 1, %land.lhs.true.i776.2 ]
  store i32 %i.016.i771.lcssa, i32* %b_fullrange, align 8, !tbaa !74
  store i32 %i.016.i771.lcssa, i32* %output_range, align 4, !tbaa !75
  br label %cleanup192

generic_option:                                   ; preds = %for.cond21, %sw.bb93, %sw.bb92, %sw.bb91
  %b_user_ref.1 = phi i32 [ %b_user_ref.0, %sw.bb93 ], [ %b_user_ref.0, %sw.bb92 ], [ 1, %sw.bb91 ], [ %b_user_ref.0, %for.cond21 ]
  %b_user_fps.1 = phi i32 [ %b_user_fps.0, %sw.bb93 ], [ 1, %sw.bb92 ], [ %b_user_fps.0, %sw.bb91 ], [ %b_user_fps.0, %for.cond21 ]
  %b_user_interlaced.1 = phi i32 [ 1, %sw.bb93 ], [ %b_user_interlaced.0, %sw.bb92 ], [ %b_user_interlaced.0, %sw.bb91 ], [ %b_user_interlaced.0, %for.cond21 ]
  %43 = load i32, i32* %long_options_index, align 4, !tbaa !2
  %cmp157 = icmp slt i32 %43, 0
  br i1 %cmp157, label %for.cond160.preheader, label %sw.epilog

for.cond160.preheader:                            ; preds = %generic_option
  %44 = load i8*, i8** getelementptr inbounds ([169 x %struct.option], [169 x %struct.option]* @long_options, i32 0, i32 0, i32 0), align 4, !tbaa !86
  %tobool1621128 = icmp eq i8* %44, null
  br i1 %tobool1621128, label %cleanup192.thread, label %for.body

for.body:                                         ; preds = %for.cond160.preheader, %for.inc
  %i.01129 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond160.preheader ]
  %val = getelementptr inbounds [169 x %struct.option], [169 x %struct.option]* @long_options, i32 0, i32 %i.01129, i32 3
  %45 = load i32, i32* %val, align 4, !tbaa !88
  %cmp164 = icmp eq i32 %45, %call23
  br i1 %cmp164, label %cleanup168.thread, label %for.inc

cleanup168.thread:                                ; preds = %for.body
  store i32 %i.01129, i32* %long_options_index, align 4, !tbaa !2
  br label %sw.epilog

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.01129, 1
  %name = getelementptr inbounds [169 x %struct.option], [169 x %struct.option]* @long_options, i32 0, i32 %inc, i32 0
  %46 = load i8*, i8** %name, align 4, !tbaa !86
  %tobool162 = icmp eq i8* %46, null
  br i1 %tobool162, label %cleanup192.thread, label %for.body

sw.epilog:                                        ; preds = %generic_option, %cleanup168.thread
  %47 = phi i32 [ %43, %generic_option ], [ %i.01129, %cleanup168.thread ]
  %name176 = getelementptr inbounds [169 x %struct.option], [169 x %struct.option]* @long_options, i32 0, i32 %47, i32 0
  %48 = load i8*, i8** %name176, align 4, !tbaa !86
  %49 = load i8*, i8** @optarg, align 4, !tbaa !6
  %call177 = call i32 @x264_param_parse(%struct.x264_param_t* %param, i8* %48, i8* %49) #3
  %tobool178 = icmp eq i32 %call177, 0
  br i1 %tobool178, label %cleanup192, label %if.then179

if.then179:                                       ; preds = %sw.epilog
  %50 = load i32, i32* %long_options_index, align 4, !tbaa !2
  %cmp181 = icmp sgt i32 %50, 0
  %name185 = getelementptr inbounds [169 x %struct.option], [169 x %struct.option]* @long_options, i32 0, i32 %50, i32 0
  %51 = load i32, i32* @optind, align 4
  %sub = add nsw i32 %51, -2
  %arrayidx187 = getelementptr inbounds i8*, i8** %argv, i32 %sub
  %cond189.in = select i1 %cmp181, i8** %name185, i8** %arrayidx187
  %cond189 = load i8*, i8** %cond189.in, align 4, !tbaa !6
  %52 = load i8*, i8** @optarg, align 4, !tbaa !6
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.57, i32 0, i32 0), i8* %cond189, i8* %52)
  br label %cleanup192.thread

cleanup192.thread:                                ; preds = %for.cond160.preheader, %for.inc, %if.then179, %for.inc.i780.2, %for.inc.i768.2, %for.inc.i756.4, %for.inc.i742.6, %if.then100, %if.then69, %if.then62, %for.inc.i717.2, %for.inc.i.3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #3
  br label %cleanup542

cleanup192:                                       ; preds = %land.lhs.true.i713, %land.lhs.true.i713.1, %land.lhs.true.i713.2, %land.lhs.true.i, %land.lhs.true.i.1, %land.lhs.true.i.2, %land.lhs.true.i.3, %parse_enum_value.exit744.thread, %for.cond21, %for.cond21, %for.cond21, %sw.bb30, %sw.bb34, %sw.bb42, %sw.bb56, %do.end65, %sw.bb74, %sw.bb76, %if.end84, %sw.bb86, %sw.bb89, %sw.bb90, %sw.bb94, %sw.bb95, %sw.bb104, %sw.bb113, %sw.bb114, %sw.bb115, %sw.bb116, %sw.bb117, %sw.bb120, %sw.bb122, %do.end130, %do.end140, %do.end152, %sw.epilog
  %demuxer.3 = phi i8* [ %demuxer.0, %sw.epilog ], [ %demuxer.0, %parse_enum_value.exit744.thread ], [ %demuxer.0, %sw.bb30 ], [ %demuxer.0, %sw.bb34 ], [ %demuxer.0, %sw.bb42 ], [ %demuxer.0, %sw.bb56 ], [ %demuxer.0, %do.end65 ], [ %demuxer.0, %for.cond21 ], [ %demuxer.0, %for.cond21 ], [ %demuxer.0, %for.cond21 ], [ %demuxer.0, %sw.bb74 ], [ %demuxer.0, %sw.bb76 ], [ %demuxer.0, %if.end84 ], [ %demuxer.0, %sw.bb86 ], [ %demuxer.0, %sw.bb89 ], [ %demuxer.0, %sw.bb90 ], [ %demuxer.0, %sw.bb94 ], [ %demuxer.0, %sw.bb95 ], [ %demuxer.0, %sw.bb104 ], [ %demuxer.0, %sw.bb113 ], [ %demuxer.0, %sw.bb114 ], [ %demuxer.0, %sw.bb115 ], [ %demuxer.0, %sw.bb116 ], [ %demuxer.0, %sw.bb117 ], [ %demuxer.0, %sw.bb120 ], [ %demuxer.0, %sw.bb122 ], [ %demuxer.0, %do.end130 ], [ %demuxer.0, %do.end140 ], [ %demuxer.0, %do.end152 ], [ %demuxer.0, %land.lhs.true.i.3 ], [ %demuxer.0, %land.lhs.true.i.2 ], [ %demuxer.0, %land.lhs.true.i.1 ], [ %demuxer.0, %land.lhs.true.i ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), %land.lhs.true.i713 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0), %land.lhs.true.i713.1 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0), %land.lhs.true.i713.2 ]
  %muxer.3 = phi i8* [ %muxer.0, %sw.epilog ], [ %muxer.0, %parse_enum_value.exit744.thread ], [ %muxer.0, %sw.bb30 ], [ %muxer.0, %sw.bb34 ], [ %muxer.0, %sw.bb42 ], [ %muxer.0, %sw.bb56 ], [ %muxer.0, %do.end65 ], [ %muxer.0, %for.cond21 ], [ %muxer.0, %for.cond21 ], [ %muxer.0, %for.cond21 ], [ %muxer.0, %sw.bb74 ], [ %muxer.0, %sw.bb76 ], [ %muxer.0, %if.end84 ], [ %muxer.0, %sw.bb86 ], [ %muxer.0, %sw.bb89 ], [ %muxer.0, %sw.bb90 ], [ %muxer.0, %sw.bb94 ], [ %muxer.0, %sw.bb95 ], [ %muxer.0, %sw.bb104 ], [ %muxer.0, %sw.bb113 ], [ %muxer.0, %sw.bb114 ], [ %muxer.0, %sw.bb115 ], [ %muxer.0, %sw.bb116 ], [ %muxer.0, %sw.bb117 ], [ %muxer.0, %sw.bb120 ], [ %muxer.0, %sw.bb122 ], [ %muxer.0, %do.end130 ], [ %muxer.0, %do.end140 ], [ %muxer.0, %do.end152 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0), %land.lhs.true.i.3 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0), %land.lhs.true.i.2 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0), %land.lhs.true.i.1 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), %land.lhs.true.i ], [ %muxer.0, %land.lhs.true.i713 ], [ %muxer.0, %land.lhs.true.i713.1 ], [ %muxer.0, %land.lhs.true.i713.2 ]
  %output_csp.3 = phi i32 [ %output_csp.0, %sw.epilog ], [ %output_csp.0, %parse_enum_value.exit744.thread ], [ %output_csp.0, %sw.bb30 ], [ %output_csp.0, %sw.bb34 ], [ %output_csp.0, %sw.bb42 ], [ %output_csp.0, %sw.bb56 ], [ %output_csp.0, %do.end65 ], [ %output_csp.0, %for.cond21 ], [ %output_csp.0, %for.cond21 ], [ %output_csp.0, %for.cond21 ], [ %output_csp.0, %sw.bb74 ], [ %output_csp.0, %sw.bb76 ], [ %output_csp.0, %if.end84 ], [ %output_csp.0, %sw.bb86 ], [ %output_csp.0, %sw.bb89 ], [ %output_csp.0, %sw.bb90 ], [ %output_csp.0, %sw.bb94 ], [ %output_csp.0, %sw.bb95 ], [ %output_csp.0, %sw.bb104 ], [ %output_csp.0, %sw.bb113 ], [ %output_csp.0, %sw.bb114 ], [ %output_csp.0, %sw.bb115 ], [ %output_csp.0, %sw.bb116 ], [ %output_csp.0, %sw.bb117 ], [ %output_csp.0, %sw.bb120 ], [ %output_csp.0, %sw.bb122 ], [ %conv, %do.end130 ], [ %output_csp.0, %do.end140 ], [ %output_csp.0, %do.end152 ], [ %output_csp.0, %land.lhs.true.i.3 ], [ %output_csp.0, %land.lhs.true.i.2 ], [ %output_csp.0, %land.lhs.true.i.1 ], [ %output_csp.0, %land.lhs.true.i ], [ %output_csp.0, %land.lhs.true.i713 ], [ %output_csp.0, %land.lhs.true.i713.1 ], [ %output_csp.0, %land.lhs.true.i713.2 ]
  %b_turbo.3 = phi i32 [ %b_turbo.1, %sw.epilog ], [ %b_turbo.1, %parse_enum_value.exit744.thread ], [ %b_turbo.1, %sw.bb30 ], [ %b_turbo.1, %sw.bb34 ], [ %b_turbo.1, %sw.bb42 ], [ %b_turbo.1, %sw.bb56 ], [ %b_turbo.1, %do.end65 ], [ %b_turbo.1, %for.cond21 ], [ %b_turbo.1, %for.cond21 ], [ %b_turbo.1, %for.cond21 ], [ %b_turbo.1, %sw.bb74 ], [ %b_turbo.1, %sw.bb76 ], [ %b_turbo.1, %if.end84 ], [ %b_turbo.1, %sw.bb86 ], [ %b_turbo.1, %sw.bb89 ], [ 0, %sw.bb90 ], [ %b_turbo.1, %sw.bb94 ], [ %b_turbo.1, %sw.bb95 ], [ %b_turbo.1, %sw.bb104 ], [ %b_turbo.1, %sw.bb113 ], [ %b_turbo.1, %sw.bb114 ], [ %b_turbo.1, %sw.bb115 ], [ %b_turbo.1, %sw.bb116 ], [ %b_turbo.1, %sw.bb117 ], [ %b_turbo.1, %sw.bb120 ], [ %b_turbo.1, %sw.bb122 ], [ %b_turbo.1, %do.end130 ], [ %b_turbo.1, %do.end140 ], [ %b_turbo.1, %do.end152 ], [ %b_turbo.1, %land.lhs.true.i.3 ], [ %b_turbo.1, %land.lhs.true.i.2 ], [ %b_turbo.1, %land.lhs.true.i.1 ], [ %b_turbo.1, %land.lhs.true.i ], [ %b_turbo.1, %land.lhs.true.i713 ], [ %b_turbo.1, %land.lhs.true.i713.1 ], [ %b_turbo.1, %land.lhs.true.i713.2 ]
  %b_user_ref.3 = phi i32 [ %b_user_ref.1, %sw.epilog ], [ %b_user_ref.0, %parse_enum_value.exit744.thread ], [ %b_user_ref.0, %sw.bb30 ], [ %b_user_ref.0, %sw.bb34 ], [ %b_user_ref.0, %sw.bb42 ], [ %b_user_ref.0, %sw.bb56 ], [ %b_user_ref.0, %do.end65 ], [ %b_user_ref.0, %for.cond21 ], [ %b_user_ref.0, %for.cond21 ], [ %b_user_ref.0, %for.cond21 ], [ %b_user_ref.0, %sw.bb74 ], [ %b_user_ref.0, %sw.bb76 ], [ %b_user_ref.0, %if.end84 ], [ %b_user_ref.0, %sw.bb86 ], [ %b_user_ref.0, %sw.bb89 ], [ %b_user_ref.0, %sw.bb90 ], [ %b_user_ref.0, %sw.bb94 ], [ %b_user_ref.0, %sw.bb95 ], [ %b_user_ref.0, %sw.bb104 ], [ %b_user_ref.0, %sw.bb113 ], [ %b_user_ref.0, %sw.bb114 ], [ %b_user_ref.0, %sw.bb115 ], [ %b_user_ref.0, %sw.bb116 ], [ %b_user_ref.0, %sw.bb117 ], [ %b_user_ref.0, %sw.bb120 ], [ %b_user_ref.0, %sw.bb122 ], [ %b_user_ref.0, %do.end130 ], [ %b_user_ref.0, %do.end140 ], [ %b_user_ref.0, %do.end152 ], [ %b_user_ref.0, %land.lhs.true.i.3 ], [ %b_user_ref.0, %land.lhs.true.i.2 ], [ %b_user_ref.0, %land.lhs.true.i.1 ], [ %b_user_ref.0, %land.lhs.true.i ], [ %b_user_ref.0, %land.lhs.true.i713 ], [ %b_user_ref.0, %land.lhs.true.i713.1 ], [ %b_user_ref.0, %land.lhs.true.i713.2 ]
  %b_user_fps.3 = phi i32 [ %b_user_fps.1, %sw.epilog ], [ %b_user_fps.0, %parse_enum_value.exit744.thread ], [ %b_user_fps.0, %sw.bb30 ], [ %b_user_fps.0, %sw.bb34 ], [ %b_user_fps.0, %sw.bb42 ], [ %b_user_fps.0, %sw.bb56 ], [ %b_user_fps.0, %do.end65 ], [ %b_user_fps.0, %for.cond21 ], [ %b_user_fps.0, %for.cond21 ], [ %b_user_fps.0, %for.cond21 ], [ %b_user_fps.0, %sw.bb74 ], [ %b_user_fps.0, %sw.bb76 ], [ %b_user_fps.0, %if.end84 ], [ %b_user_fps.0, %sw.bb86 ], [ %b_user_fps.0, %sw.bb89 ], [ %b_user_fps.0, %sw.bb90 ], [ %b_user_fps.0, %sw.bb94 ], [ %b_user_fps.0, %sw.bb95 ], [ %b_user_fps.0, %sw.bb104 ], [ %b_user_fps.0, %sw.bb113 ], [ %b_user_fps.0, %sw.bb114 ], [ %b_user_fps.0, %sw.bb115 ], [ %b_user_fps.0, %sw.bb116 ], [ %b_user_fps.0, %sw.bb117 ], [ %b_user_fps.0, %sw.bb120 ], [ %b_user_fps.0, %sw.bb122 ], [ %b_user_fps.0, %do.end130 ], [ %b_user_fps.0, %do.end140 ], [ %b_user_fps.0, %do.end152 ], [ %b_user_fps.0, %land.lhs.true.i.3 ], [ %b_user_fps.0, %land.lhs.true.i.2 ], [ %b_user_fps.0, %land.lhs.true.i.1 ], [ %b_user_fps.0, %land.lhs.true.i ], [ %b_user_fps.0, %land.lhs.true.i713 ], [ %b_user_fps.0, %land.lhs.true.i713.1 ], [ %b_user_fps.0, %land.lhs.true.i713.2 ]
  %b_user_interlaced.3 = phi i32 [ %b_user_interlaced.1, %sw.epilog ], [ %b_user_interlaced.0, %parse_enum_value.exit744.thread ], [ %b_user_interlaced.0, %sw.bb30 ], [ %b_user_interlaced.0, %sw.bb34 ], [ %b_user_interlaced.0, %sw.bb42 ], [ %b_user_interlaced.0, %sw.bb56 ], [ %b_user_interlaced.0, %do.end65 ], [ %b_user_interlaced.0, %for.cond21 ], [ %b_user_interlaced.0, %for.cond21 ], [ %b_user_interlaced.0, %for.cond21 ], [ %b_user_interlaced.0, %sw.bb74 ], [ %b_user_interlaced.0, %sw.bb76 ], [ %b_user_interlaced.0, %if.end84 ], [ %b_user_interlaced.0, %sw.bb86 ], [ %b_user_interlaced.0, %sw.bb89 ], [ %b_user_interlaced.0, %sw.bb90 ], [ %b_user_interlaced.0, %sw.bb94 ], [ %b_user_interlaced.0, %sw.bb95 ], [ %b_user_interlaced.0, %sw.bb104 ], [ %b_user_interlaced.0, %sw.bb113 ], [ %b_user_interlaced.0, %sw.bb114 ], [ %b_user_interlaced.0, %sw.bb115 ], [ %b_user_interlaced.0, %sw.bb116 ], [ %b_user_interlaced.0, %sw.bb117 ], [ %b_user_interlaced.0, %sw.bb120 ], [ %b_user_interlaced.0, %sw.bb122 ], [ %b_user_interlaced.0, %do.end130 ], [ %b_user_interlaced.0, %do.end140 ], [ %b_user_interlaced.0, %do.end152 ], [ %b_user_interlaced.0, %land.lhs.true.i.3 ], [ %b_user_interlaced.0, %land.lhs.true.i.2 ], [ %b_user_interlaced.0, %land.lhs.true.i.1 ], [ %b_user_interlaced.0, %land.lhs.true.i ], [ %b_user_interlaced.0, %land.lhs.true.i713 ], [ %b_user_interlaced.0, %land.lhs.true.i713.1 ], [ %b_user_interlaced.0, %land.lhs.true.i713.2 ]
  %vid_filters.2 = phi i8* [ %vid_filters.0, %sw.epilog ], [ %vid_filters.0, %parse_enum_value.exit744.thread ], [ %vid_filters.0, %sw.bb30 ], [ %vid_filters.0, %sw.bb34 ], [ %vid_filters.0, %sw.bb42 ], [ %vid_filters.0, %sw.bb56 ], [ %vid_filters.0, %do.end65 ], [ %vid_filters.0, %for.cond21 ], [ %vid_filters.0, %for.cond21 ], [ %vid_filters.0, %for.cond21 ], [ %vid_filters.0, %sw.bb74 ], [ %vid_filters.0, %sw.bb76 ], [ %vid_filters.0, %if.end84 ], [ %vid_filters.0, %sw.bb86 ], [ %vid_filters.0, %sw.bb89 ], [ %vid_filters.0, %sw.bb90 ], [ %vid_filters.0, %sw.bb94 ], [ %vid_filters.0, %sw.bb95 ], [ %vid_filters.0, %sw.bb104 ], [ %33, %sw.bb113 ], [ %vid_filters.0, %sw.bb114 ], [ %vid_filters.0, %sw.bb115 ], [ %vid_filters.0, %sw.bb116 ], [ %vid_filters.0, %sw.bb117 ], [ %vid_filters.0, %sw.bb120 ], [ %vid_filters.0, %sw.bb122 ], [ %vid_filters.0, %do.end130 ], [ %vid_filters.0, %do.end140 ], [ %vid_filters.0, %do.end152 ], [ %vid_filters.0, %land.lhs.true.i.3 ], [ %vid_filters.0, %land.lhs.true.i.2 ], [ %vid_filters.0, %land.lhs.true.i.1 ], [ %vid_filters.0, %land.lhs.true.i ], [ %vid_filters.0, %land.lhs.true.i713 ], [ %vid_filters.0, %land.lhs.true.i713.1 ], [ %vid_filters.0, %land.lhs.true.i713.2 ]
  %profile.2 = phi i8* [ %profile.0, %sw.epilog ], [ %profile.0, %parse_enum_value.exit744.thread ], [ %profile.0, %sw.bb30 ], [ %profile.0, %sw.bb34 ], [ %profile.0, %sw.bb42 ], [ %profile.0, %sw.bb56 ], [ %profile.0, %do.end65 ], [ %profile.0, %for.cond21 ], [ %profile.0, %for.cond21 ], [ %profile.0, %for.cond21 ], [ %profile.0, %sw.bb74 ], [ %profile.0, %sw.bb76 ], [ %profile.0, %if.end84 ], [ %profile.0, %sw.bb86 ], [ %27, %sw.bb89 ], [ %profile.0, %sw.bb90 ], [ %profile.0, %sw.bb94 ], [ %profile.0, %sw.bb95 ], [ %profile.0, %sw.bb104 ], [ %profile.0, %sw.bb113 ], [ %profile.0, %sw.bb114 ], [ %profile.0, %sw.bb115 ], [ %profile.0, %sw.bb116 ], [ %profile.0, %sw.bb117 ], [ %profile.0, %sw.bb120 ], [ %profile.0, %sw.bb122 ], [ %profile.0, %do.end130 ], [ %profile.0, %do.end140 ], [ %profile.0, %do.end152 ], [ %profile.0, %land.lhs.true.i.3 ], [ %profile.0, %land.lhs.true.i.2 ], [ %profile.0, %land.lhs.true.i.1 ], [ %profile.0, %land.lhs.true.i ], [ %profile.0, %land.lhs.true.i713 ], [ %profile.0, %land.lhs.true.i713.1 ], [ %profile.0, %land.lhs.true.i713.2 ]
  %tcfile_name.2 = phi i8* [ %tcfile_name.0, %sw.epilog ], [ %tcfile_name.0, %parse_enum_value.exit744.thread ], [ %tcfile_name.0, %sw.bb30 ], [ %tcfile_name.0, %sw.bb34 ], [ %tcfile_name.0, %sw.bb42 ], [ %tcfile_name.0, %sw.bb56 ], [ %tcfile_name.0, %do.end65 ], [ %tcfile_name.0, %for.cond21 ], [ %tcfile_name.0, %for.cond21 ], [ %tcfile_name.0, %for.cond21 ], [ %tcfile_name.0, %sw.bb74 ], [ %tcfile_name.0, %sw.bb76 ], [ %tcfile_name.0, %if.end84 ], [ %tcfile_name.0, %sw.bb86 ], [ %tcfile_name.0, %sw.bb89 ], [ %tcfile_name.0, %sw.bb90 ], [ %28, %sw.bb94 ], [ %tcfile_name.0, %sw.bb95 ], [ %tcfile_name.0, %sw.bb104 ], [ %tcfile_name.0, %sw.bb113 ], [ %tcfile_name.0, %sw.bb114 ], [ %tcfile_name.0, %sw.bb115 ], [ %tcfile_name.0, %sw.bb116 ], [ %tcfile_name.0, %sw.bb117 ], [ %tcfile_name.0, %sw.bb120 ], [ %tcfile_name.0, %sw.bb122 ], [ %tcfile_name.0, %do.end130 ], [ %tcfile_name.0, %do.end140 ], [ %tcfile_name.0, %do.end152 ], [ %tcfile_name.0, %land.lhs.true.i.3 ], [ %tcfile_name.0, %land.lhs.true.i.2 ], [ %tcfile_name.0, %land.lhs.true.i.1 ], [ %tcfile_name.0, %land.lhs.true.i ], [ %tcfile_name.0, %land.lhs.true.i713 ], [ %tcfile_name.0, %land.lhs.true.i713.1 ], [ %tcfile_name.0, %land.lhs.true.i713.2 ]
  %output_filename.2 = phi i8* [ %output_filename.0, %sw.epilog ], [ %output_filename.0, %parse_enum_value.exit744.thread ], [ %output_filename.0, %sw.bb30 ], [ %output_filename.0, %sw.bb34 ], [ %17, %sw.bb42 ], [ %output_filename.0, %sw.bb56 ], [ %output_filename.0, %do.end65 ], [ %output_filename.0, %for.cond21 ], [ %output_filename.0, %for.cond21 ], [ %output_filename.0, %for.cond21 ], [ %output_filename.0, %sw.bb74 ], [ %output_filename.0, %sw.bb76 ], [ %output_filename.0, %if.end84 ], [ %output_filename.0, %sw.bb86 ], [ %output_filename.0, %sw.bb89 ], [ %output_filename.0, %sw.bb90 ], [ %output_filename.0, %sw.bb94 ], [ %output_filename.0, %sw.bb95 ], [ %output_filename.0, %sw.bb104 ], [ %output_filename.0, %sw.bb113 ], [ %output_filename.0, %sw.bb114 ], [ %output_filename.0, %sw.bb115 ], [ %output_filename.0, %sw.bb116 ], [ %output_filename.0, %sw.bb117 ], [ %output_filename.0, %sw.bb120 ], [ %output_filename.0, %sw.bb122 ], [ %output_filename.0, %do.end130 ], [ %output_filename.0, %do.end140 ], [ %output_filename.0, %do.end152 ], [ %output_filename.0, %land.lhs.true.i.3 ], [ %output_filename.0, %land.lhs.true.i.2 ], [ %output_filename.0, %land.lhs.true.i.1 ], [ %output_filename.0, %land.lhs.true.i ], [ %output_filename.0, %land.lhs.true.i713 ], [ %output_filename.0, %land.lhs.true.i713.1 ], [ %output_filename.0, %land.lhs.true.i713.2 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #3
  br label %for.cond21

for.end197:                                       ; preds = %for.cond21
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #3
  %tobool198 = icmp eq i32 %b_turbo.1, 0
  br i1 %tobool198, label %if.end200, label %if.then199

if.then199:                                       ; preds = %for.end197
  call void @x264_param_apply_fastfirstpass(%struct.x264_param_t* %param) #3
  br label %if.end200

if.end200:                                        ; preds = %for.end197, %if.then199
  %call201 = call i32 @x264_param_apply_profile(%struct.x264_param_t* %param, i8* %profile.0) #3
  %cmp202 = icmp slt i32 %call201, 0
  br i1 %cmp202, label %cleanup542, label %do.body206

do.body206:                                       ; preds = %if.end200
  %53 = load i32, i32* @optind, align 4, !tbaa !2
  %cmp208 = icmp slt i32 %53, %argc
  %tobool211 = icmp ne i8* %output_filename.0, null
  %or.cond560 = and i1 %tobool211, %cmp208
  br i1 %or.cond560, label %do.end219, label %if.then212

if.then212:                                       ; preds = %do.body206
  %cond216 = select i1 %cmp208, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i32 0, i32 0)
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.58, i32 0, i32 0), i8* %cond216)
  br label %cleanup542

do.end219:                                        ; preds = %do.body206
  %call.i.i783 = call i32 @strlen(i8* nonnull dereferenceable(1) %output_filename.0) #14
  %add.ptr.i.i = getelementptr inbounds i8, i8* %output_filename.0, i32 %call.i.i783
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i, %do.end219
  %ext.0.i.i = phi i8* [ %add.ptr.i.i, %do.end219 ], [ %incdec.ptr.i.i, %while.cond.i.i ]
  %54 = load i8, i8* %ext.0.i.i, align 1, !tbaa !56
  %cmp.i.i = icmp ne i8 %54, 46
  %cmp2.i.i = icmp ugt i8* %ext.0.i.i, %output_filename.0
  %55 = and i1 %cmp2.i.i, %cmp.i.i
  %incdec.ptr.i.i = getelementptr inbounds i8, i8* %ext.0.i.i, i32 -1
  br i1 %55, label %while.cond.i.i, label %get_filename_extension.exit.i

get_filename_extension.exit.i:                    ; preds = %while.cond.i.i
  %call1.i = call i32 @strcmp(i8* nonnull dereferenceable(1) %output_filename.0, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.486, i32 0, i32 0)) #14
  %tobool.i784 = icmp eq i32 %call1.i, 0
  br i1 %tobool.i784, label %if.then.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %get_filename_extension.exit.i
  %cmp5.i.i = icmp eq i8 %54, 46
  %conv6.i.i = zext i1 %cmp5.i.i to i32
  %add.ptr7.i.i = getelementptr inbounds i8, i8* %ext.0.i.i, i32 %conv6.i.i
  %call2.i = call i32 @strcasecmp(i8* %muxer.0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0)) #14
  %tobool3.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i, %get_filename_extension.exit.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %lor.lhs.false.i
  %ext.0.i = phi i8* [ %muxer.0, %if.then.i ], [ %add.ptr7.i.i, %lor.lhs.false.i ]
  %call4.i = call i32 @strcasecmp(i8* %ext.0.i, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.487, i32 0, i32 0)) #14
  %tobool5.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.i, label %select_output.exit, label %if.else.i

if.else.i:                                        ; preds = %if.end.i
  %call7.i = call i32 @strcasecmp(i8* %ext.0.i, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0)) #14
  %tobool8.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.i, label %if.then9.i, label %if.else10.i

if.then9.i:                                       ; preds = %if.else.i
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(20) bitcast (%struct.cli_output_t* @cli_output to i8*), i8* nonnull align 4 dereferenceable(20) bitcast (%struct.cli_output_t* @mkv_output to i8*), i32 20, i1 false) #3, !tbaa.struct !89
  %b_annexb.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 60
  store i32 0, i32* %b_annexb.i, align 8, !tbaa !90
  %b_repeat_headers.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 59
  store i32 0, i32* %b_repeat_headers.i, align 4, !tbaa !34
  br label %do.body224

if.else10.i:                                      ; preds = %if.else.i
  %call11.i = call i32 @strcasecmp(i8* %ext.0.i, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0)) #14
  %tobool12.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.i, label %if.then13.i, label %if.else16.i

if.then13.i:                                      ; preds = %if.else10.i
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(20) bitcast (%struct.cli_output_t* @cli_output to i8*), i8* nonnull align 4 dereferenceable(20) bitcast (%struct.cli_output_t* @flv_output to i8*), i32 20, i1 false) #3, !tbaa.struct !89
  %b_annexb14.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 60
  store i32 0, i32* %b_annexb14.i, align 8, !tbaa !90
  %b_repeat_headers15.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 59
  store i32 0, i32* %b_repeat_headers15.i, align 4, !tbaa !34
  br label %do.body224

if.else16.i:                                      ; preds = %if.else10.i
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(20) bitcast (%struct.cli_output_t* @cli_output to i8*), i8* nonnull align 4 dereferenceable(20) bitcast (%struct.cli_output_t* @raw_output to i8*), i32 20, i1 false) #3, !tbaa.struct !89
  br label %do.body224

select_output.exit:                               ; preds = %if.end.i
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.488, i32 0, i32 0)) #3
  br label %cleanup542

do.body224:                                       ; preds = %if.then9.i, %if.else16.i, %if.then13.i
  %56 = load i32 (i8*, i8**, %struct.cli_output_opt_t*)*, i32 (i8*, i8**, %struct.cli_output_opt_t*)** getelementptr inbounds (%struct.cli_output_t, %struct.cli_output_t* @cli_output, i32 0, i32 0), align 4, !tbaa !91
  %hout = getelementptr inbounds %struct.cli_opt_t, %struct.cli_opt_t* %opt, i32 0, i32 3
  %call225 = call i32 %56(i8* nonnull %output_filename.0, i8** nonnull %hout, %struct.cli_output_opt_t* nonnull %output_opt) #3
  %tobool226 = icmp eq i32 %call225, 0
  br i1 %tobool226, label %do.end230, label %if.then227

if.then227:                                       ; preds = %do.body224
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.61, i32 0, i32 0), i8* nonnull %output_filename.0)
  br label %cleanup542

do.end230:                                        ; preds = %do.body224
  %57 = load i32, i32* @optind, align 4, !tbaa !2
  %inc231 = add nsw i32 %57, 1
  store i32 %inc231, i32* @optind, align 4, !tbaa !2
  %arrayidx232 = getelementptr inbounds i8*, i8** %argv, i32 %57
  %58 = load i8*, i8** %arrayidx232, align 4, !tbaa !6
  %59 = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 4
  %60 = bitcast i32* %59 to i8*
  call void @llvm.memset.p0i8.i32(i8* nonnull align 4 dereferenceable(60) %60, i8 0, i32 44, i1 false)
  %61 = load i32, i32* %i_csp131, align 4, !tbaa !77
  %csp = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 0
  store i32 %61, i32* %csp, align 4, !tbaa !92
  %i_fps_num = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 64
  %62 = load i32, i32* %i_fps_num, align 8, !tbaa !27
  %fps_num = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 1
  store i32 %62, i32* %fps_num, align 4, !tbaa !94
  %i_fps_den = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 65
  %63 = load i32, i32* %i_fps_den, align 4, !tbaa !25
  %fps_den = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 2
  store i32 %63, i32* %fps_den, align 4, !tbaa !95
  %64 = load i32, i32* %input_range, align 4, !tbaa !76
  %cmp235 = icmp eq i32 %64, 1
  %conv236 = zext i1 %cmp235 to i32
  %fullrange = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 3
  store i32 %conv236, i32* %fullrange, align 4, !tbaa !96
  %b_interlaced = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 34
  %65 = load i32, i32* %b_interlaced, align 8, !tbaa !97
  %interlaced = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 6
  store i32 %65, i32* %interlaced, align 4, !tbaa !98
  %i_sar_width = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 14, i32 1
  %66 = load i32, i32* %i_sar_width, align 4, !tbaa !99
  %cmp238 = icmp sgt i32 %66, 0
  br i1 %cmp238, label %land.lhs.true240, label %if.end249

land.lhs.true240:                                 ; preds = %do.end230
  %i_sar_height = getelementptr inbounds %struct.anon, %struct.anon* %vui, i32 0, i32 0
  %67 = load i32, i32* %i_sar_height, align 8, !tbaa !100
  %cmp242 = icmp sgt i32 %67, 0
  br i1 %cmp242, label %if.then244, label %if.end249

if.then244:                                       ; preds = %land.lhs.true240
  %sar_width = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 8
  store i32 %66, i32* %sar_width, align 4, !tbaa !101
  %sar_height = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 9
  store i32 %67, i32* %sar_height, align 4, !tbaa !102
  br label %if.end249

if.end249:                                        ; preds = %if.then244, %land.lhs.true240, %do.end230
  %b_tff = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 68
  %68 = load i32, i32* %b_tff, align 8, !tbaa !103
  %tff = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 10
  store i32 %68, i32* %tff, align 4, !tbaa !104
  %69 = load i32, i32* %b_vfr_input, align 8, !tbaa !22
  %vfr = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 14
  store i32 %69, i32* %vfr, align 4, !tbaa !105
  %70 = load i32, i32* %i_seek, align 4, !tbaa !41
  %seek = getelementptr inbounds %struct.cli_input_opt_t, %struct.cli_input_opt_t* %input_opt, i32 0, i32 6
  store i32 %70, i32* %seek, align 4, !tbaa !106
  %71 = load i32, i32* %b_progress, align 8, !tbaa !18
  %progress = getelementptr inbounds %struct.cli_input_opt_t, %struct.cli_input_opt_t* %input_opt, i32 0, i32 7
  store i32 %71, i32* %progress, align 4, !tbaa !107
  %output_csp253 = getelementptr inbounds %struct.cli_input_opt_t, %struct.cli_input_opt_t* %input_opt, i32 0, i32 8
  store i32 %output_csp.0, i32* %output_csp253, align 4, !tbaa !108
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %demuxername, i32 0, i32 0
  %hin = getelementptr inbounds %struct.cli_opt_t, %struct.cli_opt_t* %opt, i32 0, i32 2
  %call.i787 = call i32 @strcasecmp(i8* %demuxer.0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0)) #14
  %tobool.i788 = icmp eq i32 %call.i787, 0
  br i1 %tobool.i788, label %cond.true.i, label %cond.end.i

cond.true.i:                                      ; preds = %if.end249
  %call.i.i789 = call i32 @strlen(i8* nonnull dereferenceable(1) %58) #14
  %add.ptr.i.i790 = getelementptr inbounds i8, i8* %58, i32 %call.i.i789
  br label %while.cond.i.i795

while.cond.i.i795:                                ; preds = %while.cond.i.i795, %cond.true.i
  %ext.0.i.i791 = phi i8* [ %add.ptr.i.i790, %cond.true.i ], [ %incdec.ptr.i.i794, %while.cond.i.i795 ]
  %72 = load i8, i8* %ext.0.i.i791, align 1, !tbaa !56
  %cmp.i.i792 = icmp ne i8 %72, 46
  %cmp2.i.i793 = icmp ugt i8* %ext.0.i.i791, %58
  %73 = and i1 %cmp2.i.i793, %cmp.i.i792
  %incdec.ptr.i.i794 = getelementptr inbounds i8, i8* %ext.0.i.i791, i32 -1
  br i1 %73, label %while.cond.i.i795, label %get_filename_extension.exit.i799

get_filename_extension.exit.i799:                 ; preds = %while.cond.i.i795
  %cmp5.i.i796 = icmp eq i8 %72, 46
  %conv6.i.i797 = zext i1 %cmp5.i.i796 to i32
  %add.ptr7.i.i798 = getelementptr inbounds i8, i8* %ext.0.i.i791, i32 %conv6.i.i797
  br label %cond.end.i

cond.end.i:                                       ; preds = %get_filename_extension.exit.i799, %if.end249
  %cond.i = phi i8* [ %add.ptr7.i.i798, %get_filename_extension.exit.i799 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.241, i32 0, i32 0), %if.end249 ]
  %call3.i = call i32 @strcmp(i8* nonnull dereferenceable(1) %58, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.486, i32 0, i32 0)) #14
  %74 = or i32 %call3.i, %call.i787
  %75 = icmp eq i32 %74, 0
  %spec.select.i = select i1 %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0), i8* %cond.i
  %tobool6.i = icmp eq i32 %call3.i, 0
  br i1 %tobool6.i, label %if.end17.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %cond.end.i
  %76 = bitcast %struct.stat* %file_stat.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %76) #3
  %call.i.i.i = call i32 @__xstat(i32 3, i8* nonnull %58, %struct.stat* nonnull %file_stat.i.i) #3
  %tobool.i.i = icmp ne i32 %call.i.i.i, 0
  %st_mode.i.i = getelementptr inbounds %struct.stat, %struct.stat* %file_stat.i.i, i32 0, i32 3
  %77 = load i32, i32* %st_mode.i.i, align 8
  %and.i.i = and i32 %77, 61440
  %cmp.i83.i = icmp eq i32 %and.i.i, 32768
  %narrow.i.i = or i1 %tobool.i.i, %cmp.i83.i
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %76) #3
  br i1 %narrow.i.i, label %if.then10.i, label %if.end17.i

if.then10.i:                                      ; preds = %land.rhs.i
  %call11.i800 = call %struct._IO_FILE* @fopen(i8* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.489, i32 0, i32 0)) #3
  %tobool12.i801 = icmp eq %struct._IO_FILE* %call11.i800, null
  br i1 %tobool12.i801, label %if.end17.i, label %if.then13.i802

if.then13.i802:                                   ; preds = %if.then10.i
  %78 = bitcast %struct.stat* %file_stat.i84.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %78) #3
  %call.i85.i = call i32 @fileno(%struct._IO_FILE* nonnull %call11.i800) #3
  %call.i.i86.i = call i32 @__fxstat(i32 3, i32 %call.i85.i, %struct.stat* nonnull %file_stat.i84.i) #3
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %78) #3
  %call15.i = call i32 @fclose(%struct._IO_FILE* nonnull %call11.i800) #3
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then13.i802, %if.then10.i, %land.rhs.i, %cond.end.i
  %cond22.i = select i1 %tobool.i788, i8* %spec.select.i, i8* %demuxer.0
  %call23.i = call i32 @strcasecmp(i8* %cond22.i, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.490, i32 0, i32 0)) #14
  %tobool24.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.i, label %if.then30.i, label %lor.lhs.false.i803

lor.lhs.false.i803:                               ; preds = %if.end17.i
  %call25.i = call i32 @strcasecmp(i8* %spec.select.i, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.491, i32 0, i32 0)) #14
  %tobool26.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.i, label %if.then30.i, label %lor.lhs.false27.i

lor.lhs.false27.i:                                ; preds = %lor.lhs.false.i803
  %call28.i = call i32 @strcasecmp(i8* %spec.select.i, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.492, i32 0, i32 0)) #14
  %tobool29.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.i, label %if.then30.i, label %if.else.i804

if.then30.i:                                      ; preds = %lor.lhs.false27.i, %lor.lhs.false.i803, %if.end17.i
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.493, i32 0, i32 0)) #3
  br label %cleanup542

if.else.i804:                                     ; preds = %lor.lhs.false27.i
  %call31.i = call i32 @strcasecmp(i8* %cond22.i, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0)) #14
  %tobool32.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.i, label %if.then33.i, label %if.else34.i

if.then33.i:                                      ; preds = %if.else.i804
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(24) bitcast (%struct.cli_input_t* @cli_input to i8*), i8* nonnull align 4 dereferenceable(24) bitcast (%struct.cli_input_t* @y4m_input to i8*), i32 24, i1 false) #3, !tbaa.struct !109
  br label %do.body258

if.else34.i:                                      ; preds = %if.else.i804
  %call35.i = call i32 @strcasecmp(i8* %cond22.i, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0)) #14
  %tobool36.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.i, label %if.then40.i, label %lor.lhs.false37.i

lor.lhs.false37.i:                                ; preds = %if.else34.i
  %call38.i = call i32 @strcasecmp(i8* %spec.select.i, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.494, i32 0, i32 0)) #14
  %tobool39.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.i, label %if.then40.i, label %if.else41.i

if.then40.i:                                      ; preds = %lor.lhs.false37.i, %if.else34.i
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(24) bitcast (%struct.cli_input_t* @cli_input to i8*), i8* nonnull align 4 dereferenceable(24) bitcast (%struct.cli_input_t* @raw_input to i8*), i32 24, i1 false) #3, !tbaa.struct !109
  br label %do.body258

if.else41.i:                                      ; preds = %lor.lhs.false37.i
  br i1 %tobool.i788, label %land.lhs.true43.i, label %do.body.i

land.lhs.true43.i:                                ; preds = %if.else41.i
  %79 = load i32 (i8*, i8**, %struct.video_info_t*, %struct.cli_input_opt_t*)*, i32 (i8*, i8**, %struct.video_info_t*, %struct.cli_input_opt_t*)** getelementptr inbounds (%struct.cli_input_t, %struct.cli_input_t* @raw_input, i32 0, i32 0), align 4, !tbaa !110
  %call44.i = call i32 %79(i8* %58, i8** nonnull %hin, %struct.video_info_t* nonnull %info, %struct.cli_input_opt_t* nonnull %input_opt) #3
  %tobool45.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.i, label %if.then46.i, label %do.body.i

if.then46.i:                                      ; preds = %land.lhs.true43.i
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(24) bitcast (%struct.cli_input_t* @cli_input to i8*), i8* nonnull align 4 dereferenceable(24) bitcast (%struct.cli_input_t* @raw_input to i8*), i32 24, i1 false) #3, !tbaa.struct !109
  br label %do.body.i

do.body.i:                                        ; preds = %if.then46.i, %land.lhs.true43.i, %if.else41.i
  %module.0.i = phi i8* [ %spec.select.i, %land.lhs.true43.i ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0), %if.then46.i ], [ %demuxer.0, %if.else41.i ]
  %80 = load i8*, i8** %hin, align 4, !tbaa !6
  %tobool48.i = icmp eq i8* %80, null
  br i1 %tobool48.i, label %if.then49.i, label %do.body258

if.then49.i:                                      ; preds = %do.body.i
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.495, i32 0, i32 0), i8* %58) #3
  br label %cleanup542

do.body258:                                       ; preds = %do.body.i, %if.then40.i, %if.then33.i
  %module.1.i = phi i8* [ %module.0.i, %do.body.i ], [ %cond22.i, %if.then40.i ], [ %cond22.i, %if.then33.i ]
  %call54.i = call i8* @strcpy(i8* nonnull dereferenceable(1) %arraydecay, i8* nonnull dereferenceable(1) %module.1.i) #3
  %81 = load i8*, i8** %hin, align 8, !tbaa !40
  %tobool260 = icmp eq i8* %81, null
  br i1 %tobool260, label %land.lhs.true261, label %do.end268

land.lhs.true261:                                 ; preds = %do.body258
  %82 = load i32 (i8*, i8**, %struct.video_info_t*, %struct.cli_input_opt_t*)*, i32 (i8*, i8**, %struct.video_info_t*, %struct.cli_input_opt_t*)** getelementptr inbounds (%struct.cli_input_t, %struct.cli_input_t* @cli_input, i32 0, i32 0), align 4, !tbaa !110
  %call263 = call i32 %82(i8* %58, i8** nonnull %hin, %struct.video_info_t* nonnull %info, %struct.cli_input_opt_t* nonnull %input_opt) #3
  %tobool264 = icmp eq i32 %call263, 0
  br i1 %tobool264, label %do.end268, label %if.then265

if.then265:                                       ; preds = %land.lhs.true261
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.62, i32 0, i32 0), i8* %58)
  br label %cleanup542

do.end268:                                        ; preds = %land.lhs.true261, %do.body258
  %sar_width269 = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 8
  %sar_height270 = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 9
  call void @x264_reduce_fraction(i32* nonnull %sar_width269, i32* nonnull %sar_height270) #3
  call void @x264_reduce_fraction(i32* nonnull %fps_num, i32* nonnull %fps_den) #3
  %width = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 4
  %83 = load i32, i32* %width, align 4, !tbaa !111
  %height = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 5
  %84 = load i32, i32* %height, align 4, !tbaa !112
  %85 = load i32, i32* %interlaced, align 4, !tbaa !98
  %tobool275 = icmp eq i32 %85, 0
  %cond276 = select i1 %tobool275, i32 112, i32 105
  %86 = load i32, i32* %sar_width269, align 4, !tbaa !101
  %87 = load i32, i32* %sar_height270, align 4, !tbaa !102
  %88 = load i32, i32* %fps_num, align 4, !tbaa !94
  %89 = load i32, i32* %fps_den, align 4, !tbaa !95
  %90 = load i32, i32* %vfr, align 4, !tbaa !105
  %tobool282 = icmp eq i32 %90, 0
  %cond283 = select i1 %tobool282, i32 99, i32 118
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* nonnull %arraydecay, i32 2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.63, i32 0, i32 0), i32 %83, i32 %84, i32 %cond276, i32 %86, i32 %87, i32 %88, i32 %89, i32 %cond283)
  %91 = load i32, i32* %width, align 4, !tbaa !111
  %cmp286 = icmp slt i32 %91, 1
  %.pre1325 = load i32, i32* %height, align 4, !tbaa !112
  br i1 %cmp286, label %if.then300, label %lor.lhs.false288

lor.lhs.false288:                                 ; preds = %do.end268
  %cmp294 = icmp sgt i32 %91, 16384
  %.off = add i32 %.pre1325, -1
  %92 = icmp ugt i32 %.off, 16383
  %93 = or i1 %cmp294, %92
  br i1 %93, label %if.then300, label %do.end305

if.then300:                                       ; preds = %do.end268, %lor.lhs.false288
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.64, i32 0, i32 0), i32 %91, i32 %.pre1325)
  br label %cleanup542

do.end305:                                        ; preds = %lor.lhs.false288
  %tobool306 = icmp ne i8* %tcfile_name.0, null
  br i1 %tobool306, label %do.body308, label %do.body323

do.body308:                                       ; preds = %do.end305
  %tobool309 = icmp eq i32 %b_user_fps.0, 0
  br i1 %tobool309, label %do.body314, label %if.then310

if.then310:                                       ; preds = %do.body308
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.65, i32 0, i32 0))
  br label %cleanup542

do.body314:                                       ; preds = %do.body308
  %94 = load i32 (i8*, i8**, %struct.video_info_t*, %struct.cli_input_opt_t*)*, i32 (i8*, i8**, %struct.video_info_t*, %struct.cli_input_opt_t*)** getelementptr inbounds (%struct.cli_input_t, %struct.cli_input_t* @timecode_input, i32 0, i32 0), align 4, !tbaa !110
  %call316 = call i32 %94(i8* nonnull %tcfile_name.0, i8** nonnull %hin, %struct.video_info_t* nonnull %info, %struct.cli_input_opt_t* nonnull %input_opt) #3
  %tobool317 = icmp eq i32 %call316, 0
  br i1 %tobool317, label %do.end321, label %if.then318

if.then318:                                       ; preds = %do.body314
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.66, i32 0, i32 0))
  br label %cleanup542

do.end321:                                        ; preds = %do.body314
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(24) bitcast (%struct.cli_input_t* @cli_input to i8*), i8* nonnull align 4 dereferenceable(24) bitcast (%struct.cli_input_t* @timecode_input to i8*), i32 24, i1 false), !tbaa.struct !109
  br label %if.end333

do.body323:                                       ; preds = %do.end305
  %95 = load i32, i32* %vfr, align 4, !tbaa !105
  %tobool325 = icmp ne i32 %95, 0
  %96 = load i8*, i8** %timebase, align 4
  %tobool328 = icmp eq i8* %96, null
  %or.cond = or i1 %tobool325, %tobool328
  br i1 %or.cond, label %if.end333, label %if.then329

if.then329:                                       ; preds = %do.body323
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.67, i32 0, i32 0))
  br label %cleanup542

if.end333:                                        ; preds = %do.body323, %do.end321
  %97 = load i32, i32* %i_sar_width, align 4, !tbaa !99
  %cmp336 = icmp sgt i32 %97, 0
  br i1 %cmp336, label %land.lhs.true338, label %if.end350

land.lhs.true338:                                 ; preds = %if.end333
  %i_sar_height340 = getelementptr inbounds %struct.anon, %struct.anon* %vui, i32 0, i32 0
  %98 = load i32, i32* %i_sar_height340, align 8, !tbaa !100
  %cmp341 = icmp sgt i32 %98, 0
  br i1 %cmp341, label %if.then343, label %if.end350

if.then343:                                       ; preds = %land.lhs.true338
  store i32 %97, i32* %sar_width269, align 4, !tbaa !101
  store i32 %98, i32* %sar_height270, align 4, !tbaa !102
  br label %if.end350

if.end350:                                        ; preds = %if.then343, %land.lhs.true338, %if.end333
  %tobool351 = icmp eq i32 %b_user_fps.0, 0
  br i1 %tobool351, label %if.end357, label %if.then352

if.then352:                                       ; preds = %if.end350
  %99 = load i32, i32* %i_fps_num, align 8, !tbaa !27
  store i32 %99, i32* %fps_num, align 4, !tbaa !94
  %100 = load i32, i32* %i_fps_den, align 4, !tbaa !25
  store i32 %100, i32* %fps_den, align 4, !tbaa !95
  br label %if.end357

if.end357:                                        ; preds = %if.end350, %if.then352
  %101 = load i32, i32* %vfr, align 4, !tbaa !105
  %tobool359 = icmp eq i32 %101, 0
  br i1 %tobool359, label %if.then360, label %if.end363

if.then360:                                       ; preds = %if.end357
  %102 = load i32, i32* %fps_den, align 4, !tbaa !95
  %timebase_num = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 12
  store i32 %102, i32* %timebase_num, align 4, !tbaa !113
  %103 = load i32, i32* %fps_num, align 4, !tbaa !94
  %timebase_den = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 13
  store i32 %103, i32* %timebase_den, align 4, !tbaa !114
  br label %if.end363

if.end363:                                        ; preds = %if.end357, %if.then360
  br i1 %tobool306, label %if.end414, label %land.lhs.true365

land.lhs.true365:                                 ; preds = %if.end363
  %104 = load i8*, i8** %timebase, align 4, !tbaa !79
  %tobool367 = icmp eq i8* %104, null
  br i1 %tobool367, label %if.end414, label %if.then368

if.then368:                                       ; preds = %land.lhs.true365
  %105 = bitcast i64* %i_user_timebase_num to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %105) #3
  %106 = bitcast i64* %i_user_timebase_den to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %106) #3
  %call370 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %104, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.68, i32 0, i32 0), i64* nonnull %i_user_timebase_num, i64* nonnull %i_user_timebase_den) #3
  switch i32 %call370, label %if.then368.do.body387_crit_edge [
    i32 0, label %if.then373
    i32 1, label %if.then380
  ]

if.then368.do.body387_crit_edge:                  ; preds = %if.then368
  %.pre = load i64, i64* %i_user_timebase_den, align 8
  br label %do.body387

if.then373:                                       ; preds = %if.then368
  %107 = load i8*, i8** %timebase, align 4, !tbaa !79
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.69, i32 0, i32 0), i8* %107)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %106) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %105) #3
  br label %cleanup542

if.then380:                                       ; preds = %if.then368
  %timebase_num381 = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 12
  %108 = load i32, i32* %timebase_num381, align 4, !tbaa !113
  %conv382 = zext i32 %108 to i64
  store i64 %conv382, i64* %i_user_timebase_num, align 8, !tbaa !115
  %109 = load i8*, i8** %timebase, align 4, !tbaa !79
  %call384 = call i32 @strtoul(i8* nocapture %109, i8** null, i32 10) #3
  %conv385 = zext i32 %call384 to i64
  store i64 %conv385, i64* %i_user_timebase_den, align 8, !tbaa !115
  br label %do.body387

do.body387:                                       ; preds = %if.then368.do.body387_crit_edge, %if.then380
  %110 = phi i64 [ %.pre, %if.then368.do.body387_crit_edge ], [ %conv385, %if.then380 ]
  %111 = load i64, i64* %i_user_timebase_num, align 8, !tbaa !115
  %112 = or i64 %110, %111
  %113 = icmp ugt i64 %112, 4294967295
  br i1 %113, label %if.then393, label %do.end396

if.then393:                                       ; preds = %do.body387
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.70, i32 0, i32 0))
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %106) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %105) #3
  br label %cleanup542

do.end396:                                        ; preds = %do.body387
  %conv397 = uitofp i64 %110 to double
  %timebase_den398 = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 13
  %114 = load i32, i32* %timebase_den398, align 4, !tbaa !114
  %conv399 = uitofp i32 %114 to double
  %timebase_num400 = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 12
  %115 = load i32, i32* %timebase_num400, align 4, !tbaa !113
  %conv401 = uitofp i32 %115 to double
  %conv402 = uitofp i64 %111 to double
  %116 = fmul fast double %conv401, %conv397
  %117 = fmul fast double %conv399, %conv402
  %mul = fdiv fast double %116, %117
  %timebase_convert_multiplier = getelementptr inbounds %struct.cli_opt_t, %struct.cli_opt_t* %opt, i32 0, i32 6
  store double %mul, double* %timebase_convert_multiplier, align 8, !tbaa !59
  %conv404 = trunc i64 %111 to i32
  store i32 %conv404, i32* %timebase_num400, align 4, !tbaa !113
  %conv406 = trunc i64 %110 to i32
  store i32 %conv406, i32* %timebase_den398, align 4, !tbaa !114
  store i32 1, i32* %vfr, align 4, !tbaa !105
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %106) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %105) #3
  br label %if.end414

if.end414:                                        ; preds = %do.end396, %land.lhs.true365, %if.end363
  %tobool415 = icmp ne i32 %b_user_interlaced.0, 0
  br i1 %tobool415, label %if.then416, label %if.end421

if.then416:                                       ; preds = %if.end414
  %118 = load i32, i32* %b_interlaced, align 8, !tbaa !97
  store i32 %118, i32* %interlaced, align 4, !tbaa !98
  %119 = load i32, i32* %b_tff, align 8, !tbaa !103
  store i32 %119, i32* %tff, align 4, !tbaa !104
  br label %if.end421

if.end421:                                        ; preds = %if.then416, %if.end414
  %120 = load i32, i32* %input_range, align 4, !tbaa !76
  %cmp423 = icmp eq i32 %120, -1
  br i1 %cmp423, label %if.end428, label %if.then425

if.then425:                                       ; preds = %if.end421
  store i32 %120, i32* %fullrange, align 4, !tbaa !96
  br label %if.end428

if.end428:                                        ; preds = %if.end421, %if.then425
  call void @x264_register_vid_filters() #3
  %call.i807 = call i32 @x264_init_vid_filter(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.496, i32 0, i32 0), i8** nonnull %hin, %struct.cli_vid_filter_t* nonnull @filter, %struct.video_info_t* nonnull %info, %struct.x264_param_t* nonnull %param, i8* null) #3
  %tobool.i808 = icmp eq i32 %call.i807, 0
  br i1 %tobool.i808, label %if.end.i811, label %cleanup542

if.end.i811:                                      ; preds = %if.end428
  %call1.i809 = call i32 @x264_init_vid_filter(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.497, i32 0, i32 0), i8** nonnull %hin, %struct.cli_vid_filter_t* nonnull @filter, %struct.video_info_t* nonnull %info, %struct.x264_param_t* nonnull %param, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.498, i32 0, i32 0)) #3
  %tobool2.i810 = icmp eq i32 %call1.i809, 0
  br i1 %tobool2.i810, label %if.end4.i, label %cleanup542

if.end4.i:                                        ; preds = %if.end.i811
  %call5.i = call i32 @x264_init_vid_filter(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.499, i32 0, i32 0), i8** nonnull %hin, %struct.cli_vid_filter_t* nonnull @filter, %struct.video_info_t* nonnull %info, %struct.x264_param_t* nonnull %param, i8* null) #3
  %tobool6.i812 = icmp eq i32 %call5.i, 0
  br i1 %tobool6.i812, label %for.cond.i, label %cleanup542

for.cond.i:                                       ; preds = %if.end4.i, %for.body.i818
  %p.0.i = phi i8* [ %add.ptr24.i, %for.body.i818 ], [ %vid_filters.0, %if.end4.i ]
  %tobool9.i = icmp eq i8* %p.0.i, null
  br i1 %tobool9.i, label %for.end.i, label %land.rhs.i813

land.rhs.i813:                                    ; preds = %for.cond.i
  %121 = load i8, i8* %p.0.i, align 1, !tbaa !56
  %tobool10.i = icmp eq i8 %121, 0
  br i1 %tobool10.i, label %for.end.i, label %for.body.i818

for.body.i818:                                    ; preds = %land.rhs.i813
  %call11.i814 = call i32 @strcspn(i8* nonnull %p.0.i, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.500, i32 0, i32 0)) #14
  %call12.i = call i32 @strlen(i8* nonnull %p.0.i) #14
  %arrayidx.i815 = getelementptr inbounds i8, i8* %p.0.i, i32 %call11.i814
  store i8 0, i8* %arrayidx.i815, align 1, !tbaa !56
  %call13.i = call i32 @strcspn(i8* nonnull %p.0.i, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.501, i32 0, i32 0)) #14
  %arrayidx14.i = getelementptr inbounds i8, i8* %p.0.i, i32 %call13.i
  store i8 0, i8* %arrayidx14.i, align 1, !tbaa !56
  %cmp.i816 = icmp ne i32 %call13.i, %call11.i814
  %conv15.i = zext i1 %cmp.i816 to i32
  %add.i = add nsw i32 %call13.i, %conv15.i
  %add.ptr.i = getelementptr inbounds i8, i8* %p.0.i, i32 %add.i
  %call16.i = call i32 @x264_init_vid_filter(i8* nonnull %p.0.i, i8** nonnull %hin, %struct.cli_vid_filter_t* nonnull @filter, %struct.video_info_t* nonnull %info, %struct.x264_param_t* %param, i8* nonnull %add.ptr.i) #3
  %tobool17.i = icmp eq i32 %call16.i, 0
  %add20.i = add nsw i32 %call11.i814, 1
  %cmp21.i = icmp slt i32 %add20.i, %call12.i
  %cond.i817 = select i1 %cmp21.i, i32 %add20.i, i32 %call12.i
  %add.ptr24.i = getelementptr inbounds i8, i8* %p.0.i, i32 %cond.i817
  br i1 %tobool17.i, label %for.cond.i, label %cleanup542

for.end.i:                                        ; preds = %land.rhs.i813, %for.cond.i
  %i_width.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 7
  %122 = load i32, i32* %i_width.i, align 4, !tbaa !116
  %tobool29.i819 = icmp eq i32 %122, 0
  br i1 %tobool29.i819, label %land.lhs.true.i820, label %if.end34.i

land.lhs.true.i820:                               ; preds = %for.end.i
  %i_height.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 8
  %123 = load i32, i32* %i_height.i, align 8, !tbaa !117
  %tobool30.i = icmp eq i32 %123, 0
  br i1 %tobool30.i, label %if.then31.i, label %if.end34.i

if.then31.i:                                      ; preds = %land.lhs.true.i820
  %124 = load i32, i32* %height, align 4, !tbaa !112
  store i32 %124, i32* %i_height.i, align 8, !tbaa !117
  %125 = load i32, i32* %width, align 4, !tbaa !111
  store i32 %125, i32* %i_width.i, align 4, !tbaa !116
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then31.i, %land.lhs.true.i820, %for.end.i
  %126 = load i32, i32* %csp, align 4, !tbaa !92
  store i32 %126, i32* %i_csp131, align 4, !tbaa !77
  %and.i821 = and i32 %126, 255
  %cmp37.i = icmp eq i32 %output_csp.0, 1
  %cmp40.i = icmp ne i32 %and.i821, 1
  %or.cond.i = and i1 %cmp37.i, %cmp40.i
  br i1 %or.cond.i, label %if.end90.i.sink.split, label %if.else.i822

if.else.i822:                                     ; preds = %if.end34.i
  %cmp44.i = icmp eq i32 %output_csp.0, 2
  %and.off195.i = add nsw i32 %and.i821, -2
  %127 = icmp ugt i32 %and.off195.i, 3
  %or.cond197.i = and i1 %cmp44.i, %127
  br i1 %or.cond197.i, label %if.end90.i.sink.split, label %if.else53.i

if.else53.i:                                      ; preds = %if.else.i822
  %cmp54.i = icmp eq i32 %output_csp.0, 6
  %and.off194.i = add nsw i32 %and.i821, -6
  %128 = icmp ugt i32 %and.off194.i, 5
  %or.cond199.i = and i1 %cmp54.i, %128
  br i1 %or.cond199.i, label %if.end90.i.sink.split, label %if.else64.i

if.else64.i:                                      ; preds = %if.else53.i
  %cmp65.i = icmp ne i32 %output_csp.0, 12
  %129 = and i32 %126, 254
  %130 = icmp eq i32 %129, 12
  %or.cond201.i = or i1 %cmp65.i, %130
  br i1 %or.cond201.i, label %if.else75.i, label %if.end90.i.sink.split

if.else75.i:                                      ; preds = %if.else64.i
  %cmp76.i = icmp eq i32 %output_csp.0, 16
  %and.off.i = add nsw i32 %and.i821, -14
  %131 = icmp ugt i32 %and.off.i, 2
  %or.cond203.i = and i1 %cmp76.i, %131
  br i1 %or.cond203.i, label %if.end90.i.sink.split, label %if.end90.i

if.end90.i.sink.split:                            ; preds = %if.else75.i, %if.else64.i, %if.else53.i, %if.else.i822, %if.end34.i
  %.sink = phi i32 [ 1, %if.end34.i ], [ 2, %if.else.i822 ], [ 6, %if.else53.i ], [ 12, %if.else64.i ], [ 16, %if.else75.i ]
  store i32 %.sink, i32* %i_csp131, align 4, !tbaa !77
  br label %if.end90.i

if.end90.i:                                       ; preds = %if.end90.i.sink.split, %if.else75.i
  %132 = phi i32 [ %126, %if.else75.i ], [ %.sink, %if.end90.i.sink.split ]
  %and92.i = and i32 %126, 8192
  %or.i = or i32 %132, %and92.i
  store i32 %or.i, i32* %i_csp131, align 4, !tbaa !77
  %133 = load i32, i32* %b_fullrange, align 8, !tbaa !74
  %cmp94.i = icmp eq i32 %133, -1
  br i1 %cmp94.i, label %if.then96.i, label %if.end99.i

if.then96.i:                                      ; preds = %if.end90.i
  %134 = load i32, i32* %fullrange, align 4, !tbaa !96
  store i32 %134, i32* %b_fullrange, align 8, !tbaa !74
  br label %if.end99.i

if.end99.i:                                       ; preds = %if.then96.i, %if.end90.i
  %call100.i = call i32 @x264_init_vid_filter(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.497, i32 0, i32 0), i8** nonnull %hin, %struct.cli_vid_filter_t* nonnull @filter, %struct.video_info_t* nonnull %info, %struct.x264_param_t* nonnull %param, i8* null) #3
  %tobool101.i = icmp eq i32 %call100.i, 0
  br i1 %tobool101.i, label %init_vid_filters.exit, label %cleanup542

init_vid_filters.exit:                            ; preds = %if.end99.i
  %135 = getelementptr inbounds [20 x i8], [20 x i8]* %args.i, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %135) #3
  %136 = getelementptr inbounds [20 x i8], [20 x i8]* %name.i, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %136) #3
  %137 = load i32, i32* %i_bitdepth, align 8, !tbaa !83
  %call104.i = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %135, i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.502, i32 0, i32 0), i32 %137) #3
  %138 = load i32, i32* %i_bitdepth, align 8, !tbaa !83
  %call107.i = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %136, i8* nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.503, i32 0, i32 0), i32 %138) #3
  %call110.i = call i32 @x264_init_vid_filter(i8* nonnull %136, i8** nonnull %hin, %struct.cli_vid_filter_t* nonnull @filter, %struct.video_info_t* nonnull %info, %struct.x264_param_t* nonnull %param, i8* nonnull %135) #3
  %tobool111.i = icmp eq i32 %call110.i, 0
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %136) #3
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %135) #3
  br i1 %tobool111.i, label %if.end433, label %cleanup542

if.end433:                                        ; preds = %init_vid_filters.exit
  %139 = load i32, i32* %vfr, align 4, !tbaa !105
  store i32 %139, i32* %b_vfr_input, align 8, !tbaa !22
  %140 = load i32, i32* %fps_num, align 4, !tbaa !94
  store i32 %140, i32* %i_fps_num, align 8, !tbaa !27
  %141 = load i32, i32* %fps_den, align 4, !tbaa !95
  store i32 %141, i32* %i_fps_den, align 4, !tbaa !25
  %timebase_num440 = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 12
  %142 = load i32, i32* %timebase_num440, align 4, !tbaa !113
  %i_timebase_num = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 66
  store i32 %142, i32* %i_timebase_num, align 8, !tbaa !26
  %timebase_den441 = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 13
  %143 = load i32, i32* %timebase_den441, align 4, !tbaa !114
  %i_timebase_den = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 67
  store i32 %143, i32* %i_timebase_den, align 4, !tbaa !30
  %144 = load i32, i32* %sar_width269, align 4, !tbaa !101
  store i32 %144, i32* %i_sar_width, align 4, !tbaa !99
  %145 = load i32, i32* %sar_height270, align 4, !tbaa !102
  %i_sar_height447 = getelementptr inbounds %struct.anon, %struct.anon* %vui, i32 0, i32 0
  store i32 %145, i32* %i_sar_height447, align 8, !tbaa !100
  %num_frames = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 7
  %146 = load i32, i32* %num_frames, align 4, !tbaa !118
  %147 = load i32, i32* %i_seek, align 4, !tbaa !41
  %sub449 = sub nsw i32 %146, %147
  %cmp450 = icmp sgt i32 %sub449, 0
  %spec.select703 = select i1 %cmp450, i32 %sub449, i32 0
  store i32 %spec.select703, i32* %num_frames, align 4, !tbaa !118
  %tobool461 = icmp slt i32 %sub449, 1
  %.pre1324 = load i32, i32* %i_frame_total, align 8, !tbaa !37
  %cmp465 = icmp slt i32 %.pre1324, %spec.select703
  %or.cond1516 = or i1 %tobool461, %cmp465
  %cmp469 = icmp sgt i32 %.pre1324, 0
  %or.cond1517 = and i1 %or.cond1516, %cmp469
  %spec.store.select = select i1 %or.cond1517, i32 %.pre1324, i32 %spec.select703
  store i32 %spec.store.select, i32* %num_frames, align 4
  %spec.select1518 = select i1 %or.cond1517, i32 %.pre1324, i32 %spec.select703
  store i32 %spec.select1518, i32* %i_frame_total, align 8, !tbaa !37
  %148 = load i32, i32* %interlaced, align 4
  %tobool480 = icmp eq i32 %148, 0
  %or.cond704 = or i1 %tobool415, %tobool480
  br i1 %or.cond704, label %if.end482, label %if.then481

if.then481:                                       ; preds = %if.end433
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.71, i32 0, i32 0))
  br label %if.end482

if.end482:                                        ; preds = %if.then481, %if.end433
  %149 = load i32, i32* %i_csp131, align 4, !tbaa !77
  %and = and i32 %149, 255
  %and.off = add nsw i32 %and, -14
  %150 = icmp ult i32 %and.off, 3
  br i1 %150, label %if.then490, label %if.end506

if.then490:                                       ; preds = %if.end482
  %151 = load i32, i32* %output_range, align 4, !tbaa !75
  %cmp492 = icmp eq i32 %151, -1
  br i1 %cmp492, label %do.body498.thread, label %do.body498

do.body498.thread:                                ; preds = %if.then490
  store i32 1, i32* %b_fullrange, align 8, !tbaa !74
  br label %if.end506

do.body498:                                       ; preds = %if.then490
  %.pr913 = load i32, i32* %b_fullrange, align 8, !tbaa !74
  %tobool501 = icmp eq i32 %.pr913, 0
  br i1 %tobool501, label %if.then502, label %if.end506

if.then502:                                       ; preds = %do.body498
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.72, i32 0, i32 0))
  br label %cleanup542

if.end506:                                        ; preds = %do.body498.thread, %do.body498, %if.end482
  %tobool507 = icmp eq i32 %b_user_ref.0, 0
  br i1 %tobool507, label %if.then508, label %cleanup542

if.then508:                                       ; preds = %if.end506
  %152 = load i32, i32* %i_width.i, align 4, !tbaa !116
  %add509 = add nsw i32 %152, 15
  %shr = ashr i32 %add509, 4
  %i_height = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 8
  %153 = load i32, i32* %i_height, align 8, !tbaa !117
  %add510 = add nsw i32 %153, 15
  %shr511 = ashr i32 %add510, 4
  %mul512 = mul nsw i32 %shr511, %shr
  %154 = load i8, i8* getelementptr inbounds ([0 x %struct.x264_level_t], [0 x %struct.x264_level_t]* @x264_levels, i32 0, i32 0, i32 0), align 4, !tbaa !119
  %cmp5171126 = icmp eq i8 %154, 0
  br i1 %cmp5171126, label %cleanup542, label %for.body520.lr.ph

for.body520.lr.ph:                                ; preds = %if.then508
  %i_level_idc = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 11
  %155 = load i32, i32* %i_level_idc, align 4, !tbaa !122
  br label %for.body520

for.body520:                                      ; preds = %for.body520.lr.ph, %for.inc536
  %156 = phi i8 [ %154, %for.body520.lr.ph ], [ %160, %for.inc536 ]
  %i513.01127 = phi i32 [ 0, %for.body520.lr.ph ], [ %inc537, %for.inc536 ]
  %conv516 = zext i8 %156 to i32
  %cmp524 = icmp eq i32 %155, %conv516
  br i1 %cmp524, label %while.cond.preheader, label %for.inc536

while.cond.preheader:                             ; preds = %for.body520
  %i_frame_reference = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 15
  %157 = load i32, i32* %i_frame_reference, align 4, !tbaa !123
  %mul5271122 = mul nsw i32 %mul512, %157
  %dpb = getelementptr inbounds [0 x %struct.x264_level_t], [0 x %struct.x264_level_t]* @x264_levels, i32 0, i32 %i513.01127, i32 3
  %158 = load i32, i32* %dpb, align 4, !tbaa !124
  %cmp5291123 = icmp sgt i32 %mul5271122, %158
  %cmp5321124 = icmp sgt i32 %157, 1
  %or.cond7051125 = and i1 %cmp5321124, %cmp5291123
  br i1 %or.cond7051125, label %while.body, label %cleanup542

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %159 = phi i32 [ %dec, %while.body ], [ %157, %while.cond.preheader ]
  %dec = add nsw i32 %159, -1
  %mul527 = mul nsw i32 %mul512, %dec
  %cmp529 = icmp sgt i32 %mul527, %158
  %cmp532 = icmp sgt i32 %159, 2
  %or.cond705 = and i1 %cmp532, %cmp529
  br i1 %or.cond705, label %while.body, label %while.cond.cleanup542.loopexit_crit_edge

for.inc536:                                       ; preds = %for.body520
  %inc537 = add nuw nsw i32 %i513.01127, 1
  %level_idc = getelementptr inbounds [0 x %struct.x264_level_t], [0 x %struct.x264_level_t]* @x264_levels, i32 0, i32 %inc537, i32 0
  %160 = load i8, i8* %level_idc, align 4, !tbaa !119
  %cmp517 = icmp eq i8 %160, 0
  br i1 %cmp517, label %cleanup542, label %for.body520

while.cond.cleanup542.loopexit_crit_edge:         ; preds = %while.body
  store i32 %dec, i32* %i_frame_reference, align 4, !tbaa !123
  br label %cleanup542

cleanup542:                                       ; preds = %for.cond, %for.body.i818, %for.inc536, %if.then508, %while.cond.preheader, %while.cond.cleanup542.loopexit_crit_edge, %if.end99.i, %if.end4.i, %if.end.i811, %if.end428, %if.then30.i, %if.then49.i, %if.then212, %if.then227, %if.then265, %if.then300, %if.then310, %if.then318, %if.then329, %if.then502, %if.end200, %if.then393, %if.then373, %init_vid_filters.exit, %if.end506, %cleanup192.thread, %select_output.exit, %land.lhs.true16
  %retval.6 = phi i32 [ -1, %land.lhs.true16 ], [ -1, %if.then227 ], [ -1, %if.then300 ], [ -1, %if.then310 ], [ -1, %if.then318 ], [ -1, %if.then502 ], [ -1, %if.then373 ], [ -1, %if.then329 ], [ -1, %if.then265 ], [ -1, %if.then212 ], [ -1, %if.end200 ], [ -1, %select_output.exit ], [ -1, %if.then393 ], [ -1, %init_vid_filters.exit ], [ 0, %if.end506 ], [ -1, %cleanup192.thread ], [ -1, %if.then49.i ], [ -1, %if.then30.i ], [ -1, %if.end428 ], [ -1, %if.end.i811 ], [ -1, %if.end4.i ], [ -1, %if.end99.i ], [ 0, %while.cond.cleanup542.loopexit_crit_edge ], [ 0, %while.cond.preheader ], [ 0, %if.then508 ], [ 0, %for.inc536 ], [ -1, %for.body.i818 ], [ -1, %for.cond ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #3
  call void @llvm.lifetime.end.p0i8(i64 44, i8* nonnull %1) #3
  call void @llvm.lifetime.end.p0i8(i64 944, i8* nonnull %0) #3
  ret i32 %retval.6

land.lhs.true.i776.1:                             ; preds = %land.lhs.true.i776
  %call.i774.1 = call i32 @strcasecmp(i8* %42, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0)) #14
  %tobool4.i775.1 = icmp eq i32 %call.i774.1, 0
  br i1 %tobool4.i775.1, label %do.end152, label %land.lhs.true.i776.2

land.lhs.true.i776.2:                             ; preds = %land.lhs.true.i776.1
  %call.i774.2 = call i32 @strcasecmp(i8* %42, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0)) #14
  %tobool4.i775.2 = icmp eq i32 %call.i774.2, 0
  br i1 %tobool4.i775.2, label %do.end152, label %for.inc.i780.2

for.inc.i780.2:                                   ; preds = %land.lhs.true.i776.2
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.56, i32 0, i32 0), i8* %42)
  br label %cleanup192.thread

land.lhs.true.i764.1:                             ; preds = %land.lhs.true.i764
  %call.i762.1 = call i32 @strcasecmp(i8* %41, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0)) #14
  %tobool4.i763.1 = icmp eq i32 %call.i762.1, 0
  br i1 %tobool4.i763.1, label %do.end140, label %land.lhs.true.i764.2

land.lhs.true.i764.2:                             ; preds = %land.lhs.true.i764.1
  %call.i762.2 = call i32 @strcasecmp(i8* %41, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0)) #14
  %tobool4.i763.2 = icmp eq i32 %call.i762.2, 0
  br i1 %tobool4.i763.2, label %do.end140, label %for.inc.i768.2

for.inc.i768.2:                                   ; preds = %land.lhs.true.i764.2
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.55, i32 0, i32 0), i8* %41)
  br label %cleanup192.thread

land.lhs.true.i752.1:                             ; preds = %land.lhs.true.i752
  %call.i750.1 = call i32 @strcasecmp(i8* %39, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0)) #14
  %tobool4.i751.1 = icmp eq i32 %call.i750.1, 0
  br i1 %tobool4.i751.1, label %do.end130, label %land.lhs.true.i752.2

land.lhs.true.i752.2:                             ; preds = %land.lhs.true.i752.1
  %call.i750.2 = call i32 @strcasecmp(i8* %39, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0)) #14
  %tobool4.i751.2 = icmp eq i32 %call.i750.2, 0
  br i1 %tobool4.i751.2, label %do.end130, label %land.lhs.true.i752.3

land.lhs.true.i752.3:                             ; preds = %land.lhs.true.i752.2
  %call.i750.3 = call i32 @strcasecmp(i8* %39, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0)) #14
  %tobool4.i751.3 = icmp eq i32 %call.i750.3, 0
  br i1 %tobool4.i751.3, label %do.end130, label %land.lhs.true.i752.4

land.lhs.true.i752.4:                             ; preds = %land.lhs.true.i752.3
  %call.i750.4 = call i32 @strcasecmp(i8* %39, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0)) #14
  %tobool4.i751.4 = icmp eq i32 %call.i750.4, 0
  br i1 %tobool4.i751.4, label %do.end130, label %for.inc.i756.4

for.inc.i756.4:                                   ; preds = %land.lhs.true.i752.4
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.54, i32 0, i32 0), i8* %39)
  br label %cleanup192.thread

land.lhs.true.i738.1:                             ; preds = %land.lhs.true.i738
  %call.i736.1 = call i32 @strcasecmp(i8* %32, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0)) #14
  %tobool4.i737.1 = icmp eq i32 %call.i736.1, 0
  br i1 %tobool4.i737.1, label %parse_enum_value.exit744.thread, label %land.lhs.true.i738.2

land.lhs.true.i738.2:                             ; preds = %land.lhs.true.i738.1
  %call.i736.2 = call i32 @strcasecmp(i8* %32, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0)) #14
  %tobool4.i737.2 = icmp eq i32 %call.i736.2, 0
  br i1 %tobool4.i737.2, label %parse_enum_value.exit744.thread, label %land.lhs.true.i738.3

land.lhs.true.i738.3:                             ; preds = %land.lhs.true.i738.2
  %call.i736.3 = call i32 @strcasecmp(i8* %32, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0)) #14
  %tobool4.i737.3 = icmp eq i32 %call.i736.3, 0
  br i1 %tobool4.i737.3, label %parse_enum_value.exit744.thread, label %land.lhs.true.i738.4

land.lhs.true.i738.4:                             ; preds = %land.lhs.true.i738.3
  %call.i736.4 = call i32 @strcasecmp(i8* %32, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0)) #14
  %tobool4.i737.4 = icmp eq i32 %call.i736.4, 0
  br i1 %tobool4.i737.4, label %parse_enum_value.exit744.thread, label %land.lhs.true.i738.5

land.lhs.true.i738.5:                             ; preds = %land.lhs.true.i738.4
  %call.i736.5 = call i32 @strcasecmp(i8* %32, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0)) #14
  %tobool4.i737.5 = icmp eq i32 %call.i736.5, 0
  br i1 %tobool4.i737.5, label %parse_enum_value.exit744.thread, label %land.lhs.true.i738.6

land.lhs.true.i738.6:                             ; preds = %land.lhs.true.i738.5
  %call.i736.6 = call i32 @strcasecmp(i8* %32, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0)) #14
  %tobool4.i737.6 = icmp eq i32 %call.i736.6, 0
  br i1 %tobool4.i737.6, label %parse_enum_value.exit744.thread, label %for.inc.i742.6

for.inc.i742.6:                                   ; preds = %land.lhs.true.i738.6
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.53, i32 0, i32 0), i8* %32)
  br label %cleanup192.thread

land.lhs.true.i726.1:                             ; preds = %land.lhs.true.i726
  %call.i724.1 = call i32 @strcasecmp(i8* %26, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0)) #14
  %tobool4.i725.1 = icmp eq i32 %call.i724.1, 0
  br i1 %tobool4.i725.1, label %if.then81, label %land.lhs.true.i726.2

land.lhs.true.i726.2:                             ; preds = %land.lhs.true.i726.1
  %call.i724.2 = call i32 @strcasecmp(i8* %26, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0)) #14
  %tobool4.i725.2 = icmp eq i32 %call.i724.2, 0
  br i1 %tobool4.i725.2, label %if.then81, label %land.lhs.true.i726.3

land.lhs.true.i726.3:                             ; preds = %land.lhs.true.i726.2
  %call.i724.3 = call i32 @strcasecmp(i8* %26, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0)) #14
  %tobool4.i725.3 = icmp eq i32 %call.i724.3, 0
  br i1 %tobool4.i725.3, label %if.then81, label %land.lhs.true.i726.4

land.lhs.true.i726.4:                             ; preds = %land.lhs.true.i726.3
  %call.i724.4 = call i32 @strcasecmp(i8* %26, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0)) #14
  %tobool4.i725.4 = icmp eq i32 %call.i724.4, 0
  br i1 %tobool4.i725.4, label %if.then81, label %for.inc.i730.4

for.inc.i730.4:                                   ; preds = %land.lhs.true.i726.4
  %call.i732 = call i32 @strtol(i8* nocapture nonnull %26, i8** null, i32 10) #3
  br label %if.end84

land.lhs.true.i713.1:                             ; preds = %land.lhs.true.i713
  %call.i711.1 = call i32 @strcasecmp(i8* %19, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0)) #14
  %tobool4.i712.1 = icmp eq i32 %call.i711.1, 0
  br i1 %tobool4.i712.1, label %cleanup192, label %land.lhs.true.i713.2

land.lhs.true.i713.2:                             ; preds = %land.lhs.true.i713.1
  %call.i711.2 = call i32 @strcasecmp(i8* %19, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0)) #14
  %tobool4.i712.2 = icmp eq i32 %call.i711.2, 0
  br i1 %tobool4.i712.2, label %cleanup192, label %for.inc.i717.2

for.inc.i717.2:                                   ; preds = %land.lhs.true.i713.2
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.47, i32 0, i32 0), i8* %19)
  br label %cleanup192.thread

land.lhs.true.i.1:                                ; preds = %land.lhs.true.i
  %call.i707.1 = call i32 @strcasecmp(i8* %18, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0)) #14
  %tobool4.i.1 = icmp eq i32 %call.i707.1, 0
  br i1 %tobool4.i.1, label %cleanup192, label %land.lhs.true.i.2

land.lhs.true.i.2:                                ; preds = %land.lhs.true.i.1
  %call.i707.2 = call i32 @strcasecmp(i8* %18, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0)) #14
  %tobool4.i.2 = icmp eq i32 %call.i707.2, 0
  br i1 %tobool4.i.2, label %cleanup192, label %land.lhs.true.i.3

land.lhs.true.i.3:                                ; preds = %land.lhs.true.i.2
  %call.i707.3 = call i32 @strcasecmp(i8* %18, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0)) #14
  %tobool4.i.3 = icmp eq i32 %call.i707.3, 0
  br i1 %tobool4.i.3, label %cleanup192, label %for.inc.i.3

for.inc.i.3:                                      ; preds = %land.lhs.true.i.3
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.46, i32 0, i32 0), i8* %18)
  br label %cleanup192.thread
}

; Function Attrs: nounwind
declare dso_local void (i32)* @signal(i32, void (i32)*) local_unnamed_addr #7

; Function Attrs: nofree norecurse nounwind
define internal void @sigint_handler(i32 %a) #8 {
entry:
  store volatile i32 1, i32* @b_ctrl_c, align 4, !tbaa !2
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

declare dso_local void @x264_param_cleanup(%struct.x264_param_t*) local_unnamed_addr #6

; Function Attrs: nounwind
declare dso_local i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare dso_local i32 @strcasecmp(i8* nocapture, i8* nocapture) local_unnamed_addr #5

declare dso_local i32 @x264_param_default_preset(%struct.x264_param_t*, i8*, i8*) local_unnamed_addr #6

; Function Attrs: nounwind
define internal fastcc void @help(%struct.x264_param_t* readonly %defaults, i32 %longhelp) unnamed_addr #0 {
entry:
  %buf = alloca [200 x i8], align 8
  %0 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %0) #3
  %call = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([598 x i8], [598 x i8]* @.str.240, i32 0, i32 0), i32 164, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.241, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.242, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.242, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.242, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.242, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.243, i32 0, i32 0))
  %puts = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @str, i32 0, i32 0))
  %putchar = tail call i32 @putchar(i32 10)
  %puts1034 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([29 x i8], [29 x i8]* @str.526, i32 0, i32 0))
  %puts1035 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([46 x i8], [46 x i8]* @str.527, i32 0, i32 0))
  %putchar1036 = tail call i32 @putchar(i32 10)
  %puts1037 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([43 x i8], [43 x i8]* @str.528, i32 0, i32 0))
  %puts1038 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([61 x i8], [61 x i8]* @str.529, i32 0, i32 0))
  %puts1039 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([61 x i8], [61 x i8]* @str.530, i32 0, i32 0))
  %putchar1040 = tail call i32 @putchar(i32 10)
  %puts1041 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @str.531, i32 0, i32 0))
  %puts1042 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([44 x i8], [44 x i8]* @str.532, i32 0, i32 0))
  %putchar1043 = tail call i32 @putchar(i32 10)
  %puts1044 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([60 x i8], [60 x i8]* @str.533, i32 0, i32 0))
  %puts1045 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([66 x i8], [66 x i8]* @str.534, i32 0, i32 0))
  %putchar1046 = tail call i32 @putchar(i32 10)
  %puts1047 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([59 x i8], [59 x i8]* @str.535, i32 0, i32 0))
  %puts1048 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([71 x i8], [71 x i8]* @str.536, i32 0, i32 0))
  %putchar1049 = tail call i32 @putchar(i32 10)
  %puts1050 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @str.537, i32 0, i32 0))
  %putchar1051 = tail call i32 @putchar(i32 10)
  %puts1052 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([125 x i8], [125 x i8]* @str.538, i32 0, i32 0))
  %cmp = icmp eq i32 %longhelp, 2
  br i1 %cmp, label %if.then40, label %if.else42

if.then40:                                        ; preds = %entry
  %puts1179 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([950 x i8], [950 x i8]* @str.647, i32 0, i32 0))
  %puts10532103 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([143 x i8], [143 x i8]* @str.539, i32 0, i32 0))
  %puts1178 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([2521 x i8], [2521 x i8]* @str.646, i32 0, i32 0))
  %puts10552104 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([339 x i8], [339 x i8]* @str.541, i32 0, i32 0))
  %puts1177 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([1604 x i8], [1604 x i8]* @str.645, i32 0, i32 0))
  br label %if.end47.sink.split

if.else42:                                        ; preds = %entry
  %1 = bitcast [200 x i8]* %buf to i64*
  store i64 7308895159548338530, i64* %1, align 8
  %p.025.i.ptr.1 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 8
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 8 dereferenceable(3) %p.025.i.ptr.1, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.425, i32 0, i32 0), i32 3, i1 false) #3
  %p.1.i.ptr.1 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 10
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 2 dereferenceable(5) %p.1.i.ptr.1, i8* nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i32 5, i1 false) #3
  %p.025.i.ptr.2 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 14
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 2 dereferenceable(3) %p.025.i.ptr.2, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.425, i32 0, i32 0), i32 3, i1 false) #3
  %p.1.i.ptr.2 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 16
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 8 dereferenceable(5) %p.1.i.ptr.2, i8* nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i32 5, i1 false) #3
  %p.025.i.ptr.3 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 20
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(3) %p.025.i.ptr.3, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.425, i32 0, i32 0), i32 3, i1 false) #3
  %p.1.i.ptr.3 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 22
  %2 = bitcast i8* %p.1.i.ptr.3 to i64*
  store i64 14128949506828648, i64* %2, align 2
  %p.025.i.ptr.4 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 29
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 dereferenceable(3) %p.025.i.ptr.4, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.425, i32 0, i32 0), i32 3, i1 false) #3
  %p.1.i.ptr.4 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 31
  %3 = bitcast i8* %p.1.i.ptr.4 to i64*
  store i64 14694098483505512, i64* %3, align 1
  %call24 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @.str.260, i32 0, i32 0), i8* nonnull %0)
  %puts1053 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([143 x i8], [143 x i8]* @str.539, i32 0, i32 0))
  %puts1054 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([149 x i8], [149 x i8]* @str.540, i32 0, i32 0))
  %puts1055 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([339 x i8], [339 x i8]* @str.541, i32 0, i32 0))
  %puts1056 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([215 x i8], [215 x i8]* @str.542, i32 0, i32 0))
  %cmp43 = icmp sgt i32 %longhelp, 0
  br i1 %cmp43, label %if.end47.sink.split, label %if.end47

if.end47.sink.split:                              ; preds = %if.else42, %if.then40
  %.sink = phi i8* [ getelementptr inbounds ([286 x i8], [286 x i8]* @str.644, i32 0, i32 0), %if.then40 ], [ getelementptr inbounds ([72 x i8], [72 x i8]* @str.643, i32 0, i32 0), %if.else42 ]
  %puts1175 = call i32 @puts(i8* nonnull dereferenceable(1) %.sink)
  br label %if.end47

if.end47:                                         ; preds = %if.end47.sink.split, %if.else42
  %putchar1057 = call i32 @putchar(i32 10)
  %puts1058 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @str.543, i32 0, i32 0))
  %putchar1059 = call i32 @putchar(i32 10)
  %i_keyint_max = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %defaults, i32 0, i32 17
  %4 = load i32, i32* %i_keyint_max, align 4, !tbaa !125
  %call51 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([62 x i8], [62 x i8]* @.str.270, i32 0, i32 0), i32 %4)
  br i1 %cmp, label %if.end67.thread, label %if.end67

if.end67.thread:                                  ; preds = %if.end47
  %puts1174 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([54 x i8], [54 x i8]* @str.642, i32 0, i32 0))
  %puts1173 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([64 x i8], [64 x i8]* @str.641, i32 0, i32 0))
  %i_scenecut_threshold = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %defaults, i32 0, i32 19
  %5 = load i32, i32* %i_scenecut_threshold, align 4, !tbaa !126
  %call62 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([78 x i8], [78 x i8]* @.str.273, i32 0, i32 0), i32 %5)
  %puts1172 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([79 x i8], [79 x i8]* @str.640, i32 0, i32 0))
  br label %if.end75

if.end67:                                         ; preds = %if.end47
  %cmp68 = icmp sgt i32 %longhelp, 0
  br i1 %cmp68, label %if.end75, label %for.inc.i1795.6

if.end75:                                         ; preds = %if.end67, %if.end67.thread
  %i_bframe = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %defaults, i32 0, i32 21
  %6 = load i32, i32* %i_bframe, align 4, !tbaa !127
  %call70 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([71 x i8], [71 x i8]* @.str.275, i32 0, i32 0), i32 %6)
  %i_bframe_adaptive = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %defaults, i32 0, i32 22
  %7 = load i32, i32* %i_bframe_adaptive, align 8, !tbaa !128
  %call74 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([315 x i8], [315 x i8]* @.str.276, i32 0, i32 0), i32 %7)
  br i1 %cmp, label %if.then77, label %if.then81

if.then77:                                        ; preds = %if.end75
  %i_bframe_bias = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %defaults, i32 0, i32 23
  %8 = load i32, i32* %i_bframe_bias, align 4, !tbaa !129
  %call78 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([75 x i8], [75 x i8]* @.str.277, i32 0, i32 0), i32 %8)
  br label %if.then81

if.then81:                                        ; preds = %if.end75, %if.then77
  %i_bframe_pyramid = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %defaults, i32 0, i32 24
  %9 = load i32, i32* %i_bframe_pyramid, align 8, !tbaa !130
  %10 = icmp ult i32 %9, 3
  br i1 %10, label %land.lhs.true2.i, label %if.end104

land.lhs.true2.i:                                 ; preds = %if.then81
  %arrayidx3.i = getelementptr inbounds [4 x i8*], [4 x i8*]* @x264_b_pyramid_names, i32 0, i32 %9
  %11 = load i8*, i8** %arrayidx3.i, align 4, !tbaa !6
  %12 = load i8, i8* %11, align 1, !tbaa !56
  %tobool4.i = icmp eq i8 %12, 0
  %spec.select.i = select i1 %tobool4.i, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.427, i32 0, i32 0), i8* %11
  br label %if.end104

if.end104:                                        ; preds = %land.lhs.true2.i, %if.then81
  %call821754 = phi i8* [ %spec.select.i, %land.lhs.true2.i ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.427, i32 0, i32 0), %if.then81 ]
  %call83 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([274 x i8], [274 x i8]* @.str.278, i32 0, i32 0), i8* %call821754)
  %puts1171 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([123 x i8], [123 x i8]* @str.639, i32 0, i32 0))
  %puts1170 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([44 x i8], [44 x i8]* @str.638, i32 0, i32 0))
  %i_frame_reference = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %defaults, i32 0, i32 15
  %13 = load i32, i32* %i_frame_reference, align 4, !tbaa !123
  %call95 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([63 x i8], [63 x i8]* @.str.281, i32 0, i32 0), i32 %13)
  %puts1169 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([50 x i8], [50 x i8]* @str.637, i32 0, i32 0))
  %i_deblocking_filter_alphac0 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %defaults, i32 0, i32 30
  %14 = load i32, i32* %i_deblocking_filter_alphac0, align 8, !tbaa !131
  %i_deblocking_filter_beta = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %defaults, i32 0, i32 31
  %15 = load i32, i32* %i_deblocking_filter_beta, align 4, !tbaa !132
  %call103 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([62 x i8], [62 x i8]* @.str.283, i32 0, i32 0), i32 %14, i32 %15)
  br i1 %cmp, label %if.then115, label %for.inc.i1795.6.sink.split

if.then115:                                       ; preds = %if.end104
  %puts1168 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([157 x i8], [157 x i8]* @str.636, i32 0, i32 0))
  %puts1166 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([149 x i8], [149 x i8]* @str.634, i32 0, i32 0))
  %puts1165 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([71 x i8], [71 x i8]* @str.633, i32 0, i32 0))
  %puts1164 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([82 x i8], [82 x i8]* @str.632, i32 0, i32 0))
  %puts1163 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([82 x i8], [82 x i8]* @str.631, i32 0, i32 0))
  br label %for.inc.i1795.6.sink.split

if.then140:                                       ; preds = %for.inc.i1795.6
  %puts1161 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([225 x i8], [225 x i8]* @str.629, i32 0, i32 0))
  %puts1160 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([762 x i8], [762 x i8]* @str.628, i32 0, i32 0))
  br label %if.end146

if.end146:                                        ; preds = %for.inc.i1795.6, %if.then140
  %putchar1062 = call i32 @putchar(i32 10)
  %puts1063 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @str.546, i32 0, i32 0))
  %putchar1064 = call i32 @putchar(i32 10)
  br i1 %cmp6821082124, label %if.then151, label %if.end161.critedge

if.then151:                                       ; preds = %if.end146
  %call152 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([68 x i8], [68 x i8]* @.str.297, i32 0, i32 0), i32 81)
  %puts1065 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([51 x i8], [51 x i8]* @str.547, i32 0, i32 0))
  %f_rf_constant = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %defaults, i32 0, i32 52, i32 6
  %16 = load float, float* %f_rf_constant, align 8, !tbaa !133
  %conv = fpext float %16 to double
  %call155 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([64 x i8], [64 x i8]* @.str.299, i32 0, i32 0), i32 -12, double %conv)
  %i_lookahead = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %defaults, i32 0, i32 52, i32 18
  %17 = load i32, i32* %i_lookahead, align 8, !tbaa !134
  %call160 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([78 x i8], [78 x i8]* @.str.300, i32 0, i32 0), i32 %17)
  br label %if.end161

if.end161.critedge:                               ; preds = %if.end146
  %puts1065.c = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([51 x i8], [51 x i8]* @str.547, i32 0, i32 0))
  %f_rf_constant.c = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %defaults, i32 0, i32 52, i32 6
  %18 = load float, float* %f_rf_constant.c, align 8, !tbaa !133
  %conv.c = fpext float %18 to double
  %call155.c = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([64 x i8], [64 x i8]* @.str.299, i32 0, i32 0), i32 -12, double %conv.c)
  br label %if.end161

if.end161:                                        ; preds = %if.end161.critedge, %if.then151
  %i_vbv_max_bitrate = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %defaults, i32 0, i32 52, i32 9
  %19 = load i32, i32* %i_vbv_max_bitrate, align 4, !tbaa !135
  %call163 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([63 x i8], [63 x i8]* @.str.301, i32 0, i32 0), i32 %19)
  %i_vbv_buffer_size = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %defaults, i32 0, i32 52, i32 10
  %20 = load i32, i32* %i_vbv_buffer_size, align 8, !tbaa !136
  %call165 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([70 x i8], [70 x i8]* @.str.302, i32 0, i32 0), i32 %20)
  br i1 %cmp, label %if.then168, label %if.end231

if.then168:                                       ; preds = %if.end161
  %f_vbv_buffer_init = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %defaults, i32 0, i32 52, i32 11
  %21 = load float, float* %f_vbv_buffer_init, align 4, !tbaa !137
  %conv170 = fpext float %21 to double
  %call171 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([67 x i8], [67 x i8]* @.str.303, i32 0, i32 0), double %conv170)
  %puts1159 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([127 x i8], [127 x i8]* @str.627, i32 0, i32 0))
  %i_qp_min = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %defaults, i32 0, i32 52, i32 2
  %22 = load i32, i32* %i_qp_min, align 8, !tbaa !138
  %call182 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([47 x i8], [47 x i8]* @.str.305, i32 0, i32 0), i32 %22)
  %i_qp_max = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %defaults, i32 0, i32 52, i32 3
  %23 = load i32, i32* %i_qp_max, align 4, !tbaa !139
  %cmp188 = icmp slt i32 %23, 81
  %spec.select = select i1 %cmp188, i32 %23, i32 81
  %call192 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([47 x i8], [47 x i8]* @.str.306, i32 0, i32 0), i32 %spec.select)
  %i_qp_step = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %defaults, i32 0, i32 52, i32 4
  %24 = load i32, i32* %i_qp_step, align 8, !tbaa !140
  %call198 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([52 x i8], [52 x i8]* @.str.307, i32 0, i32 0), i32 %24)
  %f_rate_tolerance = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %defaults, i32 0, i32 52, i32 8
  %25 = load float, float* %f_rate_tolerance, align 8, !tbaa !141
  %conv204 = fpext float %25 to double
  %call205 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([75 x i8], [75 x i8]* @.str.308, i32 0, i32 0), double %conv204)
  %f_ip_factor = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %defaults, i32 0, i32 52, i32 12
  %26 = load float, float* %f_ip_factor, align 8, !tbaa !142
  %conv211 = fpext float %26 to double
  %call212 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([64 x i8], [64 x i8]* @.str.309, i32 0, i32 0), double %conv211)
  %f_pb_factor = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %defaults, i32 0, i32 52, i32 13
  %27 = load float, float* %f_pb_factor, align 4, !tbaa !143
  %conv218 = fpext float %27 to double
  %call219 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([64 x i8], [64 x i8]* @.str.310, i32 0, i32 0), double %conv218)
  %i_chroma_qp_offset = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %defaults, i32 0, i32 51, i32 6
  %28 = load i32, i32* %i_chroma_qp_offset, align 4, !tbaa !144
  %call224 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([80 x i8], [80 x i8]* @.str.311, i32 0, i32 0), i32 %28)
  %i_aq_mode = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %defaults, i32 0, i32 52, i32 15
  %29 = load i32, i32* %i_aq_mode, align 4, !tbaa !145
  %call230 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([300 x i8], [300 x i8]* @.str.312, i32 0, i32 0), i32 %29)
  br label %if.end231

if.end231:                                        ; preds = %if.end161, %if.then168
  br i1 %cmp6821082124, label %if.then234, label %if.end243

if.then234:                                       ; preds = %if.end231
  %f_aq_strength = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %defaults, i32 0, i32 52, i32 16
  %30 = load float, float* %f_aq_strength, align 8, !tbaa !146
  %conv236 = fpext float %30 to double
  %call237 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([126 x i8], [126 x i8]* @.str.313, i32 0, i32 0), double %conv236)
  %putchar1158 = call i32 @putchar(i32 10)
  br label %if.end243

if.end243:                                        ; preds = %if.end231, %if.then234
  %puts1066 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([209 x i8], [209 x i8]* @str.548, i32 0, i32 0))
  br i1 %cmp, label %if.then247, label %if.end249

if.then247:                                       ; preds = %if.end243
  %puts1157 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([71 x i8], [71 x i8]* @str.626, i32 0, i32 0))
  br label %if.end249

if.end249:                                        ; preds = %if.then247, %if.end243
  br i1 %cmp6821082124, label %if.then252, label %if.end255

if.then252:                                       ; preds = %if.end249
  %psz_stat_out = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %defaults, i32 0, i32 52, i32 20
  %31 = load i8*, i8** %psz_stat_out, align 8, !tbaa !147
  %call254 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([64 x i8], [64 x i8]* @.str.316, i32 0, i32 0), i8* %31)
  br label %if.end255

if.end255:                                        ; preds = %if.then252, %if.end249
  br i1 %cmp, label %if.then258, label %if.end296

if.then258:                                       ; preds = %if.end255
  %puts1156 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([59 x i8], [59 x i8]* @str.625, i32 0, i32 0))
  %f_qcompress = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %defaults, i32 0, i32 52, i32 23
  %32 = load float, float* %f_qcompress, align 4, !tbaa !148
  %conv265 = fpext float %32 to double
  %call266 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([59 x i8], [59 x i8]* @.str.318, i32 0, i32 0), double %conv265)
  %f_complexity_blur = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %defaults, i32 0, i32 52, i32 25
  %33 = load float, float* %f_complexity_blur, align 4, !tbaa !149
  %conv272 = fpext float %33 to double
  %call273 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([91 x i8], [91 x i8]* @.str.319, i32 0, i32 0), double %conv272)
  %f_qblur = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %defaults, i32 0, i32 52, i32 24
  %34 = load float, float* %f_qblur, align 8, !tbaa !150
  %conv279 = fpext float %34 to double
  %call280 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([90 x i8], [90 x i8]* @.str.320, i32 0, i32 0), double %conv279)
  %puts1155 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([77 x i8], [77 x i8]* @str.624, i32 0, i32 0))
  %puts1154 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([313 x i8], [313 x i8]* @str.623, i32 0, i32 0))
  %puts1153 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([389 x i8], [389 x i8]* @str.622, i32 0, i32 0))
  br label %if.end296

if.end296:                                        ; preds = %if.end255, %if.then258
  br i1 %cmp6821082124, label %for.inc.i1816.6, label %if.end325

land.lhs.true2.i1827:                             ; preds = %for.inc.i1816.6
  %arrayidx3.i1824 = getelementptr inbounds [5 x i8*], [5 x i8*]* @x264_direct_pred_names, i32 0, i32 %105
  %35 = load i8*, i8** %arrayidx3.i1824, align 4, !tbaa !6
  %36 = load i8, i8* %35, align 1, !tbaa !56
  %tobool4.i1825 = icmp eq i8 %36, 0
  %spec.select.i1826 = select i1 %tobool4.i1825, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.427, i32 0, i32 0), i8* %35
  br label %strtable_lookup.exit1829

strtable_lookup.exit1829:                         ; preds = %for.inc.i1816.6, %land.lhs.true2.i1827
  %call3231830 = phi i8* [ %spec.select.i1826, %land.lhs.true2.i1827 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.427, i32 0, i32 0), %for.inc.i1816.6 ]
  %call324 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([130 x i8], [130 x i8]* @.str.326, i32 0, i32 0), i8* %call3231830)
  br label %if.end325

if.end325:                                        ; preds = %if.end296, %strtable_lookup.exit1829
  br i1 %cmp, label %if.then328, label %if.end330

if.then328:                                       ; preds = %if.end325
  %puts1149 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([71 x i8], [71 x i8]* @str.620, i32 0, i32 0))
  br label %if.end330

if.end330:                                        ; preds = %if.then328, %if.end325
  br i1 %cmp6821082124, label %if.then333, label %if.end343

if.then333:                                       ; preds = %if.end330
  %i_weighted_pred = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %defaults, i32 0, i32 51, i32 3
  %37 = load i32, i32* %i_weighted_pred, align 4, !tbaa !151
  %call335 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([236 x i8], [236 x i8]* @.str.328, i32 0, i32 0), i32 %37)
  %i_me_method = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %defaults, i32 0, i32 51, i32 7
  %38 = load i32, i32* %i_me_method, align 4, !tbaa !152
  %39 = icmp ult i32 %38, 5
  br i1 %39, label %land.lhs.true2.i1874, label %strtable_lookup.exit1876

land.lhs.true2.i1874:                             ; preds = %if.then333
  %arrayidx3.i1871 = getelementptr inbounds [6 x i8*], [6 x i8*]* @x264_motion_est_names, i32 0, i32 %38
  %40 = load i8*, i8** %arrayidx3.i1871, align 4, !tbaa !6
  %41 = load i8, i8* %40, align 1, !tbaa !56
  %tobool4.i1872 = icmp eq i8 %41, 0
  %spec.select.i1873 = select i1 %tobool4.i1872, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.427, i32 0, i32 0), i8* %40
  br label %strtable_lookup.exit1876

strtable_lookup.exit1876:                         ; preds = %if.then333, %land.lhs.true2.i1874
  %call3411877 = phi i8* [ %spec.select.i1873, %land.lhs.true2.i1874 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.427, i32 0, i32 0), %if.then333 ]
  %call342 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([77 x i8], [77 x i8]* @.str.329, i32 0, i32 0), i8* %call3411877)
  br label %if.end343

if.end343:                                        ; preds = %if.end330, %strtable_lookup.exit1876
  br i1 %cmp, label %if.end370, label %if.else348

if.else348:                                       ; preds = %if.end343
  br i1 %cmp6821082124, label %if.end387.thread, label %if.end722.thread.critedge

if.end370:                                        ; preds = %if.end343
  %puts1148 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([345 x i8], [345 x i8]* @str.619, i32 0, i32 0))
  %i_me_range = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %defaults, i32 0, i32 51, i32 8
  %42 = load i32, i32* %i_me_range, align 4, !tbaa !153
  %call359 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([71 x i8], [71 x i8]* @.str.332, i32 0, i32 0), i32 %42)
  %puts1146 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([71 x i8], [71 x i8]* @str.617, i32 0, i32 0))
  %puts1145 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([73 x i8], [73 x i8]* @str.616, i32 0, i32 0))
  br i1 %cmp6821082124, label %if.end396, label %if.end396.thread

if.end387.thread:                                 ; preds = %if.else348
  %puts1147 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([50 x i8], [50 x i8]* @str.618, i32 0, i32 0))
  br label %if.end396

if.end396.thread:                                 ; preds = %if.end370
  %puts1144 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([706 x i8], [706 x i8]* @str.615, i32 0, i32 0))
  %puts1142.c = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([125 x i8], [125 x i8]* @str.613, i32 0, i32 0))
  %puts1141.c = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([79 x i8], [79 x i8]* @str.612, i32 0, i32 0))
  %puts1140.c = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([65 x i8], [65 x i8]* @str.611, i32 0, i32 0))
  %puts1138 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([72 x i8], [72 x i8]* @str.609, i32 0, i32 0))
  %puts1137 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([76 x i8], [76 x i8]* @str.608, i32 0, i32 0))
  br label %for.inc.i1918.1

if.end396:                                        ; preds = %if.end370, %if.end387.thread
  %.sink2190 = phi i8* [ getelementptr inbounds ([68 x i8], [68 x i8]* @str.614, i32 0, i32 0), %if.end387.thread ], [ getelementptr inbounds ([706 x i8], [706 x i8]* @str.615, i32 0, i32 0), %if.end370 ]
  %i_subpel_refine = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %defaults, i32 0, i32 51, i32 11
  %43 = load i32, i32* %i_subpel_refine, align 4, !tbaa !154
  %call375 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([81 x i8], [81 x i8]* @.str.335, i32 0, i32 0), i32 %43)
  %puts1143 = call i32 @puts(i8* nonnull dereferenceable(1) %.sink2190)
  %f_psy_rd = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %defaults, i32 0, i32 51, i32 18
  %44 = load float, float* %f_psy_rd, align 4, !tbaa !155
  %conv392 = fpext float %44 to double
  %f_psy_trellis = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %defaults, i32 0, i32 51, i32 19
  %45 = load float, float* %f_psy_trellis, align 4, !tbaa !156
  %conv394 = fpext float %45 to double
  %call395 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([223 x i8], [223 x i8]* @.str.338, i32 0, i32 0), double %conv392, double %conv394)
  br i1 %cmp, label %if.end411, label %if.end474

if.end411:                                        ; preds = %if.end396
  %puts1142 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([125 x i8], [125 x i8]* @str.613, i32 0, i32 0))
  %puts1141 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([79 x i8], [79 x i8]* @str.612, i32 0, i32 0))
  %puts1140 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([65 x i8], [65 x i8]* @str.611, i32 0, i32 0))
  %puts1139 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([70 x i8], [70 x i8]* @str.610, i32 0, i32 0))
  %i_trellis = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %defaults, i32 0, i32 51, i32 14
  %46 = load i32, i32* %i_trellis, align 4, !tbaa !157
  %call421 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([258 x i8], [258 x i8]* @.str.343, i32 0, i32 0), i32 %46)
  %puts1138.c = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([72 x i8], [72 x i8]* @str.609, i32 0, i32 0))
  %puts1137.c = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([76 x i8], [76 x i8]* @str.608, i32 0, i32 0))
  %i_noise_reduction2173 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %defaults, i32 0, i32 51, i32 17
  %47 = load i32, i32* %i_noise_reduction2173, align 4, !tbaa !158
  %call4372174 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([52 x i8], [52 x i8]* @.str.346, i32 0, i32 0), i32 %47)
  br label %for.inc.i1918.1

if.end474:                                        ; preds = %if.end396
  %puts1139.c = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([70 x i8], [70 x i8]* @str.610, i32 0, i32 0))
  %i_trellis.c = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %defaults, i32 0, i32 51, i32 14
  %48 = load i32, i32* %i_trellis.c, align 4, !tbaa !157
  %call421.c = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([258 x i8], [258 x i8]* @.str.343, i32 0, i32 0), i32 %48)
  %i_noise_reduction = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %defaults, i32 0, i32 51, i32 17
  %49 = load i32, i32* %i_noise_reduction, align 4, !tbaa !158
  %call437 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([52 x i8], [52 x i8]* @.str.346, i32 0, i32 0), i32 %49)
  %puts1134 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([83 x i8], [83 x i8]* @str.606, i32 0, i32 0))
  %putchar1067.c = call i32 @putchar(i32 10)
  %puts1068.c = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @str.549, i32 0, i32 0))
  %putchar1069.c = call i32 @putchar(i32 10)
  %puts1070.c = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([50 x i8], [50 x i8]* @str.550, i32 0, i32 0))
  br label %for.inc.i1863.1

if.then477:                                       ; preds = %for.inc.i1918.1, %if.end474.thread2184
  %cmp6821102147215221572162216721762183 = phi i1 [ true, %if.end474.thread2184 ], [ false, %for.inc.i1918.1 ]
  %puts1133 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([70 x i8], [70 x i8]* @str.605, i32 0, i32 0))
  %puts1132 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([136 x i8], [136 x i8]* @str.604, i32 0, i32 0))
  %puts1131 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([136 x i8], [136 x i8]* @str.603, i32 0, i32 0))
  %puts1130 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([118 x i8], [118 x i8]* @str.602, i32 0, i32 0))
  %puts1129 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([112 x i8], [112 x i8]* @str.601, i32 0, i32 0))
  %putchar1128 = call i32 @putchar(i32 10)
  %puts1127 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @str.600, i32 0, i32 0))
  %puts1126 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([75 x i8], [75 x i8]* @str.599, i32 0, i32 0))
  %puts1125 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([75 x i8], [75 x i8]* @str.598, i32 0, i32 0))
  %putchar1124 = call i32 @putchar(i32 10)
  %i_overscan = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %defaults, i32 0, i32 14, i32 2
  %50 = load i32, i32* %i_overscan, align 8, !tbaa !159
  %51 = icmp ult i32 %50, 3
  br i1 %51, label %land.lhs.true2.i1929, label %strtable_lookup.exit1931

land.lhs.true2.i1929:                             ; preds = %if.then477
  %arrayidx3.i1926 = getelementptr inbounds [4 x i8*], [4 x i8*]* @x264_overscan_names, i32 0, i32 %50
  %52 = load i8*, i8** %arrayidx3.i1926, align 4, !tbaa !6
  %53 = load i8, i8* %52, align 1, !tbaa !56
  %tobool4.i1927 = icmp eq i8 %53, 0
  %spec.select.i1928 = select i1 %tobool4.i1927, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.427, i32 0, i32 0), i8* %52
  br label %strtable_lookup.exit1931

strtable_lookup.exit1931:                         ; preds = %if.then477, %land.lhs.true2.i1929
  %call5281932 = phi i8* [ %spec.select.i1928, %land.lhs.true2.i1929 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.427, i32 0, i32 0), %if.then477 ]
  %call529 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([122 x i8], [122 x i8]* @.str.360, i32 0, i32 0), i8* %call5281932)
  %i_vidformat = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %defaults, i32 0, i32 14, i32 3
  %54 = load i32, i32* %i_vidformat, align 4, !tbaa !160
  %55 = icmp ult i32 %54, 6
  br i1 %55, label %land.lhs.true2.i1963, label %for.inc.i1986.2

land.lhs.true2.i1963:                             ; preds = %strtable_lookup.exit1931
  %arrayidx3.i1960 = getelementptr inbounds [7 x i8*], [7 x i8*]* @x264_vidformat_names, i32 0, i32 %54
  %56 = load i8*, i8** %arrayidx3.i1960, align 4, !tbaa !6
  %57 = load i8, i8* %56, align 1, !tbaa !56
  %tobool4.i1961 = icmp eq i8 %57, 0
  %spec.select.i1962 = select i1 %tobool4.i1961, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.427, i32 0, i32 0), i8* %56
  br label %for.inc.i1986.2

land.lhs.true2.i1997:                             ; preds = %for.inc.i1986.2
  %arrayidx3.i1994 = getelementptr inbounds [14 x i8*], [14 x i8*]* @x264_colorprim_names, i32 0, i32 %97
  %58 = load i8*, i8** %arrayidx3.i1994, align 4, !tbaa !6
  %59 = load i8, i8* %58, align 1, !tbaa !56
  %tobool4.i1995 = icmp eq i8 %59, 0
  %spec.select.i1996 = select i1 %tobool4.i1995, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.427, i32 0, i32 0), i8* %58
  br label %strtable_lookup.exit1999

strtable_lookup.exit1999:                         ; preds = %for.inc.i1986.2, %land.lhs.true2.i1997
  %call5492000 = phi i8* [ %spec.select.i1996, %land.lhs.true2.i1997 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.427, i32 0, i32 0), %for.inc.i1986.2 ]
  %call550 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([266 x i8], [266 x i8]* @.str.363, i32 0, i32 0), i8* %call5492000)
  %i_transfer = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %defaults, i32 0, i32 14, i32 6
  %60 = load i32, i32* %i_transfer, align 8, !tbaa !161
  %61 = icmp ult i32 %60, 19
  br i1 %61, label %land.lhs.true2.i2031, label %strtable_lookup.exit2033

land.lhs.true2.i2031:                             ; preds = %strtable_lookup.exit1999
  %arrayidx3.i2028 = getelementptr inbounds [20 x i8*], [20 x i8*]* @x264_transfer_names, i32 0, i32 %60
  %62 = load i8*, i8** %arrayidx3.i2028, align 4, !tbaa !6
  %63 = load i8, i8* %62, align 1, !tbaa !56
  %tobool4.i2029 = icmp eq i8 %63, 0
  %spec.select.i2030 = select i1 %tobool4.i2029, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.427, i32 0, i32 0), i8* %62
  br label %strtable_lookup.exit2033

strtable_lookup.exit2033:                         ; preds = %strtable_lookup.exit1999, %land.lhs.true2.i2031
  %call5562034 = phi i8* [ %spec.select.i2030, %land.lhs.true2.i2031 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.427, i32 0, i32 0), %strtable_lookup.exit1999 ]
  %call557 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([421 x i8], [421 x i8]* @.str.364, i32 0, i32 0), i8* %call5562034)
  %i_colmatrix = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %defaults, i32 0, i32 14, i32 7
  %64 = load i32, i32* %i_colmatrix, align 4, !tbaa !162
  %65 = icmp ult i32 %64, 15
  br i1 %65, label %land.lhs.true2.i2044, label %strtable_lookup.exit2046

land.lhs.true2.i2044:                             ; preds = %strtable_lookup.exit2033
  %arrayidx3.i2041 = getelementptr inbounds [16 x i8*], [16 x i8*]* @x264_colmatrix_names, i32 0, i32 %64
  %66 = load i8*, i8** %arrayidx3.i2041, align 4, !tbaa !6
  %67 = load i8, i8* %66, align 1, !tbaa !56
  %tobool4.i2042 = icmp eq i8 %67, 0
  %spec.select.i2043 = select i1 %tobool4.i2042, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.427, i32 0, i32 0), i8* %66
  br label %strtable_lookup.exit2046

strtable_lookup.exit2046:                         ; preds = %strtable_lookup.exit2033, %land.lhs.true2.i2044
  %call5632047 = phi i8* [ %spec.select.i2043, %land.lhs.true2.i2044 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.427, i32 0, i32 0), %strtable_lookup.exit2033 ]
  %call564 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([346 x i8], [346 x i8]* @.str.365, i32 0, i32 0), i8* %call5632047)
  %i_chroma_loc = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %defaults, i32 0, i32 14, i32 8
  %68 = load i32, i32* %i_chroma_loc, align 8, !tbaa !163
  %call570 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([76 x i8], [76 x i8]* @.str.366, i32 0, i32 0), i32 %68)
  %puts1123 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([162 x i8], [162 x i8]* @str.597, i32 0, i32 0))
  %puts1122 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([121 x i8], [121 x i8]* @str.596, i32 0, i32 0))
  %i_alternative_transfer = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %defaults, i32 0, i32 57
  %69 = load i32, i32* %i_alternative_transfer, align 4, !tbaa !164
  %70 = icmp ult i32 %69, 19
  br i1 %70, label %land.lhs.true2.i2078, label %strtable_lookup.exit2080

land.lhs.true2.i2078:                             ; preds = %strtable_lookup.exit2046
  %arrayidx3.i2075 = getelementptr inbounds [20 x i8*], [20 x i8*]* @x264_transfer_names, i32 0, i32 %69
  %71 = load i8*, i8** %arrayidx3.i2075, align 4, !tbaa !6
  %72 = load i8, i8* %71, align 1, !tbaa !56
  %tobool4.i2076 = icmp eq i8 %72, 0
  %spec.select.i2077 = select i1 %tobool4.i2076, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.427, i32 0, i32 0), i8* %71
  br label %strtable_lookup.exit2080

strtable_lookup.exit2080:                         ; preds = %strtable_lookup.exit2046, %land.lhs.true2.i2078
  %call5852081 = phi i8* [ %spec.select.i2077, %land.lhs.true2.i2078 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.427, i32 0, i32 0), %strtable_lookup.exit2046 ]
  %call586 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([186 x i8], [186 x i8]* @.str.369, i32 0, i32 0), i8* %call5852081)
  %puts1121 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([153 x i8], [153 x i8]* @str.595, i32 0, i32 0))
  %puts1120 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([122 x i8], [122 x i8]* @str.594, i32 0, i32 0))
  %puts1119 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([69 x i8], [69 x i8]* @str.593, i32 0, i32 0))
  %puts1118 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([130 x i8], [130 x i8]* @str.592, i32 0, i32 0))
  %putchar1067 = call i32 @putchar(i32 10)
  %puts1068 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @str.549, i32 0, i32 0))
  %putchar1069 = call i32 @putchar(i32 10)
  %puts1070 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([50 x i8], [50 x i8]* @str.550, i32 0, i32 0))
  br i1 %cmp6821102147215221572162216721762183, label %for.inc.i1863.1, label %if.end722.thread

land.lhs.true2.i1840:                             ; preds = %for.inc.i1863.1
  %arrayidx3.i1837 = getelementptr inbounds [6 x i8*], [6 x i8*]* @x264_log_level_names, i32 0, i32 %sub
  %73 = load i8*, i8** %arrayidx3.i1837, align 4, !tbaa !6
  %74 = load i8, i8* %73, align 1, !tbaa !56
  %tobool4.i1838 = icmp eq i8 %74, 0
  %spec.select.i1839 = select i1 %tobool4.i1838, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.427, i32 0, i32 0), i8* %73
  br label %if.then725

if.end722.thread.critedge:                        ; preds = %if.else348
  %putchar1067.c2186 = call i32 @putchar(i32 10)
  %puts1068.c2187 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @str.549, i32 0, i32 0))
  %putchar1069.c2188 = call i32 @putchar(i32 10)
  %puts1070.c2189 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([50 x i8], [50 x i8]* @str.550, i32 0, i32 0))
  br label %if.end722.thread

if.end722.thread:                                 ; preds = %if.end722.thread.critedge, %strtable_lookup.exit2080
  call fastcc void @print_csp_names(i32 %longhelp)
  %puts1071.c1552 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([58 x i8], [58 x i8]* @str.551, i32 0, i32 0))
  %puts1072.c1553 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([48 x i8], [48 x i8]* @str.552, i32 0, i32 0))
  %puts1073.c1554 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([52 x i8], [52 x i8]* @str.553, i32 0, i32 0))
  br label %if.end737

if.then725:                                       ; preds = %for.inc.i1863.1, %land.lhs.true2.i1840
  %call7181843 = phi i8* [ %spec.select.i1839, %land.lhs.true2.i1840 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.427, i32 0, i32 0), %for.inc.i1863.1 ]
  %75 = bitcast [200 x i8]* %buf to i32*
  store i32 1701736302, i32* %75, align 8
  %p.025.i1756.ptr.1 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(3) %p.025.i1756.ptr.1, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.425, i32 0, i32 0), i32 3, i1 false) #3
  %p.1.i1765.ptr.1 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 6
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 2 dereferenceable(6) %p.1.i1765.ptr.1, i8* nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 6, i1 false) #3
  %p.025.i1756.ptr.2 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 dereferenceable(3) %p.025.i1756.ptr.2, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.425, i32 0, i32 0), i32 3, i1 false) #3
  %p.1.i1765.ptr.2 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 13
  %76 = bitcast i8* %p.1.i1765.ptr.2 to i64*
  store i64 29113321704808823, i64* %76, align 1
  %p.025.i1756.ptr.3 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 20
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(3) %p.025.i1756.ptr.3, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.425, i32 0, i32 0), i32 3, i1 false) #3
  %p.1.i1765.ptr.3 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 22
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 2 dereferenceable(5) %p.1.i1765.ptr.3, i8* nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 5, i1 false) #3
  %p.025.i1756.ptr.4 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 26
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 2 dereferenceable(3) %p.025.i1756.ptr.4, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.425, i32 0, i32 0), i32 3, i1 false) #3
  %p.1.i1765.ptr.4 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 28
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(6) %p.1.i1765.ptr.4, i8* nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 6, i1 false) #3
  %call721 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([114 x i8], [114 x i8]* @.str.398, i32 0, i32 0), i8* %call7181843, i8* nonnull %0)
  br label %if.end737

if.end737:                                        ; preds = %if.end722.thread, %if.then725
  %.sink2194 = phi i8* [ getelementptr inbounds ([65 x i8], [65 x i8]* @str.554, i32 0, i32 0), %if.end722.thread ], [ getelementptr inbounds ([54 x i8], [54 x i8]* @str.581, i32 0, i32 0), %if.then725 ]
  %.sink2193 = phi i8* [ getelementptr inbounds ([68 x i8], [68 x i8]* @str.555, i32 0, i32 0), %if.end722.thread ], [ getelementptr inbounds ([54 x i8], [54 x i8]* @str.580, i32 0, i32 0), %if.then725 ]
  %.sink2192 = phi i8* [ getelementptr inbounds ([41 x i8], [41 x i8]* @str.556, i32 0, i32 0), %if.end722.thread ], [ getelementptr inbounds ([65 x i8], [65 x i8]* @str.579, i32 0, i32 0), %if.then725 ]
  %puts1074.c1555 = call i32 @puts(i8* nonnull dereferenceable(1) %.sink2194)
  %puts1075.c1556 = call i32 @puts(i8* nonnull dereferenceable(1) %.sink2193)
  %puts1076.c1587 = call i32 @puts(i8* nonnull dereferenceable(1) %.sink2192)
  br i1 %cmp, label %if.then740, label %if.end832

if.then740:                                       ; preds = %if.end737
  %puts1103 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([81 x i8], [81 x i8]* @str.578, i32 0, i32 0))
  %puts1102 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([73 x i8], [73 x i8]* @str.577, i32 0, i32 0))
  %puts1101 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([61 x i8], [61 x i8]* @str.576, i32 0, i32 0))
  %puts1100 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([80 x i8], [80 x i8]* @str.575, i32 0, i32 0))
  %puts1099 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([92 x i8], [92 x i8]* @str.574, i32 0, i32 0))
  %puts1098 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([171 x i8], [171 x i8]* @str.573, i32 0, i32 0))
  %puts1097 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([53 x i8], [53 x i8]* @str.572, i32 0, i32 0))
  %puts1096 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([60 x i8], [60 x i8]* @str.571, i32 0, i32 0))
  %puts1095 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([51 x i8], [51 x i8]* @str.570, i32 0, i32 0))
  %puts1094 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([75 x i8], [75 x i8]* @str.569, i32 0, i32 0))
  %puts1093 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([62 x i8], [62 x i8]* @str.568, i32 0, i32 0))
  %puts1092 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([56 x i8], [56 x i8]* @str.567, i32 0, i32 0))
  %i_sps_id = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %defaults, i32 0, i32 61
  %77 = load i32, i32* %i_sps_id, align 4, !tbaa !165
  %call801 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([63 x i8], [63 x i8]* @.str.414, i32 0, i32 0), i32 %77)
  %puts1091 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([57 x i8], [57 x i8]* @str.566, i32 0, i32 0))
  %puts1090 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([76 x i8], [76 x i8]* @str.565, i32 0, i32 0))
  %puts1089 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([76 x i8], [76 x i8]* @str.564, i32 0, i32 0))
  %puts1088 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([76 x i8], [76 x i8]* @str.563, i32 0, i32 0))
  %puts1087 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([232 x i8], [232 x i8]* @str.562, i32 0, i32 0))
  %puts1086 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([78 x i8], [78 x i8]* @str.561, i32 0, i32 0))
  br label %if.end832

if.end832:                                        ; preds = %if.end737, %if.then740
  %putchar1077 = call i32 @putchar(i32 10)
  %puts1078 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @str.557, i32 0, i32 0))
  %putchar1079 = call i32 @putchar(i32 10)
  %puts1080 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([91 x i8], [91 x i8]* @str.558, i32 0, i32 0))
  %putchar1081 = call i32 @putchar(i32 10)
  %puts1082 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([75 x i8], [75 x i8]* @str.559, i32 0, i32 0))
  %putchar1083 = call i32 @putchar(i32 10)
  %puts1084 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @str.560, i32 0, i32 0))
  call void @x264_register_vid_filters() #3
  call void @x264_vid_filter_help(i32 %longhelp) #3
  %putchar1085 = call i32 @putchar(i32 10)
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %0) #3
  ret void

for.inc.i1863.1:                                  ; preds = %if.end474, %strtable_lookup.exit2080
  %78 = bitcast [200 x i8]* %buf to i32*
  store i32 1869903201, i32* %78, align 8
  %p.025.i2083.ptr.1 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(3) %p.025.i2083.ptr.1, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.425, i32 0, i32 0), i32 3, i1 false) #3
  %p.1.i2092.ptr.1 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 6
  %79 = bitcast i8* %p.1.i2092.ptr.1 to i32*
  store i32 7823730, i32* %79, align 2
  %p.025.i2083.ptr.2 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 9
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 dereferenceable(3) %p.025.i2083.ptr.2, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.425, i32 0, i32 0), i32 3, i1 false) #3
  %p.1.i2092.ptr.2 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 11
  %80 = bitcast i8* %p.1.i2092.ptr.2 to i32*
  store i32 7760749, i32* %80, align 1
  %p.025.i2083.ptr.3 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 14
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 2 dereferenceable(3) %p.025.i2083.ptr.3, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.425, i32 0, i32 0), i32 3, i1 false) #3
  %p.1.i2092.ptr.3 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 16
  %81 = bitcast i8* %p.1.i2092.ptr.3 to i32*
  store i32 7760998, i32* %81, align 8
  %call617 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([109 x i8], [109 x i8]* @.str.376, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* nonnull %0)
  %82 = bitcast [200 x i8]* %buf to i32*
  store i32 1869903201, i32* %82, align 8
  %p.025.i2049.ptr.1 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(3) %p.025.i2049.ptr.1, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.425, i32 0, i32 0), i32 3, i1 false) #3
  %p.1.i2058.ptr.1 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 6
  %83 = bitcast i8* %p.1.i2058.ptr.1 to i32*
  store i32 7823730, i32* %83, align 2
  %p.025.i2049.ptr.2 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 9
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 dereferenceable(3) %p.025.i2049.ptr.2, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.425, i32 0, i32 0), i32 3, i1 false) #3
  %p.1.i2058.ptr.2 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 11
  %84 = bitcast i8* %p.1.i2058.ptr.2 to i32*
  store i32 7156857, i32* %84, align 1
  %call624 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([108 x i8], [108 x i8]* @.str.377, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* nonnull %0)
  %puts1117 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([80 x i8], [80 x i8]* @str.591, i32 0, i32 0))
  %puts1116 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([76 x i8], [76 x i8]* @str.590, i32 0, i32 0))
  call fastcc void @print_csp_names(i32 %longhelp)
  %85 = bitcast [200 x i8]* %buf to i32*
  store i32 808465513, i32* %85, align 8
  %p.025.i2002.ptr.1 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(3) %p.025.i2002.ptr.1, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.425, i32 0, i32 0), i32 3, i1 false) #3
  %p.1.i2011.ptr.1 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 6
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 2 dereferenceable(5) %p.1.i2011.ptr.1, i8* nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i32 5, i1 false) #3
  %p.025.i2002.ptr.2 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 10
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 2 dereferenceable(3) %p.025.i2002.ptr.2, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.425, i32 0, i32 0), i32 3, i1 false) #3
  %p.1.i2011.ptr.2 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 12
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(5) %p.1.i2011.ptr.2, i8* nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i32 5, i1 false) #3
  %p.025.i2002.ptr.3 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 16
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 8 dereferenceable(3) %p.025.i2002.ptr.3, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.425, i32 0, i32 0), i32 3, i1 false) #3
  %p.1.i2011.ptr.3 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 18
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 2 dereferenceable(5) %p.1.i2011.ptr.3, i8* nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i32 5, i1 false) #3
  %p.025.i2002.ptr.4 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 22
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 2 dereferenceable(3) %p.025.i2002.ptr.4, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.425, i32 0, i32 0), i32 3, i1 false) #3
  %p.1.i2011.ptr.4 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 24
  %86 = bitcast i8* %p.1.i2011.ptr.4 to i32*
  store i32 6449010, i32* %86, align 8
  %call641 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([103 x i8], [103 x i8]* @.str.380, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i8* nonnull %0)
  %puts1115 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([68 x i8], [68 x i8]* @str.589, i32 0, i32 0))
  %puts1114 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([56 x i8], [56 x i8]* @str.588, i32 0, i32 0))
  %87 = bitcast [200 x i8]* %buf to i32*
  store i32 1869903201, i32* %87, align 8
  %p.025.i1934.ptr.1 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(3) %p.025.i1934.ptr.1, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.425, i32 0, i32 0), i32 3, i1 false) #3
  %p.1.i1943.ptr.1 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 6
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 2 dereferenceable(3) %p.1.i1943.ptr.1, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i32 3, i1 false) #3
  %p.025.i1934.ptr.2 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 8
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 8 dereferenceable(3) %p.025.i1934.ptr.2, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.425, i32 0, i32 0), i32 3, i1 false) #3
  %p.1.i1943.ptr.2 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 10
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 2 dereferenceable(3) %p.1.i1943.ptr.2, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i32 3, i1 false) #3
  %call658 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([103 x i8], [103 x i8]* @.str.383, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* nonnull %0)
  %puts1113 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([72 x i8], [72 x i8]* @str.587, i32 0, i32 0))
  %puts1112 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([60 x i8], [60 x i8]* @str.586, i32 0, i32 0))
  %puts1071 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([58 x i8], [58 x i8]* @str.551, i32 0, i32 0))
  %puts1072 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([48 x i8], [48 x i8]* @str.552, i32 0, i32 0))
  %puts1073 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([52 x i8], [52 x i8]* @str.553, i32 0, i32 0))
  %puts1074 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([65 x i8], [65 x i8]* @str.554, i32 0, i32 0))
  %puts1075 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([68 x i8], [68 x i8]* @str.555, i32 0, i32 0))
  %puts1111 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([77 x i8], [77 x i8]* @str.585, i32 0, i32 0))
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 8 dereferenceable(3) %0, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 3, i1 false) #3
  %p.025.i1879.ptr.1 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 2
  %88 = bitcast i8* %p.025.i1879.ptr.1 to i16*
  store i16 8236, i16* %88, align 2
  %p.1.i1888.ptr.1 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 4
  %89 = bitcast i8* %p.1.i1888.ptr.1 to i32*
  store i32 3158065, i32* %89, align 4
  %p.025.i1879.ptr.2 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 dereferenceable(3) %p.025.i1879.ptr.2, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.425, i32 0, i32 0), i32 3, i1 false) #3
  %p.1.i1888.ptr.2 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 9
  %90 = bitcast i8* %p.1.i1888.ptr.2 to i32*
  store i32 3158066, i32* %90, align 1
  %p.025.i1879.ptr.3 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 12
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(3) %p.025.i1879.ptr.3, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.425, i32 0, i32 0), i32 3, i1 false) #3
  %p.1.i1888.ptr.3 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 14
  %91 = bitcast i8* %p.1.i1888.ptr.3 to i32*
  store i32 3158067, i32* %91, align 2
  %p.025.i1879.ptr.4 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 17
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 dereferenceable(3) %p.025.i1879.ptr.4, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.425, i32 0, i32 0), i32 3, i1 false) #3
  %p.1.i1888.ptr.4 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 19
  %92 = bitcast i8* %p.1.i1888.ptr.4 to i32*
  store i32 3160116, i32* %92, align 1
  %call685 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([117 x i8], [117 x i8]* @.str.392, i32 0, i32 0), i8* nonnull %0)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 8 dereferenceable(10) %0, i8* nonnull align 1 dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.477, i32 0, i32 0), i32 10, i1 false) #3
  %p.025.i1845.ptr.1 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 9
  %93 = bitcast i8* %p.025.i1845.ptr.1 to i16*
  store i16 8236, i16* %93, align 1
  %p.1.i1854.ptr.1 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 dereferenceable(5) %p.1.i1854.ptr.1, i8* nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.478, i32 0, i32 0), i32 5, i1 false) #3
  %call692 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([97 x i8], [97 x i8]* @.str.393, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.477, i32 0, i32 0), i8* nonnull %0)
  %puts1110 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([154 x i8], [154 x i8]* @str.584, i32 0, i32 0))
  %putchar1109 = call i32 @putchar(i32 10)
  %puts1108 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([57 x i8], [57 x i8]* @str.583, i32 0, i32 0))
  %puts1107 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([79 x i8], [79 x i8]* @str.582, i32 0, i32 0))
  %puts1076 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([41 x i8], [41 x i8]* @str.556, i32 0, i32 0))
  %94 = load i32, i32* @cli_log_level, align 4, !tbaa !2
  %sub = add nsw i32 %94, 1
  %95 = icmp ult i32 %sub, 5
  br i1 %95, label %land.lhs.true2.i1840, label %if.then725

for.inc.i1986.2:                                  ; preds = %land.lhs.true2.i1963, %strtable_lookup.exit1931
  %call5351966 = phi i8* [ %spec.select.i1962, %land.lhs.true2.i1963 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.427, i32 0, i32 0), %strtable_lookup.exit1931 ]
  %call536 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([135 x i8], [135 x i8]* @.str.361, i32 0, i32 0), i8* %call5351966)
  %96 = bitcast [200 x i8]* %buf to i32*
  store i32 1869903201, i32* %96, align 8
  %p.025.i1968.ptr.1 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(3) %p.025.i1968.ptr.1, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.425, i32 0, i32 0), i32 3, i1 false) #3
  %p.1.i1977.ptr.1 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 6
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 2 dereferenceable(3) %p.1.i1977.ptr.1, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i32 3, i1 false) #3
  %p.025.i1968.ptr.2 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 8
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 8 dereferenceable(3) %p.025.i1968.ptr.2, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.425, i32 0, i32 0), i32 3, i1 false) #3
  %p.1.i1977.ptr.2 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 10
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 2 dereferenceable(3) %p.1.i1977.ptr.2, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i32 3, i1 false) #3
  %call543 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([97 x i8], [97 x i8]* @.str.362, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* nonnull %0)
  %i_colorprim = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %defaults, i32 0, i32 14, i32 5
  %97 = load i32, i32* %i_colorprim, align 4, !tbaa !166
  %98 = icmp ult i32 %97, 13
  br i1 %98, label %land.lhs.true2.i1997, label %strtable_lookup.exit1999

for.inc.i1918.1:                                  ; preds = %if.end411, %if.end396.thread
  %cmp68211021472152215721622168 = phi i1 [ true, %if.end411 ], [ false, %if.end396.thread ]
  %putchar1136 = call i32 @putchar(i32 10)
  %arrayidx = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %defaults, i32 0, i32 51, i32 23, i32 0
  %99 = load i32, i32* %arrayidx, align 4, !tbaa !2
  %call448 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([89 x i8], [89 x i8]* @.str.347, i32 0, i32 0), i32 %99)
  %arrayidx455 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %defaults, i32 0, i32 51, i32 23, i32 1
  %100 = load i32, i32* %arrayidx455, align 4, !tbaa !2
  %call456 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([89 x i8], [89 x i8]* @.str.348, i32 0, i32 0), i32 %100)
  %puts1135 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([75 x i8], [75 x i8]* @str.607, i32 0, i32 0))
  %101 = bitcast [200 x i8]* %buf to i32*
  store i32 1952541798, i32* %101, align 8
  %p.025.i1900.ptr.1 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(3) %p.025.i1900.ptr.1, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.425, i32 0, i32 0), i32 3, i1 false) #3
  %p.1.i1909.ptr.1 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 6
  %102 = bitcast i8* %p.1.i1909.ptr.1 to i32*
  store i32 7632490, i32* %102, align 2
  %call468 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([99 x i8], [99 x i8]* @.str.350, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* nonnull %0)
  br i1 %cmp68211021472152215721622168, label %if.end474.thread2184, label %if.then477

if.end474.thread2184:                             ; preds = %for.inc.i1918.1
  %puts11342185 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([83 x i8], [83 x i8]* @str.606, i32 0, i32 0))
  br label %if.then477

for.inc.i1816.6:                                  ; preds = %if.end296
  %putchar1152 = call i32 @putchar(i32 10)
  %puts1151 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @str.621, i32 0, i32 0))
  %putchar1150 = call i32 @putchar(i32 10)
  %103 = bitcast [200 x i8]* %buf to i32*
  store i32 947402864, i32* %103, align 8
  %p.025.i1798.ptr.1 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(3) %p.025.i1798.ptr.1, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.425, i32 0, i32 0), i32 3, i1 false) #3
  %p.1.i1807.ptr.1 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 6
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 2 dereferenceable(5) %p.1.i1807.ptr.1, i8* nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32 5, i1 false) #3
  %p.025.i1798.ptr.2 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 10
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 2 dereferenceable(3) %p.025.i1798.ptr.2, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.425, i32 0, i32 0), i32 3, i1 false) #3
  %p.1.i1807.ptr.2 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 12
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(5) %p.1.i1807.ptr.2, i8* nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 5, i1 false) #3
  %p.025.i1798.ptr.3 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 16
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 8 dereferenceable(3) %p.025.i1798.ptr.3, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.425, i32 0, i32 0), i32 3, i1 false) #3
  %p.1.i1807.ptr.3 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 18
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 2 dereferenceable(5) %p.1.i1807.ptr.3, i8* nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i32 5, i1 false) #3
  %p.025.i1798.ptr.4 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 22
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 2 dereferenceable(3) %p.025.i1798.ptr.4, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.425, i32 0, i32 0), i32 3, i1 false) #3
  %p.1.i1807.ptr.4 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 24
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 8 dereferenceable(5) %p.1.i1807.ptr.4, i8* nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i32 5, i1 false) #3
  %p.025.i1798.ptr.5 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 28
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(3) %p.025.i1798.ptr.5, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.425, i32 0, i32 0), i32 3, i1 false) #3
  %p.1.i1807.ptr.5 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 30
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 2 dereferenceable(5) %p.1.i1807.ptr.5, i8* nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 5, i1 false) #3
  %p.025.i1798.ptr.6 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 34
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 2 dereferenceable(3) %p.025.i1798.ptr.6, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.425, i32 0, i32 0), i32 3, i1 false) #3
  %p.1.i1807.ptr.6 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 36
  %104 = bitcast i8* %p.1.i1807.ptr.6 to i32*
  store i32 7105633, i32* %104, align 4
  %call317 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([197 x i8], [197 x i8]* @.str.325, i32 0, i32 0), i8* nonnull %0)
  %i_direct_mv_pred = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %defaults, i32 0, i32 51, i32 5
  %105 = load i32, i32* %i_direct_mv_pred, align 4, !tbaa !167
  %106 = icmp ult i32 %105, 4
  br i1 %106, label %land.lhs.true2.i1827, label %strtable_lookup.exit1829

for.inc.i1795.6.sink.split:                       ; preds = %if.end104, %if.then115
  %.sink2197 = phi i8* [ getelementptr inbounds ([71 x i8], [71 x i8]* @str.544, i32 0, i32 0), %if.then115 ], [ getelementptr inbounds ([57 x i8], [57 x i8]* @str.635, i32 0, i32 0), %if.end104 ]
  %.sink2196.ph = phi i8* [ getelementptr inbounds ([74 x i8], [74 x i8]* @str.545, i32 0, i32 0), %if.then115 ], [ getelementptr inbounds ([71 x i8], [71 x i8]* @str.544, i32 0, i32 0), %if.end104 ]
  %.sink2195.ph = phi i8* [ getelementptr inbounds ([67 x i8], [67 x i8]* @str.630, i32 0, i32 0), %if.then115 ], [ getelementptr inbounds ([74 x i8], [74 x i8]* @str.545, i32 0, i32 0), %if.end104 ]
  %puts1167 = call i32 @puts(i8* nonnull dereferenceable(1) %.sink2197)
  br label %for.inc.i1795.6

for.inc.i1795.6:                                  ; preds = %for.inc.i1795.6.sink.split, %if.end67
  %.sink2196 = phi i8* [ getelementptr inbounds ([71 x i8], [71 x i8]* @str.544, i32 0, i32 0), %if.end67 ], [ %.sink2196.ph, %for.inc.i1795.6.sink.split ]
  %.sink2195 = phi i8* [ getelementptr inbounds ([74 x i8], [74 x i8]* @str.545, i32 0, i32 0), %if.end67 ], [ %.sink2195.ph, %for.inc.i1795.6.sink.split ]
  %cmp6821082124 = phi i1 [ false, %if.end67 ], [ true, %for.inc.i1795.6.sink.split ]
  %puts1061 = call i32 @puts(i8* nonnull dereferenceable(1) %.sink2196)
  %puts1162 = call i32 @puts(i8* nonnull dereferenceable(1) %.sink2195)
  %107 = bitcast [200 x i8]* %buf to i32*
  store i32 1701736302, i32* %107, align 8
  %p.025.i1777.ptr.1 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(3) %p.025.i1777.ptr.1, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.425, i32 0, i32 0), i32 3, i1 false) #3
  %p.1.i1786.ptr.1 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 6
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 2 dereferenceable(3) %p.1.i1786.ptr.1, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i32 3, i1 false) #3
  %p.025.i1777.ptr.2 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 8
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 8 dereferenceable(3) %p.025.i1777.ptr.2, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.425, i32 0, i32 0), i32 3, i1 false) #3
  %p.1.i1786.ptr.2 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 10
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 2 dereferenceable(3) %p.1.i1786.ptr.2, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i32 3, i1 false) #3
  %p.025.i1777.ptr.3 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 12
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(3) %p.025.i1777.ptr.3, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.425, i32 0, i32 0), i32 3, i1 false) #3
  %p.1.i1786.ptr.3 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 14
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 2 dereferenceable(3) %p.1.i1786.ptr.3, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), i32 3, i1 false) #3
  %p.025.i1777.ptr.4 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 16
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 8 dereferenceable(3) %p.025.i1777.ptr.4, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.425, i32 0, i32 0), i32 3, i1 false) #3
  %p.1.i1786.ptr.4 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 18
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 2 dereferenceable(7) %p.1.i1786.ptr.4, i8* nonnull align 1 dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i32 7, i1 false) #3
  %p.025.i1777.ptr.5 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 24
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 8 dereferenceable(3) %p.025.i1777.ptr.5, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.425, i32 0, i32 0), i32 3, i1 false) #3
  %p.1.i1786.ptr.5 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 26
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 2 dereferenceable(7) %p.1.i1786.ptr.5, i8* nonnull align 1 dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i32 7, i1 false) #3
  %p.025.i1777.ptr.6 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 32
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 8 dereferenceable(3) %p.025.i1777.ptr.6, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.425, i32 0, i32 0), i32 3, i1 false) #3
  %p.1.i1786.ptr.6 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 34
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 2 dereferenceable(5) %p.1.i1786.ptr.6, i8* nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i32 5, i1 false) #3
  %call138 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([130 x i8], [130 x i8]* @.str.293, i32 0, i32 0), i8* nonnull %0)
  br i1 %cmp, label %if.then140, label %if.end146
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #9

; Function Attrs: nofree nounwind
define internal fastcc void @print_version_info() unnamed_addr #10 {
entry:
  %puts = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @str.648, i32 0, i32 0))
  %call1 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @.str.480, i32 0, i32 0))
  %puts7 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([106 x i8], [106 x i8]* @str.649, i32 0, i32 0))
  %call3 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @.str.482, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0))
  %0 = load i32, i32* @x264_chroma_format, align 4, !tbaa !2
  %arrayidx = getelementptr inbounds [13 x i8*], [13 x i8*]* @chroma_format_names, i32 0, i32 %0
  %1 = load i8*, i8** %arrayidx, align 4, !tbaa !6
  %call4 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([43 x i8], [43 x i8]* @.str.483, i32 0, i32 0), i8* %1)
  %call5 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.484, i32 0, i32 0))
  %puts8 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @str.650, i32 0, i32 0))
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

declare dso_local i32 @x264_param_parse(%struct.x264_param_t*, i8*, i8*) local_unnamed_addr #6

declare dso_local void @x264_param_apply_fastfirstpass(%struct.x264_param_t*) local_unnamed_addr #6

declare dso_local i32 @x264_param_apply_profile(%struct.x264_param_t*, i8*) local_unnamed_addr #6

declare dso_local void @x264_reduce_fraction(i32*, i32*) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare dso_local i32 @strtoul(i8* readonly, i8** nocapture, i32) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare dso_local i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind
define internal fastcc void @print_csp_names(i32 %longhelp) unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %longhelp, 2
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %puts = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([62 x i8], [62 x i8]* @str.651, i32 0, i32 0))
  %call1 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str.475, i32 0, i32 0))
  br label %for.body

for.cond.cleanup:                                 ; preds = %if.end.i, %print_csp_name_internal.exit
  %putchar = tail call i32 @putchar(i32 10)
  br label %return

for.body:                                         ; preds = %print_csp_name_internal.exit, %if.end
  %i.013 = phi i32 [ 1, %if.end ], [ %inc, %print_csp_name_internal.exit ]
  %line_len.012 = phi i32 [ 32, %if.end ], [ %line_len.2, %print_csp_name_internal.exit ]
  %name = getelementptr inbounds [0 x %struct.x264_cli_csp_t], [0 x %struct.x264_cli_csp_t]* @x264_cli_csps, i32 0, i32 %i.013, i32 0
  %0 = load i8*, i8** %name, align 4, !tbaa !168
  %cmp3 = icmp eq i32 %i.013, 16
  %tobool.i = icmp eq i8* %0, null
  br i1 %tobool.i, label %print_csp_name_internal.exit, label %if.then.i

if.then.i:                                        ; preds = %for.body
  %call.i = tail call i32 @strlen(i8* nonnull %0) #14
  %add.i = add i32 %call.i, %line_len.012
  %cmp.i = icmp ugt i32 %add.i, 78
  br i1 %cmp.i, label %if.then1.i, label %if.end.i

if.then1.i:                                       ; preds = %if.then.i
  %call2.i = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([34 x i8], [34 x i8]* @.str.476, i32 0, i32 0)) #3
  br label %if.end.i

if.end.i:                                         ; preds = %if.then1.i, %if.then.i
  %line_len.1 = phi i32 [ 32, %if.then1.i ], [ %line_len.012, %if.then.i ]
  %call3.i = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.426, i32 0, i32 0), i8* nonnull %0) #3
  br i1 %cmp3, label %for.cond.cleanup, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i
  %add4.i = add i32 %line_len.1, %call.i
  %call7.i = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.425, i32 0, i32 0)) #3
  %add8.i = add i32 %add4.i, 2
  br label %print_csp_name_internal.exit

print_csp_name_internal.exit:                     ; preds = %for.body, %if.then6.i
  %line_len.2 = phi i32 [ %line_len.012, %for.body ], [ %add8.i, %if.then6.i ]
  %inc = add nuw nsw i32 %i.013, 1
  %exitcond = icmp eq i32 %inc, 17
  br i1 %exitcond, label %for.cond.cleanup, label %for.body

return:                                           ; preds = %entry, %for.cond.cleanup
  ret void
}

declare dso_local void @x264_register_vid_filters() local_unnamed_addr #6

declare dso_local void @x264_vid_filter_help(i32) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare dso_local i32 @sprintf(i8* noalias nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly
declare dso_local i32 @strlen(i8* nocapture) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare dso_local i32 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare dso_local i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare dso_local i8* @strcpy(i8* noalias returned, i8* noalias nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #7

declare dso_local i32 @x264_init_vid_filter(i8*, i8**, %struct.cli_vid_filter_t*, %struct.video_info_t*, %struct.x264_param_t*, i8*) local_unnamed_addr #6

; Function Attrs: nofree nounwind readonly
declare dso_local i32 @strcspn(i8* nocapture, i8* nocapture) local_unnamed_addr #5

declare dso_local %struct.x264_t* @x264_encoder_open_164(%struct.x264_param_t*) local_unnamed_addr #6

declare dso_local void @x264_encoder_parameters(%struct.x264_t*, %struct.x264_param_t*) local_unnamed_addr #6

declare dso_local i64 @x264_mdate() local_unnamed_addr #6

declare dso_local i32 @x264_encoder_headers(%struct.x264_t*, %struct.x264_nal_t**, i32*) local_unnamed_addr #6

declare dso_local void @x264_picture_init(%struct.x264_picture_t*) local_unnamed_addr #6

; Function Attrs: nounwind
define internal fastcc i64 @print_status(i64 %i_start, i64 %i_previous, i32 %i_frame, i32 %i_frame_total, i64 %i_file, %struct.x264_param_t* nocapture readonly %param, i64 %last_ts) unnamed_addr #0 {
entry:
  %buf = alloca [200 x i8], align 1
  %0 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %0) #3
  %call = tail call i64 @x264_mdate() #3
  %tobool = icmp ne i64 %i_previous, 0
  %sub = sub nsw i64 %call, %i_previous
  %cmp = icmp slt i64 %sub, 250000
  %or.cond = and i1 %tobool, %cmp
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %sub1 = sub nsw i64 %call, %i_start
  %cmp2 = icmp sgt i64 %sub1, 0
  br i1 %cmp2, label %cond.true, label %cond.end

cond.true:                                        ; preds = %if.end
  %conv = sitofp i32 %i_frame to double
  %mul = fmul fast double %conv, 1.000000e+06
  %conv3 = sitofp i64 %sub1 to double
  %div = fdiv fast double %mul, %conv3
  br label %cond.end

cond.end:                                         ; preds = %if.end, %cond.true
  %cond = phi fast double [ %div, %cond.true ], [ 0.000000e+00, %if.end ]
  %tobool4 = icmp eq i64 %last_ts, 0
  %conv6 = sitofp i64 %i_file to double
  %mul7 = fmul fast double %conv6, 8.000000e+00
  br i1 %tobool4, label %if.else, label %if.then5

if.then5:                                         ; preds = %cond.end
  %conv8 = sitofp i64 %last_ts to double
  %mul9 = fmul fast double %conv8, 1.000000e+03
  %i_timebase_num = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 66
  %1 = load i32, i32* %i_timebase_num, align 8, !tbaa !26
  %conv10 = uitofp i32 %1 to double
  %mul11 = fmul fast double %mul9, %conv10
  %i_timebase_den = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 67
  br label %if.end22

if.else:                                          ; preds = %cond.end
  %i_fps_den = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 65
  %2 = load i32, i32* %i_fps_den, align 4, !tbaa !25
  %conv17 = uitofp i32 %2 to double
  %mul18 = fmul fast double %conv17, 1.000000e+03
  %i_fps_num = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 64
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then5
  %.sink.in = phi i32* [ %i_fps_num, %if.else ], [ %i_timebase_den, %if.then5 ]
  %mul18.sink = phi double [ %mul18, %if.else ], [ %mul11, %if.then5 ]
  %.sink = load i32, i32* %.sink.in, align 4, !tbaa !2
  %conv19 = uitofp i32 %.sink to double
  %3 = fmul fast double %mul7, %conv19
  %div21 = fdiv fast double %3, %mul18.sink
  %tobool23 = icmp eq i32 %i_frame_total, 0
  br i1 %tobool23, label %if.else40, label %if.then24

if.then24:                                        ; preds = %if.end22
  %sub25 = sub nsw i32 %i_frame_total, %i_frame
  %conv26 = sext i32 %sub25 to i64
  %mul27 = mul nsw i64 %sub1, %conv26
  %conv28 = sext i32 %i_frame to i64
  %mul29 = mul nsw i64 %conv28, 1000000
  %div30 = sdiv i64 %mul27, %mul29
  %conv31 = trunc i64 %div30 to i32
  %conv32 = sitofp i32 %i_frame to double
  %mul33 = fmul fast double %conv32, 1.000000e+02
  %conv34 = sitofp i32 %i_frame_total to double
  %div35 = fdiv fast double %mul33, %conv34
  %div36 = sdiv i32 %conv31, 3600
  %div37 = sdiv i32 %conv31, 60
  %rem = srem i32 %div37, 60
  %4 = mul i32 %div37, 60
  %rem38.decomposed = sub i32 %conv31, %4
  %call39 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %0, i8* nonnull dereferenceable(1) getelementptr inbounds ([66 x i8], [66 x i8]* @.str.523, i32 0, i32 0), double %div35, i32 %i_frame, i32 %i_frame_total, double %cond, double %div21, i32 %div36, i32 %rem, i32 %rem38.decomposed) #3
  br label %if.end43

if.else40:                                        ; preds = %if.end22
  %call42 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %0, i8* nonnull dereferenceable(1) getelementptr inbounds ([36 x i8], [36 x i8]* @.str.524, i32 0, i32 0), i32 %i_frame, double %cond, double %div21) #3
  br label %if.end43

if.end43:                                         ; preds = %if.else40, %if.then24
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4, !tbaa !6
  %add.ptr = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 5
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.525, i32 0, i32 0), i8* nonnull %add.ptr) #13
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4, !tbaa !6
  %call46 = call i32 @fflush(%struct._IO_FILE* %6)
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end43
  %retval.0 = phi i64 [ %call, %if.end43 ], [ %i_previous, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %0) #3
  ret i64 %retval.0
}

declare dso_local i32 @x264_encoder_delayed_frames(%struct.x264_t*) local_unnamed_addr #6

declare dso_local void @x264_encoder_close(%struct.x264_t*) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare dso_local i32 @ftell(%struct._IO_FILE* nocapture) local_unnamed_addr #2

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare dso_local i32 @fseek(%struct._IO_FILE* nocapture, i32, i32) local_unnamed_addr #2

declare dso_local i32 @x264_encoder_encode(%struct.x264_t*, %struct.x264_nal_t**, i32*, %struct.x264_picture_t*, %struct.x264_picture_t*) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare dso_local i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @fwrite(i8* nocapture, i32, i32, %struct._IO_FILE* nocapture) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare i32 @putchar(i32) local_unnamed_addr #12

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #5 = { nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #7 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #8 = { nofree norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #9 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #10 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #11 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #12 = { nofree nounwind }
attributes #13 = { cold }
attributes #14 = { nounwind readonly }
attributes #15 = { cold nounwind }
attributes #16 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 (http://10.18.30.194:8888/compiler/compiler10.git 713ef477716300a9b04a1522e3fce445623444dc)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !4, i64 0}
!8 = !{!9, !3, i64 512}
!9 = !{!"x264_param_t", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !3, i64 20, !3, i64 24, !3, i64 28, !3, i64 32, !3, i64 36, !3, i64 40, !3, i64 44, !3, i64 48, !3, i64 52, !10, i64 56, !3, i64 92, !3, i64 96, !3, i64 100, !3, i64 104, !3, i64 108, !3, i64 112, !3, i64 116, !3, i64 120, !3, i64 124, !3, i64 128, !3, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !3, i64 148, !3, i64 152, !3, i64 156, !3, i64 160, !3, i64 164, !3, i64 168, !3, i64 172, !3, i64 176, !7, i64 180, !4, i64 184, !4, i64 200, !4, i64 216, !4, i64 232, !4, i64 248, !4, i64 312, !4, i64 376, !4, i64 440, !7, i64 504, !7, i64 508, !3, i64 512, !3, i64 516, !7, i64 520, !11, i64 524, !13, i64 632, !14, i64 748, !3, i64 764, !15, i64 768, !17, i64 824, !3, i64 836, !3, i64 840, !3, i64 844, !3, i64 848, !3, i64 852, !3, i64 856, !3, i64 860, !3, i64 864, !3, i64 868, !3, i64 872, !3, i64 876, !3, i64 880, !3, i64 884, !3, i64 888, !3, i64 892, !3, i64 896, !3, i64 900, !7, i64 904, !7, i64 908, !3, i64 912, !3, i64 916, !3, i64 920, !3, i64 924, !3, i64 928, !7, i64 932, !7, i64 936, !7, i64 940}
!10 = !{!"", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !3, i64 20, !3, i64 24, !3, i64 28, !3, i64 32}
!11 = !{!"", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !3, i64 20, !3, i64 24, !3, i64 28, !3, i64 32, !3, i64 36, !3, i64 40, !3, i64 44, !3, i64 48, !3, i64 52, !3, i64 56, !3, i64 60, !3, i64 64, !3, i64 68, !12, i64 72, !12, i64 76, !3, i64 80, !3, i64 84, !3, i64 88, !4, i64 92, !3, i64 100, !3, i64 104}
!12 = !{!"float", !4, i64 0}
!13 = !{!"", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !3, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !3, i64 36, !3, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !3, i64 56, !3, i64 60, !12, i64 64, !3, i64 68, !3, i64 72, !3, i64 76, !7, i64 80, !3, i64 84, !7, i64 88, !12, i64 92, !12, i64 96, !12, i64 100, !7, i64 104, !3, i64 108, !7, i64 112}
!14 = !{!"", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12}
!15 = !{!"", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !3, i64 20, !3, i64 24, !3, i64 28, !3, i64 32, !16, i64 40, !16, i64 48}
!16 = !{!"long long", !4, i64 0}
!17 = !{!"", !3, i64 0, !3, i64 4, !3, i64 8}
!18 = !{!19, !3, i64 0}
!19 = !{!"", !3, i64 0, !3, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !20, i64 24, !3, i64 32}
!20 = !{!"double", !4, i64 0}
!21 = !{!19, !3, i64 32}
!22 = !{!9, !3, i64 856}
!23 = !{!9, !3, i64 860}
!24 = !{!9, !3, i64 884}
!25 = !{!9, !3, i64 868}
!26 = !{!9, !3, i64 872}
!27 = !{!9, !3, i64 864}
!28 = !{!29, !12, i64 28}
!29 = !{!"", !3, i64 0, !4, i64 4, !12, i64 28}
!30 = !{!9, !3, i64 876}
!31 = !{!32, !7, i64 4}
!32 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16}
!33 = !{!19, !7, i64 12}
!34 = !{!9, !3, i64 844}
!35 = !{!32, !7, i64 8}
!36 = !{!19, !7, i64 20}
!37 = !{!9, !3, i64 48}
!38 = !{!39, !7, i64 12}
!39 = !{!"cli_vid_filter_t", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24}
!40 = !{!19, !7, i64 8}
!41 = !{!19, !3, i64 4}
!42 = !{!43, !3, i64 12}
!43 = !{!"", !44, i64 0, !16, i64 48, !16, i64 56, !7, i64 64}
!44 = !{!"", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !4, i64 16, !4, i64 32}
!45 = !{!46, !3, i64 40}
!46 = !{!"x264_picture_t", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !16, i64 16, !16, i64 24, !7, i64 32, !47, i64 36, !48, i64 80, !49, i64 144, !50, i64 176, !7, i64 188}
!47 = !{!"x264_image_t", !3, i64 0, !3, i64 4, !4, i64 8, !4, i64 24}
!48 = !{!"x264_image_properties_t", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !20, i64 16, !20, i64 24, !4, i64 32, !20, i64 56}
!49 = !{!"x264_hrd_t", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24}
!50 = !{!"x264_sei_t", !3, i64 0, !7, i64 4, !7, i64 8}
!51 = !{!43, !3, i64 0}
!52 = !{!46, !3, i64 36}
!53 = !{!43, !16, i64 48}
!54 = !{!46, !16, i64 16}
!55 = !{!29, !3, i64 0}
!56 = !{!4, !4, i64 0}
!57 = !{!46, !3, i64 8}
!58 = !{!12, !12, i64 0}
!59 = !{!19, !20, i64 24}
!60 = !{!19, !7, i64 16}
!61 = !{!46, !3, i64 0}
!62 = !{!46, !3, i64 4}
!63 = !{!32, !7, i64 12}
!64 = !{!65, !7, i64 24}
!65 = !{!"x264_nal_t", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !3, i64 20, !7, i64 24, !3, i64 28}
!66 = !{!46, !16, i64 24}
!67 = !{!39, !7, i64 16}
!68 = !{!32, !7, i64 16}
!69 = !{!39, !7, i64 20}
!70 = !{!71, !7, i64 20}
!71 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!72 = !{!73, !3, i64 16}
!73 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !3, i64 16, !7, i64 20, !3, i64 24, !3, i64 28, !3, i64 32, !3, i64 36, !3, i64 40}
!74 = !{!9, !3, i64 72}
!75 = !{!73, !3, i64 36}
!76 = !{!73, !3, i64 40}
!77 = !{!9, !3, i64 36}
!78 = !{!73, !7, i64 0}
!79 = !{!73, !7, i64 20}
!80 = !{!73, !7, i64 4}
!81 = !{!73, !7, i64 8}
!82 = !{!73, !7, i64 12}
!83 = !{!9, !3, i64 40}
!84 = !{!85, !3, i64 0}
!85 = !{!"", !3, i64 0}
!86 = !{!87, !7, i64 0}
!87 = !{!"option", !7, i64 0, !3, i64 4, !7, i64 8, !3, i64 12}
!88 = !{!87, !3, i64 12}
!89 = !{i64 0, i64 4, !6, i64 4, i64 4, !6, i64 8, i64 4, !6, i64 12, i64 4, !6, i64 16, i64 4, !6}
!90 = !{!9, !3, i64 848}
!91 = !{!32, !7, i64 0}
!92 = !{!93, !3, i64 0}
!93 = !{!"", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !3, i64 20, !3, i64 24, !3, i64 28, !3, i64 32, !3, i64 36, !3, i64 40, !3, i64 44, !3, i64 48, !3, i64 52, !3, i64 56}
!94 = !{!93, !3, i64 4}
!95 = !{!93, !3, i64 8}
!96 = !{!93, !3, i64 12}
!97 = !{!9, !3, i64 168}
!98 = !{!93, !3, i64 24}
!99 = !{!9, !3, i64 60}
!100 = !{!9, !3, i64 56}
!101 = !{!93, !3, i64 32}
!102 = !{!93, !3, i64 36}
!103 = !{!9, !3, i64 880}
!104 = !{!93, !3, i64 40}
!105 = !{!93, !3, i64 56}
!106 = !{!73, !3, i64 24}
!107 = !{!73, !3, i64 28}
!108 = !{!73, !3, i64 32}
!109 = !{i64 0, i64 4, !6, i64 4, i64 4, !6, i64 8, i64 4, !6, i64 12, i64 4, !6, i64 16, i64 4, !6, i64 20, i64 4, !6}
!110 = !{!71, !7, i64 0}
!111 = !{!93, !3, i64 16}
!112 = !{!93, !3, i64 20}
!113 = !{!93, !3, i64 48}
!114 = !{!93, !3, i64 52}
!115 = !{!16, !16, i64 0}
!116 = !{!9, !3, i64 28}
!117 = !{!9, !3, i64 32}
!118 = !{!93, !3, i64 28}
!119 = !{!120, !4, i64 0}
!120 = !{!"x264_level_t", !4, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !3, i64 20, !121, i64 24, !4, i64 26, !4, i64 27, !4, i64 28, !4, i64 29, !4, i64 30, !4, i64 31}
!121 = !{!"short", !4, i64 0}
!122 = !{!9, !3, i64 44}
!123 = !{!9, !3, i64 92}
!124 = !{!120, !3, i64 12}
!125 = !{!9, !3, i64 100}
!126 = !{!9, !3, i64 108}
!127 = !{!9, !3, i64 116}
!128 = !{!9, !3, i64 120}
!129 = !{!9, !3, i64 124}
!130 = !{!9, !3, i64 128}
!131 = !{!9, !3, i64 152}
!132 = !{!9, !3, i64 156}
!133 = !{!9, !12, i64 656}
!134 = !{!9, !3, i64 704}
!135 = !{!9, !3, i64 668}
!136 = !{!9, !3, i64 672}
!137 = !{!9, !12, i64 676}
!138 = !{!9, !3, i64 640}
!139 = !{!9, !3, i64 644}
!140 = !{!9, !3, i64 648}
!141 = !{!9, !12, i64 664}
!142 = !{!9, !12, i64 680}
!143 = !{!9, !12, i64 684}
!144 = !{!9, !3, i64 548}
!145 = !{!9, !3, i64 692}
!146 = !{!9, !12, i64 696}
!147 = !{!9, !7, i64 712}
!148 = !{!9, !12, i64 724}
!149 = !{!9, !12, i64 732}
!150 = !{!9, !12, i64 728}
!151 = !{!9, !3, i64 536}
!152 = !{!9, !3, i64 552}
!153 = !{!9, !3, i64 556}
!154 = !{!9, !3, i64 568}
!155 = !{!9, !12, i64 596}
!156 = !{!9, !12, i64 600}
!157 = !{!9, !3, i64 580}
!158 = !{!9, !3, i64 592}
!159 = !{!9, !3, i64 64}
!160 = !{!9, !3, i64 68}
!161 = !{!9, !3, i64 80}
!162 = !{!9, !3, i64 84}
!163 = !{!9, !3, i64 88}
!164 = !{!9, !3, i64 836}
!165 = !{!9, !3, i64 852}
!166 = !{!9, !3, i64 76}
!167 = !{!9, !3, i64 544}
!168 = !{!169, !7, i64 0}
!169 = !{!"", !7, i64 0, !3, i64 4, !4, i64 8, !4, i64 24, !3, i64 40, !3, i64 44}
