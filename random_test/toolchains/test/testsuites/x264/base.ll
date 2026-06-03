; ModuleID = 'common/base.c'
source_filename = "common/base.c"
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.x264_csp_tab_t = type { i32, [3 x i32], [3 x i32] }
%struct.x264_cpu_name_t = type { i8*, i32 }
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
%struct.strdup_buffer = type { i32, i32, [0 x i8*] }
%struct.x264_picture_t = type { i32, i32, i32, i32, i64, i64, %struct.x264_param_t*, %struct.x264_image_t, %struct.x264_image_properties_t, %struct.x264_hrd_t, %struct.x264_sei_t, i8* }
%struct.x264_image_t = type { i32, i32, [4 x i32], [4 x i8*] }
%struct.x264_image_properties_t = type { float*, void (i8*)*, i8*, void (i8*)*, double, double, [3 x double], double }
%struct.x264_hrd_t = type { double, double, double, double }
%struct.x264_sei_t = type { i32, %struct.x264_sei_payload_t*, void (i8*)* }
%struct.x264_sei_payload_t = type { i32, i32, i8* }

@.str = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"warning\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"x264 [%s]: \00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"invalid size of malloc: %lld\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"malloc of size %lld failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"x264_param_strdup failed\0A\00", align 1
@x264_picture_alloc.csp_tab = internal unnamed_addr constant [17 x %struct.x264_csp_tab_t] [%struct.x264_csp_tab_t zeroinitializer, %struct.x264_csp_tab_t { i32 1, [3 x i32] [i32 256, i32 0, i32 0], [3 x i32] [i32 256, i32 0, i32 0] }, %struct.x264_csp_tab_t { i32 3, [3 x i32] [i32 256, i32 128, i32 128], [3 x i32] [i32 256, i32 128, i32 128] }, %struct.x264_csp_tab_t { i32 3, [3 x i32] [i32 256, i32 128, i32 128], [3 x i32] [i32 256, i32 128, i32 128] }, %struct.x264_csp_tab_t { i32 2, [3 x i32] [i32 256, i32 256, i32 0], [3 x i32] [i32 256, i32 128, i32 0] }, %struct.x264_csp_tab_t { i32 2, [3 x i32] [i32 256, i32 256, i32 0], [3 x i32] [i32 256, i32 128, i32 0] }, %struct.x264_csp_tab_t { i32 3, [3 x i32] [i32 256, i32 128, i32 128], [3 x i32] [i32 256, i32 256, i32 256] }, %struct.x264_csp_tab_t { i32 3, [3 x i32] [i32 256, i32 128, i32 128], [3 x i32] [i32 256, i32 256, i32 256] }, %struct.x264_csp_tab_t { i32 2, [3 x i32] [i32 256, i32 256, i32 0], [3 x i32] [i32 256, i32 256, i32 0] }, %struct.x264_csp_tab_t { i32 1, [3 x i32] [i32 512, i32 0, i32 0], [3 x i32] [i32 256, i32 0, i32 0] }, %struct.x264_csp_tab_t { i32 1, [3 x i32] [i32 512, i32 0, i32 0], [3 x i32] [i32 256, i32 0, i32 0] }, %struct.x264_csp_tab_t zeroinitializer, %struct.x264_csp_tab_t { i32 3, [3 x i32] [i32 256, i32 256, i32 256], [3 x i32] [i32 256, i32 256, i32 256] }, %struct.x264_csp_tab_t { i32 3, [3 x i32] [i32 256, i32 256, i32 256], [3 x i32] [i32 256, i32 256, i32 256] }, %struct.x264_csp_tab_t { i32 1, [3 x i32] [i32 768, i32 0, i32 0], [3 x i32] [i32 256, i32 0, i32 0] }, %struct.x264_csp_tab_t { i32 1, [3 x i32] [i32 1024, i32 0, i32 0], [3 x i32] [i32 256, i32 0, i32 0] }, %struct.x264_csp_tab_t { i32 1, [3 x i32] [i32 768, i32 0, i32 0], [3 x i32] [i32 256, i32 0, i32 0] }], align 4
@.str.10 = private unnamed_addr constant [15 x i8] c"x264_2pass.log\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"invalid profile: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"%s profile doesn't support lossless\0A\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"%s profile doesn't support 4:4:4\0A\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"%s profile doesn't support 4:2:2\0A\00", align 1
@.str.15 = private unnamed_addr constant [46 x i8] c"%s profile doesn't support a bit depth of %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"%s profile doesn't support 4:0:0\0A\00", align 1
@.str.17 = private unnamed_addr constant [46 x i8] c"baseline profile doesn't support interlacing\0A\00", align 1
@.str.18 = private unnamed_addr constant [51 x i8] c"baseline profile doesn't support fake interlacing\0A\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"asm\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c",\00", align 1
@x264_cpu_names = external dso_local local_unnamed_addr constant [0 x %struct.x264_cpu_name_t], align 4
@.str.25 = private unnamed_addr constant [8 x i8] c"threads\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"lookahead-threads\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"sliced-threads\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"sync-lookahead\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"deterministic\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"n-deterministic\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"cpu-independent\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"level-idc\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"1b\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"bluray-compat\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"avcintra-class\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"avcintra-flavor\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"sar\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"%d:%d\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"%d/%d\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"overscan\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"videoformat\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"fullrange\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"colorprim\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"transfer\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"colormatrix\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"chromaloc\00", align 1
@.str.48 = private unnamed_addr constant [18 x i8] c"mastering-display\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"undef\00", align 1
@.str.50 = private unnamed_addr constant [46 x i8] c"G(%d,%d)B(%d,%d)R(%d,%d)WP(%d,%d)L(%lld,%lld)\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"cll\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1
@.str.53 = private unnamed_addr constant [21 x i8] c"alternative-transfer\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"fps\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"%u/%u\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"frameref\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"dpb-size\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"keyint\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"infinite\00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"min-keyint\00", align 1
@.str.62 = private unnamed_addr constant [11 x i8] c"keyint-min\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"scenecut\00", align 1
@.str.64 = private unnamed_addr constant [14 x i8] c"intra-refresh\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"bframes\00", align 1
@.str.66 = private unnamed_addr constant [8 x i8] c"b-adapt\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"b-bias\00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"b-pyramid\00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c"open-gop\00", align 1
@.str.70 = private unnamed_addr constant [3 x i8] c"nf\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"deblock\00", align 1
@.str.73 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.74 = private unnamed_addr constant [15 x i8] c"slice-max-size\00", align 1
@.str.75 = private unnamed_addr constant [14 x i8] c"slice-max-mbs\00", align 1
@.str.76 = private unnamed_addr constant [14 x i8] c"slice-min-mbs\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"slices\00", align 1
@.str.78 = private unnamed_addr constant [11 x i8] c"slices-max\00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"cabac\00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c"cabac-idc\00", align 1
@.str.81 = private unnamed_addr constant [11 x i8] c"interlaced\00", align 1
@.str.82 = private unnamed_addr constant [4 x i8] c"tff\00", align 1
@.str.83 = private unnamed_addr constant [4 x i8] c"bff\00", align 1
@.str.84 = private unnamed_addr constant [18 x i8] c"constrained-intra\00", align 1
@.str.85 = private unnamed_addr constant [4 x i8] c"cqm\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c"flat\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"jvt\00", align 1
@.str.88 = private unnamed_addr constant [8 x i8] c"cqmfile\00", align 1
@.str.89 = private unnamed_addr constant [5 x i8] c"cqm4\00", align 1
@.str.90 = private unnamed_addr constant [5 x i8] c"cqm8\00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c"cqm4i\00", align 1
@.str.92 = private unnamed_addr constant [6 x i8] c"cqm4p\00", align 1
@.str.93 = private unnamed_addr constant [7 x i8] c"cqm4iy\00", align 1
@.str.94 = private unnamed_addr constant [7 x i8] c"cqm4ic\00", align 1
@.str.95 = private unnamed_addr constant [7 x i8] c"cqm4py\00", align 1
@.str.96 = private unnamed_addr constant [7 x i8] c"cqm4pc\00", align 1
@.str.97 = private unnamed_addr constant [6 x i8] c"cqm8i\00", align 1
@.str.98 = private unnamed_addr constant [6 x i8] c"cqm8p\00", align 1
@.str.99 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.100 = private unnamed_addr constant [9 x i8] c"dump-yuv\00", align 1
@.str.101 = private unnamed_addr constant [8 x i8] c"analyse\00", align 1
@.str.102 = private unnamed_addr constant [11 x i8] c"partitions\00", align 1
@.str.103 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.104 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.105 = private unnamed_addr constant [5 x i8] c"i4x4\00", align 1
@.str.106 = private unnamed_addr constant [5 x i8] c"i8x8\00", align 1
@.str.107 = private unnamed_addr constant [5 x i8] c"p8x8\00", align 1
@.str.108 = private unnamed_addr constant [5 x i8] c"p4x4\00", align 1
@.str.109 = private unnamed_addr constant [5 x i8] c"b8x8\00", align 1
@.str.110 = private unnamed_addr constant [7 x i8] c"8x8dct\00", align 1
@.str.111 = private unnamed_addr constant [8 x i8] c"weightb\00", align 1
@.str.112 = private unnamed_addr constant [9 x i8] c"weight-b\00", align 1
@.str.113 = private unnamed_addr constant [8 x i8] c"weightp\00", align 1
@.str.114 = private unnamed_addr constant [7 x i8] c"direct\00", align 1
@.str.115 = private unnamed_addr constant [12 x i8] c"direct-pred\00", align 1
@.str.116 = private unnamed_addr constant [17 x i8] c"chroma-qp-offset\00", align 1
@.str.117 = private unnamed_addr constant [3 x i8] c"me\00", align 1
@x264_motion_est_names = internal unnamed_addr constant [6 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.331, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.332, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.333, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.334, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.335, i32 0, i32 0), i8* null], align 4
@.str.118 = private unnamed_addr constant [8 x i8] c"merange\00", align 1
@.str.119 = private unnamed_addr constant [9 x i8] c"me-range\00", align 1
@.str.120 = private unnamed_addr constant [8 x i8] c"mvrange\00", align 1
@.str.121 = private unnamed_addr constant [9 x i8] c"mv-range\00", align 1
@.str.122 = private unnamed_addr constant [15 x i8] c"mvrange-thread\00", align 1
@.str.123 = private unnamed_addr constant [16 x i8] c"mv-range-thread\00", align 1
@.str.124 = private unnamed_addr constant [6 x i8] c"subme\00", align 1
@.str.125 = private unnamed_addr constant [5 x i8] c"subq\00", align 1
@.str.126 = private unnamed_addr constant [7 x i8] c"psy-rd\00", align 1
@.str.127 = private unnamed_addr constant [6 x i8] c"%f:%f\00", align 1
@.str.128 = private unnamed_addr constant [6 x i8] c"%f,%f\00", align 1
@.str.129 = private unnamed_addr constant [6 x i8] c"%f|%f\00", align 1
@.str.130 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.131 = private unnamed_addr constant [4 x i8] c"psy\00", align 1
@.str.132 = private unnamed_addr constant [10 x i8] c"chroma-me\00", align 1
@.str.133 = private unnamed_addr constant [11 x i8] c"mixed-refs\00", align 1
@.str.134 = private unnamed_addr constant [8 x i8] c"trellis\00", align 1
@.str.135 = private unnamed_addr constant [11 x i8] c"fast-pskip\00", align 1
@.str.136 = private unnamed_addr constant [13 x i8] c"dct-decimate\00", align 1
@.str.137 = private unnamed_addr constant [15 x i8] c"deadzone-inter\00", align 1
@.str.138 = private unnamed_addr constant [15 x i8] c"deadzone-intra\00", align 1
@.str.139 = private unnamed_addr constant [3 x i8] c"nr\00", align 1
@.str.140 = private unnamed_addr constant [8 x i8] c"bitrate\00", align 1
@.str.141 = private unnamed_addr constant [3 x i8] c"qp\00", align 1
@.str.142 = private unnamed_addr constant [12 x i8] c"qp_constant\00", align 1
@.str.143 = private unnamed_addr constant [4 x i8] c"crf\00", align 1
@.str.144 = private unnamed_addr constant [8 x i8] c"crf-max\00", align 1
@.str.145 = private unnamed_addr constant [13 x i8] c"rc-lookahead\00", align 1
@.str.146 = private unnamed_addr constant [6 x i8] c"qpmin\00", align 1
@.str.147 = private unnamed_addr constant [7 x i8] c"qp-min\00", align 1
@.str.148 = private unnamed_addr constant [6 x i8] c"qpmax\00", align 1
@.str.149 = private unnamed_addr constant [7 x i8] c"qp-max\00", align 1
@.str.150 = private unnamed_addr constant [7 x i8] c"qpstep\00", align 1
@.str.151 = private unnamed_addr constant [8 x i8] c"qp-step\00", align 1
@.str.152 = private unnamed_addr constant [8 x i8] c"ratetol\00", align 1
@.str.153 = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@.str.154 = private unnamed_addr constant [12 x i8] c"vbv-maxrate\00", align 1
@.str.155 = private unnamed_addr constant [12 x i8] c"vbv-bufsize\00", align 1
@.str.156 = private unnamed_addr constant [9 x i8] c"vbv-init\00", align 1
@.str.157 = private unnamed_addr constant [8 x i8] c"ipratio\00", align 1
@.str.158 = private unnamed_addr constant [10 x i8] c"ip-factor\00", align 1
@.str.159 = private unnamed_addr constant [8 x i8] c"pbratio\00", align 1
@.str.160 = private unnamed_addr constant [10 x i8] c"pb-factor\00", align 1
@.str.161 = private unnamed_addr constant [8 x i8] c"aq-mode\00", align 1
@.str.162 = private unnamed_addr constant [12 x i8] c"aq-strength\00", align 1
@.str.163 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@.str.164 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@.str.165 = private unnamed_addr constant [6 x i8] c"qcomp\00", align 1
@.str.166 = private unnamed_addr constant [7 x i8] c"mbtree\00", align 1
@.str.167 = private unnamed_addr constant [6 x i8] c"qblur\00", align 1
@.str.168 = private unnamed_addr constant [9 x i8] c"cplxblur\00", align 1
@.str.169 = private unnamed_addr constant [10 x i8] c"cplx-blur\00", align 1
@.str.170 = private unnamed_addr constant [6 x i8] c"zones\00", align 1
@.str.171 = private unnamed_addr constant [10 x i8] c"crop-rect\00", align 1
@.str.172 = private unnamed_addr constant [12 x i8] c"%d,%d,%d,%d\00", align 1
@.str.173 = private unnamed_addr constant [5 x i8] c"psnr\00", align 1
@.str.174 = private unnamed_addr constant [5 x i8] c"ssim\00", align 1
@.str.175 = private unnamed_addr constant [4 x i8] c"aud\00", align 1
@.str.176 = private unnamed_addr constant [7 x i8] c"sps-id\00", align 1
@.str.177 = private unnamed_addr constant [14 x i8] c"global-header\00", align 1
@.str.178 = private unnamed_addr constant [15 x i8] c"repeat-headers\00", align 1
@.str.179 = private unnamed_addr constant [7 x i8] c"annexb\00", align 1
@.str.180 = private unnamed_addr constant [10 x i8] c"force-cfr\00", align 1
@.str.181 = private unnamed_addr constant [8 x i8] c"nal-hrd\00", align 1
@x264_nal_hrd_names = internal unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.336, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.237, i32 0, i32 0), i8* null], align 4
@.str.182 = private unnamed_addr constant [7 x i8] c"filler\00", align 1
@.str.183 = private unnamed_addr constant [11 x i8] c"pic-struct\00", align 1
@.str.184 = private unnamed_addr constant [16 x i8] c"fake-interlaced\00", align 1
@.str.185 = private unnamed_addr constant [14 x i8] c"frame-packing\00", align 1
@.str.186 = private unnamed_addr constant [11 x i8] c"stitchable\00", align 1
@.str.187 = private unnamed_addr constant [7 x i8] c"opencl\00", align 1
@.str.188 = private unnamed_addr constant [13 x i8] c"opencl-clbin\00", align 1
@.str.189 = private unnamed_addr constant [14 x i8] c"opencl-device\00", align 1
@.str.190 = private unnamed_addr constant [7 x i8] c"%dx%d \00", align 1
@.str.191 = private unnamed_addr constant [11 x i8] c"fps=%u/%u \00", align 1
@.str.192 = private unnamed_addr constant [16 x i8] c"timebase=%u/%u \00", align 1
@.str.193 = private unnamed_addr constant [13 x i8] c"bitdepth=%d \00", align 1
@.str.194 = private unnamed_addr constant [11 x i8] c"opencl=%d \00", align 1
@.str.195 = private unnamed_addr constant [9 x i8] c"cabac=%d\00", align 1
@.str.196 = private unnamed_addr constant [8 x i8] c" ref=%d\00", align 1
@.str.197 = private unnamed_addr constant [18 x i8] c" deblock=%d:%d:%d\00", align 1
@.str.198 = private unnamed_addr constant [17 x i8] c" analyse=%#x:%#x\00", align 1
@.str.199 = private unnamed_addr constant [7 x i8] c" me=%s\00", align 1
@.str.200 = private unnamed_addr constant [10 x i8] c" subme=%d\00", align 1
@.str.201 = private unnamed_addr constant [8 x i8] c" psy=%d\00", align 1
@.str.202 = private unnamed_addr constant [18 x i8] c" psy_rd=%.2f:%.2f\00", align 1
@.str.203 = private unnamed_addr constant [14 x i8] c" mixed_ref=%d\00", align 1
@.str.204 = private unnamed_addr constant [13 x i8] c" me_range=%d\00", align 1
@.str.205 = private unnamed_addr constant [14 x i8] c" chroma_me=%d\00", align 1
@.str.206 = private unnamed_addr constant [12 x i8] c" trellis=%d\00", align 1
@.str.207 = private unnamed_addr constant [11 x i8] c" 8x8dct=%d\00", align 1
@.str.208 = private unnamed_addr constant [8 x i8] c" cqm=%d\00", align 1
@.str.209 = private unnamed_addr constant [16 x i8] c" deadzone=%d,%d\00", align 1
@.str.210 = private unnamed_addr constant [15 x i8] c" fast_pskip=%d\00", align 1
@.str.211 = private unnamed_addr constant [21 x i8] c" chroma_qp_offset=%d\00", align 1
@.str.212 = private unnamed_addr constant [12 x i8] c" threads=%d\00", align 1
@.str.213 = private unnamed_addr constant [22 x i8] c" lookahead_threads=%d\00", align 1
@.str.214 = private unnamed_addr constant [19 x i8] c" sliced_threads=%d\00", align 1
@.str.215 = private unnamed_addr constant [11 x i8] c" slices=%d\00", align 1
@.str.216 = private unnamed_addr constant [15 x i8] c" slices_max=%d\00", align 1
@.str.217 = private unnamed_addr constant [19 x i8] c" slice_max_size=%d\00", align 1
@.str.218 = private unnamed_addr constant [18 x i8] c" slice_max_mbs=%d\00", align 1
@.str.219 = private unnamed_addr constant [18 x i8] c" slice_min_mbs=%d\00", align 1
@.str.220 = private unnamed_addr constant [7 x i8] c" nr=%d\00", align 1
@.str.221 = private unnamed_addr constant [13 x i8] c" decimate=%d\00", align 1
@.str.222 = private unnamed_addr constant [15 x i8] c" interlaced=%s\00", align 1
@.str.223 = private unnamed_addr constant [5 x i8] c"fake\00", align 1
@.str.224 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.225 = private unnamed_addr constant [18 x i8] c" bluray_compat=%d\00", align 1
@.str.226 = private unnamed_addr constant [15 x i8] c" stitchable=%d\00", align 1
@.str.227 = private unnamed_addr constant [22 x i8] c" constrained_intra=%d\00", align 1
@.str.228 = private unnamed_addr constant [12 x i8] c" bframes=%d\00", align 1
@.str.229 = private unnamed_addr constant [68 x i8] c" b_pyramid=%d b_adapt=%d b_bias=%d direct=%d weightb=%d open_gop=%d\00", align 1
@.str.230 = private unnamed_addr constant [12 x i8] c" weightp=%d\00", align 1
@.str.231 = private unnamed_addr constant [17 x i8] c" keyint=infinite\00", align 1
@.str.232 = private unnamed_addr constant [11 x i8] c" keyint=%d\00", align 1
@.str.233 = private unnamed_addr constant [44 x i8] c" keyint_min=%d scenecut=%d intra_refresh=%d\00", align 1
@.str.234 = private unnamed_addr constant [17 x i8] c" rc_lookahead=%d\00", align 1
@.str.235 = private unnamed_addr constant [17 x i8] c" rc=%s mbtree=%d\00", align 1
@.str.236 = private unnamed_addr constant [6 x i8] c"2pass\00", align 1
@.str.237 = private unnamed_addr constant [4 x i8] c"cbr\00", align 1
@.str.238 = private unnamed_addr constant [4 x i8] c"abr\00", align 1
@.str.239 = private unnamed_addr constant [4 x i8] c"cqp\00", align 1
@.str.240 = private unnamed_addr constant [10 x i8] c" crf=%.1f\00", align 1
@.str.241 = private unnamed_addr constant [25 x i8] c" bitrate=%d ratetol=%.1f\00", align 1
@.str.242 = private unnamed_addr constant [40 x i8] c" qcomp=%.2f qpmin=%d qpmax=%d qpstep=%d\00", align 1
@.str.243 = private unnamed_addr constant [26 x i8] c" cplxblur=%.1f qblur=%.1f\00", align 1
@.str.244 = private unnamed_addr constant [31 x i8] c" vbv_maxrate=%d vbv_bufsize=%d\00", align 1
@.str.245 = private unnamed_addr constant [14 x i8] c" crf_max=%.1f\00", align 1
@.str.246 = private unnamed_addr constant [7 x i8] c" qp=%d\00", align 1
@.str.247 = private unnamed_addr constant [22 x i8] c" nal_hrd=%s filler=%d\00", align 1
@.str.248 = private unnamed_addr constant [23 x i8] c" crop_rect=%d,%d,%d,%d\00", align 1
@.str.249 = private unnamed_addr constant [65 x i8] c" mastering-display=G(%d,%d)B(%d,%d)R(%d,%d)WP(%d,%d)L(%lld,%lld)\00", align 1
@.str.250 = private unnamed_addr constant [11 x i8] c" cll=%d,%d\00", align 1
@.str.251 = private unnamed_addr constant [18 x i8] c" frame-packing=%d\00", align 1
@.str.252 = private unnamed_addr constant [15 x i8] c" ip_ratio=%.2f\00", align 1
@.str.253 = private unnamed_addr constant [15 x i8] c" pb_ratio=%.2f\00", align 1
@.str.254 = private unnamed_addr constant [7 x i8] c" aq=%d\00", align 1
@.str.255 = private unnamed_addr constant [6 x i8] c":%.2f\00", align 1
@.str.256 = private unnamed_addr constant [10 x i8] c" zones=%s\00", align 1
@.str.257 = private unnamed_addr constant [7 x i8] c" zones\00", align 1
@x264_preset_names = internal unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.258, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.259, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.260, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.261, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.262, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.263, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.264, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.265, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.266, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.267, i32 0, i32 0), i8* null], align 4
@.str.258 = private unnamed_addr constant [10 x i8] c"ultrafast\00", align 1
@.str.259 = private unnamed_addr constant [10 x i8] c"superfast\00", align 1
@.str.260 = private unnamed_addr constant [9 x i8] c"veryfast\00", align 1
@.str.261 = private unnamed_addr constant [7 x i8] c"faster\00", align 1
@.str.262 = private unnamed_addr constant [5 x i8] c"fast\00", align 1
@.str.263 = private unnamed_addr constant [7 x i8] c"medium\00", align 1
@.str.264 = private unnamed_addr constant [5 x i8] c"slow\00", align 1
@.str.265 = private unnamed_addr constant [7 x i8] c"slower\00", align 1
@.str.266 = private unnamed_addr constant [9 x i8] c"veryslow\00", align 1
@.str.267 = private unnamed_addr constant [8 x i8] c"placebo\00", align 1
@.str.268 = private unnamed_addr constant [21 x i8] c"invalid preset '%s'\0A\00", align 1
@.str.269 = private unnamed_addr constant [6 x i8] c",./-+\00", align 1
@.str.270 = private unnamed_addr constant [5 x i8] c"film\00", align 1
@.str.271 = private unnamed_addr constant [10 x i8] c"animation\00", align 1
@.str.272 = private unnamed_addr constant [6 x i8] c"grain\00", align 1
@.str.273 = private unnamed_addr constant [11 x i8] c"stillimage\00", align 1
@.str.274 = private unnamed_addr constant [11 x i8] c"fastdecode\00", align 1
@.str.275 = private unnamed_addr constant [12 x i8] c"zerolatency\00", align 1
@.str.276 = private unnamed_addr constant [7 x i8] c"touhou\00", align 1
@.str.277 = private unnamed_addr constant [21 x i8] c"invalid tune '%.*s'\0A\00", align 1
@.str.278 = private unnamed_addr constant [51 x i8] c"only 1 psy tuning can be used: ignoring tune %.*s\0A\00", align 1
@.str.279 = private unnamed_addr constant [9 x i8] c"baseline\00", align 1
@.str.280 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.281 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.282 = private unnamed_addr constant [7 x i8] c"high10\00", align 1
@.str.283 = private unnamed_addr constant [8 x i8] c"high422\00", align 1
@.str.284 = private unnamed_addr constant [8 x i8] c"high444\00", align 1
@.str.285 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.286 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.287 = private unnamed_addr constant [10 x i8] c"panasonic\00", align 1
@.str.288 = private unnamed_addr constant [5 x i8] c"sony\00", align 1
@.str.289 = private unnamed_addr constant [5 x i8] c"show\00", align 1
@.str.290 = private unnamed_addr constant [5 x i8] c"crop\00", align 1
@.str.291 = private unnamed_addr constant [10 x i8] c"component\00", align 1
@.str.292 = private unnamed_addr constant [4 x i8] c"pal\00", align 1
@.str.293 = private unnamed_addr constant [5 x i8] c"ntsc\00", align 1
@.str.294 = private unnamed_addr constant [6 x i8] c"secam\00", align 1
@.str.295 = private unnamed_addr constant [4 x i8] c"mac\00", align 1
@.str.296 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.297 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.299 = private unnamed_addr constant [6 x i8] c"bt709\00", align 1
@.str.300 = private unnamed_addr constant [7 x i8] c"bt470m\00", align 1
@.str.301 = private unnamed_addr constant [8 x i8] c"bt470bg\00", align 1
@.str.302 = private unnamed_addr constant [10 x i8] c"smpte170m\00", align 1
@.str.303 = private unnamed_addr constant [10 x i8] c"smpte240m\00", align 1
@.str.304 = private unnamed_addr constant [7 x i8] c"bt2020\00", align 1
@.str.305 = private unnamed_addr constant [9 x i8] c"smpte428\00", align 1
@.str.306 = private unnamed_addr constant [9 x i8] c"smpte431\00", align 1
@.str.307 = private unnamed_addr constant [9 x i8] c"smpte432\00", align 1
@.str.308 = private unnamed_addr constant [7 x i8] c"linear\00", align 1
@.str.309 = private unnamed_addr constant [7 x i8] c"log100\00", align 1
@.str.310 = private unnamed_addr constant [7 x i8] c"log316\00", align 1
@.str.311 = private unnamed_addr constant [13 x i8] c"iec61966-2-4\00", align 1
@.str.312 = private unnamed_addr constant [8 x i8] c"bt1361e\00", align 1
@.str.313 = private unnamed_addr constant [13 x i8] c"iec61966-2-1\00", align 1
@.str.314 = private unnamed_addr constant [10 x i8] c"bt2020-10\00", align 1
@.str.315 = private unnamed_addr constant [10 x i8] c"bt2020-12\00", align 1
@.str.316 = private unnamed_addr constant [10 x i8] c"smpte2084\00", align 1
@.str.317 = private unnamed_addr constant [13 x i8] c"arib-std-b67\00", align 1
@.str.318 = private unnamed_addr constant [4 x i8] c"GBR\00", align 1
@.str.319 = private unnamed_addr constant [4 x i8] c"fcc\00", align 1
@.str.320 = private unnamed_addr constant [6 x i8] c"YCgCo\00", align 1
@.str.321 = private unnamed_addr constant [9 x i8] c"bt2020nc\00", align 1
@.str.322 = private unnamed_addr constant [8 x i8] c"bt2020c\00", align 1
@.str.323 = private unnamed_addr constant [10 x i8] c"smpte2085\00", align 1
@.str.324 = private unnamed_addr constant [18 x i8] c"chroma-derived-nc\00", align 1
@.str.325 = private unnamed_addr constant [17 x i8] c"chroma-derived-c\00", align 1
@.str.326 = private unnamed_addr constant [6 x i8] c"ICtCp\00", align 1
@.str.327 = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@.str.328 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.329 = private unnamed_addr constant [8 x i8] c"spatial\00", align 1
@.str.330 = private unnamed_addr constant [9 x i8] c"temporal\00", align 1
@.str.331 = private unnamed_addr constant [4 x i8] c"dia\00", align 1
@.str.332 = private unnamed_addr constant [4 x i8] c"hex\00", align 1
@.str.333 = private unnamed_addr constant [4 x i8] c"umh\00", align 1
@.str.334 = private unnamed_addr constant [4 x i8] c"esa\00", align 1
@.str.335 = private unnamed_addr constant [5 x i8] c"tesa\00", align 1
@.str.336 = private unnamed_addr constant [4 x i8] c"vbr\00", align 1
@switch.table.x264_log_internal = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)], align 4

; Function Attrs: nofree norecurse nounwind
define hidden void @x264_reduce_fraction(i32* nocapture %n, i32* nocapture %d) local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* %n, align 4, !tbaa !2
  %1 = load i32, i32* %d, align 4, !tbaa !2
  %tobool = icmp ne i32 %0, 0
  %tobool1 = icmp ne i32 %1, 0
  %or.cond = and i1 %tobool, %tobool1
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %rem = urem i32 %0, %1
  %tobool220 = icmp eq i32 %rem, 0
  br i1 %tobool220, label %while.end, label %while.body

while.body:                                       ; preds = %if.end, %while.body
  %c.022 = phi i32 [ %rem3, %while.body ], [ %rem, %if.end ]
  %b.021 = phi i32 [ %c.022, %while.body ], [ %1, %if.end ]
  %rem3 = urem i32 %b.021, %c.022
  %tobool2 = icmp eq i32 %rem3, 0
  br i1 %tobool2, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %if.end
  %b.0.lcssa = phi i32 [ %1, %if.end ], [ %c.022, %while.body ]
  %div = udiv i32 %0, %b.0.lcssa
  store i32 %div, i32* %n, align 4, !tbaa !2
  %2 = load i32, i32* %d, align 4, !tbaa !2
  %div4 = udiv i32 %2, %b.0.lcssa
  store i32 %div4, i32* %d, align 4, !tbaa !2
  br label %cleanup

cleanup:                                          ; preds = %entry, %while.end
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree norecurse nounwind
define hidden void @x264_reduce_fraction64(i64* nocapture %n, i64* nocapture %d) local_unnamed_addr #0 {
entry:
  %0 = load i64, i64* %n, align 8, !tbaa !6
  %1 = load i64, i64* %d, align 8, !tbaa !6
  %tobool = icmp ne i64 %0, 0
  %tobool1 = icmp ne i64 %1, 0
  %or.cond = and i1 %tobool, %tobool1
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %rem = urem i64 %0, %1
  %tobool220 = icmp eq i64 %rem, 0
  br i1 %tobool220, label %while.end, label %while.body

while.body:                                       ; preds = %if.end, %while.body
  %c.022 = phi i64 [ %rem3, %while.body ], [ %rem, %if.end ]
  %b.021 = phi i64 [ %c.022, %while.body ], [ %1, %if.end ]
  %rem3 = urem i64 %b.021, %c.022
  %tobool2 = icmp eq i64 %rem3, 0
  br i1 %tobool2, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %if.end
  %b.0.lcssa = phi i64 [ %1, %if.end ], [ %c.022, %while.body ]
  %div = udiv i64 %0, %b.0.lcssa
  store i64 %div, i64* %n, align 8, !tbaa !6
  %2 = load i64, i64* %d, align 8, !tbaa !6
  %div4 = udiv i64 %2, %b.0.lcssa
  store i64 %div4, i64* %d, align 8, !tbaa !6
  br label %cleanup

cleanup:                                          ; preds = %entry, %while.end
  ret void
}

; Function Attrs: nofree nounwind
define hidden void @x264_log_default(i8* nocapture readnone %p_unused, i32 %i_level, i8* nocapture readonly %psz_fmt, i8* %arg) #2 {
entry:
  %0 = icmp ult i32 %i_level, 4
  br i1 %0, label %switch.lookup, label %sw.epilog

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [4 x i8*], [4 x i8*]* @switch.table.x264_log_internal, i32 0, i32 %i_level
  %switch.load = load i8*, i8** %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %switch.lookup
  %psz_prefix.0 = phi i8* [ %switch.load, %switch.lookup ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), %entry ]
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4, !tbaa !8
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* nonnull %psz_prefix.0) #11
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4, !tbaa !8
  %call4 = tail call i32 @vfprintf(%struct._IO_FILE* %2, i8* %psz_fmt, i8* %arg) #11
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local i32 @vfprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, i8*) local_unnamed_addr #3

; Function Attrs: nounwind
define hidden void @x264_log_internal(i32 %i_level, i8* nocapture readonly %psz_fmt, ...) local_unnamed_addr #4 {
entry:
  %arg = alloca i8*, align 4
  %0 = bitcast i8** %arg to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #5
  call void @llvm.va_start(i8* nonnull %0)
  %1 = load i8*, i8** %arg, align 4, !tbaa !8
  %2 = icmp ult i32 %i_level, 4
  br i1 %2, label %switch.lookup, label %x264_log_default.exit

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [4 x i8*], [4 x i8*]* @switch.table.x264_log_internal, i32 0, i32 %i_level
  %switch.load = load i8*, i8** %switch.gep, align 4
  br label %x264_log_default.exit

x264_log_default.exit:                            ; preds = %entry, %switch.lookup
  %psz_prefix.0.i = phi i8* [ %switch.load, %switch.lookup ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), %entry ]
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4, !tbaa !8
  %call.i = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* nonnull %psz_prefix.0.i) #12
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4, !tbaa !8
  %call4.i = call i32 @vfprintf(%struct._IO_FILE* %4, i8* %psz_fmt, i8* %1) #12
  call void @llvm.va_end(i8* nonnull %0)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #5
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: nounwind
define hidden noalias i8* @x264_malloc(i64 %i_size) local_unnamed_addr #4 {
entry:
  %cmp1 = icmp ugt i64 %i_size, 4292870143
  br i1 %cmp1, label %return.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %conv = trunc i64 %i_size to i32
  %call = tail call noalias i8* @memalign(i32 64, i32 %conv) #5
  %tobool = icmp eq i8* %call, null
  br i1 %tobool, label %return.sink.split, label %return

return.sink.split:                                ; preds = %if.end, %entry
  %.sink = phi i8* [ getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0), %entry ], [ getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0), %if.end ]
  tail call void (i32, i8*, ...) @x264_log_internal(i32 0, i8* %.sink, i64 %i_size)
  br label %return

return:                                           ; preds = %return.sink.split, %if.end
  %retval.0 = phi i8* [ %call, %if.end ], [ null, %return.sink.split ]
  ret i8* %retval.0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @memalign(i32, i32) local_unnamed_addr #6

; Function Attrs: nounwind
define hidden void @x264_free(i8* %p) local_unnamed_addr #4 {
entry:
  %tobool = icmp eq i8* %p, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @free(i8* nonnull %p) #5
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
define hidden i8* @x264_slurp_file(i8* %filename) local_unnamed_addr #4 {
entry:
  %call = tail call %struct._IO_FILE* @fopen64(i8* %filename, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0)) #5
  %tobool = icmp eq %struct._IO_FILE* %call, null
  br i1 %tobool, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @fseek(%struct._IO_FILE* nonnull %call, i32 0, i32 2)
  %call1.lobit = lshr i32 %call1, 31
  %call2 = tail call i32 @ftell(%struct._IO_FILE* nonnull %call)
  %conv3 = sext i32 %call2 to i64
  %cmp4 = icmp slt i32 %call2, 1
  %conv5 = zext i1 %cmp4 to i32
  %or6 = or i32 %call1.lobit, %conv5
  %call10 = tail call i32 @fseek(%struct._IO_FILE* nonnull %call, i32 0, i32 0)
  %call10.lobit = lshr i32 %call10, 31
  %or13 = or i32 %or6, %call10.lobit
  %tobool14 = icmp eq i32 %or13, 0
  br i1 %tobool14, label %if.end16, label %error

if.end16:                                         ; preds = %if.end
  %add = add nsw i64 %conv3, 2
  %cmp1.i = icmp ugt i64 %add, 4292870143
  br i1 %cmp1.i, label %error.sink.split, label %if.end.i

if.end.i:                                         ; preds = %if.end16
  %conv.i = trunc i64 %add to i32
  %call.i = tail call noalias i8* @memalign(i32 64, i32 %conv.i) #5
  %tobool.i = icmp eq i8* %call.i, null
  br i1 %tobool.i, label %error.sink.split, label %if.end20

if.end20:                                         ; preds = %if.end.i
  %call22 = tail call i32 @fread(i8* nonnull %call.i, i32 1, i32 %call2, %struct._IO_FILE* nonnull %call)
  %conv23 = zext i32 %call22 to i64
  %cmp24 = icmp eq i64 %conv23, %conv3
  %call27 = tail call i32 @fclose(%struct._IO_FILE* nonnull %call)
  br i1 %cmp24, label %if.end30, label %x264_free.exit

x264_free.exit:                                   ; preds = %if.end20
  tail call void @free(i8* nonnull %call.i) #5
  br label %cleanup

if.end30:                                         ; preds = %if.end20
  %sub = add i32 %call2, -1
  %arrayidx = getelementptr inbounds i8, i8* %call.i, i32 %sub
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !10
  %cmp32 = icmp eq i8 %0, 10
  br i1 %cmp32, label %if.end37, label %if.then34

if.then34:                                        ; preds = %if.end30
  %inc = add i32 %call2, 1
  %arrayidx36 = getelementptr inbounds i8, i8* %call.i, i32 %call2
  store i8 10, i8* %arrayidx36, align 1, !tbaa !10
  br label %if.end37

if.end37:                                         ; preds = %if.end30, %if.then34
  %i_size.0.off0 = phi i32 [ %inc, %if.then34 ], [ %call2, %if.end30 ]
  %arrayidx39 = getelementptr inbounds i8, i8* %call.i, i32 %i_size.0.off0
  store i8 0, i8* %arrayidx39, align 1, !tbaa !10
  br label %cleanup

error.sink.split:                                 ; preds = %if.end.i, %if.end16
  %.sink = phi i8* [ getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0), %if.end16 ], [ getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0), %if.end.i ]
  tail call void (i32, i8*, ...) @x264_log_internal(i32 0, i8* %.sink, i64 %add) #5
  br label %error

error:                                            ; preds = %error.sink.split, %if.end
  %call40 = tail call i32 @fclose(%struct._IO_FILE* nonnull %call)
  br label %cleanup

cleanup:                                          ; preds = %entry, %error, %if.end37, %x264_free.exit
  %retval.0 = phi i8* [ null, %error ], [ null, %x264_free.exit ], [ %call.i, %if.end37 ], [ null, %entry ]
  ret i8* %retval.0
}

declare dso_local %struct._IO_FILE* @fopen64(i8*, i8*) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare dso_local i32 @fseek(%struct._IO_FILE* nocapture, i32, i32) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local i32 @ftell(%struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local i32 @fread(i8* nocapture, i32, i32, %struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: nounwind
define hidden i8* @x264_param_strdup(%struct.x264_param_t* nocapture %param, i8* nocapture readonly %src) local_unnamed_addr #4 {
entry:
  %opaque = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 83
  %0 = load i8*, i8** %opaque, align 4, !tbaa !11
  %tobool = icmp eq i8* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call noalias dereferenceable_or_null(72) i8* @malloc(i32 72) #5
  %tobool1 = icmp eq i8* %call, null
  br i1 %tobool1, label %fail, label %if.end

if.end:                                           ; preds = %if.then
  %size = bitcast i8* %call to i32*
  store i32 16, i32* %size, align 4, !tbaa !2
  %count = getelementptr inbounds i8, i8* %call, i32 4
  br label %if.end20.sink.split

if.else:                                          ; preds = %entry
  %count4 = getelementptr inbounds i8, i8* %0, i32 4
  %1 = bitcast i8* %count4 to i32*
  %2 = load i32, i32* %1, align 4, !tbaa !2
  %size5 = bitcast i8* %0 to i32*
  %3 = load i32, i32* %size5, align 4, !tbaa !2
  %cmp = icmp eq i32 %2, %3
  br i1 %cmp, label %if.then6, label %if.end20

if.then6:                                         ; preds = %if.else
  %cmp8 = icmp sgt i32 %2, 268435454
  br i1 %cmp8, label %fail, label %if.end10

if.end10:                                         ; preds = %if.then6
  %mul12 = shl i32 %2, 3
  %add = add i32 %mul12, 8
  %call13 = tail call i8* @realloc(i8* nonnull %0, i32 %add) #5
  %tobool14 = icmp eq i8* %call13, null
  br i1 %tobool14, label %fail, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end10
  %mul = shl nsw i32 %2, 1
  br label %if.end20.sink.split

if.end20.sink.split:                              ; preds = %if.end, %cleanup.thread
  %call13.sink55 = phi i8* [ %call13, %cleanup.thread ], [ %count, %if.end ]
  %mul.sink = phi i32 [ %mul, %cleanup.thread ], [ 0, %if.end ]
  %call13.sink = phi i8* [ %call13, %cleanup.thread ], [ %call, %if.end ]
  %size17 = bitcast i8* %call13.sink55 to i32*
  store i32 %mul.sink, i32* %size17, align 4, !tbaa !2
  store i8* %call13.sink, i8** %opaque, align 4, !tbaa !11
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %if.else
  %buf.0.in = phi i8* [ %0, %if.else ], [ %call13.sink, %if.end20.sink.split ]
  %call21 = tail call noalias i8* @strdup(i8* %src) #5
  %tobool22 = icmp eq i8* %call21, null
  br i1 %tobool22, label %fail, label %if.end24

if.end24:                                         ; preds = %if.end20
  %buf.0 = bitcast i8* %buf.0.in to %struct.strdup_buffer*
  %count25 = getelementptr inbounds i8, i8* %buf.0.in, i32 4
  %4 = bitcast i8* %count25 to i32*
  %5 = load i32, i32* %4, align 4, !tbaa !2
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %4, align 4, !tbaa !2
  %arrayidx = getelementptr inbounds %struct.strdup_buffer, %struct.strdup_buffer* %buf.0, i32 0, i32 2, i32 %5
  store i8* %call21, i8** %arrayidx, align 4, !tbaa !8
  br label %cleanup26

fail:                                             ; preds = %if.end10, %if.end20, %if.then, %if.then6
  tail call void (i32, i8*, ...) @x264_log_internal(i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0))
  br label %cleanup26

cleanup26:                                        ; preds = %fail, %if.end24
  %retval.0 = phi i8* [ null, %fail ], [ %call21, %if.end24 ]
  ret i8* %retval.0
}

; Function Attrs: nofree nounwind
declare dso_local noalias i8* @malloc(i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare dso_local noalias i8* @realloc(i8* nocapture, i32) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare dso_local noalias i8* @strdup(i8* nocapture readonly) local_unnamed_addr #3

; Function Attrs: nounwind
define hidden void @x264_param_cleanup(%struct.x264_param_t* nocapture %param) local_unnamed_addr #4 {
entry:
  %opaque = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 83
  %0 = load i8*, i8** %opaque, align 4, !tbaa !11
  %tobool = icmp eq i8* %0, null
  br i1 %tobool, label %if.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %count = getelementptr inbounds i8, i8* %0, i32 4
  %1 = bitcast i8* %count to i32*
  %2 = load i32, i32* %1, align 4, !tbaa !2
  %cmp10 = icmp sgt i32 %2, 0
  br i1 %cmp10, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %ptr = getelementptr inbounds i8, i8* %0, i32 8
  %3 = bitcast i8* %ptr to [0 x i8*]*
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body, %for.cond.preheader
  tail call void @free(i8* nonnull %0) #5
  store i8* null, i8** %opaque, align 4, !tbaa !11
  br label %if.end

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %i.011 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %arrayidx = getelementptr inbounds [0 x i8*], [0 x i8*]* %3, i32 0, i32 %i.011
  %4 = load i8*, i8** %arrayidx, align 4, !tbaa !8
  tail call void @free(i8* %4) #5
  %inc = add nuw nsw i32 %i.011, 1
  %5 = load i32, i32* %1, align 4, !tbaa !2
  %cmp = icmp slt i32 %inc, %5
  br i1 %cmp, label %for.body, label %for.cond.cleanup

if.end:                                           ; preds = %entry, %for.cond.cleanup
  ret void
}

; Function Attrs: nounwind
define hidden void @x264_picture_init(%struct.x264_picture_t* nocapture %pic) local_unnamed_addr #4 {
entry:
  %0 = bitcast %struct.x264_picture_t* %pic to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(192) %0, i8 0, i64 192, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #1

; Function Attrs: nounwind
define hidden i32 @x264_picture_alloc(%struct.x264_picture_t* nocapture %pic, i32 %i_csp, i32 %i_width, i32 %i_height) local_unnamed_addr #4 {
entry:
  %plane_offset = alloca [3 x i64], align 8
  %and = and i32 %i_csp, 255
  %0 = add nsw i32 %and, -1
  %1 = icmp ugt i32 %0, 15
  %cmp3 = icmp eq i32 %and, 11
  %or.cond56 = or i1 %cmp3, %1
  br i1 %or.cond56, label %cleanup55, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %2 = bitcast %struct.x264_picture_t* %pic to i8*
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(192) %2, i8 0, i64 192, i1 false) #5
  %i_csp4 = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %pic, i32 0, i32 7, i32 0
  store i32 %i_csp, i32* %i_csp4, align 4, !tbaa !20
  %planes = getelementptr inbounds [17 x %struct.x264_csp_tab_t], [17 x %struct.x264_csp_tab_t]* @x264_picture_alloc.csp_tab, i32 0, i32 %and, i32 0
  %3 = load i32, i32* %planes, align 4, !tbaa !27
  %i_plane = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %pic, i32 0, i32 7, i32 1
  store i32 %3, i32* %i_plane, align 4, !tbaa !29
  %and6 = and i32 %i_csp, 8192
  %tobool = icmp eq i32 %and6, 0
  %cond = select i1 %tobool, i32 1, i32 2
  %4 = bitcast [3 x i64]* %plane_offset to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #5
  call void @llvm.memset.p0i8.i32(i8* nonnull align 8 dereferenceable(24) %4, i8 0, i32 24, i1 false)
  %conv = sext i32 %i_width to i64
  %conv16 = sext i32 %i_height to i64
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body
  %cmp1.i = icmp ugt i64 %add, 4292870143
  br i1 %cmp1.i, label %x264_malloc.exit.thread, label %if.end.i

if.end.i:                                         ; preds = %for.cond.cleanup
  %conv.i = trunc i64 %add to i32
  %call.i = tail call noalias i8* @memalign(i32 64, i32 %conv.i) #5
  %tobool.i = icmp eq i8* %call.i, null
  br i1 %tobool.i, label %x264_malloc.exit.thread, label %x264_malloc.exit

x264_malloc.exit.thread:                          ; preds = %if.end.i, %for.cond.cleanup
  %.sink = phi i8* [ getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0), %for.cond.cleanup ], [ getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0), %if.end.i ]
  tail call void (i32, i8*, ...) @x264_log_internal(i32 0, i8* %.sink, i64 %add) #5
  %arrayidx2892 = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %pic, i32 0, i32 7, i32 3, i32 0
  store i8* null, i8** %arrayidx2892, align 4, !tbaa !8
  br label %cleanup

x264_malloc.exit:                                 ; preds = %if.end.i
  %arrayidx28 = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %pic, i32 0, i32 7, i32 3, i32 0
  store i8* %call.i, i8** %arrayidx28, align 4, !tbaa !8
  %5 = load i32, i32* %i_plane, align 4, !tbaa !29
  %cmp3994 = icmp sgt i32 %5, 1
  br i1 %cmp3994, label %for.body42.preheader, label %cleanup

for.body42.preheader:                             ; preds = %x264_malloc.exit
  %arrayidx4699 = getelementptr inbounds [3 x i64], [3 x i64]* %plane_offset, i32 0, i32 1
  %6 = load i64, i64* %arrayidx4699, align 8, !tbaa !6
  %idx.ext100 = trunc i64 %6 to i32
  %add.ptr101 = getelementptr inbounds i8, i8* %call.i, i32 %idx.ext100
  %arrayidx49102 = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %pic, i32 0, i32 7, i32 3, i32 1
  store i8* %add.ptr101, i8** %arrayidx49102, align 4, !tbaa !8
  %cmp39103 = icmp eq i32 %5, 2
  br i1 %cmp39103, label %cleanup, label %for.body42.for.body42_crit_edge

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %i.098 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %frame_size.097 = phi i64 [ 0, %for.body.lr.ph ], [ %add, %for.body ]
  %arrayidx11 = getelementptr inbounds [17 x %struct.x264_csp_tab_t], [17 x %struct.x264_csp_tab_t]* @x264_picture_alloc.csp_tab, i32 0, i32 %and, i32 1, i32 %i.098
  %7 = load i32, i32* %arrayidx11, align 4, !tbaa !2
  %conv12 = sext i32 %7 to i64
  %mul = mul nsw i64 %conv12, %conv
  %8 = lshr i64 %mul, 8
  %9 = trunc i64 %8 to i32
  %conv15 = mul i32 %cond, %9
  %arrayidx18 = getelementptr inbounds [17 x %struct.x264_csp_tab_t], [17 x %struct.x264_csp_tab_t]* @x264_picture_alloc.csp_tab, i32 0, i32 %and, i32 2, i32 %i.098
  %10 = load i32, i32* %arrayidx18, align 4, !tbaa !2
  %conv19 = sext i32 %10 to i64
  %mul20 = mul nsw i64 %conv19, %conv16
  %shr21 = ashr i64 %mul20, 8
  %conv22 = sext i32 %conv15 to i64
  %mul23 = mul nsw i64 %shr21, %conv22
  %arrayidx25 = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %pic, i32 0, i32 7, i32 2, i32 %i.098
  store i32 %conv15, i32* %arrayidx25, align 4, !tbaa !2
  %arrayidx26 = getelementptr inbounds [3 x i64], [3 x i64]* %plane_offset, i32 0, i32 %i.098
  store i64 %frame_size.097, i64* %arrayidx26, align 8, !tbaa !6
  %add = add nsw i64 %mul23, %frame_size.097
  %inc = add nuw nsw i32 %i.098, 1
  %cmp9 = icmp slt i32 %inc, %3
  br i1 %cmp9, label %for.body, label %for.cond.cleanup

for.body42.for.body42_crit_edge:                  ; preds = %for.body42.preheader, %for.body42.for.body42_crit_edge
  %inc51104 = phi i32 [ %inc51, %for.body42.for.body42_crit_edge ], [ 2, %for.body42.preheader ]
  %.pre = load i8*, i8** %arrayidx28, align 4, !tbaa !8
  %arrayidx46 = getelementptr inbounds [3 x i64], [3 x i64]* %plane_offset, i32 0, i32 %inc51104
  %11 = load i64, i64* %arrayidx46, align 8, !tbaa !6
  %idx.ext = trunc i64 %11 to i32
  %add.ptr = getelementptr inbounds i8, i8* %.pre, i32 %idx.ext
  %arrayidx49 = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %pic, i32 0, i32 7, i32 3, i32 %inc51104
  store i8* %add.ptr, i8** %arrayidx49, align 4, !tbaa !8
  %inc51 = add nuw nsw i32 %inc51104, 1
  %cmp39 = icmp slt i32 %inc51, %5
  br i1 %cmp39, label %for.body42.for.body42_crit_edge, label %cleanup

cleanup:                                          ; preds = %for.body42.for.body42_crit_edge, %for.body42.preheader, %x264_malloc.exit, %x264_malloc.exit.thread
  %retval.0 = phi i32 [ -1, %x264_malloc.exit.thread ], [ 0, %x264_malloc.exit ], [ 0, %for.body42.preheader ], [ 0, %for.body42.for.body42_crit_edge ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #5
  br label %cleanup55

cleanup55:                                        ; preds = %entry, %cleanup
  %retval.1 = phi i32 [ %retval.0, %cleanup ], [ -1, %entry ]
  ret i32 %retval.1
}

; Function Attrs: nounwind
define hidden void @x264_picture_clean(%struct.x264_picture_t* nocapture %pic) local_unnamed_addr #4 {
entry:
  %arrayidx = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %pic, i32 0, i32 7, i32 3, i32 0
  %0 = load i8*, i8** %arrayidx, align 4, !tbaa !8
  %tobool.i = icmp eq i8* %0, null
  br i1 %tobool.i, label %x264_free.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  tail call void @free(i8* nonnull %0) #5
  br label %x264_free.exit

x264_free.exit:                                   ; preds = %entry, %if.then.i
  %1 = bitcast %struct.x264_picture_t* %pic to i8*
  tail call void @llvm.memset.p0i8.i32(i8* nonnull align 8 dereferenceable(192) %1, i8 0, i32 192, i1 false)
  ret void
}

; Function Attrs: nounwind
define hidden void @x264_param_default(%struct.x264_param_t* %param) local_unnamed_addr #4 {
entry:
  %0 = bitcast %struct.x264_param_t* %param to i8*
  tail call void @llvm.memset.p0i8.i32(i8* nonnull align 8 dereferenceable(944) %0, i8 0, i32 944, i1 false)
  %call = tail call i32 @x264_cpu_detect() #5
  %cpu = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 0
  store i32 %call, i32* %cpu, align 8, !tbaa !30
  %i_threads = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 1
  store i32 0, i32* %i_threads, align 4, !tbaa !31
  %i_lookahead_threads = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 2
  store i32 0, i32* %i_lookahead_threads, align 8, !tbaa !32
  %b_deterministic = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 4
  store i32 1, i32* %b_deterministic, align 8, !tbaa !33
  %i_sync_lookahead = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 6
  store i32 -1, i32* %i_sync_lookahead, align 8, !tbaa !34
  %i_csp = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 9
  store i32 2, i32* %i_csp, align 4, !tbaa !35
  %i_width = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 7
  store i32 0, i32* %i_width, align 4, !tbaa !36
  %i_height = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 8
  store i32 0, i32* %i_height, align 8, !tbaa !37
  %i_sar_width = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 14, i32 1
  store i32 0, i32* %i_sar_width, align 4, !tbaa !38
  %i_sar_height = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 14, i32 0
  store i32 0, i32* %i_sar_height, align 8, !tbaa !39
  %i_overscan = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 14, i32 2
  store i32 0, i32* %i_overscan, align 8, !tbaa !40
  %i_vidformat = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 14, i32 3
  store i32 5, i32* %i_vidformat, align 4, !tbaa !41
  %b_fullrange = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 14, i32 4
  store i32 -1, i32* %b_fullrange, align 8, !tbaa !42
  %i_colorprim = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 14, i32 5
  store i32 2, i32* %i_colorprim, align 4, !tbaa !43
  %i_transfer = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 14, i32 6
  store i32 2, i32* %i_transfer, align 8, !tbaa !44
  %i_colmatrix = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 14, i32 7
  store i32 -1, i32* %i_colmatrix, align 4, !tbaa !45
  %i_chroma_loc = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 14, i32 8
  store i32 0, i32* %i_chroma_loc, align 8, !tbaa !46
  %i_fps_num = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 64
  store i32 25, i32* %i_fps_num, align 8, !tbaa !47
  %i_fps_den = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 65
  store i32 1, i32* %i_fps_den, align 4, !tbaa !48
  %i_level_idc = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 11
  store i32 -1, i32* %i_level_idc, align 4, !tbaa !49
  %i_slice_max_size = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 76
  store i32 0, i32* %i_slice_max_size, align 8, !tbaa !50
  %i_slice_max_mbs = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 77
  store i32 0, i32* %i_slice_max_mbs, align 4, !tbaa !51
  %i_slice_count = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 79
  store i32 0, i32* %i_slice_count, align 4, !tbaa !52
  %i_bitdepth = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 10
  store i32 8, i32* %i_bitdepth, align 8, !tbaa !53
  %i_frame_reference = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 15
  store i32 3, i32* %i_frame_reference, align 4, !tbaa !54
  %i_keyint_max = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 17
  store i32 250, i32* %i_keyint_max, align 4, !tbaa !55
  %i_keyint_min = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 18
  store i32 0, i32* %i_keyint_min, align 8, !tbaa !56
  %i_bframe = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 21
  store i32 3, i32* %i_bframe, align 4, !tbaa !57
  %i_scenecut_threshold = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 19
  store i32 40, i32* %i_scenecut_threshold, align 4, !tbaa !58
  %i_bframe_adaptive = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 22
  store i32 1, i32* %i_bframe_adaptive, align 8, !tbaa !59
  %i_bframe_bias = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 23
  store i32 0, i32* %i_bframe_bias, align 4, !tbaa !60
  %i_bframe_pyramid = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 24
  store i32 2, i32* %i_bframe_pyramid, align 8, !tbaa !61
  %b_interlaced = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 34
  store i32 0, i32* %b_interlaced, align 8, !tbaa !62
  %b_constrained_intra = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 35
  store i32 0, i32* %b_constrained_intra, align 4, !tbaa !63
  %b_deblocking_filter = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 29
  store i32 1, i32* %b_deblocking_filter, align 4, !tbaa !64
  %i_deblocking_filter_alphac0 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 30
  store i32 0, i32* %i_deblocking_filter_alphac0, align 8, !tbaa !65
  %i_deblocking_filter_beta = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 31
  store i32 0, i32* %i_deblocking_filter_beta, align 4, !tbaa !66
  %b_cabac = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 32
  store i32 1, i32* %b_cabac, align 8, !tbaa !67
  %i_cabac_init_idc = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 33
  store i32 0, i32* %i_cabac_init_idc, align 4, !tbaa !68
  %i_rc_method = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 52, i32 0
  store i32 1, i32* %i_rc_method, align 8, !tbaa !69
  %i_bitrate = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 52, i32 5
  store i32 0, i32* %i_bitrate, align 4, !tbaa !70
  %f_rate_tolerance = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 52, i32 8
  store float 1.000000e+00, float* %f_rate_tolerance, align 8, !tbaa !71
  %i_vbv_max_bitrate = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 52, i32 9
  store i32 0, i32* %i_vbv_max_bitrate, align 4, !tbaa !72
  %i_vbv_buffer_size = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 52, i32 10
  store i32 0, i32* %i_vbv_buffer_size, align 8, !tbaa !73
  %f_vbv_buffer_init = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 52, i32 11
  store float 0x3FECCCCCC0000000, float* %f_vbv_buffer_init, align 4, !tbaa !74
  %i_qp_constant = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 52, i32 1
  store i32 -1, i32* %i_qp_constant, align 4, !tbaa !75
  %f_rf_constant = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 52, i32 6
  store float 2.300000e+01, float* %f_rf_constant, align 8, !tbaa !76
  %i_qp_min = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 52, i32 2
  store i32 0, i32* %i_qp_min, align 8, !tbaa !77
  %i_qp_max = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 52, i32 3
  store i32 2147483647, i32* %i_qp_max, align 4, !tbaa !78
  %i_qp_step = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 52, i32 4
  store i32 4, i32* %i_qp_step, align 8, !tbaa !79
  %f_ip_factor = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 52, i32 12
  store float 0x3FF6666660000000, float* %f_ip_factor, align 8, !tbaa !80
  %f_pb_factor = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 52, i32 13
  store float 0x3FF4CCCCC0000000, float* %f_pb_factor, align 4, !tbaa !81
  %i_aq_mode = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 52, i32 15
  store i32 1, i32* %i_aq_mode, align 4, !tbaa !82
  %f_aq_strength = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 52, i32 16
  store float 1.000000e+00, float* %f_aq_strength, align 8, !tbaa !83
  %i_lookahead = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 52, i32 18
  store i32 40, i32* %i_lookahead, align 8, !tbaa !84
  %b_stat_write = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 52, i32 19
  store i32 0, i32* %b_stat_write, align 4, !tbaa !85
  %psz_stat_out = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 52, i32 20
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8** %psz_stat_out, align 8, !tbaa !86
  %b_stat_read = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 52, i32 21
  store i32 0, i32* %b_stat_read, align 4, !tbaa !87
  %psz_stat_in = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 52, i32 22
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8** %psz_stat_in, align 8, !tbaa !88
  %f_qcompress = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 52, i32 23
  store float 0x3FE3333340000000, float* %f_qcompress, align 4, !tbaa !89
  %f_qblur = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 52, i32 24
  store float 5.000000e-01, float* %f_qblur, align 8, !tbaa !90
  %f_complexity_blur = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 52, i32 25
  store float 2.000000e+01, float* %f_complexity_blur, align 4, !tbaa !91
  %i_zones = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 52, i32 27
  store i32 0, i32* %i_zones, align 4, !tbaa !92
  %b_mb_tree = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 52, i32 17
  store i32 1, i32* %b_mb_tree, align 4, !tbaa !93
  %pf_log = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 46
  store void (i8*, i32, i8*, i8*)* @x264_log_default, void (i8*, i32, i8*, i8*)** %pf_log, align 8, !tbaa !94
  %p_log_private = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 47
  store i8* null, i8** %p_log_private, align 4, !tbaa !95
  %i_log_level = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 48
  store i32 2, i32* %i_log_level, align 8, !tbaa !96
  %intra = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 0
  store i32 3, i32* %intra, align 4, !tbaa !97
  %inter = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 1
  store i32 275, i32* %inter, align 4, !tbaa !98
  %i_direct_mv_pred = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 5
  store i32 1, i32* %i_direct_mv_pred, align 4, !tbaa !99
  %i_me_method = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 7
  store i32 1, i32* %i_me_method, align 4, !tbaa !100
  %f_psy_rd = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 18
  store float 1.000000e+00, float* %f_psy_rd, align 4, !tbaa !101
  %b_psy = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 20
  store i32 1, i32* %b_psy, align 4, !tbaa !102
  %f_psy_trellis = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 19
  store float 0.000000e+00, float* %f_psy_trellis, align 4, !tbaa !103
  %i_me_range = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 8
  store i32 16, i32* %i_me_range, align 4, !tbaa !104
  %i_subpel_refine = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 11
  store i32 7, i32* %i_subpel_refine, align 4, !tbaa !105
  %b_mixed_references = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 13
  store i32 1, i32* %b_mixed_references, align 4, !tbaa !106
  %b_chroma_me = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 12
  store i32 1, i32* %b_chroma_me, align 4, !tbaa !107
  %i_mv_range_thread = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 10
  store i32 -1, i32* %i_mv_range_thread, align 4, !tbaa !108
  %i_mv_range = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 9
  store i32 -1, i32* %i_mv_range, align 4, !tbaa !109
  %i_chroma_qp_offset = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 6
  store i32 0, i32* %i_chroma_qp_offset, align 4, !tbaa !110
  %b_fast_pskip = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 15
  store i32 1, i32* %b_fast_pskip, align 4, !tbaa !111
  %b_weighted_bipred = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 4
  store i32 1, i32* %b_weighted_bipred, align 4, !tbaa !112
  %i_weighted_pred = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 3
  store i32 2, i32* %i_weighted_pred, align 4, !tbaa !113
  %b_dct_decimate = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 16
  store i32 1, i32* %b_dct_decimate, align 4, !tbaa !114
  %b_transform_8x8 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 2
  store i32 1, i32* %b_transform_8x8, align 4, !tbaa !115
  %i_trellis = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 14
  store i32 1, i32* %i_trellis, align 4, !tbaa !116
  %arrayidx = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 23, i32 0
  store i32 21, i32* %arrayidx, align 4, !tbaa !2
  %arrayidx55 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 23, i32 1
  store i32 11, i32* %arrayidx55, align 4, !tbaa !2
  %b_psnr = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 24
  store i32 0, i32* %b_psnr, align 4, !tbaa !117
  %b_ssim = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 25
  store i32 0, i32* %b_ssim, align 4, !tbaa !118
  %i_cqm_preset = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 36
  store i32 0, i32* %i_cqm_preset, align 8, !tbaa !119
  %arraydecay = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 38, i32 0
  %b_repeat_headers = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 59
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(320) %arraydecay, i8 16, i64 320, i1 false)
  store i32 1, i32* %b_repeat_headers, align 4, !tbaa !120
  %b_annexb = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 60
  store i32 1, i32* %b_annexb, align 8, !tbaa !121
  %b_aud = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 58
  store i32 0, i32* %b_aud, align 8, !tbaa !122
  %b_vfr_input = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 62
  store i32 1, i32* %b_vfr_input, align 8, !tbaa !123
  %i_nal_hrd = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 13
  store i32 0, i32* %i_nal_hrd, align 4, !tbaa !124
  %b_tff = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 68
  store i32 1, i32* %b_tff, align 8, !tbaa !125
  %b_pic_struct = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 69
  store i32 0, i32* %b_pic_struct, align 4, !tbaa !126
  %b_fake_interlaced = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 70
  store i32 0, i32* %b_fake_interlaced, align 8, !tbaa !127
  %i_frame_packing = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 54
  store i32 -1, i32* %i_frame_packing, align 4, !tbaa !128
  %i_alternative_transfer = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 57
  store i32 2, i32* %i_alternative_transfer, align 4, !tbaa !129
  %b_opencl = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 72
  %i_avcintra_class = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 27
  store i32 0, i32* %i_avcintra_class, align 4, !tbaa !130
  %i_avcintra_flavor = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 28
  store i32 0, i32* %i_avcintra_flavor, align 8, !tbaa !131
  %1 = bitcast i32* %b_opencl to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  ret void
}

declare dso_local i32 @x264_cpu_detect() local_unnamed_addr #7

; Function Attrs: nounwind
define hidden i32 @x264_param_default_preset(%struct.x264_param_t* %param, i8* %preset, i8* %tune) local_unnamed_addr #4 {
entry:
  %end.i = alloca i8*, align 4
  tail call void @x264_param_default(%struct.x264_param_t* %param)
  %tobool = icmp eq i8* %preset, null
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = bitcast i8** %end.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #5
  %call.i = call i32 @strtol(i8* nonnull %preset, i8** nonnull %end.i, i32 10) #5
  %1 = load i8*, i8** %end.i, align 4, !tbaa !8
  %2 = load i8, i8* %1, align 1, !tbaa !10
  %cmp.i = icmp eq i8 %2, 0
  %3 = icmp ult i32 %call.i, 10
  %4 = and i1 %3, %cmp.i
  br i1 %4, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true
  %arrayidx.i = getelementptr inbounds [11 x i8*], [11 x i8*]* @x264_preset_names, i32 0, i32 %call.i
  %5 = load i8*, i8** %arrayidx.i, align 4, !tbaa !8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true
  %preset.addr.0.i = phi i8* [ %5, %if.then.i ], [ %preset, %land.lhs.true ]
  %call7.i = tail call i32 @strcasecmp(i8* %preset.addr.0.i, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.258, i32 0, i32 0)) #13
  %tobool.i = icmp eq i32 %call7.i, 0
  br i1 %tobool.i, label %if.then8.i, label %if.else.i

if.then8.i:                                       ; preds = %if.end.i
  %i_frame_reference.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 15
  store i32 1, i32* %i_frame_reference.i, align 4, !tbaa !54
  %i_scenecut_threshold.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 19
  store i32 0, i32* %i_scenecut_threshold.i, align 4, !tbaa !58
  %b_deblocking_filter.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 29
  store i32 0, i32* %b_deblocking_filter.i, align 4, !tbaa !64
  %b_cabac.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 32
  store i32 0, i32* %b_cabac.i, align 8, !tbaa !67
  %i_bframe.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 21
  store i32 0, i32* %i_bframe.i, align 4, !tbaa !57
  %intra.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 0
  %i_me_method.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 7
  store i32 0, i32* %i_me_method.i, align 4, !tbaa !100
  %i_subpel_refine.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 11
  store i32 0, i32* %i_subpel_refine.i, align 4, !tbaa !105
  %i_aq_mode.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 52, i32 15
  store i32 0, i32* %i_aq_mode.i, align 4, !tbaa !82
  %b_mixed_references.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 13
  store i32 0, i32* %b_mixed_references.i, align 4, !tbaa !106
  %i_trellis.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 14
  store i32 0, i32* %i_trellis.i, align 4, !tbaa !116
  %i_bframe_adaptive.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 22
  store i32 0, i32* %i_bframe_adaptive.i, align 8, !tbaa !59
  %b_mb_tree.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 52, i32 17
  store i32 0, i32* %b_mb_tree.i, align 4, !tbaa !93
  %i_lookahead.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 52, i32 18
  store i32 0, i32* %i_lookahead.i, align 8, !tbaa !84
  %6 = bitcast i32* %intra.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(20) %6, i8 0, i64 20, i1 false) #5
  br label %param_apply_preset.exit.thread

if.else.i:                                        ; preds = %if.end.i
  %call19.i = tail call i32 @strcasecmp(i8* %preset.addr.0.i, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.259, i32 0, i32 0)) #13
  %tobool20.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.i, label %if.then21.i, label %if.else39.i

if.then21.i:                                      ; preds = %if.else.i
  %inter23.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 1
  store i32 3, i32* %inter23.i, align 4, !tbaa !98
  %i_me_method25.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 7
  store i32 0, i32* %i_me_method25.i, align 4, !tbaa !100
  %i_subpel_refine27.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 11
  store i32 1, i32* %i_subpel_refine27.i, align 4, !tbaa !105
  %i_frame_reference28.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 15
  store i32 1, i32* %i_frame_reference28.i, align 4, !tbaa !54
  %b_mixed_references30.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 13
  store i32 0, i32* %b_mixed_references30.i, align 4, !tbaa !106
  %i_trellis32.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 14
  store i32 0, i32* %i_trellis32.i, align 4, !tbaa !116
  %b_mb_tree34.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 52, i32 17
  store i32 0, i32* %b_mb_tree34.i, align 4, !tbaa !93
  %i_weighted_pred36.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 3
  store i32 1, i32* %i_weighted_pred36.i, align 4, !tbaa !113
  %i_lookahead38.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 52, i32 18
  store i32 0, i32* %i_lookahead38.i, align 8, !tbaa !84
  br label %param_apply_preset.exit.thread

if.else39.i:                                      ; preds = %if.else.i
  %call40.i = tail call i32 @strcasecmp(i8* %preset.addr.0.i, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.260, i32 0, i32 0)) #13
  %tobool41.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.i, label %if.then42.i, label %if.else54.i

if.then42.i:                                      ; preds = %if.else39.i
  %i_subpel_refine44.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 11
  store i32 2, i32* %i_subpel_refine44.i, align 4, !tbaa !105
  %i_frame_reference45.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 15
  store i32 1, i32* %i_frame_reference45.i, align 4, !tbaa !54
  %b_mixed_references47.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 13
  store i32 0, i32* %b_mixed_references47.i, align 4, !tbaa !106
  %i_trellis49.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 14
  store i32 0, i32* %i_trellis49.i, align 4, !tbaa !116
  %i_weighted_pred51.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 3
  store i32 1, i32* %i_weighted_pred51.i, align 4, !tbaa !113
  %i_lookahead53.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 52, i32 18
  store i32 10, i32* %i_lookahead53.i, align 8, !tbaa !84
  br label %param_apply_preset.exit.thread

if.else54.i:                                      ; preds = %if.else39.i
  %call55.i = tail call i32 @strcasecmp(i8* %preset.addr.0.i, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.261, i32 0, i32 0)) #13
  %tobool56.i = icmp eq i32 %call55.i, 0
  br i1 %tobool56.i, label %if.then57.i, label %if.else67.i

if.then57.i:                                      ; preds = %if.else54.i
  %b_mixed_references59.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 13
  store i32 0, i32* %b_mixed_references59.i, align 4, !tbaa !106
  %i_frame_reference60.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 15
  store i32 2, i32* %i_frame_reference60.i, align 4, !tbaa !54
  %i_subpel_refine62.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 11
  store i32 4, i32* %i_subpel_refine62.i, align 4, !tbaa !105
  %i_weighted_pred64.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 3
  store i32 1, i32* %i_weighted_pred64.i, align 4, !tbaa !113
  %i_lookahead66.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 52, i32 18
  store i32 20, i32* %i_lookahead66.i, align 8, !tbaa !84
  br label %param_apply_preset.exit.thread

if.else67.i:                                      ; preds = %if.else54.i
  %call68.i = tail call i32 @strcasecmp(i8* %preset.addr.0.i, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.262, i32 0, i32 0)) #13
  %tobool69.i = icmp eq i32 %call68.i, 0
  br i1 %tobool69.i, label %if.then70.i, label %if.else78.i

if.then70.i:                                      ; preds = %if.else67.i
  %i_frame_reference71.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 15
  store i32 2, i32* %i_frame_reference71.i, align 4, !tbaa !54
  %i_subpel_refine73.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 11
  store i32 6, i32* %i_subpel_refine73.i, align 4, !tbaa !105
  %i_weighted_pred75.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 3
  store i32 1, i32* %i_weighted_pred75.i, align 4, !tbaa !113
  %i_lookahead77.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 52, i32 18
  store i32 30, i32* %i_lookahead77.i, align 8, !tbaa !84
  br label %param_apply_preset.exit.thread

if.else78.i:                                      ; preds = %if.else67.i
  %call79.i = tail call i32 @strcasecmp(i8* %preset.addr.0.i, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.263, i32 0, i32 0)) #13
  %tobool80.i = icmp eq i32 %call79.i, 0
  br i1 %tobool80.i, label %param_apply_preset.exit.thread, label %if.else82.i

if.else82.i:                                      ; preds = %if.else78.i
  %call83.i = tail call i32 @strcasecmp(i8* %preset.addr.0.i, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.264, i32 0, i32 0)) #13
  %tobool84.i = icmp eq i32 %call83.i, 0
  br i1 %tobool84.i, label %if.then85.i, label %if.else94.i

if.then85.i:                                      ; preds = %if.else82.i
  %i_subpel_refine87.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 11
  store i32 8, i32* %i_subpel_refine87.i, align 4, !tbaa !105
  %i_frame_reference88.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 15
  store i32 5, i32* %i_frame_reference88.i, align 4, !tbaa !54
  %i_direct_mv_pred.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 5
  store i32 3, i32* %i_direct_mv_pred.i, align 4, !tbaa !99
  %i_trellis91.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 14
  store i32 2, i32* %i_trellis91.i, align 4, !tbaa !116
  %i_lookahead93.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 52, i32 18
  store i32 50, i32* %i_lookahead93.i, align 8, !tbaa !84
  br label %param_apply_preset.exit.thread

if.else94.i:                                      ; preds = %if.else82.i
  %call95.i = tail call i32 @strcasecmp(i8* %preset.addr.0.i, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.265, i32 0, i32 0)) #13
  %tobool96.i = icmp eq i32 %call95.i, 0
  br i1 %tobool96.i, label %if.then97.i, label %if.else112.i

if.then97.i:                                      ; preds = %if.else94.i
  %i_me_method99.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 7
  store i32 2, i32* %i_me_method99.i, align 4, !tbaa !100
  %i_subpel_refine101.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 11
  store i32 9, i32* %i_subpel_refine101.i, align 4, !tbaa !105
  %i_frame_reference102.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 15
  store i32 8, i32* %i_frame_reference102.i, align 4, !tbaa !54
  %i_bframe_adaptive103.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 22
  store i32 2, i32* %i_bframe_adaptive103.i, align 8, !tbaa !59
  %i_direct_mv_pred105.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 5
  store i32 3, i32* %i_direct_mv_pred105.i, align 4, !tbaa !99
  %inter107.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 1
  %7 = load i32, i32* %inter107.i, align 4, !tbaa !98
  %or.i = or i32 %7, 32
  store i32 %or.i, i32* %inter107.i, align 4, !tbaa !98
  %i_trellis109.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 14
  store i32 2, i32* %i_trellis109.i, align 4, !tbaa !116
  %i_lookahead111.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 52, i32 18
  store i32 60, i32* %i_lookahead111.i, align 8, !tbaa !84
  br label %param_apply_preset.exit.thread

if.else112.i:                                     ; preds = %if.else94.i
  %call113.i = tail call i32 @strcasecmp(i8* %preset.addr.0.i, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.266, i32 0, i32 0)) #13
  %tobool114.i = icmp eq i32 %call113.i, 0
  br i1 %tobool114.i, label %if.then115.i, label %if.else133.i

if.then115.i:                                     ; preds = %if.else112.i
  %i_me_method117.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 7
  store i32 2, i32* %i_me_method117.i, align 4, !tbaa !100
  %i_subpel_refine119.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 11
  store i32 10, i32* %i_subpel_refine119.i, align 4, !tbaa !105
  %i_me_range.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 8
  store i32 24, i32* %i_me_range.i, align 4, !tbaa !104
  %i_frame_reference121.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 15
  store i32 16, i32* %i_frame_reference121.i, align 4, !tbaa !54
  %i_bframe_adaptive122.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 22
  store i32 2, i32* %i_bframe_adaptive122.i, align 8, !tbaa !59
  %i_direct_mv_pred124.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 5
  store i32 3, i32* %i_direct_mv_pred124.i, align 4, !tbaa !99
  %inter126.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 1
  %8 = load i32, i32* %inter126.i, align 4, !tbaa !98
  %or127.i = or i32 %8, 32
  store i32 %or127.i, i32* %inter126.i, align 4, !tbaa !98
  %i_trellis129.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 14
  store i32 2, i32* %i_trellis129.i, align 4, !tbaa !116
  %i_bframe130.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 21
  store i32 8, i32* %i_bframe130.i, align 4, !tbaa !57
  %i_lookahead132.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 52, i32 18
  store i32 60, i32* %i_lookahead132.i, align 8, !tbaa !84
  br label %param_apply_preset.exit.thread

if.else133.i:                                     ; preds = %if.else112.i
  %call134.i = tail call i32 @strcasecmp(i8* %preset.addr.0.i, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.267, i32 0, i32 0)) #13
  %tobool135.i = icmp eq i32 %call134.i, 0
  br i1 %tobool135.i, label %if.then136.i, label %param_apply_preset.exit

if.then136.i:                                     ; preds = %if.else133.i
  %i_me_method138.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 7
  store i32 4, i32* %i_me_method138.i, align 4, !tbaa !100
  %i_subpel_refine140.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 11
  store i32 11, i32* %i_subpel_refine140.i, align 4, !tbaa !105
  %i_me_range142.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 8
  store i32 24, i32* %i_me_range142.i, align 4, !tbaa !104
  %i_frame_reference143.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 15
  store i32 16, i32* %i_frame_reference143.i, align 4, !tbaa !54
  %i_bframe_adaptive144.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 22
  store i32 2, i32* %i_bframe_adaptive144.i, align 8, !tbaa !59
  %i_direct_mv_pred146.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 5
  store i32 3, i32* %i_direct_mv_pred146.i, align 4, !tbaa !99
  %inter148.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 1
  %9 = load i32, i32* %inter148.i, align 4, !tbaa !98
  %or149.i = or i32 %9, 32
  store i32 %or149.i, i32* %inter148.i, align 4, !tbaa !98
  %b_fast_pskip.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 15
  store i32 0, i32* %b_fast_pskip.i, align 4, !tbaa !111
  %i_trellis152.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 14
  store i32 2, i32* %i_trellis152.i, align 4, !tbaa !116
  %i_bframe153.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 21
  store i32 16, i32* %i_bframe153.i, align 4, !tbaa !57
  %i_lookahead155.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 52, i32 18
  store i32 60, i32* %i_lookahead155.i, align 8, !tbaa !84
  br label %param_apply_preset.exit.thread

param_apply_preset.exit.thread:                   ; preds = %if.else78.i, %if.then21.i, %if.then57.i, %if.then97.i, %if.then136.i, %if.then115.i, %if.then85.i, %if.then70.i, %if.then42.i, %if.then8.i
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #5
  br label %if.end

param_apply_preset.exit:                          ; preds = %if.else133.i
  tail call void (i32, i8*, ...) @x264_log_internal(i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.268, i32 0, i32 0), i8* %preset.addr.0.i) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #5
  br label %return

if.end:                                           ; preds = %param_apply_preset.exit.thread, %entry
  %tobool1 = icmp eq i8* %tune, null
  br i1 %tobool1, label %return, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %if.end
  %i_frame_reference116.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 15
  %i_deblocking_filter_alphac0125.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 30
  %i_deblocking_filter_beta126.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 31
  %f_psy_trellis128.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 19
  %f_aq_strength130.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 52, i32 16
  %inter.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 1
  %i_lookahead.i11 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 52, i32 18
  %i_sync_lookahead.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 6
  %i_bframe104.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 21
  %b_sliced_threads.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 3
  %b_vfr_input.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 62
  %b_mb_tree.i12 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 52, i32 17
  %b_deblocking_filter.i13 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 29
  %b_cabac.i14 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 32
  %b_weighted_bipred.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 4
  %i_weighted_pred.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 3
  %f_psy_rd58.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 18
  %b_dct_decimate.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 16
  %f_pb_factor.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 52, i32 13
  %f_ip_factor.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 52, i32 12
  %arrayidx.i15 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 23, i32 0
  %arrayidx43.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 23, i32 1
  %f_qcompress.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 52, i32 23
  %i_aq_mode86.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 52, i32 15
  %b_psy88.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 20
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.inc.i, %land.lhs.true2
  %tune.addr.0.i = phi i8* [ %tune, %land.lhs.true2 ], [ %add.ptr147.i, %for.inc.i ]
  %psy_tuning_used.0.i = phi i32 [ 0, %land.lhs.true2 ], [ %psy_tuning_used.2.i, %for.inc.i ]
  %call.i16 = tail call i32 @strspn(i8* %tune.addr.0.i, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.269, i32 0, i32 0)) #13
  %add.ptr.i = getelementptr inbounds i8, i8* %tune.addr.0.i, i32 %call.i16
  %call1.i = tail call i32 @strcspn(i8* %add.ptr.i, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.269, i32 0, i32 0)) #13
  switch i32 %call1.i, label %if.else106.split.i [
    i32 0, label %return
    i32 4, label %land.lhs.true.i
    i32 9, label %land.lhs.true7.i
    i32 5, label %land.lhs.true23.i
    i32 10, label %land.lhs.true47.i
    i32 11, label %land.lhs.true99.i
    i32 6, label %land.lhs.true108.i
  ]

land.lhs.true.i:                                  ; preds = %for.cond.i
  %call2.i = tail call i32 @strncasecmp(i8* %add.ptr.i, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.270, i32 0, i32 0), i32 4) #13
  %tobool3.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.i, label %if.then.i17, label %land.lhs.true65.i

if.then.i17:                                      ; preds = %land.lhs.true.i
  %tobool4.i = icmp eq i32 %psy_tuning_used.0.i, 0
  br i1 %tobool4.i, label %if.end.i18, label %psy_failure.i

if.end.i18:                                       ; preds = %if.then.i17
  store i32 -1, i32* %i_deblocking_filter_alphac0125.i, align 8, !tbaa !65
  store i32 -1, i32* %i_deblocking_filter_beta126.i, align 4, !tbaa !66
  store float 0x3FC3333340000000, float* %f_psy_trellis128.i, align 4, !tbaa !103
  br label %for.inc.i

land.lhs.true7.i:                                 ; preds = %for.cond.i
  %call8.i = tail call i32 @strncasecmp(i8* %add.ptr.i, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.271, i32 0, i32 0), i32 9) #13
  %tobool9.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.i, label %if.then10.i, label %if.else106.split.i

if.then10.i:                                      ; preds = %land.lhs.true7.i
  %tobool12.i = icmp eq i32 %psy_tuning_used.0.i, 0
  br i1 %tobool12.i, label %if.end14.i, label %psy_failure.i

if.end14.i:                                       ; preds = %if.then10.i
  %10 = load i32, i32* %i_frame_reference116.i, align 4, !tbaa !54
  %cmp15.i = icmp sgt i32 %10, 1
  %mul.i = shl nsw i32 %10, 1
  %spec.select.i = select i1 %cmp15.i, i32 %mul.i, i32 1
  store i32 %spec.select.i, i32* %i_frame_reference116.i, align 4, !tbaa !54
  store i32 1, i32* %i_deblocking_filter_alphac0125.i, align 8, !tbaa !65
  store i32 1, i32* %i_deblocking_filter_beta126.i, align 4, !tbaa !66
  store float 0x3FD99999A0000000, float* %f_psy_rd58.i, align 4, !tbaa !101
  store float 0x3FE3333340000000, float* %f_aq_strength130.i, align 8, !tbaa !83
  %11 = load i32, i32* %i_bframe104.i, align 4, !tbaa !57
  %add.i = add nsw i32 %11, 2
  store i32 %add.i, i32* %i_bframe104.i, align 4, !tbaa !57
  br label %for.inc.i

land.lhs.true23.i:                                ; preds = %for.cond.i
  %call24.i = tail call i32 @strncasecmp(i8* %add.ptr.i, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.272, i32 0, i32 0), i32 5) #13
  %tobool25.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.i, label %if.then26.i, label %if.else106.split.i

if.then26.i:                                      ; preds = %land.lhs.true23.i
  %tobool28.i = icmp eq i32 %psy_tuning_used.0.i, 0
  br i1 %tobool28.i, label %if.end30.i, label %psy_failure.i

if.end30.i:                                       ; preds = %if.then26.i
  store i32 -2, i32* %i_deblocking_filter_alphac0125.i, align 8, !tbaa !65
  store i32 -2, i32* %i_deblocking_filter_beta126.i, align 4, !tbaa !66
  store float 2.500000e-01, float* %f_psy_trellis128.i, align 4, !tbaa !103
  store i32 0, i32* %b_dct_decimate.i, align 4, !tbaa !114
  store float 0x3FF19999A0000000, float* %f_pb_factor.i, align 4, !tbaa !81
  store float 0x3FF19999A0000000, float* %f_ip_factor.i, align 8, !tbaa !80
  store float 5.000000e-01, float* %f_aq_strength130.i, align 8, !tbaa !83
  store i32 6, i32* %arrayidx.i15, align 4, !tbaa !2
  store i32 6, i32* %arrayidx43.i, align 4, !tbaa !2
  store float 0x3FE99999A0000000, float* %f_qcompress.i, align 4, !tbaa !89
  br label %for.inc.i

land.lhs.true47.i:                                ; preds = %for.cond.i
  %call48.i = tail call i32 @strncasecmp(i8* %add.ptr.i, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.273, i32 0, i32 0), i32 10) #13
  %tobool49.i = icmp eq i32 %call48.i, 0
  br i1 %tobool49.i, label %if.then50.i, label %land.lhs.true91.i

if.then50.i:                                      ; preds = %land.lhs.true47.i
  %tobool52.i = icmp eq i32 %psy_tuning_used.0.i, 0
  br i1 %tobool52.i, label %if.end54.i, label %psy_failure.i

if.end54.i:                                       ; preds = %if.then50.i
  store i32 -3, i32* %i_deblocking_filter_alphac0125.i, align 8, !tbaa !65
  store i32 -3, i32* %i_deblocking_filter_beta126.i, align 4, !tbaa !66
  store float 2.000000e+00, float* %f_psy_rd58.i, align 4, !tbaa !101
  store float 0x3FE6666660000000, float* %f_psy_trellis128.i, align 4, !tbaa !103
  store float 0x3FF3333340000000, float* %f_aq_strength130.i, align 8, !tbaa !83
  br label %for.inc.i

land.lhs.true65.i:                                ; preds = %land.lhs.true.i
  %call66.i = tail call i32 @strncasecmp(i8* %add.ptr.i, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.173, i32 0, i32 0), i32 4) #13
  %tobool67.i = icmp eq i32 %call66.i, 0
  br i1 %tobool67.i, label %if.then68.i, label %land.lhs.true77.i

if.then68.i:                                      ; preds = %land.lhs.true65.i
  %tobool70.i = icmp eq i32 %psy_tuning_used.0.i, 0
  br i1 %tobool70.i, label %if.end72.i, label %psy_failure.i

if.end72.i:                                       ; preds = %if.then68.i
  store i32 0, i32* %i_aq_mode86.i, align 4, !tbaa !82
  store i32 0, i32* %b_psy88.i, align 4, !tbaa !102
  br label %for.inc.i

land.lhs.true77.i:                                ; preds = %land.lhs.true65.i
  %call78.i = tail call i32 @strncasecmp(i8* %add.ptr.i, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.174, i32 0, i32 0), i32 4) #13
  %tobool79.i = icmp eq i32 %call78.i, 0
  br i1 %tobool79.i, label %if.then80.i, label %if.else106.split.i

if.then80.i:                                      ; preds = %land.lhs.true77.i
  %tobool82.i = icmp eq i32 %psy_tuning_used.0.i, 0
  br i1 %tobool82.i, label %if.end84.i, label %psy_failure.i

if.end84.i:                                       ; preds = %if.then80.i
  store i32 2, i32* %i_aq_mode86.i, align 4, !tbaa !82
  store i32 0, i32* %b_psy88.i, align 4, !tbaa !102
  br label %for.inc.i

land.lhs.true91.i:                                ; preds = %land.lhs.true47.i
  %call92.i = tail call i32 @strncasecmp(i8* %add.ptr.i, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.274, i32 0, i32 0), i32 10) #13
  %tobool93.i = icmp eq i32 %call92.i, 0
  br i1 %tobool93.i, label %if.then94.i, label %if.else106.split.i

if.then94.i:                                      ; preds = %land.lhs.true91.i
  store i32 0, i32* %b_deblocking_filter.i13, align 4, !tbaa !64
  store i32 0, i32* %b_cabac.i14, align 8, !tbaa !67
  store i32 0, i32* %b_weighted_bipred.i, align 4, !tbaa !112
  store i32 0, i32* %i_weighted_pred.i, align 4, !tbaa !113
  br label %for.inc.i

land.lhs.true99.i:                                ; preds = %for.cond.i
  %call100.i = tail call i32 @strncasecmp(i8* %add.ptr.i, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.275, i32 0, i32 0), i32 11) #13
  %tobool101.i = icmp eq i32 %call100.i, 0
  br i1 %tobool101.i, label %if.then102.i, label %if.else106.split.i

if.then102.i:                                     ; preds = %land.lhs.true99.i
  store i32 0, i32* %i_lookahead.i11, align 8, !tbaa !84
  store i32 0, i32* %i_sync_lookahead.i, align 8, !tbaa !34
  store i32 0, i32* %i_bframe104.i, align 4, !tbaa !57
  store i32 1, i32* %b_sliced_threads.i, align 4, !tbaa !132
  store i32 0, i32* %b_vfr_input.i, align 8, !tbaa !123
  store i32 0, i32* %b_mb_tree.i12, align 4, !tbaa !93
  br label %for.inc.i

if.else106.split.i:                               ; preds = %land.lhs.true99.i, %land.lhs.true91.i, %land.lhs.true77.i, %land.lhs.true23.i, %land.lhs.true7.i, %for.cond.i
  tail call void (i32, i8*, ...) @x264_log_internal(i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.277, i32 0, i32 0), i32 %call1.i, i8* %add.ptr.i) #5
  br label %return

land.lhs.true108.i:                               ; preds = %for.cond.i
  %call109.i = tail call i32 @strncasecmp(i8* %add.ptr.i, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.276, i32 0, i32 0), i32 6) #13
  %tobool110.i = icmp eq i32 %call109.i, 0
  br i1 %tobool110.i, label %if.then111.i, label %land.lhs.true108.split.i

land.lhs.true108.split.i:                         ; preds = %land.lhs.true108.i
  tail call void (i32, i8*, ...) @x264_log_internal(i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.277, i32 0, i32 0), i32 6, i8* %add.ptr.i) #5
  br label %return

if.then111.i:                                     ; preds = %land.lhs.true108.i
  %tobool113.i = icmp eq i32 %psy_tuning_used.0.i, 0
  br i1 %tobool113.i, label %if.end115.i, label %psy_failure.i

if.end115.i:                                      ; preds = %if.then111.i
  %12 = load i32, i32* %i_frame_reference116.i, align 4, !tbaa !54
  %cmp117.i = icmp sgt i32 %12, 1
  %mul120.i = shl nsw i32 %12, 1
  %spec.select232.i = select i1 %cmp117.i, i32 %mul120.i, i32 1
  store i32 %spec.select232.i, i32* %i_frame_reference116.i, align 4, !tbaa !54
  store i32 -1, i32* %i_deblocking_filter_alphac0125.i, align 8, !tbaa !65
  store i32 -1, i32* %i_deblocking_filter_beta126.i, align 4, !tbaa !66
  store float 0x3FC99999A0000000, float* %f_psy_trellis128.i, align 4, !tbaa !103
  store float 0x3FF4CCCCC0000000, float* %f_aq_strength130.i, align 8, !tbaa !83
  %13 = load i32, i32* %inter.i, align 4, !tbaa !98
  %and.i = and i32 %13, 16
  %tobool132.i = icmp eq i32 %and.i, 0
  br i1 %tobool132.i, label %for.inc.i, label %if.then133.i

if.then133.i:                                     ; preds = %if.end115.i
  %or.i19 = or i32 %13, 32
  store i32 %or.i19, i32* %inter.i, align 4, !tbaa !98
  br label %for.inc.i

psy_failure.i:                                    ; preds = %if.then111.i, %if.then80.i, %if.then68.i, %if.then50.i, %if.then26.i, %if.then10.i, %if.then.i17
  %psy_tuning_used.1.i = add nsw i32 %psy_tuning_used.0.i, 1
  tail call void (i32, i8*, ...) @x264_log_internal(i32 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.278, i32 0, i32 0), i32 %call1.i, i8* %add.ptr.i) #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %psy_failure.i, %if.then133.i, %if.end115.i, %if.then102.i, %if.then94.i, %if.end84.i, %if.end72.i, %if.end54.i, %if.end30.i, %if.end14.i, %if.end.i18
  %psy_tuning_used.2.i = phi i32 [ %psy_tuning_used.1.i, %psy_failure.i ], [ 1, %if.then133.i ], [ 1, %if.end115.i ], [ %psy_tuning_used.0.i, %if.then102.i ], [ %psy_tuning_used.0.i, %if.then94.i ], [ 1, %if.end84.i ], [ 1, %if.end72.i ], [ 1, %if.end54.i ], [ 1, %if.end30.i ], [ 1, %if.end14.i ], [ 1, %if.end.i18 ]
  %add.ptr147.i = getelementptr inbounds i8, i8* %add.ptr.i, i32 %call1.i
  br label %for.cond.i

return:                                           ; preds = %for.cond.i, %if.else106.split.i, %land.lhs.true108.split.i, %if.end, %param_apply_preset.exit
  %retval.0 = phi i32 [ -1, %param_apply_preset.exit ], [ 0, %if.end ], [ -1, %land.lhs.true108.split.i ], [ -1, %if.else106.split.i ], [ %call1.i, %for.cond.i ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nounwind
define hidden void @x264_param_apply_fastfirstpass(%struct.x264_param_t* nocapture %param) local_unnamed_addr #0 {
entry:
  %b_stat_write = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 52, i32 19
  %0 = load i32, i32* %b_stat_write, align 4, !tbaa !85
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %b_stat_read = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 52, i32 21
  %1 = load i32, i32* %b_stat_read, align 4, !tbaa !87
  %tobool2 = icmp eq i32 %1, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %i_frame_reference = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 15
  store i32 1, i32* %i_frame_reference, align 4, !tbaa !54
  %b_transform_8x8 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 2
  store i32 0, i32* %b_transform_8x8, align 4, !tbaa !115
  %inter = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 1
  store i32 0, i32* %inter, align 4, !tbaa !98
  %i_me_method = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 7
  store i32 0, i32* %i_me_method, align 4, !tbaa !100
  %i_subpel_refine = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 11
  %2 = load i32, i32* %i_subpel_refine, align 4, !tbaa !105
  %3 = icmp slt i32 %2, 2
  %spec.select = select i1 %3, i32 %2, i32 2
  store i32 %spec.select, i32* %i_subpel_refine, align 4, !tbaa !105
  %i_trellis = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 14
  store i32 0, i32* %i_trellis, align 4, !tbaa !116
  %b_fast_pskip = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 15
  store i32 1, i32* %b_fast_pskip, align 4, !tbaa !111
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry, %if.then
  ret void
}

; Function Attrs: nounwind
define hidden i32 @x264_param_apply_profile(%struct.x264_param_t* nocapture %param, i8* %profile) local_unnamed_addr #4 {
entry:
  %tobool = icmp eq i8* %profile, null
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %i_bitdepth = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 10
  %0 = load i32, i32* %i_bitdepth, align 8, !tbaa !53
  %1 = mul i32 %0, 6
  %mul = add i32 %1, -48
  %call.i = tail call i32 @strcasecmp(i8* nonnull %profile, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.279, i32 0, i32 0)) #13
  %tobool.i = icmp eq i32 %call.i, 0
  br i1 %tobool.i, label %land.lhs.true, label %if.end.i

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @strcasecmp(i8* nonnull %profile, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.280, i32 0, i32 0)) #13
  %tobool2.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.i, label %land.lhs.true, label %if.end4.i

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = tail call i32 @strcasecmp(i8* nonnull %profile, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.281, i32 0, i32 0)) #13
  %tobool6.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.i, label %land.lhs.true, label %if.end8.i

if.end8.i:                                        ; preds = %if.end4.i
  %call9.i = tail call i32 @strcasecmp(i8* nonnull %profile, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.282, i32 0, i32 0)) #13
  %tobool10.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.i, label %land.lhs.true, label %if.end12.i

if.end12.i:                                       ; preds = %if.end8.i
  %call13.i = tail call i32 @strcasecmp(i8* nonnull %profile, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.283, i32 0, i32 0)) #13
  %tobool14.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.i, label %land.lhs.true, label %if.end16.i

if.end16.i:                                       ; preds = %if.end12.i
  %call17.i = tail call i32 @strcasecmp(i8* nonnull %profile, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.284, i32 0, i32 0)) #13
  %tobool18.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.i, label %return, label %if.then1

if.then1:                                         ; preds = %if.end16.i
  tail call void (i32, i8*, ...) @x264_log_internal(i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0), i8* nonnull %profile)
  br label %return

land.lhs.true:                                    ; preds = %if.end12.i, %if.end8.i, %if.end4.i, %if.end.i, %if.end
  %retval.0.i.ph.ph = phi i32 [ 66, %if.end ], [ 77, %if.end.i ], [ 100, %if.end4.i ], [ 110, %if.end8.i ], [ 122, %if.end12.i ]
  %i_rc_method = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 52, i32 0
  %2 = load i32, i32* %i_rc_method, align 8, !tbaa !69
  switch i32 %2, label %land.lhs.true20 [
    i32 0, label %land.lhs.true5
    i32 1, label %land.lhs.true11
  ]

land.lhs.true5:                                   ; preds = %land.lhs.true
  %i_qp_constant = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 52, i32 1
  %3 = load i32, i32* %i_qp_constant, align 4, !tbaa !75
  %cmp7 = icmp slt i32 %3, 1
  br i1 %cmp7, label %if.then16, label %land.lhs.true20

land.lhs.true11:                                  ; preds = %land.lhs.true
  %f_rf_constant = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 52, i32 6
  %4 = load float, float* %f_rf_constant, align 8, !tbaa !76
  %conv = sitofp i32 %mul to float
  %add = fadd fast float %4, %conv
  %conv13 = fptosi float %add to i32
  %cmp14 = icmp slt i32 %conv13, 1
  br i1 %cmp14, label %if.then16, label %land.lhs.true20

if.then16:                                        ; preds = %land.lhs.true11, %land.lhs.true5
  tail call void (i32, i8*, ...) @x264_log_internal(i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i32 0, i32 0), i8* nonnull %profile)
  br label %return

land.lhs.true20:                                  ; preds = %land.lhs.true, %land.lhs.true5, %land.lhs.true11
  %i_csp = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 9
  %5 = load i32, i32* %i_csp, align 4, !tbaa !35
  %and = and i32 %5, 252
  %cmp21 = icmp ugt i32 %and, 11
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %land.lhs.true20
  tail call void (i32, i8*, ...) @x264_log_internal(i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i32 0, i32 0), i8* nonnull %profile)
  br label %return

if.end24:                                         ; preds = %land.lhs.true20
  %cmp25 = icmp ult i32 %retval.0.i.ph.ph, 122
  br i1 %cmp25, label %land.lhs.true27, label %return

land.lhs.true27:                                  ; preds = %if.end24
  %and29 = and i32 %5, 254
  %cmp30 = icmp ugt i32 %and29, 5
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %land.lhs.true27
  tail call void (i32, i8*, ...) @x264_log_internal(i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i32 0, i32 0), i8* nonnull %profile)
  br label %return

if.end33:                                         ; preds = %land.lhs.true27
  %cmp34 = icmp ult i32 %retval.0.i.ph.ph, 110
  br i1 %cmp34, label %land.lhs.true36, label %if.end51

land.lhs.true36:                                  ; preds = %if.end33
  %cmp38 = icmp sgt i32 %0, 8
  br i1 %cmp38, label %if.then40, label %if.end42

if.then40:                                        ; preds = %land.lhs.true36
  tail call void (i32, i8*, ...) @x264_log_internal(i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i32 0, i32 0), i8* nonnull %profile, i32 %0)
  br label %return

if.end42:                                         ; preds = %land.lhs.true36
  %cmp43 = icmp ult i32 %retval.0.i.ph.ph, 100
  %and47 = and i32 %5, 255
  %cmp48 = icmp eq i32 %and47, 1
  %or.cond = and i1 %cmp43, %cmp48
  br i1 %or.cond, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.end42
  tail call void (i32, i8*, ...) @x264_log_internal(i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i32 0, i32 0), i8* nonnull %profile)
  br label %return

if.end51:                                         ; preds = %if.end33, %if.end42
  switch i32 %retval.0.i.ph.ph, label %return [
    i32 66, label %if.then54
    i32 77, label %if.then64
  ]

if.then54:                                        ; preds = %if.end51
  %b_transform_8x8 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 2
  store i32 0, i32* %b_transform_8x8, align 4, !tbaa !115
  %b_cabac = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 32
  store i32 0, i32* %b_cabac, align 8, !tbaa !67
  %i_cqm_preset = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 36
  store i32 0, i32* %i_cqm_preset, align 8, !tbaa !119
  %psz_cqm_file = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 37
  store i8* null, i8** %psz_cqm_file, align 4, !tbaa !133
  %i_bframe = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 21
  store i32 0, i32* %i_bframe, align 4, !tbaa !57
  %i_weighted_pred = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 3
  store i32 0, i32* %i_weighted_pred, align 4, !tbaa !113
  %b_interlaced = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 34
  %6 = load i32, i32* %b_interlaced, align 8, !tbaa !62
  %tobool56 = icmp eq i32 %6, 0
  br i1 %tobool56, label %if.end58, label %if.then57

if.then57:                                        ; preds = %if.then54
  tail call void (i32, i8*, ...) @x264_log_internal(i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.17, i32 0, i32 0))
  br label %return

if.end58:                                         ; preds = %if.then54
  %b_fake_interlaced = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 70
  %7 = load i32, i32* %b_fake_interlaced, align 8, !tbaa !127
  %tobool59 = icmp eq i32 %7, 0
  br i1 %tobool59, label %return, label %if.then60

if.then60:                                        ; preds = %if.end58
  tail call void (i32, i8*, ...) @x264_log_internal(i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.18, i32 0, i32 0))
  br label %return

if.then64:                                        ; preds = %if.end51
  %b_transform_8x866 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 51, i32 2
  store i32 0, i32* %b_transform_8x866, align 4, !tbaa !115
  %i_cqm_preset67 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 36
  store i32 0, i32* %i_cqm_preset67, align 8, !tbaa !119
  %psz_cqm_file68 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 37
  store i8* null, i8** %psz_cqm_file68, align 4, !tbaa !133
  br label %return

return:                                           ; preds = %if.end16.i, %if.end24, %if.then1, %if.then16, %if.then23, %if.then32, %if.then40, %if.then50, %if.then57, %if.then60, %if.end51, %if.end58, %if.then64, %entry
  %retval.1 = phi i32 [ 0, %entry ], [ -1, %if.then1 ], [ -1, %if.then16 ], [ -1, %if.then23 ], [ -1, %if.then32 ], [ -1, %if.then40 ], [ -1, %if.then50 ], [ -1, %if.then57 ], [ -1, %if.then60 ], [ 0, %if.end51 ], [ 0, %if.end58 ], [ 0, %if.then64 ], [ 0, %if.end24 ], [ 0, %if.end16.i ]
  ret i32 %retval.1
}

; Function Attrs: nounwind
define hidden i32 @x264_param_parse(%struct.x264_param_t* %p, i8* readonly %name, i8* %value) local_unnamed_addr #4 {
entry:
  %end.i3000 = alloca i8*, align 4
  %end.i2993 = alloca i8*, align 4
  %end.i2974 = alloca i8*, align 4
  %end.i2967 = alloca i8*, align 4
  %end.i2960 = alloca i8*, align 4
  %end.i2953 = alloca i8*, align 4
  %end.i2945 = alloca i8*, align 4
  %end.i2938 = alloca i8*, align 4
  %end.i2931 = alloca i8*, align 4
  %end.i2924 = alloca i8*, align 4
  %end.i2917 = alloca i8*, align 4
  %end.i2910 = alloca i8*, align 4
  %end.i2903 = alloca i8*, align 4
  %end.i2896 = alloca i8*, align 4
  %end.i2889 = alloca i8*, align 4
  %end.i2882 = alloca i8*, align 4
  %end.i2875 = alloca i8*, align 4
  %end.i2868 = alloca i8*, align 4
  %end.i2861 = alloca i8*, align 4
  %end.i2854 = alloca i8*, align 4
  %end.i2847 = alloca i8*, align 4
  %end.i2840 = alloca i8*, align 4
  %end.i2833 = alloca i8*, align 4
  %end.i2826 = alloca i8*, align 4
  %end.i2819 = alloca i8*, align 4
  %end.i2812 = alloca i8*, align 4
  %end.i2805 = alloca i8*, align 4
  %end.i2798 = alloca i8*, align 4
  %end.i2791 = alloca i8*, align 4
  %end.i2784 = alloca i8*, align 4
  %end.i2777 = alloca i8*, align 4
  %end.i2758 = alloca i8*, align 4
  %end.i2739 = alloca i8*, align 4
  %end.i2732 = alloca i8*, align 4
  %coef.i2707 = alloca i32, align 4
  %coef.i2682 = alloca i32, align 4
  %coef.i2657 = alloca i32, align 4
  %coef.i2632 = alloca i32, align 4
  %coef.i2607 = alloca i32, align 4
  %coef.i2582 = alloca i32, align 4
  %coef.i2557 = alloca i32, align 4
  %coef.i2532 = alloca i32, align 4
  %coef.i2507 = alloca i32, align 4
  %coef.i2482 = alloca i32, align 4
  %coef.i2457 = alloca i32, align 4
  %coef.i2432 = alloca i32, align 4
  %coef.i2407 = alloca i32, align 4
  %coef.i2382 = alloca i32, align 4
  %coef.i2357 = alloca i32, align 4
  %coef.i2332 = alloca i32, align 4
  %coef.i2307 = alloca i32, align 4
  %coef.i2282 = alloca i32, align 4
  %coef.i2257 = alloca i32, align 4
  %coef.i = alloca i32, align 4
  %end.i2244 = alloca i8*, align 4
  %end.i2237 = alloca i8*, align 4
  %end.i2230 = alloca i8*, align 4
  %end.i2223 = alloca i8*, align 4
  %end.i2216 = alloca i8*, align 4
  %end.i2209 = alloca i8*, align 4
  %end.i2202 = alloca i8*, align 4
  %end.i2183 = alloca i8*, align 4
  %end.i2176 = alloca i8*, align 4
  %end.i2169 = alloca i8*, align 4
  %end.i2162 = alloca i8*, align 4
  %end.i2155 = alloca i8*, align 4
  %end.i2148 = alloca i8*, align 4
  %end.i2141 = alloca i8*, align 4
  %end.i2134 = alloca i8*, align 4
  %end.i2127 = alloca i8*, align 4
  %end.i2120 = alloca i8*, align 4
  %end.i2101 = alloca i8*, align 4
  %end.i2021 = alloca i8*, align 4
  %end.i2014 = alloca i8*, align 4
  %end.i2007 = alloca i8*, align 4
  %end.i2001 = alloca i8*, align 4
  %end.i1994 = alloca i8*, align 4
  %end.i1987 = alloca i8*, align 4
  %end.i1980 = alloca i8*, align 4
  %end.i = alloca i8*, align 4
  %b_error = alloca i32, align 4
  %saveptr = alloca i8*, align 4
  %0 = bitcast i32* %b_error to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #5
  store i32 0, i32* %b_error, align 4, !tbaa !2
  %tobool = icmp ne i8* %value, null
  %lnot = xor i1 %tobool, true
  %tobool1 = icmp eq i8* %name, null
  br i1 %tobool1, label %cleanup1391, label %if.end

if.end:                                           ; preds = %entry
  %spec.select = select i1 %tobool, i8* %value, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0)
  %1 = load i8, i8* %spec.select, align 1, !tbaa !10
  %cmp = icmp eq i8 %1, 61
  %incdec.ptr = getelementptr inbounds i8, i8* %spec.select, i32 1
  %value.addr.1 = select i1 %cmp, i8* %incdec.ptr, i8* %spec.select
  %call = tail call i8* @strchr(i8* nonnull %name, i32 95) #13
  %tobool8 = icmp eq i8* %call, null
  br i1 %tobool8, label %if.end16, label %if.then9

if.then9:                                         ; preds = %if.end
  %call10 = tail call noalias i8* @strdup(i8* nonnull %name) #5
  %tobool11 = icmp eq i8* %call10, null
  br i1 %tobool11, label %cleanup1391, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then9
  %call143048 = tail call i8* @strchr(i8* nonnull %call10, i32 95) #13
  %tobool153049 = icmp eq i8* %call143048, null
  br i1 %tobool153049, label %if.end16, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %call143050 = phi i8* [ %call14, %while.body ], [ %call143048, %while.cond.preheader ]
  store i8 45, i8* %call143050, align 1, !tbaa !10
  %call14 = tail call i8* @strchr(i8* nonnull %call10, i32 95) #13
  %tobool15 = icmp eq i8* %call14, null
  br i1 %tobool15, label %if.end16, label %while.body

if.end16:                                         ; preds = %while.body, %while.cond.preheader, %if.end
  %name_buf.0 = phi i8* [ null, %if.end ], [ %call10, %while.cond.preheader ], [ %call10, %while.body ]
  %name.addr.1 = phi i8* [ %name, %if.end ], [ %call10, %while.cond.preheader ], [ %call10, %while.body ]
  %call17 = tail call i32 @strncmp(i8* nonnull dereferenceable(1) %name.addr.1, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), i32 2) #13
  %tobool18 = icmp eq i32 %call17, 0
  br i1 %tobool18, label %if.then19, label %if.end29

if.then19:                                        ; preds = %if.end16
  %add.ptr = getelementptr inbounds i8, i8* %name.addr.1, i32 2
  %2 = load i8, i8* %add.ptr, align 1, !tbaa !10
  %cmp22 = icmp eq i8 %2, 45
  %incdec.ptr25 = getelementptr inbounds i8, i8* %name.addr.1, i32 3
  %spec.select1976 = select i1 %cmp22, i8* %incdec.ptr25, i8* %add.ptr
  %call27 = call fastcc i32 @atobool_internal(i8* nonnull %value.addr.1, i32* nonnull %b_error)
  %tobool28 = icmp eq i32 %call27, 0
  %cond = select i1 %tobool28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0)
  br label %if.end29

if.end29:                                         ; preds = %if.end16, %if.then19
  %value.addr.2 = phi i8* [ %value.addr.1, %if.end16 ], [ %cond, %if.then19 ]
  %name.addr.3 = phi i8* [ %name.addr.1, %if.end16 ], [ %spec.select1976, %if.then19 ]
  %call30 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0)) #13
  %tobool31 = icmp eq i32 %call30, 0
  br i1 %tobool31, label %if.then32, label %if.else87

if.then32:                                        ; preds = %if.end29
  %call33 = tail call i16** @__ctype_b_loc() #14
  %3 = load i16*, i16** %call33, align 4, !tbaa !8
  %4 = load i8, i8* %value.addr.2, align 1, !tbaa !10
  %conv35 = sext i8 %4 to i32
  %arrayidx36 = getelementptr inbounds i16, i16* %3, i32 %conv35
  %5 = load i16, i16* %arrayidx36, align 2, !tbaa !134
  %6 = and i16 %5, 2048
  %tobool38 = icmp eq i16 %6, 0
  br i1 %tobool38, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then32
  %7 = bitcast i8** %end.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #5
  %call.i = call i32 @strtol(i8* nonnull %value.addr.2, i8** nonnull %end.i, i32 0) #5
  %8 = load i8*, i8** %end.i, align 4, !tbaa !8
  %cmp.i = icmp eq i8* %8, %value.addr.2
  br i1 %cmp.i, label %if.then.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %cond.true
  %9 = load i8, i8* %8, align 1, !tbaa !10
  %cmp1.i = icmp eq i8 %9, 0
  br i1 %cmp1.i, label %atoi_internal.exit, label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i, %cond.true
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atoi_internal.exit

atoi_internal.exit:                               ; preds = %lor.lhs.false.i, %if.then.i
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #5
  br label %cond.end48

cond.false:                                       ; preds = %if.then32
  %call40 = tail call i32 @strcasecmp(i8* nonnull %value.addr.2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0)) #13
  %tobool41 = icmp eq i32 %call40, 0
  br i1 %tobool41, label %cond.true44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.false
  %call42 = call fastcc i32 @atobool_internal(i8* nonnull %value.addr.2, i32* nonnull %b_error)
  %tobool43 = icmp eq i32 %call42, 0
  br i1 %tobool43, label %cond.end48, label %cond.true44

cond.true44:                                      ; preds = %lor.lhs.false, %cond.false
  %name_was_bool.0 = phi i32 [ 1, %lor.lhs.false ], [ 0, %cond.false ]
  %call45 = tail call i32 @x264_cpu_detect() #5
  br label %cond.end48

cond.end48:                                       ; preds = %lor.lhs.false, %cond.true44, %atoi_internal.exit
  %name_was_bool.1 = phi i32 [ 0, %atoi_internal.exit ], [ %name_was_bool.0, %cond.true44 ], [ 1, %lor.lhs.false ]
  %cond49 = phi i32 [ %call.i, %atoi_internal.exit ], [ %call45, %cond.true44 ], [ 0, %lor.lhs.false ]
  %cpu = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 0
  store i32 %cond49, i32* %cpu, align 8, !tbaa !30
  %10 = load i32, i32* %b_error, align 4, !tbaa !2
  %tobool50 = icmp eq i32 %10, 0
  br i1 %tobool50, label %if.end1374, label %if.then51

if.then51:                                        ; preds = %cond.end48
  %call52 = tail call noalias i8* @strdup(i8* nonnull %value.addr.2) #5
  %tobool53 = icmp eq i8* %call52, null
  br i1 %tobool53, label %if.end1374, label %if.then54

if.then54:                                        ; preds = %if.then51
  %11 = bitcast i8** %saveptr to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #5
  store i8* null, i8** %saveptr, align 4, !tbaa !8
  store i32 0, i32* %b_error, align 4, !tbaa !2
  store i32 0, i32* %cpu, align 8, !tbaa !30
  %call563045 = call i8* @strtok_r(i8* nonnull %call52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0), i8** nonnull %saveptr) #5
  %tobool573046 = icmp eq i8* %call563045, null
  br i1 %tobool573046, label %for.end, label %while.cond58.preheader.lr.ph

while.cond58.preheader.lr.ph:                     ; preds = %if.then54
  %12 = load i32, i32* getelementptr inbounds ([0 x %struct.x264_cpu_name_t], [0 x %struct.x264_cpu_name_t]* @x264_cpu_names, i32 0, i32 0, i32 1), align 4, !tbaa !136
  %tobool603043 = icmp eq i32 %12, 0
  br i1 %tobool603043, label %while.cond58.preheader.us, label %while.cond58.preheader.preheader

while.cond58.preheader.preheader:                 ; preds = %while.cond58.preheader.lr.ph
  %13 = load i8*, i8** getelementptr inbounds ([0 x %struct.x264_cpu_name_t], [0 x %struct.x264_cpu_name_t]* @x264_cpu_names, i32 0, i32 0, i32 0), align 4, !tbaa !138
  br label %while.cond58.preheader

while.cond58.preheader.us:                        ; preds = %while.cond58.preheader.lr.ph, %while.cond58.preheader.us
  store i32 1, i32* %b_error, align 4, !tbaa !2
  %call56.us = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0), i8** nonnull %saveptr) #5
  %tobool57.us = icmp eq i8* %call56.us, null
  br i1 %tobool57.us, label %for.end, label %while.cond58.preheader.us

while.cond58.preheader:                           ; preds = %while.cond58.preheader.preheader, %if.end74
  %call563047 = phi i8* [ %call56, %if.end74 ], [ %call563045, %while.cond58.preheader.preheader ]
  %call633149 = call i32 @strcasecmp(i8* nonnull %call563047, i8* %13) #13
  %tobool643150 = icmp eq i32 %call633149, 0
  br i1 %tobool643150, label %while.end66, label %while.cond58

while.cond58:                                     ; preds = %while.cond58.preheader, %land.rhs
  %inc3151 = phi i32 [ %inc, %land.rhs ], [ 1, %while.cond58.preheader ]
  %flags = getelementptr inbounds [0 x %struct.x264_cpu_name_t], [0 x %struct.x264_cpu_name_t]* @x264_cpu_names, i32 0, i32 %inc3151, i32 1
  %14 = load i32, i32* %flags, align 4, !tbaa !136
  %tobool60 = icmp eq i32 %14, 0
  br i1 %tobool60, label %if.then73, label %land.rhs

land.rhs:                                         ; preds = %while.cond58
  %name62 = getelementptr inbounds [0 x %struct.x264_cpu_name_t], [0 x %struct.x264_cpu_name_t]* @x264_cpu_names, i32 0, i32 %inc3151, i32 0
  %15 = load i8*, i8** %name62, align 4, !tbaa !138
  %call63 = call i32 @strcasecmp(i8* nonnull %call563047, i8* %15) #13
  %tobool64 = icmp eq i32 %call63, 0
  %inc = add nuw nsw i32 %inc3151, 1
  br i1 %tobool64, label %while.end66, label %while.cond58

while.end66:                                      ; preds = %land.rhs, %while.cond58.preheader
  %.lcssa = phi i32 [ %12, %while.cond58.preheader ], [ %14, %land.rhs ]
  %16 = load i32, i32* %cpu, align 8, !tbaa !30
  %or = or i32 %16, %.lcssa
  store i32 %or, i32* %cpu, align 8, !tbaa !30
  br label %if.end74

if.then73:                                        ; preds = %while.cond58
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %if.end74

if.end74:                                         ; preds = %while.end66, %if.then73
  %call56 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0), i8** nonnull %saveptr) #5
  %tobool57 = icmp eq i8* %call56, null
  br i1 %tobool57, label %for.end, label %while.cond58.preheader

for.end:                                          ; preds = %if.end74, %while.cond58.preheader.us, %if.then54
  call void @free(i8* %call52) #5
  %17 = load i32, i32* %cpu, align 8, !tbaa !30
  %18 = and i32 %17, 524352
  %19 = icmp eq i32 %18, 64
  br i1 %19, label %if.then81, label %if.end84

if.then81:                                        ; preds = %for.end
  %or83 = or i32 %17, 1048576
  store i32 %or83, i32* %cpu, align 8, !tbaa !30
  br label %if.end84

if.end84:                                         ; preds = %for.end, %if.then81
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #5
  br label %if.end1374

if.else87:                                        ; preds = %if.end29
  %call88 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0)) #13
  %tobool89 = icmp eq i32 %call88, 0
  br i1 %tobool89, label %if.then90, label %if.else98

if.then90:                                        ; preds = %if.else87
  %call91 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0)) #13
  %tobool92 = icmp eq i32 %call91, 0
  br i1 %tobool92, label %if.then93, label %if.else94

if.then93:                                        ; preds = %if.then90
  %i_threads = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 1
  store i32 0, i32* %i_threads, align 4, !tbaa !31
  br label %if.end1374

if.else94:                                        ; preds = %if.then90
  %20 = bitcast i8** %end.i1980 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %20) #5
  %call.i1981 = call i32 @strtol(i8* %value.addr.2, i8** nonnull %end.i1980, i32 0) #5
  %21 = load i8*, i8** %end.i1980, align 4, !tbaa !8
  %cmp.i1982 = icmp eq i8* %21, %value.addr.2
  br i1 %cmp.i1982, label %if.then.i1985, label %lor.lhs.false.i1984

lor.lhs.false.i1984:                              ; preds = %if.else94
  %22 = load i8, i8* %21, align 1, !tbaa !10
  %cmp1.i1983 = icmp eq i8 %22, 0
  br i1 %cmp1.i1983, label %atoi_internal.exit1986, label %if.then.i1985

if.then.i1985:                                    ; preds = %lor.lhs.false.i1984, %if.else94
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atoi_internal.exit1986

atoi_internal.exit1986:                           ; preds = %lor.lhs.false.i1984, %if.then.i1985
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #5
  %i_threads96 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 1
  store i32 %call.i1981, i32* %i_threads96, align 4, !tbaa !31
  br label %if.end1374

if.else98:                                        ; preds = %if.else87
  %call99 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(18) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0)) #13
  %tobool100 = icmp eq i32 %call99, 0
  br i1 %tobool100, label %if.then101, label %if.else109

if.then101:                                       ; preds = %if.else98
  %call102 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0)) #13
  %tobool103 = icmp eq i32 %call102, 0
  br i1 %tobool103, label %if.then104, label %if.else105

if.then104:                                       ; preds = %if.then101
  %i_lookahead_threads = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 2
  store i32 0, i32* %i_lookahead_threads, align 8, !tbaa !32
  br label %if.end1374

if.else105:                                       ; preds = %if.then101
  %23 = bitcast i8** %end.i1987 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %23) #5
  %call.i1988 = call i32 @strtol(i8* %value.addr.2, i8** nonnull %end.i1987, i32 0) #5
  %24 = load i8*, i8** %end.i1987, align 4, !tbaa !8
  %cmp.i1989 = icmp eq i8* %24, %value.addr.2
  br i1 %cmp.i1989, label %if.then.i1992, label %lor.lhs.false.i1991

lor.lhs.false.i1991:                              ; preds = %if.else105
  %25 = load i8, i8* %24, align 1, !tbaa !10
  %cmp1.i1990 = icmp eq i8 %25, 0
  br i1 %cmp1.i1990, label %atoi_internal.exit1993, label %if.then.i1992

if.then.i1992:                                    ; preds = %lor.lhs.false.i1991, %if.else105
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atoi_internal.exit1993

atoi_internal.exit1993:                           ; preds = %lor.lhs.false.i1991, %if.then.i1992
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %23) #5
  %i_lookahead_threads107 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 2
  store i32 %call.i1988, i32* %i_lookahead_threads107, align 8, !tbaa !32
  br label %if.end1374

if.else109:                                       ; preds = %if.else98
  %call110 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(15) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i32 0, i32 0)) #13
  %tobool111 = icmp eq i32 %call110, 0
  br i1 %tobool111, label %if.then112, label %if.else114

if.then112:                                       ; preds = %if.else109
  %call113 = call fastcc i32 @atobool_internal(i8* %value.addr.2, i32* nonnull %b_error)
  %b_sliced_threads = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 3
  store i32 %call113, i32* %b_sliced_threads, align 4, !tbaa !132
  br label %if.end1374

if.else114:                                       ; preds = %if.else109
  %call115 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(15) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0)) #13
  %tobool116 = icmp eq i32 %call115, 0
  br i1 %tobool116, label %if.then117, label %if.else125

if.then117:                                       ; preds = %if.else114
  %call118 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0)) #13
  %tobool119 = icmp eq i32 %call118, 0
  br i1 %tobool119, label %if.then120, label %if.else121

if.then120:                                       ; preds = %if.then117
  %i_sync_lookahead = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 6
  store i32 -1, i32* %i_sync_lookahead, align 8, !tbaa !34
  br label %if.end1374

if.else121:                                       ; preds = %if.then117
  %26 = bitcast i8** %end.i1994 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #5
  %call.i1995 = call i32 @strtol(i8* %value.addr.2, i8** nonnull %end.i1994, i32 0) #5
  %27 = load i8*, i8** %end.i1994, align 4, !tbaa !8
  %cmp.i1996 = icmp eq i8* %27, %value.addr.2
  br i1 %cmp.i1996, label %if.then.i1999, label %lor.lhs.false.i1998

lor.lhs.false.i1998:                              ; preds = %if.else121
  %28 = load i8, i8* %27, align 1, !tbaa !10
  %cmp1.i1997 = icmp eq i8 %28, 0
  br i1 %cmp1.i1997, label %atoi_internal.exit2000, label %if.then.i1999

if.then.i1999:                                    ; preds = %lor.lhs.false.i1998, %if.else121
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atoi_internal.exit2000

atoi_internal.exit2000:                           ; preds = %lor.lhs.false.i1998, %if.then.i1999
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #5
  %i_sync_lookahead123 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 6
  store i32 %call.i1995, i32* %i_sync_lookahead123, align 8, !tbaa !34
  br label %if.end1374

if.else125:                                       ; preds = %if.else114
  %call126 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(14) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0)) #13
  %tobool127 = icmp eq i32 %call126, 0
  br i1 %tobool127, label %if.then131, label %lor.lhs.false128

lor.lhs.false128:                                 ; preds = %if.else125
  %call129 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(16) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i32 0, i32 0)) #13
  %tobool130 = icmp eq i32 %call129, 0
  br i1 %tobool130, label %if.then131, label %if.else133

if.then131:                                       ; preds = %lor.lhs.false128, %if.else125
  %call132 = call fastcc i32 @atobool_internal(i8* %value.addr.2, i32* nonnull %b_error)
  %b_deterministic = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 4
  store i32 %call132, i32* %b_deterministic, align 8, !tbaa !33
  br label %if.end1374

if.else133:                                       ; preds = %lor.lhs.false128
  %call134 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(16) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i32 0, i32 0)) #13
  %tobool135 = icmp eq i32 %call134, 0
  br i1 %tobool135, label %if.then136, label %if.else138

if.then136:                                       ; preds = %if.else133
  %call137 = call fastcc i32 @atobool_internal(i8* %value.addr.2, i32* nonnull %b_error)
  %b_cpu_independent = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 5
  store i32 %call137, i32* %b_cpu_independent, align 4, !tbaa !139
  br label %if.end1374

if.else138:                                       ; preds = %if.else133
  %call139 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0)) #13
  %tobool140 = icmp eq i32 %call139, 0
  br i1 %tobool140, label %if.then144, label %lor.lhs.false141

lor.lhs.false141:                                 ; preds = %if.else138
  %call142 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0)) #13
  %tobool143 = icmp eq i32 %call142, 0
  br i1 %tobool143, label %if.then144, label %if.else161

if.then144:                                       ; preds = %lor.lhs.false141, %if.else138
  %call145 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %value.addr.2, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0)) #13
  %tobool146 = icmp eq i32 %call145, 0
  br i1 %tobool146, label %if.then147, label %if.else148

if.then147:                                       ; preds = %if.then144
  %i_level_idc = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 11
  store i32 9, i32* %i_level_idc, align 4, !tbaa !49
  br label %if.end1374

if.else148:                                       ; preds = %if.then144
  %29 = bitcast i8** %end.i2001 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %29) #5
  %call.i2002 = call fast double @strtod(i8* %value.addr.2, i8** nonnull %end.i2001) #5
  %30 = load i8*, i8** %end.i2001, align 4, !tbaa !8
  %cmp.i2003 = icmp eq i8* %30, %value.addr.2
  br i1 %cmp.i2003, label %if.then.i2006, label %lor.lhs.false.i2005

lor.lhs.false.i2005:                              ; preds = %if.else148
  %31 = load i8, i8* %30, align 1, !tbaa !10
  %cmp1.i2004 = icmp eq i8 %31, 0
  br i1 %cmp1.i2004, label %atof_internal.exit, label %if.then.i2006

if.then.i2006:                                    ; preds = %lor.lhs.false.i2005, %if.else148
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atof_internal.exit

atof_internal.exit:                               ; preds = %lor.lhs.false.i2005, %if.then.i2006
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %29) #5
  %cmp150 = fcmp fast olt double %call.i2002, 7.000000e+00
  br i1 %cmp150, label %if.then152, label %if.else156

if.then152:                                       ; preds = %atof_internal.exit
  %32 = bitcast i8** %end.i2007 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %32) #5
  %call.i2008 = call fast double @strtod(i8* %value.addr.2, i8** nonnull %end.i2007) #5
  %33 = load i8*, i8** %end.i2007, align 4, !tbaa !8
  %cmp.i2009 = icmp eq i8* %33, %value.addr.2
  br i1 %cmp.i2009, label %if.then.i2012, label %lor.lhs.false.i2011

lor.lhs.false.i2011:                              ; preds = %if.then152
  %34 = load i8, i8* %33, align 1, !tbaa !10
  %cmp1.i2010 = icmp eq i8 %34, 0
  br i1 %cmp1.i2010, label %atof_internal.exit2013, label %if.then.i2012

if.then.i2012:                                    ; preds = %lor.lhs.false.i2011, %if.then152
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atof_internal.exit2013

atof_internal.exit2013:                           ; preds = %lor.lhs.false.i2011, %if.then.i2012
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %32) #5
  %mul = fmul fast double %call.i2008, 1.000000e+01
  %add = fadd fast double %mul, 5.000000e-01
  %conv154 = fptosi double %add to i32
  %i_level_idc155 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 11
  store i32 %conv154, i32* %i_level_idc155, align 4, !tbaa !49
  br label %if.end1374

if.else156:                                       ; preds = %atof_internal.exit
  %35 = bitcast i8** %end.i2014 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %35) #5
  %call.i2015 = call i32 @strtol(i8* %value.addr.2, i8** nonnull %end.i2014, i32 0) #5
  %36 = load i8*, i8** %end.i2014, align 4, !tbaa !8
  %cmp.i2016 = icmp eq i8* %36, %value.addr.2
  br i1 %cmp.i2016, label %if.then.i2019, label %lor.lhs.false.i2018

lor.lhs.false.i2018:                              ; preds = %if.else156
  %37 = load i8, i8* %36, align 1, !tbaa !10
  %cmp1.i2017 = icmp eq i8 %37, 0
  br i1 %cmp1.i2017, label %atoi_internal.exit2020, label %if.then.i2019

if.then.i2019:                                    ; preds = %lor.lhs.false.i2018, %if.else156
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atoi_internal.exit2020

atoi_internal.exit2020:                           ; preds = %lor.lhs.false.i2018, %if.then.i2019
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %35) #5
  %i_level_idc158 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 11
  store i32 %call.i2015, i32* %i_level_idc158, align 4, !tbaa !49
  br label %if.end1374

if.else161:                                       ; preds = %lor.lhs.false141
  %call162 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(14) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0)) #13
  %tobool163 = icmp eq i32 %call162, 0
  br i1 %tobool163, label %if.then164, label %if.else166

if.then164:                                       ; preds = %if.else161
  %call165 = call fastcc i32 @atobool_internal(i8* %value.addr.2, i32* nonnull %b_error)
  %b_bluray_compat = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 26
  store i32 %call165, i32* %b_bluray_compat, align 8, !tbaa !140
  br label %if.end1374

if.else166:                                       ; preds = %if.else161
  %call167 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(15) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i32 0, i32 0)) #13
  %tobool168 = icmp eq i32 %call167, 0
  br i1 %tobool168, label %if.then169, label %if.else171

if.then169:                                       ; preds = %if.else166
  %38 = bitcast i8** %end.i2021 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %38) #5
  %call.i2022 = call i32 @strtol(i8* %value.addr.2, i8** nonnull %end.i2021, i32 0) #5
  %39 = load i8*, i8** %end.i2021, align 4, !tbaa !8
  %cmp.i2023 = icmp eq i8* %39, %value.addr.2
  br i1 %cmp.i2023, label %if.then.i2026, label %lor.lhs.false.i2025

lor.lhs.false.i2025:                              ; preds = %if.then169
  %40 = load i8, i8* %39, align 1, !tbaa !10
  %cmp1.i2024 = icmp eq i8 %40, 0
  br i1 %cmp1.i2024, label %atoi_internal.exit2027, label %if.then.i2026

if.then.i2026:                                    ; preds = %lor.lhs.false.i2025, %if.then169
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atoi_internal.exit2027

atoi_internal.exit2027:                           ; preds = %lor.lhs.false.i2025, %if.then.i2026
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %38) #5
  %i_avcintra_class = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 27
  store i32 %call.i2022, i32* %i_avcintra_class, align 4, !tbaa !130
  br label %if.end1374

if.else171:                                       ; preds = %if.else166
  %call172 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(16) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i32 0, i32 0)) #13
  %tobool173 = icmp eq i32 %call172, 0
  br i1 %tobool173, label %land.lhs.true.i, label %if.else177

land.lhs.true.i:                                  ; preds = %if.else171
  %i_avcintra_flavor = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 28
  %call.i2028 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.287, i32 0, i32 0)) #13
  %tobool4.i = icmp eq i32 %call.i2028, 0
  br i1 %tobool4.i, label %cleanup.i, label %land.lhs.true.i.1

cleanup.i:                                        ; preds = %land.lhs.true.i.1, %land.lhs.true.i
  %i.016.i.lcssa = phi i32 [ 0, %land.lhs.true.i ], [ 1, %land.lhs.true.i.1 ]
  store i32 %i.016.i.lcssa, i32* %i_avcintra_flavor, align 4, !tbaa !2
  br label %parse_enum.exit

parse_enum.exit:                                  ; preds = %land.lhs.true.i.1, %cleanup.i
  %41 = phi i32 [ 0, %cleanup.i ], [ -1, %land.lhs.true.i.1 ]
  %42 = load i32, i32* %b_error, align 4, !tbaa !2
  %or176 = or i32 %42, %41
  store i32 %or176, i32* %b_error, align 4, !tbaa !2
  br label %if.end1374

if.else177:                                       ; preds = %if.else171
  %call178 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0)) #13
  %tobool179 = icmp eq i32 %call178, 0
  br i1 %tobool179, label %if.then180, label %if.else194

if.then180:                                       ; preds = %if.else177
  %i_sar_width = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 14, i32 1
  %i_sar_height = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 14, i32 0
  %call182 = tail call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %value.addr.2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i32* nonnull %i_sar_width, i32* nonnull %i_sar_height) #5
  %cmp183 = icmp eq i32 %call182, 2
  br i1 %cmp183, label %land.end193, label %land.rhs185

land.rhs185:                                      ; preds = %if.then180
  %call190 = tail call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %value.addr.2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i32* nonnull %i_sar_width, i32* nonnull %i_sar_height) #5
  %cmp191 = icmp ne i32 %call190, 2
  %phitmp = zext i1 %cmp191 to i32
  br label %land.end193

land.end193:                                      ; preds = %if.then180, %land.rhs185
  %43 = phi i32 [ 0, %if.then180 ], [ %phitmp, %land.rhs185 ]
  store i32 %43, i32* %b_error, align 4, !tbaa !2
  br label %if.end1374

if.else194:                                       ; preds = %if.else177
  %call195 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0)) #13
  %tobool196 = icmp eq i32 %call195, 0
  br i1 %tobool196, label %land.lhs.true.i2034, label %if.else201

land.lhs.true.i2034:                              ; preds = %if.else194
  %i_overscan = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 14, i32 2
  %call.i2032 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0)) #13
  %tobool4.i2033 = icmp eq i32 %call.i2032, 0
  br i1 %tobool4.i2033, label %cleanup.i2039, label %land.lhs.true.i2034.1

cleanup.i2039:                                    ; preds = %land.lhs.true.i2034.2, %land.lhs.true.i2034.1, %land.lhs.true.i2034
  %i.016.i2029.lcssa = phi i32 [ 0, %land.lhs.true.i2034 ], [ 1, %land.lhs.true.i2034.1 ], [ 2, %land.lhs.true.i2034.2 ]
  store i32 %i.016.i2029.lcssa, i32* %i_overscan, align 4, !tbaa !2
  br label %parse_enum.exit2040

parse_enum.exit2040:                              ; preds = %land.lhs.true.i2034.2, %cleanup.i2039
  %44 = phi i32 [ 0, %cleanup.i2039 ], [ -1, %land.lhs.true.i2034.2 ]
  %45 = load i32, i32* %b_error, align 4, !tbaa !2
  %or200 = or i32 %45, %44
  store i32 %or200, i32* %b_error, align 4, !tbaa !2
  br label %if.end1374

if.else201:                                       ; preds = %if.else194
  %call202 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i32 0, i32 0)) #13
  %tobool203 = icmp eq i32 %call202, 0
  br i1 %tobool203, label %land.lhs.true.i2046, label %if.else208

land.lhs.true.i2046:                              ; preds = %if.else201
  %i_vidformat = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 14, i32 3
  %call.i2044 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.291, i32 0, i32 0)) #13
  %tobool4.i2045 = icmp eq i32 %call.i2044, 0
  br i1 %tobool4.i2045, label %cleanup.i2051, label %land.lhs.true.i2046.1

cleanup.i2051:                                    ; preds = %land.lhs.true.i2046.5, %land.lhs.true.i2046.4, %land.lhs.true.i2046.3, %land.lhs.true.i2046.2, %land.lhs.true.i2046.1, %land.lhs.true.i2046
  %i.016.i2041.lcssa = phi i32 [ 0, %land.lhs.true.i2046 ], [ 1, %land.lhs.true.i2046.1 ], [ 2, %land.lhs.true.i2046.2 ], [ 3, %land.lhs.true.i2046.3 ], [ 4, %land.lhs.true.i2046.4 ], [ 5, %land.lhs.true.i2046.5 ]
  store i32 %i.016.i2041.lcssa, i32* %i_vidformat, align 4, !tbaa !2
  br label %parse_enum.exit2052

parse_enum.exit2052:                              ; preds = %land.lhs.true.i2046.5, %cleanup.i2051
  %46 = phi i32 [ 0, %cleanup.i2051 ], [ -1, %land.lhs.true.i2046.5 ]
  %47 = load i32, i32* %b_error, align 4, !tbaa !2
  %or207 = or i32 %47, %46
  store i32 %or207, i32* %b_error, align 4, !tbaa !2
  br label %if.end1374

if.else208:                                       ; preds = %if.else201
  %call209 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0)) #13
  %tobool210 = icmp eq i32 %call209, 0
  br i1 %tobool210, label %land.lhs.true.i2058, label %if.else215

land.lhs.true.i2058:                              ; preds = %if.else208
  %b_fullrange = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 14, i32 4
  %call.i2056 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.296, i32 0, i32 0)) #13
  %tobool4.i2057 = icmp eq i32 %call.i2056, 0
  br i1 %tobool4.i2057, label %cleanup.i2063, label %land.lhs.true.i2058.1

cleanup.i2063:                                    ; preds = %land.lhs.true.i2058.1, %land.lhs.true.i2058
  %i.016.i2053.lcssa = phi i32 [ 0, %land.lhs.true.i2058 ], [ 1, %land.lhs.true.i2058.1 ]
  store i32 %i.016.i2053.lcssa, i32* %b_fullrange, align 4, !tbaa !2
  br label %parse_enum.exit2064

parse_enum.exit2064:                              ; preds = %land.lhs.true.i2058.1, %cleanup.i2063
  %48 = phi i32 [ 0, %cleanup.i2063 ], [ -1, %land.lhs.true.i2058.1 ]
  %49 = load i32, i32* %b_error, align 4, !tbaa !2
  %or214 = or i32 %49, %48
  store i32 %or214, i32* %b_error, align 4, !tbaa !2
  br label %if.end1374

if.else215:                                       ; preds = %if.else208
  %call216 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0)) #13
  %tobool217 = icmp eq i32 %call216, 0
  br i1 %tobool217, label %land.lhs.true.i2070.1, label %if.else222

cleanup.i2075:                                    ; preds = %land.lhs.true.i2070.12, %land.lhs.true.i2070.11, %land.lhs.true.i2070.10, %land.lhs.true.i2070.9, %land.lhs.true.i2070.8, %land.lhs.true.i2070.7, %land.lhs.true.i2070.6, %land.lhs.true.i2070.5, %land.lhs.true.i2070.4, %land.lhs.true.i2070.2, %land.lhs.true.i2070.1
  %i.016.i2065.lcssa = phi i32 [ 1, %land.lhs.true.i2070.1 ], [ 2, %land.lhs.true.i2070.2 ], [ 4, %land.lhs.true.i2070.4 ], [ 5, %land.lhs.true.i2070.5 ], [ 6, %land.lhs.true.i2070.6 ], [ 7, %land.lhs.true.i2070.7 ], [ 8, %land.lhs.true.i2070.8 ], [ 9, %land.lhs.true.i2070.9 ], [ 10, %land.lhs.true.i2070.10 ], [ 11, %land.lhs.true.i2070.11 ], [ 12, %land.lhs.true.i2070.12 ]
  store i32 %i.016.i2065.lcssa, i32* %i_colorprim, align 4, !tbaa !2
  br label %parse_enum.exit2076

parse_enum.exit2076:                              ; preds = %land.lhs.true.i2070.12, %cleanup.i2075
  %50 = phi i32 [ 0, %cleanup.i2075 ], [ -1, %land.lhs.true.i2070.12 ]
  %51 = load i32, i32* %b_error, align 4, !tbaa !2
  %or221 = or i32 %51, %50
  store i32 %or221, i32* %b_error, align 4, !tbaa !2
  br label %if.end1374

if.else222:                                       ; preds = %if.else215
  %call223 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i32 0, i32 0)) #13
  %tobool224 = icmp eq i32 %call223, 0
  br i1 %tobool224, label %land.lhs.true.i2082.1, label %if.else229

cleanup.i2087:                                    ; preds = %land.lhs.true.i2082.18, %land.lhs.true.i2082.17, %land.lhs.true.i2082.16, %land.lhs.true.i2082.15, %land.lhs.true.i2082.14, %land.lhs.true.i2082.13, %land.lhs.true.i2082.12, %land.lhs.true.i2082.11, %land.lhs.true.i2082.10, %land.lhs.true.i2082.9, %land.lhs.true.i2082.8, %land.lhs.true.i2082.7, %land.lhs.true.i2082.6, %land.lhs.true.i2082.5, %land.lhs.true.i2082.4, %land.lhs.true.i2082.2, %land.lhs.true.i2082.1
  %i.016.i2077.lcssa = phi i32 [ 1, %land.lhs.true.i2082.1 ], [ 2, %land.lhs.true.i2082.2 ], [ 4, %land.lhs.true.i2082.4 ], [ 5, %land.lhs.true.i2082.5 ], [ 6, %land.lhs.true.i2082.6 ], [ 7, %land.lhs.true.i2082.7 ], [ 8, %land.lhs.true.i2082.8 ], [ 9, %land.lhs.true.i2082.9 ], [ 10, %land.lhs.true.i2082.10 ], [ 11, %land.lhs.true.i2082.11 ], [ 12, %land.lhs.true.i2082.12 ], [ 13, %land.lhs.true.i2082.13 ], [ 14, %land.lhs.true.i2082.14 ], [ 15, %land.lhs.true.i2082.15 ], [ 16, %land.lhs.true.i2082.16 ], [ 17, %land.lhs.true.i2082.17 ], [ 18, %land.lhs.true.i2082.18 ]
  store i32 %i.016.i2077.lcssa, i32* %i_transfer, align 4, !tbaa !2
  br label %parse_enum.exit2088

parse_enum.exit2088:                              ; preds = %land.lhs.true.i2082.18, %cleanup.i2087
  %52 = phi i32 [ 0, %cleanup.i2087 ], [ -1, %land.lhs.true.i2082.18 ]
  %53 = load i32, i32* %b_error, align 4, !tbaa !2
  %or228 = or i32 %53, %52
  store i32 %or228, i32* %b_error, align 4, !tbaa !2
  br label %if.end1374

if.else229:                                       ; preds = %if.else222
  %call230 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i32 0, i32 0)) #13
  %tobool231 = icmp eq i32 %call230, 0
  br i1 %tobool231, label %land.lhs.true.i2094, label %if.else236

land.lhs.true.i2094:                              ; preds = %if.else229
  %i_colmatrix = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 14, i32 7
  %call.i2092 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.318, i32 0, i32 0)) #13
  %tobool4.i2093 = icmp eq i32 %call.i2092, 0
  br i1 %tobool4.i2093, label %cleanup.i2099, label %land.lhs.true.i2094.1

cleanup.i2099:                                    ; preds = %land.lhs.true.i2094.14, %land.lhs.true.i2094.13, %land.lhs.true.i2094.12, %land.lhs.true.i2094.11, %land.lhs.true.i2094.10, %land.lhs.true.i2094.9, %land.lhs.true.i2094.8, %land.lhs.true.i2094.7, %land.lhs.true.i2094.6, %land.lhs.true.i2094.5, %land.lhs.true.i2094.4, %land.lhs.true.i2094.2, %land.lhs.true.i2094.1, %land.lhs.true.i2094
  %i.016.i2089.lcssa = phi i32 [ 0, %land.lhs.true.i2094 ], [ 1, %land.lhs.true.i2094.1 ], [ 2, %land.lhs.true.i2094.2 ], [ 4, %land.lhs.true.i2094.4 ], [ 5, %land.lhs.true.i2094.5 ], [ 6, %land.lhs.true.i2094.6 ], [ 7, %land.lhs.true.i2094.7 ], [ 8, %land.lhs.true.i2094.8 ], [ 9, %land.lhs.true.i2094.9 ], [ 10, %land.lhs.true.i2094.10 ], [ 11, %land.lhs.true.i2094.11 ], [ 12, %land.lhs.true.i2094.12 ], [ 13, %land.lhs.true.i2094.13 ], [ 14, %land.lhs.true.i2094.14 ]
  store i32 %i.016.i2089.lcssa, i32* %i_colmatrix, align 4, !tbaa !2
  br label %parse_enum.exit2100

parse_enum.exit2100:                              ; preds = %land.lhs.true.i2094.14, %cleanup.i2099
  %54 = phi i32 [ 0, %cleanup.i2099 ], [ -1, %land.lhs.true.i2094.14 ]
  %55 = load i32, i32* %b_error, align 4, !tbaa !2
  %or235 = or i32 %55, %54
  store i32 %or235, i32* %b_error, align 4, !tbaa !2
  br label %if.end1374

if.else236:                                       ; preds = %if.else229
  %call237 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0)) #13
  %tobool238 = icmp eq i32 %call237, 0
  br i1 %tobool238, label %if.then239, label %if.else250

if.then239:                                       ; preds = %if.else236
  %56 = bitcast i8** %end.i2101 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %56) #5
  %call.i2102 = call i32 @strtol(i8* %value.addr.2, i8** nonnull %end.i2101, i32 0) #5
  %57 = load i8*, i8** %end.i2101, align 4, !tbaa !8
  %cmp.i2103 = icmp eq i8* %57, %value.addr.2
  br i1 %cmp.i2103, label %if.then.i2106, label %lor.lhs.false.i2105

lor.lhs.false.i2105:                              ; preds = %if.then239
  %58 = load i8, i8* %57, align 1, !tbaa !10
  %cmp1.i2104 = icmp eq i8 %58, 0
  br i1 %cmp1.i2104, label %atoi_internal.exit2107, label %if.then.i2106

if.then.i2106:                                    ; preds = %lor.lhs.false.i2105, %if.then239
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atoi_internal.exit2107

atoi_internal.exit2107:                           ; preds = %lor.lhs.false.i2105, %if.then.i2106
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %56) #5
  %i_chroma_loc = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 14, i32 8
  store i32 %call.i2102, i32* %i_chroma_loc, align 8, !tbaa !46
  %59 = icmp ugt i32 %call.i2102, 5
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %b_error, align 4, !tbaa !2
  br label %if.end1374

if.else250:                                       ; preds = %if.else236
  %call251 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(18) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.48, i32 0, i32 0)) #13
  %tobool252 = icmp eq i32 %call251, 0
  br i1 %tobool252, label %if.then253, label %if.else278

if.then253:                                       ; preds = %if.else250
  %call254 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0)) #13
  %tobool255 = icmp eq i32 %call254, 0
  br i1 %tobool255, label %if.else274, label %if.then256

if.then256:                                       ; preds = %if.then253
  %i_green_x = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 55, i32 1
  %i_green_y = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 55, i32 2
  %i_blue_x = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 55, i32 3
  %i_blue_y = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 55, i32 4
  %i_red_x = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 55, i32 5
  %i_red_y = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 55, i32 6
  %i_white_x = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 55, i32 7
  %i_white_y = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 55, i32 8
  %i_display_max = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 55, i32 9
  %i_display_min = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 55, i32 10
  %call266 = tail call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %value.addr.2, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.50, i32 0, i32 0), i32* nonnull %i_green_x, i32* nonnull %i_green_y, i32* nonnull %i_blue_x, i32* nonnull %i_blue_y, i32* nonnull %i_red_x, i32* nonnull %i_red_y, i32* nonnull %i_white_x, i32* nonnull %i_white_y, i64* nonnull %i_display_max, i64* nonnull %i_display_min) #5
  %cmp267 = icmp ne i32 %call266, 10
  %conv268 = zext i1 %cmp267 to i32
  %61 = load i32, i32* %b_error, align 4, !tbaa !2
  %or269 = or i32 %61, %conv268
  store i32 %or269, i32* %b_error, align 4, !tbaa !2
  %tobool270 = icmp eq i32 %or269, 0
  %lnot.ext272 = zext i1 %tobool270 to i32
  %b_mastering_display = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 55, i32 0
  store i32 %lnot.ext272, i32* %b_mastering_display, align 8, !tbaa !141
  br label %if.end1374

if.else274:                                       ; preds = %if.then253
  %b_mastering_display276 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 55, i32 0
  store i32 0, i32* %b_mastering_display276, align 8, !tbaa !141
  br label %if.end1374

if.else278:                                       ; preds = %if.else250
  %call279 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i32 0, i32 0)) #13
  %tobool280 = icmp eq i32 %call279, 0
  br i1 %tobool280, label %if.then281, label %if.else298

if.then281:                                       ; preds = %if.else278
  %call282 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0)) #13
  %tobool283 = icmp eq i32 %call282, 0
  br i1 %tobool283, label %if.else294, label %if.then284

if.then284:                                       ; preds = %if.then281
  %i_max_cll = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 56, i32 1
  %i_max_fall = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 56, i32 2
  %call286 = tail call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %value.addr.2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), i32* nonnull %i_max_cll, i32* nonnull %i_max_fall) #5
  %cmp287 = icmp ne i32 %call286, 2
  %conv288 = zext i1 %cmp287 to i32
  %62 = load i32, i32* %b_error, align 4, !tbaa !2
  %or289 = or i32 %62, %conv288
  store i32 %or289, i32* %b_error, align 4, !tbaa !2
  %tobool290 = icmp eq i32 %or289, 0
  %lnot.ext292 = zext i1 %tobool290 to i32
  %b_cll = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 56, i32 0
  store i32 %lnot.ext292, i32* %b_cll, align 8, !tbaa !142
  br label %if.end1374

if.else294:                                       ; preds = %if.then281
  %b_cll296 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 56, i32 0
  store i32 0, i32* %b_cll296, align 8, !tbaa !142
  br label %if.end1374

if.else298:                                       ; preds = %if.else278
  %call299 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(21) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.53, i32 0, i32 0)) #13
  %tobool300 = icmp eq i32 %call299, 0
  br i1 %tobool300, label %land.lhs.true.i2113.1, label %if.else304

cleanup.i2118:                                    ; preds = %land.lhs.true.i2113.18, %land.lhs.true.i2113.17, %land.lhs.true.i2113.16, %land.lhs.true.i2113.15, %land.lhs.true.i2113.14, %land.lhs.true.i2113.13, %land.lhs.true.i2113.12, %land.lhs.true.i2113.11, %land.lhs.true.i2113.10, %land.lhs.true.i2113.9, %land.lhs.true.i2113.8, %land.lhs.true.i2113.7, %land.lhs.true.i2113.6, %land.lhs.true.i2113.5, %land.lhs.true.i2113.4, %land.lhs.true.i2113.2, %land.lhs.true.i2113.1
  %i.016.i2108.lcssa = phi i32 [ 1, %land.lhs.true.i2113.1 ], [ 2, %land.lhs.true.i2113.2 ], [ 4, %land.lhs.true.i2113.4 ], [ 5, %land.lhs.true.i2113.5 ], [ 6, %land.lhs.true.i2113.6 ], [ 7, %land.lhs.true.i2113.7 ], [ 8, %land.lhs.true.i2113.8 ], [ 9, %land.lhs.true.i2113.9 ], [ 10, %land.lhs.true.i2113.10 ], [ 11, %land.lhs.true.i2113.11 ], [ 12, %land.lhs.true.i2113.12 ], [ 13, %land.lhs.true.i2113.13 ], [ 14, %land.lhs.true.i2113.14 ], [ 15, %land.lhs.true.i2113.15 ], [ 16, %land.lhs.true.i2113.16 ], [ 17, %land.lhs.true.i2113.17 ], [ 18, %land.lhs.true.i2113.18 ]
  store i32 %i.016.i2108.lcssa, i32* %i_alternative_transfer, align 4, !tbaa !2
  br label %parse_enum.exit2119

parse_enum.exit2119:                              ; preds = %land.lhs.true.i2113.18, %cleanup.i2118
  %63 = phi i32 [ 0, %cleanup.i2118 ], [ -1, %land.lhs.true.i2113.18 ]
  %64 = load i32, i32* %b_error, align 4, !tbaa !2
  %or303 = or i32 %64, %63
  store i32 %or303, i32* %b_error, align 4, !tbaa !2
  br label %if.end1374

if.else304:                                       ; preds = %if.else298
  %call305 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i32 0, i32 0)) #13
  %tobool306 = icmp eq i32 %call305, 0
  br i1 %tobool306, label %if.then307, label %if.else330

if.then307:                                       ; preds = %if.else304
  %i_fps_num = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 64
  %i_fps_den = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 65
  %call308 = tail call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %value.addr.2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0), i32* nonnull %i_fps_num, i32* nonnull %i_fps_den) #5
  %cmp309 = icmp eq i32 %call308, 2
  br i1 %cmp309, label %if.end1374, label %if.then311

if.then311:                                       ; preds = %if.then307
  %65 = bitcast i8** %end.i2120 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %65) #5
  %call.i2121 = call fast double @strtod(i8* %value.addr.2, i8** nonnull %end.i2120) #5
  %66 = load i8*, i8** %end.i2120, align 4, !tbaa !8
  %cmp.i2122 = icmp eq i8* %66, %value.addr.2
  br i1 %cmp.i2122, label %if.then.i2125, label %lor.lhs.false.i2124

lor.lhs.false.i2124:                              ; preds = %if.then311
  %67 = load i8, i8* %66, align 1, !tbaa !10
  %cmp1.i2123 = icmp eq i8 %67, 0
  br i1 %cmp1.i2123, label %atof_internal.exit2126, label %if.then.i2125

if.then.i2125:                                    ; preds = %lor.lhs.false.i2124, %if.then311
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atof_internal.exit2126

atof_internal.exit2126:                           ; preds = %lor.lhs.false.i2124, %if.then.i2125
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %65) #5
  %cmp313 = fcmp fast ogt double %call.i2121, 0.000000e+00
  %cmp316 = fcmp fast ole double %call.i2121, 0x4140624DD2D0E560
  %or.cond = and i1 %cmp313, %cmp316
  br i1 %or.cond, label %if.then318, label %if.else324

if.then318:                                       ; preds = %atof_internal.exit2126
  %mul319 = fmul fast double %call.i2121, 1.000000e+03
  %add320 = fadd fast double %mul319, 5.000000e-01
  %conv321 = fptosi double %add320 to i32
  br label %if.end328

if.else324:                                       ; preds = %atof_internal.exit2126
  %68 = bitcast i8** %end.i2127 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %68) #5
  %call.i2128 = call i32 @strtol(i8* %value.addr.2, i8** nonnull %end.i2127, i32 0) #5
  %69 = load i8*, i8** %end.i2127, align 4, !tbaa !8
  %cmp.i2129 = icmp eq i8* %69, %value.addr.2
  br i1 %cmp.i2129, label %if.then.i2132, label %lor.lhs.false.i2131

lor.lhs.false.i2131:                              ; preds = %if.else324
  %70 = load i8, i8* %69, align 1, !tbaa !10
  %cmp1.i2130 = icmp eq i8 %70, 0
  br i1 %cmp1.i2130, label %atoi_internal.exit2133, label %if.then.i2132

if.then.i2132:                                    ; preds = %lor.lhs.false.i2131, %if.else324
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atoi_internal.exit2133

atoi_internal.exit2133:                           ; preds = %lor.lhs.false.i2131, %if.then.i2132
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %68) #5
  br label %if.end328

if.end328:                                        ; preds = %atoi_internal.exit2133, %if.then318
  %storemerge1974 = phi i32 [ %conv321, %if.then318 ], [ %call.i2128, %atoi_internal.exit2133 ]
  %storemerge = phi i32 [ 1000, %if.then318 ], [ 1, %atoi_internal.exit2133 ]
  store i32 %storemerge1974, i32* %i_fps_num, align 8, !tbaa !47
  store i32 %storemerge, i32* %i_fps_den, align 4, !tbaa !48
  br label %if.end1374

if.else330:                                       ; preds = %if.else304
  %call331 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i32 0, i32 0)) #13
  %tobool332 = icmp eq i32 %call331, 0
  br i1 %tobool332, label %if.then336, label %lor.lhs.false333

lor.lhs.false333:                                 ; preds = %if.else330
  %call334 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i32 0, i32 0)) #13
  %tobool335 = icmp eq i32 %call334, 0
  br i1 %tobool335, label %if.then336, label %if.else338

if.then336:                                       ; preds = %lor.lhs.false333, %if.else330
  %71 = bitcast i8** %end.i2134 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %71) #5
  %call.i2135 = call i32 @strtol(i8* %value.addr.2, i8** nonnull %end.i2134, i32 0) #5
  %72 = load i8*, i8** %end.i2134, align 4, !tbaa !8
  %cmp.i2136 = icmp eq i8* %72, %value.addr.2
  br i1 %cmp.i2136, label %if.then.i2139, label %lor.lhs.false.i2138

lor.lhs.false.i2138:                              ; preds = %if.then336
  %73 = load i8, i8* %72, align 1, !tbaa !10
  %cmp1.i2137 = icmp eq i8 %73, 0
  br i1 %cmp1.i2137, label %atoi_internal.exit2140, label %if.then.i2139

if.then.i2139:                                    ; preds = %lor.lhs.false.i2138, %if.then336
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atoi_internal.exit2140

atoi_internal.exit2140:                           ; preds = %lor.lhs.false.i2138, %if.then.i2139
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %71) #5
  %i_frame_reference = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 15
  store i32 %call.i2135, i32* %i_frame_reference, align 4, !tbaa !54
  br label %if.end1374

if.else338:                                       ; preds = %lor.lhs.false333
  %call339 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i32 0, i32 0)) #13
  %tobool340 = icmp eq i32 %call339, 0
  br i1 %tobool340, label %if.then341, label %if.else343

if.then341:                                       ; preds = %if.else338
  %74 = bitcast i8** %end.i2141 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %74) #5
  %call.i2142 = call i32 @strtol(i8* %value.addr.2, i8** nonnull %end.i2141, i32 0) #5
  %75 = load i8*, i8** %end.i2141, align 4, !tbaa !8
  %cmp.i2143 = icmp eq i8* %75, %value.addr.2
  br i1 %cmp.i2143, label %if.then.i2146, label %lor.lhs.false.i2145

lor.lhs.false.i2145:                              ; preds = %if.then341
  %76 = load i8, i8* %75, align 1, !tbaa !10
  %cmp1.i2144 = icmp eq i8 %76, 0
  br i1 %cmp1.i2144, label %atoi_internal.exit2147, label %if.then.i2146

if.then.i2146:                                    ; preds = %lor.lhs.false.i2145, %if.then341
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atoi_internal.exit2147

atoi_internal.exit2147:                           ; preds = %lor.lhs.false.i2145, %if.then.i2146
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %74) #5
  %i_dpb_size = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 16
  store i32 %call.i2142, i32* %i_dpb_size, align 8, !tbaa !143
  br label %if.end1374

if.else343:                                       ; preds = %if.else338
  %call344 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i32 0, i32 0)) #13
  %tobool345 = icmp eq i32 %call344, 0
  br i1 %tobool345, label %if.then346, label %if.else354

if.then346:                                       ; preds = %if.else343
  %call347 = tail call i8* @strstr(i8* nonnull dereferenceable(1) %value.addr.2, i8* nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i32 0, i32 0)) #13
  %tobool348 = icmp eq i8* %call347, null
  br i1 %tobool348, label %if.else350, label %if.then349

if.then349:                                       ; preds = %if.then346
  %i_keyint_max = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 17
  store i32 1073741824, i32* %i_keyint_max, align 4, !tbaa !55
  br label %if.end1374

if.else350:                                       ; preds = %if.then346
  %77 = bitcast i8** %end.i2148 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %77) #5
  %call.i2149 = call i32 @strtol(i8* %value.addr.2, i8** nonnull %end.i2148, i32 0) #5
  %78 = load i8*, i8** %end.i2148, align 4, !tbaa !8
  %cmp.i2150 = icmp eq i8* %78, %value.addr.2
  br i1 %cmp.i2150, label %if.then.i2153, label %lor.lhs.false.i2152

lor.lhs.false.i2152:                              ; preds = %if.else350
  %79 = load i8, i8* %78, align 1, !tbaa !10
  %cmp1.i2151 = icmp eq i8 %79, 0
  br i1 %cmp1.i2151, label %atoi_internal.exit2154, label %if.then.i2153

if.then.i2153:                                    ; preds = %lor.lhs.false.i2152, %if.else350
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atoi_internal.exit2154

atoi_internal.exit2154:                           ; preds = %lor.lhs.false.i2152, %if.then.i2153
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %77) #5
  %i_keyint_max352 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 17
  store i32 %call.i2149, i32* %i_keyint_max352, align 4, !tbaa !55
  br label %if.end1374

if.else354:                                       ; preds = %if.else343
  %call355 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(11) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.61, i32 0, i32 0)) #13
  %tobool356 = icmp eq i32 %call355, 0
  br i1 %tobool356, label %if.then360, label %lor.lhs.false357

lor.lhs.false357:                                 ; preds = %if.else354
  %call358 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(11) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i32 0, i32 0)) #13
  %tobool359 = icmp eq i32 %call358, 0
  br i1 %tobool359, label %if.then360, label %if.else370

if.then360:                                       ; preds = %lor.lhs.false357, %if.else354
  %80 = bitcast i8** %end.i2155 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %80) #5
  %call.i2156 = call i32 @strtol(i8* %value.addr.2, i8** nonnull %end.i2155, i32 0) #5
  %81 = load i8*, i8** %end.i2155, align 4, !tbaa !8
  %cmp.i2157 = icmp eq i8* %81, %value.addr.2
  br i1 %cmp.i2157, label %if.then.i2160, label %lor.lhs.false.i2159

lor.lhs.false.i2159:                              ; preds = %if.then360
  %82 = load i8, i8* %81, align 1, !tbaa !10
  %cmp1.i2158 = icmp eq i8 %82, 0
  br i1 %cmp1.i2158, label %atoi_internal.exit2161, label %if.then.i2160

if.then.i2160:                                    ; preds = %lor.lhs.false.i2159, %if.then360
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atoi_internal.exit2161

atoi_internal.exit2161:                           ; preds = %lor.lhs.false.i2159, %if.then.i2160
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %80) #5
  %i_keyint_min = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 18
  store i32 %call.i2156, i32* %i_keyint_min, align 8, !tbaa !56
  %i_keyint_max362 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 17
  %83 = load i32, i32* %i_keyint_max362, align 4, !tbaa !55
  %cmp364 = icmp slt i32 %83, %call.i2156
  br i1 %cmp364, label %if.then366, label %if.end1374

if.then366:                                       ; preds = %atoi_internal.exit2161
  store i32 %call.i2156, i32* %i_keyint_max362, align 4, !tbaa !55
  br label %if.end1374

if.else370:                                       ; preds = %lor.lhs.false357
  %call371 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0)) #13
  %tobool372 = icmp eq i32 %call371, 0
  br i1 %tobool372, label %if.then373, label %if.else383

if.then373:                                       ; preds = %if.else370
  %call374 = call fastcc i32 @atobool_internal(i8* %value.addr.2, i32* nonnull %b_error)
  %i_scenecut_threshold = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 19
  store i32 %call374, i32* %i_scenecut_threshold, align 4, !tbaa !58
  %84 = load i32, i32* %b_error, align 4, !tbaa !2
  %85 = or i32 %84, %call374
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %if.end1374, label %if.then379

if.then379:                                       ; preds = %if.then373
  store i32 0, i32* %b_error, align 4, !tbaa !2
  %87 = bitcast i8** %end.i2162 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %87) #5
  %call.i2163 = call i32 @strtol(i8* %value.addr.2, i8** nonnull %end.i2162, i32 0) #5
  %88 = load i8*, i8** %end.i2162, align 4, !tbaa !8
  %cmp.i2164 = icmp eq i8* %88, %value.addr.2
  br i1 %cmp.i2164, label %if.then.i2167, label %lor.lhs.false.i2166

lor.lhs.false.i2166:                              ; preds = %if.then379
  %89 = load i8, i8* %88, align 1, !tbaa !10
  %cmp1.i2165 = icmp eq i8 %89, 0
  br i1 %cmp1.i2165, label %atoi_internal.exit2168, label %if.then.i2167

if.then.i2167:                                    ; preds = %lor.lhs.false.i2166, %if.then379
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atoi_internal.exit2168

atoi_internal.exit2168:                           ; preds = %lor.lhs.false.i2166, %if.then.i2167
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %87) #5
  store i32 %call.i2163, i32* %i_scenecut_threshold, align 4, !tbaa !58
  br label %if.end1374

if.else383:                                       ; preds = %if.else370
  %call384 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(14) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.64, i32 0, i32 0)) #13
  %tobool385 = icmp eq i32 %call384, 0
  br i1 %tobool385, label %if.then386, label %if.else388

if.then386:                                       ; preds = %if.else383
  %call387 = call fastcc i32 @atobool_internal(i8* %value.addr.2, i32* nonnull %b_error)
  %b_intra_refresh = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 20
  store i32 %call387, i32* %b_intra_refresh, align 8, !tbaa !144
  br label %if.end1374

if.else388:                                       ; preds = %if.else383
  %call389 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.65, i32 0, i32 0)) #13
  %tobool390 = icmp eq i32 %call389, 0
  br i1 %tobool390, label %if.then391, label %if.else393

if.then391:                                       ; preds = %if.else388
  %90 = bitcast i8** %end.i2169 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %90) #5
  %call.i2170 = call i32 @strtol(i8* %value.addr.2, i8** nonnull %end.i2169, i32 0) #5
  %91 = load i8*, i8** %end.i2169, align 4, !tbaa !8
  %cmp.i2171 = icmp eq i8* %91, %value.addr.2
  br i1 %cmp.i2171, label %if.then.i2174, label %lor.lhs.false.i2173

lor.lhs.false.i2173:                              ; preds = %if.then391
  %92 = load i8, i8* %91, align 1, !tbaa !10
  %cmp1.i2172 = icmp eq i8 %92, 0
  br i1 %cmp1.i2172, label %atoi_internal.exit2175, label %if.then.i2174

if.then.i2174:                                    ; preds = %lor.lhs.false.i2173, %if.then391
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atoi_internal.exit2175

atoi_internal.exit2175:                           ; preds = %lor.lhs.false.i2173, %if.then.i2174
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %90) #5
  %i_bframe = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 21
  store i32 %call.i2170, i32* %i_bframe, align 4, !tbaa !57
  br label %if.end1374

if.else393:                                       ; preds = %if.else388
  %call394 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.66, i32 0, i32 0)) #13
  %tobool395 = icmp eq i32 %call394, 0
  br i1 %tobool395, label %if.then396, label %if.else403

if.then396:                                       ; preds = %if.else393
  %call397 = call fastcc i32 @atobool_internal(i8* %value.addr.2, i32* nonnull %b_error)
  %i_bframe_adaptive = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 22
  store i32 %call397, i32* %i_bframe_adaptive, align 8, !tbaa !59
  %93 = load i32, i32* %b_error, align 4, !tbaa !2
  %tobool398 = icmp eq i32 %93, 0
  br i1 %tobool398, label %if.end1374, label %if.then399

if.then399:                                       ; preds = %if.then396
  store i32 0, i32* %b_error, align 4, !tbaa !2
  %94 = bitcast i8** %end.i2176 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %94) #5
  %call.i2177 = call i32 @strtol(i8* %value.addr.2, i8** nonnull %end.i2176, i32 0) #5
  %95 = load i8*, i8** %end.i2176, align 4, !tbaa !8
  %cmp.i2178 = icmp eq i8* %95, %value.addr.2
  br i1 %cmp.i2178, label %if.then.i2181, label %lor.lhs.false.i2180

lor.lhs.false.i2180:                              ; preds = %if.then399
  %96 = load i8, i8* %95, align 1, !tbaa !10
  %cmp1.i2179 = icmp eq i8 %96, 0
  br i1 %cmp1.i2179, label %atoi_internal.exit2182, label %if.then.i2181

if.then.i2181:                                    ; preds = %lor.lhs.false.i2180, %if.then399
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atoi_internal.exit2182

atoi_internal.exit2182:                           ; preds = %lor.lhs.false.i2180, %if.then.i2181
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %94) #5
  store i32 %call.i2177, i32* %i_bframe_adaptive, align 8, !tbaa !59
  br label %if.end1374

if.else403:                                       ; preds = %if.else393
  %call404 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i32 0, i32 0)) #13
  %tobool405 = icmp eq i32 %call404, 0
  br i1 %tobool405, label %if.then406, label %if.else408

if.then406:                                       ; preds = %if.else403
  %97 = bitcast i8** %end.i2183 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %97) #5
  %call.i2184 = call i32 @strtol(i8* %value.addr.2, i8** nonnull %end.i2183, i32 0) #5
  %98 = load i8*, i8** %end.i2183, align 4, !tbaa !8
  %cmp.i2185 = icmp eq i8* %98, %value.addr.2
  br i1 %cmp.i2185, label %if.then.i2188, label %lor.lhs.false.i2187

lor.lhs.false.i2187:                              ; preds = %if.then406
  %99 = load i8, i8* %98, align 1, !tbaa !10
  %cmp1.i2186 = icmp eq i8 %99, 0
  br i1 %cmp1.i2186, label %atoi_internal.exit2189, label %if.then.i2188

if.then.i2188:                                    ; preds = %lor.lhs.false.i2187, %if.then406
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atoi_internal.exit2189

atoi_internal.exit2189:                           ; preds = %lor.lhs.false.i2187, %if.then.i2188
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %97) #5
  %i_bframe_bias = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 23
  store i32 %call.i2184, i32* %i_bframe_bias, align 4, !tbaa !60
  br label %if.end1374

if.else408:                                       ; preds = %if.else403
  %call409 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.68, i32 0, i32 0)) #13
  %tobool410 = icmp eq i32 %call409, 0
  br i1 %tobool410, label %land.lhs.true.i2195, label %if.else419

land.lhs.true.i2195:                              ; preds = %if.else408
  %i_bframe_pyramid = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 24
  %call.i2193 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.103, i32 0, i32 0)) #13
  %tobool4.i2194 = icmp eq i32 %call.i2193, 0
  br i1 %tobool4.i2194, label %cleanup.i2200, label %land.lhs.true.i2195.1

cleanup.i2200:                                    ; preds = %land.lhs.true.i2195.2, %land.lhs.true.i2195.1, %land.lhs.true.i2195
  %i.016.i2190.lcssa = phi i32 [ 0, %land.lhs.true.i2195 ], [ 1, %land.lhs.true.i2195.1 ], [ 2, %land.lhs.true.i2195.2 ]
  store i32 %i.016.i2190.lcssa, i32* %i_bframe_pyramid, align 4, !tbaa !2
  br label %parse_enum.exit2201

parse_enum.exit2201:                              ; preds = %land.lhs.true.i2195.2, %cleanup.i2200
  %100 = phi i32 [ 0, %cleanup.i2200 ], [ -1, %land.lhs.true.i2195.2 ]
  %101 = load i32, i32* %b_error, align 4, !tbaa !2
  %or413 = or i32 %101, %100
  store i32 %or413, i32* %b_error, align 4, !tbaa !2
  %tobool414 = icmp eq i32 %or413, 0
  br i1 %tobool414, label %if.end1374, label %if.then415

if.then415:                                       ; preds = %parse_enum.exit2201
  store i32 0, i32* %b_error, align 4, !tbaa !2
  %102 = bitcast i8** %end.i2202 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %102) #5
  %call.i2203 = call i32 @strtol(i8* %value.addr.2, i8** nonnull %end.i2202, i32 0) #5
  %103 = load i8*, i8** %end.i2202, align 4, !tbaa !8
  %cmp.i2204 = icmp eq i8* %103, %value.addr.2
  br i1 %cmp.i2204, label %if.then.i2207, label %lor.lhs.false.i2206

lor.lhs.false.i2206:                              ; preds = %if.then415
  %104 = load i8, i8* %103, align 1, !tbaa !10
  %cmp1.i2205 = icmp eq i8 %104, 0
  br i1 %cmp1.i2205, label %atoi_internal.exit2208, label %if.then.i2207

if.then.i2207:                                    ; preds = %lor.lhs.false.i2206, %if.then415
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atoi_internal.exit2208

atoi_internal.exit2208:                           ; preds = %lor.lhs.false.i2206, %if.then.i2207
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %102) #5
  store i32 %call.i2203, i32* %i_bframe_pyramid, align 8, !tbaa !61
  br label %if.end1374

if.else419:                                       ; preds = %if.else408
  %call420 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.69, i32 0, i32 0)) #13
  %tobool421 = icmp eq i32 %call420, 0
  br i1 %tobool421, label %if.then422, label %if.else424

if.then422:                                       ; preds = %if.else419
  %call423 = call fastcc i32 @atobool_internal(i8* %value.addr.2, i32* nonnull %b_error)
  %b_open_gop = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 25
  store i32 %call423, i32* %b_open_gop, align 4, !tbaa !145
  br label %if.end1374

if.else424:                                       ; preds = %if.else419
  %call425 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.70, i32 0, i32 0)) #13
  %tobool426 = icmp eq i32 %call425, 0
  br i1 %tobool426, label %if.then427, label %if.else432

if.then427:                                       ; preds = %if.else424
  %call428 = call fastcc i32 @atobool_internal(i8* %value.addr.2, i32* nonnull %b_error)
  %tobool429 = icmp eq i32 %call428, 0
  %lnot.ext431 = zext i1 %tobool429 to i32
  %b_deblocking_filter = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 29
  store i32 %lnot.ext431, i32* %b_deblocking_filter, align 4, !tbaa !64
  br label %if.end1374

if.else432:                                       ; preds = %if.else424
  %call433 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0)) #13
  %tobool434 = icmp eq i32 %call433, 0
  br i1 %tobool434, label %if.then438, label %lor.lhs.false435

lor.lhs.false435:                                 ; preds = %if.else432
  %call436 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.72, i32 0, i32 0)) #13
  %tobool437 = icmp eq i32 %call436, 0
  br i1 %tobool437, label %if.then438, label %if.else463

if.then438:                                       ; preds = %lor.lhs.false435, %if.else432
  %i_deblocking_filter_alphac0 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 30
  %i_deblocking_filter_beta = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 31
  %call439 = tail call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %value.addr.2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i32* nonnull %i_deblocking_filter_alphac0, i32* nonnull %i_deblocking_filter_beta) #5
  %cmp440 = icmp eq i32 %call439, 2
  br i1 %cmp440, label %if.then448, label %lor.lhs.false442

lor.lhs.false442:                                 ; preds = %if.then438
  %call445 = tail call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %value.addr.2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), i32* nonnull %i_deblocking_filter_alphac0, i32* nonnull %i_deblocking_filter_beta) #5
  %cmp446 = icmp eq i32 %call445, 2
  br i1 %cmp446, label %if.then448, label %if.else450

if.then448:                                       ; preds = %lor.lhs.false442, %if.then438
  %b_deblocking_filter449 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 29
  store i32 1, i32* %b_deblocking_filter449, align 4, !tbaa !64
  br label %if.end1374

if.else450:                                       ; preds = %lor.lhs.false442
  %call452 = tail call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %value.addr.2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0), i32* nonnull %i_deblocking_filter_alphac0) #5
  %tobool453 = icmp eq i32 %call452, 0
  br i1 %tobool453, label %if.else458, label %if.then454

if.then454:                                       ; preds = %if.else450
  %b_deblocking_filter455 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 29
  store i32 1, i32* %b_deblocking_filter455, align 4, !tbaa !64
  %105 = load i32, i32* %i_deblocking_filter_alphac0, align 8, !tbaa !65
  store i32 %105, i32* %i_deblocking_filter_beta, align 4, !tbaa !66
  br label %if.end1374

if.else458:                                       ; preds = %if.else450
  %call459 = call fastcc i32 @atobool_internal(i8* %value.addr.2, i32* nonnull %b_error)
  %b_deblocking_filter460 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 29
  store i32 %call459, i32* %b_deblocking_filter460, align 4, !tbaa !64
  br label %if.end1374

if.else463:                                       ; preds = %lor.lhs.false435
  %call464 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(15) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.74, i32 0, i32 0)) #13
  %tobool465 = icmp eq i32 %call464, 0
  br i1 %tobool465, label %if.then466, label %if.else468

if.then466:                                       ; preds = %if.else463
  %106 = bitcast i8** %end.i2209 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %106) #5
  %call.i2210 = call i32 @strtol(i8* %value.addr.2, i8** nonnull %end.i2209, i32 0) #5
  %107 = load i8*, i8** %end.i2209, align 4, !tbaa !8
  %cmp.i2211 = icmp eq i8* %107, %value.addr.2
  br i1 %cmp.i2211, label %if.then.i2214, label %lor.lhs.false.i2213

lor.lhs.false.i2213:                              ; preds = %if.then466
  %108 = load i8, i8* %107, align 1, !tbaa !10
  %cmp1.i2212 = icmp eq i8 %108, 0
  br i1 %cmp1.i2212, label %atoi_internal.exit2215, label %if.then.i2214

if.then.i2214:                                    ; preds = %lor.lhs.false.i2213, %if.then466
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atoi_internal.exit2215

atoi_internal.exit2215:                           ; preds = %lor.lhs.false.i2213, %if.then.i2214
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %106) #5
  %i_slice_max_size = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 76
  store i32 %call.i2210, i32* %i_slice_max_size, align 8, !tbaa !50
  br label %if.end1374

if.else468:                                       ; preds = %if.else463
  %call469 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(14) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.75, i32 0, i32 0)) #13
  %tobool470 = icmp eq i32 %call469, 0
  br i1 %tobool470, label %if.then471, label %if.else473

if.then471:                                       ; preds = %if.else468
  %109 = bitcast i8** %end.i2216 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %109) #5
  %call.i2217 = call i32 @strtol(i8* %value.addr.2, i8** nonnull %end.i2216, i32 0) #5
  %110 = load i8*, i8** %end.i2216, align 4, !tbaa !8
  %cmp.i2218 = icmp eq i8* %110, %value.addr.2
  br i1 %cmp.i2218, label %if.then.i2221, label %lor.lhs.false.i2220

lor.lhs.false.i2220:                              ; preds = %if.then471
  %111 = load i8, i8* %110, align 1, !tbaa !10
  %cmp1.i2219 = icmp eq i8 %111, 0
  br i1 %cmp1.i2219, label %atoi_internal.exit2222, label %if.then.i2221

if.then.i2221:                                    ; preds = %lor.lhs.false.i2220, %if.then471
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atoi_internal.exit2222

atoi_internal.exit2222:                           ; preds = %lor.lhs.false.i2220, %if.then.i2221
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %109) #5
  %i_slice_max_mbs = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 77
  store i32 %call.i2217, i32* %i_slice_max_mbs, align 4, !tbaa !51
  br label %if.end1374

if.else473:                                       ; preds = %if.else468
  %call474 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(14) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.76, i32 0, i32 0)) #13
  %tobool475 = icmp eq i32 %call474, 0
  br i1 %tobool475, label %if.then476, label %if.else478

if.then476:                                       ; preds = %if.else473
  %112 = bitcast i8** %end.i2223 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %112) #5
  %call.i2224 = call i32 @strtol(i8* %value.addr.2, i8** nonnull %end.i2223, i32 0) #5
  %113 = load i8*, i8** %end.i2223, align 4, !tbaa !8
  %cmp.i2225 = icmp eq i8* %113, %value.addr.2
  br i1 %cmp.i2225, label %if.then.i2228, label %lor.lhs.false.i2227

lor.lhs.false.i2227:                              ; preds = %if.then476
  %114 = load i8, i8* %113, align 1, !tbaa !10
  %cmp1.i2226 = icmp eq i8 %114, 0
  br i1 %cmp1.i2226, label %atoi_internal.exit2229, label %if.then.i2228

if.then.i2228:                                    ; preds = %lor.lhs.false.i2227, %if.then476
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atoi_internal.exit2229

atoi_internal.exit2229:                           ; preds = %lor.lhs.false.i2227, %if.then.i2228
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %112) #5
  %i_slice_min_mbs = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 78
  store i32 %call.i2224, i32* %i_slice_min_mbs, align 8, !tbaa !146
  br label %if.end1374

if.else478:                                       ; preds = %if.else473
  %call479 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.77, i32 0, i32 0)) #13
  %tobool480 = icmp eq i32 %call479, 0
  br i1 %tobool480, label %if.then481, label %if.else483

if.then481:                                       ; preds = %if.else478
  %115 = bitcast i8** %end.i2230 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %115) #5
  %call.i2231 = call i32 @strtol(i8* %value.addr.2, i8** nonnull %end.i2230, i32 0) #5
  %116 = load i8*, i8** %end.i2230, align 4, !tbaa !8
  %cmp.i2232 = icmp eq i8* %116, %value.addr.2
  br i1 %cmp.i2232, label %if.then.i2235, label %lor.lhs.false.i2234

lor.lhs.false.i2234:                              ; preds = %if.then481
  %117 = load i8, i8* %116, align 1, !tbaa !10
  %cmp1.i2233 = icmp eq i8 %117, 0
  br i1 %cmp1.i2233, label %atoi_internal.exit2236, label %if.then.i2235

if.then.i2235:                                    ; preds = %lor.lhs.false.i2234, %if.then481
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atoi_internal.exit2236

atoi_internal.exit2236:                           ; preds = %lor.lhs.false.i2234, %if.then.i2235
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %115) #5
  %i_slice_count = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 79
  store i32 %call.i2231, i32* %i_slice_count, align 4, !tbaa !52
  br label %if.end1374

if.else483:                                       ; preds = %if.else478
  %call484 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(11) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.78, i32 0, i32 0)) #13
  %tobool485 = icmp eq i32 %call484, 0
  br i1 %tobool485, label %if.then486, label %if.else488

if.then486:                                       ; preds = %if.else483
  %118 = bitcast i8** %end.i2237 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %118) #5
  %call.i2238 = call i32 @strtol(i8* %value.addr.2, i8** nonnull %end.i2237, i32 0) #5
  %119 = load i8*, i8** %end.i2237, align 4, !tbaa !8
  %cmp.i2239 = icmp eq i8* %119, %value.addr.2
  br i1 %cmp.i2239, label %if.then.i2242, label %lor.lhs.false.i2241

lor.lhs.false.i2241:                              ; preds = %if.then486
  %120 = load i8, i8* %119, align 1, !tbaa !10
  %cmp1.i2240 = icmp eq i8 %120, 0
  br i1 %cmp1.i2240, label %atoi_internal.exit2243, label %if.then.i2242

if.then.i2242:                                    ; preds = %lor.lhs.false.i2241, %if.then486
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atoi_internal.exit2243

atoi_internal.exit2243:                           ; preds = %lor.lhs.false.i2241, %if.then.i2242
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %118) #5
  %i_slice_count_max = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 80
  store i32 %call.i2238, i32* %i_slice_count_max, align 8, !tbaa !147
  br label %if.end1374

if.else488:                                       ; preds = %if.else483
  %call489 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.79, i32 0, i32 0)) #13
  %tobool490 = icmp eq i32 %call489, 0
  br i1 %tobool490, label %if.then491, label %if.else493

if.then491:                                       ; preds = %if.else488
  %call492 = call fastcc i32 @atobool_internal(i8* %value.addr.2, i32* nonnull %b_error)
  %b_cabac = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 32
  store i32 %call492, i32* %b_cabac, align 8, !tbaa !67
  br label %if.end1374

if.else493:                                       ; preds = %if.else488
  %call494 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.80, i32 0, i32 0)) #13
  %tobool495 = icmp eq i32 %call494, 0
  br i1 %tobool495, label %if.then496, label %if.else498

if.then496:                                       ; preds = %if.else493
  %121 = bitcast i8** %end.i2244 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %121) #5
  %call.i2245 = call i32 @strtol(i8* %value.addr.2, i8** nonnull %end.i2244, i32 0) #5
  %122 = load i8*, i8** %end.i2244, align 4, !tbaa !8
  %cmp.i2246 = icmp eq i8* %122, %value.addr.2
  br i1 %cmp.i2246, label %if.then.i2249, label %lor.lhs.false.i2248

lor.lhs.false.i2248:                              ; preds = %if.then496
  %123 = load i8, i8* %122, align 1, !tbaa !10
  %cmp1.i2247 = icmp eq i8 %123, 0
  br i1 %cmp1.i2247, label %atoi_internal.exit2250, label %if.then.i2249

if.then.i2249:                                    ; preds = %lor.lhs.false.i2248, %if.then496
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atoi_internal.exit2250

atoi_internal.exit2250:                           ; preds = %lor.lhs.false.i2248, %if.then.i2249
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %121) #5
  %i_cabac_init_idc = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 33
  store i32 %call.i2245, i32* %i_cabac_init_idc, align 4, !tbaa !68
  br label %if.end1374

if.else498:                                       ; preds = %if.else493
  %call499 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(11) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.81, i32 0, i32 0)) #13
  %tobool500 = icmp eq i32 %call499, 0
  br i1 %tobool500, label %if.then501, label %if.else503

if.then501:                                       ; preds = %if.else498
  %call502 = call fastcc i32 @atobool_internal(i8* %value.addr.2, i32* nonnull %b_error)
  %b_interlaced = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 34
  store i32 %call502, i32* %b_interlaced, align 8, !tbaa !62
  br label %if.end1374

if.else503:                                       ; preds = %if.else498
  %call504 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.82, i32 0, i32 0)) #13
  %tobool505 = icmp eq i32 %call504, 0
  br i1 %tobool505, label %if.then506, label %if.else509

if.then506:                                       ; preds = %if.else503
  %call507 = call fastcc i32 @atobool_internal(i8* %value.addr.2, i32* nonnull %b_error)
  %b_tff = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 68
  store i32 %call507, i32* %b_tff, align 8, !tbaa !125
  %b_interlaced508 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 34
  store i32 %call507, i32* %b_interlaced508, align 8, !tbaa !62
  br label %if.end1374

if.else509:                                       ; preds = %if.else503
  %call510 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.83, i32 0, i32 0)) #13
  %tobool511 = icmp eq i32 %call510, 0
  br i1 %tobool511, label %if.then512, label %if.else520

if.then512:                                       ; preds = %if.else509
  %call513 = call fastcc i32 @atobool_internal(i8* %value.addr.2, i32* nonnull %b_error)
  %b_interlaced514 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 34
  store i32 %call513, i32* %b_interlaced514, align 8, !tbaa !62
  %tobool516 = icmp eq i32 %call513, 0
  %lnot.ext518 = zext i1 %tobool516 to i32
  %b_tff519 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 68
  store i32 %lnot.ext518, i32* %b_tff519, align 8, !tbaa !125
  br label %if.end1374

if.else520:                                       ; preds = %if.else509
  %call521 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(18) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.84, i32 0, i32 0)) #13
  %tobool522 = icmp eq i32 %call521, 0
  br i1 %tobool522, label %if.then523, label %if.else525

if.then523:                                       ; preds = %if.else520
  %call524 = call fastcc i32 @atobool_internal(i8* %value.addr.2, i32* nonnull %b_error)
  %b_constrained_intra = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 35
  store i32 %call524, i32* %b_constrained_intra, align 4, !tbaa !63
  br label %if.end1374

if.else525:                                       ; preds = %if.else520
  %call526 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.85, i32 0, i32 0)) #13
  %tobool527 = icmp eq i32 %call526, 0
  br i1 %tobool527, label %if.then528, label %if.else545

if.then528:                                       ; preds = %if.else525
  %call529 = tail call i8* @strstr(i8* nonnull dereferenceable(1) %value.addr.2, i8* nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i32 0, i32 0)) #13
  %tobool530 = icmp eq i8* %call529, null
  br i1 %tobool530, label %if.else532, label %if.then531

if.then531:                                       ; preds = %if.then528
  %i_cqm_preset = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 36
  store i32 0, i32* %i_cqm_preset, align 8, !tbaa !119
  br label %if.end1374

if.else532:                                       ; preds = %if.then528
  %call533 = tail call i8* @strstr(i8* nonnull dereferenceable(1) %value.addr.2, i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.87, i32 0, i32 0)) #13
  %tobool534 = icmp eq i8* %call533, null
  br i1 %tobool534, label %do.body, label %if.then535

if.then535:                                       ; preds = %if.else532
  %i_cqm_preset536 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 36
  store i32 1, i32* %i_cqm_preset536, align 8, !tbaa !119
  br label %if.end1374

do.body:                                          ; preds = %if.else532
  %call538 = tail call i8* @x264_param_strdup(%struct.x264_param_t* %p, i8* %value.addr.2)
  %psz_cqm_file = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 37
  store i8* %call538, i8** %psz_cqm_file, align 4, !tbaa !133
  %tobool540 = icmp eq i8* %call538, null
  br i1 %tobool540, label %if.then541, label %if.end1374

if.then541:                                       ; preds = %do.body
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %if.end1374

if.else545:                                       ; preds = %if.else525
  %call546 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.88, i32 0, i32 0)) #13
  %tobool547 = icmp eq i32 %call546, 0
  br i1 %tobool547, label %do.body549, label %if.else558

do.body549:                                       ; preds = %if.else545
  %call550 = tail call i8* @x264_param_strdup(%struct.x264_param_t* %p, i8* %value.addr.2)
  %psz_cqm_file551 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 37
  store i8* %call550, i8** %psz_cqm_file551, align 4, !tbaa !133
  %tobool553 = icmp eq i8* %call550, null
  br i1 %tobool553, label %if.then554, label %if.end1374

if.then554:                                       ; preds = %do.body549
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %if.end1374

if.else558:                                       ; preds = %if.else545
  %call559 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i32 0, i32 0)) #13
  %tobool560 = icmp eq i32 %call559, 0
  br i1 %tobool560, label %if.then561, label %if.else574

if.then561:                                       ; preds = %if.else558
  %i_cqm_preset562 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 36
  store i32 2, i32* %i_cqm_preset562, align 8, !tbaa !119
  %124 = bitcast i32* %coef.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %124) #5
  %call24.i = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %value.addr.2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0), i32* nonnull %coef.i) #5
  %tobool25.i = icmp eq i32 %call24.i, 0
  %125 = load i32, i32* %coef.i, align 4
  %.off26.i = add i32 %125, -1
  %126 = icmp ugt i32 %.off26.i, 254
  %127 = or i1 %tobool25.i, %126
  br i1 %127, label %cleanup.i2253, label %do.cond.i

do.body.i:                                        ; preds = %land.lhs.true.i2256
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %124) #5
  %call.i2251 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %incdec.ptr.i, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0), i32* nonnull %coef.i) #5
  %tobool.i2252 = icmp eq i32 %call.i2251, 0
  %128 = load i32, i32* %coef.i, align 4
  %.off.i = add i32 %128, -1
  %129 = icmp ugt i32 %.off.i, 254
  %130 = or i1 %tobool.i2252, %129
  br i1 %130, label %cleanup.i2253, label %do.cond.i

cleanup.i2253:                                    ; preds = %do.body.i, %if.then561
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %124) #5
  br label %parse_cqm.exit

do.cond.i:                                        ; preds = %if.then561, %do.body.i
  %131 = phi i32 [ %128, %do.body.i ], [ %125, %if.then561 ]
  %i.028.i = phi i32 [ %inc.i2254, %do.body.i ], [ 0, %if.then561 ]
  %str.addr.027.i = phi i8* [ %incdec.ptr.i, %do.body.i ], [ %value.addr.2, %if.then561 ]
  %conv.i = trunc i32 %131 to i8
  %inc.i2254 = add i32 %i.028.i, 1
  %arrayidx.i2255 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 38, i32 %i.028.i
  store i8 %conv.i, i8* %arrayidx.i2255, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %124) #5
  %exitcond3088 = icmp eq i32 %i.028.i, 15
  br i1 %exitcond3088, label %do.end.i, label %land.lhs.true.i2256

land.lhs.true.i2256:                              ; preds = %do.cond.i
  %call5.i = call i8* @strchr(i8* nonnull dereferenceable(1) %str.addr.027.i, i32 44) #13
  %tobool6.i = icmp eq i8* %call5.i, null
  %incdec.ptr.i = getelementptr inbounds i8, i8* %call5.i, i32 1
  br i1 %tobool6.i, label %do.end.i, label %do.body.i

do.end.i:                                         ; preds = %do.cond.i, %land.lhs.true.i2256
  %cmp8.i = icmp ne i32 %inc.i2254, 16
  %cond.i = sext i1 %cmp8.i to i32
  br label %parse_cqm.exit

parse_cqm.exit:                                   ; preds = %cleanup.i2253, %do.end.i
  %retval.2.i = phi i32 [ %cond.i, %do.end.i ], [ -1, %cleanup.i2253 ]
  %132 = load i32, i32* %b_error, align 4, !tbaa !2
  %or564 = or i32 %132, %retval.2.i
  store i32 %or564, i32* %b_error, align 4, !tbaa !2
  %133 = bitcast i32* %coef.i2257 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %133) #5
  %call24.i2258 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %value.addr.2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0), i32* nonnull %coef.i2257) #5
  %tobool25.i2259 = icmp eq i32 %call24.i2258, 0
  %134 = load i32, i32* %coef.i2257, align 4
  %.off26.i2260 = add i32 %134, -1
  %135 = icmp ugt i32 %.off26.i2260, 254
  %136 = or i1 %tobool25.i2259, %135
  br i1 %136, label %cleanup.i2265, label %do.cond.i2272

do.body.i2264:                                    ; preds = %land.lhs.true.i2276
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %133) #5
  %call.i2261 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %incdec.ptr.i2275, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0), i32* nonnull %coef.i2257) #5
  %tobool.i2262 = icmp eq i32 %call.i2261, 0
  %137 = load i32, i32* %coef.i2257, align 4
  %.off.i2263 = add i32 %137, -1
  %138 = icmp ugt i32 %.off.i2263, 254
  %139 = or i1 %tobool.i2262, %138
  br i1 %139, label %cleanup.i2265, label %do.cond.i2272

cleanup.i2265:                                    ; preds = %do.body.i2264, %parse_cqm.exit
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %133) #5
  br label %parse_cqm.exit2281

do.cond.i2272:                                    ; preds = %parse_cqm.exit, %do.body.i2264
  %140 = phi i32 [ %137, %do.body.i2264 ], [ %134, %parse_cqm.exit ]
  %i.028.i2266 = phi i32 [ %inc.i2269, %do.body.i2264 ], [ 0, %parse_cqm.exit ]
  %str.addr.027.i2267 = phi i8* [ %incdec.ptr.i2275, %do.body.i2264 ], [ %value.addr.2, %parse_cqm.exit ]
  %conv.i2268 = trunc i32 %140 to i8
  %inc.i2269 = add i32 %i.028.i2266, 1
  %arrayidx.i2270 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 39, i32 %i.028.i2266
  store i8 %conv.i2268, i8* %arrayidx.i2270, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %133) #5
  %exitcond3087 = icmp eq i32 %i.028.i2266, 15
  br i1 %exitcond3087, label %do.end.i2279, label %land.lhs.true.i2276

land.lhs.true.i2276:                              ; preds = %do.cond.i2272
  %call5.i2273 = call i8* @strchr(i8* nonnull dereferenceable(1) %str.addr.027.i2267, i32 44) #13
  %tobool6.i2274 = icmp eq i8* %call5.i2273, null
  %incdec.ptr.i2275 = getelementptr inbounds i8, i8* %call5.i2273, i32 1
  br i1 %tobool6.i2274, label %do.end.i2279, label %do.body.i2264

do.end.i2279:                                     ; preds = %do.cond.i2272, %land.lhs.true.i2276
  %cmp8.i2277 = icmp ne i32 %inc.i2269, 16
  %cond.i2278 = sext i1 %cmp8.i2277 to i32
  br label %parse_cqm.exit2281

parse_cqm.exit2281:                               ; preds = %cleanup.i2265, %do.end.i2279
  %retval.2.i2280 = phi i32 [ %cond.i2278, %do.end.i2279 ], [ -1, %cleanup.i2265 ]
  %141 = load i32, i32* %b_error, align 4, !tbaa !2
  %or567 = or i32 %141, %retval.2.i2280
  store i32 %or567, i32* %b_error, align 4, !tbaa !2
  %142 = bitcast i32* %coef.i2282 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %142) #5
  %call24.i2283 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %value.addr.2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0), i32* nonnull %coef.i2282) #5
  %tobool25.i2284 = icmp eq i32 %call24.i2283, 0
  %143 = load i32, i32* %coef.i2282, align 4
  %.off26.i2285 = add i32 %143, -1
  %144 = icmp ugt i32 %.off26.i2285, 254
  %145 = or i1 %tobool25.i2284, %144
  br i1 %145, label %cleanup.i2290, label %do.cond.i2297

do.body.i2289:                                    ; preds = %land.lhs.true.i2301
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %142) #5
  %call.i2286 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %incdec.ptr.i2300, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0), i32* nonnull %coef.i2282) #5
  %tobool.i2287 = icmp eq i32 %call.i2286, 0
  %146 = load i32, i32* %coef.i2282, align 4
  %.off.i2288 = add i32 %146, -1
  %147 = icmp ugt i32 %.off.i2288, 254
  %148 = or i1 %tobool.i2287, %147
  br i1 %148, label %cleanup.i2290, label %do.cond.i2297

cleanup.i2290:                                    ; preds = %do.body.i2289, %parse_cqm.exit2281
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %142) #5
  br label %parse_cqm.exit2306

do.cond.i2297:                                    ; preds = %parse_cqm.exit2281, %do.body.i2289
  %149 = phi i32 [ %146, %do.body.i2289 ], [ %143, %parse_cqm.exit2281 ]
  %i.028.i2291 = phi i32 [ %inc.i2294, %do.body.i2289 ], [ 0, %parse_cqm.exit2281 ]
  %str.addr.027.i2292 = phi i8* [ %incdec.ptr.i2300, %do.body.i2289 ], [ %value.addr.2, %parse_cqm.exit2281 ]
  %conv.i2293 = trunc i32 %149 to i8
  %inc.i2294 = add i32 %i.028.i2291, 1
  %arrayidx.i2295 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 40, i32 %i.028.i2291
  store i8 %conv.i2293, i8* %arrayidx.i2295, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %142) #5
  %exitcond3086 = icmp eq i32 %i.028.i2291, 15
  br i1 %exitcond3086, label %do.end.i2304, label %land.lhs.true.i2301

land.lhs.true.i2301:                              ; preds = %do.cond.i2297
  %call5.i2298 = call i8* @strchr(i8* nonnull dereferenceable(1) %str.addr.027.i2292, i32 44) #13
  %tobool6.i2299 = icmp eq i8* %call5.i2298, null
  %incdec.ptr.i2300 = getelementptr inbounds i8, i8* %call5.i2298, i32 1
  br i1 %tobool6.i2299, label %do.end.i2304, label %do.body.i2289

do.end.i2304:                                     ; preds = %do.cond.i2297, %land.lhs.true.i2301
  %cmp8.i2302 = icmp ne i32 %inc.i2294, 16
  %cond.i2303 = sext i1 %cmp8.i2302 to i32
  br label %parse_cqm.exit2306

parse_cqm.exit2306:                               ; preds = %cleanup.i2290, %do.end.i2304
  %retval.2.i2305 = phi i32 [ %cond.i2303, %do.end.i2304 ], [ -1, %cleanup.i2290 ]
  %150 = load i32, i32* %b_error, align 4, !tbaa !2
  %or570 = or i32 %150, %retval.2.i2305
  store i32 %or570, i32* %b_error, align 4, !tbaa !2
  %151 = bitcast i32* %coef.i2307 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %151) #5
  %call24.i2308 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %value.addr.2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0), i32* nonnull %coef.i2307) #5
  %tobool25.i2309 = icmp eq i32 %call24.i2308, 0
  %152 = load i32, i32* %coef.i2307, align 4
  %.off26.i2310 = add i32 %152, -1
  %153 = icmp ugt i32 %.off26.i2310, 254
  %154 = or i1 %tobool25.i2309, %153
  br i1 %154, label %cleanup.i2315, label %do.cond.i2322

do.body.i2314:                                    ; preds = %land.lhs.true.i2326
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %151) #5
  %call.i2311 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %incdec.ptr.i2325, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0), i32* nonnull %coef.i2307) #5
  %tobool.i2312 = icmp eq i32 %call.i2311, 0
  %155 = load i32, i32* %coef.i2307, align 4
  %.off.i2313 = add i32 %155, -1
  %156 = icmp ugt i32 %.off.i2313, 254
  %157 = or i1 %tobool.i2312, %156
  br i1 %157, label %cleanup.i2315, label %do.cond.i2322

cleanup.i2315:                                    ; preds = %do.body.i2314, %parse_cqm.exit2306
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %151) #5
  br label %parse_cqm.exit2331

do.cond.i2322:                                    ; preds = %parse_cqm.exit2306, %do.body.i2314
  %158 = phi i32 [ %155, %do.body.i2314 ], [ %152, %parse_cqm.exit2306 ]
  %i.028.i2316 = phi i32 [ %inc.i2319, %do.body.i2314 ], [ 0, %parse_cqm.exit2306 ]
  %str.addr.027.i2317 = phi i8* [ %incdec.ptr.i2325, %do.body.i2314 ], [ %value.addr.2, %parse_cqm.exit2306 ]
  %conv.i2318 = trunc i32 %158 to i8
  %inc.i2319 = add i32 %i.028.i2316, 1
  %arrayidx.i2320 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 41, i32 %i.028.i2316
  store i8 %conv.i2318, i8* %arrayidx.i2320, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %151) #5
  %exitcond = icmp eq i32 %i.028.i2316, 15
  br i1 %exitcond, label %do.end.i2329, label %land.lhs.true.i2326

land.lhs.true.i2326:                              ; preds = %do.cond.i2322
  %call5.i2323 = call i8* @strchr(i8* nonnull dereferenceable(1) %str.addr.027.i2317, i32 44) #13
  %tobool6.i2324 = icmp eq i8* %call5.i2323, null
  %incdec.ptr.i2325 = getelementptr inbounds i8, i8* %call5.i2323, i32 1
  br i1 %tobool6.i2324, label %do.end.i2329, label %do.body.i2314

do.end.i2329:                                     ; preds = %do.cond.i2322, %land.lhs.true.i2326
  %cmp8.i2327 = icmp ne i32 %inc.i2319, 16
  %cond.i2328 = sext i1 %cmp8.i2327 to i32
  br label %parse_cqm.exit2331

parse_cqm.exit2331:                               ; preds = %cleanup.i2315, %do.end.i2329
  %retval.2.i2330 = phi i32 [ %cond.i2328, %do.end.i2329 ], [ -1, %cleanup.i2315 ]
  %159 = load i32, i32* %b_error, align 4, !tbaa !2
  %or573 = or i32 %159, %retval.2.i2330
  store i32 %or573, i32* %b_error, align 4, !tbaa !2
  br label %if.end1374

if.else574:                                       ; preds = %if.else558
  %call575 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.90, i32 0, i32 0)) #13
  %tobool576 = icmp eq i32 %call575, 0
  br i1 %tobool576, label %if.then577, label %if.else591

if.then577:                                       ; preds = %if.else574
  %i_cqm_preset578 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 36
  store i32 2, i32* %i_cqm_preset578, align 8, !tbaa !119
  %160 = bitcast i32* %coef.i2332 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %160) #5
  %call24.i2333 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %value.addr.2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0), i32* nonnull %coef.i2332) #5
  %tobool25.i2334 = icmp eq i32 %call24.i2333, 0
  %161 = load i32, i32* %coef.i2332, align 4
  %.off26.i2335 = add i32 %161, -1
  %162 = icmp ugt i32 %.off26.i2335, 254
  %163 = or i1 %tobool25.i2334, %162
  br i1 %163, label %cleanup.i2340, label %do.cond.i2347

do.body.i2339:                                    ; preds = %land.lhs.true.i2351
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %160) #5
  %call.i2336 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %incdec.ptr.i2350, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0), i32* nonnull %coef.i2332) #5
  %tobool.i2337 = icmp eq i32 %call.i2336, 0
  %164 = load i32, i32* %coef.i2332, align 4
  %.off.i2338 = add i32 %164, -1
  %165 = icmp ugt i32 %.off.i2338, 254
  %166 = or i1 %tobool.i2337, %165
  br i1 %166, label %cleanup.i2340, label %do.cond.i2347

cleanup.i2340:                                    ; preds = %do.body.i2339, %if.then577
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %160) #5
  br label %parse_cqm.exit2356

do.cond.i2347:                                    ; preds = %if.then577, %do.body.i2339
  %167 = phi i32 [ %164, %do.body.i2339 ], [ %161, %if.then577 ]
  %i.028.i2341 = phi i32 [ %inc.i2344, %do.body.i2339 ], [ 0, %if.then577 ]
  %str.addr.027.i2342 = phi i8* [ %incdec.ptr.i2350, %do.body.i2339 ], [ %value.addr.2, %if.then577 ]
  %conv.i2343 = trunc i32 %167 to i8
  %inc.i2344 = add i32 %i.028.i2341, 1
  %arrayidx.i2345 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 42, i32 %i.028.i2341
  store i8 %conv.i2343, i8* %arrayidx.i2345, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %160) #5
  %exitcond3092 = icmp eq i32 %i.028.i2341, 63
  br i1 %exitcond3092, label %do.end.i2354, label %land.lhs.true.i2351

land.lhs.true.i2351:                              ; preds = %do.cond.i2347
  %call5.i2348 = call i8* @strchr(i8* nonnull dereferenceable(1) %str.addr.027.i2342, i32 44) #13
  %tobool6.i2349 = icmp eq i8* %call5.i2348, null
  %incdec.ptr.i2350 = getelementptr inbounds i8, i8* %call5.i2348, i32 1
  br i1 %tobool6.i2349, label %do.end.i2354, label %do.body.i2339

do.end.i2354:                                     ; preds = %do.cond.i2347, %land.lhs.true.i2351
  %cmp8.i2352 = icmp ne i32 %inc.i2344, 64
  %cond.i2353 = sext i1 %cmp8.i2352 to i32
  br label %parse_cqm.exit2356

parse_cqm.exit2356:                               ; preds = %cleanup.i2340, %do.end.i2354
  %retval.2.i2355 = phi i32 [ %cond.i2353, %do.end.i2354 ], [ -1, %cleanup.i2340 ]
  %168 = load i32, i32* %b_error, align 4, !tbaa !2
  %or581 = or i32 %168, %retval.2.i2355
  store i32 %or581, i32* %b_error, align 4, !tbaa !2
  %169 = bitcast i32* %coef.i2357 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %169) #5
  %call24.i2358 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %value.addr.2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0), i32* nonnull %coef.i2357) #5
  %tobool25.i2359 = icmp eq i32 %call24.i2358, 0
  %170 = load i32, i32* %coef.i2357, align 4
  %.off26.i2360 = add i32 %170, -1
  %171 = icmp ugt i32 %.off26.i2360, 254
  %172 = or i1 %tobool25.i2359, %171
  br i1 %172, label %cleanup.i2365, label %do.cond.i2372

do.body.i2364:                                    ; preds = %land.lhs.true.i2376
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %169) #5
  %call.i2361 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %incdec.ptr.i2375, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0), i32* nonnull %coef.i2357) #5
  %tobool.i2362 = icmp eq i32 %call.i2361, 0
  %173 = load i32, i32* %coef.i2357, align 4
  %.off.i2363 = add i32 %173, -1
  %174 = icmp ugt i32 %.off.i2363, 254
  %175 = or i1 %tobool.i2362, %174
  br i1 %175, label %cleanup.i2365, label %do.cond.i2372

cleanup.i2365:                                    ; preds = %do.body.i2364, %parse_cqm.exit2356
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %169) #5
  br label %parse_cqm.exit2381

do.cond.i2372:                                    ; preds = %parse_cqm.exit2356, %do.body.i2364
  %176 = phi i32 [ %173, %do.body.i2364 ], [ %170, %parse_cqm.exit2356 ]
  %i.028.i2366 = phi i32 [ %inc.i2369, %do.body.i2364 ], [ 0, %parse_cqm.exit2356 ]
  %str.addr.027.i2367 = phi i8* [ %incdec.ptr.i2375, %do.body.i2364 ], [ %value.addr.2, %parse_cqm.exit2356 ]
  %conv.i2368 = trunc i32 %176 to i8
  %inc.i2369 = add i32 %i.028.i2366, 1
  %arrayidx.i2370 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 43, i32 %i.028.i2366
  store i8 %conv.i2368, i8* %arrayidx.i2370, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %169) #5
  %exitcond3091 = icmp eq i32 %i.028.i2366, 63
  br i1 %exitcond3091, label %do.end.i2379, label %land.lhs.true.i2376

land.lhs.true.i2376:                              ; preds = %do.cond.i2372
  %call5.i2373 = call i8* @strchr(i8* nonnull dereferenceable(1) %str.addr.027.i2367, i32 44) #13
  %tobool6.i2374 = icmp eq i8* %call5.i2373, null
  %incdec.ptr.i2375 = getelementptr inbounds i8, i8* %call5.i2373, i32 1
  br i1 %tobool6.i2374, label %do.end.i2379, label %do.body.i2364

do.end.i2379:                                     ; preds = %do.cond.i2372, %land.lhs.true.i2376
  %cmp8.i2377 = icmp ne i32 %inc.i2369, 64
  %cond.i2378 = sext i1 %cmp8.i2377 to i32
  br label %parse_cqm.exit2381

parse_cqm.exit2381:                               ; preds = %cleanup.i2365, %do.end.i2379
  %retval.2.i2380 = phi i32 [ %cond.i2378, %do.end.i2379 ], [ -1, %cleanup.i2365 ]
  %177 = load i32, i32* %b_error, align 4, !tbaa !2
  %or584 = or i32 %177, %retval.2.i2380
  store i32 %or584, i32* %b_error, align 4, !tbaa !2
  %178 = bitcast i32* %coef.i2382 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %178) #5
  %call24.i2383 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %value.addr.2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0), i32* nonnull %coef.i2382) #5
  %tobool25.i2384 = icmp eq i32 %call24.i2383, 0
  %179 = load i32, i32* %coef.i2382, align 4
  %.off26.i2385 = add i32 %179, -1
  %180 = icmp ugt i32 %.off26.i2385, 254
  %181 = or i1 %tobool25.i2384, %180
  br i1 %181, label %cleanup.i2390, label %do.cond.i2397

do.body.i2389:                                    ; preds = %land.lhs.true.i2401
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %178) #5
  %call.i2386 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %incdec.ptr.i2400, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0), i32* nonnull %coef.i2382) #5
  %tobool.i2387 = icmp eq i32 %call.i2386, 0
  %182 = load i32, i32* %coef.i2382, align 4
  %.off.i2388 = add i32 %182, -1
  %183 = icmp ugt i32 %.off.i2388, 254
  %184 = or i1 %tobool.i2387, %183
  br i1 %184, label %cleanup.i2390, label %do.cond.i2397

cleanup.i2390:                                    ; preds = %do.body.i2389, %parse_cqm.exit2381
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %178) #5
  br label %parse_cqm.exit2406

do.cond.i2397:                                    ; preds = %parse_cqm.exit2381, %do.body.i2389
  %185 = phi i32 [ %182, %do.body.i2389 ], [ %179, %parse_cqm.exit2381 ]
  %i.028.i2391 = phi i32 [ %inc.i2394, %do.body.i2389 ], [ 0, %parse_cqm.exit2381 ]
  %str.addr.027.i2392 = phi i8* [ %incdec.ptr.i2400, %do.body.i2389 ], [ %value.addr.2, %parse_cqm.exit2381 ]
  %conv.i2393 = trunc i32 %185 to i8
  %inc.i2394 = add i32 %i.028.i2391, 1
  %arrayidx.i2395 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 44, i32 %i.028.i2391
  store i8 %conv.i2393, i8* %arrayidx.i2395, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %178) #5
  %exitcond3090 = icmp eq i32 %i.028.i2391, 63
  br i1 %exitcond3090, label %do.end.i2404, label %land.lhs.true.i2401

land.lhs.true.i2401:                              ; preds = %do.cond.i2397
  %call5.i2398 = call i8* @strchr(i8* nonnull dereferenceable(1) %str.addr.027.i2392, i32 44) #13
  %tobool6.i2399 = icmp eq i8* %call5.i2398, null
  %incdec.ptr.i2400 = getelementptr inbounds i8, i8* %call5.i2398, i32 1
  br i1 %tobool6.i2399, label %do.end.i2404, label %do.body.i2389

do.end.i2404:                                     ; preds = %do.cond.i2397, %land.lhs.true.i2401
  %cmp8.i2402 = icmp ne i32 %inc.i2394, 64
  %cond.i2403 = sext i1 %cmp8.i2402 to i32
  br label %parse_cqm.exit2406

parse_cqm.exit2406:                               ; preds = %cleanup.i2390, %do.end.i2404
  %retval.2.i2405 = phi i32 [ %cond.i2403, %do.end.i2404 ], [ -1, %cleanup.i2390 ]
  %186 = load i32, i32* %b_error, align 4, !tbaa !2
  %or587 = or i32 %186, %retval.2.i2405
  store i32 %or587, i32* %b_error, align 4, !tbaa !2
  %187 = bitcast i32* %coef.i2407 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %187) #5
  %call24.i2408 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %value.addr.2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0), i32* nonnull %coef.i2407) #5
  %tobool25.i2409 = icmp eq i32 %call24.i2408, 0
  %188 = load i32, i32* %coef.i2407, align 4
  %.off26.i2410 = add i32 %188, -1
  %189 = icmp ugt i32 %.off26.i2410, 254
  %190 = or i1 %tobool25.i2409, %189
  br i1 %190, label %cleanup.i2415, label %do.cond.i2422

do.body.i2414:                                    ; preds = %land.lhs.true.i2426
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %187) #5
  %call.i2411 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %incdec.ptr.i2425, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0), i32* nonnull %coef.i2407) #5
  %tobool.i2412 = icmp eq i32 %call.i2411, 0
  %191 = load i32, i32* %coef.i2407, align 4
  %.off.i2413 = add i32 %191, -1
  %192 = icmp ugt i32 %.off.i2413, 254
  %193 = or i1 %tobool.i2412, %192
  br i1 %193, label %cleanup.i2415, label %do.cond.i2422

cleanup.i2415:                                    ; preds = %do.body.i2414, %parse_cqm.exit2406
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %187) #5
  br label %parse_cqm.exit2431

do.cond.i2422:                                    ; preds = %parse_cqm.exit2406, %do.body.i2414
  %194 = phi i32 [ %191, %do.body.i2414 ], [ %188, %parse_cqm.exit2406 ]
  %i.028.i2416 = phi i32 [ %inc.i2419, %do.body.i2414 ], [ 0, %parse_cqm.exit2406 ]
  %str.addr.027.i2417 = phi i8* [ %incdec.ptr.i2425, %do.body.i2414 ], [ %value.addr.2, %parse_cqm.exit2406 ]
  %conv.i2418 = trunc i32 %194 to i8
  %inc.i2419 = add i32 %i.028.i2416, 1
  %arrayidx.i2420 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 45, i32 %i.028.i2416
  store i8 %conv.i2418, i8* %arrayidx.i2420, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %187) #5
  %exitcond3089 = icmp eq i32 %i.028.i2416, 63
  br i1 %exitcond3089, label %do.end.i2429, label %land.lhs.true.i2426

land.lhs.true.i2426:                              ; preds = %do.cond.i2422
  %call5.i2423 = call i8* @strchr(i8* nonnull dereferenceable(1) %str.addr.027.i2417, i32 44) #13
  %tobool6.i2424 = icmp eq i8* %call5.i2423, null
  %incdec.ptr.i2425 = getelementptr inbounds i8, i8* %call5.i2423, i32 1
  br i1 %tobool6.i2424, label %do.end.i2429, label %do.body.i2414

do.end.i2429:                                     ; preds = %do.cond.i2422, %land.lhs.true.i2426
  %cmp8.i2427 = icmp ne i32 %inc.i2419, 64
  %cond.i2428 = sext i1 %cmp8.i2427 to i32
  br label %parse_cqm.exit2431

parse_cqm.exit2431:                               ; preds = %cleanup.i2415, %do.end.i2429
  %retval.2.i2430 = phi i32 [ %cond.i2428, %do.end.i2429 ], [ -1, %cleanup.i2415 ]
  %195 = load i32, i32* %b_error, align 4, !tbaa !2
  %or590 = or i32 %195, %retval.2.i2430
  store i32 %or590, i32* %b_error, align 4, !tbaa !2
  br label %if.end1374

if.else591:                                       ; preds = %if.else574
  %call592 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.91, i32 0, i32 0)) #13
  %tobool593 = icmp eq i32 %call592, 0
  br i1 %tobool593, label %if.then594, label %if.else604

if.then594:                                       ; preds = %if.else591
  %i_cqm_preset595 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 36
  store i32 2, i32* %i_cqm_preset595, align 8, !tbaa !119
  %196 = bitcast i32* %coef.i2432 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %196) #5
  %call24.i2433 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %value.addr.2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0), i32* nonnull %coef.i2432) #5
  %tobool25.i2434 = icmp eq i32 %call24.i2433, 0
  %197 = load i32, i32* %coef.i2432, align 4
  %.off26.i2435 = add i32 %197, -1
  %198 = icmp ugt i32 %.off26.i2435, 254
  %199 = or i1 %tobool25.i2434, %198
  br i1 %199, label %cleanup.i2440, label %do.cond.i2447

do.body.i2439:                                    ; preds = %land.lhs.true.i2451
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %196) #5
  %call.i2436 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %incdec.ptr.i2450, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0), i32* nonnull %coef.i2432) #5
  %tobool.i2437 = icmp eq i32 %call.i2436, 0
  %200 = load i32, i32* %coef.i2432, align 4
  %.off.i2438 = add i32 %200, -1
  %201 = icmp ugt i32 %.off.i2438, 254
  %202 = or i1 %tobool.i2437, %201
  br i1 %202, label %cleanup.i2440, label %do.cond.i2447

cleanup.i2440:                                    ; preds = %do.body.i2439, %if.then594
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %196) #5
  br label %parse_cqm.exit2456

do.cond.i2447:                                    ; preds = %if.then594, %do.body.i2439
  %203 = phi i32 [ %200, %do.body.i2439 ], [ %197, %if.then594 ]
  %i.028.i2441 = phi i32 [ %inc.i2444, %do.body.i2439 ], [ 0, %if.then594 ]
  %str.addr.027.i2442 = phi i8* [ %incdec.ptr.i2450, %do.body.i2439 ], [ %value.addr.2, %if.then594 ]
  %conv.i2443 = trunc i32 %203 to i8
  %inc.i2444 = add i32 %i.028.i2441, 1
  %arrayidx.i2445 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 38, i32 %i.028.i2441
  store i8 %conv.i2443, i8* %arrayidx.i2445, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %196) #5
  %exitcond3094 = icmp eq i32 %i.028.i2441, 15
  br i1 %exitcond3094, label %do.end.i2454, label %land.lhs.true.i2451

land.lhs.true.i2451:                              ; preds = %do.cond.i2447
  %call5.i2448 = call i8* @strchr(i8* nonnull dereferenceable(1) %str.addr.027.i2442, i32 44) #13
  %tobool6.i2449 = icmp eq i8* %call5.i2448, null
  %incdec.ptr.i2450 = getelementptr inbounds i8, i8* %call5.i2448, i32 1
  br i1 %tobool6.i2449, label %do.end.i2454, label %do.body.i2439

do.end.i2454:                                     ; preds = %do.cond.i2447, %land.lhs.true.i2451
  %cmp8.i2452 = icmp ne i32 %inc.i2444, 16
  %cond.i2453 = sext i1 %cmp8.i2452 to i32
  br label %parse_cqm.exit2456

parse_cqm.exit2456:                               ; preds = %cleanup.i2440, %do.end.i2454
  %retval.2.i2455 = phi i32 [ %cond.i2453, %do.end.i2454 ], [ -1, %cleanup.i2440 ]
  %204 = load i32, i32* %b_error, align 4, !tbaa !2
  %or599 = or i32 %204, %retval.2.i2455
  store i32 %or599, i32* %b_error, align 4, !tbaa !2
  %205 = bitcast i32* %coef.i2457 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %205) #5
  %call24.i2458 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %value.addr.2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0), i32* nonnull %coef.i2457) #5
  %tobool25.i2459 = icmp eq i32 %call24.i2458, 0
  %206 = load i32, i32* %coef.i2457, align 4
  %.off26.i2460 = add i32 %206, -1
  %207 = icmp ugt i32 %.off26.i2460, 254
  %208 = or i1 %tobool25.i2459, %207
  br i1 %208, label %cleanup.i2465, label %do.cond.i2472

do.body.i2464:                                    ; preds = %land.lhs.true.i2476
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %205) #5
  %call.i2461 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %incdec.ptr.i2475, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0), i32* nonnull %coef.i2457) #5
  %tobool.i2462 = icmp eq i32 %call.i2461, 0
  %209 = load i32, i32* %coef.i2457, align 4
  %.off.i2463 = add i32 %209, -1
  %210 = icmp ugt i32 %.off.i2463, 254
  %211 = or i1 %tobool.i2462, %210
  br i1 %211, label %cleanup.i2465, label %do.cond.i2472

cleanup.i2465:                                    ; preds = %do.body.i2464, %parse_cqm.exit2456
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %205) #5
  br label %parse_cqm.exit2481

do.cond.i2472:                                    ; preds = %parse_cqm.exit2456, %do.body.i2464
  %212 = phi i32 [ %209, %do.body.i2464 ], [ %206, %parse_cqm.exit2456 ]
  %i.028.i2466 = phi i32 [ %inc.i2469, %do.body.i2464 ], [ 0, %parse_cqm.exit2456 ]
  %str.addr.027.i2467 = phi i8* [ %incdec.ptr.i2475, %do.body.i2464 ], [ %value.addr.2, %parse_cqm.exit2456 ]
  %conv.i2468 = trunc i32 %212 to i8
  %inc.i2469 = add i32 %i.028.i2466, 1
  %arrayidx.i2470 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 40, i32 %i.028.i2466
  store i8 %conv.i2468, i8* %arrayidx.i2470, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %205) #5
  %exitcond3093 = icmp eq i32 %i.028.i2466, 15
  br i1 %exitcond3093, label %do.end.i2479, label %land.lhs.true.i2476

land.lhs.true.i2476:                              ; preds = %do.cond.i2472
  %call5.i2473 = call i8* @strchr(i8* nonnull dereferenceable(1) %str.addr.027.i2467, i32 44) #13
  %tobool6.i2474 = icmp eq i8* %call5.i2473, null
  %incdec.ptr.i2475 = getelementptr inbounds i8, i8* %call5.i2473, i32 1
  br i1 %tobool6.i2474, label %do.end.i2479, label %do.body.i2464

do.end.i2479:                                     ; preds = %do.cond.i2472, %land.lhs.true.i2476
  %cmp8.i2477 = icmp ne i32 %inc.i2469, 16
  %cond.i2478 = sext i1 %cmp8.i2477 to i32
  br label %parse_cqm.exit2481

parse_cqm.exit2481:                               ; preds = %cleanup.i2465, %do.end.i2479
  %retval.2.i2480 = phi i32 [ %cond.i2478, %do.end.i2479 ], [ -1, %cleanup.i2465 ]
  %213 = load i32, i32* %b_error, align 4, !tbaa !2
  %or603 = or i32 %213, %retval.2.i2480
  store i32 %or603, i32* %b_error, align 4, !tbaa !2
  br label %if.end1374

if.else604:                                       ; preds = %if.else591
  %call605 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.92, i32 0, i32 0)) #13
  %tobool606 = icmp eq i32 %call605, 0
  br i1 %tobool606, label %if.then607, label %if.else617

if.then607:                                       ; preds = %if.else604
  %i_cqm_preset608 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 36
  store i32 2, i32* %i_cqm_preset608, align 8, !tbaa !119
  %214 = bitcast i32* %coef.i2482 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %214) #5
  %call24.i2483 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %value.addr.2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0), i32* nonnull %coef.i2482) #5
  %tobool25.i2484 = icmp eq i32 %call24.i2483, 0
  %215 = load i32, i32* %coef.i2482, align 4
  %.off26.i2485 = add i32 %215, -1
  %216 = icmp ugt i32 %.off26.i2485, 254
  %217 = or i1 %tobool25.i2484, %216
  br i1 %217, label %cleanup.i2490, label %do.cond.i2497

do.body.i2489:                                    ; preds = %land.lhs.true.i2501
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %214) #5
  %call.i2486 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %incdec.ptr.i2500, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0), i32* nonnull %coef.i2482) #5
  %tobool.i2487 = icmp eq i32 %call.i2486, 0
  %218 = load i32, i32* %coef.i2482, align 4
  %.off.i2488 = add i32 %218, -1
  %219 = icmp ugt i32 %.off.i2488, 254
  %220 = or i1 %tobool.i2487, %219
  br i1 %220, label %cleanup.i2490, label %do.cond.i2497

cleanup.i2490:                                    ; preds = %do.body.i2489, %if.then607
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %214) #5
  br label %parse_cqm.exit2506

do.cond.i2497:                                    ; preds = %if.then607, %do.body.i2489
  %221 = phi i32 [ %218, %do.body.i2489 ], [ %215, %if.then607 ]
  %i.028.i2491 = phi i32 [ %inc.i2494, %do.body.i2489 ], [ 0, %if.then607 ]
  %str.addr.027.i2492 = phi i8* [ %incdec.ptr.i2500, %do.body.i2489 ], [ %value.addr.2, %if.then607 ]
  %conv.i2493 = trunc i32 %221 to i8
  %inc.i2494 = add i32 %i.028.i2491, 1
  %arrayidx.i2495 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 39, i32 %i.028.i2491
  store i8 %conv.i2493, i8* %arrayidx.i2495, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %214) #5
  %exitcond3096 = icmp eq i32 %i.028.i2491, 15
  br i1 %exitcond3096, label %do.end.i2504, label %land.lhs.true.i2501

land.lhs.true.i2501:                              ; preds = %do.cond.i2497
  %call5.i2498 = call i8* @strchr(i8* nonnull dereferenceable(1) %str.addr.027.i2492, i32 44) #13
  %tobool6.i2499 = icmp eq i8* %call5.i2498, null
  %incdec.ptr.i2500 = getelementptr inbounds i8, i8* %call5.i2498, i32 1
  br i1 %tobool6.i2499, label %do.end.i2504, label %do.body.i2489

do.end.i2504:                                     ; preds = %do.cond.i2497, %land.lhs.true.i2501
  %cmp8.i2502 = icmp ne i32 %inc.i2494, 16
  %cond.i2503 = sext i1 %cmp8.i2502 to i32
  br label %parse_cqm.exit2506

parse_cqm.exit2506:                               ; preds = %cleanup.i2490, %do.end.i2504
  %retval.2.i2505 = phi i32 [ %cond.i2503, %do.end.i2504 ], [ -1, %cleanup.i2490 ]
  %222 = load i32, i32* %b_error, align 4, !tbaa !2
  %or612 = or i32 %222, %retval.2.i2505
  store i32 %or612, i32* %b_error, align 4, !tbaa !2
  %223 = bitcast i32* %coef.i2507 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %223) #5
  %call24.i2508 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %value.addr.2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0), i32* nonnull %coef.i2507) #5
  %tobool25.i2509 = icmp eq i32 %call24.i2508, 0
  %224 = load i32, i32* %coef.i2507, align 4
  %.off26.i2510 = add i32 %224, -1
  %225 = icmp ugt i32 %.off26.i2510, 254
  %226 = or i1 %tobool25.i2509, %225
  br i1 %226, label %cleanup.i2515, label %do.cond.i2522

do.body.i2514:                                    ; preds = %land.lhs.true.i2526
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %223) #5
  %call.i2511 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %incdec.ptr.i2525, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0), i32* nonnull %coef.i2507) #5
  %tobool.i2512 = icmp eq i32 %call.i2511, 0
  %227 = load i32, i32* %coef.i2507, align 4
  %.off.i2513 = add i32 %227, -1
  %228 = icmp ugt i32 %.off.i2513, 254
  %229 = or i1 %tobool.i2512, %228
  br i1 %229, label %cleanup.i2515, label %do.cond.i2522

cleanup.i2515:                                    ; preds = %do.body.i2514, %parse_cqm.exit2506
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %223) #5
  br label %parse_cqm.exit2531

do.cond.i2522:                                    ; preds = %parse_cqm.exit2506, %do.body.i2514
  %230 = phi i32 [ %227, %do.body.i2514 ], [ %224, %parse_cqm.exit2506 ]
  %i.028.i2516 = phi i32 [ %inc.i2519, %do.body.i2514 ], [ 0, %parse_cqm.exit2506 ]
  %str.addr.027.i2517 = phi i8* [ %incdec.ptr.i2525, %do.body.i2514 ], [ %value.addr.2, %parse_cqm.exit2506 ]
  %conv.i2518 = trunc i32 %230 to i8
  %inc.i2519 = add i32 %i.028.i2516, 1
  %arrayidx.i2520 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 41, i32 %i.028.i2516
  store i8 %conv.i2518, i8* %arrayidx.i2520, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %223) #5
  %exitcond3095 = icmp eq i32 %i.028.i2516, 15
  br i1 %exitcond3095, label %do.end.i2529, label %land.lhs.true.i2526

land.lhs.true.i2526:                              ; preds = %do.cond.i2522
  %call5.i2523 = call i8* @strchr(i8* nonnull dereferenceable(1) %str.addr.027.i2517, i32 44) #13
  %tobool6.i2524 = icmp eq i8* %call5.i2523, null
  %incdec.ptr.i2525 = getelementptr inbounds i8, i8* %call5.i2523, i32 1
  br i1 %tobool6.i2524, label %do.end.i2529, label %do.body.i2514

do.end.i2529:                                     ; preds = %do.cond.i2522, %land.lhs.true.i2526
  %cmp8.i2527 = icmp ne i32 %inc.i2519, 16
  %cond.i2528 = sext i1 %cmp8.i2527 to i32
  br label %parse_cqm.exit2531

parse_cqm.exit2531:                               ; preds = %cleanup.i2515, %do.end.i2529
  %retval.2.i2530 = phi i32 [ %cond.i2528, %do.end.i2529 ], [ -1, %cleanup.i2515 ]
  %231 = load i32, i32* %b_error, align 4, !tbaa !2
  %or616 = or i32 %231, %retval.2.i2530
  store i32 %or616, i32* %b_error, align 4, !tbaa !2
  br label %if.end1374

if.else617:                                       ; preds = %if.else604
  %call618 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.93, i32 0, i32 0)) #13
  %tobool619 = icmp eq i32 %call618, 0
  br i1 %tobool619, label %if.then620, label %if.else626

if.then620:                                       ; preds = %if.else617
  %i_cqm_preset621 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 36
  store i32 2, i32* %i_cqm_preset621, align 8, !tbaa !119
  %232 = bitcast i32* %coef.i2532 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %232) #5
  %call24.i2533 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %value.addr.2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0), i32* nonnull %coef.i2532) #5
  %tobool25.i2534 = icmp eq i32 %call24.i2533, 0
  %233 = load i32, i32* %coef.i2532, align 4
  %.off26.i2535 = add i32 %233, -1
  %234 = icmp ugt i32 %.off26.i2535, 254
  %235 = or i1 %tobool25.i2534, %234
  br i1 %235, label %cleanup.i2540, label %do.cond.i2547

do.body.i2539:                                    ; preds = %land.lhs.true.i2551
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %232) #5
  %call.i2536 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %incdec.ptr.i2550, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0), i32* nonnull %coef.i2532) #5
  %tobool.i2537 = icmp eq i32 %call.i2536, 0
  %236 = load i32, i32* %coef.i2532, align 4
  %.off.i2538 = add i32 %236, -1
  %237 = icmp ugt i32 %.off.i2538, 254
  %238 = or i1 %tobool.i2537, %237
  br i1 %238, label %cleanup.i2540, label %do.cond.i2547

cleanup.i2540:                                    ; preds = %do.body.i2539, %if.then620
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %232) #5
  br label %parse_cqm.exit2556

do.cond.i2547:                                    ; preds = %if.then620, %do.body.i2539
  %239 = phi i32 [ %236, %do.body.i2539 ], [ %233, %if.then620 ]
  %i.028.i2541 = phi i32 [ %inc.i2544, %do.body.i2539 ], [ 0, %if.then620 ]
  %str.addr.027.i2542 = phi i8* [ %incdec.ptr.i2550, %do.body.i2539 ], [ %value.addr.2, %if.then620 ]
  %conv.i2543 = trunc i32 %239 to i8
  %inc.i2544 = add i32 %i.028.i2541, 1
  %arrayidx.i2545 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 38, i32 %i.028.i2541
  store i8 %conv.i2543, i8* %arrayidx.i2545, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %232) #5
  %exitcond3097 = icmp eq i32 %i.028.i2541, 15
  br i1 %exitcond3097, label %do.end.i2554, label %land.lhs.true.i2551

land.lhs.true.i2551:                              ; preds = %do.cond.i2547
  %call5.i2548 = call i8* @strchr(i8* nonnull dereferenceable(1) %str.addr.027.i2542, i32 44) #13
  %tobool6.i2549 = icmp eq i8* %call5.i2548, null
  %incdec.ptr.i2550 = getelementptr inbounds i8, i8* %call5.i2548, i32 1
  br i1 %tobool6.i2549, label %do.end.i2554, label %do.body.i2539

do.end.i2554:                                     ; preds = %do.cond.i2547, %land.lhs.true.i2551
  %cmp8.i2552 = icmp ne i32 %inc.i2544, 16
  %cond.i2553 = sext i1 %cmp8.i2552 to i32
  br label %parse_cqm.exit2556

parse_cqm.exit2556:                               ; preds = %cleanup.i2540, %do.end.i2554
  %retval.2.i2555 = phi i32 [ %cond.i2553, %do.end.i2554 ], [ -1, %cleanup.i2540 ]
  %240 = load i32, i32* %b_error, align 4, !tbaa !2
  %or625 = or i32 %240, %retval.2.i2555
  store i32 %or625, i32* %b_error, align 4, !tbaa !2
  br label %if.end1374

if.else626:                                       ; preds = %if.else617
  %call627 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.94, i32 0, i32 0)) #13
  %tobool628 = icmp eq i32 %call627, 0
  br i1 %tobool628, label %if.then629, label %if.else635

if.then629:                                       ; preds = %if.else626
  %i_cqm_preset630 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 36
  store i32 2, i32* %i_cqm_preset630, align 8, !tbaa !119
  %241 = bitcast i32* %coef.i2557 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %241) #5
  %call24.i2558 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %value.addr.2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0), i32* nonnull %coef.i2557) #5
  %tobool25.i2559 = icmp eq i32 %call24.i2558, 0
  %242 = load i32, i32* %coef.i2557, align 4
  %.off26.i2560 = add i32 %242, -1
  %243 = icmp ugt i32 %.off26.i2560, 254
  %244 = or i1 %tobool25.i2559, %243
  br i1 %244, label %cleanup.i2565, label %do.cond.i2572

do.body.i2564:                                    ; preds = %land.lhs.true.i2576
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %241) #5
  %call.i2561 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %incdec.ptr.i2575, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0), i32* nonnull %coef.i2557) #5
  %tobool.i2562 = icmp eq i32 %call.i2561, 0
  %245 = load i32, i32* %coef.i2557, align 4
  %.off.i2563 = add i32 %245, -1
  %246 = icmp ugt i32 %.off.i2563, 254
  %247 = or i1 %tobool.i2562, %246
  br i1 %247, label %cleanup.i2565, label %do.cond.i2572

cleanup.i2565:                                    ; preds = %do.body.i2564, %if.then629
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %241) #5
  br label %parse_cqm.exit2581

do.cond.i2572:                                    ; preds = %if.then629, %do.body.i2564
  %248 = phi i32 [ %245, %do.body.i2564 ], [ %242, %if.then629 ]
  %i.028.i2566 = phi i32 [ %inc.i2569, %do.body.i2564 ], [ 0, %if.then629 ]
  %str.addr.027.i2567 = phi i8* [ %incdec.ptr.i2575, %do.body.i2564 ], [ %value.addr.2, %if.then629 ]
  %conv.i2568 = trunc i32 %248 to i8
  %inc.i2569 = add i32 %i.028.i2566, 1
  %arrayidx.i2570 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 40, i32 %i.028.i2566
  store i8 %conv.i2568, i8* %arrayidx.i2570, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %241) #5
  %exitcond3098 = icmp eq i32 %i.028.i2566, 15
  br i1 %exitcond3098, label %do.end.i2579, label %land.lhs.true.i2576

land.lhs.true.i2576:                              ; preds = %do.cond.i2572
  %call5.i2573 = call i8* @strchr(i8* nonnull dereferenceable(1) %str.addr.027.i2567, i32 44) #13
  %tobool6.i2574 = icmp eq i8* %call5.i2573, null
  %incdec.ptr.i2575 = getelementptr inbounds i8, i8* %call5.i2573, i32 1
  br i1 %tobool6.i2574, label %do.end.i2579, label %do.body.i2564

do.end.i2579:                                     ; preds = %do.cond.i2572, %land.lhs.true.i2576
  %cmp8.i2577 = icmp ne i32 %inc.i2569, 16
  %cond.i2578 = sext i1 %cmp8.i2577 to i32
  br label %parse_cqm.exit2581

parse_cqm.exit2581:                               ; preds = %cleanup.i2565, %do.end.i2579
  %retval.2.i2580 = phi i32 [ %cond.i2578, %do.end.i2579 ], [ -1, %cleanup.i2565 ]
  %249 = load i32, i32* %b_error, align 4, !tbaa !2
  %or634 = or i32 %249, %retval.2.i2580
  store i32 %or634, i32* %b_error, align 4, !tbaa !2
  br label %if.end1374

if.else635:                                       ; preds = %if.else626
  %call636 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i32 0, i32 0)) #13
  %tobool637 = icmp eq i32 %call636, 0
  br i1 %tobool637, label %if.then638, label %if.else644

if.then638:                                       ; preds = %if.else635
  %i_cqm_preset639 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 36
  store i32 2, i32* %i_cqm_preset639, align 8, !tbaa !119
  %250 = bitcast i32* %coef.i2582 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %250) #5
  %call24.i2583 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %value.addr.2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0), i32* nonnull %coef.i2582) #5
  %tobool25.i2584 = icmp eq i32 %call24.i2583, 0
  %251 = load i32, i32* %coef.i2582, align 4
  %.off26.i2585 = add i32 %251, -1
  %252 = icmp ugt i32 %.off26.i2585, 254
  %253 = or i1 %tobool25.i2584, %252
  br i1 %253, label %cleanup.i2590, label %do.cond.i2597

do.body.i2589:                                    ; preds = %land.lhs.true.i2601
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %250) #5
  %call.i2586 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %incdec.ptr.i2600, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0), i32* nonnull %coef.i2582) #5
  %tobool.i2587 = icmp eq i32 %call.i2586, 0
  %254 = load i32, i32* %coef.i2582, align 4
  %.off.i2588 = add i32 %254, -1
  %255 = icmp ugt i32 %.off.i2588, 254
  %256 = or i1 %tobool.i2587, %255
  br i1 %256, label %cleanup.i2590, label %do.cond.i2597

cleanup.i2590:                                    ; preds = %do.body.i2589, %if.then638
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %250) #5
  br label %parse_cqm.exit2606

do.cond.i2597:                                    ; preds = %if.then638, %do.body.i2589
  %257 = phi i32 [ %254, %do.body.i2589 ], [ %251, %if.then638 ]
  %i.028.i2591 = phi i32 [ %inc.i2594, %do.body.i2589 ], [ 0, %if.then638 ]
  %str.addr.027.i2592 = phi i8* [ %incdec.ptr.i2600, %do.body.i2589 ], [ %value.addr.2, %if.then638 ]
  %conv.i2593 = trunc i32 %257 to i8
  %inc.i2594 = add i32 %i.028.i2591, 1
  %arrayidx.i2595 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 39, i32 %i.028.i2591
  store i8 %conv.i2593, i8* %arrayidx.i2595, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %250) #5
  %exitcond3099 = icmp eq i32 %i.028.i2591, 15
  br i1 %exitcond3099, label %do.end.i2604, label %land.lhs.true.i2601

land.lhs.true.i2601:                              ; preds = %do.cond.i2597
  %call5.i2598 = call i8* @strchr(i8* nonnull dereferenceable(1) %str.addr.027.i2592, i32 44) #13
  %tobool6.i2599 = icmp eq i8* %call5.i2598, null
  %incdec.ptr.i2600 = getelementptr inbounds i8, i8* %call5.i2598, i32 1
  br i1 %tobool6.i2599, label %do.end.i2604, label %do.body.i2589

do.end.i2604:                                     ; preds = %do.cond.i2597, %land.lhs.true.i2601
  %cmp8.i2602 = icmp ne i32 %inc.i2594, 16
  %cond.i2603 = sext i1 %cmp8.i2602 to i32
  br label %parse_cqm.exit2606

parse_cqm.exit2606:                               ; preds = %cleanup.i2590, %do.end.i2604
  %retval.2.i2605 = phi i32 [ %cond.i2603, %do.end.i2604 ], [ -1, %cleanup.i2590 ]
  %258 = load i32, i32* %b_error, align 4, !tbaa !2
  %or643 = or i32 %258, %retval.2.i2605
  store i32 %or643, i32* %b_error, align 4, !tbaa !2
  br label %if.end1374

if.else644:                                       ; preds = %if.else635
  %call645 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.96, i32 0, i32 0)) #13
  %tobool646 = icmp eq i32 %call645, 0
  br i1 %tobool646, label %if.then647, label %if.else653

if.then647:                                       ; preds = %if.else644
  %i_cqm_preset648 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 36
  store i32 2, i32* %i_cqm_preset648, align 8, !tbaa !119
  %259 = bitcast i32* %coef.i2607 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %259) #5
  %call24.i2608 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %value.addr.2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0), i32* nonnull %coef.i2607) #5
  %tobool25.i2609 = icmp eq i32 %call24.i2608, 0
  %260 = load i32, i32* %coef.i2607, align 4
  %.off26.i2610 = add i32 %260, -1
  %261 = icmp ugt i32 %.off26.i2610, 254
  %262 = or i1 %tobool25.i2609, %261
  br i1 %262, label %cleanup.i2615, label %do.cond.i2622

do.body.i2614:                                    ; preds = %land.lhs.true.i2626
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %259) #5
  %call.i2611 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %incdec.ptr.i2625, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0), i32* nonnull %coef.i2607) #5
  %tobool.i2612 = icmp eq i32 %call.i2611, 0
  %263 = load i32, i32* %coef.i2607, align 4
  %.off.i2613 = add i32 %263, -1
  %264 = icmp ugt i32 %.off.i2613, 254
  %265 = or i1 %tobool.i2612, %264
  br i1 %265, label %cleanup.i2615, label %do.cond.i2622

cleanup.i2615:                                    ; preds = %do.body.i2614, %if.then647
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %259) #5
  br label %parse_cqm.exit2631

do.cond.i2622:                                    ; preds = %if.then647, %do.body.i2614
  %266 = phi i32 [ %263, %do.body.i2614 ], [ %260, %if.then647 ]
  %i.028.i2616 = phi i32 [ %inc.i2619, %do.body.i2614 ], [ 0, %if.then647 ]
  %str.addr.027.i2617 = phi i8* [ %incdec.ptr.i2625, %do.body.i2614 ], [ %value.addr.2, %if.then647 ]
  %conv.i2618 = trunc i32 %266 to i8
  %inc.i2619 = add i32 %i.028.i2616, 1
  %arrayidx.i2620 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 41, i32 %i.028.i2616
  store i8 %conv.i2618, i8* %arrayidx.i2620, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %259) #5
  %exitcond3100 = icmp eq i32 %i.028.i2616, 15
  br i1 %exitcond3100, label %do.end.i2629, label %land.lhs.true.i2626

land.lhs.true.i2626:                              ; preds = %do.cond.i2622
  %call5.i2623 = call i8* @strchr(i8* nonnull dereferenceable(1) %str.addr.027.i2617, i32 44) #13
  %tobool6.i2624 = icmp eq i8* %call5.i2623, null
  %incdec.ptr.i2625 = getelementptr inbounds i8, i8* %call5.i2623, i32 1
  br i1 %tobool6.i2624, label %do.end.i2629, label %do.body.i2614

do.end.i2629:                                     ; preds = %do.cond.i2622, %land.lhs.true.i2626
  %cmp8.i2627 = icmp ne i32 %inc.i2619, 16
  %cond.i2628 = sext i1 %cmp8.i2627 to i32
  br label %parse_cqm.exit2631

parse_cqm.exit2631:                               ; preds = %cleanup.i2615, %do.end.i2629
  %retval.2.i2630 = phi i32 [ %cond.i2628, %do.end.i2629 ], [ -1, %cleanup.i2615 ]
  %267 = load i32, i32* %b_error, align 4, !tbaa !2
  %or652 = or i32 %267, %retval.2.i2630
  store i32 %or652, i32* %b_error, align 4, !tbaa !2
  br label %if.end1374

if.else653:                                       ; preds = %if.else644
  %call654 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.97, i32 0, i32 0)) #13
  %tobool655 = icmp eq i32 %call654, 0
  br i1 %tobool655, label %if.then656, label %if.else666

if.then656:                                       ; preds = %if.else653
  %i_cqm_preset657 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 36
  store i32 2, i32* %i_cqm_preset657, align 8, !tbaa !119
  %268 = bitcast i32* %coef.i2632 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %268) #5
  %call24.i2633 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %value.addr.2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0), i32* nonnull %coef.i2632) #5
  %tobool25.i2634 = icmp eq i32 %call24.i2633, 0
  %269 = load i32, i32* %coef.i2632, align 4
  %.off26.i2635 = add i32 %269, -1
  %270 = icmp ugt i32 %.off26.i2635, 254
  %271 = or i1 %tobool25.i2634, %270
  br i1 %271, label %cleanup.i2640, label %do.cond.i2647

do.body.i2639:                                    ; preds = %land.lhs.true.i2651
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %268) #5
  %call.i2636 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %incdec.ptr.i2650, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0), i32* nonnull %coef.i2632) #5
  %tobool.i2637 = icmp eq i32 %call.i2636, 0
  %272 = load i32, i32* %coef.i2632, align 4
  %.off.i2638 = add i32 %272, -1
  %273 = icmp ugt i32 %.off.i2638, 254
  %274 = or i1 %tobool.i2637, %273
  br i1 %274, label %cleanup.i2640, label %do.cond.i2647

cleanup.i2640:                                    ; preds = %do.body.i2639, %if.then656
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %268) #5
  br label %parse_cqm.exit2656

do.cond.i2647:                                    ; preds = %if.then656, %do.body.i2639
  %275 = phi i32 [ %272, %do.body.i2639 ], [ %269, %if.then656 ]
  %i.028.i2641 = phi i32 [ %inc.i2644, %do.body.i2639 ], [ 0, %if.then656 ]
  %str.addr.027.i2642 = phi i8* [ %incdec.ptr.i2650, %do.body.i2639 ], [ %value.addr.2, %if.then656 ]
  %conv.i2643 = trunc i32 %275 to i8
  %inc.i2644 = add i32 %i.028.i2641, 1
  %arrayidx.i2645 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 42, i32 %i.028.i2641
  store i8 %conv.i2643, i8* %arrayidx.i2645, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %268) #5
  %exitcond3102 = icmp eq i32 %i.028.i2641, 63
  br i1 %exitcond3102, label %do.end.i2654, label %land.lhs.true.i2651

land.lhs.true.i2651:                              ; preds = %do.cond.i2647
  %call5.i2648 = call i8* @strchr(i8* nonnull dereferenceable(1) %str.addr.027.i2642, i32 44) #13
  %tobool6.i2649 = icmp eq i8* %call5.i2648, null
  %incdec.ptr.i2650 = getelementptr inbounds i8, i8* %call5.i2648, i32 1
  br i1 %tobool6.i2649, label %do.end.i2654, label %do.body.i2639

do.end.i2654:                                     ; preds = %do.cond.i2647, %land.lhs.true.i2651
  %cmp8.i2652 = icmp ne i32 %inc.i2644, 64
  %cond.i2653 = sext i1 %cmp8.i2652 to i32
  br label %parse_cqm.exit2656

parse_cqm.exit2656:                               ; preds = %cleanup.i2640, %do.end.i2654
  %retval.2.i2655 = phi i32 [ %cond.i2653, %do.end.i2654 ], [ -1, %cleanup.i2640 ]
  %276 = load i32, i32* %b_error, align 4, !tbaa !2
  %or661 = or i32 %276, %retval.2.i2655
  store i32 %or661, i32* %b_error, align 4, !tbaa !2
  %277 = bitcast i32* %coef.i2657 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %277) #5
  %call24.i2658 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %value.addr.2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0), i32* nonnull %coef.i2657) #5
  %tobool25.i2659 = icmp eq i32 %call24.i2658, 0
  %278 = load i32, i32* %coef.i2657, align 4
  %.off26.i2660 = add i32 %278, -1
  %279 = icmp ugt i32 %.off26.i2660, 254
  %280 = or i1 %tobool25.i2659, %279
  br i1 %280, label %cleanup.i2665, label %do.cond.i2672

do.body.i2664:                                    ; preds = %land.lhs.true.i2676
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %277) #5
  %call.i2661 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %incdec.ptr.i2675, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0), i32* nonnull %coef.i2657) #5
  %tobool.i2662 = icmp eq i32 %call.i2661, 0
  %281 = load i32, i32* %coef.i2657, align 4
  %.off.i2663 = add i32 %281, -1
  %282 = icmp ugt i32 %.off.i2663, 254
  %283 = or i1 %tobool.i2662, %282
  br i1 %283, label %cleanup.i2665, label %do.cond.i2672

cleanup.i2665:                                    ; preds = %do.body.i2664, %parse_cqm.exit2656
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %277) #5
  br label %parse_cqm.exit2681

do.cond.i2672:                                    ; preds = %parse_cqm.exit2656, %do.body.i2664
  %284 = phi i32 [ %281, %do.body.i2664 ], [ %278, %parse_cqm.exit2656 ]
  %i.028.i2666 = phi i32 [ %inc.i2669, %do.body.i2664 ], [ 0, %parse_cqm.exit2656 ]
  %str.addr.027.i2667 = phi i8* [ %incdec.ptr.i2675, %do.body.i2664 ], [ %value.addr.2, %parse_cqm.exit2656 ]
  %conv.i2668 = trunc i32 %284 to i8
  %inc.i2669 = add i32 %i.028.i2666, 1
  %arrayidx.i2670 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 44, i32 %i.028.i2666
  store i8 %conv.i2668, i8* %arrayidx.i2670, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %277) #5
  %exitcond3101 = icmp eq i32 %i.028.i2666, 63
  br i1 %exitcond3101, label %do.end.i2679, label %land.lhs.true.i2676

land.lhs.true.i2676:                              ; preds = %do.cond.i2672
  %call5.i2673 = call i8* @strchr(i8* nonnull dereferenceable(1) %str.addr.027.i2667, i32 44) #13
  %tobool6.i2674 = icmp eq i8* %call5.i2673, null
  %incdec.ptr.i2675 = getelementptr inbounds i8, i8* %call5.i2673, i32 1
  br i1 %tobool6.i2674, label %do.end.i2679, label %do.body.i2664

do.end.i2679:                                     ; preds = %do.cond.i2672, %land.lhs.true.i2676
  %cmp8.i2677 = icmp ne i32 %inc.i2669, 64
  %cond.i2678 = sext i1 %cmp8.i2677 to i32
  br label %parse_cqm.exit2681

parse_cqm.exit2681:                               ; preds = %cleanup.i2665, %do.end.i2679
  %retval.2.i2680 = phi i32 [ %cond.i2678, %do.end.i2679 ], [ -1, %cleanup.i2665 ]
  %285 = load i32, i32* %b_error, align 4, !tbaa !2
  %or665 = or i32 %285, %retval.2.i2680
  store i32 %or665, i32* %b_error, align 4, !tbaa !2
  br label %if.end1374

if.else666:                                       ; preds = %if.else653
  %call667 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.98, i32 0, i32 0)) #13
  %tobool668 = icmp eq i32 %call667, 0
  br i1 %tobool668, label %if.then669, label %if.else679

if.then669:                                       ; preds = %if.else666
  %i_cqm_preset670 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 36
  store i32 2, i32* %i_cqm_preset670, align 8, !tbaa !119
  %286 = bitcast i32* %coef.i2682 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %286) #5
  %call24.i2683 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %value.addr.2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0), i32* nonnull %coef.i2682) #5
  %tobool25.i2684 = icmp eq i32 %call24.i2683, 0
  %287 = load i32, i32* %coef.i2682, align 4
  %.off26.i2685 = add i32 %287, -1
  %288 = icmp ugt i32 %.off26.i2685, 254
  %289 = or i1 %tobool25.i2684, %288
  br i1 %289, label %cleanup.i2690, label %do.cond.i2697

do.body.i2689:                                    ; preds = %land.lhs.true.i2701
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %286) #5
  %call.i2686 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %incdec.ptr.i2700, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0), i32* nonnull %coef.i2682) #5
  %tobool.i2687 = icmp eq i32 %call.i2686, 0
  %290 = load i32, i32* %coef.i2682, align 4
  %.off.i2688 = add i32 %290, -1
  %291 = icmp ugt i32 %.off.i2688, 254
  %292 = or i1 %tobool.i2687, %291
  br i1 %292, label %cleanup.i2690, label %do.cond.i2697

cleanup.i2690:                                    ; preds = %do.body.i2689, %if.then669
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %286) #5
  br label %parse_cqm.exit2706

do.cond.i2697:                                    ; preds = %if.then669, %do.body.i2689
  %293 = phi i32 [ %290, %do.body.i2689 ], [ %287, %if.then669 ]
  %i.028.i2691 = phi i32 [ %inc.i2694, %do.body.i2689 ], [ 0, %if.then669 ]
  %str.addr.027.i2692 = phi i8* [ %incdec.ptr.i2700, %do.body.i2689 ], [ %value.addr.2, %if.then669 ]
  %conv.i2693 = trunc i32 %293 to i8
  %inc.i2694 = add i32 %i.028.i2691, 1
  %arrayidx.i2695 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 43, i32 %i.028.i2691
  store i8 %conv.i2693, i8* %arrayidx.i2695, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %286) #5
  %exitcond3104 = icmp eq i32 %i.028.i2691, 63
  br i1 %exitcond3104, label %do.end.i2704, label %land.lhs.true.i2701

land.lhs.true.i2701:                              ; preds = %do.cond.i2697
  %call5.i2698 = call i8* @strchr(i8* nonnull dereferenceable(1) %str.addr.027.i2692, i32 44) #13
  %tobool6.i2699 = icmp eq i8* %call5.i2698, null
  %incdec.ptr.i2700 = getelementptr inbounds i8, i8* %call5.i2698, i32 1
  br i1 %tobool6.i2699, label %do.end.i2704, label %do.body.i2689

do.end.i2704:                                     ; preds = %do.cond.i2697, %land.lhs.true.i2701
  %cmp8.i2702 = icmp ne i32 %inc.i2694, 64
  %cond.i2703 = sext i1 %cmp8.i2702 to i32
  br label %parse_cqm.exit2706

parse_cqm.exit2706:                               ; preds = %cleanup.i2690, %do.end.i2704
  %retval.2.i2705 = phi i32 [ %cond.i2703, %do.end.i2704 ], [ -1, %cleanup.i2690 ]
  %294 = load i32, i32* %b_error, align 4, !tbaa !2
  %or674 = or i32 %294, %retval.2.i2705
  store i32 %or674, i32* %b_error, align 4, !tbaa !2
  %295 = bitcast i32* %coef.i2707 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %295) #5
  %call24.i2708 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %value.addr.2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0), i32* nonnull %coef.i2707) #5
  %tobool25.i2709 = icmp eq i32 %call24.i2708, 0
  %296 = load i32, i32* %coef.i2707, align 4
  %.off26.i2710 = add i32 %296, -1
  %297 = icmp ugt i32 %.off26.i2710, 254
  %298 = or i1 %tobool25.i2709, %297
  br i1 %298, label %cleanup.i2715, label %do.cond.i2722

do.body.i2714:                                    ; preds = %land.lhs.true.i2726
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %295) #5
  %call.i2711 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %incdec.ptr.i2725, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0), i32* nonnull %coef.i2707) #5
  %tobool.i2712 = icmp eq i32 %call.i2711, 0
  %299 = load i32, i32* %coef.i2707, align 4
  %.off.i2713 = add i32 %299, -1
  %300 = icmp ugt i32 %.off.i2713, 254
  %301 = or i1 %tobool.i2712, %300
  br i1 %301, label %cleanup.i2715, label %do.cond.i2722

cleanup.i2715:                                    ; preds = %do.body.i2714, %parse_cqm.exit2706
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %295) #5
  br label %parse_cqm.exit2731

do.cond.i2722:                                    ; preds = %parse_cqm.exit2706, %do.body.i2714
  %302 = phi i32 [ %299, %do.body.i2714 ], [ %296, %parse_cqm.exit2706 ]
  %i.028.i2716 = phi i32 [ %inc.i2719, %do.body.i2714 ], [ 0, %parse_cqm.exit2706 ]
  %str.addr.027.i2717 = phi i8* [ %incdec.ptr.i2725, %do.body.i2714 ], [ %value.addr.2, %parse_cqm.exit2706 ]
  %conv.i2718 = trunc i32 %302 to i8
  %inc.i2719 = add i32 %i.028.i2716, 1
  %arrayidx.i2720 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 45, i32 %i.028.i2716
  store i8 %conv.i2718, i8* %arrayidx.i2720, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %295) #5
  %exitcond3103 = icmp eq i32 %i.028.i2716, 63
  br i1 %exitcond3103, label %do.end.i2729, label %land.lhs.true.i2726

land.lhs.true.i2726:                              ; preds = %do.cond.i2722
  %call5.i2723 = call i8* @strchr(i8* nonnull dereferenceable(1) %str.addr.027.i2717, i32 44) #13
  %tobool6.i2724 = icmp eq i8* %call5.i2723, null
  %incdec.ptr.i2725 = getelementptr inbounds i8, i8* %call5.i2723, i32 1
  br i1 %tobool6.i2724, label %do.end.i2729, label %do.body.i2714

do.end.i2729:                                     ; preds = %do.cond.i2722, %land.lhs.true.i2726
  %cmp8.i2727 = icmp ne i32 %inc.i2719, 64
  %cond.i2728 = sext i1 %cmp8.i2727 to i32
  br label %parse_cqm.exit2731

parse_cqm.exit2731:                               ; preds = %cleanup.i2715, %do.end.i2729
  %retval.2.i2730 = phi i32 [ %cond.i2728, %do.end.i2729 ], [ -1, %cleanup.i2715 ]
  %303 = load i32, i32* %b_error, align 4, !tbaa !2
  %or678 = or i32 %303, %retval.2.i2730
  store i32 %or678, i32* %b_error, align 4, !tbaa !2
  br label %if.end1374

if.else679:                                       ; preds = %if.else666
  %call680 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.99, i32 0, i32 0)) #13
  %tobool681 = icmp eq i32 %call680, 0
  br i1 %tobool681, label %if.then682, label %if.else684

if.then682:                                       ; preds = %if.else679
  %304 = bitcast i8** %end.i2732 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %304) #5
  %call.i2733 = call i32 @strtol(i8* %value.addr.2, i8** nonnull %end.i2732, i32 0) #5
  %305 = load i8*, i8** %end.i2732, align 4, !tbaa !8
  %cmp.i2734 = icmp eq i8* %305, %value.addr.2
  br i1 %cmp.i2734, label %if.then.i2737, label %lor.lhs.false.i2736

lor.lhs.false.i2736:                              ; preds = %if.then682
  %306 = load i8, i8* %305, align 1, !tbaa !10
  %cmp1.i2735 = icmp eq i8 %306, 0
  br i1 %cmp1.i2735, label %atoi_internal.exit2738, label %if.then.i2737

if.then.i2737:                                    ; preds = %lor.lhs.false.i2736, %if.then682
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atoi_internal.exit2738

atoi_internal.exit2738:                           ; preds = %lor.lhs.false.i2736, %if.then.i2737
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %304) #5
  %i_log_level = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 48
  store i32 %call.i2733, i32* %i_log_level, align 8, !tbaa !96
  br label %if.end1374

if.else684:                                       ; preds = %if.else679
  %call685 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.100, i32 0, i32 0)) #13
  %tobool686 = icmp eq i32 %call685, 0
  br i1 %tobool686, label %do.body688, label %if.else696

do.body688:                                       ; preds = %if.else684
  %call689 = tail call i8* @x264_param_strdup(%struct.x264_param_t* %p, i8* %value.addr.2)
  %psz_dump_yuv = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 50
  store i8* %call689, i8** %psz_dump_yuv, align 8, !tbaa !148
  %tobool691 = icmp eq i8* %call689, null
  br i1 %tobool691, label %if.then692, label %if.end1374

if.then692:                                       ; preds = %do.body688
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %if.end1374

if.else696:                                       ; preds = %if.else684
  %call697 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.101, i32 0, i32 0)) #13
  %tobool698 = icmp eq i32 %call697, 0
  br i1 %tobool698, label %if.then702, label %lor.lhs.false699

lor.lhs.false699:                                 ; preds = %if.else696
  %call700 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(11) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.102, i32 0, i32 0)) #13
  %tobool701 = icmp eq i32 %call700, 0
  br i1 %tobool701, label %if.then702, label %if.else750

if.then702:                                       ; preds = %lor.lhs.false699, %if.else696
  %inter = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 51, i32 1
  store i32 0, i32* %inter, align 4
  %call709 = tail call i8* @strstr(i8* nonnull dereferenceable(1) %value.addr.2, i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.104, i32 0, i32 0)) #13
  %tobool710 = icmp ne i8* %call709, null
  %spec.store.select1979 = sext i1 %tobool710 to i32
  store i32 %spec.store.select1979, i32* %inter, align 4
  %call715 = tail call i8* @strstr(i8* nonnull dereferenceable(1) %value.addr.2, i8* nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.105, i32 0, i32 0)) #13
  %tobool716 = icmp eq i8* %call715, null
  br i1 %tobool716, label %if.end721, label %if.then717

if.then717:                                       ; preds = %if.then702
  %or720 = or i32 %spec.store.select1979, 1
  store i32 %or720, i32* %inter, align 4, !tbaa !98
  br label %if.end721

if.end721:                                        ; preds = %if.then702, %if.then717
  %307 = phi i32 [ %spec.store.select1979, %if.then702 ], [ %or720, %if.then717 ]
  %call722 = tail call i8* @strstr(i8* nonnull dereferenceable(1) %value.addr.2, i8* nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.106, i32 0, i32 0)) #13
  %tobool723 = icmp eq i8* %call722, null
  br i1 %tobool723, label %if.end728, label %if.then724

if.then724:                                       ; preds = %if.end721
  %or727 = or i32 %307, 2
  store i32 %or727, i32* %inter, align 4, !tbaa !98
  br label %if.end728

if.end728:                                        ; preds = %if.end721, %if.then724
  %308 = phi i32 [ %307, %if.end721 ], [ %or727, %if.then724 ]
  %call729 = tail call i8* @strstr(i8* nonnull dereferenceable(1) %value.addr.2, i8* nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.107, i32 0, i32 0)) #13
  %tobool730 = icmp eq i8* %call729, null
  br i1 %tobool730, label %if.end735, label %if.then731

if.then731:                                       ; preds = %if.end728
  %or734 = or i32 %308, 16
  store i32 %or734, i32* %inter, align 4, !tbaa !98
  br label %if.end735

if.end735:                                        ; preds = %if.end728, %if.then731
  %309 = phi i32 [ %308, %if.end728 ], [ %or734, %if.then731 ]
  %call736 = tail call i8* @strstr(i8* nonnull dereferenceable(1) %value.addr.2, i8* nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.108, i32 0, i32 0)) #13
  %tobool737 = icmp eq i8* %call736, null
  br i1 %tobool737, label %if.end742, label %if.then738

if.then738:                                       ; preds = %if.end735
  %or741 = or i32 %309, 32
  store i32 %or741, i32* %inter, align 4, !tbaa !98
  br label %if.end742

if.end742:                                        ; preds = %if.end735, %if.then738
  %310 = phi i32 [ %309, %if.end735 ], [ %or741, %if.then738 ]
  %call743 = tail call i8* @strstr(i8* nonnull dereferenceable(1) %value.addr.2, i8* nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.109, i32 0, i32 0)) #13
  %tobool744 = icmp eq i8* %call743, null
  br i1 %tobool744, label %if.end1374, label %if.then745

if.then745:                                       ; preds = %if.end742
  %or748 = or i32 %310, 256
  store i32 %or748, i32* %inter, align 4, !tbaa !98
  br label %if.end1374

if.else750:                                       ; preds = %lor.lhs.false699
  %call751 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.110, i32 0, i32 0)) #13
  %tobool752 = icmp eq i32 %call751, 0
  br i1 %tobool752, label %if.then753, label %if.else756

if.then753:                                       ; preds = %if.else750
  %call754 = call fastcc i32 @atobool_internal(i8* %value.addr.2, i32* nonnull %b_error)
  %b_transform_8x8 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 51, i32 2
  store i32 %call754, i32* %b_transform_8x8, align 4, !tbaa !115
  br label %if.end1374

if.else756:                                       ; preds = %if.else750
  %call757 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.111, i32 0, i32 0)) #13
  %tobool758 = icmp eq i32 %call757, 0
  br i1 %tobool758, label %if.then762, label %lor.lhs.false759

lor.lhs.false759:                                 ; preds = %if.else756
  %call760 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.112, i32 0, i32 0)) #13
  %tobool761 = icmp eq i32 %call760, 0
  br i1 %tobool761, label %if.then762, label %if.else765

if.then762:                                       ; preds = %lor.lhs.false759, %if.else756
  %call763 = call fastcc i32 @atobool_internal(i8* %value.addr.2, i32* nonnull %b_error)
  %b_weighted_bipred = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 51, i32 4
  store i32 %call763, i32* %b_weighted_bipred, align 4, !tbaa !112
  br label %if.end1374

if.else765:                                       ; preds = %lor.lhs.false759
  %call766 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.113, i32 0, i32 0)) #13
  %tobool767 = icmp eq i32 %call766, 0
  br i1 %tobool767, label %if.then768, label %if.else771

if.then768:                                       ; preds = %if.else765
  %311 = bitcast i8** %end.i2739 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %311) #5
  %call.i2740 = call i32 @strtol(i8* %value.addr.2, i8** nonnull %end.i2739, i32 0) #5
  %312 = load i8*, i8** %end.i2739, align 4, !tbaa !8
  %cmp.i2741 = icmp eq i8* %312, %value.addr.2
  br i1 %cmp.i2741, label %if.then.i2744, label %lor.lhs.false.i2743

lor.lhs.false.i2743:                              ; preds = %if.then768
  %313 = load i8, i8* %312, align 1, !tbaa !10
  %cmp1.i2742 = icmp eq i8 %313, 0
  br i1 %cmp1.i2742, label %atoi_internal.exit2745, label %if.then.i2744

if.then.i2744:                                    ; preds = %lor.lhs.false.i2743, %if.then768
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atoi_internal.exit2745

atoi_internal.exit2745:                           ; preds = %lor.lhs.false.i2743, %if.then.i2744
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %311) #5
  %i_weighted_pred = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 51, i32 3
  store i32 %call.i2740, i32* %i_weighted_pred, align 4, !tbaa !113
  br label %if.end1374

if.else771:                                       ; preds = %if.else765
  %call772 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.114, i32 0, i32 0)) #13
  %tobool773 = icmp eq i32 %call772, 0
  br i1 %tobool773, label %land.lhs.true.i2751, label %lor.lhs.false774

lor.lhs.false774:                                 ; preds = %if.else771
  %call775 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.115, i32 0, i32 0)) #13
  %tobool776 = icmp eq i32 %call775, 0
  br i1 %tobool776, label %land.lhs.true.i2751, label %if.else781

land.lhs.true.i2751:                              ; preds = %if.else771, %lor.lhs.false774
  %i_direct_mv_pred = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 51, i32 5
  %call.i2749 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.103, i32 0, i32 0)) #13
  %tobool4.i2750 = icmp eq i32 %call.i2749, 0
  br i1 %tobool4.i2750, label %cleanup.i2756, label %land.lhs.true.i2751.1

cleanup.i2756:                                    ; preds = %land.lhs.true.i2751.3, %land.lhs.true.i2751.2, %land.lhs.true.i2751.1, %land.lhs.true.i2751
  %i.016.i2746.lcssa = phi i32 [ 0, %land.lhs.true.i2751 ], [ 1, %land.lhs.true.i2751.1 ], [ 2, %land.lhs.true.i2751.2 ], [ 3, %land.lhs.true.i2751.3 ]
  store i32 %i.016.i2746.lcssa, i32* %i_direct_mv_pred, align 4, !tbaa !2
  br label %parse_enum.exit2757

parse_enum.exit2757:                              ; preds = %land.lhs.true.i2751.3, %cleanup.i2756
  %314 = phi i32 [ 0, %cleanup.i2756 ], [ -1, %land.lhs.true.i2751.3 ]
  %315 = load i32, i32* %b_error, align 4, !tbaa !2
  %or780 = or i32 %315, %314
  store i32 %or780, i32* %b_error, align 4, !tbaa !2
  br label %if.end1374

if.else781:                                       ; preds = %lor.lhs.false774
  %call782 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(17) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.116, i32 0, i32 0)) #13
  %tobool783 = icmp eq i32 %call782, 0
  br i1 %tobool783, label %if.then784, label %if.else787

if.then784:                                       ; preds = %if.else781
  %316 = bitcast i8** %end.i2758 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %316) #5
  %call.i2759 = call i32 @strtol(i8* %value.addr.2, i8** nonnull %end.i2758, i32 0) #5
  %317 = load i8*, i8** %end.i2758, align 4, !tbaa !8
  %cmp.i2760 = icmp eq i8* %317, %value.addr.2
  br i1 %cmp.i2760, label %if.then.i2763, label %lor.lhs.false.i2762

lor.lhs.false.i2762:                              ; preds = %if.then784
  %318 = load i8, i8* %317, align 1, !tbaa !10
  %cmp1.i2761 = icmp eq i8 %318, 0
  br i1 %cmp1.i2761, label %atoi_internal.exit2764, label %if.then.i2763

if.then.i2763:                                    ; preds = %lor.lhs.false.i2762, %if.then784
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atoi_internal.exit2764

atoi_internal.exit2764:                           ; preds = %lor.lhs.false.i2762, %if.then.i2763
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %316) #5
  %i_chroma_qp_offset = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 51, i32 6
  store i32 %call.i2759, i32* %i_chroma_qp_offset, align 4, !tbaa !110
  br label %if.end1374

if.else787:                                       ; preds = %if.else781
  %call788 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.117, i32 0, i32 0)) #13
  %tobool789 = icmp eq i32 %call788, 0
  br i1 %tobool789, label %land.lhs.true.i2770, label %if.else794

land.lhs.true.i2770:                              ; preds = %if.else787
  %i_me_method = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 51, i32 7
  %call.i2768 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.331, i32 0, i32 0)) #13
  %tobool4.i2769 = icmp eq i32 %call.i2768, 0
  br i1 %tobool4.i2769, label %cleanup.i2775, label %land.lhs.true.i2770.1

cleanup.i2775:                                    ; preds = %land.lhs.true.i2770.4, %land.lhs.true.i2770.3, %land.lhs.true.i2770.2, %land.lhs.true.i2770.1, %land.lhs.true.i2770
  %i.016.i2765.lcssa = phi i32 [ 0, %land.lhs.true.i2770 ], [ 1, %land.lhs.true.i2770.1 ], [ 2, %land.lhs.true.i2770.2 ], [ 3, %land.lhs.true.i2770.3 ], [ 4, %land.lhs.true.i2770.4 ]
  store i32 %i.016.i2765.lcssa, i32* %i_me_method, align 4, !tbaa !2
  br label %parse_enum.exit2776

parse_enum.exit2776:                              ; preds = %land.lhs.true.i2770.4, %cleanup.i2775
  %319 = phi i32 [ 0, %cleanup.i2775 ], [ -1, %land.lhs.true.i2770.4 ]
  %320 = load i32, i32* %b_error, align 4, !tbaa !2
  %or793 = or i32 %320, %319
  store i32 %or793, i32* %b_error, align 4, !tbaa !2
  br label %if.end1374

if.else794:                                       ; preds = %if.else787
  %call795 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.118, i32 0, i32 0)) #13
  %tobool796 = icmp eq i32 %call795, 0
  br i1 %tobool796, label %if.then800, label %lor.lhs.false797

lor.lhs.false797:                                 ; preds = %if.else794
  %call798 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.119, i32 0, i32 0)) #13
  %tobool799 = icmp eq i32 %call798, 0
  br i1 %tobool799, label %if.then800, label %if.else803

if.then800:                                       ; preds = %lor.lhs.false797, %if.else794
  %321 = bitcast i8** %end.i2777 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %321) #5
  %call.i2778 = call i32 @strtol(i8* %value.addr.2, i8** nonnull %end.i2777, i32 0) #5
  %322 = load i8*, i8** %end.i2777, align 4, !tbaa !8
  %cmp.i2779 = icmp eq i8* %322, %value.addr.2
  br i1 %cmp.i2779, label %if.then.i2782, label %lor.lhs.false.i2781

lor.lhs.false.i2781:                              ; preds = %if.then800
  %323 = load i8, i8* %322, align 1, !tbaa !10
  %cmp1.i2780 = icmp eq i8 %323, 0
  br i1 %cmp1.i2780, label %atoi_internal.exit2783, label %if.then.i2782

if.then.i2782:                                    ; preds = %lor.lhs.false.i2781, %if.then800
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atoi_internal.exit2783

atoi_internal.exit2783:                           ; preds = %lor.lhs.false.i2781, %if.then.i2782
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %321) #5
  %i_me_range = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 51, i32 8
  store i32 %call.i2778, i32* %i_me_range, align 4, !tbaa !104
  br label %if.end1374

if.else803:                                       ; preds = %lor.lhs.false797
  %call804 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.120, i32 0, i32 0)) #13
  %tobool805 = icmp eq i32 %call804, 0
  br i1 %tobool805, label %if.then809, label %lor.lhs.false806

lor.lhs.false806:                                 ; preds = %if.else803
  %call807 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.121, i32 0, i32 0)) #13
  %tobool808 = icmp eq i32 %call807, 0
  br i1 %tobool808, label %if.then809, label %if.else812

if.then809:                                       ; preds = %lor.lhs.false806, %if.else803
  %324 = bitcast i8** %end.i2784 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %324) #5
  %call.i2785 = call i32 @strtol(i8* %value.addr.2, i8** nonnull %end.i2784, i32 0) #5
  %325 = load i8*, i8** %end.i2784, align 4, !tbaa !8
  %cmp.i2786 = icmp eq i8* %325, %value.addr.2
  br i1 %cmp.i2786, label %if.then.i2789, label %lor.lhs.false.i2788

lor.lhs.false.i2788:                              ; preds = %if.then809
  %326 = load i8, i8* %325, align 1, !tbaa !10
  %cmp1.i2787 = icmp eq i8 %326, 0
  br i1 %cmp1.i2787, label %atoi_internal.exit2790, label %if.then.i2789

if.then.i2789:                                    ; preds = %lor.lhs.false.i2788, %if.then809
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atoi_internal.exit2790

atoi_internal.exit2790:                           ; preds = %lor.lhs.false.i2788, %if.then.i2789
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %324) #5
  %i_mv_range = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 51, i32 9
  store i32 %call.i2785, i32* %i_mv_range, align 4, !tbaa !109
  br label %if.end1374

if.else812:                                       ; preds = %lor.lhs.false806
  %call813 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(15) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.122, i32 0, i32 0)) #13
  %tobool814 = icmp eq i32 %call813, 0
  br i1 %tobool814, label %if.then818, label %lor.lhs.false815

lor.lhs.false815:                                 ; preds = %if.else812
  %call816 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(16) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.123, i32 0, i32 0)) #13
  %tobool817 = icmp eq i32 %call816, 0
  br i1 %tobool817, label %if.then818, label %if.else821

if.then818:                                       ; preds = %lor.lhs.false815, %if.else812
  %327 = bitcast i8** %end.i2791 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %327) #5
  %call.i2792 = call i32 @strtol(i8* %value.addr.2, i8** nonnull %end.i2791, i32 0) #5
  %328 = load i8*, i8** %end.i2791, align 4, !tbaa !8
  %cmp.i2793 = icmp eq i8* %328, %value.addr.2
  br i1 %cmp.i2793, label %if.then.i2796, label %lor.lhs.false.i2795

lor.lhs.false.i2795:                              ; preds = %if.then818
  %329 = load i8, i8* %328, align 1, !tbaa !10
  %cmp1.i2794 = icmp eq i8 %329, 0
  br i1 %cmp1.i2794, label %atoi_internal.exit2797, label %if.then.i2796

if.then.i2796:                                    ; preds = %lor.lhs.false.i2795, %if.then818
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atoi_internal.exit2797

atoi_internal.exit2797:                           ; preds = %lor.lhs.false.i2795, %if.then.i2796
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %327) #5
  %i_mv_range_thread = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 51, i32 10
  store i32 %call.i2792, i32* %i_mv_range_thread, align 4, !tbaa !108
  br label %if.end1374

if.else821:                                       ; preds = %lor.lhs.false815
  %call822 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.124, i32 0, i32 0)) #13
  %tobool823 = icmp eq i32 %call822, 0
  br i1 %tobool823, label %if.then827, label %lor.lhs.false824

lor.lhs.false824:                                 ; preds = %if.else821
  %call825 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.125, i32 0, i32 0)) #13
  %tobool826 = icmp eq i32 %call825, 0
  br i1 %tobool826, label %if.then827, label %if.else830

if.then827:                                       ; preds = %lor.lhs.false824, %if.else821
  %330 = bitcast i8** %end.i2798 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %330) #5
  %call.i2799 = call i32 @strtol(i8* %value.addr.2, i8** nonnull %end.i2798, i32 0) #5
  %331 = load i8*, i8** %end.i2798, align 4, !tbaa !8
  %cmp.i2800 = icmp eq i8* %331, %value.addr.2
  br i1 %cmp.i2800, label %if.then.i2803, label %lor.lhs.false.i2802

lor.lhs.false.i2802:                              ; preds = %if.then827
  %332 = load i8, i8* %331, align 1, !tbaa !10
  %cmp1.i2801 = icmp eq i8 %332, 0
  br i1 %cmp1.i2801, label %atoi_internal.exit2804, label %if.then.i2803

if.then.i2803:                                    ; preds = %lor.lhs.false.i2802, %if.then827
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atoi_internal.exit2804

atoi_internal.exit2804:                           ; preds = %lor.lhs.false.i2802, %if.then.i2803
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %330) #5
  %i_subpel_refine = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 51, i32 11
  store i32 %call.i2799, i32* %i_subpel_refine, align 4, !tbaa !105
  br label %if.end1374

if.else830:                                       ; preds = %lor.lhs.false824
  %call831 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.126, i32 0, i32 0)) #13
  %tobool832 = icmp eq i32 %call831, 0
  br i1 %tobool832, label %if.then833, label %if.else871

if.then833:                                       ; preds = %if.else830
  %f_psy_rd = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 51, i32 18
  %f_psy_trellis = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 51, i32 19
  %call836 = tail call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %value.addr.2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.127, i32 0, i32 0), float* nonnull %f_psy_rd, float* nonnull %f_psy_trellis) #5
  %cmp837 = icmp eq i32 %call836, 2
  br i1 %cmp837, label %if.end1374, label %lor.lhs.false839

lor.lhs.false839:                                 ; preds = %if.then833
  %call844 = tail call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %value.addr.2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.128, i32 0, i32 0), float* nonnull %f_psy_rd, float* nonnull %f_psy_trellis) #5
  %cmp845 = icmp eq i32 %call844, 2
  br i1 %cmp845, label %if.end1374, label %lor.lhs.false847

lor.lhs.false847:                                 ; preds = %lor.lhs.false839
  %call852 = tail call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %value.addr.2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.129, i32 0, i32 0), float* nonnull %f_psy_rd, float* nonnull %f_psy_trellis) #5
  %cmp853 = icmp eq i32 %call852, 2
  br i1 %cmp853, label %if.end1374, label %if.else856

if.else856:                                       ; preds = %lor.lhs.false847
  %call859 = tail call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %value.addr.2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.130, i32 0, i32 0), float* nonnull %f_psy_rd) #5
  %tobool860 = icmp eq i32 %call859, 0
  br i1 %tobool860, label %if.else864, label %if.then861

if.then861:                                       ; preds = %if.else856
  store float 0.000000e+00, float* %f_psy_trellis, align 4, !tbaa !103
  br label %if.end1374

if.else864:                                       ; preds = %if.else856
  store float 0.000000e+00, float* %f_psy_rd, align 4, !tbaa !101
  store float 0.000000e+00, float* %f_psy_trellis, align 4, !tbaa !103
  br label %if.end1374

if.else871:                                       ; preds = %if.else830
  %call872 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.131, i32 0, i32 0)) #13
  %tobool873 = icmp eq i32 %call872, 0
  br i1 %tobool873, label %if.then874, label %if.else877

if.then874:                                       ; preds = %if.else871
  %call875 = call fastcc i32 @atobool_internal(i8* %value.addr.2, i32* nonnull %b_error)
  %b_psy = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 51, i32 20
  store i32 %call875, i32* %b_psy, align 4, !tbaa !102
  br label %if.end1374

if.else877:                                       ; preds = %if.else871
  %call878 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.132, i32 0, i32 0)) #13
  %tobool879 = icmp eq i32 %call878, 0
  br i1 %tobool879, label %if.then880, label %if.else883

if.then880:                                       ; preds = %if.else877
  %call881 = call fastcc i32 @atobool_internal(i8* %value.addr.2, i32* nonnull %b_error)
  %b_chroma_me = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 51, i32 12
  store i32 %call881, i32* %b_chroma_me, align 4, !tbaa !107
  br label %if.end1374

if.else883:                                       ; preds = %if.else877
  %call884 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(11) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.133, i32 0, i32 0)) #13
  %tobool885 = icmp eq i32 %call884, 0
  br i1 %tobool885, label %if.then886, label %if.else889

if.then886:                                       ; preds = %if.else883
  %call887 = call fastcc i32 @atobool_internal(i8* %value.addr.2, i32* nonnull %b_error)
  %b_mixed_references = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 51, i32 13
  store i32 %call887, i32* %b_mixed_references, align 4, !tbaa !106
  br label %if.end1374

if.else889:                                       ; preds = %if.else883
  %call890 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.134, i32 0, i32 0)) #13
  %tobool891 = icmp eq i32 %call890, 0
  br i1 %tobool891, label %if.then892, label %if.else895

if.then892:                                       ; preds = %if.else889
  %333 = bitcast i8** %end.i2805 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %333) #5
  %call.i2806 = call i32 @strtol(i8* %value.addr.2, i8** nonnull %end.i2805, i32 0) #5
  %334 = load i8*, i8** %end.i2805, align 4, !tbaa !8
  %cmp.i2807 = icmp eq i8* %334, %value.addr.2
  br i1 %cmp.i2807, label %if.then.i2810, label %lor.lhs.false.i2809

lor.lhs.false.i2809:                              ; preds = %if.then892
  %335 = load i8, i8* %334, align 1, !tbaa !10
  %cmp1.i2808 = icmp eq i8 %335, 0
  br i1 %cmp1.i2808, label %atoi_internal.exit2811, label %if.then.i2810

if.then.i2810:                                    ; preds = %lor.lhs.false.i2809, %if.then892
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atoi_internal.exit2811

atoi_internal.exit2811:                           ; preds = %lor.lhs.false.i2809, %if.then.i2810
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %333) #5
  %i_trellis = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 51, i32 14
  store i32 %call.i2806, i32* %i_trellis, align 4, !tbaa !116
  br label %if.end1374

if.else895:                                       ; preds = %if.else889
  %call896 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(11) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.135, i32 0, i32 0)) #13
  %tobool897 = icmp eq i32 %call896, 0
  br i1 %tobool897, label %if.then898, label %if.else901

if.then898:                                       ; preds = %if.else895
  %call899 = call fastcc i32 @atobool_internal(i8* %value.addr.2, i32* nonnull %b_error)
  %b_fast_pskip = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 51, i32 15
  store i32 %call899, i32* %b_fast_pskip, align 4, !tbaa !111
  br label %if.end1374

if.else901:                                       ; preds = %if.else895
  %call902 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(13) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.136, i32 0, i32 0)) #13
  %tobool903 = icmp eq i32 %call902, 0
  br i1 %tobool903, label %if.then904, label %if.else907

if.then904:                                       ; preds = %if.else901
  %call905 = call fastcc i32 @atobool_internal(i8* %value.addr.2, i32* nonnull %b_error)
  %b_dct_decimate = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 51, i32 16
  store i32 %call905, i32* %b_dct_decimate, align 4, !tbaa !114
  br label %if.end1374

if.else907:                                       ; preds = %if.else901
  %call908 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(15) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.137, i32 0, i32 0)) #13
  %tobool909 = icmp eq i32 %call908, 0
  br i1 %tobool909, label %if.then910, label %if.else914

if.then910:                                       ; preds = %if.else907
  %336 = bitcast i8** %end.i2812 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %336) #5
  %call.i2813 = call i32 @strtol(i8* %value.addr.2, i8** nonnull %end.i2812, i32 0) #5
  %337 = load i8*, i8** %end.i2812, align 4, !tbaa !8
  %cmp.i2814 = icmp eq i8* %337, %value.addr.2
  br i1 %cmp.i2814, label %if.then.i2817, label %lor.lhs.false.i2816

lor.lhs.false.i2816:                              ; preds = %if.then910
  %338 = load i8, i8* %337, align 1, !tbaa !10
  %cmp1.i2815 = icmp eq i8 %338, 0
  br i1 %cmp1.i2815, label %atoi_internal.exit2818, label %if.then.i2817

if.then.i2817:                                    ; preds = %lor.lhs.false.i2816, %if.then910
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atoi_internal.exit2818

atoi_internal.exit2818:                           ; preds = %lor.lhs.false.i2816, %if.then.i2817
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %336) #5
  %arrayidx913 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 51, i32 23, i32 0
  store i32 %call.i2813, i32* %arrayidx913, align 4, !tbaa !2
  br label %if.end1374

if.else914:                                       ; preds = %if.else907
  %call915 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(15) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.138, i32 0, i32 0)) #13
  %tobool916 = icmp eq i32 %call915, 0
  br i1 %tobool916, label %if.then917, label %if.else922

if.then917:                                       ; preds = %if.else914
  %339 = bitcast i8** %end.i2819 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %339) #5
  %call.i2820 = call i32 @strtol(i8* %value.addr.2, i8** nonnull %end.i2819, i32 0) #5
  %340 = load i8*, i8** %end.i2819, align 4, !tbaa !8
  %cmp.i2821 = icmp eq i8* %340, %value.addr.2
  br i1 %cmp.i2821, label %if.then.i2824, label %lor.lhs.false.i2823

lor.lhs.false.i2823:                              ; preds = %if.then917
  %341 = load i8, i8* %340, align 1, !tbaa !10
  %cmp1.i2822 = icmp eq i8 %341, 0
  br i1 %cmp1.i2822, label %atoi_internal.exit2825, label %if.then.i2824

if.then.i2824:                                    ; preds = %lor.lhs.false.i2823, %if.then917
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atoi_internal.exit2825

atoi_internal.exit2825:                           ; preds = %lor.lhs.false.i2823, %if.then.i2824
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %339) #5
  %arrayidx921 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 51, i32 23, i32 1
  store i32 %call.i2820, i32* %arrayidx921, align 4, !tbaa !2
  br label %if.end1374

if.else922:                                       ; preds = %if.else914
  %call923 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.139, i32 0, i32 0)) #13
  %tobool924 = icmp eq i32 %call923, 0
  br i1 %tobool924, label %if.then925, label %if.else928

if.then925:                                       ; preds = %if.else922
  %342 = bitcast i8** %end.i2826 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %342) #5
  %call.i2827 = call i32 @strtol(i8* %value.addr.2, i8** nonnull %end.i2826, i32 0) #5
  %343 = load i8*, i8** %end.i2826, align 4, !tbaa !8
  %cmp.i2828 = icmp eq i8* %343, %value.addr.2
  br i1 %cmp.i2828, label %if.then.i2831, label %lor.lhs.false.i2830

lor.lhs.false.i2830:                              ; preds = %if.then925
  %344 = load i8, i8* %343, align 1, !tbaa !10
  %cmp1.i2829 = icmp eq i8 %344, 0
  br i1 %cmp1.i2829, label %atoi_internal.exit2832, label %if.then.i2831

if.then.i2831:                                    ; preds = %lor.lhs.false.i2830, %if.then925
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atoi_internal.exit2832

atoi_internal.exit2832:                           ; preds = %lor.lhs.false.i2830, %if.then.i2831
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %342) #5
  %i_noise_reduction = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 51, i32 17
  store i32 %call.i2827, i32* %i_noise_reduction, align 4, !tbaa !149
  br label %if.end1374

if.else928:                                       ; preds = %if.else922
  %call929 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.140, i32 0, i32 0)) #13
  %tobool930 = icmp eq i32 %call929, 0
  br i1 %tobool930, label %if.then931, label %if.else934

if.then931:                                       ; preds = %if.else928
  %345 = bitcast i8** %end.i2833 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %345) #5
  %call.i2834 = call i32 @strtol(i8* %value.addr.2, i8** nonnull %end.i2833, i32 0) #5
  %346 = load i8*, i8** %end.i2833, align 4, !tbaa !8
  %cmp.i2835 = icmp eq i8* %346, %value.addr.2
  br i1 %cmp.i2835, label %if.then.i2838, label %lor.lhs.false.i2837

lor.lhs.false.i2837:                              ; preds = %if.then931
  %347 = load i8, i8* %346, align 1, !tbaa !10
  %cmp1.i2836 = icmp eq i8 %347, 0
  br i1 %cmp1.i2836, label %atoi_internal.exit2839, label %if.then.i2838

if.then.i2838:                                    ; preds = %lor.lhs.false.i2837, %if.then931
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atoi_internal.exit2839

atoi_internal.exit2839:                           ; preds = %lor.lhs.false.i2837, %if.then.i2838
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %345) #5
  %i_bitrate = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 5
  store i32 %call.i2834, i32* %i_bitrate, align 4, !tbaa !70
  %i_rc_method = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 0
  store i32 2, i32* %i_rc_method, align 8, !tbaa !69
  br label %if.end1374

if.else934:                                       ; preds = %if.else928
  %call935 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.141, i32 0, i32 0)) #13
  %tobool936 = icmp eq i32 %call935, 0
  br i1 %tobool936, label %if.then940, label %lor.lhs.false937

lor.lhs.false937:                                 ; preds = %if.else934
  %call938 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.142, i32 0, i32 0)) #13
  %tobool939 = icmp eq i32 %call938, 0
  br i1 %tobool939, label %if.then940, label %if.else945

if.then940:                                       ; preds = %lor.lhs.false937, %if.else934
  %348 = bitcast i8** %end.i2840 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %348) #5
  %call.i2841 = call i32 @strtol(i8* %value.addr.2, i8** nonnull %end.i2840, i32 0) #5
  %349 = load i8*, i8** %end.i2840, align 4, !tbaa !8
  %cmp.i2842 = icmp eq i8* %349, %value.addr.2
  br i1 %cmp.i2842, label %if.then.i2845, label %lor.lhs.false.i2844

lor.lhs.false.i2844:                              ; preds = %if.then940
  %350 = load i8, i8* %349, align 1, !tbaa !10
  %cmp1.i2843 = icmp eq i8 %350, 0
  br i1 %cmp1.i2843, label %atoi_internal.exit2846, label %if.then.i2845

if.then.i2845:                                    ; preds = %lor.lhs.false.i2844, %if.then940
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atoi_internal.exit2846

atoi_internal.exit2846:                           ; preds = %lor.lhs.false.i2844, %if.then.i2845
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %348) #5
  %i_qp_constant = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 1
  store i32 %call.i2841, i32* %i_qp_constant, align 4, !tbaa !75
  %i_rc_method944 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 0
  store i32 0, i32* %i_rc_method944, align 8, !tbaa !69
  br label %if.end1374

if.else945:                                       ; preds = %lor.lhs.false937
  %call946 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.143, i32 0, i32 0)) #13
  %tobool947 = icmp eq i32 %call946, 0
  br i1 %tobool947, label %if.then948, label %if.else954

if.then948:                                       ; preds = %if.else945
  %351 = bitcast i8** %end.i2847 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %351) #5
  %call.i2848 = call fast double @strtod(i8* %value.addr.2, i8** nonnull %end.i2847) #5
  %352 = load i8*, i8** %end.i2847, align 4, !tbaa !8
  %cmp.i2849 = icmp eq i8* %352, %value.addr.2
  br i1 %cmp.i2849, label %if.then.i2852, label %lor.lhs.false.i2851

lor.lhs.false.i2851:                              ; preds = %if.then948
  %353 = load i8, i8* %352, align 1, !tbaa !10
  %cmp1.i2850 = icmp eq i8 %353, 0
  br i1 %cmp1.i2850, label %atof_internal.exit2853, label %if.then.i2852

if.then.i2852:                                    ; preds = %lor.lhs.false.i2851, %if.then948
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atof_internal.exit2853

atof_internal.exit2853:                           ; preds = %lor.lhs.false.i2851, %if.then.i2852
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %351) #5
  %conv950 = fptrunc double %call.i2848 to float
  %f_rf_constant = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 6
  store float %conv950, float* %f_rf_constant, align 8, !tbaa !76
  %i_rc_method953 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 0
  store i32 1, i32* %i_rc_method953, align 8, !tbaa !69
  br label %if.end1374

if.else954:                                       ; preds = %if.else945
  %call955 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.144, i32 0, i32 0)) #13
  %tobool956 = icmp eq i32 %call955, 0
  br i1 %tobool956, label %if.then957, label %if.else961

if.then957:                                       ; preds = %if.else954
  %354 = bitcast i8** %end.i2854 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %354) #5
  %call.i2855 = call fast double @strtod(i8* %value.addr.2, i8** nonnull %end.i2854) #5
  %355 = load i8*, i8** %end.i2854, align 4, !tbaa !8
  %cmp.i2856 = icmp eq i8* %355, %value.addr.2
  br i1 %cmp.i2856, label %if.then.i2859, label %lor.lhs.false.i2858

lor.lhs.false.i2858:                              ; preds = %if.then957
  %356 = load i8, i8* %355, align 1, !tbaa !10
  %cmp1.i2857 = icmp eq i8 %356, 0
  br i1 %cmp1.i2857, label %atof_internal.exit2860, label %if.then.i2859

if.then.i2859:                                    ; preds = %lor.lhs.false.i2858, %if.then957
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atof_internal.exit2860

atof_internal.exit2860:                           ; preds = %lor.lhs.false.i2858, %if.then.i2859
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %354) #5
  %conv959 = fptrunc double %call.i2855 to float
  %f_rf_constant_max = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 7
  store float %conv959, float* %f_rf_constant_max, align 4, !tbaa !150
  br label %if.end1374

if.else961:                                       ; preds = %if.else954
  %call962 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(13) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.145, i32 0, i32 0)) #13
  %tobool963 = icmp eq i32 %call962, 0
  br i1 %tobool963, label %if.then964, label %if.else967

if.then964:                                       ; preds = %if.else961
  %357 = bitcast i8** %end.i2861 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %357) #5
  %call.i2862 = call i32 @strtol(i8* %value.addr.2, i8** nonnull %end.i2861, i32 0) #5
  %358 = load i8*, i8** %end.i2861, align 4, !tbaa !8
  %cmp.i2863 = icmp eq i8* %358, %value.addr.2
  br i1 %cmp.i2863, label %if.then.i2866, label %lor.lhs.false.i2865

lor.lhs.false.i2865:                              ; preds = %if.then964
  %359 = load i8, i8* %358, align 1, !tbaa !10
  %cmp1.i2864 = icmp eq i8 %359, 0
  br i1 %cmp1.i2864, label %atoi_internal.exit2867, label %if.then.i2866

if.then.i2866:                                    ; preds = %lor.lhs.false.i2865, %if.then964
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atoi_internal.exit2867

atoi_internal.exit2867:                           ; preds = %lor.lhs.false.i2865, %if.then.i2866
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %357) #5
  %i_lookahead = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 18
  store i32 %call.i2862, i32* %i_lookahead, align 8, !tbaa !84
  br label %if.end1374

if.else967:                                       ; preds = %if.else961
  %call968 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.146, i32 0, i32 0)) #13
  %tobool969 = icmp eq i32 %call968, 0
  br i1 %tobool969, label %if.then973, label %lor.lhs.false970

lor.lhs.false970:                                 ; preds = %if.else967
  %call971 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.147, i32 0, i32 0)) #13
  %tobool972 = icmp eq i32 %call971, 0
  br i1 %tobool972, label %if.then973, label %if.else976

if.then973:                                       ; preds = %lor.lhs.false970, %if.else967
  %360 = bitcast i8** %end.i2868 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %360) #5
  %call.i2869 = call i32 @strtol(i8* %value.addr.2, i8** nonnull %end.i2868, i32 0) #5
  %361 = load i8*, i8** %end.i2868, align 4, !tbaa !8
  %cmp.i2870 = icmp eq i8* %361, %value.addr.2
  br i1 %cmp.i2870, label %if.then.i2873, label %lor.lhs.false.i2872

lor.lhs.false.i2872:                              ; preds = %if.then973
  %362 = load i8, i8* %361, align 1, !tbaa !10
  %cmp1.i2871 = icmp eq i8 %362, 0
  br i1 %cmp1.i2871, label %atoi_internal.exit2874, label %if.then.i2873

if.then.i2873:                                    ; preds = %lor.lhs.false.i2872, %if.then973
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atoi_internal.exit2874

atoi_internal.exit2874:                           ; preds = %lor.lhs.false.i2872, %if.then.i2873
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %360) #5
  %i_qp_min = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 2
  store i32 %call.i2869, i32* %i_qp_min, align 8, !tbaa !77
  br label %if.end1374

if.else976:                                       ; preds = %lor.lhs.false970
  %call977 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.148, i32 0, i32 0)) #13
  %tobool978 = icmp eq i32 %call977, 0
  br i1 %tobool978, label %if.then982, label %lor.lhs.false979

lor.lhs.false979:                                 ; preds = %if.else976
  %call980 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.149, i32 0, i32 0)) #13
  %tobool981 = icmp eq i32 %call980, 0
  br i1 %tobool981, label %if.then982, label %if.else985

if.then982:                                       ; preds = %lor.lhs.false979, %if.else976
  %363 = bitcast i8** %end.i2875 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %363) #5
  %call.i2876 = call i32 @strtol(i8* %value.addr.2, i8** nonnull %end.i2875, i32 0) #5
  %364 = load i8*, i8** %end.i2875, align 4, !tbaa !8
  %cmp.i2877 = icmp eq i8* %364, %value.addr.2
  br i1 %cmp.i2877, label %if.then.i2880, label %lor.lhs.false.i2879

lor.lhs.false.i2879:                              ; preds = %if.then982
  %365 = load i8, i8* %364, align 1, !tbaa !10
  %cmp1.i2878 = icmp eq i8 %365, 0
  br i1 %cmp1.i2878, label %atoi_internal.exit2881, label %if.then.i2880

if.then.i2880:                                    ; preds = %lor.lhs.false.i2879, %if.then982
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atoi_internal.exit2881

atoi_internal.exit2881:                           ; preds = %lor.lhs.false.i2879, %if.then.i2880
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %363) #5
  %i_qp_max = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 3
  store i32 %call.i2876, i32* %i_qp_max, align 4, !tbaa !78
  br label %if.end1374

if.else985:                                       ; preds = %lor.lhs.false979
  %call986 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.150, i32 0, i32 0)) #13
  %tobool987 = icmp eq i32 %call986, 0
  br i1 %tobool987, label %if.then991, label %lor.lhs.false988

lor.lhs.false988:                                 ; preds = %if.else985
  %call989 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.151, i32 0, i32 0)) #13
  %tobool990 = icmp eq i32 %call989, 0
  br i1 %tobool990, label %if.then991, label %if.else994

if.then991:                                       ; preds = %lor.lhs.false988, %if.else985
  %366 = bitcast i8** %end.i2882 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %366) #5
  %call.i2883 = call i32 @strtol(i8* %value.addr.2, i8** nonnull %end.i2882, i32 0) #5
  %367 = load i8*, i8** %end.i2882, align 4, !tbaa !8
  %cmp.i2884 = icmp eq i8* %367, %value.addr.2
  br i1 %cmp.i2884, label %if.then.i2887, label %lor.lhs.false.i2886

lor.lhs.false.i2886:                              ; preds = %if.then991
  %368 = load i8, i8* %367, align 1, !tbaa !10
  %cmp1.i2885 = icmp eq i8 %368, 0
  br i1 %cmp1.i2885, label %atoi_internal.exit2888, label %if.then.i2887

if.then.i2887:                                    ; preds = %lor.lhs.false.i2886, %if.then991
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atoi_internal.exit2888

atoi_internal.exit2888:                           ; preds = %lor.lhs.false.i2886, %if.then.i2887
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %366) #5
  %i_qp_step = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 4
  store i32 %call.i2883, i32* %i_qp_step, align 8, !tbaa !79
  br label %if.end1374

if.else994:                                       ; preds = %lor.lhs.false988
  %call995 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.152, i32 0, i32 0)) #13
  %tobool996 = icmp eq i32 %call995, 0
  br i1 %tobool996, label %if.then997, label %if.else1007

if.then997:                                       ; preds = %if.else994
  %call998 = tail call i32 @strncmp(i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.153, i32 0, i32 0), i8* nonnull dereferenceable(1) %value.addr.2, i32 3) #13
  %tobool999 = icmp eq i32 %call998, 0
  br i1 %tobool999, label %cond.end1003, label %cond.false1001

cond.false1001:                                   ; preds = %if.then997
  %369 = bitcast i8** %end.i2889 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %369) #5
  %call.i2890 = call fast double @strtod(i8* %value.addr.2, i8** nonnull %end.i2889) #5
  %370 = load i8*, i8** %end.i2889, align 4, !tbaa !8
  %cmp.i2891 = icmp eq i8* %370, %value.addr.2
  br i1 %cmp.i2891, label %if.then.i2894, label %lor.lhs.false.i2893

lor.lhs.false.i2893:                              ; preds = %cond.false1001
  %371 = load i8, i8* %370, align 1, !tbaa !10
  %cmp1.i2892 = icmp eq i8 %371, 0
  br i1 %cmp1.i2892, label %atof_internal.exit2895, label %if.then.i2894

if.then.i2894:                                    ; preds = %lor.lhs.false.i2893, %cond.false1001
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atof_internal.exit2895

atof_internal.exit2895:                           ; preds = %lor.lhs.false.i2893, %if.then.i2894
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %369) #5
  %phitmp1975 = fptrunc double %call.i2890 to float
  br label %cond.end1003

cond.end1003:                                     ; preds = %if.then997, %atof_internal.exit2895
  %cond1004 = phi float [ %phitmp1975, %atof_internal.exit2895 ], [ 1.000000e+09, %if.then997 ]
  %f_rate_tolerance = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 8
  store float %cond1004, float* %f_rate_tolerance, align 8, !tbaa !71
  br label %if.end1374

if.else1007:                                      ; preds = %if.else994
  %call1008 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.154, i32 0, i32 0)) #13
  %tobool1009 = icmp eq i32 %call1008, 0
  br i1 %tobool1009, label %if.then1010, label %if.else1013

if.then1010:                                      ; preds = %if.else1007
  %372 = bitcast i8** %end.i2896 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %372) #5
  %call.i2897 = call i32 @strtol(i8* %value.addr.2, i8** nonnull %end.i2896, i32 0) #5
  %373 = load i8*, i8** %end.i2896, align 4, !tbaa !8
  %cmp.i2898 = icmp eq i8* %373, %value.addr.2
  br i1 %cmp.i2898, label %if.then.i2901, label %lor.lhs.false.i2900

lor.lhs.false.i2900:                              ; preds = %if.then1010
  %374 = load i8, i8* %373, align 1, !tbaa !10
  %cmp1.i2899 = icmp eq i8 %374, 0
  br i1 %cmp1.i2899, label %atoi_internal.exit2902, label %if.then.i2901

if.then.i2901:                                    ; preds = %lor.lhs.false.i2900, %if.then1010
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atoi_internal.exit2902

atoi_internal.exit2902:                           ; preds = %lor.lhs.false.i2900, %if.then.i2901
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %372) #5
  %i_vbv_max_bitrate = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 9
  store i32 %call.i2897, i32* %i_vbv_max_bitrate, align 4, !tbaa !72
  br label %if.end1374

if.else1013:                                      ; preds = %if.else1007
  %call1014 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.155, i32 0, i32 0)) #13
  %tobool1015 = icmp eq i32 %call1014, 0
  br i1 %tobool1015, label %if.then1016, label %if.else1019

if.then1016:                                      ; preds = %if.else1013
  %375 = bitcast i8** %end.i2903 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %375) #5
  %call.i2904 = call i32 @strtol(i8* %value.addr.2, i8** nonnull %end.i2903, i32 0) #5
  %376 = load i8*, i8** %end.i2903, align 4, !tbaa !8
  %cmp.i2905 = icmp eq i8* %376, %value.addr.2
  br i1 %cmp.i2905, label %if.then.i2908, label %lor.lhs.false.i2907

lor.lhs.false.i2907:                              ; preds = %if.then1016
  %377 = load i8, i8* %376, align 1, !tbaa !10
  %cmp1.i2906 = icmp eq i8 %377, 0
  br i1 %cmp1.i2906, label %atoi_internal.exit2909, label %if.then.i2908

if.then.i2908:                                    ; preds = %lor.lhs.false.i2907, %if.then1016
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atoi_internal.exit2909

atoi_internal.exit2909:                           ; preds = %lor.lhs.false.i2907, %if.then.i2908
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %375) #5
  %i_vbv_buffer_size = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 10
  store i32 %call.i2904, i32* %i_vbv_buffer_size, align 8, !tbaa !73
  br label %if.end1374

if.else1019:                                      ; preds = %if.else1013
  %call1020 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.156, i32 0, i32 0)) #13
  %tobool1021 = icmp eq i32 %call1020, 0
  br i1 %tobool1021, label %if.then1022, label %if.else1026

if.then1022:                                      ; preds = %if.else1019
  %378 = bitcast i8** %end.i2910 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %378) #5
  %call.i2911 = call fast double @strtod(i8* %value.addr.2, i8** nonnull %end.i2910) #5
  %379 = load i8*, i8** %end.i2910, align 4, !tbaa !8
  %cmp.i2912 = icmp eq i8* %379, %value.addr.2
  br i1 %cmp.i2912, label %if.then.i2915, label %lor.lhs.false.i2914

lor.lhs.false.i2914:                              ; preds = %if.then1022
  %380 = load i8, i8* %379, align 1, !tbaa !10
  %cmp1.i2913 = icmp eq i8 %380, 0
  br i1 %cmp1.i2913, label %atof_internal.exit2916, label %if.then.i2915

if.then.i2915:                                    ; preds = %lor.lhs.false.i2914, %if.then1022
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atof_internal.exit2916

atof_internal.exit2916:                           ; preds = %lor.lhs.false.i2914, %if.then.i2915
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %378) #5
  %conv1024 = fptrunc double %call.i2911 to float
  %f_vbv_buffer_init = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 11
  store float %conv1024, float* %f_vbv_buffer_init, align 4, !tbaa !74
  br label %if.end1374

if.else1026:                                      ; preds = %if.else1019
  %call1027 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.157, i32 0, i32 0)) #13
  %tobool1028 = icmp eq i32 %call1027, 0
  br i1 %tobool1028, label %if.then1032, label %lor.lhs.false1029

lor.lhs.false1029:                                ; preds = %if.else1026
  %call1030 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.158, i32 0, i32 0)) #13
  %tobool1031 = icmp eq i32 %call1030, 0
  br i1 %tobool1031, label %if.then1032, label %if.else1036

if.then1032:                                      ; preds = %lor.lhs.false1029, %if.else1026
  %381 = bitcast i8** %end.i2917 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %381) #5
  %call.i2918 = call fast double @strtod(i8* %value.addr.2, i8** nonnull %end.i2917) #5
  %382 = load i8*, i8** %end.i2917, align 4, !tbaa !8
  %cmp.i2919 = icmp eq i8* %382, %value.addr.2
  br i1 %cmp.i2919, label %if.then.i2922, label %lor.lhs.false.i2921

lor.lhs.false.i2921:                              ; preds = %if.then1032
  %383 = load i8, i8* %382, align 1, !tbaa !10
  %cmp1.i2920 = icmp eq i8 %383, 0
  br i1 %cmp1.i2920, label %atof_internal.exit2923, label %if.then.i2922

if.then.i2922:                                    ; preds = %lor.lhs.false.i2921, %if.then1032
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atof_internal.exit2923

atof_internal.exit2923:                           ; preds = %lor.lhs.false.i2921, %if.then.i2922
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %381) #5
  %conv1034 = fptrunc double %call.i2918 to float
  %f_ip_factor = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 12
  store float %conv1034, float* %f_ip_factor, align 8, !tbaa !80
  br label %if.end1374

if.else1036:                                      ; preds = %lor.lhs.false1029
  %call1037 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.159, i32 0, i32 0)) #13
  %tobool1038 = icmp eq i32 %call1037, 0
  br i1 %tobool1038, label %if.then1042, label %lor.lhs.false1039

lor.lhs.false1039:                                ; preds = %if.else1036
  %call1040 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.160, i32 0, i32 0)) #13
  %tobool1041 = icmp eq i32 %call1040, 0
  br i1 %tobool1041, label %if.then1042, label %if.else1046

if.then1042:                                      ; preds = %lor.lhs.false1039, %if.else1036
  %384 = bitcast i8** %end.i2924 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %384) #5
  %call.i2925 = call fast double @strtod(i8* %value.addr.2, i8** nonnull %end.i2924) #5
  %385 = load i8*, i8** %end.i2924, align 4, !tbaa !8
  %cmp.i2926 = icmp eq i8* %385, %value.addr.2
  br i1 %cmp.i2926, label %if.then.i2929, label %lor.lhs.false.i2928

lor.lhs.false.i2928:                              ; preds = %if.then1042
  %386 = load i8, i8* %385, align 1, !tbaa !10
  %cmp1.i2927 = icmp eq i8 %386, 0
  br i1 %cmp1.i2927, label %atof_internal.exit2930, label %if.then.i2929

if.then.i2929:                                    ; preds = %lor.lhs.false.i2928, %if.then1042
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atof_internal.exit2930

atof_internal.exit2930:                           ; preds = %lor.lhs.false.i2928, %if.then.i2929
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %384) #5
  %conv1044 = fptrunc double %call.i2925 to float
  %f_pb_factor = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 13
  store float %conv1044, float* %f_pb_factor, align 4, !tbaa !81
  br label %if.end1374

if.else1046:                                      ; preds = %lor.lhs.false1039
  %call1047 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.161, i32 0, i32 0)) #13
  %tobool1048 = icmp eq i32 %call1047, 0
  br i1 %tobool1048, label %if.then1049, label %if.else1052

if.then1049:                                      ; preds = %if.else1046
  %387 = bitcast i8** %end.i2931 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %387) #5
  %call.i2932 = call i32 @strtol(i8* %value.addr.2, i8** nonnull %end.i2931, i32 0) #5
  %388 = load i8*, i8** %end.i2931, align 4, !tbaa !8
  %cmp.i2933 = icmp eq i8* %388, %value.addr.2
  br i1 %cmp.i2933, label %if.then.i2936, label %lor.lhs.false.i2935

lor.lhs.false.i2935:                              ; preds = %if.then1049
  %389 = load i8, i8* %388, align 1, !tbaa !10
  %cmp1.i2934 = icmp eq i8 %389, 0
  br i1 %cmp1.i2934, label %atoi_internal.exit2937, label %if.then.i2936

if.then.i2936:                                    ; preds = %lor.lhs.false.i2935, %if.then1049
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atoi_internal.exit2937

atoi_internal.exit2937:                           ; preds = %lor.lhs.false.i2935, %if.then.i2936
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %387) #5
  %i_aq_mode = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 15
  store i32 %call.i2932, i32* %i_aq_mode, align 4, !tbaa !82
  br label %if.end1374

if.else1052:                                      ; preds = %if.else1046
  %call1053 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.162, i32 0, i32 0)) #13
  %tobool1054 = icmp eq i32 %call1053, 0
  br i1 %tobool1054, label %if.then1055, label %if.else1059

if.then1055:                                      ; preds = %if.else1052
  %390 = bitcast i8** %end.i2938 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %390) #5
  %call.i2939 = call fast double @strtod(i8* %value.addr.2, i8** nonnull %end.i2938) #5
  %391 = load i8*, i8** %end.i2938, align 4, !tbaa !8
  %cmp.i2940 = icmp eq i8* %391, %value.addr.2
  br i1 %cmp.i2940, label %if.then.i2943, label %lor.lhs.false.i2942

lor.lhs.false.i2942:                              ; preds = %if.then1055
  %392 = load i8, i8* %391, align 1, !tbaa !10
  %cmp1.i2941 = icmp eq i8 %392, 0
  br i1 %cmp1.i2941, label %atof_internal.exit2944, label %if.then.i2943

if.then.i2943:                                    ; preds = %lor.lhs.false.i2942, %if.then1055
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atof_internal.exit2944

atof_internal.exit2944:                           ; preds = %lor.lhs.false.i2942, %if.then.i2943
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %390) #5
  %conv1057 = fptrunc double %call.i2939 to float
  %f_aq_strength = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 16
  store float %conv1057, float* %f_aq_strength, align 8, !tbaa !83
  br label %if.end1374

if.else1059:                                      ; preds = %if.else1052
  %call1060 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.163, i32 0, i32 0)) #13
  %tobool1061 = icmp eq i32 %call1060, 0
  br i1 %tobool1061, label %if.then1062, label %if.else1069

if.then1062:                                      ; preds = %if.else1059
  %393 = bitcast i8** %end.i2945 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %393) #5
  %call.i2946 = call i32 @strtol(i8* %value.addr.2, i8** nonnull %end.i2945, i32 0) #5
  %394 = load i8*, i8** %end.i2945, align 4, !tbaa !8
  %cmp.i2947 = icmp eq i8* %394, %value.addr.2
  br i1 %cmp.i2947, label %if.then.i2950, label %lor.lhs.false.i2949

lor.lhs.false.i2949:                              ; preds = %if.then1062
  %395 = load i8, i8* %394, align 1, !tbaa !10
  %cmp1.i2948 = icmp eq i8 %395, 0
  br i1 %cmp1.i2948, label %atoi_internal.exit2951, label %if.then.i2950

if.then.i2950:                                    ; preds = %lor.lhs.false.i2949, %if.then1062
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atoi_internal.exit2951

atoi_internal.exit2951:                           ; preds = %lor.lhs.false.i2949, %if.then.i2950
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %393) #5
  %396 = icmp slt i32 %call.i2946, 3
  %cond.i2952 = select i1 %396, i32 %call.i2946, i32 3
  %397 = icmp sgt i32 %cond.i2952, 0
  %cond5.i = select i1 %397, i32 %cond.i2952, i32 0
  %and1065 = and i32 %cond5.i, 1
  %b_stat_write = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 19
  store i32 %and1065, i32* %b_stat_write, align 4, !tbaa !85
  %and1067 = and i32 %cond5.i, 2
  %b_stat_read = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 21
  store i32 %and1067, i32* %b_stat_read, align 4, !tbaa !87
  br label %if.end1374

if.else1069:                                      ; preds = %if.else1059
  %call1070 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.164, i32 0, i32 0)) #13
  %tobool1071 = icmp eq i32 %call1070, 0
  br i1 %tobool1071, label %do.body1073, label %if.else1093

do.body1073:                                      ; preds = %if.else1069
  %call1074 = tail call i8* @x264_param_strdup(%struct.x264_param_t* %p, i8* %value.addr.2)
  %psz_stat_in = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 22
  store i8* %call1074, i8** %psz_stat_in, align 8, !tbaa !88
  %tobool1078 = icmp eq i8* %call1074, null
  br i1 %tobool1078, label %if.then1079, label %do.body1083

if.then1079:                                      ; preds = %do.body1073
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %do.body1083

do.body1083:                                      ; preds = %do.body1073, %if.then1079
  %errortype.1 = phi i32 [ -2, %do.body1073 ], [ -3, %if.then1079 ]
  %call1084 = tail call i8* @x264_param_strdup(%struct.x264_param_t* nonnull %p, i8* %value.addr.2)
  %psz_stat_out = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 20
  store i8* %call1084, i8** %psz_stat_out, align 8, !tbaa !86
  %tobool1088 = icmp eq i8* %call1084, null
  br i1 %tobool1088, label %if.then1089, label %if.end1374

if.then1089:                                      ; preds = %do.body1083
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %if.end1374

if.else1093:                                      ; preds = %if.else1069
  %call1094 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.165, i32 0, i32 0)) #13
  %tobool1095 = icmp eq i32 %call1094, 0
  br i1 %tobool1095, label %if.then1096, label %if.else1100

if.then1096:                                      ; preds = %if.else1093
  %398 = bitcast i8** %end.i2953 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %398) #5
  %call.i2954 = call fast double @strtod(i8* %value.addr.2, i8** nonnull %end.i2953) #5
  %399 = load i8*, i8** %end.i2953, align 4, !tbaa !8
  %cmp.i2955 = icmp eq i8* %399, %value.addr.2
  br i1 %cmp.i2955, label %if.then.i2958, label %lor.lhs.false.i2957

lor.lhs.false.i2957:                              ; preds = %if.then1096
  %400 = load i8, i8* %399, align 1, !tbaa !10
  %cmp1.i2956 = icmp eq i8 %400, 0
  br i1 %cmp1.i2956, label %atof_internal.exit2959, label %if.then.i2958

if.then.i2958:                                    ; preds = %lor.lhs.false.i2957, %if.then1096
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atof_internal.exit2959

atof_internal.exit2959:                           ; preds = %lor.lhs.false.i2957, %if.then.i2958
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %398) #5
  %conv1098 = fptrunc double %call.i2954 to float
  %f_qcompress = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 23
  store float %conv1098, float* %f_qcompress, align 4, !tbaa !89
  br label %if.end1374

if.else1100:                                      ; preds = %if.else1093
  %call1101 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.166, i32 0, i32 0)) #13
  %tobool1102 = icmp eq i32 %call1101, 0
  br i1 %tobool1102, label %if.then1103, label %if.else1106

if.then1103:                                      ; preds = %if.else1100
  %call1104 = call fastcc i32 @atobool_internal(i8* %value.addr.2, i32* nonnull %b_error)
  %b_mb_tree = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 17
  store i32 %call1104, i32* %b_mb_tree, align 4, !tbaa !93
  br label %if.end1374

if.else1106:                                      ; preds = %if.else1100
  %call1107 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.167, i32 0, i32 0)) #13
  %tobool1108 = icmp eq i32 %call1107, 0
  br i1 %tobool1108, label %if.then1109, label %if.else1113

if.then1109:                                      ; preds = %if.else1106
  %401 = bitcast i8** %end.i2960 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %401) #5
  %call.i2961 = call fast double @strtod(i8* %value.addr.2, i8** nonnull %end.i2960) #5
  %402 = load i8*, i8** %end.i2960, align 4, !tbaa !8
  %cmp.i2962 = icmp eq i8* %402, %value.addr.2
  br i1 %cmp.i2962, label %if.then.i2965, label %lor.lhs.false.i2964

lor.lhs.false.i2964:                              ; preds = %if.then1109
  %403 = load i8, i8* %402, align 1, !tbaa !10
  %cmp1.i2963 = icmp eq i8 %403, 0
  br i1 %cmp1.i2963, label %atof_internal.exit2966, label %if.then.i2965

if.then.i2965:                                    ; preds = %lor.lhs.false.i2964, %if.then1109
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atof_internal.exit2966

atof_internal.exit2966:                           ; preds = %lor.lhs.false.i2964, %if.then.i2965
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %401) #5
  %conv1111 = fptrunc double %call.i2961 to float
  %f_qblur = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 24
  store float %conv1111, float* %f_qblur, align 8, !tbaa !90
  br label %if.end1374

if.else1113:                                      ; preds = %if.else1106
  %call1114 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.168, i32 0, i32 0)) #13
  %tobool1115 = icmp eq i32 %call1114, 0
  br i1 %tobool1115, label %if.then1119, label %lor.lhs.false1116

lor.lhs.false1116:                                ; preds = %if.else1113
  %call1117 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.169, i32 0, i32 0)) #13
  %tobool1118 = icmp eq i32 %call1117, 0
  br i1 %tobool1118, label %if.then1119, label %if.else1123

if.then1119:                                      ; preds = %lor.lhs.false1116, %if.else1113
  %404 = bitcast i8** %end.i2967 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %404) #5
  %call.i2968 = call fast double @strtod(i8* %value.addr.2, i8** nonnull %end.i2967) #5
  %405 = load i8*, i8** %end.i2967, align 4, !tbaa !8
  %cmp.i2969 = icmp eq i8* %405, %value.addr.2
  br i1 %cmp.i2969, label %if.then.i2972, label %lor.lhs.false.i2971

lor.lhs.false.i2971:                              ; preds = %if.then1119
  %406 = load i8, i8* %405, align 1, !tbaa !10
  %cmp1.i2970 = icmp eq i8 %406, 0
  br i1 %cmp1.i2970, label %atof_internal.exit2973, label %if.then.i2972

if.then.i2972:                                    ; preds = %lor.lhs.false.i2971, %if.then1119
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atof_internal.exit2973

atof_internal.exit2973:                           ; preds = %lor.lhs.false.i2971, %if.then.i2972
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %404) #5
  %conv1121 = fptrunc double %call.i2968 to float
  %f_complexity_blur = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 25
  store float %conv1121, float* %f_complexity_blur, align 4, !tbaa !91
  br label %if.end1374

if.else1123:                                      ; preds = %lor.lhs.false1116
  %call1124 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.170, i32 0, i32 0)) #13
  %tobool1125 = icmp eq i32 %call1124, 0
  br i1 %tobool1125, label %do.body1127, label %if.else1137

do.body1127:                                      ; preds = %if.else1123
  %call1128 = tail call i8* @x264_param_strdup(%struct.x264_param_t* %p, i8* %value.addr.2)
  %psz_zones = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 28
  store i8* %call1128, i8** %psz_zones, align 8, !tbaa !151
  %tobool1132 = icmp eq i8* %call1128, null
  br i1 %tobool1132, label %if.then1133, label %if.end1374

if.then1133:                                      ; preds = %do.body1127
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %if.end1374

if.else1137:                                      ; preds = %if.else1123
  %call1138 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.171, i32 0, i32 0)) #13
  %tobool1139 = icmp eq i32 %call1138, 0
  br i1 %tobool1139, label %if.then1140, label %if.else1148

if.then1140:                                      ; preds = %if.else1137
  %i_left = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 53, i32 0
  %i_top = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 53, i32 1
  %i_right = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 53, i32 2
  %i_bottom = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 53, i32 3
  %call1144 = tail call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %value.addr.2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.172, i32 0, i32 0), i32* nonnull %i_left, i32* nonnull %i_top, i32* nonnull %i_right, i32* nonnull %i_bottom) #5
  %cmp1145 = icmp ne i32 %call1144, 4
  %conv1146 = zext i1 %cmp1145 to i32
  %407 = load i32, i32* %b_error, align 4, !tbaa !2
  %or1147 = or i32 %407, %conv1146
  store i32 %or1147, i32* %b_error, align 4, !tbaa !2
  br label %if.end1374

if.else1148:                                      ; preds = %if.else1137
  %call1149 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.173, i32 0, i32 0)) #13
  %tobool1150 = icmp eq i32 %call1149, 0
  br i1 %tobool1150, label %if.then1151, label %if.else1154

if.then1151:                                      ; preds = %if.else1148
  %call1152 = call fastcc i32 @atobool_internal(i8* %value.addr.2, i32* nonnull %b_error)
  %b_psnr = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 51, i32 24
  store i32 %call1152, i32* %b_psnr, align 4, !tbaa !117
  br label %if.end1374

if.else1154:                                      ; preds = %if.else1148
  %call1155 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.174, i32 0, i32 0)) #13
  %tobool1156 = icmp eq i32 %call1155, 0
  br i1 %tobool1156, label %if.then1157, label %if.else1160

if.then1157:                                      ; preds = %if.else1154
  %call1158 = call fastcc i32 @atobool_internal(i8* %value.addr.2, i32* nonnull %b_error)
  %b_ssim = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 51, i32 25
  store i32 %call1158, i32* %b_ssim, align 4, !tbaa !118
  br label %if.end1374

if.else1160:                                      ; preds = %if.else1154
  %call1161 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.175, i32 0, i32 0)) #13
  %tobool1162 = icmp eq i32 %call1161, 0
  br i1 %tobool1162, label %if.then1163, label %if.else1165

if.then1163:                                      ; preds = %if.else1160
  %call1164 = call fastcc i32 @atobool_internal(i8* %value.addr.2, i32* nonnull %b_error)
  %b_aud = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 58
  store i32 %call1164, i32* %b_aud, align 8, !tbaa !122
  br label %if.end1374

if.else1165:                                      ; preds = %if.else1160
  %call1166 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.176, i32 0, i32 0)) #13
  %tobool1167 = icmp eq i32 %call1166, 0
  br i1 %tobool1167, label %if.then1168, label %if.else1170

if.then1168:                                      ; preds = %if.else1165
  %408 = bitcast i8** %end.i2974 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %408) #5
  %call.i2975 = call i32 @strtol(i8* %value.addr.2, i8** nonnull %end.i2974, i32 0) #5
  %409 = load i8*, i8** %end.i2974, align 4, !tbaa !8
  %cmp.i2976 = icmp eq i8* %409, %value.addr.2
  br i1 %cmp.i2976, label %if.then.i2979, label %lor.lhs.false.i2978

lor.lhs.false.i2978:                              ; preds = %if.then1168
  %410 = load i8, i8* %409, align 1, !tbaa !10
  %cmp1.i2977 = icmp eq i8 %410, 0
  br i1 %cmp1.i2977, label %atoi_internal.exit2980, label %if.then.i2979

if.then.i2979:                                    ; preds = %lor.lhs.false.i2978, %if.then1168
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atoi_internal.exit2980

atoi_internal.exit2980:                           ; preds = %lor.lhs.false.i2978, %if.then.i2979
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %408) #5
  %i_sps_id = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 61
  store i32 %call.i2975, i32* %i_sps_id, align 4, !tbaa !152
  br label %if.end1374

if.else1170:                                      ; preds = %if.else1165
  %call1171 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(14) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.177, i32 0, i32 0)) #13
  %tobool1172 = icmp eq i32 %call1171, 0
  br i1 %tobool1172, label %if.then1173, label %if.else1178

if.then1173:                                      ; preds = %if.else1170
  %call1174 = call fastcc i32 @atobool_internal(i8* %value.addr.2, i32* nonnull %b_error)
  %tobool1175 = icmp eq i32 %call1174, 0
  %lnot.ext1177 = zext i1 %tobool1175 to i32
  %b_repeat_headers = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 59
  store i32 %lnot.ext1177, i32* %b_repeat_headers, align 4, !tbaa !120
  br label %if.end1374

if.else1178:                                      ; preds = %if.else1170
  %call1179 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(15) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.178, i32 0, i32 0)) #13
  %tobool1180 = icmp eq i32 %call1179, 0
  br i1 %tobool1180, label %if.then1181, label %if.else1184

if.then1181:                                      ; preds = %if.else1178
  %call1182 = call fastcc i32 @atobool_internal(i8* %value.addr.2, i32* nonnull %b_error)
  %b_repeat_headers1183 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 59
  store i32 %call1182, i32* %b_repeat_headers1183, align 4, !tbaa !120
  br label %if.end1374

if.else1184:                                      ; preds = %if.else1178
  %call1185 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.179, i32 0, i32 0)) #13
  %tobool1186 = icmp eq i32 %call1185, 0
  br i1 %tobool1186, label %if.then1187, label %if.else1189

if.then1187:                                      ; preds = %if.else1184
  %call1188 = call fastcc i32 @atobool_internal(i8* %value.addr.2, i32* nonnull %b_error)
  %b_annexb = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 60
  store i32 %call1188, i32* %b_annexb, align 8, !tbaa !121
  br label %if.end1374

if.else1189:                                      ; preds = %if.else1184
  %call1190 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.180, i32 0, i32 0)) #13
  %tobool1191 = icmp eq i32 %call1190, 0
  br i1 %tobool1191, label %if.then1192, label %if.else1197

if.then1192:                                      ; preds = %if.else1189
  %call1193 = call fastcc i32 @atobool_internal(i8* %value.addr.2, i32* nonnull %b_error)
  %tobool1194 = icmp eq i32 %call1193, 0
  %lnot.ext1196 = zext i1 %tobool1194 to i32
  %b_vfr_input = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 62
  store i32 %lnot.ext1196, i32* %b_vfr_input, align 8, !tbaa !123
  br label %if.end1374

if.else1197:                                      ; preds = %if.else1189
  %call1198 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.181, i32 0, i32 0)) #13
  %tobool1199 = icmp eq i32 %call1198, 0
  br i1 %tobool1199, label %land.lhs.true.i2986, label %if.else1203

land.lhs.true.i2986:                              ; preds = %if.else1197
  %i_nal_hrd = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 13
  %call.i2984 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.103, i32 0, i32 0)) #13
  %tobool4.i2985 = icmp eq i32 %call.i2984, 0
  br i1 %tobool4.i2985, label %cleanup.i2991, label %land.lhs.true.i2986.1

cleanup.i2991:                                    ; preds = %land.lhs.true.i2986.2, %land.lhs.true.i2986.1, %land.lhs.true.i2986
  %i.016.i2981.lcssa = phi i32 [ 0, %land.lhs.true.i2986 ], [ 1, %land.lhs.true.i2986.1 ], [ 2, %land.lhs.true.i2986.2 ]
  store i32 %i.016.i2981.lcssa, i32* %i_nal_hrd, align 4, !tbaa !2
  br label %parse_enum.exit2992

parse_enum.exit2992:                              ; preds = %land.lhs.true.i2986.2, %cleanup.i2991
  %411 = phi i32 [ 0, %cleanup.i2991 ], [ -1, %land.lhs.true.i2986.2 ]
  %412 = load i32, i32* %b_error, align 4, !tbaa !2
  %or1202 = or i32 %412, %411
  store i32 %or1202, i32* %b_error, align 4, !tbaa !2
  br label %if.end1374

if.else1203:                                      ; preds = %if.else1197
  %call1204 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.182, i32 0, i32 0)) #13
  %tobool1205 = icmp eq i32 %call1204, 0
  br i1 %tobool1205, label %if.then1206, label %if.else1209

if.then1206:                                      ; preds = %if.else1203
  %call1207 = call fastcc i32 @atobool_internal(i8* %value.addr.2, i32* nonnull %b_error)
  %b_filler = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 14
  store i32 %call1207, i32* %b_filler, align 8, !tbaa !153
  br label %if.end1374

if.else1209:                                      ; preds = %if.else1203
  %call1210 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(11) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.183, i32 0, i32 0)) #13
  %tobool1211 = icmp eq i32 %call1210, 0
  br i1 %tobool1211, label %if.then1212, label %if.else1214

if.then1212:                                      ; preds = %if.else1209
  %call1213 = call fastcc i32 @atobool_internal(i8* %value.addr.2, i32* nonnull %b_error)
  %b_pic_struct = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 69
  store i32 %call1213, i32* %b_pic_struct, align 4, !tbaa !126
  br label %if.end1374

if.else1214:                                      ; preds = %if.else1209
  %call1215 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(16) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.184, i32 0, i32 0)) #13
  %tobool1216 = icmp eq i32 %call1215, 0
  br i1 %tobool1216, label %if.then1217, label %if.else1219

if.then1217:                                      ; preds = %if.else1214
  %call1218 = call fastcc i32 @atobool_internal(i8* %value.addr.2, i32* nonnull %b_error)
  %b_fake_interlaced = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 70
  store i32 %call1218, i32* %b_fake_interlaced, align 8, !tbaa !127
  br label %if.end1374

if.else1219:                                      ; preds = %if.else1214
  %call1220 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(14) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.185, i32 0, i32 0)) #13
  %tobool1221 = icmp eq i32 %call1220, 0
  br i1 %tobool1221, label %if.then1222, label %if.else1224

if.then1222:                                      ; preds = %if.else1219
  %413 = bitcast i8** %end.i2993 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %413) #5
  %call.i2994 = call i32 @strtol(i8* %value.addr.2, i8** nonnull %end.i2993, i32 0) #5
  %414 = load i8*, i8** %end.i2993, align 4, !tbaa !8
  %cmp.i2995 = icmp eq i8* %414, %value.addr.2
  br i1 %cmp.i2995, label %if.then.i2998, label %lor.lhs.false.i2997

lor.lhs.false.i2997:                              ; preds = %if.then1222
  %415 = load i8, i8* %414, align 1, !tbaa !10
  %cmp1.i2996 = icmp eq i8 %415, 0
  br i1 %cmp1.i2996, label %atoi_internal.exit2999, label %if.then.i2998

if.then.i2998:                                    ; preds = %lor.lhs.false.i2997, %if.then1222
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atoi_internal.exit2999

atoi_internal.exit2999:                           ; preds = %lor.lhs.false.i2997, %if.then.i2998
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %413) #5
  %i_frame_packing = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 54
  store i32 %call.i2994, i32* %i_frame_packing, align 4, !tbaa !128
  br label %if.end1374

if.else1224:                                      ; preds = %if.else1219
  %call1225 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(11) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.186, i32 0, i32 0)) #13
  %tobool1226 = icmp eq i32 %call1225, 0
  br i1 %tobool1226, label %if.then1227, label %if.else1229

if.then1227:                                      ; preds = %if.else1224
  %call1228 = call fastcc i32 @atobool_internal(i8* %value.addr.2, i32* nonnull %b_error)
  %b_stitchable = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 71
  store i32 %call1228, i32* %b_stitchable, align 4, !tbaa !154
  br label %if.end1374

if.else1229:                                      ; preds = %if.else1224
  %call1230 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.187, i32 0, i32 0)) #13
  %tobool1231 = icmp eq i32 %call1230, 0
  br i1 %tobool1231, label %if.then1232, label %if.else1234

if.then1232:                                      ; preds = %if.else1229
  %call1233 = call fastcc i32 @atobool_internal(i8* %value.addr.2, i32* nonnull %b_error)
  %b_opencl = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 72
  store i32 %call1233, i32* %b_opencl, align 8, !tbaa !155
  br label %if.end1374

if.else1234:                                      ; preds = %if.else1229
  %call1235 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(13) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.188, i32 0, i32 0)) #13
  %tobool1236 = icmp eq i32 %call1235, 0
  br i1 %tobool1236, label %do.body1238, label %if.else1246

do.body1238:                                      ; preds = %if.else1234
  %call1239 = tail call i8* @x264_param_strdup(%struct.x264_param_t* %p, i8* %value.addr.2)
  %psz_clbin_file = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 75
  store i8* %call1239, i8** %psz_clbin_file, align 4, !tbaa !156
  %tobool1241 = icmp eq i8* %call1239, null
  br i1 %tobool1241, label %if.then1242, label %if.end1374

if.then1242:                                      ; preds = %do.body1238
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %if.end1374

if.else1246:                                      ; preds = %if.else1234
  %call1247 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %name.addr.3, i8* nonnull dereferenceable(14) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.189, i32 0, i32 0)) #13
  %tobool1248 = icmp eq i32 %call1247, 0
  br i1 %tobool1248, label %if.then1249, label %if.else1251

if.then1249:                                      ; preds = %if.else1246
  %416 = bitcast i8** %end.i3000 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %416) #5
  %call.i3001 = call i32 @strtol(i8* %value.addr.2, i8** nonnull %end.i3000, i32 0) #5
  %417 = load i8*, i8** %end.i3000, align 4, !tbaa !8
  %cmp.i3002 = icmp eq i8* %417, %value.addr.2
  br i1 %cmp.i3002, label %if.then.i3005, label %lor.lhs.false.i3004

lor.lhs.false.i3004:                              ; preds = %if.then1249
  %418 = load i8, i8* %417, align 1, !tbaa !10
  %cmp1.i3003 = icmp eq i8 %418, 0
  br i1 %cmp1.i3003, label %atoi_internal.exit3006, label %if.then.i3005

if.then.i3005:                                    ; preds = %lor.lhs.false.i3004, %if.then1249
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %atoi_internal.exit3006

atoi_internal.exit3006:                           ; preds = %lor.lhs.false.i3004, %if.then.i3005
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %416) #5
  %i_opencl_device = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 73
  store i32 %call.i3001, i32* %i_opencl_device, align 4, !tbaa !157
  br label %if.end1374

if.else1251:                                      ; preds = %if.else1246
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %if.end1374

if.end1374:                                       ; preds = %if.then373, %if.end84, %if.then51, %do.body1238, %do.body1127, %do.body1083, %if.end742, %do.body688, %do.body549, %do.body, %parse_enum.exit2201, %if.then396, %if.then307, %cond.end48, %atoi_internal.exit1986, %if.then93, %if.then112, %if.then131, %atof_internal.exit2013, %atoi_internal.exit2020, %if.then147, %atoi_internal.exit2027, %land.end193, %parse_enum.exit2052, %parse_enum.exit2076, %parse_enum.exit2100, %if.else274, %if.then256, %parse_enum.exit2119, %atoi_internal.exit2140, %atoi_internal.exit2154, %if.then349, %atoi_internal.exit2168, %atoi_internal.exit2175, %atoi_internal.exit2189, %if.then422, %if.then454, %if.else458, %if.then448, %atoi_internal.exit2222, %atoi_internal.exit2236, %if.then491, %if.then501, %if.then512, %if.then535, %if.then541, %if.then531, %parse_cqm.exit2331, %parse_cqm.exit2481, %parse_cqm.exit2556, %parse_cqm.exit2606, %parse_cqm.exit2681, %atoi_internal.exit2738, %if.then745, %if.then762, %parse_enum.exit2757, %parse_enum.exit2776, %atoi_internal.exit2790, %atoi_internal.exit2804, %if.then874, %if.then886, %if.then898, %atoi_internal.exit2818, %atoi_internal.exit2832, %atoi_internal.exit2846, %atof_internal.exit2860, %atoi_internal.exit2874, %atoi_internal.exit2888, %atoi_internal.exit2902, %atof_internal.exit2916, %atof_internal.exit2930, %atof_internal.exit2944, %if.then1089, %if.then1103, %atof_internal.exit2973, %if.then1140, %if.then1157, %atoi_internal.exit2980, %if.then1181, %if.then1192, %if.then1206, %if.then1217, %if.then1227, %if.then1242, %if.else1251, %atoi_internal.exit3006, %if.then1232, %atoi_internal.exit2999, %if.then1212, %parse_enum.exit2992, %if.then1187, %if.then1173, %if.then1163, %if.then1151, %if.then1133, %atof_internal.exit2966, %atof_internal.exit2959, %atoi_internal.exit2951, %atoi_internal.exit2937, %atof_internal.exit2923, %atoi_internal.exit2909, %cond.end1003, %atoi_internal.exit2881, %atoi_internal.exit2867, %atof_internal.exit2853, %atoi_internal.exit2839, %atoi_internal.exit2825, %if.then904, %atoi_internal.exit2811, %if.then880, %lor.lhs.false847, %lor.lhs.false839, %if.then833, %if.else864, %if.then861, %atoi_internal.exit2797, %atoi_internal.exit2783, %atoi_internal.exit2764, %atoi_internal.exit2745, %if.then753, %if.then692, %parse_cqm.exit2731, %parse_cqm.exit2631, %parse_cqm.exit2581, %parse_cqm.exit2531, %parse_cqm.exit2431, %if.then554, %if.then523, %if.then506, %atoi_internal.exit2250, %atoi_internal.exit2243, %atoi_internal.exit2229, %atoi_internal.exit2215, %if.then427, %atoi_internal.exit2208, %atoi_internal.exit2182, %if.then386, %atoi_internal.exit2161, %if.then366, %atoi_internal.exit2147, %if.end328, %if.then284, %if.else294, %atoi_internal.exit2107, %parse_enum.exit2088, %parse_enum.exit2064, %parse_enum.exit2040, %parse_enum.exit, %if.then164, %if.then136, %if.then120, %atoi_internal.exit2000, %if.then104, %atoi_internal.exit1993
  %name_was_bool.2 = phi i32 [ 0, %if.else1251 ], [ 0, %atoi_internal.exit3006 ], [ 0, %do.body1238 ], [ 0, %if.then1242 ], [ 1, %if.then1232 ], [ 1, %if.then1227 ], [ 0, %atoi_internal.exit2999 ], [ 1, %if.then1217 ], [ 1, %if.then1212 ], [ 1, %if.then1206 ], [ 0, %parse_enum.exit2992 ], [ 1, %if.then1192 ], [ 1, %if.then1187 ], [ 1, %if.then1181 ], [ 1, %if.then1173 ], [ 0, %atoi_internal.exit2980 ], [ 1, %if.then1163 ], [ 1, %if.then1157 ], [ 1, %if.then1151 ], [ 0, %if.then1140 ], [ 0, %do.body1127 ], [ 0, %if.then1133 ], [ 0, %atof_internal.exit2973 ], [ 0, %atof_internal.exit2966 ], [ 1, %if.then1103 ], [ 0, %atof_internal.exit2959 ], [ 0, %do.body1083 ], [ 0, %if.then1089 ], [ 0, %atoi_internal.exit2951 ], [ 0, %atof_internal.exit2944 ], [ 0, %atoi_internal.exit2937 ], [ 0, %atof_internal.exit2930 ], [ 0, %atof_internal.exit2923 ], [ 0, %atof_internal.exit2916 ], [ 0, %atoi_internal.exit2909 ], [ 0, %atoi_internal.exit2902 ], [ 0, %cond.end1003 ], [ 0, %atoi_internal.exit2888 ], [ 0, %atoi_internal.exit2881 ], [ 0, %atoi_internal.exit2874 ], [ 0, %atoi_internal.exit2867 ], [ 0, %atof_internal.exit2860 ], [ 0, %atof_internal.exit2853 ], [ 0, %atoi_internal.exit2846 ], [ 0, %atoi_internal.exit2839 ], [ 0, %atoi_internal.exit2832 ], [ 0, %atoi_internal.exit2825 ], [ 0, %atoi_internal.exit2818 ], [ 1, %if.then904 ], [ 1, %if.then898 ], [ 0, %atoi_internal.exit2811 ], [ 1, %if.then886 ], [ 1, %if.then880 ], [ 1, %if.then874 ], [ 0, %if.then833 ], [ 0, %lor.lhs.false839 ], [ 0, %lor.lhs.false847 ], [ 0, %if.then861 ], [ 0, %if.else864 ], [ 0, %atoi_internal.exit2804 ], [ 0, %atoi_internal.exit2797 ], [ 0, %atoi_internal.exit2790 ], [ 0, %atoi_internal.exit2783 ], [ 0, %parse_enum.exit2776 ], [ 0, %atoi_internal.exit2764 ], [ 0, %parse_enum.exit2757 ], [ 0, %atoi_internal.exit2745 ], [ 1, %if.then762 ], [ 1, %if.then753 ], [ 0, %if.then745 ], [ 0, %if.end742 ], [ 0, %do.body688 ], [ 0, %if.then692 ], [ 0, %atoi_internal.exit2738 ], [ 0, %parse_cqm.exit2731 ], [ 0, %parse_cqm.exit2681 ], [ 0, %parse_cqm.exit2631 ], [ 0, %parse_cqm.exit2606 ], [ 0, %parse_cqm.exit2581 ], [ 0, %parse_cqm.exit2556 ], [ 0, %parse_cqm.exit2531 ], [ 0, %parse_cqm.exit2481 ], [ 0, %parse_cqm.exit2431 ], [ 0, %parse_cqm.exit2331 ], [ 0, %do.body549 ], [ 0, %if.then554 ], [ 0, %if.then531 ], [ 0, %if.then535 ], [ 0, %do.body ], [ 0, %if.then541 ], [ 1, %if.then523 ], [ 1, %if.then512 ], [ 1, %if.then506 ], [ 1, %if.then501 ], [ 0, %atoi_internal.exit2250 ], [ 1, %if.then491 ], [ 0, %atoi_internal.exit2243 ], [ 0, %atoi_internal.exit2236 ], [ 0, %atoi_internal.exit2229 ], [ 0, %atoi_internal.exit2222 ], [ 0, %atoi_internal.exit2215 ], [ 0, %if.then448 ], [ 0, %if.then454 ], [ 1, %if.else458 ], [ 1, %if.then427 ], [ 1, %if.then422 ], [ 0, %atoi_internal.exit2208 ], [ 0, %parse_enum.exit2201 ], [ 0, %atoi_internal.exit2189 ], [ 1, %atoi_internal.exit2182 ], [ 1, %if.then396 ], [ 0, %atoi_internal.exit2175 ], [ 1, %if.then386 ], [ 1, %atoi_internal.exit2168 ], [ 0, %if.then366 ], [ 0, %atoi_internal.exit2161 ], [ 0, %if.then349 ], [ 0, %atoi_internal.exit2154 ], [ 0, %atoi_internal.exit2147 ], [ 0, %atoi_internal.exit2140 ], [ 0, %if.end328 ], [ 0, %if.then307 ], [ 0, %parse_enum.exit2119 ], [ 0, %if.then284 ], [ 0, %if.else294 ], [ 0, %if.then256 ], [ 0, %if.else274 ], [ 0, %atoi_internal.exit2107 ], [ 0, %parse_enum.exit2100 ], [ 0, %parse_enum.exit2088 ], [ 0, %parse_enum.exit2076 ], [ 0, %parse_enum.exit2064 ], [ 0, %parse_enum.exit2052 ], [ 0, %parse_enum.exit2040 ], [ 0, %land.end193 ], [ 0, %parse_enum.exit ], [ 0, %atoi_internal.exit2027 ], [ 1, %if.then164 ], [ 0, %atof_internal.exit2013 ], [ 0, %atoi_internal.exit2020 ], [ 0, %if.then147 ], [ 1, %if.then136 ], [ 1, %if.then131 ], [ 0, %atoi_internal.exit2000 ], [ 0, %if.then120 ], [ 1, %if.then112 ], [ 0, %atoi_internal.exit1993 ], [ 0, %if.then104 ], [ 0, %atoi_internal.exit1986 ], [ 0, %if.then93 ], [ %name_was_bool.1, %cond.end48 ], [ %name_was_bool.1, %if.then51 ], [ %name_was_bool.1, %if.end84 ], [ 1, %if.then373 ]
  %errortype.2 = phi i32 [ -1, %if.else1251 ], [ -2, %atoi_internal.exit3006 ], [ -2, %do.body1238 ], [ -3, %if.then1242 ], [ -2, %if.then1232 ], [ -2, %if.then1227 ], [ -2, %atoi_internal.exit2999 ], [ -2, %if.then1217 ], [ -2, %if.then1212 ], [ -2, %if.then1206 ], [ -2, %parse_enum.exit2992 ], [ -2, %if.then1192 ], [ -2, %if.then1187 ], [ -2, %if.then1181 ], [ -2, %if.then1173 ], [ -2, %atoi_internal.exit2980 ], [ -2, %if.then1163 ], [ -2, %if.then1157 ], [ -2, %if.then1151 ], [ -2, %if.then1140 ], [ -2, %do.body1127 ], [ -3, %if.then1133 ], [ -2, %atof_internal.exit2973 ], [ -2, %atof_internal.exit2966 ], [ -2, %if.then1103 ], [ -2, %atof_internal.exit2959 ], [ %errortype.1, %do.body1083 ], [ -3, %if.then1089 ], [ -2, %atoi_internal.exit2951 ], [ -2, %atof_internal.exit2944 ], [ -2, %atoi_internal.exit2937 ], [ -2, %atof_internal.exit2930 ], [ -2, %atof_internal.exit2923 ], [ -2, %atof_internal.exit2916 ], [ -2, %atoi_internal.exit2909 ], [ -2, %atoi_internal.exit2902 ], [ -2, %cond.end1003 ], [ -2, %atoi_internal.exit2888 ], [ -2, %atoi_internal.exit2881 ], [ -2, %atoi_internal.exit2874 ], [ -2, %atoi_internal.exit2867 ], [ -2, %atof_internal.exit2860 ], [ -2, %atof_internal.exit2853 ], [ -2, %atoi_internal.exit2846 ], [ -2, %atoi_internal.exit2839 ], [ -2, %atoi_internal.exit2832 ], [ -2, %atoi_internal.exit2825 ], [ -2, %atoi_internal.exit2818 ], [ -2, %if.then904 ], [ -2, %if.then898 ], [ -2, %atoi_internal.exit2811 ], [ -2, %if.then886 ], [ -2, %if.then880 ], [ -2, %if.then874 ], [ -2, %if.then833 ], [ -2, %lor.lhs.false839 ], [ -2, %lor.lhs.false847 ], [ -2, %if.then861 ], [ -2, %if.else864 ], [ -2, %atoi_internal.exit2804 ], [ -2, %atoi_internal.exit2797 ], [ -2, %atoi_internal.exit2790 ], [ -2, %atoi_internal.exit2783 ], [ -2, %parse_enum.exit2776 ], [ -2, %atoi_internal.exit2764 ], [ -2, %parse_enum.exit2757 ], [ -2, %atoi_internal.exit2745 ], [ -2, %if.then762 ], [ -2, %if.then753 ], [ -2, %if.then745 ], [ -2, %if.end742 ], [ -2, %do.body688 ], [ -3, %if.then692 ], [ -2, %atoi_internal.exit2738 ], [ -2, %parse_cqm.exit2731 ], [ -2, %parse_cqm.exit2681 ], [ -2, %parse_cqm.exit2631 ], [ -2, %parse_cqm.exit2606 ], [ -2, %parse_cqm.exit2581 ], [ -2, %parse_cqm.exit2556 ], [ -2, %parse_cqm.exit2531 ], [ -2, %parse_cqm.exit2481 ], [ -2, %parse_cqm.exit2431 ], [ -2, %parse_cqm.exit2331 ], [ -2, %do.body549 ], [ -3, %if.then554 ], [ -2, %if.then531 ], [ -2, %if.then535 ], [ -2, %do.body ], [ -3, %if.then541 ], [ -2, %if.then523 ], [ -2, %if.then512 ], [ -2, %if.then506 ], [ -2, %if.then501 ], [ -2, %atoi_internal.exit2250 ], [ -2, %if.then491 ], [ -2, %atoi_internal.exit2243 ], [ -2, %atoi_internal.exit2236 ], [ -2, %atoi_internal.exit2229 ], [ -2, %atoi_internal.exit2222 ], [ -2, %atoi_internal.exit2215 ], [ -2, %if.then448 ], [ -2, %if.then454 ], [ -2, %if.else458 ], [ -2, %if.then427 ], [ -2, %if.then422 ], [ -2, %atoi_internal.exit2208 ], [ -2, %parse_enum.exit2201 ], [ -2, %atoi_internal.exit2189 ], [ -2, %atoi_internal.exit2182 ], [ -2, %if.then396 ], [ -2, %atoi_internal.exit2175 ], [ -2, %if.then386 ], [ -2, %atoi_internal.exit2168 ], [ -2, %if.then366 ], [ -2, %atoi_internal.exit2161 ], [ -2, %if.then349 ], [ -2, %atoi_internal.exit2154 ], [ -2, %atoi_internal.exit2147 ], [ -2, %atoi_internal.exit2140 ], [ -2, %if.end328 ], [ -2, %if.then307 ], [ -2, %parse_enum.exit2119 ], [ -2, %if.then284 ], [ -2, %if.else294 ], [ -2, %if.then256 ], [ -2, %if.else274 ], [ -2, %atoi_internal.exit2107 ], [ -2, %parse_enum.exit2100 ], [ -2, %parse_enum.exit2088 ], [ -2, %parse_enum.exit2076 ], [ -2, %parse_enum.exit2064 ], [ -2, %parse_enum.exit2052 ], [ -2, %parse_enum.exit2040 ], [ -2, %land.end193 ], [ -2, %parse_enum.exit ], [ -2, %atoi_internal.exit2027 ], [ -2, %if.then164 ], [ -2, %atof_internal.exit2013 ], [ -2, %atoi_internal.exit2020 ], [ -2, %if.then147 ], [ -2, %if.then136 ], [ -2, %if.then131 ], [ -2, %atoi_internal.exit2000 ], [ -2, %if.then120 ], [ -2, %if.then112 ], [ -2, %atoi_internal.exit1993 ], [ -2, %if.then104 ], [ -2, %atoi_internal.exit1986 ], [ -2, %if.then93 ], [ -2, %cond.end48 ], [ -3, %if.then51 ], [ -2, %if.end84 ], [ -2, %if.then373 ]
  %tobool1375 = icmp eq i8* %name_buf.0, null
  br i1 %tobool1375, label %if.end1377, label %if.then1376

if.then1376:                                      ; preds = %if.end1374
  call void @free(i8* nonnull %name_buf.0) #5
  br label %if.end1377

if.end1377:                                       ; preds = %if.end1374, %if.then1376
  %tobool1380 = icmp eq i32 %name_was_bool.2, 0
  %419 = and i1 %tobool1380, %lnot
  %land.ext1384 = zext i1 %419 to i32
  %420 = load i32, i32* %b_error, align 4, !tbaa !2
  %or1385 = or i32 %420, %land.ext1384
  store i32 %or1385, i32* %b_error, align 4, !tbaa !2
  %tobool1386 = icmp eq i32 %or1385, 0
  %cond1390 = select i1 %tobool1386, i32 0, i32 %errortype.2
  br label %cleanup1391

cleanup1391:                                      ; preds = %if.then9, %entry, %if.end1377
  %retval.1 = phi i32 [ %cond1390, %if.end1377 ], [ -1, %entry ], [ -3, %if.then9 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #5
  ret i32 %retval.1

land.lhs.true.i.1:                                ; preds = %land.lhs.true.i
  %call.i2028.1 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.288, i32 0, i32 0)) #13
  %tobool4.i.1 = icmp eq i32 %call.i2028.1, 0
  br i1 %tobool4.i.1, label %cleanup.i, label %parse_enum.exit

land.lhs.true.i2034.1:                            ; preds = %land.lhs.true.i2034
  %call.i2032.1 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.289, i32 0, i32 0)) #13
  %tobool4.i2033.1 = icmp eq i32 %call.i2032.1, 0
  br i1 %tobool4.i2033.1, label %cleanup.i2039, label %land.lhs.true.i2034.2

land.lhs.true.i2034.2:                            ; preds = %land.lhs.true.i2034.1
  %call.i2032.2 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.290, i32 0, i32 0)) #13
  %tobool4.i2033.2 = icmp eq i32 %call.i2032.2, 0
  br i1 %tobool4.i2033.2, label %cleanup.i2039, label %parse_enum.exit2040

land.lhs.true.i2046.1:                            ; preds = %land.lhs.true.i2046
  %call.i2044.1 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.292, i32 0, i32 0)) #13
  %tobool4.i2045.1 = icmp eq i32 %call.i2044.1, 0
  br i1 %tobool4.i2045.1, label %cleanup.i2051, label %land.lhs.true.i2046.2

land.lhs.true.i2046.2:                            ; preds = %land.lhs.true.i2046.1
  %call.i2044.2 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.293, i32 0, i32 0)) #13
  %tobool4.i2045.2 = icmp eq i32 %call.i2044.2, 0
  br i1 %tobool4.i2045.2, label %cleanup.i2051, label %land.lhs.true.i2046.3

land.lhs.true.i2046.3:                            ; preds = %land.lhs.true.i2046.2
  %call.i2044.3 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.294, i32 0, i32 0)) #13
  %tobool4.i2045.3 = icmp eq i32 %call.i2044.3, 0
  br i1 %tobool4.i2045.3, label %cleanup.i2051, label %land.lhs.true.i2046.4

land.lhs.true.i2046.4:                            ; preds = %land.lhs.true.i2046.3
  %call.i2044.4 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.295, i32 0, i32 0)) #13
  %tobool4.i2045.4 = icmp eq i32 %call.i2044.4, 0
  br i1 %tobool4.i2045.4, label %cleanup.i2051, label %land.lhs.true.i2046.5

land.lhs.true.i2046.5:                            ; preds = %land.lhs.true.i2046.4
  %call.i2044.5 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0)) #13
  %tobool4.i2045.5 = icmp eq i32 %call.i2044.5, 0
  br i1 %tobool4.i2045.5, label %cleanup.i2051, label %parse_enum.exit2052

land.lhs.true.i2058.1:                            ; preds = %land.lhs.true.i2058
  %call.i2056.1 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.297, i32 0, i32 0)) #13
  %tobool4.i2057.1 = icmp eq i32 %call.i2056.1, 0
  br i1 %tobool4.i2057.1, label %cleanup.i2063, label %parse_enum.exit2064

land.lhs.true.i2070.1:                            ; preds = %if.else215
  %i_colorprim = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 14, i32 5
  %call.i2068.1 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.299, i32 0, i32 0)) #13
  %tobool4.i2069.1 = icmp eq i32 %call.i2068.1, 0
  br i1 %tobool4.i2069.1, label %cleanup.i2075, label %land.lhs.true.i2070.2

land.lhs.true.i2070.2:                            ; preds = %land.lhs.true.i2070.1
  %call.i2068.2 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0)) #13
  %tobool4.i2069.2 = icmp eq i32 %call.i2068.2, 0
  br i1 %tobool4.i2069.2, label %cleanup.i2075, label %land.lhs.true.i2070.4

land.lhs.true.i2070.4:                            ; preds = %land.lhs.true.i2070.2
  %call.i2068.4 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.300, i32 0, i32 0)) #13
  %tobool4.i2069.4 = icmp eq i32 %call.i2068.4, 0
  br i1 %tobool4.i2069.4, label %cleanup.i2075, label %land.lhs.true.i2070.5

land.lhs.true.i2070.5:                            ; preds = %land.lhs.true.i2070.4
  %call.i2068.5 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.301, i32 0, i32 0)) #13
  %tobool4.i2069.5 = icmp eq i32 %call.i2068.5, 0
  br i1 %tobool4.i2069.5, label %cleanup.i2075, label %land.lhs.true.i2070.6

land.lhs.true.i2070.6:                            ; preds = %land.lhs.true.i2070.5
  %call.i2068.6 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.302, i32 0, i32 0)) #13
  %tobool4.i2069.6 = icmp eq i32 %call.i2068.6, 0
  br i1 %tobool4.i2069.6, label %cleanup.i2075, label %land.lhs.true.i2070.7

land.lhs.true.i2070.7:                            ; preds = %land.lhs.true.i2070.6
  %call.i2068.7 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.303, i32 0, i32 0)) #13
  %tobool4.i2069.7 = icmp eq i32 %call.i2068.7, 0
  br i1 %tobool4.i2069.7, label %cleanup.i2075, label %land.lhs.true.i2070.8

land.lhs.true.i2070.8:                            ; preds = %land.lhs.true.i2070.7
  %call.i2068.8 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.270, i32 0, i32 0)) #13
  %tobool4.i2069.8 = icmp eq i32 %call.i2068.8, 0
  br i1 %tobool4.i2069.8, label %cleanup.i2075, label %land.lhs.true.i2070.9

land.lhs.true.i2070.9:                            ; preds = %land.lhs.true.i2070.8
  %call.i2068.9 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.304, i32 0, i32 0)) #13
  %tobool4.i2069.9 = icmp eq i32 %call.i2068.9, 0
  br i1 %tobool4.i2069.9, label %cleanup.i2075, label %land.lhs.true.i2070.10

land.lhs.true.i2070.10:                           ; preds = %land.lhs.true.i2070.9
  %call.i2068.10 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.305, i32 0, i32 0)) #13
  %tobool4.i2069.10 = icmp eq i32 %call.i2068.10, 0
  br i1 %tobool4.i2069.10, label %cleanup.i2075, label %land.lhs.true.i2070.11

land.lhs.true.i2070.11:                           ; preds = %land.lhs.true.i2070.10
  %call.i2068.11 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.306, i32 0, i32 0)) #13
  %tobool4.i2069.11 = icmp eq i32 %call.i2068.11, 0
  br i1 %tobool4.i2069.11, label %cleanup.i2075, label %land.lhs.true.i2070.12

land.lhs.true.i2070.12:                           ; preds = %land.lhs.true.i2070.11
  %call.i2068.12 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.307, i32 0, i32 0)) #13
  %tobool4.i2069.12 = icmp eq i32 %call.i2068.12, 0
  br i1 %tobool4.i2069.12, label %cleanup.i2075, label %parse_enum.exit2076

land.lhs.true.i2082.1:                            ; preds = %if.else222
  %i_transfer = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 14, i32 6
  %call.i2080.1 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.299, i32 0, i32 0)) #13
  %tobool4.i2081.1 = icmp eq i32 %call.i2080.1, 0
  br i1 %tobool4.i2081.1, label %cleanup.i2087, label %land.lhs.true.i2082.2

land.lhs.true.i2082.2:                            ; preds = %land.lhs.true.i2082.1
  %call.i2080.2 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0)) #13
  %tobool4.i2081.2 = icmp eq i32 %call.i2080.2, 0
  br i1 %tobool4.i2081.2, label %cleanup.i2087, label %land.lhs.true.i2082.4

land.lhs.true.i2082.4:                            ; preds = %land.lhs.true.i2082.2
  %call.i2080.4 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.300, i32 0, i32 0)) #13
  %tobool4.i2081.4 = icmp eq i32 %call.i2080.4, 0
  br i1 %tobool4.i2081.4, label %cleanup.i2087, label %land.lhs.true.i2082.5

land.lhs.true.i2082.5:                            ; preds = %land.lhs.true.i2082.4
  %call.i2080.5 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.301, i32 0, i32 0)) #13
  %tobool4.i2081.5 = icmp eq i32 %call.i2080.5, 0
  br i1 %tobool4.i2081.5, label %cleanup.i2087, label %land.lhs.true.i2082.6

land.lhs.true.i2082.6:                            ; preds = %land.lhs.true.i2082.5
  %call.i2080.6 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.302, i32 0, i32 0)) #13
  %tobool4.i2081.6 = icmp eq i32 %call.i2080.6, 0
  br i1 %tobool4.i2081.6, label %cleanup.i2087, label %land.lhs.true.i2082.7

land.lhs.true.i2082.7:                            ; preds = %land.lhs.true.i2082.6
  %call.i2080.7 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.303, i32 0, i32 0)) #13
  %tobool4.i2081.7 = icmp eq i32 %call.i2080.7, 0
  br i1 %tobool4.i2081.7, label %cleanup.i2087, label %land.lhs.true.i2082.8

land.lhs.true.i2082.8:                            ; preds = %land.lhs.true.i2082.7
  %call.i2080.8 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.308, i32 0, i32 0)) #13
  %tobool4.i2081.8 = icmp eq i32 %call.i2080.8, 0
  br i1 %tobool4.i2081.8, label %cleanup.i2087, label %land.lhs.true.i2082.9

land.lhs.true.i2082.9:                            ; preds = %land.lhs.true.i2082.8
  %call.i2080.9 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.309, i32 0, i32 0)) #13
  %tobool4.i2081.9 = icmp eq i32 %call.i2080.9, 0
  br i1 %tobool4.i2081.9, label %cleanup.i2087, label %land.lhs.true.i2082.10

land.lhs.true.i2082.10:                           ; preds = %land.lhs.true.i2082.9
  %call.i2080.10 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.310, i32 0, i32 0)) #13
  %tobool4.i2081.10 = icmp eq i32 %call.i2080.10, 0
  br i1 %tobool4.i2081.10, label %cleanup.i2087, label %land.lhs.true.i2082.11

land.lhs.true.i2082.11:                           ; preds = %land.lhs.true.i2082.10
  %call.i2080.11 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.311, i32 0, i32 0)) #13
  %tobool4.i2081.11 = icmp eq i32 %call.i2080.11, 0
  br i1 %tobool4.i2081.11, label %cleanup.i2087, label %land.lhs.true.i2082.12

land.lhs.true.i2082.12:                           ; preds = %land.lhs.true.i2082.11
  %call.i2080.12 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.312, i32 0, i32 0)) #13
  %tobool4.i2081.12 = icmp eq i32 %call.i2080.12, 0
  br i1 %tobool4.i2081.12, label %cleanup.i2087, label %land.lhs.true.i2082.13

land.lhs.true.i2082.13:                           ; preds = %land.lhs.true.i2082.12
  %call.i2080.13 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.313, i32 0, i32 0)) #13
  %tobool4.i2081.13 = icmp eq i32 %call.i2080.13, 0
  br i1 %tobool4.i2081.13, label %cleanup.i2087, label %land.lhs.true.i2082.14

land.lhs.true.i2082.14:                           ; preds = %land.lhs.true.i2082.13
  %call.i2080.14 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.314, i32 0, i32 0)) #13
  %tobool4.i2081.14 = icmp eq i32 %call.i2080.14, 0
  br i1 %tobool4.i2081.14, label %cleanup.i2087, label %land.lhs.true.i2082.15

land.lhs.true.i2082.15:                           ; preds = %land.lhs.true.i2082.14
  %call.i2080.15 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.315, i32 0, i32 0)) #13
  %tobool4.i2081.15 = icmp eq i32 %call.i2080.15, 0
  br i1 %tobool4.i2081.15, label %cleanup.i2087, label %land.lhs.true.i2082.16

land.lhs.true.i2082.16:                           ; preds = %land.lhs.true.i2082.15
  %call.i2080.16 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.316, i32 0, i32 0)) #13
  %tobool4.i2081.16 = icmp eq i32 %call.i2080.16, 0
  br i1 %tobool4.i2081.16, label %cleanup.i2087, label %land.lhs.true.i2082.17

land.lhs.true.i2082.17:                           ; preds = %land.lhs.true.i2082.16
  %call.i2080.17 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.305, i32 0, i32 0)) #13
  %tobool4.i2081.17 = icmp eq i32 %call.i2080.17, 0
  br i1 %tobool4.i2081.17, label %cleanup.i2087, label %land.lhs.true.i2082.18

land.lhs.true.i2082.18:                           ; preds = %land.lhs.true.i2082.17
  %call.i2080.18 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.317, i32 0, i32 0)) #13
  %tobool4.i2081.18 = icmp eq i32 %call.i2080.18, 0
  br i1 %tobool4.i2081.18, label %cleanup.i2087, label %parse_enum.exit2088

land.lhs.true.i2094.1:                            ; preds = %land.lhs.true.i2094
  %call.i2092.1 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.299, i32 0, i32 0)) #13
  %tobool4.i2093.1 = icmp eq i32 %call.i2092.1, 0
  br i1 %tobool4.i2093.1, label %cleanup.i2099, label %land.lhs.true.i2094.2

land.lhs.true.i2094.2:                            ; preds = %land.lhs.true.i2094.1
  %call.i2092.2 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0)) #13
  %tobool4.i2093.2 = icmp eq i32 %call.i2092.2, 0
  br i1 %tobool4.i2093.2, label %cleanup.i2099, label %land.lhs.true.i2094.4

land.lhs.true.i2094.4:                            ; preds = %land.lhs.true.i2094.2
  %call.i2092.4 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.319, i32 0, i32 0)) #13
  %tobool4.i2093.4 = icmp eq i32 %call.i2092.4, 0
  br i1 %tobool4.i2093.4, label %cleanup.i2099, label %land.lhs.true.i2094.5

land.lhs.true.i2094.5:                            ; preds = %land.lhs.true.i2094.4
  %call.i2092.5 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.301, i32 0, i32 0)) #13
  %tobool4.i2093.5 = icmp eq i32 %call.i2092.5, 0
  br i1 %tobool4.i2093.5, label %cleanup.i2099, label %land.lhs.true.i2094.6

land.lhs.true.i2094.6:                            ; preds = %land.lhs.true.i2094.5
  %call.i2092.6 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.302, i32 0, i32 0)) #13
  %tobool4.i2093.6 = icmp eq i32 %call.i2092.6, 0
  br i1 %tobool4.i2093.6, label %cleanup.i2099, label %land.lhs.true.i2094.7

land.lhs.true.i2094.7:                            ; preds = %land.lhs.true.i2094.6
  %call.i2092.7 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.303, i32 0, i32 0)) #13
  %tobool4.i2093.7 = icmp eq i32 %call.i2092.7, 0
  br i1 %tobool4.i2093.7, label %cleanup.i2099, label %land.lhs.true.i2094.8

land.lhs.true.i2094.8:                            ; preds = %land.lhs.true.i2094.7
  %call.i2092.8 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.320, i32 0, i32 0)) #13
  %tobool4.i2093.8 = icmp eq i32 %call.i2092.8, 0
  br i1 %tobool4.i2093.8, label %cleanup.i2099, label %land.lhs.true.i2094.9

land.lhs.true.i2094.9:                            ; preds = %land.lhs.true.i2094.8
  %call.i2092.9 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.321, i32 0, i32 0)) #13
  %tobool4.i2093.9 = icmp eq i32 %call.i2092.9, 0
  br i1 %tobool4.i2093.9, label %cleanup.i2099, label %land.lhs.true.i2094.10

land.lhs.true.i2094.10:                           ; preds = %land.lhs.true.i2094.9
  %call.i2092.10 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.322, i32 0, i32 0)) #13
  %tobool4.i2093.10 = icmp eq i32 %call.i2092.10, 0
  br i1 %tobool4.i2093.10, label %cleanup.i2099, label %land.lhs.true.i2094.11

land.lhs.true.i2094.11:                           ; preds = %land.lhs.true.i2094.10
  %call.i2092.11 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.323, i32 0, i32 0)) #13
  %tobool4.i2093.11 = icmp eq i32 %call.i2092.11, 0
  br i1 %tobool4.i2093.11, label %cleanup.i2099, label %land.lhs.true.i2094.12

land.lhs.true.i2094.12:                           ; preds = %land.lhs.true.i2094.11
  %call.i2092.12 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.324, i32 0, i32 0)) #13
  %tobool4.i2093.12 = icmp eq i32 %call.i2092.12, 0
  br i1 %tobool4.i2093.12, label %cleanup.i2099, label %land.lhs.true.i2094.13

land.lhs.true.i2094.13:                           ; preds = %land.lhs.true.i2094.12
  %call.i2092.13 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.325, i32 0, i32 0)) #13
  %tobool4.i2093.13 = icmp eq i32 %call.i2092.13, 0
  br i1 %tobool4.i2093.13, label %cleanup.i2099, label %land.lhs.true.i2094.14

land.lhs.true.i2094.14:                           ; preds = %land.lhs.true.i2094.13
  %call.i2092.14 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.326, i32 0, i32 0)) #13
  %tobool4.i2093.14 = icmp eq i32 %call.i2092.14, 0
  br i1 %tobool4.i2093.14, label %cleanup.i2099, label %parse_enum.exit2100

land.lhs.true.i2113.1:                            ; preds = %if.else298
  %i_alternative_transfer = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 57
  %call.i2111.1 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.299, i32 0, i32 0)) #13
  %tobool4.i2112.1 = icmp eq i32 %call.i2111.1, 0
  br i1 %tobool4.i2112.1, label %cleanup.i2118, label %land.lhs.true.i2113.2

land.lhs.true.i2113.2:                            ; preds = %land.lhs.true.i2113.1
  %call.i2111.2 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0)) #13
  %tobool4.i2112.2 = icmp eq i32 %call.i2111.2, 0
  br i1 %tobool4.i2112.2, label %cleanup.i2118, label %land.lhs.true.i2113.4

land.lhs.true.i2113.4:                            ; preds = %land.lhs.true.i2113.2
  %call.i2111.4 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.300, i32 0, i32 0)) #13
  %tobool4.i2112.4 = icmp eq i32 %call.i2111.4, 0
  br i1 %tobool4.i2112.4, label %cleanup.i2118, label %land.lhs.true.i2113.5

land.lhs.true.i2113.5:                            ; preds = %land.lhs.true.i2113.4
  %call.i2111.5 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.301, i32 0, i32 0)) #13
  %tobool4.i2112.5 = icmp eq i32 %call.i2111.5, 0
  br i1 %tobool4.i2112.5, label %cleanup.i2118, label %land.lhs.true.i2113.6

land.lhs.true.i2113.6:                            ; preds = %land.lhs.true.i2113.5
  %call.i2111.6 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.302, i32 0, i32 0)) #13
  %tobool4.i2112.6 = icmp eq i32 %call.i2111.6, 0
  br i1 %tobool4.i2112.6, label %cleanup.i2118, label %land.lhs.true.i2113.7

land.lhs.true.i2113.7:                            ; preds = %land.lhs.true.i2113.6
  %call.i2111.7 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.303, i32 0, i32 0)) #13
  %tobool4.i2112.7 = icmp eq i32 %call.i2111.7, 0
  br i1 %tobool4.i2112.7, label %cleanup.i2118, label %land.lhs.true.i2113.8

land.lhs.true.i2113.8:                            ; preds = %land.lhs.true.i2113.7
  %call.i2111.8 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.308, i32 0, i32 0)) #13
  %tobool4.i2112.8 = icmp eq i32 %call.i2111.8, 0
  br i1 %tobool4.i2112.8, label %cleanup.i2118, label %land.lhs.true.i2113.9

land.lhs.true.i2113.9:                            ; preds = %land.lhs.true.i2113.8
  %call.i2111.9 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.309, i32 0, i32 0)) #13
  %tobool4.i2112.9 = icmp eq i32 %call.i2111.9, 0
  br i1 %tobool4.i2112.9, label %cleanup.i2118, label %land.lhs.true.i2113.10

land.lhs.true.i2113.10:                           ; preds = %land.lhs.true.i2113.9
  %call.i2111.10 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.310, i32 0, i32 0)) #13
  %tobool4.i2112.10 = icmp eq i32 %call.i2111.10, 0
  br i1 %tobool4.i2112.10, label %cleanup.i2118, label %land.lhs.true.i2113.11

land.lhs.true.i2113.11:                           ; preds = %land.lhs.true.i2113.10
  %call.i2111.11 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.311, i32 0, i32 0)) #13
  %tobool4.i2112.11 = icmp eq i32 %call.i2111.11, 0
  br i1 %tobool4.i2112.11, label %cleanup.i2118, label %land.lhs.true.i2113.12

land.lhs.true.i2113.12:                           ; preds = %land.lhs.true.i2113.11
  %call.i2111.12 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.312, i32 0, i32 0)) #13
  %tobool4.i2112.12 = icmp eq i32 %call.i2111.12, 0
  br i1 %tobool4.i2112.12, label %cleanup.i2118, label %land.lhs.true.i2113.13

land.lhs.true.i2113.13:                           ; preds = %land.lhs.true.i2113.12
  %call.i2111.13 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.313, i32 0, i32 0)) #13
  %tobool4.i2112.13 = icmp eq i32 %call.i2111.13, 0
  br i1 %tobool4.i2112.13, label %cleanup.i2118, label %land.lhs.true.i2113.14

land.lhs.true.i2113.14:                           ; preds = %land.lhs.true.i2113.13
  %call.i2111.14 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.314, i32 0, i32 0)) #13
  %tobool4.i2112.14 = icmp eq i32 %call.i2111.14, 0
  br i1 %tobool4.i2112.14, label %cleanup.i2118, label %land.lhs.true.i2113.15

land.lhs.true.i2113.15:                           ; preds = %land.lhs.true.i2113.14
  %call.i2111.15 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.315, i32 0, i32 0)) #13
  %tobool4.i2112.15 = icmp eq i32 %call.i2111.15, 0
  br i1 %tobool4.i2112.15, label %cleanup.i2118, label %land.lhs.true.i2113.16

land.lhs.true.i2113.16:                           ; preds = %land.lhs.true.i2113.15
  %call.i2111.16 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.316, i32 0, i32 0)) #13
  %tobool4.i2112.16 = icmp eq i32 %call.i2111.16, 0
  br i1 %tobool4.i2112.16, label %cleanup.i2118, label %land.lhs.true.i2113.17

land.lhs.true.i2113.17:                           ; preds = %land.lhs.true.i2113.16
  %call.i2111.17 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.305, i32 0, i32 0)) #13
  %tobool4.i2112.17 = icmp eq i32 %call.i2111.17, 0
  br i1 %tobool4.i2112.17, label %cleanup.i2118, label %land.lhs.true.i2113.18

land.lhs.true.i2113.18:                           ; preds = %land.lhs.true.i2113.17
  %call.i2111.18 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.317, i32 0, i32 0)) #13
  %tobool4.i2112.18 = icmp eq i32 %call.i2111.18, 0
  br i1 %tobool4.i2112.18, label %cleanup.i2118, label %parse_enum.exit2119

land.lhs.true.i2195.1:                            ; preds = %land.lhs.true.i2195
  %call.i2193.1 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.327, i32 0, i32 0)) #13
  %tobool4.i2194.1 = icmp eq i32 %call.i2193.1, 0
  br i1 %tobool4.i2194.1, label %cleanup.i2200, label %land.lhs.true.i2195.2

land.lhs.true.i2195.2:                            ; preds = %land.lhs.true.i2195.1
  %call.i2193.2 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.328, i32 0, i32 0)) #13
  %tobool4.i2194.2 = icmp eq i32 %call.i2193.2, 0
  br i1 %tobool4.i2194.2, label %cleanup.i2200, label %parse_enum.exit2201

land.lhs.true.i2751.1:                            ; preds = %land.lhs.true.i2751
  %call.i2749.1 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.329, i32 0, i32 0)) #13
  %tobool4.i2750.1 = icmp eq i32 %call.i2749.1, 0
  br i1 %tobool4.i2750.1, label %cleanup.i2756, label %land.lhs.true.i2751.2

land.lhs.true.i2751.2:                            ; preds = %land.lhs.true.i2751.1
  %call.i2749.2 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.330, i32 0, i32 0)) #13
  %tobool4.i2750.2 = icmp eq i32 %call.i2749.2, 0
  br i1 %tobool4.i2750.2, label %cleanup.i2756, label %land.lhs.true.i2751.3

land.lhs.true.i2751.3:                            ; preds = %land.lhs.true.i2751.2
  %call.i2749.3 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0)) #13
  %tobool4.i2750.3 = icmp eq i32 %call.i2749.3, 0
  br i1 %tobool4.i2750.3, label %cleanup.i2756, label %parse_enum.exit2757

land.lhs.true.i2770.1:                            ; preds = %land.lhs.true.i2770
  %call.i2768.1 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.332, i32 0, i32 0)) #13
  %tobool4.i2769.1 = icmp eq i32 %call.i2768.1, 0
  br i1 %tobool4.i2769.1, label %cleanup.i2775, label %land.lhs.true.i2770.2

land.lhs.true.i2770.2:                            ; preds = %land.lhs.true.i2770.1
  %call.i2768.2 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.333, i32 0, i32 0)) #13
  %tobool4.i2769.2 = icmp eq i32 %call.i2768.2, 0
  br i1 %tobool4.i2769.2, label %cleanup.i2775, label %land.lhs.true.i2770.3

land.lhs.true.i2770.3:                            ; preds = %land.lhs.true.i2770.2
  %call.i2768.3 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.334, i32 0, i32 0)) #13
  %tobool4.i2769.3 = icmp eq i32 %call.i2768.3, 0
  br i1 %tobool4.i2769.3, label %cleanup.i2775, label %land.lhs.true.i2770.4

land.lhs.true.i2770.4:                            ; preds = %land.lhs.true.i2770.3
  %call.i2768.4 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.335, i32 0, i32 0)) #13
  %tobool4.i2769.4 = icmp eq i32 %call.i2768.4, 0
  br i1 %tobool4.i2769.4, label %cleanup.i2775, label %parse_enum.exit2776

land.lhs.true.i2986.1:                            ; preds = %land.lhs.true.i2986
  %call.i2984.1 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.336, i32 0, i32 0)) #13
  %tobool4.i2985.1 = icmp eq i32 %call.i2984.1, 0
  br i1 %tobool4.i2985.1, label %cleanup.i2991, label %land.lhs.true.i2986.2

land.lhs.true.i2986.2:                            ; preds = %land.lhs.true.i2986.1
  %call.i2984.2 = tail call i32 @strcasecmp(i8* %value.addr.2, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.237, i32 0, i32 0)) #13
  %tobool4.i2985.2 = icmp eq i32 %call.i2984.2, 0
  br i1 %tobool4.i2985.2, label %cleanup.i2991, label %parse_enum.exit2992
}

; Function Attrs: nofree nounwind readonly
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #8

; Function Attrs: nofree nounwind readonly
declare dso_local i32 @strncmp(i8* nocapture, i8* nocapture, i32) local_unnamed_addr #8

; Function Attrs: nofree nounwind
define internal fastcc i32 @atobool_internal(i8* nocapture readonly %str, i32* nocapture %b_error) unnamed_addr #2 {
entry:
  %call = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %str, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.285, i32 0, i32 0)) #13
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @strcasecmp(i8* %str, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0)) #13
  %tobool2 = icmp eq i32 %call1, 0
  br i1 %tobool2, label %return, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call i32 @strcasecmp(i8* %str, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.286, i32 0, i32 0)) #13
  %tobool5 = icmp eq i32 %call4, 0
  br i1 %tobool5, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false3
  %call6 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %str, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.224, i32 0, i32 0)) #13
  %tobool7 = icmp eq i32 %call6, 0
  br i1 %tobool7, label %return, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %if.end
  %call9 = tail call i32 @strcasecmp(i8* %str, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0)) #13
  %tobool10 = icmp eq i32 %call9, 0
  br i1 %tobool10, label %return, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false8
  %call12 = tail call i32 @strcasecmp(i8* %str, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0)) #13
  %tobool13 = icmp eq i32 %call12, 0
  br i1 %tobool13, label %return, label %if.end15

if.end15:                                         ; preds = %lor.lhs.false11
  store i32 1, i32* %b_error, align 4, !tbaa !2
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false8, %lor.lhs.false11, %entry, %lor.lhs.false, %lor.lhs.false3, %if.end15
  %retval.0 = phi i32 [ 0, %if.end15 ], [ 1, %lor.lhs.false3 ], [ 1, %lor.lhs.false ], [ 1, %entry ], [ 0, %lor.lhs.false11 ], [ 0, %lor.lhs.false8 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind readonly
declare dso_local i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #8

; Function Attrs: nounwind readnone
declare dso_local i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare dso_local i32 @strcasecmp(i8* nocapture, i8* nocapture) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare dso_local i8* @strtok_r(i8*, i8* nocapture readonly, i8**) local_unnamed_addr #3

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind readonly
declare dso_local i8* @strstr(i8*, i8* nocapture) local_unnamed_addr #8

; Function Attrs: nounwind
define hidden i8* @x264_param2string(%struct.x264_param_t* readonly %p, i32 %b_res) local_unnamed_addr #4 {
entry:
  %psz_zones = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 28
  %0 = load i8*, i8** %psz_zones, align 8, !tbaa !151
  %tobool = icmp eq i8* %0, null
  br i1 %tobool, label %if.end.i, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @strlen(i8* nonnull %0) #13
  %add = add i32 %call, 2000
  %conv = sext i32 %add to i64
  %cmp1.i = icmp slt i32 %add, 0
  br i1 %cmp1.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  tail call void (i32, i8*, ...) @x264_log_internal(i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0), i64 %conv) #5
  br label %cleanup

if.end.i:                                         ; preds = %entry, %if.end
  %conv676 = phi i64 [ %conv, %if.end ], [ 2000, %entry ]
  %len.0675 = phi i32 [ %add, %if.end ], [ 2000, %entry ]
  %call.i = tail call noalias i8* @memalign(i32 64, i32 %len.0675) #5
  %tobool.i = icmp eq i8* %call.i, null
  br i1 %tobool.i, label %if.then2.i, label %if.end6

if.then2.i:                                       ; preds = %if.end.i
  tail call void (i32, i8*, ...) @x264_log_internal(i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0), i64 %conv676) #5
  br label %cleanup

if.end6:                                          ; preds = %if.end.i
  %tobool7 = icmp eq i32 %b_res, 0
  br i1 %tobool7, label %if.end16, label %if.then8

if.then8:                                         ; preds = %if.end6
  %i_width = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 7
  %1 = load i32, i32* %i_width, align 4, !tbaa !36
  %i_height = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 8
  %2 = load i32, i32* %i_height, align 8, !tbaa !37
  %call9 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %call.i, i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.190, i32 0, i32 0), i32 %1, i32 %2) #5
  %add.ptr = getelementptr inbounds i8, i8* %call.i, i32 %call9
  %i_fps_num = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 64
  %3 = load i32, i32* %i_fps_num, align 8, !tbaa !47
  %i_fps_den = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 65
  %4 = load i32, i32* %i_fps_den, align 4, !tbaa !48
  %call10 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %add.ptr, i8* nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.191, i32 0, i32 0), i32 %3, i32 %4) #5
  %add.ptr11 = getelementptr inbounds i8, i8* %add.ptr, i32 %call10
  %i_timebase_num = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 66
  %5 = load i32, i32* %i_timebase_num, align 8, !tbaa !158
  %i_timebase_den = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 67
  %6 = load i32, i32* %i_timebase_den, align 4, !tbaa !159
  %call12 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %add.ptr11, i8* nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.192, i32 0, i32 0), i32 %5, i32 %6) #5
  %add.ptr13 = getelementptr inbounds i8, i8* %add.ptr11, i32 %call12
  %i_bitdepth = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 10
  %7 = load i32, i32* %i_bitdepth, align 8, !tbaa !53
  %call14 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %add.ptr13, i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.193, i32 0, i32 0), i32 %7) #5
  %add.ptr15 = getelementptr inbounds i8, i8* %add.ptr13, i32 %call14
  br label %if.end16

if.end16:                                         ; preds = %if.end6, %if.then8
  %s.0 = phi i8* [ %add.ptr15, %if.then8 ], [ %call.i, %if.end6 ]
  %b_opencl = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 72
  %8 = load i32, i32* %b_opencl, align 8, !tbaa !155
  %tobool17 = icmp eq i32 %8, 0
  br i1 %tobool17, label %if.end22, label %if.then18

if.then18:                                        ; preds = %if.end16
  %call20 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %s.0, i8* nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.194, i32 0, i32 0), i32 %8) #5
  %add.ptr21 = getelementptr inbounds i8, i8* %s.0, i32 %call20
  br label %if.end22

if.end22:                                         ; preds = %if.end16, %if.then18
  %s.1 = phi i8* [ %add.ptr21, %if.then18 ], [ %s.0, %if.end16 ]
  %b_cabac = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 32
  %9 = load i32, i32* %b_cabac, align 8, !tbaa !67
  %call23 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %s.1, i8* nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.195, i32 0, i32 0), i32 %9) #5
  %add.ptr24 = getelementptr inbounds i8, i8* %s.1, i32 %call23
  %i_frame_reference = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 15
  %10 = load i32, i32* %i_frame_reference, align 4, !tbaa !54
  %call25 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %add.ptr24, i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.196, i32 0, i32 0), i32 %10) #5
  %add.ptr26 = getelementptr inbounds i8, i8* %add.ptr24, i32 %call25
  %b_deblocking_filter = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 29
  %11 = load i32, i32* %b_deblocking_filter, align 4, !tbaa !64
  %i_deblocking_filter_alphac0 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 30
  %12 = load i32, i32* %i_deblocking_filter_alphac0, align 8, !tbaa !65
  %i_deblocking_filter_beta = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 31
  %13 = load i32, i32* %i_deblocking_filter_beta, align 4, !tbaa !66
  %call27 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %add.ptr26, i8* nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.197, i32 0, i32 0), i32 %11, i32 %12, i32 %13) #5
  %add.ptr28 = getelementptr inbounds i8, i8* %add.ptr26, i32 %call27
  %intra = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 51, i32 0
  %14 = load i32, i32* %intra, align 4, !tbaa !97
  %inter = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 51, i32 1
  %15 = load i32, i32* %inter, align 4, !tbaa !98
  %call30 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %add.ptr28, i8* nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.198, i32 0, i32 0), i32 %14, i32 %15) #5
  %add.ptr31 = getelementptr inbounds i8, i8* %add.ptr28, i32 %call30
  %i_me_method = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 51, i32 7
  %16 = load i32, i32* %i_me_method, align 4, !tbaa !100
  %arrayidx = getelementptr inbounds [6 x i8*], [6 x i8*]* @x264_motion_est_names, i32 0, i32 %16
  %17 = load i8*, i8** %arrayidx, align 4, !tbaa !8
  %call33 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %add.ptr31, i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.199, i32 0, i32 0), i8* %17) #5
  %add.ptr34 = getelementptr inbounds i8, i8* %add.ptr31, i32 %call33
  %i_subpel_refine = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 51, i32 11
  %18 = load i32, i32* %i_subpel_refine, align 4, !tbaa !105
  %call36 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %add.ptr34, i8* nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.200, i32 0, i32 0), i32 %18) #5
  %add.ptr37 = getelementptr inbounds i8, i8* %add.ptr34, i32 %call36
  %b_psy = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 51, i32 20
  %19 = load i32, i32* %b_psy, align 4, !tbaa !102
  %call39 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %add.ptr37, i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.201, i32 0, i32 0), i32 %19) #5
  %add.ptr40 = getelementptr inbounds i8, i8* %add.ptr37, i32 %call39
  %20 = load i32, i32* %b_psy, align 4, !tbaa !102
  %tobool43 = icmp eq i32 %20, 0
  br i1 %tobool43, label %if.end51, label %if.then44

if.then44:                                        ; preds = %if.end22
  %f_psy_rd = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 51, i32 18
  %21 = load float, float* %f_psy_rd, align 4, !tbaa !101
  %conv46 = fpext float %21 to double
  %f_psy_trellis = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 51, i32 19
  %22 = load float, float* %f_psy_trellis, align 4, !tbaa !103
  %conv48 = fpext float %22 to double
  %call49 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %add.ptr40, i8* nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.202, i32 0, i32 0), double %conv46, double %conv48) #5
  %add.ptr50 = getelementptr inbounds i8, i8* %add.ptr40, i32 %call49
  br label %if.end51

if.end51:                                         ; preds = %if.end22, %if.then44
  %s.2 = phi i8* [ %add.ptr50, %if.then44 ], [ %add.ptr40, %if.end22 ]
  %b_mixed_references = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 51, i32 13
  %23 = load i32, i32* %b_mixed_references, align 4, !tbaa !106
  %call53 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %s.2, i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.203, i32 0, i32 0), i32 %23) #5
  %add.ptr54 = getelementptr inbounds i8, i8* %s.2, i32 %call53
  %i_me_range = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 51, i32 8
  %24 = load i32, i32* %i_me_range, align 4, !tbaa !104
  %call56 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %add.ptr54, i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.204, i32 0, i32 0), i32 %24) #5
  %add.ptr57 = getelementptr inbounds i8, i8* %add.ptr54, i32 %call56
  %b_chroma_me = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 51, i32 12
  %25 = load i32, i32* %b_chroma_me, align 4, !tbaa !107
  %call59 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %add.ptr57, i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.205, i32 0, i32 0), i32 %25) #5
  %add.ptr60 = getelementptr inbounds i8, i8* %add.ptr57, i32 %call59
  %i_trellis = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 51, i32 14
  %26 = load i32, i32* %i_trellis, align 4, !tbaa !116
  %call62 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %add.ptr60, i8* nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.206, i32 0, i32 0), i32 %26) #5
  %add.ptr63 = getelementptr inbounds i8, i8* %add.ptr60, i32 %call62
  %b_transform_8x8 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 51, i32 2
  %27 = load i32, i32* %b_transform_8x8, align 4, !tbaa !115
  %call65 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %add.ptr63, i8* nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.207, i32 0, i32 0), i32 %27) #5
  %add.ptr66 = getelementptr inbounds i8, i8* %add.ptr63, i32 %call65
  %i_cqm_preset = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 36
  %28 = load i32, i32* %i_cqm_preset, align 8, !tbaa !119
  %call67 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %add.ptr66, i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.208, i32 0, i32 0), i32 %28) #5
  %add.ptr68 = getelementptr inbounds i8, i8* %add.ptr66, i32 %call67
  %arrayidx70 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 51, i32 23, i32 0
  %29 = load i32, i32* %arrayidx70, align 4, !tbaa !2
  %arrayidx73 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 51, i32 23, i32 1
  %30 = load i32, i32* %arrayidx73, align 4, !tbaa !2
  %call74 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %add.ptr68, i8* nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.209, i32 0, i32 0), i32 %29, i32 %30) #5
  %add.ptr75 = getelementptr inbounds i8, i8* %add.ptr68, i32 %call74
  %b_fast_pskip = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 51, i32 15
  %31 = load i32, i32* %b_fast_pskip, align 4, !tbaa !111
  %call77 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %add.ptr75, i8* nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.210, i32 0, i32 0), i32 %31) #5
  %add.ptr78 = getelementptr inbounds i8, i8* %add.ptr75, i32 %call77
  %i_chroma_qp_offset = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 51, i32 6
  %32 = load i32, i32* %i_chroma_qp_offset, align 4, !tbaa !110
  %call80 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %add.ptr78, i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.211, i32 0, i32 0), i32 %32) #5
  %add.ptr81 = getelementptr inbounds i8, i8* %add.ptr78, i32 %call80
  %i_threads = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 1
  %33 = load i32, i32* %i_threads, align 4, !tbaa !31
  %call82 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %add.ptr81, i8* nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.212, i32 0, i32 0), i32 %33) #5
  %add.ptr83 = getelementptr inbounds i8, i8* %add.ptr81, i32 %call82
  %i_lookahead_threads = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 2
  %34 = load i32, i32* %i_lookahead_threads, align 8, !tbaa !32
  %call84 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %add.ptr83, i8* nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str.213, i32 0, i32 0), i32 %34) #5
  %add.ptr85 = getelementptr inbounds i8, i8* %add.ptr83, i32 %call84
  %b_sliced_threads = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 3
  %35 = load i32, i32* %b_sliced_threads, align 4, !tbaa !132
  %call86 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %add.ptr85, i8* nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.214, i32 0, i32 0), i32 %35) #5
  %add.ptr87 = getelementptr inbounds i8, i8* %add.ptr85, i32 %call86
  %i_slice_count = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 79
  %36 = load i32, i32* %i_slice_count, align 4, !tbaa !52
  %tobool88 = icmp eq i32 %36, 0
  br i1 %tobool88, label %if.end93, label %if.then89

if.then89:                                        ; preds = %if.end51
  %call91 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %add.ptr87, i8* nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.215, i32 0, i32 0), i32 %36) #5
  %add.ptr92 = getelementptr inbounds i8, i8* %add.ptr87, i32 %call91
  br label %if.end93

if.end93:                                         ; preds = %if.end51, %if.then89
  %s.3 = phi i8* [ %add.ptr92, %if.then89 ], [ %add.ptr87, %if.end51 ]
  %i_slice_count_max = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 80
  %37 = load i32, i32* %i_slice_count_max, align 8, !tbaa !147
  %tobool94 = icmp eq i32 %37, 0
  br i1 %tobool94, label %if.end99, label %if.then95

if.then95:                                        ; preds = %if.end93
  %call97 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %s.3, i8* nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.216, i32 0, i32 0), i32 %37) #5
  %add.ptr98 = getelementptr inbounds i8, i8* %s.3, i32 %call97
  br label %if.end99

if.end99:                                         ; preds = %if.end93, %if.then95
  %s.4 = phi i8* [ %add.ptr98, %if.then95 ], [ %s.3, %if.end93 ]
  %i_slice_max_size = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 76
  %38 = load i32, i32* %i_slice_max_size, align 8, !tbaa !50
  %tobool100 = icmp eq i32 %38, 0
  br i1 %tobool100, label %if.end105, label %if.then101

if.then101:                                       ; preds = %if.end99
  %call103 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %s.4, i8* nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.217, i32 0, i32 0), i32 %38) #5
  %add.ptr104 = getelementptr inbounds i8, i8* %s.4, i32 %call103
  br label %if.end105

if.end105:                                        ; preds = %if.end99, %if.then101
  %s.5 = phi i8* [ %add.ptr104, %if.then101 ], [ %s.4, %if.end99 ]
  %i_slice_max_mbs = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 77
  %39 = load i32, i32* %i_slice_max_mbs, align 4, !tbaa !51
  %tobool106 = icmp eq i32 %39, 0
  br i1 %tobool106, label %if.end111, label %if.then107

if.then107:                                       ; preds = %if.end105
  %call109 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %s.5, i8* nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.218, i32 0, i32 0), i32 %39) #5
  %add.ptr110 = getelementptr inbounds i8, i8* %s.5, i32 %call109
  br label %if.end111

if.end111:                                        ; preds = %if.end105, %if.then107
  %s.6 = phi i8* [ %add.ptr110, %if.then107 ], [ %s.5, %if.end105 ]
  %i_slice_min_mbs = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 78
  %40 = load i32, i32* %i_slice_min_mbs, align 8, !tbaa !146
  %tobool112 = icmp eq i32 %40, 0
  br i1 %tobool112, label %if.end117, label %if.then113

if.then113:                                       ; preds = %if.end111
  %call115 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %s.6, i8* nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.219, i32 0, i32 0), i32 %40) #5
  %add.ptr116 = getelementptr inbounds i8, i8* %s.6, i32 %call115
  br label %if.end117

if.end117:                                        ; preds = %if.end111, %if.then113
  %s.7 = phi i8* [ %add.ptr116, %if.then113 ], [ %s.6, %if.end111 ]
  %i_noise_reduction = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 51, i32 17
  %41 = load i32, i32* %i_noise_reduction, align 4, !tbaa !149
  %call119 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %s.7, i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.220, i32 0, i32 0), i32 %41) #5
  %add.ptr120 = getelementptr inbounds i8, i8* %s.7, i32 %call119
  %b_dct_decimate = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 51, i32 16
  %42 = load i32, i32* %b_dct_decimate, align 4, !tbaa !114
  %call122 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %add.ptr120, i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.221, i32 0, i32 0), i32 %42) #5
  %add.ptr123 = getelementptr inbounds i8, i8* %add.ptr120, i32 %call122
  %b_interlaced = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 34
  %43 = load i32, i32* %b_interlaced, align 8, !tbaa !62
  %tobool124 = icmp eq i32 %43, 0
  br i1 %tobool124, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end117
  %b_tff = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 68
  %44 = load i32, i32* %b_tff, align 8, !tbaa !125
  %tobool125 = icmp eq i32 %44, 0
  %cond = select i1 %tobool125, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.82, i32 0, i32 0)
  br label %cond.end

cond.false:                                       ; preds = %if.end117
  %b_fake_interlaced = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 70
  %45 = load i32, i32* %b_fake_interlaced, align 8, !tbaa !127
  %tobool126 = icmp eq i32 %45, 0
  %cond127 = select i1 %tobool126, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.224, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.223, i32 0, i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond128 = phi i8* [ %cond, %cond.true ], [ %cond127, %cond.false ]
  %call129 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %add.ptr123, i8* nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.222, i32 0, i32 0), i8* %cond128) #5
  %add.ptr130 = getelementptr inbounds i8, i8* %add.ptr123, i32 %call129
  %b_bluray_compat = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 26
  %46 = load i32, i32* %b_bluray_compat, align 8, !tbaa !140
  %call131 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %add.ptr130, i8* nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.225, i32 0, i32 0), i32 %46) #5
  %add.ptr132 = getelementptr inbounds i8, i8* %add.ptr130, i32 %call131
  %b_stitchable = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 71
  %47 = load i32, i32* %b_stitchable, align 4, !tbaa !154
  %tobool133 = icmp eq i32 %47, 0
  br i1 %tobool133, label %if.end138, label %if.then134

if.then134:                                       ; preds = %cond.end
  %call136 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %add.ptr132, i8* nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.226, i32 0, i32 0), i32 %47) #5
  %add.ptr137 = getelementptr inbounds i8, i8* %add.ptr132, i32 %call136
  br label %if.end138

if.end138:                                        ; preds = %cond.end, %if.then134
  %s.8 = phi i8* [ %add.ptr137, %if.then134 ], [ %add.ptr132, %cond.end ]
  %b_constrained_intra = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 35
  %48 = load i32, i32* %b_constrained_intra, align 4, !tbaa !63
  %call139 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %s.8, i8* nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str.227, i32 0, i32 0), i32 %48) #5
  %add.ptr140 = getelementptr inbounds i8, i8* %s.8, i32 %call139
  %i_bframe = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 21
  %49 = load i32, i32* %i_bframe, align 4, !tbaa !57
  %call141 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %add.ptr140, i8* nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.228, i32 0, i32 0), i32 %49) #5
  %add.ptr142 = getelementptr inbounds i8, i8* %add.ptr140, i32 %call141
  %50 = load i32, i32* %i_bframe, align 4, !tbaa !57
  %tobool144 = icmp eq i32 %50, 0
  br i1 %tobool144, label %if.end150, label %if.then145

if.then145:                                       ; preds = %if.end138
  %i_bframe_pyramid = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 24
  %51 = load i32, i32* %i_bframe_pyramid, align 8, !tbaa !61
  %i_bframe_adaptive = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 22
  %52 = load i32, i32* %i_bframe_adaptive, align 8, !tbaa !59
  %i_bframe_bias = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 23
  %53 = load i32, i32* %i_bframe_bias, align 4, !tbaa !60
  %i_direct_mv_pred = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 51, i32 5
  %54 = load i32, i32* %i_direct_mv_pred, align 4, !tbaa !99
  %b_weighted_bipred = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 51, i32 4
  %55 = load i32, i32* %b_weighted_bipred, align 4, !tbaa !112
  %b_open_gop = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 25
  %56 = load i32, i32* %b_open_gop, align 4, !tbaa !145
  %call148 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %add.ptr142, i8* nonnull dereferenceable(1) getelementptr inbounds ([68 x i8], [68 x i8]* @.str.229, i32 0, i32 0), i32 %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56) #5
  %add.ptr149 = getelementptr inbounds i8, i8* %add.ptr142, i32 %call148
  br label %if.end150

if.end150:                                        ; preds = %if.end138, %if.then145
  %s.9 = phi i8* [ %add.ptr149, %if.then145 ], [ %add.ptr142, %if.end138 ]
  %i_weighted_pred = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 51, i32 3
  %57 = load i32, i32* %i_weighted_pred, align 4, !tbaa !113
  %cmp = icmp sgt i32 %57, 0
  %spec.select = select i1 %cmp, i32 %57, i32 0
  %call159 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %s.9, i8* nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.230, i32 0, i32 0), i32 %spec.select) #5
  %add.ptr160 = getelementptr inbounds i8, i8* %s.9, i32 %call159
  %i_keyint_max = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 17
  %58 = load i32, i32* %i_keyint_max, align 4, !tbaa !55
  %cmp161 = icmp eq i32 %58, 1073741824
  br i1 %cmp161, label %if.then163, label %if.else

if.then163:                                       ; preds = %if.end150
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 dereferenceable(17) %add.ptr160, i8* nonnull align 1 dereferenceable(17) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.231, i32 0, i32 0), i32 17, i1 false)
  br label %if.end169

if.else:                                          ; preds = %if.end150
  %call167 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %add.ptr160, i8* nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.232, i32 0, i32 0), i32 %58) #5
  br label %if.end169

if.end169:                                        ; preds = %if.else, %if.then163
  %call164.pn = phi i32 [ 16, %if.then163 ], [ %call167, %if.else ]
  %s.10 = getelementptr inbounds i8, i8* %add.ptr160, i32 %call164.pn
  %i_keyint_min = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 18
  %59 = load i32, i32* %i_keyint_min, align 8, !tbaa !56
  %i_scenecut_threshold = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 19
  %60 = load i32, i32* %i_scenecut_threshold, align 4, !tbaa !58
  %b_intra_refresh = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 20
  %61 = load i32, i32* %b_intra_refresh, align 8, !tbaa !144
  %call170 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %s.10, i8* nonnull dereferenceable(1) getelementptr inbounds ([44 x i8], [44 x i8]* @.str.233, i32 0, i32 0), i32 %59, i32 %60, i32 %61) #5
  %add.ptr171 = getelementptr inbounds i8, i8* %s.10, i32 %call170
  %b_mb_tree = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 17
  %62 = load i32, i32* %b_mb_tree, align 4, !tbaa !93
  %tobool173 = icmp eq i32 %62, 0
  br i1 %tobool173, label %lor.lhs.false, label %if.then176

lor.lhs.false:                                    ; preds = %if.end169
  %i_vbv_buffer_size = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 10
  %63 = load i32, i32* %i_vbv_buffer_size, align 8, !tbaa !73
  %tobool175 = icmp eq i32 %63, 0
  br i1 %tobool175, label %if.end180, label %if.then176

if.then176:                                       ; preds = %lor.lhs.false, %if.end169
  %i_lookahead = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 18
  %64 = load i32, i32* %i_lookahead, align 8, !tbaa !84
  %call178 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %add.ptr171, i8* nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.234, i32 0, i32 0), i32 %64) #5
  %add.ptr179 = getelementptr inbounds i8, i8* %add.ptr171, i32 %call178
  br label %if.end180

if.end180:                                        ; preds = %lor.lhs.false, %if.then176
  %s.11 = phi i8* [ %add.ptr179, %if.then176 ], [ %add.ptr171, %lor.lhs.false ]
  %i_rc_method = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 0
  %65 = load i32, i32* %i_rc_method, align 8, !tbaa !69
  %cmp182 = icmp eq i32 %65, 2
  br i1 %cmp182, label %cond.true184, label %cond.false196

cond.true184:                                     ; preds = %if.end180
  %b_stat_read = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 21
  %66 = load i32, i32* %b_stat_read, align 4, !tbaa !87
  %tobool186 = icmp eq i32 %66, 0
  br i1 %tobool186, label %cond.false188, label %cond.end202

cond.false188:                                    ; preds = %cond.true184
  %i_vbv_max_bitrate = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 9
  %67 = load i32, i32* %i_vbv_max_bitrate, align 4, !tbaa !72
  %i_bitrate = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 5
  %68 = load i32, i32* %i_bitrate, align 4, !tbaa !70
  %cmp191 = icmp eq i32 %67, %68
  %cond193 = select i1 %cmp191, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.237, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.238, i32 0, i32 0)
  br label %cond.end202

cond.false196:                                    ; preds = %if.end180
  %cmp199 = icmp eq i32 %65, 1
  %cond201 = select i1 %cmp199, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.239, i32 0, i32 0)
  br label %cond.end202

cond.end202:                                      ; preds = %cond.true184, %cond.false188, %cond.false196
  %cond203 = phi i8* [ %cond201, %cond.false196 ], [ %cond193, %cond.false188 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.236, i32 0, i32 0), %cond.true184 ]
  %69 = load i32, i32* %b_mb_tree, align 4, !tbaa !93
  %call206 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %s.11, i8* nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.235, i32 0, i32 0), i8* %cond203, i32 %69) #5
  %add.ptr207 = getelementptr inbounds i8, i8* %s.11, i32 %call206
  %70 = load i32, i32* %i_rc_method, align 8, !tbaa !69
  switch i32 %70, label %if.end284 [
    i32 0, label %if.then279
    i32 1, label %if.then222
    i32 2, label %if.else227
  ]

if.then222:                                       ; preds = %cond.end202
  %f_rf_constant = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 6
  %71 = load float, float* %f_rf_constant, align 8, !tbaa !76
  %conv224 = fpext float %71 to double
  %call225 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %add.ptr207, i8* nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.240, i32 0, i32 0), double %conv224) #5
  br label %if.end234

if.else227:                                       ; preds = %cond.end202
  %i_bitrate229 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 5
  %72 = load i32, i32* %i_bitrate229, align 4, !tbaa !70
  %f_rate_tolerance = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 8
  %73 = load float, float* %f_rate_tolerance, align 8, !tbaa !71
  %conv231 = fpext float %73 to double
  %call232 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %add.ptr207, i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @.str.241, i32 0, i32 0), i32 %72, double %conv231) #5
  br label %if.end234

if.end234:                                        ; preds = %if.else227, %if.then222
  %call225.pn = phi i32 [ %call225, %if.then222 ], [ %call232, %if.else227 ]
  %s.12 = getelementptr inbounds i8, i8* %add.ptr207, i32 %call225.pn
  %f_qcompress = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 23
  %74 = load float, float* %f_qcompress, align 4, !tbaa !89
  %conv236 = fpext float %74 to double
  %i_qp_min = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 2
  %75 = load i32, i32* %i_qp_min, align 8, !tbaa !77
  %i_qp_max = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 3
  %76 = load i32, i32* %i_qp_max, align 4, !tbaa !78
  %i_qp_step = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 4
  %77 = load i32, i32* %i_qp_step, align 8, !tbaa !79
  %call240 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %s.12, i8* nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @.str.242, i32 0, i32 0), double %conv236, i32 %75, i32 %76, i32 %77) #5
  %add.ptr241 = getelementptr inbounds i8, i8* %s.12, i32 %call240
  %b_stat_read243 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 21
  %78 = load i32, i32* %b_stat_read243, align 4, !tbaa !87
  %tobool244 = icmp eq i32 %78, 0
  br i1 %tobool244, label %if.end252, label %if.then245

if.then245:                                       ; preds = %if.end234
  %f_complexity_blur = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 25
  %79 = load float, float* %f_complexity_blur, align 4, !tbaa !91
  %conv247 = fpext float %79 to double
  %f_qblur = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 24
  %80 = load float, float* %f_qblur, align 8, !tbaa !90
  %conv249 = fpext float %80 to double
  %call250 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %add.ptr241, i8* nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str.243, i32 0, i32 0), double %conv247, double %conv249) #5
  %add.ptr251 = getelementptr inbounds i8, i8* %add.ptr241, i32 %call250
  br label %if.end252

if.end252:                                        ; preds = %if.end234, %if.then245
  %s.13 = phi i8* [ %add.ptr251, %if.then245 ], [ %add.ptr241, %if.end234 ]
  %i_vbv_buffer_size254 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 10
  %81 = load i32, i32* %i_vbv_buffer_size254, align 8, !tbaa !73
  %tobool255 = icmp eq i32 %81, 0
  br i1 %tobool255, label %if.end284, label %if.then256

if.then256:                                       ; preds = %if.end252
  %i_vbv_max_bitrate258 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 9
  %82 = load i32, i32* %i_vbv_max_bitrate258, align 4, !tbaa !72
  %call261 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %s.13, i8* nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @.str.244, i32 0, i32 0), i32 %82, i32 %81) #5
  %add.ptr262 = getelementptr inbounds i8, i8* %s.13, i32 %call261
  %83 = load i32, i32* %i_rc_method, align 8, !tbaa !69
  %cmp265 = icmp eq i32 %83, 1
  br i1 %cmp265, label %if.then267, label %if.end284

if.then267:                                       ; preds = %if.then256
  %f_rf_constant_max = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 7
  %84 = load float, float* %f_rf_constant_max, align 4, !tbaa !150
  %conv269 = fpext float %84 to double
  %call270 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %add.ptr262, i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.245, i32 0, i32 0), double %conv269) #5
  %add.ptr271 = getelementptr inbounds i8, i8* %add.ptr262, i32 %call270
  br label %if.end284

if.then279:                                       ; preds = %cond.end202
  %i_qp_constant = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 1
  %85 = load i32, i32* %i_qp_constant, align 4, !tbaa !75
  %call281 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %add.ptr207, i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.246, i32 0, i32 0), i32 %85) #5
  %add.ptr282 = getelementptr inbounds i8, i8* %add.ptr207, i32 %call281
  br label %if.end284

if.end284:                                        ; preds = %cond.end202, %if.end252, %if.then279, %if.then267, %if.then256
  %s.14 = phi i8* [ %add.ptr271, %if.then267 ], [ %add.ptr262, %if.then256 ], [ %s.13, %if.end252 ], [ %add.ptr282, %if.then279 ], [ %add.ptr207, %cond.end202 ]
  %i_vbv_buffer_size286 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 10
  %86 = load i32, i32* %i_vbv_buffer_size286, align 8, !tbaa !73
  %tobool287 = icmp eq i32 %86, 0
  br i1 %tobool287, label %if.end293, label %if.then288

if.then288:                                       ; preds = %if.end284
  %i_nal_hrd = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 13
  %87 = load i32, i32* %i_nal_hrd, align 4, !tbaa !124
  %arrayidx289 = getelementptr inbounds [4 x i8*], [4 x i8*]* @x264_nal_hrd_names, i32 0, i32 %87
  %88 = load i8*, i8** %arrayidx289, align 4, !tbaa !8
  %b_filler = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 14
  %89 = load i32, i32* %b_filler, align 8, !tbaa !153
  %call291 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %s.14, i8* nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str.247, i32 0, i32 0), i8* %88, i32 %89) #5
  %add.ptr292 = getelementptr inbounds i8, i8* %s.14, i32 %call291
  br label %if.end293

if.end293:                                        ; preds = %if.end284, %if.then288
  %s.15 = phi i8* [ %add.ptr292, %if.then288 ], [ %s.14, %if.end284 ]
  %i_left = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 53, i32 0
  %90 = load i32, i32* %i_left, align 4, !tbaa !160
  %i_top = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 53, i32 1
  %91 = load i32, i32* %i_top, align 4, !tbaa !161
  %or = or i32 %91, %90
  %i_right = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 53, i32 2
  %92 = load i32, i32* %i_right, align 4, !tbaa !162
  %or296 = or i32 %or, %92
  %i_bottom = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 53, i32 3
  %93 = load i32, i32* %i_bottom, align 4, !tbaa !163
  %or298 = or i32 %or296, %93
  %tobool299 = icmp eq i32 %or298, 0
  br i1 %tobool299, label %if.end311, label %if.then300

if.then300:                                       ; preds = %if.end293
  %call309 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %s.15, i8* nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @.str.248, i32 0, i32 0), i32 %90, i32 %91, i32 %92, i32 %93) #5
  %add.ptr310 = getelementptr inbounds i8, i8* %s.15, i32 %call309
  br label %if.end311

if.end311:                                        ; preds = %if.end293, %if.then300
  %s.16 = phi i8* [ %add.ptr310, %if.then300 ], [ %s.15, %if.end293 ]
  %b_mastering_display = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 55, i32 0
  %94 = load i32, i32* %b_mastering_display, align 8, !tbaa !141
  %tobool312 = icmp eq i32 %94, 0
  br i1 %tobool312, label %if.end326, label %if.then313

if.then313:                                       ; preds = %if.end311
  %i_green_x = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 55, i32 1
  %95 = load i32, i32* %i_green_x, align 4, !tbaa !164
  %i_green_y = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 55, i32 2
  %96 = load i32, i32* %i_green_y, align 8, !tbaa !165
  %i_blue_x = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 55, i32 3
  %97 = load i32, i32* %i_blue_x, align 4, !tbaa !166
  %i_blue_y = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 55, i32 4
  %98 = load i32, i32* %i_blue_y, align 8, !tbaa !167
  %i_red_x = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 55, i32 5
  %99 = load i32, i32* %i_red_x, align 4, !tbaa !168
  %i_red_y = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 55, i32 6
  %100 = load i32, i32* %i_red_y, align 8, !tbaa !169
  %i_white_x = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 55, i32 7
  %101 = load i32, i32* %i_white_x, align 4, !tbaa !170
  %i_white_y = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 55, i32 8
  %102 = load i32, i32* %i_white_y, align 8, !tbaa !171
  %i_display_max = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 55, i32 9
  %103 = load i64, i64* %i_display_max, align 8, !tbaa !172
  %i_display_min = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 55, i32 10
  %104 = load i64, i64* %i_display_min, align 8, !tbaa !173
  %call324 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %s.16, i8* nonnull dereferenceable(1) getelementptr inbounds ([65 x i8], [65 x i8]* @.str.249, i32 0, i32 0), i32 %95, i32 %96, i32 %97, i32 %98, i32 %99, i32 %100, i32 %101, i32 %102, i64 %103, i64 %104) #5
  %add.ptr325 = getelementptr inbounds i8, i8* %s.16, i32 %call324
  br label %if.end326

if.end326:                                        ; preds = %if.end311, %if.then313
  %s.17 = phi i8* [ %add.ptr325, %if.then313 ], [ %s.16, %if.end311 ]
  %b_cll = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 56, i32 0
  %105 = load i32, i32* %b_cll, align 8, !tbaa !142
  %tobool327 = icmp eq i32 %105, 0
  br i1 %tobool327, label %if.end333, label %if.then328

if.then328:                                       ; preds = %if.end326
  %i_max_cll = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 56, i32 1
  %106 = load i32, i32* %i_max_cll, align 4, !tbaa !174
  %i_max_fall = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 56, i32 2
  %107 = load i32, i32* %i_max_fall, align 8, !tbaa !175
  %call331 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %s.17, i8* nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.250, i32 0, i32 0), i32 %106, i32 %107) #5
  %add.ptr332 = getelementptr inbounds i8, i8* %s.17, i32 %call331
  br label %if.end333

if.end333:                                        ; preds = %if.end326, %if.then328
  %s.18 = phi i8* [ %add.ptr332, %if.then328 ], [ %s.17, %if.end326 ]
  %i_frame_packing = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 54
  %108 = load i32, i32* %i_frame_packing, align 4, !tbaa !128
  %cmp334 = icmp sgt i32 %108, -1
  br i1 %cmp334, label %if.then336, label %if.end340

if.then336:                                       ; preds = %if.end333
  %call338 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %s.18, i8* nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.251, i32 0, i32 0), i32 %108) #5
  %add.ptr339 = getelementptr inbounds i8, i8* %s.18, i32 %call338
  br label %if.end340

if.end340:                                        ; preds = %if.then336, %if.end333
  %s.19 = phi i8* [ %add.ptr339, %if.then336 ], [ %s.18, %if.end333 ]
  %109 = load i32, i32* %i_rc_method, align 8, !tbaa !69
  %cmp343 = icmp eq i32 %109, 0
  br i1 %cmp343, label %land.lhs.true, label %if.then349

land.lhs.true:                                    ; preds = %if.end340
  %i_qp_constant346 = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 1
  %110 = load i32, i32* %i_qp_constant346, align 4, !tbaa !75
  %cmp347 = icmp eq i32 %110, 0
  br i1 %cmp347, label %cleanup, label %if.then349

if.then349:                                       ; preds = %land.lhs.true, %if.end340
  %f_ip_factor = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 12
  %111 = load float, float* %f_ip_factor, align 8, !tbaa !80
  %conv351 = fpext float %111 to double
  %call352 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %s.19, i8* nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.252, i32 0, i32 0), double %conv351) #5
  %add.ptr353 = getelementptr inbounds i8, i8* %s.19, i32 %call352
  %112 = load i32, i32* %i_bframe, align 4, !tbaa !57
  %tobool355 = icmp eq i32 %112, 0
  br i1 %tobool355, label %if.end365, label %land.lhs.true356

land.lhs.true356:                                 ; preds = %if.then349
  %113 = load i32, i32* %b_mb_tree, align 4, !tbaa !93
  %tobool359 = icmp eq i32 %113, 0
  br i1 %tobool359, label %if.then360, label %if.end365

if.then360:                                       ; preds = %land.lhs.true356
  %f_pb_factor = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 13
  %114 = load float, float* %f_pb_factor, align 4, !tbaa !81
  %conv362 = fpext float %114 to double
  %call363 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %add.ptr353, i8* nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.253, i32 0, i32 0), double %conv362) #5
  %add.ptr364 = getelementptr inbounds i8, i8* %add.ptr353, i32 %call363
  br label %if.end365

if.end365:                                        ; preds = %land.lhs.true356, %if.then349, %if.then360
  %s.20 = phi i8* [ %add.ptr353, %land.lhs.true356 ], [ %add.ptr364, %if.then360 ], [ %add.ptr353, %if.then349 ]
  %i_aq_mode = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 15
  %115 = load i32, i32* %i_aq_mode, align 4, !tbaa !82
  %call367 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %s.20, i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.254, i32 0, i32 0), i32 %115) #5
  %add.ptr368 = getelementptr inbounds i8, i8* %s.20, i32 %call367
  %116 = load i32, i32* %i_aq_mode, align 4, !tbaa !82
  %tobool371 = icmp eq i32 %116, 0
  br i1 %tobool371, label %if.end377, label %if.then372

if.then372:                                       ; preds = %if.end365
  %f_aq_strength = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 16
  %117 = load float, float* %f_aq_strength, align 8, !tbaa !83
  %conv374 = fpext float %117 to double
  %call375 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %add.ptr368, i8* nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.255, i32 0, i32 0), double %conv374) #5
  %add.ptr376 = getelementptr inbounds i8, i8* %add.ptr368, i32 %call375
  br label %if.end377

if.end377:                                        ; preds = %if.end365, %if.then372
  %s.21 = phi i8* [ %add.ptr376, %if.then372 ], [ %add.ptr368, %if.end365 ]
  %118 = load i8*, i8** %psz_zones, align 8, !tbaa !151
  %tobool380 = icmp eq i8* %118, null
  br i1 %tobool380, label %if.else386, label %if.then381

if.then381:                                       ; preds = %if.end377
  %call384 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %s.21, i8* nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.256, i32 0, i32 0), i8* nonnull %118) #5
  br label %cleanup

if.else386:                                       ; preds = %if.end377
  %i_zones = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p, i32 0, i32 52, i32 27
  %119 = load i32, i32* %i_zones, align 4, !tbaa !92
  %tobool388 = icmp eq i32 %119, 0
  br i1 %tobool388, label %cleanup, label %if.then389

if.then389:                                       ; preds = %if.else386
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 dereferenceable(7) %s.21, i8* nonnull align 1 dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.257, i32 0, i32 0), i32 7, i1 false)
  br label %cleanup

cleanup:                                          ; preds = %if.then2.i, %if.then.i, %land.lhs.true, %if.then389, %if.then381, %if.else386
  %retval.0 = phi i8* [ %call.i, %if.else386 ], [ %call.i, %if.then381 ], [ %call.i, %if.then389 ], [ %call.i, %land.lhs.true ], [ null, %if.then.i ], [ null, %if.then2.i ]
  ret i8* %retval.0
}

; Function Attrs: argmemonly nofree nounwind readonly
declare dso_local i32 @strlen(i8* nocapture) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare dso_local i32 @sprintf(i8* noalias nocapture, i8* nocapture readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local i32 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #3

; Function Attrs: nofree nounwind readonly
declare dso_local i32 @strspn(i8* nocapture, i8* nocapture) local_unnamed_addr #8

; Function Attrs: nofree nounwind readonly
declare dso_local i32 @strcspn(i8* nocapture, i8* nocapture) local_unnamed_addr #8

; Function Attrs: nofree nounwind readonly
declare dso_local i32 @strncasecmp(i8* nocapture, i8* nocapture, i32) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare dso_local double @strtod(i8* readonly, i8** nocapture) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { nofree norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #3 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #7 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #8 = { nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #9 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #10 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #11 = { cold }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readonly }
attributes #14 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 (http://10.18.30.194:8888/compiler/compiler10.git 713ef477716300a9b04a1522e3fce445623444dc)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"long long", !4, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!4, !4, i64 0}
!11 = !{!12, !9, i64 940}
!12 = !{!"x264_param_t", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !3, i64 20, !3, i64 24, !3, i64 28, !3, i64 32, !3, i64 36, !3, i64 40, !3, i64 44, !3, i64 48, !3, i64 52, !13, i64 56, !3, i64 92, !3, i64 96, !3, i64 100, !3, i64 104, !3, i64 108, !3, i64 112, !3, i64 116, !3, i64 120, !3, i64 124, !3, i64 128, !3, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !3, i64 148, !3, i64 152, !3, i64 156, !3, i64 160, !3, i64 164, !3, i64 168, !3, i64 172, !3, i64 176, !9, i64 180, !4, i64 184, !4, i64 200, !4, i64 216, !4, i64 232, !4, i64 248, !4, i64 312, !4, i64 376, !4, i64 440, !9, i64 504, !9, i64 508, !3, i64 512, !3, i64 516, !9, i64 520, !14, i64 524, !16, i64 632, !17, i64 748, !3, i64 764, !18, i64 768, !19, i64 824, !3, i64 836, !3, i64 840, !3, i64 844, !3, i64 848, !3, i64 852, !3, i64 856, !3, i64 860, !3, i64 864, !3, i64 868, !3, i64 872, !3, i64 876, !3, i64 880, !3, i64 884, !3, i64 888, !3, i64 892, !3, i64 896, !3, i64 900, !9, i64 904, !9, i64 908, !3, i64 912, !3, i64 916, !3, i64 920, !3, i64 924, !3, i64 928, !9, i64 932, !9, i64 936, !9, i64 940}
!13 = !{!"", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !3, i64 20, !3, i64 24, !3, i64 28, !3, i64 32}
!14 = !{!"", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !3, i64 20, !3, i64 24, !3, i64 28, !3, i64 32, !3, i64 36, !3, i64 40, !3, i64 44, !3, i64 48, !3, i64 52, !3, i64 56, !3, i64 60, !3, i64 64, !3, i64 68, !15, i64 72, !15, i64 76, !3, i64 80, !3, i64 84, !3, i64 88, !4, i64 92, !3, i64 100, !3, i64 104}
!15 = !{!"float", !4, i64 0}
!16 = !{!"", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !3, i64 20, !15, i64 24, !15, i64 28, !15, i64 32, !3, i64 36, !3, i64 40, !15, i64 44, !15, i64 48, !15, i64 52, !3, i64 56, !3, i64 60, !15, i64 64, !3, i64 68, !3, i64 72, !3, i64 76, !9, i64 80, !3, i64 84, !9, i64 88, !15, i64 92, !15, i64 96, !15, i64 100, !9, i64 104, !3, i64 108, !9, i64 112}
!17 = !{!"", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12}
!18 = !{!"", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !3, i64 20, !3, i64 24, !3, i64 28, !3, i64 32, !7, i64 40, !7, i64 48}
!19 = !{!"", !3, i64 0, !3, i64 4, !3, i64 8}
!20 = !{!21, !3, i64 36}
!21 = !{!"x264_picture_t", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !7, i64 16, !7, i64 24, !9, i64 32, !22, i64 36, !23, i64 80, !25, i64 144, !26, i64 176, !9, i64 188}
!22 = !{!"x264_image_t", !3, i64 0, !3, i64 4, !4, i64 8, !4, i64 24}
!23 = !{!"x264_image_properties_t", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !24, i64 16, !24, i64 24, !4, i64 32, !24, i64 56}
!24 = !{!"double", !4, i64 0}
!25 = !{!"x264_hrd_t", !24, i64 0, !24, i64 8, !24, i64 16, !24, i64 24}
!26 = !{!"x264_sei_t", !3, i64 0, !9, i64 4, !9, i64 8}
!27 = !{!28, !3, i64 0}
!28 = !{!"", !3, i64 0, !4, i64 4, !4, i64 16}
!29 = !{!21, !3, i64 40}
!30 = !{!12, !3, i64 0}
!31 = !{!12, !3, i64 4}
!32 = !{!12, !3, i64 8}
!33 = !{!12, !3, i64 16}
!34 = !{!12, !3, i64 24}
!35 = !{!12, !3, i64 36}
!36 = !{!12, !3, i64 28}
!37 = !{!12, !3, i64 32}
!38 = !{!12, !3, i64 60}
!39 = !{!12, !3, i64 56}
!40 = !{!12, !3, i64 64}
!41 = !{!12, !3, i64 68}
!42 = !{!12, !3, i64 72}
!43 = !{!12, !3, i64 76}
!44 = !{!12, !3, i64 80}
!45 = !{!12, !3, i64 84}
!46 = !{!12, !3, i64 88}
!47 = !{!12, !3, i64 864}
!48 = !{!12, !3, i64 868}
!49 = !{!12, !3, i64 44}
!50 = !{!12, !3, i64 912}
!51 = !{!12, !3, i64 916}
!52 = !{!12, !3, i64 924}
!53 = !{!12, !3, i64 40}
!54 = !{!12, !3, i64 92}
!55 = !{!12, !3, i64 100}
!56 = !{!12, !3, i64 104}
!57 = !{!12, !3, i64 116}
!58 = !{!12, !3, i64 108}
!59 = !{!12, !3, i64 120}
!60 = !{!12, !3, i64 124}
!61 = !{!12, !3, i64 128}
!62 = !{!12, !3, i64 168}
!63 = !{!12, !3, i64 172}
!64 = !{!12, !3, i64 148}
!65 = !{!12, !3, i64 152}
!66 = !{!12, !3, i64 156}
!67 = !{!12, !3, i64 160}
!68 = !{!12, !3, i64 164}
!69 = !{!12, !3, i64 632}
!70 = !{!12, !3, i64 652}
!71 = !{!12, !15, i64 664}
!72 = !{!12, !3, i64 668}
!73 = !{!12, !3, i64 672}
!74 = !{!12, !15, i64 676}
!75 = !{!12, !3, i64 636}
!76 = !{!12, !15, i64 656}
!77 = !{!12, !3, i64 640}
!78 = !{!12, !3, i64 644}
!79 = !{!12, !3, i64 648}
!80 = !{!12, !15, i64 680}
!81 = !{!12, !15, i64 684}
!82 = !{!12, !3, i64 692}
!83 = !{!12, !15, i64 696}
!84 = !{!12, !3, i64 704}
!85 = !{!12, !3, i64 708}
!86 = !{!12, !9, i64 712}
!87 = !{!12, !3, i64 716}
!88 = !{!12, !9, i64 720}
!89 = !{!12, !15, i64 724}
!90 = !{!12, !15, i64 728}
!91 = !{!12, !15, i64 732}
!92 = !{!12, !3, i64 740}
!93 = !{!12, !3, i64 700}
!94 = !{!12, !9, i64 504}
!95 = !{!12, !9, i64 508}
!96 = !{!12, !3, i64 512}
!97 = !{!12, !3, i64 524}
!98 = !{!12, !3, i64 528}
!99 = !{!12, !3, i64 544}
!100 = !{!12, !3, i64 552}
!101 = !{!12, !15, i64 596}
!102 = !{!12, !3, i64 604}
!103 = !{!12, !15, i64 600}
!104 = !{!12, !3, i64 556}
!105 = !{!12, !3, i64 568}
!106 = !{!12, !3, i64 576}
!107 = !{!12, !3, i64 572}
!108 = !{!12, !3, i64 564}
!109 = !{!12, !3, i64 560}
!110 = !{!12, !3, i64 548}
!111 = !{!12, !3, i64 584}
!112 = !{!12, !3, i64 540}
!113 = !{!12, !3, i64 536}
!114 = !{!12, !3, i64 588}
!115 = !{!12, !3, i64 532}
!116 = !{!12, !3, i64 580}
!117 = !{!12, !3, i64 624}
!118 = !{!12, !3, i64 628}
!119 = !{!12, !3, i64 176}
!120 = !{!12, !3, i64 844}
!121 = !{!12, !3, i64 848}
!122 = !{!12, !3, i64 840}
!123 = !{!12, !3, i64 856}
!124 = !{!12, !3, i64 52}
!125 = !{!12, !3, i64 880}
!126 = !{!12, !3, i64 884}
!127 = !{!12, !3, i64 888}
!128 = !{!12, !3, i64 764}
!129 = !{!12, !3, i64 836}
!130 = !{!12, !3, i64 140}
!131 = !{!12, !3, i64 144}
!132 = !{!12, !3, i64 12}
!133 = !{!12, !9, i64 180}
!134 = !{!135, !135, i64 0}
!135 = !{!"short", !4, i64 0}
!136 = !{!137, !3, i64 4}
!137 = !{!"", !9, i64 0, !3, i64 4}
!138 = !{!137, !9, i64 0}
!139 = !{!12, !3, i64 20}
!140 = !{!12, !3, i64 136}
!141 = !{!12, !3, i64 768}
!142 = !{!12, !3, i64 824}
!143 = !{!12, !3, i64 96}
!144 = !{!12, !3, i64 112}
!145 = !{!12, !3, i64 132}
!146 = !{!12, !3, i64 920}
!147 = !{!12, !3, i64 928}
!148 = !{!12, !9, i64 520}
!149 = !{!12, !3, i64 592}
!150 = !{!12, !15, i64 660}
!151 = !{!12, !9, i64 744}
!152 = !{!12, !3, i64 852}
!153 = !{!12, !3, i64 688}
!154 = !{!12, !3, i64 892}
!155 = !{!12, !3, i64 896}
!156 = !{!12, !9, i64 908}
!157 = !{!12, !3, i64 900}
!158 = !{!12, !3, i64 872}
!159 = !{!12, !3, i64 876}
!160 = !{!12, !3, i64 748}
!161 = !{!12, !3, i64 752}
!162 = !{!12, !3, i64 756}
!163 = !{!12, !3, i64 760}
!164 = !{!12, !3, i64 772}
!165 = !{!12, !3, i64 776}
!166 = !{!12, !3, i64 780}
!167 = !{!12, !3, i64 784}
!168 = !{!12, !3, i64 788}
!169 = !{!12, !3, i64 792}
!170 = !{!12, !3, i64 796}
!171 = !{!12, !3, i64 800}
!172 = !{!12, !7, i64 808}
!173 = !{!12, !7, i64 816}
!174 = !{!12, !3, i64 828}
!175 = !{!12, !3, i64 832}
