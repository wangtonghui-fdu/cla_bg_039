target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

declare float @llvm.fabs.f32(float  %Val)

declare i32 @dbg_output(i8* %base, i32 %num, i32 %wid)


; Function Attrs: noinline nounwind optnone
define dso_local i32 @main() #0 {
entry:
  %a = alloca float, align 4
  %b = alloca float, align 4
  store volatile float 0x40C1858FC0000000, float* %a, align 4
  store volatile float 0xC0C1858FC0000000, float* %b, align 4
  %0 = load volatile float, float* %a, align 4
  %1 = load volatile float, float* %b, align 4
  %c = call float @llvm.fabs.f32(float %0)
  %d = call float @llvm.fabs.f32(float %1)
  store float %c, float* %a, align 4
  store float %d, float* %b, align 4
  %p1 = bitcast float* %a to i8*
  %p2 = bitcast float* %b to i8*
  %call = notail call i32 @dbg_output(i8* %p1, i32 1, i32 4)
  %call1 = notail call i32 @dbg_output(i8* %p2, i32 1, i32 4)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 (http://10.18.30.194:8888/compiler/compiler10.git 713ef477716300a9b04a1522e3fce445623444dc)"}
