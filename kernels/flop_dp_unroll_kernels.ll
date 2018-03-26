; ModuleID = '/tmp/qt_temp.m11551'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024"
target triple = "spir64-unknown-unknown"

define cc76 void @scalar_dp_add_iter_128_unroll_64_kernel(double addrspace(1)* nocapture %a, double addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds double addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds double addrspace(1)* %b, i64 %2
  %.pre = load double addrspace(1)* %3, align 8, !tbaa !42
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi double [ %.pre, %0 ], [ %132, %5 ]
  %j.0378 = phi i32 [ 0, %0 ], [ %133, %5 ]
  %7 = load double addrspace(1)* %4, align 8, !tbaa !42
  %8 = fadd double %6, %7
  store double %8, double addrspace(1)* %3, align 8, !tbaa !42
  %9 = load double addrspace(1)* %4, align 8, !tbaa !42
  %10 = fadd double %8, %9
  store double %10, double addrspace(1)* %3, align 8, !tbaa !42
  %11 = load double addrspace(1)* %4, align 8, !tbaa !42
  %12 = fadd double %10, %11
  store double %12, double addrspace(1)* %3, align 8, !tbaa !42
  %13 = load double addrspace(1)* %4, align 8, !tbaa !42
  %14 = fadd double %12, %13
  store double %14, double addrspace(1)* %3, align 8, !tbaa !42
  %15 = load double addrspace(1)* %4, align 8, !tbaa !42
  %16 = fadd double %14, %15
  store double %16, double addrspace(1)* %3, align 8, !tbaa !42
  %17 = load double addrspace(1)* %4, align 8, !tbaa !42
  %18 = fadd double %16, %17
  store double %18, double addrspace(1)* %3, align 8, !tbaa !42
  %19 = load double addrspace(1)* %4, align 8, !tbaa !42
  %20 = fadd double %18, %19
  store double %20, double addrspace(1)* %3, align 8, !tbaa !42
  %21 = load double addrspace(1)* %4, align 8, !tbaa !42
  %22 = fadd double %20, %21
  store double %22, double addrspace(1)* %3, align 8, !tbaa !42
  %23 = load double addrspace(1)* %4, align 8, !tbaa !42
  %24 = fadd double %22, %23
  store double %24, double addrspace(1)* %3, align 8, !tbaa !42
  %25 = load double addrspace(1)* %4, align 8, !tbaa !42
  %26 = fadd double %24, %25
  store double %26, double addrspace(1)* %3, align 8, !tbaa !42
  %27 = load double addrspace(1)* %4, align 8, !tbaa !42
  %28 = fadd double %26, %27
  store double %28, double addrspace(1)* %3, align 8, !tbaa !42
  %29 = load double addrspace(1)* %4, align 8, !tbaa !42
  %30 = fadd double %28, %29
  store double %30, double addrspace(1)* %3, align 8, !tbaa !42
  %31 = load double addrspace(1)* %4, align 8, !tbaa !42
  %32 = fadd double %30, %31
  store double %32, double addrspace(1)* %3, align 8, !tbaa !42
  %33 = load double addrspace(1)* %4, align 8, !tbaa !42
  %34 = fadd double %32, %33
  store double %34, double addrspace(1)* %3, align 8, !tbaa !42
  %35 = load double addrspace(1)* %4, align 8, !tbaa !42
  %36 = fadd double %34, %35
  store double %36, double addrspace(1)* %3, align 8, !tbaa !42
  %37 = load double addrspace(1)* %4, align 8, !tbaa !42
  %38 = fadd double %36, %37
  store double %38, double addrspace(1)* %3, align 8, !tbaa !42
  %39 = load double addrspace(1)* %4, align 8, !tbaa !42
  %40 = fadd double %38, %39
  store double %40, double addrspace(1)* %3, align 8, !tbaa !42
  %41 = load double addrspace(1)* %4, align 8, !tbaa !42
  %42 = fadd double %40, %41
  store double %42, double addrspace(1)* %3, align 8, !tbaa !42
  %43 = load double addrspace(1)* %4, align 8, !tbaa !42
  %44 = fadd double %42, %43
  store double %44, double addrspace(1)* %3, align 8, !tbaa !42
  %45 = load double addrspace(1)* %4, align 8, !tbaa !42
  %46 = fadd double %44, %45
  store double %46, double addrspace(1)* %3, align 8, !tbaa !42
  %47 = load double addrspace(1)* %4, align 8, !tbaa !42
  %48 = fadd double %46, %47
  store double %48, double addrspace(1)* %3, align 8, !tbaa !42
  %49 = load double addrspace(1)* %4, align 8, !tbaa !42
  %50 = fadd double %48, %49
  store double %50, double addrspace(1)* %3, align 8, !tbaa !42
  %51 = load double addrspace(1)* %4, align 8, !tbaa !42
  %52 = fadd double %50, %51
  store double %52, double addrspace(1)* %3, align 8, !tbaa !42
  %53 = load double addrspace(1)* %4, align 8, !tbaa !42
  %54 = fadd double %52, %53
  store double %54, double addrspace(1)* %3, align 8, !tbaa !42
  %55 = load double addrspace(1)* %4, align 8, !tbaa !42
  %56 = fadd double %54, %55
  store double %56, double addrspace(1)* %3, align 8, !tbaa !42
  %57 = load double addrspace(1)* %4, align 8, !tbaa !42
  %58 = fadd double %56, %57
  store double %58, double addrspace(1)* %3, align 8, !tbaa !42
  %59 = load double addrspace(1)* %4, align 8, !tbaa !42
  %60 = fadd double %58, %59
  store double %60, double addrspace(1)* %3, align 8, !tbaa !42
  %61 = load double addrspace(1)* %4, align 8, !tbaa !42
  %62 = fadd double %60, %61
  store double %62, double addrspace(1)* %3, align 8, !tbaa !42
  %63 = load double addrspace(1)* %4, align 8, !tbaa !42
  %64 = fadd double %62, %63
  store double %64, double addrspace(1)* %3, align 8, !tbaa !42
  %65 = load double addrspace(1)* %4, align 8, !tbaa !42
  %66 = fadd double %64, %65
  store double %66, double addrspace(1)* %3, align 8, !tbaa !42
  %67 = load double addrspace(1)* %4, align 8, !tbaa !42
  %68 = fadd double %66, %67
  store double %68, double addrspace(1)* %3, align 8, !tbaa !42
  %69 = load double addrspace(1)* %4, align 8, !tbaa !42
  %70 = fadd double %68, %69
  store double %70, double addrspace(1)* %3, align 8, !tbaa !42
  %71 = load double addrspace(1)* %4, align 8, !tbaa !42
  %72 = fadd double %70, %71
  store double %72, double addrspace(1)* %3, align 8, !tbaa !42
  %73 = load double addrspace(1)* %4, align 8, !tbaa !42
  %74 = fadd double %72, %73
  store double %74, double addrspace(1)* %3, align 8, !tbaa !42
  %75 = load double addrspace(1)* %4, align 8, !tbaa !42
  %76 = fadd double %74, %75
  store double %76, double addrspace(1)* %3, align 8, !tbaa !42
  %77 = load double addrspace(1)* %4, align 8, !tbaa !42
  %78 = fadd double %76, %77
  store double %78, double addrspace(1)* %3, align 8, !tbaa !42
  %79 = load double addrspace(1)* %4, align 8, !tbaa !42
  %80 = fadd double %78, %79
  store double %80, double addrspace(1)* %3, align 8, !tbaa !42
  %81 = load double addrspace(1)* %4, align 8, !tbaa !42
  %82 = fadd double %80, %81
  store double %82, double addrspace(1)* %3, align 8, !tbaa !42
  %83 = load double addrspace(1)* %4, align 8, !tbaa !42
  %84 = fadd double %82, %83
  store double %84, double addrspace(1)* %3, align 8, !tbaa !42
  %85 = load double addrspace(1)* %4, align 8, !tbaa !42
  %86 = fadd double %84, %85
  store double %86, double addrspace(1)* %3, align 8, !tbaa !42
  %87 = load double addrspace(1)* %4, align 8, !tbaa !42
  %88 = fadd double %86, %87
  store double %88, double addrspace(1)* %3, align 8, !tbaa !42
  %89 = load double addrspace(1)* %4, align 8, !tbaa !42
  %90 = fadd double %88, %89
  store double %90, double addrspace(1)* %3, align 8, !tbaa !42
  %91 = load double addrspace(1)* %4, align 8, !tbaa !42
  %92 = fadd double %90, %91
  store double %92, double addrspace(1)* %3, align 8, !tbaa !42
  %93 = load double addrspace(1)* %4, align 8, !tbaa !42
  %94 = fadd double %92, %93
  store double %94, double addrspace(1)* %3, align 8, !tbaa !42
  %95 = load double addrspace(1)* %4, align 8, !tbaa !42
  %96 = fadd double %94, %95
  store double %96, double addrspace(1)* %3, align 8, !tbaa !42
  %97 = load double addrspace(1)* %4, align 8, !tbaa !42
  %98 = fadd double %96, %97
  store double %98, double addrspace(1)* %3, align 8, !tbaa !42
  %99 = load double addrspace(1)* %4, align 8, !tbaa !42
  %100 = fadd double %98, %99
  store double %100, double addrspace(1)* %3, align 8, !tbaa !42
  %101 = load double addrspace(1)* %4, align 8, !tbaa !42
  %102 = fadd double %100, %101
  store double %102, double addrspace(1)* %3, align 8, !tbaa !42
  %103 = load double addrspace(1)* %4, align 8, !tbaa !42
  %104 = fadd double %102, %103
  store double %104, double addrspace(1)* %3, align 8, !tbaa !42
  %105 = load double addrspace(1)* %4, align 8, !tbaa !42
  %106 = fadd double %104, %105
  store double %106, double addrspace(1)* %3, align 8, !tbaa !42
  %107 = load double addrspace(1)* %4, align 8, !tbaa !42
  %108 = fadd double %106, %107
  store double %108, double addrspace(1)* %3, align 8, !tbaa !42
  %109 = load double addrspace(1)* %4, align 8, !tbaa !42
  %110 = fadd double %108, %109
  store double %110, double addrspace(1)* %3, align 8, !tbaa !42
  %111 = load double addrspace(1)* %4, align 8, !tbaa !42
  %112 = fadd double %110, %111
  store double %112, double addrspace(1)* %3, align 8, !tbaa !42
  %113 = load double addrspace(1)* %4, align 8, !tbaa !42
  %114 = fadd double %112, %113
  store double %114, double addrspace(1)* %3, align 8, !tbaa !42
  %115 = load double addrspace(1)* %4, align 8, !tbaa !42
  %116 = fadd double %114, %115
  store double %116, double addrspace(1)* %3, align 8, !tbaa !42
  %117 = load double addrspace(1)* %4, align 8, !tbaa !42
  %118 = fadd double %116, %117
  store double %118, double addrspace(1)* %3, align 8, !tbaa !42
  %119 = load double addrspace(1)* %4, align 8, !tbaa !42
  %120 = fadd double %118, %119
  store double %120, double addrspace(1)* %3, align 8, !tbaa !42
  %121 = load double addrspace(1)* %4, align 8, !tbaa !42
  %122 = fadd double %120, %121
  store double %122, double addrspace(1)* %3, align 8, !tbaa !42
  %123 = load double addrspace(1)* %4, align 8, !tbaa !42
  %124 = fadd double %122, %123
  store double %124, double addrspace(1)* %3, align 8, !tbaa !42
  %125 = load double addrspace(1)* %4, align 8, !tbaa !42
  %126 = fadd double %124, %125
  store double %126, double addrspace(1)* %3, align 8, !tbaa !42
  %127 = load double addrspace(1)* %4, align 8, !tbaa !42
  %128 = fadd double %126, %127
  store double %128, double addrspace(1)* %3, align 8, !tbaa !42
  %129 = load double addrspace(1)* %4, align 8, !tbaa !42
  %130 = fadd double %128, %129
  store double %130, double addrspace(1)* %3, align 8, !tbaa !42
  %131 = load double addrspace(1)* %4, align 8, !tbaa !42
  %132 = fadd double %130, %131
  store double %132, double addrspace(1)* %3, align 8, !tbaa !42
  %133 = add nsw i32 %j.0378, 1
  %134 = icmp slt i32 %133, 128
  br i1 %134, label %5, label %135

; <label>:135                                     ; preds = %5
  ret void
}

declare cc75 i64 @_Z13get_global_idj(i32) nounwind readnone

define cc76 void @scalar_dp_sub_iter_128_unroll_64_kernel(double addrspace(1)* nocapture %a, double addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds double addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds double addrspace(1)* %b, i64 %2
  %.pre = load double addrspace(1)* %3, align 8, !tbaa !42
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi double [ %.pre, %0 ], [ %132, %5 ]
  %j.0378 = phi i32 [ 0, %0 ], [ %133, %5 ]
  %7 = load double addrspace(1)* %4, align 8, !tbaa !42
  %8 = fsub double %6, %7
  store double %8, double addrspace(1)* %3, align 8, !tbaa !42
  %9 = load double addrspace(1)* %4, align 8, !tbaa !42
  %10 = fsub double %8, %9
  store double %10, double addrspace(1)* %3, align 8, !tbaa !42
  %11 = load double addrspace(1)* %4, align 8, !tbaa !42
  %12 = fsub double %10, %11
  store double %12, double addrspace(1)* %3, align 8, !tbaa !42
  %13 = load double addrspace(1)* %4, align 8, !tbaa !42
  %14 = fsub double %12, %13
  store double %14, double addrspace(1)* %3, align 8, !tbaa !42
  %15 = load double addrspace(1)* %4, align 8, !tbaa !42
  %16 = fsub double %14, %15
  store double %16, double addrspace(1)* %3, align 8, !tbaa !42
  %17 = load double addrspace(1)* %4, align 8, !tbaa !42
  %18 = fsub double %16, %17
  store double %18, double addrspace(1)* %3, align 8, !tbaa !42
  %19 = load double addrspace(1)* %4, align 8, !tbaa !42
  %20 = fsub double %18, %19
  store double %20, double addrspace(1)* %3, align 8, !tbaa !42
  %21 = load double addrspace(1)* %4, align 8, !tbaa !42
  %22 = fsub double %20, %21
  store double %22, double addrspace(1)* %3, align 8, !tbaa !42
  %23 = load double addrspace(1)* %4, align 8, !tbaa !42
  %24 = fsub double %22, %23
  store double %24, double addrspace(1)* %3, align 8, !tbaa !42
  %25 = load double addrspace(1)* %4, align 8, !tbaa !42
  %26 = fsub double %24, %25
  store double %26, double addrspace(1)* %3, align 8, !tbaa !42
  %27 = load double addrspace(1)* %4, align 8, !tbaa !42
  %28 = fsub double %26, %27
  store double %28, double addrspace(1)* %3, align 8, !tbaa !42
  %29 = load double addrspace(1)* %4, align 8, !tbaa !42
  %30 = fsub double %28, %29
  store double %30, double addrspace(1)* %3, align 8, !tbaa !42
  %31 = load double addrspace(1)* %4, align 8, !tbaa !42
  %32 = fsub double %30, %31
  store double %32, double addrspace(1)* %3, align 8, !tbaa !42
  %33 = load double addrspace(1)* %4, align 8, !tbaa !42
  %34 = fsub double %32, %33
  store double %34, double addrspace(1)* %3, align 8, !tbaa !42
  %35 = load double addrspace(1)* %4, align 8, !tbaa !42
  %36 = fsub double %34, %35
  store double %36, double addrspace(1)* %3, align 8, !tbaa !42
  %37 = load double addrspace(1)* %4, align 8, !tbaa !42
  %38 = fsub double %36, %37
  store double %38, double addrspace(1)* %3, align 8, !tbaa !42
  %39 = load double addrspace(1)* %4, align 8, !tbaa !42
  %40 = fsub double %38, %39
  store double %40, double addrspace(1)* %3, align 8, !tbaa !42
  %41 = load double addrspace(1)* %4, align 8, !tbaa !42
  %42 = fsub double %40, %41
  store double %42, double addrspace(1)* %3, align 8, !tbaa !42
  %43 = load double addrspace(1)* %4, align 8, !tbaa !42
  %44 = fsub double %42, %43
  store double %44, double addrspace(1)* %3, align 8, !tbaa !42
  %45 = load double addrspace(1)* %4, align 8, !tbaa !42
  %46 = fsub double %44, %45
  store double %46, double addrspace(1)* %3, align 8, !tbaa !42
  %47 = load double addrspace(1)* %4, align 8, !tbaa !42
  %48 = fsub double %46, %47
  store double %48, double addrspace(1)* %3, align 8, !tbaa !42
  %49 = load double addrspace(1)* %4, align 8, !tbaa !42
  %50 = fsub double %48, %49
  store double %50, double addrspace(1)* %3, align 8, !tbaa !42
  %51 = load double addrspace(1)* %4, align 8, !tbaa !42
  %52 = fsub double %50, %51
  store double %52, double addrspace(1)* %3, align 8, !tbaa !42
  %53 = load double addrspace(1)* %4, align 8, !tbaa !42
  %54 = fsub double %52, %53
  store double %54, double addrspace(1)* %3, align 8, !tbaa !42
  %55 = load double addrspace(1)* %4, align 8, !tbaa !42
  %56 = fsub double %54, %55
  store double %56, double addrspace(1)* %3, align 8, !tbaa !42
  %57 = load double addrspace(1)* %4, align 8, !tbaa !42
  %58 = fsub double %56, %57
  store double %58, double addrspace(1)* %3, align 8, !tbaa !42
  %59 = load double addrspace(1)* %4, align 8, !tbaa !42
  %60 = fsub double %58, %59
  store double %60, double addrspace(1)* %3, align 8, !tbaa !42
  %61 = load double addrspace(1)* %4, align 8, !tbaa !42
  %62 = fsub double %60, %61
  store double %62, double addrspace(1)* %3, align 8, !tbaa !42
  %63 = load double addrspace(1)* %4, align 8, !tbaa !42
  %64 = fsub double %62, %63
  store double %64, double addrspace(1)* %3, align 8, !tbaa !42
  %65 = load double addrspace(1)* %4, align 8, !tbaa !42
  %66 = fsub double %64, %65
  store double %66, double addrspace(1)* %3, align 8, !tbaa !42
  %67 = load double addrspace(1)* %4, align 8, !tbaa !42
  %68 = fsub double %66, %67
  store double %68, double addrspace(1)* %3, align 8, !tbaa !42
  %69 = load double addrspace(1)* %4, align 8, !tbaa !42
  %70 = fsub double %68, %69
  store double %70, double addrspace(1)* %3, align 8, !tbaa !42
  %71 = load double addrspace(1)* %4, align 8, !tbaa !42
  %72 = fsub double %70, %71
  store double %72, double addrspace(1)* %3, align 8, !tbaa !42
  %73 = load double addrspace(1)* %4, align 8, !tbaa !42
  %74 = fsub double %72, %73
  store double %74, double addrspace(1)* %3, align 8, !tbaa !42
  %75 = load double addrspace(1)* %4, align 8, !tbaa !42
  %76 = fsub double %74, %75
  store double %76, double addrspace(1)* %3, align 8, !tbaa !42
  %77 = load double addrspace(1)* %4, align 8, !tbaa !42
  %78 = fsub double %76, %77
  store double %78, double addrspace(1)* %3, align 8, !tbaa !42
  %79 = load double addrspace(1)* %4, align 8, !tbaa !42
  %80 = fsub double %78, %79
  store double %80, double addrspace(1)* %3, align 8, !tbaa !42
  %81 = load double addrspace(1)* %4, align 8, !tbaa !42
  %82 = fsub double %80, %81
  store double %82, double addrspace(1)* %3, align 8, !tbaa !42
  %83 = load double addrspace(1)* %4, align 8, !tbaa !42
  %84 = fsub double %82, %83
  store double %84, double addrspace(1)* %3, align 8, !tbaa !42
  %85 = load double addrspace(1)* %4, align 8, !tbaa !42
  %86 = fsub double %84, %85
  store double %86, double addrspace(1)* %3, align 8, !tbaa !42
  %87 = load double addrspace(1)* %4, align 8, !tbaa !42
  %88 = fsub double %86, %87
  store double %88, double addrspace(1)* %3, align 8, !tbaa !42
  %89 = load double addrspace(1)* %4, align 8, !tbaa !42
  %90 = fsub double %88, %89
  store double %90, double addrspace(1)* %3, align 8, !tbaa !42
  %91 = load double addrspace(1)* %4, align 8, !tbaa !42
  %92 = fsub double %90, %91
  store double %92, double addrspace(1)* %3, align 8, !tbaa !42
  %93 = load double addrspace(1)* %4, align 8, !tbaa !42
  %94 = fsub double %92, %93
  store double %94, double addrspace(1)* %3, align 8, !tbaa !42
  %95 = load double addrspace(1)* %4, align 8, !tbaa !42
  %96 = fsub double %94, %95
  store double %96, double addrspace(1)* %3, align 8, !tbaa !42
  %97 = load double addrspace(1)* %4, align 8, !tbaa !42
  %98 = fsub double %96, %97
  store double %98, double addrspace(1)* %3, align 8, !tbaa !42
  %99 = load double addrspace(1)* %4, align 8, !tbaa !42
  %100 = fsub double %98, %99
  store double %100, double addrspace(1)* %3, align 8, !tbaa !42
  %101 = load double addrspace(1)* %4, align 8, !tbaa !42
  %102 = fsub double %100, %101
  store double %102, double addrspace(1)* %3, align 8, !tbaa !42
  %103 = load double addrspace(1)* %4, align 8, !tbaa !42
  %104 = fsub double %102, %103
  store double %104, double addrspace(1)* %3, align 8, !tbaa !42
  %105 = load double addrspace(1)* %4, align 8, !tbaa !42
  %106 = fsub double %104, %105
  store double %106, double addrspace(1)* %3, align 8, !tbaa !42
  %107 = load double addrspace(1)* %4, align 8, !tbaa !42
  %108 = fsub double %106, %107
  store double %108, double addrspace(1)* %3, align 8, !tbaa !42
  %109 = load double addrspace(1)* %4, align 8, !tbaa !42
  %110 = fsub double %108, %109
  store double %110, double addrspace(1)* %3, align 8, !tbaa !42
  %111 = load double addrspace(1)* %4, align 8, !tbaa !42
  %112 = fsub double %110, %111
  store double %112, double addrspace(1)* %3, align 8, !tbaa !42
  %113 = load double addrspace(1)* %4, align 8, !tbaa !42
  %114 = fsub double %112, %113
  store double %114, double addrspace(1)* %3, align 8, !tbaa !42
  %115 = load double addrspace(1)* %4, align 8, !tbaa !42
  %116 = fsub double %114, %115
  store double %116, double addrspace(1)* %3, align 8, !tbaa !42
  %117 = load double addrspace(1)* %4, align 8, !tbaa !42
  %118 = fsub double %116, %117
  store double %118, double addrspace(1)* %3, align 8, !tbaa !42
  %119 = load double addrspace(1)* %4, align 8, !tbaa !42
  %120 = fsub double %118, %119
  store double %120, double addrspace(1)* %3, align 8, !tbaa !42
  %121 = load double addrspace(1)* %4, align 8, !tbaa !42
  %122 = fsub double %120, %121
  store double %122, double addrspace(1)* %3, align 8, !tbaa !42
  %123 = load double addrspace(1)* %4, align 8, !tbaa !42
  %124 = fsub double %122, %123
  store double %124, double addrspace(1)* %3, align 8, !tbaa !42
  %125 = load double addrspace(1)* %4, align 8, !tbaa !42
  %126 = fsub double %124, %125
  store double %126, double addrspace(1)* %3, align 8, !tbaa !42
  %127 = load double addrspace(1)* %4, align 8, !tbaa !42
  %128 = fsub double %126, %127
  store double %128, double addrspace(1)* %3, align 8, !tbaa !42
  %129 = load double addrspace(1)* %4, align 8, !tbaa !42
  %130 = fsub double %128, %129
  store double %130, double addrspace(1)* %3, align 8, !tbaa !42
  %131 = load double addrspace(1)* %4, align 8, !tbaa !42
  %132 = fsub double %130, %131
  store double %132, double addrspace(1)* %3, align 8, !tbaa !42
  %133 = add nsw i32 %j.0378, 1
  %134 = icmp slt i32 %133, 128
  br i1 %134, label %5, label %135

; <label>:135                                     ; preds = %5
  ret void
}

define cc76 void @scalar_dp_mul_iter_128_unroll_64_kernel(double addrspace(1)* nocapture %a, double addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds double addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds double addrspace(1)* %b, i64 %2
  %.pre = load double addrspace(1)* %3, align 8, !tbaa !42
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi double [ %.pre, %0 ], [ %132, %5 ]
  %j.0378 = phi i32 [ 0, %0 ], [ %133, %5 ]
  %7 = load double addrspace(1)* %4, align 8, !tbaa !42
  %8 = fmul double %6, %7
  store double %8, double addrspace(1)* %3, align 8, !tbaa !42
  %9 = load double addrspace(1)* %4, align 8, !tbaa !42
  %10 = fmul double %8, %9
  store double %10, double addrspace(1)* %3, align 8, !tbaa !42
  %11 = load double addrspace(1)* %4, align 8, !tbaa !42
  %12 = fmul double %10, %11
  store double %12, double addrspace(1)* %3, align 8, !tbaa !42
  %13 = load double addrspace(1)* %4, align 8, !tbaa !42
  %14 = fmul double %12, %13
  store double %14, double addrspace(1)* %3, align 8, !tbaa !42
  %15 = load double addrspace(1)* %4, align 8, !tbaa !42
  %16 = fmul double %14, %15
  store double %16, double addrspace(1)* %3, align 8, !tbaa !42
  %17 = load double addrspace(1)* %4, align 8, !tbaa !42
  %18 = fmul double %16, %17
  store double %18, double addrspace(1)* %3, align 8, !tbaa !42
  %19 = load double addrspace(1)* %4, align 8, !tbaa !42
  %20 = fmul double %18, %19
  store double %20, double addrspace(1)* %3, align 8, !tbaa !42
  %21 = load double addrspace(1)* %4, align 8, !tbaa !42
  %22 = fmul double %20, %21
  store double %22, double addrspace(1)* %3, align 8, !tbaa !42
  %23 = load double addrspace(1)* %4, align 8, !tbaa !42
  %24 = fmul double %22, %23
  store double %24, double addrspace(1)* %3, align 8, !tbaa !42
  %25 = load double addrspace(1)* %4, align 8, !tbaa !42
  %26 = fmul double %24, %25
  store double %26, double addrspace(1)* %3, align 8, !tbaa !42
  %27 = load double addrspace(1)* %4, align 8, !tbaa !42
  %28 = fmul double %26, %27
  store double %28, double addrspace(1)* %3, align 8, !tbaa !42
  %29 = load double addrspace(1)* %4, align 8, !tbaa !42
  %30 = fmul double %28, %29
  store double %30, double addrspace(1)* %3, align 8, !tbaa !42
  %31 = load double addrspace(1)* %4, align 8, !tbaa !42
  %32 = fmul double %30, %31
  store double %32, double addrspace(1)* %3, align 8, !tbaa !42
  %33 = load double addrspace(1)* %4, align 8, !tbaa !42
  %34 = fmul double %32, %33
  store double %34, double addrspace(1)* %3, align 8, !tbaa !42
  %35 = load double addrspace(1)* %4, align 8, !tbaa !42
  %36 = fmul double %34, %35
  store double %36, double addrspace(1)* %3, align 8, !tbaa !42
  %37 = load double addrspace(1)* %4, align 8, !tbaa !42
  %38 = fmul double %36, %37
  store double %38, double addrspace(1)* %3, align 8, !tbaa !42
  %39 = load double addrspace(1)* %4, align 8, !tbaa !42
  %40 = fmul double %38, %39
  store double %40, double addrspace(1)* %3, align 8, !tbaa !42
  %41 = load double addrspace(1)* %4, align 8, !tbaa !42
  %42 = fmul double %40, %41
  store double %42, double addrspace(1)* %3, align 8, !tbaa !42
  %43 = load double addrspace(1)* %4, align 8, !tbaa !42
  %44 = fmul double %42, %43
  store double %44, double addrspace(1)* %3, align 8, !tbaa !42
  %45 = load double addrspace(1)* %4, align 8, !tbaa !42
  %46 = fmul double %44, %45
  store double %46, double addrspace(1)* %3, align 8, !tbaa !42
  %47 = load double addrspace(1)* %4, align 8, !tbaa !42
  %48 = fmul double %46, %47
  store double %48, double addrspace(1)* %3, align 8, !tbaa !42
  %49 = load double addrspace(1)* %4, align 8, !tbaa !42
  %50 = fmul double %48, %49
  store double %50, double addrspace(1)* %3, align 8, !tbaa !42
  %51 = load double addrspace(1)* %4, align 8, !tbaa !42
  %52 = fmul double %50, %51
  store double %52, double addrspace(1)* %3, align 8, !tbaa !42
  %53 = load double addrspace(1)* %4, align 8, !tbaa !42
  %54 = fmul double %52, %53
  store double %54, double addrspace(1)* %3, align 8, !tbaa !42
  %55 = load double addrspace(1)* %4, align 8, !tbaa !42
  %56 = fmul double %54, %55
  store double %56, double addrspace(1)* %3, align 8, !tbaa !42
  %57 = load double addrspace(1)* %4, align 8, !tbaa !42
  %58 = fmul double %56, %57
  store double %58, double addrspace(1)* %3, align 8, !tbaa !42
  %59 = load double addrspace(1)* %4, align 8, !tbaa !42
  %60 = fmul double %58, %59
  store double %60, double addrspace(1)* %3, align 8, !tbaa !42
  %61 = load double addrspace(1)* %4, align 8, !tbaa !42
  %62 = fmul double %60, %61
  store double %62, double addrspace(1)* %3, align 8, !tbaa !42
  %63 = load double addrspace(1)* %4, align 8, !tbaa !42
  %64 = fmul double %62, %63
  store double %64, double addrspace(1)* %3, align 8, !tbaa !42
  %65 = load double addrspace(1)* %4, align 8, !tbaa !42
  %66 = fmul double %64, %65
  store double %66, double addrspace(1)* %3, align 8, !tbaa !42
  %67 = load double addrspace(1)* %4, align 8, !tbaa !42
  %68 = fmul double %66, %67
  store double %68, double addrspace(1)* %3, align 8, !tbaa !42
  %69 = load double addrspace(1)* %4, align 8, !tbaa !42
  %70 = fmul double %68, %69
  store double %70, double addrspace(1)* %3, align 8, !tbaa !42
  %71 = load double addrspace(1)* %4, align 8, !tbaa !42
  %72 = fmul double %70, %71
  store double %72, double addrspace(1)* %3, align 8, !tbaa !42
  %73 = load double addrspace(1)* %4, align 8, !tbaa !42
  %74 = fmul double %72, %73
  store double %74, double addrspace(1)* %3, align 8, !tbaa !42
  %75 = load double addrspace(1)* %4, align 8, !tbaa !42
  %76 = fmul double %74, %75
  store double %76, double addrspace(1)* %3, align 8, !tbaa !42
  %77 = load double addrspace(1)* %4, align 8, !tbaa !42
  %78 = fmul double %76, %77
  store double %78, double addrspace(1)* %3, align 8, !tbaa !42
  %79 = load double addrspace(1)* %4, align 8, !tbaa !42
  %80 = fmul double %78, %79
  store double %80, double addrspace(1)* %3, align 8, !tbaa !42
  %81 = load double addrspace(1)* %4, align 8, !tbaa !42
  %82 = fmul double %80, %81
  store double %82, double addrspace(1)* %3, align 8, !tbaa !42
  %83 = load double addrspace(1)* %4, align 8, !tbaa !42
  %84 = fmul double %82, %83
  store double %84, double addrspace(1)* %3, align 8, !tbaa !42
  %85 = load double addrspace(1)* %4, align 8, !tbaa !42
  %86 = fmul double %84, %85
  store double %86, double addrspace(1)* %3, align 8, !tbaa !42
  %87 = load double addrspace(1)* %4, align 8, !tbaa !42
  %88 = fmul double %86, %87
  store double %88, double addrspace(1)* %3, align 8, !tbaa !42
  %89 = load double addrspace(1)* %4, align 8, !tbaa !42
  %90 = fmul double %88, %89
  store double %90, double addrspace(1)* %3, align 8, !tbaa !42
  %91 = load double addrspace(1)* %4, align 8, !tbaa !42
  %92 = fmul double %90, %91
  store double %92, double addrspace(1)* %3, align 8, !tbaa !42
  %93 = load double addrspace(1)* %4, align 8, !tbaa !42
  %94 = fmul double %92, %93
  store double %94, double addrspace(1)* %3, align 8, !tbaa !42
  %95 = load double addrspace(1)* %4, align 8, !tbaa !42
  %96 = fmul double %94, %95
  store double %96, double addrspace(1)* %3, align 8, !tbaa !42
  %97 = load double addrspace(1)* %4, align 8, !tbaa !42
  %98 = fmul double %96, %97
  store double %98, double addrspace(1)* %3, align 8, !tbaa !42
  %99 = load double addrspace(1)* %4, align 8, !tbaa !42
  %100 = fmul double %98, %99
  store double %100, double addrspace(1)* %3, align 8, !tbaa !42
  %101 = load double addrspace(1)* %4, align 8, !tbaa !42
  %102 = fmul double %100, %101
  store double %102, double addrspace(1)* %3, align 8, !tbaa !42
  %103 = load double addrspace(1)* %4, align 8, !tbaa !42
  %104 = fmul double %102, %103
  store double %104, double addrspace(1)* %3, align 8, !tbaa !42
  %105 = load double addrspace(1)* %4, align 8, !tbaa !42
  %106 = fmul double %104, %105
  store double %106, double addrspace(1)* %3, align 8, !tbaa !42
  %107 = load double addrspace(1)* %4, align 8, !tbaa !42
  %108 = fmul double %106, %107
  store double %108, double addrspace(1)* %3, align 8, !tbaa !42
  %109 = load double addrspace(1)* %4, align 8, !tbaa !42
  %110 = fmul double %108, %109
  store double %110, double addrspace(1)* %3, align 8, !tbaa !42
  %111 = load double addrspace(1)* %4, align 8, !tbaa !42
  %112 = fmul double %110, %111
  store double %112, double addrspace(1)* %3, align 8, !tbaa !42
  %113 = load double addrspace(1)* %4, align 8, !tbaa !42
  %114 = fmul double %112, %113
  store double %114, double addrspace(1)* %3, align 8, !tbaa !42
  %115 = load double addrspace(1)* %4, align 8, !tbaa !42
  %116 = fmul double %114, %115
  store double %116, double addrspace(1)* %3, align 8, !tbaa !42
  %117 = load double addrspace(1)* %4, align 8, !tbaa !42
  %118 = fmul double %116, %117
  store double %118, double addrspace(1)* %3, align 8, !tbaa !42
  %119 = load double addrspace(1)* %4, align 8, !tbaa !42
  %120 = fmul double %118, %119
  store double %120, double addrspace(1)* %3, align 8, !tbaa !42
  %121 = load double addrspace(1)* %4, align 8, !tbaa !42
  %122 = fmul double %120, %121
  store double %122, double addrspace(1)* %3, align 8, !tbaa !42
  %123 = load double addrspace(1)* %4, align 8, !tbaa !42
  %124 = fmul double %122, %123
  store double %124, double addrspace(1)* %3, align 8, !tbaa !42
  %125 = load double addrspace(1)* %4, align 8, !tbaa !42
  %126 = fmul double %124, %125
  store double %126, double addrspace(1)* %3, align 8, !tbaa !42
  %127 = load double addrspace(1)* %4, align 8, !tbaa !42
  %128 = fmul double %126, %127
  store double %128, double addrspace(1)* %3, align 8, !tbaa !42
  %129 = load double addrspace(1)* %4, align 8, !tbaa !42
  %130 = fmul double %128, %129
  store double %130, double addrspace(1)* %3, align 8, !tbaa !42
  %131 = load double addrspace(1)* %4, align 8, !tbaa !42
  %132 = fmul double %130, %131
  store double %132, double addrspace(1)* %3, align 8, !tbaa !42
  %133 = add nsw i32 %j.0378, 1
  %134 = icmp slt i32 %133, 128
  br i1 %134, label %5, label %135

; <label>:135                                     ; preds = %5
  ret void
}

define cc76 void @scalar_dp_div_iter_128_unroll_64_kernel(double addrspace(1)* nocapture %a, double addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds double addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds double addrspace(1)* %b, i64 %2
  %.pre = load double addrspace(1)* %3, align 8, !tbaa !42
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi double [ %.pre, %0 ], [ %132, %5 ]
  %j.0378 = phi i32 [ 0, %0 ], [ %133, %5 ]
  %7 = load double addrspace(1)* %4, align 8, !tbaa !42
  %8 = fdiv double %6, %7
  store double %8, double addrspace(1)* %3, align 8, !tbaa !42
  %9 = load double addrspace(1)* %4, align 8, !tbaa !42
  %10 = fdiv double %8, %9
  store double %10, double addrspace(1)* %3, align 8, !tbaa !42
  %11 = load double addrspace(1)* %4, align 8, !tbaa !42
  %12 = fdiv double %10, %11
  store double %12, double addrspace(1)* %3, align 8, !tbaa !42
  %13 = load double addrspace(1)* %4, align 8, !tbaa !42
  %14 = fdiv double %12, %13
  store double %14, double addrspace(1)* %3, align 8, !tbaa !42
  %15 = load double addrspace(1)* %4, align 8, !tbaa !42
  %16 = fdiv double %14, %15
  store double %16, double addrspace(1)* %3, align 8, !tbaa !42
  %17 = load double addrspace(1)* %4, align 8, !tbaa !42
  %18 = fdiv double %16, %17
  store double %18, double addrspace(1)* %3, align 8, !tbaa !42
  %19 = load double addrspace(1)* %4, align 8, !tbaa !42
  %20 = fdiv double %18, %19
  store double %20, double addrspace(1)* %3, align 8, !tbaa !42
  %21 = load double addrspace(1)* %4, align 8, !tbaa !42
  %22 = fdiv double %20, %21
  store double %22, double addrspace(1)* %3, align 8, !tbaa !42
  %23 = load double addrspace(1)* %4, align 8, !tbaa !42
  %24 = fdiv double %22, %23
  store double %24, double addrspace(1)* %3, align 8, !tbaa !42
  %25 = load double addrspace(1)* %4, align 8, !tbaa !42
  %26 = fdiv double %24, %25
  store double %26, double addrspace(1)* %3, align 8, !tbaa !42
  %27 = load double addrspace(1)* %4, align 8, !tbaa !42
  %28 = fdiv double %26, %27
  store double %28, double addrspace(1)* %3, align 8, !tbaa !42
  %29 = load double addrspace(1)* %4, align 8, !tbaa !42
  %30 = fdiv double %28, %29
  store double %30, double addrspace(1)* %3, align 8, !tbaa !42
  %31 = load double addrspace(1)* %4, align 8, !tbaa !42
  %32 = fdiv double %30, %31
  store double %32, double addrspace(1)* %3, align 8, !tbaa !42
  %33 = load double addrspace(1)* %4, align 8, !tbaa !42
  %34 = fdiv double %32, %33
  store double %34, double addrspace(1)* %3, align 8, !tbaa !42
  %35 = load double addrspace(1)* %4, align 8, !tbaa !42
  %36 = fdiv double %34, %35
  store double %36, double addrspace(1)* %3, align 8, !tbaa !42
  %37 = load double addrspace(1)* %4, align 8, !tbaa !42
  %38 = fdiv double %36, %37
  store double %38, double addrspace(1)* %3, align 8, !tbaa !42
  %39 = load double addrspace(1)* %4, align 8, !tbaa !42
  %40 = fdiv double %38, %39
  store double %40, double addrspace(1)* %3, align 8, !tbaa !42
  %41 = load double addrspace(1)* %4, align 8, !tbaa !42
  %42 = fdiv double %40, %41
  store double %42, double addrspace(1)* %3, align 8, !tbaa !42
  %43 = load double addrspace(1)* %4, align 8, !tbaa !42
  %44 = fdiv double %42, %43
  store double %44, double addrspace(1)* %3, align 8, !tbaa !42
  %45 = load double addrspace(1)* %4, align 8, !tbaa !42
  %46 = fdiv double %44, %45
  store double %46, double addrspace(1)* %3, align 8, !tbaa !42
  %47 = load double addrspace(1)* %4, align 8, !tbaa !42
  %48 = fdiv double %46, %47
  store double %48, double addrspace(1)* %3, align 8, !tbaa !42
  %49 = load double addrspace(1)* %4, align 8, !tbaa !42
  %50 = fdiv double %48, %49
  store double %50, double addrspace(1)* %3, align 8, !tbaa !42
  %51 = load double addrspace(1)* %4, align 8, !tbaa !42
  %52 = fdiv double %50, %51
  store double %52, double addrspace(1)* %3, align 8, !tbaa !42
  %53 = load double addrspace(1)* %4, align 8, !tbaa !42
  %54 = fdiv double %52, %53
  store double %54, double addrspace(1)* %3, align 8, !tbaa !42
  %55 = load double addrspace(1)* %4, align 8, !tbaa !42
  %56 = fdiv double %54, %55
  store double %56, double addrspace(1)* %3, align 8, !tbaa !42
  %57 = load double addrspace(1)* %4, align 8, !tbaa !42
  %58 = fdiv double %56, %57
  store double %58, double addrspace(1)* %3, align 8, !tbaa !42
  %59 = load double addrspace(1)* %4, align 8, !tbaa !42
  %60 = fdiv double %58, %59
  store double %60, double addrspace(1)* %3, align 8, !tbaa !42
  %61 = load double addrspace(1)* %4, align 8, !tbaa !42
  %62 = fdiv double %60, %61
  store double %62, double addrspace(1)* %3, align 8, !tbaa !42
  %63 = load double addrspace(1)* %4, align 8, !tbaa !42
  %64 = fdiv double %62, %63
  store double %64, double addrspace(1)* %3, align 8, !tbaa !42
  %65 = load double addrspace(1)* %4, align 8, !tbaa !42
  %66 = fdiv double %64, %65
  store double %66, double addrspace(1)* %3, align 8, !tbaa !42
  %67 = load double addrspace(1)* %4, align 8, !tbaa !42
  %68 = fdiv double %66, %67
  store double %68, double addrspace(1)* %3, align 8, !tbaa !42
  %69 = load double addrspace(1)* %4, align 8, !tbaa !42
  %70 = fdiv double %68, %69
  store double %70, double addrspace(1)* %3, align 8, !tbaa !42
  %71 = load double addrspace(1)* %4, align 8, !tbaa !42
  %72 = fdiv double %70, %71
  store double %72, double addrspace(1)* %3, align 8, !tbaa !42
  %73 = load double addrspace(1)* %4, align 8, !tbaa !42
  %74 = fdiv double %72, %73
  store double %74, double addrspace(1)* %3, align 8, !tbaa !42
  %75 = load double addrspace(1)* %4, align 8, !tbaa !42
  %76 = fdiv double %74, %75
  store double %76, double addrspace(1)* %3, align 8, !tbaa !42
  %77 = load double addrspace(1)* %4, align 8, !tbaa !42
  %78 = fdiv double %76, %77
  store double %78, double addrspace(1)* %3, align 8, !tbaa !42
  %79 = load double addrspace(1)* %4, align 8, !tbaa !42
  %80 = fdiv double %78, %79
  store double %80, double addrspace(1)* %3, align 8, !tbaa !42
  %81 = load double addrspace(1)* %4, align 8, !tbaa !42
  %82 = fdiv double %80, %81
  store double %82, double addrspace(1)* %3, align 8, !tbaa !42
  %83 = load double addrspace(1)* %4, align 8, !tbaa !42
  %84 = fdiv double %82, %83
  store double %84, double addrspace(1)* %3, align 8, !tbaa !42
  %85 = load double addrspace(1)* %4, align 8, !tbaa !42
  %86 = fdiv double %84, %85
  store double %86, double addrspace(1)* %3, align 8, !tbaa !42
  %87 = load double addrspace(1)* %4, align 8, !tbaa !42
  %88 = fdiv double %86, %87
  store double %88, double addrspace(1)* %3, align 8, !tbaa !42
  %89 = load double addrspace(1)* %4, align 8, !tbaa !42
  %90 = fdiv double %88, %89
  store double %90, double addrspace(1)* %3, align 8, !tbaa !42
  %91 = load double addrspace(1)* %4, align 8, !tbaa !42
  %92 = fdiv double %90, %91
  store double %92, double addrspace(1)* %3, align 8, !tbaa !42
  %93 = load double addrspace(1)* %4, align 8, !tbaa !42
  %94 = fdiv double %92, %93
  store double %94, double addrspace(1)* %3, align 8, !tbaa !42
  %95 = load double addrspace(1)* %4, align 8, !tbaa !42
  %96 = fdiv double %94, %95
  store double %96, double addrspace(1)* %3, align 8, !tbaa !42
  %97 = load double addrspace(1)* %4, align 8, !tbaa !42
  %98 = fdiv double %96, %97
  store double %98, double addrspace(1)* %3, align 8, !tbaa !42
  %99 = load double addrspace(1)* %4, align 8, !tbaa !42
  %100 = fdiv double %98, %99
  store double %100, double addrspace(1)* %3, align 8, !tbaa !42
  %101 = load double addrspace(1)* %4, align 8, !tbaa !42
  %102 = fdiv double %100, %101
  store double %102, double addrspace(1)* %3, align 8, !tbaa !42
  %103 = load double addrspace(1)* %4, align 8, !tbaa !42
  %104 = fdiv double %102, %103
  store double %104, double addrspace(1)* %3, align 8, !tbaa !42
  %105 = load double addrspace(1)* %4, align 8, !tbaa !42
  %106 = fdiv double %104, %105
  store double %106, double addrspace(1)* %3, align 8, !tbaa !42
  %107 = load double addrspace(1)* %4, align 8, !tbaa !42
  %108 = fdiv double %106, %107
  store double %108, double addrspace(1)* %3, align 8, !tbaa !42
  %109 = load double addrspace(1)* %4, align 8, !tbaa !42
  %110 = fdiv double %108, %109
  store double %110, double addrspace(1)* %3, align 8, !tbaa !42
  %111 = load double addrspace(1)* %4, align 8, !tbaa !42
  %112 = fdiv double %110, %111
  store double %112, double addrspace(1)* %3, align 8, !tbaa !42
  %113 = load double addrspace(1)* %4, align 8, !tbaa !42
  %114 = fdiv double %112, %113
  store double %114, double addrspace(1)* %3, align 8, !tbaa !42
  %115 = load double addrspace(1)* %4, align 8, !tbaa !42
  %116 = fdiv double %114, %115
  store double %116, double addrspace(1)* %3, align 8, !tbaa !42
  %117 = load double addrspace(1)* %4, align 8, !tbaa !42
  %118 = fdiv double %116, %117
  store double %118, double addrspace(1)* %3, align 8, !tbaa !42
  %119 = load double addrspace(1)* %4, align 8, !tbaa !42
  %120 = fdiv double %118, %119
  store double %120, double addrspace(1)* %3, align 8, !tbaa !42
  %121 = load double addrspace(1)* %4, align 8, !tbaa !42
  %122 = fdiv double %120, %121
  store double %122, double addrspace(1)* %3, align 8, !tbaa !42
  %123 = load double addrspace(1)* %4, align 8, !tbaa !42
  %124 = fdiv double %122, %123
  store double %124, double addrspace(1)* %3, align 8, !tbaa !42
  %125 = load double addrspace(1)* %4, align 8, !tbaa !42
  %126 = fdiv double %124, %125
  store double %126, double addrspace(1)* %3, align 8, !tbaa !42
  %127 = load double addrspace(1)* %4, align 8, !tbaa !42
  %128 = fdiv double %126, %127
  store double %128, double addrspace(1)* %3, align 8, !tbaa !42
  %129 = load double addrspace(1)* %4, align 8, !tbaa !42
  %130 = fdiv double %128, %129
  store double %130, double addrspace(1)* %3, align 8, !tbaa !42
  %131 = load double addrspace(1)* %4, align 8, !tbaa !42
  %132 = fdiv double %130, %131
  store double %132, double addrspace(1)* %3, align 8, !tbaa !42
  %133 = add nsw i32 %j.0378, 1
  %134 = icmp slt i32 %133, 128
  br i1 %134, label %5, label %135

; <label>:135                                     ; preds = %5
  ret void
}

define cc76 void @scalar_dp_mad_iter_128_unroll_64_kernel(double addrspace(1)* nocapture %a, double addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds double addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds double addrspace(1)* %b, i64 %2
  %.pre = load double addrspace(1)* %3, align 8, !tbaa !42
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi double [ %.pre, %0 ], [ %132, %5 ]
  %j.0504 = phi i32 [ 0, %0 ], [ %133, %5 ]
  %7 = load double addrspace(1)* %4, align 8, !tbaa !42
  %8 = tail call double @llvm.fmuladd.f64(double %6, double %7, double %7)
  store double %8, double addrspace(1)* %3, align 8, !tbaa !42
  %9 = load double addrspace(1)* %4, align 8, !tbaa !42
  %10 = tail call double @llvm.fmuladd.f64(double %8, double %9, double %9)
  store double %10, double addrspace(1)* %3, align 8, !tbaa !42
  %11 = load double addrspace(1)* %4, align 8, !tbaa !42
  %12 = tail call double @llvm.fmuladd.f64(double %10, double %11, double %11)
  store double %12, double addrspace(1)* %3, align 8, !tbaa !42
  %13 = load double addrspace(1)* %4, align 8, !tbaa !42
  %14 = tail call double @llvm.fmuladd.f64(double %12, double %13, double %13)
  store double %14, double addrspace(1)* %3, align 8, !tbaa !42
  %15 = load double addrspace(1)* %4, align 8, !tbaa !42
  %16 = tail call double @llvm.fmuladd.f64(double %14, double %15, double %15)
  store double %16, double addrspace(1)* %3, align 8, !tbaa !42
  %17 = load double addrspace(1)* %4, align 8, !tbaa !42
  %18 = tail call double @llvm.fmuladd.f64(double %16, double %17, double %17)
  store double %18, double addrspace(1)* %3, align 8, !tbaa !42
  %19 = load double addrspace(1)* %4, align 8, !tbaa !42
  %20 = tail call double @llvm.fmuladd.f64(double %18, double %19, double %19)
  store double %20, double addrspace(1)* %3, align 8, !tbaa !42
  %21 = load double addrspace(1)* %4, align 8, !tbaa !42
  %22 = tail call double @llvm.fmuladd.f64(double %20, double %21, double %21)
  store double %22, double addrspace(1)* %3, align 8, !tbaa !42
  %23 = load double addrspace(1)* %4, align 8, !tbaa !42
  %24 = tail call double @llvm.fmuladd.f64(double %22, double %23, double %23)
  store double %24, double addrspace(1)* %3, align 8, !tbaa !42
  %25 = load double addrspace(1)* %4, align 8, !tbaa !42
  %26 = tail call double @llvm.fmuladd.f64(double %24, double %25, double %25)
  store double %26, double addrspace(1)* %3, align 8, !tbaa !42
  %27 = load double addrspace(1)* %4, align 8, !tbaa !42
  %28 = tail call double @llvm.fmuladd.f64(double %26, double %27, double %27)
  store double %28, double addrspace(1)* %3, align 8, !tbaa !42
  %29 = load double addrspace(1)* %4, align 8, !tbaa !42
  %30 = tail call double @llvm.fmuladd.f64(double %28, double %29, double %29)
  store double %30, double addrspace(1)* %3, align 8, !tbaa !42
  %31 = load double addrspace(1)* %4, align 8, !tbaa !42
  %32 = tail call double @llvm.fmuladd.f64(double %30, double %31, double %31)
  store double %32, double addrspace(1)* %3, align 8, !tbaa !42
  %33 = load double addrspace(1)* %4, align 8, !tbaa !42
  %34 = tail call double @llvm.fmuladd.f64(double %32, double %33, double %33)
  store double %34, double addrspace(1)* %3, align 8, !tbaa !42
  %35 = load double addrspace(1)* %4, align 8, !tbaa !42
  %36 = tail call double @llvm.fmuladd.f64(double %34, double %35, double %35)
  store double %36, double addrspace(1)* %3, align 8, !tbaa !42
  %37 = load double addrspace(1)* %4, align 8, !tbaa !42
  %38 = tail call double @llvm.fmuladd.f64(double %36, double %37, double %37)
  store double %38, double addrspace(1)* %3, align 8, !tbaa !42
  %39 = load double addrspace(1)* %4, align 8, !tbaa !42
  %40 = tail call double @llvm.fmuladd.f64(double %38, double %39, double %39)
  store double %40, double addrspace(1)* %3, align 8, !tbaa !42
  %41 = load double addrspace(1)* %4, align 8, !tbaa !42
  %42 = tail call double @llvm.fmuladd.f64(double %40, double %41, double %41)
  store double %42, double addrspace(1)* %3, align 8, !tbaa !42
  %43 = load double addrspace(1)* %4, align 8, !tbaa !42
  %44 = tail call double @llvm.fmuladd.f64(double %42, double %43, double %43)
  store double %44, double addrspace(1)* %3, align 8, !tbaa !42
  %45 = load double addrspace(1)* %4, align 8, !tbaa !42
  %46 = tail call double @llvm.fmuladd.f64(double %44, double %45, double %45)
  store double %46, double addrspace(1)* %3, align 8, !tbaa !42
  %47 = load double addrspace(1)* %4, align 8, !tbaa !42
  %48 = tail call double @llvm.fmuladd.f64(double %46, double %47, double %47)
  store double %48, double addrspace(1)* %3, align 8, !tbaa !42
  %49 = load double addrspace(1)* %4, align 8, !tbaa !42
  %50 = tail call double @llvm.fmuladd.f64(double %48, double %49, double %49)
  store double %50, double addrspace(1)* %3, align 8, !tbaa !42
  %51 = load double addrspace(1)* %4, align 8, !tbaa !42
  %52 = tail call double @llvm.fmuladd.f64(double %50, double %51, double %51)
  store double %52, double addrspace(1)* %3, align 8, !tbaa !42
  %53 = load double addrspace(1)* %4, align 8, !tbaa !42
  %54 = tail call double @llvm.fmuladd.f64(double %52, double %53, double %53)
  store double %54, double addrspace(1)* %3, align 8, !tbaa !42
  %55 = load double addrspace(1)* %4, align 8, !tbaa !42
  %56 = tail call double @llvm.fmuladd.f64(double %54, double %55, double %55)
  store double %56, double addrspace(1)* %3, align 8, !tbaa !42
  %57 = load double addrspace(1)* %4, align 8, !tbaa !42
  %58 = tail call double @llvm.fmuladd.f64(double %56, double %57, double %57)
  store double %58, double addrspace(1)* %3, align 8, !tbaa !42
  %59 = load double addrspace(1)* %4, align 8, !tbaa !42
  %60 = tail call double @llvm.fmuladd.f64(double %58, double %59, double %59)
  store double %60, double addrspace(1)* %3, align 8, !tbaa !42
  %61 = load double addrspace(1)* %4, align 8, !tbaa !42
  %62 = tail call double @llvm.fmuladd.f64(double %60, double %61, double %61)
  store double %62, double addrspace(1)* %3, align 8, !tbaa !42
  %63 = load double addrspace(1)* %4, align 8, !tbaa !42
  %64 = tail call double @llvm.fmuladd.f64(double %62, double %63, double %63)
  store double %64, double addrspace(1)* %3, align 8, !tbaa !42
  %65 = load double addrspace(1)* %4, align 8, !tbaa !42
  %66 = tail call double @llvm.fmuladd.f64(double %64, double %65, double %65)
  store double %66, double addrspace(1)* %3, align 8, !tbaa !42
  %67 = load double addrspace(1)* %4, align 8, !tbaa !42
  %68 = tail call double @llvm.fmuladd.f64(double %66, double %67, double %67)
  store double %68, double addrspace(1)* %3, align 8, !tbaa !42
  %69 = load double addrspace(1)* %4, align 8, !tbaa !42
  %70 = tail call double @llvm.fmuladd.f64(double %68, double %69, double %69)
  store double %70, double addrspace(1)* %3, align 8, !tbaa !42
  %71 = load double addrspace(1)* %4, align 8, !tbaa !42
  %72 = tail call double @llvm.fmuladd.f64(double %70, double %71, double %71)
  store double %72, double addrspace(1)* %3, align 8, !tbaa !42
  %73 = load double addrspace(1)* %4, align 8, !tbaa !42
  %74 = tail call double @llvm.fmuladd.f64(double %72, double %73, double %73)
  store double %74, double addrspace(1)* %3, align 8, !tbaa !42
  %75 = load double addrspace(1)* %4, align 8, !tbaa !42
  %76 = tail call double @llvm.fmuladd.f64(double %74, double %75, double %75)
  store double %76, double addrspace(1)* %3, align 8, !tbaa !42
  %77 = load double addrspace(1)* %4, align 8, !tbaa !42
  %78 = tail call double @llvm.fmuladd.f64(double %76, double %77, double %77)
  store double %78, double addrspace(1)* %3, align 8, !tbaa !42
  %79 = load double addrspace(1)* %4, align 8, !tbaa !42
  %80 = tail call double @llvm.fmuladd.f64(double %78, double %79, double %79)
  store double %80, double addrspace(1)* %3, align 8, !tbaa !42
  %81 = load double addrspace(1)* %4, align 8, !tbaa !42
  %82 = tail call double @llvm.fmuladd.f64(double %80, double %81, double %81)
  store double %82, double addrspace(1)* %3, align 8, !tbaa !42
  %83 = load double addrspace(1)* %4, align 8, !tbaa !42
  %84 = tail call double @llvm.fmuladd.f64(double %82, double %83, double %83)
  store double %84, double addrspace(1)* %3, align 8, !tbaa !42
  %85 = load double addrspace(1)* %4, align 8, !tbaa !42
  %86 = tail call double @llvm.fmuladd.f64(double %84, double %85, double %85)
  store double %86, double addrspace(1)* %3, align 8, !tbaa !42
  %87 = load double addrspace(1)* %4, align 8, !tbaa !42
  %88 = tail call double @llvm.fmuladd.f64(double %86, double %87, double %87)
  store double %88, double addrspace(1)* %3, align 8, !tbaa !42
  %89 = load double addrspace(1)* %4, align 8, !tbaa !42
  %90 = tail call double @llvm.fmuladd.f64(double %88, double %89, double %89)
  store double %90, double addrspace(1)* %3, align 8, !tbaa !42
  %91 = load double addrspace(1)* %4, align 8, !tbaa !42
  %92 = tail call double @llvm.fmuladd.f64(double %90, double %91, double %91)
  store double %92, double addrspace(1)* %3, align 8, !tbaa !42
  %93 = load double addrspace(1)* %4, align 8, !tbaa !42
  %94 = tail call double @llvm.fmuladd.f64(double %92, double %93, double %93)
  store double %94, double addrspace(1)* %3, align 8, !tbaa !42
  %95 = load double addrspace(1)* %4, align 8, !tbaa !42
  %96 = tail call double @llvm.fmuladd.f64(double %94, double %95, double %95)
  store double %96, double addrspace(1)* %3, align 8, !tbaa !42
  %97 = load double addrspace(1)* %4, align 8, !tbaa !42
  %98 = tail call double @llvm.fmuladd.f64(double %96, double %97, double %97)
  store double %98, double addrspace(1)* %3, align 8, !tbaa !42
  %99 = load double addrspace(1)* %4, align 8, !tbaa !42
  %100 = tail call double @llvm.fmuladd.f64(double %98, double %99, double %99)
  store double %100, double addrspace(1)* %3, align 8, !tbaa !42
  %101 = load double addrspace(1)* %4, align 8, !tbaa !42
  %102 = tail call double @llvm.fmuladd.f64(double %100, double %101, double %101)
  store double %102, double addrspace(1)* %3, align 8, !tbaa !42
  %103 = load double addrspace(1)* %4, align 8, !tbaa !42
  %104 = tail call double @llvm.fmuladd.f64(double %102, double %103, double %103)
  store double %104, double addrspace(1)* %3, align 8, !tbaa !42
  %105 = load double addrspace(1)* %4, align 8, !tbaa !42
  %106 = tail call double @llvm.fmuladd.f64(double %104, double %105, double %105)
  store double %106, double addrspace(1)* %3, align 8, !tbaa !42
  %107 = load double addrspace(1)* %4, align 8, !tbaa !42
  %108 = tail call double @llvm.fmuladd.f64(double %106, double %107, double %107)
  store double %108, double addrspace(1)* %3, align 8, !tbaa !42
  %109 = load double addrspace(1)* %4, align 8, !tbaa !42
  %110 = tail call double @llvm.fmuladd.f64(double %108, double %109, double %109)
  store double %110, double addrspace(1)* %3, align 8, !tbaa !42
  %111 = load double addrspace(1)* %4, align 8, !tbaa !42
  %112 = tail call double @llvm.fmuladd.f64(double %110, double %111, double %111)
  store double %112, double addrspace(1)* %3, align 8, !tbaa !42
  %113 = load double addrspace(1)* %4, align 8, !tbaa !42
  %114 = tail call double @llvm.fmuladd.f64(double %112, double %113, double %113)
  store double %114, double addrspace(1)* %3, align 8, !tbaa !42
  %115 = load double addrspace(1)* %4, align 8, !tbaa !42
  %116 = tail call double @llvm.fmuladd.f64(double %114, double %115, double %115)
  store double %116, double addrspace(1)* %3, align 8, !tbaa !42
  %117 = load double addrspace(1)* %4, align 8, !tbaa !42
  %118 = tail call double @llvm.fmuladd.f64(double %116, double %117, double %117)
  store double %118, double addrspace(1)* %3, align 8, !tbaa !42
  %119 = load double addrspace(1)* %4, align 8, !tbaa !42
  %120 = tail call double @llvm.fmuladd.f64(double %118, double %119, double %119)
  store double %120, double addrspace(1)* %3, align 8, !tbaa !42
  %121 = load double addrspace(1)* %4, align 8, !tbaa !42
  %122 = tail call double @llvm.fmuladd.f64(double %120, double %121, double %121)
  store double %122, double addrspace(1)* %3, align 8, !tbaa !42
  %123 = load double addrspace(1)* %4, align 8, !tbaa !42
  %124 = tail call double @llvm.fmuladd.f64(double %122, double %123, double %123)
  store double %124, double addrspace(1)* %3, align 8, !tbaa !42
  %125 = load double addrspace(1)* %4, align 8, !tbaa !42
  %126 = tail call double @llvm.fmuladd.f64(double %124, double %125, double %125)
  store double %126, double addrspace(1)* %3, align 8, !tbaa !42
  %127 = load double addrspace(1)* %4, align 8, !tbaa !42
  %128 = tail call double @llvm.fmuladd.f64(double %126, double %127, double %127)
  store double %128, double addrspace(1)* %3, align 8, !tbaa !42
  %129 = load double addrspace(1)* %4, align 8, !tbaa !42
  %130 = tail call double @llvm.fmuladd.f64(double %128, double %129, double %129)
  store double %130, double addrspace(1)* %3, align 8, !tbaa !42
  %131 = load double addrspace(1)* %4, align 8, !tbaa !42
  %132 = tail call double @llvm.fmuladd.f64(double %130, double %131, double %131)
  store double %132, double addrspace(1)* %3, align 8, !tbaa !42
  %133 = add nsw i32 %j.0504, 1
  %134 = icmp slt i32 %133, 128
  br i1 %134, label %5, label %135

; <label>:135                                     ; preds = %5
  ret void
}

declare double @llvm.fmuladd.f64(double, double, double) nounwind readnone

define cc76 void @vect2_dp_add_iter_128_unroll_64_kernel(<2 x double> addrspace(1)* nocapture %a, <2 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <2 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <2 x double> addrspace(1)* %b, i64 %2
  %.pre = load <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <2 x double> [ %.pre, %0 ], [ %132, %5 ]
  %j.0378 = phi i32 [ 0, %0 ], [ %133, %5 ]
  %7 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %8 = fadd <2 x double> %6, %7
  store <2 x double> %8, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %9 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %10 = fadd <2 x double> %8, %9
  store <2 x double> %10, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %11 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %12 = fadd <2 x double> %10, %11
  store <2 x double> %12, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %13 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %14 = fadd <2 x double> %12, %13
  store <2 x double> %14, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %15 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %16 = fadd <2 x double> %14, %15
  store <2 x double> %16, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %17 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %18 = fadd <2 x double> %16, %17
  store <2 x double> %18, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %19 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %20 = fadd <2 x double> %18, %19
  store <2 x double> %20, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %21 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %22 = fadd <2 x double> %20, %21
  store <2 x double> %22, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %23 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %24 = fadd <2 x double> %22, %23
  store <2 x double> %24, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %25 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %26 = fadd <2 x double> %24, %25
  store <2 x double> %26, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %27 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %28 = fadd <2 x double> %26, %27
  store <2 x double> %28, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %29 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %30 = fadd <2 x double> %28, %29
  store <2 x double> %30, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %31 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %32 = fadd <2 x double> %30, %31
  store <2 x double> %32, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %33 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %34 = fadd <2 x double> %32, %33
  store <2 x double> %34, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %35 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %36 = fadd <2 x double> %34, %35
  store <2 x double> %36, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %37 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %38 = fadd <2 x double> %36, %37
  store <2 x double> %38, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %39 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %40 = fadd <2 x double> %38, %39
  store <2 x double> %40, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %41 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %42 = fadd <2 x double> %40, %41
  store <2 x double> %42, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %43 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %44 = fadd <2 x double> %42, %43
  store <2 x double> %44, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %45 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %46 = fadd <2 x double> %44, %45
  store <2 x double> %46, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %47 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %48 = fadd <2 x double> %46, %47
  store <2 x double> %48, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %49 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %50 = fadd <2 x double> %48, %49
  store <2 x double> %50, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %51 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %52 = fadd <2 x double> %50, %51
  store <2 x double> %52, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %53 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %54 = fadd <2 x double> %52, %53
  store <2 x double> %54, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %55 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %56 = fadd <2 x double> %54, %55
  store <2 x double> %56, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %57 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %58 = fadd <2 x double> %56, %57
  store <2 x double> %58, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %59 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %60 = fadd <2 x double> %58, %59
  store <2 x double> %60, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %61 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %62 = fadd <2 x double> %60, %61
  store <2 x double> %62, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %63 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %64 = fadd <2 x double> %62, %63
  store <2 x double> %64, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %65 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %66 = fadd <2 x double> %64, %65
  store <2 x double> %66, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %67 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %68 = fadd <2 x double> %66, %67
  store <2 x double> %68, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %69 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %70 = fadd <2 x double> %68, %69
  store <2 x double> %70, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %71 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %72 = fadd <2 x double> %70, %71
  store <2 x double> %72, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %73 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %74 = fadd <2 x double> %72, %73
  store <2 x double> %74, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %75 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %76 = fadd <2 x double> %74, %75
  store <2 x double> %76, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %77 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %78 = fadd <2 x double> %76, %77
  store <2 x double> %78, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %79 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %80 = fadd <2 x double> %78, %79
  store <2 x double> %80, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %81 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %82 = fadd <2 x double> %80, %81
  store <2 x double> %82, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %83 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %84 = fadd <2 x double> %82, %83
  store <2 x double> %84, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %85 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %86 = fadd <2 x double> %84, %85
  store <2 x double> %86, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %87 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %88 = fadd <2 x double> %86, %87
  store <2 x double> %88, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %89 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %90 = fadd <2 x double> %88, %89
  store <2 x double> %90, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %91 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %92 = fadd <2 x double> %90, %91
  store <2 x double> %92, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %93 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %94 = fadd <2 x double> %92, %93
  store <2 x double> %94, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %95 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %96 = fadd <2 x double> %94, %95
  store <2 x double> %96, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %97 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %98 = fadd <2 x double> %96, %97
  store <2 x double> %98, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %99 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %100 = fadd <2 x double> %98, %99
  store <2 x double> %100, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %101 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %102 = fadd <2 x double> %100, %101
  store <2 x double> %102, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %103 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %104 = fadd <2 x double> %102, %103
  store <2 x double> %104, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %105 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %106 = fadd <2 x double> %104, %105
  store <2 x double> %106, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %107 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %108 = fadd <2 x double> %106, %107
  store <2 x double> %108, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %109 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %110 = fadd <2 x double> %108, %109
  store <2 x double> %110, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %111 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %112 = fadd <2 x double> %110, %111
  store <2 x double> %112, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %113 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %114 = fadd <2 x double> %112, %113
  store <2 x double> %114, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %115 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %116 = fadd <2 x double> %114, %115
  store <2 x double> %116, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %117 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %118 = fadd <2 x double> %116, %117
  store <2 x double> %118, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %119 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %120 = fadd <2 x double> %118, %119
  store <2 x double> %120, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %121 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %122 = fadd <2 x double> %120, %121
  store <2 x double> %122, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %123 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %124 = fadd <2 x double> %122, %123
  store <2 x double> %124, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %125 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %126 = fadd <2 x double> %124, %125
  store <2 x double> %126, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %127 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %128 = fadd <2 x double> %126, %127
  store <2 x double> %128, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %129 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %130 = fadd <2 x double> %128, %129
  store <2 x double> %130, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %131 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %132 = fadd <2 x double> %130, %131
  store <2 x double> %132, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %133 = add nsw i32 %j.0378, 1
  %134 = icmp slt i32 %133, 128
  br i1 %134, label %5, label %135

; <label>:135                                     ; preds = %5
  ret void
}

define cc76 void @vect2_dp_sub_iter_128_unroll_64_kernel(<2 x double> addrspace(1)* nocapture %a, <2 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <2 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <2 x double> addrspace(1)* %b, i64 %2
  %.pre = load <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <2 x double> [ %.pre, %0 ], [ %132, %5 ]
  %j.0378 = phi i32 [ 0, %0 ], [ %133, %5 ]
  %7 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %8 = fsub <2 x double> %6, %7
  store <2 x double> %8, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %9 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %10 = fsub <2 x double> %8, %9
  store <2 x double> %10, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %11 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %12 = fsub <2 x double> %10, %11
  store <2 x double> %12, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %13 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %14 = fsub <2 x double> %12, %13
  store <2 x double> %14, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %15 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %16 = fsub <2 x double> %14, %15
  store <2 x double> %16, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %17 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %18 = fsub <2 x double> %16, %17
  store <2 x double> %18, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %19 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %20 = fsub <2 x double> %18, %19
  store <2 x double> %20, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %21 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %22 = fsub <2 x double> %20, %21
  store <2 x double> %22, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %23 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %24 = fsub <2 x double> %22, %23
  store <2 x double> %24, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %25 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %26 = fsub <2 x double> %24, %25
  store <2 x double> %26, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %27 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %28 = fsub <2 x double> %26, %27
  store <2 x double> %28, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %29 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %30 = fsub <2 x double> %28, %29
  store <2 x double> %30, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %31 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %32 = fsub <2 x double> %30, %31
  store <2 x double> %32, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %33 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %34 = fsub <2 x double> %32, %33
  store <2 x double> %34, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %35 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %36 = fsub <2 x double> %34, %35
  store <2 x double> %36, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %37 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %38 = fsub <2 x double> %36, %37
  store <2 x double> %38, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %39 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %40 = fsub <2 x double> %38, %39
  store <2 x double> %40, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %41 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %42 = fsub <2 x double> %40, %41
  store <2 x double> %42, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %43 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %44 = fsub <2 x double> %42, %43
  store <2 x double> %44, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %45 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %46 = fsub <2 x double> %44, %45
  store <2 x double> %46, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %47 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %48 = fsub <2 x double> %46, %47
  store <2 x double> %48, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %49 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %50 = fsub <2 x double> %48, %49
  store <2 x double> %50, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %51 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %52 = fsub <2 x double> %50, %51
  store <2 x double> %52, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %53 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %54 = fsub <2 x double> %52, %53
  store <2 x double> %54, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %55 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %56 = fsub <2 x double> %54, %55
  store <2 x double> %56, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %57 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %58 = fsub <2 x double> %56, %57
  store <2 x double> %58, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %59 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %60 = fsub <2 x double> %58, %59
  store <2 x double> %60, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %61 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %62 = fsub <2 x double> %60, %61
  store <2 x double> %62, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %63 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %64 = fsub <2 x double> %62, %63
  store <2 x double> %64, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %65 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %66 = fsub <2 x double> %64, %65
  store <2 x double> %66, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %67 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %68 = fsub <2 x double> %66, %67
  store <2 x double> %68, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %69 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %70 = fsub <2 x double> %68, %69
  store <2 x double> %70, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %71 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %72 = fsub <2 x double> %70, %71
  store <2 x double> %72, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %73 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %74 = fsub <2 x double> %72, %73
  store <2 x double> %74, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %75 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %76 = fsub <2 x double> %74, %75
  store <2 x double> %76, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %77 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %78 = fsub <2 x double> %76, %77
  store <2 x double> %78, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %79 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %80 = fsub <2 x double> %78, %79
  store <2 x double> %80, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %81 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %82 = fsub <2 x double> %80, %81
  store <2 x double> %82, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %83 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %84 = fsub <2 x double> %82, %83
  store <2 x double> %84, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %85 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %86 = fsub <2 x double> %84, %85
  store <2 x double> %86, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %87 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %88 = fsub <2 x double> %86, %87
  store <2 x double> %88, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %89 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %90 = fsub <2 x double> %88, %89
  store <2 x double> %90, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %91 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %92 = fsub <2 x double> %90, %91
  store <2 x double> %92, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %93 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %94 = fsub <2 x double> %92, %93
  store <2 x double> %94, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %95 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %96 = fsub <2 x double> %94, %95
  store <2 x double> %96, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %97 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %98 = fsub <2 x double> %96, %97
  store <2 x double> %98, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %99 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %100 = fsub <2 x double> %98, %99
  store <2 x double> %100, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %101 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %102 = fsub <2 x double> %100, %101
  store <2 x double> %102, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %103 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %104 = fsub <2 x double> %102, %103
  store <2 x double> %104, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %105 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %106 = fsub <2 x double> %104, %105
  store <2 x double> %106, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %107 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %108 = fsub <2 x double> %106, %107
  store <2 x double> %108, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %109 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %110 = fsub <2 x double> %108, %109
  store <2 x double> %110, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %111 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %112 = fsub <2 x double> %110, %111
  store <2 x double> %112, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %113 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %114 = fsub <2 x double> %112, %113
  store <2 x double> %114, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %115 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %116 = fsub <2 x double> %114, %115
  store <2 x double> %116, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %117 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %118 = fsub <2 x double> %116, %117
  store <2 x double> %118, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %119 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %120 = fsub <2 x double> %118, %119
  store <2 x double> %120, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %121 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %122 = fsub <2 x double> %120, %121
  store <2 x double> %122, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %123 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %124 = fsub <2 x double> %122, %123
  store <2 x double> %124, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %125 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %126 = fsub <2 x double> %124, %125
  store <2 x double> %126, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %127 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %128 = fsub <2 x double> %126, %127
  store <2 x double> %128, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %129 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %130 = fsub <2 x double> %128, %129
  store <2 x double> %130, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %131 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %132 = fsub <2 x double> %130, %131
  store <2 x double> %132, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %133 = add nsw i32 %j.0378, 1
  %134 = icmp slt i32 %133, 128
  br i1 %134, label %5, label %135

; <label>:135                                     ; preds = %5
  ret void
}

define cc76 void @vect2_dp_mul_iter_128_unroll_64_kernel(<2 x double> addrspace(1)* nocapture %a, <2 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <2 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <2 x double> addrspace(1)* %b, i64 %2
  %.pre = load <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <2 x double> [ %.pre, %0 ], [ %132, %5 ]
  %j.0378 = phi i32 [ 0, %0 ], [ %133, %5 ]
  %7 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %8 = fmul <2 x double> %6, %7
  store <2 x double> %8, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %9 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %10 = fmul <2 x double> %8, %9
  store <2 x double> %10, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %11 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %12 = fmul <2 x double> %10, %11
  store <2 x double> %12, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %13 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %14 = fmul <2 x double> %12, %13
  store <2 x double> %14, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %15 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %16 = fmul <2 x double> %14, %15
  store <2 x double> %16, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %17 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %18 = fmul <2 x double> %16, %17
  store <2 x double> %18, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %19 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %20 = fmul <2 x double> %18, %19
  store <2 x double> %20, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %21 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %22 = fmul <2 x double> %20, %21
  store <2 x double> %22, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %23 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %24 = fmul <2 x double> %22, %23
  store <2 x double> %24, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %25 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %26 = fmul <2 x double> %24, %25
  store <2 x double> %26, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %27 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %28 = fmul <2 x double> %26, %27
  store <2 x double> %28, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %29 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %30 = fmul <2 x double> %28, %29
  store <2 x double> %30, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %31 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %32 = fmul <2 x double> %30, %31
  store <2 x double> %32, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %33 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %34 = fmul <2 x double> %32, %33
  store <2 x double> %34, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %35 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %36 = fmul <2 x double> %34, %35
  store <2 x double> %36, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %37 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %38 = fmul <2 x double> %36, %37
  store <2 x double> %38, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %39 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %40 = fmul <2 x double> %38, %39
  store <2 x double> %40, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %41 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %42 = fmul <2 x double> %40, %41
  store <2 x double> %42, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %43 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %44 = fmul <2 x double> %42, %43
  store <2 x double> %44, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %45 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %46 = fmul <2 x double> %44, %45
  store <2 x double> %46, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %47 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %48 = fmul <2 x double> %46, %47
  store <2 x double> %48, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %49 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %50 = fmul <2 x double> %48, %49
  store <2 x double> %50, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %51 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %52 = fmul <2 x double> %50, %51
  store <2 x double> %52, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %53 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %54 = fmul <2 x double> %52, %53
  store <2 x double> %54, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %55 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %56 = fmul <2 x double> %54, %55
  store <2 x double> %56, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %57 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %58 = fmul <2 x double> %56, %57
  store <2 x double> %58, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %59 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %60 = fmul <2 x double> %58, %59
  store <2 x double> %60, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %61 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %62 = fmul <2 x double> %60, %61
  store <2 x double> %62, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %63 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %64 = fmul <2 x double> %62, %63
  store <2 x double> %64, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %65 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %66 = fmul <2 x double> %64, %65
  store <2 x double> %66, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %67 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %68 = fmul <2 x double> %66, %67
  store <2 x double> %68, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %69 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %70 = fmul <2 x double> %68, %69
  store <2 x double> %70, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %71 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %72 = fmul <2 x double> %70, %71
  store <2 x double> %72, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %73 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %74 = fmul <2 x double> %72, %73
  store <2 x double> %74, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %75 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %76 = fmul <2 x double> %74, %75
  store <2 x double> %76, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %77 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %78 = fmul <2 x double> %76, %77
  store <2 x double> %78, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %79 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %80 = fmul <2 x double> %78, %79
  store <2 x double> %80, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %81 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %82 = fmul <2 x double> %80, %81
  store <2 x double> %82, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %83 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %84 = fmul <2 x double> %82, %83
  store <2 x double> %84, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %85 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %86 = fmul <2 x double> %84, %85
  store <2 x double> %86, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %87 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %88 = fmul <2 x double> %86, %87
  store <2 x double> %88, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %89 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %90 = fmul <2 x double> %88, %89
  store <2 x double> %90, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %91 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %92 = fmul <2 x double> %90, %91
  store <2 x double> %92, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %93 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %94 = fmul <2 x double> %92, %93
  store <2 x double> %94, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %95 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %96 = fmul <2 x double> %94, %95
  store <2 x double> %96, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %97 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %98 = fmul <2 x double> %96, %97
  store <2 x double> %98, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %99 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %100 = fmul <2 x double> %98, %99
  store <2 x double> %100, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %101 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %102 = fmul <2 x double> %100, %101
  store <2 x double> %102, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %103 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %104 = fmul <2 x double> %102, %103
  store <2 x double> %104, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %105 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %106 = fmul <2 x double> %104, %105
  store <2 x double> %106, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %107 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %108 = fmul <2 x double> %106, %107
  store <2 x double> %108, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %109 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %110 = fmul <2 x double> %108, %109
  store <2 x double> %110, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %111 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %112 = fmul <2 x double> %110, %111
  store <2 x double> %112, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %113 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %114 = fmul <2 x double> %112, %113
  store <2 x double> %114, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %115 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %116 = fmul <2 x double> %114, %115
  store <2 x double> %116, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %117 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %118 = fmul <2 x double> %116, %117
  store <2 x double> %118, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %119 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %120 = fmul <2 x double> %118, %119
  store <2 x double> %120, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %121 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %122 = fmul <2 x double> %120, %121
  store <2 x double> %122, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %123 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %124 = fmul <2 x double> %122, %123
  store <2 x double> %124, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %125 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %126 = fmul <2 x double> %124, %125
  store <2 x double> %126, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %127 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %128 = fmul <2 x double> %126, %127
  store <2 x double> %128, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %129 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %130 = fmul <2 x double> %128, %129
  store <2 x double> %130, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %131 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %132 = fmul <2 x double> %130, %131
  store <2 x double> %132, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %133 = add nsw i32 %j.0378, 1
  %134 = icmp slt i32 %133, 128
  br i1 %134, label %5, label %135

; <label>:135                                     ; preds = %5
  ret void
}

define cc76 void @vect2_dp_div_iter_128_unroll_64_kernel(<2 x double> addrspace(1)* nocapture %a, <2 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <2 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <2 x double> addrspace(1)* %b, i64 %2
  %.pre = load <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <2 x double> [ %.pre, %0 ], [ %132, %5 ]
  %j.0378 = phi i32 [ 0, %0 ], [ %133, %5 ]
  %7 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %8 = fdiv <2 x double> %6, %7
  store <2 x double> %8, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %9 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %10 = fdiv <2 x double> %8, %9
  store <2 x double> %10, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %11 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %12 = fdiv <2 x double> %10, %11
  store <2 x double> %12, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %13 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %14 = fdiv <2 x double> %12, %13
  store <2 x double> %14, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %15 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %16 = fdiv <2 x double> %14, %15
  store <2 x double> %16, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %17 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %18 = fdiv <2 x double> %16, %17
  store <2 x double> %18, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %19 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %20 = fdiv <2 x double> %18, %19
  store <2 x double> %20, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %21 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %22 = fdiv <2 x double> %20, %21
  store <2 x double> %22, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %23 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %24 = fdiv <2 x double> %22, %23
  store <2 x double> %24, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %25 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %26 = fdiv <2 x double> %24, %25
  store <2 x double> %26, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %27 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %28 = fdiv <2 x double> %26, %27
  store <2 x double> %28, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %29 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %30 = fdiv <2 x double> %28, %29
  store <2 x double> %30, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %31 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %32 = fdiv <2 x double> %30, %31
  store <2 x double> %32, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %33 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %34 = fdiv <2 x double> %32, %33
  store <2 x double> %34, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %35 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %36 = fdiv <2 x double> %34, %35
  store <2 x double> %36, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %37 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %38 = fdiv <2 x double> %36, %37
  store <2 x double> %38, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %39 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %40 = fdiv <2 x double> %38, %39
  store <2 x double> %40, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %41 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %42 = fdiv <2 x double> %40, %41
  store <2 x double> %42, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %43 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %44 = fdiv <2 x double> %42, %43
  store <2 x double> %44, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %45 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %46 = fdiv <2 x double> %44, %45
  store <2 x double> %46, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %47 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %48 = fdiv <2 x double> %46, %47
  store <2 x double> %48, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %49 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %50 = fdiv <2 x double> %48, %49
  store <2 x double> %50, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %51 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %52 = fdiv <2 x double> %50, %51
  store <2 x double> %52, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %53 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %54 = fdiv <2 x double> %52, %53
  store <2 x double> %54, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %55 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %56 = fdiv <2 x double> %54, %55
  store <2 x double> %56, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %57 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %58 = fdiv <2 x double> %56, %57
  store <2 x double> %58, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %59 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %60 = fdiv <2 x double> %58, %59
  store <2 x double> %60, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %61 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %62 = fdiv <2 x double> %60, %61
  store <2 x double> %62, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %63 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %64 = fdiv <2 x double> %62, %63
  store <2 x double> %64, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %65 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %66 = fdiv <2 x double> %64, %65
  store <2 x double> %66, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %67 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %68 = fdiv <2 x double> %66, %67
  store <2 x double> %68, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %69 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %70 = fdiv <2 x double> %68, %69
  store <2 x double> %70, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %71 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %72 = fdiv <2 x double> %70, %71
  store <2 x double> %72, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %73 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %74 = fdiv <2 x double> %72, %73
  store <2 x double> %74, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %75 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %76 = fdiv <2 x double> %74, %75
  store <2 x double> %76, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %77 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %78 = fdiv <2 x double> %76, %77
  store <2 x double> %78, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %79 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %80 = fdiv <2 x double> %78, %79
  store <2 x double> %80, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %81 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %82 = fdiv <2 x double> %80, %81
  store <2 x double> %82, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %83 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %84 = fdiv <2 x double> %82, %83
  store <2 x double> %84, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %85 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %86 = fdiv <2 x double> %84, %85
  store <2 x double> %86, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %87 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %88 = fdiv <2 x double> %86, %87
  store <2 x double> %88, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %89 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %90 = fdiv <2 x double> %88, %89
  store <2 x double> %90, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %91 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %92 = fdiv <2 x double> %90, %91
  store <2 x double> %92, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %93 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %94 = fdiv <2 x double> %92, %93
  store <2 x double> %94, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %95 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %96 = fdiv <2 x double> %94, %95
  store <2 x double> %96, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %97 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %98 = fdiv <2 x double> %96, %97
  store <2 x double> %98, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %99 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %100 = fdiv <2 x double> %98, %99
  store <2 x double> %100, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %101 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %102 = fdiv <2 x double> %100, %101
  store <2 x double> %102, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %103 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %104 = fdiv <2 x double> %102, %103
  store <2 x double> %104, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %105 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %106 = fdiv <2 x double> %104, %105
  store <2 x double> %106, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %107 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %108 = fdiv <2 x double> %106, %107
  store <2 x double> %108, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %109 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %110 = fdiv <2 x double> %108, %109
  store <2 x double> %110, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %111 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %112 = fdiv <2 x double> %110, %111
  store <2 x double> %112, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %113 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %114 = fdiv <2 x double> %112, %113
  store <2 x double> %114, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %115 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %116 = fdiv <2 x double> %114, %115
  store <2 x double> %116, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %117 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %118 = fdiv <2 x double> %116, %117
  store <2 x double> %118, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %119 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %120 = fdiv <2 x double> %118, %119
  store <2 x double> %120, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %121 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %122 = fdiv <2 x double> %120, %121
  store <2 x double> %122, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %123 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %124 = fdiv <2 x double> %122, %123
  store <2 x double> %124, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %125 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %126 = fdiv <2 x double> %124, %125
  store <2 x double> %126, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %127 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %128 = fdiv <2 x double> %126, %127
  store <2 x double> %128, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %129 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %130 = fdiv <2 x double> %128, %129
  store <2 x double> %130, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %131 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %132 = fdiv <2 x double> %130, %131
  store <2 x double> %132, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %133 = add nsw i32 %j.0378, 1
  %134 = icmp slt i32 %133, 128
  br i1 %134, label %5, label %135

; <label>:135                                     ; preds = %5
  ret void
}

define cc76 void @vect2_dp_mad_iter_128_unroll_64_kernel(<2 x double> addrspace(1)* nocapture %a, <2 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <2 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <2 x double> addrspace(1)* %b, i64 %2
  %.pre = load <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <2 x double> [ %.pre, %0 ], [ %132, %5 ]
  %j.0504 = phi i32 [ 0, %0 ], [ %133, %5 ]
  %7 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %8 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %6, <2 x double> %7, <2 x double> %7)
  store <2 x double> %8, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %9 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %10 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %8, <2 x double> %9, <2 x double> %9)
  store <2 x double> %10, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %11 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %12 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %10, <2 x double> %11, <2 x double> %11)
  store <2 x double> %12, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %13 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %14 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %12, <2 x double> %13, <2 x double> %13)
  store <2 x double> %14, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %15 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %16 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %14, <2 x double> %15, <2 x double> %15)
  store <2 x double> %16, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %17 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %18 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %16, <2 x double> %17, <2 x double> %17)
  store <2 x double> %18, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %19 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %20 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %18, <2 x double> %19, <2 x double> %19)
  store <2 x double> %20, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %21 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %22 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %20, <2 x double> %21, <2 x double> %21)
  store <2 x double> %22, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %23 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %24 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %22, <2 x double> %23, <2 x double> %23)
  store <2 x double> %24, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %25 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %26 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %24, <2 x double> %25, <2 x double> %25)
  store <2 x double> %26, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %27 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %28 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %26, <2 x double> %27, <2 x double> %27)
  store <2 x double> %28, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %29 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %30 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %28, <2 x double> %29, <2 x double> %29)
  store <2 x double> %30, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %31 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %32 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %30, <2 x double> %31, <2 x double> %31)
  store <2 x double> %32, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %33 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %34 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %32, <2 x double> %33, <2 x double> %33)
  store <2 x double> %34, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %35 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %36 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %34, <2 x double> %35, <2 x double> %35)
  store <2 x double> %36, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %37 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %38 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %36, <2 x double> %37, <2 x double> %37)
  store <2 x double> %38, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %39 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %40 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %38, <2 x double> %39, <2 x double> %39)
  store <2 x double> %40, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %41 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %42 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %40, <2 x double> %41, <2 x double> %41)
  store <2 x double> %42, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %43 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %44 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %42, <2 x double> %43, <2 x double> %43)
  store <2 x double> %44, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %45 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %46 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %44, <2 x double> %45, <2 x double> %45)
  store <2 x double> %46, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %47 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %48 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %46, <2 x double> %47, <2 x double> %47)
  store <2 x double> %48, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %49 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %50 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %48, <2 x double> %49, <2 x double> %49)
  store <2 x double> %50, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %51 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %52 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %50, <2 x double> %51, <2 x double> %51)
  store <2 x double> %52, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %53 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %54 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %52, <2 x double> %53, <2 x double> %53)
  store <2 x double> %54, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %55 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %56 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %54, <2 x double> %55, <2 x double> %55)
  store <2 x double> %56, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %57 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %58 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %56, <2 x double> %57, <2 x double> %57)
  store <2 x double> %58, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %59 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %60 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %58, <2 x double> %59, <2 x double> %59)
  store <2 x double> %60, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %61 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %62 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %60, <2 x double> %61, <2 x double> %61)
  store <2 x double> %62, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %63 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %64 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %62, <2 x double> %63, <2 x double> %63)
  store <2 x double> %64, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %65 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %66 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %64, <2 x double> %65, <2 x double> %65)
  store <2 x double> %66, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %67 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %68 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %66, <2 x double> %67, <2 x double> %67)
  store <2 x double> %68, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %69 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %70 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %68, <2 x double> %69, <2 x double> %69)
  store <2 x double> %70, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %71 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %72 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %70, <2 x double> %71, <2 x double> %71)
  store <2 x double> %72, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %73 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %74 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %72, <2 x double> %73, <2 x double> %73)
  store <2 x double> %74, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %75 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %76 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %74, <2 x double> %75, <2 x double> %75)
  store <2 x double> %76, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %77 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %78 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %76, <2 x double> %77, <2 x double> %77)
  store <2 x double> %78, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %79 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %80 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %78, <2 x double> %79, <2 x double> %79)
  store <2 x double> %80, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %81 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %82 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %80, <2 x double> %81, <2 x double> %81)
  store <2 x double> %82, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %83 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %84 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %82, <2 x double> %83, <2 x double> %83)
  store <2 x double> %84, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %85 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %86 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %84, <2 x double> %85, <2 x double> %85)
  store <2 x double> %86, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %87 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %88 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %86, <2 x double> %87, <2 x double> %87)
  store <2 x double> %88, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %89 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %90 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %88, <2 x double> %89, <2 x double> %89)
  store <2 x double> %90, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %91 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %92 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %90, <2 x double> %91, <2 x double> %91)
  store <2 x double> %92, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %93 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %94 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %92, <2 x double> %93, <2 x double> %93)
  store <2 x double> %94, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %95 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %96 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %94, <2 x double> %95, <2 x double> %95)
  store <2 x double> %96, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %97 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %98 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %96, <2 x double> %97, <2 x double> %97)
  store <2 x double> %98, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %99 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %100 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %98, <2 x double> %99, <2 x double> %99)
  store <2 x double> %100, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %101 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %102 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %100, <2 x double> %101, <2 x double> %101)
  store <2 x double> %102, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %103 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %104 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %102, <2 x double> %103, <2 x double> %103)
  store <2 x double> %104, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %105 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %106 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %104, <2 x double> %105, <2 x double> %105)
  store <2 x double> %106, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %107 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %108 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %106, <2 x double> %107, <2 x double> %107)
  store <2 x double> %108, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %109 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %110 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %108, <2 x double> %109, <2 x double> %109)
  store <2 x double> %110, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %111 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %112 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %110, <2 x double> %111, <2 x double> %111)
  store <2 x double> %112, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %113 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %114 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %112, <2 x double> %113, <2 x double> %113)
  store <2 x double> %114, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %115 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %116 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %114, <2 x double> %115, <2 x double> %115)
  store <2 x double> %116, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %117 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %118 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %116, <2 x double> %117, <2 x double> %117)
  store <2 x double> %118, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %119 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %120 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %118, <2 x double> %119, <2 x double> %119)
  store <2 x double> %120, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %121 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %122 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %120, <2 x double> %121, <2 x double> %121)
  store <2 x double> %122, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %123 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %124 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %122, <2 x double> %123, <2 x double> %123)
  store <2 x double> %124, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %125 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %126 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %124, <2 x double> %125, <2 x double> %125)
  store <2 x double> %126, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %127 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %128 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %126, <2 x double> %127, <2 x double> %127)
  store <2 x double> %128, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %129 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %130 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %128, <2 x double> %129, <2 x double> %129)
  store <2 x double> %130, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %131 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !43
  %132 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %130, <2 x double> %131, <2 x double> %131)
  store <2 x double> %132, <2 x double> addrspace(1)* %3, align 16, !tbaa !43
  %133 = add nsw i32 %j.0504, 1
  %134 = icmp slt i32 %133, 128
  br i1 %134, label %5, label %135

; <label>:135                                     ; preds = %5
  ret void
}

declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) nounwind readnone

define cc76 void @vect4_dp_add_iter_128_unroll_64_kernel(<4 x double> addrspace(1)* nocapture %a, <4 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <4 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <4 x double> addrspace(1)* %b, i64 %2
  %.pre = load <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <4 x double> [ %.pre, %0 ], [ %132, %5 ]
  %j.0378 = phi i32 [ 0, %0 ], [ %133, %5 ]
  %7 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %8 = fadd <4 x double> %6, %7
  store <4 x double> %8, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %9 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %10 = fadd <4 x double> %8, %9
  store <4 x double> %10, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %11 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %12 = fadd <4 x double> %10, %11
  store <4 x double> %12, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %13 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %14 = fadd <4 x double> %12, %13
  store <4 x double> %14, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %15 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %16 = fadd <4 x double> %14, %15
  store <4 x double> %16, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %17 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %18 = fadd <4 x double> %16, %17
  store <4 x double> %18, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %19 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %20 = fadd <4 x double> %18, %19
  store <4 x double> %20, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %21 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %22 = fadd <4 x double> %20, %21
  store <4 x double> %22, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %23 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %24 = fadd <4 x double> %22, %23
  store <4 x double> %24, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %25 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %26 = fadd <4 x double> %24, %25
  store <4 x double> %26, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %27 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %28 = fadd <4 x double> %26, %27
  store <4 x double> %28, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %29 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %30 = fadd <4 x double> %28, %29
  store <4 x double> %30, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %31 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %32 = fadd <4 x double> %30, %31
  store <4 x double> %32, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %33 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %34 = fadd <4 x double> %32, %33
  store <4 x double> %34, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %35 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %36 = fadd <4 x double> %34, %35
  store <4 x double> %36, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %37 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %38 = fadd <4 x double> %36, %37
  store <4 x double> %38, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %39 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %40 = fadd <4 x double> %38, %39
  store <4 x double> %40, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %41 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %42 = fadd <4 x double> %40, %41
  store <4 x double> %42, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %43 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %44 = fadd <4 x double> %42, %43
  store <4 x double> %44, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %45 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %46 = fadd <4 x double> %44, %45
  store <4 x double> %46, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %47 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %48 = fadd <4 x double> %46, %47
  store <4 x double> %48, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %49 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %50 = fadd <4 x double> %48, %49
  store <4 x double> %50, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %51 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %52 = fadd <4 x double> %50, %51
  store <4 x double> %52, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %53 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %54 = fadd <4 x double> %52, %53
  store <4 x double> %54, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %55 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %56 = fadd <4 x double> %54, %55
  store <4 x double> %56, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %57 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %58 = fadd <4 x double> %56, %57
  store <4 x double> %58, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %59 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %60 = fadd <4 x double> %58, %59
  store <4 x double> %60, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %61 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %62 = fadd <4 x double> %60, %61
  store <4 x double> %62, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %63 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %64 = fadd <4 x double> %62, %63
  store <4 x double> %64, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %65 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %66 = fadd <4 x double> %64, %65
  store <4 x double> %66, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %67 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %68 = fadd <4 x double> %66, %67
  store <4 x double> %68, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %69 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %70 = fadd <4 x double> %68, %69
  store <4 x double> %70, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %71 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %72 = fadd <4 x double> %70, %71
  store <4 x double> %72, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %73 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %74 = fadd <4 x double> %72, %73
  store <4 x double> %74, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %75 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %76 = fadd <4 x double> %74, %75
  store <4 x double> %76, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %77 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %78 = fadd <4 x double> %76, %77
  store <4 x double> %78, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %79 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %80 = fadd <4 x double> %78, %79
  store <4 x double> %80, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %81 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %82 = fadd <4 x double> %80, %81
  store <4 x double> %82, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %83 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %84 = fadd <4 x double> %82, %83
  store <4 x double> %84, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %85 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %86 = fadd <4 x double> %84, %85
  store <4 x double> %86, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %87 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %88 = fadd <4 x double> %86, %87
  store <4 x double> %88, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %89 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %90 = fadd <4 x double> %88, %89
  store <4 x double> %90, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %91 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %92 = fadd <4 x double> %90, %91
  store <4 x double> %92, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %93 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %94 = fadd <4 x double> %92, %93
  store <4 x double> %94, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %95 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %96 = fadd <4 x double> %94, %95
  store <4 x double> %96, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %97 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %98 = fadd <4 x double> %96, %97
  store <4 x double> %98, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %99 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %100 = fadd <4 x double> %98, %99
  store <4 x double> %100, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %101 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %102 = fadd <4 x double> %100, %101
  store <4 x double> %102, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %103 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %104 = fadd <4 x double> %102, %103
  store <4 x double> %104, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %105 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %106 = fadd <4 x double> %104, %105
  store <4 x double> %106, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %107 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %108 = fadd <4 x double> %106, %107
  store <4 x double> %108, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %109 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %110 = fadd <4 x double> %108, %109
  store <4 x double> %110, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %111 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %112 = fadd <4 x double> %110, %111
  store <4 x double> %112, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %113 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %114 = fadd <4 x double> %112, %113
  store <4 x double> %114, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %115 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %116 = fadd <4 x double> %114, %115
  store <4 x double> %116, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %117 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %118 = fadd <4 x double> %116, %117
  store <4 x double> %118, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %119 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %120 = fadd <4 x double> %118, %119
  store <4 x double> %120, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %121 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %122 = fadd <4 x double> %120, %121
  store <4 x double> %122, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %123 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %124 = fadd <4 x double> %122, %123
  store <4 x double> %124, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %125 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %126 = fadd <4 x double> %124, %125
  store <4 x double> %126, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %127 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %128 = fadd <4 x double> %126, %127
  store <4 x double> %128, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %129 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %130 = fadd <4 x double> %128, %129
  store <4 x double> %130, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %131 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %132 = fadd <4 x double> %130, %131
  store <4 x double> %132, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %133 = add nsw i32 %j.0378, 1
  %134 = icmp slt i32 %133, 128
  br i1 %134, label %5, label %135

; <label>:135                                     ; preds = %5
  ret void
}

define cc76 void @vect4_dp_sub_iter_128_unroll_64_kernel(<4 x double> addrspace(1)* nocapture %a, <4 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <4 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <4 x double> addrspace(1)* %b, i64 %2
  %.pre = load <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <4 x double> [ %.pre, %0 ], [ %132, %5 ]
  %j.0378 = phi i32 [ 0, %0 ], [ %133, %5 ]
  %7 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %8 = fsub <4 x double> %6, %7
  store <4 x double> %8, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %9 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %10 = fsub <4 x double> %8, %9
  store <4 x double> %10, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %11 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %12 = fsub <4 x double> %10, %11
  store <4 x double> %12, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %13 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %14 = fsub <4 x double> %12, %13
  store <4 x double> %14, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %15 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %16 = fsub <4 x double> %14, %15
  store <4 x double> %16, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %17 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %18 = fsub <4 x double> %16, %17
  store <4 x double> %18, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %19 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %20 = fsub <4 x double> %18, %19
  store <4 x double> %20, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %21 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %22 = fsub <4 x double> %20, %21
  store <4 x double> %22, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %23 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %24 = fsub <4 x double> %22, %23
  store <4 x double> %24, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %25 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %26 = fsub <4 x double> %24, %25
  store <4 x double> %26, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %27 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %28 = fsub <4 x double> %26, %27
  store <4 x double> %28, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %29 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %30 = fsub <4 x double> %28, %29
  store <4 x double> %30, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %31 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %32 = fsub <4 x double> %30, %31
  store <4 x double> %32, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %33 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %34 = fsub <4 x double> %32, %33
  store <4 x double> %34, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %35 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %36 = fsub <4 x double> %34, %35
  store <4 x double> %36, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %37 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %38 = fsub <4 x double> %36, %37
  store <4 x double> %38, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %39 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %40 = fsub <4 x double> %38, %39
  store <4 x double> %40, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %41 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %42 = fsub <4 x double> %40, %41
  store <4 x double> %42, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %43 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %44 = fsub <4 x double> %42, %43
  store <4 x double> %44, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %45 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %46 = fsub <4 x double> %44, %45
  store <4 x double> %46, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %47 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %48 = fsub <4 x double> %46, %47
  store <4 x double> %48, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %49 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %50 = fsub <4 x double> %48, %49
  store <4 x double> %50, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %51 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %52 = fsub <4 x double> %50, %51
  store <4 x double> %52, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %53 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %54 = fsub <4 x double> %52, %53
  store <4 x double> %54, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %55 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %56 = fsub <4 x double> %54, %55
  store <4 x double> %56, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %57 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %58 = fsub <4 x double> %56, %57
  store <4 x double> %58, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %59 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %60 = fsub <4 x double> %58, %59
  store <4 x double> %60, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %61 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %62 = fsub <4 x double> %60, %61
  store <4 x double> %62, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %63 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %64 = fsub <4 x double> %62, %63
  store <4 x double> %64, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %65 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %66 = fsub <4 x double> %64, %65
  store <4 x double> %66, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %67 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %68 = fsub <4 x double> %66, %67
  store <4 x double> %68, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %69 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %70 = fsub <4 x double> %68, %69
  store <4 x double> %70, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %71 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %72 = fsub <4 x double> %70, %71
  store <4 x double> %72, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %73 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %74 = fsub <4 x double> %72, %73
  store <4 x double> %74, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %75 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %76 = fsub <4 x double> %74, %75
  store <4 x double> %76, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %77 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %78 = fsub <4 x double> %76, %77
  store <4 x double> %78, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %79 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %80 = fsub <4 x double> %78, %79
  store <4 x double> %80, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %81 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %82 = fsub <4 x double> %80, %81
  store <4 x double> %82, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %83 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %84 = fsub <4 x double> %82, %83
  store <4 x double> %84, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %85 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %86 = fsub <4 x double> %84, %85
  store <4 x double> %86, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %87 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %88 = fsub <4 x double> %86, %87
  store <4 x double> %88, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %89 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %90 = fsub <4 x double> %88, %89
  store <4 x double> %90, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %91 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %92 = fsub <4 x double> %90, %91
  store <4 x double> %92, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %93 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %94 = fsub <4 x double> %92, %93
  store <4 x double> %94, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %95 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %96 = fsub <4 x double> %94, %95
  store <4 x double> %96, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %97 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %98 = fsub <4 x double> %96, %97
  store <4 x double> %98, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %99 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %100 = fsub <4 x double> %98, %99
  store <4 x double> %100, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %101 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %102 = fsub <4 x double> %100, %101
  store <4 x double> %102, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %103 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %104 = fsub <4 x double> %102, %103
  store <4 x double> %104, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %105 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %106 = fsub <4 x double> %104, %105
  store <4 x double> %106, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %107 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %108 = fsub <4 x double> %106, %107
  store <4 x double> %108, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %109 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %110 = fsub <4 x double> %108, %109
  store <4 x double> %110, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %111 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %112 = fsub <4 x double> %110, %111
  store <4 x double> %112, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %113 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %114 = fsub <4 x double> %112, %113
  store <4 x double> %114, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %115 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %116 = fsub <4 x double> %114, %115
  store <4 x double> %116, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %117 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %118 = fsub <4 x double> %116, %117
  store <4 x double> %118, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %119 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %120 = fsub <4 x double> %118, %119
  store <4 x double> %120, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %121 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %122 = fsub <4 x double> %120, %121
  store <4 x double> %122, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %123 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %124 = fsub <4 x double> %122, %123
  store <4 x double> %124, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %125 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %126 = fsub <4 x double> %124, %125
  store <4 x double> %126, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %127 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %128 = fsub <4 x double> %126, %127
  store <4 x double> %128, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %129 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %130 = fsub <4 x double> %128, %129
  store <4 x double> %130, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %131 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %132 = fsub <4 x double> %130, %131
  store <4 x double> %132, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %133 = add nsw i32 %j.0378, 1
  %134 = icmp slt i32 %133, 128
  br i1 %134, label %5, label %135

; <label>:135                                     ; preds = %5
  ret void
}

define cc76 void @vect4_dp_mul_iter_128_unroll_64_kernel(<4 x double> addrspace(1)* nocapture %a, <4 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <4 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <4 x double> addrspace(1)* %b, i64 %2
  %.pre = load <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <4 x double> [ %.pre, %0 ], [ %132, %5 ]
  %j.0378 = phi i32 [ 0, %0 ], [ %133, %5 ]
  %7 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %8 = fmul <4 x double> %6, %7
  store <4 x double> %8, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %9 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %10 = fmul <4 x double> %8, %9
  store <4 x double> %10, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %11 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %12 = fmul <4 x double> %10, %11
  store <4 x double> %12, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %13 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %14 = fmul <4 x double> %12, %13
  store <4 x double> %14, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %15 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %16 = fmul <4 x double> %14, %15
  store <4 x double> %16, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %17 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %18 = fmul <4 x double> %16, %17
  store <4 x double> %18, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %19 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %20 = fmul <4 x double> %18, %19
  store <4 x double> %20, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %21 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %22 = fmul <4 x double> %20, %21
  store <4 x double> %22, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %23 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %24 = fmul <4 x double> %22, %23
  store <4 x double> %24, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %25 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %26 = fmul <4 x double> %24, %25
  store <4 x double> %26, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %27 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %28 = fmul <4 x double> %26, %27
  store <4 x double> %28, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %29 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %30 = fmul <4 x double> %28, %29
  store <4 x double> %30, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %31 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %32 = fmul <4 x double> %30, %31
  store <4 x double> %32, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %33 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %34 = fmul <4 x double> %32, %33
  store <4 x double> %34, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %35 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %36 = fmul <4 x double> %34, %35
  store <4 x double> %36, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %37 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %38 = fmul <4 x double> %36, %37
  store <4 x double> %38, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %39 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %40 = fmul <4 x double> %38, %39
  store <4 x double> %40, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %41 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %42 = fmul <4 x double> %40, %41
  store <4 x double> %42, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %43 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %44 = fmul <4 x double> %42, %43
  store <4 x double> %44, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %45 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %46 = fmul <4 x double> %44, %45
  store <4 x double> %46, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %47 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %48 = fmul <4 x double> %46, %47
  store <4 x double> %48, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %49 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %50 = fmul <4 x double> %48, %49
  store <4 x double> %50, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %51 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %52 = fmul <4 x double> %50, %51
  store <4 x double> %52, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %53 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %54 = fmul <4 x double> %52, %53
  store <4 x double> %54, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %55 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %56 = fmul <4 x double> %54, %55
  store <4 x double> %56, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %57 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %58 = fmul <4 x double> %56, %57
  store <4 x double> %58, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %59 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %60 = fmul <4 x double> %58, %59
  store <4 x double> %60, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %61 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %62 = fmul <4 x double> %60, %61
  store <4 x double> %62, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %63 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %64 = fmul <4 x double> %62, %63
  store <4 x double> %64, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %65 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %66 = fmul <4 x double> %64, %65
  store <4 x double> %66, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %67 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %68 = fmul <4 x double> %66, %67
  store <4 x double> %68, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %69 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %70 = fmul <4 x double> %68, %69
  store <4 x double> %70, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %71 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %72 = fmul <4 x double> %70, %71
  store <4 x double> %72, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %73 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %74 = fmul <4 x double> %72, %73
  store <4 x double> %74, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %75 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %76 = fmul <4 x double> %74, %75
  store <4 x double> %76, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %77 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %78 = fmul <4 x double> %76, %77
  store <4 x double> %78, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %79 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %80 = fmul <4 x double> %78, %79
  store <4 x double> %80, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %81 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %82 = fmul <4 x double> %80, %81
  store <4 x double> %82, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %83 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %84 = fmul <4 x double> %82, %83
  store <4 x double> %84, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %85 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %86 = fmul <4 x double> %84, %85
  store <4 x double> %86, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %87 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %88 = fmul <4 x double> %86, %87
  store <4 x double> %88, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %89 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %90 = fmul <4 x double> %88, %89
  store <4 x double> %90, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %91 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %92 = fmul <4 x double> %90, %91
  store <4 x double> %92, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %93 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %94 = fmul <4 x double> %92, %93
  store <4 x double> %94, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %95 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %96 = fmul <4 x double> %94, %95
  store <4 x double> %96, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %97 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %98 = fmul <4 x double> %96, %97
  store <4 x double> %98, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %99 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %100 = fmul <4 x double> %98, %99
  store <4 x double> %100, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %101 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %102 = fmul <4 x double> %100, %101
  store <4 x double> %102, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %103 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %104 = fmul <4 x double> %102, %103
  store <4 x double> %104, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %105 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %106 = fmul <4 x double> %104, %105
  store <4 x double> %106, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %107 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %108 = fmul <4 x double> %106, %107
  store <4 x double> %108, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %109 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %110 = fmul <4 x double> %108, %109
  store <4 x double> %110, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %111 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %112 = fmul <4 x double> %110, %111
  store <4 x double> %112, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %113 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %114 = fmul <4 x double> %112, %113
  store <4 x double> %114, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %115 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %116 = fmul <4 x double> %114, %115
  store <4 x double> %116, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %117 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %118 = fmul <4 x double> %116, %117
  store <4 x double> %118, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %119 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %120 = fmul <4 x double> %118, %119
  store <4 x double> %120, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %121 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %122 = fmul <4 x double> %120, %121
  store <4 x double> %122, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %123 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %124 = fmul <4 x double> %122, %123
  store <4 x double> %124, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %125 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %126 = fmul <4 x double> %124, %125
  store <4 x double> %126, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %127 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %128 = fmul <4 x double> %126, %127
  store <4 x double> %128, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %129 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %130 = fmul <4 x double> %128, %129
  store <4 x double> %130, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %131 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %132 = fmul <4 x double> %130, %131
  store <4 x double> %132, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %133 = add nsw i32 %j.0378, 1
  %134 = icmp slt i32 %133, 128
  br i1 %134, label %5, label %135

; <label>:135                                     ; preds = %5
  ret void
}

define cc76 void @vect4_dp_div_iter_128_unroll_64_kernel(<4 x double> addrspace(1)* nocapture %a, <4 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <4 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <4 x double> addrspace(1)* %b, i64 %2
  %.pre = load <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <4 x double> [ %.pre, %0 ], [ %132, %5 ]
  %j.0378 = phi i32 [ 0, %0 ], [ %133, %5 ]
  %7 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %8 = fdiv <4 x double> %6, %7
  store <4 x double> %8, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %9 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %10 = fdiv <4 x double> %8, %9
  store <4 x double> %10, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %11 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %12 = fdiv <4 x double> %10, %11
  store <4 x double> %12, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %13 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %14 = fdiv <4 x double> %12, %13
  store <4 x double> %14, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %15 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %16 = fdiv <4 x double> %14, %15
  store <4 x double> %16, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %17 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %18 = fdiv <4 x double> %16, %17
  store <4 x double> %18, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %19 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %20 = fdiv <4 x double> %18, %19
  store <4 x double> %20, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %21 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %22 = fdiv <4 x double> %20, %21
  store <4 x double> %22, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %23 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %24 = fdiv <4 x double> %22, %23
  store <4 x double> %24, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %25 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %26 = fdiv <4 x double> %24, %25
  store <4 x double> %26, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %27 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %28 = fdiv <4 x double> %26, %27
  store <4 x double> %28, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %29 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %30 = fdiv <4 x double> %28, %29
  store <4 x double> %30, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %31 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %32 = fdiv <4 x double> %30, %31
  store <4 x double> %32, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %33 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %34 = fdiv <4 x double> %32, %33
  store <4 x double> %34, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %35 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %36 = fdiv <4 x double> %34, %35
  store <4 x double> %36, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %37 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %38 = fdiv <4 x double> %36, %37
  store <4 x double> %38, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %39 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %40 = fdiv <4 x double> %38, %39
  store <4 x double> %40, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %41 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %42 = fdiv <4 x double> %40, %41
  store <4 x double> %42, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %43 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %44 = fdiv <4 x double> %42, %43
  store <4 x double> %44, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %45 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %46 = fdiv <4 x double> %44, %45
  store <4 x double> %46, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %47 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %48 = fdiv <4 x double> %46, %47
  store <4 x double> %48, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %49 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %50 = fdiv <4 x double> %48, %49
  store <4 x double> %50, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %51 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %52 = fdiv <4 x double> %50, %51
  store <4 x double> %52, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %53 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %54 = fdiv <4 x double> %52, %53
  store <4 x double> %54, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %55 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %56 = fdiv <4 x double> %54, %55
  store <4 x double> %56, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %57 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %58 = fdiv <4 x double> %56, %57
  store <4 x double> %58, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %59 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %60 = fdiv <4 x double> %58, %59
  store <4 x double> %60, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %61 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %62 = fdiv <4 x double> %60, %61
  store <4 x double> %62, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %63 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %64 = fdiv <4 x double> %62, %63
  store <4 x double> %64, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %65 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %66 = fdiv <4 x double> %64, %65
  store <4 x double> %66, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %67 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %68 = fdiv <4 x double> %66, %67
  store <4 x double> %68, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %69 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %70 = fdiv <4 x double> %68, %69
  store <4 x double> %70, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %71 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %72 = fdiv <4 x double> %70, %71
  store <4 x double> %72, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %73 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %74 = fdiv <4 x double> %72, %73
  store <4 x double> %74, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %75 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %76 = fdiv <4 x double> %74, %75
  store <4 x double> %76, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %77 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %78 = fdiv <4 x double> %76, %77
  store <4 x double> %78, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %79 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %80 = fdiv <4 x double> %78, %79
  store <4 x double> %80, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %81 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %82 = fdiv <4 x double> %80, %81
  store <4 x double> %82, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %83 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %84 = fdiv <4 x double> %82, %83
  store <4 x double> %84, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %85 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %86 = fdiv <4 x double> %84, %85
  store <4 x double> %86, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %87 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %88 = fdiv <4 x double> %86, %87
  store <4 x double> %88, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %89 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %90 = fdiv <4 x double> %88, %89
  store <4 x double> %90, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %91 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %92 = fdiv <4 x double> %90, %91
  store <4 x double> %92, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %93 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %94 = fdiv <4 x double> %92, %93
  store <4 x double> %94, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %95 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %96 = fdiv <4 x double> %94, %95
  store <4 x double> %96, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %97 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %98 = fdiv <4 x double> %96, %97
  store <4 x double> %98, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %99 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %100 = fdiv <4 x double> %98, %99
  store <4 x double> %100, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %101 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %102 = fdiv <4 x double> %100, %101
  store <4 x double> %102, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %103 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %104 = fdiv <4 x double> %102, %103
  store <4 x double> %104, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %105 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %106 = fdiv <4 x double> %104, %105
  store <4 x double> %106, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %107 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %108 = fdiv <4 x double> %106, %107
  store <4 x double> %108, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %109 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %110 = fdiv <4 x double> %108, %109
  store <4 x double> %110, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %111 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %112 = fdiv <4 x double> %110, %111
  store <4 x double> %112, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %113 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %114 = fdiv <4 x double> %112, %113
  store <4 x double> %114, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %115 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %116 = fdiv <4 x double> %114, %115
  store <4 x double> %116, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %117 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %118 = fdiv <4 x double> %116, %117
  store <4 x double> %118, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %119 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %120 = fdiv <4 x double> %118, %119
  store <4 x double> %120, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %121 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %122 = fdiv <4 x double> %120, %121
  store <4 x double> %122, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %123 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %124 = fdiv <4 x double> %122, %123
  store <4 x double> %124, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %125 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %126 = fdiv <4 x double> %124, %125
  store <4 x double> %126, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %127 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %128 = fdiv <4 x double> %126, %127
  store <4 x double> %128, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %129 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %130 = fdiv <4 x double> %128, %129
  store <4 x double> %130, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %131 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %132 = fdiv <4 x double> %130, %131
  store <4 x double> %132, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %133 = add nsw i32 %j.0378, 1
  %134 = icmp slt i32 %133, 128
  br i1 %134, label %5, label %135

; <label>:135                                     ; preds = %5
  ret void
}

define cc76 void @vect4_dp_mad_iter_128_unroll_64_kernel(<4 x double> addrspace(1)* nocapture %a, <4 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <4 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <4 x double> addrspace(1)* %b, i64 %2
  %.pre = load <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <4 x double> [ %.pre, %0 ], [ %132, %5 ]
  %j.0504 = phi i32 [ 0, %0 ], [ %133, %5 ]
  %7 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %8 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %6, <4 x double> %7, <4 x double> %7)
  store <4 x double> %8, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %9 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %10 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %8, <4 x double> %9, <4 x double> %9)
  store <4 x double> %10, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %11 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %12 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %10, <4 x double> %11, <4 x double> %11)
  store <4 x double> %12, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %13 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %14 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %12, <4 x double> %13, <4 x double> %13)
  store <4 x double> %14, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %15 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %16 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %14, <4 x double> %15, <4 x double> %15)
  store <4 x double> %16, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %17 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %18 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %16, <4 x double> %17, <4 x double> %17)
  store <4 x double> %18, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %19 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %20 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %18, <4 x double> %19, <4 x double> %19)
  store <4 x double> %20, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %21 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %22 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %20, <4 x double> %21, <4 x double> %21)
  store <4 x double> %22, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %23 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %24 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %22, <4 x double> %23, <4 x double> %23)
  store <4 x double> %24, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %25 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %26 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %24, <4 x double> %25, <4 x double> %25)
  store <4 x double> %26, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %27 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %28 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %26, <4 x double> %27, <4 x double> %27)
  store <4 x double> %28, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %29 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %30 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %28, <4 x double> %29, <4 x double> %29)
  store <4 x double> %30, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %31 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %32 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %30, <4 x double> %31, <4 x double> %31)
  store <4 x double> %32, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %33 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %34 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %32, <4 x double> %33, <4 x double> %33)
  store <4 x double> %34, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %35 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %36 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %34, <4 x double> %35, <4 x double> %35)
  store <4 x double> %36, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %37 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %38 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %36, <4 x double> %37, <4 x double> %37)
  store <4 x double> %38, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %39 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %40 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %38, <4 x double> %39, <4 x double> %39)
  store <4 x double> %40, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %41 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %42 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %40, <4 x double> %41, <4 x double> %41)
  store <4 x double> %42, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %43 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %44 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %42, <4 x double> %43, <4 x double> %43)
  store <4 x double> %44, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %45 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %46 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %44, <4 x double> %45, <4 x double> %45)
  store <4 x double> %46, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %47 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %48 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %46, <4 x double> %47, <4 x double> %47)
  store <4 x double> %48, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %49 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %50 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %48, <4 x double> %49, <4 x double> %49)
  store <4 x double> %50, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %51 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %52 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %50, <4 x double> %51, <4 x double> %51)
  store <4 x double> %52, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %53 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %54 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %52, <4 x double> %53, <4 x double> %53)
  store <4 x double> %54, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %55 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %56 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %54, <4 x double> %55, <4 x double> %55)
  store <4 x double> %56, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %57 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %58 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %56, <4 x double> %57, <4 x double> %57)
  store <4 x double> %58, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %59 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %60 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %58, <4 x double> %59, <4 x double> %59)
  store <4 x double> %60, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %61 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %62 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %60, <4 x double> %61, <4 x double> %61)
  store <4 x double> %62, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %63 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %64 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %62, <4 x double> %63, <4 x double> %63)
  store <4 x double> %64, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %65 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %66 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %64, <4 x double> %65, <4 x double> %65)
  store <4 x double> %66, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %67 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %68 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %66, <4 x double> %67, <4 x double> %67)
  store <4 x double> %68, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %69 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %70 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %68, <4 x double> %69, <4 x double> %69)
  store <4 x double> %70, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %71 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %72 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %70, <4 x double> %71, <4 x double> %71)
  store <4 x double> %72, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %73 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %74 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %72, <4 x double> %73, <4 x double> %73)
  store <4 x double> %74, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %75 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %76 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %74, <4 x double> %75, <4 x double> %75)
  store <4 x double> %76, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %77 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %78 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %76, <4 x double> %77, <4 x double> %77)
  store <4 x double> %78, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %79 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %80 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %78, <4 x double> %79, <4 x double> %79)
  store <4 x double> %80, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %81 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %82 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %80, <4 x double> %81, <4 x double> %81)
  store <4 x double> %82, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %83 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %84 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %82, <4 x double> %83, <4 x double> %83)
  store <4 x double> %84, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %85 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %86 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %84, <4 x double> %85, <4 x double> %85)
  store <4 x double> %86, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %87 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %88 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %86, <4 x double> %87, <4 x double> %87)
  store <4 x double> %88, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %89 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %90 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %88, <4 x double> %89, <4 x double> %89)
  store <4 x double> %90, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %91 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %92 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %90, <4 x double> %91, <4 x double> %91)
  store <4 x double> %92, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %93 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %94 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %92, <4 x double> %93, <4 x double> %93)
  store <4 x double> %94, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %95 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %96 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %94, <4 x double> %95, <4 x double> %95)
  store <4 x double> %96, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %97 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %98 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %96, <4 x double> %97, <4 x double> %97)
  store <4 x double> %98, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %99 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %100 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %98, <4 x double> %99, <4 x double> %99)
  store <4 x double> %100, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %101 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %102 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %100, <4 x double> %101, <4 x double> %101)
  store <4 x double> %102, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %103 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %104 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %102, <4 x double> %103, <4 x double> %103)
  store <4 x double> %104, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %105 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %106 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %104, <4 x double> %105, <4 x double> %105)
  store <4 x double> %106, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %107 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %108 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %106, <4 x double> %107, <4 x double> %107)
  store <4 x double> %108, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %109 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %110 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %108, <4 x double> %109, <4 x double> %109)
  store <4 x double> %110, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %111 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %112 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %110, <4 x double> %111, <4 x double> %111)
  store <4 x double> %112, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %113 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %114 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %112, <4 x double> %113, <4 x double> %113)
  store <4 x double> %114, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %115 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %116 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %114, <4 x double> %115, <4 x double> %115)
  store <4 x double> %116, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %117 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %118 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %116, <4 x double> %117, <4 x double> %117)
  store <4 x double> %118, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %119 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %120 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %118, <4 x double> %119, <4 x double> %119)
  store <4 x double> %120, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %121 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %122 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %120, <4 x double> %121, <4 x double> %121)
  store <4 x double> %122, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %123 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %124 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %122, <4 x double> %123, <4 x double> %123)
  store <4 x double> %124, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %125 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %126 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %124, <4 x double> %125, <4 x double> %125)
  store <4 x double> %126, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %127 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %128 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %126, <4 x double> %127, <4 x double> %127)
  store <4 x double> %128, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %129 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %130 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %128, <4 x double> %129, <4 x double> %129)
  store <4 x double> %130, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %131 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !43
  %132 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %130, <4 x double> %131, <4 x double> %131)
  store <4 x double> %132, <4 x double> addrspace(1)* %3, align 32, !tbaa !43
  %133 = add nsw i32 %j.0504, 1
  %134 = icmp slt i32 %133, 128
  br i1 %134, label %5, label %135

; <label>:135                                     ; preds = %5
  ret void
}

declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) nounwind readnone

define cc76 void @vect8_dp_add_iter_128_unroll_64_kernel(<8 x double> addrspace(1)* nocapture %a, <8 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <8 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <8 x double> addrspace(1)* %b, i64 %2
  %.pre = load <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <8 x double> [ %.pre, %0 ], [ %132, %5 ]
  %j.0378 = phi i32 [ 0, %0 ], [ %133, %5 ]
  %7 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %8 = fadd <8 x double> %6, %7
  store <8 x double> %8, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %9 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %10 = fadd <8 x double> %8, %9
  store <8 x double> %10, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %11 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %12 = fadd <8 x double> %10, %11
  store <8 x double> %12, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %13 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %14 = fadd <8 x double> %12, %13
  store <8 x double> %14, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %15 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %16 = fadd <8 x double> %14, %15
  store <8 x double> %16, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %17 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %18 = fadd <8 x double> %16, %17
  store <8 x double> %18, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %19 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %20 = fadd <8 x double> %18, %19
  store <8 x double> %20, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %21 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %22 = fadd <8 x double> %20, %21
  store <8 x double> %22, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %23 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %24 = fadd <8 x double> %22, %23
  store <8 x double> %24, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %25 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %26 = fadd <8 x double> %24, %25
  store <8 x double> %26, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %27 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %28 = fadd <8 x double> %26, %27
  store <8 x double> %28, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %29 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %30 = fadd <8 x double> %28, %29
  store <8 x double> %30, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %31 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %32 = fadd <8 x double> %30, %31
  store <8 x double> %32, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %33 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %34 = fadd <8 x double> %32, %33
  store <8 x double> %34, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %35 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %36 = fadd <8 x double> %34, %35
  store <8 x double> %36, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %37 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %38 = fadd <8 x double> %36, %37
  store <8 x double> %38, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %39 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %40 = fadd <8 x double> %38, %39
  store <8 x double> %40, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %41 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %42 = fadd <8 x double> %40, %41
  store <8 x double> %42, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %43 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %44 = fadd <8 x double> %42, %43
  store <8 x double> %44, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %45 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %46 = fadd <8 x double> %44, %45
  store <8 x double> %46, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %47 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %48 = fadd <8 x double> %46, %47
  store <8 x double> %48, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %49 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %50 = fadd <8 x double> %48, %49
  store <8 x double> %50, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %51 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %52 = fadd <8 x double> %50, %51
  store <8 x double> %52, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %53 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %54 = fadd <8 x double> %52, %53
  store <8 x double> %54, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %55 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %56 = fadd <8 x double> %54, %55
  store <8 x double> %56, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %57 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %58 = fadd <8 x double> %56, %57
  store <8 x double> %58, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %59 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %60 = fadd <8 x double> %58, %59
  store <8 x double> %60, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %61 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %62 = fadd <8 x double> %60, %61
  store <8 x double> %62, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %63 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %64 = fadd <8 x double> %62, %63
  store <8 x double> %64, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %65 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %66 = fadd <8 x double> %64, %65
  store <8 x double> %66, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %67 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %68 = fadd <8 x double> %66, %67
  store <8 x double> %68, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %69 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %70 = fadd <8 x double> %68, %69
  store <8 x double> %70, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %71 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %72 = fadd <8 x double> %70, %71
  store <8 x double> %72, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %73 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %74 = fadd <8 x double> %72, %73
  store <8 x double> %74, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %75 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %76 = fadd <8 x double> %74, %75
  store <8 x double> %76, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %77 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %78 = fadd <8 x double> %76, %77
  store <8 x double> %78, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %79 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %80 = fadd <8 x double> %78, %79
  store <8 x double> %80, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %81 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %82 = fadd <8 x double> %80, %81
  store <8 x double> %82, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %83 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %84 = fadd <8 x double> %82, %83
  store <8 x double> %84, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %85 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %86 = fadd <8 x double> %84, %85
  store <8 x double> %86, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %87 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %88 = fadd <8 x double> %86, %87
  store <8 x double> %88, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %89 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %90 = fadd <8 x double> %88, %89
  store <8 x double> %90, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %91 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %92 = fadd <8 x double> %90, %91
  store <8 x double> %92, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %93 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %94 = fadd <8 x double> %92, %93
  store <8 x double> %94, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %95 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %96 = fadd <8 x double> %94, %95
  store <8 x double> %96, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %97 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %98 = fadd <8 x double> %96, %97
  store <8 x double> %98, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %99 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %100 = fadd <8 x double> %98, %99
  store <8 x double> %100, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %101 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %102 = fadd <8 x double> %100, %101
  store <8 x double> %102, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %103 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %104 = fadd <8 x double> %102, %103
  store <8 x double> %104, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %105 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %106 = fadd <8 x double> %104, %105
  store <8 x double> %106, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %107 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %108 = fadd <8 x double> %106, %107
  store <8 x double> %108, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %109 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %110 = fadd <8 x double> %108, %109
  store <8 x double> %110, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %111 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %112 = fadd <8 x double> %110, %111
  store <8 x double> %112, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %113 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %114 = fadd <8 x double> %112, %113
  store <8 x double> %114, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %115 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %116 = fadd <8 x double> %114, %115
  store <8 x double> %116, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %117 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %118 = fadd <8 x double> %116, %117
  store <8 x double> %118, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %119 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %120 = fadd <8 x double> %118, %119
  store <8 x double> %120, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %121 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %122 = fadd <8 x double> %120, %121
  store <8 x double> %122, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %123 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %124 = fadd <8 x double> %122, %123
  store <8 x double> %124, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %125 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %126 = fadd <8 x double> %124, %125
  store <8 x double> %126, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %127 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %128 = fadd <8 x double> %126, %127
  store <8 x double> %128, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %129 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %130 = fadd <8 x double> %128, %129
  store <8 x double> %130, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %131 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %132 = fadd <8 x double> %130, %131
  store <8 x double> %132, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %133 = add nsw i32 %j.0378, 1
  %134 = icmp slt i32 %133, 128
  br i1 %134, label %5, label %135

; <label>:135                                     ; preds = %5
  ret void
}

define cc76 void @vect8_dp_sub_iter_128_unroll_64_kernel(<8 x double> addrspace(1)* nocapture %a, <8 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <8 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <8 x double> addrspace(1)* %b, i64 %2
  %.pre = load <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <8 x double> [ %.pre, %0 ], [ %132, %5 ]
  %j.0378 = phi i32 [ 0, %0 ], [ %133, %5 ]
  %7 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %8 = fsub <8 x double> %6, %7
  store <8 x double> %8, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %9 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %10 = fsub <8 x double> %8, %9
  store <8 x double> %10, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %11 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %12 = fsub <8 x double> %10, %11
  store <8 x double> %12, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %13 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %14 = fsub <8 x double> %12, %13
  store <8 x double> %14, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %15 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %16 = fsub <8 x double> %14, %15
  store <8 x double> %16, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %17 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %18 = fsub <8 x double> %16, %17
  store <8 x double> %18, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %19 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %20 = fsub <8 x double> %18, %19
  store <8 x double> %20, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %21 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %22 = fsub <8 x double> %20, %21
  store <8 x double> %22, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %23 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %24 = fsub <8 x double> %22, %23
  store <8 x double> %24, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %25 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %26 = fsub <8 x double> %24, %25
  store <8 x double> %26, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %27 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %28 = fsub <8 x double> %26, %27
  store <8 x double> %28, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %29 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %30 = fsub <8 x double> %28, %29
  store <8 x double> %30, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %31 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %32 = fsub <8 x double> %30, %31
  store <8 x double> %32, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %33 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %34 = fsub <8 x double> %32, %33
  store <8 x double> %34, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %35 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %36 = fsub <8 x double> %34, %35
  store <8 x double> %36, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %37 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %38 = fsub <8 x double> %36, %37
  store <8 x double> %38, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %39 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %40 = fsub <8 x double> %38, %39
  store <8 x double> %40, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %41 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %42 = fsub <8 x double> %40, %41
  store <8 x double> %42, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %43 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %44 = fsub <8 x double> %42, %43
  store <8 x double> %44, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %45 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %46 = fsub <8 x double> %44, %45
  store <8 x double> %46, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %47 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %48 = fsub <8 x double> %46, %47
  store <8 x double> %48, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %49 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %50 = fsub <8 x double> %48, %49
  store <8 x double> %50, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %51 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %52 = fsub <8 x double> %50, %51
  store <8 x double> %52, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %53 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %54 = fsub <8 x double> %52, %53
  store <8 x double> %54, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %55 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %56 = fsub <8 x double> %54, %55
  store <8 x double> %56, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %57 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %58 = fsub <8 x double> %56, %57
  store <8 x double> %58, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %59 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %60 = fsub <8 x double> %58, %59
  store <8 x double> %60, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %61 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %62 = fsub <8 x double> %60, %61
  store <8 x double> %62, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %63 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %64 = fsub <8 x double> %62, %63
  store <8 x double> %64, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %65 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %66 = fsub <8 x double> %64, %65
  store <8 x double> %66, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %67 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %68 = fsub <8 x double> %66, %67
  store <8 x double> %68, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %69 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %70 = fsub <8 x double> %68, %69
  store <8 x double> %70, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %71 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %72 = fsub <8 x double> %70, %71
  store <8 x double> %72, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %73 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %74 = fsub <8 x double> %72, %73
  store <8 x double> %74, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %75 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %76 = fsub <8 x double> %74, %75
  store <8 x double> %76, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %77 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %78 = fsub <8 x double> %76, %77
  store <8 x double> %78, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %79 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %80 = fsub <8 x double> %78, %79
  store <8 x double> %80, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %81 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %82 = fsub <8 x double> %80, %81
  store <8 x double> %82, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %83 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %84 = fsub <8 x double> %82, %83
  store <8 x double> %84, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %85 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %86 = fsub <8 x double> %84, %85
  store <8 x double> %86, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %87 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %88 = fsub <8 x double> %86, %87
  store <8 x double> %88, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %89 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %90 = fsub <8 x double> %88, %89
  store <8 x double> %90, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %91 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %92 = fsub <8 x double> %90, %91
  store <8 x double> %92, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %93 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %94 = fsub <8 x double> %92, %93
  store <8 x double> %94, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %95 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %96 = fsub <8 x double> %94, %95
  store <8 x double> %96, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %97 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %98 = fsub <8 x double> %96, %97
  store <8 x double> %98, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %99 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %100 = fsub <8 x double> %98, %99
  store <8 x double> %100, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %101 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %102 = fsub <8 x double> %100, %101
  store <8 x double> %102, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %103 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %104 = fsub <8 x double> %102, %103
  store <8 x double> %104, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %105 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %106 = fsub <8 x double> %104, %105
  store <8 x double> %106, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %107 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %108 = fsub <8 x double> %106, %107
  store <8 x double> %108, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %109 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %110 = fsub <8 x double> %108, %109
  store <8 x double> %110, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %111 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %112 = fsub <8 x double> %110, %111
  store <8 x double> %112, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %113 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %114 = fsub <8 x double> %112, %113
  store <8 x double> %114, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %115 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %116 = fsub <8 x double> %114, %115
  store <8 x double> %116, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %117 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %118 = fsub <8 x double> %116, %117
  store <8 x double> %118, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %119 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %120 = fsub <8 x double> %118, %119
  store <8 x double> %120, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %121 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %122 = fsub <8 x double> %120, %121
  store <8 x double> %122, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %123 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %124 = fsub <8 x double> %122, %123
  store <8 x double> %124, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %125 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %126 = fsub <8 x double> %124, %125
  store <8 x double> %126, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %127 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %128 = fsub <8 x double> %126, %127
  store <8 x double> %128, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %129 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %130 = fsub <8 x double> %128, %129
  store <8 x double> %130, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %131 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %132 = fsub <8 x double> %130, %131
  store <8 x double> %132, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %133 = add nsw i32 %j.0378, 1
  %134 = icmp slt i32 %133, 128
  br i1 %134, label %5, label %135

; <label>:135                                     ; preds = %5
  ret void
}

define cc76 void @vect8_dp_mul_iter_128_unroll_64_kernel(<8 x double> addrspace(1)* nocapture %a, <8 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <8 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <8 x double> addrspace(1)* %b, i64 %2
  %.pre = load <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <8 x double> [ %.pre, %0 ], [ %132, %5 ]
  %j.0378 = phi i32 [ 0, %0 ], [ %133, %5 ]
  %7 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %8 = fmul <8 x double> %6, %7
  store <8 x double> %8, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %9 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %10 = fmul <8 x double> %8, %9
  store <8 x double> %10, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %11 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %12 = fmul <8 x double> %10, %11
  store <8 x double> %12, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %13 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %14 = fmul <8 x double> %12, %13
  store <8 x double> %14, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %15 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %16 = fmul <8 x double> %14, %15
  store <8 x double> %16, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %17 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %18 = fmul <8 x double> %16, %17
  store <8 x double> %18, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %19 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %20 = fmul <8 x double> %18, %19
  store <8 x double> %20, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %21 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %22 = fmul <8 x double> %20, %21
  store <8 x double> %22, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %23 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %24 = fmul <8 x double> %22, %23
  store <8 x double> %24, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %25 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %26 = fmul <8 x double> %24, %25
  store <8 x double> %26, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %27 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %28 = fmul <8 x double> %26, %27
  store <8 x double> %28, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %29 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %30 = fmul <8 x double> %28, %29
  store <8 x double> %30, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %31 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %32 = fmul <8 x double> %30, %31
  store <8 x double> %32, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %33 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %34 = fmul <8 x double> %32, %33
  store <8 x double> %34, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %35 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %36 = fmul <8 x double> %34, %35
  store <8 x double> %36, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %37 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %38 = fmul <8 x double> %36, %37
  store <8 x double> %38, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %39 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %40 = fmul <8 x double> %38, %39
  store <8 x double> %40, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %41 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %42 = fmul <8 x double> %40, %41
  store <8 x double> %42, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %43 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %44 = fmul <8 x double> %42, %43
  store <8 x double> %44, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %45 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %46 = fmul <8 x double> %44, %45
  store <8 x double> %46, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %47 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %48 = fmul <8 x double> %46, %47
  store <8 x double> %48, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %49 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %50 = fmul <8 x double> %48, %49
  store <8 x double> %50, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %51 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %52 = fmul <8 x double> %50, %51
  store <8 x double> %52, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %53 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %54 = fmul <8 x double> %52, %53
  store <8 x double> %54, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %55 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %56 = fmul <8 x double> %54, %55
  store <8 x double> %56, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %57 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %58 = fmul <8 x double> %56, %57
  store <8 x double> %58, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %59 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %60 = fmul <8 x double> %58, %59
  store <8 x double> %60, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %61 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %62 = fmul <8 x double> %60, %61
  store <8 x double> %62, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %63 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %64 = fmul <8 x double> %62, %63
  store <8 x double> %64, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %65 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %66 = fmul <8 x double> %64, %65
  store <8 x double> %66, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %67 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %68 = fmul <8 x double> %66, %67
  store <8 x double> %68, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %69 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %70 = fmul <8 x double> %68, %69
  store <8 x double> %70, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %71 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %72 = fmul <8 x double> %70, %71
  store <8 x double> %72, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %73 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %74 = fmul <8 x double> %72, %73
  store <8 x double> %74, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %75 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %76 = fmul <8 x double> %74, %75
  store <8 x double> %76, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %77 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %78 = fmul <8 x double> %76, %77
  store <8 x double> %78, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %79 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %80 = fmul <8 x double> %78, %79
  store <8 x double> %80, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %81 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %82 = fmul <8 x double> %80, %81
  store <8 x double> %82, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %83 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %84 = fmul <8 x double> %82, %83
  store <8 x double> %84, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %85 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %86 = fmul <8 x double> %84, %85
  store <8 x double> %86, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %87 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %88 = fmul <8 x double> %86, %87
  store <8 x double> %88, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %89 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %90 = fmul <8 x double> %88, %89
  store <8 x double> %90, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %91 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %92 = fmul <8 x double> %90, %91
  store <8 x double> %92, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %93 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %94 = fmul <8 x double> %92, %93
  store <8 x double> %94, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %95 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %96 = fmul <8 x double> %94, %95
  store <8 x double> %96, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %97 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %98 = fmul <8 x double> %96, %97
  store <8 x double> %98, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %99 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %100 = fmul <8 x double> %98, %99
  store <8 x double> %100, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %101 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %102 = fmul <8 x double> %100, %101
  store <8 x double> %102, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %103 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %104 = fmul <8 x double> %102, %103
  store <8 x double> %104, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %105 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %106 = fmul <8 x double> %104, %105
  store <8 x double> %106, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %107 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %108 = fmul <8 x double> %106, %107
  store <8 x double> %108, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %109 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %110 = fmul <8 x double> %108, %109
  store <8 x double> %110, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %111 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %112 = fmul <8 x double> %110, %111
  store <8 x double> %112, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %113 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %114 = fmul <8 x double> %112, %113
  store <8 x double> %114, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %115 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %116 = fmul <8 x double> %114, %115
  store <8 x double> %116, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %117 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %118 = fmul <8 x double> %116, %117
  store <8 x double> %118, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %119 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %120 = fmul <8 x double> %118, %119
  store <8 x double> %120, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %121 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %122 = fmul <8 x double> %120, %121
  store <8 x double> %122, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %123 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %124 = fmul <8 x double> %122, %123
  store <8 x double> %124, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %125 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %126 = fmul <8 x double> %124, %125
  store <8 x double> %126, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %127 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %128 = fmul <8 x double> %126, %127
  store <8 x double> %128, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %129 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %130 = fmul <8 x double> %128, %129
  store <8 x double> %130, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %131 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %132 = fmul <8 x double> %130, %131
  store <8 x double> %132, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %133 = add nsw i32 %j.0378, 1
  %134 = icmp slt i32 %133, 128
  br i1 %134, label %5, label %135

; <label>:135                                     ; preds = %5
  ret void
}

define cc76 void @vect8_dp_div_iter_128_unroll_64_kernel(<8 x double> addrspace(1)* nocapture %a, <8 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <8 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <8 x double> addrspace(1)* %b, i64 %2
  %.pre = load <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <8 x double> [ %.pre, %0 ], [ %132, %5 ]
  %j.0378 = phi i32 [ 0, %0 ], [ %133, %5 ]
  %7 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %8 = fdiv <8 x double> %6, %7
  store <8 x double> %8, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %9 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %10 = fdiv <8 x double> %8, %9
  store <8 x double> %10, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %11 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %12 = fdiv <8 x double> %10, %11
  store <8 x double> %12, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %13 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %14 = fdiv <8 x double> %12, %13
  store <8 x double> %14, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %15 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %16 = fdiv <8 x double> %14, %15
  store <8 x double> %16, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %17 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %18 = fdiv <8 x double> %16, %17
  store <8 x double> %18, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %19 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %20 = fdiv <8 x double> %18, %19
  store <8 x double> %20, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %21 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %22 = fdiv <8 x double> %20, %21
  store <8 x double> %22, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %23 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %24 = fdiv <8 x double> %22, %23
  store <8 x double> %24, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %25 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %26 = fdiv <8 x double> %24, %25
  store <8 x double> %26, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %27 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %28 = fdiv <8 x double> %26, %27
  store <8 x double> %28, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %29 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %30 = fdiv <8 x double> %28, %29
  store <8 x double> %30, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %31 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %32 = fdiv <8 x double> %30, %31
  store <8 x double> %32, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %33 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %34 = fdiv <8 x double> %32, %33
  store <8 x double> %34, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %35 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %36 = fdiv <8 x double> %34, %35
  store <8 x double> %36, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %37 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %38 = fdiv <8 x double> %36, %37
  store <8 x double> %38, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %39 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %40 = fdiv <8 x double> %38, %39
  store <8 x double> %40, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %41 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %42 = fdiv <8 x double> %40, %41
  store <8 x double> %42, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %43 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %44 = fdiv <8 x double> %42, %43
  store <8 x double> %44, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %45 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %46 = fdiv <8 x double> %44, %45
  store <8 x double> %46, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %47 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %48 = fdiv <8 x double> %46, %47
  store <8 x double> %48, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %49 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %50 = fdiv <8 x double> %48, %49
  store <8 x double> %50, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %51 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %52 = fdiv <8 x double> %50, %51
  store <8 x double> %52, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %53 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %54 = fdiv <8 x double> %52, %53
  store <8 x double> %54, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %55 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %56 = fdiv <8 x double> %54, %55
  store <8 x double> %56, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %57 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %58 = fdiv <8 x double> %56, %57
  store <8 x double> %58, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %59 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %60 = fdiv <8 x double> %58, %59
  store <8 x double> %60, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %61 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %62 = fdiv <8 x double> %60, %61
  store <8 x double> %62, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %63 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %64 = fdiv <8 x double> %62, %63
  store <8 x double> %64, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %65 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %66 = fdiv <8 x double> %64, %65
  store <8 x double> %66, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %67 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %68 = fdiv <8 x double> %66, %67
  store <8 x double> %68, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %69 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %70 = fdiv <8 x double> %68, %69
  store <8 x double> %70, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %71 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %72 = fdiv <8 x double> %70, %71
  store <8 x double> %72, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %73 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %74 = fdiv <8 x double> %72, %73
  store <8 x double> %74, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %75 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %76 = fdiv <8 x double> %74, %75
  store <8 x double> %76, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %77 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %78 = fdiv <8 x double> %76, %77
  store <8 x double> %78, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %79 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %80 = fdiv <8 x double> %78, %79
  store <8 x double> %80, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %81 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %82 = fdiv <8 x double> %80, %81
  store <8 x double> %82, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %83 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %84 = fdiv <8 x double> %82, %83
  store <8 x double> %84, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %85 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %86 = fdiv <8 x double> %84, %85
  store <8 x double> %86, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %87 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %88 = fdiv <8 x double> %86, %87
  store <8 x double> %88, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %89 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %90 = fdiv <8 x double> %88, %89
  store <8 x double> %90, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %91 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %92 = fdiv <8 x double> %90, %91
  store <8 x double> %92, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %93 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %94 = fdiv <8 x double> %92, %93
  store <8 x double> %94, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %95 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %96 = fdiv <8 x double> %94, %95
  store <8 x double> %96, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %97 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %98 = fdiv <8 x double> %96, %97
  store <8 x double> %98, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %99 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %100 = fdiv <8 x double> %98, %99
  store <8 x double> %100, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %101 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %102 = fdiv <8 x double> %100, %101
  store <8 x double> %102, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %103 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %104 = fdiv <8 x double> %102, %103
  store <8 x double> %104, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %105 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %106 = fdiv <8 x double> %104, %105
  store <8 x double> %106, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %107 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %108 = fdiv <8 x double> %106, %107
  store <8 x double> %108, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %109 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %110 = fdiv <8 x double> %108, %109
  store <8 x double> %110, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %111 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %112 = fdiv <8 x double> %110, %111
  store <8 x double> %112, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %113 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %114 = fdiv <8 x double> %112, %113
  store <8 x double> %114, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %115 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %116 = fdiv <8 x double> %114, %115
  store <8 x double> %116, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %117 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %118 = fdiv <8 x double> %116, %117
  store <8 x double> %118, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %119 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %120 = fdiv <8 x double> %118, %119
  store <8 x double> %120, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %121 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %122 = fdiv <8 x double> %120, %121
  store <8 x double> %122, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %123 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %124 = fdiv <8 x double> %122, %123
  store <8 x double> %124, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %125 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %126 = fdiv <8 x double> %124, %125
  store <8 x double> %126, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %127 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %128 = fdiv <8 x double> %126, %127
  store <8 x double> %128, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %129 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %130 = fdiv <8 x double> %128, %129
  store <8 x double> %130, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %131 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %132 = fdiv <8 x double> %130, %131
  store <8 x double> %132, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %133 = add nsw i32 %j.0378, 1
  %134 = icmp slt i32 %133, 128
  br i1 %134, label %5, label %135

; <label>:135                                     ; preds = %5
  ret void
}

define cc76 void @vect8_dp_mad_iter_128_unroll_64_kernel(<8 x double> addrspace(1)* nocapture %a, <8 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <8 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <8 x double> addrspace(1)* %b, i64 %2
  %.pre = load <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <8 x double> [ %.pre, %0 ], [ %132, %5 ]
  %j.0504 = phi i32 [ 0, %0 ], [ %133, %5 ]
  %7 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %8 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %6, <8 x double> %7, <8 x double> %7)
  store <8 x double> %8, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %9 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %10 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %8, <8 x double> %9, <8 x double> %9)
  store <8 x double> %10, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %11 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %12 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %10, <8 x double> %11, <8 x double> %11)
  store <8 x double> %12, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %13 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %14 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %12, <8 x double> %13, <8 x double> %13)
  store <8 x double> %14, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %15 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %16 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %14, <8 x double> %15, <8 x double> %15)
  store <8 x double> %16, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %17 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %18 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %16, <8 x double> %17, <8 x double> %17)
  store <8 x double> %18, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %19 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %20 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %18, <8 x double> %19, <8 x double> %19)
  store <8 x double> %20, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %21 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %22 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %20, <8 x double> %21, <8 x double> %21)
  store <8 x double> %22, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %23 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %24 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %22, <8 x double> %23, <8 x double> %23)
  store <8 x double> %24, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %25 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %26 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %24, <8 x double> %25, <8 x double> %25)
  store <8 x double> %26, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %27 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %28 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %26, <8 x double> %27, <8 x double> %27)
  store <8 x double> %28, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %29 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %30 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %28, <8 x double> %29, <8 x double> %29)
  store <8 x double> %30, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %31 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %32 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %30, <8 x double> %31, <8 x double> %31)
  store <8 x double> %32, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %33 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %34 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %32, <8 x double> %33, <8 x double> %33)
  store <8 x double> %34, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %35 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %36 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %34, <8 x double> %35, <8 x double> %35)
  store <8 x double> %36, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %37 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %38 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %36, <8 x double> %37, <8 x double> %37)
  store <8 x double> %38, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %39 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %40 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %38, <8 x double> %39, <8 x double> %39)
  store <8 x double> %40, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %41 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %42 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %40, <8 x double> %41, <8 x double> %41)
  store <8 x double> %42, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %43 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %44 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %42, <8 x double> %43, <8 x double> %43)
  store <8 x double> %44, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %45 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %46 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %44, <8 x double> %45, <8 x double> %45)
  store <8 x double> %46, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %47 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %48 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %46, <8 x double> %47, <8 x double> %47)
  store <8 x double> %48, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %49 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %50 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %48, <8 x double> %49, <8 x double> %49)
  store <8 x double> %50, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %51 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %52 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %50, <8 x double> %51, <8 x double> %51)
  store <8 x double> %52, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %53 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %54 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %52, <8 x double> %53, <8 x double> %53)
  store <8 x double> %54, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %55 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %56 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %54, <8 x double> %55, <8 x double> %55)
  store <8 x double> %56, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %57 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %58 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %56, <8 x double> %57, <8 x double> %57)
  store <8 x double> %58, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %59 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %60 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %58, <8 x double> %59, <8 x double> %59)
  store <8 x double> %60, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %61 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %62 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %60, <8 x double> %61, <8 x double> %61)
  store <8 x double> %62, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %63 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %64 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %62, <8 x double> %63, <8 x double> %63)
  store <8 x double> %64, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %65 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %66 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %64, <8 x double> %65, <8 x double> %65)
  store <8 x double> %66, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %67 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %68 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %66, <8 x double> %67, <8 x double> %67)
  store <8 x double> %68, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %69 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %70 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %68, <8 x double> %69, <8 x double> %69)
  store <8 x double> %70, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %71 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %72 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %70, <8 x double> %71, <8 x double> %71)
  store <8 x double> %72, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %73 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %74 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %72, <8 x double> %73, <8 x double> %73)
  store <8 x double> %74, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %75 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %76 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %74, <8 x double> %75, <8 x double> %75)
  store <8 x double> %76, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %77 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %78 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %76, <8 x double> %77, <8 x double> %77)
  store <8 x double> %78, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %79 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %80 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %78, <8 x double> %79, <8 x double> %79)
  store <8 x double> %80, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %81 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %82 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %80, <8 x double> %81, <8 x double> %81)
  store <8 x double> %82, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %83 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %84 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %82, <8 x double> %83, <8 x double> %83)
  store <8 x double> %84, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %85 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %86 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %84, <8 x double> %85, <8 x double> %85)
  store <8 x double> %86, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %87 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %88 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %86, <8 x double> %87, <8 x double> %87)
  store <8 x double> %88, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %89 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %90 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %88, <8 x double> %89, <8 x double> %89)
  store <8 x double> %90, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %91 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %92 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %90, <8 x double> %91, <8 x double> %91)
  store <8 x double> %92, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %93 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %94 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %92, <8 x double> %93, <8 x double> %93)
  store <8 x double> %94, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %95 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %96 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %94, <8 x double> %95, <8 x double> %95)
  store <8 x double> %96, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %97 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %98 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %96, <8 x double> %97, <8 x double> %97)
  store <8 x double> %98, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %99 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %100 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %98, <8 x double> %99, <8 x double> %99)
  store <8 x double> %100, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %101 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %102 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %100, <8 x double> %101, <8 x double> %101)
  store <8 x double> %102, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %103 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %104 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %102, <8 x double> %103, <8 x double> %103)
  store <8 x double> %104, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %105 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %106 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %104, <8 x double> %105, <8 x double> %105)
  store <8 x double> %106, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %107 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %108 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %106, <8 x double> %107, <8 x double> %107)
  store <8 x double> %108, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %109 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %110 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %108, <8 x double> %109, <8 x double> %109)
  store <8 x double> %110, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %111 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %112 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %110, <8 x double> %111, <8 x double> %111)
  store <8 x double> %112, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %113 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %114 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %112, <8 x double> %113, <8 x double> %113)
  store <8 x double> %114, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %115 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %116 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %114, <8 x double> %115, <8 x double> %115)
  store <8 x double> %116, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %117 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %118 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %116, <8 x double> %117, <8 x double> %117)
  store <8 x double> %118, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %119 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %120 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %118, <8 x double> %119, <8 x double> %119)
  store <8 x double> %120, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %121 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %122 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %120, <8 x double> %121, <8 x double> %121)
  store <8 x double> %122, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %123 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %124 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %122, <8 x double> %123, <8 x double> %123)
  store <8 x double> %124, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %125 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %126 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %124, <8 x double> %125, <8 x double> %125)
  store <8 x double> %126, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %127 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %128 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %126, <8 x double> %127, <8 x double> %127)
  store <8 x double> %128, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %129 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %130 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %128, <8 x double> %129, <8 x double> %129)
  store <8 x double> %130, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %131 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !43
  %132 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %130, <8 x double> %131, <8 x double> %131)
  store <8 x double> %132, <8 x double> addrspace(1)* %3, align 64, !tbaa !43
  %133 = add nsw i32 %j.0504, 1
  %134 = icmp slt i32 %133, 128
  br i1 %134, label %5, label %135

; <label>:135                                     ; preds = %5
  ret void
}

declare <8 x double> @llvm.fmuladd.v8f64(<8 x double>, <8 x double>, <8 x double>) nounwind readnone

define cc76 void @vect16_dp_add_iter_128_unroll_64_kernel(<16 x double> addrspace(1)* nocapture %a, <16 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <16 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <16 x double> addrspace(1)* %b, i64 %2
  %.pre = load <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <16 x double> [ %.pre, %0 ], [ %132, %5 ]
  %j.0378 = phi i32 [ 0, %0 ], [ %133, %5 ]
  %7 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %8 = fadd <16 x double> %6, %7
  store <16 x double> %8, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %9 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %10 = fadd <16 x double> %8, %9
  store <16 x double> %10, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %11 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %12 = fadd <16 x double> %10, %11
  store <16 x double> %12, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %13 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %14 = fadd <16 x double> %12, %13
  store <16 x double> %14, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %15 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %16 = fadd <16 x double> %14, %15
  store <16 x double> %16, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %17 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %18 = fadd <16 x double> %16, %17
  store <16 x double> %18, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %19 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %20 = fadd <16 x double> %18, %19
  store <16 x double> %20, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %21 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %22 = fadd <16 x double> %20, %21
  store <16 x double> %22, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %23 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %24 = fadd <16 x double> %22, %23
  store <16 x double> %24, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %25 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %26 = fadd <16 x double> %24, %25
  store <16 x double> %26, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %27 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %28 = fadd <16 x double> %26, %27
  store <16 x double> %28, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %29 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %30 = fadd <16 x double> %28, %29
  store <16 x double> %30, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %31 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %32 = fadd <16 x double> %30, %31
  store <16 x double> %32, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %33 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %34 = fadd <16 x double> %32, %33
  store <16 x double> %34, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %35 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %36 = fadd <16 x double> %34, %35
  store <16 x double> %36, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %37 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %38 = fadd <16 x double> %36, %37
  store <16 x double> %38, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %39 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %40 = fadd <16 x double> %38, %39
  store <16 x double> %40, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %41 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %42 = fadd <16 x double> %40, %41
  store <16 x double> %42, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %43 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %44 = fadd <16 x double> %42, %43
  store <16 x double> %44, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %45 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %46 = fadd <16 x double> %44, %45
  store <16 x double> %46, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %47 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %48 = fadd <16 x double> %46, %47
  store <16 x double> %48, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %49 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %50 = fadd <16 x double> %48, %49
  store <16 x double> %50, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %51 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %52 = fadd <16 x double> %50, %51
  store <16 x double> %52, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %53 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %54 = fadd <16 x double> %52, %53
  store <16 x double> %54, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %55 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %56 = fadd <16 x double> %54, %55
  store <16 x double> %56, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %57 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %58 = fadd <16 x double> %56, %57
  store <16 x double> %58, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %59 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %60 = fadd <16 x double> %58, %59
  store <16 x double> %60, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %61 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %62 = fadd <16 x double> %60, %61
  store <16 x double> %62, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %63 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %64 = fadd <16 x double> %62, %63
  store <16 x double> %64, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %65 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %66 = fadd <16 x double> %64, %65
  store <16 x double> %66, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %67 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %68 = fadd <16 x double> %66, %67
  store <16 x double> %68, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %69 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %70 = fadd <16 x double> %68, %69
  store <16 x double> %70, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %71 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %72 = fadd <16 x double> %70, %71
  store <16 x double> %72, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %73 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %74 = fadd <16 x double> %72, %73
  store <16 x double> %74, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %75 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %76 = fadd <16 x double> %74, %75
  store <16 x double> %76, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %77 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %78 = fadd <16 x double> %76, %77
  store <16 x double> %78, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %79 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %80 = fadd <16 x double> %78, %79
  store <16 x double> %80, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %81 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %82 = fadd <16 x double> %80, %81
  store <16 x double> %82, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %83 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %84 = fadd <16 x double> %82, %83
  store <16 x double> %84, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %85 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %86 = fadd <16 x double> %84, %85
  store <16 x double> %86, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %87 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %88 = fadd <16 x double> %86, %87
  store <16 x double> %88, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %89 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %90 = fadd <16 x double> %88, %89
  store <16 x double> %90, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %91 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %92 = fadd <16 x double> %90, %91
  store <16 x double> %92, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %93 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %94 = fadd <16 x double> %92, %93
  store <16 x double> %94, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %95 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %96 = fadd <16 x double> %94, %95
  store <16 x double> %96, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %97 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %98 = fadd <16 x double> %96, %97
  store <16 x double> %98, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %99 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %100 = fadd <16 x double> %98, %99
  store <16 x double> %100, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %101 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %102 = fadd <16 x double> %100, %101
  store <16 x double> %102, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %103 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %104 = fadd <16 x double> %102, %103
  store <16 x double> %104, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %105 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %106 = fadd <16 x double> %104, %105
  store <16 x double> %106, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %107 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %108 = fadd <16 x double> %106, %107
  store <16 x double> %108, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %109 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %110 = fadd <16 x double> %108, %109
  store <16 x double> %110, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %111 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %112 = fadd <16 x double> %110, %111
  store <16 x double> %112, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %113 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %114 = fadd <16 x double> %112, %113
  store <16 x double> %114, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %115 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %116 = fadd <16 x double> %114, %115
  store <16 x double> %116, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %117 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %118 = fadd <16 x double> %116, %117
  store <16 x double> %118, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %119 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %120 = fadd <16 x double> %118, %119
  store <16 x double> %120, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %121 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %122 = fadd <16 x double> %120, %121
  store <16 x double> %122, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %123 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %124 = fadd <16 x double> %122, %123
  store <16 x double> %124, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %125 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %126 = fadd <16 x double> %124, %125
  store <16 x double> %126, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %127 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %128 = fadd <16 x double> %126, %127
  store <16 x double> %128, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %129 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %130 = fadd <16 x double> %128, %129
  store <16 x double> %130, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %131 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %132 = fadd <16 x double> %130, %131
  store <16 x double> %132, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %133 = add nsw i32 %j.0378, 1
  %134 = icmp slt i32 %133, 128
  br i1 %134, label %5, label %135

; <label>:135                                     ; preds = %5
  ret void
}

define cc76 void @vect16_dp_sub_iter_128_unroll_64_kernel(<16 x double> addrspace(1)* nocapture %a, <16 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <16 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <16 x double> addrspace(1)* %b, i64 %2
  %.pre = load <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <16 x double> [ %.pre, %0 ], [ %132, %5 ]
  %j.0378 = phi i32 [ 0, %0 ], [ %133, %5 ]
  %7 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %8 = fsub <16 x double> %6, %7
  store <16 x double> %8, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %9 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %10 = fsub <16 x double> %8, %9
  store <16 x double> %10, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %11 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %12 = fsub <16 x double> %10, %11
  store <16 x double> %12, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %13 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %14 = fsub <16 x double> %12, %13
  store <16 x double> %14, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %15 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %16 = fsub <16 x double> %14, %15
  store <16 x double> %16, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %17 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %18 = fsub <16 x double> %16, %17
  store <16 x double> %18, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %19 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %20 = fsub <16 x double> %18, %19
  store <16 x double> %20, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %21 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %22 = fsub <16 x double> %20, %21
  store <16 x double> %22, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %23 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %24 = fsub <16 x double> %22, %23
  store <16 x double> %24, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %25 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %26 = fsub <16 x double> %24, %25
  store <16 x double> %26, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %27 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %28 = fsub <16 x double> %26, %27
  store <16 x double> %28, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %29 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %30 = fsub <16 x double> %28, %29
  store <16 x double> %30, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %31 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %32 = fsub <16 x double> %30, %31
  store <16 x double> %32, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %33 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %34 = fsub <16 x double> %32, %33
  store <16 x double> %34, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %35 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %36 = fsub <16 x double> %34, %35
  store <16 x double> %36, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %37 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %38 = fsub <16 x double> %36, %37
  store <16 x double> %38, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %39 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %40 = fsub <16 x double> %38, %39
  store <16 x double> %40, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %41 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %42 = fsub <16 x double> %40, %41
  store <16 x double> %42, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %43 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %44 = fsub <16 x double> %42, %43
  store <16 x double> %44, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %45 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %46 = fsub <16 x double> %44, %45
  store <16 x double> %46, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %47 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %48 = fsub <16 x double> %46, %47
  store <16 x double> %48, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %49 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %50 = fsub <16 x double> %48, %49
  store <16 x double> %50, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %51 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %52 = fsub <16 x double> %50, %51
  store <16 x double> %52, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %53 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %54 = fsub <16 x double> %52, %53
  store <16 x double> %54, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %55 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %56 = fsub <16 x double> %54, %55
  store <16 x double> %56, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %57 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %58 = fsub <16 x double> %56, %57
  store <16 x double> %58, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %59 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %60 = fsub <16 x double> %58, %59
  store <16 x double> %60, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %61 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %62 = fsub <16 x double> %60, %61
  store <16 x double> %62, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %63 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %64 = fsub <16 x double> %62, %63
  store <16 x double> %64, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %65 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %66 = fsub <16 x double> %64, %65
  store <16 x double> %66, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %67 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %68 = fsub <16 x double> %66, %67
  store <16 x double> %68, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %69 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %70 = fsub <16 x double> %68, %69
  store <16 x double> %70, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %71 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %72 = fsub <16 x double> %70, %71
  store <16 x double> %72, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %73 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %74 = fsub <16 x double> %72, %73
  store <16 x double> %74, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %75 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %76 = fsub <16 x double> %74, %75
  store <16 x double> %76, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %77 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %78 = fsub <16 x double> %76, %77
  store <16 x double> %78, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %79 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %80 = fsub <16 x double> %78, %79
  store <16 x double> %80, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %81 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %82 = fsub <16 x double> %80, %81
  store <16 x double> %82, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %83 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %84 = fsub <16 x double> %82, %83
  store <16 x double> %84, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %85 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %86 = fsub <16 x double> %84, %85
  store <16 x double> %86, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %87 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %88 = fsub <16 x double> %86, %87
  store <16 x double> %88, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %89 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %90 = fsub <16 x double> %88, %89
  store <16 x double> %90, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %91 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %92 = fsub <16 x double> %90, %91
  store <16 x double> %92, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %93 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %94 = fsub <16 x double> %92, %93
  store <16 x double> %94, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %95 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %96 = fsub <16 x double> %94, %95
  store <16 x double> %96, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %97 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %98 = fsub <16 x double> %96, %97
  store <16 x double> %98, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %99 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %100 = fsub <16 x double> %98, %99
  store <16 x double> %100, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %101 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %102 = fsub <16 x double> %100, %101
  store <16 x double> %102, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %103 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %104 = fsub <16 x double> %102, %103
  store <16 x double> %104, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %105 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %106 = fsub <16 x double> %104, %105
  store <16 x double> %106, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %107 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %108 = fsub <16 x double> %106, %107
  store <16 x double> %108, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %109 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %110 = fsub <16 x double> %108, %109
  store <16 x double> %110, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %111 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %112 = fsub <16 x double> %110, %111
  store <16 x double> %112, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %113 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %114 = fsub <16 x double> %112, %113
  store <16 x double> %114, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %115 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %116 = fsub <16 x double> %114, %115
  store <16 x double> %116, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %117 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %118 = fsub <16 x double> %116, %117
  store <16 x double> %118, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %119 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %120 = fsub <16 x double> %118, %119
  store <16 x double> %120, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %121 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %122 = fsub <16 x double> %120, %121
  store <16 x double> %122, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %123 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %124 = fsub <16 x double> %122, %123
  store <16 x double> %124, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %125 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %126 = fsub <16 x double> %124, %125
  store <16 x double> %126, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %127 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %128 = fsub <16 x double> %126, %127
  store <16 x double> %128, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %129 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %130 = fsub <16 x double> %128, %129
  store <16 x double> %130, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %131 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %132 = fsub <16 x double> %130, %131
  store <16 x double> %132, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %133 = add nsw i32 %j.0378, 1
  %134 = icmp slt i32 %133, 128
  br i1 %134, label %5, label %135

; <label>:135                                     ; preds = %5
  ret void
}

define cc76 void @vect16_dp_mul_iter_128_unroll_64_kernel(<16 x double> addrspace(1)* nocapture %a, <16 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <16 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <16 x double> addrspace(1)* %b, i64 %2
  %.pre = load <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <16 x double> [ %.pre, %0 ], [ %132, %5 ]
  %j.0378 = phi i32 [ 0, %0 ], [ %133, %5 ]
  %7 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %8 = fmul <16 x double> %6, %7
  store <16 x double> %8, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %9 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %10 = fmul <16 x double> %8, %9
  store <16 x double> %10, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %11 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %12 = fmul <16 x double> %10, %11
  store <16 x double> %12, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %13 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %14 = fmul <16 x double> %12, %13
  store <16 x double> %14, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %15 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %16 = fmul <16 x double> %14, %15
  store <16 x double> %16, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %17 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %18 = fmul <16 x double> %16, %17
  store <16 x double> %18, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %19 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %20 = fmul <16 x double> %18, %19
  store <16 x double> %20, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %21 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %22 = fmul <16 x double> %20, %21
  store <16 x double> %22, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %23 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %24 = fmul <16 x double> %22, %23
  store <16 x double> %24, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %25 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %26 = fmul <16 x double> %24, %25
  store <16 x double> %26, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %27 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %28 = fmul <16 x double> %26, %27
  store <16 x double> %28, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %29 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %30 = fmul <16 x double> %28, %29
  store <16 x double> %30, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %31 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %32 = fmul <16 x double> %30, %31
  store <16 x double> %32, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %33 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %34 = fmul <16 x double> %32, %33
  store <16 x double> %34, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %35 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %36 = fmul <16 x double> %34, %35
  store <16 x double> %36, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %37 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %38 = fmul <16 x double> %36, %37
  store <16 x double> %38, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %39 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %40 = fmul <16 x double> %38, %39
  store <16 x double> %40, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %41 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %42 = fmul <16 x double> %40, %41
  store <16 x double> %42, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %43 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %44 = fmul <16 x double> %42, %43
  store <16 x double> %44, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %45 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %46 = fmul <16 x double> %44, %45
  store <16 x double> %46, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %47 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %48 = fmul <16 x double> %46, %47
  store <16 x double> %48, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %49 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %50 = fmul <16 x double> %48, %49
  store <16 x double> %50, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %51 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %52 = fmul <16 x double> %50, %51
  store <16 x double> %52, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %53 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %54 = fmul <16 x double> %52, %53
  store <16 x double> %54, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %55 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %56 = fmul <16 x double> %54, %55
  store <16 x double> %56, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %57 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %58 = fmul <16 x double> %56, %57
  store <16 x double> %58, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %59 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %60 = fmul <16 x double> %58, %59
  store <16 x double> %60, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %61 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %62 = fmul <16 x double> %60, %61
  store <16 x double> %62, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %63 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %64 = fmul <16 x double> %62, %63
  store <16 x double> %64, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %65 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %66 = fmul <16 x double> %64, %65
  store <16 x double> %66, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %67 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %68 = fmul <16 x double> %66, %67
  store <16 x double> %68, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %69 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %70 = fmul <16 x double> %68, %69
  store <16 x double> %70, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %71 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %72 = fmul <16 x double> %70, %71
  store <16 x double> %72, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %73 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %74 = fmul <16 x double> %72, %73
  store <16 x double> %74, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %75 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %76 = fmul <16 x double> %74, %75
  store <16 x double> %76, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %77 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %78 = fmul <16 x double> %76, %77
  store <16 x double> %78, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %79 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %80 = fmul <16 x double> %78, %79
  store <16 x double> %80, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %81 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %82 = fmul <16 x double> %80, %81
  store <16 x double> %82, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %83 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %84 = fmul <16 x double> %82, %83
  store <16 x double> %84, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %85 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %86 = fmul <16 x double> %84, %85
  store <16 x double> %86, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %87 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %88 = fmul <16 x double> %86, %87
  store <16 x double> %88, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %89 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %90 = fmul <16 x double> %88, %89
  store <16 x double> %90, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %91 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %92 = fmul <16 x double> %90, %91
  store <16 x double> %92, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %93 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %94 = fmul <16 x double> %92, %93
  store <16 x double> %94, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %95 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %96 = fmul <16 x double> %94, %95
  store <16 x double> %96, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %97 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %98 = fmul <16 x double> %96, %97
  store <16 x double> %98, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %99 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %100 = fmul <16 x double> %98, %99
  store <16 x double> %100, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %101 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %102 = fmul <16 x double> %100, %101
  store <16 x double> %102, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %103 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %104 = fmul <16 x double> %102, %103
  store <16 x double> %104, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %105 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %106 = fmul <16 x double> %104, %105
  store <16 x double> %106, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %107 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %108 = fmul <16 x double> %106, %107
  store <16 x double> %108, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %109 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %110 = fmul <16 x double> %108, %109
  store <16 x double> %110, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %111 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %112 = fmul <16 x double> %110, %111
  store <16 x double> %112, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %113 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %114 = fmul <16 x double> %112, %113
  store <16 x double> %114, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %115 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %116 = fmul <16 x double> %114, %115
  store <16 x double> %116, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %117 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %118 = fmul <16 x double> %116, %117
  store <16 x double> %118, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %119 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %120 = fmul <16 x double> %118, %119
  store <16 x double> %120, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %121 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %122 = fmul <16 x double> %120, %121
  store <16 x double> %122, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %123 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %124 = fmul <16 x double> %122, %123
  store <16 x double> %124, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %125 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %126 = fmul <16 x double> %124, %125
  store <16 x double> %126, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %127 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %128 = fmul <16 x double> %126, %127
  store <16 x double> %128, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %129 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %130 = fmul <16 x double> %128, %129
  store <16 x double> %130, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %131 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %132 = fmul <16 x double> %130, %131
  store <16 x double> %132, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %133 = add nsw i32 %j.0378, 1
  %134 = icmp slt i32 %133, 128
  br i1 %134, label %5, label %135

; <label>:135                                     ; preds = %5
  ret void
}

define cc76 void @vect16_dp_div_iter_128_unroll_64_kernel(<16 x double> addrspace(1)* nocapture %a, <16 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <16 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <16 x double> addrspace(1)* %b, i64 %2
  %.pre = load <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <16 x double> [ %.pre, %0 ], [ %132, %5 ]
  %j.0378 = phi i32 [ 0, %0 ], [ %133, %5 ]
  %7 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %8 = fdiv <16 x double> %6, %7
  store <16 x double> %8, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %9 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %10 = fdiv <16 x double> %8, %9
  store <16 x double> %10, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %11 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %12 = fdiv <16 x double> %10, %11
  store <16 x double> %12, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %13 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %14 = fdiv <16 x double> %12, %13
  store <16 x double> %14, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %15 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %16 = fdiv <16 x double> %14, %15
  store <16 x double> %16, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %17 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %18 = fdiv <16 x double> %16, %17
  store <16 x double> %18, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %19 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %20 = fdiv <16 x double> %18, %19
  store <16 x double> %20, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %21 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %22 = fdiv <16 x double> %20, %21
  store <16 x double> %22, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %23 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %24 = fdiv <16 x double> %22, %23
  store <16 x double> %24, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %25 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %26 = fdiv <16 x double> %24, %25
  store <16 x double> %26, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %27 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %28 = fdiv <16 x double> %26, %27
  store <16 x double> %28, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %29 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %30 = fdiv <16 x double> %28, %29
  store <16 x double> %30, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %31 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %32 = fdiv <16 x double> %30, %31
  store <16 x double> %32, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %33 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %34 = fdiv <16 x double> %32, %33
  store <16 x double> %34, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %35 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %36 = fdiv <16 x double> %34, %35
  store <16 x double> %36, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %37 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %38 = fdiv <16 x double> %36, %37
  store <16 x double> %38, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %39 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %40 = fdiv <16 x double> %38, %39
  store <16 x double> %40, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %41 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %42 = fdiv <16 x double> %40, %41
  store <16 x double> %42, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %43 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %44 = fdiv <16 x double> %42, %43
  store <16 x double> %44, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %45 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %46 = fdiv <16 x double> %44, %45
  store <16 x double> %46, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %47 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %48 = fdiv <16 x double> %46, %47
  store <16 x double> %48, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %49 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %50 = fdiv <16 x double> %48, %49
  store <16 x double> %50, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %51 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %52 = fdiv <16 x double> %50, %51
  store <16 x double> %52, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %53 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %54 = fdiv <16 x double> %52, %53
  store <16 x double> %54, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %55 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %56 = fdiv <16 x double> %54, %55
  store <16 x double> %56, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %57 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %58 = fdiv <16 x double> %56, %57
  store <16 x double> %58, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %59 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %60 = fdiv <16 x double> %58, %59
  store <16 x double> %60, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %61 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %62 = fdiv <16 x double> %60, %61
  store <16 x double> %62, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %63 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %64 = fdiv <16 x double> %62, %63
  store <16 x double> %64, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %65 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %66 = fdiv <16 x double> %64, %65
  store <16 x double> %66, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %67 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %68 = fdiv <16 x double> %66, %67
  store <16 x double> %68, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %69 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %70 = fdiv <16 x double> %68, %69
  store <16 x double> %70, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %71 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %72 = fdiv <16 x double> %70, %71
  store <16 x double> %72, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %73 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %74 = fdiv <16 x double> %72, %73
  store <16 x double> %74, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %75 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %76 = fdiv <16 x double> %74, %75
  store <16 x double> %76, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %77 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %78 = fdiv <16 x double> %76, %77
  store <16 x double> %78, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %79 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %80 = fdiv <16 x double> %78, %79
  store <16 x double> %80, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %81 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %82 = fdiv <16 x double> %80, %81
  store <16 x double> %82, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %83 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %84 = fdiv <16 x double> %82, %83
  store <16 x double> %84, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %85 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %86 = fdiv <16 x double> %84, %85
  store <16 x double> %86, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %87 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %88 = fdiv <16 x double> %86, %87
  store <16 x double> %88, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %89 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %90 = fdiv <16 x double> %88, %89
  store <16 x double> %90, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %91 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %92 = fdiv <16 x double> %90, %91
  store <16 x double> %92, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %93 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %94 = fdiv <16 x double> %92, %93
  store <16 x double> %94, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %95 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %96 = fdiv <16 x double> %94, %95
  store <16 x double> %96, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %97 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %98 = fdiv <16 x double> %96, %97
  store <16 x double> %98, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %99 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %100 = fdiv <16 x double> %98, %99
  store <16 x double> %100, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %101 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %102 = fdiv <16 x double> %100, %101
  store <16 x double> %102, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %103 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %104 = fdiv <16 x double> %102, %103
  store <16 x double> %104, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %105 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %106 = fdiv <16 x double> %104, %105
  store <16 x double> %106, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %107 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %108 = fdiv <16 x double> %106, %107
  store <16 x double> %108, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %109 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %110 = fdiv <16 x double> %108, %109
  store <16 x double> %110, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %111 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %112 = fdiv <16 x double> %110, %111
  store <16 x double> %112, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %113 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %114 = fdiv <16 x double> %112, %113
  store <16 x double> %114, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %115 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %116 = fdiv <16 x double> %114, %115
  store <16 x double> %116, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %117 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %118 = fdiv <16 x double> %116, %117
  store <16 x double> %118, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %119 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %120 = fdiv <16 x double> %118, %119
  store <16 x double> %120, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %121 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %122 = fdiv <16 x double> %120, %121
  store <16 x double> %122, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %123 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %124 = fdiv <16 x double> %122, %123
  store <16 x double> %124, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %125 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %126 = fdiv <16 x double> %124, %125
  store <16 x double> %126, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %127 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %128 = fdiv <16 x double> %126, %127
  store <16 x double> %128, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %129 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %130 = fdiv <16 x double> %128, %129
  store <16 x double> %130, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %131 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %132 = fdiv <16 x double> %130, %131
  store <16 x double> %132, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %133 = add nsw i32 %j.0378, 1
  %134 = icmp slt i32 %133, 128
  br i1 %134, label %5, label %135

; <label>:135                                     ; preds = %5
  ret void
}

define cc76 void @vect16_dp_mad_iter_128_unroll_64_kernel(<16 x double> addrspace(1)* nocapture %a, <16 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <16 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <16 x double> addrspace(1)* %b, i64 %2
  %.pre = load <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <16 x double> [ %.pre, %0 ], [ %132, %5 ]
  %j.0504 = phi i32 [ 0, %0 ], [ %133, %5 ]
  %7 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %8 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %6, <16 x double> %7, <16 x double> %7)
  store <16 x double> %8, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %9 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %10 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %8, <16 x double> %9, <16 x double> %9)
  store <16 x double> %10, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %11 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %12 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %10, <16 x double> %11, <16 x double> %11)
  store <16 x double> %12, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %13 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %14 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %12, <16 x double> %13, <16 x double> %13)
  store <16 x double> %14, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %15 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %16 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %14, <16 x double> %15, <16 x double> %15)
  store <16 x double> %16, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %17 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %18 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %16, <16 x double> %17, <16 x double> %17)
  store <16 x double> %18, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %19 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %20 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %18, <16 x double> %19, <16 x double> %19)
  store <16 x double> %20, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %21 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %22 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %20, <16 x double> %21, <16 x double> %21)
  store <16 x double> %22, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %23 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %24 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %22, <16 x double> %23, <16 x double> %23)
  store <16 x double> %24, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %25 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %26 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %24, <16 x double> %25, <16 x double> %25)
  store <16 x double> %26, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %27 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %28 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %26, <16 x double> %27, <16 x double> %27)
  store <16 x double> %28, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %29 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %30 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %28, <16 x double> %29, <16 x double> %29)
  store <16 x double> %30, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %31 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %32 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %30, <16 x double> %31, <16 x double> %31)
  store <16 x double> %32, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %33 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %34 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %32, <16 x double> %33, <16 x double> %33)
  store <16 x double> %34, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %35 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %36 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %34, <16 x double> %35, <16 x double> %35)
  store <16 x double> %36, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %37 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %38 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %36, <16 x double> %37, <16 x double> %37)
  store <16 x double> %38, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %39 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %40 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %38, <16 x double> %39, <16 x double> %39)
  store <16 x double> %40, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %41 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %42 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %40, <16 x double> %41, <16 x double> %41)
  store <16 x double> %42, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %43 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %44 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %42, <16 x double> %43, <16 x double> %43)
  store <16 x double> %44, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %45 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %46 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %44, <16 x double> %45, <16 x double> %45)
  store <16 x double> %46, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %47 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %48 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %46, <16 x double> %47, <16 x double> %47)
  store <16 x double> %48, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %49 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %50 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %48, <16 x double> %49, <16 x double> %49)
  store <16 x double> %50, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %51 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %52 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %50, <16 x double> %51, <16 x double> %51)
  store <16 x double> %52, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %53 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %54 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %52, <16 x double> %53, <16 x double> %53)
  store <16 x double> %54, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %55 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %56 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %54, <16 x double> %55, <16 x double> %55)
  store <16 x double> %56, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %57 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %58 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %56, <16 x double> %57, <16 x double> %57)
  store <16 x double> %58, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %59 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %60 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %58, <16 x double> %59, <16 x double> %59)
  store <16 x double> %60, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %61 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %62 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %60, <16 x double> %61, <16 x double> %61)
  store <16 x double> %62, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %63 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %64 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %62, <16 x double> %63, <16 x double> %63)
  store <16 x double> %64, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %65 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %66 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %64, <16 x double> %65, <16 x double> %65)
  store <16 x double> %66, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %67 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %68 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %66, <16 x double> %67, <16 x double> %67)
  store <16 x double> %68, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %69 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %70 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %68, <16 x double> %69, <16 x double> %69)
  store <16 x double> %70, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %71 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %72 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %70, <16 x double> %71, <16 x double> %71)
  store <16 x double> %72, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %73 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %74 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %72, <16 x double> %73, <16 x double> %73)
  store <16 x double> %74, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %75 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %76 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %74, <16 x double> %75, <16 x double> %75)
  store <16 x double> %76, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %77 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %78 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %76, <16 x double> %77, <16 x double> %77)
  store <16 x double> %78, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %79 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %80 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %78, <16 x double> %79, <16 x double> %79)
  store <16 x double> %80, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %81 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %82 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %80, <16 x double> %81, <16 x double> %81)
  store <16 x double> %82, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %83 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %84 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %82, <16 x double> %83, <16 x double> %83)
  store <16 x double> %84, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %85 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %86 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %84, <16 x double> %85, <16 x double> %85)
  store <16 x double> %86, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %87 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %88 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %86, <16 x double> %87, <16 x double> %87)
  store <16 x double> %88, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %89 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %90 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %88, <16 x double> %89, <16 x double> %89)
  store <16 x double> %90, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %91 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %92 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %90, <16 x double> %91, <16 x double> %91)
  store <16 x double> %92, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %93 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %94 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %92, <16 x double> %93, <16 x double> %93)
  store <16 x double> %94, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %95 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %96 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %94, <16 x double> %95, <16 x double> %95)
  store <16 x double> %96, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %97 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %98 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %96, <16 x double> %97, <16 x double> %97)
  store <16 x double> %98, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %99 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %100 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %98, <16 x double> %99, <16 x double> %99)
  store <16 x double> %100, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %101 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %102 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %100, <16 x double> %101, <16 x double> %101)
  store <16 x double> %102, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %103 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %104 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %102, <16 x double> %103, <16 x double> %103)
  store <16 x double> %104, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %105 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %106 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %104, <16 x double> %105, <16 x double> %105)
  store <16 x double> %106, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %107 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %108 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %106, <16 x double> %107, <16 x double> %107)
  store <16 x double> %108, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %109 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %110 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %108, <16 x double> %109, <16 x double> %109)
  store <16 x double> %110, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %111 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %112 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %110, <16 x double> %111, <16 x double> %111)
  store <16 x double> %112, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %113 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %114 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %112, <16 x double> %113, <16 x double> %113)
  store <16 x double> %114, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %115 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %116 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %114, <16 x double> %115, <16 x double> %115)
  store <16 x double> %116, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %117 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %118 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %116, <16 x double> %117, <16 x double> %117)
  store <16 x double> %118, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %119 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %120 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %118, <16 x double> %119, <16 x double> %119)
  store <16 x double> %120, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %121 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %122 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %120, <16 x double> %121, <16 x double> %121)
  store <16 x double> %122, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %123 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %124 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %122, <16 x double> %123, <16 x double> %123)
  store <16 x double> %124, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %125 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %126 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %124, <16 x double> %125, <16 x double> %125)
  store <16 x double> %126, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %127 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %128 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %126, <16 x double> %127, <16 x double> %127)
  store <16 x double> %128, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %129 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %130 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %128, <16 x double> %129, <16 x double> %129)
  store <16 x double> %130, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %131 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !43
  %132 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %130, <16 x double> %131, <16 x double> %131)
  store <16 x double> %132, <16 x double> addrspace(1)* %3, align 128, !tbaa !43
  %133 = add nsw i32 %j.0504, 1
  %134 = icmp slt i32 %133, 128
  br i1 %134, label %5, label %135

; <label>:135                                     ; preds = %5
  ret void
}

declare <16 x double> @llvm.fmuladd.v16f64(<16 x double>, <16 x double>, <16 x double>) nounwind readnone

!opencl.kernels = !{!0, !7, !8, !9, !10, !11, !14, !15, !16, !17, !18, !21, !22, !23, !24, !25, !28, !29, !30, !31, !32, !35, !36, !37, !38}
!opencl.enable.FP_CONTRACT = !{}
!opencl.spir.version = !{!39}
!opencl.ocl.version = !{!39}
!opencl.used.extensions = !{!40}
!opencl.used.optional.core.features = !{!41}
!opencl.compiler.options = !{!40}

!0 = metadata !{void (double addrspace(1)*, double addrspace(1)*)* @scalar_dp_add_iter_128_unroll_64_kernel, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"double*", metadata !"double*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_base_type", metadata !"double*", metadata !"double*"}
!6 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b"}
!7 = metadata !{void (double addrspace(1)*, double addrspace(1)*)* @scalar_dp_sub_iter_128_unroll_64_kernel, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!8 = metadata !{void (double addrspace(1)*, double addrspace(1)*)* @scalar_dp_mul_iter_128_unroll_64_kernel, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!9 = metadata !{void (double addrspace(1)*, double addrspace(1)*)* @scalar_dp_div_iter_128_unroll_64_kernel, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!10 = metadata !{void (double addrspace(1)*, double addrspace(1)*)* @scalar_dp_mad_iter_128_unroll_64_kernel, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!11 = metadata !{void (<2 x double> addrspace(1)*, <2 x double> addrspace(1)*)* @vect2_dp_add_iter_128_unroll_64_kernel, metadata !1, metadata !2, metadata !12, metadata !4, metadata !13, metadata !6}
!12 = metadata !{metadata !"kernel_arg_type", metadata !"double2*", metadata !"double2*"}
!13 = metadata !{metadata !"kernel_arg_base_type", metadata !"double2*", metadata !"double2*"}
!14 = metadata !{void (<2 x double> addrspace(1)*, <2 x double> addrspace(1)*)* @vect2_dp_sub_iter_128_unroll_64_kernel, metadata !1, metadata !2, metadata !12, metadata !4, metadata !13, metadata !6}
!15 = metadata !{void (<2 x double> addrspace(1)*, <2 x double> addrspace(1)*)* @vect2_dp_mul_iter_128_unroll_64_kernel, metadata !1, metadata !2, metadata !12, metadata !4, metadata !13, metadata !6}
!16 = metadata !{void (<2 x double> addrspace(1)*, <2 x double> addrspace(1)*)* @vect2_dp_div_iter_128_unroll_64_kernel, metadata !1, metadata !2, metadata !12, metadata !4, metadata !13, metadata !6}
!17 = metadata !{void (<2 x double> addrspace(1)*, <2 x double> addrspace(1)*)* @vect2_dp_mad_iter_128_unroll_64_kernel, metadata !1, metadata !2, metadata !12, metadata !4, metadata !13, metadata !6}
!18 = metadata !{void (<4 x double> addrspace(1)*, <4 x double> addrspace(1)*)* @vect4_dp_add_iter_128_unroll_64_kernel, metadata !1, metadata !2, metadata !19, metadata !4, metadata !20, metadata !6}
!19 = metadata !{metadata !"kernel_arg_type", metadata !"double4*", metadata !"double4*"}
!20 = metadata !{metadata !"kernel_arg_base_type", metadata !"double4*", metadata !"double4*"}
!21 = metadata !{void (<4 x double> addrspace(1)*, <4 x double> addrspace(1)*)* @vect4_dp_sub_iter_128_unroll_64_kernel, metadata !1, metadata !2, metadata !19, metadata !4, metadata !20, metadata !6}
!22 = metadata !{void (<4 x double> addrspace(1)*, <4 x double> addrspace(1)*)* @vect4_dp_mul_iter_128_unroll_64_kernel, metadata !1, metadata !2, metadata !19, metadata !4, metadata !20, metadata !6}
!23 = metadata !{void (<4 x double> addrspace(1)*, <4 x double> addrspace(1)*)* @vect4_dp_div_iter_128_unroll_64_kernel, metadata !1, metadata !2, metadata !19, metadata !4, metadata !20, metadata !6}
!24 = metadata !{void (<4 x double> addrspace(1)*, <4 x double> addrspace(1)*)* @vect4_dp_mad_iter_128_unroll_64_kernel, metadata !1, metadata !2, metadata !19, metadata !4, metadata !20, metadata !6}
!25 = metadata !{void (<8 x double> addrspace(1)*, <8 x double> addrspace(1)*)* @vect8_dp_add_iter_128_unroll_64_kernel, metadata !1, metadata !2, metadata !26, metadata !4, metadata !27, metadata !6}
!26 = metadata !{metadata !"kernel_arg_type", metadata !"double8*", metadata !"double8*"}
!27 = metadata !{metadata !"kernel_arg_base_type", metadata !"double8*", metadata !"double8*"}
!28 = metadata !{void (<8 x double> addrspace(1)*, <8 x double> addrspace(1)*)* @vect8_dp_sub_iter_128_unroll_64_kernel, metadata !1, metadata !2, metadata !26, metadata !4, metadata !27, metadata !6}
!29 = metadata !{void (<8 x double> addrspace(1)*, <8 x double> addrspace(1)*)* @vect8_dp_mul_iter_128_unroll_64_kernel, metadata !1, metadata !2, metadata !26, metadata !4, metadata !27, metadata !6}
!30 = metadata !{void (<8 x double> addrspace(1)*, <8 x double> addrspace(1)*)* @vect8_dp_div_iter_128_unroll_64_kernel, metadata !1, metadata !2, metadata !26, metadata !4, metadata !27, metadata !6}
!31 = metadata !{void (<8 x double> addrspace(1)*, <8 x double> addrspace(1)*)* @vect8_dp_mad_iter_128_unroll_64_kernel, metadata !1, metadata !2, metadata !26, metadata !4, metadata !27, metadata !6}
!32 = metadata !{void (<16 x double> addrspace(1)*, <16 x double> addrspace(1)*)* @vect16_dp_add_iter_128_unroll_64_kernel, metadata !1, metadata !2, metadata !33, metadata !4, metadata !34, metadata !6}
!33 = metadata !{metadata !"kernel_arg_type", metadata !"double16*", metadata !"double16*"}
!34 = metadata !{metadata !"kernel_arg_base_type", metadata !"double16*", metadata !"double16*"}
!35 = metadata !{void (<16 x double> addrspace(1)*, <16 x double> addrspace(1)*)* @vect16_dp_sub_iter_128_unroll_64_kernel, metadata !1, metadata !2, metadata !33, metadata !4, metadata !34, metadata !6}
!36 = metadata !{void (<16 x double> addrspace(1)*, <16 x double> addrspace(1)*)* @vect16_dp_mul_iter_128_unroll_64_kernel, metadata !1, metadata !2, metadata !33, metadata !4, metadata !34, metadata !6}
!37 = metadata !{void (<16 x double> addrspace(1)*, <16 x double> addrspace(1)*)* @vect16_dp_div_iter_128_unroll_64_kernel, metadata !1, metadata !2, metadata !33, metadata !4, metadata !34, metadata !6}
!38 = metadata !{void (<16 x double> addrspace(1)*, <16 x double> addrspace(1)*)* @vect16_dp_mad_iter_128_unroll_64_kernel, metadata !1, metadata !2, metadata !33, metadata !4, metadata !34, metadata !6}
!39 = metadata !{i32 1, i32 2}
!40 = metadata !{}
!41 = metadata !{metadata !"cl_doubles"}
!42 = metadata !{metadata !"double", metadata !43}
!43 = metadata !{metadata !"omnipotent char", metadata !44}
!44 = metadata !{metadata !"Simple C/C++ TBAA"}
