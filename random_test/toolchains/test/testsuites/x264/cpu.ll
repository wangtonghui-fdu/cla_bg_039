; ModuleID = 'common/cpu.c'
source_filename = "common/cpu.c"
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

%struct.x264_cpu_name_t = type { i8*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"MMX2\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"MMXEXT\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"SSE\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"SSE2Slow\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"SSE2\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"SSE2Fast\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"LZCNT\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"SSE3\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"SSSE3\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"SSE4.1\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"SSE4\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"SSE4.2\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"AVX\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"XOP\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"FMA4\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"FMA3\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"BMI1\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"BMI2\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"AVX2\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"AVX512\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"Cache32\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"Cache64\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"SlowAtom\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"SlowPshufb\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"SlowPalignr\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"SlowShuffle\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"UnalignedStack\00", align 1
@.str.27 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@x264_cpu_names = hidden local_unnamed_addr constant [28 x %struct.x264_cpu_name_t] [%struct.x264_cpu_name_t { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 3 }, %struct.x264_cpu_name_t { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 3 }, %struct.x264_cpu_name_t { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 7 }, %struct.x264_cpu_name_t { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 524303 }, %struct.x264_cpu_name_t { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 15 }, %struct.x264_cpu_name_t { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i32 1048591 }, %struct.x264_cpu_name_t { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 31 }, %struct.x264_cpu_name_t { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 47 }, %struct.x264_cpu_name_t { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 111 }, %struct.x264_cpu_name_t { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i32 239 }, %struct.x264_cpu_name_t { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 239 }, %struct.x264_cpu_name_t { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 495 }, %struct.x264_cpu_name_t { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i32 1007 }, %struct.x264_cpu_name_t { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i32 2031 }, %struct.x264_cpu_name_t { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 3055 }, %struct.x264_cpu_name_t { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i32 5103 }, %struct.x264_cpu_name_t { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i32 9215 }, %struct.x264_cpu_name_t { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i32 25599 }, %struct.x264_cpu_name_t { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i32 62463 }, %struct.x264_cpu_name_t { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i32 127999 }, %struct.x264_cpu_name_t { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i32 131072 }, %struct.x264_cpu_name_t { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i32 262144 }, %struct.x264_cpu_name_t { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i32 8388608 }, %struct.x264_cpu_name_t { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i32 16777216 }, %struct.x264_cpu_name_t { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), i32 33554432 }, %struct.x264_cpu_name_t { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), i32 2097152 }, %struct.x264_cpu_name_t { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0), i32 4194304 }, %struct.x264_cpu_name_t { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.27, i32 0, i32 0), i32 0 }], align 4

; Function Attrs: norecurse nounwind readnone
define hidden i32 @x264_cpu_detect() local_unnamed_addr #0 {
entry:
  ret i32 0
}

; Function Attrs: norecurse nounwind readnone
define hidden i32 @x264_cpu_num_processors() local_unnamed_addr #0 {
entry:
  ret i32 1
}

attributes #0 = { norecurse nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 (http://10.18.30.194:8888/compiler/compiler10.git 713ef477716300a9b04a1522e3fce445623444dc)"}
