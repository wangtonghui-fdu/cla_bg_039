; ModuleID = 'autocomplete.c'
source_filename = "autocomplete.c"
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

%struct.x264_cpu_name_t = type { i8*, i32 }
%struct.x264_cli_csp_t = type { i8*, i32, [4 x float], [4 x float], i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [23 x i8] c"--alternative-transfer\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"--aq-mode\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"--asm\00", align 1
@x264_cpu_names = external dso_local local_unnamed_addr constant [0 x %struct.x264_cpu_name_t], align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"--avcintra-class\00", align 1
@x264_avcintra_class_names = external dso_local local_unnamed_addr constant [0 x i8*], align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"--avcintra-flavor\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"--b-adapt\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"--b-pyramid\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"--colormatrix\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"--colorprim\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"--cqm\00", align 1
@x264_cqm_names = external dso_local local_unnamed_addr constant [0 x i8*], align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"--demuxer\00", align 1
@x264_demuxer_names = external dso_local local_unnamed_addr constant [0 x i8*], align 4
@.str.11 = private unnamed_addr constant [9 x i8] c"--direct\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"--frame-packing\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"--input-csp\00", align 1
@x264_cli_csps = external dso_local local_unnamed_addr constant [0 x %struct.x264_cli_csp_t], align 4
@.str.14 = private unnamed_addr constant [12 x i8] c"--input-fmt\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"--input-range\00", align 1
@x264_range_names = external dso_local local_unnamed_addr constant [0 x i8*], align 4
@.str.16 = private unnamed_addr constant [8 x i8] c"--level\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"--log-level\00", align 1
@x264_log_level_names = external dso_local local_unnamed_addr constant [0 x i8*], align 4
@.str.18 = private unnamed_addr constant [5 x i8] c"--me\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"--muxer\00", align 1
@x264_muxer_names = external dso_local local_unnamed_addr constant [0 x i8*], align 4
@.str.20 = private unnamed_addr constant [10 x i8] c"--nal-hrd\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"--output-csp\00", align 1
@x264_output_csp_names = external dso_local local_unnamed_addr constant [0 x i8*], align 4
@.str.22 = private unnamed_addr constant [15 x i8] c"--output-depth\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"8\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"--overscan\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"--partitions\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"-A\00", align 1
@x264_partition_names = external dso_local local_unnamed_addr constant [0 x i8*], align 4
@.str.27 = private unnamed_addr constant [7 x i8] c"--pass\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"--preset\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"--profile\00", align 1
@x264_valid_profile_names = external dso_local local_unnamed_addr constant [0 x i8*], align 4
@.str.31 = private unnamed_addr constant [11 x i8] c"--pulldown\00", align 1
@x264_pulldown_names = external dso_local local_unnamed_addr constant [0 x i8*], align 4
@.str.32 = private unnamed_addr constant [8 x i8] c"--range\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"--subme\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"-m\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"--transfer\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"--trellis\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"-t\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"--tune\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"--videoformat\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"--weightp\00", align 1
@opts_nosuggest = internal unnamed_addr constant [77 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.137, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.151, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.152, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.153, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.154, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.155, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.157, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.158, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.159, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.161, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.162, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.163, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.164, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.165, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.166, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.167, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.168, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.169, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.170, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.171, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.172, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.173, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.174, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.175, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.176, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.177, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.178, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.181, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.182, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.183, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.184, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.185, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.187, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.188, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.189, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.192, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.193, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.194, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.195, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.196, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.197, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.198, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.199, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.200, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.201, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.202, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.203, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.204, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.205, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.206, i32 0, i32 0), i8* null], align 4
@.str.41 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@opts_suggest = internal unnamed_addr constant [38 x i8*] [i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i8* null], align 4
@opts_standalone = internal unnamed_addr constant [43 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.222, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.223, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.224, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.225, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.226, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.227, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.228, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.229, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.230, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.231, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.232, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.233, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.234, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.235, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.236, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.237, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.238, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.239, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.240, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.241, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.242, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.243, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.244, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.245, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.246, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.247, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.248, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.249, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.250, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.251, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.252, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.253, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.254, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.255, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.256, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.257, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.258, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.259, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.260, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.261, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.262, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.263, i32 0, i32 0), i8* null], align 4
@.str.43 = private unnamed_addr constant [6 x i8] c"bt709\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"undef\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"bt470m\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"bt470bg\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"smpte170m\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"smpte240m\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"linear\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"log100\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"log316\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"iec61966-2-4\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"bt1361e\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"iec61966-2-1\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"bt2020-10\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"bt2020-12\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"smpte2084\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"smpte428\00", align 1
@.str.59 = private unnamed_addr constant [13 x i8] c"arib-std-b67\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 4
@.str.62 = private unnamed_addr constant [10 x i8] c"panasonic\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"sony\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"GBR\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"fcc\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"YCgCo\00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c"bt2020nc\00", align 1
@.str.71 = private unnamed_addr constant [8 x i8] c"bt2020c\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"smpte2085\00", align 1
@.str.73 = private unnamed_addr constant [18 x i8] c"chroma-derived-nc\00", align 1
@.str.74 = private unnamed_addr constant [17 x i8] c"chroma-derived-c\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"ICtCp\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"film\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"bt2020\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"smpte431\00", align 1
@.str.79 = private unnamed_addr constant [9 x i8] c"smpte432\00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c"spatial\00", align 1
@.str.81 = private unnamed_addr constant [9 x i8] c"temporal\00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.83 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.84 = private unnamed_addr constant [4 x i8] c"1.1\00", align 1
@.str.85 = private unnamed_addr constant [4 x i8] c"1.2\00", align 1
@.str.86 = private unnamed_addr constant [4 x i8] c"1.3\00", align 1
@.str.87 = private unnamed_addr constant [3 x i8] c"1b\00", align 1
@.str.88 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"2.1\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"2.2\00", align 1
@.str.91 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.92 = private unnamed_addr constant [4 x i8] c"3.1\00", align 1
@.str.93 = private unnamed_addr constant [4 x i8] c"3.2\00", align 1
@.str.94 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.95 = private unnamed_addr constant [4 x i8] c"4.1\00", align 1
@.str.96 = private unnamed_addr constant [4 x i8] c"4.2\00", align 1
@.str.97 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.98 = private unnamed_addr constant [4 x i8] c"5.1\00", align 1
@.str.99 = private unnamed_addr constant [4 x i8] c"5.2\00", align 1
@.str.100 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.101 = private unnamed_addr constant [4 x i8] c"6.1\00", align 1
@.str.102 = private unnamed_addr constant [4 x i8] c"6.2\00", align 1
@.str.103 = private unnamed_addr constant [4 x i8] c"dia\00", align 1
@.str.104 = private unnamed_addr constant [4 x i8] c"hex\00", align 1
@.str.105 = private unnamed_addr constant [4 x i8] c"umh\00", align 1
@.str.106 = private unnamed_addr constant [4 x i8] c"esa\00", align 1
@.str.107 = private unnamed_addr constant [5 x i8] c"tesa\00", align 1
@.str.108 = private unnamed_addr constant [4 x i8] c"vbr\00", align 1
@.str.109 = private unnamed_addr constant [4 x i8] c"cbr\00", align 1
@.str.110 = private unnamed_addr constant [5 x i8] c"show\00", align 1
@.str.111 = private unnamed_addr constant [5 x i8] c"crop\00", align 1
@.str.112 = private unnamed_addr constant [10 x i8] c"ultrafast\00", align 1
@.str.113 = private unnamed_addr constant [10 x i8] c"superfast\00", align 1
@.str.114 = private unnamed_addr constant [9 x i8] c"veryfast\00", align 1
@.str.115 = private unnamed_addr constant [7 x i8] c"faster\00", align 1
@.str.116 = private unnamed_addr constant [5 x i8] c"fast\00", align 1
@.str.117 = private unnamed_addr constant [7 x i8] c"medium\00", align 1
@.str.118 = private unnamed_addr constant [5 x i8] c"slow\00", align 1
@.str.119 = private unnamed_addr constant [7 x i8] c"slower\00", align 1
@.str.120 = private unnamed_addr constant [9 x i8] c"veryslow\00", align 1
@.str.121 = private unnamed_addr constant [8 x i8] c"placebo\00", align 1
@.str.122 = private unnamed_addr constant [10 x i8] c"animation\00", align 1
@.str.123 = private unnamed_addr constant [6 x i8] c"grain\00", align 1
@.str.124 = private unnamed_addr constant [11 x i8] c"stillimage\00", align 1
@.str.125 = private unnamed_addr constant [5 x i8] c"psnr\00", align 1
@.str.126 = private unnamed_addr constant [5 x i8] c"ssim\00", align 1
@.str.127 = private unnamed_addr constant [11 x i8] c"fastdecode\00", align 1
@.str.128 = private unnamed_addr constant [12 x i8] c"zerolatency\00", align 1
@.str.129 = private unnamed_addr constant [10 x i8] c"component\00", align 1
@.str.130 = private unnamed_addr constant [4 x i8] c"pal\00", align 1
@.str.131 = private unnamed_addr constant [5 x i8] c"ntsc\00", align 1
@.str.132 = private unnamed_addr constant [6 x i8] c"secam\00", align 1
@.str.133 = private unnamed_addr constant [4 x i8] c"mac\00", align 1
@.str.134 = private unnamed_addr constant [9 x i8] c"--b-bias\00", align 1
@.str.135 = private unnamed_addr constant [10 x i8] c"--bframes\00", align 1
@.str.136 = private unnamed_addr constant [3 x i8] c"-b\00", align 1
@.str.137 = private unnamed_addr constant [10 x i8] c"--deblock\00", align 1
@.str.138 = private unnamed_addr constant [3 x i8] c"-f\00", align 1
@.str.139 = private unnamed_addr constant [10 x i8] c"--bitrate\00", align 1
@.str.140 = private unnamed_addr constant [3 x i8] c"-B\00", align 1
@.str.141 = private unnamed_addr constant [19 x i8] c"--chroma-qp-offset\00", align 1
@.str.142 = private unnamed_addr constant [12 x i8] c"--chromaloc\00", align 1
@.str.143 = private unnamed_addr constant [11 x i8] c"--cplxblur\00", align 1
@.str.144 = private unnamed_addr constant [7 x i8] c"--cqm4\00", align 1
@.str.145 = private unnamed_addr constant [8 x i8] c"--cqm4i\00", align 1
@.str.146 = private unnamed_addr constant [9 x i8] c"--cqm4ic\00", align 1
@.str.147 = private unnamed_addr constant [9 x i8] c"--cqm4iy\00", align 1
@.str.148 = private unnamed_addr constant [8 x i8] c"--cqm4p\00", align 1
@.str.149 = private unnamed_addr constant [9 x i8] c"--cqm4pc\00", align 1
@.str.150 = private unnamed_addr constant [9 x i8] c"--cqm4py\00", align 1
@.str.151 = private unnamed_addr constant [7 x i8] c"--cqm8\00", align 1
@.str.152 = private unnamed_addr constant [8 x i8] c"--cqm8i\00", align 1
@.str.153 = private unnamed_addr constant [8 x i8] c"--cqm8p\00", align 1
@.str.154 = private unnamed_addr constant [6 x i8] c"--crf\00", align 1
@.str.155 = private unnamed_addr constant [10 x i8] c"--crf-max\00", align 1
@.str.156 = private unnamed_addr constant [12 x i8] c"--crop-rect\00", align 1
@.str.157 = private unnamed_addr constant [17 x i8] c"--deadzone-inter\00", align 1
@.str.158 = private unnamed_addr constant [17 x i8] c"--deadzone-intra\00", align 1
@.str.159 = private unnamed_addr constant [6 x i8] c"--fps\00", align 1
@.str.160 = private unnamed_addr constant [9 x i8] c"--frames\00", align 1
@.str.161 = private unnamed_addr constant [14 x i8] c"--input-depth\00", align 1
@.str.162 = private unnamed_addr constant [12 x i8] c"--input-res\00", align 1
@.str.163 = private unnamed_addr constant [10 x i8] c"--ipratio\00", align 1
@.str.164 = private unnamed_addr constant [9 x i8] c"--keyint\00", align 1
@.str.165 = private unnamed_addr constant [3 x i8] c"-I\00", align 1
@.str.166 = private unnamed_addr constant [20 x i8] c"--lookahead-threads\00", align 1
@.str.167 = private unnamed_addr constant [20 x i8] c"--mastering-display\00", align 1
@.str.168 = private unnamed_addr constant [6 x i8] c"--cll\00", align 1
@.str.169 = private unnamed_addr constant [10 x i8] c"--merange\00", align 1
@.str.170 = private unnamed_addr constant [13 x i8] c"--min-keyint\00", align 1
@.str.171 = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@.str.172 = private unnamed_addr constant [10 x i8] c"--mvrange\00", align 1
@.str.173 = private unnamed_addr constant [17 x i8] c"--mvrange-thread\00", align 1
@.str.174 = private unnamed_addr constant [5 x i8] c"--nr\00", align 1
@.str.175 = private unnamed_addr constant [16 x i8] c"--opencl-device\00", align 1
@.str.176 = private unnamed_addr constant [10 x i8] c"--pbratio\00", align 1
@.str.177 = private unnamed_addr constant [9 x i8] c"--psy-rd\00", align 1
@.str.178 = private unnamed_addr constant [8 x i8] c"--qblur\00", align 1
@.str.179 = private unnamed_addr constant [8 x i8] c"--qcomp\00", align 1
@.str.180 = private unnamed_addr constant [5 x i8] c"--qp\00", align 1
@.str.181 = private unnamed_addr constant [3 x i8] c"-q\00", align 1
@.str.182 = private unnamed_addr constant [8 x i8] c"--qpmax\00", align 1
@.str.183 = private unnamed_addr constant [8 x i8] c"--qpmin\00", align 1
@.str.184 = private unnamed_addr constant [9 x i8] c"--qpstep\00", align 1
@.str.185 = private unnamed_addr constant [10 x i8] c"--ratetol\00", align 1
@.str.186 = private unnamed_addr constant [6 x i8] c"--ref\00", align 1
@.str.187 = private unnamed_addr constant [3 x i8] c"-r\00", align 1
@.str.188 = private unnamed_addr constant [15 x i8] c"--rc-lookahead\00", align 1
@.str.189 = private unnamed_addr constant [6 x i8] c"--sar\00", align 1
@.str.190 = private unnamed_addr constant [11 x i8] c"--scenecut\00", align 1
@.str.191 = private unnamed_addr constant [7 x i8] c"--seek\00", align 1
@.str.192 = private unnamed_addr constant [9 x i8] c"--slices\00", align 1
@.str.193 = private unnamed_addr constant [13 x i8] c"--slices-max\00", align 1
@.str.194 = private unnamed_addr constant [17 x i8] c"--slice-max-size\00", align 1
@.str.195 = private unnamed_addr constant [16 x i8] c"--slice-max-mbs\00", align 1
@.str.196 = private unnamed_addr constant [16 x i8] c"--slice-min-mbs\00", align 1
@.str.197 = private unnamed_addr constant [9 x i8] c"--sps-id\00", align 1
@.str.198 = private unnamed_addr constant [17 x i8] c"--sync-lookahead\00", align 1
@.str.199 = private unnamed_addr constant [10 x i8] c"--threads\00", align 1
@.str.200 = private unnamed_addr constant [11 x i8] c"--timebase\00", align 1
@.str.201 = private unnamed_addr constant [14 x i8] c"--vbv-bufsize\00", align 1
@.str.202 = private unnamed_addr constant [11 x i8] c"--vbv-init\00", align 1
@.str.203 = private unnamed_addr constant [14 x i8] c"--vbv-maxrate\00", align 1
@.str.204 = private unnamed_addr constant [15 x i8] c"--video-filter\00", align 1
@.str.205 = private unnamed_addr constant [5 x i8] c"--vf\00", align 1
@.str.206 = private unnamed_addr constant [8 x i8] c"--zones\00", align 1
@.str.207 = private unnamed_addr constant [11 x i8] c"--fullhelp\00", align 1
@.str.208 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.209 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.210 = private unnamed_addr constant [11 x i8] c"--longhelp\00", align 1
@.str.211 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.212 = private unnamed_addr constant [10 x i8] c"--cqmfile\00", align 1
@.str.213 = private unnamed_addr constant [11 x i8] c"--dump-yuv\00", align 1
@.str.214 = private unnamed_addr constant [8 x i8] c"--index\00", align 1
@.str.215 = private unnamed_addr constant [15 x i8] c"--opencl-clbin\00", align 1
@.str.216 = private unnamed_addr constant [9 x i8] c"--output\00", align 1
@.str.217 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str.218 = private unnamed_addr constant [9 x i8] c"--qpfile\00", align 1
@.str.219 = private unnamed_addr constant [8 x i8] c"--stats\00", align 1
@.str.220 = private unnamed_addr constant [12 x i8] c"--tcfile-in\00", align 1
@.str.221 = private unnamed_addr constant [13 x i8] c"--tcfile-out\00", align 1
@.str.222 = private unnamed_addr constant [9 x i8] c"--8x8dct\00", align 1
@.str.223 = private unnamed_addr constant [6 x i8] c"--aud\00", align 1
@.str.224 = private unnamed_addr constant [6 x i8] c"--bff\00", align 1
@.str.225 = private unnamed_addr constant [16 x i8] c"--bluray-compat\00", align 1
@.str.226 = private unnamed_addr constant [8 x i8] c"--cabac\00", align 1
@.str.227 = private unnamed_addr constant [20 x i8] c"--constrained-intra\00", align 1
@.str.228 = private unnamed_addr constant [18 x i8] c"--cpu-independent\00", align 1
@.str.229 = private unnamed_addr constant [15 x i8] c"--dts-compress\00", align 1
@.str.230 = private unnamed_addr constant [18 x i8] c"--fake-interlaced\00", align 1
@.str.231 = private unnamed_addr constant [13 x i8] c"--fast-pskip\00", align 1
@.str.232 = private unnamed_addr constant [9 x i8] c"--filler\00", align 1
@.str.233 = private unnamed_addr constant [12 x i8] c"--force-cfr\00", align 1
@.str.234 = private unnamed_addr constant [9 x i8] c"--mbtree\00", align 1
@.str.235 = private unnamed_addr constant [13 x i8] c"--mixed-refs\00", align 1
@.str.236 = private unnamed_addr constant [12 x i8] c"--no-8x8dct\00", align 1
@.str.237 = private unnamed_addr constant [9 x i8] c"--no-asm\00", align 1
@.str.238 = private unnamed_addr constant [11 x i8] c"--no-cabac\00", align 1
@.str.239 = private unnamed_addr constant [15 x i8] c"--no-chroma-me\00", align 1
@.str.240 = private unnamed_addr constant [18 x i8] c"--no-dct-decimate\00", align 1
@.str.241 = private unnamed_addr constant [13 x i8] c"--no-deblock\00", align 1
@.str.242 = private unnamed_addr constant [16 x i8] c"--no-fast-pskip\00", align 1
@.str.243 = private unnamed_addr constant [12 x i8] c"--no-mbtree\00", align 1
@.str.244 = private unnamed_addr constant [16 x i8] c"--no-mixed-refs\00", align 1
@.str.245 = private unnamed_addr constant [14 x i8] c"--no-progress\00", align 1
@.str.246 = private unnamed_addr constant [9 x i8] c"--no-psy\00", align 1
@.str.247 = private unnamed_addr constant [14 x i8] c"--no-scenecut\00", align 1
@.str.248 = private unnamed_addr constant [13 x i8] c"--no-weightb\00", align 1
@.str.249 = private unnamed_addr constant [20 x i8] c"--non-deterministic\00", align 1
@.str.250 = private unnamed_addr constant [11 x i8] c"--open-gop\00", align 1
@.str.251 = private unnamed_addr constant [9 x i8] c"--opencl\00", align 1
@.str.252 = private unnamed_addr constant [13 x i8] c"--pic-struct\00", align 1
@.str.253 = private unnamed_addr constant [7 x i8] c"--psnr\00", align 1
@.str.254 = private unnamed_addr constant [8 x i8] c"--quiet\00", align 1
@.str.255 = private unnamed_addr constant [17 x i8] c"--sliced-threads\00", align 1
@.str.256 = private unnamed_addr constant [17 x i8] c"--slow-firstpass\00", align 1
@.str.257 = private unnamed_addr constant [7 x i8] c"--ssim\00", align 1
@.str.258 = private unnamed_addr constant [13 x i8] c"--stitchable\00", align 1
@.str.259 = private unnamed_addr constant [6 x i8] c"--tff\00", align 1
@.str.260 = private unnamed_addr constant [15 x i8] c"--thread-input\00", align 1
@.str.261 = private unnamed_addr constant [10 x i8] c"--verbose\00", align 1
@.str.262 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.263 = private unnamed_addr constant [10 x i8] c"--weightb\00", align 1

; Function Attrs: nounwind
define hidden i32 @x264_cli_autocomplete(i8* readonly %prev, i8* readonly %cur) local_unnamed_addr #0 {
entry:
  %buf.i = alloca [16 x i8], align 4
  %call = tail call i32 @strlen(i8* nonnull dereferenceable(1) %cur) #6
  %call1 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %prev, i8* nonnull dereferenceable(23) getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0)) #6
  %tobool = icmp eq i32 %call1, 0
  br i1 %tobool, label %land.lhs.true2.i.1, label %if.else

if.else:                                          ; preds = %entry
  %call3 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %prev, i8* nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0)) #6
  %tobool4 = icmp eq i32 %call3, 0
  br i1 %tobool4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else
  %0 = getelementptr inbounds [16 x i8], [16 x i8]* %buf.i, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #7
  %call.i699 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* nonnull %0, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0), i32 0) #7
  %1 = load i8, i8* %0, align 4, !tbaa !2
  %tobool1.i.i = icmp eq i8 %1, 0
  br i1 %tobool1.i.i, label %suggest.exit.i, label %land.lhs.true2.i.i

land.lhs.true2.i.i:                               ; preds = %if.then5
  %call.i.i = call i32 @strncmp(i8* nonnull %0, i8* %cur, i32 %call) #6
  %tobool3.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.i.i, label %if.then.i.i, label %suggest.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  %puts.i.i = call i32 @puts(i8* nonnull %0) #7
  br label %suggest.exit.i

suggest.exit.i:                                   ; preds = %if.then.i.i, %land.lhs.true2.i.i, %if.then5
  %call.i699.1 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* nonnull %0, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0), i32 1) #7
  %2 = load i8, i8* %0, align 4, !tbaa !2
  %tobool1.i.i.1 = icmp eq i8 %2, 0
  br i1 %tobool1.i.i.1, label %suggest.exit.i.1, label %land.lhs.true2.i.i.1

if.else6:                                         ; preds = %if.else
  %call7 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %prev, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0)) #6
  %tobool8 = icmp eq i32 %call7, 0
  br i1 %tobool8, label %for.cond10.preheader, label %if.else17

for.cond10.preheader:                             ; preds = %if.else6
  %3 = load i32, i32* getelementptr inbounds ([0 x %struct.x264_cpu_name_t], [0 x %struct.x264_cpu_name_t]* @x264_cpu_names, i32 0, i32 0, i32 1), align 4, !tbaa !5
  %tobool111133 = icmp eq i32 %3, 0
  br i1 %tobool111133, label %cleanup, label %for.body13

for.body13:                                       ; preds = %for.cond10.preheader, %suggest_lower.exit
  %cpu.01134 = phi %struct.x264_cpu_name_t* [ %incdec.ptr15, %suggest_lower.exit ], [ getelementptr inbounds ([0 x %struct.x264_cpu_name_t], [0 x %struct.x264_cpu_name_t]* @x264_cpu_names, i32 0, i32 0), %for.cond10.preheader ]
  %name = getelementptr inbounds %struct.x264_cpu_name_t, %struct.x264_cpu_name_t* %cpu.01134, i32 0, i32 0
  %4 = load i8*, i8** %name, align 4, !tbaa !9
  %tobool.i700 = icmp eq i8* %4, null
  br i1 %tobool.i700, label %suggest_lower.exit, label %land.lhs.true.i702

land.lhs.true.i702:                               ; preds = %for.body13
  %5 = load i8, i8* %4, align 1, !tbaa !2
  %tobool1.i701 = icmp eq i8 %5, 0
  br i1 %tobool1.i701, label %suggest_lower.exit, label %land.lhs.true2.i705

land.lhs.true2.i705:                              ; preds = %land.lhs.true.i702
  %call.i703 = tail call i32 @strncasecmp(i8* nonnull %4, i8* %cur, i32 %call) #6
  %tobool3.i704 = icmp eq i32 %call.i703, 0
  br i1 %tobool3.i704, label %for.body.i707, label %suggest_lower.exit

for.body.i707:                                    ; preds = %land.lhs.true2.i705, %for.body.i707
  %s.addr.024.i = phi i8* [ %incdec.ptr.i, %for.body.i707 ], [ %4, %land.lhs.true2.i705 ]
  %6 = phi i8 [ %.pr.i, %for.body.i707 ], [ %5, %land.lhs.true2.i705 ]
  %.off.i = add i8 %6, -65
  %7 = icmp ugt i8 %.off.i, 25
  %8 = or i8 %6, 32
  %spec.select.i = select i1 %7, i8 %6, i8 %8
  %cond.i = sext i8 %spec.select.i to i32
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4, !tbaa !10
  %call.i.i706 = tail call i32 @putc(i32 %cond.i, %struct._IO_FILE* %9) #7
  %incdec.ptr.i = getelementptr inbounds i8, i8* %s.addr.024.i, i32 1
  %.pr.i = load i8, i8* %incdec.ptr.i, align 1, !tbaa !2
  %tobool4.i = icmp eq i8 %.pr.i, 0
  br i1 %tobool4.i, label %for.end.i, label %for.body.i707

for.end.i:                                        ; preds = %for.body.i707
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 4, !tbaa !10
  %call.i22.i = tail call i32 @putc(i32 10, %struct._IO_FILE* %10) #7
  br label %suggest_lower.exit

suggest_lower.exit:                               ; preds = %for.body13, %land.lhs.true.i702, %land.lhs.true2.i705, %for.end.i
  %incdec.ptr15 = getelementptr inbounds %struct.x264_cpu_name_t, %struct.x264_cpu_name_t* %cpu.01134, i32 1
  %flags = getelementptr inbounds %struct.x264_cpu_name_t, %struct.x264_cpu_name_t* %cpu.01134, i32 1, i32 1
  %11 = load i32, i32* %flags, align 4, !tbaa !5
  %tobool11 = icmp eq i32 %11, 0
  br i1 %tobool11, label %cleanup, label %for.body13

if.else17:                                        ; preds = %if.else6
  %call18 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %prev, i8* nonnull dereferenceable(17) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0)) #6
  %tobool19 = icmp eq i32 %call18, 0
  br i1 %tobool19, label %for.cond22.preheader, label %if.else29

for.cond22.preheader:                             ; preds = %if.else17
  %12 = load i8*, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @x264_avcintra_class_names, i32 0, i32 0), align 4, !tbaa !10
  %tobool231135 = icmp eq i8* %12, null
  br i1 %tobool231135, label %cleanup, label %land.lhs.true.i710

land.lhs.true.i710:                               ; preds = %for.cond22.preheader, %suggest.exit716
  %13 = phi i8* [ %15, %suggest.exit716 ], [ %12, %for.cond22.preheader ]
  %s21.01136 = phi i8** [ %incdec.ptr27, %suggest.exit716 ], [ getelementptr inbounds ([0 x i8*], [0 x i8*]* @x264_avcintra_class_names, i32 0, i32 0), %for.cond22.preheader ]
  %14 = load i8, i8* %13, align 1, !tbaa !2
  %tobool1.i709 = icmp eq i8 %14, 0
  br i1 %tobool1.i709, label %suggest.exit716, label %land.lhs.true2.i713

land.lhs.true2.i713:                              ; preds = %land.lhs.true.i710
  %call.i711 = tail call i32 @strncmp(i8* nonnull %13, i8* %cur, i32 %call) #6
  %tobool3.i712 = icmp eq i32 %call.i711, 0
  br i1 %tobool3.i712, label %if.then.i715, label %suggest.exit716

if.then.i715:                                     ; preds = %land.lhs.true2.i713
  %puts.i714 = tail call i32 @puts(i8* nonnull %13) #7
  br label %suggest.exit716

suggest.exit716:                                  ; preds = %land.lhs.true.i710, %land.lhs.true2.i713, %if.then.i715
  %incdec.ptr27 = getelementptr inbounds i8*, i8** %s21.01136, i32 1
  %15 = load i8*, i8** %incdec.ptr27, align 4, !tbaa !10
  %tobool23 = icmp eq i8* %15, null
  br i1 %tobool23, label %cleanup, label %land.lhs.true.i710

if.else29:                                        ; preds = %if.else17
  %call30 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %prev, i8* nonnull dereferenceable(18) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0)) #6
  %tobool31 = icmp eq i32 %call30, 0
  br i1 %tobool31, label %land.lhs.true2.i722, label %if.else41

land.lhs.true2.i722:                              ; preds = %if.else29
  %call.i720 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i721 = icmp eq i32 %call.i720, 0
  br i1 %tobool3.i721, label %if.then.i724, label %land.lhs.true2.i722.1

if.then.i724:                                     ; preds = %land.lhs.true2.i722
  %puts.i723 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i32 0, i32 0)) #7
  br label %land.lhs.true2.i722.1

if.else41:                                        ; preds = %if.else29
  %call42 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %prev, i8* nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0)) #6
  %tobool43 = icmp eq i32 %call42, 0
  br i1 %tobool43, label %if.then44, label %if.else45

if.then44:                                        ; preds = %if.else41
  %16 = getelementptr inbounds [16 x i8], [16 x i8]* %buf.i, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %16) #7
  %call.i728 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* nonnull %16, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0), i32 0) #7
  %17 = load i8, i8* %16, align 4, !tbaa !2
  %tobool1.i.i729 = icmp eq i8 %17, 0
  br i1 %tobool1.i.i729, label %suggest.exit.i738, label %land.lhs.true2.i.i733

land.lhs.true2.i.i733:                            ; preds = %if.then44
  %call.i.i731 = call i32 @strncmp(i8* nonnull %16, i8* %cur, i32 %call) #6
  %tobool3.i.i732 = icmp eq i32 %call.i.i731, 0
  br i1 %tobool3.i.i732, label %if.then.i.i735, label %suggest.exit.i738

if.then.i.i735:                                   ; preds = %land.lhs.true2.i.i733
  %puts.i.i734 = call i32 @puts(i8* nonnull %16) #7
  br label %suggest.exit.i738

suggest.exit.i738:                                ; preds = %if.then.i.i735, %land.lhs.true2.i.i733, %if.then44
  %call.i728.1 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* nonnull %16, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0), i32 1) #7
  %18 = load i8, i8* %16, align 4, !tbaa !2
  %tobool1.i.i729.1 = icmp eq i8 %18, 0
  br i1 %tobool1.i.i729.1, label %suggest.exit.i738.1, label %land.lhs.true2.i.i733.1

if.else45:                                        ; preds = %if.else41
  %call46 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %prev, i8* nonnull dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0)) #6
  %tobool47 = icmp eq i32 %call46, 0
  br i1 %tobool47, label %land.lhs.true2.i745, label %if.else57

land.lhs.true2.i745:                              ; preds = %if.else45
  %call.i743 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i744 = icmp eq i32 %call.i743, 0
  br i1 %tobool3.i744, label %if.then.i747, label %land.lhs.true2.i745.1

if.then.i747:                                     ; preds = %land.lhs.true2.i745
  %puts.i746 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0)) #7
  br label %land.lhs.true2.i745.1

if.else57:                                        ; preds = %if.else45
  %call58 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %prev, i8* nonnull dereferenceable(14) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0)) #6
  %tobool59 = icmp eq i32 %call58, 0
  br i1 %tobool59, label %land.lhs.true2.i754, label %if.else69

land.lhs.true2.i754:                              ; preds = %if.else57
  %call.i752 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i753 = icmp eq i32 %call.i752, 0
  br i1 %tobool3.i753, label %if.then.i756, label %land.lhs.true2.i754.1

if.then.i756:                                     ; preds = %land.lhs.true2.i754
  %puts.i755 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i32 0, i32 0)) #7
  br label %land.lhs.true2.i754.1

if.else69:                                        ; preds = %if.else57
  %call70 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %prev, i8* nonnull dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0)) #6
  %tobool71 = icmp eq i32 %call70, 0
  br i1 %tobool71, label %land.lhs.true2.i763.1, label %if.else81

if.else81:                                        ; preds = %if.else69
  %call82 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %prev, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0)) #6
  %tobool83 = icmp eq i32 %call82, 0
  br i1 %tobool83, label %for.cond86.preheader, label %if.else93

for.cond86.preheader:                             ; preds = %if.else81
  %19 = load i8*, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @x264_cqm_names, i32 0, i32 0), align 4, !tbaa !10
  %tobool871141 = icmp eq i8* %19, null
  br i1 %tobool871141, label %cleanup, label %land.lhs.true.i769

land.lhs.true.i769:                               ; preds = %for.cond86.preheader, %suggest.exit775
  %20 = phi i8* [ %22, %suggest.exit775 ], [ %19, %for.cond86.preheader ]
  %s85.01142 = phi i8** [ %incdec.ptr91, %suggest.exit775 ], [ getelementptr inbounds ([0 x i8*], [0 x i8*]* @x264_cqm_names, i32 0, i32 0), %for.cond86.preheader ]
  %21 = load i8, i8* %20, align 1, !tbaa !2
  %tobool1.i768 = icmp eq i8 %21, 0
  br i1 %tobool1.i768, label %suggest.exit775, label %land.lhs.true2.i772

land.lhs.true2.i772:                              ; preds = %land.lhs.true.i769
  %call.i770 = tail call i32 @strncmp(i8* nonnull %20, i8* %cur, i32 %call) #6
  %tobool3.i771 = icmp eq i32 %call.i770, 0
  br i1 %tobool3.i771, label %if.then.i774, label %suggest.exit775

if.then.i774:                                     ; preds = %land.lhs.true2.i772
  %puts.i773 = tail call i32 @puts(i8* nonnull %20) #7
  br label %suggest.exit775

suggest.exit775:                                  ; preds = %land.lhs.true.i769, %land.lhs.true2.i772, %if.then.i774
  %incdec.ptr91 = getelementptr inbounds i8*, i8** %s85.01142, i32 1
  %22 = load i8*, i8** %incdec.ptr91, align 4, !tbaa !10
  %tobool87 = icmp eq i8* %22, null
  br i1 %tobool87, label %cleanup, label %land.lhs.true.i769

if.else93:                                        ; preds = %if.else81
  %call94 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %prev, i8* nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0)) #6
  %tobool95 = icmp eq i32 %call94, 0
  br i1 %tobool95, label %for.cond98.preheader, label %if.else105

for.cond98.preheader:                             ; preds = %if.else93
  %23 = load i8*, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @x264_demuxer_names, i32 0, i32 0), align 4, !tbaa !10
  %tobool991143 = icmp eq i8* %23, null
  br i1 %tobool991143, label %cleanup, label %land.lhs.true.i778

land.lhs.true.i778:                               ; preds = %for.cond98.preheader, %suggest.exit784
  %24 = phi i8* [ %26, %suggest.exit784 ], [ %23, %for.cond98.preheader ]
  %s97.01144 = phi i8** [ %incdec.ptr103, %suggest.exit784 ], [ getelementptr inbounds ([0 x i8*], [0 x i8*]* @x264_demuxer_names, i32 0, i32 0), %for.cond98.preheader ]
  %25 = load i8, i8* %24, align 1, !tbaa !2
  %tobool1.i777 = icmp eq i8 %25, 0
  br i1 %tobool1.i777, label %suggest.exit784, label %land.lhs.true2.i781

land.lhs.true2.i781:                              ; preds = %land.lhs.true.i778
  %call.i779 = tail call i32 @strncmp(i8* nonnull %24, i8* %cur, i32 %call) #6
  %tobool3.i780 = icmp eq i32 %call.i779, 0
  br i1 %tobool3.i780, label %if.then.i783, label %suggest.exit784

if.then.i783:                                     ; preds = %land.lhs.true2.i781
  %puts.i782 = tail call i32 @puts(i8* nonnull %24) #7
  br label %suggest.exit784

suggest.exit784:                                  ; preds = %land.lhs.true.i778, %land.lhs.true2.i781, %if.then.i783
  %incdec.ptr103 = getelementptr inbounds i8*, i8** %s97.01144, i32 1
  %26 = load i8*, i8** %incdec.ptr103, align 4, !tbaa !10
  %tobool99 = icmp eq i8* %26, null
  br i1 %tobool99, label %cleanup, label %land.lhs.true.i778

if.else105:                                       ; preds = %if.else93
  %call106 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %prev, i8* nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0)) #6
  %tobool107 = icmp eq i32 %call106, 0
  br i1 %tobool107, label %land.lhs.true2.i790, label %if.else117

land.lhs.true2.i790:                              ; preds = %if.else105
  %call.i788 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i789 = icmp eq i32 %call.i788, 0
  br i1 %tobool3.i789, label %if.then.i792, label %land.lhs.true2.i790.1

if.then.i792:                                     ; preds = %land.lhs.true2.i790
  %puts.i791 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0)) #7
  br label %land.lhs.true2.i790.1

if.else117:                                       ; preds = %if.else105
  %call118 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %prev, i8* nonnull dereferenceable(16) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0)) #6
  %tobool119 = icmp eq i32 %call118, 0
  br i1 %tobool119, label %if.then120, label %if.else121

if.then120:                                       ; preds = %if.else117
  %27 = getelementptr inbounds [16 x i8], [16 x i8]* %buf.i, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %27) #7
  %call.i796 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* nonnull %27, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0), i32 0) #7
  %28 = load i8, i8* %27, align 4, !tbaa !2
  %tobool1.i.i797 = icmp eq i8 %28, 0
  br i1 %tobool1.i.i797, label %suggest.exit.i806, label %land.lhs.true2.i.i801

land.lhs.true2.i.i801:                            ; preds = %if.then120
  %call.i.i799 = call i32 @strncmp(i8* nonnull %27, i8* %cur, i32 %call) #6
  %tobool3.i.i800 = icmp eq i32 %call.i.i799, 0
  br i1 %tobool3.i.i800, label %if.then.i.i803, label %suggest.exit.i806

if.then.i.i803:                                   ; preds = %land.lhs.true2.i.i801
  %puts.i.i802 = call i32 @puts(i8* nonnull %27) #7
  br label %suggest.exit.i806

suggest.exit.i806:                                ; preds = %if.then.i.i803, %land.lhs.true2.i.i801, %if.then120
  %call.i796.1 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* nonnull %27, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0), i32 1) #7
  %29 = load i8, i8* %27, align 4, !tbaa !2
  %tobool1.i.i797.1 = icmp eq i8 %29, 0
  br i1 %tobool1.i.i797.1, label %suggest.exit.i806.1, label %land.lhs.true2.i.i801.1

if.else121:                                       ; preds = %if.else117
  %call122 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %prev, i8* nonnull dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0)) #6
  %tobool123 = icmp eq i32 %call122, 0
  br i1 %tobool123, label %for.body127.preheader, label %if.else131

for.body127.preheader:                            ; preds = %if.else121
  %30 = load i8*, i8** getelementptr inbounds ([0 x %struct.x264_cli_csp_t], [0 x %struct.x264_cli_csp_t]* @x264_cli_csps, i32 0, i32 1, i32 0), align 4, !tbaa !11
  %tobool.i808 = icmp eq i8* %30, null
  br i1 %tobool.i808, label %suggest.exit816, label %land.lhs.true.i810

land.lhs.true.i810:                               ; preds = %for.body127.preheader
  %31 = load i8, i8* %30, align 1, !tbaa !2
  %tobool1.i809 = icmp eq i8 %31, 0
  br i1 %tobool1.i809, label %suggest.exit816, label %land.lhs.true2.i813

land.lhs.true2.i813:                              ; preds = %land.lhs.true.i810
  %call.i811 = tail call i32 @strncmp(i8* nonnull %30, i8* %cur, i32 %call) #6
  %tobool3.i812 = icmp eq i32 %call.i811, 0
  br i1 %tobool3.i812, label %if.then.i815, label %suggest.exit816

if.then.i815:                                     ; preds = %land.lhs.true2.i813
  %puts.i814 = tail call i32 @puts(i8* nonnull %30) #7
  br label %suggest.exit816

suggest.exit816:                                  ; preds = %for.body127.preheader, %land.lhs.true.i810, %land.lhs.true2.i813, %if.then.i815
  %32 = load i8*, i8** getelementptr inbounds ([0 x %struct.x264_cli_csp_t], [0 x %struct.x264_cli_csp_t]* @x264_cli_csps, i32 0, i32 2, i32 0), align 4, !tbaa !11
  %tobool.i808.1 = icmp eq i8* %32, null
  br i1 %tobool.i808.1, label %suggest.exit816.1, label %land.lhs.true.i810.1

if.else131:                                       ; preds = %if.else121
  %call132 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %prev, i8* nonnull dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0)) #6
  %tobool133 = icmp eq i32 %call132, 0
  br i1 %tobool133, label %cleanup, label %if.else135

if.else135:                                       ; preds = %if.else131
  %call136 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %prev, i8* nonnull dereferenceable(14) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0)) #6
  %tobool137 = icmp eq i32 %call136, 0
  br i1 %tobool137, label %for.cond140.preheader, label %if.else147

for.cond140.preheader:                            ; preds = %if.else135
  %33 = load i8*, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @x264_range_names, i32 0, i32 0), align 4, !tbaa !10
  %tobool1411147 = icmp eq i8* %33, null
  br i1 %tobool1411147, label %cleanup, label %land.lhs.true.i819

land.lhs.true.i819:                               ; preds = %for.cond140.preheader, %suggest.exit825
  %34 = phi i8* [ %36, %suggest.exit825 ], [ %33, %for.cond140.preheader ]
  %s139.01148 = phi i8** [ %incdec.ptr145, %suggest.exit825 ], [ getelementptr inbounds ([0 x i8*], [0 x i8*]* @x264_range_names, i32 0, i32 0), %for.cond140.preheader ]
  %35 = load i8, i8* %34, align 1, !tbaa !2
  %tobool1.i818 = icmp eq i8 %35, 0
  br i1 %tobool1.i818, label %suggest.exit825, label %land.lhs.true2.i822

land.lhs.true2.i822:                              ; preds = %land.lhs.true.i819
  %call.i820 = tail call i32 @strncmp(i8* nonnull %34, i8* %cur, i32 %call) #6
  %tobool3.i821 = icmp eq i32 %call.i820, 0
  br i1 %tobool3.i821, label %if.then.i824, label %suggest.exit825

if.then.i824:                                     ; preds = %land.lhs.true2.i822
  %puts.i823 = tail call i32 @puts(i8* nonnull %34) #7
  br label %suggest.exit825

suggest.exit825:                                  ; preds = %land.lhs.true.i819, %land.lhs.true2.i822, %if.then.i824
  %incdec.ptr145 = getelementptr inbounds i8*, i8** %s139.01148, i32 1
  %36 = load i8*, i8** %incdec.ptr145, align 4, !tbaa !10
  %tobool141 = icmp eq i8* %36, null
  br i1 %tobool141, label %cleanup, label %land.lhs.true.i819

if.else147:                                       ; preds = %if.else135
  %call148 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %prev, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0)) #6
  %tobool149 = icmp eq i32 %call148, 0
  br i1 %tobool149, label %land.lhs.true2.i831, label %if.else159

land.lhs.true2.i831:                              ; preds = %if.else147
  %call.i829 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.83, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i830 = icmp eq i32 %call.i829, 0
  br i1 %tobool3.i830, label %if.then.i833, label %land.lhs.true2.i831.1

if.then.i833:                                     ; preds = %land.lhs.true2.i831
  %puts.i832 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.83, i32 0, i32 0)) #7
  br label %land.lhs.true2.i831.1

if.else159:                                       ; preds = %if.else147
  %call160 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %prev, i8* nonnull dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0)) #6
  %tobool161 = icmp eq i32 %call160, 0
  br i1 %tobool161, label %for.cond164.preheader, label %if.else171

for.cond164.preheader:                            ; preds = %if.else159
  %37 = load i8*, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @x264_log_level_names, i32 0, i32 0), align 4, !tbaa !10
  %tobool1651150 = icmp eq i8* %37, null
  br i1 %tobool1651150, label %cleanup, label %land.lhs.true.i837

land.lhs.true.i837:                               ; preds = %for.cond164.preheader, %suggest.exit843
  %38 = phi i8* [ %40, %suggest.exit843 ], [ %37, %for.cond164.preheader ]
  %s163.01151 = phi i8** [ %incdec.ptr169, %suggest.exit843 ], [ getelementptr inbounds ([0 x i8*], [0 x i8*]* @x264_log_level_names, i32 0, i32 0), %for.cond164.preheader ]
  %39 = load i8, i8* %38, align 1, !tbaa !2
  %tobool1.i836 = icmp eq i8 %39, 0
  br i1 %tobool1.i836, label %suggest.exit843, label %land.lhs.true2.i840

land.lhs.true2.i840:                              ; preds = %land.lhs.true.i837
  %call.i838 = tail call i32 @strncmp(i8* nonnull %38, i8* %cur, i32 %call) #6
  %tobool3.i839 = icmp eq i32 %call.i838, 0
  br i1 %tobool3.i839, label %if.then.i842, label %suggest.exit843

if.then.i842:                                     ; preds = %land.lhs.true2.i840
  %puts.i841 = tail call i32 @puts(i8* nonnull %38) #7
  br label %suggest.exit843

suggest.exit843:                                  ; preds = %land.lhs.true.i837, %land.lhs.true2.i840, %if.then.i842
  %incdec.ptr169 = getelementptr inbounds i8*, i8** %s163.01151, i32 1
  %40 = load i8*, i8** %incdec.ptr169, align 4, !tbaa !10
  %tobool165 = icmp eq i8* %40, null
  br i1 %tobool165, label %cleanup, label %land.lhs.true.i837

if.else171:                                       ; preds = %if.else159
  %call172 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %prev, i8* nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0)) #6
  %tobool173 = icmp eq i32 %call172, 0
  br i1 %tobool173, label %land.lhs.true2.i849, label %if.else183

land.lhs.true2.i849:                              ; preds = %if.else171
  %call.i847 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.103, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i848 = icmp eq i32 %call.i847, 0
  br i1 %tobool3.i848, label %if.then.i851, label %land.lhs.true2.i849.1

if.then.i851:                                     ; preds = %land.lhs.true2.i849
  %puts.i850 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.103, i32 0, i32 0)) #7
  br label %land.lhs.true2.i849.1

if.else183:                                       ; preds = %if.else171
  %call184 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %prev, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0)) #6
  %tobool185 = icmp eq i32 %call184, 0
  br i1 %tobool185, label %for.cond188.preheader, label %if.else195

for.cond188.preheader:                            ; preds = %if.else183
  %41 = load i8*, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @x264_muxer_names, i32 0, i32 0), align 4, !tbaa !10
  %tobool1891153 = icmp eq i8* %41, null
  br i1 %tobool1891153, label %cleanup, label %land.lhs.true.i855

land.lhs.true.i855:                               ; preds = %for.cond188.preheader, %suggest.exit861
  %42 = phi i8* [ %44, %suggest.exit861 ], [ %41, %for.cond188.preheader ]
  %s187.01154 = phi i8** [ %incdec.ptr193, %suggest.exit861 ], [ getelementptr inbounds ([0 x i8*], [0 x i8*]* @x264_muxer_names, i32 0, i32 0), %for.cond188.preheader ]
  %43 = load i8, i8* %42, align 1, !tbaa !2
  %tobool1.i854 = icmp eq i8 %43, 0
  br i1 %tobool1.i854, label %suggest.exit861, label %land.lhs.true2.i858

land.lhs.true2.i858:                              ; preds = %land.lhs.true.i855
  %call.i856 = tail call i32 @strncmp(i8* nonnull %42, i8* %cur, i32 %call) #6
  %tobool3.i857 = icmp eq i32 %call.i856, 0
  br i1 %tobool3.i857, label %if.then.i860, label %suggest.exit861

if.then.i860:                                     ; preds = %land.lhs.true2.i858
  %puts.i859 = tail call i32 @puts(i8* nonnull %42) #7
  br label %suggest.exit861

suggest.exit861:                                  ; preds = %land.lhs.true.i855, %land.lhs.true2.i858, %if.then.i860
  %incdec.ptr193 = getelementptr inbounds i8*, i8** %s187.01154, i32 1
  %44 = load i8*, i8** %incdec.ptr193, align 4, !tbaa !10
  %tobool189 = icmp eq i8* %44, null
  br i1 %tobool189, label %cleanup, label %land.lhs.true.i855

if.else195:                                       ; preds = %if.else183
  %call196 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %prev, i8* nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0)) #6
  %tobool197 = icmp eq i32 %call196, 0
  br i1 %tobool197, label %land.lhs.true2.i867, label %if.else207

land.lhs.true2.i867:                              ; preds = %if.else195
  %call.i865 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i866 = icmp eq i32 %call.i865, 0
  br i1 %tobool3.i866, label %if.then.i869, label %land.lhs.true2.i867.1

if.then.i869:                                     ; preds = %land.lhs.true2.i867
  %puts.i868 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0)) #7
  br label %land.lhs.true2.i867.1

if.else207:                                       ; preds = %if.else195
  %call208 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %prev, i8* nonnull dereferenceable(13) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0)) #6
  %tobool209 = icmp eq i32 %call208, 0
  br i1 %tobool209, label %for.cond212.preheader, label %if.else219

for.cond212.preheader:                            ; preds = %if.else207
  %45 = load i8*, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @x264_output_csp_names, i32 0, i32 0), align 4, !tbaa !10
  %tobool2131156 = icmp eq i8* %45, null
  br i1 %tobool2131156, label %cleanup, label %land.lhs.true.i873

land.lhs.true.i873:                               ; preds = %for.cond212.preheader, %suggest.exit879
  %46 = phi i8* [ %48, %suggest.exit879 ], [ %45, %for.cond212.preheader ]
  %s211.01157 = phi i8** [ %incdec.ptr217, %suggest.exit879 ], [ getelementptr inbounds ([0 x i8*], [0 x i8*]* @x264_output_csp_names, i32 0, i32 0), %for.cond212.preheader ]
  %47 = load i8, i8* %46, align 1, !tbaa !2
  %tobool1.i872 = icmp eq i8 %47, 0
  br i1 %tobool1.i872, label %suggest.exit879, label %land.lhs.true2.i876

land.lhs.true2.i876:                              ; preds = %land.lhs.true.i873
  %call.i874 = tail call i32 @strncmp(i8* nonnull %46, i8* %cur, i32 %call) #6
  %tobool3.i875 = icmp eq i32 %call.i874, 0
  br i1 %tobool3.i875, label %if.then.i878, label %suggest.exit879

if.then.i878:                                     ; preds = %land.lhs.true2.i876
  %puts.i877 = tail call i32 @puts(i8* nonnull %46) #7
  br label %suggest.exit879

suggest.exit879:                                  ; preds = %land.lhs.true.i873, %land.lhs.true2.i876, %if.then.i878
  %incdec.ptr217 = getelementptr inbounds i8*, i8** %s211.01157, i32 1
  %48 = load i8*, i8** %incdec.ptr217, align 4, !tbaa !10
  %tobool213 = icmp eq i8* %48, null
  br i1 %tobool213, label %cleanup, label %land.lhs.true.i873

if.else219:                                       ; preds = %if.else207
  %call220 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %prev, i8* nonnull dereferenceable(15) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0)) #6
  %tobool221 = icmp eq i32 %call220, 0
  br i1 %tobool221, label %if.then222, label %if.else223

if.then222:                                       ; preds = %if.else219
  %call.i881 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i882 = icmp eq i32 %call.i881, 0
  br i1 %tobool3.i882, label %if.then.i885, label %cleanup

if.then.i885:                                     ; preds = %if.then222
  %puts.i884 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0)) #7
  br label %cleanup

if.else223:                                       ; preds = %if.else219
  %call224 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %prev, i8* nonnull dereferenceable(11) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0)) #6
  %tobool225 = icmp eq i32 %call224, 0
  br i1 %tobool225, label %land.lhs.true2.i892, label %if.else235

land.lhs.true2.i892:                              ; preds = %if.else223
  %call.i890 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i891 = icmp eq i32 %call.i890, 0
  br i1 %tobool3.i891, label %if.then.i894, label %land.lhs.true2.i892.1

if.then.i894:                                     ; preds = %land.lhs.true2.i892
  %puts.i893 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0)) #7
  br label %land.lhs.true2.i892.1

if.else235:                                       ; preds = %if.else223
  %call236 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %prev, i8* nonnull dereferenceable(13) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0)) #6
  %tobool237 = icmp eq i32 %call236, 0
  br i1 %tobool237, label %if.then240, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else235
  %call238 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %prev, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0)) #6
  %tobool239 = icmp eq i32 %call238, 0
  br i1 %tobool239, label %if.then240, label %if.else249

if.then240:                                       ; preds = %lor.lhs.false, %if.else235
  %49 = load i8*, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @x264_partition_names, i32 0, i32 0), align 4, !tbaa !10
  %tobool2431159 = icmp eq i8* %49, null
  br i1 %tobool2431159, label %cleanup, label %land.lhs.true.i898

land.lhs.true.i898:                               ; preds = %if.then240, %suggest.exit904
  %50 = phi i8* [ %52, %suggest.exit904 ], [ %49, %if.then240 ]
  %s241.01160 = phi i8** [ %incdec.ptr247, %suggest.exit904 ], [ getelementptr inbounds ([0 x i8*], [0 x i8*]* @x264_partition_names, i32 0, i32 0), %if.then240 ]
  %51 = load i8, i8* %50, align 1, !tbaa !2
  %tobool1.i897 = icmp eq i8 %51, 0
  br i1 %tobool1.i897, label %suggest.exit904, label %land.lhs.true2.i901

land.lhs.true2.i901:                              ; preds = %land.lhs.true.i898
  %call.i899 = tail call i32 @strncmp(i8* nonnull %50, i8* %cur, i32 %call) #6
  %tobool3.i900 = icmp eq i32 %call.i899, 0
  br i1 %tobool3.i900, label %if.then.i903, label %suggest.exit904

if.then.i903:                                     ; preds = %land.lhs.true2.i901
  %puts.i902 = tail call i32 @puts(i8* nonnull %50) #7
  br label %suggest.exit904

suggest.exit904:                                  ; preds = %land.lhs.true.i898, %land.lhs.true2.i901, %if.then.i903
  %incdec.ptr247 = getelementptr inbounds i8*, i8** %s241.01160, i32 1
  %52 = load i8*, i8** %incdec.ptr247, align 4, !tbaa !10
  %tobool243 = icmp eq i8* %52, null
  br i1 %tobool243, label %cleanup, label %land.lhs.true.i898

if.else249:                                       ; preds = %lor.lhs.false
  %call250 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %prev, i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0)) #6
  %tobool251 = icmp eq i32 %call250, 0
  br i1 %tobool251, label %if.then255, label %lor.lhs.false252

lor.lhs.false252:                                 ; preds = %if.else249
  %call253 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %prev, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0)) #6
  %tobool254 = icmp eq i32 %call253, 0
  br i1 %tobool254, label %if.then255, label %if.else256

if.then255:                                       ; preds = %lor.lhs.false252, %if.else249
  %53 = getelementptr inbounds [16 x i8], [16 x i8]* %buf.i, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %53) #7
  %call.i907 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* nonnull %53, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0), i32 1) #7
  %54 = load i8, i8* %53, align 4, !tbaa !2
  %tobool1.i.i908 = icmp eq i8 %54, 0
  br i1 %tobool1.i.i908, label %suggest.exit.i917, label %land.lhs.true2.i.i912

land.lhs.true2.i.i912:                            ; preds = %if.then255
  %call.i.i910 = call i32 @strncmp(i8* nonnull %53, i8* %cur, i32 %call) #6
  %tobool3.i.i911 = icmp eq i32 %call.i.i910, 0
  br i1 %tobool3.i.i911, label %if.then.i.i914, label %suggest.exit.i917

if.then.i.i914:                                   ; preds = %land.lhs.true2.i.i912
  %puts.i.i913 = call i32 @puts(i8* nonnull %53) #7
  br label %suggest.exit.i917

suggest.exit.i917:                                ; preds = %if.then.i.i914, %land.lhs.true2.i.i912, %if.then255
  %call.i907.1 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* nonnull %53, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0), i32 2) #7
  %55 = load i8, i8* %53, align 4, !tbaa !2
  %tobool1.i.i908.1 = icmp eq i8 %55, 0
  br i1 %tobool1.i.i908.1, label %suggest.exit.i917.1, label %land.lhs.true2.i.i912.1

if.else256:                                       ; preds = %lor.lhs.false252
  %call257 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %prev, i8* nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0)) #6
  %tobool258 = icmp eq i32 %call257, 0
  br i1 %tobool258, label %land.lhs.true2.i924, label %if.else268

land.lhs.true2.i924:                              ; preds = %if.else256
  %call.i922 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.112, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i923 = icmp eq i32 %call.i922, 0
  br i1 %tobool3.i923, label %if.then.i926, label %land.lhs.true2.i924.1

if.then.i926:                                     ; preds = %land.lhs.true2.i924
  %puts.i925 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.112, i32 0, i32 0)) #7
  br label %land.lhs.true2.i924.1

if.else268:                                       ; preds = %if.else256
  %call269 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %prev, i8* nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0)) #6
  %tobool270 = icmp eq i32 %call269, 0
  br i1 %tobool270, label %for.cond273.preheader, label %if.else280

for.cond273.preheader:                            ; preds = %if.else268
  %56 = load i8*, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @x264_valid_profile_names, i32 0, i32 0), align 4, !tbaa !10
  %tobool2741162 = icmp eq i8* %56, null
  br i1 %tobool2741162, label %cleanup, label %land.lhs.true.i930

land.lhs.true.i930:                               ; preds = %for.cond273.preheader, %suggest.exit936
  %57 = phi i8* [ %59, %suggest.exit936 ], [ %56, %for.cond273.preheader ]
  %s272.01163 = phi i8** [ %incdec.ptr278, %suggest.exit936 ], [ getelementptr inbounds ([0 x i8*], [0 x i8*]* @x264_valid_profile_names, i32 0, i32 0), %for.cond273.preheader ]
  %58 = load i8, i8* %57, align 1, !tbaa !2
  %tobool1.i929 = icmp eq i8 %58, 0
  br i1 %tobool1.i929, label %suggest.exit936, label %land.lhs.true2.i933

land.lhs.true2.i933:                              ; preds = %land.lhs.true.i930
  %call.i931 = tail call i32 @strncmp(i8* nonnull %57, i8* %cur, i32 %call) #6
  %tobool3.i932 = icmp eq i32 %call.i931, 0
  br i1 %tobool3.i932, label %if.then.i935, label %suggest.exit936

if.then.i935:                                     ; preds = %land.lhs.true2.i933
  %puts.i934 = tail call i32 @puts(i8* nonnull %57) #7
  br label %suggest.exit936

suggest.exit936:                                  ; preds = %land.lhs.true.i930, %land.lhs.true2.i933, %if.then.i935
  %incdec.ptr278 = getelementptr inbounds i8*, i8** %s272.01163, i32 1
  %59 = load i8*, i8** %incdec.ptr278, align 4, !tbaa !10
  %tobool274 = icmp eq i8* %59, null
  br i1 %tobool274, label %cleanup, label %land.lhs.true.i930

if.else280:                                       ; preds = %if.else268
  %call281 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %prev, i8* nonnull dereferenceable(11) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0)) #6
  %tobool282 = icmp eq i32 %call281, 0
  br i1 %tobool282, label %for.cond285.preheader, label %if.else292

for.cond285.preheader:                            ; preds = %if.else280
  %60 = load i8*, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @x264_pulldown_names, i32 0, i32 0), align 4, !tbaa !10
  %tobool2861164 = icmp eq i8* %60, null
  br i1 %tobool2861164, label %cleanup, label %land.lhs.true.i939

land.lhs.true.i939:                               ; preds = %for.cond285.preheader, %suggest.exit945
  %61 = phi i8* [ %63, %suggest.exit945 ], [ %60, %for.cond285.preheader ]
  %s284.01165 = phi i8** [ %incdec.ptr290, %suggest.exit945 ], [ getelementptr inbounds ([0 x i8*], [0 x i8*]* @x264_pulldown_names, i32 0, i32 0), %for.cond285.preheader ]
  %62 = load i8, i8* %61, align 1, !tbaa !2
  %tobool1.i938 = icmp eq i8 %62, 0
  br i1 %tobool1.i938, label %suggest.exit945, label %land.lhs.true2.i942

land.lhs.true2.i942:                              ; preds = %land.lhs.true.i939
  %call.i940 = tail call i32 @strncmp(i8* nonnull %61, i8* %cur, i32 %call) #6
  %tobool3.i941 = icmp eq i32 %call.i940, 0
  br i1 %tobool3.i941, label %if.then.i944, label %suggest.exit945

if.then.i944:                                     ; preds = %land.lhs.true2.i942
  %puts.i943 = tail call i32 @puts(i8* nonnull %61) #7
  br label %suggest.exit945

suggest.exit945:                                  ; preds = %land.lhs.true.i939, %land.lhs.true2.i942, %if.then.i944
  %incdec.ptr290 = getelementptr inbounds i8*, i8** %s284.01165, i32 1
  %63 = load i8*, i8** %incdec.ptr290, align 4, !tbaa !10
  %tobool286 = icmp eq i8* %63, null
  br i1 %tobool286, label %cleanup, label %land.lhs.true.i939

if.else292:                                       ; preds = %if.else280
  %call293 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %prev, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0)) #6
  %tobool294 = icmp eq i32 %call293, 0
  br i1 %tobool294, label %for.cond297.preheader, label %if.else304

for.cond297.preheader:                            ; preds = %if.else292
  %64 = load i8*, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @x264_range_names, i32 0, i32 0), align 4, !tbaa !10
  %tobool2981166 = icmp eq i8* %64, null
  br i1 %tobool2981166, label %cleanup, label %land.lhs.true.i948

land.lhs.true.i948:                               ; preds = %for.cond297.preheader, %suggest.exit954
  %65 = phi i8* [ %67, %suggest.exit954 ], [ %64, %for.cond297.preheader ]
  %s296.01167 = phi i8** [ %incdec.ptr302, %suggest.exit954 ], [ getelementptr inbounds ([0 x i8*], [0 x i8*]* @x264_range_names, i32 0, i32 0), %for.cond297.preheader ]
  %66 = load i8, i8* %65, align 1, !tbaa !2
  %tobool1.i947 = icmp eq i8 %66, 0
  br i1 %tobool1.i947, label %suggest.exit954, label %land.lhs.true2.i951

land.lhs.true2.i951:                              ; preds = %land.lhs.true.i948
  %call.i949 = tail call i32 @strncmp(i8* nonnull %65, i8* %cur, i32 %call) #6
  %tobool3.i950 = icmp eq i32 %call.i949, 0
  br i1 %tobool3.i950, label %if.then.i953, label %suggest.exit954

if.then.i953:                                     ; preds = %land.lhs.true2.i951
  %puts.i952 = tail call i32 @puts(i8* nonnull %65) #7
  br label %suggest.exit954

suggest.exit954:                                  ; preds = %land.lhs.true.i948, %land.lhs.true2.i951, %if.then.i953
  %incdec.ptr302 = getelementptr inbounds i8*, i8** %s296.01167, i32 1
  %67 = load i8*, i8** %incdec.ptr302, align 4, !tbaa !10
  %tobool298 = icmp eq i8* %67, null
  br i1 %tobool298, label %cleanup, label %land.lhs.true.i948

if.else304:                                       ; preds = %if.else292
  %call305 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %prev, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0)) #6
  %tobool306 = icmp eq i32 %call305, 0
  br i1 %tobool306, label %if.then310, label %lor.lhs.false307

lor.lhs.false307:                                 ; preds = %if.else304
  %call308 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %prev, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0)) #6
  %tobool309 = icmp eq i32 %call308, 0
  br i1 %tobool309, label %if.then310, label %if.else311

if.then310:                                       ; preds = %lor.lhs.false307, %if.else304
  %68 = getelementptr inbounds [16 x i8], [16 x i8]* %buf.i, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %68) #7
  %call.i957 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* nonnull %68, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0), i32 0) #7
  %69 = load i8, i8* %68, align 4, !tbaa !2
  %tobool1.i.i958 = icmp eq i8 %69, 0
  br i1 %tobool1.i.i958, label %suggest.exit.i967, label %land.lhs.true2.i.i962

land.lhs.true2.i.i962:                            ; preds = %if.then310
  %call.i.i960 = call i32 @strncmp(i8* nonnull %68, i8* %cur, i32 %call) #6
  %tobool3.i.i961 = icmp eq i32 %call.i.i960, 0
  br i1 %tobool3.i.i961, label %if.then.i.i964, label %suggest.exit.i967

if.then.i.i964:                                   ; preds = %land.lhs.true2.i.i962
  %puts.i.i963 = call i32 @puts(i8* nonnull %68) #7
  br label %suggest.exit.i967

suggest.exit.i967:                                ; preds = %if.then.i.i964, %land.lhs.true2.i.i962, %if.then310
  %call.i957.1 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* nonnull %68, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0), i32 1) #7
  %70 = load i8, i8* %68, align 4, !tbaa !2
  %tobool1.i.i958.1 = icmp eq i8 %70, 0
  br i1 %tobool1.i.i958.1, label %suggest.exit.i967.1, label %land.lhs.true2.i.i962.1

if.else311:                                       ; preds = %lor.lhs.false307
  %call312 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %prev, i8* nonnull dereferenceable(11) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0)) #6
  %tobool313 = icmp eq i32 %call312, 0
  br i1 %tobool313, label %land.lhs.true2.i974.1, label %if.else323

if.else323:                                       ; preds = %if.else311
  %call324 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %prev, i8* nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0)) #6
  %tobool325 = icmp eq i32 %call324, 0
  br i1 %tobool325, label %if.then329, label %lor.lhs.false326

lor.lhs.false326:                                 ; preds = %if.else323
  %call327 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %prev, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i32 0, i32 0)) #6
  %tobool328 = icmp eq i32 %call327, 0
  br i1 %tobool328, label %if.then329, label %if.else330

if.then329:                                       ; preds = %lor.lhs.false326, %if.else323
  %71 = getelementptr inbounds [16 x i8], [16 x i8]* %buf.i, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %71) #7
  %call.i980 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* nonnull %71, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0), i32 0) #7
  %72 = load i8, i8* %71, align 4, !tbaa !2
  %tobool1.i.i981 = icmp eq i8 %72, 0
  br i1 %tobool1.i.i981, label %suggest.exit.i990, label %land.lhs.true2.i.i985

land.lhs.true2.i.i985:                            ; preds = %if.then329
  %call.i.i983 = call i32 @strncmp(i8* nonnull %71, i8* %cur, i32 %call) #6
  %tobool3.i.i984 = icmp eq i32 %call.i.i983, 0
  br i1 %tobool3.i.i984, label %if.then.i.i987, label %suggest.exit.i990

if.then.i.i987:                                   ; preds = %land.lhs.true2.i.i985
  %puts.i.i986 = call i32 @puts(i8* nonnull %71) #7
  br label %suggest.exit.i990

suggest.exit.i990:                                ; preds = %if.then.i.i987, %land.lhs.true2.i.i985, %if.then329
  %call.i980.1 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* nonnull %71, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0), i32 1) #7
  %73 = load i8, i8* %71, align 4, !tbaa !2
  %tobool1.i.i981.1 = icmp eq i8 %73, 0
  br i1 %tobool1.i.i981.1, label %suggest.exit.i990.1, label %land.lhs.true2.i.i985.1

if.else330:                                       ; preds = %lor.lhs.false326
  %call331 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %prev, i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0)) #6
  %tobool332 = icmp eq i32 %call331, 0
  br i1 %tobool332, label %land.lhs.true2.i997, label %if.else342

land.lhs.true2.i997:                              ; preds = %if.else330
  %call.i995 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.76, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i996 = icmp eq i32 %call.i995, 0
  br i1 %tobool3.i996, label %if.then.i999, label %land.lhs.true2.i997.1

if.then.i999:                                     ; preds = %land.lhs.true2.i997
  %puts.i998 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.76, i32 0, i32 0)) #7
  br label %land.lhs.true2.i997.1

if.else342:                                       ; preds = %if.else330
  %call343 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %prev, i8* nonnull dereferenceable(14) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0)) #6
  %tobool344 = icmp eq i32 %call343, 0
  br i1 %tobool344, label %land.lhs.true2.i1006, label %if.else354

land.lhs.true2.i1006:                             ; preds = %if.else342
  %call.i1004 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.129, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i1005 = icmp eq i32 %call.i1004, 0
  br i1 %tobool3.i1005, label %if.then.i1008, label %land.lhs.true2.i1006.1

if.then.i1008:                                    ; preds = %land.lhs.true2.i1006
  %puts.i1007 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.129, i32 0, i32 0)) #7
  br label %land.lhs.true2.i1006.1

if.else354:                                       ; preds = %if.else342
  %call355 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %prev, i8* nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0)) #6
  %tobool356 = icmp eq i32 %call355, 0
  br i1 %tobool356, label %if.then357, label %if.else358

if.then357:                                       ; preds = %if.else354
  %74 = getelementptr inbounds [16 x i8], [16 x i8]* %buf.i, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %74) #7
  %call.i1012 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* nonnull %74, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0), i32 0) #7
  %75 = load i8, i8* %74, align 4, !tbaa !2
  %tobool1.i.i1013 = icmp eq i8 %75, 0
  br i1 %tobool1.i.i1013, label %suggest.exit.i1022, label %land.lhs.true2.i.i1017

land.lhs.true2.i.i1017:                           ; preds = %if.then357
  %call.i.i1015 = call i32 @strncmp(i8* nonnull %74, i8* %cur, i32 %call) #6
  %tobool3.i.i1016 = icmp eq i32 %call.i.i1015, 0
  br i1 %tobool3.i.i1016, label %if.then.i.i1019, label %suggest.exit.i1022

if.then.i.i1019:                                  ; preds = %land.lhs.true2.i.i1017
  %puts.i.i1018 = call i32 @puts(i8* nonnull %74) #7
  br label %suggest.exit.i1022

suggest.exit.i1022:                               ; preds = %if.then.i.i1019, %land.lhs.true2.i.i1017, %if.then357
  %call.i1012.1 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* nonnull %74, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0), i32 1) #7
  %76 = load i8, i8* %74, align 4, !tbaa !2
  %tobool1.i.i1013.1 = icmp eq i8 %76, 0
  br i1 %tobool1.i.i1013.1, label %suggest.exit.i1022.1, label %land.lhs.true2.i.i1017.1

if.else358:                                       ; preds = %if.else354
  %77 = load i8, i8* %prev, align 1, !tbaa !2
  %tobool.i1024 = icmp eq i8 %77, 0
  br i1 %tobool.i1024, label %lor.lhs.false366, label %for.body.i1028

for.cond.i:                                       ; preds = %for.body.i1028
  %78 = load i8*, i8** %incdec.ptr.i1027, align 4, !tbaa !10
  %tobool1.i1025 = icmp eq i8* %78, null
  br i1 %tobool1.i1025, label %for.body.i1037.preheader, label %for.body.i1028

for.body.i1028:                                   ; preds = %if.else358, %for.cond.i
  %79 = phi i8* [ %78, %for.cond.i ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.134, i32 0, i32 0), %if.else358 ]
  %list.addr.09.i = phi i8** [ %incdec.ptr.i1027, %for.cond.i ], [ getelementptr inbounds ([77 x i8*], [77 x i8*]* @opts_nosuggest, i32 0, i32 0), %if.else358 ]
  %call.i1026 = tail call i32 @strcmp(i8* nonnull %79, i8* nonnull %prev) #6
  %tobool2.i = icmp eq i32 %call.i1026, 0
  %incdec.ptr.i1027 = getelementptr inbounds i8*, i8** %list.addr.09.i, i32 1
  br i1 %tobool2.i, label %cleanup, label %for.cond.i

for.body.i1037.preheader:                         ; preds = %for.cond.i
  %call.i1034 = tail call i32 @strcmp(i8* nonnull dereferenceable(11) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.207, i32 0, i32 0), i8* nonnull %prev) #6
  %tobool2.i1035 = icmp eq i32 %call.i1034, 0
  br i1 %tobool2.i1035, label %cleanup, label %for.cond.i1032

for.cond.i1032:                                   ; preds = %for.body.i1037.preheader
  %call.i1034.1 = tail call i32 @strcmp(i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.208, i32 0, i32 0), i8* nonnull %prev) #6
  %tobool2.i1035.1 = icmp eq i32 %call.i1034.1, 0
  br i1 %tobool2.i1035.1, label %cleanup, label %for.cond.i1032.1

for.body.i1048.preheader:                         ; preds = %for.cond.i1032.3
  %call.i1045 = tail call i32 @strcmp(i8* nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.212, i32 0, i32 0), i8* nonnull %prev) #6
  %tobool2.i1046 = icmp eq i32 %call.i1045, 0
  br i1 %tobool2.i1046, label %cleanup, label %for.cond.i1043

for.cond.i1043:                                   ; preds = %for.body.i1048.preheader
  %call.i1045.1 = tail call i32 @strcmp(i8* nonnull dereferenceable(11) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.213, i32 0, i32 0), i8* nonnull %prev) #6
  %tobool2.i1046.1 = icmp eq i32 %call.i1045.1, 0
  br i1 %tobool2.i1046.1, label %cleanup, label %for.cond.i1043.1

lor.lhs.false366:                                 ; preds = %for.cond.i1043.8, %if.else358
  %call367 = tail call i32 @strncmp(i8* nonnull dereferenceable(1) %cur, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i32 0, i32 0), i32 2) #6
  %tobool368 = icmp eq i32 %call367, 0
  br i1 %tobool368, label %land.lhs.true.i1053, label %cleanup

land.lhs.true.i1053:                              ; preds = %lor.lhs.false366, %suggest.exit1059
  %80 = phi i8* [ %82, %suggest.exit1059 ], [ getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), %lor.lhs.false366 ]
  %s370.01175 = phi i8** [ %incdec.ptr376, %suggest.exit1059 ], [ getelementptr inbounds ([38 x i8*], [38 x i8*]* @opts_suggest, i32 0, i32 0), %lor.lhs.false366 ]
  %81 = load i8, i8* %80, align 1, !tbaa !2
  %tobool1.i1052 = icmp eq i8 %81, 0
  br i1 %tobool1.i1052, label %suggest.exit1059, label %land.lhs.true2.i1056

land.lhs.true2.i1056:                             ; preds = %land.lhs.true.i1053
  %call.i1054 = tail call i32 @strncmp(i8* nonnull %80, i8* %cur, i32 %call) #6
  %tobool3.i1055 = icmp eq i32 %call.i1054, 0
  br i1 %tobool3.i1055, label %if.then.i1058, label %suggest.exit1059

if.then.i1058:                                    ; preds = %land.lhs.true2.i1056
  %puts.i1057 = tail call i32 @puts(i8* nonnull %80) #7
  br label %suggest.exit1059

suggest.exit1059:                                 ; preds = %land.lhs.true.i1053, %land.lhs.true2.i1056, %if.then.i1058
  %incdec.ptr376 = getelementptr inbounds i8*, i8** %s370.01175, i32 1
  %82 = load i8*, i8** %incdec.ptr376, align 4, !tbaa !10
  %tobool372 = icmp eq i8* %82, null
  br i1 %tobool372, label %land.lhs.true.i1062, label %land.lhs.true.i1053

land.lhs.true.i1062:                              ; preds = %suggest.exit1059, %suggest.exit1068
  %83 = phi i8* [ %85, %suggest.exit1068 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.134, i32 0, i32 0), %suggest.exit1059 ]
  %s378.01174 = phi i8** [ %incdec.ptr384, %suggest.exit1068 ], [ getelementptr inbounds ([77 x i8*], [77 x i8*]* @opts_nosuggest, i32 0, i32 0), %suggest.exit1059 ]
  %84 = load i8, i8* %83, align 1, !tbaa !2
  %tobool1.i1061 = icmp eq i8 %84, 0
  br i1 %tobool1.i1061, label %suggest.exit1068, label %land.lhs.true2.i1065

land.lhs.true2.i1065:                             ; preds = %land.lhs.true.i1062
  %call.i1063 = tail call i32 @strncmp(i8* nonnull %83, i8* %cur, i32 %call) #6
  %tobool3.i1064 = icmp eq i32 %call.i1063, 0
  br i1 %tobool3.i1064, label %if.then.i1067, label %suggest.exit1068

if.then.i1067:                                    ; preds = %land.lhs.true2.i1065
  %puts.i1066 = tail call i32 @puts(i8* nonnull %83) #7
  br label %suggest.exit1068

suggest.exit1068:                                 ; preds = %land.lhs.true.i1062, %land.lhs.true2.i1065, %if.then.i1067
  %incdec.ptr384 = getelementptr inbounds i8*, i8** %s378.01174, i32 1
  %85 = load i8*, i8** %incdec.ptr384, align 4, !tbaa !10
  %tobool380 = icmp eq i8* %85, null
  br i1 %tobool380, label %land.lhs.true2.i1074, label %land.lhs.true.i1062

land.lhs.true2.i1074:                             ; preds = %suggest.exit1068
  %call.i1072 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.212, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i1073 = icmp eq i32 %call.i1072, 0
  br i1 %tobool3.i1073, label %if.then.i1076, label %land.lhs.true2.i1074.1

if.then.i1076:                                    ; preds = %land.lhs.true2.i1074
  %puts.i1075 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.212, i32 0, i32 0)) #7
  br label %land.lhs.true2.i1074.1

for.cond.cleanup397:                              ; preds = %suggest.exit1086
  %86 = load i8, i8* %prev, align 1, !tbaa !2
  %tobool402 = icmp eq i8 %86, 0
  br i1 %tobool402, label %land.lhs.true2.i1092, label %cleanup

land.lhs.true.i1080:                              ; preds = %land.lhs.true.i1080.preheader, %suggest.exit1086
  %87 = phi i8* [ %89, %suggest.exit1086 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.222, i32 0, i32 0), %land.lhs.true.i1080.preheader ]
  %s394.01172 = phi i8** [ %incdec.ptr400, %suggest.exit1086 ], [ getelementptr inbounds ([43 x i8*], [43 x i8*]* @opts_standalone, i32 0, i32 0), %land.lhs.true.i1080.preheader ]
  %88 = load i8, i8* %87, align 1, !tbaa !2
  %tobool1.i1079 = icmp eq i8 %88, 0
  br i1 %tobool1.i1079, label %suggest.exit1086, label %land.lhs.true2.i1083

land.lhs.true2.i1083:                             ; preds = %land.lhs.true.i1080
  %call.i1081 = tail call i32 @strncmp(i8* nonnull %87, i8* %cur, i32 %call) #6
  %tobool3.i1082 = icmp eq i32 %call.i1081, 0
  br i1 %tobool3.i1082, label %if.then.i1085, label %suggest.exit1086

if.then.i1085:                                    ; preds = %land.lhs.true2.i1083
  %puts.i1084 = tail call i32 @puts(i8* nonnull %87) #7
  br label %suggest.exit1086

suggest.exit1086:                                 ; preds = %land.lhs.true.i1080, %land.lhs.true2.i1083, %if.then.i1085
  %incdec.ptr400 = getelementptr inbounds i8*, i8** %s394.01172, i32 1
  %89 = load i8*, i8** %incdec.ptr400, align 4, !tbaa !10
  %tobool396 = icmp eq i8* %89, null
  br i1 %tobool396, label %for.cond.cleanup397, label %land.lhs.true.i1080

land.lhs.true2.i1092:                             ; preds = %for.cond.cleanup397
  %call.i1090 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.207, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i1091 = icmp eq i32 %call.i1090, 0
  br i1 %tobool3.i1091, label %if.then.i1094, label %land.lhs.true2.i1092.1

if.then.i1094:                                    ; preds = %land.lhs.true2.i1092
  %puts.i1093 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.207, i32 0, i32 0)) #7
  br label %land.lhs.true2.i1092.1

cleanup:                                          ; preds = %for.body.i1028, %suggest.exit954, %suggest.exit945, %suggest.exit936, %suggest.exit904, %suggest.exit879, %suggest.exit861, %suggest.exit843, %suggest.exit825, %suggest.exit784, %suggest.exit775, %suggest.exit716, %suggest_lower.exit, %land.lhs.true2.i1092.4, %if.then.i1094.4, %land.lhs.true2.i1006.5, %if.then.i1008.5, %land.lhs.true2.i997.7, %if.then.i999.7, %land.lhs.true2.i974.18, %if.then.i976.18, %land.lhs.true2.i924.9, %if.then.i926.9, %land.lhs.true2.i892.2, %if.then.i894.2, %land.lhs.true2.i867.2, %if.then.i869.2, %land.lhs.true2.i849.4, %if.then.i851.4, %land.lhs.true2.i831.19, %if.then.i833.19, %suggest.exit816.14, %land.lhs.true.i810.15, %land.lhs.true2.i813.15, %if.then.i815.15, %land.lhs.true2.i790.3, %if.then.i792.3, %land.lhs.true2.i763.12, %if.then.i765.12, %land.lhs.true2.i754.14, %if.then.i756.14, %land.lhs.true2.i745.2, %if.then.i747.2, %land.lhs.true2.i722.1, %if.then.i724.1, %land.lhs.true2.i.18, %if.then.i.18, %for.body.i1037.preheader, %for.cond.i1032, %for.cond.i1032.1, %for.cond.i1032.2, %for.cond.i1032.3, %for.body.i1048.preheader, %for.cond.i1043, %for.cond.i1043.1, %for.cond.i1043.2, %for.cond.i1043.3, %for.cond.i1043.4, %for.cond.i1043.5, %for.cond.i1043.6, %for.cond.i1043.7, %for.cond.i1043.8, %for.cond297.preheader, %for.cond285.preheader, %for.cond273.preheader, %if.then240, %for.cond212.preheader, %for.cond188.preheader, %for.cond164.preheader, %for.cond140.preheader, %for.cond98.preheader, %for.cond86.preheader, %for.cond22.preheader, %for.cond10.preheader, %if.then.i885, %if.then222, %suggest.exit.i806.7, %suggest.exit.i967.11, %suggest.exit.i990.2, %suggest.exit.i1022.2, %suggest.exit.i917.2, %suggest.exit.i738.2, %suggest.exit.i.3, %if.else131, %for.cond.cleanup397, %lor.lhs.false366
  %retval.0 = phi i32 [ 1, %lor.lhs.false366 ], [ 0, %for.cond.cleanup397 ], [ 0, %if.else131 ], [ 0, %suggest.exit.i.3 ], [ 0, %suggest.exit.i738.2 ], [ 0, %suggest.exit.i917.2 ], [ 0, %suggest.exit.i1022.2 ], [ 0, %suggest.exit.i990.2 ], [ 0, %suggest.exit.i967.11 ], [ 0, %suggest.exit.i806.7 ], [ 0, %if.then222 ], [ 0, %if.then.i885 ], [ 0, %for.cond10.preheader ], [ 0, %for.cond22.preheader ], [ 0, %for.cond86.preheader ], [ 0, %for.cond98.preheader ], [ 0, %for.cond140.preheader ], [ 0, %for.cond164.preheader ], [ 0, %for.cond188.preheader ], [ 0, %for.cond212.preheader ], [ 0, %if.then240 ], [ 0, %for.cond273.preheader ], [ 0, %for.cond285.preheader ], [ 0, %for.cond297.preheader ], [ 1, %for.cond.i1043.8 ], [ 1, %for.cond.i1043.7 ], [ 1, %for.cond.i1043.6 ], [ 1, %for.cond.i1043.5 ], [ 1, %for.cond.i1043.4 ], [ 1, %for.cond.i1043.3 ], [ 1, %for.cond.i1043.2 ], [ 1, %for.cond.i1043.1 ], [ 1, %for.cond.i1043 ], [ 1, %for.body.i1048.preheader ], [ 0, %for.cond.i1032.3 ], [ 0, %for.cond.i1032.2 ], [ 0, %for.cond.i1032.1 ], [ 0, %for.cond.i1032 ], [ 0, %for.body.i1037.preheader ], [ 0, %if.then.i.18 ], [ 0, %land.lhs.true2.i.18 ], [ 0, %if.then.i724.1 ], [ 0, %land.lhs.true2.i722.1 ], [ 0, %if.then.i747.2 ], [ 0, %land.lhs.true2.i745.2 ], [ 0, %if.then.i756.14 ], [ 0, %land.lhs.true2.i754.14 ], [ 0, %if.then.i765.12 ], [ 0, %land.lhs.true2.i763.12 ], [ 0, %if.then.i792.3 ], [ 0, %land.lhs.true2.i790.3 ], [ 0, %if.then.i815.15 ], [ 0, %land.lhs.true2.i813.15 ], [ 0, %land.lhs.true.i810.15 ], [ 0, %suggest.exit816.14 ], [ 0, %if.then.i833.19 ], [ 0, %land.lhs.true2.i831.19 ], [ 0, %if.then.i851.4 ], [ 0, %land.lhs.true2.i849.4 ], [ 0, %if.then.i869.2 ], [ 0, %land.lhs.true2.i867.2 ], [ 0, %if.then.i894.2 ], [ 0, %land.lhs.true2.i892.2 ], [ 0, %if.then.i926.9 ], [ 0, %land.lhs.true2.i924.9 ], [ 0, %if.then.i976.18 ], [ 0, %land.lhs.true2.i974.18 ], [ 0, %if.then.i999.7 ], [ 0, %land.lhs.true2.i997.7 ], [ 0, %if.then.i1008.5 ], [ 0, %land.lhs.true2.i1006.5 ], [ 0, %if.then.i1094.4 ], [ 0, %land.lhs.true2.i1092.4 ], [ 0, %suggest_lower.exit ], [ 0, %suggest.exit716 ], [ 0, %suggest.exit775 ], [ 0, %suggest.exit784 ], [ 0, %suggest.exit825 ], [ 0, %suggest.exit843 ], [ 0, %suggest.exit861 ], [ 0, %suggest.exit879 ], [ 0, %suggest.exit904 ], [ 0, %suggest.exit936 ], [ 0, %suggest.exit945 ], [ 0, %suggest.exit954 ], [ 0, %for.body.i1028 ]
  ret i32 %retval.0

land.lhs.true2.i.1:                               ; preds = %entry
  %call.i.1 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool3.i.1, label %if.then.i.1, label %land.lhs.true2.i.2

if.then.i.1:                                      ; preds = %land.lhs.true2.i.1
  %puts.i.1 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0)) #7
  br label %land.lhs.true2.i.2

land.lhs.true2.i.2:                               ; preds = %land.lhs.true2.i.1, %if.then.i.1
  %call.i.2 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i.2 = icmp eq i32 %call.i.2, 0
  br i1 %tobool3.i.2, label %if.then.i.2, label %land.lhs.true2.i.4

if.then.i.2:                                      ; preds = %land.lhs.true2.i.2
  %puts.i.2 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0)) #7
  br label %land.lhs.true2.i.4

land.lhs.true2.i.4:                               ; preds = %if.then.i.2, %land.lhs.true2.i.2
  %call.i.4 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i.4 = icmp eq i32 %call.i.4, 0
  br i1 %tobool3.i.4, label %if.then.i.4, label %land.lhs.true2.i.5

if.then.i.4:                                      ; preds = %land.lhs.true2.i.4
  %puts.i.4 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0)) #7
  br label %land.lhs.true2.i.5

land.lhs.true2.i.5:                               ; preds = %land.lhs.true2.i.4, %if.then.i.4
  %call.i.5 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i.5 = icmp eq i32 %call.i.5, 0
  br i1 %tobool3.i.5, label %if.then.i.5, label %land.lhs.true2.i.6

if.then.i.5:                                      ; preds = %land.lhs.true2.i.5
  %puts.i.5 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0)) #7
  br label %land.lhs.true2.i.6

land.lhs.true2.i.6:                               ; preds = %land.lhs.true2.i.5, %if.then.i.5
  %call.i.6 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i.6 = icmp eq i32 %call.i.6, 0
  br i1 %tobool3.i.6, label %if.then.i.6, label %land.lhs.true2.i.7

if.then.i.6:                                      ; preds = %land.lhs.true2.i.6
  %puts.i.6 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0)) #7
  br label %land.lhs.true2.i.7

land.lhs.true2.i.7:                               ; preds = %land.lhs.true2.i.6, %if.then.i.6
  %call.i.7 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i.7 = icmp eq i32 %call.i.7, 0
  br i1 %tobool3.i.7, label %if.then.i.7, label %land.lhs.true2.i.8

if.then.i.7:                                      ; preds = %land.lhs.true2.i.7
  %puts.i.7 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0)) #7
  br label %land.lhs.true2.i.8

land.lhs.true2.i.8:                               ; preds = %land.lhs.true2.i.7, %if.then.i.7
  %call.i.8 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i.8 = icmp eq i32 %call.i.8, 0
  br i1 %tobool3.i.8, label %if.then.i.8, label %land.lhs.true2.i.9

if.then.i.8:                                      ; preds = %land.lhs.true2.i.8
  %puts.i.8 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0)) #7
  br label %land.lhs.true2.i.9

land.lhs.true2.i.9:                               ; preds = %land.lhs.true2.i.8, %if.then.i.8
  %call.i.9 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i.9 = icmp eq i32 %call.i.9, 0
  br i1 %tobool3.i.9, label %if.then.i.9, label %land.lhs.true2.i.10

if.then.i.9:                                      ; preds = %land.lhs.true2.i.9
  %puts.i.9 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0)) #7
  br label %land.lhs.true2.i.10

land.lhs.true2.i.10:                              ; preds = %land.lhs.true2.i.9, %if.then.i.9
  %call.i.10 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i.10 = icmp eq i32 %call.i.10, 0
  br i1 %tobool3.i.10, label %if.then.i.10, label %land.lhs.true2.i.11

if.then.i.10:                                     ; preds = %land.lhs.true2.i.10
  %puts.i.10 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0)) #7
  br label %land.lhs.true2.i.11

land.lhs.true2.i.11:                              ; preds = %land.lhs.true2.i.10, %if.then.i.10
  %call.i.11 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.52, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i.11 = icmp eq i32 %call.i.11, 0
  br i1 %tobool3.i.11, label %if.then.i.11, label %land.lhs.true2.i.12

if.then.i.11:                                     ; preds = %land.lhs.true2.i.11
  %puts.i.11 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.52, i32 0, i32 0)) #7
  br label %land.lhs.true2.i.12

land.lhs.true2.i.12:                              ; preds = %land.lhs.true2.i.11, %if.then.i.11
  %call.i.12 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i.12 = icmp eq i32 %call.i.12, 0
  br i1 %tobool3.i.12, label %if.then.i.12, label %land.lhs.true2.i.13

if.then.i.12:                                     ; preds = %land.lhs.true2.i.12
  %puts.i.12 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0)) #7
  br label %land.lhs.true2.i.13

land.lhs.true2.i.13:                              ; preds = %land.lhs.true2.i.12, %if.then.i.12
  %call.i.13 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.54, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i.13 = icmp eq i32 %call.i.13, 0
  br i1 %tobool3.i.13, label %if.then.i.13, label %land.lhs.true2.i.14

if.then.i.13:                                     ; preds = %land.lhs.true2.i.13
  %puts.i.13 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.54, i32 0, i32 0)) #7
  br label %land.lhs.true2.i.14

land.lhs.true2.i.14:                              ; preds = %land.lhs.true2.i.13, %if.then.i.13
  %call.i.14 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i.14 = icmp eq i32 %call.i.14, 0
  br i1 %tobool3.i.14, label %if.then.i.14, label %land.lhs.true2.i.15

if.then.i.14:                                     ; preds = %land.lhs.true2.i.14
  %puts.i.14 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i32 0, i32 0)) #7
  br label %land.lhs.true2.i.15

land.lhs.true2.i.15:                              ; preds = %land.lhs.true2.i.14, %if.then.i.14
  %call.i.15 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.56, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i.15 = icmp eq i32 %call.i.15, 0
  br i1 %tobool3.i.15, label %if.then.i.15, label %land.lhs.true2.i.16

if.then.i.15:                                     ; preds = %land.lhs.true2.i.15
  %puts.i.15 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.56, i32 0, i32 0)) #7
  br label %land.lhs.true2.i.16

land.lhs.true2.i.16:                              ; preds = %land.lhs.true2.i.15, %if.then.i.15
  %call.i.16 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i.16 = icmp eq i32 %call.i.16, 0
  br i1 %tobool3.i.16, label %if.then.i.16, label %land.lhs.true2.i.17

if.then.i.16:                                     ; preds = %land.lhs.true2.i.16
  %puts.i.16 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i32 0, i32 0)) #7
  br label %land.lhs.true2.i.17

land.lhs.true2.i.17:                              ; preds = %land.lhs.true2.i.16, %if.then.i.16
  %call.i.17 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i.17 = icmp eq i32 %call.i.17, 0
  br i1 %tobool3.i.17, label %if.then.i.17, label %land.lhs.true2.i.18

if.then.i.17:                                     ; preds = %land.lhs.true2.i.17
  %puts.i.17 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i32 0, i32 0)) #7
  br label %land.lhs.true2.i.18

land.lhs.true2.i.18:                              ; preds = %land.lhs.true2.i.17, %if.then.i.17
  %call.i.18 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.59, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i.18 = icmp eq i32 %call.i.18, 0
  br i1 %tobool3.i.18, label %if.then.i.18, label %cleanup

if.then.i.18:                                     ; preds = %land.lhs.true2.i.18
  %puts.i.18 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.59, i32 0, i32 0)) #7
  br label %cleanup

land.lhs.true2.i.i.1:                             ; preds = %suggest.exit.i
  %call.i.i.1 = call i32 @strncmp(i8* nonnull %0, i8* %cur, i32 %call) #6
  %tobool3.i.i.1 = icmp eq i32 %call.i.i.1, 0
  br i1 %tobool3.i.i.1, label %if.then.i.i.1, label %suggest.exit.i.1

if.then.i.i.1:                                    ; preds = %land.lhs.true2.i.i.1
  %puts.i.i.1 = call i32 @puts(i8* nonnull %0) #7
  br label %suggest.exit.i.1

suggest.exit.i.1:                                 ; preds = %if.then.i.i.1, %land.lhs.true2.i.i.1, %suggest.exit.i
  %call.i699.2 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* nonnull %0, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0), i32 2) #7
  %90 = load i8, i8* %0, align 4, !tbaa !2
  %tobool1.i.i.2 = icmp eq i8 %90, 0
  br i1 %tobool1.i.i.2, label %suggest.exit.i.2, label %land.lhs.true2.i.i.2

land.lhs.true2.i.i.2:                             ; preds = %suggest.exit.i.1
  %call.i.i.2 = call i32 @strncmp(i8* nonnull %0, i8* %cur, i32 %call) #6
  %tobool3.i.i.2 = icmp eq i32 %call.i.i.2, 0
  br i1 %tobool3.i.i.2, label %if.then.i.i.2, label %suggest.exit.i.2

if.then.i.i.2:                                    ; preds = %land.lhs.true2.i.i.2
  %puts.i.i.2 = call i32 @puts(i8* nonnull %0) #7
  br label %suggest.exit.i.2

suggest.exit.i.2:                                 ; preds = %if.then.i.i.2, %land.lhs.true2.i.i.2, %suggest.exit.i.1
  %call.i699.3 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* nonnull %0, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0), i32 3) #7
  %91 = load i8, i8* %0, align 4, !tbaa !2
  %tobool1.i.i.3 = icmp eq i8 %91, 0
  br i1 %tobool1.i.i.3, label %suggest.exit.i.3, label %land.lhs.true2.i.i.3

land.lhs.true2.i.i.3:                             ; preds = %suggest.exit.i.2
  %call.i.i.3 = call i32 @strncmp(i8* nonnull %0, i8* %cur, i32 %call) #6
  %tobool3.i.i.3 = icmp eq i32 %call.i.i.3, 0
  br i1 %tobool3.i.i.3, label %if.then.i.i.3, label %suggest.exit.i.3

if.then.i.i.3:                                    ; preds = %land.lhs.true2.i.i.3
  %puts.i.i.3 = call i32 @puts(i8* nonnull %0) #7
  br label %suggest.exit.i.3

suggest.exit.i.3:                                 ; preds = %if.then.i.i.3, %land.lhs.true2.i.i.3, %suggest.exit.i.2
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #7
  br label %cleanup

land.lhs.true2.i722.1:                            ; preds = %if.then.i724, %land.lhs.true2.i722
  %call.i720.1 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i721.1 = icmp eq i32 %call.i720.1, 0
  br i1 %tobool3.i721.1, label %if.then.i724.1, label %cleanup

if.then.i724.1:                                   ; preds = %land.lhs.true2.i722.1
  %puts.i723.1 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i32 0, i32 0)) #7
  br label %cleanup

land.lhs.true2.i.i733.1:                          ; preds = %suggest.exit.i738
  %call.i.i731.1 = call i32 @strncmp(i8* nonnull %16, i8* %cur, i32 %call) #6
  %tobool3.i.i732.1 = icmp eq i32 %call.i.i731.1, 0
  br i1 %tobool3.i.i732.1, label %if.then.i.i735.1, label %suggest.exit.i738.1

if.then.i.i735.1:                                 ; preds = %land.lhs.true2.i.i733.1
  %puts.i.i734.1 = call i32 @puts(i8* nonnull %16) #7
  br label %suggest.exit.i738.1

suggest.exit.i738.1:                              ; preds = %if.then.i.i735.1, %land.lhs.true2.i.i733.1, %suggest.exit.i738
  %call.i728.2 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* nonnull %16, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0), i32 2) #7
  %92 = load i8, i8* %16, align 4, !tbaa !2
  %tobool1.i.i729.2 = icmp eq i8 %92, 0
  br i1 %tobool1.i.i729.2, label %suggest.exit.i738.2, label %land.lhs.true2.i.i733.2

land.lhs.true2.i.i733.2:                          ; preds = %suggest.exit.i738.1
  %call.i.i731.2 = call i32 @strncmp(i8* nonnull %16, i8* %cur, i32 %call) #6
  %tobool3.i.i732.2 = icmp eq i32 %call.i.i731.2, 0
  br i1 %tobool3.i.i732.2, label %if.then.i.i735.2, label %suggest.exit.i738.2

if.then.i.i735.2:                                 ; preds = %land.lhs.true2.i.i733.2
  %puts.i.i734.2 = call i32 @puts(i8* nonnull %16) #7
  br label %suggest.exit.i738.2

suggest.exit.i738.2:                              ; preds = %if.then.i.i735.2, %land.lhs.true2.i.i733.2, %suggest.exit.i738.1
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %16) #7
  br label %cleanup

land.lhs.true2.i745.1:                            ; preds = %if.then.i747, %land.lhs.true2.i745
  %call.i743.1 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i744.1 = icmp eq i32 %call.i743.1, 0
  br i1 %tobool3.i744.1, label %if.then.i747.1, label %land.lhs.true2.i745.2

if.then.i747.1:                                   ; preds = %land.lhs.true2.i745.1
  %puts.i746.1 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i32 0, i32 0)) #7
  br label %land.lhs.true2.i745.2

land.lhs.true2.i745.2:                            ; preds = %land.lhs.true2.i745.1, %if.then.i747.1
  %call.i743.2 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i744.2 = icmp eq i32 %call.i743.2, 0
  br i1 %tobool3.i744.2, label %if.then.i747.2, label %cleanup

if.then.i747.2:                                   ; preds = %land.lhs.true2.i745.2
  %puts.i746.2 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0)) #7
  br label %cleanup

land.lhs.true2.i754.1:                            ; preds = %if.then.i756, %land.lhs.true2.i754
  %call.i752.1 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i753.1 = icmp eq i32 %call.i752.1, 0
  br i1 %tobool3.i753.1, label %if.then.i756.1, label %land.lhs.true2.i754.2

if.then.i756.1:                                   ; preds = %land.lhs.true2.i754.1
  %puts.i755.1 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0)) #7
  br label %land.lhs.true2.i754.2

land.lhs.true2.i754.2:                            ; preds = %land.lhs.true2.i754.1, %if.then.i756.1
  %call.i752.2 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i753.2 = icmp eq i32 %call.i752.2, 0
  br i1 %tobool3.i753.2, label %if.then.i756.2, label %land.lhs.true2.i754.4

if.then.i756.2:                                   ; preds = %land.lhs.true2.i754.2
  %puts.i755.2 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0)) #7
  br label %land.lhs.true2.i754.4

land.lhs.true2.i754.4:                            ; preds = %if.then.i756.2, %land.lhs.true2.i754.2
  %call.i752.4 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i753.4 = icmp eq i32 %call.i752.4, 0
  br i1 %tobool3.i753.4, label %if.then.i756.4, label %land.lhs.true2.i754.5

if.then.i756.4:                                   ; preds = %land.lhs.true2.i754.4
  %puts.i755.4 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0)) #7
  br label %land.lhs.true2.i754.5

land.lhs.true2.i754.5:                            ; preds = %land.lhs.true2.i754.4, %if.then.i756.4
  %call.i752.5 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i753.5 = icmp eq i32 %call.i752.5, 0
  br i1 %tobool3.i753.5, label %if.then.i756.5, label %land.lhs.true2.i754.6

if.then.i756.5:                                   ; preds = %land.lhs.true2.i754.5
  %puts.i755.5 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0)) #7
  br label %land.lhs.true2.i754.6

land.lhs.true2.i754.6:                            ; preds = %land.lhs.true2.i754.5, %if.then.i756.5
  %call.i752.6 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i753.6 = icmp eq i32 %call.i752.6, 0
  br i1 %tobool3.i753.6, label %if.then.i756.6, label %land.lhs.true2.i754.7

if.then.i756.6:                                   ; preds = %land.lhs.true2.i754.6
  %puts.i755.6 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0)) #7
  br label %land.lhs.true2.i754.7

land.lhs.true2.i754.7:                            ; preds = %land.lhs.true2.i754.6, %if.then.i756.6
  %call.i752.7 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i753.7 = icmp eq i32 %call.i752.7, 0
  br i1 %tobool3.i753.7, label %if.then.i756.7, label %land.lhs.true2.i754.8

if.then.i756.7:                                   ; preds = %land.lhs.true2.i754.7
  %puts.i755.7 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0)) #7
  br label %land.lhs.true2.i754.8

land.lhs.true2.i754.8:                            ; preds = %land.lhs.true2.i754.7, %if.then.i756.7
  %call.i752.8 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i753.8 = icmp eq i32 %call.i752.8, 0
  br i1 %tobool3.i753.8, label %if.then.i756.8, label %land.lhs.true2.i754.9

if.then.i756.8:                                   ; preds = %land.lhs.true2.i754.8
  %puts.i755.8 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i32 0, i32 0)) #7
  br label %land.lhs.true2.i754.9

land.lhs.true2.i754.9:                            ; preds = %land.lhs.true2.i754.8, %if.then.i756.8
  %call.i752.9 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.70, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i753.9 = icmp eq i32 %call.i752.9, 0
  br i1 %tobool3.i753.9, label %if.then.i756.9, label %land.lhs.true2.i754.10

if.then.i756.9:                                   ; preds = %land.lhs.true2.i754.9
  %puts.i755.9 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.70, i32 0, i32 0)) #7
  br label %land.lhs.true2.i754.10

land.lhs.true2.i754.10:                           ; preds = %land.lhs.true2.i754.9, %if.then.i756.9
  %call.i752.10 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i753.10 = icmp eq i32 %call.i752.10, 0
  br i1 %tobool3.i753.10, label %if.then.i756.10, label %land.lhs.true2.i754.11

if.then.i756.10:                                  ; preds = %land.lhs.true2.i754.10
  %puts.i755.10 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i32 0, i32 0)) #7
  br label %land.lhs.true2.i754.11

land.lhs.true2.i754.11:                           ; preds = %land.lhs.true2.i754.10, %if.then.i756.10
  %call.i752.11 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i753.11 = icmp eq i32 %call.i752.11, 0
  br i1 %tobool3.i753.11, label %if.then.i756.11, label %land.lhs.true2.i754.12

if.then.i756.11:                                  ; preds = %land.lhs.true2.i754.11
  %puts.i755.11 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0)) #7
  br label %land.lhs.true2.i754.12

land.lhs.true2.i754.12:                           ; preds = %land.lhs.true2.i754.11, %if.then.i756.11
  %call.i752.12 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.73, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i753.12 = icmp eq i32 %call.i752.12, 0
  br i1 %tobool3.i753.12, label %if.then.i756.12, label %land.lhs.true2.i754.13

if.then.i756.12:                                  ; preds = %land.lhs.true2.i754.12
  %puts.i755.12 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.73, i32 0, i32 0)) #7
  br label %land.lhs.true2.i754.13

land.lhs.true2.i754.13:                           ; preds = %land.lhs.true2.i754.12, %if.then.i756.12
  %call.i752.13 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.74, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i753.13 = icmp eq i32 %call.i752.13, 0
  br i1 %tobool3.i753.13, label %if.then.i756.13, label %land.lhs.true2.i754.14

if.then.i756.13:                                  ; preds = %land.lhs.true2.i754.13
  %puts.i755.13 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.74, i32 0, i32 0)) #7
  br label %land.lhs.true2.i754.14

land.lhs.true2.i754.14:                           ; preds = %land.lhs.true2.i754.13, %if.then.i756.13
  %call.i752.14 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i753.14 = icmp eq i32 %call.i752.14, 0
  br i1 %tobool3.i753.14, label %if.then.i756.14, label %cleanup

if.then.i756.14:                                  ; preds = %land.lhs.true2.i754.14
  %puts.i755.14 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i32 0, i32 0)) #7
  br label %cleanup

land.lhs.true2.i763.1:                            ; preds = %if.else69
  %call.i761.1 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i762.1 = icmp eq i32 %call.i761.1, 0
  br i1 %tobool3.i762.1, label %if.then.i765.1, label %land.lhs.true2.i763.2

if.then.i765.1:                                   ; preds = %land.lhs.true2.i763.1
  %puts.i764.1 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0)) #7
  br label %land.lhs.true2.i763.2

land.lhs.true2.i763.2:                            ; preds = %land.lhs.true2.i763.1, %if.then.i765.1
  %call.i761.2 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i762.2 = icmp eq i32 %call.i761.2, 0
  br i1 %tobool3.i762.2, label %if.then.i765.2, label %land.lhs.true2.i763.4

if.then.i765.2:                                   ; preds = %land.lhs.true2.i763.2
  %puts.i764.2 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0)) #7
  br label %land.lhs.true2.i763.4

land.lhs.true2.i763.4:                            ; preds = %if.then.i765.2, %land.lhs.true2.i763.2
  %call.i761.4 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i762.4 = icmp eq i32 %call.i761.4, 0
  br i1 %tobool3.i762.4, label %if.then.i765.4, label %land.lhs.true2.i763.5

if.then.i765.4:                                   ; preds = %land.lhs.true2.i763.4
  %puts.i764.4 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0)) #7
  br label %land.lhs.true2.i763.5

land.lhs.true2.i763.5:                            ; preds = %land.lhs.true2.i763.4, %if.then.i765.4
  %call.i761.5 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i762.5 = icmp eq i32 %call.i761.5, 0
  br i1 %tobool3.i762.5, label %if.then.i765.5, label %land.lhs.true2.i763.6

if.then.i765.5:                                   ; preds = %land.lhs.true2.i763.5
  %puts.i764.5 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0)) #7
  br label %land.lhs.true2.i763.6

land.lhs.true2.i763.6:                            ; preds = %land.lhs.true2.i763.5, %if.then.i765.5
  %call.i761.6 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i762.6 = icmp eq i32 %call.i761.6, 0
  br i1 %tobool3.i762.6, label %if.then.i765.6, label %land.lhs.true2.i763.7

if.then.i765.6:                                   ; preds = %land.lhs.true2.i763.6
  %puts.i764.6 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0)) #7
  br label %land.lhs.true2.i763.7

land.lhs.true2.i763.7:                            ; preds = %land.lhs.true2.i763.6, %if.then.i765.6
  %call.i761.7 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i762.7 = icmp eq i32 %call.i761.7, 0
  br i1 %tobool3.i762.7, label %if.then.i765.7, label %land.lhs.true2.i763.8

if.then.i765.7:                                   ; preds = %land.lhs.true2.i763.7
  %puts.i764.7 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0)) #7
  br label %land.lhs.true2.i763.8

land.lhs.true2.i763.8:                            ; preds = %land.lhs.true2.i763.7, %if.then.i765.7
  %call.i761.8 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.76, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i762.8 = icmp eq i32 %call.i761.8, 0
  br i1 %tobool3.i762.8, label %if.then.i765.8, label %land.lhs.true2.i763.9

if.then.i765.8:                                   ; preds = %land.lhs.true2.i763.8
  %puts.i764.8 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.76, i32 0, i32 0)) #7
  br label %land.lhs.true2.i763.9

land.lhs.true2.i763.9:                            ; preds = %land.lhs.true2.i763.8, %if.then.i765.8
  %call.i761.9 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.77, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i762.9 = icmp eq i32 %call.i761.9, 0
  br i1 %tobool3.i762.9, label %if.then.i765.9, label %land.lhs.true2.i763.10

if.then.i765.9:                                   ; preds = %land.lhs.true2.i763.9
  %puts.i764.9 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.77, i32 0, i32 0)) #7
  br label %land.lhs.true2.i763.10

land.lhs.true2.i763.10:                           ; preds = %land.lhs.true2.i763.9, %if.then.i765.9
  %call.i761.10 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i762.10 = icmp eq i32 %call.i761.10, 0
  br i1 %tobool3.i762.10, label %if.then.i765.10, label %land.lhs.true2.i763.11

if.then.i765.10:                                  ; preds = %land.lhs.true2.i763.10
  %puts.i764.10 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i32 0, i32 0)) #7
  br label %land.lhs.true2.i763.11

land.lhs.true2.i763.11:                           ; preds = %land.lhs.true2.i763.10, %if.then.i765.10
  %call.i761.11 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i762.11 = icmp eq i32 %call.i761.11, 0
  br i1 %tobool3.i762.11, label %if.then.i765.11, label %land.lhs.true2.i763.12

if.then.i765.11:                                  ; preds = %land.lhs.true2.i763.11
  %puts.i764.11 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i32 0, i32 0)) #7
  br label %land.lhs.true2.i763.12

land.lhs.true2.i763.12:                           ; preds = %land.lhs.true2.i763.11, %if.then.i765.11
  %call.i761.12 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.79, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i762.12 = icmp eq i32 %call.i761.12, 0
  br i1 %tobool3.i762.12, label %if.then.i765.12, label %cleanup

if.then.i765.12:                                  ; preds = %land.lhs.true2.i763.12
  %puts.i764.12 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.79, i32 0, i32 0)) #7
  br label %cleanup

land.lhs.true2.i790.1:                            ; preds = %if.then.i792, %land.lhs.true2.i790
  %call.i788.1 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i789.1 = icmp eq i32 %call.i788.1, 0
  br i1 %tobool3.i789.1, label %if.then.i792.1, label %land.lhs.true2.i790.2

if.then.i792.1:                                   ; preds = %land.lhs.true2.i790.1
  %puts.i791.1 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i32 0, i32 0)) #7
  br label %land.lhs.true2.i790.2

land.lhs.true2.i790.2:                            ; preds = %land.lhs.true2.i790.1, %if.then.i792.1
  %call.i788.2 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.81, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i789.2 = icmp eq i32 %call.i788.2, 0
  br i1 %tobool3.i789.2, label %if.then.i792.2, label %land.lhs.true2.i790.3

if.then.i792.2:                                   ; preds = %land.lhs.true2.i790.2
  %puts.i791.2 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.81, i32 0, i32 0)) #7
  br label %land.lhs.true2.i790.3

land.lhs.true2.i790.3:                            ; preds = %land.lhs.true2.i790.2, %if.then.i792.2
  %call.i788.3 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.82, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i789.3 = icmp eq i32 %call.i788.3, 0
  br i1 %tobool3.i789.3, label %if.then.i792.3, label %cleanup

if.then.i792.3:                                   ; preds = %land.lhs.true2.i790.3
  %puts.i791.3 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.82, i32 0, i32 0)) #7
  br label %cleanup

land.lhs.true2.i.i801.1:                          ; preds = %suggest.exit.i806
  %call.i.i799.1 = call i32 @strncmp(i8* nonnull %27, i8* %cur, i32 %call) #6
  %tobool3.i.i800.1 = icmp eq i32 %call.i.i799.1, 0
  br i1 %tobool3.i.i800.1, label %if.then.i.i803.1, label %suggest.exit.i806.1

if.then.i.i803.1:                                 ; preds = %land.lhs.true2.i.i801.1
  %puts.i.i802.1 = call i32 @puts(i8* nonnull %27) #7
  br label %suggest.exit.i806.1

suggest.exit.i806.1:                              ; preds = %if.then.i.i803.1, %land.lhs.true2.i.i801.1, %suggest.exit.i806
  %call.i796.2 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* nonnull %27, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0), i32 2) #7
  %93 = load i8, i8* %27, align 4, !tbaa !2
  %tobool1.i.i797.2 = icmp eq i8 %93, 0
  br i1 %tobool1.i.i797.2, label %suggest.exit.i806.2, label %land.lhs.true2.i.i801.2

land.lhs.true2.i.i801.2:                          ; preds = %suggest.exit.i806.1
  %call.i.i799.2 = call i32 @strncmp(i8* nonnull %27, i8* %cur, i32 %call) #6
  %tobool3.i.i800.2 = icmp eq i32 %call.i.i799.2, 0
  br i1 %tobool3.i.i800.2, label %if.then.i.i803.2, label %suggest.exit.i806.2

if.then.i.i803.2:                                 ; preds = %land.lhs.true2.i.i801.2
  %puts.i.i802.2 = call i32 @puts(i8* nonnull %27) #7
  br label %suggest.exit.i806.2

suggest.exit.i806.2:                              ; preds = %if.then.i.i803.2, %land.lhs.true2.i.i801.2, %suggest.exit.i806.1
  %call.i796.3 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* nonnull %27, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0), i32 3) #7
  %94 = load i8, i8* %27, align 4, !tbaa !2
  %tobool1.i.i797.3 = icmp eq i8 %94, 0
  br i1 %tobool1.i.i797.3, label %suggest.exit.i806.3, label %land.lhs.true2.i.i801.3

land.lhs.true2.i.i801.3:                          ; preds = %suggest.exit.i806.2
  %call.i.i799.3 = call i32 @strncmp(i8* nonnull %27, i8* %cur, i32 %call) #6
  %tobool3.i.i800.3 = icmp eq i32 %call.i.i799.3, 0
  br i1 %tobool3.i.i800.3, label %if.then.i.i803.3, label %suggest.exit.i806.3

if.then.i.i803.3:                                 ; preds = %land.lhs.true2.i.i801.3
  %puts.i.i802.3 = call i32 @puts(i8* nonnull %27) #7
  br label %suggest.exit.i806.3

suggest.exit.i806.3:                              ; preds = %if.then.i.i803.3, %land.lhs.true2.i.i801.3, %suggest.exit.i806.2
  %call.i796.4 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* nonnull %27, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0), i32 4) #7
  %95 = load i8, i8* %27, align 4, !tbaa !2
  %tobool1.i.i797.4 = icmp eq i8 %95, 0
  br i1 %tobool1.i.i797.4, label %suggest.exit.i806.4, label %land.lhs.true2.i.i801.4

land.lhs.true2.i.i801.4:                          ; preds = %suggest.exit.i806.3
  %call.i.i799.4 = call i32 @strncmp(i8* nonnull %27, i8* %cur, i32 %call) #6
  %tobool3.i.i800.4 = icmp eq i32 %call.i.i799.4, 0
  br i1 %tobool3.i.i800.4, label %if.then.i.i803.4, label %suggest.exit.i806.4

if.then.i.i803.4:                                 ; preds = %land.lhs.true2.i.i801.4
  %puts.i.i802.4 = call i32 @puts(i8* nonnull %27) #7
  br label %suggest.exit.i806.4

suggest.exit.i806.4:                              ; preds = %if.then.i.i803.4, %land.lhs.true2.i.i801.4, %suggest.exit.i806.3
  %call.i796.5 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* nonnull %27, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0), i32 5) #7
  %96 = load i8, i8* %27, align 4, !tbaa !2
  %tobool1.i.i797.5 = icmp eq i8 %96, 0
  br i1 %tobool1.i.i797.5, label %suggest.exit.i806.5, label %land.lhs.true2.i.i801.5

land.lhs.true2.i.i801.5:                          ; preds = %suggest.exit.i806.4
  %call.i.i799.5 = call i32 @strncmp(i8* nonnull %27, i8* %cur, i32 %call) #6
  %tobool3.i.i800.5 = icmp eq i32 %call.i.i799.5, 0
  br i1 %tobool3.i.i800.5, label %if.then.i.i803.5, label %suggest.exit.i806.5

if.then.i.i803.5:                                 ; preds = %land.lhs.true2.i.i801.5
  %puts.i.i802.5 = call i32 @puts(i8* nonnull %27) #7
  br label %suggest.exit.i806.5

suggest.exit.i806.5:                              ; preds = %if.then.i.i803.5, %land.lhs.true2.i.i801.5, %suggest.exit.i806.4
  %call.i796.6 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* nonnull %27, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0), i32 6) #7
  %97 = load i8, i8* %27, align 4, !tbaa !2
  %tobool1.i.i797.6 = icmp eq i8 %97, 0
  br i1 %tobool1.i.i797.6, label %suggest.exit.i806.6, label %land.lhs.true2.i.i801.6

land.lhs.true2.i.i801.6:                          ; preds = %suggest.exit.i806.5
  %call.i.i799.6 = call i32 @strncmp(i8* nonnull %27, i8* %cur, i32 %call) #6
  %tobool3.i.i800.6 = icmp eq i32 %call.i.i799.6, 0
  br i1 %tobool3.i.i800.6, label %if.then.i.i803.6, label %suggest.exit.i806.6

if.then.i.i803.6:                                 ; preds = %land.lhs.true2.i.i801.6
  %puts.i.i802.6 = call i32 @puts(i8* nonnull %27) #7
  br label %suggest.exit.i806.6

suggest.exit.i806.6:                              ; preds = %if.then.i.i803.6, %land.lhs.true2.i.i801.6, %suggest.exit.i806.5
  %call.i796.7 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* nonnull %27, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0), i32 7) #7
  %98 = load i8, i8* %27, align 4, !tbaa !2
  %tobool1.i.i797.7 = icmp eq i8 %98, 0
  br i1 %tobool1.i.i797.7, label %suggest.exit.i806.7, label %land.lhs.true2.i.i801.7

land.lhs.true2.i.i801.7:                          ; preds = %suggest.exit.i806.6
  %call.i.i799.7 = call i32 @strncmp(i8* nonnull %27, i8* %cur, i32 %call) #6
  %tobool3.i.i800.7 = icmp eq i32 %call.i.i799.7, 0
  br i1 %tobool3.i.i800.7, label %if.then.i.i803.7, label %suggest.exit.i806.7

if.then.i.i803.7:                                 ; preds = %land.lhs.true2.i.i801.7
  %puts.i.i802.7 = call i32 @puts(i8* nonnull %27) #7
  br label %suggest.exit.i806.7

suggest.exit.i806.7:                              ; preds = %if.then.i.i803.7, %land.lhs.true2.i.i801.7, %suggest.exit.i806.6
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %27) #7
  br label %cleanup

land.lhs.true.i810.1:                             ; preds = %suggest.exit816
  %99 = load i8, i8* %32, align 1, !tbaa !2
  %tobool1.i809.1 = icmp eq i8 %99, 0
  br i1 %tobool1.i809.1, label %suggest.exit816.1, label %land.lhs.true2.i813.1

land.lhs.true2.i813.1:                            ; preds = %land.lhs.true.i810.1
  %call.i811.1 = tail call i32 @strncmp(i8* nonnull %32, i8* %cur, i32 %call) #6
  %tobool3.i812.1 = icmp eq i32 %call.i811.1, 0
  br i1 %tobool3.i812.1, label %if.then.i815.1, label %suggest.exit816.1

if.then.i815.1:                                   ; preds = %land.lhs.true2.i813.1
  %puts.i814.1 = tail call i32 @puts(i8* nonnull %32) #7
  br label %suggest.exit816.1

suggest.exit816.1:                                ; preds = %if.then.i815.1, %land.lhs.true2.i813.1, %land.lhs.true.i810.1, %suggest.exit816
  %100 = load i8*, i8** getelementptr inbounds ([0 x %struct.x264_cli_csp_t], [0 x %struct.x264_cli_csp_t]* @x264_cli_csps, i32 0, i32 3, i32 0), align 4, !tbaa !11
  %tobool.i808.2 = icmp eq i8* %100, null
  br i1 %tobool.i808.2, label %suggest.exit816.2, label %land.lhs.true.i810.2

land.lhs.true.i810.2:                             ; preds = %suggest.exit816.1
  %101 = load i8, i8* %100, align 1, !tbaa !2
  %tobool1.i809.2 = icmp eq i8 %101, 0
  br i1 %tobool1.i809.2, label %suggest.exit816.2, label %land.lhs.true2.i813.2

land.lhs.true2.i813.2:                            ; preds = %land.lhs.true.i810.2
  %call.i811.2 = tail call i32 @strncmp(i8* nonnull %100, i8* %cur, i32 %call) #6
  %tobool3.i812.2 = icmp eq i32 %call.i811.2, 0
  br i1 %tobool3.i812.2, label %if.then.i815.2, label %suggest.exit816.2

if.then.i815.2:                                   ; preds = %land.lhs.true2.i813.2
  %puts.i814.2 = tail call i32 @puts(i8* nonnull %100) #7
  br label %suggest.exit816.2

suggest.exit816.2:                                ; preds = %if.then.i815.2, %land.lhs.true2.i813.2, %land.lhs.true.i810.2, %suggest.exit816.1
  %102 = load i8*, i8** getelementptr inbounds ([0 x %struct.x264_cli_csp_t], [0 x %struct.x264_cli_csp_t]* @x264_cli_csps, i32 0, i32 4, i32 0), align 4, !tbaa !11
  %tobool.i808.3 = icmp eq i8* %102, null
  br i1 %tobool.i808.3, label %suggest.exit816.3, label %land.lhs.true.i810.3

land.lhs.true.i810.3:                             ; preds = %suggest.exit816.2
  %103 = load i8, i8* %102, align 1, !tbaa !2
  %tobool1.i809.3 = icmp eq i8 %103, 0
  br i1 %tobool1.i809.3, label %suggest.exit816.3, label %land.lhs.true2.i813.3

land.lhs.true2.i813.3:                            ; preds = %land.lhs.true.i810.3
  %call.i811.3 = tail call i32 @strncmp(i8* nonnull %102, i8* %cur, i32 %call) #6
  %tobool3.i812.3 = icmp eq i32 %call.i811.3, 0
  br i1 %tobool3.i812.3, label %if.then.i815.3, label %suggest.exit816.3

if.then.i815.3:                                   ; preds = %land.lhs.true2.i813.3
  %puts.i814.3 = tail call i32 @puts(i8* nonnull %102) #7
  br label %suggest.exit816.3

suggest.exit816.3:                                ; preds = %if.then.i815.3, %land.lhs.true2.i813.3, %land.lhs.true.i810.3, %suggest.exit816.2
  %104 = load i8*, i8** getelementptr inbounds ([0 x %struct.x264_cli_csp_t], [0 x %struct.x264_cli_csp_t]* @x264_cli_csps, i32 0, i32 5, i32 0), align 4, !tbaa !11
  %tobool.i808.4 = icmp eq i8* %104, null
  br i1 %tobool.i808.4, label %suggest.exit816.4, label %land.lhs.true.i810.4

land.lhs.true.i810.4:                             ; preds = %suggest.exit816.3
  %105 = load i8, i8* %104, align 1, !tbaa !2
  %tobool1.i809.4 = icmp eq i8 %105, 0
  br i1 %tobool1.i809.4, label %suggest.exit816.4, label %land.lhs.true2.i813.4

land.lhs.true2.i813.4:                            ; preds = %land.lhs.true.i810.4
  %call.i811.4 = tail call i32 @strncmp(i8* nonnull %104, i8* %cur, i32 %call) #6
  %tobool3.i812.4 = icmp eq i32 %call.i811.4, 0
  br i1 %tobool3.i812.4, label %if.then.i815.4, label %suggest.exit816.4

if.then.i815.4:                                   ; preds = %land.lhs.true2.i813.4
  %puts.i814.4 = tail call i32 @puts(i8* nonnull %104) #7
  br label %suggest.exit816.4

suggest.exit816.4:                                ; preds = %if.then.i815.4, %land.lhs.true2.i813.4, %land.lhs.true.i810.4, %suggest.exit816.3
  %106 = load i8*, i8** getelementptr inbounds ([0 x %struct.x264_cli_csp_t], [0 x %struct.x264_cli_csp_t]* @x264_cli_csps, i32 0, i32 6, i32 0), align 4, !tbaa !11
  %tobool.i808.5 = icmp eq i8* %106, null
  br i1 %tobool.i808.5, label %suggest.exit816.5, label %land.lhs.true.i810.5

land.lhs.true.i810.5:                             ; preds = %suggest.exit816.4
  %107 = load i8, i8* %106, align 1, !tbaa !2
  %tobool1.i809.5 = icmp eq i8 %107, 0
  br i1 %tobool1.i809.5, label %suggest.exit816.5, label %land.lhs.true2.i813.5

land.lhs.true2.i813.5:                            ; preds = %land.lhs.true.i810.5
  %call.i811.5 = tail call i32 @strncmp(i8* nonnull %106, i8* %cur, i32 %call) #6
  %tobool3.i812.5 = icmp eq i32 %call.i811.5, 0
  br i1 %tobool3.i812.5, label %if.then.i815.5, label %suggest.exit816.5

if.then.i815.5:                                   ; preds = %land.lhs.true2.i813.5
  %puts.i814.5 = tail call i32 @puts(i8* nonnull %106) #7
  br label %suggest.exit816.5

suggest.exit816.5:                                ; preds = %if.then.i815.5, %land.lhs.true2.i813.5, %land.lhs.true.i810.5, %suggest.exit816.4
  %108 = load i8*, i8** getelementptr inbounds ([0 x %struct.x264_cli_csp_t], [0 x %struct.x264_cli_csp_t]* @x264_cli_csps, i32 0, i32 7, i32 0), align 4, !tbaa !11
  %tobool.i808.6 = icmp eq i8* %108, null
  br i1 %tobool.i808.6, label %suggest.exit816.6, label %land.lhs.true.i810.6

land.lhs.true.i810.6:                             ; preds = %suggest.exit816.5
  %109 = load i8, i8* %108, align 1, !tbaa !2
  %tobool1.i809.6 = icmp eq i8 %109, 0
  br i1 %tobool1.i809.6, label %suggest.exit816.6, label %land.lhs.true2.i813.6

land.lhs.true2.i813.6:                            ; preds = %land.lhs.true.i810.6
  %call.i811.6 = tail call i32 @strncmp(i8* nonnull %108, i8* %cur, i32 %call) #6
  %tobool3.i812.6 = icmp eq i32 %call.i811.6, 0
  br i1 %tobool3.i812.6, label %if.then.i815.6, label %suggest.exit816.6

if.then.i815.6:                                   ; preds = %land.lhs.true2.i813.6
  %puts.i814.6 = tail call i32 @puts(i8* nonnull %108) #7
  br label %suggest.exit816.6

suggest.exit816.6:                                ; preds = %if.then.i815.6, %land.lhs.true2.i813.6, %land.lhs.true.i810.6, %suggest.exit816.5
  %110 = load i8*, i8** getelementptr inbounds ([0 x %struct.x264_cli_csp_t], [0 x %struct.x264_cli_csp_t]* @x264_cli_csps, i32 0, i32 8, i32 0), align 4, !tbaa !11
  %tobool.i808.7 = icmp eq i8* %110, null
  br i1 %tobool.i808.7, label %suggest.exit816.7, label %land.lhs.true.i810.7

land.lhs.true.i810.7:                             ; preds = %suggest.exit816.6
  %111 = load i8, i8* %110, align 1, !tbaa !2
  %tobool1.i809.7 = icmp eq i8 %111, 0
  br i1 %tobool1.i809.7, label %suggest.exit816.7, label %land.lhs.true2.i813.7

land.lhs.true2.i813.7:                            ; preds = %land.lhs.true.i810.7
  %call.i811.7 = tail call i32 @strncmp(i8* nonnull %110, i8* %cur, i32 %call) #6
  %tobool3.i812.7 = icmp eq i32 %call.i811.7, 0
  br i1 %tobool3.i812.7, label %if.then.i815.7, label %suggest.exit816.7

if.then.i815.7:                                   ; preds = %land.lhs.true2.i813.7
  %puts.i814.7 = tail call i32 @puts(i8* nonnull %110) #7
  br label %suggest.exit816.7

suggest.exit816.7:                                ; preds = %if.then.i815.7, %land.lhs.true2.i813.7, %land.lhs.true.i810.7, %suggest.exit816.6
  %112 = load i8*, i8** getelementptr inbounds ([0 x %struct.x264_cli_csp_t], [0 x %struct.x264_cli_csp_t]* @x264_cli_csps, i32 0, i32 9, i32 0), align 4, !tbaa !11
  %tobool.i808.8 = icmp eq i8* %112, null
  br i1 %tobool.i808.8, label %suggest.exit816.8, label %land.lhs.true.i810.8

land.lhs.true.i810.8:                             ; preds = %suggest.exit816.7
  %113 = load i8, i8* %112, align 1, !tbaa !2
  %tobool1.i809.8 = icmp eq i8 %113, 0
  br i1 %tobool1.i809.8, label %suggest.exit816.8, label %land.lhs.true2.i813.8

land.lhs.true2.i813.8:                            ; preds = %land.lhs.true.i810.8
  %call.i811.8 = tail call i32 @strncmp(i8* nonnull %112, i8* %cur, i32 %call) #6
  %tobool3.i812.8 = icmp eq i32 %call.i811.8, 0
  br i1 %tobool3.i812.8, label %if.then.i815.8, label %suggest.exit816.8

if.then.i815.8:                                   ; preds = %land.lhs.true2.i813.8
  %puts.i814.8 = tail call i32 @puts(i8* nonnull %112) #7
  br label %suggest.exit816.8

suggest.exit816.8:                                ; preds = %if.then.i815.8, %land.lhs.true2.i813.8, %land.lhs.true.i810.8, %suggest.exit816.7
  %114 = load i8*, i8** getelementptr inbounds ([0 x %struct.x264_cli_csp_t], [0 x %struct.x264_cli_csp_t]* @x264_cli_csps, i32 0, i32 10, i32 0), align 4, !tbaa !11
  %tobool.i808.9 = icmp eq i8* %114, null
  br i1 %tobool.i808.9, label %suggest.exit816.9, label %land.lhs.true.i810.9

land.lhs.true.i810.9:                             ; preds = %suggest.exit816.8
  %115 = load i8, i8* %114, align 1, !tbaa !2
  %tobool1.i809.9 = icmp eq i8 %115, 0
  br i1 %tobool1.i809.9, label %suggest.exit816.9, label %land.lhs.true2.i813.9

land.lhs.true2.i813.9:                            ; preds = %land.lhs.true.i810.9
  %call.i811.9 = tail call i32 @strncmp(i8* nonnull %114, i8* %cur, i32 %call) #6
  %tobool3.i812.9 = icmp eq i32 %call.i811.9, 0
  br i1 %tobool3.i812.9, label %if.then.i815.9, label %suggest.exit816.9

if.then.i815.9:                                   ; preds = %land.lhs.true2.i813.9
  %puts.i814.9 = tail call i32 @puts(i8* nonnull %114) #7
  br label %suggest.exit816.9

suggest.exit816.9:                                ; preds = %if.then.i815.9, %land.lhs.true2.i813.9, %land.lhs.true.i810.9, %suggest.exit816.8
  %116 = load i8*, i8** getelementptr inbounds ([0 x %struct.x264_cli_csp_t], [0 x %struct.x264_cli_csp_t]* @x264_cli_csps, i32 0, i32 11, i32 0), align 4, !tbaa !11
  %tobool.i808.10 = icmp eq i8* %116, null
  br i1 %tobool.i808.10, label %suggest.exit816.10, label %land.lhs.true.i810.10

land.lhs.true.i810.10:                            ; preds = %suggest.exit816.9
  %117 = load i8, i8* %116, align 1, !tbaa !2
  %tobool1.i809.10 = icmp eq i8 %117, 0
  br i1 %tobool1.i809.10, label %suggest.exit816.10, label %land.lhs.true2.i813.10

land.lhs.true2.i813.10:                           ; preds = %land.lhs.true.i810.10
  %call.i811.10 = tail call i32 @strncmp(i8* nonnull %116, i8* %cur, i32 %call) #6
  %tobool3.i812.10 = icmp eq i32 %call.i811.10, 0
  br i1 %tobool3.i812.10, label %if.then.i815.10, label %suggest.exit816.10

if.then.i815.10:                                  ; preds = %land.lhs.true2.i813.10
  %puts.i814.10 = tail call i32 @puts(i8* nonnull %116) #7
  br label %suggest.exit816.10

suggest.exit816.10:                               ; preds = %if.then.i815.10, %land.lhs.true2.i813.10, %land.lhs.true.i810.10, %suggest.exit816.9
  %118 = load i8*, i8** getelementptr inbounds ([0 x %struct.x264_cli_csp_t], [0 x %struct.x264_cli_csp_t]* @x264_cli_csps, i32 0, i32 12, i32 0), align 4, !tbaa !11
  %tobool.i808.11 = icmp eq i8* %118, null
  br i1 %tobool.i808.11, label %suggest.exit816.11, label %land.lhs.true.i810.11

land.lhs.true.i810.11:                            ; preds = %suggest.exit816.10
  %119 = load i8, i8* %118, align 1, !tbaa !2
  %tobool1.i809.11 = icmp eq i8 %119, 0
  br i1 %tobool1.i809.11, label %suggest.exit816.11, label %land.lhs.true2.i813.11

land.lhs.true2.i813.11:                           ; preds = %land.lhs.true.i810.11
  %call.i811.11 = tail call i32 @strncmp(i8* nonnull %118, i8* %cur, i32 %call) #6
  %tobool3.i812.11 = icmp eq i32 %call.i811.11, 0
  br i1 %tobool3.i812.11, label %if.then.i815.11, label %suggest.exit816.11

if.then.i815.11:                                  ; preds = %land.lhs.true2.i813.11
  %puts.i814.11 = tail call i32 @puts(i8* nonnull %118) #7
  br label %suggest.exit816.11

suggest.exit816.11:                               ; preds = %if.then.i815.11, %land.lhs.true2.i813.11, %land.lhs.true.i810.11, %suggest.exit816.10
  %120 = load i8*, i8** getelementptr inbounds ([0 x %struct.x264_cli_csp_t], [0 x %struct.x264_cli_csp_t]* @x264_cli_csps, i32 0, i32 13, i32 0), align 4, !tbaa !11
  %tobool.i808.12 = icmp eq i8* %120, null
  br i1 %tobool.i808.12, label %suggest.exit816.12, label %land.lhs.true.i810.12

land.lhs.true.i810.12:                            ; preds = %suggest.exit816.11
  %121 = load i8, i8* %120, align 1, !tbaa !2
  %tobool1.i809.12 = icmp eq i8 %121, 0
  br i1 %tobool1.i809.12, label %suggest.exit816.12, label %land.lhs.true2.i813.12

land.lhs.true2.i813.12:                           ; preds = %land.lhs.true.i810.12
  %call.i811.12 = tail call i32 @strncmp(i8* nonnull %120, i8* %cur, i32 %call) #6
  %tobool3.i812.12 = icmp eq i32 %call.i811.12, 0
  br i1 %tobool3.i812.12, label %if.then.i815.12, label %suggest.exit816.12

if.then.i815.12:                                  ; preds = %land.lhs.true2.i813.12
  %puts.i814.12 = tail call i32 @puts(i8* nonnull %120) #7
  br label %suggest.exit816.12

suggest.exit816.12:                               ; preds = %if.then.i815.12, %land.lhs.true2.i813.12, %land.lhs.true.i810.12, %suggest.exit816.11
  %122 = load i8*, i8** getelementptr inbounds ([0 x %struct.x264_cli_csp_t], [0 x %struct.x264_cli_csp_t]* @x264_cli_csps, i32 0, i32 14, i32 0), align 4, !tbaa !11
  %tobool.i808.13 = icmp eq i8* %122, null
  br i1 %tobool.i808.13, label %suggest.exit816.13, label %land.lhs.true.i810.13

land.lhs.true.i810.13:                            ; preds = %suggest.exit816.12
  %123 = load i8, i8* %122, align 1, !tbaa !2
  %tobool1.i809.13 = icmp eq i8 %123, 0
  br i1 %tobool1.i809.13, label %suggest.exit816.13, label %land.lhs.true2.i813.13

land.lhs.true2.i813.13:                           ; preds = %land.lhs.true.i810.13
  %call.i811.13 = tail call i32 @strncmp(i8* nonnull %122, i8* %cur, i32 %call) #6
  %tobool3.i812.13 = icmp eq i32 %call.i811.13, 0
  br i1 %tobool3.i812.13, label %if.then.i815.13, label %suggest.exit816.13

if.then.i815.13:                                  ; preds = %land.lhs.true2.i813.13
  %puts.i814.13 = tail call i32 @puts(i8* nonnull %122) #7
  br label %suggest.exit816.13

suggest.exit816.13:                               ; preds = %if.then.i815.13, %land.lhs.true2.i813.13, %land.lhs.true.i810.13, %suggest.exit816.12
  %124 = load i8*, i8** getelementptr inbounds ([0 x %struct.x264_cli_csp_t], [0 x %struct.x264_cli_csp_t]* @x264_cli_csps, i32 0, i32 15, i32 0), align 4, !tbaa !11
  %tobool.i808.14 = icmp eq i8* %124, null
  br i1 %tobool.i808.14, label %suggest.exit816.14, label %land.lhs.true.i810.14

land.lhs.true.i810.14:                            ; preds = %suggest.exit816.13
  %125 = load i8, i8* %124, align 1, !tbaa !2
  %tobool1.i809.14 = icmp eq i8 %125, 0
  br i1 %tobool1.i809.14, label %suggest.exit816.14, label %land.lhs.true2.i813.14

land.lhs.true2.i813.14:                           ; preds = %land.lhs.true.i810.14
  %call.i811.14 = tail call i32 @strncmp(i8* nonnull %124, i8* %cur, i32 %call) #6
  %tobool3.i812.14 = icmp eq i32 %call.i811.14, 0
  br i1 %tobool3.i812.14, label %if.then.i815.14, label %suggest.exit816.14

if.then.i815.14:                                  ; preds = %land.lhs.true2.i813.14
  %puts.i814.14 = tail call i32 @puts(i8* nonnull %124) #7
  br label %suggest.exit816.14

suggest.exit816.14:                               ; preds = %if.then.i815.14, %land.lhs.true2.i813.14, %land.lhs.true.i810.14, %suggest.exit816.13
  %126 = load i8*, i8** getelementptr inbounds ([0 x %struct.x264_cli_csp_t], [0 x %struct.x264_cli_csp_t]* @x264_cli_csps, i32 0, i32 16, i32 0), align 4, !tbaa !11
  %tobool.i808.15 = icmp eq i8* %126, null
  br i1 %tobool.i808.15, label %cleanup, label %land.lhs.true.i810.15

land.lhs.true.i810.15:                            ; preds = %suggest.exit816.14
  %127 = load i8, i8* %126, align 1, !tbaa !2
  %tobool1.i809.15 = icmp eq i8 %127, 0
  br i1 %tobool1.i809.15, label %cleanup, label %land.lhs.true2.i813.15

land.lhs.true2.i813.15:                           ; preds = %land.lhs.true.i810.15
  %call.i811.15 = tail call i32 @strncmp(i8* nonnull %126, i8* %cur, i32 %call) #6
  %tobool3.i812.15 = icmp eq i32 %call.i811.15, 0
  br i1 %tobool3.i812.15, label %if.then.i815.15, label %cleanup

if.then.i815.15:                                  ; preds = %land.lhs.true2.i813.15
  %puts.i814.15 = tail call i32 @puts(i8* nonnull %126) #7
  br label %cleanup

land.lhs.true2.i831.1:                            ; preds = %if.then.i833, %land.lhs.true2.i831
  %call.i829.1 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.84, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i830.1 = icmp eq i32 %call.i829.1, 0
  br i1 %tobool3.i830.1, label %if.then.i833.1, label %land.lhs.true2.i831.2

if.then.i833.1:                                   ; preds = %land.lhs.true2.i831.1
  %puts.i832.1 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.84, i32 0, i32 0)) #7
  br label %land.lhs.true2.i831.2

land.lhs.true2.i831.2:                            ; preds = %land.lhs.true2.i831.1, %if.then.i833.1
  %call.i829.2 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.85, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i830.2 = icmp eq i32 %call.i829.2, 0
  br i1 %tobool3.i830.2, label %if.then.i833.2, label %land.lhs.true2.i831.3

if.then.i833.2:                                   ; preds = %land.lhs.true2.i831.2
  %puts.i832.2 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.85, i32 0, i32 0)) #7
  br label %land.lhs.true2.i831.3

land.lhs.true2.i831.3:                            ; preds = %land.lhs.true2.i831.2, %if.then.i833.2
  %call.i829.3 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.86, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i830.3 = icmp eq i32 %call.i829.3, 0
  br i1 %tobool3.i830.3, label %if.then.i833.3, label %land.lhs.true2.i831.4

if.then.i833.3:                                   ; preds = %land.lhs.true2.i831.3
  %puts.i832.3 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.86, i32 0, i32 0)) #7
  br label %land.lhs.true2.i831.4

land.lhs.true2.i831.4:                            ; preds = %land.lhs.true2.i831.3, %if.then.i833.3
  %call.i829.4 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.87, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i830.4 = icmp eq i32 %call.i829.4, 0
  br i1 %tobool3.i830.4, label %if.then.i833.4, label %land.lhs.true2.i831.5

if.then.i833.4:                                   ; preds = %land.lhs.true2.i831.4
  %puts.i832.4 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.87, i32 0, i32 0)) #7
  br label %land.lhs.true2.i831.5

land.lhs.true2.i831.5:                            ; preds = %land.lhs.true2.i831.4, %if.then.i833.4
  %call.i829.5 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.88, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i830.5 = icmp eq i32 %call.i829.5, 0
  br i1 %tobool3.i830.5, label %if.then.i833.5, label %land.lhs.true2.i831.6

if.then.i833.5:                                   ; preds = %land.lhs.true2.i831.5
  %puts.i832.5 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.88, i32 0, i32 0)) #7
  br label %land.lhs.true2.i831.6

land.lhs.true2.i831.6:                            ; preds = %land.lhs.true2.i831.5, %if.then.i833.5
  %call.i829.6 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i830.6 = icmp eq i32 %call.i829.6, 0
  br i1 %tobool3.i830.6, label %if.then.i833.6, label %land.lhs.true2.i831.7

if.then.i833.6:                                   ; preds = %land.lhs.true2.i831.6
  %puts.i832.6 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i32 0, i32 0)) #7
  br label %land.lhs.true2.i831.7

land.lhs.true2.i831.7:                            ; preds = %land.lhs.true2.i831.6, %if.then.i833.6
  %call.i829.7 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i830.7 = icmp eq i32 %call.i829.7, 0
  br i1 %tobool3.i830.7, label %if.then.i833.7, label %land.lhs.true2.i831.8

if.then.i833.7:                                   ; preds = %land.lhs.true2.i831.7
  %puts.i832.7 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i32 0, i32 0)) #7
  br label %land.lhs.true2.i831.8

land.lhs.true2.i831.8:                            ; preds = %land.lhs.true2.i831.7, %if.then.i833.7
  %call.i829.8 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.91, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i830.8 = icmp eq i32 %call.i829.8, 0
  br i1 %tobool3.i830.8, label %if.then.i833.8, label %land.lhs.true2.i831.9

if.then.i833.8:                                   ; preds = %land.lhs.true2.i831.8
  %puts.i832.8 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.91, i32 0, i32 0)) #7
  br label %land.lhs.true2.i831.9

land.lhs.true2.i831.9:                            ; preds = %land.lhs.true2.i831.8, %if.then.i833.8
  %call.i829.9 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.92, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i830.9 = icmp eq i32 %call.i829.9, 0
  br i1 %tobool3.i830.9, label %if.then.i833.9, label %land.lhs.true2.i831.10

if.then.i833.9:                                   ; preds = %land.lhs.true2.i831.9
  %puts.i832.9 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.92, i32 0, i32 0)) #7
  br label %land.lhs.true2.i831.10

land.lhs.true2.i831.10:                           ; preds = %land.lhs.true2.i831.9, %if.then.i833.9
  %call.i829.10 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.93, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i830.10 = icmp eq i32 %call.i829.10, 0
  br i1 %tobool3.i830.10, label %if.then.i833.10, label %land.lhs.true2.i831.11

if.then.i833.10:                                  ; preds = %land.lhs.true2.i831.10
  %puts.i832.10 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.93, i32 0, i32 0)) #7
  br label %land.lhs.true2.i831.11

land.lhs.true2.i831.11:                           ; preds = %land.lhs.true2.i831.10, %if.then.i833.10
  %call.i829.11 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.94, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i830.11 = icmp eq i32 %call.i829.11, 0
  br i1 %tobool3.i830.11, label %if.then.i833.11, label %land.lhs.true2.i831.12

if.then.i833.11:                                  ; preds = %land.lhs.true2.i831.11
  %puts.i832.11 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.94, i32 0, i32 0)) #7
  br label %land.lhs.true2.i831.12

land.lhs.true2.i831.12:                           ; preds = %land.lhs.true2.i831.11, %if.then.i833.11
  %call.i829.12 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.95, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i830.12 = icmp eq i32 %call.i829.12, 0
  br i1 %tobool3.i830.12, label %if.then.i833.12, label %land.lhs.true2.i831.13

if.then.i833.12:                                  ; preds = %land.lhs.true2.i831.12
  %puts.i832.12 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.95, i32 0, i32 0)) #7
  br label %land.lhs.true2.i831.13

land.lhs.true2.i831.13:                           ; preds = %land.lhs.true2.i831.12, %if.then.i833.12
  %call.i829.13 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.96, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i830.13 = icmp eq i32 %call.i829.13, 0
  br i1 %tobool3.i830.13, label %if.then.i833.13, label %land.lhs.true2.i831.14

if.then.i833.13:                                  ; preds = %land.lhs.true2.i831.13
  %puts.i832.13 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.96, i32 0, i32 0)) #7
  br label %land.lhs.true2.i831.14

land.lhs.true2.i831.14:                           ; preds = %land.lhs.true2.i831.13, %if.then.i833.13
  %call.i829.14 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i830.14 = icmp eq i32 %call.i829.14, 0
  br i1 %tobool3.i830.14, label %if.then.i833.14, label %land.lhs.true2.i831.15

if.then.i833.14:                                  ; preds = %land.lhs.true2.i831.14
  %puts.i832.14 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i32 0, i32 0)) #7
  br label %land.lhs.true2.i831.15

land.lhs.true2.i831.15:                           ; preds = %land.lhs.true2.i831.14, %if.then.i833.14
  %call.i829.15 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.98, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i830.15 = icmp eq i32 %call.i829.15, 0
  br i1 %tobool3.i830.15, label %if.then.i833.15, label %land.lhs.true2.i831.16

if.then.i833.15:                                  ; preds = %land.lhs.true2.i831.15
  %puts.i832.15 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.98, i32 0, i32 0)) #7
  br label %land.lhs.true2.i831.16

land.lhs.true2.i831.16:                           ; preds = %land.lhs.true2.i831.15, %if.then.i833.15
  %call.i829.16 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.99, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i830.16 = icmp eq i32 %call.i829.16, 0
  br i1 %tobool3.i830.16, label %if.then.i833.16, label %land.lhs.true2.i831.17

if.then.i833.16:                                  ; preds = %land.lhs.true2.i831.16
  %puts.i832.16 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.99, i32 0, i32 0)) #7
  br label %land.lhs.true2.i831.17

land.lhs.true2.i831.17:                           ; preds = %land.lhs.true2.i831.16, %if.then.i833.16
  %call.i829.17 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.100, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i830.17 = icmp eq i32 %call.i829.17, 0
  br i1 %tobool3.i830.17, label %if.then.i833.17, label %land.lhs.true2.i831.18

if.then.i833.17:                                  ; preds = %land.lhs.true2.i831.17
  %puts.i832.17 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.100, i32 0, i32 0)) #7
  br label %land.lhs.true2.i831.18

land.lhs.true2.i831.18:                           ; preds = %land.lhs.true2.i831.17, %if.then.i833.17
  %call.i829.18 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.101, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i830.18 = icmp eq i32 %call.i829.18, 0
  br i1 %tobool3.i830.18, label %if.then.i833.18, label %land.lhs.true2.i831.19

if.then.i833.18:                                  ; preds = %land.lhs.true2.i831.18
  %puts.i832.18 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.101, i32 0, i32 0)) #7
  br label %land.lhs.true2.i831.19

land.lhs.true2.i831.19:                           ; preds = %land.lhs.true2.i831.18, %if.then.i833.18
  %call.i829.19 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.102, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i830.19 = icmp eq i32 %call.i829.19, 0
  br i1 %tobool3.i830.19, label %if.then.i833.19, label %cleanup

if.then.i833.19:                                  ; preds = %land.lhs.true2.i831.19
  %puts.i832.19 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.102, i32 0, i32 0)) #7
  br label %cleanup

land.lhs.true2.i849.1:                            ; preds = %if.then.i851, %land.lhs.true2.i849
  %call.i847.1 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.104, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i848.1 = icmp eq i32 %call.i847.1, 0
  br i1 %tobool3.i848.1, label %if.then.i851.1, label %land.lhs.true2.i849.2

if.then.i851.1:                                   ; preds = %land.lhs.true2.i849.1
  %puts.i850.1 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.104, i32 0, i32 0)) #7
  br label %land.lhs.true2.i849.2

land.lhs.true2.i849.2:                            ; preds = %land.lhs.true2.i849.1, %if.then.i851.1
  %call.i847.2 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i848.2 = icmp eq i32 %call.i847.2, 0
  br i1 %tobool3.i848.2, label %if.then.i851.2, label %land.lhs.true2.i849.3

if.then.i851.2:                                   ; preds = %land.lhs.true2.i849.2
  %puts.i850.2 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i32 0, i32 0)) #7
  br label %land.lhs.true2.i849.3

land.lhs.true2.i849.3:                            ; preds = %land.lhs.true2.i849.2, %if.then.i851.2
  %call.i847.3 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.106, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i848.3 = icmp eq i32 %call.i847.3, 0
  br i1 %tobool3.i848.3, label %if.then.i851.3, label %land.lhs.true2.i849.4

if.then.i851.3:                                   ; preds = %land.lhs.true2.i849.3
  %puts.i850.3 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.106, i32 0, i32 0)) #7
  br label %land.lhs.true2.i849.4

land.lhs.true2.i849.4:                            ; preds = %land.lhs.true2.i849.3, %if.then.i851.3
  %call.i847.4 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.107, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i848.4 = icmp eq i32 %call.i847.4, 0
  br i1 %tobool3.i848.4, label %if.then.i851.4, label %cleanup

if.then.i851.4:                                   ; preds = %land.lhs.true2.i849.4
  %puts.i850.4 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.107, i32 0, i32 0)) #7
  br label %cleanup

land.lhs.true2.i867.1:                            ; preds = %if.then.i869, %land.lhs.true2.i867
  %call.i865.1 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.108, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i866.1 = icmp eq i32 %call.i865.1, 0
  br i1 %tobool3.i866.1, label %if.then.i869.1, label %land.lhs.true2.i867.2

if.then.i869.1:                                   ; preds = %land.lhs.true2.i867.1
  %puts.i868.1 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.108, i32 0, i32 0)) #7
  br label %land.lhs.true2.i867.2

land.lhs.true2.i867.2:                            ; preds = %land.lhs.true2.i867.1, %if.then.i869.1
  %call.i865.2 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.109, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i866.2 = icmp eq i32 %call.i865.2, 0
  br i1 %tobool3.i866.2, label %if.then.i869.2, label %cleanup

if.then.i869.2:                                   ; preds = %land.lhs.true2.i867.2
  %puts.i868.2 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.109, i32 0, i32 0)) #7
  br label %cleanup

land.lhs.true2.i892.1:                            ; preds = %if.then.i894, %land.lhs.true2.i892
  %call.i890.1 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.110, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i891.1 = icmp eq i32 %call.i890.1, 0
  br i1 %tobool3.i891.1, label %if.then.i894.1, label %land.lhs.true2.i892.2

if.then.i894.1:                                   ; preds = %land.lhs.true2.i892.1
  %puts.i893.1 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.110, i32 0, i32 0)) #7
  br label %land.lhs.true2.i892.2

land.lhs.true2.i892.2:                            ; preds = %land.lhs.true2.i892.1, %if.then.i894.1
  %call.i890.2 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.111, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i891.2 = icmp eq i32 %call.i890.2, 0
  br i1 %tobool3.i891.2, label %if.then.i894.2, label %cleanup

if.then.i894.2:                                   ; preds = %land.lhs.true2.i892.2
  %puts.i893.2 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.111, i32 0, i32 0)) #7
  br label %cleanup

land.lhs.true2.i.i912.1:                          ; preds = %suggest.exit.i917
  %call.i.i910.1 = call i32 @strncmp(i8* nonnull %53, i8* %cur, i32 %call) #6
  %tobool3.i.i911.1 = icmp eq i32 %call.i.i910.1, 0
  br i1 %tobool3.i.i911.1, label %if.then.i.i914.1, label %suggest.exit.i917.1

if.then.i.i914.1:                                 ; preds = %land.lhs.true2.i.i912.1
  %puts.i.i913.1 = call i32 @puts(i8* nonnull %53) #7
  br label %suggest.exit.i917.1

suggest.exit.i917.1:                              ; preds = %if.then.i.i914.1, %land.lhs.true2.i.i912.1, %suggest.exit.i917
  %call.i907.2 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* nonnull %53, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0), i32 3) #7
  %128 = load i8, i8* %53, align 4, !tbaa !2
  %tobool1.i.i908.2 = icmp eq i8 %128, 0
  br i1 %tobool1.i.i908.2, label %suggest.exit.i917.2, label %land.lhs.true2.i.i912.2

land.lhs.true2.i.i912.2:                          ; preds = %suggest.exit.i917.1
  %call.i.i910.2 = call i32 @strncmp(i8* nonnull %53, i8* %cur, i32 %call) #6
  %tobool3.i.i911.2 = icmp eq i32 %call.i.i910.2, 0
  br i1 %tobool3.i.i911.2, label %if.then.i.i914.2, label %suggest.exit.i917.2

if.then.i.i914.2:                                 ; preds = %land.lhs.true2.i.i912.2
  %puts.i.i913.2 = call i32 @puts(i8* nonnull %53) #7
  br label %suggest.exit.i917.2

suggest.exit.i917.2:                              ; preds = %if.then.i.i914.2, %land.lhs.true2.i.i912.2, %suggest.exit.i917.1
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %53) #7
  br label %cleanup

land.lhs.true2.i924.1:                            ; preds = %if.then.i926, %land.lhs.true2.i924
  %call.i922.1 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.113, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i923.1 = icmp eq i32 %call.i922.1, 0
  br i1 %tobool3.i923.1, label %if.then.i926.1, label %land.lhs.true2.i924.2

if.then.i926.1:                                   ; preds = %land.lhs.true2.i924.1
  %puts.i925.1 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.113, i32 0, i32 0)) #7
  br label %land.lhs.true2.i924.2

land.lhs.true2.i924.2:                            ; preds = %land.lhs.true2.i924.1, %if.then.i926.1
  %call.i922.2 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.114, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i923.2 = icmp eq i32 %call.i922.2, 0
  br i1 %tobool3.i923.2, label %if.then.i926.2, label %land.lhs.true2.i924.3

if.then.i926.2:                                   ; preds = %land.lhs.true2.i924.2
  %puts.i925.2 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.114, i32 0, i32 0)) #7
  br label %land.lhs.true2.i924.3

land.lhs.true2.i924.3:                            ; preds = %land.lhs.true2.i924.2, %if.then.i926.2
  %call.i922.3 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.115, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i923.3 = icmp eq i32 %call.i922.3, 0
  br i1 %tobool3.i923.3, label %if.then.i926.3, label %land.lhs.true2.i924.4

if.then.i926.3:                                   ; preds = %land.lhs.true2.i924.3
  %puts.i925.3 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.115, i32 0, i32 0)) #7
  br label %land.lhs.true2.i924.4

land.lhs.true2.i924.4:                            ; preds = %land.lhs.true2.i924.3, %if.then.i926.3
  %call.i922.4 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.116, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i923.4 = icmp eq i32 %call.i922.4, 0
  br i1 %tobool3.i923.4, label %if.then.i926.4, label %land.lhs.true2.i924.5

if.then.i926.4:                                   ; preds = %land.lhs.true2.i924.4
  %puts.i925.4 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.116, i32 0, i32 0)) #7
  br label %land.lhs.true2.i924.5

land.lhs.true2.i924.5:                            ; preds = %land.lhs.true2.i924.4, %if.then.i926.4
  %call.i922.5 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.117, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i923.5 = icmp eq i32 %call.i922.5, 0
  br i1 %tobool3.i923.5, label %if.then.i926.5, label %land.lhs.true2.i924.6

if.then.i926.5:                                   ; preds = %land.lhs.true2.i924.5
  %puts.i925.5 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.117, i32 0, i32 0)) #7
  br label %land.lhs.true2.i924.6

land.lhs.true2.i924.6:                            ; preds = %land.lhs.true2.i924.5, %if.then.i926.5
  %call.i922.6 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.118, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i923.6 = icmp eq i32 %call.i922.6, 0
  br i1 %tobool3.i923.6, label %if.then.i926.6, label %land.lhs.true2.i924.7

if.then.i926.6:                                   ; preds = %land.lhs.true2.i924.6
  %puts.i925.6 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.118, i32 0, i32 0)) #7
  br label %land.lhs.true2.i924.7

land.lhs.true2.i924.7:                            ; preds = %land.lhs.true2.i924.6, %if.then.i926.6
  %call.i922.7 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.119, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i923.7 = icmp eq i32 %call.i922.7, 0
  br i1 %tobool3.i923.7, label %if.then.i926.7, label %land.lhs.true2.i924.8

if.then.i926.7:                                   ; preds = %land.lhs.true2.i924.7
  %puts.i925.7 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.119, i32 0, i32 0)) #7
  br label %land.lhs.true2.i924.8

land.lhs.true2.i924.8:                            ; preds = %land.lhs.true2.i924.7, %if.then.i926.7
  %call.i922.8 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.120, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i923.8 = icmp eq i32 %call.i922.8, 0
  br i1 %tobool3.i923.8, label %if.then.i926.8, label %land.lhs.true2.i924.9

if.then.i926.8:                                   ; preds = %land.lhs.true2.i924.8
  %puts.i925.8 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.120, i32 0, i32 0)) #7
  br label %land.lhs.true2.i924.9

land.lhs.true2.i924.9:                            ; preds = %land.lhs.true2.i924.8, %if.then.i926.8
  %call.i922.9 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.121, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i923.9 = icmp eq i32 %call.i922.9, 0
  br i1 %tobool3.i923.9, label %if.then.i926.9, label %cleanup

if.then.i926.9:                                   ; preds = %land.lhs.true2.i924.9
  %puts.i925.9 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.121, i32 0, i32 0)) #7
  br label %cleanup

land.lhs.true2.i.i962.1:                          ; preds = %suggest.exit.i967
  %call.i.i960.1 = call i32 @strncmp(i8* nonnull %68, i8* %cur, i32 %call) #6
  %tobool3.i.i961.1 = icmp eq i32 %call.i.i960.1, 0
  br i1 %tobool3.i.i961.1, label %if.then.i.i964.1, label %suggest.exit.i967.1

if.then.i.i964.1:                                 ; preds = %land.lhs.true2.i.i962.1
  %puts.i.i963.1 = call i32 @puts(i8* nonnull %68) #7
  br label %suggest.exit.i967.1

suggest.exit.i967.1:                              ; preds = %if.then.i.i964.1, %land.lhs.true2.i.i962.1, %suggest.exit.i967
  %call.i957.2 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* nonnull %68, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0), i32 2) #7
  %129 = load i8, i8* %68, align 4, !tbaa !2
  %tobool1.i.i958.2 = icmp eq i8 %129, 0
  br i1 %tobool1.i.i958.2, label %suggest.exit.i967.2, label %land.lhs.true2.i.i962.2

land.lhs.true2.i.i962.2:                          ; preds = %suggest.exit.i967.1
  %call.i.i960.2 = call i32 @strncmp(i8* nonnull %68, i8* %cur, i32 %call) #6
  %tobool3.i.i961.2 = icmp eq i32 %call.i.i960.2, 0
  br i1 %tobool3.i.i961.2, label %if.then.i.i964.2, label %suggest.exit.i967.2

if.then.i.i964.2:                                 ; preds = %land.lhs.true2.i.i962.2
  %puts.i.i963.2 = call i32 @puts(i8* nonnull %68) #7
  br label %suggest.exit.i967.2

suggest.exit.i967.2:                              ; preds = %if.then.i.i964.2, %land.lhs.true2.i.i962.2, %suggest.exit.i967.1
  %call.i957.3 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* nonnull %68, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0), i32 3) #7
  %130 = load i8, i8* %68, align 4, !tbaa !2
  %tobool1.i.i958.3 = icmp eq i8 %130, 0
  br i1 %tobool1.i.i958.3, label %suggest.exit.i967.3, label %land.lhs.true2.i.i962.3

land.lhs.true2.i.i962.3:                          ; preds = %suggest.exit.i967.2
  %call.i.i960.3 = call i32 @strncmp(i8* nonnull %68, i8* %cur, i32 %call) #6
  %tobool3.i.i961.3 = icmp eq i32 %call.i.i960.3, 0
  br i1 %tobool3.i.i961.3, label %if.then.i.i964.3, label %suggest.exit.i967.3

if.then.i.i964.3:                                 ; preds = %land.lhs.true2.i.i962.3
  %puts.i.i963.3 = call i32 @puts(i8* nonnull %68) #7
  br label %suggest.exit.i967.3

suggest.exit.i967.3:                              ; preds = %if.then.i.i964.3, %land.lhs.true2.i.i962.3, %suggest.exit.i967.2
  %call.i957.4 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* nonnull %68, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0), i32 4) #7
  %131 = load i8, i8* %68, align 4, !tbaa !2
  %tobool1.i.i958.4 = icmp eq i8 %131, 0
  br i1 %tobool1.i.i958.4, label %suggest.exit.i967.4, label %land.lhs.true2.i.i962.4

land.lhs.true2.i.i962.4:                          ; preds = %suggest.exit.i967.3
  %call.i.i960.4 = call i32 @strncmp(i8* nonnull %68, i8* %cur, i32 %call) #6
  %tobool3.i.i961.4 = icmp eq i32 %call.i.i960.4, 0
  br i1 %tobool3.i.i961.4, label %if.then.i.i964.4, label %suggest.exit.i967.4

if.then.i.i964.4:                                 ; preds = %land.lhs.true2.i.i962.4
  %puts.i.i963.4 = call i32 @puts(i8* nonnull %68) #7
  br label %suggest.exit.i967.4

suggest.exit.i967.4:                              ; preds = %if.then.i.i964.4, %land.lhs.true2.i.i962.4, %suggest.exit.i967.3
  %call.i957.5 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* nonnull %68, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0), i32 5) #7
  %132 = load i8, i8* %68, align 4, !tbaa !2
  %tobool1.i.i958.5 = icmp eq i8 %132, 0
  br i1 %tobool1.i.i958.5, label %suggest.exit.i967.5, label %land.lhs.true2.i.i962.5

land.lhs.true2.i.i962.5:                          ; preds = %suggest.exit.i967.4
  %call.i.i960.5 = call i32 @strncmp(i8* nonnull %68, i8* %cur, i32 %call) #6
  %tobool3.i.i961.5 = icmp eq i32 %call.i.i960.5, 0
  br i1 %tobool3.i.i961.5, label %if.then.i.i964.5, label %suggest.exit.i967.5

if.then.i.i964.5:                                 ; preds = %land.lhs.true2.i.i962.5
  %puts.i.i963.5 = call i32 @puts(i8* nonnull %68) #7
  br label %suggest.exit.i967.5

suggest.exit.i967.5:                              ; preds = %if.then.i.i964.5, %land.lhs.true2.i.i962.5, %suggest.exit.i967.4
  %call.i957.6 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* nonnull %68, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0), i32 6) #7
  %133 = load i8, i8* %68, align 4, !tbaa !2
  %tobool1.i.i958.6 = icmp eq i8 %133, 0
  br i1 %tobool1.i.i958.6, label %suggest.exit.i967.6, label %land.lhs.true2.i.i962.6

land.lhs.true2.i.i962.6:                          ; preds = %suggest.exit.i967.5
  %call.i.i960.6 = call i32 @strncmp(i8* nonnull %68, i8* %cur, i32 %call) #6
  %tobool3.i.i961.6 = icmp eq i32 %call.i.i960.6, 0
  br i1 %tobool3.i.i961.6, label %if.then.i.i964.6, label %suggest.exit.i967.6

if.then.i.i964.6:                                 ; preds = %land.lhs.true2.i.i962.6
  %puts.i.i963.6 = call i32 @puts(i8* nonnull %68) #7
  br label %suggest.exit.i967.6

suggest.exit.i967.6:                              ; preds = %if.then.i.i964.6, %land.lhs.true2.i.i962.6, %suggest.exit.i967.5
  %call.i957.7 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* nonnull %68, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0), i32 7) #7
  %134 = load i8, i8* %68, align 4, !tbaa !2
  %tobool1.i.i958.7 = icmp eq i8 %134, 0
  br i1 %tobool1.i.i958.7, label %suggest.exit.i967.7, label %land.lhs.true2.i.i962.7

land.lhs.true2.i.i962.7:                          ; preds = %suggest.exit.i967.6
  %call.i.i960.7 = call i32 @strncmp(i8* nonnull %68, i8* %cur, i32 %call) #6
  %tobool3.i.i961.7 = icmp eq i32 %call.i.i960.7, 0
  br i1 %tobool3.i.i961.7, label %if.then.i.i964.7, label %suggest.exit.i967.7

if.then.i.i964.7:                                 ; preds = %land.lhs.true2.i.i962.7
  %puts.i.i963.7 = call i32 @puts(i8* nonnull %68) #7
  br label %suggest.exit.i967.7

suggest.exit.i967.7:                              ; preds = %if.then.i.i964.7, %land.lhs.true2.i.i962.7, %suggest.exit.i967.6
  %call.i957.8 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* nonnull %68, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0), i32 8) #7
  %135 = load i8, i8* %68, align 4, !tbaa !2
  %tobool1.i.i958.8 = icmp eq i8 %135, 0
  br i1 %tobool1.i.i958.8, label %suggest.exit.i967.8, label %land.lhs.true2.i.i962.8

land.lhs.true2.i.i962.8:                          ; preds = %suggest.exit.i967.7
  %call.i.i960.8 = call i32 @strncmp(i8* nonnull %68, i8* %cur, i32 %call) #6
  %tobool3.i.i961.8 = icmp eq i32 %call.i.i960.8, 0
  br i1 %tobool3.i.i961.8, label %if.then.i.i964.8, label %suggest.exit.i967.8

if.then.i.i964.8:                                 ; preds = %land.lhs.true2.i.i962.8
  %puts.i.i963.8 = call i32 @puts(i8* nonnull %68) #7
  br label %suggest.exit.i967.8

suggest.exit.i967.8:                              ; preds = %if.then.i.i964.8, %land.lhs.true2.i.i962.8, %suggest.exit.i967.7
  %call.i957.9 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* nonnull %68, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0), i32 9) #7
  %136 = load i8, i8* %68, align 4, !tbaa !2
  %tobool1.i.i958.9 = icmp eq i8 %136, 0
  br i1 %tobool1.i.i958.9, label %suggest.exit.i967.9, label %land.lhs.true2.i.i962.9

land.lhs.true2.i.i962.9:                          ; preds = %suggest.exit.i967.8
  %call.i.i960.9 = call i32 @strncmp(i8* nonnull %68, i8* %cur, i32 %call) #6
  %tobool3.i.i961.9 = icmp eq i32 %call.i.i960.9, 0
  br i1 %tobool3.i.i961.9, label %if.then.i.i964.9, label %suggest.exit.i967.9

if.then.i.i964.9:                                 ; preds = %land.lhs.true2.i.i962.9
  %puts.i.i963.9 = call i32 @puts(i8* nonnull %68) #7
  br label %suggest.exit.i967.9

suggest.exit.i967.9:                              ; preds = %if.then.i.i964.9, %land.lhs.true2.i.i962.9, %suggest.exit.i967.8
  %call.i957.10 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* nonnull %68, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0), i32 10) #7
  %137 = load i8, i8* %68, align 4, !tbaa !2
  %tobool1.i.i958.10 = icmp eq i8 %137, 0
  br i1 %tobool1.i.i958.10, label %suggest.exit.i967.10, label %land.lhs.true2.i.i962.10

land.lhs.true2.i.i962.10:                         ; preds = %suggest.exit.i967.9
  %call.i.i960.10 = call i32 @strncmp(i8* nonnull %68, i8* %cur, i32 %call) #6
  %tobool3.i.i961.10 = icmp eq i32 %call.i.i960.10, 0
  br i1 %tobool3.i.i961.10, label %if.then.i.i964.10, label %suggest.exit.i967.10

if.then.i.i964.10:                                ; preds = %land.lhs.true2.i.i962.10
  %puts.i.i963.10 = call i32 @puts(i8* nonnull %68) #7
  br label %suggest.exit.i967.10

suggest.exit.i967.10:                             ; preds = %if.then.i.i964.10, %land.lhs.true2.i.i962.10, %suggest.exit.i967.9
  %call.i957.11 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* nonnull %68, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0), i32 11) #7
  %138 = load i8, i8* %68, align 4, !tbaa !2
  %tobool1.i.i958.11 = icmp eq i8 %138, 0
  br i1 %tobool1.i.i958.11, label %suggest.exit.i967.11, label %land.lhs.true2.i.i962.11

land.lhs.true2.i.i962.11:                         ; preds = %suggest.exit.i967.10
  %call.i.i960.11 = call i32 @strncmp(i8* nonnull %68, i8* %cur, i32 %call) #6
  %tobool3.i.i961.11 = icmp eq i32 %call.i.i960.11, 0
  br i1 %tobool3.i.i961.11, label %if.then.i.i964.11, label %suggest.exit.i967.11

if.then.i.i964.11:                                ; preds = %land.lhs.true2.i.i962.11
  %puts.i.i963.11 = call i32 @puts(i8* nonnull %68) #7
  br label %suggest.exit.i967.11

suggest.exit.i967.11:                             ; preds = %if.then.i.i964.11, %land.lhs.true2.i.i962.11, %suggest.exit.i967.10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %68) #7
  br label %cleanup

land.lhs.true2.i974.1:                            ; preds = %if.else311
  %call.i972.1 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i973.1 = icmp eq i32 %call.i972.1, 0
  br i1 %tobool3.i973.1, label %if.then.i976.1, label %land.lhs.true2.i974.2

if.then.i976.1:                                   ; preds = %land.lhs.true2.i974.1
  %puts.i975.1 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0)) #7
  br label %land.lhs.true2.i974.2

land.lhs.true2.i974.2:                            ; preds = %land.lhs.true2.i974.1, %if.then.i976.1
  %call.i972.2 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i973.2 = icmp eq i32 %call.i972.2, 0
  br i1 %tobool3.i973.2, label %if.then.i976.2, label %land.lhs.true2.i974.4

if.then.i976.2:                                   ; preds = %land.lhs.true2.i974.2
  %puts.i975.2 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0)) #7
  br label %land.lhs.true2.i974.4

land.lhs.true2.i974.4:                            ; preds = %if.then.i976.2, %land.lhs.true2.i974.2
  %call.i972.4 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i973.4 = icmp eq i32 %call.i972.4, 0
  br i1 %tobool3.i973.4, label %if.then.i976.4, label %land.lhs.true2.i974.5

if.then.i976.4:                                   ; preds = %land.lhs.true2.i974.4
  %puts.i975.4 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0)) #7
  br label %land.lhs.true2.i974.5

land.lhs.true2.i974.5:                            ; preds = %land.lhs.true2.i974.4, %if.then.i976.4
  %call.i972.5 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i973.5 = icmp eq i32 %call.i972.5, 0
  br i1 %tobool3.i973.5, label %if.then.i976.5, label %land.lhs.true2.i974.6

if.then.i976.5:                                   ; preds = %land.lhs.true2.i974.5
  %puts.i975.5 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0)) #7
  br label %land.lhs.true2.i974.6

land.lhs.true2.i974.6:                            ; preds = %land.lhs.true2.i974.5, %if.then.i976.5
  %call.i972.6 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i973.6 = icmp eq i32 %call.i972.6, 0
  br i1 %tobool3.i973.6, label %if.then.i976.6, label %land.lhs.true2.i974.7

if.then.i976.6:                                   ; preds = %land.lhs.true2.i974.6
  %puts.i975.6 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0)) #7
  br label %land.lhs.true2.i974.7

land.lhs.true2.i974.7:                            ; preds = %land.lhs.true2.i974.6, %if.then.i976.6
  %call.i972.7 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i973.7 = icmp eq i32 %call.i972.7, 0
  br i1 %tobool3.i973.7, label %if.then.i976.7, label %land.lhs.true2.i974.8

if.then.i976.7:                                   ; preds = %land.lhs.true2.i974.7
  %puts.i975.7 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0)) #7
  br label %land.lhs.true2.i974.8

land.lhs.true2.i974.8:                            ; preds = %land.lhs.true2.i974.7, %if.then.i976.7
  %call.i972.8 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i973.8 = icmp eq i32 %call.i972.8, 0
  br i1 %tobool3.i973.8, label %if.then.i976.8, label %land.lhs.true2.i974.9

if.then.i976.8:                                   ; preds = %land.lhs.true2.i974.8
  %puts.i975.8 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0)) #7
  br label %land.lhs.true2.i974.9

land.lhs.true2.i974.9:                            ; preds = %land.lhs.true2.i974.8, %if.then.i976.8
  %call.i972.9 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i973.9 = icmp eq i32 %call.i972.9, 0
  br i1 %tobool3.i973.9, label %if.then.i976.9, label %land.lhs.true2.i974.10

if.then.i976.9:                                   ; preds = %land.lhs.true2.i974.9
  %puts.i975.9 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0)) #7
  br label %land.lhs.true2.i974.10

land.lhs.true2.i974.10:                           ; preds = %land.lhs.true2.i974.9, %if.then.i976.9
  %call.i972.10 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i973.10 = icmp eq i32 %call.i972.10, 0
  br i1 %tobool3.i973.10, label %if.then.i976.10, label %land.lhs.true2.i974.11

if.then.i976.10:                                  ; preds = %land.lhs.true2.i974.10
  %puts.i975.10 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0)) #7
  br label %land.lhs.true2.i974.11

land.lhs.true2.i974.11:                           ; preds = %land.lhs.true2.i974.10, %if.then.i976.10
  %call.i972.11 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.52, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i973.11 = icmp eq i32 %call.i972.11, 0
  br i1 %tobool3.i973.11, label %if.then.i976.11, label %land.lhs.true2.i974.12

if.then.i976.11:                                  ; preds = %land.lhs.true2.i974.11
  %puts.i975.11 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.52, i32 0, i32 0)) #7
  br label %land.lhs.true2.i974.12

land.lhs.true2.i974.12:                           ; preds = %land.lhs.true2.i974.11, %if.then.i976.11
  %call.i972.12 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i973.12 = icmp eq i32 %call.i972.12, 0
  br i1 %tobool3.i973.12, label %if.then.i976.12, label %land.lhs.true2.i974.13

if.then.i976.12:                                  ; preds = %land.lhs.true2.i974.12
  %puts.i975.12 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0)) #7
  br label %land.lhs.true2.i974.13

land.lhs.true2.i974.13:                           ; preds = %land.lhs.true2.i974.12, %if.then.i976.12
  %call.i972.13 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.54, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i973.13 = icmp eq i32 %call.i972.13, 0
  br i1 %tobool3.i973.13, label %if.then.i976.13, label %land.lhs.true2.i974.14

if.then.i976.13:                                  ; preds = %land.lhs.true2.i974.13
  %puts.i975.13 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.54, i32 0, i32 0)) #7
  br label %land.lhs.true2.i974.14

land.lhs.true2.i974.14:                           ; preds = %land.lhs.true2.i974.13, %if.then.i976.13
  %call.i972.14 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i973.14 = icmp eq i32 %call.i972.14, 0
  br i1 %tobool3.i973.14, label %if.then.i976.14, label %land.lhs.true2.i974.15

if.then.i976.14:                                  ; preds = %land.lhs.true2.i974.14
  %puts.i975.14 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i32 0, i32 0)) #7
  br label %land.lhs.true2.i974.15

land.lhs.true2.i974.15:                           ; preds = %land.lhs.true2.i974.14, %if.then.i976.14
  %call.i972.15 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.56, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i973.15 = icmp eq i32 %call.i972.15, 0
  br i1 %tobool3.i973.15, label %if.then.i976.15, label %land.lhs.true2.i974.16

if.then.i976.15:                                  ; preds = %land.lhs.true2.i974.15
  %puts.i975.15 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.56, i32 0, i32 0)) #7
  br label %land.lhs.true2.i974.16

land.lhs.true2.i974.16:                           ; preds = %land.lhs.true2.i974.15, %if.then.i976.15
  %call.i972.16 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i973.16 = icmp eq i32 %call.i972.16, 0
  br i1 %tobool3.i973.16, label %if.then.i976.16, label %land.lhs.true2.i974.17

if.then.i976.16:                                  ; preds = %land.lhs.true2.i974.16
  %puts.i975.16 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i32 0, i32 0)) #7
  br label %land.lhs.true2.i974.17

land.lhs.true2.i974.17:                           ; preds = %land.lhs.true2.i974.16, %if.then.i976.16
  %call.i972.17 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i973.17 = icmp eq i32 %call.i972.17, 0
  br i1 %tobool3.i973.17, label %if.then.i976.17, label %land.lhs.true2.i974.18

if.then.i976.17:                                  ; preds = %land.lhs.true2.i974.17
  %puts.i975.17 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i32 0, i32 0)) #7
  br label %land.lhs.true2.i974.18

land.lhs.true2.i974.18:                           ; preds = %land.lhs.true2.i974.17, %if.then.i976.17
  %call.i972.18 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.59, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i973.18 = icmp eq i32 %call.i972.18, 0
  br i1 %tobool3.i973.18, label %if.then.i976.18, label %cleanup

if.then.i976.18:                                  ; preds = %land.lhs.true2.i974.18
  %puts.i975.18 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.59, i32 0, i32 0)) #7
  br label %cleanup

land.lhs.true2.i.i985.1:                          ; preds = %suggest.exit.i990
  %call.i.i983.1 = call i32 @strncmp(i8* nonnull %71, i8* %cur, i32 %call) #6
  %tobool3.i.i984.1 = icmp eq i32 %call.i.i983.1, 0
  br i1 %tobool3.i.i984.1, label %if.then.i.i987.1, label %suggest.exit.i990.1

if.then.i.i987.1:                                 ; preds = %land.lhs.true2.i.i985.1
  %puts.i.i986.1 = call i32 @puts(i8* nonnull %71) #7
  br label %suggest.exit.i990.1

suggest.exit.i990.1:                              ; preds = %if.then.i.i987.1, %land.lhs.true2.i.i985.1, %suggest.exit.i990
  %call.i980.2 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* nonnull %71, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0), i32 2) #7
  %139 = load i8, i8* %71, align 4, !tbaa !2
  %tobool1.i.i981.2 = icmp eq i8 %139, 0
  br i1 %tobool1.i.i981.2, label %suggest.exit.i990.2, label %land.lhs.true2.i.i985.2

land.lhs.true2.i.i985.2:                          ; preds = %suggest.exit.i990.1
  %call.i.i983.2 = call i32 @strncmp(i8* nonnull %71, i8* %cur, i32 %call) #6
  %tobool3.i.i984.2 = icmp eq i32 %call.i.i983.2, 0
  br i1 %tobool3.i.i984.2, label %if.then.i.i987.2, label %suggest.exit.i990.2

if.then.i.i987.2:                                 ; preds = %land.lhs.true2.i.i985.2
  %puts.i.i986.2 = call i32 @puts(i8* nonnull %71) #7
  br label %suggest.exit.i990.2

suggest.exit.i990.2:                              ; preds = %if.then.i.i987.2, %land.lhs.true2.i.i985.2, %suggest.exit.i990.1
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %71) #7
  br label %cleanup

land.lhs.true2.i997.1:                            ; preds = %if.then.i999, %land.lhs.true2.i997
  %call.i995.1 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i996.1 = icmp eq i32 %call.i995.1, 0
  br i1 %tobool3.i996.1, label %if.then.i999.1, label %land.lhs.true2.i997.2

if.then.i999.1:                                   ; preds = %land.lhs.true2.i997.1
  %puts.i998.1 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i32 0, i32 0)) #7
  br label %land.lhs.true2.i997.2

land.lhs.true2.i997.2:                            ; preds = %land.lhs.true2.i997.1, %if.then.i999.1
  %call.i995.2 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.123, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i996.2 = icmp eq i32 %call.i995.2, 0
  br i1 %tobool3.i996.2, label %if.then.i999.2, label %land.lhs.true2.i997.3

if.then.i999.2:                                   ; preds = %land.lhs.true2.i997.2
  %puts.i998.2 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.123, i32 0, i32 0)) #7
  br label %land.lhs.true2.i997.3

land.lhs.true2.i997.3:                            ; preds = %land.lhs.true2.i997.2, %if.then.i999.2
  %call.i995.3 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.124, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i996.3 = icmp eq i32 %call.i995.3, 0
  br i1 %tobool3.i996.3, label %if.then.i999.3, label %land.lhs.true2.i997.4

if.then.i999.3:                                   ; preds = %land.lhs.true2.i997.3
  %puts.i998.3 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.124, i32 0, i32 0)) #7
  br label %land.lhs.true2.i997.4

land.lhs.true2.i997.4:                            ; preds = %land.lhs.true2.i997.3, %if.then.i999.3
  %call.i995.4 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.125, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i996.4 = icmp eq i32 %call.i995.4, 0
  br i1 %tobool3.i996.4, label %if.then.i999.4, label %land.lhs.true2.i997.5

if.then.i999.4:                                   ; preds = %land.lhs.true2.i997.4
  %puts.i998.4 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.125, i32 0, i32 0)) #7
  br label %land.lhs.true2.i997.5

land.lhs.true2.i997.5:                            ; preds = %land.lhs.true2.i997.4, %if.then.i999.4
  %call.i995.5 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.126, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i996.5 = icmp eq i32 %call.i995.5, 0
  br i1 %tobool3.i996.5, label %if.then.i999.5, label %land.lhs.true2.i997.6

if.then.i999.5:                                   ; preds = %land.lhs.true2.i997.5
  %puts.i998.5 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.126, i32 0, i32 0)) #7
  br label %land.lhs.true2.i997.6

land.lhs.true2.i997.6:                            ; preds = %land.lhs.true2.i997.5, %if.then.i999.5
  %call.i995.6 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.127, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i996.6 = icmp eq i32 %call.i995.6, 0
  br i1 %tobool3.i996.6, label %if.then.i999.6, label %land.lhs.true2.i997.7

if.then.i999.6:                                   ; preds = %land.lhs.true2.i997.6
  %puts.i998.6 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.127, i32 0, i32 0)) #7
  br label %land.lhs.true2.i997.7

land.lhs.true2.i997.7:                            ; preds = %land.lhs.true2.i997.6, %if.then.i999.6
  %call.i995.7 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.128, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i996.7 = icmp eq i32 %call.i995.7, 0
  br i1 %tobool3.i996.7, label %if.then.i999.7, label %cleanup

if.then.i999.7:                                   ; preds = %land.lhs.true2.i997.7
  %puts.i998.7 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.128, i32 0, i32 0)) #7
  br label %cleanup

land.lhs.true2.i1006.1:                           ; preds = %if.then.i1008, %land.lhs.true2.i1006
  %call.i1004.1 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.130, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i1005.1 = icmp eq i32 %call.i1004.1, 0
  br i1 %tobool3.i1005.1, label %if.then.i1008.1, label %land.lhs.true2.i1006.2

if.then.i1008.1:                                  ; preds = %land.lhs.true2.i1006.1
  %puts.i1007.1 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.130, i32 0, i32 0)) #7
  br label %land.lhs.true2.i1006.2

land.lhs.true2.i1006.2:                           ; preds = %land.lhs.true2.i1006.1, %if.then.i1008.1
  %call.i1004.2 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.131, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i1005.2 = icmp eq i32 %call.i1004.2, 0
  br i1 %tobool3.i1005.2, label %if.then.i1008.2, label %land.lhs.true2.i1006.3

if.then.i1008.2:                                  ; preds = %land.lhs.true2.i1006.2
  %puts.i1007.2 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.131, i32 0, i32 0)) #7
  br label %land.lhs.true2.i1006.3

land.lhs.true2.i1006.3:                           ; preds = %land.lhs.true2.i1006.2, %if.then.i1008.2
  %call.i1004.3 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.132, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i1005.3 = icmp eq i32 %call.i1004.3, 0
  br i1 %tobool3.i1005.3, label %if.then.i1008.3, label %land.lhs.true2.i1006.4

if.then.i1008.3:                                  ; preds = %land.lhs.true2.i1006.3
  %puts.i1007.3 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.132, i32 0, i32 0)) #7
  br label %land.lhs.true2.i1006.4

land.lhs.true2.i1006.4:                           ; preds = %land.lhs.true2.i1006.3, %if.then.i1008.3
  %call.i1004.4 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.133, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i1005.4 = icmp eq i32 %call.i1004.4, 0
  br i1 %tobool3.i1005.4, label %if.then.i1008.4, label %land.lhs.true2.i1006.5

if.then.i1008.4:                                  ; preds = %land.lhs.true2.i1006.4
  %puts.i1007.4 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.133, i32 0, i32 0)) #7
  br label %land.lhs.true2.i1006.5

land.lhs.true2.i1006.5:                           ; preds = %land.lhs.true2.i1006.4, %if.then.i1008.4
  %call.i1004.5 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i1005.5 = icmp eq i32 %call.i1004.5, 0
  br i1 %tobool3.i1005.5, label %if.then.i1008.5, label %cleanup

if.then.i1008.5:                                  ; preds = %land.lhs.true2.i1006.5
  %puts.i1007.5 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0)) #7
  br label %cleanup

land.lhs.true2.i.i1017.1:                         ; preds = %suggest.exit.i1022
  %call.i.i1015.1 = call i32 @strncmp(i8* nonnull %74, i8* %cur, i32 %call) #6
  %tobool3.i.i1016.1 = icmp eq i32 %call.i.i1015.1, 0
  br i1 %tobool3.i.i1016.1, label %if.then.i.i1019.1, label %suggest.exit.i1022.1

if.then.i.i1019.1:                                ; preds = %land.lhs.true2.i.i1017.1
  %puts.i.i1018.1 = call i32 @puts(i8* nonnull %74) #7
  br label %suggest.exit.i1022.1

suggest.exit.i1022.1:                             ; preds = %if.then.i.i1019.1, %land.lhs.true2.i.i1017.1, %suggest.exit.i1022
  %call.i1012.2 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* nonnull %74, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0), i32 2) #7
  %140 = load i8, i8* %74, align 4, !tbaa !2
  %tobool1.i.i1013.2 = icmp eq i8 %140, 0
  br i1 %tobool1.i.i1013.2, label %suggest.exit.i1022.2, label %land.lhs.true2.i.i1017.2

land.lhs.true2.i.i1017.2:                         ; preds = %suggest.exit.i1022.1
  %call.i.i1015.2 = call i32 @strncmp(i8* nonnull %74, i8* %cur, i32 %call) #6
  %tobool3.i.i1016.2 = icmp eq i32 %call.i.i1015.2, 0
  br i1 %tobool3.i.i1016.2, label %if.then.i.i1019.2, label %suggest.exit.i1022.2

if.then.i.i1019.2:                                ; preds = %land.lhs.true2.i.i1017.2
  %puts.i.i1018.2 = call i32 @puts(i8* nonnull %74) #7
  br label %suggest.exit.i1022.2

suggest.exit.i1022.2:                             ; preds = %if.then.i.i1019.2, %land.lhs.true2.i.i1017.2, %suggest.exit.i1022.1
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %74) #7
  br label %cleanup

land.lhs.true2.i1092.1:                           ; preds = %if.then.i1094, %land.lhs.true2.i1092
  %call.i1090.1 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.208, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i1091.1 = icmp eq i32 %call.i1090.1, 0
  br i1 %tobool3.i1091.1, label %if.then.i1094.1, label %land.lhs.true2.i1092.2

if.then.i1094.1:                                  ; preds = %land.lhs.true2.i1092.1
  %puts.i1093.1 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.208, i32 0, i32 0)) #7
  br label %land.lhs.true2.i1092.2

land.lhs.true2.i1092.2:                           ; preds = %land.lhs.true2.i1092.1, %if.then.i1094.1
  %call.i1090.2 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.209, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i1091.2 = icmp eq i32 %call.i1090.2, 0
  br i1 %tobool3.i1091.2, label %if.then.i1094.2, label %land.lhs.true2.i1092.3

if.then.i1094.2:                                  ; preds = %land.lhs.true2.i1092.2
  %puts.i1093.2 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.209, i32 0, i32 0)) #7
  br label %land.lhs.true2.i1092.3

land.lhs.true2.i1092.3:                           ; preds = %land.lhs.true2.i1092.2, %if.then.i1094.2
  %call.i1090.3 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.210, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i1091.3 = icmp eq i32 %call.i1090.3, 0
  br i1 %tobool3.i1091.3, label %if.then.i1094.3, label %land.lhs.true2.i1092.4

if.then.i1094.3:                                  ; preds = %land.lhs.true2.i1092.3
  %puts.i1093.3 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.210, i32 0, i32 0)) #7
  br label %land.lhs.true2.i1092.4

land.lhs.true2.i1092.4:                           ; preds = %land.lhs.true2.i1092.3, %if.then.i1094.3
  %call.i1090.4 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.211, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i1091.4 = icmp eq i32 %call.i1090.4, 0
  br i1 %tobool3.i1091.4, label %if.then.i1094.4, label %cleanup

if.then.i1094.4:                                  ; preds = %land.lhs.true2.i1092.4
  %puts.i1093.4 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.211, i32 0, i32 0)) #7
  br label %cleanup

land.lhs.true2.i1074.1:                           ; preds = %if.then.i1076, %land.lhs.true2.i1074
  %call.i1072.1 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.213, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i1073.1 = icmp eq i32 %call.i1072.1, 0
  br i1 %tobool3.i1073.1, label %if.then.i1076.1, label %land.lhs.true2.i1074.2

if.then.i1076.1:                                  ; preds = %land.lhs.true2.i1074.1
  %puts.i1075.1 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.213, i32 0, i32 0)) #7
  br label %land.lhs.true2.i1074.2

land.lhs.true2.i1074.2:                           ; preds = %land.lhs.true2.i1074.1, %if.then.i1076.1
  %call.i1072.2 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.214, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i1073.2 = icmp eq i32 %call.i1072.2, 0
  br i1 %tobool3.i1073.2, label %if.then.i1076.2, label %land.lhs.true2.i1074.3

if.then.i1076.2:                                  ; preds = %land.lhs.true2.i1074.2
  %puts.i1075.2 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.214, i32 0, i32 0)) #7
  br label %land.lhs.true2.i1074.3

land.lhs.true2.i1074.3:                           ; preds = %land.lhs.true2.i1074.2, %if.then.i1076.2
  %call.i1072.3 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.215, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i1073.3 = icmp eq i32 %call.i1072.3, 0
  br i1 %tobool3.i1073.3, label %if.then.i1076.3, label %land.lhs.true2.i1074.4

if.then.i1076.3:                                  ; preds = %land.lhs.true2.i1074.3
  %puts.i1075.3 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.215, i32 0, i32 0)) #7
  br label %land.lhs.true2.i1074.4

land.lhs.true2.i1074.4:                           ; preds = %land.lhs.true2.i1074.3, %if.then.i1076.3
  %call.i1072.4 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.216, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i1073.4 = icmp eq i32 %call.i1072.4, 0
  br i1 %tobool3.i1073.4, label %if.then.i1076.4, label %land.lhs.true2.i1074.5

if.then.i1076.4:                                  ; preds = %land.lhs.true2.i1074.4
  %puts.i1075.4 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.216, i32 0, i32 0)) #7
  br label %land.lhs.true2.i1074.5

land.lhs.true2.i1074.5:                           ; preds = %land.lhs.true2.i1074.4, %if.then.i1076.4
  %call.i1072.5 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.217, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i1073.5 = icmp eq i32 %call.i1072.5, 0
  br i1 %tobool3.i1073.5, label %if.then.i1076.5, label %land.lhs.true2.i1074.6

if.then.i1076.5:                                  ; preds = %land.lhs.true2.i1074.5
  %puts.i1075.5 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.217, i32 0, i32 0)) #7
  br label %land.lhs.true2.i1074.6

land.lhs.true2.i1074.6:                           ; preds = %land.lhs.true2.i1074.5, %if.then.i1076.5
  %call.i1072.6 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.218, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i1073.6 = icmp eq i32 %call.i1072.6, 0
  br i1 %tobool3.i1073.6, label %if.then.i1076.6, label %land.lhs.true2.i1074.7

if.then.i1076.6:                                  ; preds = %land.lhs.true2.i1074.6
  %puts.i1075.6 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.218, i32 0, i32 0)) #7
  br label %land.lhs.true2.i1074.7

land.lhs.true2.i1074.7:                           ; preds = %land.lhs.true2.i1074.6, %if.then.i1076.6
  %call.i1072.7 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.219, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i1073.7 = icmp eq i32 %call.i1072.7, 0
  br i1 %tobool3.i1073.7, label %if.then.i1076.7, label %land.lhs.true2.i1074.8

if.then.i1076.7:                                  ; preds = %land.lhs.true2.i1074.7
  %puts.i1075.7 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.219, i32 0, i32 0)) #7
  br label %land.lhs.true2.i1074.8

land.lhs.true2.i1074.8:                           ; preds = %land.lhs.true2.i1074.7, %if.then.i1076.7
  %call.i1072.8 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.220, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i1073.8 = icmp eq i32 %call.i1072.8, 0
  br i1 %tobool3.i1073.8, label %if.then.i1076.8, label %land.lhs.true2.i1074.9

if.then.i1076.8:                                  ; preds = %land.lhs.true2.i1074.8
  %puts.i1075.8 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.220, i32 0, i32 0)) #7
  br label %land.lhs.true2.i1074.9

land.lhs.true2.i1074.9:                           ; preds = %land.lhs.true2.i1074.8, %if.then.i1076.8
  %call.i1072.9 = tail call i32 @strncmp(i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.221, i32 0, i32 0), i8* %cur, i32 %call) #6
  %tobool3.i1073.9 = icmp eq i32 %call.i1072.9, 0
  br i1 %tobool3.i1073.9, label %if.then.i1076.9, label %land.lhs.true.i1080.preheader

land.lhs.true.i1080.preheader:                    ; preds = %if.then.i1076.9, %land.lhs.true2.i1074.9
  br label %land.lhs.true.i1080

if.then.i1076.9:                                  ; preds = %land.lhs.true2.i1074.9
  %puts.i1075.9 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.221, i32 0, i32 0)) #7
  br label %land.lhs.true.i1080.preheader

for.cond.i1043.1:                                 ; preds = %for.cond.i1043
  %call.i1045.2 = tail call i32 @strcmp(i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.214, i32 0, i32 0), i8* nonnull %prev) #6
  %tobool2.i1046.2 = icmp eq i32 %call.i1045.2, 0
  br i1 %tobool2.i1046.2, label %cleanup, label %for.cond.i1043.2

for.cond.i1043.2:                                 ; preds = %for.cond.i1043.1
  %call.i1045.3 = tail call i32 @strcmp(i8* nonnull dereferenceable(15) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.215, i32 0, i32 0), i8* nonnull %prev) #6
  %tobool2.i1046.3 = icmp eq i32 %call.i1045.3, 0
  br i1 %tobool2.i1046.3, label %cleanup, label %for.cond.i1043.3

for.cond.i1043.3:                                 ; preds = %for.cond.i1043.2
  %call.i1045.4 = tail call i32 @strcmp(i8* nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.216, i32 0, i32 0), i8* nonnull %prev) #6
  %tobool2.i1046.4 = icmp eq i32 %call.i1045.4, 0
  br i1 %tobool2.i1046.4, label %cleanup, label %for.cond.i1043.4

for.cond.i1043.4:                                 ; preds = %for.cond.i1043.3
  %call.i1045.5 = tail call i32 @strcmp(i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.217, i32 0, i32 0), i8* nonnull %prev) #6
  %tobool2.i1046.5 = icmp eq i32 %call.i1045.5, 0
  br i1 %tobool2.i1046.5, label %cleanup, label %for.cond.i1043.5

for.cond.i1043.5:                                 ; preds = %for.cond.i1043.4
  %call.i1045.6 = tail call i32 @strcmp(i8* nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.218, i32 0, i32 0), i8* nonnull %prev) #6
  %tobool2.i1046.6 = icmp eq i32 %call.i1045.6, 0
  br i1 %tobool2.i1046.6, label %cleanup, label %for.cond.i1043.6

for.cond.i1043.6:                                 ; preds = %for.cond.i1043.5
  %call.i1045.7 = tail call i32 @strcmp(i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.219, i32 0, i32 0), i8* nonnull %prev) #6
  %tobool2.i1046.7 = icmp eq i32 %call.i1045.7, 0
  br i1 %tobool2.i1046.7, label %cleanup, label %for.cond.i1043.7

for.cond.i1043.7:                                 ; preds = %for.cond.i1043.6
  %call.i1045.8 = tail call i32 @strcmp(i8* nonnull dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.220, i32 0, i32 0), i8* nonnull %prev) #6
  %tobool2.i1046.8 = icmp eq i32 %call.i1045.8, 0
  br i1 %tobool2.i1046.8, label %cleanup, label %for.cond.i1043.8

for.cond.i1043.8:                                 ; preds = %for.cond.i1043.7
  %call.i1045.9 = tail call i32 @strcmp(i8* nonnull dereferenceable(13) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.221, i32 0, i32 0), i8* nonnull %prev) #6
  %tobool2.i1046.9 = icmp eq i32 %call.i1045.9, 0
  br i1 %tobool2.i1046.9, label %cleanup, label %lor.lhs.false366

for.cond.i1032.1:                                 ; preds = %for.cond.i1032
  %call.i1034.2 = tail call i32 @strcmp(i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.209, i32 0, i32 0), i8* nonnull %prev) #6
  %tobool2.i1035.2 = icmp eq i32 %call.i1034.2, 0
  br i1 %tobool2.i1035.2, label %cleanup, label %for.cond.i1032.2

for.cond.i1032.2:                                 ; preds = %for.cond.i1032.1
  %call.i1034.3 = tail call i32 @strcmp(i8* nonnull dereferenceable(11) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.210, i32 0, i32 0), i8* nonnull %prev) #6
  %tobool2.i1035.3 = icmp eq i32 %call.i1034.3, 0
  br i1 %tobool2.i1035.3, label %cleanup, label %for.cond.i1032.3

for.cond.i1032.3:                                 ; preds = %for.cond.i1032.2
  %call.i1034.4 = tail call i32 @strcmp(i8* nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.211, i32 0, i32 0), i8* nonnull %prev) #6
  %tobool2.i1035.4 = icmp eq i32 %call.i1034.4, 0
  br i1 %tobool2.i1035.4, label %cleanup, label %for.body.i1048.preheader
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nofree nounwind readonly
declare dso_local i32 @strlen(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare dso_local i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nounwind readonly
declare dso_local i32 @strncmp(i8* nocapture, i8* nocapture, i32) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local i32 @snprintf(i8* noalias nocapture, i32, i8* nocapture readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind readonly
declare dso_local i32 @strncasecmp(i8* nocapture, i8* nocapture, i32) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local i32 @putc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #5

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #3 = { nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #4 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 (http://10.18.30.194:8888/compiler/compiler10.git 713ef477716300a9b04a1522e3fce445623444dc)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !8, i64 4}
!6 = !{!"", !7, i64 0, !8, i64 4}
!7 = !{!"any pointer", !3, i64 0}
!8 = !{!"int", !3, i64 0}
!9 = !{!6, !7, i64 0}
!10 = !{!7, !7, i64 0}
!11 = !{!12, !7, i64 0}
!12 = !{!"", !7, i64 0, !8, i64 4, !3, i64 8, !3, i64 24, !8, i64 40, !8, i64 44}
